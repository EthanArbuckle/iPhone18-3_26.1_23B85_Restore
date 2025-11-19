uint64_t sub_15B094(uint64_t a1, NSString a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a7;
  v76 = a8;
  v70 = a5;
  v74 = a4;
  v12 = sub_20410(&qword_352D78, &unk_2D5320);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v73 = &v69 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&unk_353020, &unk_2D0970);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v69 - v22;
  v24 = sub_2CA910();
  v25 = *(v24 - 8);
  v71 = v24;
  v72 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v80 = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v29 = v81[1];
      v30 = v16;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v31 = sub_3ED0(v15, qword_35F6A8);
      (*(v16 + 16))(v19, v31, v15);
      v32 = v29;
      v33 = sub_2CDFE0();
      v34 = sub_2CE680();

      v35 = &selRef_hasTwoOrMoreRooms;
      if (os_log_type_enabled(v33, v34))
      {
        v36 = swift_slowAlloc();
        v72 = v30;
        v37 = v36;
        v38 = swift_slowAlloc();
        v81[0] = v38;
        *v37 = 136315138;
        v39 = [v32 localizedDescription];
        v40 = sub_2CE270();
        v42 = v41;

        *&v77 = v40;
        *(&v77 + 1) = v42;
        v43 = sub_2CE3C0();
        v45 = sub_3F08(v43, v44, v81);
        v35 = &selRef_hasTwoOrMoreRooms;

        *(v37 + 4) = v45;
        _os_log_impl(&dword_0, v33, v34, "AcousticIDFlow#noMatchFoundDialogAndViewNonRF Error grabbing session ID %s, issuing error dialog", v37, 0xCu);
        sub_306C(v38);

        (*(v72 + 8))(v19, v15);
      }

      else
      {

        (*(v30 + 8))(v19, v15);
      }

      v62 = sub_2CC950();
      v63 = v73;
      (*(*(v62 - 8) + 56))(v73, 1, 1, v62);
      v64 = [v32 v35[130]];
      v65 = sub_2CE270();
      v67 = v66;

      sub_1612C4(v63, v65, v67, v75, v76);

      sub_30B8(v63, &qword_352D78, &unk_2D5320);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v46 = sub_168BEC();
    if (v46)
    {
      v47 = v46;
      [v47 setDialog:v70];
      if (a2)
      {
        a2 = sub_2CE260();
      }

      [v47 setCorrespondingSessionID:a2];

      v48 = sub_2CE260();
      [v47 setViewId:v48];

      swift_beginAccess();
      sub_2CE3F0();
      if (*(&dword_10 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v68 = *(&dword_10 + (*(a6 + 16) & 0xFFFFFFFFFFFFFF8));
        sub_2CE430();
      }

      sub_2CE460();
      swift_endAccess();
    }

    v49 = [objc_allocWithZone(SAUIAddViews) init];
    swift_beginAccess();
    v50 = *(a6 + 16);
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    isa = sub_2CE400().super.isa;

    [v49 setViews:isa];

    v52 = sub_2CA000();
    (*(*(v52 - 8) + 56))(v23, 1, 1, v52);
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    sub_2C9E30();
    sub_30B8(&v77, &qword_34CC80, &qword_2D1520);
    sub_30B8(v23, &unk_353020, &unk_2D0970);
    v53 = *(v74 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 32);
    sub_35E0((v74 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v74 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
    v54 = v71;
    *(&v78 + 1) = v71;
    v79 = &protocol witness table for AceOutput;
    v55 = sub_F390(&v77);
    v56 = v72;
    (*(v72 + 16))(v55, v28, v54);
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = swift_allocObject();
    v59 = v75;
    v60 = v76;
    v58[2] = v57;
    v58[3] = v59;
    v58[4] = v60;

    sub_2CA010();

    (*(v56 + 8))(v28, v54);

    return sub_306C(&v77);
  }

  return result;
}

uint64_t sub_15B894(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, const char *a6, int a7, const char *a8)
{
  v41 = a7;
  v39 = a6;
  v43 = a4;
  v10 = sub_2C9EC0();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for AcousticIDFlow.State(0);
  v14 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v38 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v38 = a5;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v27 = sub_3ED0(v17, qword_35F6A8);
    (*(v18 + 16))(v22, v27, v17);
    v28 = sub_2CDFE0();
    v29 = sub_2CE690();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, v39, v30, 2u);
    }

    (*(v18 + 8))(v22, v17);
    swift_storeEnumTagMultiPayload();
    v31 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    sub_1694A4(v16, v26 + v31);
    swift_endAccess();
    sub_2C9E70();
    v43(v13);

    return (*(v42 + 8))(v13, v10);
  }

  else
  {
    v33 = a8;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v17, qword_35F6A8);
    (*(v18 + 16))(v24, v34, v17);
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, v33, v37, 2u);
    }

    return (*(v18 + 8))(v24, v17);
  }
}

uint64_t sub_15BCC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v28 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v3;
    v17 = a1;
    v18 = v16;
    v29 = v16;
    *v15 = 136446210;
    v19 = sub_2CCCA0();
    v21 = sub_3F08(v19, v20, &v29);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v12, v13, "AcousticIDFlow#noMatchFoundDialogAndViewWithRF... %{public}s", v15, 0xCu);
    sub_306C(v18);
    a1 = v17;
    v3 = v27;

    a2 = v28;
  }

  (*(v7 + 8))(v10, v6);
  v22 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a1;
  v24[4] = a2;

  sub_F4074(sub_169784, v24);
}

uint64_t sub_15BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, char *a11, uint64_t a12, const char *a13)
{
  v171 = a8;
  v170 = a7;
  LODWORD(v169) = a6;
  v168 = a5;
  v191 = a3;
  v192 = a4;
  v185 = a1;
  v13 = sub_20410(&qword_352D78, &unk_2D5320);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v179 = (&v160 - v15);
  v16 = sub_20410(&unk_353020, &unk_2D0970);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v182 = &v160 - v18;
  v19 = sub_2CE000();
  v194 = *(v19 - 8);
  v195 = v19;
  v20 = *(v194 + 64);
  v21 = __chkstk_darwin(v19);
  v184 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v183 = &v160 - v24;
  __chkstk_darwin(v23);
  v181 = &v160 - v25;
  v26 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v176 = &v160 - v28;
  v29 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v175 = &v160 - v31;
  v32 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v174 = &v160 - v34;
  v186 = sub_2CB970();
  v173 = *(v186 - 8);
  v35 = *(v173 + 64);
  __chkstk_darwin(v186);
  v172 = &v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2CCB20();
  v166 = *(v167 - 8);
  v37 = *(v166 + 64);
  __chkstk_darwin(v167);
  v164 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2CCB30();
  v163 = *(v165 - 8);
  v39 = *(v163 + 64);
  __chkstk_darwin(v165);
  v41 = &v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2CCAC0();
  v161 = *(v162 - 8);
  v42 = *(v161 + 64);
  __chkstk_darwin(v162);
  v44 = &v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AcousticIDFlow.State(0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = &v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2CD1E0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  v53 = &v160 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_2CD330();
  v178 = *(v180 - 8);
  v54 = *(v178 + 64);
  __chkstk_darwin(v180);
  v190 = &v160 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v56 = *(*(v187 - 8) + 64);
  v57 = __chkstk_darwin(v187);
  v177 = &v160 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v188 = &v160 - v60;
  v61 = __chkstk_darwin(v59);
  v189 = &v160 - v62;
  __chkstk_darwin(v61);
  v193 = &v160 - v63;
  v64 = sub_20410(&unk_3519A0, &qword_2D0980);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v67 = (&v160 - v66);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v184 = Strong;
    sub_F3F4(v185, v67, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v197[2] = *v67;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v69 = v197[1];
        v70 = v194;
        v71 = v195;
        if (qword_34BF60 != -1)
        {
          swift_once();
        }

        v72 = sub_3ED0(v71, qword_35F6A8);
        v73 = v183;
        (*(v70 + 16))(v183, v72, v71);
        v74 = v69;
        v75 = sub_2CDFE0();
        v76 = sub_2CE680();

        v77 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v75, v76))
        {
          v78 = swift_slowAlloc();
          v197[0] = swift_slowAlloc();
          *v78 = 136315394;
          v79 = [v74 localizedDescription];
          v80 = sub_2CE270();
          v82 = v81;

          v196[0] = v80;
          v196[1] = v82;
          v83 = sub_2CE3C0();
          v85 = sub_3F08(v83, v84, v197);

          *(v78 + 4) = v85;
          *(v78 + 12) = 2082;
          v86 = sub_2CCCA0();
          v88 = sub_3F08(v86, v87, v197);

          *(v78 + 14) = v88;
          v77 = &selRef_hasTwoOrMoreRooms;
          _os_log_impl(&dword_0, v75, v76, "AcousticIDFlow#listeningDialogAndViewWithRF Error creating dialog %s %{public}s", v78, 0x16u);
          swift_arrayDestroy();

          (*(v70 + 8))(v183, v71);
        }

        else
        {

          (*(v70 + 8))(v73, v71);
        }

        v154 = sub_2CC950();
        v155 = v179;
        (*(*(v154 - 8) + 56))(v179, 1, 1, v154);
        v156 = [v74 v77[130]];
        v157 = sub_2CE270();
        v159 = v158;

        sub_1612C4(v155, v157, v159, v191, v192);

        sub_30B8(v155, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      v185 = a12;
      v183 = a11;
      v179 = a10;
      v160 = a9;
      sub_14A58(v67, v193, &qword_34C6E8, &unk_2D0FF0);
      (*(v50 + 104))(v53, *v168, v49);
      sub_2CD320();
      swift_storeEnumTagMultiPayload();
      v101 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v102 = v184;
      swift_beginAccess();
      sub_1694A4(v48, &v102[v101]);
      swift_endAccess();
      v103 = v161;
      v104 = v162;
      (*(v161 + 104))(v44, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v162);
      v105 = v163;
      v106 = v165;
      (*(v163 + 104))(v41, *v170, v165);
      v107 = v166;
      v108 = v164;
      v109 = v167;
      (*(v166 + 104))(v164, *v171, v167);
      v171 = sub_2CCAD0();
      v170 = v110;
      (*(v107 + 8))(v108, v109);
      (*(v105 + 8))(v41, v106);
      (*(v103 + 8))(v44, v104);
      v168 = *&v102[OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24];
      v169 = *&v102[OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32];
      v167 = sub_35E0(&v102[OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider], v168);
      v111 = v173;
      v112 = v172;
      (*(v173 + 104))(v172, enum case for TypeOfIntent.acousticID(_:), v186);
      v113 = *v160;
      v114 = sub_2C9C20();
      v115 = *(v114 - 8);
      v116 = v174;
      (*(v115 + 104))(v174, v113, v114);
      (*(v115 + 56))(v116, 0, 1, v114);
      v117 = sub_2CA130();
      v118 = *(v117 - 8);
      v119 = v175;
      (*(v118 + 56))(v175, 1, 1, v117);
      v120 = *v179;
      v121 = sub_2C98F0();
      v122 = *(v121 - 8);
      v123 = v176;
      (*(v122 + 104))(v176, v120, v121);
      (*(v122 + 56))(v123, 0, 1, v121);
      sub_2CB4C0();

      sub_30B8(v123, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v119, &qword_34CB80, &unk_2D0B30);
      v124 = v116;
      v125 = v117;
      sub_30B8(v124, &qword_34CB88, &unk_2D0D90);
      (*(v111 + 8))(v112, v186);
      v126 = v189;
      sub_F3F4(v193, v189, &qword_34C6E8, &unk_2D0FF0);
      v128 = v187;
      v127 = v188;
      v129 = *(v126 + *(v187 + 48));
      v186 = v118;
      (*(v118 + 16))(v188, v126, v125);
      *(v127 + *(v128 + 48)) = v129;
      v130 = qword_34BF60;
      v179 = v129;
      if (v130 != -1)
      {
        swift_once();
      }

      v131 = v195;
      v132 = sub_3ED0(v195, qword_35F6A8);
      v133 = v194;
      v134 = v181;
      (*(v194 + 16))(v181, v132, v131);
      v135 = sub_2CDFE0();
      v136 = sub_2CE690();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = v133;
        v139 = swift_slowAlloc();
        v196[0] = v139;
        *v137 = 136446210;
        v140 = sub_2CCCA0();
        v142 = sub_3F08(v140, v141, v196);

        *(v137 + 4) = v142;
        _os_log_impl(&dword_0, v135, v136, "AcousticIDFlow#publishShazam Reached Logic %{public}s", v137, 0xCu);
        sub_306C(v139);

        (*(v138 + 8))(v134, v131);
      }

      else
      {

        (*(v133 + 8))(v134, v131);
      }

      v143 = v188;
      v144 = v177;
      sub_F3F4(v188, v177, &qword_34C6E8, &unk_2D0FF0);
      v145 = *(v144 + *(v187 + 48));
      v146 = sub_2CA000();
      v147 = v182;
      (*(*(v146 - 8) + 56))(v182, 1, 1, v146);
      v148 = swift_allocObject();
      swift_weakInit();
      v149 = swift_allocObject();
      v150 = v191;
      v151 = v192;
      v149[2] = v148;
      v149[3] = v150;
      v149[4] = v151;

      v152 = v190;
      sub_157198(v144, v145, v190, v147, v185, v149);

      sub_30B8(v147, &unk_353020, &unk_2D0970);
      sub_30B8(v143, &qword_34C6E8, &unk_2D0FF0);

      v153 = *(v186 + 8);
      v153(v144, v125);

      (*(v178 + 8))(v152, v180);
      sub_30B8(v193, &qword_34C6E8, &unk_2D0FF0);
      return (v153)(v189, v125);
    }
  }

  else
  {
    v89 = v184;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v90 = v195;
    v91 = sub_3ED0(v195, qword_35F6A8);
    v92 = v194;
    (*(v194 + 16))(v89, v91, v90);
    v93 = sub_2CDFE0();
    v94 = sub_2CE680();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v196[0] = v96;
      *v95 = 136446210;
      v97 = sub_2CCCA0();
      v99 = sub_3F08(v97, v98, v196);

      *(v95 + 4) = v99;
      _os_log_impl(&dword_0, v93, v94, a13, v95, 0xCu);
      sub_306C(v96);
    }

    return (*(v92 + 8))(v89, v90);
  }

  return result;
}

uint64_t sub_15D388(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_112C0(_swiftEmptyArrayStorage);
  v25 = v8;
  v9 = a1[5];
  if (v9)
  {
    v10 = v8;
    v11 = a1[4];
    v24 = &type metadata for String;
    *&v23 = v11;
    *(&v23 + 1) = v9;
    sub_E2DC(&v23, v22);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_237690(v22, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v25 = v10;
  }

  else
  {
    sub_236110(0x656C746974, 0xE500000000000000, &v23);
    sub_30B8(&v23, &qword_34CEA0, &qword_2D0FC0);
  }

  v13 = a1[9];
  if (v13)
  {
    v14 = a1[8];
    v24 = &type metadata for String;
    *&v23 = v14;
    *(&v23 + 1) = v13;
    sub_E2DC(&v23, v22);

    v15 = v25;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_237690(v22, 0x747369747261, 0xE600000000000000, v16);
    v17 = v15;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v23);
    sub_30B8(&v23, &qword_34CEA0, &qword_2D0FC0);
    v17 = v25;
  }

  v18 = *(v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;

  sub_F39DC(v17, sub_1695EC, v20);
}

uint64_t sub_15D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v173 = a3;
  v171 = a1;
  v7 = sub_20410(&qword_352D78, &unk_2D5320);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v168 = &v148 - v9;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v167 = &v148 - v12;
  v13 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v166 = &v148 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v165 = &v148 - v18;
  v172 = sub_2CB970();
  v164 = *(v172 - 8);
  v19 = *(v164 + 64);
  __chkstk_darwin(v172);
  v163 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_2CCB20();
  v159 = *(v160 - 8);
  v21 = v159[8];
  __chkstk_darwin(v160);
  v157 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_2CCB30();
  v156 = *(v158 - 8);
  v23 = *(v156 + 64);
  __chkstk_darwin(v158);
  v154 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2CCAC0();
  v153 = *(v155 - 8);
  v25 = *(v153 + 64);
  __chkstk_darwin(v155);
  v152 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20410(&unk_353020, &unk_2D0970);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v148 - v29;
  v174 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v31 = *(*(v174 - 8) + 64);
  v32 = __chkstk_darwin(v174);
  v169 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v162 = &v148 - v35;
  v36 = __chkstk_darwin(v34);
  v161 = &v148 - v37;
  __chkstk_darwin(v36);
  v176 = (&v148 - v38);
  v39 = sub_20410(&unk_3519A0, &qword_2D0980);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v148 - v41);
  v43 = sub_2CE000();
  v44 = *(v43 - 8);
  v45 = v44[8];
  v46 = __chkstk_darwin(v43);
  v170 = &v148 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v50 = &v148 - v49;
  __chkstk_darwin(v48);
  v52 = &v148 - v51;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v149 = v30;
    v150 = a4;
    v151 = a5;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v53 = sub_3ED0(v43, qword_35F6A8);
    v54 = v44[2];
    v54(v50, v53, v43);
    v55 = sub_2CDFE0();
    v56 = sub_2CE690();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v148 = v43;
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "AcousticIDFlow#successfulMatchDialogAndViewNonRF", v57, 2u);
      v43 = v148;
    }

    v58 = v44[1];
    v58(v50, v43);
    sub_F3F4(v171, v42, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v179[2] = *v42;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v59 = v179[1];
        v60 = v170;
        v54(v170, v53, v43);
        v61 = v59;
        v62 = sub_2CDFE0();
        v63 = sub_2CE680();

        v64 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v62, v63))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v179[0] = v66;
          *v65 = 136315138;
          v67 = [v61 localizedDescription];
          v68 = sub_2CE270();
          v176 = v58;
          v69 = v68;
          v71 = v70;

          v177 = v69;
          v178 = v71;
          v64 = &selRef_hasTwoOrMoreRooms;
          v72 = sub_2CE3C0();
          v74 = sub_3F08(v72, v73, v179);

          *(v65 + 4) = v74;
          _os_log_impl(&dword_0, v62, v63, "AcousticIDFlow#successfulMatchDialogAndViewNonRF Error creating dialog %s, issuing error dialog", v65, 0xCu);
          sub_306C(v66);

          v176(v170, v43);
        }

        else
        {

          v58(v60, v43);
        }

        v124 = v151;
        v125 = v150;
        v126 = sub_2CC950();
        v127 = v168;
        (*(*(v126 - 8) + 56))(v168, 1, 1, v126);
        v128 = [v61 v64[130]];
        v129 = sub_2CE270();
        v131 = v130;

        sub_1612C4(v127, v129, v131, v125, v124);

        sub_30B8(v127, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      sub_14A58(v42, v176, &qword_34C6E8, &unk_2D0FF0);
      sub_14F938(v173, v149);
      v80 = v153;
      v81 = v152;
      v82 = v155;
      (*(v153 + 104))(v152, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v155);
      v83 = v156;
      v84 = v154;
      v85 = v158;
      (*(v156 + 104))(v154, enum case for AdditionalMetricsDescription.SourceFunction.successfulMatch(_:), v158);
      v86 = v159;
      v87 = v157;
      v88 = v160;
      (v159[13])(v157, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v160);
      v89 = sub_2CCAD0();
      v170 = v90;
      v171 = v89;
      (v86[1])(v87, v88);
      (*(v83 + 8))(v84, v85);
      (*(v80 + 8))(v81, v82);
      v160 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v168 = *(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v159 = sub_35E0((Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v160);
      v91 = v164;
      v92 = v163;
      (*(v164 + 104))(v163, enum case for TypeOfIntent.acousticID(_:), v172);
      v93 = enum case for ActivityType.completed(_:);
      v94 = sub_2C9C20();
      v95 = *(v94 - 8);
      v96 = v165;
      (*(v95 + 104))(v165, v93, v94);
      (*(v95 + 56))(v96, 0, 1, v94);
      v97 = sub_2CA130();
      v98 = *(v97 - 8);
      v99 = v166;
      (*(v98 + 56))(v166, 1, 1, v97);
      v100 = enum case for SiriKitReliabilityCodes.success(_:);
      v101 = sub_2C98F0();
      v102 = *(v101 - 8);
      v103 = v167;
      (*(v102 + 104))(v167, v100, v101);
      (*(v102 + 56))(v103, 0, 1, v101);
      sub_2CB4C0();

      v104 = v103;
      v105 = v97;
      sub_30B8(v104, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v99, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v96, &qword_34CB88, &unk_2D0D90);
      (*(v91 + 8))(v92, v172);
      v106 = v161;
      sub_F3F4(v176, v161, &qword_34C6E8, &unk_2D0FF0);

      v107 = sub_2CA100();
      v108 = *(v98 + 8);
      v108(v106, v105);
      v109 = (v107 + 40);
      v110 = *(v107 + 16) + 1;
      v111 = v151;
      while (--v110)
      {
        v113 = *(v109 - 1);
        v112 = *v109;
        v109 += 2;
        v114 = HIBYTE(v112) & 0xF;
        if ((v112 & 0x2000000000000000) == 0)
        {
          v114 = v113 & 0xFFFFFFFFFFFFLL;
        }

        if (v114)
        {

          goto LABEL_22;
        }
      }

      v112 = 0;
LABEL_22:

      v115 = v162;
      sub_F3F4(v176, v162, &qword_34C6E8, &unk_2D0FF0);

      v116 = sub_2CA110();
      v108(v115, v105);
      v117 = (v116 + 40);
      v118 = *(v116 + 16) + 1;
      while (--v118)
      {
        v120 = *(v117 - 1);
        v119 = *v117;
        v117 += 2;
        v121 = HIBYTE(v119) & 0xF;
        if ((v119 & 0x2000000000000000) == 0)
        {
          v121 = v120 & 0xFFFFFFFFFFFFLL;
        }

        if (v121)
        {

          goto LABEL_29;
        }
      }

      v119 = 0;
LABEL_29:

      v122 = [objc_allocWithZone(SADialogText) init];
      if (v112)
      {
        v123 = sub_2CE260();
      }

      else
      {
        v123 = 0;
      }

      [v122 setText:v123];

      if (v119)
      {
        v132 = sub_2CE260();
      }

      else
      {
        v132 = 0;
      }

      [v122 setSpeakableTextOverride:v132];

      v133 = [objc_allocWithZone(SADialog) init];
      [v133 setCanUseServerTTS:1];
      [v133 setPrintedOnly:0];
      [v133 setSpokenOnly:1];
      v134 = v122;
      [v133 setCaption:v134];
      [v133 setContent:v134];

      v135 = v169;
      sub_F3F4(v176, v169, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA0D0();
      v136 = sub_2CE260();

      v108(v135, v105);
      [v133 setDialogIdentifier:v136];

      v137 = swift_allocObject();
      *(v137 + 16) = _swiftEmptyArrayStorage;
      v138 = swift_allocObject();
      v139 = Strong;
      v140 = v173;
      v138[2] = Strong;
      v138[3] = v140;
      v138[4] = v133;
      v138[5] = v137;
      v141 = v150;
      v138[6] = v150;
      v138[7] = v111;
      if (*(v139 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) == 1)
      {
        v142 = swift_allocObject();
        *(v142 + 16) = sub_1695F8;
        *(v142 + 24) = v138;
        swift_allocObject();
        swift_weakInit();

        v143 = v133;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        sub_2CE4F0();
      }

      else
      {
        v144 = swift_allocObject();
        v144[2] = v133;
        v144[3] = 0;
        v144[4] = 0;
        v144[5] = v137;
        v144[6] = v139;
        v144[7] = v141;
        v144[8] = v111;
        swift_retain_n();
        swift_retain_n();
        v145 = v133;
        swift_retain_n();
        v146 = v145;

        sub_165924(v147, sub_16962C, v144);
      }

      sub_30B8(v149, &unk_353020, &unk_2D0970);
      sub_30B8(v176, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v75 = sub_3ED0(v43, qword_35F6A8);
    (v44[2])(v52, v75, v43);
    v76 = sub_2CDFE0();
    v77 = sub_2CE680();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "AcousticIDFlow#successfulMatchDialogAndViewNonRF self deallocated prematurely", v78, 2u);
    }

    return (v44[1])(v52, v43);
  }

  return result;
}

uint64_t sub_15E968(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a5;
  v16 = sub_20410(&qword_352D78, &unk_2D5320);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v60 = &v55 - v18;
  v61 = sub_2CE000();
  v19 = *(v61 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v61);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352D88, &qword_2D5348);
  if (a3)
  {
    v56 = a8;
    v57 = a9;
    v58 = a4;
    v64[2] = a1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v22 = v64[1];
      v23 = v19;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v24 = v61;
      v25 = sub_3ED0(v61, qword_35F6A8);
      v26 = *(v19 + 16);
      v27 = v59;
      v26(v59, v25, v24);
      v28 = v22;
      v29 = sub_2CDFE0();
      v30 = sub_2CE680();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v23;
        v33 = swift_slowAlloc();
        v64[0] = v33;
        *v31 = 136315138;
        v34 = v28;
        v35 = [v28 localizedDescription];
        v36 = sub_2CE270();
        v38 = v37;

        v62 = v36;
        v63 = v38;
        v39 = sub_2CE3C0();
        v41 = sub_3F08(v39, v40, v64);
        v28 = v34;

        *(v31 + 4) = v41;
        v42 = &selRef_hasTwoOrMoreRooms;
        _os_log_impl(&dword_0, v29, v30, "AcousticIDFlow#successfulMatchDialogAndViewNonRF Error grabbing session ID %s, issuing error dialog", v31, 0xCu);
        sub_306C(v33);

        (*(v32 + 8))(v27, v61);
        v43 = v57;
      }

      else
      {

        (*(v23 + 8))(v27, v24);
        v43 = v57;
        v42 = &selRef_hasTwoOrMoreRooms;
      }

      v47 = v56;
      v48 = sub_2CC950();
      v49 = v60;
      (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
      v50 = v28;
      v51 = [v28 v42[130]];
      v52 = sub_2CE270();
      v54 = v53;

      sub_1612C4(v49, v52, v54, v47, v43);

      sub_30B8(v49, &qword_352D78, &unk_2D5320);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    v44 = swift_allocObject();
    v44[2] = a6;
    v44[3] = a1;
    v44[4] = a2;
    v44[5] = a7;
    v44[6] = a4;
    v44[7] = a8;
    v44[8] = a9;
    sub_169774(a1, a2, 0);
    v45 = a6;

    sub_165924(v58, sub_16A3D8, v44);
  }

  return result;
}

