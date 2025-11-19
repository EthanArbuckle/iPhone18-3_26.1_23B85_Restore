uint64_t sub_1AF478(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v81 = a4;
  v84 = a2;
  v76 = a1;
  v78 = sub_20410(&unk_3519A0, &qword_2D0980);
  v9 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v72 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v72 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v73 = &v72 - v17;
  v18 = __chkstk_darwin(v16);
  v75 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v74 = &v72 - v21;
  v22 = __chkstk_darwin(v20);
  v77 = &v72 - v23;
  __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v26 = qword_34BF58;
  v82 = a5;

  v83 = a6;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v28 = v12;
  v29 = *(v12 + 16);
  v30 = v11;
  v29(v25, v27, v11);
  v31 = sub_2CDFE0();
  v32 = sub_2CE670();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "PlayMediaDialogProvider#makeInterstitialDialog", v33, 2u);
  }

  v34 = *(v28 + 8);
  v80 = v28 + 8;
  v34(v25, v30);
  v35 = a3[20];
  sub_35E0(a3 + 16, a3[19]);
  if ((sub_2CC430() & 1) != 0 && (sub_2CB640() & 1) == 0 && sub_2CE810())
  {
    v36 = a3[30];
    sub_35E0(a3 + 26, a3[29]);
    if ((sub_2CBE50() & 1) == 0)
    {
      v68 = v72;
      v29(v72, v27, v30);
      v69 = sub_2CDFE0();
      v70 = sub_2CE690();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: pym enabled, not-CarPlay, and new playback producing but mode does not require dialoging - no templating dialog", v71, 2u);
      }

      v41 = v68;
      goto LABEL_13;
    }
  }

  v86 = v84;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC120())
  {
    v37 = v77;
    v29(v77, v27, v30);
    v38 = sub_2CDFE0();
    v39 = sub_2CE690();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "PlayMediaDialogProvider#makeIntentHandledDialog suppressing dialog: User just accepted TCC initiated from the HomePod for an SFA request. Skipping dialog in makePreHandleIntentDialog and producing it in makePostHandleIntentDialog", v40, 2u);
    }

    v41 = v37;
LABEL_13:
    v42 = v30;
LABEL_23:
    v34(v41, v42);
    v51 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v52 = v79;
    *(v52 + v51) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_29A218(v52, v81, v82, v83);
    sub_30B8(v52, &unk_3519A0, &qword_2D0980);
    goto LABEL_24;
  }

  v43 = a3[20];
  sub_35E0(a3 + 16, a3[19]);
  v44 = v30;
  if (sub_2CC4B0() & 1) == 0 && (sub_2CB630())
  {
    v45 = v73;
    v29(v73, v27, v30);
    v46 = sub_2CDFE0();
    v47 = sub_2CE690();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: skipping interstitial for ATV";
LABEL_21:
      _os_log_impl(&dword_0, v46, v47, v49, v48, 2u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v50 = a3[20];
  sub_35E0(a3 + 16, a3[19]);
  if (sub_2CC510())
  {
    v45 = v74;
    v29(v74, v27, v30);
    v46 = sub_2CDFE0();
    v47 = sub_2CE690();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog evaluation due to defaults override";
      goto LABEL_21;
    }

LABEL_22:

    v41 = v45;
    v42 = v30;
    goto LABEL_23;
  }

  v54 = v75;
  v29(v75, v27, v30);
  v55 = v76;

  v56 = sub_2CDFE0();
  v57 = sub_2CE690();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79 = v44;
    v60 = v59;
    v85 = v55;
    v86 = v59;
    *v58 = 136315138;
    sub_2CCFB0();
    sub_1B7EB0(&qword_34C170, &type metadata accessor for App);
    v61 = sub_2CEE70();
    v63 = sub_3F08(v61, v62, &v86);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_0, v56, v57, "PlayMediaDialogProvider#makeInterstitialDialog for app: %s", v58, 0xCu);
    sub_306C(v60);

    v64 = v54;
    v65 = v79;
  }

  else
  {

    v64 = v54;
    v65 = v44;
  }

  v34(v64, v65);
  v66 = v82;

  v67 = v83;

  sub_1ABFB8(1, v55, v84, a3, v81, v66, v67);

LABEL_24:
}

uint64_t sub_1AFCC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v191 = a6;
  v192 = a5;
  v198 = a4;
  v199 = a3;
  v197 = a2;
  v195 = a1;
  v202 = sub_2CA130();
  v204 = *(v202 - 8);
  v6 = *(v204 + 64);
  __chkstk_darwin(v202);
  v189 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v200 = *(v8 - 8);
  v201 = v8;
  v9 = *(v200 + 64);
  v10 = __chkstk_darwin(v8);
  v185 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v186 = &v170 - v12;
  v13 = sub_2C98F0();
  v205 = *(v13 - 1);
  v206 = v13;
  v14 = *(v205 + 64);
  v15 = __chkstk_darwin(v13);
  v196 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v179 = &v170 - v17;
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v180 = &v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v181 = &v170 - v22;
  v23 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v177 = &v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v178 = &v170 - v27;
  v28 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v176 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v175 = &v170 - v32;
  v174 = sub_2CCB20();
  v173 = *(v174 - 8);
  v33 = *(v173 + 64);
  __chkstk_darwin(v174);
  v35 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_2CCB30();
  v36 = *(v194 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v194);
  v39 = &v170 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_2CCAC0();
  v40 = *(v193 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v193);
  v43 = &v170 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v44 = *(*(v203 - 8) + 64);
  v45 = __chkstk_darwin(v203);
  v187 = &v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v184 = &v170 - v48;
  v49 = __chkstk_darwin(v47);
  v183 = &v170 - v50;
  v51 = __chkstk_darwin(v49);
  v182 = &v170 - v52;
  v53 = __chkstk_darwin(v51);
  v171 = &v170 - v54;
  v55 = __chkstk_darwin(v53);
  v188 = &v170 - v56;
  v57 = __chkstk_darwin(v55);
  v172 = &v170 - v58;
  __chkstk_darwin(v57);
  v60 = &v170 - v59;
  v61 = sub_20410(&unk_3519A0, &qword_2D0980);
  v62 = *(*(v61 - 8) + 64);
  v63 = __chkstk_darwin(v61);
  v190 = (&v170 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v63);
  v66 = (&v170 - v65);
  sub_F3F4(v195, &v170 - v65, &unk_3519A0, &qword_2D0980);
  v195 = v61;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = *v66;
    v68 = v193;
    (*(v40 + 104))(v43, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v193);
    v69 = v194;
    (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v194);
    swift_getErrorValue();
    sub_2CEEF0();
    v203 = sub_2CCAE0();

    (*(v36 + 8))(v39, v69);
    (*(v40 + 8))(v43, v68);
    v70 = v197[34];
    v194 = v197[35];
    v197 = sub_35E0(v197 + 31, v70);
    v71 = enum case for ActivityType.failed(_:);
    v72 = sub_2C9C20();
    v73 = *(v72 - 8);
    v74 = v176;
    (*(v73 + 104))(v176, v71, v72);
    v75 = v74;
    (*(v73 + 56))(v74, 0, 1, v72);
    v76 = v177;
    (*(v204 + 56))();
    v77 = *(v205 + 104);
    v77(v196, enum case for SiriKitReliabilityCodes.renderingError(_:), v206);
    if (sub_2CE740())
    {
      v78 = v206;
      (*(v205 + 8))(v196, v206);
      v79 = v180;
      v77(v180, enum case for SiriKitReliabilityCodes.ampServerError(_:), v78);
    }

    else
    {
      v79 = v180;
      (*(v205 + 32))(v180, v196, v206);
    }

    v102 = v200;
    (*(v205 + 56))(v79, 0, 1, v206);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v79, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v76, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v75, &qword_34CB88, &unk_2D0D90);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v103 = v201;
    v104 = sub_3ED0(v201, static Logger.default);
    swift_beginAccess();
    v105 = v185;
    (*(v102 + 16))(v185, v104, v103);
    swift_errorRetain();
    v106 = sub_2CDFE0();
    v107 = sub_2CE680();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = v102;
      v110 = swift_slowAlloc();
      v207 = v110;
      *v108 = 136315138;
      swift_getErrorValue();
      v111 = sub_2CEEF0();
      v113 = sub_3F08(v111, v112, &v207);

      *(v108 + 4) = v113;
      _os_log_impl(&dword_0, v106, v107, "PlayMediaDialogProvider#makeIntentHandledDialog failure: %s", v108, 0xCu);
      sub_306C(v110);

      (*(v109 + 8))(v105, v103);
    }

    else
    {

      (*(v102 + 8))(v105, v103);
    }

    v133 = v190;
    *v190 = v67;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v192(v133);

    v134 = &unk_3519A0;
    v135 = &qword_2D0980;
    v136 = v133;
    return sub_30B8(v136, v134, v135);
  }

  sub_24BE0(v66, v60);
  v80 = v193;
  (*(v40 + 104))(v43, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v193);
  v81 = v194;
  (*(v36 + 104))(v39, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v194);
  v82 = v173;
  v83 = v174;
  (*(v173 + 104))(v35, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v174);
  v185 = sub_2CCAD0();
  v196 = v84;
  (*(v82 + 8))(v35, v83);
  (*(v36 + 8))(v39, v81);
  (*(v40 + 8))(v43, v80);
  v85 = v197[35];
  sub_35E0(v197 + 31, v197[34]);
  v86 = enum case for ActivityType.completed(_:);
  v87 = sub_2C9C20();
  v88 = *(v87 - 8);
  v89 = v175;
  (*(v88 + 104))(v175, v86, v87);
  v90 = v89;
  (*(v88 + 56))(v89, 0, 1, v87);
  v197 = v60;
  v91 = v172;
  sub_F3F4(v60, v172, &qword_34C6E8, &unk_2D0FF0);

  v92 = v204;
  v93 = v178;
  v94 = v202;
  (*(v204 + 32))(v178, v91, v202);
  (*(v92 + 56))(v93, 0, 1, v94);
  v95 = *(v205 + 104);
  v96 = v179;
  v95(v179, enum case for SiriKitReliabilityCodes.success(_:), v206);
  if (sub_2CE740())
  {
    v97 = v93;
    v98 = v206;
    (*(v205 + 8))(v96, v206);
    v99 = v181;
    v100 = v98;
    v93 = v97;
    v95(v181, enum case for SiriKitReliabilityCodes.ampServerError(_:), v100);
    v101 = v99;
  }

  else
  {
    v101 = v181;
    (*(v205 + 32))(v181, v96, v206);
  }

  v114 = v201;
  v115 = v188;
  (*(v205 + 56))(v101, 0, 1, v206);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v101, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v93, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v90, &qword_34CB88, &unk_2D0D90);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v116 = sub_3ED0(v114, static Logger.default);
  swift_beginAccess();
  v117 = v200;
  v118 = v186;
  (*(v200 + 16))(v186, v116, v114);
  v119 = v197;
  sub_F3F4(v197, v115, &qword_34C6E8, &unk_2D0FF0);
  v120 = sub_2CDFE0();
  v121 = sub_2CE670();
  if (!os_log_type_enabled(v120, v121))
  {
    sub_30B8(v115, &qword_34C6E8, &unk_2D0FF0);
    v126 = v202;
    goto LABEL_26;
  }

  v122 = swift_slowAlloc();
  *v122 = 67109120;
  v123 = v171;
  sub_F3F4(v115, v171, &qword_34C6E8, &unk_2D0FF0);

  v124 = sub_2CA110();
  v125 = v123;
  v126 = v202;
  (*(v204 + 8))(v125, v202);
  v127 = v124;
  if (!*(v124 + 16))
  {

LABEL_24:
    v132 = 0;
    goto LABEL_25;
  }

  v128 = *(v124 + 32);
  v129 = *(v127 + 40);

  v130 = HIBYTE(v129) & 0xF;
  v131 = (v129 & 0x2000000000000000) == 0;
  v115 = v188;
  if (v131)
  {
    v130 = v128 & 0xFFFFFFFFFFFFLL;
  }

  if (!v130)
  {
    goto LABEL_24;
  }

  v132 = 1;
LABEL_25:
  sub_30B8(v115, &qword_34C6E8, &unk_2D0FF0);
  *(v122 + 4) = v132;
  _os_log_impl(&dword_0, v120, v121, "PlayMediaDialogProvider#makeIntentHandledDialog for app returned speakable dialog?: %{BOOL}d", v122, 8u);

LABEL_26:

  (*(v117 + 8))(v118, v114);
  v137 = v182;
  sub_F3F4(v119, v182, &qword_34C6E8, &unk_2D0FF0);
  v138 = v203;

  sub_2CA0D0();
  v139 = *(v204 + 8);
  v139(v137, v126);
  v140 = v183;
  sub_F3F4(v119, v183, &qword_34C6E8, &unk_2D0FF0);

  sub_2CA100();
  v141 = v126;
  v139(v140, v126);
  v142 = v138;
  sub_2CA0C0();
  v143 = [objc_allocWithZone(DialogExecutionResult) init];
  v144 = v184;
  sub_F3F4(v119, v184, &qword_34C6E8, &unk_2D0FF0);
  v145 = *(v144 + *(v138 + 48));
  v146 = [v145 catId];

  if (!v146)
  {
    sub_2CE270();
    v146 = sub_2CE260();
  }

  v206 = v143;
  [v143 setCatId:v146];

  v147 = v139;
  v139(v144, v141);
  v148 = [objc_allocWithZone(DialogElement) init];
  v149 = v119;
  v150 = v187;
  sub_F3F4(v149, v187, &qword_34C6E8, &unk_2D0FF0);
  v151 = v142;
  v152 = *(v150 + *(v142 + 48));
  v153 = [v152 dialog];

  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v154 = sub_2CE410();

  v155 = v141;
  if (!(v154 >> 62))
  {
    result = *(&dword_10 + (v154 & 0xFFFFFFFFFFFFFF8));
    v157 = v147;
    if (result)
    {
      goto LABEL_30;
    }

LABEL_35:

    goto LABEL_36;
  }

  result = sub_2CEDA0();
  v157 = v147;
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_30:
  if ((v154 & 0xC000000000000001) != 0)
  {
    v158 = sub_2CECD0();
    goto LABEL_33;
  }

  if (*(&dword_10 + (v154 & 0xFFFFFFFFFFFFFF8)))
  {
    v158 = *(v154 + 32);
LABEL_33:
    v159 = v158;

    v160 = [v159 fullPrint];

    sub_2CE270();
    v151 = v203;
LABEL_36:
    v157(v150, v155);
    v161 = sub_2CE260();

    [v148 setFullPrint:v161];

    sub_20410(&unk_351900, &unk_2D0960);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_2D0770;
    *(v162 + 32) = v148;
    v163 = v148;
    isa = sub_2CE400().super.isa;

    v165 = v206;
    [v206 setDialog:isa];

    v166 = *(v151 + 48);
    v167 = v190;
    v168 = v189;
    (*(v204 + 16))(v190, v189, v155);
    *(v167 + v166) = v165;
    swift_storeEnumTagMultiPayload();
    v169 = v165;
    v192(v167);

    sub_30B8(v167, &unk_3519A0, &qword_2D0980);
    v157(v168, v155);
    v134 = &qword_34C6E8;
    v135 = &unk_2D0FF0;
    v136 = v197;
    return sub_30B8(v136, v134, v135);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B137C(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v430 = a4;
  v438 = a2;
  v439 = a3;
  LODWORD(v428) = a1;
  v14 = sub_20410(&qword_353C88, &unk_2D6070);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v416 = &v395 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v422 = &v395 - v18;
  v424 = sub_2CBF80();
  v423 = *(v424 - 8);
  v19 = *(v423 + 64);
  __chkstk_darwin(v424);
  v418 = &v395 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v397 = &v395 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v429 = &v395 - v25;
  v432 = sub_20410(&unk_3519A0, &qword_2D0980);
  v26 = *(*(v432 - 8) + 64);
  __chkstk_darwin(v432);
  v433 = (&v395 - v27);
  v28 = sub_2CE000();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v425 = &v395 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v420 = &v395 - v34;
  v35 = __chkstk_darwin(v33);
  v406 = &v395 - v36;
  v37 = __chkstk_darwin(v35);
  v403 = &v395 - v38;
  v39 = __chkstk_darwin(v37);
  v395 = &v395 - v40;
  v41 = __chkstk_darwin(v39);
  v396 = &v395 - v42;
  v43 = __chkstk_darwin(v41);
  v399 = &v395 - v44;
  v45 = __chkstk_darwin(v43);
  v400 = &v395 - v46;
  v47 = __chkstk_darwin(v45);
  v401 = &v395 - v48;
  v49 = __chkstk_darwin(v47);
  v402 = &v395 - v50;
  v51 = __chkstk_darwin(v49);
  v404 = &v395 - v52;
  v53 = __chkstk_darwin(v51);
  v405 = &v395 - v54;
  v55 = __chkstk_darwin(v53);
  v407 = &v395 - v56;
  v57 = __chkstk_darwin(v55);
  v408 = &v395 - v58;
  v59 = __chkstk_darwin(v57);
  v409 = &v395 - v60;
  v61 = __chkstk_darwin(v59);
  v415 = &v395 - v62;
  v63 = __chkstk_darwin(v61);
  v421 = &v395 - v64;
  v65 = __chkstk_darwin(v63);
  v410 = &v395 - v66;
  v67 = __chkstk_darwin(v65);
  v411 = &v395 - v68;
  v69 = __chkstk_darwin(v67);
  v414 = &v395 - v70;
  v71 = __chkstk_darwin(v69);
  v417 = &v395 - v72;
  v73 = __chkstk_darwin(v71);
  v412 = &v395 - v74;
  v75 = __chkstk_darwin(v73);
  v419 = &v395 - v76;
  v77 = __chkstk_darwin(v75);
  v413 = &v395 - v78;
  v79 = __chkstk_darwin(v77);
  v426 = &v395 - v80;
  v81 = __chkstk_darwin(v79);
  v427 = &v395 - v82;
  __chkstk_darwin(v81);
  v84 = &v395 - v83;
  v85 = swift_allocObject();
  v85[2] = a5;
  v85[3] = a6;
  v85[4] = a7;
  v85[5] = a8;
  *&v437 = a8;
  v85[6] = a9;
  v85[7] = a10;
  v86 = v85;
  v87 = qword_34BF58;
  v434 = a5;

  v435 = a6;

  v431 = a7;
  v436 = a9;

  if (v87 != -1)
  {
    swift_once();
  }

  v88 = sub_3ED0(v28, static Logger.default);
  swift_beginAccess();
  v89 = v29[2];
  v440 = v88;
  v441 = v89;
  v442 = v29 + 2;
  (v89)(v84, v88, v28);
  v90 = v439;
  v91 = sub_2CDFE0();
  v92 = sub_2CE670();

  v93 = os_log_type_enabled(v91, v92);
  v94 = v28;
  v443 = v29;
  if (!v93)
  {
    v97 = v90;

    v95 = v94;
    v439 = v29[1];
    (v439)(v84, v94);
    goto LABEL_22;
  }

  v95 = v28;
  v96 = swift_slowAlloc();
  *&v445 = swift_slowAlloc();
  *v96 = 136315394;
  v97 = v90;
  v98 = [v90 privatePlayMediaIntentData];
  v398 = v86;
  if (v98 && (v99 = v98, v100 = [v98 internalSignals], v99, v100))
  {
    v101 = sub_2CE410();
  }

  else
  {
    v101 = 0;
  }

  *&v444[0] = v101;
  v86 = sub_20410(&qword_353C98, &unk_2D6A00);
  v102 = sub_2CE2A0();
  v104 = sub_3F08(v102, v103, &v445);

  *(v96 + 4) = v104;
  *(v96 + 12) = 2080;
  v105 = [v97 mediaItems];
  if (!v105)
  {
    goto LABEL_20;
  }

  v106 = v105;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v107 = sub_2CE410();

  if (!(v107 >> 62))
  {
    if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_19;
  }

LABEL_12:
  if ((v107 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
    {
      v108 = *(v107 + 32);
      goto LABEL_15;
    }

    __break(1u);
LABEL_164:
    v398 = v86;

    v318 = [v437 mediaSearch];
    if (v318)
    {
      v319 = v318;
      v320 = [v318 sortOrder];

      if (v320 == &dword_8)
      {
        v321 = [v437 mediaSearch];
        if (v321)
        {
          v322 = v321;
          v323 = [v321 mediaName];

          if (v323)
          {

            v324 = [v437 mediaSearch];
            if (!v324 || (v325 = v324, v326 = [v324 reference], v325, v326 != &dword_0 + 1))
            {

              (v441)(v395, v440, v436);
              v382 = sub_2CDFE0();
              v383 = sub_2CE660();
              if (os_log_type_enabled(v382, v383))
              {
                v384 = swift_slowAlloc();
                *v384 = 0;
                _os_log_impl(&dword_0, v382, v383, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v384, 2u);
              }

              (v439)(v395, v436);
              sub_1A46BC(v438, v437, sub_1B7EA0, v398);
              goto LABEL_157;
            }
          }
        }
      }
    }

    v327 = &qword_330770;
    v328 = 2;
    do
    {
      v329 = v328;
      if (v328-- == 0)
      {
        break;
      }

      v331 = *v327++;
    }

    while (v331 != v429);
    v332 = [v437 mediaSearch];
    if (v332 && (v333 = v332, v334 = [v332 sortOrder], v333, v334 == &dword_0 + 3))
    {
      if (!v329)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v335 = [v437 mediaSearch];
      if (!v335 || (v336 = v335, v337 = [v335 sortOrder], v336, !v329) || v337 != &dword_4)
      {
LABEL_184:
        v341 = sub_1D14A0();
        if (v342)
        {
          v343 = v341;
          v344 = v342;

          v345 = HIBYTE(v344) & 0xF;
          if ((v344 & 0x2000000000000000) == 0)
          {
            v345 = v343 & 0xFFFFFFFFFFFFLL;
          }

          v346 = v345 == 0;
        }

        else
        {
          v346 = 1;
        }

        v347 = sub_1D15EC();
        if (v348)
        {
          v349 = v347 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v349 = 0;
        }

        if (v348)
        {
          v350 = v348;
        }

        else
        {
          v350 = 0xE000000000000000;
        }

        if ((v350 & 0x2000000000000000) != 0)
        {
          v351 = HIBYTE(v350) & 0xF;
        }

        else
        {
          v351 = v349;
        }

        if (v351)
        {
          v352 = sub_2CCF90();
          v354 = v353;
          v355 = sub_2CBE10();
          if (!v354)
          {

            goto LABEL_210;
          }

          if (v352 == v355 && v354 == v356)
          {
          }

          else
          {
            v357 = sub_2CEEA0();

            if ((v357 & 1) == 0)
            {
              goto LABEL_210;
            }
          }

          if (!v346 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v437, &off_330780))
          {

            (v441)(v396, v440, v436);
            v358 = sub_2CDFE0();
            v359 = sub_2CE660();
            if (os_log_type_enabled(v358, v359))
            {
              v360 = swift_slowAlloc();
              *v360 = 0;
              _os_log_impl(&dword_0, v358, v359, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v360, 2u);
            }

            (v439)(v396, v436);
            sub_1A4044(v438, v437, sub_1B7EA0, v398);
            goto LABEL_157;
          }
        }

LABEL_210:
        v361 = v346;
        if (sub_2CE710() != 5)
        {
          v361 = sub_2CE710() == 19 && v346;
        }

        if (sub_2CE710() == 16)
        {
          if ((v361 | v346))
          {
            goto LABEL_219;
          }
        }

        else if (v361)
        {
LABEL_219:

          (v441)(v399, v440, v436);
          v365 = sub_2CDFE0();
          v366 = sub_2CE660();
          if (os_log_type_enabled(v365, v366))
          {
            v367 = swift_slowAlloc();
            *v367 = 0;
            _os_log_impl(&dword_0, v365, v366, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v367, 2u);
          }

          (v439)(v399, v436);
          sub_1A39E0(v438, v437, sub_1B7EA0, v398);
          goto LABEL_157;
        }

        if (!v351 || (v362 = [v437 mediaSearch]) == 0 || (v363 = v362, v364 = objc_msgSend(v362, "sortOrder"), v363, v364 != &dword_4 + 1))
        {
          if (v429 != &dword_0 + 3 || !v96)
          {
            goto LABEL_228;
          }

          v368 = HIBYTE(v96) & 0xF;
          if ((v96 & 0x2000000000000000) == 0)
          {
            v368 = v434 & 0xFFFFFFFFFFFFLL;
          }

          if (v368)
          {

            v369 = 0;
            v370 = 0xE000000000000000;
          }

          else
          {
LABEL_228:
            v369 = v434;
            v370 = v96;
            v434 = v435;
            v96 = v107;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v371 = swift_allocObject();
          v372 = v371;
          *(v371 + 16) = xmmword_2D5FC0;
          *(v371 + 32) = 0x656C746974;
          v373 = v434;
          if (!v96)
          {
            v373 = 0;
          }

          v374 = 0xE000000000000000;
          if (v96)
          {
            v375 = v96;
          }

          else
          {
            v375 = 0xE000000000000000;
          }

          *(v371 + 40) = 0xE500000000000000;
          *(v371 + 48) = v373;
          *(v371 + 56) = v375;
          *(v371 + 72) = &type metadata for String;
          *(v371 + 80) = 0x747369747261;
          if (v370)
          {
            v376 = v369;
          }

          else
          {
            v376 = 0;
          }

          if (v370)
          {
            v374 = v370;
          }

          *(v371 + 88) = 0xE600000000000000;
          *(v371 + 96) = v376;
          *(v371 + 104) = v374;
          *(v371 + 120) = &type metadata for String;
          *(v371 + 128) = 0x61526576694C7369;
          *(v371 + 136) = 0xEB000000006F6964;
          *(v371 + 144) = !v346;
          *(v371 + 168) = &type metadata for Bool;
          *(v371 + 176) = 0xD00000000000001BLL;
          *(v371 + 184) = 0x80000000002DE780;

          v377 = v437;
          *(v372 + 192) = [v437 playbackQueueLocation] == &dword_0 + 2;
          *(v372 + 216) = &type metadata for Bool;
          *(v372 + 224) = 0xD00000000000001CLL;
          *(v372 + 232) = 0x80000000002DE7A0;
          *(v372 + 240) = [v377 playbackQueueLocation] == &dword_0 + 3;
          *(v372 + 264) = &type metadata for Bool;
          *(v372 + 272) = 0x667568536E4F7369;
          *(v372 + 280) = 0xEB00000000656C66;
          v378 = [v377 backingStore];
          objc_opt_self();
          v379 = swift_dynamicCastObjCClass();
          if (v379)
          {
            v380 = [v379 playShuffled];

            v381 = v380 & v346;
          }

          else
          {

            v381 = 0;
          }

          *(v372 + 288) = v381;
          *(v372 + 312) = &type metadata for Bool;
          *(v372 + 320) = 0x657065526E4F7369;
          *(v372 + 328) = 0xEA00000000007461;
          v385 = [v437 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v437, "playbackRepeatMode") == &dword_0 + 3;
          *(v372 + 336) = v385;
          *(v372 + 360) = &type metadata for Bool;
          strcpy((v372 + 368), "isAppSpecified");
          *(v372 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v423 + 56))(v397, 1, 1, v424);
          }

          v386 = v430;
          v387 = v438;
          v388 = v437;
          v389 = v397;
          v390 = sub_197DC8(v438, v437, (v430 + 128), v397);
          sub_30B8(v389, &qword_34DD30, &unk_2D1BC0);
          *(v372 + 384) = v390 & 1;
          *(v372 + 408) = &type metadata for Bool;
          strcpy((v372 + 416), "isPersonalized");
          *(v372 + 431) = -18;
          v391 = sub_1D16A0();
          *(v372 + 456) = &type metadata for Bool;
          *(v372 + 432) = v391 & 1;
          v392 = sub_112C0(v372);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v393 = *(v386 + 120);
          *(&v446 + 1) = v427;
          *&v447 = &off_3381B8;
          *&v445 = v388;
          v394 = v388;
          sub_239644(v392, v387, &v445, sub_1B7EA0, v398);

          sub_30B8(&v445, &qword_34C6C0, &qword_2D0710);
        }

        goto LABEL_219;
      }
    }

    (v441)(v400, v440, v436);
    v338 = sub_2CDFE0();
    v339 = sub_2CE660();
    if (os_log_type_enabled(v338, v339))
    {
      v340 = swift_slowAlloc();
      *v340 = 0;
      _os_log_impl(&dword_0, v338, v339, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v340, 2u);
    }

    (v439)(v400, v436);
    sub_1A32FC(v438, v437, sub_1B7EA0, v398);
    goto LABEL_157;
  }

  v108 = sub_2CECD0();
LABEL_15:
  v109 = v108;

  v110 = [v109 privateMediaItemValueData];

  if (v110)
  {
    v111 = [v110 internalSignals];

    if (v111)
    {
      v110 = sub_2CE410();

      goto LABEL_21;
    }

LABEL_20:
    v110 = 0;
  }

LABEL_21:
  *&v444[0] = v110;
  v112 = sub_2CE2A0();
  v114 = sub_3F08(v112, v113, &v445);

  *(v96 + 14) = v114;
  _os_log_impl(&dword_0, v91, v92, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v96, 0x16u);
  swift_arrayDestroy();

  v439 = v443[1];
  (v439)(v84, v95);
  v86 = v398;
LABEL_22:
  v115 = v438;
  v116 = sub_2CCF90();
  if (!v117)
  {
    v127 = v427;
    (v441)(v427, v440, v95);
    v128 = sub_2CDFE0();
    v129 = sub_2CE680();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_0, v128, v129, "Missing app bundle identifier", v130, 2u);
    }

    (v439)(v127, v95);
    sub_10C40();
    v131 = swift_allocError();
    *v132 = 0xD00000000000001DLL;
    v132[1] = 0x80000000002DD6F0;
    v133 = v433;
    *v433 = v131;
    swift_storeEnumTagMultiPayload();
    sub_1AFCC0(v133, v434, v435, v431, v437, v436);
    v134 = &unk_3519A0;
    v135 = &qword_2D0980;
    v136 = v133;
    goto LABEL_48;
  }

  v118 = v116;
  v119 = v117;
  v120 = v97;
  v121 = sub_2CCF90();
  v123 = v122;
  v124 = sub_2CBE10();
  v126 = v95;
  if (v123)
  {
    if (v121 == v124 && v123 == v125)
    {

LABEL_34:

      goto LABEL_35;
    }

    v137 = sub_2CEEA0();

    if (v137)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if (v118 == sub_2CBE30() && v119 == v138)
  {
    goto LABEL_34;
  }

  v146 = sub_2CEEA0();

  if ((v146 & 1) == 0)
  {
    v140 = v430;
    v141 = v429;
    if (v428)
    {
      goto LABEL_39;
    }

LABEL_44:
    v142 = 0;
LABEL_45:

    v147 = v426;
    (v441)(v426, v440, v95);
    v148 = sub_2CDFE0();
    v149 = sub_2CE660();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 67109376;
      *(v150 + 4) = v142;
      *(v150 + 8) = 1024;
      *(v150 + 10) = v142;
      _os_log_impl(&dword_0, v148, v149, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v150, 0xEu);
    }

LABEL_47:

    (v439)(v147, v95);
    v151 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v152 = v433;
    *(v152 + v151) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_1AFCC0(v152, v434, v435, v431, v437, v436);
    v134 = &unk_3519A0;
    v135 = &qword_2D0980;
    v136 = v152;
LABEL_48:
    sub_30B8(v136, v134, v135);
  }

