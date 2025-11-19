uint64_t sub_13A804(uint64_t a1, void *a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v85 = a7;
  v84 = a6;
  v83 = a5;
  v102 = a4;
  v103 = a3;
  v94 = a2;
  v93 = a1;
  v88 = sub_2CCB20();
  v87 = *(v88 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2CA910();
  v91 = *(v92 - 8);
  v9 = *(v91 + 64);
  __chkstk_darwin(v92);
  v96 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v95 = &v82 - v13;
  v89 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = *(*(v89 - 8) + 64);
  v15 = __chkstk_darwin(v89);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v104 = &v82 - v17;
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v101 = &v82 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v100 = &v82 - v23;
  v24 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v98 = &v82 - v26;
  v105 = sub_2CB970();
  v99 = *(v105 - 8);
  v27 = *(v99 + 64);
  __chkstk_darwin(v105);
  v97 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCB30();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2CCAC0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20410(&unk_3519A0, &qword_2D0980);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v82 - v41);
  sub_F3F4(v93, &v82 - v41, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v104 = *v42;
    (*(v35 + 104))(v38, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v34);
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v29);
    swift_getErrorValue();
    sub_2CEEF0();
    v96 = sub_2CCAE0();
    v95 = v43;

    (*(v30 + 8))(v33, v29);
    (*(v35 + 8))(v38, v34);
    v44 = v94[6];
    v93 = v94[7];
    sub_35E0(v94 + 3, v44);
    v45 = v99;
    v46 = v97;
    (*(v99 + 104))(v97, enum case for TypeOfIntent.determine(_:), v105);
    v47 = enum case for ActivityType.failed(_:);
    v48 = sub_2C9C20();
    v49 = *(v48 - 8);
    v50 = v98;
    (*(v49 + 104))(v98, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    v51 = sub_2CA130();
    v52 = v100;
    (*(*(v51 - 8) + 56))(v100, 1, 1, v51);
    v53 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v54 = sub_2C98F0();
    v55 = *(v54 - 8);
    v56 = v101;
    (*(v55 + 104))(v101, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    sub_2CB4C0();

    sub_30B8(v56, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v52, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v50, &qword_34CB88, &unk_2D0D90);
    (*(v45 + 8))(v46, v105);
    *&v106 = v104;
    v109 = 1;
    swift_errorRetain();
    v103(&v106);
  }

  else
  {
    sub_14A58(v42, v104, &qword_34C6E8, &unk_2D0FF0);
    sub_28D424(v83, v95);
    sub_2CB5B0();
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    sub_2C9DC0();
    sub_30B8(&v106, &qword_34CC80, &qword_2D1520);
    (*(v35 + 104))(v38, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v34);
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v29);
    v57 = v87;
    v58 = v86;
    v59 = v88;
    (*(v87 + 104))(v86, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v88);
    v93 = sub_2CCAD0();
    v85 = v60;
    (*(v57 + 8))(v58, v59);
    (*(v30 + 8))(v33, v29);
    (*(v35 + 8))(v38, v34);
    v61 = v94[6];
    v88 = v94[7];
    v94 = sub_35E0(v94 + 3, v61);
    v62 = v99;
    v63 = v97;
    v64 = v105;
    (*(v99 + 104))(v97, enum case for TypeOfIntent.determine(_:), v105);
    v65 = enum case for ActivityType.completed(_:);
    v66 = sub_2C9C20();
    v67 = *(v66 - 8);
    v68 = v98;
    (*(v67 + 104))(v98, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    v69 = v90;
    sub_F3F4(v104, v90, &qword_34C6E8, &unk_2D0FF0);

    v70 = sub_2CA130();
    v71 = *(v70 - 8);
    v72 = v100;
    (*(v71 + 32))(v100, v69, v70);
    (*(v71 + 56))(v72, 0, 1, v70);
    v73 = enum case for SiriKitReliabilityCodes.success(_:);
    v74 = sub_2C98F0();
    v75 = *(v74 - 8);
    v76 = v101;
    (*(v75 + 104))(v101, v73, v74);
    (*(v75 + 56))(v76, 0, 1, v74);
    sub_2CB4C0();

    sub_30B8(v76, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v72, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v68, &qword_34CB88, &unk_2D0D90);
    (*(v62 + 8))(v63, v64);
    v77 = v92;
    *(&v107 + 1) = v92;
    v108 = &protocol witness table for AceOutput;
    v78 = sub_F390(&v106);
    v79 = v91;
    v80 = v96;
    (*(v91 + 16))(v78, v96, v77);
    v109 = 0;
    v103(&v106);
    (*(v79 + 8))(v80, v77);
    sub_30B8(v95, &unk_353020, &unk_2D0970);
    sub_30B8(v104, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v106, qword_34C798, &qword_2D0DA0);
}

uint64_t Determine.HandleIntentStrategy.makeIntentHandledResponseWithRF(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a3;
  v34 = a4;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v6;
    v35 = a1;
    v36 = v20;
    *v19 = 136315394;
    sub_2CCFB0();
    v30 = a2;
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App);
    v21 = sub_2CEE70();
    v23 = sub_3F08(v21, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = sub_2CCCA0();
    v26 = sub_3F08(v24, v25, &v36);
    a2 = v30;

    *(v19 + 14) = v26;
    _os_log_impl(&dword_0, v16, v17, "Determine+HandleIntentStrategy#makeIntentHandledResponseWithRF for app: %s %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    v6 = v31;

    a5 = v32;
  }

  (*(v11 + 8))(v14, v10);

  v27 = a2;
  v28 = v33;

  sub_14DDCC(v27, v6, a1, v27, v28, v34, a5);
}

uint64_t sub_13B8CC(uint64_t a1, void *a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), char *a5, uint64_t a6, uint64_t a7)
{
  v134 = a7;
  v122 = a6;
  v137 = a5;
  v144 = a4;
  v143 = a3;
  v146 = a2;
  v136 = a1;
  v7 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v132 = *(v7 - 8);
  v133 = *(v132 + 64);
  __chkstk_darwin(v7 - 8);
  v135 = &v117 - v8;
  v124 = sub_2CCB20();
  v123 = *(v124 - 8);
  v9 = *(v123 + 64);
  __chkstk_darwin(v124);
  v121 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v129 = *(v11 - 8);
  v12 = *(v129 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v131 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v14;
  __chkstk_darwin(v13);
  v145 = &v117 - v15;
  v125 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v126 = *(v125 - 8);
  v16 = *(v126 + 64);
  v17 = __chkstk_darwin(v125);
  v128 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v18;
  __chkstk_darwin(v17);
  v147 = (&v117 - v19);
  v20 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v142 = &v117 - v22;
  v23 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v141 = &v117 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v139 = &v117 - v28;
  v148 = sub_2CB970();
  v140 = *(v148 - 1);
  v29 = *(v140 + 64);
  __chkstk_darwin(v148);
  v138 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CCB30();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2CCAC0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v117 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2CE000();
  v119 = *(v120 - 8);
  v41 = *(v119 + 64);
  __chkstk_darwin(v120);
  v118 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20410(&unk_3519A0, &qword_2D0980);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = (&v117 - v45);
  sub_F3F4(v136, &v117 - v45, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v136 = v40;
    v137 = v35;
    v135 = v37;
    v145 = v36;
    v134 = v32;
    v147 = v31;
    v47 = *v46;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v48 = v120;
    v49 = sub_3ED0(v120, static Logger.default);
    swift_beginAccess();
    v50 = v119;
    v51 = v118;
    (*(v119 + 16))(v118, v49, v48);
    swift_errorRetain();
    v52 = sub_2CDFE0();
    v53 = sub_2CE680();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v54 = 136315394;
      swift_getErrorValue();
      v55 = sub_2CEEF0();
      v57 = v47;
      v58 = sub_3F08(v55, v56, &v149);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2082;
      v59 = sub_2CCCA0();
      v61 = sub_3F08(v59, v60, &v149);

      *(v54 + 14) = v61;
      _os_log_impl(&dword_0, v52, v53, "Determine+HandleIntentStrategy#makeIntentHandledResponseWithRF failed building dialog with error: %s %{public}s", v54, 0x16u);
      swift_arrayDestroy();

      (*(v50 + 8))(v51, v48);
      v62 = v146;
      v63 = v140;
    }

    else
    {

      (*(v50 + 8))(v51, v48);
      v62 = v146;
      v63 = v140;
      v57 = v47;
    }

    v96 = v147;
    v97 = v134;
    v98 = v145;
    v99 = v135;
    v100 = v137;
    v101 = v136;
    (*(v135 + 104))(v136, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v145);
    (*(v97 + 104))(v100, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v96);
    v133 = v57;
    swift_getErrorValue();
    sub_2CEEF0();
    v147 = sub_2CCAE0();
    v145 = v102;

    (*(v97 + 8))(v100, v96);
    (*(v99 + 8))(v101, v98);
    v103 = v62[6];
    v140 = v62[7];
    sub_35E0(v62 + 3, v103);
    v104 = v138;
    (*(v63 + 104))(v138, enum case for TypeOfIntent.determine(_:), v148);
    v105 = enum case for ActivityType.failed(_:);
    v106 = sub_2C9C20();
    v107 = v63;
    v108 = *(v106 - 8);
    v109 = v139;
    (*(v108 + 104))(v139, v105, v106);
    (*(v108 + 56))(v109, 0, 1, v106);
    v110 = sub_2CA130();
    v111 = v141;
    (*(*(v110 - 8) + 56))(v141, 1, 1, v110);
    v112 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v113 = sub_2C98F0();
    v114 = *(v113 - 8);
    v115 = v142;
    (*(v114 + 104))(v142, v112, v113);
    (*(v114 + 56))(v115, 0, 1, v113);
    sub_2CB4C0();

    sub_30B8(v115, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v111, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v109, &qword_34CB88, &unk_2D0D90);
    (*(v107 + 8))(v104, v148);
    v149 = v133;
    v150 = 1;
    swift_errorRetain();
    v143(&v149);

    v94 = qword_34C798;
    v95 = &qword_2D0DA0;
    v93 = &v149;
  }

  else
  {
    sub_14A58(v46, v147, &qword_34C6E8, &unk_2D0FF0);
    sub_28D424(v137, v145);
    (*(v37 + 104))(v40, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v36);
    (*(v32 + 104))(v35, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v31);
    v64 = v123;
    v65 = v121;
    v66 = v124;
    (*(v123 + 104))(v121, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v124);
    v136 = sub_2CCAD0();
    v122 = v67;
    (*(v64 + 8))(v65, v66);
    (*(v32 + 8))(v35, v31);
    (*(v37 + 8))(v40, v36);
    v123 = v146[6];
    v124 = v146[7];
    sub_35E0(v146 + 3, v123);
    v68 = v140;
    v69 = v138;
    (*(v140 + 104))(v138, enum case for TypeOfIntent.determine(_:), v148);
    v70 = enum case for ActivityType.completed(_:);
    v71 = sub_2C9C20();
    v72 = *(v71 - 8);
    v73 = v139;
    (*(v72 + 104))(v139, v70, v71);
    (*(v72 + 56))(v73, 0, 1, v71);
    v74 = v128;
    sub_F3F4(v147, v128, &qword_34C6E8, &unk_2D0FF0);

    v75 = sub_2CA130();
    v76 = *(v75 - 8);
    v77 = v141;
    (*(v76 + 32))(v141, v74, v75);
    (*(v76 + 56))(v77, 0, 1, v75);
    v78 = enum case for SiriKitReliabilityCodes.success(_:);
    v79 = sub_2C98F0();
    v80 = *(v79 - 8);
    v81 = v142;
    (*(v80 + 104))(v142, v78, v79);
    (*(v80 + 56))(v81, 0, 1, v79);
    sub_2CB4C0();

    sub_30B8(v81, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v77, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v73, &qword_34CB88, &unk_2D0D90);
    (*(v68 + 8))(v69, v148);
    v82 = v146;
    v148 = sub_35E0(v146 + 25, v146[28]);
    sub_F3F4(v147, v74, &qword_34C6E8, &unk_2D0FF0);
    v83 = v131;
    sub_F3F4(v145, v131, &unk_353020, &unk_2D0970);
    v84 = v135;
    sub_F3F4(v134, v135, &unk_3530C0, &unk_2D0A40);
    v85 = (*(v126 + 80) + 24) & ~*(v126 + 80);
    v86 = (v127 + *(v129 + 80) + v85) & ~*(v129 + 80);
    v87 = (v130 + *(v132 + 80) + v86) & ~*(v132 + 80);
    v88 = (v133 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    sub_14A58(v74, v89 + v85, &qword_34C6E8, &unk_2D0FF0);
    sub_14A58(v83, v89 + v86, &unk_353020, &unk_2D0970);
    sub_14A58(v84, v89 + v87, &unk_3530C0, &unk_2D0A40);
    v90 = (v89 + v88);
    v91 = v144;
    *v90 = v143;
    v90[1] = v91;
    v92 = *v148;

    sub_204218(v137, sub_13FC70, v89);

    sub_30B8(v145, &unk_353020, &unk_2D0970);
    v93 = v147;
    v94 = &qword_34C6E8;
    v95 = &unk_2D0FF0;
  }

  return sub_30B8(v93, v94, v95);
}

uint64_t sub_13CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v14 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  sub_F3F4(a4, &v22 - v17, &qword_34C6E8, &unk_2D0FF0);
  v19 = *&v18[*(v15 + 56)];
  sub_13ECF0(v18, v19, a5, a1, a2, a6, a7, v23);

  v20 = sub_2CA130();
  return (*(*(v20 - 8) + 8))(v18, v20);
}

uint64_t sub_13CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v7 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = sub_2CB260();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_20410(&unk_353020, &unk_2D0970);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_F3F4(a2, &v21 - v16, &unk_353020, &unk_2D0970);
  sub_2CA5B0();

  sub_2CA600();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_2CA620();
  sub_F3F4(v22, v11, &qword_34C6E8, &unk_2D0FF0);
  v17 = *&v11[*(v8 + 56)];
  v18 = [v17 catId];

  sub_2CE270();
  sub_2CA590();
  v19 = sub_2CA130();
  (*(*(v19 - 8) + 8))(v11, v19);
  return sub_2CA610();
}

uint64_t sub_13CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v7 = sub_2CE000();
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v9 = *(v8 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_13CF74, 0, 0);
}

uint64_t sub_13CF74()
{
  v34 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446210;
    v13 = sub_2CCCA0();
    v15 = sub_3F08(v13, v14, &v33);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Determine+HandleIntentStrategy#intentHandledResponse returning output with snippet %{public}s", v11, 0xCu);
    sub_306C(v12);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[11];
  v18 = v0[12];
  v20 = sub_2CA080();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[19] = sub_2CA070();
  v23 = sub_2CD230();
  v0[5] = v23;
  v0[6] = sub_14010C(&qword_34CC78, 255, &type metadata accessor for SiriAudioSnippets);
  v24 = sub_F390(v0 + 2);
  (*(*(v23 - 8) + 16))(v24, v19, v23);
  sub_20410(&unk_351900, &unk_2D0960);
  v25 = swift_allocObject();
  v0[20] = v25;
  *(v25 + 16) = xmmword_2D0770;
  sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
  *(v25 + 32) = *(v16 + *(v17 + 48));
  v26 = sub_2CA130();
  (*(*(v26 - 8) + 8))(v16, v26);
  v27 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
  v32 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v28 = swift_task_alloc();
  v0[21] = v28;
  *v28 = v0;
  v28[1] = sub_56F1C;
  v29 = v0[13];
  v30 = v0[10];

  return v32(v30, v0 + 2, v25, v29);
}

uint64_t sub_13D2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = sub_2CE000();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_13D3E4, 0, 0);
}

uint64_t sub_13D3E4()
{
  v31 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446210;
    v13 = sub_2CCCA0();
    v15 = sub_3F08(v13, v14, &v30);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Determine+HandleIntentStrategy#intentHandledResponse returning output with dialog only %{public}s", v11, 0xCu);
    sub_306C(v12);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[6];
  v19 = sub_2CA080();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v0[13] = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v22 = swift_allocObject();
  v0[14] = v22;
  *(v22 + 16) = xmmword_2D0770;
  sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
  *(v22 + 32) = *(v16 + *(v17 + 48));
  v23 = sub_2CA130();
  (*(*(v23 - 8) + 8))(v16, v23);
  v24 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v29 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_13D6CC;
  v26 = v0[7];
  v27 = v0[5];

  return v29(v27, v22, v26);
}

uint64_t sub_13D6CC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 72);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t Determine.HandleIntentStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = a2;
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    v30 = a1;
    v31 = v28[0];
    *v16 = 136315394;
    sub_2CCFB0();
    v28[1] = a1;
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App);
    v18 = sub_2CEE70();
    v20 = sub_3F08(v18, v19, &v31);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    v21 = v12;
    _os_log_impl(&dword_0, v13, v14, "Determine+HandleIntentStrategy#makeSiriKitIntentHandler called with app: %s and intent: %@", v16, 0x16u);
    sub_30B8(v17, &unk_34FC00, &unk_2D0150);

    sub_306C(v28[0]);

    a3 = v29;
  }

  (*(v7 + 8))(v10, v6);
  v22 = qword_34BF80;

  if (v22 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = static Determine.intentHandler;
  type metadata accessor for DetermineIntent();
  v24 = v12;
  v25 = v23;
  sub_2C9870();
  v26 = sub_2C9880();
  return (*(*(v26 - 8) + 56))(a3, 0, 1, v26);
}

