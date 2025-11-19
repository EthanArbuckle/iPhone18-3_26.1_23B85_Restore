void sub_10018D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  a19 = v22;
  a20 = v23;
  v224 = v21;
  v24 = v20;
  v234 = v25;
  v205 = v26;
  v28 = v27;
  v212 = v29;
  v31 = v30;
  v33 = v32;
  v226 = v34;
  v208 = v35;
  v36 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  v37 = sub_1000030B8(v36);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_10000D478();
  sub_100008280(v42);
  v202 = type metadata accessor for Date();
  v43 = sub_100003724(v202);
  v201 = v44;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_1000030E4();
  v48 = sub_100008280(v47);
  v213 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(v48);
  v49 = sub_10000307C(v213);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v52);
  sub_10000D478();
  v54 = sub_100008280(v53);
  v210 = type metadata accessor for TSDataSyncDatasetGroupSchedule(v54);
  v55 = sub_10000307C(v210);
  v57 = *(v56 + 64);
  __chkstk_darwin(v55);
  sub_1000030E4();
  sub_10000A1C0(v58);
  v59 = sub_100099DF4(&qword_1002DF9D0, &unk_10023F700);
  v60 = sub_1000030B8(v59);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v63);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v64);
  sub_10000D478();
  v228 = v65;
  sub_100013FAC();
  v66 = type metadata accessor for LogInterpolation.StringInterpolation();
  v67 = sub_1000030B8(v66);
  v69 = *(v68 + 64);
  __chkstk_darwin(v67);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v70);
  sub_100002DD0();
  v221 = v71;
  sub_100005238();
  __chkstk_darwin(v72);
  sub_10011852C();
  v73 = type metadata accessor for Log();
  v229 = sub_100003724(v73);
  v230 = v74;
  v76 = *(v75 + 64);
  __chkstk_darwin(v229);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v77);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v78);
  sub_100002DD0();
  v220 = v79;
  sub_100005238();
  __chkstk_darwin(v80);
  v82 = &v194 - v81;
  v197 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v83 = sub_10000307C(v197);
  v85 = *(v84 + 64);
  __chkstk_darwin(v83);
  sub_10000306C();
  v88 = v87 - v86;
  v225 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  v89 = sub_10000307C(v225);
  v91 = *(v90 + 64);
  __chkstk_darwin(v89);
  sub_10000306C();
  v94 = v93 - v92;
  v95 = v24 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100006F90();
  v196 = v95;
  sub_100197820(v95, v88);
  v227 = v94;
  v96 = v226;
  v203 = v33;
  v204 = v31;
  v226 = v28;
  sub_1000E8C5C(v96, v33, v31, v88, v28, v94);
  sub_100004D28();
  sub_100197878();
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v97 = type metadata accessor for LogInterpolation();
  sub_100003B78(v97);
  v99 = *(v98 + 72);
  v101 = *(v100 + 80);
  v102 = (v101 + 32) & ~v101;
  v217 = v102 + 2 * v99;
  v218 = v101;
  v222 = v31;
  v103 = swift_allocObject();
  v216 = xmmword_1002329F0;
  *(v103 + 16) = xmmword_1002329F0;
  v219 = v102;
  v215 = type metadata accessor for TSDataSyncDatasetGroupAccessActor();
  *(&v232 + 1) = v215;
  *&v231 = v24;
  v223 = v24;

  v104 = AMSLogKey();
  if (v104)
  {
    v105 = v104;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100013FF0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v231);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v106._object = 0xEF207475706E6920;
  v106._countAndFlagsBits = 0x656C756465686353;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v106);
  *(&v232 + 1) = v225;
  v107 = sub_100007914(&v231);
  sub_100197820(v227, v107);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v231, &unk_1002DFC10, &qword_10022E6D0);
  v108._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v108);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v109 = v99;
  v110 = v230 + 8;
  v111 = *(v230 + 8);
  v111(v82, v229);
  v112 = v226[17];
  v113 = v224;
  sub_1000E5B8C();
  if (v113)
  {
    goto LABEL_4;
  }

  v224 = v109;
  v194 = 0;
  v230 = v110;
  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = v216;
  *(&v232 + 1) = v215;
  *&v231 = v223;

  v114 = AMSLogKey();
  v195 = v111;
  if (v114)
  {
    v115 = v114;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v116 = v224;
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v231);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v117._countAndFlagsBits = 0x656C756465686353;
  v117._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v117);
  v118 = v228;
  v119 = v209;
  sub_1000C68A8(v228, v209, &qword_1002DF9D0, &unk_10023F700);
  v120 = sub_10000A218();
  v121 = v210;
  if (sub_100004DFC(v120, v122, v210) == 1)
  {
    sub_100004E24(v119, &qword_1002DF9D0, &unk_10023F700);
    v231 = 0u;
    v232 = 0u;
  }

  else
  {
    *(&v232 + 1) = v121;
    sub_100007914(&v231);
    sub_100197C3C();
    sub_100197914(v119, v123);
  }

  v124 = v213;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v231, &unk_1002DFC10, &qword_10022E6D0);
  v125._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v125);
  LogInterpolation.init(stringInterpolation:)();
  v126 = v220;
  Log.default(_:)();

  v195(v126, v229);
  sub_100108290(&a11);
  sub_1000C68A8(v127, v128, v129, v130);
  if (sub_100004DFC(v116, 1, v121) == 1)
  {
    sub_100013FF0();
    sub_100004E24(v131, v132, v133);
    sub_10000844C();
    sub_100197878();
    sub_100013FF0();
    sub_100004E24(v134, v135, v136);
    v137 = v212;
LABEL_23:
    sub_1000C68A8(v137, v208, &qword_1002DC208, &qword_100234830);
    goto LABEL_24;
  }

  sub_100197C3C();
  sub_10000288C(&a15);
  sub_100197914(v138, v139);
  v140 = v207;
  sub_1000E9504(v118, v226, v234, v207);
  static Log.tsDataSync.getter();
  v141 = swift_allocObject();
  sub_10000504C(v141);
  *&v231 = v223;

  v142 = AMSLogKey();
  if (v142)
  {
    v143 = v142;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v144 = v195;
  sub_100013FF0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v231);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v145._countAndFlagsBits = 0x206E6F69746341;
  v145._object = 0xE700000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v145);
  sub_100197E88();
  sub_1000077E8();
  sub_100197820(v140, v146);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v231, &unk_1002DFC10, &qword_10022E6D0);
  v147._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v147);
  LogInterpolation.init(stringInterpolation:)();
  v148 = v211;
  Log.default(_:)();

  v144(v148, v229);
  v149 = v223;
  v150 = *(v223 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_deviceInformation + 8);
  v151 = *(v223 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_deviceInformation);
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()())
  {
    v152 = *v140;
    v153 = *(v227 + *(v225 + 20));
    v116 = *(v196 + *(v197 + 20));

    sub_100194398(v152, v153, v116);
  }

  v154 = *v140;
  v137 = v212;
  if (*(*v140 + 16))
  {
    v155 = *(type metadata accessor for TSDataSyncDatasetGroupConfig(0) + 20);
    v116 = v200;
    static Date.now.getter();
    sub_100197D20();
    v157 = v194;
    sub_10018E57C(v156 + v155, v154, v204, v226, v205, v214, v116, 0);
    if (v157)
    {
      v158 = sub_100010A08();
      v159(v158);
      sub_10000F154();
      sub_100197878();
      sub_100004E24(v228, &qword_1002DF9D0, &unk_10023F700);
      sub_10000D128();
LABEL_4:
      sub_10000844C();
      sub_100197878();
      goto LABEL_24;
    }

    v194 = 0;
    v160 = sub_100010A08();
    v161(v160);
  }

  sub_1000077E8();
  sub_100108290(&v226);
  sub_100197820(v162, v163);
  sub_10000B7B0();
  sub_100002728(v164, v165, v166, v124);
  v167 = v198;
  sub_1000E9FB4(v137, v116, v198);
  sub_100004E24(v116, &qword_1002DC208, &qword_100234830);
  v168 = sub_10000A218();
  if (sub_100004DFC(v168, v169, v124) == 1)
  {
    sub_10000F154();
    sub_100197878();
    sub_100004E24(v228, &qword_1002DF9D0, &unk_10023F700);
    sub_10000D128();
    sub_10000844C();
    sub_100197878();
    sub_100004E24(v167, &qword_1002DC208, &qword_100234830);
    goto LABEL_23;
  }

  sub_1000046B0();
  sub_100197914(v167, v206);
  static Log.tsDataSync.getter();
  v170 = swift_allocObject();
  sub_10000504C(v170);
  *&v231 = v149;

  v171 = AMSLogKey();
  if (v171)
  {
    v172 = v171;
    v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v173 = 0;
  }

  sub_100013FF0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v231);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v174._countAndFlagsBits = 0xA203A65736F6843;
  v174._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v174);
  sub_100197E88();
  sub_1000077E8();
  v175 = sub_100197DB0();
  sub_100197820(v175, v176);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v231, &unk_1002DFC10, &qword_10022E6D0);
  v177._countAndFlagsBits = sub_100197D90();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v177);
  sub_10000288C(&v223);
  sub_1000C68A8(v178, v179, v180, v181);
  v182 = sub_100013DDC();
  if (sub_100004DFC(v182, v183, v124) == 1)
  {
    sub_100004E24(v173, &qword_1002DC208, &qword_100234830);
    v231 = 0u;
    v232 = 0u;
  }

  else
  {
    sub_100197E88();
    sub_1000046B0();
    sub_100197914(v173, v184);
  }

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v231, &unk_1002DFC10, &qword_10022E6D0);
  v185._countAndFlagsBits = 0x69687420646E6120;
  v185._object = 0xEC0000000A203A73;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v185);
  sub_100197E88();
  sub_1000077E8();
  sub_100197820(v140, v186);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v231, &unk_1002DFC10, &qword_10022E6D0);
  v187._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v187);
  LogInterpolation.init(stringInterpolation:)();
  v188 = v199;
  Log.default(_:)();

  v144(v188, v229);
  sub_10000F154();
  sub_100004F70();
  sub_100197878();
  sub_100004E24(v228, &qword_1002DF9D0, &unk_10023F700);
  sub_10000D128();
  sub_10000844C();
  sub_100197878();
  sub_1000046B0();
  sub_100197DB0();
  sub_10000288C(&v233);
  sub_100197914(v189, v190);
  sub_10000B7B0();
  sub_100002728(v191, v192, v193, v124);
LABEL_24:
  sub_100005074();
}

void sub_10018E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  a19 = v22;
  a20 = v23;
  v132 = v21;
  v24 = v20;
  v131 = v25;
  v130 = v26;
  v135 = v27;
  v133 = v28;
  v30 = v29;
  v129 = v31;
  v128 = v32;
  v127 = type metadata accessor for Date();
  v33 = sub_100003724(v127);
  v123 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  v122 = v37;
  sub_100003F24();
  v39 = sub_100008280(v38);
  v40 = type metadata accessor for TSDataSyncDeviceState(v39);
  v41 = sub_100003B78(v40);
  v120 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  v121 = v45;
  sub_100003F24();
  sub_10000A1C0(v46);
  v47 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v47);
  v49 = *(v48 + 64);
  sub_100003774();
  __chkstk_darwin(v50);
  sub_100003018();
  v52 = sub_100008280(v51);
  v53 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(v52);
  v54 = sub_1000030B8(v53);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  sub_10000306C();
  v59 = v58 - v57;
  v60 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v61 = sub_1000030B8(v60);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  sub_10000308C();
  v66 = v64 - v65;
  __chkstk_darwin(v67);
  v69 = &v116 - v68;
  v70 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v71 = sub_100003B78(v70);
  v118 = v72;
  v74 = *(v73 + 64);
  __chkstk_darwin(v71);
  v76 = &v116 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v75;
  __chkstk_darwin(v77);
  v79 = &v116 - v78;
  v80 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100197820(v24 + v80, v69);
  v81 = v130;
  v130 = v30;
  sub_1000D36D8(v128, v69, v129, v81, v30, v79);
  sub_100197878();
  v82 = v24 + v80;
  v83 = v79;
  v84 = v131;
  sub_100197820(v82, v69);
  sub_1000067FC();
  sub_100197820(v83, v76);
  sub_100006BA0();
  v85 = sub_1000050CC();
  sub_100197914(v85, v86);
  sub_1000F88E4(v59, v69, v84, v87, v88, v89, v90, v91, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  sub_100003A3C();
  sub_100197878();
  sub_100197878();
  v92 = v132;
  sub_100191A04();
  if (!v92)
  {
    v117 = v24;
    v93 = *(v24 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_transactionStore);
    v94 = *(*(v24 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_transactionStore + 8) + 8);
    v132 = 0;
    v94(12);
    type metadata accessor for TaskPriority();
    sub_100007B78();
    sub_100002728(v95, v96, v97, v98);
    sub_1000067FC();
    v99 = v76;
    sub_100197820(v83, v76);
    sub_100197820(v130, v124);
    v130 = v66;
    v100 = v123;
    (*(v123 + 16))(v126, v84, v127);
    v101 = sub_1001978CC(&qword_1002DF9C8, type metadata accessor for TSDataSyncDatasetGroupAccessActor);
    v102 = *(v118 + 80);
    v131 = v83;
    v103 = (v102 + 40) & ~v102;
    v104 = (v119 + *(v120 + 80) + v103) & ~*(v120 + 80);
    v105 = (((v121 + v104 + 7) & 0xFFFFFFFFFFFFFFF8) + 199) & 0xFFFFFFFFFFFFFFF8;
    v129 = (*(v100 + 80) + v105 + 64) & ~*(v100 + 80);
    v106 = swift_allocObject();
    v107 = v117;
    v106[2] = v117;
    v106[3] = v101;
    v106[4] = v107;
    sub_100197914(v99, v106 + v103);
    sub_100197914(v124, v106 + v104);
    sub_100108290(&a12);
    memcpy(v108, v109, 0xC0uLL);
    v110 = (v106 + v105);
    v111 = v135[1];
    *v110 = *v135;
    v110[1] = v111;
    v112 = v135[3];
    v110[2] = v135[2];
    v110[3] = v112;
    (*(v100 + 32))(v106 + v129, v126, v127);
    swift_retain_n();
    sub_10009FF70(v101, v134);
    sub_1000C68A8(v135, v134, &qword_1002DF3B8, &qword_10023F050);
    v113 = sub_100197C54();
    sub_10013ABD4(v113, v114, v125, v115, v106);
  }

  sub_100004D28();
  sub_100197878();
  sub_100013E94();
  sub_100197878();
  sub_100005074();
}

uint64_t sub_10018F080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[14] = a4;
  v9 = type metadata accessor for MetricsEvent();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = type metadata accessor for FlagKeys();
  v8[20] = v12;
  v13 = *(v12 - 8);
  v8[21] = v13;
  v14 = *(v13 + 64) + 15;
  v8[22] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v8[23] = v15;
  v16 = *(v15 - 8);
  v8[24] = v16;
  v17 = *(v16 + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v18 = type metadata accessor for Log();
  v8[27] = v18;
  v19 = *(v18 - 8);
  v8[28] = v19;
  v20 = *(v19 + 64) + 15;
  v8[29] = swift_task_alloc();
  v21 = swift_task_alloc();
  v8[30] = v21;
  *v21 = v8;
  v21[1] = sub_10018F2DC;

  return sub_10018F8A4();
}

uint64_t sub_10018F2DC()
{
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[31] = v0;

  if (v0)
  {
    v9 = v3[14];

    return _swift_task_switch(sub_10018F43C, v9, 0);
  }

  else
  {
    v10 = v3[29];
    v12 = v3[25];
    v11 = v3[26];
    v13 = v3[22];
    v14 = v3[19];

    sub_100002E08();

    return v15();
  }
}

uint64_t sub_10018F43C()
{
  v51 = v0;
  v1 = v0[29];
  v2 = v0[14];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  v5 = *(v4 + 72);
  sub_100005D98();
  sub_1000C71D4();
  v6 = swift_allocObject();
  v7 = sub_100008CD8(v6, xmmword_1002329D0);
  v0[2] = v2;
  v0[5] = v7;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = v0[31];
  v11 = v0[28];
  v44 = v0[27];
  v45 = v0[26];
  v12 = v0[21];
  v46 = v0[20];
  v48 = v0[22];
  v42 = v0[29];
  v43 = v0[15];
  v41 = v0[14];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v13 = v0[10];
  v14 = v0[11];
  v0[9] = v14;
  sub_100007914(v0 + 6);
  sub_10000B7EC(v14);
  (*(v15 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v0 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v11 + 8))(v42, v44);
  v16 = *(v43 + 176);
  v17 = *(v43 + 184);
  v18 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
  static Date.now.getter();
  (*(v12 + 104))(v48, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v46);
  v19 = FlagKeys.isEnabled.getter();
  (*(v12 + 8))(v48, v46);
  if (v19)
  {
    v20 = v0[25];
    static Date.now.getter();
    if (v17)
    {
      v21 = (v41 + v18);
      v22 = v0[31];
      v24 = v0[24];
      v23 = v0[25];
      v26 = v0[18];
      v25 = v0[19];
      v27 = v0[16];
      v47 = v0[17];
      v49 = v0[23];
      sub_10011DE50();
      v50[3] = &type metadata for String;
      v50[0] = 0xD000000000000012;
      v50[1] = 0x8000000100275910;
      sub_100006F54();
      sub_1001A8ED8(v50);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      v28 = v21[4];
      sub_10000C4FC(v21, v21[3]);
      sub_10000878C();
      dispatch thunk of MetricsQueue.enqueue(event:)();
      (*(v26 + 8))(v25, v47);
      v29 = *(v24 + 8);
      v29(v23, v49);
    }

    else
    {
      v29 = *(v0[24] + 8);
      v29(v0[25], v0[23]);
    }
  }

  else
  {
    v29 = *(v0[24] + 8);
  }

  v30 = v0[31];
  v31 = v0[14];
  v29(v0[26], v0[23]);
  v32 = sub_10000ADD0((v31 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_transactionStore));
  v33(v32);

  v34 = v0[29];
  v35 = v0[25];
  v36 = v0[26];
  v37 = v0[22];
  v38 = v0[19];

  sub_100002E08();

  return v39();
}

uint64_t sub_10018F8A4()
{
  sub_10000DB4C();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for Date();
  v1[7] = v6;
  sub_100003B78(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = sub_100003FA8();
  v10 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  sub_1000030B8(v10);
  v12 = *(v11 + 64);
  v1[10] = sub_100003FA8();
  v13 = swift_task_alloc();
  v1[11] = v13;
  *v13 = v1;
  v13[1] = sub_10018F9EC;

  return sub_10018FE08();
}

uint64_t sub_10018F9EC()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 88);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10018FAE4()
{
  sub_100004194();
  v1 = v0[9];
  static Date.now.getter();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10018FB88;
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_100190990();
}

uint64_t sub_10018FB88()
{
  sub_10000DB4C();
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  v5 = v2[12];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  *v4 = *v1;
  *(v3 + 104) = v0;

  (*(v7 + 8))(v6, v8);
  v9 = v2[6];
  if (v0)
  {
    v10 = sub_10018FD88;
  }

  else
  {
    v10 = sub_10018FD08;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10018FD08()
{
  sub_100004194();
  v1 = *(v0 + 72);
  sub_100004E24(*(v0 + 80), &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v2();
}

uint64_t sub_10018FD88()
{
  sub_100004194();
  v1 = v0[9];
  sub_100004E24(v0[10], &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();
  v3 = v0[13];

  return v2();
}

uint64_t sub_10018FE08()
{
  sub_100004194();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[22] = v5;
  v1[23] = v6;
  v7 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v1[28] = v7;
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  v1[29] = sub_1000C70D8();
  v1[30] = swift_task_alloc();
  v10 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v1[31] = v10;
  sub_1000030B8(v10);
  v12 = *(v11 + 64);
  v1[32] = sub_1000C70D8();
  v1[33] = swift_task_alloc();
  v13 = type metadata accessor for MetricsEvent();
  v1[34] = v13;
  sub_100003B78(v13);
  v1[35] = v14;
  v16 = *(v15 + 64);
  v1[36] = sub_100003FA8();
  v17 = type metadata accessor for Date();
  v1[37] = v17;
  sub_100003B78(v17);
  v1[38] = v18;
  v20 = *(v19 + 64);
  v1[39] = sub_100003FA8();
  v21 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_1000030B8(v21);
  v23 = *(v22 + 64);
  v1[40] = sub_100003FA8();
  v24 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v24);
  v26 = *(v25 + 64);
  v1[41] = sub_100003FA8();
  v27 = type metadata accessor for Log();
  v1[42] = v27;
  sub_100003B78(v27);
  v1[43] = v28;
  v30 = *(v29 + 64);
  v1[44] = sub_1000C70D8();
  v1[45] = swift_task_alloc();
  v31 = sub_10000AA8C();

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_10018FFF8()
{
  v71 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 216);
  static Log.tsDataSync.getter();
  *(v0 + 368) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 376) = *(v4 + 72);
  *(v0 + 416) = *(v5 + 80);
  sub_1000C71C8();
  v6 = swift_allocObject();
  v7 = sub_100008CD8(v6, xmmword_1002329F0);
  *(v0 + 16) = v2;
  *(v0 + 384) = v7;
  *(v0 + 40) = v7;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = *(v0 + 344);
  v11 = *(v0 + 328);
  v61 = *(v0 + 336);
  v63 = *(v0 + 320);
  v65 = *(v0 + 312);
  v12 = *(v0 + 224);
  v60 = *(v0 + 216);
  v56 = *(v0 + 360);
  v58 = *(v0 + 200);
  v13 = *(v0 + 184);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = sub_100197D90();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 72) = v12;
  sub_100007914((v0 + 48));
  sub_1000067FC();
  sub_100197820(v13, v15);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v16._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v17 = *(v10 + 8);
  *(v0 + 392) = v17;
  *(v0 + 400) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v56, v61);
  v19 = *(v58 + 176);
  v18 = *(v58 + 184);
  v20 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100006F90();
  sub_100197820(v60 + v20, v63);
  v21 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
  static Date.now.getter();
  if (v18)
  {
    v22 = *(v0 + 264);
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    v25 = *(v0 + 184);
    *(v0 + 168) = _swiftEmptyArrayStorage;
    sub_1000067FC();
    sub_100197820(v26, v23);
    sub_100006BA0();
    sub_100197914(v23, v22);
    v27 = *(v22 + *(v24 + 28));

    sub_100120DDC();
    v69[0] = v28;
    sub_1001072CC(v69);
    v64 = (v60 + v21);
    v29 = *(v0 + 320);
    v62 = *(v0 + 288);
    v30 = *(v0 + 264);
    v66 = *(v0 + 280);
    v67 = *(v0 + 272);
    v57 = *(v0 + 256);
    v59 = *(v0 + 248);
    v55 = *(v0 + 232);
    v31 = *(v0 + 192);
    v32 = *(v0 + 200);
    v53 = *(v0 + 312);
    v54 = *(v0 + 184);

    v33 = v69[0];
    v34 = swift_task_alloc();
    v34[2] = v30;
    v34[3] = v29;
    v34[4] = v32;
    v34[5] = v0 + 168;
    sub_10011DDBC(sub_100197638, v34, v33);

    sub_100197878();
    sub_10011DE50();
    v35 = *(v0 + 168);
    v70 = sub_100099DF4(&qword_1002DD510, &qword_100238218);
    v69[0] = v35;

    sub_1001A8ED8(v69);
    sub_1000067FC();
    sub_100197820(v54, v55);
    sub_100006BA0();
    sub_100197914(v55, v57);
    v36 = (v57 + *(v59 + 24));
    v38 = *v36;
    v37 = v36[1];
    v70 = &type metadata for String;
    v69[0] = v38;
    v69[1] = v37;

    sub_1001A8ED8(v69);
    sub_100197878();
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    v39 = v64[4];
    sub_10000C4FC(v64, v64[3]);
    sub_10000878C();
    dispatch thunk of MetricsQueue.enqueue(event:)();
    (*(v66 + 8))(v62, v67);
  }

  v40 = *(v0 + 320);
  v41 = *(v0 + 216);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  sub_100004D28();
  sub_100197878();
  v43 = *(v41 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_requester);
  v42 = *(v41 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_requester + 8);
  v44 = *(v41 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_bag);
  v45 = *(v42 + 8);
  v68 = (v45 + *v45);
  v46 = v45[1];
  v47 = swift_task_alloc();
  *(v0 + 408) = v47;
  *v47 = v0;
  v47[1] = sub_100190648;
  v48 = *(v0 + 200);
  v49 = *(v0 + 208);
  v50 = *(v0 + 176);
  v51 = *(v0 + 184);

  return v68(v50, v51, v48, v44, v49, v43, v42);
}

