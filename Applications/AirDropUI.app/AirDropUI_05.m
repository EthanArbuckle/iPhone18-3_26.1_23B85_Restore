uint64_t sub_100085BD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, void *a6, void *a7, char *a8, char *a9, void *a10, uint64_t a11)
{
  v228 = a8;
  v211 = a7;
  v222 = a6;
  v207 = a4;
  v206 = a3;
  v205 = a2;
  v204 = a1;
  v226 = a10;
  v227 = a9;
  v212 = a11;
  v12 = type metadata accessor for SFAirDropSend.Transfer.State();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v178 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v199 = *(v218 - 8);
  v16 = *(v199 + 8);
  __chkstk_darwin(v218);
  v196 = &v177 - v17;
  v195 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v194 = *(v195 - 8);
  v18 = *(v194 + 64);
  __chkstk_darwin(v195);
  v193 = &v177 - v19;
  v192 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v20 = *(*(v192 - 8) + 64);
  v21 = __chkstk_darwin(v192);
  v190 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v189 = &v177 - v23;
  v221 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v220 = *(v221 - 1);
  v24 = *(v220 + 8);
  __chkstk_darwin(v221);
  v187 = &v177 - v25;
  v186 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v185 = *(v186 - 8);
  v26 = *(v185 + 64);
  __chkstk_darwin(v186);
  v182 = &v177 - v27;
  v181 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v230 = *(v181 - 8);
  v28 = *(v230 + 8);
  __chkstk_darwin(v181);
  v30 = &v177 - v29;
  v236 = type metadata accessor for SFAirDrop.DisplayPriority();
  v238 = *(v236 - 8);
  v31 = v238[8];
  v32 = __chkstk_darwin(v236);
  v209 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v208 = &v177 - v35;
  __chkstk_darwin(v34);
  v234 = &v177 - v36;
  v37 = type metadata accessor for DeviceLockState();
  v225 = v37;
  v235 = *(v37 - 8);
  v38 = v235;
  v39 = *(v235 + 64);
  v40 = __chkstk_darwin(v37);
  v203 = &v177 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v202 = &v177 - v43;
  __chkstk_darwin(v42);
  v45 = &v177 - v44;
  v224 = &v177 - v44;
  v219 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v46 = *(*(v219 - 8) + 64);
  v47 = __chkstk_darwin(v219);
  v210 = &v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v217 = &v177 - v50;
  v51 = __chkstk_darwin(v49);
  v216 = &v177 - v52;
  __chkstk_darwin(v51);
  v54 = &v177 - v53;
  v233 = &v177 - v53;
  v231 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v237 = *(v231 - 8);
  v55 = *(v237 + 64);
  v56 = __chkstk_darwin(v231);
  v213 = &v177 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v191 = &v177 - v59;
  v60 = __chkstk_darwin(v58);
  v188 = &v177 - v61;
  __chkstk_darwin(v60);
  v232 = &v177 - v62;
  (*(v63 + 104))();
  v223 = v13;
  v64 = v13[2];
  v215 = a5;
  v64(v54, a5, v12);
  v65 = v13[7];
  v229 = v12;
  v65(v54, 0, 1, v12);
  v66 = *(v38 + 16);
  v197 = v38 + 16;
  v198 = v66;
  v66(v45, v228, v37);
  v67 = v238[2];
  v200 = v238 + 2;
  v201 = v67;
  v67(v234, v227, v236);
  v68 = type metadata accessor for AirDropTransferSession();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  v71 = swift_allocObject();
  Date.init()();
  v72 = (v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v183 = (v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  *v72 = 0;
  v72[1] = 0;
  v73 = (v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v184 = (v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  *v73 = 0;
  v73[1] = 0;
  v74 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
  v75 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v75 - 8) + 56))(v71 + v74, 1, 1, v75);
  v76 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  LOBYTE(v239[0]) = 0;
  v179 = v30;
  Published.init(initialValue:)();
  v77 = *(v230 + 4);
  v230 += 32;
  v180 = v77;
  v78 = v181;
  v77(v71 + v76, v30, v181);
  v79 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v239[0] = 0;
  v239[1] = 0;
  sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
  v80 = v182;
  Published.init(initialValue:)();
  (*(v185 + 32))(v71 + v79, v80, v186);
  v81 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v186 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v82 = v216;
  v65(v216, 1, 1, v12);
  sub_100007BA4(v82, v217, &qword_100172FD0, &qword_10011A210);
  v83 = v187;
  Published.init(initialValue:)();
  sub_1000159AC(v82, &qword_100172FD0, &qword_10011A210);
  (*(v220 + 4))(v71 + v81, v83, v221);
  v84 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v85 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v86 = v189;
  (*(*(v85 - 8) + 56))(v189, 1, 1, v85);
  sub_100007BA4(v86, v190, &qword_100173D50, &unk_10011D120);
  v87 = v193;
  Published.init(initialValue:)();
  sub_1000159AC(v86, &qword_100173D50, &unk_10011D120);
  (*(v194 + 32))(v71 + v84, v87, v195);
  v88 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v239[0] = 0;
  v89 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v90 = v196;
  v195 = v89;
  Published.init(initialValue:)();
  v91 = *(v199 + 4);
  v92 = v218;
  v91(v71 + v88, v90, v218);
  v199 = v91;
  v93 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v239[0] = 0;
  Published.init(initialValue:)();
  v91(v71 + v93, v90, v92);
  v94 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  LOBYTE(v239[0]) = 0;
  v95 = v179;
  Published.init(initialValue:)();
  v96 = v180;
  v180(v71 + v94, v95, v78);
  v97 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  LOBYTE(v239[0]) = 1;
  Published.init(initialValue:)();
  v96(v71 + v97, v95, v78);
  v98 = v71;
  v99 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v239[0] = 0;
  Published.init(initialValue:)();
  v100 = v218;
  v101 = v199;
  v199(v71 + v99, v90, v218);
  v102 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v239[0] = 0;
  Published.init(initialValue:)();
  v101(v71 + v102, v90, v100);
  *(v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
  *(v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
  v103 = v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
  *(v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
  v104 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v105 = type metadata accessor for Date();
  v106 = *(*(v105 - 8) + 56);
  v106(v71 + v104, 1, 1, v105);
  v106(v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v105);
  v107 = (v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v108 = v205;
  *v107 = v204;
  v107[1] = v108;
  *(v71 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = 0;
  v109 = v183;
  v110 = v183[1];
  *v183 = 0;
  v109[1] = 0;

  v111 = v184;
  v112 = v184[1];
  v113 = v207;
  *v184 = v206;
  v111[1] = v113;

  v114 = v237;
  v115 = v237 + 16;
  v116 = *(v237 + 16);
  v117 = v188;
  v118 = v231;
  v116(v188, v232, v231);
  swift_beginAccess();
  v218 = v115;
  v207 = v116;
  v116(v191, v117, v118);
  Published.init(initialValue:)();
  v119 = *(v114 + 8);
  v237 = v114 + 8;
  v230 = v119;
  (v119)(v117, v118);
  swift_endAccess();
  v120 = v216;
  sub_100007BA4(v233, v216, &qword_100172FD0, &qword_10011A210);
  v121 = v186;
  swift_beginAccess();
  (*(v220 + 1))(v98 + v121, v221);
  sub_100007BA4(v120, v217, &qword_100172FD0, &qword_10011A210);
  Published.init(initialValue:)();
  sub_1000159AC(v120, &qword_100172FD0, &qword_10011A210);
  swift_endAccess();
  swift_beginAccess();
  v240 = *&v222;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v122 = v211;
  v240 = *&v211;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v240) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v123 = v202;
  v124 = v225;
  v125 = v198;
  v198(v202, v224, v225);
  swift_beginAccess();
  v125(v203, v123, v124);
  Published.init(initialValue:)();
  v126 = *(v235 + 8);
  v235 += 8;
  v221 = v126;
  v126(v123, v124);
  swift_endAccess();
  v127 = [objc_opt_self() mainScreen];
  [v127 bounds];
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v135 = v134;

  v241.origin.x = v129;
  v241.origin.y = v131;
  v241.size.width = v133;
  v241.size.height = v135;
  v136 = CGRectGetWidth(v241) + -24.0;
  swift_beginAccess();
  v240 = v136;
  Published.init(initialValue:)();
  swift_endAccess();
  v137 = v208;
  v138 = v236;
  v139 = v201;
  v201(v208, v234, v236);
  swift_beginAccess();
  v139(v209, v137, v138);
  Published.init(initialValue:)();
  v140 = v238[1];
  ++v238;
  v220 = v140;
  v140(v137, v138);
  swift_endAccess();
  *(v103 + 8) = v212;
  swift_unknownObjectWeakAssign();
  *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
  v141 = COERCE_DOUBLE([objc_opt_self() progressWithTotalUnitCount:v122]);
  swift_beginAccess();
  v240 = v141;
  sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
  v142 = v223;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v143 = v210;

  v144 = v239[0];
  [v239[0] setCompletedUnitCount:v222];

  v145 = v229;
  sub_100007BA4(v233, v143, &qword_100172FD0, &qword_10011A210);
  if ((v142[6])(v143, 1, v145) == 1)
  {
    sub_1000159AC(v143, &qword_100172FD0, &qword_10011A210);
    v146 = v232;
    sub_10007C0CC(v232);
  }

  else
  {
    v147 = v178;
    (v142[4])(v178, v143, v145);
    sub_10007DABC(v147);
    (v142[1])(v147, v145);
    v146 = v232;
  }

  v148 = v213;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  v149 = type metadata accessor for Logger();
  sub_100007D20(v149, qword_100175480);
  v150 = v231;
  v207(v148, v146, v231);

  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v239[0] = swift_slowAlloc();
    *v153 = 136315650;
    v155 = *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v154 = *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v156 = sub_10003E81C(v155, v154, v239);

    *(v153 + 4) = v156;
    *(v153 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v157 = v240;
    [*&v240 fractionCompleted];
    v159 = v158;

    *(v153 + 14) = v159;
    *(v153 + 22) = 2080;
    sub_100087D7C(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State);
    v160 = dispatch thunk of CustomStringConvertible.description.getter();
    v162 = v161;
    (v230)(v148, v150);
    v163 = sub_10003E81C(v160, v162, v239);

    *(v153 + 24) = v163;
    _os_log_impl(&_mh_execute_header, v151, v152, "Transfer session created for transfer %s with completed: %f, transferState: %s", v153, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (v230)(v148, v150);
  }

  v164 = v223;
  v165 = v214;
  v166 = sub_10007B6A8(0, 0);
  if (v165)
  {

    v167 = v236;
    v168 = v220;
    v220(v227, v236);
    v169 = v225;
    v170 = v221;
    v221(v228, v225);
    (v164[1])(v215, v229);
    v168(v234, v167);
    v170(v224, v169);
    sub_1000159AC(v233, &qword_100172FD0, &qword_10011A210);
    (v230)(v232, v231);
  }

  else
  {
    v222 = v166;

    v171 = v236;
    v172 = v220;
    v220(v227, v236);
    v173 = v225;
    v174 = v221;
    v221(v228, v225);
    (v164[1])(v215, v229);
    v172(v234, v171);
    v174(v224, v173);
    sub_1000159AC(v233, &qword_100172FD0, &qword_10011A210);
    (v230)(v232, v231);
    v175 = *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);
    *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = *&v222;
  }

  return v98;
}

uint64_t sub_100087500(uint64_t *a1)
{
  v2 = sub_1000077C8(&qword_100175CA0, &qword_10011D380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_1000078DC(a1, a1[3]);
  sub_1000876A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007920(a1);
  return v8;
}

unint64_t sub_1000876A8()
{
  result = qword_100175CA8;
  if (!qword_100175CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CA8);
  }

  return result;
}

unint64_t sub_1000876FC()
{
  result = qword_100175CC0;
  if (!qword_100175CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CC0);
  }

  return result;
}

uint64_t sub_100087AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087B20()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000463C4;

  return sub_100080CBC(v0);
}

uint64_t sub_100087BB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100087BE8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100087C20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_100080154(a1, v4, v5, v6);
}

uint64_t sub_100087CD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100087D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100087DDC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t getEnumTagSinglePayload for AirDropActivityAttributes.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirDropActivityAttributes.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000880AC()
{
  result = qword_100175D68;
  if (!qword_100175D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D68);
  }

  return result;
}

unint64_t sub_100088104()
{
  result = qword_100175D70;
  if (!qword_100175D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D70);
  }

  return result;
}

unint64_t sub_10008815C()
{
  result = qword_100175D78;
  if (!qword_100175D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D78);
  }

  return result;
}

unint64_t sub_1000881B4()
{
  result = qword_100175D80;
  if (!qword_100175D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D80);
  }

  return result;
}

unint64_t sub_10008820C()
{
  result = qword_100175D88;
  if (!qword_100175D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D88);
  }

  return result;
}

unint64_t sub_100088264()
{
  result = qword_100175D90;
  if (!qword_100175D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175D90);
  }

  return result;
}

uint64_t sub_1000882CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100088378(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10008D014(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100088498(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  v13 = *(a1 + 16);
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v12, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_10008D42C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000886F8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for URL();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  v3[26] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v9 = type metadata accessor for UTType();
  v3[29] = v9;
  v10 = *(v9 - 8);
  v3[30] = v10;
  v11 = *(v10 + 64) + 15;
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_100088860, 0, 0);
}

unint64_t sub_100088860()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = *(v3 + 88);
  v0[32] = v4;
  v0[33] = (v3 + 88) & 0xFFFFFFFFFFFFLL | 0xBCE5000000000000;
  v5 = v4(v2);
  if (v5)
  {
LABEL_2:
    v6 = v0[31];
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[25];

    v10 = v0[1];

    return v10(v5);
  }

  v12 = v0[22];
  result = (*(v0[21] + 64))(v0[20]);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_17:

    v5 = 0;
    goto LABEL_2;
  }

  v30 = result;
  v31 = _CocoaArrayWrapper.endIndex.getter();
  result = v30;
  if (!v31)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(result + 32);
  }

  v14 = v13;
  v0[34] = v13;
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[20];

  v18 = (*(v16 + 72))(v17, v16);
  if (v18)
  {
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[20];
    v22 = v18;
    [v18 _populateMetadataForBackwardCompatibility];
    v23 = [v22 image];
    v24 = [v23 platformImage];

    (*(v20 + 96))(v24, v21, v20);
    v5 = (v4)(v21, v20);

    if (v5)
    {

      goto LABEL_2;
    }
  }

  v32 = (v0[21] + 80);
  v33 = (*v32 + **v32);
  v25 = (*v32)[1];
  v26 = swift_task_alloc();
  v0[35] = v26;
  *v26 = v0;
  v26[1] = sub_100088B90;
  v27 = v0[21];
  v28 = v0[22];
  v29 = v0[20];

  return v33(v29, v27);
}

uint64_t sub_100088B90(uint64_t a1)
{
  v3 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = a1;

  if (v1)
  {

    v4 = sub_100089C28;
  }

  else
  {
    v4 = sub_100088CAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100088CAC()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    [*(v0 + 288) _populateMetadataForBackwardCompatibility];
    v2 = [v1 image];
    if (!v2 || (v3 = v2, v4 = [v2 platformImage], v3, !v4))
    {
      v5 = [v1 icon];
      v4 = [v5 platformImage];
    }

    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 168);
    v9 = *(v0 + 160);
    (*(v8 + 96))(v4, v9, v8);
    v10 = v7(v9, v8);

    if (v10)
    {
      v11 = *(v0 + 272);
LABEL_15:

      v36 = *(v0 + 248);
      v38 = *(v0 + 216);
      v37 = *(v0 + 224);
      v39 = *(v0 + 200);

      v40 = *(v0 + 8);

      return v40(v10);
    }
  }

  v12 = *(v0 + 272);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 232);
  static UTType.url.getter();
  UTType.identifier.getter();
  v16 = *(v14 + 8);
  *(v0 + 296) = v16;
  *(v0 + 304) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v15);
  v17 = String._bridgeToObjectiveC()();

  LODWORD(v12) = [v12 hasRepresentationConformingToTypeIdentifier:v17 fileOptions:0];

  if (v12)
  {
    v18 = *(v0 + 272);
    v19 = swift_task_alloc();
    *(v0 + 312) = v19;
    *(v19 + 16) = v18;
    v20 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v21 = swift_task_alloc();
    *(v0 + 320) = v21;
    *v21 = v0;
    v21[1] = sub_10008909C;
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v24 = sub_100090BDC;
  }

  else
  {
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 272);
    v28 = *(v0 + 248);
    v29 = *(v0 + 232);
    static UTType.image.getter();
    UTType.identifier.getter();
    v26(v28, v29);
    v30 = String._bridgeToObjectiveC()();

    LODWORD(v27) = [v27 hasRepresentationConformingToTypeIdentifier:v30 fileOptions:0];

    if (!v27)
    {
      v34 = *(v0 + 264);
      v11 = *(v0 + 272);
      v35 = *(v0 + 176);
      v10 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));
      goto LABEL_15;
    }

    v31 = *(v0 + 272);
    v19 = swift_task_alloc();
    *(v0 + 376) = v19;
    *(v19 + 16) = v31;
    v32 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v33 = swift_task_alloc();
    *(v0 + 384) = v33;
    v23 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
    *v33 = v0;
    v33[1] = sub_100089A18;
    v24 = sub_100090BD4;
    v22 = v0 + 144;
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v22, 0, 0, 0xD00000000000001BLL, 0x8000000100124720, v24, v19, v23);
}

