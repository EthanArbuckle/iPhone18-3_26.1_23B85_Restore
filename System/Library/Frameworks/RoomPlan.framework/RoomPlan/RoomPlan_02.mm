uint64_t sub_23A8D8820(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float32x4_t a9, int8x16_t a10, int8x16_t a11, simd_float4 a12, simd_float4 a13, __n128 a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v170 = a8;
  v171 = a6;
  v172 = a7;
  v212 = a5;
  v167 = a4;
  v204 = a3;
  v168 = a14;
  v213 = a13;
  v209 = a12;
  v210 = a10;
  v211 = a11;
  v202 = a9;
  v207 = a2;
  v208 = a1;
  v166 = a18;
  v205 = a17;
  v206 = a16;
  v169 = a15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v191 = v159 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v190 = v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v185 = v159 - v27;
  MEMORY[0x28223BE20](v28);
  v184 = v159 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v182 = v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v203.i64[0] = v159 - v34;
  MEMORY[0x28223BE20](v35);
  v178 = v159 - v36;
  MEMORY[0x28223BE20](v37);
  v197 = v159 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v176 = v159 - v41;
  v42 = sub_23AA0C064();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v173 = v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23AA0CE84();
  v194 = *(v46 - 8);
  v195 = v46;
  v47 = *(v194 + 64);
  MEMORY[0x28223BE20](v46);
  v198 = v159 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v49);
  v162 = v159 - v51;
  v174 = v43;
  v175 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
  v52 = *(v43 + 56);
  v52(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v42, v50);
  v196 = v42;
  v159[0] = v52;
  v159[1] = v43 + 56;
  (v52)(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v42);
  v53 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
  v54 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v55 = *(v54 - 8);
  v199 = v53;
  v200 = v55;
  v57 = v55 + 56;
  v56 = *(v55 + 56);
  v56(v19 + v53, 1, 1, v54);
  v183 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = xmmword_23AA11AE0;
  v179 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
  v56(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v54);
  v58 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
  v59 = type metadata accessor for ScanItemStrut();
  v60 = *(v59 - 8);
  v61 = *(v60 + 56);
  v62 = v60 + 56;
  v180 = v58;
  v61(v19 + v58, 1, 1, v59);
  v181 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
  v61(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v59);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
  v63 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
  v64 = type metadata accessor for AnimationGraph();
  v186 = *(v64 - 8);
  v65 = *(v186 + 56);
  v189 = v64;
  v160 = v65;
  v161 = v186 + 56;
  (v65)(v19 + v63, 1, 1);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
  v66 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
  v67 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
  v177 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
  v56(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v54);
  v56(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v54);
  v61(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v59);
  v61(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v59);
  v68 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
  *v68 = 0;
  v68[1] = 0;
  v201 = v54;
  v192 = v56;
  v193 = v57;
  v56(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v54);
  v69 = v166;
  v61(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v59);
  v164 = v61;
  v165 = v59;
  v163 = v62;
  v61(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v59);
  v70 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v71 = sub_23AA0C0E4();
  v187 = *(v71 - 8);
  v188 = v71;
  (*(v187 + 16))(v19 + v70, v208);
  sub_23A8D5194(v207, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
  v72 = v167;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = v204;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = v72;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v168;
  *(v19 + v66) = v170 | 0xC;
  if (v69)
  {
    v73 = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners);
  }

  else
  {
    v73 = 0;
  }

  v74 = v73 | v169;
  v75 = v196;
  v76 = v197;
  v77 = v199;
  v79 = v171;
  v78 = v172;
  if (v72 == 20)
  {
    v80 = (v74 >> 1) & 0x11 | (2 * v74) & 0x88;
    goto LABEL_8;
  }

  if (v72 == 18)
  {
    v80 = 16 * (v74 & 0xF);
LABEL_8:
    *(v19 + v67) = v80 | v74;
    goto LABEL_11;
  }

  *(v19 + v67) = v74;
  if (!v72)
  {
    v81.i64[0] = vmulq_f32(v202, vdupq_n_s32(0x3F89999Au)).u64[0];
    v81.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.075, v202, 2));
    v202 = v81;
  }

LABEL_11:
  v82 = v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
  v83 = v211;
  *v82 = v210;
  *(v82 + 16) = v83;
  v84 = v213;
  *(v82 + 32) = v209;
  *(v82 + 48) = v84;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v202;
  sub_23A8D5194(v212, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D5194(v206, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D5194(v205, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
  v85 = sub_23A8DE3E8(v78, v79);

  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v85;

  v86 = v173;
  sub_23AA0C044();
  (*(v174 + 32))(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v86, v75);
  if (v69)
  {
    v87 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
    swift_beginAccess();
    v88 = v69 + v87;
    v89 = v176;
    sub_23A8D5194(v88, v176, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    v89 = v176;
    (v159[0])(v176, 1, 1, v75);
  }

  v197 = 0;
  v90 = v175;
  swift_beginAccess();
  sub_23A8D5068(v89, v19 + v90, &qword_27DFAEB30, &unk_23AA11B50);
  swift_endAccess();
  if (v69)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
    v91 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
    v92 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
    swift_beginAccess();
    v93 = v178;
    sub_23A8D5194(v69 + v92, v178, &qword_27DFAEB38, &unk_23AA11B60);
    v94 = v201;
    v95 = *(v200 + 48);
    if (v95(v93, 1, v201) != 1)
    {
      sub_23A8D5130(v93, v76);
      v192(v76, 0, 1, v94);
      goto LABEL_20;
    }
  }

  else
  {
    v96 = v213;
    v96.i32[3] = 0;
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v96;
    v91 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v202;
    v93 = v178;
    v94 = v201;
    v192(v178, 1, 1, v201);
  }

  sub_23A8D5194(v212, v76, &qword_27DFAEB38, &unk_23AA11B60);
  v95 = *(v200 + 48);
  if (v95(v93, 1, v94) != 1)
  {
    sub_23A8D50D0(v93, &qword_27DFAEB38, &unk_23AA11B60);
  }

LABEL_20:
  swift_beginAccess();
  sub_23A8D5068(v76, v19 + v77, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  if (v69)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
    v97 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
    v98 = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);
  }

  else
  {
    v217.columns[0] = v210;
    v217.columns[1] = v211;
    v217.columns[2] = v209;
    v217.columns[3] = v213;
    *&v100 = simd_quaternion(v217);
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v100;

    v97 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
  }

  *(v19 + v97) = v99;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v91;
  v101 = v203.i64[0];
  sub_23A8D5194(v19 + v77, v203.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v102 = v177;
  swift_beginAccess();
  sub_23A8D5068(v101, v19 + v102, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
  if (v69)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    v103 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    swift_beginAccess();
    v104 = v69 + v103;
    v105 = v182;
    sub_23A8D5194(v104, v182, &qword_27DFAEB38, &unk_23AA11B60);
  }

  else
  {
    v106 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    *v106 = 0;
    v106[1] = 0;
    v105 = v182;
    v192(v182, 1, 1, v201);
  }

  v107 = v179;
  swift_beginAccess();
  sub_23A8D5068(v105, v19 + v107, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  if (v69)
  {
    v108 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
    swift_beginAccess();
    v109 = v69 + v108;
    v110 = v184;
    sub_23A8D5194(v109, v184, &unk_27DFAF020, &unk_23AA12300);
  }

  else
  {
    v110 = v184;
    v164(v184, 1, 1, v165);
  }

  v111 = v180;
  swift_beginAccess();
  sub_23A8D5068(v110, v19 + v111, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  if (v69)
  {
    v112 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
    swift_beginAccess();
    v113 = v69 + v112;
    v114 = v185;
    sub_23A8D5194(v113, v185, &unk_27DFAF020, &unk_23AA12300);
  }

  else
  {
    v114 = v185;
    v164(v185, 1, 1, v165);
  }

  v115 = v181;
  swift_beginAccess();
  sub_23A8D5068(v114, v19 + v115, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  if (v69)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
    *(v19 + v183) = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
    v116 = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

    v85 = v116;
  }

  else
  {
    v118 = (v95)(v212, 1, v201);
    v118.i32[0] = v119;
    v120.i32[0] = 1;
    v121 = vdupq_lane_s32(*&vceqq_s32(v118, v120), 0);
    v218.columns[3] = v213;
    v122 = v213;
    v122.i32[3] = 0;
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = vbicq_s8(v122, v121);
    v218.columns[0] = v210;
    v218.columns[1] = v211;
    v218.columns[2] = v209;
    *&v123 = simd_quaternion(v218);
    *(v19 + v183) = v123;
  }

  v124 = v198;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v85;
  v125 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
  v126 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
  v127 = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
  v128 = v127[2];
  if (v85[2])
  {
    v215 = v85;
    if (v128)
    {
      v214 = v127;

LABEL_40:

      goto LABEL_44;
    }

    v132 = sub_23A8DE9A8(v210, v211, v213, *v202.i64);
  }

  else
  {
    if (v128)
    {
      *v129.i64 = MEMORY[0x23EE8FF80](v117);
      v215 = sub_23A8DE9A8(v129, v130, v131, *(v19 + v126));
      v214 = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
      goto LABEL_40;
    }

    v133 = MEMORY[0x277D84F90];
    v215 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
    v132 = sub_23A9DC9E0(v133);
  }

  v214 = v132;
LABEL_44:
  v134 = v197;
  sub_23A8DED48(&v215, &v214);
  if (v134)
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v135 = v134;
    v136 = sub_23AA0CE54();
    v137 = sub_23AA0D494();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v202.i64[0] = swift_slowAlloc();
      v216[0] = v202.i64[0];
      *v138 = 136315138;
      swift_getErrorValue();
      v139 = sub_23AA0DC34();
      v141 = v125;
      v142 = sub_23A9A65A4(v139, v140, v216);

      *(v138 + 4) = v142;
      v125 = v141;
      _os_log_impl(&dword_23A8B4000, v136, v137, "%s", v138, 0xCu);
      v143 = v202.i64[0];
      __swift_destroy_boxed_opaque_existential_1(v202.i64[0]);
      MEMORY[0x23EE91710](v143, -1, -1);
      MEMORY[0x23EE91710](v138, -1, -1);

      (*(v194 + 8))(v198, v195);
    }

    else
    {

      (*(v194 + 8))(v124, v195);
    }
  }

  v144 = v214;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v215;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v144;
  v145 = v203.i64[0];
  sub_23A8D5194(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v203.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v146 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
  swift_beginAccess();
  sub_23A8D5068(v145, v19 + v146, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v147 = v190;
  sub_23A8D5194(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v190, &unk_27DFAF020, &unk_23AA12300);
  v148 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v147, v19 + v148, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  sub_23A8D5194(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v147, &unk_27DFAF020, &unk_23AA12300);
  v149 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v147, v19 + v149, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  if (v69)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
    v150 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
    swift_beginAccess();
    v151 = v191;
    sub_23A8D5194(v69 + v150, v191, &unk_27DFAF030, &qword_23AA11B48);
    v152 = v189;
  }

  else
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
    v151 = v191;
    v152 = v189;
    v160(v191, 1, 1, v189);
  }

  v153 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
  swift_beginAccess();
  sub_23A8D5068(v151, v19 + v153, &unk_27DFAF030, &qword_23AA11B48);
  swift_endAccess();
  v203 = *(v19 + v125);
  v219.columns[0] = v210;
  v219.columns[1] = v211;
  v219.columns[2] = v209;
  v219.columns[3] = v213;
  v220 = __invert_f4(v219);
  v154 = (v186 + 48);
  v155 = vmovn_s32(vcgtq_f32(vaddq_f32(v220.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v220.columns[0], v203.f32[0]), v220.columns[1], *v203.f32, 1), v220.columns[2], v203, 2)), vaddq_f32(v220.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v220.columns[0], v213.f32[0]), v220.columns[1], *v213.f32, 1), v220.columns[2], v213, 2))));
  if (v204 == 3)
  {
    if (v155.i8[2])
    {
      v156 = 0;
    }

    else
    {
      v156 = 3;
    }

    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v156;
    swift_beginAccess();
    if (!(*v154)(v19 + v153, 1, v152))
    {
      sub_23A93C6B4(*(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
    }
  }

  else
  {
    if (v155.i8[0])
    {
      v157 = 2;
    }

    else
    {
      v157 = 1;
    }

    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v157;
    swift_beginAccess();
    if (!(*v154)(v19 + v153, 1, v152))
    {
      sub_23A93C968(*(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides), *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
    }
  }

  swift_endAccess();

  sub_23A8D50D0(v205, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v206, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v207, &unk_27DFB0970, &qword_23AA14E00);
  (*(v187 + 8))(v208, v188);
  sub_23A8D50D0(v212, &qword_27DFAEB38, &unk_23AA11B60);
  return v19;
}

uint64_t sub_23A8D9F98(unint64_t a1, float a2)
{
  v104 = a2;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v103 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
  v13 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
  v14 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
  v15 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v16 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v124 = v2;
  v118 = sub_23A8DA808(v12, v13, v14, v15, v16, 0.16);
  if (a1 >> 62)
  {
    goto LABEL_87;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v18 = 0;
    v122 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
    v123 = a1 & 0xC000000000000001;
    v107 = a1 & 0xFFFFFFFFFFFFFF8;
    v106 = a1 + 32;
    v120 = (v5 + 8);
    v121 = (v5 + 16);
    v105 = v118 + 32;
    v112 = a1;
    v111 = v4;
    v110 = v8;
    v109 = v11;
    v108 = i;
    while (v123)
    {
      v19 = MEMORY[0x23EE90360](v18, a1);
      v20 = __OFADD__(v18++, 1);
      if (v20)
      {
        goto LABEL_85;
      }

LABEL_12:
      v21 = a1;
      v22 = *v121;
      (*v121)(v11, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v4);
      v22(v8, v124 + v122, v4);
      v5 = sub_23AA0C094();
      v23 = *v120;
      (*v120)(v8, v4);
      v23(v11, v4);
      if (v5)
      {

LABEL_14:
        a1 = v21;
        goto LABEL_5;
      }

      v126 = __invert_f4(*(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform));
      v24 = *(v118 + 2);
      if (v24)
      {
        v119 = v19;
        v25 = MEMORY[0x277D84F90];
        v125 = MEMORY[0x277D84F90];
        v116 = v126.columns[0];
        v115 = v126.columns[1];
        v114 = v126.columns[2];
        v113 = v126.columns[3];
        sub_23A975DC0(0, v24, 0);
        v26 = v113;
        v27 = v114;
        v28 = v115;
        v30 = v116;
        v29 = v117;
        v31 = v125;
        v32 = v125[1].u64[0];
        v33 = v105;
        do
        {
          v34 = *v33;
          v125 = v31;
          v35 = v31[1].u64[1];
          v36 = v32 + 1;
          if (v32 >= v35 >> 1)
          {
            v117 = v29;
            v103 = v34;
            sub_23A975DC0((v35 > 1), v32 + 1, 1);
            v34 = v103;
            v26 = v113;
            v27 = v114;
            v28 = v115;
            v30 = v116;
            v29.i32[3] = v117.i32[3];
            v31 = v125;
          }

          v37 = vaddq_f32(v26, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v34.f32[0]), v28, *v34.f32, 1), v27, v34, 2));
          v37.i32[3] = v29.i32[3];
          v31[1].i64[0] = v36;
          v31[v32 + 2] = v37;
          ++v33;
          ++v32;
          v29 = v37;
          --v24;
        }

        while (v24);
        v117 = v37;
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
        v36 = *(MEMORY[0x277D84F90] + 16);
        if (!v36)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_14;
        }

        v119 = v19;
        v31 = MEMORY[0x277D84F90];
        v25 = MEMORY[0x277D84F90];
      }

      v38 = v31 + 2;
      v125 = v25;
      sub_23A975DF0(0, v36, 0);
      v39 = 0;
      v40 = v125;
      v41 = v125[1].i64[0];
      v42 = v41;
      do
      {
        v43 = v42;
        v44 = v38[v39];
        v125 = v40;
        v45 = v40[1].u64[1];
        if (v41 + v39 >= v45 >> 1)
        {
          v116 = v44;
          sub_23A975DF0((v45 > 1), v41 + v39 + 1, 1);
          v44.i32[0] = v116.i32[0];
          v40 = v125;
        }

        v46 = v39 + 1;
        v40[1].i64[0] = v41 + v39 + 1;
        v40[2].i32[v41 + v39] = v44.i32[0];
        v42 = v43 + 1;
        v39 = v46;
      }

      while (v36 != v46);
      v47 = v40[2].f32[0];
      if (v41 + v46 == 1)
      {
        v51 = v40[2].f32[0];
        v55 = MEMORY[0x277D84F90];
      }

      else
      {
        v48 = v40[2].i64 + 4;
        v49 = &v40[2].f32[1];
        v50 = v43;
        v51 = v40[2].f32[0];
        do
        {
          v52 = *v49++;
          v53 = v52;
          if (v52 < v51)
          {
            v51 = v53;
          }

          --v50;
        }

        while (v50);
        v54 = 0;
        v55 = MEMORY[0x277D84F90];
        do
        {
          if (v47 < *(v48 + 4 * v54))
          {
            v47 = *(v48 + 4 * v54);
          }

          ++v54;
        }

        while (v43 != v54);
      }

      v125 = v55;
      sub_23A975DF0(0, v36, 0);
      v56 = 0;
      v57 = v125;
      v58 = v125[1].i64[0];
      v59 = v58;
      do
      {
        v60 = v59;
        v61 = v38[v56];
        v125 = v57;
        v62 = v57[1].u64[1];
        if (v58 + v56 >= v62 >> 1)
        {
          v116 = v61;
          sub_23A975DF0((v62 > 1), v58 + v56 + 1, 1);
          v61.i32[1] = v116.i32[1];
          v57 = v125;
        }

        v63 = v56 + 1;
        v57[1].i64[0] = v58 + v56 + 1;
        v57[2].i32[v58 + v56] = v61.i32[1];
        v59 = v60 + 1;
        v56 = v63;
      }

      while (v36 != v63);
      v64 = v57[2].f32[0];
      if (v58 + v63 == 1)
      {
        v68 = v57[2].f32[0];
        v11 = v109;
      }

      else
      {
        v65 = v57[2].i64 + 4;
        v66 = &v57[2].f32[1];
        v67 = v60;
        v68 = v57[2].f32[0];
        v11 = v109;
        do
        {
          v69 = *v66++;
          v70 = v69;
          if (v69 < v68)
          {
            v68 = v70;
          }

          --v67;
        }

        while (v67);
        v71 = 0;
        do
        {
          if (v64 < *(v65 + 4 * v71))
          {
            v64 = *(v65 + 4 * v71);
          }

          ++v71;
        }

        while (v60 != v71);
      }

      v125 = MEMORY[0x277D84F90];
      sub_23A975DF0(0, v36, 0);
      v72 = v125;
      v73 = v125[1].u64[0];
      i = v108;
      do
      {
        v74 = *v38;
        v125 = v72;
        v75 = v72[1].u64[1];
        v5 = v73 + 1;
        if (v73 >= v75 >> 1)
        {
          v116 = v74;
          sub_23A975DF0((v75 > 1), v73 + 1, 1);
          v74.i32[2] = v116.i32[2];
          v72 = v125;
        }

        v72[1].i64[0] = v5;
        v72[2].i32[v73] = v74.i32[2];
        ++v38;
        ++v73;
        --v36;
      }

      while (v36);

      v76 = v72[1].i64[0];
      if (v76)
      {
        v77 = v72[2].f32[0];
        v78 = v76 - 1;
        a1 = v112;
        v8 = v110;
        v5 = v119;
        if (v78)
        {
          v80 = &v72[2].f32[1];
          v81 = &v72[2].f32[1];
          v82 = v78;
          v79 = v72[2].f32[0];
          do
          {
            v83 = *v81++;
            v84 = v83;
            if (v83 < v79)
            {
              v79 = v84;
            }

            --v82;
          }

          while (v82);
          do
          {
            v85 = *v80++;
            v86 = v85;
            if (v77 < v85)
            {
              v77 = v86;
            }

            --v78;
          }

          while (v78);
        }

        else
        {
          v79 = v72[2].f32[0];
        }

        v116.f32[0] = v77 - v79;
        v115 = *(v5 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);

        v87 = vmuls_lane_f32(0.5, *v115.f32, 1);
        v88 = vmuls_lane_f32(0.5, v115, 2);
        v89 = (v47 - v51) * v104;
        v90 = v89 > ((0.5 * v115.f32[0]) - v51) || v89 > (v47 - (0.0 - (0.5 * v115.f32[0])));
        v91 = 0.0 - v87;
        v92 = v87 - v68;
        v93 = (v64 - v68) * v104;
        v94 = v64 - v91;
        v96 = v90 || v93 > v92 || v93 > v94;
        v97 = v88 - v79;
        v98 = v116.f32[0] * v104;
        v99 = v77 - (0.0 - v88);
        v101 = v96 || v98 > v97 || v98 > v99;
        v4 = v111;
        if (!v101)
        {

          return 1;
        }
      }

      else
      {

        a1 = v112;
        v4 = v111;
        v8 = v110;
      }

LABEL_5:
      if (v18 == i)
      {
        goto LABEL_88;
      }
    }

    if (v18 >= *(v107 + 16))
    {
      goto LABEL_86;
    }

    v19 = *(v106 + 8 * v18);

    v20 = __OFADD__(v18++, 1);
    if (!v20)
    {
      goto LABEL_12;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    ;
  }

LABEL_88:

  return 0;
}