uint64_t sub_15EE68(void *a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - v15;
  v17 = sub_2CA910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 setDialog:a2];
    v22 = a1;
    if (a4)
    {
      a4 = sub_2CE260();
    }

    [a1 setCorrespondingSessionID:{a4, v36, v37}];

    v23 = sub_2CE260();
    [a1 setViewId:v23];

    swift_beginAccess();
    sub_2CE3F0();
    if (*(&dword_10 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v35 = *(&dword_10 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8));
      sub_2CE430();
    }

    sub_2CE460();
    swift_endAccess();
  }

  v24 = [objc_allocWithZone(SAUIAddViews) init];
  swift_beginAccess();
  v25 = *(a5 + 16);
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);

  isa = sub_2CE400().super.isa;

  [v24 setViews:isa];

  v27 = sub_2CA000();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_2C9E30();
  sub_30B8(&v38, &qword_34CC80, &qword_2D1520);
  sub_30B8(v16, &unk_353020, &unk_2D0970);
  v28 = *(a6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 32);
  sub_35E0((a6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(a6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
  *(&v39 + 1) = v17;
  v40 = &protocol witness table for AceOutput;
  v29 = sub_F390(&v38);
  (*(v18 + 16))(v29, v21, v17);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v36;
  v33 = v37;
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v33;

  sub_2CA010();

  (*(v18 + 8))(v21, v17);

  return sub_306C(&v38);
}

uint64_t sub_15F2A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v40 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v39 = a2;
    v19 = v18;
    *&v43 = v18;
    *v17 = 136446210;
    v20 = sub_2CCCA0();
    v38 = a1;
    v22 = sub_3F08(v20, v21, &v43);
    a1 = v38;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "AcousticIDFlow#successfulMatchDialogAndViewWithRF... %{public}s", v17, 0xCu);
    sub_306C(v19);
    a2 = v39;

    a3 = v40;
  }

  (*(v9 + 8))(v12, v8);
  v23 = sub_112C0(_swiftEmptyArrayStorage);
  v45 = v23;
  v24 = a1[5];
  if (v24)
  {
    v25 = v23;
    v26 = a1[4];
    v44 = &type metadata for String;
    *&v43 = v26;
    *(&v43 + 1) = v24;
    sub_E2DC(&v43, v42);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v25;
    sub_237690(v42, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v45 = v41;
  }

  else
  {
    sub_236110(0x656C746974, 0xE500000000000000, &v43);
    sub_30B8(&v43, &qword_34CEA0, &qword_2D0FC0);
  }

  v28 = a1[9];
  if (v28)
  {
    v29 = a1[8];
    v44 = &type metadata for String;
    *&v43 = v29;
    *(&v43 + 1) = v28;
    sub_E2DC(&v43, v42);

    v30 = v45;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v30;
    sub_237690(v42, 0x747369747261, 0xE600000000000000, v31);
    v32 = v41;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v43);
    sub_30B8(&v43, &qword_34CEA0, &qword_2D0FC0);
    v32 = v45;
  }

  v33 = *(v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = a1;
  *(v35 + 32) = a2;
  *(v35 + 40) = a3;

  sub_F39DC(v32, sub_169508, v35);
}

uint64_t sub_15F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v144 = a4;
  v145 = a5;
  v138 = a3;
  v141 = a1;
  v5 = sub_20410(&qword_352D78, &unk_2D5320);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v137 = &v122 - v7;
  v8 = sub_2CE000();
  v146 = *(v8 - 8);
  v147 = v8;
  v9 = *(v146 + 64);
  v10 = __chkstk_darwin(v8);
  v139 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v122 - v12;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v135 = &v122 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v134 = &v122 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v133 = &v122 - v21;
  v142 = sub_2CB970();
  v132 = *(v142 - 1);
  v22 = *(v132 + 64);
  __chkstk_darwin(v142);
  v131 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2CCB20();
  v126 = *(v127 - 8);
  v24 = *(v126 + 64);
  __chkstk_darwin(v127);
  v26 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CCB30();
  v125 = *(v27 - 8);
  v28 = *(v125 + 64);
  __chkstk_darwin(v27);
  v30 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CCAC0();
  v124 = *(v31 - 8);
  v32 = *(v124 + 64);
  __chkstk_darwin(v31);
  v34 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v129 = *(v128 - 8);
  v35 = *(v129 + 64);
  v36 = __chkstk_darwin(v128);
  v130 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v36);
  v136 = &v122 - v38;
  v39 = __chkstk_darwin(v37);
  v143 = &v122 - v40;
  __chkstk_darwin(v39);
  v42 = &v122 - v41;
  v43 = sub_20410(&unk_3519A0, &qword_2D0980);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = (&v122 - v45);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v148 = Strong;
    sub_F3F4(v141, v46, &unk_3519A0, &qword_2D0980);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v150[2] = *v46;
      sub_20410(&qword_34C6E0, &unk_2D0730);
      sub_334A0(0, &qword_34FF48, NSError_ptr);
      if (swift_dynamicCast())
      {
        v48 = v150[1];
        v49 = v146;
        v50 = v147;
        v51 = v140;
        if (qword_34BF60 != -1)
        {
          swift_once();
        }

        v52 = sub_3ED0(v50, qword_35F6A8);
        (*(v49 + 16))(v51, v52, v50);
        v53 = v48;
        v54 = sub_2CDFE0();
        v55 = sub_2CE680();

        v56 = &selRef_hasTwoOrMoreRooms;
        if (os_log_type_enabled(v54, v55))
        {
          v57 = swift_slowAlloc();
          v150[0] = swift_slowAlloc();
          *v57 = 136315394;
          v58 = [v53 localizedDescription];
          v59 = sub_2CE270();
          v61 = v60;

          v149[0] = v59;
          v149[1] = v61;
          v62 = sub_2CE3C0();
          v64 = sub_3F08(v62, v63, v150);

          *(v57 + 4) = v64;
          *(v57 + 12) = 2082;
          v65 = sub_2CCCA0();
          v67 = sub_3F08(v65, v66, v150);
          v56 = &selRef_hasTwoOrMoreRooms;

          *(v57 + 14) = v67;
          _os_log_impl(&dword_0, v54, v55, "AcousticIDFlow#successfulMatchDialogAndViewWithRF Error creating dialog %s %{public}s", v57, 0x16u);
          swift_arrayDestroy();

          (*(v49 + 8))(v140, v50);
        }

        else
        {

          (*(v49 + 8))(v51, v50);
        }

        v116 = sub_2CC950();
        v117 = v137;
        (*(*(v116 - 8) + 56))(v137, 1, 1, v116);
        v118 = [v53 v56[130]];
        v119 = sub_2CE270();
        v121 = v120;

        sub_1612C4(v117, v119, v121, v144, v145);

        sub_30B8(v117, &qword_352D78, &unk_2D5320);
      }

      else
      {
        result = sub_2CEE90();
        __break(1u);
      }
    }

    else
    {
      v123 = v42;
      sub_14A58(v46, v42, &qword_34C6E8, &unk_2D0FF0);
      v80 = v124;
      (*(v124 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v31);
      v81 = v125;
      (*(v125 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.successfulMatch(_:), v27);
      v82 = v126;
      v83 = v127;
      (*(v126 + 104))(v26, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v127);
      v84 = sub_2CCAD0();
      v140 = v85;
      v141 = v84;
      (*(v82 + 8))(v26, v83);
      (*(v81 + 8))(v30, v27);
      (*(v80 + 8))(v34, v31);
      v86 = *(v148 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v137 = *(v148 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v139 = v86;
      sub_35E0((v148 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v137);
      v87 = v132;
      v88 = v131;
      (*(v132 + 104))(v131, enum case for TypeOfIntent.acousticID(_:), v142);
      v89 = enum case for ActivityType.completed(_:);
      v90 = sub_2C9C20();
      v91 = *(v90 - 8);
      v92 = v133;
      (*(v91 + 104))(v133, v89, v90);
      (*(v91 + 56))(v92, 0, 1, v90);
      v93 = sub_2CA130();
      v94 = *(v93 - 8);
      v146 = v93;
      v147 = v94;
      v95 = v134;
      (*(v94 + 56))(v134, 1, 1, v93);
      v96 = enum case for SiriKitReliabilityCodes.success(_:);
      v97 = sub_2C98F0();
      v98 = *(v97 - 8);
      v99 = v135;
      (*(v98 + 104))(v135, v96, v97);
      (*(v98 + 56))(v99, 0, 1, v97);
      sub_2CB4C0();

      sub_30B8(v99, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v95, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v92, &qword_34CB88, &unk_2D0D90);
      (*(v87 + 8))(v88, v142);
      v100 = v143;
      sub_F3F4(v123, v143, &qword_34C6E8, &unk_2D0FF0);
      v101 = v128;
      v142 = *(v100 + *(v128 + 48));
      v102 = v142;
      v103 = v136;
      (*(v147 + 16))(v136, v100, v146);
      *(v103 + *(v101 + 48)) = v102;
      v104 = swift_allocObject();
      v105 = v148;
      swift_weakInit();
      v106 = v130;
      sub_F3F4(v103, v130, &qword_34C6E8, &unk_2D0FF0);
      v107 = (*(v129 + 80) + 24) & ~*(v129 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = v104;
      sub_14A58(v106, v108 + v107, &qword_34C6E8, &unk_2D0FF0);
      v109 = (v108 + ((v35 + v107 + 7) & 0xFFFFFFFFFFFFFFF8));
      v110 = v145;
      *v109 = v144;
      v109[1] = v110;
      v111 = swift_allocObject();
      v111[2] = sub_169514;
      v111[3] = v108;
      v111[4] = v138;
      v112 = (v105 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
      v113 = *(v105 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider + 24);
      v144 = v112[4];
      sub_35E0(v112, v113);
      v114 = swift_allocObject();
      *(v114 + 16) = sub_1695C4;
      *(v114 + 24) = v111;
      v115 = v142;

      sub_2CC750();

      sub_30B8(v103, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v123, &qword_34C6E8, &unk_2D0FF0);

      return (*(v147 + 8))(v143, v146);
    }
  }

  else
  {
    v68 = v139;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v69 = v147;
    v70 = sub_3ED0(v147, qword_35F6A8);
    v71 = v146;
    (*(v146 + 16))(v68, v70, v69);
    v72 = sub_2CDFE0();
    v73 = sub_2CE680();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v149[0] = v75;
      *v74 = 136446210;
      v76 = sub_2CCCA0();
      v78 = sub_3F08(v76, v77, v149);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_0, v72, v73, "AcousticIDFlow#successfulMatchDialogAndViewWithRF self deallocated prematurely  %{public}s", v74, 0xCu);
      sub_306C(v75);
    }

    return (*(v71 + 8))(v68, v69);
  }

  return result;
}

uint64_t sub_1606B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a4;
  v93 = a5;
  v88 = a3;
  v86 = a1;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v94 = &v82 - v7;
  v8 = sub_2CE000();
  v96 = *(v8 - 8);
  v9 = *(v96 + 64);
  v10 = __chkstk_darwin(v8);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v82 - v12;
  v87 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v87 - 8) + 64);
  v14 = __chkstk_darwin(v87);
  v91 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v82 - v17;
  __chkstk_darwin(v16);
  v20 = &v82 - v19;
  v21 = type metadata accessor for AcousticIDFlow.State(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CD1E0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CD330();
  v89 = *(v30 - 8);
  v90 = v30;
  v31 = *(v89 + 64);
  __chkstk_darwin(v30);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v85 = v8;
    v36 = sub_2CD370();
    (*(*(v36 - 8) + 16))(v29, v86, v36);
    (*(v26 + 104))(v29, enum case for ShazamSnippetRole.success(_:), v25);
    sub_2CD320();
    swift_storeEnumTagMultiPayload();
    v37 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
    swift_beginAccess();
    v86 = v35;
    sub_1694A4(v24, v35 + v37);
    swift_endAccess();
    sub_F3F4(v88, v20, &qword_34C6E8, &unk_2D0FF0);
    v38 = v87;
    v39 = *&v20[*(v87 + 48)];
    v40 = sub_2CA130();
    v83 = *(v40 - 8);
    v41 = *(v83 + 16);
    v88 = v40;
    v41(v18, v20);
    *&v18[*(v38 + 48)] = v39;
    v42 = qword_34BF60;
    v82 = v39;
    v43 = v20;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = v85;
    v45 = sub_3ED0(v85, qword_35F6A8);
    v46 = v95;
    v47 = v96;
    (*(v96 + 16))(v95, v45, v44);
    v48 = sub_2CDFE0();
    v49 = sub_2CE690();
    v50 = os_log_type_enabled(v48, v49);
    v84 = v43;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v97[0] = v52;
      *v51 = 136446210;
      v53 = sub_2CCCA0();
      v55 = v38;
      v56 = v33;
      v57 = v18;
      v58 = sub_3F08(v53, v54, v97);

      *(v51 + 4) = v58;
      v18 = v57;
      v33 = v56;
      v38 = v55;
      _os_log_impl(&dword_0, v48, v49, "AcousticIDFlow#publishShazam Reached Logic %{public}s", v51, 0xCu);
      sub_306C(v52);

      (*(v96 + 8))(v95, v44);
    }

    else
    {

      (*(v47 + 8))(v46, v44);
    }

    v71 = v91;
    sub_F3F4(v18, v91, &qword_34C6E8, &unk_2D0FF0);
    v72 = *(v71 + *(v38 + 48));
    v73 = sub_2CA000();
    v74 = v18;
    v75 = v94;
    (*(*(v73 - 8) + 56))(v94, 1, 1, v73);
    v76 = swift_allocObject();
    swift_weakInit();
    v77 = swift_allocObject();
    v78 = v92;
    v79 = v93;
    v77[2] = v76;
    v77[3] = v78;
    v77[4] = v79;

    sub_157198(v71, v72, v33, v75, sub_1695D0, v77);

    sub_30B8(v75, &unk_353020, &unk_2D0970);
    sub_30B8(v74, &qword_34C6E8, &unk_2D0FF0);

    v80 = *(v83 + 8);
    v81 = v88;
    v80(v71, v88);

    (*(v89 + 8))(v33, v90);
    return (v80)(v84, v81);
  }

  else
  {
    v59 = v85;
    v60 = v8;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v61 = sub_3ED0(v8, qword_35F6A8);
    v62 = v96;
    (*(v96 + 16))(v59, v61, v8);
    v63 = sub_2CDFE0();
    v64 = sub_2CE680();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v97[0] = v66;
      *v65 = 136446210;
      v67 = sub_2CCCA0();
      v69 = sub_3F08(v67, v68, v97);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_0, v63, v64, "AcousticIDFlow#publishSuccessfulResponse self deallocated prematurely  %{public}s", v65, 0xCu);
      sub_306C(v66);
    }

    return (*(v62 + 8))(v59, v60);
  }
}

uint64_t sub_160F98(int a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v38 = a3;
  v39 = a2;
  v37 = a1;
  v5 = sub_20410(&unk_3519B0, &qword_2D1230);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v34 - v11;
  v34[1] = v34 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v34 - v14;
  v34[4] = v34 - v14;
  __chkstk_darwin(v13);
  v17 = v34 - v16;
  v34[6] = v34 - v16;
  v18 = sub_2CD370();
  v35 = *(v18 - 8);
  v36 = v18;
  v19 = *(v35 + 64);
  __chkstk_darwin(v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4[2];
  v23 = a4[3];
  v24 = a4[5];
  v34[11] = a4[4];
  v34[12] = v22;
  v34[2] = v23;
  v34[3] = v24;
  v25 = a4[6];
  v26 = a4[7];
  v27 = a4[9];
  v34[9] = a4[8];
  v34[10] = v25;
  v28 = a4[14];
  v29 = a4[15];
  v30 = a4[11];
  v34[7] = a4[10];
  v34[8] = v28;
  v34[5] = v30;
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL, v17, &unk_3519B0, &qword_2D1230);
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL, v15, &unk_3519B0, &qword_2D1230);
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL, v12, &unk_3519B0, &qword_2D1230);
  sub_F3F4(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL, v9, &unk_3519B0, &qword_2D1230);
  LOBYTE(v15) = *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_explicitContent);
  v31 = *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc);
  v32 = *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc + 8);

  sub_2CD360();
  v39(v21);
  return (*(v35 + 8))(v21, v36);
}

