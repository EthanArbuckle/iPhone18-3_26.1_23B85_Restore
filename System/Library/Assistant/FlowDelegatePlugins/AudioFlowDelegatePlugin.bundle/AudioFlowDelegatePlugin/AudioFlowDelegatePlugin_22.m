unint64_t sub_270F10(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270F9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, char *a7)
{
  v172 = a7;
  v171 = a6;
  v169 = a5;
  v170 = a4;
  v168 = a2;
  v167 = a1;
  v8 = sub_2CB850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v152 - v15;
  __chkstk_darwin(v14);
  v18 = &v152 - v17;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v166 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v165 = &v152 - v25;
  v26 = __chkstk_darwin(v24);
  v163 = &v152 - v27;
  v28 = __chkstk_darwin(v26);
  v164 = &v152 - v29;
  v30 = __chkstk_darwin(v28);
  v162 = &v152 - v31;
  v32 = __chkstk_darwin(v30);
  v161 = &v152 - v33;
  v34 = __chkstk_darwin(v32);
  v159 = &v152 - v35;
  v36 = __chkstk_darwin(v34);
  v156 = &v152 - v37;
  v38 = __chkstk_darwin(v36);
  v158 = &v152 - v39;
  __chkstk_darwin(v38);
  v41 = &v152 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v157 = v13;
  v42 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v43 = *(v20 + 16);
  v174 = v42;
  v175 = v43;
  v176 = v20 + 16;
  v43(v41, v42, v19);
  v44 = *(v9 + 16);
  v179 = a3;
  v155 = v9 + 16;
  v154 = v44;
  v44(v18, a3, v8);
  v45 = v9;
  v46 = sub_2CDFE0();
  v180 = v20;
  v47 = v46;
  v48 = sub_2CE670();
  v49 = os_log_type_enabled(v47, v48);
  v173 = v41;
  v50 = v8;
  v51 = v18;
  v178 = v19;
  if (v49)
  {
    v52 = swift_slowAlloc();
    v53 = v45;
    v160 = v45;
    v54 = v52;
    v55 = swift_slowAlloc();
    *&v183 = v55;
    *v54 = 136446210;
    v152 = sub_2CB840();
    v153 = v16;
    v57 = v56;
    v58 = *(v53 + 8);
    v58(v51, v50);
    v59 = sub_3F08(v152, v57, &v183);
    v16 = v153;

    *(v54 + 4) = v59;
    _os_log_impl(&dword_0, v47, v48, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors code: %{public}s", v54, 0xCu);
    sub_306C(v55);

    v60 = v173;
    v173 = *(v180 + 8);
    v173(v60, v178);
    v45 = v160;
  }

  else
  {

    v58 = *(v45 + 8);
    v58(v51, v8);
    v61 = v173;
    v173 = *(v180 + 8);
    v173(v61, v19);
  }

  v64 = *(v45 + 104);
  v62 = v45 + 104;
  v63 = v64;
  v64(v16, enum case for PlaybackCode.iTunesAccountError(_:), v50);
  sub_270D7C(&qword_353CD8, &type metadata accessor for PlaybackCode);
  v65 = sub_2CE250();
  v58(v16, v50);
  if (v65)
  {
    if (sub_2CB650())
    {
      v66 = v165;
      v67 = v178;
      v175(v165, v174, v178);
      v68 = sub_2CDFE0();
      v69 = sub_2CE690();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v170;
      if (v70)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v68, v69, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for homepod account error code", v72, 2u);
      }

      v173(v66, v67);
      v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v185 = &off_3381B8;
      *&v183 = v169;
      v73 = v169;
      sub_241978(v71, &v183, v171, v172);
    }

    else
    {
      v83 = v166;
      v84 = v178;
      v175(v166, v174, v178);
      v85 = sub_2CDFE0();
      v86 = sub_2CE690();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v170;
      if (v87)
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v85, v86, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for signIntoMusicAccount error code", v89, 2u);
      }

      v173(v83, v84);
      v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v185 = &off_3381B8;
      *&v183 = v169;
      v90 = v169;
      sub_241FF8(v167, v88, &v183, v171, v172);
    }

    return sub_30B8(&v183, &qword_34C6C0, &qword_2D0710);
  }

  v63(v16, enum case for PlaybackCode.noNetwork(_:), v50);
  v166 = v58;
  v74 = sub_2CE250();
  (v166)(v16, v50);
  if (v74)
  {
    v75 = v170;
    v76 = sub_2CCF90();
    v78 = v77;
    v79 = sub_2CBE30();
    if (v78)
    {
      v81 = v178;
      if (v76 == v79 && v78 == v80)
      {

        v82 = v164;
LABEL_29:
        v175(v82, v174, v81);
        v109 = sub_2CDFE0();
        v110 = sub_2CE690();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_0, v109, v110, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for unsupportMediaItemsCellularDataSettings code", v111, 2u);
        }

        v173(v82, v81);
        v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v185 = &off_3381B8;
        *&v183 = v169;
        v112 = v169;
        v113 = v167;
        v114 = v75;
LABEL_39:
        sub_33504(v113, v114, &v183, v171, v172);
        return sub_30B8(&v183, &qword_34C6C0, &qword_2D0710);
      }

      v108 = sub_2CEEA0();

      v82 = v164;
      if (v108)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v81 = v178;
    }

    v115 = v163;
    v175(v163, v174, v81);
    v116 = sub_2CDFE0();
    v117 = sub_2CE690();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_0, v116, v117, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for noNetwork code", v118, 2u);
    }

    v173(v115, v81);
    v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v185 = &off_3381B8;
    *&v183 = v169;
    v119 = v169;
    sub_348A4(v167, v75, &v183, v171, v172);
    return sub_30B8(&v183, &qword_34C6C0, &qword_2D0710);
  }

  v63(v16, enum case for PlaybackCode.gdprNeededInGroup(_:), v50);
  v91 = sub_2CE250();
  (v166)(v16, v50);
  if (v91)
  {
    v186 = v167;

    v92 = sub_2CB650();
    v182 = &type metadata for Bool;
    LOBYTE(v181) = v92 & 1;
    sub_270DC4(&v181, 0x6F50656D6F487369, 0xE900000000000064, &v183);
    sub_30B8(&v183, &qword_34CEA0, &qword_2D0FC0);
    v93 = v162;
    v94 = v178;
    v175(v162, v174, v178);
    v95 = sub_2CDFE0();
    v96 = sub_2CE690();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_0, v95, v96, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for gdprNeededInGroup code", v97, 2u);
    }

    v173(v93, v94);
    v98 = v186;
    v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v185 = &off_3381B8;
    *&v183 = v169;
    v99 = v169;
    sub_35588(v98, v170, &v183, v171, v172);

    return sub_30B8(&v183, &qword_34C6C0, &qword_2D0710);
  }

  v100 = v63;
  v63(v16, enum case for PlaybackCode.operationApplicationRequiresPreflight(_:), v50);
  v101 = sub_2CE250();
  (v166)(v16, v50);
  if (v101)
  {
    v102 = v161;
    v103 = v178;
    v175(v161, v174, v178);
    v104 = sub_2CDFE0();
    v105 = sub_2CE690();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v104, v105, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for operationApplicationRequiresPreflight code", v106, 2u);
    }

    v173(v102, v103);
    v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v185 = &off_3381B8;
    *&v183 = v169;
    v107 = v169;
    sub_37600(v167, v170, &v183, v171, v172);
    return sub_30B8(&v183, &qword_34C6C0, &qword_2D0710);
  }

  v63(v16, enum case for PlaybackCode.musicCellularDataOff(_:), v50);
  v120 = sub_2CE250();
  (v166)(v16, v50);
  if (v120)
  {
    v121 = v159;
    v122 = v178;
    v175(v159, v174, v178);
    v123 = sub_2CDFE0();
    v124 = sub_2CE690();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_0, v123, v124, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog (musicCellularDataOff) for unsupportMediaItemsCellularDataSettings code", v125, 2u);
    }

    v173(v121, v122);
    v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v185 = &off_3381B8;
    *&v183 = v169;
    v126 = v169;
    v113 = v167;
    v114 = v170;
    goto LABEL_39;
  }

  v160 = v62;
  v63(v16, enum case for PlaybackCode.appNotInstalled(_:), v50);
  v128 = sub_2CE250();
  (v166)(v16, v50);
  if (v128)
  {
    v129 = v156;
    v130 = v178;
    v175(v156, v174, v178);
    v131 = sub_2CDFE0();
    v132 = sub_2CE690();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_0, v131, v132, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for appNotInstalled code", v133, 2u);
    }

    v173(v129, v130);
    v184 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v185 = &off_3381B8;
    *&v183 = v169;
    v134 = v169;
    sub_35C1C(v167, v170, &v183, v171, v172);
    return sub_30B8(&v183, &qword_34C6C0, &qword_2D0710);
  }

  v135 = v158;
  v136 = v178;
  v175(v158, v174, v178);
  v137 = v157;
  v154(v157, v179, v50);
  v138 = sub_2CDFE0();
  v139 = sub_2CE680();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v179 = v50;
    v141 = v140;
    v142 = v100;
    v143 = swift_slowAlloc();
    *&v183 = v143;
    *v141 = 136446210;
    v144 = sub_2CB840();
    v146 = v145;
    (v166)(v137, v179);
    v147 = sub_3F08(v144, v146, &v183);

    *(v141 + 4) = v147;
    _os_log_impl(&dword_0, v138, v139, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors should NOT be here, PFSQ terminal errors and tracking have gotten out of sync, this needs to be fixed! The unhandled playbackCode: %{public}s", v141, 0xCu);
    sub_306C(v143);
    v100 = v142;

    v50 = v179;

    v148 = v158;
    v149 = v178;
  }

  else
  {

    (v166)(v137, v50);
    v148 = v135;
    v149 = v136;
  }

  v173(v148, v149);
  sub_270D7C(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v150 = swift_allocError();
  v100(v151, enum case for PlaybackCode.notSupported(_:), v50);
  v177 = v150;
  return swift_willThrow();
}

uint64_t sub_272348(uint64_t a1)
{
  v2 = sub_20410(&qword_356378, &qword_2D8590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = v19 - v5;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2CDFE0();
  v14 = sub_2CE670();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "PlayMediaRCHFlowWrapper#logCoreAnalytics", v15, 2u);
  }

  (*(v8 + 8))(v11, v7);
  sub_2CC0E0();
  sub_2CBC60();
  sub_35E0(v19, v19[3]);
  sub_2CBE60();
  sub_F3F4(a1, v6, &qword_356378, &qword_2D8590);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_14A58(v6, v17 + v16, &qword_356378, &qword_2D8590);
  sub_2CC0C0();

  return sub_306C(v19);
}

uint64_t sub_272654(uint64_t a1)
{
  v78 = a1;
  v1 = sub_2CE150();
  v89 = *(v1 - 8);
  v90 = v1;
  v2 = *(v89 + 64);
  __chkstk_darwin(v1);
  v87 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2CE180();
  v86 = *(v88 - 8);
  v4 = *(v86 + 64);
  __chkstk_darwin(v88);
  v85 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_3524B0, &unk_2D8440);
  v83 = *(v6 - 8);
  v84 = v6;
  v81 = *(v83 + 64);
  __chkstk_darwin(v6);
  v82 = &v68 - v7;
  v72 = sub_2C8E30();
  v71 = *(v72 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v72);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2C8BB0();
  v10 = *(v92 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v92);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v77 = &v68 - v15;
  v79 = v16;
  __chkstk_darwin(v14);
  v91 = &v68 - v17;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v68 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v27 = v19[2];
  v27(v25, v26, v18);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v75 = v18;
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "PlayMediaRCHFlowWrapper#saveToSiriMemory", v30, 2u);
    v18 = v75;
  }

  v32 = v19[1];
  v31 = v19 + 1;
  v74 = v32;
  v32(v25, v18);
  v33 = v76;
  sub_2C8E10();
  v34 = v91;
  sub_2C8BA0();
  v27(v23, v26, v18);
  v35 = v77;
  v75 = *(v10 + 16);
  v73 = v10 + 16;
  v75(v77, v34, v92);
  v36 = sub_2CDFE0();
  v37 = sub_2CE690();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v69 = v23;
    v70 = v31;
    v39 = v38;
    v40 = v33;
    aBlock[0] = swift_slowAlloc();
    *v39 = 136315394;
    sub_2C8E10();
    sub_270D7C(&qword_353CA8, &type metadata accessor for Date);
    v68 = v10;
    v41 = v72;
    v42 = sub_2CEE70();
    v43 = v35;
    v45 = v44;
    (*(v71 + 8))(v40, v41);
    v46 = sub_3F08(v42, v45, aBlock);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2080;
    sub_270D7C(&qword_356380, &type metadata accessor for DateInterval);
    v47 = sub_2CEE70();
    v49 = v48;
    v10 = v68;
    v50 = *(v68 + 8);
    v76 = ((v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v77 = v50;
    (v50)(v43, v92);
    v51 = sub_3F08(v47, v49, aBlock);

    *(v39 + 14) = v51;
    _os_log_impl(&dword_0, v36, v37, "PlayMediaRCHFlowWrapper#saveToSiriMemory called at: %s and dateInterval: %s", v39, 0x16u);
    swift_arrayDestroy();

    v74(v69, v18);
  }

  else
  {

    v52 = *(v10 + 8);
    v76 = ((v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v77 = v52;
    (v52)(v35, v92);
    v74(v23, v18);
  }

  v74 = sub_2CBA10();
  v54 = v82;
  v53 = v83;
  v55 = v84;
  (*(v83 + 16))(v82, v78, v84);
  v56 = v80;
  v57 = v91;
  v58 = v92;
  v75(v80, v91, v92);
  v59 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v60 = (v81 + *(v10 + 80) + v59) & ~*(v10 + 80);
  v61 = swift_allocObject();
  (*(v53 + 32))(v61 + v59, v54, v55);
  (*(v10 + 32))(v61 + v60, v56, v58);
  aBlock[4] = sub_275284;
  aBlock[5] = v61;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_33C4D8;
  v62 = _Block_copy(aBlock);
  v63 = v85;
  sub_2CE160();
  v93 = _swiftEmptyArrayStorage;
  sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80);
  v64 = v87;
  v65 = v90;
  sub_2CEC10();
  v66 = v74;
  sub_2CE9C0();
  _Block_release(v62);

  (*(v89 + 8))(v64, v65);
  (*(v86 + 8))(v63, v88);
  (v77)(v57, v58);
}

uint64_t sub_2730D4(uint64_t a1)
{
  v99 = a1;
  v1 = sub_2CE150();
  v93 = *(v1 - 8);
  v94 = v1;
  v2 = *(v93 + 64);
  __chkstk_darwin(v1);
  v91 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2CE180();
  v90 = *(v92 - 8);
  v4 = *(v90 + 64);
  __chkstk_darwin(v92);
  v89 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2CE130();
  v85 = *(v86 - 8);
  v6 = *(v85 + 64);
  __chkstk_darwin(v86);
  v84 = (v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_2CE1A0();
  v88 = *(v95 - 8);
  v8 = *(v88 + 64);
  v9 = __chkstk_darwin(v95);
  v83 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = v77 - v11;
  v12 = sub_20410(&qword_3524B0, &unk_2D8440);
  v97 = *(v12 - 8);
  v98 = v12;
  v13 = *(v97 + 64);
  v14 = __chkstk_darwin(v12);
  v82 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v15;
  __chkstk_darwin(v14);
  v17 = v77 - v16;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v79 = v77 - v25;
  v26 = __chkstk_darwin(v24);
  v80 = v77 - v27;
  __chkstk_darwin(v26);
  v29 = v77 - v28;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v96 = v19[2];
  v96(v29, v30, v18);
  v31 = sub_2CDFE0();
  v32 = sub_2CE670();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "PlayMediaRCHFlowWrapper#logReliability", v33, 2u);
  }

  v34 = v19[1];
  v34(v29, v18);
  v36 = v97;
  v35 = v98;
  v78 = *(v97 + 16);
  v78(v17, v99, v98);
  if ((*(v36 + 88))(v17, v35) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v36 + 96))(v17, v35);
    v37 = *v17;
    v38 = *(v17 + 2);

    v39 = sub_2CCF90();
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      v77[0] = v34;
      v77[1] = v37;
      v43 = sub_2CBD40();
      aBlock = v41;
      v102 = v42;
      __chkstk_darwin(v43);
      v77[-2] = &aBlock;
      LOBYTE(v41) = sub_13964(sub_13A68, &v77[-4], v43);

      if (v41)
      {
        v44 = sub_270F10(0x63uLL) + 1;
        if (v44 <= 5)
        {
          v53 = v80;
          v96(v80, v30, v18);
          v54 = sub_2CDFE0();
          v55 = sub_2CE670();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 134217984;
            *(v56 + 4) = v44;
            _os_log_impl(&dword_0, v54, v55, "PlayMediaRCHFlowWrapper#logReliability random roll: %ld (/100) was <= 5 for 5%% chance, continuing with reliability test.", v56, 0xCu);
          }

          (v77[0])(v53, v18);
          sub_2CBC60();
          sub_35E0(&aBlock, v104);
          v57 = sub_2CBE60();
          v59 = v58;
          sub_306C(&aBlock);
          v96 = sub_2CBA10();
          v60 = v83;
          sub_2CE190();
          v61 = v84;
          *v84 = 5;
          v62 = v85;
          v63 = v86;
          (*(v85 + 104))(v61, enum case for DispatchTimeInterval.seconds(_:), v86);
          v64 = v87;
          sub_2CE1B0();
          (*(v62 + 8))(v61, v63);
          v88 = *(v88 + 8);
          (v88)(v60, v95);
          v65 = v82;
          v66 = v98;
          v78(v82, v99, v98);
          v67 = v97;
          v68 = (*(v97 + 80) + 16) & ~*(v97 + 80);
          v69 = (v81 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = swift_allocObject();
          (*(v67 + 32))(v70 + v68, v65, v66);
          v71 = (v70 + v69);
          *v71 = v57;
          v71[1] = v59;
          v105 = sub_275078;
          v106 = v70;
          aBlock = _NSConcreteStackBlock;
          v102 = 1107296256;
          v103 = sub_A4294;
          v104 = &unk_33C460;
          v72 = _Block_copy(&aBlock);
          v73 = v89;
          sub_2CE160();
          v100 = _swiftEmptyArrayStorage;
          sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
          sub_20410(&qword_34DD48, &qword_2D5F80);
          sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80);
          v74 = v91;
          v75 = v94;
          sub_2CEC10();
          v76 = v96;
          sub_2CE9A0();

          _Block_release(v72);

          (*(v93 + 8))(v74, v75);
          (*(v90 + 8))(v73, v92);
          (v88)(v64, v95);
        }

        else
        {
          v45 = v79;
          v96(v79, v30, v18);
          v46 = sub_2CDFE0();
          v47 = sub_2CE670();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 134217984;
            *(v48 + 4) = v44;
            _os_log_impl(&dword_0, v46, v47, "PlayMediaRCHFlowWrapper#logReliability random roll: %ld (/100) was NOT <= 5 for 5%% chance, skipping...", v48, 0xCu);
          }

          return (v77[0])(v45, v18);
        }
      }

      v34 = v77[0];
    }

    else
    {
    }
  }

  else
  {
    (*(v36 + 8))(v17, v35);
  }

  v96(v23, v30, v18);
  v50 = sub_2CDFE0();
  v51 = sub_2CE670();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "PlayMediaRCHFlowWrapper#logReliability not a music or podcast bundle identifier, skipping logging reliability info", v52, 2u);
  }

  return (v34)(v23, v18);
}

uint64_t sub_273CB0(uint64_t a1)
{
  v2 = sub_20410(&qword_3524B0, &unk_2D8440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_20410(&qword_34E4B0, &qword_2D3520);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_2CB460();
  if (v11)
  {
    sub_2CB130();

    v11 = sub_2CD390();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  sub_2CE4B0();
  v14 = sub_2CE4D0();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  (*(v3 + 16))(v6, a1, v2);
  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v3 + 32))(v16 + v15, v6, v2);
  v17 = (v16 + ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v11;
  v17[1] = v13;
  sub_ABBE8(0, 0, v10, &unk_2D85A0, v16);
}

uint64_t sub_273EEC()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_2CE260();
  v7 = [v5 initWithSuiteName:v6];

  if (!v7)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v11 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v11, v0);
    v12 = sub_2CDFE0();
    v13 = sub_2CE680();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "PlayMediaRCHFlowWrapper#throttleAllowSTCReporting unable to access defaults", v14, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  v8 = sub_2CEFC0();
  v9 = sub_2CE260();
  v10 = [v7 objectForKey:v9];

  if (v10)
  {
    sub_2CEC00();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v8 < v18[1] || sub_2CEFD0() <= 3600.0))
    {

      return 0;
    }
  }

  else
  {
    sub_30B8(v21, &qword_34CEA0, &qword_2D0FC0);
  }

  isa = sub_2CEFB0().super.super.isa;
  v17 = sub_2CE260();
  [v7 setObject:isa forKey:v17];

  return 1;
}

