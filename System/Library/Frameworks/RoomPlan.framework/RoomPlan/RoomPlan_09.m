uint64_t sub_23A9574F4(void *a1, char a2)
{
  if (*(a1 + OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple) == 1)
  {
    sub_23A954A94();
    v4 = sub_23AA0D104();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v19 = sub_23A95F8D0;
    v20 = v5;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_23A954DD4;
    v18 = &block_descriptor_223;
    v6 = _Block_copy(&v15);
    v7 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v6);

    sub_23A954A94();
    if (a2)
    {
      v8 = sub_23AA0D104();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v19 = sub_23A95F8D0;
      v20 = v9;
      v15 = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v10 = &block_descriptor_216;
    }

    else
    {
      v8 = sub_23AA0D104();
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      v19 = sub_23A95F8D0;
      v20 = v11;
      v15 = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v10 = &block_descriptor_209;
    }

    v17 = sub_23A954DD4;
    v18 = v10;
    v12 = _Block_copy(&v15);
    v13 = v7;

    AnalyticsSendEventLazy();
    _Block_release(v12);
  }

  return sub_23A954F80();
}

id sub_23A957770()
{
  v1 = v0;
  v23 = sub_23AA0D524();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0D504();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_23AA0CF24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v22 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_queue;
  v10 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v21[1] = "LatencyOnlineScan";
  v21[2] = v10;
  sub_23AA0CF14();
  v25 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v23);
  *&v0[v22] = sub_23AA0D554();
  v11 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
  v12 = sub_23AA0C064();
  v13 = *(*(v12 - 8) + 56);
  v13(&v1[v11], 1, 1, v12);
  v13(&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart], 1, 1, v12);
  v14 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray] = MEMORY[0x277D84F90];
  v15 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval];
  *v15 = 0;
  v15[8] = 1;
  *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray] = v14;
  v16 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval];
  *v16 = 0;
  v16[8] = 1;
  *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray] = v14;
  v17 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_errorType];
  *v18 = 0x73736563637573;
  *(v18 + 1) = 0xE700000000000000;
  v19 = type metadata accessor for AnalyticsOnline(0);
  v24.receiver = v1;
  v24.super_class = v19;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_23A957B20()
{
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart, &qword_27DFAEB30, &unk_23AA11B50);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart, &qword_27DFAEB30, &unk_23AA11B50);
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray);

  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray);

  v3 = *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray);

  v4 = *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_errorType + 8);
}

id sub_23A957C00(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23A957D28()
{
  sub_23A8ECAC8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_23A957E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void *a4)
{
  result = [objc_allocWithZone(a3(a2)) init];
  *a4 = result;
  return result;
}

void sub_23A957E88(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v29 = a4;
  v30 = a2;
  v31 = a3;
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0CF24();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CapturedRoom(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v27[1] = *&v4[OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_queue];
    sub_23A95F358(a1, v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
    v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v20 = v19 + v17;
    v28 = v11;
    v21 = (v19 + v17) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v4;
    sub_23A95F520(v18, v22 + v19, type metadata accessor for CapturedRoom);
    *(v22 + v20) = v29 & 1;
    v23 = v22 + v21;
    v24 = v31;
    *(v23 + 8) = v30;
    *(v23 + 16) = v24;
    aBlock[4] = sub_23A95F588;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_196;
    v25 = _Block_copy(aBlock);
    v26 = v4;

    sub_23AA0CEE4();
    v33 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v14, v10, v25);
    _Block_release(v25);
    (*(v7 + 8))(v10, v6);
    (*(v32 + 8))(v14, v28);
  }
}

uint64_t sub_23A958254(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v312 = a5;
  v311 = a4;
  v310 = a3;
  v317 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v325 = &v308 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v313 = &v308 - v10;
  MEMORY[0x28223BE20](v11);
  v327 = &v308 - v12;
  v308 = type metadata accessor for CapturedRoom.Object(0);
  v321 = *(v308 - 8);
  v13 = *(v321 + 64);
  MEMORY[0x28223BE20](v308);
  v309 = &v308 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v308 - v16;
  v18 = type metadata accessor for CapturedRoom.Surface(0);
  v318 = *(v18 - 8);
  v319 = v18;
  v19 = *(v318 + 64);
  MEMORY[0x28223BE20](v18);
  v324 = &v308 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v326 = &v308 - v22;
  MEMORY[0x28223BE20](v23);
  v331 = &v308 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v308 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v308 - v30;
  v32 = sub_23AA0C064();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v308 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v308 - v38;
  v40 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_offlineGenerationTimeStart;
  swift_beginAccess();
  sub_23A8D5194(a1 + v40, v31, &qword_27DFAEB30, &unk_23AA11B50);
  v41 = &qword_27DFAF000;
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_23A8D50D0(v31, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    (*(v33 + 32))(v39, v31, v32);
    sub_23AA0C054();
    sub_23AA0C014();
    v42 = sub_23AA0D3C4();
    v43 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    v44 = *(a1 + v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v332 = *(a1 + v43);
    *(a1 + v43) = 0x8000000000000000;
    sub_23A9DB06C(v42, 0xD000000000000018, 0x800000023AA20480, isUniquelyReferenced_nonNull_native);
    *(a1 + v43) = v332;
    v41 = &qword_27DFAF000;
    swift_endAccess();
    v46 = *(v33 + 8);
    v46(v36, v32);
    v46(v39, v32);
  }

  v47 = v317;
  v314 = *v317;
  v48 = *(v314 + 16);
  v49 = sub_23AA0D434();
  v50 = v41[337];
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(a1 + v50);
  *(a1 + v50) = 0x8000000000000000;
  sub_23A9DB06C(v49, 0x6C6C61576D754ELL, 0xE700000000000000, v52);
  *(a1 + v50) = v332;
  swift_endAccess();
  v316 = v47[2];
  v53 = *(v316 + 16);
  v54 = sub_23AA0D434();
  swift_beginAccess();
  v55 = *(a1 + v50);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(a1 + v50);
  *(a1 + v50) = 0x8000000000000000;
  sub_23A9DB06C(v54, 0x6F646E69576D754ELL, 0xE900000000000077, v56);
  *(a1 + v50) = v332;
  swift_endAccess();
  v57 = *(v47[3] + 16);
  v58 = sub_23AA0D434();
  swift_beginAccess();
  v59 = *(a1 + v50);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(a1 + v50);
  *(a1 + v50) = 0x8000000000000000;
  sub_23A9DB06C(v58, 0x696E65704F6D754ELL, 0xEA0000000000676ELL, v60);
  *(a1 + v50) = v332;
  swift_endAccess();
  v61 = v47[5];
  v62 = *(v61 + 16);
  v63 = sub_23AA0D434();
  swift_beginAccess();
  v64 = *(a1 + v50);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(a1 + v50);
  *(a1 + v50) = 0x8000000000000000;
  sub_23A9DB06C(v63, 0x63656A624F6D754ELL, 0xE900000000000074, v65);
  v322 = a1;
  v323 = v50;
  *(a1 + v50) = v332;
  swift_endAccess();
  v66 = v47[1];
  v67 = *(v66 + 16);
  v315 = v66;
  v68 = 0;
  v69 = 0;
  if (v67)
  {
    v70 = v66 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
    v71 = *(v318 + 72);
    do
    {
      sub_23A95F358(v70, v27, type metadata accessor for CapturedRoom.Surface);
      v73 = *v27;
      sub_23A8D5320(v27, type metadata accessor for CapturedRoom.Surface);
      if ((v73 - 2) >= 4u)
      {
        if (v73)
        {
          v72 = __OFADD__(v68++, 1);
          if (v72)
          {
            goto LABEL_163;
          }
        }

        else
        {
          v72 = __OFADD__(v69++, 1);
          if (v72)
          {
            __break(1u);
            break;
          }
        }
      }

      v70 += v71;
      --v67;
    }

    while (v67);
  }

  v74 = sub_23AA0D434();
  v75 = v322;
  v76 = v323;
  swift_beginAccess();
  v77 = *(v75 + v76);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v75 + v76);
  *(v75 + v76) = 0x8000000000000000;
  sub_23A9DB06C(v74, 0x65736F6C436D754ELL, 0xEC000000726F6F44, v78);
  *(v75 + v76) = v332;
  swift_endAccess();
  v79 = sub_23AA0D434();
  swift_beginAccess();
  v80 = *(v75 + v76);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v75 + v76);
  *(v75 + v76) = 0x8000000000000000;
  sub_23A9DB06C(v79, 0x446E65704F6D754ELL, 0xEB00000000726F6FLL, v81);
  *(v75 + v76) = v332;
  swift_endAccess();
  v329 = *(v61 + 16);
  v330 = v61;
  if (!v329)
  {
    goto LABEL_43;
  }

  v82 = 0;
  v83 = v321;
  v328 = v61 + ((*(v321 + 80) + 32) & ~*(v321 + 80));
  v84 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v82 >= *(v61 + 16))
    {
      goto LABEL_156;
    }

    sub_23A95F358(v328 + *(v83 + 72) * v82, v17, type metadata accessor for CapturedRoom.Object);
    LOBYTE(v333) = *v17;
    v86 = sub_23AA0D1A4();
    if (*(v84 + 16))
    {
      break;
    }

LABEL_27:
    LOBYTE(v333) = *v17;
    v102 = sub_23AA0D1A4();
    v104 = v103;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v333 = v84;
    v106 = sub_23A9EDDFC(v102, v104);
    v108 = *(v84 + 16);
    v109 = (v107 & 1) == 0;
    v72 = __OFADD__(v108, v109);
    v110 = v108 + v109;
    if (v72)
    {
      goto LABEL_157;
    }

    v111 = v107;
    if (*(v84 + 24) < v110)
    {
      sub_23A90A29C(v110, v105);
      v106 = sub_23A9EDDFC(v102, v104);
      if ((v111 & 1) != (v112 & 1))
      {
        goto LABEL_176;
      }

LABEL_32:
      if (v111)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }

    if (v105)
    {
      goto LABEL_32;
    }

    v118 = v106;
    sub_23A90F200();
    v106 = v118;
    if (v111)
    {
LABEL_15:
      v85 = v106;

      v84 = v333;
      *(*(v333 + 56) + 8 * v85) = 1;
LABEL_16:
      sub_23A8D5320(v17, type metadata accessor for CapturedRoom.Object);
      goto LABEL_17;
    }

LABEL_33:
    v84 = v333;
    *(v333 + 8 * (v106 >> 6) + 64) |= 1 << v106;
    v113 = (*(v84 + 48) + 16 * v106);
    *v113 = v102;
    v113[1] = v104;
    *(*(v84 + 56) + 8 * v106) = 1;
    sub_23A8D5320(v17, type metadata accessor for CapturedRoom.Object);
    v114 = *(v84 + 16);
    v72 = __OFADD__(v114, 1);
    v115 = v114 + 1;
    if (v72)
    {
      goto LABEL_160;
    }

    *(v84 + 16) = v115;