char *sub_23A8DA808(float32x4_t a1, __n128 a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  if (*(v6 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 3)
  {
    a4.i32[3] = 0;
    v50 = a4;
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v8.i64[0] = vmulq_f32(a5, v7).u64[0];
    v8.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, a5, 2));
    v9 = a3.f32[2];
  }

  else
  {
    *&v10 = a6 * 0.5;
    v9 = a3.f32[2];
    a4.i64[0] = vsubq_f32(a4, vmulq_n_f32(a3, a6 * 0.5)).u64[0];
    a4.f32[2] = a4.f32[2] - vmuls_lane_f32(a6 * 0.5, a3, 2);
    a4.i32[3] = 0;
    v50 = a4;
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    v8.i64[0] = vmulq_f32(a5, v11).u64[0];
    v8.i64[1] = v10;
  }

  v44 = *v8.f32;
  v46 = *a1.f32;
  v48 = vmuls_lane_f32(v8.f32[0], a1, 2);
  v51 = a2.n128_u64[0];
  v53 = vmuls_lane_f32(a2.n128_f32[2], *v8.f32, 1);
  v12 = vmul_laneq_f32(vneg_f32(*a3.f32), v8, 2);
  v13 = vmuls_lane_f32(-v9, v8, 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v14 = swift_allocObject();
  v15 = 0;
  v16 = 0;
  *&v17 = vmul_n_f32(v46, v44.f32[0]);
  *&v18 = vsub_f32(0, *&v17);
  *(&v18 + 2) = 0.0 - v48;
  HIDWORD(v18) = 0;
  *(v14 + 32) = v18;
  v19 = v14 + 32;
  *(&v17 + 1) = LODWORD(v48);
  *(v14 + 48) = v17;
  *&v17 = vmul_lane_f32(v51, v44, 1);
  *&v18 = vsub_f32(0, *&v17);
  *(&v17 + 1) = LODWORD(v53);
  v47 = v17;
  v49 = v18;
  *(&v18 + 2) = 0.0 - v53;
  HIDWORD(v18) = 0;
  v43 = v18;
  v45 = 0.0 - v53;
  v20 = vsub_f32(0, v12);
  v21 = 0.0 - v13;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v23 = v15;
    v54 = *(v19 + 16 * v16);
    v24 = swift_allocObject();
    *(v24 + 32) = v43;
    *(v24 + 48) = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23A9388A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v26 = *(v22 + 2);
    v25 = *(v22 + 3);
    v27 = v25 >> 1;
    v28 = v26 + 1;
    if (v25 >> 1 <= v26)
    {
      v22 = sub_23A9388A8((v25 > 1), v26 + 1, 1, v22);
      v25 = *(v22 + 3);
      v27 = v25 >> 1;
    }

    v55 = vaddq_f32(v50, v54);
    v29 = vadd_f32(*v55.f32, v49);
    *&v30 = vadd_f32(v20, v29);
    *(&v30 + 2) = v21 + (v55.f32[2] + v45);
    HIDWORD(v30) = 0;
    *(v22 + 2) = v28;
    *&v22[16 * v26 + 32] = v30;
    v31 = v26 + 2;
    if (v27 < v31)
    {
      v22 = sub_23A9388A8((v25 > 1), v31, 1, v22);
    }

    *&v32 = vadd_f32(v12, v29);
    *(&v32 + 2) = v13 + (v55.f32[2] + v45);
    HIDWORD(v32) = 0;
    *(v22 + 2) = v31;
    *&v22[16 * v28 + 32] = v32;
    v52 = *(v24 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_23A9388A8(0, *(v22 + 2) + 1, 1, v22);
    }

    v34 = *(v22 + 2);
    v33 = *(v22 + 3);
    v35 = v33 >> 1;
    v36 = v34 + 1;
    if (v33 >> 1 <= v34)
    {
      v22 = sub_23A9388A8((v33 > 1), v34 + 1, 1, v22);
      v33 = *(v22 + 3);
      v35 = v33 >> 1;
    }

    v37 = vadd_f32(*v55.f32, *v52.f32);
    v38 = COERCE_FLOAT(vaddq_f32(v55, v52).i32[2]);
    *&v39 = vadd_f32(v20, v37);
    *(&v39 + 2) = v21 + v38;
    HIDWORD(v39) = 0;
    *(v22 + 2) = v36;
    *&v22[16 * v34 + 32] = v39;
    v40 = v34 + 2;
    if (v35 < v40)
    {
      v22 = sub_23A9388A8((v33 > 1), v40, 1, v22);
    }

    *&v41 = vadd_f32(v12, v37);
    *(&v41 + 2) = v13 + v38;
    HIDWORD(v41) = 0;
    *(v22 + 2) = v40;
    *&v22[16 * v36 + 32] = v41;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v15 = 1;
    v16 = 1;
  }

  while ((v23 & 1) == 0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v22;
}

uint64_t sub_23A8DABE0(__n128 a1)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v66 - v15;
  v17 = type metadata accessor for AnimationGraph();
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8RoomPlan8ScanItem_type;
  v22 = OBJC_IVAR____TtC8RoomPlan8ScanItem_category;
  sub_23A93D8CC(*(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type), *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category), v20);
  if (qword_27DFAE488 != -1)
  {
    swift_once();
  }

  v23 = qword_27DFC0730;
  sub_23A963A50();
  sub_23AA0DCA4();
  v74 = v24;
  v25 = *(v23 + 144);
  sub_23AA0DCB4();
  v27 = v26;
  v28 = *(v23 + 128);
  sub_23AA0DCB4();
  if (v29 >= v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = v29;
  }

  if (v30 == v27)
  {
    v31 = 2;
    *(v23 + 40) = 2;
  }

  else if (v30 == v29)
  {
    v31 = 3;
    *(v23 + 40) = 3;
  }

  else
  {
    v31 = *(v23 + 40);
  }

  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = v31;
  v32 = *(v2 + v21);
  v33 = *(v2 + v22);
  v34 = 4;
  if (((1 << v32) & 0x37) != 0)
  {
    if (v31 == 2)
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }
  }

  else if (v32 == 3)
  {
    if (sub_23A9AD42C(*(v2 + v22), qword_27DFAECA8))
    {
      v34 = 1;
    }

    else
    {
      if (qword_27DFAE388 != -1)
      {
        swift_once();
      }

      if (sub_23A9AD42C(v33, qword_27DFC05C0))
      {
        v34 = 1;
      }

      else
      {
        v34 = 3;
      }
    }
  }

  v68 = v21;
  v35 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v34;
  v36 = v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
  v76.columns[3] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v37 = v76.columns[3];
  v37.i32[3] = 0;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v37;
  v73 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions;
  *&v74 = v20;
  v38 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v67 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v38;
  v76.columns[0] = *v36;
  v76.columns[1] = *(v36 + 16);
  v76.columns[2] = *(v36 + 32);
  *&v39 = simd_quaternion(v76);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v39;
  *&v40 = sub_23A8DB3E0();
  v41 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = v40;
  v42 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut;
  swift_beginAccess();
  sub_23A8D5194(v2 + v42, v16, &unk_27DFAF020, &unk_23AA12300);
  v43 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v16, v2 + v43, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v44 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut;
  swift_beginAccess();
  sub_23A8D5194(v2 + v44, v16, &unk_27DFAF020, &unk_23AA12300);
  v45 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v16, v2 + v45, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  sub_23A8D5194(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v12, &qword_27DFAEB38, &unk_23AA11B60);
  v46 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v47 = (*(*(v46 - 8) + 48))(v12, 1, v46);
  v48 = v12;
  v49 = v47;
  sub_23A8D50D0(v48, &qword_27DFAEB38, &unk_23AA11B60);
  if (v49 == 1)
  {
    *&v50 = sub_23A8DB4A0(*(v2 + v35));
    *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = v50;
  }

  else
  {
    v50 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
  }

  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = v50;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v2 + v41);
  sub_23A8D5194(v2 + v43, v16, &unk_27DFAF020, &unk_23AA12300);
  v51 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v16, v2 + v51, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  sub_23A8D5194(v2 + v45, v16, &unk_27DFAF020, &unk_23AA12300);
  v52 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v16, v2 + v52, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  __invert_f4(*v36);
  v54 = v73;
  v53 = v74;
  v55 = *(v2 + v73);
  v56 = sub_23A93DB10();
  if (v57)
  {
    return sub_23A8DE2CC(v53, type metadata accessor for AnimationGraph);
  }

  v59 = *(v2 + v54);
  *(v53 + 24) = v56;
  sub_23A93F33C(v59);
  v60 = *(v2 + v67);
  if (*(v2 + v68) == 3)
  {
    sub_23A93C6B4(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), v60);
  }

  else
  {
    sub_23A93C968(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides), v60);
  }

  v61 = v71;
  sub_23A8DE32C(v53, v71);
  (*(v69 + 56))(v61, 0, 1, v70);
  v62 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
  swift_beginAccess();
  sub_23A8D5068(v61, v2 + v62, &unk_27DFAF030, &qword_23AA11B48);
  swift_endAccess();
  v63 = v72;
  sub_23AA0C044();
  sub_23A8DE2CC(v53, type metadata accessor for AnimationGraph);
  v64 = sub_23AA0C064();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
  swift_beginAccess();
  sub_23A8D5068(v63, v2 + v65, &qword_27DFAEB30, &unk_23AA11B50);
  return swift_endAccess();
}

double sub_23A8DB3E0()
{
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 3)
  {
    goto LABEL_6;
  }

  v1 = OBJC_IVAR____TtC8RoomPlan8ScanItem_category;
  if (sub_23A9AD42C(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category), qword_27DFAECA8))
  {
    goto LABEL_6;
  }

  if (qword_27DFAE388 != -1)
  {
    swift_once();
  }

  if (sub_23A9AD42C(*(v0 + v1), qword_27DFC05C0))
  {
LABEL_6:
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
    LODWORD(v2) = 0;
  }

  else
  {
    *&v2 = vtrn2q_s32(vrev64q_s32(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions)), 0).u64[0];
  }

  return *&v2;
}

double sub_23A8DB4A0(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
  if (a1 > 2u)
  {
    v4 = 0.0;
    LODWORD(v3) = 0;
    if (a1 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (a1 - 1 < 2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    LODWORD(v4) = *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
    goto LABEL_7;
  }

  LODWORD(v4) = HIDWORD(*(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions));
  v3 = *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
  if ((a1 - 1) > 1u)
  {
    LODWORD(v3) = HIDWORD(*(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions));
  }

LABEL_7:
  *v5.i64 = sub_23A8DB548(a1, (v4 - *&v3) * 0.5);
  *&result = vaddq_f32(v5, *(v1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48)).u64[0];
  return result;
}

double sub_23A8DB548(unsigned __int8 a1, float a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
      goto LABEL_10;
    }

    v5 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
    goto LABEL_8;
  }

  if (a1 == 2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
LABEL_8:
    v3 = vmulq_n_f32(v5, a2).u64[0];
    return *&v3;
  }

  v3 = 0;
  if (a1 == 3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
LABEL_10:
    v3 = vmulq_n_f32(vsubq_f32(0, v4), a2).u64[0];
  }

  return *&v3;
}

uint64_t sub_23A8DB5E4()
{
  v1 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
  v3 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, &qword_27DFAEB30, &unk_23AA11B50);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, &qword_27DFAEB30, &unk_23AA11B50);
  v4 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, &qword_27DFAEB38, &unk_23AA11B60);
  v5 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph, &unk_27DFAF030, &qword_23AA11B48);
  v6 = OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime;
  v7 = sub_23AA0C064();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, &qword_27DFAEB38, &unk_23AA11B60);
  v8 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges);

  v9 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, &unk_27DFAF020, &unk_23AA12300);
  return v0;
}

uint64_t sub_23A8DB8DC()
{
  sub_23A8DB5E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScanItem()
{
  result = qword_27DFAEBF0;
  if (!qword_27DFAEBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A8DB988()
{
  v0 = sub_23AA0C0E4();
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_23A8DBCBC(319, &qword_27DFAEC00, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_23A8DBCBC(319, &qword_27DFAEC08, type metadata accessor for CapturedRoom.Surface.Curve);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_23A8DBCBC(319, &qword_27DFAEC10, type metadata accessor for ScanItemStrut);
        if (v8 <= 0x3F)
        {
          v9 = *(v7 - 8) + 64;
          sub_23A8DBCBC(319, &qword_27DFAEC18, MEMORY[0x277CC9578]);
          if (v11 <= 0x3F)
          {
            v18 = *(v10 - 8) + 64;
            sub_23A8DBCBC(319, &qword_27DFAEC20, type metadata accessor for AnimationGraph);
            if (v13 <= 0x3F)
            {
              v19 = *(v12 - 8) + 64;
              v14 = sub_23AA0C064();
              if (v15 <= 0x3F)
              {
                v20 = *(v14 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23A8DBCBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23AA0D664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23A8DBD10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23A977E20(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_23A8DC26C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_23A938B2C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_23A8DC26C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23A8DC26C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_23A8DC460(uint64_t a1)
{
  v36 = sub_23AA0CE84();
  v2 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v7 = 0;
  v35 = (v3 + 8);
  v8 = MEMORY[0x277D84F90];
  v9 = 1;
  *&v4 = 136315138;
  v34 = v4;
  while (1)
  {
    v10 = byte_284D7F9C8[v7 + 32];
    if (!v9 || (result = sub_23A9F573C(byte_284D7F9C8[v7 + 32]), (v12 & 1) == 0))
    {
      sub_23A8D4E5C();
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      sub_23AA0CE94();
      v26 = sub_23AA0CE54();
      v27 = sub_23AA0D494();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = v34;
        v37 = v10;
        v30 = sub_23AA0D1A4();
        v32 = sub_23A9A65A4(v30, v31, &v38);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_23A8B4000, v26, v27, "Missing edge on %s side", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x23EE91710](v29, -1, -1);
        MEMORY[0x23EE91710](v28, -1, -1);
      }

      (*v35)(v6, v36);
      goto LABEL_22;
    }

    v13 = *(a1 + 56);
    v14 = *(v13 + 40 * result);
    v15 = *(v14 + 2);
    if (!v15)
    {
      break;
    }

    v16 = *(v13 + 40 * result);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(v14 + 3) >> 1)
    {
      v14 = sub_23A9388A8(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    }

    v18 = *(v14 + 2);
    result = memmove(v14 + 32, v14 + 48, 16 * v18 - 16);
    v19 = v18 - 1;
    *(v14 + 2) = v18 - 1;
    v20 = *(v8 + 16);
    v21 = v20 + v18 - 1;
    if (__OFADD__(v20, v18 - 1))
    {
      goto LABEL_33;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v8 + 24) >> 1)
    {
      if (*(v14 + 2))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v33 = v20 + v18 - 1;
      }

      else
      {
        v33 = v20;
      }

      result = sub_23A9388A8(result, v33, 1, v8);
      v8 = result;
      if (*(v14 + 2))
      {
LABEL_13:
        v22 = *(v8 + 16);
        if ((*(v8 + 24) >> 1) - v22 < v19)
        {
          goto LABEL_35;
        }

        memcpy((v8 + 16 * v22 + 32), v14 + 32, 16 * v19);

        if (v18 >= 2)
        {
          v23 = *(v8 + 16);
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_36;
          }

          *(v8 + 16) = v25;
        }

        goto LABEL_22;
      }
    }

    if (v18 > 1)
    {
      goto LABEL_34;
    }

LABEL_22:
    if (v7 == 3)
    {
      return v8;
    }

    v9 = *(a1 + 16);
    ++v7;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

double sub_23A8DC818()
{
  v1 = vsubq_f32(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48));
  if (*v1.i32 != 0.0 || (v2 = vceqz_f32(*&vextq_s8(v1, v1, 4uLL)), v3 = v2.i8[0] & v2.i8[4], result = 0.0, (v3 & 1) == 0))
  {
    v5 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    v6 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
    sub_23AA0DCB4();
    v9 = v7 * 0.5;
    sub_23AA0DCA4();
    *&result = vmulq_n_f32(v8, v9).u64[0];
  }

  return result;
}

uint64_t sub_23A8DC8D4(simd_float4 a1)
{
  v2 = v1;
  v261 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v252 = &v219 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v251 = &v219 - v7;
  MEMORY[0x28223BE20](v8);
  v253 = &v219 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v249 = *(v10 - 8);
  v250 = v10;
  v11 = *(v249 + 64);
  MEMORY[0x28223BE20](v10);
  v233 = &v219 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v257 = &v219 - v14;
  v260.i64[0] = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v262.i64[0] = *(v260.i64[0] - 8);
  v15 = *(v262.i64[0] + 64);
  MEMORY[0x28223BE20](v260.i64[0] - 8);
  v227 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v232 = &v219 - v18;
  MEMORY[0x28223BE20](v19);
  v226 = &v219 - v20;
  MEMORY[0x28223BE20](v21);
  v230 = &v219 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v231 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v246 = &v219 - v27;
  MEMORY[0x28223BE20](v28);
  v259.i64[0] = &v219 - v29;
  MEMORY[0x28223BE20](v30);
  v247 = &v219 - v31;
  MEMORY[0x28223BE20](v32);
  v248 = (&v219 - v33);
  MEMORY[0x28223BE20](v34);
  v229 = &v219 - v35;
  MEMORY[0x28223BE20](v36);
  v237 = &v219 - v37;
  MEMORY[0x28223BE20](v38);
  v239.i64[0] = &v219 - v39;
  MEMORY[0x28223BE20](v40);
  v241 = (&v219 - v41);
  v256 = sub_23AA0C064();
  v254 = *(v256 - 8);
  v42 = *(v254 + 64);
  MEMORY[0x28223BE20](v256);
  v220 = &v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v234 = &v219 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v219 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v225 = &v219 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v219 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v219 - v57;
  v59 = sub_23AA0C0E4();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v219 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v62) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);
  v255 = 0u;
  if (v62 != 18)
  {
    goto LABEL_13;
  }

  sub_23A8D5194(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, v58, &unk_27DFB0970, &qword_23AA14E00);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_23A8D50D0(v58, &unk_27DFB0970, &qword_23AA14E00);
    goto LABEL_13;
  }

  (*(v60 + 32))(v63, v58, v59);
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v64 = qword_27DFC04B0;
  swift_beginAccess();
  v65 = *(v64 + 24);
  if (!*(v65 + 16))
  {
LABEL_12:
    (*(v60 + 8))(v63, v59);
    goto LABEL_13;
  }

  v66 = sub_23A9EDD28(v63);
  if ((v67 & 1) == 0)
  {

    goto LABEL_12;
  }

  v68 = *(*(v65 + 56) + 8 * v66);

  v69 = *(v68 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 52);
  v258 = *(v68 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v70 = off_27DFB17B0;
  swift_beginAccess();
  v71 = *v258.f32;
  v72 = vmuls_lane_f32(v70[13], *v258.f32, 1);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions + 4) = v72;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 52) = (v69 - vmuls_lane_f32(0.5, v71, 1)) + (v72 * 0.5);

  (*(v60 + 8))(v63, v59);
  swift_beginAccess();
  LODWORD(v73) = 0;
  *(&v73 + 1) = v70[15] * 0.5;
  v255 = v73;
LABEL_13:
  v74 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions;
  v75 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v238 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions) = v75;
  v76 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve;
  v77 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve;
  swift_beginAccess();
  v236 = v76;
  v240 = v77;
  sub_23A8DE238(v2 + v76, v2 + v77, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v78 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut;
  v79 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut;
  swift_beginAccess();
  v243 = v79;
  sub_23A8DE238(v2 + v78, v2 + v79, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v80 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut;
  v81 = OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut;
  swift_beginAccess();
  v245 = v81;
  sub_23A8DE238(v2 + v80, v2 + v81, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v82 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
  swift_beginAccess();
  v224 = v82;
  sub_23A8D5194(v2 + v82, v54, &qword_27DFAEB30, &unk_23AA11B50);
  v83 = v254;
  v84 = v256;
  v222 = *(v254 + 48);
  v223 = v254 + 48;
  v85 = v222(v54, 1, v256);
  sub_23A8D50D0(v54, &qword_27DFAEB30, &unk_23AA11B50);
  if (v85 == 1)
  {
    sub_23A8DABE0(v261);
    v86 = &unk_27DFC0000;
  }

  else
  {
    v86 = &unk_27DFC0000;
    if (*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 2)
    {
      v264.columns[2] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
      v261 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
      v264.columns[3] = v261;
      v264.columns[0] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
      v264.columns[1] = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
      v265 = __invert_f4(v264);
      if (vmovn_s32(vcgtq_f32(vaddq_f32(v265.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v265.columns[0], COERCE_FLOAT(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition))), v265.columns[1], *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), 1), v265.columns[2], *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), 2)), vaddq_f32(v265.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v265.columns[0], v261.f32[0]), v265.columns[1], *v261.f32, 1), v265.columns[2], v261, 2)))).u8[0])
      {
        v87 = 2;
      }

      else
      {
        v87 = 1;
      }

      *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v87;
    }
  }

  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v88 = off_27DFB17B0;
  v258.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_type;
  v89 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
  if (v89 <= 2)
  {
    if (v89 >= 2)
    {
      v90 = (off_27DFB17B0 + 76);
      goto LABEL_28;
    }

LABEL_27:
    v90 = (off_27DFB17B0 + 88);
    goto LABEL_28;
  }

  if (v89 - 4 < 2)
  {
    goto LABEL_27;
  }

  if (v89 == 3)
  {
    v90 = (off_27DFB17B0 + 84);
  }

  else
  {
    v90 = (off_27DFB17B0 + 80);
  }

