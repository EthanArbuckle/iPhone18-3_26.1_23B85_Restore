uint64_t sub_100451D54()
{

  return _swift_task_switch(sub_100451E7C, 0, 0);
}

uint64_t sub_100451E7C()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1240);
  if (*(v1 + 16) && (v2 != 0) | *(v0 + 426) & 1)
  {
    v3 = *(v0 + 1800);
    v4 = *(v0 + 1592);
    v5 = *(v0 + 1264);
    v6 = *(v0 + 1248);
    v27 = *(v0 + 1256);
    v28 = *(v0 + 1224);
    v29 = *(v0 + 1216);
    v30 = *(v0 + 1232);
    v31 = *(v0 + 1208);
    v7 = sub_100440314(v1);

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_100231CE8(v27, v0 + 944);
    sub_10020A980(v28, v0 + 1080);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v7;
    *(v9 + 40) = v30;
    *(v9 + 48) = v2;
    *(v9 + 56) = v29;
    sub_100231D54((v0 + 944), (v9 + 64));
    *(v9 + 160) = v31;
    sub_1001DFDBC((v0 + 1080), v9 + 168);
    v10 = *(v6 + 32);
    v11 = *(v6 + 16);
    *(v9 + 208) = *v6;
    *(v9 + 224) = v11;
    *(v9 + 240) = v10;

    v12 = v29;
    v13 = &unk_1006AC2C8;
    v14 = v5;
  }

  else
  {

    v3 = *(v0 + 1800);
    v4 = *(v0 + 1592);
    if (!*(v1 + 16))
    {
      goto LABEL_7;
    }

    v15 = *(v0 + 1264);
    v16 = *(v0 + 1256);
    v17 = *(v0 + 1248);
    v18 = *(v0 + 1224);
    v19 = *(v0 + 1216);
    v20 = *(v0 + 1208);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    sub_100231CE8(v16, v0 + 848);
    sub_10020A980(v18, v0 + 1040);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v20;
    sub_100231D54((v0 + 848), (v9 + 40));
    *(v9 + 136) = v19;
    sub_1001DFDBC((v0 + 1040), v9 + 144);
    v22 = *(v17 + 32);
    v23 = *(v17 + 16);
    *(v9 + 184) = *v17;
    *(v9 + 200) = v23;
    *(v9 + 216) = v22;
    v24 = v19;

    v13 = &unk_1006AC2B8;
    v14 = v15;
  }

  sub_1004A673C(0, 0, v14, v13, v9);

LABEL_7:

  sub_1001DFE6C(v4);
  sub_1001DFE6C(v3);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100452314()
{

  v1 = v0[199];
  sub_1004751E8(v0[176], type metadata accessor for Restore);

  sub_1001DFE6C(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100452554(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 208) = a8;
  *(v9 + 216) = v8;
  *(v9 + 192) = a6;
  *(v9 + 200) = a7;
  *(v9 + 176) = a4;
  *(v9 + 184) = a5;
  *(v9 + 756) = a3;
  *(v9 + 160) = a1;
  *(v9 + 168) = a2;
  sub_1001F0C48(&qword_100783C48);
  *(v9 + 224) = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  sub_1001F0C48(&unk_100784390);
  *(v9 + 248) = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  *(v9 + 256) = v10;
  *(v9 + 264) = *(v10 - 8);
  *(v9 + 272) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v9 + 280) = v11;
  *(v9 + 288) = *(v11 - 8);
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v9 + 360) = v12;
  *(v9 + 368) = *(v12 - 8);
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v13 = type metadata accessor for Restore();
  *(v9 + 400) = v13;
  *(v9 + 408) = *(v13 - 8);
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();
  *(v9 + 504) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v9 + 512) = v14;
  *(v9 + 520) = *(v14 - 8);
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_100452A14, 0, 0);
}

uint64_t sub_100452A14()
{
  if (*(*(v0 + 160) + 16))
  {
    v1 = *(v0 + 208);
    v2 = v1[3];
    v3 = *(v0 + 756);
    v4 = sub_100006D8C(v1, v2);
    v5 = swift_task_alloc();
    *(v0 + 624) = v5;
    *v5 = v0;
    v5[1] = sub_100452D7C;
    v6 = *(v0 + 216);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);

    return sub_100466E3C(v10, v3 & 1, v9, v7, v8, v4, v6, v2);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100452D7C(uint64_t a1)
{
  *(*v1 + 632) = a1;

  return _swift_task_switch(sub_100452EA8, 0, 0);
}

uint64_t sub_100452EA8()
{
  v183 = v0;
  v1 = *(v0 + 192);
  static Logger.restore.getter();
  swift_bridgeObjectRetain_n();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 632);
  if (v5)
  {
    v7 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2050;
    v10 = *(v6 + 16);
    v11 = v7;

    *(v8 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ready to install ADP(s) for %{public}ld", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v12 = *(v0 + 632);
  v13 = *(v0 + 616);
  v14 = *(v0 + 520);
  v15 = *(v0 + 512);
  v16 = *(v14 + 8);
  *(v0 + 640) = v16;
  *(v0 + 648) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v15);
  v17 = *(v12 + 16);
  *(v0 + 656) = v17;
  if (!v17)
  {
LABEL_28:

    v99 = *(v0 + 8);

    return v99();
  }

  v18 = 0;
  v19 = *(v0 + 408);
  *(v0 + 744) = *(v19 + 80);
  *(v0 + 664) = *(v19 + 72);
  *(v0 + 748) = enum case for MarketplaceKitError.noSupportedVariant(_:);
  *(v0 + 752) = enum case for MarketplaceKitError.featureUnavailable(_:);
  while (1)
  {
    *(v0 + 672) = v18;
    v26 = *(v0 + 504);
    v27 = *(v0 + 400);
    v28 = *(v0 + 360);
    v29 = *(v0 + 368);
    v30 = *(v0 + 352);
    sub_100007CE8(*(v0 + 632) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 664) * v18, v26, type metadata accessor for Restore);
    sub_100005934(v26 + *(v27 + 68), v30, &unk_1007809F0);
    if ((*(v29 + 48))(v30, 1, v28) == 1)
    {
      v31 = *(v0 + 504);
      v32 = *(v0 + 456);
      v33 = *(v0 + 192);
      sub_1000032A8(*(v0 + 352), &unk_1007809F0);
      static Logger.restore.getter();
      sub_100007CE8(v31, v32, type metadata accessor for Restore);
      v34 = v33;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 456);
      if (v37)
      {
        v39 = *(v0 + 400);
        v40 = *(v0 + 192);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412546;
        *(v41 + 4) = v40;
        *v42 = v40;
        *(v41 + 12) = 2112;
        v43 = *(v38 + *(v39 + 20));
        v44 = v40;
        v45 = v43;
        sub_1004751E8(v38, type metadata accessor for Restore);
        *(v41 + 14) = v45;
        v42[1] = v45;
        _os_log_impl(&_mh_execute_header, v35, v36, "[%@][%@] Did not get an adp URL app", v41, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v38, type metadata accessor for Restore);
      }

      v22 = *(v0 + 504);
      (*(v0 + 640))(*(v0 + 568), *(v0 + 512));
      goto LABEL_9;
    }

    v46 = *(v0 + 504);
    v47 = *(v0 + 400);
    (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 352), *(v0 + 360));
    v48 = (v46 + *(v47 + 48));
    v49 = v48[1];
    if (!v49)
    {
      v70 = *(v0 + 504);
      v71 = *(v0 + 464);
      v72 = *(v0 + 192);
      static Logger.restore.getter();
      sub_100007CE8(v70, v71, type metadata accessor for Restore);
      v73 = v72;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 464);
      if (v76)
      {
        v78 = *(v0 + 400);
        v79 = *(v0 + 192);
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412546;
        *(v80 + 4) = v79;
        *v81 = v79;
        *(v80 + 12) = 2112;
        v82 = *(v77 + *(v78 + 20));
        v83 = v79;
        v84 = v82;
        sub_1004751E8(v77, type metadata accessor for Restore);
        *(v80 + 14) = v84;
        v81[1] = v84;
        _os_log_impl(&_mh_execute_header, v74, v75, "[%@][%@] Failed to find a distributor domain", v80, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v77, type metadata accessor for Restore);
      }

      v20 = *(v0 + 640);
      v21 = *(v0 + 576);
      goto LABEL_8;
    }

    v50 = *(v0 + 504);
    v51 = *(v0 + 400);
    v52 = (v50 + *(v51 + 52));
    v53 = v52[1];
    if (!v53)
    {
      v85 = *(v0 + 472);
      v86 = *(v0 + 192);
      static Logger.restore.getter();
      sub_100007CE8(v50, v85, type metadata accessor for Restore);
      v87 = v86;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      v90 = os_log_type_enabled(v88, v89);
      v91 = *(v0 + 472);
      if (v90)
      {
        v92 = *(v0 + 400);
        v93 = *(v0 + 192);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412546;
        *(v94 + 4) = v93;
        *v95 = v93;
        *(v94 + 12) = 2112;
        v96 = *(v91 + *(v92 + 20));
        v97 = v93;
        v98 = v96;
        sub_1004751E8(v91, type metadata accessor for Restore);
        *(v94 + 14) = v98;
        v95[1] = v98;
        _os_log_impl(&_mh_execute_header, v88, v89, "[%@][%@] Failed to find a distributor domain", v94, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v91, type metadata accessor for Restore);
      }

      v20 = *(v0 + 640);
      v21 = *(v0 + 584);
      goto LABEL_8;
    }

    v54 = (v50 + *(v51 + 56));
    v55 = v54[1];
    if (v55)
    {
      break;
    }

    v56 = *(v0 + 480);
    v57 = *(v0 + 192);
    static Logger.restore.getter();
    sub_100007CE8(v50, v56, type metadata accessor for Restore);
    v58 = v57;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 480);
    if (v61)
    {
      v63 = *(v0 + 400);
      v64 = *(v0 + 192);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412546;
      *(v65 + 4) = v64;
      *v66 = v64;
      *(v65 + 12) = 2112;
      v67 = *(v62 + *(v63 + 20));
      v68 = v64;
      v69 = v67;
      sub_1004751E8(v62, type metadata accessor for Restore);
      *(v65 + 14) = v69;
      v66[1] = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%@][%@] Failed to find an accountID", v65, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v62, type metadata accessor for Restore);
    }

    v20 = *(v0 + 640);
    v21 = *(v0 + 592);
LABEL_8:
    v22 = *(v0 + 504);
    v23 = *(v0 + 392);
    v24 = *(v0 + 360);
    v25 = *(v0 + 368);
    v20(v21, *(v0 + 512));
    (*(v25 + 8))(v23, v24);
LABEL_9:
    sub_1004751E8(v22, type metadata accessor for Restore);
    v18 = *(v0 + 672) + 1;
    if (v18 == *(v0 + 656))
    {
      goto LABEL_28;
    }
  }

  v167 = *v48;
  v101 = *(v0 + 496);
  v102 = *(v0 + 384);
  v175 = *(v0 + 392);
  v177 = *v54;
  v104 = *(v0 + 360);
  v103 = *(v0 + 368);
  v178 = *(v0 + 192);
  v181 = *v52;
  static Logger.restore.getter();
  sub_100007CE8(v50, v101, type metadata accessor for Restore);
  v173 = *(v103 + 16);
  v173(v102, v175, v104);
  v105 = v178;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();

  v179 = v106;
  v108 = os_log_type_enabled(v106, v107);
  v109 = *(v0 + 640);
  v169 = *(v0 + 512);
  v171 = *(v0 + 608);
  v110 = *(v0 + 496);
  if (v108)
  {
    v111 = *(v0 + 400);
    v112 = *(v0 + 368);
    v153 = *(v0 + 360);
    v156 = *(v0 + 384);
    v113 = *(v0 + 192);
    v163 = *(v0 + 640);
    v114 = swift_slowAlloc();
    v159 = v107;
    v115 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v182[0] = v161;
    *v114 = 138412803;
    *(v114 + 4) = v113;
    *v115 = v113;
    *(v114 + 12) = 2112;
    v116 = *(v110 + *(v111 + 20));
    v117 = v113;
    v118 = v116;
    sub_1004751E8(v110, type metadata accessor for Restore);
    *(v114 + 14) = v118;
    v115[1] = v118;
    *(v114 + 22) = 2081;
    sub_100006EA4(&qword_10077EE18, &type metadata accessor for URL);
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v120;
    (*(v112 + 8))(v156, v153);
    v122 = sub_1002346CC(v119, v121, v182);

    *(v114 + 24) = v122;
    _os_log_impl(&_mh_execute_header, v179, v159, "[%@][%@] Ready to install adp %{private}s", v114, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v161);

    v163(v171, v169);
  }

  else
  {
    v123 = *(v0 + 384);
    v125 = *(v0 + 360);
    v124 = *(v0 + 368);

    (*(v124 + 8))(v123, v125);
    sub_1004751E8(v110, type metadata accessor for Restore);
    v109(v171, v169);
  }

  v126 = (*(v0 + 504) + *(*(v0 + 400) + 36));
  if (v181 == *v126 && v53 == v126[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v0 + 40) = &type metadata for WebDistributor;
    v127 = sub_100231E84();
    v128 = v167;
  }

  else
  {
    *(v0 + 40) = &type metadata for NativeDistributor;
    v127 = sub_1003000A4();
    v128 = v181;
    v49 = v53;
  }

  v129 = *(v0 + 504);
  v130 = *(v0 + 400);
  v132 = *(v0 + 368);
  v131 = *(v0 + 376);
  v150 = *(v0 + 360);
  v180 = *(v0 + 344);
  v152 = *(v0 + 336);
  v154 = *(v0 + 392);
  v172 = *(v0 + 328);
  v133 = *(v0 + 264);
  v134 = *(v0 + 272);
  v168 = v134;
  v164 = v131;
  v165 = *(v0 + 256);
  v151 = *(v0 + 208);
  v170 = *(v0 + 756);
  v157 = *(v0 + 168);
  *(v0 + 48) = v127;
  *(v0 + 16) = v128;
  *(v0 + 24) = v49;

  UUID.init()();
  v162 = *(v129 + v130[6]);
  sub_10020A980(v0 + 16, v0 + 56);
  (*(v133 + 16))(v134, v129 + v130[7], v165);
  v135 = (v129 + v130[18]);
  v166 = *v135;
  v160 = v135[1];
  v173(v131, v154, v150);
  (*(v132 + 56))(v180, 1, 1, v150);
  sub_10020A980(v157, v0 + 96);
  v158 = type metadata accessor for ADPInstallConfiguration(0);
  v136 = v129 + v130[16];
  v176 = *v136;
  v174 = *(v136 + 8);
  sub_100005934(v129 + v130[23], v152, &unk_1007809F0);
  v137 = v151[3];
  v155 = v151[8];
  v138 = sub_100006D8C(v151, v137);
  v140 = *(v0 + 80);
  v139 = *(v0 + 88);
  v141 = sub_100231ED8(v0 + 56, v140);
  v142 = *(v140 - 8);
  v143 = swift_task_alloc();
  (*(v142 + 16))(v143, v141, v140);
  v144 = *(v137 - 8);
  v145 = swift_task_alloc();
  (*(v144 + 16))(v145, v138, v137);
  v146 = v162;

  *(v0 + 680) = sub_10038B61C(v172, v146, v143, v168, 0, 0, v166, v160, v177, v55, 0, 0, v164, v180, v0 + 96, 0, 0xF000000000000000, v170, v170 & 1, v176, v174, 0, 1u, v152, 0, v145, v158, v140, v137, v139, v155);

  sub_10000710C(v0 + 56);

  v147 = swift_task_alloc();
  *(v0 + 688) = v147;
  *v147 = v0;
  v147[1] = sub_100454160;
  v148 = *(v0 + 504);
  v149 = *(v0 + 192);

  return sub_100446FE0(v148, v149);
}

uint64_t sub_100454160()
{

  return _swift_task_switch(sub_100454288, 0, 0);
}

uint64_t sub_100454288()
{
  v1 = v0[25];
  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  v0[87] = sub_100400560(v2, v1);
  v3 = swift_task_alloc();
  v0[88] = v3;
  *v3 = v0;
  v3[1] = sub_10045438C;
  v4 = v0[26];

  return sub_1003FF6B0(v4);
}

uint64_t sub_10045438C()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_100455884;
  }

  else
  {
    v2 = sub_1004544CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004544CC()
{
  v194 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v3 = *(v0 + 192);
  static Logger.restore.getter();
  sub_100007CE8(v1, v2, type metadata accessor for Restore);
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 640);
  v9 = *(v0 + 600);
  v191 = *(v0 + 512);
  v10 = *(v0 + 488);
  if (v7)
  {
    v11 = *(v0 + 400);
    v180 = *(v0 + 368);
    v183 = *(v0 + 360);
    v186 = *(v0 + 392);
    v12 = *(v0 + 192);
    v175 = *(v0 + 600);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v170 = v8;
    v15 = swift_slowAlloc();
    v193[0] = v15;
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2082;
    v16 = (v10 + *(v11 + 36));
    v17 = *v16;
    v18 = v16[1];
    v19 = v12;

    sub_1004751E8(v10, type metadata accessor for Restore);
    v20 = sub_1002346CC(v17, v18, v193);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%{public}s] Bootstrap complete", v13, 0x16u);
    sub_1000032A8(v14, &qword_10077F920);

    sub_10000710C(v15);

    v170(v175, v191);
    (*(v180 + 8))(v186, v183);
  }

  else
  {
    v21 = *(v0 + 392);
    v22 = *(v0 + 360);
    v23 = *(v0 + 368);

    sub_1004751E8(v10, type metadata accessor for Restore);
    v8(v9, v191);
    (*(v23 + 8))(v21, v22);
  }

  sub_1004751E8(*(v0 + 504), type metadata accessor for Restore);
  sub_10000710C(v0 + 16);
  v24 = *(v0 + 672) + 1;
  if (v24 == *(v0 + 656))
  {
LABEL_5:

    v25 = *(v0 + 8);

    return v25();
  }

  while (1)
  {
    *(v0 + 672) = v24;
    v33 = *(v0 + 504);
    v34 = *(v0 + 400);
    v35 = *(v0 + 360);
    v36 = *(v0 + 368);
    v37 = *(v0 + 352);
    sub_100007CE8(*(v0 + 632) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 664) * v24, v33, type metadata accessor for Restore);
    sub_100005934(v33 + *(v34 + 68), v37, &unk_1007809F0);
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      v38 = *(v0 + 504);
      v39 = *(v0 + 456);
      v40 = *(v0 + 192);
      sub_1000032A8(*(v0 + 352), &unk_1007809F0);
      static Logger.restore.getter();
      sub_100007CE8(v38, v39, type metadata accessor for Restore);
      v41 = v40;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 456);
      if (v44)
      {
        v46 = *(v0 + 400);
        v47 = *(v0 + 192);
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412546;
        *(v48 + 4) = v47;
        *v49 = v47;
        *(v48 + 12) = 2112;
        v50 = *(v45 + *(v46 + 20));
        v51 = v47;
        v52 = v50;
        sub_1004751E8(v45, type metadata accessor for Restore);
        *(v48 + 14) = v52;
        v49[1] = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%@][%@] Did not get an adp URL app", v48, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v45, type metadata accessor for Restore);
      }

      v29 = *(v0 + 504);
      (*(v0 + 640))(*(v0 + 568), *(v0 + 512));
      goto LABEL_12;
    }

    v53 = *(v0 + 504);
    v54 = *(v0 + 400);
    (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 352), *(v0 + 360));
    v55 = (v53 + *(v54 + 48));
    v56 = v55[1];
    if (!v56)
    {
      v77 = *(v0 + 504);
      v78 = *(v0 + 464);
      v79 = *(v0 + 192);
      static Logger.restore.getter();
      sub_100007CE8(v77, v78, type metadata accessor for Restore);
      v80 = v79;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();

      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 464);
      if (v83)
      {
        v85 = *(v0 + 400);
        v86 = *(v0 + 192);
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v87 = 138412546;
        *(v87 + 4) = v86;
        *v88 = v86;
        *(v87 + 12) = 2112;
        v89 = *(v84 + *(v85 + 20));
        v90 = v86;
        v91 = v89;
        sub_1004751E8(v84, type metadata accessor for Restore);
        *(v87 + 14) = v91;
        v88[1] = v91;
        _os_log_impl(&_mh_execute_header, v81, v82, "[%@][%@] Failed to find a distributor domain", v87, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v84, type metadata accessor for Restore);
      }

      v27 = *(v0 + 640);
      v28 = *(v0 + 576);
      goto LABEL_11;
    }

    v57 = *(v0 + 504);
    v58 = *(v0 + 400);
    v59 = (v57 + *(v58 + 52));
    v60 = v59[1];
    if (!v60)
    {
      v92 = *(v0 + 472);
      v93 = *(v0 + 192);
      static Logger.restore.getter();
      sub_100007CE8(v57, v92, type metadata accessor for Restore);
      v94 = v93;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 472);
      if (v97)
      {
        v99 = *(v0 + 400);
        v100 = *(v0 + 192);
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138412546;
        *(v101 + 4) = v100;
        *v102 = v100;
        *(v101 + 12) = 2112;
        v103 = *(v98 + *(v99 + 20));
        v104 = v100;
        v105 = v103;
        sub_1004751E8(v98, type metadata accessor for Restore);
        *(v101 + 14) = v105;
        v102[1] = v105;
        _os_log_impl(&_mh_execute_header, v95, v96, "[%@][%@] Failed to find a distributor domain", v101, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v98, type metadata accessor for Restore);
      }

      v27 = *(v0 + 640);
      v28 = *(v0 + 584);
      goto LABEL_11;
    }

    v61 = (v57 + *(v58 + 56));
    v62 = v61[1];
    if (v62)
    {
      break;
    }

    v63 = *(v0 + 480);
    v64 = *(v0 + 192);
    static Logger.restore.getter();
    sub_100007CE8(v57, v63, type metadata accessor for Restore);
    v65 = v64;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 480);
    if (v68)
    {
      v70 = *(v0 + 400);
      v71 = *(v0 + 192);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412546;
      *(v72 + 4) = v71;
      *v73 = v71;
      *(v72 + 12) = 2112;
      v74 = *(v69 + *(v70 + 20));
      v75 = v71;
      v76 = v74;
      sub_1004751E8(v69, type metadata accessor for Restore);
      *(v72 + 14) = v76;
      v73[1] = v76;
      _os_log_impl(&_mh_execute_header, v66, v67, "[%@][%@] Failed to find an accountID", v72, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v69, type metadata accessor for Restore);
    }

    v27 = *(v0 + 640);
    v28 = *(v0 + 592);
LABEL_11:
    v29 = *(v0 + 504);
    v30 = *(v0 + 392);
    v31 = *(v0 + 360);
    v32 = *(v0 + 368);
    v27(v28, *(v0 + 512));
    (*(v32 + 8))(v30, v31);
LABEL_12:
    sub_1004751E8(v29, type metadata accessor for Restore);
    v24 = *(v0 + 672) + 1;
    if (v24 == *(v0 + 656))
    {
      goto LABEL_5;
    }
  }

  v173 = *v55;
  v106 = *(v0 + 496);
  v107 = *(v0 + 384);
  v184 = *(v0 + 392);
  v187 = *v61;
  v109 = *(v0 + 360);
  v108 = *(v0 + 368);
  v188 = *(v0 + 192);
  v192 = *v59;
  static Logger.restore.getter();
  sub_100007CE8(v57, v106, type metadata accessor for Restore);
  v181 = *(v108 + 16);
  v181(v107, v184, v109);
  v110 = v188;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  v189 = v111;
  v113 = os_log_type_enabled(v111, v112);
  v114 = *(v0 + 640);
  v176 = *(v0 + 512);
  v178 = *(v0 + 608);
  v115 = *(v0 + 496);
  if (v113)
  {
    v116 = *(v0 + 400);
    v117 = *(v0 + 368);
    v158 = *(v0 + 360);
    v161 = *(v0 + 384);
    v118 = *(v0 + 192);
    v168 = *(v0 + 640);
    v119 = swift_slowAlloc();
    v164 = v112;
    v120 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v193[0] = v166;
    *v119 = 138412803;
    *(v119 + 4) = v118;
    *v120 = v118;
    *(v119 + 12) = 2112;
    v121 = *(v115 + *(v116 + 20));
    v122 = v118;
    v123 = v121;
    sub_1004751E8(v115, type metadata accessor for Restore);
    *(v119 + 14) = v123;
    v120[1] = v123;
    *(v119 + 22) = 2081;
    sub_100006EA4(&qword_10077EE18, &type metadata accessor for URL);
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v126 = v125;
    (*(v117 + 8))(v161, v158);
    v127 = sub_1002346CC(v124, v126, v193);

    *(v119 + 24) = v127;
    _os_log_impl(&_mh_execute_header, v189, v164, "[%@][%@] Ready to install adp %{private}s", v119, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v166);

    v168(v178, v176);
  }

  else
  {
    v128 = *(v0 + 384);
    v130 = *(v0 + 360);
    v129 = *(v0 + 368);

    (*(v129 + 8))(v128, v130);
    sub_1004751E8(v115, type metadata accessor for Restore);
    v114(v178, v176);
  }

  v131 = (*(v0 + 504) + *(*(v0 + 400) + 36));
  if (v192 == *v131 && v60 == v131[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v0 + 40) = &type metadata for WebDistributor;
    v132 = sub_100231E84();
    v133 = v173;
  }

  else
  {
    *(v0 + 40) = &type metadata for NativeDistributor;
    v132 = sub_1003000A4();
    v133 = v192;
    v56 = v60;
  }

  v134 = *(v0 + 504);
  v135 = *(v0 + 400);
  v137 = *(v0 + 368);
  v136 = *(v0 + 376);
  v155 = *(v0 + 360);
  v190 = *(v0 + 344);
  v157 = *(v0 + 336);
  v159 = *(v0 + 392);
  v179 = *(v0 + 328);
  v138 = *(v0 + 264);
  v139 = *(v0 + 272);
  v174 = v139;
  v169 = v136;
  v171 = *(v0 + 256);
  v156 = *(v0 + 208);
  v177 = *(v0 + 756);
  v162 = *(v0 + 168);
  *(v0 + 48) = v132;
  *(v0 + 16) = v133;
  *(v0 + 24) = v56;

  UUID.init()();
  v167 = *(v134 + v135[6]);
  sub_10020A980(v0 + 16, v0 + 56);
  (*(v138 + 16))(v139, v134 + v135[7], v171);
  v140 = (v134 + v135[18]);
  v172 = *v140;
  v165 = v140[1];
  v181(v136, v159, v155);
  (*(v137 + 56))(v190, 1, 1, v155);
  sub_10020A980(v162, v0 + 96);
  v163 = type metadata accessor for ADPInstallConfiguration(0);
  v141 = v134 + v135[16];
  v185 = *v141;
  v182 = *(v141 + 8);
  sub_100005934(v134 + v135[23], v157, &unk_1007809F0);
  v142 = v156[3];
  v160 = v156[8];
  v143 = sub_100006D8C(v156, v142);
  v145 = *(v0 + 80);
  v144 = *(v0 + 88);
  v146 = sub_100231ED8(v0 + 56, v145);
  v147 = *(v145 - 8);
  v148 = swift_task_alloc();
  (*(v147 + 16))(v148, v146, v145);
  v149 = *(v142 - 8);
  v150 = swift_task_alloc();
  (*(v149 + 16))(v150, v143, v142);
  v151 = v167;

  *(v0 + 680) = sub_10038B61C(v179, v151, v148, v174, 0, 0, v172, v165, v187, v62, 0, 0, v169, v190, v0 + 96, 0, 0xF000000000000000, v177, v177 & 1, v185, v182, 0, 1u, v157, 0, v150, v163, v145, v142, v144, v160);

  sub_10000710C(v0 + 56);

  v152 = swift_task_alloc();
  *(v0 + 688) = v152;
  *v152 = v0;
  v152[1] = sub_100454160;
  v153 = *(v0 + 504);
  v154 = *(v0 + 192);

  return sub_100446FE0(v153, v154);
}

