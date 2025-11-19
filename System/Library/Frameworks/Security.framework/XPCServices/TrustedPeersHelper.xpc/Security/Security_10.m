uint64_t sub_10012CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v61 = a3;
  v7 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for Bottle(0);
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for Peer(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AC0A0(a2, v27, type metadata accessor for Peer);
  v28 = *(type metadata accessor for EstablishRequest(0) + 20);
  v29 = *(a1 + v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(a1 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = type metadata accessor for EstablishRequest._StorageClass(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v31 = sub_1000BDADC(v31);
    *(a1 + v28) = v31;
  }

  sub_1001AC038(v27, v21, type metadata accessor for Peer);
  (*(v23 + 56))(v21, 0, 1, v22);
  v35 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v21, v31 + v35, &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  sub_1001AC0A0(v61, v16, type metadata accessor for Bottle);
  v36 = *(a1 + v28);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + v28);
  if ((v37 & 1) == 0)
  {
    v39 = type metadata accessor for EstablishRequest._StorageClass(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v38 = sub_1000BDADC(v38);
    *(a1 + v28) = v38;
  }

  sub_1001AC038(v16, v11, type metadata accessor for Bottle);
  (*(v62 + 56))(v11, 0, 1, v63);
  v42 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v11, v38 + v42, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v43 = *(a1 + v28);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(a1 + v28);
  if ((v44 & 1) == 0)
  {
    v46 = type metadata accessor for EstablishRequest._StorageClass(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v45 = sub_1000BDADC(v45);
    *(a1 + v28) = v45;
  }

  v49 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v50 = *(v45 + v49);
  *(v45 + v49) = v64;

  v51 = *(a1 + v28);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(a1 + v28);
  if ((v52 & 1) == 0)
  {
    v54 = type metadata accessor for EstablishRequest._StorageClass(0);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v53 = sub_1000BDADC(v53);
    *(a1 + v28) = v53;
  }

  v57 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v58 = *(v53 + v57);
  *(v53 + v57) = v65;
}

uint64_t sub_10012D1D4(uint64_t a1, uint64_t a2, char *a3, void *a4, void *a5, void *a6, void (*a7)(void, void, void *, void, uint64_t), uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char *a16, uint64_t a17, char *a18, char a19)
{
  v193 = a7;
  v194 = a8;
  v188 = a5;
  v187 = a4;
  v190 = a3;
  v200 = sub_100216424();
  v181 = *(v200 - 1);
  v21 = *(v181 + 64);
  v23 = __chkstk_darwin(v200, v22);
  v199 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v198 = &v174 - v26;
  v183 = sub_1002164F4();
  v184 = *(v183 - 8);
  v27 = *(v184 + 64);
  __chkstk_darwin(v183, v28);
  v186 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v31 = *(*(v30 - 8) + 64);
  v33 = __chkstk_darwin(v30 - 8, v32);
  v178 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33, v35);
  v179 = &v174 - v37;
  __chkstk_darwin(v36, v38);
  v185 = &v174 - v39;
  v40 = type metadata accessor for Changes(0);
  v195 = *(v40 - 8);
  v41 = *(v195 + 64);
  v43 = __chkstk_darwin(v40, v42);
  v45 = &v174 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v43, v46);
  v180 = (&v174 - v48);
  __chkstk_darwin(v47, v49);
  v197 = &v174 - v50;
  v182 = type metadata accessor for EstablishResponse(0);
  v51 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182, v52);
  v54 = (&v174 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v196 = sub_10001148C(&qword_100298500, &qword_10021DF70);
  v55 = *(*(v196 - 1) + 64);
  __chkstk_darwin(v196, v56);
  v191 = (&v174 - v57);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v58 = sub_100216774();
  v59 = sub_100002648(v58, qword_10029D160);

  v60 = sub_100216754();
  v61 = sub_100216C54();

  v62 = os_log_type_enabled(v60, v61);
  v192 = a6;
  v177 = v45;
  v189 = v40;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v63 = 136446210;
    type metadata accessor for ViewKeys(0);
    v65 = sub_100216B34();
    v67 = sub_100005FB0(v65, v66, &aBlock);
    v40 = v189;

    *(v63 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v60, v61, "Establish: viewKeys: %{public}s", v63, 0xCu);
    sub_100006128(v64);
  }

  v68 = v191;
  sub_100019C6C(a1, v191, &qword_100298500, &qword_10021DF70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v197;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_11:
    v85 = v184;
    v86 = v183;
    sub_1001AC038(v68, v54, type metadata accessor for EstablishResponse);
    v182 = *(v182 + 24);
    v87 = v185;
    sub_100019C6C(v54 + v182, v185, &unk_10029D750, &qword_10021E850);
    v88 = v195 + 48;
    v89 = *(v195 + 48);
    v90 = v89(v87, 1, v40);
    v195 = v88;
    if (v90 == 1)
    {
      *v70 = 0;
      *(v70 + 8) = 0xE000000000000000;
      *(v70 + 16) = _swiftEmptyArrayStorage;
      *(v70 + 24) = xmmword_10021D470;
      *(v70 + 40) = xmmword_10021D470;
      *(v70 + 56) = 0;
      v91 = v70 + *(v40 + 36);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v89(v87, 1, v40) != 1)
      {
        sub_1000114D4(v87, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      sub_1001AC038(v87, v70, type metadata accessor for Changes);
    }

    v101 = v186;
    sub_1002164E4();
    sub_1001A13C4(&qword_10029D930, type metadata accessor for Changes);
    v102 = sub_100216604();
    v175 = v89;
    v104 = v103;
    v185 = 0;
    v196 = v102;
    (*(v85 + 8))(v101, v86);
    sub_1001AC1E4(v70, type metadata accessor for Changes);

    v105 = sub_100216754();
    v106 = sub_100216C54();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = v59;
      v108 = v54;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock = v110;
      *v109 = 136446210;
      v111 = sub_100005FB0(v196, v104, &aBlock);

      *(v109 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v105, v106, "Establish returned changes: %{public}s", v109, 0xCu);
      sub_100006128(v110);

      v54 = v108;
      v59 = v107;
    }

    else
    {
    }

    v176 = v59;
    v191 = v54;
    v112 = *v54;
    aBlock = _swiftEmptyArrayStorage;
    v113 = *(v112 + 16);
    if (v113)
    {
      v197 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v114 = *(v181 + 16);
      v115 = v112 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
      v116 = *(v181 + 72);
      v117 = (v181 + 8);
      v196 = _swiftEmptyArrayStorage;
      v118 = v200;
      do
      {
        v119 = v198;
        v114(v198, v115, v118);
        v114(v199, v119, v118);
        v120 = sub_100216D94();
        (*v117)(v119, v118);
        if (v120)
        {
          sub_100216B04();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v196 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100216B44();
          }

          sub_100216B64();
          v196 = aBlock;
        }

        v115 += v116;
        --v113;
      }

      while (v113);
    }

    else
    {
      v196 = _swiftEmptyArrayStorage;
    }

    v121 = [v187 modelID];
    v122 = sub_100216974();
    v124 = v123;

    v125 = v190;
    v126 = v185;
    v127 = sub_100151404(v122, v124, v188);
    if (v126)
    {

      v128 = v193;
      v129 = v191;
      swift_errorRetain();
      v142 = sub_100216754();
      v143 = sub_100216C74();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        aBlock = v145;
        *v144 = 136446210;
        v207 = v126;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v146 = sub_100216994();
        v148 = sub_100005FB0(v146, v147, &aBlock);

        *(v144 + 4) = v148;
        _os_log_impl(&_mh_execute_header, v142, v143, "establish handling failed: %{public}s", v144, 0xCu);
        sub_100006128(v145);
        v129 = v191;
      }

      v149 = v192;
      v150 = sub_100216144();
      [v149 sendMetricWithResult:0 error:v150];

      swift_errorRetain();
      v128(0, 0, v196, 0, v126);
    }

    else
    {
      v130 = v127;

      v131 = v191;
      v132 = v179;
      sub_100019C6C(v191 + v182, v179, &unk_10029D750, &qword_10021E850);
      v133 = v189;
      v134 = v175;
      v135 = v175(v132, 1, v189);
      v136 = v193;
      if (v135 == 1)
      {
        v137 = v180;
        *v180 = 0;
        v137[1] = 0xE000000000000000;
        v137[2] = _swiftEmptyArrayStorage;
        *(v137 + 3) = xmmword_10021D470;
        *(v137 + 5) = xmmword_10021D470;
        *(v137 + 56) = 0;
        v138 = v137 + *(v133 + 36);
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        v139 = v134(v132, 1, v133);
        if (v139 != 1)
        {
          v139 = sub_1000114D4(v132, &unk_10029D750, &qword_10021E850);
        }
      }

      else
      {
        v137 = v180;
        v139 = sub_1001AC038(v132, v180, type metadata accessor for Changes);
      }

      v141 = *&v125[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
      __chkstk_darwin(v139, v140);
      *(&v174 - 4) = v137;
      *(&v174 - 3) = v125;
      *(&v174 - 16) = 0;
      sub_100216D34();
      sub_1001AC1E4(v137, type metadata accessor for Changes);
      v152 = v178;
      sub_100019C6C(v131 + v182, v178, &unk_10029D750, &qword_10021E850);
      v153 = v189;
      if (v134(v152, 1, v189) == 1)
      {
        v154 = v177;
        *v177 = 0;
        v154[1] = 0xE000000000000000;
        v154[2] = _swiftEmptyArrayStorage;
        *(v154 + 3) = xmmword_10021D470;
        *(v154 + 5) = xmmword_10021D470;
        *(v154 + 56) = 0;
        v155 = v154 + *(v153 + 36);
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        if (v134(v152, 1, v153) != 1)
        {
          sub_1000114D4(v152, &unk_10029D750, &qword_10021E850);
        }
      }

      else
      {
        v154 = v177;
        sub_1001AC038(v152, v177, type metadata accessor for Changes);
      }

      v156 = *(v154 + 56);
      sub_1001AC1E4(v154, type metadata accessor for Changes);
      v157 = sub_100216754();
      v158 = sub_100216C54();
      v159 = os_log_type_enabled(v157, v158);
      if (v156)
      {
        if (v159)
        {
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&_mh_execute_header, v157, v158, "establish succeeded, but more changes need fetching...", v160, 2u);
        }

        v161 = swift_allocObject();
        v162 = v192;
        v161[2] = v192;
        v161[3] = v136;
        v163 = v196;
        v161[4] = v194;
        v161[5] = v163;
        v161[6] = a9;
        v161[7] = a10;
        v200 = a10;
        v161[8] = v130;
        v164 = swift_allocObject();
        *(v164 + 16) = 0;
        v165 = v190;
        *(v164 + 24) = v190;
        *(v164 + 32) = sub_1001AAA14;
        *(v164 + 40) = v161;
        v166 = swift_allocObject();
        *(v166 + 16) = sub_1001ACE7C;
        *(v166 + 24) = v164;
        v205 = sub_1001ACCC0;
        v206 = v166;
        aBlock = _NSConcreteStackBlock;
        v202 = 1107296256;
        v203 = sub_100109050;
        v204 = &unk_100283D28;
        v167 = _Block_copy(&aBlock);
        v168 = v130;
        v169 = v162;

        v170 = v165;

        [v141 performBlockAndWait:v167];
        _Block_release(v167);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          return result;
        }

        v151 = v191;
        return sub_1001AC1E4(v151, type metadata accessor for EstablishResponse);
      }

      if (v159)
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&_mh_execute_header, v157, v158, "establish succeeded", v172, 2u);
      }

      [v192 sendMetricWithResult:1 error:0];
      v173 = v130;
      v136(a9, a10, v196, v130, 0);

      v129 = v191;
    }

    v151 = v129;
    return sub_1001AC1E4(v151, type metadata accessor for EstablishResponse);
  }

  v71 = *v68;
  swift_errorRetain();
  swift_errorRetain();
  v72 = sub_100216144();
  v73 = [v72 isCuttlefishError:1001];

  if (v73)
  {
    v74 = a17;
    v75 = a15;
    v198 = a16;
    v199 = a18;
    v197 = a14;

    v76 = sub_100216754();
    v77 = sub_100216C54();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "establish returned failed, trying fetch", v78, 2u);
      v74 = a17;
      v75 = a15;
    }

    v196 = a11;

    v79 = sub_100216144();
    [v192 sendMetricWithResult:0 error:v79];

    v59 = v190;
    v200 = *&v190[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v70 = swift_allocObject();
    *(v70 + 16) = a13;
    v54 = v198;
    *(v70 + 24) = v197;
    *(v70 + 32) = v75;
    *(v70 + 40) = v54;
    *(v70 + 48) = v74;
    *(v70 + 56) = v199;
    *(v70 + 64) = a19 & 1;
    v80 = v193;
    v40 = v194;
    *(v70 + 72) = v59;
    *(v70 + 80) = v80;
    *(v70 + 88) = v40;
    *(v70 + 96) = a11;
    *(v70 + 104) = a12;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1001AA9D0;
    *(v81 + 24) = v70;
    v205 = sub_1001ACCC0;
    v206 = v81;
    aBlock = _NSConcreteStackBlock;
    v202 = 1107296256;
    v203 = sub_100109050;
    v204 = &unk_100283C88;
    v82 = _Block_copy(&aBlock);

    v83 = v59;

    [v200 performBlockAndWait:v82];

    _Block_release(v82);
    v68 = swift_isEscapingClosureAtFileLocation();

    if (v68)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    swift_errorRetain();
    v92 = sub_100216754();
    v93 = sub_100216C74();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock = v95;
      *v94 = 136446210;
      v207 = v71;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v96 = sub_100216994();
      v98 = sub_100005FB0(v96, v97, &aBlock);

      *(v94 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v92, v93, "establish failed: %{public}s", v94, 0xCu);
      sub_100006128(v95);
    }

    v99 = v192;
    v100 = sub_100216144();
    [v99 sendMetricWithResult:0 error:v100];

    v193(0, 0, _swiftEmptyArrayStorage, 0, v71);
  }

  return result;
}

uint64_t sub_10012E788(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);
    swift_errorRetain();
    v13 = sub_100216754();
    v14 = sub_100216C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v15 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v16 = sub_100216994();
      v18 = sub_100005FB0(v16, v17, &v34);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "fetch-after-establish failed: %{public}s", v15, 0xCu);
      sub_100006128(v33);
    }

    v19 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v19];

    v20 = 0;
    v21 = 0;
    v22 = a5;
    v23 = 0;
    v24 = a1;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    v29 = sub_100216754();
    v30 = sub_100216C54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "fetch-after-establish succeeded", v31, 2u);
    }

    [a2 sendMetricWithResult:1 error:0];
    v20 = a6;
    v21 = a7;
    v22 = a5;
    v23 = a8;
    v24 = 0;
  }

  return a3(v20, v21, v22, v23, v24);
}

uint64_t sub_10012EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v13 = v7;
  v14 = sub_10019C8E0(v13, 0xD000000000000030, 0x800000010023D050);

  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a6;
  v15[4] = a7;
  v16 = qword_100297520;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_100216774();
  sub_100002648(v17, qword_10029D160);
  v18 = sub_100216754();
  v19 = sub_100216C54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "beginning a setRecoveryKey", v20, 2u);
  }

  v21 = swift_allocObject();
  v21[2] = sub_1001ABED8;
  v21[3] = v15;
  v21[4] = v13;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = a5;
  v28 = *&v13[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = v13;
  *(v22 + 32) = sub_1001ABEE4;
  *(v22 + 40) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1001ACE7C;
  *(v23 + 24) = v22;
  aBlock[4] = sub_1001ACCC0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_1002856C8;
  v24 = _Block_copy(aBlock);
  v25 = v13;

  [v28 performBlockAndWait:v24];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10012EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "setRecoveryKey complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000030, 0x800000010023D050);
  return a4(a1, a2);
}

uint64_t sub_10012F008(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    return a2(0, a1);
  }

  v16 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  v18[9] = a9;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1001ABF58;
  *(v19 + 24) = v18;
  v22[4] = sub_1001ACCC0;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100109050;
  v22[3] = &unk_100285740;
  v20 = _Block_copy(v22);
  v21 = a4;

  [v16 performBlockAndWait:v20];
  _Block_release(v20);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_10012F1DC(char *a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, unint64_t a5, void *a6, unint64_t a7, uint64_t a8)
{
  v16 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v17 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v17)
  {
    v18 = v17;
    v224 = v16;
    v226 = a1;
    v19 = a2;
    v20 = sub_100216974();
    v22 = v21;

    v29 = sub_100013A8C(a4, a5, a6, a7);
    v221 = a8;
    v222 = v22;
    v223 = a3;
    v30 = *&v226[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v228 = v29;
    v31 = OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys;
    v32 = (*&v29[OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID);
    v33 = *v32;
    v34 = v32[1];
    v35 = v30;

    v36 = sub_100216964();

    *&aBlock = 0;
    v37 = [v35 anyTrustedPeerDistrustsOtherPeer:v36 error:&aBlock];

    if (aBlock)
    {
      v38 = aBlock;

      swift_willThrow();
      v39 = v19;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v40 = sub_100216774();
      sub_100002648(v40, qword_10029D160);
      swift_errorRetain();
      v41 = sub_100216754();
      v42 = sub_100216C74();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&aBlock = v44;
        *v43 = 136446210;
        v234 = v38;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v45 = sub_100216994();
        v47 = sub_100005FB0(v45, v46, &aBlock);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "failed to create recovery keys: %{public}s", v43, 0xCu);
        sub_100006128(v44);
      }

      sub_1000561D0();
      v48 = swift_allocError();
      *v49 = v38;
      *(v49 + 8) = 0;
      *(v49 + 16) = 3;
      swift_errorRetain();
      v39(0, v48);

      goto LABEL_16;
    }

    v50 = v19;
    if (v37)
    {

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v51 = sub_100216774();
      sub_100002648(v51, qword_10029D160);
      v52 = sub_100216754();
      v53 = sub_100216C74();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Recovery key is distrusted!", v54, 2u);
      }

      sub_1000561D0();
      v55 = swift_allocError();
      *v56 = xmmword_10021DC10;
      *(v56 + 16) = 13;
      v19(0, v55);

      goto LABEL_57;
    }

    v57 = [*(*&v29[v31] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingVerificationKey) keyData];
    v58 = sub_100216224();
    v60 = v59;

    v61 = [*(*&v29[v31] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionVerificationKey) keyData];
    v220 = sub_100216224();
    v63 = v62;

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v64 = sub_100216774();
    sub_100002648(v64, qword_10029D160);
    sub_100012558(v58, v60);
    v65 = sub_100216754();
    v66 = sub_100216C54();
    sub_100002BF0(v58, v60);
    v218 = v63;
    v219 = v60;
    v217 = v58;
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&aBlock = v68;
      *v67 = 136446210;
      v69 = sub_100216214(0);
      v71 = sub_100005FB0(v69, v70, &aBlock);

      *(v67 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v65, v66, "setRecoveryKey signingPubKey: %{public}s", v67, 0xCu);
      sub_100006128(v68);

      v63 = v218;
    }

    sub_100012558(v220, v63);
    v72 = sub_100216754();
    v73 = sub_100216C54();
    sub_100002BF0(v220, v63);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&aBlock = v75;
      *v74 = 136446210;
      v76 = sub_100216214(0);
      v78 = sub_100005FB0(v76, v77, &aBlock);

      *(v74 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v72, v73, "setRecoveryKey encryptionPubKey: %{public}s", v74, 0xCu);
      sub_100006128(v75);
    }

    v79 = v219;
    v80 = [*&v226[v224] egoPeerStableInfo];
    if (v80)
    {
      v81 = v80;
      v82 = sub_100216224();
      v84 = v83;

      v85 = [*&v226[v224] egoPeerStableInfoSig];
      if (v85)
      {
        v86 = v85;
        v216 = sub_100216224();
        v88 = v87;

        v89 = [*&v226[v224] egoPeerPermanentInfo];
        if (v89)
        {
          v214 = v88;
          v90 = v89;
          v213 = sub_100216224();
          v92 = v91;

          v93 = [*&v226[v224] egoPeerPermanentInfoSig];
          if (v93)
          {
            v211 = v50;
            v212 = v92;
            v94 = v93;
            v95 = sub_100216224();
            v97 = v96;

            v98 = objc_allocWithZone(TPPeerStableInfo);
            v99 = v84;
            sub_100012558(v82, v84);
            sub_100012558(v216, v214);
            isa = sub_100216204().super.isa;
            v225 = v82;
            v101 = sub_100216204().super.isa;
            v102 = [v98 initWithData:isa sig:v101];

            v103 = v225;
            sub_100002BF0(v216, v214);

            sub_100002BF0(v225, v84);
            if (v102)
            {
              v206 = v102;
              v203 = v84;
              v210 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v213, v212);
              sub_100012558(v95, v97);
              v204 = sub_100216964();

              v104 = sub_100216204().super.isa;
              v105 = sub_100216204().super.isa;
              v106 = [objc_opt_self() permanentInfoWithPeerID:v204 data:v104 sig:v105 keyFactory:v210];

              v208 = v95;
              v209 = v97;
              sub_100002BF0(v95, v97);

              sub_100002BF0(v213, v212);
              v79 = v219;
              if (v106)
              {
                strcpy(&aBlock, "signing-key ");
                BYTE13(aBlock) = 0;
                HIWORD(aBlock) = -5120;
                v236._countAndFlagsBits = v20;
                v236._object = v222;
                sub_100216A14(v236);
                v107 = objc_opt_self();
                sub_100012558(v217, v219);
                sub_100012558(v220, v218);

                v205 = v226;

                v227 = v106;
                v108 = v206;
                v109 = [v107 defaultManager];
                v110 = sub_100216964();
                v202 = v109;
                v111 = [v109 identityForIdentifier:v110];

                v207 = v108;
                if (!v111)
                {
                  v158 = sub_100216754();
                  v159 = sub_100216C74();
                  if (os_log_type_enabled(v158, v159))
                  {
                    v160 = swift_slowAlloc();
                    v161 = swift_slowAlloc();
                    *&aBlock = v161;
                    *v160 = 136446210;
                    v234 = 0;
                    sub_10001148C(&qword_100297E80, &unk_1002265A0);
                    v162 = sub_100216994();
                    v164 = sub_100005FB0(v162, v163, &aBlock);

                    *(v160 + 4) = v164;
                    _os_log_impl(&_mh_execute_header, v158, v159, "handle: no signing key pair: %{public}s", v160, 0xCu);
                    sub_100006128(v161);
                  }

                  v111 = v218;
                  v165 = v225;
                  v166 = v212;
                  v167 = v208;
                  v97 = v209;
                  v50(0, 0);

                  goto LABEL_85;
                }

                v112 = [v111 resultType];
                if (v112)
                {
                  if (v112 == 1)
                  {
                    v200 = v111;
                    sub_1000561D0();
                    v169 = swift_allocError();
                    v170 = xmmword_100225F90;
LABEL_75:
                    *v168 = v170;
                    *(v168 + 16) = 13;
                    swift_errorRetain();
                    v186 = sub_100216754();
                    v187 = sub_100216C74();

                    if (os_log_type_enabled(v186, v187))
                    {
                      v188 = swift_slowAlloc();
                      v189 = swift_slowAlloc();
                      *&aBlock = v189;
                      *v188 = 136446210;
                      v234 = v169;
                      swift_errorRetain();
                      sub_10001148C(&qword_100297E80, &unk_1002265A0);
                      v190 = sub_100216994();
                      v192 = sub_100005FB0(v190, v191, &aBlock);

                      *(v188 + 4) = v192;
                      v79 = v219;
                      _os_log_impl(&_mh_execute_header, v186, v187, "handle: no signing key pair: %{public}s", v188, 0xCu);
                      sub_100006128(v189);
                    }

                    v111 = v218;
                    v166 = v212;
                    v211(0, v169);

                    goto LABEL_79;
                  }

                  if (v112 == 2)
                  {
                    v113 = v111;
                    v114 = [v111 error];
                    swift_errorRetain();
                    v115 = sub_100216754();
                    v116 = sub_100216C74();

                    if (os_log_type_enabled(v115, v116))
                    {
                      v117 = swift_slowAlloc();
                      v118 = swift_slowAlloc();
                      *&aBlock = v118;
                      *v117 = 136446210;
                      v234 = v114;
                      swift_errorRetain();
                      sub_10001148C(&qword_100297E80, &unk_1002265A0);
                      v119 = sub_100216994();
                      v121 = sub_100005FB0(v119, v120, &aBlock);

                      *(v117 + 4) = v121;
                      v79 = v219;
                      _os_log_impl(&_mh_execute_header, v115, v116, "handle: no signing key pair: %{public}s", v117, 0xCu);
                      sub_100006128(v118);
                    }

                    v111 = v218;
                    v166 = v212;
                    v50(0, v114);

LABEL_79:
                    v165 = v225;
LABEL_84:
                    v167 = v208;
                    v97 = v209;
LABEL_85:
                    v178 = v220;
                    sub_100002BF0(v220, v111);
                    v177 = v217;
                    sub_100002BF0(v217, v79);
                    goto LABEL_86;
                  }

LABEL_74:
                  v200 = v111;
                  sub_1000561D0();
                  v169 = swift_allocError();
                  v170 = xmmword_100225FA0;
                  goto LABEL_75;
                }

                v201 = v111;
                v171 = [v111 value];
                if (v171)
                {
                  v172 = v171;
                  v173 = [v171 keyPair];

                  if (v173)
                  {
                    objc_opt_self();
                    v174 = swift_dynamicCastObjCClass();
                    if (v174)
                    {
                      v175 = v174;
                      v215 = *&v205[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
                      v176 = swift_allocObject();
                      v176[2] = v221;
                      v176[3] = &v228;
                      v176[4] = v227;
                      v176[5] = v108;
                      v176[6] = v205;
                      v176[7] = v175;
                      v177 = v217;
                      v176[8] = v217;
                      v176[9] = v219;
                      v178 = v220;
                      v176[10] = v220;
                      v176[11] = v218;
                      v176[12] = v20;
                      v176[13] = v222;
                      v176[14] = v211;
                      v176[15] = v223;
                      v179 = swift_allocObject();
                      *(v179 + 16) = sub_1001ABF6C;
                      *(v179 + 24) = v176;
                      v232 = sub_1001ACCC0;
                      v233 = v179;
                      *&aBlock = _NSConcreteStackBlock;
                      *(&aBlock + 1) = 1107296256;
                      v230 = sub_100109050;
                      v231 = &unk_1002857B8;
                      v180 = _Block_copy(&aBlock);
                      v211 = v233;
                      v181 = v173;
                      sub_100012558(v217, v219);
                      sub_100012558(v220, v218);

                      v182 = v205;

                      v183 = v227;
                      v184 = v207;
                      v185 = v181;

                      [v215 performBlockAndWait:v180];

                      _Block_release(v180);
                      LOBYTE(v180) = swift_isEscapingClosureAtFileLocation();

                      v111 = v218;

                      sub_100002BF0(v220, v218);
                      sub_100002BF0(v217, v219);
                      v165 = v225;
                      v166 = v212;
                      v167 = v208;
                      if ((v180 & 1) == 0)
                      {
LABEL_86:

                        sub_100002BF0(v167, v97);
                        sub_100002BF0(v213, v166);
                        sub_100002BF0(v216, v214);
                        sub_100002BF0(v165, v203);
                        sub_100002BF0(v178, v111);
                        sub_100002BF0(v177, v79);
LABEL_16:

                        return;
                      }

                      __break(1u);
                      goto LABEL_74;
                    }
                  }
                }

                v193 = sub_100216754();
                v194 = sub_100216C74();
                if (os_log_type_enabled(v193, v194))
                {
                  v195 = swift_slowAlloc();
                  v196 = swift_slowAlloc();
                  *&aBlock = v196;
                  *v195 = 136446210;
                  v234 = 0;
                  sub_10001148C(&qword_100297E80, &unk_1002265A0);
                  v197 = sub_100216994();
                  v199 = sub_100005FB0(v197, v198, &aBlock);

                  *(v195 + 4) = v199;
                  _os_log_impl(&_mh_execute_header, v193, v194, "handle: no signing key pair: %{public}s", v195, 0xCu);
                  sub_100006128(v196);
                }

                v111 = v218;
                v165 = v225;
                v166 = v212;
                v50(0, 0);

                goto LABEL_84;
              }

              v153 = sub_100216754();
              v154 = sub_100216C54();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = swift_slowAlloc();
                *v155 = 0;
                _os_log_impl(&_mh_execute_header, v153, v154, "cannot create TPPeerPermanentInfo", v155, 2u);
              }

              sub_1000561D0();
              v156 = swift_allocError();
              *v157 = xmmword_10021DC20;
              *(v157 + 16) = 13;
              v50(0, v156);

              sub_100002BF0(v95, v97);
              sub_100002BF0(v213, v212);
              sub_100002BF0(v216, v214);
              v151 = v225;
              v152 = v203;
            }

            else
            {

              v146 = sub_100216754();
              v147 = sub_100216C54();
              v79 = v219;
              if (os_log_type_enabled(v146, v147))
              {
                v148 = swift_slowAlloc();
                *v148 = 0;
                _os_log_impl(&_mh_execute_header, v146, v147, "cannot create TPPeerStableInfo", v148, 2u);
                v103 = v225;
              }

              sub_1000561D0();
              v149 = swift_allocError();
              *v150 = xmmword_10021DC20;
              *(v150 + 16) = 13;
              v50(0, v149);

              sub_100002BF0(v95, v97);
              sub_100002BF0(v213, v212);
              sub_100002BF0(v216, v214);
              v151 = v103;
              v152 = v99;
            }

            sub_100002BF0(v151, v152);
            goto LABEL_44;
          }

          v141 = sub_100216754();
          v142 = sub_100216C54();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            *v143 = 0;
            _os_log_impl(&_mh_execute_header, v141, v142, "permInfoSig does not exist", v143, 2u);
          }

          sub_1000561D0();
          v144 = swift_allocError();
          *v145 = xmmword_100225FD0;
          *(v145 + 16) = 13;
          v50(0, v144);

          sub_100002BF0(v213, v92);
          v139 = v216;
          v140 = v214;
        }

        else
        {

          v134 = sub_100216754();
          v135 = sub_100216C54();
          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            *v136 = 0;
            _os_log_impl(&_mh_execute_header, v134, v135, "permanentInfo does not exist", v136, 2u);
          }

          sub_1000561D0();
          v137 = swift_allocError();
          *v138 = xmmword_100225FD0;
          *(v138 + 16) = 13;
          v50(0, v137);

          v139 = v216;
          v140 = v88;
        }

        sub_100002BF0(v139, v140);
      }

      else
      {

        v129 = sub_100216754();
        v130 = sub_100216C54();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&_mh_execute_header, v129, v130, "stableInfoSig does not exist", v131, 2u);
        }

        sub_1000561D0();
        v132 = swift_allocError();
        *v133 = xmmword_100225FD0;
        *(v133 + 16) = 13;
        v50(0, v132);
      }

      sub_100002BF0(v82, v84);
      sub_100002BF0(v220, v218);
      v127 = v217;
      v128 = v219;
      goto LABEL_56;
    }

    v122 = sub_100216754();
    v123 = sub_100216C54();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "stableInfo does not exist", v124, 2u);
    }

    sub_1000561D0();
    v125 = swift_allocError();
    *v126 = xmmword_100225FD0;
    *(v126 + 16) = 13;
    v50(0, v125);