LABEL_17:
    v61 = v330;
    if (v329 == ++v82)
    {
      goto LABEL_44;
    }
  }

  sub_23A9EDDFC(v86, v87);
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    goto LABEL_27;
  }

  LOBYTE(v333) = *v17;
  v90 = sub_23AA0D1A4();
  v92 = v91;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v333 = v84;
  v95 = sub_23A9EDDFC(v90, v92);
  v96 = *(v84 + 16);
  v97 = (v94 & 1) == 0;
  v98 = v96 + v97;
  if (__OFADD__(v96, v97))
  {
    goto LABEL_161;
  }

  v99 = v94;
  if (*(v84 + 24) >= v98)
  {
    if (v93)
    {
      v83 = v321;
      if ((v94 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_23A90F200();
      v83 = v321;
      if ((v99 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_37;
  }

  sub_23A90A29C(v98, v93);
  v100 = sub_23A9EDDFC(v90, v92);
  if ((v99 & 1) != (v101 & 1))
  {
    goto LABEL_176;
  }

  v95 = v100;
  v83 = v321;
  if (v99)
  {
LABEL_37:
    v116 = *(*(v333 + 56) + 8 * v95);

    v117 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      goto LABEL_162;
    }

    v84 = v333;
    *(*(v333 + 56) + 8 * v95) = v117;
    goto LABEL_16;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  v84 = MEMORY[0x277D84F98];
LABEL_44:
  v119 = v84 + 64;
  v120 = 1 << *(v84 + 32);
  v121 = -1;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  v122 = v121 & *(v84 + 64);
  v123 = (v120 + 63) >> 6;
  v320 = 0x800000023AA201A0;
  v328 = v84;

  v124 = 0;
  v125 = v322;
  while (2)
  {
    if (v122)
    {
      goto LABEL_54;
    }

LABEL_50:
    v130 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
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
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    if (v130 < v123)
    {
      v122 = *(v119 + 8 * v130);
      ++v124;
      if (v122)
      {
        v124 = v130;
LABEL_54:
        v131 = __clz(__rbit64(v122)) | (v124 << 6);
        v132 = (*(v328 + 48) + 16 * v131);
        v133 = *v132;
        v134 = v132[1];
        v135 = *(*(v328 + 56) + 8 * v131);
        v333 = 0xD000000000000012;
        v334 = v320;
        MEMORY[0x23EE8FCA0](v133, v134);
        v137 = v333;
        v136 = v334;
        v329 = sub_23AA0D434();
        v138 = v323;
        swift_beginAccess();
        v139 = *(v125 + v138);
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v332 = *(v125 + v138);
        v141 = v332;
        *(v125 + v138) = 0x8000000000000000;
        v142 = sub_23A9EDDFC(v137, v136);
        v144 = v141[2];
        v145 = (v143 & 1) == 0;
        v72 = __OFADD__(v144, v145);
        v146 = v144 + v145;
        if (v72)
        {
          goto LABEL_164;
        }

        v147 = v143;
        if (v141[3] >= v146)
        {
          if (v140)
          {
            goto LABEL_59;
          }

          v152 = v142;
          sub_23A90F094();
          v142 = v152;
          if (v147)
          {
            goto LABEL_47;
          }

LABEL_60:
          v127 = v332;
          v332[(v142 >> 6) + 8] |= 1 << v142;
          v149 = (v127[6] + 16 * v142);
          *v149 = v137;
          v149[1] = v136;
          *(v127[7] + 8 * v142) = v329;
          v150 = v127[2];
          v72 = __OFADD__(v150, 1);
          v151 = v150 + 1;
          if (!v72)
          {
            v127[2] = v151;
            goto LABEL_48;
          }

          goto LABEL_170;
        }

        sub_23A909FF8(v146, v140);
        v142 = sub_23A9EDDFC(v137, v136);
        if ((v147 & 1) != (v148 & 1))
        {
          goto LABEL_176;
        }

LABEL_59:
        if ((v147 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_47:
        v126 = v142;

        v127 = v332;
        v128 = v332[7];
        v129 = *(v128 + 8 * v126);
        *(v128 + 8 * v126) = v329;

LABEL_48:
        v122 &= v122 - 1;
        v125 = v322;
        *(v322 + v323) = v127;
        swift_endAccess();
        continue;
      }

      goto LABEL_50;
    }

    break;
  }

  v153 = v330;
  v154 = *(v330 + 16);
  if (v154)
  {
    v155 = 0;
    v156 = *(v308 + 36);
    v157 = v330 + ((*(v321 + 80) + 32) & ~*(v321 + 80));
    v158 = *(v321 + 72);
    v159 = v309;
    while (1)
    {
      sub_23A95F358(v157, v159, type metadata accessor for CapturedRoom.Object);
      v160 = *(v159 + v156);

      sub_23A8D5320(v159, type metadata accessor for CapturedRoom.Object);
      v161 = *(v160 + 16);

      if (v161)
      {
        v72 = __OFADD__(v155++, 1);
        if (v72)
        {
          break;
        }
      }

      v157 += v158;
      if (!--v154)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  v155 = 0;
LABEL_72:
  v162 = sub_23AA0D434();
  v163 = v322;
  v164 = v323;
  swift_beginAccess();
  v165 = *(v163 + v164);
  v166 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v163 + v164);
  *(v163 + v164) = 0x8000000000000000;
  sub_23A9DB06C(v162, 0xD000000000000016, 0x800000023AA201C0, v166);
  *(v163 + v164) = v332;
  swift_endAccess();
  if (*(v153 + 16))
  {
    if ((v155 * 100) >> 64 == (100 * v155) >> 63)
    {
      v167 = sub_23AA0D3C4();
      swift_beginAccess();
      v168 = *(v163 + v164);
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v332 = *(v163 + v164);
      *(v163 + v164) = 0x8000000000000000;
      sub_23A9DB06C(v167, 0xD000000000000027, 0x800000023AA20450, v169);
      *(v163 + v164) = v332;
      swift_endAccess();
      goto LABEL_75;
    }

LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_75:
  v170 = v317[4];
  v171 = *(v170 + 16);
  if (!v171)
  {
    goto LABEL_86;
  }

  v172 = 0;
  v173 = 0;
  v174 = (v170 + ((*(v318 + 80) + 32) & ~*(v318 + 80)));
  v176 = 0.0;
  v177 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    v175 = *(v319 + 60);
    v178 = *(*(v174 + v175) + 16);
    if (!v178)
    {
LABEL_81:
      v176 = v176 + vmuls_lane_f32(COERCE_FLOAT(*v174[2].f32), v174[2], 1);
      v174 = (v174 + *(v318 + 72));
      if (!--v171)
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

  v72 = __OFADD__(v173++, 1);
  if (!v72)
  {
    if (v178 > v172)
    {
      v172 = *(*(v174 + v175) + 16);
    }

    if (v178 < v177)
    {
      v177 = *(*(v174 + v175) + 16);
    }

    goto LABEL_81;
  }

  __break(1u);
LABEL_86:
  v179 = sub_23AA0D3C4();
  swift_beginAccess();
  v180 = *(v163 + v164);
  v181 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v163 + v164);
  *(v163 + v164) = 0x8000000000000000;
  sub_23A9DB06C(v179, 0x657A69536D6F6F52, 0xEC00000061657241, v181);
  *(v163 + v164) = v332;
  swift_endAccess();
  v182 = sub_23AA0D434();
  swift_beginAccess();
  v183 = *(v163 + v164);
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v163 + v164);
  *(v163 + v164) = 0x8000000000000000;
  sub_23A9DB06C(v182, 0xD000000000000013, 0x800000023AA201E0, v184);
  *(v163 + v164) = v332;
  swift_endAccess();
  v185 = sub_23AA0D434();
  swift_beginAccess();
  v186 = *(v163 + v164);
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v163 + v164);
  *(v163 + v164) = 0x8000000000000000;
  sub_23A9DB06C(v185, 0xD00000000000001BLL, 0x800000023AA20200, v187);
  *(v163 + v164) = v332;
  swift_endAccess();
  v188 = sub_23AA0D434();
  swift_beginAccess();
  v189 = *(v163 + v164);
  v190 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v163 + v164);
  *(v163 + v164) = 0x8000000000000000;
  sub_23A9DB06C(v188, 0xD00000000000001BLL, 0x800000023AA20220, v190);
  *(v163 + v164) = v332;
  swift_endAccess();
  v191 = *(v317 + *(type metadata accessor for CapturedRoom(0) + 44));
  v192 = *(v191 + 16);
  if (!v192)
  {
    goto LABEL_110;
  }

  v193 = 0;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v198 = 0;
  v199 = (v191 + 32);
  v200 = v192;
  while (2)
  {
    v202 = *v199;
    v199 += 160;
    v201 = v202;
    if (v202 <= 2)
    {
      if (v201)
      {
        if (v201 == 1)
        {
          v72 = __OFADD__(v197++, 1);
          if (v72)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v72 = __OFADD__(v196++, 1);
          if (v72)
          {
            goto LABEL_165;
          }
        }
      }

      else
      {
        v72 = __OFADD__(v198++, 1);
        if (v72)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_89;
    }

    if (v201 == 3)
    {
      v72 = __OFADD__(v195++, 1);
      if (v72)
      {
        goto LABEL_168;
      }

      goto LABEL_89;
    }

    if (v201 == 4)
    {
      v72 = __OFADD__(v194++, 1);
      if (v72)
      {
        goto LABEL_167;
      }

      goto LABEL_89;
    }

    v72 = __OFADD__(v193++, 1);
    if (!v72)
    {
LABEL_89:
      if (!--v200)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_110:
  v203 = sub_23AA0D434();
  v204 = v322;
  v205 = v323;
  swift_beginAccess();
  v206 = *(v204 + v205);
  v207 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v204 + v205);
  *(v204 + v205) = 0x8000000000000000;
  sub_23A9DB06C(v203, 0x69746365536D754ELL, 0xEA00000000006E6FLL, v207);
  *(v204 + v205) = v332;
  swift_endAccess();
  v208 = sub_23AA0D434();
  swift_beginAccess();
  v209 = *(v204 + v205);
  v210 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v204 + v205);
  *(v204 + v205) = 0x8000000000000000;
  sub_23A9DB06C(v208, 0xD000000000000014, 0x800000023AA20240, v210);
  *(v204 + v205) = v332;
  swift_endAccess();
  v211 = sub_23AA0D434();
  swift_beginAccess();
  v212 = *(v204 + v205);
  v213 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v204 + v205);
  *(v204 + v205) = 0x8000000000000000;
  sub_23A9DB06C(v211, 0xD000000000000011, 0x800000023AA20260, v213);
  *(v204 + v205) = v332;
  swift_endAccess();
  v214 = sub_23AA0D434();
  swift_beginAccess();
  v215 = *(v204 + v205);
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v204 + v205);
  *(v204 + v205) = 0x8000000000000000;
  sub_23A9DB06C(v214, 0xD000000000000012, 0x800000023AA20280, v216);
  *(v204 + v205) = v332;
  swift_endAccess();
  v217 = sub_23AA0D434();
  swift_beginAccess();
  v218 = *(v204 + v205);
  v219 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v204 + v205);
  *(v204 + v205) = 0x8000000000000000;
  sub_23A9DB06C(v217, 0xD000000000000011, 0x800000023AA202A0, v219);
  *(v204 + v205) = v332;
  swift_endAccess();
  v220 = sub_23AA0D434();
  swift_beginAccess();
  v221 = *(v204 + v205);
  v222 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v204 + v205);
  *(v204 + v205) = 0x8000000000000000;
  sub_23A9DB06C(v220, 0xD000000000000014, 0x800000023AA202C0, v222);
  *(v204 + v205) = v332;
  swift_endAccess();
  v223 = sub_23AA0D434();
  swift_beginAccess();
  v224 = *(v204 + v205);
  v225 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v204 + v205);
  *(v204 + v205) = 0x8000000000000000;
  v321 = 0xD000000000000010;
  sub_23A9DB06C(v223, 0xD000000000000010, 0x800000023AA202E0, v225);
  *(v204 + v205) = v332;
  swift_endAccess();
  v226 = v314;
  v227 = *(v314 + 16);
  if (!v227)
  {
    v238 = 0;
    goto LABEL_128;
  }

  v228 = 0;
  v229 = 0;
  v230 = v319;
  v231 = v314 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
  v329 = *(v318 + 72);
  v330 = 0;
  v232 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v233 = v331;
    sub_23A95F358(v231, v331, type metadata accessor for CapturedRoom.Surface);
    v234 = *(*(v233 + *(v230 + 60)) + 16);
    if (v234)
    {
      v72 = __OFADD__(v229++, 1);
      v235 = v327;
      if (v72)
      {
        goto LABEL_158;
      }

      v236 = v330;
      if (v234 > v330)
      {
        v236 = *(*(v233 + *(v230 + 60)) + 16);
      }

      v330 = v236;
      if (v234 < v232)
      {
        v232 = v234;
      }
    }

    else
    {
      v235 = v327;
    }

    sub_23A8D5194(v233 + *(v230 + 52), v235, &qword_27DFAEB38, &unk_23AA11B60);
    v237 = type metadata accessor for CapturedRoom.Surface.Curve(0);
    if ((*(*(v237 - 8) + 48))(v235, 1, v237) == 1)
    {
      sub_23A8D5320(v233, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D50D0(v235, &qword_27DFAEB38, &unk_23AA11B60);
    }

    else
    {
      sub_23A8D50D0(v235, &qword_27DFAEB38, &unk_23AA11B60);
      v72 = __OFADD__(v228++, 1);
      if (v72)
      {
        goto LABEL_159;
      }

      sub_23A8D5320(v331, type metadata accessor for CapturedRoom.Surface);
    }

    v231 += v329;
    --v227;
  }

  while (v227);
  v226 = v314;
  v238 = v228;
  if (!v229)
  {
LABEL_128:
    v229 = 0;
  }

  v239 = sub_23AA0D434();
  v240 = v322;
  v241 = v323;
  swift_beginAccess();
  v242 = *(v240 + v241);
  v243 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v240 + v241);
  *(v240 + v241) = 0x8000000000000000;
  sub_23A9DB06C(v239, 0xD000000000000012, 0x800000023AA20300, v243);
  *(v240 + v241) = v332;
  swift_endAccess();
  v244 = sub_23AA0D434();
  swift_beginAccess();
  v245 = *(v240 + v241);
  v246 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v240 + v241);
  *(v240 + v241) = 0x8000000000000000;
  sub_23A9DB06C(v244, 0xD00000000000001ALL, 0x800000023AA20320, v246);
  *(v240 + v241) = v332;
  swift_endAccess();
  v247 = sub_23AA0D434();
  swift_beginAccess();
  v248 = *(v240 + v241);
  v249 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v240 + v241);
  *(v240 + v241) = 0x8000000000000000;
  sub_23A9DB06C(v247, 0xD00000000000001ALL, 0x800000023AA20340, v249);
  *(v240 + v241) = v332;
  swift_endAccess();
  v250 = sub_23AA0D434();
  swift_beginAccess();
  v251 = *(v240 + v241);
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v240 + v241);
  *(v240 + v241) = 0x8000000000000000;
  sub_23A9DB06C(v250, 0x65767275436D754ELL, 0xEC0000006C6C6157, v252);
  *(v240 + v241) = v332;
  swift_endAccess();
  v253 = v319;
  if (!*(v226 + 16))
  {
LABEL_133:
    v263 = *(v316 + 16);
    v264 = v313;
    v265 = 0;
    if (v263)
    {
      v266 = *(v253 + 52);
      v267 = v316 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
      v268 = *(v318 + 72);
      while (1)
      {
        v269 = v326;
        sub_23A95F358(v267, v326, type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v269 + v266, v264, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v269, type metadata accessor for CapturedRoom.Surface);
        v270 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        LODWORD(v269) = (*(*(v270 - 8) + 48))(v264, 1, v270);
        sub_23A8D50D0(v264, &qword_27DFAEB38, &unk_23AA11B60);
        if (v269 != 1)
        {
          v72 = __OFADD__(v265++, 1);
          if (v72)
          {
            break;
          }
        }

        v267 += v268;
        if (!--v263)
        {
          goto LABEL_140;
        }
      }

      __break(1u);
    }

LABEL_140:
    v271 = sub_23AA0D434();
    v272 = v322;
    v273 = v323;
    swift_beginAccess();
    v274 = *(v272 + v273);
    v275 = swift_isUniquelyReferenced_nonNull_native();
    v332 = *(v272 + v273);
    *(v272 + v273) = 0x8000000000000000;
    sub_23A9DB06C(v271, 0x65767275436D754ELL, 0xEE00776F646E6957, v275);
    *(v272 + v273) = v332;
    swift_endAccess();
    v276 = v319;
    if (*(v316 + 16))
    {
      if ((v265 * 100) >> 64 != (100 * v265) >> 63)
      {
        goto LABEL_174;
      }

      v277 = sub_23AA0D3C4();
      swift_beginAccess();
      v278 = *(v272 + v273);
      v279 = swift_isUniquelyReferenced_nonNull_native();
      v332 = *(v272 + v273);
      *(v272 + v273) = 0x8000000000000000;
      sub_23A9DB06C(v277, 0xD00000000000001FLL, 0x800000023AA203E0, v279);
      *(v272 + v273) = v332;
      swift_endAccess();
    }

    v280 = *(v315 + 16);
    if (v280)
    {
      v281 = 0;
      v282 = *(v276 + 52);
      v283 = v315 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
      v284 = *(v318 + 72);
      while (1)
      {
        v285 = v324;
        sub_23A95F358(v283, v324, type metadata accessor for CapturedRoom.Surface);
        v286 = v325;
        sub_23A8D5194(v285 + v282, v325, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v285, type metadata accessor for CapturedRoom.Surface);
        v287 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        LODWORD(v285) = (*(*(v287 - 8) + 48))(v286, 1, v287);
        sub_23A8D50D0(v286, &qword_27DFAEB38, &unk_23AA11B60);
        if (v285 != 1)
        {
          v72 = __OFADD__(v281++, 1);
          if (v72)
          {
            break;
          }
        }

        v283 += v284;
        if (!--v280)
        {
          goto LABEL_151;
        }
      }

      __break(1u);
    }

    v281 = 0;
LABEL_151:
    v288 = sub_23AA0D434();
    v289 = v322;
    v290 = v323;
    swift_beginAccess();
    v291 = *(v289 + v290);
    v292 = swift_isUniquelyReferenced_nonNull_native();
    v332 = *(v289 + v290);
    *(v289 + v290) = 0x8000000000000000;
    sub_23A9DB06C(v288, 0x65767275436D754ELL, 0xEC000000726F6F44, v292);
    *(v289 + v290) = v332;
    swift_endAccess();
    if (*(v315 + 16))
    {
      if ((v281 * 100) >> 64 != (100 * v281) >> 63)
      {
        goto LABEL_175;
      }

      v293 = sub_23AA0D3C4();
      v290 = v323;
      swift_beginAccess();
      v294 = *(v289 + v290);
      v295 = swift_isUniquelyReferenced_nonNull_native();
      v332 = *(v289 + v290);
      *(v289 + v290) = 0x8000000000000000;
      sub_23A9DB06C(v293, 0xD00000000000001BLL, 0x800000023AA203C0, v295);
      *(v289 + v290) = v332;
      swift_endAccess();
    }

    v296 = sub_23AA0D434();
    swift_beginAccess();
    v297 = *(v289 + v290);
    v298 = swift_isUniquelyReferenced_nonNull_native();
    v332 = *(v289 + v290);
    *(v289 + v290) = 0x8000000000000000;
    sub_23A9DB06C(v296, 0xD000000000000015, 0x800000023AA20360, v298);
    *(v289 + v290) = v332;
    swift_endAccess();
    v299 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v300 = sub_23AA0D104();
    v301 = [v299 initWithString_];

    swift_beginAccess();
    v302 = *(v289 + v290);
    v303 = swift_isUniquelyReferenced_nonNull_native();
    v332 = *(v289 + v290);
    *(v289 + v290) = 0x8000000000000000;
    sub_23A9DB06C(v301, v321, 0x800000023AA20380, v303);
    *(v289 + v290) = v332;
    swift_endAccess();
    v304 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    swift_beginAccess();
    v305 = *(v289 + v290);
    v306 = swift_isUniquelyReferenced_nonNull_native();
    v332 = *(v289 + v290);
    *(v289 + v290) = 0x8000000000000000;
    sub_23A9DB06C(v304, 0xD000000000000012, 0x800000023AA203A0, v306);
    *(v289 + v290) = v332;
    swift_endAccess();
  }

  if ((v229 * 100) >> 64 != (100 * v229) >> 63)
  {
    goto LABEL_172;
  }

  v254 = sub_23AA0D3C4();
  v255 = v322;
  v256 = v323;
  swift_beginAccess();
  v257 = *(v255 + v256);
  v258 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *(v255 + v256);
  *(v255 + v256) = 0x8000000000000000;
  sub_23A9DB06C(v254, 0xD000000000000021, 0x800000023AA20400, v258);
  *(v255 + v256) = v332;
  swift_endAccess();
  if ((v238 * 100) >> 64 == (100 * v238) >> 63)
  {
    v259 = *(v226 + 16);
    v260 = sub_23AA0D3C4();
    swift_beginAccess();
    v261 = *(v255 + v256);
    v262 = swift_isUniquelyReferenced_nonNull_native();
    v332 = *(v255 + v256);
    *(v255 + v256) = 0x8000000000000000;
    sub_23A9DB06C(v260, 0xD00000000000001BLL, 0x800000023AA20430, v262);
    *(v255 + v256) = v332;
    swift_endAccess();
    goto LABEL_133;
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void sub_23A95A2B4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23AA0CEC4();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0CF24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v20 = *&v5[*a2];
    v25 = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = v5;
    *(v21 + 24) = a1 & 1;
    aBlock[4] = a4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a5;
    v22 = _Block_copy(aBlock);
    v23 = v5;
    sub_23AA0CEE4();
    v27 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v19, v13, v22);
    _Block_release(v22);
    (*(v26 + 8))(v13, v10);
    (*(v15 + 8))(v19, v25);
  }
}

uint64_t sub_23A95A580(char *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v8 = sub_23AA0D104();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v28 = sub_23A95F8D0;
    v29 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_23A954DD4;
    v27 = &block_descriptor_190;
    v10 = _Block_copy(&aBlock);
    v11 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v10);

    sub_23A954A94();
    if (a2)
    {
      v12 = sub_23AA0D104();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      v28 = sub_23A95F8D0;
      v29 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v14 = &block_descriptor_183;
    }

    else
    {
      v12 = sub_23AA0D104();
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      v28 = sub_23A95F8D0;
      v29 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v14 = &block_descriptor_176;
    }

    v26 = sub_23A954DD4;
    v27 = v14;
    v16 = _Block_copy(&aBlock);
    v17 = v11;

    AnalyticsSendEventLazy();
    _Block_release(v16);
  }

  v18 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v19 = *&a1[v18];
  *&a1[v18] = MEMORY[0x277D84F98];

  v20 = sub_23AA0C064();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_offlineGenerationTimeStart;
  swift_beginAccess();
  sub_23A95F174(v7, &a1[v21]);
  return swift_endAccess();
}

id sub_23A95A8E0()
{
  v16 = sub_23AA0D524();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_23AA0CF24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v15 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_queue;
  v14[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  sub_23AA0CF14();
  v19 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v16);
  v8 = sub_23AA0D554();
  v9 = v17;
  *&v17[v15] = v8;
  v10 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_offlineGenerationTimeStart;
  v11 = sub_23AA0C064();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = type metadata accessor for AnalyticsOffline(0);
  v18.receiver = v9;
  v18.super_class = v12;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_23A95AD0C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_23AA0C054();
  v8 = sub_23AA0C064();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = *a2;
  swift_beginAccess();
  sub_23A95F174(v7, a1 + v9);
  return swift_endAccess();
}

void sub_23A95AE00(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v29 = a4;
  v30 = a2;
  v31 = a3;
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0CF24();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CapturedStructure(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v27[1] = *&v4[OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_queue];
    sub_23A95F358(a1, v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedStructure);
    v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v20 = v19 + v17;
    v28 = v11;
    v21 = (v19 + v17) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v4;
    sub_23A95F520(v18, v22 + v19, type metadata accessor for CapturedStructure);
    *(v22 + v20) = v29 & 1;
    v23 = v22 + v21;
    v24 = v31;
    *(v23 + 8) = v30;
    *(v23 + 16) = v24;
    aBlock[4] = sub_23A95F320;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_163;
    v25 = _Block_copy(aBlock);
    v26 = v4;

    sub_23AA0CEE4();
    v33 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v14, v10, v25);
    _Block_release(v25);
    (*(v7 + 8))(v10, v6);
    (*(v32 + 8))(v14, v28);
  }
}