uint64_t sub_1612C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a2;
  v66 = a3;
  v67 = a5;
  v65 = a4;
  v6 = sub_2CB850();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v52 - v11;
  v13 = sub_20410(&qword_352D78, &unk_2D5320);
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = sub_2CC950();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v58 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  v62 = a1;
  v24 = v23;
  v26 = v25;
  sub_F3F4(a1, v17, &qword_352D78, &unk_2D5320);
  if ((*(v24 + 48))(v17, 1, v26) != 1)
  {
    v56 = v24;
    v54 = *(v24 + 32);
    v55 = v24 + 32;
    v54(v22, v17, v26);
    v57 = v22;
    sub_2CC940();
    v36 = v59;
    (*(v59 + 104))(v10, enum case for PlaybackCode.acousticIDPrivDiscAckNeeded(_:), v6);
    sub_169F98(&qword_352D80, &type metadata accessor for PlaybackCode);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v68[0] == v70)
    {
      v37 = *(v36 + 8);
      v37(v10, v6);
      v37(v12, v6);
    }

    else
    {
      v38 = sub_2CEEA0();
      v53 = v26;
      v39 = *(v36 + 8);
      v39(v10, v6);
      v39(v12, v6);
      v26 = v53;

      if ((v38 & 1) == 0)
      {
        (*(v56 + 8))(v57, v26);
        goto LABEL_3;
      }
    }

    v62 = *(v63 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
    v61 = sub_112C0(_swiftEmptyArrayStorage);
    sub_2CCFB0();
    v40 = sub_2CCF80();
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    v41 = swift_allocObject();
    swift_weakInit();
    v43 = v56;
    v42 = v57;
    v44 = v58;
    (*(v56 + 16))(v58, v57, v26);
    v45 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v46 = (v19 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v64;
    *(v47 + 16) = v41;
    *(v47 + 24) = v48;
    *(v47 + 32) = v66;
    v54((v47 + v45), v44, v26);
    v49 = (v47 + v46);
    v50 = v67;
    *v49 = v65;
    v49[1] = v50;

    sub_37600(v61, v40, v68, sub_1693FC, v47);

    sub_30B8(v68, &qword_34C6C0, &qword_2D0710);
    (*(v43 + 8))(v42, v26);
  }

  sub_30B8(v17, &qword_352D78, &unk_2D5320);
LABEL_3:
  v27 = *(v63 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v61;
  sub_F3F4(v62, v61, &qword_352D78, &unk_2D5320);
  v30 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v64;
  v32[2] = v28;
  v32[3] = v33;
  v32[4] = v66;
  sub_14A58(v29, v32 + v30, &qword_352D78, &unk_2D5320);
  v34 = (v32 + v31);
  v35 = v67;
  *v34 = v65;
  v34[1] = v35;

  sub_F4708(sub_169348, v32);
}

uint64_t sub_161994(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v173 = a7;
  v174 = a6;
  v147 = a5;
  v154 = a4;
  v148 = a3;
  v159 = a1;
  v7 = sub_2C9EC0();
  v175 = *(v7 - 8);
  v176 = v7;
  v8 = *(v175 + 64);
  __chkstk_darwin(v7);
  v172 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AcousticIDFlow.State(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v166 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v171 = &v144 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v169 = &v144 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v168 = &v144 - v21;
  v22 = sub_2CB970();
  v170 = *(v22 - 8);
  v23 = *(v170 + 64);
  __chkstk_darwin(v22);
  v167 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2CC950();
  v145 = *(v146 - 8);
  v25 = *(v145 + 64);
  __chkstk_darwin(v146);
  v27 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2CCB30();
  v164 = *(v165 - 8);
  v28 = *(v164 + 64);
  __chkstk_darwin(v165);
  v161 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2CCAC0();
  v162 = *(v163 - 8);
  v30 = *(v162 + 64);
  __chkstk_darwin(v163);
  v160 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v32 = *(*(v155 - 8) + 64);
  v33 = __chkstk_darwin(v155);
  v156 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v177 = &v144 - v35;
  v36 = sub_20410(&unk_3519A0, &qword_2D0980);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v144 - v38);
  v179 = sub_2CE000();
  v40 = *(v179 - 8);
  v41 = v40[8];
  v42 = __chkstk_darwin(v179);
  v44 = &v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v42);
  v157 = &v144 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v144 - v48;
  __chkstk_darwin(v47);
  v51 = &v144 - v50;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v178 = Strong;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v53 = sub_3ED0(v179, qword_35F6A8);
    v54 = v40[2];
    v150 = v53;
    v152 = v40 + 2;
    v151 = v54;
    (v54)(v49);
    v55 = sub_2CDFE0();
    v56 = sub_2CE690();
    v57 = os_log_type_enabled(v55, v56);
    v158 = v10;
    if (v57)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v55, v56, "AcousticIDFlow#errorDialog (privacy disclosure acknowledgement needed)", v58, 2u);
    }

    v59 = v40[1];
    v60 = v179;
    v153 = v40 + 1;
    v59(v49, v179);
    sub_F3F4(v159, v39, &unk_3519A0, &qword_2D0980);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v149 = v22;
    if (EnumCaseMultiPayload == 1)
    {
      v62 = *v39;
      v151(v44, v150, v60);
      swift_errorRetain();
      v63 = sub_2CDFE0();
      v64 = sub_2CE680();

      v65 = os_log_type_enabled(v63, v64);
      v177 = v62;
      if (v65)
      {
        v66 = v59;
        v67 = v22;
        v68 = swift_slowAlloc();
        v69 = v60;
        v70 = swift_slowAlloc();
        v180[0] = v70;
        *v68 = 136315138;
        swift_getErrorValue();
        v180[5] = sub_2CEEF0();
        v180[6] = v71;
        v72 = sub_2CE3C0();
        v74 = sub_3F08(v72, v73, v180);

        *(v68 + 4) = v74;
        _os_log_impl(&dword_0, v63, v64, "AcousticIDFlow#errorDialog Could not properly create dialog %s, silently failing (privacy disclosure acknowledgement needed)", v68, 0xCu);
        sub_306C(v70);

        v22 = v67;

        v66(v44, v69);
      }

      else
      {

        v59(v44, v60);
      }

      v89 = v160;
      v90 = v166;
      swift_storeEnumTagMultiPayload();
      v91 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v92 = v178;
      swift_beginAccess();
      sub_1694A4(v90, v92 + v91);
      swift_endAccess();
      v93 = (v92 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
      v94 = v92;
      v95 = *(v92 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v96 = *(v92 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0(v93, v95);
      (*(v96 + 24))(v95, v96);
      v97 = v162;
      v98 = v163;
      (*(v162 + 104))(v89, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v163);
      v99 = v164;
      v100 = v161;
      v101 = v165;
      (*(v164 + 104))(v161, enum case for AdditionalMetricsDescription.SourceFunction.pdanDlg(_:), v165);
      swift_getErrorValue();
      sub_2CEEF0();
      v179 = sub_2CCAE0();
      v166 = v102;

      (*(v99 + 8))(v100, v101);
      (*(v97 + 8))(v89, v98);
      v103 = *(v94 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v165 = *(v94 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v94 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v103);
      v104 = v170;
      v105 = v167;
      (*(v170 + 104))(v167, enum case for TypeOfIntent.acousticID(_:), v22);
      v106 = enum case for ActivityType.failed(_:);
      v107 = sub_2C9C20();
      v108 = *(v107 - 8);
      v109 = v168;
      (*(v108 + 104))(v168, v106, v107);
      (*(v108 + 56))(v109, 0, 1, v107);
      v110 = sub_2CA130();
      v111 = v169;
      (*(*(v110 - 8) + 56))(v169, 1, 1, v110);
      v112 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v113 = sub_2C98F0();
      v114 = *(v113 - 8);
      v115 = v171;
      (*(v114 + 104))(v171, v112, v113);
      (*(v114 + 56))(v115, 0, 1, v113);
      sub_2CB4C0();

      sub_30B8(v115, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v111, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v109, &qword_34CB88, &unk_2D0D90);
      (*(v104 + 8))(v105, v149);
      v116 = v172;
      sub_2C9E70();
      v174(v116);

      return (*(v175 + 8))(v116, v176);
    }

    else
    {
      v159 = v59;
      sub_14A58(v39, v177, &qword_34C6E8, &unk_2D0FF0);
      v81 = v160;
      v82 = v162;
      v83 = v163;
      if (v154)
      {
        (*(v162 + 104))(v160, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v163);
        v84 = v164;
        v85 = v161;
        v86 = v165;
        (*(v164 + 104))(v161, enum case for AdditionalMetricsDescription.SourceFunction.pdanDlg(_:), v165);
        v148 = sub_2CCAE0();
        v154 = v87;
        v88 = &enum case for SiriKitReliabilityCodes.renderingError(_:);
      }

      else
      {
        (*(v162 + 104))(v160, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v163);
        v84 = v164;
        v85 = v161;
        v86 = v165;
        (*(v164 + 104))(v161, enum case for AdditionalMetricsDescription.SourceFunction.pdanDlg(_:), v165);
        (*(v145 + 16))(v27, v147, v146);
        sub_2CE2A0();
        v148 = sub_2CCAE0();
        v154 = v117;

        v88 = &enum case for SiriKitReliabilityCodes.genericError(_:);
      }

      (*(v84 + 8))(v85, v86);
      (*(v82 + 8))(v81, v83);
      v164 = *(v178 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v165 = *(v178 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v163 = sub_35E0((v178 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v164);
      v118 = v170;
      v119 = v167;
      (*(v170 + 104))(v167, enum case for TypeOfIntent.acousticID(_:), v22);
      v120 = enum case for ActivityType.failed(_:);
      v121 = sub_2C9C20();
      v122 = *(v121 - 8);
      v123 = v168;
      (*(v122 + 104))(v168, v120, v121);
      (*(v122 + 56))(v123, 0, 1, v121);
      v124 = sub_2CA130();
      v125 = *(v124 - 8);
      v126 = v169;
      (*(v125 + 56))(v169, 1, 1, v124);
      v127 = *v88;
      v128 = sub_2C98F0();
      v129 = *(v128 - 8);
      v130 = v171;
      (*(v129 + 104))(v171, v127, v128);
      (*(v129 + 56))(v130, 0, 1, v128);
      sub_2CB4C0();

      sub_30B8(v130, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v126, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v123, &qword_34CB88, &unk_2D0D90);
      (*(v118 + 8))(v119, v149);
      v131 = v156;
      sub_F3F4(v177, v156, &qword_34C6E8, &unk_2D0FF0);
      v132 = *(v131 + *(v155 + 48));
      sub_1645F8(v131, v132);

      (*(v125 + 8))(v131, v124);
      v133 = v157;
      v134 = v179;
      v151(v157, v150, v179);
      v135 = sub_2CDFE0();
      v136 = sub_2CE690();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&dword_0, v135, v136, "AcousticIDFlow#errorDialog Dialog successfully generated, responding and exiting (privacy disclosure acknowledgement needed)", v137, 2u);
      }

      v159(v133, v134);
      v138 = v166;
      swift_storeEnumTagMultiPayload();
      v139 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v140 = v178;
      swift_beginAccess();
      sub_1694A4(v138, v140 + v139);
      swift_endAccess();
      v141 = *(v140 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v142 = *(v140 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v140 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v141);
      (*(v142 + 24))(v141, v142);
      v143 = v172;
      sub_2C9E70();
      v174(v143);

      (*(v175 + 8))(v143, v176);
      return sub_30B8(v177, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v75 = v179;
    v76 = sub_3ED0(v179, qword_35F6A8);
    (v40[2])(v51, v76, v75);
    v77 = sub_2CDFE0();
    v78 = sub_2CE680();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "AcousticIDFlow#errorDialog self deallocated prematurely (privacy disclosure acknowledgement needed)", v79, 2u);
    }

    return (v40[1])(v51, v75);
  }
}

uint64_t sub_162E88(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v172 = a7;
  v173 = a6;
  v147 = a5;
  v154 = a4;
  v148 = a3;
  v158 = a1;
  v7 = sub_2C9EC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v171 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for AcousticIDFlow.State(0);
  v11 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v166 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v170 = &v142 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v169 = &v142 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v168 = &v142 - v21;
  v176 = sub_2CB970();
  v22 = *(v176 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v176);
  v167 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_20410(&qword_352D78, &unk_2D5320);
  v25 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v145 = &v142 - v26;
  v164 = sub_2CCB30();
  v163 = *(v164 - 8);
  v27 = *(v163 + 64);
  __chkstk_darwin(v164);
  v160 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2CCAC0();
  v161 = *(v162 - 8);
  v29 = *(v161 + 64);
  __chkstk_darwin(v162);
  v159 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v31 = *(*(v155 - 8) + 64);
  v32 = __chkstk_darwin(v155);
  v156 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v174 = &v142 - v34;
  v35 = sub_20410(&unk_3519A0, &qword_2D0980);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v142 - v37);
  v177 = sub_2CE000();
  v39 = *(v177 - 8);
  v40 = v39[8];
  v41 = __chkstk_darwin(v177);
  v43 = &v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v157 = &v142 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v142 - v47;
  __chkstk_darwin(v46);
  v50 = &v142 - v49;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v175 = Strong;
    v153 = v7;
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v52 = v177;
    v53 = sub_3ED0(v177, qword_35F6A8);
    v54 = v39[2];
    v149 = v53;
    v151 = v39 + 2;
    v150 = v54;
    (v54)(v48);
    v55 = sub_2CDFE0();
    v56 = sub_2CE690();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "AcousticIDFlow#errorDialog", v57, 2u);
      v52 = v177;
    }

    v60 = v39[1];
    v58 = v39 + 1;
    v59 = v60;
    v60(v48, v52);
    sub_F3F4(v158, v38, &unk_3519A0, &qword_2D0980);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v152 = v8;
    if (EnumCaseMultiPayload == 1)
    {
      v62 = *v38;
      v150(v43, v149, v52);
      swift_errorRetain();
      v63 = sub_2CDFE0();
      v64 = sub_2CE680();

      v65 = os_log_type_enabled(v63, v64);
      v143 = v22;
      if (v65)
      {
        v66 = v52;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v158 = v59;
        v69 = v68;
        v178[0] = v68;
        *v67 = 136315138;
        swift_getErrorValue();
        v178[5] = sub_2CEEF0();
        v178[6] = v70;
        v71 = sub_2CE3C0();
        v73 = v62;
        v74 = sub_3F08(v71, v72, v178);

        *(v67 + 4) = v74;
        v62 = v73;
        _os_log_impl(&dword_0, v63, v64, "AcousticIDFlow#errorDialog Could not properly create dialog %s, silently failing", v67, 0xCu);
        sub_306C(v69);

        v158(v43, v66);
      }

      else
      {

        v59(v43, v52);
      }

      v90 = v159;
      v177 = v62;
      v91 = v166;
      swift_storeEnumTagMultiPayload();
      v92 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v93 = v175;
      swift_beginAccess();
      sub_1694A4(v91, v93 + v92);
      swift_endAccess();
      v94 = *(v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v95 = *(v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v94);
      (*(v95 + 24))(v94, v95);
      v96 = v161;
      v97 = v162;
      (*(v161 + 104))(v90, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v162);
      v98 = v163;
      v99 = v160;
      v100 = v164;
      (*(v163 + 104))(v160, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v164);
      swift_getErrorValue();
      sub_2CEEF0();
      v174 = sub_2CCAE0();
      v166 = v101;

      (*(v98 + 8))(v99, v100);
      (*(v96 + 8))(v90, v97);
      v102 = *(v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v165 = *(v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v93 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v102);
      v103 = v143;
      v104 = v167;
      (*(v143 + 104))(v167, enum case for TypeOfIntent.acousticID(_:), v176);
      v105 = enum case for ActivityType.failed(_:);
      v106 = sub_2C9C20();
      v107 = *(v106 - 8);
      v108 = v168;
      (*(v107 + 104))(v168, v105, v106);
      (*(v107 + 56))(v108, 0, 1, v106);
      v109 = sub_2CA130();
      v110 = v169;
      (*(*(v109 - 8) + 56))(v169, 1, 1, v109);
      v111 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v112 = sub_2C98F0();
      v113 = *(v112 - 8);
      v114 = v170;
      (*(v113 + 104))(v170, v111, v112);
      (*(v113 + 56))(v114, 0, 1, v112);
      sub_2CB4C0();

      sub_30B8(v114, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v110, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v108, &qword_34CB88, &unk_2D0D90);
      (*(v103 + 8))(v104, v176);
      v115 = v171;
      sub_2C9E70();
      v173(v115);

      return (*(v152 + 8))(v115, v153);
    }

    else
    {
      v158 = v59;
      v81 = v22;
      sub_14A58(v38, v174, &qword_34C6E8, &unk_2D0FF0);
      v82 = v159;
      v144 = v58;
      v83 = v161;
      v84 = v162;
      if (v154)
      {
        (*(v161 + 104))(v159, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v162);
        v85 = v163;
        v86 = v160;
        v87 = v164;
        (*(v163 + 104))(v160, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v164);
        v148 = sub_2CCAE0();
        v154 = v88;
        v89 = &enum case for SiriKitReliabilityCodes.renderingError(_:);
      }

      else
      {
        (*(v161 + 104))(v159, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v162);
        v85 = v163;
        v86 = v160;
        v87 = v164;
        (*(v163 + 104))(v160, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v164);
        sub_F3F4(v147, v145, &qword_352D78, &unk_2D5320);
        sub_2CE2A0();
        v148 = sub_2CCAE0();
        v154 = v116;

        v89 = &enum case for SiriKitReliabilityCodes.genericError(_:);
      }

      (*(v85 + 8))(v86, v87);
      (*(v83 + 8))(v82, v84);
      v163 = *(v175 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v164 = *(v175 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      v162 = sub_35E0((v175 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v163);
      v117 = v167;
      (*(v81 + 104))(v167, enum case for TypeOfIntent.acousticID(_:), v176);
      v118 = enum case for ActivityType.failed(_:);
      v119 = sub_2C9C20();
      v120 = *(v119 - 8);
      v121 = v168;
      (*(v120 + 104))(v168, v118, v119);
      (*(v120 + 56))(v121, 0, 1, v119);
      v122 = sub_2CA130();
      v123 = *(v122 - 8);
      v124 = v169;
      (*(v123 + 56))(v169, 1, 1, v122);
      v125 = *v89;
      v126 = sub_2C98F0();
      v127 = *(v126 - 8);
      v128 = v170;
      (*(v127 + 104))(v170, v125, v126);
      (*(v127 + 56))(v128, 0, 1, v126);
      sub_2CB4C0();

      sub_30B8(v128, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v124, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v121, &qword_34CB88, &unk_2D0D90);
      (*(v81 + 8))(v117, v176);
      v129 = v156;
      sub_F3F4(v174, v156, &qword_34C6E8, &unk_2D0FF0);
      v130 = *(v129 + *(v155 + 48));
      sub_1645F8(v129, v130);

      (*(v123 + 8))(v129, v122);
      v131 = v157;
      v132 = v177;
      v150(v157, v149, v177);
      v133 = sub_2CDFE0();
      v134 = sub_2CE690();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_0, v133, v134, "AcousticIDFlow#errorDialog Dialog successfully generated, responding and exiting", v135, 2u);
      }

      v158(v131, v132);
      v136 = v166;
      swift_storeEnumTagMultiPayload();
      v137 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state;
      v138 = v175;
      swift_beginAccess();
      sub_1694A4(v136, v138 + v137);
      swift_endAccess();
      v139 = *(v138 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 24);
      v140 = *(v138 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer + 32);
      sub_35E0((v138 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer), v139);
      (*(v140 + 24))(v139, v140);
      v141 = v171;
      sub_2C9E70();
      v173(v141);

      (*(v152 + 8))(v141, v153);
      return sub_30B8(v174, &qword_34C6E8, &unk_2D0FF0);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v75 = v177;
    v76 = sub_3ED0(v177, qword_35F6A8);
    (v39[2])(v50, v76, v75);
    v77 = sub_2CDFE0();
    v78 = sub_2CE680();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "AcousticIDFlow#errorDialog self deallocated prematurely", v79, 2u);
    }

    return (v39[1])(v50, v75);
  }
}

uint64_t sub_164330(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_164350, 0, 0);
}

uint64_t sub_164350()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_EEAC(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager, (v0 + 2));

    v3 = v0[5];
    v4 = v0[6];
    sub_35E0(v0 + 2, v3);
    v5 = async function pointer to dispatch thunk of ShazamSessionManaging.sessionIDString()[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_164488;

    return dispatch thunk of ShazamSessionManaging.sessionIDString()(v3, v4);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    v7[1] = 0;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_164488(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v6 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return _swift_task_switch(sub_164588, 0, 0);
}

uint64_t sub_164588()
{
  sub_306C((v0 + 16));
  **(v0 + 80) = *(v0 + 104);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1645F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v43 = sub_2CE000();
  v41 = *(v43 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v43);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_2CA130();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  v42 = v9;
  *&v15[*(v9 + 48)] = a2;
  v18 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 32);
  sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider + 24));
  v19 = a2;
  if (sub_2CC4B0())
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v39 = v17;
    v40 = v16;
    v20 = v43;
    v21 = sub_3ED0(v43, qword_35F6A8);
    v22 = v41;
    (*(v41 + 16))(v8, v21, v20);
    v23 = sub_2CDFE0();
    v24 = sub_2CE690();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136446210;
      v27 = sub_2CCCA0();
      v38 = v3;
      v29 = sub_3F08(v27, v28, &v44);
      v3 = v38;

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "AcousticIDFlow#publishCancelOutputWithRF... %{public}s", v25, 0xCu);
      sub_306C(v26);

      (*(v22 + 8))(v8, v43);
    }

    else
    {

      (*(v22 + 8))(v8, v20);
    }

    v34 = sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider + 24));
    sub_F3F4(v15, v13, &qword_34C6E8, &unk_2D0FF0);
    v35 = *&v13[*(v42 + 48)];
    v36 = swift_allocObject();
    swift_weakInit();
    sub_1C4EF8(v13, v35, *v34, v36);

    sub_30B8(v15, &qword_34C6E8, &unk_2D0FF0);

    return (*(v39 + 8))(v13, v40);
  }

  else
  {
    v30 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory);
    v31 = sub_2C9BE0();
    v32 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync + 32);
    sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync + 24));
    sub_2CA3E0();

    return sub_30B8(v15, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_164A58(uint64_t a1)
{
  v98 = a1;
  v106 = sub_2CE000();
  v105 = *(v106 - 8);
  v1 = *(v105 + 64);
  v2 = __chkstk_darwin(v106);
  v4 = &v93[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v96 = &v93[-v5];
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v104 = &v93[-v8];
  v9 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v102 = &v93[-v11];
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v101 = &v93[-v14];
  v107 = sub_2CB970();
  v103 = *(v107 - 8);
  v15 = *(v103 + 64);
  __chkstk_darwin(v107);
  v100 = &v93[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2CCB20();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = sub_2CCB30();
  v22 = *(v99 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v99);
  v25 = &v93[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_2CCAC0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v93[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_F3F4(v98, v110, qword_34C798, &qword_2D0DA0);
    v97 = v32;
    if (v111)
    {
      v95 = v26;
      v98 = *&v110[0];
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v33 = v106;
      v34 = sub_3ED0(v106, qword_35F6A8);
      v35 = v105;
      v36 = v96;
      (*(v105 + 16))(v96, v34, v33);
      swift_errorRetain();
      v37 = sub_2CDFE0();
      v38 = sub_2CE680();

      v94 = v38;
      v39 = v38;
      v40 = v37;
      if (os_log_type_enabled(v37, v39))
      {
        v41 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *v41 = 136315394;
        swift_getErrorValue();
        v108[0] = sub_2CEEF0();
        v108[1] = v42;
        v43 = sub_2CE3C0();
        v45 = sub_3F08(v43, v44, &v109);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v46 = sub_2CCCA0();
        v48 = sub_3F08(v46, v47, &v109);

        *(v41 + 14) = v48;
        _os_log_impl(&dword_0, v40, v94, "AcousticIDFlow#publishCancelOutput failed to create output %s  %{public}s", v41, 0x16u);
        swift_arrayDestroy();

        (*(v35 + 8))(v96, v106);
      }

      else
      {

        (*(v35 + 8))(v36, v33);
      }

      v77 = v95;
      (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v95);
      v78 = v99;
      (*(v22 + 104))(v25, enum case for AdditionalMetricsDescription.SourceFunction.pubCnclOutput(_:), v99);
      swift_getErrorValue();
      sub_2CEEF0();
      v106 = sub_2CCAE0();
      v105 = v79;

      (*(v22 + 8))(v25, v78);
      (*(v27 + 8))(v30, v77);
      v80 = *(v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v99 = *(v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 32);
      sub_35E0((v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider), v80);
      v81 = v103;
      v82 = v100;
      (*(v103 + 104))(v100, enum case for TypeOfIntent.acousticID(_:), v107);
      v83 = enum case for ActivityType.failed(_:);
      v84 = sub_2C9C20();
      v85 = *(v84 - 8);
      v86 = v101;
      (*(v85 + 104))(v101, v83, v84);
      (*(v85 + 56))(v86, 0, 1, v84);
      v87 = sub_2CA130();
      v88 = v102;
      (*(*(v87 - 8) + 56))(v102, 1, 1, v87);
      v89 = enum case for SiriKitReliabilityCodes.renderingError(_:);
      v90 = sub_2C98F0();
      v91 = *(v90 - 8);
      v92 = v104;
      (*(v91 + 104))(v104, v89, v90);
      (*(v91 + 56))(v92, 0, 1, v90);
      sub_2CB4C0();

      sub_30B8(v92, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v88, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v86, &qword_34CB88, &unk_2D0D90);
      return (*(v81 + 8))(v82, v107);
    }

    else
    {
      sub_F338(v110, v108);
      (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.ModuleName.aidf(_:), v26);
      v60 = v99;
      (*(v22 + 104))(v25, enum case for AdditionalMetricsDescription.SourceFunction.pubCnclOutput(_:), v99);
      (*(v18 + 104))(v21, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v17);
      v106 = sub_2CCAD0();
      v105 = v61;
      (*(v18 + 8))(v21, v17);
      (*(v22 + 8))(v25, v60);
      (*(v27 + 8))(v30, v26);
      v62 = (v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
      v63 = *(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider + 24);
      v99 = v62[4];
      sub_35E0(v62, v63);
      v64 = v103;
      v65 = v100;
      (*(v103 + 104))(v100, enum case for TypeOfIntent.acousticID(_:), v107);
      v66 = enum case for ActivityType.completed(_:);
      v67 = sub_2C9C20();
      v68 = *(v67 - 8);
      v69 = v101;
      (*(v68 + 104))(v101, v66, v67);
      (*(v68 + 56))(v69, 0, 1, v67);
      v70 = sub_2CA130();
      v71 = v102;
      (*(*(v70 - 8) + 56))(v102, 1, 1, v70);
      v72 = enum case for SiriKitReliabilityCodes.success(_:);
      v73 = sub_2C98F0();
      v74 = *(v73 - 8);
      v75 = v104;
      (*(v74 + 104))(v104, v72, v73);
      (*(v74 + 56))(v75, 0, 1, v73);
      sub_2CB4C0();

      sub_30B8(v75, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v71, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v69, &qword_34CB88, &unk_2D0D90);
      (*(v64 + 8))(v65, v107);
      v76 = *(v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 32);
      sub_35E0((v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher), *(v97 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher + 24));
      sub_2CA010();

      return sub_306C(v108);
    }
  }

  else
  {
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v49 = v106;
    v50 = sub_3ED0(v106, qword_35F6A8);
    v51 = v105;
    (*(v105 + 16))(v4, v50, v49);
    v52 = sub_2CDFE0();
    v53 = sub_2CE680();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v110[0] = v55;
      *v54 = 136446210;
      v56 = sub_2CCCA0();
      v58 = sub_3F08(v56, v57, v110);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_0, v52, v53, "AcousticIDFlow#errorDialog self deallocated prematurely  %{public}s", v54, 0xCu);
      sub_306C(v55);
    }

    return (*(v51 + 8))(v4, v49);
  }
}

uint64_t sub_165924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v14, v15, "AcousticIDFlow#successfulMatchSnippet executing", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v18 = *(v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider + 32);
  sub_35E0((v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider), *(v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider + 24));
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1674B4;
  *(v19 + 24) = v17;

  sub_2CC750();
}

uint64_t sub_165B88(int a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v153 = a4;
  v154 = a3;
  LODWORD(v152) = a1;
  v145 = sub_2C8E80();
  v144 = *(v145 - 8);
  v5 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_352D38, &unk_2D52E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v142 = &v124 - v9;
  v148 = sub_2C9360();
  v147 = *(v148 - 8);
  v10 = *(v147 + 64);
  __chkstk_darwin(v148);
  v146 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_20410(&unk_3519B0, &qword_2D1230);
  v12 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v140 = &v124 - v13;
  v14 = sub_2CE000();
  v162 = *(v14 - 8);
  v163 = v14;
  v15 = *(v162 + 64);
  v16 = __chkstk_darwin(v14);
  v150 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v151 = &v124 - v19;
  __chkstk_darwin(v18);
  v149 = &v124 - v20;
  matched = type metadata accessor for ShazamSuccessfulMatchModel();
  v22 = *(*(matched - 1) + 64);
  v23 = __chkstk_darwin(matched);
  v25 = (&v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a2[2];
  v28 = a2[4];
  v27 = a2[5];
  v155 = a2[3];
  v156 = v28;
  *&v164 = v27;
  v29 = a2[7];
  v157 = a2[6];
  v158 = v29;
  v31 = a2[8];
  v30 = a2[9];
  v32 = a2[15];
  v159 = a2[14];
  v160 = v32;
  v33 = a2[10];
  v161 = a2[11];
  v34 = *(v23 + 40);
  v133 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_appleMusicURL, v25 + v34, &unk_3519B0, &qword_2D1230);
  v35 = matched[11];
  v134 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_webURL, v25 + v35, &unk_3519B0, &qword_2D1230);
  v36 = matched[12];
  v135 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_artworkURL, v25 + v36, &unk_3519B0, &qword_2D1230);
  v37 = matched[13];
  v136 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL;
  sub_F3F4(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_videoURL, v25 + v37, &unk_3519B0, &qword_2D1230);
  v38 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_explicitContent);
  v39 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc);
  v40 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14ShazamKitMatch_isrc + 8);
  v130 = v26;
  *v25 = v26;
  v41 = v156;
  v42 = v164;
  v25[1] = v155;
  v25[2] = v41;
  v43 = v157;
  v44 = v158;
  v25[3] = v42;
  v25[4] = v43;
  v25[5] = v44;
  v25[6] = v31;
  v131 = v31;
  v45 = v159;
  v46 = v160;
  v25[7] = v30;
  v25[8] = v45;
  v25[9] = v46;
  v25[10] = v33;
  v132 = v33;
  v25[11] = v161;
  v47 = matched[14];
  v137 = v38;
  *(v25 + v47) = v38;
  v48 = (v25 + matched[15]);
  v138 = v39;
  *v48 = v39;
  v48[1] = v40;
  *(v25 + matched[16]) = v152;
  v49 = sub_2C8B80();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v152 = swift_allocObject();
  v139 = v40;

  sub_2C8B70();
  sub_169F98(&qword_352D40, type metadata accessor for ShazamSuccessfulMatchModel);
  v52 = sub_2C8B60();
  v126 = v30;
  v53 = v140;
  v54 = v149;
  v151 = v55;
  v152 = v52;
  sub_16A324(v25, type metadata accessor for ShazamSuccessfulMatchModel);

  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v56 = v163;
  v57 = sub_3ED0(v163, qword_35F6A8);
  v58 = v162;
  v59 = *(v162 + 16);
  v129 = v57;
  v128 = v162 + 16;
  v127 = v59;
  (v59)(v54);
  v60 = a2;

  v61 = sub_2CDFE0();
  v62 = sub_2CE690();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v164;
  if (v63)
  {
    v65 = v53;
    v66 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v167 = v125;
    *v66 = 136317954;
    v165 = v130;
    v166 = v155;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    LODWORD(v155) = v62;
    v67 = sub_2CE2A0();
    v130 = v61;
    v69 = sub_3F08(v67, v68, &v167);

    *(v66 + 4) = v69;
    *(v66 + 12) = 2080;
    v165 = v156;
    v166 = v64;

    v70 = sub_2CE2A0();
    v72 = sub_3F08(v70, v71, &v167);

    *(v66 + 14) = v72;
    *(v66 + 22) = 2080;
    v165 = v157;
    v166 = v158;

    v73 = sub_2CE2A0();
    v75 = sub_3F08(v73, v74, &v167);

    *(v66 + 24) = v75;
    *(v66 + 32) = 2080;
    v165 = v131;
    v166 = v126;

    v76 = sub_2CE2A0();
    v78 = sub_3F08(v76, v77, &v167);

    *(v66 + 34) = v78;
    *(v66 + 42) = 2080;
    v165 = v159;
    v166 = v160;

    v79 = sub_2CE2A0();
    v81 = sub_3F08(v79, v80, &v167);

    *(v66 + 44) = v81;
    *(v66 + 52) = 2080;
    v165 = v132;
    v166 = v161;

    v82 = sub_2CE2A0();
    v84 = sub_3F08(v82, v83, &v167);

    *(v66 + 54) = v84;
    *(v66 + 62) = 2080;
    sub_F3F4(v60 + v133, v65, &unk_3519B0, &qword_2D1230);
    v85 = sub_2CE2A0();
    v87 = sub_3F08(v85, v86, &v167);

    *(v66 + 64) = v87;
    *(v66 + 72) = 2080;
    sub_F3F4(v60 + v134, v65, &unk_3519B0, &qword_2D1230);
    v88 = sub_2CE2A0();
    v90 = sub_3F08(v88, v89, &v167);

    *(v66 + 74) = v90;
    *(v66 + 82) = 2080;
    sub_F3F4(v60 + v135, v65, &unk_3519B0, &qword_2D1230);
    v91 = sub_2CE2A0();
    v93 = sub_3F08(v91, v92, &v167);

    *(v66 + 84) = v93;
    *(v66 + 92) = 2080;
    sub_F3F4(v60 + v136, v65, &unk_3519B0, &qword_2D1230);
    v94 = sub_2CE2A0();
    v96 = sub_3F08(v94, v95, &v167);

    *(v66 + 94) = v96;
    *(v66 + 102) = 2080;
    LOBYTE(v165) = v137;
    sub_20410(&qword_352D58, &qword_2D5308);
    v97 = sub_2CE2A0();
    v99 = sub_3F08(v97, v98, &v167);

    *(v66 + 104) = v99;
    *(v66 + 112) = 2080;
    v100 = v162;
    v56 = v163;
    v165 = v138;
    v166 = v139;

    v101 = sub_2CE2A0();
    v103 = sub_3F08(v101, v102, &v167);

    *(v66 + 114) = v103;
    v104 = v130;
    _os_log_impl(&dword_0, v130, v155, "AcousticIDFlow#successfulMatchSnippet Logs skID: %s title: %s subtitle: %s artist: %s genre: %s appleMusicID: %s appleMusicURL: %s webURL: %s artworkURL: %s videoURL: %s explicitContent: %s isrc: %s...", v66, 0x7Au);
    swift_arrayDestroy();

    v105 = *(v100 + 8);
    v105(v149, v56);
  }

  else
  {

    v105 = *(v58 + 8);
    v105(v54, v56);
  }

  v106 = v148;
  v107 = v147;
  sub_20410(&qword_352D48, &qword_2D52F0);
  v108 = swift_allocObject();
  v164 = xmmword_2D0090;
  *(v108 + 16) = xmmword_2D0090;
  sub_20410(&qword_352D50, &unk_2D52F8);
  v109 = swift_allocObject();
  *(v109 + 16) = v164;
  *(v109 + 56) = sub_2C9310();
  *(v109 + 64) = &protocol witness table for CustomCanvas;
  sub_F390((v109 + 32));
  sub_525D4(v152, v151);
  sub_2C9300();
  v110 = sub_2C92F0();
  (*(*(v110 - 8) + 56))(v142, 1, 1, v110);
  v111 = sub_2C9320();
  sub_1682F0(v111);

  *(v108 + 56) = sub_2C9340();
  *(v108 + 64) = &protocol witness table for Section;
  sub_F390((v108 + 32));
  sub_2C9350();
  v112 = v146;
  sub_2C9370();
  v113 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  v114 = v143;
  sub_2C8E70();
  sub_2C8E50();
  (*(v144 + 8))(v114, v145);
  v115 = sub_2CE260();

  [v113 setAceId:v115];

  v116 = v113;
  v117 = sub_2CE260();
  [v116 setViewId:v117];

  v118 = v150;
  v127(v150, v129, v56);
  v119 = sub_2CDFE0();
  v120 = sub_2CE690();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    *v121 = 0;
    _os_log_impl(&dword_0, v119, v120, "AcousticIDFlow#successfulMatchSnippet Successfully generate iOS view", v121, 2u);
    v118 = v150;
  }

  v105(v118, v56);
  v122 = v116;
  v154(v116);

  sub_52628(v152, v151);
  return (*(v107 + 8))(v112, v106);
}