uint64_t sub_100455884()
{
  v360 = v0;
  *(v0 + 136) = *(v0 + 712);
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  v1 = type metadata accessor for MarketplaceKitError();
  v2 = swift_dynamicCast();
  v3 = *(v1 - 8);
  v4 = *(v3 + 56);
  if ((v2 & 1) == 0)
  {
    v26 = *(v0 + 248);
    v4(v26, 1, 1, v1);
    sub_1000032A8(v26, &unk_100784390);
    goto LABEL_7;
  }

  v5 = *(v0 + 748);
  v6 = *(v0 + 248);
  v4(v6, 0, 1, v1);
  v7 = (*(v3 + 88))(v6, v1);
  (*(v3 + 8))(v6, v1);
  if (v7 != v5)
  {
LABEL_7:
    *(v0 + 144) = *(v0 + 712);
    swift_errorRetain();
    v27 = type metadata accessor for InternalError();
    if (!swift_dynamicCast())
    {
      v48 = *(v0 + 504);
      v49 = *(v0 + 224);
      (*(*(v0 + 368) + 8))(*(v0 + 392), *(v0 + 360));

      (*(*(v27 - 8) + 56))(v49, 1, 1, v27);
      sub_1004751E8(v48, type metadata accessor for Restore);
      sub_1000032A8(v49, &qword_100783C48);
      goto LABEL_39;
    }

    (*(*(v27 - 8) + 56))(*(v0 + 224), 0, 1, v27);
    if (swift_getEnumCaseMultiPayload() != 24)
    {
      v50 = *(v0 + 504);
      v51 = *(v0 + 224);
      (*(*(v0 + 368) + 8))(*(v0 + 392), *(v0 + 360));

      sub_1004751E8(v50, type metadata accessor for Restore);
      v52 = type metadata accessor for InternalError;
      v53 = v51;
LABEL_38:
      sub_1004751E8(v53, v52);
LABEL_39:
      sub_10000710C(v0 + 16);
      v169 = *(v0 + 672) + 1;
      if (v169 == *(v0 + 656))
      {
LABEL_40:

        v170 = *(v0 + 8);

        return v170();
      }

      while (1)
      {
        *(v0 + 672) = v169;
        v177 = *(v0 + 504);
        v178 = *(v0 + 400);
        v179 = *(v0 + 360);
        v180 = *(v0 + 368);
        v181 = *(v0 + 352);
        sub_100007CE8(*(v0 + 632) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 664) * v169, v177, type metadata accessor for Restore);
        sub_100005934(v177 + *(v178 + 68), v181, &unk_1007809F0);
        if ((*(v180 + 48))(v181, 1, v179) == 1)
        {
          v182 = *(v0 + 504);
          v183 = *(v0 + 456);
          v184 = *(v0 + 192);
          sub_1000032A8(*(v0 + 352), &unk_1007809F0);
          static Logger.restore.getter();
          sub_100007CE8(v182, v183, type metadata accessor for Restore);
          v185 = v184;
          v186 = Logger.logObject.getter();
          v187 = static os_log_type_t.default.getter();

          v188 = os_log_type_enabled(v186, v187);
          v189 = *(v0 + 456);
          if (v188)
          {
            v190 = *(v0 + 400);
            v191 = *(v0 + 192);
            v192 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            *v192 = 138412546;
            *(v192 + 4) = v191;
            *v193 = v191;
            *(v192 + 12) = 2112;
            v194 = *(v189 + *(v190 + 20));
            v195 = v191;
            v196 = v194;
            sub_1004751E8(v189, type metadata accessor for Restore);
            *(v192 + 14) = v196;
            v193[1] = v196;
            _os_log_impl(&_mh_execute_header, v186, v187, "[%@][%@] Did not get an adp URL app", v192, 0x16u);
            sub_1001F0C48(&qword_10077F920);
            swift_arrayDestroy();
          }

          else
          {

            sub_1004751E8(v189, type metadata accessor for Restore);
          }

          v173 = *(v0 + 504);
          (*(v0 + 640))(*(v0 + 568), *(v0 + 512));
        }

        else
        {
          v197 = *(v0 + 504);
          v198 = *(v0 + 400);
          (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 352), *(v0 + 360));
          v199 = (v197 + *(v198 + 48));
          v200 = v199[1];
          if (v200)
          {
            v201 = *(v0 + 504);
            v202 = *(v0 + 400);
            v203 = (v201 + *(v202 + 52));
            v204 = v203[1];
            if (v204)
            {
              v205 = (v201 + *(v202 + 56));
              v206 = v205[1];
              if (v206)
              {
                v327 = *v199;
                v358 = *v203;
                v250 = *(v0 + 496);
                v251 = *(v0 + 384);
                v341 = *(v0 + 392);
                v346 = *v205;
                v253 = *(v0 + 360);
                v252 = *(v0 + 368);
                v350 = *(v0 + 192);
                static Logger.restore.getter();
                sub_100007CE8(v201, v250, type metadata accessor for Restore);
                v338 = *(v252 + 16);
                (v338)(v251, v341, v253);
                v254 = v350;
                v255 = Logger.logObject.getter();
                v256 = static os_log_type_t.default.getter();

                v351 = v255;
                v257 = os_log_type_enabled(v255, v256);
                v258 = *(v0 + 640);
                v330 = *(v0 + 512);
                v335 = *(v0 + 608);
                v259 = *(v0 + 496);
                if (v257)
                {
                  v260 = *(v0 + 400);
                  v261 = *(v0 + 368);
                  v308 = *(v0 + 360);
                  v311 = *(v0 + 384);
                  v262 = *(v0 + 192);
                  v321 = *(v0 + 640);
                  v263 = swift_slowAlloc();
                  v314 = v256;
                  v264 = swift_slowAlloc();
                  v318 = swift_slowAlloc();
                  v359[0] = v318;
                  *v263 = 138412803;
                  *(v263 + 4) = v262;
                  *v264 = v262;
                  *(v263 + 12) = 2112;
                  v265 = *(v259 + *(v260 + 20));
                  v266 = v262;
                  v267 = v265;
                  sub_1004751E8(v259, type metadata accessor for Restore);
                  *(v263 + 14) = v267;
                  v264[1] = v267;
                  *(v263 + 22) = 2081;
                  sub_100006EA4(&qword_10077EE18, &type metadata accessor for URL);
                  v268 = dispatch thunk of CustomStringConvertible.description.getter();
                  v270 = v269;
                  (*(v261 + 8))(v311, v308);
                  v271 = sub_1002346CC(v268, v270, v359);

                  *(v263 + 24) = v271;
                  _os_log_impl(&_mh_execute_header, v351, v314, "[%@][%@] Ready to install adp %{private}s", v263, 0x20u);
                  sub_1001F0C48(&qword_10077F920);
                  swift_arrayDestroy();

                  sub_10000710C(v318);

                  v321(v335, v330);
                }

                else
                {
                  v272 = *(v0 + 384);
                  v274 = *(v0 + 360);
                  v273 = *(v0 + 368);

                  (*(v273 + 8))(v272, v274);
                  sub_1004751E8(v259, type metadata accessor for Restore);
                  v258(v335, v330);
                }

                v275 = (*(v0 + 504) + *(*(v0 + 400) + 36));
                if (v358 == *v275 && v204 == v275[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  *(v0 + 40) = &type metadata for WebDistributor;
                  v276 = sub_100231E84();
                  v277 = v327;
                }

                else
                {
                  *(v0 + 40) = &type metadata for NativeDistributor;
                  v276 = sub_1003000A4();
                  v277 = v358;
                  v200 = v204;
                }

                v278 = *(v0 + 504);
                v279 = *(v0 + 400);
                v281 = *(v0 + 368);
                v280 = *(v0 + 376);
                v352 = *(v0 + 344);
                v309 = *(v0 + 336);
                v312 = *(v0 + 392);
                v336 = *(v0 + 328);
                v282 = *(v0 + 264);
                v283 = *(v0 + 272);
                v324 = v280;
                v328 = v283;
                v305 = *(v0 + 360);
                v306 = *(v0 + 208);
                v331 = *(v0 + 756);
                v315 = *(v0 + 168);
                v319 = *(v0 + 256);
                *(v0 + 48) = v276;
                *(v0 + 16) = v277;
                *(v0 + 24) = v200;

                UUID.init()();
                v322 = *(v278 + v279[6]);
                sub_10020A980(v0 + 16, v0 + 56);
                (*(v282 + 16))(v283, v278 + v279[7], v319);
                v284 = (v278 + v279[18]);
                v355 = *v284;
                v320 = v284[1];
                (v338)(v280, v312, v305);
                (*(v281 + 56))(v352, 1, 1, v305);
                sub_10020A980(v315, v0 + 96);
                v316 = type metadata accessor for ADPInstallConfiguration(0);
                v285 = v278 + v279[16];
                v342 = *v285;
                v339 = *(v285 + 8);
                sub_100005934(v278 + v279[23], v309, &unk_1007809F0);
                v286 = v306[3];
                v313 = v306[8];
                v287 = sub_100006D8C(v306, v286);
                v289 = *(v0 + 80);
                v288 = *(v0 + 88);
                v290 = sub_100231ED8(v0 + 56, v289);
                v291 = *(v289 - 8);
                v292 = swift_task_alloc();
                (*(v291 + 16))(v292, v290, v289);
                v293 = *(v286 - 8);
                v294 = swift_task_alloc();
                (*(v293 + 16))(v294, v287, v286);
                v295 = v322;

                *(v0 + 680) = sub_10038B61C(v336, v295, v292, v328, 0, 0, v355, v320, v346, v206, 0, 0, v324, v352, v0 + 96, 0, 0xF000000000000000, v331, v331 & 1, v342, v339, 0, 1u, v309, 0, v294, v316, v289, v286, v288, v313);

                sub_10000710C(v0 + 56);

                v296 = swift_task_alloc();
                *(v0 + 688) = v296;
                *v296 = v0;
                v296[1] = sub_100454160;
                v297 = *(v0 + 504);
                v298 = *(v0 + 192);

                return sub_100446FE0(v297, v298);
              }

              v207 = *(v0 + 480);
              v208 = *(v0 + 192);
              static Logger.restore.getter();
              sub_100007CE8(v201, v207, type metadata accessor for Restore);
              v209 = v208;
              v210 = Logger.logObject.getter();
              v211 = static os_log_type_t.default.getter();

              v212 = os_log_type_enabled(v210, v211);
              v213 = *(v0 + 480);
              if (v212)
              {
                v214 = *(v0 + 400);
                v215 = *(v0 + 192);
                v216 = swift_slowAlloc();
                v217 = swift_slowAlloc();
                *v216 = 138412546;
                *(v216 + 4) = v215;
                *v217 = v215;
                *(v216 + 12) = 2112;
                v218 = *(v213 + *(v214 + 20));
                v219 = v215;
                v220 = v218;
                sub_1004751E8(v213, type metadata accessor for Restore);
                *(v216 + 14) = v220;
                v217[1] = v220;
                _os_log_impl(&_mh_execute_header, v210, v211, "[%@][%@] Failed to find an accountID", v216, 0x16u);
                sub_1001F0C48(&qword_10077F920);
                swift_arrayDestroy();
              }

              else
              {

                sub_1004751E8(v213, type metadata accessor for Restore);
              }

              v171 = *(v0 + 640);
              v172 = *(v0 + 592);
            }

            else
            {
              v236 = *(v0 + 472);
              v237 = *(v0 + 192);
              static Logger.restore.getter();
              sub_100007CE8(v201, v236, type metadata accessor for Restore);
              v238 = v237;
              v239 = Logger.logObject.getter();
              v240 = static os_log_type_t.default.getter();

              v241 = os_log_type_enabled(v239, v240);
              v242 = *(v0 + 472);
              if (v241)
              {
                v243 = *(v0 + 400);
                v244 = *(v0 + 192);
                v245 = swift_slowAlloc();
                v246 = swift_slowAlloc();
                *v245 = 138412546;
                *(v245 + 4) = v244;
                *v246 = v244;
                *(v245 + 12) = 2112;
                v247 = *(v242 + *(v243 + 20));
                v248 = v244;
                v249 = v247;
                sub_1004751E8(v242, type metadata accessor for Restore);
                *(v245 + 14) = v249;
                v246[1] = v249;
                _os_log_impl(&_mh_execute_header, v239, v240, "[%@][%@] Failed to find a distributor domain", v245, 0x16u);
                sub_1001F0C48(&qword_10077F920);
                swift_arrayDestroy();
              }

              else
              {

                sub_1004751E8(v242, type metadata accessor for Restore);
              }

              v171 = *(v0 + 640);
              v172 = *(v0 + 584);
            }
          }

          else
          {
            v221 = *(v0 + 504);
            v222 = *(v0 + 464);
            v223 = *(v0 + 192);
            static Logger.restore.getter();
            sub_100007CE8(v221, v222, type metadata accessor for Restore);
            v224 = v223;
            v225 = Logger.logObject.getter();
            v226 = static os_log_type_t.default.getter();

            v227 = os_log_type_enabled(v225, v226);
            v228 = *(v0 + 464);
            if (v227)
            {
              v229 = *(v0 + 400);
              v230 = *(v0 + 192);
              v231 = swift_slowAlloc();
              v232 = swift_slowAlloc();
              *v231 = 138412546;
              *(v231 + 4) = v230;
              *v232 = v230;
              *(v231 + 12) = 2112;
              v233 = *(v228 + *(v229 + 20));
              v234 = v230;
              v235 = v233;
              sub_1004751E8(v228, type metadata accessor for Restore);
              *(v231 + 14) = v235;
              v232[1] = v235;
              _os_log_impl(&_mh_execute_header, v225, v226, "[%@][%@] Failed to find a distributor domain", v231, 0x16u);
              sub_1001F0C48(&qword_10077F920);
              swift_arrayDestroy();
            }

            else
            {

              sub_1004751E8(v228, type metadata accessor for Restore);
            }

            v171 = *(v0 + 640);
            v172 = *(v0 + 576);
          }

          v173 = *(v0 + 504);
          v174 = *(v0 + 392);
          v175 = *(v0 + 360);
          v176 = *(v0 + 368);
          v171(v172, *(v0 + 512));
          (*(v176 + 8))(v174, v175);
        }

        sub_1004751E8(v173, type metadata accessor for Restore);
        v169 = *(v0 + 672) + 1;
        if (v169 == *(v0 + 656))
        {
          goto LABEL_40;
        }
      }
    }

    v28 = *(v0 + 504);
    v29 = *(v0 + 400);
    v30 = *(v0 + 280);
    v31 = *(v0 + 288);
    v32 = *(v0 + 232);
    sub_1004751E8(*(v0 + 224), type metadata accessor for InternalError);
    sub_100005934(v28 + *(v29 + 40), v32, &unk_100780A00);
    if ((*(v31 + 48))(v32, 1, v30) != 1)
    {
      v82 = *(v0 + 296);
      (*(*(v0 + 288) + 32))(v82, *(v0 + 232), *(v0 + 280));
      v83 = sub_1005F8634(v82);
      if (v83)
      {
        v84 = v83;
        v85 = *(v0 + 752);
        sub_100006EA4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
        swift_allocError();
        (*(v3 + 104))(v86, v85, v1);
        v87 = _convertErrorToNSError(_:)();

        *(v0 + 152) = 0;
        LOBYTE(v85) = [v84 cancelForReason:v87 client:28 error:v0 + 152];

        v88 = *(v0 + 152);
        if ((v85 & 1) == 0)
        {
          v357 = v84;
          v146 = *(v0 + 504);
          v147 = *(v0 + 416);
          v148 = *(v0 + 192);
          v149 = v88;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static Logger.restore.getter();
          sub_100007CE8(v146, v147, type metadata accessor for Restore);
          v150 = v148;
          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.error.getter();

          v153 = os_log_type_enabled(v151, v152);
          v154 = *(v0 + 416);
          if (v153)
          {
            v155 = *(v0 + 400);
            v156 = *(v0 + 192);
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            *v157 = 138412546;
            *(v157 + 4) = v156;
            *v158 = v156;
            *(v157 + 12) = 2112;
            v159 = *(v154 + *(v155 + 20));
            v160 = v156;
            v161 = v159;
            sub_1004751E8(v154, type metadata accessor for Restore);
            *(v157 + 14) = v161;
            v158[1] = v161;
            _os_log_impl(&_mh_execute_header, v151, v152, "[%@][%@] Unable to cancel existing coordinator.", v157, 0x16u);
            sub_1001F0C48(&qword_10077F920);
            swift_arrayDestroy();
          }

          else
          {

            sub_1004751E8(v154, type metadata accessor for Restore);
          }

          v95 = *(v0 + 504);
          v299 = *(v0 + 392);
          v300 = *(v0 + 360);
          v301 = *(v0 + 368);
          v303 = *(v0 + 288);
          v302 = *(v0 + 296);
          v304 = *(v0 + 280);
          (*(v0 + 640))(*(v0 + 528), *(v0 + 512));
          (*(v303 + 8))(v302, v304);
          (*(v301 + 8))(v299, v300);
          goto LABEL_25;
        }

        v353 = *(v0 + 392);
        v356 = *(v0 + 504);
        v89 = *(v0 + 368);
        v90 = *(v0 + 288);
        v344 = *(v0 + 296);
        v348 = *(v0 + 360);
        v91 = *(v0 + 280);
        v92 = v88;

        (*(v90 + 8))(v344, v91);
        (*(v89 + 8))(v353, v348);
      }

      else
      {
        v356 = *(v0 + 504);
        v140 = *(v0 + 392);
        v141 = *(v0 + 360);
        v142 = *(v0 + 368);
        v143 = *(v0 + 288);
        v144 = *(v0 + 296);
        v145 = *(v0 + 280);

        (*(v143 + 8))(v144, v145);
        (*(v142 + 8))(v140, v141);
      }

      v52 = type metadata accessor for Restore;
      v53 = v356;
      goto LABEL_38;
    }

    v33 = *(v0 + 504);
    v34 = *(v0 + 424);
    v35 = *(v0 + 192);
    sub_1000032A8(*(v0 + 232), &unk_100780A00);
    static Logger.restore.getter();
    sub_100007CE8(v33, v34, type metadata accessor for Restore);
    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 424);
    if (v39)
    {
      v41 = *(v0 + 400);
      v42 = *(v0 + 192);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412546;
      *(v43 + 4) = v42;
      *v44 = v42;
      *(v43 + 12) = 2112;
      v45 = *(v40 + *(v41 + 20));
      v46 = v42;
      v47 = v45;
      sub_1004751E8(v40, type metadata accessor for Restore);
      *(v43 + 14) = v47;
      v44[1] = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%@][%@] Unable to cancel existing coordinator. Restore did not have an associated coordinatorID", v43, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v40, type metadata accessor for Restore);
    }

    v93 = *(v0 + 640);
    v94 = *(v0 + 536);
LABEL_24:
    v95 = *(v0 + 504);
    v96 = *(v0 + 392);
    v97 = *(v0 + 360);
    v98 = *(v0 + 368);
    v93(v94, *(v0 + 512));
    (*(v98 + 8))(v96, v97);
LABEL_25:
    v52 = type metadata accessor for Restore;
    v53 = v95;
    goto LABEL_38;
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  v10 = *(v0 + 240);
  sub_100005934(*(v0 + 504) + *(*(v0 + 400) + 40), v10, &unk_100780A00);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 504);
    v12 = *(v0 + 432);
    v13 = *(v0 + 192);
    sub_1000032A8(*(v0 + 240), &unk_100780A00);
    static Logger.restore.getter();
    sub_100007CE8(v11, v12, type metadata accessor for Restore);
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 432);
    if (v17)
    {
      v19 = *(v0 + 400);
      v20 = *(v0 + 192);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v20;
      *v22 = v20;
      *(v21 + 12) = 2112;
      v23 = *(v18 + *(v19 + 20));
      v24 = v20;
      v25 = v23;
      sub_1004751E8(v18, type metadata accessor for Restore);
      *(v21 + 14) = v25;
      v22[1] = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@][%@] Hard fail failed. Restore did not have an associated coordinatorID", v21, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v18, type metadata accessor for Restore);
    }

    v93 = *(v0 + 640);
    v94 = *(v0 + 544);
    goto LABEL_24;
  }

  v54 = *(v0 + 320);
  (*(*(v0 + 288) + 32))(v54, *(v0 + 240), *(v0 + 280));
  v55 = sub_1005F8634(v54);
  *(v0 + 720) = v55;
  if (!v55)
  {
    v99 = *(v0 + 504);
    v100 = *(v0 + 440);
    v101 = *(v0 + 320);
    v102 = *(v0 + 304);
    v103 = *(v0 + 280);
    v104 = *(v0 + 288);
    v105 = *(v0 + 192);
    static Logger.restore.getter();
    sub_100007CE8(v99, v100, type metadata accessor for Restore);
    (*(v104 + 16))(v102, v101, v103);
    v106 = v105;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    v109 = os_log_type_enabled(v107, v108);
    v354 = *(v0 + 640);
    v345 = *(v0 + 512);
    v349 = *(v0 + 552);
    v110 = *(v0 + 440);
    if (v109)
    {
      v111 = *(v0 + 400);
      v329 = *(v0 + 360);
      v333 = *(v0 + 392);
      v323 = *(v0 + 320);
      v326 = *(v0 + 368);
      v310 = v108;
      v112 = *(v0 + 304);
      v113 = *(v0 + 280);
      v307 = *(v0 + 288);
      v114 = *(v0 + 192);
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v359[0] = v317;
      *v115 = 138412802;
      *(v115 + 4) = v114;
      *v116 = v114;
      *(v115 + 12) = 2112;
      v117 = *(v110 + *(v111 + 20));
      v118 = v114;
      v119 = v117;
      sub_1004751E8(v110, type metadata accessor for Restore);
      *(v115 + 14) = v119;
      v116[1] = v119;
      *(v115 + 22) = 2080;
      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v120 = v112;
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v122;
      v124 = v107;
      v125 = *(v307 + 8);
      v125(v120, v113);
      v126 = sub_1002346CC(v121, v123, v359);

      *(v115 + 24) = v126;
      _os_log_impl(&_mh_execute_header, v124, v310, "[%@][%@] Hard fail failed. Unable to locate coordinator with coordinatorID: %s", v115, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v317);

      v354(v349, v345);
      v125(v323, v113);
      (*(v326 + 8))(v333, v329);
    }

    else
    {
      v334 = *(v0 + 392);
      v162 = *(v0 + 360);
      v163 = *(v0 + 368);
      v164 = *(v0 + 320);
      v165 = *(v0 + 304);
      v167 = *(v0 + 280);
      v166 = *(v0 + 288);

      v168 = *(v166 + 8);
      v168(v165, v167);
      sub_1004751E8(v110, type metadata accessor for Restore);
      v354(v349, v345);
      v168(v164, v167);
      (*(v163 + 8))(v334, v162);
    }

    v53 = *(v0 + 504);
    v52 = type metadata accessor for Restore;
    goto LABEL_38;
  }

  v56 = *(v0 + 504);
  v57 = *(v0 + 448);
  v59 = *(v0 + 312);
  v58 = *(v0 + 320);
  v60 = *(v0 + 280);
  v61 = *(v0 + 288);
  v62 = *(v0 + 192);
  static Logger.restore.getter();
  sub_100007CE8(v56, v57, type metadata accessor for Restore);
  (*(v61 + 16))(v59, v58, v60);
  v63 = v62;
  swift_errorRetain();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v347 = *(v0 + 640);
    v340 = *(v0 + 512);
    v343 = *(v0 + 560);
    v66 = *(v0 + 448);
    v337 = v64;
    v67 = *(v0 + 400);
    v68 = *(v0 + 312);
    v69 = *(v0 + 288);
    v325 = *(v0 + 280);
    v70 = *(v0 + 192);
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v332 = swift_slowAlloc();
    v359[0] = v332;
    *v71 = 138413058;
    *(v71 + 4) = v70;
    *v72 = v70;
    *(v71 + 12) = 2112;
    v73 = *(v66 + *(v67 + 20));
    v74 = v70;
    v75 = v73;
    sub_1004751E8(v66, type metadata accessor for Restore);
    *(v71 + 14) = v75;
    v72[1] = v75;
    *(v71 + 22) = 2080;
    sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v79 = *(v69 + 8);
    v79(v68, v325);
    v80 = sub_1002346CC(v76, v78, v359);

    *(v71 + 24) = v80;
    *(v71 + 32) = 2112;
    swift_errorRetain();
    v81 = _swift_stdlib_bridgeErrorToNSError();
    *(v71 + 34) = v81;
    v72[2] = v81;
    _os_log_impl(&_mh_execute_header, v337, v65, "[%@][%@] Hard failing coordinatorID: %s due to error: %@", v71, 0x2Au);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v332);

    v347(v343, v340);
  }

  else
  {
    v127 = *(v0 + 640);
    v128 = *(v0 + 560);
    v129 = *(v0 + 512);
    v130 = *(v0 + 448);
    v131 = *(v0 + 312);
    v132 = *(v0 + 280);
    v133 = *(v0 + 288);

    v79 = *(v133 + 8);
    v79(v131, v132);
    sub_1004751E8(v130, type metadata accessor for Restore);
    v127(v128, v129);
  }

  *(v0 + 728) = v79;
  v134 = *(*(v0 + 504) + *(*(v0 + 400) + 20));
  v135 = *(v0 + 756);
  v136 = swift_task_alloc();
  *(v0 + 736) = v136;
  *v136 = v0;
  v136[1] = sub_100457D38;
  v137 = *(v0 + 712);
  v138 = *(v0 + 192);

  return sub_100592EB0(v137, v135 & 1, 1, v138, v134);
}

uint64_t sub_100457D38()
{

  return _swift_task_switch(sub_100457E60, 0, 0);
}

uint64_t sub_100457E60()
{
  v173 = v0;
  v1 = *(v0 + 720);
  v166 = *(v0 + 728);
  v170 = *(v0 + 504);
  v2 = *(v0 + 392);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 320);
  v6 = *(v0 + 280);

  v166(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_1004751E8(v170, type metadata accessor for Restore);
  sub_10000710C(v0 + 16);
  v7 = *(v0 + 672) + 1;
  if (v7 == *(v0 + 656))
  {
LABEL_2:

    v8 = *(v0 + 8);

    return v8();
  }

  while (1)
  {
    *(v0 + 672) = v7;
    v16 = *(v0 + 504);
    v17 = *(v0 + 400);
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 352);
    sub_100007CE8(*(v0 + 632) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 664) * v7, v16, type metadata accessor for Restore);
    sub_100005934(v16 + *(v17 + 68), v20, &unk_1007809F0);
    if ((*(v19 + 48))(v20, 1, v18) == 1)
    {
      v21 = *(v0 + 504);
      v22 = *(v0 + 456);
      v23 = *(v0 + 192);
      sub_1000032A8(*(v0 + 352), &unk_1007809F0);
      static Logger.restore.getter();
      sub_100007CE8(v21, v22, type metadata accessor for Restore);
      v24 = v23;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 456);
      if (v27)
      {
        v29 = *(v0 + 400);
        v30 = *(v0 + 192);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412546;
        *(v31 + 4) = v30;
        *v32 = v30;
        *(v31 + 12) = 2112;
        v33 = *(v28 + *(v29 + 20));
        v34 = v30;
        v35 = v33;
        sub_1004751E8(v28, type metadata accessor for Restore);
        *(v31 + 14) = v35;
        v32[1] = v35;
        _os_log_impl(&_mh_execute_header, v25, v26, "[%@][%@] Did not get an adp URL app", v31, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v28, type metadata accessor for Restore);
      }

      v12 = *(v0 + 504);
      (*(v0 + 640))(*(v0 + 568), *(v0 + 512));
      goto LABEL_9;
    }

    v36 = *(v0 + 504);
    v37 = *(v0 + 400);
    (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 352), *(v0 + 360));
    v38 = (v36 + *(v37 + 48));
    v39 = v38[1];
    if (!v39)
    {
      v60 = *(v0 + 504);
      v61 = *(v0 + 464);
      v62 = *(v0 + 192);
      static Logger.restore.getter();
      sub_100007CE8(v60, v61, type metadata accessor for Restore);
      v63 = v62;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 464);
      if (v66)
      {
        v68 = *(v0 + 400);
        v69 = *(v0 + 192);
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412546;
        *(v70 + 4) = v69;
        *v71 = v69;
        *(v70 + 12) = 2112;
        v72 = *(v67 + *(v68 + 20));
        v73 = v69;
        v74 = v72;
        sub_1004751E8(v67, type metadata accessor for Restore);
        *(v70 + 14) = v74;
        v71[1] = v74;
        _os_log_impl(&_mh_execute_header, v64, v65, "[%@][%@] Failed to find a distributor domain", v70, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v67, type metadata accessor for Restore);
      }

      v10 = *(v0 + 640);
      v11 = *(v0 + 576);
      goto LABEL_8;
    }

    v40 = *(v0 + 504);
    v41 = *(v0 + 400);
    v42 = (v40 + *(v41 + 52));
    v43 = v42[1];
    if (!v43)
    {
      v75 = *(v0 + 472);
      v76 = *(v0 + 192);
      static Logger.restore.getter();
      sub_100007CE8(v40, v75, type metadata accessor for Restore);
      v77 = v76;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      v80 = os_log_type_enabled(v78, v79);
      v81 = *(v0 + 472);
      if (v80)
      {
        v82 = *(v0 + 400);
        v83 = *(v0 + 192);
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412546;
        *(v84 + 4) = v83;
        *v85 = v83;
        *(v84 + 12) = 2112;
        v86 = *(v81 + *(v82 + 20));
        v87 = v83;
        v88 = v86;
        sub_1004751E8(v81, type metadata accessor for Restore);
        *(v84 + 14) = v88;
        v85[1] = v88;
        _os_log_impl(&_mh_execute_header, v78, v79, "[%@][%@] Failed to find a distributor domain", v84, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v81, type metadata accessor for Restore);
      }

      v10 = *(v0 + 640);
      v11 = *(v0 + 584);
      goto LABEL_8;
    }

    v44 = (v40 + *(v41 + 56));
    v45 = v44[1];
    if (v45)
    {
      break;
    }

    v46 = *(v0 + 480);
    v47 = *(v0 + 192);
    static Logger.restore.getter();
    sub_100007CE8(v40, v46, type metadata accessor for Restore);
    v48 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 480);
    if (v51)
    {
      v53 = *(v0 + 400);
      v54 = *(v0 + 192);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412546;
      *(v55 + 4) = v54;
      *v56 = v54;
      *(v55 + 12) = 2112;
      v57 = *(v52 + *(v53 + 20));
      v58 = v54;
      v59 = v57;
      sub_1004751E8(v52, type metadata accessor for Restore);
      *(v55 + 14) = v59;
      v56[1] = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%@][%@] Failed to find an accountID", v55, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v52, type metadata accessor for Restore);
    }

    v10 = *(v0 + 640);
    v11 = *(v0 + 592);