uint64_t sub_23A95B1CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v323 = a5;
  v322 = a4;
  v321 = a3;
  v332 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v324 = &v318 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v340 = &v318 - v10;
  MEMORY[0x28223BE20](v11);
  v341 = &v318 - v12;
  v319 = type metadata accessor for CapturedRoom.Object(0);
  v336 = *(v319 - 8);
  v13 = *(v336 + 64);
  MEMORY[0x28223BE20](v319);
  v320 = &v318 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v318 - v16;
  v18 = type metadata accessor for CapturedRoom.Surface(0);
  v333 = *(v18 - 8);
  v334 = v18;
  v19 = *(v333 + 64);
  MEMORY[0x28223BE20](v18);
  v325 = &v318 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v339 = &v318 - v22;
  MEMORY[0x28223BE20](v23);
  v345 = &v318 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v318 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v318 - v30;
  v32 = sub_23AA0C064();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v318 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v318 - v38;
  v40 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_offlineMultiroomGenerationTimeStart;
  swift_beginAccess();
  sub_23A8D5194(a1 + v40, v31, &qword_27DFAEB30, &unk_23AA11B50);
  v41 = &unk_27DFAF000;
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_23A8D50D0(v31, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    (*(v33 + 32))(v39, v31, v32);
    sub_23AA0C054();
    sub_23AA0C014();
    v42 = sub_23AA0D3C4();
    v43 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    v44 = *(a1 + v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v346 = *(a1 + v43);
    *(a1 + v43) = 0x8000000000000000;
    v46 = v42;
    v41 = &unk_27DFAF000;
    sub_23A9DB06C(v46, 0xD000000000000021, 0x800000023AA200C0, isUniquelyReferenced_nonNull_native);
    *(a1 + v43) = v346;
    swift_endAccess();
    v47 = *(v33 + 8);
    v47(v36, v32);
    v47(v39, v32);
  }

  v48 = v332;
  v331 = v332[1];
  v49 = *(v331 + 16);
  v50 = sub_23AA0D434();
  v51 = v41[337];
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(a1 + v51);
  *(a1 + v51) = 0x8000000000000000;
  v327 = 0xD000000000000010;
  sub_23A9DB06C(v50, 0xD000000000000010, 0x800000023AA1FBC0, v53);
  *(a1 + v51) = v346;
  swift_endAccess();
  v330 = v48[3];
  v54 = *(v330 + 16);
  v55 = sub_23AA0D434();
  swift_beginAccess();
  v56 = *(a1 + v51);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(a1 + v51);
  *(a1 + v51) = 0x8000000000000000;
  sub_23A9DB06C(v55, 0xD000000000000012, 0x800000023AA1FBE0, v57);
  *(a1 + v51) = v346;
  swift_endAccess();
  v58 = *(v48[4] + 16);
  v59 = sub_23AA0D434();
  swift_beginAccess();
  v60 = *(a1 + v51);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(a1 + v51);
  *(a1 + v51) = 0x8000000000000000;
  v326 = 0xD000000000000013;
  sub_23A9DB06C(v59, 0xD000000000000013, 0x800000023AA1FC00, v61);
  *(a1 + v51) = v346;
  swift_endAccess();
  v344 = v48[5];
  v62 = *(v344 + 16);
  v63 = sub_23AA0D434();
  swift_beginAccess();
  v64 = *(a1 + v51);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(a1 + v51);
  *(a1 + v51) = 0x8000000000000000;
  sub_23A9DB06C(v63, 0xD000000000000012, 0x800000023AA1FC20, v65);
  v337 = a1;
  v338 = v51;
  *(a1 + v51) = v346;
  swift_endAccess();
  v66 = v48[2];
  v67 = *(v66 + 16);
  v328 = v66;
  v68 = 0;
  v69 = 0;
  if (!v67)
  {
    goto LABEL_13;
  }

  v70 = v66 + ((*(v333 + 80) + 32) & ~*(v333 + 80));
  v71 = *(v333 + 72);
  v72 = v344;
  while (1)
  {
    sub_23A95F358(v70, v27, type metadata accessor for CapturedRoom.Surface);
    v74 = *v27;
    sub_23A8D5320(v27, type metadata accessor for CapturedRoom.Surface);
    if ((v74 - 2) >= 4u)
    {
      if (v74)
      {
        v73 = __OFADD__(v68++, 1);
        if (v73)
        {
          goto LABEL_165;
        }

        goto LABEL_7;
      }

      v73 = __OFADD__(v69++, 1);
      if (v73)
      {
        break;
      }
    }

LABEL_7:
    v70 += v71;
    if (!--v67)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_13:
  v72 = v344;
LABEL_14:
  v75 = sub_23AA0D434();
  v76 = v337;
  v77 = v338;
  swift_beginAccess();
  v78 = *(v76 + v77);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v76 + v77);
  *(v76 + v77) = 0x8000000000000000;
  v329 = 0xD000000000000015;
  sub_23A9DB06C(v75, 0xD000000000000015, 0x800000023AA1FC40, v79);
  *(v76 + v77) = v346;
  swift_endAccess();
  v80 = sub_23AA0D434();
  swift_beginAccess();
  v81 = *(v76 + v77);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v76 + v77);
  *(v76 + v77) = 0x8000000000000000;
  sub_23A9DB06C(v80, 0xD000000000000014, 0x800000023AA1FC60, v82);
  *(v76 + v77) = v346;
  swift_endAccess();
  v343 = *(v72 + 16);
  if (!v343)
  {
    goto LABEL_44;
  }

  v83 = 0;
  v84 = v336;
  v342 = v72 + ((*(v336 + 80) + 32) & ~*(v336 + 80));
  v85 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v83 >= *(v72 + 16))
    {
      goto LABEL_158;
    }

    sub_23A95F358(v342 + *(v84 + 72) * v83, v17, type metadata accessor for CapturedRoom.Object);
    LOBYTE(v347) = *v17;
    v87 = sub_23AA0D1A4();
    if (!*(v85 + 16))
    {

LABEL_28:
      LOBYTE(v347) = *v17;
      v103 = sub_23AA0D1A4();
      v105 = v104;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v347 = v85;
      v107 = sub_23A9EDDFC(v103, v105);
      v109 = *(v85 + 16);
      v110 = (v108 & 1) == 0;
      v73 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (v73)
      {
        goto LABEL_159;
      }

      v112 = v108;
      if (*(v85 + 24) >= v111)
      {
        if ((v106 & 1) == 0)
        {
          v119 = v107;
          sub_23A90F200();
          v107 = v119;
          if ((v112 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_23A90A29C(v111, v106);
        v107 = sub_23A9EDDFC(v103, v105);
        if ((v112 & 1) != (v113 & 1))
        {
          goto LABEL_178;
        }
      }

      if ((v112 & 1) == 0)
      {
LABEL_34:
        v85 = v347;
        *(v347 + 8 * (v107 >> 6) + 64) |= 1 << v107;
        v114 = (*(v85 + 48) + 16 * v107);
        *v114 = v103;
        v114[1] = v105;
        *(*(v85 + 56) + 8 * v107) = 1;
        sub_23A8D5320(v17, type metadata accessor for CapturedRoom.Object);
        v115 = *(v85 + 16);
        v73 = __OFADD__(v115, 1);
        v116 = v115 + 1;
        if (v73)
        {
          goto LABEL_162;
        }

        *(v85 + 16) = v116;
        goto LABEL_18;
      }

LABEL_16:
      v86 = v107;

      v85 = v347;
      *(*(v347 + 56) + 8 * v86) = 1;
LABEL_17:
      sub_23A8D5320(v17, type metadata accessor for CapturedRoom.Object);
LABEL_18:
      v72 = v344;
      if (v343 == ++v83)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  sub_23A9EDDFC(v87, v88);
  v90 = v89;

  if ((v90 & 1) == 0)
  {
    goto LABEL_28;
  }

  LOBYTE(v347) = *v17;
  v91 = sub_23AA0D1A4();
  v93 = v92;
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v347 = v85;
  v96 = sub_23A9EDDFC(v91, v93);
  v97 = *(v85 + 16);
  v98 = (v95 & 1) == 0;
  v99 = v97 + v98;
  if (__OFADD__(v97, v98))
  {
    goto LABEL_163;
  }

  v100 = v95;
  if (*(v85 + 24) >= v99)
  {
    if (v94)
    {
      v84 = v336;
      if ((v95 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_23A90F200();
      v84 = v336;
      if ((v100 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_38;
  }

  sub_23A90A29C(v99, v94);
  v101 = sub_23A9EDDFC(v91, v93);
  if ((v100 & 1) != (v102 & 1))
  {
    goto LABEL_178;
  }

  v96 = v101;
  v84 = v336;
  if (v100)
  {
LABEL_38:
    v117 = *(*(v347 + 56) + 8 * v96);

    v118 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      goto LABEL_164;
    }

    v85 = v347;
    *(*(v347 + 56) + 8 * v96) = v118;
    goto LABEL_17;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v85 = MEMORY[0x277D84F98];
LABEL_45:
  v120 = v85 + 64;
  v121 = 1 << *(v85 + 32);
  v122 = -1;
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  v123 = v122 & *(v85 + 64);
  v124 = (v121 + 63) >> 6;
  v335 = 0x800000023AA1FC80;
  v342 = v85;

  v125 = 0;
  v126 = v337;
  while (2)
  {
    if (v123)
    {
      goto LABEL_55;
    }

LABEL_51:
    v131 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
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
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    if (v131 < v124)
    {
      v123 = *(v120 + 8 * v131);
      ++v125;
      if (v123)
      {
        v125 = v131;
LABEL_55:
        v132 = __clz(__rbit64(v123)) | (v125 << 6);
        v133 = (*(v342 + 48) + 16 * v132);
        v134 = *v133;
        v135 = v133[1];
        v136 = *(*(v342 + 56) + 8 * v132);
        v347 = 0xD00000000000001BLL;
        v348 = v335;
        MEMORY[0x23EE8FCA0](v134, v135);
        v138 = v347;
        v137 = v348;
        v343 = sub_23AA0D434();
        v139 = v338;
        swift_beginAccess();
        v140 = *(v126 + v139);
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v346 = *(v126 + v139);
        v142 = v346;
        *(v126 + v139) = 0x8000000000000000;
        v143 = sub_23A9EDDFC(v138, v137);
        v145 = v142[2];
        v146 = (v144 & 1) == 0;
        v73 = __OFADD__(v145, v146);
        v147 = v145 + v146;
        if (v73)
        {
          goto LABEL_166;
        }

        v148 = v144;
        if (v142[3] >= v147)
        {
          if (v141)
          {
            goto LABEL_60;
          }

          v153 = v143;
          sub_23A90F094();
          v143 = v153;
          if (v148)
          {
            goto LABEL_48;
          }

LABEL_61:
          v128 = v346;
          v346[(v143 >> 6) + 8] |= 1 << v143;
          v150 = (v128[6] + 16 * v143);
          *v150 = v138;
          v150[1] = v137;
          *(v128[7] + 8 * v143) = v343;
          v151 = v128[2];
          v73 = __OFADD__(v151, 1);
          v152 = v151 + 1;
          if (!v73)
          {
            v128[2] = v152;
            goto LABEL_49;
          }

          goto LABEL_172;
        }

        sub_23A909FF8(v147, v141);
        v143 = sub_23A9EDDFC(v138, v137);
        if ((v148 & 1) != (v149 & 1))
        {
          goto LABEL_178;
        }

LABEL_60:
        if ((v148 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_48:
        v127 = v143;

        v128 = v346;
        v129 = v346[7];
        v130 = *(v129 + 8 * v127);
        *(v129 + 8 * v127) = v343;

LABEL_49:
        v123 &= v123 - 1;
        v126 = v337;
        *(v337 + v338) = v128;
        swift_endAccess();
        continue;
      }

      goto LABEL_51;
    }

    break;
  }

  v154 = v344;
  v155 = *(v344 + 16);
  if (v155)
  {
    v156 = 0;
    v157 = *(v319 + 36);
    v158 = v344 + ((*(v336 + 80) + 32) & ~*(v336 + 80));
    v159 = *(v336 + 72);
    v160 = v320;
    while (1)
    {
      sub_23A95F358(v158, v160, type metadata accessor for CapturedRoom.Object);
      v161 = *(v160 + v157);

      sub_23A8D5320(v160, type metadata accessor for CapturedRoom.Object);
      v162 = *(v161 + 16);

      if (v162)
      {
        v73 = __OFADD__(v156++, 1);
        if (v73)
        {
          break;
        }
      }

      v158 += v159;
      if (!--v155)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
  }

  v156 = 0;
LABEL_73:
  v163 = sub_23AA0D434();
  v164 = v337;
  v165 = v338;
  swift_beginAccess();
  v166 = *(v164 + v165);
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v164 + v165);
  *(v164 + v165) = 0x8000000000000000;
  sub_23A9DB06C(v163, 0xD00000000000001FLL, 0x800000023AA1FCA0, v167);
  *(v164 + v165) = v346;
  swift_endAccess();
  if (*(v154 + 16))
  {
    if ((v156 * 100) >> 64 == (100 * v156) >> 63)
    {
      v168 = sub_23AA0D3C4();
      v165 = v338;
      swift_beginAccess();
      v169 = *(v164 + v165);
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v346 = *(v164 + v165);
      *(v164 + v165) = 0x8000000000000000;
      sub_23A9DB06C(v168, 0xD000000000000030, 0x800000023AA20080, v170);
      *(v164 + v165) = v346;
      swift_endAccess();
      goto LABEL_76;
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_76:
  v171 = v332;
  v172 = v332[6];
  v173 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v174 = *(v164 + v165);
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v164 + v165);
  *(v164 + v165) = 0x8000000000000000;
  sub_23A9DB06C(v173, 0xD000000000000011, 0x800000023AA1FCC0, v175);
  *(v164 + v165) = v346;
  swift_endAccess();
  v176 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v177 = *(v164 + v165);
  v178 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v164 + v165);
  *(v164 + v165) = 0x8000000000000000;
  sub_23A9DB06C(v176, v327, 0x800000023AA1FCE0, v178);
  *(v164 + v165) = v346;
  swift_endAccess();
  v179 = *(v172 + 16);
  if (!v179)
  {
    goto LABEL_87;
  }

  v180 = 0;
  v181 = 0;
  v182 = (v172 + ((*(v333 + 80) + 32) & ~*(v333 + 80)));
  v184 = 0.0;
  v185 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    v183 = *(v334 + 60);
    v186 = *(*(v182 + v183) + 16);
    if (!v186)
    {
LABEL_82:
      v184 = v184 + vmuls_lane_f32(COERCE_FLOAT(*v182[2].f32), v182[2], 1);
      v182 = (v182 + *(v333 + 72));
      if (!--v179)
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

  v73 = __OFADD__(v181++, 1);
  if (!v73)
  {
    if (v186 > v180)
    {
      v180 = *(*(v182 + v183) + 16);
    }

    if (v186 < v185)
    {
      v185 = *(*(v182 + v183) + 16);
    }

    goto LABEL_82;
  }

  __break(1u);
LABEL_87:
  v187 = sub_23AA0D3C4();
  v188 = v338;
  swift_beginAccess();
  v189 = *(v164 + v188);
  v190 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v164 + v188);
  *(v164 + v188) = 0x8000000000000000;
  sub_23A9DB06C(v187, 0xD00000000000001BLL, 0x800000023AA1FD00, v190);
  *(v164 + v188) = v346;
  swift_endAccess();
  v191 = sub_23AA0D434();
  swift_beginAccess();
  v192 = *(v164 + v188);
  v193 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v164 + v188);
  *(v164 + v188) = 0x8000000000000000;
  sub_23A9DB06C(v191, 0xD00000000000001CLL, 0x800000023AA1FD20, v193);
  *(v164 + v188) = v346;
  swift_endAccess();
  v194 = sub_23AA0D434();
  swift_beginAccess();
  v195 = *(v164 + v188);
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v164 + v188);
  *(v164 + v188) = 0x8000000000000000;
  sub_23A9DB06C(v194, 0xD000000000000024, 0x800000023AA1FD40, v196);
  *(v164 + v188) = v346;
  swift_endAccess();
  v197 = sub_23AA0D434();
  swift_beginAccess();
  v198 = *(v164 + v188);
  v199 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v164 + v188);
  *(v164 + v188) = 0x8000000000000000;
  sub_23A9DB06C(v197, 0xD000000000000024, 0x800000023AA1FD70, v199);
  *(v164 + v188) = v346;
  swift_endAccess();
  v200 = v332[7];
  v201 = *(v200 + 16);
  if (!v201)
  {
    goto LABEL_111;
  }

  v202 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v208 = (v200 + 32);
  v209 = v201;
  while (2)
  {
    v211 = *v208;
    v208 += 160;
    v210 = v211;
    if (v211 <= 2)
    {
      if (v210)
      {
        if (v210 == 1)
        {
          v73 = __OFADD__(v206++, 1);
          if (v73)
          {
            goto LABEL_171;
          }
        }

        else
        {
          v73 = __OFADD__(v205++, 1);
          if (v73)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        v73 = __OFADD__(v207++, 1);
        if (v73)
        {
          goto LABEL_168;
        }
      }

      goto LABEL_90;
    }

    if (v210 == 3)
    {
      v73 = __OFADD__(v204++, 1);
      if (v73)
      {
        goto LABEL_170;
      }

      goto LABEL_90;
    }

    if (v210 == 4)
    {
      v73 = __OFADD__(v203++, 1);
      if (v73)
      {
        goto LABEL_169;
      }

      goto LABEL_90;
    }

    v73 = __OFADD__(v202++, 1);
    if (!v73)
    {
LABEL_90:
      if (!--v209)
      {
        goto LABEL_111;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_111:
  v212 = sub_23AA0D434();
  v213 = v337;
  v214 = v338;
  swift_beginAccess();
  v215 = *(v213 + v214);
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v213 + v214);
  *(v213 + v214) = 0x8000000000000000;
  sub_23A9DB06C(v212, v326, 0x800000023AA1FDA0, v216);
  *(v213 + v214) = v346;
  swift_endAccess();
  v217 = sub_23AA0D434();
  swift_beginAccess();
  v218 = *(v213 + v214);
  v219 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v213 + v214);
  *(v213 + v214) = 0x8000000000000000;
  sub_23A9DB06C(v217, 0xD00000000000001DLL, 0x800000023AA1FDC0, v219);
  *(v213 + v214) = v346;
  swift_endAccess();
  v220 = sub_23AA0D434();
  swift_beginAccess();
  v221 = *(v213 + v214);
  v222 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v213 + v214);
  *(v213 + v214) = 0x8000000000000000;
  sub_23A9DB06C(v220, 0xD00000000000001ALL, 0x800000023AA1FDE0, v222);
  *(v213 + v214) = v346;
  swift_endAccess();
  v223 = sub_23AA0D434();
  swift_beginAccess();
  v224 = *(v213 + v214);
  v225 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v213 + v214);
  *(v213 + v214) = 0x8000000000000000;
  sub_23A9DB06C(v223, 0xD00000000000001BLL, 0x800000023AA1FE00, v225);
  *(v213 + v214) = v346;
  swift_endAccess();
  v226 = sub_23AA0D434();
  swift_beginAccess();
  v227 = *(v213 + v214);
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v213 + v214);
  *(v213 + v214) = 0x8000000000000000;
  sub_23A9DB06C(v226, 0xD00000000000001ALL, 0x800000023AA1FE20, v228);
  *(v213 + v214) = v346;
  swift_endAccess();
  v229 = sub_23AA0D434();
  swift_beginAccess();
  v230 = *(v213 + v214);
  v231 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v213 + v214);
  *(v213 + v214) = 0x8000000000000000;
  sub_23A9DB06C(v229, 0xD00000000000001DLL, 0x800000023AA1FE40, v231);
  *(v213 + v214) = v346;
  swift_endAccess();
  v232 = sub_23AA0D434();
  swift_beginAccess();
  v233 = *(v213 + v214);
  v234 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v213 + v214);
  *(v213 + v214) = 0x8000000000000000;
  v336 = 0xD000000000000019;
  sub_23A9DB06C(v232, 0xD000000000000019, 0x800000023AA1FE60, v234);
  *(v213 + v214) = v346;
  swift_endAccess();
  v235 = *(v331 + 16);
  if (!v235)
  {
    v246 = 0;
    goto LABEL_129;
  }

  v236 = 0;
  v237 = 0;
  v238 = v334;
  v239 = v331 + ((*(v333 + 80) + 32) & ~*(v333 + 80));
  v343 = *(v333 + 72);
  v344 = 0;
  v240 = 0x7FFFFFFFFFFFFFFFLL;
  v241 = v345;
  do
  {
    sub_23A95F358(v239, v241, type metadata accessor for CapturedRoom.Surface);
    v242 = *(*(v241 + *(v238 + 60)) + 16);
    if (v242)
    {
      v73 = __OFADD__(v237++, 1);
      v243 = v341;
      if (v73)
      {
        goto LABEL_160;
      }

      v244 = v344;
      if (v242 > v344)
      {
        v244 = *(*(v241 + *(v238 + 60)) + 16);
      }

      v344 = v244;
      if (v242 < v240)
      {
        v240 = v242;
      }
    }

    else
    {
      v243 = v341;
    }

    sub_23A8D5194(v241 + *(v238 + 52), v243, &qword_27DFAEB38, &unk_23AA11B60);
    v245 = type metadata accessor for CapturedRoom.Surface.Curve(0);
    if ((*(*(v245 - 8) + 48))(v243, 1, v245) == 1)
    {
      sub_23A8D5320(v241, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D50D0(v243, &qword_27DFAEB38, &unk_23AA11B60);
    }

    else
    {
      sub_23A8D50D0(v243, &qword_27DFAEB38, &unk_23AA11B60);
      v73 = __OFADD__(v236++, 1);
      if (v73)
      {
        goto LABEL_161;
      }

      sub_23A8D5320(v345, type metadata accessor for CapturedRoom.Surface);
    }

    v239 += v343;
    --v235;
  }

  while (v235);
  v246 = v236;
  if (!v237)
  {
LABEL_129:
    v237 = 0;
  }

  v247 = sub_23AA0D434();
  v248 = v337;
  v249 = v338;
  swift_beginAccess();
  v250 = *(v248 + v249);
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v248 + v249);
  *(v248 + v249) = 0x8000000000000000;
  sub_23A9DB06C(v247, 0xD00000000000001BLL, 0x800000023AA1FE80, v251);
  *(v248 + v249) = v346;
  swift_endAccess();
  v252 = sub_23AA0D434();
  swift_beginAccess();
  v253 = *(v248 + v249);
  v254 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v248 + v249);
  *(v248 + v249) = 0x8000000000000000;
  sub_23A9DB06C(v252, 0xD000000000000023, 0x800000023AA1FEA0, v254);
  *(v248 + v249) = v346;
  swift_endAccess();
  v255 = sub_23AA0D434();
  swift_beginAccess();
  v256 = *(v248 + v249);
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v248 + v249);
  *(v248 + v249) = 0x8000000000000000;
  sub_23A9DB06C(v255, 0xD000000000000023, 0x800000023AA1FED0, v257);
  *(v248 + v249) = v346;
  swift_endAccess();
  v258 = sub_23AA0D434();
  swift_beginAccess();
  v259 = *(v248 + v249);
  v260 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v248 + v249);
  *(v248 + v249) = 0x8000000000000000;
  sub_23A9DB06C(v258, v329, 0x800000023AA1FF00, v260);
  *(v248 + v249) = v346;
  swift_endAccess();
  v261 = v331;
  v262 = v325;
  v263 = v334;
  if (!*(v331 + 16))
  {
LABEL_134:
    v273 = *(v330 + 16);
    if (v273)
    {
      v274 = 0;
      v275 = *(v263 + 52);
      v276 = v330 + ((*(v333 + 80) + 32) & ~*(v333 + 80));
      v277 = *(v333 + 72);
      v278 = v340;
      while (1)
      {
        v279 = v339;
        sub_23A95F358(v276, v339, type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v279 + v275, v278, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v279, type metadata accessor for CapturedRoom.Surface);
        v280 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        LODWORD(v279) = (*(*(v280 - 8) + 48))(v278, 1, v280);
        sub_23A8D50D0(v278, &qword_27DFAEB38, &unk_23AA11B60);
        if (v279 != 1)
        {
          v73 = __OFADD__(v274++, 1);
          if (v73)
          {
            break;
          }
        }

        v276 += v277;
        if (!--v273)
        {
          goto LABEL_142;
        }
      }

      __break(1u);
    }

    v274 = 0;
LABEL_142:
    v281 = sub_23AA0D434();
    v282 = v337;
    v283 = v338;
    swift_beginAccess();
    v284 = *(v282 + v283);
    v285 = swift_isUniquelyReferenced_nonNull_native();
    v346 = *(v282 + v283);
    *(v282 + v283) = 0x8000000000000000;
    sub_23A9DB06C(v281, 0xD000000000000017, 0x800000023AA1FF20, v285);
    *(v282 + v283) = v346;
    swift_endAccess();
    v286 = v334;
    v287 = v324;
    if (*(v330 + 16))
    {
      if ((v274 * 100) >> 64 != (100 * v274) >> 63)
      {
        goto LABEL_176;
      }

      v288 = sub_23AA0D3C4();
      swift_beginAccess();
      v289 = *(v282 + v283);
      v290 = swift_isUniquelyReferenced_nonNull_native();
      v346 = *(v282 + v283);
      *(v282 + v283) = 0x8000000000000000;
      sub_23A9DB06C(v288, 0xD000000000000028, 0x800000023AA1FFF0, v290);
      *(v282 + v283) = v346;
      swift_endAccess();
    }

    v291 = *(v328 + 16);
    if (v291)
    {
      v292 = 0;
      v293 = *(v286 + 52);
      v294 = v328 + ((*(v333 + 80) + 32) & ~*(v333 + 80));
      v295 = *(v333 + 72);
      while (1)
      {
        sub_23A95F358(v294, v262, type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v262 + v293, v287, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v262, type metadata accessor for CapturedRoom.Surface);
        v296 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        v297 = (*(*(v296 - 8) + 48))(v287, 1, v296);
        sub_23A8D50D0(v287, &qword_27DFAEB38, &unk_23AA11B60);
        if (v297 != 1)
        {
          v73 = __OFADD__(v292++, 1);
          if (v73)
          {
            break;
          }
        }

        v294 += v295;
        if (!--v291)
        {
          goto LABEL_153;
        }
      }

      __break(1u);
    }

    v292 = 0;
LABEL_153:
    v298 = sub_23AA0D434();
    v299 = v337;
    v300 = v338;
    swift_beginAccess();
    v301 = *(v299 + v300);
    v302 = swift_isUniquelyReferenced_nonNull_native();
    v346 = *(v299 + v300);
    *(v299 + v300) = 0x8000000000000000;
    sub_23A9DB06C(v298, v329, 0x800000023AA1FF40, v302);
    *(v299 + v300) = v346;
    swift_endAccess();
    if (*(v328 + 16))
    {
      if ((v292 * 100) >> 64 != (100 * v292) >> 63)
      {
        goto LABEL_177;
      }

      v303 = sub_23AA0D3C4();
      swift_beginAccess();
      v304 = *(v299 + v300);
      v305 = swift_isUniquelyReferenced_nonNull_native();
      v346 = *(v299 + v300);
      *(v299 + v300) = 0x8000000000000000;
      sub_23A9DB06C(v303, 0xD000000000000024, 0x800000023AA1FFC0, v305);
      *(v299 + v300) = v346;
      swift_endAccess();
    }

    v306 = sub_23AA0D434();
    swift_beginAccess();
    v307 = *(v299 + v300);
    v308 = swift_isUniquelyReferenced_nonNull_native();
    v346 = *(v299 + v300);
    *(v299 + v300) = 0x8000000000000000;
    sub_23A9DB06C(v306, 0xD00000000000001ELL, 0x800000023AA1FF60, v308);
    *(v299 + v300) = v346;
    swift_endAccess();
    v309 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v310 = sub_23AA0D104();
    v311 = [v309 initWithString_];

    swift_beginAccess();
    v312 = *(v299 + v300);
    v313 = swift_isUniquelyReferenced_nonNull_native();
    v346 = *(v299 + v300);
    *(v299 + v300) = 0x8000000000000000;
    sub_23A9DB06C(v311, v336, 0x800000023AA1FF80, v313);
    *(v299 + v300) = v346;
    swift_endAccess();
    v314 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    swift_beginAccess();
    v315 = *(v299 + v300);
    v316 = swift_isUniquelyReferenced_nonNull_native();
    v346 = *(v299 + v300);
    *(v299 + v300) = 0x8000000000000000;
    sub_23A9DB06C(v314, 0xD00000000000001BLL, 0x800000023AA1FFA0, v316);
    *(v299 + v300) = v346;
    swift_endAccess();
  }

  if ((v237 * 100) >> 64 != (100 * v237) >> 63)
  {
    goto LABEL_174;
  }

  v264 = sub_23AA0D3C4();
  v265 = v337;
  v266 = v338;
  swift_beginAccess();
  v267 = *(v265 + v266);
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *(v265 + v266);
  *(v265 + v266) = 0x8000000000000000;
  sub_23A9DB06C(v264, 0xD00000000000002ALL, 0x800000023AA20020, v268);
  *(v265 + v266) = v346;
  swift_endAccess();
  if ((v246 * 100) >> 64 == (100 * v246) >> 63)
  {
    v269 = *(v261 + 16);
    v270 = sub_23AA0D3C4();
    swift_beginAccess();
    v271 = *(v265 + v266);
    v272 = swift_isUniquelyReferenced_nonNull_native();
    v346 = *(v265 + v266);
    *(v265 + v266) = 0x8000000000000000;
    sub_23A9DB06C(v270, 0xD000000000000024, 0x800000023AA20050, v272);
    *(v265 + v266) = v346;
    swift_endAccess();
    goto LABEL_134;
  }

LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

uint64_t sub_23A95D34C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock[-1] - v4;
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v6 = sub_23AA0D104();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    aBlock[4] = sub_23A95F8D0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A954DD4;
    aBlock[3] = &block_descriptor_157;
    v8 = _Block_copy(aBlock);
    v9 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v8);
  }

  v10 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v11 = *&a1[v10];
  *&a1[v10] = MEMORY[0x277D84F98];

  v12 = sub_23AA0C064();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_offlineMultiroomGenerationTimeStart;
  swift_beginAccess();
  sub_23A95F174(v5, &a1[v13]);
  return swift_endAccess();
}