uint64_t sub_274228(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v2 = sub_2CE000();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  v4 = __chkstk_darwin(v2);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v60 = &v58 - v7;
  __chkstk_darwin(v6);
  v63 = &v58 - v8;
  v9 = sub_2CBB10();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  v11 = __chkstk_darwin(v9);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v58 - v13;
  v14 = sub_2CDFD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  sub_2CBC60();
  sub_35E0(v69, v69[3]);
  v19 = sub_2CBE60();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 4144959;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  sub_306C(v69);
  sub_2CE9F0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0090;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_1087C();
  *(v23 + 32) = v21;
  *(v23 + 40) = v22;
  sub_2CDFC0();
  sub_2CDF90();

  (*(v15 + 8))(v18, v14);
  if (qword_34C020 != -1)
  {
    swift_once();
  }

  v25 = v66;
  v24 = v67;
  if (byte_35F858 == 1)
  {
    sub_2CB4A0();
    sub_2CB490();
    sub_2CB480();

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v27 = v63;
    v59 = *(v25 + 16);
    v59(v63, v26, v2);
    v28 = v62;

    v29 = sub_2CDFE0();
    v30 = sub_2CE660();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v28;
      v33 = swift_slowAlloc();
      v69[0] = v33;
      *v31 = 136315138;
      swift_beginAccess();
      v34 = *(v32 + 16);
      v35 = *(v32 + 24);

      v36 = sub_3F08(v34, v35, v69);
      v24 = v67;

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v29, v30, "PlayMediaRCHFlowWrapper#exit, result: %s", v31, 0xCu);
      sub_306C(v33);

      v37 = *(v25 + 8);
      v37(v63, v2);
    }

    else
    {

      v37 = *(v25 + 8);
      v37(v27, v2);
    }

    v38 = v61;
    v40 = v64;
    v39 = v65;
    (*(v64 + 16))(v61, v68, v65);
    v41 = (*(v40 + 88))(v38, v39);
    if (v41 == enum case for STCAuditStatus.failedThenCompleted(_:) || v41 == enum case for STCAuditStatus.completedThenFailed(_:) || v41 == enum case for STCAuditStatus.incomplete(_:))
    {
      v44 = sub_273EEC();
      v45 = v60;
      v59(v60, v26, v2);
      v46 = sub_2CDFE0();
      v47 = sub_2CE680();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 67109120;
        *(v48 + 4) = v44 & 1;
        _os_log_impl(&dword_0, v46, v47, "PlayMediaRCHFlowWrapper#exit negative STC case, allow report generation: %{BOOL}d", v48, 8u);
        v45 = v60;
      }

      v37(v45, v2);
      if (v44)
      {
        sub_2CC230();
        v49 = v68;
        sub_2CBB00();
        v50 = v62;
        swift_beginAccess();
        v51 = *(v50 + 16);
        v52 = *(v50 + 24);

        sub_2CC1E0();

        (*(v64 + 8))(v49, v65);
      }

      else
      {
        (*(v64 + 8))(v68, v65);
      }
    }

    else
    {
      v42 = v65;
      v43 = *(v64 + 8);
      v43(v68, v65);
      v43(v38, v42);
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v53 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v25 + 16))(v24, v53, v2);
  v54 = sub_2CDFE0();
  v55 = sub_2CE690();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "PlayMediaRCHFlowWrapper#exit done.", v56, 2u);
  }

  return (*(v25 + 8))(v24, v2);
}

uint64_t sub_274B20()
{
  v0 = sub_2CB850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CB6C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  sub_2CC920();
  (*(v6 + 104))(v10, enum case for DomainCode.mediaRemoteCommand(_:), v5);
  sub_270D7C(&qword_356370, &type metadata accessor for DomainCode);
  sub_2CE3E0();
  sub_2CE3E0();
  v13 = *(v6 + 8);
  v13(v10, v5);
  v13(v12, v5);
  if (v29 == v31)
  {
    return 0;
  }

  sub_2CC920();
  v15 = sub_2CB6B0();
  v13(v12, v5);
  v29 = v15;
  v32._countAndFlagsBits = sub_2CEE70();
  v29 = 40;
  v30 = 0xE100000000000000;
  sub_2CE350(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_2CE350(v33);

  v17 = v29;
  v16 = v30;
  sub_2CC940();
  v18 = sub_2CB820();
  (*(v1 + 8))(v4, v0);
  v29 = v18;
  v34._countAndFlagsBits = sub_2CEE70();
  v29 = 40;
  v30 = 0xE100000000000000;
  sub_2CE350(v34);

  v35._countAndFlagsBits = 41;
  v35._object = 0xE100000000000000;
  sub_2CE350(v35);

  v19 = v29;
  v20 = v30;
  v29 = v17;
  v30 = v16;

  v36._countAndFlagsBits = v19;
  v36._object = v20;
  sub_2CE350(v36);

  v22 = v29;
  v21 = v30;
  v23 = sub_2CC910();
  v25 = v24;
  v29 = v22;
  v30 = v21;

  v37._countAndFlagsBits = v23;
  v37._object = v25;
  sub_2CE350(v37);

  v26 = v29;
  v27 = v30;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_2CECB0(32);

  v29 = 0xD00000000000001ELL;
  v30 = 0x80000000002E0910;
  v38._countAndFlagsBits = v26;
  v38._object = v27;
  sub_2CE350(v38);

  return v29;
}

uint64_t sub_274F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274F38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_E664;

  return sub_266764(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_275078()
{
  v1 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_26F018(v0 + v2, v4, v5);
}

uint64_t sub_275114()
{
  v1 = sub_20410(&qword_3524B0, &unk_2D8440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_2751C0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_26F3BC(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_275284()
{
  v1 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2C8BB0() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26B5C0(v0 + v2, v5);
}

uint64_t sub_275364(uint64_t a1)
{
  v3 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26C940(a1, v4);
}

uint64_t sub_2753E0()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_26CE58(v2, v3);
}

uint64_t sub_275450()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_3524B0, &unk_2D8440);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_275574()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_26E948(v2);
}

uint64_t sub_275608(uint64_t a1)
{
  v3 = *(sub_2CC950() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_26234C(a1, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t sub_2756CC(void (*a1)(char *), uint64_t a2)
{
  v5 = *(sub_2CC950() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_262BFC(a1, a2, v6);
}

uint64_t sub_27574C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_27579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_356378, &qword_2D8590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27580C()
{
  v1 = *(sub_2CC950() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2642CC(v6, v0 + v2, v5, v7, v9, v10);
}

uint64_t *PlayMedia.flowStrategy.unsafeMutableAddressor()
{
  if (qword_34C030 != -1)
  {
    swift_once();
  }

  return &static PlayMedia.flowStrategy;
}

uint64_t *PlayMedia.childFlowFactory.unsafeMutableAddressor()
{
  if (qword_34C038 != -1)
  {
    swift_once();
  }

  return &static PlayMedia.childFlowFactory;
}

uint64_t sub_2759D8()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  sub_285EC(&static StringsBackedAppNameResolver.shared, v12);
  sub_2CB4A0();
  v5 = sub_2CB490();

  sub_2C9A00();
  type metadata accessor for PlayMediaFlowStrategy();
  v6 = swift_allocObject();
  sub_EEAC(v11, v10);
  sub_285EC(v12, v9);
  v7 = sub_275FB0(v9, v5, v10, v6);

  sub_306C(v11);
  result = sub_28648(v12);
  static PlayMedia.flowStrategy = v7;
  return result;
}

uint64_t sub_275B94()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  result = sub_1EB740();
  static PlayMedia.childFlowFactory = result;
  return result;
}

uint64_t sub_275C88(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_275CE8()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v4, v0);
  sub_2CD0A0();
  result = sub_2CD090();
  static PlayMedia.intentHandler = result;
  return result;
}

uint64_t *PlayMedia.intentHandler.unsafeMutableAddressor()
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  return &static PlayMedia.intentHandler;
}

id static PlayMedia.intentHandler.getter()
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static PlayMedia.intentHandler;

  return v0;
}

void static PlayMedia.intentHandler.setter(uint64_t a1)
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static PlayMedia.intentHandler;
  static PlayMedia.intentHandler = a1;
}

uint64_t (*static PlayMedia.intentHandler.modify())()
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *sub_275FB0(_OWORD *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_2CC2B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CB4A0();
  v55[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v33 = v13;
  v34 = a3;
  v55[3] = v13;
  v55[0] = a2;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = 1307;
  a4[4] = 0;
  a4[5] = 0;
  sub_EEAC(a3, &v52);
  LODWORD(a3) = CATDefaultMode;
  v14 = sub_2CBC00();
  v15 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v16 = swift_allocObject();
  v50 = &type metadata for StringsBackedAppNameResolver;
  v51 = sub_2869C();
  v17 = swift_allocObject();
  *&v49 = v17;
  v18 = a1[3];
  v17[3] = a1[2];
  v17[4] = v18;
  v17[5] = a1[4];
  v19 = a1[1];
  v17[1] = *a1;
  v17[2] = v19;
  v48[3] = v14;
  v48[4] = &protocol witness table for MorphunProvider;
  v48[0] = v15;
  v47[3] = v8;
  v47[4] = &protocol witness table for FeatureFlagProvider;
  v20 = sub_F390(v47);
  (*(v9 + 16))(v20, v12, v8);
  *(v16 + 296) = a3;
  sub_EEAC(v47, v16 + 256);
  sub_EEAC(&v49, v46);
  sub_EEAC(v48, v45);
  sub_EEAC(&v52, v44);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v21 = sub_2CCA30();
  v22 = sub_2CCA20();
  v41[3] = v21;
  v41[4] = &protocol witness table for MultiUserConnectionProvider;
  v41[0] = v22;
  v40[3] = sub_2CB9E0();
  v40[4] = &protocol witness table for DeviceProvider;
  sub_F390(v40);
  sub_2CB9C0();
  sub_EEAC(v46, v16 + 16);
  sub_EEAC(v45, v16 + 216);
  sub_EEAC(v44, v16 + 56);
  sub_EEAC(v41, v16 + 96);
  sub_EEAC(v40, v16 + 176);
  sub_286F0(v42, &v35);
  if (v36)
  {

    sub_28760(v42);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(v46);
    (*(v9 + 8))(v12, v8);
    sub_306C(&v52);
    sub_306C(v47);
    sub_306C(v48);
    sub_306C(&v49);
    sub_306C(v40);
    sub_306C(v41);
    sub_F338(&v35, &v37);
  }

  else
  {
    sub_EEAC(v44, &v37);
    v23 = sub_2C9E60();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_2C9E50();
    v38 = v23;
    v39 = &protocol witness table for ContactsManager;

    *&v37 = v26;
    sub_28760(v42);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(v46);
    (*(v9 + 8))(v12, v8);
    sub_306C(&v52);
    sub_306C(v47);
    sub_306C(v48);
    sub_306C(&v49);
    sub_306C(v40);
    sub_306C(v41);
    if (v36)
    {
      sub_28760(&v35);
    }
  }

  sub_F338(&v37, v16 + 136);
  a4[6] = v16;
  v53 = sub_2CC360();
  v54 = &protocol witness table for StringsFileResolver;
  sub_F390(&v52);

  sub_2CC350();
  v27 = v33;
  v28 = sub_2CB490();
  v50 = v27;
  v51 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v49 = v28;
  sub_20410(&qword_3563C0, &unk_2D8600);
  v29 = swift_allocObject();
  v29[13] = 0xD000000000000011;
  v29[14] = 0x80000000002DA8D0;
  v29[2] = v16;
  sub_F338(&v52, (v29 + 3));
  sub_F338(&v49, (v29 + 8));
  a4[7] = v29;
  sub_EEAC(v55, (a4 + 8));
  v53 = v8;
  v54 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v52);
  sub_2CC2A0();
  v30 = type metadata accessor for SiriAudioOutputProvider();
  v31 = swift_allocObject();
  sub_F338(&v52, v31 + 16);
  v53 = v30;
  v54 = &off_337EB0;
  *&v52 = v31;
  sub_306C(v34);
  sub_306C(v55);
  sub_F338(&v52, (a4 + 13));
  return a4;
}

__n128 sub_2764D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2764EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_276534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2765C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  sub_35E0(v3, v5);
  return a3(v5, v6);
}

uint64_t sub_27660C()
{
  v1 = v0[4];
  sub_35E0(v0, v0[3]);
  return sub_2CD000();
}

uint64_t getEnumTagSinglePayload for MediaPlayerAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlayerAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2767AC()
{
  result = qword_3563C8;
  if (!qword_3563C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563C8);
  }

  return result;
}

uint64_t sub_276800()
{
  sub_2CE310();
}

Swift::Int sub_27692C()
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_276A94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_276D6C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_276AC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000776FLL;
  v4 = 0x4E676E6979616C70;
  v5 = 0xE800000000000000;
  v6 = 0x73756F6976657270;
  if (v2 != 6)
  {
    v6 = 0x64656D616ELL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7478654E79616C70;
  if (v2 != 4)
  {
    v8 = 1954047342;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7473614C79616C70;
  if (v2 != 2)
  {
    v10 = 0x4E676E6979616C70;
    v9 = 0xEB00000000747865;
  }

  if (*v1)
  {
    v4 = 0x4C676E6979616C70;
    v3 = 0xEB00000000747361;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_276BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_276DB8();
  v5 = sub_276E0C();
  v6 = sub_276E60();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_276C58()
{
  result = qword_3563D0;
  if (!qword_3563D0)
  {
    sub_2DB30(&qword_3563D8, &qword_2D8738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563D0);
  }

  return result;
}

unint64_t sub_276CC0()
{
  result = qword_3563E0;
  if (!qword_3563E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563E0);
  }

  return result;
}

unint64_t sub_276D18()
{
  result = qword_3563E8;
  if (!qword_3563E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563E8);
  }

  return result;
}

uint64_t sub_276D6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_330E20;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_276DB8()
{
  result = qword_3563F0;
  if (!qword_3563F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563F0);
  }

  return result;
}

unint64_t sub_276E0C()
{
  result = qword_3563F8;
  if (!qword_3563F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563F8);
  }

  return result;
}

unint64_t sub_276E60()
{
  result = qword_356400;
  if (!qword_356400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_356400);
  }

  return result;
}

uint64_t sub_276EB4(char a1)
{
  v2 = sub_2CDD90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = sub_2CDD70();
  if (a1)
  {
    sub_2CDD60();
    if (*(v10 + 16) && (v11 = sub_4F464(v7), (v12 & 1) != 0))
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(v3 + 8);

      v16(v7, v2);

      return v15;
    }

    else
    {

      (*(v3 + 8))(v7, v2);
      return 0x69736976656C6574;
    }
  }

  else
  {
    sub_2CDD80();
    if (*(v10 + 16) && (v18 = sub_4F464(v9), (v19 & 1) != 0))
    {
      v20 = (*(v10 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(v3 + 8);

      v23(v9, v2);

      return v22;
    }

    else
    {

      (*(v3 + 8))(v9, v2);
      return 0x7674656C707061;
    }
  }
}

uint64_t sub_2770BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v54 = sub_2CDD90();
  v58 = *(v54 - 1);
  v4 = *(v58 + 64);
  v5 = __chkstk_darwin(v54);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = sub_2CDF60();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v19 = sub_2CDF40();
  if (!v20)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = sub_3ED0(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v18, v43, v14);
    v42 = v60;
    v58 = *(v59 + 16);
    (v58)(v13, v57, v60);
    v44 = sub_2CDFE0();
    v45 = sub_2CE690();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v46 = 136446210;
      sub_278438();
      LODWORD(v53) = v45;
      v47 = sub_2CEE70();
      v55 = v2;
      v49 = v48;
      (*(v59 + 8))(v13, v60);
      v50 = sub_3F08(v47, v49, &v62);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_0, v44, v53, "Cannot get deviceType for device: %{public}s. Skipping pruning", v46, 0xCu);
      sub_306C(v54);

      v42 = v60;

      (*(v15 + 8))(v18, v14);
      v41 = v59;
    }

    else
    {

      v41 = v59;
      (*(v59 + 8))(v13, v42);
      (*(v15 + 8))(v18, v14);
    }

    v40 = v56;
    (v58)(v56, v57, v42);
    goto LABEL_19;
  }

  v21 = v20;
  v53 = v19;
  v55 = v2;
  sub_20410(&unk_356F40, &unk_2D0740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  v23 = sub_2CDD70();
  sub_2CDD80();
  if (*(v23 + 16) && (v24 = sub_4F464(v9), (v25 & 1) != 0))
  {
    v26 = (*(v23 + 56) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(v58 + 8);

    v30 = v54;
    v29(v9, v54);
  }

  else
  {

    v29 = *(v58 + 8);
    v30 = v54;
    v29(v9, v54);
    v27 = 0xE700000000000000;
    v28 = 0x7674656C707061;
  }

  *(inited + 32) = v28;
  *(inited + 40) = v27;
  v31 = sub_2CDD70();
  sub_2CDD60();
  if (*(v31 + 16) && (v32 = sub_4F464(v7), (v33 & 1) != 0))
  {
    v34 = (*(v31 + 56) + 16 * v32);
    v36 = *v34;
    v35 = v34[1];

    v29(v7, v30);
  }

  else
  {

    v37 = (v29)(v7, v30);
    v35 = 0xEA00000000006E6FLL;
    v36 = 0x69736976656C6574;
  }

  *(inited + 48) = v36;
  *(inited + 56) = v35;
  v61[0] = v53;
  v61[1] = v21;
  __chkstk_darwin(v37);
  *(&v52 - 2) = v61;
  v38 = sub_13964(sub_334E8, (&v52 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if ((v38 & 1) == 0)
  {
    v41 = v59;
    v42 = v60;
    v40 = v56;
    (*(v59 + 16))(v56, v57, v60);
LABEL_19:
    v39 = 0;
    return (*(v41 + 56))(v40, v39, 1, v42);
  }

  v39 = 1;
  v40 = v56;
  v41 = v59;
  v42 = v60;
  return (*(v41 + 56))(v40, v39, 1, v42);
}

uint64_t sub_27771C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v133 = a3;
  v139 = a4;
  v6 = sub_2CDD90();
  v137 = *(v6 - 8);
  v138 = v6;
  v7 = v137[8];
  v8 = __chkstk_darwin(v6);
  v10 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v130 - v11;
  v13 = sub_2CDF60();
  v14 = *(v13 - 8);
  v140 = v13;
  v141 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v132 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v130 - v18;
  v20 = sub_2CE000();
  v134 = *(v20 - 8);
  v135 = v20;
  v21 = *(v134 + 64);
  v22 = __chkstk_darwin(v20);
  v136 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v131 = &v130 - v25;
  __chkstk_darwin(v24);
  v27 = &v130 - v26;
  v28 = sub_2CDF30();
  v143 = a1;
  if (v29)
  {
    v30 = v28;
    v31 = v29;

    v32 = sub_2CDF50();
    if (v33)
    {
      if (v30 == v32 && v31 == v33)
      {
        swift_bridgeObjectRelease_n();
LABEL_8:

        goto LABEL_14;
      }

      v35 = sub_2CEEA0();

      if (v35)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v144 = v30;
    v145 = v31;
    __chkstk_darwin(v34);
    *(&v130 - 2) = &v144;
    v36 = v142;
    v37 = sub_13964(sub_334E8, (&v130 - 4), a2);
    v142 = v36;

    if (v37)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v38 = v135;
      v39 = sub_3ED0(v135, static Logger.default);
      swift_beginAccess();
      v40 = v134;
      (*(v134 + 16))(v27, v39, v38);
      v41 = v140;
      v42 = v141;
      v138 = *(v141 + 16);
      v138(v19, v143, v140);
      v43 = sub_2CDFE0();
      v44 = sub_2CE690();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v136 = v45;
        v137 = swift_slowAlloc();
        v146 = v137;
        *v45 = 136446210;
        sub_278438();
        v46 = sub_2CEE70();
        v48 = v47;
        (*(v42 + 8))(v19, v41);
        v49 = sub_3F08(v46, v48, &v146);

        v50 = v136;
        *(v136 + 4) = v49;
        _os_log_impl(&dword_0, v43, v44, "User asked for device %{public}s by name. Skipping pruning", v50, 0xCu);
        sub_306C(v137);

        (*(v134 + 8))(v27, v135);
      }

      else
      {

        (*(v42 + 8))(v19, v41);
        (*(v40 + 8))(v27, v135);
      }

      v127 = v139;
      v138(v139, v143, v41);
      return (*(v42 + 56))(v127, 0, 1, v41);
    }
  }

LABEL_14:
  v51 = sub_2CDF50();
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = *(a2 + 16);
    v56 = (a2 + 40);
    v57 = v55 + 1;
    while (1)
    {
      if (!--v57)
      {
        goto LABEL_31;
      }

      v58 = *(v56 - 1);
      v59 = *v56;
      v60 = sub_2CE2B0();
      v62 = v61;
      if (v60 == sub_2CE2B0() && v62 == v63)
      {
        break;
      }

      v56 += 2;
      v65 = sub_2CEEA0();

      if (v65)
      {
        goto LABEL_24;
      }
    }

LABEL_24:
    v66 = v133;
    if (!*(v133 + 16))
    {
      goto LABEL_31;
    }

    v67 = sub_4F8DC(v53, v54);
    v69 = v68;

    if ((v69 & 1) == 0 || (v70 = *(*(v66 + 56) + 8 * v67), v71 = , v72 = sub_1DFB50(v71), , !v72))
    {
LABEL_31:

      goto LABEL_32;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v73 = v135;
    v74 = sub_3ED0(v135, static Logger.default);
    swift_beginAccess();
    v75 = v134;
    v76 = v131;
    (*(v134 + 16))(v131, v74, v73);

    v77 = sub_2CDFE0();
    v78 = sub_2CE690();

    v79 = os_log_type_enabled(v77, v78);
    v80 = v140;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v146 = v82;
      *v81 = 136315138;
      v83 = sub_3F08(v53, v54, &v146);

      *(v81 + 4) = v83;
      _os_log_impl(&dword_0, v77, v78, "All devices in room: %s are TVs and the user explicitly asked for the room in the intent. Skipping pruning", v81, 0xCu);
      sub_306C(v82);

      v80 = v140;

      (*(v75 + 8))(v131, v73);
    }

    else
    {

      (*(v75 + 8))(v76, v73);
    }

    v128 = v141;
    v129 = v139;
    (*(v141 + 16))(v139, v143, v80);
    return (*(v128 + 56))(v129, 0, 1, v80);
  }

  else
  {
LABEL_32:
    v84 = v136;
    v85 = sub_2CDF40();
    if (v86)
    {
      v87 = v85;
      v88 = v86;
      sub_20410(&unk_356F40, &unk_2D0740);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0E40;
      v90 = sub_2CDD70();
      sub_2CDD80();
      if (*(v90 + 16) && (v91 = sub_4F464(v12), (v92 & 1) != 0))
      {
        v93 = (*(v90 + 56) + 16 * v91);
        v95 = *v93;
        v94 = v93[1];
        v96 = v137[1];

        v96(v12, v138);
      }

      else
      {

        v96 = v137[1];
        v96(v12, v138);
        v94 = 0xE700000000000000;
        v95 = 0x7674656C707061;
      }

      *(inited + 32) = v95;
      *(inited + 40) = v94;
      v97 = sub_2CDD70();
      sub_2CDD60();
      if (*(v97 + 16) && (v98 = sub_4F464(v10), (v99 & 1) != 0))
      {
        v100 = (*(v97 + 56) + 16 * v98);
        v102 = *v100;
        v101 = v100[1];

        v96(v10, v138);
      }

      else
      {

        v103 = (v96)(v10, v138);
        v101 = 0xEA00000000006E6FLL;
        v102 = 0x69736976656C6574;
      }

      *(inited + 48) = v102;
      *(inited + 56) = v101;
      v144 = v87;
      v145 = v88;
      __chkstk_darwin(v103);
      *(&v130 - 2) = &v144;
      v104 = sub_13964(sub_13A68, (&v130 - 4), inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      if (v104)
      {
        return (*(v141 + 56))(v139, 1, 1, v140);
      }

      else
      {
        v123 = v141;
        v124 = v139;
        v125 = v140;
        (*(v141 + 16))(v139, v143, v140);
        return (*(v123 + 56))(v124, 0, 1, v125);
      }
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v106 = v135;
      v107 = sub_3ED0(v135, static Logger.default);
      swift_beginAccess();
      v108 = v134;
      (*(v134 + 16))(v84, v107, v106);
      v110 = v140;
      v109 = v141;
      v111 = v132;
      v138 = *(v141 + 16);
      v138(v132, v143, v140);
      v112 = v84;
      v113 = sub_2CDFE0();
      v114 = sub_2CE690();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v146 = v116;
        *v115 = 136446210;
        sub_278438();
        v117 = sub_2CEE70();
        v118 = v111;
        v119 = v117;
        v121 = v120;
        (*(v141 + 8))(v118, v110);
        v122 = sub_3F08(v119, v121, &v146);

        *(v115 + 4) = v122;
        _os_log_impl(&dword_0, v113, v114, "Cannot get deviceType for device: %{public}s. Skipping pruning", v115, 0xCu);
        sub_306C(v116);

        v109 = v141;

        (*(v108 + 8))(v136, v135);
      }

      else
      {

        (*(v109 + 8))(v111, v110);
        (*(v108 + 8))(v112, v106);
      }

      v126 = v139;
      v138(v139, v143, v110);
      return (*(v109 + 56))(v126, 0, 1, v110);
    }
  }
}