uint64_t sub_10008909C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;

  v5 = *(v2 + 312);
  if (v0)
  {

    v6 = sub_100089F40;
  }

  else
  {

    v6 = sub_1000891E4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000891E4()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  sub_100007BA4(v0[28], v1, &qword_100172EE0, &qword_10011B220);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[27];
  if (v4 == 1)
  {
    v6 = v0[34];
    sub_1000159AC(v0[28], &qword_100172EE0, &qword_10011B220);

    sub_1000159AC(v5, &qword_100172EE0, &qword_10011B220);
    v7 = v0[31];
    v8 = v0[27];
    v9 = v0[28];
    v10 = v0[25];

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    (*(v0[24] + 32))(v0[25], v0[27], v0[23]);
    v13 = [objc_allocWithZone(LPMetadataProvider) init];
    v0[41] = v13;
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v0[42] = v15;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_100089438;
    v17 = swift_continuation_init();
    v0[17] = sub_1000077C8(&qword_100175E00, &qword_10011DCA8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10008C360;
    v0[13] = &unk_10015F8E8;
    v0[14] = v17;
    [v13 startFetchingMetadataForURL:v16 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100089438()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_10008A1B4;
  }

  else
  {
    v3 = sub_100089548;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100089548()
{
  v1 = v0[42];
  v2 = v0[19];
  v0[44] = v2;

  v3 = swift_task_alloc();
  v0[45] = v3;
  *(v3 + 16) = v2;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_100089640;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100089640()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_100089758, 0, 0);
}

uint64_t sub_100089758()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 192);
  v31 = *(v0 + 200);
  v32 = *(v0 + 224);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = [v1 image];
  v9 = [v8 platformImage];

  (*(v6 + 96))(v9, v7, v6);
  (*(v3 + 8))(v31, v5);
  sub_1000159AC(v32, &qword_100172EE0, &qword_10011B220);
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 232);
  static UTType.image.getter();
  UTType.identifier.getter();
  v11(v13, v14);
  v15 = String._bridgeToObjectiveC()();

  LODWORD(v12) = [v12 hasRepresentationConformingToTypeIdentifier:v15 fileOptions:0];

  if (v12)
  {
    v16 = *(v0 + 272);
    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *(v17 + 16) = v16;
    v18 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v19 = swift_task_alloc();
    *(v0 + 384) = v19;
    v20 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
    *v19 = v0;
    v19[1] = sub_100089A18;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0xD00000000000001BLL, 0x8000000100124720, sub_100090BD4, v17, v20);
  }

  else
  {
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    v23 = *(v0 + 176);
    v24 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

    v25 = *(v0 + 248);
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v28 = *(v0 + 200);

    v29 = *(v0 + 8);

    return v29(v24);
  }
}

uint64_t sub_100089A18()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;

  v5 = *(v2 + 376);
  if (v0)
  {

    v6 = sub_10008A2BC;
  }

  else
  {

    v6 = sub_100089B60;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100089B60()
{
  v1 = *(v0 + 176);
  (*(*(v0 + 168) + 96))(*(v0 + 144), *(v0 + 160));
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 176);
  v5 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 200);

  v10 = *(v0 + 8);

  return v10(v5);
}

uint64_t sub_100089C28()
{
  v1 = *(v0 + 272);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  static UTType.url.getter();
  UTType.identifier.getter();
  v5 = *(v3 + 8);
  *(v0 + 296) = v5;
  *(v0 + 304) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = String._bridgeToObjectiveC()();

  LODWORD(v1) = [v1 hasRepresentationConformingToTypeIdentifier:v6 fileOptions:0];

  if (v1)
  {
    v7 = *(v0 + 272);
    v8 = swift_task_alloc();
    *(v0 + 312) = v8;
    *(v8 + 16) = v7;
    v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v10 = swift_task_alloc();
    *(v0 + 320) = v10;
    *v10 = v0;
    v10[1] = sub_10008909C;
    v11 = *(v0 + 224);
    v12 = *(v0 + 208);
    v13 = sub_100090BDC;
LABEL_5:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD00000000000001BLL, 0x8000000100124720, v13, v8, v12);
  }

  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 272);
  v17 = *(v0 + 248);
  v18 = *(v0 + 232);
  static UTType.image.getter();
  UTType.identifier.getter();
  v15(v17, v18);
  v19 = String._bridgeToObjectiveC()();

  LODWORD(v16) = [v16 hasRepresentationConformingToTypeIdentifier:v19 fileOptions:0];

  if (v16)
  {
    v20 = *(v0 + 272);
    v8 = swift_task_alloc();
    *(v0 + 376) = v8;
    *(v8 + 16) = v20;
    v21 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v22 = swift_task_alloc();
    *(v0 + 384) = v22;
    v12 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
    *v22 = v0;
    v22[1] = sub_100089A18;
    v13 = sub_100090BD4;
    v11 = v0 + 144;
    goto LABEL_5;
  }

  v23 = *(v0 + 264);
  v24 = *(v0 + 272);
  v25 = *(v0 + 176);
  v26 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

  v27 = *(v0 + 248);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v30 = *(v0 + 200);

  v31 = *(v0 + 8);

  return v31(v26);
}

