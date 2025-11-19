char *sub_101209640()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v258 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v232 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v232 - v6;
  __chkstk_darwin(v8);
  v257 = v232 - v9;
  __chkstk_darwin(v10);
  v259 = v232 - v11;
  __chkstk_darwin(v12);
  v14 = v232 - v13;
  __chkstk_darwin(v15);
  v17 = (v232 - v16);
  v18 = type metadata accessor for CRLTableLayout();
  v264.receiver = v0;
  v264.super_class = v18;
  objc_msgSendSuper2(&v264, "endResize");
  result = [v0 layoutController];
  if (!result)
  {
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

  v20 = result;
  v21 = [result canvas];

  v22 = &unk_101A2D000;
  if (!v21)
  {
    goto LABEL_110;
  }

  if (![v21 isCanvasInteractive])
  {
    goto LABEL_109;
  }

  v23 = [v21 canvasController];
  v260 = v1;
  if (!v23)
  {
    v246 = v21;
    v259 = objc_opt_self();
    LODWORD(v35) = [v259 _atomicIncrementAssertCount];
    v263[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v263);
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    v37 = [v36 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v38;

    if (qword_1019F20A0 == -1)
    {
LABEL_10:
      v39 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v35;
      v41 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v41;
      v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v42;
      *(inited + 72) = v33;
      *(inited + 136) = &type metadata for String;
      v43 = sub_1000053B0();
      *(inited + 112) = v31;
      *(inited + 120) = v29;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v43;
      *(inited + 152) = 490;
      v44 = v263[0];
      *(inited + 216) = v41;
      *(inited + 224) = v42;
      *(inited + 192) = v44;
      v45 = v33;
      v46 = v44;
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v48, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v49 = swift_allocObject();
      v49[2] = 8;
      v49[3] = 0;
      v49[4] = 0;
      v49[5] = 0;
      v50 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      [v259 handleFailureInFunction:v21 file:v51 lineNumber:490 isFatal:0 format:v52 args:v50];
      v53 = v246;
LABEL_14:

      v1 = v260;
      v22 = &unk_101A2D000;
      goto LABEL_108;
    }

LABEL_123:
    swift_once();
    goto LABEL_10;
  }

  v243 = v23;
  v24 = [v23 commandController];
  if (!v24)
  {
    v246 = v21;
    v259 = objc_opt_self();
    v54 = [v259 _atomicIncrementAssertCount];
    v263[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v263);
    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    v57 = [v56 lastPathComponent];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v61 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_10146CA70;
    *(v62 + 56) = &type metadata for Int32;
    *(v62 + 64) = &protocol witness table for Int32;
    *(v62 + 32) = v54;
    v63 = sub_100006370(0, &qword_1019F4D30);
    *(v62 + 96) = v63;
    v64 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v62 + 104) = v64;
    *(v62 + 72) = v55;
    *(v62 + 136) = &type metadata for String;
    v65 = sub_1000053B0();
    *(v62 + 112) = v58;
    *(v62 + 120) = v60;
    *(v62 + 176) = &type metadata for UInt;
    *(v62 + 184) = &protocol witness table for UInt;
    *(v62 + 144) = v65;
    *(v62 + 152) = 491;
    v66 = v263[0];
    *(v62 + 216) = v63;
    *(v62 + 224) = v64;
    *(v62 + 192) = v66;
    v67 = v55;
    v68 = v66;
    v69 = static os_log_type_t.error.getter();
    sub_100005404(v61, &_mh_execute_header, v69, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v62);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v70 = static os_log_type_t.error.getter();
    sub_100005404(v61, &_mh_execute_header, v70, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v71 = swift_allocObject();
    v71[2] = 8;
    v71[3] = 0;
    v71[4] = 0;
    v71[5] = 0;
    v72 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    [v259 handleFailureInFunction:v21 file:v51 lineNumber:491 isFatal:0 format:v52 args:v72];

    v53 = v243;
    goto LABEL_14;
  }

  v245 = v17;
  v247 = v24;
  sub_10088E3FC(0);
  v25 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  swift_beginAccess();
  v26 = *v25;
  if (!*v25)
  {
    goto LABEL_107;
  }

  v241 = v14;
  v242 = v7;
  v240 = v4;
  v244 = v2;
  v27 = v25[1];
  v28 = *(v26 + 16);
  v29 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
  v30 = *(*v29 + 16);
  v239 = sub_1005B981C(&qword_1019F54E0);
  v31 = swift_initStackObject();
  v233 = xmmword_10146C6B0;
  *(v31 + 16) = xmmword_10146C6B0;
  v263[0] = &type metadata for Int;
  v253 = v26;

  v248 = v27;

  v232[1] = sub_1005B981C(&qword_1019FB560);
  String.init<A>(describing:)();
  v32 = String._bridgeToObjectiveC()();

  v33 = &qword_1019F4D30;
  v238 = sub_100006370(0, &qword_1019F4D30);
  *(v31 + 56) = v238;
  v34 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v31 + 32) = v32;
  v237 = v34;
  *(v31 + 64) = v34;
  v256 = v29;
  v246 = v21;
  if (v28 != v30)
  {
    v255 = (v31 + 32);
    v252 = objc_opt_self();
    v73 = [v252 _atomicIncrementAssertCount];
    v263[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v31, v263);
    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    v76 = [v75 lastPathComponent];

    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v254 = v31;
    v31 = v78;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v79 = static OS_os_log.crlAssert;
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_10146CA70;
    *(v80 + 56) = &type metadata for Int32;
    *(v80 + 64) = &protocol witness table for Int32;
    *(v80 + 32) = v73;
    v82 = v237;
    v81 = v238;
    *(v80 + 96) = v238;
    *(v80 + 104) = v82;
    *(v80 + 72) = v74;
    *(v80 + 136) = &type metadata for String;
    v83 = sub_1000053B0();
    *(v80 + 112) = v77;
    *(v80 + 120) = v31;
    *(v80 + 176) = &type metadata for UInt;
    *(v80 + 184) = &protocol witness table for UInt;
    *(v80 + 144) = v83;
    *(v80 + 152) = 496;
    v84 = v263[0];
    *(v80 + 216) = v81;
    *(v80 + 224) = v82;
    *(v80 + 192) = v84;
    v85 = v74;
    v86 = v84;
    v87 = static os_log_type_t.error.getter();
    sub_100005404(v79, &_mh_execute_header, v87, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v80);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v88 = static os_log_type_t.error.getter();
    v89 = v254;
    sub_100005404(v79, &_mh_execute_header, v88, "expected equality between two values of type %{public}@", 55, 2, v254);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    *(v29 + 2) = 8;
    *(v29 + 3) = 0;
    v90 = (v29 + 24);
    *(v29 + 4) = 0;
    *(v29 + 5) = 0;
    v91 = v89[2];
    v92 = v255;
    if (!v91)
    {
LABEL_42:
      v33 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v108 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v109 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v110 = String._bridgeToObjectiveC()();

      [v252 handleFailureInFunction:v108 file:v109 lineNumber:496 isFatal:0 format:v110 args:v33];

      v29 = v256;
      goto LABEL_43;
    }

    v93 = 0;
    v31 = 40;
    while (1)
    {
      v94 = &v92[40 * v93];
      v35 = *(v94 + 4);
      v33 = sub_100020E58(v94, *(v94 + 3));
      v95 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v96 = *v90;
      v97 = *(v95 + 16);
      v98 = __OFADD__(*v90, v97);
      v99 = *v90 + v97;
      if (v98)
      {
        goto LABEL_117;
      }

      v33 = *(v29 + 4);
      if (v33 >= v99)
      {
        goto LABEL_34;
      }

      if (v33 + 0x4000000000000000 < 0)
      {
        goto LABEL_119;
      }

      v35 = *(v29 + 5);
      if (2 * v33 > v99)
      {
        v99 = 2 * v33;
      }

      *(v29 + 4) = v99;
      if ((v99 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_120;
      }

      v100 = v95;
      v101 = swift_slowAlloc();
      v102 = v101;
      *(v29 + 5) = v101;
      if (v35)
      {
        break;
      }

      v95 = v100;
      v92 = v255;
      if (!v102)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_35:
      v104 = *(v95 + 16);
      if (v104)
      {
        v105 = (v95 + 32);
        v106 = *v90;
        do
        {
          v107 = *v105++;
          *&v102[8 * v106] = v107;
          v106 = *v90 + 1;
          if (__OFADD__(*v90, 1))
          {
            __break(1u);
            goto LABEL_112;
          }

          *v90 = v106;
          --v104;
        }

        while (v104);
      }

      if (++v93 == v91)
      {
        goto LABEL_42;
      }
    }

    if (v101 != v35 || v101 >= &v35[8 * v96])
    {
      memmove(v101, v35, 8 * v96);
    }

    v33 = v29;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v95 = v100;
    v92 = v255;
LABEL_34:
    v102 = *(v29 + 5);
    if (!v102)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_43:
  v111 = *(v253 + 16);
  if (!v111)
  {
    goto LABEL_60;
  }

  v112 = (v258 + 16);
  v235 = 0x800000010155DC20;
  v236 = v258 + 32;
  v234 = (v258 + 8);

  v114 = 4;
  v252 = v112;
  do
  {
    v35 = (v114 - 4);
    if ((v114 - 4) >= *(v113 + 16))
    {
      goto LABEL_113;
    }

    if (v35 >= *(*v29 + 16))
    {
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
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v115 = *(v113 + 8 * v114);
    if (*(*v29 + 8 * v114) != v115)
    {
      result = [v260 boardItem];
      if (!result)
      {
        goto LABEL_125;
      }

      v116 = result;
      v117 = type metadata accessor for CRLTableItem();
      v254 = v116;
      v249 = v117;
      v118 = swift_dynamicCastClassUnconditional();
      v119 = v118;
      if ((*(v118 + OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid) & 1) != 0 || (v120 = (v118 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap), !*(v118 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap)))
      {
        type metadata accessor for CRLTableItemData();
        swift_dynamicCastClassUnconditional();

        v122 = sub_1011FD0F0();

        swift_dynamicCastClassUnconditional();

        v123 = sub_1011FBBD8();

        v124 = sub_1011EE2D4(v122, v123);
        v33 = v125;
        v127 = v126;
        v129 = v128;

        v130 = (v119 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
        v131 = *(v119 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
        v31 = *(v119 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 8);
        v250 = v130[3];
        v251 = v131;
        *v130 = v124;
        v130[1] = v33;
        v130[2] = v127;
        v130[3] = v129;

        v255 = v127;

        v29 = v256;
        sub_1011DAB1C(v251);
        if (!*(v33 + 16))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v121 = v120[2];
        v31 = v120[3];
        v33 = v120[1];

        v255 = v121;

        if (!*(v33 + 16))
        {
          goto LABEL_45;
        }
      }

      v132 = sub_1007C7EC0(v114 - 4);
      if ((v133 & 1) == 0)
      {
LABEL_45:

        v113 = v253;
        goto LABEL_46;
      }

      v134 = v258;
      v135 = *(v258 + 16);
      v136 = v241;
      v137 = v244;
      v135(v241, *(v33 + 56) + *(v258 + 72) * v132, v244);

      v138 = *(v134 + 32);
      v139 = v245;
      v138(v245, v136, v137);
      result = [v260 boardItem];
      if (!result)
      {
        goto LABEL_127;
      }

      v255 = swift_dynamicCastClassUnconditional();
      v140 = v259;
      v135(v259, v139, v137);
      v142 = objc_allocWithZone(type metadata accessor for CRLCommandTableColumnSetWidth(0));
      v31 = v257;
      v135(v257, v140, v137);
      v143 = v137;
      KeyPath = swift_getKeyPath();
      *&v142[*((swift_isaMask & *v142) + 0xD0)] = v255;
      v135(&v142[*((swift_isaMask & *v142) + 0xD8)], v31, v143);
      v145 = &v142[*((swift_isaMask & *v142) + 0xE0)];
      v141 = v115;
      *v145 = v141;
      *(v145 + 4) = 0;
      *&v142[*((swift_isaMask & *v142) + 0xE8)] = KeyPath;
      v146 = &v142[*((swift_isaMask & *v142) + 0xF0)];
      v147 = v235;
      *v146 = 0xD00000000000001ALL;
      v146[1] = v147;
      v148 = sub_1005B981C(&unk_101A2C7F0);
      v261.receiver = v142;
      v261.super_class = v148;
      v149 = objc_msgSendSuper2(&v261, "init");
      v150 = *v234;
      (*v234)(v31, v143);
      v150(v259, v143);
      v33 = v247;
      sub_100888700(v149, 0, 0, 4, 0);

      v150(v245, v143);
      v29 = v256;
      v113 = v253;
    }

LABEL_46:
    ++v114;
    --v111;
  }

  while (v111);

LABEL_60:
  v151 = v248;
  v35 = *(v248 + 16);
  v152 = *(*(v29 + 1) + 16);
  v153 = swift_initStackObject();
  *(v153 + 16) = v233;
  v263[0] = &type metadata for Int;
  String.init<A>(describing:)();
  v154 = String._bridgeToObjectiveC()();

  *(v153 + 32) = v154;
  v155 = v237;
  *(v153 + 56) = v238;
  *(v153 + 64) = v155;
  if (v35 != v152)
  {
    v255 = (v153 + 32);
    v252 = objc_opt_self();
    v157 = [v252 _atomicIncrementAssertCount];
    v263[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v153, v263);
    StaticString.description.getter();
    v158 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v159 = String._bridgeToObjectiveC()();

    v160 = [v159 lastPathComponent];

    v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v163 = v162;

    v254 = v153;
    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v164 = static OS_os_log.crlAssert;
    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_10146CA70;
    *(v165 + 56) = &type metadata for Int32;
    *(v165 + 64) = &protocol witness table for Int32;
    *(v165 + 32) = v157;
    v167 = v237;
    v166 = v238;
    *(v165 + 96) = v238;
    *(v165 + 104) = v167;
    *(v165 + 72) = v158;
    *(v165 + 136) = &type metadata for String;
    v168 = sub_1000053B0();
    *(v165 + 112) = v161;
    *(v165 + 120) = v163;
    *(v165 + 176) = &type metadata for UInt;
    *(v165 + 184) = &protocol witness table for UInt;
    *(v165 + 144) = v168;
    *(v165 + 152) = 503;
    v169 = v263[0];
    *(v165 + 216) = v166;
    *(v165 + 224) = v167;
    *(v165 + 192) = v169;
    v170 = v158;
    v171 = v169;
    v172 = static os_log_type_t.error.getter();
    sub_100005404(v164, &_mh_execute_header, v172, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v165);
    swift_setDeallocating();
    v251 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v173 = static os_log_type_t.error.getter();
    v174 = v254;
    sub_100005404(v164, &_mh_execute_header, v173, "expected equality between two values of type %{public}@", 55, 2, v254);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    *(v29 + 2) = 8;
    *(v29 + 3) = 0;
    v175 = (v29 + 24);
    *(v29 + 4) = 0;
    *(v29 + 5) = 0;
    v176 = v174[2];
    v31 = v255;
    if (!v176)
    {
LABEL_90:
      v191 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v192 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v193 = String._bridgeToObjectiveC()();

      [v252 handleFailureInFunction:v35 file:v192 lineNumber:503 isFatal:0 format:v193 args:v191];

      swift_setDeallocating();
      swift_arrayDestroy();

      v156 = v248;
      v33 = *(v248 + 16);
      v29 = v256;
      if (!v33)
      {
        goto LABEL_106;
      }

      goto LABEL_91;
    }

    v177 = 0;
    while (1)
    {
      v178 = (v31 + 40 * v177);
      v35 = v178[4];
      v33 = sub_100020E58(v178, v178[3]);
      v179 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v180 = *v175;
      v181 = *(v179 + 16);
      v98 = __OFADD__(*v175, v181);
      v182 = *v175 + v181;
      if (v98)
      {
        goto LABEL_118;
      }

      v33 = *(v29 + 4);
      if (v33 >= v182)
      {
        goto LABEL_82;
      }

      if (v33 + 0x4000000000000000 < 0)
      {
        goto LABEL_121;
      }

      v35 = *(v29 + 5);
      if (2 * v33 > v182)
      {
        v182 = 2 * v33;
      }

      *(v29 + 4) = v182;
      if ((v182 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_122;
      }

      v183 = v179;
      v184 = swift_slowAlloc();
      v185 = v184;
      *(v29 + 5) = v184;
      if (v35)
      {
        break;
      }

      v179 = v183;
      v31 = v255;
      if (!v185)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_83:
      v187 = *(v179 + 16);
      if (v187)
      {
        v188 = (v179 + 32);
        v189 = *v175;
        while (1)
        {
          v190 = *v188++;
          *&v185[8 * v189] = v190;
          v189 = *v175 + 1;
          if (__OFADD__(*v175, 1))
          {
            break;
          }

          *v175 = v189;
          if (!--v187)
          {
            goto LABEL_67;
          }
        }

LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

LABEL_67:

      if (++v177 == v176)
      {
        goto LABEL_90;
      }
    }

    if (v184 != v35 || v184 >= &v35[8 * v180])
    {
      memmove(v184, v35, 8 * v180);
    }

    v33 = v29;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v179 = v183;
    v31 = v255;
LABEL_82:
    v185 = *(v29 + 5);
    if (!v185)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

  swift_setDeallocating();
  sub_100005070(v153 + 32);

  v33 = *(v151 + 16);
  v156 = v151;
  if (v33)
  {
LABEL_91:
    v194 = 0;
    v195 = (v156 + 32);
    v249 = 0x800000010155DC00;
    v250 = v258 + 32;
    v245 = (v258 + 8);
    v252 = (v156 + 32);
    v253 = v33;
    v251 = v258 + 16;
    do
    {
      if (v194 >= *(v156 + 16))
      {
        goto LABEL_115;
      }

      v196 = *(v29 + 1);
      if (v194 >= *(v196 + 16))
      {
        goto LABEL_116;
      }

      v197 = v195[v194];
      if (*(v196 + 8 * v194 + 32) != v197)
      {
        result = [v260 boardItem];
        if (!result)
        {
          goto LABEL_126;
        }

        v198 = result;
        v254 = type metadata accessor for CRLTableItem();
        v255 = v198;
        v199 = swift_dynamicCastClassUnconditional();
        v200 = v199;
        if ((*(v199 + OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid) & 1) != 0 || (v201 = v199 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap, (v35 = *(v199 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap)) == 0))
        {
          type metadata accessor for CRLTableItemData();
          swift_dynamicCastClassUnconditional();

          v203 = sub_1011FD0F0();

          swift_dynamicCastClassUnconditional();

          v204 = sub_1011FBBD8();

          v35 = sub_1011EE2D4(v203, v204);
          v31 = v205;
          v207 = v206;
          v202 = v208;

          v209 = (v200 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          v210 = *(v200 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          *v209 = v35;
          v209[1] = v31;
          v209[2] = v207;
          v209[3] = v202;

          v211 = v210;
          v29 = v256;
          v195 = v252;
          v156 = v248;
          sub_1011DAB1C(v211);
          if (!*(v202 + 16))
          {
            goto LABEL_92;
          }
        }

        else
        {
          v202 = *(v201 + 24);
          v31 = *(v201 + 8);

          if (!*(v202 + 16))
          {
            goto LABEL_92;
          }
        }

        v212 = sub_1007C7EC0(v194);
        if ((v213 & 1) == 0)
        {
LABEL_92:

          v33 = v253;
          goto LABEL_93;
        }

        v214 = v258;
        v215 = *(v258 + 16);
        v216 = v240;
        v217 = v244;
        v215(v240, *(v202 + 56) + *(v258 + 72) * v212, v244);

        v218 = v242;
        (*(v214 + 32))(v242, v216, v217);
        result = [v260 boardItem];
        if (!result)
        {
          goto LABEL_128;
        }

        v255 = swift_dynamicCastClassUnconditional();
        v219 = v259;
        v215(v259, v218, v217);
        v221 = objc_allocWithZone(type metadata accessor for CRLCommandTableRowSetHeight(0));
        v31 = v257;
        v215(v257, v219, v217);
        v222 = v217;
        v223 = swift_getKeyPath();
        *&v221[*((swift_isaMask & *v221) + 0xD0)] = v255;
        v215(&v221[*((swift_isaMask & *v221) + 0xD8)], v31, v217);
        v224 = &v221[*((swift_isaMask & *v221) + 0xE0)];
        v220 = v197;
        *v224 = v220;
        *(v224 + 4) = 0;
        *&v221[*((swift_isaMask & *v221) + 0xE8)] = v223;
        v225 = &v221[*((swift_isaMask & *v221) + 0xF0)];
        *v225 = 0xD000000000000018;
        v225[1] = v249;
        v226 = sub_1005B981C(&qword_101A2D850);
        v262.receiver = v221;
        v262.super_class = v226;
        v227 = objc_msgSendSuper2(&v262, "init");
        v35 = *v245;
        (*v245)(v31, v222);
        (v35)(v219, v222);
        sub_100888700(v227, 0, 0, 4, 0);

        (v35)(v242, v222);
        v156 = v248;
        v29 = v256;
        v195 = v252;
        v33 = v253;
      }

LABEL_93:
      ++v194;
    }

    while (v33 != v194);
  }

LABEL_106:

  v22 = &unk_101A2D000;
  v21 = v246;
  v1 = v260;
LABEL_107:
  v52 = v247;
  sub_10088E600(0);
  v51 = v243;
LABEL_108:

  v21 = v52;
LABEL_109:

LABEL_110:
  v228 = &v1[v22[254]];
  swift_beginAccess();
  v229 = *v228;
  *v228 = 0u;
  *(v228 + 1) = 0u;
  sub_1011DABBC(v229);
  v230 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
  v231 = *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
  *v230 = 0u;
  *(v230 + 1) = 0u;
  *(v230 + 4) = 0;
  return sub_101210C44(v231);
}

void *sub_10120B634()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for CRLTableLayout();
  v2 = objc_msgSendSuper2(&v44, "childInfosForChildLayouts");
  if (v2)
  {
    v3 = v2;
    sub_1005B981C(&qword_1019F5720);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v45 = v4;
  result = [v1 layoutController];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v6 = result;
  v7 = [result canvas];

  if (v7)
  {
    if (![v7 isCanvasInteractive])
    {
LABEL_17:

      goto LABEL_18;
    }

    v8 = [v7 canvasController];
    if (!v8)
    {
      v42 = objc_opt_self();
      v12 = [v42 _atomicIncrementAssertCount];
      v43 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v43);
      StaticString.description.getter();
      v41 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v13 = String._bridgeToObjectiveC()();

      v14 = [v13 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v12;
      v19 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v19;
      v20 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v20;
      *(inited + 72) = v41;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v40;
      *(inited + 120) = v16;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 529;
      v22 = v43;
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = v22;
      v23 = v41;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      [v42 handleFailureInFunction:v29 file:v9 lineNumber:529 isFatal:0 format:v30 args:v28];

      v7 = v30;
      goto LABEL_16;
    }

    v9 = v8;
    v10 = [v8 additionalChildInfosForLayout:v1];
    sub_1005B981C(&qword_1019F5720);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_10;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      sub_10079AD4C(v11);
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  result = [v1 boardItem];
  if (!result)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v31 = result;
  type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v32 = sub_1011E328C();

  if (v32 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    v33 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v33 = v32;
  }

  sub_10079AD4C(v33);
  result = [v1 boardItem];
  if (!result)
  {
    goto LABEL_34;
  }

  v34 = result;
  v35 = swift_dynamicCastClassUnconditional();
  v36 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v37 = *(v35 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v37)
  {
    sub_10096C7D4();
    v37 = *(v35 + v36);
  }

  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  if (v38 >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    v39 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v39 = v38;
  }

  sub_10079AD4C(v39);
  return v45;
}

void sub_10120BD94(void *a1)
{
  if (a1)
  {
    type metadata accessor for CRLTableCellSelection(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = a1;
    v5 = [v4 mostSpecificSelectionOfClass:ObjCClassFromMetadata];
    if (v5)
    {
      v6 = v5;
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        sub_10120C9E4(v7);
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

LABEL_10:
        v52.origin.x = v9;
        v52.origin.y = v11;
        v52.size.width = v13;
        v52.size.height = v15;
        v49 = CGRectGetMinX(v52) + -1.0;
        v53.origin.x = v9;
        v53.origin.y = v11;
        v53.size.width = v13;
        v53.size.height = v15;
        CGRectGetMinY(v53);
        v54.origin.x = v9;
        v54.origin.y = v11;
        v54.size.width = v13;
        v54.size.height = v15;
        v43 = CGRectGetMaxX(v54) + 1.0;
        v55.origin.x = v9;
        v55.origin.y = v11;
        v55.size.width = v13;
        v55.size.height = v15;
        CGRectGetMaxY(v55);

        v44 = sub_100120604(v9, v11, v13, v15, v49);
        sub_100120604(v44, v45, v46, v47, v43);
        return;
      }
    }

    [v1 boundsForStandardKnobs];
    v9 = v39;
    v11 = v40;
    v13 = v41;
    v15 = v42;
    goto LABEL_10;
  }

  v48 = v1;
  v16 = objc_opt_self();
  v17 = [v16 _atomicIncrementAssertCount];
  v51 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v51);
  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v17;
  v26 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v26;
  v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v27;
  *(inited + 72) = v18;
  *(inited + 136) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 112) = v21;
  *(inited + 120) = v23;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v28;
  *(inited + 152) = 546;
  v29 = v51;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  *(inited + 192) = v29;
  v30 = v18;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v33, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v34 = swift_allocObject();
  v34[2] = 8;
  v34[3] = 0;
  v34[4] = 0;
  v34[5] = 0;
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  [v16 handleFailureInFunction:v36 file:v37 lineNumber:546 isFatal:0 format:v38 args:v35];

  v50.receiver = v48;
  v50.super_class = type metadata accessor for CRLTableLayout();
  objc_msgSendSuper2(&v50, "boundsForCollaboratorHUDForSelectionPath:", 0);
}

void *sub_10120C344(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&unk_101A2C890);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32[-v8];
  v10 = _s15CapsuleDatabaseVMa();
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v2 geometry];
  if (!result)
  {
    goto LABEL_43;
  }

  v15 = result;
  [result size];

  v34.origin.x = sub_10011ECB4();
  v33.x = a1;
  v33.y = a2;
  if (!CGRectContainsPoint(v34, v33))
  {
    return 0;
  }

  result = sub_1012054CC();
  v16 = result[2];
  if (v16)
  {
    v17 = 0;
    v18 = result[2];
    do
    {
      if (__OFSUB__(v18, v17))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v19 = v17 + (v18 - v17) / 2;
      if (__OFADD__(v17, (v18 - v17) / 2))
      {
        goto LABEL_35;
      }

      if (v19 >= v16)
      {
        goto LABEL_36;
      }

      if (*&result[v19 + 4] < a2)
      {
        v17 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_40;
        }

        v19 = v18;
      }

      v18 = v19;
    }

    while (v17 != v19);

    if (v19 >= v16)
    {
      goto LABEL_16;
    }
  }

  else
  {

LABEL_16:
    result = [v3 boardItem];
    if (!result)
    {
      goto LABEL_44;
    }

    v20 = result;
    type metadata accessor for CRLTableItem();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CRLTableItemData();
    v21 = swift_dynamicCastClassUnconditional();
    v22 = qword_101AD9268;
    swift_beginAccess();
    (*(v7 + 16))(v9, v21 + v22, v6);
    Capsule.root.getter();
    (*(v7 + 8))(v9, v6);
    sub_1005B981C(&unk_101A2C7D0);
    v23 = CROrderedDictionary.count.getter();

    result = sub_101210BE4(v13, _s15CapsuleDatabaseVMa);
    v19 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_41;
    }
  }

  result = sub_101205638();
  v24 = result[2];
  if (!v24)
  {

LABEL_31:
    result = [v3 boardItem];
    if (!result)
    {
      goto LABEL_45;
    }

    v28 = result;
    type metadata accessor for CRLTableItem();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CRLTableItemData();
    v29 = swift_dynamicCastClassUnconditional();
    v30 = qword_101AD9268;
    swift_beginAccess();
    (*(v7 + 16))(v9, v29 + v30, v6);
    Capsule.root.getter();
    (*(v7 + 8))(v9, v6);
    sub_1005B981C(&unk_101A2D830);
    v31 = CROrderedDictionary.count.getter();

    result = sub_101210BE4(v13, _s15CapsuleDatabaseVMa);
    if (__OFSUB__(v31, 1))
    {
      goto LABEL_42;
    }

    return v19;
  }

  v25 = 0;
  v26 = result[2];
  while (!__OFSUB__(v26, v25))
  {
    v27 = v25 + (v26 - v25) / 2;
    if (__OFADD__(v25, (v26 - v25) / 2))
    {
      goto LABEL_38;
    }

    if (v27 >= v24)
    {
      goto LABEL_39;
    }

    if (*&result[v27 + 4] < a1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_28:

        if (v27 >= v24)
        {
          goto LABEL_31;
        }

        return v19;
      }

      v27 = v26;
    }

    v26 = v27;
    if (v25 == v27)
    {
      goto LABEL_28;
    }
  }

LABEL_37:
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
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10120C854(unint64_t a1, unint64_t a2)
{
  sub_10120E014(a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    sub_1011DAB7C(*v5);

    result = sub_1011DABBC(v7);
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState);

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (*(v6 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = *v5;
  if (*v5)
  {
    v10 = v5[1];
    sub_1011DAB7C(*v5);

    result = sub_1011DABBC(v9);
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8);

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_6:
  if (*(v10 + 16) > a1)
  {
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_10120C9E4(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6CellIDVMa(0);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CRLTableCellRange(0);
  *&v10 = __chkstk_darwin(v48).n128_u64[0];
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v1;
  v13 = [v1 boardItem];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v52 = type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v53 = a1;
  v51 = OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range;
  sub_101210B80(a1 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range, v12);
  v50 = sub_1005B981C(&qword_101A2D840);
  CRRegister.wrappedValue.getter();
  sub_101210BE4(v12, type metadata accessor for CRLTableCellRange);
  v15 = &v9[*(v7 + 20)];
  v49 = *(v4 + 16);
  v49(v6, v15, v3);
  sub_101210BE4(v9, _s6CellIDVMa);
  v46 = sub_1011DB340(v6);
  v17 = v16;

  v18 = *(v4 + 8);
  v18(v6, v3);
  if (v17)
  {
LABEL_9:
    [v54 boundsForStandardKnobs];
    return;
  }

  v47 = v18;
  v19 = [v54 boardItem];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  swift_dynamicCastClassUnconditional();
  sub_101210B80(v53 + v51, v12);
  CRRegister.wrappedValue.getter();
  sub_101210BE4(v12, type metadata accessor for CRLTableCellRange);
  v49(v6, v9, v3);
  sub_101210BE4(v9, _s6CellIDVMa);
  v45 = sub_1011DB2A8(v6);
  v22 = v21;

  v47(v6, v3);
  if (v22)
  {
    goto LABEL_9;
  }

  v23 = [v54 boardItem];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  swift_dynamicCastClassUnconditional();
  sub_101210B80(v53 + v51, v12);
  CRRegister.wrappedValue.getter();
  sub_101210BE4(v12, type metadata accessor for CRLTableCellRange);
  v49(v6, &v9[*(v7 + 20)], v3);
  sub_101210BE4(v9, _s6CellIDVMa);
  v25 = sub_1011DB340(v6);
  v27 = v26;

  v47(v6, v3);
  if (v27)
  {
    goto LABEL_9;
  }

  v28 = [v54 boardItem];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v29 = v28;
  swift_dynamicCastClassUnconditional();
  sub_101210B80(v53 + v51, v12);
  CRRegister.wrappedValue.getter();
  sub_101210BE4(v12, type metadata accessor for CRLTableCellRange);
  v49(v6, v9, v3);
  sub_101210BE4(v9, _s6CellIDVMa);
  v30 = sub_1011DB2A8(v6);
  v32 = v31;

  v47(v6, v3);
  if (v32)
  {
    goto LABEL_9;
  }

  sub_10120C854(v45, v46);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10120C854(v30, v25);
  v56.origin.x = v41;
  v56.origin.y = v42;
  v56.size.width = v43;
  v56.size.height = v44;
  v55.origin.x = v34;
  v55.origin.y = v36;
  v55.size.width = v38;
  v55.size.height = v40;
  CGRectUnion(v55, v56);
}

void sub_10120CFA4(void *a1)
{
  v3 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v3 - 8);
  v5 = v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v131 - v7;
  v9 = type metadata accessor for CRLTableAnchorHint();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v142 = v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 parent];
  if (v13 && (v14 = v13, sub_100006370(0, &qword_101A2D848), v15 = v1, v16 = static NSObject.== infix(_:_:)(), v15, v14, (v16 & 1) != 0))
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = a1;
      v20 = [v18 info];
      if (!v20)
      {
LABEL_36:

        return;
      }

      v21 = v20;
      type metadata accessor for CRLBoardItem(0);
      v22 = swift_dynamicCastClass();
      if (!v22)
      {

        swift_unknownObjectRelease();
        return;
      }

      v23 = v22;
      v140 = v21;
      v24 = sub_1009AFD54(v22);
      v141 = v19;
      v138 = v18;
      v139 = v23;
      if ((v24 & 1) != 0 && (v25 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v26 = v25;
        type metadata accessor for CRLTableItem();
        while (1)
        {
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            break;
          }

          Strong = swift_unknownObjectWeakLoadStrong();

          v26 = Strong;
          if (!Strong)
          {
            goto LABEL_17;
          }
        }

        Strong = v27;
      }

      else
      {
        Strong = 0;
      }

LABEL_17:
      v51 = [v15 boardItem];
      if (!v51)
      {
        goto LABEL_66;
      }

      v52 = v51;
      v53 = type metadata accessor for CRLTableItem();
      swift_dynamicCastClassUnconditional();
      if (Strong)
      {
        v54 = Strong;
        v137 = v53;
        v55 = static NSObject.== infix(_:_:)();

        if (v55)
        {
          (*((swift_isaMask & *v139) + 0x128))();
          v58 = *(v10 + 48);
          v56 = v10 + 48;
          v57 = v58;
          v59 = v58(v5, 1, v9);
          v19 = v141;
          if (v59 == 1)
          {
            v135 = v57;
            v136 = v56;
            v134 = objc_opt_self();
            v60 = [v134 _atomicIncrementAssertCount];
            v143[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, v143);
            StaticString.description.getter();
            v132 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v61 = String._bridgeToObjectiveC()();

            v62 = [v61 lastPathComponent];

            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v131[0] = v64;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v133 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v60;
            v131[1] = inited + 32;
            v66 = sub_100006370(0, &qword_1019F4D30);
            *(inited + 96) = v66;
            v67 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(inited + 104) = v67;
            v68 = v132;
            *(inited + 72) = v132;
            *(inited + 136) = &type metadata for String;
            v69 = sub_1000053B0();
            v70 = v131[0];
            *(inited + 112) = v63;
            *(inited + 120) = v70;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v69;
            *(inited + 152) = 665;
            v71 = v143[0];
            *(inited + 216) = v66;
            *(inited + 224) = v67;
            *(inited + 192) = v71;
            v72 = v68;
            v73 = v71;
            v74 = static os_log_type_t.error.getter();
            v75 = v133;
            sub_100005404(v133, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v76 = static os_log_type_t.error.getter();
            sub_100005404(v75, &_mh_execute_header, v76, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v77 = swift_allocObject();
            v77[2] = 8;
            v77[3] = 0;
            v77[4] = 0;
            v77[5] = 0;
            v133 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v78 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v79 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v80 = String._bridgeToObjectiveC()();

            [v134 handleFailureInFunction:v78 file:v79 lineNumber:665 isFatal:0 format:v80 args:v133];

            v19 = v141;
            v57 = v135;
          }

          sub_10003DFF8(v5, v8, &unk_101A09DD0);
          if (v57(v8, 1, v9) == 1)
          {
            swift_unknownObjectRelease();

            sub_10000CAAC(v8, &unk_101A09DD0);
            return;
          }

          v81 = v142;
          sub_10074A42C(v8, v142);
          v82 = [v15 boardItem];
          if (!v82)
          {
            goto LABEL_67;
          }

          v83 = v82;
          swift_dynamicCastClassUnconditional();
          sub_1011DB114();

          v84 = sub_1011DB2A8(v81);
          if (v85)
          {

            swift_unknownObjectRelease();
            sub_101210BE4(v81, type metadata accessor for CRLTableAnchorHint);
            return;
          }

          v86 = v84;
          v87 = _s6CellIDVMa(0);
          v88 = sub_1011DB340(&v81[*(v87 + 20)]);
          v90 = v89;

          if (v90)
          {
            sub_101210BE4(v81, type metadata accessor for CRLTableAnchorHint);
            swift_unknownObjectRelease();
            goto LABEL_36;
          }

          v137 = v88;
          v91 = &v81[*(v9 + 20)];
          v92 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:*(v91 + 20) size:*(v91 + 21) widthValid:*(v91 + 22) heightValid:*(v91 + 23) horizontalFlip:*v91 verticalFlip:v91[1] angle:{v91[2], v91[3], v91[4]}];
          v93 = v138;
          v94 = [v138 layoutState];
          v95 = [v93 layoutState];
          v96 = [v93 layoutState];
          if (v94 == 4 || v95 == 2)
          {
            v101 = [v93 originalPureGeometry];
            if (!v101)
            {
LABEL_68:
              __break(1u);
              return;
            }

            v102 = v101;
            [v101 frame];
          }

          else
          {
            if (v96 == 1)
            {
              v97 = v141;
              v98 = [v141 geometry];
              [v98 frame];
              v100 = v99;

              goto LABEL_45;
            }

            v102 = (*((swift_isaMask & *v139) + 0xE0))();
            [v102 position];
          }

          v100 = v103;

          v97 = v141;
LABEL_45:
          v104 = v137;
          sub_101210784(v143);
          v105 = v143[0];
          if (*(v143[0] + 2))
          {
            v106 = sub_1007CF110(v86, v104);
            v107 = 0.0;
            if (v108)
            {
              v109 = v105[7] + 32 * v106;
              v110 = *v109;
              v111 = *(v109 + 8);
              v113 = *(v109 + 16);
              v112 = *(v109 + 24);
              v114 = &v15[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
              swift_beginAccess();
              v115 = *v114;
              if (*v114)
              {
                sub_1011DAB7C(*v114);

                v104 = v137;
                sub_1011DABBC(v116);
              }

              else
              {
                v115 = *&v15[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
              }

              if ((v104 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v104 < *(v115 + 16))
              {
                v117 = *(v115 + 8 * v104 + 32);

                v118 = *v114;
                if (*v114)
                {
                  v119 = v114[1];
                  sub_1011DAB7C(v118);

                  sub_1011DABBC(v118);
                }

                else
                {
                  v119 = *&v15[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8];
                }

                v97 = v141;
                if ((v86 & 0x8000000000000000) == 0)
                {
                  v104 = v137;
                  if (v86 < *(v119 + 16))
                  {

                    v144.origin.x = v110;
                    v144.origin.y = v111;
                    v144.size.width = v113;
                    v144.size.height = v112;
                    MaxX = CGRectGetMaxX(v144);
                    v145.size.width = v113;
                    v121 = MaxX;
                    v145.origin.x = v110;
                    v145.origin.y = v111;
                    v145.size.height = v112;
                    CGRectGetMaxY(v145);
                    if (v117 >= v121)
                    {
                      v107 = 0.0;
                    }

                    else
                    {
                      v107 = v121 - v117;
                    }

                    goto LABEL_61;
                  }

                  goto LABEL_65;
                }

LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

              __break(1u);
              goto LABEL_64;
            }
          }

          else
          {
            v107 = 0.0;
          }

LABEL_61:
          [v92 position];
          v124 = sub_10011F31C(v122, v123, v107);
          v126 = sub_10011F31C(v124, v125, v100);
          v128 = v127;
          sub_10120E014(v86, v104);
          v130 = v129;
          swift_unknownObjectRelease();

          sub_10011F334(v126, v128, v130);
          sub_101210BE4(v81, type metadata accessor for CRLTableAnchorHint);
          return;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v142 = objc_opt_self();
    v29 = [v142 _atomicIncrementAssertCount];
    v143[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v143);
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146CA70;
    *(v37 + 56) = &type metadata for Int32;
    *(v37 + 64) = &protocol witness table for Int32;
    *(v37 + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(v37 + 96) = v38;
    v39 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v37 + 104) = v39;
    *(v37 + 72) = v30;
    *(v37 + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(v37 + 112) = v33;
    *(v37 + 120) = v35;
    *(v37 + 176) = &type metadata for UInt;
    *(v37 + 184) = &protocol witness table for UInt;
    *(v37 + 144) = v40;
    *(v37 + 152) = 652;
    v41 = v143[0];
    *(v37 + 216) = v38;
    *(v37 + 224) = v39;
    *(v37 + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v37);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "Should not ask for an offsetToApply for a layout which is not a direct child.", 77, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v142 handleFailureInFunction:v48 file:v49 lineNumber:652 isFatal:0 format:v50 args:v47];
  }
}

void sub_10120E014(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [v2 boundsForStandardKnobs];
    CGRectGetMinX(v9);
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_11:
    [v2 boundsForStandardKnobs];
    CGRectGetMinY(v10);
    return;
  }

  v5 = sub_101205638();
  v6 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= *(v5 + 2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = sub_1012054CC();
  v8 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8 < *(v7 + 2))
    {

      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_10120E0F8(unint64_t a1)
{
  v6 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell];
  if ((v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16] & 1) == 0)
  {
    v7 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed];
    if ((v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed + 32] & 1) == 0)
    {
      v32 = *v6;
      v31 = v6[1];
      v33 = v7[3];
      v63 = v7[1];
      v64 = v7[2];
      v62 = *v7;
      sub_10120F4E4(a1);
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      sub_10120E014(v32, v31);
      v61 = v43;
      if ((v31 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v44 = *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
        if (v31 < *(v44 + 16))
        {
          if ((v32 & 0x8000000000000000) == 0)
          {
            v45 = *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8];
            if (v32 < *(v45 + 16))
            {
              v46 = v42;
              v5 = *(v44 + 8 * v31 + 32);
              v47 = *(v45 + 8 * v32 + 32);
              v66.origin.x = v35;
              v66.origin.y = v37;
              v66.size.width = v39;
              v66.size.height = v41;
              v48 = CGRectGetMaxX(v66) - v61;
              if (v5 <= v48)
              {
                v5 = v48;
              }

              v67.origin.x = v35;
              v67.origin.y = v37;
              v67.size.width = v39;
              v67.size.height = v41;
              v49 = CGRectGetMaxY(v67) - v46;
              if (v47 > v49)
              {
                v35 = v47;
              }

              else
              {
                v35 = v49;
              }

              if (!sub_10011EF14(v62, v63, v64, v33, v61, v46, v5, v35))
              {
                v68.origin.x = v61;
                v68.origin.y = v46;
                v68.size.width = v5;
                v68.size.height = v35;
                v60 = v35;
                v35 = v61;
                MaxX = CGRectGetMaxX(v68);
                v69.origin.x = v62;
                v69.origin.y = v63;
                v69.size.width = v64;
                v69.size.height = v33;
                if (MaxX >= CGRectGetMaxX(v69))
                {
                  v70.origin.x = v61;
                  v70.origin.y = v46;
                  v70.size.width = v5;
                  v35 = v60;
                  v70.size.height = v60;
                  MaxY = CGRectGetMaxY(v70);
                  v71.origin.x = v62;
                  v71.origin.y = v63;
                  v71.size.width = v64;
                  v71.size.height = v33;
                  if (MaxY >= CGRectGetMaxY(v71))
                  {
                    return;
                  }

                  v31 = sub_101207514();
                  if (!*v56)
                  {
                    (v31)(v65, 0);
                    goto LABEL_39;
                  }

                  v3 = v56;
                  v2 = *(v56 + 1);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v3 + 1) = v2;
                  if (isUniquelyReferenced_nonNull_native)
                  {
LABEL_28:
                    if (v32 >= *(v2 + 2))
                    {
                      __break(1u);
                      return;
                    }

                    *&v2[8 * v32 + 32] = v35;
                    (v31)(v65, 0);
                    goto LABEL_39;
                  }

LABEL_52:
                  v2 = sub_10113CF98(v2);
                  *(v3 + 1) = v2;
                  goto LABEL_28;
                }

                v32 = sub_101207514();
                v2 = *v53;
                if (!*v53)
                {
                  (v32)(v65, 0);
                  goto LABEL_39;
                }

                v3 = v53;
                v54 = swift_isUniquelyReferenced_nonNull_native();
                *v3 = v2;
                if (v54)
                {
LABEL_23:
                  if (v31 < *(v2 + 2))
                  {
                    *&v2[8 * v31 + 32] = v5;
                    (v32)(v65, 0);
LABEL_39:
                    [v1 invalidateSize];
                    goto LABEL_40;
                  }

                  __break(1u);
                  goto LABEL_52;
                }

LABEL_50:
                v2 = sub_10113CF98(v2);
                *v3 = v2;
                goto LABEL_23;
              }

              v2 = sub_101207514();
              if (!*v50)
              {
                (v2)(v65, 0);
                goto LABEL_31;
              }

              v4 = v50;
              v3 = v50[1];
              v51 = swift_isUniquelyReferenced_nonNull_native();
              v4[1] = v3;
              if (v51)
              {
LABEL_18:
                if (v32 >= *(v3 + 2))
                {
                  __break(1u);
LABEL_48:
                  v2 = sub_10113CF98(v2);
                  *v3 = v2;
LABEL_33:
                  if (v31 < *(v2 + 2))
                  {
                    *&v2[8 * v31 + 32] = v5;
                    (v32)(v65, 0);
LABEL_36:
                    [v1 v4[395]];
LABEL_40:
                    sub_10120617C();
                    return;
                  }

                  __break(1u);
                  goto LABEL_50;
                }

                *&v3[8 * v32 + 32] = v35;
                (v2)(v65, 0);
LABEL_31:
                v4 = &selRef_initWithObject_;
                [v1 invalidateSize];
                sub_10120617C();
                v32 = sub_101207514();
                v2 = *v58;
                if (!*v58)
                {
                  (v32)(v65, 0);
                  goto LABEL_36;
                }

                v3 = v58;
                v59 = swift_isUniquelyReferenced_nonNull_native();
                *v3 = v2;
                if (v59)
                {
                  goto LABEL_33;
                }

                goto LABEL_48;
              }

LABEL_46:
              v3 = sub_10113CF98(v3);
              v4[1] = v3;
              goto LABEL_18;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  v8 = objc_opt_self();
  v9 = [v8 _atomicIncrementAssertCount];
  v65[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v65);
  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v11 lastPathComponent];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v9;
  v18 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v18;
  v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v19;
  *(inited + 72) = v10;
  *(inited + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(inited + 112) = v13;
  *(inited + 120) = v15;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v20;
  *(inited + 152) = 741;
  v21 = v65[0];
  *(inited + 216) = v18;
  *(inited + 224) = v19;
  *(inited + 192) = v21;
  v22 = v10;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v25, "Fail to expand dynamic anchor cell due to missing dynamicAnchorCell or largestDynamicAnchorCellBoundAllowed.", 108, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v26[4] = 0;
  v26[5] = 0;
  v27 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  [v8 handleFailureInFunction:v28 file:v29 lineNumber:741 isFatal:0 format:v30 args:v27];
}

void sub_10120E8DC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v100 = *(v6 - 1);
  v101 = v6;
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 boardItem];
  if (!v10)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v11 = v10;
  v12 = type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v13 = sub_1011DB2A8(a1);
  v15 = v14;

  if (v15)
  {
    return;
  }

  v16 = [v3 boardItem];
  if (!v16)
  {
    goto LABEL_42;
  }

  v17 = v16;
  swift_dynamicCastClassUnconditional();
  v98 = *(_s6CellIDVMa(0) + 20);
  v18 = sub_1011DB340(a1 + v98);
  v20 = v19;

  if (v20)
  {
    return;
  }

  v21 = [a2 layout];
  [v21 frameForCulling];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v3;
  sub_10120E014(v13, v18);
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v33 = *&v3[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
  if (v18 >= *(v33 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = *&v3[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8];
  if (v13 >= *(v34 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = v31;
  v36 = v32;
  v37 = *(v33 + 8 * v18 + 32);
  v38 = *(v34 + 8 * v13 + 32);
  v104.origin.x = v23;
  v104.origin.y = v25;
  v104.size.width = v27;
  v104.size.height = v29;
  v39 = CGRectGetMaxX(v104) - v35;
  v105.origin.x = v23;
  v105.origin.y = v25;
  v105.size.width = v27;
  v105.size.height = v29;
  v40 = CGRectGetMaxY(v105) - v36;
  if (v39 > v37)
  {
    v41 = v39 + 28.0;
  }

  else
  {
    v41 = v37;
  }

  if (v40 > v38)
  {
    v42 = v40 + 28.0;
  }

  else
  {
    v42 = v38;
  }

  v43 = [v3 layoutController];
  if (!v43)
  {
    goto LABEL_43;
  }

  v44 = v43;
  v99 = [v43 canvas];

  if (!v99)
  {
    return;
  }

  if (![v99 isCanvasInteractive])
  {
    v57 = v99;

    return;
  }

  v45 = [v99 canvasController];
  if (!v45)
  {
    v101 = objc_opt_self();
    LODWORD(a1) = [v101 _atomicIncrementAssertCount];
    v102[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v102);
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    v59 = [v58 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v60;

    if (qword_1019F20A0 == -1)
    {
LABEL_31:
      v61 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = a1;
      v63 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v63;
      v64 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v64;
      *(inited + 72) = v30;
      *(inited + 136) = &type metadata for String;
      v65 = sub_1000053B0();
      *(inited + 112) = v12;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v65;
      *(inited + 152) = 782;
      v66 = v102[0];
      *(inited + 216) = v63;
      *(inited + 224) = v64;
      *(inited + 192) = v66;
      v67 = v30;
      v68 = v66;
      v69 = static os_log_type_t.error.getter();
      sub_100005404(v61, &_mh_execute_header, v69, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v70 = static os_log_type_t.error.getter();
      sub_100005404(v61, &_mh_execute_header, v70, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v71 = swift_allocObject();
      v71[2] = 8;
      v71[3] = 0;
      v71[4] = 0;
      v71[5] = 0;
      v72 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v73 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v74 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      [v101 handleFailureInFunction:v73 file:v74 lineNumber:782 isFatal:0 format:v75 args:v72];

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_31;
  }

  v46 = v45;
  v47 = [v45 commandController];
  if (v47)
  {
    v48 = v47;
    sub_10088E3FC(0);
    if (v37 >= v41)
    {
LABEL_23:
      if (v38 >= v42)
      {
LABEL_26:
        sub_10088E600(0);

        return;
      }

      if ([v3 boardItem])
      {
        v53 = swift_dynamicCastClassUnconditional();
        (v100)[2](v9, a1, v101);
        v55 = objc_allocWithZone(type metadata accessor for CRLCommandTableRowSetHeight(0));
        v54 = v42;
        v56 = sub_1006B77E4(v53, v9, v54);
        sub_100888700(v56, 0, 0, 4, 0);

        goto LABEL_26;
      }

      goto LABEL_45;
    }

    if ([v3 boardItem])
    {
      v49 = swift_dynamicCastClassUnconditional();
      (v100)[2](v9, a1 + v98, v101);
      v50 = v41;
      v51 = objc_allocWithZone(type metadata accessor for CRLCommandTableColumnSetWidth(0));
      v52 = sub_1006BA49C(v49, v9, v50);
      sub_100888700(v52, 0, 0, 4, 0);

      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  v100 = objc_opt_self();
  v76 = [v100 _atomicIncrementAssertCount];
  v102[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v102);
  StaticString.description.getter();
  v101 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v77 = String._bridgeToObjectiveC()();

  v78 = [v77 lastPathComponent];

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v82 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_10146CA70;
  *(v83 + 56) = &type metadata for Int32;
  *(v83 + 64) = &protocol witness table for Int32;
  *(v83 + 32) = v76;
  v84 = sub_100006370(0, &qword_1019F4D30);
  *(v83 + 96) = v84;
  v85 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v83 + 104) = v85;
  v86 = v101;
  *(v83 + 72) = v101;
  *(v83 + 136) = &type metadata for String;
  v87 = sub_1000053B0();
  *(v83 + 112) = v79;
  *(v83 + 120) = v81;
  *(v83 + 176) = &type metadata for UInt;
  *(v83 + 184) = &protocol witness table for UInt;
  *(v83 + 144) = v87;
  *(v83 + 152) = 783;
  v88 = v102[0];
  *(v83 + 216) = v84;
  *(v83 + 224) = v85;
  *(v83 + 192) = v88;
  v89 = v86;
  v90 = v88;
  v91 = static os_log_type_t.error.getter();
  sub_100005404(v82, &_mh_execute_header, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v83);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v92 = static os_log_type_t.error.getter();
  sub_100005404(v82, &_mh_execute_header, v92, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v93 = swift_allocObject();
  v93[2] = 8;
  v93[3] = 0;
  v93[4] = 0;
  v93[5] = 0;
  v94 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v95 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v96 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v97 = String._bridgeToObjectiveC()();

  [v100 handleFailureInFunction:v95 file:v96 lineNumber:783 isFatal:0 format:v97 args:v94];
}

unint64_t sub_10120F4E4(unint64_t result)
{
  v2 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v23 = CGRectNull.origin.y;
    v21 = CGRectNull.size.height;
    v22 = CGRectNull.size.width;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v28.origin.y = v23;
      v28.origin.x = CGRectNull.origin.x;
      v28.size.height = v21;
      v28.size.width = v22;
      v11 = CGRectEqualToRect(v25, v28);
      v12 = [v10 layout];
      [v12 frameForCullingInRoot];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      if (!v11)
      {
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v29.origin.x = v14;
        v29.origin.y = v16;
        v29.size.width = v18;
        v29.size.height = v20;
        v27 = CGRectUnion(v26, v29);
        v14 = v27.origin.x;
        v16 = v27.origin.y;
        v18 = v27.size.width;
        v20 = v27.size.height;
      }

      ++v8;

      x = v14;
      y = v16;
      width = v18;
      height = v20;
    }

    while (v3 != v8);
  }

  else
  {
    v14 = CGRectNull.origin.x;
    v16 = CGRectNull.origin.y;
    v18 = CGRectNull.size.width;
    v20 = CGRectNull.size.height;
  }

  return [v1 convertNaturalRectFromUnscaledCanvas:{v14, v16, v18, v20}];
}

void sub_10120F71C()
{
  v1 = [v0 layoutController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 canvas];

    if (!v3 || (v4 = [v3 canvasController], v3, !v4) || (v5 = objc_msgSend(v4, "editorController"), v4, !v5) || (v6 = objc_msgSend(v5, "selectionPath"), v5, !v6))
    {
      v22.receiver = v0;
      v22.super_class = type metadata accessor for CRLTableLayout();
      objc_msgSendSuper2(&v22, "frameForMiniFormatterPositioning");
      return;
    }

    type metadata accessor for CRLTableCellSelection(0);
    v7 = [v6 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
    if (v7)
    {
      v8 = v7;
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        sub_10120C9E4(v9);
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v18 = v17;
        v19 = v15;
        v20 = v13;
        v21 = v11;
LABEL_12:
        [v0 convertNaturalRectToUnscaledCanvas:{v21, v20, v19, v18}];

        return;
      }
    }

    [v0 boundsForStandardKnobs];
    goto LABEL_12;
  }

  __break(1u);
}

id sub_10120F8D8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = sub_1005B981C(&qword_101A10760);
  __chkstk_darwin(v11 - 8);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  v17 = sub_1005B981C(&unk_101A2C890);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v108 - v19;
  v21 = _s15CapsuleDatabaseVMa();
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v5 boundsForStandardKnobs];
  if (!sub_10011FF38(a2, a3, a4, a5, v25, v26, v27, v28))
  {
    v59 = _s6CellIDVMa(0);
    v60 = *(*(v59 - 8) + 56);

    return v60(a1, 1, 1, v59);
  }

  v121 = v17;
  v109 = v13;
  v123.origin.x = a2;
  v123.origin.y = a3;
  v123.size.width = a4;
  v123.size.height = a5;
  MinX = CGRectGetMinX(v123);
  v124.origin.x = a2;
  v124.origin.y = a3;
  v124.size.width = a4;
  v124.size.height = a5;
  MinY = CGRectGetMinY(v124);
  v125.origin.x = a2;
  v125.origin.y = a3;
  v125.size.width = a4;
  v125.size.height = a5;
  MaxX = CGRectGetMaxX(v125);
  v126.origin.x = a2;
  v126.origin.y = a3;
  v126.size.width = a4;
  v126.size.height = a5;
  MaxY = CGRectGetMaxY(v126);
  v33 = sub_10120C344(MinX, MinY);
  v35 = v34;
  v37 = v36;
  result = sub_10120C344(MaxX, MaxY);
  v112 = result;
  v116 = v40;
  if (v37)
  {
    v41 = 0;
  }

  else
  {
    v41 = v35;
  }

  v118 = v41;
  v110 = a1;
  v111 = v16;
  v113 = v5;
  if (v39)
  {
    v117 = v37;
    v119 = v33;
    v120 = v21;
    result = [v5 boardItem];
    if (!result)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    v42 = result;
    v114 = COERCE_DOUBLE(type metadata accessor for CRLTableItem());
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CRLTableItemData();
    v43 = swift_dynamicCastClassUnconditional();
    v44 = qword_101AD9268;
    swift_beginAccess();
    v45 = v43 + v44;
    v46 = v121;
    v47 = *(v18 + 16);
    v47(v20, v45, v121);
    Capsule.root.getter();
    v48 = *(v18 + 8);
    *&v115 = v18 + 8;
    v48(v20, v46);
    v49 = v48;
    sub_1005B981C(&unk_101A2D830);
    v50 = CROrderedDictionary.count.getter();

    result = sub_101210BE4(v24, _s15CapsuleDatabaseVMa);
    v116 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
      goto LABEL_88;
    }

    result = [v113 boardItem];
    if (!result)
    {
      goto LABEL_91;
    }

    v51 = result;
    if (v117)
    {
      v52 = 0;
    }

    else
    {
      v52 = v119;
    }

    swift_dynamicCastClassUnconditional();
    v53 = swift_dynamicCastClassUnconditional();
    v54 = qword_101AD9268;
    swift_beginAccess();
    v55 = v53 + v54;
    v56 = v121;
    v47(v20, v55, v121);
    Capsule.root.getter();
    v49(v20, v56);
    sub_1005B981C(&unk_101A2C7D0);
    v57 = CROrderedDictionary.count.getter();

    result = sub_101210BE4(v24, _s15CapsuleDatabaseVMa);
    v112 = v57 - 1;
    if (__OFSUB__(v57, 1))
    {
      goto LABEL_89;
    }

    v58 = v52;
    v5 = v113;
  }

  else if (v37)
  {
    v58 = 0;
  }

  else
  {
    v58 = v33;
  }

  if (v116 < v118 || v112 < v58)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v58 < 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v114 = a2;
  v115 = a4;
  v61 = 0;
  v62 = &v5[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  v120 = &v5[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
  v121 = 0;
  v117 = v58 == 0;
  v63 = 1;
  v64 = 0.0;
  v65 = v58;
  while (2)
  {
    swift_beginAccess();
    v67 = v118;
    v119 = v65;
    do
    {
      if (v67)
      {
        v68 = *v62;
        if (*v62)
        {
          sub_1011DAB7C(*v62);

          sub_1011DABBC(v69);
        }

        else
        {
          v68 = *v120;
        }

        v71 = *(v68 + 16);
        v72 = _swiftEmptyArrayStorage;
        if (v71 >= 2)
        {
          v79 = (v68 + 32);
          v80 = v71 - 1;
          v81 = 0.0;
          do
          {
            v82 = *v79;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = sub_100B37F88(0, *(v72 + 2) + 1, 1, v72);
            }

            v84 = *(v72 + 2);
            v83 = *(v72 + 3);
            if (v84 >= v83 >> 1)
            {
              v72 = sub_100B37F88((v83 > 1), v84 + 1, 1, v72);
            }

            v81 = v81 + v82;
            *(v72 + 2) = v84 + 1;
            *&v72[8 * v84 + 32] = v81;
            ++v79;
            --v80;
          }

          while (v80);
        }

        v73 = v67 - 1;
        if (__OFSUB__(v67, 1))
        {
          goto LABEL_82;
        }

        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_83;
        }

        if (v73 >= *(v72 + 2))
        {
          goto LABEL_84;
        }

        v70 = *&v72[8 * v73 + 32];

        v65 = v119;
      }

      else
      {
        [v113 boundsForStandardKnobs];
        v70 = CGRectGetMinX(v127);
      }

      if (v117)
      {
        [v113 boundsForStandardKnobs];
        v74 = CGRectGetMinY(v128);
        v75 = *v62;
        if (*v62)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v77 = *v62;
        if (*v62)
        {
          v78 = v62[1];
          sub_1011DAB7C(*v62);

          sub_1011DABBC(v77);
        }

        else
        {
          v78 = v120[1];
        }

        v85 = *(v78 + 16);
        v86 = _swiftEmptyArrayStorage;
        if (v85 >= 2)
        {
          v98 = (v78 + 32);
          v99 = v85 - 1;
          v100 = 0.0;
          do
          {
            v101 = *v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v86 = sub_100B37F88(0, *(v86 + 2) + 1, 1, v86);
            }

            v103 = *(v86 + 2);
            v102 = *(v86 + 3);
            if (v103 >= v102 >> 1)
            {
              v86 = sub_100B37F88((v102 > 1), v103 + 1, 1, v86);
            }

            v100 = v100 + v101;
            *(v86 + 2) = v103 + 1;
            *&v86[8 * v103 + 32] = v100;
            ++v98;
            --v99;
          }

          while (v99);
        }

        v65 = v119;
        if (v119 > *(v86 + 2))
        {
          goto LABEL_85;
        }

        v74 = *&v86[8 * v119 + 24];

        v75 = *v62;
        if (*v62)
        {
LABEL_38:
          sub_1011DAB7C(v75);

          result = sub_1011DABBC(v76);
          if (v118 < 0)
          {
            goto LABEL_79;
          }

          goto LABEL_54;
        }
      }

      v75 = *v120;

      if (v118 < 0)
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_54:
      if (v67 >= *(v75 + 16))
      {
        goto LABEL_80;
      }

      v87 = *(v75 + 8 * v67 + 32);

      v88 = *v62;
      if (*v62)
      {
        v89 = v62[1];
        sub_1011DAB7C(*v62);

        result = sub_1011DABBC(v88);
      }

      else
      {
        v89 = v120[1];
      }

      if (v65 >= *(v89 + 16))
      {
        goto LABEL_81;
      }

      v90 = *(v89 + 8 * v65 + 32);

      v129.origin.x = v70;
      v129.origin.y = v74;
      v129.size.width = v87;
      v129.size.height = v90;
      v132.origin.x = v114;
      v132.origin.y = a3;
      v132.size.width = v115;
      v132.size.height = a5;
      v130 = CGRectIntersection(v129, v132);
      x = v130.origin.x;
      y = v130.origin.y;
      width = v130.size.width;
      height = v130.size.height;
      v95 = CGRectGetWidth(v130);
      v131.origin.x = x;
      v131.origin.y = y;
      v131.size.width = width;
      v131.size.height = height;
      v96 = v95 * CGRectGetHeight(v131);
      if (v64 < v96)
      {
        v61 = v65;
      }

      v97 = v121;
      if (v64 < v96)
      {
        v97 = v67;
      }

      v121 = v97;
      v63 &= v64 >= v96;
      if (v64 < v96)
      {
        v64 = v96;
      }

      v66 = v67++ == v116;
    }

    while (!v66);
    v117 = 0;
    v66 = v65++ == v112;
    if (!v66)
    {
      continue;
    }

    break;
  }

  v104 = _s6CellIDVMa(0);
  v105 = v111;
  (*(*(v104 - 8) + 56))(v111, 1, 1, v104);
  if ((v63 & 1) == 0)
  {
    result = [v113 boardItem];
    if (!result)
    {
      goto LABEL_92;
    }

    v106 = result;
    type metadata accessor for CRLTableItem();
    swift_dynamicCastClassUnconditional();
    v107 = v109;
    sub_1011DB87C(v61, v121, v109);

    sub_10000CAAC(v105, &qword_101A10760);
    sub_10003DFF8(v107, v105, &qword_101A10760);
  }

  return sub_10003DFF8(v105, v110, &qword_101A10760);
}

id sub_1012104C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTableLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1012105B8(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_cellBorderPadding] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_tableBorderPadding] = 0x4039000000000000;
  v4 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_invalidInfoTableState] = 0;
  v6 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v1[OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState];
  type metadata accessor for CRLTableItem();
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  v9 = sub_1011E5958();
  v10 = sub_1011E3CA8();
  v11 = *(**(v8 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v13 = v11(v12);

  [v13 position];
  v15 = v14;
  v17 = v16;

  v18 = &v2[OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState];
  *v18 = v9;
  v18[1] = v10;
  v18[2] = v15;
  v18[3] = v17;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CRLTableLayout();
  result = objc_msgSendSuper2(&v21, "initWithInfo:", a1);
  if (result)
  {
    v20 = result;
    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_101210784@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState);
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform14CRLTableLayout__contentState);
  if (!v4)
  {
    sub_101207744();
    v4 = *v3;
    if (!*v3)
    {
      v6 = objc_opt_self();
      v7 = [v6 _atomicIncrementAssertCount];
      v28 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v28);
      StaticString.description.getter();
      v8 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      v10 = [v9 lastPathComponent];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v14 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v7;
        v16 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v16;
        v17 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v17;
        *(inited + 72) = v8;
        *(inited + 136) = &type metadata for String;
        v18 = sub_1000053B0();
        *(inited + 112) = v11;
        *(inited + 120) = v13;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v18;
        *(inited + 152) = 377;
        v19 = v28;
        *(inited + 216) = v16;
        *(inited + 224) = v17;
        *(inited + 192) = v19;
        v20 = v8;
        v21 = v19;
        v22 = static os_log_type_t.error.getter();
        v13 = &_mh_execute_header;
        sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v23 = static os_log_type_t.error.getter();
        sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v8 = swift_allocObject();
        v8[2] = 8;
        v8[3] = 0;
        v8[4] = 0;
        v8[5] = 0;
        v24 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v25 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v11 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v7 = v26;
        v27 = String._bridgeToObjectiveC()();

        [v6 handleFailureInFunction:v25 file:v11 lineNumber:377 isFatal:0 format:v27 args:v24];

        __break(1u);
LABEL_6:
        swift_once();
      }
    }
  }

  *a1 = v4;
  *(a1 + 8) = *(v3 + 1);
  result = *(v3 + 3);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_101210B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLTableCellRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101210BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101210C44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_101210C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101210D34(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A2D8D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32[-v6];
  sub_100020E58(a1, a1[3]);
  sub_101211950();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[11];
  v9 = v2[13];
  v78 = v2[12];
  v79 = v9;
  v10 = v2[7];
  v11 = v2[9];
  v74 = v2[8];
  v75 = v11;
  v12 = v2[9];
  v13 = v2[11];
  v76 = v2[10];
  v77 = v13;
  v14 = v2[3];
  v15 = v2[5];
  v70 = v2[4];
  v71 = v15;
  v16 = v2[5];
  v17 = v2[7];
  v72 = v2[6];
  v73 = v17;
  v18 = v2[1];
  v67[0] = *v2;
  v67[1] = v18;
  v19 = v2[3];
  v21 = *v2;
  v20 = v2[1];
  v68 = v2[2];
  v69 = v19;
  v22 = v2[13];
  v58 = v78;
  v59 = v22;
  v54 = v74;
  v55 = v12;
  v56 = v76;
  v57 = v8;
  v50 = v70;
  v51 = v16;
  v52 = v72;
  v53 = v10;
  v46 = v21;
  v47 = v20;
  v80 = *(v2 + 28);
  v60 = *(v2 + 28);
  v48 = v68;
  v49 = v14;
  v45 = 0;
  sub_100B98B48(v67, v43);
  sub_100B93B78();
  v23 = v81;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v43[12] = v58;
  v43[13] = v59;
  v44 = v60;
  v43[8] = v54;
  v43[9] = v55;
  v43[10] = v56;
  v43[11] = v57;
  v43[4] = v50;
  v43[5] = v51;
  v43[6] = v52;
  v43[7] = v53;
  v43[0] = v46;
  v43[1] = v47;
  v43[2] = v48;
  v43[3] = v49;
  sub_100B98B80(v43);
  if (!v23)
  {
    v36 = *(v2 + 232);
    LOBYTE(v34[0]) = 1;
    sub_1012046B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v36) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v36) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v2[19];
    v25 = v2[21];
    v64 = v2[20];
    v65 = v25;
    v26 = v2[21];
    v66 = v2[22];
    v27 = v2[17];
    v61[0] = v2[16];
    v61[1] = v27;
    v28 = v2[19];
    v30 = v2[16];
    v29 = v2[17];
    v62 = v2[18];
    v63 = v28;
    v40 = v64;
    v41 = v26;
    v42 = v2[22];
    v36 = v30;
    v37 = v29;
    v38 = v62;
    v39 = v24;
    v35 = 4;
    sub_101211F80(v61, v34);
    sub_100A1D770();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v34[4] = v40;
    v34[5] = v41;
    v34[6] = v42;
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    sub_10000CAAC(v34, &qword_1019FFF80);
    v33 = *(v2 + 46);
    v32[7] = 5;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_1012111B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D34E0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_101211240()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014D34E0[v1]);
  return Hasher._finalize()();
}

unint64_t sub_1012112A4()
{
  v1 = 0x7453726564726F62;
  v2 = *v0;
  v3 = 0xD000000000000010;
  v4 = 0x6C6946726F6C6F63;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v2 == 1)
  {
    v5 = 0x7453726564726F62;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10121136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1012126D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1012113BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1012118F8();
  v5 = sub_101211950();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_101211414(uint64_t a1)
{
  v2 = sub_101211950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101211450(uint64_t a1)
{
  v2 = sub_101211950();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10121148C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_101210D30(v4, __dst) & 1;
}

void *sub_1012114E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1012128E4(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x178uLL);
  }

  return result;
}

uint64_t sub_101211548(uint64_t a1, uint64_t a2)
{
  v4 = sub_101212F6C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10121159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101212F6C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1012115F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007F0A0();
  v7 = sub_101212FC0();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_101211660(uint64_t a1, uint64_t a2)
{
  v4 = sub_101212F6C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_101211744(uint64_t a1)
{
  v2 = sub_101211AC0();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_101211798()
{
  result = qword_101A2D868;
  if (!qword_101A2D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D868);
  }

  return result;
}

unint64_t sub_1012117F0()
{
  result = qword_101A2D870;
  if (!qword_101A2D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D870);
  }

  return result;
}

unint64_t sub_101211848()
{
  result = qword_101A2D878;
  if (!qword_101A2D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D878);
  }

  return result;
}

unint64_t sub_1012118A0()
{
  result = qword_101A2D880;
  if (!qword_101A2D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D880);
  }

  return result;
}

unint64_t sub_1012118F8()
{
  result = qword_101A2D888;
  if (!qword_101A2D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D888);
  }

  return result;
}

unint64_t sub_101211950()
{
  result = qword_101A2D890;
  if (!qword_101A2D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D890);
  }

  return result;
}

unint64_t sub_1012119A8()
{
  result = qword_101A2D898;
  if (!qword_101A2D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D898);
  }

  return result;
}

unint64_t sub_101211A00()
{
  result = qword_101A2D8A0;
  if (!qword_101A2D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D8A0);
  }

  return result;
}

unint64_t sub_101211A58()
{
  result = qword_101A2D8A8;
  if (!qword_101A2D8A8)
  {
    sub_1005C4E5C(&qword_101A2D8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D8A8);
  }

  return result;
}

unint64_t sub_101211AC0()
{
  result = qword_101A2D8B8;
  if (!qword_101A2D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D8B8);
  }

  return result;
}

uint64_t sub_101211B14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 208);
  v78[12] = *(a1 + 192);
  v78[13] = v4;
  v79 = *(a1 + 224);
  v5 = *(a1 + 128);
  v78[9] = *(a1 + 144);
  v6 = *(a1 + 160);
  v78[11] = *(a1 + 176);
  v78[10] = v6;
  v7 = *(a1 + 80);
  v78[4] = *(a1 + 64);
  v78[5] = v7;
  v8 = *(a1 + 96);
  v78[7] = *(a1 + 112);
  v78[8] = v5;
  v78[6] = v8;
  v9 = *(a1 + 16);
  v78[0] = *a1;
  v78[1] = v9;
  v10 = *(a1 + 48);
  v78[2] = *(a1 + 32);
  v78[3] = v10;
  v11 = *(a2 + 208);
  v76[12] = *(a2 + 192);
  v76[13] = v11;
  v77 = *(a2 + 224);
  v12 = *(a2 + 144);
  v76[8] = *(a2 + 128);
  v76[9] = v12;
  v13 = *(a2 + 176);
  v76[10] = *(a2 + 160);
  v76[11] = v13;
  v14 = *(a2 + 80);
  v76[4] = *(a2 + 64);
  v76[5] = v14;
  v15 = *(a2 + 112);
  v76[6] = *(a2 + 96);
  v76[7] = v15;
  v16 = *(a2 + 16);
  v76[0] = *a2;
  v76[1] = v16;
  v17 = *(a2 + 48);
  v76[2] = *(a2 + 32);
  v76[3] = v17;
  if (sub_100B931E0(v78, v76) & 1) == 0 || *(a1 + 232) != *(a2 + 232) || ((*(a1 + 248) ^ *(a2 + 248)) & 1) != 0 || ((*(a1 + 249) ^ *(a2 + 249)))
  {
    goto LABEL_14;
  }

  v18 = *(a1 + 336);
  v74[4] = *(a1 + 320);
  v74[5] = v18;
  v75 = *(a1 + 352);
  v19 = *(a1 + 272);
  v74[0] = *(a1 + 256);
  v74[1] = v19;
  v20 = *(a1 + 304);
  v74[2] = *(a1 + 288);
  v74[3] = v20;
  v21 = *(a2 + 272);
  v72[0] = *(a2 + 256);
  v72[1] = v21;
  v22 = *(a2 + 288);
  v23 = *(a2 + 304);
  v24 = *(a2 + 352);
  v72[5] = *(a2 + 336);
  v73 = v24;
  v25 = *(a2 + 320);
  v72[3] = v23;
  v72[4] = v25;
  v72[2] = v22;
  v26 = *&v74[0];
  v27 = BYTE8(v74[0]);
  v28 = (a1 + 265);
  v29 = v75;
  v30 = *(&v73 + 1);
  if (!v75)
  {
    if (!v73)
    {
      v52 = *(a1 + 313);
      *&v64[41] = *(a1 + 297);
      *&v64[57] = v52;
      *&v64[73] = *(a1 + 329);
      v53 = *(a1 + 281);
      *&v64[9] = *v28;
      *v64 = *&v74[0];
      v64[8] = BYTE8(v74[0]);
      v54 = *(a1 + 344);
      *&v64[25] = v53;
      *&v64[88] = v54;
      *&v64[96] = 0;
      *&v64[104] = *(&v75 + 1);
      sub_101211F80(v74, &v56);
      sub_101211F80(v72, &v56);
      sub_10000CAAC(v64, &qword_1019FFF80);
LABEL_17:
      v50 = sub_100B3216C(*(a1 + 368), *(a2 + 368));
      return v50 & 1;
    }

    goto LABEL_12;
  }

  if (!v73)
  {
LABEL_12:
    *v64 = *&v74[0];
    v64[8] = BYTE8(v74[0]);
    v40 = *(a1 + 313);
    *&v64[41] = *(a1 + 297);
    *&v64[57] = v40;
    *&v64[73] = *(a1 + 329);
    v41 = *(a1 + 344);
    v42 = *(a1 + 281);
    *&v64[9] = *v28;
    *&v64[25] = v42;
    *&v64[88] = v41;
    *&v64[96] = v75;
    v43 = *(a2 + 272);
    v65 = *(a2 + 256);
    v66 = v43;
    v44 = *(a2 + 288);
    v45 = *(a2 + 304);
    v46 = *(a2 + 336);
    v69 = *(a2 + 320);
    v70 = v46;
    v67 = v44;
    v68 = v45;
    v71 = v73;
    sub_101211F80(v74, &v56);
    sub_101211F80(v72, &v56);
    sub_10000CAAC(v64, &qword_1019FFF90);
    goto LABEL_14;
  }

  v31 = *(a2 + 272);
  *v64 = *(a2 + 256);
  *&v64[16] = v31;
  v32 = *(a2 + 336);
  *&v64[64] = *(a2 + 320);
  *&v64[80] = v32;
  v33 = *(a2 + 304);
  *&v64[32] = *(a2 + 288);
  *&v64[48] = v33;
  *&v64[96] = v73;
  *v55 = *&v64[9];
  *&v55[16] = *&v64[25];
  *&v55[79] = *&v64[88];
  *&v55[48] = *&v64[57];
  *&v55[64] = *&v64[73];
  *&v55[32] = *&v64[41];
  *&v82[0] = *&v74[0];
  BYTE8(v82[0]) = BYTE8(v74[0]) & 1;
  *&v80[0] = *v64;
  BYTE8(v80[0]) = v64[8] & 1;
  sub_101211F80(v74, &v56);
  sub_101211F80(v72, &v56);
  sub_100A1B84C();
  if (static CRExtensible.== infix(_:_:)() & 1) != 0 && (v34 = *(a1 + 320), v80[2] = *(a1 + 304), v80[3] = v34, v80[4] = *(a1 + 336), v35 = *(a1 + 272), v80[1] = *(a1 + 288), v80[0] = v35, v81 = v29, v82[2] = *&v55[39], v82[3] = *&v55[55], v82[4] = *&v55[71], v83 = *&v55[87], v82[0] = *&v55[7], v82[1] = *&v55[23], (sub_1008AFE44(v80, v82)))
  {
    v36 = sub_100B3216C(*(&v29 + 1), v30);
    sub_10000CAAC(v64, &qword_1019FFF80);
    v37 = *(a1 + 313);
    v60 = *(a1 + 297);
    v61 = v37;
    *v62 = *(a1 + 329);
    v38 = *(a1 + 281);
    v58 = *v28;
    v56 = v26;
    v57 = v27;
    v39 = *(a1 + 344);
    v59 = v38;
    *&v62[15] = v39;
    v63 = v29;
    sub_10000CAAC(&v56, &qword_1019FFF80);
    if (v36)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_10000CAAC(v64, &qword_1019FFF80);
    v47 = *(a1 + 313);
    v60 = *(a1 + 297);
    v61 = v47;
    *v62 = *(a1 + 329);
    v48 = *(a1 + 281);
    v58 = *v28;
    v56 = v26;
    v57 = v27;
    v49 = *(a1 + 344);
    v59 = v48;
    *&v62[15] = v49;
    v63 = v29;
    sub_10000CAAC(&v56, &qword_1019FFF80);
  }

LABEL_14:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_101211F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FFF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_101211FF0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  *&v70 = _s13StyleCRDTDataVMa() - 8;
  __chkstk_darwin(v70);
  *&v65 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A2C890);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v55 - v6;
  v8 = _s15CapsuleDatabaseVMa() - 8;
  v59 = v8;
  __chkstk_darwin(v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v63 = type metadata accessor for CRLTableItemData();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = qword_101AD9268;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v60 = v5 + 16;
  *&v67 = v13;
  v13(v7, v11 + v12, v4);
  Capsule.root.getter();
  *&v66 = *(v5 + 8);
  *&v69 = v5 + 8;
  (v66)(v7, v4);
  v14 = v65;
  sub_100FC5D18(&v10[*(v8 + 40)], v65);
  *&v68 = _s15CapsuleDatabaseVMa;
  sub_100FC5D7C(v10, _s15CapsuleDatabaseVMa);
  sub_1005B981C(&qword_101A2C7B0);
  CRRegister.wrappedValue.getter();
  *&v64 = _s13StyleCRDTDataVMa;
  sub_100FC5D7C(v14, _s13StyleCRDTDataVMa);
  v88[12] = v83;
  v88[13] = v84;
  v89 = v85;
  v88[8] = v79;
  v88[9] = v80;
  v88[10] = v81;
  v88[11] = v82;
  v88[4] = v75;
  v88[5] = v76;
  v88[6] = v77;
  v88[7] = v78;
  v88[0] = v71;
  v88[1] = v72;
  v88[2] = v73;
  v88[3] = v74;
  v15 = sub_100B946C8(v88, 0);
  sub_100B98B80(v88);
  sub_100B965E4(v15, v86);
  v16 = swift_dynamicCastClassUnconditional();
  v17 = qword_101AD9268;
  swift_beginAccess();
  v18 = v16 + v17;
  v19 = v7;
  v20 = v7;
  v21 = v4;
  (v67)(v20, v18, v4);
  v22 = v10;
  Capsule.root.getter();
  v23 = v19;
  (v66)(v19, v4);
  v24 = v59;
  v25 = *(v59 + 40);
  v26 = v22;
  v55[0] = v22;
  v27 = &v22[v25];
  v28 = v65;
  sub_100FC5D18(v27, v65);
  sub_100FC5D7C(v26, v68);
  sub_1005B981C(&unk_101A2D9E0);
  CRRegister.wrappedValue.getter();
  sub_100FC5D7C(v28, v64);
  v57 = *(&v71 + 1);
  v58 = v71;
  v29 = swift_dynamicCastClassUnconditional();
  v30 = qword_101AD9268;
  swift_beginAccess();
  (v67)(v23, v29 + v30, v4);
  v31 = v55[0];
  Capsule.root.getter();
  (v66)(v23, v4);
  v32 = v31 + *(v24 + 40);
  v33 = v65;
  sub_100FC5D18(v32, v65);
  sub_100FC5D7C(v31, v68);
  v55[1] = sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  v34 = v64;
  sub_100FC5D7C(v33, v64);
  v56 = v71;
  v35 = v61;
  v36 = swift_dynamicCastClassUnconditional();
  v37 = qword_101AD9268;
  swift_beginAccess();
  (v67)(v23, v36 + v37, v21);
  Capsule.root.getter();
  (v66)(v23, v21);
  sub_100FC5D18(v31 + *(v59 + 40), v33);
  sub_100FC5D7C(v31, v68);
  CRRegister.wrappedValue.getter();
  v38 = v35;
  sub_100FC5D7C(v33, v34);
  v39 = v71;
  v40 = sub_1011DD9E4();
  if (v40)
  {
    sub_101247234(v40, &v71);
    v69 = v72;
    v70 = v71;
    v67 = v74;
    v68 = v73;
    v65 = v76;
    v66 = v75;
    v41 = v77;
  }

  else
  {
    v41 = 0uLL;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
  }

  v64 = v41;

  v42 = v86[13];
  *(a2 + 192) = v86[12];
  *(a2 + 208) = v42;
  v43 = v87;
  v44 = v86[9];
  *(a2 + 128) = v86[8];
  *(a2 + 144) = v44;
  v45 = v86[11];
  *(a2 + 160) = v86[10];
  *(a2 + 176) = v45;
  v46 = v86[5];
  *(a2 + 64) = v86[4];
  *(a2 + 80) = v46;
  v47 = v86[7];
  *(a2 + 96) = v86[6];
  *(a2 + 112) = v47;
  v48 = v86[1];
  *a2 = v86[0];
  *(a2 + 16) = v48;
  v49 = v86[3];
  *(a2 + 32) = v86[2];
  *(a2 + 48) = v49;
  *(a2 + 224) = v43;
  v50 = v57;
  *(a2 + 232) = v58;
  *(a2 + 240) = v50;
  *(a2 + 248) = v56;
  *(a2 + 249) = v39;
  v51 = v69;
  *(a2 + 256) = v70;
  *(a2 + 272) = v51;
  v52 = v67;
  *(a2 + 288) = v68;
  *(a2 + 304) = v52;
  v53 = v65;
  *(a2 + 320) = v66;
  *(a2 + 336) = v53;
  result = *&v64;
  *(a2 + 352) = v64;
  *(a2 + 368) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1012126D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7453726564726F62 && a2 == 0xEC000000656B6F72;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7453726564726F62 && a2 == 0xEB00000000656C79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010158B480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001015C54C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6946726F6C6F63 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_1012128E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v76 = sub_1005B981C(&qword_101A2D8C8);
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v7 = &v15 - v6;
  sub_100020E58(a1, a1[3]);
  sub_101211950();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v8 = v5;
  v44 = 0;
  sub_100B93B20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v69 = v53;
  v70 = v54;
  v72 = v56;
  v71 = v55;
  v65 = v49;
  v66 = v50;
  v68 = v52;
  v67 = v51;
  v61 = v45;
  v62 = v46;
  v64 = v48;
  v63 = v47;
  LOBYTE(v19[0]) = 1;
  sub_10120465C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *(&v20[0] + 1);
  v9 = *&v20[0];
  LOBYTE(v20[0]) = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v9;
  LOBYTE(v20[0]) = 3;
  LOBYTE(v9) = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 4;
  sub_100A1D404();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v60[54] = v40;
  *&v60[70] = v41;
  *&v60[86] = v42;
  *&v60[102] = v43;
  *&v60[6] = v37;
  *&v60[22] = v38;
  *&v60[38] = v39;
  sub_1005B981C(&unk_101A0D960);
  v34 = 5;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v16 & 1;
  v16 = v9 & 1;
  (*(v8 + 8))(v7, v76);
  v19[12] = v73;
  v19[13] = v74;
  v19[8] = v69;
  v19[9] = v70;
  v19[10] = v71;
  v19[11] = v72;
  v19[4] = v65;
  v19[5] = v66;
  v19[6] = v67;
  v19[7] = v68;
  v19[0] = v61;
  v19[1] = v62;
  v19[2] = v63;
  v19[3] = v64;
  *(&v19[20] + 10) = *&v60[80];
  *(&v19[21] + 10) = *&v60[96];
  *(&v19[16] + 10) = *&v60[16];
  *(&v19[17] + 10) = *&v60[32];
  *(&v19[18] + 10) = *&v60[48];
  *(&v19[19] + 10) = *&v60[64];
  v76 = v35;
  v11 = v17;
  v12 = v18;
  *&v19[14] = v75;
  *(&v19[14] + 1) = v17;
  *&v19[15] = v18;
  BYTE8(v19[15]) = v10;
  v13 = v16;
  BYTE9(v19[15]) = v16;
  *(&v19[15] + 10) = *v60;
  *(&v19[22] + 1) = *&v60[110];
  *&v19[23] = v35;
  sub_101212F04(v19, v20);
  sub_100005070(a1);
  v20[12] = v73;
  v20[13] = v74;
  v20[8] = v69;
  v20[9] = v70;
  v20[10] = v71;
  v20[11] = v72;
  v20[4] = v65;
  v20[5] = v66;
  v20[6] = v67;
  v20[7] = v68;
  v20[0] = v61;
  v20[1] = v62;
  v20[2] = v63;
  v20[3] = v64;
  v31 = *&v60[80];
  *v32 = *&v60[96];
  v27 = *&v60[16];
  v28 = *&v60[32];
  v29 = *&v60[48];
  v30 = *&v60[64];
  v21 = v75;
  v22 = v11;
  v23 = v12;
  v24 = v10;
  v25 = v13;
  v26 = *v60;
  *&v32[14] = *&v60[110];
  v33 = v76;
  sub_101212F3C(v20);
  return memcpy(a2, v19, 0x178uLL);
}

unint64_t sub_101212F6C()
{
  result = qword_101A2D8D8;
  if (!qword_101A2D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D8D8);
  }

  return result;
}

unint64_t sub_101212FC0()
{
  result = qword_101A2D8E0;
  if (!qword_101A2D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D8E0);
  }

  return result;
}

unint64_t sub_101213028()
{
  result = qword_101A2D8E8;
  if (!qword_101A2D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D8E8);
  }

  return result;
}

void *sub_10121307C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v15 = v4;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006370(0, &qword_1019FB7A0), swift_dynamicCast(), (v12 = v16) == 0))
    {
LABEL_22:
      sub_100035F90();
      return _swiftEmptyArrayStorage;
    }