LABEL_8:
    v12 = *(v0 + 504);
    v13 = *(v0 + 392);
    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v10(v11, *(v0 + 512));
    (*(v15 + 8))(v13, v14);
LABEL_9:
    sub_1004751E8(v12, type metadata accessor for Restore);
    v7 = *(v0 + 672) + 1;
    if (v7 == *(v0 + 656))
    {
      goto LABEL_2;
    }
  }

  v155 = *v38;
  v89 = *(v0 + 496);
  v90 = *(v0 + 384);
  v163 = *(v0 + 392);
  v165 = *v44;
  v92 = *(v0 + 360);
  v91 = *(v0 + 368);
  v167 = *(v0 + 192);
  v171 = *v42;
  static Logger.restore.getter();
  sub_100007CE8(v40, v89, type metadata accessor for Restore);
  v161 = *(v91 + 16);
  v161(v90, v163, v92);
  v93 = v167;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  v168 = v94;
  v96 = os_log_type_enabled(v94, v95);
  v97 = *(v0 + 640);
  v157 = *(v0 + 512);
  v159 = *(v0 + 608);
  v98 = *(v0 + 496);
  if (v96)
  {
    v99 = *(v0 + 400);
    v100 = *(v0 + 368);
    v141 = *(v0 + 360);
    v144 = *(v0 + 384);
    v101 = *(v0 + 192);
    v151 = *(v0 + 640);
    v102 = swift_slowAlloc();
    v147 = v95;
    v103 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v172[0] = v149;
    *v102 = 138412803;
    *(v102 + 4) = v101;
    *v103 = v101;
    *(v102 + 12) = 2112;
    v104 = *(v98 + *(v99 + 20));
    v105 = v101;
    v106 = v104;
    sub_1004751E8(v98, type metadata accessor for Restore);
    *(v102 + 14) = v106;
    v103[1] = v106;
    *(v102 + 22) = 2081;
    sub_100006EA4(&qword_10077EE18, &type metadata accessor for URL);
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    v109 = v108;
    (*(v100 + 8))(v144, v141);
    v110 = sub_1002346CC(v107, v109, v172);

    *(v102 + 24) = v110;
    _os_log_impl(&_mh_execute_header, v168, v147, "[%@][%@] Ready to install adp %{private}s", v102, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v149);

    v151(v159, v157);
  }

  else
  {
    v111 = *(v0 + 384);
    v113 = *(v0 + 360);
    v112 = *(v0 + 368);

    (*(v112 + 8))(v111, v113);
    sub_1004751E8(v98, type metadata accessor for Restore);
    v97(v159, v157);
  }

  v114 = (*(v0 + 504) + *(*(v0 + 400) + 36));
  if (v171 == *v114 && v43 == v114[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v0 + 40) = &type metadata for WebDistributor;
    v115 = sub_100231E84();
    v116 = v155;
  }

  else
  {
    *(v0 + 40) = &type metadata for NativeDistributor;
    v115 = sub_1003000A4();
    v116 = v171;
    v39 = v43;
  }

  v117 = *(v0 + 504);
  v118 = *(v0 + 400);
  v120 = *(v0 + 368);
  v119 = *(v0 + 376);
  v138 = *(v0 + 360);
  v169 = *(v0 + 344);
  v140 = *(v0 + 336);
  v142 = *(v0 + 392);
  v160 = *(v0 + 328);
  v121 = *(v0 + 264);
  v122 = *(v0 + 272);
  v156 = v122;
  v152 = v119;
  v153 = *(v0 + 256);
  v139 = *(v0 + 208);
  v158 = *(v0 + 756);
  v145 = *(v0 + 168);
  *(v0 + 48) = v115;
  *(v0 + 16) = v116;
  *(v0 + 24) = v39;

  UUID.init()();
  v150 = *(v117 + v118[6]);
  sub_10020A980(v0 + 16, v0 + 56);
  (*(v121 + 16))(v122, v117 + v118[7], v153);
  v123 = (v117 + v118[18]);
  v154 = *v123;
  v148 = v123[1];
  v161(v119, v142, v138);
  (*(v120 + 56))(v169, 1, 1, v138);
  sub_10020A980(v145, v0 + 96);
  v146 = type metadata accessor for ADPInstallConfiguration(0);
  v124 = v117 + v118[16];
  v164 = *v124;
  v162 = *(v124 + 8);
  sub_100005934(v117 + v118[23], v140, &unk_1007809F0);
  v125 = v139[3];
  v143 = v139[8];
  v126 = sub_100006D8C(v139, v125);
  v128 = *(v0 + 80);
  v127 = *(v0 + 88);
  v129 = sub_100231ED8(v0 + 56, v128);
  v130 = *(v128 - 8);
  v131 = swift_task_alloc();
  (*(v130 + 16))(v131, v129, v128);
  v132 = *(v125 - 8);
  v133 = swift_task_alloc();
  (*(v132 + 16))(v133, v126, v125);
  v134 = v150;

  *(v0 + 680) = sub_10038B61C(v160, v134, v131, v156, 0, 0, v154, v148, v165, v45, 0, 0, v152, v169, v0 + 96, 0, 0xF000000000000000, v158, v158 & 1, v164, v162, 0, 1u, v140, 0, v133, v146, v128, v125, v127, v143);

  sub_10000710C(v0 + 56);

  v135 = swift_task_alloc();
  *(v0 + 688) = v135;
  *v135 = v0;
  v135[1] = sub_100454160;
  v136 = *(v0 + 504);
  v137 = *(v0 + 192);

  return sub_100446FE0(v136, v137);
}

uint64_t sub_100459038(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v104 = a4;
  v102 = a3;
  v98 = a2;
  v105 = a5;
  ObjectType = swift_getObjectType();
  v106 = type metadata accessor for Logger();
  v6 = *(v106 - 8);
  v7 = __chkstk_darwin(v106);
  v97 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v93 = &v90 - v10;
  __chkstk_darwin(v9);
  v94 = &v90 - v11;
  v12 = type metadata accessor for AppInstallRequestType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Restore();
  v95 = *(v99 - 8);
  v16 = __chkstk_darwin(v99);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v96 = &v90 - v20;
  v21 = __chkstk_darwin(v19);
  v103 = &v90 - v22;
  __chkstk_darwin(v21);
  v101 = &v90 - v23;
  v24 = type metadata accessor for LogKey.Prefix();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 creatorIdentifier] == 28)
  {
    goto LABEL_2;
  }

  v107[3] = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
  v57 = swift_dynamicCastObjCProtocolConditional();
  if (v57)
  {
    v58 = v57;
    v91 = v18;
    v92 = v6;
    v107[0] = 0;
    v59 = a1;
    v60 = [v58 appAssetPromiseResponsibleClientWithError:v107];
    if (v107[0])
    {
      swift_willThrow();

      v6 = v92;
    }

    else
    {
      v71 = v60;

      v72 = v71 == 28;
      v6 = v92;
      v18 = v91;
      if (v72)
      {
LABEL_2:
        (*(v25 + 104))(v27, enum case for LogKey.Prefix.restore(_:), v24);
        v28 = objc_allocWithZone(ObjectType);
        v29 = LogKey.init(prefix:)();
        (*(v13 + 104))(v15, enum case for AppInstallRequestType.restore(_:), v12);
        v30 = a1;
        v31 = v29;
        v32 = v101;
        sub_1005DDA70(v30, v15, v31, v101);
        v33 = v102;
        if (!v102 || (v34 = (v32 + *(v99 + 56)), (v35 = v34[1]) != 0) && (*v34 == v98 && v35 == v102 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          v36 = v18;
          sub_100007CE8(v32, v103, type metadata accessor for Restore);
          v37 = v104;
          swift_beginAccess();
          v38 = *(v37 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v37 + 16) = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = sub_100363E00(0, v38[2] + 1, 1, v38);
            *(v104 + 16) = v38;
          }

          v40 = v105;
          v41 = v96;
          v43 = v38[2];
          v42 = v38[3];
          if (v43 >= v42 >> 1)
          {
            v38 = sub_100363E00(v42 > 1, v43 + 1, 1, v38);
          }

          v38[2] = v43 + 1;
          sub_1004640D8(v103, v38 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v43);
          *(v104 + 16) = v38;
          swift_endAccess();
          if (v33)
          {
            v44 = v94;
            static Logger.restore.getter();
            sub_100007CE8(v32, v41, type metadata accessor for Restore);
            v45 = v40;

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v105 = v31;
              v51 = v6;
              v52 = v50;
              v107[0] = v50;
              *v48 = 138412802;
              *(v48 + 4) = v45;
              *v49 = v45;
              *(v48 + 12) = 2112;
              v53 = *(v41 + *(v99 + 20));
              v54 = v45;
              v55 = v53;
              sub_1004751E8(v41, type metadata accessor for Restore);
              *(v48 + 14) = v55;
              v49[1] = v55;
              *(v48 + 22) = 2080;
              *(v48 + 24) = sub_1002346CC(v98, v102, v107);
              _os_log_impl(&_mh_execute_header, v46, v47, "[%@][%@] Attempting to to restore matching accountID: %s", v48, 0x20u);
              sub_1001F0C48(&qword_10077F920);
              swift_arrayDestroy();

              sub_10000710C(v52);

              (*(v51 + 8))(v94, v106);
            }

            else
            {

              sub_1004751E8(v41, type metadata accessor for Restore);
              (*(v6 + 8))(v44, v106);
            }

            v56 = v32;
            goto LABEL_29;
          }

          v61 = v6;
          static Logger.restore.getter();
          v62 = v36;
          sub_100007CE8(v32, v36, type metadata accessor for Restore);
          v63 = v40;
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *v66 = 138412546;
            *(v66 + 4) = v63;
            *v67 = v63;
            *(v66 + 12) = 2112;
            v68 = *(v62 + *(v99 + 20));
            v69 = v63;
            v70 = v68;
            sub_1004751E8(v62, type metadata accessor for Restore);
            *(v66 + 14) = v70;
            v67[1] = v70;
            _os_log_impl(&_mh_execute_header, v64, v65, "[%@][%@] Attempting to to restore", v66, 0x16u);
            sub_1001F0C48(&qword_10077F920);
            swift_arrayDestroy();
          }

          else
          {

            sub_1004751E8(v36, type metadata accessor for Restore);
          }

          (*(v61 + 8))(v93, v106);
        }

        else
        {
        }

        v56 = v32;
LABEL_29:
        sub_1004751E8(v56, type metadata accessor for Restore);
        return 1;
      }
    }
  }

  v73 = v97;
  static Logger.restore.getter();
  v74 = a1;
  v75 = v105;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = v6;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v107[0] = v81;
    *v78 = 138412546;
    *(v78 + 4) = v75;
    *v80 = v75;
    *(v78 + 12) = 2082;
    v82 = v75;
    v83 = [v74 identity];
    v84 = [v83 bundleID];

    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    v88 = sub_1002346CC(v85, v87, v107);

    *(v78 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v76, v77, "[%@][%{public}s] Skipping", v78, 0x16u);
    sub_1000032A8(v80, &qword_10077F920);

    sub_10000710C(v81);

    (*(v79 + 8))(v73, v106);
  }

  else
  {

    (*(v6 + 8))(v73, v106);
  }

  return 1;
}

uint64_t sub_100459B44@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a4;
  v7 = sub_1001F0C48(&unk_1007843C0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = sub_100459F44(a2, a3);
  v22 = sub_100563BA8(0, 0, v21, sub_100563B34, 0, v20);

  if (!v22)
  {
    goto LABEL_4;
  }

  sub_100535A10(v22, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_1000032A8(v15, &unk_100780A00);
LABEL_4:
    v23 = sub_1001F0C48(&qword_1007843B8);
    return (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  }

  v34 = *(v17 + 32);
  v34(v19, v15, v16);
  sub_100536898(v22, v12);
  sub_100005934(v12, v10, &unk_1007843C0);
  v25 = type metadata accessor for AppInstallRequestType();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_1000032A8(v10, &unk_1007843C0);
    v27 = 0xE200000000000000;
    v28 = 16718;
  }

  else
  {
    v28 = AppInstallRequestType.rawValue.getter();
    v30 = v29;
    v31 = v25;
    v27 = v30;
    (*(v26 + 8))(v10, v31);
  }

  sub_1000032A8(v12, &unk_1007843C0);
  v32 = v35;
  *v35 = v28;
  v32[1] = v27;
  v33 = sub_1001F0C48(&qword_1007843B8);
  v34(v32 + *(v33 + 48), v19, v16);
  return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
}

void *sub_100459F44(uint64_t a1, uint64_t a2)
{
  v14 = sub_1001F0C48(&unk_10077FDB0);
  v15 = sub_100213FA0(&unk_1007843D0, &unk_10077FDB0);
  LOWORD(v12) = 5;
  *(&v12 + 1) = a1;
  v13 = a2;
  sub_1001F0C48(&unk_10077FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v12, inited + 32);
  v10 = sub_1001F0C48(&unk_1007843E0);
  LOWORD(v9) = 283;
  v11 = sub_100213FA0(&unk_10077FDD0, &unk_1007843E0);
  *(&v9 + 1) = &off_10075A448;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v9, v5 + 32);
  sub_1001F0C48(&unk_1007843F0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_10069F6E0;
  *(v6 + 32) = inited;
  *(v6 + 40) = v5;

  v7 = sub_1005AE994(v6);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077FDE0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_10045A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1136) = v17;
  *(v8 + 1120) = v16;
  *(v8 + 1112) = a8;
  *(v8 + 1104) = a7;
  *(v8 + 1096) = a6;
  *(v8 + 1088) = a5;
  *(v8 + 1080) = a4;
  v9 = type metadata accessor for AppInstallRequestType();
  *(v8 + 1144) = v9;
  *(v8 + 1152) = *(v9 - 8);
  *(v8 + 1160) = swift_task_alloc();
  v10 = type metadata accessor for Restore();
  *(v8 + 1168) = v10;
  *(v8 + 1176) = *(v10 - 8);
  *(v8 + 1184) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 1192) = v11;
  *(v8 + 1200) = *(v11 - 8);
  *(v8 + 1208) = swift_task_alloc();
  v12 = type metadata accessor for LogKey.Prefix();
  *(v8 + 1216) = v12;
  *(v8 + 1224) = *(v12 - 8);
  *(v8 + 1232) = swift_task_alloc();
  sub_1001F0C48(&qword_1007842F8);
  *(v8 + 1240) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v8 + 1248) = v13;
  *(v8 + 1256) = *(v13 - 8);
  *(v8 + 1264) = swift_task_alloc();
  *(v8 + 1272) = swift_task_alloc();
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  *(v8 + 1320) = swift_task_alloc();
  *(v8 + 1328) = swift_task_alloc();
  *(v8 + 1336) = swift_task_alloc();

  return _swift_task_switch(sub_10045A43C, 0, 0);
}

uint64_t sub_10045A43C()
{
  v1 = *(v0 + 1080);
  v2 = *(v1 + 16);
  *(v0 + 1344) = v2;
  if (v2)
  {
    v3 = *(v0 + 1112);
    v4 = *(v0 + 1096);
    *(v0 + 116) = enum case for LogKey.Prefix.restore(_:);
    *(v0 + 220) = enum case for AppInstallRequestType.restore(_:);
    *(v0 + 1360) = _swiftEmptyArrayStorage;
    *(v0 + 1352) = 0;
    v5 = *(v1 + 80);
    v6 = *(v1 + 96);
    v7 = *(v1 + 112);
    *(v0 + 112) = *(v1 + 128);
    *(v0 + 80) = v6;
    *(v0 + 96) = v7;
    *(v0 + 64) = v5;
    v8 = *(v1 + 32);
    v9 = *(v1 + 64);
    *(v0 + 32) = *(v1 + 48);
    *(v0 + 48) = v9;
    *(v0 + 16) = v8;
    v10 = *(v1 + 128);
    v12 = *(v1 + 96);
    v11 = *(v1 + 112);
    *(v0 + 168) = *(v1 + 80);
    *(v0 + 184) = v12;
    *(v0 + 200) = v11;
    *(v0 + 216) = v10;
    v14 = *(v1 + 48);
    v13 = *(v1 + 64);
    *(v0 + 120) = *(v1 + 32);
    *(v0 + 136) = v14;
    *(v0 + 152) = v13;
    v15 = *(v0 + 56);
    *(v0 + 1368) = *(v0 + 48);
    *(v0 + 1376) = v15;
    v16 = v3[3];
    v17 = v3[8];
    v18 = sub_100006D8C(v3, v16);
    if (v4)
    {
      v19 = *(v0 + 1096);
      sub_10046DA84(v0 + 16, v0 + 848);

      v20 = swift_task_alloc();
      *(v0 + 1384) = v20;
      *v20 = v0;
      v20[1] = sub_10045A8D4;
      v21 = *(v0 + 1104);
      v22 = *(v0 + 1088);

      return sub_100510490(v22, v19, v21, v18, v16, v17);
    }

    else
    {
      sub_10046DA84(v0 + 16, v0 + 224);

      v31 = swift_task_alloc();
      *(v0 + 1400) = v31;
      *v31 = v0;
      v31[1] = sub_10045B3D8;
      v32 = *(v0 + 1104);

      return sub_10050DD34(v0 + 16, v32, v18, v16, v17);
    }
  }

  else
  {
    *(v0 + 1392) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v24 = swift_task_alloc();
      *(v0 + 1544) = v24;
      *v24 = v0;
      v24[1] = sub_10045EDD4;
      v25 = *(v0 + 1136);
      v26 = *(v0 + 1128);
      v27 = *(v0 + 1112);
      v28 = *(v0 + 1104);
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1088);

      return sub_100452554(_swiftEmptyArrayStorage, v26, 1, v30, v29, v28, v25, v27);
    }

    else
    {

      v33 = *(v0 + 8);

      return v33();
    }
  }
}

uint64_t sub_10045A8D4(char a1)
{
  *(*v1 + 114) = a1;

  return _swift_task_switch(sub_10045AA00, 0, 0);
}

uint64_t sub_10045AA00()
{
  v85 = v0;
  if (*(v0 + 114))
  {
    *(v0 + 1424) = *(v0 + 64);
    if (*(v0 + 72))
    {
      v1 = *(v0 + 1104);
      static Logger.restore.getter();
      sub_10046DA84(v0 + 16, v0 + 328);

      v2 = v1;
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();

      sub_10046DAE0(v0 + 16);
      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 1376);
      if (v5)
      {
        v7 = *(v0 + 1368);
        v79 = *(v0 + 1256);
        v80 = *(v0 + 1248);
        v82 = *(v0 + 1272);
        v8 = *(v0 + 1104);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v9 = 138412802;
        *(v9 + 4) = v8;
        *v10 = v8;
        *(v9 + 12) = 2080;
        v11 = v8;
        v12 = sub_1002346CC(v7, v6, &v84);

        *(v9 + 14) = v12;
        *(v9 + 22) = 2080;
        v13 = *(v0 + 96);
        *(v0 + 496) = *(v0 + 80);
        *(v0 + 512) = v13;
        *(v0 + 528) = *(v0 + 112);
        v14 = *(v0 + 32);
        *(v0 + 432) = *(v0 + 16);
        *(v0 + 448) = v14;
        v15 = *(v0 + 64);
        *(v0 + 464) = *(v0 + 48);
        *(v0 + 480) = v15;
        v16 = String.init<A>(describing:)();
        v18 = sub_1002346CC(v16, v17, &v84);

        *(v9 + 24) = v18;
        _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%s] Failed to discover marketplace details to restore distributor: %s", v9, 0x20u);
        sub_1000032A8(v10, &qword_10077F920);

        swift_arrayDestroy();

        (*(v79 + 8))(v82, v80);
      }

      else
      {
        v42 = *(v0 + 1272);
        v43 = *(v0 + 1256);
        v44 = *(v0 + 1248);

        sub_10046DAE0(v0 + 16);

        (*(v43 + 8))(v42, v44);
      }

      v45 = *(v0 + 1360);
      v46 = *(v0 + 1352) + 1;
      if (v46 == *(v0 + 1344))
      {
        *(v0 + 1392) = v45;
        if (*(v45 + 16))
        {
          v47 = swift_task_alloc();
          *(v0 + 1544) = v47;
          *v47 = v0;
          v47[1] = sub_10045EDD4;
          v48 = *(v0 + 1136);
          v49 = *(v0 + 1128);
          v50 = *(v0 + 1112);
          v51 = *(v0 + 1104);
          v52 = *(v0 + 1096);
          v53 = *(v0 + 1088);

          return sub_100452554(v45, v49, 1, v53, v52, v51, v48, v50);
        }

        else
        {

          v75 = *(v0 + 8);

          return v75();
        }
      }

      else
      {
        *(v0 + 1360) = v45;
        *(v0 + 1352) = v46;
        v54 = *(v0 + 1112);
        v55 = *(v0 + 1096);
        v56 = *(v0 + 1080) + 104 * v46;
        v58 = *(v56 + 48);
        v57 = *(v56 + 64);
        *(v0 + 16) = *(v56 + 32);
        *(v0 + 32) = v58;
        *(v0 + 48) = v57;
        v60 = *(v56 + 96);
        v59 = *(v56 + 112);
        v61 = *(v56 + 80);
        *(v0 + 112) = *(v56 + 128);
        *(v0 + 80) = v60;
        *(v0 + 96) = v59;
        *(v0 + 64) = v61;
        v62 = *(v56 + 128);
        v64 = *(v56 + 96);
        v63 = *(v56 + 112);
        *(v0 + 168) = *(v56 + 80);
        *(v0 + 184) = v64;
        *(v0 + 200) = v63;
        *(v0 + 216) = v62;
        v66 = *(v56 + 48);
        v65 = *(v56 + 64);
        *(v0 + 120) = *(v56 + 32);
        *(v0 + 136) = v66;
        *(v0 + 152) = v65;
        v67 = *(v0 + 56);
        *(v0 + 1368) = *(v0 + 48);
        *(v0 + 1376) = v67;
        v68 = v54[3];
        v69 = v54[8];
        v70 = sub_100006D8C(v54, v68);
        if (v55)
        {
          v71 = *(v0 + 1096);
          sub_10046DA84(v0 + 16, v0 + 848);

          v72 = swift_task_alloc();
          *(v0 + 1384) = v72;
          *v72 = v0;
          v72[1] = sub_10045A8D4;
          v73 = *(v0 + 1104);
          v74 = *(v0 + 1088);

          return sub_100510490(v74, v71, v73, v70, v68, v69);
        }

        else
        {
          sub_10046DA84(v0 + 16, v0 + 224);

          v76 = swift_task_alloc();
          *(v0 + 1400) = v76;
          *v76 = v0;
          v76[1] = sub_10045B3D8;
          v77 = *(v0 + 1104);

          return sub_10050DD34(v0 + 16, v77, v70, v68, v69);
        }
      }
    }

    else
    {
      v34 = sub_1001F0C48(&qword_100784318);
      v35 = sub_1001F0C48(&qword_100784320);
      v36 = swift_task_alloc();
      *(v0 + 1432) = v36;
      *v36 = v0;
      v36[1] = sub_10045C5E4;
      v37 = *(v0 + 1120);
      v87 = v35;

      return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1056, v34, v35, 0, 0, &unk_1006AC2D8, v37, v34);
    }
  }

  else
  {
    v19 = *(v0 + 1104);
    sub_10046DAE0(v0 + 16);
    static Logger.restore.getter();
    v20 = v19;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 1336);
    v25 = *(v0 + 1256);
    v26 = *(v0 + 1248);
    if (v23)
    {
      v83 = *(v0 + 1336);
      v27 = *(v0 + 1104);
      v28 = *(v0 + 1096);
      v29 = *(v0 + 1088);
      v81 = *(v0 + 1248);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v84 = v32;
      *v30 = 138412546;
      *(v30 + 4) = v27;
      *v31 = v27;
      *(v30 + 12) = 2080;
      v33 = v27;
      *(v30 + 14) = sub_1002346CC(v29, v28, &v84);
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] User opted to not install distributor for bundleID: %s", v30, 0x16u);
      sub_1000032A8(v31, &qword_10077F920);

      sub_10000710C(v32);

      (*(v25 + 8))(v83, v81);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v38 = swift_task_alloc();
    *(v0 + 1408) = v38;
    *v38 = v0;
    v38[1] = sub_10045BEEC;
    v39 = *(v0 + 1104);
    v40 = *(v0 + 1096);
    v41 = *(v0 + 1088);

    return sub_100471080(v41, v40, v39);
  }
}

uint64_t sub_10045B3D8(char a1)
{
  *(*v1 + 115) = a1;

  return _swift_task_switch(sub_10045B504, 0, 0);
}