uint64_t sub_100089F40()
{
  (*(v0[24] + 56))(v0[28], 1, 1, v0[23]);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  sub_100007BA4(v0[28], v1, &qword_100172EE0, &qword_10011B220);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[27];
  if (v4 == 1)
  {
    v6 = v0[34];
    sub_1000159AC(v0[28], &qword_100172EE0, &qword_10011B220);

    sub_1000159AC(v5, &qword_100172EE0, &qword_10011B220);
    v7 = v0[31];
    v8 = v0[27];
    v9 = v0[28];
    v10 = v0[25];

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    (*(v0[24] + 32))(v0[25], v0[27], v0[23]);
    v13 = [objc_allocWithZone(LPMetadataProvider) init];
    v0[41] = v13;
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v0[42] = v15;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_100089438;
    v17 = swift_continuation_init();
    v0[17] = sub_1000077C8(&qword_100175E00, &qword_10011DCA8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10008C360;
    v0[13] = &unk_10015F8E8;
    v0[14] = v17;
    [v13 startFetchingMetadataForURL:v16 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10008A1B4()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[34];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  sub_1000159AC(v5, &qword_100172EE0, &qword_10011B220);
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[25];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_10008A2BC()
{
  v1 = *(v0 + 176);
  (*(*(v0 + 168) + 96))(0, *(v0 + 160));
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 176);
  v5 = (*(v0 + 256))(*(v0 + 160), *(v0 + 168));

  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 200);

  v10 = *(v0 + 8);

  return v10(v5);
}

uint64_t sub_10008A384(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000031;
  }

  else
  {
    v4 = 0xD000000000000021;
  }

  if (v3)
  {
    v5 = "shotservices.sirisharing";
  }

  else
  {
    v5 = "per.group-session";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000031;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (*a2)
  {
    v8 = "per.group-session";
  }

  else
  {
    v8 = "shotservices.sirisharing";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10008A430@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10015CA80, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10008A490(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v2 = 0xD000000000000021;
  }

  if (*v1)
  {
    v3 = "per.group-session";
  }

  else
  {
    v3 = "shotservices.sirisharing";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

Swift::Int sub_10008A4D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008A550()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10008A5BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008A648()
{
  v0 = sub_10008FFA4(&off_10015C918);
  result = swift_arrayDestroy();
  off_100175DA0 = v0;
  return result;
}

uint64_t sub_10008A694()
{
  v1 = v0;
  v2 = 0;
  v3 = 0;
  v31 = _swiftEmptyArrayStorage;
  do
  {
    v4 = v2;
    v5 = *(&off_10015C9D8 + v3 + 32);
    v6 = [v1 bundleIdentifier];
    if (!v6)
    {
      goto LABEL_4;
    }

    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v5)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (qword_1001721E8 != -1)
    {
      swift_once();
    }

    v12 = off_100175DA0;
    if (*(off_100175DA0 + 2))
    {
      v13 = *(off_100175DA0 + 5);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << v12[32];
      v16 = v14 & ~v15;
      if ((*&v12[((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v16))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v12 + 6) + 16 * v16);
          v19 = *v18 == v8 && v18[1] == v10;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*&v12[((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v16) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

LABEL_29:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v31;
        v36 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000E434(0, v31[2] + 1, 1);
          v26 = v36;
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          sub_10000E434((v27 > 1), v28 + 1, 1);
          v26 = v36;
        }

        v26[2] = v28 + 1;
        v31 = v26;
        *(v26 + v28 + 32) = v5;
        goto LABEL_4;
      }
    }

LABEL_21:

    v20 = [v1 entitlements];
    v21 = String._bridgeToObjectiveC()();
    sub_1000165C4(0, &qword_100175DA8, NSNumber_ptr);
    v22 = [v20 objectForKey:v21 ofClass:swift_getObjCClassFromMetadata()];

    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v32[0] = v34;
    v32[1] = v35;
    if (!*(&v35 + 1))
    {
      sub_1000159AC(v32, &qword_1001746C0, &qword_10011A510);
LABEL_3:

      goto LABEL_4;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    v23 = v33;
    v24 = [v33 BOOLValue];

    if (v24)
    {
      goto LABEL_29;
    }

LABEL_4:
    v2 = 1;
    v3 = &_mh_execute_header.magic + 1;
  }

  while ((v4 & 1) == 0);
  v29 = sub_10008FF30(v31);

  return v29;
}

uint64_t sub_10008AA98@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10008AFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = type metadata accessor for LocalizedStringResource();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = sub_1000077C8(&qword_100175E78, &unk_10011DEF0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v37 - v24;
  v26 = *(a3 + 8);
  v42 = a2;
  v27 = v26(a2, a3, v23);
  if (v28)
  {
    return v27;
  }

  v37 = v8;
  v38 = v11;
  (*(a3 + 16))(v42, a3);
  sub_100007BA4(v25, v21, &qword_100175E78, &unk_10011DEF0);
  v31 = v40;
  v30 = v41;
  v32 = *(v40 + 48);
  if (v32(v21, 1, v41) != 1)
  {
    v33 = v38;
    (*(v31 + 32))(v38, v21, v30);
    (*(v31 + 16))(v37, v33, v30);
    v29 = String.init(localized:)();
    (*(v31 + 8))(v33, v30);
    v34 = v25;
LABEL_8:
    sub_1000159AC(v34, &qword_100175E78, &unk_10011DEF0);
    return v29;
  }

  sub_1000159AC(v25, &qword_100175E78, &unk_10011DEF0);
  (*(a3 + 40))(v39, v42, a3);
  sub_100007BA4(v18, v15, &qword_100175E78, &unk_10011DEF0);
  if (v32(v15, 1, v30) != 1)
  {
    v35 = v38;
    (*(v31 + 32))(v38, v15, v30);
    (*(v31 + 16))(v37, v35, v30);
    v29 = String.init(localized:)();
    (*(v31 + 8))(v35, v30);
    v34 = v18;
    goto LABEL_8;
  }

  sub_1000159AC(v18, &qword_100175E78, &unk_10011DEF0);
  return sub_10008AB04(v42, a3);
}

uint64_t sub_10008B3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = type metadata accessor for LocalizedStringResource();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_1000077C8(&qword_100175E78, &unk_10011DEF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - v23;
  v25 = (*(a3 + 24))(a2, a3, v22);
  if (!v26)
  {
    v43 = v14;
    v44 = v17;
    v45 = v10;
    v28 = a3;
    v29 = v24;
    (*(a3 + 32))(a2, a3);
    sub_100007BA4(v24, v20, &qword_100175E78, &unk_10011DEF0);
    v30 = v48;
    v31 = *(v48 + 48);
    if (v31(v20, 1, v49) == 1)
    {
      v32 = v30;
      sub_1000159AC(v29, &qword_100175E78, &unk_10011DEF0);
      v33 = v44;
      (*(v28 + 48))(v46, a2, v28);
      v34 = v43;
      sub_100007BA4(v33, v43, &qword_100175E78, &unk_10011DEF0);
      if (v31(v34, 1, v49) == 1)
      {
        sub_1000159AC(v33, &qword_100175E78, &unk_10011DEF0);
        return 0;
      }

      v38 = v45;
      v39 = v34;
      v40 = v49;
      (*(v32 + 32))(v45, v39, v49);
      (*(v32 + 16))(v47, v38, v40);
      v27 = String.init(localized:)();
      (*(v32 + 8))(v38, v40);
      v37 = v33;
    }

    else
    {
      v35 = v45;
      v36 = v49;
      (*(v30 + 32))(v45, v20, v49);
      (*(v30 + 16))(v47, v35, v36);
      v27 = String.init(localized:)();
      (*(v30 + 8))(v35, v36);
      v37 = v29;
    }

    sub_1000159AC(v37, &qword_100175E78, &unk_10011DEF0);
    return v27;
  }

  return v25;
}

unint64_t sub_10008B7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  result = (*(a2 + 64))(a1, a2, v7);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:

    (*(a2 + 56))(v32, a1, a2);
    v23 = v33;
    v34 = v33;

    sub_10001528C(v32);
    if (!*(v23 + 16) || (v24 = *(v23 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v25 = Hasher._finalize()(), v26 = -1 << *(v23 + 32), v27 = v25 & ~v26, ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
    {
LABEL_23:
      sub_1000159AC(&v34, &unk_100175EA0, &qword_100120A00);
      return 0;
    }

    v28 = ~v26;
    while (1)
    {
      v29 = *(*(v23 + 48) + v27) ? 0x8000000100122930 : 0x8000000100122900;
      if ((*(*(v23 + 48) + v27) & 1) == 0 && 0x8000000100122900 == v29)
      {
        break;
      }

      *(*(v23 + 48) + v27);
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_26;
      }

      v27 = (v27 + 1) & v28;
      if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    sub_1000159AC(&v34, &unk_100175EA0, &qword_100120A00);
    v13 = 0;
    goto LABEL_27;
  }

  v21 = result;
  v22 = _CocoaArrayWrapper.endIndex.getter();
  result = v21;
  if (!v22)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v12 = v11;

    v13 = v12;
    static UTType.url.getter();
    UTType.identifier.getter();
    v14 = *(v5 + 8);
    v14(v9, v4);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v13 hasRepresentationConformingToTypeIdentifier:v15 fileOptions:0];

    if (v16)
    {

      return 1802398060;
    }

    static UTType.image.getter();
    UTType.identifier.getter();
    v14(v9, v4);
    v17 = String._bridgeToObjectiveC()();

    v18 = [v13 hasRepresentationConformingToTypeIdentifier:v17 fileOptions:0];

    if (v18)
    {

      return 0x6F746F6870;
    }

    static UTType._groupActivity.getter();
    UTType.identifier.getter();
    v14(v9, v4);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v13 hasRepresentationConformingToTypeIdentifier:v19 fileOptions:0];

    if ((v20 & 1) == 0)
    {

      return 0;
    }

LABEL_27:

    return 0x616C706572616873;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10008BC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a2 + 64))(a1, a2, v11);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v23 = result;
  v24 = _CocoaArrayWrapper.endIndex.getter();
  result = v23;
  if (!v24)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(result + 32);
  }

  v16 = v15;

  type metadata accessor for SFAirDropUtilities();
  static SFAirDropUtilities.standardTypeIdentifiers.getter();
  static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)();
  v18 = v17;

  if (!v18)
  {

    return 0;
  }

  UTType.init(_:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000159AC(v7, &unk_100175E80, &qword_100118B18);
    return 0;
  }

  (*(v9 + 32))(v13, v7, v8);
  v19 = UTType.preferredFilenameExtension.getter();
  if (v20)
  {
    countAndFlagsBits = String.uppercased()()._countAndFlagsBits;

    (*(v9 + 8))(v13, v8);
    return countAndFlagsBits;
  }

  else
  {
    v22 = v19;
    (*(v9 + 8))(v13, v8);

    return v22;
  }
}

void sub_10008BF00(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100175E18, &unk_10011DCC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  sub_1000165C4(0, &qword_100175E20, NSURL_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_100090CA8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B90C;
  aBlock[3] = &unk_10015F988;
  v12 = _Block_copy(aBlock);

  v13 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_10008C0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_1000077C8(&qword_100172EE0, &qword_10011B220) - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v17 - v11;
  if (v10)
  {
    v18 = v10;
    swift_unknownObjectRetain();
    sub_1000077C8(&qword_100175E30, &qword_10011DCD0);
    v13 = type metadata accessor for URL();
    v14 = swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v12, v14 ^ 1u, 1, v13);
    sub_1000077C8(&qword_100175E18, &unk_10011DCC0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      LODWORD(v18) = 17;
      sub_100090CE8(_swiftEmptyArrayStorage);
      sub_100090E18(&qword_100175E28, &type metadata accessor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v16 = POSIXError._nsError.getter();
      (*(v5 + 8))(v8, v4);
    }

    v18 = v16;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E18, &unk_10011DCC0);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10008C360(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000078DC((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void sub_10008C438(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100175E08, &unk_10011DCB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100090C18;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C38;
  aBlock[3] = &unk_10015F938;
  v11 = _Block_copy(aBlock);

  [a2 _loadAsynchronousFieldsWithUpdateHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10008C5E8(uint64_t result)
{
  if (result)
  {
    sub_1000077C8(&qword_100175E08, &unk_10011DCB0);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

void sub_10008C62C(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100175E48, &qword_10011DCE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  sub_1000165C4(0, &qword_100175E50, UIImage_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_100090EF8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B90C;
  aBlock[3] = &unk_10015F9D8;
  v12 = _Block_copy(aBlock);

  v13 = [a2 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_10008C810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      swift_unknownObjectRetain();
    }

    v15 = v10;
    sub_1000077C8(&qword_100175E48, &qword_10011DCE8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      LODWORD(v15) = 17;
      v13 = v7;
      sub_100090CE8(_swiftEmptyArrayStorage);
      sub_100090E18(&qword_100175E28, &type metadata accessor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v12 = POSIXError._nsError.getter();
      (*(v5 + 8))(v9, v13);
    }

    v15 = v12;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E48, &qword_10011DCE8);
    return CheckedContinuation.resume(throwing:)();
  }
}

BOOL sub_10008C9EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v8 = static NSUserDefaults.airdrop.getter();
  v9 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  result = 0;
  if (v9)
  {
    (*(v4 + 16))(v7, v2, a1);
    sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
    if (swift_dynamicCast())
    {
      v10 = v15;
      v11 = [v15 content];
      v12 = [v11 hasPossibleCollaborationRepresentation];

      if (v12)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_10008CB60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SFAirDropUtilities();
  v4 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  v5 = (*(a2 + 64))(a1, a2);
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v20 = v7;
      v10 = -*(v4 + 16);
LABEL_4:
      if (v9)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v6 + 32 + 8 * v8);
      }

      v12 = v11;
      if (!__OFADD__(v8++, 1))
      {
        break;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    v14 = -1;
    v15 = (v4 + 40);
    while (v10 + v14 != -1)
    {
      if (++v14 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v16 = v15 + 2;
      v18 = *(v15 - 1);
      v17 = *v15;

      v19 = String._bridgeToObjectiveC()();

      LODWORD(v17) = [v12 hasItemConformingToTypeIdentifier:v19];

      v15 = v16;
      if (v17)
      {

        return;
      }
    }

    v9 = v6 & 0xC000000000000001;
    if (v8 != v20)
    {
      goto LABEL_4;
    }
  }

LABEL_15:
}

id sub_10008CD7C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10008CE58(_BYTE *a1, char a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    v6 = 0xD000000000000031;
  }

  else
  {
    v6 = 0xD000000000000021;
  }

  if (a2)
  {
    v7 = "per.group-session";
  }

  else
  {
    v7 = "shotservices.sirisharing";
  }

  v8 = v7 | 0x8000000000000000;
  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v4 + 32);
  v11 = v9 & ~v10;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v4 + 48) + v11) ? 0xD000000000000031 : 0xD000000000000021;
      v14 = *(*(v4 + 48) + v11) ? "per.group-session" : "shotservices.sirisharing";
      if (v13 == v6 && (v14 | 0x8000000000000000) == v8)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_23;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v19 = *(*(v4 + 48) + v11);
  }

  else
  {
LABEL_21:
    v17 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v19 = a2 & 1;
    sub_10008E224(a2 & 1, v11, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v19;
  return result;
}

uint64_t sub_10008D014(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10008E424(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10008D164(uint64_t a1, Swift::Int a2, uint64_t a3, int a4)
{
  v5 = v4;
  v42 = a4 & 0x10000;
  v43 = a4 & 0x100;
  v41 = a4 & 0x1000000;
  v9 = *v5;
  v10 = *(*v5 + 40);
  Hasher.init(_seed:)();
  v45 = a3;
  String.hash(into:)();
  LOBYTE(a3) = a4 & 1;
  Hasher._combine(_:)(a4 & 1);
  Hasher._combine(_:)(BYTE1(a4) & 1);
  Hasher._combine(_:)(BYTE2(a4) & 1);
  v44 = a4;
  Hasher._combine(_:)(HIBYTE(a4) & 1);
  v11 = Hasher._finalize()();
  v12 = v9 + 56;
  v13 = -1 << *(v9 + 32);
  v14 = v11 & ~v13;
  v39 = v5;
  v38 = a3;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v37 = v9;
    v16 = *(v9 + 48);
    v18 = a2;
    v17 = v45;
    while (1)
    {
      v19 = v16 + 24 * v14;
      v20 = *(v19 + 16);
      v21 = *(v19 + 17);
      v22 = *(v19 + 19);
      v23 = (v42 != 0) ^ *(v19 + 18);
      if (*v19 == v18 && *(v19 + 8) == v17)
      {
        if (((v20 ^ v44 | (v43 != 0) ^ v21 | v23) & 1) == 0 && (((v41 != 0) ^ v22) & 1) == 0)
        {
LABEL_12:

          v26 = *(v37 + 48) + 24 * v14;
          v28 = *v26;
          v27 = *(v26 + 8);
          v29 = *(v26 + 16);
          v30 = *(v26 + 17);
          v31 = *(v26 + 18);
          LOBYTE(v26) = *(v26 + 19);
          *a1 = v28;
          *(a1 + 8) = v27;
          *(a1 + 16) = v29;
          *(a1 + 17) = v30;
          *(a1 + 18) = v31;
          *(a1 + 19) = v26;

          return 0;
        }
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = a2;
        v17 = v45;
        if (!((v20 ^ v44) & 1 | ((v25 & 1) == 0) | (((v43 != 0) ^ v21) | v23) & 1) && (((v41 != 0) ^ v22) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v18 = a2;
  v17 = v45;
LABEL_14:
  v33 = *v39;
  v34 = v17;
  v35 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v39;

  sub_10008E5A4(v35, v34, v44 & 0x1010101, v14, isUniquelyReferenced_nonNull_native);
  *v39 = v46;
  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v38;
  *(a1 + 17) = BYTE1(v43);
  *(a1 + 18) = BYTE2(v42);
  *(a1 + 19) = HIBYTE(v41);
  return 1;
}

uint64_t sub_10008D42C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_100090E18(&qword_100175DE0, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    sub_10008E874(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10008D70C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000077C8(&qword_100175DB8, &qword_10011DC80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10008D99C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10008DBFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000077C8(&qword_100175DF8, &qword_10011DC98);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v3 + 16))
  {
    v35 = v1;
    v7 = 0;
    v36 = (v3 + 56);
    v37 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v19 + 18);
      v25 = *(v19 + 19);
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v20;
      *(v14 + 8) = v21;
      *(v14 + 16) = v22;
      *(v14 + 17) = v23;
      *(v14 + 18) = v24;
      *(v14 + 19) = v25;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10008DEC8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

Swift::Int sub_10008E224(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v24 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_10008D70C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10008EB18();
      goto LABEL_28;
    }

    sub_10008F16C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (v5)
  {
    v10 = 0xD000000000000031;
  }

  else
  {
    v10 = 0xD000000000000021;
  }

  if (v5)
  {
    v11 = "per.group-session";
  }

  else
  {
    v11 = "shotservices.sirisharing";
  }

  v12 = v11 | 0x8000000000000000;
  String.hash(into:)();

  result = Hasher._finalize()();
  v13 = -1 << *(v8 + 32);
  a2 = result & ~v13;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(*(v8 + 48) + a2) ? 0xD000000000000031 : 0xD000000000000021;
      v16 = *(*(v8 + 48) + a2) ? "per.group-session" : "shotservices.sirisharing";
      if (v15 == v10 && (v16 | 0x8000000000000000) == v12)
      {
        goto LABEL_31;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v24 & 1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10008E424(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10008D99C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10008EC58();
      goto LABEL_16;
    }

    sub_10008F3CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10008E5A4(Swift::Int result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v9 = a3 & 0x100;
  v10 = a3 & 0x10000;
  v11 = a3 & 0x1000000;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  v39 = WORD1(v10);
  v40 = v9 >> 8;
  v38 = BYTE3(v11);
  if (v13 <= v12 || (a5 & 1) == 0)
  {
    v42 = a3;
    v41 = result;
    if (a5)
    {
      sub_10008DBFC(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_10008EDB4();
LABEL_20:
        LOBYTE(a3) = v42;
        v7 = a2;
        v8 = v41;
        goto LABEL_21;
      }

      sub_10008F604(v12 + 1);
    }

    v14 = *v5;
    v15 = *(*v5 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._combine(_:)(v42 & 1);
    Hasher._combine(_:)(BYTE1(v9));
    Hasher._combine(_:)(BYTE2(v10));
    Hasher._combine(_:)(BYTE3(v11));
    result = Hasher._finalize()();
    v16 = v14 + 56;
    v17 = -1 << *(v14 + 32);
    a4 = result & ~v17;
    if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v18 = ~v17;
      v19 = *(v14 + 48);
      a3 = v42;
      v7 = a2;
      v8 = v41;
      v20 = v9;
      v21 = v10;
      while (1)
      {
        v22 = v19 + 24 * a4;
        result = *v22;
        v23 = *(v22 + 16);
        v24 = *(v22 + 17);
        v25 = *(v22 + 19);
        if (*v22 == v8 && *(v22 + 8) == v7)
        {
          v31 = v11 != 0;
          if (((v23 ^ a3 | (v20 != 0) ^ v24 | (v21 != 0) ^ *(v22 + 18)) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v43 = v11 != 0;
          v44 = (v21 != 0) ^ *(v22 + 18);
          v27 = v11;
          v28 = v21;
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v21 = v28;
          v11 = v27;
          v8 = v41;
          v7 = a2;
          a3 = v42;
          v30 = v23 ^ v42 | ~v29;
          result = v44;
          if (((v30 | (v20 != 0) ^ v24 | v44) & 1) == 0)
          {
            v31 = v43;
LABEL_10:
            if (((v31 ^ v25) & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        a4 = (a4 + 1) & v18;
        if (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v32 = *v37;
  *(*v37 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v33 = *(v32 + 48) + 24 * a4;
  *v33 = v8;
  *(v33 + 8) = v7;
  *(v33 + 16) = a3 & 1;
  *(v33 + 17) = v40;
  *(v33 + 18) = v39;
  *(v33 + 19) = v38;
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_24:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

uint64_t sub_10008E874(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008DEC8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10008EF34();
      goto LABEL_12;
    }

    sub_10008F8CC(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_100090E18(&qword_100175DE0, &type metadata accessor for UUID);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10008EB18()
{
  v1 = v0;
  sub_1000077C8(&qword_100175DB8, &qword_10011DC80);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10008EC58()
{
  v1 = v0;
  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10008EDB4()
{
  v1 = v0;
  sub_1000077C8(&qword_100175DF8, &qword_10011DC98);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        LOBYTE(v18) = *(v18 + 19);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 17) = v22;
        *(v24 + 18) = v23;
        *(v24 + 19) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10008EF34()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
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

uint64_t sub_10008F16C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000077C8(&qword_100175DB8, &qword_10011DC80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10008F3CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10008F604(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000077C8(&qword_100175DF8, &qword_10011DC98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v37 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 17);
      v24 = *(v19 + 18);
      v25 = *(v19 + 19);
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v6 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v37 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 17) = v23;
      *(v15 + 18) = v24;
      *(v15 + 19) = v25;
      ++*(v37 + 16);
      v3 = v36;
      v11 = v38;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_28:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_10008F8CC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  v10 = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_10008FBE8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10008FC40(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000077C8(&unk_100175E90, &unk_10011DF20);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10008FF30(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100090578();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10008CE58(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

Swift::Int sub_10008FFA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_100176590, &qword_10011E7C0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10009010C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_allocWithZone(LSApplicationRecord);

  v7 = sub_10008CD7C(a1, a2, 1);
  if (!v7)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007D20(v8, qword_10017F350);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10003E81C(a1, a2, v39);
      _os_log_impl(&_mh_execute_header, v9, v10, "Fetched shareable content from %s, but could not find an associated application record", v11, 0xCu);
      sub_100007920(v12);
    }

    v13 = 0;
    v38 = 0;
    v14 = 0;
    v15 = 0xE000000000000000;
    v16 = &_swiftEmptySetSingleton;
    goto LABEL_7;
  }

  v23 = v7;
  v24 = [v7 localizedName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v25;

  v14 = v23;
  v16 = sub_10008A694();

  v26 = [v14 appTags];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39[0] = 0x6E6564646968;
  v39[1] = 0xE600000000000000;
  __chkstk_darwin(v28);
  v37[2] = v39;
  v13 = sub_1000882CC(sub_100090520, v37, v27);

  v29 = [v14 compatibilityObject];
  v30 = [v29 bundleType];

  if (!v30)
  {
LABEL_7:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_8:

    goto LABEL_9;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v33)
  {
    goto LABEL_8;
  }

  if (v31 == v34 && v33 == v35)
  {

    v13 = 1;
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 |= v36;
  }

LABEL_9:
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [v17 _applicationIconImageForBundleIdentifier:v18 format:2 scale:v21];
  *a3 = v38;
  *(a3 + 8) = v15;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v22;
  *(a3 + 40) = v16;
  *(a3 + 48) = v13 & 1;
}

uint64_t sub_100090520(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100090578()
{
  result = qword_100175DB0;
  if (!qword_100175DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175DB0);
  }

  return result;
}

uint64_t sub_1000905CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100090B80();
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v2)
  {
    v4 = (a1 + 51);
    do
    {
      v5 = *(v4 - 11);
      v6 = *(v4 - 19);
      if (*(v4 - 2))
      {
        v7 = 256;
      }

      else
      {
        v7 = 0;
      }

      if (*(v4 - 1))
      {
        v8 = 0x10000;
      }

      else
      {
        v8 = 0;
      }

      if (*v4)
      {
        v9 = 0x1000000;
      }

      else
      {
        v9 = 0;
      }

      v10 = v8 | v9;
      v11 = v7 | *(v4 - 3);
      v12 = *(v4 - 11);

      sub_10008D164(&v13, v6, v5, v10 | v11);

      v4 += 24;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

uint64_t sub_1000906B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10008D014(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100090750(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100090E18(&unk_100173CF0, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
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
      v13(v6, v15, v2);
      sub_10008D42C(v9, v6);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

unint64_t sub_1000908EC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000077C8(&qword_100175DC0, &qword_10011DC88);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_100090E18(&qword_100175DC8, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100090E18(&unk_100175DD0, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100090B80()
{
  result = qword_100175DF0;
  if (!qword_100175DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175DF0);
  }

  return result;
}

uint64_t sub_100090C18(uint64_t a1)
{
  v2 = *(*(sub_1000077C8(&qword_100175E08, &unk_10011DCB0) - 8) + 80);

  return sub_10008C5E8(a1);
}

uint64_t sub_100090CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100090CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_100175E38, &qword_10011DCD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007BA4(v4, &v13, &qword_100175E40, &qword_10011DCE0);
      v5 = v13;
      v6 = v14;
      result = sub_10003EEC0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100058DC8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100090E18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100090E74(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000077C8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100090F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_1000077C8(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

__n128 sub_100090FD8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100090FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10009103C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000910A0()
{
  result = qword_100175E58;
  if (!qword_100175E58)
  {
    sub_100007CCC(&qword_100175E60, qword_10011DD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E58);
  }

  return result;
}

unint64_t sub_100091108()
{
  result = qword_100175E68;
  if (!qword_100175E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E68);
  }

  return result;
}

unint64_t sub_100091160()
{
  result = qword_100175E70;
  if (!qword_100175E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175E70);
  }

  return result;
}

uint64_t sub_1000911D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_100007878(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        sub_100007920(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1000590D8(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000E4B4(0, v9[2] + 1, 1);
          v9 = v29;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_10000E4B4((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = sub_100058CFC(v25, v26);
        v17 = *(*(v14 - 8) + 64);
        __chkstk_darwin(v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_100092C1C(v13, v19, &v29, v14, v15);
        result = sub_100007920(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = sub_100007920(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_100091400(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(sub_100091420, 0, 0);
}

void sub_100091420()
{
  v1 = *(v0[18] + 16);
  v0[19] = v1;
  v2 = *(v1 + 16);
  v0[20] = v2;
  if (v2)
  {
    v0[21] = 0;
    if (*(v1 + 16))
    {
      sub_100007878(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      v0[22] = v3;
      v0[23] = v4;
      sub_1000078DC(v0 + 2, v3);
      v5 = *(v4 + 24);
      v0[24] = swift_getAssociatedTypeWitness();
      v6 = type metadata accessor for Optional();
      v0[25] = v6;
      v7 = *(v6 - 8);
      v0[26] = v7;
      v8 = *(v7 + 64) + 15;
      v9 = swift_task_alloc();
      v0[27] = v9;
      v14 = (v5 + *v5);
      v10 = v5[1];
      v11 = swift_task_alloc();
      v0[28] = v11;
      *v11 = v0;
      v11[1] = sub_100091664;

      v14(v9, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = v0[17];
    *(v12 + 32) = 0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    v13 = v0[1];

    v13();
  }
}

uint64_t sub_100091664()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100091AF4;
  }

  else
  {
    v3 = sub_100091778;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100091778()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 136);
    *(v0 + 80) = v2;
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    v11 = sub_100058F84((v0 + 56));
    (*(v3 + 32))(v11, v1, v2);

    sub_1000590D8((v0 + 56), v10);
    sub_100007920((v0 + 16));
    goto LABEL_5;
  }

  (*(*(v0 + 208) + 8))(v1, *(v0 + 200));

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_1000159AC(v0 + 56, &qword_100175FE8, &unk_10011DFF0);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168) + 1;
  result = sub_100007920((v0 + 16));
  if (v5 == v4)
  {
    v7 = *(v0 + 136);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
LABEL_5:
    v12 = *(v0 + 8);

    return v12();
  }

  v13 = *(v0 + 168) + 1;
  *(v0 + 168) = v13;
  v14 = *(v0 + 152);
  if (v13 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_100007878(v14 + 40 * v13 + 32, v0 + 16);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    *(v0 + 176) = v15;
    *(v0 + 184) = v16;
    sub_1000078DC((v0 + 16), v15);
    v17 = *(v16 + 24);
    *(v0 + 192) = swift_getAssociatedTypeWitness();
    v18 = type metadata accessor for Optional();
    *(v0 + 200) = v18;
    v19 = *(v18 - 8);
    *(v0 + 208) = v19;
    v20 = *(v19 + 64) + 15;
    v21 = swift_task_alloc();
    *(v0 + 216) = v21;
    v24 = (v17 + *v17);
    v22 = v17[1];
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_100091664;

    return v24(v21, v15, v16);
  }

  return result;
}

uint64_t sub_100091AF4()
{
  v35 = v0;
  v1 = v0[27];

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_10017F350);
  sub_100007878((v0 + 2), (v0 + 12));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    sub_1000078DC(v0 + 12, v0[15]);
    swift_getDynamicType();
    v11 = _typeName(_:qualified:)();
    v13 = v12;
    sub_100007920(v0 + 12);
    v14 = sub_10003E81C(v11, v13, &v34);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error retrieving shareable content from %s: %@", v8, 0x16u);
    sub_1000159AC(v9, &qword_100172EB0, &qword_100119410);

    sub_100007920(v10);
  }

  else
  {
    v16 = v0[29];

    sub_100007920(v0 + 12);
  }

  v17 = v0[20];
  v18 = v0[21] + 1;
  result = sub_100007920(v0 + 2);
  if (v18 == v17)
  {
    v20 = v0[17];
    *(v20 + 32) = 0;
    *v20 = 0u;
    *(v20 + 16) = 0u;
    v21 = v0[1];

    return v21();
  }

  else
  {
    v22 = v0[21] + 1;
    v0[21] = v22;
    v23 = v0[19];
    if (v22 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_100007878(v23 + 40 * v22 + 32, (v0 + 2));
      v24 = v0[5];
      v25 = v0[6];
      v0[22] = v24;
      v0[23] = v25;
      sub_1000078DC(v0 + 2, v24);
      v26 = *(v25 + 24);
      v0[24] = swift_getAssociatedTypeWitness();
      v27 = type metadata accessor for Optional();
      v0[25] = v27;
      v28 = *(v27 - 8);
      v0[26] = v28;
      v29 = *(v28 + 64) + 15;
      v30 = swift_task_alloc();
      v0[27] = v30;
      v33 = (v26 + *v26);
      v31 = v26[1];
      v32 = swift_task_alloc();
      v0[28] = v32;
      *v32 = v0;
      v32[1] = sub_100091664;

      return v33(v30, v24, v25);
    }
  }

  return result;
}

uint64_t sub_100091F48(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for DeviceLockState();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[29] = v7;
  *v7 = v3;
  v7[1] = sub_10009204C;

  return sub_100091400((v3 + 7));
}

uint64_t sub_10009204C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100092580;
  }

  else
  {
    v3 = sub_100092160;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100092160()
{
  v36 = v0;
  if (*(v0 + 80))
  {
    v2 = *(v0 + 216);
    v1 = *(v0 + 224);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 192);
    sub_1000590D8((v0 + 56), v0 + 16);
    v6 = *(v5 + 40);
    dispatch thunk of SFLockStateMonitor.lockState.getter();
    (*(v4 + 104))(v2, enum case for DeviceLockState.unlocked(_:), v3);
    LOBYTE(v6) = static DeviceLockState.== infix(_:_:)();
    v7 = *(v4 + 8);
    v7(v2, v3);
    v7(v1, v3);
    if (v6)
    {
      v8 = *(v0 + 240);
      v9 = *(*(v0 + 192) + 24);
      v10 = swift_task_alloc();
      *(v10 + 16) = v0 + 16;

      v11 = sub_1000911D0(sub_100093A2C, v10, v9);

      if (*(v11 + 16))
      {
        v13 = *(v0 + 176);
        v12 = *(v0 + 184);
        sub_100007878(v0 + 16, v13);
        v14 = sub_1000925EC(v12, v11);
        sub_100007920((v0 + 16));
        *(v13 + 40) = v14;
      }

      else
      {

        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100007D20(v21, qword_10017F350);
        sub_100007878(v0 + 16, v0 + 96);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v35 = v25;
          *v24 = 136315138;
          sub_100007878(v0 + 96, v0 + 136);
          sub_1000077C8(&qword_100172E68, &qword_100118B30);
          v26 = String.init<A>(reflecting:)();
          v28 = v27;
          sub_100007920((v0 + 96));
          v29 = sub_10003E81C(v26, v28, &v35);

          *(v24 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v22, v23, "Could not find any supported actions for shareable content: %s", v24, 0xCu);
          sub_100007920(v25);
        }

        else
        {

          sub_100007920((v0 + 96));
        }

        sub_100007920((v0 + 16));
        v30 = *(v0 + 176);
        v30[1] = 0u;
        v30[2] = 0u;
        *v30 = 0u;
      }
    }

    else
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100007D20(v16, qword_10017F350);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Not returning shareable content because device is locked", v19, 2u);
      }

      v20 = *(v0 + 176);

      sub_100007920((v0 + 16));
      v20[1] = 0u;
      v20[2] = 0u;
      *v20 = 0u;
    }
  }

  else
  {
    v15 = *(v0 + 176);
    sub_1000159AC(v0 + 56, &qword_100175FE8, &unk_10011DFF0);
    *v15 = 0u;
    v15[1] = 0u;
    v15[2] = 0u;
  }

  v32 = *(v0 + 216);
  v31 = *(v0 + 224);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100092580()
{
  v2 = v0[27];
  v1 = v0[28];

  v3 = v0[1];
  v4 = v0[30];

  return v3();
}

unint64_t sub_1000925EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return _swiftEmptyArrayStorage;
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v26 = _swiftEmptyArrayStorage;
  sub_10000E4B4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v22[1] = a2;
  v8 = a2 + 32;
  do
  {
    result = sub_100007878(v8, &v23);
    v17 = v5[2];
    if (v17 < v3)
    {
      v26 = v5;
      v9 = v5[3];
      if (v17 >= v9 >> 1)
      {
        sub_10000E4B4((v9 > 1), v17 + 1, 1);
      }

      v10 = v24;
      v11 = v25;
      v12 = sub_100058CFC(&v23, v24);
      v13 = *(*(v10 - 8) + 64);
      __chkstk_darwin(v12);
      v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_100092C1C(v17, v15, &v26, v10, v11);
      sub_100007920(&v23);
      v5 = v26;
    }

    else
    {
      if (v7 >= v17)
      {
        __break(1u);
        goto LABEL_27;
      }

      v18 = &v5[5 * v7];
      sub_100007920(v18 + 4);
      sub_1000590D8(&v23, (v18 + 4));
      if ((v7 + 1) < v3)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v8 += 40;
    --v6;
  }

  while (v6);

  if (!v7)
  {
    return v5;
  }

  v19 = v5[2];
  *&v23 = _swiftEmptyArrayStorage;
  result = sub_10000E4B4(0, v19, 0);
  if (v19 >= v7)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v20 = v5[2];
    if (v20 >= v7 && v20 >= v19)
    {

      sub_100092908(v21, (v5 + 4), v7, (2 * v19) | 1);
      sub_100092908(v5, (v5 + 4), 0, (2 * v7) | 1);
      return v23;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10009288C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];
  sub_10002534C(v0[6]);

  return swift_deallocClassInstance();
}

void *sub_100092908(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v11 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (result)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  result = sub_10000E4B4(result, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  v14 = v12 - *(v7 + 16);
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v15 = a3;
      if (v14)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_41:
        *v4 = v7;
        return result;
      }

LABEL_21:
      v19 = *(v7 + 16);
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_100093A94(&v29, &v27);
      while (v28)
      {
        sub_1000159AC(&v27, &qword_100175FF0, qword_10011E008);
        v21 = *(v7 + 24);
        if (v19 + 1 > (v21 >> 1))
        {
          sub_10000E4B4((v21 > 1), v19 + 1, 1);
        }

        v7 = *v4;
        v22 = *(*v4 + 24);
        sub_100093A94(&v29, &v25);
        if (v26)
        {
          if (v19 <= (v22 >> 1))
          {
            v20 = v22 >> 1;
          }

          else
          {
            v20 = v19;
          }

          v23 = v7 + 40 * v19 + 32;
          do
          {
            sub_1000590D8(&v25, &v27);
            if (v20 == v19)
            {
              sub_100007920(&v27);
              v19 = v20;
              goto LABEL_24;
            }

            sub_1000159AC(&v29, &qword_100175FF0, qword_10011E008);
            result = sub_1000590D8(&v27, v23);
            if (v15 == v5)
            {
              v31 = 0;
              v15 = v5;
              v29 = 0u;
              v30 = 0u;
            }

            else
            {
              if (v15 < a3 || v15 >= v5)
              {
                __break(1u);
                goto LABEL_43;
              }

              sub_100007878(a2 + 40 * v15++, &v29);
            }

            sub_100093A94(&v29, &v25);
            v23 += 40;
            ++v19;
          }

          while (v26);
        }

        sub_1000159AC(&v25, &qword_100175FF0, qword_10011E008);
        v20 = v19;
LABEL_24:
        *(v7 + 16) = v20;
        sub_100093A94(&v29, &v27);
      }

      sub_1000159AC(&v29, &qword_100175FF0, qword_10011E008);
      swift_unknownObjectRelease();
      result = sub_1000159AC(&v27, &qword_100175FF0, qword_10011E008);
      goto LABEL_41;
    }

    goto LABEL_45;
  }

  if (v14 < v6)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_1000077C8(&unk_1001778F0, &qword_10011E000);
  result = swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_20:
    v15 = v5;
    if (v6 != v14)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_20;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100092C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100058F84(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000590D8(&v12, v10 + 40 * a1 + 32);
}

void *sub_100092CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SendOverAirDropAction(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFLockStateMonitor();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = SFLockStateMonitor.init()();
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = v13;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100007D20(v14, qword_10017F350);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = a1;
    *v18 = a1;

    _os_log_impl(&_mh_execute_header, v15, v16, "ShareableContentResolver: Intializing with airDropClient %@", v17, 0xCu);
    sub_1000159AC(v18, &qword_100172EB0, &qword_100119410);
  }

  v3[4] = a2;
  sub_1000077C8(&qword_100175FD0, &qword_10011DFD8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10011DF30;
  v20 = objc_opt_self();

  v21 = [v20 sharedInstance];
  v22 = [v21 conversationManager];

  *(v19 + 56) = &type metadata for ActiveSharePlaySessionProvider;
  *(v19 + 64) = &off_100177FC8;
  *(v19 + 32) = v22;
  v23 = [objc_allocWithZone(SWShareableContentExtractor) init];
  *(v19 + 96) = sub_100093B04();
  *(v19 + 104) = &off_100177D00;
  *(v19 + 72) = v23;
  *(v19 + 136) = &type metadata for UserActivityShareableContentProvider;
  *(v19 + 144) = &off_100177FA8;
  *(v19 + 176) = &type metadata for FrontmostAppShareableContentProvider;
  *(v19 + 184) = &off_100177F88;
  v3[2] = v19;
  LocalizedStringResource.init(stringLiteral:)();
  *&v9[*(v6 + 20)] = a1;
  sub_1000077C8(&unk_100172A60, &unk_1001187C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10011DF40;
  started = type metadata accessor for StartSharePlayAction(0);
  *(v24 + 56) = started;
  *(v24 + 64) = sub_100093BB8(&qword_100175FF8, type metadata accessor for StartSharePlayAction);
  v26 = sub_100058F84((v24 + 32));

  LocalizedStringResource.init(stringLiteral:)();
  *(v26 + *(started + 20)) = a2;
  v27 = type metadata accessor for StartNearbySharePlayAction(0);
  *(v24 + 96) = v27;
  *(v24 + 104) = sub_100093BB8(&qword_100176000, type metadata accessor for StartNearbySharePlayAction);
  v28 = sub_100058F84((v24 + 72));
  LocalizedStringResource.init(stringLiteral:)();
  sub_100093B50(v9, v28 + *(v27 + 20), type metadata accessor for SendOverAirDropAction);
  active = type metadata accessor for AddToActiveSharePlaySessionAction(0);
  *(v24 + 136) = active;
  *(v24 + 144) = sub_100093BB8(&qword_100176008, type metadata accessor for AddToActiveSharePlaySessionAction);
  v30 = sub_100058F84((v24 + 112));

  LocalizedStringResource.init(stringLiteral:)();
  *(v30 + *(active + 20)) = a2;
  v31 = *(active + 24);
  v32 = [v20 sharedInstance];
  v33 = [v32 conversationManager];

  *(v30 + v31) = v33;
  *(v24 + 176) = v6;
  *(v24 + 184) = sub_100093BB8(&unk_100176010, type metadata accessor for SendOverAirDropAction);
  v34 = sub_100058F84((v24 + 152));
  sub_100093B50(v9, v34, type metadata accessor for SendOverAirDropAction);
  v35 = type metadata accessor for StartCollaborationAction(0);
  *(v24 + 216) = v35;
  *(v24 + 224) = sub_100093BB8(&unk_100177900, type metadata accessor for StartCollaborationAction);
  v36 = sub_100058F84((v24 + 192));

  LocalizedStringResource.init(stringLiteral:)();
  *(v36 + *(v35 + 20)) = a2;
  v37 = *(v35 + 24);
  *(v36 + v37) = [objc_allocWithZone(SWShareableContentExtractor) init];
  sub_100093C00(v9, type metadata accessor for SendOverAirDropAction);
  v3[3] = v24;
  return v3;
}

void *sub_1000932A4(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v61 = type metadata accessor for ProximityHandoffContentAction(0);
  v4 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100175FC0, &unk_10011DFC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v57 = (&v56 - v10);
  v11 = sub_1000077C8(&qword_100175FC8, &unk_100120860);
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v60 = &v56 - v14;
  v15 = sub_1000077C8(&qword_100177E80, &qword_10011DFD0);
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = type metadata accessor for SFLockStateMonitor();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = SFLockStateMonitor.init()();
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = v22;
  v23 = v2;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100007D20(v24, qword_10017F350);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v65 = v8;
    v29 = v28;
    *v27 = 138412290;
    *(v27 + 4) = a1;
    *v28 = a1;

    _os_log_impl(&_mh_execute_header, v25, v26, "ShareableContentResolver: Intializing with proximityHandoffClient %@", v27, 0xCu);
    sub_1000159AC(v29, &qword_100172EB0, &qword_100119410);
    v8 = v65;
  }

  v65 = a1;

  v30 = v23;
  v23[4] = v64;
  v31 = type metadata accessor for ProximityHandoffInteractionContentProvider(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();

  swift_defaultActor_initialize();
  v35 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_stream;
  v64 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_continuation;
  v36 = v57;
  *v57 = 1;
  (*(v8 + 104))(v36, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v7);
  type metadata accessor for SFProximityHandoff.Content();
  v37 = v18;
  v38 = v60;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v8 + 8))(v36, v7);
  (*(v58 + 32))(v34 + v35, v37, v59);
  (*(v63 + 32))(v34 + v64, v38, v62);
  *(v34 + OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider____lazy_storage___shareableContentTask) = 0;
  v39 = v30[6];
  v40 = v30[7];
  v30[6] = sub_100093A28;
  v30[7] = v34;

  sub_10002534C(v39);
  sub_1000077C8(&qword_100175FD0, &qword_10011DFD8);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1001186F0;
  *(v41 + 56) = v31;
  *(v41 + 64) = &off_100177E38;
  *(v41 + 32) = v34;
  v62 = v30;
  v30[2] = v41;
  sub_1000077C8(&qword_100175FD8, &unk_10011DFE0);
  v42 = type metadata accessor for SFProximityHandoff.Content.Action();
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v59 = swift_allocObject();
  v46 = v59 + v45;
  v47 = *(v43 + 104);
  v47(v46, enum case for SFProximityHandoff.Content.Action.open(_:), v42);
  v47(v46 + v44, enum case for SFProximityHandoff.Content.Action.send(_:), v42);
  v47(v46 + 2 * v44, enum case for SFProximityHandoff.Content.Action.share(_:), v42);
  v63 = v44;
  v64 = v42;
  v47(v46 + 3 * v44, enum case for SFProximityHandoff.Content.Action.transfer(_:), v42);
  v69 = _swiftEmptyArrayStorage;
  v60 = v34;

  v48 = 4;
  sub_10000E4B4(0, 4, 0);
  v49 = v69;
  v50 = *(v43 + 16);
  v58 = v46;
  v51 = v61;
  do
  {
    v50(&v6[*(v51 + 20)], v46, v64);
    *v6 = v65;
    v69 = v49;
    v53 = v49[2];
    v52 = v49[3];

    if (v53 >= v52 >> 1)
    {
      sub_10000E4B4((v52 > 1), v53 + 1, 1);
      v49 = v69;
    }

    v67 = v51;
    v68 = sub_100093BB8(&qword_100175FE0, type metadata accessor for ProximityHandoffContentAction);
    v54 = sub_100058F84(&v66);
    sub_100093B50(v6, v54, type metadata accessor for ProximityHandoffContentAction);
    v49[2] = v53 + 1;
    sub_1000590D8(&v66, &v49[5 * v53 + 4]);
    sub_100093C00(v6, type metadata accessor for ProximityHandoffContentAction);
    v46 += v63;
    --v48;
  }

  while (v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  result = v62;
  v62[3] = v49;
  return result;
}

uint64_t sub_100093A2C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_1000078DC(a1, v3);
  return (*(v4 + 32))(v2, v3, v4) & 1;
}

uint64_t sub_100093A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100175FF0, qword_10011E008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100093B04()
{
  result = qword_100172B10;
  if (!qword_100172B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100172B10);
  }

  return result;
}

uint64_t sub_100093B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100093BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100093C00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100093DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_contactDetails];
  v8 = *(a1 + 80);
  *(v7 + 4) = *(a1 + 64);
  *(v7 + 5) = v8;
  *(v7 + 24) = *(a1 + 96);
  v9 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v9;
  v10 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v10;
  v11 = &v3[OBJC_IVAR____TtC9AirDropUI28ContactDetailsViewController_dismissHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  v12 = objc_allocWithZone(CNContactStore);

  sub_100070BB4(a1, v30);
  v13 = [v12 init];
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = String._bridgeToObjectiveC()();
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100118700;
  *(v17 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  sub_1000077C8(&qword_1001751C8, qword_10011E190);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v13 contactForIdentifier:v16 keysToFetch:isa];

  if (v19)
  {
    sub_100094710(a1);
    type metadata accessor for CNSecureContactViewController();
    v20 = [swift_getObjCClassFromMetadata() viewControllerForContact:v19];
    [v20 setDisplayMode:2];
    [v20 setAllowsEditing:1];
    [v20 setActions:260];
    v29.receiver = v3;
    v29.super_class = type metadata accessor for ContactDetailsViewController();
    v21 = v20;
    v22 = objc_msgSendSuper2(&v29, "initWithRootViewController:", v21);
    [v21 setDelegate:v22];

    sub_1000165C4(0, &qword_1001760F0, UIAction_ptr);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a2;
    v24[4] = a3;

    v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v26 = [v21 navigationItem];

    sub_1000165C4(0, &qword_1001760F8, UIBarButtonItem_ptr);
    v27 = v25;
    v31.value.super.super.isa = v25;
    v31.is_nil = 0;
    v28 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v31, v32).super.super.isa;
    [v26 setLeftBarButtonItem:v28];
  }

  else
  {
    __break(1u);
  }
}

void sub_100094140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_100094314(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_10009440C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100094438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100094480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000944F0()
{
  result = qword_1001760E0;
  if (!qword_1001760E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001760E0);
  }

  return result;
}

void sub_100094544()
{
  v1 = *(v0 + 80);
  v7[4] = *(v0 + 64);
  v7[5] = v1;
  v8 = *(v0 + 96);
  v2 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v2;
  v3 = *(v0 + 48);
  v7[2] = *(v0 + 32);
  v7[3] = v3;
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  objc_allocWithZone(type metadata accessor for ContactDetailsViewController());
  sub_100070BB4(v7, v6);

  sub_100093DC4(v7, v4, v5);
}

uint64_t sub_1000945CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000946BC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100094630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000946BC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100094694()
{
  sub_1000946BC();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000946BC()
{
  result = qword_1001760E8;
  if (!qword_1001760E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001760E8);
  }

  return result;
}

uint64_t sub_100094764()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009479C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094830@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100094860(uint64_t a1)
{
  v2 = sub_1000A5548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009489C(uint64_t a1)
{
  v2 = sub_1000A5548();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100094900(void *a1)
{
  v2 = sub_1000077C8(&qword_100176348, &qword_10011E3B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000078DC(a1, a1[3]);
  sub_1000A5548();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100094A80(void *a1)
{
  v3 = sub_1000077C8(&qword_100176378, &qword_10011E3C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000078DC(a1, a1[3]);
  sub_1000A559C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  sub_1000A53A0(&qword_100176380, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for NearbySharingInteractionAttributes(0) + 20);
    v11[14] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
    sub_1000A53A0(&qword_100176388, &type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100094C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v29 = type metadata accessor for UUID();
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000077C8(&qword_100176358, &qword_10011E3C0);
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v30);
  v12 = &v25 - v11;
  v13 = type metadata accessor for NearbySharingInteractionAttributes(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 28);
  v19 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v20 = *(*(v19 - 8) + 56);
  v32 = v18;
  v20(&v16[v18], 1, 1, v19);
  v21 = a1[4];
  sub_1000078DC(a1, a1[3]);
  sub_1000A559C();
  v22 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_100007920(a1);
    return sub_1000159AC(&v16[v32], &qword_1001780C0, &qword_100120BD0);
  }

  else
  {
    v23 = v27;
    v34 = 0;
    sub_1000A53A0(&qword_100176368, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 32))(v16, v9, v29);
    v33 = 1;
    sub_1000A53A0(&qword_100176370, &type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v28 + 8))(v12, v30);
    sub_1000478DC(v6, &v16[v32], &qword_1001780C0, &qword_100120BD0);
    sub_1000AB044(v16, v26, type metadata accessor for NearbySharingInteractionAttributes);
    sub_100007920(a1);
    return sub_1000AB0AC(v16, type metadata accessor for NearbySharingInteractionAttributes);
  }
}

uint64_t sub_1000950D0()
{
  if (*v0)
  {
    result = 0x546572756C696166;
  }

  else
  {
    result = 0x7463617265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_100095120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463617265746E69 && a2 == 0xED000044496E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x546572756C696166 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100095208(uint64_t a1)
{
  v2 = sub_1000A559C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100095244(uint64_t a1)
{
  v2 = sub_1000A559C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1000952B0()
{
  result = [objc_allocWithZone(type metadata accessor for NearbySharingInteractionCoordinator(0)) init];
  qword_10017F2E8 = result;
  return result;
}

uint64_t sub_1000952E4()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask))
  {

    Task.cancel()();
  }

  v2 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contentResolver;
  v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contentResolver);
  *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contentResolver) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient);
  if (v5)
  {
    v6 = qword_100172218;
    v7 = *(v1 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient);

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007D20(v8, qword_10017F350);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v5;
      *v12 = v5;

      _os_log_impl(&_mh_execute_header, v9, v10, "Configuring airDropClient: %@", v11, 0xCu);
      sub_1000159AC(v12, &qword_100172EB0, &qword_100119410);
    }

    v13 = *(v1 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contactDetailsProvider);
    type metadata accessor for ShareableContentResolver();
    swift_allocObject();

    v14 = sub_100092CB4(v5, v13);

    v15 = *(v1 + v2);
    *(v1 + v2) = v14;

    sub_100097AD0(v5, v14);
  }

  return result;
}

void sub_100095544()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask))
  {

    Task.cancel()();
  }

  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient);
  if (v2)
  {
    v3 = qword_100172218;
    v4 = *(v1 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient);

    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100007D20(v5, qword_10017F350);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v2;
      *v9 = v2;

      _os_log_impl(&_mh_execute_header, v6, v7, "Configuring proximityHandoffClient: %@", v8, 0xCu);
      sub_1000159AC(v9, &qword_100172EB0, &qword_100119410);
    }

    sub_100098850(v2);
  }
}

void sub_100095714(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v73);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v59 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v63 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000077C8(&unk_100176410, &qword_10011E528);
  v18 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v20 = &v59 - v19;
  v21 = type metadata accessor for NearbySharingInteractionAttributes(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v27);
  v29 = &v59 - v28;
  __chkstk_darwin(v30);
  v33 = &v59 - v32;
  if (a1)
  {
    v62 = v31;
    v65 = v20;
    v66 = v11;
    v60 = v3;
    v61 = v2;
    Activity.attributes.getter();
    v34 = v15[2];
    v34(v33, v24, v14);
    sub_1000AB0AC(v24, type metadata accessor for NearbySharingInteractionAttributes);
    v64 = v15;
    v35 = v15[7];
    v36 = 1;
    v35(v33, 0, 1, v14);
    if (*&v75[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity])
    {
      v37 = *&v75[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity];

      Activity.attributes.getter();

      v34(v29, v24, v14);
      sub_1000AB0AC(v24, type metadata accessor for NearbySharingInteractionAttributes);
      v36 = 0;
    }

    v35(v29, v36, 1, v14);
    v38 = *(v74 + 48);
    v39 = v65;
    sub_100007BA4(v33, v65, &qword_100172F08, &unk_10011E530);
    sub_100007BA4(v29, v39 + v38, &qword_100172F08, &unk_10011E530);
    v40 = v64;
    v41 = v64[6];
    if (v41(v39, 1, v14) == 1)
    {
      sub_1000159AC(v29, &qword_100172F08, &unk_10011E530);
      sub_1000159AC(v33, &qword_100172F08, &unk_10011E530);
      v42 = v41(v39 + v38, 1, v14);
      v43 = v66;
      if (v42 == 1)
      {
        sub_1000159AC(v39, &qword_100172F08, &unk_10011E530);
        return;
      }
    }

    else
    {
      v44 = v62;
      sub_100007BA4(v39, v62, &qword_100172F08, &unk_10011E530);
      v45 = v41(v39 + v38, 1, v14);
      v43 = v66;
      if (v45 != 1)
      {
        v56 = v63;
        (v40[4])(v63, v39 + v38, v14);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = v40[1];
        v58(v56, v14);
        sub_1000159AC(v29, &qword_100172F08, &unk_10011E530);
        sub_1000159AC(v33, &qword_100172F08, &unk_10011E530);
        v58(v62, v14);
        sub_1000159AC(v39, &qword_100172F08, &unk_10011E530);
        v46 = v75;
        if (v57)
        {
          return;
        }

        goto LABEL_10;
      }

      sub_1000159AC(v29, &qword_100172F08, &unk_10011E530);
      sub_1000159AC(v33, &qword_100172F08, &unk_10011E530);
      (v40[1])(v44, v14);
    }

    sub_1000159AC(v39, &unk_100176410, &qword_10011E528);
    v46 = v75;
LABEL_10:
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v47 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v48 = v67;
    + infix(_:_:)();
    v49 = v69;
    v75 = *(v68 + 8);
    (v75)(v43, v69);
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    aBlock[4] = sub_1000AAA60;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100106B40;
    aBlock[3] = &unk_10015FCD0;
    v51 = _Block_copy(aBlock);
    v52 = v46;

    v53 = v70;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000A53A0(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000077C8(&unk_100176420, &unk_10011D928);
    sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928);
    v54 = v72;
    v55 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v51);

    (*(v60 + 8))(v54, v55);
    (*(v71 + 8))(v53, v73);
    (v75)(v48, v49);
  }
}

id sub_100096044()
{
  v1 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener;
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener);
  }

  else
  {
    v4 = objc_allocWithZone(IMSPICollaborationMessageListener);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithListenerID:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1000960EC()
{
  v1 = sub_1000077C8(&qword_100176560, &qword_10011E788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - v4;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contentResolver] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity] = 0;
  v6 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator__airDropNearbySharingInteractionViewModelsByID;
  v28[0] = sub_1000A8654(_swiftEmptyArrayStorage, &qword_1001763C8, &unk_10011E4D0, &qword_100173CE8, &unk_10011A380);
  sub_1000077C8(&qword_1001761B0, &unk_10011E1F0);
  Published.init(initialValue:)();
  v7 = *(v2 + 32);
  v7(&v0[v6], v5, v1);
  v8 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator__proximityHandoffNearbySharingInteractionViewModelsByID;
  v28[0] = sub_1000A8654(_swiftEmptyArrayStorage, &qword_1001763C8, &unk_10011E4D0, &qword_100173CE8, &unk_10011A380);
  Published.init(initialValue:)();
  v7(&v0[v8], v5, v1);
  v9 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
  *&v0[v9] = sub_1000A8654(_swiftEmptyArrayStorage, &qword_1001764D8, &qword_10011E5E8, &qword_100173D00, &unk_10011E7B0);
  v10 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;
  *&v0[v10] = sub_1000A8654(_swiftEmptyArrayStorage, &unk_100176580, &unk_10011E7A0, &qword_100173D08, &qword_10011A390);
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask] = 0;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask] = 0;
  v11 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
  *&v0[v11] = sub_1000A8834(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener] = 0;
  v12 = [objc_allocWithZone(CNContactStore) init];
  v28[3] = sub_1000165C4(0, &qword_100176568, CNContactStore_ptr);
  v28[4] = &off_10015F278;
  v28[0] = v12;
  type metadata accessor for ContactDetailsProvider();
  v13 = swift_allocObject();
  sub_100007878(v28, v13 + 16);
  v14 = [objc_opt_self() sharedManager];
  sub_100007920(v28);
  *(v13 + 56) = v14;
  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contactDetailsProvider] = v13;
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 conversationManager];

  *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_conversationManager] = v16;
  v17 = type metadata accessor for NearbySharingInteractionCoordinator(0);
  v27.receiver = v0;
  v27.super_class = v17;
  v18 = objc_msgSendSuper2(&v27, "init");
  v19 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_conversationManager;
  v20 = *&v18[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_conversationManager];
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v21 = v18;
  v22 = v20;
  v23 = static OS_dispatch_queue.main.getter();
  [v22 addDelegate:v21 queue:v23];

  [*&v18[v19] registerWithCompletionHandler:0];
  v24 = sub_100096044();
  [v24 setDelegate:v21];

  [*&v21[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator____lazy_storage___collaborationMessageListener] startListening];
  return v21;
}

id sub_100096548()
{
  if (*&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask])
  {
    v1 = *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask];

    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask])
  {
    v2 = *&v0[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask];

    Task.cancel()();
  }

  v3 = sub_100096044();
  [v3 stopListening];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for NearbySharingInteractionCoordinator(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1000967D8()
{
  sub_1000A38EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000968A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009DBB0(a1, a2);
  if (v13)
  {
    v28 = v13;
    if (sub_100054568() == 1)
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100007D20(v14, qword_10017F350);
      v15 = v28;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v18 = 136315138;
        (*(v9 + 16))(v12, v15 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id, v8);
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        (*(v9 + 8))(v12, v8);
        v22 = sub_10003E81C(v19, v21, &v29);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "Ending nearby sharing interaction with ID: %s due to ActivityKit scene disconnecting", v18, 0xCu);
        sub_100007920(v28);
      }

      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      type metadata accessor for MainActor();
      v24 = v15;
      v25 = static MainActor.shared.getter();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = &protocol witness table for MainActor;
      v26[4] = v24;
      sub_1000F9860(0, 0, v7, &unk_10011E780, v26);
    }

    else
    {
      v27 = v28;
    }
  }
}

uint64_t sub_100096C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AC24C, v6, v5);
}

void sub_100096D04(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_1000077C8(&qword_1001763D8, &unk_10011E4E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  v39 = sub_1000077C8(&qword_100173F38, &qword_10011E770);
  v9 = *(*(v39 - 8) + 64);
  v10 = __chkstk_darwin(v39);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v42 = &v38 - v13;
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v1;
  static Published.subscript.getter();

  sub_1000F94B4(v43, v8);

  v16 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v8, 1, v16) == 1)
  {
    sub_1000159AC(v8, &qword_1001763D8, &unk_10011E4E0);
    v18 = type metadata accessor for SFNearbySharingInteraction();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  else
  {
    v19 = *&v8[*(v16 + 48)];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = type metadata accessor for SFNearbySharingInteraction();
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v22(v15, 0, 1, v20);
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 8))(v8, v23);
    if ((*(v21 + 48))(v15, 1, v20) != 1)
    {
      v25 = v41;
      (*(v21 + 32))(v41, v15, v20);
      v22(v25, 0, 1, v20);
      v28 = v42;
      goto LABEL_10;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000F94B4(v43, v6);

  if (v17(v6, 1, v16) == 1)
  {
    sub_1000159AC(v6, &qword_1001763D8, &unk_10011E4E0);
    v24 = type metadata accessor for SFNearbySharingInteraction();
    v25 = v41;
    (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
  }

  else
  {
    v26 = *&v6[*(v16 + 48)];
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v41;
    static Published.subscript.getter();

    v24 = type metadata accessor for SFNearbySharingInteraction();
    (*(*(v24 - 8) + 56))(v25, 0, 1, v24);
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 8))(v6, v27);
  }

  v28 = v42;
  type metadata accessor for SFNearbySharingInteraction();
  if ((*(*(v24 - 8) + 48))(v15, 1, v24) != 1)
  {
    sub_1000159AC(v15, &qword_100173F38, &qword_10011E770);
  }

LABEL_10:
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100007D20(v29, qword_10017F350);
  sub_100007BA4(v25, v28, &qword_100173F38, &qword_10011E770);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    sub_100007BA4(v28, v38, &qword_100173F38, &qword_10011E770);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_1000159AC(v28, &qword_100173F38, &qword_10011E770);
    v37 = sub_10003E81C(v34, v36, &v43);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "currentNearbySharingInteraction: %s", v32, 0xCu);
    sub_100007920(v33);
  }

  else
  {

    sub_1000159AC(v28, &qword_100173F38, &qword_10011E770);
  }
}

void sub_100097458(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_1000077C8(&unk_100176550, &qword_10011E720);
  v1 = *(*(v39 - 8) + 64);
  v2 = __chkstk_darwin(v39);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v41 = &v37 - v4;
  v5 = type metadata accessor for SFNearbySharingInteraction.Kind();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFNearbySharingInteraction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000077C8(&qword_1001763D8, &unk_10011E4E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v37 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000F94B4(v42, v18);

  v19 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_1000159AC(v18, &qword_1001763D8, &unk_10011E4E0);
    v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v21 = v40;
    (*(*(v20 - 8) + 56))(v40, 1, 1, v20);
    v22 = v41;
  }

  else
  {
    v23 = *&v18[*(v19 + 48)];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    SFNearbySharingInteraction.kind.getter();
    (*(v11 + 8))(v14, v10);
    if ((*(v6 + 88))(v9, v5) == enum case for SFNearbySharingInteraction.Kind.airDrop(_:))
    {
      (*(v6 + 96))(v9, v5);
      v24 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
      v25 = *(v24 - 8);
      v21 = v40;
      (*(v25 + 32))(v40, v9, v24);
      (*(v25 + 56))(v21, 0, 1, v24);
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v26 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
      v21 = v40;
      (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
    }

    v22 = v41;
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 8))(v18, v27);
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100007D20(v28, qword_10017F350);
  sub_100007BA4(v21, v22, &unk_100176550, &qword_10011E720);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = v32;
    *v31 = 136315138;
    sub_100007BA4(v22, v38, &unk_100176550, &qword_10011E720);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    sub_1000159AC(v22, &unk_100176550, &qword_10011E720);
    v36 = sub_10003E81C(v33, v35, &v42);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "currentAirDropNearbySharingInteraction: %s", v31, 0xCu);
    sub_100007920(v32);
  }

  else
  {

    sub_1000159AC(v22, &unk_100176550, &qword_10011E720);
  }
}

uint64_t sub_100097AD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a1;
  v13[5] = v11;
  v13[6] = a2;

  v14 = sub_1000F9860(0, 0, v9, &unk_10011E708, v13);
  v15 = *(v3 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask);
  *(v3 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateAirDropNearbySharingInteractionsTask) = v14;
}

uint64_t sub_100097C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1000077C8(&qword_100176538, &qword_10011E710);
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v6[14] = v10;
  v6[15] = type metadata accessor for MainActor();
  v6[16] = static MainActor.shared.getter();
  v11 = async function pointer to SFAirDropClient.nearbySharingInteractions()[1];
  v12 = swift_task_alloc();
  v6[17] = v12;
  *v12 = v6;
  v12[1] = sub_100097D98;

  return SFAirDropClient.nearbySharingInteractions()(v10);
}

uint64_t sub_100097D98()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v11 = *v1;
  v3[18] = v2;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_100098674;
  }

  else
  {
    v9 = sub_100097EF8;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100097EF8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v0[6] = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[15];
  v0[21] = static MainActor.shared.getter();
  v5 = sub_1000077C8(&qword_100176540, &qword_10011E718);
  v6 = sub_1000199C8(&qword_100176548, &qword_100176540, &qword_10011E718);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_100098028;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 7, v5, v6);
}

uint64_t sub_100098028()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000983D4;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000981C0;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000981C0()
{
  v1 = v0[21];

  v0[24] = v0[7];
  v2 = v0[19];
  v3 = v0[20];

  return _swift_task_switch(sub_10009822C, v2, v3);
}

uint64_t sub_10009822C()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1000996A8(v1, *(v0 + 72), *(v0 + 88));
    }

    v5 = *(v0 + 120);
    *(v0 + 168) = static MainActor.shared.getter();
    v6 = sub_1000077C8(&qword_100176540, &qword_10011E718);
    v7 = sub_1000199C8(&qword_100176548, &qword_100176540, &qword_10011E718);
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_100098028;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 56, v6, v7);
  }

  else
  {
    v10 = *(v0 + 128);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 96);

    v14 = *(v0 + 48);

    (*(v12 + 8))(v11, v13);
    v15 = *(v0 + 112);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1000983D4()
{
  v1 = v0[21];
  v0[8] = v0[23];
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_willThrowTypedImpl();

  v2 = v0[19];
  v3 = v0[20];

  return _swift_task_switch(sub_100098470, v2, v3);
}

uint64_t sub_100098470()
{
  v19 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = v0[6];

  (*(v3 + 8))(v2, v4);
  v6 = v0[23];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100007D20(v7, qword_10017F350);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v0[5] = v6;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v12 = String.init<A>(reflecting:)();
    v14 = sub_10003E81C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error registering for updates to nearby sharing interactions: %s", v10, 0xCu);
    sub_100007920(v11);
  }

  else
  {
  }

  v15 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100098674()
{
  v15 = v0;
  v1 = v0[16];

  v2 = v0[18];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_10017F350);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[5] = v2;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10003E81C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error registering for updates to nearby sharing interactions: %s", v6, 0xCu);
    sub_100007920(v7);
  }

  else
  {
  }

  v11 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100098850(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  v11[5] = v9;

  v12 = sub_1000F9860(0, 0, v7, &unk_10011E6E0, v11);
  v13 = *(v2 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask);
  *(v2 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_updateProximityHandoffInteractionsTask) = v12;
}

uint64_t sub_1000989CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_1000077C8(&unk_100176518, &unk_10011E6E8);
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[16] = v9;
  v5[17] = type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v10 = *(&async function pointer to dispatch thunk of SFProximityHandoffClient.proximityHandoffInteractions() + 1);
  v13 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.proximityHandoffInteractions() + async function pointer to dispatch thunk of SFProximityHandoffClient.proximityHandoffInteractions());
  v11 = swift_task_alloc();
  v5[19] = v11;
  *v11 = v5;
  v11[1] = sub_100098B0C;

  return v13(v9);
}