LABEL_44:
    sub_100002BF0(v220, v218);
    v127 = v217;
    v128 = v79;
LABEL_56:
    sub_100002BF0(v127, v128);
LABEL_57:

    return;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v23 = sub_100216774();
  sub_100002648(v23, qword_10029D160);
  v24 = sub_100216754();
  v25 = sub_100216C54();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "no prepared identity, cannot set recovery key", v26, 2u);
  }

  sub_1000561D0();
  v27 = swift_allocError();
  *v28 = xmmword_10021DA90;
  *(v28 + 16) = 13;
  a2(0, v27);
}

uint64_t sub_100130C5C(unint64_t a1, void *a2, id a3, id *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id *a12, void (*a13)(void, uint64_t), char **a14)
{
  v115 = a6;
  isa = a4;
  v112 = type metadata accessor for SetRecoveryKeyRequest(0);
  v23 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112, v24);
  v114 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for SignedPeerStableInfo(0);
  v26 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111, v27);
  v113 = (&v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = a8;
  if (a1 >> 62)
  {
    v29 = sub_1002170F4();
  }

  else
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = _swiftEmptyArrayStorage;
  v116 = a7;
  if (v29)
  {
    v121 = _swiftEmptyArrayStorage;
    v31 = &v121;
    sub_100217064();
    if (v29 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v118 = a3;
    v32 = 0;
    v14 = &selRef_signingKey;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v33 = sub_100217014();
      }

      else
      {
        v33 = *(a1 + 8 * v32 + 32);
      }

      v34 = v33;
      ++v32;
      v15 = [v33 tlk];

      sub_100217044();
      v16 = v121[2];
      sub_100217074();
      sub_100217084();
      sub_100217054();
    }

    while (v29 != v32);
    v30 = v121;
    a3 = v118;
  }

  swift_beginAccess();
  v31 = *(*a2 + OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys);
  v35 = [a3 epoch];
  a1 = isa;
  if (v35 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v15 = a13;
  v14 = a14;
  v16 = sub_10010C3CC(v30, v31, v31, v35);

  v30 = [a1 bestPolicyVersion];
  v31 = sub_100179A18([v30 versionNumber]);
  v36 = [a1 clock];
  a3 = v36 + 1;
  if (v36 != -1)
  {
    if (qword_100297230 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_14:
  v107 = v30;
  v101 = qword_1002B0320;
  v104 = [v31 version];
  v37 = [a1 policySecrets];
  if (v37)
  {
    v38 = v37;
    v99 = sub_1002168D4();
  }

  else
  {
    v99 = 0;
  }

  v103 = a3;
  v100 = [a1 syncUserControllableViews];
  v39 = [a1 secureElementIdentity];
  v118 = [a1 walrusSetting];
  v110 = [a1 webAccess];
  v40 = [a1 deviceName];
  if (v40)
  {
    v41 = v40;
    v96 = sub_100216974();
    v43 = v42;
  }

  else
  {
    v96 = 0;
    v43 = 0;
  }

  v102 = v39;
  v44 = [a1 serialNumber];
  v106 = v31;
  if (v44)
  {
    v45 = v44;
    v95 = sub_100216974();
    v98 = v46;
  }

  else
  {
    v95 = 0;
    v98 = 0;
  }

  v47 = [a1 osVersion];
  if (!v47)
  {
    sub_100216974();
    v47 = sub_100216964();
  }

  v109 = v14;
  v97 = [a1 isInheritedAccount];
  if (v99)
  {
    isa = sub_1002168C4().super.isa;

    v48 = v118;
    if (v43)
    {
LABEL_27:
      v49 = sub_100216964();

      goto LABEL_30;
    }
  }

  else
  {
    isa = 0;
    v48 = v118;
    if (v43)
    {
      goto LABEL_27;
    }
  }

  v49 = 0;
LABEL_30:
  v108 = v15;
  v105 = v16;
  v94 = a5;
  if (v98)
  {
    v50 = sub_100216964();
  }

  else
  {
    v50 = 0;
  }

  v51 = objc_allocWithZone(TPPeerStableInfo);
  v52 = sub_100216204().super.isa;
  v99 = a9;
  v53.super.isa = sub_100216204().super.isa;
  v98 = a10;
  v54 = v53.super.isa;
  v120[0] = 0;
  LOBYTE(v92) = v97;
  v91 = v53.super.isa;
  v90 = v47;
  v89 = v48;
  v55 = v51;
  v56 = v104;
  v57 = v47;
  v58 = isa;
  v59 = v102;
  v60 = [v55 initWithClock:v103 frozenPolicyVersion:v101 flexiblePolicyVersion:v104 policySecrets:isa syncUserControllableViews:v100 secureElementIdentity:v102 walrusSetting:v89 webAccess:v110 deviceName:v49 serialNumber:v50 osVersion:v90 signingKeyPair:v115 recoverySigningPubKey:v52 recoveryEncryptionPubKey:v91 isInheritedAccount:v92 error:v120];

  if (v60)
  {
    isa = a12;
    v61 = v120[0];

    v62 = v113;
    *v113 = xmmword_10021D470;
    *(v62 + 16) = xmmword_10021D470;
    v63 = *(v111 + 24);
    v64 = v60;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v65 = [v64 data];
    v66 = sub_100216224();
    v68 = v67;

    sub_100002BF0(*v62, *(v62 + 8));
    *v62 = v66;
    *(v62 + 8) = v68;
    v69 = [v64 sig];
    v70 = sub_100216224();
    v72 = v71;

    v73 = sub_100002BF0(*(v62 + 16), *(v62 + 24));
    v74 = v94;
    *(v62 + 16) = v70;
    *(v62 + 24) = v72;
    __chkstk_darwin(v73, v75);
    sub_1001A13C4(&qword_100298D90, type metadata accessor for SetRecoveryKeyRequest);
    v76 = v114;
    sub_100216654();

    v77 = *&v74[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v78 = *&v74[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    isa = sub_100006484(&v74[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v77);
    v79 = swift_allocObject();
    v79[2] = v74;
    v79[3] = v64;
    v80 = v109;
    v79[4] = v108;
    v79[5] = v80;
    v81 = *(v78 + 16);
    v82 = *(v81 + 40);
    v83 = v64;
    v84 = v74;

    v82(v76, sub_1001AC02C, v79, v77, v81);

    sub_1001AC1E4(v76, type metadata accessor for SetRecoveryKeyRequest);
    return sub_1001AC1E4(v62, type metadata accessor for SignedPeerStableInfo);
  }

  else
  {
    v86 = v120[0];

    v87 = sub_100216154();

    swift_willThrow();
    v88 = v108;

    swift_errorRetain();
    v88(0, v87);
  }
}

uint64_t sub_100131610(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a8;
  v39 = a9;
  v40 = a10;
  v38 = type metadata accessor for SignedPeerStableInfo(0);
  v17 = *(v38 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v38, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];

  a1[2] = a2;
  a1[3] = a3;
  v23 = a1[4];
  v24 = a1[5];
  a1[4] = a4;
  a1[5] = a5;
  sub_100012558(a4, a5);
  sub_100002BF0(v23, v24);
  v25 = a1[6];
  v26 = a1[7];
  a1[6] = a6;
  a1[7] = a7;
  sub_100012558(a6, a7);
  sub_100002BF0(v25, v26);
  sub_1001AC0A0(v37, v21, type metadata accessor for SignedPeerStableInfo);
  v27 = *(type metadata accessor for SetRecoveryKeyRequest(0) + 44);
  sub_1000114D4(a1 + v27, &qword_1002985A8, &unk_100226650);
  sub_1001AC038(v21, a1 + v27, type metadata accessor for SignedPeerStableInfo);
  (*(v17 + 56))(a1 + v27, 0, 1, v38);
  v28 = a1[8];
  v29 = v39;

  a1[8] = v29;
  v30 = [*(v40 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (v30)
  {
    v31 = v30;
    v32 = sub_100216974();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  v35 = a1[1];

  *a1 = v32;
  a1[1] = v34;
  return result;
}

uint64_t sub_100131848(uint64_t a1, char *a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = type metadata accessor for SetRecoveryKeyResponse(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7 - 8, v10);
  v12 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v44 - v14;
  v16 = sub_10001148C(&qword_1002984D0, &unk_10021DF40);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v20 = (&v44 - v19);
  sub_100019C6C(a1, &v44 - v19, &qword_1002984D0, &unk_10021DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v45;
    v22 = *v20;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v23 = sub_100216774();
    sub_100002648(v23, qword_10029D160);
    swift_errorRetain();
    v24 = sub_100216754();
    v25 = sub_100216C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      aBlock[6] = v22;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v28 = sub_100216994();
      v30 = sub_100005FB0(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "setRecoveryKey failed: %{public}s", v26, 0xCu);
      sub_100006128(v27);
    }

    swift_errorRetain();
    v21(0, v22);
  }

  else
  {
    sub_1001AC038(v20, v15, type metadata accessor for SetRecoveryKeyResponse);
    v32 = a2;
    v33 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v15, v12, type metadata accessor for SetRecoveryKeyResponse);
    v34 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v44;
    *(v36 + 16) = a2;
    *(v36 + 24) = v37;
    sub_1001AC038(v12, v36 + v34, type metadata accessor for SetRecoveryKeyResponse);
    v38 = (v36 + v35);
    v39 = v46;
    *v38 = v45;
    v38[1] = v39;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1001AC108;
    *(v40 + 24) = v36;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100285858;
    v41 = _Block_copy(aBlock);
    v42 = v32;
    v43 = v37;

    [v33 performBlockAndWait:v41];
    _Block_release(v41);
    sub_1001AC1E4(v15, type metadata accessor for SetRecoveryKeyResponse);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100131CF8(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void *, void), uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  v63 = a3;
  v66 = sub_100216424();
  v59 = *(v66 - 8);
  v7 = *(v59 + 64);
  v9 = __chkstk_darwin(v66, v8);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v64 = &v58 - v12;
  v13 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v58 - v16;
  v18 = type metadata accessor for Changes(0);
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  __chkstk_darwin(v18, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v24 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v25 = [a2 data];
  v26 = sub_100216224();
  v28 = v27;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v26, v28);
  [v24 setEgoPeerStableInfo:isa];

  v30 = *(a1 + v23);
  v31 = [a2 sig];
  v32 = sub_100216224();
  v34 = v33;

  v35 = sub_100216204().super.isa;
  v36 = v32;
  v37 = v62;
  v38 = v63;
  sub_100002BF0(v36, v34);
  [v30 setEgoPeerStableInfoSig:v35];

  v39 = type metadata accessor for SetRecoveryKeyResponse(0);
  sub_100019C6C(v38 + *(v39 + 24), v17, &unk_10029D750, &qword_10021E850);
  v40 = *(v37 + 48);
  if (v40(v17, 1, v18) == 1)
  {
    *v22 = 0;
    *(v22 + 1) = 0xE000000000000000;
    *(v22 + 2) = _swiftEmptyArrayStorage;
    *(v22 + 24) = xmmword_10021D470;
    *(v22 + 40) = xmmword_10021D470;
    v22[56] = 0;
    v41 = &v22[*(v18 + 36)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v40(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v17, v22, type metadata accessor for Changes);
  }

  sub_100174C2C(v22, 0);
  sub_1001AC1E4(v22, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v42 = sub_100216774();
  sub_100002648(v42, qword_10029D160);
  v43 = sub_100216754();
  v44 = sub_100216C54();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "setRecoveryKey succeeded", v45, 2u);
  }

  v46 = *v38;
  v47 = _swiftEmptyArrayStorage;
  v67 = _swiftEmptyArrayStorage;
  v48 = *(v46 + 16);
  if (v48)
  {
    v49 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v50 = *(v59 + 16);
    v51 = v46 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v62 = *(v59 + 72);
    v63 = v49;
    v52 = (v59 + 8);
    do
    {
      v53 = v64;
      v54 = v66;
      v50(v64, v51, v66);
      v50(v65, v53, v54);
      v55 = sub_100216D94();
      (*v52)(v53, v54);
      if (v55)
      {
        sub_100216B04();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v56 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v47 = v67;
      }

      v51 += v62;
      --v48;
    }

    while (v48);
  }

  v60(v47, 0);
}

uint64_t sub_10013242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  if (a3)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v10))
  {
    v18 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20._countAndFlagsBits = sub_100216994();
      sub_100216A14(v20);

      v15 = 0x203A726F727265;
    }

    else
    {
      v15 = 0x73736563637573;
    }

    v16 = sub_100005FB0(v15, 0xE700000000000000, &v19);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "createCustodianRecoveryKey complete: %{public}s", v13, 0xCu);
    sub_100006128(v14);

    a5 = v18;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000046, 0x800000010023C3E0);
  return a5(a1, a2, a3);
}

void sub_100132674(char *a1, uint64_t a2, void (*a3)(void, void, uint64_t), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unsigned int a9, uint64_t a10)
{
  v207 = a7;
  v208 = a8;
  v205 = a6;
  v206 = a5;
  v210 = a3;
  v211 = a4;
  v204 = a10;
  v12 = sub_1002163D4();
  v212 = *(v12 - 8);
  v213 = v12;
  v13 = *(v212 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v16 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v187 - v19;
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v187 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v187 - v26;
  v28 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v209 = a2;
  isa = sub_1002163B4().super.isa;
  v30 = [v28 findCustodianRecoveryKeyWithUUID:isa];

  if (v30)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v31 = sub_100216774();
    sub_100002648(v31, qword_10029D160);
    v32 = v212;
    v33 = v213;
    (*(v212 + 16))(v16, v209, v213);
    v34 = sub_100216754();
    v35 = sub_100216C74();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v214[0] = v37;
      *v36 = 136315138;
      sub_1001A13C4(&qword_10029D738, &type metadata accessor for UUID);
      v38 = sub_100217174();
      v40 = v39;
      (*(v32 + 8))(v16, v33);
      v41 = sub_100005FB0(v38, v40, v214);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "CRK UUID %s already exists", v36, 0xCu);
      sub_100006128(v37);
    }

    else
    {

      (*(v32 + 8))(v16, v33);
    }

    sub_1000561D0();
    v60 = swift_allocError();
    *v61 = xmmword_100225FF0;
    *(v61 + 16) = 13;
    v210(0, 0, v60);
    goto LABEL_20;
  }

  v200 = v20;
  v201 = v24;
  v203 = v27;
  v199 = v13;
  v202 = a9;
  v42 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v43 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v43)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v62 = sub_100216774();
    sub_100002648(v62, qword_10029D160);
    v63 = sub_100216754();
    v64 = sub_100216C54();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "no prepared identity, cannot create custodian recovery key", v65, 2u);
    }

    sub_1000561D0();
    v66 = swift_allocError();
    *v67 = xmmword_10021DA90;
    *(v67 + 16) = 13;
    v210(0, 0, v66);

    goto LABEL_20;
  }

  v198 = v42;
  v44 = v43;
  v45 = sub_100216974();
  v47 = v46;

  v48 = v212 + 16;
  v49 = *(v212 + 16);
  v49(v203, v209, v213);
  v50 = v205;
  v51 = v206;
  v52 = sub_1001B43B8(v206, v205);
  v197 = a1;
  if ((v50 & 0x1000000000000000) != 0)
  {
    v186 = v52;
    v53 = sub_100216A44();
    v52 = v186;
  }

  else if ((v50 & 0x2000000000000000) != 0)
  {
    v53 = HIBYTE(v50) & 0xF;
  }

  else
  {
    v53 = v51 & 0xFFFFFFFFFFFFLL;
  }

  v55 = v207;
  v54 = v208;
  v56 = sub_1000139DC(v52 + 32, v53);
  v58 = v57;

  v59 = objc_allocWithZone(type metadata accessor for RecoveryKeySet());
  sub_100012558(v56, v58);

  v68 = sub_100014D24(v56, v58, v55, v54);
  v196 = v45;
  v69 = v201;
  v70 = v203;
  v71 = v213;
  v49(v201, v203, v213);
  type metadata accessor for CustodianRecoveryKey();
  swift_allocObject();
  v72 = sub_100012654(v69, v68, v202);
  v195 = v49;
  v201 = v48;
  (*(v212 + 8))(v70, v71);
  sub_100002BF0(v56, v58);
  v73 = qword_100297520;
  swift_retain_n();
  v74 = v72;
  if (v73 != -1)
  {
    swift_once();
  }

  v75 = sub_100216774();
  v76 = sub_100002648(v75, qword_10029D160);
  v77 = sub_100216754();
  v78 = sub_100216C54();

  v79 = os_log_type_enabled(v77, v78);
  v203 = v47;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v214[0] = v194;
    *v80 = 136446210;
    v81 = [objc_msgSend(*(v74 + 24) "signingPublicKey")];
    swift_unknownObjectRelease();
    v82 = sub_100216224();
    v84 = v83;

    v85 = sub_100216214(0);
    v87 = v86;
    sub_100002BF0(v82, v84);
    v88 = sub_100005FB0(v85, v87, v214);

    *(v80 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v77, v78, "createCustodianRecoveryKey signingPubKey: %{public}s", v80, 0xCu);
    sub_100006128(v194);
  }

  v89 = sub_100216754();
  v90 = sub_100216C54();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v214[0] = v194;
    *v91 = 136446210;
    v92 = [objc_msgSend(*(v74 + 24) "encryptionPublicKey")];
    swift_unknownObjectRelease();
    v93 = sub_100216224();
    v95 = v94;

    v96 = sub_100216214(0);
    v98 = v97;

    sub_100002BF0(v93, v95);
    v99 = sub_100005FB0(v96, v98, v214);

    *(v91 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v89, v90, "createCustodianRecoveryKey encryptionPubKey: %{public}s", v91, 0xCu);
    sub_100006128(v194);
  }

  else
  {
  }

  v101 = v197;
  v100 = v198;
  v102 = [*&v197[v198] egoPeerPermanentInfo];
  if (!v102)
  {

    v152 = sub_100216754();
    v153 = sub_100216C54();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&_mh_execute_header, v152, v153, "permanentInfo does not exist", v154, 2u);
    }

    sub_1000561D0();
    v155 = swift_allocError();
    *v156 = xmmword_100225FD0;
    *(v156 + 16) = 13;
    v210(0, 0, v155);

    goto LABEL_20;
  }

  v103 = v102;
  v104 = sub_100216224();
  v106 = v105;

  v107 = [*&v101[v100] egoPeerPermanentInfoSig];
  if (!v107)
  {

    v157 = sub_100216754();
    v158 = sub_100216C54();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&_mh_execute_header, v157, v158, "permInfoSig does not exist", v159, 2u);
    }

    sub_1000561D0();
    v160 = swift_allocError();
    *v161 = xmmword_100225FD0;
    *(v161 + 16) = 13;
    v210(0, 0, v160);

    sub_100002BF0(v104, v106);
    goto LABEL_20;
  }

  v190 = v76;
  v194 = v74;
  v108 = v107;
  v109 = sub_100216224();
  v111 = v110;

  v112 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v104, v106);
  sub_100012558(v109, v111);
  v113 = sub_100216964();

  v114 = sub_100216204().super.isa;
  v115 = sub_100216204().super.isa;
  v116 = objc_opt_self();
  v191 = v112;
  v117 = [v116 permanentInfoWithPeerID:v113 data:v114 sig:v115 keyFactory:v112];

  v192 = v109;
  sub_100002BF0(v109, v111);

  v193 = v106;
  sub_100002BF0(v104, v106);

  if (!v117)
  {

    v162 = sub_100216754();
    v163 = sub_100216C54();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&_mh_execute_header, v162, v163, "cannot create TPPeerPermanentInfo", v164, 2u);
    }

    sub_1000561D0();
    v165 = swift_allocError();
    *v166 = xmmword_10021DA80;
    *(v166 + 16) = 13;
    v210(0, 0, v165);

    sub_100002BF0(v104, v193);
    sub_100002BF0(v192, v111);
    goto LABEL_47;
  }

  v118 = v198;
  v119 = [*&v101[v198] egoPeerStableInfo];
  if (!v119)
  {

    v167 = sub_100216754();
    v168 = sub_100216C54();
    v169 = os_log_type_enabled(v167, v168);
    v170 = v193;
    if (v169)
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v167, v168, "stableInfo does not exist", v171, 2u);
    }

    sub_1000561D0();
    v172 = swift_allocError();
    *v173 = xmmword_10021DC20;
    *(v173 + 16) = 13;
    v210(0, 0, v172);

    sub_100002BF0(v104, v170);
    sub_100002BF0(v192, v111);