LABEL_28:
  swift_beginAccess();
  v91 = *v90;
  (*(v83 + 16))(v48, v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v84);
  v244 = v88;
  if (v91 <= 0.0)
  {
    v221 = *(v83 + 8);
    v221(v48, v84);
    v97 = 1.0;
  }

  else
  {
    v92 = v91;
    v93 = v234;
    sub_23AA0C044();
    sub_23AA0C014();
    v95 = v94;
    v96 = *(v83 + 8);
    v96(v93, v84);
    v96(v48, v84);
    v97 = 0.0;
    v221 = v96;
    if (v95 / v92 > 0.0)
    {
      v98 = 1.0;
      if (v95 / v92 <= 1.0)
      {
        v98 = v95 / v92;
      }

      v97 = v98;
    }
  }

  v99 = v260.i64[0];
  *&v100 = 1.0 - ((1.0 - v97) * (1.0 - v97));
  v261.i64[0] = type metadata accessor for Easing();
  v101 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition);
  v102 = v2 + v86[157];
  v242 = *(v102 + 48);
  v103 = vaddq_f32(v255, v242);
  v103.i32[3] = 0;
  *&v104 = sub_23A8D6F8C(v101, v103, *&v100);
  v255.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v104;
  v235 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation);
  v266.columns[1] = *(v102 + 16);
  v266.columns[2] = *(v102 + 32);
  v266.columns[0] = *v102;
  v266.columns[3] = v242;
  *v105.i64 = simd_quaternion(v266);
  simd_slerp(v235, v105, *&v100);
  v242.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v106;
  *&v107 = sub_23A8D6F8C(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions), *(v2 + v74), *&v100);
  v228 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v107;
  v108 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
  swift_beginAccess();
  v109 = v2 + v108;
  v110 = v239.i64[0];
  sub_23A8D5194(v109, v239.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v111 = v237;
  sub_23A8D5194(v2 + v236, v237, &qword_27DFAEB38, &unk_23AA11B60);
  v112 = v262.i64[0] + 48;
  v113 = *(v262.i64[0] + 48);
  v114 = v113(v111, 1, v99);
  v236 = v112;
  v235.i64[0] = v113;
  if (v114 == 1)
  {
    sub_23A8D50D0(v110, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D50D0(v111, &qword_27DFAEB38, &unk_23AA11B60);
    v115 = 1;
    v116 = v241;
  }

  else
  {
    v117 = v230;
    sub_23A8D5130(v111, v230);
    v118 = v229;
    sub_23A8D5194(v110, v229, &qword_27DFAEB38, &unk_23AA11B60);
    v119 = v110;
    if (v113(v118, 1, v99) == 1)
    {
      sub_23A8D50D0(v118, &qword_27DFAEB38, &unk_23AA11B60);
      v120 = *(v99 + 24);
      v121 = v117;
      sub_23A8D5AC4(v117 + *(v99 + 28), v257);
      sub_23A8D50D0(v110, &qword_27DFAEB38, &unk_23AA11B60);
      v122 = *v117;
      v123 = *(v117 + 8);
      v125 = v249;
      v124 = v250;
      v116 = v241;
      (*(v249 + 16))(v241 + *(v99 + 24), v121 + v120, v250);
      sub_23A8DE2CC(v121, type metadata accessor for CapturedRoom.Surface.Curve);
      *v116 = v122;
      *(v116 + 8) = v123;
      (*(v125 + 32))(v116 + *(v99 + 28), v257, v124);
    }

    else
    {
      v126 = v226;
      sub_23A8D5130(v118, v226);
      v127 = *(v126 + 8) + (*&v100 * (*(v117 + 8) - *(v126 + 8)));
      v128 = v257;
      sub_23A8D5AC4(v117 + *(v99 + 24), v257);
      v129 = v233;
      sub_23A8D5AC4(v117 + *(v99 + 28), v233);
      sub_23A8D50D0(v119, &qword_27DFAEB38, &unk_23AA11B60);
      v130 = *v126;
      sub_23A8DE2CC(v126, type metadata accessor for CapturedRoom.Surface.Curve);
      v131 = *v117;
      sub_23A8DE2CC(v117, type metadata accessor for CapturedRoom.Surface.Curve);
      v132 = sub_23A8D6C48(v130, v131, *&v100);
      v133 = v241;
      *v241 = v132;
      v133[2] = v127;
      v134 = v250;
      v135 = *(v249 + 32);
      v135(v133 + *(v99 + 24), v128, v250);
      v136 = v134;
      v116 = v133;
      v135(v133 + *(v99 + 28), v129, v136);
    }

    v115 = 0;
  }

  v137 = *(v262.i64[0] + 56);
  v262.i64[0] += 56;
  v241 = v137;
  (v137)(v116, v115, 1, v99);
  v138 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
  swift_beginAccess();
  sub_23A8D5068(v116, v2 + v138, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v139 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges);
  v140 = v247;
  if (*(v139 + 16) || *(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) + 16))
  {
    if (fabsf(*&v100 + -1.0) >= 0.0001)
    {
      v142 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges);
      v143 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges);

      v144 = sub_23A8D5E28(v139, v142, *&v100);

      v145 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);
      *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges) = v144;
    }

    else
    {
      v141 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);
      *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
    }
  }

  else
  {
    v146 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
    v147 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);
    *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges) = v146;
  }

  if (*(v2 + v258.i64[0]) == 2)
  {
    *v148.i64 = sub_23A8DC818();
    v149 = vaddq_f32(v148, *(v102 + 48));
    v149.i32[3] = 0;
  }

  else
  {
    *v150.i64 = sub_23A8DB4A0(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin));
    *v149.i64 = sub_23A8D6F8C(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition), v150, *&v100);
  }

  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = v149;
  v239 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation);
  *v151.i64 = simd_quaternion(*v102);
  simd_slerp(v239, v151, *&v100);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = v152;
  *&v153 = sub_23A8D6F8C(*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions), *(v2 + v238), *&v100);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = v153;
  v239.i64[0] = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
  v154 = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);
  *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = *(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);

  v155 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
  swift_beginAccess();
  sub_23A8D5194(v2 + v155, v140, &qword_27DFAEB38, &unk_23AA11B60);
  v156 = v259.i64[0];
  sub_23A8D5194(v2 + v240, v259.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v157 = v246;
  sub_23A8D5194(v156, v246, &qword_27DFAEB38, &unk_23AA11B60);
  v158 = v260.i64[0];
  v159 = v235.i64[0];
  if ((v235.i64[0])(v157, 1, v260.i64[0]) == 1)
  {
    sub_23A8D50D0(v156, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D50D0(v140, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D50D0(v157, &qword_27DFAEB38, &unk_23AA11B60);
    v160 = 1;
    v161 = v248;
  }

  else
  {
    v162 = v232;
    sub_23A8D5130(v157, v232);
    v163 = v231;
    sub_23A8D5194(v140, v231, &qword_27DFAEB38, &unk_23AA11B60);
    v164 = v140;
    if (v159(v163, 1, v158) == 1)
    {
      sub_23A8D50D0(v163, &qword_27DFAEB38, &unk_23AA11B60);
      v165 = *(v158 + 24);
      v166 = v257;
      v167 = v162;
      sub_23A8D5AC4(v162 + *(v158 + 28), v257);
      sub_23A8D50D0(v259.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
      sub_23A8D50D0(v164, &qword_27DFAEB38, &unk_23AA11B60);
      v168 = *v162;
      v169 = *(v162 + 8);
      v161 = v248;
      v170 = v249;
      v171 = v250;
      (*(v249 + 16))(v248 + *(v158 + 24), v167 + v165, v250);
      sub_23A8DE2CC(v167, type metadata accessor for CapturedRoom.Surface.Curve);
      *v161 = v168;
      *(v161 + 8) = v169;
      (*(v170 + 32))(v161 + *(v158 + 28), v166, v171);
    }

    else
    {
      v172 = v227;
      sub_23A8D5130(v163, v227);
      v173 = *(v172 + 8) + (*&v100 * (*(v162 + 8) - *(v172 + 8)));
      v174 = v257;
      sub_23A8D5AC4(v162 + *(v158 + 24), v257);
      v175 = v233;
      sub_23A8D5AC4(v162 + *(v158 + 28), v233);
      sub_23A8D50D0(v259.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
      sub_23A8D50D0(v164, &qword_27DFAEB38, &unk_23AA11B60);
      v176 = *v172;
      sub_23A8DE2CC(v172, type metadata accessor for CapturedRoom.Surface.Curve);
      v177 = *v162;
      sub_23A8DE2CC(v162, type metadata accessor for CapturedRoom.Surface.Curve);
      v178 = sub_23A8D6C48(v176, v177, *&v100);
      v161 = v248;
      v179 = v249;
      *v248 = v178;
      *(v161 + 8) = v173;
      v180 = *(v179 + 32);
      v181 = v174;
      v182 = v250;
      v180(v161 + *(v158 + 24), v181, v250);
      v180(v161 + *(v158 + 28), v175, v182);
    }

    v160 = 0;
  }

  (v241)(v161, v160, 1, v158);
  v183 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
  swift_beginAccess();
  sub_23A8D5068(v161, v2 + v183, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v184 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
  swift_beginAccess();
  v185 = v251;
  sub_23A8D5194(v2 + v184, v251, &unk_27DFAF020, &unk_23AA12300);
  v186 = v252;
  sub_23A8D5194(v2 + v243, v252, &unk_27DFAF020, &unk_23AA12300);
  v187 = v253;
  v188.n128_u32[0] = v100;
  sub_23A8D53D8(v185, v186, v253, v188);
  sub_23A8D50D0(v186, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v185, &unk_27DFAF020, &unk_23AA12300);
  v189 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v187, v2 + v189, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v190 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
  swift_beginAccess();
  sub_23A8D5194(v2 + v190, v185, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D5194(v2 + v245, v186, &unk_27DFAF020, &unk_23AA12300);
  v191.n128_u32[0] = v100;
  sub_23A8D53D8(v185, v186, v187, v191);
  sub_23A8D50D0(v186, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v185, &unk_27DFAF020, &unk_23AA12300);
  v192 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v187, v2 + v192, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  v193 = v244;
  v194 = swift_beginAccess();
  if (v193[12] > 0.0 && *(v2 + v258.i64[0]) == 3)
  {
    v195 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
    if (*(v2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) != 255)
    {
      v196 = v225;
      sub_23A8D5194(v2 + v224, v225, &qword_27DFAEB30, &unk_23AA11B50);
      v197 = v256;
      if (v222(v196, 1, v256) == 1)
      {
        v194 = sub_23A8D50D0(v196, &qword_27DFAEB30, &unk_23AA11B50);
      }

      else
      {
        v198 = v220;
        (*(v254 + 32))(v220, v196, v197);
        v199 = v234;
        sub_23AA0C044();
        sub_23AA0C014();
        v201 = v200;
        v202 = v199;
        v203 = v221;
        v221(v202, v197);
        if (v193[12] >= v201)
        {
          v194 = v203(v198, v197);
        }

        else
        {
          *(v2 + v195) = 255;
          v204 = sub_23A8D7C8C();
          v206 = v205;
          v207 = type metadata accessor for AnimationGraph();
          if (!(*(*(v207 - 8) + 48))(v206, 1, v207))
          {
            sub_23A93C6B4(*(v2 + v195), *(v2 + v228));
          }

          (v204)(v263, 0);
          v194 = (v221)(v198, v256);
        }
      }
    }
  }

  *v208.i64 = MEMORY[0x23EE8FF80](v194, *(v2 + v255.i64[0]), *(v2 + v242.i64[0]), xmmword_23AA11AF0);
  v261 = v209;
  v262 = v208;
  v259 = v211;
  v260 = v210;
  v212 = sub_23A8D7C8C();
  v214 = v213;
  v215 = type metadata accessor for AnimationGraph();
  if (!(*(*(v215 - 8) + 48))(v214, 1, v215))
  {
    v258 = *(v2 + v228);
    v216 = *(v2 + v239.i64[0]);

    sub_23A93CCD0(v217, v262, v261, v260, v259, v258);
  }

  return (v212)(v263, 0);
}

uint64_t sub_23A8DE238(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

uint64_t sub_23A8DE2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A8DE32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationGraph();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A8DE390()
{
  result = qword_27DFAE8C8;
  if (!qword_27DFAE8C8)
  {
    sub_23AA0C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAE8C8);
  }

  return result;
}

void *sub_23A8DE3E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return sub_23A9DC9E0(MEMORY[0x277D84F90]);
  }

  v3 = *(a2 + 16);
  if (v3 != v2)
  {
    sub_23A8DF388();
    swift_allocError();
    *v24 = v2;
    *(v24 + 8) = v3;
    *(v24 + 16) = 1;
    swift_willThrow();
    return v2;
  }

  v78 = *(a1 + 16);
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_284D80498[v5 + 32];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v6;
    v12 = sub_23A9F573C(v10);
    v14 = v6[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      __break(1u);
      goto LABEL_58;
    }

    v18 = v13;
    if (v6[3] < v17)
    {
      sub_23A908698(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_23A9F573C(v10);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_62;
      }

LABEL_11:
      v6 = v88;
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v22 = v12;
    sub_23A90E07C();
    v12 = v22;
    v6 = v88;
    if (v18)
    {
LABEL_4:
      v8 = v6[7];
      v9 = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v7;

      goto LABEL_5;
    }

LABEL_12:
    v6[(v12 >> 6) + 8] |= 1 << v12;
    *(v6[6] + v12) = v10;
    *(v6[7] + 8 * v12) = v7;
    v20 = v6[2];
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v16)
    {
      goto LABEL_59;
    }

    v6[2] = v21;
LABEL_5:
    ++v5;
  }

  while (v5 != 4);
  v25 = 0;
  v93 = v6;
  v26 = a1 + 32;
  v80 = a2 + 32;
  v27 = v78;
  do
  {
    v28 = *(v26 + 16 * v25);
    v29 = *(v80 + v25);
    if (v78 - 1 == v25)
    {
      v30 = 0;
    }

    else
    {
      v30 = v25 + 1;
    }

    v82 = *(v26 + 16 * v25);
    v85 = *(v26 + 16 * v30);
    v32 = sub_23A93CC08(&v88, v29);
    v33 = *v31;
    if (*v31)
    {
      v34 = v31;
      v35 = *v31;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *v34 = v33;
      if ((v36 & 1) == 0)
      {
        v33 = sub_23A9388A8(0, *(v33 + 2) + 1, 1, v33);
        *v34 = v33;
      }

      v38 = *(v33 + 2);
      v37 = *(v33 + 3);
      if (v38 >= v37 >> 1)
      {
        v33 = sub_23A9388A8((v37 > 1), v38 + 1, 1, v33);
        *v34 = v33;
      }

      *(v33 + 2) = v38 + 1;
      *&v33[16 * v38 + 32] = v82;
      (v32)(&v88, 0);
      v27 = v78;
    }

    else
    {
      (v32)(&v88, 0);
    }

    v40 = sub_23A93CC08(&v88, v29);
    v41 = *v39;
    if (*v39)
    {
      v42 = v39;
      v43 = *v39;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *v42 = v41;
      if ((v44 & 1) == 0)
      {
        v41 = sub_23A9388A8(0, *(v41 + 2) + 1, 1, v41);
        *v42 = v41;
      }

      v46 = *(v41 + 2);
      v45 = *(v41 + 3);
      if (v46 >= v45 >> 1)
      {
        v41 = sub_23A9388A8((v45 > 1), v46 + 1, 1, v41);
        *v42 = v41;
      }

      *(v41 + 2) = v46 + 1;
      *&v41[16 * v46 + 32] = v85;
    }

    (v40)(&v88, 0);
    ++v25;
  }

  while (v27 != v25);
  v47 = 0;
  v48 = v93 + 8;
  v83 = v93;
  v49 = 1 << *(v93 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v93[8];
  v52 = (v49 + 63) >> 6;
  v2 = MEMORY[0x277D84F98];
  v79 = v52;
  v81 = v93 + 8;
  while (v51)
  {
    v57 = v47;
LABEL_46:
    v58 = __clz(__rbit64(v51)) | (v57 << 6);
    v60 = *(v83[7] + 8 * v58);
    LOBYTE(v87) = *(v83[6] + v58);
    v59 = v87;

    sub_23A965154(v61, &v87, &v88);
    v86 = v88;
    v62 = v89;
    v64 = v90;
    v63 = v91;
    v65 = v92;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v87 = v2;
    v67 = sub_23A9F573C(v59);
    v69 = v2[2];
    v70 = (v68 & 1) == 0;
    v16 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v16)
    {
      goto LABEL_60;
    }

    v72 = v68;
    if (v2[3] >= v71)
    {
      if ((v66 & 1) == 0)
      {
        v77 = v67;
        sub_23A90DEE0();
        v67 = v77;
      }
    }

    else
    {
      sub_23A9083AC(v71, v66);
      v67 = sub_23A9F573C(v59);
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_62;
      }
    }

    v51 &= v51 - 1;
    v2 = v87;
    if (v72)
    {
      v53 = v87[7] + 40 * v67;
      v54 = *v53;
      v56 = *(v53 + 16);
      v55 = *(v53 + 24);
      *v53 = v86;
      *(v53 + 8) = v62;
      *(v53 + 16) = v64;
      *(v53 + 24) = v63;
      *(v53 + 32) = v65;
    }

    else
    {
      v87[(v67 >> 6) + 8] |= 1 << v67;
      *(v2[6] + v67) = v59;
      v74 = v2[7] + 40 * v67;
      *v74 = v86;
      *(v74 + 8) = v62;
      *(v74 + 16) = v64;
      *(v74 + 24) = v63;
      *(v74 + 32) = v65;
      v75 = v2[2];
      v16 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v16)
      {
        goto LABEL_61;
      }

      v2[2] = v76;
    }

    v47 = v57;
    v52 = v79;
    v48 = v81;
  }

  while (1)
  {
    v57 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v57 >= v52)
    {

      return v2;
    }

    v51 = v48[v57];
    ++v47;
    if (v51)
    {
      goto LABEL_46;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void *sub_23A8DE9A8(int8x16_t a1, int8x16_t a2, __n128 a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v4 = swift_allocObject();
  v5 = vmul_f32(vmul_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)), 0x3F0000003F000000), *&a4);
  v6 = v5.f32[1];
  v43 = v5.f32[0];
  v7 = vmul_n_f32(vmul_f32(*a1.i8, 0x3F0000003F000000), *&a4);
  v8 = vsub_f32(0, v7);
  v9 = vmul_lane_f32(vmul_f32(*a2.i8, 0x3F0000003F000000), *&a4, 1);
  v10 = vadd_f32(a3.n128_u64[0], v9);
  *&v11 = vadd_f32(v10, v8);
  v12 = 0.0 - v5.f32[0];
  *(&v11 + 2) = (a3.n128_f32[2] + v5.f32[1]) + (0.0 - v5.f32[0]);
  HIDWORD(v11) = 0;
  *&v13 = vadd_f32(v7, v10);
  *(&v13 + 2) = v5.f32[0] + (a3.n128_f32[2] + v5.f32[1]);
  v4[1] = xmmword_23AA11C10;
  v4[2] = v11;
  HIDWORD(v13) = 0;
  v14 = 0.0 - v5.f32[1];
  v4[3] = v13;
  v53 = 0;
  sub_23A965154(v4, &v53, &v54);
  a2.i64[0] = v54;
  v46 = v55;
  a1.i32[0] = v57;
  v15 = vadd_f32(a3.n128_u64[0], v7);
  *&v16 = vadd_f32(v9, v15);
  *(&v16 + 2) = v6 + (a3.n128_f32[2] + v43);
  HIDWORD(v16) = 0;
  v17 = vsub_f32(0, v9);
  *&v18 = vadd_f32(v15, v17);
  *(&v18 + 2) = (a3.n128_f32[2] + v43) + v14;
  HIDWORD(v18) = 0;
  v37 = v18;
  v19 = vadd_f32(a3.n128_u64[0], v17);
  *&v18 = vadd_f32(v7, v19);
  *(&v18 + 2) = v43 + (a3.n128_f32[2] + v14);
  HIDWORD(v18) = 0;
  v20 = vadd_f32(a3.n128_u64[0], v8);
  *&v21 = vadd_f32(v8, v19);
  *(&v21 + 2) = v12 + (a3.n128_f32[2] + v14);
  HIDWORD(v21) = 0;
  v38 = v21;
  v39 = v18;
  *&v21 = vadd_f32(v17, v20);
  *(&v21 + 2) = v14 + (a3.n128_f32[2] + v12);
  HIDWORD(v21) = 0;
  v42 = v21;
  v44 = v16;
  *&v22 = vadd_f32(v9, v20);
  *(&v22 + 2) = v6 + (a3.n128_f32[2] + v12);
  HIDWORD(v22) = 0;
  v41 = v22;
  v50 = v56;
  v23 = swift_allocObject();
  v23[1] = xmmword_23AA11C10;
  v23[2] = v44;
  v23[3] = v37;
  v53 = 1;
  sub_23A965154(v23, &v53, &v54);
  v24 = v54;
  v25 = v55;
  v26 = v57;
  v45 = v56;
  v27 = swift_allocObject();
  v27[1] = xmmword_23AA11C10;
  v27[2] = v39;
  v27[3] = v38;
  v53 = 2;
  sub_23A965154(v27, &v53, &v54);
  v28 = v54;
  v29 = v55;
  v30 = v57;
  v40 = v56;
  v31 = swift_allocObject();
  v31[1] = xmmword_23AA11C10;
  v31[2] = v42;
  v31[3] = v41;
  v53 = 3;
  sub_23A965154(v31, &v53, &v54);
  v32 = v54;
  v33 = v55;
  v9.i32[0] = v57;
  v52 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC30, &qword_23AA11CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA11C20;
  *(inited + 32) = 0;
  *(inited + 40) = a2.i64[0];
  *(inited + 48) = v46;
  *(inited + 56) = v50;
  *(inited + 72) = a1.i32[0];
  *(inited + 80) = 1;
  *(inited + 88) = v24;
  *(inited + 96) = v25;
  *(inited + 104) = v45;
  *(inited + 120) = v26;
  *(inited + 128) = 2;
  *(inited + 136) = v28;
  *(inited + 144) = v29;
  *(inited + 152) = v40;
  *(inited + 168) = v30;
  *(inited + 176) = 3;
  *(inited + 184) = v32;
  *(inited + 192) = v33;
  *(inited + 200) = v52;
  *(inited + 216) = v9.i32[0];
  v35 = sub_23A9DC9E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC38, &qword_23AA11CB0);
  swift_arrayDestroy();
  return v35;
}