uint64_t sub_100190648()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 408);
  v3 = *(v1 + 216);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100190740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  sub_100197DBC();
  v24 = *(v22 + 376);
  v23 = *(v22 + 384);
  v25 = *(v22 + 416);
  v26 = *(v22 + 368);
  v27 = *(v22 + 352);
  v28 = *(v22 + 216);
  static Log.tsDataSync.getter();
  v29 = swift_allocObject();
  *(v22 + 80) = v28;
  *(v29 + 16) = xmmword_1002329D0;
  *(v22 + 104) = v23;

  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v48 = *(v22 + 392);
  v49 = *(v22 + 400);
  v32 = *(v22 + 376);
  v33 = *(v22 + 352);
  v47 = *(v22 + 360);
  v34 = *(v22 + 336);
  v50 = *(v22 + 328);
  v51 = *(v22 + 320);
  v52 = *(v22 + 312);
  v53 = *(v22 + 288);
  v54 = *(v22 + 264);
  v55 = *(v22 + 256);
  v56 = *(v22 + 240);
  v57 = *(v22 + 232);
  v35 = v29 + ((*(v22 + 416) + 32) & ~*(v22 + 416));
  v36 = *(v22 + 176);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v22 + 80));
  LogInterpolation.init(stringLiteral:)();
  *(v22 + 136) = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  v37 = sub_100007914((v22 + 112));
  sub_1000C68A8(v36, v37, &qword_1002DBC10, &unk_10023F6E0);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v22 + 112, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v48(v33, v34);

  sub_100002E08();
  sub_1000D3574();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, a20, a21, a22);
}

uint64_t sub_100190990()
{
  sub_100004194();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[5] = v7;
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  v1[12] = sub_100003FA8();
  v11 = type metadata accessor for MetricsEvent();
  v1[13] = v11;
  sub_100003B78(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = sub_100003FA8();
  v15 = type metadata accessor for Date();
  v1[16] = v15;
  sub_100003B78(v15);
  v1[17] = v16;
  v18 = *(v17 + 64);
  v1[18] = sub_1000C70D8();
  v1[19] = swift_task_alloc();
  v19 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  sub_1000030B8(v19);
  v21 = *(v20 + 64);
  v1[20] = sub_1000C70D8();
  v1[21] = swift_task_alloc();
  v22 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_1000030B8(v22);
  v24 = *(v23 + 64);
  v1[22] = sub_1000C70D8();
  v1[23] = swift_task_alloc();
  v25 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  sub_1000030B8(v25);
  v27 = *(v26 + 64);
  v1[24] = sub_100003FA8();
  v28 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  v1[25] = v28;
  sub_1000030B8(v28);
  v30 = *(v29 + 64);
  v1[26] = sub_100003FA8();
  v31 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v1[27] = v31;
  sub_1000030B8(v31);
  v33 = *(v32 + 64);
  v1[28] = sub_1000C70D8();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v34 = sub_10000AA8C();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_100190FF4()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  v4 = *(v3 + 312);
  v5 = *(v3 + 88);
  v6 = *v0;
  sub_100004504();
  *v7 = v6;
  *(v9 + 320) = v8;

  v10 = sub_10000AA8C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001910F0()
{
  sub_100197DBC();
  v2 = *(v1 + 296);
  v88 = *(v1 + 320);
  v90 = *(v1 + 304);
  v3 = *(v1 + 288);
  v5 = *(v1 + 240);
  v4 = *(v1 + 248);
  v6 = *(v1 + 176);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  v9 = *(v1 + 88);
  v11 = *(v1 + 48);
  v10 = *(v1 + 56);
  sub_100006F90();
  sub_100197820(v13 + v12, v5);
  sub_100106D98(v2);
  v14 = sub_100002834();
  v15 = *(v10 + *(type metadata accessor for TSDataSyncDeviceState(v14) + 56));
  static Date.now.getter();
  sub_1000067FC();
  sub_100197820(v11, v6);
  sub_100006BA0();
  v16 = sub_100002CC0();
  sub_100197914(v16, v17);
  sub_100101D50(v88, v5, v0, v7, v8, v4, v15);
  if (v90)
  {
    v18 = *(v1 + 320);
    v19 = *(v1 + 296);
    v20 = *(v1 + 280);
    v21 = *(v1 + 240);
    v23 = *(v1 + 152);
    v22 = *(v1 + 160);
    v24 = *(v1 + 128);
    v25 = *(v1 + 136);
    v26 = *(v1 + 272);

    sub_100003A3C();
    sub_100197878();
    (*(v25 + 8))(v23, v24);
    sub_100197C24();
    sub_100197878();
    sub_100197878();
    sub_1000050CC();
    sub_100197878();
    v37 = *(v1 + 272);
    v36 = *(v1 + 280);
    v39 = *(v1 + 256);
    v38 = *(v1 + 264);
    v41 = *(v1 + 240);
    v40 = *(v1 + 248);
    v42 = *(v1 + 224);
    v43 = *(v1 + 232);
    sub_100197C64();

    sub_100002E08();

    return v44();
  }

  else
  {
    v27 = *(v1 + 240);
    v28 = *(v1 + 152);
    v29 = *(v1 + 160);
    v31 = *(v1 + 128);
    v30 = *(v1 + 136);
    v89 = *(v1 + 88);
    v91 = *(v1 + 248);
    v32 = *(v1 + 64);
    v33 = *(v1 + 72);

    sub_100003A3C();
    sub_100197878();
    v34 = *(v30 + 8);
    v35 = sub_100002CC0();
    v34(v35);
    sub_100004D28();
    sub_100197878();
    sub_100191A04();
    v46 = *(v1 + 88);
    v47 = *(v1 + 40);
    sub_100106C4C();
    *(v1 + 328) = v48;
    v49 = *(v46 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_deviceInformation + 8);
    v50 = *(v46 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_deviceInformation);
    if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()())
    {
      v51 = *(v1 + 88);
      sub_100195174(*(v1 + 280), *(v1 + 248), *(v1 + 320), *(v1 + 296));
    }

    v52 = *(v1 + 320);
    v54 = *(v1 + 288);
    v53 = *(v1 + 296);
    v55 = *(v1 + 232);
    v56 = *(v1 + 144);
    v57 = *(v1 + 88);
    v58 = *(v1 + 72);

    v59 = *(v58 + 176);
    v60 = *(v58 + 184);
    sub_100006F90();
    sub_100197820(v57 + v54, v55);
    v61 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
    static Date.now.getter();
    if (v60)
    {
      v62 = *(v1 + 232);
      v63 = *(v1 + 144);
      v65 = *(v1 + 112);
      v64 = *(v1 + 120);
      v66 = *(v1 + 104);
      v67 = *(v1 + 56);
      v68 = *(v1 + 64);
      v69 = *(v1 + 48);
      v70 = (*(v1 + 88) + v61);
      sub_100197DFC();
      sub_10011EBD8();
      v71 = v70[4];
      sub_10000C4FC(v70, v70[3]);
      sub_10000878C();
      dispatch thunk of MetricsQueue.enqueue(event:)();
      (*(v65 + 8))(v64, v66);
    }

    v72 = *(v1 + 288);
    v74 = *(v1 + 224);
    v73 = *(v1 + 232);
    v76 = *(v1 + 88);
    v75 = *(v1 + 96);
    v77 = *(v1 + 80);
    v78 = *(v1 + 40);
    (v34)(*(v1 + 144), *(v1 + 128));
    sub_100004D28();
    sub_100197878();
    v79 = sub_10000ADD0((v76 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_transactionStore));
    v80(v79);
    v81 = sub_10000C4FC((v76 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator), *(v76 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator + 24));
    sub_100006F90();
    sub_100197820(v76 + v72, v74);
    sub_1000D631C(v78, v75);
    LODWORD(v74) = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
    v82 = *v81;
    v83 = swift_task_alloc();
    v84 = sub_100197DA4(v83);
    *v84 = v85;
    v84[1] = sub_1001915E0;
    v86 = *(v1 + 224);
    v87 = *(v1 + 96);

    return sub_100189580();
  }
}

uint64_t sub_1001915E0()
{
  sub_1000D354C();
  sub_10000DB4C();
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  v5 = v2[42];
  *v4 = *v1;
  *(v3 + 344) = v0;

  v6 = v2[41];
  v7 = v2[28];
  v8 = v2[12];
  v9 = v2[11];

  sub_100004E24(v8, &qword_1002DA970, &qword_1002318B0);
  sub_100004D28();
  sub_100197878();
  sub_10000AD14();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10019176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  sub_100197DBC();
  v24 = v22[34];
  v23 = v22[35];
  v26 = v22[32];
  v25 = v22[33];
  v28 = v22[30];
  v27 = v22[31];
  v30 = v22[28];
  v29 = v22[29];
  v40 = v22[26];
  v41 = v22[24];
  v42 = v22[23];
  v43 = v22[22];
  v44 = v22[21];
  v45 = v22[20];
  v46 = v22[19];
  v47 = v22[18];
  v48 = v22[15];
  v49 = v22[12];
  sub_100197C24();
  sub_100197878();
  sub_1000050CC();
  sub_100197878();
  sub_100197878();

  sub_100002E08();
  sub_1000D3574();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, a20, a21, a22);
}

uint64_t sub_1001918BC()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[31];
  sub_10000DFA4();
  sub_100197878();
  sub_100197878();
  sub_100197878();
  v14 = v0[43];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  sub_100197C64();

  sub_100002E08();

  return v12();
}

void sub_100191A04()
{
  sub_100004868();
  v131 = v2;
  v3 = v0;
  v115 = v4;
  v120 = v5;
  v125 = v6;
  v126 = v7;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_1000030B8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1000030E4();
  v127 = v12;
  sub_100013FAC();
  v124 = type metadata accessor for Log();
  v13 = sub_100003724(v124);
  v128 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_1000037D4();
  v129 = v17;
  sub_100005238();
  __chkstk_darwin(v18);
  sub_10000D478();
  v123 = v19;
  sub_100013FAC();
  v116 = type metadata accessor for MetricsEvent();
  v20 = sub_100003724(v116);
  v114 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_1000030E4();
  sub_100008280(v24);
  v25 = type metadata accessor for FlagKeys();
  v26 = sub_100003724(v25);
  v118 = v27;
  v119 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_1000030E4();
  v117 = v30;
  sub_100013FAC();
  v31 = type metadata accessor for Date();
  v32 = sub_100003724(v31);
  v121 = v33;
  v122 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_10000308C();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v41 = v108 - v40;
  v42 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v43 = sub_10000307C(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_10000306C();
  v48 = v47 - v46;
  v49 = v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_store;
  v50 = *(v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_store);
  v52 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_groupIdentifier;
  v51 = *(v49 + 8);
  (*(v51 + 16))(v131, v3 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_groupIdentifier, v50, v51);
  if (!v1)
  {
    v111 = v38;
    v112 = v41;
    v130 = v42;
    (*(v51 + 8))(v3 + v52, v50, v51);
    v53 = v3;
    v110 = 0;
    sub_100109E08();
    v54 = &unk_100232000;
    if ((v55 & 1) == 0)
    {
      v109 = v52;
      v56 = *(v120 + 184);
      v108[1] = *(v120 + 176);
      sub_100197580();
      sub_100004950();
      v120 = swift_allocError();
      *(v57 + 8) = 0;
      *(v57 + 16) = 0;
      *v57 = 2;
      *(v57 + 24) = 1;
      v58 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
      v59 = v112;
      static Date.now.getter();
      v60 = v117;
      v61 = v118;
      v62 = v119;
      (*(v118 + 104))(v117, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v119);
      v63 = FlagKeys.isEnabled.getter();
      (*(v61 + 8))(v60, v62);
      if (v63)
      {
        v64 = v111;
        static Date.now.getter();
        if (v56)
        {
          v65 = (v53 + v58);
          sub_10011DE50();
          v134 = &type metadata for String;
          v132 = 0xD000000000000015;
          v133 = 0x8000000100275890;
          sub_100006F54();
          sub_1001A8ED8(&v132);
          v66 = v113;
          static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

          v67 = v65[4];
          sub_10000C4FC(v65, v65[3]);
          dispatch thunk of MetricsQueue.enqueue(event:)();
          (*(v114 + 8))(v66, v116);
          v68 = v122;
          v69 = *(v121 + 8);
          v70 = sub_100004F70();
          v69(v70, v68);
          v71 = v112;
        }

        else
        {
          v68 = v122;
          v69 = *(v121 + 8);
          v69(v64, v122);
          v71 = v59;
        }

        v69(v71, v68);
        v72 = v124;
      }

      else
      {
        (*(v121 + 8))(v59, v122);
        v72 = v124;
      }

      v73 = v128;
      v122 = v48;

      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100002834();
      v74 = type metadata accessor for LogInterpolation();
      sub_100003B78(v74);
      v76 = *(v75 + 72);
      sub_10000A1F0();
      sub_1000C71C8();
      *(swift_allocObject() + 16) = xmmword_1002329D0;
      v134 = type metadata accessor for TSDataSyncDatasetGroupAccessActor();
      v132 = v53;
      v77 = v53;

      v78 = AMSLogKey();
      if (v78)
      {
        v79 = v78;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_100197E08();

      sub_100004118(&v132);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v80._countAndFlagsBits = 0xD00000000000001DLL;
      v80._object = 0x8000000100274D50;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
      v134 = &type metadata for String;
      v132 = v125;
      v133 = v126;

      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_1000028B0();
      sub_100004E24(v81, v82, v83);
      v84._countAndFlagsBits = 58;
      v84._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v84);
      LogInterpolation.init(stringInterpolation:)();
      sub_100197E68();
      sub_100006F90();
      sub_100197820(v131, v85);
      static LogInterpolation.sensitive(_:)();
      sub_1000028B0();
      sub_100004E24(v86, v87, v88);
      v89 = v123;
      Log.fault(_:)();

      (*(v73 + 8))(v89, v72);
      v53 = v77;
      sub_1001967B4(v77 + v109);
      v48 = v122;
      v54 = &unk_100232000;
    }

    v90 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
    swift_beginAccess();
    sub_1001975D4(v48, v53 + v90);
    swift_endAccess();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v91 = type metadata accessor for LogInterpolation();
    sub_100003B78(v91);
    v93 = *(v92 + 72);
    sub_10000A1F0();
    sub_1000C71C8();
    *(swift_allocObject() + 16) = v54[157];
    v134 = type metadata accessor for TSDataSyncDatasetGroupAccessActor();
    v132 = v53;

    v94 = AMSLogKey();
    if (v94)
    {
      v95 = v94;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v96 = v124;
    v97 = v128;
    sub_100197E08();

    sub_100004118(&v132);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v98._countAndFlagsBits = 0x61206465726F7453;
    v98._object = 0xED00002072657466;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v98);
    v134 = &type metadata for String;
    v132 = v125;
    v133 = v126;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1000028B0();
    sub_100004E24(v99, v100, v101);
    v102._countAndFlagsBits = 58;
    v102._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v102);
    LogInterpolation.init(stringInterpolation:)();
    sub_100197E68();
    sub_100006F90();
    sub_100197820(v48, v103);
    static LogInterpolation.sensitive(_:)();
    sub_1000028B0();
    sub_100004E24(v104, v105, v106);
    v107 = v129;
    Log.default(_:)();

    (*(v97 + 8))(v107, v96);
    sub_100004D28();
    sub_100197878();
  }

  sub_100005074();
}

uint64_t sub_10019234C()
{
  sub_100004194();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[25] = v5;
  v6 = type metadata accessor for Log();
  v1[30] = v6;
  sub_100003B78(v6);
  v1[31] = v7;
  v9 = *(v8 + 64);
  v1[32] = sub_1000C70D8();
  v1[33] = swift_task_alloc();
  v10 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v10);
  v12 = *(v11 + 64);
  v1[34] = sub_100003FA8();
  v13 = sub_10000AA8C();

  return _swift_task_switch(v13, v14, v15);
}

void sub_100192430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10018BA04();
  v26 = *(v25 + 208);
  if (v26)
  {
    a10 = v25 + 168;

    sub_100099DF4(&qword_1002DF9C0, &unk_10023F6D0);
    sub_1000D6484();
    v27 = Dictionary.init(dictionaryLiteral:)();
    v28 = 0;
    v29 = *(v26 + 32);
    *(v25 + 360) = v29;
    v30 = 1 << v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v26 + 64);
    a13 = " external database:";
    a14 = 0;
    a11 = xmmword_1002329D0;
    while (1)
    {
      *(v25 + 280) = v27;
      if (!v32)
      {
        while (!__OFADD__(v28, 1))
        {
          v34 = 1 << *(v25 + 360);
          v33 = sub_100197D10();
          if (v36 == v37)
          {

            goto LABEL_28;
          }

          v32 = *(v33 + 8 * v35 + 64);
          ++v28;
          if (v32)
          {
            v28 = v35;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v33 = *(v25 + 208);
LABEL_13:
      *(v25 + 288) = v32;
      *(v25 + 296) = v28;
      v38 = __clz(__rbit64(v32)) | (v28 << 6);
      v39 = (*(v33 + 48) + 16 * v38);
      v40 = *v39;
      *(v25 + 304) = *v39;
      v41 = v39[1];
      *(v25 + 312) = v41;
      sub_100197BF4(v33, v38);
      v43 = *(v42 + 16);
      a18 = *(v42 + 8);
      *(v25 + 328) = v43;
      a21 = v41;
      a19 = v26;
      a20 = v40;
      if (*(v26 + 16))
      {
        v44 = *(v25 + 200);
        v45 = *(v44 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 36));
        *(v25 + 168) = v40;
        *(v25 + 176) = v41;
        v46 = swift_task_alloc();
        *(v46 + 16) = a10;

        v47 = sub_10000C760();
        LOBYTE(v45) = sub_10015D6FC(v47, v46, v45);

        if (v45)
        {
          sub_1001ABF58(v40, v41, *(v25 + 216), *(v25 + 272));
          v83 = swift_task_alloc();
          v84 = sub_100197DA4(v83);
          *v84 = v85;
          sub_1000053F8(v84);
          sub_10000F438();

          sub_100193758();
          return;
        }
      }

      else
      {
      }

      a16 = v43;
      a17 = v27;
      v48 = *(v25 + 264);
      v49 = *(v25 + 232);
      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      v50 = type metadata accessor for LogInterpolation();
      sub_100003B78(v50);
      v52 = *(v51 + 72);
      sub_10000A1F0();
      v53 = swift_allocObject();
      *(v25 + 40) = sub_100008CD8(v53, xmmword_1002329D0);
      *(v25 + 16) = v49;

      v54 = AMSLogKey();
      if (v54)
      {
        v55 = v54;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v56 = *(v25 + 264);
      v57 = *(v25 + 248);
      a15 = *(v25 + 240);
      static LogInterpolation.prefix(_:_:)();

      sub_100004118((v25 + 16));
      sub_10000426C();
      *(v25 + 48) = a19;
      *(v25 + 56) = a18;
      *(v25 + 64) = a16;
      *(v25 + 72) = &type metadata for TSDataSyncDatasetRecord;
      static LogInterpolation.sensitive(_:)();
      sub_100004E24(v25 + 48, &unk_1002DFC10, &qword_10022E6D0);
      Log.default(_:)();

      (*(v57 + 8))(v56, a15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 184) = a17;
      sub_10014EB30(a20, v41);
      sub_10000B818();
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_38;
      }

      v64 = v59;
      v65 = v60;
      sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
      v26 = v25 + 184;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v63))
      {
        v26 = *(v25 + 184);
        v66 = sub_10014EB30(a20, a21);
        if ((v65 & 1) != (v67 & 1))
        {
          sub_10000F438();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v64 = v66;
      }

      v27 = *(v25 + 184);
      if (v65)
      {
        sub_100197CA0(v27[7] + 16 * v64);
      }

      else
      {
        sub_1000035B8(&v27[v64 >> 6]);
        v68 = (v27[6] + 16 * v64);
        *v68 = a20;
        v68[1] = a21;
        v69 = v27[7] + 16 * v64;
        *v69 = 0;
        *(v69 + 8) = 0;
        v70 = v27[2];
        v37 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v37)
        {
          goto LABEL_39;
        }

        v27[2] = v71;
      }

      v32 &= v32 - 1;
    }
  }