LABEL_47:
LABEL_20:

    return;
  }

  v120 = v119;
  v121 = sub_100216224();
  v189 = v122;

  v123 = [*&v101[v118] egoPeerStableInfoSig];
  if (!v123)
  {

    v174 = sub_100216754();
    v175 = sub_100216C54();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      *v176 = 0;
      _os_log_impl(&_mh_execute_header, v174, v175, "stableInfoSig does not exist", v176, 2u);
    }

    sub_1000561D0();
    v177 = swift_allocError();
    *v178 = xmmword_10021DC20;
    *(v178 + 16) = 13;
    v210(0, 0, v177);

    sub_100002BF0(v104, v193);
    sub_100002BF0(v192, v111);

    v179 = v121;
    v180 = v189;
    goto LABEL_54;
  }

  v198 = v104;
  v124 = v123;
  v125 = sub_100216224();
  v127 = v126;

  v128 = objc_allocWithZone(TPPeerStableInfo);
  v129 = v189;
  sub_100012558(v121, v189);
  sub_100012558(v125, v127);
  v130 = sub_100216204().super.isa;
  v131 = sub_100216204().super.isa;
  v132 = [v128 initWithData:v130 sig:v131];

  sub_100002BF0(v125, v127);
  sub_100002BF0(v121, v129);
  if (!v132)
  {

    v181 = sub_100216754();
    v182 = sub_100216C54();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&_mh_execute_header, v181, v182, "cannot create TPPeerStableInfo", v183, 2u);
    }

    sub_1000561D0();
    v184 = swift_allocError();
    *v185 = xmmword_10021DC20;
    *(v185 + 16) = 13;
    v210(0, 0, v184);

    sub_100002BF0(v198, v193);
    sub_100002BF0(v192, v111);

    sub_100002BF0(v121, v189);
    v179 = v125;
    v180 = v127;
LABEL_54:
    sub_100002BF0(v179, v180);

    goto LABEL_20;
  }

  strcpy(v214, "signing-key ");
  BYTE5(v214[1]) = 0;
  HIWORD(v214[1]) = -5120;
  v216._countAndFlagsBits = v196;
  v216._object = v203;
  sub_100216A14(v216);
  v190 = v214[0];
  v188 = v214[1];
  v133 = v132;
  v134 = v209;
  v209 = v125;
  v195(v200, v134, v213);
  v135 = v212;
  v136 = *(v212 + 80);
  v195 = v121;
  v137 = (v136 + 88) & ~v136;
  v138 = v199 + v137 + 7;
  v199 = v111;
  v201 = v127;
  v187 = v117;
  v139 = v138 & 0xFFFFFFFFFFFFFFF8;
  v140 = ((v138 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v141 = swift_allocObject();
  v142 = v211;
  *(v141 + 2) = v210;
  *(v141 + 3) = v142;
  v143 = v194;
  *(v141 + 4) = v197;
  *(v141 + 5) = v143;
  *(v141 + 6) = v117;
  *(v141 + 7) = v133;
  v144 = v196;
  *(v141 + 8) = v204;
  *(v141 + 9) = v144;
  *(v141 + 10) = v203;
  (*(v135 + 32))(&v141[v137], v200, v213);
  v145 = &v141[v139];
  v146 = v205;
  *v145 = v206;
  *(v145 + 1) = v146;
  v147 = &v141[v140];
  v148 = v208;
  *v147 = v207;
  v147[1] = v148;
  *&v141[(v140 + 19) & 0xFFFFFFFFFFFFFFF8] = v202;

  v149 = v197;
  v150 = v187;
  v151 = v133;

  sub_10010B83C(v190, v188, sub_1001A95A0);

  sub_100002BF0(v198, v193);
  sub_100002BF0(v192, v199);

  sub_100002BF0(v195, v189);
  sub_100002BF0(v209, v201);
}

uint64_t sub_100133C2C(void *a1, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4, char *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v71 = a7;
  v72 = a4;
  v70 = a3;
  v22 = sub_1002163D4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v64 = a17;
    v62 = a15;
    v63 = a16;
    v60 = a13;
    v61 = a14;
    v59 = a1;
    v69 = a11;
    v58 = a10;
    v28 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v65 = a5;
    v67 = v28;
    v68 = a9;
    v29 = *(v23 + 16);
    v57 = v26;
    v29(&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a12, v26);
    v30 = (*(v23 + 80) + 96) & ~*(v23 + 80);
    v31 = (v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = a6;
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = a5;
    *(v33 + 3) = a6;
    *(v33 + 4) = v71;
    *(v33 + 5) = a8;
    v34 = v58;
    *(v33 + 6) = v68;
    *(v33 + 7) = v34;
    v35 = v70;
    v36 = v59;
    *(v33 + 8) = v69;
    *(v33 + 9) = v36;
    v37 = v72;
    *(v33 + 10) = v35;
    *(v33 + 11) = v37;
    (*(v23 + 32))(&v33[v30], v27, v57);
    v38 = &v33[v31];
    a2 = v61;
    *v38 = v60;
    *(v38 + 1) = a2;
    v39 = &v33[v32];
    v40 = v63;
    *v39 = v62;
    *(v39 + 1) = v40;
    *&v33[(v32 + 19) & 0xFFFFFFFFFFFFFFF8] = v64;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1001A9690;
    *(v41 + 24) = v33;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100282B08;
    v42 = _Block_copy(aBlock);
    v43 = v36;
    v44 = v65;
    v45 = v71;
    v46 = a8;

    [v67 performBlockAndWait:v42];

    _Block_release(v42);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if ((v43 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v48 = sub_100216774();
  sub_100002648(v48, qword_10029D160);
  v49 = a2;
  swift_errorRetain();
  v50 = sub_100216754();
  v51 = sub_100216C74();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136446210;
    aBlock[6] = v49;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v54 = sub_100216994();
    v56 = sub_100005FB0(v54, v55, aBlock);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "handle: no signing key pair: %{public}s", v52, 0xCu);
    sub_100006128(v53);
  }

  return v70(0, 0, v49);
}

uint64_t sub_1001340D8(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(void, void, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id *a14, void *a15, int a16)
{
  v167 = a8;
  v171 = a7;
  v170 = a6;
  v176 = a5;
  v20 = sub_1002163D4();
  v163 = *(v20 - 8);
  v21 = *(v163 + 64);
  __chkstk_darwin(v20, v22);
  v162 = v23;
  v168 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  v24 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161, v25);
  v27 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for SignedPeerDynamicInfo(0);
  v28 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160, v29);
  v31 = (&v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v32 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165, v33);
  v35 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v36 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v37 = *(a2 + 24);
  v180[0] = 0;
  v175 = a3;
  v38 = [v36 getViewsForCRK:v37 donorPermanentInfo:a3 donorStableInfo:a4 error:v180];
  v39 = v180[0];
  if (!v38)
  {
    v68 = v180[0];
    v69 = sub_100216154();

    swift_willThrow();
    swift_errorRetain();
    a9(0, 0, v69);
  }

  v156 = v20;
  v157 = v31;
  v158 = v27;
  v159 = a1;
  v172 = a2;
  v173 = a9;
  v174 = a10;
  v40 = v38;
  v41 = sub_100216BB4();
  v42 = v39;

  v179 = _swiftEmptyArrayStorage;
  v43 = v176;
  v44 = v176 & 0xFFFFFFFFFFFFFF8;
  if (v176 >> 62)
  {
    goto LABEL_44;
  }

  v45 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v164 = v35;
  if (v45)
  {
    v46 = 0;
    v47 = v43 & 0xC000000000000001;
    v48 = v43 + 32;
    v169 = _swiftEmptyArrayStorage;
    v35 = (v41 + 56);
    v43 = 0x100293000;
    v178 = v45;
    *&v177 = v47;
    while (1)
    {
      if (v47)
      {
        v49 = sub_100217014();
      }

      else
      {
        if (v46 >= *(v44 + 16))
        {
          goto LABEL_43;
        }

        v49 = *(v48 + 8 * v46);
      }

      v50 = v49;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v45 = sub_1002170F4();
        goto LABEL_4;
      }

      if (([v49 *(v43 + 3328)] & 1) == 0)
      {
        v52 = v44;
        v53 = [v50 tlk];
        v54 = [v53 zoneID];

        v55 = [v54 zoneName];
        v56 = sub_100216974();
        v58 = v57;

        if (*(v41 + 16))
        {
          v59 = *(v41 + 40);
          sub_100217264();
          sub_1002169C4();
          v60 = sub_100217284();
          v61 = -1 << *(v41 + 32);
          v62 = v60 & ~v61;
          if ((*&v35[(v62 >> 3) & 0xFFFFFFFFFFFFFF8] >> v62))
          {
            v63 = ~v61;
            while (1)
            {
              v64 = (*(v41 + 48) + 16 * v62);
              v65 = *v64 == v56 && v64[1] == v58;
              if (v65 || (sub_1002171A4() & 1) != 0)
              {
                break;
              }

              v62 = (v62 + 1) & v63;
              if (((*&v35[(v62 >> 3) & 0xFFFFFFFFFFFFFF8] >> v62) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v66 = [v50 tlk];

            v44 = v52;
            v47 = v177;
            v45 = v178;
            v43 = 0x100293000;
            if (v66)
            {
              sub_100216B04();
              if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v67 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_100216B44();
                v47 = v177;
              }

              sub_100216B64();
              v169 = v179;
              v45 = v178;
            }

            goto LABEL_8;
          }
        }

LABEL_6:

        v44 = v52;
        v47 = v177;
        v45 = v178;
        v43 = &selRef_hasPeerWithID_error_;
      }

LABEL_8:
      if (v46 == v45)
      {
        goto LABEL_31;
      }
    }
  }

  v169 = _swiftEmptyArrayStorage;
LABEL_31:

  v70 = v172;
  v71 = *(v172 + 16);
  v72 = [v175 epoch];
  if (v72 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v73 = sub_10010C3CC(v169, v71, v71, v72);

  v178 = v73;
  v75 = v164;
  *v164 = xmmword_10021D470;
  v75[1] = xmmword_10021D470;
  v177 = xmmword_10021D470;
  v76 = v75 + *(v165 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v77 = [*(v70 + 24) data];
  v78 = sub_100216224();
  v80 = v79;

  sub_100002BF0(*v75, *(v75 + 1));
  *v75 = v78;
  *(v75 + 1) = v80;
  v81 = [*(v70 + 24) sig];
  v82 = sub_100216224();
  v84 = v83;

  sub_100002BF0(*(v75 + 2), *(v75 + 3));
  *(v75 + 2) = v82;
  *(v75 + 3) = v84;
  v85 = [*(v70 + 24) peerID];
  v86 = sub_100216974();
  v88 = v87;

  v89 = v159;
  v90 = *&v159[v166];
  v91 = sub_100216964();
  sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_10021D600;
  *(v92 + 32) = v86;
  *(v92 + 40) = v88;

  v93.super.isa = sub_100216B14().super.isa;

  v94 = [*&v89[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v95 = _swiftEmptySetSingleton;
  if (v94)
  {
    v96 = v94;
    v180[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v180[0])
    {
      v95 = v180[0];
    }
  }

  sub_100108644(v95);

  v97 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;

  v99 = [v97 initWithEntries:isa];

  v180[0] = 0;
  v100 = [v90 calculateDynamicInfoForPeerWithID:v91 addingPeerIDs:v93.super.isa removingPeerIDs:0 preapprovedKeys:0 signingKeyPair:v167 currentMachineIDs:v99 error:v180];

  v101 = v180[0];
  if (!v100)
  {
    v142 = v180[0];

    v43 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 == -1)
    {
LABEL_38:
      v143 = sub_100216774();
      sub_100002648(v143, qword_10029D160);
      swift_errorRetain();
      v144 = sub_100216754();
      v145 = sub_100216C74();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v180[0] = v147;
        *v146 = 136446210;
        v179 = v43;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v148 = sub_100216994();
        v150 = sub_100005FB0(v148, v149, v180);

        *(v146 + 4) = v150;
        _os_log_impl(&_mh_execute_header, v144, v145, "Error preparing dynamic info: %{public}s", v146, 0xCu);
        sub_100006128(v147);
      }

      v151 = v173;
      v152 = v164;
      swift_errorRetain();
      v151(0, 0, v43);

      v141 = v152;
      return sub_1001AC1E4(v141, type metadata accessor for SignedCustodianRecoveryKey);
    }

LABEL_46:
    swift_once();
    goto LABEL_38;
  }

  LODWORD(v176) = a16;
  v175 = a15;
  v169 = a14;
  v167 = a13;
  v166 = a12;
  v102 = v157;
  v103 = v177;
  *v157 = v177;
  v102[1] = v103;
  v104 = *(v160 + 24);
  v105 = v101;
  v106 = v100;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  *&v177 = v106;
  v107 = [v106 data];
  v108 = sub_100216224();
  v110 = v109;

  sub_100002BF0(*v102, *(v102 + 1));
  *v102 = v108;
  *(v102 + 1) = v110;
  v111 = [v106 sig];
  v112 = sub_100216224();
  v114 = v113;

  v115 = sub_100002BF0(*(v102 + 2), *(v102 + 3));
  *(v102 + 2) = v112;
  *(v102 + 3) = v114;
  __chkstk_darwin(v115, v116);
  v117 = v171;
  *(&v155 - 8) = v170;
  *(&v155 - 7) = v117;
  *(&v155 - 6) = v86;
  *(&v155 - 5) = v88;
  v118 = v178;
  *(&v155 - 4) = v164;
  *(&v155 - 3) = v118;
  v153 = v119;
  v154 = v159;
  v120 = v159;
  sub_1001A13C4(&qword_100298E10, type metadata accessor for AddCustodianRecoveryKeyRequest);
  sub_100216654();

  v121 = v120;
  v122 = *&v120[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  v178 = *&v120[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v170 = v122;
  v171 = sub_100006484(&v120[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v178);
  v123 = v163;
  v124 = v156;
  (*(v163 + 16))(v168, a11, v156);
  v125 = (*(v123 + 80) + 24) & ~*(v123 + 80);
  v126 = (v162 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v127 = (v126 + 15) & 0xFFFFFFFFFFFFFFF8;
  v128 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
  v129 = (v128 + 19) & 0xFFFFFFFFFFFFFFF8;
  v130 = swift_allocObject();
  *(v130 + 16) = v121;
  (*(v123 + 32))(v130 + v125, v168, v124);
  *(v130 + v126) = v172;
  v131 = (v130 + v127);
  v132 = v167;
  *v131 = v166;
  v131[1] = v132;
  v133 = (v130 + v128);
  v134 = v175;
  *v133 = v169;
  v133[1] = v134;
  *(v130 + v129) = v176;
  v135 = (v130 + ((v129 + 11) & 0xFFFFFFFFFFFFFFF8));
  v136 = v174;
  *v135 = v173;
  v135[1] = v136;
  v137 = *(v170 + 16);
  v138 = *(v137 + 48);
  v139 = v121;

  v140 = v158;
  v138(v158, sub_1001A9794, v130, v178, v137);

  sub_1001AC1E4(v140, type metadata accessor for AddCustodianRecoveryKeyRequest);
  sub_1001AC1E4(v157, type metadata accessor for SignedPeerDynamicInfo);
  v141 = v164;
  return sub_1001AC1E4(v141, type metadata accessor for SignedCustodianRecoveryKey);
}

uint64_t sub_100134F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v82 = a7;
  v84 = a8;
  v80 = a5;
  v81 = a6;
  v79 = a4;
  v12 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v87 = &v79 - v15;
  v16 = type metadata accessor for SignedPeerDynamicInfo(0);
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  __chkstk_darwin(v16, v18);
  v83 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v79 - v23;
  v25 = type metadata accessor for Peer(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for AddCustodianRecoveryKeyRequest(0) + 20);
  v32 = *(a1 + v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a1 + v31);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v34 = sub_1000CB2E0(v34);
    *(a1 + v31) = v34;
  }

  swift_beginAccess();
  v38 = *(v34 + 5);
  *(v34 + 4) = a2;
  *(v34 + 5) = a3;

  __chkstk_darwin(v39, v40);
  v41 = v80;
  *(&v79 - 4) = v79;
  *(&v79 - 3) = v41;
  *(&v79 - 2) = v81;
  sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer);
  sub_100216654();
  v42 = *(a1 + v31);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(a1 + v31);
  if ((v43 & 1) == 0)
  {
    v45 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v44 = sub_1000CB2E0(v44);
    *(a1 + v31) = v44;
  }

  sub_1001AC038(v30, v24, type metadata accessor for Peer);
  (*(v26 + 56))(v24, 0, 1, v25);
  v48 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v24, &v44[v48], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  v49 = *(a1 + v31);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a1 + v31);
  if ((v50 & 1) == 0)
  {
    v52 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    v51 = sub_1000CB2E0(v51);
    *(a1 + v31) = v51;
  }

  v55 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v56 = *&v51[v55];
  *&v51[v55] = v82;

  v57 = v83;
  sub_1001AC0A0(v84, v83, type metadata accessor for SignedPeerDynamicInfo);
  v58 = *(a1 + v31);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a1 + v31);
  if ((v59 & 1) == 0)
  {
    v61 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    v60 = sub_1000CB2E0(v60);
    *(a1 + v31) = v60;
  }

  v64 = v87;
  sub_1001AC038(v57, v87, type metadata accessor for SignedPeerDynamicInfo);
  (*(v85 + 56))(v64, 0, 1, v86);
  v65 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__dynamicInfoAndSig;
  swift_beginAccess();
  sub_1000F9E80(v64, &v60[v65], &unk_10029D760, &qword_10021E810);
  swift_endAccess();
  v66 = [*(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (v66)
  {
    v67 = v66;
    v68 = sub_100216974();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0xE000000000000000;
  }

  v71 = *(a1 + v31);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(a1 + v31);
  if ((v72 & 1) == 0)
  {
    v74 = type metadata accessor for AddCustodianRecoveryKeyRequest._StorageClass(0);
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();
    v73 = sub_1000CB2E0(v73);
    *(a1 + v31) = v73;
  }

  swift_beginAccess();
  v77 = *(v73 + 3);
  *(v73 + 2) = v68;
  *(v73 + 3) = v70;
}

uint64_t sub_1001354C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 1);

  *a1 = a2;
  *(a1 + 1) = a3;
  sub_1001AC0A0(a4, v13, type metadata accessor for SignedCustodianRecoveryKey);
  v15 = *(type metadata accessor for Peer(0) + 44);
  sub_1000114D4(&a1[v15], &unk_10029D7B0, &unk_10021E820);
  sub_1001AC038(v13, &a1[v15], type metadata accessor for SignedCustodianRecoveryKey);
  return (*(v9 + 56))(&a1[v15], 0, 1, v8);
}

uint64_t sub_100135628(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, void (*a10)(void, void, uint64_t), uint64_t a11)
{
  v64 = a6;
  v65 = a8;
  v62 = a5;
  v63 = a7;
  v66 = a4;
  v61 = a3;
  v70 = a11;
  v71 = a2;
  v69 = a10;
  v68 = sub_1002163D4();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v68, v14);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AddCustodianRecoveryKeyResponse(0);
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v19 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v56 - v21;
  v23 = sub_10001148C(&qword_100298450, &unk_10021DEC0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  v27 = (&v56 - v26);
  sub_100019C6C(a1, &v56 - v26, &qword_100298450, &unk_10021DEC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v69;
    v29 = *v27;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v30 = sub_100216774();
    sub_100002648(v30, qword_10029D160);
    swift_errorRetain();
    v31 = sub_100216754();
    v32 = sub_100216C74();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      aBlock[6] = v29;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v35 = sub_100216994();
      v37 = sub_100005FB0(v35, v36, aBlock);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "CreateCustodianRecoveryKey failed: %{public}s", v33, 0xCu);
      sub_100006128(v34);
    }

    swift_errorRetain();
    v28(0, 0, v29);
  }

  else
  {
    v57 = a9;
    v56 = type metadata accessor for AddCustodianRecoveryKeyResponse;
    v59 = v22;
    sub_1001AC038(v27, v22, type metadata accessor for AddCustodianRecoveryKeyResponse);
    v58 = *&v71[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v22, v19, type metadata accessor for AddCustodianRecoveryKeyResponse);
    (*(v12 + 16))(v67, v61, v68);
    v39 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v40 = (v16 + *(v12 + 80) + v39) & ~*(v12 + 80);
    v41 = (v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 19) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = v71;
    sub_1001AC038(v19, v45 + v39, v56);
    (*(v12 + 32))(v45 + v40, v67, v68);
    *(v45 + v41) = v66;
    v46 = (v45 + v42);
    v47 = v63;
    v49 = v64;
    v48 = v65;
    *v46 = v62;
    v46[1] = v49;
    v50 = (v45 + v43);
    *v50 = v47;
    v50[1] = v48;
    *(v45 + v44) = v57;
    v51 = (v45 + ((v44 + 11) & 0xFFFFFFFFFFFFFFF8));
    v52 = v70;
    *v51 = v69;
    v51[1] = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1001A9874;
    *(v53 + 24) = v45;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100282BA8;
    v54 = _Block_copy(aBlock);
    v55 = v71;

    [v58 performBlockAndWait:v54];
    _Block_release(v54);
    sub_1001AC1E4(v59, type metadata accessor for AddCustodianRecoveryKeyResponse);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if (v54)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100135C3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, void (*a10)(void *, id, void), uint64_t a11)
{
  v69 = a7;
  v70 = a8;
  v67 = a5;
  v68 = a6;
  v65 = a3;
  v66 = a4;
  v71 = a11;
  v75 = sub_100216424();
  v72 = *(v75 - 8);
  v12 = v72[8];
  v14 = __chkstk_darwin(v75, v13);
  v74 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v16);
  v18 = &v62[-v17];
  v19 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = &v62[-v22];
  v24 = type metadata accessor for Changes(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  v29 = &v62[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for AddCustodianRecoveryKeyResponse(0);
  sub_100019C6C(a2 + *(v30 + 24), v23, &unk_10029D750, &qword_10021E850);
  v31 = *(v25 + 48);
  if (v31(v23, 1, v24) == 1)
  {
    *v29 = 0;
    *(v29 + 1) = 0xE000000000000000;
    *(v29 + 2) = _swiftEmptyArrayStorage;
    *(v29 + 24) = xmmword_10021D470;
    *(v29 + 40) = xmmword_10021D470;
    v29[56] = 0;
    v32 = &v29[*(v24 + 36)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v31(v23, 1, v24) != 1)
    {
      sub_1000114D4(v23, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v23, v29, type metadata accessor for Changes);
  }

  sub_100174C2C(v29, 0);
  sub_1001AC1E4(v29, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v63 = a9;
  v33 = sub_100216774();
  sub_100002648(v33, qword_10029D160);
  v34 = sub_100216754();
  v35 = sub_100216C54();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "CreateCustodianRecoveryKey succeeded", v36, 2u);
  }

  v64 = a10;

  v37 = *a2;
  v76 = _swiftEmptyArrayStorage;
  v38 = *(v37 + 16);
  if (v38)
  {
    v73 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v39 = v72[2];
    v40 = v37 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v41 = v72[9];
    v42 = (v72 + 1);
    v72 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v75;
      v39(v18, v40, v75);
      v39(v74, v18, v43);
      v44 = sub_100216D94();
      (*v42)(v18, v43);
      if (v44)
      {
        sub_100216B04();
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v72 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v72 = v76;
      }

      v40 += v41;
      --v38;
    }

    while (v38);
  }

  else
  {
    v72 = _swiftEmptyArrayStorage;
  }

  sub_1002163A4();
  v45 = v66;
  v46 = [objc_msgSend(*(v66 + 24) "encryptionPublicKey")];
  swift_unknownObjectRelease();
  v47 = sub_100216224();
  v49 = v48;

  v50 = [objc_msgSend(*(v45 + 24) "signingPublicKey")];
  swift_unknownObjectRelease();
  v51 = sub_100216224();
  v53 = v52;

  v54 = objc_allocWithZone(TrustedPeersHelperCustodianRecoveryKey);
  v55 = sub_100216964();

  isa = sub_100216204().super.isa;
  sub_100002BF0(v47, v49);
  v57 = sub_100216204().super.isa;
  sub_100002BF0(v51, v53);
  v58 = sub_100216964();
  v59 = sub_100216964();
  v60 = [v54 initWithUUID:v55 encryptionKey:isa signingKey:v57 recoveryString:v58 salt:v59 kind:v63];

  v61 = v60;
  v64(v72, v60, 0);
}

uint64_t sub_10013641C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "removeCustodianRecoveryKey complete: %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD000000000000027, 0x800000010023C3B0);
  return a3(a1);
}

void sub_100136644(char *a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  v8 = sub_1002163D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v15 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v15)
  {
    v74 = a2;
    v75 = a3;
    v16 = v15;
    v17 = sub_100216974();
    v19 = v18;

    v20 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    isa = sub_1002163B4().super.isa;
    v76 = [v20 findCustodianRecoveryKeyWithUUID:isa];

    if (v76)
    {
      v22 = [v76 peerID];
      v23 = sub_100216974();
      v25 = v24;

      if (v23 == v17 && v25 == v19)
      {

LABEL_21:

        v42 = v74;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v43 = sub_100216774();
        sub_100002648(v43, qword_10029D160);
        v44 = sub_100216754();
        v45 = sub_100216C54();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "Self-distrust via peerID not allowed", v46, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v47 = xmmword_100225FE0;
        *(v47 + 16) = 13;
        v42();

        v48 = v76;

        return;
      }

      v27 = sub_1002171A4();

      if (v27)
      {
        goto LABEL_21;
      }

      sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10021D600;
      *(inited + 32) = v23;
      *(inited + 40) = v25;

      v51 = sub_100190BF4(inited);
      swift_setDeallocating();
      sub_1000608EC(inited + 32);
      v52 = *&a1[v14];
      swift_bridgeObjectRetain_n();
      v53 = a1;
      v54 = v76;
      swift_retain_n();
      v55 = v53;
      v56 = v54;
      v57 = [v52 egoPeerID];
      if (v57)
      {
        v58 = v57;
        v59 = sub_100216974();
        v61 = v60;

        strcpy(v77, "signing-key ");
        BYTE5(v77[1]) = 0;
        HIWORD(v77[1]) = -5120;
        v79._countAndFlagsBits = v59;
        v79._object = v61;
        sub_100216A14(v79);
        v63 = v77[0];
        v62 = v77[1];

        v64 = v55;
        v76 = v55;
        v65 = v56;
        v66 = v64;
        v67 = v65;

        sub_100199120(v63, v62, v66, v59, v61, v51, v66, v23, v25, v67, v74, v75);

        v56 = v65;
        v55 = v76;
        swift_bridgeObjectRelease_n();

        swift_bridgeObjectRelease_n();
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v68 = sub_100216774();
        sub_100002648(v68, qword_10029D160);
        v69 = sub_100216754();
        v70 = sub_100216C54();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "No dynamic info for self?", v71, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v72 = xmmword_10021DA90;
        *(v72 + 16) = 13;
        v74();
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v33 = sub_100216774();
      sub_100002648(v33, qword_10029D160);
      (*(v9 + 16))(v13, a4, v8);
      v34 = sub_100216754();
      v35 = sub_100216C54();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v77[0] = v37;
        *v36 = 136446210;
        sub_1001A13C4(&qword_10029D738, &type metadata accessor for UUID);
        v38 = sub_100217174();
        v40 = v39;
        (*(v9 + 8))(v13, v8);
        v41 = sub_100005FB0(v38, v40, v77);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "Unable to find custodian recovery key %{public}s on model", v36, 0xCu);
        sub_100006128(v37);
      }

      else
      {

        (*(v9 + 8))(v13, v8);
      }

      sub_1000561D0();
      swift_allocError();
      *v49 = xmmword_10021DC00;
      *(v49 + 16) = 13;
      v74();
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    v29 = sub_100216754();
    v30 = sub_100216C54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No dynamic info for self?", v31, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v32 = xmmword_10021DA90;
    *(v32 + 16) = 13;
    (a2)();
  }
}