uint64_t sub_100098B0C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v11 = *v1;
  v3[20] = v2;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v8;
  v3[22] = v7;
  if (v2)
  {
    v9 = sub_1000994CC;
  }

  else
  {
    v9 = sub_100098C6C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100098C6C()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v0[9] = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[17];
  v0[23] = static MainActor.shared.getter();
  v5 = sub_1000077C8(&qword_100176528, &qword_10011E6F8);
  v6 = sub_1000199C8(&qword_100176530, &qword_100176528, &qword_10011E6F8);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_100098D98;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 10, v5, v6);
}

uint64_t sub_100098D98()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_10009922C;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_100098F30;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100098F30()
{
  v1 = v0[23];

  v0[26] = v0[10];
  v2 = v0[21];
  v3 = v0[22];

  return _swift_task_switch(sub_100098F9C, v2, v3);
}

uint64_t sub_100098F9C()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[13];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10009A9D8(v1, v0[12]);
    }

    v5 = v0[17];
    v0[23] = static MainActor.shared.getter();
    v6 = sub_1000077C8(&qword_100176528, &qword_10011E6F8);
    v7 = sub_1000199C8(&qword_100176530, &qword_100176528, &qword_10011E6F8);
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_100098D98;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 10, v6, v7);
  }

  else
  {
    v10 = v0[18];
    v11 = v0[9];

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100007D20(v12, qword_10017F350);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "@@@ Proximity handoff interactions stream finished", v15, 2u);
    }

    v16 = v0[13];

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_10009A9D8(_swiftEmptyArrayStorage, v0[12]);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
    v19 = v0[16];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10009922C()
{
  v1 = v0[23];
  v0[11] = v0[25];
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_willThrowTypedImpl();

  v2 = v0[21];
  v3 = v0[22];

  return _swift_task_switch(sub_1000992C8, v2, v3);
}