uint64_t sub_166AE8(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3)
{
  v47 = a2;
  v5 = sub_2CC860();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  v7 = __chkstk_darwin(v5);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = sub_2CC380();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v16, qword_35F6A8);
  (*(v17 + 16))(v20, v21, v16);
  v22 = *(v12 + 16);
  v44 = a1;
  v22(v15, a1, v11);
  v23 = v16;
  v24 = sub_2CDFE0();
  v25 = sub_2CE690();
  v43 = v11;
  v26 = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v42 = a3;
    v28 = v27;
    v39 = swift_slowAlloc();
    v49 = v39;
    *v28 = 136315138;
    v40 = v23;
    sub_2CC370();
    v29 = sub_2CE2A0();
    v41 = v5;
    v31 = v30;
    (*(v12 + 8))(v15, v43);
    v32 = sub_3F08(v29, v31, &v49);
    v5 = v41;

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v24, v26, "AcousticIDFlow#checkSubscriptionStatus subscription status: %s", v28, 0xCu);
    sub_306C(v39);

    (*(v17 + 8))(v20, v40);
  }

  else
  {

    (*(v12 + 8))(v15, v43);
    (*(v17 + 8))(v20, v23);
  }

  v33 = v10;
  sub_2CC370();
  v35 = v45;
  v34 = v46;
  (*(v46 + 104))(v45, enum case for MusicSubscriptionStatus.subscribed(_:), v5);
  sub_169F98(&qword_352D30, &type metadata accessor for MusicSubscriptionStatus);
  sub_2CE3E0();
  sub_2CE3E0();
  v36 = *(v34 + 8);
  v36(v35, v5);
  v36(v33, v5);
  return v47(v49 == v48);
}

uint64_t sub_166F90()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input, &qword_34E480, &qword_2D2280);
  sub_16A324(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state, type metadata accessor for AcousticIDFlow.State);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync));
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider));
  return v0;
}

uint64_t sub_16708C()
{
  sub_166F90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_16710C()
{
  sub_1672D0(319, &qword_34E5A0, &type metadata accessor for Input);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for AcousticIDFlow.State(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_167224()
{
  sub_1672D0(319, &qword_352CF8, &type metadata accessor for PlaybackCodeAndDescription);
  if (v0 <= 0x3F)
  {
    sub_1672D0(319, &unk_352D00, type metadata accessor for ShazamKitMatch);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1672D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_167324(uint64_t a1)
{
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = sub_2CA7B0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
  swift_beginAccess();
  sub_A4888(v6, v7 + v10);
  swift_endAccess();
  return 1;
}

uint64_t sub_167478(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AcousticIDFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1674C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2C9330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail);
  v36 = a2;
  v13 = sub_2CE220();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_169F98(&qword_352D68, &type metadata accessor for _ProtoResponse.LevelOfDetail);
      v23 = sub_2CE250();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1677A8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1677A8(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_2C9330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_167F94(v13);
    }

    else
    {
      sub_167C78(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail);
    v16 = sub_2CE220();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_169F98(&qword_352D68, &type metadata accessor for _ProtoResponse.LevelOfDetail);
        v24 = sub_2CE250();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_167A40();
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2CEED0();
  __break(1u);
  return result;
}

void *sub_167A40()
{
  v1 = v0;
  v2 = sub_2C9330();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352D70, &unk_2D5310);
  v7 = *v0;
  v8 = sub_2CEC70();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_167C78(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2C9330();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_20410(&qword_352D70, &unk_2D5310);
  v10 = sub_2CEC80();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail);
      result = sub_2CE220();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_167F94(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2C9330();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_20410(&qword_352D70, &unk_2D5310);
  result = sub_2CEC80();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail);
      result = sub_2CE220();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1682F0(uint64_t a1)
{
  v2 = sub_2C9330();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_169F98(&qword_352D60, &type metadata accessor for _ProtoResponse.LevelOfDetail);
  result = sub_2CE540();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v9, v15, v2);
      sub_1674C8(v7, v9);
      (*(v12 - 8))(v7, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

id sub_16848C()
{
  v0 = sub_2C8E80();
  v48 = *(v0 - 8);
  v49 = v0;
  v1 = *(v48 + 64);
  __chkstk_darwin(v0);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_352D38, &unk_2D52E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v44 - v5;
  v7 = sub_2C9360();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, qword_35F6A8);
  v54 = v11[2];
  v54(v17, v18, v10);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "AcousticIDFlow#listeningSnippet executing", v21, 2u);
  }

  v22 = v11[1];
  v22(v17, v10);
  v23 = sub_2C8B80();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_2C8B70();
  sub_16A0CC();
  v26 = sub_2C8B60();
  v44 = v22;
  v28 = v27;

  sub_20410(&qword_352D48, &qword_2D52F0);
  v29 = swift_allocObject();
  v46 = xmmword_2D0090;
  *(v29 + 16) = xmmword_2D0090;
  sub_20410(&qword_352D50, &unk_2D52F8);
  v30 = swift_allocObject();
  *(v30 + 16) = v46;
  *(v30 + 56) = sub_2C9310();
  *(v30 + 64) = &protocol witness table for CustomCanvas;
  sub_F390((v30 + 32));
  sub_525D4(v26, v28);
  v45 = v28;
  *&v46 = v26;
  sub_2C9300();
  v31 = sub_2C92F0();
  (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
  v32 = sub_2C9320();
  sub_1682F0(v32);

  *(v29 + 56) = sub_2C9340();
  *(v29 + 64) = &protocol witness table for Section;
  sub_F390((v29 + 32));
  sub_2C9350();
  v33 = v50;
  sub_2C9370();
  v34 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  v35 = v47;
  sub_2C8E70();
  sub_2C8E50();
  (*(v48 + 8))(v35, v49);
  v36 = sub_2CE260();

  [v34 setAceId:v36];

  v37 = v34;
  v38 = sub_2CE260();
  [v37 setViewId:v38];
  v39 = v37;

  v54(v53, v18, v10);
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "AcousticIDFlow#listeningSnippet Successfully generate iOS view", v42, 2u);
  }

  sub_52628(v46, v45);
  v44(v53, v10);
  (*(v51 + 8))(v33, v52);
  return v39;
}

id sub_168BEC()
{
  v0 = sub_2C8E80();
  v48 = *(v0 - 8);
  v49 = v0;
  v1 = *(v48 + 64);
  __chkstk_darwin(v0);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_352D38, &unk_2D52E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v44 - v5;
  v7 = sub_2C9360();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, qword_35F6A8);
  v54 = v11[2];
  v54(v17, v18, v10);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "AcousticIDFlow#noMatchSnippet executing", v21, 2u);
  }

  v22 = v11[1];
  v22(v17, v10);
  v23 = sub_2C8B80();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_2C8B70();
  sub_16A1F4();
  v26 = sub_2C8B60();
  v44 = v22;
  v28 = v27;

  sub_20410(&qword_352D48, &qword_2D52F0);
  v29 = swift_allocObject();
  v46 = xmmword_2D0090;
  *(v29 + 16) = xmmword_2D0090;
  sub_20410(&qword_352D50, &unk_2D52F8);
  v30 = swift_allocObject();
  *(v30 + 16) = v46;
  *(v30 + 56) = sub_2C9310();
  *(v30 + 64) = &protocol witness table for CustomCanvas;
  sub_F390((v30 + 32));
  sub_525D4(v26, v28);
  v45 = v28;
  *&v46 = v26;
  sub_2C9300();
  v31 = sub_2C92F0();
  (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
  v32 = sub_2C9320();
  sub_1682F0(v32);

  *(v29 + 56) = sub_2C9340();
  *(v29 + 64) = &protocol witness table for Section;
  sub_F390((v29 + 32));
  sub_2C9350();
  v33 = v50;
  sub_2C9370();
  v34 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  v35 = v47;
  sub_2C8E70();
  sub_2C8E50();
  (*(v48 + 8))(v35, v49);
  v36 = sub_2CE260();

  [v34 setAceId:v36];

  v37 = v34;
  v38 = sub_2CE260();
  [v37 setViewId:v38];
  v39 = v37;

  v54(v53, v18, v10);
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "AcousticIDFlow#noMatchSnippet Successfully generate iOS view", v42, 2u);
  }

  sub_52628(v46, v45);
  v44(v53, v10);
  (*(v51 + 8))(v33, v52);
  return v39;
}

uint64_t sub_169348(void (*a1)(char *, uint64_t))
{
  v3 = *(sub_20410(&qword_352D78, &unk_2D5320) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_162E88(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1693FC(void (*a1)(char *, uint64_t))
{
  v3 = *(sub_2CC950() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_161994(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1694A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcousticIDFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_169514(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1606B4(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_169634(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24C84;

  return sub_164330(a1, v1);
}

uint64_t sub_169708()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_169774(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_169804(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_2CD330() - 8);
  return sub_157D00(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), v3 + v8, v3 + v11, *(v3 + v12), v3 + ((v12 + *(v13 + 80) + 8) & ~*(v13 + 80)));
}

uint64_t sub_169980(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24C84;

  return sub_158B28(a1, v1 + v6, v12, v13, v14, v1 + v10);
}

uint64_t sub_169B10(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_E664;

  return sub_164330(a1, v1);
}

uint64_t sub_169BBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CD330() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24C84;

  return sub_159424(a1, v1 + v6, v13, v1 + v9, v1 + v12);
}

uint64_t sub_169D88()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_2CA000();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v5 + 8) & ~v5;
  v12 = *(v0 + v9 + 8);

  v13 = *(v0 + v10);

  v14 = sub_2CA130();
  (*(*(v14 - 8) + 8))(v0 + v11, v14);

  return _swift_deallocObject(v0, v11 + v6);
}

uint64_t sub_169F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_16A0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_16A0CC()
{
  result = qword_352D90;
  if (!qword_352D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352D90);
  }

  return result;
}

uint64_t sub_16A138()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

unint64_t sub_16A1F4()
{
  result = qword_352D98;
  if (!qword_352D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_352D98);
  }

  return result;
}

uint64_t sub_16A26C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_16A2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcousticIDFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16A324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_16A394(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t DetermineFlowStrategy.actionForInput(input:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v94 = a1;
  v3 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v89 = &v80 - v5;
  v6 = sub_2CD490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v80 - v12;
  __chkstk_darwin(v11);
  v88 = &v80 - v13;
  v14 = sub_2CA870();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  v16 = __chkstk_darwin(v14);
  v91 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v80 - v18;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v87 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v83 = &v80 - v25;
  v26 = __chkstk_darwin(v24);
  v90 = &v80 - v27;
  v28 = __chkstk_darwin(v26);
  v84 = &v80 - v29;
  __chkstk_darwin(v28);
  v31 = &v80 - v30;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v33 = v20 + 2;
  v93 = v20[2];
  v93(v31, v32, v19);
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v86 = v20 + 2;
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "DetermineFlowStrategy#actionForInput called", v36, 2u);
    v33 = v86;
  }

  v38 = v20[1];
  v37 = (v20 + 1);
  v92 = v38;
  v38(v31, v19);
  v39 = v97;
  sub_2CA790();
  v40 = v95;
  v41 = v39;
  v42 = v96;
  v43 = (*(v95 + 88))(v41, v96);
  if (v43 != enum case for Parse.NLv3IntentOnly(_:) && v43 != enum case for Parse.uso(_:))
  {
    v44 = v90;
    v93(v90, v32, v19);
    v45 = sub_2CDFE0();
    v46 = sub_2CE680();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "DetermineFlowStrategy#actionForInput received non NLv3IntentOnly or Uso parse", v47, 2u);
    }

    v92(v44, v19);
    sub_2C9CF0();
    return (*(v95 + 8))(v97, v96);
  }

  v80 = v6;
  v82 = v7;
  v90 = a2;
  v49 = *(v40 + 8);
  v49(v97, v42);
  v50 = v91;
  sub_2CA790();
  v51 = sub_D2F98(v50, &v100);
  (v49)(v50, v42, v51);
  v52 = v102;
  sub_30B8(&v100, &qword_34CF98, &unk_2D1A40);
  if (v52)
  {
    sub_2CA790();
    v53 = sub_D2F98(v50, &v100);
    (v49)(v50, v42, v53);
    if (v102)
    {
      v54 = v103;
      sub_35E0(&v100, v102);
      v55 = *(v54 + 8);
      v56 = v89;
      sub_2CD480();
      sub_306C(&v100);
      v57 = v82;
      v58 = v80;
      if ((*(v82 + 48))(v56, 1, v80) != 1)
      {
        v86 = v33;
        v96 = v32;
        v97 = v37;
        (*(v57 + 32))(v88, v56, v58);
        v59 = *(v57 + 104);
        v59(v85, enum case for CommonAudio.Confirmation.cancel(_:), v58);
        sub_16C37C(&qword_34CCF8, 255, &type metadata accessor for CommonAudio.Confirmation);
        sub_2CE3E0();
        sub_2CE3E0();
        if (v100 == v98 && v101 == v99)
        {
          v60 = 1;
        }

        else
        {
          v60 = sub_2CEEA0();
        }

        v69 = v57 + 8;
        v70 = *(v57 + 8);
        v71 = v80;
        v82 = v69;
        v70(v85, v80);

        if (v60)
        {
LABEL_30:
          v76 = v83;
          v93(v83, v96, v19);
          v77 = sub_2CDFE0();
          v78 = sub_2CE690();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_0, v77, v78, "DetermineFlowStrategy#actionForInput found cancellation node - treating state as cancelled", v79, 2u);
          }

          v92(v76, v19);
          sub_2C9CD0();
          return (v70)(v88, v80);
        }

        v72 = v81;
        v59(v81, enum case for CommonAudio.Confirmation.no(_:), v71);
        sub_2CE3E0();
        sub_2CE3E0();
        if (v100 == v98 && v101 == v99)
        {
          v70(v72, v80);

          goto LABEL_30;
        }

        v73 = sub_2CEEA0();
        v74 = v72;
        v75 = v80;
        v70(v74, v80);

        if (v73)
        {
          goto LABEL_30;
        }

        v70(v88, v75);
        v32 = v96;
        goto LABEL_21;
      }
    }

    else
    {
      sub_30B8(&v100, &qword_34CF98, &unk_2D1A40);
      v56 = v89;
      (*(v82 + 56))(v89, 1, 1, v80);
    }

    sub_30B8(v56, &qword_34CCE8, &unk_2D0E20);
LABEL_21:
    v65 = v87;
    v93(v87, v32, v19);
    v66 = sub_2CDFE0();
    v67 = sub_2CE670();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "DetermineFlowStrategy#actionForInput handling", v68, 2u);
    }

    v92(v65, v19);
    return sub_2C9CE0();
  }

  v61 = v84;
  v93(v84, v32, v19);
  v62 = sub_2CDFE0();
  v63 = sub_2CE680();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_0, v62, v63, "DetermineFlowStrategy#actionForInput received unsupported parse", v64, 2u);
  }

  v92(v61, v19);
  return sub_2C9CF0();
}

uint64_t DetermineFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v95 = a3;
  v96 = a4;
  v6 = sub_2CA870();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v94 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v79[-v12];
  __chkstk_darwin(v11);
  v15 = &v79[-v14];
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v93 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v82 = &v79[-v22];
  __chkstk_darwin(v21);
  v24 = &v79[-v23];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v26 = *(v17 + 16);
  v89 = v25;
  v88 = v17 + 16;
  v87 = v26;
  v26(v24, v25, v16);
  v92 = v17;
  v97 = *(v7 + 16);
  v98 = a1;
  v97(v15, a1, v6);
  v27 = a2;
  v90 = v24;
  v28 = sub_2CDFE0();
  v91 = v16;
  v29 = a2;
  v30 = v6;
  v31 = v28;
  v32 = sub_2CE670();

  v33 = os_log_type_enabled(v31, v32);
  v84 = a2;
  v83 = v27;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v86 = v7;
    v35 = v34;
    v81 = swift_slowAlloc();
    *&v101 = v81;
    *v35 = 136446722;
    v36 = sub_2CCCC0();
    v80 = v32;
    v38 = sub_3F08(v36, v37, &v101);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v97(v13, v15, v30);
    v39 = v30;
    v40 = sub_2CE2A0();
    v42 = v41;
    v43 = *(v86 + 8);
    v43(v15, v39);
    v44 = sub_3F08(v40, v42, &v101);

    *(v35 + 14) = v44;
    *(v35 + 22) = 2080;
    *&v99 = v29;
    v45 = v27;
    sub_20410(&qword_352DA0, &qword_2D53B0);
    v46 = sub_2CE2A0();
    v48 = sub_3F08(v46, v47, &v101);

    *(v35 + 24) = v48;
    v49 = v43;
    _os_log_impl(&dword_0, v31, v80, "DetermineFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v35, 0x20u);
    swift_arrayDestroy();

    v7 = v86;

    v50 = *(v92 + 8);
    v51 = v91;
    v50(v90, v91);
    v52 = v39;
  }

  else
  {

    v49 = *(v7 + 8);
    v49(v15, v30);
    v52 = v30;
    v50 = *(v92 + 8);
    v51 = v91;
    v50(v90, v91);
  }

  v53 = v94;
  v97(v94, v98, v52);
  v54 = (*(v7 + 88))(v53, v52);
  if (v54 == enum case for Parse.NLv3IntentOnly(_:) || v54 == enum case for Parse.uso(_:))
  {
    v49(v53, v52);
    sub_D2F98(v98, &v99);
    if (v100)
    {
      sub_420A4(&v99, &v101);
      v62 = v83;
      v63 = v83;
      if (!v84)
      {
        v63 = [objc_allocWithZone(type metadata accessor for DetermineIntent()) init];
      }

      v64 = v102;
      v65 = v103;
      v66 = sub_35E0(&v101, v102);
      v67 = swift_allocObject();
      v68 = v95;
      v69 = v96;
      v67[2] = v63;
      v67[3] = v68;
      v67[4] = v69;
      v70 = v62;
      v71 = v63;

      sub_219DBC(v66, (v85 + 16), v85 + 56, sub_16C22C, v67, v71, v64, v65);

      return sub_306C(&v101);
    }

    else
    {
      sub_30B8(&v99, &qword_34CF98, &unk_2D1A40);
      v72 = v82;
      v87(v82, v89, v51);
      v73 = sub_2CDFE0();
      v74 = sub_2CE680();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_0, v73, v74, "DetermineFlowStrategy#makeIntentFromParse received unsupported NLv3IntentOnly parse", v75, 2u);
      }

      v50(v72, v51);
      v76 = sub_2CB850();
      sub_16C37C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
      v77 = swift_allocError();
      (*(*(v76 - 8) + 104))(v78, enum case for PlaybackCode.ceGE63(_:), v76);
      v95(v77, 1);
    }
  }

  else
  {
    v87(v93, v89, v51);
    v55 = sub_2CDFE0();
    v56 = sub_2CE680();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "DetermineFlowStrategy#makeIntentFromParse received non NLv3IntentOnly or Uso parse", v57, 2u);
    }

    v50(v93, v51);
    v58 = sub_2CB850();
    sub_16C37C(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
    v59 = swift_allocError();
    (*(*(v58 - 8) + 104))(v60, enum case for PlaybackCode.ceGE64(_:), v58);
    v95(v59, 1);

    return (v49)(v53, v52);
  }
}

uint64_t sub_16B924(void *a1, uint64_t (*a2)(id, void))
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "DetermineFlowStrategy#makeIntentFromParse returning intent: %@", v13, 0xCu);
    sub_30B8(v14, &unk_34FC00, &unk_2D0150);
  }

  (*(v5 + 8))(v8, v4);
  return a2(v10, 0);
}

uint64_t DetermineFlowStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "DetermineFlowStrategy#makeSiriKitIntentHandler reached here", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = qword_34BF80;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static Determine.intentHandler;
  type metadata accessor for DetermineIntent();
  v15 = v14;
  v16 = a1;
  sub_2C9870();
  v17 = sub_2C9880();
  return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
}

uint64_t sub_16BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16BE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DetermineFlowStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_16BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16BF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for DetermineFlowStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_16C08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DetermineFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_16C0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DetermineFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_16C144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetermineFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_16C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for DetermineFlowStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_16C37C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_16C3F4(void *a1, void *a2)
{
  v68 = a2;
  v70 = a1;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v64 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v64 - v12;
  __chkstk_darwin(v11);
  v15 = &v64 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  v69 = v3[2];
  v69(v15, v16, v2);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v66 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v67 = v3;
    v65 = v2;
    v22 = v21;
    v72 = v21;
    *v20 = 136446210;
    v23 = sub_2CCCA0();
    v64 = v10;
    v25 = v16;
    v26 = v7;
    v27 = sub_3F08(v23, v24, &v72);
    v10 = v64;

    *(v20 + 4) = v27;
    v7 = v26;
    v16 = v25;
    _os_log_impl(&dword_0, v17, v18, "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands... %{public}s", v20, 0xCu);
    sub_306C(v22);
    v2 = v65;
    v3 = v67;

    v13 = v66;
  }

  v28 = v3[1];
  v28(v15, v2);
  v29 = v70;
  if (!sub_2CE810())
  {
    v69(v7, v16, v2);
    v36 = sub_2CDFE0();
    v37 = sub_2CE670();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v7;
      v40 = swift_slowAlloc();
      v72 = v40;
      *v38 = 136446210;
      v41 = sub_2CCCA0();
      v42 = v2;
      v44 = sub_3F08(v41, v43, &v72);

      *(v38 + 4) = v44;
      v45 = "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands won't return an AceView because no view actions on next/later destinations (or create radio). %{public}s";
      v46 = v37;
LABEL_16:
      _os_log_impl(&dword_0, v36, v46, v45, v38, 0xCu);
      sub_306C(v40);

      v51 = v39;
      v52 = v42;
LABEL_20:
      v28(v51, v52);
      return 0;
    }

    v51 = v7;