LABEL_28:
  v73 = *(v25 + 264);
  v72 = *(v25 + 272);
  v74 = *(v25 + 256);

  sub_1000D3518();
  sub_10000F438();

  v77(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, *(&a11 + 1), a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_100192984(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_100004504();
  *v6 = v5;
  v7 = v4[42];
  *v6 = *v2;
  v5[43] = v1;

  v8 = v4[41];
  v9 = v4[40];
  v10 = v4[34];
  v11 = v4[29];
  if (v1)
  {
    sub_100004E24(v10, &qword_1002DBC28, &qword_100232F70);

    v12 = sub_100193054;
  }

  else
  {
    v5[44] = a1;
    sub_100004E24(v10, &qword_1002DBC28, &qword_100232F70);

    v12 = sub_100192B48;
  }

  return _swift_task_switch(v12, v11, 0);
}

void sub_100192B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  v91 = v26 + 168;
  v27 = *(v26 + 352);
  v29 = *(v26 + 304);
  v28 = *(v26 + 312);
  v30 = *(v26 + 280);
  swift_isUniquelyReferenced_nonNull_native();
  v93 = v30;
  sub_100150450();

  v31 = *(v26 + 296);
  v32 = v30;
  v33 = (*(v26 + 288) - 1) & *(v26 + 288);
  v92 = *(v26 + 344);
  while (1)
  {
    *(v26 + 280) = v32;
    if (!v33)
    {
      break;
    }

    v34 = *(v26 + 208);
LABEL_9:
    *(v26 + 288) = v33;
    *(v26 + 296) = v31;
    v39 = sub_100197DE8(v34, __rbit64(v33));
    v41 = *v40;
    *(v26 + 304) = *v40;
    v42 = v40[1];
    *(v26 + 312) = v42;
    sub_100197BF4(v39, v43);
    v45 = *(v44 + 16);
    a18 = *(v44 + 8);
    a19 = 1;
    *(v26 + 328) = v45;
    a20 = v41;
    a21 = v42;
    if (MEMORY[0x11])
    {
      v46 = *(v26 + 200);
      v47 = *(v46 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 36));
      *(v26 + 168) = v41;
      *(v26 + 176) = v42;
      v48 = swift_task_alloc();
      *(v48 + 16) = v91;

      v49 = sub_10000C760();
      LOBYTE(v47) = sub_10015D6FC(v49, v48, v47);

      if (v47)
      {
        sub_1001ABF58(v41, v42, *(v26 + 216), *(v26 + 272));
        v86 = swift_task_alloc();
        v87 = sub_100197DA4(v86);
        *v87 = v88;
        sub_1000053F8();
        sub_10000F438();

        sub_100193758();
        return;
      }
    }

    else
    {
    }

    a16 = v45;
    a17 = v32;
    v50 = *(v26 + 264);
    v51 = *(v26 + 232);
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v52 = type metadata accessor for LogInterpolation();
    sub_100003B78(v52);
    v54 = *(v53 + 72);
    sub_10000A1F0();
    v55 = swift_allocObject();
    *(v26 + 40) = sub_100008CD8(v55, xmmword_1002329D0);
    *(v26 + 16) = v51;

    v56 = AMSLogKey();
    if (v56)
    {
      v57 = v56;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v58 = *(v26 + 264);
    v59 = *(v26 + 248);
    a15 = *(v26 + 240);
    sub_100010EE0();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v26 + 16));
    sub_10000426C();
    *(v26 + 48) = 1;
    *(v26 + 56) = a18;
    *(v26 + 64) = v45;
    *(v26 + 72) = &type metadata for TSDataSyncDatasetRecord;
    static LogInterpolation.sensitive(_:)();
    sub_100004E24(v26 + 48, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v59 + 8))(v58, a15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 184) = a17;
    sub_10014EB30(a20, a21);
    sub_10000B818();
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v66 = v61;
    v67 = v62;
    sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v65))
    {
      v68 = *(v26 + 184);
      v69 = sub_10014EB30(a20, a21);
      if ((v67 & 1) != (v70 & 1))
      {
        sub_10000F438();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v66 = v69;
    }

    v32 = *(v26 + 184);
    if (v67)
    {
      sub_100197CA0(v32[7] + 16 * v66);
    }

    else
    {
      sub_1000035B8(&v32[v66 >> 6]);
      v71 = (v32[6] + 16 * v66);
      *v71 = a20;
      v71[1] = a21;
      v72 = v32[7] + 16 * v66;
      *v72 = 0;
      *(v72 + 8) = 0;
      v73 = v32[2];
      v38 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v38)
      {
        goto LABEL_35;
      }

      v32[2] = v74;
    }

    v33 &= v33 - 1;
  }

  while (1)
  {
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    v35 = 1 << *(v26 + 360);
    v34 = sub_100197D10();
    if (v37 == v38)
    {
      break;
    }

    v33 = *(v34 + 8 * v36 + 64);
    ++v31;
    if (v33)
    {
      v31 = v36;
      goto LABEL_9;
    }
  }

  v76 = *(v26 + 264);
  v75 = *(v26 + 272);
  v77 = *(v26 + 256);

  sub_1000D3518();
  sub_10000F438();

  v80(v78, v79, v80, v81, v82, v83, v84, v85, a9, v91, 3, 6, " external database:", v92, a15, a16, a17, a18, a19, a20, a21, v93, a23, a24, a25, a26);
}

void sub_100193054()
{
  v80 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v68 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = sub_100008CD8(v7, xmmword_1002329D0);
  *(v0 + 80) = v2;
  v67 = v8;
  *(v0 + 104) = v8;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v0 + 344);
  v77 = *(v0 + 312);
  v74 = *(v0 + 280);
  v76 = *(v0 + 304);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v72 = *(v0 + 240);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  *(v0 + 136) = v15;
  sub_100007914((v0 + 112));
  sub_10000B7EC(v15);
  (*(v16 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v0 + 112, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v13 + 8))(v12, v72);
  swift_errorRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v79 = v74;
  v17 = &v79;
  sub_100150450();

  v18 = v79;
  v19 = *(v0 + 296);
  for (i = (*(v0 + 288) - 1) & *(v0 + 288); ; i &= i - 1)
  {
    *(v0 + 280) = v18;
    if (!i)
    {
      while (!__OFADD__(v19, 1))
      {
        v22 = 1 << *(v0 + 360);
        v21 = sub_100197D10();
        if (v24 == v25)
        {

          v58 = *(v0 + 264);
          v57 = *(v0 + 272);
          v59 = *(v0 + 256);

          sub_1000D3518();
          sub_100010410();

          __asm { BRAA            X2, X16 }
        }

        i = *(v21 + 8 * v23 + 64);
        ++v19;
        if (i)
        {
          v19 = v23;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v21 = *(v0 + 208);
LABEL_11:
    *(v0 + 288) = i;
    *(v0 + 296) = v19;
    v26 = sub_100197DE8(v21, __rbit64(i));
    v28 = *v27;
    *(v0 + 304) = *v27;
    v29 = v27[1];
    *(v0 + 312) = v29;
    sub_100197BF4(v26, v30);
    v32 = *(v31 + 16);
    v73 = *(v31 + 8);
    *(v0 + 328) = v32;
    v75 = v17;
    if (v17[2])
    {
      v33 = *(v0 + 200);
      v34 = *(v33 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 36));
      *(v0 + 168) = v28;
      *(v0 + 176) = v29;
      v35 = swift_task_alloc();
      *(v35 + 16) = v0 + 168;

      v36 = sub_10000C760();
      LOBYTE(v34) = sub_10015D6FC(v36, v35, v34);

      if (v34)
      {
        sub_1001ABF58(v28, v29, *(v0 + 216), *(v0 + 272));
        v62 = swift_task_alloc();
        v63 = sub_100197DA4(v62);
        *v63 = v64;
        sub_1000053F8();
        sub_100010410();

        sub_100193758();
        return;
      }
    }

    else
    {
    }

    v78 = v28;
    v70 = v29;
    v71 = v18;
    v37 = *(v0 + 264);
    v38 = *(v0 + 232);
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v0 + 40) = v67;
    *(v0 + 16) = v38;

    v39 = AMSLogKey();
    if (v39)
    {
      v40 = v39;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v41 = *(v0 + 264);
    v42 = *(v0 + 248);
    v69 = *(v0 + 240);
    sub_1000028B0();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 16));
    sub_10000426C();
    *(v0 + 48) = v75;
    *(v0 + 56) = v73;
    *(v0 + 64) = v32;
    *(v0 + 72) = &type metadata for TSDataSyncDatasetRecord;
    static LogInterpolation.sensitive(_:)();
    sub_100004E24(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v42 + 8))(v41, v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 184) = v71;
    sub_10014EB30(v78, v70);
    sub_10000B818();
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_36;
    }

    v49 = v44;
    v50 = v45;
    sub_100099DF4(&qword_1002DE9F8, &qword_10023B948);
    v17 = (v0 + 184);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v48))
    {
      break;
    }

LABEL_21:
    v18 = *(v0 + 184);
    if (v50)
    {
      sub_100197CA0(v18[7] + 16 * v49);
    }

    else
    {
      sub_1000035B8(&v18[v49 >> 6]);
      v53 = (v18[6] + 16 * v49);
      *v53 = v78;
      v53[1] = v70;
      v54 = v18[7] + 16 * v49;
      *v54 = 0;
      *(v54 + 8) = 0;
      v55 = v18[2];
      v25 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v25)
      {
        goto LABEL_37;
      }

      v18[2] = v56;
    }
  }

  v17 = *(v0 + 184);
  v51 = sub_10014EB30(v78, v70);
  if ((v50 & 1) == (v52 & 1))
  {
    v49 = v51;
    goto LABEL_21;
  }

  sub_100010410();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100193758()
{
  sub_100004194();
  v1[63] = v2;
  v1[64] = v0;
  v1[61] = v3;
  v1[62] = v4;
  v1[59] = v5;
  v1[60] = v6;
  v1[57] = v7;
  v1[58] = v8;
  v9 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  v1[65] = sub_1000C70D8();
  v1[66] = swift_task_alloc();
  v12 = type metadata accessor for Log();
  v1[67] = v12;
  sub_100003B78(v12);
  v1[68] = v13;
  v15 = *(v14 + 64);
  v1[69] = sub_1000C70D8();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v16 = sub_10000AA8C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100193858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  v27 = *(v26 + 568);
  v28 = *(v26 + 512);
  static Log.tsDataSync.getter();
  v29 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v26 + 576) = v29;
  v30 = type metadata accessor for LogInterpolation();
  sub_100003B78(v30);
  v32 = *(v31 + 72);
  *(v26 + 584) = v32;
  LODWORD(v31) = *(v33 + 80);
  *(v26 + 640) = v31;
  v34 = (v31 + 32) & ~v31;
  v124 = v32;
  v109 = 3 * v32;
  v110 = v31;
  v111 = v29;
  v35 = swift_allocObject();
  v36 = sub_100008CD8(v35, xmmword_1002329D0);
  *(v26 + 208) = v28;
  *(v26 + 592) = v36;
  v122 = (v26 + 208);
  v108 = v36;
  *(v26 + 232) = v36;

  v37 = AMSLogKey();
  v113 = v34;
  if (v37)
  {
    v38 = v37;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v39 = *(v26 + 544);
  v115 = *(v26 + 568);
  v117 = *(v26 + 536);
  v40 = *(v26 + 472);
  v118 = *(v26 + 480);
  v120 = *(v26 + 528);
  v42 = *(v26 + 456);
  v41 = *(v26 + 464);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v122);
  LogInterpolation.init(stringLiteral:)();
  *(v26 + 240) = v42;
  *(v26 + 248) = v41;
  *(v26 + 256) = v40;
  *(v26 + 264) = &type metadata for TSDataSyncDatasetRecord;

  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v26 + 240, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v43 = *(v39 + 8);
  *(v26 + 600) = v43;
  *(v26 + 608) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v115, v117);
  sub_1000C68A8(v118, v120, &qword_1002DBC28, &qword_100232F70);
  v44 = type metadata accessor for TSDataSyncDatasetState(0);
  v45 = sub_10000A218();
  v47 = sub_100004DFC(v45, v46, v44);
  v48 = *(v26 + 528);
  if (v47 == 1)
  {
    sub_100004E24(*(v26 + 528), &qword_1002DBC28, &qword_100232F70);
LABEL_8:
    v67 = *(v26 + 496);
    v66 = *(v26 + 504);
    sub_100197580();
    sub_100004950();
    swift_allocError();
    *v68 = v67;
    *(v68 + 8) = v66;
    *(v68 + 16) = 1;
    *(v68 + 24) = 0;
    swift_willThrow();
    v69 = *(v26 + 568);
    v70 = *(v26 + 560);
    v71 = *(v26 + 552);
    v72 = *(v26 + 528);
    v73 = *(v26 + 520);

    sub_100002E08();
    sub_10000F438();

    return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, v108, 3, 6, v109, v110, v111, v113, v115, v117, v118, v120, v122, v124, a23, a24, a25, a26);
  }

  v49 = *(v48 + 48);
  v50 = *(v48 + 56);

  sub_1000081A4();
  sub_100197878();
  if (!v50)
  {
    goto LABEL_8;
  }

  v51 = *(v26 + 520);
  v52 = *(v26 + 504);
  v53 = *(v26 + 480);
  v54 = *(v26 + 488);
  v55 = *v54;
  v56 = v54[1];
  v57 = v54[5];
  v58 = v54[6];
  *(v26 + 80) = *(v26 + 496);
  *(v26 + 88) = v52;
  *(v26 + 96) = v55;
  *(v26 + 104) = v56;
  *(v26 + 112) = v49;
  *(v26 + 120) = v50;
  *(v26 + 128) = v57;
  *(v26 + 136) = v58;
  v59 = *(v26 + 80);
  v60 = *(v26 + 96);
  v61 = *(v26 + 128);
  *(v26 + 48) = *(v26 + 112);
  *(v26 + 64) = v61;
  *(v26 + 16) = v59;
  *(v26 + 32) = v60;
  v121 = (v26 + 16);
  sub_1000C68A8(v53, v51, &qword_1002DBC28, &qword_100232F70);
  v62 = sub_100004DFC(v51, 1, v44);
  v63 = *(v26 + 520);
  v64 = *(v26 + 504);
  if (v62 == 1)
  {

    sub_100004E24(v63, &qword_1002DBC28, &qword_100232F70);
    v119 = 0;
    v65 = 0;
  }

  else
  {
    v84 = *(v26 + 464);
    v83 = *(v26 + 472);
    v85 = *(v63 + *(v44 + 72));

    sub_1000081A4();
    sub_100197878();
    v119 = sub_1001AC17C(v84, v83, v85);
    v65 = v86;
  }

  v116 = 2 * v124;
  *(v26 + 616) = v65;
  v87 = *(v26 + 560);
  v88 = *(v26 + 512);
  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  *(v26 + 296) = v108;
  *(v26 + 272) = v88;

  v89 = AMSLogKey();
  if (v89)
  {
    v90 = v89;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v91 = *(v26 + 560);
  v112 = *(v26 + 536);
  v114 = *(v26 + 512);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v26 + 272));
  LogInterpolation.init(stringLiteral:)();
  *(v26 + 328) = &type metadata for TSDataSyncWriteConfiguration;
  v92 = swift_allocObject();
  *(v26 + 304) = v92;
  v93 = *(v26 + 32);
  v92[1] = *v121;
  v92[2] = v93;
  v94 = *(v26 + 64);
  v92[3] = *(v26 + 48);
  v92[4] = v94;
  sub_10011DB70(v26 + 80, v26 + 144);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v26 + 304, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v43(v91, v112);
  v95 = *(v114 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_externalWriter);
  v123 = (*(v114 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_externalWriter + 8) + 8);
  v125 = *v123 + **v123;
  v96 = (*v123)[1];
  v97 = swift_task_alloc();
  *(v26 + 624) = v97;
  *v97 = v26;
  v97[1] = sub_100193F38;
  v98 = *(v26 + 456);
  sub_10000F438();

  return v105(v99, v100, v101, v102, v103, v104, v105, v106, a9, v108, 3, 6, v109, v110, v112, v114, v116, v65, v119, v121, v123, v125, a23, a24, a25, a26);
}

uint64_t sub_100193F38()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v3[54] = v1;
  v3[55] = v5;
  v3[56] = v0;
  v7 = *(v6 + 624);
  v8 = *v1;
  sub_100004504();
  *v9 = v8;
  v3[79] = v0;

  if (v0)
  {
    v10 = v3[64];
    v11 = sub_1001942A4;
  }

  else
  {
    v12 = v3[77];
    v13 = v3[64];

    v11 = sub_100194054;
    v10 = v13;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100194054()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 640);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 552);
  v6 = *(v0 + 512);
  static Log.tsDataSync.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002329E0;
  *(v0 + 360) = v1;
  *(v0 + 336) = v6;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = *(v0 + 440);
  v27 = *(v0 + 600);
  v28 = *(v0 + 608);
  v11 = *(v0 + 584);
  v26 = *(v0 + 568);
  v12 = *(v0 + 552);
  v13 = *(v0 + 536);
  v29 = *(v0 + 560);
  v30 = *(v0 + 528);
  v31 = *(v0 + 520);
  v14 = v7 + ((*(v0 + 640) + 32) & ~*(v0 + 640));
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 336));
  *(v0 + 392) = &type metadata for Int;
  *(v0 + 368) = v10;
  static LogInterpolation.sensitive(_:)();
  sub_1000028B0();
  sub_100004E24(v15, v16, v17);
  sub_10000426C();
  *(v0 + 424) = &type metadata for TSDataSyncWriteConfiguration;
  v18 = swift_allocObject();
  *(v0 + 400) = v18;
  v19 = *(v0 + 32);
  v18[1] = *(v0 + 16);
  v18[2] = v19;
  v20 = *(v0 + 64);
  v18[3] = *(v0 + 48);
  v18[4] = v20;
  static LogInterpolation.sensitive(_:)();
  sub_1000028B0();
  sub_100004E24(v21, v22, v23);
  Log.default(_:)();

  v27(v12, v13);

  sub_1000D3518();

  return v24(v10);
}

uint64_t sub_1001942A4()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[77];

  sub_10011DBA8((v0 + 10));
  v2 = v0[79];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[66];
  v7 = v0[65];

  sub_100002E08();
  sub_10000AD14();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100194398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100003018();
  sub_100008280(v11);
  v12 = type metadata accessor for Date();
  v13 = sub_100003724(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000306C();
  v20 = v19 - v18;
  v114 = type metadata accessor for TSDataSyncDatasetState(0);
  v21 = sub_100003724(v114);
  v113 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_1000030E4();
  sub_10000A1C0(v25);
  v26 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v27 = sub_1000030B8(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10000308C();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  sub_10011852C();
  v34 = sub_100099DF4(&qword_1002DF9B0, &qword_10023F6B0);
  v35 = sub_1000030B8(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v38);
  sub_10000D478();
  v122 = v39;
  v41 = a1 + 56;
  v40 = *(a1 + 56);
  v42 = 1 << *(a1 + 32);
  sub_100197CC0();
  v120 = v43 >> 6;
  v111 = (v15 + 16);
  v119 = a1;

  v45 = 0;
  v110 = _swiftEmptyArrayStorage;
  v116 = v20;
  v117 = v3;
  v118 = a1 + 56;
  v115 = v12;
LABEL_2:
  v46 = v45;
  while (v4)
  {
    v45 = v46;
LABEL_8:
    v47 = (*(v119 + 48) + ((v45 << 10) | (16 * __clz(__rbit64(v4)))));
    v48 = *v47;
    v49 = v47[1];
    if (*(a2 + 16))
    {

      v50 = sub_10014EB30(v48, v49);
      if (v51)
      {
        v52 = v50;
        v53 = a2;
        v54 = v48;
        v55 = v32;
        v56 = *(v53 + 56);
        v57 = v53;
        v58 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
        sub_10000307C(v58);
        v60 = v56 + *(v59 + 72) * v52;
        v32 = v55;
        v3 = v117;
        sub_100197820(v60, v122);
        v48 = v54;
        sub_10000B7B0();
        v64 = v58;
        a2 = v57;
        v12 = v115;
      }

      else
      {
        type metadata accessor for TSDataSyncDatasetScheduleInput(0);
        sub_100007B78();
      }

      sub_100002728(v61, v62, v63, v64);
    }

    else
    {
      type metadata accessor for TSDataSyncDatasetScheduleInput(0);
      sub_100007B78();
      sub_100002728(v65, v66, v67, v68);
    }

    if (*(a3 + 16))
    {
      sub_10014EB30(v48, v49);
      if (v69)
      {
        v70 = *(a3 + 56);
        v71 = *(v113 + 72);
        sub_100007E10();
        sub_100197820(v72, v112);
        (*v111)(v3, v112 + *(v114 + 36), v12);
        sub_1000081A4();
        sub_100197878();
        v73 = 0;
      }

      else
      {
        v73 = 1;
      }
    }

    else
    {
      v73 = 1;
    }

    v4 &= v4 - 1;
    sub_100002728(v3, v73, 1, v12);
    sub_1000C68A8(v3, v32, &qword_1002DA970, &qword_1002318B0);
    sub_1000075D8(v32);
    if (v74)
    {

      v75 = sub_1000050CC();
      sub_100004E24(v75, v76, &qword_1002318B0);
      sub_100004E24(v122, &qword_1002DF9B0, &qword_10023F6B0);
      result = sub_100004E24(v32, &qword_1002DA970, &qword_1002318B0);
      v46 = v45;
    }

    else
    {
      sub_100008AA4(&v129);
      v77(v116, v32, v12);
      Date.timeIntervalSince1970.getter();
      v79 = v78;
      Date.timeIntervalSince1970.getter();
      if (v79 - v80 >= 5.0)
      {

        sub_100008AA4(&v128);
        v88(v116, v12);
        v3 = v117;
      }

      else
      {
        sub_10000288C(&v127);
        sub_1000C68A8(v81, v82, &qword_1002DF9B0, &qword_10023F6B0);
        v83 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
        v84 = sub_100013DDC();
        v3 = v117;
        if (sub_100004DFC(v84, v85, v83) == 1)
        {
          sub_100004E24(v116, &qword_1002DF9B0, &qword_10023F6B0);
LABEL_31:
          v89 = Dictionary.init(dictionaryLiteral:)();
          *&v124 = 1701667182;
          *(&v124 + 1) = 0xE400000000000000;
          AnyHashable.init<A>(_:)();
          v90 = String._bridgeToObjectiveC()();

          v91 = sub_100197454();
          v125 = v91;
          *&v124 = v90;
          sub_1001514B8(&v124, v123);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_10015032C(v123, v126, isUniquelyReferenced_nonNull_native);
          sub_100117298(v126);
          *&v124 = 0x6573756163;
          *(&v124 + 1) = 0xE500000000000000;
          AnyHashable.init<A>(_:)();
          v93 = NSString.init(stringLiteral:)();
          v125 = v91;
          *&v124 = v93;
          sub_1001514B8(&v124, v123);
          v94 = swift_isUniquelyReferenced_nonNull_native();
          sub_10015032C(v123, v126, v94);
          sub_100117298(v126);
          v95 = v110;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100197D6C();
            v95 = v99;
          }

          v97 = v95[2];
          v96 = v95[3];
          if (v97 >= v96 >> 1)
          {
            sub_10013C648(v96 > 1, v97 + 1, 1, v95);
            v110 = v100;
          }

          else
          {
            v110 = v95;
          }

          sub_100008AA4(&v128);
          v98(v116, v12);
          sub_100004E24(v117, &qword_1002DA970, &qword_1002318B0);
          result = sub_100004E24(v122, &qword_1002DF9B0, &qword_10023F6B0);
          v110[2] = v97 + 1;
          v110[v97 + 4] = v89;
          v41 = v118;
          goto LABEL_2;
        }

        v86 = *(v116 + *(v83 + 40));
        sub_100197878();
        if (v86 == 2 || (v86 & 1) == 0)
        {
          goto LABEL_31;
        }

        sub_100008AA4(&v128);
        v87(v116, v12);
      }

      sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
      result = sub_100004E24(v122, &qword_1002DF9B0, &qword_10023F6B0);
      v46 = v45;
    }

    v41 = v118;
  }

  while (1)
  {
    v45 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      return result;
    }

    if (v45 >= v120)
    {
      break;
    }

    v4 = *(v41 + 8 * v45);
    ++v46;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  if (!v110[2])
  {
  }

  type metadata accessor for TaskPriority();
  sub_100007B78();
  sub_100002728(v101, v102, v103, v104);
  v105 = swift_allocObject();
  v105[2] = 0;
  v105[3] = 0;
  v105[4] = sub_100197DB0();
  v105[5] = v110;

  v106 = sub_100197C54();
  sub_10018C610(v106, v107, v109, v108, v105);

  return sub_100004E24(v109, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_100194D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for Log();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100194E08, 0, 0);
}