uint64_t sub_100136F74(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    v6 = 0;
LABEL_5:
    a6(a1);
    return sub_100186C6C(v6);
  }

  v18 = a6;
  v10 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v13 = swift_allocObject();
  v6 = sub_1001ACE74;
  *(v13 + 16) = sub_1001ACE74;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1001ACCC0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100282A68;
  v14 = _Block_copy(aBlock);
  v15 = a2;

  v16 = a5;

  [v10 performBlockAndWait:v14];
  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    a6 = v18;
    a1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_10013712C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v7 = sub_100216964();
  [v6 removeCustodianRecoveryKey:v7];

  v8 = type metadata accessor for CustodianRecoveryKeyMO();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
  v10 = [a4 data];
  v11 = sub_100216224();
  v13 = v12;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v11, v13);
  [v9 setCrkInfo:isa];

  v15 = [a4 sig];
  v16 = sub_100216224();
  v18 = v17;

  v19 = sub_100216204().super.isa;
  sub_100002BF0(v16, v18);
  [v9 setCrkInfoSig:v19];

  v20 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  sub_10001148C(&qword_10029D150, &qword_100226560);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10021D600;
  *(v21 + 56) = v8;
  *(v21 + 32) = v9;
  sub_10000200C(0, &unk_10029D790, NSSet_ptr);
  v22 = v20;
  v23 = v9;
  v24 = sub_100216D64();
  [v22 removeCustodianRecoveryKeys:v24];
}

uint64_t sub_100137358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "findCustodianRecoveryKey complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000025, 0x800000010023C380);
  return a4(a1, a2);
}

void sub_100137598(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t *))
{
  v5 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v6 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  isa = sub_1002163B4().super.isa;
  v8 = [v6 findCustodianRecoveryKeyWithUUID:isa];

  if (!v8)
  {
    a3(0, 0);
    return;
  }

  v9 = *(a1 + v5);
  v51 = 0;
  v10 = v8;
  v11 = [v9 isCustodianRecoveryKeyTrusted:v10 error:&v51];
  v12 = v51;
  if (v51)
  {
    swift_willThrow();
    v13 = qword_100297520;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029D160);
    v16 = v14;
    v17 = sub_100216754();
    v18 = sub_100216C74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v16;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "error determine whether CRK is trusted: %{public}@", v19, 0xCu);
      sub_1000114D4(v20, &qword_10029D580, &unk_10021CCC0);
    }

    v23 = v16;
    a3(0, v12);
  }

  else
  {
    if (v11)
    {
      sub_1002163A4();
      v24 = [objc_msgSend(v10 "encryptionPublicKey")];
      swift_unknownObjectRelease();
      v25 = sub_100216224();
      v27 = v26;

      v28 = [objc_msgSend(v10 "signingPublicKey")];
      swift_unknownObjectRelease();
      v29 = sub_100216224();
      v31 = v30;

      v50 = [v10 kind];
      v32 = objc_allocWithZone(TrustedPeersHelperCustodianRecoveryKey);
      v33 = sub_100216964();

      v34 = sub_100216204().super.isa;
      sub_100002BF0(v25, v27);
      v35 = sub_100216204().super.isa;
      sub_100002BF0(v29, v31);
      v36 = [v32 initWithUUID:v33 encryptionKey:v34 signingKey:v35 recoveryString:0 salt:0 kind:v50];

      v37 = v36;
      a3(v36, 0);

      return;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v38 = sub_100216774();
    sub_100002648(v38, qword_10029D160);
    v23 = v10;
    v39 = sub_100216754();
    v40 = sub_100216C64();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136315138;
      v43 = [v23 peerID];
      v44 = sub_100216974();
      v46 = v45;

      v47 = sub_100005FB0(v44, v46, &v51);

      *(v41 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "CRK %s is not trusted", v41, 0xCu);
      sub_100006128(v42);
    }

    sub_1000561D0();
    v48 = swift_allocError();
    *v49 = xmmword_10021DC10;
    *(v49 + 16) = 13;
    a3(0, v48);
  }
}

uint64_t sub_100137B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v29._countAndFlagsBits = sub_100216994();
      sub_100216A14(v29);

      v20 = 0x203A726F727265;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, 0xE700000000000000, &v28);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithBottle complete: %{public}s", v18, 0xCu);
    sub_100006128(v19);

    a5 = v24;
    a6 = v25;
    a4 = v23;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000006BLL, 0x800000010023C890);
  return a9(a1, a2, a3, a4, a5, a6, a7);
}

void sub_100137D78(uint64_t a1@<X0>, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v19 = 0;
  v6 = [v5 allPolicyVersionsWithError:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = v6;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v9 = sub_100216BB4();
    v10 = v7;
  }

  else
  {
    v11 = v19;
    v12 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error fetching all policy versions: %{public}@", v16, 0xCu);
      sub_1000114D4(v17, &qword_10029D580, &unk_10021CCC0);
    }

    swift_errorRetain();
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v12);

    v9 = 0;
  }

  *a3 = v9;
}

void sub_100138068(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, char a7, char *a8, uint64_t a9, uint64_t a10, void (*a11)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, unint64_t a17)
{
  v21 = kSecurityRTCEventNameVouchWithBottleTPH;
  sub_1001A9F94();
  v22 = a2;
  v24 = v23;
  if (v22)
  {
    v25 = sub_100216964();
  }

  else
  {
    v25 = 0;
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v26 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v27 = sub_100216964();
  }

  else
  {
    v27 = 0;
  }

  LOBYTE(v143) = a7 & 1;
  v154 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v25 flowID:a4 deviceSessionID:v27 eventName:v21 testsAreEnabled:v24 canSendMetrics:v143 category:v26];

  v151 = sub_1000539B0();

  v38 = [v151 contents];
  if (v38)
  {
    v39 = v38;
    v40 = sub_100216224();
    v42 = v41;

    v43 = [v151 signatureUsingEscrowKey];
    if (v43)
    {
      v44 = v43;
      v45 = sub_100216224();
      v47 = v46;

      v48 = [v151 signatureUsingPeerKey];
      if (v48)
      {
        v49 = v48;
        v50 = sub_100216224();
        v52 = v51;

        v53 = [v151 peerID];
        if (v53)
        {
          v148 = v47;
          v149 = v52;
          v150 = v40;
          v54 = v53;
          v55 = sub_100216974();
          v57 = v56;
          v58 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
          v59 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
          aBlock[0] = 0;
          v60 = v59;
          v61 = [v60 peerWithID:v54 error:aBlock];

          v147 = v50;
          if (aBlock[0])
          {
            aBlock[0];

            swift_willThrow();
            v62 = v148;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v63 = sub_100216774();
            sub_100002648(v63, qword_10029D160);
            swift_errorRetain();
            v64 = sub_100216754();
            v65 = sub_100216C74();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              aBlock[0] = v67;
              *v66 = 136446210;
              swift_errorRetain();
              sub_10001148C(&unk_10029D560, qword_10021D450);
              v68 = sub_100216994();
              v70 = sub_100005FB0(v68, v69, aBlock);

              *(v66 + 4) = v70;
              v62 = v148;
              _os_log_impl(&_mh_execute_header, v64, v65, "vouchWithBottle: Verification of bottled signature failed: %{public}s", v66, 0xCu);
              sub_100006128(v67);
            }

            sub_1000561D0();
            swift_allocError();
            *v71 = xmmword_100226000;
            *(v71 + 16) = 13;
            v72 = sub_100216144();

            [v154 sendMetricWithResult:0 error:v72];

            v73 = swift_allocError();
            *v74 = xmmword_100226000;
            *(v74 + 16) = 13;
            a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v73);

            sub_100002BF0(v45, v62);

            sub_100002BF0(v50, v149);
            v75 = v150;
            v76 = v42;
            goto LABEL_47;
          }

          v146 = v55;
          if (v61)
          {
            v97 = [v61 permanentInfo];
            v98 = [v97 signingPubKey];

            objc_opt_self();
            v99 = swift_dynamicCastObjCClass();
            if (v99)
            {
              v145 = v57;
              sub_100200E38(v150, v42, v50, v149, v99);

              swift_unknownObjectRelease();
              objc_allocWithZone(type metadata accessor for BottledPeer());
              sub_100012558(v150, v42);

              sub_100012558(v45, v148);
              sub_100012558(v50, v149);
              sub_100012558(a13, a14);
              v144 = v45;
              v118 = sub_1001FEE00(v150, v42, a13, a14, a15, a16, v45, v148, v50, v149);
              v119 = qword_100297520;
              v120 = v118;
              if (v119 != -1)
              {
                swift_once();
              }

              v121 = sub_100216774();
              sub_100002648(v121, qword_10029D160);
              v122 = v120;
              v123 = sub_100216754();
              v124 = sub_100216C54();

              if (os_log_type_enabled(v123, v124))
              {
                v125 = swift_slowAlloc();
                v126 = swift_slowAlloc();
                aBlock[0] = v126;
                *v125 = 136446210;
                v127 = *&v122[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID];
                v128 = *&v122[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8];

                v129 = sub_100005FB0(v127, v128, aBlock);

                *(v125 + 4) = v129;
                _os_log_impl(&_mh_execute_header, v123, v124, "Have a bottle for peer %{public}s", v125, 0xCu);
                sub_100006128(v126);
              }

              v130 = *&a8[v58];
              v131 = *&v122[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys];
              v132 = v130;
              v133 = sub_10010C6BC(a17, v131, v132);
              v135 = v134;

              v136 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
              v137 = swift_allocObject();
              v137[2] = a8;
              v137[3] = v154;
              v137[4] = a11;
              v137[5] = a12;
              v137[6] = v146;
              v137[7] = v145;
              v137[8] = v122;
              v137[9] = v133;
              v137[10] = v135;
              v138 = swift_allocObject();
              v138[2] = sub_1001AA60C;
              v138[3] = v137;
              aBlock[4] = sub_1001ACCC0;
              aBlock[5] = v138;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100109050;
              aBlock[3] = &unk_1002838A0;
              v139 = _Block_copy(aBlock);
              v140 = a8;
              v141 = v154;

              v142 = v135;

              [v136 performBlockAndWait:v139];

              sub_100002BF0(v144, v148);
              _Block_release(v139);
              sub_100002BF0(v147, v149);
              sub_100002BF0(v150, v42);

              LOBYTE(v136) = swift_isEscapingClosureAtFileLocation();

              if (v136)
              {
                __break(1u);
                swift_once();
                v28 = sub_100216774();
                sub_100002648(v28, qword_10029D160);
                swift_errorRetain();
                v29 = sub_100216754();
                v30 = sub_100216C74();

                if (os_log_type_enabled(v29, v30))
                {
                  v31 = swift_slowAlloc();
                  v32 = swift_slowAlloc();
                  aBlock[0] = v32;
                  *v31 = 136446210;
                  swift_errorRetain();
                  sub_10001148C(&unk_10029D560, qword_10021D450);
                  v33 = sub_100216994();
                  v35 = sub_100005FB0(v33, v34, aBlock);

                  *(v31 + 4) = v35;
                  _os_log_impl(&_mh_execute_header, v29, v30, "vouchWithBottle failed preflight: %{public}s", v31, 0xCu);
                  sub_100006128(v32);
                }

                v36 = sub_100216144();
                [v154 sendMetricWithResult:0 error:v36];

                swift_errorRetain();
                a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v122);
              }

              return;
            }

            v109 = v61;

            swift_unknownObjectRelease();
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v110 = sub_100216774();
            sub_100002648(v110, qword_10029D160);
            v111 = sub_100216754();
            v112 = sub_100216C54();
            v103 = v150;
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
              _os_log_impl(&_mh_execute_header, v111, v112, "vouchWithBottle: Unable to create a sponsor public key", v113, 2u);
            }

            sub_1000561D0();
            swift_allocError();
            *v114 = xmmword_100226010;
            *(v114 + 16) = 13;
            v115 = sub_100216144();

            [v154 sendMetricWithResult:0 error:v115];

            v116 = swift_allocError();
            *v117 = xmmword_100226010;
            *(v117 + 16) = 13;
            a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v116);

            sub_100002BF0(v45, v148);
          }

          else
          {

            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v100 = sub_100216774();
            sub_100002648(v100, qword_10029D160);
            v101 = sub_100216754();
            v102 = sub_100216C54();
            v103 = v150;
            if (os_log_type_enabled(v101, v102))
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&_mh_execute_header, v101, v102, "vouchWithBottle: Unable to find peer that created the bottle", v104, 2u);
            }

            sub_1000561D0();
            swift_allocError();
            *v105 = xmmword_10021DAA0;
            *(v105 + 16) = 13;
            v106 = sub_100216144();

            [v154 sendMetricWithResult:0 error:v106];

            v107 = swift_allocError();
            *v108 = xmmword_10021DAA0;
            *(v108 + 16) = 13;
            a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v107);

            sub_100002BF0(v45, v148);
          }

          sub_100002BF0(v50, v149);
          v75 = v103;
          v76 = v42;
LABEL_47:
          sub_100002BF0(v75, v76);

          return;
        }

        sub_1000561D0();
        swift_allocError();
        *v92 = xmmword_100226020;
        v153 = v42;
        v93 = v52;
        *(v92 + 16) = 13;
        v94 = sub_100216144();

        [v154 sendMetricWithResult:0 error:v94];

        v95 = swift_allocError();
        *v96 = xmmword_100226020;
        *(v96 + 16) = 13;
        a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v95);

        sub_100002BF0(v45, v47);

        sub_100002BF0(v50, v93);
        v90 = v40;
        v91 = v153;
        goto LABEL_28;
      }

      sub_1000561D0();
      swift_allocError();
      *v86 = xmmword_100226030;
      *(v86 + 16) = 13;
      v87 = sub_100216144();

      [v154 sendMetricWithResult:0 error:v87];

      v88 = swift_allocError();
      *v89 = xmmword_100226030;
      *(v89 + 16) = 13;
      a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v88);

      sub_100002BF0(v45, v47);
    }

    else
    {
      sub_1000561D0();
      swift_allocError();
      *v82 = xmmword_100226040;
      *(v82 + 16) = 13;
      v83 = sub_100216144();

      [v154 sendMetricWithResult:0 error:v83];

      v84 = swift_allocError();
      *v85 = xmmword_100226040;
      *(v85 + 16) = 13;
      a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v84);
    }

    v90 = v40;
    v91 = v42;
LABEL_28:
    sub_100002BF0(v90, v91);
    v81 = v151;
    goto LABEL_29;
  }

  sub_1000561D0();
  swift_allocError();
  *v77 = xmmword_100226050;
  *(v77 + 16) = 13;
  v78 = sub_100216144();

  [v154 sendMetricWithResult:0 error:v78];

  v79 = swift_allocError();
  *v80 = xmmword_100226050;
  *(v80 + 16) = 13;
  a11(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v79);

  v81 = v154;
LABEL_29:
}

uint64_t sub_1001396BC(char *a1, void *a2, void (*a3)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v17 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v18 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v18)
  {
    v123 = a5;
    v124 = a6;
    v127 = a3;
    v19 = v18;
    v20 = sub_100216974();
    v22 = v21;

    v23 = [*&a1[v17] egoPeerPermanentInfo];
    if (v23)
    {
      v24 = v23;
      v125 = sub_100216224();
      v126 = v25;

      v26 = [*&a1[v17] egoPeerPermanentInfoSig];
      if (!v26)
      {

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v72 = sub_100216774();
        sub_100002648(v72, qword_10029D160);
        v73 = sub_100216754();
        v74 = sub_100216C54();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "permanentInfoSig does not exist", v75, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v76 = xmmword_100225FD0;
        *(v76 + 16) = 13;
        v77 = sub_100216144();

        [a2 sendMetricWithResult:0 error:v77];

        v78 = swift_allocError();
        *v79 = xmmword_100225FD0;
        *(v79 + 16) = 13;
        v127(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v78);

        goto LABEL_51;
      }

      v27 = v26;
      v121 = sub_100216224();
      v122 = v28;

      v29 = [*&a1[v17] egoPeerStableInfo];
      if (!v29)
      {

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v80 = sub_100216774();
        sub_100002648(v80, qword_10029D160);
        v81 = sub_100216754();
        v82 = sub_100216C54();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "stableInfo does not exist", v83, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v84 = xmmword_100225FD0;
        *(v84 + 16) = 13;
        v85 = sub_100216144();

        [a2 sendMetricWithResult:0 error:v85];

        v86 = swift_allocError();
        *v87 = xmmword_100225FD0;
        *(v87 + 16) = 13;
        v127(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v86);

        goto LABEL_50;
      }

      v115 = a8;
      v30 = v29;
      v31 = sub_100216224();
      v33 = v32;

      v34 = [*&a1[v17] egoPeerStableInfoSig];
      v120 = v31;
      if (v34)
      {
        v114 = a7;
        v117 = a4;
        v35 = v34;
        v118 = sub_100216224();
        v119 = v36;

        v37 = [objc_allocWithZone(TPECPublicKeyFactory) init];

        sub_100012558(v125, v126);
        sub_100012558(v121, v122);
        v38 = sub_100216964();

        isa = sub_100216204().super.isa;
        v40 = sub_100216204().super.isa;
        v116 = v37;
        v41 = [objc_opt_self() permanentInfoWithPeerID:v38 data:isa sig:v40 keyFactory:v37];

        sub_100002BF0(v121, v122);
        sub_100002BF0(v125, v126);

        if (!v41)
        {

          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v96 = sub_100216774();
          sub_100002648(v96, qword_10029D160);
          v97 = sub_100216754();
          v98 = sub_100216C54();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            *v99 = 0;
            _os_log_impl(&_mh_execute_header, v97, v98, "Invalid permenent info or signature; can't vouch for them", v99, 2u);
          }

          sub_1000561D0();
          swift_allocError();
          *v100 = xmmword_10021DA80;
          *(v100 + 16) = 13;
          v101 = sub_100216144();

          [a2 sendMetricWithResult:0 error:v101];

          v102 = swift_allocError();
          *v103 = xmmword_10021DA80;
          *(v103 + 16) = 13;
          v127(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v102);

          v53 = v118;
          v54 = v119;
          goto LABEL_42;
        }

        v42 = objc_allocWithZone(TPPeerStableInfo);
        sub_100012558(v31, v33);
        sub_100012558(v118, v119);
        v43 = sub_100216204().super.isa;
        v44 = sub_100216204().super.isa;
        v45 = [v42 initWithData:v43 sig:v44];

        sub_100002BF0(v118, v119);
        sub_100002BF0(v31, v33);
        if (v45)
        {
          v46 = swift_allocObject();
          v46[2] = a2;
          v46[3] = v127;
          v46[4] = v117;
          v46[5] = a1;
          v46[6] = v41;
          v46[7] = v45;
          v46[8] = v123;
          v46[9] = v124;
          v46[10] = v114;
          v46[11] = v115;
          v46[12] = a9;
          strcpy(v128, "signing-key ");
          BYTE5(v128[1]) = 0;
          HIWORD(v128[1]) = -5120;
          v47 = a2;

          v48 = a1;
          v49 = v41;
          v50 = v45;

          v51 = a9;
          v52 = v114;
          v130._countAndFlagsBits = v20;
          v130._object = v22;
          sub_100216A14(v130);

          sub_100198E8C(v128[0], v128[1], sub_1001AA624, v46, v20, v22);

          swift_bridgeObjectRelease_n();
          v53 = v118;
          v54 = v119;
LABEL_42:
          sub_100002BF0(v53, v54);
          v104 = v31;
          v105 = v33;
LABEL_49:
          sub_100002BF0(v104, v105);
LABEL_50:
          sub_100002BF0(v121, v122);
LABEL_51:

          return sub_100002BF0(v125, v126);
        }

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v106 = sub_100216774();
        sub_100002648(v106, qword_10029D160);
        v107 = sub_100216754();
        v108 = sub_100216C54();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&_mh_execute_header, v107, v108, "Invalid stableinfo or signature; van't vouch for them", v109, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v110 = xmmword_10021DC20;
        *(v110 + 16) = 13;
        v111 = sub_100216144();

        [a2 sendMetricWithResult:0 error:v111];

        v112 = swift_allocError();
        *v113 = xmmword_10021DC20;
        *(v113 + 16) = 13;
        v127(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v112);

        sub_100002BF0(v118, v119);
      }

      else
      {

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v88 = sub_100216774();
        sub_100002648(v88, qword_10029D160);
        v89 = sub_100216754();
        v90 = sub_100216C54();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v89, v90, "stableInfoSig does not exist", v91, 2u);
        }

        sub_1000561D0();
        swift_allocError();
        *v92 = xmmword_100225FD0;
        *(v92 + 16) = 13;
        v93 = sub_100216144();

        [a2 sendMetricWithResult:0 error:v93];

        v94 = swift_allocError();
        *v95 = xmmword_100225FD0;
        *(v95 + 16) = 13;
        v127(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v94);
      }

      v104 = v120;
      v105 = v33;
      goto LABEL_49;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v63 = sub_100216774();
    sub_100002648(v63, qword_10029D160);
    v64 = sub_100216754();
    v65 = sub_100216C54();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "permanentInfo does not exist", v66, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v67 = xmmword_100225FD0;
    *(v67 + 16) = 13;
    v68 = sub_100216144();

    [a2 sendMetricWithResult:0 error:v68];

    v69 = swift_allocError();
    *v70 = xmmword_100225FD0;
    *(v70 + 16) = 13;
    v127(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v69);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v55 = sub_100216774();
    sub_100002648(v55, qword_10029D160);
    v56 = sub_100216754();
    v57 = sub_100216C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "As a nonmember, can't vouch for someone else", v58, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v59 = xmmword_100225FD0;
    *(v59 + 16) = 13;
    v60 = sub_100216144();

    [a2 sendMetricWithResult:0 error:v60];

    v61 = swift_allocError();
    *v62 = xmmword_100225FD0;
    *(v62 + 16) = 13;
    a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v61);
  }
}