LABEL_17:
    v13 = [v12 info];
    type metadata accessor for CRLBoardItem(0);
    v14 = swift_dynamicCastClass();

    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      result = swift_unknownObjectRelease();
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_101213390(uint64_t a1, void **a2)
{
  v4 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  sub_10000BE14(a1, &v8 - v5, &unk_101A09DD0);
  return (*((swift_isaMask & **a2) + 0x130))(v6);
}

uint64_t sub_101213480(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1005B981C(&qword_1019F8DC0);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

id sub_101213504()
{
  result = [v0 interactiveCanvasController];
  if (result)
  {
    v2 = result;
    v3 = [result editorController];

    if (!v3)
    {
      return 0;
    }

    if (type metadata accessor for CRLTableEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v5 = [v3 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1012135C8()
{
  v1 = v0;
  v2 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A2C890);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  v9 = _s15CapsuleDatabaseVMa();
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [v1 layout];
  type metadata accessor for CRLTableLayout();
  result = [swift_dynamicCastClassUnconditional() boardItem];
  if (result)
  {
    v15 = result;

    type metadata accessor for CRLTableItem();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CRLTableItemData();
    v16 = swift_dynamicCastClassUnconditional();
    v17 = qword_101AD9268;
    swift_beginAccess();
    (*(v6 + 16))(v8, v16 + v17, v5);
    Capsule.root.getter();
    (*(v6 + 8))(v8, v5);
    sub_101224348(&v12[*(v9 + 32)], v4, _s13StyleCRDTDataVMa);
    sub_1012243B0(v12, _s15CapsuleDatabaseVMa);
    sub_1005B981C(&qword_101A2C810);
    CRRegister.wrappedValue.getter();

    sub_1012243B0(v4, _s13StyleCRDTDataVMa);
    return v18[7];
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1012138C8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_tableSelectorHeight] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_tableSelectorWidth] = 0x4036000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_floatingChromeDistanceFromTable] = 0x4032000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_tableAxisSelectorSymbolRadius] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_tableAxisSelectorPadding] = 0x4022000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_tableAxisSelectorLength] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_collaboratorTableCellSelection] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable] = 0;
  v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_hasDynamicDragEnded] = 1;
  v5 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_previousDragPointOnRep];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_activateCellAnchorTask] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_lastDynamicAnchorCell];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_cellBorderHighlightNeedsAnimation] = 0;
  v8 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep____lazy_storage___dragHelper] = 0;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for CRLTableRep();
  v10 = objc_msgSendSuper2(&v19, "initWithLayout:canvas:", a1, a2);
  v11 = objc_allocWithZone(type metadata accessor for CRLTableChrome());
  v12 = v10;
  v13 = sub_1011C0768(v12);
  v14 = *&v12[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome];
  *&v12[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome] = v13;

  v15 = [a1 layoutController];
  v16 = [v15 canvas];

  v17 = [v16 canvasController];
  swift_unknownObjectWeakAssign();

  sub_1012199BC();
  return v12;
}