uint64_t sub_100194E08()
{
  v4 = v0[15];
  v5 = v0[10];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v6 = type metadata accessor for LogInterpolation();
  sub_100003B78(v6);
  v8 = *(v7 + 72);
  sub_100005D98();
  sub_1000C71C8();
  v9 = swift_allocObject();
  v10 = sub_100008CD8(v9, xmmword_1002329F0);
  sub_100197E48(v10);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000AEC4();

  sub_100004118(v3);
  v13 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100197D48("Sending auto bug capture report for ", v13);
  v14 = sub_100099DF4(&qword_1002DF9A8, &qword_10023F6A8);
  sub_100197E28(v14);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v3, &unk_1002DFC10, &qword_10022E6D0);
  v15._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v2 + 8))(v1);
  v16 = objc_allocWithZone(sub_100010FD0());
  sub_100197BDC();
  v0[16] = sub_100197B98();
  v17 = _s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKFTu[1];
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = sub_100195070;
  sub_10000381C();

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(v19, v20, v21, v22);
}

uint64_t sub_100195070()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_10000452C();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *v1;
  sub_100004504();
  *v9 = v8;
  *(v10 + 144) = v3;

  if (!v0)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v11, v12, v13);
}

void sub_100195174(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v224 = a3;
  v236 = a2;
  v9 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003018();
  sub_100008280(v13);
  v223 = type metadata accessor for Date();
  v14 = sub_100003724(v223);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_1000030E4();
  sub_10000A1C0(v19);
  v222 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C(v222);
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  sub_100003018();
  sub_10000A1C0(v23);
  v24 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v25 = sub_1000030B8(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v28);
  v30 = v214 - v29;
  __chkstk_darwin(v31);
  sub_10011852C();
  v32 = type metadata accessor for LogInterpolation.StringInterpolation();
  v33 = sub_1000030B8(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_1000030E4();
  v243 = v36;
  sub_100013FAC();
  v235 = type metadata accessor for Log();
  v37 = sub_100003724(v235);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_1000030E4();
  v242 = v42;
  v43 = sub_100013FAC();
  v229 = type metadata accessor for TSDataSyncDatasetState(v43);
  v44 = sub_100003724(v229);
  v240 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v48);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v49);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_100002DD0();
  v246 = v51;
  sub_100005238();
  __chkstk_darwin(v52);
  sub_10000D478();
  sub_10000A1C0(v53);
  v54 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v55 = sub_1000030B8(v54);
  v57 = *(v56 + 64);
  __chkstk_darwin(v55);
  sub_1000037D4();
  v241 = v58;
  sub_100005238();
  __chkstk_darwin(v59);
  sub_10000D478();
  v61 = sub_100008280(v60);
  v234 = type metadata accessor for TSDataSyncDatasetGroupState(v61);
  v62 = *(a1 + *(v234 + 20));
  v63 = *(v62 + 64);
  v239 = v62 + 64;
  v64 = *(v62 + 32);
  sub_100197CC0();
  v238 = v65 >> 6;
  v233 = "silent failed persist for ";
  v232 = v39 + 8;
  v216 = v16 + 32;
  v219 = (v16 + 8);
  v214[1] = " after write failure ";
  v214[2] = "anged after writing ";
  v214[3] = " when no write result";
  v215 = 0x80000001002755F0;
  v230 = v66;

  v67 = 0;
  v231 = xmmword_1002329F0;
  v226 = _swiftEmptyArrayStorage;
  v228 = v30;
  v227 = v5;
LABEL_2:
  v68 = v241;
LABEL_3:
  sub_100197DD4();
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
    v71 = v67;
LABEL_9:
    v72 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v73 = *(v230 + 56);
    v74 = (*(v230 + 48) + 16 * (v72 | (v71 << 6)));
    v75 = *v74;
    a1 = v74[1];
    v76 = *(v240 + 72);
    sub_100007E10();
    sub_100108290(&v252);
    sub_100197820(v77, v78);
    v79 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    v80 = *(v79 + 48);
    v81 = v241;
    *v241 = v75;
    v81[1] = a1;
    v68 = v81;
    sub_10000DC74();
    sub_100197914(v4, v83 + v82);
    sub_10000B7B0();
    sub_100002728(v84, v85, v86, v79);

LABEL_10:
    v87 = v68;
    v88 = v237;
    sub_100197338(v87, v237);
    v89 = sub_100197DFC();
    v91 = sub_100099DF4(v89, v90);
    if (sub_100004DFC(v88, 1, v91) == 1)
    {
      sub_100197DB0();

      v204 = v226;
      if (v226[2])
      {
        type metadata accessor for TaskPriority();
        v205 = v225;
        sub_100007B78();
        sub_100002728(v206, v207, v208, v209);
        v210 = swift_allocObject();
        v210[2] = 0;
        v210[3] = 0;
        v210[4] = sub_100004F70();
        v210[5] = v204;

        v211 = sub_100197C54();
        sub_10018C610(v211, v212, v205, v213, v210);

        sub_100004E24(v205, &qword_1002DB950, &qword_100232E50);
      }

      else
      {
      }

      return;
    }

    v92 = a4;
    v93 = *v88;
    v244 = v88[1];
    v245 = v93;
    v94 = *(v91 + 48);
    sub_10000DC74();
    sub_100197914(v88 + v95, v246);
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v96 = type metadata accessor for LogInterpolation();
    sub_100003B78(v96);
    v98 = *(v97 + 72);
    sub_10000A1F0();
    v101 = v100 & ~v99;
    sub_1000C71D4();
    v102 = swift_allocObject();
    *(&v252 + 1) = sub_100008CD8(v102, v231);
    *&v251 = sub_100004F70();

    v103 = AMSLogKey();
    if (v103)
    {
      v104 = v103;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v4 = v102 + v101;
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v251);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v105._countAndFlagsBits = 0x676E696B63656843;
    v105._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v105);
    *(&v252 + 1) = &type metadata for TSDataSyncDatasetIdentifier;
    v106 = v244;
    *&v251 = v245;
    *(&v251 + 1) = v244;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v251, &unk_1002DFC10, &qword_10022E6D0);
    sub_10000D46C();
    sub_100197DC8(&v254);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v107);
    a4 = v92;
    if (v92)
    {
      *(&v252 + 1) = sub_100099DF4(&qword_1002DF9A0, &qword_10023F6A0);
      *&v251 = v92;
    }

    else
    {
      v251 = 0u;
      v252 = 0u;
    }

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v251, &unk_1002DFC10, &qword_10022E6D0);
    v108._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v108);
    LogInterpolation.init(stringInterpolation:)();
    v109 = v242;
    Log.debug(_:)();

    sub_100008AA4(&v253);
    v110(v109, v235);
    v111 = *(v236 + *(v234 + 20));
    if (!*(v111 + 16))
    {
      goto LABEL_30;
    }

    v4 = *v246;
    v112 = v246[1];
    v113 = *(v236 + *(v234 + 20));
    sub_10014EB30(v245, v106);
    if ((v114 & 1) == 0)
    {
      goto LABEL_30;
    }

    v115 = *(v111 + 56);
    v116 = *(v240 + 72);
    sub_100007E10();
    sub_10000288C(&v251 + 8);
    sub_100197820(v117, v118);
    v120 = *a1;
    v119 = a1[1];

    sub_1000081A4();
    sub_100197878();
    v121 = v4 == v120 && v112 == v119;
    if (v121)
    {

      v122 = v244;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v122 = v244;
      if ((v4 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (!*(v111 + 16) || (sub_100197D20(), v4 = *(v246 + *(v129 + 44)), sub_10014EB30(v245, v122), (v130 & 1) == 0))
    {
LABEL_30:

      sub_1000081A4();
      sub_100197878();
      goto LABEL_31;
    }

    v131 = *(v111 + 56);
    sub_100007E10();
    sub_10000288C(&v249 + 8);
    sub_100197820(v132, v133);
    sub_100197D20();
    v135 = *(a1 + *(v134 + 44));
    sub_1000081A4();
    sub_100197878();
    v136 = v228;
    v137 = v227;
    if (v4 == v135)
    {
      v220 = v116;
      if (a4 && *(a4 + 16) && (sub_10014EB30(v245, v244), (v138 & 1) != 0))
      {
        v139 = v224;
        if (v224 && (v140 = v223, *(v224 + 16)) && (v4 = v224, v141 = sub_10014EB30(v245, v244), (v142 & 1) != 0))
        {
          v143 = *(v139 + 56) + 16 * v141;
          v144 = *v143;
          if (*(v143 + 8) == 1)
          {
            *&v251 = 0;
            *(&v251 + 1) = 0xE000000000000000;
            v184 = sub_100013DDC();
            sub_100197448(v184, v185);
            _StringGuts.grow(_:)(71);
            sub_100197DC8(&v239);
            v186._countAndFlagsBits = 0xD000000000000045;
            String.append(_:)(v186);
            *&v249 = v144;
            sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
            _print_unlocked<A, B>(_:_:)();
            v187 = sub_100013DDC();
            sub_100107D70(v187, v188);
          }

          else
          {
            if (v144 >= 1)
            {
              *&v251 = 0;
              *(&v251 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(73);
              sub_10000D46C();
              sub_100197DC8(&v238);
              String.append(_:)(v189);
              *&v249 = v144;
            }

            else
            {
              v214[0] = *v143;
              sub_100197D20();
              sub_1000C68A8(v246 + *(v145 + 48), v137, &qword_1002DA970, &qword_1002318B0);
              if (*(v111 + 16) && (sub_10014EB30(v245, v244), (v146 & 1) != 0))
              {
                v147 = *(v111 + 56);
                sub_100007E10();
                v148 = v218;
                sub_100197820(v149, v218);
                sub_100197D20();
                sub_1000C68A8(v148 + *(v150 + 48), v136, &qword_1002DA970, &qword_1002318B0);
                sub_1000081A4();
                sub_100197878();
              }

              else
              {
                sub_100007B78();
                sub_100002728(v151, v152, v153, v140);
              }

              a1 = v136;
              v154 = *(v222 + 48);
              sub_100108290(&v247);
              sub_1000C68A8(v155, v156, &qword_1002DA970, &qword_1002318B0);
              sub_1000C68A8(v136, v4 + v154, &qword_1002DA970, &qword_1002318B0);
              sub_1000075D8(v4);
              if (v121)
              {
                sub_100010EE0();
                sub_100004E24(v157, v158, v159);
                sub_100010EE0();
                sub_100004E24(v160, v161, v162);
                sub_1000075D8(v4 + v154);
                v68 = v241;
                if (!v121)
                {
                  goto LABEL_53;
                }

                sub_100004E24(v4, &qword_1002DA970, &qword_1002318B0);
              }

              else
              {
                v163 = v221;
                sub_1000C68A8(v4, v221, &qword_1002DA970, &qword_1002318B0);
                sub_1000075D8(v4 + v154);
                if (v164)
                {
                  sub_100010EE0();
                  sub_100004E24(v165, v166, v167);
                  sub_100010EE0();
                  sub_100004E24(v168, v169, v170);
                  sub_100008AA4(&v244);
                  v171(v163, v140);
                  v68 = v241;
LABEL_53:
                  sub_100004E24(v4, &qword_1002DACF0, &qword_100232140);
LABEL_55:

                  sub_1000081A4();
                  sub_100197878();
                  goto LABEL_3;
                }

                sub_100008AA4(&v241);
                a1 = v217;
                v172(v217, v4 + v154, v140);
                sub_1001978CC(&qword_1002E27C0, &type metadata accessor for Date);
                LODWORD(v220) = dispatch thunk of static Equatable.== infix(_:_:)();
                v173 = *v219;
                (*v219)(a1, v140);
                sub_100010EE0();
                sub_100004E24(v174, v175, v176);
                sub_100010EE0();
                sub_100004E24(v177, v178, v179);
                v173(v221, v140);
                sub_100010EE0();
                sub_100004E24(v180, v181, v182);
                v68 = v241;
                if ((v220 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              *&v251 = 0;
              *(&v251 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(78);
              sub_10000D46C();
              sub_100197DC8(&v237);
              String.append(_:)(v190);
              *&v249 = v214[0];
            }

            v191._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v191);

            v192._countAndFlagsBits = 0x7364726F63657220;
            v192._object = 0xE800000000000000;
            String.append(_:)(v192);
          }

          v4 = *(&v251 + 1);
          v220 = v251;
        }

        else
        {
          sub_10000D46C();
          v220 = v183;
          v4 = v215;
        }

        v193 = Dictionary.init(dictionaryLiteral:)();
        *&v249 = 1701667182;
        *(&v249 + 1) = 0xE400000000000000;
        AnyHashable.init<A>(_:)();
        v250 = &type metadata for String;
        *&v249 = v245;
        *(&v249 + 1) = v244;
        sub_1001514B8(&v249, &v248);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v247 = v193;
        sub_10015032C(&v248, &v251, isUniquelyReferenced_nonNull_native);
        v195 = v247;
        sub_100117298(&v251);
        *&v249 = 0x6573756163;
        *(&v249 + 1) = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        v250 = &type metadata for String;
        *&v249 = v220;
        *(&v249 + 1) = v4;
        sub_1001514B8(&v249, &v248);
        v196 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v195;
        sub_10015032C(&v248, &v251, v196);
        v197 = v247;
        sub_100117298(&v251);
        v198 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100197D6C();
          v198 = v202;
        }

        v226 = v198;
        v200 = v198[2];
        v199 = v198[3];
        a1 = (v200 + 1);
        if (v200 >= v199 >> 1)
        {
          sub_10013C648(v199 > 1, v200 + 1, 1, v226);
          v226 = v203;
        }

        sub_1000081A4();
        sub_100197878();
        v201 = v226;
        v226[2] = a1;
        v201[v200 + 4] = v197;
      }

      else
      {

        sub_1000081A4();
        sub_100197878();
      }

      goto LABEL_2;
    }

    sub_1000081A4();
    sub_100197878();

LABEL_31:
    v68 = v241;
    sub_100197DD4();
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v71 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v71 >= v70)
    {
      v123 = sub_100197DFC();
      sub_100099DF4(v123, v124);
      sub_100007B78();
      sub_100002728(v125, v126, v127, v128);
      v6 = 0;
      goto LABEL_10;
    }

    v6 = *(v69 + 8 * v71);
    ++v67;
    if (v6)
    {
      v67 = v71;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100196250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = *(*(type metadata accessor for LogInterpolation.StringInterpolation() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for Log();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10019633C, 0, 0);
}

uint64_t sub_10019633C()
{
  v4 = v0[15];
  v5 = v0[10];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v6 = type metadata accessor for LogInterpolation();
  sub_100003B78(v6);
  v8 = *(v7 + 72);
  sub_100005D98();
  sub_1000C71C8();
  v9 = swift_allocObject();
  v10 = sub_100008CD8(v9, xmmword_1002329F0);
  sub_100197E48(v10);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000AEC4();

  sub_100004118(v3);
  v13 = LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100197D48("Sending auto bug capture report for ", v13);
  v14 = sub_100099DF4(&qword_1002DF9A8, &qword_10023F6A8);
  sub_100197E28(v14);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v3, &unk_1002DFC10, &qword_10022E6D0);
  v15._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v2 + 8))(v1);
  v16 = objc_allocWithZone(sub_100010FD0());
  sub_100197BDC();
  v0[16] = sub_100197B98();
  v17 = _s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKFTu[1];
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = sub_1001965A4;
  sub_10000381C();

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(v19, v20, v21, v22);
}

uint64_t sub_1001965A4()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_10000452C();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *v1;
  sub_100004504();
  *v9 = v8;
  *(v10 + 144) = v3;

  if (!v0)
  {
  }

  sub_10000381C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001966A8()
{
  sub_100004194();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  sub_100002E08();

  return v3();
}

uint64_t sub_100196718()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];
  sub_10013D194();
  sub_100004950();
  swift_allocError();
  *v5 = v1;

  sub_100002E08();
  sub_10000AD14();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1001967B4(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v3 = sub_100003724(v2);
  v47 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100003F24();
  v50 = v7;
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100003018();
  v48 = v12;
  sub_100013FAC();
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  v14 = sub_1000030B8(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000306C();
  v46 = type metadata accessor for Log();
  v17 = sub_100003724(v46);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_10000306C();
  v24 = v23 - v22;
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v25 = type metadata accessor for LogInterpolation();
  sub_100003B78(v25);
  v27 = *(v26 + 72);
  sub_10000A1F0();
  v28 = swift_allocObject();
  v52 = sub_100008CD8(v28, xmmword_1002329F0);
  v51[0] = v1;

  v29 = AMSLogKey();
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v51);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0xD00000000000003ALL;
  v31._object = 0x8000000100275590;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
  v52 = v2;
  v32 = sub_100007914(v51);
  sub_100197820(a1, v32);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v51, &unk_1002DFC10, &qword_10022E6D0);
  v33._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v19 + 8))(v24, v46);
  v34 = objc_allocWithZone(sub_100010FD0());
  sub_100197BDC();
  sub_100197B98();
  sub_100003F9C();
  type metadata accessor for TaskPriority();
  sub_100007B78();
  sub_100002728(v35, v36, v37, v38);
  sub_100197820(a1, v50);
  v39 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v34;
  sub_100197914(v50, v40 + v39);
  v41 = v34;
  v42 = sub_100197C54();
  sub_10018C610(v42, v43, v48, v44, v40);

  return sub_100004E24(v48, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_100196C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v5[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100196CB0, 0, 0);
}