uint64_t sub_23A8DED48(uint64_t result, void *a2)
{
  v59 = result;
  v2 = a2;
  v3 = *result;
  if (*(*result + 16) || *(*a2 + 16))
  {
    v4 = 0;
    while (1)
    {
      v9 = *(&unk_284D804C0 + v4 + 32);
      if (!*(v3 + 16))
      {
        goto LABEL_70;
      }

      v10 = sub_23A9F573C(*(&unk_284D804C0 + v4 + 32));
      if ((v11 & 1) == 0)
      {
        goto LABEL_70;
      }

      v12 = *v2;
      if (!*(*v2 + 16) || (v13 = *(v3 + 56) + 40 * v10, v14 = *(v13 + 8), v15 = *(v13 + 24), v66 = *(v13 + 16), v67 = *v13, v16 = *(v13 + 32), v17 = sub_23A9F573C(v9), (v18 & 1) == 0))
      {
LABEL_70:
        sub_23A8DF388();
        swift_allocError();
        *v57 = v9;
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        return swift_willThrow();
      }

      v61 = v14;
      v19 = *(v12 + 56) + 40 * v17;
      v20 = *v19;
      v63 = *(v19 + 8);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v15 + 16);
      v64 = v9;
      v65 = v4;
      v62 = *(v19 + 16);
      if (v23 >= 2)
      {
        break;
      }

LABEL_25:
      v30 = *(v21 + 16);
      if (v30 >= 2)
      {

        v31 = v21;
        while (1)
        {
          v33 = v30 - 1;
          v34 = *(v31 + 2);
          if (v30 - 1 >= v34)
          {
            goto LABEL_74;
          }

          if (v30 - 2 >= v34)
          {
            goto LABEL_75;
          }

          if (vabds_f32(*&v31[4 * v30 + 28], *&v31[4 * v30 + 24]) < 0.0001)
          {
            if (v30 == 2)
            {
              v35 = 1;
            }

            else
            {
              v35 = v30 - 2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_23A975CEC(v31);
            }

            v36 = *(v31 + 2);
            if (v35 >= v36)
            {
              goto LABEL_79;
            }

            v32 = v36 - 1;
            memmove(&v31[4 * v35 + 32], &v31[4 * v35 + 36], 4 * (v36 - 1 - v35));
            *(v31 + 2) = v32;
          }

          --v30;
          if (v33 <= 1)
          {

            goto LABEL_41;
          }
        }
      }

      v31 = v21;
LABEL_41:
      v69 = v15;

      sub_23A912794(v37);
      v38 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_23A975CEC(v38);
      }

      v39 = *(v38 + 2);
      v69 = v38 + 32;
      v70 = v39;
      v40 = sub_23AA0DBA4();
      if (v40 >= v39)
      {
        if (v39 >= 2)
        {
          v49 = -1;
          v50 = v38 + 32;
          for (i = 1; i != v39; ++i)
          {
            v52 = *&v38[4 * i + 32];
            v53 = v49;
            v54 = v50;
            do
            {
              v55 = *v54;
              if (v52 >= *v54)
              {
                break;
              }

              *v54 = v52;
              v54[1] = v55;
              --v54;
            }

            while (!__CFADD__(v53++, 1));
            v50 += 4;
            --v49;
          }
        }
      }

      else
      {
        v41 = v40;
        v58 = v20;
        v42 = v2;
        v2 = MEMORY[0x277D84F90];
        if (v39 >= 2)
        {
          v2 = sub_23AA0D324();
          v2[2] = v39 >> 1;
        }

        v68[0] = v2 + 4;
        v68[1] = v39 >> 1;
        sub_23A8DBD10(v68, v76, &v69, v41);
        if (v60)
        {
          goto LABEL_81;
        }

        v2[2] = 0;

        v2 = v42;
        v20 = v58;
      }

      v43 = *(v38 + 2);
      if (v43 > 1)
      {
        do
        {
          v45 = v43 - 1;
          v46 = *(v38 + 2);
          if (v43 - 1 >= v46)
          {
            goto LABEL_76;
          }

          if (v43 - 2 >= v46)
          {
            goto LABEL_77;
          }

          if (vabds_f32(*&v38[4 * v43 + 28], *&v38[4 * v43 + 24]) < 0.0001)
          {
            if (v43 == 2)
            {
              v47 = 1;
            }

            else
            {
              v47 = v43 - 2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_23A975CEC(v38);
            }

            v48 = *(v38 + 2);
            if (v47 >= v48)
            {
              goto LABEL_80;
            }

            v44 = v48 - 1;
            memmove(&v38[4 * v47 + 32], &v38[4 * v47 + 36], 4 * (v48 - 1 - v47));
            *(v38 + 2) = v44;
          }

          v43 = v45;
        }

        while (v45 > 1);
      }

      v69 = v67;
      LOBYTE(v70) = v61;
      v71 = v66;
      v72 = v15;
      v73 = v16;
      sub_23A9652D0(v38, v75);

      v5 = *v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = *v59;
      sub_23A9DA688(v75, v64, isUniquelyReferenced_nonNull_native);
      v3 = v69;
      *v59 = v69;
      v69 = v20;
      LOBYTE(v70) = v63;
      v71 = v62;
      v72 = v31;
      v4 = v65 + 1;
      v73 = v22;
      sub_23A9652D0(v38, v74);

      v7 = *v2;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v69 = *v2;
      result = sub_23A9DA688(v74, v64, v8);
      *v2 = v69;
      if (v65 == 3)
      {
        return result;
      }
    }

    swift_bridgeObjectRetain_n();

    v24 = v15;
    while (1)
    {
      v26 = v23 - 1;
      v27 = *(v24 + 2);
      if (v23 - 1 >= v27)
      {
        break;
      }

      if (v23 - 2 >= v27)
      {
        goto LABEL_73;
      }

      if (vabds_f32(*&v24[4 * v23 + 28], *&v24[4 * v23 + 24]) < 0.0001)
      {
        if (v23 == 2)
        {
          v28 = 1;
        }

        else
        {
          v28 = v23 - 2;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_23A975CEC(v24);
        }

        v29 = *(v24 + 2);
        if (v28 >= v29)
        {
          goto LABEL_78;
        }

        v25 = v29 - 1;
        memmove(&v24[4 * v28 + 32], &v24[4 * v28 + 36], 4 * (v29 - 1 - v28));
        *(v24 + 2) = v25;
      }

      v23 = v26;
      if (v26 <= 1)
      {

        v15 = v24;
        goto LABEL_25;
      }
    }

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
LABEL_80:
    __break(1u);
LABEL_81:
    v2[2] = 0;

    __break(1u);
  }

  return result;
}

unint64_t sub_23A8DF388()
{
  result = qword_27DFAEC40;
  if (!qword_27DFAEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC40);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScanItemError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanItemError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

unint64_t sub_23A8DF60C(float *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (vabds_f32(v3, v2) < 0.00000011921)
  {
    goto LABEL_30;
  }

  v5 = a1[6];
  v4 = a1[7];
  if (vabds_f32(v5, v4) < 0.00000011921)
  {
    goto LABEL_30;
  }

  v6 = v1[5];
  if (v6 <= v3)
  {
    goto LABEL_30;
  }

  v7 = v1[4];
  if (v2 <= v7)
  {
    goto LABEL_30;
  }

  v8 = v1[7];
  if (v8 <= v5)
  {
    goto LABEL_30;
  }

  v9 = v1[6];
  if (v4 <= v9)
  {
    goto LABEL_30;
  }

  v10 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  if (v7 < v3)
  {
    type metadata accessor for CurvedElement();
    v11 = swift_allocObject();
    v11[4] = v7;
    v11[5] = v3;
    v11[6] = v9;
    v11[7] = v8;
    MEMORY[0x23EE8FD70]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v22;
    v6 = v1[5];
    v9 = v1[6];
  }

  if (v2 < v6)
  {
    v12 = *(v1 + 7);
    type metadata accessor for CurvedElement();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 20) = v6;
    *(v13 + 24) = v9;
    *(v13 + 28) = v12;
    MEMORY[0x23EE8FD70]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v22;
    v9 = v1[6];
  }

  if (v3 <= v7)
  {
    v3 = v7;
  }

  if (v6 < v2)
  {
    v2 = v6;
  }

  if (v9 < v5)
  {
    type metadata accessor for CurvedElement();
    v14 = swift_allocObject();
    v14[4] = v3;
    v14[5] = v2;
    v14[6] = v9;
    v14[7] = v5;
    MEMORY[0x23EE8FD70]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v22;
  }

  v15 = v1[7];
  if (v4 < v15)
  {
    type metadata accessor for CurvedElement();
    v16 = swift_allocObject();
    v16[4] = v3;
    v16[5] = v2;
    v16[6] = v4;
    v16[7] = v15;
    MEMORY[0x23EE8FD70]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v10 = v22;
  }

  if (v10 >> 62)
  {
    if (sub_23AA0D7F4())
    {
      return v10;
    }

    goto LABEL_29;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:

LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23AA11BB0;
    *(v10 + 32) = v1;
  }

  return v10;
}

uint64_t sub_23A8DFAEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v48 = v12;
  v13 = *(v12 + 16);
  v56 = qword_27DFC0620;
  v57 = a1;
  v58 = v13;
  v59 = v12 + 16;
  (v13)(&v47 - v10, a1 + qword_27DFC0620, v4, v9);
  swift_beginAccess();
  v14 = *(v2 + 24);
  if (*(v14 + 16))
  {
    v15 = *(v2 + 24);

    v16 = sub_23A9EDD28(v11);
    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v16);
      v19 = *(v48 + 8);

      v19(v11, v4);

      return v18;
    }
  }

  v54 = *(v48 + 8);
  v55 = v48 + 8;
  v54(v11, v4);
  v61 = MEMORY[0x277D84F90];
  v20 = *(v2 + 16);
  if (v20 < 0)
  {
    goto LABEL_27;
  }

  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v53 = sub_23AA0C3F4();
  v52 = *(v2 + 32);
  v21 = *(v2 + 48);
  v50 = *(v2 + 56);
  v51 = v21;
  v49 = xmmword_23AA10FC0;
  while (1)
  {
    sub_23AA0C3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
    v24 = swift_allocObject();
    *(v24 + 16) = v49;
    *(v24 + 56) = sub_23AA0C444();
    *(v24 + 64) = MEMORY[0x277CDAC30];
    __swift_allocate_boxed_opaque_existential_1((v24 + 32));
    v25 = v51;
    sub_23AA0C434();
    v26 = sub_23AA0C164();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_23AA0C154();
    sub_23AA0CAB4();
    sub_23AA0C214();
    sub_23AA0CA94();

    MEMORY[0x23EE8FD70](v29);
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v18 = v61;
    v58(v7, v57 + v56, v4);
    swift_beginAccess();

    v30 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v2 + 24);
    v32 = v60;
    *(v2 + 24) = 0x8000000000000000;
    v34 = sub_23A9EDD28(v7);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v60;
        if (v33)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_23A90D874();
        v41 = v60;
        if (v38)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_23A907978(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_23A9EDD28(v7);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_28;
      }

      v34 = v39;
      v41 = v60;
      if (v38)
      {
LABEL_8:
        v22 = v41[7];
        v23 = *(v22 + 8 * v34);
        *(v22 + 8 * v34) = v18;

        goto LABEL_9;
      }
    }

    v41[(v34 >> 6) + 8] |= 1 << v34;
    v58((v41[6] + *(v48 + 72) * v34), v7, v4);
    *(v41[7] + 8 * v34) = v18;
    v42 = v41[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_26;
    }

    v41[2] = v44;
LABEL_9:
    v54(v7, v4);
    *(v2 + 24) = v41;
    swift_endAccess();

    if (!--v20)
    {
      return v18;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

uint64_t sub_23A8DFFB8()
{
  swift_beginAccess();
  v15 = v0;
  v1 = *(v0 + 24);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v16 = v1;
  while (v5)
  {
LABEL_10:
    v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    if (v10 >> 62)
    {
      result = sub_23AA0D7F4();
      v11 = result;
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v11)
    {
      if (v11 < 1)
      {
        goto LABEL_22;
      }

      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EE90360](v12, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        ++v12;
        sub_23AA0C164();
        sub_23AA0C204();
      }

      while (v11 != v12);

      v1 = v16;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v14 = *(v15 + 24);
      *(v15 + 24) = MEMORY[0x277D84F98];
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_23A8E0178()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t _s8RoomPlan08CapturedA0V10ConfidenceO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v1);
  return sub_23AA0DD54();
}

uint64_t sub_23A8E0270()
{
  v1 = *v0;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v1);
  return sub_23AA0DD54();
}

uint64_t sub_23A8E02B4()
{
  v1 = v0;
  v51[1] = *MEMORY[0x277D85DE8];
  v45 = sub_23AA0CE84();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v45);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_23AA0C184();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 80);
  v10 = sub_23A9FC870();
  v12 = v10;
  if (v10 >> 62)
  {
    v13 = sub_23AA0D7F4();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_3:
      if (v13 < 1)
      {
        __break(1u);
      }

      v14 = 0;
      v50 = v12 & 0xC000000000000001;
      v47 = (v6 + 8);
      v42 = (v2 + 8);
      v43 = v5;
      *&v11 = 136315138;
      v40 = v11;
      v44 = v1;
      while (1)
      {
        if (v50)
        {
          v15 = MEMORY[0x23EE90360](v14, v12);
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = *(v15 + qword_27DFC0640);
        if (v16)
        {
          v17 = *(v1 + 156);
          v18 = qword_27DFAF6E0;
          v19 = *(v16 + qword_27DFAF6E0);
          LODWORD(v51[0]) = 0;
          v20 = *(v19 + 24);

          REMaterialParameterBlockGetFloat();
          if (v17 != *v51)
          {
            REMaterialParameterBlockSetFloat();
            v21 = *(v16 + v18);
            v22 = v48;
            sub_23AA0C9A4();
            sub_23AA0C114();
            (*v47)(v22, v49);
            REMeshComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              REMeshComponentRemoveAllMaterials();
              v23 = *(v21 + 16);
              REMeshComponentAddMaterial();
              REMaterialParameterBlockArrayComponentGetComponentType();
              REEntityGetOrAddComponentByClass();
              if (REMaterialParameterBlockArrayComponentSize() != 1)
              {
                REMaterialParameterBlockArrayComponentResize();
              }

              v24 = *(v21 + 24);
              REMaterialParameterBlockArrayComponentSetBlockAtIndex();
            }

            else
            {
              sub_23A8E90A8();
              v25 = swift_allocError();
              *v26 = 0;
              *(v26 + 8) = 0;
              *(v26 + 16) = 4;
              swift_willThrow();

              sub_23A8D4E5C();
              if (qword_27DFAE3A0 != -1)
              {
                swift_once();
              }

              sub_23AA0D644();
              v27 = v43;
              sub_23AA0CE94();
              v28 = v25;
              v29 = sub_23AA0CE54();
              v30 = sub_23AA0D494();

              v46 = v29;
              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                v51[0] = v41;
                *v31 = v40;
                swift_getErrorValue();
                v32 = sub_23AA0DC34();
                v34 = sub_23A9A65A4(v32, v33, v51);

                *(v31 + 4) = v34;
                v35 = v46;
                _os_log_impl(&dword_23A8B4000, v46, v30, "cannot update edge line width: %s", v31, 0xCu);
                v36 = v41;
                __swift_destroy_boxed_opaque_existential_1(v41);
                MEMORY[0x23EE91710](v36, -1, -1);
                MEMORY[0x23EE91710](v31, -1, -1);
              }

              else
              {
              }

              (*v42)(v27, v45);
              v1 = v44;
            }

            goto LABEL_7;
          }
        }

LABEL_7:
        if (v13 == ++v14)
        {

          v38 = *MEMORY[0x277D85DE8];
          return result;
        }
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23A8E086C(uint64_t a1, int a2, double a3)
{
  v133 = a2;
  v132 = a1;
  v126 = sub_23AA0CE84();
  v5 = *(v126 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v126);
  v115 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v127 = &v114 - v9;
  MEMORY[0x28223BE20](v10);
  v134 = &v114 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v114 - v13;
  v119 = sub_23AA0C0E4();
  v124 = *(v119 - 8);
  v15 = *(v124 + 64);
  MEMORY[0x28223BE20](v119);
  v122 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC60, &qword_23AA11F08);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v130 = (&v114 - v21);
  swift_beginAccess();
  v116 = v3;
  v22 = *(v3 + 96);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;
  v125 = (v5 + 8);

  v28 = 0;
  v29 = 0;
  *&v30 = 136315138;
  v118 = v30;
  v135 = v14;
  v129 = v22;
  if (v25)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v31 >= v26)
    {
      break;
    }

    v25 = *(v22 + 64 + 8 * v31);
    ++v28;
    if (v25)
    {
      while (1)
      {
        v32 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v33 = *(*(v22 + 56) + ((v31 << 9) | (8 * v32)));

        sub_23A97E89C(v132, v133 & 1, a3);

        v28 = v31;
        if (!v25)
        {
          break;
        }

LABEL_10:
        v31 = v28;
      }
    }
  }

  v34 = v116;
  swift_beginAccess();
  v35 = *(v34 + 120);
  v36 = 1 << *(v35 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v35 + 64);
  v39 = (v36 + 63) >> 6;
  v40 = *(v34 + 120);

  v41 = 0;
  v42 = v119;
  v135 = v35;
  if (v38)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v39)
    {

      v46 = v116;
      swift_beginAccess();
      v47 = *(v46 + 112);
      v48 = *(v47 + 64);
      v129 = (v47 + 64);
      v49 = 1 << *(v47 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      isa = v50 & v48;
      v117 = (v49 + 63) >> 6;
      v120 = v124 + 32;
      v121 = v124 + 16;
      v128 = (v124 + 8);
      v123 = v47;

      v52 = 0;
      v53 = v130;
      v54 = v131;
      while (isa)
      {
        v135 = 0;
        v55 = v52;
LABEL_38:
        v58 = __clz(__rbit64(isa));
        isa &= isa - 1;
        v59 = v58 | (v55 << 6);
        v60 = v123;
        v61 = v124;
        v62 = v122;
        (*(v124 + 16))(v122, *(v123 + 48) + *(v124 + 72) * v59, v42);
        v134 = *(*(v60 + 56) + 8 * v59);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC68, &qword_23AA11F10);
        v64 = *(v63 + 48);
        v65 = *(v61 + 32);
        v66 = v131;
        v65(v131, v62, v42);
        *&v66[v64] = v134;
        v54 = v66;
        (*(*(v63 - 8) + 56))(v66, 0, 1, v63);

        v53 = v130;
        v29 = v135;
LABEL_39:
        sub_23A8E9234(v54, v53);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC68, &qword_23AA11F10);
        if ((*(*(v67 - 8) + 48))(v53, 1, v67) == 1)
        {
          v135 = v29;

          v79 = v116;
          swift_beginAccess();
          v80 = *(v79 + 104);
          v81 = v80 + 64;
          v82 = 1 << v80[32];
          v83 = -1;
          if (v82 < 64)
          {
            v83 = ~(-1 << v82);
          }

          v84 = v83 & *(v80 + 8);
          v85 = (v82 + 63) >> 6;
          v86 = *(v79 + 104);

          v87 = 0;
          v88 = v115;
          v131 = v80;
          if (v84)
          {
            goto LABEL_57;
          }

LABEL_53:
          while (1)
          {
            v89 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_80;
            }

            if (v89 >= v85)
            {

              v103 = v116;
              swift_beginAccess();
              v104 = *(v103 + 128);
              v105 = 1 << *(v104 + 32);
              v106 = -1;
              if (v105 < 64)
              {
                v106 = ~(-1 << v105);
              }

              v107 = v106 & *(v104 + 64);
              v108 = (v105 + 63) >> 6;
              v109 = *(v103 + 128);

              for (i = 0; v107; result = )
              {
                v111 = i;
LABEL_74:
                v112 = __clz(__rbit64(v107));
                v107 &= v107 - 1;
                v113 = *(*(v104 + 56) + ((v111 << 9) | (8 * v112)));

                sub_23A9F7E44();
              }

              while (1)
              {
                v111 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_81;
                }

                if (v111 >= v108)
                {
                }

                v107 = *(v104 + 64 + 8 * v111);
                ++i;
                if (v107)
                {
                  i = v111;
                  goto LABEL_74;
                }
              }
            }

            v84 = *&v81[8 * v89];
            ++v87;
            if (v84)
            {
              while (1)
              {
                v90 = __clz(__rbit64(v84));
                v84 &= v84 - 1;
                v91 = *(*(v80 + 7) + ((v89 << 9) | (8 * v90)));

                v92 = v135;
                sub_23A8EA444(v132, v133 & 1, a3);
                v135 = v92;
                if (v92)
                {
                  v134 = v91;
                  sub_23A8D4E5C();
                  if (qword_27DFAE3A0 != -1)
                  {
                    swift_once();
                  }

                  sub_23AA0D644();
                  sub_23AA0CE94();
                  v93 = v135;
                  v94 = v135;
                  v95 = sub_23AA0CE54();
                  v96 = sub_23AA0D494();

                  if (os_log_type_enabled(v95, v96))
                  {
                    v97 = swift_slowAlloc();
                    v130 = swift_slowAlloc();
                    v136 = v130;
                    *v97 = v118;
                    swift_getErrorValue();
                    v129 = v95;
                    v98 = sub_23AA0DC34();
                    v100 = sub_23A9A65A4(v98, v99, &v136);

                    *(v97 + 4) = v100;
                    v88 = v115;
                    v101 = v129;
                    _os_log_impl(&dword_23A8B4000, v129, v96, "Cannot update object rendering: %s", v97, 0xCu);
                    v102 = v130;
                    __swift_destroy_boxed_opaque_existential_1(v130);
                    MEMORY[0x23EE91710](v102, -1, -1);
                    MEMORY[0x23EE91710](v97, -1, -1);
                  }

                  else
                  {
                  }

                  result = (*v125)(v88, v126);
                  v135 = 0;
                  v87 = v89;
                  v80 = v131;
                  if (!v84)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {

                  v87 = v89;
                  if (!v84)
                  {
                    goto LABEL_53;
                  }
                }

LABEL_57:
                v89 = v87;
              }
            }
          }
        }

        v68 = *(v53 + *(v67 + 48));
        sub_23A902B54(v132, v133 & 1, a3);
        if (v29)
        {
          v135 = v68;
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v69 = v127;
          sub_23AA0CE94();
          v70 = v29;
          v71 = sub_23AA0CE54();
          v72 = sub_23AA0D494();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v137 = v74;
            *v73 = v118;
            swift_getErrorValue();
            v75 = sub_23AA0DC34();
            v77 = sub_23A9A65A4(v75, v76, &v137);

            *(v73 + 4) = v77;
            v54 = v131;
            _os_log_impl(&dword_23A8B4000, v71, v72, "Cannot update floor rendering: %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v74);
            MEMORY[0x23EE91710](v74, -1, -1);
            v53 = v130;
            v69 = v127;
            MEMORY[0x23EE91710](v73, -1, -1);
          }

          else
          {
          }

          (*v125)(v69, v126);
          v29 = 0;
          v42 = v119;
        }

        else
        {
        }

        result = (*v128)(v53, v42);
      }

      if (v117 <= v52 + 1)
      {
        v56 = v52 + 1;
      }

      else
      {
        v56 = v117;
      }

      v57 = v56 - 1;
      while (1)
      {
        v55 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v55 >= v117)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC68, &qword_23AA11F10);
          (*(*(v78 - 8) + 56))(v54, 1, 1, v78);
          isa = 0;
          v52 = v57;
          goto LABEL_39;
        }

        isa = v129[v55].isa;
        ++v52;
        if (isa)
        {
          v135 = 0;
          v52 = v55;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

    v38 = *(v35 + 64 + 8 * v43);
    ++v41;
    if (v38)
    {
      while (1)
      {
        v44 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v45 = *(*(v35 + 56) + ((v43 << 9) | (8 * v44)));

        sub_23A97E89C(v132, v133 & 1, a3);

        v41 = v43;
        if (!v38)
        {
          break;
        }

LABEL_21:
        v43 = v41;
      }
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_23A8E1850(void *a1)
{
  v2 = v1;
  v76 = sub_23AA0CE84();
  v4 = *(v76 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v76);
  v72 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - v8;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v61 = &v61 - v12;
  v13 = type metadata accessor for CapturedRoom.Object(0);
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CapturedRoom.Surface(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v67 = &v61 - v21;
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v23;
  v64 = a1;
  v27 = *a1;
  v28 = *(*a1 + 16);
  v68 = v4;
  v74 = v2;
  v66 = v24;
  v71 = v9;
  v75 = v16;
  if (v28)
  {
    v29 = v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    *&v73 = *(v24 + 72);
    v69 = v4 + 8;
    *&v25 = 136315138;
    v65 = v25;
    *&v70 = &v61 - v23;
    do
    {
      sub_23A8D52B8(v29, v26, type metadata accessor for CapturedRoom.Surface);
      sub_23A8E33CC(v26);
      sub_23A8D5320(v26, type metadata accessor for CapturedRoom.Surface);
      v29 += v73;
      --v28;
    }

    while (v28);
  }

  v30 = v64[5];
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    *&v73 = *(v62 + 72);
    *&v25 = 136315138;
    v70 = v25;
    do
    {
      sub_23A8D52B8(v32, v16, type metadata accessor for CapturedRoom.Object);
      sub_23A8E6D90(v16);
      sub_23A8D5320(v16, type metadata accessor for CapturedRoom.Object);
      v32 += v73;
      --v31;
    }

    while (v31);
  }

  v33 = v64;
  v34 = v64[1];
  v78 = v64[3];

  sub_23A911B78(v35);
  v36 = v33[2];

  sub_23A911B78(v37);
  v39 = *(v78 + 2);
  if (v39)
  {
    v40 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v71 = v78;
    v41 = &v78[v40];
    v42 = *(v66 + 72);
    v43 = v68;
    v75 = (v68 + 8);
    *&v38 = 136315138;
    v73 = v38;
    v44 = v67;
    do
    {
      sub_23A8D52B8(v41, v44, type metadata accessor for CapturedRoom.Surface);
      if (*v44 - 2) < 4u || (*v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = *(v2 + 88) ^ 1;
      }

      if (*(v2 + 136) == 1 || (v45 & 1) != 0)
      {
        sub_23A8E4B44(v44);
      }

      else if (*(v2 + 88) == 1)
      {
        sub_23A8E48A4(v44);
      }

      sub_23A8D5320(v44, type metadata accessor for CapturedRoom.Surface);
      v41 += v42;
      --v39;
    }

    while (v39);
  }

  else
  {

    v43 = v68;
  }

  v47 = v66;
  v48 = v63;
  if (*(v2 + 88) == 1)
  {
    v49 = v64[4];
    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = 0;
      while (v51 < *(v49 + 16))
      {
        sub_23A8D52B8(v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v51, v48, type metadata accessor for CapturedRoom.Surface);
        sub_23A8E5C74(v48);
        ++v51;
        result = sub_23A8D5320(v48, type metadata accessor for CapturedRoom.Surface);
        v47 = v66;
        if (v50 == v51)
        {
          return result;
        }
      }

      __break(1u);
      swift_once();

      sub_23AA0D644();
      v52 = v61;
      sub_23AA0CE94();
      v53 = 0;
      v54 = sub_23AA0CE54();
      v55 = sub_23AA0D494();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v77 = v57;
        *v56 = 136315138;
        swift_getErrorValue();
        v58 = sub_23AA0DC34();
        v60 = sub_23A9A65A4(v58, v59, &v77);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_23A8B4000, v54, v55, "Cannot create floor entity: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x23EE91710](v57, -1, -1);
        MEMORY[0x23EE91710](v56, -1, -1);

        return (*(v43 + 8))(v52, v76);
      }

      else
      {

        return (*(v43 + 8))(v52, v76);
      }
    }
  }

  return result;
}