uint64_t sub_10045B504()
{
  v83 = v0;
  if (*(v0 + 115))
  {
    *(v0 + 1424) = *(v0 + 64);
    if (*(v0 + 72))
    {
      v1 = *(v0 + 1104);
      static Logger.restore.getter();
      sub_10046DA84(v0 + 16, v0 + 328);

      v2 = v1;
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();

      sub_10046DAE0(v0 + 16);
      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 1376);
      if (v5)
      {
        v7 = *(v0 + 1368);
        v77 = *(v0 + 1256);
        v78 = *(v0 + 1248);
        v80 = *(v0 + 1272);
        v8 = *(v0 + 1104);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v9 = 138412802;
        *(v9 + 4) = v8;
        *v10 = v8;
        *(v9 + 12) = 2080;
        v11 = v8;
        v12 = sub_1002346CC(v7, v6, &v82);

        *(v9 + 14) = v12;
        *(v9 + 22) = 2080;
        v13 = *(v0 + 96);
        *(v0 + 496) = *(v0 + 80);
        *(v0 + 512) = v13;
        *(v0 + 528) = *(v0 + 112);
        v14 = *(v0 + 32);
        *(v0 + 432) = *(v0 + 16);
        *(v0 + 448) = v14;
        v15 = *(v0 + 64);
        *(v0 + 464) = *(v0 + 48);
        *(v0 + 480) = v15;
        v16 = String.init<A>(describing:)();
        v18 = sub_1002346CC(v16, v17, &v82);

        *(v9 + 24) = v18;
        _os_log_impl(&_mh_execute_header, v3, v4, "[%@][%s] Failed to discover marketplace details to restore distributor: %s", v9, 0x20u);
        sub_1000032A8(v10, &qword_10077F920);

        swift_arrayDestroy();

        (*(v77 + 8))(v80, v78);
      }

      else
      {
        v40 = *(v0 + 1272);
        v41 = *(v0 + 1256);
        v42 = *(v0 + 1248);

        sub_10046DAE0(v0 + 16);

        (*(v41 + 8))(v40, v42);
      }

      v43 = *(v0 + 1360);
      v44 = *(v0 + 1352) + 1;
      if (v44 == *(v0 + 1344))
      {
        *(v0 + 1392) = v43;
        if (*(v43 + 16))
        {
          v45 = swift_task_alloc();
          *(v0 + 1544) = v45;
          *v45 = v0;
          v45[1] = sub_10045EDD4;
          v46 = *(v0 + 1136);
          v47 = *(v0 + 1128);
          v48 = *(v0 + 1112);
          v49 = *(v0 + 1104);
          v50 = *(v0 + 1096);
          v51 = *(v0 + 1088);

          return sub_100452554(v43, v47, 1, v51, v50, v49, v46, v48);
        }

        else
        {

          v73 = *(v0 + 8);

          return v73();
        }
      }

      else
      {
        *(v0 + 1360) = v43;
        *(v0 + 1352) = v44;
        v52 = *(v0 + 1112);
        v53 = *(v0 + 1096);
        v54 = *(v0 + 1080) + 104 * v44;
        v56 = *(v54 + 48);
        v55 = *(v54 + 64);
        *(v0 + 16) = *(v54 + 32);
        *(v0 + 32) = v56;
        *(v0 + 48) = v55;
        v58 = *(v54 + 96);
        v57 = *(v54 + 112);
        v59 = *(v54 + 80);
        *(v0 + 112) = *(v54 + 128);
        *(v0 + 80) = v58;
        *(v0 + 96) = v57;
        *(v0 + 64) = v59;
        v60 = *(v54 + 128);
        v62 = *(v54 + 96);
        v61 = *(v54 + 112);
        *(v0 + 168) = *(v54 + 80);
        *(v0 + 184) = v62;
        *(v0 + 200) = v61;
        *(v0 + 216) = v60;
        v64 = *(v54 + 48);
        v63 = *(v54 + 64);
        *(v0 + 120) = *(v54 + 32);
        *(v0 + 136) = v64;
        *(v0 + 152) = v63;
        v65 = *(v0 + 56);
        *(v0 + 1368) = *(v0 + 48);
        *(v0 + 1376) = v65;
        v66 = v52[3];
        v67 = v52[8];
        v68 = sub_100006D8C(v52, v66);
        if (v53)
        {
          v69 = *(v0 + 1096);
          sub_10046DA84(v0 + 16, v0 + 848);

          v70 = swift_task_alloc();
          *(v0 + 1384) = v70;
          *v70 = v0;
          v70[1] = sub_10045A8D4;
          v71 = *(v0 + 1104);
          v72 = *(v0 + 1088);

          return sub_100510490(v72, v69, v71, v68, v66, v67);
        }

        else
        {
          sub_10046DA84(v0 + 16, v0 + 224);

          v74 = swift_task_alloc();
          *(v0 + 1400) = v74;
          *v74 = v0;
          v74[1] = sub_10045B3D8;
          v75 = *(v0 + 1104);

          return sub_10050DD34(v0 + 16, v75, v68, v66, v67);
        }
      }
    }

    else
    {
      v31 = sub_1001F0C48(&qword_100784318);
      v32 = sub_1001F0C48(&qword_100784320);
      v33 = swift_task_alloc();
      *(v0 + 1432) = v33;
      *v33 = v0;
      v33[1] = sub_10045C5E4;
      v34 = *(v0 + 1120);
      v85 = v32;

      return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1056, v31, v32, 0, 0, &unk_1006AC2D8, v34, v31);
    }
  }

  else
  {
    v19 = *(v0 + 1104);
    sub_10046DAE0(v0 + 16);
    static Logger.restore.getter();

    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 1376);
      v24 = *(v0 + 1368);
      v25 = *(v0 + 1256);
      v79 = *(v0 + 1248);
      v81 = *(v0 + 1328);
      v26 = *(v0 + 1104);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v82 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v26;
      *v28 = v26;
      *(v27 + 12) = 2080;
      v30 = v26;
      *(v27 + 14) = sub_1002346CC(v24, v23, &v82);
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] User opted to not install distributor: %s", v27, 0x16u);
      sub_1000032A8(v28, &qword_10077F920);

      sub_10000710C(v29);

      (*(v25 + 8))(v81, v79);
    }

    else
    {
      v35 = *(v0 + 1328);
      v36 = *(v0 + 1256);
      v37 = *(v0 + 1248);

      (*(v36 + 8))(v35, v37);
    }

    v38 = swift_task_alloc();
    *(v0 + 1416) = v38;
    *v38 = v0;
    v38[1] = sub_10045C4A0;
    v39 = *(v0 + 1104);

    return sub_100471080(0, 0, v39);
  }
}

uint64_t sub_10045BEEC()
{

  return _swift_task_switch(sub_10045C030, 0, 0);
}

uint64_t sub_10045C030()
{
  v1 = *(v0 + 1352) + 1;
  if (v1 == *(v0 + 1344))
  {
    v2 = *(v0 + 1360);
    *(v0 + 1392) = v2;
    if (*(v2 + 16))
    {
      v3 = swift_task_alloc();
      *(v0 + 1544) = v3;
      *v3 = v0;
      v3[1] = sub_10045EDD4;
      v4 = *(v0 + 1136);
      v5 = *(v0 + 1128);
      v6 = *(v0 + 1112);
      v7 = *(v0 + 1104);
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1088);

      return sub_100452554(v2, v5, 1, v9, v8, v7, v4, v6);
    }

    else
    {

      v32 = *(v0 + 8);

      return v32();
    }
  }

  else
  {
    *(v0 + 1352) = v1;
    v11 = *(v0 + 1112);
    v12 = *(v0 + 1096);
    v13 = *(v0 + 1080) + 104 * v1;
    v15 = *(v13 + 48);
    v14 = *(v13 + 64);
    *(v0 + 16) = *(v13 + 32);
    *(v0 + 32) = v15;
    *(v0 + 48) = v14;
    v17 = *(v13 + 96);
    v16 = *(v13 + 112);
    v18 = *(v13 + 80);
    *(v0 + 112) = *(v13 + 128);
    *(v0 + 80) = v17;
    *(v0 + 96) = v16;
    *(v0 + 64) = v18;
    v19 = *(v13 + 128);
    v21 = *(v13 + 96);
    v20 = *(v13 + 112);
    *(v0 + 168) = *(v13 + 80);
    *(v0 + 184) = v21;
    *(v0 + 200) = v20;
    *(v0 + 216) = v19;
    v23 = *(v13 + 48);
    v22 = *(v13 + 64);
    *(v0 + 120) = *(v13 + 32);
    *(v0 + 136) = v23;
    *(v0 + 152) = v22;
    v24 = *(v0 + 56);
    *(v0 + 1368) = *(v0 + 48);
    *(v0 + 1376) = v24;
    v25 = v11[3];
    v26 = v11[8];
    v27 = sub_100006D8C(v11, v25);
    if (v12)
    {
      v28 = *(v0 + 1096);
      sub_10046DA84(v0 + 16, v0 + 848);

      v29 = swift_task_alloc();
      *(v0 + 1384) = v29;
      *v29 = v0;
      v29[1] = sub_10045A8D4;
      v30 = *(v0 + 1104);
      v31 = *(v0 + 1088);

      return sub_100510490(v31, v28, v30, v27, v25, v26);
    }

    else
    {
      sub_10046DA84(v0 + 16, v0 + 224);

      v33 = swift_task_alloc();
      *(v0 + 1400) = v33;
      *v33 = v0;
      v33[1] = sub_10045B3D8;
      v34 = *(v0 + 1104);

      return sub_10050DD34(v0 + 16, v34, v27, v25, v26);
    }
  }
}

uint64_t sub_10045C4A0()
{

  return _swift_task_switch(sub_100475388, 0, 0);
}

uint64_t sub_10045C5E4()
{

  return _swift_task_switch(sub_10045C70C, 0, 0);
}

uint64_t sub_10045C70C()
{
  v186 = v0;
  v1 = *(v0 + 1056);
  if (*(v1 + 16))
  {
    v2 = sub_10052213C(*(v0 + 1368), *(v0 + 1376));
    if (v3)
    {
      v4 = v2;
      v5 = *(v0 + 1240);
      v6 = *(v0 + 1176);
      v7 = *(v0 + 1168);
      v8 = *(v0 + 1104);
      sub_10046DAE0(v0 + 16);
      sub_100007CE8(*(v1 + 56) + *(v6 + 72) * v4, v5, type metadata accessor for Restore);

      (*(v6 + 56))(v5, 0, 1, v7);
      static Logger.restore.getter();

      v9 = v8;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 1376);
      if (v12)
      {
        v14 = *(v0 + 1368);
        v15 = *(v0 + 1256);
        v177 = *(v0 + 1248);
        v180 = *(v0 + 1280);
        v182 = *(v0 + 1240);
        v16 = *(v0 + 1104);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v185[0] = v19;
        *v17 = 138412546;
        *(v17 + 4) = v16;
        *v18 = v16;
        *(v17 + 12) = 2080;
        v20 = v16;
        v21 = sub_1002346CC(v14, v13, v185);

        *(v17 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v10, v11, "[%@] There is an active installation of distributor: %s", v17, 0x16u);
        sub_1000032A8(v18, &qword_10077F920);

        sub_10000710C(v19);

        (*(v15 + 8))(v180, v177);
        v22 = v182;
      }

      else
      {
        v102 = *(v0 + 1280);
        v103 = *(v0 + 1256);
        v104 = *(v0 + 1248);
        v105 = *(v0 + 1240);

        (*(v103 + 8))(v102, v104);
        v22 = v105;
      }

LABEL_17:
      sub_1000032A8(v22, &qword_1007842F8);
      v106 = *(v0 + 1360);
      v107 = *(v0 + 1352) + 1;
      if (v107 == *(v0 + 1344))
      {
        *(v0 + 1392) = v106;
        if (*(v106 + 16))
        {
          v108 = swift_task_alloc();
          *(v0 + 1544) = v108;
          *v108 = v0;
          v108[1] = sub_10045EDD4;
          v109 = *(v0 + 1136);
          v110 = *(v0 + 1128);
          v111 = *(v0 + 1112);
          v112 = *(v0 + 1104);
          v113 = *(v0 + 1096);
          v114 = *(v0 + 1088);

          return sub_100452554(v106, v110, 1, v114, v113, v112, v109, v111);
        }

        else
        {

          v156 = *(v0 + 8);

          return v156();
        }
      }

      else
      {
        *(v0 + 1360) = v106;
        *(v0 + 1352) = v107;
        v116 = *(v0 + 1112);
        v117 = *(v0 + 1096);
        v118 = *(v0 + 1080) + 104 * v107;
        v120 = *(v118 + 48);
        v119 = *(v118 + 64);
        *(v0 + 16) = *(v118 + 32);
        *(v0 + 32) = v120;
        *(v0 + 48) = v119;
        v122 = *(v118 + 96);
        v121 = *(v118 + 112);
        v123 = *(v118 + 80);
        *(v0 + 112) = *(v118 + 128);
        *(v0 + 80) = v122;
        *(v0 + 96) = v121;
        *(v0 + 64) = v123;
        v124 = *(v118 + 128);
        v126 = *(v118 + 96);
        v125 = *(v118 + 112);
        *(v0 + 168) = *(v118 + 80);
        *(v0 + 184) = v126;
        *(v0 + 200) = v125;
        *(v0 + 216) = v124;
        v128 = *(v118 + 48);
        v127 = *(v118 + 64);
        *(v0 + 120) = *(v118 + 32);
        *(v0 + 136) = v128;
        *(v0 + 152) = v127;
        v129 = *(v0 + 56);
        *(v0 + 1368) = *(v0 + 48);
        *(v0 + 1376) = v129;
        v130 = v116[3];
        v131 = v116[8];
        v132 = sub_100006D8C(v116, v130);
        if (v117)
        {
          v133 = *(v0 + 1096);
          sub_10046DA84(v0 + 16, v0 + 848);

          v134 = swift_task_alloc();
          *(v0 + 1384) = v134;
          *v134 = v0;
          v134[1] = sub_10045A8D4;
          v135 = *(v0 + 1104);
          v136 = *(v0 + 1088);

          return sub_100510490(v136, v133, v135, v132, v130, v131);
        }

        else
        {
          sub_10046DA84(v0 + 16, v0 + 224);

          v157 = swift_task_alloc();
          *(v0 + 1400) = v157;
          *v157 = v0;
          v157[1] = sub_10045B3D8;
          v158 = *(v0 + 1104);

          return sub_10050DD34(v0 + 16, v158, v132, v130, v131);
        }
      }
    }
  }

  v23 = *(v0 + 116);
  v24 = *(v0 + 1240);
  v25 = *(v0 + 1232);
  v26 = *(v0 + 1224);
  v27 = *(v0 + 1216);
  v28 = *(v0 + 1176);
  v29 = *(v0 + 1168);
  v183 = *(v0 + 1104);

  (*(v28 + 56))(v24, 1, 1, v29);
  (*(v26 + 104))(v25, v23, v27);
  v30 = objc_allocWithZone(type metadata accessor for LogKey());
  v31 = LogKey.init(prefix:)();
  *(v0 + 1440) = v31;
  static Logger.restore.getter();
  v32 = v183;
  v33 = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 1104);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412546;
    *(v37 + 4) = v36;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v33;
    *v38 = v36;
    v38[1] = v33;
    v39 = v36;
    v40 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%@][%@] Installing distributor app", v37, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v41 = *(v0 + 1320);
  v42 = *(v0 + 1256);
  v43 = *(v0 + 1248);

  v44 = *(v42 + 8);
  v45 = *(v0 + 40);
  v184 = *(v0 + 32);
  *(v0 + 1448) = v184;
  *(v0 + 1456) = v45;
  *(v0 + 1464) = v44;
  *(v0 + 1472) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v41, v43);
  *(v0 + 113) = 0;
  v46 = objc_allocWithZone(IXApplicationIdentity);

  v47 = String._bridgeToObjectiveC()();
  v48 = [v46 initWithBundleID:v47];

  v49 = objc_opt_self();
  *(v0 + 1064) = 0;
  v50 = [v49 coordinatorForAppWithIdentity:v48 withClientID:28 createIfNotExisting:1 created:v0 + 113 error:v0 + 1064];
  *(v0 + 1480) = v50;
  v51 = *(v0 + 1064);
  if (!v50)
  {
    v71 = v51;

    sub_10046DAE0(v0 + 16);

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v72 = *(v0 + 1440);
    static Logger.restore.getter();
    v73 = v72;
    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 1440);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412546;
      *(v77 + 4) = v76;
      *v78 = v76;
      *(v77 + 12) = 2112;
      v79 = v76;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 14) = v80;
      v78[1] = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "[%@] Failed to install distributor due to error: %@", v77, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v81 = *(v0 + 1464);
    v82 = *(v0 + 1440);
    v83 = *(v0 + 1264);
    v84 = *(v0 + 1248);
    v85 = *(v0 + 1240);

    v81(v83, v84);
    v22 = v85;
    goto LABEL_17;
  }

  v52 = v50;
  v181 = v44;
  v176 = v45;
  v53 = v51;

  v54 = *(v0 + 1104);
  if (*(v0 + 113))
  {
    v178 = v33;
    static Logger.restore.getter();

    v55 = v54;
    v56 = v52;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v162 = *(v0 + 1368);
      v164 = *(v0 + 1376);
      v172 = *(v0 + 1248);
      v174 = *(v0 + 1312);
      v170 = v58;
      v59 = *(v0 + 1208);
      v60 = *(v0 + 1200);
      v166 = *(v0 + 1192);
      v61 = *(v0 + 1104);
      v62 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v185[0] = swift_slowAlloc();
      *v62 = 138412802;
      *(v62 + 4) = v61;
      *v168 = v61;
      *(v62 + 12) = 2080;
      v63 = v61;
      *(v62 + 14) = sub_1002346CC(v162, v164, v185);
      *(v62 + 22) = 2080;
      v64 = [v56 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v60 + 8))(v59, v166);
      v68 = sub_1002346CC(v65, v67, v185);

      *(v62 + 24) = v68;
      _os_log_impl(&_mh_execute_header, v57, v170, "[%@] Created marketplace coordinator for distributor: %s coordinatorID: %s", v62, 0x20u);
      sub_1000032A8(v168, &qword_10077F920);

      swift_arrayDestroy();

      v70 = v172;
      v69 = v174;
    }

    else
    {
      v137 = *(v0 + 1312);
      v138 = *(v0 + 1248);

      v69 = v137;
      v70 = v138;
    }

    v181(v69, v70);
    v33 = v178;
  }

  else
  {
    static Logger.restore.getter();

    v86 = v54;
    v87 = v52;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v163 = *(v0 + 1368);
      v165 = *(v0 + 1376);
      v173 = *(v0 + 1248);
      v175 = *(v0 + 1304);
      v171 = v89;
      v90 = *(v0 + 1208);
      v91 = *(v0 + 1200);
      v167 = *(v0 + 1192);
      v92 = *(v0 + 1104);
      v179 = v33;
      v93 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v185[0] = swift_slowAlloc();
      *v93 = 138412802;
      *(v93 + 4) = v92;
      *v169 = v92;
      *(v93 + 12) = 2080;
      v94 = v92;
      *(v93 + 14) = sub_1002346CC(v163, v165, v185);
      *(v93 + 22) = 2080;
      v95 = [v87 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      (*(v91 + 8))(v90, v167);
      v99 = sub_1002346CC(v96, v98, v185);

      *(v93 + 24) = v99;
      _os_log_impl(&_mh_execute_header, v88, v171, "[%@] Using existing marketplace coordinator for distributor: %s coordinatorID: %s", v93, 0x20u);
      sub_1000032A8(v169, &qword_10077F920);

      swift_arrayDestroy();

      v33 = v179;

      v101 = v173;
      v100 = v175;
    }

    else
    {
      v139 = *(v0 + 1304);
      v140 = *(v0 + 1248);

      v100 = v139;
      v101 = v140;
    }

    v181(v100, v101);
  }

  v141 = *(v0 + 1424);
  v142 = *(v0 + 80);
  v143 = *(v0 + 88);
  v144 = [objc_allocWithZone(MIStoreMetadata) init];
  *(v0 + 1488) = v144;
  v145 = String._bridgeToObjectiveC()();
  [v144 setSoftwareVersionBundleID:v145];

  v146 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v141];
  [v144 setItemID:v146];

  if (v143)
  {

    v147 = [v144 distributorInfo];
    if (!v147)
    {

      if (*(v0 + 112))
      {
        goto LABEL_34;
      }

LABEL_42:
      v153 = sub_1003000A4();
      v154 = *(v0 + 1376);
      v155 = *(v0 + 1368);
      v152 = &type metadata for NativeDistributor;
      goto LABEL_43;
    }

    v148 = v147;
    sub_1001F0C48(&qword_10077E988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = 0;
    v150 = inited + 32;
    *(inited + 40) = 0xE000000000000000;
    *(inited + 48) = v142;
    *(inited + 56) = v143;
    sub_1005288C8(inited);
    swift_setDeallocating();
    sub_1000032A8(v150, &qword_100784360);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v148 setLocalizedDistributorName:isa];
  }

  if ((*(v0 + 112) & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  v152 = &type metadata for WebDistributor;
  v153 = sub_100231E84();
  v154 = v176;
  v155 = v184;
LABEL_43:
  *(v0 + 1040) = v152;
  *(v0 + 1048) = v153;
  *(v0 + 1016) = v155;
  *(v0 + 1024) = v154;
  v52;

  v159 = swift_task_alloc();
  *(v0 + 1496) = v159;
  *v159 = v0;
  v159[1] = sub_10045D948;
  v160 = *(v0 + 1376);
  v161 = *(v0 + 1368);

  return sub_100595DA4(v161, v160, v144, v0 + 1016, v33);
}

uint64_t sub_10045D948()
{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {

    sub_10046DAE0(v2 + 16);

    sub_10000710C(v2 + 1016);
    v3 = sub_10045F0EC;
  }

  else
  {
    sub_10000710C(v2 + 1016);
    v3 = sub_10045DAC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045DAC8()
{
  v1 = objc_allocWithZone(IXPromisedOutOfBandTransfer);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithName:v2 client:28 diskSpaceNeeded:0];

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 1480);
  [v3 setPercentComplete:1.0];
  [v3 setComplete:1];
  *(v0 + 1072) = 0;
  v5 = [v4 setUserDataPromise:v3 error:v0 + 1072];
  v6 = *(v0 + 1072);
  if (v5)
  {
    v7 = *(v0 + 1480);
    v8 = v6;

LABEL_4:
    v9 = *(v0 + 1480);
    v10 = *(v0 + 1440);
    v11 = *(v0 + 1184);
    v12 = *(v0 + 1160);
    v13 = *(v0 + 1104);
    (*(*(v0 + 1152) + 104))(v12, *(v0 + 220), *(v0 + 1144));
    v14 = v10;
    sub_1005DDA70(v9, v12, v14, v11);
    static Logger.restore.getter();
    v15 = v13;
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1440);
      v20 = *(v0 + 1104);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v20;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v19;
      *v22 = v20;
      v22[1] = v19;
      v23 = v20;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@][%@] Created restore", v21, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v25 = *(v0 + 1464);
    v26 = *(v0 + 1448);
    v92 = *(v0 + 1376);
    v93 = *(v0 + 1424);
    v90 = *(v0 + 1456);
    v91 = *(v0 + 1368);
    v27 = *(v0 + 1296);
    v28 = *(v0 + 1248);
    v29 = *(v0 + 1184);
    v30 = *(v0 + 1168);

    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    *(v0 + 1512) = v32;
    *(v0 + 1520) = v31;
    v25(v27, v28);
    v33 = (v29 + v30[12]);

    *v33 = v26;
    v33[1] = v90;
    v34 = (v29 + v30[13]);

    *v34 = v91;
    v34[1] = v92;
    v35 = v29 + v30[15];
    *v35 = v93;
    *(v35 + 8) = 0;
    v36 = (v29 + v30[14]);

    *v36 = v32;
    v36[1] = v31;
    v37 = swift_task_alloc();
    *(v0 + 1528) = v37;
    *v37 = v0;
    v37[1] = sub_10045E450;
    v38 = *(v0 + 1184);

    return sub_100445810(v38);
  }

  v40 = *(v0 + 1488);
  v41 = *(v0 + 1480);
  v42 = v6;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_10046DAE0(v0 + 16);

  v43 = *(v0 + 1440);
  static Logger.restore.getter();
  v44 = v43;
  swift_errorRetain();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 1440);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412546;
    *(v48 + 4) = v47;
    *v49 = v47;
    *(v48 + 12) = 2112;
    v50 = v47;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v51;
    v49[1] = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "[%@] Failed to install distributor due to error: %@", v48, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v52 = *(v0 + 1464);
  v53 = *(v0 + 1440);
  v54 = *(v0 + 1264);
  v55 = *(v0 + 1248);
  v56 = *(v0 + 1240);

  v52(v54, v55);
  sub_1000032A8(v56, &qword_1007842F8);
  v57 = *(v0 + 1352) + 1;
  if (v57 == *(v0 + 1344))
  {
    v58 = *(v0 + 1360);
    *(v0 + 1392) = v58;
    if (*(v58 + 16))
    {
      v59 = swift_task_alloc();
      *(v0 + 1544) = v59;
      *v59 = v0;
      v59[1] = sub_10045EDD4;
      v60 = *(v0 + 1136);
      v61 = *(v0 + 1128);
      v62 = *(v0 + 1112);
      v63 = *(v0 + 1104);
      v64 = *(v0 + 1096);
      v65 = *(v0 + 1088);

      return sub_100452554(v58, v61, 1, v65, v64, v63, v60, v62);
    }

    else
    {

      v87 = *(v0 + 8);

      return v87();
    }
  }

  else
  {
    *(v0 + 1352) = v57;
    v66 = *(v0 + 1112);
    v67 = *(v0 + 1096);
    v68 = *(v0 + 1080) + 104 * v57;
    v70 = *(v68 + 48);
    v69 = *(v68 + 64);
    *(v0 + 16) = *(v68 + 32);
    *(v0 + 32) = v70;
    *(v0 + 48) = v69;
    v72 = *(v68 + 96);
    v71 = *(v68 + 112);
    v73 = *(v68 + 80);
    *(v0 + 112) = *(v68 + 128);
    *(v0 + 80) = v72;
    *(v0 + 96) = v71;
    *(v0 + 64) = v73;
    v74 = *(v68 + 128);
    v76 = *(v68 + 96);
    v75 = *(v68 + 112);
    *(v0 + 168) = *(v68 + 80);
    *(v0 + 184) = v76;
    *(v0 + 200) = v75;
    *(v0 + 216) = v74;
    v78 = *(v68 + 48);
    v77 = *(v68 + 64);
    *(v0 + 120) = *(v68 + 32);
    *(v0 + 136) = v78;
    *(v0 + 152) = v77;
    v79 = *(v0 + 56);
    *(v0 + 1368) = *(v0 + 48);
    *(v0 + 1376) = v79;
    v80 = v66[3];
    v81 = v66[8];
    v82 = sub_100006D8C(v66, v80);
    if (v67)
    {
      v83 = *(v0 + 1096);
      sub_10046DA84(v0 + 16, v0 + 848);

      v84 = swift_task_alloc();
      *(v0 + 1384) = v84;
      *v84 = v0;
      v84[1] = sub_10045A8D4;
      v85 = *(v0 + 1104);
      v86 = *(v0 + 1088);

      return sub_100510490(v86, v83, v85, v82, v80, v81);
    }

    else
    {
      sub_10046DA84(v0 + 16, v0 + 224);

      v88 = swift_task_alloc();
      *(v0 + 1400) = v88;
      *v88 = v0;
      v88[1] = sub_10045B3D8;
      v89 = *(v0 + 1104);

      return sub_10050DD34(v0 + 16, v89, v82, v80, v81);
    }
  }
}