void sub_101213B6C(CGContext *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A11C08);
  v227 = *(v4 - 8);
  *&v228.f64[0] = v4;
  __chkstk_darwin(v4);
  v6 = &v214 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v226 = &v214 - v8;
  v215 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v215);
  v10 = &v214 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A2C890);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v222 = &v214 - v13;
  v235 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v235);
  v221 = &v214 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLTableRep();
  v244.receiver = v2;
  v244.super_class = v15;
  [(CGContext *)&v244 drawInContext:a1];
  CGContextSaveGState(a1);
  v243[0] = 1.0;
  v243[1] = 0.0;
  v243[2] = 0.0;
  v243[3] = 1.0;
  v243[4] = 0.0;
  v243[5] = 0.0;
  v214 = [v2 canvas];
  if (!v214)
  {
    goto LABEL_72;
  }

  v230 = v6;
  v219 = v10;
  v220 = v11;
  v216 = a1;
  v16 = &selRef_longLongValue;
  [v2 naturalBounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &selRef_isEnumeratingForUserSearch;
  v26 = [v2 layout];
  v27 = type metadata accessor for CRLTableLayout();
  v28 = [swift_dynamicCastClassUnconditional() boardItem];
  if (!v28)
  {
    goto LABEL_82;
  }

  v29 = v28;

  v240 = type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v241 = type metadata accessor for CRLTableItemData();
  v30 = swift_dynamicCastClassUnconditional();
  v31 = qword_101AD9268;
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v222;
  v34 = v220;
  v232 = *(v12 + 16);
  v233 = v12 + 16;
  v232(v222, v32, v220);
  v35 = v221;
  Capsule.root.getter();
  v36 = *(v12 + 8);
  v234 = v12 + 8;
  v231 = v36;
  v36(v33, v34);
  v37 = v219;
  sub_101224348(v35 + *(v235 + 32), v219, _s13StyleCRDTDataVMa);
  sub_1012243B0(v35, _s15CapsuleDatabaseVMa);
  v229 = sub_1005B981C(&qword_101A2C7B0);
  CRRegister.wrappedValue.getter();
  sub_1012243B0(v37, _s13StyleCRDTDataVMa);
  v309[12] = v306;
  v309[13] = v307;
  v310 = v308;
  v309[8] = v302;
  v309[9] = v303;
  v309[11] = v305;
  v309[10] = v304;
  v309[4] = v298;
  v309[5] = v299;
  v309[7] = v301;
  v309[6] = v300;
  v309[0] = v294;
  v309[1] = v295;
  v309[3] = v297;
  v309[2] = v296;
  v38 = sub_100B946C8(v309, 0);

  sub_100B98B80(v309);
  [v38 width];
  v40 = v39;

  [v214 contentsScale];
  sub_10018F324(v243, v18, v20, v22, v24, v40, v41);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  LOBYTE(v38) = sub_1012135C8();
  v50 = objc_opt_self();
  if (v38)
  {
    v217 = [v50 bezierPathWithContinuousCornerRoundedRect:v43 cornerRadius:{v45, v47, v49, 16.0}];
    v51 = 0x101982000;
    v52 = v230;
    goto LABEL_6;
  }

  v51 = &selRef_allowResizeDelegate;
  v217 = [v50 bezierPathWithRect:{v43, v45, v47, v49}];
  v52 = v230;
  if (v217)
  {
LABEL_6:
    v311.origin.x = v43;
    v311.origin.y = v45;
    v311.size.width = v47;
    v311.size.height = v49;
    CGRectGetMinX(v311);
    v312.origin.x = v43;
    v312.origin.y = v45;
    v312.size.width = v47;
    v312.size.height = v49;
    CGRectGetMaxX(v312);
    v313.origin.x = v43;
    v313.origin.y = v45;
    v313.size.width = v47;
    v313.size.height = v49;
    CGRectGetMinY(v313);
    v314.origin.x = v43;
    v314.origin.y = v45;
    v314.size.width = v47;
    v314.size.height = v49;
    CGRectGetMaxY(v314);
    v53 = [v2 layout];
    v54 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
    if (!v54)
    {
      goto LABEL_83;
    }

    v55 = v54;

    swift_dynamicCastClassUnconditional();
    v56 = sub_1011DD9E4();

    if (v56)
    {
      v57 = [v217 CGPath];
      if (!v57)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v58 = v57;
      [v2 naturalBounds];
      v16 = v216;
      [v56 paintPath:v58 naturalBounds:v216 inContext:sub_100510804(v216) isPDF:{v59, v60, v61, v62}];
    }

    v63 = [v2 layout];
    v64 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
    if (!v64)
    {
      goto LABEL_84;
    }

    v65 = v64;

    swift_dynamicCastClassUnconditional();
    v66 = sub_1011DDDA8();

    v67 = v66;
    v68 = *(v66 + 2);
    v242 = v2;
    v239 = v27;
    v224 = v68;
    if (v68)
    {
      v69 = 0;
      v223 = v67;
      while (1)
      {
        if (v69 >= *(v67 + 2))
        {
          __break(1u);
          goto LABEL_74;
        }

        v70 = v226;
        v71 = &v67[(*(v227 + 80) + 32) & ~*(v227 + 80)];
        v72 = *(v227 + 72);
        v238 = v69;
        sub_10000BE14(&v71[v72 * v69], v226, &qword_101A11C08);
        v73 = *(*&v228.f64[0] + 48);
        v16 = *(v70 + v73);
        sub_101225434(v70, v52, _s6CellIDVMa);
        v225 = v16;
        *(v52 + v73) = v16;
        v74 = [v2 layout];
        v75 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
        if (!v75)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
        }

        if ((v76 = v75, v74, v237 = v76, v77 = swift_dynamicCastClassUnconditional(), v78 = v77, *&v236.f64[0] = OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid, (*(v77 + OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid)) || !*(v77 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap)) && (swift_dynamicCastClassUnconditional(), , v79 = sub_1011FD0F0(), , swift_dynamicCastClassUnconditional(), , v80 = sub_1011FBBD8(), , v81 = sub_1011EE2D4(v79, v80), v83 = v82, v85 = v84, v87 = v86, , v88 = (v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap), v89 = *(v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap), v16 = *(v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 8), *v88 = v81, v88[1] = v83, v88[2] = v85, v88[3] = v87, , , , , sub_1011DAB1C(v89), , , , , (*(v78 + *&v236.f64[0])) || !*(v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap))
        {
          swift_dynamicCastClassUnconditional();

          v91 = sub_1011FD0F0();

          swift_dynamicCastClassUnconditional();

          v92 = sub_1011FBBD8();

          v93 = sub_1011EE2D4(v91, v92);
          v95 = v94;
          v90 = v96;
          v98 = v97;

          v99 = (v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          v16 = *(v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          *v99 = v93;
          v99[1] = v95;
          v99[2] = v90;
          v99[3] = v98;

          sub_1011DAB1C(v16);
        }

        else
        {
          v90 = *(v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 16);
        }

        v51 = &selRef_allowResizeDelegate;
        v52 = v230;
        if (!*(v90 + 16))
        {
          break;
        }

        v100 = sub_10003E994(v230);
        if ((v101 & 1) == 0)
        {
          break;
        }

        v218 = *(*(v90 + 56) + 8 * v100);

        v16 = *(_s6CellIDVMa(0) + 20);
        if ((*(v78 + *&v236.f64[0]) & 1) != 0 || (v102 = *(v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap)) == 0)
        {
          swift_dynamicCastClassUnconditional();

          v103 = sub_1011FD0F0();
          *&v236.f64[0] = v16;
          v104 = v103;

          swift_dynamicCastClassUnconditional();

          v105 = sub_1011FBBD8();

          v102 = sub_1011EE2D4(v104, v105);
          v107 = v106;
          v109 = v108;
          v111 = v110;

          v112 = (v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          v113 = *(v78 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
          *v112 = v102;
          v112[1] = v107;
          v112[2] = v109;
          v112[3] = v111;

          v114 = v113;
          v16 = *&v236.f64[0];
          v52 = v230;
          v51 = 0x101982000;
          sub_1011DAB1C(v114);
        }

        else
        {
        }

        v2 = v242;
        if (!*(v102 + 16) || (v115 = sub_10003E994(v52 + v16), (v116 & 1) == 0))
        {

          goto LABEL_14;
        }

        v16 = *(*(v102 + 56) + 8 * v115);

        v25 = &selRef_isEnumeratingForUserSearch;
        v117 = [v2 layout];
        swift_dynamicCastClassUnconditional();
        sub_10120C854(v218, v16);
        v119 = v118;
        v121 = v120;
        v123 = v122;
        v125 = v124;

        v126 = [objc_opt_self() bezierPathWithRect:{v119, v121, v123, v125}];
        v127 = [v217 intersectBezierPath:v126];

        if (v127)
        {
          v128 = [v127 CGPath];
          if (!v128)
          {
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v129 = v128;
          v16 = v216;
          v130 = sub_100510804(v216);
          [v225 paintPath:v129 naturalBounds:v16 inContext:v130 isPDF:{v119, v121, v123, v125}];
        }

LABEL_15:
        v69 = (v238 + 1);
        sub_10000CAAC(v52, &qword_101A11C08);
        v67 = v223;
        if (v224 == v69)
        {
          goto LABEL_36;
        }
      }

      v2 = v242;
LABEL_14:
      v25 = &selRef_isEnumeratingForUserSearch;
      goto LABEL_15;
    }

LABEL_36:

    v131 = [v2 layout];
    v132 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
    if (!v132)
    {
      goto LABEL_85;
    }

    v133 = v132;

    swift_dynamicCastClassUnconditional();
    v134 = swift_dynamicCastClassUnconditional();
    v135 = qword_101AD9268;
    swift_beginAccess();
    v136 = v134 + v135;
    v137 = v222;
    v138 = v220;
    v232(v222, v136, v220);
    v139 = v221;
    Capsule.root.getter();
    v231(v137, v138);
    v16 = v219;
    sub_101224348(v139 + *(v235 + 32), v219, _s13StyleCRDTDataVMa);
    sub_1012243B0(v139, _s15CapsuleDatabaseVMa);
    v227 = sub_1005B981C(&unk_101A2D9E0);
    CRRegister.wrappedValue.getter();

    sub_1012243B0(v16, _s13StyleCRDTDataVMa);
    v69 = v294;
    if (qword_1019F2AA8 != -1)
    {
      goto LABEL_76;
    }

    while (1)
    {
      v140 = qword_101A2D5A0;

      if ((v140 & ~v69) == 0)
      {
        v141 = [v2 *(v25 + 2744)];
        v142 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
        if (!v142)
        {
          goto LABEL_90;
        }

        v143 = v142;

        swift_dynamicCastClassUnconditional();
        v144 = swift_dynamicCastClassUnconditional();
        v145 = qword_101AD9268;
        swift_beginAccess();
        v146 = v144 + v145;
        v147 = v222;
        v148 = v220;
        v232(v222, v146, v220);
        v149 = v221;
        Capsule.root.getter();
        v231(v147, v148);
        sub_101224348(v149 + *(v235 + 32), v16, _s13StyleCRDTDataVMa);
        sub_1012243B0(v149, _s15CapsuleDatabaseVMa);
        CRRegister.wrappedValue.getter();
        sub_1012243B0(v16, _s13StyleCRDTDataVMa);
        v306 = v291;
        v307 = v292;
        v308 = v293;
        v302 = v287;
        v303 = v288;
        v305 = v290;
        v304 = v289;
        v298 = v283;
        v299 = v284;
        v301 = v286;
        v300 = v285;
        v294 = v279;
        v295 = v280;
        v297 = v282;
        v296 = v281;
        v150 = sub_100B946C8(&v294, 0);

        sub_100B98B80(&v294);
        v151 = v216;
        [v150 applyToContext:v216];

        v152 = [v217 CGPath];
        if (!v152)
        {
          goto LABEL_91;
        }

        v153 = v152;
        CGContextAddPath(v151, v152);

        CGContextStrokePath(v151);
      }

      v154 = [v2 *(v25 + 2744)];
      v155 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
      if (!v155)
      {
        goto LABEL_86;
      }

      v156 = v155;

      swift_dynamicCastClassUnconditional();
      v157 = swift_dynamicCastClassUnconditional();
      v158 = qword_101AD9268;
      swift_beginAccess();
      v159 = v157 + v158;
      v160 = v222;
      v161 = v220;
      v232(v222, v159, v220);
      v162 = v221;
      Capsule.root.getter();
      v231(v160, v161);
      sub_101224348(v162 + *(v235 + 32), v16, _s13StyleCRDTDataVMa);
      sub_1012243B0(v162, _s15CapsuleDatabaseVMa);
      CRRegister.wrappedValue.getter();

      sub_1012243B0(v16, _s13StyleCRDTDataVMa);
      v163 = v279;
      if (qword_1019F2AB8 != -1)
      {
        swift_once();
      }

      v164 = qword_101A2D5C0;

      if ((v164 & ~v163) != 0)
      {
        break;
      }

      v165 = [v2 *(v25 + 2744)];
      swift_dynamicCastClassUnconditional();
      v69 = sub_101205638();

      v237 = v69;
      v166 = v216;
      v236.f64[0] = *(v69 + 16);
      if (!*&v236.f64[0])
      {
LABEL_55:

        v2 = v242;
        v25 = &selRef_isEnumeratingForUserSearch;
        break;
      }

      v25 = 0;
      v230 = v237 + 32;
      v167.f64[0] = NAN;
      v167.f64[1] = NAN;
      v228 = vnegq_f64(v167);
      v2 = v222;
      while (v25 < *(v237 + 2))
      {
        v170 = *&v230[8 * v25];
        v171 = [v242 canvas];
        if (v171)
        {
          v238 = v171;
          CGContextSaveGState(v166);
          v172 = [v242 layout];
          v173 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
          if (!v173)
          {
            goto LABEL_78;
          }

          v174 = v173;

          swift_dynamicCastClassUnconditional();
          v175 = swift_dynamicCastClassUnconditional();
          v176 = qword_101AD9268;
          swift_beginAccess();
          v177 = v220;
          v232(v2, v175 + v176, v220);
          v178 = v221;
          Capsule.root.getter();
          v231(v2, v177);
          v51 = v219;
          sub_101224348(v178 + *(v235 + 32), v219, _s13StyleCRDTDataVMa);
          sub_1012243B0(v178, _s15CapsuleDatabaseVMa);
          CRRegister.wrappedValue.getter();
          sub_1012243B0(v51, _s13StyleCRDTDataVMa);
          v291 = v274;
          v292 = v275;
          v293 = v276;
          v287 = v270;
          v288 = v271;
          v290 = v273;
          v289 = v272;
          v283 = v266;
          v284 = v267;
          v286 = v269;
          v285 = v268;
          v279 = v262;
          v280 = v263;
          v282 = v265;
          v281 = v264;
          v179 = sub_100B946C8(&v279, 0);

          sub_100B98B80(&v279);
          [v179 width];

          [v238 contentsScale];
          sub_100122128(v170, v180);
          CGContextBeginPath(v166);
          CGContextRef.move(to:)();
          CGContextRef.addLine(to:)();
          v181 = [v242 layout];
          v182 = [swift_dynamicCastClassUnconditional() boardItem];
          if (!v182)
          {
            __break(1u);
            goto LABEL_55;
          }

          v168 = v182;

          swift_dynamicCastClassUnconditional();
          v169 = swift_dynamicCastClassUnconditional();
          v16 = qword_101AD9268;
          swift_beginAccess();
          v232(v2, v169 + v16, v177);
          Capsule.root.getter();
          v231(v2, v177);
          sub_101224348(v178 + *(v235 + 32), v51, _s13StyleCRDTDataVMa);
          sub_1012243B0(v178, _s15CapsuleDatabaseVMa);
          CRRegister.wrappedValue.getter();
          sub_1012243B0(v51, _s13StyleCRDTDataVMa);
          v277[12] = v274;
          v277[13] = v275;
          v278 = v276;
          v277[8] = v270;
          v277[9] = v271;
          v277[11] = v273;
          v277[10] = v272;
          v277[4] = v266;
          v277[5] = v267;
          v277[7] = v269;
          v277[6] = v268;
          v277[0] = v262;
          v277[1] = v263;
          v277[3] = v265;
          v277[2] = v264;
          v69 = sub_100B946C8(v277, 0);

          sub_100B98B80(v277);
          [v69 applyToContext:v166];

          CGContextStrokePath(v166);
          CGContextRestoreGState(v166);

          v51 = &selRef_allowResizeDelegate;
        }

        if (*&v236.f64[0] == ++v25)
        {
          goto LABEL_55;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      swift_once();
    }

    v183 = [v2 *(v25 + 2744)];
    v184 = [swift_dynamicCastClassUnconditional() *(v51 + 3048)];
    if (v184)
    {
      v185 = v184;

      swift_dynamicCastClassUnconditional();
      v186 = swift_dynamicCastClassUnconditional();
      v187 = qword_101AD9268;
      swift_beginAccess();
      v188 = v186 + v187;
      v189 = v222;
      v190 = v220;
      v232(v222, v188, v220);
      v191 = v221;
      Capsule.root.getter();
      v231(v189, v190);
      v16 = v219;
      sub_101224348(v191 + *(v235 + 32), v219, _s13StyleCRDTDataVMa);
      sub_1012243B0(v191, _s15CapsuleDatabaseVMa);
      CRRegister.wrappedValue.getter();

      sub_1012243B0(v16, _s13StyleCRDTDataVMa);
      v192 = v262;
      if (qword_1019F2AB0 != -1)
      {
        swift_once();
      }

      v193 = qword_101A2D5B0;

      if ((v193 & ~v192) != 0)
      {
      }

      else
      {
        v194 = [v2 *(v25 + 2744)];
        swift_dynamicCastClassUnconditional();
        v69 = sub_1012054CC();

        v237 = *(v69 + 16);
        if (v237)
        {
          v51 = 0;
          v195.f64[0] = NAN;
          v195.f64[1] = NAN;
          v236 = vnegq_f64(v195);
          a1 = v216;
          v230 = v69;
          do
          {
            if (v51 >= *(v69 + 16))
            {
              goto LABEL_75;
            }

            v196 = *(v69 + 8 * v51 + 32);
            v197 = [v2 canvas];
            if (v197)
            {
              v238 = v197;
              CGContextSaveGState(a1);
              v198 = [v2 *(v25 + 2744)];
              v199 = [swift_dynamicCastClassUnconditional() boardItem];
              if (!v199)
              {
                goto LABEL_79;
              }

              v200 = v199;

              swift_dynamicCastClassUnconditional();
              v201 = swift_dynamicCastClassUnconditional();
              v202 = qword_101AD9268;
              swift_beginAccess();
              v203 = v222;
              v16 = v220;
              v232(v222, v201 + v202, v220);
              v204 = v221;
              Capsule.root.getter();
              v231(v203, v16);
              v205 = v219;
              sub_101224348(v204 + *(v235 + 32), v219, _s13StyleCRDTDataVMa);
              sub_1012243B0(v204, _s15CapsuleDatabaseVMa);
              CRRegister.wrappedValue.getter();
              sub_1012243B0(v205, _s13StyleCRDTDataVMa);
              v274 = v257;
              v275 = v258;
              v276 = v259;
              v270 = v253;
              v271 = v254;
              v273 = v256;
              v272 = v255;
              v266 = v249;
              v267 = v250;
              v269 = v252;
              v268 = v251;
              v262 = v245;
              v263 = v246;
              v265 = v248;
              v264 = v247;
              v206 = sub_100B946C8(&v262, 0);

              sub_100B98B80(&v262);
              [v206 width];

              [v238 contentsScale];
              sub_100122128(v196, v207);
              CGContextBeginPath(a1);
              CGContextRef.move(to:)();
              CGContextRef.addLine(to:)();
              v208 = [v242 layout];
              v209 = [swift_dynamicCastClassUnconditional() boardItem];
              if (!v209)
              {
                goto LABEL_80;
              }

              v210 = v209;

              swift_dynamicCastClassUnconditional();
              v211 = swift_dynamicCastClassUnconditional();
              v212 = qword_101AD9268;
              swift_beginAccess();
              v232(v203, v211 + v212, v16);
              Capsule.root.getter();
              v231(v203, v16);
              sub_101224348(v204 + *(v235 + 32), v205, _s13StyleCRDTDataVMa);
              sub_1012243B0(v204, _s15CapsuleDatabaseVMa);
              CRRegister.wrappedValue.getter();
              sub_1012243B0(v205, _s13StyleCRDTDataVMa);
              v260[12] = v257;
              v260[13] = v258;
              v261 = v259;
              v260[8] = v253;
              v260[9] = v254;
              v260[10] = v255;
              v260[11] = v256;
              v260[4] = v249;
              v260[5] = v250;
              v260[6] = v251;
              v260[7] = v252;
              v260[0] = v245;
              v260[1] = v246;
              v260[2] = v247;
              v260[3] = v248;
              v213 = sub_100B946C8(v260, 0);

              sub_100B98B80(v260);
              [v213 applyToContext:a1];

              CGContextStrokePath(a1);
              CGContextRestoreGState(a1);

              v2 = v242;
              v25 = 0x10198B000;
              v69 = v230;
            }

            ++v51;
          }

          while (v237 != v51);

          goto LABEL_72;
        }
      }

      a1 = v216;
LABEL_72:
      CGContextRestoreGState(a1);
      return;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

void sub_101215E20()
{
  v1 = v0;
  v2 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v2 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A2C890);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - v7;
  v9 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLTableRep();
  v31.receiver = v1;
  v31.super_class = v12;
  objc_msgSendSuper2(&v31, "frameInUnscaledCanvas");
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v1 layout];
  type metadata accessor for CRLTableLayout();
  v22 = [swift_dynamicCastClassUnconditional() boardItem];
  if (v22)
  {
    v23 = v22;

    type metadata accessor for CRLTableItem();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CRLTableItemData();
    v24 = swift_dynamicCastClassUnconditional();
    v25 = qword_101AD9268;
    swift_beginAccess();
    (*(v6 + 16))(v8, v24 + v25, v5);
    Capsule.root.getter();
    (*(v6 + 8))(v8, v5);
    sub_101224348(&v11[*(v9 + 32)], v4, _s13StyleCRDTDataVMa);
    sub_1012243B0(v11, _s15CapsuleDatabaseVMa);
    sub_1005B981C(&qword_101A2C7B0);
    CRRegister.wrappedValue.getter();
    sub_1012243B0(v4, _s13StyleCRDTDataVMa);
    v32[12] = v29[12];
    v32[13] = v29[13];
    v33 = v30;
    v32[8] = v29[8];
    v32[9] = v29[9];
    v32[10] = v29[10];
    v32[11] = v29[11];
    v32[4] = v29[4];
    v32[5] = v29[5];
    v32[6] = v29[6];
    v32[7] = v29[7];
    v32[0] = v29[0];
    v32[1] = v29[1];
    v32[2] = v29[2];
    v32[3] = v29[3];
    v26 = sub_100B946C8(v32, 0);

    sub_100B98B80(v32);
    [v26 width];
    v28 = v27;

    v34.origin.x = v14;
    v34.origin.y = v16;
    v34.size.width = v18;
    v34.size.height = v20;
    CGRectInset(v34, v28 * -0.5, v28 * -0.5);
  }

  else
  {
    __break(1u);
  }
}

id sub_1012162B8(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  result = [v2 interactiveCanvasController];
  if (result)
  {
    v7 = result;
    v8 = [result editorController];

    if (v8)
    {
      if (type metadata accessor for CRLTableEditor())
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      }

      else
      {
        ObjCClassFromMetadata = 0;
      }

      v10 = [v8 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

      if (swift_dynamicCastClass())
      {
        v11 = sub_1011D78CC();
        swift_unknownObjectRelease();
        if (v11)
        {
          v12 = [v3 layout];
          type metadata accessor for CRLTableLayout();
          swift_dynamicCastClassUnconditional();
          sub_10120C9E4(v11);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          v29.origin.x = v14;
          v29.origin.y = v16;
          v29.size.width = v18;
          v29.size.height = v20;
          v30 = CGRectInset(v29, -15.0, -15.0);
          x = v30.origin.x;
          y = v30.origin.y;
          height = v30.size.height;
          width = v30.size.width;

          v31.origin.x = v14;
          v31.origin.y = v16;
          v31.size.width = v18;
          v31.size.height = v20;
          v32 = CGRectInset(v31, 15.0, 15.0);
          v27.x = a1;
          v27.y = a2;
          v23 = CGRectContainsPoint(v32, v27);
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.height = height;
          v33.size.width = width;
          v28.x = a1;
          v28.y = a2;
          v24 = CGRectContainsPoint(v33, v28);

          return (!v23 & v24);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_10121650C(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome];
  if (v3)
  {
    v6 = v3;
    v7 = [v2 layout];
    [v7 convertNaturalPointToUnscaledCanvas:{a1, a2}];
    v9 = v8;
    v11 = v10;

    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = Strong && (v13 = Strong, v18.origin.x = sub_1012178E4(), v17.x = v9, v17.y = v11, v14 = CGRectContainsPoint(v18, v17), v13, v14) || sub_1011C1968(v9, v11);
  }

  else
  {
    return 0;
  }

  return v15;
}

void sub_1012167B8(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLTableRep();
  objc_msgSendSuper2(&v5, "processChangedProperty:", a1);
  v3 = a1 - 58;
  if ((a1 - 58) <= 8)
  {
    if (((1 << v3) & 0x138) != 0)
    {
      [v1 setNeedsDisplay];
      v4 = [v1 canvas];
      [v4 canvasInvalidatedForRep:v1];
    }

    else if (((1 << v3) & 3) != 0)
    {
      [v1 setNeedsDisplay];
      [v1 invalidateKnobs];
    }

    else if (a1 == 60)
    {
      [v1 setNeedsDisplay];
    }
  }
}

id sub_101216900(void *a1)
{
  if (a1)
  {
    type metadata accessor for CRLTableRowColumnResizeKnobTracker();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = a1;
      v6 = [v4 knob];
      type metadata accessor for CRLTableKnob();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant;
        if (*(v7 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) > 1u)
        {

          v6 = v5;
        }

        else
        {
          [v4 currentPosition];
          v10 = v9;
          v12 = v11;

          [v1 convertNaturalPointFromUnscaledCanvas:{v10, v12}];
          if (*(v8 + 8) && (*(v8 + 8) != 2 || *v8))
          {
            sub_101226ED0(v13, v14);
          }

          else
          {
            sub_101226BF8(v13, v14);
          }

          [v1 invalidateKnobPositions];
          [v1 setNeedsDisplay];
        }
      }

      else
      {
      }
    }
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for CRLTableRep();
  return objc_msgSendSuper2(&v16, "dynamicallyResizingWithTracker:", a1);
}

void sub_101216C80(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A2C890);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59 - v6;
  v8 = _s15CapsuleDatabaseVMa();
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isSelected])
  {
    return;
  }

  v69 = v8;
  v70 = v7;
  v71 = v5;
  if (qword_1019F2AC8 != -1)
  {
    swift_once();
  }

  v12 = *&qword_101AD9310;
  v13 = type metadata accessor for CRLTableKnob();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant];
  *v15 = 1;
  v15[8] = 2;
  v76.receiver = v14;
  v76.super_class = v13;
  v16 = objc_msgSendSuper2(&v76, "initWithType:position:radius:tag:onRep:", 0, 29, v2, 0.0, 0.0, v12);
  [a1 addObject:v16];

  v17 = objc_allocWithZone(v13);
  v18 = &v17[OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant];
  *v18 = 0;
  v18[8] = 2;
  v75.receiver = v17;
  v75.super_class = v13;
  v19 = objc_msgSendSuper2(&v75, "initWithType:position:radius:tag:onRep:", 0, 29, v2, 0.0, 0.0, v12);
  [a1 addObject:v19];

  v20 = sub_101213504();
  if (v20)
  {
    v21 = v20;
    v22 = sub_1011D78CC();

    if (v22)
    {

      return;
    }
  }

  v67 = v11;
  v68 = v4;
  v23 = type metadata accessor for CRLTableRep();
  v74.receiver = v2;
  v74.super_class = v23;
  objc_msgSendSuper2(&v74, "addKnobsToArray:", a1);
  v24 = [v2 layout];
  v65 = type metadata accessor for CRLTableLayout();
  v25 = [swift_dynamicCastClassUnconditional() boardItem];
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = v25;

  v64 = type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  v62 = type metadata accessor for CRLTableItemData();
  v27 = swift_dynamicCastClassUnconditional();
  v28 = qword_101AD9268;
  swift_beginAccess();
  v66 = v26;
  v29 = v71;
  v30 = *(v71 + 16);
  v31 = v27 + v28;
  v32 = v70;
  v33 = v68;
  v63 = v71 + 16;
  v61 = v30;
  v30(v70, v31, v68);
  v34 = v67;
  Capsule.root.getter();
  v35 = *(v29 + 8);
  v71 = v29 + 8;
  v60 = v35;
  v35(v32, v33);
  v36 = v34;
  sub_1005B981C(&unk_101A2C7D0);
  v37 = CROrderedDictionary.count.getter();

  sub_1012243B0(v34, _s15CapsuleDatabaseVMa);
  v38 = v37 - 1;
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v38 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v37 != 1)
  {
    v39 = 0;
    do
    {
      v40 = v39 + 1;
      v41 = objc_allocWithZone(v13);
      v42 = &v41[OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant];
      *v42 = v39;
      v42[8] = 0;
      v73.receiver = v41;
      v73.super_class = v13;
      v43 = objc_msgSendSuper2(&v73, "initWithType:position:radius:tag:onRep:", 0, 29, v2, 0.0, 0.0, v12);
      [a1 addObject:v43];

      v39 = v40;
    }

    while (v38 != v40);
  }

  v44 = [v2 layout];
  v45 = [swift_dynamicCastClassUnconditional() boardItem];
  if (!v45)
  {
    goto LABEL_25;
  }

  v46 = v45;

  swift_dynamicCastClassUnconditional();
  v47 = swift_dynamicCastClassUnconditional();
  v48 = qword_101AD9268;
  swift_beginAccess();
  v49 = v47 + v48;
  v50 = v70;
  v51 = v68;
  v61(v70, v49, v68);
  Capsule.root.getter();
  v60(v50, v51);
  sub_1005B981C(&unk_101A2D830);
  v52 = CROrderedDictionary.count.getter();

  sub_1012243B0(v36, _s15CapsuleDatabaseVMa);
  v53 = v52 - 1;
  if (__OFSUB__(v52, 1))
  {
    goto LABEL_22;
  }

  if (v53 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  if (v52 != 1)
  {
    v54 = 0;
    do
    {
      v55 = v54 + 1;
      v56 = objc_allocWithZone(v13);
      v57 = &v56[OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant];
      *v57 = v54;
      v57[8] = 1;
      v72.receiver = v56;
      v72.super_class = v13;
      v58 = objc_msgSendSuper2(&v72, "initWithType:position:radius:tag:onRep:", 0, 29, v2, 0.0, 0.0, v12);
      [a1 addObject:v58];

      v54 = v55;
    }

    while (v53 != v55);
  }
}

void sub_1012173B4(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 layout];
  [v4 boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v2 canvas];
  if (v13)
  {
    v14 = v13;
    [v13 viewScale];
    v52 = v15;

    if (a1 >> 62)
    {
      goto LABEL_33;
    }

    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      while (1)
      {
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        v17 = 0;
        v18 = 26.0 / v52;
        v51 = 26.0 / v52;
        while (1)
        {
          v23 = (a1 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v17 + 32);
          v24 = v23;
          type metadata accessor for CRLTableKnob();
          v25 = swift_dynamicCastClass();
          if (v25)
          {
            break;
          }

          sub_1005B981C(&unk_1019F4D60);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_101465920;
          *(v19 + 32) = v24;
          sub_100006370(0, &unk_101A28760);
          v20 = v24;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v22 = type metadata accessor for CRLTableRep();
          v53.receiver = v2;
          v53.super_class = v22;
          objc_msgSendSuper2(&v53, "updatePositionsOfKnobs:", isa);

LABEL_7:
          ++v17;

          if (v16 == v17)
          {
            return;
          }
        }

        v26 = v25;
        v27 = *(v25 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant);
        if (!*(v25 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8))
        {
          break;
        }

        v28 = v6;
        v29 = v8;
        v30 = v10;
        v31 = v12;
        if (*(v25 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) != 1)
        {
          if (v27)
          {
            MaxX = CGRectGetMaxX(*&v28);
            if (qword_1019F2AC8 != -1)
            {
              v49 = MaxX;
              swift_once();
              MaxX = v49;
            }

            v44 = *&qword_101AD9310;
            v45 = MaxX + *&qword_101AD9310 / v52 + 26.0;
            v57.origin.x = v6;
            v57.origin.y = v8;
            v57.size.width = v10;
            v57.size.height = v12;
            v46 = CGRectGetMinY(v57) / v52 - (v44 + 26.0);
          }

          else
          {
            MinX = CGRectGetMinX(*&v28);
            if (qword_1019F2AC8 != -1)
            {
              v50 = MinX;
              swift_once();
              MinX = v50;
            }

            v48 = *&qword_101AD9310;
            v45 = MinX / v52 - (*&qword_101AD9310 + 26.0);
            v58.origin.x = v6;
            v58.origin.y = v8;
            v58.size.width = v10;
            v58.size.height = v12;
            v46 = CGRectGetMaxY(v58) + v48 / v52 + 26.0;
          }

          [v26 setPosition:{v45, v46, *&v51}];
          v18 = v51;
          goto LABEL_7;
        }

        v32 = CGRectGetMinX(*&v28);
        v33 = [v2 layout];
        type metadata accessor for CRLTableLayout();
        swift_dynamicCastClassUnconditional();
        v34 = sub_101205638();

        if ((v27 & 0x8000000000000000) == 0)
        {
          if (v27 >= *(v34 + 2))
          {
            goto LABEL_31;
          }

          v35 = *&v34[8 * v27 + 32];

          v36 = v32 + v35;
          v54.origin.x = v6;
          v54.origin.y = v8;
          v54.size.width = v10;
          v54.size.height = v12;
          v37 = CGRectGetMinY(v54) - v18;
LABEL_20:
          [v26 setPosition:{v36, v37, *&v51}];
          goto LABEL_7;
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (!v16)
        {
          return;
        }
      }

      v55.origin.x = v6;
      v55.origin.y = v8;
      v55.size.width = v10;
      v55.size.height = v12;
      v38 = CGRectGetMinX(v55);
      v56.origin.x = v6;
      v56.origin.y = v8;
      v56.size.width = v10;
      v56.size.height = v12;
      MinY = CGRectGetMinY(v56);
      v40 = [v2 layout];
      type metadata accessor for CRLTableLayout();
      swift_dynamicCastClassUnconditional();
      v41 = sub_1012054CC();

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      if (v27 >= *(v41 + 2))
      {
        goto LABEL_32;
      }

      v36 = v38 - v18;
      v42 = *&v41[8 * v27 + 32];

      v37 = MinY + v42;
      goto LABEL_20;
    }
  }
}

double sub_1012178E4()
{
  v1 = [v0 layout];
  [v1 boundsForStandardKnobs];
  v3 = v2;
  v5 = v4;

  v6 = [v0 canvas];
  if (v6)
  {
    v7 = v6;
    [v6 viewScale];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [v0 layout];
  [v10 convertNaturalRectToUnscaledCanvas:{v3 - (18.0 / v9 + 22.0), v5 - (18.0 / v9 + 20.0), 22.0 / v9, 20.0 / v9}];
  v12 = v11;

  return v12;
}

void sub_101217A08(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 layout];
  [v4 boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;

  v9 = [v2 canvas];
  if (!v9)
  {
    v12 = 1.0;
    if (a1 >= 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0.0;
    goto LABEL_7;
  }

  v10 = v9;
  [v9 viewScale];
  v12 = v11;

  if (a1 < 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = [v2 layout];
  type metadata accessor for CRLTableLayout();
  swift_dynamicCastClassUnconditional();
  v14 = sub_1012054CC();

  if (*(v14 + 2) < a1)
  {
    goto LABEL_14;
  }

  v15 = *&v14[8 * a1 + 24];

LABEL_7:
  v16 = [v2 layout];
  type metadata accessor for CRLTableLayout();
  v17 = swift_dynamicCastClassUnconditional();
  v18 = (v17 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    v20 = v18[1];
    sub_1011DAB7C(*v18);

    sub_1011DABBC(v19);

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = *(v17 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8);

  if (a1 < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (*(v20 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v21 = *(v20 + 8 * a1 + 32);

  v22 = [v2 layout];
  [v22 convertNaturalRectToUnscaledCanvas:{v6 - (15.0 / v12 + 18.0 / v12), v8 + v15 + v21 * 0.5 - 28.0 / v12 * 0.5, 15.0 / v12, 28.0 / v12}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31[0] = 1.0;
  v31[1] = 0.0;
  v31[2] = 0.0;
  v31[3] = 1.0;
  v31[4] = 0.0;
  v31[5] = 0.0;
  sub_10018F324(v31, v24, v26, v28, v30, 0.0, v12);
}

char *sub_101217D24()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A2C890);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = _s15CapsuleDatabaseVMa();
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 layout];
  type metadata accessor for CRLTableLayout();
  result = [swift_dynamicCastClassUnconditional() boardItem];
  if (!result)
  {
    goto LABEL_14;
  }

  v12 = result;

  type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  type metadata accessor for CRLTableItemData();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = qword_101AD9268;
  swift_beginAccess();
  (*(v3 + 16))(v5, v13 + v14, v2);
  Capsule.root.getter();
  (*(v3 + 8))(v5, v2);
  sub_1005B981C(&unk_101A2C7D0);
  v15 = CROrderedDictionary.count.getter();

  result = sub_1012243B0(v9, _s15CapsuleDatabaseVMa);
  if (v15 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    sub_101217A08(v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100B378BC(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = sub_100B378BC((v26 > 1), v27 + 1, 1, v17);
    }

    ++v16;
    *(v17 + 2) = v27 + 1;
    v28 = &v17[32 * v27];
    *(v28 + 4) = v19;
    *(v28 + 5) = v21;
    *(v28 + 6) = v23;
    *(v28 + 7) = v25;
  }

  while (v15 != v16);
  return v17;
}

void sub_101218060(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 layout];
  [v4 boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;

  v9 = [v2 canvas];
  if (!v9)
  {
    v12 = 1.0;
    if (a1 >= 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0.0;
    goto LABEL_7;
  }

  v10 = v9;
  [v9 viewScale];
  v12 = v11;

  if (a1 < 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = [v2 layout];
  type metadata accessor for CRLTableLayout();
  swift_dynamicCastClassUnconditional();
  v14 = sub_101205638();

  if (*(v14 + 2) < a1)
  {
    goto LABEL_14;
  }

  v15 = *&v14[8 * a1 + 24];

LABEL_7:
  v16 = [v2 layout];
  type metadata accessor for CRLTableLayout();
  v17 = swift_dynamicCastClassUnconditional();
  v18 = (v17 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    sub_1011DAB7C(v19);

    sub_1011DABBC(v20);

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = *(v17 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState);

  if (a1 < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (*(v19 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v21 = *(v19 + 8 * a1 + 32);

  v22 = [v2 layout];
  [v22 convertNaturalRectToUnscaledCanvas:{v6 + v15 + v21 * 0.5 - 28.0 / v12 * 0.5, v8 - (15.0 / v12 + 18.0 / v12), 28.0 / v12, 15.0 / v12}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31[0] = 1.0;
  v31[1] = 0.0;
  v31[2] = 0.0;
  v31[3] = 1.0;
  v31[4] = 0.0;
  v31[5] = 0.0;
  sub_10018F324(v31, v24, v26, v28, v30, 0.0, v12);
}

char *sub_10121836C()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A2C890);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = _s15CapsuleDatabaseVMa();
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 layout];
  type metadata accessor for CRLTableLayout();
  result = [swift_dynamicCastClassUnconditional() boardItem];
  if (!result)
  {
    goto LABEL_14;
  }

  v12 = result;

  type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  type metadata accessor for CRLTableItemData();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = qword_101AD9268;
  swift_beginAccess();
  (*(v3 + 16))(v5, v13 + v14, v2);
  Capsule.root.getter();
  (*(v3 + 8))(v5, v2);
  sub_1005B981C(&unk_101A2D830);
  v15 = CROrderedDictionary.count.getter();

  result = sub_1012243B0(v9, _s15CapsuleDatabaseVMa);
  if (v15 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    sub_101218060(v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100B378BC(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = sub_100B378BC((v26 > 1), v27 + 1, 1, v17);
    }

    ++v16;
    *(v17 + 2) = v27 + 1;
    v28 = &v17[32 * v27];
    *(v28 + 4) = v19;
    *(v28 + 5) = v21;
    *(v28 + 6) = v23;
    *(v28 + 7) = v25;
  }

  while (v15 != v16);
  return v17;
}

void sub_1012186A8(uint64_t a1@<X8>)
{
  v3 = [v1 isBeingDragged];
  v4 = 0uLL;
  if ((v3 & 1) == 0)
  {
    v7 = v1;
    v8 = sub_101213504();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1011D78CC();

      if (v10)
      {
        v11 = &v7[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex];
        if (v7[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex + 16] != 1)
        {
          v12 = v7;
          v13 = &v7[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex];
          if (v7[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex + 16] != 1)
          {
            v15 = *v11;
            v14 = *(v11 + 1);
            v16 = *v13;
            v92 = *(v13 + 1);
            v17 = [v7 layout];
            [v17 boundsForStandardKnobs];
            v19 = v18;
            v21 = v20;

            v22 = [v7 canvas];
            if (v22)
            {
              v23 = v22;
              [v22 viewScale];
              v25 = v24;
            }

            else
            {
              v25 = 1.0;
            }

            if (*(v10 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type))
            {
              if (*(v10 + OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type) == 1)
              {
                v26 = [v7 layout];
                type metadata accessor for CRLTableLayout();
                v27 = swift_dynamicCastClassUnconditional();
                v28 = (v27 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
                swift_beginAccess();
                v29 = *v28;
                if (*v28)
                {
                  v30 = v28[1];
                  sub_1011DAB7C(v29);

                  sub_1011DABBC(v29);
                }

                else
                {
                  v30 = *(v27 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8);
                }

                if (v16 >= v15)
                {
                  v37 = v16 + 1;
                  if (!__OFADD__(v16, 1))
                  {
                    if ((v15 & 0x8000000000000000) == 0)
                    {
                      v38 = *(v30 + 16);
                      if (v38 >= v15 && v38 >= v37)
                      {
                        if ((v37 & 0x8000000000000000) == 0)
                        {
                          v39 = 0.0;
                          v40 = 0.0;
                          if (v15 != v37)
                          {
                            if (v15 >= v37)
                            {
LABEL_70:
                              __break(1u);
LABEL_71:
                              __break(1u);
                            }

                            v41 = v16 - v15 + 1;
                            v42 = v15;
                            if (v41 <= 3)
                            {
                              goto LABEL_32;
                            }

                            v42 = v15 + (v41 & 0xFFFFFFFFFFFFFFFCLL);
                            v43 = (v30 + 8 * v15 + 48);
                            v44 = v41 & 0xFFFFFFFFFFFFFFFCLL;
                            do
                            {
                              v40 = v40 + *(v43 - 2) + *(v43 - 1) + *v43 + v43[1];
                              v43 += 4;
                              v44 -= 4;
                            }

                            while (v44);
                            if (v41 != (v41 & 0xFFFFFFFFFFFFFFFCLL))
                            {
LABEL_32:
                              v45 = v16 - v42 + 1;
                              v46 = (v30 + 8 * v42 + 32);
                              do
                              {
                                v47 = *v46++;
                                v40 = v40 + v47;
                                --v45;
                              }

                              while (v45);
                            }
                          }

                          if (!v15)
                          {
LABEL_37:
                            v50 = [v12 layout];
                            [v50 convertNaturalRectToUnscaledCanvas:{v19 - (15.0 / v25 + 18.0 / v25), v21 + v39, 15.0 / v25, v40}];
                            v52 = v51;
                            v54 = v53;
                            v56 = v55;
                            v58 = v57;

                            v94 = 0x3FF0000000000000;
                            v95 = 0;
                            v96 = 0;
                            v97 = 0x3FF0000000000000;
                            v98 = 0;
                            v99 = 0;
                            sub_10018F324(&v94, v52, v54, v56, v58, 0.0, v25);
                            v90 = v60;
                            v91 = v59;
                            v93 = v61;
                            v89 = v62;

                            v5 = 0;
LABEL_57:
                            *&v4 = v91;
                            *(&v4 + 1) = v90;
                            *&v6 = v93;
                            *(&v6 + 1) = v89;
                            goto LABEL_16;
                          }

                          v48 = [v7 layout];
                          swift_dynamicCastClassUnconditional();
                          v49 = sub_1012054CC();

                          if (v15 <= *(v49 + 2))
                          {
                            v39 = *&v49[8 * v15 + 24];

                            v12 = v7;
                            goto LABEL_37;
                          }

                          goto LABEL_68;
                        }

                        goto LABEL_66;
                      }

                      goto LABEL_64;
                    }

                    goto LABEL_62;
                  }

                  goto LABEL_60;
                }

                __break(1u);
              }

              else
              {
                v31 = v14;
                v32 = [v7 layout];
                type metadata accessor for CRLTableLayout();
                v33 = swift_dynamicCastClassUnconditional();
                v34 = (v33 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
                swift_beginAccess();
                v35 = *v34;
                if (*v34)
                {
                  sub_1011DAB7C(v35);

                  sub_1011DABBC(v36);
                }

                else
                {
                  v35 = *(v33 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState);
                }

                if (v92 >= v31)
                {
                  v63 = v92 + 1;
                  if (!__OFADD__(v92, 1))
                  {
                    if ((v31 & 0x8000000000000000) == 0)
                    {
                      v64 = *(v35 + 16);
                      if (v64 >= v31 && v64 >= v63)
                      {
                        if ((v63 & 0x8000000000000000) == 0)
                        {
                          v65 = 0.0;
                          v66 = 0.0;
                          if (v31 != v63)
                          {
                            if (v31 >= v63)
                            {
                              goto LABEL_71;
                            }

                            v67 = v92 - v31 + 1;
                            v68 = v31;
                            if (v67 <= 3)
                            {
                              goto LABEL_51;
                            }

                            v68 = v31 + (v67 & 0xFFFFFFFFFFFFFFFCLL);
                            v69 = (v35 + 8 * v31 + 48);
                            v70 = v67 & 0xFFFFFFFFFFFFFFFCLL;
                            do
                            {
                              v66 = v66 + *(v69 - 2) + *(v69 - 1) + *v69 + v69[1];
                              v69 += 4;
                              v70 -= 4;
                            }

                            while (v70);
                            if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
                            {
LABEL_51:
                              v71 = v92 - v68 + 1;
                              v72 = (v35 + 8 * v68 + 32);
                              do
                              {
                                v73 = *v72++;
                                v66 = v66 + v73;
                                --v71;
                              }

                              while (v71);
                            }
                          }

                          if (v31)
                          {
                            v74 = [v7 layout];
                            swift_dynamicCastClassUnconditional();
                            v75 = sub_101205638();

                            if (v31 > *(v75 + 2))
                            {
LABEL_69:
                              __break(1u);
                              goto LABEL_70;
                            }

                            v65 = *&v75[8 * v31 + 24];

                            v12 = v7;
                          }

                          v76 = [v12 layout];
                          [v76 convertNaturalRectToUnscaledCanvas:{v19 + v65, v21 - (15.0 / v25 + 18.0 / v25), v66, 15.0 / v25}];
                          v78 = v77;
                          v80 = v79;
                          v82 = v81;
                          v84 = v83;

                          v94 = 0x3FF0000000000000;
                          v95 = 0;
                          v96 = 0;
                          v97 = 0x3FF0000000000000;
                          v98 = 0;
                          v99 = 0;
                          sub_10018F324(&v94, v78, v80, v82, v84, 0.0, v25);
                          v90 = v86;
                          v91 = v85;
                          v93 = v87;
                          v89 = v88;

                          v5 = 1;
                          goto LABEL_57;
                        }

                        goto LABEL_67;
                      }

                      goto LABEL_65;
                    }

                    goto LABEL_63;
                  }

                  goto LABEL_61;
                }
              }

              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }
          }
        }
      }
    }

    v5 = 2;
    v6 = 0uLL;
    v4 = 0uLL;
    goto LABEL_16;
  }

  v5 = 2;
  v6 = 0uLL;
LABEL_16:
  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
}

uint64_t sub_101218E44()
{
  v1 = v0;
  v42.receiver = v0;
  v42.super_class = type metadata accessor for CRLTableRep();
  v2 = objc_msgSendSuper2(&v42, "overlayRenderables");
  sub_100006370(0, &qword_101A00020);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v3;
  v4 = OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome;
  v5 = *&v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome];
  if (v5)
  {
    v6 = v5;
    if (sub_1011C0C24())
    {
      if ([v1 isSelected])
      {
        v7 = objc_opt_self();
        sub_100006370(0, &qword_1019FFFF0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v9 = [v7 renderablesFromLayers:isa];

        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10079C2A4(v10);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    v40 = OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome;
    v39 = objc_opt_self();
    v11 = [v39 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 459;
    v23 = v41;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v39 handleFailureInFunction:v30 file:v31 lineNumber:459 isFatal:0 format:v32 args:v29];

    v4 = v40;
  }

  v33 = sub_101219620();
  if (v33)
  {
    v34 = v33;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v35 = *&v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable];
  if (v35)
  {
    v36 = *&v1[v4];
    if (v36)
    {
      if (*(v36 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode) - 1 <= 2)
      {
        v37 = v35;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }

  return v43;
}

id sub_101219620()
{
  v1 = v0;
  v2 = [v0 interactiveCanvasController];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v0 layout];
  type metadata accessor for CRLTableLayout();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = *(v5 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell);
  v7 = *(v5 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 8);
  v8 = *(v5 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16);

  if (v8 == 1)
  {
    v9 = &v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_lastDynamicAnchorCell];
    if (v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_lastDynamicAnchorCell + 16] == 1)
    {

LABEL_5:
      v10 = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable];
      v11 = v10;
      return v10;
    }

    v6 = *v9;
    v7 = v9[1];
  }

  v12 = OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable;
  v10 = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v10 = [objc_opt_self() renderable];
    v14 = objc_opt_self();
    v15 = [v14 clearColor];
    v16 = [v15 CGColor];

    [v10 setFillColor:v16];
    v17 = [v14 systemBlueColor];
    v18 = [v17 CGColor];

    [v10 setStrokeColor:v18];
    [v10 setLineWidth:3.0];
    v19 = [v0 layout];
    swift_dynamicCastClassUnconditional();
    sub_10120C854(v6, v7);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v0 convertNaturalRectToUnscaledCanvas:{v21, v23, v25, v27}];
    [v3 convertUnscaledToBoundsRect:?];
    Mutable = CGPathCreateMutable();
    CGMutablePathRef.addRect(_:transform:)();
    v29 = Mutable;
    [v10 setPath:{v29, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];

    v30 = *&v1[v12];
    *&v1[v12] = v10;
    v31 = v10;
  }

  return v10;
}

void sub_1012199BC()
{
  v1 = [objc_opt_self() renderable];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v3 CGColor];

  [v1 setFillColor:v4];
  v5 = [v2 tintColor];
  v6 = [v5 CGColor];

  [v1 setStrokeColor:v6];
  [v1 setLineWidth:2.5];
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable);
  *(v0 + OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable) = v1;
}

double sub_101219AE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = [v4 layout];
  type metadata accessor for CRLTableLayout();
  swift_dynamicCastClassUnconditional();
  sub_10120C854(a1, a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_10120C854(a3, a4);
  v70.origin.x = v18;
  v70.origin.y = v19;
  v70.size.width = v20;
  v70.size.height = v21;
  v64.origin.x = v11;
  v64.origin.y = v13;
  v64.size.width = v15;
  v64.size.height = v17;
  v65 = CGRectUnion(v64, v70);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;

  [v4 convertNaturalRectToUnscaledCanvas:{x, y, width, height}];
  v26 = v66.origin.x;
  v27 = v66.origin.y;
  v28 = v66.size.width;
  v29 = v66.size.height;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = v26;
  v67.origin.y = v27;
  v67.size.width = v28;
  v67.size.height = v29;
  CGRectGetMinY(v67);
  v68.origin.x = v26;
  v68.origin.y = v27;
  v68.size.width = v28;
  v68.size.height = v29;
  MaxX = CGRectGetMaxX(v68);
  v69.origin.x = v26;
  v69.origin.y = v27;
  v69.size.width = v28;
  v69.size.height = v29;
  CGRectGetMaxY(v69);
  v32 = [v4 interactiveCanvasController];
  if (!v32)
  {
    v41 = objc_opt_self();
    v42 = [v41 _atomicIncrementAssertCount];
    v63 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v63);
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    v45 = [v44 lastPathComponent];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v49 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v42;
      v51 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v51;
      v52 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v52;
      *(inited + 72) = v43;
      *(inited + 136) = &type metadata for String;
      v53 = sub_1000053B0();
      *(inited + 112) = v46;
      *(inited + 120) = v48;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v53;
      *(inited + 152) = 587;
      v54 = v63;
      *(inited + 216) = v51;
      *(inited + 224) = v52;
      *(inited + 192) = v54;
      v55 = v43;
      v56 = v54;
      v57 = static os_log_type_t.error.getter();
      v48 = &_mh_execute_header;
      sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v58 = static os_log_type_t.error.getter();
      sub_100005404(v49, &_mh_execute_header, v58, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v43 = swift_allocObject();
      v43[2] = 8;
      v43[3] = 0;
      v43[4] = 0;
      v43[5] = 0;
      v59 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v60 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v42 = v61;
      v62 = String._bridgeToObjectiveC()();

      [v41 handleFailureInFunction:v60 file:v46 lineNumber:587 isFatal:0 format:v62 args:v59];

      __break(1u);
LABEL_5:
      swift_once();
    }
  }

  v33 = v32;
  v34 = sub_100120604(v26, v27, v28, v29, MinX + -1.0);
  [v33 convertUnscaledToBoundsRect:{sub_100120604(v34, v35, v36, v37, MaxX + 1.0)}];
  v39 = v38;

  return v39;
}

uint64_t sub_10121A084()
{
  v1 = v0;
  v2 = [v0 layout];
  type metadata accessor for CRLTableLayout();
  v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16);

  if (v3)
  {
    return 0;
  }

  v4 = &v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_previousDragPointOnRep];
  if (v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_previousDragPointOnRep + 16])
  {
    return 0;
  }

  v5 = &v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep];
  if (v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep + 16])
  {
    return 0;
  }

  v8 = *v5;
  v7 = v5[1];
  v10 = *v4;
  v9 = v4[1];
  v11 = [v1 layout];
  swift_dynamicCastClassUnconditional();
  v12 = sub_10120C344(v10, v9);
  if (v14)
  {

    return 1;
  }

  v15 = v12;
  v16 = v13;
  v17 = sub_10120C344(v8, v7);
  v19 = v18;
  v21 = v20;

  if (v21)
  {
    return 1;
  }

  result = 1;
  if (v15 == v17 && v16 == v19)
  {
    v22 = [v1 layout];
    v23 = swift_dynamicCastClassUnconditional();
    v24 = *(v23 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed);
    v25 = *(v23 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed + 8);
    v26 = *(v23 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed + 16);
    v27 = *(v23 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed + 24);
    v28 = *(v23 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed + 32);

    if (v28)
    {
      return 0;
    }

    v29.origin.x = v24;
    v29.origin.y = v25;
    v29.size.width = v26;
    v29.size.height = v27;
    if (CGRectGetMaxX(v29) >= v8)
    {
      v30.origin.x = v24;
      v30.origin.y = v25;
      v30.size.width = v26;
      v30.size.height = v27;
      if (CGRectGetMaxY(v30) >= v7)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void sub_10121A284()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for CRLTableRep();
  objc_msgSendSuper2(&v17, "updateFromLayout");
  v1 = &v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_lastDynamicAnchorCell];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_lastDynamicAnchorCell];
  v3 = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_lastDynamicAnchorCell + 8];
  v4 = v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_lastDynamicAnchorCell + 16];
  v5 = [v0 layout];
  type metadata accessor for CRLTableLayout();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v6 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell);
  v8 = *(v6 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 8);
  v9 = *(v6 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16);

  if (v4)
  {
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if ((v9 & 1) != 0 || (v2 == v7 ? (v10 = v3 == v8) : (v10 = 0), !v10))
  {
LABEL_9:
    if (v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cellBorderHighlightNeedsAnimation] == 1)
    {
      v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cellBorderHighlightNeedsAnimation] = 0;
    }

    else
    {
      v11 = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable];
      *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable] = 0;

      v12 = [v0 interactiveCanvasController];
      [v12 invalidateOverlayLayersForRep:v0];
    }

    v13 = [v0 layout];
    v14 = swift_dynamicCastClassUnconditional();
    v15 = *(v14 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16);
    v16 = *(v14 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell);

    *v1 = v16;
    v1[16] = v15;
  }

LABEL_13:
  if (([v0 isBeingDragged] & 1) == 0)
  {
    sub_10121C3DC();
  }
}

void sub_10121A5BC(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v56 = &v51 - v9;
  v54 = _s13StyleCRDTDataVMa();
  __chkstk_darwin(v54);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A2C890);
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v51 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v51);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep];
  LOBYTE(v14) = v16[16];
  v17 = &v4[OBJC_IVAR____TtC8Freeform11CRLTableRep_previousDragPointOnRep];
  *v17 = *v16;
  v17[16] = v14;
  [v4 convertNaturalPointFromUnscaledCanvas:{a2, a3}];
  *v16 = v18;
  *(v16 + 1) = v19;
  v16[16] = 0;
  if (([v4 isLocked] & 1) == 0)
  {
    if (a1 >> 62)
    {
LABEL_25:
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v20 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v22 = *(a1 + 8 * i + 32);
      }

      v23 = v22;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v24 = sub_10121C240(v22);

      if (v24)
      {
        return;
      }
    }

    if (sub_10121A084())
    {
      v25 = [v4 layout];
      type metadata accessor for CRLTableLayout();
      v26 = swift_dynamicCastClassUnconditional();
      v27 = &v26[OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState];
      swift_beginAccess();
      v28 = *v27;
      *v27 = 0u;
      *(v27 + 1) = 0u;
      sub_1011DABBC(v28);
      [v26 invalidateSize];

      v29 = [v4 layout];
      v30 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell;
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = 1;
      sub_1012053C8();
    }

    v31 = [v4 layout];
    type metadata accessor for CRLTableLayout();
    v32 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16);

    if (v32)
    {
      v33 = OBJC_IVAR____TtC8Freeform11CRLTableRep_activateCellAnchorTask;
      if (*&v4[OBJC_IVAR____TtC8Freeform11CRLTableRep_activateCellAnchorTask])
      {

        Task.cancel()();
      }

      v34 = type metadata accessor for TaskPriority();
      v35 = v56;
      (*(*(v34 - 8) + 56))(v56, 1, 1, v34);
      type metadata accessor for MainActor();
      v36 = v4;

      v37 = static MainActor.shared.getter();
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = &protocol witness table for MainActor;
      v38[4] = v36;
      v38[5] = a1;
      v38[6] = ObjectType;
      *&v4[v33] = sub_10064191C(0, 0, v35, &unk_1014D3570, v38);
    }

    else
    {
      v39 = [v4 layout];
      v40 = [swift_dynamicCastClassUnconditional() boardItem];
      if (v40)
      {
        v41 = v40;

        type metadata accessor for CRLTableItem();
        swift_dynamicCastClassUnconditional();
        type metadata accessor for CRLTableItemData();
        v42 = swift_dynamicCastClassUnconditional();
        v43 = qword_101AD9268;
        swift_beginAccess();
        v44 = v52;
        v45 = v42 + v43;
        v46 = v53;
        (*(v52 + 16))(v13, v45, v53);
        Capsule.root.getter();
        (*(v44 + 8))(v13, v46);
        v47 = v55;
        sub_101224348(&v15[*(v51 + 32)], v55, _s13StyleCRDTDataVMa);
        sub_1012243B0(v15, _s15CapsuleDatabaseVMa);
        sub_1005B981C(&qword_101A2C810);
        CRRegister.wrappedValue.getter();

        sub_1012243B0(v47, _s13StyleCRDTDataVMa);
        if (v58 == 1)
        {
          v48 = [v4 layout];
          swift_dynamicCastClassUnconditional();
          sub_10120E0F8(a1);

          v49 = *&v4[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable];
          *&v4[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable] = 0;

          v50 = [v4 interactiveCanvasController];
          [v50 invalidateOverlayLayersForRep:v4];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10121AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = _s13StyleCRDTDataVMa();
  v5[8] = swift_task_alloc();
  v6 = sub_1005B981C(&unk_101A2C890);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = _s15CapsuleDatabaseVMa();
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v9;
  v5[19] = v8;

  return _swift_task_switch(sub_10121AEC4, v9, v8);
}

uint64_t sub_10121AEC4()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_10121AFA4;

  return sub_100061EEC(v1, v3, 0, 0, 1);
}

uint64_t sub_10121AFA4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_1012255A4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_10121B138;
  }

  return _swift_task_switch(v9, v7, v8);
}