LABEL_35:
  v139 = sub_2CE830();
  if ((v428 & 1) == 0)
  {
    v140 = v430;
    v141 = v429;
    if (v139)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  v140 = v430;
  v141 = v429;
  if (v139)
  {
    v142 = 1;
    goto LABEL_45;
  }

LABEL_39:
  *&v445 = v120;
  v143 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v429 = sub_2CBFA0();
  v428 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v144 = v423;
    v145 = v424;
    if ((*(v423 + 48))(v141, 1, v424))
    {
      sub_30B8(v141, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v154 = *(v144 + 16);
      v426 = v119;
      v155 = v120;
      v156 = v140;
      v157 = v115;
      v158 = v86;
      v159 = v418;
      v154(v418, v141, v145);
      sub_30B8(v141, &qword_34DD30, &unk_2D1BC0);
      v160 = sub_2CBF50();
      v161 = v145;
      v162 = v160;
      v163 = v159;
      v86 = v158;
      v115 = v157;
      v140 = v156;
      v120 = v155;
      (*(v144 + 8))(v163, v161);
      if (v162)
      {

        v164 = v413;
        (v441)(v413, v440, v126);
        v165 = sub_2CDFE0();
        v166 = sub_2CE690();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&dword_0, v165, v166, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v167, 2u);
        }

        (v439)(v164, v126);
        sub_1A0698(v115, v120, sub_1B7EA0, v86);
      }
    }
  }

  v168 = v140[20];
  sub_35E0(v140 + 16, v140[19]);
  v169 = sub_2CC430();
  v427 = v143;
  if ((v169 & 1) == 0 || !sub_2CE810())
  {
    v180 = v425;
    (v441)(v425, v440, v126);
    v181 = sub_2CDFE0();
    v182 = sub_2CE690();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      v184 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_67;
    }

LABEL_69:

    v95 = v126;
    (v439)(v180, v126);
    goto LABEL_70;
  }

  v170 = v419;
  v95 = v126;
  (v441)(v419, v440, v126);
  v171 = sub_2CDFE0();
  v172 = sub_2CE690();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    *v173 = 0;
    _os_log_impl(&dword_0, v171, v172, "PlayMediaDialogProvider#makePlayDialog pym enabled", v173, 2u);
    v170 = v419;
  }

  (v439)(v170, v126);
  if ((v429 - 1) >= 2)
  {
    v180 = v412;
    (v441)(v412, v440, v126);
    v181 = sub_2CDFE0();
    v209 = sub_2CE690();
    if (!os_log_type_enabled(v181, v209))
    {
      goto LABEL_69;
    }

    v210 = swift_slowAlloc();
    *v210 = 134217984;
    *(v210 + 4) = v429;
    v184 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v185 = v209;
    v186 = v181;
    v187 = v210;
    v188 = 12;
    goto LABEL_68;
  }

  (v441)(v417, v440, v126);
  v174 = sub_2CDFE0();
  v175 = sub_2CE690();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    *v176 = 0;
    _os_log_impl(&dword_0, v174, v175, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v176, 2u);
  }

  (v439)(v417, v126);
  v177 = [v120 mediaSearch];
  if (v177)
  {
    v178 = v177;
    v179 = [v177 sortOrder];

    if (v179)
    {
      v180 = v411;
      v441();
      v181 = sub_2CDFE0();
      v182 = sub_2CE690();
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        v184 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_67:
        v185 = v182;
        v186 = v181;
        v187 = v183;
        v188 = 2;
LABEL_68:
        _os_log_impl(&dword_0, v186, v185, v184, v187, v188);

        goto LABEL_69;
      }

      goto LABEL_69;
    }
  }

  (v441)(v414, v440, v126);
  v211 = sub_2CDFE0();
  v212 = sub_2CE670();
  if (os_log_type_enabled(v211, v212))
  {
    v213 = swift_slowAlloc();
    *v213 = 0;
    _os_log_impl(&dword_0, v211, v212, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v213, 2u);
  }

  (v439)(v414, v126);
  sub_2CBC60();
  sub_35E0(&v445, *(&v446 + 1));
  v214 = sub_2CBE50();
  sub_306C(&v445);
  if ((v214 & 1) == 0)
  {

    v147 = v410;
    (v441)(v410, v440, v126);
    v148 = sub_2CDFE0();
    v215 = sub_2CE690();
    if (os_log_type_enabled(v148, v215))
    {
      v216 = swift_slowAlloc();
      *v216 = 0;
      _os_log_impl(&dword_0, v148, v215, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v216, 2u);
    }

    goto LABEL_47;
  }

LABEL_70:
  sub_20410(&qword_353C90, &unk_2D6080);
  v189 = swift_allocObject();
  v437 = xmmword_2D0090;
  *(v189 + 16) = xmmword_2D0090;
  sub_EEAC((v140 + 21), v189 + 40);
  *(v189 + 32) = 4;
  sub_1B7DE4(v189 + 32, v444);
  if (sub_1A0B34())
  {

    v445 = v444[0];
    v446 = v444[1];
    v447 = v444[2];
    v190 = v140[15];
    v191 = v420;
    (v441)(v420, v440, v95);
    v192 = sub_2CDFE0();
    v193 = sub_2CE690();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      *&v444[0] = v195;
      *v194 = 136315138;
      *(v194 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v444);
      _os_log_impl(&dword_0, v192, v193, "DialogMemoryUseCase#%s#execute Executing...", v194, 0xCu);
      sub_306C(v195);
    }

    (v439)(v191, v95);
    sub_280EB4(v115, v120, v190, sub_1B7EA0, v86);
    v196 = *sub_35E0(&v445 + 1, v447);
    sub_281390();
    sub_1B7E40(&v445);
  }

  sub_1B7E40(v444);
  swift_setDeallocating();
  sub_1B7E40(v189 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718())
  {

    v197 = [v120 privatePlayMediaIntentData];
    if (v197)
    {
      v198 = v197;
      v199 = [v197 pegasusMetaData];

      v200 = v416;
      if (v199)
      {
        v201 = sub_2C8DC0();
        v203 = v202;
      }

      else
      {
        v201 = 0;
        v203 = 0xF000000000000000;
      }
    }

    else
    {
      v201 = 0;
      v203 = 0xF000000000000000;
      v200 = v416;
    }

    v228 = v422;
    sub_2C9210();
    sub_5267C(v201, v203);
    sub_F3F4(v228, v200, &qword_353C88, &unk_2D6070);
    v229 = sub_2C9240();
    v230 = *(v229 - 8);
    if ((*(v230 + 48))(v200, 1, v229) == 1)
    {
      sub_30B8(v200, &qword_353C88, &unk_2D6070);
      v231 = 0;
      v232 = 0;
    }

    else
    {
      v233 = sub_2C9220();
      v234 = v200;
      v231 = v233;
      v232 = v235;
      (*(v230 + 8))(v234, v229);
    }

    (v441)(v421, v440, v95);

    v236 = sub_2CDFE0();
    v237 = sub_2CE660();

    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      *v238 = 138412290;
      if (v232)
      {
        sub_10C40();
        swift_allocError();
        *v240 = v231;
        v240[1] = v232;
        v241 = _swift_stdlib_bridgeErrorToNSError();
        v242 = v241;
      }

      else
      {
        v241 = 0;
        v242 = 0;
      }

      *(v238 + 4) = v241;
      *v239 = v242;
      _os_log_impl(&dword_0, v236, v237, "PlayMediaDialogProvider going to makeNlsContainer for %@", v238, 0xCu);
      sub_30B8(v239, &unk_34FC00, &unk_2D0150);
    }

    else
    {
    }

    (v439)(v421, v95);
    sub_1A0DE4(v115, v120, sub_1B7EA0, v86);
    v134 = &qword_353C88;
    v135 = &unk_2D6070;
    v136 = v422;
    goto LABEL_48;
  }

  v204 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v204 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v120, &off_32FF90))
  {

    v205 = v415;
    (v441)(v415, v440, v95);
    v206 = sub_2CDFE0();
    v207 = sub_2CE660();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      *v208 = 0;
      _os_log_impl(&dword_0, v206, v207, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v208, 2u);
    }

    (v439)(v205, v95);
    sub_1A0F78(v115, v120, sub_1B7EA0, v86);
  }

  v436 = v95;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v217 = sub_2CE720();
  isa = [v217 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v219 = sub_2CEB10(0).super.super.isa;
  v220 = sub_2CEB30();

  v221 = v427;
  if ((v220 & 1) == 0)
  {

    v243 = v409;
    v244 = v436;
    (v441)(v409, v440, v436);
    v245 = sub_2CDFE0();
    v246 = sub_2CE660();
    if (os_log_type_enabled(v245, v246))
    {
      v247 = swift_slowAlloc();
      *v247 = 0;
      _os_log_impl(&dword_0, v245, v246, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v247, 2u);
    }

    (v439)(v243, v244);
    v248 = sub_112C0(_swiftEmptyArrayStorage);
    v249 = v140[15];
    *(&v446 + 1) = v221;
    *&v447 = &off_3381B8;
    *&v445 = v120;
    v250 = v120;
    sub_240C20(v248, v115, &v445, sub_1B7EA0, v86);
    goto LABEL_113;
  }

  v222 = sub_1D0CF0();
  v223 = v436;
  if (v222)
  {

    v224 = v408;
    (v441)(v408, v440, v223);
    v225 = sub_2CDFE0();
    v226 = sub_2CE660();
    if (os_log_type_enabled(v225, v226))
    {
      v227 = swift_slowAlloc();
      *v227 = 0;
      _os_log_impl(&dword_0, v225, v226, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v227, 2u);
    }

    (v439)(v224, v223);
    sub_1A1C48(v115, v120, sub_1B7EA0, v86);
  }

  v435 = sub_1D1060();
  v107 = v251;
  v434 = sub_1D119C();
  v96 = v252;
  v253 = v120;
  v254 = sub_2CE8E0() && sub_2CE840();
  if (!(v107 | v96))
  {
    v255 = [v253 mediaSearch];
    if (v255)
    {
      v256 = v255;
      v257 = v115;
      v258 = [v255 reference];

      v259 = v258 == &dword_0 + 1;
      v115 = v257;
      v223 = v436;
      v260 = v259;
      if ((v260 | v254))
      {
        goto LABEL_123;
      }
    }

    else if (v254)
    {
      goto LABEL_123;
    }

    v287 = v406;
    (v441)(v406, v440, v223);
    v288 = sub_2CDFE0();
    v289 = sub_2CE660();
    if (os_log_type_enabled(v288, v289))
    {
      v290 = swift_slowAlloc();
      *v290 = 0;
      _os_log_impl(&dword_0, v288, v289, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v290, 2u);
    }

    (v439)(v287, v223);
    v291 = [v253 playbackQueueLocation] == &dword_0 + 2;
    v292 = [v253 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v293 = swift_allocObject();
    *(v293 + 32) = 0xD00000000000001BLL;
    *(v293 + 40) = 0x80000000002DE780;
    *(v293 + 16) = xmmword_2D0E40;
    *(v293 + 48) = v291;
    *(v293 + 72) = &type metadata for Bool;
    *(v293 + 80) = 0xD00000000000001CLL;
    *(v293 + 88) = 0x80000000002DE7A0;
    *(v293 + 120) = &type metadata for Bool;
    *(v293 + 96) = v292;
    v294 = sub_112C0(v293);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v295 = *(v430 + 120);
    *(&v446 + 1) = v221;
    *&v447 = &off_3381B8;
    *&v445 = v253;
    v296 = v253;
    sub_23A7A4(v294, v115, &v445, sub_1B7EA0, v86);

    goto LABEL_113;
  }

LABEL_123:
  sub_1D04A0();
  if (v261)
  {

    v262 = v407;
    (v441)(v407, v440, v223);
    v263 = sub_2CDFE0();
    v264 = sub_2CE660();
    if (os_log_type_enabled(v263, v264))
    {
      v265 = swift_slowAlloc();
      *v265 = 0;
      _os_log_impl(&dword_0, v263, v264, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v265, 2u);
    }

    (v439)(v262, v223);
    v266 = sub_1D05E4();
    v268 = v267;
    sub_20410(&unk_353120, &unk_2D0B50);
    v269 = swift_allocObject();
    *(v269 + 16) = v437;
    *(v269 + 32) = 0xD000000000000016;
    v270 = v269 + 32;
    *(v269 + 72) = &type metadata for String;
    if (v268)
    {
      v271 = v266;
    }

    else
    {
      v271 = 0;
    }

    v272 = 0xE000000000000000;
    if (v268)
    {
      v272 = v268;
    }

    *(v269 + 40) = 0x80000000002DE7C0;
    *(v269 + 48) = v271;
    *(v269 + 56) = v272;
    v273 = sub_112C0(v269);
    swift_setDeallocating();
    sub_30B8(v270, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    v274 = *(v430 + 120);
    *(&v446 + 1) = v221;
    *&v447 = &off_3381B8;
    *&v445 = v253;
    v275 = v253;
    sub_23C944(v273, v115, &v445, sub_1B7EA0, v86);

LABEL_113:

    v134 = &qword_34C6C0;
    v135 = &qword_2D0710;
    v136 = &v445;
    goto LABEL_48;
  }

  *&v437 = v253;
  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v253, &off_3306B0) && v429 == &dword_4 + 2)
  {

    v276 = v405;
    (v441)(v405, v440, v223);
    v277 = sub_2CDFE0();
    v278 = sub_2CE660();
    if (os_log_type_enabled(v277, v278))
    {
      v279 = swift_slowAlloc();
      *v279 = 0;
      _os_log_impl(&dword_0, v277, v278, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v279, 2u);
    }

    (v439)(v276, v223);
    sub_1A1FBC(v115, v437, sub_1B7EA0, v86);
LABEL_157:
  }

  v280 = &qword_330700;
  v281 = 4;
  while (v281)
  {
    v282 = *v280++;
    --v281;
    if (v282 == v429)
    {

      v283 = v404;
      (v441)(v404, v440, v223);
      v284 = sub_2CDFE0();
      v285 = sub_2CE660();
      if (os_log_type_enabled(v284, v285))
      {
        v286 = swift_slowAlloc();
        *v286 = 0;
        _os_log_impl(&dword_0, v284, v285, "PlayMediaDialogProvider going to makePodcast", v286, 2u);
      }

      (v439)(v283, v223);
      sub_1A2614(v115, v437, sub_1B7EA0, v86);
      goto LABEL_157;
    }
  }

  v297 = v437;
  v298 = sub_1D2364(&off_330720);
  sub_F1954(&unk_330740);
  if (v298)
  {
    v299 = [v297 mediaSearch];
    if (!v299 || (v300 = v299, v301 = [v299 sortOrder], v300, v301 != &dword_0 + 1))
    {

      v308 = v403;
      v309 = v436;
      (v441)(v403, v440, v436);
      v310 = sub_2CDFE0();
      v311 = sub_2CE660();
      if (os_log_type_enabled(v310, v311))
      {
        v312 = swift_slowAlloc();
        *v312 = 0;
        _os_log_impl(&dword_0, v310, v311, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v312, 2u);
      }

      (v439)(v308, v309);
      sub_1A1C48(v438, v437, sub_1B7EA0, v86);
      goto LABEL_157;
    }
  }

  if (sub_1D1380())
  {

    v302 = v402;
    (v441)(v402, v440, v436);
    v303 = sub_2CDFE0();
    v304 = sub_2CE660();
    v305 = os_log_type_enabled(v303, v304);
    v306 = v438;
    if (v305)
    {
      v307 = swift_slowAlloc();
      *v307 = 0;
      _os_log_impl(&dword_0, v303, v304, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v307, 2u);
    }

    (v439)(v302, v436);
    sub_1A29E8(v306, v437, sub_1B7EA0, v86);
    goto LABEL_157;
  }

  if (!sub_2CE890() && !v254)
  {
    goto LABEL_164;
  }

  v313 = v401;
  v314 = v436;
  (v441)(v401, v440, v436);
  v315 = sub_2CDFE0();
  v316 = sub_2CE660();
  if (os_log_type_enabled(v315, v316))
  {
    v317 = swift_slowAlloc();
    *v317 = 0;
    _os_log_impl(&dword_0, v315, v316, "PlayMediaDialogProvider going to makeCreateRadio", v317, 2u);
  }

  (v439)(v313, v314);
  sub_1A2E08(v438, v435, v107, v437, sub_1B7EA0, v86);
}