uint64_t sub_1000992C8()
{
  v19 = v0;
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[9];

  (*(v3 + 8))(v2, v4);
  v6 = v0[25];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100007D20(v7, qword_10017F350);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v0[8] = v6;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v12 = String.init<A>(reflecting:)();
    v14 = sub_10003E81C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error registering for updates to proximity handoff interactions: %s", v10, 0xCu);
    sub_100007920(v11);
  }

  else
  {
  }

  v15 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000994CC()
{
  v15 = v0;
  v1 = v0[18];

  v2 = v0[20];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_10017F350);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[8] = v2;
    swift_errorRetain();
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10003E81C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error registering for updates to proximity handoff interactions: %s", v6, 0xCu);
    sub_100007920(v7);
  }

  else
  {
  }

  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000996A8(uint64_t a1, void (*a2)(void, void), void *a3)
{
  v4 = v3;
  v120 = a3;
  v122 = a2;
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v102 = v97 - v8;
  v101 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest();
  v104 = *(v101 - 8);
  v9 = *(v104 + 64);
  __chkstk_darwin(v101);
  v99 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v10;
  __chkstk_darwin(v11);
  v98 = v97 - v12;
  v116 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v143 = *(v116 - 8);
  v13 = *(v143 + 64);
  __chkstk_darwin(v116);
  v117 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v97 - v16;
  v18 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v128 = *(v18 - 8);
  v19 = *(v128 + 64);
  __chkstk_darwin(v18);
  v119 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v135 = *(v21 - 8);
  v22 = *(v135 + 8);
  __chkstk_darwin(v21);
  v124 = v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for SFNearbySharingInteraction();
  v131 = *(v140 - 8);
  v24 = *(v131 + 64);
  __chkstk_darwin(v140);
  v139 = v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for UUID();
  v132 = *(v138 - 8);
  v26 = *(v132 + 64);
  __chkstk_darwin(v138);
  v142 = v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v97 - v29;
  v118 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v31 = *(v118 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v118);
  v137 = v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v145 = v97 - v35;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100007D20(v36, qword_10017F350);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  LODWORD(v144) = v38;
  v39 = os_log_type_enabled(v37, v38);
  v115 = v17;
  v123 = v21;
  v141 = v18;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v41 = a1;
    v42 = v146;
    *v40 = 136315138;
    v43 = v118;
    v44 = Array.description.getter();
    v46 = sub_10003E81C(v44, v45, &v146);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v144, "AirDrop nearby sharing interactions changed: %s", v40, 0xCu);
    sub_100007920(v42);
    a1 = v41;

    v47 = v119;
  }

  else
  {

    v47 = v119;
    v43 = v118;
  }

  v105 = a1;
  v48 = *(a1 + 16);
  v49 = v145;
  if (v48)
  {
    v51 = *(v31 + 16);
    v50 = v31 + 16;
    v144 = v51;
    v52 = v105 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v53 = *(v50 + 56);
    v132 += 8;
    v133 = v53;
    v131 += 8;
    v129 = (v50 - 8);
    v130 = (v128 + 88);
    v114 = (v128 + 8);
    v113 = (v128 + 96);
    v112 = (v135 + 32);
    v111 = (v143 + 104);
    v110 = (v143 + 8);
    LODWORD(v128) = enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:);
    v109 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:);
    v107 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.generic(_:);
    v106 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.peerPayment(_:);
    v108 = (v135 + 8);
    v97[3] = "v52@0:8@16@24@32C40@44";
    v97[2] = v104 + 16;
    v97[1] = v104 + 32;
    v103 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:);
    v97[0] = v104 + 8;
    v135 = v30;
    v136 = v4;
    v134 = v50;
    while (1)
    {
      v143 = v48;
      v144(v49, v52, v43);
      SFAirDrop.NearbySharingInteraction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v54 = v146;
      if (!v146[2])
      {
        goto LABEL_13;
      }

      v55 = sub_10003EDEC(v30);
      if (v56)
      {
        v57 = *v132;
        v58 = *(*(v54 + 56) + 8 * v55);
        v57(v30, v138);
        v49 = v145;
      }

      else
      {
LABEL_13:

        (*v132)(v30, v138);
        v58 = sub_10009E25C(v49, v122, v120);
        sub_1000A34D0();
      }

      v144(v137, v49, v43);
      v59 = v58;
      v60 = v139;
      SFNearbySharingInteraction.init(_:)();
      sub_10004EB14(v60);
      (*v131)(v60, v140);
      v61 = v142;
      SFAirDrop.NearbySharingInteraction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v62 = v59;
      v63 = static Published.subscript.modify();
      sub_1000271C8(v58, v61);
      v63(&v146, 0);
      v49 = v145;

      SFAirDrop.NearbySharingInteraction.state.getter();
      v64 = v141;
      v65 = (*v130)(v47, v141);
      if (v65 == v128)
      {
        break;
      }

      (*v129)(v49, v43);

      (*v114)(v47, v64);
      v30 = v135;
LABEL_9:
      v52 += v133;
      v48 = v143 - 1;
      if (v143 == 1)
      {
        goto LABEL_27;
      }
    }

    v126 = v62;
    v127 = v52;
    (*v113)(v47, v64);
    v66 = v124;
    v67 = v123;
    (*v112)(v124, v47, v123);
    v68 = v115;
    SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
    v69 = v117;
    v70 = v116;
    v121 = *v111;
    v121(v117, v109, v116);
    v125 = sub_1000A53A0(&qword_100176508, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    v71 = dispatch thunk of static Equatable.== infix(_:_:)();
    v72 = *v110;
    (*v110)(v69, v70);
    v72(v68, v70);
    if (v71)
    {
      v73 = v126;

      (*v108)(v66, v67);
    }

    else
    {
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v74 = v121;
      v121(v69, v107, v70);
      v75 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72(v69, v70);
      v72(v68, v70);
      if ((v75 & 1) == 0)
      {
        SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
        v74(v69, v106, v70);
        v77 = dispatch thunk of static Equatable.== infix(_:_:)();
        v72(v69, v70);
        v72(v68, v70);
        v30 = v135;
        if (v77)
        {
          v78 = v126;

          (*v108)(v124, v123);
          v79 = *v129;
          v49 = v145;
        }

        else
        {
          v80 = v74;
          v81 = v124;
          SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
          v80(v69, v103, v70);
          LOBYTE(v80) = dispatch thunk of static Equatable.== infix(_:_:)();
          v72(v69, v70);
          v72(v68, v70);
          (*v108)(v81, v123);
          if (v80)
          {
            v49 = v145;
            v43 = v118;
            (*v129)(v145, v118);
            v82 = v126;

            goto LABEL_26;
          }

          SFAirDrop.NearbySharingInteraction.id.getter();
          v83 = v98;
          SFAirDrop.NearbySharingAssertionRequest.init(nearbySharingInteractionID:explanation:)();
          v84 = type metadata accessor for TaskPriority();
          v85 = v102;
          (*(*(v84 - 8) + 56))(v102, 1, 1, v84);
          v86 = v104;
          v87 = v99;
          v88 = v101;
          (*(v104 + 16))(v99, v83, v101);
          v89 = (*(v86 + 80) + 48) & ~*(v86 + 80);
          v90 = swift_allocObject();
          *(v90 + 2) = 0;
          *(v90 + 3) = 0;
          v91 = v126;
          v92 = v122;
          *(v90 + 4) = v126;
          *(v90 + 5) = v92;
          (*(v86 + 32))(&v90[v89], v87, v88);
          v93 = v91;

          sub_1000E1D28(0, 0, v85, &unk_10011E6C0, v90);

          v49 = v145;

          (*(v86 + 8))(v83, v88);
          v79 = *v129;
        }

        v43 = v118;
        v79(v49, v118);
        goto LABEL_26;
      }

      v76 = v126;

      (*v108)(v124, v123);
    }

    v49 = v145;
    v43 = v118;
    (*v129)(v145, v118);
    v30 = v135;
LABEL_26:
    v47 = v119;
    v52 = v127;
    goto LABEL_9;
  }