id sub_10121B138()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 40);
    v2 = &v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep];
    if ((v1[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep + 16] & 1) == 0)
    {
      v4 = *v2;
      v3 = v2[1];
      v5 = [*(v0 + 40) layout];
      type metadata accessor for CRLTableLayout();
      v6 = swift_dynamicCastClassUnconditional();
      v7 = [v1 layout];
      swift_dynamicCastClassUnconditional();
      v8 = sub_10120C344(v4, v3);
      v10 = v9;
      v12 = v11;

      v13 = v6 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell;
      *v13 = v8;
      *(v13 + 8) = v10;
      *(v13 + 16) = v12 & 1;
      sub_1012053C8();

      v14 = [v1 layout];
      result = [swift_dynamicCastClassUnconditional() boardItem];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v16 = result;
      v18 = *(v0 + 96);
      v17 = *(v0 + 104);
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);
      v21 = *(v0 + 64);
      v22 = *(v0 + 72);

      type metadata accessor for CRLTableItem();
      swift_dynamicCastClassUnconditional();
      type metadata accessor for CRLTableItemData();
      v23 = swift_dynamicCastClassUnconditional();
      v24 = qword_101AD9268;
      swift_beginAccess();
      (*(v19 + 16))(v20, v23 + v24, v22);
      Capsule.root.getter();
      (*(v19 + 8))(v20, v22);
      sub_101224348(v17 + *(v18 + 32), v21, _s13StyleCRDTDataVMa);
      sub_1012243B0(v17, _s15CapsuleDatabaseVMa);
      sub_1005B981C(&qword_101A2C810);
      CRRegister.wrappedValue.getter();

      sub_1012243B0(v21, _s13StyleCRDTDataVMa);
      if (*(v0 + 168) == 1)
      {
        v25 = [*(v0 + 40) layout];
        v26 = swift_dynamicCastClassUnconditional();
        v27 = (v26 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell);
        if ((*(v26 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16) & 1) == 0)
        {
          v28 = v26;
          v30 = *v27;
          v29 = v27[1];
          sub_10120F4E4(*(v0 + 48));
          v32 = v31;
          rect = v31;
          rect_8 = v33;
          v35 = v34;
          v37 = v36;
          sub_10120C854(v30, v29);
          x = v56.origin.x;
          y = v56.origin.y;
          width = v56.size.width;
          height = v56.size.height;
          v42 = CGRectGetWidth(v56);
          v57.origin.x = v32;
          v57.origin.y = v35;
          v57.size.width = v37;
          v57.size.height = rect_8;
          rect_24 = v42 + CGRectGetWidth(v57) + 28.0;
          v58.origin.x = x;
          v58.origin.y = y;
          v58.size.width = width;
          v58.size.height = height;
          v43 = CGRectGetHeight(v58);
          v59.origin.x = rect;
          v59.origin.y = v35;
          v59.size.width = v37;
          v59.size.height = rect_8;
          v44 = CGRectGetHeight(v59);
          v45 = v28 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_largestDynamicAnchorCellBoundAllowed;
          *v45 = x;
          *(v45 + 8) = y;
          *(v45 + 16) = rect_24;
          *(v45 + 24) = v43 + v44 + 28.0;
          *(v45 + 32) = 0;
        }

        v47 = *(v0 + 40);
        v46 = *(v0 + 48);

        v48 = [v47 layout];
        swift_dynamicCastClassUnconditional();
        sub_10120E0F8(v46);

        v49 = *&v47[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable];
        *&v47[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedDynamicAnchorCellHighlightRenderable] = 0;

        v50 = [v47 interactiveCanvasController];
        [v50 invalidateOverlayLayersForRep:v47];
      }
    }
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_10121B708(unint64_t a1)
{
  if ([v1 isLocked])
  {
    return 0;
  }

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v9 = sub_10121C240(v7);

    if (v9)
    {
      return 0;
    }
  }

  result = [v1 interactiveCanvasController];
  if (result)
  {
    v10 = result;
    v11 = [result canvasEditor];

    if (v11)
    {
      v12 = [v1 interactiveCanvasController];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 editorController];

        if (v14)
        {
          v15 = [v14 selectionPath];

          if (v15)
          {
            v16 = [v15 orderedSelections];
            sub_100006370(0, &qword_1019F6CB0);
            v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1005B981C(&unk_1019F4D60);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_101465920;
            v19 = [v1 layout];
            type metadata accessor for CRLTableLayout();
            if ([swift_dynamicCastClassUnconditional() boardItem])
            {

              type metadata accessor for CRLTableItem();
              *(inited + 32) = swift_dynamicCastClassUnconditional();
              sub_1005BC5DC(inited);
              v21 = v20;
              swift_setDeallocating();
              swift_arrayDestroy();
              v22 = objc_allocWithZone(type metadata accessor for CRLBoardItemSelection());
              inited = sub_100616DB8(v21);
              if (!(v17 >> 62))
              {
                result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) - 1;
                if ((result & 0x8000000000000000) == 0)
                {
LABEL_23:
                  sub_10067DCE4(result, result, inited);
                  v23 = objc_allocWithZone(CRLSelectionPath);
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  v25 = [v23 initWithSelectionArray:isa];

                  v26 = [objc_allocWithZone(CRLCanvasCommandSelectionBehavior) initWithCanvasEditor:v11 type:2 selectionPath:v25];
                  swift_unknownObjectRelease();

                  return v26;
                }

LABEL_34:
                __break(1u);
                return result;
              }

              v27 = _CocoaArrayWrapper.endIndex.getter();
              v4 = v27 - 1;
              if (__OFSUB__(v27, 1))
              {
                goto LABEL_32;
              }

              if (_CocoaArrayWrapper.endIndex.getter() >= v4)
              {
                goto LABEL_33;
              }

              __break(1u);
            }

            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            result = v4;
            if ((v4 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_34;
          }
        }
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void sub_10121BB68(unint64_t a1, double a2, double a3)
{
  v3[OBJC_IVAR____TtC8Freeform11CRLTableRep_cellBorderHighlightNeedsAnimation] = 1;
  sub_10121F684(a1, a2, a3);
  sub_10121C12C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v7 = sub_100E93DC8(v6);

    v8 = sub_10121307C(v7);

    v9 = sub_100E93C20(v8);

    v10 = [v5 canvas];
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v9;
    v11[4] = v5;
    aBlock[4] = sub_10098C770;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018B8000;
    v12 = _Block_copy(aBlock);
    v13 = v3;
    v14 = v5;

    [v10 afterLayoutIncludingLayers:1 performBlock:v12];
    _Block_release(v12);
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v25;
    v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 748;
    v28 = aBlock[0];
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    [v15 handleFailureInFunction:v35 file:v14 lineNumber:748 isFatal:0 format:v10 args:v34];
  }
}

uint64_t sub_10121C090(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, double, double))
{
  sub_100006370(0, &qword_1019FB7A0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a6(v10, a2, a3);
}

uint64_t sub_10121C12C()
{
  v1 = [v0 layout];
  type metadata accessor for CRLTableLayout();
  v2 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  sub_1012053C8();

  v3 = &v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_previousDragPointOnRep];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = OBJC_IVAR____TtC8Freeform11CRLTableRep_activateCellAnchorTask;
  if (*&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_activateCellAnchorTask])
  {

    Task.cancel()();
  }

  *&v0[v5] = 0;
}