uint64_t sub_1B4918(int a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v425 = a2;
  LODWORD(v417) = a1;
  v12 = sub_20410(&qword_353C88, &unk_2D6070);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v407 = &v385 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v412 = &v385 - v16;
  v414 = sub_2CBF80();
  v413 = *(v414 - 8);
  v17 = *(v413 + 64);
  __chkstk_darwin(v414);
  v408 = &v385 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v388 = &v385 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v418 = &v385 - v23;
  v419 = sub_20410(&unk_3519A0, &qword_2D0980);
  v24 = *(*(v419 - 8) + 64);
  __chkstk_darwin(v419);
  v420 = (&v385 - v25);
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v415 = &v385 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v410 = &v385 - v32;
  v33 = __chkstk_darwin(v31);
  v396 = &v385 - v34;
  v35 = __chkstk_darwin(v33);
  v393 = &v385 - v36;
  v37 = __chkstk_darwin(v35);
  v386 = &v385 - v38;
  v39 = __chkstk_darwin(v37);
  v387 = &v385 - v40;
  v41 = __chkstk_darwin(v39);
  v389 = &v385 - v42;
  v43 = __chkstk_darwin(v41);
  v390 = &v385 - v44;
  v45 = __chkstk_darwin(v43);
  v391 = &v385 - v46;
  v47 = __chkstk_darwin(v45);
  v392 = &v385 - v48;
  v49 = __chkstk_darwin(v47);
  v394 = &v385 - v50;
  v51 = __chkstk_darwin(v49);
  v395 = &v385 - v52;
  v53 = __chkstk_darwin(v51);
  v397 = &v385 - v54;
  v55 = __chkstk_darwin(v53);
  v398 = &v385 - v56;
  v57 = __chkstk_darwin(v55);
  v399 = &v385 - v58;
  v59 = __chkstk_darwin(v57);
  v405 = &v385 - v60;
  v61 = __chkstk_darwin(v59);
  v411 = &v385 - v62;
  v63 = __chkstk_darwin(v61);
  v400 = &v385 - v64;
  v65 = __chkstk_darwin(v63);
  v401 = &v385 - v66;
  v67 = __chkstk_darwin(v65);
  v404 = &v385 - v68;
  v69 = __chkstk_darwin(v67);
  v406 = &v385 - v70;
  v71 = __chkstk_darwin(v69);
  v402 = &v385 - v72;
  v73 = __chkstk_darwin(v71);
  v409 = &v385 - v74;
  v75 = __chkstk_darwin(v73);
  v403 = &v385 - v76;
  v77 = __chkstk_darwin(v75);
  v416 = &v385 - v78;
  v79 = __chkstk_darwin(v77);
  v81 = &v385 - v80;
  __chkstk_darwin(v79);
  v83 = &v385 - v82;
  v84 = swift_allocObject();
  v421 = a5;
  v84[2] = a5;
  v84[3] = a6;
  v85 = v84;
  v84[4] = a7;
  v86 = qword_34BF58;
  v422 = a6;

  *&v423 = a7;

  if (v86 != -1)
  {
    swift_once();
  }

  v87 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v88 = v27[2];
  v427 = v87;
  v428 = v88;
  v429 = v27 + 2;
  v88(v83, v87, v26);
  v89 = v26;
  v90 = a3;
  v91 = sub_2CDFE0();
  v92 = sub_2CE670();

  v93 = os_log_type_enabled(v91, v92);
  v431 = v89;
  v94 = a4;
  v424 = v85;
  v426 = v90;
  v430 = v27;
  if (!v93)
  {

    v96 = v27[1];
    v96(v83, v89);
    v102 = v89;
    goto LABEL_23;
  }

  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  *&v433 = v96;
  *v95 = 136315394;
  v97 = [v90 privatePlayMediaIntentData];
  if (v97 && (v98 = v97, v99 = [v97 internalSignals], v98, v99))
  {
    v100 = v94;
    v101 = sub_2CE410();
  }

  else
  {
    v100 = v94;
    v101 = 0;
  }

  *&v432[0] = v101;
  sub_20410(&qword_353C98, &unk_2D6A00);
  v103 = sub_2CE2A0();
  v105 = sub_3F08(v103, v104, &v433);

  *(v95 + 4) = v105;
  *(v95 + 12) = 2080;
  v106 = [v426 mediaItems];
  if (!v106)
  {
    goto LABEL_19;
  }

  v107 = v106;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v108 = sub_2CE410();

  if (v108 >> 62)
  {
    v109 = sub_2CEDA0();
  }

  else
  {
    v109 = *(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8));
  }

  v94 = v100;
  v102 = v431;
  if (!v109)
  {

    v112 = 0;
    goto LABEL_22;
  }

  if ((v108 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)))
    {
      v100 = v94;
      v110 = *(v108 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_166:
    v420 = v95;

    v308 = [v108 mediaSearch];
    if (v308)
    {
      v309 = v308;
      v310 = [v308 sortOrder];

      if (v310 == &dword_8)
      {
        v311 = [v92 mediaSearch];
        if (v311)
        {
          v312 = v311;
          v313 = [v311 mediaName];

          if (v313)
          {

            v314 = [v92 mediaSearch];
            if (!v314 || (v315 = v314, v316 = [v314 reference], v315, v316 != &dword_0 + 1))
            {

              v428(v386, v427, v431);
              v373 = sub_2CDFE0();
              v374 = sub_2CE660();
              if (os_log_type_enabled(v373, v374))
              {
                v375 = swift_slowAlloc();
                *v375 = 0;
                _os_log_impl(&dword_0, v373, v374, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v375, 2u);
              }

              v96(v386, v431);
              sub_1A46BC(v425, v92, sub_1B7DD8, v424);
              goto LABEL_159;
            }
          }
        }
      }
    }

    v317 = &qword_330870;
    v318 = 2;
    do
    {
      v319 = v318;
      if (v318-- == 0)
      {
        break;
      }

      v321 = *v317++;
    }

    while (v321 != v418);
    v322 = [v92 mediaSearch];
    if (v322 && (v323 = v322, v324 = [v322 sortOrder], v323, v324 == &dword_0 + 3))
    {
      if (!v319)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v325 = [v92 mediaSearch];
      if (!v325 || (v326 = v325, v327 = [v325 sortOrder], v326, !v319) || v327 != &dword_4)
      {
LABEL_186:
        v331 = sub_1D14A0();
        if (v332)
        {
          v333 = v331;
          v334 = v332;

          v335 = HIBYTE(v334) & 0xF;
          if ((v334 & 0x2000000000000000) == 0)
          {
            v335 = v333 & 0xFFFFFFFFFFFFLL;
          }

          v336 = v335 == 0;
        }

        else
        {
          v336 = 1;
        }

        LODWORD(v421) = v336;
        v337 = sub_1D15EC();
        if (v338)
        {
          v339 = v337 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v339 = 0;
        }

        if (v338)
        {
          v340 = v338;
        }

        else
        {
          v340 = 0xE000000000000000;
        }

        if ((v340 & 0x2000000000000000) != 0)
        {
          v341 = HIBYTE(v340) & 0xF;
        }

        else
        {
          v341 = v339;
        }

        if (v341)
        {
          v342 = sub_2CCF90();
          v344 = v343;
          v345 = sub_2CBE10();
          if (!v344)
          {

            goto LABEL_212;
          }

          if (v342 == v345 && v344 == v346)
          {
          }

          else
          {
            v347 = sub_2CEEA0();

            if ((v347 & 1) == 0)
            {
              goto LABEL_212;
            }
          }

          if (!v421 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v92, &off_330880))
          {

            v428(v387, v427, v431);
            v348 = sub_2CDFE0();
            v349 = sub_2CE660();
            if (os_log_type_enabled(v348, v349))
            {
              v350 = swift_slowAlloc();
              *v350 = 0;
              _os_log_impl(&dword_0, v348, v349, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v350, 2u);
            }

            v96(v387, v431);
            sub_1A4044(v425, v92, sub_1B7DD8, v424);
            goto LABEL_159;
          }
        }

LABEL_212:
        v351 = sub_2CE710();
        v352 = v421;
        if (v351 != 5)
        {
          v352 = (sub_2CE710() == 19) & v421;
        }

        if (sub_2CE710() == 16)
        {
          if ((v352 | v421))
          {
            goto LABEL_221;
          }
        }

        else if (v352)
        {
          goto LABEL_221;
        }

        if (!v341 || (v353 = [v92 mediaSearch]) == 0 || (v354 = v353, v355 = objc_msgSend(v353, "sortOrder"), v354, v355 != &dword_4 + 1))
        {
          v359 = v421 ^ 1;
          if (v418 != &dword_0 + 3 || !v81)
          {
            goto LABEL_230;
          }

          v360 = HIBYTE(v81) & 0xF;
          if ((v81 & 0x2000000000000000) == 0)
          {
            v360 = v422 & 0xFFFFFFFFFFFFLL;
          }

          if (v360)
          {

            v361 = 0;
            v362 = 0xE000000000000000;
          }

          else
          {
LABEL_230:
            v361 = v422;
            v362 = v81;
            v422 = v420;
            v81 = v102;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v363 = swift_allocObject();
          v364 = v363;
          *(v363 + 16) = xmmword_2D5FC0;
          *(v363 + 32) = 0x656C746974;
          v365 = v422;
          if (!v81)
          {
            v365 = 0;
          }

          v366 = 0xE000000000000000;
          if (v81)
          {
            v367 = v81;
          }

          else
          {
            v367 = 0xE000000000000000;
          }

          *(v363 + 40) = 0xE500000000000000;
          *(v363 + 48) = v365;
          *(v363 + 56) = v367;
          *(v363 + 72) = &type metadata for String;
          *(v363 + 80) = 0x747369747261;
          if (v362)
          {
            v368 = v361;
          }

          else
          {
            v368 = 0;
          }

          if (v362)
          {
            v366 = v362;
          }

          *(v363 + 88) = 0xE600000000000000;
          *(v363 + 96) = v368;
          *(v363 + 104) = v366;
          *(v363 + 120) = &type metadata for String;
          *(v363 + 128) = 0x61526576694C7369;
          *(v363 + 136) = 0xEB000000006F6964;
          *(v363 + 144) = v359;
          *(v363 + 168) = &type metadata for Bool;
          *(v363 + 176) = 0xD00000000000001BLL;
          *(v363 + 184) = 0x80000000002DE780;

          *(v364 + 192) = [v92 playbackQueueLocation] == &dword_0 + 2;
          *(v364 + 216) = &type metadata for Bool;
          *(v364 + 224) = 0xD00000000000001CLL;
          *(v364 + 232) = 0x80000000002DE7A0;
          *(v364 + 240) = [v92 playbackQueueLocation] == &dword_0 + 3;
          *(v364 + 264) = &type metadata for Bool;
          *(v364 + 272) = 0x667568536E4F7369;
          *(v364 + 280) = 0xEB00000000656C66;
          v369 = [v92 backingStore];
          objc_opt_self();
          v370 = swift_dynamicCastObjCClass();
          if (v370)
          {
            v371 = [v370 playShuffled];

            v372 = v371 & v421;
          }

          else
          {

            v372 = 0;
          }

          *(v364 + 288) = v372;
          *(v364 + 312) = &type metadata for Bool;
          *(v364 + 320) = 0x657065526E4F7369;
          *(v364 + 328) = 0xEA00000000007461;
          v376 = [v92 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v92, "playbackRepeatMode") == &dword_0 + 3;
          *(v364 + 336) = v376;
          *(v364 + 360) = &type metadata for Bool;
          strcpy((v364 + 368), "isAppSpecified");
          *(v364 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v413 + 56))(v388, 1, 1, v414);
          }

          v377 = v423;
          v378 = v425;
          v379 = v388;
          v380 = sub_197DC8(v425, v92, (v423 + 128), v388);
          sub_30B8(v379, &qword_34DD30, &unk_2D1BC0);
          *(v364 + 384) = v380 & 1;
          *(v364 + 408) = &type metadata for Bool;
          strcpy((v364 + 416), "isPersonalized");
          *(v364 + 431) = -18;
          v381 = sub_1D16A0();
          *(v364 + 456) = &type metadata for Bool;
          *(v364 + 432) = v381 & 1;
          v382 = sub_112C0(v364);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v383 = *(v377 + 120);
          *(&v434 + 1) = v416;
          *&v435 = &off_3381B8;
          *&v433 = v92;
          v384 = v92;
          sub_239644(v382, v378, &v433, sub_1B7DD8, v424);

          goto LABEL_147;
        }

LABEL_221:

        v428(v389, v427, v431);
        v356 = sub_2CDFE0();
        v357 = sub_2CE660();
        if (os_log_type_enabled(v356, v357))
        {
          v358 = swift_slowAlloc();
          *v358 = 0;
          _os_log_impl(&dword_0, v356, v357, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v358, 2u);
        }

        v96(v389, v431);
        sub_1A39E0(v425, v92, sub_1B7DD8, v424);
        goto LABEL_159;
      }
    }

    v428(v390, v427, v431);
    v328 = sub_2CDFE0();
    v329 = sub_2CE660();
    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      *v330 = 0;
      _os_log_impl(&dword_0, v328, v329, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v330, 2u);
    }

    v96(v390, v431);
    sub_1A32FC(v425, v92, sub_1B7DD8, v424);
    goto LABEL_159;
  }

  v100 = v94;
  v110 = sub_2CECD0();
LABEL_16:
  v111 = v110;

  v112 = [v111 privateMediaItemValueData];

  if (v112)
  {
    v113 = [v112 internalSignals];

    if (v113)
    {
      v112 = sub_2CE410();

      goto LABEL_20;
    }

LABEL_19:
    v112 = 0;
  }

LABEL_20:
  v94 = v100;
  v102 = v431;
LABEL_22:
  *&v432[0] = v112;
  v114 = sub_2CE2A0();
  v116 = sub_3F08(v114, v115, &v433);

  *(v95 + 14) = v116;
  _os_log_impl(&dword_0, v91, v92, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v95, 0x16u);
  swift_arrayDestroy();

  v96 = v430[1];
  v96(v83, v102);
LABEL_23:
  v117 = v425;
  v118 = sub_2CCF90();
  if (!v119)
  {
    v428(v81, v427, v102);
    v127 = sub_2CDFE0();
    v128 = sub_2CE680();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_0, v127, v128, "Missing app bundle identifier", v129, 2u);
    }

    v96(v81, v431);
    sub_10C40();
    v130 = swift_allocError();
    *v131 = 0xD00000000000001DLL;
    v131[1] = 0x80000000002DD6F0;
    v132 = v420;
    *v420 = v130;
    swift_storeEnumTagMultiPayload();
    sub_2BE324(v132, v421, v422);
    v133 = &unk_3519A0;
    v134 = &qword_2D0980;
    v135 = v132;
    goto LABEL_50;
  }

  v120 = v118;
  v121 = v119;
  v122 = sub_2CCF90();
  v124 = v123;
  v125 = sub_2CBE10();
  if (v124)
  {
    if (v122 == v125 && v124 == v126)
    {

LABEL_35:

      goto LABEL_36;
    }

    v136 = sub_2CEEA0();

    if (v136)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (v120 == sub_2CBE30() && v121 == v137)
  {
    goto LABEL_35;
  }

  v144 = sub_2CEEA0();

  if ((v144 & 1) == 0)
  {
    v92 = v426;
    v139 = v418;
    if (v417)
    {
      goto LABEL_40;
    }

LABEL_45:
    v140 = 0;
    goto LABEL_46;
  }

LABEL_36:
  v92 = v426;
  v138 = sub_2CE830();
  if ((v417 & 1) == 0)
  {
    v139 = v418;
    if (v138)
    {
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  v139 = v418;
  if (v138)
  {
    v140 = 1;
LABEL_46:

    v145 = v416;
    v428(v416, v427, v102);
    v146 = sub_2CDFE0();
    v147 = sub_2CE660();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 67109376;
      *(v148 + 4) = v140;
      *(v148 + 8) = 1024;
      *(v148 + 10) = v140;
      _os_log_impl(&dword_0, v146, v147, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v148, 0xEu);
    }

    v96(v145, v102);
LABEL_49:
    v149 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v150 = v420;
    *(v150 + v149) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_2BE324(v150, v421, v422);
    v133 = &unk_3519A0;
    v134 = &qword_2D0980;
    v135 = v150;
LABEL_50:
    sub_30B8(v135, v133, v134);
  }

LABEL_40:
  *&v433 = v92;
  v141 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v418 = sub_2CBFA0();
  v417 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v142 = v413;
    v143 = v414;
    if ((*(v413 + 48))(v139, 1, v414))
    {
      sub_30B8(v139, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v152 = v408;
      (*(v142 + 16))(v408, v139, v143);
      sub_30B8(v139, &qword_34DD30, &unk_2D1BC0);
      v153 = sub_2CBF50();
      v154 = v143;
      v155 = v153;
      (*(v142 + 8))(v152, v154);
      if (v155)
      {

        v156 = v403;
        v428(v403, v427, v431);
        v157 = sub_2CDFE0();
        v158 = sub_2CE690();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&dword_0, v157, v158, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v159, 2u);
        }

        v96(v156, v431);
        sub_1A0698(v117, v92, sub_1B7DD8, v424);
      }
    }
  }

  v160 = v94[20];
  sub_35E0(v94 + 16, v94[19]);
  v161 = sub_2CC430();
  v416 = v141;
  if ((v161 & 1) == 0 || !sub_2CE810())
  {
    v175 = v415;
    v428(v415, v427, v431);
    v176 = sub_2CDFE0();
    v177 = sub_2CE690();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      v179 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_69;
    }

LABEL_71:

    v96(v175, v431);
    goto LABEL_72;
  }

  v162 = v409;
  v428(v409, v427, v431);
  v163 = sub_2CDFE0();
  v164 = sub_2CE690();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&dword_0, v163, v164, "PlayMediaDialogProvider#makePlayDialog pym enabled", v165, 2u);
    v162 = v409;
  }

  v166 = v431;
  v96(v162, v431);
  if ((v418 - 1) >= 2)
  {
    v175 = v402;
    v428(v402, v427, v166);
    v176 = sub_2CDFE0();
    v213 = sub_2CE690();
    if (!os_log_type_enabled(v176, v213))
    {
      goto LABEL_71;
    }

    v214 = swift_slowAlloc();
    *v214 = 134217984;
    *(v214 + 4) = v418;
    v179 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v180 = v213;
    v181 = v176;
    v182 = v214;
    v183 = 12;
    goto LABEL_70;
  }

  v167 = v406;
  v428(v406, v427, v166);
  v168 = sub_2CDFE0();
  v169 = sub_2CE690();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    *v170 = 0;
    _os_log_impl(&dword_0, v168, v169, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v170, 2u);
    v167 = v406;
  }

  v171 = v431;
  v96(v167, v431);
  v172 = [v92 mediaSearch];
  if (v172)
  {
    v173 = v172;
    v174 = [v172 sortOrder];

    v171 = v431;
    if (v174)
    {
      v175 = v401;
      v428(v401, v427, v431);
      v176 = sub_2CDFE0();
      v177 = sub_2CE690();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        v179 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_69:
        v180 = v177;
        v181 = v176;
        v182 = v178;
        v183 = 2;
LABEL_70:
        _os_log_impl(&dword_0, v181, v180, v179, v182, v183);

        goto LABEL_71;
      }

      goto LABEL_71;
    }
  }

  v428(v404, v427, v171);
  v223 = sub_2CDFE0();
  v224 = sub_2CE670();
  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    *v225 = 0;
    _os_log_impl(&dword_0, v223, v224, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v225, 2u);
  }

  v96(v404, v431);
  sub_2CBC60();
  sub_35E0(&v433, *(&v434 + 1));
  v226 = sub_2CBE50();
  sub_306C(&v433);
  if ((v226 & 1) == 0)
  {

    v227 = v400;
    v428(v400, v427, v431);
    v228 = sub_2CDFE0();
    v229 = sub_2CE690();
    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      *v230 = 0;
      _os_log_impl(&dword_0, v228, v229, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v230, 2u);
    }

    v96(v227, v431);
    goto LABEL_49;
  }

LABEL_72:
  sub_20410(&qword_353C90, &unk_2D6080);
  v184 = swift_allocObject();
  v423 = xmmword_2D0090;
  *(v184 + 16) = xmmword_2D0090;
  sub_EEAC((v94 + 21), v184 + 40);
  *(v184 + 32) = 4;
  sub_1B7DE4(v184 + 32, v432);
  v185 = v92;
  if (sub_1A0B34())
  {

    v433 = v432[0];
    v434 = v432[1];
    v435 = v432[2];
    v186 = v94[15];
    v187 = v410;
    v188 = v431;
    v428(v410, v427, v431);
    v189 = sub_2CDFE0();
    v190 = sub_2CE690();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = v92;
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *&v432[0] = v193;
      *v192 = 136315138;
      *(v192 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v432);
      _os_log_impl(&dword_0, v189, v190, "DialogMemoryUseCase#%s#execute Executing...", v192, 0xCu);
      sub_306C(v193);

      v185 = v191;
    }

    v96(v187, v188);
    sub_280EB4(v117, v185, v186, sub_1B7DD8, v424);
    v194 = *sub_35E0(&v433 + 1, v435);
    sub_281390();
    sub_1B7E40(&v433);
  }

  sub_1B7E40(v432);
  swift_setDeallocating();
  sub_1B7E40(v184 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718())
  {

    v195 = [v92 privatePlayMediaIntentData];
    if (v195 && (v196 = v195, v197 = [v195 pegasusMetaData], v196, v197))
    {
      v198 = sub_2C8DC0();
      v200 = v199;
    }

    else
    {
      v198 = 0;
      v200 = 0xF000000000000000;
    }

    v206 = v92;
    v207 = v412;
    sub_2C9210();
    sub_5267C(v198, v200);
    v208 = v407;
    sub_F3F4(v207, v407, &qword_353C88, &unk_2D6070);
    v209 = sub_2C9240();
    v210 = *(v209 - 8);
    if ((*(v210 + 48))(v208, 1, v209) == 1)
    {
      sub_30B8(v208, &qword_353C88, &unk_2D6070);
      v211 = 0;
      v212 = 0;
    }

    else
    {
      v211 = sub_2C9220();
      v212 = v215;
      (*(v210 + 8))(v208, v209);
    }

    v428(v411, v427, v431);

    v216 = sub_2CDFE0();
    v217 = sub_2CE660();

    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *v218 = 138412290;
      if (v212)
      {
        sub_10C40();
        swift_allocError();
        *v220 = v211;
        v220[1] = v212;
        v221 = _swift_stdlib_bridgeErrorToNSError();
        v222 = v221;
      }

      else
      {
        v221 = 0;
        v222 = 0;
      }

      *(v218 + 4) = v221;
      *v219 = v222;
      _os_log_impl(&dword_0, v216, v217, "PlayMediaDialogProvider going to makeNlsContainer for %@", v218, 0xCu);
      sub_30B8(v219, &unk_34FC00, &unk_2D0150);

      v117 = v425;
    }

    else
    {
    }

    v96(v411, v431);
    sub_1A0DE4(v117, v206, sub_1B7DD8, v424);
    v133 = &qword_353C88;
    v134 = &unk_2D6070;
    v135 = v412;
    goto LABEL_50;
  }

  v201 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v201 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v92, &off_32FF90))
  {

    v202 = v405;
    v428(v405, v427, v431);
    v203 = sub_2CDFE0();
    v204 = sub_2CE660();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&dword_0, v203, v204, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v205, 2u);
    }

    v96(v202, v431);
    sub_1A0F78(v117, v185, sub_1B7DD8, v424);
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v231 = sub_2CE720();
  isa = [v231 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v233 = sub_2CEB10(0).super.super.isa;
  v234 = sub_2CEB30();

  if ((v234 & 1) == 0)
  {

    v239 = v399;
    v428(v399, v427, v431);
    v240 = sub_2CDFE0();
    v241 = sub_2CE660();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      *v242 = 0;
      _os_log_impl(&dword_0, v240, v241, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v242, 2u);
    }

    v96(v239, v431);
    v243 = sub_112C0(_swiftEmptyArrayStorage);
    v244 = v94[15];
    *(&v434 + 1) = v416;
    *&v435 = &off_3381B8;
    *&v433 = v92;
    v245 = v92;
    sub_240C20(v243, v117, &v433, sub_1B7DD8, v424);

    sub_30B8(&v433, &qword_34C6C0, &qword_2D0710);
  }

  v108 = v92;
  if (sub_1D0CF0())
  {

    v235 = v398;
    v428(v398, v427, v431);
    v236 = sub_2CDFE0();
    v237 = sub_2CE660();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      *v238 = 0;
      _os_log_impl(&dword_0, v236, v237, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v238, 2u);
    }

    v96(v235, v431);
    sub_1A1C48(v117, v108, sub_1B7DD8, v424);
  }

  v95 = sub_1D1060();
  v102 = v246;
  v422 = sub_1D119C();
  v81 = v247;
  v248 = sub_2CE8E0() && sub_2CE840();
  if (!(v102 | v81))
  {
    v249 = [v92 mediaSearch];
    if (v249)
    {
      v250 = v249;
      v251 = v94;
      v252 = [v249 reference];

      v253 = v252 == &dword_0 + 1;
      v94 = v251;
      v108 = v92;
      v254 = v253;
      if ((v254 | v248))
      {
        goto LABEL_123;
      }
    }

    else if (v248)
    {
      goto LABEL_123;
    }

    v281 = v396;
    v428(v396, v427, v431);
    v282 = sub_2CDFE0();
    v283 = sub_2CE660();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 0;
      _os_log_impl(&dword_0, v282, v283, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v284, 2u);
    }

    v96(v281, v431);
    v285 = [v108 playbackQueueLocation] == &dword_0 + 2;
    v286 = v108;
    v287 = [v108 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v288 = swift_allocObject();
    *(v288 + 32) = 0xD00000000000001BLL;
    *(v288 + 40) = 0x80000000002DE780;
    *(v288 + 16) = xmmword_2D0E40;
    *(v288 + 48) = v285;
    *(v288 + 72) = &type metadata for Bool;
    *(v288 + 80) = 0xD00000000000001CLL;
    *(v288 + 88) = 0x80000000002DE7A0;
    *(v288 + 120) = &type metadata for Bool;
    *(v288 + 96) = v287;
    v289 = sub_112C0(v288);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v290 = v94[15];
    *(&v434 + 1) = v416;
    *&v435 = &off_3381B8;
    *&v433 = v286;
    v291 = v286;
    sub_23A7A4(v289, v425, &v433, sub_1B7DD8, v424);

LABEL_147:

    v133 = &qword_34C6C0;
    v134 = &qword_2D0710;
    v135 = &v433;
    goto LABEL_50;
  }

LABEL_123:
  sub_1D04A0();
  if (v255)
  {

    v256 = v397;
    v428(v397, v427, v431);
    v257 = sub_2CDFE0();
    v258 = sub_2CE660();
    if (os_log_type_enabled(v257, v258))
    {
      v259 = swift_slowAlloc();
      *v259 = 0;
      _os_log_impl(&dword_0, v257, v258, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v259, 2u);
      v108 = v92;
    }

    v96(v256, v431);
    v260 = sub_1D05E4();
    v262 = v261;
    sub_20410(&unk_353120, &unk_2D0B50);
    v263 = swift_allocObject();
    *(v263 + 16) = v423;
    *(v263 + 32) = 0xD000000000000016;
    v264 = v263 + 32;
    *(v263 + 72) = &type metadata for String;
    if (v262)
    {
      v265 = v260;
    }

    else
    {
      v265 = 0;
    }

    v266 = 0xE000000000000000;
    if (v262)
    {
      v266 = v262;
    }

    *(v263 + 40) = 0x80000000002DE7C0;
    *(v263 + 48) = v265;
    *(v263 + 56) = v266;
    v267 = sub_112C0(v263);
    swift_setDeallocating();
    sub_30B8(v264, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    v268 = v94[15];
    *(&v434 + 1) = v416;
    *&v435 = &off_3381B8;
    *&v433 = v108;
    v269 = v108;
    sub_23C944(v267, v425, &v433, sub_1B7DD8, v424);

    sub_30B8(&v433, &qword_34C6C0, &qword_2D0710);
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v108, &off_3307B0) && v418 == &dword_4 + 2)
  {

    v270 = v395;
    v428(v395, v427, v431);
    v271 = sub_2CDFE0();
    v272 = sub_2CE660();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      *v273 = 0;
      _os_log_impl(&dword_0, v271, v272, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v273, 2u);
      v108 = v92;
    }

    v96(v270, v431);
    sub_1A1FBC(v425, v108, sub_1B7DD8, v424);