uint64_t sub_10045E450()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {
    sub_10046DAE0(v2 + 16);
    v3 = sub_10045F6CC;
  }

  else
  {
    v3 = sub_10045E5A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045E5A0()
{
  v85 = v0;
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  if (v1)
  {
    v4 = *(v0 + 1512);
  }

  else
  {
    v4 = 0;
  }

  if (v1)
  {
    v5 = *(v0 + 1520);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_1001F0C48(&unk_100784340);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10069E680;
  sub_100007CE8(v2, v7 + v6, type metadata accessor for Restore);
  sub_10046DA84(v0 + 16, v0 + 536);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 1360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100363F78(0, *(v9 + 2) + 1, 1, *(v0 + 1360));
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100363F78((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 1440);
  v13 = *(v0 + 1104);
  v14 = *(v0 + 168);
  v15 = *(v0 + 200);
  *(v0 + 704) = *(v0 + 184);
  *(v0 + 720) = v15;
  *(v0 + 736) = *(v0 + 216);
  v16 = *(v0 + 136);
  *(v0 + 640) = *(v0 + 120);
  *(v0 + 656) = v16;
  *(v0 + 672) = *(v0 + 152);
  *(v0 + 688) = v14;
  *(v9 + 2) = v11 + 1;
  v17 = &v9[128 * v11];
  *(v17 + 4) = v4;
  *(v17 + 5) = v5;
  v18 = *(v0 + 640);
  v19 = *(v0 + 672);
  *(v17 + 4) = *(v0 + 656);
  *(v17 + 5) = v19;
  *(v17 + 3) = v18;
  v20 = *(v0 + 688);
  v21 = *(v0 + 704);
  v22 = *(v0 + 720);
  v17[144] = *(v0 + 736);
  *(v17 + 7) = v21;
  *(v17 + 8) = v22;
  *(v17 + 6) = v20;
  *(v17 + 19) = v7;
  static Logger.restore.getter();
  sub_10046DA84(v0 + 16, v0 + 744);
  v23 = v13;
  v24 = v12;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  sub_10046DAE0(v0 + 16);
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 1480);
  v29 = *(v0 + 1464);
  if (v27)
  {
    v30 = *(v0 + 1456);
    v77 = *(v0 + 1448);
    v31 = *(v0 + 1440);
    v81 = *(v0 + 1248);
    v82 = *(v0 + 1288);
    v83 = *(v0 + 1240);
    v80 = *(v0 + 1464);
    v32 = *(v0 + 1104);
    v79 = *(v0 + 1488);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v78 = v28;
    v35 = swift_slowAlloc();
    v84 = v35;
    *v33 = 138412802;
    *(v33 + 4) = v32;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v31;
    *v34 = v32;
    v34[1] = v31;
    *(v33 + 22) = 2080;
    v36 = v32;
    v37 = v31;

    sub_10046DAE0(v0 + 16);
    v38 = sub_1002346CC(v77, v30, &v84);

    *(v33 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%@][%@] Added restore distributor with distributorDomain: %s", v33, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v35);

    v80(v82, v81);
    v39 = v83;
  }

  else
  {
    v40 = *(v0 + 1440);
    v41 = *(v0 + 1288);
    v42 = *(v0 + 1248);
    v43 = *(v0 + 1240);

    sub_10046DAE0(v0 + 16);
    v29(v41, v42);
    v39 = v43;
  }

  sub_1000032A8(v39, &qword_1007842F8);
  sub_1004751E8(*(v0 + 1184), type metadata accessor for Restore);
  v44 = *(v0 + 1352) + 1;
  if (v44 == *(v0 + 1344))
  {
    *(v0 + 1392) = v9;
    if (*(v9 + 2))
    {
      v45 = swift_task_alloc();
      *(v0 + 1544) = v45;
      *v45 = v0;
      v45[1] = sub_10045EDD4;
      v46 = *(v0 + 1136);
      v47 = *(v0 + 1128);
      v48 = *(v0 + 1112);
      v49 = *(v0 + 1104);
      v50 = *(v0 + 1096);
      v51 = *(v0 + 1088);

      return sub_100452554(v9, v47, 1, v51, v50, v49, v46, v48);
    }

    else
    {

      v74 = *(v0 + 8);

      return v74();
    }
  }

  else
  {
    *(v0 + 1360) = v9;
    *(v0 + 1352) = v44;
    v53 = *(v0 + 1112);
    v54 = *(v0 + 1096);
    v55 = *(v0 + 1080) + 104 * v44;
    v57 = *(v55 + 48);
    v56 = *(v55 + 64);
    *(v0 + 16) = *(v55 + 32);
    *(v0 + 32) = v57;
    *(v0 + 48) = v56;
    v59 = *(v55 + 96);
    v58 = *(v55 + 112);
    v60 = *(v55 + 80);
    *(v0 + 112) = *(v55 + 128);
    *(v0 + 80) = v59;
    *(v0 + 96) = v58;
    *(v0 + 64) = v60;
    v61 = *(v55 + 128);
    v63 = *(v55 + 96);
    v62 = *(v55 + 112);
    *(v0 + 168) = *(v55 + 80);
    *(v0 + 184) = v63;
    *(v0 + 200) = v62;
    *(v0 + 216) = v61;
    v65 = *(v55 + 48);
    v64 = *(v55 + 64);
    *(v0 + 120) = *(v55 + 32);
    *(v0 + 136) = v65;
    *(v0 + 152) = v64;
    v66 = *(v0 + 56);
    *(v0 + 1368) = *(v0 + 48);
    *(v0 + 1376) = v66;
    v67 = v53[3];
    v68 = v53[8];
    v69 = sub_100006D8C(v53, v67);
    if (v54)
    {
      v70 = *(v0 + 1096);
      sub_10046DA84(v0 + 16, v0 + 848);

      v71 = swift_task_alloc();
      *(v0 + 1384) = v71;
      *v71 = v0;
      v71[1] = sub_10045A8D4;
      v72 = *(v0 + 1104);
      v73 = *(v0 + 1088);

      return sub_100510490(v73, v70, v72, v69, v67, v68);
    }

    else
    {
      sub_10046DA84(v0 + 16, v0 + 224);

      v75 = swift_task_alloc();
      *(v0 + 1400) = v75;
      *v75 = v0;
      v75[1] = sub_10045B3D8;
      v76 = *(v0 + 1104);

      return sub_10050DD34(v0 + 16, v76, v69, v67, v68);
    }
  }
}

uint64_t sub_10045EDD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10045F0EC()
{
  v1 = *(v0 + 1480);

  v2 = *(v0 + 1440);
  static Logger.restore.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to install distributor due to error: %@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 1464);
  v12 = *(v0 + 1440);
  v13 = *(v0 + 1264);
  v14 = *(v0 + 1248);
  v15 = *(v0 + 1240);

  v11(v13, v14);
  sub_1000032A8(v15, &qword_1007842F8);
  v16 = *(v0 + 1352) + 1;
  if (v16 == *(v0 + 1344))
  {
    v17 = *(v0 + 1360);
    *(v0 + 1392) = v17;
    if (*(v17 + 16))
    {
      v18 = swift_task_alloc();
      *(v0 + 1544) = v18;
      *v18 = v0;
      v18[1] = sub_10045EDD4;
      v19 = *(v0 + 1136);
      v20 = *(v0 + 1128);
      v21 = *(v0 + 1112);
      v22 = *(v0 + 1104);
      v23 = *(v0 + 1096);
      v24 = *(v0 + 1088);

      return sub_100452554(v17, v20, 1, v24, v23, v22, v19, v21);
    }

    else
    {

      v47 = *(v0 + 8);

      return v47();
    }
  }

  else
  {
    *(v0 + 1352) = v16;
    v26 = *(v0 + 1112);
    v27 = *(v0 + 1096);
    v28 = *(v0 + 1080) + 104 * v16;
    v30 = *(v28 + 48);
    v29 = *(v28 + 64);
    *(v0 + 16) = *(v28 + 32);
    *(v0 + 32) = v30;
    *(v0 + 48) = v29;
    v32 = *(v28 + 96);
    v31 = *(v28 + 112);
    v33 = *(v28 + 80);
    *(v0 + 112) = *(v28 + 128);
    *(v0 + 80) = v32;
    *(v0 + 96) = v31;
    *(v0 + 64) = v33;
    v34 = *(v28 + 128);
    v36 = *(v28 + 96);
    v35 = *(v28 + 112);
    *(v0 + 168) = *(v28 + 80);
    *(v0 + 184) = v36;
    *(v0 + 200) = v35;
    *(v0 + 216) = v34;
    v38 = *(v28 + 48);
    v37 = *(v28 + 64);
    *(v0 + 120) = *(v28 + 32);
    *(v0 + 136) = v38;
    *(v0 + 152) = v37;
    v39 = *(v0 + 56);
    *(v0 + 1368) = *(v0 + 48);
    *(v0 + 1376) = v39;
    v40 = v26[3];
    v41 = v26[8];
    v42 = sub_100006D8C(v26, v40);
    if (v27)
    {
      v43 = *(v0 + 1096);
      sub_10046DA84(v0 + 16, v0 + 848);

      v44 = swift_task_alloc();
      *(v0 + 1384) = v44;
      *v44 = v0;
      v44[1] = sub_10045A8D4;
      v45 = *(v0 + 1104);
      v46 = *(v0 + 1088);

      return sub_100510490(v46, v43, v45, v42, v40, v41);
    }

    else
    {
      sub_10046DA84(v0 + 16, v0 + 224);

      v48 = swift_task_alloc();
      *(v0 + 1400) = v48;
      *v48 = v0;
      v48[1] = sub_10045B3D8;
      v49 = *(v0 + 1104);

      return sub_10050DD34(v0 + 16, v49, v42, v40, v41);
    }
  }
}

uint64_t sub_10045F6CC()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1184);

  sub_1004751E8(v2, type metadata accessor for Restore);
  v3 = *(v0 + 1440);
  static Logger.restore.getter();
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1440);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2112;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Failed to install distributor due to error: %@", v8, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 1464);
  v13 = *(v0 + 1440);
  v14 = *(v0 + 1264);
  v15 = *(v0 + 1248);
  v16 = *(v0 + 1240);

  v12(v14, v15);
  sub_1000032A8(v16, &qword_1007842F8);
  v17 = *(v0 + 1352) + 1;
  if (v17 == *(v0 + 1344))
  {
    v18 = *(v0 + 1360);
    *(v0 + 1392) = v18;
    if (*(v18 + 16))
    {
      v19 = swift_task_alloc();
      *(v0 + 1544) = v19;
      *v19 = v0;
      v19[1] = sub_10045EDD4;
      v20 = *(v0 + 1136);
      v21 = *(v0 + 1128);
      v22 = *(v0 + 1112);
      v23 = *(v0 + 1104);
      v24 = *(v0 + 1096);
      v25 = *(v0 + 1088);

      return sub_100452554(v18, v21, 1, v25, v24, v23, v20, v22);
    }

    else
    {

      v48 = *(v0 + 8);

      return v48();
    }
  }

  else
  {
    *(v0 + 1352) = v17;
    v27 = *(v0 + 1112);
    v28 = *(v0 + 1096);
    v29 = *(v0 + 1080) + 104 * v17;
    v31 = *(v29 + 48);
    v30 = *(v29 + 64);
    *(v0 + 16) = *(v29 + 32);
    *(v0 + 32) = v31;
    *(v0 + 48) = v30;
    v33 = *(v29 + 96);
    v32 = *(v29 + 112);
    v34 = *(v29 + 80);
    *(v0 + 112) = *(v29 + 128);
    *(v0 + 80) = v33;
    *(v0 + 96) = v32;
    *(v0 + 64) = v34;
    v35 = *(v29 + 128);
    v37 = *(v29 + 96);
    v36 = *(v29 + 112);
    *(v0 + 168) = *(v29 + 80);
    *(v0 + 184) = v37;
    *(v0 + 200) = v36;
    *(v0 + 216) = v35;
    v39 = *(v29 + 48);
    v38 = *(v29 + 64);
    *(v0 + 120) = *(v29 + 32);
    *(v0 + 136) = v39;
    *(v0 + 152) = v38;
    v40 = *(v0 + 56);
    *(v0 + 1368) = *(v0 + 48);
    *(v0 + 1376) = v40;
    v41 = v27[3];
    v42 = v27[8];
    v43 = sub_100006D8C(v27, v41);
    if (v28)
    {
      v44 = *(v0 + 1096);
      sub_10046DA84(v0 + 16, v0 + 848);

      v45 = swift_task_alloc();
      *(v0 + 1384) = v45;
      *v45 = v0;
      v45[1] = sub_10045A8D4;
      v46 = *(v0 + 1104);
      v47 = *(v0 + 1088);

      return sub_100510490(v47, v44, v46, v43, v41, v42);
    }

    else
    {
      sub_10046DA84(v0 + 16, v0 + 224);

      v49 = swift_task_alloc();
      *(v0 + 1400) = v49;
      *v49 = v0;
      v49[1] = sub_10045B3D8;
      v50 = *(v0 + 1104);

      return sub_10050DD34(v0 + 16, v50, v43, v41, v42);
    }
  }
}

uint64_t sub_10045FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = type metadata accessor for Logger();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_10045FDA0, 0, 0);
}

uint64_t sub_10045FDA0()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[13] = *(v0[4] + 24);
  v3 = *sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device;
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);

  LOBYTE(v2) = sub_1005DD44C(v4, v5, v2);

  if (v2)
  {
    v6 = v0[6];
    v7 = *sub_100006D8C(v0[5], v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device;
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);

    sub_1005DD728(v8, v9, v6);

    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_10045FF1C;

    return sub_1005DBC7C();
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10045FF1C()
{

  return _swift_task_switch(sub_100460018, 0, 0);
}

uint64_t sub_100460018()
{
  v1 = v0[6];
  static Logger.restore.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Setup assistant observer started", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[9];
  v12 = v0[10];

  v13 = *(v12 + 8);
  v0[15] = v13;
  v0[16] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  v0[2] = v9;

  v14 = sub_10042BD6C();
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_1004601E8;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 19, &type metadata for RestoreStateObserver.AsyncIterator, v14);
}

uint64_t sub_1004601E8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100460624;
  }

  else
  {
    v2 = sub_1004602FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100460320()
{
  v1 = *(v0 + 153);
  if (v1 == 2)
  {
    goto LABEL_4;
  }

  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    sub_1001F0C48(&unk_100784380);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10069E680;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 32) = 0xD00000000000003ALL;
    *(v6 + 40) = 0x80000001006CB770;
    print(_:separator:terminator:)();

    v7 = *(v4 + 24);
    v27 = *(v4 + 48);
    v28 = *(v4 + 32);
    v26 = *(v4 + 64);
    v8 = *(v4 + 80);
    v9 = *(v4 + 88);
    v10 = sub_100006D8C(v4, v7);
    sub_10046413C(v2, 2, 0, 0, 0, 0, 1, v3, v10, v5, v7, v28, v27, v26, v8, v9);
LABEL_4:
    v11 = *(v0 + 48);

    static Logger.restore.getter();
    v12 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 48);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Setup assistant observer complete", v16, 0xCu);
      sub_1000032A8(v17, &qword_10077F920);
    }

    v19 = *(v0 + 120);
    v20 = *(v0 + 88);
    v21 = *(v0 + 72);

    v19(v20, v21);

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = sub_10042BD6C();
  v25 = swift_task_alloc();
  *(v0 + 136) = v25;
  *v25 = v0;
  v25[1] = sub_1004601E8;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 152, &type metadata for RestoreStateObserver.AsyncIterator, v24);
}

uint64_t sub_100460624()
{
  *(v0 + 24) = *(v0 + 144);
  sub_1001F0C48(&unk_10077F940);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1004606B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for URL.DirectoryHint();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = type metadata accessor for Restore();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_1001F0C48(&qword_1007842F8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  sub_1001F0C48(&qword_100784300);
  v6[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004609C8, 0, 0);
}

uint64_t sub_1004609C8()
{
  v1 = v0[6];
  objc_allocWithZone(type metadata accessor for LogKey());
  v0[32] = LogKey.init(string:)();
  v2 = *(v1 + 16);
  v0[33] = v2;

  return _swift_task_switch(sub_100460A90, v2, 0);
}

uint64_t sub_100460A90()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[26];
  v5 = v0[27];
  v6 = *(*v1 + 104);
  v0[34] = v6;
  sub_100005934(v1 + v6, v3, &qword_100784300);
  (*(v5 + 32))(v2, v3, v4);
  v7 = objc_opt_self();
  v0[35] = v7;
  v8 = [v7 defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[4] = 0;
  v13 = [v8 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:isa options:0 error:v0 + 4];

  v14 = v0[4];
  v15 = v0[30];
  v16 = v0[26];
  v17 = v0[27];
  if (v13)
  {
    v0[36] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v14;

    v19 = *(v17 + 8);
    v0[37] = v19;
    v0[38] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v16);
    v20 = sub_100460CB0;
  }

  else
  {
    v21 = v14;
    v0[40] = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v17 + 8))(v15, v16);
    v20 = sub_100460D5C;
  }

  return _swift_task_switch(v20, 0, 0);
}

uint64_t sub_100460CB0()
{
  *(v0 + 312) = *(*(v0 + 288) + 16);
  *(v0 + 368) = enum case for URL.DirectoryHint.inferFromPath(_:);
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;

  return _swift_task_switch(sub_100460E9C, 0, 0);
}

uint64_t sub_100460D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100460E9C()
{
  v1 = *(v0 + 336);
  if (v1 >= *(v0 + 312))
  {
    (*(*(v0 + 160) + 56))(*(v0 + 200), 1, 1, *(v0 + 152));
    v19 = *(v0 + 328);
    v20 = *(v0 + 336);
    goto LABEL_10;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
  }

  v2 = *(*(v0 + 216) + 80);
  v3 = *(v0 + 288) + ((v2 + 32) & ~v2);
  v4 = *(v0 + 328);
  do
  {
    if (v1 >= *(*(v0 + 288) + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    (*(*(v0 + 216) + 16))(*(v0 + 232), v3 + *(*(v0 + 216) + 72) * v1, *(v0 + 208));
    v10 = Data.init(contentsOf:options:)();
    if (!v4)
    {
      v12 = v10;
      v13 = v11;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100006EA4(&qword_100784308, type metadata accessor for Restore);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v14 = *(v0 + 200);
      v15 = *(v0 + 192);
      v16 = *(v0 + 152);
      v17 = *(v0 + 160);
      (*(v0 + 296))(*(v0 + 232), *(v0 + 208));
      sub_100007158(v12, v13);

      v18 = *(v17 + 56);
      v18(v15, 0, 1, v16);
      sub_1004640D8(v15, v14);
      v18(v14, 0, 1, v16);
      v19 = 0;
      v20 = v1 + 1;
      goto LABEL_10;
    }

    v5 = *(v0 + 312);
    v6 = *(v0 + 192);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    (*(v0 + 296))(*(v0 + 232), *(v0 + 208));
    v9 = *(v8 + 56);
    v9(v6, 1, 1, v7);
    sub_1000032A8(v6, &qword_1007842F8);
    v4 = 0;
    ++v1;
  }

  while (v1 != v5);
  v9(*(v0 + 200), 1, 1, *(v0 + 152));
  v19 = 0;
  v20 = *(v0 + 312);
LABEL_10:
  *(v0 + 344) = v19;
  *(v0 + 352) = v20;

  return _swift_task_switch(sub_1004611CC, 0, 0);
}

uint64_t sub_1004611CC()
{
  v1 = v0[25];
  v2 = v0[19];
  if ((*(v0[20] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[32];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[23];
    v8 = v0[7];
    v7 = v0[8];
    sub_1004640D8(v1, v6);
    v9 = (v6 + *(v2 + 36));
    v10 = *v9 == v8 && v9[1] == v7;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = v0[33];
      v12 = sub_100461434;
    }

    else
    {
      v13 = v0[43];
      sub_1004751E8(v0[23], type metadata accessor for Restore);
      v14 = v0[44];
      v0[41] = v13;
      v0[42] = v14;
      v12 = sub_100460E9C;
      v11 = 0;
    }

    return _swift_task_switch(v12, v11, 0);
  }
}

uint64_t sub_100461434()
{
  v1 = *(v0 + 368);
  v21 = *(v0 + 280);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 184), *(v0 + 128));
  *(v0 + 16) = UUID.uuidString.getter();
  *(v0 + 24) = v5;
  (*(v4 + 104))(v2, v1, v3);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v2, v3);

  v6 = [v21 defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  *(v0 + 40) = 0;
  LODWORD(v3) = [v6 removeItemAtURL:v8 error:v0 + 40];

  v10 = *(v0 + 40);
  v11 = *(v0 + 296);
  v12 = *(v0 + 224);
  v13 = *(v0 + 208);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = (*(v0 + 136) + 8);
  if (v3)
  {
    v17 = v10;
    v11(v12, v13);
    (*v16)(v14, v15);
    v18 = sub_100461684;
  }

  else
  {
    v19 = v10;
    *(v0 + 360) = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11(v12, v13);
    (*v16)(v14, v15);
    v18 = sub_1004618E0;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_100461684()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[23];
  static Logger.restore.getter();
  sub_100007CE8(v3, v2, type metadata accessor for Restore);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[32];
    v8 = v0[22];
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2112;
    v12 = *(v8 + *(v9 + 20));
    v13 = v7;
    v14 = v12;
    sub_1004751E8(v8, type metadata accessor for Restore);
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%@] Removed", v10, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[22];

    sub_1004751E8(v15, type metadata accessor for Restore);
  }

  v16 = v0[43];
  (*(v0[10] + 8))(v0[12], v0[9]);
  sub_1004751E8(v0[23], type metadata accessor for Restore);
  v17 = v0[44];
  v0[41] = v16;
  v0[42] = v17;

  return _swift_task_switch(sub_100460E9C, 0, 0);
}

uint64_t sub_1004618E0()
{
  v1 = v0[32];
  v2 = v0[23];
  v3 = v0[21];
  static Logger.restore.getter();
  sub_100007CE8(v2, v3, type metadata accessor for Restore);
  v4 = v1;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[32];
    v8 = v0[21];
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2112;
    v12 = *(v8 + *(v9 + 20));
    v13 = v7;
    v14 = v12;
    sub_1004751E8(v8, type metadata accessor for Restore);
    *(v10 + 14) = v14;
    v11[1] = v14;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    v11[2] = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%@] Failed to remove due to error: %@", v10, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[21];

    sub_1004751E8(v16, type metadata accessor for Restore);
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_1004751E8(v0[23], type metadata accessor for Restore);
  v17 = v0[44];
  v0[41] = 0;
  v0[42] = v17;

  return _swift_task_switch(sub_100460E9C, 0, 0);
}

uint64_t sub_100461B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for Logger();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100461C54, 0, 0);
}

uint64_t sub_100461C54()
{
  v1 = v0[2].i64[0];
  static Logger.restore.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2].i64[0];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Reset", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[4].i64[1];
  v10 = v0[3].i64[0];
  v11 = v0[3].i64[1];
  v18 = v0[2];

  v12 = *(v11 + 8);
  v0[5].i64[0] = v12;
  v0[5].i64[1] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = sub_1001F0C48(&qword_100784430);
  v14 = swift_task_alloc();
  v0[6].i64[0] = v14;
  v14[1] = vextq_s8(v18, v18, 8uLL);
  v15 = sub_1001F0C48(&unk_10077FB40);
  v0[6].i64[1] = v15;
  v16 = swift_task_alloc();
  v0[7].i64[0] = v16;
  *v16 = v0;
  v16[1] = sub_100461E8C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(&v0[1], v13, v15, 0, 0, &unk_1006AC3B8, v14, v13);
}

uint64_t sub_100461E8C()
{

  return _swift_task_switch(sub_100461FA4, 0, 0);
}

uint64_t sub_100461FA4()
{
  v19 = v0;
  v1 = v0[2];
  static Logger.restore.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[10];
    v4 = v0[8];
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[3] = v1;
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;

    v11 = sub_1002346CC(v8, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Removed restores: [%s]", v6, 0xCu);
    sub_10000710C(v7);

    v17(v4, v5);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[8];
    v14 = v0[6];

    v12(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1004621B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_100784438);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&qword_100784300);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1004623D8, 0, 0);
}

uint64_t sub_1004623D8()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 152) = v1;

  return _swift_task_switch(sub_10046246C, v1, 0);
}

uint64_t sub_10046246C()
{
  v1 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  sub_100005934(v0[19] + *(*v0[19] + 104), v1, &qword_100784300);
  (*(v3 + 32))(v2, v1, v4);
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[2] = 0;
  v10 = [v5 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:isa options:0 error:v0 + 2];

  v11 = v0[2];
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];
  if (v10)
  {
    v0[20] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v11;

    (*(v13 + 8))(v12, v14);
    v16 = sub_100462678;
  }

  else
  {
    v17 = v11;
    v0[22] = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    v16 = sub_10046287C;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_100462678()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[6];
  v4 = v0[7];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v3;
  v6[6] = v4;

  v7 = v4;
  sub_1004406C8(v2, &unk_1006AC3D8, v6, &unk_1007659D8, &qword_100784430, &unk_1006A2630, &unk_1006AC3E8);
  sub_1000032A8(v2, &unk_100780380);
  sub_1001F0C48(&qword_100784430);
  TaskGroup.makeAsyncIterator()();
  v0[21] = _swiftEmptyArrayStorage;
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_100462A64;
  v9 = v0[11];

  return TaskGroup.Iterator.next(isolation:)(v0 + 3, 0, 0, v9);
}

uint64_t sub_10046287C()
{
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to reset active restores: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);

  (*(v7 + 8))(v6, v8);

  **(v0 + 32) = _swiftEmptyArrayStorage;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100462A64()
{

  return _swift_task_switch(sub_100462B8C, 0, 0);
}

uint64_t sub_100462B8C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_20;
  }

  if (v1 == 1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    **(v0 + 32) = *(v0 + 168);

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v1 + 16);
  v5 = *(*(v0 + 168) + 16);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 168);
  if (isUniquelyReferenced_nonNull_native && v6 <= *(v8 + 3) >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (v5 <= v6)
  {
    v12 = v5 + v4;
  }

  else
  {
    v12 = v5;
  }

  v8 = sub_100009530(isUniquelyReferenced_nonNull_native, v12, 1, *(v0 + 168));
  if (!*(v1 + 16))
  {
LABEL_18:
    sub_1001D6E24(v1);
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_10:
  if ((*(v8 + 3) >> 1) - *(v8 + 2) < v4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_arrayInitWithCopy();
  sub_1001D6E24(v1);
  if (v4)
  {
    v9 = *(v8 + 2);
    v10 = __OFADD__(v9, v4);
    v11 = v9 + v4;
    if (!v10)
    {
      *(v8 + 2) = v11;
      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
  }

LABEL_19:
  *(v0 + 168) = v8;
LABEL_20:
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_100462A64;
  v14 = *(v0 + 88);

  return TaskGroup.Iterator.next(isolation:)(v0 + 24, 0, 0, v14);
}

uint64_t sub_100462DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for URL.DirectoryHint();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = type metadata accessor for Restore();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[22] = v11;
  v6[23] = *(v11 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_1001F0C48(&qword_1007842F8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004630B4, 0, 0);
}

uint64_t sub_1004630B4()
{
  *(v0 + 224) = *(*(v0 + 48) + 16);
  *(v0 + 288) = enum case for URL.DirectoryHint.inferFromPath(_:);
  *(v0 + 240) = 0;
  *(v0 + 248) = _swiftEmptyArrayStorage;
  *(v0 + 232) = 0;

  return _swift_task_switch(sub_10046316C, 0, 0);
}

uint64_t sub_10046316C()
{
  v1 = v0[30];
  v2 = v0[28];
  if (v1 >= v2)
  {
    (*(v0[19] + 56))(v0[27], 1, 1, v0[18]);
    v16 = v0[29];
    v15 = v0[30];
    goto LABEL_11;
  }

  if (v1 >= v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v0[23] + 80);
  v4 = v0[6] + ((v3 + 32) & ~v3);
  v5 = v0[29];
  while (1)
  {
    (*(v0[23] + 16))(v0[25], v4 + *(v0[23] + 72) * v1, v0[22]);
    v11 = Data.init(contentsOf:options:)();
    if (!v5)
    {
      break;
    }

    v6 = v0[28];
    v7 = v0[26];
    v8 = v0[18];
    v9 = v0[19];
    (*(v0[23] + 8))(v0[25], v0[22]);
    v10 = *(v9 + 56);
    v10(v7, 1, 1, v8);
    sub_1000032A8(v7, &qword_1007842F8);
    v5 = 0;
    if (++v1 == v6)
    {
      v10(v0[27], 1, 1, v0[18]);
      v16 = 0;
      v15 = v0[28];
      goto LABEL_11;
    }
  }

  v13 = v11;
  v14 = v12;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100006EA4(&qword_100784308, type metadata accessor for Restore);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[18];
  v20 = v0[19];
  (*(v0[23] + 8))(v0[25], v0[22]);
  sub_100007158(v13, v14);

  v21 = *(v20 + 56);
  v21(v17, 0, 1, v19);
  sub_1004640D8(v17, v18);
  v21(v18, 0, 1, v19);
  v15 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_15:
    __break(1u);
  }

  v16 = 0;
LABEL_11:
  v0[32] = v16;
  v0[33] = v15;

  return _swift_task_switch(sub_1004634A0, 0, 0);
}

uint64_t sub_1004634A0()
{
  v1 = *(v0 + 216);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    **(v0 + 40) = *(v0 + 248);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 56);
    sub_1004640D8(v1, *(v0 + 168));
    v5 = *(v4 + 16);
    *(v0 + 272) = v5;

    return _swift_task_switch(sub_10046364C, v5, 0);
  }
}

uint64_t sub_10046364C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 168), *(v0 + 120));
  *(v0 + 16) = UUID.uuidString.getter();
  *(v0 + 24) = v5;
  (*(v4 + 104))(v2, v1, v3);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v2, v3);

  v6 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  *(v0 + 32) = 0;
  v10 = [v6 removeItemAtURL:v8 error:v0 + 32];

  v11 = *(v0 + 32);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 136);
  v15 = *(v0 + 120);
  v16 = (*(v0 + 128) + 8);
  v17 = (*(v0 + 184) + 8);
  if (v10)
  {
    v18 = *v17;
    v19 = v11;
    v18(v12, v13);
    (*v16)(v14, v15);
    v20 = sub_1004638CC;
  }

  else
  {
    v21 = v11;
    *(v0 + 280) = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*v17)(v12, v13);
    (*v16)(v14, v15);
    v20 = sub_100463A1C;
  }

  return _swift_task_switch(v20, 0, 0);
}

uint64_t sub_1004638CC()
{
  v1 = (*(v0 + 168) + *(*(v0 + 144) + 36));
  v3 = *v1;
  v2 = v1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 248);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100009530(0, *(v5 + 2) + 1, 1, *(v0 + 248));
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100009530((v6 > 1), v7 + 1, 1, v5);
  }

  sub_1004751E8(*(v0 + 168), type metadata accessor for Restore);
  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v2;
  v9 = *(v0 + 256);
  *(v0 + 240) = *(v0 + 264);
  *(v0 + 248) = v5;
  *(v0 + 232) = v9;

  return _swift_task_switch(sub_10046316C, 0, 0);
}

uint64_t sub_100463A1C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[8];
  static Logger.restore.getter();
  sub_100007CE8(v2, v1, type metadata accessor for Restore);
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  if (v7)
  {
    v10 = v0[18];
    v23 = v0[10];
    v11 = v0[8];
    v24 = v0[9];
    v25 = v0[11];
    v26 = v0[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2112;
    v14 = *(v9 + *(v10 + 20));
    v15 = v11;
    v16 = v14;
    sub_1004751E8(v9, type metadata accessor for Restore);
    *(v12 + 14) = v16;
    v13[1] = v16;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    v13[2] = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%@] Failed to remove due to error: %@", v12, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    v8 = v26;

    (*(v23 + 8))(v25, v24);
  }

  else
  {
    v18 = v0[10];
    v19 = v0[11];
    v20 = v0[9];

    sub_1004751E8(v9, type metadata accessor for Restore);
    (*(v18 + 8))(v19, v20);
  }

  sub_1004751E8(v8, type metadata accessor for Restore);
  v21 = v0[33];
  v0[29] = 0;
  v0[30] = v21;

  return _swift_task_switch(sub_10046316C, 0, 0);
}

uint64_t sub_100463CF0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100463D54(uint64_t a1)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v15 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v17 = UUID.uuidString.getter();
  v18 = v12;
  (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v3 + 8))(v5, v2);

  sub_100463FF0();
  (*(v15 + 8))(v7, v16);
  return (*(v9 + 8))(v11, v8);
}