uint64_t sub_100196CB0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_100099DF4(&qword_1002DE4A8, &qword_10023B280);
  v4 = swift_allocObject();
  v0[19] = v4;
  *(v4 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002DF998, &unk_10023F670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  sub_10000B0F8();
  sub_100197820(v3, v1);
  sub_1001978CC(&unk_1002DC7D0, type metadata accessor for TSDataSyncDatasetGroupIdentifier);
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0;
  *(inited + 80) = 0xE000000000000000;
  *(v4 + 32) = Dictionary.init(dictionaryLiteral:)();
  v6 = _s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKFTu[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_100196E64;
  v8 = v0[15];
  sub_10000381C();

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(v9, v10, v11, v12);
}

uint64_t sub_100196E64()
{
  sub_1000D354C();
  sub_10000DB4C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_10000452C();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *(v7 + 152);
  v10 = *v1;
  sub_100004504();
  *v11 = v10;
  *(v5 + 168) = v3;

  if (v0)
  {
    sub_10000381C();
    sub_10000AD14();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v16 = *(v5 + 144);

    v17 = *(v10 + 8);
    sub_10000AD14();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_100196FC8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  sub_10013D194();
  sub_100004950();
  swift_allocError();
  *v3 = v1;

  sub_100002E08();

  return v4();
}

uint64_t sub_100197058()
{
  sub_100004D28();
  sub_100197878();
  sub_100008EE8();
  sub_100197878();

  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001970E0()
{
  sub_100197058();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TSDataSyncDatasetGroupAccessActor()
{
  result = qword_1002DF830;
  if (!qword_1002DF830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100197160()
{
  result = type metadata accessor for TSDataSyncDatasetGroupState(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100197260()
{
  sub_10000DB4C();
  v1 = sub_100002834();
  v2 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v1);
  sub_1000030B8(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_100005380(v8);
  *v9 = v10;
  v9[1] = sub_1000C6A64;
  sub_100197BC8();

  return sub_100196C1C(v11, v12, v13, v14, v15);
}

uint64_t sub_100197338(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001973A8()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100005380(v5);
  *v6 = v7;
  v6[1] = sub_100013D70;
  sub_100197BC8();
  sub_10000AD14();

  return sub_100196250(v8, v9, v10, v11, v12);
}

uint64_t sub_100197448(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_100197454()
{
  result = qword_1002DB930;
  if (!qword_1002DB930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DB930);
  }

  return result;
}

uint64_t sub_100197498()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001974E0()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100005380(v5);
  *v6 = v7;
  v6[1] = sub_100013D70;
  sub_100197BC8();
  sub_10000AD14();

  return sub_100194D1C(v8, v9, v10, v11, v12);
}

unint64_t sub_100197580()
{
  result = qword_1002DF9B8;
  if (!qword_1002DF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF9B8);
  }

  return result;
}

uint64_t sub_1001975D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197658()
{
  v2 = v1;
  v3 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_100003B78(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_100003B78(v8);
  v11 = (((*(v10 + 64) + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 199) & 0xFFFFFFFFFFFFFFF8;
  v12 = type metadata accessor for Date();
  sub_1000030B8(v12);
  v14 = v0[2];
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0 + ((v11 + *(v13 + 80) + 64) & ~*(v13 + 80));
  v18 = swift_task_alloc();
  *(v2 + 16) = v18;
  *v18 = v2;
  v18[1] = sub_1000C6A64;
  sub_100197BC8();

  return sub_10018F080(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_100197820(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_100197878()
{
  v1 = sub_100002834();
  v3 = v2(v1);
  sub_10000307C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1001978CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100197914(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

__n128 sub_100197978(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10019798C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001979CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_100197A34()
{
  result = qword_1002DF9D8;
  if (!qword_1002DF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF9D8);
  }

  return result;
}

unint64_t sub_100197A8C()
{
  result = qword_1002DF9E0;
  if (!qword_1002DF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF9E0);
  }

  return result;
}

unint64_t sub_100197AE4()
{
  result = qword_1002DF9E8;
  if (!qword_1002DF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF9E8);
  }

  return result;
}

unint64_t sub_100197B38()
{
  result = qword_1002DF9F0;
  if (!qword_1002DF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF9F0);
  }

  return result;
}

uint64_t sub_100197B98()
{

  return AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)();
}

uint64_t sub_100197C64()
{
  v2 = v0[26];
  v3 = v0[24];
  v6 = v0[23];
  v7 = v0[22];
  v8 = v0[21];
  v9 = v0[20];
  v10 = v0[19];
  v11 = v0[18];
  v4 = v0[15];
  v12 = v0[12];
}

uint64_t sub_100197CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;

  return sub_100107D70(v2, v3);
}

uint64_t sub_100197CDC()
{
  sub_100004118(*(v0 - 72));
  sub_100004118(*(v0 - 168));
  v1 = *(v0 - 160);

  return sub_100004118(v1);
}

uint64_t sub_100197D2C()
{

  return sub_100004DFC(v1 + v2, 1, v0);
}

void sub_100197D6C()
{
  v2 = v0[2] + 1;

  sub_10013C648(0, v2, 1, v0);
}

uint64_t sub_100197E08()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100197E28(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;
}

uint64_t sub_100197E48(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
}

uint64_t *sub_100197E68()
{
  *(v0 - 96) = *(v0 - 136);

  return sub_100007914((v0 - 120));
}

uint64_t *sub_100197E88()
{
  *(v1 - 120) = v0;

  return sub_100007914((v1 - 144));
}

unint64_t sub_100197EB0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100099DF4(&qword_1002DF9F8, &qword_10023F938);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v23 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_10011723C(*(v1 + 48) + 40 * v11, __src);
      sub_100009F20(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_10011723C(__dst, v26);
      if (!swift_dynamicCast())
      {
        sub_100004E24(__dst, &qword_1002DFA00, &unk_10023F940);

        goto LABEL_23;
      }

      sub_100009F20(&__dst[40], v26);
      sub_100004E24(__dst, &qword_1002DFA00, &unk_10023F940);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_10014EB30(v24, v25);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        v15 = v14[1];
        *v14 = v24;
        v14[1] = v25;

        v16 = (v2[7] + 16 * v12);
        v17 = v16[1];
        *v16 = v24;
        v16[1] = v25;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v18 = (v2[6] + 16 * result);
        *v18 = v24;
        v18[1] = v25;
        v19 = (v2[7] + 16 * result);
        *v19 = v24;
        v19[1] = v25;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_27;
        }

        v2[2] = v22;
      }

      v9 = v10;
      v1 = v23;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_100198184()
{
  sub_100004194();
  v0[28] = v1;
  v0[29] = v2;
  v0[26] = v3;
  v0[27] = v4;
  v5 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  v0[30] = sub_100003FA8();
  v8 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  v0[31] = sub_100003FA8();
  v11 = type metadata accessor for Date();
  v0[32] = v11;
  sub_100003B78(v11);
  v0[33] = v12;
  v14 = *(v13 + 64) + 15;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v15 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  v0[36] = v15;
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  v0[37] = sub_100003FA8();
  v18 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  v0[38] = v18;
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  v0[39] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1001982D8()
{
  sub_100004194();
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  v0[40] = MetricsActivity.init(label:)();
  dispatch thunk of MetricsActivity.activate()();
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_10019838C;
  v4 = v0[27];
  v3 = v0[28];

  return sub_100198F1C();
}

uint64_t sub_10019838C()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  *v4 = v7;
  v3[42] = v8;
  v3[43] = v0;

  if (v0)
  {
    sub_10000381C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[44] = v12;
    *v12 = v7;
    v12[1] = sub_1001984EC;
    v13 = v3[28];

    return sub_1001999D0();
  }
}

uint64_t sub_1001984EC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 352);
  *v3 = *v1;
  *(v2 + 360) = v6;
  *(v2 + 368) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001985EC()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[40];
  v4 = [objc_allocWithZone(type metadata accessor for AuthURLDelegate()) init];
  v0[47] = v4;
  [v1 setDelegate:v4];
  v5 = v2;
  v6 = [v1 dataTaskPromiseWithRequest:v5 activity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  v0[48] = v6;
  swift_unknownObjectRelease();

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_100198794;
  v7 = swift_continuation_init();
  v0[17] = sub_100099DF4(&qword_1002DB9E0, &qword_10023F930);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5D24;
  v0[13] = &unk_1002BB718;
  v0[14] = v7;
  [v6 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100198794()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100198890()
{
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);

  static Date.now.getter();
  v4 = sub_10019A1E0(v3);
  if (!v4 || (v5 = sub_100197EB0(v4), , !v5))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v6 = *(v0 + 368);
  v7 = *(v0 + 280);
  [v3 responseStatusCode];
  static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)();
  if (v6)
  {
    v8 = sub_100005424();
    v9(v8);

    v14 = *(v0 + 304);
    **(v0 + 312) = v6;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = [v3 data];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    sub_1000D361C(v0 + 144);
    v17 = *(v0 + 272);
    sub_10000D170(v11, v13);
    static HTTPHelpers.responseTimestamp(from:)();
    v18 = *(v0 + 288);
    v19 = *(v0 + 296);
    v20 = *(v0 + 264);
    v21 = *(v0 + 256);
    v40 = *(v0 + 272);
    v41 = *(v0 + 232);
    v43 = *(v0 + 280);

    v22 = v18[5];
    Date.addingTimeInterval(_:)();
    sub_100002728(v19 + v22, 0, 1, v21);
    sub_100002728(v19 + v18[6], 1, 1, v21);
    v23 = *(v20 + 16);
    v23(v19 + v18[7], v40, v21);
    v23(v19 + v18[8], v41, v21);
    v2 = [v3 responseStatusCode];
    v24 = *(v20 + 8);
    v24(v40, v21);
    result = (v24)(v43, v21);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v25 = *(v0 + 360);
    v26 = *(v0 + 336);
    v27 = *(v0 + 312);
    v42 = *(v0 + 304);
    v44 = *(v0 + 376);
    v28 = *(v0 + 288);
    v29 = *(v0 + 296);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v32 = *(v0 + 216);
    sub_100006814();
    sub_10019A2A0(v33, v30, v34);
    v35 = sub_1000081BC();
    sub_10019A35C(v35, v31, v36);
    sub_10019A2A0(v31, v29 + *(v28 + 40), type metadata accessor for TSDataSyncDatasetGroupIdentifier);
    sub_10019A300(v31);

    v37 = *(v0 + 144);
    v38 = *(v0 + 160);
    v39 = *(v0 + 176);
    *(v29 + 48) = *(v0 + 192);
    *(v29 + 16) = v38;
    *(v29 + 32) = v39;
    *v29 = v37;
    *(v29 + *(v28 + 36)) = v2;
    sub_10019A35C(v29, v27, type metadata accessor for TSDataSyncServerDatasetGroupResponse);
    swift_storeEnumTagMultiPayload();
  }

  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v3, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v15();
}

uint64_t sub_100198C90()
{
  sub_10019A3C4(*(v2 + 344));
  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v0, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v3();
}

uint64_t sub_100198D58()
{
  sub_10019A3C4(*(v2 + 368));
  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v0, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v3();
}

uint64_t sub_100198E28()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[45];
  v5 = v0[42];
  swift_willThrow();

  sub_10019A3C4(v0[49]);
  sub_100004D40();
  sub_10000F13C();

  sub_100004E24(v3, &qword_1002DBC10, &unk_10023F6E0);

  sub_100002E08();

  return v6();
}

uint64_t sub_100198F1C()
{
  sub_100004194();
  v0[10] = v1;
  v0[11] = v2;
  v3 = type metadata accessor for URL();
  v0[12] = v3;
  sub_100003B78(v3);
  v0[13] = v4;
  v6 = *(v5 + 64);
  v0[14] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100198FC4()
{
  v1 = v0[10];
  v2 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v0[11]];
  v0[15] = v2;
  [v2 setRequestEncoding:3];
  if (sub_1000D61EC())
  {
    v3 = sub_100199E28(v0[10]);
    [v2 setAccount:v3];
  }

  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100199114;
  v5 = v0[14];
  v6 = v0[10];

  return sub_1000D4850(v5, v6);
}

uint64_t sub_100199114()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_10000452C();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100199210()
{
  isa = v0[10].super.isa;
  sub_100099DF4(&qword_1002DB9E8, &unk_10023F950);
  v80 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = 0x646975472D58;
  *(inited + 40) = 0xE600000000000000;
  v6 = [objc_opt_self() deviceGUID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 48) = v7;
  *(inited + 56) = v9;
  v10 = Dictionary.init(dictionaryLiteral:)();
  v11 = sub_1000D4B24();
  v12 = *(v11 + 64);
  v74 = v11 + 64;
  v13 = sub_100007E28(v11);
  v16 = v15 >> 6;
  v76 = v15 >> 6;
  v78 = v13;
  while (1)
  {
    v80[18].super.isa = v10;
    if (!inited)
    {
      break;
    }

    v17 = v14;
LABEL_7:
    sub_100003338(__clz(__rbit64(inited)), v72, v74, v76, v78);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v10;
    v19 = sub_10000B110();
    v21 = sub_10014EB30(v19, v20);
    v23 = *(v10 + 16);
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_39;
    }

    v26 = v21;
    v27 = v22;
    sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      v28 = sub_10000B110();
      v30 = sub_10014EB30(v28, v29);
      if ((v27 & 1) != (v31 & 1))
      {
LABEL_34:

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v26 = v30;
    }

    inited &= inited - 1;
    if (v27)
    {

      v10 = v82;
      v32 = (v82[7] + 16 * v26);
      v33 = v32[1];
      *v32 = v81;
      v32[1] = v1;
    }

    else
    {
      v10 = v82;
      sub_10000AC84(&v82[v26 >> 6]);
      v34 = (v82[6] + 16 * v26);
      *v34 = v3;
      v34[1] = v2;
      v35 = (v82[7] + 16 * v26);
      *v35 = v81;
      v35[1] = v1;
      v36 = v82[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_41;
      }

      v82[2] = v38;
    }

    v14 = v17;
    v16 = v76;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      v73 = v10;
      v39 = v80[10].super.isa;

      v40 = Dictionary.init(dictionaryLiteral:)();
      v41 = sub_1000D49E8();
      v42 = *(v41 + 64);
      v77 = v41 + 64;
      v79 = v41;
      sub_100007E28(v41);
      v46 = v45 >> 6;
      v75 = v46;
      if (!v39)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v47 = v43;
LABEL_21:
        sub_100003338(__clz(__rbit64(v39)), v73, v75, v77, v79);

        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = sub_10000B110();
        v51 = sub_10014EB30(v49, v50);
        v53 = v40[2];
        v54 = (v52 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_40;
        }

        v56 = v51;
        v57 = v52;
        sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v48, v55))
        {
          v58 = sub_10000B110();
          v60 = sub_10014EB30(v58, v59);
          if ((v57 & 1) != (v61 & 1))
          {
            goto LABEL_34;
          }

          v56 = v60;
        }

        v39 &= v39 - 1;
        if (v57)
        {

          v62 = (v40[7] + 16 * v56);
          v63 = v62[1];
          *v62 = v81;
          v62[1] = v1;
        }

        else
        {
          sub_10000AC84(&v40[v56 >> 6]);
          v64 = (v40[6] + 16 * v56);
          *v64 = v3;
          v64[1] = v2;
          v65 = (v40[7] + 16 * v56);
          *v65 = v81;
          v65[1] = v1;
          v66 = v40[2];
          v37 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v37)
          {
            goto LABEL_42;
          }

          v40[2] = v67;
        }

        v43 = v47;
        v46 = v75;
        v44 = v77;
        if (!v39)
        {
LABEL_18:
          while (1)
          {
            v47 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_38;
            }

            if (v47 >= v46)
            {

              v68.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
              v80[19].super.isa = v68.super.isa;

              v69 = swift_task_alloc();
              v80[20].super.isa = v69;
              *v69 = v80;
              *(v69 + 1) = sub_1001996F4;
              v70 = v80[14].super.isa;
              v71 = v80[15].super.isa;

              sub_1001A833C(2, v70, v73, v68.super.isa);
              return;
            }

            v39 = *(v44 + 8 * v47);
            ++v43;
            if (v39)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

    inited = *(v74 + 8 * v17);
    ++v14;
    if (inited)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1001996F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_10000452C();
  *v6 = v5;
  v7 = *(v4 + 160);
  *v6 = *v2;
  *(v5 + 168) = v1;

  v8 = *(v4 + 144);

  if (!v1)
  {
    *(v5 + 176) = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10019984C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 176);

  return v4(v5);
}

uint64_t sub_1001998E0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 168);
  v5 = *(v0 + 112);

  sub_100002E08();

  return v6();
}

uint64_t sub_10019996C()
{
  sub_100004194();

  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  sub_100002E08();

  return v3();
}

uint64_t sub_1001999D0()
{
  sub_100004194();
  v0[21] = v1;
  v2 = type metadata accessor for IndexSet();
  v0[22] = v2;
  sub_100003B78(v2);
  v0[23] = v3;
  v5 = *(v4 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100199A8C()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = [objc_allocWithZone(AMSURLResponseDecoder) init];
  v0[26] = v3;
  sub_1001797AC(&qword_1002DB9D8, &type metadata accessor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  for (i = 200; i != 300; ++i)
  {
    v5 = v0[24];
    v6 = v0[22];
    v0[19] = i;
    dispatch thunk of SetAlgebra.insert(_:)();
  }

  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[21];
  (*(v9 + 32))(v7, v0[24], v8);
  IndexSet.insert(_:)(304);
  IndexSet.insert(_:)(429);
  IndexSet._bridgeToObjectiveC()(v11);
  v13 = v12;
  (*(v9 + 8))(v7, v8);
  [v3 setAllowedStatusCodes:v13];

  v14 = objc_opt_self();
  v0[27] = v14;
  v15 = [objc_opt_self() currentProcess];
  v16 = [v14 ams_configurationWithClientInfo:v15 bag:v10];
  v0[28] = v16;

  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_100199D2C;
  v17 = swift_continuation_init();
  v0[17] = sub_100099DF4(&qword_1002DB918, &unk_100232B20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5C90;
  v0[13] = &unk_1002BB740;
  v0[14] = v17;
  [v16 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100199D2C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

id sub_100199E28(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v3 = sub_1000030B8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = type metadata accessor for AccountIdentity.DSID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000306C();
  v21 = v20 - v19;
  sub_100006814();
  sub_10019A2A0(a1, v15, v22);
  v23 = sub_1000081BC();
  sub_10019A35C(v23, v8, v24);
  v25 = v8 + *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
  AccountIdentity.dsid.getter();
  sub_10019A300(v8);
  v26 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v28 = [v26 ams_iTunesAccountWithDSID:isa];

  if (!v28)
  {
    type metadata accessor for TSDataSyncNetworkingCore.Errors();
    sub_1001797AC(&qword_1002DD650, type metadata accessor for TSDataSyncNetworkingCore.Errors);
    swift_allocError();
    v30 = v29;
    v31 = *(sub_100099DF4(&qword_1002DD680, &qword_100238510) + 48);
    (*(v17 + 16))(v30, v21, v16);
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  (*(v17 + 8))(v21, v16);
  return v28;
}

uint64_t sub_10019A0B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000CA15C;

  return sub_100198184();
}

uint64_t sub_10019A170(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019A1E0(void *a1)
{
  v1 = [a1 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10019A2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10019A300(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019A35C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10019A3C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 304);
  **(v1 + 312) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10019A3E0(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for AccountIdentity();
  v4 = sub_100003724(v49);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors();
  v13 = sub_10000307C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v48 - v19);
  v21 = sub_100099DF4(&qword_1002DFAD8, &unk_10023FAD0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v48 - v23;
  v26 = (&v48 + *(v25 + 56) - v23);
  sub_10019B0D0(a1, &v48 - v23, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
  sub_10019B0D0(a2, v26, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = sub_100003A54();
    sub_10019B0D0(v36, v20, v37);
    v39 = *v20;
    v38 = v20[1];
    v40 = v20[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v41 = v26[2];
      if (v39 == *v26 && v38 == v26[1])
      {
        v46 = v26[1];
      }

      else
      {
        v43 = v26[1];
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v35 = v40 == v41;
      goto LABEL_18;
    }

LABEL_8:
    sub_100004E24(v24, &qword_1002DFAD8, &unk_10023FAD0);
    return 0;
  }

  v27 = sub_100003A54();
  sub_10019B0D0(v27, v17, v28);
  v29 = *(sub_100099DF4(&qword_1002DF4D0, &unk_10023F390) + 48);
  v30 = *&v17[v29];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v17, v49);
    goto LABEL_8;
  }

  v31 = *(v26 + v29);
  v32 = v49;
  (*(v6 + 32))(v11, v26, v49);
  v33 = static AccountIdentity.== infix(_:_:)();
  v34 = *(v6 + 8);
  v34(v11, v32);
  v34(v17, v32);
  if ((v33 & 1) == 0)
  {
LABEL_14:
    sub_10019B130(v24, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
    return 0;
  }

  v35 = v30 == v31;
LABEL_18:
  v45 = v35;
  sub_10019B130(v24, type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors);
  return v45;
}

uint64_t sub_10019A740(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAB8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10019A798(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAB8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10019A80C(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAD0);

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10019A864(uint64_t a1)
{
  v2 = sub_10019B08C(&qword_1002DFAD0);

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10019A8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for URL();
  v11 = sub_100003724(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  sub_1000072D8();
  v16 = [objc_opt_self() ams_dataVaultDirectory];
  if (v16)
  {
    v17 = v16;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_100002728(v6, v18, 1, v10);
  sub_1000CAE2C(v6, v9);
  if (sub_100004DFC(v9, 1, v10) == 1)
  {
    sub_100004E24(v9, &qword_1002DB318, &qword_10023F230);
    type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors();
    sub_100006BB8();
    sub_10019B08C(v19);
    swift_allocError();
    *v20 = 0xD000000000000016;
    v20[1] = 0x8000000100272EB0;
    v20[2] = 1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(v13 + 8))(v9, v10);
    return (*(v13 + 32))(a1, v1, v10);
  }
}

uint64_t sub_10019AB30(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100003724(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = type metadata accessor for TSDataSyncDatasetGroupStoreCore();
  v12 = sub_10000307C(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000306C();
  sub_1000072D8();
  result = sub_10019A8C0(v10);
  if (!v1)
  {
    v2[3] = type metadata accessor for LiveFileStore();
    v2[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v2);
    LiveFileStore.init()();
    v16 = sub_10000BBD4();
    v17(v16);
    v18 = *(v11 + 24);
    sub_1000081D8();
    sub_10019B0D0(a1, v2 + v19, v20);
    sub_100118C3C();
    sub_100004D68();
    return sub_10019B130(v2, v21);
  }

  return result;
}

uint64_t sub_10019AC8C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = sub_100003724(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for TSDataSyncDatasetGroupStoreCore();
  v13 = sub_10000307C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000306C();
  sub_1000072D8();
  result = sub_10019A8C0(v11);
  if (!v2)
  {
    v3[3] = type metadata accessor for LiveFileStore();
    v3[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v3);
    LiveFileStore.init()();
    v17 = sub_10000BBD4();
    v18(v17);
    v19 = *(v12 + 24);
    sub_1000081D8();
    sub_10019B0D0(a2, v3 + v20, v21);
    sub_100118EB4();
    sub_100004D68();
    return sub_10019B130(v3, v22);
  }

  return result;
}

uint64_t sub_10019ADE8(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  sub_1000072D8();
  v10 = type metadata accessor for TSDataSyncDatasetGroupStoreCore();
  v11 = sub_10000307C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v16 = (v15 - v14);
  result = sub_10019A8C0(v2);
  if (!v1)
  {
    v16[3] = type metadata accessor for LiveFileStore();
    v16[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v16);
    LiveFileStore.init()();
    (*(v7 + 32))(v16 + *(v10 + 20), v2, v4);
    v18 = *(v10 + 24);
    sub_1000081D8();
    sub_10019B0D0(a1, v16 + v19, v20);
    sub_1001192A0();
    sub_100004D68();
    return sub_10019B130(v16, v21);
  }

  return result;
}

uint64_t type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors()
{
  result = qword_1002DFA80;
  if (!qword_1002DFA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019B08C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TSDataSyncDatasetGroupFileSystemStore.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019B0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10019B130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10019B19C()
{
  sub_100004194();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v5 = type metadata accessor for Log();
  v0[13] = v5;
  sub_100003B78(v5);
  v0[14] = v6;
  v8 = *(v7 + 64) + 15;
  v0[15] = swift_task_alloc();
  v9 = type metadata accessor for DictionaryUpsert();
  v0[16] = v9;
  sub_100003B78(v9);
  v0[17] = v10;
  v12 = *(v11 + 64) + 15;
  v0[18] = swift_task_alloc();
  v13 = type metadata accessor for OnDeviceStorageError();
  v0[19] = v13;
  sub_100003B78(v13);
  v0[20] = v14;
  v16 = *(v15 + 64) + 15;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v17 = type metadata accessor for Table();
  v0[26] = v17;
  sub_100003B78(v17);
  v0[27] = v18;
  v20 = *(v19 + 64) + 15;
  v0[28] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_10019B37C()
{
  sub_1000051E0();
  v1 = v0[28];
  v2 = v0[9];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  sub_10000EF24();
  Table.init(_:database:)();
  type metadata accessor for Connection();
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];

  sub_10000EF24();
  v0[29] = Connection.__allocating_init(token:userId:)();
  v11 = _s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKFTu[1];
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_10019B528;
  sub_100005040(v0[25]);
  sub_1000050D8();

  return __s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKF();
}

uint64_t sub_10019B528()
{
  sub_100004194();
  sub_1000030F8();
  v3 = *(v2 + 240);
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 248) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10019B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v21 = 0;
  v22 = 0;
  v23 = *(v12[10] + 16);
  v24 = v12[31];
  v12[32] = v23;
  v12[33] = 0;
  while (1)
  {
    if (v22 == v23)
    {
      v29 = _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKFTu[1];
      v30 = swift_task_alloc();
      v12[38] = v30;
      *v30 = v12;
      sub_100003A70(v30);
LABEL_10:
      sub_100005040(v31);
      sub_100003128();

      return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
    }

    if (v22 >= v23)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
    }

    v25 = v12[10] + v21;
    v26 = *(v25 + 48);
    v12[34] = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_22;
    }

    sub_10000B918(v25);
    sub_10000B11C();
    v28 = v27;

    if (v24)
    {
      v12[39] = v24;
      v32 = _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKFTu[1];
      v33 = swift_task_alloc();
      v12[40] = v33;
      *v33 = v12;
      sub_100004D84(v33);
      goto LABEL_10;
    }

    v24 = *(v28 + 16);
    if (v24)
    {
      break;
    }

    v23 = v12[32];
    ++v22;
    v21 += 24;
  }

  v12[35] = v24;
  v12[6] = _swiftEmptyArrayStorage;
  sub_10000B50C();
  v34 = v12[6];
  do
  {
    v12[8] = *(v28 + 32);

    sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
    sub_100099DF4(&qword_1002DD588, &unk_100238350);
    sub_10019C6E0();
    sub_10000AC9C();
    if (v35)
    {
      sub_1000046C8();
      v37 = v12[6];
    }

    sub_10000A670();
  }

  while (!v36);
  sub_10019C704();
  sub_10000BBEC();
  v40 = sub_10019C698(v38, v39);
  sub_10000D150(v40);

  v41 = _s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKFTu[1];
  v42 = swift_task_alloc();
  v12[36] = v42;
  *v42 = v12;
  sub_100006FA8(v42);
  sub_100003128();

  return __s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKF(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_10019B854()
{
  sub_100004194();
  sub_1000030F8();
  v3 = *(v2 + 288);
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 296) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10019B954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = (*(v12[17] + 8))(v12[18], v12[16]);
  v21 = v12[37];
  v23 = v12[34];
  v22 = v12[35];
  v12[33] = v22;
  for (i = 24 * v23; ; i += 24)
  {
    v25 = v12[32];
    if (v23 == v25)
    {
      v30 = _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKFTu[1];
      v31 = swift_task_alloc();
      v12[38] = v31;
      *v31 = v12;
      sub_100003A70(v31);
LABEL_10:
      sub_100005040(v32);
      sub_100003128();

      return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
    }

    if (v23 >= v25)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v26 = v12[10] + i;
    v27 = *(v26 + 48);
    v12[34] = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_23;
    }

    sub_10000B918(v26);
    sub_10000B11C();
    v29 = v28;

    if (v21)
    {
      v12[39] = v21;
      v33 = _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKFTu[1];
      v34 = swift_task_alloc();
      v12[40] = v34;
      *v34 = v12;
      sub_100004D84(v34);
      goto LABEL_10;
    }

    v21 = *(v29 + 16);
    if (v21)
    {
      break;
    }

    ++v23;
  }

  v12[35] = v22 + v21;
  if (__OFADD__(v22, v21))
  {
LABEL_24:
    __break(1u);
    return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
  }

  v12[6] = _swiftEmptyArrayStorage;
  sub_10000B50C();
  v35 = v12[6];
  do
  {
    v12[8] = *(v29 + 32);

    sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
    sub_100099DF4(&qword_1002DD588, &unk_100238350);
    sub_10019C6E0();
    sub_10000AC9C();
    if (v36)
    {
      sub_1000046C8();
      v38 = v12[6];
    }

    sub_10000A670();
  }

  while (!v37);
  sub_10019C704();
  sub_10000BBEC();
  v41 = sub_10019C698(v39, v40);
  sub_10000D150(v41);

  v42 = _s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKFTu[1];
  v43 = swift_task_alloc();
  v12[36] = v43;
  *v43 = v12;
  sub_100006FA8();
  sub_100003128();

  return __s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKF(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_10019BBA0()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 304);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_10000381C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10019BC9C()
{
  v1 = *(v0 + 232);

  v2 = sub_100007484();
  v3(v2);

  v4 = sub_10000F16C();

  return v5(v4);
}

uint64_t sub_10019BD60()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[19];
  v7 = v0[20];
  sub_1000081F0();
  sub_10019C698(v8, v9);
  swift_allocError();
  (*(v7 + 32))(v10, v5, v6);

  (*(v4 + 8))(v2, v3);
  sub_100006BD0();

  sub_100002E08();

  return v11();
}

uint64_t sub_10019BE90()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 320);
  v3 = *v0;
  sub_100004504();
  *v4 = v3;

  sub_10000381C();

  return _swift_task_switch(v5, v6, v7);
}

void sub_10019BF8C()
{
  sub_1000051E0();
  v1 = v0[39];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  swift_willThrow();

  (*(v5 + 8))(v2, v4);
  v6 = v0[39];
  sub_100006BD0();

  sub_100002E08();
  sub_1000050D8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10019C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[24];
  v14 = v12[19];
  v15 = v12[20];
  v17 = v12[17];
  v16 = v12[18];
  v18 = v12[16];
  sub_1000081F0();
  sub_10019C698(v19, v20);
  v21 = swift_allocError();
  (*(v15 + 32))(v22, v13, v14);
  (*(v17 + 8))(v16, v18);
  v12[39] = v21;
  v23 = _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKFTu[1];
  v24 = swift_task_alloc();
  v12[40] = v24;
  *v24 = v12;
  sub_100004D84(v24);
  v26 = sub_100005040(v25);

  return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_10019C174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = v12[39];
  v15 = v12[28];
  v14 = v12[29];
  v16 = v12[26];
  v17 = v12[27];
  v19 = v12[20];
  v18 = v12[21];
  v20 = v12[19];
  sub_1000081F0();
  sub_10019C698(v21, v22);
  swift_allocError();
  (*(v19 + 32))(v23, v18, v20);

  (*(v17 + 8))(v15, v16);
  sub_100006BD0();

  sub_100002E08();
  sub_100003128();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_10019C29C()
{
  v1 = v0[23];
  v18 = v1;
  v19 = v0[29];
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v20 = v3;
  v21 = v0[13];
  v17 = *(v0[20] + 32);
  v17();
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v10 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v0[5] = v2;
  v11 = sub_100007914(v0 + 2);
  (v17)(v11, v18, v2);
  static LogInterpolation.safe(_:)();
  sub_100009DF4((v0 + 2));
  Log.error(_:)();

  (*(v20 + 8))(v4, v21);
  v12 = sub_100007484();
  v13(v12);

  v14 = sub_10000F16C();

  return v15(v14);
}

uint64_t sub_10019C4F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10019C5A8;

  return sub_10019B19C();
}

uint64_t sub_10019C5A8()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_10019C698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019C6E0()
{

  return swift_dynamicCast();
}

uint64_t sub_10019C704()
{
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[18];
}

uint64_t sub_10019C724()
{
  sub_100004194();
  v0[11] = v1;
  v0[12] = v2;
  v0[10] = v3;
  v4 = type metadata accessor for Log();
  v0[13] = v4;
  sub_100003B78(v4);
  v0[14] = v5;
  v7 = *(v6 + 64) + 15;
  v0[15] = swift_task_alloc();
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_10019C830;
  sub_100006FDC(0x644972657375);

  return sub_10019CF68();
}

uint64_t sub_10019C830()
{
  sub_100004194();
  v2 = *v1;
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  *v3 = v6;
  v2[17] = v7;
  v2[18] = v8;
  v2[19] = v0;

  if (v0)
  {
    sub_10000381C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v2[20] = v12;
    *v12 = v6;
    v12[1] = sub_10019C9B0;
    v13 = v2[11];
    v14 = v2[12];
    sub_100006FDC(0x6449746E65696C63);

    return sub_10019CF68();
  }
}

uint64_t sub_10019C9B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_10000452C();
  *v7 = v6;
  v9 = *(v8 + 160);
  v10 = *v3;
  sub_10000452C();
  *v11 = v10;
  v6[21] = v2;

  if (!v2)
  {
    v6[22] = a2;
    v6[23] = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10019CAD8()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = [objc_opt_self() buildVersion];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (os_variant_has_internal_content())
  {
    v7 = 0x6C616E7265746E69;
  }

  else
  {
    v7 = 0x72656D6F74737563;
  }

  v8 = v0[23];
  v9 = v0[17];
  v10 = v0[15];
  v11 = v0[10];

  *v11 = v8;
  v11[1] = v1;
  v11[2] = v9;
  v11[3] = v2;
  v11[4] = v4;
  v11[5] = v6;
  v11[6] = v7;
  v11[7] = 0xE800000000000000;
  v12 = v0[1];

  return v12();
}

uint64_t sub_10019CBE0()
{
  v3 = v1[19];
  sub_10000336C();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v6 = *(v5 + 72);
  *(sub_100008208() + 16) = xmmword_1002329D0;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007800();

  sub_100007E54();
  sub_1000074A8();
  v8 = v1[6];
  v9 = v1[7];
  v1[5] = v9;
  v10 = sub_100007914(v1 + 2);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  static LogInterpolation.sensitive(_:)();
  sub_100009DF4((v1 + 2));
  Log.default(_:)();

  (*(v2 + 8))(v0);
  v11 = v1[15];
  v12 = v1[10];

  sub_10000682C();

  return v13();
}

uint64_t sub_10019CDA0()
{
  v3 = v1[18];

  v4 = v1[21];
  sub_10000336C();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  v7 = *(v6 + 72);
  *(sub_100008208() + 16) = xmmword_1002329D0;
  v8 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007800();

  sub_100007E54();
  sub_1000074A8();
  v9 = v1[6];
  v10 = v1[7];
  v1[5] = v10;
  v11 = sub_100007914(v1 + 2);
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  static LogInterpolation.sensitive(_:)();
  sub_100009DF4((v1 + 2));
  Log.default(_:)();

  (*(v2 + 8))(v0);
  v12 = v1[15];
  v13 = v1[10];

  sub_10000682C();

  return v14();
}

uint64_t sub_10019CF68()
{
  sub_100004194();
  v0[23] = v1;
  v0[24] = v2;
  v0[21] = v3;
  v0[22] = v4;
  v0[19] = v5;
  v0[20] = v6;
  v7 = type metadata accessor for AccountIdentity.DSID();
  v0[25] = v7;
  sub_100003B78(v7);
  v0[26] = v8;
  v10 = *(v9 + 64) + 15;
  v0[27] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10019D020()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[22];
  v17 = v0[20];
  v18 = v0[24];
  v16 = v0[19];
  AccountIdentity.dsid.getter();
  v7 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v9 = [v7 ams_iTunesAccountWithDSID:isa];
  v0[28] = v9;

  (*(v3 + 8))(v1, v2);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 identifierForAccount:v9 bag:v18 bagNamespace:v11 keyName:v12];
  v0[29] = v13;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10019D258;
  v14 = swift_continuation_init();
  v0[17] = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5D24;
  v0[13] = &unk_1002BB7D8;
  v0[14] = v14;
  [v13 resultWithCompletion:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10019D258()
{
  sub_100004194();
  v1 = *v0;
  sub_10000452C();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 240) = *(v4 + 48);
  sub_10000381C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10019D35C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = String.init(_:)(v0[18]);

  v5 = v0[1];

  return v5(v4._countAndFlagsBits, v4._object);
}

uint64_t sub_10019D3F8()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[30];

  return v5();
}

uint64_t sub_10019D4A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10019D57C;

  return sub_10019D688(a4, a1, a2, a3, a5, a6, a7);
}

uint64_t sub_10019D57C()
{
  sub_100007F3C();
  v3 = v2;
  v5 = v4;
  v6 = *(*v1 + 16);
  v11 = *v1;

  v9 = *(v11 + 8);
  if (!v0)
  {
    v7 = v5;
    v8 = v3;
  }

  return v9(v7, v8);
}

uint64_t sub_10019D688(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 320) = a6;
  *(v7 + 328) = a7;
  *(v7 + 304) = a4;
  *(v7 + 312) = a5;
  *(v7 + 288) = a2;
  *(v7 + 296) = a3;
  *(v7 + 408) = a1;
  v8 = type metadata accessor for AccountIdentity.DSID();
  *(v7 + 336) = v8;
  v9 = *(v8 - 8);
  *(v7 + 344) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_10019D754, 0, 0);
}

uint64_t sub_10019D754()
{
  v4 = *(v0 + 352);
  v5 = *(v0 + 288);
  v6 = *(v0 + 408);
  AccountIdentity.dsid.getter();
  if (v6)
  {
    if (v6 == 1)
    {
      v29 = v0 + 280;
      v7 = v0 + 208;
      v8 = v0 + 80;
      v9 = sub_100004DAC();
      *(v0 + 360) = v10(v9);
      (*(v3 + 8))(v1, v2);
      objc_opt_self();
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      v13 = sub_100006844(v12, "identifierForAccount:bag:bagNamespace:keyName:");
      *(v0 + 368) = v13;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 280;
      *(v0 + 88) = sub_10019DB04;
      v14 = swift_continuation_init();
      *(v0 + 264) = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1000C5D24;
      *(v0 + 232) = &unk_1002BB878;
      *(v0 + 240) = v14;
    }

    else
    {
      v8 = v0 + 16;
      v29 = v0 + 272;
      v7 = v0 + 144;
      v24 = sub_100004DAC();
      *(v0 + 384) = v25(v24);
      (*(v3 + 8))(v1, v2);
      objc_opt_self();
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v13 = sub_100006844(v27, "identifierForAccount:bag:bagNamespace:keyName:");
      *(v0 + 392) = v13;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 272;
      *(v0 + 24) = sub_10019DD0C;
      v28 = swift_continuation_init();
      *(v0 + 200) = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1000C5D24;
      *(v0 + 168) = &unk_1002BB850;
      *(v0 + 176) = v28;
    }

    [v13 resultWithCompletion:{v7, v29}];

    return _swift_continuation_await(v8);
  }

  else
  {
    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v17 = *(v0 + 336);
    sub_10019DFF4();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v16 + 8))(v15, v17);
    v21 = *(v0 + 352);

    v22 = *(v0 + 8);

    return v22(v18, v20);
  }
}

uint64_t sub_10019DB04()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_10019DC90;
  }

  else
  {
    v3 = sub_10019DC14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019DC14()
{
  sub_100007F3C();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  String.init(_:)(*(v0 + 280));

  v3 = *(v0 + 352);

  v4 = sub_100006FF8();

  return v5(v4);
}

uint64_t sub_10019DC90()
{
  sub_100007F3C();
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  swift_willThrow();

  v4 = v0[47];
  v5 = v0[44];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10019DD0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_10019DE98;
  }

  else
  {
    v3 = sub_10019DE1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019DE1C()
{
  sub_100007F3C();
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  String.init(_:)(*(v0 + 272));

  v3 = *(v0 + 352);

  v4 = sub_100006FF8();

  return v5(v4);
}

uint64_t sub_10019DE98()
{
  sub_100007F3C();
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  swift_willThrow();

  v4 = v0[50];
  v5 = v0[44];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10019DF14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10019E054;

  return sub_10019D4A0(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_10019DFF4()
{
  result = qword_1002DD3E0;
  if (!qword_1002DD3E0)
  {
    type metadata accessor for AccountIdentity.DSID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD3E0);
  }

  return result;
}

uint64_t sub_10019E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v56 = a2;
  v4 = *a3;
  v49 = *(a3 + 16);
  v50 = v4;
  v5 = *(a3 + 32);
  v47 = *(a3 + 40);
  v48 = v5;
  v46 = *(a3 + 48);
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_1000037D4();
  v51 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for Log();
  v11 = sub_100003724(v10);
  v53 = v12;
  v54 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000037D4();
  v45 = v15;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  static Log.tsDataSync.getter();
  v19 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v20 = *(type metadata accessor for LogInterpolation() - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v52 = *(v20 + 72);
  v43 = v21 + 2 * v52;
  v44 = v19;
  v22 = swift_allocObject();
  v42 = xmmword_1002329F0;
  *(v22 + 16) = xmmword_1002329F0;
  v23 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x696C756465686353;
  v24._object = 0xEC0000002020676ELL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  v25 = *a3;
  if (*a3 == 2)
  {
    v26 = 0;
    v27 = 0;
    v57[1] = 0;
    v57[2] = 0;
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = *(a3 + 8);
    *(v26 + 40) = *(a3 + 24);
    *(v26 + 52) = *(a3 + 36);
    v27 = &unk_1002BC0A8;
  }

  v57[0] = v26;
  v58 = v27;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4(v57);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v29 = *(v53 + 8);
  v29(v18, v54);
  if (*a3 != 2)
  {
    v30 = v45;
    static Log.tsDataSync.getter();
    *(swift_allocObject() + 16) = v42;
    v31 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v32._object = 0x8000000100272EF0;
    v32._countAndFlagsBits = 0xD000000000000045;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    v58 = &unk_1002BC0A8;
    v33 = swift_allocObject();
    v57[0] = v33;
    v34 = v49;
    *(v33 + 16) = v50;
    *(v33 + 32) = v34;
    v35 = v47;
    *(v33 + 48) = v48;
    *(v33 + 56) = v35;
    *(v33 + 64) = v46;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v57);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v29(v30, v54);
    v37 = String.utf8CString.getter();
    xpc_activity_unregister((v37 + 32));
  }

  v38 = swift_allocObject();
  v40 = v55;
  v39 = v56;
  *(v38 + 16) = v55;
  *(v38 + 24) = v39;

  sub_1001AE964(v40, v39, a3, &unk_10023FC58, v38);
}

uint64_t sub_10019E534(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10019E554, 0, 0);
}

uint64_t sub_10019E554()
{
  sub_10019E5B4(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10019E5B4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v21 = type metadata accessor for Log();
  v5 = sub_100003724(v21);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v12 = *(type metadata accessor for LogInterpolation() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v15 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v20;
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x6B73617420534144;
  v17._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  v22[3] = &type metadata for String;
  v22[0] = v16;
  v22[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4(v22);
  v18._countAndFlagsBits = 0x676E696E6E757220;
  v18._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  (*(v7 + 8))(v11, v21);
  if (qword_1002DA5A8 != -1)
  {
    swift_once();
  }

  return sub_10019E914(v16, a2);
}

uint64_t sub_10019E87C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000CB6D0;

  return sub_10019E534(v2, v3);
}

uint64_t sub_10019E914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v6 = sub_1000030B8(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v36 = &v35 - v9;
  v10 = type metadata accessor for Log();
  v11 = sub_100003724(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v18 = type metadata accessor for LogInterpolation();
  sub_100003B78(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v39[3] = ObjectType;
  v39[0] = v3;
  v23 = v3;
  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v39);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v13 + 8))(v17, v10);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  sub_100008F38(0xD000000000000015, 0x8000000100275C90);
  v26 = type metadata accessor for TaskPriority();
  v27 = v36;
  sub_100002728(v36, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v29 = v38;
  v28[4] = v37;
  v28[5] = v29;
  v28[6] = v23;
  v30 = v23;

  sub_10013ABD4(0, 0, v27, &unk_10023FE80, v28);

  v31 = sub_10000D4B8(21);
  return sub_1001AC540(v31, v32, v33);
}

void *sub_10019EC38()
{
  v1 = v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_lock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_lock));
  if (*(v1 + 8))
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag);
    sub_1001512EC(v0 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_metrics, v5);
    type metadata accessor for TSDataSyncCoordinatorActor();
    swift_allocObject();
    v2 = sub_10017AA10(v3, &type metadata for TSDataSyncSyncDASScheduler, &off_1002BB8C0, v5, &type metadata for AccountsFrameworkFinder, &off_1002B44E0, &type metadata for TSDataSyncMetricsIdentifierStore, &off_1002BB840);
    *(v1 + 8) = v2;
  }

  os_unfair_lock_unlock(v1);
  return v2;
}

id sub_10019ED1C()
{
  result = [objc_allocWithZone(type metadata accessor for TSDataSyncService()) init];
  qword_1003106D8 = result;
  return result;
}

id sub_10019ED4C()
{
  if (qword_1002DA5A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003106D8;

  return v1;
}

uint64_t sub_10019EDD0(uint64_t a1)
{
  v2 = sub_1001A4A6C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10019EE0C(uint64_t a1)
{
  v2 = sub_1001A4A6C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10019EE64(uint64_t a1)
{
  v2 = sub_1001A4C28();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10019EEA0(uint64_t a1)
{
  v2 = sub_1001A4C28();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

id sub_10019EEDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_lock];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_opt_self() defaultBag];
  v5 = objc_allocWithZone(type metadata accessor for SendableBag());
  v6 = SendableBag.init(wrappedBag:)();
  *&v1[OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag] = v6;
  v11 = type metadata accessor for MetricsOnAllBuilds();
  v12 = &protocol witness table for MetricsOnAllBuilds;
  sub_100007914(&v10);
  v7 = v6;
  MetricsOnAllBuilds.init(bag:)();
  sub_10000601C(&v10, &v1[OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_metrics]);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10019EFF4()
{
  sub_100004194();
  v1[81] = v0;
  v1[80] = v2;
  v1[82] = swift_getObjectType();
  v3 = type metadata accessor for MetricsEvent();
  v1[83] = v3;
  sub_100003B78(v3);
  v1[84] = v4;
  v6 = *(v5 + 64);
  v1[85] = sub_100003FA8();
  v7 = type metadata accessor for FlagKeys();
  v1[86] = v7;
  sub_100003B78(v7);
  v1[87] = v8;
  v10 = *(v9 + 64);
  v1[88] = sub_100003FA8();
  v11 = type metadata accessor for Date();
  v1[89] = v11;
  sub_100003B78(v11);
  v1[90] = v12;
  v14 = *(v13 + 64);
  v1[91] = sub_1000D3604();
  v1[92] = swift_task_alloc();
  v15 = type metadata accessor for TSDataSyncEntryPoint();
  v1[93] = v15;
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  v1[94] = sub_100003FA8();
  v18 = type metadata accessor for UUID();
  v1[95] = v18;
  sub_100003B78(v18);
  v1[96] = v19;
  v21 = *(v20 + 64);
  v1[97] = sub_100003FA8();
  v22 = type metadata accessor for TSDataSyncExternalEvent(0);
  v1[98] = v22;
  sub_1000030B8(v22);
  v24 = *(v23 + 64);
  v1[99] = sub_100003FA8();
  v25 = type metadata accessor for AccountIdentity();
  v1[100] = v25;
  sub_100003B78(v25);
  v1[101] = v26;
  v28 = *(v27 + 64);
  v1[102] = sub_1000D3604();
  v1[103] = swift_task_alloc();
  v29 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v29);
  v31 = *(v30 + 64);
  v1[104] = sub_100003FA8();
  v32 = type metadata accessor for Log();
  v1[105] = v32;
  sub_100003B78(v32);
  v1[106] = v33;
  v35 = *(v34 + 64);
  v1[107] = sub_1000D3604();
  v1[108] = swift_task_alloc();
  v36 = sub_10000EF80();

  return _swift_task_switch(v36, v37, v38);
}

uint64_t sub_10019F2B0()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 864);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  static Log.tsDataSync.getter();
  *(v0 + 872) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  *(v0 + 880) = *(v5 + 72);
  *(v0 + 1024) = *(v6 + 80);
  *(sub_1001A4C84() + 16) = xmmword_1002329F0;
  *(v0 + 416) = v2;
  *(v0 + 392) = v3;
  v7 = v3;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  v8 = *(v0 + 864);
  v9 = *(v0 + 848);
  v22 = *(v0 + 840);
  v10 = *(v0 + 832);
  v11 = *(v0 + 640);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 392));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  v12._object = 0x8000000100275BE0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v13 = sub_100003AE0(0, &qword_1002DF148, NSDictionary_ptr);
  *(v0 + 888) = v13;
  *(v0 + 448) = v13;
  *(v0 + 424) = v11;
  v14 = v11;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 424, &unk_1002DFC10, &qword_10022E6D0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v16 = *(v9 + 8);
  *(v0 + 896) = v16;
  *(v0 + 904) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v22);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v17 = *(v0 + 648);
  *(v0 + 912) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD00000000000001ALL, v18);
  *(v0 + 920) = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 928) = *(v17 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag);
  v19 = swift_task_alloc();
  *(v0 + 936) = v19;
  *v19 = v0;
  v19[1] = sub_10019F570;
  sub_1000D32C8();
  sub_100003128();

  return sub_10017AB18();
}