uint64_t sub_13DBFC(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v92 = a3;
  v93 = a4;
  v88 = a2;
  v84 = a1;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v83 = v77 - v7;
  v85 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v8 = *(*(v85 - 8) + 64);
  v9 = __chkstk_darwin(v85);
  v82 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = v77 - v11;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v91 = v77 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v90 = v77 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v89 = v77 - v20;
  v21 = sub_2CB970();
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = *(v94 + 64);
  __chkstk_darwin(v21);
  v87 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCAC0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (v77 - v36);
  sub_F3F4(v84, v77 - v36, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = *v37;
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v29);
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v24);
    swift_getErrorValue();
    sub_2CEEF0();
    v85 = sub_2CCAE0();
    v84 = v38;

    (*(v25 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v39 = v88[6];
    v83 = v88[7];
    sub_35E0(v88 + 3, v39);
    v40 = v94;
    v41 = v87;
    (*(v94 + 104))(v87, enum case for TypeOfIntent.determine(_:), v95);
    v42 = enum case for ActivityType.failed(_:);
    v43 = sub_2C9C20();
    v44 = *(v43 - 8);
    v45 = v89;
    (*(v44 + 104))(v89, v42, v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    v46 = sub_2CA130();
    v47 = v90;
    (*(*(v46 - 8) + 56))(v90, 1, 1, v46);
    v48 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v49 = sub_2C98F0();
    v50 = *(v49 - 8);
    v51 = v91;
    (*(v50 + 104))(v91, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    sub_2CB4C0();

    sub_30B8(v51, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v47, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v45, &qword_34CB88, &unk_2D0D90);
    (*(v40 + 8))(v41, v95);
    v96[0] = v86;
    v97 = 1;
    swift_errorRetain();
    v92(v96);

    return sub_30B8(v96, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v53 = v86;
    sub_14A58(v37, v86, &qword_34C6E8, &unk_2D0FF0);
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v29);
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v24);
    v54 = OBJC_IVAR___DetermineIntentResponse_code;
    v55 = v81;
    swift_beginAccess();
    v98 = *(v55 + v54);
    sub_2CEE70();
    v81 = sub_2CCAE0();
    v80 = v56;

    (*(v25 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v57 = v88;
    v78 = v88[6];
    v79 = v88[7];
    v77[1] = sub_35E0(v88 + 3, v78);
    v58 = v87;
    (*(v94 + 104))(v87, enum case for TypeOfIntent.determine(_:), v95);
    v59 = enum case for ActivityType.failed(_:);
    v60 = sub_2C9C20();
    v61 = *(v60 - 8);
    v62 = v89;
    (*(v61 + 104))(v89, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    v63 = v82;
    sub_F3F4(v53, v82, &qword_34C6E8, &unk_2D0FF0);

    v64 = sub_2CA130();
    v84 = v64;
    v65 = *(v64 - 8);
    v66 = v90;
    (*(v65 + 32))(v90, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    v67 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v68 = sub_2C98F0();
    v69 = *(v68 - 8);
    v70 = v91;
    (*(v69 + 104))(v91, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);
    sub_2CB4C0();

    sub_30B8(v70, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v62, &qword_34CB88, &unk_2D0D90);
    (*(v94 + 8))(v58, v95);
    v71 = sub_35E0(v57 + 10, v57[13]);
    v72 = v86;
    sub_F3F4(v86, v63, &qword_34C6E8, &unk_2D0FF0);
    v73 = *(v63 + *(v85 + 48));
    v74 = sub_2CA000();
    v75 = v83;
    (*(*(v74 - 8) + 56))(v83, 1, 1, v74);
    v76 = *v71;
    sub_1C077C(v63, v73, v75, _swiftEmptyArrayStorage, v92, v93);

    sub_30B8(v75, &unk_353020, &unk_2D0970);
    sub_30B8(v72, &qword_34C6E8, &unk_2D0FF0);
    return (*(v65 + 8))(v63, v84);
  }
}

uint64_t *Determine.HandleIntentStrategy.deinit()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  sub_306C(v0 + 10);
  sub_306C(v0 + 15);
  sub_306C(v0 + 20);
  sub_306C(v0 + 25);
  return v0;
}

uint64_t Determine.HandleIntentStrategy.__deallocating_deinit()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  sub_306C(v0 + 10);
  sub_306C(v0 + 15);
  sub_306C(v0 + 20);
  sub_306C(v0 + 25);

  return swift_deallocClassInstance();
}

uint64_t sub_13E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13E988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Determine.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_13EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Determine.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_13EC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Determine.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_13ECF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v128 = a7;
  v129 = a8;
  v120 = a5;
  v121 = a6;
  v118 = a3;
  v119 = a4;
  v10 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v122 = &v106 - v12;
  v131 = sub_2CD230();
  v126 = *(v131 - 8);
  v13 = *(v126 + 64);
  v14 = __chkstk_darwin(v131);
  v113 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v15;
  __chkstk_darwin(v14);
  v125 = &v106 - v16;
  v17 = sub_2C9B80();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v115 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CA630();
  v127 = *(v20 - 8);
  v21 = *(v127 + 64);
  v22 = __chkstk_darwin(v20);
  v123 = v23;
  v124 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v132 = &v106 - v24;
  v111 = sub_2CB260();
  v110 = *(v111 - 8);
  v25 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v130 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v106 - v32;
  v34 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v35 = v34 - 8;
  v114 = *(v34 - 8);
  v36 = *(v114 + 64);
  v37 = __chkstk_darwin(v34);
  v117 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v38;
  __chkstk_darwin(v37);
  v40 = &v106 - v39;
  v41 = sub_2CA130();
  (*(*(v41 - 8) + 16))(v40, a1, v41);
  v42 = *(v35 + 56);
  v133 = v40;
  *&v40[v42] = a2;
  v43 = qword_34BF58;
  v44 = a2;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_3ED0(v27, static Logger.default);
  swift_beginAccess();
  v46 = v28[2];
  v46(v33, v45, v27);
  v47 = sub_2CDFE0();
  v48 = sub_2CE670();
  v49 = os_log_type_enabled(v47, v48);
  v134 = v20;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v108 = v27;
    v52 = v51;
    v135 = v51;
    *v50 = 136446210;
    v53 = sub_2CCCA0();
    v55 = sub_3F08(v53, v54, &v135);
    v107 = v33;
    v56 = v45;
    v57 = v46;
    v58 = v55;

    *(v50 + 4) = v58;
    v46 = v57;
    v45 = v56;
    _os_log_impl(&dword_0, v47, v48, "Determine+HandleIntentStrategy#intentHandledResponse... %{public}s", v50, 0xCu);
    sub_306C(v52);
    v27 = v108;

    v59 = v28[1];
    v59(v107, v27);
  }

  else
  {

    v59 = v28[1];
    v59(v33, v27);
  }

  v60 = v130;
  v61 = sub_2CB460();
  if (!v61)
  {
    sub_2CB180();
    v61 = sub_2CB170();
  }

  v62 = v61;
  v46(v60, v45, v27);

  v63 = sub_2CDFE0();
  v64 = v27;
  v65 = sub_2CE660();

  if (os_log_type_enabled(v63, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v108 = v28;
    v68 = v67;
    v135 = v67;
    *v66 = 136315138;
    sub_2CB130();
    v69 = v109;
    sub_2CD3C0();

    v70 = sub_2CB200();
    v71 = v59;
    v73 = v72;
    (*(v110 + 8))(v69, v111);
    v74 = sub_3F08(v70, v73, &v135);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_0, v63, v65, "Determine+HandleIntentStrategy#intentHandledResponse with responseMode = %s", v66, 0xCu);
    sub_306C(v68);

    v71(v130, v64);
  }

  else
  {

    v59(v60, v64);
  }

  v75 = v133;
  v76 = v134;
  v77 = v132;
  v78 = v126;
  v79 = sub_2C9B20();
  __chkstk_darwin(v79);
  v80 = v119;
  *(&v106 - 6) = v118;
  *(&v106 - 5) = v80;
  *(&v106 - 4) = v120;
  *(&v106 - 3) = v62;
  *(&v106 - 2) = v75;
  sub_2CA560();
  v81 = v122;
  sub_F3F4(v121, v122, &unk_3530C0, &unk_2D0A40);
  v82 = v131;
  v83 = (*(v78 + 48))(v81, 1, v131);
  v130 = v62;
  if (v83 == 1)
  {
    sub_30B8(v81, &unk_3530C0, &unk_2D0A40);
    v84 = v117;
    sub_F3F4(v75, v117, &qword_34C6E8, &unk_2D0FF0);
    v85 = v127;
    v86 = v124;
    (*(v127 + 16))(v124, v77, v76);
    v87 = v76;
    v88 = (*(v114 + 80) + 16) & ~*(v114 + 80);
    v89 = (v116 + *(v85 + 80) + v88) & ~*(v85 + 80);
    v90 = swift_allocObject();
    v91 = v90 + v88;
    v92 = v87;
    v93 = v85;
    sub_14A58(v84, v91, &qword_34C6E8, &unk_2D0FF0);
    (*(v85 + 32))(v90 + v89, v86, v87);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  else
  {
    v126 = *(v78 + 32);
    v94 = v125;
    (v126)(v125, v81, v82);
    v95 = v113;
    (*(v78 + 16))(v113, v94, v82);
    v96 = v117;
    sub_F3F4(v75, v117, &qword_34C6E8, &unk_2D0FF0);
    v93 = v127;
    v97 = v124;
    (*(v127 + 16))(v124, v77, v134);
    v98 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v99 = (v112 + *(v114 + 80) + v98) & ~*(v114 + 80);
    v100 = (v116 + *(v93 + 80) + v99) & ~*(v93 + 80);
    v101 = swift_allocObject();
    v102 = v101 + v98;
    v103 = v131;
    (v126)(v102, v95, v131);
    v92 = v134;
    v104 = v101 + v99;
    v77 = v132;
    sub_14A58(v96, v104, &qword_34C6E8, &unk_2D0FF0);
    (*(v93 + 32))(v101 + v100, v97, v92);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (*(v78 + 8))(v125, v103);
  }

  (*(v93 + 8))(v77, v92);
  return sub_30B8(v133, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_13F89C(unint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "Determine+HandleIntentStrategy#makeFailureHandlingIntentResponse", v17, 2u);
  }

  (*(v10 + 8))(v13, v9);
  v18 = *(v5 + 72);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_2CECB0(37);

  v32 = 0xD000000000000023;
  v33 = 0x80000000002DDC30;
  v20 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  v29 = *&a2[v20];
  v34._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v34);

  v21 = v32;
  v22 = v33;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v21;
  *(inited + 56) = v22;
  v23 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = a3;
  *(v24 + 32) = a4;
  *(v24 + 40) = a2;

  v25 = a2;
  sub_E5794(v23, v28, sub_13FC64, v24);
}

uint64_t sub_13FC70(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v2 + 16);
  v14 = (v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return sub_13CAF4(a1, a2, v13, v2 + v6, v2 + v9, v2 + v12, v15, v16);
}

uint64_t sub_13FE18(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2CA630() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24C84;

  return sub_13D2E4(a1, v1 + v6, v1 + v9);
}

uint64_t sub_13FF60(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_13CE74(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_14010C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_140154(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_140160(uint64_t a1)
{
  v120 = a1;
  v1 = sub_20410(&qword_34E480, &qword_2D2280);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v106 = &v101 - v3;
  v111 = sub_2CD4C0();
  v115 = *(v111 - 8);
  v4 = *(v115 + 64);
  __chkstk_darwin(v111);
  v104 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v6 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v117 = &v101 - v7;
  v8 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v108 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v113 = &v101 - v13;
  __chkstk_darwin(v12);
  v114 = &v101 - v14;
  v15 = sub_20410(&qword_34CC90, qword_2D40E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v116 = &v101 - v17;
  v18 = sub_2CA870();
  v19 = *(v18 - 8);
  v20 = v19[8];
  __chkstk_darwin(v18);
  v121 = (&v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v105 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v118 = &v101 - v28;
  v29 = __chkstk_darwin(v27);
  v109 = &v101 - v30;
  v31 = __chkstk_darwin(v29);
  v112 = &v101 - v32;
  __chkstk_darwin(v31);
  v34 = &v101 - v33;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v37 = v23 + 2;
  v36 = v23[2];
  v36(v34, v35, v22);
  v38 = sub_2CDFE0();
  v39 = sub_2CE690();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v119 = v19;
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "OpenMediaItemFlow#on validating input...", v40, 2u);
    v37 = v23 + 2;
    v19 = v119;
  }

  v42 = v23[1];
  v41 = (v23 + 1);
  v119 = v42;
  (v42)(v34, v22);
  v44 = v120;
  v43 = v121;
  sub_2CA790();
  if ((v19[11])(v43, v18) != enum case for Parse.pommesResponse(_:))
  {
    v60 = v22;
    v36(v118, v35, v22);
    v61 = sub_2CDFE0();
    v62 = sub_2CE680();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "OpenMediaItemFlow#on unexpected parse type, rejecting", v63, 2u);
      v43 = v121;
    }

    (v119)(v118, v60);
    (v19[1])(v43, v18);
    return 0;
  }

  (v19[12])(v43, v18);
  v45 = *v43;
  v46 = sub_1B7F14();
  if (!v46)
  {
    v121 = v41;
    v64 = v109;
    v36(v109, v35, v22);
    v65 = v45;
    v66 = sub_2CDFE0();
    v67 = sub_2CE680();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v122 = v69;
      *v68 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v70 = v22;
      v71 = sub_2CE420();
      v73 = v72;

      v74 = sub_3F08(v71, v73, &v122);

      *(v68 + 4) = v74;
      _os_log_impl(&dword_0, v66, v67, "OpenMediaItemFlow#on pommesResponse doesn't contain audioExperience %s", v68, 0xCu);
      sub_306C(v69);

      v75 = v64;
      v76 = v70;
    }

    else
    {

      v75 = v64;
      v76 = v22;
    }

    (v119)(v75, v76);
    return 0;
  }

  v47 = v46;
  v118 = v22;
  sub_2CD700();
  v48 = v116;
  v109 = v47;
  sub_2CDA40();
  v49 = sub_2CAA00();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  if (!sub_2CD600())
  {
LABEL_19:
    v78 = v112;
    v79 = v36;
    v80 = v118;
    v79(v112, v35, v118);
    v81 = sub_2CDFE0();
    v82 = sub_2CE680();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "OpenMediaItemFlow#on invalid AudioIntent for open use case", v83, 2u);
    }

    else
    {
    }

    (v119)(v78, v80);
    return 0;
  }

  v101 = v45;
  v102 = v36;
  v103 = v37;
  v116 = v35;
  v121 = v41;
  v50 = v114;
  sub_2CD6C0();
  v51 = v115;
  v52 = v113;
  v53 = v111;
  (*(v115 + 104))(v113, enum case for CommonAudio.Verb.open(_:), v111);
  (*(v51 + 56))(v52, 0, 1, v53);
  v54 = *(v110 + 48);
  v55 = v117;
  sub_F3F4(v50, v117, &qword_34D6B8, &qword_2D15B0);
  v56 = v55;
  sub_F3F4(v52, v55 + v54, &qword_34D6B8, &qword_2D15B0);
  v57 = *(v51 + 48);
  if (v57(v56, 1, v53) != 1)
  {
    v77 = v108;
    sub_F3F4(v56, v108, &qword_34D6B8, &qword_2D15B0);
    if (v57(v56 + v54, 1, v53) != 1)
    {
      v85 = v77;
      v86 = v115;
      v87 = v104;
      (*(v115 + 32))(v104, v56 + v54, v53);
      sub_14CCF0(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
      v88 = v56;
      v89 = sub_2CE250();

      v90 = *(v86 + 8);
      v90(v87, v53);
      sub_30B8(v113, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v114, &qword_34D6B8, &qword_2D15B0);
      v90(v85, v53);
      sub_30B8(v88, &qword_34D6B8, &qword_2D15B0);
      v35 = v116;
      v36 = v102;
      v45 = v101;
      if (v89)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_30B8(v113, &qword_34D6B8, &qword_2D15B0);
    v58 = v117;
    sub_30B8(v114, &qword_34D6B8, &qword_2D15B0);
    (*(v115 + 8))(v77, v53);
    v35 = v116;
    v36 = v102;
    goto LABEL_18;
  }

  sub_30B8(v52, &qword_34D6B8, &qword_2D15B0);
  v58 = v117;
  sub_30B8(v50, &qword_34D6B8, &qword_2D15B0);
  v59 = v57(v58 + v54, 1, v53);
  v35 = v116;
  v36 = v102;
  if (v59 != 1)
  {
LABEL_18:
    sub_30B8(v58, &qword_34D6B0, &unk_2D4FC0);
    v45 = v101;
    goto LABEL_19;
  }

  sub_30B8(v58, &qword_34D6B8, &qword_2D15B0);
  v45 = v101;
LABEL_27:

  v91 = v107;
  v92 = *(v107 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse);
  *(v107 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse) = v45;

  v93 = v105;
  v36(v105, v35, v118);
  v94 = sub_2CDFE0();
  v95 = sub_2CE690();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_0, v94, v95, "OpenMediaItemFlow#on accepting input", v96, 2u);
  }

  (v119)(v93, v118);
  v97 = sub_2CA7B0();
  v98 = *(v97 - 8);
  v99 = v106;
  (*(v98 + 16))(v106, v44, v97);
  (*(v98 + 56))(v99, 0, 1, v97);
  v100 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_input;
  swift_beginAccess();
  sub_A4888(v99, v91 + v100);
  swift_endAccess();
  return 1;
}

uint64_t sub_140F48(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(sub_20410(&qword_34D6D0, qword_2D34A0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = *(*(sub_20410(&qword_34CC90, qword_2D40E0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v5 = sub_2CB3F0();
  v2[25] = v5;
  v6 = *(v5 - 8);
  v2[26] = v6;
  v7 = *(v6 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v8 = sub_2CB400();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v11 = *(*(sub_20410(&qword_352770, &qword_2D4FB8) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v12 = sub_2CB430();
  v2[40] = v12;
  v13 = *(v12 - 8);
  v2[41] = v13;
  v14 = *(v13 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v15 = *(*(sub_20410(&qword_34CB78, &unk_2D0D80) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v16 = *(*(sub_20410(&qword_34CB88, &unk_2D0D90) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v17 = sub_2CB970();
  v2[46] = v17;
  v18 = *(v17 - 8);
  v2[47] = v18;
  v19 = *(v18 + 64) + 15;
  v2[48] = swift_task_alloc();
  v20 = sub_2CCB20();
  v2[49] = v20;
  v21 = *(v20 - 8);
  v2[50] = v21;
  v22 = *(v21 + 64) + 15;
  v2[51] = swift_task_alloc();
  v23 = sub_2CCB30();
  v2[52] = v23;
  v24 = *(v23 - 8);
  v2[53] = v24;
  v25 = *(v24 + 64) + 15;
  v2[54] = swift_task_alloc();
  v26 = sub_2CCAC0();
  v2[55] = v26;
  v27 = *(v26 - 8);
  v2[56] = v27;
  v28 = *(v27 + 64) + 15;
  v2[57] = swift_task_alloc();
  v29 = sub_2CB8B0();
  v2[58] = v29;
  v30 = *(v29 - 8);
  v2[59] = v30;
  v31 = *(v30 + 64) + 15;
  v2[60] = swift_task_alloc();
  v32 = sub_2CD540();
  v2[61] = v32;
  v33 = *(v32 - 8);
  v2[62] = v33;
  v34 = *(v33 + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v35 = sub_2C90E0();
  v2[66] = v35;
  v36 = *(v35 - 8);
  v2[67] = v36;
  v37 = *(v36 + 64) + 15;
  v2[68] = swift_task_alloc();
  v38 = sub_2CD5B0();
  v2[69] = v38;
  v39 = *(v38 - 8);
  v2[70] = v39;
  v40 = *(v39 + 64) + 15;
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v41 = sub_2CA7B0();
  v2[74] = v41;
  v42 = *(v41 - 8);
  v2[75] = v42;
  v43 = *(v42 + 64) + 15;
  v2[76] = swift_task_alloc();
  v44 = *(*(sub_20410(&qword_34E480, &qword_2D2280) - 8) + 64) + 15;
  v2[77] = swift_task_alloc();
  v45 = sub_2CA870();
  v2[78] = v45;
  v46 = *(v45 - 8);
  v2[79] = v46;
  v47 = *(v46 + 64) + 15;
  v2[80] = swift_task_alloc();
  v48 = sub_2CE1D0();
  v2[81] = v48;
  v49 = *(v48 - 8);
  v2[82] = v49;
  v50 = *(v49 + 64) + 15;
  v2[83] = swift_task_alloc();
  v51 = sub_2CE000();
  v2[84] = v51;
  v52 = *(v51 - 8);
  v2[85] = v52;
  v53 = *(v52 + 64) + 15;
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();

  return _swift_task_switch(sub_1417C8, 0, 0);
}

uint64_t sub_1417C8()
{
  v204 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = v0[103];
  v2 = v0[85];
  v3 = v0[84];
  v4 = sub_3ED0(v3, static Logger.default);
  v0[104] = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[105] = v5;
  v0[106] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v196 = v4;
  v198 = v5;
  v5(v1, v4, v3);
  v6 = sub_2CDFE0();
  v7 = sub_2CE690();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "OpenMediaItemFlow#execute", v8, 2u);
  }

  v9 = v0[103];
  v202 = v0;
  v10 = v0[85];
  v11 = v0[84];
  v12 = v0[83];
  v13 = v0[82];
  v14 = v0[81];
  v15 = v0[77];
  v16 = v0[75];
  v194 = v0[74];
  v17 = v0[22];

  v18 = *(v10 + 8);
  v202[107] = v18;
  v201 = v18;
  v18(v9, v11);
  v19 = v202;
  (*(v13 + 104))(v12, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v14);
  sub_2CE1E0();
  v20 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_input;
  swift_beginAccess();
  sub_F3F4(v17 + v20, v15, &qword_34E480, &qword_2D2280);
  if ((*(v16 + 48))(v15, 1, v194))
  {
    sub_30B8(v202[77], &qword_34E480, &qword_2D2280);
  }

  else
  {
    v21 = v202[80];
    v22 = v202[79];
    v23 = v202[78];
    v24 = v202[77];
    v25 = v202[76];
    v26 = v202[75];
    v27 = v202[74];
    (*(v26 + 16))(v25, v24, v27);
    sub_30B8(v24, &qword_34E480, &qword_2D2280);
    sub_2CA790();
    (*(v26 + 8))(v25, v27);
    v28 = (*(v22 + 88))(v21, v23);
    v29 = v202[80];
    v30 = v202[79];
    v31 = v202[78];
    if (v28 == enum case for Parse.pommesResponse(_:))
    {
      v32 = v202[22];
      (*(v30 + 96))(v202[80], v31);
      v33 = *(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse);
      *(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse) = *v29;
    }

    else
    {
      (*(v30 + 8))(v202[80], v31);
    }
  }

  v34 = *(v202[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse);
  v202[108] = v34;
  if (!v34)
  {
    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_1B7F14();
  v202[109] = v36;
  if (!v36)
  {

LABEL_27:
    v198(v202[88], v196, v202[84]);
    v90 = sub_2CDFE0();
    v91 = sub_2CE680();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "OpenMediaItemFlow#execute missing pommesResponse or audioExperience", v92, 2u);
    }

    v93 = v202[88];
    v94 = v202[85];
    v95 = v202[84];
    v97 = v202[50];
    v96 = v202[51];
    v98 = v202[49];

    v201(v93, v95);
    (*(v97 + 104))(v96, enum case for AdditionalMetricsDescription.StatusReason.missingPommesResponse(_:), v98);
    v99 = swift_task_alloc();
    v202[156] = v99;
    *v99 = v202;
    v100 = sub_1480AC;
    goto LABEL_30;
  }

  v37 = v36;
  sub_2CDBC0();
  sub_2CDBB0();
  sub_2CDAE0();
  v202[110] = sub_2CDBA0();

  v38 = sub_2CDBD0();
  if (!(v38 >> 62))
  {
    if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }

LABEL_61:
    v167 = v202[89];
    v168 = v202[84];

    v198(v167, v196, v168);
    v169 = sub_2CDFE0();
    v170 = sub_2CE680();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_0, v169, v170, "OpenMediaItemFlow#execute failed to get audioItem from ranked results", v171, 2u);
    }

    v172 = v202[89];
    v173 = v202[85];
    v174 = v202[84];
    v175 = v202[24];

    v201(v172, v174);
    sub_2CD700();
    v176 = v37;
    sub_2CDA40();

    v177 = sub_2CAA00();
    (*(*(v177 - 8) + 56))(v175, 0, 1, v177);
    v178 = sub_2CD600();
    v202[153] = v178;
    v179 = v202[61];
    v180 = v202[62];
    v181 = v202[23];
    if (v178)
    {
      v182 = v202[23];
      sub_2CD6F0();
      if ((*(v180 + 48))(v181, 1, v179) != 1)
      {
        (*(v202[62] + 32))(v202[63], v202[23], v202[61]);
LABEL_69:
        v187 = v202[62];
        v186 = v202[63];
        v188 = v202[61];
        v189 = sub_2CD510();
        (*(v187 + 8))(v186, v188);
        if (v189)
        {
          sub_2CBE30();
        }

        else
        {
          sub_2CBE10();
        }

        sub_2CCFB0();
        v190 = sub_2CCF80();
        v202[154] = v190;
        v191 = swift_task_alloc();
        v202[155] = v191;
        *v191 = v202;
        v191[1] = sub_147C5C;
        v192 = v202[22];

        return sub_14AB6C(v190, 0, 0, 0xE000000000000000);
      }
    }

    else
    {
      (*(v180 + 56))(v202[23], 1, 1, v202[61]);
    }

    v183 = v202[62];
    v184 = v202[61];
    v185 = v202[23];
    (*(v183 + 104))(v202[63], enum case for CommonAudio.MediaType.unknown(_:), v184);
    if ((*(v183 + 48))(v185, 1, v184) != 1)
    {
      sub_30B8(v202[23], &qword_34D6D0, qword_2D34A0);
    }

    goto LABEL_69;
  }

  v165 = v38;
  v166 = sub_2CEDA0();
  v38 = v165;
  if (!v166)
  {
    goto LABEL_61;
  }

LABEL_14:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v40 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return dispatch thunk of AccountProviding.requestingUserDSID()(v38, v39);
    }

    v40 = *(v38 + 32);
  }

  v41 = v40;
  v42 = v202[73];
  v43 = v202[72];
  v44 = v202[70];
  v45 = v202[69];
  v46 = v202[68];
  v47 = v202[67];
  v48 = v202[66];

  sub_2CDA80();

  sub_2B40E8(v43);
  (*(v47 + 8))(v46, v48);
  (*(v44 + 32))(v42, v43, v45);
  sub_2CD590();
  if (!v49 || (v50 = sub_2CB910(), v51 = *(v50 + 48), v52 = *(v50 + 52), swift_allocObject(), v53 = sub_2CB920(), (v202[111] = v53) == 0))
  {
    v104 = v202[73];
    v105 = v202[71];
    v106 = v202[70];
    v107 = v202[69];
    v198(v202[90], v196, v202[84]);
    (*(v106 + 16))(v105, v104, v107);
    v108 = sub_2CDFE0();
    v109 = sub_2CE680();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v202[90];
    v112 = v202[84];
    v113 = v202[71];
    v114 = v202[70];
    v115 = v202[69];
    if (v110)
    {
      v200 = v202[85];
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v203 = v117;
      *v116 = 136315138;
      v118 = sub_2CD590();
      if (v119)
      {
        v120 = v118;
      }

      else
      {
        v120 = 0x3E6C696E3CLL;
      }

      v197 = v111;
      v199 = v112;
      if (v119)
      {
        v121 = v119;
      }

      else
      {
        v121 = 0xE500000000000000;
      }

      v122 = v109;
      v125 = *(v114 + 8);
      v123 = v114 + 8;
      v124 = v125;
      v125(v113, v115);
      v126 = v120;
      v19 = v202;
      v127 = sub_3F08(v126, v121, &v203);

      *(v116 + 4) = v127;
      _os_log_impl(&dword_0, v108, v122, "OpenMediaItemFlow#execute failed to convert identifier: %s", v116, 0xCu);
      sub_306C(v117);

      v128 = v199;
      v129 = v197;
    }

    else
    {

      v130 = *(v114 + 8);
      v123 = v114 + 8;
      v124 = v130;
      v130(v113, v115);
      v129 = v111;
      v128 = v112;
    }

    v201(v129, v128);
    v19[151] = v124;
    v19[150] = v123;
    (*(v19[50] + 104))(v19[51], enum case for AdditionalMetricsDescription.StatusReason.failedToConvertPlaybackIdentifier(_:), v19[49]);
    v99 = swift_task_alloc();
    v19[152] = v99;
    *v99 = v19;
    v100 = sub_1477B4;
LABEL_30:
    v99[1] = v100;
    v101 = v19[22];
    v102 = v19[51];

    return sub_14982C(v102);
  }

  v54 = v202[73];
  v55 = v202[65];
  v57 = v202[61];
  v56 = v202[62];
  sub_2CD5A0();
  LOBYTE(v54) = sub_2CD510();
  v58 = *(v56 + 8);
  v202[112] = v58;
  v202[113] = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v58(v55, v57);
  v59 = v202[84];
  if ((v54 & 1) == 0)
  {
    v198(v202[98], v196, v59);
    v131 = sub_2CDFE0();
    v132 = sub_2CE670();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_0, v131, v132, "OpenMediaItemFlow#execute using Music open intent", v133, 2u);
    }

    v134 = v202[98];
    v135 = v202[85];
    v136 = v202[84];
    v137 = v202[22];

    v201(v134, v136);
    v138 = *(v137 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider + 24);
    v139 = *(v137 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider + 32);
    sub_35E0((v137 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider), v138);
    v140 = async function pointer to dispatch thunk of AccountProviding.requestingUserDSID()[1];
    v141 = swift_task_alloc();
    v202[121] = v141;
    *v141 = v202;
    v141[1] = sub_143B90;
    v38 = v138;
    v39 = v139;

    return dispatch thunk of AccountProviding.requestingUserDSID()(v38, v39);
  }

  v198(v202[102], v196, v59);
  v60 = sub_2CDFE0();
  v61 = sub_2CE670();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_0, v60, v61, "OpenMediaItemFlow#execute mediaItem is Podcasts type, using Podcasts open intent", v62, 2u);
  }

  v63 = v202[102];
  v64 = v202[85];
  v65 = v202[84];
  v66 = v202[64];
  v67 = v202[62];
  v193 = v202[73];
  v195 = v202[61];
  v68 = v202[60];
  v69 = v202[59];
  v70 = v202[58];

  v201(v63, v65);
  sub_2CB8C0();
  v71 = sub_2CB870();
  v73 = v72;
  v202[114] = v72;
  (*(v69 + 8))(v68, v70);
  sub_2CD5A0();
  v74 = (*(v67 + 88))(v66, v195);
  v75 = v202[84];
  if (v74 == enum case for CommonAudio.MediaType.podcast(_:))
  {
    v198(v202[101], v196, v75);

    v76 = sub_2CDFE0();
    v77 = sub_2CE670();

    v78 = os_log_type_enabled(v76, v77);
    v79 = v202[101];
    v80 = v202[85];
    v81 = v202[84];
    if (v78)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v203 = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_3F08(v71, v73, &v203);
      _os_log_impl(&dword_0, v76, v77, "OpenMediaItemFlow#execute invoking OpenPodcastShowAppIntent with identifier: %s", v82, 0xCu);
      sub_306C(v83);
    }

    v201(v79, v81);
    v84 = (v202[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker);
    v85 = v84[3];
    v86 = v84[4];
    sub_35E0(v84, v85);
    v87 = async function pointer to dispatch thunk of AppIntentInvoking.invokeOpenPodcastShowAppIntent(showIdentifier:)[1];
    v88 = swift_task_alloc();
    v202[115] = v88;
    *v88 = v202;
    v89 = sub_142B2C;
LABEL_57:
    v88[1] = v89;

    return dispatch thunk of AppIntentInvoking.invokeOpenPodcastShowAppIntent(showIdentifier:)(v71, v73, v85, v86);
  }

  if (v74 != enum case for CommonAudio.MediaType.episode(_:))
  {
    v198(v202[99], v196, v75);

    v155 = sub_2CDFE0();
    v156 = sub_2CE670();

    v157 = os_log_type_enabled(v155, v156);
    v158 = v202[99];
    v159 = v202[85];
    v160 = v202[84];
    if (v157)
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v203 = v162;
      *v161 = 136315138;
      *(v161 + 4) = sub_3F08(v71, v73, &v203);
      _os_log_impl(&dword_0, v155, v156, "OpenMediaItemFlow#execute mediaType is not podcastShow or podcastEpisode, defaulting to invoke OpenPodcastShowAppIntent with identifier: %s", v161, 0xCu);
      sub_306C(v162);
    }

    v201(v158, v160);
    v163 = (v202[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker);
    v85 = v163[3];
    v86 = v163[4];
    sub_35E0(v163, v85);
    v164 = async function pointer to dispatch thunk of AppIntentInvoking.invokeOpenPodcastShowAppIntent(showIdentifier:)[1];
    v88 = swift_task_alloc();
    v202[119] = v88;
    *v88 = v202;
    v89 = sub_1433EC;
    goto LABEL_57;
  }

  v198(v202[100], v196, v75);

  v142 = sub_2CDFE0();
  v143 = sub_2CE670();

  v144 = os_log_type_enabled(v142, v143);
  v145 = v202[100];
  v146 = v202[85];
  v147 = v202[84];
  if (v144)
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v203 = v149;
    *v148 = 136315138;
    *(v148 + 4) = sub_3F08(v71, v73, &v203);
    _os_log_impl(&dword_0, v142, v143, "OpenMediaItemFlow#execute invoking OpenPodcastEpisodeAppIntent with identifier: %s", v148, 0xCu);
    sub_306C(v149);
  }

  v201(v145, v147);
  v150 = (v202[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker);
  v151 = v150[3];
  v152 = v150[4];
  sub_35E0(v150, v151);
  v153 = async function pointer to dispatch thunk of AppIntentInvoking.invokeOpenPodcastEpisodeAppIntent(episodeIdentifier:)[1];
  v154 = swift_task_alloc();
  v202[117] = v154;
  *v154 = v202;
  v154[1] = sub_1432BC;

  return dispatch thunk of AppIntentInvoking.invokeOpenPodcastEpisodeAppIntent(episodeIdentifier:)(v71, v73, v151, v152);
}

uint64_t sub_142B2C()
{
  v2 = *(*v1 + 920);
  v3 = *(*v1 + 912);
  v6 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v4 = sub_1489D4;
  }

  else
  {
    v4 = sub_142C5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_142C5C()
{
  v74 = v0[111];
  v76 = v0[110];
  v72 = v0[108];
  v78 = v0[70];
  v80 = v0[109];
  v82 = v0[69];
  v84 = v0[73];
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[51];
  v9 = v0[49];
  v57 = v0[48];
  v54 = v0[47];
  v64 = v0[45];
  v59 = v0[46];
  v61 = v0[22];
  v68 = v0[44];
  v70 = v0[21];
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
  (*(v6 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v5);
  (*(v7 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v9);
  sub_2CCAD0();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = (v61 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider);
  v11 = *(v61 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24);
  v62 = *(v61 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0(v10, v11);
  (*(v54 + 104))(v57, enum case for TypeOfIntent.openMediaItem(_:), v59);
  v12 = enum case for ActivityType.completed(_:);
  v13 = sub_2C9C20();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v64, v12, v13);
  (*(v14 + 56))(v64, 0, 1, v13);
  v15 = enum case for SiriKitReliabilityCodes.success(_:);
  v16 = sub_2C98F0();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v68, v15, v16);
  (*(v17 + 56))(v68, 0, 1, v16);
  sub_2CB4B0();

  sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v64, &qword_34CB88, &unk_2D0D90);
  (*(v54 + 8))(v57, v59);
  sub_2C9EB0();

  (*(v78 + 8))(v84, v82);
  v18 = v0[103];
  v19 = v0[102];
  v20 = v0[101];
  v21 = v0[100];
  v22 = v0[99];
  v23 = v0[98];
  v24 = v0[97];
  v25 = v0[96];
  v26 = v0[95];
  v27 = v0[94];
  v30 = v0[93];
  v31 = v0[92];
  v32 = v0[91];
  v33 = v0[90];
  v34 = v0[89];
  v35 = v0[88];
  v36 = v0[87];
  v37 = v0[86];
  v38 = v0[83];
  v39 = v0[80];
  v40 = v0[77];
  v41 = v0[76];
  v42 = v0[73];
  v43 = v0[72];
  v44 = v0[71];
  v45 = v0[68];
  v46 = v0[65];
  v47 = v0[64];
  v48 = v0[63];
  v49 = v0[60];
  v50 = v0[57];
  v51 = v0[54];
  v52 = v0[51];
  v53 = v0[48];
  v55 = v0[45];
  v56 = v0[44];
  v58 = v0[43];
  v60 = v0[42];
  v63 = v0[39];
  v65 = v0[38];
  v66 = v0[37];
  v67 = v0[36];
  v69 = v0[35];
  v71 = v0[34];
  v73 = v0[33];
  v75 = v0[32];
  v77 = v0[31];
  v79 = v0[28];
  v81 = v0[27];
  v83 = v0[24];
  v85 = v0[23];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1432BC()
{
  v2 = *(*v1 + 936);
  v3 = *(*v1 + 912);
  v6 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v4 = sub_148C1C;
  }

  else
  {
    v4 = sub_14CD38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1433EC()
{
  v2 = *(*v1 + 952);
  v3 = *(*v1 + 912);
  v6 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v4 = sub_148E64;
  }

  else
  {
    v4 = sub_14351C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_14351C()
{
  v1 = *(v0 + 904);
  (*(v0 + 896))(*(v0 + 512), *(v0 + 488));
  v75 = *(v0 + 888);
  v77 = *(v0 + 880);
  v73 = *(v0 + 864);
  v79 = *(v0 + 560);
  v81 = *(v0 + 872);
  v83 = *(v0 + 552);
  v85 = *(v0 + 584);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 416);
  v7 = *(v0 + 424);
  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  v10 = *(v0 + 392);
  v58 = *(v0 + 384);
  v55 = *(v0 + 376);
  v65 = *(v0 + 360);
  v60 = *(v0 + 368);
  v62 = *(v0 + 176);
  v69 = *(v0 + 352);
  v71 = *(v0 + 168);
  (*(v3 + 104))(v2, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v4);
  (*(v7 + 104))(v5, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v6);
  (*(v8 + 104))(v9, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v10);
  sub_2CCAD0();
  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v11 = (v62 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider);
  v12 = *(v62 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24);
  v63 = *(v62 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0(v11, v12);
  (*(v55 + 104))(v58, enum case for TypeOfIntent.openMediaItem(_:), v60);
  v13 = enum case for ActivityType.completed(_:);
  v14 = sub_2C9C20();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v65, v13, v14);
  (*(v15 + 56))(v65, 0, 1, v14);
  v16 = enum case for SiriKitReliabilityCodes.success(_:);
  v17 = sub_2C98F0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v69, v16, v17);
  (*(v18 + 56))(v69, 0, 1, v17);
  sub_2CB4B0();

  sub_30B8(v69, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v65, &qword_34CB88, &unk_2D0D90);
  (*(v55 + 8))(v58, v60);
  sub_2C9EB0();

  (*(v79 + 8))(v85, v83);
  v19 = *(v0 + 824);
  v20 = *(v0 + 816);
  v21 = *(v0 + 808);
  v22 = *(v0 + 800);
  v23 = *(v0 + 792);
  v24 = *(v0 + 784);
  v25 = *(v0 + 776);
  v26 = *(v0 + 768);
  v27 = *(v0 + 760);
  v28 = *(v0 + 752);
  v31 = *(v0 + 744);
  v32 = *(v0 + 736);
  v33 = *(v0 + 728);
  v34 = *(v0 + 720);
  v35 = *(v0 + 712);
  v36 = *(v0 + 704);
  v37 = *(v0 + 696);
  v38 = *(v0 + 688);
  v39 = *(v0 + 664);
  v40 = *(v0 + 640);
  v41 = *(v0 + 616);
  v42 = *(v0 + 608);
  v43 = *(v0 + 584);
  v44 = *(v0 + 576);
  v45 = *(v0 + 568);
  v46 = *(v0 + 544);
  v47 = *(v0 + 520);
  v48 = *(v0 + 512);
  v49 = *(v0 + 504);
  v50 = *(v0 + 480);
  v51 = *(v0 + 456);
  v52 = *(v0 + 432);
  v53 = *(v0 + 408);
  v54 = *(v0 + 384);
  v56 = *(v0 + 360);
  v57 = *(v0 + 352);
  v59 = *(v0 + 344);
  v61 = *(v0 + 336);
  v64 = *(v0 + 312);
  v66 = *(v0 + 304);
  v67 = *(v0 + 296);
  v68 = *(v0 + 288);
  v70 = *(v0 + 280);
  v72 = *(v0 + 272);
  v74 = *(v0 + 264);
  v76 = *(v0 + 256);
  v78 = *(v0 + 248);
  v80 = *(v0 + 224);
  v82 = *(v0 + 216);
  v84 = *(v0 + 192);
  v86 = *(v0 + 184);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_143B90(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 968);
  v5 = *(*v1 + 888);
  v6 = *(*v1 + 176);
  v7 = *v1;
  v3[122] = a1;

  v8 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_musicSiriItemProvider;
  v9 = *(&async function pointer to dispatch thunk of PlaybackItem.toMusicSiriRepresentation(musicSiriItemProvider:accountId:) + 1);
  v13 = (&async function pointer to dispatch thunk of PlaybackItem.toMusicSiriRepresentation(musicSiriItemProvider:accountId:) + async function pointer to dispatch thunk of PlaybackItem.toMusicSiriRepresentation(musicSiriItemProvider:accountId:));
  v10 = swift_task_alloc();
  v3[123] = v10;
  *v10 = v7;
  v10[1] = sub_143D38;
  v11 = v3[43];

  return v13(v11, v6 + v8, a1);
}

uint64_t sub_143D38()
{
  v1 = *(*v0 + 984);
  v3 = *v0;

  return _swift_task_switch(sub_143E34, 0, 0);
}

uint64_t sub_143E34()
{
  v1 = v0[112];
  v2 = v0[73];
  v3 = v0[65];
  v4 = v0[61];
  v5 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[30];
  v200 = v0[113];
  v202 = v0[29];
  sub_2CD5A0();
  v198 = sub_2CD520();
  v10 = v9;
  v0[124] = v9;
  v1(v3, v4);
  sub_2CB420();
  sub_F3F4(v6, v7, &qword_352770, &qword_2D4FB8);
  v11 = v0;
  v12 = (*(v8 + 48))(v7, 1, v202);
  v13 = v0[38];
  if (v12 == 1)
  {

    sub_30B8(v13, &qword_352770, &qword_2D4FB8);
    v14 = v0[43];
    sub_2CB410();
    v15 = v0[106];
    v16 = v0[105];
    v17 = v0[104];
    v18 = v0[84];
    if (v19)
    {
      v20 = v0[92];
      v22 = v0[42];
      v21 = v0[43];
      v24 = v0[40];
      v23 = v0[41];

      v16(v20, v17, v18);
      (*(v23 + 16))(v22, v21, v24);
      v25 = sub_2CDFE0();
      v26 = sub_2CE670();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v11[42];
      if (v27)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = sub_2CB410();
        v33 = v11;
        v36 = v11 + 41;
        v35 = v11[41];
        v34 = v36[1];
        v37 = v33;
        v38 = v33[40];
        if (v32)
        {
          v39 = v31;
          v40 = v32;
          sub_10C40();
          swift_allocError();
          *v41 = v39;
          v41[1] = v40;
          v42 = _swift_stdlib_bridgeErrorToNSError();
          v43 = *(v35 + 8);
          v43(v34, v38);
        }

        else
        {
          v43 = *(v35 + 8);
          v43(v34, v33[40]);
          v42 = 0;
        }

        *(v29 + 4) = v42;
        *v30 = v42;
        _os_log_impl(&dword_0, v25, v26, "OpenMediaItemFlow#execute invoking OpenMusicItemIntent with identifier: %@", v29, 0xCu);
        sub_30B8(v30, &unk_34FC00, &unk_2D0150);

        v11 = v37;
      }

      else
      {
        v88 = v11[40];
        v89 = v11[41];

        v43 = *(v89 + 8);
        v43(v28, v88);
      }

      v11[145] = v43;
      v175 = v11[43];
      v176 = v11[22];
      v177 = v11[85] + 8;
      (v11[107])(v11[92], v11[84]);
      sub_EEAC(v176 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker, (v11 + 2));
      v178 = v11[5];
      v179 = v11[6];
      sub_35E0(v11 + 2, v178);
      v180 = sub_2CB410();
      v11[146] = v181;
      if (v181)
      {
        v182 = v180;
      }

      else
      {
        v182 = 0;
      }

      if (v181)
      {
        v183 = v181;
      }

      else
      {
        v183 = 0xE000000000000000;
      }

      v184 = async function pointer to AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)[1];
      v185 = swift_task_alloc();
      v11[147] = v185;
      *v185 = v11;
      v185[1] = sub_146AB0;

      return AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(v182, v183, v178, v179);
    }

    else
    {
      v16(v0[91], v0[104], v0[84]);
      v74 = sub_2CDFE0();
      v75 = sub_2CE680();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_0, v74, v75, "OpenMediaItemFlow#execute failed to convert PlaybackItem.identifier to MusicSiriRepresentation, with unknown error", v76, 2u);
      }

      v77 = v0[107];
      v78 = v11[91];
      v79 = v11[85];
      v80 = v11[84];
      v82 = v11[50];
      v81 = v11[51];
      v83 = v11[49];

      v77(v78, v80);
      (*(v82 + 104))(v81, enum case for AdditionalMetricsDescription.StatusReason.failedToConvertMusicSiriRepresentation(_:), v83);
      v84 = swift_task_alloc();
      v11[149] = v84;
      *v84 = v11;
      v84[1] = sub_1472B8;
      v85 = v11[22];
      v86 = v11[51];

      return sub_14982C(v86);
    }
  }

  v203 = v10;
  v45 = v0[36];
  v44 = v0[37];
  v47 = v0[29];
  v46 = v0[30];
  (*(v11[30] + 32))(v11[37], v13, v11[29]);
  v48 = *(v46 + 16);
  v48(v45, v44, v47);
  v49 = (*(v46 + 88))(v45, v47);
  v199 = v11;
  if (v49 != enum case for MusicSiriItemRequest.Error.itemNotFound(_:))
  {
    if (v49 == enum case for MusicSiriItemRequest.Error.unableToParseIdentifier(_:))
    {
    }

    else
    {
      v111 = enum case for MusicSiriItemRequest.Error.unsupportedType(_:);
      v112 = v49;

      if (v112 != v111)
      {
        v158 = v11[106];
        v159 = v11[37];
        v160 = v11[31];
        v161 = v11[29];
        (v11[105])(v11[93], v11[104], v11[84]);
        v48(v160, v159, v161);
        v162 = sub_2CDFE0();
        v163 = sub_2CE680();
        v164 = os_log_type_enabled(v162, v163);
        v166 = v11[30];
        v165 = v11[31];
        v167 = v11[29];
        if (v164)
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          *v168 = 138412290;
          sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error);
          swift_allocError();
          v48(v170, v165, v167);
          v171 = _swift_stdlib_bridgeErrorToNSError();
          v174 = *(v166 + 8);
          v172 = v166 + 8;
          v173 = v174;
          v174(v165, v167);
          *(v168 + 4) = v171;
          *v169 = v171;
          _os_log_impl(&dword_0, v162, v163, "OpenMediaItemFlow#execute Unknown MusicSiriRepresentationError. %@", v168, 0xCu);
          sub_30B8(v169, &unk_34FC00, &unk_2D0150);
        }

        else
        {

          v193 = *(v166 + 8);
          v172 = v166 + 8;
          v173 = v193;
          v193(v165, v167);
        }

        v131 = v199;
        v199[142] = v173;
        v199[141] = v172;
        v194 = (v199[85] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (v199[107])(v199[93], v199[84]);
        sub_2CCFB0();
        sub_2CBE10();
        v133 = sub_2CCF80();
        v199[143] = v133;
        v134 = swift_task_alloc();
        v199[144] = v134;
        *v134 = v199;
        v135 = sub_146528;
        goto LABEL_51;
      }
    }

    v113 = v11[106];
    v114 = v11[37];
    v115 = v11[35];
    v116 = v11[29];
    (v11[105])(v11[97], v11[104], v11[84]);
    v48(v115, v114, v116);
    v117 = sub_2CDFE0();
    v118 = sub_2CE680();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v11[35];
    v121 = v11[29];
    v122 = v11[30];
    if (v119)
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v123 = 138412290;
      sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error);
      swift_allocError();
      v48(v125, v120, v121);
      v126 = _swift_stdlib_bridgeErrorToNSError();
      v129 = *(v122 + 8);
      v127 = v122 + 8;
      v128 = v129;
      v129(v120, v121);
      *(v123 + 4) = v126;
      *v124 = v126;
      _os_log_impl(&dword_0, v117, v118, "OpenMediaItemFlow#execute Unable to parse identifier or identifier type is unsupported. %@", v123, 0xCu);
      sub_30B8(v124, &unk_34FC00, &unk_2D0150);
    }

    else
    {

      v130 = *(v122 + 8);
      v127 = v122 + 8;
      v128 = v130;
      v130(v120, v121);
    }

    v131 = v199;
    v199[126] = v128;
    v199[125] = v127;
    v132 = (v199[85] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v199[107])(v199[97], v199[84]);
    sub_2CCFB0();
    sub_2CBE10();
    v133 = sub_2CCF80();
    v199[127] = v133;
    v134 = swift_task_alloc();
    v199[128] = v134;
    *v134 = v199;
    v135 = sub_14504C;