BOOL sub_10121C240(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v4 = a1;
      v5 = [v3 childReps];
      sub_100006370(0, &qword_1019FB7A0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v6 >> 62)
      {
LABEL_19:
        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v7 != i; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v11 = sub_10121C240(v9);

        if (v11)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  else
  {
    type metadata accessor for CRLTableRep();
    return swift_dynamicCastClass() != 0;
  }
}

void sub_10121C3DC()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome];
  if (!v1 || *(v1 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode) - 1 > 2 || (v2 = &v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex], (v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex + 16] & 1) != 0) || (v3 = &v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex], (v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex + 16] & 1) != 0))
  {
    Mutable = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable];
    if (!Mutable)
    {
      return;
    }

    *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable] = 0;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v8 = *v3;
    v7 = v3[1];
    sub_1012199BC();
    sub_101219AE8(v5, v6, v8, v7);
    v9 = *&v0[OBJC_IVAR____TtC8Freeform11CRLTableRep_rangeSelectionHighlightRenderable];
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v9;
    Mutable = CGPathCreateMutable();
    CGMutablePathRef.addRect(_:transform:)();
    [v10 setPath:Mutable];
  }

LABEL_8:
  v11 = [v0 interactiveCanvasController];
  [v11 invalidateOverlayLayersForRep:v0];
}