unint64_t sub_278438()
{
  result = qword_356408;
  if (!qword_356408)
  {
    sub_2CDF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_356408);
  }

  return result;
}

uint64_t sub_278490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v33 = a5;
  v34 = a8;
  v31 = a7;
  v32 = a1;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = a2;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "ResponseFactory+Utilities#makeResponseOutput...", v22, 2u);
    a2 = v30;
  }

  (*(v15 + 8))(v18, v14);
  v23 = sub_2CB460();
  if (!v23)
  {
    sub_2CB180();
    v23 = sub_2CB170();
  }

  v24 = v23;
  v25 = sub_2CB180();
  __chkstk_darwin(v25);
  v26 = v33;
  v27 = v34;
  *(&v29 - 10) = v31;
  *(&v29 - 9) = v27;
  *(&v29 - 8) = v24;
  *(&v29 - 7) = v26;
  *(&v29 - 6) = a6;
  *(&v29 - 5) = v9;
  *(&v29 - 4) = v32;
  *(&v29 - 3) = a2;
  *(&v29 - 2) = a3;
  *(&v29 - 1) = a4;
  sub_2CB0F0();
}

uint64_t sub_278728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v69 = a3;
  v66 = a6;
  v67 = a7;
  v65 = a5;
  v60 = a4;
  v68 = a2;
  v11 = type metadata accessor for ResponseFactoryOutputContext(0);
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v63 = v14;
  v64 = a9;
  v70 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a9 - 8);
  v15 = *(v62 + 64);
  __chkstk_darwin(v13);
  v58 = v16;
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CB260();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v57 = a10;
  v26 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  (*(v22 + 16))(v25, v26, v21);

  v27 = sub_2CDFE0();
  v28 = sub_2CE660();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v54 = a8;
    v30 = v29;
    v31 = swift_slowAlloc();
    v53 = v21;
    v32 = v31;
    v71 = v31;
    *v30 = 136315138;
    sub_2CB130();
    sub_2CD3C0();

    v33 = sub_2CB200();
    v35 = v34;
    (*(v55 + 8))(v20, v56);
    v36 = sub_3F08(v33, v35, &v71);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_0, v27, v28, "ResponseFactory+Utilities#makeResponseOutput with responseMode = %s", v30, 0xCu);
    sub_306C(v32);

    a8 = v54;

    (*(v22 + 8))(v25, v53);
  }

  else
  {

    (*(v22 + 8))(v25, v21);
  }

  v37 = v62;
  v38 = v59;
  v39 = v64;
  (*(v62 + 16))(v59, v60, v64);
  sub_27D16C(a8, v70);
  v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v41 = (v58 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v61 + 80) + v43 + 8) & ~*(v61 + 80);
  v45 = swift_allocObject();
  v46 = v57;
  *(v45 + 16) = v39;
  *(v45 + 24) = v46;
  (*(v37 + 32))(v45 + v40, v38, v39);
  *(v45 + v41) = v65;
  v48 = v66;
  v47 = v67;
  *(v45 + v42) = v66;
  *(v45 + v43) = v47;
  sub_27D1F0(v70, v45 + v44);

  v49 = v48;
  v50 = v47;
  sub_20410(qword_34C798, &qword_2D0DA0);
  sub_2CE4E0();
}

uint64_t sub_278C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a1;
  v16 = sub_2CE000();
  v8[10] = v16;
  v17 = *(v16 - 8);
  v8[11] = v17;
  v18 = *(v17 + 64) + 15;
  v8[12] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[13] = v19;
  *v19 = v8;
  v19[1] = sub_278DE0;

  return sub_2791B4(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_278DE0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_278F68;
  }

  else
  {
    v3 = sub_278EF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_278EF4()
{
  v1 = v0[12];
  *(v0[9] + 40) = v0[14] != 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_278F68()
{
  v28 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_2CDFE0();
  v7 = sub_2CE680();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 56);
    v17 = sub_2CEEF0();
    v19 = sub_3F08(v17, v18, &v27);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v6, v7, "ResponseFactory+Utilities#makeResponseOutput error: %s", v12, 0xCu);
    sub_306C(v13);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 80);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 112);
  **(v0 + 72) = v23;
  v24 = *(v0 + 96);
  *(*(v0 + 72) + 40) = v23 != 0;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2791B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = *(*(sub_2C9B80() - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v10 = sub_2CA630();
  v8[14] = v10;
  v11 = *(v10 - 8);
  v8[15] = v11;
  v12 = *(v11 + 64) + 15;
  v8[16] = swift_task_alloc();
  v13 = sub_2CE000();
  v8[17] = v13;
  v14 = *(v13 - 8);
  v8[18] = v14;
  v15 = *(v14 + 64) + 15;
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_279308, 0, 0);
}

uint64_t sub_279308()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "ResponseFactory+Utilities#responseOutput...", v7, 2u);
  }

  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = v0[9];

  (*(v9 + 8))(v8, v10);
  if (*v11)
  {
    v12 = *v11;
LABEL_9:
    swift_willThrow();
    swift_errorRetain();
    v14 = v0[19];
    v15 = v0[16];
    v16 = v0[13];

    v17 = v0[1];

    return v17();
  }

  v13 = v0[9];
  if (*(v13 + *(type metadata accessor for ResponseFactoryOutputContext(0) + 24)))
  {
    swift_errorRetain();
    goto LABEL_9;
  }

  v19 = sub_2CB460();
  if (!v19)
  {
    sub_2CB180();
    v19 = sub_2CB170();
  }

  v0[20] = v19;
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[9];
  v23 = v19;
  sub_2C9B20();
  v24 = swift_task_alloc();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  sub_2CA560();

  v25 = swift_task_alloc();
  v0[21] = v25;
  *v25 = v0;
  v25[1] = sub_2795CC;
  v26 = v0[16];
  v27 = v0[11];
  v28 = v0[12];
  v29 = v0[9];
  v30 = v0[10];
  v31 = v0[7];
  v32 = v0[8];
  v33 = v0[5];
  v34 = v0[6];

  return sub_279E20(v33, v26, v34, v31, v32, v29, v30, v27);
}

uint64_t sub_2795CC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_27978C;
  }

  else
  {
    v3 = sub_2796E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2796E0()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_27978C()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  (*(v3 + 8))(v2, v4);
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_279838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[2] = a3;
  v4 = sub_20410(&qword_356418, &unk_2D8890);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v51 = v46 - v6;
  v7 = sub_2CA1B0();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  __chkstk_darwin(v7);
  v48 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34C820, &unk_2D0A30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v47 = v46 - v12;
  v13 = sub_2CB260();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v46[1] = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&qword_356410, &qword_2D8888);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v46 - v21;
  v23 = sub_20410(&unk_353020, &unk_2D0970);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v46 - v25;
  v27 = type metadata accessor for ResponseFactoryOutputContext(0);
  sub_F3F4(a2 + v27[8], v26, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  v28 = v27[5];
  sub_F3F4(a2 + v28, v22, &qword_356410, &qword_2D8888);
  v29 = type metadata accessor for SnippetModelResponse();
  v30 = *(*(v29 - 8) + 48);
  if (v30(v22, 1, v29) == 1)
  {
    sub_30B8(v22, &qword_356410, &qword_2D8888);
  }

  else
  {
    v31 = *&v22[*(v29 + 28)];

    sub_27D3E8(v22);
  }

  sub_2CA5D0();
  sub_F3F4(a2 + v28, v20, &qword_356410, &qword_2D8888);
  if (v30(v20, 1, v29) == 1)
  {
    sub_30B8(v20, &qword_356410, &qword_2D8888);
  }

  else
  {
    v32 = &v20[*(v29 + 24)];
    v33 = *v32;
    v34 = *(v32 + 1);

    sub_27D3E8(v20);
  }

  v35 = v47;
  sub_2CA600();
  v36 = *(a2 + v27[10]);
  sub_2CA5E0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a2 + v27[7], v35, &qword_34C820, &unk_2D0A30);
  v37 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v37 - 8) + 48))(v35, 1, v37) == 1)
  {
    sub_30B8(v35, &qword_34C820, &unk_2D0A30);
  }

  else
  {
    v38 = *(v35 + *(v37 + 48));
    v39 = [v38 catId];

    sub_2CE270();
    v40 = sub_2CA130();
    (*(*(v40 - 8) + 8))(v35, v40);
  }

  sub_2CA590();
  sub_2CA610();
  v41 = v48;
  sub_2CA1C0();
  sub_2CA190();
  sub_2CA1A0();
  v43 = v49;
  v42 = v50;
  v44 = v51;
  (*(v49 + 16))(v51, v41, v50);
  (*(v43 + 56))(v44, 0, 1, v42);
  sub_2CA5C0();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_279E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[57] = a8;
  v9[58] = v8;
  v9[55] = a6;
  v9[56] = a7;
  v9[53] = a1;
  v9[54] = a2;
  v10 = sub_2CE000();
  v9[59] = v10;
  v11 = *(v10 - 8);
  v9[60] = v11;
  v12 = *(v11 + 64) + 15;
  v9[61] = swift_task_alloc();
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v9[65] = swift_task_alloc();
  v9[66] = swift_task_alloc();
  v9[67] = swift_task_alloc();
  v13 = *(*(sub_20410(&qword_34C820, &unk_2D0A30) - 8) + 64) + 15;
  v9[68] = swift_task_alloc();
  v9[69] = swift_task_alloc();
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  v14 = *(*(sub_20410(&qword_356410, &qword_2D8888) - 8) + 64) + 15;
  v9[72] = swift_task_alloc();
  v9[73] = swift_task_alloc();
  v9[74] = swift_task_alloc();
  v9[75] = swift_task_alloc();
  v9[76] = swift_task_alloc();
  v9[77] = swift_task_alloc();
  v15 = *(*(sub_20410(&unk_3530C0, &unk_2D0A40) - 8) + 64) + 15;
  v9[78] = swift_task_alloc();
  v9[79] = swift_task_alloc();
  v9[80] = swift_task_alloc();
  v9[81] = swift_task_alloc();
  v9[82] = swift_task_alloc();
  v9[83] = swift_task_alloc();
  v16 = sub_2CD230();
  v9[84] = v16;
  v17 = *(v16 - 8);
  v9[85] = v17;
  v18 = *(v17 + 64) + 15;
  v9[86] = swift_task_alloc();
  v9[87] = swift_task_alloc();
  v9[88] = swift_task_alloc();
  v9[89] = swift_task_alloc();
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();

  return _swift_task_switch(sub_27A10C, 0, 0);
}

uint64_t sub_27A10C()
{
  v1 = v0[77];
  v2 = v0[55];
  v3 = type metadata accessor for ResponseFactoryOutputContext(0);
  v4 = v2;
  v247 = *(v3 + 20);
  sub_F3F4(v2 + v247, v1, &qword_356410, &qword_2D8888);
  v5 = type metadata accessor for SnippetModelResponse();
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v1, 1, v5);
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[77];
  v248 = v6;
  if (v7 == 1)
  {
    sub_30B8(v11, &qword_356410, &qword_2D8888);
    (*(v8 + 56))(v10, 1, 1, v9);
LABEL_4:
    sub_30B8(v0[83], &unk_3530C0, &unk_2D0A40);
    v15 = v4;
    v16 = v247;
    goto LABEL_11;
  }

  v12 = v0[77];
  sub_F3F4(v11 + *(v5 + 20), v10, &unk_3530C0, &unk_2D0A40);
  v13 = v12;
  v6 = v248;
  sub_27D3E8(v13);
  v14 = *(v8 + 48);
  if (v14(v10, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v17 = v0[76];
  v18 = *(v0[85] + 32);
  v18(v0[91], v0[83], v0[84]);
  sub_F3F4(v4 + v247, v17, &qword_356410, &qword_2D8888);
  if (v248(v17, 1, v5) == 1)
  {
    v19 = v0[85];
    v20 = v0[84];
    v21 = v0[82];
    v22 = v0[76];
    (*(v19 + 8))(v0[91], v20);
    sub_30B8(v22, &qword_356410, &qword_2D8888);
    (*(v19 + 56))(v21, 1, 1, v20);
  }

  else
  {
    v246 = v18;
    v23 = v0[84];
    v24 = v0[82];
    v25 = v0[76];
    sub_F3F4(v25, v24, &unk_3530C0, &unk_2D0A40);
    sub_27D3E8(v25);
    if (v14(v24, 1, v23) != 1)
    {
      v208 = v0[71];
      v209 = v0[55];
      v246(v0[90], v0[82], v0[84]);
      sub_F3F4(v209 + *(v3 + 28), v208, &qword_34C820, &unk_2D0A30);
      v210 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
      if ((*(*(v210 - 8) + 48))(v208, 1, v210) != 1)
      {
        v215 = v0[71];
        v216 = *(v215 + *(v210 + 48));
        v0[92] = v216;
        v217 = sub_2CA130();
        (*(*(v217 - 8) + 8))(v215, v217);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v218 = v0[67];
        v219 = v0[59];
        v220 = v0[60];
        v221 = sub_3ED0(v219, static Logger.default);
        swift_beginAccess();
        (*(v220 + 16))(v218, v221, v219);
        v222 = sub_2CDFE0();
        v223 = sub_2CE670();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          _os_log_impl(&dword_0, v222, v223, "ResponseFactory+Utilities#responseOutput creating response with dialog and snippets on the result and conversation space", v224, 2u);
        }

        v225 = v0[91];
        v226 = v0[90];
        v227 = v0[85];
        v228 = v0[84];
        v229 = v0[67];
        v230 = v0[59];
        v231 = v0[60];

        (*(v231 + 8))(v229, v230);
        v0[25] = v228;
        v232 = sub_27D444();
        v0[26] = v232;
        v233 = sub_F390(v0 + 22);
        v234 = *(v227 + 16);
        v234(v233, v225, v228);
        v0[30] = v228;
        v0[31] = v232;
        v235 = sub_F390(v0 + 27);
        v234(v235, v226, v228);
        sub_20410(&unk_351900, &unk_2D0960);
        v236 = swift_allocObject();
        v0[93] = v236;
        *(v236 + 16) = xmmword_2D0770;
        *(v236 + 32) = v216;
        v237 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)[1];
        v238 = v216;
        v239 = swift_task_alloc();
        v0[94] = v239;
        *v239 = v0;
        v239[1] = sub_27B9A0;
        v240 = v0[57];
        v241 = v0[58];
        v242 = v0[56];
        v243 = v0[53];
        v244 = v0[54];

        return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(v243, v0 + 22, v0 + 27, v236, v244, v242, v240);
      }

      v15 = v4;
      v211 = v0[91];
      v212 = v0[84];
      v213 = v0[71];
      v214 = *(v0[85] + 8);
      v214(v0[90], v212);
      v214(v211, v212);
      sub_30B8(v213, &qword_34C820, &unk_2D0A30);
      goto LABEL_10;
    }

    (*(v0[85] + 8))(v0[91], v0[84]);
  }

  v15 = v4;
  sub_30B8(v0[82], &unk_3530C0, &unk_2D0A40);
LABEL_10:
  v16 = v247;
  v6 = v248;
LABEL_11:
  v26 = v0[75];
  sub_F3F4(v15 + v16, v26, &qword_356410, &qword_2D8888);
  v27 = v6(v26, 1, v5);
  v28 = v0[85];
  v29 = v0[84];
  v30 = v0[81];
  v31 = v0[75];
  if (v27 == 1)
  {
    sub_30B8(v31, &qword_356410, &qword_2D8888);
    (*(v28 + 56))(v30, 1, 1, v29);
LABEL_14:
    v34 = v0[81];
    v35 = &unk_3530C0;
    v36 = &unk_2D0A40;
    goto LABEL_15;
  }

  v32 = v0[75];
  sub_F3F4(v31 + *(v5 + 20), v0[81], &unk_3530C0, &unk_2D0A40);
  v33 = v32;
  v6 = v248;
  sub_27D3E8(v33);
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    goto LABEL_14;
  }

  v84 = v0[70];
  v85 = v0[55];
  (*(v0[85] + 32))(v0[89], v0[81], v0[84]);
  sub_F3F4(v85 + *(v3 + 28), v84, &qword_34C820, &unk_2D0A30);
  v86 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v86 - 8) + 48))(v84, 1, v86) != 1)
  {
    v156 = v0[70];
    v157 = *(v156 + *(v86 + 48));
    v0[95] = v157;
    v158 = sub_2CA130();
    (*(*(v158 - 8) + 8))(v156, v158);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v159 = v0[66];
    v160 = v0[59];
    v161 = v0[60];
    v162 = sub_3ED0(v160, static Logger.default);
    swift_beginAccess();
    (*(v161 + 16))(v159, v162, v160);
    v163 = sub_2CDFE0();
    v164 = sub_2CE670();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_0, v163, v164, "ResponseFactory+Utilities#responseOutput creating response with a dialog and a snippet on the result space", v165, 2u);
    }

    v166 = v0[89];
    v167 = v0[85];
    v168 = v0[84];
    v169 = v0[66];
    v170 = v0[59];
    v171 = v0[60];

    (*(v171 + 8))(v169, v170);
    v0[20] = v168;
    v0[21] = sub_27D444();
    v172 = sub_F390(v0 + 17);
    (*(v167 + 16))(v172, v166, v168);
    sub_20410(&unk_351900, &unk_2D0960);
    v173 = swift_allocObject();
    v0[96] = v173;
    *(v173 + 16) = xmmword_2D0770;
    *(v173 + 32) = v157;
    v174 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    v175 = v157;
    v176 = swift_task_alloc();
    v0[97] = v176;
    *v176 = v0;
    v176[1] = sub_27BD00;
    v177 = v0[57];
    v178 = v0[58];
    v179 = v0[56];
    v180 = v0[53];
    v181 = v0[54];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v180, v0 + 17, v173, v181, v179, v177);
  }

  v87 = v0[70];
  (*(v0[85] + 8))(v0[89], v0[84]);
  v35 = &qword_34C820;
  v36 = &unk_2D0A30;
  v34 = v87;