LABEL_51:
    v134[1] = v135;
    v197 = v131[22];
    v156 = v133;
    v157 = 0;
    v191 = 0;
    v192 = 0xE000000000000000;
    goto LABEL_52;
  }

  v50 = v11[36];
  v52 = v11[27];
  v51 = v11[28];
  v54 = v11[25];
  v53 = v11[26];
  (*(v11[30] + 96))(v50, v11[29]);
  (*(v53 + 32))(v51, v50, v54);
  (*(v53 + 16))(v52, v51, v54);
  v55 = (*(v53 + 88))(v52, v54);
  if (v55 != enum case for MusicSiriItemRequest.Error.ItemNotFoundReason.libraryMismatch(_:))
  {
    v201 = v48;
    v90 = v11[105];
    v91 = v11[104];
    v92 = v11[84];
    v93 = v11[37];
    v94 = v11[29];
    if (v55 == enum case for MusicSiriItemRequest.Error.ItemNotFoundReason.libraryItemNotFound(_:) || v55 == enum case for MusicSiriItemRequest.Error.ItemNotFoundReason.catalogItemNotFound(_:))
    {
      v136 = v11[33];
      v90(v11[95], v91, v92);
      v48(v136, v93, v94);
      v137 = sub_2CDFE0();
      v138 = sub_2CE680();
      v139 = os_log_type_enabled(v137, v138);
      v140 = v11[33];
      v141 = v11[29];
      v142 = v11[30];
      if (v139)
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *v143 = 138412290;
        sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error);
        swift_allocError();
        v201(v145, v140, v141);
        v146 = _swift_stdlib_bridgeErrorToNSError();
        v149 = *(v142 + 8);
        v148 = v142 + 8;
        v147 = v149;
        v149(v140, v141);
        *(v143 + 4) = v146;
        *v144 = v146;
        _os_log_impl(&dword_0, v137, v138, "OpenMediaItemFlow#execute Item was not found. %@", v143, 0xCu);
        sub_30B8(v144, &unk_34FC00, &unk_2D0150);
      }

      else
      {

        v186 = *(v142 + 8);
        v148 = v142 + 8;
        v147 = v186;
        v186(v140, v141);
      }

      v151 = v203;
      v199[134] = v147;
      v199[133] = v148;
      v187 = (v199[85] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v199[107])(v199[95], v199[84]);
      sub_2CCFB0();
      sub_2CBE10();
      v188 = sub_2CCF80();
      v199[135] = v188;
      v189 = swift_task_alloc();
      v199[136] = v189;
      *v189 = v199;
      v189[1] = sub_145A5C;
      v190 = v199[22];
      v156 = v188;
      v157 = 0;
      goto LABEL_46;
    }

    v95 = v11[94];
    v96 = v11[32];
    v97 = v11[106];

    v90(v95, v91, v92);
    v201(v96, v93, v94);
    v98 = sub_2CDFE0();
    v99 = sub_2CE680();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v11[32];
    v102 = v11[29];
    v103 = v11[30];
    if (v100)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v104 = 138412290;
      sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error);
      swift_allocError();
      v201(v106, v101, v102);
      v107 = _swift_stdlib_bridgeErrorToNSError();
      v110 = *(v103 + 8);
      v108 = v103 + 8;
      v109 = v110;
      v110(v101, v102);
      *(v104 + 4) = v107;
      *v105 = v107;
      _os_log_impl(&dword_0, v98, v99, "OpenMediaItemFlow#execute Unknown itemNotFoundError. %@", v104, 0xCu);
      sub_30B8(v105, &unk_34FC00, &unk_2D0150);
    }

    else
    {

      v195 = *(v103 + 8);
      v108 = v103 + 8;
      v109 = v195;
      v195(v101, v102);
    }

    v131 = v199;
    v199[138] = v109;
    v199[137] = v108;
    v196 = (v199[85] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v199[107])(v199[94], v199[84]);
    sub_2CCFB0();
    sub_2CBE10();
    v133 = sub_2CCF80();
    v199[139] = v133;
    v134 = swift_task_alloc();
    v199[140] = v134;
    *v134 = v199;
    v135 = sub_145F80;
    goto LABEL_51;
  }

  v56 = v11[106];
  v57 = v11[37];
  v58 = v11[34];
  v59 = v11[29];
  (v11[105])(v11[96], v11[104], v11[84]);
  v48(v58, v57, v59);
  v60 = sub_2CDFE0();
  v61 = sub_2CE680();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v11[34];
  v64 = v48;
  v65 = v11[29];
  v66 = v11[30];
  if (v62)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138412290;
    sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error);
    swift_allocError();
    v64(v69, v63, v65);
    v70 = _swift_stdlib_bridgeErrorToNSError();
    v73 = *(v66 + 8);
    v72 = v66 + 8;
    v71 = v73;
    v73(v63, v65);
    *(v67 + 4) = v70;
    *v68 = v70;
    _os_log_impl(&dword_0, v60, v61, "OpenMediaItemFlow#execute There was a user library mismatch. %@", v67, 0xCu);
    sub_30B8(v68, &unk_34FC00, &unk_2D0150);
  }

  else
  {

    v150 = *(v66 + 8);
    v72 = v66 + 8;
    v71 = v150;
    v150(v63, v65);
  }

  v151 = v203;
  v199[130] = v71;
  v199[129] = v72;
  v152 = (v199[85] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v199[107])(v199[96], v199[84]);
  sub_2CCFB0();
  sub_2CBE10();
  v153 = sub_2CCF80();
  v199[131] = v153;
  v154 = swift_task_alloc();
  v199[132] = v154;
  *v154 = v199;
  v154[1] = sub_145538;
  v155 = v199[22];
  v156 = v153;
  v157 = 1;
LABEL_46:
  v191 = v198;
  v192 = v151;
LABEL_52:

  return sub_14AB6C(v156, v157, v191, v192);
}

uint64_t sub_14504C()
{
  v1 = *(*v0 + 1024);
  v2 = *(*v0 + 1016);
  v4 = *v0;

  return _swift_task_switch(sub_145164, 0, 0);
}