id sub_23A95D54C()
{
  v16 = sub_23AA0D524();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_23AA0CF24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v15 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_queue;
  v14[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  sub_23AA0CF14();
  v19 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v16);
  v8 = sub_23AA0D554();
  v9 = v17;
  *&v17[v15] = v8;
  v10 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_offlineMultiroomGenerationTimeStart;
  v11 = sub_23AA0C064();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = type metadata accessor for AnalyticsOfflineMultiroom(0);
  v18.receiver = v9;
  v18.super_class = v12;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_23A95D920(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A95D958()
{
  sub_23A8ECAC8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A95DA78(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23AA0CEC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23AA0CF24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v24[1] = *&v5[*a1];
    v25 = v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v5;
    *(v21 + 24) = a2;
    aBlock[4] = a4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a5;
    v22 = _Block_copy(aBlock);
    v23 = v5;
    sub_23AA0CEE4();
    v26 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v20, v14, v22);
    _Block_release(v22);
    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v20, v25);
  }
}

uint64_t sub_23A95DD44(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray;
  v5 = *(a1 + OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v4) = v5;
  if ((result & 1) == 0)
  {
    result = sub_23A939D64(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *(a1 + v4) = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_23A939D64((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = a2;
  *(a1 + v4) = v5;
  return result;
}

uint64_t sub_23A95DE30(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray);
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 <= 3)
    {
      v4 = 0;
      v5 = 0.0;
LABEL_8:
      v9 = v3 - v4;
      v10 = (v2 + 8 * v4 + 32);
      do
      {
        v11 = *v10++;
        v5 = v5 + v11;
        --v9;
      }

      while (v9);
      goto LABEL_10;
    }

    v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    v6 = (v2 + 48);
    v5 = 0.0;
    v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v8 = *v6;
      v5 = v5 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
      v6 += 4;
      v7 -= 4;
    }

    while (v7);
    if (v3 != v4)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v12 = sub_23AA0D434();
  v13 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v14 = *(a1 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_23A9DB06C(v12, 0x65695652416D754ELL, 0xEF65746164705577, isUniquelyReferenced_nonNull_native);
  *(a1 + v13) = v27;
  swift_endAccess();
  if (v3)
  {
    v16 = sub_23AA0D3C4();
    swift_beginAccess();
    v17 = *(a1 + v13);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a1 + v13);
    *(a1 + v13) = 0x8000000000000000;
    sub_23A9DB06C(v16, 0xD000000000000012, 0x800000023AA1FB50, v18);
    *(a1 + v13) = v28;
    swift_endAccess();
  }

  sub_23A8D6C58(0, &qword_27DFAFB60, 0x277CCABB0);
  v19 = *(a1 + OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_voiceOver);
  v20 = sub_23AA0D624();
  swift_beginAccess();
  v21 = *(a1 + v13);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_23A9DB06C(v20, 0xD000000000000014, 0x800000023AA1FB30, v22);
  *(a1 + v13) = v29;
  swift_endAccess();
  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v24 = *(a1 + v13);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_23A9DB06C(v23, 0x504149556C6C6143, 0xE900000000000049, v25);
  *(a1 + v13) = v30;
  return swift_endAccess();
}

uint64_t sub_23A95E150(char *a1)
{
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v2 = sub_23AA0D104();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v10[4] = sub_23A95F8D0;
    v10[5] = v3;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_23A954DD4;
    v10[3] = &block_descriptor_126;
    v4 = _Block_copy(v10);
    v5 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v4);
  }

  v6 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = MEMORY[0x277D84F98];

  v8 = *&a1[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray];
  *&a1[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray] = MEMORY[0x277D84F90];

  a1[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_voiceOver] = 0;
  return result;
}

id sub_23A95E2B4()
{
  v14 = sub_23AA0D524();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v14);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23AA0CF24();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v13 = OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_queue;
  v9 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v12[1] = "AveARViewFrameRate";
  v12[2] = v9;
  sub_23AA0CF14();
  v16 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v14);
  *&v0[v13] = sub_23AA0D554();
  *&v0[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_voiceOver] = 0;
  v10 = type metadata accessor for AnalyticsUI();
  v15.receiver = v0;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_23A95E580()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray);
}

void sub_23A95E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23AA0CEC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CF24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v21[1] = *&v3[OBJC_IVAR____TtC8RoomPlan13AnalyticsData_queue];
    v22 = v15;
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = a1;
    v18[4] = a2;
    v18[5] = a3;
    aBlock[4] = sub_23A95F020;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_113;
    v19 = _Block_copy(aBlock);
    v20 = v3;

    sub_23AA0CEE4();
    v23 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v17, v11, v19);
    _Block_release(v19);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v17, v22);
  }
}

uint64_t sub_23A95E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = sub_23AA0D104();
  v8 = [v6 initWithString_];

  v9 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v10 = *(a1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_23A9DB06C(v8, 0xD000000000000013, 0x800000023AA1FAC0, isUniquelyReferenced_nonNull_native);
  *(a1 + v9) = v19;
  swift_endAccess();
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v13 = *(a1 + v9);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_23A9DB06C(v12, 0x7372655661746144, 0xEB000000006E6F69, v14);
  *(a1 + v9) = v20;
  swift_endAccess();
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v16 = *(a1 + v9);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_23A9DB06C(v15, 0x726F7078456D754ELL, 0xED00005A44535574, v17);
  *(a1 + v9) = v21;
  return swift_endAccess();
}

uint64_t sub_23A95EB74(char *a1)
{
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v2 = sub_23AA0D104();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v9[4] = sub_23A95F014;
    v9[5] = v3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_23A954DD4;
    v9[3] = &block_descriptor_107;
    v4 = _Block_copy(v9);
    v5 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v4);
  }

  v6 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = MEMORY[0x277D84F98];
}

id sub_23A95ECB0()
{
  v14 = sub_23AA0D524();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_23AA0CF24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v13 = OBJC_IVAR____TtC8RoomPlan13AnalyticsData_queue;
  v12[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  sub_23AA0CF14();
  v17 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v14);
  v8 = sub_23AA0D554();
  v9 = v15;
  *&v15[v13] = v8;
  v10 = type metadata accessor for AnalyticsData();
  v16.receiver = v9;
  v16.super_class = v10;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_23A95EFBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A95F02C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A95F074(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A95F0D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A95F11C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23A95F174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A95F1E4()
{
  v1 = (type metadata accessor for CapturedStructure(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = *(v5 + 2);

  v9 = *(v5 + 3);

  v10 = *(v5 + 4);

  v11 = *(v5 + 5);

  v12 = *(v5 + 6);

  v13 = *(v5 + 7);

  v14 = v1[14];
  v15 = sub_23AA0C0E4();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);
  v16 = *(v0 + v4 + 16);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_23A95F358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A95F3C0()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = v1[12];
  v12 = sub_23AA0C0E4();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = *(v0 + v3 + v1[13]);

  v14 = *(v0 + v3 + v1[16]);

  v15 = (v0 + v3 + v1[17]);
  if (v15[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v16 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 16);

  return MEMORY[0x2821FE8E8](v0, v16 + 24, v2 | 7);
}

uint64_t sub_23A95F520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A95F5B4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v2 + 16);
  v7 = *(v2 + v5);
  v8 = v2 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);

  return a2(v6, v2 + v4, v7, v9, v10);
}

uint64_t sub_23A95F670()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_23A95F6BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_109Tm(uint64_t a1)
{
  v3 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A95F758()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_errorType);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_23A95F98C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000746ELL;
  v3 = 0x756F43656E616C70;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x72616E616C507369;
  if (a1 != 5)
  {
    v6 = 1635017060;
    v5 = 0xE400000000000000;
  }

  v7 = 0x746867696568;
  if (a1 != 3)
  {
    v7 = 0x73656E616C70;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0x726F466C65786970;
  v9 = 0xEB0000000074616DLL;
  if (a1 != 1)
  {
    v8 = 0x6874646977;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v8 = 0x756F43656E616C70;
    v9 = 0xEA0000000000746ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB0000000074616DLL;
        if (v10 != 0x726F466C65786970)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x6874646977)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x72616E616C507369)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v10 != 1635017060)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    if (a2 == 3)
    {
      if (v10 != 0x746867696568)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x73656E616C70;
  }

  if (v10 != v3)
  {
LABEL_36:
    v12 = sub_23AA0DBD4();
    goto LABEL_37;
  }

LABEL_33:
  if (v11 != v2)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_23A95FB90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696E6964;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6576697773;
    }

    else
    {
      v4 = 0x69746E6564696E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC00000064656966;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6F6F7473;
    }

    else
    {
      v4 = 0x676E696E6964;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6C6576697773;
  if (a2 != 2)
  {
    v8 = 0x69746E6564696E75;
    v7 = 0xEC00000064656966;
  }

  if (a2)
  {
    v2 = 0x6C6F6F7473;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A95FCD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6465706168536CLL;
    }

    else
    {
      v3 = 0x75676E6174636572;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xEB0000000072616CLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000023AA1CFD0;
  }

  else if (a1 == 3)
  {
    v3 = 0x6553656C676E6973;
    v4 = 0xEA00000000007461;
  }

  else
  {
    v3 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465706168536CLL;
    }

    else
    {
      v9 = 0x75676E6174636572;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEB0000000072616CLL;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6553656C676E6973;
    v6 = 0xEA00000000007461;
    if (a2 != 3)
    {
      v5 = 0x69746E6564696E75;
      v6 = 0xEC00000064656966;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000023AA1CFD0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_23AA0DBD4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_23A95FE80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006DLL;
  v3 = 0x726F66736E617274;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1702063984;
    }

    else
    {
      v5 = 0x726F66736E617274;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE90000000000006DLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x69736E6972746E69;
    v6 = 0xEA00000000007363;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7365526567616D69;
    }

    else
    {
      v5 = 0x676E696B63617274;
    }

    if (v4 == 3)
    {
      v6 = 0xEF6E6F6974756C6FLL;
    }

    else
    {
      v6 = 0xED00006574617453;
    }
  }

  v7 = 0x69736E6972746E69;
  v8 = 0xEA00000000007363;
  v9 = 0x7365526567616D69;
  v10 = 0xEF6E6F6974756C6FLL;
  if (a2 != 3)
  {
    v9 = 0x676E696B63617274;
    v10 = 0xED00006574617453;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 1702063984;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23AA0DBD4();
  }

  return v13 & 1;
}