id sub_100463FF0()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1004640D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Restore();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046413C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, _OWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v66 = a8;
  v63 = a7;
  v55 = a6;
  v60 = a5;
  v65 = a4;
  v62 = a3;
  v61 = a2;
  v58 = a1;
  v64 = a10;
  v54 = a14;
  v53 = a13;
  v52 = a12;
  v16 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v16 - 8);
  v59 = &v52 - v17;
  v57 = type metadata accessor for Logger();
  v56 = *(v57 - 8);
  v18 = __chkstk_darwin(v57);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v23 = type metadata accessor for LogKey.Prefix();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v52;
  v71 = v53;
  v72 = v54;
  v69[3] = a11;
  v73 = a15;
  v74 = a16;
  v27 = sub_10020A748(v69);
  (*(*(a11 - 8) + 16))(v27, a9, a11);
  (*(v24 + 104))(v26, enum case for LogKey.Prefix.bootstrap(_:), v23);
  v28 = v55;
  v29 = objc_allocWithZone(type metadata accessor for LogKey());
  v30 = LogKey.init(prefix:)();
  if (!v28)
  {
    static Logger.restore.getter();
    v39 = v30;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Begin restoring", v42, 0xCu);
      sub_1000032A8(v43, &qword_10077F920);
    }

    (*(v56 + 8))(v20, v57);
    goto LABEL_8;
  }

  static Logger.restore.getter();
  v31 = v30;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v32, v33))
  {

    (*(v56 + 8))(v22, v57);
LABEL_8:
    v38 = v60;
    goto LABEL_9;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v68[0] = v36;
  *v34 = 138412546;
  *(v34 + 4) = v31;
  *v35 = v31;
  *(v34 + 12) = 2082;
  v37 = v31;
  v38 = v60;
  *(v34 + 14) = sub_1002346CC(v60, v28, v68);
  _os_log_impl(&_mh_execute_header, v32, v33, "[%@] Begin restoring candidates matching accountID: %{public}s", v34, 0x16u);
  sub_1000032A8(v35, &qword_10077F920);

  sub_10000710C(v36);

  (*(v56 + 8))(v22, v57);
LABEL_9:
  v45 = type metadata accessor for TaskPriority();
  v46 = v59;
  (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
  sub_100231CE8(v69, v68);
  sub_10020A980(v58, v67);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = v64;
  *(v47 + 40) = v30;
  *(v47 + 48) = v38;
  *(v47 + 56) = v28;
  sub_100231D54(v68, (v47 + 64));
  sub_1001DFDBC(v67, v47 + 160);
  *(v47 + 200) = v61;
  v48 = v65;
  *(v47 + 208) = v62;
  *(v47 + 216) = v48;
  *(v47 + 224) = v63;
  v49 = v66;
  v50 = v66[1];
  *(v47 + 228) = *v66;
  *(v47 + 244) = v50;
  *(v47 + 260) = *(v49 + 32);

  sub_1004A673C(0, 0, v46, &unk_1006AC220, v47);

  return sub_10000710C(v69);
}

uint64_t sub_1004647C0(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[5];
  v9 = v1[4];
  v4 = v1[7];
  v7 = v1[6];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100442740(a1, v11, v10, v9, v8, v7, v4, (v1 + 8));
}

uint64_t sub_1004648D0(uint64_t a1)
{
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v4 = *(v1 + 40);
  v10 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100443220(a1, v12, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1004649D4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100214EFC;

  return sub_100440D78(a1, a2, v2);
}

uint64_t sub_100464A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v26 = a6;
  v31 = a11;
  v32 = a8;
  v27 = a13;
  v28 = a12;
  v29 = a10;
  v30 = a2;
  v18 = *(a9 - 8);
  __chkstk_darwin(a1);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v21, a9);
  sub_1001F0C48(&qword_100784460);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10069E680;
  *(v22 + 32) = PrioritizeAppRequest.appToPrioritize.getter();
  *(v22 + 40) = v23;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  v34 = a5;
  v35 = v26;
  v36 = 0;
  sub_100464C24(v22, v30, &v33, v20, v32, a9, v29, v31, v28, v27, a14, a15);

  return (*(v18 + 8))(v20, a9);
}

uint64_t sub_100464C24(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v48 = a8;
  v45 = a5;
  v49 = a4;
  v44 = a3;
  v43 = a2;
  v47 = a10;
  v46 = a9;
  v42 = type metadata accessor for Logger();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for LogKey.Prefix();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a6;
  v52[4] = a7;
  v53 = v46;
  v54 = v47;
  v52[5] = v48;
  v55 = a11;
  v56 = a12;
  v24 = sub_10020A748(v52);
  (*(*(a6 - 8) + 16))(v24, v49, a6);
  (*(v21 + 104))(v23, enum case for LogKey.Prefix.promotionDiscovery(_:), v20);
  v25 = objc_allocWithZone(type metadata accessor for LogKey());
  v26 = LogKey.init(prefix:)();
  sub_100625B04();
  if (*(a1 + 16))
  {
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
    sub_100231CE8(v52, v51);
    sub_10020A980(v43, v50);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v45;
    *(v28 + 40) = a1;
    *(v28 + 48) = v26;
    sub_100231D54(v51, (v28 + 56));
    sub_1001DFDBC(v50, v28 + 152);
    v29 = v44;
    v30 = v44[1];
    *(v28 + 192) = *v44;
    *(v28 + 208) = v30;
    *(v28 + 224) = *(v29 + 32);

    sub_1004A673C(0, 0, v19, &unk_1006AC408, v28);
  }

  else
  {
    v31 = v41;
    v32 = v42;
    static Logger.restore.getter();
    v33 = v26;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%@] No apps to promote", v36, 0xCu);
      sub_1000032A8(v37, &qword_10077F920);
    }

    else
    {
      v38 = v34;
      v34 = v33;
    }

    (*(v31 + 8))(v16, v32);
  }

  return sub_10000710C(v52);
}

uint64_t sub_1004650C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v29 = a11;
  v30 = a8;
  v25 = a13;
  v26 = a12;
  v27 = a10;
  v28 = a2;
  v19 = *(a9 - 8);
  __chkstk_darwin(a1);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v22, a9);
  v23 = PromoteAppsRequest.appsToPromote.getter();
  *&v31 = a3;
  *(&v31 + 1) = a4;
  v32 = a5;
  v33 = a6;
  v34 = 0;
  sub_100464C24(v23, v28, &v31, v21, v30, a9, v27, v29, v26, v25, a14, a15);

  return (*(v19 + 8))(v21, a9);
}

uint64_t sub_10046522C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100465320;

  return v5(v2 + 16);
}

uint64_t sub_100465320()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100465450(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_100465544;

  return v5(v2 + 16);
}

uint64_t sub_100465544()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100465660(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v3[127] = a2;
  v3[126] = a1;
  v6 = v5;
  v3[128] = type metadata accessor for Restore();
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[133] = v7;
  v3[134] = *(v7 - 8);
  v3[135] = swift_task_alloc();
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[122] = v6;
  v3[123] = &off_100770208;
  v3[119] = a3;

  return _swift_task_switch(sub_1004657F0, 0, 0);
}

uint64_t sub_1004657F0()
{
  v1 = *(v0 + 1008);
  v2 = (v1 + *(*(v0 + 1024) + 52));
  v3 = v2[1];
  v4 = *(v0 + 1016);
  if (v3)
  {
    v5 = *v2;
    v6 = *(v0 + 1056);
    static Logger.restore.getter();
    sub_100007CE8(v1, v6, type metadata accessor for Restore);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 1056);
    if (v10)
    {
      v12 = *(v0 + 1024);
      v13 = *(v0 + 1016);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v13;
      *v15 = v13;
      *(v14 + 12) = 2112;
      v16 = *(v11 + *(v12 + 20));
      v17 = v13;
      v18 = v16;
      sub_1004751E8(v11, type metadata accessor for Restore);
      *(v14 + 14) = v18;
      v15[1] = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@][%@] Going to present hard failure dialog", v14, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v11, type metadata accessor for Restore);
    }

    (*(*(v0 + 1072) + 8))(*(v0 + 1104), *(v0 + 1064));
    v36 = objc_allocWithZone(LSApplicationRecord);

    v37 = sub_10049E57C(v5, v3, 1);
    v38 = *(v0 + 1024);
    v39 = *(v0 + 1008);
    v40 = [v37 localizedName];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = (v39 + *(v38 + 36));
    v45 = *v44;
    v46 = v44[1];
    v47 = objc_allocWithZone(LSApplicationRecord);

    v50 = sub_10049E57C(v45, v46, 1);
    v51 = [v50 localizedName];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *(v0 + 1152) = v43;
    *(v0 + 1144) = v41;
    *(v0 + 1136) = v54;
    *(v0 + 1128) = v54;
    *(v0 + 1120) = v52;
    *(v0 + 1112) = v43;
    *(v0 + 808) = v41;
    *(v0 + 816) = v43;
    *(v0 + 872) = 23;
    *(v0 + 880) = 0u;
    *(v0 + 896) = 0u;
    *(v0 + 912) = 0u;
    *(v0 + 928) = 0u;
    *(v0 + 944) = 41;
    v55 = *(*sub_100006D8C((v0 + 952), *(v0 + 976)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
    *(v0 + 1160) = v55;
    *(v0 + 696) = v52;
    *(v0 + 704) = v54;
    *(v0 + 760) = 22;

    v56 = swift_allocObject();
    *(v0 + 1168) = v56;
    *(v56 + 16) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 0u;
    *(v56 + 64) = 0u;
    *(v56 + 80) = -1;
    *(v56 + 88) = v55;
    v57 = swift_task_alloc();
    *(v0 + 1176) = v57;
    *(v57 + 16) = &unk_10069F2C0;
    *(v57 + 24) = v56;

    sub_1001F0C48(&unk_10077FA80);
    swift_asyncLet_begin();
    v58 = swift_task_alloc();
    *(v0 + 1184) = v58;
    *v58 = v0;
    v58[1] = sub_1004660D0;

    return sub_1006600F0(v0 + 696);
  }

  else
  {
    v19 = *(v0 + 1048);
    static Logger.restore.getter();
    sub_100007CE8(v1, v19, type metadata accessor for Restore);
    v20 = v4;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1072);
    v26 = *(v0 + 1064);
    v27 = *(v0 + 1048);
    if (v23)
    {
      v28 = *(v0 + 1024);
      v59 = *(v0 + 1064);
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1016);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      *(v31 + 4) = v30;
      *v32 = v30;
      *(v31 + 12) = 2112;
      v33 = *(v27 + *(v28 + 20));
      v34 = v30;
      v24 = v29;
      v26 = v59;
      v35 = v33;
      sub_1004751E8(v27, type metadata accessor for Restore);
      *(v31 + 14) = v35;
      v32[1] = v35;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@][%@] Failed to display hard failure dialog due to non available distributorBundleID", v31, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v27, type metadata accessor for Restore);
    }

    (*(v25 + 8))(v24, v26);
    sub_10000710C(v0 + 952);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_1004660D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[149] = a1;
  v3[150] = a2;

  v4 = swift_task_alloc();
  v3[151] = v4;
  *v4 = v6;
  v4[1] = sub_100466244;

  return sub_1006600F0((v3 + 101));
}

uint64_t sub_100466244(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[152] = a1;
  v3[153] = a2;

  v4 = swift_task_alloc();
  v3[154] = v4;
  *v4 = v6;
  v4[1] = sub_1004663B8;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_1004663B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1240) = a1;
  *(v3 + 1248) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 992, sub_1004664C0, v3 + 656);
}

uint64_t sub_1004664DC()
{
  v6 = *(v0 + 1216);
  v7 = *(v0 + 1240);
  v5 = *(v0 + 1192);
  v1 = *(v0 + 992);
  v2 = *(v0 + 1000);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1256) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 256;

  return _swift_asyncLet_finish(v0 + 16, v0 + 992, sub_1004665BC, v0 + 768);
}

uint64_t sub_1004665BC()
{
  sub_100006EA4(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100466670, v1, v0);
}

uint64_t sub_100466670()
{
  v1 = *(v0 + 1256);

  return _swift_task_switch(sub_100466708, v1, 0);
}

uint64_t sub_100466708()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1264) = qword_100786178;

  return _swift_task_switch(sub_1004667A0, v1, 0);
}

uint64_t sub_1004667A0()
{
  v1 = v0[158];
  v2 = v0[157];
  v3 = sub_100006EA4(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[159] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[160] = v5;
  *v5 = v0;
  v5[1] = sub_1004668DC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 761, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1004668DC()
{
  v1 = *(*v0 + 1264);

  return _swift_task_switch(sub_100466A08, v1, 0);
}

uint64_t sub_100466A08()
{

  *(v0 + 762) = *(v0 + 761);

  return _swift_task_switch(sub_100466A78, 0, 0);
}

uint64_t sub_100466A78()
{
  v36 = v0;
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1136);
  if (*(v0 + 762))
  {
  }

  else
  {
    v3 = *(v0 + 1040);
    v4 = *(v0 + 1016);
    v5 = *(v0 + 1008);
    static Logger.restore.getter();
    sub_100007CE8(v5, v3, type metadata accessor for Restore);

    v6 = v4;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v30 = *(v0 + 1144);
      v31 = *(v0 + 1152);
      v28 = *(v0 + 1136);
      log = *(v0 + 1120);
      v32 = *(v0 + 1072);
      v33 = *(v0 + 1064);
      v34 = *(v0 + 1088);
      v9 = *(v0 + 1040);
      v10 = *(v0 + 1024);
      v11 = *(v0 + 1016);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v12 = 138413058;
      *(v12 + 4) = v11;
      *v13 = v11;
      *(v12 + 12) = 2112;
      v14 = *(v9 + *(v10 + 20));
      v15 = v11;
      v16 = v14;
      sub_1004751E8(v9, type metadata accessor for Restore);
      *(v12 + 14) = v16;
      v13[1] = v16;
      *(v12 + 22) = 2082;
      if (v28)
      {
        v17 = log;
      }

      else
      {
        v17 = 0;
      }

      if (v28)
      {
        v18 = v2;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v19 = sub_1002346CC(v17, v18, &v35);

      *(v12 + 24) = v19;
      *(v12 + 32) = 2082;
      if (v31)
      {
        v20 = v30;
      }

      else
      {
        v20 = 0;
      }

      if (!v31)
      {
        v1 = 0xE000000000000000;
      }

      v21 = sub_1002346CC(v20, v1, &v35);

      *(v12 + 34) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@][%@] Prompt complete with message app: %{public}s not available from distributor: %{public}s", v12, 0x2Au);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      swift_arrayDestroy();

      (*(v32 + 8))(v34, v33);
    }

    else
    {
      v22 = *(v0 + 1088);
      v23 = *(v0 + 1072);
      v24 = *(v0 + 1064);
      v25 = *(v0 + 1040);

      sub_1004751E8(v25, type metadata accessor for Restore);
      (*(v23 + 8))(v22, v24);
    }
  }

  sub_10000710C(v0 + 952);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100466E3C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 920) = v19;
  *(v8 + 912) = a8;
  *(v8 + 904) = a7;
  *(v8 + 896) = a5;
  *(v8 + 888) = a4;
  *(v8 + 880) = a3;
  *(v8 + 841) = a2;
  *(v8 + 872) = a1;
  v10 = type metadata accessor for URL.DirectoryHint();
  *(v8 + 928) = v10;
  *(v8 + 936) = *(v10 - 8);
  *(v8 + 944) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 952) = v11;
  *(v8 + 960) = *(v11 - 8);
  *(v8 + 968) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v8 + 976) = v12;
  *(v8 + 984) = *(v12 - 8);
  *(v8 + 992) = swift_task_alloc();
  v13 = type metadata accessor for Restore();
  *(v8 + 1000) = v13;
  *(v8 + 1008) = *(v13 - 8);
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = swift_task_alloc();
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  v14 = type metadata accessor for AvailableRestore();
  *(v8 + 1072) = v14;
  *(v8 + 1080) = *(v14 - 8);
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v8 + 1104) = v15;
  *(v8 + 1112) = *(v15 - 8);
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 792) = a8;
  *(v8 + 800) = v18;
  *(v8 + 808) = v19;
  *(v8 + 1176) = sub_10020A748((v8 + 768));
  (*(*(a8 - 8) + 16))();

  return _swift_task_switch(sub_1004671E8, 0, 0);
}