uint64_t sub_145164()
{
  v59 = v0[125];
  v61 = v0[126];
  v57 = v0[122];
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[70];
  v67 = v0[69];
  v69 = v0[73];
  v6 = v0[41];
  v63 = v0[40];
  v65 = v0[43];
  v7 = v0[39];
  v8 = v0[37];
  v9 = v0[29];
  v10 = v0[21];
  sub_2C9EB0();

  v61(v8, v9);
  sub_30B8(v7, &qword_352770, &qword_2D4FB8);
  (*(v6 + 8))(v65, v63);
  (*(v5 + 8))(v69, v67);
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[83];
  v32 = v0[80];
  v33 = v0[77];
  v34 = v0[76];
  v35 = v0[73];
  v36 = v0[72];
  v37 = v0[71];
  v38 = v0[68];
  v39 = v0[65];
  v40 = v0[64];
  v41 = v0[63];
  v42 = v0[60];
  v43 = v0[57];
  v44 = v0[54];
  v45 = v0[51];
  v46 = v0[48];
  v47 = v0[45];
  v48 = v0[44];
  v49 = v0[43];
  v50 = v0[42];
  v51 = v0[39];
  v52 = v0[38];
  v53 = v0[37];
  v54 = v0[36];
  v55 = v0[35];
  v56 = v0[34];
  v58 = v0[33];
  v60 = v0[32];
  v62 = v0[31];
  v64 = v0[28];
  v66 = v0[27];
  v68 = v0[24];
  v70 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_145538()
{
  v1 = *(*v0 + 1056);
  v2 = *(*v0 + 1048);
  v3 = *(*v0 + 992);
  v5 = *v0;

  return _swift_task_switch(sub_14566C, 0, 0);
}

uint64_t sub_14566C()
{
  v62 = v0[129];
  v64 = v0[130];
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[70];
  v70 = v0[69];
  v72 = v0[73];
  v6 = v0[41];
  v66 = v0[40];
  v68 = v0[43];
  v58 = v0[122];
  v60 = v0[39];
  v7 = v0[28];
  v54 = v0[29];
  v56 = v0[37];
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[21];
  sub_2C9EB0();

  (*(v9 + 8))(v7, v8);
  v64(v56, v54);
  sub_30B8(v60, &qword_352770, &qword_2D4FB8);
  (*(v6 + 8))(v68, v66);
  (*(v5 + 8))(v72, v70);
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[83];
  v32 = v0[80];
  v33 = v0[77];
  v34 = v0[76];
  v35 = v0[73];
  v36 = v0[72];
  v37 = v0[71];
  v38 = v0[68];
  v39 = v0[65];
  v40 = v0[64];
  v41 = v0[63];
  v42 = v0[60];
  v43 = v0[57];
  v44 = v0[54];
  v45 = v0[51];
  v46 = v0[48];
  v47 = v0[45];
  v48 = v0[44];
  v49 = v0[43];
  v50 = v0[42];
  v51 = v0[39];
  v52 = v0[38];
  v53 = v0[37];
  v55 = v0[36];
  v57 = v0[35];
  v59 = v0[34];
  v61 = v0[33];
  v63 = v0[32];
  v65 = v0[31];
  v67 = v0[28];
  v69 = v0[27];
  v71 = v0[24];
  v73 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_145A5C()
{
  v1 = *(*v0 + 1088);
  v2 = *(*v0 + 1080);
  v3 = *(*v0 + 992);
  v5 = *v0;

  return _swift_task_switch(sub_145B90, 0, 0);
}

uint64_t sub_145B90()
{
  v62 = v0[133];
  v64 = v0[134];
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[70];
  v70 = v0[69];
  v72 = v0[73];
  v6 = v0[41];
  v66 = v0[40];
  v68 = v0[43];
  v58 = v0[122];
  v60 = v0[39];
  v7 = v0[28];
  v54 = v0[29];
  v56 = v0[37];
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[21];
  sub_2C9EB0();

  (*(v9 + 8))(v7, v8);
  v64(v56, v54);
  sub_30B8(v60, &qword_352770, &qword_2D4FB8);
  (*(v6 + 8))(v68, v66);
  (*(v5 + 8))(v72, v70);
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[83];
  v32 = v0[80];
  v33 = v0[77];
  v34 = v0[76];
  v35 = v0[73];
  v36 = v0[72];
  v37 = v0[71];
  v38 = v0[68];
  v39 = v0[65];
  v40 = v0[64];
  v41 = v0[63];
  v42 = v0[60];
  v43 = v0[57];
  v44 = v0[54];
  v45 = v0[51];
  v46 = v0[48];
  v47 = v0[45];
  v48 = v0[44];
  v49 = v0[43];
  v50 = v0[42];
  v51 = v0[39];
  v52 = v0[38];
  v53 = v0[37];
  v55 = v0[36];
  v57 = v0[35];
  v59 = v0[34];
  v61 = v0[33];
  v63 = v0[32];
  v65 = v0[31];
  v67 = v0[28];
  v69 = v0[27];
  v71 = v0[24];
  v73 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_145F80()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 1112);
  v4 = *v0;

  return _swift_task_switch(sub_146098, 0, 0);
}

uint64_t sub_146098()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 296);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(*(v0 + 208) + 8);
  v7(*(v0 + 224), v6);
  v1(v3, v4);
  v7(v5, v6);
  v8 = *(v0 + 344);
  sub_2CB410();
  v9 = *(v0 + 848);
  v10 = *(v0 + 840);
  v11 = *(v0 + 832);
  v12 = *(v0 + 672);
  if (v13)
  {
    v14 = *(v0 + 736);
    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    v17 = *(v0 + 320);
    v18 = *(v0 + 328);

    v10(v14, v11, v12);
    (*(v18 + 16))(v16, v15, v17);
    v19 = sub_2CDFE0();
    v20 = sub_2CE670();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 336);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = sub_2CB410();
      v28 = *(v0 + 328);
      v27 = *(v0 + 336);
      v29 = *(v0 + 320);
      if (v26)
      {
        v30 = v25;
        v31 = v26;
        sub_10C40();
        swift_allocError();
        *v32 = v30;
        v32[1] = v31;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = *(v28 + 8);
        v34(v27, v29);
      }

      else
      {
        v34 = *(v28 + 8);
        v34(*(v0 + 336), *(v0 + 320));
        v33 = 0;
      }

      *(v23 + 4) = v33;
      *v24 = v33;
      _os_log_impl(&dword_0, v19, v20, "OpenMediaItemFlow#execute invoking OpenMusicItemIntent with identifier: %@", v23, 0xCu);
      sub_30B8(v24, &unk_34FC00, &unk_2D0150);
    }

    else
    {
      v49 = *(v0 + 320);
      v50 = *(v0 + 328);

      v34 = *(v50 + 8);
      v34(v22, v49);
    }

    *(v0 + 1160) = v34;
    v51 = *(v0 + 344);
    v52 = *(v0 + 176);
    v53 = *(v0 + 680) + 8;
    (*(v0 + 856))(*(v0 + 736), *(v0 + 672));
    sub_EEAC(v52 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker, v0 + 16);
    v54 = *(v0 + 40);
    v55 = *(v0 + 48);
    sub_35E0((v0 + 16), v54);
    v56 = sub_2CB410();
    *(v0 + 1168) = v57;
    if (v57)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0;
    }

    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    v60 = async function pointer to AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)[1];
    v61 = swift_task_alloc();
    *(v0 + 1176) = v61;
    *v61 = v0;
    v61[1] = sub_146AB0;

    return AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(v58, v59, v54, v55);
  }

  else
  {
    v10(*(v0 + 728), *(v0 + 832), *(v0 + 672));
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "OpenMediaItemFlow#execute failed to convert PlaybackItem.identifier to MusicSiriRepresentation, with unknown error", v37, 2u);
    }

    v38 = *(v0 + 856);
    v39 = *(v0 + 728);
    v40 = *(v0 + 680);
    v41 = *(v0 + 672);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v44 = *(v0 + 392);

    v38(v39, v41);
    (*(v43 + 104))(v42, enum case for AdditionalMetricsDescription.StatusReason.failedToConvertMusicSiriRepresentation(_:), v44);
    v45 = swift_task_alloc();
    *(v0 + 1192) = v45;
    *v45 = v0;
    v45[1] = sub_1472B8;
    v46 = *(v0 + 408);
    v47 = *(v0 + 176);

    return sub_14982C(v46);
  }
}

uint64_t sub_146528()
{
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 1144);
  v4 = *v0;

  return _swift_task_switch(sub_146640, 0, 0);
}

uint64_t sub_146640()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 288);
  v4 = *(v0 + 232);
  v1(*(v0 + 296), v4);
  v1(v3, v4);
  v5 = *(v0 + 344);
  sub_2CB410();
  v6 = *(v0 + 848);
  v7 = *(v0 + 840);
  v8 = *(v0 + 832);
  v9 = *(v0 + 672);
  if (v10)
  {
    v11 = *(v0 + 736);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 320);
    v15 = *(v0 + 328);

    v7(v11, v8, v9);
    (*(v15 + 16))(v13, v12, v14);
    v16 = sub_2CDFE0();
    v17 = sub_2CE670();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 336);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = sub_2CB410();
      v25 = *(v0 + 328);
      v24 = *(v0 + 336);
      v26 = *(v0 + 320);
      if (v23)
      {
        v27 = v22;
        v28 = v23;
        sub_10C40();
        swift_allocError();
        *v29 = v27;
        v29[1] = v28;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = *(v25 + 8);
        v31(v24, v26);
      }

      else
      {
        v31 = *(v25 + 8);
        v31(*(v0 + 336), *(v0 + 320));
        v30 = 0;
      }

      *(v20 + 4) = v30;
      *v21 = v30;
      _os_log_impl(&dword_0, v16, v17, "OpenMediaItemFlow#execute invoking OpenMusicItemIntent with identifier: %@", v20, 0xCu);
      sub_30B8(v21, &unk_34FC00, &unk_2D0150);
    }

    else
    {
      v46 = *(v0 + 320);
      v47 = *(v0 + 328);

      v31 = *(v47 + 8);
      v31(v19, v46);
    }

    *(v0 + 1160) = v31;
    v48 = *(v0 + 344);
    v49 = *(v0 + 176);
    v50 = *(v0 + 680) + 8;
    (*(v0 + 856))(*(v0 + 736), *(v0 + 672));
    sub_EEAC(v49 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker, v0 + 16);
    v51 = *(v0 + 40);
    v52 = *(v0 + 48);
    sub_35E0((v0 + 16), v51);
    v53 = sub_2CB410();
    *(v0 + 1168) = v54;
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v57 = async function pointer to AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)[1];
    v58 = swift_task_alloc();
    *(v0 + 1176) = v58;
    *v58 = v0;
    v58[1] = sub_146AB0;

    return AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(v55, v56, v51, v52);
  }

  else
  {
    v7(*(v0 + 728), *(v0 + 832), *(v0 + 672));
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "OpenMediaItemFlow#execute failed to convert PlaybackItem.identifier to MusicSiriRepresentation, with unknown error", v34, 2u);
    }

    v35 = *(v0 + 856);
    v36 = *(v0 + 728);
    v37 = *(v0 + 680);
    v38 = *(v0 + 672);
    v40 = *(v0 + 400);
    v39 = *(v0 + 408);
    v41 = *(v0 + 392);

    v35(v36, v38);
    (*(v40 + 104))(v39, enum case for AdditionalMetricsDescription.StatusReason.failedToConvertMusicSiriRepresentation(_:), v41);
    v42 = swift_task_alloc();
    *(v0 + 1192) = v42;
    *v42 = v0;
    v42[1] = sub_1472B8;
    v43 = *(v0 + 408);
    v44 = *(v0 + 176);

    return sub_14982C(v43);
  }
}

uint64_t sub_146AB0()
{
  v2 = *(*v1 + 1176);
  *(*v1 + 1168);
  v5 = *v1;
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v3 = sub_1490C0;
  }

  else
  {
    v3 = sub_146BEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_146BEC()
{
  v69 = *(v0 + 1160);
  v79 = *(v0 + 888);
  v81 = *(v0 + 880);
  v77 = *(v0 + 864);
  v83 = *(v0 + 560);
  v85 = *(v0 + 872);
  v87 = *(v0 + 552);
  v89 = *(v0 + 584);
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v51 = *(v0 + 440);
  v53 = *(v0 + 456);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v55 = *(v0 + 416);
  v57 = *(v0 + 392);
  v64 = *(v0 + 384);
  v62 = *(v0 + 376);
  v66 = *(v0 + 368);
  v71 = *(v0 + 360);
  v73 = *(v0 + 352);
  v6 = *(v0 + 344);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 312);
  v59 = *(v0 + 176);
  v75 = *(v0 + 168);

  sub_30B8(v9, &qword_352770, &qword_2D4FB8);
  v69(v6, v8);
  sub_306C((v0 + 16));
  (*(v1 + 104))(v53, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v51);
  (*(v3 + 104))(v2, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v55);
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v57);
  sub_2CCAD0();
  (*(v5 + 8))(v4, v57);
  (*(v3 + 8))(v2, v55);
  (*(v1 + 8))(v53, v51);
  v10 = (v59 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider);
  v11 = *(v59 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24);
  v60 = *(v59 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0(v10, v11);
  (*(v62 + 104))(v64, enum case for TypeOfIntent.openMediaItem(_:), v66);
  v12 = enum case for ActivityType.completed(_:);
  v13 = sub_2C9C20();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v71, v12, v13);
  (*(v14 + 56))(v71, 0, 1, v13);
  v15 = enum case for SiriKitReliabilityCodes.success(_:);
  v16 = sub_2C98F0();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v73, v15, v16);
  (*(v17 + 56))(v73, 0, 1, v16);
  sub_2CB4B0();

  sub_30B8(v73, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v71, &qword_34CB88, &unk_2D0D90);
  (*(v62 + 8))(v64, v66);
  sub_2C9EB0();

  (*(v83 + 8))(v89, v87);
  v18 = *(v0 + 824);
  v19 = *(v0 + 816);
  v20 = *(v0 + 808);
  v21 = *(v0 + 800);
  v22 = *(v0 + 792);
  v23 = *(v0 + 784);
  v24 = *(v0 + 776);
  v25 = *(v0 + 768);
  v26 = *(v0 + 760);
  v27 = *(v0 + 752);
  v30 = *(v0 + 744);
  v31 = *(v0 + 736);
  v32 = *(v0 + 728);
  v33 = *(v0 + 720);
  v34 = *(v0 + 712);
  v35 = *(v0 + 704);
  v36 = *(v0 + 696);
  v37 = *(v0 + 688);
  v38 = *(v0 + 664);
  v39 = *(v0 + 640);
  v40 = *(v0 + 616);
  v41 = *(v0 + 608);
  v42 = *(v0 + 584);
  v43 = *(v0 + 576);
  v44 = *(v0 + 568);
  v45 = *(v0 + 544);
  v46 = *(v0 + 520);
  v47 = *(v0 + 512);
  v48 = *(v0 + 504);
  v49 = *(v0 + 480);
  v50 = *(v0 + 456);
  v52 = *(v0 + 432);
  v54 = *(v0 + 408);
  v56 = *(v0 + 384);
  v58 = *(v0 + 360);
  v61 = *(v0 + 352);
  v63 = *(v0 + 344);
  v65 = *(v0 + 336);
  v67 = *(v0 + 312);
  v68 = *(v0 + 304);
  v70 = *(v0 + 296);
  v72 = *(v0 + 288);
  v74 = *(v0 + 280);
  v76 = *(v0 + 272);
  v78 = *(v0 + 264);
  v80 = *(v0 + 256);
  v82 = *(v0 + 248);
  v84 = *(v0 + 224);
  v86 = *(v0 + 216);
  v88 = *(v0 + 192);
  v90 = *(v0 + 184);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1472B8()
{
  v1 = *(*v0 + 1192);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 392);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_147410, 0, 0);
}

uint64_t sub_147410()
{
  v1 = v0[122];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[70];
  v63 = v0[69];
  v65 = v0[73];
  v61 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[39];
  v10 = v0[21];
  sub_2C9EB0();

  sub_30B8(v9, &qword_352770, &qword_2D4FB8);
  (*(v7 + 8))(v61, v8);
  (*(v6 + 8))(v65, v63);
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[94];
  v23 = v0[93];
  v24 = v0[92];
  v25 = v0[91];
  v26 = v0[90];
  v27 = v0[89];
  v28 = v0[88];
  v29 = v0[87];
  v30 = v0[86];
  v31 = v0[83];
  v32 = v0[80];
  v33 = v0[77];
  v34 = v0[76];
  v35 = v0[73];
  v36 = v0[72];
  v37 = v0[71];
  v38 = v0[68];
  v39 = v0[65];
  v40 = v0[64];
  v41 = v0[63];
  v42 = v0[60];
  v43 = v0[57];
  v44 = v0[54];
  v45 = v0[51];
  v46 = v0[48];
  v47 = v0[45];
  v48 = v0[44];
  v49 = v0[43];
  v50 = v0[42];
  v51 = v0[39];
  v52 = v0[38];
  v53 = v0[37];
  v54 = v0[36];
  v55 = v0[35];
  v56 = v0[34];
  v57 = v0[33];
  v58 = v0[32];
  v59 = v0[31];
  v60 = v0[28];
  v62 = v0[27];
  v64 = v0[24];
  v66 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1477B4()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 392);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_14790C, 0, 0);
}

uint64_t sub_14790C()
{
  v1 = v0[151];
  v2 = v0[150];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[73];
  v7 = v0[69];
  v8 = v0[21];
  sub_2C9EB0();

  v1(v6, v7);
  v9 = v0[103];
  v10 = v0[102];
  v11 = v0[101];
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[96];
  v17 = v0[95];
  v18 = v0[94];
  v21 = v0[93];
  v22 = v0[92];
  v23 = v0[91];
  v24 = v0[90];
  v25 = v0[89];
  v26 = v0[88];
  v27 = v0[87];
  v28 = v0[86];
  v29 = v0[83];
  v30 = v0[80];
  v31 = v0[77];
  v32 = v0[76];
  v33 = v0[73];
  v34 = v0[72];
  v35 = v0[71];
  v36 = v0[68];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[60];
  v41 = v0[57];
  v42 = v0[54];
  v43 = v0[51];
  v44 = v0[48];
  v45 = v0[45];
  v46 = v0[44];
  v47 = v0[43];
  v48 = v0[42];
  v49 = v0[39];
  v50 = v0[38];
  v51 = v0[37];
  v52 = v0[36];
  v53 = v0[35];
  v54 = v0[34];
  v55 = v0[33];
  v56 = v0[32];
  v57 = v0[31];
  v58 = v0[28];
  v59 = v0[27];
  v60 = v0[24];
  v61 = v0[23];

  v19 = v0[1];

  return v19();
}

uint64_t sub_147C5C()
{
  v1 = *(*v0 + 1240);
  v2 = *(*v0 + 1232);
  v4 = *v0;

  return _swift_task_switch(sub_147D74, 0, 0);
}

uint64_t sub_147D74()
{
  v1 = v0[153];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[21];
  sub_2C9EB0();

  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[100];
  v10 = v0[99];
  v11 = v0[98];
  v12 = v0[97];
  v13 = v0[96];
  v14 = v0[95];
  v15 = v0[94];
  v18 = v0[93];
  v19 = v0[92];
  v20 = v0[91];
  v21 = v0[90];
  v22 = v0[89];
  v23 = v0[88];
  v24 = v0[87];
  v25 = v0[86];
  v26 = v0[83];
  v27 = v0[80];
  v28 = v0[77];
  v29 = v0[76];
  v30 = v0[73];
  v31 = v0[72];
  v32 = v0[71];
  v33 = v0[68];
  v34 = v0[65];
  v35 = v0[64];
  v36 = v0[63];
  v37 = v0[60];
  v38 = v0[57];
  v39 = v0[54];
  v40 = v0[51];
  v41 = v0[48];
  v42 = v0[45];
  v43 = v0[44];
  v44 = v0[43];
  v45 = v0[42];
  v46 = v0[39];
  v47 = v0[38];
  v48 = v0[37];
  v49 = v0[36];
  v50 = v0[35];
  v51 = v0[34];
  v52 = v0[33];
  v53 = v0[32];
  v54 = v0[31];
  v55 = v0[28];
  v56 = v0[27];
  v57 = v0[24];
  v58 = v0[23];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1480AC()
{
  v1 = *(*v0 + 1248);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 392);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_148204, 0, 0);
}

uint64_t sub_148204()
{
  v1 = v0[21];
  sub_2C9EB0();
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[98];
  v8 = v0[97];
  v9 = v0[96];
  v10 = v0[95];
  v11 = v0[94];
  v14 = v0[93];
  v15 = v0[92];
  v16 = v0[91];
  v17 = v0[90];
  v18 = v0[89];
  v19 = v0[88];
  v20 = v0[87];
  v21 = v0[86];
  v22 = v0[83];
  v23 = v0[80];
  v24 = v0[77];
  v25 = v0[76];
  v26 = v0[73];
  v27 = v0[72];
  v28 = v0[71];
  v29 = v0[68];
  v30 = v0[65];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[60];
  v34 = v0[57];
  v35 = v0[54];
  v36 = v0[51];
  v37 = v0[48];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[42];
  v42 = v0[39];
  v43 = v0[38];
  v44 = v0[37];
  v45 = v0[36];
  v46 = v0[35];
  v47 = v0[34];
  v48 = v0[33];
  v49 = v0[32];
  v50 = v0[31];
  v51 = v0[28];
  v52 = v0[27];
  v53 = v0[24];
  v54 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_148514()
{
  v1 = *(*v0 + 1264);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 392);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_14866C, 0, 0);
}

uint64_t sub_14866C()
{
  v1 = v0[157];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[73];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[21];
  sub_2C9EB0();

  (*(v7 + 8))(v6, v8);
  v10 = v0[103];
  v11 = v0[102];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[99];
  v15 = v0[98];
  v16 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v22 = v0[93];
  v23 = v0[92];
  v24 = v0[91];
  v25 = v0[90];
  v26 = v0[89];
  v27 = v0[88];
  v28 = v0[87];
  v29 = v0[86];
  v30 = v0[83];
  v31 = v0[80];
  v32 = v0[77];
  v33 = v0[76];
  v34 = v0[73];
  v35 = v0[72];
  v36 = v0[71];
  v37 = v0[68];
  v38 = v0[65];
  v39 = v0[64];
  v40 = v0[63];
  v41 = v0[60];
  v42 = v0[57];
  v43 = v0[54];
  v44 = v0[51];
  v45 = v0[48];
  v46 = v0[45];
  v47 = v0[44];
  v48 = v0[43];
  v49 = v0[42];
  v50 = v0[39];
  v51 = v0[38];
  v52 = v0[37];
  v53 = v0[36];
  v54 = v0[35];
  v55 = v0[34];
  v56 = v0[33];
  v57 = v0[32];
  v58 = v0[31];
  v59 = v0[28];
  v60 = v0[27];
  v61 = v0[24];
  v62 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1489D4()
{
  v25 = v0;
  *(v0 + 1256) = *(v0 + 928);
  v1 = *(v0 + 848);
  (*(v0 + 840))(*(v0 + 696), *(v0 + 832), *(v0 + 672));
  swift_errorRetain();
  v2 = sub_2CDFE0();
  v3 = sub_2CE680();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = *(v0 + 856);
    v4 = *(v0 + 696);
    v5 = *(v0 + 680);
    v6 = *(v0 + 672);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = sub_2CEEF0();
    v14 = sub_3F08(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v2, v3, "OpenMediaItemFlow#execute threw an error when trying to invoke open intent: %s", v7, 0xCu);
    sub_306C(v8);

    v23(v4, v6);
  }

  else
  {
    v15 = *(v0 + 856);
    v16 = *(v0 + 696);
    v17 = *(v0 + 680);
    v18 = *(v0 + 672);

    v15(v16, v18);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailurePodcasts(_:), *(v0 + 392));
  v19 = swift_task_alloc();
  *(v0 + 1264) = v19;
  *v19 = v0;
  v19[1] = sub_148514;
  v20 = *(v0 + 408);
  v21 = *(v0 + 176);

  return sub_14982C(v20);
}

uint64_t sub_148C1C()
{
  v25 = v0;
  *(v0 + 1256) = *(v0 + 944);
  v1 = *(v0 + 848);
  (*(v0 + 840))(*(v0 + 696), *(v0 + 832), *(v0 + 672));
  swift_errorRetain();
  v2 = sub_2CDFE0();
  v3 = sub_2CE680();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = *(v0 + 856);
    v4 = *(v0 + 696);
    v5 = *(v0 + 680);
    v6 = *(v0 + 672);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = sub_2CEEF0();
    v14 = sub_3F08(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v2, v3, "OpenMediaItemFlow#execute threw an error when trying to invoke open intent: %s", v7, 0xCu);
    sub_306C(v8);

    v23(v4, v6);
  }

  else
  {
    v15 = *(v0 + 856);
    v16 = *(v0 + 696);
    v17 = *(v0 + 680);
    v18 = *(v0 + 672);

    v15(v16, v18);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailurePodcasts(_:), *(v0 + 392));
  v19 = swift_task_alloc();
  *(v0 + 1264) = v19;
  *v19 = v0;
  v19[1] = sub_148514;
  v20 = *(v0 + 408);
  v21 = *(v0 + 176);

  return sub_14982C(v20);
}

uint64_t sub_148E64()
{
  v26 = v0;
  v1 = *(v0 + 904);
  (*(v0 + 896))(*(v0 + 512), *(v0 + 488));
  *(v0 + 1256) = *(v0 + 960);
  v2 = *(v0 + 848);
  (*(v0 + 840))(*(v0 + 696), *(v0 + 832), *(v0 + 672));
  swift_errorRetain();
  v3 = sub_2CDFE0();
  v4 = sub_2CE680();

  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v0 + 856);
    v5 = *(v0 + 696);
    v6 = *(v0 + 680);
    v7 = *(v0 + 672);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 144);
    v13 = sub_2CEEF0();
    v15 = sub_3F08(v13, v14, &v25);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v3, v4, "OpenMediaItemFlow#execute threw an error when trying to invoke open intent: %s", v8, 0xCu);
    sub_306C(v9);

    v24(v5, v7);
  }

  else
  {
    v16 = *(v0 + 856);
    v17 = *(v0 + 696);
    v18 = *(v0 + 680);
    v19 = *(v0 + 672);

    v16(v17, v19);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailurePodcasts(_:), *(v0 + 392));
  v20 = swift_task_alloc();
  *(v0 + 1264) = v20;
  *v20 = v0;
  v20[1] = sub_148514;
  v21 = *(v0 + 408);
  v22 = *(v0 + 176);

  return sub_14982C(v21);
}

uint64_t sub_1490C0()
{
  v36 = v0;
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1160);
  v32 = *(v0 + 840);
  v33 = *(v0 + 848);
  v3 = *(v0 + 832);
  v4 = *(v0 + 688);
  v5 = *(v0 + 672);
  v6 = *(v0 + 344);
  v7 = *(v0 + 320);
  v8 = *(v0 + 328);
  v9 = *(v0 + 312);

  sub_30B8(v9, &qword_352770, &qword_2D4FB8);
  v2(v6, v7);
  sub_306C((v0 + 16));
  v32(v4, v3, v5);
  swift_errorRetain();
  v10 = sub_2CDFE0();
  v11 = sub_2CE680();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1184);
    v34 = *(v0 + 856);
    v13 = *(v0 + 688);
    v14 = *(v0 + 680);
    v15 = *(v0 + 672);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 120);
    v21 = sub_2CEEF0();
    v23 = sub_3F08(v21, v22, &v35);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_0, v10, v11, "OpenMediaItemFlow#execute threw an error when trying to invoke OpenMusicItemIntent: %s", v16, 0xCu);
    sub_306C(v17);

    v34(v13, v15);
  }

  else
  {
    v24 = *(v0 + 856);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);

    v24(v25, v27);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailureMusic(_:), *(v0 + 392));
  v28 = swift_task_alloc();
  *(v0 + 1272) = v28;
  *v28 = v0;
  v28[1] = sub_14936C;
  v29 = *(v0 + 408);
  v30 = *(v0 + 176);

  return sub_14982C(v29);
}

uint64_t sub_14936C()
{
  v1 = *(*v0 + 1272);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 392);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1494C4, 0, 0);
}

uint64_t sub_1494C4()
{
  v1 = v0[148];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[73];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[21];
  sub_2C9EB0();

  (*(v7 + 8))(v6, v8);
  v10 = v0[103];
  v11 = v0[102];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[99];
  v15 = v0[98];
  v16 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v19 = v0[94];
  v22 = v0[93];
  v23 = v0[92];
  v24 = v0[91];
  v25 = v0[90];
  v26 = v0[89];
  v27 = v0[88];
  v28 = v0[87];
  v29 = v0[86];
  v30 = v0[83];
  v31 = v0[80];
  v32 = v0[77];
  v33 = v0[76];
  v34 = v0[73];
  v35 = v0[72];
  v36 = v0[71];
  v37 = v0[68];
  v38 = v0[65];
  v39 = v0[64];
  v40 = v0[63];
  v41 = v0[60];
  v42 = v0[57];
  v43 = v0[54];
  v44 = v0[51];
  v45 = v0[48];
  v46 = v0[45];
  v47 = v0[44];
  v48 = v0[43];
  v49 = v0[42];
  v50 = v0[39];
  v51 = v0[38];
  v52 = v0[37];
  v53 = v0[36];
  v54 = v0[35];
  v55 = v0[34];
  v56 = v0[33];
  v57 = v0[32];
  v58 = v0[31];
  v59 = v0[28];
  v60 = v0[27];
  v61 = v0[24];
  v62 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_14982C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_20410(&qword_34CB78, &unk_2D0D80) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(sub_20410(&qword_34CB88, &unk_2D0D90) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_2CB970();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_2CCB30();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = sub_2CCAC0();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v15 = sub_2CA630();
  v2[21] = v15;
  v16 = *(v15 - 8);
  v2[22] = v16;
  v17 = *(v16 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_149A9C, 0, 0);
}

uint64_t sub_149A9C()
{
  v1 = sub_2CB460();
  if (!v1)
  {
    sub_2CB180();
    v1 = sub_2CB170();
  }

  v0[24] = v1;
  v2 = *(v0[8] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_openMediaItemCatDialogService);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_149B50;

  return sub_1BAD2C();
}

uint64_t sub_149B50(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v6 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 256) = a2;

  return _swift_task_switch(sub_149C54, 0, 0);
}