uint64_t sub_23A96002C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0x6465706168536CLL;
  if (a1 == 2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v3 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000023AA1CE10;
  if (!a1)
  {
    v5 = 0x75676E6174636572;
    v6 = 0xEB0000000072616CLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6465706168536CLL;
    }

    else
    {
      v11 = 0x69746E6564696E75;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xEC00000064656966;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x75676E6174636572;
    }

    if (a2)
    {
      v10 = 0x800000023AA1CE10;
    }

    else
    {
      v10 = 0xEB0000000072616CLL;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_23AA0DBD4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_23A960188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6169746E65746F70;
  v5 = 0xED00006C6C61576CLL;
  v6 = 0xE400000000000000;
  v7 = 1819042167;
  if (a1 != 4)
  {
    v7 = 0x776F646E6977;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x7463656A626FLL;
  if (a1 != 1)
  {
    v9 = 0x676E696E65706FLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1919905636;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED00006C6C61576CLL;
      if (v10 != 0x6169746E65746F70)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1819042167)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x776F646E6977)
      {
LABEL_34:
        v13 = sub_23AA0DBD4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7463656A626FLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E696E65706FLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1919905636)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_23A960360(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006D6FLL;
  v3 = 0x6F52676E6976696CLL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6E65686374696BLL;
  v7 = 0x6F52676E696E6964;
  if (a1 == 4)
  {
    v8 = 0xEA00000000006D6FLL;
  }

  else
  {
    v7 = 0x69746E6564696E75;
    v8 = 0xEC00000064656966;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6D6F6F72646562;
  if (a1 != 1)
  {
    v10 = 0x6D6F6F7268746162;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x6F52676E6976696CLL;
    v9 = 0xEA00000000006D6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6E65686374696BLL)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      if (v11 != 0x6F52676E696E6964)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEC00000064656966;
      if (v11 != 0x69746E6564696E75)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6D6F6F72646562)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v2 = 0xE800000000000000;
      v3 = 0x6D6F6F7268746162;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_23AA0DBD4();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_23A960540(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 808989042;
    }

    else
    {
      v3 = 808923762;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 3160434;
    }

    else
    {
      v3 = 12402;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 12402;
  v7 = 808989042;
  if (a2 != 2)
  {
    v7 = 808923762;
  }

  if (a2)
  {
    v6 = 3160434;
    v5 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23AA0DBD4();
  }

  return v10 & 1;
}

uint64_t sub_23A96064C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x7475626972747461;
    v10 = 0xEA00000000007365;
    if (a1 != 6)
    {
      v9 = 0x79726F7473;
      v10 = 0xE500000000000000;
    }

    v11 = 0x696669746E656469;
    v12 = 0xEA00000000007265;
    if (a1 != 4)
    {
      v11 = 0xD000000000000010;
      v12 = 0x800000023AA1CCE0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6F69736E656D6964;
    v5 = 0xEA0000000000736ELL;
    if (a1 != 2)
    {
      v4 = 0x726F66736E617274;
      v5 = 0xE90000000000006DLL;
    }

    v6 = 0x6E656469666E6F63;
    if (a1)
    {
      v3 = 0xEA00000000006563;
    }

    else
    {
      v6 = 0x79726F6765746163;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000007365;
        if (v7 != 0x7475626972747461)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x79726F7473)
        {
LABEL_47:
          v14 = sub_23AA0DBD4();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEA00000000007265;
      if (v7 != 0x696669746E656469)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000023AA1CCE0;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA0000000000736ELL;
      if (v7 != 0x6F69736E656D6964)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE90000000000006DLL;
      if (v7 != 0x726F66736E617274)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006563;
    if (v7 != 0x6E656469666E6F63)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x79726F6765746163)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_23A9608FC()
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  return sub_23AA0DD54();
}

uint64_t sub_23A960950()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A960A4C()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A960B5C()
{
  sub_23AA0D1D4();
}

uint64_t sub_23A960C9C()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A960DB8()
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  return sub_23AA0DD54();
}

uint64_t sub_23A960E08()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A960F00()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A96100C()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

BOOL sub_23A9611B0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_23A9611E0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_23A96120C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_23A9612F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_23A8CA1F4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23A961344()
{
  *v0;
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A961430@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A963350();
  *a2 = result;
  return result;
}

void sub_23A961460(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1919905636;
  v5 = 0xED00006C6C61576CLL;
  v6 = 0x6169746E65746F70;
  v7 = 0xE400000000000000;
  v8 = 1819042167;
  if (v2 != 4)
  {
    v8 = 0x776F646E6977;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x7463656A626FLL;
  if (v2 != 1)
  {
    v10 = 0x676E696E65706FLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_23A961514(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465676E616863;
  if (v2 != 1)
  {
    v3 = 0x6465766F6D6572;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6465646461;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x6465676E616863;
  if (*a2 != 1)
  {
    v6 = 0x6465766F6D6572;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6465646461;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23AA0DBD4();
  }

  return v9 & 1;
}

uint64_t sub_23A961614()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9616B4()
{
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A961740()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9617DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A96339C();
  *a2 = result;
  return result;
}

void sub_23A96180C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6465676E616863;
  if (v2 != 1)
  {
    v4 = 0x6465766F6D6572;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6465646461;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_23A961868()
{
  v1 = OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23A961904(void *a1, int a2)
{
  v5 = type metadata accessor for CapturedRoom.Object(0);
  v6 = *(v5 - 8);
  v94 = v5;
  v95 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0C0E4();
  v102 = *(v10 - 8);
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CapturedRoom.Surface(0);
  v15 = *(v14 - 8);
  v99 = v14;
  v100 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v98 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v96 = &v93 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v93 - v21;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v27 = &v93 - v26;
  v28 = *(v2 + 17);
  v101 = a1;
  v106 = a2;
  v97 = v22;
  if (v28)
  {
    v29 = *a1;
    v30 = *(*a1 + 16);
    if (v30)
    {
      v93 = v25;
      v104 = *(v99 + 44);
      v31 = v29 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v32 = (v102 + 16);
      v33 = (v102 + 32);
      v103 = *(v100 + 72);
      do
      {
        sub_23A8D52B8(v31, v27, type metadata accessor for CapturedRoom.Surface);
        (*v32)(v13, &v27[v104], v10);
        v105 = *(v27 + 1);
        sub_23A8D5320(v27, type metadata accessor for CapturedRoom.Surface);
        v34 = type metadata accessor for IULogManager.IULogEntry();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        v37 = swift_allocObject();
        (*v33)(v37 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v13, v10);
        *(v37 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 4;
        *(v37 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v105;
        *(v37 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v106;
        sub_23A962278(v37);

        v31 += v103;
        --v30;
      }

      while (v30);
      v28 = *(v2 + 17);
      a1 = v101;
      v22 = v97;
      v25 = v93;
    }
  }

  if ((v28 & 4) != 0)
  {
    v38 = a1[5];
    v39 = *(v38 + 16);
    if (v39)
    {
      v93 = v25;
      v104 = *(v94 + 32);
      v40 = v38 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v41 = (v102 + 16);
      v42 = (v102 + 32);
      v103 = *(v95 + 72);
      v43 = v106;
      do
      {
        sub_23A8D52B8(v40, v9, type metadata accessor for CapturedRoom.Object);
        (*v41)(v13, &v9[v104], v10);
        v105 = *(v9 + 1);
        sub_23A8D5320(v9, type metadata accessor for CapturedRoom.Object);
        v44 = type metadata accessor for IULogManager.IULogEntry();
        v45 = *(v44 + 48);
        v46 = *(v44 + 52);
        v47 = swift_allocObject();
        (*v42)(v47 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v13, v10);
        *(v47 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 1;
        *(v47 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v105;
        *(v47 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v43;
        sub_23A962278(v47);

        v40 += v103;
        --v39;
      }

      while (v39);
      v28 = *(v2 + 17);
      a1 = v101;
      v22 = v97;
      v25 = v93;
    }
  }

  if ((v28 & 2) != 0)
  {
    v48 = v25;
    v49 = *(a1 + *(type metadata accessor for CapturedRoom(0) + 56));
    v50 = *(v49 + 16);
    if (v50)
    {
      v104 = *(v99 + 44);
      v51 = v49 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v52 = (v102 + 16);
      v53 = (v102 + 32);
      v103 = *(v100 + 72);
      v54 = v106;
      do
      {
        sub_23A8D52B8(v51, v48, type metadata accessor for CapturedRoom.Surface);
        (*v52)(v13, v48 + v104, v10);
        v105 = *(v48 + 16);
        sub_23A8D5320(v48, type metadata accessor for CapturedRoom.Surface);
        v55 = type metadata accessor for IULogManager.IULogEntry();
        v56 = *(v55 + 48);
        v57 = *(v55 + 52);
        v58 = swift_allocObject();
        (*v53)(v58 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v13, v10);
        *(v58 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 3;
        *(v58 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v105;
        *(v58 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v54;
        sub_23A962278(v58);

        v51 += v103;
        --v50;
      }

      while (v50);
      v28 = *(v2 + 17);
      a1 = v101;
      v22 = v97;
    }
  }

  if ((v28 & 8) != 0)
  {
    v59 = a1[1];
    v60 = *(v59 + 16);
    if (v60)
    {
      v104 = *(v99 + 44);
      v61 = v59 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v62 = (v102 + 16);
      v63 = v22;
      v64 = (v102 + 32);
      v103 = *(v100 + 72);
      v65 = v106;
      do
      {
        sub_23A8D52B8(v61, v63, type metadata accessor for CapturedRoom.Surface);
        (*v62)(v13, v63 + v104, v10);
        v105 = *(v63 + 16);
        sub_23A8D5320(v63, type metadata accessor for CapturedRoom.Surface);
        v66 = type metadata accessor for IULogManager.IULogEntry();
        v67 = *(v66 + 48);
        v68 = *(v66 + 52);
        v69 = swift_allocObject();
        (*v64)(v69 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v13, v10);
        *(v69 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 0;
        *(v69 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v105;
        *(v69 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v65;
        sub_23A962278(v69);

        v61 += v103;
        --v60;
      }

      while (v60);
      v28 = *(v2 + 17);
      a1 = v101;
    }
  }

  if ((v28 & 0x10) != 0)
  {
    v70 = a1[2];
    v71 = *(v70 + 16);
    if (v71)
    {
      v104 = *(v99 + 44);
      v72 = v70 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v73 = (v102 + 16);
      v74 = (v102 + 32);
      v103 = *(v100 + 72);
      v75 = v106;
      v76 = v96;
      do
      {
        sub_23A8D52B8(v72, v76, type metadata accessor for CapturedRoom.Surface);
        (*v73)(v13, v76 + v104, v10);
        v105 = *(v76 + 16);
        sub_23A8D5320(v76, type metadata accessor for CapturedRoom.Surface);
        v77 = type metadata accessor for IULogManager.IULogEntry();
        v78 = *(v77 + 48);
        v79 = *(v77 + 52);
        v80 = swift_allocObject();
        (*v74)(v80 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v13, v10);
        *(v80 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 5;
        *(v80 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v105;
        *(v80 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v75;
        sub_23A962278(v80);

        v72 += v103;
        --v71;
      }

      while (v71);
      v28 = *(v2 + 17);
      a1 = v101;
    }
  }

  v81 = v98;
  if ((v28 & 0x20) != 0)
  {
    v82 = a1[3];
    v83 = *(v82 + 16);
    if (v83)
    {
      v104 = *(v99 + 44);
      v84 = v82 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v85 = (v102 + 16);
      v86 = (v102 + 32);
      v87 = *(v100 + 72);
      do
      {
        sub_23A8D52B8(v84, v81, type metadata accessor for CapturedRoom.Surface);
        (*v85)(v13, v81 + v104, v10);
        v105 = *(v81 + 16);
        sub_23A8D5320(v81, type metadata accessor for CapturedRoom.Surface);
        v88 = type metadata accessor for IULogManager.IULogEntry();
        v89 = *(v88 + 48);
        v90 = *(v88 + 52);
        v91 = swift_allocObject();
        (*v86)(v91 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v13, v10);
        *(v91 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 2;
        *(v91 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v105;
        *(v91 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v106;
        sub_23A962278(v91);

        v84 += v87;
        --v83;
      }

      while (v83);
    }
  }

  return sub_23A9624A8();
}

uint64_t sub_23A962278(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v17 = v1;
  if (v3 >> 62)
  {
LABEL_24:
    v4 = sub_23AA0D7F4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = -v4;
  v6 = 4;
  while (v5 + v6 != 4)
  {
    v7 = v6 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](v6 - 4, v3);
    }

    else
    {
      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = *(v3 + 8 * v6);
    }

    v9 = a1;
    v10 = sub_23AA0C094();

    if (v10)
    {

      swift_beginAccess();
      v13 = *(v1 + 48);

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v17 + 48) = v13;
      if (!result || v13 < 0 || (v13 & 0x4000000000000000) != 0)
      {
        result = sub_23A97E578(v13);
        v13 = result;
        *(v17 + 48) = result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      else
      {
        v15 = *(v14 + 8 * v6);
        *(v14 + 8 * v6) = v9;
        *(v17 + 48) = v13;
        swift_endAccess();
      }

      return result;
    }

    ++v6;
    a1 = v9;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_23;
    }
  }

  swift_beginAccess();

  MEMORY[0x23EE8FD70](v11);
  if (*((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  return swift_endAccess();
}

uint64_t sub_23A9624A8()
{
  v1 = sub_23AA0CEC4();
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23AA0CF24();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CF44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 40);
  sub_23AA0CF34();
  sub_23AA0D574();

  (*(v10 + 8))(v13, v9);
  result = sub_23AA0CEB4();
  if ((result & 1) == 0)
  {
    sub_23A9164A0();
    v16 = sub_23AA0D534();
    v17 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_23A963474;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_4;
    v18 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23A963494();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A9634EC();
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v8, v4, v18);
    _Block_release(v18);

    (*(v20 + 8))(v4, v1);
    return (*(v5 + 8))(v8, v19);
  }

  return result;
}

uint64_t sub_23A9627F8()
{
  v0 = sub_23AA0BDE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_23A962990(v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v4, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v11 = *(v6 + 40);
    sub_23AA0D584();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_23A962990@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23AA0BE34();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23AA0BDE4();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_23AA0BDD4();
  swift_beginAccess();
  v10 = *(v1 + 48);
  if (v10 >> 62)
  {
LABEL_20:
    v11 = sub_23AA0D7F4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
  }

  v12 = 0;
  v45 = v10 & 0xFFFFFFFFFFFFFF8;
  v46 = v10 & 0xC000000000000001;
  v43 = (v6 + 8);
  v44 = "";
  v42 = xmmword_23AA15450;
  v41 = v11;
  while (1)
  {
    if (v46)
    {
      v15 = MEMORY[0x23EE90360](v12, v10);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_17:
        __break(1u);
      }
    }

    else
    {
      if (v12 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v15 = *(v10 + 8 * v12 + 32);

      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }
    }

    v50 = v16;
    v17 = v9;
    v52 = sub_23AA0C074();
    v53 = v18;
    sub_23A92F104();
    v19 = sub_23AA0D6F4();

    v20 = *(v19 + 16);
    if (!v20)
    {
      break;
    }

    v21 = (v19 + 32 * v20);
    v22 = *v21;
    v23 = v21[1];
    v25 = v21[2];
    v24 = v21[3];

    v26 = MEMORY[0x23EE8FC60](v22, v23, v25, v24);
    v28 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
    v29 = swift_allocObject();
    *(v29 + 16) = v42;
    v30 = *(v15 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions);
    v31 = MEMORY[0x277D83A90];
    *(v29 + 56) = MEMORY[0x277D83A90];
    v32 = MEMORY[0x277D83B08];
    *(v29 + 64) = MEMORY[0x277D83B08];
    *(v29 + 32) = v30;
    *(v29 + 72) = DWORD1(v30);
    *(v29 + 96) = v31;
    *(v29 + 104) = v32;
    *(v29 + 136) = v31;
    *(v29 + 144) = v32;
    *(v29 + 112) = DWORD2(v30);
    v33 = sub_23AA0D164();
    v35 = v34;
    v52 = 0;
    v53 = 0xE000000000000000;
    MEMORY[0x23EE8FCA0](v26, v28);

    MEMORY[0x23EE8FCA0](8250, 0xE200000000000000);
    v51 = *(v15 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category);
    sub_23AA0D994();
    MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
    MEMORY[0x23EE8FCA0](v33, v35);

    MEMORY[0x23EE8FCA0](10272, 0xE200000000000000);
    v36 = OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state;
    v51 = *(v15 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state);
    sub_23AA0D994();
    MEMORY[0x23EE8FCA0](2601, 0xE200000000000000);
    sub_23AA0BE24();
    v9 = v17;
    sub_23AA0BDF4();
    v37 = *(v15 + v36);
    v38 = objc_opt_self();
    if (v37)
    {
      if (v37 == 1)
      {
        v13 = [v38 systemBlueColor];
      }

      else
      {
        v13 = [v38 systemRedColor];
      }
    }

    else
    {
      v13 = [v38 systemGreenColor];
    }

    v52 = v13;
    sub_23A9633E8();
    sub_23AA0BE04();
    v14 = v41;
    v6 = v50;
    sub_23AA0BDC4();

    (*v43)(v17, v47);
    ++v12;
    if (v6 == v14)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A962E60()
{
  sub_23A8E9694(v0 + 24);

  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IULogManager.IULogEntry()
{
  result = qword_27DFAFB88;
  if (!qword_27DFAFB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A962F20()
{
  result = sub_23AA0C0E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapturedRoom.Section.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CapturedRoom.Section.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A963144()
{
  result = qword_27DFAFB98;
  if (!qword_27DFAFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFB98);
  }

  return result;
}

unint64_t sub_23A96319C()
{
  result = qword_27DFAFBA0;
  if (!qword_27DFAFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBA0);
  }

  return result;
}

unint64_t sub_23A9631F4()
{
  result = qword_27DFAFBA8;
  if (!qword_27DFAFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBA8);
  }

  return result;
}

unint64_t sub_23A96324C()
{
  result = qword_27DFAFBB0;
  if (!qword_27DFAFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBB0);
  }

  return result;
}

unint64_t sub_23A9632A4()
{
  result = qword_27DFAFBB8;
  if (!qword_27DFAFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBB8);
  }

  return result;
}

unint64_t sub_23A9632FC()
{
  result = qword_27DFAFBC0;
  if (!qword_27DFAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBC0);
  }

  return result;
}

uint64_t sub_23A963350()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A96339C()
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

unint64_t sub_23A9633E8()
{
  result = qword_27DFAFBC8;
  if (!qword_27DFAFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBC8);
  }

  return result;
}

uint64_t sub_23A96343C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A963494()
{
  result = qword_27DFB1170;
  if (!qword_27DFB1170)
  {
    sub_23AA0CEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1170);
  }

  return result;
}

unint64_t sub_23A9634EC()
{
  result = qword_27DFB1180;
  if (!qword_27DFB1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFB58, &unk_23AA15810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1180);
  }

  return result;
}

double sub_23A963554()
{
  result = 0.00000343322835;
  switch(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category))
  {
    case 1:
      if (*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions + 8) <= 0.0)
      {
        result = 0.000488281365;
      }

      else
      {
        result = 0.000000119209317;
      }

      break;
    case 2:
      result = 0.0000000134110482;
      break;
    case 3:
      result = 0.0000000134110482;
      break;
    case 4:
      result = 0.0000976562874;
      break;
    case 5:
      result = 0.000878906456;
      break;
    case 6:
      *&result = 1065353216;
      break;
    case 7:
      result = 0.0078125;
      break;
    case 8:
      result = 0.00781250185;
      break;
    case 9:
      result = 0.0078125;
      break;
    case 0xA:
      *&result = 1065353216;
      break;
    case 0xB:
      *&result = 1056964608;
      break;
    case 0xC:
      result = 0.00781250184;
      break;
    case 0xD:
      result = 0.0000305175781;
      break;
    case 0xE:
      *&result = 1056964608;
      break;
    case 0xF:
      result = 0.000000381469873;
      break;
    case 0x10:
      result = 0.0000305175853;
      break;
    case 0x11:
      result = 0.0000305175853;
      break;
    case 0x12:
      result = 5.23869072e-11;
      break;
    case 0x13:
      result = 0.000292968761;
      break;
    case 0x14:
      result = 0.0000305175781;
      break;
    case 0x15:
      result = 0.0;
      break;
    default:
      return result;
  }

  return result;
}

double sub_23A96371C()
{
  type metadata accessor for TrajectoryManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 3;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_23AA15940;
  *(v0 + 96) = xmmword_23AA12220;
  *(v0 + 112) = xmmword_23AA12210;
  *(v0 + 128) = xmmword_23AA12200;
  *&result = 3212836864;
  *(v0 + 144) = xmmword_23AA12230;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  qword_27DFC0730 = v0;
  return result;
}

uint64_t sub_23A9637AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_23A965064(v1, v2);
  *(v0 + 32) = 1;
  *(v0 + 40) = 3;
  swift_beginAccess();
  v3 = *(v0 + 48);
  v4 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v5 = *(v0 + 56);
  *(v0 + 56) = v4;

  swift_beginAccess();
  v6 = *(v0 + 64);
  *(v0 + 64) = v4;

  swift_beginAccess();
  v7 = *(v0 + 72);
  *(v0 + 72) = v4;

  *(v0 + 80) = 0;
  return result;
}

void sub_23A963878(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0D604();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 currentFrame];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 camera];
    sub_23AA0D614();
    v12 = sub_23AA0D5F4();
    if ((*(*(v12 - 8) + 48))(v8, 2, v12) == 2)
    {
      sub_23A965008(v8);
      v13 = sub_23A963C1C(v10, a1);
      if (v13)
      {
        v14 = *(v1 + 16);
        v15 = *(v2 + 24);
        *(v2 + 16) = v13;
        *(v2 + 24) = v11;
        v16 = v13;
        v17 = v11;
        sub_23A965064(v14, v15);
        sub_23A963AC4(v10, [v10 deviceOrientation]);
        sub_23A964544(v16);
        sub_23A963EB8(v16);

        return;
      }
    }

    else
    {

      sub_23A965008(v8);
    }

    v18 = *(v1 + 16);
    v19 = *(v1 + 24);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    sub_23A965064(v18, v19);
  }
}

__n128 sub_23A963A24()
{
  if (*(v0 + 176))
  {
    result.n128_u64[0] = 0x4270000042700000;
    *(v0 + 160) = xmmword_23AA15950;
    *(v0 + 176) = 0;
  }

  else
  {
    return *(v0 + 160);
  }

  return result;
}

double sub_23A963A50()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1[1].i64[0];
  if (v2)
  {
    v3 = v1 + 2;
    v4 = 0uLL;
    do
    {
      v5 = *v3++;
      v4 = vaddq_f32(v4, v5);
      v4.i32[3] = 0;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 0uLL;
  }

  *&result = vdivq_f32(v4, sub_23A963A24()).u64[0];
  return result;
}

double sub_23A963AC4(void *a1, uint64_t a2)
{
  v5 = [a1 camera];
  [v5 transform];
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;

  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      *(v2 + 32) = 1;
      v14 = xmmword_23AA15970;
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          *(v2 + 32) = 3;
        }

        return *v16.i64;
      }

      *(v2 + 32) = 2;
      v14 = xmmword_23AA15960;
    }

LABEL_13:
    *v15.i64 = MEMORY[0x23EE8FF50](v14, v10, v11, v12);
    *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v15.f32[0]), v17, *v15.f32, 1), v18, v15, 2), v19, v15, 3).u64[0];
    return result;
  }

  if ((a2 - 5) < 2)
  {
    sub_23A963AC4(a1, *(v2 + 32));
    return result;
  }

  v11 = v18;
  v12 = v19;
  result = *v16.i64;
  v10 = v17;
  if (a2 == 4)
  {
    *(v2 + 32) = 4;
    v14 = xmmword_23AA15980;
    goto LABEL_13;
  }

  return result;
}

void *sub_23A963C1C(void *a1, void *a2)
{
  sub_23A963AC4(a1, [a1 deviceOrientation]);
  *&v5 = vnegq_f32(v4).u64[0];
  v7 = [objc_allocWithZone(MEMORY[0x277CE5330]) initWithOrigin:*(v2 + 80) direction:2 allowingTarget:v6 alignment:v5];
  v8 = [a2 raycast_];
  sub_23A8D6C58(0, &qword_27DFAFBE0, 0x277CE5338);
  v9 = sub_23AA0D2F4();

  if (v9 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v13 = MEMORY[0x23EE90360](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (![v13 target])
      {
LABEL_20:

        return v14;
      }

      ++v11;
    }

    while (v15 != i);
    v16 = 0;
    while (1)
    {
      if (v12)
      {
        v17 = MEMORY[0x23EE90360](v16, v9);
      }

      else
      {
        if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v17 = *(v9 + 8 * v16 + 32);
      }

      v14 = v17;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ([v17 target] == 2)
      {
        goto LABEL_20;
      }

      ++v16;
      if (v18 == i)
      {
        goto LABEL_26;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  return 0;
}

double sub_23A963E38()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = v2[1].u64[0];
  if (v3)
  {
    v4 = v2 + 2;
    v5 = 0uLL;
    v6 = v3;
    do
    {
      v7 = *v4++;
      v5 = vaddq_f32(v5, v7);
      v5.i32[3] = 0;
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0uLL;
  }

  *v1.i32 = v3;
  *&result = vdivq_f32(v5, vdupq_lane_s32(v1, 0)).u64[0];
  return result;
}

id sub_23A963EB8(void *x0_0)
{
  [x0_0 worldTransform];
  *v3.i64 = simd_quaternion(v25);
  v24 = v3;
  v4 = [x0_0 anchor];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 alignment];
      sub_23A964FBC(&unk_284D81558);
      v8 = vmulq_f32(v24, xmmword_23AA15990);
      v9 = vnegq_f32(v8);
      v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
      v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v11.f32, 1), vextq_s8(v10, v10, 8uLL), v11.f32[0]);
      v13 = vrev64q_s32(v8);
      v13.i32[0] = v9.i32[1];
      v13.i32[3] = v9.i32[2];
      v14 = vmlaq_laneq_f32(v12, v13, v11, 2);
      v15 = vnegq_f32(v14);
      v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
      v17 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v14, v15, 8uLL), *v24.f32, 1), vextq_s8(v16, v16, 8uLL), v24.f32[0]);
      v18 = vrev64q_s32(v14);
      v18.i32[0] = v15.i32[1];
      v18.i32[3] = v15.i32[2];
      if (COERCE_FLOAT(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, v24, 3), v18, v24, 2), v17).i32[1]) < -0.9)
      {
        sub_23A964FBC(&unk_284D81588);
      }

      goto LABEL_11;
    }
  }

  if ([x0_0 targetAlignment])
  {
    result = [x0_0 targetAlignment];
    if (result != 1)
    {
      return result;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  swift_beginAccess();
  v20 = *(v1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 48) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_23A939E68(0, *(v20 + 2) + 1, 1, v20);
    *(v1 + 48) = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_23A939E68((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  *&v20[8 * v23 + 32] = v7;
  *(v1 + 48) = v20;
  return swift_endAccess();
}

uint64_t sub_23A9640C4()
{
  sub_23A965064(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8RoomPlan23TrajectoryTrackingState33_C7479347390EEAE478812E121560607BLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23A964160(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A9641B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_23A964204(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_23A964248()
{
  result = qword_27DFAFBD0;
  if (!qword_27DFAFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBD0);
  }

  return result;
}

double sub_23A96429C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 3;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_23AA15940;
  *(v0 + 96) = xmmword_23AA12220;
  *(v0 + 112) = xmmword_23AA12210;
  *(v0 + 128) = xmmword_23AA12200;
  *&result = 3212836864;
  *(v0 + 144) = xmmword_23AA12230;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  return result;
}

uint64_t sub_23A964308(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23A9F5738(v2, 0);

    MEMORY[0x23EE90350](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_23AA0D7F4();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_23A9643A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_23A964474(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  if ((sub_23AA0D634() & 1) == 0)
  {
    return 0;
  }

  if (!a2)
  {
    return !a4;
  }

  if (a4)
  {
    sub_23A8D6C58(0, &qword_27DFAFBD8, 0x277CE5238);
    v6 = a4;
    v7 = a2;
    v8 = sub_23AA0D634();

    if (v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_23A964544(void *a1)
{
  v2 = sub_23AA0C0E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v97.i64[0] = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v96 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v96 - v19;
  v98[0] = a1;
  v21 = [a1 anchor];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 identifier];

    sub_23AA0C0A4();
    v24 = *(v3 + 56);
    v24(v20, 0, 1, v2);
  }

  else
  {
    v24 = *(v3 + 56);
    v24(v20, 1, 1, v2);
  }

  v25 = *(v99 + 184);
  if (v25)
  {
    v26 = [v25 &selRef_window];
    sub_23AA0C0A4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v24(v16, v27, 1, v2);
  v28 = *(v6 + 48);
  sub_23A8EA9A4(v20, v9);
  sub_23A8EA9A4(v16, &v9[v28]);
  v29 = *(v3 + 48);
  v30 = v29(v9, 1, v2);
  v31 = v99;
  if (v30 == 1)
  {
    sub_23A8D50D0(v16, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v20, &unk_27DFB0970, &qword_23AA14E00);
    if (v29(&v9[v28], 1, v2) == 1)
    {
      sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  sub_23A8EA9A4(v9, v13);
  if (v29(&v9[v28], 1, v2) == 1)
  {
    sub_23A8D50D0(v16, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v20, &unk_27DFB0970, &qword_23AA14E00);
    (*(v3 + 8))(v13, v2);
LABEL_12:
    sub_23A8D50D0(v9, &qword_27DFAEC28, &unk_23AA1AA40);
LABEL_13:
    swift_beginAccess();
    v32 = *(v31 + 56);
    v33 = MEMORY[0x277D84F90];
    *(v31 + 56) = MEMORY[0x277D84F90];

    swift_beginAccess();
    v34 = *(v31 + 64);
    *(v31 + 64) = v33;

    swift_beginAccess();
    v35 = *(v31 + 72);
    *(v31 + 72) = v33;

    v36 = [v98[0] anchor];
    v37 = *(v31 + 184);
    *(v31 + 184) = v36;

    return;
  }

  v38 = &v9[v28];
  v39 = v97.i64[0];
  (*(v3 + 32))(v97.i64[0], v38, v2);
  sub_23A8DE390();
  LODWORD(v96) = sub_23AA0D084();
  v40 = *(v3 + 8);
  v40(v39, v2);
  sub_23A8D50D0(v16, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D50D0(v20, &unk_27DFB0970, &qword_23AA14E00);
  v40(v13, v2);
  sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
  if ((v96 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  [v98[0] localTransform];
  *v98 = v41;
  swift_beginAccess();
  v42 = *(v31 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 64) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_23A9388A8(0, *(v42 + 2) + 1, 1, v42);
    *(v31 + 64) = v42;
  }

  v44 = *v98;
  v44.i32[3] = 0;
  v46 = *(v42 + 2);
  v45 = *(v42 + 3);
  v47 = v46 + 1;
  if (v46 >= v45 >> 1)
  {
    *v98 = v44;
    v91 = sub_23A9388A8((v45 > 1), v46 + 1, 1, v42);
    v44 = *v98;
    v42 = v91;
  }

  *(v42 + 2) = v47;
  *&v42[16 * v46 + 32] = v44;
  *(v31 + 64) = v42;
  if (v46 > 0x3B)
  {
    sub_23A9643A4(v42, (v42 + 32), v46 - 59, (2 * v47) | 1);
    v92 = *(v31 + 64);
  }

  else
  {
  }

  *(v31 + 64) = v48;
  swift_endAccess();

  *v49.i64 = sub_23A963E38();
  *v98 = v49;
  swift_beginAccess();
  v50 = *(v31 + 72);
  v51 = *(v50 + 2);
  v52 = *v98;
  if (v51)
  {
    v52 = *&v50[16 * v51 + 16];
  }

  v97 = v52;
  swift_beginAccess();
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 72) = v50;
  if ((v53 & 1) == 0)
  {
    v50 = sub_23A9388A8(0, v51 + 1, 1, v50);
    *(v31 + 72) = v50;
  }

  v55 = *(v50 + 2);
  v54 = *(v50 + 3);
  v56 = v55 + 1;
  if (v55 >= v54 >> 1)
  {
    v50 = sub_23A9388A8((v54 > 1), v55 + 1, 1, v50);
  }

  *(v50 + 2) = v56;
  *&v50[16 * v55 + 32] = *v98;
  *(v31 + 72) = v50;
  if (v55 > 0x3B)
  {
    sub_23A9643A4(v50, (v50 + 32), v55 - 59, (2 * v56) | 1);
    v93 = *(v31 + 72);
  }

  else
  {
  }

  *(v31 + 72) = v57;
  swift_endAccess();

  v58 = vsubq_f32(*v98, v97);
  v58.i32[3] = 0;
  *v98 = v58;
  v97 = *(v31 + 128);
  sub_23AA0DCB4();
  v60 = v59;
  sub_23AA0DCB4();
  v62 = v61;
  v96 = *(v31 + 96);
  sub_23AA0DCB4();
  v64 = v63;
  sub_23AA0DCB4();
  v66 = v65;
  sub_23AA0DCB4();
  v68 = v67;
  sub_23AA0DCB4();
  v70 = v69;
  if (v66 >= v64)
  {
    v71 = v64;
  }

  else
  {
    v71 = v66;
  }

  if (v62 >= v60)
  {
    v72 = v60;
  }

  else
  {
    v72 = v62;
  }

  if (v72 < v71)
  {
    v71 = v72;
  }

  if (v70 >= v68)
  {
    v73 = v68;
  }

  else
  {
    v73 = v70;
  }

  if (v73 >= v71)
  {
    v74 = v71;
  }

  else
  {
    v74 = v73;
  }

  swift_beginAccess();
  v75 = *(v31 + 56);
  v76 = *(v75 + 2);
  v77 = v97;
  if (v76)
  {
    v77 = *&v75[16 * v76 + 16];
  }

  if (v74 == v60)
  {
    *v98 = *(v31 + 144);
    swift_beginAccess();
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 56) = v75;
    if ((v78 & 1) == 0)
    {
      v75 = sub_23A9388A8(0, v76 + 1, 1, v75);
      *(v31 + 56) = v75;
    }

    v80 = *(v75 + 2);
    v79 = *(v75 + 3);
    if (v80 >= v79 >> 1)
    {
      v75 = sub_23A9388A8((v79 > 1), v80 + 1, 1, v75);
    }

    *(v75 + 2) = v80 + 1;
    v81 = &v75[16 * v80];
    v82 = *v98;
LABEL_66:
    v81[2] = v82;
    *(v31 + 56) = v75;
    swift_endAccess();
    goto LABEL_67;
  }

  if (v74 == v62)
  {
    swift_beginAccess();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 56) = v75;
    if ((v83 & 1) == 0)
    {
      v75 = sub_23A9388A8(0, v76 + 1, 1, v75);
      *(v31 + 56) = v75;
    }

    v85 = *(v75 + 2);
    v84 = *(v75 + 3);
    if (v85 >= v84 >> 1)
    {
      v75 = sub_23A9388A8((v84 > 1), v85 + 1, 1, v75);
    }

    *(v75 + 2) = v85 + 1;
    v81 = &v75[16 * v85];
    v82 = v97;
    goto LABEL_66;
  }

  *v98 = v77;
  if (v74 == v64 || v74 == v66 || v74 == v68 || v74 == v70)
  {
    swift_beginAccess();
    v86 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 56) = v75;
    if ((v86 & 1) == 0)
    {
      v75 = sub_23A9388A8(0, v76 + 1, 1, v75);
      *(v31 + 56) = v75;
    }

    v82 = *v98;
    v88 = *(v75 + 2);
    v87 = *(v75 + 3);
    if (v88 >= v87 >> 1)
    {
      v95 = sub_23A9388A8((v87 > 1), v88 + 1, 1, v75);
      v82 = *v98;
      v75 = v95;
    }

    *(v75 + 2) = v88 + 1;
    v81 = &v75[16 * v88];
    goto LABEL_66;
  }

LABEL_67:
  v89 = *(v75 + 2);
  if (v89 > 0x3C)
  {
    sub_23A9643A4(v75, (v75 + 32), v89 - 60, (2 * v89) | 1);
    v75 = v94;
  }

  else
  {
  }

  v90 = *(v31 + 56);
  *(v31 + 56) = v75;
}

uint64_t sub_23A964FBC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_23A965008(uint64_t a1)
{
  v2 = sub_23AA0D604();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23A965064(void *a1, void *a2)
{
  if (a1)
  {
  }
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23A9650B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_23A965100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A965154@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = sub_23A9BAF1C(a1, 0.001);

  *a3 = v5;
  *(a3 + 8) = v4;
  v6 = *(v5 + 2);
  if (v6 < 2)
  {
    v9 = MEMORY[0x277D84F90];
    v10 = 0.0;
  }

  else
  {

    v7 = v6 - 1;
    v8 = (v5 + 48);
    v9 = MEMORY[0x277D84F90];
    v10 = 0.0;
    do
    {
      v18 = *v8;
      v19 = v8[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_23A93964C(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_23A93964C((v11 > 1), v12 + 1, 1, v9);
      }

      v13 = vsubq_f32(v19, v18);
      v14 = vmulq_f32(v13, v13);
      v14.f32[0] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
      *(v9 + 2) = v12 + 1;
      *&v9[4 * v12 + 32] = v14.i32[0];
      v10 = v10 + v14.f32[0];
      ++v8;
      --v7;
    }

    while (v7);
  }

  *(a3 + 16) = v9;
  *(a3 + 32) = v10;

  v16 = sub_23A965A80(v15, v10);

  *(a3 + 24) = v16;
  return result;
}

void sub_23A9652D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_23AA0CE84();
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  MEMORY[0x28223BE20](v6);
  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = v2[2];
  v13 = v2[3];
  LODWORD(v14) = *(v2 + 8);
  v62 = a1;
  v15 = *(a1 + 16);
  if (v15 < 3 || !*(v13 + 16))
  {
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;

    return;
  }

  v50 = &v48 - v8;
  HIDWORD(v48) = v11;
  v59 = v9;
  v53 = v12;
  v49 = a2;
  v16 = 0;
  v17 = v13 + 32;
  v18 = *(v13 + 32);
  v55 = (v7 + 8);
  v60 = v10 + 32;
  v19 = MEMORY[0x277D84F90];
  v20 = 32;
  *&v14 = 136315394;
  v52 = v14;
  v58 = v10;
  v56 = v13 + 32;
  v51 = v13;
  while (1)
  {
    v30 = *(v62 + v20);
    if (vabds_f32(v18, v30) < 0.0001)
    {
      break;
    }

    if (v30 >= v18)
    {
      sub_23A8D4E5C();
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      sub_23AA0CE94();
      v10 = v58;

      v42 = sub_23AA0CE54();
      v43 = sub_23AA0D494();

      if (!os_log_type_enabled(v42, v43))
      {

        (*v55)(v59, v57);
LABEL_34:
        v17 = v56;
        goto LABEL_5;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v63 = v22;
      *v21 = v52;
      v23 = MEMORY[0x23EE8FDA0](v13, MEMORY[0x277D83A90]);
      v25 = sub_23A9A65A4(v23, v24, &v63);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = MEMORY[0x23EE8FDA0](v62, MEMORY[0x277D83A90]);
      v28 = sub_23A9A65A4(v26, v27, &v63);

      *(v21 + 14) = v28;
      v17 = v56;
      _os_log_impl(&dword_23A8B4000, v42, v43, "Unexpected interpolated value when trying to interpolate edge (inputPercentages: %s, interpolatedPercentages: %s)", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE91710](v22, -1, -1);
      v29 = v21;
      v10 = v58;
      MEMORY[0x23EE91710](v29, -1, -1);

      (*v55)(v59, v57);
      v13 = v51;
    }

    else
    {
      if (v16 <= 0)
      {
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v44 = v50;
        sub_23AA0CE94();
        v45 = sub_23AA0CE54();
        v46 = sub_23AA0D494();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_23A8B4000, v45, v46, "Unexpected input index when trying to interpolate edge", v47, 2u);
          MEMORY[0x23EE91710](v47, -1, -1);
        }

        (*v55)(v44, v57);
        v10 = v58;
        goto LABEL_34;
      }

      if (v16 > *(v13 + 16))
      {
        goto LABEL_41;
      }

      v33 = v16 - 1;
      v34 = *(v10 + 16);
      if (v16 > v34)
      {
        goto LABEL_42;
      }

      if (v16 >= v34)
      {
        goto LABEL_43;
      }

      v35 = *(v17 + 4 * v33);
      v61 = *(v60 + 16 * v33);
      v54 = *(v60 + 16 * v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23A9388A8(0, *(v19 + 2) + 1, 1, v19);
      }

      v37 = *(v19 + 2);
      v36 = *(v19 + 3);
      if (v37 >= v36 >> 1)
      {
        v19 = sub_23A9388A8((v36 > 1), v37 + 1, 1, v19);
      }

      v38 = (v30 - v35) / (v18 - v35);
      v39 = vsubq_f32(v54, v61);
      v40 = vmuls_lane_f32(v38, v39, 2);
      *&v41 = vaddq_f32(v61, vmulq_n_f32(v39, v38)).u64[0];
      *(&v41 + 2) = v61.f32[2] + v40;
      HIDWORD(v41) = 0;
      *(v19 + 2) = v37 + 1;
      *&v19[16 * v37 + 32] = v41;
    }

LABEL_5:
    v20 += 4;
    if (!--v15)
    {
      goto LABEL_38;
    }
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    if (v16 >= *(v10 + 16))
    {
      goto LABEL_40;
    }

    v61 = *(v60 + 16 * v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_23A9388A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v32 = *(v19 + 2);
    v31 = *(v19 + 3);
    if (v32 >= v31 >> 1)
    {
      v19 = sub_23A9388A8((v31 > 1), v32 + 1, 1, v19);
    }

    *(v19 + 2) = v32 + 1;
    *&v19[16 * v32 + 32] = v61;
    if (++v16 >= *(v13 + 16))
    {
LABEL_38:
      v64[0] = BYTE4(v48);
      sub_23A965154(v19, v64, v49);
      return;
    }

    v18 = *(v17 + 4 * v16);
    goto LABEL_5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_23A9659DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_23A946B38(*a1, *a2);
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    if (sub_23A946BB8(v4, v8))
    {
      return sub_23A946BB8(v3, v7) & (v5 == v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_23A965A80(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_23A93964C(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_23A93964C((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[4 * v7 + 32] = 0;
  v8 = (a1 + 32);
  v9 = v7 + 9;
  v10 = 0.0;
  do
  {
    v11 = *v8;
    v12 = *(v5 + 3);
    if (v9 - 8 >= v12 >> 1)
    {
      v5 = sub_23A93964C((v12 > 1), v9 - 7, 1, v5);
    }

    v10 = v10 + v11;
    *(v5 + 2) = v9 - 7;
    *&v5[4 * v9++] = v10 / a2;
    ++v8;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t sub_23A965BAC()
{
  v1 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
  v2 = sub_23AA0CD84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MeshUpdateScanMaterial()
{
  result = qword_27DFAFBF0;
  if (!qword_27DFAFBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A965CAC()
{
  result = sub_23AA0CD84();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23A965D54@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_23AA0CD84();
  v5 = MEMORY[0x277CDB298];
  a1[3] = v4;
  a1[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
  swift_beginAccess();
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3 + v7, v4);
}

uint64_t sub_23A965E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture))
  {
    return sub_23A9C2F14(a2, a3);
  }

  return result;
}

uint64_t sub_23A965E88(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x277D84F90];
  sub_23A975DC0(0, v4, 0);
  v5 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v9 = v15;
    v16 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = v15;
      sub_23A975DC0((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v5 = v16;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 16 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A965F9C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23EE90360](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v13 = v10;
      a1(&v14, &v13);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_23AA0D944();
      v11 = *(v15 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (v9 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_23A966148(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v7 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    v11 = *(a4(0) - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      a1(&v15, v12);
      if (v5)
      {
        break;
      }

      v5 = 0;
      sub_23AA0D944();
      v14 = *(v16 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      v12 += v13;
      if (!--v7)
      {
        return v16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static CapturedRoom.Surface.Category.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (v3 != 4)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 5)
      {
LABEL_10:
        if ((v3 - 2) >= 4u)
        {
          return (v3 ^ v2 ^ 1) & 1;
        }

        return 0;
      }

      if (v3 != 5)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 3)
  {
    goto LABEL_10;
  }

  return v3 == 3;
}

uint64_t sub_23A96634C(char **a1, float32x4_t a2)
{
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A975D8C(v3);
  }

  v4 = *(v3 + 2);
  v23[0] = (v3 + 32);
  v23[1] = v4;
  result = sub_23AA0DBA4();
  if (result >= v4)
  {
    if (v4 >= 2)
    {
      v9 = v3 + 48;
      v10 = -1;
      for (i = 1; i != v4; ++i)
      {
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 + 1);
          v15 = vmulq_f32(v14, a2);
          v16 = vmulq_f32(*(v12 - 1), a2);
          *v16.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v15.i8), vzip2_s32(*v16.i8, *v15.i8)));
          if ((vcgt_f32(vdup_lane_s32(*v16.i8, 1), *v16.i8).u8[0] & 1) == 0)
          {
            break;
          }

          v17 = v12[32];
          v18 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v18;
          *(v12 - 1) = v14;
          *v12 = v17;
          v12 -= 32;
        }

        while (!__CFADD__(v13++, 1));
        --v10;
        v9 += 32;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0528, &qword_23AA18B78);
      v8 = sub_23AA0D324();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v21[0] = v8 + 32;
    v21[1] = v7;
    sub_23A9774EC(v21, a2, v22, v23, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t CapturedRoom.Section.Label.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F52676E6976696CLL;
  v3 = 0x6E65686374696BLL;
  v4 = 0x6F52676E696E6964;
  if (v1 != 4)
  {
    v4 = 0x69746E6564696E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D6F6F72646562;
  if (v1 != 1)
  {
    v5 = 0x6D6F6F7268746162;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t CapturedRoom.Object.Category.supportedAttributeTypes.getter()
{
  v1 = *v0;
  result = MEMORY[0x277D84F90];
  if (v1 <= 9)
  {
    if (v1 - 1 < 9)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23AA10FC0;
    v4 = sub_23A966750();
    result = v3;
    v5 = &type metadata for StorageType;
    goto LABEL_8;
  }

  if (*v0 > 0xCu)
  {
    return result;
  }

  if (v1 == 10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23AA11C10;
    v7 = sub_23A9667A4();
    *(v6 + 32) = &type metadata for TableType;
    *(v6 + 40) = v7;
    v8 = sub_23A9667F8();
    result = v6;
    *(v6 + 48) = &type metadata for TableShapeType;
    *(v6 + 56) = v8;
  }

  else
  {
    if (v1 == 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_23AA10FC0;
      v4 = sub_23A96684C();
      result = v3;
      v5 = &type metadata for SofaType;
LABEL_8:
      *(v3 + 32) = v5;
      *(v3 + 40) = v4;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_23AA11C20;
    v10 = sub_23A9668A0();
    *(v9 + 32) = &type metadata for ChairType;
    *(v9 + 40) = v10;
    v11 = sub_23A9668F4();
    *(v9 + 48) = &type metadata for ChairBackType;
    *(v9 + 56) = v11;
    v12 = sub_23A966948();
    *(v9 + 64) = &type metadata for ChairLegType;
    *(v9 + 72) = v12;
    v13 = sub_23A96699C();
    result = v9;
    *(v9 + 80) = &type metadata for ChairArmType;
    *(v9 + 88) = v13;
  }

  return result;
}

unint64_t sub_23A966750()
{
  result = qword_27DFAFC08;
  if (!qword_27DFAFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC08);
  }

  return result;
}

unint64_t sub_23A9667A4()
{
  result = qword_27DFAFC10;
  if (!qword_27DFAFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC10);
  }

  return result;
}

unint64_t sub_23A9667F8()
{
  result = qword_27DFB0A00;
  if (!qword_27DFB0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0A00);
  }

  return result;
}

unint64_t sub_23A96684C()
{
  result = qword_27DFB09F0;
  if (!qword_27DFB09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB09F0);
  }

  return result;
}

unint64_t sub_23A9668A0()
{
  result = qword_27DFAFC18;
  if (!qword_27DFAFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC18);
  }

  return result;
}

unint64_t sub_23A9668F4()
{
  result = qword_27DFAFC20;
  if (!qword_27DFAFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC20);
  }

  return result;
}

unint64_t sub_23A966948()
{
  result = qword_27DFAFC28;
  if (!qword_27DFAFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC28);
  }

  return result;
}

unint64_t sub_23A96699C()
{
  result = qword_27DFB09E0;
  if (!qword_27DFB09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB09E0);
  }

  return result;
}

uint64_t sub_23A9669F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65646F4D65726F63;
    v7 = 0x79726F7473;
    if (a1 != 10)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x737463656A626FLL;
    v9 = 0x6E6F6973726576;
    if (a1 != 7)
    {
      v9 = 0x736E6F6974636573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736D6F6F72;
    v2 = 0x73776F646E6977;
    v3 = 0x73676E696E65706FLL;
    if (a1 != 4)
    {
      v3 = 0x73726F6F6C66;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x736C6C6177;
    if (a1 != 1)
    {
      v4 = 0x73726F6F64;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23A966BC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A97D95C();
  *a2 = result;
  return result;
}

uint64_t sub_23A966BF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A9669F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23A966C3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A97D95C();
  *a1 = result;
  return result;
}

uint64_t sub_23A966C70(uint64_t a1)
{
  v2 = sub_23A96806C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A966CAC(uint64_t a1)
{
  v2 = sub_23A96806C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A966CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = v5;
  type metadata accessor for USDModel();
  inited = swift_initStackObject();
  v14 = MEMORY[0x277D84F98];
  inited[2] = MEMORY[0x277D84F98];
  inited[3] = 1633973109;
  inited[4] = 0xE400000000000000;
  inited[5] = v14;
  v30[3] = type metadata accessor for CapturedStructure(0);
  v30[4] = sub_23A969670(&qword_27DFB0578, type metadata accessor for CapturedStructure);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_23A969D58(v7, boxed_opaque_existential_1, type metadata accessor for CapturedStructure);
  v29[0] = a3;
  v29[1] = a4;
  if (a5)
  {
    v28 = a5;
  }

  else
  {
    v28 = 7;
  }

  sub_23A917634(v30, a1, a2, v29, &v28);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    v30[0] = v6;
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
    if (swift_dynamicCast())
    {
      v17 = v29[0];
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      LOBYTE(v30[0]) = v17;
      v18 = sub_23AA0D1A4();
      v20 = v19;
      v21 = type metadata accessor for CapturedStructure(0);
      sub_23A95E668(v18, v20, *(v7 + *(v21 + 52)));
    }

    else
    {
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for CapturedStructure(0);
      sub_23A95E668(0x73726568746FLL, 0xE600000000000000, *(v7 + *(v23 + 52)));
    }

    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    sub_23A95EB44();
    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for CapturedStructure(0);
    sub_23A95E668(0x73736563637573, 0xE700000000000000, *(v7 + *(v22 + 52)));
    sub_23A95EB44();
  }

  swift_setDeallocating();
  v24 = inited[2];

  v25 = inited[4];

  v26 = inited[5];
}

uint64_t sub_23A967070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = v5;
  type metadata accessor for USDModel();
  inited = swift_initStackObject();
  v14 = MEMORY[0x277D84F98];
  inited[2] = MEMORY[0x277D84F98];
  inited[3] = 1633973109;
  inited[4] = 0xE400000000000000;
  inited[5] = v14;
  v30[3] = type metadata accessor for CapturedRoom(0);
  v30[4] = sub_23A969670(&qword_27DFB0570, type metadata accessor for CapturedRoom);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_23A969D58(v7, boxed_opaque_existential_1, type metadata accessor for CapturedRoom);
  v29[0] = a3;
  v29[1] = a4;
  if (a5)
  {
    v28 = a5;
  }

  else
  {
    v28 = 7;
  }

  sub_23A917634(v30, a1, a2, v29, &v28);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    v30[0] = v6;
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
    if (swift_dynamicCast())
    {
      v17 = v29[0];
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      LOBYTE(v30[0]) = v17;
      v18 = sub_23AA0D1A4();
      v20 = v19;
      v21 = type metadata accessor for CapturedRoom(0);
      sub_23A95E668(v18, v20, *(v7 + *(v21 + 52)));
    }

    else
    {
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for CapturedRoom(0);
      sub_23A95E668(0x73726568746FLL, 0xE600000000000000, *(v7 + *(v23 + 52)));
    }

    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    sub_23A95EB44();
    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for CapturedRoom(0);
    sub_23A95E668(0x73736563637573, 0xE700000000000000, *(v7 + *(v22 + 52)));
    sub_23A95EB44();
  }

  swift_setDeallocating();
  v24 = inited[2];

  v25 = inited[4];

  v26 = inited[5];
}

uint64_t CapturedStructure.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedStructure(0) + 48);
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CapturedStructure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_23AA0D904();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC30, &qword_23AA15C38);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for CapturedStructure(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  v16 = v34;
  sub_23AA0DD74();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v11;
  LOBYTE(v35) = 7;
  v17 = sub_23AA0DAE4();
  v18 = v7;
  v19 = *(v34 + 52);
  v27 = v17;
  *(v14 + v19) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC40, &unk_23AA15C40);
  LOBYTE(v36) = 0;
  sub_23A9680C0();
  sub_23AA0DAF4();
  v20 = v35;
  *v14 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
  LOBYTE(v36) = 1;
  sub_23A9695BC();
  sub_23AA0DAF4();
  v28 = v14;
  v14[1] = v35;
  LOBYTE(v36) = 2;
  sub_23AA0DAF4();
  v14[2] = v35;
  LOBYTE(v36) = 3;
  sub_23AA0DAF4();
  v14[3] = v35;
  LOBYTE(v36) = 4;
  sub_23AA0DAF4();
  v26 = 0;
  v14[4] = v35;
  if (v27 >= 2)
  {
    LOBYTE(v36) = 5;
    sub_23AA0DAF4();
    v27 = v20;
    v22 = v35;
  }

  else
  {
    v27 = v20;
    v22 = MEMORY[0x277D84F90];
  }

  v23 = v33;
  v14[6] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
  LOBYTE(v36) = 6;
  sub_23A9696D8();
  sub_23AA0DAF4();
  v24 = v34;
  v14[5] = v35;
  v25 = v14 + *(v24 + 48);
  sub_23AA0C0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
  LOBYTE(v36) = 8;
  sub_23A9780EC(&qword_27DFAFC90, sub_23A9697AC);
  sub_23AA0DAF4();
  (*(v23 + 8))(v10, v18);
  v14[7] = v35;
  sub_23A969D58(v14, v29, type metadata accessor for CapturedStructure);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23A969DC0(v14, type metadata accessor for CapturedStructure);
}

unint64_t sub_23A96806C()
{
  result = qword_27DFAFC38;
  if (!qword_27DFAFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC38);
  }

  return result;
}

unint64_t sub_23A9680C0()
{
  result = qword_27DFAFC48;
  if (!qword_27DFAFC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC40, &unk_23AA15C40);
    sub_23A969670(&qword_27DFAFC50, type metadata accessor for CapturedRoom);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC48);
  }

  return result;
}

void CapturedRoom.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  *&v123 = sub_23AA0D904();
  *&v122 = *(v123 - 8);
  v3 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  *&v120 = v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  *&v124 = v105 - v6;
  v117 = sub_23AA0D014();
  v115 = *(v117 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_23AA0D184();
  v112 = *(v113 - 8);
  v9 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_23AA0CFD4();
  v118 = *(v125 - 8);
  v11 = *(v118 + 64);
  MEMORY[0x28223BE20](v125);
  v116 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CFF4();
  v119 = *(v13 - 8);
  v14 = *(v119 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC30, &qword_23AA15C38);
  v126 = *(v17 - 8);
  v18 = *(v126 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v105 - v19;
  v21 = type metadata accessor for CapturedRoom(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v24[*(v25 + 60)];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v127 = v26;
  v128 = a1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  v28 = v129;
  sub_23AA0DD74();
  if (v28)
  {
    v129 = v28;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v128);
LABEL_6:
    sub_23A8D50D0(v127, &unk_27DFB1140, &qword_23AA19C10);
    return;
  }

  v29 = v21;
  v30 = v125;
  v109 = v16;
  v108 = v13;
  v110 = v24;
  LOBYTE(v133) = 7;
  v31 = sub_23AA0DAE4();
  v129 = 0;
  v32 = *(v29 + 52);
  v107 = v31;
  v33 = v110;
  *(v110 + v32) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
  LOBYTE(v131) = 1;
  sub_23A9695BC();
  v34 = v129;
  sub_23AA0DAF4();
  if (v34)
  {
    v129 = v34;
    (*(v126 + 8))(v20, v17);
    goto LABEL_5;
  }

  *v33 = v133;
  LOBYTE(v131) = 2;
  sub_23AA0DAF4();
  v106 = v29;
  v33[1] = v133;
  LOBYTE(v131) = 3;
  sub_23AA0DAF4();
  v105[1] = 0;
  v33[2] = v133;
  LOBYTE(v131) = 4;
  sub_23AA0DAF4();
  v33[3] = v133;
  v35 = MEMORY[0x277D84F90];
  if (v107 >= 2)
  {
    LOBYTE(v131) = 5;
    sub_23AA0DAF4();
    v36 = v133;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v37 = v110;
  v110[4] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
  LOBYTE(v131) = 6;
  sub_23A9696D8();
  sub_23AA0DAF4();
  v129 = 0;
  v38 = v124;
  *(v37 + 5) = v133;
  v39 = v35;
  v40 = v106;
  *&v37[v106[14]] = v39;
  v41 = &v37[v40[10]];
  sub_23AA0C0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
  LOBYTE(v131) = 8;
  sub_23A9780EC(&qword_27DFAFC90, sub_23A9697AC);
  v42 = v129;
  sub_23AA0DAF4();
  if (!v42)
  {
    *&v37[v40[11]] = v133;
    goto LABEL_15;
  }

  *&v133 = v42;
  v129 = v42;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
  v44 = v123;
  v45 = swift_dynamicCast();
  v46 = v122;
  if ((v45 & 1) == 0)
  {
    (*(v126 + 8))(v20, v17);
LABEL_18:

    __swift_destroy_boxed_opaque_existential_1(v128);
    v50 = *v37;

    v51 = *(v37 + 1);

    v54 = *(v37 + 2);

    v52 = *(v37 + 3);

    v53 = v106;
    v55 = *(v37 + 4);

    v56 = *(v37 + 5);

    v57 = v53[10];
    v58 = sub_23AA0C0E4();
    (*(*(v58 - 8) + 8))(&v37[v57], v58);
    v59 = *&v37[v53[14]];

    goto LABEL_6;
  }

  if ((*(v122 + 88))(v38, v44) != *MEMORY[0x277D84158])
  {
    (*(v126 + 8))(v20, v17);
    (*(v46 + 8))(v38, v44);
    goto LABEL_18;
  }

  (*(v46 + 96))(v38, v44);
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D0, &unk_23AA13060) + 48);
  *&v37[v40[11]] = MEMORY[0x277D84F90];
  v48 = sub_23AA0D8F4();
  (*(*(v48 - 8) + 8))(v38 + v47, v48);
  __swift_destroy_boxed_opaque_existential_1(v38);

LABEL_15:
  v49 = v40[12];
  LOBYTE(v133) = 10;
  *&v37[v49] = sub_23AA0DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
  LOBYTE(v131) = 11;
  sub_23A9781B8(&qword_27DFAFCA0);
  sub_23AA0DAF4();
  v129 = 0;
  sub_23A969E20(v133);
  v124 = v60;
  v123 = v61;
  v122 = v62;
  v120 = v63;

  v64 = &v37[v40[16]];
  v65 = v123;
  *v64 = v124;
  *(v64 + 1) = v65;
  v66 = v120;
  *(v64 + 2) = v122;
  *(v64 + 3) = v66;
  v67 = sub_23AA0D104();
  v68 = MGCopyAnswer();

  if (!v68)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_unknownObjectRetain();
  *&v133 = v68;
  v69 = swift_dynamicCast();
  v70 = v121;
  if ((v69 & 1) == 0 || v131 != 1)
  {
    (*(v126 + 8))(v20, v17);
LABEL_33:
    sub_23A969D58(v37, v70, type metadata accessor for CapturedRoom);
    __swift_destroy_boxed_opaque_existential_1(v128);
    sub_23A969DC0(v37, type metadata accessor for CapturedRoom);
    return;
  }

  LOBYTE(v131) = 9;
  sub_23A9347CC();
  *&v124 = v17;
  *&v123 = v20;
  v71 = v129;
  sub_23AA0DAA4();
  v129 = v71;
  if (v71)
  {
    v72 = v129;
LABEL_24:
    v129 = 0;
    v73 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
    if (v73)
    {
      v74 = v73;
      *(&v134 + 1) = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);

      *&v133 = v74;
      (*(v126 + 8))(v123, v124);
    }

    else
    {

      (*(v126 + 8))(v123, v124);
      v133 = 0u;
      v134 = 0u;
    }

    v76 = &v133;
    goto LABEL_31;
  }

  v75 = *(&v133 + 1);
  if (*(&v133 + 1) >> 60 == 15)
  {
    (*(v126 + 8))(v123, v124);
LABEL_32:
    v37 = v110;
    v70 = v121;
    goto LABEL_33;
  }

  *&v122 = v133;
  v77 = v111;
  sub_23AA0D174();
  v78 = sub_23AA0D144();
  v80 = v79;
  (*(v112 + 8))(v77, v113);
  if (v80 >> 60 == 15)
  {
    goto LABEL_40;
  }

  v81 = sub_23AA0BFC4();
  v83 = v82;
  sub_23A932864(v78, v80);
  sub_23A969670(&qword_27DFAF278, MEMORY[0x277CC5540]);
  v84 = v114;
  v85 = v117;
  sub_23AA0CFC4();
  sub_23A934274(v81, v83);
  v86 = v129;
  sub_23A934094(v81, v83);
  v129 = v86;
  sub_23A8EFA00(v81, v83);
  v87 = v116;
  sub_23AA0CFB4();
  sub_23A8EFA00(v81, v83);
  (*(v115 + 8))(v84, v85);
  sub_23A969670(&qword_27DFAF280, MEMORY[0x277CC5290]);
  v88 = sub_23AA0D004();
  v90 = sub_23A9343A8(v88, v89);

  v91 = sub_23A9346C8(v90);
  v93 = v92;

  *&v133 = v91;
  *(&v133 + 1) = v93;
  sub_23AA0CFE4();
  (*(v118 + 8))(v87, v30);
  v94 = v122;
  sub_23A934274(v122, v75);
  v95 = v129;
  v96 = sub_23A932878(v94, v75);
  v72 = v95;
  if (v95)
  {
    (*(v119 + 8))(v109, v108);
    sub_23A932864(v122, v75);
    goto LABEL_24;
  }

  v98 = v96;
  v99 = v97;
  v100 = sub_23AA0CF64();
  v102 = v101;
  sub_23A8D6C58(0, &qword_27DFAF298, 0x277CCAAC8);
  sub_23AA0D4F4();
  v129 = 0;
  if (v132)
  {
    sub_23A8EF9F0(&v131, &v133);
    v103 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    swift_dynamicCast();
    v130[3] = v103;
    v104 = v135;
    sub_23A8EFA00(v100, v102);
    sub_23A8EFA00(v98, v99);

    sub_23A932864(v122, v75);
    v130[0] = v104;
    (*(v119 + 8))(v109, v108);
    (*(v126 + 8))(v123, v124);
    v76 = v130;
LABEL_31:
    sub_23A8D5068(v76, v127, &unk_27DFB1140, &qword_23AA19C10);
    goto LABEL_32;
  }

LABEL_41:
  __break(1u);
}

unint64_t sub_23A9695BC()
{
  result = qword_27DFAFC60;
  if (!qword_27DFAFC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC58, &qword_23AA15C50);
    sub_23A969670(&qword_27DFAFC68, type metadata accessor for CapturedRoom.Surface);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC60);
  }

  return result;
}

uint64_t sub_23A969670(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23A9696D8()
{
  result = qword_27DFAFC78;
  if (!qword_27DFAFC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC70, &qword_23AA15C58);
    sub_23A969670(&qword_27DFAFC80, type metadata accessor for CapturedRoom.Object);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC78);
  }

  return result;
}

unint64_t sub_23A9697AC()
{
  result = qword_27DFAFC98;
  if (!qword_27DFAFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC98);
  }

  return result;
}

uint64_t CapturedStructure.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCA8, &qword_23AA15C78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  sub_23AA0DD84();
  v14 = *v3;
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC40, &unk_23AA15C40);
  sub_23A977ED0();
  sub_23AA0DB74();
  if (!v2)
  {
    v14 = v3[1];
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
    sub_23A977F84();
    sub_23AA0DB74();
    v14 = v3[2];
    HIBYTE(v13) = 2;
    sub_23AA0DB74();
    v14 = v3[3];
    HIBYTE(v13) = 3;
    sub_23AA0DB74();
    v14 = v3[4];
    HIBYTE(v13) = 4;
    sub_23AA0DB74();
    v14 = v3[6];
    HIBYTE(v13) = 5;
    sub_23AA0DB74();
    v14 = v3[5];
    HIBYTE(v13) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
    sub_23A978038();
    sub_23AA0DB74();
    v14 = v3[7];
    HIBYTE(v13) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
    sub_23A9780EC(&qword_27DFAFCD8, sub_23A978164);
    sub_23AA0DB74();
    v11 = *(v3 + *(type metadata accessor for CapturedStructure(0) + 52));
    LOBYTE(v14) = 7;
    sub_23AA0DB64();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CapturedRoom.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom(0) + 40);
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CapturedRoom.sections.getter()
{
  v1 = *(v0 + *(type metadata accessor for CapturedRoom(0) + 44));
}

uint64_t sub_23A969D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A969DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A969E20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (v1 == 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v1 < 3)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v1 == 3)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    if (v1 >= 5)
    {
      v2 = (v1 - 1) >> 2;
      v3 = *(result + 32);
      v4 = *(result + 36);
      v5 = *(result + 40);
      v6 = (result + 60);
      v7 = 1;
      v8 = 7;
      do
      {
        v9 = *(v6 - 3);
        if (v7 == 1)
        {
          v10 = *(v6 - 3);
        }

        else if (v7 == 2)
        {
          v11 = *(v6 - 3);
        }

        else
        {
          v12 = *(v6 - 3);
        }

        if (v8 - 2 >= v1)
        {
          goto LABEL_32;
        }

        v13 = *(v6 - 2);
        if (v7 == 1)
        {
          v14 = *(v6 - 2);
        }

        else if (v7 == 2)
        {
          v15 = *(v6 - 2);
        }

        else
        {
          v16 = *(v6 - 2);
        }

        if (v8 - 1 >= v1)
        {
          goto LABEL_33;
        }

        v17 = *(v6 - 1);
        if (v7 == 1)
        {
          v18 = *(v6 - 1);
        }

        else if (v7 == 2)
        {
          v19 = *(v6 - 1);
        }

        else
        {
          v20 = *(v6 - 1);
        }

        if (v8 >= v1)
        {
          goto LABEL_34;
        }

        v21 = *v6;
        if (v7 == 1)
        {
          v23 = *v6;
        }

        else
        {
          if (v7 == 3)
          {
            return result;
          }

          v22 = *v6;
        }

        ++v7;
        v8 += 4;
        v6 += 4;
      }

      while (--v2);
    }
  }

  __break(1u);
  return result;
}

void CapturedRoom.encode(to:)(void *a1)
{
  v2 = v1;
  v87 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D8, &qword_23AA15C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v66 - v6;
  v79 = sub_23AA0D014();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0D184();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v73 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_23AA0CFD4();
  v80 = *(v72 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v72);
  v78 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0CFF4();
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCA8, &qword_23AA15C78);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  sub_23AA0DD84();
  v84 = *v2;
  LOBYTE(v83) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
  sub_23A977F84();
  v24 = v82;
  sub_23AA0DB74();
  if (v24)
  {
    (*(v19 + 8))(v22, v18);
LABEL_4:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  v82 = v17;
  v84 = v2[1];
  LOBYTE(v83) = 2;
  sub_23AA0DB74();
  v25 = v2;
  v84 = v2[2];
  LOBYTE(v83) = 3;
  sub_23AA0DB74();
  v84 = v2[3];
  LOBYTE(v83) = 4;
  sub_23AA0DB74();
  v84 = v2[4];
  LOBYTE(v83) = 5;
  sub_23AA0DB74();
  v84 = v2[5];
  LOBYTE(v83) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
  sub_23A978038();
  sub_23AA0DB74();
  v27 = v19;
  v28 = type metadata accessor for CapturedRoom(0);
  v29 = *(v25 + v28[13]);
  LOBYTE(v84) = 7;
  sub_23AA0DB64();
  v84 = *(v25 + v28[11]);
  LOBYTE(v83) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
  sub_23A9780EC(&qword_27DFAFCD8, sub_23A978164);
  sub_23AA0DB74();
  v30 = *(v25 + v28[12]);
  LOBYTE(v84) = 10;
  sub_23AA0DB64();
  v70 = 0;
  v69 = v28;
  v31 = sub_23AA0D104();
  v32 = MGCopyAnswer();

  if (v32)
  {
    swift_unknownObjectRetain();
    v84 = v32;
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_20:
      v84 = sub_23A96AC78(*(v25 + v69[16]), *(v25 + v69[16] + 16), *(v25 + v69[16] + 32), *(v25 + v69[16] + 48));
      LOBYTE(v83) = 11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
      sub_23A9781B8(&qword_27DFAFCE8);
      sub_23AA0DB74();
      (*(v27 + 8))(v22, v18);

      goto LABEL_4;
    }

    v67 = v22;
    v68 = v18;
    v66 = v25;
    if (v83 != 1)
    {
LABEL_19:
      v25 = v66;
      v27 = v19;
      v18 = v68;
      v22 = v67;
      goto LABEL_20;
    }

    v33 = v73;
    sub_23AA0D174();
    v34 = sub_23AA0D144();
    v36 = v35;
    (*(v74 + 8))(v33, v75);
    if (v36 >> 60 != 15)
    {
      v37 = sub_23AA0BFC4();
      v39 = v38;
      sub_23A932864(v34, v36);
      sub_23A969670(&qword_27DFAF278, MEMORY[0x277CC5540]);
      v40 = v76;
      v41 = v79;
      sub_23AA0CFC4();
      sub_23A934274(v37, v39);
      v42 = v70;
      sub_23A934094(v37, v39);
      v75 = v42;
      sub_23A8EFA00(v37, v39);
      v43 = v78;
      sub_23AA0CFB4();
      sub_23A8EFA00(v37, v39);
      (*(v77 + 8))(v40, v41);
      sub_23A969670(&qword_27DFAF280, MEMORY[0x277CC5290]);
      v44 = v72;
      v45 = sub_23AA0D004();
      v47 = sub_23A9343A8(v45, v46);

      v48 = sub_23A9346C8(v47);
      v50 = v49;

      v84 = v48;
      v85 = v50;
      sub_23AA0CFE4();
      (*(v80 + 8))(v43, v44);
      sub_23A8D5194(v66 + v69[15], &v84, &unk_27DFB1140, &qword_23AA19C10);
      if (v86)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
        sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
        if (swift_dynamicCast())
        {
          v51 = v83;
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        sub_23A8D50D0(&v84, &unk_27DFB1140, &qword_23AA19C10);
        v51 = 0;
      }

      v52 = objc_opt_self();
      v84 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCF0, &qword_23AA15C88);
      v53 = sub_23AA0D654();

      v84 = 0;
      v54 = [v52 archivedDataWithRootObject:v53 requiringSecureCoding:0 error:&v84];
      swift_unknownObjectRelease();
      v55 = v84;
      if (!v54)
      {
        v63 = v55;
        sub_23AA0BE74();

        swift_willThrow();
        (*(v71 + 8))(v82, v14);
        (*(v19 + 8))(v67, v68);
        goto LABEL_4;
      }

      v56 = sub_23AA0BFE4();
      v58 = v57;

      v84 = v56;
      v85 = v58;
      v59 = sub_23AA0CF84();
      (*(*(v59 - 8) + 56))(v81, 1, 1, v59);
      sub_23A934890();
      v60 = v75;
      v61 = sub_23AA0CF74();
      if (v60)
      {
        sub_23A8D50D0(v81, &qword_27DFAF2D8, &qword_23AA15C80);
        (*(v71 + 8))(v82, v14);
        (*(v19 + 8))(v67, v68);
        sub_23A8EFA00(v56, v58);
        goto LABEL_4;
      }

      v64 = v61;
      v65 = v62;
      sub_23A8D50D0(v81, &qword_27DFAF2D8, &qword_23AA15C80);
      v84 = v64;
      v85 = v65;
      LOBYTE(v83) = 9;
      sub_23A934274(v64, v65);
      sub_23A9348E4();
      sub_23AA0DB74();
      v70 = 0;
      sub_23A8EFA00(v56, v58);
      sub_23A8EFA00(v64, v65);
      sub_23A8EFA00(v84, v85);
      (*(v71 + 8))(v82, v14);
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_23A96AC78(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = sub_23A93964C(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = a1;
  v5 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v4;
  for (i = 0; i != 4; ++i)
  {
    v11 = v6.n128_u32[0];
    if (i)
    {
      v11 = v5.n128_u32[0];
      if (i != 1)
      {
        v11 = v7.n128_u32[0];
        if (i != 2)
        {
          v11 = v8.n128_u32[0];
        }
      }
    }

    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v28 = v11;
      v23 = sub_23A93964C((v12 > 1), v13 + 1, 1, v9);
      v11 = v28;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v23;
    }

    *(v9 + 2) = v14;
    *&v9[4 * v13 + 32] = v11;
    v15 = v6.n128_u32[1];
    if (i)
    {
      v15 = v5.n128_u32[1];
      if (i != 1)
      {
        v15 = v7.n128_u32[1];
        if (i != 2)
        {
          v15 = v8.n128_u32[1];
        }
      }
    }

    v16 = *(v9 + 3);
    v17 = v13 + 2;
    if ((v13 + 2) > (v16 >> 1))
    {
      v29 = v15;
      v24 = sub_23A93964C((v16 > 1), v13 + 2, 1, v9);
      v15 = v29;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v24;
    }

    *(v9 + 2) = v17;
    *&v9[4 * v14 + 32] = v15;
    v18 = v6.n128_u32[2];
    if (i)
    {
      v18 = v5.n128_u32[2];
      if (i != 1)
      {
        v18 = v7.n128_u32[2];
        if (i != 2)
        {
          v18 = v8.n128_u32[2];
        }
      }
    }

    v19 = *(v9 + 3);
    v20 = v13 + 3;
    if ((v13 + 3) > (v19 >> 1))
    {
      v30 = v18;
      v25 = sub_23A93964C((v19 > 1), v13 + 3, 1, v9);
      v18 = v30;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v25;
    }

    *(v9 + 2) = v20;
    *&v9[4 * v17 + 32] = v18;
    v21 = v6.n128_u32[3];
    if (i)
    {
      v21 = v5.n128_u32[3];
      if (i != 1)
      {
        v21 = v7.n128_u32[3];
        if (i != 2)
        {
          v21 = v8.n128_u32[3];
        }
      }
    }

    v22 = *(v9 + 3);
    if ((v13 + 4) > (v22 >> 1))
    {
      v31 = v21;
      v26 = sub_23A93964C((v22 > 1), v13 + 4, 1, v9);
      v21 = v31;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v26;
    }

    *(v9 + 2) = v13 + 4;
    *&v9[4 * v20 + 32] = v21;
  }

  return v9;
}

uint64_t CapturedRoom.export(to:exportOptions:)(uint64_t a1, _DWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  LODWORD(a2) = *a2;
  v8 = sub_23AA0BFB4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_23A967070(a1, v7, 0, 0, a2);
  return sub_23A8D50D0(v7, &qword_27DFAF210, &qword_23AA12EE8);
}

unint64_t CapturedRoom.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  if (v1 == 3)
  {
    v2 = 0xD00000000000004DLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000004DLL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000041;
  if (!*v0)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    result = v4;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_23A96B068()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  if (v1 == 3)
  {
    v2 = 0xD00000000000004DLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000004DLL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000041;
  if (!*v0)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    result = v4;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_23A96B110()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 7827308;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t sub_23A96B158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97D9A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A96B180(uint64_t a1)
{
  v2 = sub_23A978224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B1BC(uint64_t a1)
{
  v2 = sub_23A978224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96B204(uint64_t a1)
{
  v2 = sub_23A978320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B240(uint64_t a1)
{
  v2 = sub_23A978320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96B27C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23A96B2AC(uint64_t a1)
{
  v2 = sub_23A978278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B2E8(uint64_t a1)
{
  v2 = sub_23A978278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96B324(uint64_t a1)
{
  v2 = sub_23A9782CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B360(uint64_t a1)
{
  v2 = sub_23A9782CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Confidence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCF8, &qword_23AA15CA0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD00, &qword_23AA15CA8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD08, &qword_23AA15CB0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD10, &qword_23AA15CB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978224();
  sub_23AA0DD84();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23A9782CC();
      v12 = v26;
      sub_23AA0DB24();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23A978278();
      v12 = v29;
      sub_23AA0DB24();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23A978320();
    sub_23AA0DB24();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t CapturedRoom.Confidence.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD38, &qword_23AA15CC0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD40, &qword_23AA15CC8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD48, &qword_23AA15CD0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD50, &unk_23AA15CD8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23A978224();
  v20 = v43;
  sub_23AA0DD74();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_23AA0DB14();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_23A9357E0();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_23AA0D904();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0) + 48);
      *v30 = &type metadata for CapturedRoom.Confidence;
      sub_23AA0DA84();
      sub_23AA0D8E4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_23A9782CC();
          sub_23AA0DA74();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_23A978278();
          v33 = v22;
          sub_23AA0DA74();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_23A978320();
        sub_23AA0DA74();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

RoomPlan::CapturedRoom::Section::Label_optional __swiftcall CapturedRoom.Section.Label.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}