void sub_23A8E259C(uint64_t a1)
{
  v3 = sub_23AA0CE84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CapturedRoom.Surface(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 88) == 1)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      while (v15 < *(v13 + 16))
      {
        sub_23A8D52B8(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v12, type metadata accessor for CapturedRoom.Surface);
        sub_23A8E5C74(v12);
        ++v15;
        sub_23A8D5320(v12, type metadata accessor for CapturedRoom.Surface);
        if (v14 == v15)
        {
          return;
        }
      }

      __break(1u);
      swift_once();

      sub_23AA0D644();
      sub_23AA0CE94();
      v16 = 0;
      v17 = sub_23AA0CE54();
      v18 = sub_23AA0D494();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_23AA0DC34();
        v23 = sub_23A9A65A4(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_23A8B4000, v17, v18, "Cannot create floor entity: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x23EE91710](v20, -1, -1);
        MEMORY[0x23EE91710](v19, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t sub_23A8E2914(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CapturedRoom.Object(0);
  v5 = *(v4 - 8);
  v103 = v4;
  v104 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v112 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0C0E4();
  v115 = *(v8 - 8);
  v9 = v115[8];
  MEMORY[0x28223BE20](v8);
  v108 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v103 - v12;
  v113 = type metadata accessor for CapturedRoom.Surface(0);
  v105 = *(v113 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v113);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v107 = &v103 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v103 - v20;
  v106 = a1;
  v22 = *a1;
  v23 = *(*a1 + 16);
  v116 = v8;
  v114 = v16;
  if (v23)
  {
    v111 = *(v113 + 44);
    v24 = v22 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v25 = *(v105 + 72);
    v109 = (v115 + 2);
    v110 = v25;
    v26 = (v115 + 1);
    do
    {
      sub_23A8D52B8(v24, v21, type metadata accessor for CapturedRoom.Surface);
      (*v109)(v13, &v21[v111], v8);
      sub_23A8D5320(v21, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v27 = v2[12];
      v28 = sub_23A9EDD28(v13);
      if (v29)
      {
        v30 = v28;
        v31 = v2[12];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v2[12];
        v118 = v33;
        v2[12] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23A90CFA0();
          v33 = v118;
        }

        v34 = v115[1];
        v34(*(v33 + 48) + v115[9] * v30, v8);
        v35 = *(*(v33 + 56) + 8 * v30);
        sub_23A910778(v30, v33);
        v34(v13, v116);
        v2[12] = v33;
        swift_endAccess();
        type metadata accessor for WallEntity();

        sub_23AA0C204();
        v8 = v116;

        v16 = v114;
      }

      else
      {
        (*v26)(v13, v8);
        swift_endAccess();
      }

      v24 += v110;
      --v23;
    }

    while (v23);
  }

  v36 = v106[5];
  v37 = *(v36 + 16);
  v38 = v108;
  if (v37)
  {
    v111 = *(v103 + 32);
    v39 = v36 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v110 = *(v104 + 72);
    v40 = (v115 + 2);
    v41 = (v115 + 1);
    do
    {
      v42 = v112;
      sub_23A8D52B8(v39, v112, type metadata accessor for CapturedRoom.Object);
      v43 = v116;
      (*v40)(v38, v42 + v111, v116);
      sub_23A8D5320(v42, type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v44 = v2[13];
      v45 = sub_23A9EDD28(v38);
      if (v46)
      {
        v47 = v45;
        v48 = v2[13];
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v50 = v2[13];
        v118 = v50;
        v2[13] = 0x8000000000000000;
        if (!v49)
        {
          sub_23A90CFB4();
          v50 = v118;
        }

        v51 = v116;
        v52 = v115[1];
        v52(*(v50 + 48) + v115[9] * v47, v116);
        v53 = *(*(v50 + 56) + 8 * v47);
        sub_23A910778(v47, v50);
        v54 = v108;
        v52(v108, v51);
        v38 = v54;
        v2[13] = v50;
        swift_endAccess();
        type metadata accessor for ObjectEntity();

        sub_23AA0C204();

        v16 = v114;
      }

      else
      {
        (*v41)(v38, v43);
        swift_endAccess();
      }

      v39 += v110;
      --v37;
    }

    while (v37);
  }

  v55 = v106;
  v56 = v106[1];
  v119 = v106[3];

  sub_23A911B78(v57);
  v58 = v55[2];

  sub_23A911B78(v59);
  v60 = *(v119 + 16);
  if (v60)
  {
    v61 = *(v105 + 80);
    v112 = v119;
    v62 = v119 + ((v61 + 32) & ~v61);
    v63 = *(v105 + 72);
    v64 = v107;
    do
    {
      sub_23A8D52B8(v62, v64, type metadata accessor for CapturedRoom.Surface);
      v65 = *(v113 + 44);
      swift_beginAccess();
      v66 = v2[15];
      v67 = sub_23A9EDD28(v64 + v65);
      if (v68)
      {
        v69 = v67;
        v70 = v2[15];
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v2[15];
        v118 = v72;
        v2[15] = 0x8000000000000000;
        if (!v71)
        {
          sub_23A90CFC8();
          v72 = v118;
        }

        (v115[1])(*(v72 + 48) + v115[9] * v69, v116);
        v73 = *(*(v72 + 56) + 8 * v69);
        sub_23A910778(v69, v72);
        v2[15] = v72;
        swift_endAccess();
        type metadata accessor for OpeningEntity();

        sub_23AA0C204();
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      v74 = v2[16];
      v75 = sub_23A9EDD28(v64 + v65);
      if (v76)
      {
        v77 = v75;
        v78 = v2[16];
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v80 = v2[16];
        v118 = v80;
        v2[16] = 0x8000000000000000;
        v16 = v114;
        if (!v79)
        {
          sub_23A90CFDC();
          v80 = v118;
        }

        (v115[1])(*(v80 + 48) + v115[9] * v77, v116);
        v81 = *(*(v80 + 56) + 8 * v77);
        sub_23A910778(v77, v80);
        v2[16] = v80;
        swift_endAccess();
        type metadata accessor for PlaceholderEntity();

        sub_23AA0C204();

        v64 = v107;
        sub_23A8D5320(v107, type metadata accessor for CapturedRoom.Surface);
      }

      else
      {
        swift_endAccess();
        sub_23A8D5320(v64, type metadata accessor for CapturedRoom.Surface);

        v16 = v114;
      }

      v62 += v63;
      --v60;
    }

    while (v60);
  }

  v82 = v106[4];
  v83 = MEMORY[0x277D84F90];
  v118 = MEMORY[0x277D84F90];
  v84 = *(v82 + 16);
  if (v84)
  {
    v85 = *(v113 + 44);
    v86 = v82 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v87 = *(v105 + 72);
    v113 = (v115 + 1);
    do
    {
      sub_23A8D52B8(v86, v16, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v88 = v2[14];
      v89 = sub_23A9EDD28(&v16[v85]);
      if (v90)
      {
        v91 = v89;
        v92 = v2[14];
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v2[14];
        v117 = v94;
        v2[14] = 0x8000000000000000;
        if (!v93)
        {
          sub_23A90CFF0();
          v94 = v117;
        }

        (v115[1])(*(v94 + 48) + v115[9] * v91, v116);
        v95 = *(*(v94 + 56) + 8 * v91);
        sub_23A910778(v91, v94);
        v2[14] = v94;
        swift_endAccess();
        v96 = sub_23A8D5320(v16, type metadata accessor for CapturedRoom.Surface);
        MEMORY[0x23EE8FD70](v96);
        if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v97 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
          v16 = v114;
        }

        sub_23AA0D334();
        v83 = v118;
      }

      else
      {
        swift_endAccess();
        sub_23A8D5320(v16, type metadata accessor for CapturedRoom.Surface);
      }

      v86 += v87;
      --v84;
    }

    while (v84);
  }

  if (v83 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v99 = 0;
    while ((v83 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](v99, v83);
      v101 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        goto LABEL_50;
      }

LABEL_46:
      type metadata accessor for FloorEntity();
      sub_23AA0C204();

      ++v99;
      if (v101 == i)
      {
      }
    }

    if (v99 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v100 = *(v83 + 8 * v99 + 32);

    v101 = v99 + 1;
    if (!__OFADD__(v99, 1))
    {
      goto LABEL_46;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }
}

uint64_t sub_23A8E33CC(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v140[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v161 = &v140[-v11];
  v165 = sub_23AA0C0E4();
  v12 = *(v165 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v165);
  v164 = &v140[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v163 = sub_23AA0CE84();
  v162 = *(v163 - 8);
  v14 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v160 = &v140[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v158 = &v140[-v17];
  v18 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(*(v1 + 96) + 16) || (, sub_23A9EDD28(a1 + v18), v20 = v19, result = , (v20 & 1) == 0))
  {
    v159 = v12;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v22 = qword_27DFC04B0;
    result = swift_beginAccess();
    v23 = *(v22 + 24);
    if (*(v23 + 16))
    {
      v24 = *(v22 + 24);

      v25 = sub_23A9EDD28(a1 + v18);
      if ((v26 & 1) == 0)
      {
      }

      v153 = v18;
      v154 = a1;
      v27 = *(*(v23 + 56) + 8 * v25);

      v28 = swift_allocObject();
      swift_weakInit();

      v155 = v27;
      sub_23A8E467C(v27);
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v157 = v28;

      v35.i64[0] = v30;
      v35.i64[1] = v32;
      if (v34)
      {
        v36 = -1;
      }

      else
      {
        v36 = 0;
      }

      __asm { FMOV            V2.4S, #1.0 }

      v147 = vbslq_s8(vdupq_n_s32(v36), _Q2, v35);
      v42 = *(v3 + 144);
      v142 = v8;
      if (v42)
      {
        v43 = sub_23A943464(*(v3 + 156));
        if (v2)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v44 = v158;
          sub_23AA0CE94();
          v45 = v2;
          v46 = sub_23AA0CE54();
          v47 = sub_23AA0D494();

          v48 = os_log_type_enabled(v46, v47);
          v49 = v153;
          if (v48)
          {
            v50 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            *&v169 = v156;
            *v50 = 136315138;
            swift_getErrorValue();
            LODWORD(v151) = v47;
            v51 = sub_23AA0DC34();
            v53 = sub_23A9A65A4(v51, v52, &v169);

            *(v50 + 4) = v53;
            _os_log_impl(&dword_23A8B4000, v46, v151, "Cannot create Edge Entity: %s", v50, 0xCu);
            v54 = v156;
            __swift_destroy_boxed_opaque_existential_1(v156);
            MEMORY[0x23EE91710](v54, -1, -1);
            MEMORY[0x23EE91710](v50, -1, -1);
          }

          else
          {
          }

          (*(v162 + 8))(v44, v163);
          v150 = 0;
          v158 = 0;
          v55 = v154;
LABEL_23:
          v156 = swift_allocObject();
          swift_weakInit();
          v56 = v159;
          v57 = v159 + 16;
          v151 = *(v159 + 16);
          v151(v164, v55 + v49, v165);
          v58 = *(v56 + 80);
          v152 = v3;
          v59 = (v58 + 16) & ~v58;
          v148 = v13 + 7;
          v60 = (v13 + 7 + v59) & 0xFFFFFFFFFFFFFFF8;
          v61 = (v60 + 31) & 0xFFFFFFFFFFFFFFF0;
          v62 = swift_allocObject();
          v145 = *(v56 + 32);
          v63 = v62 + v59;
          v64 = v164;
          (v145)(v63, v164, v165);
          v65 = (v62 + v60);
          v66 = v157;
          *v65 = sub_23A8E936C;
          v65[1] = v66;
          *(v62 + v61) = v147;
          v149 = v62;
          v67 = (v62 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF0));
          v68 = v156;
          *v67 = sub_23A8E9374;
          v67[1] = v68;
          v69 = swift_allocObject();
          swift_weakInit();
          v70 = v152;
          v146 = v57;
          v151(v64, v154 + v153, v165);
          v71 = (v58 + 24) & ~v58;
          v72 = (v148 + v71) & 0xFFFFFFFFFFFFFFF8;
          v73 = swift_allocObject();
          *(v73 + 16) = v69;
          (v145)(v73 + v71, v64, v165);
          v148 = v73;
          v74 = (v73 + v72);
          v75 = v70;
          v76 = v157;
          *v74 = sub_23A8E936C;
          v74[1] = v76;
          v77 = v155;
          v78 = v161;
          sub_23A8D5194(v155 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v161, &qword_27DFAEB38, &unk_23AA11B60);
          v79 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          LODWORD(v73) = (*(*(v79 - 8) + 48))(v78, 1, v79);
          swift_retain_n();

          sub_23A8D50D0(v78, &qword_27DFAEB38, &unk_23AA11B60);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (v73 == 1)
          {
            v81 = v149;
            if (Strong)
            {
              v82 = *(v75 + 24);
              ObjectType = swift_getObjectType();
              v84 = (*(v82 + 8))(ObjectType, v82);
LABEL_28:
              v141 = v84;
              swift_unknownObjectRelease();
              goto LABEL_30;
            }
          }

          else
          {
            v81 = v149;
            if (Strong)
            {
              v85 = *(v75 + 24);
              v86 = swift_getObjectType();
              v84 = (*(v85 + 16))(v86, v85);
              goto LABEL_28;
            }
          }

          v141 = 10;
LABEL_30:
          v87 = *(v75 + 88);
          v88 = type metadata accessor for WallEntity();
          v89 = *(v88 + 48);
          v90 = *(v88 + 52);
          v91 = swift_allocObject();
          *(v91 + qword_27DFB0588) = 1065353216;
          *(v91 + qword_27DFB0590) = 1065353216;
          v92 = v150;

          v93 = v148;

          sub_23AA0C044();
          *(v91 + qword_27DFAEEF8) = 0;
          v144 = qword_27DFAEF00;
          *(v91 + qword_27DFAEF00) = MEMORY[0x277D84F90];
          v145 = qword_27DFAEF08;
          *(v91 + qword_27DFAEF08) = 0;
          v143 = qword_27DFC0620;
          v161 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
          v94 = v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
          v95 = v165;
          v96 = v151;
          v151((v91 + qword_27DFC0620), v94, v165);
          *(v91 + qword_27DFC0630) = v87;
          swift_beginAccess();
          sub_23A8CA9D8(v75 + 32, &v166);
          v97 = v167;
          v98 = v168;
          __swift_project_boxed_opaque_existential_1(&v166, v167);
          v99 = v158;
          sub_23A8FB3D8(v97, v98, v147);
          v158 = v99;
          if (v99)
          {
            __swift_destroy_boxed_opaque_existential_1(&v166);
            sub_23A8D4E5C();
            if (qword_27DFAE3A0 != -1)
            {
              swift_once();
            }

            sub_23AA0D644();
            v100 = v160;
            sub_23AA0CE94();
            v101 = v158;
            v102 = v158;
            v103 = sub_23AA0CE54();
            v104 = sub_23AA0D494();

            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              v106 = v101;
              v107 = swift_slowAlloc();
              *&v169 = v107;
              *v105 = 136315138;
              swift_getErrorValue();
              v108 = sub_23AA0DC34();
              v110 = sub_23A9A65A4(v108, v109, &v169);

              *(v105 + 4) = v110;
              _os_log_impl(&dword_23A8B4000, v103, v104, "Cannot create ScanEntity: %s", v105, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v107);
              MEMORY[0x23EE91710](v107, -1, -1);
              MEMORY[0x23EE91710](v105, -1, -1);

              (*(v162 + 8))(v160, v163);
            }

            else
            {

              (*(v162 + 8))(v100, v163);
            }

            (*(v159 + 8))(v91 + v143, v165);
            v132 = *(v91 + v144);

            v133 = *&v145[v91];

            type metadata accessor for ScanEntity();
            v134 = *(*v91 + 48);
            v135 = *(*v91 + 52);
            swift_deallocPartialClassInstance();
          }

          else
          {
            if (v141 == 10)
            {
              v111 = 0;
            }

            else
            {
              v111 = v141;
            }

            __swift_destroy_boxed_opaque_existential_1(&v166);
            sub_23A8CAA3C(&v169, v91 + qword_27DFC0628);
            v112 = (v91 + qword_27DFAEEE8);
            *v112 = sub_23A8E96BC;
            v112[1] = v81;
            v113 = (v91 + qword_27DFAEEF0);
            *v113 = sub_23A8E96EC;
            v113[1] = v93;
            *(v91 + qword_27DFAEEE0) = v111;
            *(v91 + qword_27DFC0640) = v92;
            v114 = v91 + qword_27DFC0638;
            *v114 = 0;
            *(v114 + 4) = 1;

            v115 = sub_23AA0C1A4();
            v116 = v164;
            v96(v164, &v161[v155], v95);
            v162 = sub_23A8D5380();
            sub_23AA0DBB4();
            v117 = *(v159 + 8);
            v117(v116, v95);
            v163 = v115;
            sub_23AA0CA74();
            if (v92)
            {
              v96(v116, &v161[v155], v95);

              v118 = sub_23AA0DBB4();
              v120 = v119;
              v117(v116, v95);
              *&v169 = v118;
              *(&v169 + 1) = v120;
              MEMORY[0x23EE8FCA0](0x746E45656764655FLL, 0xEB00000000797469);
              sub_23AA0CA74();
              type metadata accessor for ScanEntity();
              sub_23AA0C214();
            }

            v162 = v117;
            v121 = v161;
            v122 = sub_23AA0C664();
            (*(*(v122 - 8) + 56))(v142, 1, 1, v122);
            type metadata accessor for ScanEntity();
            v123 = v163;
            sub_23AA0C604();
            v124 = v155;
            v125 = *(v155 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
            v126 = *(v155 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
            v127 = *(v155 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
            v128 = *(v155 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
            sub_23AA0CB14();
            sub_23AA0C2B4();
            if (qword_27DFAE458 != -1)
            {
              swift_once();
            }

            v129 = v164;
            if (qword_27DFC0700)
            {
              v130 = &v121[v124];
              v131 = v165;
              v151(v164, v130, v165);
              sub_23A94F3AC(v123, v129);

              (v162)(v129, v131);
            }

            else
            {
            }

            v136 = v152;
            swift_beginAccess();

            v137 = *(v136 + 96);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v166 = *(v136 + 96);
            *(v136 + 96) = 0x8000000000000000;
            sub_23A9D9BE0(v123, v154 + v153, isUniquelyReferenced_nonNull_native);
            *(v136 + 96) = v166;
            swift_endAccess();
            v139 = *(v136 + 80);
            type metadata accessor for ScanContainer();
            sub_23AA0C214();
          }
        }

        v150 = v43;
        v158 = 0;
      }

      else
      {
        v158 = v2;
        v150 = 0;
      }

      v55 = v154;
      v49 = v153;
      goto LABEL_23;
    }
  }

  return result;
}

double sub_23A8E467C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      v7 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return *&v7;
    }
  }

  else if (*(Strong + 136))
  {

    return sub_23A963554();
  }

  swift_beginAccess();
  sub_23A8CA9D8(v3 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v6 + 32))(v5, v6);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t sub_23A8E47AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v6 + 32, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 112))(a1, v7, v8, a3);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23A8E48A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(*(v1 + 120) + 16) || (, sub_23A9EDD28(a1 + v8), v10 = v9, result = , (v10 & 1) == 0))
  {
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v12 = qword_27DFC04B0;
    result = swift_beginAccess();
    if (*(*(v12 + 24) + 16))
    {
      v13 = *(v12 + 24);

      sub_23A9EDD28(a1 + v8);
      v15 = v14;

      if (v15)
      {
        v16 = *(v12 + 24);
        if (*(v16 + 16))
        {
          v17 = *(v12 + 24);

          v18 = sub_23A9EDD28(a1 + v8);
          if (v19)
          {
            v20 = *(*(v16 + 56) + 8 * v18);

            v21 = *(v2 + 88);
            v22 = type metadata accessor for PlaceholderEntity();
            v23 = *(v22 + 48);
            v24 = *(v22 + 52);
            swift_allocObject();

            v26 = sub_23A9F874C(v25, v21);

            if (v26)
            {
              (*(v30 + 16))(v7, a1 + v8, v4);
              swift_beginAccess();

              sub_23A9EA864(v27, v7);
              swift_endAccess();
              v28 = *(v2 + 80);
              type metadata accessor for ScanContainer();
              sub_23AA0C214();
            }
          }

          else
          {
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23A8E4B44(uint64_t a1)
{
  v3 = v1;
  v135 = sub_23AA0CE84();
  v134 = *(v135 - 8);
  v5 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v119 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v137 = &v119 - v13;
  v14 = sub_23AA0C0E4();
  v138 = *(v14 - 8);
  v15 = *(v138 + 64);
  MEMORY[0x28223BE20](v14);
  v140 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(*(v1 + 120) + 16) || (, sub_23A9EDD28(a1 + v16), v18 = v17, result = , (v18 & 1) == 0))
  {
    v139 = v16;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v20 = qword_27DFC04B0;
    result = swift_beginAccess();
    v21 = *(v20 + 24);
    v22 = v139;
    if (*(v21 + 16))
    {

      v23 = sub_23A9EDD28(a1 + v22);
      if ((v24 & 1) == 0)
      {
      }

      v120 = v10;
      v123 = v2;
      v136 = *(*(v21 + 56) + 8 * v23);
      v25 = v136;

      v130 = swift_allocObject();
      swift_weakInit();

      sub_23A8E5A4C(v25);
      v26 = v22;
      v28 = v27;
      v131 = v3;
      v30 = v29;
      v31 = a1;
      v125 = a1;
      v33 = v32;

      v34.i64[0] = v28;
      v34.i64[1] = v30;
      if (v33)
      {
        v35 = -1;
      }

      else
      {
        v35 = 0;
      }

      __asm { FMOV            V2.4S, #1.0 }

      v127 = vbslq_s8(vdupq_n_s32(v35), _Q2, v34);
      v129 = swift_allocObject();
      swift_weakInit();
      v41 = v138;
      v42 = v138 + 16;
      v128 = *(v138 + 16);
      v128(v140, v31 + v26, v14);
      v43 = *(v41 + 80);
      v44 = (v43 + 16) & ~v43;
      v122 = v15 + 7;
      v45 = (v15 + 7 + v44) & 0xFFFFFFFFFFFFFFF8;
      v132 = v14;
      v46 = (v45 + 31) & 0xFFFFFFFFFFFFFFF0;
      v47 = swift_allocObject();
      v48 = *(v41 + 32);
      v48(v47 + v44, v140, v132);
      v49 = (v47 + v45);
      v50 = v130;
      *v49 = sub_23A8E9348;
      v49[1] = v50;
      *(v47 + v46) = v127;
      v126 = v47;
      v51 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF0));
      v52 = v129;
      *v51 = sub_23A8E9350;
      v51[1] = v52;
      v53 = swift_allocObject();
      swift_weakInit();
      v54 = v140;
      v124 = v42;
      v128(v140, v125 + v139, v132);
      v55 = (v43 + 24) & ~v43;
      v56 = (v122 + v55) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      *(v57 + 16) = v53;
      v58 = v57 + v55;
      v59 = v132;
      v48(v58, v54, v132);
      v60 = (v57 + v56);
      v61 = v57;
      v62 = v130;
      *v60 = sub_23A8E9348;
      v60[1] = v62;
      v63 = v137;
      sub_23A8D5194(v136 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v137, &qword_27DFAEB38, &unk_23AA11B60);
      v64 = type metadata accessor for CapturedRoom.Surface.Curve(0);
      LODWORD(v57) = (*(*(v64 - 8) + 48))(v63, 1, v64);
      swift_retain_n();

      sub_23A8D50D0(v63, &qword_27DFAEB38, &unk_23AA11B60);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (v57 == 1)
      {
        v66 = v123;
        v67 = v126;
        if (Strong)
        {
          v68 = v131;
          v69 = *(v131 + 24);
          ObjectType = swift_getObjectType();
          v71 = (*(v69 + 24))(ObjectType, v69);
LABEL_16:
          v74 = v71;
          swift_unknownObjectRelease();
          goto LABEL_18;
        }
      }

      else
      {
        v66 = v123;
        v67 = v126;
        if (Strong)
        {
          v68 = v131;
          v72 = *(v131 + 24);
          v73 = swift_getObjectType();
          v71 = (*(v72 + 32))(v73, v72);
          goto LABEL_16;
        }
      }

      v74 = 10;
      v68 = v131;
LABEL_18:
      v75 = *(v68 + 88);
      v76 = type metadata accessor for OpeningEntity();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      v79 = swift_allocObject();
      *(v79 + qword_27DFB0588) = 1065353216;
      *(v79 + qword_27DFB0590) = 1065353216;
      v80 = v136;

      sub_23AA0C044();
      *(v79 + qword_27DFAEEF8) = 0;
      v123 = qword_27DFAEF00;
      *(v79 + qword_27DFAEF00) = MEMORY[0x277D84F90];
      v137 = qword_27DFAEF08;
      *(v79 + qword_27DFAEF08) = 0;
      v121 = qword_27DFC0620;
      v119 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
      v81 = v59;
      v82 = v128;
      v128((v79 + qword_27DFC0620), v80 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v81);
      *(v79 + qword_27DFC0630) = v75;
      swift_beginAccess();
      sub_23A8CA9D8(v68 + 32, v141);
      v83 = v142;
      v84 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      sub_23A8FB468(v83, v84, v127);
      v122 = v61;
      if (v66)
      {
        __swift_destroy_boxed_opaque_existential_1(v141);
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v85 = v133;
        sub_23AA0CE94();
        v86 = v66;
        v87 = sub_23AA0CE54();
        v88 = sub_23AA0D494();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v144 = v90;
          *v89 = 136315138;
          swift_getErrorValue();
          v91 = sub_23AA0DC34();
          v93 = v85;
          v94 = sub_23A9A65A4(v91, v92, &v144);

          *(v89 + 4) = v94;
          _os_log_impl(&dword_23A8B4000, v87, v88, "Cannot create ScanEntity: %s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v90);
          MEMORY[0x23EE91710](v90, -1, -1);
          MEMORY[0x23EE91710](v89, -1, -1);

          (*(v134 + 8))(v93, v135);
        }

        else
        {

          (*(v134 + 8))(v85, v135);
        }

        (*(v138 + 8))(v79 + v121, v132);
        v111 = *(v79 + v123);

        v112 = *&v137[v79];

        type metadata accessor for ScanEntity();
        v113 = *(*v79 + 48);
        v114 = *(*v79 + 52);
        swift_deallocPartialClassInstance();
      }

      else
      {
        if (v74 == 10)
        {
          v74 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v141);
        sub_23A8CAA3C(&v144, v79 + qword_27DFC0628);
        v95 = (v79 + qword_27DFAEEE8);
        *v95 = sub_23A8E96BC;
        v95[1] = v67;
        v96 = (v79 + qword_27DFAEEF0);
        *v96 = sub_23A8E96EC;
        v96[1] = v61;
        *(v79 + qword_27DFAEEE0) = v74;
        *(v79 + qword_27DFC0640) = 0;
        v97 = v79 + qword_27DFC0638;
        *v97 = 0;
        *(v97 + 4) = 1;

        v98 = sub_23AA0C1A4();
        v99 = v136;
        v100 = v119;
        v101 = v140;
        v102 = v132;
        v82(v140, v136 + v119, v132);
        sub_23A8D5380();
        sub_23AA0DBB4();
        v103 = *(v138 + 8);
        v138 += 8;
        v137 = v103;
        (v103)(v101, v102);
        sub_23AA0CA74();
        v104 = sub_23AA0C664();
        (*(*(v104 - 8) + 56))(v120, 1, 1, v104);
        type metadata accessor for ScanEntity();
        sub_23AA0C604();
        v105 = *(v99 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
        v106 = *(v99 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
        v107 = *(v99 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
        v108 = *(v99 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
        sub_23AA0CB14();
        sub_23AA0C2B4();
        if (qword_27DFAE458 != -1)
        {
          swift_once();
        }

        if (qword_27DFC0700)
        {
          v109 = v136 + v100;
          v110 = v140;
          v128(v140, v109, v102);
          sub_23A94F3AC(v98, v110);

          (v137)(v110, v102);
        }

        else
        {
        }

        v115 = v131;
        swift_beginAccess();

        v116 = *(v115 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141[0] = *(v115 + 120);
        *(v115 + 120) = 0x8000000000000000;
        sub_23A9D9E1C(v98, v125 + v139, isUniquelyReferenced_nonNull_native);
        *(v115 + 120) = v141[0];
        swift_endAccess();
        v118 = *(v115 + 80);
        type metadata accessor for ScanContainer();
        sub_23AA0C214();
      }
    }
  }

  return result;
}

double sub_23A8E5A4C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      v7 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return *&v7;
    }
  }

  else if (*(Strong + 136))
  {

    return sub_23A963554();
  }

  swift_beginAccess();
  sub_23A8CA9D8(v3 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v6 + 40))(v5, v6);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t sub_23A8E5B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v6 + 32, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 120))(a1, v7, v8, a3);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23A8E5C74(uint64_t a1)
{
  v3 = v1;
  v5 = sub_23AA0CE84();
  v124 = *(v5 - 8);
  v6 = *(v124 + 64);
  MEMORY[0x28223BE20](v5);
  v123 = (&v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v106 - v10;
  v11 = sub_23AA0C0E4();
  v125 = *(v11 - 8);
  v12 = v125[8];
  MEMORY[0x28223BE20](v11);
  v127 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  swift_beginAccess();
  if (!*(v1[14] + 16) || (, sub_23A9EDD28(a1 + v13), v15 = v14, result = , (v15 & 1) == 0))
  {
    v126 = v13;
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v17 = qword_27DFC04B0;
    result = swift_beginAccess();
    v18 = *(v17 + 24);
    if (*(v18 + 16))
    {

      v19 = sub_23A9EDD28(a1 + v126);
      if ((v20 & 1) == 0)
      {
      }

      v108 = v5;
      v120 = a1;
      v113 = v2;
      v21 = *(*(v18 + 56) + 8 * v19);

      v22 = swift_allocObject();
      swift_weakInit();

      v116 = v21;
      sub_23A8E6B68(v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v117 = v22;

      if (v28)
      {
        swift_beginAccess();
        v29 = *(v3 + 7);
        v30 = *(v3 + 8);
        v31 = __swift_project_boxed_opaque_existential_1(v3 + 4, v29);
        v32 = *(v29 - 8);
        v33 = *(v32 + 64);
        v34 = MEMORY[0x28223BE20](v31);
        v36 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v36, v34);
        v37.n128_f64[0] = (*(v30 + 48))(v29, v30);
        v114 = v37;
        (*(v32 + 8))(v36, v29);
      }

      else
      {
        v38.n128_u64[0] = v24;
        v38.n128_u64[1] = v26;
        v114 = v38;
      }

      v39 = v126;
      v121 = swift_allocObject();
      swift_weakInit();
      v40 = v125;
      v41 = v125 + 2;
      v118 = v125[2];
      v118(v127, v120 + v39, v11);
      v42 = *(v40 + 80);
      v43 = (v42 + 16) & ~v42;
      v112 = v12 + 7;
      v44 = (v12 + 7 + v43) & 0xFFFFFFFFFFFFFFF8;
      v119 = v11;
      v45 = (v44 + 31) & 0xFFFFFFFFFFFFFFF0;
      v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF0;
      v47 = swift_allocObject();
      v111 = v40[4];
      v111(v47 + v43, v127, v119);
      v48 = (v47 + v44);
      v110 = sub_23A8E9324;
      v49 = v3;
      v50 = v117;
      *v48 = sub_23A8E9324;
      v48[1] = v50;
      *(v47 + v45) = v114;
      v51 = v119;
      v115 = v47;
      v52 = (v47 + v46);
      v53 = v121;
      *v52 = sub_23A8E932C;
      v52[1] = v53;
      v54 = swift_allocObject();
      swift_weakInit();
      v55 = v127;
      v109 = v41;
      v118(v127, v120 + v126, v51);
      v56 = (v42 + 24) & ~v42;
      v57 = (v112 + v56) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      *(v58 + 16) = v54;
      v59 = v58 + v56;
      v60 = v58;
      v111(v59, v55, v51);
      v61 = (v60 + v57);
      v62 = v49;
      *v61 = v110;
      v61[1] = v50;
      LODWORD(v42) = *(v49 + 88);
      v63 = type metadata accessor for FloorEntity();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      v66 = swift_allocObject();
      v67 = v66;
      if (v42 == 1)
      {
        *(v66 + qword_27DFAEEF8) = 0;
        v107 = qword_27DFAEF00;
        *(v66 + qword_27DFAEF00) = MEMORY[0x277D84F90];
        v110 = qword_27DFAEF08;
        *(v66 + qword_27DFAEF08) = 0;
        v68 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
        v106 = qword_27DFC0620;
        v69 = v116;
        v118((v66 + qword_27DFC0620), v116 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v51);
        *(v67 + qword_27DFC0630) = 1;
        swift_beginAccess();
        sub_23A8CA9D8(v62 + 32, v128);
        v70 = v129;
        v71 = v130;
        __swift_project_boxed_opaque_existential_1(v128, v129);
        swift_retain_n();

        v111 = v62;

        v72 = v115;

        v73 = v113;
        sub_23A8FB4F8(v70, v71, v114);
        v112 = v60;
        if (!v73)
        {
          __swift_destroy_boxed_opaque_existential_1(v128);
          sub_23A8CAA3C(&v131, v67 + qword_27DFC0628);
          v86 = (v67 + qword_27DFAEEE8);
          *v86 = sub_23A8E96BC;
          v86[1] = v72;
          v87 = (v67 + qword_27DFAEEF0);
          *v87 = sub_23A8E96EC;
          v87[1] = v60;
          *(v67 + qword_27DFAEEE0) = 8;
          *(v67 + qword_27DFC0640) = 0;
          v88 = v67 + qword_27DFC0638;
          *v88 = 1042536202;
          *(v88 + 4) = 0;

          v89 = sub_23AA0C1A4();
          v124 = v68;
          v90 = v127;
          v118(v127, v69 + v68, v51);
          sub_23A8D5380();
          sub_23AA0DBB4();
          v91 = v125[1];
          ++v125;
          v123 = v91;
          v91(v90, v51);
          sub_23AA0CA74();
          v92 = sub_23AA0C664();
          (*(*(v92 - 8) + 56))(v122, 1, 1, v92);
          type metadata accessor for ScanEntity();
          sub_23AA0C604();
          v93 = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
          v94 = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
          v95 = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
          v96 = *(v69 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
          sub_23AA0CB14();
          sub_23AA0C2B4();
          if (qword_27DFAE458 != -1)
          {
            swift_once();
          }

          v97 = v111;
          if (qword_27DFC0700)
          {
            v98 = v127;
            v118(v127, v69 + v124, v51);
            sub_23A94F3AC(v89, v98);

            v123(v98, v51);
          }

          else
          {
          }

          swift_beginAccess();

          v103 = *(v97 + 14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = *(v97 + 14);
          sub_23A9DA814(v89, v120 + v126, isUniquelyReferenced_nonNull_native);
          *(v97 + 14) = v128[0];
          swift_endAccess();
          v105 = *(v97 + 10);
          type metadata accessor for ScanContainer();
          sub_23AA0C214();
        }

        __swift_destroy_boxed_opaque_existential_1(v128);
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v74 = v123;
        sub_23AA0CE94();
        v75 = v73;
        v76 = sub_23AA0CE54();
        v77 = sub_23AA0D494();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *&v131 = v79;
          *v78 = 136315138;
          swift_getErrorValue();
          v80 = sub_23AA0DC34();
          v82 = sub_23A9A65A4(v80, v81, &v131);

          *(v78 + 4) = v82;
          _os_log_impl(&dword_23A8B4000, v76, v77, "Cannot create ScanEntity: %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          MEMORY[0x23EE91710](v79, -1, -1);
          v83 = v78;
          v51 = v119;
          MEMORY[0x23EE91710](v83, -1, -1);
        }

        else
        {
        }

        (*(v124 + 8))(v74, v108);
        (v125[1])(v67 + v106, v51);
        v99 = *(v67 + v107);

        v100 = *(v110 + v67);

        type metadata accessor for ScanEntity();
        v101 = *(*v67 + 48);
        v102 = *(*v67 + 52);
        swift_deallocPartialClassInstance();
      }

      else
      {
        v84 = *(*v66 + 48);
        v85 = *(*v66 + 52);
        swift_retain_n();

        swift_deallocPartialClassInstance();
      }
    }
  }

  return result;
}

double sub_23A8E6B68(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      v7 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return *&v7;
    }
  }

  else if (*(Strong + 136))
  {

    return sub_23A963554();
  }

  swift_beginAccess();
  sub_23A8CA9D8(v3 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v6 + 48))(v5, v6);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t sub_23A8E6C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v6 + 32, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 128))(a1, v7, v8, a3);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23A8E6D90(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v122 - v7;
  v144 = sub_23AA0CE84();
  v143 = *(v144 - 1);
  v8 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v145 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0C0E4();
  v147 = *(v10 - 8);
  v11 = *(v147 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = *(type metadata accessor for CapturedRoom.Object(0) + 32);
  swift_beginAccess();
  if (!*(*(v1 + 13) + 16) || (, sub_23A9EDD28(a1 + v12), v14 = v13, result = , (v14 & 1) == 0))
  {
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v16 = qword_27DFC04B0;
    result = swift_beginAccess();
    v17 = *(v16 + 24);
    if (*(v17 + 16))
    {

      v18 = sub_23A9EDD28(a1 + v12);
      if (v19)
      {
        v146 = (&v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        v138 = v2;
        v136 = a1;
        v20 = v3;
        v21 = *(*(v17 + 56) + 8 * v18);

        v22 = swift_allocObject();
        swift_weakInit();

        sub_23A8E7E1C(v21);
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v135 = v22;

        v140 = v21;
        if (v28)
        {
          swift_beginAccess();
          v29 = *(v20 + 7);
          v30 = *(v20 + 8);
          v31 = __swift_project_boxed_opaque_existential_1(v20 + 4, v29);
          v32 = v10;
          v33 = *(v29 - 8);
          v34 = *(v33 + 64);
          v35 = MEMORY[0x28223BE20](v31);
          v37 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v33 + 16))(v37, v35);
          v38.n128_f64[0] = (*(v30 + 56))(v29, v30);
          v132 = v38;
          (*(v33 + 8))(v37, v29);
          v10 = v32;
        }

        else
        {
          v39.n128_u64[0] = v24;
          v39.n128_u64[1] = v26;
          v132 = v39;
        }

        v40 = v146;
        v137 = v20;
        v141 = swift_allocObject();
        swift_weakInit();
        v41 = v147;
        v42 = v147 + 16;
        v139 = *(v147 + 16);
        v139(v40, v136 + v12, v10);
        v43 = *(v41 + 80);
        v44 = (v43 + 16) & ~v43;
        v133 = (v11 + 7);
        v45 = (v11 + 7 + v44) & 0xFFFFFFFFFFFFFFF8;
        v46 = (v45 + 31) & 0xFFFFFFFFFFFFFFF0;
        v47 = swift_allocObject();
        v129 = v12;
        v48 = v47;
        v128 = *(v41 + 32);
        v128(v47 + v44, v146, v10);
        v49 = (v48 + v45);
        v127 = sub_23A8E92DC;
        v50 = v135;
        *v49 = sub_23A8E92DC;
        v49[1] = v50;
        *(v48 + v46) = v132;
        v134 = v48;
        v51 = (v48 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF0));
        v52 = v141;
        *v51 = sub_23A8E92E4;
        v51[1] = v52;
        v53 = swift_allocObject();
        swift_weakInit();
        v130 = v42;
        v139(v146, v136 + v129, v10);
        v54 = (v43 + 24) & ~v43;
        v55 = (v133 + v54) & 0xFFFFFFFFFFFFFFF8;
        v56 = swift_allocObject();
        v133 = v56;
        *(v56 + 16) = v53;
        v131 = v10;
        v128(v56 + v54, v146, v10);
        v57 = (v56 + v55);
        v58 = v137;
        *v57 = v127;
        v57[1] = v50;
        if (*(v58 + 18))
        {
          v59 = v58[39];
          swift_retain_n();

          v60 = v138;
          v61 = sub_23A943464(v59);
          v62 = v60;
          if (v60)
          {

            v63 = 0;
            v62 = 0;
          }

          else
          {
            v63 = v61;
          }
        }

        else
        {
          swift_retain_n();

          v63 = 0;
          v62 = v138;
        }

        v64 = v140;
        v65 = v131;
        v66 = *(v58 + 88);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v67 = *(v58 + 3);
          ObjectType = swift_getObjectType();
          v124 = (*(v67 + 40))(ObjectType, v67);
          swift_unknownObjectRelease();
        }

        else
        {
          v124 = 0;
        }

        v69 = type metadata accessor for ObjectEntity();
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        v72 = swift_allocObject();
        *(v72 + qword_27DFAEEF8) = 0;
        v126 = qword_27DFAEF00;
        *(v72 + qword_27DFAEF00) = MEMORY[0x277D84F90];
        v127 = qword_27DFAEF08;
        *(v72 + qword_27DFAEF08) = 0;
        v125 = qword_27DFC0620;
        v123 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
        v139((v72 + qword_27DFC0620), v64 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v65);
        *(v72 + qword_27DFC0630) = v66;
        swift_beginAccess();
        sub_23A8CA9D8((v58 + 8), &v148);
        v73 = v149;
        v74 = v150;
        __swift_project_boxed_opaque_existential_1(&v148, v149);

        v75 = v133;

        v76 = v134;

        sub_23A8FB588(v73, v74, v132);
        v77 = v62;
        v128 = v63;
        if (v62)
        {
          v78 = v65;
          __swift_destroy_boxed_opaque_existential_1(&v148);
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v79 = v145;
          sub_23AA0CE94();
          v80 = v77;
          v81 = sub_23AA0CE54();
          v82 = sub_23AA0D494();

          v146 = v81;
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v138 = v77;
            v84 = v83;
            v85 = swift_slowAlloc();
            *&v151 = v85;
            *v84 = 136315138;
            swift_getErrorValue();
            v86 = sub_23AA0DC34();
            v88 = sub_23A9A65A4(v86, v87, &v151);

            *(v84 + 4) = v88;
            v89 = v146;
            _os_log_impl(&dword_23A8B4000, v146, v82, "Cannot create ScanEntity: %s", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v85);
            v90 = v85;
            v78 = v131;
            MEMORY[0x23EE91710](v90, -1, -1);
            MEMORY[0x23EE91710](v84, -1, -1);

            (*(v143 + 8))(v145, v144);
          }

          else
          {

            (*(v143 + 8))(v79, v144);
          }

          (*(v147 + 8))(v72 + v125, v78);
          v114 = *(v72 + v126);

          v115 = *(v127 + v72);

          type metadata accessor for ScanEntity();
          v116 = *(*v72 + 48);
          v117 = *(*v72 + 52);
          swift_deallocPartialClassInstance();
        }

        else
        {
          v138 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v148);
          sub_23A8CAA3C(&v151, v72 + qword_27DFC0628);
          v91 = (v72 + qword_27DFAEEE8);
          *v91 = sub_23A8E9304;
          v91[1] = v76;
          v92 = (v72 + qword_27DFAEEF0);
          *v92 = sub_23A8E9320;
          v92[1] = v75;
          *(v72 + qword_27DFAEEE0) = v124;
          *(v72 + qword_27DFC0640) = v63;
          v93 = v72 + qword_27DFC0638;
          *v93 = 0;
          *(v93 + 4) = 1;

          v145 = sub_23AA0C1A4();
          v94 = v123;
          v95 = v146;
          v96 = v65;
          v97 = v65;
          v98 = v139;
          v139(v146, v140 + v123, v97);
          v144 = sub_23A8D5380();
          sub_23AA0DBB4();
          v99 = v147 + 8;
          v100 = *(v147 + 8);
          v100(v95, v96);
          sub_23AA0CA74();
          if (v128)
          {
            v98(v95, v140 + v94, v96);

            v101 = sub_23AA0DBB4();
            v103 = v102;
            v100(v95, v96);
            *&v151 = v101;
            *(&v151 + 1) = v103;
            MEMORY[0x23EE8FCA0](0x746E45656764655FLL, 0xEB00000000797469);
            sub_23AA0CA74();
            type metadata accessor for ScanEntity();
            sub_23AA0C214();
          }

          v144 = v100;
          v147 = v99;
          v104 = sub_23AA0C664();
          (*(*(v104 - 8) + 56))(v142, 1, 1, v104);
          type metadata accessor for ScanEntity();
          v105 = v145;
          sub_23AA0C604();
          v106 = v140;
          v107 = *(v140 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
          v108 = *(v140 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
          v109 = *(v140 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
          v110 = *(v140 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
          sub_23AA0CB14();
          sub_23AA0C2B4();
          if (qword_27DFAE458 != -1)
          {
            swift_once();
          }

          v111 = v131;
          if (qword_27DFC0700)
          {
            v112 = v106 + v94;
            v113 = v146;
            v139(v146, v112, v131);
            sub_23A94F3AC(v105, v113);

            v144(v113, v111);
          }

          else
          {
          }

          v118 = v137;
          swift_beginAccess();

          v119 = *(v118 + 13);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v148 = *(v118 + 13);
          *(v118 + 13) = 0x8000000000000000;
          sub_23A9D9C0C(v105, v136 + v129, isUniquelyReferenced_nonNull_native);
          *(v118 + 13) = v148;
          swift_endAccess();
          v121 = *(v118 + 10);
          type metadata accessor for ScanContainer();
          sub_23AA0C214();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

double sub_23A8E7E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v7 = Strong;
  if (!Strong)
  {
    return 0.0;
  }

  if (*(Strong + 136) > 1u)
  {
    if (*(Strong + 136) == 2)
    {
      *v17 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color);

      return v17[0];
    }

    goto LABEL_13;
  }

  if (!*(Strong + 136))
  {
LABEL_13:
    swift_beginAccess();
    sub_23A8CA9D8(v7 + 32, v18);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    *&v16 = (*(v15 + 56))(v14, v15);
    *v17 = v16;

    __swift_destroy_boxed_opaque_existential_1(v18);
    return v17[0];
  }

  sub_23A8D5194(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, v5, &unk_27DFB0970, &qword_23AA14E00);
  v8 = sub_23AA0C0E4();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8);
  sub_23A8D50D0(v5, &unk_27DFB0970, &qword_23AA14E00);
  if (v9 != 1 || ((v10 = sub_23A8D8288(), v10 >> 62) ? (v11 = sub_23AA0D7F4()) : (v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v11 >= 1))
  {
    *&v12 = sub_23A963554();
    *v17 = v12;

    return v17[0];
  }

  return sub_23A963554();
}

uint64_t sub_23A8E808C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_23A8CA9D8(v6 + 32, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 136))(a1, v7, v8, a3);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23A8E8184(float32x4_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  if (*(Strong + 136) - 1 > 1)
  {
    goto LABEL_10;
  }

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v7 = qword_27DFC04B0;
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (!*(v8 + 16))
  {
LABEL_10:

LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  v9 = sub_23A9EDD28(a3);
  if ((v10 & 1) == 0)
  {

    goto LABEL_10;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  v12 = a4(v11);
  v14 = v13;
  v16 = v15;

  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v19.i64[0] = v12;
    v19.i64[1] = v14;
    v20 = vceqq_f32(v19, a1);
    v21 = vmovn_s32(v20);
    v17 = 1;
    if (v21.i8[0] & 1) != 0 && (v21.i8[2] & 1) != 0 && (v21.i8[4])
    {
      v17 = vmovn_s32(vmvnq_s8(*&v20)).i8[6];
    }
  }

  return v17 & 1;
}

uint64_t sub_23A8E8318@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t, __n128)@<X4>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  if (!result)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  v9 = result;
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v10 = qword_27DFC04B0;
  swift_beginAccess();
  v11 = *(v10 + 24);
  if (*(v11 + 16))
  {
    v12 = *(v10 + 24);

    v13 = sub_23A9EDD28(a2);
    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v13);

      v16 = a3(v15);
      v18 = v17;
      v20 = v19;

      v21 = a6;
      if ((v20 & 1) == 0)
      {
        v21.n128_u64[0] = v16;
        v21.n128_u64[1] = v18;
      }

      return a4(v9, v21);
    }
  }

  v21 = a6;
  return a4(v9, v21);
}

uint64_t sub_23A8E8478()
{
  v1 = sub_23AA0CA54();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v91[1] = v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC58, &qword_23AA11F00);
  v93 = *(v94 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = v91 - v5;
  v106 = sub_23AA0C0E4();
  v104 = *(v106 - 8);
  v6 = *(v104 + 64);
  MEMORY[0x28223BE20](v106);
  v102 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC60, &qword_23AA11F08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v91 - v13;
  swift_beginAccess();
  v95 = v0;
  v15 = v0[12];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = v0[12];

  v22 = 0;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_9:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = *(*(v15 + 56) + ((v23 << 9) | (8 * v24)));
      type metadata accessor for WallEntity();

      sub_23AA0C204();

      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v23 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v23);
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  v26 = v95;
  swift_beginAccess();
  v27 = v26[15];
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;

  for (i = 0; v30; result = )
  {
    v33 = i;
LABEL_19:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v35 = *(*(v27 + 56) + ((v33 << 9) | (8 * v34)));
    type metadata accessor for OpeningEntity();

    sub_23AA0C204();
  }

  while (1)
  {
    v33 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      v36 = v95;
      swift_beginAccess();
      v37 = v36[14];
      v38 = *(v37 + 64);
      v97 = v37 + 64;
      v39 = 1 << *(v37 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v41 = v40 & v38;
      v96 = (v39 + 63) >> 6;
      v99 = v104 + 16;
      v98 = v104 + 32;
      v105 = (v104 + 8);
      v103 = v37;

      v42 = 0;
      v43 = &qword_27DFAEC68;
      v101 = v11;
      v100 = v14;
      if (!v41)
      {
LABEL_25:
        if (v96 <= v42 + 1)
        {
          v45 = v42 + 1;
        }

        else
        {
          v45 = v96;
        }

        v46 = v45 - 1;
        while (1)
        {
          v44 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v44 >= v96)
          {
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, &qword_23AA11F10);
            (*(*(v60 - 8) + 56))(v11, 1, 1, v60);
            v41 = 0;
            goto LABEL_33;
          }

          v41 = *(v97 + 8 * v44);
          ++v42;
          if (v41)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

      while (1)
      {
        v44 = v42;
LABEL_32:
        v47 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v48 = v47 | (v44 << 6);
        v49 = v103;
        v50 = v104;
        v51 = v102;
        v52 = v106;
        (*(v104 + 16))(v102, *(v103 + 48) + *(v104 + 72) * v48, v106);
        v53 = *(*(v49 + 56) + 8 * v48);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, &qword_23AA11F10);
        v55 = v43;
        v56 = *(v54 + 48);
        v57 = *(v50 + 32);
        v11 = v101;
        v57(v101, v51, v52);
        *&v11[v56] = v53;
        v43 = v55;
        (*(*(v54 - 8) + 56))(v11, 0, 1, v54);

        v46 = v44;
        v14 = v100;
LABEL_33:
        sub_23A8E9234(v11, v14);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v43, &qword_23AA11F10);
        if ((*(*(v58 - 8) + 48))(v14, 1, v58) == 1)
        {
          break;
        }

        v59 = *&v14[*(v58 + 48)];
        type metadata accessor for FloorEntity();
        sub_23AA0C204();

        result = (*v105)(v14, v106);
        v42 = v46;
        if (!v41)
        {
          goto LABEL_25;
        }
      }

      v61 = v95;
      swift_beginAccess();
      v62 = v61[13];
      v63 = 1 << *(v62 + 32);
      v64 = -1;
      if (v63 < 64)
      {
        v64 = ~(-1 << v63);
      }

      v65 = v64 & *(v62 + 64);
      v66 = (v63 + 63) >> 6;
      v67 = v61[13];

      for (j = 0; v65; result = )
      {
        v69 = j;
LABEL_45:
        v70 = __clz(__rbit64(v65));
        v65 &= v65 - 1;
        v71 = *(*(v62 + 56) + ((v69 << 9) | (8 * v70)));
        type metadata accessor for ObjectEntity();

        sub_23AA0C204();
      }

      while (1)
      {
        v69 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_64;
        }

        if (v69 >= v66)
        {

          swift_beginAccess();
          v72 = v61[16];
          v73 = 1 << *(v72 + 32);
          v74 = -1;
          if (v73 < 64)
          {
            v74 = ~(-1 << v73);
          }

          v75 = v74 & *(v72 + 64);
          v76 = (v73 + 63) >> 6;
          v77 = v61[16];

          for (k = 0; v75; result = )
          {
            v79 = k;
LABEL_55:
            v80 = __clz(__rbit64(v75));
            v75 &= v75 - 1;
            v81 = *(*(v72 + 56) + ((v79 << 9) | (8 * v80)));
            type metadata accessor for PlaceholderEntity();

            sub_23AA0C204();
          }

          while (1)
          {
            v79 = k + 1;
            if (__OFADD__(k, 1))
            {
              goto LABEL_65;
            }

            if (v79 >= v76)
            {

              v82 = v61[10];
              type metadata accessor for ScanContainer();
              sub_23AA0C224();
              v83 = v92;
              sub_23AA0CA34();
              v84 = v94;
              sub_23AA0CA44();
              if (v107)
              {
                sub_23AA0CAB4();
                do
                {
                  sub_23AA0C204();

                  sub_23AA0CA44();
                }

                while (v107);
              }

              (*(v93 + 8))(v83, v84);
              v85 = v61[12];
              v86 = MEMORY[0x277D84F98];
              v61[12] = MEMORY[0x277D84F98];

              v87 = v61[15];
              v61[15] = v86;

              v88 = v61[14];
              v61[14] = v86;

              v89 = v61[13];
              v61[13] = v86;

              v90 = v61[16];
              v61[16] = v86;
            }

            v75 = *(v72 + 64 + 8 * v79);
            ++k;
            if (v75)
            {
              k = v79;
              goto LABEL_55;
            }
          }
        }

        v65 = *(v62 + 64 + 8 * v69);
        ++j;
        if (v65)
        {
          j = v69;
          goto LABEL_45;
        }
      }
    }

    v30 = *(v27 + 64 + 8 * v33);
    ++i;
    if (v30)
    {
      i = v33;
      goto LABEL_19;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t *sub_23A8E8E20()
{
  sub_23A8E9694((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  v6 = v0[15];

  v7 = v0[16];

  v8 = v0[18];

  return v0;
}

uint64_t sub_23A8E8E88()
{
  sub_23A8E8E20();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ScanEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A8E9054()
{
  result = qword_27DFAEC48;
  if (!qword_27DFAEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC48);
  }

  return result;
}

unint64_t sub_23A8E90A8()
{
  result = qword_27DFAEC50;
  if (!qword_27DFAEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC50);
  }

  return result;
}

uint64_t sub_23A8E90FC(uint64_t a1, uint64_t a2, char a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[3] = a6;
  v19[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  type metadata accessor for EntityManager();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 72) = 0;
  v14 = type metadata accessor for ScanContainer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v13 + 80) = sub_23AA0C1A4();
  v17 = MEMORY[0x277D84F98];
  *(v13 + 96) = MEMORY[0x277D84F98];
  *(v13 + 104) = v17;
  *(v13 + 112) = sub_23A9DC410(MEMORY[0x277D84F90]);
  *(v13 + 120) = v17;
  *(v13 + 128) = v17;
  *(v13 + 136) = 0;
  *(v13 + 152) = 0x40A000003FC00000;
  sub_23A8CA9D8(v19, v13 + 32);
  *(v13 + 144) = a2;
  *(v13 + 88) = a3 & 1;
  *(v13 + 140) = a4;
  *(v13 + 156) = a4 * 1.5;
  sub_23A8E02B4();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v13;
}

uint64_t sub_23A8E9234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC60, &qword_23AA11F08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8E92A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_23AA0C0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 31) & 0xFFFFFFFFFFFFFFF0) + 23) & 0xFFFFFFFFFFFFFFF0;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 0xF);
}