LABEL_15:
  sub_30B8(v34, v35, v36);
  v37 = v0[74];
  sub_F3F4(v15 + v16, v37, &qword_356410, &qword_2D8888);
  v38 = v6(v37, 1, v5);
  v39 = v0[85];
  v40 = v0[84];
  v41 = v0[80];
  v42 = v0[74];
  if (v38 == 1)
  {
    sub_30B8(v42, &qword_356410, &qword_2D8888);
    (*(v39 + 56))(v41, 1, 1, v40);
  }

  else
  {
    v43 = v0[74];
    sub_F3F4(v42 + *(v5 + 20), v0[80], &unk_3530C0, &unk_2D0A40);
    v44 = v43;
    v6 = v248;
    sub_27D3E8(v44);
    if ((*(v39 + 48))(v41, 1, v40) != 1)
    {
      (*(v0[85] + 32))(v0[88], v0[80], v0[84]);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v88 = v0[65];
      v89 = v0[59];
      v90 = v0[60];
      v91 = sub_3ED0(v89, static Logger.default);
      swift_beginAccess();
      (*(v90 + 16))(v88, v91, v89);
      v92 = sub_2CDFE0();
      v93 = sub_2CE670();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_0, v92, v93, "ResponseFactory+Utilities#responseOutput creating response with a snippet on the result space and no dialog", v94, 2u);
      }

      v95 = v0[88];
      v96 = v0[85];
      v97 = v0[84];
      v98 = v0[65];
      v99 = v0[59];
      v100 = v0[60];

      (*(v100 + 8))(v98, v99);
      v0[15] = v97;
      v0[16] = sub_27D444();
      v101 = sub_F390(v0 + 12);
      (*(v96 + 16))(v101, v95, v97);
      v102 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)[1];
      v103 = swift_task_alloc();
      v0[98] = v103;
      *v103 = v0;
      v103[1] = sub_27C040;
      v104 = v0[57];
      v105 = v0[58];
      v106 = v0[56];
      v107 = v0[53];
      v108 = v0[54];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)(v107, v0 + 12, v108, v106, v104);
    }
  }

  v45 = v0[73];
  sub_30B8(v0[80], &unk_3530C0, &unk_2D0A40);
  sub_F3F4(v15 + v16, v45, &qword_356410, &qword_2D8888);
  v46 = v6(v45, 1, v5);
  v47 = v0[85];
  v48 = v0[84];
  v49 = v0[79];
  v50 = v0[73];
  if (v46 == 1)
  {
    sub_30B8(v50, &qword_356410, &qword_2D8888);
    (*(v47 + 56))(v49, 1, 1, v48);
  }

  else
  {
    v51 = v0[73];
    sub_F3F4(v50, v0[79], &unk_3530C0, &unk_2D0A40);
    v52 = v51;
    v6 = v248;
    sub_27D3E8(v52);
    if ((*(v47 + 48))(v49, 1, v48) != 1)
    {
      v131 = v0[69];
      v132 = v0[55];
      (*(v0[85] + 32))(v0[87], v0[79], v0[84]);
      sub_F3F4(v132 + *(v3 + 28), v131, &qword_34C820, &unk_2D0A30);
      v133 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
      if ((*(*(v133 - 8) + 48))(v131, 1, v133) != 1)
      {
        v182 = v0[69];
        v183 = *(v182 + *(v133 + 48));
        v0[99] = v183;
        v184 = sub_2CA130();
        (*(*(v184 - 8) + 8))(v182, v184);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v185 = v0[64];
        v186 = v0[59];
        v187 = v0[60];
        v188 = sub_3ED0(v186, static Logger.default);
        swift_beginAccess();
        (*(v187 + 16))(v185, v188, v186);
        v189 = sub_2CDFE0();
        v190 = sub_2CE670();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          *v191 = 0;
          _os_log_impl(&dword_0, v189, v190, "ResponseFactory+Utilities#responseOutput creating response with a dialog and a snippet on the conversation space", v191, 2u);
        }

        v192 = v0[87];
        v193 = v0[85];
        v194 = v0[84];
        v195 = v0[64];
        v196 = v0[59];
        v197 = v0[60];

        (*(v197 + 8))(v195, v196);
        v0[10] = v194;
        v0[11] = sub_27D444();
        v198 = sub_F390(v0 + 7);
        (*(v193 + 16))(v198, v192, v194);
        sub_20410(&unk_351900, &unk_2D0960);
        v199 = swift_allocObject();
        v0[100] = v199;
        *(v199 + 16) = xmmword_2D0770;
        *(v199 + 32) = v183;
        v200 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
        v201 = v183;
        v202 = swift_task_alloc();
        v0[101] = v202;
        *v202 = v0;
        v202[1] = sub_27C354;
        v203 = v0[57];
        v204 = v0[58];
        v205 = v0[56];
        v206 = v0[53];
        v207 = v0[54];

        return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v206, v0 + 7, v199, v207, v205, v203);
      }

      v134 = v0[69];
      (*(v0[85] + 8))(v0[87], v0[84]);
      v54 = &qword_34C820;
      v55 = &unk_2D0A30;
      v53 = v134;
      goto LABEL_22;
    }
  }

  v53 = v0[79];
  v54 = &unk_3530C0;
  v55 = &unk_2D0A40;
LABEL_22:
  sub_30B8(v53, v54, v55);
  v56 = v0[72];
  sub_F3F4(v15 + v16, v56, &qword_356410, &qword_2D8888);
  v57 = v6(v56, 1, v5);
  v58 = v0[85];
  v59 = v0[84];
  v60 = v0[78];
  v61 = v0[72];
  if (v57 == 1)
  {
    sub_30B8(v0[72], &qword_356410, &qword_2D8888);
    (*(v58 + 56))(v60, 1, 1, v59);
    goto LABEL_25;
  }

  sub_F3F4(v0[72], v0[78], &unk_3530C0, &unk_2D0A40);
  sub_27D3E8(v61);
  if ((*(v58 + 48))(v60, 1, v59) == 1)
  {
LABEL_25:
    v62 = v0[68];
    v63 = v0[55];
    sub_30B8(v0[78], &unk_3530C0, &unk_2D0A40);
    sub_F3F4(v63 + *(v3 + 28), v62, &qword_34C820, &unk_2D0A30);
    v64 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    v65 = (*(*(v64 - 8) + 48))(v62, 1, v64);
    v66 = v0[68];
    if (v65 == 1)
    {
      sub_30B8(v66, &qword_34C820, &unk_2D0A30);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v68 = v0[60];
      v67 = v0[61];
      v69 = v0[59];
      v70 = sub_3ED0(v69, static Logger.default);
      swift_beginAccess();
      (*(v68 + 16))(v67, v70, v69);
      v71 = sub_2CDFE0();
      v72 = sub_2CE670();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v71, v72, "ResponseFactory+Utilities#responseOutput creating an empty response", v73, 2u);
      }

      v75 = v0[60];
      v74 = v0[61];
      v76 = v0[59];

      (*(v75 + 8))(v74, v76);
      v77 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
      v78 = swift_task_alloc();
      v0[106] = v78;
      *v78 = v0;
      v78[1] = sub_27CCBC;
      v79 = v0[57];
      v80 = v0[58];
      v81 = v0[56];
      v82 = v0[53];
      v83 = v0[54];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v82, _swiftEmptyArrayStorage, v83, v81, v79);
    }

    else
    {
      v109 = *(v66 + *(v64 + 48));
      v0[103] = v109;
      v110 = v66;
      v111 = sub_2CA130();
      (*(*(v111 - 8) + 8))(v110, v111);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v112 = v0[62];
      v113 = v0[59];
      v114 = v0[60];
      v115 = sub_3ED0(v113, static Logger.default);
      swift_beginAccess();
      (*(v114 + 16))(v112, v115, v113);
      v116 = sub_2CDFE0();
      v117 = sub_2CE670();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_0, v116, v117, "ResponseFactory+Utilities#responseOutput creating response with a dialog and no snippets", v118, 2u);
      }

      v119 = v0[62];
      v120 = v0[59];
      v121 = v0[60];

      (*(v121 + 8))(v119, v120);
      sub_20410(&unk_351900, &unk_2D0960);
      v122 = swift_allocObject();
      v0[104] = v122;
      *(v122 + 16) = xmmword_2D0770;
      *(v122 + 32) = v109;
      v123 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
      v124 = v109;
      v125 = swift_task_alloc();
      v0[105] = v125;
      *v125 = v0;
      v125[1] = sub_27C9A8;
      v126 = v0[57];
      v127 = v0[58];
      v128 = v0[56];
      v129 = v0[53];
      v130 = v0[54];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v129, v122, v130, v128, v126);
    }
  }

  (*(v0[85] + 32))(v0[86], v0[78], v0[84]);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v135 = v0[63];
  v136 = v0[59];
  v137 = v0[60];
  v138 = sub_3ED0(v136, static Logger.default);
  swift_beginAccess();
  (*(v137 + 16))(v135, v138, v136);
  v139 = sub_2CDFE0();
  v140 = sub_2CE670();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&dword_0, v139, v140, "ResponseFactory+Utilities#responseOutput creating response with a snippet on the conversation space and no dialog.", v141, 2u);
  }

  v142 = v0[86];
  v143 = v0[85];
  v144 = v0[84];
  v145 = v0[63];
  v146 = v0[59];
  v147 = v0[60];

  (*(v147 + 8))(v145, v146);
  v0[5] = v144;
  v0[6] = sub_27D444();
  v148 = sub_F390(v0 + 2);
  (*(v143 + 16))(v148, v142, v144);
  v149 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)[1];
  v150 = swift_task_alloc();
  v0[102] = v150;
  *v150 = v0;
  v150[1] = sub_27C694;
  v151 = v0[57];
  v152 = v0[58];
  v153 = v0[56];
  v154 = v0[53];
  v155 = v0[54];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)(v154, v0 + 2, v155, v153, v151);
}

uint64_t sub_27B9A0()
{
  v1 = *v0;
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 744);
  v5 = *v0;

  sub_306C((v1 + 216));
  sub_306C((v1 + 176));

  return _swift_task_switch(sub_27BAC8, 0, 0);
}

uint64_t sub_27BAC8()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  v18 = *(v0 + 632);
  v19 = *(v0 + 624);
  v20 = *(v0 + 616);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 576);
  v26 = *(v0 + 568);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v29 = *(v0 + 544);
  v30 = *(v0 + 536);
  v31 = *(v0 + 528);
  v32 = *(v0 + 520);
  v33 = *(v0 + 512);
  v34 = *(v0 + 504);
  v35 = *(v0 + 496);
  v36 = *(v0 + 488);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_27BD00()
{
  v1 = *v0;
  v2 = *(*v0 + 776);
  v3 = *(*v0 + 768);
  v5 = *v0;

  sub_306C((v1 + 136));

  return _swift_task_switch(sub_27BE20, 0, 0);
}

uint64_t sub_27BE20()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 624);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 544);
  v28 = *(v0 + 536);
  v29 = *(v0 + 528);
  v30 = *(v0 + 520);
  v31 = *(v0 + 512);
  v32 = *(v0 + 504);
  v33 = *(v0 + 496);
  v34 = *(v0 + 488);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_27C040()
{
  v1 = *v0;
  v2 = *(*v0 + 784);
  v4 = *v0;

  sub_306C((v1 + 96));

  return _swift_task_switch(sub_27C144, 0, 0);
}

uint64_t sub_27C144()
{
  (*(v0[85] + 8))(v0[88], v0[84]);
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[74];
  v19 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[61];

  v11 = v0[1];

  return v11();
}

uint64_t sub_27C354()
{
  v1 = *v0;
  v2 = *(*v0 + 808);
  v3 = *(*v0 + 800);
  v5 = *v0;

  sub_306C((v1 + 56));

  return _swift_task_switch(sub_27C474, 0, 0);
}

uint64_t sub_27C474()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 624);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 544);
  v28 = *(v0 + 536);
  v29 = *(v0 + 528);
  v30 = *(v0 + 520);
  v31 = *(v0 + 512);
  v32 = *(v0 + 504);
  v33 = *(v0 + 496);
  v34 = *(v0 + 488);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_27C694()
{
  v1 = *v0;
  v2 = *(*v0 + 816);
  v4 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_27C798, 0, 0);
}

uint64_t sub_27C798()
{
  (*(v0[85] + 8))(v0[86], v0[84]);
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[74];
  v19 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[61];

  v11 = v0[1];

  return v11();
}

uint64_t sub_27C9A8()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 832);
  v4 = *v0;

  return _swift_task_switch(sub_27CAC0, 0, 0);
}

uint64_t sub_27CAC0()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 664);
  v8 = *(v0 + 656);
  v9 = *(v0 + 648);
  v10 = *(v0 + 640);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 616);
  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = *(v0 + 584);
  v20 = *(v0 + 576);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  v23 = *(v0 + 552);
  v24 = *(v0 + 544);
  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 520);
  v28 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 496);
  v31 = *(v0 + 488);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_27CCBC()
{
  v1 = *v0;
  v2 = *(*v0 + 848);
  v34 = *v0;

  v3 = v1[91];
  v4 = v1[90];
  v5 = v1[89];
  v6 = v1[88];
  v7 = v1[87];
  v8 = v1[86];
  v9 = v1[83];
  v10 = v1[82];
  v11 = v1[81];
  v15 = v1[80];
  v16 = v1[79];
  v17 = v1[78];
  v18 = v1[77];
  v19 = v1[76];
  v20 = v1[75];
  v21 = v1[74];
  v22 = v1[73];
  v23 = v1[72];
  v24 = v1[71];
  v25 = v1[70];
  v26 = v1[69];
  v27 = v1[68];
  v28 = v1[67];
  v29 = v1[66];
  v30 = v1[65];
  v31 = v1[64];
  v32 = v1[63];
  v33 = v1[62];
  v12 = v1[61];

  v13 = *(v34 + 8);

  return v13();
}

uint64_t sub_27D16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseFactoryOutputContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27D1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseFactoryOutputContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27D254(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for ResponseFactoryOutputContext(0) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_E664;

  return sub_278C98(a1, v1 + v7, v13, v14, v15, v1 + v12, v6, v5);
}

uint64_t sub_27D3E8(uint64_t a1)
{
  v2 = type metadata accessor for SnippetModelResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27D444()
{
  result = qword_34CC78;
  if (!qword_34CC78)
  {
    sub_2CD230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC78);
  }

  return result;
}