LABEL_159:
  }

  v274 = &qword_330800;
  v275 = 4;
  while (v275)
  {
    v276 = *v274++;
    --v275;
    if (v276 == v418)
    {

      v277 = v394;
      v428(v394, v427, v431);
      v278 = sub_2CDFE0();
      v279 = sub_2CE660();
      if (os_log_type_enabled(v278, v279))
      {
        v280 = swift_slowAlloc();
        *v280 = 0;
        _os_log_impl(&dword_0, v278, v279, "PlayMediaDialogProvider going to makePodcast", v280, 2u);
        v108 = v92;
      }

      v96(v277, v431);
      sub_1A2614(v425, v108, sub_1B7DD8, v424);
      goto LABEL_159;
    }
  }

  *&v423 = v94;
  v292 = sub_1D2364(&off_330820);
  sub_F1954(&unk_330840);
  if (v292)
  {
    v293 = [v108 mediaSearch];
    if (!v293 || (v294 = v293, v295 = [v293 sortOrder], v294, v295 != &dword_0 + 1))
    {

      v300 = v393;
      v428(v393, v427, v431);
      v301 = sub_2CDFE0();
      v302 = sub_2CE660();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        *v303 = 0;
        _os_log_impl(&dword_0, v301, v302, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v303, 2u);
        v108 = v92;
      }

      v96(v300, v431);
      sub_1A1C48(v425, v108, sub_1B7DD8, v424);
      goto LABEL_159;
    }
  }

  if (sub_1D1380())
  {

    v296 = v392;
    v428(v392, v427, v431);
    v297 = sub_2CDFE0();
    v298 = sub_2CE660();
    if (os_log_type_enabled(v297, v298))
    {
      v299 = swift_slowAlloc();
      *v299 = 0;
      _os_log_impl(&dword_0, v297, v298, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v299, 2u);
      v108 = v92;
    }

    v96(v296, v431);
    sub_1A29E8(v425, v108, sub_1B7DD8, v424);
    goto LABEL_159;
  }

  if (!sub_2CE890() && !v248)
  {
    goto LABEL_166;
  }

  v304 = v391;
  v428(v391, v427, v431);
  v305 = sub_2CDFE0();
  v306 = sub_2CE660();
  if (os_log_type_enabled(v305, v306))
  {
    v307 = swift_slowAlloc();
    *v307 = 0;
    _os_log_impl(&dword_0, v305, v306, "PlayMediaDialogProvider going to makeCreateRadio", v307, 2u);
  }

  v96(v304, v431);
  sub_1A2E08(v425, v95, v102, v108, sub_1B7DD8, v424);
}

uint64_t sub_1B7EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7F14()
{
  v0 = sub_2CDAD0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_2CECD0();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_2CDB90();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;

        return v8;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

id sub_1B8014()
{
  v0 = sub_1B7F14();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(INPlayMediaIntent) init];
  sub_2CDAE0();
  sub_2CDBC0();
  sub_2CDBB0();
  sub_2CDBA0();

  v3 = sub_2CDBD0();
  v4 = sub_1BA200(v1, v3, 0, 0);

  return v4;
}

Swift::String_optional __swiftcall AudioUsoIntent.haHomeName()()
{
  v0 = sub_1B8258(&ControlsUsoTask.haHomeName());
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void *sub_1B819C(uint64_t (*a1)(uint64_t, void *))
{
  if (!sub_2CD6D0())
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_2CAFC0();
  v3 = a1(v2, &protocol witness table for UsoTask);

  return v3;
}

Swift::String_optional __swiftcall AudioUsoIntent.haDestinationDeviceId()()
{
  v0 = sub_1B8258(&ControlsUsoTask.haDestinationDeviceId());
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1B8258(uint64_t (*a1)(uint64_t, void *))
{
  if (!sub_2CD6D0())
  {
    return 0;
  }

  v2 = sub_2CAFC0();
  v3 = a1(v2, &protocol witness table for UsoTask);

  return v3;
}

uint64_t sub_1B835C@<X0>(void (*a1)(uint64_t, void *)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  if (sub_2CD6D0())
  {
    v6 = sub_2CAFC0();
    a1(v6, &protocol witness table for UsoTask);
  }

  else
  {
    v8 = a2();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }
}

void *sub_1B84D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *))
{
  v5 = *v3;
  if (!sub_2CD6D0())
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_2CAFC0();
  v7 = a3(v6, &protocol witness table for UsoTask);

  return v7;
}

uint64_t sub_1B8594(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *))
{
  v5 = *v3;
  if (!sub_2CD6D0())
  {
    return 0;
  }

  v6 = sub_2CAFC0();
  v7 = a3(v6, &protocol witness table for UsoTask);

  return v7;
}

uint64_t sub_1B869C@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(uint64_t, void *)@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  if (sub_2CD6D0())
  {
    v8 = sub_2CAFC0();
    a2(v8, &protocol witness table for UsoTask);
  }

  else
  {
    v10 = a1();
    v11 = *(*(v10 - 8) + 56);

    return v11(a3, 1, 1, v10);
  }
}

uint64_t sub_1B8770@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v60 = a1;
  v61 = a2;
  v53 = sub_2CD4C0();
  v59 = *(v53 - 8);
  v2 = *(v59 + 64);
  __chkstk_darwin(v53);
  v49 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v4 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v62 = &v49 - v5;
  v6 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = &v49 - v11;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = sub_2CA870();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v58 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v49 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v27 = v20[2];
  v57 = v26;
  v56 = v20 + 2;
  v55 = v27;
  v27(v25, v26, v19);
  v28 = sub_2CDFE0();
  v29 = sub_2CE690();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "SearchForMediaFlowStrategy#actionForInput", v30, 2u);
  }

  v54 = v20[1];
  v54(v25, v19);
  sub_2CA790();
  v31 = sub_D2F98(v18, &v63);
  (*(v15 + 8))(v18, v14, v31);
  if (v64)
  {
    sub_420A4(&v63, &v65);
    sub_35E0(&v65, v66);
    sub_2CD840();
    v32 = v59;
    v33 = v52;
    v34 = v53;
    (*(v59 + 104))(v52, enum case for CommonAudio.Verb.summarise(_:), v53);
    (*(v32 + 56))(v33, 0, 1, v34);
    v35 = *(v51 + 48);
    v36 = v62;
    sub_F7598(v13, v62);
    sub_F7598(v33, v36 + v35);
    v37 = *(v32 + 48);
    if (v37(v36, 1, v34) == 1)
    {
      sub_30B8(v33, &qword_34D6B8, &qword_2D15B0);
      v38 = v62;
      sub_30B8(v13, &qword_34D6B8, &qword_2D15B0);
      if (v37(v38 + v35, 1, v34) == 1)
      {
        sub_30B8(v38, &qword_34D6B8, &qword_2D15B0);
LABEL_18:
        sub_2C9CE0();
        return sub_306C(&v65);
      }
    }

    else
    {
      v60 = v13;
      v39 = v50;
      sub_F7598(v36, v50);
      if (v37(v36 + v35, 1, v34) != 1)
      {
        v45 = v59;
        v46 = v49;
        (*(v59 + 32))(v49, v36 + v35, v34);
        sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
        v47 = sub_2CE250();
        v48 = *(v45 + 8);
        v48(v46, v34);
        sub_30B8(v33, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v60, &qword_34D6B8, &qword_2D15B0);
        v48(v39, v34);
        sub_30B8(v62, &qword_34D6B8, &qword_2D15B0);
        if (v47)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      sub_30B8(v33, &qword_34D6B8, &qword_2D15B0);
      v38 = v62;
      sub_30B8(v60, &qword_34D6B8, &qword_2D15B0);
      (*(v59 + 8))(v39, v34);
    }

    sub_30B8(v38, &qword_34D6B0, &unk_2D4FC0);
LABEL_13:
    sub_306C(&v65);
    goto LABEL_14;
  }

  sub_30B8(&v63, &qword_34CF98, &unk_2D1A40);
LABEL_14:
  v40 = v58;
  v55(v58, v57, v19);
  v41 = sub_2CDFE0();
  v42 = sub_2CE680();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "SearchForMediaFlowStrategy#actionForInput received unsupported pommesResponse", v43, 2u);
  }

  v54(v40, v19);
  return sub_2C9CF0();
}

uint64_t type metadata accessor for SearchForMediaFlowStrategy()
{
  result = qword_353D18;
  if (!qword_353D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8FC0(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v56 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v14 = v5[2];
  v14(v12, v13, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "SearchForMediaFlowStrategy#makeIntentFrom", v17, 2u);
  }

  v20 = v5[1];
  v18 = (v5 + 1);
  v19 = v20;
  v20(v12, v4);
  v21 = sub_1B7F14();
  if (v21)
  {
    v22 = v21;
    v54 = v19;
    v55 = v18;
    v23 = [objc_allocWithZone(INSearchForMediaIntent) init];
    v24 = sub_2CDAE0();
    v25 = sub_1CFB70(v22, v24);

    v26 = v56;
    v14(v56, v13, v4);
    v27 = v25;
    v28 = sub_2CDFE0();
    v29 = sub_2CE670();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59 = v31;
      *v30 = 136315138;
      v32 = v27;
      v33 = [v32 description];
      v34 = sub_2CE270();
      v36 = v35;

      v37 = sub_3F08(v34, v36, &v59);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_0, v28, v29, "SearchForMediaFlowStrategy#makeIntentFromParse converted pommesResponse to intent: %s", v30, 0xCu);
      sub_306C(v31);

      v38 = v56;
    }

    else
    {

      v38 = v26;
    }

    v54(v38, v4);
    v49 = v27;
    v58(v27, 0);
  }

  else
  {
    v39 = v55;
    v14(v55, v13, v4);
    v40 = a1;
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v43 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v45 = sub_2CE420();
      v47 = v46;

      v48 = sub_3F08(v45, v47, &v59);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_0, v41, v42, "SearchForMediaFlowStrategy#makeIntentFromParse pommesResponse doesn't contain audioExperience %s", v43, 0xCu);
      sub_306C(v44);

      v19(v55, v4);
    }

    else
    {

      v19(v39, v4);
    }

    v50 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, enum case for PlaybackCode.ceGE82(_:), v50);
    v58(v51, 1);
  }
}

uint64_t INPlayMediaIntent.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v84 = sub_2CA870();
  v82 = *(v84 - 8);
  v1 = *(v82 + 64);
  v2 = __chkstk_darwin(v84);
  v81 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v80 = &v74 - v4;
  v5 = sub_2CE000();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  v7 = __chkstk_darwin(v5);
  v90 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v74 - v9;
  v78 = sub_2C9900();
  v77 = *(v78 - 1);
  v10 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34D658, &qword_2D1530);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v75 = (&v74 - v14);
  v15 = sub_20410(&qword_34D660, &qword_2D1538);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v74 = &v74 - v17;
  v18 = sub_20410(&qword_34D668, &qword_2D1540);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v74 - v20;
  v89 = sub_2CAFE0();
  v91 = *(v89 - 8);
  v22 = v91[8];
  v23 = __chkstk_darwin(v89);
  v87 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v74 - v25;
  sub_20410(&qword_34D670, &qword_2D1548);
  v27 = swift_allocObject();
  v92 = xmmword_2D0090;
  *(v27 + 16) = xmmword_2D0090;
  v28 = swift_allocObject();
  *(v28 + 16) = v92;
  v29 = swift_allocObject();
  *(v29 + 16) = v92;
  v30 = swift_allocObject();
  *(v30 + 16) = v92;
  v31 = swift_allocObject();
  *(v31 + 16) = v92;
  sub_2CABB0();
  v32 = enum case for TerminalElement.Value.semantic(_:);
  v33 = sub_2CABD0();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v21, v32, v33);
  (*(v34 + 56))(v21, 0, 1, v33);
  *(v31 + 56) = sub_2CAC70();
  *(v31 + 64) = &protocol witness table for TerminalIntentNode;
  sub_F390((v31 + 32));
  sub_2CAC50();
  v35 = sub_2CACD0();
  *(v30 + 56) = v35;
  *(v30 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v30 + 32));
  sub_2CACC0();
  *(v29 + 56) = v35;
  *(v29 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v29 + 32));
  sub_2CACC0();
  *(v28 + 56) = v35;
  *(v28 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v28 + 32));
  sub_2CACC0();
  *(v27 + 56) = v35;
  *(v27 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v27 + 32));
  sub_2CACC0();
  v95 = v35;
  v96 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v94);
  sub_2CACC0();
  v36 = sub_2CAFB0();
  (*(*(v36 - 8) + 56))(v74, 1, 1, v36);
  v37 = sub_2CACE0();
  (*(*(v37 - 8) + 56))(v75, 1, 1, v37);
  sub_2CAFD0();
  (*(v77 + 104))(v76, enum case for SiriKitConfirmationState.unset(_:), v78);
  v95 = sub_2CCFE0();
  v96 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v94);
  sub_2CCFD0();
  v38 = sub_2CA860();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v79;
  v79 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v42 = v86;
  v43 = sub_3ED0(v86, static Logger.default);
  swift_beginAccess();
  v44 = v85;
  v45 = *(v85 + 16);
  v77 = v43;
  v76 = v45;
  (v45)(v88, v43, v42);
  v46 = v91[2];
  *&v92 = v26;
  v47 = v89;
  v78 = v46;
  (v46)(v87, v26, v89);
  v48 = sub_2CDFE0();
  v49 = sub_2CE670();
  v50 = v44;
  v51 = v47;
  if (os_log_type_enabled(v48, v49))
  {
    v52 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v93 = v75;
    *v52 = 136315138;
    sub_E0318();
    v53 = v87;
    v54 = sub_2CEE70();
    v55 = v47;
    v57 = v56;
    v58 = v91[1];
    v58(v53, v55);
    v59 = sub_3F08(v54, v57, &v93);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_0, v48, v49, "INPlayMediaIntent#toServerConversionParse nlIntent:%s", v52, 0xCu);
    sub_306C(v75);
    v42 = v86;

    v50 = v85;
  }

  else
  {

    v58 = v91[1];
    v58(v87, v51);
  }

  v60 = *(v50 + 8);
  v60(v88, v42);
  (v76)(v90, v77, v42);
  v61 = v41;
  v62 = sub_2CDFE0();
  v63 = sub_2CE670();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    _os_log_impl(&dword_0, v62, v63, "INPlayMediaIntent#toServerConversionParse sirikitIntent:%@", v64, 0xCu);
    sub_212CC(v65);
  }

  v60(v90, v42);
  v67 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v68 = v80;
  v69 = v92;
  v70 = v89;
  (v78)(v80, v92, v89);
  *&v68[v67] = v79;
  v71 = v82;
  v72 = v84;
  (*(v82 + 104))(v68, enum case for Parse.NLv3IntentPlusServerConversion(_:), v84);
  (*(v71 + 16))(v81, v68, v72);
  sub_2CA7A0();
  (*(v71 + 8))(v68, v72);
  return (v58)(v69, v70);
}

void sub_1BA18C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_1BA200(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = a4;
  v103 = a3;
  v111 = a2;
  v5 = sub_2CAA00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v102 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  __chkstk_darwin(v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C9270();
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = *(v107 + 64);
  v14 = __chkstk_darwin(v12);
  v106 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v105 = &v99 - v16;
  v17 = sub_2C91A0();
  v109 = *(v17 - 8);
  v110 = v17;
  v18 = *(v109 + 64);
  __chkstk_darwin(v17);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2C92A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&qword_34CC90, qword_2D40E0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v99 - v28;
  sub_2CD700();
  sub_2CDA40();
  (*(v6 + 56))(v29, 0, 1, v5);
  v30 = sub_2CD600();
  if (v30)
  {
    v31 = v30;
    sub_2CDB50();
    v32 = sub_2C9280();
    v34 = v33;
    (*(v22 + 8))(v25, v21);
    v104 = v31;
    v35 = sub_62CF4(v31, v32, v34);

    v36 = v113;
    v37 = [v113 backingStore];
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = v38;
      v40 = INIntentSlotValueTransformToMediaSearch();
      [v39 setMediaSearch:v40];
    }

    else
    {
      v40 = v35;
      v35 = v37;
    }

    sub_2CDB10();
    v55 = sub_2C9150();
    v56 = v110;
    v57 = *(v109 + 8);
    v57(v20, v110);
    v58 = [v36 backingStore];
    objc_opt_self();
    v59 = swift_dynamicCastObjCClass();
    if (!v59)
    {
    }

    [v59 setPlayShuffled:v55 & 1];

    sub_2CDB10();
    v60 = v105;
    sub_2C9180();
    v57(v20, v56);
    v62 = v106;
    v61 = v107;
    v63 = v60;
    v64 = v108;
    (*(v107 + 32))(v106, v63, v108);
    v65 = (*(v61 + 88))(v62, v64);
    if (v65 != enum case for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode.all(_:) && v65 != enum case for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode.one(_:))
    {
      (*(v61 + 8))(v62, v64);
    }

    v67 = [v113 backingStore];
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (v68)
    {
      [v68 setPlaybackRepeatMode:INPlaybackRepeatModeGetBackingType()];
    }

    sub_2CDB10();
    v69 = sub_2C9140();
    v57(v20, v56);
    v70 = [v113 backingStore];
    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (!v71)
    {
    }

    [v71 setResumePlayback:v69 & 1];

    sub_2CDB10();
    sub_2C9160();
    v73 = v72;
    v57(v20, v56);
    v74 = v112;
    v66 = v113;
    if (v73 != -1.0)
    {
      v75 = v73;
      v76 = [v113 backingStore];
      objc_opt_self();
      v77 = swift_dynamicCastObjCClass();
      if (!v77)
      {
      }

      [v77 setPlaybackSpeed:v75];
    }

    sub_230064();
    v78 = [v66 backingStore];
    objc_opt_self();
    v79 = swift_dynamicCastObjCClass();
    if (v79)
    {
      [v79 setPlaybackQueueLocation:INPlaybackQueueLocationGetBackingType()];
    }

    v80 = sub_2303EC(a1, v111, 2 * (v74 == 0));
    v81 = [v66 backingStore];
    objc_opt_self();
    v82 = swift_dynamicCastObjCClass();
    if (v82)
    {
      v83 = v82;
      v84 = INIntentSlotValueTransformToPrivatePlayMediaIntentData();
      [v83 setPrivatePlayMediaIntentData:v84];
    }

    else
    {
      v84 = v80;
      v80 = v81;
    }

    if (v74)
    {
      v85 = v74;
      v86 = v103;
    }

    else
    {
      v86 = sub_2CDB80();
      v85 = v87;
    }

    v88 = sub_2CDB60();
    v90 = sub_230B38(v86, v85, v88, v89);

    v91 = [v66 backingStore];
    objc_opt_self();
    v92 = swift_dynamicCastObjCClass();
    if (!v92)
    {
    }

    [v92 setIntentMetadata:v90];

    v93 = sub_2310A0(v104);
    v94 = [v66 backingStore];
    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    if (v95)
    {
      v96 = v95;
      v97 = INIntentSlotValueTransformToMediaItemValue();
      [v96 setMediaContainer:v97];
    }

    else
    {
    }
  }

  else
  {
    v41 = v101;
    v112 = v5;
    v42 = v104;
    v43 = v100;
    v44 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v45 = sub_3ED0(v41, static Logger.default);
    swift_beginAccess();
    v46 = v42;
    (*(v43 + 16))(v42, v45, v41);
    v47 = v44;
    v48 = sub_2CDFE0();
    v49 = sub_2CE680();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v114 = v51;
      *v50 = 136315138;
      sub_2CDA40();
      v52 = sub_2CE2A0();
      v54 = sub_3F08(v52, v53, &v114);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_0, v48, v49, "INPlayMediaIntent#amend unable to construct AudioUsoIntent from userDialogAct: %s", v50, 0xCu);
      sub_306C(v51);

      (*(v43 + 8))(v104, v41);
    }

    else
    {

      (*(v43 + 8))(v46, v41);
    }

    return v113;
  }

  return v66;
}

uint64_t _s21ConfirmIntentStrategyCMa_0()
{
  result = qword_353EB8;
  if (!qword_353EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAD2C()
{
  v1[11] = v0;
  v2 = sub_2CB260();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_2CE000();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v8 = sub_2CDFD0();
  v1[19] = v8;
  v9 = *(v8 - 8);
  v1[20] = v9;
  v10 = *(v9 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1BAEB0, 0, 0);
}

uint64_t sub_1BAEB0()
{
  v50 = v0;
  v1 = *(v0 + 88);
  v47 = v1[4];
  *(v0 + 176) = v47;
  v3 = v1[5];
  v2 = v1[6];
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  v46 = sub_112C0(_swiftEmptyArrayStorage);
  *(v0 + 184) = v46;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 168);
  v5 = qword_35F760;
  *(v0 + 192) = qword_35F760;
  v6 = v5;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v44 = *(v9 + 16);
  v44(v7, v10, v8);

  v11 = sub_2CDFE0();
  v12 = sub_2CE660();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v42 = v14;
  v43 = *(v0 + 144);
  if (v13)
  {
    v16 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_3F08(v3, v2, &v48);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v48);
    _os_log_impl(&dword_0, v11, v12, "CatService#executeDialogResult Evaluating CAT family:%s id:%s...", v16, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v15 + 8);
  v17(v43, v42);
  v18 = *(v0 + 136);
  v19 = *(v0 + 120);
  v48 = v3;
  v49 = v2;

  v52._countAndFlagsBits = 35;
  v52._object = 0xE100000000000000;
  sub_2CE350(v52);
  v53._countAndFlagsBits = 0x45636972656E6547;
  v53._object = 0xEC000000726F7272;
  sub_2CE350(v53);
  v20 = v49;
  *(v0 + 200) = v48;
  *(v0 + 208) = v20;
  v44(v18, v10, v19);
  v21 = sub_2CDFE0();
  v22 = sub_2CE660();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v17;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    sub_2CB180();
    v26 = sub_2CB150();
    if (v26)
    {
      v28 = *(v0 + 104);
      v27 = *(v0 + 112);
      v45 = *(v0 + 96);
      sub_2CB130();

      sub_2CD3C0();

      v29 = sub_2CB200();
      v31 = v30;
      (*(v28 + 8))(v27, v45);
      sub_10C40();
      swift_allocError();
      *v32 = v29;
      v32[1] = v31;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v26;
    }

    else
    {
      v33 = 0;
    }

    *(v24 + 4) = v26;
    *v25 = v33;
    _os_log_impl(&dword_0, v21, v22, "CatService#executeDialogResult is creating dialog with responseMode = %@", v24, 0xCu);
    sub_30B8(v25, &unk_34FC00, &unk_2D0150);

    v17 = v23;
  }

  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);

  v17(v34, v36);
  v37 = swift_task_alloc();
  *(v0 + 216) = v37;
  v37[2] = v47;
  v37[3] = v46;
  v37[4] = 0;
  v37[5] = v0 + 16;
  v38 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v39 = swift_task_alloc();
  *(v0 + 224) = v39;
  v40 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *v39 = v0;
  v39[1] = sub_1BB41C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD000000000000043, 0x80000000002DEB70, sub_1BCEE0, v37, v40);
}

uint64_t sub_1BB41C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_1BB550, 0, 0);
}

uint64_t sub_1BB550()
{
  v1 = v0[10];
  v0[29] = v1;
  if (qword_34C008 != -1)
  {
    swift_once();
  }

  v2 = qword_35F848;
  v0[30] = qword_35F848;
  v3 = v2;
  v4 = sub_3128((v0 + 2));
  v0[31] = v4;
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1BB65C;
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];

  return CatService.executeDialog(for:parameters:bundle:globals:)(v7, v6, v1, v3, v4);
}

uint64_t sub_1BB65C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v5 = *(*v2 + 232);
  v6 = *(*v2 + 208);
  v8 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = a2;

  return _swift_task_switch(sub_1BB79C, 0, 0);
}

uint64_t sub_1BB79C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = *(v0 + 112);

  sub_2CE9D0();
  sub_2CDFA0();
  (*(v5 + 8))(v4, v6);
  sub_30B8(v0 + 16, &qword_34C6C0, &qword_2D0710);

  v10 = *(v0 + 8);
  v11 = *(v0 + 264);

  return v10(v11, v1 & 1);
}

uint64_t sub_1BB8B8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2CB260();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = sub_2CE000();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v10 = sub_2CDFD0();
  v3[21] = v10;
  v11 = *(v10 - 8);
  v3[22] = v11;
  v12 = *(v11 + 64) + 15;
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1BBA40, 0, 0);
}