uint64_t sub_23A8E944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_23AA0C0E4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF0;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
  v10 = v2 + v7;
  v11 = *(v10 + 8);
  v12 = *(v2 + v9 + 8);
  return sub_23A8E8318(a1, v2 + v6, *v10, *(v2 + v9), a2, *(v2 + v8));
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_23AA0C0E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23A8E95F0(float32x4_t a1)
{
  v2 = *(sub_23AA0C0E4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_23A8E8184(a1, v4, v1 + v3, v6);
}

uint64_t sub_23A8E9704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC78, &unk_23AA11F20);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23A8E979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC78, &unk_23AA11F20);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for ScanItemStrut()
{
  result = qword_27DFAEC80;
  if (!qword_27DFAEC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A8E9870()
{
  sub_23A8E9910();
  if (v0 <= 0x3F)
  {
    sub_23A8E99C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A8E9910()
{
  if (!qword_27DFAEC90)
  {
    sub_23A8E996C();
    v0 = sub_23AA0DC94();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAEC90);
    }
  }
}

unint64_t sub_23A8E996C()
{
  result = qword_27DFAEC98;
  if (!qword_27DFAEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEC98);
  }

  return result;
}

void sub_23A8E99C0()
{
  if (!qword_27DFAECA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEB40, &qword_23AA11B70);
    v0 = sub_23AA0D664();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAECA0);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

BOOL sub_23A8E9A6C(float32x2_t *a1, float a2)
{
  v3 = vsub_f32(*v2, *a1);
  v4 = vaddv_f32(vmul_f32(v3, v3));
  v5 = a2 * a2;
  if (v4 >= (a2 * a2))
  {
    return 0;
  }

  v6 = vsub_f32(v2[1], a1[1]);
  if (vaddv_f32(vmul_f32(v6, v6)) >= v5)
  {
    return 0;
  }

  v7 = vsub_f32(v2[2], a1[2]);
  if (vaddv_f32(vmul_f32(v7, v7)) >= v5)
  {
    return 0;
  }

  if (vabds_f32(v2[3].f32[0], a1[3].f32[0]) >= a2)
  {
    return 0;
  }

  v8 = vsub_f32(v2[4], a1[4]);
  if (vaddv_f32(vmul_f32(v8, v8)) >= v5)
  {
    return 0;
  }

  v9 = vsub_f32(v2[5], a1[5]);
  return vaddv_f32(vmul_f32(v9, v9)) < v5 && vabds_f32(v2[6].f32[0], a1[6].f32[0]) < a2;
}

uint64_t sub_23A8E9B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3->i8[OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration])
  {

    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v8 = type metadata accessor for ScanItemStrut();
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a4;
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + 24);
    if (v13 <= 0.0)
    {
      if ((*a1 - 2) > 3u)
      {
        v14 = 0.08;
      }

      else
      {
        v14 = flt_23AA11F40[(*a1 - 2)];
      }
    }

    else
    {
      v14 = v13 * 0.5;
    }

    v15 = *(a2 + 24);
    if (v15 <= 0.0)
    {
      if ((*a2 - 2) > 3u)
      {
        v16 = 0.08;
      }

      else
      {
        v16 = flt_23AA11F40[(*a2 - 2)];
      }
    }

    else
    {
      v16 = v15 * 0.5;
    }

    v35 = __invert_f4(*(a1 + 32));
    v17 = vaddq_f32(v35.columns[3], vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*&a3[2])), 0, v35.columns[1]), v35.columns[2], a3[2], 1));
    v18 = vzip1_s32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v19 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection), 1), 0, v35.columns[3]);
    v20 = vzip1_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v21 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal), 1), 0, v35.columns[3]);
    v22 = vzip1_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    v23 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection), 1), 0, v35.columns[3]);
    v24 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v33 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal), 1), 0, v35.columns[3]);
    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v25 = type metadata accessor for ScanItemStrut();
    v26 = a4 + *(v25 + 44);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v28 = *(v27 + 48);
    v29 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    v30 = sub_23AA0C0E4();
    v31 = *(*(v30 - 8) + 16);
    v31(v26, a3 + v29, v30);
    v31(v26 + v28, a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v30);

    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    *a4 = v18;
    *(a4 + 8) = v20;
    *(a4 + 16) = v22;
    *(a4 + 24) = v14;
    *(a4 + 32) = v24;
    *(a4 + 40) = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    *(a4 + 48) = v16;
    v9 = *(*(v25 - 8) + 56);
    v11 = a4;
    v12 = 0;
    v10 = v25;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t sub_23A8E9EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3->i8[OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration])
  {

    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v8 = type metadata accessor for ScanItemStrut();
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a4;
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + 24);
    if (v13 <= 0.0)
    {
      if ((*a1 - 2) > 3u)
      {
        v14 = 0.08;
      }

      else
      {
        v14 = flt_23AA11F40[(*a1 - 2)];
      }
    }

    else
    {
      v14 = v13 * 0.5;
    }

    v15 = *(a2 + 24);
    if (v15 <= 0.0)
    {
      if ((*a2 - 2) > 3u)
      {
        v16 = 0.08;
      }

      else
      {
        v16 = flt_23AA11F40[(*a2 - 2)];
      }
    }

    else
    {
      v16 = v15 * 0.5;
    }

    v35 = __invert_f4(*(a1 + 32));
    v17 = vaddq_f32(v35.columns[3], vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*&a3[2])), 0, v35.columns[1]), v35.columns[2], a3[2], 1));
    v18 = vzip1_s32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v19 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightDirection), 1), 0, v35.columns[3]);
    v20 = vzip1_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v21 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightNormal), 1), 0, v35.columns[3]);
    v22 = vzip1_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
    v23 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftDirection), 1), 0, v35.columns[3]);
    v24 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v33 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal))), 0, v35.columns[1]), v35.columns[2], *(a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftNormal), 1), 0, v35.columns[3]);
    sub_23A8D7A84(a2);
    sub_23A8D7A84(a1);
    v25 = type metadata accessor for ScanItemStrut();
    v26 = a4 + *(v25 + 44);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v28 = *(v27 + 48);
    v29 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    v30 = sub_23AA0C0E4();
    v31 = *(*(v30 - 8) + 16);
    v31(v26, a3 + v29, v30);
    v31(v26 + v28, a3 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v30);

    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    *a4 = v18;
    *(a4 + 8) = v20;
    *(a4 + 16) = v22;
    *(a4 + 24) = v14;
    *(a4 + 32) = v24;
    *(a4 + 40) = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    *(a4 + 48) = v16;
    v9 = *(*(v25 - 8) + 56);
    v11 = a4;
    v12 = 0;
    v10 = v25;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t sub_23A8EA248(float32x2_t *a1)
{
  v2 = vceq_f32(*v1, *a1);
  if ((v2.i32[0] & v2.i32[1] & 1) == 0)
  {
    return 0;
  }

  if (v1[1].f32[0] != a1[1].f32[0])
  {
    return 0;
  }

  v3 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v4 = *(v3 + 24);
  sub_23A8EA31C();
  if ((sub_23AA0BC44() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v3 + 28);

  return sub_23AA0BC44();
}

unint64_t sub_23A8EA31C()
{
  result = qword_27DFAEB50;
  if (!qword_27DFAEB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAEB50);
  }

  return result;
}