LABEL_19:
    v52 = v2;
    goto LABEL_20;
  }

  v30 = [v29 mediaItems];
  if (!v30 || ((v31 = v30, sub_736BC(), v32 = sub_2CE410(), v31, v32 >> 62) ? (v33 = sub_2CEDA0()) : (v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8))), , !v33))
  {
    v69(v10, v16, v2);
    v36 = sub_2CDFE0();
    v47 = sub_2CE680();
    if (os_log_type_enabled(v36, v47))
    {
      v38 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72 = v40;
      *v38 = 136446210;
      v48 = sub_2CCCA0();
      v42 = v2;
      v39 = v10;
      v50 = sub_3F08(v48, v49, &v72);

      *(v38 + 4) = v50;
      v45 = "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands won't return an AceView because nil or empty mediaItems. %{public}s";
      v46 = v47;
      goto LABEL_16;
    }

    v51 = v10;
    goto LABEL_19;
  }

  v34 = v68;
  if ([v68 code] == &dword_4)
  {
    return (&dword_0 + 1);
  }

  result = [v34 code];
  if (result != &dword_0 + 1)
  {
    v67 = v3;
    v69(v13, v16, v2);
    v53 = v34;
    v54 = sub_2CDFE0();
    v55 = sub_2CE660();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v13;
      v57 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v57 = 136446466;
      v71 = [v53 code];
      v58 = sub_2CEE70();
      v60 = sub_3F08(v58, v59, &v72);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2082;
      v61 = sub_2CCCA0();
      v63 = sub_3F08(v61, v62, &v72);

      *(v57 + 14) = v63;
      _os_log_impl(&dword_0, v54, v55, "PlayMediaAdditionalCommandsProvider#shouldCreateAdditionalCommands won't return an AceView because non-success code: %{public}s. %{public}s", v57, 0x16u);
      swift_arrayDestroy();

      v51 = v56;
    }

    else
    {

      v51 = v13;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_16CAAC(void *a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v39 = v5[2];
  v40 = v5 + 2;
  v39(v11, v12, v4);
  v41 = v11;
  v13 = sub_2CDFE0();
  v14 = sub_2CE670();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v9;
    v17 = v16;
    v42 = v16;
    *v15 = 136446210;
    v18 = sub_2CCCA0();
    v37 = a2;
    v20 = v12;
    v21 = a1;
    v22 = v4;
    v23 = v5;
    v24 = sub_3F08(v18, v19, &v42);
    a2 = v37;

    *(v15 + 4) = v24;
    v5 = v23;
    v4 = v22;
    a1 = v21;
    v12 = v20;
    _os_log_impl(&dword_0, v13, v14, "PlayMediaAdditionalCommandsProvider#additionalCommands... %{public}s", v15, 0xCu);
    sub_306C(v17);
    v9 = v38;
  }

  v25 = v5[1];
  v25(v41, v4);
  if ((sub_16C3F4(a1, a2) & 1) == 0)
  {
    v39(v9, v12, v4);
    v26 = sub_2CDFE0();
    v27 = sub_2CE670();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v9;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136446210;
      v31 = sub_2CCCA0();
      v33 = sub_3F08(v31, v32, &v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_0, v26, v27, "PlayMediaAdditionalCommandsProvider#additionalCommands will not return additional commands. %{public}s", v29, 0xCu);
      sub_306C(v30);

      v34 = v28;
    }

    else
    {

      v34 = v9;
    }

    v25(v34, v4);
  }

  return 0;
}

uint64_t sub_16CE3C()
{
  sub_16CEA4();
  result = sub_2CEB60();
  qword_35F760 = result;
  return result;
}

unint64_t sub_16CEA4()
{
  result = qword_352F30;
  if (!qword_352F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_352F30);
  }

  return result;
}

char *sub_16CEF0(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_2CECD0();
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v30 = v8;
      a1(&v25, &v30);
      if (v3)
      {

        return v7;
      }

      if (*(&v25 + 1))
      {
        v22 = v27;
        v23 = v28;
        v24 = v29;
        v20 = v25;
        v21 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_B934C(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_B934C((v10 > 1), v11 + 1, 1, v7);
        }

        v19 = v24;
        v17 = v22;
        v18 = v23;
        v12 = v20;
        v16 = v21;
        *(v7 + 2) = v11 + 1;
        v13 = &v7[72 * v11];
        *(v13 + 2) = v12;
        *(v13 + 12) = v19;
        *(v13 + 4) = v17;
        *(v13 + 5) = v18;
        *(v13 + 3) = v16;
      }

      else
      {
        v22 = v27;
        v23 = v28;
        v24 = v29;
        v20 = v25;
        v21 = v26;
        sub_30B8(&v20, &qword_34E968, &unk_2D2900);
      }

      ++v6;
      if (v9 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_21;
    }

    v8 = *(a3 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_16D130(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = a3 + 32; ; i += 72)
    {
      v7 = *(i + 16);
      v8 = *(i + 48);
      v22 = *(i + 32);
      v23 = v8;
      v9 = *(i + 16);
      v21[0] = *i;
      v21[1] = v9;
      v10 = *(i + 48);
      v18 = v22;
      v19 = v10;
      v24 = *(i + 64);
      v20 = *(i + 64);
      v16 = v21[0];
      v17 = v7;
      sub_333FC(v21, &v11);
      v5(&v16);
      if (v3)
      {
        break;
      }

      v13 = v18;
      v14 = v19;
      v15 = v20;
      v11 = v16;
      v12 = v17;
      result = sub_9AA00(&v11);
      if (!--v4)
      {
        return result;
      }
    }

    v13 = v18;
    v14 = v19;
    v15 = v20;
    v11 = v16;
    v12 = v17;
    return sub_9AA00(&v11);
  }

  return result;
}

void sub_16D228(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v221 = a3;
  v220 = a2;
  v204 = sub_2CB3E0();
  v203 = *(v204 - 8);
  v6 = *(v203 + 64);
  __chkstk_darwin(v204);
  v202 = (&v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20410(&unk_353040, &qword_2D1528);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v205 = (&v202 - v10);
  v219 = sub_2CA340();
  v217 = *(v219 - 8);
  v11 = *(v217 + 64);
  v12 = __chkstk_darwin(v219);
  v206 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v211 = &v202 - v15;
  __chkstk_darwin(v14);
  v218 = &v202 - v16;
  v225 = sub_2CA810();
  v231 = *(v225 - 8);
  v17 = *(v231 + 64);
  v18 = __chkstk_darwin(v225);
  v215 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v224 = &v202 - v21;
  __chkstk_darwin(v20);
  v232 = &v202 - v22;
  v23 = sub_2CA870();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v235 = (&v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v30 = &v202 - v29;
  __chkstk_darwin(v28);
  v32 = &v202 - v31;
  v33 = sub_2CE000();
  v34 = *(v33 - 8);
  v35 = v34[8];
  v36 = __chkstk_darwin(v33);
  v216 = &v202 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v214 = &v202 - v39;
  v40 = __chkstk_darwin(v38);
  v227 = &v202 - v41;
  v42 = __chkstk_darwin(v40);
  v208 = &v202 - v43;
  v44 = __chkstk_darwin(v42);
  v207 = &v202 - v45;
  v46 = __chkstk_darwin(v44);
  v213 = &v202 - v47;
  v48 = __chkstk_darwin(v46);
  v210 = &v202 - v49;
  v50 = __chkstk_darwin(v48);
  v212 = &v202 - v51;
  v52 = __chkstk_darwin(v50);
  v209 = &v202 - v53;
  __chkstk_darwin(v52);
  v55 = &v202 - v54;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v56 = sub_3ED0(v33, static Logger.default);
  swift_beginAccess();
  v57 = v34[2];
  v228 = v56;
  v229 = v57;
  v230 = v34 + 2;
  v57(v55, v56, v33);
  v58 = *(v24 + 16);
  v236 = a1;
  v237 = v58;
  v58(v32, a1, v23);
  v234 = v55;
  v59 = v24;
  v60 = sub_2CDFE0();
  v61 = v23;
  v62 = sub_2CE690();
  v63 = os_log_type_enabled(v60, v62);
  v233 = v34;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v226 = a4;
    v65 = v64;
    v66 = swift_slowAlloc();
    v223 = v33;
    v67 = v66;
    *&v239[0] = v66;
    *v65 = 136315138;
    v237(v30, v32, v61);
    v68 = sub_2CE2A0();
    v70 = v69;
    v222 = v59;
    v71 = *(v59 + 8);
    v71(v32, v61);
    v72 = sub_3F08(v68, v70, v239);

    *(v65 + 4) = v72;
    v73 = v71;
    _os_log_impl(&dword_0, v60, v62, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse %s", v65, 0xCu);
    sub_306C(v67);
    v33 = v223;

    a4 = v226;

    v74 = v233[1];
    v74(v234, v33);
    v75 = v61;
    v76 = v222;
  }

  else
  {

    v77 = v32;
    v73 = *(v59 + 8);
    v73(v77, v61);
    v74 = v34[1];
    v74(v234, v33);
    v75 = v61;
    v76 = v59;
  }

  v78 = v235;
  v237(v235, v236, v75);
  v79 = (*(v76 + 88))(v78, v75);
  if (v79 == enum case for Parse.NLv3IntentOnly(_:))
  {
    *(a4 + 24) = &type metadata for NilAppResolutionProvider;
    *(a4 + 32) = sub_17D750();
    *(a4 + 40) = 0;
LABEL_8:
    v80 = v78;
    v81 = v75;
LABEL_9:
    v73(v80, v81);
    return;
  }

  if (v79 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v76 + 96))(v78, v75);
    v82 = *(v78 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    sub_2CA850();
    *(&v240 + 1) = sub_2CA830();
    *(a4 + 24) = &type metadata for CustomAppResolutionProvider;
    *(a4 + 32) = sub_17D7F8();
    v83 = swift_allocObject();
    *a4 = v83;
    v84 = v239[1];
    v83[1] = v239[0];
    v83[2] = v84;
    v83[3] = v240;

    *(a4 + 40) = 0;
    v85 = sub_2CAFE0();
    (*(*(v85 - 8) + 8))(v78, v85);
    return;
  }

  if (v79 != enum case for Parse.directInvocation(_:))
  {
    if (v79 != enum case for Parse.pommesResponse(_:))
    {
      if (v79 == enum case for Parse.uso(_:))
      {
        v222 = v76;
        v237 = v75;
        if (sub_2CA7C0())
        {
          if (sub_4259C())
          {
            v118 = v209;
            v229(v209, v228, v33);
            v119 = sub_2CDFE0();
            v120 = sub_2CE690();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              *v121 = 0;
              _os_log_impl(&dword_0, v119, v120, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse returning NilAppResolutionProvider for uso Affinity task", v121, 2u);
            }

            v74(v118, v33);
            *(a4 + 24) = &type metadata for NilAppResolutionProvider;
            *(a4 + 32) = sub_17D750();
          }

          else
          {
            v167 = sub_2CD700();
            v168 = *(v167 + 48);
            v169 = *(v167 + 52);
            swift_allocObject();

            v170 = sub_2CD6B0();
            v229(v212, v228, v33);
            v171 = sub_2CDFE0();
            v172 = sub_2CE690();
            if (os_log_type_enabled(v171, v172))
            {
              v173 = swift_slowAlloc();
              *v173 = 0;
              _os_log_impl(&dword_0, v171, v172, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse returning UsoAppResolutionProvider for uso parse", v173, 2u);
            }

            v74(v212, v33);
            *(a4 + 24) = &type metadata for UsoAppResolutionProvider;
            *(a4 + 32) = sub_17D7A4();

            *a4 = v170;
          }

          *(a4 + 40) = 0;
        }

        else
        {
          v160 = v210;
          v229(v210, v228, v33);
          v161 = sub_2CDFE0();
          v162 = sub_2CE680();
          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            *v163 = 0;
            _os_log_impl(&dword_0, v161, v162, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse Failed to get task from parse", v163, 2u);
          }

          v74(v160, v33);
          v164 = sub_2CB850();
          sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
          v165 = swift_allocError();
          (*(*(v164 - 8) + 104))(v166, enum case for PlaybackCode.ceGE16(_:), v164);
          *a4 = v165;
          *(a4 + 40) = 1;
        }

        v80 = v78;
        v81 = v237;
        goto LABEL_9;
      }

      if (v79 != enum case for Parse.ifClientAction(_:))
      {
        v229(v216, v228, v33);
        v154 = sub_2CDFE0();
        v155 = sub_2CE680();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_0, v154, v155, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse unsupported parse", v156, 2u);
        }

        v74(v216, v33);
        v157 = sub_2CB850();
        sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
        v158 = swift_allocError();
        (*(*(v157 - 8) + 104))(v159, enum case for PlaybackCode.ceGE22(_:), v157);
        *a4 = v158;
        *(a4 + 40) = 1;
        goto LABEL_8;
      }

      v226 = a4;
      (*(v76 + 96))(v78, v75);
      v122 = v217;
      v123 = v218;
      v124 = v219;
      (*(v217 + 32))(v218, v78, v219);
      v125 = v214;
      v229(v214, v228, v33);
      v126 = *(v122 + 16);
      v127 = v211;
      v126(v211, v123, v124);
      v128 = sub_2CDFE0();
      v129 = sub_2CE660();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v223 = v33;
        v132 = v131;
        *&v239[0] = v131;
        *v130 = 136315138;
        v126(v206, v127, v219);
        v133 = sub_2CE2A0();
        v135 = v134;
        v136 = *(v122 + 8);
        v136(v127, v219);
        v137 = sub_3F08(v133, v135, v239);

        *(v130 + 4) = v137;
        _os_log_impl(&dword_0, v128, v129, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse received IF client action parse: %s", v130, 0xCu);
        sub_306C(v132);

        v138 = v214;
        v139 = v223;
        v124 = v219;
      }

      else
      {

        v136 = *(v122 + 8);
        v136(v127, v124);
        v138 = v125;
        v139 = v33;
      }

      v74(v138, v139);
      v187 = v226;
      v188 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(v236);
      if (v189)
      {
        v190 = v188;
        v191 = v189;
        v192 = type metadata accessor for AppIdentifierAppResolutionProvider();
        v193 = swift_allocObject();
        *(v193 + 16) = v190;
        *(v193 + 24) = v191;
        *(v187 + 24) = v192;
        *(v187 + 32) = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider);
        *v187 = v193;
        v136(v218, v124);
        *(v187 + 40) = 0;
        return;
      }

      v194 = v202;
      sub_2CA330();
      v195 = v205;
      static ShimUtilities.getShimExperience(from:)(v194, v205);
      (*(v203 + 8))(v194, v204);
      v196 = type metadata accessor for ShimExperience();
      if ((*(*(v196 - 8) + 48))(v195, 1, v196) == 1)
      {
        sub_30B8(v195, &unk_353040, &qword_2D1528);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v201 = *v195;
          v200 = v195[1];

          sub_16EE7C(v201, v187);

          v136(v218, v124);
          return;
        }

        sub_607B4(v195);
      }

      v197 = sub_2CB850();
      sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v198 = swift_allocError();
      (*(*(v197 - 8) + 104))(v199, enum case for PlaybackCode.ceGE96(_:), v197);
      v136(v218, v124);
      *v187 = v198;
      *(v187 + 40) = 1;
      return;
    }

    v96 = v33;
    (*(v76 + 96))(v78, v75);
    v97 = *v78;
    v98 = sub_1B7F14();
    if (v98)
    {
      v99 = v98;
      sub_16EE7C(v98, a4);

      return;
    }

    v147 = v213;
    v229(v213, v228, v96);
    v148 = sub_2CDFE0();
    v149 = sub_2CE680();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_0, v148, v149, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse pommesResponse contains no AudioExperience", v150, 2u);
    }

    v74(v147, v96);
    v151 = sub_2CB850();
    sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v152 = swift_allocError();
    (*(*(v151 - 8) + 104))(v153, enum case for PlaybackCode.ceGE17(_:), v151);

LABEL_62:
    *a4 = v152;
    *(a4 + 40) = 1;
    return;
  }

  v86 = v76;
  v87 = v33;
  (*(v86 + 96))(v78, v75);
  v88 = v232;
  v89 = v225;
  (*(v231 + 32))(v232, v78, v225);
  sub_238E4C(v88, v239);
  v90 = *&v239[0];
  if (v241 <= 3u)
  {
    v91 = *(&v239[0] + 1);
    v92 = v224;
    v93 = v227;
    if (v241)
    {
      if (v241 == 3)
      {
        v94 = type metadata accessor for AppIdentifierAppResolutionProvider();
        v95 = swift_allocObject();
        *(v95 + 16) = v90;
        *(v95 + 24) = v91;
        *(a4 + 24) = v94;
        *(a4 + 32) = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider);
LABEL_38:
        *a4 = v95;
        (*(v231 + 8))(v232, v89);
        *(a4 + 40) = 0;
        return;
      }

      goto LABEL_22;
    }

    if (*(&v239[0] + 1))
    {
      v145 = type metadata accessor for AppIdentifierAppResolutionProvider();
      v95 = swift_allocObject();
      *(v95 + 16) = v90;
      *(v95 + 24) = v91;
      *(a4 + 24) = v145;
      *(a4 + 32) = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider);

      sub_30B8(v239, &qword_34CCB0, &qword_2D5710);
      goto LABEL_38;
    }

    v174 = v207;
    v229(v207, v228, v87);
    v175 = sub_2CDFE0();
    v176 = sub_2CE680();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&dword_0, v175, v176, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse Could not get app bundle id from .replayRequest direct invocation", v177, 2u);
    }

    v74(v174, v87);
    v178 = sub_2CB850();
    sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v152 = swift_allocError();
    v180 = v179;
    v181 = &enum case for PlaybackCode.ceGE20(_:);
    goto LABEL_61;
  }

  v92 = v224;
  v93 = v227;
  if (v241 == 4)
  {
    if (*&v239[0])
    {
      v146 = *&v239[0];
      sub_16EE7C(v146, a4);

      sub_30B8(v239, &qword_34CCB0, &qword_2D5710);
      (*(v231 + 8))(v232, v89);
      return;
    }

    v182 = v208;
    v229(v208, v228, v87);
    v183 = sub_2CDFE0();
    v184 = sub_2CE680();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_0, v183, v184, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse Could not unwrap audioExperience from .playMediaShim direct invocation", v185, 2u);
    }

    v74(v182, v87);
    v178 = sub_2CB850();
    sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v152 = swift_allocError();
    v180 = v186;
    v181 = &enum case for PlaybackCode.ceGE95(_:);
LABEL_61:
    (*(*(v178 - 8) + 104))(v180, *v181, v178);
    sub_30B8(v239, &qword_34CCB0, &qword_2D5710);
    (*(v231 + 8))(v232, v89);
    goto LABEL_62;
  }

  if (v241 != 255)
  {
LABEL_22:
    sub_30B8(v239, &qword_34CCB0, &qword_2D5710);
  }

  v226 = a4;
  v229(v93, v228, v87);
  v100 = v231;
  v101 = *(v231 + 16);
  v101(v92, v232, v89);
  v102 = sub_2CDFE0();
  v103 = sub_2CE680();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    LODWORD(v237) = v103;
    v105 = v104;
    v106 = swift_slowAlloc();
    v223 = v87;
    v107 = v100;
    v108 = v106;
    v238 = v106;
    *v105 = 136315138;
    v101(v215, v92, v89);
    v109 = sub_2CE2A0();
    v111 = v110;
    v112 = v92;
    v113 = *(v107 + 8);
    v113(v112, v89);
    v114 = sub_3F08(v109, v111, &v238);

    *(v105 + 4) = v114;
    v115 = v89;
    _os_log_impl(&dword_0, v102, v237, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse received unsupported directInvocation: %s", v105, 0xCu);
    sub_306C(v108);

    v116 = v227;
    v117 = v223;
  }

  else
  {

    v115 = v89;
    v140 = v92;
    v113 = *(v100 + 8);
    v113(v140, v89);
    v116 = v93;
    v117 = v87;
  }

  v74(v116, v117);
  v141 = sub_2CB850();
  sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v142 = swift_allocError();
  (*(*(v141 - 8) + 104))(v143, enum case for PlaybackCode.ceGE21(_:), v141);
  v113(v232, v115);
  v144 = v226;
  *v226 = v142;
  *(v144 + 40) = 1;
}