uint64_t sub_1BBA40()
{
  v52 = v0;
  v1 = *(v0 + 104);
  v2 = v1[4];
  *(v0 + 192) = v2;
  v4 = v1[5];
  v3 = v1[6];
  *(v0 + 16) = 0u;
  v48 = *(v0 + 88);
  v49 = v2;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 184);
  v6 = qword_35F760;
  *(v0 + 200) = qword_35F760;
  v7 = v6;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 160);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v46 = *(v9 + 16);
  v46(v8, v11, v10);

  v12 = sub_2CDFE0();
  v13 = sub_2CE660();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  v45 = *(v0 + 136);
  if (v14)
  {
    v44 = *(v0 + 160);
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_3F08(v4, v3, &v50);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_3F08(0x46746F4E6D657449, 0xEC000000646E756FLL, &v50);
    _os_log_impl(&dword_0, v12, v13, "CatService#executeDialogResult Evaluating CAT family:%s id:%s...", v17, 0x16u);
    swift_arrayDestroy();

    v18 = *(v16 + 8);
    v18(v44, v45);
  }

  else
  {

    v18 = *(v16 + 8);
    v18(v15, v45);
  }

  v19 = *(v0 + 152);
  v20 = *(v0 + 136);
  v50 = v4;
  v51 = v3;

  v54._countAndFlagsBits = 35;
  v54._object = 0xE100000000000000;
  sub_2CE350(v54);
  v55._countAndFlagsBits = 0x46746F4E6D657449;
  v55._object = 0xEC000000646E756FLL;
  sub_2CE350(v55);
  v21 = v51;
  *(v0 + 208) = v50;
  *(v0 + 216) = v21;
  v46(v19, v11, v20);
  v22 = sub_2CDFE0();
  v23 = sub_2CE660();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    sub_2CB180();
    v26 = sub_2CB150();
    if (v26)
    {
      v27 = v18;
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      v47 = *(v0 + 112);
      sub_2CB130();

      sub_2CD3C0();

      v30 = sub_2CB200();
      v32 = v31;
      (*(v29 + 8))(v28, v47);
      v18 = v27;
      sub_10C40();
      swift_allocError();
      *v33 = v30;
      v33[1] = v32;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v26;
    }

    else
    {
      v34 = 0;
    }

    *(v24 + 4) = v26;
    *v25 = v34;
    _os_log_impl(&dword_0, v22, v23, "CatService#executeDialogResult is creating dialog with responseMode = %@", v24, 0xCu);
    sub_30B8(v25, &unk_34FC00, &unk_2D0150);
  }

  v36 = *(v0 + 144);
  v35 = *(v0 + 152);
  v37 = *(v0 + 136);
  v38 = *(v0 + 96);

  v18(v35, v37);
  v39 = swift_task_alloc();
  *(v0 + 224) = v39;
  v39[2] = v49;
  v39[3] = v38;
  v39[4] = v48;
  v39[5] = v0 + 16;
  v40 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v41 = swift_task_alloc();
  *(v0 + 232) = v41;
  v42 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *v41 = v0;
  v41[1] = sub_1BBFB8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD000000000000043, 0x80000000002DEB70, sub_1BCEE0, v39, v42);
}

uint64_t sub_1BBFB8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_1BC0D0, 0, 0);
}

uint64_t sub_1BC0D0()
{
  v1 = v0[10];
  v0[30] = v1;
  if (qword_34C008 != -1)
  {
    swift_once();
  }

  v2 = qword_35F848;
  v0[31] = qword_35F848;
  v3 = v2;
  v4 = sub_3128((v0 + 2));
  v0[32] = v4;
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1BC1DC;
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];

  return CatService.executeDialog(for:parameters:bundle:globals:)(v7, v6, v1, v3, v4);
}

uint64_t sub_1BC1DC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *(*v2 + 240);
  v6 = *(*v2 + 216);
  v8 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_1BCEE4, 0, 0);
}

uint64_t sub_1BC31C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2CB260();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = sub_2CE000();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v10 = sub_2CDFD0();
  v3[21] = v10;
  v11 = *(v10 - 8);
  v3[22] = v11;
  v12 = *(v11 + 64) + 15;
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1BC4A4, 0, 0);
}

uint64_t sub_1BC4A4()
{
  v55 = v0;
  v1 = *(v0 + 104);
  v2 = v1[4];
  *(v0 + 192) = v2;
  v4 = v1[5];
  v3 = v1[6];
  *(v0 + 16) = 0u;
  v51 = *(v0 + 88);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v50 = v4;
  v5 = *(v0 + 184);
  v6 = qword_35F760;
  *(v0 + 200) = qword_35F760;
  v7 = v6;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 160);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v48 = *(v9 + 16);
  v49 = v11;
  v48(v8, v11, v10);

  v12 = sub_2CDFE0();
  v13 = sub_2CE660();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 160);
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  if (v14)
  {
    v46 = v2;
    v18 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v18 = 136315394;
    v45 = v15;
    v19 = v50;
    *(v18 + 4) = sub_3F08(v50, v3, &v53);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_3F08(0xD000000000000010, 0x80000000002DEB50, &v53);
    _os_log_impl(&dword_0, v12, v13, "CatService#executeDialogResult Evaluating CAT family:%s id:%s...", v18, 0x16u);
    swift_arrayDestroy();

    v2 = v46;

    v20 = *(v16 + 8);
    v20(v45, v17);
  }

  else
  {

    v20 = *(v16 + 8);
    v20(v15, v17);
    v19 = v50;
  }

  v21 = *(v0 + 152);
  v22 = *(v0 + 136);
  v53 = v19;
  v54 = v3;

  v57._countAndFlagsBits = 35;
  v57._object = 0xE100000000000000;
  sub_2CE350(v57);
  v58._object = 0x80000000002DEB50;
  v58._countAndFlagsBits = 0xD000000000000010;
  sub_2CE350(v58);
  v23 = v54;
  *(v0 + 208) = v53;
  *(v0 + 216) = v23;
  v48(v21, v49, v22);
  v24 = sub_2CDFE0();
  v25 = sub_2CE660();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    sub_2CB180();
    v28 = sub_2CB150();
    if (v28)
    {
      v30 = *(v0 + 120);
      v29 = *(v0 + 128);
      v52 = *(v0 + 112);
      sub_2CB130();
      v47 = v2;

      sub_2CD3C0();

      v31 = sub_2CB200();
      v33 = v32;
      (*(v30 + 8))(v29, v52);
      sub_10C40();
      swift_allocError();
      *v34 = v31;
      v34[1] = v33;
      v2 = v47;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v35 = v28;
    }

    else
    {
      v35 = 0;
    }

    *(v26 + 4) = v28;
    *v27 = v35;
    _os_log_impl(&dword_0, v24, v25, "CatService#executeDialogResult is creating dialog with responseMode = %@", v26, 0xCu);
    sub_30B8(v27, &unk_34FC00, &unk_2D0150);
  }

  v37 = *(v0 + 144);
  v36 = *(v0 + 152);
  v38 = *(v0 + 136);
  v39 = *(v0 + 96);

  v20(v36, v38);
  v40 = swift_task_alloc();
  *(v0 + 224) = v40;
  v40[2] = v2;
  v40[3] = v39;
  v40[4] = v51;
  v40[5] = v0 + 16;
  v41 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v42 = swift_task_alloc();
  *(v0 + 232) = v42;
  v43 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *v42 = v0;
  v42[1] = sub_1BCA30;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD000000000000043, 0x80000000002DEB70, sub_1BCED4, v40, v43);
}

uint64_t sub_1BCA30()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_1BCB48, 0, 0);
}

uint64_t sub_1BCB48()
{
  v1 = v0[10];
  v0[30] = v1;
  if (qword_34C008 != -1)
  {
    swift_once();
  }

  v2 = qword_35F848;
  v0[31] = qword_35F848;
  v3 = v2;
  v4 = sub_3128((v0 + 2));
  v0[32] = v4;
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1BCC54;
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];

  return CatService.executeDialog(for:parameters:bundle:globals:)(v7, v6, v1, v3, v4);
}

uint64_t sub_1BCC54(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *(*v2 + 240);
  v6 = *(*v2 + 216);
  v8 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_1BCD94, 0, 0);
}

uint64_t sub_1BCD94()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = *(v0 + 128);

  sub_2CE9D0();
  sub_2CDFA0();
  (*(v5 + 8))(v4, v6);
  sub_30B8(v0 + 16, &qword_34C6C0, &qword_2D0710);

  v10 = *(v0 + 8);
  v11 = *(v0 + 272);

  return v10(v11, v1 & 1);
}

BOOL sub_1BCEE8()
{
  v0 = *(sub_2CDE80() + 16);

  if (v0)
  {
    return 1;
  }

  sub_2CDE50();
  if (v2)
  {

    return 1;
  }

  else
  {
    v3 = *(sub_2CDE90() + 16);

    if (v3)
    {
      return 1;
    }

    v4 = *(sub_2CDEE0() + 16);

    if (v4)
    {
      return 1;
    }

    v5 = *(sub_2CDEC0() + 16);

    if (v5)
    {
      return 1;
    }

    v6 = *(sub_2CDED0() + 16);

    if (v6)
    {
      return 1;
    }

    v7 = *(sub_2CDEB0() + 16);

    return v7 != 0;
  }
}

uint64_t sub_1BCFC8(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v4 = sub_2CE000();
  v101 = *(v4 - 8);
  v102 = v4;
  v5 = *(v101 + 64);
  __chkstk_darwin(v4);
  v100 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2CDF70();
  v93 = *(v90 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin(v90);
  v85 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_20410(&qword_354158, &unk_2D6BC0);
  v9 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v94 = &v85 - v10;
  v11 = sub_20410(&qword_34DA18, &qword_2D18F8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v87 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v91 = &v85 - v16;
  __chkstk_darwin(v15);
  v92 = &v85 - v17;
  v98 = sub_20410(&qword_34DA20, &qword_2D1900);
  v95 = *(v98 - 8);
  v18 = *(v95 + 64);
  v19 = __chkstk_darwin(v98);
  v97 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v88 = &v85 - v21;
  v22 = sub_2CDDD0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v86 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&qword_354160, &unk_2D6BB0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = &v85 - v29;
  v31 = sub_20410(&qword_34DA28, qword_2D1908);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v96 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v85 - v36;
  __chkstk_darwin(v35);
  v39 = &v85 - v38;
  v103 = v2;
  v99 = a1;
  sub_2CDEF0();
  (*(v23 + 104))(v37, enum case for DeviceQuantifier.all(_:), v22);
  (*(v23 + 56))(v37, 0, 1, v22);
  v40 = *(v27 + 56);
  sub_F3F4(v39, v30, &qword_34DA28, qword_2D1908);
  sub_F3F4(v37, &v30[v40], &qword_34DA28, qword_2D1908);
  v41 = *(v23 + 48);
  if (v41(v30, 1, v22) != 1)
  {
    sub_F3F4(v30, v96, &qword_34DA28, qword_2D1908);
    if (v41(&v30[v40], 1, v22) != 1)
    {
      v42 = &v30[v40];
      v43 = v86;
      (*(v23 + 32))(v86, v42, v22);
      sub_1BE508(&qword_354170, &type metadata accessor for DeviceQuantifier);
      v44 = v96;
      v45 = sub_2CE250();
      v46 = *(v23 + 8);
      v46(v43, v22);
      sub_30B8(v37, &qword_34DA28, qword_2D1908);
      sub_30B8(v39, &qword_34DA28, qword_2D1908);
      v46(v44, v22);
      sub_30B8(v30, &qword_34DA28, qword_2D1908);
      if (v45)
      {
        goto LABEL_9;
      }

LABEL_7:
      LODWORD(v96) = 0;
      goto LABEL_10;
    }

    sub_30B8(v37, &qword_34DA28, qword_2D1908);
    sub_30B8(v39, &qword_34DA28, qword_2D1908);
    (*(v23 + 8))(v96, v22);
LABEL_6:
    sub_30B8(v30, &qword_354160, &unk_2D6BB0);
    goto LABEL_7;
  }

  sub_30B8(v37, &qword_34DA28, qword_2D1908);
  sub_30B8(v39, &qword_34DA28, qword_2D1908);
  if (v41(&v30[v40], 1, v22) != 1)
  {
    goto LABEL_6;
  }

  sub_30B8(v30, &qword_34DA28, qword_2D1908);
LABEL_9:
  v47 = v88;
  sub_2CDEA0();
  v48 = sub_2CDD00();
  LODWORD(v96) = (*(*(v48 - 8) + 48))(v47, 1, v48) == 1;
  sub_30B8(v47, &qword_34DA20, &qword_2D1900);
LABEL_10:
  sub_20410(&qword_354150, &qword_2D6298);
  v49 = *(v95 + 72);
  v50 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2D0E40;
  v52 = v51 + v50;
  v53 = enum case for DeviceType.television(_:);
  v54 = sub_2CDD00();
  v55 = *(v54 - 8);
  v56 = *(v55 + 104);
  v56(v52, v53, v54);
  v57 = *(v55 + 56);
  v57(v52, 0, 1, v54);
  v56(v52 + v49, enum case for DeviceType.appleTv(_:), v54);
  v57(v52 + v49, 0, 1, v54);
  v58 = v97;
  sub_2CDEA0();
  v59 = sub_1955C0(v58, v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_30B8(v58, &qword_34DA20, &qword_2D1900);
  v60 = sub_1BCEE8();
  v61 = 0;
  v63 = v101;
  v62 = v102;
  if (!v60)
  {
    goto LABEL_19;
  }

  LODWORD(v104) = v59;
  v64 = v92;
  sub_2CDE60();
  v65 = v93;
  v66 = v90;
  v67 = v91;
  (*(v93 + 104))(v91, enum case for PlaceHint.house(_:), v90);
  (*(v65 + 56))(v67, 0, 1, v66);
  v68 = *(v89 + 48);
  v69 = v94;
  sub_F3F4(v64, v94, &qword_34DA18, &qword_2D18F8);
  sub_F3F4(v67, v69 + v68, &qword_34DA18, &qword_2D18F8);
  v70 = *(v65 + 48);
  if (v70(v69, 1, v66) != 1)
  {
    v71 = v87;
    sub_F3F4(v69, v87, &qword_34DA18, &qword_2D18F8);
    if (v70(v69 + v68, 1, v66) != 1)
    {
      v72 = v93;
      v73 = v69 + v68;
      v74 = v85;
      (*(v93 + 32))(v85, v73, v66);
      sub_1BE508(&qword_354168, &type metadata accessor for PlaceHint);
      v61 = sub_2CE250();
      v75 = *(v72 + 8);
      v75(v74, v66);
      sub_30B8(v91, &qword_34DA18, &qword_2D18F8);
      sub_30B8(v92, &qword_34DA18, &qword_2D18F8);
      v75(v71, v66);
      sub_30B8(v69, &qword_34DA18, &qword_2D18F8);
      goto LABEL_18;
    }

    sub_30B8(v91, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v92, &qword_34DA18, &qword_2D18F8);
    (*(v93 + 8))(v71, v66);
    goto LABEL_16;
  }

  sub_30B8(v67, &qword_34DA18, &qword_2D18F8);
  v69 = v94;
  sub_30B8(v64, &qword_34DA18, &qword_2D18F8);
  if (v70(v69 + v68, 1, v66) != 1)
  {
LABEL_16:
    sub_30B8(v69, &qword_354158, &unk_2D6BC0);
    v61 = 0;
    goto LABEL_18;
  }

  sub_30B8(v69, &qword_34DA18, &qword_2D18F8);
  v61 = 1;
LABEL_18:
  LOBYTE(v59) = v104;
LABEL_19:
  v76 = v96;
  v77 = v96 | v59;
  v78 = v100;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v79 = v77 | v61;
  v80 = sub_3ED0(v62, static Logger.default);
  swift_beginAccess();
  (*(v63 + 16))(v78, v80, v62);
  v81 = sub_2CDFE0();
  v82 = sub_2CE690();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 67109888;
    *(v83 + 4) = v76;
    *(v83 + 8) = 1024;
    *(v83 + 10) = v59 & 1;
    *(v83 + 14) = 1024;
    *(v83 + 16) = v61 & 1;
    *(v83 + 20) = 1024;
    *(v83 + 22) = v79 & 1;
    _os_log_impl(&dword_0, v81, v82, "HomeAutomationEntityProviding#shouldIncludeTVs allDevices: %{BOOL}d, targetsTVs: %{BOOL}d, everywhereInRoom: %{BOOL}d, includeTVs: %{BOOL}d", v83, 0x1Au);
  }

  (*(v63 + 8))(v78, v62);
  return v79 & 1;
}

uint64_t sub_1BDD00(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v16[2] = a2;
  v17 = sub_20410(&qword_34DA20, &qword_2D1900);
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v17);
  v5 = v16 - v4;
  sub_20410(&qword_354150, &qword_2D6298);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2D0E40;
  v9 = v8 + v7;
  v10 = enum case for DeviceType.television(_:);
  v11 = sub_2CDD00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 104);
  v13(v9, v10, v11);
  v14 = *(v12 + 56);
  v14(v9, 0, 1, v11);
  v13(v9 + v6, enum case for DeviceType.appleTv(_:), v11);
  v14(v9 + v6, 0, 1, v11);
  sub_2CDEA0();
  LOBYTE(v11) = sub_1955C0(v5, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_30B8(v5, &qword_34DA20, &qword_2D1900);
  return v11 & 1;
}

BOOL sub_1BDF38()
{
  v0 = sub_20410(&qword_34DA10, &qword_2D18F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v26 - v2;
  v4 = sub_20410(&qword_34DA18, &qword_2D18F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_20410(&qword_34DA28, qword_2D1908);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_20410(&qword_34DA20, &qword_2D1900);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v26 - v14;
  sub_2CDEA0();
  v16 = sub_2CDD00();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  sub_30B8(v15, &qword_34DA20, &qword_2D1900);
  if (v17 != 1 && !sub_1BCEE8())
  {
    sub_2CDEF0();
    v18 = sub_2CDDD0();
    v19 = (*(*(v18 - 8) + 48))(v11, 1, v18);
    sub_30B8(v11, &qword_34DA28, qword_2D1908);
    if (v19 == 1)
    {
      sub_2CDF00();
      if (v20)
      {
      }

      else
      {
        sub_2CDE60();
        v21 = sub_2CDF70();
        v22 = (*(*(v21 - 8) + 48))(v7, 1, v21);
        sub_30B8(v7, &qword_34DA18, &qword_2D18F8);
        if (v22 == 1)
        {
          sub_2CDE70();
          v23 = sub_2CDF80();
          v24 = (*(*(v23 - 8) + 48))(v3, 1, v23) == 1;
          sub_30B8(v3, &qword_34DA10, &qword_2D18F0);
          return v24;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1BE2A4(uint64_t a1, uint64_t a2)
{
  v33 = sub_2CDD50();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDEB0();
  v10 = *(v9 + 16);
  if (v10)
  {
    v29[1] = a1;
    v29[2] = v2;
    v29[3] = a2;
    v35 = _swiftEmptyArrayStorage;
    sub_2DBFC(0, v10, 0);
    v11 = v35;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = *(v12 + 64);
    v29[0] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v31 = *(v12 + 56);
    v32 = v13;
    v30 = (v12 - 8);
    do
    {
      v16 = v33;
      v17 = v12;
      v32(v8, v15, v33);
      v18 = sub_2CDD40();
      v20 = v19;
      (*v30)(v8, v16);
      v35 = v11;
      v22 = v11[2];
      v21 = v11[3];
      if (v22 >= v21 >> 1)
      {
        sub_2DBFC((v21 > 1), v22 + 1, 1);
        v11 = v35;
      }

      v11[2] = v22 + 1;
      v23 = &v11[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v15 += v31;
      --v10;
      v12 = v17;
    }

    while (v10);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v24 = sub_2CDE80();
  v25 = sub_2CDE90();
  v34 = v24;
  sub_80D34(v25);
  v26 = sub_2CDEC0();
  sub_80D34(v26);
  v27 = sub_2CDED0();
  sub_80D34(v27);
  sub_80D34(v11);
  return v34;
}

uint64_t sub_1BE508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE550()
{
  v1 = sub_2C8EC0();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v56 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CB260();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v11 = sub_2CB1D0();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CB350();
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_354178, &unk_2D62A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v52 = &v48 - v25;
  __chkstk_darwin(v24);
  v27 = &v48 - v26;
  if (sub_2CB460())
  {
    v49 = v15;
    v50 = v14;
    v52 = v0;
    v28 = sub_2CCEE0();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_2CCED0();
    sub_2CB140();
    sub_2CB330();

    sub_2CCE30();

    sub_2CB140();
    sub_2CB300();

    sub_2CCDF0();

    sub_2CB140();
    sub_2CB2D0();

    sub_2CCEA0();

    sub_2CB140();
    sub_2CB310();

    sub_2CCE10();

    sub_2CB140();
    sub_2CB2F0();

    sub_2CCDE0();

    sub_2CB140();
    sub_2CB2E0();

    sub_2CCEB0();

    sub_2CB140();
    sub_2CB320();

    sub_2CCE20();

    sub_2CB140();
    sub_2CB280();

    sub_2CCE00();

    sub_2CB140();
    sub_2CB2A0();

    sub_2CCE80();

    sub_2CB140();
    sub_2CB290();

    sub_2CCE70();

    v31 = sub_2CB120();
    [v31 isEyesFree];

    sub_2CCE40();

    sub_2CB140();
    sub_2CB2B0();

    sub_2CCE90();

    sub_2CB140();
    v32 = sub_2CB330();

    if ((v32 & 1) == 0)
    {
      v48 = v23;
      sub_2CB130();
      sub_2CD3C0();

      sub_2CB250();
      v41 = sub_2CB230();
      v42 = *(v51 + 8);
      v42(v8, v4);
      v42(v10, v4);
      if ((v41 & 1) == 0)
      {
        sub_2CB130();
        sub_2CD3C0();

        sub_2CB220();
        sub_2CB230();
        v42(v8, v4);
        v42(v10, v4);
      }

      v23 = v48;
    }

    sub_2CCEC0();

    sub_2CB130();
    sub_2CD3E0();

    sub_2CB340();
    (*(v53 + 8))(v18, v49);
    sub_2CCD90();
    v43 = sub_2CCDA0();
    v44 = *(*(v43 - 8) + 56);
    v44(v27, 0, 1, v43);
    sub_2CCE60();

    sub_1BF4B8(v27);
    sub_2CB130();
    v45 = v50;
    sub_2CD3A0();

    sub_2CB1C0();
    (*(v54 + 8))(v45, v55);
    sub_2CCD90();
    v44(v27, 0, 1, v43);
    sub_2CCE50();

    sub_1BF4B8(v27);
    sub_2CB5C0();
    sub_2CCD90();
    v44(v23, 0, 1, v43);
    sub_2CCDB0();

    sub_1BF4B8(v23);
    sub_1BF520();
    sub_2CCD90();
    v44(v27, 0, 1, v43);
    sub_2CCDD0();

    sub_1BF4B8(v27);
    sub_2CB140();
    v46 = v56;
    sub_2CB270();

    sub_2C8EA0();
    (*(v57 + 8))(v46, v58);
    sub_2CCD90();
    v44(v27, 0, 1, v43);
    sub_2CCDC0();

    sub_1BF4B8(v27);
    v40 = sub_2CCEF0();
  }

  else
  {
    sub_2CA880();
    v33 = sub_2CCEE0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_2CCED0();
    sub_35E0(v59, v60);
    sub_2C9B00();
    sub_2CCE30();

    sub_35E0(v59, v60);
    sub_2C9AD0();
    sub_2CCDF0();

    sub_35E0(v59, v60);
    sub_2C9AA0();
    sub_2CCEA0();

    sub_35E0(v59, v60);
    sub_2C9AE0();
    sub_2CCE10();

    sub_35E0(v59, v60);
    sub_2C9AC0();
    sub_2CCDE0();

    sub_35E0(v59, v60);
    sub_2C9AB0();
    sub_2CCEB0();

    sub_35E0(v59, v60);
    sub_2C9AF0();
    sub_2CCE20();

    sub_35E0(v59, v60);
    sub_2C9A50();
    sub_2CCE00();

    sub_35E0(v59, v60);
    sub_2C9A80();
    sub_2CCE80();

    sub_35E0(v59, v60);
    sub_2C9A70();
    sub_2CCE70();

    sub_35E0(v59, v60);
    sub_2C9A20();
    sub_2CCE40();

    sub_35E0(v59, v60);
    sub_2C9A90();
    sub_2CCE90();

    sub_35E0(v59, v60);
    sub_2C9B10();
    sub_2CCEC0();

    sub_35E0(v59, v60);
    sub_2C9A60();
    sub_2CB340();
    (*(v53 + 8))(v18, v15);
    sub_2CCD90();
    v36 = sub_2CCDA0();
    v37 = *(*(v36 - 8) + 56);
    v37(v27, 0, 1, v36);
    sub_2CCE60();

    sub_1BF4B8(v27);
    sub_35E0(v59, v60);
    sub_2C9A40();
    sub_2CB1C0();
    (*(v54 + 8))(v14, v55);
    sub_2CCD90();
    v37(v27, 0, 1, v36);
    sub_2CCE50();

    sub_1BF4B8(v27);
    sub_35E0(v59, v60);
    sub_2C9A10();
    v38 = v52;
    sub_2CCD90();
    v37(v38, 0, 1, v36);
    sub_2CCDB0();

    sub_1BF4B8(v38);
    sub_1BF520();
    sub_2CCD90();
    v37(v27, 0, 1, v36);
    sub_2CCDD0();

    sub_1BF4B8(v27);
    sub_35E0(v59, v60);
    v39 = v56;
    sub_2C9A30();
    sub_2C8EA0();
    (*(v57 + 8))(v39, v58);
    sub_2CCD90();
    v37(v27, 0, 1, v36);
    sub_2CCDC0();

    sub_1BF4B8(v27);
    v40 = sub_2CCEF0();
    sub_306C(v59);
  }

  return v40;
}

uint64_t sub_1BF4B8(uint64_t a1)
{
  v2 = sub_20410(&qword_354178, &unk_2D62A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF520()
{
  if (sub_2CB650())
  {
    return 0x646F70656D6F68;
  }

  if (sub_2CB620())
  {
    return 0x61775F656C707061;
  }

  if (sub_2CB5E0())
  {
    return 6513005;
  }

  if (sub_2CB630())
  {
    return 0x76745F656C707061;
  }

  if (sub_2CB610())
  {
    return 0x656E6F687069;
  }

  if (sub_2CB5F0())
  {
    return 1684107369;
  }

  if (sub_2CB640())
  {
    return 0x79616C705F726163;
  }

  return 0x746375646F7270;
}

uint64_t sub_1BF638(uint64_t a1)
{
  v2 = v1;
  v104 = a1;
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v94 = &v83 - v5;
  v6 = sub_20410(&qword_34CC90, qword_2D40E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v86 = &v83 - v8;
  v9 = sub_2CAA00();
  v87 = *(v9 - 8);
  v10 = *(v87 + 64);
  __chkstk_darwin(v9);
  v85 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CA870();
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  v14 = __chkstk_darwin(v12);
  v92 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v83 - v16;
  v17 = sub_2CA7B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v96 = (&v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v89 = &v83 - v28;
  __chkstk_darwin(v27);
  v30 = (&v83 - v29);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v88 = v9;
  v31 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v32 = *(v23 + 16);
  v99 = v23 + 16;
  v100 = v31;
  v98 = v32;
  v32(v30, v31, v22);
  v33 = *(v18 + 16);
  v91 = v18 + 16;
  v90 = v33;
  v33(v21, v104, v17);
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();
  v103 = v22;
  v36 = v23;
  v37 = v35;
  v38 = os_log_type_enabled(v34, v35);
  v93 = v17;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v97 = v18;
    v41 = v40;
    v105[0] = v40;
    *v39 = 136315138;
    sub_C72E8();
    v95 = v36;
    v42 = sub_2CEE70();
    v84 = v12;
    v43 = v2;
    v45 = v44;
    (*(v97 + 8))(v21, v17);
    v46 = sub_3F08(v42, v45, v105);
    v2 = v43;
    v12 = v84;

    *(v39 + 4) = v46;
    _os_log_impl(&dword_0, v34, v37, "DirectActionAudioSearchFlowFrame#onInput with input: %s", v39, 0xCu);
    sub_306C(v41);
    v18 = v97;

    v47 = v95;
    v48 = *(v95 + 8);
    v49 = v30;
    v50 = v103;
    v48(v49, v103);
  }

  else
  {

    (*(v18 + 8))(v21, v17);
    v48 = *(v36 + 8);
    v51 = v30;
    v50 = v103;
    v48(v51, v103);
    v47 = v36;
  }

  if (*(v2 + 72) != 1)
  {
    v54 = v96;
    v98(v96, v100, v50);
    v55 = sub_2CDFE0();
    v56 = sub_2CE680();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "DirectActionAudioSearchFlowFrame#on not an audioSearch direct invocation", v57, 2u);
    }

    v48(v54, v50);
    return 0;
  }

  v52 = v102;
  sub_2CA790();
  v53 = v101;
  if ((*(v101 + 88))(v52, v12) != enum case for Parse.directInvocation(_:))
  {
    v95 = v47;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v59 = (v58 + 16);
    *(v58 + 24) = -1;
    v60 = dispatch_group_create();
    dispatch_group_enter(v60);
    v84 = v2;
    v61 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playFlowStrategy);
    v62 = v92;
    sub_2CA790();
    v63 = v60;
    sub_A3148(v62, 0, v61, v58, v63);

    v64 = *(v53 + 8);
    v101 = v53 + 8;
    v64(v62, v12);
    v96 = v63;
    sub_2CE960();
    swift_beginAccess();
    v65 = *(v58 + 24);
    if (v65 != 255 && (v65 & 1) == 0)
    {
      v103 = v58;
      v97 = v18;
      v73 = *v59;
      v74 = *(v84 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent);
      *(v84 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent) = *v59;
      sub_1C0764(v73, v65);
      sub_195158(v73, 0);

      v75 = v92;
      sub_2CA790();
      v76 = v86;
      sub_2CA7E0();
      v64(v75, v12);
      v77 = v87;
      v78 = v88;
      if ((*(v87 + 48))(v76, 1, v88) == 1)
      {

        sub_A4194(v73, v65);
        sub_30B8(v76, &qword_34CC90, qword_2D40E0);
      }

      else
      {
        v79 = v85;
        (*(v77 + 32))(v85, v76, v78);
        sub_2CCC10();
        sub_2CCC00();
        sub_2CCBC0();

        sub_A4194(v73, v65);

        (*(v77 + 8))(v79, v78);
      }

      v2 = v84;
      v18 = v97;
      v64(v102, v12);
      goto LABEL_23;
    }

    v66 = v89;
    v67 = v103;
    v98(v89, v100, v103);
    v68 = sub_2CDFE0();
    v69 = sub_2CE680();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "DirectActionAudioSearchFlowFrame#on received non-directInvocation parse which didn't contain a play media intent. Returning false to give another flow a chance to grab this intent.", v70, 2u);

      v71 = v96;
    }

    else
    {
      v71 = v68;
      v68 = v96;
    }

    v48(v66, v67);

    v64(v102, v12);
    return 0;
  }

  (*(v53 + 8))(v102, v12);
LABEL_23:
  v80 = v93;
  v81 = v94;
  v90(v94, v104, v93);
  (*(v18 + 56))(v81, 0, 1, v80);
  v82 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_input;
  swift_beginAccess();
  sub_A4888(v81, v2 + v82);
  swift_endAccess();
  return 1;
}

uint64_t sub_1C00B8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_2C9EC0();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, v39, qword_34C798, &qword_2D0DA0);
  if (v40)
  {
    v33 = a3;
    v34 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v16, v17, v12);
    swift_errorRetain();
    v18 = sub_2CDFE0();
    v19 = sub_2CE680();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v8;
      v21 = v20;
      v31 = swift_slowAlloc();
      v37 = v31;
      *v21 = 136315138;
      swift_getErrorValue();
      v36[0] = sub_2CEEF0();
      v36[1] = v22;
      v23 = sub_2CE3C0();
      v25 = sub_3F08(v23, v24, &v37);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v18, v19, "DirectActionAudioSearchFlowFrame#execute Could not properly create dialog %s, silently failing...", v21, 0xCu);
      sub_306C(v31);

      v8 = v32;
    }

    (*(v13 + 8))(v16, v12);
    sub_2C9EB0();
    v33(v11);

    return (*(v35 + 8))(v11, v8);
  }

  else
  {
    sub_F338(v39, v38);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_EEAC(Strong + 80, v36);

      sub_35E0(v36, v36[3]);
      v28 = swift_allocObject();
      v28[2] = a2;
      v28[3] = a3;
      v28[4] = a4;

      sub_2CA010();

      sub_306C(v38);
      v29 = v36;
    }

    else
    {
      v29 = v38;
    }

    return sub_306C(v29);
  }
}

void sub_1C0530()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C060C()
{
  result = qword_354320;
  if (!qword_354320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354320);
  }

  return result;
}

uint64_t sub_1C06AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DirectActionAudioSearchFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1C06F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_353020, &unk_2D0970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1C0764(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_195158(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1C077C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v7 = v6;
  v101 = a5;
  v102 = a6;
  v100 = a4;
  v98 = a3;
  v93 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v94 = *(v93 + 64);
  (__chkstk_darwin)();
  v95 = v84 - v10;
  v88 = sub_2CB260();
  v87 = *(v88 - 8);
  v11 = *(v87 + 64);
  (__chkstk_darwin)();
  v86 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = (__chkstk_darwin)();
  v18 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v89 = v84 - v20;
  __chkstk_darwin(v19);
  v22 = v84 - v21;
  v23 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v24 = v23 - 8;
  v90 = *(v23 - 8);
  v25 = *(v90 + 64);
  v26 = __chkstk_darwin(v23);
  v92 = v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v27;
  __chkstk_darwin(v26);
  v29 = v84 - v28;
  v30 = sub_2CA130();
  (*(*(v30 - 8) + 16))(v29, a1, v30);
  v31 = *(v24 + 56);
  v99 = v29;
  *&v29[v31] = a2;
  v32 = qword_34BF58;
  v33 = a2;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v97 = v14[2];
  v97(v22, v34, v13);
  v35 = sub_2CDFE0();
  v36 = sub_2CE690();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v96 = v13;
    v38 = v37;
    v39 = swift_slowAlloc();
    v85 = v18;
    v40 = v39;
    v105[0] = v39;
    *v38 = 136446210;
    v41 = sub_2CCCA0();
    v84[1] = v14 + 2;
    v43 = sub_3F08(v41, v42, v105);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, v35, v36, "SiriAudioOutputProvider#completionViewOutput... %{public}s", v38, 0xCu);
    sub_306C(v40);
    v18 = v85;

    v13 = v96;
  }

  v44 = v14[1];
  v44(v22, v13);
  v45 = v7[6];
  sub_35E0(v7 + 2, v7[5]);
  if (sub_2CC4B0())
  {
    v46 = sub_2CB460();
    v85 = v44;
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      sub_2CB180();
      v47 = sub_2CB170();
    }

    v61 = v89;
    v97(v89, v34, v13);

    v62 = sub_2CDFE0();
    v63 = sub_2CE660();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v96 = v13;
      v66 = v65;
      v105[0] = v65;
      *v64 = 136315138;
      sub_2CB130();
      v67 = v86;
      sub_2CD3C0();

      v68 = v61;
      v69 = sub_2CB200();
      v71 = v70;
      (*(v87 + 8))(v67, v88);
      v72 = sub_3F08(v69, v71, v105);

      *(v64 + 4) = v72;
      _os_log_impl(&dword_0, v62, v63, "SiriAudioOutputProvider#completionViewOutput with responseMode = %s", v64, 0xCu);
      sub_306C(v66);

      v73 = v68;
      v74 = v96;
    }

    else
    {

      v73 = v61;
      v74 = v13;
    }

    (v85)(v73, v74);
    v75 = v95;
    sub_F3F4(v98, v95, &unk_353020, &unk_2D0970);
    v76 = v99;
    v77 = v92;
    sub_F3F4(v99, v92, &qword_34C6E8, &unk_2D0FF0);
    v78 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v79 = (v94 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = (*(v90 + 80) + v80 + 8) & ~*(v90 + 80);
    v82 = swift_allocObject();
    sub_14A58(v75, v82 + v78, &unk_353020, &unk_2D0970);
    *(v82 + v79) = v100;
    *(v82 + v80) = v47;
    sub_14A58(v77, v82 + v81, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v60 = v76;
    v58 = &qword_34C6E8;
    v59 = &unk_2D0FF0;
  }

  else
  {
    v97(v18, v34, v13);
    v48 = sub_2CDFE0();
    v49 = sub_2CE690();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v105[0] = v51;
      *v50 = 136446210;
      v52 = sub_2CCCA0();
      v54 = v18;
      v55 = sub_3F08(v52, v53, v105);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_0, v48, v49, "SiriAudioOutputProvider#completionViewOutput creating completionViewOutput %{public}s", v50, 0xCu);
      sub_306C(v51);

      v44(v54, v13);
    }

    else
    {

      v44(v18, v13);
    }

    sub_2CB5B0();
    v56 = sub_2CA910();
    memset(v103, 0, sizeof(v103));
    v104 = 0;
    v105[3] = v56;
    v105[4] = &protocol witness table for AceOutput;
    sub_F390(v105);
    v57 = v99;
    sub_2C9DC0();
    sub_30B8(v103, &qword_34CC80, &qword_2D1520);
    v106 = 0;
    v101(v105);
    sub_30B8(v57, &qword_34C6E8, &unk_2D0FF0);
    v58 = &unk_34C798;
    v59 = &unk_2D0DA0;
    v60 = v105;
  }

  return sub_30B8(v60, v58, v59);
}