uint64_t type metadata accessor for ObjectEntity()
{
  result = qword_27DFAECB8;
  if (!qword_27DFAECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A8EA444(uint64_t a1, char a2, double a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v39 - v11;
  v13 = sub_23AA0C0E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23A902B54(a1, a2 & 1, a3);
  if (v4)
  {
    return result;
  }

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v19 = qword_27DFC04B0;
  (*(v14 + 16))(v17, v5 + qword_27DFC0620, v13);
  swift_beginAccess();
  v20 = *(v19 + 24);
  if (!*(v20 + 16))
  {
    return (*(v14 + 8))(v17, v13);
  }

  v21 = sub_23A9EDD28(v17);
  if ((v22 & 1) == 0)
  {

    return (*(v14 + 8))(v17, v13);
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  v24 = *(v14 + 8);

  v24(v17, v13);

  if ((*(v5 + qword_27DFC0630) & 1) == 0 && *(v23 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) == 18)
  {
    v25 = qword_27DFC0628;
    swift_beginAccess();
    sub_23A8CA9D8(v5 + v25, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
    type metadata accessor for SimpleScanMaterial();
    if (swift_dynamicCast())
    {
      v26 = v39[4];
      sub_23A8EA9A4(v23 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, v12);
      v27 = (*(v14 + 48))(v12, 1, v13);
      sub_23A8EAA14(v12);
      v28 = 1.0;
      if (v27 != 1)
      {
        if (qword_27DFAE518 != -1)
        {
          swift_once();
        }

        v29 = off_27DFB17B0;
        swift_beginAccess();
        v28 = 1.0 - (v29[30] + v29[30]);
      }

      if (*(v26 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) != v28)
      {
        *(v26 + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = v28;
        sub_23A9026C0();
        type metadata accessor for ObjectEntity();
        sub_23A8EAA7C();
        v30 = sub_23AA0CAD4();
        v32 = v31;
        v33 = sub_23AA0C4A4();
        if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_23AA10FC0;
          v35 = sub_23AA0CD84();
          v36 = MEMORY[0x277CDB298];
          *(v34 + 56) = v35;
          *(v34 + 64) = v36;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v34 + 32));
          v38 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
          swift_beginAccess();
          (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v26 + v38, v35);
          sub_23AA0C494();
        }

        v30(v40, 0);
      }
    }
  }
}

uint64_t sub_23A8EA948()
{
  v0 = *sub_23A904938();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23A8EA9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8EAA14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A8EAA7C()
{
  result = qword_27DFAECC8;
  if (!qword_27DFAECC8)
  {
    type metadata accessor for ObjectEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAECC8);
  }

  return result;
}

uint64_t sub_23A8EAAD4()
{
  type metadata accessor for ScanItemPerimeterManager();
  v0 = swift_allocObject();
  type metadata accessor for HullUtility();
  result = swift_allocObject();
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  qword_27DFC05E0 = v0;
  return result;
}

uint64_t sub_23A8EAB50(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0uLL;
  v10 = 0uLL;
LABEL_4:
  v21 = v10;
  v23 = v9;
  while (v5)
  {
LABEL_10:
    v12 = *(*(a1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v5 &= v5 - 1;
    if ((*(v12 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) & 0xFE) == 2)
    {
      v29 = *(v12 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
      v27 = *(v12 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
      v28 = *(v12 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
      v25 = *(v12 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
      v26 = *(v12 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);

      v13 = sub_23A8DA808(v29, v28, v27, v26, v25, 0.16);
      v14 = *(v13 + 2);
      if (v14)
      {
        v15 = 32;
        v17 = v21;
        v16 = v23;
        do
        {
          v18 = *&v13[v15];
          v19 = vbslq_s8(vcgtq_f32(v17, v18), v18, v17);
          v17.i64[0] = v19.i64[0];
          v20 = vbslq_s8(vcgtq_f32(v18, v16), v18, v16);
          v16.i64[0] = v20.i64[0];
          v17.i32[2] = v19.i32[2];
          v16.i32[2] = v20.i32[2];
          v15 += 16;
          --v14;
        }

        while (v14);
        v22 = v17;
        v24 = v16;

        v10 = v22;
        v9 = v24;
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

int8x16_t sub_23A8EAD88(int8x16_t a1)
{
  type metadata accessor for RoomCaptureMeshDimensionsRestriction();
  if (swift_initStaticObject() == v1)
  {
    return a1;
  }

  else
  {
    v2 = a1;
    v2.i32[0] = fabsf(*(v1 + 20));
    if (*(v1 + 24))
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }

    v4 = vbslq_s8(vdupq_n_s32(v3), a1, v2);
    v5 = v4;
    v5.i32[1] = fabsf(*(v1 + 28));
    if (*(v1 + 32))
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    result = vbslq_s8(vdupq_n_s32(v6), v4, v5);
    v8 = result;
    v8.i32[2] = fabsf(*(v1 + 36));
    if (*(v1 + 40))
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    result.i64[0] = vbslq_s8(vdupq_n_s32(v9), result, v8).u64[0];
  }

  return result;
}

double sub_23A8EAE38(double a1, double a2)
{
  type metadata accessor for RoomCaptureMeshDimensionsRestriction();
  if (swift_initStaticObject() == v2)
  {
    return a1;
  }

  if (*(v2 + 24))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(v2 + 20);
  }

  if (*(v2 + 32))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v2 + 28);
  }

  v5 = *(v2 + 36);
  *(v2 + 40);
  v6 = *(v2 + 16);
  if (v6 <= 2)
  {
    if (*(v2 + 16))
    {
      if (v6 == 1)
      {
        v7 = (*&a1 + (0.5 * *&a2)) - (v3 * 0.5);
        v8 = (*(&a1 + 1) + 0.0) - (v4 * 0.5);
      }

      else
      {
        v7 = (*&a1 + 0.0) - (v3 * 0.5);
        v8 = (*(&a1 + 1) + vmuls_lane_f32(0.5, *&a2, 1)) - (v4 * 0.5);
      }
    }

    else
    {
      v7 = (*&a1 - (0.5 * *&a2)) + (v3 * 0.5);
      v8 = *(&a1 + 1) + (v4 * 0.5);
    }

    return COERCE_DOUBLE(__PAIR64__(LODWORD(v8), LODWORD(v7)));
  }

  if (*(v2 + 16) <= 4u)
  {
    if (v6 == 3)
    {
      v7 = *&a1 + (v3 * 0.5);
      v8 = (*(&a1 + 1) - vmuls_lane_f32(0.5, *&a2, 1)) + (v4 * 0.5);
    }

    else
    {
      v7 = (*&a1 + 0.0) - (v3 * 0.5);
      v8 = (*(&a1 + 1) + 0.0) - (v4 * 0.5);
    }

    return COERCE_DOUBLE(__PAIR64__(LODWORD(v8), LODWORD(v7)));
  }

  if (v6 != 5)
  {
    return a1;
  }

  v7 = *&a1 + (v3 * 0.5);
  v8 = *(&a1 + 1) + (v4 * 0.5);
  return COERCE_DOUBLE(__PAIR64__(LODWORD(v8), LODWORD(v7)));
}

uint64_t getEnumTagSinglePayload for ScanItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A8EB1C8()
{
  result = qword_27DFAECD0;
  if (!qword_27DFAECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAECD0);
  }

  return result;
}

uint64_t type metadata accessor for DebugArrowEntity()
{
  result = qword_27DFAECE0;
  if (!qword_27DFAECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A8EB268()
{
  result = sub_23AA0C444();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23A8EB30C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAECF0, &qword_23AA120F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - v4 + 16;
  v6 = sub_23AA0CE44();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = qword_27DFC05E8;
  v9 = *(v0 + qword_27DFC05E8);
  sub_23A8EBA20();
  v10 = v9;
  v11 = sub_23AA0D634();

  if ((v11 & 1) == 0)
  {
    v12 = *(v1 + v8);
    v13 = sub_23AA0CDA4();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = v12;
    sub_23AA0CE34();
    v15 = qword_27DFAECD8;
    swift_beginAccess();
    sub_23AA0C424();
    swift_endAccess();
    type metadata accessor for DebugArrowEntity();
    sub_23A8EBA6C();
    v16 = sub_23AA0CAD4();
    v18 = v17;
    v19 = sub_23AA0C4A4();
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_23AA10FC0;
      v21 = sub_23AA0C444();
      v22 = MEMORY[0x277CDAC30];
      *(v20 + 56) = v21;
      *(v20 + 64) = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
      swift_beginAccess();
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v1 + v15, v21);
      sub_23AA0C494();
    }

    v16(v25, 0);
  }
}

uint64_t sub_23A8EB620(void *a1)
{
  v3 = sub_23AA0C2E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23AA0C444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1;
  sub_23AA0C434();
  (*(v9 + 32))(v1 + qword_27DFAECD8, v12, v8);
  *(v1 + qword_27DFC05E8) = v13;
  v14 = v13;
  v15 = sub_23AA0C1A4();
  v16 = qword_27DFAE490;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_23A997994(v7, xmmword_23AA12080, 0.4);
  v17 = sub_23A8EBA6C();
  v18 = qword_27DFAECD8;
  swift_beginAccess();
  v23[3] = v8;
  v23[4] = MEMORY[0x277CDAC30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(v9 + 16))(boxed_opaque_existential_1, v15 + v18, v8);
  v20 = v23[6];
  sub_23A998954(v15, v17, v7, v23);

  if (v20)
  {
  }

  else
  {
  }

  (*(v4 + 8))(v7, v3);
  sub_23A8EBAC4(v23);
  return v15;
}

void sub_23A8EB8BC()
{
  v1 = qword_27DFAECD8;
  v2 = sub_23AA0C444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_27DFC05E8);
}

uint64_t sub_23A8EB934()
{
  v0 = sub_23AA0CAC4();
  v1 = qword_27DFAECD8;
  v2 = sub_23AA0C444();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + qword_27DFC05E8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_23A8EBA20()
{
  result = qword_27DFAECF8;
  if (!qword_27DFAECF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAECF8);
  }

  return result;
}

unint64_t sub_23A8EBA6C()
{
  result = qword_27DFAED00;
  if (!qword_27DFAED00)
  {
    type metadata accessor for DebugArrowEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAED00);
  }

  return result;
}

uint64_t sub_23A8EBAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF780, &qword_23AA14670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23A8EBB2C(double a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StateSpring();
  result = objc_msgSendSuper2(&v6, sel_initWithValue_, a1);
  if (result)
  {
    v4 = result;
    v5 = result;
    [v5 setParameters_];
    [v5 parameters];
    [v5 setParameters_];
    [v5 parameters];
    [v5 setParameters_];

    return v4;
  }

  return result;
}

id sub_23A8EBC38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A8EBCBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23A8EBD04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23A8EBD6C(SEL *a1, __n128 a2, __n128 a3)
{
  v5 = *v3;
  v6 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EE90360](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  [v7 *a1];

  if (v6)
  {
    v9 = MEMORY[0x23EE90360](1, v5);
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(v5 + 40);
LABEL_8:
  v10 = v9;
  [v9 *a1];

  if (!v6)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v11 = *(v5 + 48);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v11 = MEMORY[0x23EE90360](2, v5);
LABEL_12:
  v15 = v11;
  [v11 *a1];
}

void sub_23A8EBE84()
{
  v1 = *v0;
  v2 = *v0 & 0xC000000000000001;
  if (v2)
  {
    v3 = MEMORY[0x23EE90360](0, *v0);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[1];
  [v3 parameters];
  [v4 setParameters_];

  if (v2)
  {
    v6 = MEMORY[0x23EE90360](1, v1);
    goto LABEL_8;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v1 + 40);
LABEL_8:
  v7 = v6;
  [v6 parameters];
  [v7 setParameters_];

  if (!v2)
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v8 = *(v1 + 48);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v8 = MEMORY[0x23EE90360](2, v1);
LABEL_12:
  v9 = v8;
  [v8 parameters];
  [v9 setParameters_];
}

void sub_23A8EBFD0(unint64_t a1, double a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE90360](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  [v5 step_];

  if (v4)
  {
    v7 = MEMORY[0x23EE90360](1, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(a1 + 40);
LABEL_8:
  v8 = v7;
  [v7 step_];

  if (v4)
  {
    v9 = MEMORY[0x23EE90360](2, a1);
    goto LABEL_12;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(a1 + 48);
LABEL_12:
  v10 = v9;
  [v9 step_];

  if (!v4)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v11 = *(a1 + 56);
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v11 = MEMORY[0x23EE90360](3, a1);
LABEL_16:
  v12 = v11;
  [v11 step_];
}

void sub_23A8EC154(unint64_t a1, SEL *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE90360](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  [v5 *a2];

  if (v4)
  {
    v7 = MEMORY[0x23EE90360](1, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(a1 + 40);
LABEL_8:
  v8 = v7;
  [v7 *a2];

  if (!v4)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v9 = *(a1 + 48);
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = MEMORY[0x23EE90360](2, a1);
LABEL_12:
  v10 = v9;
  [v9 *a2];

  if (v4)
  {
    v11 = MEMORY[0x23EE90360](3, a1);
LABEL_16:
    v12 = v11;
    [v11 *a2];

    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v11 = *(a1 + 56);
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
}

void sub_23A8EC2B4(SEL *a1, __n128 a2, __n128 a3)
{
  v5 = *v3;
  v6 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EE90360](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  [v7 *a1];

  if (v6)
  {
    v9 = MEMORY[0x23EE90360](1, v5);
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v5 + 40);
LABEL_8:
  v10 = v9;
  [v9 *a1];

  if (v6)
  {
    v11 = MEMORY[0x23EE90360](2, v5);
    goto LABEL_12;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = *(v5 + 48);
LABEL_12:
  v12 = v11;
  [v11 *a1];

  if (!v6)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v13 = *(v5 + 56);
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v13 = MEMORY[0x23EE90360](3, v5);
LABEL_16:
  v17 = v13;
  [v13 *a1];
}

uint64_t sub_23A8EC414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA12120;
  type metadata accessor for StateSpring();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 48) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 56) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = 0;
    v4 = v0 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v7 = *(v0 + 8 * v3 + 32);
      }

      v8 = v7;
      [v7 setTarget_];

      if (v4)
      {
        v9 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v9 = *(v0 + 8 * v3 + 32);
      }

      v10 = v9;
      [v9 setValue_];

      if (v4)
      {
        v5 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = v5;
      ++v3;
      [v5 setVelocity_];
    }

    while (v2 != v3);
  }

  return v0;
}

uint64_t sub_23A8EC5B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA12130;
  type metadata accessor for StateSpring();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + 48) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = 0;
    v4 = v0 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v7 = *(v0 + 8 * v3 + 32);
      }

      v8 = v7;
      [v7 setTarget_];

      if (v4)
      {
        v9 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v9 = *(v0 + 8 * v3 + 32);
      }

      v10 = v9;
      [v9 setValue_];

      if (v4)
      {
        v5 = MEMORY[0x23EE90360](v3, v0);
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = v5;
      ++v3;
      [v5 setVelocity_];
    }

    while (v2 != v3);
  }

  return v0;
}