uint64_t sub_149C54()
{
  if (*(v0 + 256))
  {
    v43 = *(v0 + 192);
    v44 = *(v0 + 208);
    v2 = *(v0 + 144);
    v1 = *(v0 + 152);
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    v40 = *(v0 + 88);
    v41 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
    (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v6);
    sub_2CCAD0();
    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v1, v3);
    v42 = *(v7 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v7 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v7 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
    (*(v38 + 104))(v39, enum case for TypeOfIntent.openMediaItem(_:), v40);
    v10 = enum case for ActivityType.dialogFailed(_:);
    v11 = sub_2C9C20();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v41, v10, v11);
    (*(v12 + 56))(v41, 0, 1, v11);
    v13 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v14 = sub_2C98F0();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v8, v13, v14);
    (*(v15 + 56))(v8, 0, 1, v14);
    sub_2CB4B0();

    sub_A41AC(v44, 1);
    sub_30B8(v8, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v41, &qword_34CB88, &unk_2D0D90);
    (*(v38 + 8))(v39, v40);
    v16 = *(v0 + 184);
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    v19 = *(v0 + 128);
    v20 = *(v0 + 104);
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 208);
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = *(v0 + 160);
    sub_2C9B50();
    v29 = swift_task_alloc();
    *(v29 + 16) = v27;
    *(v29 + 24) = v25;
    sub_2CA560();

    v30 = sub_2CA080();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    *(v0 + 216) = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v33 = swift_allocObject();
    *(v0 + 224) = v33;
    *(v33 + 16) = xmmword_2D0770;
    *(v33 + 32) = v25;
    v34 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v45 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v35 = v25;
    v36 = swift_task_alloc();
    *(v0 + 232) = v36;
    *v36 = v0;
    v36[1] = sub_14A120;
    v37 = *(v0 + 184);

    return v45(v0 + 16, v33, v37);
  }
}

uint64_t sub_14A120()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return _swift_task_switch(sub_14A254, 0, 0);
}

uint64_t sub_14A254()
{
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_outputPublisher);
  v2 = v1[3];
  v3 = v1[4];
  sub_35E0(v1, v2);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_14A31C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

uint64_t sub_14A31C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_14A7C8;
  }

  else
  {
    v3 = sub_14A430;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_14A430()
{
  v38 = *(v0 + 208);
  v39 = *(v0 + 192);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = *(v0 + 88);
  v35 = *(v0 + 80);
  v8 = *(v0 + 64);
  v37 = *(v0 + 72);
  v9 = *(v0 + 56);
  (*(v1 + 104))(v2, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v6);
  sub_2CCAD0();
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);
  v36 = *(v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v7 + 104))(v33, enum case for TypeOfIntent.openMediaItem(_:), v34);
  v10 = enum case for ActivityType.failed(_:);
  v11 = sub_2C9C20();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v35, v10, v11);
  (*(v12 + 56))(v35, 0, 1, v11);
  v13 = enum case for SiriKitReliabilityCodes.success(_:);
  v14 = sub_2C98F0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v37, v13, v14);
  (*(v15 + 56))(v37, 0, 1, v14);
  sub_2CB4B0();

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 168);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = *(v0 + 72);
  sub_A41AC(*(v0 + 208), 0);
  sub_30B8(v23, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v22, &qword_34CB88, &unk_2D0D90);
  (*(v20 + 8))(v19, v21);
  sub_306C((v0 + 16));
  (*(v17 + 8))(v16, v18);
  v24 = *(v0 + 184);
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_14A7C8()
{
  v39 = *(v0 + 192);
  v40 = *(v0 + 248);
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = *(v0 + 88);
  v35 = *(v0 + 80);
  v8 = *(v0 + 64);
  v37 = *(v0 + 72);
  v38 = *(v0 + 208);
  v9 = *(v0 + 56);
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v6);
  sub_2CCAD0();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v36 = *(v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v7 + 104))(v33, enum case for TypeOfIntent.openMediaItem(_:), v34);
  v10 = enum case for ActivityType.failed(_:);
  v11 = sub_2C9C20();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v35, v10, v11);
  (*(v12 + 56))(v35, 0, 1, v11);
  v13 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v14 = sub_2C98F0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v37, v13, v14);
  (*(v15 + 56))(v37, 0, 1, v14);
  sub_2CB4B0();

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 168);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = *(v0 + 72);
  sub_A41AC(*(v0 + 208), 0);
  sub_30B8(v23, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v22, &qword_34CB88, &unk_2D0D90);
  (*(v20 + 8))(v19, v21);
  sub_306C((v0 + 16));
  (*(v17 + 8))(v16, v18);
  v24 = *(v0 + 184);
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_14AB6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 200) = a4;
  *(v5 + 208) = v4;
  *(v5 + 440) = a2;
  *(v5 + 184) = a1;
  *(v5 + 192) = a3;
  v6 = *(*(sub_20410(&qword_34CB78, &unk_2D0D80) - 8) + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v7 = *(*(sub_20410(&qword_34CB88, &unk_2D0D90) - 8) + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v8 = sub_2CB970();
  *(v5 + 232) = v8;
  v9 = *(v8 - 8);
  *(v5 + 240) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v11 = sub_2CCB20();
  *(v5 + 256) = v11;
  v12 = *(v11 - 8);
  *(v5 + 264) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  v14 = sub_2CCB30();
  *(v5 + 280) = v14;
  v15 = *(v14 - 8);
  *(v5 + 288) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 296) = swift_task_alloc();
  v17 = sub_2CCAC0();
  *(v5 + 304) = v17;
  v18 = *(v17 - 8);
  *(v5 + 312) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 320) = swift_task_alloc();
  v20 = *(*(sub_2C9B80() - 8) + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  v21 = sub_2CA630();
  *(v5 + 336) = v21;
  v22 = *(v21 - 8);
  *(v5 + 344) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_14AE40, 0, 0);
}

uint64_t sub_14AE40()
{
  v1 = sub_2CB460();
  if (!v1)
  {
    sub_2CB180();
    v1 = sub_2CB170();
  }

  *(v0 + 360) = v1;
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 440);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  strcpy((inited + 32), "mediaItemType");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v4;
  *(inited + 56) = v2;

  v7 = sub_112C0(inited);
  *(v0 + 368) = v7;
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v8 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_openMediaItemCatDialogService);
  if (v5)
  {
    v9 = swift_task_alloc();
    *(v0 + 376) = v9;
    *v9 = v0;
    v9[1] = sub_14B034;
    v10 = *(v0 + 184);

    return sub_1BC31C(v10, v7);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 384) = v12;
    *v12 = v0;
    v12[1] = sub_14B68C;
    v13 = *(v0 + 184);

    return sub_1BB8B8(v13, v7);
  }
}

uint64_t sub_14B034(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a2;
  *(v4 + 136) = v2;
  *(v4 + 144) = a1;
  v5 = *(v3 + 376);
  v6 = *(v3 + 368);
  v8 = *v2;
  *(v4 + 441) = a2;

  return _swift_task_switch(sub_14B158, 0, 0);
}

uint64_t sub_14B158()
{
  v1 = *(v0 + 144);
  if (*(v0 + 441))
  {
    v50 = *(v0 + 360);
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 256);
    v42 = *(v0 + 240);
    v43 = *(v0 + 248);
    v44 = *(v0 + 232);
    v48 = *(v0 + 216);
    v45 = *(v0 + 208);
    v47 = *(v0 + 224);
    v49 = *(v0 + 144);
    (*(v3 + 104))(v2, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v4);
    (*(v7 + 104))(v5, enum case for AdditionalMetricsDescription.SourceFunction.noResultsDlg(_:), v6);
    (*(v9 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v10);
    sub_2CCAD0();
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    v11 = (v45 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider);
    v12 = *(v45 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24);
    v46 = *(v45 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0(v11, v12);
    (*(v42 + 104))(v43, enum case for TypeOfIntent.openMediaItem(_:), v44);
    v13 = enum case for ActivityType.dialogFailed(_:);
    v14 = sub_2C9C20();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v47, v13, v14);
    (*(v15 + 56))(v47, 0, 1, v14);
    v16 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v17 = sub_2C98F0();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v48, v16, v17);
    (*(v18 + 56))(v48, 0, 1, v17);
    sub_2CB4B0();

    sub_A41AC(v49, 1);

    sub_30B8(v48, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v47, &qword_34CB88, &unk_2D0D90);
    (*(v42 + 8))(v43, v44);
    v19 = *(v0 + 352);
    v20 = *(v0 + 320);
    v21 = *(v0 + 328);
    v22 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = *(v0 + 248);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    *(v0 + 392) = v1;
    v29 = *(v0 + 352);
    v30 = *(v0 + 360);
    v31 = *(v0 + 328);
    v32 = v1;
    sub_2C9B20();
    v33 = swift_task_alloc();
    *(v33 + 16) = v30;
    *(v33 + 24) = v32;
    sub_2CA560();

    v34 = sub_2CA080();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    *(v0 + 400) = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v37 = swift_allocObject();
    *(v0 + 408) = v37;
    *(v37 + 16) = xmmword_2D0770;
    *(v37 + 32) = v32;
    v38 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v51 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v39 = v32;
    v40 = swift_task_alloc();
    *(v0 + 416) = v40;
    *v40 = v0;
    v40[1] = sub_14BCE4;
    v41 = *(v0 + 352);

    return v51(v0 + 96, v37, v41);
  }
}

uint64_t sub_14B68C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a2;
  *(v4 + 160) = v2;
  *(v4 + 168) = a1;
  v5 = *(v3 + 384);
  v6 = *(v3 + 368);
  v8 = *v2;
  *(v4 + 442) = a2;

  return _swift_task_switch(sub_14B7B0, 0, 0);
}

uint64_t sub_14B7B0()
{
  v1 = *(v0 + 168);
  if (*(v0 + 442))
  {
    v50 = *(v0 + 360);
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 256);
    v42 = *(v0 + 240);
    v43 = *(v0 + 248);
    v44 = *(v0 + 232);
    v48 = *(v0 + 216);
    v45 = *(v0 + 208);
    v47 = *(v0 + 224);
    v49 = *(v0 + 168);
    (*(v3 + 104))(v2, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v4);
    (*(v7 + 104))(v5, enum case for AdditionalMetricsDescription.SourceFunction.noResultsDlg(_:), v6);
    (*(v9 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v10);
    sub_2CCAD0();
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    v11 = (v45 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider);
    v12 = *(v45 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24);
    v46 = *(v45 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0(v11, v12);
    (*(v42 + 104))(v43, enum case for TypeOfIntent.openMediaItem(_:), v44);
    v13 = enum case for ActivityType.dialogFailed(_:);
    v14 = sub_2C9C20();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v47, v13, v14);
    (*(v15 + 56))(v47, 0, 1, v14);
    v16 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v17 = sub_2C98F0();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v48, v16, v17);
    (*(v18 + 56))(v48, 0, 1, v17);
    sub_2CB4B0();

    sub_A41AC(v49, 1);

    sub_30B8(v48, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v47, &qword_34CB88, &unk_2D0D90);
    (*(v42 + 8))(v43, v44);
    v19 = *(v0 + 352);
    v20 = *(v0 + 320);
    v21 = *(v0 + 328);
    v22 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = *(v0 + 248);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    *(v0 + 392) = v1;
    v29 = *(v0 + 352);
    v30 = *(v0 + 360);
    v31 = *(v0 + 328);
    v32 = v1;
    sub_2C9B20();
    v33 = swift_task_alloc();
    *(v33 + 16) = v30;
    *(v33 + 24) = v32;
    sub_2CA560();

    v34 = sub_2CA080();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    *(v0 + 400) = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v37 = swift_allocObject();
    *(v0 + 408) = v37;
    *(v37 + 16) = xmmword_2D0770;
    *(v37 + 32) = v32;
    v38 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v51 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v39 = v32;
    v40 = swift_task_alloc();
    *(v0 + 416) = v40;
    *v40 = v0;
    v40[1] = sub_14BCE4;
    v41 = *(v0 + 352);

    return v51(v0 + 96, v37, v41);
  }
}

uint64_t sub_14BCE4()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v5 = *v0;

  return _swift_task_switch(sub_14BE18, 0, 0);
}

uint64_t sub_14BE18()
{
  v1 = (*(v0 + 208) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_outputPublisher);
  v2 = v1[3];
  v3 = v1[4];
  sub_35E0(v1, v2);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v5 = swift_task_alloc();
  *(v0 + 424) = v5;
  *v5 = v0;
  v5[1] = sub_14BEE0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 96, v2, v3);
}

uint64_t sub_14BEE0()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_14C3F4;
  }

  else
  {
    v3 = sub_14BFF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_14BFF4()
{
  v42 = v0[49];
  v43 = v0[45];
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[32];
  v10 = v0[30];
  v38 = v0[31];
  v39 = v0[29];
  v40 = v0[28];
  v41 = v0[27];
  v36 = v3;
  v37 = v0[26];
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:));
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v6);
  (*(v8 + 104))(v7, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v9);
  sub_2CCAD0();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v36);
  v11 = *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v10 + 104))(v38, enum case for TypeOfIntent.openMediaItem(_:), v39);
  v12 = enum case for ActivityType.failed(_:);
  v13 = sub_2C9C20();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v40, v12, v13);
  (*(v14 + 56))(v40, 0, 1, v13);
  v15 = enum case for SiriKitReliabilityCodes.success(_:);
  v16 = sub_2C98F0();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v41, v15, v16);
  (*(v17 + 56))(v41, 0, 1, v16);
  v18 = v42;
  sub_2CB4B0();

  sub_A41AC(v42, 0);
  sub_A41AC(v42, 0);

  v20 = v0[43];
  v19 = v0[44];
  v21 = v0[42];
  v23 = v0[30];
  v22 = v0[31];
  v25 = v0[28];
  v24 = v0[29];
  sub_30B8(v0[27], &qword_34CB78, &unk_2D0D80);
  sub_30B8(v25, &qword_34CB88, &unk_2D0D90);
  (*(v23 + 8))(v22, v24);
  sub_306C(v0 + 12);
  (*(v20 + 8))(v19, v21);
  v26 = v0[44];
  v27 = v0[40];
  v28 = v0[41];
  v29 = v0[37];
  v30 = v0[34];
  v31 = v0[31];
  v33 = v0[27];
  v32 = v0[28];

  v34 = v0[1];

  return v34();
}

uint64_t sub_14C3F4()
{
  v42 = v0[49];
  v43 = v0[45];
  v44 = v0[54];
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[32];
  v10 = v0[30];
  v38 = v0[31];
  v39 = v0[29];
  v40 = v0[28];
  v41 = v0[27];
  v36 = v3;
  v37 = v0[26];
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:));
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.noResultsDlg(_:), v6);
  (*(v7 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v9);
  sub_2CCAD0();
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v36);
  v11 = *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v10 + 104))(v38, enum case for TypeOfIntent.openMediaItem(_:), v39);
  v12 = enum case for ActivityType.failed(_:);
  v13 = sub_2C9C20();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v40, v12, v13);
  (*(v14 + 56))(v40, 0, 1, v13);
  v15 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v16 = sub_2C98F0();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v41, v15, v16);
  (*(v17 + 56))(v41, 0, 1, v16);
  v18 = v42;
  sub_2CB4B0();

  sub_A41AC(v42, 0);

  sub_A41AC(v42, 0);

  sub_A41AC(v42, 0);
  v20 = v0[43];
  v19 = v0[44];
  v21 = v0[42];
  v23 = v0[30];
  v22 = v0[31];
  v25 = v0[28];
  v24 = v0[29];
  sub_30B8(v0[27], &qword_34CB78, &unk_2D0D80);
  sub_30B8(v25, &qword_34CB88, &unk_2D0D90);
  (*(v23 + 8))(v22, v24);
  sub_306C(v0 + 12);
  (*(v20 + 8))(v19, v21);
  v26 = v0[44];
  v27 = v0[40];
  v28 = v0[41];
  v29 = v0[37];
  v30 = v0[34];
  v31 = v0[31];
  v33 = v0[27];
  v32 = v0[28];

  v34 = v0[1];

  return v34();
}

uint64_t sub_14C808(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2CB260();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_2CA000();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  v11 = [a3 catId];
  sub_2CE270();

  return sub_2CA590();
}

uint64_t sub_14C984()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_openMediaItemCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_outputPublisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_musicSiriItemProvider));
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenMediaItemFlow()
{
  result = qword_352658;
  if (!qword_352658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14CABC()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_14CB9C()
{
  v2 = *v0;
  type metadata accessor for OpenMediaItemFlow();
  return sub_2C97C0();
}

uint64_t sub_14CBFC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E664;

  return sub_140F48(a1);
}

uint64_t sub_14CC98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenMediaItemFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_14CCF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14CD40(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "AceServiceExecutorProviderWrapper#aceService initializing AceService...", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = *(a1 + 24);
  return (*(a1 + 16))(v11);
}

uint64_t sub_14CF04@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_F3F4(v1 + 88, &v4, &qword_34C6B8, &qword_2D0708);
  if (v5)
  {
    return sub_F338(&v4, a1);
  }

  sub_30B8(&v4, &qword_34C6B8, &qword_2D0708);
  sub_14CFE4(v1);
  sub_EEAC(a1, &v4);
  swift_beginAccess();
  sub_FECE8(&v4, v1 + 88, &qword_34C6B8, &qword_2D0708);
  return swift_endAccess();
}

uint64_t sub_14CFE4(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "AceServiceExecutorProviderWrapper#deviceState initializing DeviceState...", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = *(a1 + 80);
  return (*(a1 + 72))(v11);
}

BOOL sub_14D1A8()
{
  v0 = sub_2CB350();
  v54 = *(v0 - 8);
  v1 = v54[8];
  v2 = __chkstk_darwin(v0);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v53 - v5;
  v7 = sub_2CB260();
  v57 = *(v7 - 8);
  v8 = *(v57 + 8);
  v9 = __chkstk_darwin(v7);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  if (sub_2CB460())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    (*(v14 + 16))(v20, v21, v13);

    v22 = v13;
    v23 = sub_2CDFE0();
    v24 = sub_2CE670();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v57;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v55 = v14;
      v28 = v27;
      v54 = swift_slowAlloc();
      v61 = v54;
      *v28 = 136315138;
      sub_2CB130();
      sub_2CD3C0();

      sub_14DAC4(&qword_352898, &type metadata accessor for ResponseMode);
      v29 = sub_2CEE70();
      v53 = v22;
      v31 = v30;
      v26[1](v12, v7);
      v32 = sub_3F08(v29, v31, &v61);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v23, v24, "AceServiceExecutorProviderWrapper#willSiriSpeak using SiriEnvironment, responseMode is %s", v28, 0xCu);
      sub_306C(v54);

      (*(v55 + 8))(v20, v53);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
    }

    sub_2CB130();
    sub_2CD3C0();

    v47 = v56;
    sub_2CB210();
    sub_14DAC4(&qword_352890, &type metadata accessor for ResponseMode);
    v48 = sub_2CE250();

    v49 = v26[1];
    v49(v47, v7);
    v49(v12, v7);
  }

  else
  {
    v56 = v6;
    v57 = v4;
    v33 = v0;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    v35 = v14;
    (*(v14 + 16))(v18, v34, v13);

    v36 = sub_2CDFE0();
    v37 = sub_2CE670();

    v38 = v33;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v53 = v13;
      v40 = v58;
      *v39 = 136315138;
      sub_14CF04(v59);
      sub_35E0(v59, v60);
      v41 = v56;
      sub_2C9A60();
      v42 = sub_2CE2A0();
      v44 = v43;
      sub_306C(v59);
      v45 = sub_3F08(v42, v44, &v58);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_0, v36, v37, "AceServiceExecutorProviderWrapper#willSiriSpeak using deviceState, interactionType is %s", v39, 0xCu);
      sub_306C(v40);

      (*(v35 + 8))(v18, v53);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
      v41 = v56;
    }

    v46 = v57;
    sub_14CF04(v59);
    sub_35E0(v59, v60);
    sub_2C9A60();
    v50 = v54;
    (v54[13])(v46, enum case for InteractionType.displayDriven(_:), v38);
    sub_14DAC4(&qword_352888, &type metadata accessor for InteractionType);
    v48 = sub_2CE250();
    v51 = v50[1];
    v51(v46, v38);
    v51(v41, v38);
    sub_306C(v59);
  }

  return (v48 & 1) == 0;
}

uint64_t sub_14D974()
{
  v1 = *(v0 + 24);

  sub_30B8(v0 + 32, &qword_3528A0, &qword_2D5080);
  v2 = *(v0 + 80);

  sub_30B8(v0 + 88, &qword_34C6B8, &qword_2D0708);

  return swift_deallocClassInstance();
}

uint64_t sub_14DA08()
{
  v1 = *v0;
  sub_10B60(v3);
  sub_35E0(v3, v3[3]);
  sub_2CA170();
  return sub_306C(v3);
}

uint64_t sub_14DAC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14DB30()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CB440();
  if (sub_2CB460())
  {
    sub_2CB130();

    v6 = sub_2CD3B0();
  }

  else
  {
    v6 = 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_2CDFE0();
  v9 = sub_2CE670();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109634;
    *(v10 + 4) = v5 & 1;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6 & 1;
    *(v10 + 14) = 2082;
    v12 = sub_2CCCA0();
    v17 = v0;
    v14 = sub_3F08(v12, v13, &v18);

    *(v10 + 16) = v14;
    _os_log_impl(&dword_0, v8, v9, "DetermineSnippetProvider#shouldShowMediaPlayerSnippet isSystemApertureEnabled = %{BOOL}d, isInAmbient = %{BOOL}d %{public}s", v10, 0x18u);
    sub_306C(v11);

    (*(v1 + 8))(v4, v17);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return (v5 | v6) & 1;
}

uint64_t sub_14DDCC(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v227 = a7;
  v228 = a3;
  v224 = a6;
  v226 = a2;
  v10 = sub_2CD230();
  v232 = *(v10 - 8);
  v11 = *(v232 + 64);
  __chkstk_darwin(v10);
  v211 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_352960, &qword_2D5110);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v201 = &v196 - v15;
  v16 = sub_20410(&qword_352968, &qword_2D9780);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v200 = &v196 - v18;
  v210 = sub_2CD290();
  v209 = *(v210 - 8);
  v19 = *(v209 + 64);
  __chkstk_darwin(v210);
  v207 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2CD350();
  v206 = *(v208 - 8);
  v21 = *(v206 + 64);
  __chkstk_darwin(v208);
  v205 = &v196 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v222 = *(v23 - 8);
  v24 = *(v222 + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v203 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v196 - v28;
  v30 = __chkstk_darwin(v27);
  v198 = &v196 - v31;
  v32 = __chkstk_darwin(v30);
  v199 = &v196 - v33;
  v34 = __chkstk_darwin(v32);
  v213 = &v196 - v35;
  v36 = __chkstk_darwin(v34);
  v214 = &v196 - v37;
  v38 = __chkstk_darwin(v36);
  v218 = &v196 - v39;
  v223 = v40;
  __chkstk_darwin(v38);
  v219 = &v196 - v41;
  v42 = sub_2CE000();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = __chkstk_darwin(v42);
  v202 = &v196 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v204 = &v196 - v48;
  v49 = __chkstk_darwin(v47);
  v197 = &v196 - v50;
  v51 = __chkstk_darwin(v49);
  v212 = &v196 - v52;
  v53 = __chkstk_darwin(v51);
  v217 = &v196 - v54;
  __chkstk_darwin(v53);
  v56 = &v196 - v55;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v225 = v10;
  v57 = sub_3ED0(v42, static Logger.default);
  swift_beginAccess();
  v230 = v43[2];
  v231 = v43 + 2;
  v230(v56, v57, v42);
  v58 = a1;
  v59 = sub_2CDFE0();
  v229 = v43;
  v60 = v59;
  v61 = sub_2CE670();

  v62 = os_log_type_enabled(v60, v61);
  v196 = v29;
  v216 = v58;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v221 = v57;
    v64 = v63;
    v233[0] = swift_slowAlloc();
    *v64 = 136315395;
    v65 = v58;
    v220 = v42;
    v66 = v65;
    v67 = a5;
    v68 = [v65 description];
    v69 = sub_2CE270();
    v215 = a4;
    v71 = v70;

    v72 = v67;
    v73 = sub_3F08(v69, v71, v233);

    *(v64 + 4) = v73;
    *(v64 + 12) = 2081;
    v74 = sub_2CCCA0();
    v76 = sub_3F08(v74, v75, v233);
    v42 = v220;

    *(v64 + 14) = v76;
    a4 = v215;
    _os_log_impl(&dword_0, v60, v61, "DetermineSnippetProvider#handleIntent called for Intent: %s %{private}s", v64, 0x16u);
    swift_arrayDestroy();

    v57 = v221;

    v77 = *(v229 + 1);
    v77(v56, v42);
    if ((sub_2CB640() & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v102 = v217;
    v230(v217, v57, v42);
    v103 = sub_2CDFE0();
    v104 = sub_2CE660();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v220 = v42;
      v107 = v106;
      v233[0] = v106;
      *v105 = 136446210;
      v108 = sub_2CCCA0();
      v229 = v77;
      v110 = sub_3F08(v108, v109, v233);

      *(v105 + 4) = v110;
      _os_log_impl(&dword_0, v103, v104, "DetermineSnippetProvider#handleIntent won't return an AceView for CarPlay %{public}s", v105, 0xCu);
      sub_306C(v107);

      v229(v102, v220);
    }

    else
    {

      v77(v102, v42);
    }

    v111 = v219;
    (*(v232 + 56))(v219, 1, 1, v225);
    v112 = v226;
    v113 = *(v226 + 72);
    v114 = v218;
    sub_14F388(v111, v218);
    v115 = (*(v222 + 80) + 56) & ~*(v222 + 80);
    v116 = swift_allocObject();
    v117 = v224;
    *(v116 + 16) = v112;
    *(v116 + 24) = v117;
    *(v116 + 32) = v227;
    *(v116 + 40) = a4;
    *(v116 + 48) = v72;
    sub_14F3F8(v114, v116 + v115);

    v118 = a4;
    v119 = v72;
    v120 = [v118 targetDeviceIds];
    if (v120)
    {
      v121 = v120;
      v122 = sub_2CE410();

      v123 = *(v122 + 16);

      if (v123)
      {
        v124 = sub_14F694;
LABEL_49:
        sub_4843C(v228, v118, v124, v116);
LABEL_52:

        v137 = v111;
        return sub_14F46C(v137);
      }
    }

    v125 = sub_14F694;
LABEL_51:
    sub_45370(v228, v118, v125, v116);
    goto LABEL_52;
  }

  v77 = *(v229 + 1);
  v77(v56, v42);
  v72 = a5;
  if (sub_2CB640())
  {
    goto LABEL_18;
  }

LABEL_5:
  v78 = [v216 nowPlayingIntentInfo];
  if (!v78)
  {
LABEL_44:
    v182 = v212;
    v230(v212, v57, v42);
    v183 = sub_2CDFE0();
    v184 = sub_2CE670();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_0, v183, v184, "DetermineViewProvider#makeViewsForHandleIntent no view as no nowPlayingIntentInfo could be found", v185, 2u);
    }

    v77(v182, v42);
    v111 = v214;
    (*(v232 + 56))(v214, 1, 1, v225);
    v186 = v226;
    v187 = *(v226 + 72);
    v188 = v213;
    sub_14F388(v111, v213);
    v189 = (*(v222 + 80) + 56) & ~*(v222 + 80);
    v116 = swift_allocObject();
    v190 = v224;
    *(v116 + 16) = v186;
    *(v116 + 24) = v190;
    *(v116 + 32) = v227;
    *(v116 + 40) = a4;
    *(v116 + 48) = v72;
    sub_14F3F8(v188, v116 + v189);

    v118 = a4;
    v191 = v72;
    v192 = [v118 targetDeviceIds];
    if (v192)
    {
      v193 = v192;
      v194 = sub_2CE410();

      v195 = *(v194 + 16);

      if (v195)
      {
        v124 = sub_14F468;
        goto LABEL_49;
      }
    }

    v125 = sub_14F468;
    goto LABEL_51;
  }

  v79 = v78;
  v221 = v57;
  type metadata accessor for NowPlayingIntentInfo();
  v80 = sub_2CE410();

  if (!(v80 >> 62))
  {
    result = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_43:

    v57 = v221;
    goto LABEL_44;
  }