LABEL_27:
  swift_getKeyPath();
  swift_getKeyPath();
  v94 = static Published.subscript.modify();
  sub_10009B0CC(v105, v95);
  v94(&v146, 0);

  return sub_10009C78C();
}

uint64_t sub_10009A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v8 = *(*(sub_1000077C8(&qword_100172F08, &unk_10011E530) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v6[6] = v9;
  v10 = async function pointer to SFAirDropClient.takeNearbySharingAssertion(for:)[1];
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_10009A810;

  return SFAirDropClient.takeNearbySharingAssertion(for:)(v9, a6);
}

uint64_t sub_10009A810()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000AC278;
  }

  else
  {
    v3 = sub_10009A924;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10009A924()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_interactionAssertionID;
  swift_beginAccess();
  sub_1000478DC(v2, v1 + v3, &qword_100172F08, &unk_10011E530);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009A9D8(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v66 = type metadata accessor for SFNearbySharingInteraction();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v66);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UUID();
  v6 = *(v64 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin(v64);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v67 = type metadata accessor for SFProximityHandoff.Interaction();
  v72 = *(v67 - 8);
  v12 = *(v72 + 64);
  __chkstk_darwin(v67);
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_10017F350);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v71 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v73[0] = v22;
    *v21 = 136315138;
    v23 = Array.description.getter();
    v25 = v3;
    v26 = sub_10003E81C(v23, v24, v73);

    *(v21 + 4) = v26;
    v3 = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "Proximity handoff interactions changed: %s", v21, 0xCu);
    sub_100007920(v22);

    v6 = v71;
  }

  v53 = a1;
  v27 = *(a1 + 16);
  v28 = v70;
  v29 = v67;
  if (v27)
  {
    v54 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_contactDetailsProvider;
    v71 = *(v72 + 16);
    v30 = v53 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v31 = *(v72 + 72);
    v58 = (v6 + 8);
    v59 = v31;
    v72 += 16;
    v56 = (v72 - 8);
    v57 = (v3 + 8);
    v60 = v16;
    v61 = v11;
    do
    {
      v69 = v30;
      v70 = v27;
      v71(v16);
      SFProximityHandoff.Interaction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v35 = v73[0];
      if (*(v73[0] + 16) && (v36 = sub_10003EDEC(v11), (v37 & 1) != 0))
      {
        v38 = *v58;
        v39 = *(*(v35 + 56) + 8 * v36);
        v38(v11, v64);

        v16 = v60;
      }

      else
      {

        (*v58)(v11, v64);
        v40 = *(v28 + v54);
        type metadata accessor for ShareableContentResolver();
        swift_allocObject();

        v41 = v55;

        v43 = sub_1000932A4(v42, v40);

        v16 = v60;
        v39 = sub_10009F284(v60, v41, v43);
        sub_1000A34D0();
      }

      (v71)(v62, v16, v29);
      v68 = v39;
      v44 = v39;
      v45 = v65;
      SFNearbySharingInteraction.init(_:)();
      sub_10004EB14(v45);
      (*v57)(v45, v66);
      v46 = *&v44[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver];
      v47 = *(v46 + 48);
      if (v47)
      {
        v48 = *(v46 + 56);

        v47(v16);
        sub_10002534C(v47);
      }

      v32 = v63;
      SFProximityHandoff.Interaction.id.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v44;
      v34 = static Published.subscript.modify();
      sub_1000271C8(v68, v32);
      v34(v73, 0);

      v29 = v67;
      (*v56)(v16, v67);
      v30 = v69 + v59;
      v27 = v70 - 1;
      v11 = v61;
    }

    while (v70 != 1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = static Published.subscript.modify();
  sub_10009BC2C(v53, v50);
  v49(v73, 0);

  return sub_10009C78C();
}

uint64_t sub_10009B0CC(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v107 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v103 - v8;
  v119 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v9 = *(v119 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v119);
  v118 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v108 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  __chkstk_darwin(v19);
  v104 = &v103 - v20;
  __chkstk_darwin(v21);
  v117 = &v103 - v22;
  __chkstk_darwin(v23);
  v25 = *(a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  v109 = a2;
  v114 = v13;
  if (v25)
  {
    v27 = &v103 - v24;
    v125 = _swiftEmptyArrayStorage;
    sub_10000E514(0, v25, 0);
    v26 = v125;
    v115 = *(v9 + 16);
    v116 = v9 + 16;
    v28 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v29 = *(v9 + 72);
    v30 = (v9 + 8);
    v111 = v13 + 32;
    v112 = v29;
    do
    {
      v31 = v118;
      v32 = v119;
      (v115)(v118, v28, v119);
      sub_1000A53A0(&qword_100176510, &type metadata accessor for SFAirDrop.NearbySharingInteraction);
      dispatch thunk of Identifiable.id.getter();
      (*v30)(v31, v32);
      v125 = v26;
      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        sub_10000E514(v33 > 1, v34 + 1, 1);
        v26 = v125;
      }

      v26[2] = v34 + 1;
      v13 = v114;
      (*(v114 + 32))(v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v27, v12);
      v28 += v112;
      --v25;
    }

    while (v25);
    a2 = v109;
  }

  v35 = sub_100090750(v26);

  v36 = *a2;
  v37 = *(*a2 + 64);
  v111 = *a2 + 64;
  v38 = 1 << *(v36 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v37;
  v106 = (v38 + 63) >> 6;
  v115 = (v35 + 56);
  v116 = v35;
  v118 = (v13 + 16);
  v119 = (v13 + 8);
  v103 = (v13 + 32);
  result = swift_bridgeObjectRetain_n();
  v42 = 0;
  v43 = _swiftEmptyArrayStorage;
  v105 = v36;
  while (1)
  {
    v112 = v43;
    if (!v40)
    {
      break;
    }

    v44 = v42;
    v45 = v114;
LABEL_18:
    v46 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v47 = *(v45 + 72);
    v48 = *(v45 + 16);
    v48(v117, *(v36 + 48) + v47 * (v46 | (v44 << 6)), v12);
    if (*(v116 + 16) && (v49 = v116, v50 = *(v116 + 40), sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID), v51 = dispatch thunk of Hashable._rawHashValue(seed:)(), v52 = -1 << *(v49 + 32), v53 = v51 & ~v52, ((*&v115[(v53 >> 3) & 0xFFFFFFFFFFFFFF8] >> v53) & 1) != 0))
    {
      v54 = ~v52;
      while (1)
      {
        v48(v18, *(v116 + 48) + v53 * v47, v12);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = *v119;
        (*v119)(v18, v12);
        if (v55)
        {
          break;
        }

        v53 = (v53 + 1) & v54;
        if (((*&v115[(v53 >> 3) & 0xFFFFFFFFFFFFFF8] >> v53) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      result = v56(v117, v12);
      v42 = v44;
      v36 = v105;
      v43 = v112;
    }

    else
    {
LABEL_23:
      v57 = *v103;
      (*v103)(v104, v117, v12);
      v43 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E514(0, v43[2] + 1, 1);
        v43 = v125;
      }

      v60 = v43[2];
      v59 = v43[3];
      if (v60 >= v59 >> 1)
      {
        sub_10000E514(v59 > 1, v60 + 1, 1);
        v43 = v125;
      }

      v43[2] = v60 + 1;
      result = (v57)(v43 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + v60 * v47, v104, v12);
      v42 = v44;
      v36 = v105;
    }
  }

  v45 = v114;
  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return result;
    }

    if (v44 >= v106)
    {
      break;
    }

    v40 = *(v111 + 8 * v44);
    ++v42;
    if (v40)
    {
      goto LABEL_18;
    }
  }

  v61 = v43[2];
  if (v61)
  {
    v62 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    v63 = v45;
    v64 = v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v65 = *(v63 + 72);
    v116 = *(v63 + 16);
    v117 = v65;
    v66 = v36;
    v68 = v108;
    v67 = v109;
    v114 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    (v116)(v108, v64, v12);
    while (1)
    {
      v70 = v113;
      swift_beginAccess();
      v71 = *(v70 + v62);
      v72 = sub_10003EDEC(v68);
      if (v73)
      {
        v74 = v72;
        v75 = *(v70 + v62);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v70 + v62);
        v120 = v77;
        *(v70 + v62) = 0x8000000000000000;
        if (!v76)
        {
          sub_100042430();
          v77 = v120;
        }

        (*v119)(*(v77 + 48) + v74 * v117, v12);
        v78 = *(*(v77 + 56) + 8 * v74);

        sub_100040F48(v74, v77);
        *(v70 + v62) = v77;
      }

      swift_endAccess();
      if (v66[2] && (v79 = sub_10003EDEC(v68), (v80 & 1) != 0))
      {
        v81 = *(v66[7] + 8 * v79);
        v82 = type metadata accessor for TaskPriority();
        v83 = *(v82 - 8);
        v84 = v110;
        (*(v83 + 56))(v110, 1, 1, v82);
        type metadata accessor for MainActor();
        v85 = v81;
        v86 = static MainActor.shared.getter();
        v87 = swift_allocObject();
        v87[2] = v86;
        v87[3] = &protocol witness table for MainActor;
        v87[4] = v85;
        v115 = v85;
        v88 = v107;
        sub_100007BA4(v84, v107, &qword_100172F50, &qword_10011E500);
        LODWORD(v85) = (*(v83 + 48))(v88, 1, v82);

        if (v85 == 1)
        {
          sub_1000159AC(v88, &qword_100172F50, &qword_10011E500);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v83 + 8))(v88, v82);
        }

        v91 = v87[2];
        v90 = v87[3];
        swift_unknownObjectRetain();

        v89 = v115;
        if (v91)
        {
          swift_getObjectType();
          v92 = dispatch thunk of Actor.unownedExecutor.getter();
          v94 = v93;
          swift_unknownObjectRelease();
        }

        else
        {
          v92 = 0;
          v94 = 0;
        }

        v62 = v114;
        sub_1000159AC(v110, &qword_100172F50, &qword_10011E500);
        v95 = swift_allocObject();
        *(v95 + 16) = &unk_10011E6C8;
        *(v95 + 24) = v87;
        if (v94 | v92)
        {
          v121 = 0;
          v122 = 0;
          v123 = v92;
          v124 = v94;
        }

        v68 = v108;
        swift_task_create();

        v67 = v109;
      }

      else
      {
        v89 = 0;
      }

      v96 = sub_10003EDEC(v68);
      if (v97)
      {
        v98 = v96;
        v115 = v61;
        v99 = v89;
        v100 = *v67;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v66 = *v67;
        v125 = *v67;
        if (!v101)
        {
          sub_1000421BC();
          v66 = v125;
        }

        v69 = v117;
        v102 = *v119;
        (*v119)(v66[6] + v98 * v117, v12);

        sub_1000482FC(v98, v66);
        v102(v68, v12);
        *v67 = v66;
        v62 = v114;
        v61 = v115;
      }

      else
      {

        (*v119)(v68, v12);
        v69 = v117;
      }

      v64 = &v69[v64];
      if (!--v61)
      {
        break;
      }

      (v116)(v68, v64, v12);
    }
  }
}