void sub_10013A604(void *a1, void *a2, void *a3, void (*a4)(uint64_t, unint64_t, uint64_t, unint64_t, unint64_t *, void, id), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id *a12, uint64_t a13)
{
  if (!a1)
  {
    v23 = a2;
    if (qword_100297520 == -1)
    {
LABEL_6:
      v27 = sub_100216774();
      sub_100002648(v27, qword_10029D160);
      swift_errorRetain();
      v28 = sub_100216754();
      v29 = sub_100216C74();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v58 = v31;
        *v30 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v32 = sub_100216994();
        v34 = sub_100005FB0(v32, v33, &v58);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error loading ego peer keys: %{public}s", v30, 0xCu);
        sub_100006128(v31);
      }

      if (v23)
      {
        v35 = sub_100216144();
      }

      else
      {
        v35 = 0;
      }

      [a3 sendMetricWithResult:0 error:v35];

      a4(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v23);
      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v18 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v19 = a1;
  v20 = sub_100216964();
  v21 = *(*(a11 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerKeys) + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  v58 = 0;
  v22 = [v18 createVoucherForCandidate:a7 stableInfo:a8 withSponsorID:v20 reason:1 signingKeyPair:v21 error:&v58];

  v23 = v58;
  if (v22)
  {
    v24 = v19;
    v25 = v23;
    v26 = [a7 epoch];
    if ((v26 & 0x8000000000000000) == 0)
    {
      v47 = sub_10010BD08(a12, v24, v24, v26);

      [a3 sendMetricWithResult:1 error:0];
      v48 = [v22 data];
      v49 = sub_100216224();
      v51 = v50;

      v52 = [v22 sig];
      v53 = a4;
      v54 = sub_100216224();
      v56 = v55;

      v53(v49, v51, v54, v56, v47, a13, 0);

      sub_100002BF0(v54, v56);
      sub_100002BF0(v49, v51);

      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v36 = v58;
  v37 = sub_100216154();

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v38 = sub_100216774();
  sub_100002648(v38, qword_10029D160);
  swift_errorRetain();
  v39 = sub_100216754();
  v40 = sub_100216C74();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v41 = 136446210;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v42 = sub_100216994();
    v44 = a4;
    v45 = sub_100005FB0(v42, v43, &v58);

    *(v41 + 4) = v45;
    a4 = v44;
    _os_log_impl(&_mh_execute_header, v39, v40, "Error creating voucher with bottle: %{public}s", v41, 0xCu);
    sub_100006128(v57);
  }

  v46 = sub_100216144();
  [a3 sendMetricWithResult:0 error:v46];

  swift_errorRetain();
  a4(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v37);
}

uint64_t sub_10013ABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v29._countAndFlagsBits = sub_100216994();
      sub_100216A14(v29);

      v20 = 0x203A726F727265;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, 0xE700000000000000, &v28);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithRecoveryKey complete: %{public}s", v18, 0xCu);
    sub_100006128(v19);

    a5 = v24;
    a6 = v25;
    a4 = v23;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000037, 0x800000010023C850);
  return a9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10013AE44(char *a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v14 = sub_100216774();
  sub_100002648(v14, qword_10029D160);
  v15 = sub_100216754();
  v16 = sub_100216C54();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "beginning a vouchWithRecoveryKey", v17, 2u);
  }

  v18 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v19 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v19)
  {
    v20 = v19;
    v97 = sub_100216974();
    v22 = v21;

    v23 = [*&a1[v18] egoPeerPermanentInfo];
    if (v23)
    {
      v96 = a6;
      v24 = v23;
      v25 = sub_100216224();
      v98 = v26;

      v27 = [*&a1[v18] egoPeerPermanentInfoSig];
      if (!v27)
      {

        v59 = sub_100216754();
        v60 = sub_100216C54();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "permanentInfoSig does not exist", v61, 2u);
        }

        sub_1000561D0();
        v62 = swift_allocError();
        *v63 = xmmword_100225FD0;
        *(v63 + 16) = 13;
        a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v62);

        v64 = v25;
        goto LABEL_38;
      }

      v91 = a5;
      v92 = a7;
      v28 = v27;
      v29 = sub_100216224();
      v31 = v30;

      v32 = [*&a1[v18] egoPeerStableInfo];
      if (v32)
      {
        v33 = v32;
        v94 = sub_100216224();
        v95 = v34;

        v35 = [*&a1[v18] egoPeerStableInfoSig];
        if (v35)
        {
          v89 = a3;
          v36 = v35;
          v90 = sub_100216224();
          v87 = v37;

          v93 = [objc_allocWithZone(TPECPublicKeyFactory) init];

          sub_100012558(v25, v98);
          sub_100012558(v29, v31);
          v85 = sub_100216964();

          isa = sub_100216204().super.isa;
          v39 = sub_100216204().super.isa;
          v40 = [objc_opt_self() permanentInfoWithPeerID:v85 data:isa sig:v39 keyFactory:v93];

          v88 = v31;
          sub_100002BF0(v29, v31);

          sub_100002BF0(v25, v98);
          if (v40)
          {
            v86 = v40;
            v41 = objc_allocWithZone(TPPeerStableInfo);
            sub_100012558(v94, v95);
            sub_100012558(v90, v87);
            v42 = sub_100216204().super.isa;
            v43 = sub_100216204().super.isa;
            v44 = [v41 initWithData:v42 sig:v43];

            sub_100002BF0(v90, v87);
            sub_100002BF0(v94, v95);
            if (!v44)
            {

              v80 = sub_100216754();
              v81 = sub_100216C54();
              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                *v82 = 0;
                _os_log_impl(&_mh_execute_header, v80, v81, "Invalid stableinfo or signature; van't vouch for them", v82, 2u);
              }

              sub_1000561D0();
              v83 = swift_allocError();
              *v84 = xmmword_10021DC20;
              *(v84 + 16) = 13;
              a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v83);

              sub_100002BF0(v90, v87);
              sub_100002BF0(v94, v95);
              sub_100002BF0(v29, v31);
              v64 = v25;
              goto LABEL_38;
            }

            v45 = v44;
            v46 = swift_allocObject();
            v46[2] = a2;
            v46[3] = v89;
            v46[4] = a4;
            v46[5] = v91;
            v46[6] = v96;
            v46[7] = v92;
            v46[8] = a1;
            v46[9] = v86;
            v46[10] = v45;
            v46[11] = a8;
            strcpy(v101, "signing-key ");
            BYTE5(v101[1]) = 0;
            HIWORD(v101[1]) = -5120;

            v47 = a1;
            v48 = v86;
            v49 = v45;

            v103._countAndFlagsBits = v97;
            v103._object = v22;
            sub_100216A14(v103);

            sub_100198E8C(v101[0], v101[1], sub_1001AA5E8, v46, v97, v22);

            swift_bridgeObjectRelease_n();
            sub_100002BF0(v90, v87);
            v50 = v94;
            v51 = v95;
          }

          else
          {

            v75 = sub_100216754();
            v76 = sub_100216C54();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              *v77 = 0;
              _os_log_impl(&_mh_execute_header, v75, v76, "Invalid permenent info or signature; can't vouch for them", v77, 2u);
            }

            sub_1000561D0();
            v78 = swift_allocError();
            *v79 = xmmword_10021DA80;
            *(v79 + 16) = 13;
            a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v78);

            sub_100002BF0(v90, v87);
            v50 = v94;
            v51 = v95;
          }

          sub_100002BF0(v50, v51);
          sub_100002BF0(v29, v88);
          v64 = v25;
LABEL_38:

          return sub_100002BF0(v64, v98);
        }

        v70 = sub_100216754();
        v71 = sub_100216C54();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "stableInfoSig does not exist", v72, 2u);
        }

        sub_1000561D0();
        v73 = swift_allocError();
        *v74 = xmmword_100225FD0;
        *(v74 + 16) = 13;
        a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v73);

        sub_100002BF0(v94, v95);
      }

      else
      {

        v65 = sub_100216754();
        v66 = sub_100216C54();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "stableInfo does not exist", v67, 2u);
        }

        sub_1000561D0();
        v68 = swift_allocError();
        *v69 = xmmword_100225FD0;
        *(v69 + 16) = 13;
        a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v68);
      }

      sub_100002BF0(v29, v31);
      v64 = v25;
      goto LABEL_38;
    }

    v52 = sub_100216754();
    v53 = sub_100216C54();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "permanentInfo does not exist";
      goto LABEL_17;
    }
  }

  else
  {
    v52 = sub_100216754();
    v53 = sub_100216C54();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "As a nonmember, can't vouch for someone else";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v52, v53, v55, v54, 2u);
    }
  }

  sub_1000561D0();
  v56 = swift_allocError();
  *v57 = xmmword_100225FD0;
  *(v57 + 16) = 13;
  a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v56);
}

void sub_10013B970(void *a1, uint64_t a2, void (*a3)(void, unint64_t, void, unint64_t, void, void, id), uint64_t a4, uint64_t a5, unint64_t a6, void *a7, unint64_t a8, uint64_t a9, void *a10, uint64_t a11, unint64_t a12)
{
  if (a1)
  {
    v17 = a1;

    v18 = sub_100013A8C(a5, a6, a7, a8);
    v142 = v17;
    v144 = a3;
    v28 = OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys;
    v29 = *(*&v18[OBJC_IVAR____TtC18TrustedPeersHelper11RecoveryKey_peerKeys] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
    v30 = v18;
    v31 = v18;
    v32 = [v29 publicKey];
    v33 = [v32 keyData];

    v34 = sub_100216224();
    v36 = v35;

    v139 = v28;
    v140 = v30;
    v37 = *&v30[v28];
    v141 = v31;

    v38 = *&v37[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey];
    v39 = [v38 publicKey];

    v40 = [v39 keyData];
    v41 = sub_100216224();
    v147 = v42;

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v43 = sub_100216774();
    sub_100002648(v43, qword_10029D160);
    sub_100012558(v34, v36);
    v44 = sub_100216754();
    v45 = sub_100216C54();
    sub_100002BF0(v34, v36);
    v146 = v36;
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v41;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v148 = v48;
      *v47 = 136446210;
      v49 = v34;
      v50 = sub_100216214(0);
      v52 = sub_100005FB0(v50, v51, &v148);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "vouchWithRecoveryKey signingPubKey: %{public}s", v47, 0xCu);
      sub_100006128(v48);

      v41 = v46;
    }

    else
    {
      v49 = v34;
    }

    v53 = v147;
    sub_100012558(v41, v147);
    v54 = sub_100216754();
    v55 = sub_100216C54();
    sub_100002BF0(v41, v147);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v41;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v148 = v58;
      *v57 = 136446210;
      v59 = sub_100216214(0);
      v61 = sub_100005FB0(v59, v60, &v148);
      v53 = v147;

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "vouchWithRecoveryKey encryptionPubKey: %{public}s", v57, 0xCu);
      sub_100006128(v58);

      v41 = v56;
    }

    v62 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v63 = *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v148 = 0;
    v64 = [v63 isRecoveryKeyEnrolledWithError:&v148];
    v65 = v148;
    if (v148)
    {
      swift_willThrow();
      v66 = v65;
      v67 = sub_100216754();
      v68 = sub_100216C74();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138543362;
        v71 = v66;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 4) = v72;
        *v70 = v72;
        _os_log_impl(&_mh_execute_header, v67, v68, "Error determining whether Recovery Key is enrolled: %{public}@", v69, 0xCu);
        sub_1000114D4(v70, &qword_10029D580, &unk_10021CCC0);
      }

LABEL_18:

      v73 = v66;
      v144(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v65);
      sub_100002BF0(v49, v146);
      sub_100002BF0(v41, v53);

      v74 = v142;
LABEL_29:

      return;
    }

    if (v64)
    {
      v75 = *(a9 + v62);
      v76 = objc_allocWithZone(TPRecoveryKeyPair);
      sub_100012558(v49, v146);
      sub_100012558(v41, v53);
      v77 = v75;
      isa = sub_100216204().super.isa;
      v138 = v41;
      v79 = sub_100216204().super.isa;
      v80 = [v76 initWithSigningKeyData:isa encryptionKeyData:v79];

      v41 = v138;
      sub_100002BF0(v138, v53);

      sub_100002BF0(v49, v146);
      v148 = 0;
      v81 = [v77 peerIDThatTrustsRecoveryKeys:v80 canIntroducePeer:a10 stableInfo:a11 error:&v148];

      v65 = v148;
      if (v148)
      {
        v82 = v148;

        swift_willThrow();
        v66 = v82;
        v67 = sub_100216754();
        v83 = sub_100216C74();

        if (os_log_type_enabled(v67, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *v84 = 138543362;
          v86 = v66;
          v87 = _swift_stdlib_bridgeErrorToNSError();
          *(v84 + 4) = v87;
          *v85 = v87;
          _os_log_impl(&_mh_execute_header, v67, v83, "Failed to get peer that trusts RK: %{public}@", v84, 0xCu);
          sub_1000114D4(v85, &qword_10029D580, &unk_10021CCC0);
        }

        goto LABEL_18;
      }

      if (v81)
      {
        v94 = sub_100216974();
        v137 = v81;
        v96 = v95;
        v97 = *(a9 + v62);
        v98 = *&v140[v139];
        v99 = v97;
        v100 = sub_10010C8B4(a12, v98, v94, v96, v99);
        v136 = v101;

        v102 = *(a9 + v62);
        v103 = *(*&v140[v139] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
        v148 = 0;
        v104 = v102;
        v105 = [v104 createVoucherForCandidate:a10 stableInfo:a11 withSponsorID:v137 reason:6 signingKeyPair:v103 error:&v148];

        v106 = v148;
        if (v105)
        {
          v107 = v142;
          v108 = v106;
          v109 = [a10 epoch];
          if (v109 < 0)
          {
            __break(1u);
          }

          v125 = sub_10010BD08(v100, v107, v107, v109);

          v126 = v105;
          v145 = v105;
          v127 = [v105 data];
          v128 = sub_100216224();
          v130 = v129;

          v131 = [v126 sig];
          v132 = sub_100216224();
          v143 = v107;
          v134 = v133;

          v135 = v136;
          v144(v128, v130, v132, v134, v125, v136, 0);
          sub_100002BF0(v49, v146);
          sub_100002BF0(v138, v147);

          sub_100002BF0(v132, v134);
          sub_100002BF0(v128, v130);

          v74 = v145;
          goto LABEL_29;
        }

        v115 = v148;

        v116 = sub_100216154();

        swift_willThrow();
        v117 = v138;
        swift_errorRetain();
        v118 = sub_100216754();
        v119 = sub_100216C74();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v148 = v121;
          *v120 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v122 = sub_100216994();
          v124 = sub_100005FB0(v122, v123, &v148);

          *(v120 + 4) = v124;
          v117 = v138;
          _os_log_impl(&_mh_execute_header, v118, v119, "Error creating voucher using recovery key set: %{public}s", v120, 0xCu);
          sub_100006128(v121);
        }

        swift_errorRetain();
        v144(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v116);
        sub_100002BF0(v49, v146);
        sub_100002BF0(v117, v147);

        goto LABEL_28;
      }

      v110 = sub_100216754();
      v111 = sub_100216C54();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Untrusted recovery key set", v112, 2u);
      }

      sub_1000561D0();
      v113 = swift_allocError();
      *v114 = xmmword_10021DC10;
      *(v114 + 16) = 13;
      v144(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v113);
      v93 = v49;
    }

    else
    {
      v88 = sub_100216754();
      v89 = sub_100216C54();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Recovery Key is not enrolled", v90, 2u);
      }

      sub_1000561D0();
      v91 = swift_allocError();
      *v92 = xmmword_10021DC00;
      *(v92 + 16) = 13;
      v144(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v91);
      v93 = v49;
    }

    sub_100002BF0(v93, v146);
    sub_100002BF0(v41, v53);

LABEL_28:

    v74 = v141;
    goto LABEL_29;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v20 = sub_100216774();
  sub_100002648(v20, qword_10029D160);
  swift_errorRetain();
  v21 = sub_100216754();
  v22 = sub_100216C74();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v148 = v24;
    *v23 = 136446210;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v25 = sub_100216994();
    v27 = sub_100005FB0(v25, v26, &v148);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Don't have my own peer keys; can't vouch with recovery key: %{public}s", v23, 0xCu);
    sub_100006128(v24);
  }

  a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a2);
}

uint64_t sub_10013C98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  if (a3)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v10))
  {
    v18 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20._countAndFlagsBits = sub_100216994();
      sub_100216A14(v20);

      v15 = 0x203A726F727265;
    }

    else
    {
      v15 = 0x73736563637573;
    }

    v16 = sub_100005FB0(v15, 0xE700000000000000, &v19);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "recoverTLKSharesForInheritor complete: %{public}s", v13, 0xCu);
    sub_100006128(v14);

    a5 = v18;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000032, 0x800000010023C810);
  return a5(a1, a2, a3);
}

uint64_t sub_10013CBD4(char *a1, void (*a2)(void, void, uint64_t), uint64_t a3, void *a4, uint64_t a5)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);
  v11 = sub_100216754();
  v12 = sub_100216C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "beginning a recoverTLKSharesForInheritor", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v15 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100216974();
    v19 = v18;

    v20 = [*&a1[v14] egoPeerPermanentInfo];
    if (v20)
    {
      v67 = a4;
      v68 = a5;
      v21 = v20;
      v22 = sub_100216224();
      v24 = v23;

      v25 = [*&a1[v14] egoPeerPermanentInfoSig];
      if (v25)
      {
        v65 = a2;
        v66 = a3;
        v26 = v25;
        v27 = v19;
        v28 = sub_100216224();
        v29 = v17;
        v31 = v30;

        v69 = [objc_allocWithZone(TPECPublicKeyFactory) init];

        sub_100012558(v22, v24);
        sub_100012558(v28, v31);
        v64._countAndFlagsBits = v29;
        v32 = v22;
        v33 = sub_100216964();
        v64._object = v27;

        isa = sub_100216204().super.isa;
        v35 = sub_100216204().super.isa;
        v36 = [objc_opt_self() permanentInfoWithPeerID:v33 data:isa sig:v35 keyFactory:v69];

        sub_100002BF0(v28, v31);
        sub_100002BF0(v32, v24);

        v37 = v32;
        if (v36)
        {
          v38 = swift_allocObject();
          v38[2] = v65;
          v38[3] = v66;
          v38[4] = v67;
          v38[5] = a1;
          v38[6] = v36;
          v38[7] = v68;
          strcpy(v70, "signing-key ");
          BYTE5(v70[1]) = 0;
          HIWORD(v70[1]) = -5120;

          v39 = v67;
          v40 = a1;
          v41 = v36;

          sub_100216A14(v64);

          sub_100198E8C(v70[0], v70[1], sub_1001AA5D8, v38, v64._countAndFlagsBits, v64._object);

          swift_bridgeObjectRelease_n();
          v42 = v28;
          v43 = v31;
        }

        else
        {
          v58 = v31;

          v59 = sub_100216754();
          v60 = sub_100216C54();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&_mh_execute_header, v59, v60, "Invalid permenent info or signature; can't vouch for them", v61, 2u);
          }

          sub_1000561D0();
          v62 = swift_allocError();
          *v63 = xmmword_10021DA80;
          *(v63 + 16) = 13;
          v65(0, 0, v62);

          v42 = v28;
          v43 = v58;
        }

        sub_100002BF0(v42, v43);
        v56 = v37;
        v57 = v24;
      }

      else
      {

        v51 = sub_100216754();
        v52 = sub_100216C54();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "permanentInfoSig does not exist", v53, 2u);
        }

        sub_1000561D0();
        v54 = swift_allocError();
        *v55 = xmmword_100225FD0;
        *(v55 + 16) = 13;
        a2(0, 0, v54);

        v56 = v22;
        v57 = v24;
      }

      return sub_100002BF0(v56, v57);
    }

    v44 = sub_100216754();
    v45 = sub_100216C54();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "permanentInfo does not exist";
      goto LABEL_14;
    }
  }

  else
  {
    v44 = sub_100216754();
    v45 = sub_100216C54();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "As a nonmember, can't vouch for someone else";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v44, v45, v47, v46, 2u);
    }
  }

  sub_1000561D0();
  v48 = swift_allocError();
  *v49 = xmmword_100225FD0;
  *(v49 + 16) = 13;
  a2(0, 0, v48);
}