void sub_27D4C4()
{
  sub_CEE50(319, &qword_356490, &qword_356498, &qword_2D88C8);
  if (v0 <= 0x3F)
  {
    sub_27D730(319, &unk_3564A0, &type metadata accessor for AppIntentPerformOptions);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27D5A4()
{
  sub_CEE50(319, &qword_34F358, &qword_34C6E0, &unk_2D0730);
  if (v0 <= 0x3F)
  {
    sub_27D730(319, &qword_356540, type metadata accessor for SnippetModelResponse);
    if (v1 <= 0x3F)
    {
      sub_CEE50(319, &qword_34F350, &qword_34C6E8, &unk_2D0FF0);
      if (v2 <= 0x3F)
      {
        sub_27D730(319, &qword_355FB0, &type metadata accessor for NLContextUpdate);
        if (v3 <= 0x3F)
        {
          sub_CEE50(319, &qword_34EE80, &unk_34EE88, qword_2D2CB8);
          if (v4 <= 0x3F)
          {
            sub_27D730(319, &unk_356548, type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_27D730(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t _s21ConfirmIntentStrategyCMa_1()
{
  result = qword_3565B8;
  if (!qword_3565B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27D7D0()
{
  sub_27FDA8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void *sub_27D888()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  sub_30B8(v0 + qword_3566B0, qword_34F2C8, &unk_2D3070);
  return v0;
}

uint64_t sub_27D8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v84 = a2;
  v2 = sub_20410(qword_34F2C8, &unk_2D3070);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v78 = &v75 - v4;
  v5 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v75 - v10;
  v87 = sub_2CA870();
  v86 = *(v87 - 8);
  v11 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CA7B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2CE000();
  v17 = *(v94 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v94);
  v81 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v82 = &v75 - v22;
  v23 = __chkstk_darwin(v21);
  v77 = &v75 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v75 - v26;
  __chkstk_darwin(v25);
  v29 = &v75 - v28;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = v94;
  v31 = sub_3ED0(v94, static Logger.default);
  swift_beginAccess();
  v32 = v17[2];
  v91 = v17 + 2;
  v92 = v31;
  v90 = v32;
  v32(v29, v31, v30);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "ConfirmIntentStrategy#actionForInput...", v35, 2u);
  }

  v36 = v17[1];
  v37 = v94;
  v89 = v17 + 1;
  v36(v29, v94);
  v90(v27, v92, v37);
  v38 = v83;
  (*(v14 + 16))(v83, v93, v13);
  v39 = sub_2CDFE0();
  v40 = sub_2CE690();
  v41 = os_log_type_enabled(v39, v40);
  v80 = v9;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v76 = v36;
    v43 = v42;
    v44 = swift_slowAlloc();
    v97[0] = v44;
    *v43 = 136315138;
    sub_280B28(&qword_34CD00, &type metadata accessor for Input);
    v45 = sub_2CEE70();
    v47 = v46;
    (*(v14 + 8))(v38, v13);
    v48 = sub_3F08(v45, v47, v97);
    v49 = v94;

    *(v43 + 4) = v48;
    _os_log_impl(&dword_0, v39, v40, "ConfirmIntentStrategy#actionForInput input:%s", v43, 0xCu);
    sub_306C(v44);

    v36 = v76;

    v36(v27, v49);
  }

  else
  {

    (*(v14 + 8))(v38, v13);
    v36(v27, v94);
  }

  v50 = v85;
  sub_2CA790();
  v51 = sub_D1D64(v50, &v95);
  (*(v86 + 8))(v50, v87, v51);
  if (v96)
  {
    sub_F338(&v95, v97);
    sub_35E0(v97, v97[3]);
    v52 = v88;
    sub_2CD480();
    v53 = sub_2CD490();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
LABEL_10:
      v90(v82, v92, v94);
      v55 = sub_2CDFE0();
      v56 = sub_2CE690();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_0, v55, v56, "ConfirmIntentStrategy#actionForInput no valid confirmation in the intent, ignoring", v57, 2u);
      }

      v36(v82, v94);
      sub_2C9CF0();
      goto LABEL_21;
    }

    v63 = v80;
    sub_F3F4(v88, v80, &qword_34CCE8, &unk_2D0E20);
    v64 = (*(v54 + 88))(v63, v53);
    if (v64 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v65 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    else
    {
      if (v64 != enum case for CommonAudio.Confirmation.no(_:))
      {
        if (v64 == enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v90(v77, v92, v94);
          v72 = sub_2CDFE0();
          v73 = sub_2CE690();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_0, v72, v73, "ConfirmIntentStrategy#actionForInput request is cancelled", v74, 2u);
          }

          v36(v77, v94);
          sub_2C9CD0();
          goto LABEL_21;
        }

        (*(v54 + 8))(v63, v53);
        goto LABEL_10;
      }

      v65 = &enum case for ConfirmationResponse.rejected(_:);
    }

    v66 = *v65;
    v67 = sub_2CA360();
    v68 = *(v67 - 8);
    v69 = v78;
    (*(v68 + 104))(v78, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = qword_3566B0;
    v71 = v79;
    swift_beginAccess();
    sub_280AB8(v69, v71 + v70);
    swift_endAccess();
    sub_2C9CE0();
LABEL_21:
    sub_30B8(v88, &qword_34CCE8, &unk_2D0E20);
    return sub_306C(v97);
  }

  sub_30B8(&v95, &qword_34CCF0, &unk_2D1270);
  v58 = v81;
  v90(v81, v92, v94);
  v59 = sub_2CDFE0();
  v60 = sub_2CE690();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "ConfirmIntentStrategy#actionForInput received invalid intent", v61, 2u);
  }

  v36(v58, v94);
  return sub_2C9CF0();
}

uint64_t sub_27E3C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 16);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a3;
  v14 = *(*v12 + 240);

  v15 = a2;

  v16 = a3;
  v14(a1, v15, a3, sub_2808A8, v13);
}

uint64_t sub_27E4BC(uint64_t *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v76 = a7;
  v87 = a5;
  v88 = a6;
  v85 = a3;
  v86 = a4;
  v81 = a1;
  v7 = *a2;
  v84 = a2;
  v72 = v7;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v83 = &v70 - v10;
  v73 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v74 = *(v73 - 8);
  v11 = *(v74 + 64);
  v12 = __chkstk_darwin(v73);
  v75 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v79 = &v70 - v14;
  __chkstk_darwin(v13);
  v82 = &v70 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v80 = &v70 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v78 = &v70 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v77 = &v70 - v24;
  v71 = sub_2CCB30();
  v25 = *(v71 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v71);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCAC0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (&v70 - v36);
  sub_F3F4(v81, &v70 - v36, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v37;
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.ccifs(_:), v29);
    v39 = v71;
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v71);
    swift_getErrorValue();
    sub_2CEEF0();
    v83 = sub_2CCAE0();

    (*(v25 + 8))(v28, v39);
    (*(v30 + 8))(v33, v29);
    v40 = v84[7];
    v84 = sub_35E0(v84 + 3, v84[6]);
    v41 = enum case for ActivityType.failed(_:);
    v42 = sub_2C9C20();
    v43 = *(v42 - 8);
    v44 = v77;
    (*(v43 + 104))(v77, v41, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v45 = sub_2CA130();
    v46 = v78;
    (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
    v47 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v48 = sub_2C98F0();
    v49 = *(v48 - 8);
    v50 = v80;
    (*(v49 + 104))(v80, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    sub_2CB4E0();

    sub_30B8(v50, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v46, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v44, &qword_34CB88, &unk_2D0D90);
    v89[0] = v38;
    v90 = 1;
    swift_errorRetain();
    v87(v89);

    return sub_30B8(v89, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v52 = v82;
    sub_24BE0(v37, v82);
    v54 = *(v72 + 80);
    v53 = *(v72 + 88);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v55 = v86;
    sub_B7294(v83);
    v56 = v84;
    v81 = sub_35E0(v84 + 8, v84[11]);
    v57 = v79;
    sub_F3F4(v52, v79, &qword_34C6E8, &unk_2D0FF0);
    v58 = *(v57 + *(v73 + 48));
    v59 = v52;
    v60 = v75;
    sub_F3F4(v59, v75, &qword_34C6E8, &unk_2D0FF0);
    v61 = (*(v74 + 80) + 56) & ~*(v74 + 80);
    v62 = swift_allocObject();
    v62[2] = v54;
    v62[3] = v53;
    v63 = v85;
    v62[4] = v56;
    v62[5] = v63;
    v62[6] = v55;
    sub_24BE0(v60, v62 + v61);
    v64 = (v62 + ((v11 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
    v65 = v88;
    *v64 = v87;
    v64[1] = v65;
    v66 = *v81;

    v67 = v55;

    v68 = v83;
    sub_1C1A94(v57, v58, v83, sub_2809DC, v62);

    sub_30B8(v68, &unk_353020, &unk_2D0970);
    sub_30B8(v82, &qword_34C6E8, &unk_2D0FF0);
    v69 = sub_2CA130();
    return (*(*(v69 - 8) + 8))(v57, v69);
  }
}

uint64_t sub_27EDF0(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6)
{
  v81 = a5;
  v82 = a6;
  v79 = a3;
  v80 = a4;
  v77 = a1;
  v78 = a2;
  v71 = *a2;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v75 = &v66 - v8;
  v67 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v68 = *(v67 - 8);
  v9 = *(v68 + 64);
  v10 = __chkstk_darwin(v67);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v73 = &v66 - v12;
  __chkstk_darwin(v11);
  v70 = &v66 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v76 = (&v66 - v16);
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v74 = &v66 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v72 = &v66 - v22;
  v66 = sub_2CCB30();
  v23 = *(v66 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v66);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CCAC0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20410(&unk_3519A0, &qword_2D0980);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (&v66 - v34);
  sub_F3F4(v77, &v66 - v34, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    (*(v28 + 104))(v31, enum case for AdditionalMetricsDescription.ModuleName.ccifs(_:), v27);
    v37 = v66;
    (*(v23 + 104))(v26, enum case for AdditionalMetricsDescription.SourceFunction.rejResp(_:), v66);
    swift_getErrorValue();
    sub_2CEEF0();
    v77 = sub_2CCAE0();

    (*(v23 + 8))(v26, v37);
    (*(v28 + 8))(v31, v27);
    v38 = v78[7];
    v78 = sub_35E0(v78 + 3, v78[6]);
    v39 = enum case for ActivityType.failed(_:);
    v40 = sub_2C9C20();
    v41 = *(v40 - 8);
    v42 = v72;
    (*(v41 + 104))(v72, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    v43 = sub_2CA130();
    v44 = v74;
    (*(*(v43 - 8) + 56))(v74, 1, 1, v43);
    v45 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v46 = sub_2C98F0();
    v47 = *(v46 - 8);
    v48 = v76;
    (*(v47 + 104))(v76, v45, v46);
    (*(v47 + 56))(v48, 0, 1, v46);
    sub_2CB4E0();

    sub_30B8(v48, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v44, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v42, &qword_34CB88, &unk_2D0D90);
    v83[0] = v36;
    v84 = 1;
    swift_errorRetain();
    v81(v83);

    return sub_30B8(v83, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v50 = v70;
    sub_24BE0(v35, v70);
    v51 = v78;
    v76 = sub_35E0(v78 + 8, v78[11]);
    v52 = v73;
    sub_F3F4(v50, v73, &qword_34C6E8, &unk_2D0FF0);
    v77 = *(v52 + *(v67 + 48));
    v53 = sub_2CA000();
    v54 = v75;
    (*(*(v53 - 8) + 56))(v75, 1, 1, v53);
    v55 = v69;
    sub_F3F4(v50, v69, &qword_34C6E8, &unk_2D0FF0);
    v56 = (*(v68 + 80) + 56) & ~*(v68 + 80);
    v57 = swift_allocObject();
    v58 = v71;
    v57[2] = *(v71 + 80);
    v57[3] = *(v58 + 88);
    v57[4] = v51;
    v59 = v80;
    v57[5] = v79;
    v57[6] = v59;
    sub_24BE0(v55, v57 + v56);
    v60 = (v57 + ((v9 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
    v61 = v82;
    *v60 = v81;
    v60[1] = v61;
    v62 = *v76;

    v63 = v59;

    v64 = v77;
    sub_1C2330(v52, v77, v54, sub_280894, v57);

    sub_30B8(v54, &unk_353020, &unk_2D0970);
    sub_30B8(v50, &qword_34C6E8, &unk_2D0FF0);
    v65 = sub_2CA130();
    return (*(*(v65 - 8) + 8))(v52, v65);
  }
}

uint64_t sub_27F700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, unsigned int *a8, unsigned int *a9)
{
  v54 = a8;
  v65 = a7;
  v66 = a6;
  v60 = a5;
  v62 = a3;
  v63 = a4;
  v56 = a2;
  v64 = a1;
  v58 = a9;
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v61 = &v53 - v11;
  v12 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(v12 - 8);
  v59 = v12 - 8;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v55 = &v53 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v57 = &v53 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v53 - v21;
  v23 = sub_2CCB20();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCB30();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2CCAC0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 104))(v37, enum case for AdditionalMetricsDescription.ModuleName.ccifs(_:), v33);
  (*(v29 + 104))(v32, *v54, v28);
  (*(v24 + 104))(v27, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v23);
  v38 = sub_2CCAD0();
  v53 = v39;
  v54 = v38;
  (*(v24 + 8))(v27, v23);
  (*(v29 + 8))(v32, v28);
  (*(v34 + 8))(v37, v33);
  v40 = v56[7];
  sub_35E0(v56 + 3, v56[6]);
  v41 = *v58;
  v42 = sub_2C9C20();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v22, v41, v42);
  (*(v43 + 56))(v22, 0, 1, v42);
  v44 = v55;
  sub_F3F4(v60, v55, &qword_34C6E8, &unk_2D0FF0);

  v45 = sub_2CA130();
  v46 = *(v45 - 8);
  v47 = v57;
  (*(v46 + 32))(v57, v44, v45);
  (*(v46 + 56))(v47, 0, 1, v45);
  v48 = enum case for SiriKitReliabilityCodes.success(_:);
  v49 = sub_2C98F0();
  v50 = *(v49 - 8);
  v51 = v61;
  (*(v50 + 104))(v61, v48, v49);
  (*(v50 + 56))(v51, 0, 1, v49);
  sub_2CB4E0();

  sub_30B8(v51, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v47, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v22, &qword_34CB88, &unk_2D0D90);
  return v66(v64);
}

uint64_t sub_27FD38()
{
  sub_27D888();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_27FDA8()
{
  if (!qword_356738)
  {
    sub_2CA360();
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_356738);
    }
  }
}

uint64_t sub_27FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(a6 + 80);
  v15 = *(a6 + 88);
  v16 = type metadata accessor for CommonConfirmIntentFlowStrategy();

  return a8(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_27FF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 + 80);
  v16 = *(a7 + 88);
  v17 = type metadata accessor for CommonConfirmIntentFlowStrategy();

  return ConfirmIntentFlowStrategy.makeErrorResponse(app:intent:intentResponse:error:_:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_280010(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v5 = v4;
  v65 = a4;
  v66 = a3;
  v61 = a2;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2CA320();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v8 = sub_2CEFA0();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  __chkstk_darwin(v8);
  v62 = (&v57 - v10);
  v11 = sub_2CE000();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v57 - v16;
  v58 = sub_20410(qword_34F2C8, &unk_2D3070);
  v17 = *(*(v58 - 8) + 64);
  v18 = __chkstk_darwin(v58);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v57 - v21;
  v23 = sub_2CA360();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = qword_3566B0;
  swift_beginAccess();
  sub_F3F4(v5 + v28, v22, qword_34F2C8, &unk_2D3070);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_30B8(v22, qword_34F2C8, &unk_2D3070);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v29 = v68;
    v30 = sub_3ED0(v68, static Logger.default);
    swift_beginAccess();
    v31 = v67;
    (*(v67 + 16))(v15, v30, v29);
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "ConfirmIntentStrategy#parseConfirmationResponse confirmationResponse is nil, this is not expected", v34, 2u);
    }

    (*(v31 + 8))(v15, v29);
    v35 = sub_2CB850();
    sub_280B28(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, enum case for PlaybackCode.ceGE52(_:), v35);
    v38 = v62;
    *v62 = v36;
    v39 = v64;
    swift_storeEnumTagMultiPayload();
    v66(v38);
    return (*(v63 + 8))(v38, v39);
  }

  else
  {
    v41 = *(v24 + 32);
    v57 = v27;
    v41(v27, v22, v23);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v42 = v68;
    v43 = sub_3ED0(v68, static Logger.default);
    swift_beginAccess();
    v44 = v67;
    v45 = v59;
    (*(v67 + 16))(v59, v43, v42);

    v46 = sub_2CDFE0();
    v47 = sub_2CE690();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69 = v49;
      *v48 = 136315138;
      sub_F3F4(v5 + v28, v20, qword_34F2C8, &unk_2D3070);
      v50 = sub_2CE2A0();
      v52 = sub_3F08(v50, v51, &v69);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_0, v46, v47, "ConfirmIntentStrategy#parseConfirmationResponse confirmation response: %s", v48, 0xCu);
      sub_306C(v49);

      (*(v67 + 8))(v45, v68);
    }

    else
    {

      (*(v44 + 8))(v45, v42);
    }

    v53 = v57;
    (*(v24 + 16))(v20, v57, v23);
    (*(v24 + 56))(v20, 0, 1, v23);
    v54 = v61;
    v55 = v62;
    sub_2CA310();
    v56 = v64;
    swift_storeEnumTagMultiPayload();
    v66(v55);
    (*(v63 + 8))(v55, v56);
    return (*(v24 + 8))(v53, v23);
  }
}

uint64_t sub_2807C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a4;

  v12 = a2;

  sub_2850FC(a1, sub_280884, v11);
}

uint64_t sub_2808B8()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 32);

  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = sub_2CA130();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_2809F0(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v7 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_27F700(a1, *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, *v9, *(v9 + 8), a2, a3);
}

uint64_t sub_280AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(qword_34F2C8, &unk_2D3070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_280B28(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_280B70()
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

Swift::Int sub_280BE4()
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

uint64_t sub_280C38@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_330F28;
  v7._object = v3;
  v5 = sub_2CEDF0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_280CAC()
{
  type metadata accessor for DialogHistoryProvider();
  v0 = swift_allocObject();
  result = sub_280D48();
  *(v0 + 16) = result;
  qword_35F900 = v0;
  return result;
}

uint64_t sub_280CEC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_280D48()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_2CE260();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_30B8(&v8, &qword_34CEA0, &qword_2D0FC0);
    return sub_9062C(_swiftEmptyArrayStorage);
  }

  v3 = sub_2CE260();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_2CEC00();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  sub_20410(&qword_356808, &qword_2D8AD8);
  if (swift_dynamicCast())
  {
    return v6;
  }

  return sub_9062C(_swiftEmptyArrayStorage);
}

uint64_t sub_280EB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D05D8();
  v52 = a4;
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v53 = v8;
    v54 = v9;
    v57 = 0x7C295C3F2A2E285CLL;
    v58 = 0xEF5D5C3F2A2E5B5CLL;
    sub_B96A0();
    v12 = sub_2CEBD0();
    v14 = v13;
    v15 = sub_2CE320();
    result = sub_2CE320();
    if (__OFSUB__(v15, result))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v15 - result < 35 || sub_2CE320() < 6)
    {
    }

    else
    {

      v10 = v12;
      v11 = v14;
    }
  }

  else
  {
    v10 = sub_1D05D8();
    v11 = v17;
  }

  v18 = sub_1D05E4();
  if (!v19)
  {
    v20 = sub_1D05E4();
    v21 = v31;
    v30 = a1;
    goto LABEL_25;
  }

  v20 = v18;
  v21 = v19;
  v49 = a5;
  v22 = sub_1D05D8();
  if (!v23)
  {
    v32 = sub_1D05D8();
    v30 = a1;
    if (!v33)
    {
      goto LABEL_25;
    }

    v24 = v32;
    v28 = v33;
    goto LABEL_19;
  }

  v24 = v22;
  v25 = v23;
  v53 = v22;
  v54 = v23;
  v57 = 0x7C295C3F2A2E285CLL;
  v58 = 0xEF5D5C3F2A2E5B5CLL;
  sub_B96A0();
  v26 = sub_2CEBD0();
  v28 = v27;
  v29 = sub_2CE320();
  result = sub_2CE320();
  if (__OFSUB__(v29, result))
  {
LABEL_45:
    __break(1u);
    return result;
  }

  if (v29 - result >= 35)
  {
    v30 = a1;
    if (sub_2CE320() <= 5)
    {

      v28 = v25;
    }

    else
    {

      v24 = v26;
    }

LABEL_19:
    a5 = v49;
    goto LABEL_20;
  }

  v28 = v25;
  a5 = v49;
  v30 = a1;
LABEL_20:
  if (sub_2CE320() > 59)
  {
  }

  else
  {
    v53 = v20;
    v54 = v21;
    v57 = v24;
    v58 = v28;
    sub_B96A0();
    v34 = sub_2CEBF0();

    if ((v34 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_25:
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v36 = inited;
  *(inited + 16) = xmmword_2D10E0;
  *(inited + 32) = 0x656C746974;
  if (v11)
  {
    v37 = v10;
  }

  else
  {
    v37 = 0;
  }

  v38 = 0xE000000000000000;
  if (v11)
  {
    v39 = v11;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x747369747261;
  if (v21)
  {
    v40 = v20;
  }

  else
  {
    v40 = 0;
  }

  if (v21)
  {
    v38 = v21;
  }

  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = v40;
  *(inited + 104) = v38;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x756F436567617375;
  *(inited + 136) = 0xEA0000000000746ELL;
  v41 = *sub_35E0((v50 + 8), *(v50 + 32));
  swift_beginAccess();
  v42 = *(v41 + 16);
  if (*(v42 + 16))
  {

    v43 = sub_4F538(0xD00000000000001ALL, 0x80000000002DA500);
    v44 = v52;
    if (v45)
    {
      v46 = *(*(v42 + 56) + 8 * v43);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v44 = v52;
  }

  *(v36 + 168) = &type metadata for Int;
  *(v36 + 144) = v46;
  v47 = sub_112C0(v36);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v55 = sub_D8B98();
  v56 = &off_3381B8;
  v53 = a2;
  v48 = a2;
  sub_250C6C(v47, v30, &v53, v44, a5);

  return sub_30B8(&v53, &qword_34C6C0, &qword_2D0710);
}

void sub_281390()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {

    v3 = sub_4F538(0xD00000000000001ALL, 0x80000000002DA500);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_2377E0(v7, 0xD00000000000001ALL, 0x80000000002DA500, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v16;
    swift_endAccess();
    v10 = objc_allocWithZone(NSUserDefaults);
    v11 = sub_2CE260();
    v12 = [v10 initWithSuiteName:v11];

    if (v12)
    {
      v13 = *(v1 + 16);

      isa = sub_2CE1F0().super.isa;

      v15 = sub_2CE260();
      [v12 setObject:isa forKey:v15];
    }
  }
}

uint64_t sub_28155C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2815A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_281614()
{
  result = qword_356810[0];
  if (!qword_356810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_356810);
  }

  return result;
}

id sub_281680(SEL *a1)
{
  result = [v1 mediaItems];
  if (result)
  {
    v4 = result;
    sub_736BC();
    v5 = sub_2CE410();

    if (v5 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 *a1];

        if (v8)
        {
          v9 = sub_2CE270();

          return v9;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_281798()
{
  swift_getWitnessTable();

  return sub_2CBFB0();
}

BOOL sub_2817EC()
{
  swift_getWitnessTable();

  return sub_2CBFD0();
}

BOOL sub_281840(uint64_t a1, void *a2)
{
  swift_getWitnessTable();
  v4.value._countAndFlagsBits = a1;
  v4.value._object = a2;

  return sub_2CBFF0(v4);
}

uint64_t sub_2818AC()
{
  swift_getWitnessTable();

  return sub_2CBFE0();
}

BOOL sub_281900()
{
  swift_getWitnessTable();

  return sub_2CC010();
}

uint64_t sub_281954()
{
  swift_getWitnessTable();

  return sub_2CBF90();
}

uint64_t sub_2819A8()
{
  swift_getWitnessTable();

  return sub_2CBFC0();
}

void *sub_281ADC()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  v2 = v0[14];

  return v0;
}

uint64_t sub_281B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v57 = a2;
  v65 = a1;
  v5 = sub_2CDFD0();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v55 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v18 = v11[2];
  v58 = v17;
  v56 = v18;
  v18(v16, v17, v10);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "CommonDialogProvider#makeGenericErrorDialog", v21, 2u);
  }

  v22 = v11[1];
  v63 = v11 + 1;
  v60 = v22;
  v22(v16, v10);
  v64 = sub_112C0(_swiftEmptyArrayStorage);
  v61 = v4[2];
  v23 = v4[13];
  v24 = v4[14];
  v66 = v23;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v55 = v10;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v25 = qword_35F760;
  v26 = v67;
  sub_2CDFB0();
  v28 = v68;
  v27 = v69;
  (*(v68 + 16))(v8, v26, v69);
  v29 = (*(v28 + 80) + 33) & ~*(v28 + 80);
  v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = "catServiceExecute";
  *(v31 + 24) = 17;
  *(v31 + 32) = 2;
  (*(v28 + 32))(v31 + v29, v8, v27);
  v32 = (v31 + v30);
  v33 = v59;
  *v32 = v57;
  v32[1] = v33;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2D0E40;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_1087C();
  *(v34 + 32) = v66;
  *(v34 + 40) = v24;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  *(v34 + 64) = v35;
  strcpy((v34 + 72), "GenericError");
  *(v34 + 85) = 0;
  *(v34 + 86) = -5120;

  v54 = v34;
  LOBYTE(v53) = 2;
  v52 = 125;
  sub_2CDF90();

  v36 = swift_allocObject();
  *(v36 + 16) = sub_13D80;
  *(v36 + 24) = v31;
  v37 = v62;
  v38 = v55;
  v56(v62, v58, v55);

  v39 = sub_2CDFE0();
  v40 = sub_2CE660();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v41 = 136315394;
    v42 = v66;
    *(v41 + 4) = sub_3F08(v66, v24, &v70);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v70);
    _os_log_impl(&dword_0, v39, v40, "Evaluating CAT family:%s id:%s...", v41, 0x16u);
    swift_arrayDestroy();

    v60(v37, v38);
  }

  else
  {

    v60(v37, v38);
    v42 = v66;
  }

  v70 = v42;
  v71 = v24;

  v74._countAndFlagsBits = 35;
  v74._object = 0xE100000000000000;
  sub_2CE350(v74);
  v75._countAndFlagsBits = 0x45636972656E6547;
  v75._object = 0xEC000000726F7272;
  sub_2CE350(v75);
  v43 = v70;
  v44 = v71;
  v45 = sub_2CB460();
  if (!v45)
  {
    sub_2CB180();
    v45 = sub_2CB170();
  }

  v46 = v45;
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = sub_13DB4;
  v47[4] = v36;
  v48 = sub_2CB180();
  __chkstk_darwin(v48);
  v50 = v64;
  v49 = v65;
  *(&v55 - 10) = v61;
  *(&v55 - 9) = v50;
  *(&v55 - 8) = v49;
  *(&v55 - 7) = v72;
  *(&v55 - 6) = 0;
  *(&v55 - 5) = v43;
  v52 = v44;
  v53 = sub_3E06C;
  v54 = v47;

  sub_2CB0F0();

  (*(v68 + 8))(v67, v69);
  return sub_30B8(v72, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2822EC(uint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = sub_112C0(_swiftEmptyArrayStorage);
  v53 = v3[2];
  v54 = v15;
  v16 = v3[13];
  v48 = v3[14];
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v56 = v9;
  v57 = v8;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = v50;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v49 = v16;
  *(v22 + 32) = v16;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0x6E496567726142;
  *(v22 + 80) = 0xE700000000000000;

  v46 = v22;
  LOBYTE(v45) = 2;
  v44 = 125;
  v50 = v14;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v20;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v52;
  v28 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v29 = v51;
  v30 = v58;
  (*(v51 + 16))(v58, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v25;
    v59 = v34;
    *v33 = 136315394;
    v35 = v49;
    *(v33 + 4) = sub_3F08(v49, v24, &v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x6E496567726142, 0xE700000000000000, &v59);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v25 = v47;

    (*(v29 + 8))(v58, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v49;
  }

  v59 = v35;
  v60 = v24;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0x6E496567726142;
  v64._object = 0xE700000000000000;
  sub_2CE350(v64);
  v36 = v59;
  v37 = v60;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v25;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v55;
  *(&v47 - 7) = v61;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v37;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v56 + 8))(v50, v57);
  return sub_30B8(v61, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_282998(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6)
{
  v67 = a5;
  v70 = a1;
  v71 = a2;
  v8 = sub_2CE000();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = v76[8];
  v10 = __chkstk_darwin(v8);
  v74 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v62 - v12;
  v13 = sub_2CDFD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v69 = v6[2];
  v20 = v6[13];
  v62 = v6[14];
  v75 = 0x80000000002DAA60;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v14 + 16))(v17, v19, v13);
  v22 = (*(v14 + 80) + 33) & ~*(v14 + 80);
  v23 = v15 + v22 + 7;
  v24 = v19;
  v25 = v23 & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = "catServiceExecute";
  *(v26 + 24) = 17;
  *(v26 + 32) = 2;
  v72 = v14;
  v73 = v13;
  (*(v14 + 32))(v26 + v22, v17, v13);
  v27 = (v26 + v25);
  *v27 = v67;
  v27[1] = a6;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v66 = v20;
  *(v28 + 32) = v20;
  v30 = v62;
  *(v28 + 40) = v62;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v75;

  v61 = v28;
  LOBYTE(v60) = 2;
  v59 = 125;
  v67 = v24;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v26;
  v63 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v77;
  v34 = sub_3ED0(v77, static Logger.default);
  swift_beginAccess();
  v35 = v76;
  v36 = v76[2];
  v37 = v68;
  v65 = v34;
  v64 = v36;
  v36(v68, v34, v33);

  v38 = sub_2CDFE0();
  v39 = sub_2CE660();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = v66;
    *(v40 + 4) = sub_3F08(v66, v30, &v78);
    *(v40 + 12) = 2080;
    v42 = v75;
    *(v40 + 14) = sub_3F08(0xD000000000000015, v75, &v78);
    _os_log_impl(&dword_0, v38, v39, "Evaluating CAT family:%s id:%s...", v40, 0x16u);
    swift_arrayDestroy();

    v43 = v37;
    v44 = v76[1];
    v44(v43, v77);
  }

  else
  {

    v45 = v37;
    v44 = v35[1];
    v44(v45, v33);
    v42 = v75;
    v41 = v66;
  }

  v78 = v41;
  v79 = v30;

  v82._countAndFlagsBits = 35;
  v82._object = 0xE100000000000000;
  sub_2CE350(v82);
  v83._countAndFlagsBits = 0xD000000000000015;
  v83._object = v42;
  sub_2CE350(v83);
  v47 = v78;
  v46 = v79;
  v48 = sub_2CB460();
  if (!v48)
  {
    sub_2CB180();
    v48 = sub_2CB170();
  }

  v49 = v48;
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = sub_13DB4;
  v50[4] = v63;
  v51 = sub_2CB180();
  __chkstk_darwin(v51);
  v52 = v70;
  *(&v62 - 10) = v69;
  *(&v62 - 9) = v52;
  *(&v62 - 8) = v71;
  *(&v62 - 7) = v80;
  *(&v62 - 6) = 0;
  *(&v62 - 5) = v47;
  v59 = v46;
  v60 = sub_3E06C;
  v61 = v50;

  sub_2CB0F0();

  (*(v72 + 8))(v67, v73);
  sub_30B8(v80, &qword_34C6C0, &qword_2D0710);
  v53 = v74;
  v54 = v77;
  v64(v74, v65, v77);
  v55 = sub_2CDFE0();
  v56 = sub_2CE690();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "CommonDialogProvider#makeFailureHandlingIntentDialog", v57, 2u);
  }

  return (v44)(v53, v54);
}