uint64_t sub_10019F570()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 936);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  *(v5 + 944) = v0;

  if (!v0)
  {
    *(v5 + 1028) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10019F67C()
{
  if (*(v0 + 1028) != 1)
  {
    sub_1000074C8();
    v4 = *(v0 + 704);
    sub_1001A4DC0();
    v5 = sub_10000D4B8(26);
    sub_1001AC540(v5, v6, v7);

    sub_100003844();
    sub_1000D3574();

    __asm { BRAA            X1, X16 }
  }

  sub_1001A0A90(*(v0 + 640), v0 + 352);
  if (!*(v0 + 376))
  {
    sub_100004E7C(v0 + 352, &qword_1002DB958, &qword_100232B60);
LABEL_16:
    sub_1001A4980();
    swift_allocError();
    *v22 = 3;
    *(v22 + 8) = 2;
    swift_willThrow();
    goto LABEL_17;
  }

  v2 = *(v0 + 640);
  sub_10000601C((v0 + 352), v0 + 312);
  *(v0 + 608) = 7565409;
  *(v0 + 616) = 0xE300000000000000;
  v3 = [v2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  *(v0 + 520) = v53;
  *(v0 + 536) = v54;
  if (!*(v0 + 544))
  {
    sub_100004E7C(v0 + 520, &unk_1002DFC10, &qword_10022E6D0);
    goto LABEL_15;
  }

  v10 = *(v0 + 888);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_100004118((v0 + 312));
    goto LABEL_16;
  }

  v11 = *(v0 + 944);
  v12 = *(v0 + 824);
  v13 = *(v0 + 808);
  v14 = *(v0 + 800);
  v15 = *(v0 + 632);
  *(v0 + 952) = v15;
  sub_10011A364(v15);
  *(v0 + 960) = v16;
  v17 = sub_10000C4FC((v0 + 312), *(v0 + 336));
  v18 = *(v13 + 16);
  v18(v12, v17, v14);
  v19 = sub_10011A504(v15, v12);
  v20 = (v13 + 8);
  v21 = *(v0 + 824);
  v1 = *(v0 + 800);
  if (v11)
  {
    (*v20)(v21, *(v0 + 800));

    sub_100004118((v0 + 312));
LABEL_17:
    sub_10000ACB4();
    v23 = sub_100002AE0();
    sub_1001A4E00(v23, xmmword_1002329D0);
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v26 = 0;
    }

    v52 = *(v0 + 904);
    sub_10000C778();

    sub_100004118((v0 + 456));
    LogInterpolation.init(stringLiteral:)();
    sub_100004994();
    sub_100005190();
    sub_10000B7EC(v26);
    (*(v27 + 16))();
    static LogInterpolation.sensitive(_:)();
    sub_100004E7C(v0 + 488, &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v28 = sub_100003EC4();
    v1(v28);
    swift_task_alloc();
    sub_10000DEA0();
    *(v0 + 1000) = v29;
    *v29 = v30;
    sub_100003A98(v29);
    sub_1000D3574();

    return sub_10017AECC(v31, v32);
  }

  v35 = *(v0 + 792);
  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v38 = *(v0 + 768);
  v49 = *(v0 + 760);
  v50 = *(v0 + 752);
  v39 = *(v0 + 744);
  v51 = *(v0 + 648);
  (*v20)(v21, v1);
  static Date.now.getter();
  v40 = sub_10000C4FC((v0 + 312), *(v0 + 336));
  v18(v35 + v36[5], v40, v1);
  UUID.init()();
  v41 = UUID.uuidString.getter();
  v43 = v42;
  (*(v38 + 8))(v37, v49);
  v44 = v35 + v36[6];
  *v44 = 0;
  *(v44 + 8) = 1;
  *(v35 + v36[7]) = 0;
  *(v35 + v36[8]) = v19;
  v45 = (v35 + v36[9]);
  *v45 = 0;
  v45[1] = 0;
  v46 = (v35 + v36[10]);
  *v46 = v41;
  v46[1] = v43;
  sub_1001A47CC(v35, v50);
  swift_storeEnumTagMultiPayload();
  *(v0 + 968) = sub_10019EC38();
  v47 = swift_task_alloc();
  *(v0 + 976) = v47;
  *v47 = v0;
  v47[1] = sub_10019FC30;
  sub_100005040(*(v0 + 752));
  sub_1000D3574();

  return sub_10017B18C();
}

uint64_t sub_10019FC30()
{
  sub_100007F3C();
  v2 = *v1;
  sub_1000077D8();
  *v4 = v3;
  v5 = v2[122];
  *v4 = *v1;
  *(v3 + 984) = v0;

  v6 = v2[121];
  v7 = v2[120];

  sub_10000A688();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10019FD6C()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 752);

  sub_100004DD0();
  sub_1001A4830(v2, v3);
  sub_100006868();
  sub_100004118((v0 + 312));
  sub_1000074C8();
  v4 = *(v0 + 704);
  sub_1001A4DC0();
  v5 = sub_10000D4B8(26);
  sub_1001AC540(v5, v6, v7);

  sub_100003844();

  return v8();
}