void sub_10013D274(void *a1, void *a2, void (*a3)(void, void, id), uint64_t a4, void *a5, uint64_t a6, void *a7, unint64_t a8)
{
  v183 = a8;
  v15 = sub_10001148C(&qword_10029D900, &qword_1002266A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v174[-v18];
  v20 = sub_1002163D4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v174[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v184 = v25;
    v186 = a4;
    v187 = a3;
    v185 = a1;
    v26 = [a5 uuid];
    sub_100216974();

    sub_100216394();

    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1000114D4(v19, &qword_10029D900, &qword_1002266A0);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v27 = sub_100216774();
      sub_100002648(v27, qword_10029D160);
      v28 = a5;
      v29 = sub_100216754();
      v30 = sub_100216C54();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v189 = v32;
        *v31 = 136446210;
        v33 = [v28 uuid];
        v34 = sub_100216974();
        v36 = v35;

        v37 = sub_100005FB0(v34, v36, &v189);

        *(v31 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v29, v30, "Unable to parse uuid: %{public}s", v31, 0xCu);
        sub_100006128(v32);
      }

      sub_1000561D0();
      v38 = swift_allocError();
      *v39 = xmmword_10021DC00;
      *(v39 + 16) = 13;
      v187(0, 0, v38);

      return;
    }

    v182 = v21;
    (*(v21 + 32))(v184, v19, v20);
    v48 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v49 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    isa = sub_1002163B4().super.isa;
    v51 = [v49 findCustodianRecoveryKeyWithUUID:isa];

    if (v51)
    {
      v52 = *(a6 + v48);
      v189 = 0;
      v53 = [v52 isCustodianRecoveryKeyTrusted:v51 error:&v189];
      v54 = v189;
      if (v189)
      {
        swift_willThrow();
        v55 = qword_100297520;
        v56 = v54;
        v57 = v187;
        if (v55 != -1)
        {
          swift_once();
        }

        v58 = sub_100216774();
        sub_100002648(v58, qword_10029D160);
        v59 = v56;
        v60 = sub_100216754();
        v61 = sub_100216C54();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138543362;
          v64 = v59;
          v65 = _swift_stdlib_bridgeErrorToNSError();
          *(v62 + 4) = v65;
          *v63 = v65;
          _os_log_impl(&_mh_execute_header, v60, v61, "error determining whether Custodian Recovery Key is trusted: %{public}@", v62, 0xCu);
          sub_1000114D4(v63, &qword_10029D580, &unk_10021CCC0);
        }

        v66 = v59;
        v57(0, 0, v54);

        goto LABEL_20;
      }

      v80 = v187;
      if (v53)
      {
        v81 = [a5 recoveryString];
        if (v81)
        {
          v82 = v81;
          v83 = sub_100216974();
          v85 = v84;

          v86 = [a5 salt];
          if (v86)
          {
            v87 = v86;
            v88 = sub_100216974();
            v180 = v89;

            type metadata accessor for CustodianRecoveryKey();
            swift_allocObject();
            v181 = v51;
            v101 = sub_1000129C8(v181, v83, v85, v88, v180);
            v102 = qword_100297520;
            swift_retain_n();
            if (v102 != -1)
            {
              swift_once();
            }

            v103 = sub_100216774();
            v180 = sub_100002648(v103, qword_10029D160);
            v104 = sub_100216754();
            v105 = sub_100216C54();

            v106 = os_log_type_enabled(v104, v105);
            v178 = 0;
            v179 = v101;
            if (v106)
            {
              v107 = swift_slowAlloc();
              v176 = v107;
              v177 = swift_slowAlloc();
              v189 = v177;
              *v107 = 136446210;
              v108 = [*(*(v101 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
              v109 = [v108 keyData];

              v110 = sub_100216224();
              v112 = v111;

              v113 = sub_100216214(0);
              v115 = v114;
              sub_100002BF0(v110, v112);
              v116 = v113;
              v101 = v179;
              v117 = sub_100005FB0(v116, v115, &v189);

              v118 = v176;
              *(v176 + 1) = v117;
              _os_log_impl(&_mh_execute_header, v104, v105, "recoverTLKSharesForInheritor signingPubKey: %{public}s", v118, 0xCu);
              sub_100006128(v177);
            }

            v119 = sub_100216754();
            v120 = sub_100216C54();

            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v176 = v121;
              v177 = swift_slowAlloc();
              v189 = v177;
              *v121 = 136446210;
              v122 = [*(*(v101 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
              v175 = v120;
              v123 = v122;
              v124 = [v122 keyData];

              v125 = sub_100216224();
              v127 = v126;

              v128 = sub_100216214(0);
              v130 = v129;

              sub_100002BF0(v125, v127);
              v131 = sub_100005FB0(v128, v130, &v189);

              v132 = v176;
              *(v176 + 1) = v131;
              _os_log_impl(&_mh_execute_header, v119, v175, "recoverTLKSharesForInheritor encryptionPubKey: %{public}s", v132, 0xCu);
              sub_100006128(v177);
            }

            else
            {
            }

            v133 = v187;
            v134 = *(a6 + v48);
            v189 = 0;
            v135 = [v134 peerIDThatTrustsCustodianRecoveryKeys:v181 canIntroducePeer:a7 stableInfo:0 error:&v189];
            v136 = v135;
            v137 = v189;
            if (!v189)
            {
              if (v135)
              {
                v146 = sub_100216974();
                v148 = v147;

                v149 = *(a6 + v48);
                v150 = *(v179 + 16);
                v151 = v149;
                v152 = sub_10010C8B4(v183, v150, v146, v148, v151);
                v154 = v153;

                v155 = v185;
                v156 = [a7 epoch];
                if (v156 < 0)
                {
                  __break(1u);
                  return;
                }

                v157 = v178;
                v158 = sub_10010BD08(v152, v155, v155, v156);
                if (v157)
                {

                  swift_errorRetain();
                  v159 = sub_100216754();
                  v160 = sub_100216C74();

                  if (os_log_type_enabled(v159, v160))
                  {
                    v161 = swift_slowAlloc();
                    v187 = v154;
                    v162 = v161;
                    v163 = swift_slowAlloc();
                    v188 = v157;
                    v189 = v163;
                    *v162 = 136446210;
                    swift_errorRetain();
                    sub_10001148C(&unk_10029D560, qword_10021D450);
                    v164 = sub_100216994();
                    v166 = sub_100005FB0(v164, v165, &v189);

                    *(v162 + 4) = v166;
                    _os_log_impl(&_mh_execute_header, v159, v160, "Error making CKKSTLKShares for inheritor: %{public}s", v162, 0xCu);
                    sub_100006128(v163);

                    v154 = v187;
                  }

                  swift_errorRetain();
                  v133(0, 0, v157);
                }

                else
                {
                  v172 = v158;

                  v173 = v154;
                  v133(v172, v154, 0);
                }
              }

              else
              {
                v167 = sub_100216754();
                v168 = sub_100216C54();
                if (os_log_type_enabled(v167, v168))
                {
                  v169 = swift_slowAlloc();
                  *v169 = 0;
                  _os_log_impl(&_mh_execute_header, v167, v168, "Untrusted custodian recovery key set", v169, 2u);
                }

                sub_1000561D0();
                v170 = swift_allocError();
                *v171 = xmmword_10021DC10;
                *(v171 + 16) = 13;
                v133(0, 0, v170);
              }

LABEL_43:
              (*(v182 + 8))(v184, v20);
              return;
            }

            v138 = v189;

            swift_willThrow();
            v139 = v138;
            v140 = sub_100216754();
            v141 = sub_100216C74();

            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              *v142 = 138543362;
              v144 = v139;
              v145 = _swift_stdlib_bridgeErrorToNSError();
              *(v142 + 4) = v145;
              *v143 = v145;
              _os_log_impl(&_mh_execute_header, v140, v141, "Error getting peer that trusts CRK: %{public}@", v142, 0xCu);
              sub_1000114D4(v143, &qword_10029D580, &unk_10021CCC0);
            }

            v66 = v139;
            v133(0, 0, v137);

LABEL_20:

            goto LABEL_43;
          }
        }

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v97 = sub_100216774();
        sub_100002648(v97, qword_10029D160);
        v98 = sub_100216754();
        v99 = sub_100216C54();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "Bad format CRK: recovery string or salt not set", v100, 2u);
        }

        sub_1000561D0();
        v95 = swift_allocError();
        v96 = xmmword_10021DC30;
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v90 = sub_100216774();
        sub_100002648(v90, qword_10029D160);
        v91 = sub_100216754();
        v92 = sub_100216C54();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "Custodian Recovery Key is not trusted", v93, 2u);
        }

        sub_1000561D0();
        v95 = swift_allocError();
        v96 = xmmword_10021DC10;
      }

      *v94 = v96;
      *(v94 + 16) = 13;
      v80(0, 0, v95);
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v67 = sub_100216774();
      sub_100002648(v67, qword_10029D160);
      v68 = a5;
      v69 = sub_100216754();
      v70 = sub_100216C54();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v189 = v72;
        *v71 = 136446210;
        v73 = [v68 uuid];
        v74 = sub_100216974();
        v76 = v75;

        v77 = sub_100005FB0(v74, v76, &v189);

        *(v71 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "Unable to find custodian recovery key %{public}s on model", v71, 0xCu);
        sub_100006128(v72);
      }

      sub_1000561D0();
      v78 = swift_allocError();
      *v79 = xmmword_10021DC00;
      *(v79 + 16) = 13;
      v187(0, 0, v78);
    }

    goto LABEL_43;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v40 = sub_100216774();
  sub_100002648(v40, qword_10029D160);
  swift_errorRetain();
  v41 = sub_100216754();
  v42 = sub_100216C74();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v188 = a2;
    v189 = v44;
    *v43 = 136446210;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v45 = sub_100216994();
    v47 = sub_100005FB0(v45, v46, &v189);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "Don't have my own peer keys; can't establish: %{public}s", v43, 0xCu);
    sub_100006128(v44);
  }

  a3(0, 0, a2);
}

uint64_t sub_10013E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v29._countAndFlagsBits = sub_100216994();
      sub_100216A14(v29);

      v20 = 0x203A726F727265;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, 0xE700000000000000, &v28);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithCustodianRecoveryKey complete: %{public}s", v18, 0xCu);
    sub_100006128(v19);

    a5 = v24;
    a6 = v25;
    a4 = v23;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000033, 0x800000010023C7D0);
  return a9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10013E988(char *a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a3, void *a4, uint64_t a5)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);
  v11 = sub_100216754();
  v12 = sub_100216C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "beginning a vouchWithCustodianRecoveryKey", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v15 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v15)
  {
    v99 = a2;
    v16 = v15;
    v17 = sub_100216974();
    v19 = v18;

    v20 = [*&a1[v14] egoPeerPermanentInfo];
    if (v20)
    {
      v21 = v20;
      v98 = sub_100216224();
      v23 = v22;

      v24 = [*&a1[v14] egoPeerPermanentInfoSig];
      if (v24)
      {
        v96 = v17;
        v25 = v24;
        v26 = sub_100216224();
        v97 = v27;

        v28 = [*&a1[v14] egoPeerStableInfo];
        if (v28)
        {
          v89 = a5;
          v29 = v28;
          v95 = sub_100216224();
          v31 = v30;

          v32 = [*&a1[v14] egoPeerStableInfoSig];
          if (v32)
          {
            v88 = a4;
            v92 = a3;
            v33 = v32;
            v93 = sub_100216224();
            v90 = v34;

            v35 = [objc_allocWithZone(TPECPublicKeyFactory) init];

            sub_100012558(v98, v23);
            sub_100012558(v26, v97);
            v36 = sub_100216964();

            v94 = v23;
            isa = sub_100216204().super.isa;
            v38 = sub_100216204().super.isa;
            v91 = v35;
            v39 = [objc_opt_self() permanentInfoWithPeerID:v36 data:isa sig:v38 keyFactory:v35];

            sub_100002BF0(v26, v97);
            sub_100002BF0(v98, v94);

            if (v39)
            {
              v40 = objc_allocWithZone(TPPeerStableInfo);
              sub_100012558(v95, v31);
              sub_100012558(v93, v90);
              v41 = sub_100216204().super.isa;
              v42 = sub_100216204().super.isa;
              v43 = [v40 initWithData:v41 sig:v42];

              sub_100002BF0(v93, v90);
              sub_100002BF0(v95, v31);
              if (v43)
              {
                v44 = swift_allocObject();
                v44[2] = v99;
                v44[3] = v92;
                v44[4] = v88;
                v44[5] = a1;
                v44[6] = v39;
                v44[7] = v43;
                v44[8] = v89;
                strcpy(v100, "signing-key ");
                BYTE5(v100[1]) = 0;
                HIWORD(v100[1]) = -5120;

                v45 = v88;
                v46 = a1;
                v47 = v39;
                v48 = v43;

                v102._countAndFlagsBits = v96;
                v102._object = v19;
                sub_100216A14(v102);

                sub_100198E8C(v100[0], v100[1], sub_1001AA5A4, v44, v96, v19);

                swift_bridgeObjectRelease_n();
                sub_100002BF0(v93, v90);
                sub_100002BF0(v95, v31);
                v49 = v26;
              }

              else
              {

                v83 = sub_100216754();
                v84 = sub_100216C54();
                if (os_log_type_enabled(v83, v84))
                {
                  v85 = swift_slowAlloc();
                  *v85 = 0;
                  _os_log_impl(&_mh_execute_header, v83, v84, "Invalid stableinfo or signature; van't vouch for them", v85, 2u);
                }

                sub_1000561D0();
                v86 = swift_allocError();
                *v87 = xmmword_10021DC20;
                *(v87 + 16) = 13;
                v99(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v86);

                sub_100002BF0(v93, v90);
                sub_100002BF0(v95, v31);
                v49 = v26;
              }

              sub_100002BF0(v49, v97);
              v76 = v98;
              v77 = v94;
            }

            else
            {

              v78 = sub_100216754();
              v79 = sub_100216C54();
              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                *v80 = 0;
                _os_log_impl(&_mh_execute_header, v78, v79, "Invalid permenent info or signature; can't vouch for them", v80, 2u);
              }

              sub_1000561D0();
              v81 = swift_allocError();
              *v82 = xmmword_10021DA80;
              *(v82 + 16) = 13;
              v99(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v81);

              sub_100002BF0(v93, v90);
              sub_100002BF0(v95, v31);
              sub_100002BF0(v26, v97);
              v76 = v98;
              v77 = v94;
            }

            goto LABEL_33;
          }

          v71 = sub_100216754();
          v72 = sub_100216C54();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&_mh_execute_header, v71, v72, "stableInfoSig does not exist", v73, 2u);
          }

          sub_1000561D0();
          v74 = swift_allocError();
          *v75 = xmmword_100225FD0;
          *(v75 + 16) = 13;
          v99(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v74);

          sub_100002BF0(v95, v31);
        }

        else
        {

          v66 = sub_100216754();
          v67 = sub_100216C54();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&_mh_execute_header, v66, v67, "stableInfo does not exist", v68, 2u);
          }

          sub_1000561D0();
          v69 = swift_allocError();
          *v70 = xmmword_100225FD0;
          *(v70 + 16) = 13;
          v99(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v69);
        }

        sub_100002BF0(v26, v97);
      }

      else
      {

        v61 = sub_100216754();
        v62 = sub_100216C54();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "permanentInfoSig does not exist", v63, 2u);
        }

        sub_1000561D0();
        v64 = swift_allocError();
        *v65 = xmmword_100225FD0;
        *(v65 + 16) = 13;
        v99(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v64);
      }

      v76 = v98;
      v77 = v23;
LABEL_33:

      return sub_100002BF0(v76, v77);
    }

    v55 = sub_100216754();
    v56 = sub_100216C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "permanentInfo does not exist", v57, 2u);
    }

    sub_1000561D0();
    v58 = swift_allocError();
    *v59 = xmmword_100225FD0;
    *(v59 + 16) = 13;
    v99(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v58);
  }

  else
  {
    v50 = sub_100216754();
    v51 = sub_100216C54();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "As a nonmember, can't vouch for someone else", v52, 2u);
    }

    sub_1000561D0();
    v53 = swift_allocError();
    *v54 = xmmword_100225FD0;
    *(v54 + 16) = 13;
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v53);
  }
}

void sub_10013F540(void *a1, uint64_t a2, void (*a3)(void, unint64_t, void, unint64_t, void, void, NSObject *), uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t *a8, uint64_t *a9)
{
  v211 = a7;
  v16 = sub_10001148C(&qword_10029D900, &qword_1002266A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v202 - v19;
  v21 = sub_1002163D4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v212 = a4;
    v213 = v26;
    v215 = a3;
    v214 = a1;
    v27 = [a5 uuid];
    sub_100216974();

    sub_100216394();

    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_1000114D4(v20, &qword_10029D900, &qword_1002266A0);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v28 = sub_100216774();
      sub_100002648(v28, qword_10029D160);
      v29 = a5;
      v30 = sub_100216754();
      v31 = sub_100216C54();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v217 = v33;
        *v32 = 136446210;
        v34 = [v29 uuid];
        v35 = sub_100216974();
        v37 = v36;

        v38 = sub_100005FB0(v35, v37, &v217);

        *(v32 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unable to parse uuid %{public}s", v32, 0xCu);
        sub_100006128(v33);
      }

      sub_1000561D0();
      v39 = swift_allocError();
      *v40 = xmmword_10021DC00;
      *(v40 + 16) = 13;
      v215(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v39);

      return;
    }

    v210 = v22;
    (*(v22 + 32))(v213, v20, v21);
    v49 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v50 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    isa = sub_1002163B4().super.isa;
    v52 = [v50 findCustodianRecoveryKeyWithUUID:isa];

    if (v52)
    {
      v53 = *(a6 + v49);
      v217 = 0;
      v54 = [v53 isCustodianRecoveryKeyTrusted:v52 error:&v217];
      v55 = v217;
      if (v217)
      {
        swift_willThrow();
        v56 = qword_100297520;
        v57 = v55;
        v58 = v215;
        if (v56 != -1)
        {
          swift_once();
        }

        v59 = sub_100216774();
        sub_100002648(v59, qword_10029D160);
        v60 = v57;
        v61 = sub_100216754();
        v62 = sub_100216C54();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 138543362;
          v65 = v60;
          v66 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 4) = v66;
          *v64 = v66;
          _os_log_impl(&_mh_execute_header, v61, v62, "Error determining whether Custodian Recovery Key is trusted: %{public}@", v63, 0xCu);
          sub_1000114D4(v64, &qword_10029D580, &unk_10021CCC0);
        }

        v67 = v60;
        v58(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v55);

LABEL_20:
LABEL_44:
        (*(v210 + 8))(v213, v21);
        return;
      }

      v81 = v215;
      if (v54)
      {
        v82 = [a5 recoveryString];
        if (v82)
        {
          v83 = v82;
          v84 = sub_100216974();
          v86 = v85;

          v87 = [a5 salt];
          if (v87)
          {
            v88 = v87;
            v89 = sub_100216974();
            v209 = v90;

            type metadata accessor for CustodianRecoveryKey();
            swift_allocObject();
            v91 = v52;
            v92 = v84;
            v93 = v91;
            v106 = sub_1000129C8(v91, v92, v86, v89, v209);
            v107 = qword_100297520;
            swift_retain_n();
            if (v107 != -1)
            {
              swift_once();
            }

            v108 = sub_100216774();
            v209 = sub_100002648(v108, qword_10029D160);
            v109 = sub_100216754();
            v110 = sub_100216C54();

            LODWORD(v207) = v110;
            v111 = v109;
            v112 = os_log_type_enabled(v109, v110);
            v208 = v106;
            v205 = 0;
            if (v112)
            {
              v113 = swift_slowAlloc();
              v203 = v113;
              v204 = swift_slowAlloc();
              v217 = v204;
              *v113 = 136446210;
              v114 = [*(*(v106 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
              v115 = [v114 keyData];

              v116 = sub_100216224();
              v118 = v117;

              v119 = sub_100216214(0);
              v121 = v120;
              sub_100002BF0(v116, v118);
              v122 = v119;
              v106 = v208;
              v123 = sub_100005FB0(v122, v121, &v217);

              v124 = v203;
              *(v203 + 4) = v123;
              _os_log_impl(&_mh_execute_header, v111, v207, "vouchWithCustodianRecoveryKey signingPubKey: %{public}s", v124, 0xCu);
              sub_100006128(v204);
            }

            v125 = sub_100216754();
            v126 = sub_100216C54();

            if (os_log_type_enabled(v125, v126))
            {
              v127 = swift_slowAlloc();
              v206 = v93;
              v128 = v127;
              v207 = swift_slowAlloc();
              v217 = v207;
              *v128 = 136446210;
              v129 = [*(*(v106 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
              v204 = v125;
              v130 = v129;
              v131 = [v129 keyData];
              LODWORD(v203) = v126;
              v132 = v131;

              v133 = sub_100216224();
              v135 = v134;

              v136 = sub_100216214(0);
              v138 = v137;

              sub_100002BF0(v133, v135);
              v139 = sub_100005FB0(v136, v138, &v217);

              v140 = v128;
              v93 = v206;
              *(v140 + 1) = v139;
              v141 = v204;
              _os_log_impl(&_mh_execute_header, v204, v203, "vouchWithCustodianRecoveryKey encryptionPubKey: %{public}s", v140, 0xCu);
              sub_100006128(v207);
            }

            else
            {
            }

            v142 = v215;
            v143 = *(a6 + v49);
            v217 = 0;
            v144 = [v143 peerIDThatTrustsCustodianRecoveryKeys:v93 canIntroducePeer:v211 stableInfo:a8 error:&v217];
            v145 = v144;
            v146 = v217;
            if (v217)
            {
              v147 = v217;

              swift_willThrow();
              v148 = v147;
              v149 = sub_100216754();
              v150 = sub_100216C54();

              if (os_log_type_enabled(v149, v150))
              {
                v151 = swift_slowAlloc();
                v152 = v93;
                v153 = swift_slowAlloc();
                *v151 = 138543362;
                v154 = v148;
                v155 = _swift_stdlib_bridgeErrorToNSError();
                *(v151 + 4) = v155;
                *v153 = v155;
                _os_log_impl(&_mh_execute_header, v149, v150, "Error getting peer that trusts CRK: %{public}@", v151, 0xCu);
                sub_1000114D4(v153, &qword_10029D580, &unk_10021CCC0);
                v93 = v152;
              }

              v67 = v148;
              v142(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v146);

              goto LABEL_20;
            }

            if (!v144)
            {
              v179 = sub_100216754();
              v180 = sub_100216C54();
              if (os_log_type_enabled(v179, v180))
              {
                v181 = swift_slowAlloc();
                *v181 = 0;
                _os_log_impl(&_mh_execute_header, v179, v180, "Untrusted custodian recovery key set", v181, 2u);
              }

              sub_1000561D0();
              v182 = swift_allocError();
              *v183 = xmmword_10021DC10;
              *(v183 + 16) = 13;
              v142(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v182);

              goto LABEL_44;
            }

            v207 = a9;
            v203 = sub_100216974();
            v204 = a8;
            v157 = v156;
            v158 = v208;
            v159 = *(a6 + v49);
            v160 = *(v208 + 16);
            v161 = v159;
            v207 = sub_10010C8B4(v207, v160, v203, v157, v161);
            v203 = v162;

            v163 = v211;
            v164 = *(a6 + v49);
            v165 = *(*(v158 + 16) + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
            v217 = 0;
            v166 = v164;
            v167 = [v166 createVoucherForCandidate:v163 stableInfo:v204 withSponsorID:v145 reason:7 signingKeyPair:v165 error:&v217];

            v168 = v217;
            v206 = v93;
            if (v167)
            {
              v169 = v207;
              v170 = v214;
              v171 = v168;
              v172 = [v163 epoch];
              v173 = v215;
              if (v172 < 0)
              {
                __break(1u);
                return;
              }

              v174 = v172;
              v175 = v169;
              v176 = v205;
              v177 = sub_10010BD08(v175, v170, v170, v174);
              if (!v176)
              {
                v214 = v177;

                v192 = [v167 data];
                v193 = sub_100216224();
                v195 = v194;

                v196 = [v167 sig];
                v197 = sub_100216224();
                v199 = v198;

                v200 = v203;
                v201 = v203;
                v173(v193, v195, v197, v199, v214, v200, 0);

                sub_100002BF0(v197, v199);
                sub_100002BF0(v193, v195);

                goto LABEL_44;
              }

              v178 = v176;
            }

            else
            {
              v184 = v217;

              v178 = sub_100216154();

              swift_willThrow();
              v173 = v215;
            }

            swift_errorRetain();
            v185 = sub_100216754();
            v186 = sub_100216C74();

            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              v216 = v178;
              v217 = v188;
              *v187 = 136446210;
              swift_errorRetain();
              sub_10001148C(&unk_10029D560, qword_10021D450);
              v189 = sub_100216994();
              v191 = sub_100005FB0(v189, v190, &v217);

              *(v187 + 4) = v191;
              _os_log_impl(&_mh_execute_header, v185, v186, "Error creating voucher using custodian recovery key set: %{public}s", v187, 0xCu);
              sub_100006128(v188);
            }

            swift_errorRetain();
            v173(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v178);

            v105 = v206;
LABEL_43:

            goto LABEL_44;
          }
        }

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v101 = sub_100216774();
        sub_100002648(v101, qword_10029D160);
        v102 = sub_100216754();
        v103 = sub_100216C54();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&_mh_execute_header, v102, v103, "Bad format CRK: recovery string or salt not set", v104, 2u);
        }

        sub_1000561D0();
        v99 = swift_allocError();
        v100 = xmmword_10021DC30;
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v94 = sub_100216774();
        sub_100002648(v94, qword_10029D160);
        v95 = sub_100216754();
        v96 = sub_100216C54();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "Custodian Recovery Key is not trusted", v97, 2u);
        }

        sub_1000561D0();
        v99 = swift_allocError();
        v100 = xmmword_10021DC10;
      }

      *v98 = v100;
      *(v98 + 16) = 13;
      v81(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v99);
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v68 = sub_100216774();
      sub_100002648(v68, qword_10029D160);
      v69 = a5;
      v70 = sub_100216754();
      v71 = sub_100216C54();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v217 = v73;
        *v72 = 136446210;
        v74 = [v69 uuid];
        v75 = sub_100216974();
        v77 = v76;

        v78 = sub_100005FB0(v75, v77, &v217);

        *(v72 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v70, v71, "Unable to find custodian recovery key %{public}s on model", v72, 0xCu);
        sub_100006128(v73);
      }

      sub_1000561D0();
      v79 = swift_allocError();
      *v80 = xmmword_10021DC00;
      *(v80 + 16) = 13;
      v215(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v79);
    }

    v105 = v214;
    goto LABEL_43;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v41 = sub_100216774();
  sub_100002648(v41, qword_10029D160);
  swift_errorRetain();
  v42 = sub_100216754();
  v43 = sub_100216C74();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v216 = a2;
    v217 = v45;
    *v44 = 136446210;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v46 = sub_100216994();
    v48 = sub_100005FB0(v46, v47, &v217);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Don't have my own peer keys; can't establish: %{public}s", v44, 0xCu);
    sub_100006128(v45);
  }

  a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a2);
}