unint64_t sub_16EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v162 = sub_2CD5D0();
  v141 = *(v162 - 8);
  v3 = *(v141 + 64);
  __chkstk_darwin(v162);
  v161 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_2CAB40();
  v168 = *(v170 - 8);
  v5 = *(v168 + 8);
  __chkstk_darwin(v170);
  v166 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&unk_353080, &qword_2D1460);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v148 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v156 = &v139 - v11;
  v12 = sub_20410(&qword_34CC90, qword_2D40E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v167 = &v139 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 1);
  v17 = *(v16 + 8);
  v18 = __chkstk_darwin(v15);
  v160 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v142 = (&v139 - v21);
  v22 = __chkstk_darwin(v20);
  v143 = &v139 - v23;
  v24 = __chkstk_darwin(v22);
  v146 = &v139 - v25;
  __chkstk_darwin(v24);
  v27 = (&v139 - v26);
  v28 = sub_2CAA00();
  v29 = *(v28 - 8);
  v30 = *(v29 + 8);
  v31 = __chkstk_darwin(v28);
  v33 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v139 - v34;
  v169 = a1;
  sub_2CDA40();
  if (qword_34BF58 != -1)
  {
LABEL_54:
    swift_once();
  }

  v36 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v37 = *(v16 + 2);
  v154 = v36;
  v153 = v16 + 16;
  v152 = v37;
  v37(v27, v36, v15);
  v164 = v16;
  v165 = v35;
  v16 = v29 + 16;
  v38 = *(v29 + 2);
  v38(v33, v35, v28);
  v39 = v15;
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  v42 = os_log_type_enabled(v40, v41);
  v151 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v150 = v29;
    v44 = v43;
    v159 = swift_slowAlloc();
    v172 = v159;
    *v44 = 136315138;
    sub_2CAA60();
    v171[3] = v28;
    v171[4] = sub_17ECF8(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v45 = sub_F390(v171);
    v38(v45, v33, v28);
    v46 = sub_2CAA50();
    v48 = v47;
    v157 = *(v150 + 1);
    v157(v33, v28);
    sub_306C(v171);
    v49 = sub_3F08(v46, v48, &v172);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_0, v40, v41, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse userDialogAct: %s", v44, 0xCu);
    sub_306C(v159);

    v29 = v150;

    v50 = *(v164 + 1);
    v51 = v151;
    v50(v27, v151);
    v52 = v38;
    v53 = v28;
  }

  else
  {

    v157 = *(v29 + 1);
    v157(v33, v28);
    v50 = *(v164 + 1);
    v50(v27, v39);
    v52 = v38;
    v53 = v28;
    v51 = v39;
  }

  v54 = sub_2CDB80();
  v56 = v55;
  v57 = sub_2CD700();
  v58 = v167;
  v52(v167, v165, v53);
  v59 = v29;
  v60 = *(v29 + 7);
  v61 = v53;
  v60(v58, 0, 1, v53);
  v169 = v57;
  v62 = sub_2CD600();
  if (!v62)
  {

    v81 = v160;
    v152(v160, v154, v51);
    v82 = sub_2CDFE0();
    v83 = sub_2CE680();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_0, v82, v83, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse AudioUsoIntent failed to be constructed", v84, 2u);
    }

    v50(v81, v51);
    v85 = type metadata accessor for AppIdentifierAppResolutionProvider();
    v86 = swift_allocObject();
    *(v86 + 16) = 0x6C7070612E6D6F63;
    *(v86 + 24) = 0xEF636973754D2E65;
    v87 = v163;
    *(v163 + 24) = v85;
    v87[4] = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider);
    *v87 = v86;
    result = (v157)(v165, v53);
    goto LABEL_49;
  }

  v145 = v62;
  result = sub_2CD690();
  v64 = v51;
  if (result >> 62)
  {
    v137 = v56;
    v138 = result;
    v65 = sub_2CEDA0();
    result = v138;
    v56 = v137;
  }

  else
  {
    v65 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  }

  v66 = v61;
  v147 = v50;
  v144 = v56;
  v140 = v54;
  if (!v65)
  {

    goto LABEL_31;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v35 = sub_2CECD0();
LABEL_12:

    if (v35)
    {
      v150 = v59;
      v139 = v61;

      v67 = sub_2CAAE0();
      v149 = v35;

      v167 = v67;
      v68 = *(v67 + 16);
      v69 = v170;
      v27 = v168;
      v28 = v166;
      v160 = v68;
      if (v68)
      {
        v33 = 0;
        v159 = &v167[(v168[80] + 32) & ~v168[80]];
        v158 = v168 + 16;
        v155 = enum case for AudioUsoIntent.UsoNamespace.appBundleId(_:);
        v70 = (v141 + 104);
        v15 = (v141 + 8);
        v29 = v168 + 8;
        do
        {
          if (v33 >= *(v167 + 2))
          {
            __break(1u);
            goto LABEL_54;
          }

          v27[2](v28, v159 + v27[9] * v33, v69);
          v71 = sub_2CAB00();
          v73 = v72;
          if (v71 == sub_2CD630() && v73 == v74)
          {
          }

          else
          {
            v35 = sub_2CEEA0();

            if ((v35 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v75 = sub_2CAB30();
          v77 = v76;
          v78 = v161;
          v35 = v162;
          (*v70)(v161, v155, v162);
          v79 = sub_2CD5C0();
          v16 = v80;
          (*v15)(v78, v35);
          if (v77)
          {
            if (v75 == v79 && v77 == v16)
            {

              v27 = v168;
              v28 = v166;
              goto LABEL_34;
            }

            v35 = sub_2CEEA0();

            v27 = v168;
            v28 = v166;
            if (v35)
            {

LABEL_34:
              v90 = v156;
              v69 = v170;
              v27[4](v156, v28, v170);
              (v27[7])(v90, 0, 1, v69);
              goto LABEL_35;
            }
          }

          else
          {

            v27 = v168;
            v28 = v166;
          }

LABEL_16:
          ++v33;
          v69 = v170;
          (*v29)(v28, v170);
        }

        while (v160 != v33);
      }

      v90 = v156;
      (v27[7])(v156, 1, 1, v69);
LABEL_35:
      v66 = v139;
      v89 = v27;
      v88 = v157;
      v64 = v151;
      v50 = v147;
      v91 = v149;
      goto LABEL_36;
    }

LABEL_31:
    v88 = v157;
    v89 = v168;
    v90 = v156;
    v69 = v170;
    (*(v168 + 7))(v156, 1, 1, v170);
    v91 = 0;
LABEL_36:
    v149 = v91;
    v92 = v90;
    v93 = v148;
    sub_F3F4(v92, v148, &unk_353080, &qword_2D1460);
    if ((v89[6])(v93, 1, v69) == 1)
    {
      sub_30B8(v93, &unk_353080, &qword_2D1460);
      v94 = v144;
      v95 = sub_2CBDF0();
      if (!v96)
      {
        v124 = v142;
        v152(v142, v154, v64);

        v125 = sub_2CDFE0();
        v126 = sub_2CE680();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v171[0] = v128;
          *v127 = 136315138;
          v129 = sub_3F08(v140, v94, v171);
          v157 = v88;
          v130 = v129;

          *(v127 + 4) = v130;
          _os_log_impl(&dword_0, v125, v126, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse pommesResponse contains invalid appBundleId in disambiguation response and invalid launchID %s", v127, 0xCu);
          sub_306C(v128);

          v88 = v157;
          v147(v142, v64);
        }

        else
        {

          v50(v124, v64);
        }

        v134 = sub_2CB850();
        sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode);
        v135 = swift_allocError();
        (*(*(v134 - 8) + 104))(v136, enum case for PlaybackCode.ceGE19(_:), v134);

        sub_30B8(v156, &unk_353080, &qword_2D1460);
        result = (v88)(v165, v66);
        *v163 = v135;
        v133 = 1;
        goto LABEL_50;
      }

      v97 = v95;
      v170 = v96;
      v98 = v94;
      v99 = v143;
      v152(v143, v154, v64);

      v100 = sub_2CDFE0();
      v101 = sub_2CE660();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = v97;
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v157 = v88;
        v105 = v104;
        v171[0] = v104;
        *v103 = 136315138;
        v106 = sub_3F08(v140, v98, v171);

        *(v103 + 4) = v106;
        _os_log_impl(&dword_0, v100, v101, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse resolving app from launchID %s", v103, 0xCu);
        sub_306C(v105);
        v88 = v157;

        v97 = v102;

        v107 = v99;
        v108 = v151;
      }

      else
      {

        v107 = v99;
        v108 = v64;
      }

      v147(v107, v108);
      v122 = type metadata accessor for AppIdentifierAppResolutionProvider();
      v123 = swift_allocObject();
      v131 = v170;
      *(v123 + 16) = v97;
      *(v123 + 24) = v131;
    }

    else
    {

      v109 = sub_2CAB20();
      v111 = v110;
      v89[1](v93, v69);
      v112 = v146;
      v152(v146, v154, v64);

      v113 = sub_2CDFE0();
      v114 = sub_2CE660();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = v109;
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v157 = v88;
        v118 = v117;
        v171[0] = v117;
        *v116 = 136315138;

        v119 = sub_3F08(v115, v111, v171);

        *(v116 + 4) = v119;
        _os_log_impl(&dword_0, v113, v114, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse resolving app from AudioIntent %s", v116, 0xCu);
        sub_306C(v118);
        v88 = v157;

        v109 = v115;

        v120 = v112;
        v121 = v151;
      }

      else
      {

        v120 = v112;
        v121 = v64;
      }

      v147(v120, v121);
      v122 = type metadata accessor for AppIdentifierAppResolutionProvider();
      v123 = swift_allocObject();
      *(v123 + 16) = v109;
      *(v123 + 24) = v111;
    }

    v132 = v163;
    *(v163 + 24) = v122;
    v132[4] = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider);

    *v132 = v123;
    sub_30B8(v156, &unk_353080, &qword_2D1460);
    result = (v88)(v165, v66);
LABEL_49:
    v133 = 0;
LABEL_50:
    *(v163 + 40) = v133;
    return result;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v35 = *(result + 32);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1701E0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a7;
  v58 = a5;
  v52 = a6;
  v53 = a4;
  v60 = a2;
  v61 = a3;
  v59 = a1;
  v54 = *(a6 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(a1);
  v8 = sub_2CE000();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&unk_3519A0, &qword_2D0980);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v19 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  sub_F3F4(v59, v15, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v60;
    sub_30B8(v15, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = v56;
    v24 = sub_3ED0(v56, static Logger.default);
    swift_beginAccess();
    v25 = v55;
    (*(v55 + 16))(v11, v24, v23);
    v26 = sub_2CDFE0();
    v27 = sub_2CE680();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "AppResolutionCommonStrategy#makePromptForConfirmation missing confirmApp template", v28, 2u);
    }

    (*(v25 + 8))(v11, v23);
    v29 = sub_2C9D40();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_2C9D20();
    sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure);
    v33 = swift_allocError();
    *v34 = v32;
    v62[0] = v33;
    v63 = 1;
    v22(v62);
    v35 = qword_34C798;
    v36 = &qword_2D0DA0;
    v37 = v62;
  }

  else
  {
    v38 = v15;
    v39 = v21;
    v50 = v21;
    sub_14A58(v38, v21, &qword_34C6E8, &unk_2D0FF0);
    v40 = v57;
    v42 = v52;
    v41 = v53;
    (*(v57 + 56))(v52, v57);
    v43 = v54;
    (*(v54 + 16))(&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v42);
    sub_F3F4(v39, v19, &qword_34C6E8, &unk_2D0FF0);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = (v7 + v44 + *(v51 + 80)) & ~*(v51 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v42;
    *(v46 + 24) = v40;
    (*(v43 + 32))(v46 + v44, &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
    sub_14A58(v19, v46 + v45, &qword_34C6E8, &unk_2D0FF0);
    v47 = (v46 + ((v17 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
    v48 = v61;
    *v47 = v60;
    v47[1] = v48;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();

    sub_B8280(v58, sub_17D4B8, v46);

    v37 = v50;
    v35 = &qword_34C6E8;
    v36 = &unk_2D0FF0;
  }

  return sub_30B8(v37, v35, v36);
}

uint64_t sub_1707CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t))
{
  v50 = a4;
  v48 = a3;
  v47 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v51 = &v42 - v13;
  v46 = sub_20410(&unk_353020, &unk_2D0970);
  v14 = *(*(v46 - 8) + 64);
  v15 = __chkstk_darwin(v46);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  (*(v20 + 16))(v23, v24, v19);
  v49 = a1;
  sub_F3F4(a1, v18, &unk_353020, &unk_2D0970);
  v25 = sub_2CDFE0();
  v26 = v19;
  v27 = sub_2CE690();
  if (os_log_type_enabled(v25, v27))
  {
    v28 = swift_slowAlloc();
    v44 = a2;
    v29 = v28;
    v30 = swift_slowAlloc();
    v43 = a5;
    v31 = v30;
    v52 = v30;
    *v29 = 136315138;
    v42 = v26;
    sub_F3F4(v18, v45, &unk_353020, &unk_2D0970);
    v32 = sub_2CE2A0();
    v46 = a7;
    v33 = v32;
    v34 = a6;
    v36 = v35;
    sub_30B8(v18, &unk_353020, &unk_2D0970);
    v37 = sub_3F08(v33, v36, &v52);
    a6 = v34;

    *(v29 + 4) = v37;
    a7 = v46;
    _os_log_impl(&dword_0, v25, v27, "AppResolutionCommonStrategy#makePromptForConfirmation makeNLContextProvider returned: %s", v29, 0xCu);
    sub_306C(v31);
    a5 = v43;

    (*(v20 + 8))(v23, v42);
  }

  else
  {

    sub_30B8(v18, &unk_353020, &unk_2D0970);
    (*(v20 + 8))(v23, v26);
  }

  v38 = v51;
  sub_F3F4(v48, v51, &qword_34C6E8, &unk_2D0FF0);
  v39 = *(v38 + *(v47 + 48));
  sub_170C0C(v38, v39, v49, v50, a5, a6, a7);

  v40 = sub_2CA130();
  return (*(*(v40 - 8) + 8))(v38, v40);
}

uint64_t sub_170C0C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t))
{
  v95 = a7;
  v94 = a6;
  v98 = a4;
  v99 = a5;
  v97 = a3;
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v90 = *(v9 - 8);
  v91 = *(v90 + 64);
  __chkstk_darwin(v9 - 8);
  v92 = &v81 - v10;
  v85 = sub_2CB260();
  v84 = *(v85 - 8);
  v11 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v81 - v20;
  __chkstk_darwin(v19);
  v23 = &v81 - v22;
  v24 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v25 = v24 - 8;
  v87 = *(v24 - 8);
  v26 = *(v87 + 64);
  v27 = __chkstk_darwin(v24);
  v89 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v28;
  __chkstk_darwin(v27);
  v30 = &v81 - v29;
  v31 = sub_2CA130();
  (*(*(v31 - 8) + 16))(v30, a1, v31);
  v32 = *(v25 + 56);
  v96 = v30;
  *&v30[v32] = a2;
  v33 = qword_34BF58;
  v34 = a2;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v93 = v14[2];
  v93(v23, v35, v13);
  v36 = sub_2CDFE0();
  v37 = sub_2CE690();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v86 = v21;
    v39 = v38;
    v40 = swift_slowAlloc();
    v82 = v14;
    v81 = v13;
    v41 = v40;
    v102[0] = v40;
    *v39 = 136446210;
    v42 = sub_2CCCA0();
    v44 = v18;
    v45 = sub_3F08(v42, v43, v102);

    *(v39 + 4) = v45;
    v18 = v44;
    _os_log_impl(&dword_0, v36, v37, "AppResolutionCommonStrategy#confirmationViewOutput... %{public}s", v39, 0xCu);
    sub_306C(v41);
    v13 = v81;
    v14 = v82;

    v21 = v86;
  }

  v46 = v14[1];
  v46(v23, v13);
  (*(v95 + 6))(v102, v94);
  sub_35E0(v102, v103);
  v47 = sub_2CC4B0();
  sub_306C(v102);
  if (v47)
  {
    v48 = sub_2CB460();
    if (!v48)
    {
      sub_2CB180();
      v48 = sub_2CB170();
    }

    v49 = v48;
    v93(v21, v35, v13);

    v50 = sub_2CDFE0();
    v51 = sub_2CE660();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v95 = v46;
      v53 = v52;
      v54 = swift_slowAlloc();
      v86 = v21;
      v55 = v54;
      v102[0] = v54;
      *v53 = 136315138;
      sub_2CB130();
      v56 = v83;
      sub_2CD3C0();

      v57 = sub_2CB200();
      v59 = v58;
      (*(v84 + 8))(v56, v85);
      v60 = sub_3F08(v57, v59, v102);

      *(v53 + 4) = v60;
      _os_log_impl(&dword_0, v50, v51, "AppResolutionCommonStrategy#confirmationViewOutput with responseMode = %s", v53, 0xCu);
      sub_306C(v55);

      v95(v86, v13);
    }

    else
    {

      v46(v21, v13);
    }

    v68 = v92;
    sub_F3F4(v97, v92, &unk_353020, &unk_2D0970);
    v69 = v96;
    v70 = v89;
    sub_F3F4(v96, v89, &qword_34C6E8, &unk_2D0FF0);
    v71 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v72 = (v91 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (*(v87 + 80) + v72 + 8) & ~*(v87 + 80);
    v74 = swift_allocObject();
    sub_14A58(v68, v74 + v71, &unk_353020, &unk_2D0970);
    *(v74 + v72) = v49;
    sub_14A58(v70, v74 + v73, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v75 = v69;
    v76 = &qword_34C6E8;
    v77 = &unk_2D0FF0;
  }

  else
  {
    v93(v18, v35, v13);
    v61 = sub_2CDFE0();
    v62 = sub_2CE690();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v102[0] = v64;
      *v63 = 136446210;
      v65 = sub_2CCCA0();
      v67 = sub_3F08(v65, v66, v102);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_0, v61, v62, "AppResolutionCommonStrategy#confirmationViewOutput creating confirmationViewOutput %{public}s", v63, 0xCu);
      sub_306C(v64);
    }

    v46(v18, v13);
    sub_2CB5B0();
    v78 = sub_2CA910();
    memset(v100, 0, sizeof(v100));
    v101 = 0;
    v103 = v78;
    v104 = &protocol witness table for AceOutput;
    sub_F390(v102);
    v79 = v96;
    sub_2C9DE0();
    sub_30B8(v100, &qword_34CC80, &qword_2D1520);
    v105 = 0;
    v98(v102);
    sub_30B8(v79, &qword_34C6E8, &unk_2D0FF0);
    v76 = qword_34C798;
    v77 = &qword_2D0DA0;
    v75 = v102;
  }

  return sub_30B8(v75, v76, v77);
}

uint64_t sub_1715F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = sub_2CE000();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v10 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = sub_2CA630();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_17177C, 0, 0);
}

uint64_t sub_17177C()
{
  v36 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v33 = *(v0 + 48);
  sub_2C9B30();
  v4 = swift_task_alloc();
  *(v4 + 16) = v33;
  *(v4 + 32) = v3;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_2CDFE0();
  v10 = sub_2CE690();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 88);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446210;
    v17 = sub_2CCCA0();
    v19 = sub_3F08(v17, v18, &v35);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v9, v10, "AppResolutionCommonStrategy#confirmationViewOutput creating confirmationViewOutput using RF 2.0 %{public}s", v15, 0xCu);
    sub_306C(v16);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 64);
  v23 = sub_2CA080();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v0 + 144) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v26 = swift_allocObject();
  *(v0 + 152) = v26;
  *(v26 + 16) = xmmword_2D0770;
  sub_F3F4(v22, v20, &qword_34C6E8, &unk_2D0FF0);
  *(v26 + 32) = *(v20 + *(v21 + 48));
  v27 = sub_2CA130();
  (*(*(v27 - 8) + 8))(v20, v27);
  v28 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v34 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v29 = swift_task_alloc();
  *(v0 + 160) = v29;
  *v29 = v0;
  v29[1] = sub_171AC4;
  v30 = *(v0 + 136);
  v31 = *(v0 + 40);

  return v34(v31, v26, v30);
}

uint64_t sub_171AC4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return _swift_task_switch(sub_171BF8, 0, 0);
}

uint64_t sub_171BF8()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_171CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_2CA5F0();
  sub_2CA5A0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v10, &qword_34C6E8, &unk_2D0FF0);
  v16 = *&v10[*(v7 + 56)];
  v17 = [v16 catId];

  sub_2CE270();
  sub_2CA590();
  v18 = sub_2CA130();
  return (*(*(v18 - 8) + 8))(v10, v18);
}

uint64_t sub_171ED0(char *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v9 = sub_20410(&qword_3530D0, &qword_2D5728);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = *(v10 + 16);
  v39 = a2;
  v20(v13, a2, v9);
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v23;
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v23 = 136315138;
    sub_2CA460();
    sub_2CCFB0();
    v24 = sub_2CE420();
    v36 = v14;
    v37 = v7;
    v25 = v24;
    v27 = v26;

    (*(v10 + 8))(v13, v9);
    v28 = sub_3F08(v25, v27, v44);

    v29 = v34;
    *(v34 + 1) = v28;
    _os_log_impl(&dword_0, v21, v22, "AppResolutionStrategy#makePromptForDisambiguation with apps: %s", v29, 0xCu);
    sub_306C(v35);

    (*(v15 + 8))(v18, v36);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    (*(v15 + 8))(v18, v14);
  }

  v31 = v42;
  v30 = v43;
  (*(v43 + 48))(v44, v42, v43);
  sub_35E0(v44, v44[3]);
  v32 = sub_2CC4B0();
  sub_306C(v44);
  if (v32)
  {
    return sub_1722AC(v38, v39, v40, v41, v31, v30);
  }

  else
  {
    return sub_172C04(v38, v39, v40, v41, v31, v30);
  }
}

uint64_t sub_1722AC(char *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = a5;
  v92 = a4;
  v93 = a3;
  v11 = a1;
  v82 = *(a5 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(a1);
  v79 = v13;
  v86 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20410(&qword_3530D0, &qword_2D5728);
  v78 = *(v84 - 8);
  v77 = *(v78 + 64);
  __chkstk_darwin(v84);
  v83 = &v71 - v14;
  v81 = sub_2CC590();
  v80 = *(v81 - 8);
  v15 = *(v80 + 64);
  __chkstk_darwin(v81);
  v85 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2CC990();
  v75 = *(v76 - 8);
  v17 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v90 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v27 = *(v20 + 16);
  v89 = v26;
  v88 = v20 + 16;
  v87 = v27;
  v27(v25, v26, v19);
  v28 = v20;
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  v31 = os_log_type_enabled(v29, v30);
  v91 = v25;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v73 = a6;
    v34 = v33;
    v95[0] = v33;
    *v32 = 136446210;
    v35 = sub_2CCCA0();
    v72 = v19;
    v37 = sub_3F08(v35, v36, v95);
    v71 = v28;
    v38 = a2;
    v39 = v7;
    v40 = v11;
    v41 = v9;
    v42 = v37;
    v19 = v72;

    *(v32 + 4) = v42;
    v9 = v41;
    v11 = v40;
    v7 = v39;
    a2 = v38;
    _os_log_impl(&dword_0, v29, v30, "AppResolutionStrategy#promptForDisambiguationWithRF... %{public}s", v32, 0xCu);
    sub_306C(v34);
    a6 = v73;

    v43 = *(v71 + 8);
    v43(v91, v19);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v43 = *(v28 + 8);
    v43(v91, v19);
    if (!v11)
    {
LABEL_10:
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
      goto LABEL_11;
    }
  }

  v94 = v11;
  swift_getAssociatedTypeWitness();
  v44 = v11;
  sub_20410(&qword_3530E0, &unk_2D69D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(&v98 + 1))
  {
    sub_F338(&v97, v95);
    v90 = v11;
    v91 = v44;
    sub_35E0(v95, v95[3]);
    v45 = v75;
    v46 = v74;
    v47 = v76;
    (*(v75 + 104))(v74, enum case for AcceptedSpeakerIdConfidence.anyConfidence(_:), v76);
    v89 = sub_2CCB40();
    v88 = v48;
    (*(v45 + 8))(v46, v47);
    sub_2CC580();
    v49 = v78;
    (*(v78 + 16))(v83, a2, v84);
    v50 = v82;
    (*(v82 + 16))(v86, v7, v9);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = (v77 + *(v50 + 80) + v51) & ~*(v50 + 80);
    v53 = a6;
    v54 = (v79 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v9;
    *(v55 + 24) = v53;
    (*(v49 + 32))(v55 + v51, v83, v84);
    (*(v50 + 32))(v55 + v52, v86, v9);
    *(v55 + v54) = v90;
    v56 = (v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    v57 = v92;
    *v56 = v93;
    v56[1] = v57;
    v58 = v91;

    v59 = v85;
    sub_2CC570();

    (*(v80 + 8))(v59, v81);
    return sub_306C(v95);
  }

LABEL_11:
  sub_30B8(&v97, &qword_3530D8, &unk_2D5730);
  v61 = v90;
  v87(v90, v89, v19);
  v62 = sub_2CDFE0();
  v63 = sub_2CE680();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_0, v62, v63, "Fatal: cannot case intent as PrivateMediaIntentDataProviding", v64, 2u);
  }

  v43(v61, v19);
  v65 = sub_2C9D40();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = sub_2C9D20();
  sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure);
  v69 = swift_allocError();
  *v70 = v68;
  v95[0] = v69;
  v96 = 1;
  v93(v95);
  return sub_30B8(v95, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_172C04(void *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v106 = a3;
  v107 = a6;
  v105 = a4;
  v108 = a5;
  v109 = a1;
  v96 = *(a5 - 8);
  v7 = *(v96 + 64);
  __chkstk_darwin(a1);
  v91 = v8;
  v93 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2CC990();
  v87 = *(v89 - 8);
  v9 = *(v87 + 64);
  __chkstk_darwin(v89);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2CC590();
  v94 = *(v95 - 8);
  v11 = *(v94 + 64);
  __chkstk_darwin(v95);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_3530D0, &qword_2D5728);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v103 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v17;
  __chkstk_darwin(v16);
  v19 = &v79 - v18;
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v102 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v79 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v28 = *(v21 + 16);
  v101 = v27;
  v100 = v21 + 16;
  v99 = v28;
  v28(v26, v27, v20);
  v30 = v14 + 16;
  v29 = *(v14 + 16);
  v90 = a2;
  v29(v19, a2, v13);
  v31 = v109;
  v104 = v21;
  v32 = v14;
  v33 = sub_2CDFE0();
  v34 = v20;
  v35 = sub_2CE690();
  v98 = v31;

  v36 = os_log_type_enabled(v33, v35);
  v88 = v13;
  v86 = v32;
  v83 = v30;
  v82 = v29;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v111[0] = v80;
    *v37 = 136315394;
    v81 = v34;
    v29(v103, v19, v13);
    v38 = sub_2CE2A0();
    v40 = v39;
    (*(v32 + 8))(v19, v13);
    v41 = sub_3F08(v38, v40, v111);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *&v113 = v109;
    swift_getAssociatedTypeWitness();
    sub_2CEB90();
    v42 = sub_2CEB70();
    v44 = sub_3F08(v42, v43, v111);

    *(v37 + 14) = v44;
    _os_log_impl(&dword_0, v33, v35, "AppResolutionCommonStrategy#promptForDisambiguation with apps: %s, intent: %s", v37, 0x16u);
    swift_arrayDestroy();

    v45 = *(v104 + 8);
    v46 = v81;
    v45(v26, v81);
    if (!v109)
    {
      goto LABEL_10;
    }
  }

  else
  {

    (*(v32 + 8))(v19, v13);
    v45 = *(v104 + 8);
    v45(v26, v34);
    v46 = v34;
    if (!v109)
    {
LABEL_10:
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
      goto LABEL_11;
    }
  }

  v47 = v98;
  v110 = v98;
  swift_getAssociatedTypeWitness();
  v48 = v47;
  sub_20410(&qword_3530E0, &unk_2D69D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(&v114 + 1))
  {
    sub_F338(&v113, v111);
    sub_2CC580();
    sub_35E0(v111, v111[3]);
    v49 = v87;
    v50 = *(v87 + 104);
    v51 = v85;
    v101 = v48;
    v52 = v89;
    v50(v85, enum case for AcceptedSpeakerIdConfidence.anyConfidence(_:), v89);
    v104 = sub_2CCB40();
    v102 = v53;
    (*(v49 + 8))(v51, v52);
    v54 = v88;
    v82(v103, v90, v88);
    v55 = v96;
    v56 = v93;
    v57 = v108;
    (*(v96 + 16))(v93, v92, v108);
    v58 = v86;
    v59 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v60 = (v84 + *(v55 + 80) + v59) & ~*(v55 + 80);
    v61 = (v91 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = v107;
    *(v62 + 16) = v57;
    *(v62 + 24) = v63;
    (*(v58 + 32))(v62 + v59, v103, v54);
    (*(v55 + 32))(v62 + v60, v56, v57);
    *(v62 + v61) = v109;
    v64 = (v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8));
    v65 = v105;
    *v64 = v106;
    v64[1] = v65;
    v66 = v101;

    v67 = v97;
    sub_2CC570();

    (*(v94 + 8))(v67, v95);
    return sub_306C(v111);
  }