uint64_t sub_1004671E8()
{
  v72 = v0;
  v1 = *(v0 + 872);
  v2 = *(v1 + 16);
  *(v0 + 1184) = v2;
  if (v2)
  {
    v3 = *(v0 + 896);
    *(v0 + 844) = enum case for URL.DirectoryHint.inferFromPath(_:);
    *(v0 + 1256) = _swiftEmptyArrayStorage;
    *(v0 + 1248) = _swiftEmptyArrayStorage;
    *(v0 + 1240) = 0;
    *(v0 + 1192) = 0u;
    *(v0 + 1208) = 0u;
    *(v0 + 1224) = 0u;
    v4 = *(v1 + 80);
    v6 = *(v1 + 32);
    v5 = *(v1 + 48);
    *(v0 + 240) = *(v1 + 64);
    *(v0 + 256) = v4;
    *(v0 + 208) = v6;
    *(v0 + 224) = v5;
    v7 = *(v1 + 144);
    v9 = *(v1 + 96);
    v8 = *(v1 + 112);
    *(v0 + 304) = *(v1 + 128);
    *(v0 + 320) = v7;
    *(v0 + 272) = v9;
    *(v0 + 288) = v8;
    sub_100473EC8(v0 + 208, v0 + 336);
    static Logger.restore.getter();
    v10 = v3;
    sub_100473EC8(v0 + 208, v0 + 464);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    sub_100473F24(v0 + 208);
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1152);
    v15 = *(v0 + 1112);
    v16 = *(v0 + 1104);
    if (v13)
    {
      v17 = *(v0 + 896);
      v67 = *(v0 + 1152);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v70 = v20;
      *v18 = 138412546;
      *(v18 + 4) = v17;
      *v19 = v17;
      *(v18 + 12) = 2082;
      v21 = v17;
      v22 = sub_1001F7380();
      v24 = sub_1002346CC(v22, v23, &v70);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Attempting to to get ADPs for batch: %{public}s", v18, 0x16u);
      sub_1000032A8(v19, &qword_10077F920);

      sub_10000710C(v20);

      v25 = *(v15 + 8);
      v25(v67, v16);
    }

    else
    {

      v25 = *(v15 + 8);
      v25(v14, v16);
    }

    *(v0 + 1264) = v25;
    v47 = *(v0 + 896);
    v48 = *(v0 + 841);
    *(v0 + 1272) = *(v0 + 328);
    sub_10020AB78(v0 + 768, v0 + 160);
    v49 = *(v0 + 288);
    *(v0 + 80) = *(v0 + 272);
    *(v0 + 96) = v49;
    v50 = *(v0 + 320);
    *(v0 + 112) = *(v0 + 304);
    *(v0 + 128) = v50;
    v51 = *(v0 + 224);
    *(v0 + 16) = *(v0 + 208);
    *(v0 + 32) = v51;
    v52 = *(v0 + 256);
    *(v0 + 48) = *(v0 + 240);
    *(v0 + 64) = v52;
    *(v0 + 144) = v48;
    *(v0 + 152) = v47;
    v53 = v47;
    sub_100473EC8(v0 + 208, v0 + 592);
    v54 = swift_task_alloc();
    *(v0 + 1280) = v54;
    *v54 = v0;
    v54[1] = sub_100467930;

    return sub_1004EC0B8();
  }

  else
  {
    v26 = *(v0 + 896);
    if (_swiftEmptyArrayStorage[2])
    {
      static Logger.restore.getter();
      v27 = v26;

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 1160);
      v32 = *(v0 + 1112);
      v33 = *(v0 + 1104);
      if (v30)
      {
        v68 = *(v0 + 1160);
        v34 = *(v0 + 896);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v69 = v37;
        *v35 = 138412546;
        *(v35 + 4) = v34;
        *v36 = v34;
        *(v35 + 12) = 2082;
        v38 = _swiftEmptyArrayStorage[2];
        *(v0 + 856) = v38;
        v39 = v34;
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v40;
        v41._countAndFlagsBits = 32;
        v41._object = 0xE100000000000000;
        String.append(_:)(v41);
        v42._countAndFlagsBits = 0x65726F7473657220;
        v42._object = 0xE900000000000073;
        String.append(_:)(v42);
        if (v38 == 1)
        {
          v43 = 0;
        }

        else
        {
          v43 = 115;
        }

        if (v38 == 1)
        {
          v44 = 0xE000000000000000;
        }

        else
        {
          v44 = 0xE100000000000000;
        }

        v45 = v44;
        String.append(_:)(*&v43);

        v46 = sub_1002346CC(v70, v71, &v69);

        *(v35 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v28, v29, "[%@] Discovered ADPs for %{public}s", v35, 0x16u);
        sub_1000032A8(v36, &qword_10077F920);

        sub_10000710C(v37);

        (*(v32 + 8))(v68, v33);
      }

      else
      {

        (*(v32 + 8))(v31, v33);
      }
    }

    else
    {
      static Logger.restore.getter();
      v56 = v26;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 896);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v59;
        *v61 = v59;
        v62 = v59;
        _os_log_impl(&_mh_execute_header, v57, v58, "[%@] No restores discovered", v60, 0xCu);
        sub_1000032A8(v61, &qword_10077F920);
      }

      v63 = *(v0 + 1168);
      v64 = *(v0 + 1112);
      v65 = *(v0 + 1104);

      (*(v64 + 8))(v63, v65);
    }

    sub_10000710C(v0 + 768);

    v66 = *(v0 + 8);

    return v66(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100467930(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[161] = a1;
  v4[162] = a2;
  v4[163] = v2;

  if (v2)
  {
    v5 = sub_100468BB8;
  }

  else
  {
    v5 = sub_100467A4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100467A4C()
{
  v199 = v0;
  v1 = *(v0 + 1272);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(v0 + 1008) + 80);
    v4 = v1 + ((v3 + 32) & ~v3);

    v8 = 0;
    v9 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v8 >= *(v1 + 16))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        return _swift_task_switch(v5, v6, v7);
      }

      v10 = *(v0 + 1024);
      v11 = *(v0 + 1000);
      v12 = *(*(v0 + 1008) + 72);
      sub_100007CE8(v4 + v12 * v8, v10, type metadata accessor for Restore);
      v13 = v10 + *(v11 + 60);
      v14 = *(v0 + 1024);
      if (*(v13 + 8))
      {
        goto LABEL_3;
      }

      v15 = *v13;
      sub_100007CE8(v14, *(v0 + 1016), type metadata accessor for Restore);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 864) = v9;
      v5 = sub_100522FEC(v15);
      v17 = v9[2];
      v18 = (v6 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_75;
      }

      v21 = v6;
      if (v9[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = v5;
          sub_1005C5F70();
          v5 = v27;
        }
      }

      else
      {
        sub_1005BD9BC(v20, isUniquelyReferenced_nonNull_native);
        v5 = sub_100522FEC(v15);
        if ((v21 & 1) != (v22 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v9 = *(v0 + 864);
      v23 = *(v0 + 1024);
      v24 = *(v0 + 1016);
      if (v21)
      {
        break;
      }

      v9[(v5 >> 6) + 8] |= 1 << v5;
      *(v9[6] + 8 * v5) = v15;
      sub_1004640D8(v24, v9[7] + v5 * v12);
      v5 = sub_1004751E8(v23, type metadata accessor for Restore);
      v25 = v9[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_76;
      }

      v9[2] = v26;
LABEL_4:
      if (v2 == ++v8)
      {

        goto LABEL_19;
      }
    }

    sub_10047408C(*(v0 + 1016), v9[7] + v5 * v12);
    v14 = v23;
LABEL_3:
    v5 = sub_1004751E8(v14, type metadata accessor for Restore);
    goto LABEL_4;
  }

  v9 = _swiftEmptyDictionarySingleton;
LABEL_19:
  v28 = (v0 + 841);
  *(v0 + 1312) = v9;
  v29 = *(v0 + 1288);
  v30 = *(v29 + 16);
  *(v0 + 1320) = v30;
  v183 = (v0 + 841);
  if (!v30)
  {
    v66 = *(v0 + 1248);
LABEL_33:
    *(v0 + 1328) = v66;
    v67 = *(v0 + 1296);

    if (*(v67 + 16))
    {
      v68 = swift_task_alloc();
      *(v0 + 1344) = v68;
      *v68 = v0;
      v68[1] = sub_100469748;
      v69 = *(v0 + 1296);
      v70 = *(v0 + 1272);
      v71 = *(v0 + 1176);
      v72 = *(v0 + 920);
      v73 = *(v0 + 912);
      v74 = *(v0 + 904);
      v75 = *(v0 + 896);
      v76 = *v28;

      return sub_10046EC1C(v69, v70, v76, v75, v71, v74, v73, v72);
    }

    else
    {
      sub_100473F78(v0 + 16);

      sub_100473F24(v0 + 208);

      v78 = *(v0 + 1336);
      v79 = *(v0 + 1328);
      v80 = *(v0 + 1232);
      v81 = *(v0 + 1224);
      v82 = *(v0 + 1216);
      v83 = *(v0 + 1208);
      v84 = *(v0 + 1200);
      v85 = *(v0 + 1192);
      *(v0 + 1384) = v78;
      *(v0 + 1376) = v79;
      *(v0 + 1368) = v80;
      *(v0 + 1360) = v82;
      *(v0 + 1352) = v84;
      v86 = *(v0 + 1240) + 1;
      if (v86 == *(v0 + 1184))
      {
        if (v84)
        {
          *(v0 + 720) = v85;
          *(v0 + 728) = v84;
          *(v0 + 736) = v83;
          *(v0 + 744) = v82;
          *(v0 + 752) = v81;
          *(v0 + 760) = v80;
          v87 = swift_task_alloc();
          *(v0 + 1392) = v87;
          *v87 = v0;
          v87[1] = sub_10046A084;
          v88 = *(v0 + 1176);
          v89 = *(v0 + 920);
          v90 = *(v0 + 912);
          v91 = *(v0 + 896);

          return sub_10050A6F0(v0 + 720, v91, v88, v90, v89);
        }

        else
        {
          v151 = *(v0 + 896);
          if (*(v79 + 16))
          {
            static Logger.restore.getter();
            v152 = v151;

            v153 = Logger.logObject.getter();
            v154 = static os_log_type_t.default.getter();

            v155 = os_log_type_enabled(v153, v154);
            v156 = *(v0 + 1160);
            v157 = *(v0 + 1112);
            v158 = *(v0 + 1104);
            if (v155)
            {
              v195 = *(v0 + 1160);
              v159 = *(v0 + 896);
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              v196 = v162;
              *v160 = 138412546;
              *(v160 + 4) = v159;
              *v161 = v159;
              *(v160 + 12) = 2082;
              v191 = v158;
              v163 = *(v78 + 16);
              *(v0 + 856) = v163;
              v164 = v159;
              v197 = dispatch thunk of CustomStringConvertible.description.getter();
              v198 = v165;
              v166._countAndFlagsBits = 32;
              v166._object = 0xE100000000000000;
              String.append(_:)(v166);
              v167._countAndFlagsBits = 0x65726F7473657220;
              v167._object = 0xE900000000000073;
              String.append(_:)(v167);
              if (v163 == 1)
              {
                v168 = 0;
              }

              else
              {
                v168 = 115;
              }

              if (v163 == 1)
              {
                v169 = 0xE000000000000000;
              }

              else
              {
                v169 = 0xE100000000000000;
              }

              v170 = v169;
              String.append(_:)(*&v168);

              v171 = sub_1002346CC(v197, v198, &v196);

              *(v160 + 14) = v171;
              _os_log_impl(&_mh_execute_header, v153, v154, "[%@] Discovered ADPs for %{public}s", v160, 0x16u);
              sub_1000032A8(v161, &qword_10077F920);

              sub_10000710C(v162);

              (*(v157 + 8))(v195, v191);
            }

            else
            {

              (*(v157 + 8))(v156, v158);
            }
          }

          else
          {
            static Logger.restore.getter();
            v172 = v151;
            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v173, v174))
            {
              v175 = *(v0 + 896);
              v176 = swift_slowAlloc();
              v177 = swift_slowAlloc();
              *v176 = 138412290;
              *(v176 + 4) = v175;
              *v177 = v175;
              v178 = v175;
              _os_log_impl(&_mh_execute_header, v173, v174, "[%@] No restores discovered", v176, 0xCu);
              sub_1000032A8(v177, &qword_10077F920);
            }

            v179 = *(v0 + 1168);
            v180 = *(v0 + 1112);
            v181 = *(v0 + 1104);

            (*(v180 + 8))(v179, v181);
          }

          sub_10000710C(v0 + 768);

          v182 = *(v0 + 8);

          return v182(v78);
        }
      }

      else
      {
        *(v0 + 1256) = v78;
        *(v0 + 1248) = v79;
        *(v0 + 1240) = v86;
        *(v0 + 1232) = v80;
        *(v0 + 1224) = v81;
        *(v0 + 1216) = v82;
        *(v0 + 1208) = v83;
        *(v0 + 1200) = v84;
        *(v0 + 1192) = v85;
        v92 = *(v0 + 896);
        v93 = (*(v0 + 872) + (v86 << 7));
        v94 = v93[5];
        v96 = v93[2];
        v95 = v93[3];
        *(v0 + 240) = v93[4];
        *(v0 + 256) = v94;
        *(v0 + 208) = v96;
        *(v0 + 224) = v95;
        v97 = v93[9];
        v99 = v93[6];
        v98 = v93[7];
        *(v0 + 304) = v93[8];
        *(v0 + 320) = v97;
        *(v0 + 272) = v99;
        *(v0 + 288) = v98;
        sub_100473EC8(v0 + 208, v0 + 336);
        static Logger.restore.getter();
        v100 = v92;
        sub_100473EC8(v0 + 208, v0 + 464);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();

        sub_100473F24(v0 + 208);
        v103 = os_log_type_enabled(v101, v102);
        v104 = *(v0 + 1152);
        v105 = *(v0 + 1112);
        v106 = *(v0 + 1104);
        if (v103)
        {
          v107 = *(v0 + 896);
          v193 = *(v0 + 1152);
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v197 = v110;
          *v108 = 138412546;
          *(v108 + 4) = v107;
          *v109 = v107;
          *(v108 + 12) = 2082;
          v111 = v107;
          v112 = sub_1001F7380();
          v114 = sub_1002346CC(v112, v113, &v197);

          *(v108 + 14) = v114;
          _os_log_impl(&_mh_execute_header, v101, v102, "[%@] Attempting to to get ADPs for batch: %{public}s", v108, 0x16u);
          sub_1000032A8(v109, &qword_10077F920);

          sub_10000710C(v110);

          v115 = *(v105 + 8);
          v115(v193, v106);
        }

        else
        {

          v115 = *(v105 + 8);
          v115(v104, v106);
        }

        *(v0 + 1264) = v115;
        v142 = *(v0 + 896);
        v143 = *v183;
        *(v0 + 1272) = *(v0 + 328);
        sub_10020AB78(v0 + 768, v0 + 160);
        v144 = *(v0 + 288);
        *(v0 + 80) = *(v0 + 272);
        *(v0 + 96) = v144;
        v145 = *(v0 + 320);
        *(v0 + 112) = *(v0 + 304);
        *(v0 + 128) = v145;
        v146 = *(v0 + 224);
        *(v0 + 16) = *(v0 + 208);
        *(v0 + 32) = v146;
        v147 = *(v0 + 256);
        *(v0 + 48) = *(v0 + 240);
        *(v0 + 64) = v147;
        *(v0 + 144) = v143;
        *(v0 + 152) = v142;
        v148 = v142;
        sub_100473EC8(v0 + 208, v0 + 592);
        v149 = swift_task_alloc();
        *(v0 + 1280) = v149;
        *v149 = v0;
        v149[1] = sub_100467930;

        return sub_1004EC0B8();
      }
    }
  }

  *(v0 + 1520) = *(*(v0 + 1080) + 80);
  v31 = *(v0 + 1304);
  v32 = (v0 + 1416);
  v192 = *(v0 + 1248);
  *(v0 + 1416) = v192;
  *(v0 + 1408) = 0;
  *(v0 + 1400) = v31;
  v33 = *(v29 + 16);

  if (!v33)
  {
LABEL_30:
    __break(1u);
LABEL_31:

    v28 = v183;
    v66 = v192;
    goto LABEL_33;
  }

  v35 = 0;
  v184 = (v0 + 1416);
  v185 = v0;
  while (1)
  {
    v36 = *(v0 + 1096);
    sub_100007CE8(v34 + ((*(v0 + 1520) + 32) & ~*(v0 + 1520)) + *(*(v0 + 1080) + 72) * v35, v36, type metadata accessor for AvailableRestore);
    v37 = *v36;
    v38 = v36[1];

    v39 = sub_1005B7724(v37, v38);
    if ((v40 & 1) == 0)
    {
      if (*(*(v0 + 1312) + 16))
      {
        v41 = sub_100522FEC(v39);
        if (v42)
        {
          break;
        }
      }
    }

    v43 = *(v0 + 1096);
    v44 = *(v0 + 1088);
    v45 = *(v0 + 896);
    static Logger.restore.getter();
    sub_100007CE8(v43, v44, type metadata accessor for AvailableRestore);
    v46 = v45;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 1264);
    v51 = *(v0 + 1144);
    v52 = *(v0 + 1104);
    v53 = *(v0 + 1088);
    if (v49)
    {
      v189 = *(v0 + 1144);
      v54 = *(v0 + 896);
      v187 = *(v0 + 1104);
      v55 = swift_slowAlloc();
      v186 = v50;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v197 = v57;
      *v55 = 138412546;
      *(v55 + 4) = v54;
      *v56 = v54;
      *(v55 + 12) = 2082;
      v58 = v31;
      v59 = *v53;
      v60 = v53[1];
      v61 = v54;

      sub_1004751E8(v53, type metadata accessor for AvailableRestore);
      v62 = v59;
      v31 = v58;
      v0 = v185;
      v63 = sub_1002346CC(v62, v60, &v197);
      v32 = v184;

      *(v55 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%@] Unable to find matching restore for itemID: %{public}s", v55, 0x16u);
      sub_1000032A8(v56, &qword_10077F920);

      sub_10000710C(v57);

      v186(v189, v187);
    }

    else
    {

      sub_1004751E8(v53, type metadata accessor for AvailableRestore);
      v50(v51, v52);
    }

    v64 = *(v0 + 1320);
    v65 = *(v0 + 1408) + 1;
    sub_1004751E8(*(v0 + 1096), type metadata accessor for AvailableRestore);
    if (v65 == v64)
    {
      goto LABEL_31;
    }

    v35 = *(v0 + 1408) + 1;
    *v32 = v192;
    *(v0 + 1408) = v35;
    *(v0 + 1400) = v31;
    v34 = *(v0 + 1288);
    if (v35 >= *(v34 + 16))
    {
      goto LABEL_30;
    }
  }

  v116 = *(v0 + 1096);
  v117 = *(v0 + 1072);
  v188 = *(v0 + 1064);
  v118 = *(v0 + 1056);
  v119 = *(v0 + 1000);
  v120 = *(v0 + 984);
  v121 = *(v0 + 976);
  v190 = *(v0 + 1048);
  v194 = *(v0 + 896);
  v122 = *(*(v0 + 1312) + 56);
  v123 = *(*(v0 + 1008) + 72);
  *(v0 + 1432) = v123;
  sub_100007CE8(v122 + v123 * v41, v188, type metadata accessor for Restore);
  sub_100007CE8(v188, v118, type metadata accessor for Restore);
  v124 = v117[6];
  v125 = v119[17];
  sub_1000032A8(v118 + v125, &unk_1007809F0);
  (*(v120 + 16))(v118 + v125, v116 + v124, v121);
  (*(v120 + 56))(v118 + v125, 0, 1, v121);
  v126 = (v116 + v117[8]);
  v127 = *v126;
  v128 = v126[1];
  v129 = (v118 + v119[18]);

  *v129 = v127;
  v129[1] = v128;
  sub_10047401C(v116 + v117[7], v118 + v119[23]);
  *(v118 + v119[11]) = 4;
  static Logger.restore.getter();
  sub_100007CE8(v188, v190, type metadata accessor for Restore);
  v130 = v194;
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();

  v133 = os_log_type_enabled(v131, v132);
  v134 = *(v0 + 1048);
  if (v133)
  {
    v135 = *(v0 + 1000);
    v136 = *(v0 + 896);
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v137 = 138412546;
    *(v137 + 4) = v136;
    *v138 = v136;
    *(v137 + 12) = 2112;
    v139 = *(v134 + *(v135 + 20));
    v140 = v136;
    v141 = v139;
    sub_1004751E8(v134, type metadata accessor for Restore);
    *(v137 + 14) = v141;
    v138[1] = v141;
    _os_log_impl(&_mh_execute_header, v131, v132, "[%@][%@] Updated restore ADP", v137, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004751E8(v134, type metadata accessor for Restore);
  }

  v150 = *(v0 + 904);
  (*(v0 + 1264))(*(v0 + 1136), *(v0 + 1104));
  v6 = *(v150 + 16);
  *(v0 + 1440) = v6;
  v5 = sub_10046A658;
  v7 = 0;

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100468BB8()
{
  v118 = v0;
  sub_100473F78(v0 + 16);
  v1 = *(v0 + 1304);
  *(v0 + 1472) = *(v0 + 1248);
  *(v0 + 1464) = v1;
  v2 = *(v0 + 896);
  static Logger.restore.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 896);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2114;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error fetching restores: %{public}@", v7, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 1272);
  v12 = *(v0 + 1264);
  v13 = *(v0 + 1120);
  v14 = *(v0 + 1104);

  v12(v13, v14);
  v15 = *(v11 + 16);
  *(v0 + 1488) = v15;
  if (v15)
  {
    v16 = *(v0 + 1008);
    v17 = *(v16 + 80);
    *(v0 + 1524) = v17;
    v18 = (v17 + 32) & ~v17;
    *(v0 + 1496) = *(v16 + 72);
    *(v0 + 1504) = 0;
    v19 = *(v0 + 1032);

    sub_100007CE8(v20 + v18, v19, type metadata accessor for Restore);
    v21 = swift_task_alloc();
    *(v0 + 1512) = v21;
    *v21 = v0;
    v21[1] = sub_10046C624;
    v22 = *(v0 + 1032);
    v23 = *(v0 + 896);

    return sub_100446FE0(v22, v23);
  }

  *(v0 + 848) = *(v0 + 1464);
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast() && *(v0 + 840) == 1 && *(v0 + 888))
  {
    v25 = 0;
    v26 = (v0 + 888);
    v27 = (v0 + 880);
    v28 = *(*(v0 + 1272) + 16);
    while (v28 != v25)
    {
      v29 = (*(v0 + 1272) + ((*(*(v0 + 1008) + 80) + 32) & ~*(*(v0 + 1008) + 80)) + *(*(v0 + 1008) + 72) * v25 + *(*(v0 + 1000) + 36));
      if (*v29 != *(v0 + 880) || *(v0 + 888) != v29[1])
      {
        ++v25;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      v31 = *(v0 + 1200);
      v32 = *(v0 + 1192);
      v34 = *(v0 + 256);
      v33 = *(v0 + 264);
      v36 = *(v0 + 208);
      v35 = *(v0 + 216);

      sub_100473FCC(v32, v31);

      sub_100473F24(v0 + 208);
      goto LABEL_19;
    }
  }

  sub_100473F24(v0 + 208);
  v35 = *(v0 + 1232);
  v36 = *(v0 + 1224);
  v33 = *(v0 + 1216);
  v26 = (v0 + 1200);
  v27 = (v0 + 1192);
  v34 = *(v0 + 1208);
LABEL_19:
  v37 = *(v0 + 1480);
  v38 = *(v0 + 1472);
  v39 = *v26;
  v40 = *v27;
  *(v0 + 1384) = v37;
  *(v0 + 1376) = v38;
  *(v0 + 1368) = v35;
  *(v0 + 1360) = v33;
  *(v0 + 1352) = v39;
  v41 = *(v0 + 1240) + 1;
  if (v41 == *(v0 + 1184))
  {
    if (v39)
    {
      *(v0 + 720) = v40;
      *(v0 + 728) = v39;
      *(v0 + 736) = v34;
      *(v0 + 744) = v33;
      *(v0 + 752) = v36;
      *(v0 + 760) = v35;
      v42 = swift_task_alloc();
      *(v0 + 1392) = v42;
      *v42 = v0;
      v42[1] = sub_10046A084;
      v43 = *(v0 + 1176);
      v44 = *(v0 + 920);
      v45 = *(v0 + 912);
      v46 = *(v0 + 896);

      return sub_10050A6F0(v0 + 720, v46, v43, v45, v44);
    }

    v79 = *(v0 + 896);
    if (*(v38 + 16))
    {
      static Logger.restore.getter();
      v80 = v79;

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();

      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 1160);
      v85 = *(v0 + 1112);
      v86 = *(v0 + 1104);
      if (v83)
      {
        v114 = *(v0 + 1160);
        v87 = *(v0 + 896);
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v115 = v90;
        *v88 = 138412546;
        *(v88 + 4) = v87;
        *v89 = v87;
        *(v88 + 12) = 2082;
        v112 = v86;
        v91 = *(v37 + 16);
        *(v0 + 856) = v91;
        v92 = v87;
        v116 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = v93;
        v94._countAndFlagsBits = 32;
        v94._object = 0xE100000000000000;
        String.append(_:)(v94);
        v95._countAndFlagsBits = 0x65726F7473657220;
        v95._object = 0xE900000000000073;
        String.append(_:)(v95);
        if (v91 == 1)
        {
          v96 = 0;
        }

        else
        {
          v96 = 115;
        }

        if (v91 == 1)
        {
          v97 = 0xE000000000000000;
        }

        else
        {
          v97 = 0xE100000000000000;
        }

        v98 = v97;
        String.append(_:)(*&v96);

        v99 = sub_1002346CC(v116, v117, &v115);

        *(v88 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v81, v82, "[%@] Discovered ADPs for %{public}s", v88, 0x16u);
        sub_1000032A8(v89, &qword_10077F920);

        sub_10000710C(v90);

        (*(v85 + 8))(v114, v112);
        goto LABEL_44;
      }

      v109 = *(v85 + 8);
      v110 = v84;
    }

    else
    {
      static Logger.restore.getter();
      v100 = v79;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = *(v0 + 896);
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 138412290;
        *(v104 + 4) = v103;
        *v105 = v103;
        v106 = v103;
        _os_log_impl(&_mh_execute_header, v101, v102, "[%@] No restores discovered", v104, 0xCu);
        sub_1000032A8(v105, &qword_10077F920);
      }

      v107 = *(v0 + 1168);
      v108 = *(v0 + 1112);
      v86 = *(v0 + 1104);

      v109 = *(v108 + 8);
      v110 = v107;
    }

    v109(v110, v86);
LABEL_44:
    sub_10000710C(v0 + 768);

    v111 = *(v0 + 8);

    return v111(v37);
  }

  *(v0 + 1256) = v37;
  *(v0 + 1248) = v38;
  *(v0 + 1240) = v41;
  *(v0 + 1232) = v35;
  *(v0 + 1224) = v36;
  *(v0 + 1216) = v33;
  *(v0 + 1208) = v34;
  *(v0 + 1200) = v39;
  *(v0 + 1192) = v40;
  v47 = *(v0 + 896);
  v48 = (*(v0 + 872) + (v41 << 7));
  v49 = v48[5];
  v51 = v48[2];
  v50 = v48[3];
  *(v0 + 240) = v48[4];
  *(v0 + 256) = v49;
  *(v0 + 208) = v51;
  *(v0 + 224) = v50;
  v52 = v48[9];
  v54 = v48[6];
  v53 = v48[7];
  *(v0 + 304) = v48[8];
  *(v0 + 320) = v52;
  *(v0 + 272) = v54;
  *(v0 + 288) = v53;
  sub_100473EC8(v0 + 208, v0 + 336);
  static Logger.restore.getter();
  v55 = v47;
  sub_100473EC8(v0 + 208, v0 + 464);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  sub_100473F24(v0 + 208);
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v0 + 1152);
  v60 = *(v0 + 1112);
  v61 = *(v0 + 1104);
  if (v58)
  {
    v62 = *(v0 + 896);
    v113 = *(v0 + 1152);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v116 = v65;
    *v63 = 138412546;
    *(v63 + 4) = v62;
    *v64 = v62;
    *(v63 + 12) = 2082;
    v66 = v62;
    v67 = sub_1001F7380();
    v69 = sub_1002346CC(v67, v68, &v116);

    *(v63 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v56, v57, "[%@] Attempting to to get ADPs for batch: %{public}s", v63, 0x16u);
    sub_1000032A8(v64, &qword_10077F920);

    sub_10000710C(v65);

    v70 = *(v60 + 8);
    v70(v113, v61);
  }

  else
  {

    v70 = *(v60 + 8);
    v70(v59, v61);
  }

  *(v0 + 1264) = v70;
  v71 = *(v0 + 896);
  v72 = *(v0 + 841);
  *(v0 + 1272) = *(v0 + 328);
  sub_10020AB78(v0 + 768, v0 + 160);
  v73 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v73;
  v74 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v74;
  v75 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v75;
  v76 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v76;
  *(v0 + 144) = v72;
  *(v0 + 152) = v71;
  v77 = v71;
  sub_100473EC8(v0 + 208, v0 + 592);
  v78 = swift_task_alloc();
  *(v0 + 1280) = v78;
  *v78 = v0;
  v78[1] = sub_100467930;

  return sub_1004EC0B8();
}

uint64_t sub_100469748()
{
  v1 = *v0;

  sub_100473F24(v1 + 208);

  return _swift_task_switch(sub_100469868, 0, 0);
}

uint64_t sub_100469868()
{
  v87 = v0;
  sub_100473F78(v0 + 16);

  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1224);
  v5 = *(v0 + 1216);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 1192);
  *(v0 + 1384) = v1;
  *(v0 + 1376) = v2;
  *(v0 + 1368) = v3;
  *(v0 + 1360) = v5;
  *(v0 + 1352) = v7;
  v9 = *(v0 + 1240) + 1;
  if (v9 == *(v0 + 1184))
  {
    if (v7)
    {
      *(v0 + 720) = v8;
      *(v0 + 728) = v7;
      *(v0 + 736) = v6;
      *(v0 + 744) = v5;
      *(v0 + 752) = v4;
      *(v0 + 760) = v3;
      v10 = swift_task_alloc();
      *(v0 + 1392) = v10;
      *v10 = v0;
      v10[1] = sub_10046A084;
      v11 = *(v0 + 1176);
      v12 = *(v0 + 920);
      v13 = *(v0 + 912);
      v14 = *(v0 + 896);

      return sub_10050A6F0(v0 + 720, v14, v11, v13, v12);
    }

    v48 = *(v0 + 896);
    if (*(v2 + 16))
    {
      static Logger.restore.getter();
      v49 = v48;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v0 + 1160);
      v54 = *(v0 + 1112);
      v55 = *(v0 + 1104);
      if (v52)
      {
        v83 = *(v0 + 1160);
        v56 = *(v0 + 896);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v84 = v59;
        *v57 = 138412546;
        *(v57 + 4) = v56;
        *v58 = v56;
        *(v57 + 12) = 2082;
        v81 = v55;
        v60 = *(v1 + 16);
        *(v0 + 856) = v60;
        v61 = v56;
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v62;
        v63._countAndFlagsBits = 32;
        v63._object = 0xE100000000000000;
        String.append(_:)(v63);
        v64._countAndFlagsBits = 0x65726F7473657220;
        v64._object = 0xE900000000000073;
        String.append(_:)(v64);
        if (v60 == 1)
        {
          v65 = 0;
        }

        else
        {
          v65 = 115;
        }

        if (v60 == 1)
        {
          v66 = 0xE000000000000000;
        }

        else
        {
          v66 = 0xE100000000000000;
        }

        v67 = v66;
        String.append(_:)(*&v65);

        v68 = sub_1002346CC(v85, v86, &v84);

        *(v57 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v50, v51, "[%@] Discovered ADPs for %{public}s", v57, 0x16u);
        sub_1000032A8(v58, &qword_10077F920);

        sub_10000710C(v59);

        (*(v54 + 8))(v83, v81);
        goto LABEL_26;
      }

      v78 = *(v54 + 8);
      v79 = v53;
    }

    else
    {
      static Logger.restore.getter();
      v69 = v48;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = *(v0 + 896);
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v72;
        *v74 = v72;
        v75 = v72;
        _os_log_impl(&_mh_execute_header, v70, v71, "[%@] No restores discovered", v73, 0xCu);
        sub_1000032A8(v74, &qword_10077F920);
      }

      v76 = *(v0 + 1168);
      v77 = *(v0 + 1112);
      v55 = *(v0 + 1104);

      v78 = *(v77 + 8);
      v79 = v76;
    }

    v78(v79, v55);
LABEL_26:
    sub_10000710C(v0 + 768);

    v80 = *(v0 + 8);

    return v80(v1);
  }

  *(v0 + 1256) = v1;
  *(v0 + 1248) = v2;
  *(v0 + 1240) = v9;
  *(v0 + 1232) = v3;
  *(v0 + 1224) = v4;
  *(v0 + 1216) = v5;
  *(v0 + 1208) = v6;
  *(v0 + 1200) = v7;
  *(v0 + 1192) = v8;
  v16 = *(v0 + 896);
  v17 = (*(v0 + 872) + (v9 << 7));
  v18 = v17[5];
  v20 = v17[2];
  v19 = v17[3];
  *(v0 + 240) = v17[4];
  *(v0 + 256) = v18;
  *(v0 + 208) = v20;
  *(v0 + 224) = v19;
  v21 = v17[9];
  v23 = v17[6];
  v22 = v17[7];
  *(v0 + 304) = v17[8];
  *(v0 + 320) = v21;
  *(v0 + 272) = v23;
  *(v0 + 288) = v22;
  sub_100473EC8(v0 + 208, v0 + 336);
  static Logger.restore.getter();
  v24 = v16;
  sub_100473EC8(v0 + 208, v0 + 464);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  sub_100473F24(v0 + 208);
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 1152);
  v29 = *(v0 + 1112);
  v30 = *(v0 + 1104);
  if (v27)
  {
    v31 = *(v0 + 896);
    v82 = *(v0 + 1152);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v85 = v34;
    *v32 = 138412546;
    *(v32 + 4) = v31;
    *v33 = v31;
    *(v32 + 12) = 2082;
    v35 = v31;
    v36 = sub_1001F7380();
    v38 = sub_1002346CC(v36, v37, &v85);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Attempting to to get ADPs for batch: %{public}s", v32, 0x16u);
    sub_1000032A8(v33, &qword_10077F920);

    sub_10000710C(v34);

    v39 = *(v29 + 8);
    v39(v82, v30);
  }

  else
  {

    v39 = *(v29 + 8);
    v39(v28, v30);
  }

  *(v0 + 1264) = v39;
  v40 = *(v0 + 896);
  v41 = *(v0 + 841);
  *(v0 + 1272) = *(v0 + 328);
  sub_10020AB78(v0 + 768, v0 + 160);
  v42 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v42;
  v43 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v43;
  v44 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v44;
  v45 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v45;
  *(v0 + 144) = v41;
  *(v0 + 152) = v40;
  v46 = v40;
  sub_100473EC8(v0 + 208, v0 + 592);
  v47 = swift_task_alloc();
  *(v0 + 1280) = v47;
  *v47 = v0;
  v47[1] = sub_100467930;

  return sub_1004EC0B8();
}

uint64_t sub_10046A084()
{

  return _swift_task_switch(sub_10046A1DC, 0, 0);
}

uint64_t sub_10046A1DC()
{
  v41 = v0;
  v1 = v0[173];
  v2 = v0[112];
  v37 = v1;
  if (*(v0[172] + 16))
  {
    static Logger.restore.getter();
    v3 = v2;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[145];
    v8 = v0[139];
    v9 = v0[138];
    if (v6)
    {
      v36 = v0[145];
      v10 = v0[112];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v10;
      *v12 = v10;
      *(v11 + 12) = 2082;
      v35 = v9;
      v14 = *(v1 + 16);
      v0[107] = v14;
      v15 = v10;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v16;
      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 0x65726F7473657220;
      v18._object = 0xE900000000000073;
      String.append(_:)(v18);
      if (v14 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = 115;
      }

      if (v14 == 1)
      {
        v20 = 0xE000000000000000;
      }

      else
      {
        v20 = 0xE100000000000000;
      }

      v21 = v20;
      String.append(_:)(*&v19);

      v22 = sub_1002346CC(v39, v40, &v38);

      *(v11 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Discovered ADPs for %{public}s", v11, 0x16u);
      sub_1000032A8(v12, &qword_10077F920);

      sub_10000710C(v13);

      (*(v8 + 8))(v36, v35);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }
  }

  else
  {
    static Logger.restore.getter();
    v23 = v2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[112];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] No restores discovered", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v30 = v0[146];
    v31 = v0[139];
    v32 = v0[138];

    (*(v31 + 8))(v30, v32);
  }

  sub_10000710C((v0 + 96));

  v33 = v0[1];

  return v33(v37);
}