uint64_t sub_100140BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a7)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    if (a7)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v29._countAndFlagsBits = sub_100216994();
      sub_100216A14(v29);

      v20 = 0x203A726F727265;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, 0xE700000000000000, &v28);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v17, v15, "vouchWithReroll complete: %{public}s", v18, 0xCu);
    sub_100006128(v19);

    a5 = v24;
    a6 = v25;
    a4 = v23;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000002BLL, 0x800000010023C7A0);
  return a9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100140E50(char *a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v12 = sub_100216774();
  sub_100002648(v12, qword_10029D160);
  v13 = sub_100216754();
  v14 = sub_100216C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "beginning a vouchWithReroll", v15, 2u);
  }

  v16 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v17 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v17)
  {
    v101 = a2;
    v18 = v17;
    v19 = sub_100216974();
    v21 = v20;

    v22 = [*&a1[v16] egoPeerPermanentInfo];
    if (v22)
    {
      v99 = v19;
      v23 = v22;
      v24 = sub_100216224();
      v100 = v25;

      v26 = [*&a1[v16] egoPeerPermanentInfoSig];
      if (!v26)
      {

        v61 = sub_100216754();
        v62 = sub_100216C54();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "permanentInfoSig does not exist", v63, 2u);
        }

        sub_1000561D0();
        v64 = swift_allocError();
        *v65 = xmmword_100225FD0;
        *(v65 + 16) = 13;
        v101(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v64);

        v66 = v24;
        goto LABEL_37;
      }

      v94 = a4;
      v95 = a5;
      v27 = v26;
      v28 = sub_100216224();
      v30 = v29;

      v31 = [*&a1[v16] egoPeerStableInfo];
      if (v31)
      {
        v32 = v31;
        v97 = sub_100216224();
        v98 = v33;

        v34 = [*&a1[v16] egoPeerStableInfoSig];
        if (v34)
        {
          v91 = a3;
          v35 = v34;
          v92 = sub_100216224();
          v93 = v36;

          v96 = [objc_allocWithZone(TPECPublicKeyFactory) init];

          sub_100012558(v24, v100);
          sub_100012558(v28, v30);
          v89 = sub_100216964();

          isa = sub_100216204().super.isa;
          v38 = sub_100216204().super.isa;
          v39 = [objc_opt_self() permanentInfoWithPeerID:v89 data:isa sig:v38 keyFactory:v96];

          sub_100002BF0(v28, v30);
          sub_100002BF0(v24, v100);

          if (!v39)
          {

            v79 = sub_100216754();
            v80 = sub_100216C54();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&_mh_execute_header, v79, v80, "Invalid permenent info or signature; can't vouch for them", v81, 2u);
            }

            sub_1000561D0();
            v82 = swift_allocError();
            *v83 = xmmword_10021DA80;
            *(v83 + 16) = 13;
            v101(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v82);

            sub_100002BF0(v92, v93);
            v48 = v97;
            v49 = v98;
            goto LABEL_36;
          }

          v90 = v39;
          v40 = objc_allocWithZone(TPPeerStableInfo);
          sub_100012558(v97, v98);
          sub_100012558(v92, v93);
          v41 = sub_100216204().super.isa;
          v42 = sub_100216204().super.isa;
          v43 = [v40 initWithData:v41 sig:v42];

          sub_100002BF0(v92, v93);
          sub_100002BF0(v97, v98);
          if (v43)
          {
            v44 = swift_allocObject();
            v44[2] = v101;
            v44[3] = v91;
            v44[4] = v94;
            v44[5] = v95;
            v44[6] = a6;
            v44[7] = a1;
            v44[8] = v90;
            v44[9] = v43;
            v44[10] = v99;
            v44[11] = v21;
            strcpy(v102, "signing-key ");
            BYTE5(v102[1]) = 0;
            HIWORD(v102[1]) = -5120;

            v45 = a1;
            v46 = v90;
            v47 = v43;
            v104._countAndFlagsBits = v99;
            v104._object = v21;
            sub_100216A14(v104);

            sub_100198E8C(v102[0], v102[1], sub_1001AA574, v44, v99, v21);

            swift_bridgeObjectRelease_n();
            sub_100002BF0(v92, v93);
            v48 = v97;
            v49 = v98;
LABEL_36:
            sub_100002BF0(v48, v49);
            sub_100002BF0(v28, v30);
            v66 = v24;
            goto LABEL_37;
          }

          v84 = sub_100216754();
          v85 = sub_100216C54();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "Invalid stableinfo or signature; van't vouch for them", v86, 2u);
          }

          sub_1000561D0();
          v87 = swift_allocError();
          *v88 = xmmword_10021DC20;
          *(v88 + 16) = 13;
          v101(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v87);

          sub_100002BF0(v92, v93);
          sub_100002BF0(v97, v98);
          v77 = v28;
          v78 = v30;
LABEL_32:
          sub_100002BF0(v77, v78);
          v66 = v24;
LABEL_37:

          return sub_100002BF0(v66, v100);
        }

        v72 = sub_100216754();
        v73 = sub_100216C54();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "stableInfoSig does not exist", v74, 2u);
        }

        sub_1000561D0();
        v75 = swift_allocError();
        *v76 = xmmword_100225FD0;
        *(v76 + 16) = 13;
        v101(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v75);

        sub_100002BF0(v97, v98);
      }

      else
      {

        v67 = sub_100216754();
        v68 = sub_100216C54();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "stableInfo does not exist", v69, 2u);
        }

        sub_1000561D0();
        v70 = swift_allocError();
        *v71 = xmmword_100225FD0;
        *(v71 + 16) = 13;
        v101(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v70);
      }

      v77 = v28;
      v78 = v30;
      goto LABEL_32;
    }

    v55 = sub_100216754();
    v56 = sub_100216C54();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "permanentInfo does not exist", v57, 2u);
    }

    sub_1000561D0();
    v58 = swift_allocError();
    *v59 = xmmword_100225FD0;
    *(v59 + 16) = 13;
    v101(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v58);
  }

  else
  {
    v50 = sub_100216754();
    v51 = sub_100216C54();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "As a nonmember, can't vouch for someone else", v52, 2u);
    }

    sub_1000561D0();
    v53 = swift_allocError();
    *v54 = xmmword_100225FD0;
    *(v54 + 16) = 13;
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v53);
  }
}

uint64_t sub_1001419DC(void *a1, uint64_t a2, uint64_t (*a3)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (a1)
  {
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a7;
    v19[5] = a5;
    v19[6] = a6;
    v19[7] = a8;
    v19[8] = a9;
    v19[9] = a10;
    v19[10] = a11;
    v19[11] = a12;
    v19[12] = a1;
    strcpy(v35, "signing-key ");
    BYTE5(v35[1]) = 0;
    HIWORD(v35[1]) = -5120;
    v20 = a1;

    v21 = a8;
    v22 = a9;
    v23 = a10;

    v37._countAndFlagsBits = a5;
    v37._object = a6;
    sub_100216A14(v37);

    sub_100198E8C(v35[0], v35[1], sub_1001AA58C, v19, a5, a6);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v29 = 136446210;
      v35[2] = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, v35);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Don't have my own peer keys; can't establish: %{public}s", v29, 0xCu);
      sub_100006128(v30);
    }

    return a3(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a2);
  }
}

void sub_100141CEC(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, Swift::Int a11, unint64_t a12, uint64_t a13)
{
  v13 = a3;
  if (!a1)
  {
    v19 = a2;
    if (qword_100297520 == -1)
    {
LABEL_6:
      v31 = sub_100216774();
      sub_100002648(v31, qword_10029D160);
      swift_errorRetain();
      v32 = sub_100216754();
      v33 = sub_100216C74();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v60 = v35;
        *v34 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v36 = sub_100216994();
        v38 = sub_100005FB0(v36, v37, &v60);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Don't have my own peer keys; can't establish: %{public}s", v34, 0xCu);
        sub_100006128(v35);
      }

      (v13)(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v19);
      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v19 = a9;
  v20 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v21 = *(a8 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v22 = a1;
  v13 = sub_10010C8B4(a5, v22, a6, a7, v21);
  v24 = v23;

  v25 = *(a8 + v20);
  v26 = sub_100216964();
  v27 = *&v22[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey];
  v60 = 0;
  v28 = [v25 createVoucherForCandidate:a9 stableInfo:a10 withSponsorID:v26 reason:2 signingKeyPair:v27 error:&v60];

  if (v28)
  {
    v29 = v60;
    sub_1001820D4(a11, a12);
    v30 = [a9 epoch];
    if ((v30 & 0x8000000000000000) == 0)
    {
      v49 = sub_10010BD08(v13, a13, a13, v30);

      v50 = [v28 data];
      v51 = sub_100216224();
      v53 = v52;

      v54 = [v28 sig];
      v55 = sub_100216224();
      v57 = v56;

      v58 = v24;
      (a3)(v51, v53, v55, v57, v49, v24, 0);

      sub_100002BF0(v55, v57);
      sub_100002BF0(v51, v53);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v39 = v60;

  v40 = sub_100216154();

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v41 = sub_100216774();
  sub_100002648(v41, qword_10029D160);
  swift_errorRetain();
  v42 = sub_100216754();
  v43 = sub_100216C74();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v60 = v45;
    *v44 = 136446210;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v46 = sub_100216994();
    v48 = sub_100005FB0(v46, v47, &v60);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Error creating voucher using reroll: %{public}s", v44, 0xCu);
    sub_100006128(v45);
  }

  swift_errorRetain();
  (a3)(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, v40);
}

uint64_t sub_10014227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void))
{
  if (a5)
  {
    v12 = sub_100216C74();
  }

  else
  {
    v12 = sub_100216C54();
  }

  v13 = v12;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v14 = sub_100216774();
  sub_100002648(v14, qword_10029D160);
  swift_errorRetain();
  v15 = sub_100216754();

  if (os_log_type_enabled(v15, v13))
  {
    v21 = a4;
    v22 = a7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    if (a5)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v25._countAndFlagsBits = sub_100216994();
      sub_100216A14(v25);

      v18 = 0x203A726F727265;
    }

    else
    {
      v18 = 0x73736563637573;
    }

    v19 = sub_100005FB0(v18, 0xE700000000000000, &v24);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v13, "vouch complete: %{public}s", v16, 0xCu);
    sub_100006128(v17);

    a7 = v22;
    a4 = v21;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000083, 0x800000010023C900);
  return a7(a1, a2, a3, a4, a5);
}

uint64_t sub_1001424DC(char *a1, void (*a2)(void, unint64_t, void, unint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21)
{
  v25 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v26 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100216974();
    v30 = v29;

    v31 = [*&a1[v25] egoPeerPermanentInfo];
    if (v31)
    {
      v99 = a5;
      v32 = v31;
      v33 = sub_100216224();
      v35 = v34;

      v36 = [*&a1[v25] egoPeerPermanentInfoSig];
      if (v36)
      {
        v97 = a2;
        v98 = a3;
        v37 = v36;
        v38 = v28;
        v39 = sub_100216224();
        v41 = v40;

        v42 = [objc_allocWithZone(TPECPublicKeyFactory) init];

        v43 = v42;
        sub_100012558(v33, v35);
        sub_100012558(v39, v41);
        v91._countAndFlagsBits = v38;
        v44 = sub_100216964();

        isa = sub_100216204().super.isa;
        v100 = v35;
        v46 = sub_100216204().super.isa;
        v94 = objc_opt_self();
        v47 = v30;
        v48 = [v94 permanentInfoWithPeerID:v44 data:isa sig:v46 keyFactory:v43];

        sub_100002BF0(v39, v41);
        sub_100002BF0(v33, v100);

        v96 = v48;
        if (v48)
        {
          v91._object = v47;
          v92 = v41;
          v93 = v33;
          v49 = v43;

          sub_100012558(a6, a7);
          sub_100012558(a8, a9);
          v50 = sub_100216964();

          v51 = sub_100216204().super.isa;
          v52 = sub_100216204().super.isa;
          v53 = [v94 permanentInfoWithPeerID:v50 data:v51 sig:v52 keyFactory:v49];

          v95 = v49;
          sub_100002BF0(a8, a9);

          sub_100002BF0(a6, a7);
          if (v53)
          {
            v54 = v53;
            v55 = objc_allocWithZone(TPPeerStableInfo);
            v56 = sub_100216204().super.isa;
            v57 = sub_100216204().super.isa;
            v58 = [v55 initWithData:v56 sig:v57];

            v59 = v93;
            if (v58)
            {
              v60 = swift_allocObject();
              *(v60 + 16) = a4;
              *(v60 + 24) = v99;
              *(v60 + 32) = v54;
              *(v60 + 40) = v97;
              *(v60 + 48) = v98;
              *(v60 + 56) = a14;
              *(v60 + 64) = a15;
              *(v60 + 72) = a16;
              *(v60 + 80) = a17;
              *(v60 + 88) = a18;
              *(v60 + 96) = a19;
              *(v60 + 104) = a20 & 1;
              *(v60 + 112) = a1;
              *(v60 + 120) = v58;
              *(v60 + 128) = v91;
              *(v60 + 144) = a21;
              *(v60 + 152) = v96;
              strcpy(v105, "signing-key ");
              BYTE5(v105[1]) = 0;
              HIWORD(v105[1]) = -5120;

              v61 = a1;
              v62 = v58;

              v63 = v96;

              v64 = v54;

              sub_100216A14(v91);

              sub_100198E8C(v105[0], v105[1], sub_1001AA6CC, v60, v91._countAndFlagsBits, v91._object);

              swift_bridgeObjectRelease_n();
              sub_100002BF0(v39, v92);
              v65 = v93;
              v66 = v100;
LABEL_29:

              return sub_100002BF0(v65, v66);
            }

            v79 = v100;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v85 = sub_100216774();
            sub_100002648(v85, qword_10029D160);
            v86 = sub_100216754();
            v87 = sub_100216C54();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              *v88 = 0;
              _os_log_impl(&_mh_execute_header, v86, v87, "Invalid stableinfo or signature; van't vouch for them", v88, 2u);
            }

            sub_1000561D0();
            v89 = swift_allocError();
            *v90 = xmmword_10021DC20;
            *(v90 + 16) = 13;
            v97(0, 0xF000000000000000, 0, 0xF000000000000000, v89);

            v83 = v39;
            v84 = v92;
          }

          else
          {

            v59 = v93;
            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v76 = sub_100216774();
            sub_100002648(v76, qword_10029D160);
            v77 = sub_100216754();
            v78 = sub_100216C54();
            v79 = v100;
            if (os_log_type_enabled(v77, v78))
            {
              v80 = swift_slowAlloc();
              *v80 = 0;
              _os_log_impl(&_mh_execute_header, v77, v78, "Invalid permenent info or signature; can't vouch for them", v80, 2u);
            }

            sub_1000561D0();
            v81 = swift_allocError();
            *v82 = xmmword_10021DA80;
            *(v82 + 16) = 13;
            v97(0, 0xF000000000000000, 0, 0xF000000000000000, v81);

            v83 = v39;
            v84 = v41;
          }

          sub_100002BF0(v83, v84);
          v65 = v59;
          v66 = v79;
          goto LABEL_29;
        }

        sub_1000561D0();
        v74 = swift_allocError();
        *v75 = xmmword_10021DA80;
        *(v75 + 16) = 13;
        v97(0, 0xF000000000000000, 0, 0xF000000000000000, v74);

        sub_100002BF0(v39, v41);
        v65 = v33;
        v66 = v100;
        goto LABEL_29;
      }

      sub_100002BF0(v33, v35);
    }
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v67 = sub_100216774();
  sub_100002648(v67, qword_10029D160);
  v68 = sub_100216754();
  v69 = sub_100216C54();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "As a nonmember, can't vouch for someone else", v70, 2u);
  }

  sub_1000561D0();
  v71 = swift_allocError();
  *v72 = xmmword_100225FD0;
  *(v72 + 16) = 13;
  a2(0, 0xF000000000000000, 0, 0xF000000000000000, v71);
}

uint64_t sub_100142E38(void *a1, void *a2, uint64_t a3, unint64_t a4, char *a5, uint64_t (*a6)(void, unint64_t, void, unint64_t, void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v136 = a6;
  v133 = a3;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v27 = *(*(PolicyDocumentsRequest - 8) + 64);
  v29 = __chkstk_darwin(PolicyDocumentsRequest, v28);
  v31 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_100297520 == -1)
    {
LABEL_5:
      v35 = sub_100216774();
      sub_100002648(v35, qword_10029D160);
      swift_errorRetain();
      v36 = a5;

      v37 = sub_100216754();
      v38 = sub_100216C74();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v39 = 136446722;
        *(v39 + 4) = sub_100005FB0(v133, a4, &aBlock);
        *(v39 + 12) = 2114;
        *(v39 + 14) = v36;
        *v40 = v36;
        *(v39 + 22) = 2082;
        v148 = a2;
        swift_errorRetain();
        v41 = v36;
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v42 = sub_100216994();
        v44 = sub_100005FB0(v42, v43, &aBlock);

        *(v39 + 24) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "Don't have my own keys: can't vouch for %{public}s(%{public}@): %{public}s", v39, 0x20u);
        sub_1000114D4(v40, &qword_10029D580, &unk_10021CCC0);

        swift_arrayDestroy();
      }

      return v136(0, 0xF000000000000000, 0, 0xF000000000000000, a2);
    }