LABEL_8:
  v215 = a4;
  if ((v80 & 0xC000000000000001) != 0)
  {
    v82 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v82 = *(v80 + 32);
  }

  v83 = v82;

  if (sub_14DB30())
  {
    v84 = v197;
    v230(v197, v221, v42);
    v85 = sub_2CDFE0();
    v86 = sub_2CE670();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "DetermineViewProvider#makeViewsForHandleIntent isSystemApertureEnabled and isInAmbient are fall returning nil for snippet", v87, 2u);
    }

    v77(v84, v42);
    v88 = v199;
    (*(v232 + 56))(v199, 1, 1, v225);
    v89 = v226;
    v90 = *(v226 + 72);
    v91 = v198;
    sub_14F388(v88, v198);
    v92 = (*(v222 + 80) + 56) & ~*(v222 + 80);
    v93 = swift_allocObject();
    v94 = v224;
    *(v93 + 16) = v89;
    *(v93 + 24) = v94;
    v95 = v215;
    *(v93 + 32) = v227;
    *(v93 + 40) = v95;
    *(v93 + 48) = v72;
    sub_14F3F8(v91, v93 + v92);

    v96 = v95;
    v97 = v72;
    v98 = [v96 targetDeviceIds];
    if (v98 && (v99 = v98, v100 = sub_2CE410(), v99, v101 = *(v100 + 16), , v101))
    {
      sub_4843C(v228, v96, sub_14F694, v93);
    }

    else
    {
      sub_45370(v228, v96, sub_14F694, v93);
    }

    v137 = v88;
    return sub_14F46C(v137);
  }

  v218 = v72;
  v126 = v204;
  v230(v204, v221, v42);
  v127 = v83;
  v128 = sub_2CDFE0();
  v129 = sub_2CE670();

  v130 = os_log_type_enabled(v128, v129);
  v229 = v77;
  v219 = v127;
  if (v130)
  {
    v220 = v42;
    v131 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    *v131 = 136315394;
    v132 = [v127 appBundleId];
    if (v132)
    {
      v133 = v132;
      v134 = sub_2CE270();
      v136 = v135;
    }

    else
    {
      v134 = 0;
      v136 = 0;
    }

    v233[0] = v134;
    v233[1] = v136;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v138 = sub_2CE2A0();
    v140 = sub_3F08(v138, v139, &v234);

    *(v131 + 4) = v140;
    *(v131 + 12) = 2082;
    v141 = sub_2CCCA0();
    v143 = sub_3F08(v141, v142, &v234);

    *(v131 + 14) = v143;
    _os_log_impl(&dword_0, v128, v129, "DetermineSnippetProvider#handleIntent bundleId: %s %{public}s", v131, 0x16u);
    swift_arrayDestroy();

    v42 = v220;
    v229(v204, v220);
    v127 = v219;
  }

  else
  {

    v77(v126, v42);
  }

  v144 = [v127 appBundleId];
  v145 = v202;
  if (v144)
  {
    v146 = v42;
    v147 = v144;
    sub_2CE270();

    v42 = v146;
  }

  v148 = v205;
  sub_2CD340();
  v149 = v206;
  v150 = v200;
  v151 = v208;
  (*(v206 + 16))(v200, v148, v208);
  (*(v149 + 56))(v150, 0, 1, v151);
  v152 = sub_2CD270();
  (*(*(v152 - 8) + 56))(v201, 1, 1, v152);
  v153 = v207;
  sub_2CD280();
  v154 = v211;
  (*(v209 + 16))(v211, v153, v210);
  v155 = v225;
  (*(v232 + 104))(v154, enum case for SiriAudioSnippets.mediaPlayer(_:), v225);
  v230(v145, v221, v42);
  v156 = sub_2CDFE0();
  v157 = sub_2CE660();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v233[0] = swift_slowAlloc();
    *v158 = 136315394;
    v234 = v155;
    sub_20410(&qword_352970, &qword_2D5118);
    v159 = sub_2CE2A0();
    v161 = sub_3F08(v159, v160, v233);

    *(v158 + 4) = v161;
    *(v158 + 12) = 2082;
    v162 = sub_2CCCA0();
    v164 = sub_3F08(v162, v163, v233);

    *(v158 + 14) = v164;
    _os_log_impl(&dword_0, v156, v157, "DetermineSnippetProvider#handleIntent Returning snippet for iOS: %s %{public}s", v158, 0x16u);
    swift_arrayDestroy();
  }

  v229(v145, v42);
  v165 = v196;
  v166 = v232;
  (*(v232 + 16))(v196, v211, v155);
  (*(v166 + 56))(v165, 0, 1, v155);
  v167 = v226;
  v168 = *(v226 + 72);
  v169 = v203;
  sub_14F388(v165, v203);
  v170 = (*(v222 + 80) + 56) & ~*(v222 + 80);
  v171 = swift_allocObject();
  v172 = v224;
  *(v171 + 16) = v167;
  *(v171 + 24) = v172;
  v173 = v215;
  *(v171 + 32) = v227;
  *(v171 + 40) = v173;
  v174 = v155;
  v175 = v218;
  *(v171 + 48) = v218;
  sub_14F3F8(v169, v171 + v170);

  v176 = v173;
  v177 = v175;
  v178 = [v176 targetDeviceIds];
  if (v178 && (v179 = v178, v180 = sub_2CE410(), v179, v181 = *(v180 + 16), , v181))
  {
    sub_4843C(v228, v176, sub_14F694, v171);
  }

  else
  {
    sub_45370(v228, v176, sub_14F694, v171);
  }

  sub_14F46C(v165);
  (*(v232 + 8))(v211, v174);
  (*(v209 + 8))(v207, v210);
  return (*(v206 + 8))(v205, v208);
}

uint64_t sub_14F388(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F46C(uint64_t a1)
{
  v2 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14F4D4()
{
  v1 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = sub_2CD230();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_14F60C(uint64_t a1)
{
  v3 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_13B8CC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_14F698(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a1;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v15[2] = v16;
  if (sub_13964(sub_13A68, v15, a2))
  {
    v8 = *a3;

    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = sub_B90C4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      result = sub_B90C4((v10 > 1), v11 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }
  }

  else
  {
    v8 = *a4;

    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v8;
    if ((result & 1) == 0)
    {
      result = sub_B90C4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
      *a4 = result;
    }

    v11 = *(v8 + 16);
    v13 = *(v8 + 24);
    v12 = v11 + 1;
    if (v11 >= v13 >> 1)
    {
      result = sub_B90C4((v13 > 1), v11 + 1, 1, v8);
      v8 = result;
      *a4 = result;
    }
  }

  *(v8 + 16) = v12;
  v14 = v8 + 16 * v11;
  *(v14 + 32) = v7;
  *(v14 + 40) = v6;
  return result;
}

__n128 sub_14F80C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_14F820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14F868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_14F8CC()
{
  result = qword_352978;
  if (!qword_352978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352978);
  }

  return result;
}

uint64_t sub_14F938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v46 = a2;
  v2 = sub_2CDAA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - v9;
  v11 = sub_20410(&qword_34E940, &qword_2D28E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v45 = &v42 - v13;
  v14 = sub_2CE050();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v44 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CA000();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  (*(v21 + 16))(v24, v25, v20);
  v26 = sub_2CDFE0();
  v27 = sub_2CE670();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v43 = v6;
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "AudioNLContextUpdateProvider#makeContextForSuccessfulShazamMatch clearing conversation state", v28, 2u);
    v6 = v43;
  }

  (*(v21 + 8))(v24, v20);
  v29 = v50;
  sub_2C9FF0();
  v30 = v45;
  ShazamKitMatch.toRREntity()(v45);
  v32 = v47;
  v31 = v48;
  if ((*(v47 + 48))(v30, 1, v48) == 1)
  {
    sub_30B8(v30, &qword_34E940, &qword_2D28E8);
  }

  else
  {
    v33 = v44;
    (*(v32 + 32))(v44, v30, v31);
    sub_20410(&qword_34E950, &qword_2D5350);
    v34 = *(v32 + 72);
    v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2D0090;
    (*(v32 + 16))(v36 + v35, v33, v31);
    sub_2C9F00();
    (*(v32 + 8))(v33, v31);
  }

  (*(v3 + 104))(v6, enum case for PommesContext.Source.pluginDefined(_:), v2);
  sub_2CDAB0();
  v37 = sub_2CDAC0();
  (*(*(v37 - 8) + 56))(v10, 0, 1, v37);
  sub_2C9F20();
  v39 = v51;
  v38 = v52;
  v40 = v46;
  (*(v51 + 32))(v46, v29, v52);
  return (*(v39 + 56))(v40, 0, 1, v38);
}

uint64_t sub_14FEE4(void (*a1)(char *), uint64_t a2)
{
  v5 = sub_20410(&qword_352D78, &unk_2D5320);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for AcousticIDFlow.State(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
  swift_beginAccess();
  sub_16A2C0(v2 + v13, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_14A58(v12, v8, &qword_352D78, &unk_2D5320);
      sub_152D00(v8, a1, a2);
      return sub_30B8(v8, &qword_352D78, &unk_2D5320);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_153040(*v12, a1, a2);
    }

    v18 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager + 32);
    sub_35E0((v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager), *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager + 24));
    if (sub_2CC730())
    {
      return sub_150100(a1, a2);
    }

    v16 = a1;
    v17 = a2;
    return sub_1524C4(v16, v17);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v16 = a1;
    v17 = a2;
    return sub_1524C4(v16, v17);
  }

  if (EnumCaseMultiPayload == 4)
  {
    return sub_152B48(a1, a2);
  }

  else
  {
    return sub_1534C8(a1, a2);
  }
}

uint64_t sub_150100(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = a1;
  v40 = sub_2CDFD0();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v40);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v7, qword_35F6A8);
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "AcousticIDFlow#triggerSmartStackMatch Reached Logic", v15, 2u);
  }

  (*(v8 + 8))(v11, v7);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  v17 = *(v2 + 16);
  v36 = v6;
  v18 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v40;
  v17(v18, v6);
  v20 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v21 = (v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "shazamKitPerformMatch";
  *(v22 + 24) = 21;
  *(v22 + 32) = 2;
  (*(v2 + 32))(v22 + v20, v18, v19);
  v23 = (v22 + v21);
  v24 = v38;
  *v23 = v37;
  v23[1] = v24;

  sub_2CE9E0();
  sub_2CDF90();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2433C;
  *(v25 + 24) = v22;
  v26 = v2;
  v27 = v39;
  v28 = *(v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), *(v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24));

  v29 = sub_2CB500();
  v30 = *(v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v31 = *(v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v30);
  v32 = swift_allocObject();
  v32[2] = v27;
  v32[3] = sub_24350;
  v32[4] = v25;
  v32[5] = v29;
  v33 = *(v31 + 40);

  v33(sub_16A254, v32, v30, v31);

  return (*(v26 + 8))(v36, v40);
}

uint64_t sub_1505A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, qword_35F6A8);
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v15, v16, "AcousticIDFlow#triggerSmartStackMatch enableLiveActivity: %{BOOL}d", v17, 8u);
  }

  (*(v10 + 8))(v13, v9);
  *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = a1 & 1;
  v18 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v19 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v18);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a3;
  v21[4] = a4;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v27;
  v23[4] = a3;
  v23[5] = a4;
  v24 = *(v19 + 8);

  swift_retain_n();

  v24(sub_16A260, v21, sub_16A2B4, v23, v18, v19);
}

uint64_t sub_1508B4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    if (*(v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity))
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_16A384;
      *(v13 + 24) = v12;
      swift_allocObject();
      swift_weakInit();

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      sub_2CE4F0();
    }

    else
    {

      sub_150BB0(0, 0, 0, v11, a2, a3);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v5, qword_35F6A8);
    (*(v6 + 16))(v9, v14, v5);
    v15 = sub_2CDFE0();
    v16 = sub_2CE680();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "AcousticIDFlow#triggerSmartStackMatch self deallocated prematurely during performMatch start call", v17, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_150BB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v125 = a6;
  v124 = a5;
  v130 = a4;
  v119 = sub_2C9EC0();
  v118 = *(v119 - 8);
  v9 = *(v118 + 64);
  __chkstk_darwin(v119);
  v117 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v117 - v13;
  v123 = sub_2CA910();
  v122 = *(v123 - 1);
  v15 = *(v122 + 64);
  __chkstk_darwin(v123);
  v128 = (&v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_20410(&qword_352D78, &unk_2D5320);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v121 = &v117 - v19;
  v129 = type metadata accessor for AcousticIDFlow.State(0);
  v20 = *(*(v129 - 1) + 64);
  v21 = __chkstk_darwin(v129);
  v23 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v117 - v25;
  __chkstk_darwin(v24);
  *&v127 = &v117 - v27;
  v28 = sub_2CE000();
  v131 = *(v28 - 8);
  v132 = v28;
  v29 = *(v131 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v126 = &v117 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v117 - v36;
  v38 = __chkstk_darwin(v35);
  v120 = &v117 - v39;
  __chkstk_darwin(v38);
  v41 = &v117 - v40;
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v137 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v42 = v133[1];
      v43 = v132;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v44 = sub_3ED0(v43, qword_35F6A8);
      v45 = v131;
      v46 = *(v131 + 16);
      v46(v41, v44, v43);
      v47 = v42;
      v48 = sub_2CDFE0();
      v49 = sub_2CE680();

      v50 = os_log_type_enabled(v48, v49);
      v128 = v47;
      if (v50)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v126 = v44;
        v123 = v52;
        v133[0] = v52;
        *v51 = 136315138;
        v53 = v46;
        v54 = [v47 localizedDescription];
        v55 = sub_2CE270();
        v57 = v56;

        v46 = v53;
        *&v134 = v55;
        *(&v134 + 1) = v57;
        v58 = sub_2CE3C0();
        v60 = sub_3F08(v58, v59, v133);

        *(v51 + 4) = v60;
        _os_log_impl(&dword_0, v48, v49, "AcousticIDFlow#triggerSmartStackMatch Error grabbing session ID %s, issuing error dialog", v51, 0xCu);
        sub_306C(v123);
        v44 = v126;

        v43 = v132;
      }

      v61 = *(v45 + 8);
      v61(v41, v43);
      v62 = v130;
      v63 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      swift_beginAccess();
      v64 = v127;
      sub_16A2C0(v62 + v63, v127);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v65 = v120;
        v46(v120, v44, v43);
        v66 = sub_2CDFE0();
        v67 = sub_2CE680();
        v68 = os_log_type_enabled(v66, v67);
        v69 = v128;
        if (v68)
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_0, v66, v67, "AcousticIDFlow#triggerSmartStackMatch grabSessionID failed, but performMatch has already completed. Doing nothing.", v70, 2u);

          v71 = v69;
        }

        else
        {
          v71 = v66;
          v66 = v128;
        }

        v61(v65, v43);
      }

      else
      {
        v93 = sub_2CC950();
        v94 = v121;
        (*(*(v93 - 8) + 56))(v121, 1, 1, v93);
        v95 = v128;
        v96 = [v128 localizedDescription];
        v97 = sub_2CE270();
        v99 = v98;

        sub_1612C4(v94, v97, v99, v124, v125);

        sub_30B8(v94, &qword_352D78, &unk_2D5320);
        sub_16A324(v64, type metadata accessor for AcousticIDFlow.State);
      }
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else if (a2)
  {
    v72 = [objc_allocWithZone(SAUIAddViews) init];
    v73 = [objc_allocWithZone(SAUIUserUtteranceView) init];
    v74 = sub_2CE260();
    [v73 setCorrespondingSessionID:v74];

    sub_20410(&unk_351900, &unk_2D0960);
    v75 = swift_allocObject();
    v125 = a2;
    v127 = xmmword_2D0770;
    *(v75 + 16) = xmmword_2D0770;
    v129 = v73;
    *(v75 + 32) = v73;
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    isa = sub_2CE400().super.isa;

    [v72 setViews:isa];

    v77 = swift_allocObject();
    *(v77 + 16) = v127;
    *(v77 + 32) = v72;
    v78 = sub_2CA000();
    (*(*(v78 - 8) + 56))(v14, 1, 1, v78);
    v136 = 0;
    v134 = 0u;
    v135 = 0u;
    *&v127 = v72;
    v79 = v128;
    sub_2C9E20();

    sub_30B8(&v134, &qword_34CC80, &qword_2D1520);
    sub_30B8(v14, &unk_353020, &unk_2D0970);
    v80 = *(v130 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 32);
    sub_35E0((v130 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v130 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
    v81 = v123;
    *(&v135 + 1) = v123;
    v136 = &protocol witness table for AceOutput;
    v82 = sub_F390(&v134);
    v83 = v122;
    (*(v122 + 16))(v82, v79, v81);
    swift_allocObject();
    swift_weakInit();

    sub_2CA010();

    sub_306C(&v134);
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v84 = v132;
    v85 = sub_3ED0(v132, qword_35F6A8);
    v86 = v131;
    v87 = v126;
    (*(v131 + 16))(v126, v85, v84);
    v88 = v125;

    v89 = sub_2CDFE0();
    v90 = sub_2CE690();
    sub_16A0BC(a1, v88, 0);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v134 = v92;
      *v91 = 136315138;
      *(v91 + 4) = sub_3F08(a1, v88, &v134);
      _os_log_impl(&dword_0, v89, v90, "AcousticIDFlow#triggerSmartStackMatch Got sessionID: %s", v91, 0xCu);
      sub_306C(v92);

      (*(v86 + 8))(v126, v84);
    }

    else
    {

      (*(v86 + 8))(v87, v84);
    }

    return (*(v83 + 8))(v128, v81);
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v100 = v132;
    v101 = sub_3ED0(v132, qword_35F6A8);
    v102 = v131;
    v128 = *(v131 + 16);
    (v128)(v37, v101, v100);
    v103 = sub_2CDFE0();
    v104 = sub_2CE690();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "AcousticIDFlow#triggerSmartStackMatch Nil sessionID was sent, retriggering logic and setting state to .sessionIDWasCheckedAndIsNilForSmartStack", v105, 2u);
    }

    v106 = *(v102 + 8);
    v107 = v132;
    v131 = v102 + 8;
    v106(v37, v132);
    v108 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    v109 = v130;
    swift_beginAccess();
    sub_16A2C0(v109 + v108, v26);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      (v128)(v32, v101, v107);
      v110 = sub_2CDFE0();
      v111 = sub_2CE680();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_0, v110, v111, "AcousticIDFlow#triggerSmartStackMatch grabSessionID sessionID is nil, but performMatch has already completed. Doing nothing.", v112, 2u);
      }

      return (v106)(v32, v107);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1694A4(v23, v109 + v108);
      swift_endAccess();
      v114 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v115 = *(v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v109 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v114);
      (*(v115 + 32))(v114, v115);
      v116 = v117;
      sub_2C9E70();
      v124(v116);
      (*(v118 + 8))(v116, v119);
      return sub_16A324(v26, type metadata accessor for AcousticIDFlow.State);
    }
  }

  return result;
}

uint64_t sub_151A80()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v8 = sub_3ED0(v0, qword_35F6A8);
    (*(v1 + 16))(v5, v8, v0);
    v9 = sub_2CDFE0();
    v10 = sub_2CE690();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "AcousticIDFlow#triggerSmartStackMatch Empty view successfully published", v11, 2u);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v12 = sub_3ED0(v0, qword_35F6A8);
    (*(v1 + 16))(v7, v12, v0);
    v13 = sub_2CDFE0();
    v14 = sub_2CE680();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "AcousticIDFlow#triggerSmartStackMatch self deallocated prematurely during publishing", v15, 2u);
    }

    v5 = v7;
  }

  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_151D38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v61 = a5;
  v62 = a4;
  v64 = a3;
  v63 = sub_2C9EC0();
  v60 = *(v63 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v63);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AcousticIDFlow.State(0);
  v8 = *(*(v65 - 8) + 64);
  v9 = __chkstk_darwin(v65);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v13 = sub_20410(&qword_34FF10, qword_2D3620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v57 - v15);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v57 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v66 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v57 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v57 - v26;
  __chkstk_darwin(v25);
  v29 = &v57 - v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    sub_F3F4(a1, v16, &qword_34FF10, qword_2D3620);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_30B8(v16, &qword_34FF10, qword_2D3620);
      v32 = v18;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v33 = sub_3ED0(v17, qword_35F6A8);
      v34 = *(v18 + 16);
      v34(v24, v33, v17);
      v35 = sub_2CDFE0();
      v36 = sub_2CE690();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "AcousticIDFlow#triggerSmartStackMatch experienced an error during match", v37, 2u);
      }

      v27 = v24;
    }

    else
    {
      v43 = *v16;
      v32 = v18;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v44 = sub_3ED0(v17, qword_35F6A8);
      v45 = *(v18 + 16);
      v45(v27, v44, v17);
      v46 = sub_2CDFE0();
      v47 = sub_2CE690();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "AcousticIDFlow#triggerSmartStackMatch successfully completed match execution (may have found match)", v48, 2u);
        v32 = v18;
      }

      v34 = v45;
    }

    v49 = *(v32 + 8);
    v49(v27, v17);
    if (v64)
    {
      sub_2CB670();
    }

    v50 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    sub_16A2C0(v31 + v50, v12);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v51 = v58;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1694A4(v51, v31 + v50);
      swift_endAccess();
      v52 = v59;
      sub_2C9E70();
      v62(v52);

      return (*(v60 + 8))(v52, v63);
    }

    else
    {
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v53 = sub_3ED0(v17, qword_35F6A8);
      v34(v66, v53, v17);
      v54 = sub_2CDFE0();
      v55 = sub_2CE680();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_0, v54, v55, "AcousticIDFlow#triggerSmartStackMatch performMatch completed, but triggerSmartStackMatch has already returned comletion in grabSessionID. Doing nothing.", v56, 2u);
      }

      else
      {
      }

      v49(v66, v17);
      return sub_16A324(v12, type metadata accessor for AcousticIDFlow.State);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v38 = sub_3ED0(v17, qword_35F6A8);
    (*(v18 + 16))(v29, v38, v17);
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "AcousticIDFlow#triggerSmartStackMatch self deallocated prematurely during performMatch call", v41, 2u);
    }

    return (*(v18 + 8))(v29, v17);
  }
}