uint64_t sub_10009BC2C(uint64_t a1, void *a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v107 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v103 - v8;
  v119 = type metadata accessor for SFProximityHandoff.Interaction();
  v9 = *(v119 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v119);
  v118 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v108 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  __chkstk_darwin(v19);
  v104 = &v103 - v20;
  __chkstk_darwin(v21);
  v117 = &v103 - v22;
  __chkstk_darwin(v23);
  v25 = *(a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  v109 = a2;
  v114 = v13;
  if (v25)
  {
    v27 = &v103 - v24;
    v125 = _swiftEmptyArrayStorage;
    sub_10000E514(0, v25, 0);
    v26 = v125;
    v115 = *(v9 + 16);
    v116 = v9 + 16;
    v28 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v29 = *(v9 + 72);
    v30 = (v9 + 8);
    v111 = v13 + 32;
    v112 = v29;
    do
    {
      v31 = v118;
      v32 = v119;
      (v115)(v118, v28, v119);
      sub_1000A53A0(&qword_100176500, &type metadata accessor for SFProximityHandoff.Interaction);
      dispatch thunk of Identifiable.id.getter();
      (*v30)(v31, v32);
      v125 = v26;
      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        sub_10000E514(v33 > 1, v34 + 1, 1);
        v26 = v125;
      }

      v26[2] = v34 + 1;
      v13 = v114;
      (*(v114 + 32))(v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v27, v12);
      v28 += v112;
      --v25;
    }

    while (v25);
    a2 = v109;
  }

  v35 = sub_100090750(v26);

  v36 = *a2;
  v37 = *(*a2 + 64);
  v111 = *a2 + 64;
  v38 = 1 << *(v36 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v37;
  v106 = (v38 + 63) >> 6;
  v115 = (v35 + 56);
  v116 = v35;
  v118 = (v13 + 16);
  v119 = (v13 + 8);
  v103 = (v13 + 32);
  result = swift_bridgeObjectRetain_n();
  v42 = 0;
  v43 = _swiftEmptyArrayStorage;
  v105 = v36;
  while (1)
  {
    v112 = v43;
    if (!v40)
    {
      break;
    }

    v44 = v42;
    v45 = v114;
LABEL_18:
    v46 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v47 = *(v45 + 72);
    v48 = *(v45 + 16);
    v48(v117, *(v36 + 48) + v47 * (v46 | (v44 << 6)), v12);
    if (*(v116 + 16) && (v49 = v116, v50 = *(v116 + 40), sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID), v51 = dispatch thunk of Hashable._rawHashValue(seed:)(), v52 = -1 << *(v49 + 32), v53 = v51 & ~v52, ((*&v115[(v53 >> 3) & 0xFFFFFFFFFFFFFF8] >> v53) & 1) != 0))
    {
      v54 = ~v52;
      while (1)
      {
        v48(v18, *(v116 + 48) + v53 * v47, v12);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = *v119;
        (*v119)(v18, v12);
        if (v55)
        {
          break;
        }

        v53 = (v53 + 1) & v54;
        if (((*&v115[(v53 >> 3) & 0xFFFFFFFFFFFFFF8] >> v53) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      result = v56(v117, v12);
      v42 = v44;
      v36 = v105;
      v43 = v112;
    }

    else
    {
LABEL_23:
      v57 = *v103;
      (*v103)(v104, v117, v12);
      v43 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E514(0, v43[2] + 1, 1);
        v43 = v125;
      }

      v60 = v43[2];
      v59 = v43[3];
      if (v60 >= v59 >> 1)
      {
        sub_10000E514(v59 > 1, v60 + 1, 1);
        v43 = v125;
      }

      v43[2] = v60 + 1;
      result = (v57)(v43 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + v60 * v47, v104, v12);
      v42 = v44;
      v36 = v105;
    }
  }

  v45 = v114;
  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return result;
    }

    if (v44 >= v106)
    {
      break;
    }

    v40 = *(v111 + 8 * v44);
    ++v42;
    if (v40)
    {
      goto LABEL_18;
    }
  }

  v61 = v43[2];
  if (v61)
  {
    v62 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    v63 = v45;
    v64 = v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v65 = *(v63 + 72);
    v116 = *(v63 + 16);
    v117 = v65;
    v66 = v36;
    v68 = v108;
    v67 = v109;
    v114 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
    (v116)(v108, v64, v12);
    while (1)
    {
      v70 = v113;
      swift_beginAccess();
      v71 = *(v70 + v62);
      v72 = sub_10003EDEC(v68);
      if (v73)
      {
        v74 = v72;
        v75 = *(v70 + v62);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v70 + v62);
        v120 = v77;
        *(v70 + v62) = 0x8000000000000000;
        if (!v76)
        {
          sub_100042430();
          v77 = v120;
        }

        (*v119)(*(v77 + 48) + v74 * v117, v12);
        v78 = *(*(v77 + 56) + 8 * v74);

        sub_100040F48(v74, v77);
        *(v70 + v62) = v77;
      }

      swift_endAccess();
      if (v66[2] && (v79 = sub_10003EDEC(v68), (v80 & 1) != 0))
      {
        v81 = *(v66[7] + 8 * v79);
        v82 = type metadata accessor for TaskPriority();
        v83 = *(v82 - 8);
        v84 = v110;
        (*(v83 + 56))(v110, 1, 1, v82);
        type metadata accessor for MainActor();
        v85 = v81;
        v86 = static MainActor.shared.getter();
        v87 = swift_allocObject();
        v87[2] = v86;
        v87[3] = &protocol witness table for MainActor;
        v87[4] = v85;
        v115 = v85;
        v88 = v107;
        sub_100007BA4(v84, v107, &qword_100172F50, &qword_10011E500);
        LODWORD(v85) = (*(v83 + 48))(v88, 1, v82);

        if (v85 == 1)
        {
          sub_1000159AC(v88, &qword_100172F50, &qword_10011E500);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v83 + 8))(v88, v82);
        }

        v91 = v87[2];
        v90 = v87[3];
        swift_unknownObjectRetain();

        v89 = v115;
        if (v91)
        {
          swift_getObjectType();
          v92 = dispatch thunk of Actor.unownedExecutor.getter();
          v94 = v93;
          swift_unknownObjectRelease();
        }

        else
        {
          v92 = 0;
          v94 = 0;
        }

        v62 = v114;
        sub_1000159AC(v110, &qword_100172F50, &qword_10011E500);
        v95 = swift_allocObject();
        *(v95 + 16) = &unk_10011E6A8;
        *(v95 + 24) = v87;
        if (v94 | v92)
        {
          v121 = 0;
          v122 = 0;
          v123 = v92;
          v124 = v94;
        }

        v68 = v108;
        swift_task_create();

        v67 = v109;
      }

      else
      {
        v89 = 0;
      }

      v96 = sub_10003EDEC(v68);
      if (v97)
      {
        v98 = v96;
        v115 = v61;
        v99 = v89;
        v100 = *v67;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v66 = *v67;
        v125 = *v67;
        if (!v101)
        {
          sub_1000421BC();
          v66 = v125;
        }

        v69 = v117;
        v102 = *v119;
        (*v119)(v66[6] + v98 * v117, v12);

        sub_1000482FC(v98, v66);
        v102(v68, v12);
        *v67 = v66;
        v62 = v114;
        v61 = v115;
      }

      else
      {

        (*v119)(v68, v12);
        v69 = v117;
      }

      v64 = &v69[v64];
      if (!--v61)
      {
        break;
      }

      (v116)(v68, v64, v12);
    }
  }
}