LABEL_27:
    swift_once();
    goto LABEL_5;
  }

  v123 = a5;
  v117 = v29;
  v118 = v31;
  v32 = kSecurityRTCEventNameFetchPolicyDocument;
  v124 = a1;
  sub_1001A9F94();
  LODWORD(v134) = v33;
  if (a9)
  {
    v34 = sub_100216964();
  }

  else
  {
    v34 = 0;
  }

  v127 = a8;
  v138 = a9;
  v46 = a13;
  v129 = a2;
  v130 = a7;
  v137 = a11;
  v126 = a10;
  if (a11)
  {
    v47 = sub_100216964();
    v46 = a13;
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v132 = a20;
  v139 = a18;
  v140 = a19;
  v125 = a17;
  v131 = a16;
  v122 = a15;
  v49 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v141 = a4;
  v135 = v46;
  if (v46)
  {
    v50 = sub_100216964();
  }

  else
  {
    v50 = 0;
  }

  v51 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  LOBYTE(v113) = a14 & 1;
  v52 = [v51 initWithKeychainCircleMetrics:0 altDSID:v34 flowID:v48 deviceSessionID:v50 eventName:v32 testsAreEnabled:v134 canSendMetrics:v113 category:v49];
  v121 = v52;

  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100225FB0;
  v54 = v131;
  *(inited + 32) = [v131 bestPolicyVersion];
  v55 = sub_10019C6BC(inited);
  v128 = v55;
  swift_setDeallocating();
  v56 = *(inited + 16);
  swift_arrayDestroy();
  v57 = swift_allocObject();
  *(v57 + 16) = v129;
  *(v57 + 24) = v52;
  v58 = v130;
  *(v57 + 32) = v136;
  *(v57 + 40) = v58;
  v59 = v122;
  v60 = v123;
  *(v57 + 48) = v122;
  *(v57 + 56) = v60;
  v61 = v125;
  *(v57 + 64) = v54;
  *(v57 + 72) = v61;
  v62 = v124;
  *(v57 + 80) = v139;
  *(v57 + 88) = v62;
  v64 = v140;
  v63 = v141;
  *(v57 + 96) = v133;
  *(v57 + 104) = v63;
  v65 = v132;
  *(v57 + 112) = v64;
  *(v57 + 120) = v65;
  v66 = v137;
  *(v57 + 128) = v126;
  *(v57 + 136) = v66;
  v116 = a12;
  *(v57 + 144) = a12;
  v67 = v127;
  *(v57 + 152) = v135;
  *(v57 + 160) = v67;
  *(v57 + 168) = v138;
  v115 = a14 & 1;
  *(v57 + 176) = v115;
  v68 = swift_allocObject();
  v120 = v68;
  *(v68 + 16) = v55;
  v69 = (v68 + 16);
  v134 = swift_allocObject();
  v70 = v62;
  swift_errorRetain();

  v124 = v70;
  v71 = v121;

  v122 = v59;
  v123 = v60;
  v131 = v131;

  v121 = v132;

  swift_errorRetain();
  v119 = v71;

  a5 = v122;
  v123 = v123;
  v132 = v131;

  v131 = v121;

  v72 = sub_100019440(_swiftEmptyArrayStorage);
  v73 = v134;
  *(v134 + 16) = v72;
  a2 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v74 = swift_allocObject();
  a4 = v69;
  v74[2] = v69;
  v74[3] = a5;
  v74[4] = v73 + 16;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1001ACE80;
  *(v75 + 24) = v74;
  v146 = sub_1001ACCC0;
  v147 = v75;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_100109050;
  v145 = &unk_100283A08;
  v76 = _Block_copy(&aBlock);
  v77 = a5;

  v121 = a2;
  [a2 performBlockAndWait:v76];
  _Block_release(v76);
  LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

  if (v76)
  {
    __break(1u);
    goto LABEL_27;
  }

  v80 = *v69;
  if ((*v69 & 0xC000000000000001) != 0)
  {
    if (v80 < 0)
    {
      v81 = *v69;
    }

    v82 = *v69;

    v83 = sub_100216ED4();
  }

  else
  {
    v83 = *(v80 + 16);
  }

  v122 = v74;
  if (v83)
  {
    __chkstk_darwin(v78, v79);
    sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
    v84 = v118;
    sub_100216654();
    v85 = *&v77[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    v136 = *&v77[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    sub_100006484(&v77[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v136);
    v86 = swift_allocObject();
    v86[2] = v77;
    v86[3] = sub_1001AA720;
    v87 = v120;
    v86[4] = v57;
    v86[5] = v87;
    v86[6] = v134;
    v88 = *(v85 + 16);
    v89 = v77;
    v90 = *(v88 + 80);
    v91 = v77;

    v90(v84, sub_1001ACE2C, v86, v136, v88);

    sub_1001AC1E4(v84, type metadata accessor for FetchPolicyDocumentsRequest);

    v92 = v119;
    v93 = v131;
LABEL_25:

    v112 = v124;
  }

  v118 = *(v134 + 16);

  v92 = v119;
  [v119 sendMetricWithResult:1 error:0];
  v94 = swift_allocObject();
  v95 = v123;
  *(v94 + 16) = v77;
  *(v94 + 24) = v95;
  v96 = v125;
  *(v94 + 32) = v132;
  *(v94 + 40) = v96;
  v97 = v77;
  v98 = v124;
  *(v94 + 48) = v139;
  *(v94 + 56) = v98;
  v99 = v141;
  *(v94 + 64) = v133;
  *(v94 + 72) = v99;
  v100 = v137;
  v101 = v130;
  *(v94 + 80) = v136;
  *(v94 + 88) = v101;
  v102 = v131;
  *(v94 + 96) = v140;
  *(v94 + 104) = v102;
  *(v94 + 112) = v126;
  *(v94 + 120) = v100;
  v103 = v135;
  *(v94 + 128) = v116;
  *(v94 + 136) = v103;
  v104 = v138;
  *(v94 + 144) = v127;
  *(v94 + 152) = v104;
  *(v94 + 160) = v115;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1001AA788;
  *(v105 + 24) = v94;
  v146 = sub_1001ACCC0;
  v147 = v105;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_100109050;
  v145 = &unk_100283AA8;
  v106 = _Block_copy(&aBlock);
  v136 = v147;
  v107 = v98;

  v133 = v97;
  v108 = v97;
  v109 = v95;
  v110 = v132;

  v93 = v131;

  v111 = v93;

  [v121 performBlockAndWait:v106];
  _Block_release(v106);
  LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

  if ((v106 & 1) == 0)
  {

    v89 = v133;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_100143C04(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, Swift::Int a7, unint64_t a8, void (*a9)(void, unint64_t, void, unint64_t, uint64_t), uint64_t a10, unint64_t a11, id a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, char a19)
{
  v197 = a9;
  v198 = a10;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v27 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v28);
  v184 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8, v32);
  v193 = &v178 - v33;
  v34 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8, v36);
  v192 = &v178 - v37;
  v38 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8, v40);
  v191 = &v178 - v41;
  v42 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8, v44);
  v190 = &v178 - v45;
  v46 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8, v48);
  v189 = &v178 - v49;
  v188 = type metadata accessor for Metrics(0);
  v180 = *(v188 - 8);
  v50 = *(v180 + 64);
  __chkstk_darwin(v188, v51);
  v194 = &v178 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v54 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v181 = a4;
  v182 = a5;
  v55 = sub_100216964();
  v196 = a6;
  v56 = *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  v204[0] = 0;
  v57 = [v54 createVoucherForCandidate:a2 stableInfo:a3 withSponsorID:v55 reason:4 signingKeyPair:v56 error:v204];

  v195 = v57;
  if (!v57)
  {
    v66 = v204[0];
    v67 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v68 = sub_100216774();
    sub_100002648(v68, qword_10029D160);
    swift_errorRetain();
    v69 = sub_100216754();
    v70 = sub_100216C74();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v204[0] = v72;
      *v71 = 136446210;
      v203 = v67;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v73 = sub_100216994();
      v75 = sub_100005FB0(v73, v74, v204);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "Error creating voucher: %{public}s", v71, 0xCu);
      sub_100006128(v72);
    }

    v76 = v197;
    swift_errorRetain();
    v76(0, 0xF000000000000000, 0, 0xF000000000000000, v67);

    return;
  }

  v58 = a11;
  v59 = v204[0];
  v202 = a7;
  v187 = a8;
  sub_1001820D4(a7, a8);
  v60 = *&a1[v53];
  v204[0] = 0;
  v186 = a2;
  v61 = [v60 getViewsForPeer:a2 stableInfo:a3 error:v204];
  v62 = v204[0];
  if (v61)
  {
    v63 = v61;
    v64 = sub_100216BB4();
    v65 = v62;
  }

  else
  {
    v77 = v204[0];
    v62 = sub_100216154();

    a3 = v62;
    swift_willThrow();

    v64 = 0;
  }

  v185 = 0;
  v204[0] = &_swiftEmptyArrayStorage;
  if (a11 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1002170F4())
  {
    v179 = a1;
    if (i)
    {
      v79 = 0;
      a3 = v58 & 0xC000000000000001;
      v80 = v58 & 0xFFFFFFFFFFFFFF8;
      v201 = v58 & 0xC000000000000001;
      while (1)
      {
        if (a3)
        {
          v84 = sub_100217014();
        }

        else
        {
          if (v79 >= *(v80 + 16))
          {
            goto LABEL_51;
          }

          v84 = *(v58 + 8 * v79 + 32);
        }

        v62 = v84;
        v85 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        if ([v84 newUpload])
        {
        }

        else
        {
          sub_100217044();
          a1 = v64;
          v81 = v80;
          v82 = v58;
          v83 = *(v204[0] + 2);
          sub_100217074();
          v58 = v82;
          v80 = v81;
          v64 = a1;
          sub_100217084();
          sub_100217054();
          a3 = v201;
        }

        ++v79;
        if (v85 == i)
        {
          v86 = v204[0];
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v86 = &_swiftEmptyArrayStorage;
LABEL_25:
    v203 = &_swiftEmptyArrayStorage;
    a1 = v202;
    if ((v86 & 0x8000000000000000) == 0 && (v86 & 0x4000000000000000) == 0)
    {
      v87 = *(v86 + 16);
      v88 = &selRef_signingKey;
      if (!v87)
      {
        break;
      }

      goto LABEL_28;
    }

    v87 = sub_1002170F4();
    v88 = &selRef_signingKey;
    if (!v87)
    {
      break;
    }

LABEL_28:
    v89 = 0;
    v200 = v86 + 32;
    v201 = v86 & 0xC000000000000001;
    a3 = v64 + 56;
    v199 = v86;
    while (1)
    {
      if (v201)
      {
        v90 = sub_100217014();
      }

      else
      {
        if (v89 >= *(v86 + 16))
        {
          goto LABEL_53;
        }

        v90 = *(v200 + 8 * v89);
      }

      a1 = v90;
      if (__OFADD__(v89++, 1))
      {
        break;
      }

      if (v64)
      {
        v92 = v88;
        v93 = [v90 v88[15]];
        v94 = [v93 zoneID];

        v95 = [v94 zoneName];
        v58 = sub_100216974();
        v62 = v96;

        if (*(v64 + 16) && (v97 = *(v64 + 40), sub_100217264(), sub_1002169C4(), v98 = sub_100217284(), v99 = -1 << *(v64 + 32), v100 = v98 & ~v99, ((*(a3 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) != 0))
        {
          v101 = ~v99;
          while (1)
          {
            v102 = (*(v64 + 48) + 16 * v100);
            v103 = *v102 == v58 && v102[1] == v62;
            if (v103 || (sub_1002171A4() & 1) != 0)
            {
              break;
            }

            v100 = (v100 + 1) & v101;
            if (((*(a3 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          sub_100217044();
          v62 = v203[2];
          sub_100217074();
          sub_100217084();
          sub_100217054();
        }

        else
        {
LABEL_45:
        }

        v88 = v92;
        v86 = v199;
      }

      else
      {
      }

      a1 = v202;
      if (v89 == v87)
      {
        v104 = v203;
        goto LABEL_57;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v104 = &_swiftEmptyArrayStorage;
LABEL_57:

  v105 = v187;
  if ((v104 & 0x8000000000000000) != 0 || (v104 & 0x4000000000000000) != 0)
  {
    v106 = sub_1002170F4();
    if (!v106)
    {
      goto LABEL_68;
    }

LABEL_60:
    v204[0] = &_swiftEmptyArrayStorage;
    sub_100217064();
    if ((v106 & 0x8000000000000000) == 0)
    {
      v107 = 0;
      a3 = v104 & 0xC000000000000001;
      do
      {
        if (a3)
        {
          v108 = sub_100217014();
        }

        else
        {
          v108 = *(v104 + 8 * v107 + 32);
        }

        v109 = v108;
        ++v107;
        v110 = [v108 v88[15]];

        sub_100217044();
        v111 = *(v204[0] + 2);
        sub_100217074();
        sub_100217084();
        sub_100217054();
      }

      while (v106 != v107);

      v112 = v204[0];
      goto LABEL_69;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
LABEL_72:
    v115 = sub_100216774();
    sub_100002648(v115, qword_10029D160);

    v116 = v62;
    swift_errorRetain();
    v117 = sub_100216754();
    v118 = sub_100216C74();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v204[0] = swift_slowAlloc();
      *v119 = 136446722;
      *(v119 + 4) = sub_100005FB0(a1, v105, v204);
      *(v119 + 12) = 2114;
      *(v119 + 14) = v116;
      *v120 = v116;
      *(v119 + 22) = 2082;
      v203 = a3;
      v121 = v116;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v122 = sub_100216994();
      v124 = sub_100005FB0(v122, v123, v204);

      *(v119 + 24) = v124;
      _os_log_impl(&_mh_execute_header, v117, v118, "Unable to make TLKShares for beneficiary %{public}s(%{public}@): %{public}s", v119, 0x20u);
      sub_1000114D4(v120, &qword_10029D580, &unk_10021CCC0);

      swift_arrayDestroy();
    }

    swift_errorRetain();
    v197(0, 0xF000000000000000, 0, 0xF000000000000000, a3);

    return;
  }

  v106 = *(v104 + 16);
  if (v106)
  {
    goto LABEL_60;
  }

LABEL_68:

  v112 = &_swiftEmptyArrayStorage;
LABEL_69:
  v113 = [a12 epoch];
  v62 = v186;
  if (v113 < 0)
  {
    __break(1u);
    goto LABEL_92;
  }

  a3 = v185;
  v114 = sub_10010C3CC(v112, v196, v186, v113);
  if (a3)
  {

    if (qword_100297520 == -1)
    {
      goto LABEL_72;
    }

    goto LABEL_93;
  }

  v125 = v114;

  if (v125[2])
  {
    v128 = a18;
    v129 = a16;
    v130 = a14;
    __chkstk_darwin(v126, v127);
    *(&v178 - 4) = a13;
    *(&v178 - 3) = a14;
    v176 = a15;
    v177 = a16;
    sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics);
    sub_100216654();
    v131 = kSecurityRTCEventNameUpdateTrust;
    sub_1001A9F94();
    v133 = v132;
    v201 = v125;
    if (a18)
    {
      v128 = sub_100216964();
    }

    if (a14)
    {
      v130 = sub_100216964();
    }

    v134 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    v202 = 0;
    if (a16)
    {
      v129 = sub_100216964();
    }

    v135 = objc_allocWithZone(AAFAnalyticsEventSecurity);
    LOBYTE(v176) = a19 & 1;
    v136 = [v135 initWithKeychainCircleMetrics:0 altDSID:v128 flowID:v130 deviceSessionID:v129 eventName:v131 testsAreEnabled:v133 canSendMetrics:v176 category:v134];

    v137 = v179;
    v138 = sub_100006484(&v179[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], *&v179[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24]);
    v139 = [*&v137[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] changeToken];
    if (v139)
    {
      v140 = v139;
      v199 = sub_100216974();
      v200 = v141;
    }

    else
    {
      v199 = 0;
      v200 = 0xE000000000000000;
    }

    v155 = v193;
    v156 = v180;
    v157 = type metadata accessor for SignedPeerStableInfo(0);
    v158 = v189;
    (*(*(v157 - 8) + 56))();
    v159 = type metadata accessor for SignedPeerDynamicInfo(0);
    v160 = v190;
    (*(*(v159 - 8) + 56))(v190, 1, 1, v159);
    v161 = type metadata accessor for IdmsTrustedDevicesVersion(0);
    v162 = v191;
    (*(*(v161 - 8) + 56))(v191, 1, 1, v161);
    v163 = v192;
    sub_1001AC0A0(v194, v192, type metadata accessor for Metrics);
    (*(v156 + 56))(v163, 0, 1, v188);
    v164 = type metadata accessor for AccountInfo(0);
    (*(*(v164 - 8) + 56))(v155, 1, 1, v164);
    v165 = swift_allocObject();
    v196 = &v178;
    v166 = v197;
    v167 = v198;
    v165[2] = v136;
    v165[3] = v166;
    v168 = v195;
    v165[4] = v167;
    v165[5] = v168;
    v197 = *v138;
    __chkstk_darwin(v165, v169);
    v170 = v155;
    v171 = v200;
    *(&v178 - 12) = v199;
    *(&v178 - 11) = v171;
    v172 = v182;
    *(&v178 - 10) = v181;
    *(&v178 - 9) = v172;
    *(&v178 - 8) = v158;
    *(&v178 - 7) = v160;
    *(&v178 - 6) = v201;
    *(&v178 - 5) = &_swiftEmptyArrayStorage;
    *(&v178 - 4) = v162;
    *(&v178 - 3) = v163;
    v176 = v170;
    sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
    v173 = v136;

    v174 = v168;
    v175 = v184;
    sub_100216654();

    RetryingCKCodeService.updateTrust(_:completion:)(v175, sub_1001AA7E4, v165);

    sub_1001AC1E4(v175, type metadata accessor for UpdateTrustRequest);
    sub_1001AC1E4(v194, type metadata accessor for Metrics);
    sub_1000114D4(v193, &unk_10029D6F0, &qword_100226B40);
    sub_1000114D4(v192, &qword_100297FE0, &unk_10021E7F0);
    sub_1000114D4(v191, &qword_10029D770, &qword_10021E860);
    sub_1000114D4(v190, &unk_10029D760, &qword_10021E810);
    sub_1000114D4(v189, &qword_1002985A8, &unk_100226650);
  }

  else
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v142 = sub_100216774();
    sub_100002648(v142, qword_10029D160);
    v143 = sub_100216754();
    v144 = sub_100216C54();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v143, v144, "No TLKShares to upload for new peer, returning voucher", v145, 2u);
    }

    v146 = v195;
    v147 = [v195 data];
    v148 = sub_100216224();
    v150 = v149;

    v151 = [v146 sig];
    v152 = sub_100216224();
    v154 = v153;

    v197(v148, v150, v152, v154, 0);
    sub_100002BF0(v152, v154);
    sub_100002BF0(v148, v150);
  }
}

uint64_t sub_100144F68(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t), uint64_t a4, void *a5)
{
  v82 = a2;
  v83 = a5;
  v8 = sub_100216424();
  v85 = *(v8 - 8);
  v9 = *(v85 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v81 = v78 - v15;
  updated = type metadata accessor for UpdateTrustResponse(0);
  v17 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated - 8, v18);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21, v23);
  v25 = (v78 - v24);
  sub_100019C6C(a1, v78 - v24, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v27 = sub_100216774();
    sub_100002648(v27, qword_10029D160);
    swift_errorRetain();
    v28 = sub_100216754();
    v29 = sub_100216C74();

    v30 = a3;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v87 = v26;
      v88 = v32;
      *v31 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, &v88);
      v36 = v82;

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to upload new tlkshares: %{public}s", v31, 0xCu);
      sub_100006128(v32);
    }

    else
    {

      v36 = v82;
    }

    v37 = v83;
    v47 = sub_100216144();
    [v36 sendMetricWithResult:0 error:v47];

    v48 = [v37 data];
    v49 = sub_100216224();
    v51 = v50;

    v52 = [v37 sig];
    v53 = sub_100216224();
    v55 = v54;

    swift_errorRetain();
    v30(v49, v51, v53, v55, v26);

    sub_100002BF0(v53, v55);
    sub_100002BF0(v49, v51);
  }

  else
  {
    sub_1001AC038(v25, v20, type metadata accessor for UpdateTrustResponse);
    v80 = v20;
    v38 = *v20;
    v39 = *(*v20 + 16);
    if (v39)
    {
      v78[1] = a4;
      v79 = a3;
      v88 = &_swiftEmptyArrayStorage;
      sub_100217064();
      v40 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v41 = v85 + 16;
      v85 = *(v85 + 16);
      v86 = v40;
      v42 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
      v84 = *(v41 + 56);
      v43 = v81;
      do
      {
        v44 = v85;
        (v85)(v43, v42, v8);
        v44(v13, v43, v8);
        sub_100216D94();
        (*(v41 - 8))(v43, v8);
        sub_100217044();
        v45 = v88[2];
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v42 += v84;
        --v39;
      }

      while (v39);
      v46 = v79;
    }

    else
    {
      v46 = a3;
    }

    v57 = v82;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v58 = sub_100216774();
    sub_100002648(v58, qword_10029D160);

    v59 = sub_100216754();
    v60 = sub_100216C54();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v88 = v62;
      *v61 = 136446210;
      sub_10001148C(&qword_10029D7E8, &qword_100226610);
      v63 = v57;
      v64 = sub_100216B34();
      v66 = v65;

      v67 = sub_100005FB0(v64, v66, &v88);

      *(v61 + 4) = v67;
      v57 = v63;
      _os_log_impl(&_mh_execute_header, v59, v60, "Uploaded new tlkshares: %{public}s", v61, 0xCu);
      sub_100006128(v62);
    }

    else
    {
    }

    v68 = v83;
    v69 = v80;
    [v57 sendMetricWithResult:1 error:0];
    v70 = [v68 data];
    v71 = sub_100216224();
    v73 = v72;

    v74 = [v68 sig];
    v75 = sub_100216224();
    v77 = v76;

    v46(v71, v73, v75, v77, 0);
    sub_100002BF0(v75, v77);
    sub_100002BF0(v71, v73);
    return sub_1001AC1E4(v69, type metadata accessor for UpdateTrustResponse);
  }
}

uint64_t sub_1001456B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "departByDistrustingSelf complete: %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD00000000000001FLL, 0x800000010023C520);
  return a3(a1);
}

uint64_t sub_1001458DC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100216974();
    v9 = v8;

    sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D600;
    *(inited + 32) = v7;
    v11 = inited + 32;
    *(inited + 40) = v9;
    v12 = sub_100190BF4(inited);
    swift_setDeallocating();
    sub_1000608EC(v11);
    sub_1001464A4(v12, a2, a3);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    v15 = sub_100216754();
    v16 = sub_100216C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No dynamic info for self?", v17, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v18 = xmmword_10021DA90;
    *(v18 + 16) = 13;
    a2();
  }
}

uint64_t sub_100145AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "distrust complete: %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD000000000000018, 0x800000010023C500);
  return a3(a1);
}

void sub_100145D10(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v9 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v9)
  {
    if (qword_100297520 != -1)
    {
LABEL_32:
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029D160);
    v21 = sub_100216754();
    v22 = sub_100216C54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No dynamic info for self?", v23, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v19 = xmmword_10021DA90;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = sub_100216974();
  v13 = v12;

  LOBYTE(v10) = sub_10004C758(v11, v13, a4);

  if (v10)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    v15 = sub_100216754();
    v16 = sub_100216C54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Self-distrust via peerID not allowed", v17, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v19 = xmmword_100225FE0;
LABEL_12:
    *v18 = v19;
    *(v18 + 16) = 13;
    (a2)();

    return;
  }

  v34 = a3;
  v35 = a2;
  v36 = [*(a1 + v8) egoSponsoredBeneficiaryIDs];
  if (!v36)
  {
    v36 = [objc_allocWithZone(NSSet) init];
  }

  v24 = 1 << *(a4 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a4 + 56);
  v27 = (v24 + 63) >> 6;

  a2 = 0;
  while (v26)
  {
LABEL_26:
    v29 = (*(a4 + 48) + ((a2 << 10) | (16 * __clz(__rbit64(v26)))));
    v31 = *v29;
    v30 = v29[1];

    v32 = sub_100216964();
    v33 = [v36 containsObject:v32];

    if (v33)
    {
      sub_1001820F0(v31, v30);
    }

    v26 &= v26 - 1;
  }

  while (1)
  {
    v28 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = *(a4 + 56 + 8 * v28);
    ++a2;
    if (v26)
    {
      a2 = v28;
      goto LABEL_26;
    }
  }

  sub_1001464A4(a4, v35, v34);
}

uint64_t sub_100146108(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v42 = &v40 - v7;
  v8 = sub_100216384();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v44 = &v40 - v15;
  v45 = sub_1002164A4();
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v45, v18);
  v43 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v21 = a2;
  v22 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) idmsTrustedDevicesVersion];
  if (v22)
  {
    v23 = v22;
    v24 = sub_100216974();
    v26 = v25;
  }

  else
  {
    v26 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  v27 = a1[1];

  *a1 = v24;
  a1[1] = v26;
  v28 = [*(v21 + v20) idmsTrustedDeviceListFetchDate];
  v29 = v44;
  if (v28)
  {
    v30 = v41;
    v31 = v28;
    sub_100216344();

    v32 = *(v9 + 32);
    v33 = v42;
    v32(v42, v30, v8);
    (*(v9 + 56))(v33, 0, 1, v8);
    v32(v29, v33, v8);
  }

  else
  {
    v34 = v42;
    (*(v9 + 56))(v42, 1, 1, v8);
    sub_100216324();
    if ((*(v9 + 48))(v34, 1, v8) != 1)
    {
      sub_1000114D4(v34, &qword_10029D778, &qword_1002265C8);
    }
  }

  v35 = v43;
  sub_100216484();
  v36 = *(type metadata accessor for IdmsTrustedDevicesVersion(0) + 24);
  sub_1000114D4(a1 + v36, &qword_10029D780, &qword_1002265D0);
  v37 = v35;
  v38 = v45;
  (*(v16 + 32))(a1 + v36, v37, v45);
  return (*(v16 + 56))(a1 + v36, 0, 1, v38);
}

uint64_t sub_1001464A4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = [*&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100216974();
    v12 = v11;

    strcpy(v20, "signing-key ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    v22._countAndFlagsBits = v10;
    v22._object = v12;
    sub_100216A14(v22);

    v13 = v4;

    sub_10019A168(v20[0], v20[1], a2, a3, v13, v10, v12, a1);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029D160);
    v16 = sub_100216754();
    v17 = sub_100216C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No dynamic info for self?", v18, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    *v19 = xmmword_10021DA90;
    *(v19 + 16) = 13;
    a2();
  }
}

uint64_t sub_1001466F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), id a7)
{
  v92 = a5;
  v93 = a6;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v12 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v13);
  v89 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SignedPeerDynamicInfo(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v86 = a2;
  v87 = a3;
  v90 = sub_100216964();
  v20 = *(a4 + 16);
  v85 = a4;
  if (v20)
  {
    v83 = v15;
    v84 = v19;
    v19 = a1;
    v21 = a7;
    v22 = sub_1001830AC(v20, 0);
    v23 = sub_10018FF74(v95, v22 + 4, v20, a4);
    v24 = v95[2];
    a7 = v95[4];

    sub_10000D778();
    if (v23 != v20)
    {
      __break(1u);
      goto LABEL_19;
    }

    a7 = v21;
    a1 = v19;
    v15 = v83;
    v19 = v84;
  }

  v25.super.isa = sub_100216B14().super.isa;

  v26 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v27 = _swiftEmptySetSingleton;
  if (v26)
  {
    v28 = v26;
    v95[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v95[0])
    {
      v27 = v95[0];
    }
  }

  sub_100108644(v27);

  v29 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;

  v31 = [v29 initWithEntries:isa];

  v95[0] = 0;
  v33 = v90;
  v32 = v91;
  v34 = [v91 calculateDynamicInfoForPeerWithID:v90 addingPeerIDs:0 removingPeerIDs:v25.super.isa preapprovedKeys:0 signingKeyPair:v92 currentMachineIDs:v31 error:v95];

  v35 = v95[0];
  if (v34)
  {
    v90 = 0;
    v91 = a1;
    *v19 = xmmword_10021D470;
    *(v19 + 1) = xmmword_10021D470;
    v36 = *(v15 + 24);
    v22 = v34;
    v24 = v34;
    v37 = v35;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v38 = [v24 data];
    v39 = sub_100216224();
    v41 = v40;

    sub_100002BF0(*v19, *(v19 + 1));
    *v19 = v39;
    *(v19 + 1) = v41;
    v42 = [v24 sig];
    v43 = sub_100216224();
    v45 = v44;

    sub_100002BF0(*(v19 + 2), *(v19 + 3));
    *(v19 + 2) = v43;
    *(v19 + 3) = v45;
    if (qword_100297520 == -1)
    {
LABEL_9:
      v46 = sub_100216774();
      sub_100002648(v46, qword_10029D160);

      v47 = v24;
      v48 = sub_100216754();
      v49 = sub_100216C54();
      v92 = v47;

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v95[0] = v52;
        *v50 = 136446466;
        v53 = sub_100216BC4();
        v55 = a7;
        v56 = sub_100005FB0(v53, v54, v95);

        *(v50 + 4) = v56;
        a7 = v55;
        *(v50 + 12) = 2114;
        *(v50 + 14) = v92;
        *v51 = v22;
        _os_log_impl(&_mh_execute_header, v48, v49, "attempting distrust for %{public}s with: %{public}@", v50, 0x16u);
        sub_1000114D4(v51, &qword_10029D580, &unk_10021CCC0);

        sub_100006128(v52);
      }

      else
      {
      }

      __chkstk_darwin(v57, v58);
      v70 = v91;
      v72 = v86;
      v71 = v87;
      *(&v83 - 4) = v91;
      *(&v83 - 3) = v72;
      v81 = v71;
      v82 = v19;
      sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
      v73 = v89;
      sub_100216654();
      v74 = *&v70[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v75 = *&v70[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v70[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v74);
      v76 = swift_allocObject();
      v77 = v93;
      v76[2] = v70;
      v76[3] = v77;
      v76[4] = a7;
      v78 = *(v75 + 16);
      v79 = *(v78 + 32);
      v80 = v70;

      v79(v73, sub_1001A954C, v76, v74, v78);

      sub_1001AC1E4(v73, type metadata accessor for UpdateTrustRequest);
      return sub_1001AC1E4(v19, type metadata accessor for SignedPeerDynamicInfo);
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  v59 = v95[0];
  v60 = sub_100216154();

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v61 = sub_100216774();
  sub_100002648(v61, qword_10029D160);
  swift_errorRetain();
  v62 = sub_100216754();
  v63 = sub_100216C74();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v95[0] = v65;
    *v64 = 136446210;
    v94 = v60;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v66 = sub_100216994();
    v68 = sub_100005FB0(v66, v67, v95);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "Error preparing dynamic info: %{public}s", v64, 0xCu);
    sub_100006128(v65);
  }

  swift_errorRetain();
  v93(v60);
}