uint64_t sub_1C1174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = sub_2CE000();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = sub_2CA630();
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1C1300, 0, 0);
}

uint64_t sub_1C1300()
{
  v36 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v32 = *(v0 + 64);
  v33 = *(v0 + 48);
  sub_2C9B20();
  v3 = swift_task_alloc();
  *(v3 + 16) = v33;
  *(v3 + 32) = v32;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136446210;
    v16 = sub_2CCCA0();
    v18 = sub_3F08(v16, v17, &v35);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "SiriAudioOutputProvider#completionViewOutput returning completionViewOutput using RF 2.0 %{public}s", v14, 0xCu);
    sub_306C(v15);
  }

  (*(v12 + 8))(v11, v13);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  v21 = *(v0 + 72);
  v22 = sub_2CA080();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v25 = swift_allocObject();
  *(v0 + 160) = v25;
  *(v25 + 16) = xmmword_2D0770;
  sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
  *(v25 + 32) = *(v19 + *(v20 + 48));
  v26 = sub_2CA130();
  (*(*(v26 - 8) + 8))(v19, v26);
  v27 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v34 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v28 = swift_task_alloc();
  *(v0 + 168) = v28;
  *v28 = v0;
  v28[1] = sub_1C1640;
  v29 = *(v0 + 144);
  v30 = *(v0 + 40);

  return v34(v30, v25, v29);
}

uint64_t sub_1C1640()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_1C1774, 0, 0);
}

uint64_t sub_1C1774()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[11];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C181C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v7 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = sub_2CB260();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_F3F4(a2, &v20 - v15, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  if (a3 >> 62)
  {
    if (!sub_2CEDA0())
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
  }

LABEL_5:
  sub_2CA5D0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v21, v10, &qword_34C6E8, &unk_2D0FF0);
  v16 = *&v10[*(v7 + 48)];
  v17 = [v16 catId];

  sub_2CE270();
  sub_2CA590();
  v18 = sub_2CA130();
  (*(*(v18 - 8) + 8))(v10, v18);
  return sub_2CA610();
}

uint64_t sub_1C1AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_1C1C84, 0, 0);
}

uint64_t sub_1C1C84()
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
    _os_log_impl(&dword_0, v9, v10, "SiriAudioOutputProvider#confirmationViewOutput creating confirmationViewOutput using RF 2.0 %{public}s", v15, 0xCu);
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
  v29[1] = sub_1C1FCC;
  v30 = *(v0 + 136);
  v31 = *(v0 + 40);

  return v34(v31, v26, v30);
}

uint64_t sub_1C1FCC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return _swift_task_switch(sub_1C7854, 0, 0);
}

uint64_t sub_1C2100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C2398(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, const char *a6, const char *a7, uint64_t a8, uint64_t a9, const char *a10, void (*a11)(char *, uint64_t))
{
  v106 = a8;
  v98 = a7;
  v99 = a6;
  v12 = v11;
  v113 = a4;
  v114 = a5;
  v111 = a3;
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v103 = *(v15 - 8);
  v104 = *(v103 + 64);
  __chkstk_darwin(v15 - 8);
  v105 = &v93 - v16;
  v97 = sub_2CB260();
  v96 = *(v97 - 8);
  v17 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v93 - v26;
  __chkstk_darwin(v25);
  v29 = &v93 - v28;
  v30 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v31 = v30 - 8;
  v100 = *(v30 - 8);
  v32 = *(v100 + 64);
  v33 = __chkstk_darwin(v30);
  v102 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v34;
  __chkstk_darwin(v33);
  v36 = &v93 - v35;
  v37 = sub_2CA130();
  (*(*(v37 - 8) + 16))(v36, a1, v37);
  v38 = *(v31 + 56);
  v112 = v36;
  *&v36[v38] = a2;
  v39 = qword_34BF58;
  v40 = a2;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v109 = v20[2];
  v110 = (v20 + 2);
  v109(v29, v41, v19);
  v42 = sub_2CDFE0();
  v43 = sub_2CE690();
  v44 = os_log_type_enabled(v42, v43);
  v108 = v27;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v107 = v19;
    v94 = v24;
    v47 = v46;
    v117[0] = v46;
    *v45 = 136446210;
    v48 = sub_2CCCA0();
    v50 = v20;
    v51 = sub_3F08(v48, v49, v117);

    *(v45 + 4) = v51;
    v20 = v50;
    _os_log_impl(&dword_0, v42, v43, v99, v45, 0xCu);
    sub_306C(v47);
    v24 = v94;
    v19 = v107;
  }

  v52 = v20[1];
  v52(v29, v19);
  v53 = v12[6];
  sub_35E0(v12 + 2, v12[5]);
  if (sub_2CC4B0())
  {
    v107 = a9;
    v54 = sub_2CB460();
    if (!v54)
    {
      sub_2CB180();
      v54 = sub_2CB170();
    }

    v55 = v54;
    v56 = v108;
    v109(v108, v41, v19);

    v57 = sub_2CDFE0();
    v58 = sub_2CE660();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v110 = v52;
      v61 = v60;
      v117[0] = v60;
      *v59 = 136315138;
      sub_2CB130();
      v62 = v95;
      sub_2CD3C0();

      v63 = sub_2CB200();
      v65 = v64;
      (*(v96 + 8))(v62, v97);
      v66 = sub_3F08(v63, v65, v117);

      *(v59 + 4) = v66;
      _os_log_impl(&dword_0, v57, v58, v98, v59, 0xCu);
      sub_306C(v61);

      v110(v108, v19);
    }

    else
    {

      v52(v56, v19);
    }

    v78 = v105;
    sub_F3F4(v111, v105, &unk_353020, &unk_2D0970);
    v79 = v112;
    v80 = v102;
    sub_F3F4(v112, v102, &qword_34C6E8, &unk_2D0FF0);
    v81 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v82 = (v104 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (*(v100 + 80) + v82 + 8) & ~*(v100 + 80);
    v84 = swift_allocObject();
    sub_14A58(v78, v84 + v81, &unk_353020, &unk_2D0970);
    *(v84 + v82) = v55;
    sub_14A58(v80, v84 + v83, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v85 = v79;
    v86 = &qword_34C6E8;
    v87 = &unk_2D0FF0;
  }

  else
  {
    v67 = a11;
    v109(v24, v41, v19);
    v68 = sub_2CDFE0();
    v69 = sub_2CE690();
    if (os_log_type_enabled(v68, v69))
    {
      v110 = a11;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v107 = v19;
      v72 = v24;
      v73 = v71;
      v117[0] = v71;
      *v70 = 136446210;
      v74 = sub_2CCCA0();
      v76 = v52;
      v77 = sub_3F08(v74, v75, v117);

      *(v70 + 4) = v77;
      v67 = v110;
      _os_log_impl(&dword_0, v68, v69, a10, v70, 0xCu);
      sub_306C(v73);

      v76(v72, v107);
    }

    else
    {

      v52(v24, v19);
    }

    v88 = sub_2CB5B0();
    v89 = sub_2CA910();
    memset(v115, 0, sizeof(v115));
    v116 = 0;
    v117[3] = v89;
    v117[4] = &protocol witness table for AceOutput;
    sub_F390(v117);
    v90 = v88 & 1;
    v91 = v112;
    (v67)(v112, v90, _swiftEmptyArrayStorage, 1, 1, v111, _swiftEmptyArrayStorage, v115);
    sub_30B8(v115, &qword_34CC80, &qword_2D1520);
    v118 = 0;
    v113(v117);
    sub_30B8(v91, &qword_34C6E8, &unk_2D0FF0);
    v86 = qword_34C798;
    v87 = &qword_2D0DA0;
    v85 = v117;
  }

  return sub_30B8(v85, v86, v87);
}

uint64_t sub_1C2D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_1C2F10, 0, 0);
}

uint64_t sub_1C2F10()
{
  v36 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v33 = *(v0 + 48);
  sub_2C9B60();
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
    _os_log_impl(&dword_0, v9, v10, "SiriAudioOutputProvider#summaryViewOutput creating summaryViewOutput using RF 2.0 %{public}s", v15, 0xCu);
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

uint64_t sub_1C3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C3480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v7 = v6;
  v102 = a5;
  v103 = a6;
  v98 = a4;
  v100 = a3;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v95 = *(v10 - 8);
  v96 = *(v95 + 64);
  __chkstk_darwin(v10 - 8);
  v97 = &v84 - v11;
  v90 = sub_2CB260();
  v89 = *(v90 - 8);
  v12 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v91 = &v84 - v21;
  __chkstk_darwin(v20);
  v23 = &v84 - v22;
  v24 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v25 = v24 - 8;
  v92 = *(v24 - 8);
  v26 = *(v92 + 64);
  v27 = __chkstk_darwin(v24);
  v94 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v28;
  __chkstk_darwin(v27);
  v30 = &v84 - v29;
  v31 = sub_2CA130();
  (*(*(v31 - 8) + 16))(v30, a1, v31);
  v32 = *(v25 + 56);
  v101 = v30;
  *&v30[v32] = a2;
  v33 = qword_34BF58;
  v34 = a2;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v99 = v15[2];
  v99(v23, v35, v14);
  v36 = sub_2CDFE0();
  v37 = sub_2CE690();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v85 = v7;
    v39 = v38;
    v40 = swift_slowAlloc();
    v86 = v14;
    v41 = v40;
    v106[0] = v40;
    *v39 = 136446210;
    v42 = sub_2CCCA0();
    v84 = v15 + 2;
    v44 = sub_3F08(v42, v43, v106);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_0, v36, v37, "SiriAudioOutputProvider#errorOutput... %{public}s", v39, 0xCu);
    sub_306C(v41);
    v14 = v86;

    v7 = v85;
  }

  v45 = v15[1];
  v45(v23, v14);
  v46 = v7[6];
  sub_35E0(v7 + 2, v7[5]);
  if (sub_2CC4B0())
  {
    v47 = sub_2CB460();
    v87 = v15;
    v86 = v45;
    if (!v47)
    {
      sub_2CB180();
      v47 = sub_2CB170();
    }

    v48 = v47;
    v49 = v91;
    v99(v91, v35, v14);

    v50 = sub_2CDFE0();
    v51 = sub_2CE660();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v106[0] = v53;
      *v52 = 136315138;
      sub_2CB130();
      v54 = v88;
      sub_2CD3C0();

      v55 = v49;
      v56 = sub_2CB200();
      v58 = v57;
      (*(v89 + 8))(v54, v90);
      v59 = sub_3F08(v56, v58, v106);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_0, v50, v51, "SiriAudioOutputProvider#errorOutput with responseMode = %s", v52, 0xCu);
      sub_306C(v53);

      v60 = v55;
    }

    else
    {

      v60 = v49;
    }

    v86(v60, v14);
    v70 = v97;
    sub_F3F4(v100, v97, &unk_353020, &unk_2D0970);
    v71 = v101;
    v72 = v94;
    sub_F3F4(v101, v94, &qword_34C6E8, &unk_2D0FF0);
    v73 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v74 = (v96 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v92 + 80) + v75 + 8) & ~*(v92 + 80);
    v77 = swift_allocObject();
    sub_14A58(v70, v77 + v73, &unk_353020, &unk_2D0970);
    *(v77 + v74) = v98;
    *(v77 + v75) = v48;
    sub_14A58(v72, v77 + v76, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v78 = v71;
    v79 = &qword_34C6E8;
    v80 = &unk_2D0FF0;
  }

  else
  {
    v99(v19, v35, v14);
    v61 = sub_2CDFE0();
    v62 = v19;
    v63 = sub_2CE690();
    if (os_log_type_enabled(v61, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v106[0] = v65;
      *v64 = 136446210;
      v66 = sub_2CCCA0();
      v68 = v45;
      v69 = sub_3F08(v66, v67, v106);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_0, v61, v63, "SiriAudioOutputProvider#errorOutput creating errorOutput %{public}s", v64, 0xCu);
      sub_306C(v65);

      v68(v62, v14);
    }

    else
    {

      v45(v62, v14);
    }

    sub_2CB5B0();
    v81 = sub_2CA910();
    memset(v104, 0, sizeof(v104));
    v105 = 0;
    v106[3] = v81;
    v106[4] = &protocol witness table for AceOutput;
    sub_F390(v106);
    v82 = v101;
    sub_2C9E40();
    sub_30B8(v104, &qword_34CC80, &qword_2D1520);
    v107 = 0;
    v102(v106);
    sub_30B8(v82, &qword_34C6E8, &unk_2D0FF0);
    v79 = qword_34C798;
    v80 = &qword_2D0DA0;
    v78 = v106;
  }

  return sub_30B8(v78, v79, v80);
}