uint64_t sub_28315C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v168 = a7;
  v167 = a6;
  v172 = a5;
  v175 = a1;
  v159 = *v7;
  v174 = sub_2CDFD0();
  v173 = *(v174 - 8);
  v12 = *(v173 + 64);
  v13 = __chkstk_darwin(v174);
  v169 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v161 = &v155 - v16;
  v160 = v17;
  __chkstk_darwin(v15);
  v170 = &v155 - v18;
  v155 = sub_20410(&unk_3519A0, &qword_2D0980);
  v19 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v156 = (&v155 - v20);
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v158 = &v155 - v28;
  __chkstk_darwin(v27);
  v30 = &v155 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v32 = v22;
  v33 = *(v22 + 16);
  v164 = v31;
  v163 = v22 + 16;
  v162 = v33;
  v33(v30, v31, v21);
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();
  v36 = os_log_type_enabled(v34, v35);
  v171 = v21;
  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v34, v35, "CommonDialogProvider#makePromptForConfirmationDialog", v37, 2u);
    v21 = v171;
  }

  v38 = *(v32 + 8);
  v166 = v32 + 8;
  v165 = v38;
  v38(v30, v21);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = v175;

  v40 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v181 = v40;
  if ((a2 != 0x657449616964656DLL || a3 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {
    v158 = v8[2];
    v49 = v8[13];
    v50 = v8[14];
    v180 = v172;
    v51 = *(v159 + 80);
    v52 = v172;
    sub_20410(&unk_3530B0, &qword_2D2270);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v179 = 0;
      v177 = 0u;
      v178 = 0u;
    }

    v172 = v49;
    v159 = v40;
    v170 = 0x80000000002DDA60;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v53 = qword_35F760;
    v54 = v169;
    sub_2CDFB0();
    v55 = v173;
    v56 = v161;
    v57 = v174;
    (*(v173 + 16))(v161, v54, v174);
    v58 = (*(v55 + 80) + 33) & ~*(v55 + 80);
    v59 = (v160 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = "catServiceExecute";
    *(v60 + 24) = 17;
    *(v60 + 32) = 2;
    (*(v55 + 32))(v60 + v58, v56, v57);
    v61 = (v60 + v59);
    v62 = v168;
    *v61 = v167;
    v61[1] = v62;

    sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2D0E40;
    *(v63 + 56) = &type metadata for String;
    v64 = sub_1087C();
    *(v63 + 32) = v172;
    *(v63 + 40) = v50;
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v64;
    *(v63 + 64) = v64;
    *(v63 + 72) = 0xD000000000000020;
    *(v63 + 80) = v170;

    v154 = v63;
    LOBYTE(v153) = 2;
    v152 = 125;
    sub_2CDF90();

    v65 = swift_allocObject();
    *(v65 + 16) = sub_13D80;
    *(v65 + 24) = v60;
    v66 = v171;
    v162(v26, v164, v171);

    v67 = sub_2CDFE0();
    v68 = sub_2CE660();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v176[0] = swift_slowAlloc();
      *v69 = 136315394;
      *(v69 + 4) = sub_3F08(v172, v50, v176);
      *(v69 + 12) = 2080;
      v70 = v170;
      *(v69 + 14) = sub_3F08(0xD000000000000020, v170, v176);
      _os_log_impl(&dword_0, v67, v68, "Evaluating CAT family:%s id:%s...", v69, 0x16u);
      swift_arrayDestroy();

      v165(v26, v66);
    }

    else
    {

      v165(v26, v66);
      v70 = v170;
    }

    v176[0] = v172;
    v176[1] = v50;

    v182._countAndFlagsBits = 35;
    v182._object = 0xE100000000000000;
    sub_2CE350(v182);
    v183._countAndFlagsBits = 0xD000000000000020;
    v183._object = v70;
    sub_2CE350(v183);
    v78 = *v176;
    v79 = sub_2CB460();
    if (!v79)
    {
      sub_2CB180();
      v79 = sub_2CB170();
    }

    v80 = v79;
    v81 = swift_allocObject();
    v81[2] = v80;
    v81[3] = sub_13DB4;
    v81[4] = v65;
    v82 = sub_2CB180();
    __chkstk_darwin(v82);
    v83 = v159;
    *(&v155 - 10) = v158;
    *(&v155 - 9) = v83;
    *(&v155 - 8) = v175;
    *(&v155 - 7) = &v177;
    *(&v155 - 6) = 0;
    *(&v155 - 5) = v78;
    v152 = *(&v78 + 1);
    v153 = sub_3E06C;
    v154 = v81;

    sub_2CB0F0();

    (*(v173 + 8))(v169, v174);
    goto LABEL_84;
  }

  v41 = [a4 itemToConfirm];
  sub_2CEC00();
  swift_unknownObjectRelease();
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  if (!swift_dynamicCast())
  {
    v47 = 0;
    v48 = 0;
    v42 = 0;
    v45 = 0;
    v169 = 0;
    goto LABEL_41;
  }

  v42 = v176[0];
  v43 = [v176[0] artist];
  if (v43)
  {
    v44 = v43;
    v45 = sub_2CE270();
    v169 = v46;
  }

  else
  {
    v45 = 0;
    v169 = 0;
  }

  v71 = [v42 title];
  if (!v71)
  {
    if (v169)
    {
      sub_2CE2B0();
LABEL_28:
      if (!v77)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }

LABEL_38:
    v47 = 0;
    v48 = 0;
    v169 = 0;
    goto LABEL_41;
  }

  v72 = v71;
  sub_2CE270();

  v73 = sub_2CE2B0();
  v75 = v74;

  if (!v169)
  {
    if (v75)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v76 = sub_2CE2B0();
  if (!v75)
  {
    goto LABEL_28;
  }

  if (!v77)
  {
LABEL_35:

    goto LABEL_36;
  }

  if (v73 != v76 || v75 != v77)
  {
    v87 = sub_2CEEA0();

    if (v87)
    {
      goto LABEL_40;
    }

LABEL_36:
    v84 = [v42 title];
    if (v84)
    {
      v85 = v84;
      v47 = sub_2CE270();
      v48 = v86;

      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_40:
  v47 = 0;
  v48 = 0;
LABEL_41:
  objc_opt_self();
  v88 = swift_dynamicCastObjCClass();
  v157 = v42;
  if (!v88)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v95 = 0xE300000000000000;
      v96 = 4473921;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v95 = 0xE600000000000000;
        v96 = 0x484352414553;
      }

      else
      {
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (!v146)
        {

          v148 = sub_2CB850();
          sub_124424();
          v149 = swift_allocError();
          (*(*(v148 - 8) + 104))(v150, enum case for PlaybackCode.ceGE10(_:), v148);
          v151 = v156;
          *v156 = v149;
          swift_storeEnumTagMultiPayload();
          v167(v151);

          v142 = &unk_3519A0;
          v143 = &qword_2D0980;
          v144 = v151;
          return sub_30B8(v144, v142, v143);
        }

        v147 = [v146 affinityType];
        if (v147 == &dword_0 + 1)
        {
          v95 = 0xE400000000000000;
          v96 = 1162561868;
        }

        else
        {
          v95 = 0xE700000000000000;
          if (v147 == &dword_0 + 2)
          {
            v96 = 0x454B494C534944;
          }

          else
          {
            v96 = 0x4E574F4E4B4E55;
          }
        }
      }
    }

    goto LABEL_68;
  }

  v89 = v88;
  v156 = v47;
  v90 = [v88 mediaSearch];
  if (!v90)
  {
    goto LABEL_54;
  }

  v91 = v90;
  v92 = [v90 genreNames];

  if (v92)
  {
    v93 = sub_2CE410();

    if (v93[2])
    {
      v94 = v93[4];
      v92 = v93[5];

      if (!v42)
      {
        goto LABEL_60;
      }

LABEL_55:
      v97 = [v42 privateMediaItemValueData];
      if (v97)
      {
        v98 = v97;
        v99 = [v97 provider];

        if (v99)
        {
          v100 = sub_2CE270();
          v102 = v101;

          v103 = HIBYTE(v102) & 0xF;
          if ((v102 & 0x2000000000000000) == 0)
          {
            v103 = v100 & 0xFFFFFFFFFFFFLL;
          }

          if (v103)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_60;
    }

LABEL_54:
    v94 = 0;
    v92 = 0;
    if (!v42)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  v94 = 0;
  if (v42)
  {
    goto LABEL_55;
  }

LABEL_60:
  if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v89, &off_32F160))
  {

    goto LABEL_67;
  }

LABEL_61:
  if (!v92)
  {
LABEL_67:
    v95 = 0xE400000000000000;
    v96 = 1497451600;
    v47 = v156;
    goto LABEL_68;
  }

  v104 = HIBYTE(v92) & 0xF;
  if ((v92 & 0x2000000000000000) == 0)
  {
    v104 = v94 & 0xFFFFFFFFFFFFLL;
  }

  v47 = v156;
  if (v104)
  {

    v45 = 0;
    v105 = 1;
    v95 = 0xE400000000000000;
    v169 = 0xE000000000000000;
    v96 = 1497451600;
    goto LABEL_70;
  }

  v95 = 0xE400000000000000;
  v96 = 1497451600;
LABEL_68:
  if (!v48)
  {
    sub_236110(0x436F54656C746974, 0xEE006D7269666E6FLL, v176);
    sub_30B8(v176, &qword_34CEA0, &qword_2D0FC0);
    v105 = 0;
    goto LABEL_72;
  }

  v105 = 0;
  v92 = v48;
  v94 = v47;
LABEL_70:
  *(&v178 + 1) = &type metadata for String;
  *&v177 = v94;
  *(&v177 + 1) = v92;
  sub_E2DC(&v177, v176);
  v106 = v181;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v180 = v106;
  sub_237690(v176, 0x436F54656C746974, 0xEE006D7269666E6FLL, isUniquelyReferenced_nonNull_native);
  v181 = v180;
LABEL_72:
  if (v169)
  {
    *(&v178 + 1) = &type metadata for String;
    *&v177 = v45;
    *(&v177 + 1) = v169;
    sub_E2DC(&v177, v176);
    v108 = v181;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v108;
    sub_237690(v176, 0x6F54747369747261, 0xEF6D7269666E6F43, v109);
    v110 = v180;
  }

  else
  {
    sub_236110(0x6F54747369747261, 0xEF6D7269666E6F43, &v177);
    sub_30B8(&v177, &qword_34CEA0, &qword_2D0FC0);
    v110 = v181;
  }

  *(&v178 + 1) = &type metadata for Bool;
  LOBYTE(v177) = v105;
  sub_E2DC(&v177, v176);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v110;
  sub_237690(v176, 0x5265726E65477369, 0xEC0000006F696461, v111);
  v112 = v180;
  v181 = v180;
  *(&v178 + 1) = &type metadata for String;
  *&v177 = v96;
  *(&v177 + 1) = v95;
  sub_E2DC(&v177, v176);
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v180 = v112;
  sub_237690(v176, 0x7954746E65746E69, 0xEA00000000006570, v113);
  v169 = v180;
  v156 = v8[2];
  v114 = v8[14];
  v155 = v8[13];
  v180 = v172;
  v115 = *(v159 + 80);
  v116 = v172;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
  }

  v172 = 0x80000000002DDA90;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v117 = qword_35F760;
  v118 = v170;
  sub_2CDFB0();
  v119 = v173;
  v120 = v161;
  v121 = v174;
  (*(v173 + 16))(v161, v118, v174);
  v122 = (*(v119 + 80) + 33) & ~*(v119 + 80);
  v123 = (v160 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = swift_allocObject();
  *(v124 + 16) = "catServiceExecute";
  *(v124 + 24) = 17;
  *(v124 + 32) = 2;
  (*(v119 + 32))(v124 + v122, v120, v121);
  v125 = (v124 + v123);
  v126 = v168;
  *v125 = v167;
  v125[1] = v126;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_2D0E40;
  *(v127 + 56) = &type metadata for String;
  v128 = sub_1087C();
  v129 = v155;
  *(v127 + 32) = v155;
  *(v127 + 40) = v114;
  *(v127 + 96) = &type metadata for String;
  *(v127 + 104) = v128;
  *(v127 + 64) = v128;
  *(v127 + 72) = 0xD000000000000011;
  *(v127 + 80) = v172;

  v154 = v127;
  LOBYTE(v153) = 2;
  v152 = 125;
  sub_2CDF90();

  v130 = swift_allocObject();
  *(v130 + 16) = sub_13D80;
  *(v130 + 24) = v124;
  v131 = v158;
  v132 = v171;
  v162(v158, v164, v171);

  v133 = sub_2CDFE0();
  v134 = sub_2CE660();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v176[0] = swift_slowAlloc();
    *v135 = 136315394;
    *(v135 + 4) = sub_3F08(v129, v114, v176);
    *(v135 + 12) = 2080;
    *(v135 + 14) = sub_3F08(0xD000000000000011, v172, v176);
    _os_log_impl(&dword_0, v133, v134, "Evaluating CAT family:%s id:%s...", v135, 0x16u);
    swift_arrayDestroy();
  }

  v165(v131, v132);
  v176[0] = v129;
  v176[1] = v114;

  v184._countAndFlagsBits = 35;
  v184._object = 0xE100000000000000;
  sub_2CE350(v184);
  v185._countAndFlagsBits = 0xD000000000000011;
  v185._object = v172;
  sub_2CE350(v185);
  v136 = *v176;
  v137 = sub_2CB460();
  if (!v137)
  {
    sub_2CB180();
    v137 = sub_2CB170();
  }

  v138 = v137;
  v139 = swift_allocObject();
  v139[2] = v138;
  v139[3] = sub_13DB4;
  v139[4] = v130;
  v140 = sub_2CB180();
  __chkstk_darwin(v140);
  v141 = v169;
  *(&v155 - 10) = v156;
  *(&v155 - 9) = v141;
  *(&v155 - 8) = v175;
  *(&v155 - 7) = &v177;
  *(&v155 - 6) = 0;
  *(&v155 - 5) = v136;
  v152 = *(&v136 + 1);
  v153 = sub_3E06C;
  v154 = v139;

  sub_2CB0F0();

  (*(v173 + 8))(v170, v174);
LABEL_84:
  v142 = &qword_34C6C0;
  v143 = &qword_2D0710;
  v144 = &v177;
  return sub_30B8(v144, v142, v143);
}