uint64_t sub_1524C4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v38 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v9 = &v36[-v8];
  __chkstk_darwin(v7);
  v11 = &v36[-v10];
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v2, qword_35F6A8);
  v41 = v3[2];
  v42 = v12;
  v41(v11);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "AcousticIDFlow#executeAtBeginning Reached Logic", v15, 2u);
  }

  v16 = v3[1];
  v16(v11, v2);
  v17 = sub_2CB460();
  if (v17)
  {
    sub_2CB130();
    v18 = sub_2CD3B0();
  }

  else
  {
    v18 = 0;
  }

  v37 = v18;
  v19 = v42;
  *(v43 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = v18 & 1;
  (v41)(v9, v19, v2);

  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    if (v17)
    {
      sub_2CB130();

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    *(v22 + 4) = v23;

    _os_log_impl(&dword_0, v20, v21, "AcousticIDFlow#executeAtBeginning is currentRequest present: %{BOOL}d", v22, 8u);
  }

  else
  {
  }

  v16(v9, v2);
  v24 = v38;
  (v41)(v38, v42, v2);
  v25 = sub_2CDFE0();
  v26 = sub_2CE690();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v37 & 1;
    _os_log_impl(&dword_0, v25, v26, "AcousticIDFlow#executeAtBeginning isInAmbient: %{BOOL}d", v27, 8u);
  }

  v16(v24, v2);
  v28 = v43;
  v29 = *(v43 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v30 = *(v43 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((v43 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v29);
  v31 = swift_allocObject();
  v32 = v39;
  v33 = v40;
  v31[2] = v28;
  v31[3] = v32;
  v31[4] = v33;
  v34 = *(v30 + 40);

  v34(sub_16A248, v31, v29, v30);
}

uint64_t sub_15292C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, qword_35F6A8);
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v14, v15, "AcousticIDFlow#executeAtBeginning enableLiveActivity: %{BOOL}d", v16, 8u);
  }

  (*(v9 + 8))(v12, v8);
  *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = a1 & 1;
  v17 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 32);
  sub_35E0((a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
  if (sub_2CC4B0())
  {
    return sub_15634C(a3, a4);
  }

  else
  {
    return sub_154558(a3, a4);
  }
}

uint64_t sub_152B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, qword_35F6A8);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2CDFE0();
  v11 = sub_2CE690();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "AcousticIDFlow#executeStartMatch Reached Logic", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  return sub_153774(a1, a2);
}

uint64_t sub_152D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = sub_20410(&qword_352D78, &unk_2D5320);
  v8 = *(*(v35 - 8) + 64);
  v9 = __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, qword_35F6A8);
  (*(v15 + 16))(v18, v19, v14);
  sub_F3F4(a1, v13, &qword_352D78, &unk_2D5320);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  v36 = v14;
  v22 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v34 = v4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v33 = a3;
    v26 = v25;
    v37 = v25;
    *v24 = 136315138;
    v32 = a1;
    sub_F3F4(v13, v11, &qword_352D78, &unk_2D5320);
    v27 = sub_2CE2A0();
    v35 = a2;
    v29 = v28;
    sub_30B8(v13, &qword_352D78, &unk_2D5320);
    v30 = sub_3F08(v27, v29, &v37);
    a2 = v35;

    *(v24 + 4) = v30;
    a1 = v32;
    _os_log_impl(&dword_0, v20, v22, "AcousticIDFlow#executeIdentifyError With code: %s", v24, 0xCu);
    sub_306C(v26);
    a3 = v33;
  }

  else
  {

    sub_30B8(v13, &qword_352D78, &unk_2D5320);
  }

  (*(v15 + 8))(v18, v36);
  return sub_1612C4(a1, 0, 0, a2, a3);
}

uint64_t sub_153040(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v38 = &v36 - v11;
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v4, qword_35F6A8);
  v15 = v5[2];
  v15(v13, v14, v4);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v5;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AcousticIDFlow#executeIdentifyComplete Reached Logic", v18, 2u);
    v5 = v37;
  }

  v19 = v5[1];
  v19(v13, v4);
  if (a1)
  {
    v20 = v38;
    v15(v38, v14, v4);

    v21 = sub_2CDFE0();
    v22 = sub_2CE690();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "AcousticIDFlow#executeIdentifyComplete Found matched song from ShazamKit", v23, 2u);
    }

    v19(v20, v4);
    v24 = *(v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 32);
    sub_35E0((v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
    if (sub_2CC4B0())
    {
      sub_15F2A8(a1, v40, v41);
    }

    else
    {
      sub_15D388(a1, v40, v41);
    }
  }

  else
  {
    v15(v9, v14, v4);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "AcousticIDFlow#executeIdentifyComplete No matched song from ShazamKit", v27, 2u);
    }

    v19(v9, v4);
    v28 = v39;
    v29 = *(v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 32);
    sub_35E0((v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(v39 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
    if (sub_2CC4B0())
    {
      return sub_15BCC4(v40, v41);
    }

    v31 = *(v28 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v34 = v40;
    v35 = v41;
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v35;

    sub_F4074(sub_16A12C, v33);
  }
}

uint64_t sub_1534C8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v23[1] = a2;
  v5 = sub_2C9EC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, qword_35F6A8);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23[0] = v6;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AcousticIDFlow#executeCompleted Reached Logic", v18, 2u);
    v6 = v23[0];
  }

  (*(v11 + 8))(v14, v10);
  v19 = (v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
  v20 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v21 = v19[4];
  sub_35E0(v19, v20);
  (*(v21 + 24))(v20, v21);
  sub_2C9EB0();
  a1(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_153774(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v26 = a1;
  v25 = sub_2CDFD0();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v25);
  v5 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, qword_35F6A8);
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "AcousticIDFlow#triggerMatch Reached Logic", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  v18 = v25;
  (*(v2 + 16))(v5, v7, v25);
  v19 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "shazamKitPerformMatch";
  *(v20 + 24) = 21;
  *(v20 + 32) = 2;
  (*(v2 + 32))(v20 + v19, v5, v18);
  v21 = (v20 + ((v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v27;
  *v21 = v26;
  v21[1] = v22;

  sub_2CE9E0();
  sub_2CDF90();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_13BD4;
  *(v23 + 24) = v20;

  sub_153B70(sub_13BD8, v23, v28);

  return (*(v2 + 8))(v7, v18);
}

uint64_t sub_153B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
  sub_35E0((a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24));
  v7 = sub_2CB500();
  v8 = *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
  v9 = *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
  sub_35E0((a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v8);
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v7;
  v11[4] = a1;
  v11[5] = a2;
  v12 = *(v9 + 8);

  v12(sub_153CE0, 0, sub_16A120, v11, v8, v9);

  swift_weakDestroy();
}

uint64_t sub_153CE0()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v5 = sub_3ED0(v0, qword_35F6A8);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2CDFE0();
  v7 = sub_2CE690();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "AcousticIDFlow#triggerMatch match was started", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_153E6C(void (*a1)(char *, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v55 = a5;
  v56 = a4;
  v53 = a3;
  v48 = a1;
  v57 = sub_2C9EC0();
  v54 = *(v57 - 8);
  v5 = *(v54 + 64);
  __chkstk_darwin(v57);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CC950();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AcousticIDFlow.State(0);
  v10 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34FF10, qword_2D3620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v48 - v15);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v48 - v24;
  __chkstk_darwin(v23);
  v27 = &v48 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    sub_F3F4(v48, v16, &qword_34FF10, qword_2D3620);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v48 = *(v50 + 32);
      v48(v49, v16, v7);
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v30 = sub_3ED0(v17, qword_35F6A8);
      (*(v18 + 16))(v22, v30, v17);
      v31 = sub_2CDFE0();
      v32 = sub_2CE690();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "AcousticIDFlow#triggerMatch switching to .identifyError", v33, 2u);
      }

      (*(v18 + 8))(v22, v17);
      v34 = *(v29 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v35 = *(v29 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v29 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v34);
      (*(v35 + 24))(v34, v35);
      v48(v12, v49, v7);
      (*(v50 + 56))(v12, 0, 1, v7);
    }

    else
    {
      v41 = *v16;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v42 = sub_3ED0(v17, qword_35F6A8);
      (*(v18 + 16))(v25, v42, v17);
      v43 = sub_2CDFE0();
      v44 = sub_2CE690();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_0, v43, v44, "AcousticIDFlow#triggerMatch switching to .identifyComplete", v45, 2u);
      }

      (*(v18 + 8))(v25, v17);
      *v12 = v41;
    }

    swift_storeEnumTagMultiPayload();
    v46 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    sub_1694A4(v12, v29 + v46);
    swift_endAccess();
    if (v53)
    {
      sub_2CB670();
    }

    v47 = v52;
    sub_2C9E70();
    v56(v47);

    return (*(v54 + 8))(v47, v57);
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v36 = sub_3ED0(v17, qword_35F6A8);
    (*(v18 + 16))(v27, v36, v17);
    v37 = sub_2CDFE0();
    v38 = sub_2CE680();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "AcousticIDFlow#triggerMatch self deallocated prematurely during performMatch call", v39, 2u);
    }

    return (*(v18 + 8))(v27, v17);
  }
}

uint64_t sub_154558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_112C0(_swiftEmptyArrayStorage);
  v15 = &type metadata for Bool;
  LOBYTE(v14) = 0;
  sub_E2DC(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_237690(v13, 0x636E7973417369, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v8 = v6;
  v9 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;

  sub_F3368(v8, sub_16A060, v11);
}

uint64_t sub_154690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v159 = a1;
  v6 = sub_20410(&qword_352D78, &unk_2D5320);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v156 = &v137 - v8;
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v155 = &v137 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v154 = &v137 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v153 = &v137 - v17;
  v160 = sub_2CB970();
  v152 = *(v160 - 8);
  v18 = *(v152 + 64);
  __chkstk_darwin(v160);
  v150 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2CCB20();
  v147 = *(v148 - 8);
  v20 = v147[8];
  __chkstk_darwin(v148);
  v145 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2CCB30();
  v144 = *(v146 - 8);
  v22 = *(v144 + 64);
  __chkstk_darwin(v146);
  v142 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2CCAC0();
  v141 = *(v143 - 8);
  v24 = *(v141 + 64);
  __chkstk_darwin(v143);
  v26 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v27 = *(*(v162 - 1) + 64);
  v28 = __chkstk_darwin(v162);
  v157 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v151 = &v137 - v31;
  v32 = __chkstk_darwin(v30);
  v149 = &v137 - v33;
  __chkstk_darwin(v32);
  v161 = &v137 - v34;
  v35 = sub_20410(&unk_3519A0, &qword_2D0980);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v137 - v37);
  v39 = sub_2CE000();
  v40 = *(v39 - 8);
  v41 = v40[8];
  v42 = __chkstk_darwin(v39);
  v158 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v46 = &v137 - v45;
  __chkstk_darwin(v44);
  v48 = &v137 - v47;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v139 = a3;
    v140 = a4;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v49 = sub_3ED0(v39, qword_35F6A8);
    v138 = v40[2];
    v138(v46, v49, v39);
    v50 = sub_2CDFE0();
    v51 = sub_2CE690();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v137 = v39;
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "AcousticIDFlow#listeningDialogAndViewNonRF", v52, 2u);
      v39 = v137;
    }

    v53 = v40[1];
    v53(v46, v39);
    sub_F3F4(v159, v38, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v166[2] = *v38;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v54 = v166[1];
        v55 = v158;
        v138(v158, v49, v39);
        v56 = v54;
        v57 = sub_2CDFE0();
        v58 = sub_2CE680();

        v59 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v57, v58))
        {
          v60 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v166[0] = v162;
          *v60 = 136315138;
          v61 = [v56 localizedDescription];
          v62 = sub_2CE270();
          v64 = v63;

          v164 = v62;
          v165 = v64;
          v65 = sub_2CE3C0();
          v67 = sub_3F08(v65, v66, v166);
          v59 = &selRef_hasTwoOrMoreRooms;

          *(v60 + 4) = v67;
          _os_log_impl(&dword_0, v57, v58, "AcousticIDFlow#listeningDialogAndViewNonRF Error creating dialog %s, issuing error dialog", v60, 0xCu);
          sub_306C(v162);

          v68 = v158;
        }

        else
        {

          v68 = v55;
        }

        v53(v68, v39);
        v118 = sub_2CC950();
        v119 = v156;
        (*(*(v118 - 8) + 56))(v156, 1, 1, v118);
        v120 = [v56 v59[130]];
        v121 = sub_2CE270();
        v123 = v122;

        sub_1612C4(v119, v121, v123, v139, v140);

        sub_30B8(v119, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_14A58(v38, v161, &qword_34C6E8, &unk_2D0FF0);
      v74 = v141;
      v75 = v143;
      (*(v141 + 104))(v26, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v143);
      v76 = v144;
      v77 = v142;
      v78 = v146;
      (*(v144 + 104))(v142, enum case for AdditionalMetricsDescription.SourceFunction.lstnDlgView(_:), v146);
      v79 = v147;
      v80 = v145;
      v81 = v148;
      (v147[13])(v145, enum case for AdditionalMetricsDescription.StatusReason.listening(_:), v148);
      v82 = sub_2CCAD0();
      v158 = v83;
      v159 = v82;
      (v79[1])(v80, v81);
      (*(v76 + 8))(v77, v78);
      (*(v74 + 8))(v26, v75);
      v148 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v156 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v147 = sub_35E0((Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v148);
      v84 = v152;
      v85 = v150;
      (*(v152 + 104))(v150, enum case for TypeOfIntent.acousticID(_:), v160);
      v86 = enum case for ActivityType.showInterstitial(_:);
      v87 = sub_2C9C20();
      v88 = *(v87 - 8);
      v89 = v153;
      (*(v88 + 104))(v153, v86, v87);
      (*(v88 + 56))(v89, 0, 1, v87);
      v90 = sub_2CA130();
      v91 = *(v90 - 8);
      v92 = v154;
      (*(v91 + 56))(v154, 1, 1, v90);
      v93 = enum case for SiriKitReliabilityCodes.inProgress(_:);
      v94 = sub_2C98F0();
      v95 = *(v94 - 8);
      v96 = v155;
      (*(v95 + 104))(v155, v93, v94);
      v97 = v94;
      v98 = v161;
      (*(v95 + 56))(v96, 0, 1, v97);
      sub_2CB4C0();

      v99 = v96;
      v100 = v90;
      sub_30B8(v99, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v92, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v89, &qword_34CB88, &unk_2D0D90);
      (*(v84 + 8))(v85, v160);
      v101 = v149;
      sub_F3F4(v98, v149, &qword_34C6E8, &unk_2D0FF0);

      v102 = sub_2CA100();
      v103 = *(v91 + 8);
      v103(v101, v100);
      v104 = (v102 + 40);
      v105 = *(v102 + 16) + 1;
      while (--v105)
      {
        v107 = *(v104 - 1);
        v106 = *v104;
        v104 += 2;
        v108 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v108 = v107 & 0xFFFFFFFFFFFFLL;
        }

        if (v108)
        {

          goto LABEL_22;
        }
      }

      v106 = 0;
LABEL_22:

      v109 = v151;
      sub_F3F4(v98, v151, &qword_34C6E8, &unk_2D0FF0);

      v110 = sub_2CA110();
      v103(v109, v100);
      v111 = (v110 + 40);
      v112 = *(v110 + 16) + 1;
      while (--v112)
      {
        v114 = *(v111 - 1);
        v113 = *v111;
        v111 += 2;
        v115 = HIBYTE(v113) & 0xF;
        if ((v113 & 0x2000000000000000) == 0)
        {
          v115 = v114 & 0xFFFFFFFFFFFFLL;
        }

        if (v115)
        {

          goto LABEL_29;
        }
      }

      v113 = 0;
LABEL_29:

      v116 = [objc_allocWithZone(SADialogText) init];
      if (v106)
      {
        v117 = sub_2CE260();
      }

      else
      {
        v117 = 0;
      }

      [v116 setText:v117];

      if (v113)
      {
        v124 = sub_2CE260();
      }

      else
      {
        v124 = 0;
      }

      [v116 setSpeakableTextOverride:v124];

      v125 = [objc_allocWithZone(SADialog) init];
      [v125 setCanUseServerTTS:1];
      [v125 setPrintedOnly:0];
      [v125 setSpokenOnly:1];
      v126 = v116;
      [v125 setCaption:v126];
      [v125 setContent:v126];

      v127 = v157;
      sub_F3F4(v98, v157, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA0D0();
      v128 = sub_2CE260();

      v103(v127, v100);
      [v125 setDialogIdentifier:v128];

      v129 = swift_allocObject();
      *(v129 + 16) = _swiftEmptyArrayStorage;
      v130 = swift_allocObject();
      v131 = Strong;
      v130[2] = Strong;
      v130[3] = v125;
      v132 = v139;
      v130[4] = v129;
      v130[5] = v132;
      v133 = v140;
      v130[6] = v140;
      if (*(v131 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
      {
        v134 = swift_allocObject();
        *(v134 + 16) = sub_16A06C;
        *(v134 + 24) = v130;
        swift_allocObject();
        swift_weakInit();
        swift_retain_n();

        v135 = v125;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        sub_2CE4F0();
      }

      else
      {
        swift_retain_n();

        v136 = v125;

        sub_15595C(0, 0, 0, v131, v136, v129, v132, v133);
      }

      sub_30B8(v98, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v69 = sub_3ED0(v39, qword_35F6A8);
    (v40[2])(v48, v69, v39);
    v70 = sub_2CDFE0();
    v71 = sub_2CE680();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "AcousticIDFlow#listeningDialogAndViewNonRF self deallocated prematurely", v72, 2u);
    }

    return (v40[1])(v48, v39);
  }

  return result;
}

uint64_t sub_15595C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a7;
  v94 = a4;
  v14 = sub_20410(&qword_352D78, &unk_2D5320);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v87 = &v85 - v16;
  v17 = sub_20410(&unk_353020, &unk_2D0970);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v88 = &v85 - v19;
  v20 = sub_2CA910();
  v21 = *(v20 - 8);
  v90 = v20;
  v91 = v21;
  v22 = v21[8];
  __chkstk_darwin(v20);
  v89 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v92 = *(v24 - 8);
  v25 = *(v92 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v85 - v29;
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v98 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v31 = v99[1];
      v32 = v92;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v33 = sub_3ED0(v24, qword_35F6A8);
      (*(v32 + 16))(v28, v33, v24);
      v34 = v31;
      v35 = sub_2CDFE0();
      v36 = sub_2CE680();

      v37 = &selRef_hasTwoOrMoreRooms;
      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v39 = v32;
        v40 = swift_slowAlloc();
        v99[0] = v40;
        *v38 = 136315138;
        v41 = [v34 localizedDescription];
        v90 = v24;
        v91 = v34;
        v42 = v41;
        v43 = sub_2CE270();
        v44 = a8;
        v46 = v45;

        *&v95 = v43;
        *(&v95 + 1) = v46;
        a8 = v44;
        v47 = sub_2CE3C0();
        v49 = sub_3F08(v47, v48, v99);
        v34 = v91;

        *(v38 + 4) = v49;
        v37 = &selRef_hasTwoOrMoreRooms;
        _os_log_impl(&dword_0, v35, v36, "AcousticIDFlow#listeningDialogAndViewNonRF Error grabbing session ID %s, issuing error dialog", v38, 0xCu);
        sub_306C(v40);

        (*(v39 + 8))(v28, v90);
      }

      else
      {

        (*(v32 + 8))(v28, v24);
      }

      v52 = sub_2CC950();
      v53 = v87;
      (*(*(v52 - 8) + 56))(v87, 1, 1, v52);
      v54 = [v34 v37[130]];
      v55 = sub_2CE270();
      v57 = v56;

      sub_1612C4(v53, v55, v57, v93, a8);

      sub_30B8(v53, &qword_352D78, &unk_2D5320);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v50 = sub_16848C();
    if (v50)
    {
      v87 = v50;
      [v87 setDialog:a5];
      if (a2)
      {
        v51 = sub_2CE260();
      }

      else
      {
        v51 = 0;
      }

      v59 = v24;
      v60 = v92;
      [v87 setCorrespondingSessionID:v51];

      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v61 = sub_3ED0(v24, qword_35F6A8);
      (*(v60 + 16))(v30, v61, v24);

      v62 = sub_2CDFE0();
      v63 = sub_2CE670();
      sub_16A0BC(a1, a2, 0);
      if (os_log_type_enabled(v62, v63))
      {
        v86 = a8;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        if (a2)
        {
          sub_10C40();
          swift_allocError();
          *v66 = a1;
          v66[1] = a2;

          v59 = v24;
          v67 = _swift_stdlib_bridgeErrorToNSError();
          v68 = v67;
        }

        else
        {
          v67 = 0;
          v68 = 0;
        }

        *(v64 + 4) = v67;
        *v65 = v68;
        _os_log_impl(&dword_0, v62, v63, "AcousticIDFlow#listeningDialogAndViewNonRF sessionID: %@", v64, 0xCu);
        sub_30B8(v65, &unk_34FC00, &unk_2D0150);

        a8 = v86;
        v60 = v92;
      }

      (*(v60 + 8))(v30, v59);
      v69 = sub_2CE260();
      v70 = v87;
      [v87 setViewId:v69];

      swift_beginAccess();
      sub_2CE3F0();
      if (*(&dword_10 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v84 = *(&dword_10 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8));
        sub_2CE430();
      }

      sub_2CE460();
      swift_endAccess();
    }

    v71 = [objc_allocWithZone(SAUIAddViews) init];
    swift_beginAccess();
    v72 = *(a6 + 16);
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    isa = sub_2CE400().super.isa;

    [v71 setViews:isa];

    v74 = sub_2CA000();
    v75 = v88;
    (*(*(v74 - 8) + 56))(v88, 1, 1, v74);
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    v76 = v89;
    sub_2C9E30();
    sub_30B8(&v95, &qword_34CC80, &qword_2D1520);
    sub_30B8(v75, &unk_353020, &unk_2D0970);
    v77 = *(v94 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 32);
    sub_35E0((v94 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v94 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
    v78 = v90;
    *(&v96 + 1) = v90;
    v97 = &protocol witness table for AceOutput;
    v79 = sub_F390(&v95);
    v80 = v91;
    (*(v91 + 2))(v79, v76, v78);
    v81 = swift_allocObject();
    swift_weakInit();
    v82 = swift_allocObject();
    v83 = v93;
    v82[2] = v81;
    v82[3] = v83;
    v82[4] = a8;

    sub_2CA010();

    v80[1](v76, v78);

    return sub_306C(&v95);
  }

  return result;
}

uint64_t sub_15634C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, qword_35F6A8);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v3;
    v17 = a1;
    v18 = v16;
    v34[0] = v16;
    *v15 = 136446210;
    v19 = sub_2CCCA0();
    v21 = sub_3F08(v19, v20, v34);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v12, v13, "AcousticIDFlow#listeningDialogAndViewWithRF Reached Logic %{public}s", v15, 0xCu);
    sub_306C(v18);
    a1 = v17;
    v3 = v30;

    a2 = v31;
  }

  (*(v7 + 8))(v10, v6);
  v22 = sub_112C0(_swiftEmptyArrayStorage);
  v35 = &type metadata for Bool;
  LOBYTE(v34[0]) = 0;
  sub_E2DC(v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v22;
  sub_237690(v33, 0x636E7973417369, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v24 = v32;
  v25 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a1;
  v27[4] = a2;

  sub_F3368(v24, sub_169FE0, v27);
}

uint64_t sub_15665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20410(&qword_352D78, &unk_2D5320);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v56[-v9];
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v56[-v17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    sub_F3F4(a1, v64, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    if (v65)
    {
      v61 = a3;
      v63[2] = *&v64[0];
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v21 = v63[1];
        if (qword_34BF60 != -1)
        {
          swift_once();
        }

        v22 = sub_3ED0(v11, qword_35F6A8);
        (*(v12 + 16))(v18, v22, v11);
        v23 = v21;
        v24 = sub_2CDFE0();
        v25 = sub_2CE680();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v60 = a4;
          v27 = v26;
          v58 = swift_slowAlloc();
          v63[0] = v58;
          *v27 = 136315394;
          v28 = [v23 localizedDescription];
          v29 = sub_2CE270();
          v59 = v23;
          v30 = v29;
          v57 = v25;
          v32 = v31;

          v62[0] = v30;
          v62[1] = v32;
          v33 = sub_2CE3C0();
          v35 = sub_3F08(v33, v34, v63);

          *(v27 + 4) = v35;
          *(v27 + 12) = 2082;
          v36 = sub_2CCCA0();
          v38 = sub_3F08(v36, v37, v63);

          *(v27 + 14) = v38;
          v23 = v59;
          _os_log_impl(&dword_0, v24, v57, "AcousticIDFlow#publishShazam Error creating output %s %{public}s", v27, 0x16u);
          swift_arrayDestroy();

          a4 = v60;
        }

        (*(v12 + 8))(v18, v11);
        v39 = sub_2CC950();
        (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
        v40 = [v23 localizedDescription];
        v41 = sub_2CE270();
        v43 = v42;

        sub_1612C4(v10, v41, v43, v61, a4);

        sub_30B8(v10, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_F338(v64, v62);
      v53 = *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 32);
      sub_35E0((v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
      v54 = swift_allocObject();
      swift_weakInit();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = a3;
      v55[4] = a4;

      sub_2CA010();

      sub_306C(v62);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v45 = sub_3ED0(v11, qword_35F6A8);
    (*(v12 + 16))(v16, v45, v11);
    v46 = sub_2CDFE0();
    v47 = sub_2CE680();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v64[0] = v49;
      *v48 = 136446210;
      v50 = sub_2CCCA0();
      v52 = sub_3F08(v50, v51, v64);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_0, v46, v47, "AcousticIDFlow#publishShazam self deallocated prematurely %{public}s", v48, 0xCu);
      sub_306C(v49);
    }

    return (*(v12 + 8))(v16, v11);
  }

  return result;
}

uint64_t sub_156D10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v7 = sub_2C9EC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v45 = v8;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v12, qword_35F6A8);
    (*(v13 + 16))(v19, v20, v12);
    v21 = sub_2CDFE0();
    v22 = sub_2CE690();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v42 = v12;
      v24 = v23;
      v25 = swift_slowAlloc();
      v44 = a4;
      v26 = v25;
      v46 = v25;
      *v24 = 136446210;
      v27 = sub_2CCCA0();
      v41 = v13;
      v43 = a5;
      v29 = v7;
      v30 = sub_3F08(v27, v28, &v46);

      *(v24 + 4) = v30;
      v7 = v29;
      _os_log_impl(&dword_0, v21, v22, "AcousticIDFlow#publish dialog successfully generated %{public}s", v24, 0xCu);
      sub_306C(v26);
      a4 = v44;

      (*(v41 + 8))(v19, v42);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }

    sub_2C9E70();
    a4(v11);

    return (*(v45 + 8))(v11, v7);
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v12, qword_35F6A8);
    (*(v13 + 16))(v17, v31, v12);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136446210;
      v36 = sub_2CCCA0();
      v38 = sub_3F08(v36, v37, &v46);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v32, v33, "AcousticIDFlow#publish self deallocated prematurely during publishing %{public}s", v34, 0xCu);
      sub_306C(v35);
    }

    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t sub_157198(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a3;
  v123 = a5;
  v114 = a4;
  v100 = sub_2CB260();
  v99 = *(v100 - 8);
  v9 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CD330();
  v117 = *(v11 - 8);
  v118 = v11;
  v12 = *(v117 + 64);
  __chkstk_darwin(v11);
  v115 = v13;
  v116 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&unk_353020, &unk_2D0970);
  v112 = *(v14 - 8);
  v15 = *(v112 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v109 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v125 = &v98 - v19;
  v122 = v20;
  __chkstk_darwin(v18);
  v113 = &v98 - v21;
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v105 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v98 - v27;
  v29 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v30 = v29 - 8;
  v110 = *(v29 - 8);
  v31 = *(v110 + 64);
  v32 = __chkstk_darwin(v29);
  v108 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v98 - v35;
  v37 = __chkstk_darwin(v34);
  v111 = &v98 - v38;
  v121 = v39;
  __chkstk_darwin(v37);
  v41 = &v98 - v40;
  v42 = sub_2CA130();
  (*(*(v42 - 8) + 16))(v41, a1, v42);
  v43 = *(v30 + 56);
  v124 = v41;
  *&v41[v43] = a2;
  v44 = qword_34BF58;
  v45 = a2;
  if (v44 != -1)
  {
    swift_once();
  }

  v126 = a6;
  v46 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v47 = v23[2];
  v103 = v46;
  v102 = v23 + 2;
  v101 = v47;
  v47(v28, v46, v22);
  v48 = sub_2CDFE0();
  v49 = sub_2CE690();
  v50 = os_log_type_enabled(v48, v49);
  v107 = v22;
  v106 = v23;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v127 = v52;
    *v51 = 136446210;
    v53 = sub_2CCCA0();
    v55 = sub_3F08(v53, v54, &v127);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_0, v48, v49, "SiriAudioOutputProvider#buildShazamOutput...  %{public}s", v51, 0xCu);
    sub_306C(v52);
  }

  v104 = v23[1];
  v104(v28, v22);
  v56 = v113;
  sub_F3F4(v114, v113, &unk_353020, &unk_2D0970);
  v57 = v111;
  sub_F3F4(v124, v111, &qword_34C6E8, &unk_2D0FF0);
  v59 = v116;
  v58 = v117;
  v60 = v118;
  (*(v117 + 16))(v116, v120, v118);
  sub_F3F4(v56, v125, &unk_353020, &unk_2D0970);
  v120 = v36;
  sub_F3F4(v57, v36, &qword_34C6E8, &unk_2D0FF0);
  v61 = *(v112 + 80);
  v62 = (v61 + 32) & ~v61;
  v63 = *(v110 + 80);
  v64 = (v122 + v63 + v62) & ~v63;
  v114 = v63;
  v112 = v61;
  v65 = (v121 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (*(v58 + 80) + v65 + 8) & ~*(v58 + 80);
  v115 = v61 | v63 | 7;
  v67 = swift_allocObject();
  v68 = v126;
  *(v67 + 16) = v123;
  *(v67 + 24) = v68;
  sub_14A58(v56, v67 + v62, &unk_353020, &unk_2D0970);
  sub_14A58(v57, v67 + v64, &qword_34C6E8, &unk_2D0FF0);
  v69 = v119;
  *(v67 + v65) = v119;
  (*(v58 + 32))(v67 + v66, v59, v60);
  if (*(v69 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = sub_169804;
    *(v70 + 24) = v67;
    swift_allocObject();
    swift_weakInit();

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    sub_2CE4F0();

    v71 = v125;
    v72 = v120;
  }

  else
  {

    v73 = sub_2CB460();
    if (!v73)
    {
      sub_2CB180();
      v73 = sub_2CB170();
    }

    v74 = v73;
    v75 = v107;
    v76 = v105;
    v77 = ~v112;
    v119 = ~v114;
    v101(v105, v103, v107);

    v78 = sub_2CDFE0();
    v79 = sub_2CE660();

    v80 = os_log_type_enabled(v78, v79);
    v118 = v74;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v117 = v77;
      v83 = v82;
      v127 = v82;
      *v81 = 136315138;
      sub_2CB130();
      v84 = v98;
      sub_2CD3C0();

      v85 = sub_2CB200();
      v87 = v86;
      (*(v99 + 8))(v84, v100);
      v88 = sub_3F08(v85, v87, &v127);

      *(v81 + 4) = v88;
      _os_log_impl(&dword_0, v78, v79, "AcousticIDFlow#buildShazamOutput with responseMode = %s", v81, 0xCu);
      sub_306C(v83);
      v77 = v117;
    }

    v104(v76, v75);
    v71 = v125;
    v89 = v109;
    sub_F3F4(v125, v109, &unk_353020, &unk_2D0970);
    v72 = v120;
    v90 = v108;
    sub_F3F4(v120, v108, &qword_34C6E8, &unk_2D0FF0);
    v91 = (v112 + 16) & v77;
    v92 = (v122 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = (v92 + 23) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v114 + v93 + 8) & v119;
    v95 = swift_allocObject();
    sub_14A58(v89, v95 + v91, &unk_353020, &unk_2D0970);
    v96 = (v95 + v92);
    *v96 = 0;
    v96[1] = 0;
    *(v95 + v93) = v118;
    sub_14A58(v90, v95 + v94, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  sub_30B8(v72, &qword_34C6E8, &unk_2D0FF0);
  sub_30B8(v71, &unk_353020, &unk_2D0970);
  return sub_30B8(v124, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_157D00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v131 = a6;
  v132 = a7;
  v139 = a4;
  v140 = a5;
  v12 = sub_2CD330();
  v130 = *(v12 - 8);
  v13 = *(v130 + 64);
  __chkstk_darwin(v12);
  v128 = v14;
  v129 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v136 = *(v124 - 1);
  v15 = *(v136 + 64);
  v16 = __chkstk_darwin(v124);
  v142 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v117 - v18;
  __chkstk_darwin(v17);
  v138 = &v117 - v20;
  v21 = sub_20410(&unk_353020, &unk_2D0970);
  v133 = *(v21 - 8);
  v22 = *(v133 + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v141 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v24;
  __chkstk_darwin(v23);
  v135 = &v117 - v25;
  v127 = sub_2CB260();
  v126 = *(v127 - 8);
  v26 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CE000();
  v143 = *(v28 - 8);
  v29 = *(v143 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v117 - v34;
  __chkstk_darwin(v33);
  v37 = &v117 - v36;
  sub_20410(&qword_352D88, &qword_2D5348);
  v137 = v15;
  if (a3)
  {
    v123 = v12;
    v131 = v19;
    v145 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v121 = v32;
      v38 = v144[4];
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v39 = v28;
      v40 = sub_3ED0(v28, qword_35F6A8);
      v41 = v143;
      v42 = *(v143 + 16);
      v42(v35, v40, v28);
      v43 = v38;
      v44 = sub_2CDFE0();
      v45 = sub_2CE680();

      v46 = os_log_type_enabled(v44, v45);
      v122 = v43;
      if (v46)
      {
        v47 = swift_slowAlloc();
        v120 = v42;
        v48 = v47;
        v49 = swift_slowAlloc();
        v144[0] = v49;
        *v48 = 136315138;
        v50 = [v43 localizedDescription];
        v51 = sub_2CE270();
        v53 = v52;

        v144[1] = v51;
        v144[2] = v53;
        v54 = sub_2CE3C0();
        v56 = sub_3F08(v54, v55, v144);

        *(v48 + 4) = v56;
        _os_log_impl(&dword_0, v44, v45, "AcousticIDFlow#buildShazamOutput Error creating dialog %s", v48, 0xCu);
        sub_306C(v49);

        v42 = v120;

        v57 = v143;
      }

      else
      {

        v57 = v41;
      }

      v81 = *(v57 + 8);
      v81(v35, v39);
      v82 = v39;
      v83 = v131;
      sub_F3F4(v132, v131, &qword_34C6E8, &unk_2D0FF0);
      v84 = v124;
      v85 = *(v83 + v124[12]);
      v86 = sub_2CA000();
      (*(*(v86 - 8) + 56))(v141, 1, 1, v86);
      v87 = sub_2CA130();
      v120 = *(v87 - 8);
      v88 = *(v120 + 2);
      v89 = v142;
      v132 = v87;
      v88(v142, v83);
      *(v89 + v84[12]) = v85;
      v124 = v85;
      v90 = sub_2CB460();
      v91 = v121;
      if (!v90)
      {
        sub_2CB180();
        v90 = sub_2CB170();
      }

      v92 = v90;
      v93 = a9;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v94 = sub_3ED0(v82, static Logger.default);
      swift_beginAccess();
      v42(v91, v94, v82);

      v95 = sub_2CDFE0();
      v96 = sub_2CE660();

      v97 = os_log_type_enabled(v95, v96);
      v119 = v92;
      if (v97)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v118 = v81;
        v100 = v99;
        v144[0] = v99;
        *v98 = 136315138;
        sub_2CB130();
        v101 = v91;
        v102 = v125;
        sub_2CD3C0();

        v103 = sub_2CB200();
        v105 = v104;
        (*(v126 + 8))(v102, v127);
        v106 = sub_3F08(v103, v105, v144);

        *(v98 + 4) = v106;
        _os_log_impl(&dword_0, v95, v96, "AcousticIDFlow#buildTraditionalRFShazamOutput with responseMode = %s", v98, 0xCu);
        sub_306C(v100);
        v93 = a9;

        v118(v101, v82);
      }

      else
      {

        v81(v91, v82);
      }

      v107 = v135;
      sub_F3F4(v141, v135, &unk_353020, &unk_2D0970);
      v108 = v138;
      sub_F3F4(v142, v138, &qword_34C6E8, &unk_2D0FF0);
      v110 = v129;
      v109 = v130;
      v111 = v123;
      (*(v130 + 16))(v129, v93, v123);
      v112 = (*(v133 + 80) + 16) & ~*(v133 + 80);
      v113 = (v134 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
      v114 = (*(v136 + 80) + v113 + 8) & ~*(v136 + 80);
      v115 = (v137 + *(v109 + 80) + v114) & ~*(v109 + 80);
      v116 = swift_allocObject();
      sub_14A58(v107, v116 + v112, &unk_353020, &unk_2D0970);
      *(v116 + v113) = v119;
      sub_14A58(v108, v116 + v114, &qword_34C6E8, &unk_2D0FF0);
      (*(v109 + 32))(v116 + v115, v110, v111);

      sub_20410(&unk_353030, &unk_2D1450);
      sub_2CE4F0();

      sub_30B8(v142, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v141, &unk_353020, &unk_2D0970);
      (*(v120 + 1))(v131, v132);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v142 = a1;

    v58 = sub_2CB460();
    if (!v58)
    {
      sub_2CB180();
      v58 = sub_2CB170();
    }

    v59 = v58;
    v60 = v143;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v141 = a2;
    v61 = sub_3ED0(v28, static Logger.default);
    swift_beginAccess();
    (*(v60 + 16))(v37, v61, v28);

    v62 = sub_2CDFE0();
    v63 = sub_2CE660();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v145 = v65;
      *v64 = 136315138;
      sub_2CB130();
      v66 = v125;
      sub_2CD3C0();

      v67 = sub_2CB200();
      v69 = v68;
      (*(v126 + 8))(v66, v127);
      v70 = sub_3F08(v67, v69, &v145);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_0, v62, v63, "AcousticIDFlow#buildShazamOutput with responseMode = %s", v64, 0xCu);
      sub_306C(v65);

      (*(v143 + 8))(v37, v28);
    }

    else
    {

      (*(v60 + 8))(v37, v28);
    }

    v71 = v135;
    sub_F3F4(v131, v135, &unk_353020, &unk_2D0970);
    v72 = v138;
    sub_F3F4(v132, v138, &qword_34C6E8, &unk_2D0FF0);
    v73 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v74 = (v134 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v136 + 80) + v75 + 8) & ~*(v136 + 80);
    v77 = swift_allocObject();
    sub_14A58(v71, v77 + v73, &unk_353020, &unk_2D0970);
    v78 = (v77 + v74);
    v79 = v141;
    *v78 = v142;
    v78[1] = v79;
    *(v77 + v75) = v59;
    sub_14A58(v72, v77 + v76, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  return result;
}

uint64_t sub_158B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v6[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v9 = sub_2CE000();
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();
  v12 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v13 = sub_2CA630();
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_158CB4, 0, 0);
}

uint64_t sub_158CB4()
{
  v37 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 64);
  v33 = *(v0 + 48);
  v34 = *(v0 + 72);
  sub_2C9B20();
  v4 = swift_task_alloc();
  *(v4 + 16) = v33;
  *(v4 + 32) = v3;
  *(v4 + 40) = v34;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_2CDFE0();
  v10 = sub_2CE690();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = *(v0 + 104);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136446210;
    v17 = sub_2CCCA0();
    v19 = sub_3F08(v17, v18, &v36);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v9, v10, "SiriAudioOutputProvider#buildShazamOutput returning dialog only output. %{public}s", v15, 0xCu);
    sub_306C(v16);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  v22 = *(v0 + 80);
  v23 = sub_2CA080();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v26 = swift_allocObject();
  *(v0 + 168) = v26;
  *(v26 + 16) = xmmword_2D0770;
  sub_F3F4(v22, v20, &qword_34C6E8, &unk_2D0FF0);
  *(v26 + 32) = *(v20 + *(v21 + 48));
  v27 = sub_2CA130();
  (*(*(v27 - 8) + 8))(v20, v27);
  v28 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v35 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v29 = swift_task_alloc();
  *(v0 + 176) = v29;
  *v29 = v0;
  v29[1] = sub_159004;
  v30 = *(v0 + 152);
  v31 = *(v0 + 40);

  return v35(v31, v26, v30);
}

uint64_t sub_159004()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v5 = *v0;

  return _swift_task_switch(sub_159138, 0, 0);
}