uint64_t sub_1C3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = sub_2CE000();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = sub_2CA630();
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1C4000, 0, 0);
}

uint64_t sub_1C4000()
{
  v36 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v32 = *(v0 + 64);
  v33 = *(v0 + 48);
  sub_2C9B50();
  v3 = swift_task_alloc();
  *(v3 + 16) = v33;
  *(v3 + 32) = v32;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136446210;
    v16 = sub_2CCCA0();
    v18 = sub_3F08(v16, v17, &v35);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "SiriAudioOutputProvider#errorOutput returning errorOutput using RF 2.0 %{public}s", v14, 0xCu);
    sub_306C(v15);
  }

  (*(v12 + 8))(v11, v13);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  v21 = *(v0 + 72);
  v22 = sub_2CA080();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v25 = swift_allocObject();
  *(v0 + 160) = v25;
  *(v25 + 16) = xmmword_2D0770;
  sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
  *(v25 + 32) = *(v19 + *(v20 + 48));
  v26 = sub_2CA130();
  (*(*(v26 - 8) + 8))(v19, v26);
  v27 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v34 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v28 = swift_task_alloc();
  *(v0 + 168) = v28;
  *v28 = v0;
  v28[1] = sub_1C4340;
  v29 = *(v0 + 144);
  v30 = *(v0 + 40);

  return v34(v30, v25, v29);
}

uint64_t sub_1C4340()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_1C7858, 0, 0);
}

uint64_t sub_1C4474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
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

  sub_2CA5D0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v21, v10, &qword_34C6E8, &unk_2D0FF0);
  v16 = *&v10[*(v7 + 56)];
  v17 = [v16 catId];

  sub_2CE270();
  sub_2CA590();
  v18 = sub_2CA130();
  return (*(*(v18 - 8) + 8))(v10, v18);
}

uint64_t sub_1C46A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_2CA630();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_2CE000();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1C4830, 0, 0);
}

uint64_t sub_1C4830()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE690();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "SiriAudioOutputProvider#cancelOutput returning cancel output using RF 2.0", v7, 2u);
  }

  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v27 = v0[8];
  v15 = v0[6];

  (*(v9 + 8))(v8, v10);
  sub_2C9B70();
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_2CA560();

  v17 = sub_2CA080();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[17] = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v20 = swift_allocObject();
  v0[18] = v20;
  *(v20 + 16) = xmmword_2D0770;
  sub_F3F4(v14, v12, &qword_34C6E8, &unk_2D0FF0);
  *(v20 + 32) = *(v12 + *(v27 + 48));
  v21 = sub_2CA130();
  (*(*(v21 - 8) + 8))(v12, v21);
  v22 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v28 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = sub_1C4B14;
  v24 = v0[13];
  v25 = v0[5];

  return v28(v25, v20, v24);
}

uint64_t sub_1C4B14()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return _swift_task_switch(sub_1C4C48, 0, 0);
}

uint64_t sub_1C4C48()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = sub_2CB260();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a3, v8, &qword_34C6E8, &unk_2D0FF0);
  v11 = *&v8[*(v5 + 56)];
  v12 = [v11 catId];

  sub_2CE270();
  sub_2CA590();
  v13 = sub_2CA130();
  return (*(*(v13 - 8) + 8))(v8, v13);
}

uint64_t sub_1C4F40(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t))
{
  v74 = a6;
  v75 = a7;
  v73 = a5;
  v76 = a3;
  v68 = sub_2CB260();
  v67 = *(v68 - 8);
  v12 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v72 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v66 - v20;
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v24 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v25 = v24 - 8;
  v69 = *(v24 - 8);
  v26 = *(v69 + 64);
  v27 = __chkstk_darwin(v24);
  v71 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v28;
  __chkstk_darwin(v27);
  v30 = &v66 - v29;
  v31 = sub_2CA130();
  (*(*(v31 - 8) + 16))(v30, a1, v31);
  v32 = *(v25 + 56);
  v78 = v30;
  v79 = a4;
  *&v30[v32] = a2;
  v33 = qword_34BF58;

  v34 = a2;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v36 = v15[2];
  v36(v23, v35, v14);
  v37 = sub_2CDFE0();
  v38 = sub_2CE690();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v77 = v36;
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "SiriAudioOutputProvider#errorOutput...", v39, 2u);
    v36 = v77;
  }

  v40 = v15[1];
  v77 = (v15 + 1);
  v40(v23, v14);
  v41 = *(v76 + 6);
  sub_35E0(v76 + 2, *(v76 + 5));
  if (sub_2CC4B0())
  {
    v42 = sub_2CB460();
    if (!v42)
    {
      sub_2CB180();
      v42 = sub_2CB170();
    }

    v43 = v42;
    v44 = v72;
    v36(v72, v35, v14);
    v45 = v44;

    v46 = sub_2CDFE0();
    v47 = sub_2CE660();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76 = v40;
      v50 = v49;
      v82[0] = v49;
      *v48 = 136315138;
      sub_2CB130();
      v51 = v66;
      sub_2CD3C0();

      v52 = sub_2CB200();
      v54 = v53;
      (*(v67 + 8))(v51, v68);
      v55 = sub_3F08(v52, v54, v82);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_0, v46, v47, "SiriAudioOutputProvider#cancelOutput with responseMode = %s", v48, 0xCu);
      sub_306C(v50);

      v76(v45, v14);
    }

    else
    {

      v40(v44, v14);
    }

    v61 = v78;
    v62 = v71;
    sub_F3F4(v78, v71, &qword_34C6E8, &unk_2D0FF0);
    v63 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v43;
    sub_14A58(v62, v64 + v63, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    sub_30B8(v61, &qword_34C6E8, &unk_2D0FF0);
  }

  else
  {
    v36(v21, v35, v14);
    v56 = sub_2CDFE0();
    v57 = sub_2CE690();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "SiriAudioOutputProvider#cancelOutput creating cancel output", v58, 2u);
    }

    v40(v21, v14);
    sub_2CB5B0();
    v59 = sub_2CA910();
    memset(v80, 0, sizeof(v80));
    v81 = 0;
    v82[3] = v59;
    v82[4] = &protocol witness table for AceOutput;
    sub_F390(v82);
    v60 = v78;
    sub_2C9DD0();
    sub_30B8(v80, &qword_34CC80, &qword_2D1520);
    v83 = 0;
    a8(v82, v79);
    sub_30B8(v60, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v82, qword_34C798, &qword_2D0DA0);
  }
}

uint64_t sub_1C576C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_1C3E74(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_1C5950(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, char *a10, void *a11)
{
  v101 = a5;
  v97 = a4;
  v103 = a3;
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v94 = *(v15 - 8);
  v95 = *(v94 + 64);
  __chkstk_darwin(v15 - 8);
  v96 = &v85 - v16;
  v89 = sub_2CB260();
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v99 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v98 = &v85 - v25;
  __chkstk_darwin(v24);
  v27 = &v85 - v26;
  v28 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v29 = v28 - 8;
  v90 = *(v28 - 8);
  v30 = *(v90 + 64);
  v31 = __chkstk_darwin(v28);
  v92 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v32;
  __chkstk_darwin(v31);
  v34 = &v85 - v33;
  v35 = swift_allocObject();
  *(v35 + 16) = a6;
  *(v35 + 24) = a7;
  v104 = v35;
  v36 = sub_2CA130();
  (*(*(v36 - 8) + 16))(v34, a1, v36);
  v37 = *(v29 + 56);
  v102 = v34;
  *&v34[v37] = a2;
  v38 = qword_34BF58;
  v93 = a7;

  v39 = a2;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v100 = v20[2];
  v100(v27, v40, v19);
  v41 = sub_2CDFE0();
  v42 = sub_2CE690();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v107[0] = v44;
    *v43 = 136446210;
    v45 = sub_2CCCA0();
    v85 = v27;
    v86 = (v20 + 2);
    v47 = a6;
    v48 = sub_3F08(v45, v46, v107);

    *(v43 + 4) = v48;
    a6 = v47;
    _os_log_impl(&dword_0, v41, v42, "SiriAudioOutputProvider#errorOutput... %{public}s", v43, 0xCu);
    sub_306C(v44);

    v49 = v20[1];
    v49(v85, v19);
  }

  else
  {

    v49 = v20[1];
    v49(v27, v19);
  }

  v50 = v101[6];
  sub_35E0(v101 + 2, v101[5]);
  if (sub_2CC4B0())
  {
    v51 = v19;
    v101 = a11;
    v98 = a10;
    v93 = a9;
    v52 = sub_2CB460();
    v86 = v49;
    if (!v52)
    {
      sub_2CB180();
      v52 = sub_2CB170();
    }

    v53 = v52;
    v54 = v99;
    v100(v99, v40, v51);

    v55 = sub_2CDFE0();
    v56 = sub_2CE660();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v107[0] = v58;
      *v57 = 136315138;
      sub_2CB130();
      v59 = v87;
      sub_2CD3C0();

      v60 = sub_2CB200();
      v62 = v61;
      (*(v88 + 8))(v59, v89);
      v63 = sub_3F08(v60, v62, v107);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_0, v55, v56, "SiriAudioOutputProvider#errorOutput with responseMode = %s", v57, 0xCu);
      sub_306C(v58);

      v64 = v99;
    }

    else
    {

      v64 = v54;
    }

    v86(v64, v51);
    v74 = v96;
    sub_F3F4(v103, v96, &unk_353020, &unk_2D0970);
    v75 = v102;
    v76 = v92;
    sub_F3F4(v102, v92, &qword_34C6E8, &unk_2D0FF0);
    v77 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v78 = (v95 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = (*(v90 + 80) + v79 + 8) & ~*(v90 + 80);
    v81 = swift_allocObject();
    sub_14A58(v74, v81 + v77, &unk_353020, &unk_2D0970);
    *(v81 + v78) = v97;
    *(v81 + v79) = v53;
    sub_14A58(v76, v81 + v80, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    sub_30B8(v75, &qword_34C6E8, &unk_2D0FF0);
  }

  else
  {
    v65 = v98;
    v100(v98, v40, v19);
    v66 = sub_2CDFE0();
    v67 = sub_2CE690();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v107[0] = v69;
      *v68 = 136446210;
      v70 = sub_2CCCA0();
      v72 = v49;
      v73 = sub_3F08(v70, v71, v107);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_0, v66, v67, "SiriAudioOutputProvider#errorOutput creating errorOutput %{public}s", v68, 0xCu);
      sub_306C(v69);

      v72(v98, v19);
    }

    else
    {

      v49(v65, v19);
    }

    sub_2CB5B0();
    v82 = sub_2CA910();
    memset(v105, 0, sizeof(v105));
    v106 = 0;
    v107[3] = v82;
    v107[4] = &protocol witness table for AceOutput;
    sub_F390(v107);
    v83 = v102;
    sub_2C9E40();
    sub_30B8(v105, &qword_34CC80, &qword_2D1520);
    v108 = 0;
    a6(v107);
    sub_30B8(v83, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v107, qword_34C798, &qword_2D0DA0);
  }
}

uint64_t sub_1C6398(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_E664;

  return sub_1C2D88(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1C6514()
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
  v10 = (v9 + v5 + 8) & ~v5;
  v11 = *(v0 + v9);

  v12 = sub_2CA130();
  (*(*(v12 - 8) + 8))(v0 + v10, v12);

  return _swift_deallocObject(v0, v10 + v6);
}

uint64_t sub_1C6704(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24C84;

  return sub_1C1AFC(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1C6880(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_1C1174(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_1C6A14(uint64_t a1)
{
  v4 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24C84;

  return sub_1C46A8(a1, v6, v1 + v5);
}

uint64_t sub_1C6B14()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = sub_2CA130();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1C6C10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), void (*a6)(void), uint64_t a7)
{
  v97 = a5;
  v101 = a4;
  v99 = a3;
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v92 = *(v11 - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(v11 - 8);
  v94 = &v82 - v12;
  v85 = sub_2CB260();
  v84 = *(v85 - 8);
  v13 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v87 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v95 = &v82 - v21;
  __chkstk_darwin(v20);
  v23 = &v82 - v22;
  v24 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v25 = v24 - 8;
  v88 = *(v24 - 8);
  v26 = *(v88 + 64);
  v27 = __chkstk_darwin(v24);
  v90 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v28;
  __chkstk_darwin(v27);
  v30 = &v82 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a6;
  *(v31 + 24) = a7;
  v100 = v31;
  v32 = sub_2CA130();
  (*(*(v32 - 8) + 16))(v30, a1, v32);
  v33 = *(v25 + 56);
  v98 = v30;
  *&v30[v33] = a2;
  v34 = qword_34BF58;
  v91 = a7;

  v35 = a2;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v96 = v16[2];
  v96(v23, v36, v15);
  v37 = sub_2CDFE0();
  v38 = sub_2CE690();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v82 = v16;
    v86 = v15;
    v41 = v40;
    v104[0] = v40;
    *v39 = 136446210;
    v42 = sub_2CCCA0();
    v44 = v36;
    v45 = a6;
    v46 = sub_3F08(v42, v43, v104);

    *(v39 + 4) = v46;
    a6 = v45;
    v36 = v44;
    _os_log_impl(&dword_0, v37, v38, "SiriAudioOutputProvider#completionViewOutput... %{public}s", v39, 0xCu);
    sub_306C(v41);
    v15 = v86;
    v16 = v82;
  }

  v47 = v16[1];
  v47(v23, v15);
  v48 = *(v97 + 6);
  sub_35E0(v97 + 2, *(v97 + 5));
  if (sub_2CC4B0())
  {
    v49 = sub_2CB460();
    if (!v49)
    {
      sub_2CB180();
      v49 = sub_2CB170();
    }

    v50 = v49;
    v51 = v87;
    v96(v87, v36, v15);

    v52 = sub_2CDFE0();
    v53 = sub_2CE660();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v97 = v47;
      v56 = v55;
      v104[0] = v55;
      *v54 = 136315138;
      sub_2CB130();
      v57 = v83;
      sub_2CD3C0();

      v58 = sub_2CB200();
      v86 = v15;
      v60 = v59;
      (*(v84 + 8))(v57, v85);
      v61 = sub_3F08(v58, v60, v104);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_0, v52, v53, "SiriAudioOutputProvider#completionViewOutput with responseMode = %s", v54, 0xCu);
      sub_306C(v56);

      v97(v51, v86);
    }

    else
    {

      v47(v51, v15);
    }

    v71 = v94;
    sub_F3F4(v99, v94, &unk_353020, &unk_2D0970);
    v72 = v98;
    v73 = v90;
    sub_F3F4(v98, v90, &qword_34C6E8, &unk_2D0FF0);
    v74 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v75 = (v93 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = (*(v88 + 80) + v76 + 8) & ~*(v88 + 80);
    v78 = swift_allocObject();
    sub_14A58(v71, v78 + v74, &unk_353020, &unk_2D0970);
    *(v78 + v75) = v101;
    *(v78 + v76) = v50;
    sub_14A58(v73, v78 + v77, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    sub_30B8(v72, &qword_34C6E8, &unk_2D0FF0);
  }

  else
  {
    v62 = v95;
    v96(v95, v36, v15);
    v63 = sub_2CDFE0();
    v64 = sub_2CE690();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v104[0] = v66;
      *v65 = 136446210;
      v67 = sub_2CCCA0();
      v69 = v47;
      v70 = sub_3F08(v67, v68, v104);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_0, v63, v64, "SiriAudioOutputProvider#completionViewOutput creating completionViewOutput %{public}s", v65, 0xCu);
      sub_306C(v66);

      v69(v95, v15);
    }

    else
    {

      v47(v62, v15);
    }

    sub_2CB5B0();
    v79 = sub_2CA910();
    memset(v102, 0, sizeof(v102));
    v103 = 0;
    v104[3] = v79;
    v104[4] = &protocol witness table for AceOutput;
    sub_F390(v104);
    v80 = v98;
    sub_2C9DC0();
    sub_30B8(v102, &qword_34CC80, &qword_2D1520);
    v105 = 0;
    a6(v104);
    sub_30B8(v80, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v104, qword_34C798, &qword_2D0DA0);
  }
}

uint64_t sub_1C7654()
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
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + v5 + 8) & ~v5;
  v12 = *(v0 + v9);

  v13 = *(v0 + v10);

  v14 = sub_2CA130();
  (*(*(v14 - 8) + 8))(v0 + v11, v14);

  return _swift_deallocObject(v0, v11 + v6);
}

uint64_t sub_1C785C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a2;
  v78 = a1;
  v87 = a4;
  v5 = sub_2CDAA0();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v80 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v77 - v10;
  v12 = sub_2CA000();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  __chkstk_darwin(v12);
  v84 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_2CDFE0();
  v22 = sub_2CE670();

  v23 = os_log_type_enabled(v21, v22);
  v83 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v93 = v25;
    *v24 = 136315138;
    v26 = v88;
    *(v24 + 4) = sub_3F08(v88, a3, &v93);
    _os_log_impl(&dword_0, v21, v22, "Making needs value NL context for parameter: %s", v24, 0xCu);
    sub_306C(v25);

    (*(v16 + 8))(v19, v15);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v26 = v88;
  }

  v27 = v84;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v28 = sub_20410(&unk_356F40, &unk_2D0740);
  v29 = swift_allocObject();
  v79 = xmmword_2D0090;
  *(v29 + 16) = xmmword_2D0090;
  v93 = sub_2CE2C0();
  v94 = v30;
  v91 = 32;
  v92 = 0xE100000000000000;
  v89 = 95;
  v90 = 0xE100000000000000;
  v77[2] = sub_B96A0();
  sub_2CEBD0();

  v93 = sub_C3828(1);
  v94 = v31;
  v95._countAndFlagsBits = 0x2E65756C61562ELL;
  v95._object = 0xE700000000000000;
  sub_2CE350(v95);
  v32 = sub_2CE2C0();
  v34 = v33;

  v96._countAndFlagsBits = v32;
  v96._object = v34;
  sub_2CE350(v96);

  v35 = v94;
  *(v29 + 32) = v93;
  *(v29 + 40) = v35;
  sub_2C9F90();
  sub_2C9F50();
  (*(v81 + 104))(v80, enum case for PommesContext.Source.pluginDefined(_:), v82);
  sub_2CDAB0();
  v36 = sub_2CDAC0();
  (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
  sub_2C9F20();
  v37 = v83;
  if (v26 == 0xD000000000000010 && 0x80000000002D9DE0 == v83 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 8;
    goto LABEL_10;
  }

  if (v26 == 0x657449616964656DLL && v37 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    objc_opt_self();
    v46 = v78;
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = [v47 mediaSearch];
      v41 = v85;
    }

    else
    {
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      v41 = v85;
      if (!v49)
      {
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (!v49)
        {
          v49 = v46;
        }
      }

      v48 = [v49 mediaSearch];
    }

    v50 = v48;
    v51 = v50;
    if (v50)
    {
      v52 = [v50 mediaType];
      if (v52 > 2)
      {
        if (v52 == &dword_0 + 3)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 3;
          goto LABEL_40;
        }

        if (v52 == &dword_4 + 1)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 8;
          goto LABEL_40;
        }
      }

      else
      {
        if (v52 == &dword_0 + 1)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 9;
          goto LABEL_40;
        }

        if (v52 == &dword_0 + 2)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 10;