uint64_t sub_284914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v63 = a5;
  v58 = a4;
  v65 = a1;
  v62 = sub_2CE000();
  v61 = *(v62 - 8);
  v8 = *(v61 + 64);
  __chkstk_darwin(v62);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v64 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v60 = v5[2];
  v18 = v5[13];
  v68 = v5[14];
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = v16;
  v21 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v22 = v10;
  v23 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v66 = v11;
  v25 = *(v11 + 32);
  v67 = v22;
  v25(v24 + v21, v14, v22);
  v26 = (v24 + v23);
  v27 = v63;
  *v26 = v58;
  v26[1] = v27;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v57 = v18;
  v30 = v68;
  *(v28 + 32) = v18;
  *(v28 + 40) = v30;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000001BLL;
  v58 = 0x80000000002E0D90;
  *(v28 + 80) = 0x80000000002E0D90;

  v54 = v28;
  LOBYTE(v53) = 2;
  v52 = 125;
  v63 = v20;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  v33 = v30;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = v62;
  v35 = sub_3ED0(v62, static Logger.default);
  swift_beginAccess();
  v36 = v61;
  v37 = v59;
  (*(v61 + 16))(v59, v35, v34);

  v38 = sub_2CDFE0();
  v39 = sub_2CE660();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = v57;
    *(v40 + 4) = sub_3F08(v57, v68, &v69);
    *(v40 + 12) = 2080;
    v42 = v58;
    *(v40 + 14) = sub_3F08(0xD00000000000001BLL, v58, &v69);
    _os_log_impl(&dword_0, v38, v39, "Evaluating CAT family:%s id:%s...", v40, 0x16u);
    swift_arrayDestroy();
    v33 = v68;

    (*(v36 + 8))(v37, v34);
    v43 = v66;
  }

  else
  {

    (*(v36 + 8))(v37, v34);
    v43 = v66;
    v42 = v58;
    v41 = v57;
  }

  v69 = v41;
  v70 = v33;

  v73._countAndFlagsBits = 35;
  v73._object = 0xE100000000000000;
  sub_2CE350(v73);
  v74._countAndFlagsBits = 0xD00000000000001BLL;
  v74._object = v42;
  sub_2CE350(v74);
  v45 = v69;
  v44 = v70;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13DB4;
  v48[4] = v56;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v64;
  *(&v55 - 10) = v60;
  *(&v55 - 9) = v50;
  *(&v55 - 8) = v65;
  *(&v55 - 7) = v71;
  *(&v55 - 6) = 0;
  *(&v55 - 5) = v45;
  v52 = v44;
  v53 = sub_3E06C;
  v54 = v48;

  sub_2CB0F0();

  (*(v43 + 8))(v63, v67);
  return sub_30B8(v71, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2850FC(uint64_t a1, char *a2, char *a3)
{
  v51 = a2;
  v56 = a1;
  v5 = sub_2CE000();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = sub_112C0(_swiftEmptyArrayStorage);
  v54 = v3[2];
  v55 = v15;
  v16 = v3[13];
  v48 = v3[14];
  v60 = 0x80000000002E0D60;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v9;
  v58 = v8;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = v51;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v50 = v16;
  *(v22 + 32) = v16;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000023;
  *(v22 + 80) = v60;

  v46 = v22;
  LOBYTE(v45) = 2;
  v44 = 125;
  v51 = v14;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v20;
  v49 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v50;
    *(v33 + 4) = sub_3F08(v50, v24, &v61);
    *(v33 + 12) = 2080;
    v35 = v60;
    *(v33 + 14) = sub_3F08(0xD000000000000023, v60, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
    v34 = v50;
  }

  v61 = v34;
  v62 = v24;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0xD000000000000023;
  v66._object = v35;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v51, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2857C8(uint64_t a1, char *a2, char *a3)
{
  v51 = a2;
  v56 = a1;
  v5 = sub_2CE000();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = sub_112C0(_swiftEmptyArrayStorage);
  v54 = v3[2];
  v55 = v15;
  v16 = v3[13];
  v48 = v3[14];
  v60 = 0x80000000002E0D40;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v9;
  v58 = v8;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = v51;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v50 = v16;
  *(v22 + 32) = v16;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000014;
  *(v22 + 80) = v60;

  v46 = v22;
  LOBYTE(v45) = 2;
  v44 = 125;
  v51 = v14;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v20;
  v49 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v50;
    *(v33 + 4) = sub_3F08(v50, v24, &v61);
    *(v33 + 12) = 2080;
    v35 = v60;
    *(v33 + 14) = sub_3F08(0xD000000000000014, v60, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
    v34 = v50;
  }

  v61 = v34;
  v62 = v24;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0xD000000000000014;
  v66._object = v35;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v51, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_285E94(unint64_t a1, char *a2)
{
  v49 = a1;
  v50 = a2;
  v3 = sub_2CE000();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CDFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = sub_112C0(_swiftEmptyArrayStorage);
  v53 = v2[2];
  v54 = v13;
  v14 = v2[13];
  v46 = v2[14];
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v55 = v7;
  v56 = v6;
  (*(v7 + 32))(v18 + v16, v10, v6);
  v19 = (v18 + v17);
  v20 = v50;
  *v19 = v49;
  v19[1] = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v48 = v14;
  *(v21 + 32) = v14;
  v23 = v46;
  *(v21 + 40) = v46;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = 0xD000000000000017;
  v49 = 0x80000000002E0D20;
  *(v21 + 80) = 0x80000000002E0D20;

  v45 = v21;
  LOBYTE(v44) = 2;
  v43 = 125;
  v50 = v12;
  sub_2CDF90();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v18;
  v47 = v24;
  v25 = qword_34BF58;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v52;
  v27 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v28 = v51;
  v29 = v57;
  (*(v51 + 16))(v57, v27, v26);

  v30 = sub_2CDFE0();
  v31 = sub_2CE660();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = v48;
    *(v32 + 4) = sub_3F08(v48, v23, &v58);
    *(v32 + 12) = 2080;
    v34 = v49;
    *(v32 + 14) = sub_3F08(0xD000000000000017, v49, &v58);
    _os_log_impl(&dword_0, v30, v31, "Evaluating CAT family:%s id:%s...", v32, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v57, v26);
  }

  else
  {

    (*(v28 + 8))(v29, v26);
    v33 = v48;
    v34 = v49;
  }

  v58 = v33;
  v59 = v23;

  v62._countAndFlagsBits = 35;
  v62._object = 0xE100000000000000;
  sub_2CE350(v62);
  v63._countAndFlagsBits = 0xD000000000000017;
  v63._object = v34;
  sub_2CE350(v63);
  v36 = v58;
  v35 = v59;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v47;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v54;
  *(&v46 - 10) = v53;
  *(&v46 - 9) = v41;
  *(&v46 - 8) = 0;
  *(&v46 - 7) = v60;
  *(&v46 - 6) = 0;
  *(&v46 - 5) = v36;
  v43 = v35;
  v44 = sub_3E06C;
  v45 = v39;

  sub_2CB0F0();

  (*(v55 + 8))(v50, v56);
  return sub_30B8(v60, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28653C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v61 = a1;
  v5 = sub_2CE000();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v58 = v3[2];
  v15 = v3[13];
  v50 = v3[14];
  v49 = 0x80000000002E0D00;
  v59 = sub_112C0(_swiftEmptyArrayStorage);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v60 = v9;
  v20 = *(v9 + 32);
  v62 = v8;
  v20(v19 + v17, v12);
  v21 = (v19 + v18);
  *v21 = v54;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v54 = v15;
  v24 = v50;
  *(v22 + 32) = v15;
  *(v22 + 40) = v24;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000011;
  v25 = v49;
  *(v22 + 80) = v49;

  v48 = v22;
  LOBYTE(v47) = 2;
  v46 = 125;
  v52 = v14;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v27 = qword_34BF58;
  v53 = v19;

  v28 = v24;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v31 = v56;
  (*(v56 + 16))(v55, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v54;
    *(v35 + 4) = sub_3F08(v54, v28, &v63);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0xD000000000000011, v25, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v32, v29);
    v37 = v60;
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v60;
    v36 = v54;
  }

  v63 = v36;
  v64 = v28;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000011;
  v68._object = v25;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v59;
  *(&v49 - 10) = v58;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v61;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v37 + 8))(v52, v62);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_286C18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v61 = a1;
  v5 = sub_2CE000();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v58 = v3[2];
  v15 = v3[13];
  v50 = v3[14];
  v49 = 0x80000000002E0CE0;
  v59 = sub_112C0(_swiftEmptyArrayStorage);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v60 = v9;
  v20 = *(v9 + 32);
  v62 = v8;
  v20(v19 + v17, v12);
  v21 = (v19 + v18);
  *v21 = v54;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v54 = v15;
  v24 = v50;
  *(v22 + 32) = v15;
  *(v22 + 40) = v24;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000013;
  v25 = v49;
  *(v22 + 80) = v49;

  v48 = v22;
  LOBYTE(v47) = 2;
  v46 = 125;
  v52 = v14;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v27 = qword_34BF58;
  v53 = v19;

  v28 = v24;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v31 = v56;
  (*(v56 + 16))(v55, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v54;
    *(v35 + 4) = sub_3F08(v54, v28, &v63);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0xD000000000000013, v25, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v32, v29);
    v37 = v60;
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v60;
    v36 = v54;
  }

  v63 = v36;
  v64 = v28;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000013;
  v68._object = v25;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v59;
  *(&v49 - 10) = v58;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v61;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v37 + 8))(v52, v62);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2872F4(uint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = sub_112C0(_swiftEmptyArrayStorage);
  v53 = v3[2];
  v54 = v15;
  v16 = v3[13];
  v48 = v3[14];
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v56 = v9;
  v57 = v8;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = v50;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v49 = v16;
  *(v22 + 32) = v16;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0x416D7269666E6F43;
  *(v22 + 80) = 0xEA00000000007070;

  v46 = v22;
  LOBYTE(v45) = 2;
  v44 = 125;
  v50 = v14;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v20;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v52;
  v28 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v29 = v51;
  v30 = v58;
  (*(v51 + 16))(v58, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v25;
    v59 = v34;
    *v33 = 136315394;
    v35 = v49;
    *(v33 + 4) = sub_3F08(v49, v24, &v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x416D7269666E6F43, 0xEA00000000007070, &v59);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v25 = v47;

    (*(v29 + 8))(v58, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v49;
  }

  v59 = v35;
  v60 = v24;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0x416D7269666E6F43;
  v64._object = 0xEA00000000007070;
  sub_2CE350(v64);
  v36 = v59;
  v37 = v60;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v25;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v55;
  *(&v47 - 7) = v61;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v37;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v56 + 8))(v50, v57);
  return sub_30B8(v61, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2879AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v62 = a3;
  v69 = a1;
  v7 = *v4;
  v67 = sub_2CE000();
  v8 = *(v67 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v67);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CDFD0();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v60 - v16;
  v17 = sub_112C0(_swiftEmptyArrayStorage);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = a2;
    if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v19, &off_32F280))
    {
      *(&v79 + 1) = &type metadata for Bool;
      LOBYTE(v78) = 1;
      sub_E2DC(&v78, v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v17;
      sub_237690(v75, 0xD000000000000012, 0x80000000002E0CC0, isUniquelyReferenced_nonNull_native);

      v17 = v76;
    }

    else
    {
    }
  }

  v64 = v5[2];
  v22 = v5[13];
  v70 = v5[14];
  v81 = a2;
  v23 = *(v7 + 80);
  v24 = a2;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
  }

  v71 = v22;
  v65 = v11;
  v66 = v8;
  v68 = v17;
  v61 = 0x80000000002E0CA0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v25 = qword_35F760;
  v26 = v72;
  sub_2CDFB0();
  v27 = v73;
  v28 = v74;
  (*(v73 + 16))(v15, v26, v74);
  v29 = (*(v27 + 80) + 33) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = "catServiceExecute";
  *(v30 + 24) = 17;
  *(v30 + 32) = 2;
  (*(v27 + 32))(v30 + v29, v15, v28);
  v31 = (v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v63;
  *v31 = v62;
  v31[1] = v32;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2D0E40;
  *(v33 + 56) = &type metadata for String;
  v34 = sub_1087C();
  v35 = v70;
  *(v33 + 32) = v71;
  *(v33 + 40) = v35;
  *(v33 + 96) = &type metadata for String;
  *(v33 + 104) = v34;
  *(v33 + 64) = v34;
  *(v33 + 72) = 0xD000000000000017;
  v36 = v61;
  *(v33 + 80) = v61;

  v59 = v33;
  LOBYTE(v58) = 2;
  v57 = 125;
  sub_2CDF90();

  v37 = swift_allocObject();
  *(v37 + 16) = sub_13D80;
  *(v37 + 24) = v30;
  v62 = v37;
  v38 = qword_34BF58;
  v63 = v30;

  v39 = v36;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = v67;
  v41 = sub_3ED0(v67, static Logger.default);
  swift_beginAccess();
  v42 = v66;
  v43 = v65;
  (*(v66 + 16))(v65, v41, v40);

  v44 = sub_2CDFE0();
  v45 = sub_2CE660();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v46 = 136315394;
    v47 = v71;
    *(v46 + 4) = sub_3F08(v71, v70, &v76);
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_3F08(0xD000000000000017, v39, &v76);
    _os_log_impl(&dword_0, v44, v45, "Evaluating CAT family:%s id:%s...", v46, 0x16u);
    swift_arrayDestroy();
    v35 = v70;

    (*(v42 + 8))(v43, v40);
  }

  else
  {

    (*(v42 + 8))(v43, v40);
    v47 = v71;
  }

  v76 = v47;
  v77 = v35;

  v82._countAndFlagsBits = 35;
  v82._object = 0xE100000000000000;
  sub_2CE350(v82);
  v83._countAndFlagsBits = 0xD000000000000017;
  v83._object = v39;
  sub_2CE350(v83);
  v49 = v76;
  v48 = v77;
  v50 = sub_2CB460();
  if (!v50)
  {
    sub_2CB180();
    v50 = sub_2CB170();
  }

  v51 = v50;
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = sub_13DB4;
  v52[4] = v62;
  v53 = sub_2CB180();
  __chkstk_darwin(v53);
  v55 = v68;
  v54 = v69;
  *(&v60 - 10) = v64;
  *(&v60 - 9) = v55;
  *(&v60 - 8) = v54;
  *(&v60 - 7) = &v78;
  *(&v60 - 6) = 0;
  *(&v60 - 5) = v49;
  v57 = v48;
  v58 = sub_3E06C;
  v59 = v52;

  sub_2CB0F0();

  (*(v73 + 8))(v72, v74);
  return sub_30B8(&v78, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2881BC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v57 = a1;
  v58 = a2;
  v6 = sub_2CE000();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v60 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v54 = v4[2];
  v16 = v4[13];
  v48 = v4[14];
  v55 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v56 = v10;
  v21 = *(v10 + 32);
  v59 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v51;
  v22[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v51 = v16;
  *(v23 + 32) = v16;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x6F656D6954707041;
  *(v23 + 80) = 0xEA00000000007475;

  v47 = v23;
  LOBYTE(v46) = 2;
  v45 = 125;
  v50 = v15;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v53;
  v29 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v30 = v52;
  v31 = v60;
  (*(v52 + 16))(v60, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v51;
    *(v34 + 4) = sub_3F08(v51, v25, &v61);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_3F08(0x6F656D6954707041, 0xEA00000000007475, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v60, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v35 = v51;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0x6F656D6954707041;
  v64._object = 0xEA00000000007475;
  sub_2CE350(v64);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v48 - 10) = v54;
  *(&v48 - 9) = v42;
  v43 = v58;
  *(&v48 - 8) = v57;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v37;
  v45 = v36;
  v46 = sub_3E06C;
  v47 = v40;

  sub_2CB0F0();

  return (*(v56 + 8))(v50, v59);
}

void sub_288840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  sub_28B888(a3, v12);
  if (v13)
  {
    sub_20410(&unk_3530B0, &qword_2D2270);
    v9 = *(v8 + 80);
    if (swift_dynamicCast())
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_30B8(v12, &qword_34C6C0, &qword_2D0710);
    v10 = 0;
  }

  sub_28B8F8(v10, a4, a5);
}

uint64_t sub_28891C(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v89 - v8);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2CDFD0();
  v100 = *(v101 - 8);
  v15 = *(v100 + 64);
  v16 = __chkstk_darwin(v101);
  v97 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v17;
  __chkstk_darwin(v16);
  v19 = &v89 - v18;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_10C40();
    v29 = swift_allocError();
    *v30 = 0xD000000000000023;
    v30[1] = 0x80000000002E0C10;
    *v9 = v29;
    swift_storeEnumTagMultiPayload();
    a2(v9);
    v31 = &unk_3519A0;
    v32 = &qword_2D0980;
    v33 = v9;
    return sub_30B8(v33, v31, v32);
  }

  v91 = a2;
  v92 = a3;
  v93 = v14;
  v94 = v11;
  v95 = v10;
  v96 = a1;
  sub_1D15EC();
  v21 = v20;
  sub_20410(&qword_356898, &qword_2D8DB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  *(inited + 16) = xmmword_2D5F90;
  *(inited + 40) = 0x80000000002DE7E0;
  if (v21)
  {
    v23 = sub_2CE2B0();
    v25 = v24;
    v26 = sub_2CE2B0();
    if (v25)
    {
      if (v23 == v26 && v25 == v27)
      {
        v28 = 1;
      }

      else
      {
        v28 = sub_2CEEA0();
      }

      *(inited + 48) = v28 & 1;
      strcpy((inited + 56), "isStoryTelling");
      *(inited + 71) = -18;
      goto LABEL_13;
    }
  }

  else
  {
    sub_2CE2B0();
  }

  *(inited + 48) = 0;
  strcpy((inited + 56), "isStoryTelling");
  *(inited + 71) = -18;
  if (!v21)
  {
    sub_2CE2B0();
    goto LABEL_17;
  }

LABEL_13:
  v34 = sub_2CE2B0();
  v36 = v35;
  v37 = sub_2CE2B0();
  if (v36)
  {
    if (v34 == v37 && v36 == v38)
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_2CEEA0();
    }

    *(inited + 72) = v39 & 1;
    strcpy((inited + 80), "isStorySleep");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    goto LABEL_21;
  }

LABEL_17:

  *(inited + 72) = 0;
  strcpy((inited + 80), "isStorySleep");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  if (!v21)
  {
    sub_2CE2B0();
    goto LABEL_25;
  }

LABEL_21:
  v40 = sub_2CE2B0();
  v42 = v41;
  v43 = sub_2CE2B0();
  if (v42)
  {
    if (v40 == v43 && v42 == v44)
    {
      v45 = 1;
    }

    else
    {
      v45 = sub_2CEEA0();
    }

    *(inited + 96) = v45 & 1;
    *(inited + 104) = 0xD000000000000011;
    *(inited + 112) = 0x80000000002DE800;
    goto LABEL_29;
  }

LABEL_25:

  *(inited + 96) = 0;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x80000000002DE800;
  if (!v21)
  {
    sub_2CE2B0();
    goto LABEL_33;
  }

LABEL_29:
  v46 = sub_2CE2B0();
  v48 = v47;
  v49 = sub_2CE2B0();
  if (v48)
  {
    if (v46 == v49 && v48 == v50)
    {
      v51 = 1;
    }

    else
    {
      v51 = sub_2CEEA0();
    }

    *(inited + 120) = v51 & 1;
    strcpy((inited + 128), "isWordOfTheDay");
    *(inited + 143) = -18;
    goto LABEL_37;
  }

LABEL_33:

  *(inited + 120) = 0;
  strcpy((inited + 128), "isWordOfTheDay");
  *(inited + 143) = -18;
  if (v21)
  {
LABEL_37:
    v53 = sub_2CE2B0();
    v55 = v54;

    v56 = sub_2CE2B0();
    if (v55)
    {
      if (v53 == v56 && v55 == v57)
      {

        v52 = 1;
      }

      else
      {
        v52 = sub_2CEEA0();
      }
    }

    else
    {
      v52 = 0;
    }

    goto LABEL_43;
  }

  sub_2CE2B0();
  v52 = 0;
LABEL_43:

  *(inited + 144) = v52 & 1;
  v58 = sub_8FF78(inited);
  swift_setDeallocating();
  sub_20410(&qword_3568A0, &qword_2D8DB8);
  swift_arrayDestroy();
  v90 = *(v98 + 16);
  v98 = sub_234764(v58);

  v104 = 0;
  memset(v103, 0, sizeof(v103));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v59 = qword_35F760;
  sub_2CDFB0();
  v60 = v19;
  v61 = v100;
  v62 = v97;
  v63 = v101;
  (*(v100 + 16))(v97, v60, v101);
  v64 = (*(v61 + 80) + 33) & ~*(v61 + 80);
  v65 = &v99[v64 + 7] & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 16) = "catServiceExecute";
  *(v66 + 24) = 17;
  *(v66 + 32) = 2;
  (*(v61 + 32))(v66 + v64, v62, v63);
  v67 = (v66 + v65);
  v68 = v92;
  *v67 = v91;
  v67[1] = v68;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2D0E40;
  *(v69 + 56) = &type metadata for String;
  v70 = sub_1087C();
  *(v69 + 32) = 0x6964654D79616C50;
  *(v69 + 40) = 0xEF746E65746E4961;
  *(v69 + 96) = &type metadata for String;
  *(v69 + 104) = v70;
  *(v69 + 64) = v70;
  *(v69 + 72) = 0xD000000000000013;
  *(v69 + 80) = 0x80000000002E02E0;
  v88 = v69;
  LOBYTE(v87) = 2;
  v86 = 125;
  v99 = v60;
  sub_2CDF90();

  v71 = swift_allocObject();
  *(v71 + 16) = sub_13D80;
  *(v71 + 24) = v66;
  v72 = qword_34BF58;

  if (v72 != -1)
  {
    swift_once();
  }

  v73 = v95;
  v74 = sub_3ED0(v95, static Logger.default);
  swift_beginAccess();
  v75 = v94;
  v76 = v93;
  (*(v94 + 16))(v93, v74, v73);
  v77 = sub_2CDFE0();
  v78 = sub_2CE660();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v102[0] = swift_slowAlloc();
    *v79 = 136315394;
    *(v79 + 4) = sub_3F08(0x6964654D79616C50, 0xEF746E65746E4961, v102);
    *(v79 + 12) = 2080;
    *(v79 + 14) = sub_3F08(0xD000000000000013, 0x80000000002E02E0, v102);
    _os_log_impl(&dword_0, v77, v78, "Evaluating CAT family:%s id:%s...", v79, 0x16u);
    swift_arrayDestroy();
  }

  (*(v75 + 8))(v76, v73);
  v80 = sub_2CB460();
  if (!v80)
  {
    sub_2CB180();
    v80 = sub_2CB170();
  }

  v81 = v80;
  v82 = swift_allocObject();
  v82[2] = v81;
  v82[3] = sub_13DB4;
  v82[4] = v71;
  v83 = sub_2CB180();
  __chkstk_darwin(v83);
  v84 = v98;
  *(&v89 - 10) = v90;
  *(&v89 - 9) = v84;
  *(&v89 - 8) = 0;
  *(&v89 - 7) = v103;
  *(&v89 - 3) = xmmword_2D8CF0;
  v86 = 0x80000000002E0C40;
  v87 = sub_3E06C;
  v88 = v82;

  sub_2CB0F0();

  (*(v100 + 8))(v99, v101);
  v31 = &qword_34C6C0;
  v32 = &qword_2D0710;
  v33 = v103;
  return sub_30B8(v33, v31, v32);
}