LABEL_11:
  sub_30B8(&v113, &qword_3530D8, &unk_2D5730);
  v69 = v102;
  v99(v102, v101, v46);
  v70 = sub_2CDFE0();
  v71 = sub_2CE680();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_0, v70, v71, "Fatal: cannot case intent as PrivateMediaIntentDataProviding", v72, 2u);
  }

  v45(v69, v46);
  v73 = sub_2C9D40();
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  v76 = sub_2C9D20();
  sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure);
  v77 = swift_allocError();
  *v78 = v76;
  v111[0] = v77;
  v112 = 1;
  v106(v111);
  return sub_30B8(v111, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_1736D4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a5;
  v59 = a1;
  v14 = sub_20410(&qword_3530D0, &qword_2D5728);
  v64 = *(v14 - 8);
  v62 = *(v64 + 64);
  v15 = __chkstk_darwin(v14);
  v70 = &v55 - v16;
  v71 = a7;
  v63 = *(a7 - 8);
  v17 = *(v63 + 64);
  v18 = __chkstk_darwin(v15);
  v60 = v19;
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v18;
  v20 = sub_2CA460();
  v21 = v20;
  v72[0] = _swiftEmptyArrayStorage;
  if (v20 >> 62)
  {
LABEL_28:
    v22 = sub_2CEDA0();
  }

  else
  {
    v22 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  }

  v67 = a6;
  v68 = a4;
  v69 = a8;
  if (v22)
  {
    v57 = a3;
    v58 = a2;
    a3 = 0;
    a2 = v21 & 0xC000000000000001;
    a8 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a2)
      {
        a6 = sub_2CECD0();
        v23 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v29 = v72[0];
          a8 = v69;
          a3 = v57;
          a2 = v58;
          goto LABEL_22;
        }
      }

      else
      {
        if (a3 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_28;
        }

        a6 = *(v21 + 8 * a3 + 32);

        v23 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_19;
        }
      }

      a4 = sub_2CCF90();
      v25 = v24;
      v26 = sub_2CBD90();
      if (!v25)
      {
        break;
      }

      if (a4 == v26 && v25 == v27)
      {
      }

      else
      {
        a4 = sub_2CEEA0();

        if ((a4 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_6:
      ++a3;
      if (v23 == v22)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    sub_2CED00();
    v28 = *(v72[0] + 2);
    sub_2CED30();
    sub_2CED40();
    sub_2CED10();
    goto LABEL_6;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_22:

  __chkstk_darwin(v30);
  v31 = v71;
  *(&v55 - 4) = v71;
  *(&v55 - 3) = a8;
  v32 = v59;
  *(&v55 - 2) = a3;
  *(&v55 - 1) = v32;
  v33 = sub_16CEF0(sub_17F418, (&v55 - 6), v29);

  v72[0] = v33;

  sub_17C140(v72);

  v34 = v72[0];
  v59 = (*(a8 + 32))(v31, a8);
  v35 = *(v34 + 2);
  v36 = _swiftEmptyArrayStorage;
  v58 = v34;
  if (v35)
  {
    v72[0] = _swiftEmptyArrayStorage;
    sub_2CED20();
    v37 = (v34 + 80);
    do
    {
      v38 = *v37;
      v37 += 9;

      sub_2CED00();
      v39 = *(v72[0] + 2);
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      --v35;
    }

    while (v35);
    v36 = v72[0];
  }

  v57 = v36;
  v40 = *(a8 + 48);
  v41 = a8;
  v42 = v71;
  v40(v72, v71, v41);
  sub_35E0(v72, v72[3]);
  v56 = sub_2CC480();
  v43 = v63;
  v44 = v61;
  (*(v63 + 16))(v61, a3, v42);
  v45 = v64;
  v46 = a2;
  v47 = v66;
  (*(v64 + 16))(v70, v46, v66);
  v48 = (*(v43 + 80) + 48) & ~*(v43 + 80);
  v49 = (v60 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v45 + 80) + v49 + 8) & ~*(v45 + 80);
  v51 = swift_allocObject();
  v52 = v69;
  *(v51 + 2) = v42;
  *(v51 + 3) = v52;
  v53 = v67;
  *(v51 + 4) = v65;
  *(v51 + 5) = v53;
  (*(v43 + 32))(&v51[v48], v44, v42);
  *&v51[v49] = v58;
  (*(v45 + 32))(&v51[v50], v70, v47);

  sub_28AFC4(v68, v56, sub_17E6CC, v51);

  return sub_306C(v72);
}

uint64_t sub_173C74(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v99 = a6;
  v106 = a5;
  v107 = a4;
  v108 = a3;
  v109 = a2;
  v110 = a1;
  v10 = sub_2CD230();
  v101 = *(v10 - 8);
  v102 = v10;
  v11 = *(v101 + 64);
  __chkstk_darwin(v10);
  v100 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v111 = *(v13 - 1);
  v112 = v13;
  v14 = *(v111 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v104 = &v91 - v18;
  v97 = sub_20410(&unk_353020, &unk_2D0970);
  v19 = *(*(v97 - 8) + 64);
  v20 = __chkstk_darwin(v97);
  v96 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v91 - v23;
  __chkstk_darwin(v22);
  v26 = &v91 - v25;
  v27 = sub_20410(&unk_3519A0, &qword_2D0980);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v91 - v29;
  v105 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v31 = *(*(v105 - 8) + 64);
  v32 = __chkstk_darwin(v105);
  v98 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v103 = &v91 - v35;
  __chkstk_darwin(v34);
  v37 = &v91 - v36;
  sub_F3F4(v110, v30, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v110 = v37;
    sub_14A58(v30, v37, &qword_34C6E8, &unk_2D0FF0);
    (*(a8 + 56))(a7, a8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v56 = swift_getAssociatedTypeWitness();
    sub_B7440(v106, AssociatedTypeWitness, v56, v26);
    v93 = a8;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v57 = v112;
    v58 = sub_3ED0(v112, static Logger.default);
    swift_beginAccess();
    v59 = v111;
    v60 = v104;
    (*(v111 + 16))(v104, v58, v57);
    v94 = v26;
    sub_F3F4(v26, v24, &unk_353020, &unk_2D0970);
    v61 = sub_2CDFE0();
    v62 = sub_2CE690();
    v63 = os_log_type_enabled(v61, v62);
    v95 = a7;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v115[0] = v92;
      *v64 = 136315394;
      sub_F3F4(v24, v96, &unk_353020, &unk_2D0970);
      v65 = sub_2CE2A0();
      v66 = v59;
      v68 = v67;
      sub_30B8(v24, &unk_353020, &unk_2D0970);
      v69 = sub_3F08(v65, v68, v115);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2082;
      v70 = sub_2CCCA0();
      v72 = sub_3F08(v70, v71, v115);

      *(v64 + 14) = v72;
      _os_log_impl(&dword_0, v61, v62, "AppResolutionStrategy#makePromptForDisambiguation makeNLContextProvider returned: %s %{public}s", v64, 0x16u);
      swift_arrayDestroy();

      (*(v66 + 8))(v104, v57);
    }

    else
    {

      sub_30B8(v24, &unk_353020, &unk_2D0970);
      (*(v59 + 8))(v60, v57);
    }

    v73 = v110;
    v74 = v103;
    sub_F3F4(v110, v103, &qword_34C6E8, &unk_2D0FF0);
    v75 = *(v74 + *(v105 + 48));
    v76 = [v75 dialog];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v77 = sub_2CE410();

    if (v77 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_14:
        if ((v77 & 0xC000000000000001) != 0)
        {
          v78 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v78 = *(v77 + 32);
        }

        v79 = v78;

        v80 = [v79 fullPrint];

        v81 = sub_2CE270();
        v83 = v82;

LABEL_20:
        v84 = sub_2CA130();
        v112 = *(*(v84 - 8) + 8);
        v112(v74, v84);
        sub_20410(&qword_3530D0, &qword_2D5728);
        sub_2CA460();
        v85 = v100;
        sub_174770(v81, v83, v106, v100);

        v86 = v73;
        v87 = v73;
        v88 = v98;
        sub_F3F4(v86, v98, &qword_34C6E8, &unk_2D0FF0);
        v89 = *(v88 + *(v105 + 48));
        v90 = v94;
        sub_17DC04(v85, v88, v89, v94, v109, v108);

        (*(v101 + 8))(v85, v102);
        sub_30B8(v90, &unk_353020, &unk_2D0970);
        sub_30B8(v87, &qword_34C6E8, &unk_2D0FF0);
        return (v112)(v88, v84);
      }
    }

    v81 = 0;
    v83 = 0xE000000000000000;
    goto LABEL_20;
  }

  sub_30B8(v30, &unk_3519A0, &qword_2D0980);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = v112;
  v39 = sub_3ED0(v112, static Logger.default);
  swift_beginAccess();
  v40 = v111;
  (*(v111 + 16))(v17, v39, v38);
  v41 = sub_2CDFE0();
  v42 = sub_2CE680();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v113[0] = v44;
    *v43 = 136446210;
    v45 = sub_2CCCA0();
    v47 = sub_3F08(v45, v46, v113);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_0, v41, v42, "AppResolutionStrategy#promptForDisambiguationWithRF missing disambiguateApps dialog %{public}s", v43, 0xCu);
    sub_306C(v44);
  }

  (*(v40 + 8))(v17, v38);
  v48 = sub_2C9D40();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_2C9D20();
  sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure);
  v52 = swift_allocError();
  *v53 = v51;
  v113[0] = v52;
  v114 = 1;
  v109(v113);
  return sub_30B8(v113, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_174770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v112 = a3;
  v7 = sub_20410(&unk_3519B0, &qword_2D1230);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v102 = v88 - v9;
  v10 = sub_2CD220();
  v103 = *(v10 - 8);
  v11 = *(v103 + 64);
  v12 = __chkstk_darwin(v10);
  v110 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v109 = v88 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v111 = v88 - v22;
  __chkstk_darwin(v21);
  v24 = v88 - v23;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v26 = v16[2];
  v94 = v25;
  v93 = v16 + 2;
  v92 = v26;
  v26(v24, v25, v15);
  v27 = sub_2CDFE0();
  v28 = sub_2CE670();
  v29 = os_log_type_enabled(v27, v28);
  v89 = a4;
  v88[2] = a2;
  v88[1] = a1;
  v88[0] = v20;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v113 = v31;
    *v30 = 136446210;
    v32 = sub_2CCCA0();
    v34 = sub_3F08(v32, v33, &v113);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_0, v27, v28, "MediaItemDisambiguationStrategy#disambiguationSnippet... %{public}s", v30, 0xCu);
    sub_306C(v31);
  }

  v95 = v16[1];
  v95(v24, v15);
  v35 = v111;
  v92(v111, v94, v15);
  v36 = v112;

  v37 = sub_2CDFE0();
  v38 = sub_2CE670();

  v39 = os_log_type_enabled(v37, v38);
  v104 = v10;
  v91 = v15;
  v90 = v16;
  if (!v39)
  {

    v95(v35, v15);
    v49 = v36[2];
    if (!v49)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v40 = swift_slowAlloc();
  v108 = swift_slowAlloc();
  v113 = v108;
  *v40 = 136315394;
  v41 = v36[2];
  if (v41)
  {
    v42 = v36 + 7;
    v43 = _swiftEmptyArrayStorage;
    do
    {
      v45 = *(v42 - 1);
      v44 = *v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_B90C4(0, *(v43 + 2) + 1, 1, v43);
      }

      v47 = *(v43 + 2);
      v46 = *(v43 + 3);
      if (v47 >= v46 >> 1)
      {
        v43 = sub_B90C4((v46 > 1), v47 + 1, 1, v43);
      }

      *(v43 + 2) = v47 + 1;
      v48 = &v43[16 * v47];
      *(v48 + 4) = v45;
      *(v48 + 5) = v44;
      v42 += 9;
      --v41;
    }

    while (v41);
  }

  v65 = sub_2CE420();
  v67 = v66;

  v68 = sub_3F08(v65, v67, &v113);

  *(v40 + 4) = v68;
  *(v40 + 12) = 2082;
  v69 = sub_2CCCA0();
  v71 = sub_3F08(v69, v70, &v113);

  *(v40 + 14) = v71;
  _os_log_impl(&dword_0, v37, v38, "AppResolutionStrategy#disambiguationSnippet ordered: %s %{public}s", v40, 0x16u);
  swift_arrayDestroy();

  v95(v111, v91);
  v36 = v112;
  v49 = v112[2];
  if (v49)
  {
LABEL_15:
    v101 = sub_2C8D90();
    v50 = *(v101 - 8);
    v51 = *(v50 + 56);
    v99 = v50 + 56;
    v100 = v51;
    v52 = v104;
    v97 = v103 + 8;
    v98 = (v103 + 16);
    v96 = v103 + 32;
    v53 = v36 + 6;
    v54 = _swiftEmptyArrayStorage;
    v55 = v109;
    v56 = v110;
    do
    {
      v57 = *(v53 - 1);
      v111 = *(v53 - 2);
      v112 = v49;
      v58 = *v53;
      v105 = v53[1];
      v106 = v58;
      v60 = v53[3];
      v59 = v53[4];
      v61 = v53[6];
      v108 = v53[5];
      v100(v102, 1, 1, v101);
      v110 = v60;

      v109 = v59;

      v107 = v108;
      v108 = v61;

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v111 = v57;
      sub_2CD210();
      (*v98)(v56, v55, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_B91F8(0, v54[2] + 1, 1, v54);
      }

      v63 = v54[2];
      v62 = v54[3];
      if (v63 >= v62 >> 1)
      {
        v54 = sub_B91F8(v62 > 1, v63 + 1, 1, v54);
      }

      v64 = v103;
      v52 = v104;
      (*(v103 + 8))(v55, v104);
      v54[2] = v63 + 1;
      (*(v64 + 32))(v54 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v56, v52);
      v53 += 9;
      v49 = (v112 - 1);
    }

    while (v112 != (&dword_0 + 1));
  }

LABEL_23:
  v72 = v88[0];
  v73 = v91;
  v92(v88[0], v94, v91);
  v74 = sub_2CDFE0();
  v75 = sub_2CE670();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v76 = 136315394;

    v77 = sub_2CE420();
    v79 = v78;

    v80 = sub_3F08(v77, v79, &v113);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2082;
    v81 = sub_2CCCA0();
    v83 = sub_3F08(v81, v82, &v113);

    *(v76 + 14) = v83;
    _os_log_impl(&dword_0, v74, v75, "MediaItemDisambiguationStrategy#disambiguationSnippet returning items to disambiguate: %s %{public}s", v76, 0x16u);
    swift_arrayDestroy();
  }

  v95(v72, v73);
  v84 = v89;

  sub_2CD310();
  v85 = enum case for SiriAudioSnippets.disambiguation(_:);
  v86 = sub_2CD230();
  (*(*(v86 - 8) + 104))(v84, v85, v86);
}

uint64_t sub_1751C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_2CA5F0();
  return sub_2CA5A0();
}

uint64_t sub_1753F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_175494, 0, 0);
}

uint64_t sub_175494()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_2CA080();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[13] = sub_2CA070();
  v8 = sub_2CD230();
  v0[5] = v8;
  v0[6] = sub_17ECF8(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v9 = sub_F390(v0 + 2);
  (*(*(v8 - 8) + 16))(v9, v4, v8);
  sub_20410(&unk_351900, &unk_2D0960);
  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v10 + 32) = *(v1 + *(v2 + 48));
  v11 = sub_2CA130();
  (*(*(v11 - 8) + 8))(v1, v11);
  v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
  v17 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_7EF60;
  v14 = v0[10];
  v15 = v0[7];

  return v17(v15, v0 + 2, v10, v14);
}

uint64_t sub_17569C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = a7;
  v74 = a6;
  v73 = a5;
  v75 = a4;
  v72 = *(a7 - 1);
  v12 = *(v72 + 64);
  __chkstk_darwin(a1);
  v70 = v13;
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C8EC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2CE000();
  v19 = *(v79 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v79);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_3530D0, &qword_2D5728);
  v23 = sub_2CA460();
  v81 = v9;
  v82 = a8;
  v78 = a8;
  v83 = a3;
  v84 = a1;
  v24 = sub_16CEF0(sub_17EC60, v80, v23);

  v85[0] = v24;

  sub_17C140(v85);
  v69 = v14;
  v76 = v22;
  v77 = v19;

  v25 = v85[0];
  if (qword_34BF58 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v26 = v79;
    v27 = sub_3ED0(v79, static Logger.default);
    swift_beginAccess();
    v28 = v76;
    v29 = v77;
    (*(v77 + 16))(v76, v27, v26);

    v30 = sub_2CDFE0();
    v31 = sub_2CE670();

    v68 = v31;
    if (!os_log_type_enabled(v30, v31))
    {

      (*(v29 + 8))(v28, v26);
      v40 = v69;
      goto LABEL_15;
    }

    v32 = v30;
    v64 = v18;
    v65 = v15;
    v66 = a3;
    v67 = v9;
    v33 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v85[0] = v62;
    v63 = v33;
    *v33 = 136315138;
    v34 = *(v25 + 2);
    if (!v34)
    {
      break;
    }

    v35 = 0;
    v9 = v25 + 56;
    v18 = _swiftEmptyArrayStorage;
    while (v35 < *(v25 + 2))
    {
      v15 = *(v9 - 1);
      v36 = *v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_B90C4(0, *(v18 + 2) + 1, 1, v18);
      }

      v38 = *(v18 + 2);
      v37 = *(v18 + 3);
      if (v38 >= v37 >> 1)
      {
        v18 = sub_B90C4((v37 > 1), v38 + 1, 1, v18);
      }

      ++v35;
      *(v18 + 2) = v38 + 1;
      v39 = &v18[16 * v38];
      *(v39 + 4) = v15;
      *(v39 + 5) = v36;
      v9 += 9;
      a3 = v79;
      if (v34 == v35)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  a3 = v79;
LABEL_14:
  v41 = sub_2CE420();
  v43 = v42;

  v44 = sub_3F08(v41, v43, v85);

  v45 = v63;
  *(v63 + 1) = v44;
  _os_log_impl(&dword_0, v32, v68, "AppResolutionCommonStrategy#promptForDisambiguation ordered: %s", v45, 0xCu);
  sub_306C(v62);

  (*(v77 + 8))(v76, a3);
  v9 = v67;
  a3 = v66;
  v40 = v69;
  v15 = v65;
  v18 = v64;
LABEL_15:
  sub_2CB570();
  v46 = v78;
  v79 = sub_175F94(v25, v18, v9, v78);
  (*(v15 + 8))(v18, v40);
  v77 = (*(v46 + 32))(v9, v46);
  v47 = *(v25 + 2);
  v48 = _swiftEmptyArrayStorage;
  if (v47)
  {
    v85[0] = _swiftEmptyArrayStorage;
    sub_2CED20();
    v49 = (v25 + 80);
    do
    {
      v50 = *v49;
      v49 += 9;

      sub_2CED00();
      v51 = *(v85[0] + 2);
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      --v47;
    }

    while (v47);
    v48 = v85[0];
  }

  v76 = v48;
  v52 = v78;
  (*(v78 + 48))(v85, v9, v78);
  sub_35E0(v85, v85[3]);
  v53 = sub_2CC480();
  v54 = v72;
  v55 = v71;
  (*(v72 + 16))(v71, a3, v9);
  v56 = (*(v54 + 80) + 48) & ~*(v54 + 80);
  v57 = (v70 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 2) = v9;
  *(v58 + 3) = v52;
  v59 = v9;
  v60 = v74;
  *(v58 + 4) = v73;
  *(v58 + 5) = v60;
  (*(v54 + 32))(&v58[v56], v55, v59);
  *&v58[v57] = v25;
  *&v58[(v57 + 15) & 0xFFFFFFFFFFFFFFF8] = v79;

  sub_28AFC4(v75, v53, sub_17EC80, v58);

  return sub_306C(v85);
}

__n128 sub_175E14@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a4 + 24);

  v10(v21, a3, a4);
  type metadata accessor for AppInfoBuilder();
  swift_initStackObject();
  v11 = v22;
  v12 = v23;
  v13 = sub_F9A0(v21, v22);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v16);

  sub_188F64(v9, v16, a2, v11, v12, v24);
  sub_306C(v21);
  v18 = v24[3];
  *(a5 + 32) = v24[2];
  *(a5 + 48) = v18;
  *(a5 + 64) = v25;
  result = v24[1];
  *a5 = v24[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_175F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a3;
  v10 = _swiftEmptyArrayStorage;
  v9[3] = a4;
  v9[5] = a2;
  v9[6] = &v10;
  sub_16D130(sub_17F1BC, v9, a1);
  sub_2AD30(a1);
  v5 = sub_2C9960();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_2C9950();
}