LABEL_40:
          *(v53 + 32) = sub_C3828(v54);
          *(v53 + 40) = v55;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v53 = swift_allocObject();
    *(v53 + 16) = v79;
    v54 = 2;
    goto LABEL_40;
  }

  if (v26 == 0xD000000000000012 && 0x80000000002DA150 == v37 || (sub_2CEEA0() & 1) != 0 || v26 == 0xD000000000000015 && 0x80000000002DA180 == v37 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 11;
  }

  else if (v26 == 0x6B63616279616C70 && v37 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 12;
  }

  else
  {
    if ((v26 != 0x7974696E69666661 || v37 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v77[1] = v28;
      if ((v26 != 0x6675685379616C70 || v37 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v26 != 0x6C50656D75736572 || v37 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v41 = v85;
        v43 = v86;
        (*(v85 + 8))(v27, v86);
        v44 = 1;
        v42 = v87;
        return (*(v41 + 56))(v42, v44, 1, v43);
      }

      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2D10E0;
      v93 = sub_2CE2C0();
      v94 = v57;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;
      sub_2CEBD0();

      v93 = sub_C3828(1);
      v94 = v58;
      v97._countAndFlagsBits = 0x2E65756C61562ELL;
      v97._object = 0xE700000000000000;
      sub_2CE350(v97);
      v59 = sub_2CE2C0();
      v61 = v60;

      v98._countAndFlagsBits = v59;
      v98._object = v61;
      sub_2CE350(v98);

      v62 = v94;
      *(v56 + 32) = v93;
      *(v56 + 40) = v62;
      v93 = sub_2CE2C0();
      v94 = v63;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;
      sub_2CEBD0();

      v93 = sub_C3828(1);
      v94 = v64;
      v99._countAndFlagsBits = 0x2E65756C61562ELL;
      v99._object = 0xE700000000000000;
      sub_2CE350(v99);
      v65 = sub_2CE2C0();
      v67 = v66;

      v100._countAndFlagsBits = v65;
      v100._object = v67;
      sub_2CE350(v100);

      v68 = v94;
      *(v56 + 48) = v93;
      *(v56 + 56) = v68;
      v93 = sub_2CE2C0();
      v94 = v69;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;
      sub_2CEBD0();

      v93 = sub_C3828(1);
      v94 = v70;
      v101._countAndFlagsBits = 0x2E65756C61562ELL;
      v101._object = 0xE700000000000000;
      sub_2CE350(v101);
      v71 = sub_2CE2C0();
      v73 = v72;

      v102._countAndFlagsBits = v71;
      v102._object = v73;
      sub_2CE350(v102);

      v74 = v94;
      *(v56 + 64) = v93;
      *(v56 + 72) = v74;
      sub_2C9F90();
      v75 = swift_allocObject();
      *(v75 + 16) = v79;
      *(v75 + 32) = sub_C3828(1);
      *(v75 + 40) = v76;
      goto LABEL_11;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 13;
  }

LABEL_10:
  *(v38 + 32) = sub_C3828(v39);
  *(v38 + 40) = v40;
LABEL_11:
  sub_2C9FA0();
  v41 = v85;
LABEL_12:
  v43 = v86;
  v42 = v87;
  (*(v41 + 32))(v87, v27, v86);
  v44 = 0;
  return (*(v41 + 56))(v42, v44, 1, v43);
}

uint64_t sub_1C856C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a2;
  v78 = a1;
  v87 = a4;
  v5 = sub_2CDAA0();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v80 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v77 - v10;
  v12 = sub_2CA000();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  __chkstk_darwin(v12);
  v84 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_2CDFE0();
  v22 = sub_2CE670();

  v23 = os_log_type_enabled(v21, v22);
  v83 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v93 = v25;
    *v24 = 136315138;
    v26 = v88;
    *(v24 + 4) = sub_3F08(v88, a3, &v93);
    _os_log_impl(&dword_0, v21, v22, "Making needs value NL context for parameter: %s", v24, 0xCu);
    sub_306C(v25);

    (*(v16 + 8))(v19, v15);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v26 = v88;
  }

  v27 = v84;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v28 = sub_20410(&unk_356F40, &unk_2D0740);
  v29 = swift_allocObject();
  v79 = xmmword_2D0090;
  *(v29 + 16) = xmmword_2D0090;
  v93 = sub_2CE2C0();
  v94 = v30;
  v91 = 32;
  v92 = 0xE100000000000000;
  v89 = 95;
  v90 = 0xE100000000000000;
  v77[2] = sub_B96A0();
  sub_2CEBD0();

  v93 = sub_C3828(1);
  v94 = v31;
  v95._countAndFlagsBits = 0x2E65756C61562ELL;
  v95._object = 0xE700000000000000;
  sub_2CE350(v95);
  v32 = sub_2CE2C0();
  v34 = v33;

  v96._countAndFlagsBits = v32;
  v96._object = v34;
  sub_2CE350(v96);

  v35 = v94;
  *(v29 + 32) = v93;
  *(v29 + 40) = v35;
  sub_2C9F90();
  sub_2C9F50();
  (*(v81 + 104))(v80, enum case for PommesContext.Source.pluginDefined(_:), v82);
  sub_2CDAB0();
  v36 = sub_2CDAC0();
  (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
  sub_2C9F20();
  v37 = v83;
  if (v26 == 0xD000000000000010 && 0x80000000002D9DE0 == v83 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 8;
    goto LABEL_10;
  }

  if (v26 == 0x657449616964656DLL && v37 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    objc_opt_self();
    v46 = v78;
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = [v47 mediaSearch];
      v41 = v85;
    }

    else
    {
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      v41 = v85;
      if (!v49)
      {
        v49 = v46;
      }

      v48 = [v49 mediaSearch];
    }

    v50 = v48;
    v51 = v50;
    if (v50)
    {
      v52 = [v50 mediaType];
      if (v52 > 2)
      {
        if (v52 == &dword_0 + 3)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 3;
          goto LABEL_38;
        }

        if (v52 == &dword_4 + 1)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 8;
          goto LABEL_38;
        }
      }

      else
      {
        if (v52 == &dword_0 + 1)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 9;
          goto LABEL_38;
        }

        if (v52 == &dword_0 + 2)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v79;
          v54 = 10;
LABEL_38:
          *(v53 + 32) = sub_C3828(v54);
          *(v53 + 40) = v55;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v53 = swift_allocObject();
    *(v53 + 16) = v79;
    v54 = 2;
    goto LABEL_38;
  }

  if (v26 == 0xD000000000000012 && 0x80000000002DA150 == v37 || (sub_2CEEA0() & 1) != 0 || v26 == 0xD000000000000015 && 0x80000000002DA180 == v37 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 11;
  }

  else if (v26 == 0x6B63616279616C70 && v37 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 12;
  }

  else
  {
    if ((v26 != 0x7974696E69666661 || v37 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v77[1] = v28;
      if ((v26 != 0x6675685379616C70 || v37 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v26 != 0x6C50656D75736572 || v37 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v41 = v85;
        v43 = v86;
        (*(v85 + 8))(v27, v86);
        v44 = 1;
        v42 = v87;
        return (*(v41 + 56))(v42, v44, 1, v43);
      }

      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2D10E0;
      v93 = sub_2CE2C0();
      v94 = v57;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;
      sub_2CEBD0();

      v93 = sub_C3828(1);
      v94 = v58;
      v97._countAndFlagsBits = 0x2E65756C61562ELL;
      v97._object = 0xE700000000000000;
      sub_2CE350(v97);
      v59 = sub_2CE2C0();
      v61 = v60;

      v98._countAndFlagsBits = v59;
      v98._object = v61;
      sub_2CE350(v98);

      v62 = v94;
      *(v56 + 32) = v93;
      *(v56 + 40) = v62;
      v93 = sub_2CE2C0();
      v94 = v63;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;
      sub_2CEBD0();

      v93 = sub_C3828(1);
      v94 = v64;
      v99._countAndFlagsBits = 0x2E65756C61562ELL;
      v99._object = 0xE700000000000000;
      sub_2CE350(v99);
      v65 = sub_2CE2C0();
      v67 = v66;

      v100._countAndFlagsBits = v65;
      v100._object = v67;
      sub_2CE350(v100);

      v68 = v94;
      *(v56 + 48) = v93;
      *(v56 + 56) = v68;
      v93 = sub_2CE2C0();
      v94 = v69;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 95;
      v90 = 0xE100000000000000;
      sub_2CEBD0();

      v93 = sub_C3828(1);
      v94 = v70;
      v101._countAndFlagsBits = 0x2E65756C61562ELL;
      v101._object = 0xE700000000000000;
      sub_2CE350(v101);
      v71 = sub_2CE2C0();
      v73 = v72;

      v102._countAndFlagsBits = v71;
      v102._object = v73;
      sub_2CE350(v102);

      v74 = v94;
      *(v56 + 64) = v93;
      *(v56 + 72) = v74;
      sub_2C9F90();
      v75 = swift_allocObject();
      *(v75 + 16) = v79;
      *(v75 + 32) = sub_C3828(1);
      *(v75 + 40) = v76;
      goto LABEL_11;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v79;
    v39 = 13;
  }

LABEL_10:
  *(v38 + 32) = sub_C3828(v39);
  *(v38 + 40) = v40;
LABEL_11:
  sub_2C9FA0();
  v41 = v85;
LABEL_12:
  v43 = v86;
  v42 = v87;
  (*(v41 + 32))(v87, v27, v86);
  v44 = 0;
  return (*(v41 + 56))(v42, v44, 1, v43);
}

uint64_t sub_1C9250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v74 = a1;
  v83 = a4;
  v5 = sub_2CDAA0();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  __chkstk_darwin(v5);
  v76 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v73 - v10;
  v12 = sub_2CA000();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  __chkstk_darwin(v12);
  v80 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_2CDFE0();
  v22 = sub_2CE670();

  v23 = os_log_type_enabled(v21, v22);
  v79 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v89 = v25;
    *v24 = 136315138;
    v26 = v84;
    *(v24 + 4) = sub_3F08(v84, a3, &v89);
    _os_log_impl(&dword_0, v21, v22, "Making needs value NL context for parameter: %s", v24, 0xCu);
    sub_306C(v25);

    (*(v16 + 8))(v19, v15);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v26 = v84;
  }

  v27 = v80;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v28 = sub_20410(&unk_356F40, &unk_2D0740);
  v29 = swift_allocObject();
  v75 = xmmword_2D0090;
  *(v29 + 16) = xmmword_2D0090;
  v89 = sub_2CE2C0();
  v90 = v30;
  v87 = 32;
  v88 = 0xE100000000000000;
  v85 = 95;
  v86 = 0xE100000000000000;
  v73[2] = sub_B96A0();
  sub_2CEBD0();

  v89 = sub_C3828(1);
  v90 = v31;
  v91._countAndFlagsBits = 0x2E65756C61562ELL;
  v91._object = 0xE700000000000000;
  sub_2CE350(v91);
  v32 = sub_2CE2C0();
  v34 = v33;

  v92._countAndFlagsBits = v32;
  v92._object = v34;
  sub_2CE350(v92);

  v35 = v90;
  *(v29 + 32) = v89;
  *(v29 + 40) = v35;
  sub_2C9F90();
  sub_2C9F50();
  (*(v77 + 104))(v76, enum case for PommesContext.Source.pluginDefined(_:), v78);
  sub_2CDAB0();
  v36 = sub_2CDAC0();
  (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
  sub_2C9F20();
  v37 = v79;
  if (v26 == 0xD000000000000010 && 0x80000000002D9DE0 == v79 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v75;
    v39 = 8;
    goto LABEL_10;
  }

  if (v26 == 0x657449616964656DLL && v37 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v46 = [v74 mediaSearch];
    v47 = v46;
    v41 = v81;
    if (v46)
    {
      v48 = [v46 mediaType];
      if (v48 > 2)
      {
        if (v48 == &dword_0 + 3)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 3;
          goto LABEL_33;
        }

        if (v48 == &dword_4 + 1)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 8;
          goto LABEL_33;
        }
      }

      else
      {
        if (v48 == &dword_0 + 1)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 9;
          goto LABEL_33;
        }

        if (v48 == &dword_0 + 2)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 10;
LABEL_33:
          *(v49 + 32) = sub_C3828(v50);
          *(v49 + 40) = v51;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v49 = swift_allocObject();
    *(v49 + 16) = v75;
    v50 = 2;
    goto LABEL_33;
  }

  if (v26 == 0xD000000000000012 && 0x80000000002DA150 == v37 || (sub_2CEEA0() & 1) != 0 || v26 == 0xD000000000000015 && 0x80000000002DA180 == v37 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v75;
    v39 = 11;
  }

  else if (v26 == 0x6B63616279616C70 && v37 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v75;
    v39 = 12;
  }

  else
  {
    if ((v26 != 0x7974696E69666661 || v37 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v73[1] = v28;
      if ((v26 != 0x6675685379616C70 || v37 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v26 != 0x6C50656D75736572 || v37 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v41 = v81;
        v43 = v82;
        (*(v81 + 8))(v27, v82);
        v44 = 1;
        v42 = v83;
        return (*(v41 + 56))(v42, v44, 1, v43);
      }

      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2D10E0;
      v89 = sub_2CE2C0();
      v90 = v53;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v54;
      v93._countAndFlagsBits = 0x2E65756C61562ELL;
      v93._object = 0xE700000000000000;
      sub_2CE350(v93);
      v55 = sub_2CE2C0();
      v57 = v56;

      v94._countAndFlagsBits = v55;
      v94._object = v57;
      sub_2CE350(v94);

      v58 = v90;
      *(v52 + 32) = v89;
      *(v52 + 40) = v58;
      v89 = sub_2CE2C0();
      v90 = v59;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v60;
      v95._countAndFlagsBits = 0x2E65756C61562ELL;
      v95._object = 0xE700000000000000;
      sub_2CE350(v95);
      v61 = sub_2CE2C0();
      v63 = v62;

      v96._countAndFlagsBits = v61;
      v96._object = v63;
      sub_2CE350(v96);

      v64 = v90;
      *(v52 + 48) = v89;
      *(v52 + 56) = v64;
      v89 = sub_2CE2C0();
      v90 = v65;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v66;
      v97._countAndFlagsBits = 0x2E65756C61562ELL;
      v97._object = 0xE700000000000000;
      sub_2CE350(v97);
      v67 = sub_2CE2C0();
      v69 = v68;

      v98._countAndFlagsBits = v67;
      v98._object = v69;
      sub_2CE350(v98);

      v70 = v90;
      *(v52 + 64) = v89;
      *(v52 + 72) = v70;
      sub_2C9F90();
      v71 = swift_allocObject();
      *(v71 + 16) = v75;
      *(v71 + 32) = sub_C3828(1);
      *(v71 + 40) = v72;
      goto LABEL_11;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v75;
    v39 = 13;
  }

LABEL_10:
  *(v38 + 32) = sub_C3828(v39);
  *(v38 + 40) = v40;
LABEL_11:
  sub_2C9FA0();
  v41 = v81;
LABEL_12:
  v43 = v82;
  v42 = v83;
  (*(v41 + 32))(v83, v27, v82);
  v44 = 0;
  return (*(v41 + 56))(v42, v44, 1, v43);
}

uint64_t sub_1C9EE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a2;
  v77 = a1;
  v86 = a4;
  v5 = sub_2CDAA0();
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  __chkstk_darwin(v5);
  v79 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v76 - v10;
  v12 = sub_2CA000();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  __chkstk_darwin(v12);
  v83 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_2CDFE0();
  v22 = sub_2CE670();

  v23 = os_log_type_enabled(v21, v22);
  v82 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v92 = v25;
    *v24 = 136315138;
    v26 = v87;
    *(v24 + 4) = sub_3F08(v87, a3, &v92);
    _os_log_impl(&dword_0, v21, v22, "Making needs value NL context for parameter: %s", v24, 0xCu);
    sub_306C(v25);

    (*(v16 + 8))(v19, v15);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v26 = v87;
  }

  v27 = v83;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v28 = sub_20410(&unk_356F40, &unk_2D0740);
  v29 = swift_allocObject();
  v78 = xmmword_2D0090;
  *(v29 + 16) = xmmword_2D0090;
  v92 = sub_2CE2C0();
  v93 = v30;
  v90 = 32;
  v91 = 0xE100000000000000;
  v88 = 95;
  v89 = 0xE100000000000000;
  v76[2] = sub_B96A0();
  sub_2CEBD0();

  v92 = sub_C3828(1);
  v93 = v31;
  v94._countAndFlagsBits = 0x2E65756C61562ELL;
  v94._object = 0xE700000000000000;
  sub_2CE350(v94);
  v32 = sub_2CE2C0();
  v34 = v33;

  v95._countAndFlagsBits = v32;
  v95._object = v34;
  sub_2CE350(v95);

  v35 = v93;
  *(v29 + 32) = v92;
  *(v29 + 40) = v35;
  sub_2C9F90();
  sub_2C9F50();
  (*(v80 + 104))(v79, enum case for PommesContext.Source.pluginDefined(_:), v81);
  sub_2CDAB0();
  v36 = sub_2CDAC0();
  (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
  sub_2C9F20();
  v37 = v82;
  if (v26 == 0xD000000000000010 && 0x80000000002D9DE0 == v82 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v78;
    v39 = 8;
    goto LABEL_10;
  }

  if (v26 == 0x657449616964656DLL && v37 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    objc_opt_self();
    v46 = v77;
    v47 = swift_dynamicCastObjCClass();
    if (!v47)
    {
      v47 = v46;
    }

    v48 = [v47 mediaSearch];
    v41 = v84;
    v49 = v48;
    v50 = v49;
    if (v49)
    {
      v51 = [v49 mediaType];
      if (v51 > 2)
      {
        if (v51 == &dword_0 + 3)
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v78;
          v53 = 3;
          goto LABEL_35;
        }

        if (v51 == &dword_4 + 1)
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v78;
          v53 = 8;
          goto LABEL_35;
        }
      }

      else
      {
        if (v51 == &dword_0 + 1)
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v78;
          v53 = 9;
          goto LABEL_35;
        }

        if (v51 == &dword_0 + 2)
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v78;
          v53 = 10;
LABEL_35:
          *(v52 + 32) = sub_C3828(v53);
          *(v52 + 40) = v54;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v78;
    v53 = 2;
    goto LABEL_35;
  }

  if (v26 == 0xD000000000000012 && 0x80000000002DA150 == v37 || (sub_2CEEA0() & 1) != 0 || v26 == 0xD000000000000015 && 0x80000000002DA180 == v37 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v78;
    v39 = 11;
  }

  else if (v26 == 0x6B63616279616C70 && v37 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v78;
    v39 = 12;
  }

  else
  {
    if ((v26 != 0x7974696E69666661 || v37 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v76[1] = v28;
      if ((v26 != 0x6675685379616C70 || v37 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v26 != 0x6C50656D75736572 || v37 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v41 = v84;
        v43 = v85;
        (*(v84 + 8))(v27, v85);
        v44 = 1;
        v42 = v86;
        return (*(v41 + 56))(v42, v44, 1, v43);
      }

      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_2D10E0;
      v92 = sub_2CE2C0();
      v93 = v56;
      v90 = 32;
      v91 = 0xE100000000000000;
      v88 = 95;
      v89 = 0xE100000000000000;
      sub_2CEBD0();

      v92 = sub_C3828(1);
      v93 = v57;
      v96._countAndFlagsBits = 0x2E65756C61562ELL;
      v96._object = 0xE700000000000000;
      sub_2CE350(v96);
      v58 = sub_2CE2C0();
      v60 = v59;

      v97._countAndFlagsBits = v58;
      v97._object = v60;
      sub_2CE350(v97);

      v61 = v93;
      *(v55 + 32) = v92;
      *(v55 + 40) = v61;
      v92 = sub_2CE2C0();
      v93 = v62;
      v90 = 32;
      v91 = 0xE100000000000000;
      v88 = 95;
      v89 = 0xE100000000000000;
      sub_2CEBD0();

      v92 = sub_C3828(1);
      v93 = v63;
      v98._countAndFlagsBits = 0x2E65756C61562ELL;
      v98._object = 0xE700000000000000;
      sub_2CE350(v98);
      v64 = sub_2CE2C0();
      v66 = v65;

      v99._countAndFlagsBits = v64;
      v99._object = v66;
      sub_2CE350(v99);

      v67 = v93;
      *(v55 + 48) = v92;
      *(v55 + 56) = v67;
      v92 = sub_2CE2C0();
      v93 = v68;
      v90 = 32;
      v91 = 0xE100000000000000;
      v88 = 95;
      v89 = 0xE100000000000000;
      sub_2CEBD0();

      v92 = sub_C3828(1);
      v93 = v69;
      v100._countAndFlagsBits = 0x2E65756C61562ELL;
      v100._object = 0xE700000000000000;
      sub_2CE350(v100);
      v70 = sub_2CE2C0();
      v72 = v71;

      v101._countAndFlagsBits = v70;
      v101._object = v72;
      sub_2CE350(v101);

      v73 = v93;
      *(v55 + 64) = v92;
      *(v55 + 72) = v73;
      sub_2C9F90();
      v74 = swift_allocObject();
      *(v74 + 16) = v78;
      *(v74 + 32) = sub_C3828(1);
      *(v74 + 40) = v75;
      goto LABEL_11;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v78;
    v39 = 13;
  }

LABEL_10:
  *(v38 + 32) = sub_C3828(v39);
  *(v38 + 40) = v40;
LABEL_11:
  sub_2C9FA0();
  v41 = v84;
LABEL_12:
  v43 = v85;
  v42 = v86;
  (*(v41 + 32))(v86, v27, v85);
  v44 = 0;
  return (*(v41 + 56))(v42, v44, 1, v43);
}

uint64_t sub_1CAB90@<X0>(void *a1@<X5>, uint64_t a2@<X8>)
{
  v86 = a2;
  v87 = a1;
  v85 = sub_2CD490();
  v80 = *(v85 - 1);
  v2 = *(v80 + 64);
  __chkstk_darwin(v85);
  v72 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20410(&qword_34CFB0, &unk_2D1000);
  v4 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v84 = &v72 - v5;
  v6 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v78 = &v72 - v11;
  __chkstk_darwin(v10);
  v79 = &v72 - v12;
  v13 = sub_2CA870();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v75 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v76 = &v72 - v26;
  v27 = __chkstk_darwin(v25);
  v73 = &v72 - v28;
  __chkstk_darwin(v27);
  v30 = &v72 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v32 = v21[2];
  v82 = v31;
  v81 = v32;
  v32(v30, v31, v20);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "AddMediaNeedsValueStrategy#actionForInput...", v35, 2u);
  }

  v36 = v21[1];
  v37 = v20;
  v36(v30, v20);
  sub_2CA790();
  v38 = (*(v14 + 88))(v19, v13);
  if (v38 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v14 + 96))(v19, v13);
    v39 = *&v19[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

    v40 = sub_2CAFE0();
    (*(*(v40 - 8) + 8))(v19, v40);
    v41 = v85;
  }

  else
  {
    v42 = v38;
    v43 = enum case for Parse.pommesResponse(_:);
    (*(v14 + 8))(v19, v13);
    v41 = v85;
    if (v42 != v43)
    {
      v56 = v75;
      v81(v75, v82, v37);
      v57 = sub_2CDFE0();
      v58 = sub_2CE690();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "AddMediaNeedsValueStrategy#actionForInput parse not of right type";
        goto LABEL_16;
      }

LABEL_17:

      v36(v56, v37);
      return sub_2C9CF0();
    }
  }

  v44 = v83;
  sub_2CA790();
  v45 = sub_D2F98(v44, &v88);
  (*(v14 + 8))(v44, v13, v45);
  if (!v89)
  {
    sub_30B8(&v88, &qword_34CF98, &unk_2D1A40);
    v56 = v76;
    v81(v76, v82, v37);
    v57 = sub_2CDFE0();
    v58 = sub_2CE690();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "AddMediaNeedsValueStrategy#actionForInput received invalid NL intent";
LABEL_16:
      _os_log_impl(&dword_0, v57, v58, v60, v59, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v85 = v36;
  v87 = v21 + 1;
  sub_420A4(&v88, &v90);
  v46 = v92;
  sub_35E0(&v90, v91);
  v47 = *(v46 + 8);
  v48 = v79;
  sub_2CD480();
  v49 = v80;
  v50 = v78;
  (*(v80 + 104))(v78, enum case for CommonAudio.Confirmation.cancel(_:), v41);
  (*(v49 + 56))(v50, 0, 1, v41);
  v51 = *(v77 + 48);
  v52 = v84;
  sub_F3F4(v48, v84, &qword_34CCE8, &unk_2D0E20);
  v53 = v52;
  sub_F3F4(v50, v52 + v51, &qword_34CCE8, &unk_2D0E20);
  v54 = *(v49 + 48);
  if (v54(v52, 1, v41) == 1)
  {
    sub_30B8(v50, &qword_34CCE8, &unk_2D0E20);
    v55 = v84;
    sub_30B8(v48, &qword_34CCE8, &unk_2D0E20);
    if (v54(v55 + v51, 1, v41) == 1)
    {
      sub_30B8(v55, &qword_34CCE8, &unk_2D0E20);
LABEL_23:
      v68 = v73;
      v81(v73, v82, v37);
      v69 = sub_2CDFE0();
      v70 = sub_2CE690();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "AddMediaNeedsValueStrategy#actionForInput User asked to cancel", v71, 2u);
      }

      (v85)(v68, v37);
      sub_2C9CD0();
      return sub_306C(&v90);
    }

    goto LABEL_20;
  }

  v62 = v74;
  sub_F3F4(v52, v74, &qword_34CCE8, &unk_2D0E20);
  if (v54(v52 + v51, 1, v41) == 1)
  {
    sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
    v55 = v84;
    sub_30B8(v79, &qword_34CCE8, &unk_2D0E20);
    (*(v80 + 8))(v62, v41);
LABEL_20:
    sub_30B8(v55, &qword_34CFB0, &unk_2D1000);
    goto LABEL_21;
  }

  v63 = v80;
  v64 = v72;
  (*(v80 + 32))(v72, v53 + v51, v41);
  sub_1CEAF8(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation);
  v65 = v53;
  v66 = sub_2CE250();
  v67 = *(v63 + 8);
  v67(v64, v41);
  sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v79, &qword_34CCE8, &unk_2D0E20);
  v67(v62, v41);
  sub_30B8(v65, &qword_34CCE8, &unk_2D0E20);
  if (v66)
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_2C9CE0();
  return sub_306C(&v90);
}

uint64_t sub_1CB664(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v46 = a5;
  v48 = a2;
  v49 = a7;
  v45 = a6;
  v50 = a1;
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v43 = v12;
  v44 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = v41 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);

  v20 = sub_2CDFE0();
  v21 = sub_2CE690();

  v22 = a4;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = a3;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v52 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_3F08(v23, v22, &v52);
    _os_log_impl(&dword_0, v20, v21, "AddMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v24, 0xCu);
    sub_306C(v25);

    a3 = v23;
  }

  (*(v15 + 8))(v18, v14);
  v26 = v51;
  v27 = v48;
  v28 = a3;
  v29 = v46;
  sub_1C9EE0(v48, a3, v22, v51);
  v30 = v47;
  v41[1] = *(v47 + 16);
  v31 = v26;
  v32 = v22;
  v33 = v44;
  sub_F3F4(v31, v44, &unk_353020, &unk_2D0970);
  v34 = (*(v42 + 80) + 80) & ~*(v42 + 80);
  v35 = swift_allocObject();
  v35[2] = v28;
  v35[3] = v32;
  v35[4] = v29;
  v35[5] = v30;
  v37 = v49;
  v36 = v50;
  v35[6] = v50;
  v35[7] = v27;
  v35[8] = v45;
  v35[9] = v37;
  sub_14A58(v33, v35 + v34, &unk_353020, &unk_2D0970);

  v38 = v29;

  v39 = v27;

  sub_CF92C(v36, v28, v32, v39, sub_1CEA6C, v35);

  return sub_30B8(v51, &unk_353020, &unk_2D0970);
}

uint64_t sub_1CBA70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v90 = a8;
  v87 = a6;
  v88 = a7;
  v83 = a5;
  v81 = a4;
  v80 = a3;
  v79 = a2;
  v78 = a1;
  v89 = a9;
  v76 = sub_2CCB20();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = *(*(v82 - 8) + 64);
  v13 = __chkstk_darwin(v82);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v73 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v86 = &v73 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v85 = &v73 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v84 = &v73 - v24;
  v25 = sub_2CCB30();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CCAC0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20410(&unk_3519A0, &qword_2D0980);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v73 - v37);
  sub_F3F4(v78, &v73 - v37, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v38;
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.amnvs(_:), v30);
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v25);
    swift_getErrorValue();
    sub_2CEEF0();
    v91 = sub_2CCAF0();

    (*(v26 + 8))(v29, v25);
    (*(v31 + 8))(v34, v30);
    v40 = v83[7];
    v83 = sub_35E0(v83 + 3, v83[6]);
    v41 = enum case for ActivityType.failed(_:);
    v42 = sub_2C9C20();
    v43 = *(v42 - 8);
    v44 = v84;
    (*(v43 + 104))(v84, v41, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v45 = sub_2CA130();
    v46 = v85;
    (*(*(v45 - 8) + 56))(v85, 1, 1, v45);
    v47 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v48 = sub_2C98F0();
    v49 = *(v48 - 8);
    v50 = v86;
    (*(v49 + 104))(v86, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v50, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v46, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v44, &qword_34CB88, &unk_2D0D90);
    v92[0] = v39;
    v93 = 1;
    swift_errorRetain();
    v90(v92);

    return sub_30B8(v92, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v78 = a10;
    sub_14A58(v38, v91, &qword_34C6E8, &unk_2D0FF0);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.amnvs(_:), v30);
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v25);
    v52 = v75;
    v53 = v74;
    v54 = v76;
    (*(v75 + 104))(v74, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v76);
    v81 = sub_2CCB00();
    v80 = v55;
    (*(v52 + 8))(v53, v54);
    (*(v26 + 8))(v29, v25);
    (*(v31 + 8))(v34, v30);
    v56 = v83;
    v75 = v83[6];
    v76 = v83[7];
    v79 = sub_35E0(v83 + 3, v75);
    v57 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v58 = sub_2C9C20();
    v59 = *(v58 - 8);
    v60 = v84;
    (*(v59 + 104))(v84, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = v77;
    sub_F3F4(v91, v77, &qword_34C6E8, &unk_2D0FF0);

    v62 = sub_2CA130();
    v63 = *(v62 - 8);
    v64 = v85;
    (*(v63 + 32))(v85, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = enum case for SiriKitReliabilityCodes.success(_:);
    v66 = sub_2C98F0();
    v67 = *(v66 - 8);
    v68 = v86;
    (*(v67 + 104))(v86, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v64, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v60, &qword_34CB88, &unk_2D0D90);
    v69 = sub_35E0(v56 + 8, v56[11]);
    v70 = v91;
    sub_F3F4(v91, v61, &qword_34C6E8, &unk_2D0FF0);
    v71 = *(v61 + *(v82 + 48));
    v72 = *v69;
    sub_1C1A94(v61, v71, v78, v90, v89);

    sub_30B8(v70, &qword_34C6E8, &unk_2D0FF0);
    return (*(v63 + 8))(v61, v62);
  }
}