uint64_t sub_2896CC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v70 = a6;
  v69 = a5;
  v81 = a2;
  v77 = a1;
  v10 = *v6;
  v80 = sub_2CDFD0();
  v79 = *(v80 - 8);
  v11 = *(v79 + 64);
  v12 = __chkstk_darwin(v80);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = &v63 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v73 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v63 - v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v22 = v15[2];
  v67 = v21;
  v66 = v15 + 2;
  v65 = v22;
  v22(v20, v21, v14);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v76 = v11;
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "CommonDialogProvider#makePromptForDisambiguationDialog...", v25, 2u);
    v11 = v76;
  }

  v27 = v15[1];
  v26 = v15 + 1;
  v71 = v27;
  v27(v20, v14);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = v81;
  *(inited + 56) = a3;

  v74 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v72 = v7[2];
  v29 = v7[13];
  v30 = v7[14];
  v68 = v29;
  v86 = a4;
  v31 = *(v10 + 80);
  v32 = a4;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v85 = 0;
    memset(v84, 0, sizeof(v84));
  }

  v75 = v26;
  v76 = v14;
  v81 = 0x80000000002E0BF0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v33 = qword_35F760;
  v34 = v78;
  sub_2CDFB0();
  v35 = v79;
  v36 = v64;
  v37 = v80;
  (*(v79 + 16))(v64, v34, v80);
  v38 = (*(v35 + 80) + 33) & ~*(v35 + 80);
  v39 = (v11 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = "catServiceExecute";
  *(v40 + 24) = 17;
  *(v40 + 32) = 2;
  (*(v35 + 32))(v40 + v38, v36, v37);
  v41 = (v40 + v39);
  v42 = v70;
  *v41 = v69;
  v41[1] = v42;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2D0E40;
  *(v43 + 56) = &type metadata for String;
  v44 = sub_1087C();
  v45 = v68;
  *(v43 + 32) = v68;
  *(v43 + 40) = v30;
  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v44;
  *(v43 + 64) = v44;
  *(v43 + 72) = 0xD000000000000015;
  *(v43 + 80) = v81;

  v62 = v43;
  LOBYTE(v61) = 2;
  v60 = 125;
  sub_2CDF90();

  v46 = swift_allocObject();
  *(v46 + 16) = sub_13D80;
  *(v46 + 24) = v40;
  v47 = v73;
  v48 = v76;
  v65(v73, v67, v76);

  v49 = sub_2CDFE0();
  v50 = sub_2CE660();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_3F08(v45, v30, &v82);
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_3F08(0xD000000000000015, v81, &v82);
    _os_log_impl(&dword_0, v49, v50, "Evaluating CAT family:%s id:%s...", v51, 0x16u);
    swift_arrayDestroy();
  }

  v71(v47, v48);
  v82 = v45;
  v83 = v30;

  v87._countAndFlagsBits = 35;
  v87._object = 0xE100000000000000;
  sub_2CE350(v87);
  v88._countAndFlagsBits = 0xD000000000000015;
  v88._object = v81;
  sub_2CE350(v88);
  v53 = v82;
  v52 = v83;
  v54 = sub_2CB460();
  if (!v54)
  {
    sub_2CB180();
    v54 = sub_2CB170();
  }

  v55 = v54;
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = sub_13DB4;
  v56[4] = v46;
  v57 = sub_2CB180();
  __chkstk_darwin(v57);
  v58 = v74;
  *(&v63 - 10) = v72;
  *(&v63 - 9) = v58;
  *(&v63 - 8) = v77;
  *(&v63 - 7) = v84;
  *(&v63 - 6) = 0;
  *(&v63 - 5) = v53;
  v60 = v52;
  v61 = sub_3E06C;
  v62 = v56;

  sub_2CB0F0();

  (*(v79 + 8))(v78, v80);
  return sub_30B8(v84, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28A008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v59 = a5;
  v58 = a4;
  v64 = a1;
  v7 = *v5;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CDFD0();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v18 = sub_112C0(_swiftEmptyArrayStorage);
  v62 = v5[2];
  v63 = v18;
  v19 = v5[13];
  v20 = v5[14];
  v73 = a2;
  v21 = *(v7 + 80);
  v22 = a2;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v72 = 0;
    memset(v71, 0, sizeof(v71));
  }

  v66 = v19;
  v60 = v9;
  v61 = v8;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v23 = qword_35F760;
  sub_2CDFB0();
  v24 = v67;
  v25 = v17;
  v26 = v17;
  v27 = v68;
  (*(v67 + 16))(v15, v25, v68);
  v28 = (*(v24 + 80) + 33) & ~*(v24 + 80);
  v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = "catServiceExecute";
  *(v30 + 24) = 17;
  *(v30 + 32) = 2;
  (*(v24 + 32))(v30 + v28, v15, v27);
  v31 = (v30 + v29);
  v32 = v59;
  *v31 = v58;
  v31[1] = v32;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2D0E40;
  *(v33 + 56) = &type metadata for String;
  v34 = sub_1087C();
  *(v33 + 32) = v66;
  *(v33 + 40) = v20;
  *(v33 + 96) = &type metadata for String;
  *(v33 + 104) = v34;
  *(v33 + 64) = v34;
  *(v33 + 72) = 0xD000000000000018;
  *(v33 + 80) = 0x80000000002DC0D0;

  v56 = v33;
  LOBYTE(v55) = 2;
  v54 = 125;
  v59 = v26;
  sub_2CDF90();

  v35 = swift_allocObject();
  *(v35 + 16) = sub_13D80;
  *(v35 + 24) = v30;
  v36 = qword_34BF58;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = v61;
  v38 = sub_3ED0(v61, static Logger.default);
  swift_beginAccess();
  v39 = v60;
  v40 = v65;
  (*(v60 + 16))(v65, v38, v37);

  v41 = sub_2CDFE0();
  v42 = sub_2CE660();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v58 = v35;
    v69 = v44;
    *v43 = 136315394;
    v45 = v66;
    *(v43 + 4) = sub_3F08(v66, v20, &v69);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_3F08(0xD000000000000018, 0x80000000002DC0D0, &v69);
    _os_log_impl(&dword_0, v41, v42, "Evaluating CAT family:%s id:%s...", v43, 0x16u);
    swift_arrayDestroy();
    v35 = v58;

    (*(v39 + 8))(v65, v37);
  }

  else
  {

    (*(v39 + 8))(v40, v37);
    v45 = v66;
  }

  v69 = v45;
  v70 = v20;

  v74._countAndFlagsBits = 35;
  v74._object = 0xE100000000000000;
  sub_2CE350(v74);
  v75._countAndFlagsBits = 0xD000000000000018;
  v75._object = 0x80000000002DC0D0;
  sub_2CE350(v75);
  v47 = v69;
  v46 = v70;
  v48 = sub_2CB460();
  if (!v48)
  {
    sub_2CB180();
    v48 = sub_2CB170();
  }

  v49 = v48;
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = sub_13DB4;
  v50[4] = v35;
  v51 = sub_2CB180();
  __chkstk_darwin(v51);
  v52 = v63;
  *(&v57 - 10) = v62;
  *(&v57 - 9) = v52;
  *(&v57 - 8) = v64;
  *(&v57 - 7) = v71;
  *(&v57 - 6) = 0;
  *(&v57 - 5) = v47;
  v54 = v46;
  v55 = sub_3E06C;
  v56 = v50;

  sub_2CB0F0();

  (*(v67 + 8))(v59, v68);
  return sub_30B8(v71, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28A734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v62 = a8;
  v68 = a1;
  v13 = *v9;
  v14 = sub_2CE000();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v14);
  v63 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2CDFD0();
  v71 = *(v72 - 8);
  v17 = *(v71 + 64);
  v18 = __chkstk_darwin(v72);
  v19 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v70 = &v59 - v20;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v67 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v65 = v9[2];
  v22 = v9[14];
  v69 = v9[13];
  v61 = v22;
  v77 = a5;
  v23 = *(v13 + 80);
  v24 = a5;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v76 = 0;
    memset(v75, 0, sizeof(v75));
  }

  v66 = v14;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v25 = qword_35F760;
  v26 = v70;
  sub_2CDFB0();
  v27 = v71;
  v28 = v72;
  (*(v71 + 16))(v19, v26, v72);
  v29 = (*(v27 + 80) + 33) & ~*(v27 + 80);
  v30 = (v17 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = "catServiceExecute";
  *(v31 + 24) = 17;
  *(v31 + 32) = 2;
  (*(v27 + 32))(v31 + v29, v19, v28);
  v32 = (v31 + v30);
  *v32 = v62;
  v32[1] = a9;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2D0E40;
  *(v33 + 56) = &type metadata for String;
  v34 = sub_1087C();
  v35 = v69;
  v36 = v61;
  *(v33 + 32) = v69;
  *(v33 + 40) = v36;
  *(v33 + 96) = &type metadata for String;
  *(v33 + 104) = v34;
  *(v33 + 64) = v34;
  *(v33 + 72) = 0xD000000000000014;
  v62 = 0x80000000002E0BD0;
  *(v33 + 80) = 0x80000000002E0BD0;
  v37 = v36;

  v58 = v33;
  LOBYTE(v57) = 2;
  v56 = 125;
  sub_2CDF90();

  v38 = swift_allocObject();
  *(v38 + 16) = sub_13D7C;
  *(v38 + 24) = v31;
  v60 = v38;
  v39 = qword_34BF58;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = v66;
  v41 = sub_3ED0(v66, static Logger.default);
  swift_beginAccess();
  v42 = v64;
  v43 = v63;
  (*(v64 + 16))(v63, v41, v40);

  v44 = sub_2CDFE0();
  v45 = sub_2CE660();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v46 = 136315394;
    *(v46 + 4) = sub_3F08(v69, v37, &v73);
    *(v46 + 12) = 2080;
    v47 = v62;
    *(v46 + 14) = sub_3F08(0xD000000000000014, v62, &v73);
    _os_log_impl(&dword_0, v44, v45, "Evaluating CAT family:%s id:%s...", v46, 0x16u);
    swift_arrayDestroy();

    v35 = v69;

    (*(v42 + 8))(v43, v40);
  }

  else
  {

    (*(v42 + 8))(v43, v40);
    v47 = v62;
  }

  v73 = v35;
  v74 = v37;

  v78._countAndFlagsBits = 35;
  v78._object = 0xE100000000000000;
  sub_2CE350(v78);
  v79._countAndFlagsBits = 0xD000000000000014;
  v79._object = v47;
  sub_2CE350(v79);
  v48 = v73;
  v49 = v74;
  v50 = sub_2CB460();
  if (!v50)
  {
    sub_2CB180();
    v50 = sub_2CB170();
  }

  v51 = v50;
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = sub_13D84;
  v52[4] = v60;
  v53 = sub_2CB180();
  __chkstk_darwin(v53);
  v54 = v67;
  *(&v59 - 10) = v65;
  *(&v59 - 9) = v54;
  *(&v59 - 8) = v68;
  *(&v59 - 7) = v75;
  *(&v59 - 6) = 0;
  *(&v59 - 5) = v48;
  v56 = v49;
  v57 = sub_3E010;
  v58 = v52;

  sub_2CB0F0();

  (*(v71 + 8))(v70, v72);
  return sub_30B8(v75, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28AF78()
{
  sub_281ADC();

  return swift_deallocClassInstance();
}

uint64_t sub_28AFC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v54 = a3;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2CDFD0();
  v62 = *(v64 - 8);
  v11 = *(v62 + 64);
  v12 = __chkstk_darwin(v64);
  v13 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v53 - v14;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v53 = xmmword_2D0E40;
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 32) = 0x79616C507369;
  *(inited + 40) = 0xE600000000000000;
  if (a1)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    v16 = 0;
  }

  *(inited + 48) = v16;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000000002DD140;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = a2;
  v59 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v56 = v4[2];
  v17 = v4[13];
  v18 = v4[14];
  if (!a1 || (v67 = a1, sub_334A0(0, &qword_3512C0, INIntent_ptr), v19 = a1, sub_20410(&unk_3530B0, &qword_2D2270), (swift_dynamicCast() & 1) == 0))
  {
    v69 = 0;
    memset(v68, 0, sizeof(v68));
  }

  v61 = v17;
  v58 = v8;
  v60 = v7;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v20 = qword_35F760;
  v21 = v63;
  sub_2CDFB0();
  v22 = v62;
  v23 = v64;
  (*(v62 + 16))(v13, v21, v64);
  v24 = (*(v22 + 80) + 33) & ~*(v22 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = "catServiceExecute";
  *(v26 + 24) = 17;
  *(v26 + 32) = 2;
  (*(v22 + 32))(v26 + v24, v13, v23);
  v27 = (v26 + v25);
  v28 = v55;
  *v27 = v54;
  v27[1] = v28;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v29 = swift_allocObject();
  *(v29 + 16) = v53;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_1087C();
  *(v29 + 32) = v61;
  *(v29 + 40) = v18;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  *(v29 + 64) = v30;
  *(v29 + 72) = 0x6769626D61736944;
  *(v29 + 80) = 0xEF70704165746175;

  v52 = v29;
  LOBYTE(v51) = 2;
  v50 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v26;
  v32 = qword_34BF58;
  v55 = v26;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v60;
  v34 = sub_3ED0(v60, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v57;
  (*(v58 + 16))(v57, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54 = v31;
    v65 = v40;
    *v39 = 136315394;
    v41 = v61;
    *(v39 + 4) = sub_3F08(v61, v18, &v65);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_3F08(0x6769626D61736944, 0xEF70704165746175, &v65);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();
    v31 = v54;

    (*(v35 + 8))(v36, v60);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v41 = v61;
  }

  v65 = v41;
  v66 = v18;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x6769626D61736944;
  v71._object = 0xEF70704165746175;
  sub_2CE350(v71);
  v42 = v65;
  v43 = v66;
  v44 = sub_2CB460();
  if (!v44)
  {
    sub_2CB180();
    v44 = sub_2CB170();
  }

  v45 = v44;
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = sub_13DB4;
  v46[4] = v31;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v48 = v59;
  *(&v53 - 10) = v56;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = 0;
  *(&v53 - 7) = v68;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v42;
  v50 = v43;
  v51 = sub_3E06C;
  v52 = v46;

  sub_2CB0F0();

  (*(v62 + 8))(v63, v64);
  return sub_30B8(v68, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28B888(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34C6C0, &qword_2D0710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28B8F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a2;
  v55 = a3;
  v6 = *v3;
  v7 = sub_2CE000();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v60 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v54 - v14;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D10E0;
  *(inited + 32) = 0x616C507261437369;
  *(inited + 40) = 0xE900000000000079;
  *(inited + 48) = sub_2CB640() & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x68637461577369;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_2CB620() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6F50656D6F487369;
  *(inited + 136) = 0xE900000000000064;
  v16 = sub_2CB650();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v16 & 1;
  v59 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v56 = v3[2];
  v17 = v3[13];
  v18 = v4[14];
  if (!a1 || (v68 = a1, v19 = *(v6 + 80), v20 = a1, sub_20410(&unk_3530B0, &qword_2D2270), (swift_dynamicCast() & 1) == 0))
  {
    v70 = 0;
    memset(v69, 0, sizeof(v69));
  }

  v61 = 0x80000000002E0C70;
  v62 = v17;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  v22 = v63;
  sub_2CDFB0();
  v24 = v64;
  v23 = v65;
  (*(v64 + 16))(v13, v22, v65);
  v25 = (*(v24 + 80) + 33) & ~*(v24 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = "catServiceExecute";
  *(v27 + 24) = 17;
  *(v27 + 32) = 2;
  (*(v24 + 32))(v27 + v25, v13, v23);
  v28 = (v27 + v26);
  v29 = v55;
  *v28 = v54;
  v28[1] = v29;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2D0E40;
  *(v30 + 56) = &type metadata for String;
  v31 = sub_1087C();
  v32 = v61;
  *(v30 + 32) = v62;
  *(v30 + 40) = v18;
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v31;
  *(v30 + 64) = v31;
  *(v30 + 72) = 0xD000000000000021;
  *(v30 + 80) = v32;

  v53 = v30;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v33 = swift_allocObject();
  *(v33 + 16) = sub_13D80;
  *(v33 + 24) = v27;
  v55 = v33;
  v34 = qword_34BF58;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = v58;
  sub_3ED0(v58, static Logger.default);
  swift_beginAccess();
  v36 = v57;
  v37 = v60;
  (*(v57 + 16))();

  v38 = sub_2CDFE0();
  v39 = sub_2CE660();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v36;
    v41 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v41 = 136315394;
    v42 = v62;
    *(v41 + 4) = sub_3F08(v62, v18, &v66);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_3F08(0xD000000000000021, v61, &v66);
    _os_log_impl(&dword_0, v38, v39, "Evaluating CAT family:%s id:%s...", v41, 0x16u);
    swift_arrayDestroy();

    (*(v40 + 8))(v60, v35);
    v32 = v61;
  }

  else
  {

    (*(v36 + 8))(v37, v35);
    v42 = v62;
  }

  v66 = v42;
  v67 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000021;
  v72._object = v32;
  sub_2CE350(v72);
  v44 = v66;
  v43 = v67;
  v45 = sub_2CB460();
  if (!v45)
  {
    sub_2CB180();
    v45 = sub_2CB170();
  }

  v46 = v45;
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = sub_13DB4;
  v47[4] = v55;
  v48 = sub_2CB180();
  __chkstk_darwin(v48);
  v49 = v59;
  *(&v54 - 10) = v56;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = 0;
  *(&v54 - 7) = v69;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v44;
  v51 = v43;
  v52 = sub_3E06C;
  v53 = v47;

  sub_2CB0F0();

  (*(v64 + 8))(v63, v65);
  return sub_30B8(v69, &qword_34C6C0, &qword_2D0710);
}

void sub_28C0E4()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2CDFE0();
  v7 = sub_2CE690();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "AceServiceInvoker#showSpinningOrb Showing the spinning orb...", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v9 = [objc_allocWithZone(SAUIAddViews) init];
  v10 = [objc_allocWithZone(SAAceView) init];
  sub_20410(&unk_351900, &unk_2D0960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2D0770;
  *(v11 + 32) = v10;
  sub_28C39C();
  v12 = v10;
  isa = sub_2CE400().super.isa;

  [v9 setViews:isa];

  [v9 setDialogPhase:SAUIDialogPhaseClarificationValue];
  [v9 setTemporary:1];
  sub_2CA150();
}

unint64_t sub_28C39C()
{
  result = qword_34CD10;
  if (!qword_34CD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34CD10);
  }

  return result;
}

uint64_t sub_28C3E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v3 = sub_2CDAA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v61 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v55 - v9;
  v11 = sub_20410(&qword_34E938, &qword_2D28E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v57 = &v55 - v13;
  v14 = sub_20410(&qword_34E940, &qword_2D28E8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v55 - v16;
  v58 = sub_2CE050();
  v65 = *(v58 - 8);
  v18 = *(v65 + 64);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CA000();
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v62 = v4;
  v63 = v10;
  v29 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  (*(v25 + 16))(v28, v29, v24);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v32, 2u);
  }

  (*(v25 + 8))(v28, v24);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v34 = v64;
  *(v33 + 32) = sub_2CA740();
  sub_2C9F80();
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = [v35 mediaItems];
  }

  else
  {
    v36 = [v34 mediaItems];
  }

  v37 = v36;
  v38 = v65;
  if (!v37)
  {
    goto LABEL_18;
  }

  v39 = v37;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v40 = sub_2CE410();

  if (!(v40 >> 62))
  {
    result = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_17:

LABEL_18:
    (*(v38 + 56))(v17, 1, 1, v58);
    goto LABEL_19;
  }

LABEL_11:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v42 = sub_2CECD0();
LABEL_14:
    v43 = v42;

    v44 = sub_2CE030();
    v45 = v57;
    (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
    sub_2CE5A0();

    sub_30B8(v45, &qword_34E938, &qword_2D28E0);
    v46 = v58;
    if ((*(v38 + 48))(v17, 1, v58) != 1)
    {
      v47 = v56;
      (*(v38 + 32))(v56, v17, v46);
      sub_20410(&qword_34E950, &qword_2D5350);
      v48 = *(v38 + 72);
      v49 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_2D0090;
      (*(v38 + 16))(v50 + v49, v47, v46);
      sub_2C9F00();
      (*(v38 + 8))(v47, v46);
LABEL_20:
      v51 = v63;
      v52 = v60;
      (*(v62 + 104))(v61, enum case for PommesContext.Source.pluginDefined(_:), v3);
      sub_2CDAB0();
      v53 = sub_2CDAC0();
      (*(*(v53 - 8) + 56))(v51, 0, 1, v53);
      sub_2C9F20();
      v54 = v59;
      (*(v59 + 32))(a2, v23, v52);
      return (*(v54 + 56))(a2, 0, 1, v52);
    }

LABEL_19:
    sub_30B8(v17, &qword_34E940, &qword_2D28E8);
    goto LABEL_20;
  }

  if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
  {
    v42 = *(v40 + 32);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}