uint64_t sub_10019FE94()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 1000);
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 1008) = v0;

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10019FF90()
{
  v1 = v0[126];
  type metadata accessor for TSDataSyncConfigAccessActor();
  sub_100172FD8(v0 + 34);
  if (v1)
  {
    v2 = v0[124];
    sub_10018A46C((v0 + 2));

    v3 = v0[114];
    v4 = v0[108];
    sub_100002EF4();
    v21 = v0[94];
    v22 = v0[92];
    v5 = v0[91];
    v23 = v0[88];
    sub_1001A4DC0();
    v6 = sub_10000D4B8(26);
    sub_1001AC540(v6, v7, v8);

    sub_100002E08();
    sub_100008A70();

    __asm { BRAA            X1, X16 }
  }

  v11 = v0[102];
  v12 = v0[101];
  v13 = v0[100];
  v14 = sub_10000C4FC(v0 + 34, v0[37]);
  (*(v12 + 16))(v11, v14, v13);
  swift_task_alloc();
  sub_10000DEA0();
  v0[127] = v15;
  *v15 = v16;
  v15[1] = sub_1001A0178;
  v17 = v0[116];
  v18 = v0[102];
  sub_100008A70();

  return sub_10019C724();
}

uint64_t sub_1001A0178()
{
  sub_100007F3C();
  sub_1000030F8();
  v2 = v1;
  sub_1000077D8();
  *v3 = v2;
  v5 = v4[127];
  v6 = v4[102];
  v7 = v4[101];
  v8 = v4[100];
  v9 = *v0;
  sub_100004504();
  *v10 = v9;

  (*(v7 + 8))(v6, v8);
  sub_100004118((v2 + 272));
  v11 = sub_10000EF80();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001A02B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1001A4E64();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 736);
  v32 = *(v28 + 704);
  v33 = *(v28 + 696);
  v34 = *(v28 + 688);
  v35 = *(v28 + 648);
  *(v28 + 576) = *(v28 + 192);
  sub_1001A491C(v28 + 576, v28 + 592, &qword_1002DCC48, &qword_100238200);
  sub_10018A46C(v28 + 16);
  v36 = OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_metrics;
  static Date.now.getter();
  (*(v33 + 104))(v32, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v34);
  LOBYTE(v31) = FlagKeys.isEnabled.getter();
  (*(v33 + 8))(v32, v34);
  if (v31)
  {
    v37 = *(v28 + 728);
    static Date.now.getter();
    v38 = *(v28 + 992);
    v39 = *(v28 + 736);
    v40 = *(v28 + 728);
    v41 = *(v28 + 720);
    v42 = *(v28 + 712);
    if (*(v28 + 584))
    {
      v75 = *(v28 + 712);
      v73 = *(v28 + 728);
      v43 = (v35 + v36);
      v44 = *(v28 + 680);
      v45 = *(v28 + 672);
      v71 = *(v28 + 664);
      v46 = *(v28 + 576);
      sub_10011DE50();
      v48 = v47;
      sub_100004E7C(v28 + 208, &qword_1002DF3B8, &qword_10023F050);
      a13 = v48;
      a17 = &type metadata for String;
      a14 = 0xD000000000000013;
      a15 = 0x8000000100275C50;
      sub_1001A8ED8(&a14);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      v49 = v43[4];
      sub_10000C4FC(v43, v43[3]);
      sub_100002CC0();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      sub_100004E7C(v28 + 576, &qword_1002DCC48, &qword_100238200);
      (*(v45 + 8))(v44, v71);
      v50 = *(v41 + 8);
      v50(v73, v75);
      v50(v39, v75);
    }

    else
    {
      sub_100004E7C(v28 + 208, &qword_1002DF3B8, &qword_10023F050);

      v55 = *(v41 + 8);
      v55(v40, v42);
      v55(v39, v42);
    }
  }

  else
  {
    v51 = *(v28 + 992);
    v52 = *(v28 + 736);
    v53 = *(v28 + 720);
    v54 = *(v28 + 712);
    sub_100004E7C(v28 + 208, &qword_1002DF3B8, &qword_10023F050);

    sub_100004E7C(v28 + 576, &qword_1002DCC48, &qword_100238200);
    (*(v53 + 8))(v52, v54);
  }

  sub_1000074C8();
  v72 = v57;
  v74 = v56;
  v58 = *(v28 + 704);
  sub_1001A4DC0();
  v76 = v59;
  v77 = v60;
  sub_1001AC540(0xD00000000000001ALL, v61 | 0x8000000000000000, 2);

  sub_100003844();
  sub_1000D3404();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, v72, v74, v76, v77, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1001A0678()
{
  sub_100003FC0();
  sub_1000051E0();
  v2 = v0[118];
  sub_10000ACB4();
  v3 = sub_100002AE0();
  sub_1001A4E00(v3, xmmword_1002329D0);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v15 = v0[113];
  sub_10000C778();

  sub_100004118(v0 + 57);
  sub_100006354();
  sub_100004994();
  sub_100005190();
  sub_10000B7EC(v6);
  (*(v7 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C((v0 + 61), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v8 = sub_100003EC4();
  v1(v8);
  swift_task_alloc();
  sub_10000DEA0();
  v0[125] = v9;
  *v9 = v10;
  sub_100003A98(v9);
  sub_100003128();

  return sub_10017AECC(v11, v12);
}

uint64_t sub_1001A07DC()
{
  sub_100003FC0();
  sub_1000051E0();
  v2 = *(v0 + 792);
  v3 = *(v0 + 752);

  sub_100004DD0();
  sub_1001A4830(v3, v4);
  sub_100006868();
  sub_100004118((v0 + 312));
  v5 = *(v0 + 984);
  sub_10000ACB4();
  v6 = sub_100002AE0();
  sub_1001A4E00(v6, xmmword_1002329D0);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v18 = *(v0 + 904);
  sub_10000C778();

  sub_100004118((v0 + 456));
  sub_100006354();
  sub_100004994();
  sub_100005190();
  sub_10000B7EC(v9);
  (*(v10 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 488, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v11 = sub_100003EC4();
  v1(v11);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 1000) = v12;
  *v12 = v13;
  sub_100003A98(v12);
  sub_100003128();

  return sub_10017AECC(v14, v15);
}

uint64_t sub_1001A0968()
{
  v1 = v0[124];

  v2 = v0[126];
  v3 = v0[114];
  v4 = v0[108];
  sub_100002EF4();
  v5 = v0[94];
  v11 = v0[92];
  v12 = v0[91];
  v13 = v0[88];
  sub_1001A4DC0();
  v6 = sub_10000D4B8(26);
  sub_1001AC540(v6, v7, v8);

  sub_100002E08();

  return v9();
}

double sub_1001A0A90@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountIdentity.DSID();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = 48;
  *(&v15 + 1) = 0xE100000000000000;
  v12 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      AccountIdentity.DSID.init(_:)();
      sub_10000608C(v11);
      (*(v7 + 8))(v11, v4);
      return result;
    }
  }

  else
  {
    sub_100004E7C(v17, &unk_1002DFC10, &qword_10022E6D0);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1001A0C54(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A4C7C;

  return sub_10019EFF4();
}

uint64_t sub_1001A0D18()
{
  sub_100004194();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  v3 = type metadata accessor for TSDataSyncEntryPoint();
  v1[21] = v3;
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  v1[22] = sub_100003FA8();
  v6 = type metadata accessor for TSDataSyncExternalEvent(0);
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  v1[23] = sub_100003FA8();
  v9 = type metadata accessor for Log();
  v1[24] = v9;
  sub_100003B78(v9);
  v1[25] = v10;
  v12 = *(v11 + 64);
  v1[26] = sub_1000D3604();
  v1[27] = swift_task_alloc();
  v13 = sub_10000EF80();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1001A0E18()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  static Log.tsDataSync.getter();
  v4 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v0 + 224) = v4;
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v0 + 232) = *(v6 + 72);
  *(v0 + 304) = *(v7 + 80);
  sub_1001A4C84();
  sub_100010A24();
  sub_1001A4DE4(v8, xmmword_1002329F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  v9 = *(v0 + 216);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  sub_1001A4D2C();

  sub_100004118(v4);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  sub_1001A4DB0();
  *(v0 + 240) = v12;
  *(v0 + 248) = v13;
  v14 = sub_100002CC0();
  v15(v14);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v16 = *(v0 + 152);
  *(v0 + 256) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000016, v17);
  type metadata accessor for TSDataSyncCoordinatorActor();
  v18 = *(v16 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag);
  v19 = swift_task_alloc();
  *(v0 + 264) = v19;
  *v19 = v0;
  v19[1] = sub_1001A101C;
  sub_1000D32C8();
  sub_100003128();

  return sub_10017AB18();
}

uint64_t sub_1001A101C()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 264);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 308) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001A1128()
{
  if (*(v0 + 308) != 1)
  {
    v8 = *(v0 + 256);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = sub_10000C130();
    sub_1001AC540(v13, v14, v15);

    sub_100003844();
    goto LABEL_10;
  }

  v3 = *(v0 + 272);
  sub_10011B1E4(*(v0 + 144), *(v0 + 184));
  if (v3)
  {
    sub_1001A4CDC();
    v4 = sub_1001A4D64();
    *(v4 + 16) = xmmword_1002329D0;
    *(v0 + 72) = v1;
    *(v0 + 48) = v2;
    v5 = v2;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = *(v0 + 256);
    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v23 = *(v0 + 208);
    v32 = *(v0 + 248);
    v33 = *(v0 + 216);
    v24 = *(v0 + 192);
    v35 = *(v0 + 184);
    v36 = *(v0 + 176);
    v25 = v4 + ((*(v0 + 304) + 32) & ~*(v0 + 304));
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 48));
    sub_1001A4D90();
    LogInterpolation.init(stringLiteral:)();
    sub_100008CF0();
    sub_1001A4E1C();
    sub_10000B7EC(v25);
    (*(v26 + 16))();
    static LogInterpolation.sensitive(_:)();
    sub_100004E7C(v0 + 80, &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v21(v23, v24);
    swift_willThrow();
    v27 = sub_10000C130();
    sub_1001AC540(v27, v28, v29);

    sub_100002E08();
LABEL_10:
    sub_100008A70();

    __asm { BRAA            X1, X16 }
  }

  v16 = *(v0 + 168);
  v17 = *(v0 + 152);
  sub_1001A47CC(*(v0 + 184), *(v0 + 176));
  swift_storeEnumTagMultiPayload();
  *(v0 + 280) = sub_10019EC38();
  v18 = swift_task_alloc();
  *(v0 + 288) = v18;
  *v18 = v0;
  sub_10000B140(v18);
  sub_100008A70();

  return sub_10017B18C();
}

uint64_t sub_1001A1420()
{
  sub_100007F3C();
  v2 = *v1;
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v2 + 288);
  *v4 = *v1;
  *(v3 + 296) = v0;

  v6 = *(v2 + 280);

  sub_10000A688();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001A1540()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = v0[22];
  v2 = v0[23];
  sub_100004DD0();
  sub_1001A4830(v3, v4);
  sub_100006868();
  v5 = v0[32];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  v10 = sub_10000C130();
  sub_1001AC540(v10, v11, v12);

  sub_100003844();
  sub_10000AD14();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1001A15E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1001A4E64();
  v23 = v20[34];
  sub_1001A4CDC();
  v24 = sub_1001A4D64();
  v20[6] = v22;
  *(v24 + 16) = xmmword_1002329D0;
  v20[9] = v21;
  v25 = v22;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  sub_1001A4D04();
  v42 = v26;
  sub_1001A4D2C();

  sub_100004118(v20 + 6);
  sub_1001A4D90();
  LogInterpolation.init(stringLiteral:)();
  sub_100008CF0();
  sub_1001A4E1C();
  sub_10000B7EC(v21);
  (*(v27 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C((v20 + 10), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v28 = sub_1001A4E50();
  v29(v28);
  swift_willThrow();
  v30 = sub_10000C130();
  sub_1001AC540(v30, v31, v32);

  sub_100002E08();
  sub_1000D3404();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, "Error during startup:", a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1001A179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1001A4E64();
  v23 = v20[22];
  v24 = v20[23];
  sub_100004DD0();
  sub_1001A4830(v25, v26);
  sub_100006868();
  v27 = v20[37];
  sub_1001A4CDC();
  v28 = sub_1001A4D64();
  v20[6] = v22;
  *(v28 + 16) = xmmword_1002329D0;
  v20[9] = v21;
  v29 = v22;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  sub_1001A4D04();
  v46 = v30;
  sub_1001A4D2C();

  sub_100004118(v20 + 6);
  sub_1001A4D90();
  LogInterpolation.init(stringLiteral:)();
  sub_100008CF0();
  sub_1001A4E1C();
  sub_10000B7EC(v21);
  (*(v31 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C((v20 + 10), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v32 = sub_1001A4E50();
  v33(v32);
  swift_willThrow();
  v34 = sub_10000C130();
  sub_1001AC540(v34, v35, v36);

  sub_100002E08();
  sub_1000D3404();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, "Error during startup:", a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1001A1980(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A4C7C;

  return sub_1001A0D18();
}

uint64_t sub_1001A1A44()
{
  sub_100004194();
  v1[18] = v0;
  v1[19] = swift_getObjectType();
  v2 = type metadata accessor for TSDataSyncEntryPoint();
  v1[20] = v2;
  sub_1000030B8(v2);
  v4 = *(v3 + 64);
  v1[21] = sub_100003FA8();
  v5 = type metadata accessor for Log();
  v1[22] = v5;
  sub_100003B78(v5);
  v1[23] = v6;
  v8 = *(v7 + 64);
  v1[24] = sub_1000D3604();
  v1[25] = swift_task_alloc();
  v9 = sub_10000EF80();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001A1B24()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  static Log.tsDataSync.getter();
  v4 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v0 + 208) = v4;
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v0 + 216) = *(v6 + 72);
  *(v0 + 288) = *(v7 + 80);
  sub_1001A4C84();
  sub_100010A24();
  sub_1001A4DE4(v8, xmmword_1002329F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 176);
  v11 = *(v0 + 184);
  sub_1001A4D2C();

  sub_100004118(v4);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  sub_1001A4DB0();
  *(v0 + 224) = v12;
  *(v0 + 232) = v13;
  v14 = sub_100002CC0();
  v15(v14);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v16 = *(v0 + 144);
  *(v0 + 240) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000017, v17);
  type metadata accessor for TSDataSyncCoordinatorActor();
  v18 = *(v16 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag);
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  *v19 = v0;
  v19[1] = sub_1001A1D34;
  sub_1000D32C8();
  sub_100003128();

  return sub_10017AB18();
}

uint64_t sub_1001A1D34()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 248);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 292) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001A1E40()
{
  sub_100007F3C();
  if (*(v0 + 292) == 1)
  {
    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 144);
    swift_storeEnumTagMultiPayload();
    *(v0 + 264) = sub_10019EC38();
    v4 = swift_task_alloc();
    *(v0 + 272) = v4;
    *v4 = v0;
    v4[1] = sub_1001A1F64;
    sub_100005040(*(v0 + 168));
    sub_10000381C();

    return sub_10017B18C();
  }

  else
  {
    sub_100010EEC();
    sub_100002860();
    v6 = sub_10000D4B8(23);
    sub_1001AC540(v6, v7, v8);

    sub_100003844();

    return v9();
  }
}

uint64_t sub_1001A1F64()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *(v4 + 264);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v9 + 280) = v0;

  sub_10000381C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001A207C()
{
  sub_100007F3C();
  v1 = *(v0 + 168);
  sub_100004DD0();
  sub_1001A4830(v2, v3);
  sub_100010EEC();
  sub_100002860();
  v4 = sub_10000D4B8(23);
  sub_1001AC540(v4, v5, v6);

  sub_100003844();

  return v7();
}

uint64_t sub_1001A2114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v17 = v14[32];
  sub_100002934();
  sub_1001A4CBC();
  sub_1001A4CAC();
  sub_1001A4D84(v18, xmmword_1002329D0);
  v19 = v16;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  v20 = v14[28];
  v37 = v14[29];
  v21 = v14[27];
  v22 = v14[24];
  v23 = v14[22];
  sub_100008F00();

  sub_100004118(v15);
  sub_1001A4DA0();
  LogInterpolation.init(stringLiteral:)();
  sub_10000543C();
  sub_1001A4D48();
  sub_10000EF38();
  v25 = *(v24 + 16);
  sub_100003594();
  v26();
  sub_1001A4E38();
  sub_100004E7C((v14 + 10), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v27 = sub_100014118();
  v20(v27);
  sub_100010EEC();
  sub_100004288("tsDataSyncDaemonStartup");

  sub_100003844();
  sub_100003BBC();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, a11, a12, a13, a14);
}