uint64_t sub_10009C78C()
{
  v1 = v0;
  v145 = type metadata accessor for UUID();
  v2 = *(v145 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v145);
  v138 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v137 - v6;
  __chkstk_darwin(v7);
  v147 = &v137 - v8;
  __chkstk_darwin(v9);
  *&v139 = &v137 - v10;
  v143 = type metadata accessor for NearbySharingInteractionViewState(0);
  v11 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v142 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v141 = (&v137 - v14);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v154[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v154[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v154[0] = v15;
  sub_1000A8C80(v16, sub_1000A7C50, 0, isUniquelyReferenced_nonNull_native, v154);

  v18 = v154[0];
  v19 = v154[0] + 64;
  v20 = 1 << *(v154[0] + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v154[0] + 64);
  v23 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;

  v149 = v23;
  swift_beginAccess();
  v24 = 0;
  v25 = (v20 + 63) >> 6;
  v146 = v2;
  v150 = (v2 + 16);
  v151 = (v2 + 8);
  v26 = v1;
  v148 = v1;
  v27 = v139;
  v144 = v18;
  while (v22)
  {
LABEL_12:
    v30 = *(*(v18 + 56) + ((v24 << 9) | (8 * __clz(__rbit64(v22)))));
    sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
    v31 = v30;
    v32 = static NSUserDefaults.airdrop.getter();
    v33 = SFAirDropUserDefaults.shockwaveEffectEnabled.getter();

    if ((v33 & 1) == 0)
    {
      sub_1000522F8(v142);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload < 4)
      {
        v28 = v142;
        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v43 = v142;
        v136 = *(v142 + 96);
        v132 = *(v142 + 80);
        v134 = *(v142 + 88);
        sub_1000588EC(*v142, *(v142 + 8), *(v142 + 16), *(v142 + 24), *(v142 + 32), *(v142 + 40), *(v142 + 48), *(v142 + 56), *(v142 + 64), *(v142 + 72));
        sub_100056D60(v43 + 104);
      }

LABEL_5:
      sub_1000A25B0(&v31[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id]);
      goto LABEL_6;
    }

    sub_1000522F8(v141);
    v34 = swift_getEnumCaseMultiPayload();
    if (v34 > 2)
    {
      if (v34 == 3)
      {
LABEL_26:
        v28 = v141;
LABEL_4:
        sub_1000AB0AC(v28, type metadata accessor for NearbySharingInteractionViewState);
        goto LABEL_5;
      }

      if (v34 != 4)
      {
        goto LABEL_5;
      }

      v36 = v141;
      v135 = *(v141 + 24);
      v131 = *(v141 + 10);
      v133 = *(v141 + 11);
      sub_1000588EC(*v141, *(v141 + 1), *(v141 + 2), *(v141 + 3), *(v141 + 4), *(v141 + 5), *(v141 + 6), *(v141 + 7), *(v141 + 8), *(v141 + 9));
      sub_100056D60(v36 + 104);
    }

    else
    {
      if (v34 == 1)
      {
        goto LABEL_26;
      }

      sub_1000AB0AC(v141, type metadata accessor for NearbySharingInteractionViewState);
    }

    v37 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
    v38 = *(v26 + v149);
    if (*(v38 + 16))
    {
      v39 = *(v26 + v149);

      v40 = sub_10003EDEC(&v31[v37]);
      if (v41)
      {
        v42 = *(*(v38 + 56) + 8 * v40);

        goto LABEL_29;
      }
    }

    v42 = sub_1000A8FFC(v31);
LABEL_29:
    v137 = *v150;
    v137(v27, &v31[v37], v145);
    v45 = v148;
    v44 = v149;
    swift_beginAccess();
    if (v42)
    {
      v46 = *(v45 + v44);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v27;
      v49 = v47;
      v153 = *(v45 + v44);
      v50 = v153;
      v51 = sub_10003EDEC(v48);
      v53 = *(v50 + 16);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        goto LABEL_85;
      }

      v57 = v52;
      if (*(v50 + 24) >= v56)
      {
        if ((v49 & 1) == 0)
        {
          v75 = v51;
          sub_1000426B0();
          v51 = v75;
        }

        v27 = v139;
        v59 = v153;
        if (v57)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_100040684(v56, v49);
        v27 = v139;
        v51 = sub_10003EDEC(v139);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_87;
        }

        v59 = v153;
        if (v57)
        {
LABEL_34:
          v60 = v59[7];
          v61 = *(v60 + 8 * v51);
          *(v60 + 8 * v51) = v42;

LABEL_44:
          (*v151)(v27, v145);
          v26 = v148;
          goto LABEL_45;
        }
      }

      v59[(v51 >> 6) + 8] |= 1 << v51;
      v72 = v51;
      v137(v59[6] + v146[9] * v51, v27, v145);
      *(v59[7] + 8 * v72) = v42;
      v73 = v59[2];
      v55 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v55)
      {
        goto LABEL_86;
      }

      v59[2] = v74;
      goto LABEL_44;
    }

    v62 = sub_10003EDEC(v27);
    if ((v63 & 1) == 0)
    {
      (*v151)(v27, v145);
      v26 = v148;
      goto LABEL_46;
    }

    v64 = v62;
    v26 = v148;
    v65 = v149;
    v66 = *(v148 + v149);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v26 + v65);
    v153 = v59;
    if ((v67 & 1) == 0)
    {
      sub_1000426B0();
      v59 = v153;
    }

    v68 = v59[6] + v146[9] * v64;
    v69 = v64;
    v70 = v146[1];
    (v70)(v68, v145);
    v71 = *(v59[7] + 8 * v69);

    sub_1000482FC(v69, v59);
    v27 = v139;
    v70();
LABEL_45:
    *(v26 + v149) = v59;
LABEL_46:
    swift_endAccess();
LABEL_6:
    v22 &= v22 - 1;
    sub_10009D6A8(v31);

    v18 = v144;
  }

  while (1)
  {
    v29 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v29 >= v25)
    {
      break;
    }

    v22 = *(v19 + 8 * v29);
    ++v24;
    if (v22)
    {
      v24 = v29;
      goto LABEL_12;
    }
  }

  v76 = v149;
  swift_beginAccess();
  v77 = *(v26 + v76);

  v79 = sub_1000911C4(v78);

  v81 = sub_1000A65E8(v80, v79);

  v83 = 0;
  v85 = v81 + 7;
  v84 = v81[7];
  v143 = v81;
  v86 = 1 << *(v81 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & v84;
  v89 = (v86 + 63) >> 6;
  *&v82 = 136315138;
  v139 = v82;
  v90 = v145;
  v91 = v147;
  while (v88)
  {
LABEL_59:
    v93 = v146[9];
    v94 = v146[2];
    v94(v91, *(v143 + 48) + v93 * (__clz(__rbit64(v88)) | (v83 << 6)), v90);
    v95 = *(v26 + v76);
    if (*(v95 + 16))
    {

      v96 = sub_10003EDEC(v91);
      if (v97)
      {
        v142 = *(*(v95 + 56) + 8 * v96);

        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        sub_100007D20(v98, qword_10017F350);
        v99 = v140;
        v94(v140, v147, v90);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v153 = v137;
          *v102 = v139;
          sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
          v103 = dispatch thunk of CustomStringConvertible.description.getter();
          v105 = v104;
          v141 = *v151;
          v141(v140, v145);
          v106 = sub_10003E81C(v103, v105, &v153);

          *(v102 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v100, v101, "Dismissing remote alert for nearby sharing interaction with ID: %s", v102, 0xCu);
          sub_100007920(v137);

          v90 = v145;
        }

        else
        {

          v141 = *v151;
          v141(v99, v90);
        }

        v107 = v149;
        dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
        v26 = v148;
        swift_beginAccess();
        v108 = *(v26 + v107);
        v109 = sub_10003EDEC(v147);
        if (v110)
        {
          v111 = v109;
          v112 = *(v26 + v107);
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v114 = *(v26 + v107);
          v152 = v114;
          if (!v113)
          {
            sub_1000426B0();
            v114 = v152;
          }

          v141(*(v114 + 48) + v111 * v93, v90);
          v115 = *(*(v114 + 56) + 8 * v111);

          sub_1000482FC(v111, v114);
          *(v26 + v107) = v114;
        }

        swift_endAccess();
      }

      else
      {
      }

      v91 = v147;
    }

    v88 &= v88 - 1;
    (*v151)(v91, v90);
    v76 = v149;
  }

  while (1)
  {
    v92 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

    if (v92 >= v89)
    {

      v116 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
      swift_beginAccess();
      v117 = *(v26 + v116);

      v119 = sub_1000911C4(v118);
      v120 = sub_1000A65E8(v144, v119);

      v121 = 0;
      v122 = 1 << *(v120 + 32);
      v123 = -1;
      if (v122 < 64)
      {
        v123 = ~(-1 << v122);
      }

      v124 = v123 & v120[7];
      v125 = (v122 + 63) >> 6;
      v126 = v146;
      v127 = v138;
      while (v124)
      {
        v128 = v121;
LABEL_79:
        v129 = __clz(__rbit64(v124));
        v124 &= v124 - 1;
        (v126[2])(v127, v120[6] + v126[9] * (v129 | (v128 << 6)), v90);
        sub_1000A2DD0(v127);
        (v126[1])(v127, v90);
      }

      while (1)
      {
        v128 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_84;
        }

        if (v128 >= v125)
        {
        }

        v124 = v120[v128 + 7];
        ++v121;
        if (v124)
        {
          v121 = v128;
          goto LABEL_79;
        }
      }
    }

    v88 = v85[v92];
    ++v83;
    if (v88)
    {
      v83 = v92;
      goto LABEL_59;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}