uint64_t sub_10046A658()
{
  v1 = *(v0 + 844);
  v18 = *(v0 + 1400);
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v17 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 928);
  (*(v3 + 16))(v2);
  *(v0 + 816) = UUID.uuidString.getter();
  *(v0 + 824) = v7;
  (*(v5 + 104))(v4, v1, v6);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v4, v6);

  (*(v3 + 8))(v2, v17);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100006EA4(&qword_100784330, type metadata accessor for Restore);
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v18)
  {

    *(v0 + 1456) = v18;
    (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
    v12 = sub_10046B8DC;
  }

  else
  {
    v10 = v8;
    v11 = v9;

    Data.write(to:options:)();
    *(v0 + 1448) = 0;
    v13 = *(v0 + 992);
    v14 = *(v0 + 984);
    v15 = *(v0 + 976);
    sub_100007158(v10, v11);
    (*(v14 + 8))(v13, v15);
    v12 = sub_10046A8E4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10046A8E4()
{
  v177 = v0;
  sub_100007CE8(v0[132], v0[130], type metadata accessor for Restore);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[177];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_51:
    v2 = sub_100363E00(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100363E00(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = v0[179];
  v6 = v0[132];
  v7 = v0[130];
  v166 = v0;
  v8 = v0[126];
  sub_1004751E8(v0[133], type metadata accessor for Restore);
  v2[2] = v4 + 1;
  v9 = *(v8 + 80);
  v10 = v0;
  sub_1004640D8(v7, v2 + ((v9 + 32) & ~v9) + v5 * v4);
  sub_1004751E8(v6, type metadata accessor for Restore);
  v0 = v0[181];
  v11 = v10[165];
  v12 = v10[176] + 1;
  sub_1004751E8(v10[137], type metadata accessor for AvailableRestore);
  if (v12 == v11)
  {
LABEL_5:

    v10[167] = v2;
    v10[166] = v2;
    v13 = v10[162];

    if (*(v13 + 16))
    {
      v14 = swift_task_alloc();
      v10[168] = v14;
      *v14 = v10;
      v14[1] = sub_100469748;
      v15 = v10[159];
      v16 = v10[147];
      v17 = v10[115];
      v18 = v10[114];
      v19 = v10[113];
      v20 = v10[112];
      v21 = *(v10 + 841);
      v22 = v10[162];

      return sub_10046EC1C(v22, v15, v21, v20, v16, v19, v18, v17);
    }

    else
    {
      sub_100473F78((v10 + 2));

      sub_100473F24((v10 + 26));

      v55 = v10[167];
      v56 = v10[166];
      v57 = v10[154];
      v58 = v10[153];
      v59 = v10[152];
      v60 = v10[151];
      v61 = v10[150];
      v62 = v10[149];
      v10[173] = v55;
      v10[172] = v56;
      v10[171] = v57;
      v10[170] = v59;
      v10[169] = v61;
      v63 = v10[155] + 1;
      if (v63 == v10[148])
      {
        if (v61)
        {
          v10[90] = v62;
          v10[91] = v61;
          v10[92] = v60;
          v10[93] = v59;
          v10[94] = v58;
          v10[95] = v57;
          v64 = swift_task_alloc();
          v10[174] = v64;
          *v64 = v10;
          v64[1] = sub_10046A084;
          v65 = v10[147];
          v66 = v10[115];
          v67 = v10[114];
          v68 = v10[112];

          return sub_10050A6F0((v10 + 90), v68, v65, v67, v66);
        }

        else
        {
          v131 = v10[112];
          if (*(v56 + 16))
          {
            static Logger.restore.getter();
            v132 = v131;

            v133 = Logger.logObject.getter();
            v134 = static os_log_type_t.default.getter();

            v135 = os_log_type_enabled(v133, v134);
            v136 = v10[145];
            v137 = v10[139];
            v138 = v10[138];
            if (v135)
            {
              v173 = v10[138];
              v139 = v10[112];
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              v174 = v142;
              *v140 = 138412546;
              *(v140 + 4) = v139;
              *v141 = v139;
              *(v140 + 12) = 2082;
              v143 = *(v55 + 16);
              v166[107] = v143;
              v144 = v139;
              v175 = dispatch thunk of CustomStringConvertible.description.getter();
              v176 = v145;
              v146._countAndFlagsBits = 32;
              v146._object = 0xE100000000000000;
              String.append(_:)(v146);
              v147._countAndFlagsBits = 0x65726F7473657220;
              v147._object = 0xE900000000000073;
              String.append(_:)(v147);
              if (v143 == 1)
              {
                v148 = 0;
              }

              else
              {
                v148 = 115;
              }

              if (v143 == 1)
              {
                v149 = 0xE000000000000000;
              }

              else
              {
                v149 = 0xE100000000000000;
              }

              v150 = v149;
              String.append(_:)(*&v148);

              v151 = sub_1002346CC(v175, v176, &v174);

              *(v140 + 14) = v151;
              _os_log_impl(&_mh_execute_header, v133, v134, "[%@] Discovered ADPs for %{public}s", v140, 0x16u);
              sub_1000032A8(v141, &qword_10077F920);

              sub_10000710C(v142);

              v10 = v166;

              (*(v137 + 8))(v136, v173);
            }

            else
            {

              (*(v137 + 8))(v136, v138);
            }
          }

          else
          {
            static Logger.restore.getter();
            v154 = v131;
            v155 = Logger.logObject.getter();
            v156 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v155, v156))
            {
              v157 = v10[112];
              v158 = swift_slowAlloc();
              v159 = swift_slowAlloc();
              *v158 = 138412290;
              *(v158 + 4) = v157;
              *v159 = v157;
              v160 = v157;
              _os_log_impl(&_mh_execute_header, v155, v156, "[%@] No restores discovered", v158, 0xCu);
              sub_1000032A8(v159, &qword_10077F920);
            }

            v161 = v10[146];
            v162 = v10[139];
            v163 = v10[138];

            (*(v162 + 8))(v161, v163);
          }

          sub_10000710C((v10 + 96));

          v164 = v10[1];

          return v164(v55);
        }
      }

      else
      {
        v10[157] = v55;
        v10[156] = v56;
        v10[155] = v63;
        v10[154] = v57;
        v10[153] = v58;
        v10[152] = v59;
        v10[151] = v60;
        v10[150] = v61;
        v10[149] = v62;
        v69 = v10[112];
        v70 = (v10[109] + (v63 << 7));
        v71 = v70[5];
        v73 = v70[2];
        v72 = v70[3];
        *(v10 + 15) = v70[4];
        *(v10 + 16) = v71;
        *(v10 + 13) = v73;
        *(v10 + 14) = v72;
        v74 = v70[9];
        v76 = v70[6];
        v75 = v70[7];
        *(v10 + 19) = v70[8];
        *(v10 + 20) = v74;
        *(v10 + 17) = v76;
        *(v10 + 18) = v75;
        sub_100473EC8((v10 + 26), (v10 + 42));
        static Logger.restore.getter();
        v77 = v69;
        sub_100473EC8((v10 + 26), (v10 + 58));
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();

        sub_100473F24((v10 + 26));
        v80 = os_log_type_enabled(v78, v79);
        v81 = v10[144];
        v82 = v10[139];
        v83 = v10[138];
        if (v80)
        {
          v84 = v10[112];
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v175 = v87;
          *v85 = 138412546;
          *(v85 + 4) = v84;
          *v86 = v84;
          *(v85 + 12) = 2082;
          v88 = v84;
          v89 = sub_1001F7380();
          v91 = sub_1002346CC(v89, v90, &v175);

          *(v85 + 14) = v91;
          _os_log_impl(&_mh_execute_header, v78, v79, "[%@] Attempting to to get ADPs for batch: %{public}s", v85, 0x16u);
          sub_1000032A8(v86, &qword_10077F920);

          sub_10000710C(v87);
          v10 = v166;
        }

        v92 = *(v82 + 8);
        v92(v81, v83);
        v10[158] = v92;
        v93 = v10[112];
        v94 = *(v10 + 841);
        v10[159] = v10[41];
        sub_10020AB78((v10 + 96), (v10 + 20));
        v95 = *(v10 + 18);
        *(v10 + 5) = *(v10 + 17);
        *(v10 + 6) = v95;
        v96 = *(v10 + 20);
        *(v10 + 7) = *(v10 + 19);
        *(v10 + 8) = v96;
        v97 = *(v10 + 14);
        *(v10 + 1) = *(v10 + 13);
        *(v10 + 2) = v97;
        v98 = *(v10 + 16);
        *(v10 + 3) = *(v10 + 15);
        *(v10 + 4) = v98;
        *(v10 + 144) = v94;
        v10[19] = v93;
        v99 = v93;
        sub_100473EC8((v10 + 26), (v10 + 74));
        v100 = swift_task_alloc();
        v10[160] = v100;
        *v100 = v10;
        v100[1] = sub_100467930;

        return sub_1004EC0B8();
      }
    }
  }

  else
  {
    v165 = v0;
    while (1)
    {
      v26 = v10[176] + 1;
      v10[178] = v2;
      v10[177] = v2;
      v10[176] = v26;
      v10[175] = v0;
      v27 = v10[161];
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v28 = v10[137];
      sub_100007CE8(v27 + ((*(v10 + 1520) + 32) & ~*(v10 + 1520)) + *(v10[135] + 72) * v26, v28, type metadata accessor for AvailableRestore);
      v30 = *v28;
      v29 = v28[1];

      v31 = sub_1005B7724(v30, v29);
      if ((v32 & 1) == 0)
      {
        if (*(v10[164] + 16))
        {
          v33 = sub_100522FEC(v31);
          if (v34)
          {
            break;
          }
        }
      }

      v35 = v10[137];
      v36 = v10[136];
      v37 = v10[112];
      static Logger.restore.getter();
      sub_100007CE8(v35, v36, type metadata accessor for AvailableRestore);
      v38 = v37;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v10[158];
      v43 = v10[143];
      v44 = v10[138];
      v45 = v10[136];
      if (v41)
      {
        v46 = v2;
        v47 = v10[112];
        v170 = v10[158];
        v48 = swift_slowAlloc();
        v169 = v44;
        v49 = swift_slowAlloc();
        v167 = v43;
        v50 = swift_slowAlloc();
        v175 = v50;
        *v48 = 138412546;
        *(v48 + 4) = v47;
        *v49 = v47;
        *(v48 + 12) = 2082;
        v51 = *v45;
        v52 = v45[1];
        v53 = v47;
        v2 = v46;
        v0 = v165;

        sub_1004751E8(v45, type metadata accessor for AvailableRestore);
        v54 = sub_1002346CC(v51, v52, &v175);
        v10 = v166;

        *(v48 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v39, v40, "[%@] Unable to find matching restore for itemID: %{public}s", v48, 0x16u);
        sub_1000032A8(v49, &qword_10077F920);

        sub_10000710C(v50);

        v170(v167, v169);
      }

      else
      {

        sub_1004751E8(v45, type metadata accessor for AvailableRestore);
        v42(v43, v44);
      }

      v24 = v10[165];
      v25 = v10[176] + 1;
      sub_1004751E8(v10[137], type metadata accessor for AvailableRestore);
      if (v25 == v24)
      {
        goto LABEL_5;
      }
    }

    v101 = v10[164];
    v102 = v10[137];
    v103 = v10[134];
    v168 = v10[133];
    v104 = v10[132];
    v105 = v10[131];
    v106 = v10[126];
    v107 = v10[125];
    v108 = v166[123];
    v109 = v166[122];
    v171 = v105;
    v172 = v166[112];
    v110 = *(v101 + 56);
    v111 = *(v106 + 72);
    v166[179] = v111;
    sub_100007CE8(v110 + v111 * v33, v168, type metadata accessor for Restore);
    sub_100007CE8(v168, v104, type metadata accessor for Restore);
    v112 = v103[6];
    v113 = v107[17];
    sub_1000032A8(v104 + v113, &unk_1007809F0);
    (*(v108 + 16))(v104 + v113, v102 + v112, v109);
    (*(v108 + 56))(v104 + v113, 0, 1, v109);
    v114 = (v102 + v103[8]);
    v115 = *v114;
    v116 = v114[1];
    v117 = (v104 + v107[18]);

    v118 = v166;

    *v117 = v115;
    v117[1] = v116;
    sub_10047401C(v102 + v103[7], v104 + v107[23]);
    *(v104 + v107[11]) = 4;
    static Logger.restore.getter();
    sub_100007CE8(v168, v171, type metadata accessor for Restore);
    v119 = v172;
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();

    v122 = os_log_type_enabled(v120, v121);
    v123 = v166[131];
    if (v122)
    {
      v124 = v166[125];
      v125 = v166[112];
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138412546;
      *(v126 + 4) = v125;
      *v127 = v125;
      *(v126 + 12) = 2112;
      v128 = *(v123 + *(v124 + 20));
      v129 = v125;
      v118 = v166;
      v130 = v128;
      sub_1004751E8(v123, type metadata accessor for Restore);
      *(v126 + 14) = v130;
      v127[1] = v130;
      _os_log_impl(&_mh_execute_header, v120, v121, "[%@][%@] Updated restore ADP", v126, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v123, type metadata accessor for Restore);
    }

    v152 = v118[113];
    (v118[158])(v118[142], v118[138]);
    v153 = *(v152 + 16);
    v118[180] = v153;

    return _swift_task_switch(sub_10046A658, v153, 0);
  }
}

uint64_t sub_10046B8DC()
{
  v129 = v0;
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to save checkpoint: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = *(v0 + 1264);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1104);
  v122 = *(v0 + 1096);
  v9 = *(v0 + 1064);
  v10 = *(v0 + 1056);

  v6(v7, v8);
  swift_willThrow();
  swift_bridgeObjectRelease_n();

  sub_1004751E8(v9, type metadata accessor for Restore);
  sub_100473F78(v0 + 16);
  sub_1004751E8(v10, type metadata accessor for Restore);
  sub_1004751E8(v122, type metadata accessor for AvailableRestore);

  v11 = *(v0 + 1456);
  *(v0 + 1472) = *(v0 + 1416);
  *(v0 + 1464) = v11;
  v12 = *(v0 + 896);
  static Logger.restore.getter();
  v13 = v12;
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 896);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v16;
    *v18 = v16;
    *(v17 + 12) = 2114;
    v19 = v16;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v20;
    v18[1] = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Error fetching restores: %{public}@", v17, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v21 = *(v0 + 1272);
  v22 = *(v0 + 1264);
  v23 = *(v0 + 1120);
  v24 = *(v0 + 1104);

  v22(v23, v24);
  v25 = *(v21 + 16);
  *(v0 + 1488) = v25;
  if (v25)
  {
    v26 = *(v0 + 1008);
    v27 = *(v26 + 80);
    *(v0 + 1524) = v27;
    v28 = (v27 + 32) & ~v27;
    *(v0 + 1496) = *(v26 + 72);
    *(v0 + 1504) = 0;
    v29 = *(v0 + 1032);

    sub_100007CE8(v30 + v28, v29, type metadata accessor for Restore);
    v31 = swift_task_alloc();
    *(v0 + 1512) = v31;
    *v31 = v0;
    v31[1] = sub_10046C624;
    v32 = *(v0 + 1032);
    v33 = *(v0 + 896);

    return sub_100446FE0(v32, v33);
  }

  *(v0 + 848) = *(v0 + 1464);
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast() && *(v0 + 840) == 1 && *(v0 + 888))
  {
    v35 = 0;
    v36 = (v0 + 888);
    v37 = (v0 + 880);
    v38 = *(*(v0 + 1272) + 16);
    while (v38 != v35)
    {
      v39 = (*(v0 + 1272) + ((*(*(v0 + 1008) + 80) + 32) & ~*(*(v0 + 1008) + 80)) + *(*(v0 + 1008) + 72) * v35 + *(*(v0 + 1000) + 36));
      if (*v39 != *(v0 + 880) || *(v0 + 888) != v39[1])
      {
        ++v35;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      v41 = *(v0 + 1200);
      v42 = *(v0 + 1192);
      v44 = *(v0 + 256);
      v43 = *(v0 + 264);
      v46 = *(v0 + 208);
      v45 = *(v0 + 216);

      sub_100473FCC(v42, v41);

      sub_100473F24(v0 + 208);
      goto LABEL_21;
    }
  }

  sub_100473F24(v0 + 208);
  v45 = *(v0 + 1232);
  v46 = *(v0 + 1224);
  v43 = *(v0 + 1216);
  v36 = (v0 + 1200);
  v37 = (v0 + 1192);
  v44 = *(v0 + 1208);
LABEL_21:
  v47 = *(v0 + 1480);
  v48 = *(v0 + 1472);
  v49 = *v36;
  v50 = *v37;
  *(v0 + 1384) = v47;
  *(v0 + 1376) = v48;
  *(v0 + 1368) = v45;
  *(v0 + 1360) = v43;
  *(v0 + 1352) = v49;
  v51 = *(v0 + 1240) + 1;
  if (v51 == *(v0 + 1184))
  {
    if (v49)
    {
      *(v0 + 720) = v50;
      *(v0 + 728) = v49;
      *(v0 + 736) = v44;
      *(v0 + 744) = v43;
      *(v0 + 752) = v46;
      *(v0 + 760) = v45;
      v52 = swift_task_alloc();
      *(v0 + 1392) = v52;
      *v52 = v0;
      v52[1] = sub_10046A084;
      v53 = *(v0 + 1176);
      v54 = *(v0 + 920);
      v55 = *(v0 + 912);
      v56 = *(v0 + 896);

      return sub_10050A6F0(v0 + 720, v56, v53, v55, v54);
    }

    v89 = *(v0 + 896);
    if (*(v48 + 16))
    {
      static Logger.restore.getter();
      v90 = v89;

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();

      v93 = os_log_type_enabled(v91, v92);
      v94 = *(v0 + 1160);
      v95 = *(v0 + 1112);
      v96 = *(v0 + 1104);
      if (v93)
      {
        v125 = *(v0 + 1160);
        v97 = *(v0 + 896);
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v126 = v100;
        *v98 = 138412546;
        *(v98 + 4) = v97;
        *v99 = v97;
        *(v98 + 12) = 2082;
        v124 = v96;
        v101 = *(v47 + 16);
        *(v0 + 856) = v101;
        v102 = v97;
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        v128 = v103;
        v104._countAndFlagsBits = 32;
        v104._object = 0xE100000000000000;
        String.append(_:)(v104);
        v105._countAndFlagsBits = 0x65726F7473657220;
        v105._object = 0xE900000000000073;
        String.append(_:)(v105);
        if (v101 == 1)
        {
          v106 = 0;
        }

        else
        {
          v106 = 115;
        }

        if (v101 == 1)
        {
          v107 = 0xE000000000000000;
        }

        else
        {
          v107 = 0xE100000000000000;
        }

        v108 = v107;
        String.append(_:)(*&v106);

        v109 = sub_1002346CC(v127, v128, &v126);

        *(v98 + 14) = v109;
        _os_log_impl(&_mh_execute_header, v91, v92, "[%@] Discovered ADPs for %{public}s", v98, 0x16u);
        sub_1000032A8(v99, &qword_10077F920);

        sub_10000710C(v100);

        (*(v95 + 8))(v125, v124);
        goto LABEL_46;
      }

      v119 = *(v95 + 8);
      v120 = v94;
    }

    else
    {
      static Logger.restore.getter();
      v110 = v89;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = *(v0 + 896);
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v114 = 138412290;
        *(v114 + 4) = v113;
        *v115 = v113;
        v116 = v113;
        _os_log_impl(&_mh_execute_header, v111, v112, "[%@] No restores discovered", v114, 0xCu);
        sub_1000032A8(v115, &qword_10077F920);
      }

      v117 = *(v0 + 1168);
      v118 = *(v0 + 1112);
      v96 = *(v0 + 1104);

      v119 = *(v118 + 8);
      v120 = v117;
    }

    v119(v120, v96);
LABEL_46:
    sub_10000710C(v0 + 768);

    v121 = *(v0 + 8);

    return v121(v47);
  }

  *(v0 + 1256) = v47;
  *(v0 + 1248) = v48;
  *(v0 + 1240) = v51;
  *(v0 + 1232) = v45;
  *(v0 + 1224) = v46;
  *(v0 + 1216) = v43;
  *(v0 + 1208) = v44;
  *(v0 + 1200) = v49;
  *(v0 + 1192) = v50;
  v57 = *(v0 + 896);
  v58 = (*(v0 + 872) + (v51 << 7));
  v59 = v58[5];
  v61 = v58[2];
  v60 = v58[3];
  *(v0 + 240) = v58[4];
  *(v0 + 256) = v59;
  *(v0 + 208) = v61;
  *(v0 + 224) = v60;
  v62 = v58[9];
  v64 = v58[6];
  v63 = v58[7];
  *(v0 + 304) = v58[8];
  *(v0 + 320) = v62;
  *(v0 + 272) = v64;
  *(v0 + 288) = v63;
  sub_100473EC8(v0 + 208, v0 + 336);
  static Logger.restore.getter();
  v65 = v57;
  sub_100473EC8(v0 + 208, v0 + 464);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  sub_100473F24(v0 + 208);
  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v0 + 1152);
  v70 = *(v0 + 1112);
  v71 = *(v0 + 1104);
  if (v68)
  {
    v72 = *(v0 + 896);
    v123 = *(v0 + 1152);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v127 = v75;
    *v73 = 138412546;
    *(v73 + 4) = v72;
    *v74 = v72;
    *(v73 + 12) = 2082;
    v76 = v72;
    v77 = sub_1001F7380();
    v79 = sub_1002346CC(v77, v78, &v127);

    *(v73 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v66, v67, "[%@] Attempting to to get ADPs for batch: %{public}s", v73, 0x16u);
    sub_1000032A8(v74, &qword_10077F920);

    sub_10000710C(v75);

    v80 = *(v70 + 8);
    v80(v123, v71);
  }

  else
  {

    v80 = *(v70 + 8);
    v80(v69, v71);
  }

  *(v0 + 1264) = v80;
  v81 = *(v0 + 896);
  v82 = *(v0 + 841);
  *(v0 + 1272) = *(v0 + 328);
  sub_10020AB78(v0 + 768, v0 + 160);
  v83 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v83;
  v84 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v84;
  v85 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v85;
  v86 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v86;
  *(v0 + 144) = v82;
  *(v0 + 152) = v81;
  v87 = v81;
  sub_100473EC8(v0 + 208, v0 + 592);
  v88 = swift_task_alloc();
  *(v0 + 1280) = v88;
  *v88 = v0;
  v88[1] = sub_100467930;

  return sub_1004EC0B8();
}

uint64_t sub_10046C624()
{
  v1 = *(*v0 + 1032);

  sub_1004751E8(v1, type metadata accessor for Restore);

  return _swift_task_switch(sub_10046C750, 0, 0);
}

uint64_t sub_10046C750()
{
  v99 = v0;
  v1 = *(v0 + 1504) + 1;
  if (v1 == *(v0 + 1488))
  {

    *(v0 + 848) = *(v0 + 1464);
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 840) == 1 && *(v0 + 888))
    {
      v2 = 0;
      v3 = (v0 + 888);
      v4 = (v0 + 880);
      v5 = *(*(v0 + 1272) + 16);
      while (v5 != v2)
      {
        v6 = (*(v0 + 1272) + ((*(*(v0 + 1008) + 80) + 32) & ~*(*(v0 + 1008) + 80)) + *(*(v0 + 1008) + 72) * v2 + *(*(v0 + 1000) + 36));
        if (*v6 != *(v0 + 880) || *(v0 + 888) != v6[1])
        {
          ++v2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        v8 = *(v0 + 1200);
        v9 = *(v0 + 1192);
        v11 = *(v0 + 256);
        v10 = *(v0 + 264);
        v13 = *(v0 + 208);
        v12 = *(v0 + 216);

        sub_100473FCC(v9, v8);

        sub_100473F24(v0 + 208);
        goto LABEL_17;
      }
    }

    sub_100473F24(v0 + 208);
    v12 = *(v0 + 1232);
    v13 = *(v0 + 1224);
    v10 = *(v0 + 1216);
    v3 = (v0 + 1200);
    v4 = (v0 + 1192);
    v11 = *(v0 + 1208);
LABEL_17:
    v18 = *(v0 + 1480);
    v19 = *(v0 + 1472);
    v20 = *v3;
    v21 = *v4;
    *(v0 + 1384) = v18;
    *(v0 + 1376) = v19;
    *(v0 + 1368) = v12;
    *(v0 + 1360) = v10;
    *(v0 + 1352) = v20;
    v22 = *(v0 + 1240) + 1;
    if (v22 == *(v0 + 1184))
    {
      if (v20)
      {
        *(v0 + 720) = v21;
        *(v0 + 728) = v20;
        *(v0 + 736) = v11;
        *(v0 + 744) = v10;
        *(v0 + 752) = v13;
        *(v0 + 760) = v12;
        v23 = swift_task_alloc();
        *(v0 + 1392) = v23;
        *v23 = v0;
        v23[1] = sub_10046A084;
        v24 = *(v0 + 1176);
        v25 = *(v0 + 920);
        v26 = *(v0 + 912);
        v27 = *(v0 + 896);

        return sub_10050A6F0(v0 + 720, v27, v24, v26, v25);
      }

      v60 = *(v0 + 896);
      if (*(v19 + 16))
      {
        static Logger.restore.getter();
        v61 = v60;

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 1160);
        v66 = *(v0 + 1112);
        v67 = *(v0 + 1104);
        if (v64)
        {
          v95 = *(v0 + 1160);
          v68 = *(v0 + 896);
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v96 = v71;
          *v69 = 138412546;
          *(v69 + 4) = v68;
          *v70 = v68;
          *(v69 + 12) = 2082;
          v93 = v67;
          v72 = *(v18 + 16);
          *(v0 + 856) = v72;
          v73 = v68;
          v97 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = v74;
          v75._countAndFlagsBits = 32;
          v75._object = 0xE100000000000000;
          String.append(_:)(v75);
          v76._countAndFlagsBits = 0x65726F7473657220;
          v76._object = 0xE900000000000073;
          String.append(_:)(v76);
          if (v72 == 1)
          {
            v77 = 0;
          }

          else
          {
            v77 = 115;
          }

          if (v72 == 1)
          {
            v78 = 0xE000000000000000;
          }

          else
          {
            v78 = 0xE100000000000000;
          }

          v79 = v78;
          String.append(_:)(*&v77);

          v80 = sub_1002346CC(v97, v98, &v96);

          *(v69 + 14) = v80;
          _os_log_impl(&_mh_execute_header, v62, v63, "[%@] Discovered ADPs for %{public}s", v69, 0x16u);
          sub_1000032A8(v70, &qword_10077F920);

          sub_10000710C(v71);

          (*(v66 + 8))(v95, v93);
          goto LABEL_42;
        }

        v90 = *(v66 + 8);
        v91 = v65;
      }

      else
      {
        static Logger.restore.getter();
        v81 = v60;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = *(v0 + 896);
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *v85 = 138412290;
          *(v85 + 4) = v84;
          *v86 = v84;
          v87 = v84;
          _os_log_impl(&_mh_execute_header, v82, v83, "[%@] No restores discovered", v85, 0xCu);
          sub_1000032A8(v86, &qword_10077F920);
        }

        v88 = *(v0 + 1168);
        v89 = *(v0 + 1112);
        v67 = *(v0 + 1104);

        v90 = *(v89 + 8);
        v91 = v88;
      }

      v90(v91, v67);
LABEL_42:
      sub_10000710C(v0 + 768);

      v92 = *(v0 + 8);

      return v92(v18);
    }

    *(v0 + 1256) = v18;
    *(v0 + 1248) = v19;
    *(v0 + 1240) = v22;
    *(v0 + 1232) = v12;
    *(v0 + 1224) = v13;
    *(v0 + 1216) = v10;
    *(v0 + 1208) = v11;
    *(v0 + 1200) = v20;
    *(v0 + 1192) = v21;
    v28 = *(v0 + 896);
    v29 = (*(v0 + 872) + (v22 << 7));
    v30 = v29[5];
    v32 = v29[2];
    v31 = v29[3];
    *(v0 + 240) = v29[4];
    *(v0 + 256) = v30;
    *(v0 + 208) = v32;
    *(v0 + 224) = v31;
    v33 = v29[9];
    v35 = v29[6];
    v34 = v29[7];
    *(v0 + 304) = v29[8];
    *(v0 + 320) = v33;
    *(v0 + 272) = v35;
    *(v0 + 288) = v34;
    sub_100473EC8(v0 + 208, v0 + 336);
    static Logger.restore.getter();
    v36 = v28;
    sub_100473EC8(v0 + 208, v0 + 464);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    sub_100473F24(v0 + 208);
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 1152);
    v41 = *(v0 + 1112);
    v42 = *(v0 + 1104);
    if (v39)
    {
      v43 = *(v0 + 896);
      v94 = *(v0 + 1152);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v97 = v46;
      *v44 = 138412546;
      *(v44 + 4) = v43;
      *v45 = v43;
      *(v44 + 12) = 2082;
      v47 = v43;
      v48 = sub_1001F7380();
      v50 = sub_1002346CC(v48, v49, &v97);

      *(v44 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%@] Attempting to to get ADPs for batch: %{public}s", v44, 0x16u);
      sub_1000032A8(v45, &qword_10077F920);

      sub_10000710C(v46);

      v51 = *(v41 + 8);
      v51(v94, v42);
    }

    else
    {

      v51 = *(v41 + 8);
      v51(v40, v42);
    }

    *(v0 + 1264) = v51;
    v52 = *(v0 + 896);
    v53 = *(v0 + 841);
    *(v0 + 1272) = *(v0 + 328);
    sub_10020AB78(v0 + 768, v0 + 160);
    v54 = *(v0 + 288);
    *(v0 + 80) = *(v0 + 272);
    *(v0 + 96) = v54;
    v55 = *(v0 + 320);
    *(v0 + 112) = *(v0 + 304);
    *(v0 + 128) = v55;
    v56 = *(v0 + 224);
    *(v0 + 16) = *(v0 + 208);
    *(v0 + 32) = v56;
    v57 = *(v0 + 256);
    *(v0 + 48) = *(v0 + 240);
    *(v0 + 64) = v57;
    *(v0 + 144) = v53;
    *(v0 + 152) = v52;
    v58 = v52;
    sub_100473EC8(v0 + 208, v0 + 592);
    v59 = swift_task_alloc();
    *(v0 + 1280) = v59;
    *v59 = v0;
    v59[1] = sub_100467930;

    return sub_1004EC0B8();
  }

  else
  {
    *(v0 + 1504) = v1;
    sub_100007CE8(*(v0 + 1272) + ((*(v0 + 1524) + 32) & ~*(v0 + 1524)) + *(v0 + 1496) * v1, *(v0 + 1032), type metadata accessor for Restore);
    v14 = swift_task_alloc();
    *(v0 + 1512) = v14;
    *v14 = v0;
    v14[1] = sub_10046C624;
    v15 = *(v0 + 1032);
    v16 = *(v0 + 896);

    return sub_100446FE0(v15, v16);
  }
}

uint64_t sub_10046D184(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1004753FC;

  return v5(v2 + 16);
}

uint64_t sub_10046D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v25 = a4;
  v26 = a5;
  v16 = sub_10020A748(v24);
  (*(*(a4 - 8) + 16))(v16, a3, a4);
  v17 = *sub_100006D8C(v24, v25);
  v23[3] = type metadata accessor for Dependencies();
  v23[4] = &off_100770208;
  v23[0] = v17;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  sub_10020A980(v23, v22);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  sub_1001DFDBC(v22, (v19 + 6));

  sub_1004A673C(0, 0, v15, a7, v19);

  sub_10000710C(v23);
  return sub_10000710C(v24);
}

uint64_t sub_10046D470(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  sub_100006190(0, &qword_100784400);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = a1;
  aBlock[4] = sub_10047436C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009BE4;
  aBlock[3] = &unk_100765928;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  aBlock[0] = 0;
  LODWORD(a3) = [ObjCClassFromMetadata enumerateCoordinatorsWithError:aBlock usingBlock:v13];
  _Block_release(v13);
  if (a3)
  {
    v15 = aBlock[0];
  }

  else
  {
    v16 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.restore.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      ErrorValue = swift_getErrorValue();
      v29[1] = v29;
      v31 = v7;
      __chkstk_darwin(ErrorValue);
      v30 = v6;
      (*(v23 + 16))(v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = String.init<A>(describing:)();
      v26 = sub_1002346CC(v24, v25, aBlock);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to enumerate restoring coordinators: %s", v19, 0xCu);
      sub_10000710C(v20);

      (*(v31 + 8))(v9, v30);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  swift_beginAccess();
  v27 = *(v10 + 16);

  return v27;
}

uint64_t sub_10046D8A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_100443900(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_10046D980(uint64_t a1)
{
  v9 = *(v1 + 24);
  v10 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v11 = *(v1 + 96);
  v6 = *(v1 + 88);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_10044AC08(a1, v10, v9, v4, v5, v1 + 48, v6, v11);
}

uint64_t sub_10046DB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[17];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10045FCCC(a1, v4, v5, v6, (v1 + 5), v7, (v1 + 18), (v1 + 23));
}

uint64_t sub_10046DC04(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_10045A118(a1, v12, v10, v4, v5, v6, v7, (v1 + 8));
}