void sub_10121C5D4(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s6CellIDVMa(0);
  __chkstk_darwin(v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v11);
  v14 = *&v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome];
  if (v14)
  {
    v15 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedBaseCellIndex];
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = 1;
    v16 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_cachedCursorCellIndex];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = 1;
    if (!a1)
    {
      v57 = v14;
      v58 = [v2 isSelected];
      if (v58)
      {
        v59 = 4;
      }

      else
      {
        v59 = 0;
      }

      v57[OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode] = v59;
      if ((v58 & 1) == 0)
      {
        v60 = *&v57[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer];
        *&v57[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisHeaderLayer] = 0;

        *&v57[OBJC_IVAR____TtC8Freeform14CRLTableChrome_tableAxisPersistentSelectorLayers] = 0;
      }

      goto LABEL_16;
    }

    v100 = v12;
    v101 = v15;
    v107 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v108 = v10;
    v97 = v16;
    v106 = v8;
    v109 = v7;
    v17 = v4;
    *(v14 + OBJC_IVAR____TtC8Freeform14CRLTableChrome_mode) = a1[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] + 1;
    v98 = v14;
    v103 = v14;
    v18 = a1;
    v115 = v2;
    v19 = [v2 layout];
    v114 = type metadata accessor for CRLTableLayout();
    v20 = [swift_dynamicCastClassUnconditional() boardItem];
    if (v20)
    {
      v21 = v20;

      v105 = type metadata accessor for CRLTableItem();
      swift_dynamicCastClassUnconditional();
      v116 = v18;
      v22 = OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range;
      v23 = v107;
      sub_101224348(&v18[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], v107, type metadata accessor for CRLTableCellRange);
      v24 = sub_1005B981C(&qword_101A2D840);
      v25 = v108;
      v111 = v24;
      CRRegister.wrappedValue.getter();
      sub_1012243B0(v23, type metadata accessor for CRLTableCellRange);
      v26 = v109;
      v112 = *(v5 + 16);
      v113 = v5 + 16;
      v112(v109, v25, v4);
      sub_1012243B0(v25, _s6CellIDVMa);
      v99 = sub_1011DB2A8(v26);
      v104 = v27;

      v29 = *(v5 + 8);
      v28 = v5 + 8;
      v110 = v29;
      v29(v26, v4);
      v30 = [v115 layout];
      v31 = [swift_dynamicCastClassUnconditional() boardItem];
      if (v31)
      {
        v32 = v31;

        swift_dynamicCastClassUnconditional();
        sub_101224348(&v116[v22], v23, type metadata accessor for CRLTableCellRange);
        CRRegister.wrappedValue.getter();
        sub_1012243B0(v23, type metadata accessor for CRLTableCellRange);
        v112(v26, v25 + *(v106 + 20), v4);
        sub_1012243B0(v25, _s6CellIDVMa);
        v33 = sub_1011DB340(v26);
        v35 = v34;

        v102 = v28;
        v110(v26, v17);
        if (v104 & 1) != 0 || (v35)
        {
          v115 = objc_opt_self();
          v36 = [v115 _atomicIncrementAssertCount];
          v117[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v117);
          StaticString.description.getter();
          v37 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v38 = String._bridgeToObjectiveC()();

          v39 = [v38 lastPathComponent];

          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v43 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v36;
          v45 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v45;
          v46 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v46;
          *(inited + 72) = v37;
          *(inited + 136) = &type metadata for String;
          v47 = sub_1000053B0();
          *(inited + 112) = v40;
          *(inited + 120) = v42;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v47;
          *(inited + 152) = 848;
          v48 = v117[0];
          *(inited + 216) = v45;
          *(inited + 224) = v46;
          *(inited + 192) = v48;
          v49 = v37;
          v50 = v48;
          v51 = static os_log_type_t.error.getter();
          sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v52 = static os_log_type_t.error.getter();
          sub_100005404(v43, &_mh_execute_header, v52, "Unable to find base cell index for selected range.", 50, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v53 = swift_allocObject();
          v53[2] = 8;
          v53[3] = 0;
          v53[4] = 0;
          v53[5] = 0;
          v54 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v55 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v56 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v14 = String._bridgeToObjectiveC()();

          [v115 handleFailureInFunction:v55 file:v56 lineNumber:848 isFatal:0 format:v14 args:v54];
LABEL_10:

LABEL_17:

          return;
        }

        v61 = v101;
        *v101 = v99;
        v61[1] = v33;
        *(v61 + 16) = 0;
        v62 = [v115 layout];
        v63 = [swift_dynamicCastClassUnconditional() boardItem];
        if (v63)
        {
          v64 = v63;

          swift_dynamicCastClassUnconditional();
          v65 = &v116[v22];
          v101 = v22;
          v66 = v107;
          sub_101224348(v65, v107, type metadata accessor for CRLTableCellRange);
          v67 = v108;
          CRRegister.wrappedValue.getter();
          sub_1012243B0(v66, type metadata accessor for CRLTableCellRange);
          v68 = v109;
          v112(v109, v67, v17);
          sub_1012243B0(v67, _s6CellIDVMa);
          v99 = sub_1011DB2A8(v68);
          v104 = v69;

          v110(v68, v17);
          v70 = [v115 layout];
          v71 = [swift_dynamicCastClassUnconditional() boardItem];
          if (v71)
          {
            v72 = v71;

            swift_dynamicCastClassUnconditional();
            v73 = v116;
            sub_101224348(v101 + v116, v66, type metadata accessor for CRLTableCellRange);
            CRRegister.wrappedValue.getter();
            sub_1012243B0(v66, type metadata accessor for CRLTableCellRange);
            v112(v68, v67 + *(v106 + 20), v17);
            sub_1012243B0(v67, _s6CellIDVMa);
            v74 = sub_1011DB340(v68);
            v76 = v75;

            v110(v68, v17);
            if (v104 & 1) != 0 || (v76)
            {
              v115 = objc_opt_self();
              v77 = [v115 _atomicIncrementAssertCount];
              v117[0] = [objc_allocWithZone(NSString) init];
              sub_100604538(_swiftEmptyArrayStorage, v117);
              StaticString.description.getter();
              v78 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v79 = String._bridgeToObjectiveC()();

              v80 = [v79 lastPathComponent];

              v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v83 = v82;

              if (qword_1019F20A0 != -1)
              {
                swift_once();
              }

              v84 = static OS_os_log.crlAssert;
              sub_1005B981C(&qword_1019F54E0);
              v85 = swift_initStackObject();
              *(v85 + 16) = xmmword_10146CA70;
              *(v85 + 56) = &type metadata for Int32;
              *(v85 + 64) = &protocol witness table for Int32;
              *(v85 + 32) = v77;
              v86 = sub_100006370(0, &qword_1019F4D30);
              *(v85 + 96) = v86;
              v87 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
              *(v85 + 104) = v87;
              *(v85 + 72) = v78;
              *(v85 + 136) = &type metadata for String;
              v88 = sub_1000053B0();
              *(v85 + 112) = v81;
              *(v85 + 120) = v83;
              *(v85 + 176) = &type metadata for UInt;
              *(v85 + 184) = &protocol witness table for UInt;
              *(v85 + 144) = v88;
              *(v85 + 152) = 857;
              v89 = v117[0];
              *(v85 + 216) = v86;
              *(v85 + 224) = v87;
              *(v85 + 192) = v89;
              v90 = v78;
              v91 = v89;
              v92 = static os_log_type_t.error.getter();
              sub_100005404(v84, &_mh_execute_header, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v93 = static os_log_type_t.error.getter();
              sub_100005404(v84, &_mh_execute_header, v93, "Unable to find cursor cell index for selected range.", 52, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v94 = swift_allocObject();
              v94[2] = 8;
              v94[3] = 0;
              v94[4] = 0;
              v94[5] = 0;
              v95 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v55 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v56 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v14 = String._bridgeToObjectiveC()();

              [v115 handleFailureInFunction:v55 file:v56 lineNumber:857 isFatal:0 format:v14 args:v95];
              goto LABEL_10;
            }

            v96 = v97;
            v14 = v98;
            *v97 = v99;
            v96[1] = v74;
            *(v96 + 16) = 0;
            v2 = v115;
LABEL_16:
            sub_10121C3DC();
            sub_1011C0DF8();
            [v2 invalidateKnobs];
            goto LABEL_17;
          }

LABEL_30:
          __break(1u);
          return;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }
}

uint64_t sub_10121D6B4()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLTableRep____lazy_storage___dragHelper;
  if (*(v0 + OBJC_IVAR____TtC8Freeform11CRLTableRep____lazy_storage___dragHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform11CRLTableRep____lazy_storage___dragHelper);
  }

  else
  {
    type metadata accessor for CRLTableSelectionDragHelper();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10121D740(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v8 = sub_1005B981C(&qword_101A10760);
  __chkstk_darwin(v8 - 8);
  v229 = &v216 - v9;
  v10 = _s6CellIDVMa(0);
  v228 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v224 = &v216 - v14;
  __chkstk_darwin(v15);
  v226 = &v216 - v16;
  __chkstk_darwin(v17);
  v225 = &v216 - v18;
  __chkstk_darwin(v19);
  v21 = &v216 - v20;
  v22 = sub_1005B981C(&qword_101A2C6F8);
  __chkstk_darwin(v22 - 8);
  v24 = &v216 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v216 - v26;
  v28 = type metadata accessor for CRLTableCellRange(0);
  v230 = *(v28 - 8);
  v231 = v28;
  __chkstk_darwin(v28);
  inited = &v216 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v227 = &v216 - v32;
  __chkstk_darwin(v33);
  v35 = (&v216 - v34);
  v235 = sub_1005B981C(&unk_101A2C890);
  v237 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v216 - v36;
  v232 = _s15CapsuleDatabaseVMa();
  *&v37 = __chkstk_darwin(v232).n128_u64[0];
  v234 = &v216 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v4 isSelected])
  {
    v54 = type metadata accessor for CRLTableRep();
    v243[0] = v4;
    v243[1] = v54;
    v55 = v243;
    return [(objc_super *)v55 handleSingleTapAtPoint:a1 inputType:a2, a3];
  }

  v220 = v12;
  v221 = v10;
  v222 = v21;
  v39 = [v4 layout];
  v236 = type metadata accessor for CRLTableLayout();
  [swift_dynamicCastClassUnconditional() convertNaturalPointFromUnscaledCanvas:{a2, a3}];
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome;
  v45 = *&v4[OBJC_IVAR____TtC8Freeform11CRLTableRep_chrome];
  if (!v45)
  {
    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v223 = a1;
  if (Strong)
  {
    v47 = Strong;
    v48 = v45;
    v249.origin.x = sub_1012178E4();
    v247.x = v41;
    v247.y = v43;
    v49 = CGRectContainsPoint(v249, v247);

    if (v49 && (v50 = [v4 interactiveCanvasController]) != 0 && (v51 = v50, v52 = objc_msgSend(v50, "editorController"), v51, v52))
    {
      if (type metadata accessor for CRLTableCellEditor())
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      }

      else
      {
LABEL_90:
        ObjCClassFromMetadata = 0;
      }

      v170 = [v52 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
      v219 = v52;
      v171 = swift_dynamicCastClass();
      if (v171)
      {
        v172 = v171;
        swift_unknownObjectRetain();
        v173 = v219;
        [v219 setSelectionPathToPopEditor:v172];

        swift_unknownObjectRelease_n();
        return 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    a1 = v223;
  }

  v56 = *(v44 + v4);
  if (!v56)
  {
    goto LABEL_17;
  }

  v44 = v56;
  if (!sub_1011C1968(a2, a3))
  {

    goto LABEL_17;
  }

  sub_1011C1BF0(v244, a2, a3);
  v57 = v245;
  if (v245 == 2)
  {

    a1 = v223;
    goto LABEL_17;
  }

  v94 = v246;
  v95 = [v4 layout];
  result = [swift_dynamicCastClassUnconditional() boardItem];
  v219 = v94;
  if ((v57 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (!result)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v96 = result;

  v218 = type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  type metadata accessor for CRLTableItemData();
  v97 = swift_dynamicCastClassUnconditional();
  v98 = qword_101AD9268;
  swift_beginAccess();
  v99 = v237;
  v100 = v97 + v98;
  v101 = v233;
  v102 = v235;
  (*(v237 + 16))(v233, v100, v235);
  v52 = v234;
  Capsule.root.getter();
  (*(v99 + 8))(v101, v102);
  sub_1005B981C(&unk_101A2C7D0);
  v103 = CROrderedDictionary.count.getter();

  sub_1012243B0(v52, _s15CapsuleDatabaseVMa);
  v48 = (v103 - 1);
  if (__OFSUB__(v103, 1))
  {
    goto LABEL_132;
  }

  v104 = [v4 layout];
  result = [swift_dynamicCastClassUnconditional() boardItem];
  if (!result)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v105 = swift_dynamicCastClassUnconditional();
  v106 = v219;
  sub_1011C7AA8(0, v219, v48, v219, v105, v24);
  if ((*(v230 + 48))(v24, 1, v231) != 1)
  {
    sub_101225434(v24, inited, type metadata accessor for CRLTableCellRange);
    v189 = sub_101213504();
    if (v189)
    {
      v190 = v189;
      v191 = sub_1011D78CC();
    }

    else
    {
      v191 = 0;
    }

    v201 = v227;
    sub_101224348(inited, v227, type metadata accessor for CRLTableCellRange);
    v202 = type metadata accessor for CRLTableCellSelection(0);
    v203 = objc_allocWithZone(v202);
    sub_101224348(v201, &v203[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], type metadata accessor for CRLTableCellRange);
    v203[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = 2;
    v239.receiver = v203;
    v239.super_class = v202;
    v204 = objc_msgSendSuper2(&v239, "init");
    sub_1012243B0(v201, type metadata accessor for CRLTableCellRange);
    if (v191)
    {
      v205 = static NSObject.== infix(_:_:)();

      a1 = v223;
      if (v205)
      {
        v206 = sub_101213504();
        if (!v206)
        {
LABEL_123:
          v215 = inited;
LABEL_125:
          sub_1012243B0(v215, type metadata accessor for CRLTableCellRange);

          return 1;
        }

        v207 = v206;
        sub_1011D6A48();

        v188 = type metadata accessor for CRLTableCellRange;
        v187 = inited;
LABEL_116:
        sub_1012243B0(v187, v188);
        return 1;
      }
    }

    else
    {

      a1 = v223;
    }

    sub_10121D6B4();
    sub_101227510(inited, 2, 3);

    sub_1012243B0(inited, type metadata accessor for CRLTableCellRange);
LABEL_17:
    v58 = [v4 layout];
    swift_dynamicCastClassUnconditional();
    v59 = sub_10120C344(v41, v43);
    v61 = v60;
    v63 = v62;

    if ((v63 & 1) == 0 && [v4 isSelected])
    {
      v219 = v61;
      v230 = v59;
      v223 = a1;
      v64 = [v4 layout];
      result = [swift_dynamicCastClassUnconditional() boardItem];
      if (result)
      {
        v66 = result;

        v218 = type metadata accessor for CRLTableItem();
        swift_dynamicCastClassUnconditional();
        type metadata accessor for CRLTableItemData();
        v67 = swift_dynamicCastClassUnconditional();
        v68 = qword_101AD9268;
        swift_beginAccess();
        v69 = v237;
        v70 = v67 + v68;
        v71 = v233;
        v72 = v235;
        v217 = *(v237 + 16);
        v217(v233, v70, v235);
        v73 = v234;
        Capsule.root.getter();
        v74 = *(v69 + 8);
        v237 = v69 + 8;
        v74(v71, v72);
        sub_1005B981C(&unk_101A2C7D0);
        v75 = CROrderedDictionary.count.getter();

        sub_1012243B0(v73, _s15CapsuleDatabaseVMa);
        v76 = v230;
        if (v230 >= v75)
        {
          goto LABEL_102;
        }

        v77 = [v4 layout];
        result = [swift_dynamicCastClassUnconditional() boardItem];
        if (result)
        {
          v78 = result;

          swift_dynamicCastClassUnconditional();
          v79 = swift_dynamicCastClassUnconditional();
          v80 = qword_101AD9268;
          swift_beginAccess();
          v81 = v79 + v80;
          v82 = v233;
          v83 = v235;
          v217(v233, v81, v235);
          v84 = v234;
          Capsule.root.getter();
          v74(v82, v83);
          sub_1005B981C(&unk_101A2D830);
          v85 = CROrderedDictionary.count.getter();

          sub_1012243B0(v84, _s15CapsuleDatabaseVMa);
          if (v219 < v85)
          {
            v86 = [v4 layout];
            result = [swift_dynamicCastClassUnconditional() boardItem];
            if (result)
            {
              v87 = result;

              swift_dynamicCastClassUnconditional();
              v88 = v229;
              v89 = v219;
              sub_1011DB87C(v76, v219, v229);

              v90 = (*(v228 + 48))(v88, 1, v221);
              v91 = v222;
              v92 = v220;
              if (v90 == 1)
              {
                sub_10000CAAC(v88, &qword_101A10760);
                goto LABEL_102;
              }

              sub_101225434(v88, v222, _s6CellIDVMa);
              if ((sub_1012162B8(v41, v43) & 1) != 0 || (v174 = [v4 layout], swift_dynamicCastClassUnconditional(), sub_10120C854(v230, v89), v176 = v175, v178 = v177, v180 = v179, v182 = v181, v174, objc_msgSend(v4, "layout"), objc_msgSend(v4, "layout"), v250.origin.x = v176, v250.origin.y = v178, v250.size.width = v180, v250.size.height = v182, v251 = CGRectInset(v250, 15.0, 15.0), v248.x = v41, v248.y = v43, !CGRectContainsPoint(v251, v248)))
              {
                sub_1012243B0(v91, _s6CellIDVMa);
                goto LABEL_102;
              }

              v237 = sub_10121D6B4();
              v183 = v225;
              sub_101224348(v91, v225, _s6CellIDVMa);
              sub_101224348(v91, v226, _s6CellIDVMa);
              v184 = v227;
              *(v227 + *(v231 + 24)) = _swiftEmptyDictionarySingleton;
              v185 = v224;
              sub_101224348(v183, v224, _s6CellIDVMa);
              sub_101224348(v185, v92, _s6CellIDVMa);
              v236 = sub_1012253DC();
              CRRegister.init(wrappedValue:)();
              sub_1012243B0(v185, _s6CellIDVMa);
              v186 = v226;
              sub_101224348(v226, v185, _s6CellIDVMa);
              sub_101224348(v185, v92, _s6CellIDVMa);
              CRRegister.init(wrappedValue:)();
              sub_1012243B0(v185, _s6CellIDVMa);
              sub_1012243B0(v186, _s6CellIDVMa);
              sub_1012243B0(v225, _s6CellIDVMa);
              sub_101227510(v184, 0, 3);

              sub_1012243B0(v184, type metadata accessor for CRLTableCellRange);
              v187 = v91;
              v188 = _s6CellIDVMa;
              goto LABEL_116;
            }

            goto LABEL_137;
          }

LABEL_102:
          v195 = type metadata accessor for CRLTableRep();
          v240.receiver = v4;
          v240.super_class = v195;
          return objc_msgSendSuper2(&v240, "handleSingleTapAtPoint:inputType:", v223, a2, a3);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v93 = type metadata accessor for CRLTableRep();
    v242.receiver = v4;
    v242.super_class = v93;
    v55 = &v242;
    return [(objc_super *)v55 handleSingleTapAtPoint:a1 inputType:a2, a3];
  }

  v236 = v44;
  sub_10000CAAC(v24, &qword_101A2C6F8);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v237 = inited + 32;
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v106;
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = &protocol witness table for Int;
  *(inited + 112) = v48;
  *(inited + 176) = &type metadata for Int;
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = v106;
  v234 = objc_opt_self();
  LODWORD(v48) = [v234 _atomicIncrementAssertCount];
  v241[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v241);
  StaticString.description.getter();
  v235 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v107 = String._bridgeToObjectiveC()();

  v108 = [v107 lastPathComponent];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v109;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_134;
  }

LABEL_34:
  v110 = static OS_os_log.crlAssert;
  v111 = swift_initStackObject();
  *(v111 + 16) = xmmword_10146CA70;
  *(v111 + 56) = &type metadata for Int32;
  *(v111 + 64) = &protocol witness table for Int32;
  *(v111 + 32) = v48;
  v112 = sub_100006370(0, &qword_1019F4D30);
  *(v111 + 96) = v112;
  v113 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v111 + 104) = v113;
  v114 = v235;
  *(v111 + 72) = v235;
  *(v111 + 136) = &type metadata for String;
  v115 = sub_1000053B0();
  *(v111 + 112) = v24;
  *(v111 + 120) = v52;
  *(v111 + 176) = &type metadata for UInt;
  *(v111 + 184) = &protocol witness table for UInt;
  *(v111 + 144) = v115;
  *(v111 + 152) = 950;
  v116 = v241[0];
  *(v111 + 216) = v112;
  *(v111 + 224) = v113;
  *(v111 + 192) = v116;
  v117 = v114;
  v118 = v116;
  v119 = static os_log_type_t.error.getter();
  sub_100005404(v110, &_mh_execute_header, v119, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v111);
  swift_setDeallocating();
  v235 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v120 = static os_log_type_t.error.getter();
  sub_100005404(v110, &_mh_execute_header, v120, "Unable to create cell range for base cell (%d, %d) and cursor cell (%d, %d)", 75, 2, inited);

  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v44 = v35 + 3;
  v35[4] = 0;
  v35[5] = 0;
  v48 = *(inited + 16);
  if (!v48)
  {
LABEL_103:
    v196 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v197 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v198 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v199 = String._bridgeToObjectiveC()();

    [v234 handleFailureInFunction:v197 file:v198 lineNumber:950 isFatal:0 format:v199 args:v196];
    goto LABEL_105;
  }

  v24 = 0;
  while (1)
  {
    v52 = inited;
    v121 = (v237 + 40 * v24);
    v4 = v121[3];
    v27 = v121[4];
    sub_100020E58(v121, v4);
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    inited = *v44;
    v122 = *(result + 16);
    v123 = __OFADD__(*v44, v122);
    v124 = *v44 + v122;
    if (v123)
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      swift_once();
      goto LABEL_34;
    }

    v95 = v35[4];
    if (v95 >= v124)
    {
      goto LABEL_51;
    }

    if (v95 + 0x4000000000000000 < 0)
    {
      goto LABEL_128;
    }

    v4 = v35[5];
    if (2 * v95 > v124)
    {
      v124 = 2 * v95;
    }

    v35[4] = v124;
    if ((v124 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_130;
    }

    v27 = result;
    v125 = swift_slowAlloc();
    v126 = v125;
    v35[5] = v125;
    if (!v4)
    {
      break;
    }

    if (v125 != v4 || v125 >= &v4[8 * inited])
    {
      memmove(v125, v4, 8 * inited);
    }

    v95 = v35;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    result = v27;
LABEL_51:
    v126 = v35[5];
    if (!v126)
    {
      goto LABEL_58;
    }

LABEL_52:
    inited = v52;
    v128 = *(result + 16);
    if (v128)
    {
      v129 = (result + 32);
      v130 = *v44;
      while (1)
      {
        v131 = *v129++;
        *&v126[8 * v130] = v131;
        v130 = *v44 + 1;
        if (__OFADD__(*v44, 1))
        {
          break;
        }

        *v44 = v130;
        if (!--v128)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

LABEL_36:

    if (++v24 == v48)
    {
      goto LABEL_103;
    }
  }

  result = v27;
  if (v126)
  {
    goto LABEL_52;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  if (!result)
  {
    goto LABEL_139;
  }

  inited = result;

  v218 = type metadata accessor for CRLTableItem();
  swift_dynamicCastClassUnconditional();
  type metadata accessor for CRLTableItemData();
  v132 = swift_dynamicCastClassUnconditional();
  v133 = qword_101AD9268;
  swift_beginAccess();
  v24 = v237;
  v134 = v132 + v133;
  v135 = v233;
  v136 = v235;
  (*(v237 + 16))(v233, v134, v235);
  v52 = v234;
  Capsule.root.getter();
  (*(v24 + 8))(v135, v136);
  sub_1005B981C(&unk_101A2D830);
  v137 = CROrderedDictionary.count.getter();

  sub_1012243B0(v52, _s15CapsuleDatabaseVMa);
  v48 = (v137 - 1);
  if (__OFSUB__(v137, 1))
  {
    goto LABEL_133;
  }

  v138 = [v4 layout];
  result = [swift_dynamicCastClassUnconditional() boardItem];
  if (result)
  {

    v139 = swift_dynamicCastClassUnconditional();
    v140 = v219;
    sub_1011C7AA8(v219, 0, v219, v48, v139, v27);
    if ((*(v230 + 48))(v27, 1, v231) == 1)
    {
      v236 = v44;
      sub_10000CAAC(v27, &qword_101A2C6F8);
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 32) = v140;
      v237 = inited + 32;
      *(inited + 16) = xmmword_10146D2A0;
      *(inited + 56) = &type metadata for Int;
      *(inited + 64) = &protocol witness table for Int;
      *(inited + 96) = &type metadata for Int;
      *(inited + 104) = &protocol witness table for Int;
      *(inited + 72) = 0;
      *(inited + 136) = &type metadata for Int;
      *(inited + 144) = &protocol witness table for Int;
      *(inited + 112) = v140;
      *(inited + 176) = &type metadata for Int;
      *(inited + 184) = &protocol witness table for Int;
      *(inited + 152) = v48;
      v234 = objc_opt_self();
      v141 = [v234 _atomicIncrementAssertCount];
      v241[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, v241);
      StaticString.description.getter();
      v235 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v142 = String._bridgeToObjectiveC()();

      v143 = [v142 lastPathComponent];

      v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v146 = v145;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v147 = static OS_os_log.crlAssert;
      v148 = swift_initStackObject();
      *(v148 + 16) = xmmword_10146CA70;
      *(v148 + 56) = &type metadata for Int32;
      *(v148 + 64) = &protocol witness table for Int32;
      *(v148 + 32) = v141;
      v149 = sub_100006370(0, &qword_1019F4D30);
      *(v148 + 96) = v149;
      v150 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v148 + 104) = v150;
      v151 = v235;
      *(v148 + 72) = v235;
      *(v148 + 136) = &type metadata for String;
      v152 = sub_1000053B0();
      *(v148 + 112) = v144;
      *(v148 + 120) = v146;
      *(v148 + 176) = &type metadata for UInt;
      *(v148 + 184) = &protocol witness table for UInt;
      *(v148 + 144) = v152;
      *(v148 + 152) = 935;
      v153 = v241[0];
      *(v148 + 216) = v149;
      *(v148 + 224) = v150;
      *(v148 + 192) = v153;
      v154 = v151;
      v155 = v153;
      v156 = static os_log_type_t.error.getter();
      sub_100005404(v147, &_mh_execute_header, v156, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v148);
      swift_setDeallocating();
      v235 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v157 = static os_log_type_t.error.getter();
      sub_100005404(v147, &_mh_execute_header, v157, "Unable to create cell range for base cell (%d, %d) and cursor cell (%d, %d)", 75, 2, inited);

      type metadata accessor for __VaListBuilder();
      v35 = swift_allocObject();
      v35[2] = 8;
      v35[3] = 0;
      v44 = v35 + 3;
      v35[4] = 0;
      v35[5] = 0;
      v48 = *(inited + 16);
      if (v48)
      {
        v24 = 0;
        while (1)
        {
          v52 = inited;
          v158 = (v237 + 40 * v24);
          v4 = v158[3];
          v27 = v158[4];
          sub_100020E58(v158, v4);
          v159 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          inited = *v44;
          v160 = *(v159 + 16);
          v123 = __OFADD__(*v44, v160);
          v161 = *v44 + v160;
          if (v123)
          {
            goto LABEL_127;
          }

          v162 = v35[4];
          if (v162 >= v161)
          {
            goto LABEL_82;
          }

          if (v162 + 0x4000000000000000 < 0)
          {
            goto LABEL_129;
          }

          v4 = v35[5];
          if (2 * v162 > v161)
          {
            v161 = 2 * v162;
          }

          v35[4] = v161;
          if ((v161 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_131;
          }

          v27 = v159;
          v163 = swift_slowAlloc();
          v164 = v163;
          v35[5] = v163;
          if (v4)
          {
            break;
          }

          v159 = v27;
          if (!v164)
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

LABEL_83:
          inited = v52;
          v166 = *(v159 + 16);
          if (v166)
          {
            v167 = (v159 + 32);
            v168 = *v44;
            do
            {
              v169 = *v167++;
              *&v164[8 * v168] = v169;
              v168 = *v44 + 1;
              if (__OFADD__(*v44, 1))
              {
                goto LABEL_122;
              }

              *v44 = v168;
            }

            while (--v166);
          }

          if (++v24 == v48)
          {
            goto LABEL_104;
          }
        }

        if (v163 != v4 || v163 >= &v4[8 * inited])
        {
          memmove(v163, v4, 8 * inited);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v159 = v27;
LABEL_82:
        v164 = v35[5];
        if (!v164)
        {
          goto LABEL_89;
        }

        goto LABEL_83;
      }

LABEL_104:
      v200 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v197 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v198 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v199 = String._bridgeToObjectiveC()();

      [v234 handleFailureInFunction:v197 file:v198 lineNumber:935 isFatal:0 format:v199 args:v200];
LABEL_105:

      swift_setDeallocating();
      swift_arrayDestroy();
      return 0;
    }

    sub_101225434(v27, v35, type metadata accessor for CRLTableCellRange);
    v192 = sub_101213504();
    if (v192)
    {
      v193 = v192;
      v194 = sub_1011D78CC();
    }

    else
    {
      v194 = 0;
    }

    a1 = v223;
    v208 = v227;
    sub_101224348(v35, v227, type metadata accessor for CRLTableCellRange);
    v209 = type metadata accessor for CRLTableCellSelection(0);
    v210 = objc_allocWithZone(v209);
    sub_101224348(v208, &v210[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range], type metadata accessor for CRLTableCellRange);
    v210[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = 1;
    v238.receiver = v210;
    v238.super_class = v209;
    v211 = objc_msgSendSuper2(&v238, "init");
    sub_1012243B0(v208, type metadata accessor for CRLTableCellRange);
    if (v194)
    {
      v212 = static NSObject.== infix(_:_:)();

      if (v212)
      {
        v213 = sub_101213504();
        if (!v213)
        {
          v215 = v35;
          goto LABEL_125;
        }

        v214 = v213;
        sub_1011D6A48();

        v188 = type metadata accessor for CRLTableCellRange;
        v187 = v35;
        goto LABEL_116;
      }
    }

    else
    {
    }

    sub_10121D6B4();
    sub_101227510(v35, 1, 3);

    sub_1012243B0(v35, type metadata accessor for CRLTableCellRange);
    goto LABEL_17;
  }

LABEL_141:
  __break(1u);
  return result;
}