uint64_t sub_176044(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v315 = a7;
  v287 = a6;
  v305 = a5;
  v313 = a2;
  v314 = a4;
  v312 = a3;
  v304 = sub_2CA910();
  v303 = *(v304 - 8);
  v10 = *(v303 + 64);
  __chkstk_darwin(v304);
  v302 = &v281 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_2C8E80();
  v295 = *(v296 - 8);
  v12 = *(v295 + 64);
  __chkstk_darwin(v296);
  v294 = &v281 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_20410(&unk_353020, &unk_2D0970);
  v14 = *(*(v290 - 8) + 64);
  v15 = __chkstk_darwin(v290);
  v289 = &v281 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v311 = (&v281 - v18);
  __chkstk_darwin(v17);
  v20 = &v281 - v19;
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v316 = v21;
  v317 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v301 = &v281 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v288 = &v281 - v27;
  v28 = __chkstk_darwin(v26);
  v285 = &v281 - v29;
  v30 = __chkstk_darwin(v28);
  v284 = &v281 - v31;
  v32 = __chkstk_darwin(v30);
  v300 = &v281 - v33;
  v34 = __chkstk_darwin(v32);
  v298 = &v281 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v281 - v37;
  __chkstk_darwin(v36);
  v40 = &v281 - v39;
  v41 = sub_20410(&unk_3519A0, &qword_2D0980);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = &v281 - v43;
  v306 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v45 = *(*(v306 - 8) + 64);
  v46 = __chkstk_darwin(v306);
  v286 = &v281 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v283 = &v281 - v49;
  v50 = __chkstk_darwin(v48);
  v297 = &v281 - v51;
  v52 = __chkstk_darwin(v50);
  v293 = &v281 - v53;
  v54 = __chkstk_darwin(v52);
  v299 = &v281 - v55;
  v56 = __chkstk_darwin(v54);
  v292 = (&v281 - v57);
  v58 = __chkstk_darwin(v56);
  v291 = &v281 - v59;
  __chkstk_darwin(v58);
  v61 = &v281 - v60;
  sub_F3F4(a1, v44, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v44, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v62 = v316;
    v63 = sub_3ED0(v316, static Logger.default);
    swift_beginAccess();
    v64 = v317;
    (*(v317 + 16))(v40, v63, v62);
    v65 = sub_2CDFE0();
    v66 = sub_2CE680();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v313;
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v65, v66, "AppResolutionCommonStrategy#promptForDisambiguation missing disambiguateApps template", v69, 2u);
    }

    (*(v64 + 8))(v40, v62);
    v70 = sub_2C9D40();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v73 = sub_2C9D20();
    sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure);
    v74 = swift_allocError();
    *v75 = v73;
    *&v319 = v74;
    v322 = 1;
    v68(&v319);
  }

  else
  {
    sub_14A58(v44, v61, &qword_34C6E8, &unk_2D0FF0);
    (*(a8 + 56))(v315, a8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v281 = a8;
    v77 = swift_getAssociatedTypeWitness();
    sub_B7440(v305, AssociatedTypeWitness, v77, v20);
    v78 = v61;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v79 = v316;
    v80 = sub_3ED0(v316, static Logger.default);
    swift_beginAccess();
    v81 = v317;
    v82 = *(v317 + 16);
    v308 = v317 + 16;
    v309 = v80;
    v307 = v82;
    v82(v38, v80, v79);
    v282 = v20;
    v83 = v311;
    sub_F3F4(v20, v311, &unk_353020, &unk_2D0970);
    v84 = sub_2CDFE0();
    v85 = sub_2CE690();
    v86 = os_log_type_enabled(v84, v85);
    v310 = v61;
    if (v86)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v319 = v88;
      *v87 = 136315138;
      sub_F3F4(v83, v289, &unk_353020, &unk_2D0970);
      v89 = sub_2CE2A0();
      v90 = v83;
      v91 = v89;
      v93 = v92;
      v79 = v316;
      sub_30B8(v90, &unk_353020, &unk_2D0970);
      v94 = sub_3F08(v91, v93, &v319);
      v95 = v317;

      *(v87 + 4) = v94;
      _os_log_impl(&dword_0, v84, v85, "AppResolutionCommonStrategy#promptForDisambiguation makeNLContextProvider returned: %s", v87, 0xCu);
      sub_306C(v88);
      v81 = v95;

      v78 = v310;

      v96 = v95;
    }

    else
    {

      sub_30B8(v83, &unk_353020, &unk_2D0970);
      v96 = v81;
    }

    v311 = *(v96 + 8);
    (v311)(v38, v79);
    v97 = v306;
    v98 = v315;
    v99 = v281;
    v100 = (*(v281 + 64))(v315, v281);
    v100();

    sub_2C9C00();

    if (sub_2CB640())
    {

      v101 = v291;
      sub_F3F4(v78, v291, &qword_34C6E8, &unk_2D0FF0);

      v102 = sub_2CA100();
      v103 = sub_2CA130();
      v104 = *(v103 - 8);
      v105 = *(v104 + 8);
      v314 = v104 + 8;
      v315 = v105;
      (v105)(v101, v103);
      v106 = (v102 + 40);
      v107 = *(v102 + 16) + 1;
      while (--v107)
      {
        v109 = *(v106 - 1);
        v108 = *v106;
        v106 += 2;
        v110 = HIBYTE(v108) & 0xF;
        if ((v108 & 0x2000000000000000) == 0)
        {
          v110 = v109 & 0xFFFFFFFFFFFFLL;
        }

        if (v110)
        {

          goto LABEL_29;
        }
      }

      v109 = 0;
      v108 = 0;
LABEL_29:

      v128 = v292;
      sub_F3F4(v78, v292, &qword_34C6E8, &unk_2D0FF0);

      v129 = sub_2CA110();
      (v315)(v128, v103);
      v130 = (v129 + 40);
      v131 = *(v129 + 16) + 1;
      v132 = v298;
      v305 = v103;
      while (--v131)
      {
        v134 = *(v130 - 1);
        v133 = *v130;
        v130 += 2;
        v135 = HIBYTE(v133) & 0xF;
        if ((v133 & 0x2000000000000000) == 0)
        {
          v135 = v134 & 0xFFFFFFFFFFFFLL;
        }

        if (v135)
        {

          goto LABEL_36;
        }
      }

      v134 = 0;
      v133 = 0;
LABEL_36:

      v136 = v316;
      v307(v132, v309, v316);

      v137 = sub_2CDFE0();
      v138 = sub_2CE670();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        v318 = v292;
        *&v319 = v109;
        *v139 = 136315394;
        *(&v319 + 1) = v108;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v140 = sub_2CE2A0();
        v142 = sub_3F08(v140, v141, &v318);

        *(v139 + 4) = v142;
        v78 = v310;
        *(v139 + 12) = 2080;
        *&v319 = v134;
        *(&v319 + 1) = v133;
        v143 = sub_2CE2A0();
        v145 = sub_3F08(v143, v144, &v318);

        *(v139 + 14) = v145;
        _os_log_impl(&dword_0, v137, v138, "AppResolutionCommonStrategy#promptForDisambiguation using CarPlay dialog-only views. From template:: print:%s, speak:%s", v139, 0x16u);
        swift_arrayDestroy();

        v146 = v298;
      }

      else
      {

        v146 = v132;
      }

      (v311)(v146, v136);
      v79 = v136;
      v163 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
      v164 = v294;
      sub_2C8E70();
      sub_2C8E50();
      (*(v295 + 8))(v164, v296);
      v165 = sub_2CE260();

      [v163 setAceId:v165];

      v166 = v299;
      sub_F3F4(v78, v299, &qword_34C6E8, &unk_2D0FF0);
      v167 = v306;

      sub_2CA0D0();
      v168 = sub_2CE260();

      v169 = v305;
      v170 = v315;
      (v315)(v166, v305);
      [v163 setDialogIdentifier:v168];

      v171 = v293;
      sub_F3F4(v78, v293, &qword_34C6E8, &unk_2D0FF0);

      v172 = sub_2CA100();
      (v170)(v171, v169);
      v173 = (v172 + 40);
      v174 = *(v172 + 16) + 1;
      while (--v174)
      {
        v176 = *(v173 - 1);
        v175 = *v173;
        v173 += 2;
        v177 = HIBYTE(v175) & 0xF;
        if ((v175 & 0x2000000000000000) == 0)
        {
          v177 = v176 & 0xFFFFFFFFFFFFLL;
        }

        if (v177)
        {

          v178 = sub_2CE260();

          goto LABEL_52;
        }
      }

      v178 = 0;
LABEL_52:
      [v163 setText:v178];

      v179 = v297;
      sub_F3F4(v310, v297, &qword_34C6E8, &unk_2D0FF0);
      v180 = *(v179 + *(v167 + 48));
      v181 = v163;

      v182 = sub_2CA110();
      (v315)(v179, v169);
      v183 = (v182 + 40);
      v184 = *(v182 + 16) + 1;
      v151 = v313;
      v153 = v311;
      while (--v184)
      {
        v186 = *(v183 - 1);
        v185 = *v183;
        v183 += 2;
        v187 = HIBYTE(v185) & 0xF;
        if ((v185 & 0x2000000000000000) == 0)
        {
          v187 = v186 & 0xFFFFFFFFFFFFLL;
        }

        if (v187)
        {

LABEL_60:
          v190 = sub_2CE260();

          goto LABEL_61;
        }
      }

      v188 = [v181 text];
      if (v188)
      {
        v189 = v188;
        sub_2CE270();

        goto LABEL_60;
      }

      v190 = 0;
LABEL_61:
      [v181 setSpeakableText:v190];

      [v181 setCanUseServerTTS:1];
      sub_334A0(0, &qword_353110, NSNumber_ptr);
      isa = sub_2CEB10(1).super.super.isa;
      [v181 setListenAfterSpeaking:isa];

      v192 = v300;
      v307(v300, v309, v79);
      v193 = v181;
      v194 = sub_2CDFE0();
      v195 = sub_2CE670();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = v79;
        v197 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        v318 = v315;
        *v197 = 136315394;
        v198 = [v193 text];
        if (v198)
        {
          v199 = v198;
          v200 = sub_2CE270();
          v202 = v201;
        }

        else
        {
          v200 = 0;
          v202 = 0;
        }

        *&v319 = v200;
        *(&v319 + 1) = v202;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v214 = sub_2CE2A0();
        v216 = sub_3F08(v214, v215, &v318);

        *(v197 + 4) = v216;
        *(v197 + 12) = 2080;
        v217 = [v193 speakableText];
        if (v217)
        {
          v218 = v153;
          v219 = v151;
          v220 = v217;
          v221 = sub_2CE270();
          v223 = v222;

          v151 = v219;
          v153 = v218;
          v196 = v316;
        }

        else
        {
          v221 = 0;
          v223 = 0;
        }

        *&v319 = v221;
        *(&v319 + 1) = v223;
        v226 = sub_2CE2A0();
        v228 = sub_3F08(v226, v227, &v318);

        *(v197 + 14) = v228;
        _os_log_impl(&dword_0, v194, v195, "AppResolutionCommonStrategy#promptForDisambiguation CarPlay view print:%s, speak:%s", v197, 0x16u);
        swift_arrayDestroy();

        (v153)(v300, v196);
        v203 = v301;
        v79 = v196;
      }

      else
      {

        (v153)(v192, v79);
        v203 = v301;
      }

      sub_20410(&unk_351900, &unk_2D0960);
      v229 = swift_allocObject();
      *(v229 + 16) = xmmword_2D0770;
      *(v229 + 32) = v193;
    }

    else
    {
      (*(v99 + 48))(&v319, v98, v99);
      sub_35E0(&v319, *(&v320 + 1));
      v111 = sub_2CC430();
      sub_306C(&v319);
      if (v111)
      {

        v112 = v285;
        v307(v285, v309, v79);
        v113 = sub_2CDFE0();
        v114 = sub_2CE670();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_0, v113, v114, "AppResolutionCommonStrategy#promptForDisambiguation using pym-compatible snippet", v115, 2u);
        }

        v300 = (v81 + 8);
        (v311)(v112, v79);
        v315 = sub_1780D4(v305, v315, v99);
        v116 = v310;
        v117 = v283;
        sub_F3F4(v310, v283, &qword_34C6E8, &unk_2D0FF0);

        v118 = sub_2CA100();
        v119 = sub_2CA130();
        v120 = *(v119 - 8);
        v121 = *(v120 + 8);
        v122 = (v120 + 8);
        v121(v117, v119);
        v123 = (v118 + 40);
        v124 = *(v118 + 16) + 1;
        while (--v124)
        {
          v126 = *(v123 - 1);
          v125 = *v123;
          v123 += 2;
          v127 = HIBYTE(v125) & 0xF;
          if ((v125 & 0x2000000000000000) == 0)
          {
            v127 = v126 & 0xFFFFFFFFFFFFLL;
          }

          if (v127)
          {

            goto LABEL_66;
          }
        }

        v125 = 0;
LABEL_66:

        v204 = v286;
        sub_F3F4(v116, v286, &qword_34C6E8, &unk_2D0FF0);

        v205 = sub_2CA110();
        v305 = v121;
        v121(v204, v119);
        v206 = (v205 + 40);
        v207 = *(v205 + 16) + 1;
        v314 = v119;
        while (--v207)
        {
          v208 = *(v206 - 1);
          v209 = *v206;
          v206 += 2;
          v210 = HIBYTE(v209) & 0xF;
          if ((v209 & 0x2000000000000000) == 0)
          {
            v210 = v208 & 0xFFFFFFFFFFFFLL;
          }

          if (v210)
          {

            goto LABEL_73;
          }
        }

        v209 = 0;
LABEL_73:

        v211 = [objc_allocWithZone(SADialogText) init];
        v212 = v311;
        v298 = v122;
        if (v125)
        {

          v213 = sub_2CE260();
        }

        else
        {
          v213 = 0;
        }

        [v211 setText:v213];

        v224 = v209 != 0;
        if (v209)
        {

          v225 = sub_2CE260();
        }

        else
        {
          v225 = 0;
        }

        [v211 setSpeakableTextOverride:v225];

        v230 = [objc_allocWithZone(SADialog) init];
        [v230 setCanUseServerTTS:1];
        sub_2CBC60();
        sub_35E0(&v319, *(&v320 + 1));
        v231 = sub_2CBE50();
        sub_306C(&v319);
        [v230 setPrintedOnly:(v231 & 1) == 0];

        if (v125)
        {

          v224 = 0;
        }

        v232 = v316;
        v233 = v310;
        v153 = v212;
        [v230 setSpokenOnly:v224];
        v234 = v211;
        [v230 setCaption:v234];
        [v230 setContent:v234];

        v235 = v299;
        sub_F3F4(v233, v299, &qword_34C6E8, &unk_2D0FF0);

        sub_2CA0D0();
        v236 = sub_2CE260();

        v305(v235, v314);
        [v230 setDialogIdentifier:v236];

        v237 = v315;
        [v237 setDialog:v230];
        sub_2CBC60();
        sub_35E0(&v319, *(&v320 + 1));
        v238 = [objc_allocWithZone(NSNumber) initWithBool:sub_2CBE50() & 1];
        sub_306C(&v319);
        [v237 setListenAfterSpeaking:v238];

        v239 = v288;
        v307(v288, v309, v232);
        v240 = v230;
        v241 = v237;
        v242 = v240;
        v243 = sub_2CDFE0();
        v244 = sub_2CE690();

        if (os_log_type_enabled(v243, v244))
        {
          v311 = v153;
          v245 = swift_slowAlloc();
          v246 = swift_slowAlloc();
          v315 = swift_slowAlloc();
          *&v319 = v315;
          *v245 = 136447746;
          v247 = sub_2CCC90();
          v249 = sub_3F08(v247, v248, &v319);

          *(v245 + 4) = v249;
          *(v245 + 12) = 1026;
          v250 = [v242 printedOnly];

          *(v245 + 14) = v250;
          *(v245 + 18) = 1026;
          v251 = [v242 spokenOnly];

          *(v245 + 20) = v251;
          *(v245 + 24) = 2114;
          v252 = [v242 caption];
          *(v245 + 26) = v252;
          *v246 = v252;
          *(v245 + 34) = 2114;
          v253 = [v242 content];
          *(v245 + 36) = v253;
          v246[1] = v253;
          *(v245 + 44) = 2114;
          v254 = [v242 dialogIdentifier];
          if (v254)
          {
            v255 = v254;
            v256 = sub_2CE270();
            v258 = v257;

            sub_10C40();
            swift_allocError();
            *v259 = v256;
            v259[1] = v258;
            v254 = _swift_stdlib_bridgeErrorToNSError();
            v260 = v254;
          }

          else
          {
            v260 = 0;
          }

          v151 = v313;
          *(v245 + 46) = v254;
          v246[2] = v260;
          *(v245 + 54) = 2112;
          v261 = [v241 listenAfterSpeaking];
          *(v245 + 56) = v261;
          v246[3] = v261;
          _os_log_impl(&dword_0, v243, v244, "AppResolutionCommonStrategy#promptForDisambiguation %{public}s pym built and set SADialog printedOnly:%{BOOL,public}d, spokenOnly:%{BOOL,public}d, caption:%{public}@, content:%{public}@, dialogIdentifier:%{public}@, listenAfterSpeaking: %@", v245, 0x40u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();

          sub_306C(v315);

          v79 = v316;
          v153 = v311;
          (v311)(v288, v316);
        }

        else
        {
          v79 = v232;

          (v153)(v239, v232);
          v151 = v313;
        }

        sub_20410(&unk_351900, &unk_2D0960);
        v262 = swift_allocObject();
        *(v262 + 16) = xmmword_2D0770;
        *(v262 + 32) = v241;
      }

      else
      {
        v147 = v284;
        v307(v284, v309, v79);
        v148 = sub_2CDFE0();
        v149 = sub_2CE670();
        v150 = os_log_type_enabled(v148, v149);
        v151 = v313;
        if (v150)
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&dword_0, v148, v149, "AppResolutionCommonStrategy#promptForDisambiguation using legacy snippet", v152, 2u);
        }

        v153 = v311;
        (v311)(v147, v79);
        v154 = v305;
        v155 = *(v305 + 2);
        if (v155)
        {
          *&v319 = _swiftEmptyArrayStorage;
          sub_2CED20();
          v156 = (v154 + 80);
          do
          {
            v157 = *v156;
            v156 += 9;

            sub_2CED00();
            v158 = *(v319 + 16);
            sub_2CED30();
            sub_2CED40();
            sub_2CED10();
            --v155;
          }

          while (v155);
        }

        v159 = sub_2CB540();
        v160 = *(v159 + 48);
        v161 = *(v159 + 52);
        swift_allocObject();
        v162 = sub_2CB530();
        *(&v320 + 1) = v159;
        v321 = sub_17ECF8(&unk_353100, &type metadata accessor for SiriEnvironmentBackedDeviceState);
        *&v319 = v162;
        sub_2CA3B0();

        sub_306C(&v319);
      }

      v203 = v301;
    }

    v307(v203, v309, v79);

    v263 = sub_2CDFE0();
    v264 = sub_2CE690();

    if (os_log_type_enabled(v263, v264))
    {
      v265 = swift_slowAlloc();
      v311 = v153;
      v266 = v151;
      v267 = v203;
      v268 = v265;
      v269 = swift_slowAlloc();
      *&v319 = v269;
      *v268 = 136315138;
      sub_334A0(0, &qword_34CD10, SAAceView_ptr);
      v270 = sub_2CE420();
      v272 = v271;

      v273 = sub_3F08(v270, v272, &v319);

      *(v268 + 4) = v273;
      _os_log_impl(&dword_0, v263, v264, "AppResolutionCommonStrategy#promptForDisambiguation views: %s", v268, 0xCu);
      sub_306C(v269);

      v274 = v267;
      v151 = v266;
      (v311)(v274, v79);
    }

    else
    {

      (v153)(v203, v79);
    }

    v321 = 0;
    v319 = 0u;
    v320 = 0u;
    v275 = v302;
    v276 = v282;
    sub_2C9E00();

    sub_30B8(&v319, &qword_34CC80, &qword_2D1520);
    v277 = v304;
    *(&v320 + 1) = v304;
    v321 = &protocol witness table for AceOutput;
    v278 = sub_F390(&v319);
    v279 = v303;
    (*(v303 + 16))(v278, v275, v277);
    v322 = 0;
    v151(&v319);
    (*(v279 + 8))(v275, v277);
    sub_30B8(v276, &unk_353020, &unk_2D0970);
    sub_30B8(v310, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v319, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_1780D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[7] = _swiftEmptyArrayStorage;
  v5[2] = a2;
  v5[3] = a3;
  if (sub_99044(sub_17ED40, v5, a1) >> 62)
  {
    sub_334A0(0, &unk_351910, SFCardSection_ptr);
    sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_334A0(0, &unk_351910, SFCardSection_ptr);
  }

  sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
  v3 = sub_2CE640();

  return v3;
}

uint64_t sub_178220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v174 = a4;
  v173 = a3;
  v179 = a5;
  v166 = *(a5 - 8);
  v9 = *(v166 + 64);
  __chkstk_darwin(a1);
  v165 = v10;
  v175 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CD040();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = __chkstk_darwin(v11);
  v157 = (&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v176 = &v153 - v17;
  v163 = v18;
  __chkstk_darwin(v16);
  v20 = &v153 - v19;
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v162 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v156 = &v153 - v27;
  v28 = __chkstk_darwin(v26);
  v161 = &v153 - v29;
  v30 = __chkstk_darwin(v28);
  v160 = &v153 - v31;
  __chkstk_darwin(v30);
  v33 = &v153 - v32;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v35 = *(v22 + 16);
  v171 = v34;
  v170 = v22 + 16;
  v169 = v35;
  v35(v33, v34, v21);
  v36 = *(v12 + 2);
  v168 = v12 + 16;
  v167 = v36;
  v36(v20, a2, v11);
  v37 = a1;
  v38 = sub_2CDFE0();
  v39 = sub_2CE690();
  v178 = v22;
  v40 = v39;

  v41 = os_log_type_enabled(v38, v40);
  v177 = v11;
  v180 = v21;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v158 = a2;
    v43 = v42;
    v172 = swift_slowAlloc();
    v185[0] = v172;
    *v43 = 136315394;
    *&v181 = v37;
    swift_getAssociatedTypeWitness();
    v155 = v37;
    swift_getWitnessTable();
    v44 = sub_D7E44();
    v46 = a6;
    v47 = v11;
    v48 = sub_3F08(v44, v45, v185);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    sub_17ECF8(&unk_34C160, &type metadata accessor for AppResolutionResult.AppResolutionResultError);
    v49 = sub_2CEEF0();
    v51 = v50;
    v52 = v47;
    a6 = v46;
    v159 = *(v12 + 1);
    v159(v20, v52);
    v53 = sub_3F08(v49, v51, v185);
    v37 = v155;

    *(v43 + 14) = v53;
    _os_log_impl(&dword_0, v38, v40, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse intent: %s, reason:%s", v43, 0x16u);
    swift_arrayDestroy();

    a2 = v158;

    v54 = *(v178 + 8);
    v55 = v33;
    v56 = v180;
  }

  else
  {

    v159 = *(v12 + 1);
    v159(v20, v11);
    v54 = *(v178 + 8);
    v55 = v33;
    v56 = v21;
  }

  v172 = v54;
  (v54)(v55, v56);
  v57 = sub_2CB460();
  if (!v57)
  {
    sub_2CB180();
    v57 = sub_2CB170();
  }

  v58 = v57;
  type metadata accessor for InternalRenderingFlowStrategy();
  v59 = swift_allocObject();
  v184 = v37;
  swift_getAssociatedTypeWitness();
  v60 = v37;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    sub_30B8(&v181, &qword_3530A0, &qword_2D1EF8);
    goto LABEL_15;
  }

  sub_F338(&v181, v185);
  sub_35E0(v185, v185[3]);
  if (!sub_2CC140())
  {
    goto LABEL_14;
  }

  v61 = *(v12 + 13);
  v155 = v59;
  v62 = v176;
  v154 = a6;
  v63 = v177;
  v61(v176, enum case for AppResolutionResult.AppResolutionResultError.noAppFound(_:), v177);
  v64 = sub_2CD030();
  v65 = v62;
  v59 = v155;
  v66 = v63;
  a6 = v154;
  v159(v65, v66);
  if ((v64 & 1) == 0)
  {
LABEL_14:
    sub_306C(v185);
LABEL_15:
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (v72)
    {
      v73 = v72;
      v160 = v58;
      v74 = a2;
      v75 = v60;
      v76 = sub_1D2364(&off_3303F0);
      sub_F1954(&unk_330410);
      if ((v76 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v73, &off_330420))
      {
        v162 = v75;
        v77 = v12;
        v78 = v161;
        v169(v161, v171, v180);
        v79 = sub_2CDFE0();
        v80 = sub_2CE690();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_0, v79, v80, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse Intent is PodcastPromotion.", v81, 2u);
        }

        v172(v78, v180);
        v82 = v164;
        v83 = v179;
        v180 = (*(a6 + 32))(v179, a6);
        v167(v176, v74, v177);
        v84 = v166;
        (*(v166 + 16))(v175, v82, v83);
        v85 = (v12[80] + 48) & ~v12[80];
        v86 = (v163 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
        v87 = a6;
        v88 = (*(v84 + 80) + v86 + 16) & ~*(v84 + 80);
        v89 = swift_allocObject();
        *(v89 + 2) = v83;
        *(v89 + 3) = v87;
        v90 = v162;
        *(v89 + 4) = v59;
        *(v89 + 5) = v90;
        v77[4](&v89[v85], v176, v177);
        v91 = &v89[v86];
        v92 = v174;
        *v91 = v173;
        *(v91 + 1) = v92;
        (*(v84 + 32))(&v89[v88], v175, v83);
        v93 = v90;

        sub_28891C(v93, sub_17D974, v89);
      }

      v94 = v75;
      if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v73, &off_330450))
      {
        v95 = v157;
        v96 = v74;
        v97 = v177;
        v167(v157, v74, v177);
        if ((*(v12 + 11))(v95, v97) == enum case for AppResolutionResult.AppResolutionResultError.appNotSupported(_:))
        {
          v155 = v59;
          v98 = v12;
          (*(v12 + 12))(v95, v97);
          v99 = *v95;
          v100 = sub_2CCF90();
          if (v101)
          {
            v102 = v101;
            v161 = v99;
            v159 = v100;
            if ((sub_2CBDB0() & 1) == 0)
            {
              v132 = a6;
              v133 = v97;
              v134 = v156;
              v169(v156, v171, v180);
              v135 = sub_2CDFE0();
              v136 = sub_2CE690();
              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                *v137 = 0;
                _os_log_impl(&dword_0, v135, v136, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse unsupported lyrics search, building custom error dialog", v137, 2u);
              }

              v172(v134, v180);
              v154 = v132;
              v138 = v164;
              v139 = v179;
              v180 = (*(v132 + 32))(v179, v132);
              sub_2CCFB0();

              v178 = sub_2CCF80();
              v167(v176, v96, v133);
              v140 = v166;
              v141 = v138;
              v142 = v139;
              (*(v166 + 16))(v175, v141, v139);
              v143 = (*(v98 + 80) + 48) & ~*(v98 + 80);
              v144 = (v163 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
              v145 = (*(v140 + 80) + v144 + 16) & ~*(v140 + 80);
              v146 = (v165 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
              v172 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
              v147 = swift_allocObject();
              v148 = v154;
              *(v147 + 16) = v142;
              *(v147 + 24) = v148;
              *(v147 + 32) = v155;
              *(v147 + 40) = v94;
              v98[4]((v147 + v143), v176, v177);
              v149 = (v147 + v144);
              v150 = v174;
              *v149 = v173;
              v149[1] = v150;
              (*(v140 + 32))(v147 + v145, v175, v142);
              v151 = (v147 + v146);
              *v151 = v159;
              v151[1] = v102;
              *(v172 + v147) = v160;
              v152 = v94;

              sub_2879AC(v178, v152, sub_17D84C, v147);
            }
          }

          else
          {
          }

          v59 = v155;
        }

        else
        {

          v159(v95, v97);
        }
      }

      else
      {
      }
    }

    v111 = v162;
    v169(v162, v171, v180);
    v112 = sub_2CDFE0();
    v113 = sub_2CE690();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse non-play or non-lyrics or non-appNotSupported, using default rendering...", v114, 2u);
    }

    v172(v111, v180);
    v185[0] = v59;
    sub_17ECF8(&qword_3530A8, type metadata accessor for InternalRenderingFlowStrategy);
    sub_2C9440();
  }

  v162 = v12;
  v67 = [v60 launchId];
  v158 = a2;
  if (v67)
  {
    v68 = v67;
    v69 = sub_2CE270();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v103 = v160;
  v169(v160, v171, v180);

  v104 = sub_2CDFE0();
  v105 = sub_2CE690();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v106 = 138412290;
    if (v71)
    {
      sub_10C40();
      v171 = swift_allocError();
      *v108 = v69;
      v108[1] = v71;

      v109 = _swift_stdlib_bridgeErrorToNSError();
      v110 = v109;
    }

    else
    {
      v109 = 0;
      v110 = 0;
    }

    *(v106 + 4) = v109;
    *v107 = v110;
    _os_log_impl(&dword_0, v104, v105, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse Intent is SiriForAirPlay with launchID: %@", v106, 0xCu);
    sub_30B8(v107, &unk_34FC00, &unk_2D0150);

    a6 = v154;
  }

  v160 = v58;

  v172(v103, v180);
  v116 = v164;
  v180 = (*(a6 + 32))(v179, a6);
  v178 = sub_112C0(_swiftEmptyArrayStorage);
  sub_2CCFB0();
  v172 = sub_2CCF80();
  v184 = v60;
  v171 = v60;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
  }

  v117 = v176;
  v118 = v177;
  v167(v176, v158, v177);
  v119 = v166;
  v120 = v179;
  (*(v166 + 16))(v175, v116, v179);
  v121 = v162;
  v122 = (v162[80] + 48) & ~v162[80];
  v123 = (v163 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = (*(v119 + 80) + v123 + 16) & ~*(v119 + 80);
  v125 = swift_allocObject();
  v126 = v154;
  *(v125 + 2) = v120;
  *(v125 + 3) = v126;
  v127 = v171;
  *(v125 + 4) = v155;
  *(v125 + 5) = v127;
  v121[4](&v125[v122], v117, v118);
  v128 = &v125[v123];
  v129 = v174;
  *v128 = v173;
  *(v128 + 1) = v129;
  (*(v119 + 32))(&v125[v124], v175, v120);
  v130 = *(*v180 + 504);
  v131 = v127;

  v130(v178, v172, &v181, sub_17DAF4, v125);

  sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
  return sub_306C(v185);
}