uint64_t sub_159138()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[12];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1591E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v7 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = sub_2CB260();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_20410(&unk_353020, &unk_2D0970);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_F3F4(a2, &v21 - v16, &unk_353020, &unk_2D0970);
  sub_2CA5B0();

  sub_2CA600();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v22, v11, &qword_34C6E8, &unk_2D0FF0);
  v17 = *&v11[*(v8 + 56)];
  v18 = [v17 catId];

  sub_2CE270();
  sub_2CA590();
  v19 = sub_2CA130();
  (*(*(v19 - 8) + 8))(v11, v19);
  return sub_2CA610();
}

uint64_t sub_159424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5[15] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v8 = sub_2CE000();
  v5[17] = v8;
  v9 = *(v8 - 8);
  v5[18] = v9;
  v10 = *(v9 + 64) + 15;
  v5[19] = swift_task_alloc();
  v11 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = sub_2CA630();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_1595B0, 0, 0);
}

uint64_t sub_1595B0()
{
  v40 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 104);
  v37 = *(v0 + 88);
  sub_2C9B20();
  v4 = swift_task_alloc();
  *(v4 + 16) = v37;
  *(v4 + 32) = v3;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_2CDFE0();
  v10 = sub_2CE690();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  v14 = *(v0 + 136);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136446210;
    v17 = sub_2CCCA0();
    v19 = sub_3F08(v17, v18, &v39);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v9, v10, "SiriAudioOutputProvider#buildTraditionalRFShazamOutput returning old snippet. %{public}s", v15, 0xCu);
    sub_306C(v16);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = sub_2CA080();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_2CA070();
  v27 = sub_2CD230();
  *(v0 + 40) = v27;
  *(v0 + 48) = sub_169F98(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v28 = sub_F390((v0 + 16));
  v29 = sub_2CD330();
  (*(*(v29 - 8) + 16))(v28, v23, v29);
  (*(*(v27 - 8) + 104))(v28, enum case for SiriAudioSnippets.shazam(_:), v27);
  sub_20410(&unk_351900, &unk_2D0960);
  v30 = swift_allocObject();
  *(v0 + 200) = v30;
  *(v30 + 16) = xmmword_2D0770;
  sub_F3F4(v22, v20, &qword_34C6E8, &unk_2D0FF0);
  *(v30 + 32) = *(v20 + *(v21 + 48));
  v31 = sub_2CA130();
  (*(*(v31 - 8) + 8))(v20, v31);
  v32 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
  v38 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v33 = swift_task_alloc();
  *(v0 + 208) = v33;
  *v33 = v0;
  v33[1] = sub_1599C8;
  v34 = *(v0 + 184);
  v35 = *(v0 + 80);

  return v38(v35, v0 + 16, v30, v34);
}

uint64_t sub_1599C8()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v6 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_159B0C, 0, 0);
}

uint64_t sub_159B0C()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[16];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_159BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = sub_2CB260();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_F3F4(a2, &v20 - v15, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v10, &qword_34C6E8, &unk_2D0FF0);
  v16 = *&v10[*(v7 + 56)];
  v17 = [v16 catId];

  sub_2CE270();
  sub_2CA590();
  v18 = sub_2CA130();
  (*(*(v18 - 8) + 8))(v10, v18);
  return sub_2CA610();
}

uint64_t sub_159DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v161 = a1;
  v6 = sub_20410(&qword_352D78, &unk_2D5320);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v158 = &v138 - v8;
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v157 = &v138 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v156 = &v138 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v155 = &v138 - v17;
  v162 = sub_2CB970();
  v154 = *(v162 - 8);
  v18 = *(v154 + 64);
  __chkstk_darwin(v162);
  v152 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2CCB20();
  v149 = *(v150 - 8);
  v20 = v149[8];
  __chkstk_darwin(v150);
  v147 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2CCB30();
  v146 = *(v148 - 8);
  v22 = *(v146 + 64);
  __chkstk_darwin(v148);
  v144 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2CCAC0();
  v143 = *(v145 - 8);
  v24 = *(v143 + 64);
  __chkstk_darwin(v145);
  v26 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v27 = *(*(v163 - 8) + 64);
  v28 = __chkstk_darwin(v163);
  v159 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v153 = &v138 - v31;
  v32 = __chkstk_darwin(v30);
  v151 = &v138 - v33;
  __chkstk_darwin(v32);
  v165 = &v138 - v34;
  v35 = sub_20410(&unk_3519A0, &qword_2D0980);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v138 - v37);
  v39 = sub_2CE000();
  v40 = *(v39 - 8);
  v41 = v40[8];
  v42 = __chkstk_darwin(v39);
  v160 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v46 = &v138 - v45;
  __chkstk_darwin(v44);
  v48 = &v138 - v47;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v141 = a3;
    v142 = a4;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v49 = sub_3ED0(v39, qword_35F6A8);
    v50 = v40[2];
    v140 = v49;
    v139 = v50;
    (v50)(v46);
    v51 = sub_2CDFE0();
    v52 = sub_2CE690();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF", v53, 2u);
    }

    v54 = v40[1];
    v54(v46, v39);
    sub_F3F4(v161, v38, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v168 = *v38;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v55 = v167;
        v56 = [v167 localizedDescription];
        v57 = sub_2CE270();
        v59 = v58;

        v166[0] = v57;
        v166[1] = v59;
        v60 = sub_2CE3C0();
        v62 = v61;
        v63 = v160;
        v139(v160, v140, v39);
        v64 = sub_2CDFE0();
        v65 = sub_2CE680();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = v54;
          v68 = swift_slowAlloc();
          v166[0] = v68;
          *v66 = 136315138;
          v69 = sub_3F08(v60, v62, v166);

          *(v66 + 4) = v69;
          _os_log_impl(&dword_0, v64, v65, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF Error creating dialog %s, issuing error dialog", v66, 0xCu);
          sub_306C(v68);

          v67(v160, v39);
        }

        else
        {

          v54(v63, v39);
        }

        v118 = v142;
        v119 = v141;
        v120 = sub_2CC950();
        v121 = v158;
        (*(*(v120 - 8) + 56))(v158, 1, 1, v120);
        v122 = [v55 localizedDescription];
        v123 = sub_2CE270();
        v125 = v124;

        sub_1612C4(v121, v123, v125, v119, v118);

        sub_30B8(v121, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_14A58(v38, v165, &qword_34C6E8, &unk_2D0FF0);
      v75 = v143;
      v76 = v145;
      (*(v143 + 104))(v26, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v145);
      v77 = v146;
      v78 = v144;
      v79 = v148;
      (*(v146 + 104))(v144, enum case for AdditionalMetricsDescription.SourceFunction.noMatch(_:), v148);
      v80 = v149;
      v81 = v147;
      v82 = v150;
      (v149[13])(v147, enum case for AdditionalMetricsDescription.StatusReason.noMatchFound(_:), v150);
      v83 = sub_2CCAD0();
      v160 = v84;
      v161 = v83;
      (v80[1])(v81, v82);
      (*(v77 + 8))(v78, v79);
      (*(v75 + 8))(v26, v76);
      v150 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v158 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v149 = sub_35E0((Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v150);
      v85 = v154;
      v86 = v152;
      (*(v154 + 104))(v152, enum case for TypeOfIntent.acousticID(_:), v162);
      v87 = enum case for ActivityType.failed(_:);
      v88 = sub_2C9C20();
      v89 = *(v88 - 8);
      v90 = v155;
      (*(v89 + 104))(v155, v87, v88);
      (*(v89 + 56))(v90, 0, 1, v88);
      v91 = sub_2CA130();
      v92 = *(v91 - 8);
      v93 = v156;
      (*(v92 + 56))(v156, 1, 1, v91);
      v94 = enum case for SiriKitReliabilityCodes.noReadableItems(_:);
      v95 = sub_2C98F0();
      v96 = *(v95 - 8);
      v97 = v157;
      (*(v96 + 104))(v157, v94, v95);
      (*(v96 + 56))(v97, 0, 1, v95);
      sub_2CB4C0();

      v98 = v97;
      v99 = v91;
      sub_30B8(v98, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v93, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v90, &qword_34CB88, &unk_2D0D90);
      (*(v85 + 8))(v86, v162);
      v100 = v151;
      sub_F3F4(v165, v151, &qword_34C6E8, &unk_2D0FF0);

      v101 = sub_2CA100();
      v102 = *(v92 + 8);
      v102(v100, v91);
      v103 = (v101 + 40);
      v104 = *(v101 + 16) + 1;
      v105 = v142;
      while (--v104)
      {
        v107 = *(v103 - 1);
        v106 = *v103;
        v103 += 2;
        v108 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v108 = v107 & 0xFFFFFFFFFFFFLL;
        }

        if (v108)
        {

          goto LABEL_22;
        }
      }

      v106 = 0;
LABEL_22:

      v109 = v153;
      sub_F3F4(v165, v153, &qword_34C6E8, &unk_2D0FF0);

      v110 = sub_2CA110();
      v102(v109, v99);
      v111 = (v110 + 40);
      v112 = *(v110 + 16) + 1;
      while (--v112)
      {
        v114 = *(v111 - 1);
        v113 = *v111;
        v111 += 2;
        v115 = HIBYTE(v113) & 0xF;
        if ((v113 & 0x2000000000000000) == 0)
        {
          v115 = v114 & 0xFFFFFFFFFFFFLL;
        }

        if (v115)
        {

          goto LABEL_29;
        }
      }

      v113 = 0;
LABEL_29:

      v116 = [objc_allocWithZone(SADialogText) init];
      if (v106)
      {
        v117 = sub_2CE260();
      }

      else
      {
        v117 = 0;
      }

      [v116 setText:v117];

      if (v113)
      {
        v126 = sub_2CE260();
      }

      else
      {
        v126 = 0;
      }

      [v116 setSpeakableTextOverride:v126];

      v127 = [objc_allocWithZone(SADialog) init];
      [v127 setCanUseServerTTS:1];
      [v127 setPrintedOnly:0];
      [v127 setSpokenOnly:1];
      v128 = v116;
      [v127 setCaption:v128];
      [v127 setContent:v128];

      v129 = v159;
      sub_F3F4(v165, v159, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA0D0();
      v130 = sub_2CE260();

      v102(v129, v99);
      [v127 setDialogIdentifier:v130];

      v131 = swift_allocObject();
      *(v131 + 16) = _swiftEmptyArrayStorage;
      v132 = swift_allocObject();
      v133 = Strong;
      v132[2] = Strong;
      v132[3] = v127;
      v134 = v141;
      v132[4] = v131;
      v132[5] = v134;
      v132[6] = v105;
      if (*(v133 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
      {
        v135 = swift_allocObject();
        *(v135 + 16) = sub_16A188;
        *(v135 + 24) = v132;
        swift_allocObject();
        swift_weakInit();
        swift_retain_n();

        v136 = v127;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        sub_2CE4F0();
      }

      else
      {
        swift_retain_n();

        v137 = v127;

        sub_15B094(0, 0, 0, v133, v137, v131, v134, v105);
      }

      sub_30B8(v165, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v70 = sub_3ED0(v39, qword_35F6A8);
    (v40[2])(v48, v70, v39);
    v71 = sub_2CDFE0();
    v72 = sub_2CE680();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF self deallocated prematurely", v73, 2u);
    }

    return (v40[1])(v48, v39);
  }

  return result;
}