uint64_t sub_1001A2284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v17 = v14[21];
  sub_100004DD0();
  sub_1001A4830(v18, v19);
  v20 = v14[35];
  sub_100002934();
  sub_1001A4CBC();
  sub_1001A4CAC();
  sub_1001A4D84(v21, xmmword_1002329D0);
  v22 = v16;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  v23 = v14[28];
  v40 = v14[29];
  v24 = v14[27];
  v25 = v14[24];
  v26 = v14[22];
  sub_100008F00();

  sub_100004118(v15);
  sub_1001A4DA0();
  LogInterpolation.init(stringLiteral:)();
  sub_10000543C();
  sub_1001A4D48();
  sub_10000EF38();
  v28 = *(v27 + 16);
  sub_100003594();
  v29();
  sub_1001A4E38();
  sub_100004E7C((v14 + 10), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v30 = sub_100014118();
  v23(v30);
  sub_100010EEC();
  sub_100004288("tsDataSyncDaemonStartup");

  sub_100003844();
  sub_100003BBC();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, a11, a12, a13, a14);
}

uint64_t sub_1001A247C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000CF47C;

  return sub_1001A1A44();
}

uint64_t sub_1001A2524()
{
  sub_100004194();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  v3 = type metadata accessor for TSDataSyncEntryPoint();
  v1[21] = v3;
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  v1[22] = sub_100003FA8();
  v6 = type metadata accessor for AccountIdentity();
  v1[23] = v6;
  sub_100003B78(v6);
  v1[24] = v7;
  v9 = *(v8 + 64);
  v1[25] = sub_100003FA8();
  v10 = type metadata accessor for Log();
  v1[26] = v10;
  sub_100003B78(v10);
  v1[27] = v11;
  v13 = *(v12 + 64);
  v1[28] = sub_1000D3604();
  v1[29] = swift_task_alloc();
  v14 = sub_10000EF80();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1001A2650()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  static Log.tsDataSync.getter();
  v4 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v0 + 240) = v4;
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v0 + 248) = *(v6 + 72);
  *(v0 + 344) = *(v7 + 80);
  sub_1001A4C84();
  sub_100010A24();
  sub_1001A4DE4(v8, xmmword_1002329F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v11 = *(v0 + 216);
  sub_1001A4D2C();

  sub_100004118(v4);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  sub_1001A4DB0();
  *(v0 + 256) = v12;
  *(v0 + 264) = v13;
  v14 = sub_100002CC0();
  v15(v14);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v16 = *(v0 + 200);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  *(v0 + 272) = qword_1003106E8;
  v19 = sub_100003324();
  sub_100008F38(v19, v20);
  *(v0 + 280) = sub_10019EC38();
  v21 = v18;
  AccountIdentity.init(amsAccountID:)();
  v22 = swift_task_alloc();
  *(v0 + 288) = v22;
  *v22 = v0;
  v22[1] = sub_1001A2864;
  sub_100005040(*(v0 + 200));
  sub_100003128();

  return sub_1001813FC();
}

uint64_t sub_1001A2864()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = v4[36];
  v6 = v4[35];
  v7 = v4[25];
  v8 = v4[24];
  v9 = v4[23];
  v10 = *v1;
  sub_100004504();
  *v11 = v10;
  *(v12 + 296) = v0;

  v13 = *(v8 + 8);
  v14 = sub_100003EC4();
  v15(v14);

  sub_10000381C();
  sub_10000AD14();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1001A29D4()
{
  sub_100004194();
  v1 = *(v0 + 152);
  type metadata accessor for TSDataSyncCoordinatorActor();
  v2 = *(v1 + OBJC_IVAR____TtC12amsaccountsd17TSDataSyncService_bag);
  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  *v3 = v0;
  v3[1] = sub_1001A2A78;
  sub_1000D32C8();

  return sub_10017AB18();
}

uint64_t sub_1001A2A78()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 304);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  *(v5 + 312) = v0;

  if (!v0)
  {
    *(v5 + 348) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001A2B84()
{
  sub_1000D354C();
  sub_10000DB4C();
  if (*(v0 + 348) == 1)
  {
    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 152);
    swift_storeEnumTagMultiPayload();
    *(v0 + 320) = sub_10019EC38();
    v4 = swift_task_alloc();
    *(v0 + 328) = v4;
    *v4 = v0;
    sub_10000B140(v4);
    sub_10000AD14();

    return sub_10017B18C();
  }

  else
  {
    sub_100008464();
    v7 = sub_100003324();
    sub_1001AC540(v7, v8, 2);

    sub_100003844();
    sub_10000AD14();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1001A2CA0()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *(v4 + 320);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v9 + 336) = v0;

  sub_10000381C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001A2DB8()
{
  sub_1000D354C();
  sub_10000DB4C();
  v1 = *(v0 + 176);
  sub_100004DD0();
  sub_1001A4830(v2, v3);
  sub_100008464();
  v4 = sub_100003324();
  sub_1001AC540(v4, v5, 2);

  sub_100003844();
  sub_10000AD14();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1001A2E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v18 = *(v15 + 296);
  sub_10000B52C();
  sub_1001A4CBC();
  sub_1001A4CAC();
  sub_1001A4D84(v19, xmmword_1002329D0);
  v20 = v17;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100003DC0();

  sub_100004118(v16);
  sub_10000B938();
  sub_10000543C();
  sub_1001A4D48();
  sub_10000EF38();
  v22 = *(v21 + 16);
  sub_100003594();
  v23();
  sub_1001A4E38();
  sub_100004E7C(v15 + 80, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v24 = sub_100014118();
  v14(v24);
  sub_100008464();
  v25 = sub_100003324();
  sub_1001AC540(v25, v26, 2);

  sub_100003844();
  sub_100003BBC();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001A2FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v18 = *(v15 + 312);
  sub_10000B52C();
  sub_1001A4CBC();
  sub_1001A4CAC();
  sub_1001A4D84(v19, xmmword_1002329D0);
  v20 = v17;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100003DC0();

  sub_100004118(v16);
  sub_10000B938();
  sub_10000543C();
  sub_1001A4D48();
  sub_10000EF38();
  v22 = *(v21 + 16);
  sub_100003594();
  v23();
  sub_1001A4E38();
  sub_100004E7C(v15 + 80, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v24 = sub_100014118();
  v14(v24);
  sub_100008464();
  v25 = sub_100003324();
  sub_1001AC540(v25, v26, 2);

  sub_100003844();
  sub_100003BBC();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001A310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v18 = *(v15 + 176);
  sub_100004DD0();
  sub_1001A4830(v19, v20);
  v21 = *(v15 + 336);
  sub_10000B52C();
  sub_1001A4CBC();
  sub_1001A4CAC();
  sub_1001A4D84(v22, xmmword_1002329D0);
  v23 = v17;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100003DC0();

  sub_100004118(v16);
  sub_10000B938();
  sub_10000543C();
  sub_1001A4D48();
  sub_10000EF38();
  v25 = *(v24 + 16);
  sub_100003594();
  v26();
  sub_1001A4E38();
  sub_100004E7C(v15 + 80, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v27 = sub_100014118();
  v14(v27);
  sub_100008464();
  v28 = sub_100003324();
  sub_1001AC540(v28, v29, 2);

  sub_100003844();
  sub_100003BBC();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001A3294(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A4C7C;

  return sub_1001A2524();
}

uint64_t sub_1001A3358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v6[17] = swift_getObjectType();
  v7 = type metadata accessor for Log();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = type metadata accessor for TSDataSyncEntryPoint();
  v6[21] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001A3458, 0, 0);
}

uint64_t sub_1001A3458()
{
  sub_100004194();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[15];
  v4 = v0[16];
  *v1 = v0[14];
  v1[1] = v3;
  swift_storeEnumTagMultiPayload();

  v0[23] = sub_10019EC38();
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  sub_10000B140(v5);

  return sub_10017B18C();
}

uint64_t sub_1001A3508()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *(v4 + 184);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v9 + 200) = v0;

  sub_10000381C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001A3620()
{
  sub_100004194();
  v1 = *(v0 + 176);
  sub_100004DD0();
  sub_1001A4830(v2, v3);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);

  sub_100002E08();

  return v6();
}

uint64_t sub_1001A3690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = v12[22];
  v14 = v12[20];
  v15 = v12[16];
  v16 = v12[17];
  sub_100004DD0();
  sub_1001A4830(v17, v18);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v19 = type metadata accessor for LogInterpolation();
  sub_100003B78(v19);
  v21 = *(v20 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v12[2] = v15;
  sub_1001A4D84(v24, xmmword_1002329D0);
  v25 = v15;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  v26 = v12[25];
  v28 = v12[19];
  v27 = v12[20];
  v44 = v12[18];
  sub_100008F00();

  sub_100004118(v12 + 2);
  sub_1001A4DA0();
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v29 = v12[10];
  v12[9] = v12[11];
  sub_100007914(v12 + 6);
  sub_10000EF38();
  v31 = *(v30 + 16);
  sub_100003594();
  v32();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C((v12 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v28 + 8))(v27, v44);
  v33 = v12[22];
  v34 = v12[20];

  sub_100002E08();
  sub_100003128();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v44, a10, a11, a12);
}

uint64_t sub_1001A38AC()
{
  sub_100004194();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity();
  v1[13] = v3;
  sub_100003B78(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = sub_100003FA8();
  v7 = type metadata accessor for Log();
  v1[16] = v7;
  sub_100003B78(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = sub_100003FA8();
  v11 = sub_10000EF80();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001A39A8()
{
  sub_10000A504();
  sub_100008B30();
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v0[2] = v3;
  *(v9 + 16) = xmmword_1002329D0;
  v0[5] = v2;
  v10 = v3;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = v0[17];
  v13 = v0[18];
  v23 = v0[15];
  v15 = v0[10];
  v21 = v0[16];
  v22 = v0[11];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  v0[9] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v0[6] = v15;
  v16 = v15;
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v14 + 8))(v13, v21);
  v0[19] = sub_10019EC38();
  v17 = v16;
  AccountIdentity.init(amsAccountID:)();
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_1001A3C04;
  sub_100005040(v0[15]);
  sub_100003BBC();

  return sub_1001875F4();
}

uint64_t sub_1001A3C04()
{
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = v5[20];
  v7 = v5[19];
  v8 = v5[15];
  v9 = v5[14];
  v10 = v5[13];
  v11 = *v1;
  sub_100004504();
  *v12 = v11;
  v3[21] = v0;

  (*(v9 + 8))(v8, v10);

  if (v0)
  {
    sub_10000A688();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v16 = v3[18];
    v17 = v3[15];

    v18 = *(v11 + 8);

    return v18();
  }
}

uint64_t sub_1001A3DD0()
{
  sub_100004194();
  v1 = v0[18];
  v2 = v0[15];

  sub_100002E08();
  v4 = v0[21];

  return v3();
}

uint64_t sub_1001A3E58(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_100004754(a6, v10);
}

uint64_t sub_1001A3EDC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A3FA0;

  return sub_1001A38AC();
}

uint64_t sub_1001A3FA0()
{
  sub_10000DB4C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[4];
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_1001A41B8()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A4248()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A4288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1001A491C(a3, v25 - v11, &qword_1002DB950, &qword_100232E50);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100004DFC(v12, 1, v13) == 1)
  {
    sub_100004E7C(v12, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001A4564()
{
  sub_100007F3C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005C94(v3);
  *v4 = v5;
  v4[1] = sub_1000C6A64;
  v6 = sub_10000DFBC();

  return v7(v6);
}

uint64_t sub_1001A460C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A469C()
{
  sub_100007F3C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100005C94(v3);
  *v4 = v5;
  v4[1] = sub_100013D70;
  v6 = sub_1000D32C8();

  return v7(v6, v2);
}

uint64_t sub_1001A473C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A47CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncExternalEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A4830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000B7EC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1001A488C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A491C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100099DF4(a3, a4);
  sub_10000B7EC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1001A4980()
{
  result = qword_1002DFB38;
  if (!qword_1002DFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFB38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncService.Errors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TSDataSyncService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001A4A6C()
{
  result = qword_1002DFB48;
  if (!qword_1002DFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFB48);
  }

  return result;
}

unint64_t sub_1001A4AC4()
{
  result = qword_1002DFB50;
  if (!qword_1002DFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFB50);
  }

  return result;
}

unint64_t sub_1001A4B1C()
{
  result = qword_1002DFB58;
  if (!qword_1002DFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFB58);
  }

  return result;
}

uint64_t sub_1001A4B70()
{
  sub_10000DB4C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100005C94(v6);
  *v7 = v8;
  v7[1] = sub_100013D70;
  v9 = sub_10000DFBC();

  return sub_1001A3358(v9, v10, v2, v3, v4, v5);
}

unint64_t sub_1001A4C28()
{
  result = qword_1002DFB60;
  if (!qword_1002DFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFB60);
  }

  return result;
}

uint64_t sub_1001A4C84()
{

  return swift_allocObject();
}

uint64_t sub_1001A4CBC()
{

  return swift_allocObject();
}

uint64_t sub_1001A4CDC()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = (*(v0 + 304) + 32) & ~*(v0 + 304);

  return static Log.tsDataSync.getter();
}

void sub_1001A4D04()
{
  v8 = *(v0 + 256);
  v1 = *(v0 + 304);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 208);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v5 = *(v0 + 184);
  v9 = *(v0 + 176);
}

uint64_t sub_1001A4D2C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t *sub_1001A4D48()
{
  v2 = v0[14];
  v0[13] = v0[15];

  return sub_100007914(v0 + 10);
}

uint64_t sub_1001A4D64()
{

  return swift_allocObject();
}

__n128 *sub_1001A4D84(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 24) = v3;
  return result;
}

void sub_1001A4DCC()
{
}

id sub_1001A4DE4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v4;

  return v3;
}

id sub_1001A4E00(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 480) = v3;
  *(v2 + 456) = v4;

  return v4;
}

uint64_t *sub_1001A4E1C()
{
  v2 = v0[14];
  v0[13] = v0[15];

  return sub_100007914(v0 + 10);
}

uint64_t sub_1001A4E38()
{

  return static LogInterpolation.sensitive(_:)();
}

void sub_1001A4E80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_1001A4F18(a1, a2, a3, a4, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1001A4F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v8 = v6;
  type metadata accessor for Avro();
  static Avro.decodeSchema(schema:)(a1, a2);
  if (v82 >> 8 == 0xFFFFFFFF && v84 <= 1 && (v86 & 0xFCFE) == 0)
  {
    sub_1001A5AD0();
    v8 = swift_allocError();
    *v18 = 0xD000000000000016;
    v18[1] = 0x8000000100275D00;
    result = swift_willThrow();
    goto LABEL_68;
  }

  v61 = a6;
  v62 = a5;
  __src[0] = v80[0];
  __src[1] = v80[1];
  __src[2] = v80[2];
  v88 = v81;
  v89 = v82;
  v90 = v83;
  v91 = v84;
  v92 = v85;
  v16 = a4 >> 62;
  v93 = v86;
  v17 = 0;
  v63 = a3;
  switch(a4 >> 62)
  {
    case 1uLL:
      v17 = v63;
      break;
    case 2uLL:
      v17 = *(a3 + 16);
      break;
    default:
      break;
  }

  v65 = a3 >> 32;
  v69 = BYTE6(a4);
  v67 = _swiftEmptyArrayStorage;
  v68 = v16;
  v66 = a4 >> 62;
  v64 = a3;
  while (2)
  {
    v20 = v69;
    switch(v68)
    {
      case 1:
        v20 = v65;
        goto LABEL_16;
      case 2:
        v20 = *(a3 + 24);
        goto LABEL_16;
      case 3:
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_60;
        }

        v26 = objc_autoreleasePoolPush();
        memset(v72, 0, 14);
        v27 = -v17;
        if (__OFSUB__(0, v17))
        {
          goto LABEL_70;
        }

        v28 = v26;
        type metadata accessor for AvroBinaryDecoder();
        swift_allocObject();
        sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
        v29 = sub_100148604(__src, v72 + v17, -v17);
        if (v6)
        {
          goto LABEL_62;
        }

        v30 = v29;
        sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
        sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
        sub_100147074(__src, &v73);
        v70 = v28;
        v71 = &v61;
        v77 = v73;
        v78 = v74;
        v31 = *(*sub_10000C4FC(v30 + 4, v30[7]) + 24);

        v32 = v27 - v31;
        a3 = v64;
        if (!__OFSUB__(v27, v31))
        {
          goto LABEL_48;
        }

        goto LABEL_76;
      default:
LABEL_16:
        if (v17 >= v20)
        {
LABEL_60:
          result = sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
          *v61 = v67;
          return result;
        }

        v21 = objc_autoreleasePoolPush();
        v70 = v21;
        v71 = &v61;
        if (v16 == 2)
        {
          v33 = *(a3 + 16);

          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          sub_10000FF98(a3, a4);
          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          sub_10000FF98(a3, a4);
          v34 = __DataStorage._bytes.getter();
          if (v34)
          {
            v35 = v34;
            v36 = __DataStorage._offset.getter();
            if (__OFSUB__(v33, v36))
            {
              goto LABEL_79;
            }

            v37 = v33 - v36 + v35;
          }

          else
          {
            v37 = 0;
          }

          __DataStorage._length.getter();
          if (!v37)
          {
LABEL_63:
            sub_1001A5AD0();
            v8 = swift_allocError();
            *v60 = 0xD00000000000001ALL;
            v60[1] = 0x8000000100275D20;
            swift_willThrow();
            sub_10000D170(a3, a4);
            sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
            sub_10000D170(a3, a4);
            goto LABEL_65;
          }

          v42 = *(a3 + 24);
          v43 = v42 - v17;
          if (__OFSUB__(v42, v17))
          {
            goto LABEL_73;
          }

          type metadata accessor for AvroBinaryDecoder();
          swift_initStackObject();
          v44 = sub_100148604(__src, v37 + v17, v43);
          if (v6)
          {
            goto LABEL_64;
          }

          v45 = v44;
          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          sub_100147074(__src, &v73);
          v77 = v73;
          v78 = v74;
          v46 = *(*sub_10000C4FC(v45 + 4, v45[7]) + 24);

          sub_10000D170(a3, a4);
          sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
          v32 = v43 - v46;
          if (__OFSUB__(v43, v46))
          {
            goto LABEL_77;
          }

          goto LABEL_48;
        }

        if (v16 != 1)
        {
          v72[0] = a3;
          LOWORD(v72[1]) = a4;
          BYTE2(v72[1]) = BYTE2(a4);
          BYTE3(v72[1]) = BYTE3(a4);
          BYTE4(v72[1]) = BYTE4(a4);
          BYTE5(v72[1]) = BYTE5(a4);
          v38 = v69 - v17;
          if (__OFSUB__(v69, v17))
          {
            goto LABEL_71;
          }

          v28 = v21;
          type metadata accessor for AvroBinaryDecoder();
          swift_allocObject();
          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          v39 = sub_100148604(__src, v72 + v17, v38);
          if (v6)
          {
LABEL_62:
            sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
            sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
            a3 = v64;
            sub_10000D170(v64, a4);
            sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
            a5 = v62;
            goto LABEL_66;
          }

          v40 = v39;
          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          sub_100147074(__src, &v73);
          v77 = v73;
          v78 = v74;
          v41 = *(*sub_10000C4FC(v40 + 4, v40[7]) + 24);

          v32 = v38 - v41;
          a3 = v64;
          if (__OFSUB__(v38, v41))
          {
            goto LABEL_75;
          }

LABEL_48:
          sub_10000D170(a3, a4);
          sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
          sub_10000D170(a3, a4);
          sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
          v79[0] = v77;
          v79[1] = v78;
          v28 = v70;
          if (!v32)
          {
            sub_1001A5AD0();
            v8 = swift_allocError();
            *v59 = 0xD000000000000014;
            v59[1] = 0x8000000100275D40;
            swift_willThrow();
            sub_10003CD48(v79, &unk_1002DFC10, &qword_10022E6D0);
            a5 = v62;
            goto LABEL_67;
          }

          v51 = __OFADD__(v17, v32);
          v17 += v32;
          if (v51)
          {
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
LABEL_80:
            __break(1u);
          }

          sub_100012C2C(v79, &v75, &unk_1002DFC10, &qword_10022E6D0);
          if (v76)
          {
            v52 = sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
            v53 = swift_dynamicCast();
            LODWORD(v16) = v66;
            if (v53)
            {
              v76 = v52;
              *&v75 = v77;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = v67[2];
                sub_10013C578();
                v67 = v57;
              }

              v54 = v67[2];
              if (v54 >= v67[3] >> 1)
              {
                sub_10013C578();
                v67 = v58;
              }

              sub_10003CD48(v79, &unk_1002DFC10, &qword_10022E6D0);
              v55 = v67;
              v67[2] = v54 + 1;
              sub_1001514B8(&v75, &v55[4 * v54 + 4]);
            }

            else
            {
              sub_10003CD48(v79, &unk_1002DFC10, &qword_10022E6D0);
            }
          }

          else
          {
            sub_10003CD48(v79, &unk_1002DFC10, &qword_10022E6D0);
            sub_10003CD48(&v75, &unk_1002DFC10, &qword_10022E6D0);
            LODWORD(v16) = v66;
          }

          objc_autoreleasePoolPop(v28);
          continue;
        }

        if (v65 < v63)
        {
          goto LABEL_72;
        }

        sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
        sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
        sub_10000FF98(a3, a4);
        sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
        sub_10000FF98(a3, a4);
        v22 = __DataStorage._bytes.getter();
        if (v22)
        {
          v23 = v22;
          v24 = __DataStorage._offset.getter();
          if (__OFSUB__(v63, v24))
          {
            goto LABEL_80;
          }

          v25 = v63 - v24 + v23;
        }

        else
        {
          v25 = 0;
        }

        __DataStorage._length.getter();
        if (!v25)
        {
          goto LABEL_63;
        }

        v47 = v65 - v17;
        if (__OFSUB__(v65, v17))
        {
          goto LABEL_74;
        }

        type metadata accessor for AvroBinaryDecoder();
        swift_allocObject();
        v48 = sub_100148604(__src, v25 + v17, v47);
        if (!v6)
        {
          v49 = v48;
          sub_100012C2C(v80, &v75, &qword_1002DE960, &qword_10023B918);
          sub_100147074(__src, &v73);
          v77 = v73;
          v78 = v74;
          v50 = *(*sub_10000C4FC(v49 + 4, v49[7]) + 24);

          sub_10000D170(a3, a4);
          sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
          v32 = v47 - v50;
          if (__OFSUB__(v47, v50))
          {
            goto LABEL_78;
          }

          goto LABEL_48;
        }

LABEL_64:
        sub_10000D170(a3, a4);
        sub_10000D170(a3, a4);
LABEL_65:
        sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
        a5 = v62;
        v28 = v70;
LABEL_66:
        sub_10000D170(a3, a4);
        sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);
        swift_willThrow();
LABEL_67:
        objc_autoreleasePoolPop(v28);
        sub_10003CD48(v80, &qword_1002DE960, &qword_10023B918);

LABEL_68:
        *a5 = v8;
        return result;
    }
  }
}