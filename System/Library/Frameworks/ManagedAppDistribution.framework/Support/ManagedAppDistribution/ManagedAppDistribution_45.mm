uint64_t sub_1005A2A30()
{

  return _swift_task_switch(sub_1005A2B10, 0, 0);
}

void sub_1005A2B10()
{
  v177 = v0;
  v1 = v0[134];
  if (!v1)
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "[AskForException] No exceptions found", v66, 2u);
    }

    v136 = _swiftEmptyArrayStorage;
    goto LABEL_115;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v136 = _swiftEmptyArrayStorage;
LABEL_82:
    v67 = v0[136];

    if (v67)
    {

      v68 = v136;

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v69, v70))
      {
        goto LABEL_88;
      }

      v71 = v0[136];
      v72 = v0[135];
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v176[0] = v74;
      *v73 = 134218242;
      *(v73 + 4) = v136[2];
      *(v73 + 12) = 2080;
      v75 = v72;
      v68 = v136;
      *(v73 + 14) = sub_1002346CC(v75, v71, v176);
      _os_log_impl(&_mh_execute_header, v69, v70, "[AskForException] Parsed %ld exception requests for distributor: %s.", v73, 0x16u);
      sub_10000710C(v74);
    }

    else
    {
      v68 = v136;

      v69 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v69, v76))
      {
        goto LABEL_88;
      }

      v77 = swift_slowAlloc();
      *v77 = 134217984;
      *(v77 + 4) = v136[2];
      _os_log_impl(&_mh_execute_header, v69, v76, "[AskForException] Parsed %ld exception requests.", v77, 0xCu);
    }

LABEL_88:

    v78 = v68[2];
    if (v78)
    {
      v79 = v0[157];
      v80 = v0[138];
      v81 = *(v80 + 16);
      v80 += 16;
      v172 = v81;
      v82 = v68 + ((*(v80 + 64) + 32) & ~*(v80 + 64));
      v166 = *(v80 + 56);
      v164 = (v79 + 88);
      v162 = enum case for AppLibrary.ExceptionRequest.Status.pending(_:);
      v141 = enum case for AppLibrary.ExceptionRequest.Status.approved(_:);
      v135 = enum case for AppLibrary.ExceptionRequest.Status.declined(_:);
      v134 = (v79 + 8);
      v160 = (v80 - 8);
      v139 = (v0[152] + 8);
      do
      {
        v169 = v82;
        v171 = v78;
        v92 = v0[158];
        v93 = v0[156];
        v172(v0[144]);
        AppLibrary.ExceptionRequest.status.getter();
        v94 = (*v164)(v92, v93);
        if (v94 == v162)
        {
          v175 = 0xE700000000000000;
          v95 = 0x676E69646E6570;
        }

        else if (v94 == v141)
        {
          v175 = 0xE800000000000000;
          v95 = 0x6465766F72707061;
        }

        else if (v94 == v135)
        {
          v175 = 0xE800000000000000;
          v95 = 0x64656E696C636564;
        }

        else
        {
          (*v134)(v0[158], v0[156]);
          v175 = 0xE700000000000000;
          v95 = 0x6E776F6E6B6E75;
        }

        v168 = v95;
        v96 = v0[144];
        v97 = v0[142];
        v98 = v0[141];
        v99 = v0[140];
        v100 = v0[139];
        v101 = v0;
        v102 = v0[137];
        (v172)(v0[143], v96, v102);
        (v172)(v97, v96, v102);
        (v172)(v98, v96, v102);
        (v172)(v99, v96, v102);
        (v172)(v100, v96, v102);

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v149 = v0[153];
          v153 = v0[151];
          v158 = v0[144];
          v156 = v104;
          v105 = v0[143];
          v106 = v0[142];
          v107 = v0[141];
          v144 = v0[140];
          v147 = v0[139];
          loga = v103;
          v108 = v0[137];
          v109 = swift_slowAlloc();
          v176[0] = swift_slowAlloc();
          *v109 = 136316418;
          v110 = AppLibrary.ExceptionRequest.bundleIdentifier.getter();
          if (v111)
          {
            v112 = v110;
          }

          else
          {
            v112 = 7104878;
          }

          if (v111)
          {
            v113 = v111;
          }

          else
          {
            v113 = 0xE300000000000000;
          }

          v89 = *v160;
          (*v160)(v105, v108);
          v114 = sub_1002346CC(v112, v113, v176);

          *(v109 + 4) = v114;
          *(v109 + 12) = 2048;
          v115 = AppLibrary.ExceptionRequest.appleItemID.getter();
          v89(v106, v108);
          *(v109 + 14) = v115;
          *(v109 + 22) = 2048;
          v116 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
          v89(v107, v108);
          *(v109 + 24) = v116;
          *(v109 + 32) = 2080;
          v117 = sub_1002346CC(v168, v175, v176);

          *(v109 + 34) = v117;
          *(v109 + 42) = 2080;
          v118 = AppLibrary.ExceptionRequest.distributorID.getter();
          if (v119)
          {
            v120 = v118;
          }

          else
          {
            v120 = 7104878;
          }

          if (v119)
          {
            v121 = v119;
          }

          else
          {
            v121 = 0xE300000000000000;
          }

          v89(v144, v108);
          v122 = sub_1002346CC(v120, v121, v176);

          *(v109 + 44) = v122;
          *(v109 + 52) = 2048;
          AppLibrary.ExceptionRequest.timestamp.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v124 = v123;
          (*v139)(v149, v153);
          v89(v147, v108);
          *(v109 + 54) = v124;
          _os_log_impl(&_mh_execute_header, loga, v156, "[AskForException] Bundle ID: %s, Adam ID: %llu, Age Rating: %ld, Status: %s, Distributor ID: %s, Created: %f", v109, 0x3Eu);
          swift_arrayDestroy();

          v90 = v158;
          v91 = v108;
        }

        else
        {
          v83 = v0[144];
          v84 = v0[143];
          v85 = v101[142];
          v86 = v101[140];
          v87 = v101[139];
          v88 = v101[137];
          v89 = *v160;
          (*v160)(v101[141], v88);
          v89(v85, v88);

          v89(v87, v88);
          v89(v86, v88);
          v89(v84, v88);
          v90 = v83;
          v91 = v88;
        }

        v89(v90, v91);
        v0 = v101;
        v82 = &v169[v166];
        v78 = v171 - 1;
      }

      while (v171 != 1);
    }

    else
    {

      v136 = v68;
    }

LABEL_115:

    v125 = v0[1];

    v125(v136);
    return;
  }

  v3 = 0;
  v4 = v0[157];
  v5 = v0[152];
  v6 = v0[148];
  v174 = (v4 + 48);
  v173 = (v4 + 32);
  v167 = (v5 + 8);
  v170 = (v4 + 8);
  v161 = (v5 + 16);
  v163 = (v4 + 16);
  v159 = (v6 + 16);
  v157 = (v0[138] + 16);
  log = (v6 + 8);
  v165 = v0[138];
  v136 = _swiftEmptyArrayStorage;
  while (v3 < *(v1 + 16))
  {
    v7 = *(v1 + 32 + 8 * v3);
    v0[124] = 0xD000000000000010;
    v0[125] = 0x80000001006CD810;

    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v8 = sub_1005223D0((v0 + 39)), (v9 & 1) == 0))
    {

      sub_10039DCC4((v0 + 39));
LABEL_22:
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "[AskForException] Missing or invalid uniqueIdentifier in exception request", v19, 2u);
      }

      goto LABEL_4;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v8, (v0 + 82));
    sub_10039DCC4((v0 + 39));
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v0[112] = 0x44496D616461;
    v0[113] = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v10 = sub_1005223D0((v0 + 59)), (v11 & 1) == 0))
    {

      sub_10039DCC4((v0 + 59));
      goto LABEL_26;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v10, (v0 + 102));
    sub_10039DCC4((v0 + 59));
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_26:
      v17 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = v20;
        v23 = v17;
        v24 = "[AskForException] Missing or invalid adamID in exception request";
        goto LABEL_28;
      }

LABEL_4:

      goto LABEL_5;
    }

    v150 = v0[128];
    strcpy(v0 + 848, "ageRatingValue");
    *(v0 + 863) = -18;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v12 = sub_1005223D0((v0 + 34)), (v13 & 1) == 0))
    {

      sub_10039DCC4((v0 + 34));
      goto LABEL_32;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v12, (v0 + 90));
    sub_10039DCC4((v0 + 34));
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_32:
      v17 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v25))
      {
        goto LABEL_4;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = v25;
      v23 = v17;
      v24 = "[AskForException] Missing or invalid ageRatingValue in exception request";
LABEL_28:
      _os_log_impl(&_mh_execute_header, v23, v22, v24, v21, 2u);

      goto LABEL_4;
    }

    strcpy(v0 + 976, "approvalStatus");
    *(v0 + 991) = -18;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v14 = sub_1005223D0((v0 + 69)), (v15 & 1) == 0))
    {

      sub_10039DCC4((v0 + 69));
      goto LABEL_36;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v14, (v0 + 86));
    sub_10039DCC4((v0 + 69));
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_36;
    }

    v142 = v0[155];
    v145 = v0[156];
    AppLibrary.ExceptionRequest.Status.init(rawValue:)();
    if ((*v174)(v142, 1, v145) == 1)
    {
      v16 = v0[155];

      sub_1000032A8(v16, &qword_1007881B0);
LABEL_36:
      v17 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v26))
      {
        goto LABEL_4;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = v26;
      v23 = v17;
      v24 = "[AskForException] Missing or invalid approvalStatus in exception request";
      goto LABEL_28;
    }

    (*v173)(v0[160], v0[155], v0[156]);
    v0[108] = 0xD000000000000010;
    v0[109] = 0x80000001006CD830;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v27 = sub_1005223D0((v0 + 64)), (v28 & 1) == 0))
    {

      sub_10039DCC4((v0 + 64));
      goto LABEL_53;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v27, (v0 + 74));
    sub_10039DCC4((v0 + 64));
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_53:
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v0[160];
      v39 = v0[156];
      if (!v37)
      {
        goto LABEL_60;
      }

      v151 = v0[156];
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = v36;
      v42 = v35;
      v43 = "[AskForException] Missing or invalid bundleID in exception request";
LABEL_55:
      _os_log_impl(&_mh_execute_header, v42, v41, v43, v40, 2u);

      (*v170)(v38, v151);
      goto LABEL_5;
    }

    strcpy(v0 + 912, "distributorID");
    *(v0 + 463) = -4864;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v29 = sub_1005223D0((v0 + 54)), (v30 & 1) == 0))
    {

      sub_10039DCC4((v0 + 54));
LABEL_58:
      v35 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      v45 = os_log_type_enabled(v35, v44);
      v38 = v0[160];
      v39 = v0[156];
      if (!v45)
      {
LABEL_60:

        (*v170)(v38, v39);
        goto LABEL_5;
      }

      v151 = v0[156];
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = v44;
      v42 = v35;
      v43 = "[AskForException] Missing or invalid distributorID in exception request";
      goto LABEL_55;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v29, (v0 + 78));
    sub_10039DCC4((v0 + 54));
    v140 = v0;
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_58;
    }

    v0[120] = 0xD000000000000013;
    v0[121] = 0x80000001006CD850;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v31 = sub_1005223D0((v0 + 49)), (v32 & 1) == 0))
    {

      sub_10039DCC4((v0 + 49));
      goto LABEL_63;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v31, (v0 + 98));
    sub_10039DCC4((v0 + 49));
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_63:
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[160];
      v50 = v0[156];
      if (v48)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = v47;
        v53 = v46;
        v54 = "[AskForException] Missing or invalid createdTimeInterval in exception request";
        goto LABEL_65;
      }

LABEL_66:

      (*v170)(v49, v50);
      v0 = v140;
      goto LABEL_5;
    }

    v0[126] = 0x617461646174656DLL;
    v0[127] = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v33 = sub_1005223D0((v0 + 44)), (v34 & 1) == 0))
    {

      sub_10039DCC4((v0 + 44));
      goto LABEL_69;
    }

    sub_10020A6D0(*(v7 + 56) + 32 * v33, (v0 + 94));
    sub_10039DCC4((v0 + 44));

    sub_1001F0C48(&qword_100782D80);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_69:
      v46 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      v56 = os_log_type_enabled(v46, v55);
      v49 = v0[160];
      v50 = v0[156];
      if (v56)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = v55;
        v53 = v46;
        v54 = "[AskForException] Missing or invalid metadata in exception request";
LABEL_65:
        _os_log_impl(&_mh_execute_header, v53, v52, v54, v51, 2u);
      }

      goto LABEL_66;
    }

    Date.init(timeIntervalSinceReferenceDate:)();
    static ExceptionRequestMetadata.from(dictionary:)();

    if (v150 < 0)
    {
      goto LABEL_119;
    }

    v57 = v0[153];
    v126 = v0[151];
    v127 = v0[154];
    v58 = v0[149];
    v128 = v0[147];
    v129 = v0[150];
    v130 = v0[146];
    v131 = v0[145];
    v132 = v0[137];
    (*v163)(v0[159], v0[160], v0[156]);
    (*v161)(v57, v127, v126);
    (*v159)(v58, v129, v128);
    AppLibrary.ExceptionRequest.init(id:appleItemID:bundleIdentifier:distributorID:status:exceptedRatingValue:timestamp:metadata:)();
    (*v157)(v131, v130, v132);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_100362960(0, v136[2] + 1, 1, v136);
    }

    v60 = v136[2];
    v59 = v136[3];
    v148 = v60;
    v152 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v136 = sub_100362960(v59 > 1, v152, 1, v136);
    }

    v138 = v0[156];
    v137 = v0[154];
    v133 = v0[151];
    v61 = v0[150];
    v62 = v0[147];
    v143 = v0[160];
    v146 = v0[145];
    v63 = v0[137];
    (*(v165 + 8))(v0[146], v63);
    (log->isa)(v61, v62);
    (*v167)(v137, v133);
    (*v170)(v143, v138);
    v136[2] = v152;
    (*(v165 + 32))(v136 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v148, v146, v63);
LABEL_5:
    if (v2 == ++v3)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
}

uint64_t sub_1005A4320()
{
  v0 = type metadata accessor for PersonNameComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 ams_activeiCloudAccount];

  if (v5)
  {
    v6 = [v5 ams_firstName];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.init()();
      PersonNameComponents.givenName.setter();
      v8 = [v5 ams_lastName];
      if (v8)
      {
        v9 = v8;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      PersonNameComponents.familyName.setter();
      v15 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
      [v15 setStyle:1];
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v17 = [v15 stringFromPersonNameComponents:isa];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v1 + 8))(v3, v0);
      return v18;
    }
  }

  if (qword_10077E568 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1002710CC(v10, qword_1007880E8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[AskForException] Unable to send exception request: name not found on the active iCloud account.", v13, 2u);
  }

  return 0;
}

uint64_t sub_1005A4614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A465C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppLibrary.ExceptionRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_10059F818(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1005A4778(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1005A0314(a1, v5, v4);
}

void *sub_1005A4834(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_100526304(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
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
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_1001F0C48(&qword_10077E910);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10069E680;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_100526304((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_1005A4BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1005A4C20(void *a1)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v52 - v9;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  result = sub_1005A8474(a1, v12, v11);
  if (v2)
  {
    return result;
  }

  v60 = v5;
  v61 = a1;
  v14 = *(v1 + 32);
  v15 = *(v1 + 33);
  v16 = *(v1 + 34);
  v17 = v14 > result;
  v59 = result;
  if (v14 == result && (v17 = v15 > BYTE1(result), v15 == BYTE1(result)))
  {
    if (v16 <= BYTE2(result))
    {
LABEL_5:
      static Logger.sql.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        aBlock[0] = v61;
        *v20 = 136446466;
        *(v20 + 4) = sub_1002346CC(v12, v11, aBlock);
        *(v20 + 12) = 2082;
        v21 = sub_1005A6C5C();
        v23 = sub_1002346CC(v21, v22, aBlock);

        *(v20 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v18, v19, "Schema '%{public}s' already up to date at version %{public}s", v20, 0x16u);
        swift_arrayDestroy();
      }

      return (*(v60 + 8))(v8, v4);
    }
  }

  else if (!v17)
  {
    goto LABEL_5;
  }

  v52[1] = v15;
  v54 = v16;
  static Logger.sql.getter();
  v24 = *(v1 + 8);
  v57 = *v1;
  v56 = v1;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v53 = v26;
  v27 = os_log_type_enabled(v25, v26);
  v55 = v11;
  v58 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v28 = 136446722;
    *(v28 + 4) = sub_1002346CC(v12, v11, aBlock);
    *(v28 + 12) = 2082;
    v29 = sub_1005A6C5C();
    v31 = v25;
    v32 = sub_1002346CC(v29, v30, aBlock);

    *(v28 + 14) = v32;
    *(v28 + 22) = 2082;
    v33 = sub_1005A6C5C();
    v35 = sub_1002346CC(v33, v34, aBlock);

    *(v28 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v31, v53, "Migrating schema '%{public}s' from %{public}s to %{public}s", v28, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v36 = (*(v60 + 8))(v10, v4);
  v37 = v57(v36);
  v38 = v37;
  v39 = *(v37 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = v37 + 32;
    while (1)
    {
      if (v40 >= *(v38 + 16))
      {
        __break(1u);
      }

      sub_10020A980(v41, aBlock);
      sub_10020A980(aBlock, v70);
      sub_1001F0C48(&qword_10077F5F0);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1005A6D9C(v61, v62, v63, v64, v65);

      ++v40;
      sub_10000710C(v70);
      sub_10000710C(aBlock);
      v41 += 40;
      if (v39 == v40)
      {
        goto LABEL_18;
      }
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    sub_100006D8C(aBlock, v67);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v51._object = 0x80000001006CD920;
    v51._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v51);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_18:

    v42 = String._bridgeToObjectiveC()();
    v43 = swift_allocObject();
    v44 = v56;
    v45 = v56[1];
    *(v43 + 16) = *v56;
    *(v43 + 32) = v45;
    *(v43 + 47) = *(v44 + 31);
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1005A86C8;
    *(v46 + 24) = v43;
    v68 = sub_1005A86D0;
    v69 = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005A4BCC;
    v67 = &unk_10076C730;
    v47 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v48 = [v61 executeStatement:v42 error:aBlock bindings:v47];
    _Block_release(v47);

    if (v48)
    {
      v49 = aBlock[0];
    }

    else
    {
      v50 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1005A5398(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _swiftEmptyArrayStorage;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  static Logger.sql.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a3;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1002346CC(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v15, 0xCu);
    sub_10000710C(v17);
    a3 = v24;

    a4 = v25;
  }

  (*(v9 + 8))(v11, v8);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = &v28;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = &v30;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1005A8D58;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1005A9014;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A6AA4;
  aBlock[3] = &unk_10076C988;
  v21 = _Block_copy(aBlock);

  [v26 executeQuery:v18 withResults:v21];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    if (v29)
    {
      v23 = v28;
      swift_errorRetain();
      aBlock[0] = v23;
      sub_1001F0C48(&unk_10077F940);
      swift_willThrowTypedImpl();
    }

    else
    {
      v23 = v30;
    }

    sub_1005A8D64(v28, v29);

    return v23;
  }

  return result;
}

uint64_t sub_1005A5728(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _swiftEmptyArrayStorage;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  static Logger.sql.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a3;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1002346CC(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v15, 0xCu);
    sub_10000710C(v17);
    a3 = v24;

    a4 = v25;
  }

  (*(v9 + 8))(v11, v8);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = &v28;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = &v30;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1005A8D40;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1005A9014;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A6AA4;
  aBlock[3] = &unk_10076C898;
  v21 = _Block_copy(aBlock);

  [v26 executeQuery:v18 withResults:v21];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    if (v29)
    {
      v23 = v28;
      swift_errorRetain();
      aBlock[0] = v23;
      sub_1001F0C48(&unk_10077F940);
      swift_willThrowTypedImpl();
    }

    else
    {
      v23 = v30;
    }

    sub_1005A8D64(v28, v29);

    return v23;
  }

  return result;
}

uint64_t sub_1005A5AB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _swiftEmptyArrayStorage;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  static Logger.sql.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a3;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1002346CC(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v15, 0xCu);
    sub_10000710C(v17);
    a3 = v24;

    a4 = v25;
  }

  (*(v9 + 8))(v11, v8);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = &v28;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = &v30;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1005A8CD8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1005A8CE4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A6AA4;
  aBlock[3] = &unk_10076C7A8;
  v21 = _Block_copy(aBlock);

  [v26 executeQuery:v18 withResults:v21];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    if (v29)
    {
      v23 = v28;
      swift_errorRetain();
      aBlock[0] = v23;
      sub_1001F0C48(&unk_10077F940);
      swift_willThrowTypedImpl();
    }

    else
    {
      v23 = v30;
    }

    sub_1005A8D64(v28, v29);

    return v23;
  }

  return result;
}

uint64_t sub_1005A5E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v7 = *a3;
    v8 = *(a3 + 8);
    *a3 = a2;
    *(a3 + 8) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
    return sub_1005A8D64(v9, v10);
  }

  if (!a1)
  {
    type metadata accessor for InternalError();
    sub_100274098();
    v20 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = *a3;
    v10 = *(a3 + 8);
    *a3 = v20;
    *(a3 + 8) = 1;
    return sub_1005A8D64(v9, v10);
  }

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1005A8D70;
  *(v17 + 24) = v16;
  v21[4] = sub_1005A9040;
  v21[5] = v17;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1005A6A24;
  v21[3] = &unk_10076CA00;
  v18 = _Block_copy(v21);
  v19 = a1;

  [v19 enumerateRowsUsingBlock:v18];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005A603C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v7 = *a3;
    v8 = *(a3 + 8);
    *a3 = a2;
    *(a3 + 8) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
    return sub_1005A8D64(v9, v10);
  }

  if (!a1)
  {
    type metadata accessor for InternalError();
    sub_100274098();
    v20 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = *a3;
    v10 = *(a3 + 8);
    *a3 = v20;
    *(a3 + 8) = 1;
    return sub_1005A8D64(v9, v10);
  }

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1005A8D0C;
  *(v17 + 24) = v16;
  v21[4] = sub_1005A8D18;
  v21[5] = v17;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1005A6A24;
  v21[3] = &unk_10076C820;
  v18 = _Block_copy(v21);
  v19 = a1;

  [v19 enumerateRowsUsingBlock:v18];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005A6230(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v7 = *a3;
    v8 = *(a3 + 8);
    *a3 = a2;
    *(a3 + 8) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
    return sub_1005A8D64(v9, v10);
  }

  if (!a1)
  {
    type metadata accessor for InternalError();
    sub_100274098();
    v20 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = *a3;
    v10 = *(a3 + 8);
    *a3 = v20;
    *(a3 + 8) = 1;
    return sub_1005A8D64(v9, v10);
  }

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1005A8D4C;
  *(v17 + 24) = v16;
  v21[4] = sub_1005A9040;
  v21[5] = v17;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1005A6A24;
  v21[3] = &unk_10076C910;
  v18 = _Block_copy(v21);
  v19 = a1;

  [v19 enumerateRowsUsingBlock:v18];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  return result;
}

void sub_1005A6424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr), uint64_t a6, char **a7)
{
  if (a2)
  {
    v7 = *a4;
    v8 = *(a4 + 8);
    *a4 = a2;
    *(a4 + 8) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
LABEL_3:
    sub_1005A8D64(v9, v10);
    return;
  }

  if (!a1)
  {
    type metadata accessor for InternalError();
    sub_100274098();
    v15 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = *a4;
    v10 = *(a4 + 8);
    *a4 = v15;
    *(a4 + 8) = 1;
    goto LABEL_3;
  }

  v14 = a1;
  a5(&v22);
  if (v23)
  {
  }

  else
  {
    v16 = v22;
    v17 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_100363374(0, *(v17 + 2) + 1, 1, v17);
      *a7 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      *a7 = sub_100363374((v19 > 1), v20 + 1, 1, v17);
    }

    v21 = *a7;
    *(v21 + 2) = v20 + 1;
    *&v21[8 * v20 + 32] = v16;
  }
}

void sub_1005A6600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr), uint64_t a6, char **a7)
{
  if (a2)
  {
    v7 = *a4;
    v8 = *(a4 + 8);
    *a4 = a2;
    *(a4 + 8) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
LABEL_3:
    sub_1005A8D64(v9, v10);
    return;
  }

  if (!a1)
  {
    type metadata accessor for InternalError();
    sub_100274098();
    v15 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = *a4;
    v10 = *(a4 + 8);
    *a4 = v15;
    *(a4 + 8) = 1;
    goto LABEL_3;
  }

  v14 = a1;
  a5(&v24);
  v16 = v25;
  if (v25)
  {
    v17 = v24;
    v18 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_100363484(0, *(v18 + 2) + 1, 1, v18);
      *a7 = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      *a7 = sub_100363484((v20 > 1), v21 + 1, 1, v18);
    }

    v22 = *a7;
    *(v22 + 2) = v21 + 1;
    v23 = &v22[16 * v21];
    *(v23 + 4) = v17;
    *(v23 + 5) = v16;
  }

  else
  {
  }
}

uint64_t sub_1005A67DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *__return_ptr), uint64_t a6, char **a7)
{
  if (a2)
  {
    v7 = *a4;
    v8 = *(a4 + 8);
    *a4 = a2;
    *(a4 + 8) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
    return sub_1005A8D64(v9, v10);
  }

  if (!a1)
  {
    type metadata accessor for InternalError();
    sub_100274098();
    v16 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = *a4;
    v10 = *(a4 + 8);
    *a4 = v16;
    *(a4 + 8) = 1;
    return sub_1005A8D64(v9, v10);
  }

  v15 = a1;
  a5(&v26);
  if (*(&v26 + 1))
  {
    v31[2] = v28;
    v31[3] = v29;
    v32 = v30;
    v31[0] = v26;
    v31[1] = v27;
    sub_1005A88B8(v31, &v26);
    v17 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1003634A0(0, *(v17 + 2) + 1, 1, v17);
      *a7 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      *a7 = sub_1003634A0((v19 > 1), v20 + 1, 1, v17);
    }

    result = sub_1005A8CA8(v31);
    v21 = *a7;
    *(v21 + 2) = v20 + 1;
    v22 = &v21[72 * v20];
    *(v22 + 2) = v26;
    v23 = v29;
    v24 = v28;
    v25 = v27;
    *(v22 + 12) = v30;
    *(v22 + 4) = v24;
    *(v22 + 5) = v23;
    *(v22 + 3) = v25;
  }

  else
  {

    return sub_1000032A8(&v26, &qword_1007881F8);
  }

  return result;
}

void sub_1005A6A24(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

void sub_1005A6AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

BOOL sub_1005A6B1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  if (v2 == v4)
  {
    return v7;
  }

  else
  {
    return v2 < v4;
  }
}

BOOL sub_1005A6B5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 == v3;
  v7 = v5 < v3;
  if (v6)
  {
    v7 = a2[2] < a1[2];
  }

  if (v4 == v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4 < v2;
  }

  return !v8;
}

BOOL sub_1005A6BA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  if (v2 == v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v2 < v4;
  }

  return !v8;
}

BOOL sub_1005A6BE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 == v3;
  v7 = v5 < v3;
  if (v6)
  {
    v7 = a2[2] < a1[2];
  }

  if (v4 == v2)
  {
    return v7;
  }

  else
  {
    return v4 < v2;
  }
}

uint64_t sub_1005A6C5C()
{
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return v5;
}

unint64_t sub_1005A6D48()
{
  result = qword_1007881D8;
  if (!qword_1007881D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007881D8);
  }

  return result;
}

uint64_t sub_1005A6D9C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v10._object = 0x80000001006CD9B0;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v10);

  v11._countAndFlagsBits = a4;
  v11._object = a5;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000023;
  v12._object = 0x80000001006CD9D0;
  String.append(_:)(v12);
  sub_1003293D0(0, 0xE000000000000000);
  if (v5)
  {
  }

  v14 = a1;
  v15 = sub_1005A8700(a4, a5, v14);
  v17 = v16;
  v77 = a2;
  v75 = v14;
  v18 = *(v15 + 16);
  v74 = a5;
  v72 = v16;
  v81 = a4;
  if (v18)
  {
    v19 = v15;
    sub_100526820(0, v18, 0);
    countAndFlagsBits = _swiftEmptyArrayStorage;
    v21 = v19 + 32;
    do
    {
      sub_1005A88B8(v21, &v95);
      v94 = v95;
      v89._countAndFlagsBits = countAndFlagsBits;
      v22 = countAndFlagsBits[2];
      v23 = countAndFlagsBits[3];

      if (v22 >= v23 >> 1)
      {
        sub_100526820((v23 > 1), v22 + 1, 1);
        countAndFlagsBits = v89._countAndFlagsBits;
      }

      countAndFlagsBits[2] = v22 + 1;
      v24 = &countAndFlagsBits[11 * v22];
      v25 = v95;
      v24[2] = v94;
      v24[3] = v25;
      v26 = v96;
      v27 = v97;
      v28 = v98;
      v24[7]._countAndFlagsBits = v99;
      v24[5] = v27;
      v24[6] = v28;
      v24[4] = v26;
      v21 += 72;
      --v18;
    }

    while (v18);
    v17 = v72;
  }

  else
  {
    countAndFlagsBits = _swiftEmptyArrayStorage;
  }

  if (countAndFlagsBits[2])
  {
    sub_1001F0C48(&qword_1007881E0);
    v29 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v29 = &_swiftEmptyDictionarySingleton;
  }

  v94._countAndFlagsBits = v29;

  sub_1005A7F6C(v30, 1, &v94);

  v79 = v94._countAndFlagsBits;
  v31 = *(v17 + 16);
  if (v31)
  {
    v94._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_100526800(0, v31, 0);
    v32 = v94._countAndFlagsBits;
    v33 = (v17 + 40);
    do
    {
      v35 = *(v33 - 1);
      v34 = *v33;
      v94._countAndFlagsBits = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      swift_bridgeObjectRetain_n();
      if (v37 >= v36 >> 1)
      {
        sub_100526800((v36 > 1), v37 + 1, 1);
        v32 = v94._countAndFlagsBits;
      }

      *(v32 + 16) = v37 + 1;
      v38 = (v32 + 32 * v37);
      v38[4] = v35;
      v38[5] = v34;
      v38[6] = v35;
      v38[7] = v34;
      v33 += 2;
      --v31;
    }

    while (v31);
    a5 = v74;
    v39 = v77;
  }

  else
  {
    if (!_swiftEmptyArrayStorage[2])
    {
      v40 = &_swiftEmptyDictionarySingleton;
      v39 = v77;
      goto LABEL_22;
    }

    v39 = v77;
  }

  sub_1001F0C48(&qword_1007881E8);
  v40 = static _DictionaryStorage.allocate(capacity:)();
LABEL_22:
  v94._countAndFlagsBits = v40;

  sub_1005A7BBC(v41, 1, &v94);

  v43 = v94._countAndFlagsBits;
  v44 = v39(v42);
  v80 = *(v44 + 16);
  if (!v80)
  {
  }

  v73 = v43;
  v45 = 0;
  v46 = v44 + 32;
  v47 = v44;
  v78 = v44;
  while (1)
  {
    if (v45 >= *(v47 + 16))
    {
      __break(1u);
    }

    sub_10020A980(v46, v93);
    sub_1001F0C48(&qword_10077F5F0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v91[0] = v96;
    v91[1] = v97;
    v91[2] = v98;
    v92 = v99;
    v89 = v94;
    v90 = v95;
    v48 = v94;
    if (v94 == __PAIR128__(0xE300000000000000, 6580592) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_57;
    }

    if (!*(v79 + 16) || (v49 = sub_10052213C(v48._countAndFlagsBits, v48._object), (v50 & 1) == 0))
    {
      v87[0]._countAndFlagsBits = 0;
      v87[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      strcpy(v87, "ALTER TABLE ");
      BYTE5(v87[0]._object) = 0;
      HIWORD(v87[0]._object) = -5120;
      v63._countAndFlagsBits = v81;
      v63._object = a5;
      String.append(_:)(v63);
      v64._countAndFlagsBits = 0x4C4F432044444120;
      v64._object = 0xEC000000204E4D55;
      String.append(_:)(v64);
      String.append(_:)(v48);
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      String.append(_:)(v65);
      String.append(_:)(v90);
      if ((v92 & 1) == 0)
      {
        v66._object = 0xE90000000000004CLL;
        v66._countAndFlagsBits = 0x4C554E20544F4E20;
        String.append(_:)(v66);
      }

      sub_100005934(v91, &v82, &qword_100785498);
      if (v83._object)
      {
        sub_1002733F8(&v82._countAndFlagsBits, v87);
        v82._countAndFlagsBits = 0x544C554146454420;
        v82._object = 0xE900000000000020;
        v67._countAndFlagsBits = sub_1005A88F0(v87);
        String.append(_:)(v67);

        String.append(_:)(v82);

        sub_10000710C(v87);
      }

      else
      {
        sub_1000032A8(&v82, &qword_100785498);
      }

      v68 = String._bridgeToObjectiveC()();

      v87[0]._countAndFlagsBits = 0;
      v69 = [v75 executeStatement:v68 error:v87];

      if (!v69)
      {
        v71 = v87[0]._countAndFlagsBits;

        _convertNSErrorToError(_:)();

        swift_willThrow();
LABEL_54:
        sub_100278434(&v89);
        return sub_10000710C(v93);
      }

      v70 = v87[0]._countAndFlagsBits;
      sub_100278434(&v89);
      goto LABEL_25;
    }

    sub_1005A88B8(*(v79 + 56) + 72 * v49, &v82);
    v87[3] = v85;
    v88 = v86;
    v87[1] = v83;
    v87[2] = v84;
    v87[0] = v82;
    if (v83 != v90 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      type metadata accessor for InternalError();
      sub_100274098();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1005A8CA8(v87);
      goto LABEL_54;
    }

    sub_1005A8CA8(v87);
    sub_100278434(&v89);
LABEL_26:
    ++v45;
    sub_10000710C(v93);
    v46 += 40;
    if (v80 == v45)
    {
    }
  }

  if (swift_dynamicCast())
  {
    object = v94._object;
    v76 = v94._countAndFlagsBits;
    v52 = v95;
    countAndFlagsBits_low = LOBYTE(v96._countAndFlagsBits);
    v89._countAndFlagsBits = v81;
    v89._object = a5;

    v54._countAndFlagsBits = 95;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);

    String.append(_:)(v52);

    v55 = v89;
    if (*(v73 + 16) && (sub_10052213C(v89._countAndFlagsBits, v89._object), (v56 & 1) != 0))
    {

      a5 = v74;
    }

    else
    {
      v89._countAndFlagsBits = 0x455441455243;
      v89._object = 0xE600000000000000;
      if (countAndFlagsBits_low)
      {
        v57._countAndFlagsBits = 0x455551494E5520;
        v57._object = 0xE700000000000000;
        String.append(_:)(v57);
      }

      v87[0]._countAndFlagsBits = 0;
      v87[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v87[0]._countAndFlagsBits = 0x205845444E4920;
      v87[0]._object = 0xE700000000000000;
      String.append(_:)(v55);

      v58._countAndFlagsBits = 542002976;
      v58._object = 0xE400000000000000;
      String.append(_:)(v58);
      v59._countAndFlagsBits = v81;
      a5 = v74;
      v59._object = v74;
      String.append(_:)(v59);
      v60._countAndFlagsBits = 10272;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);

      v61._countAndFlagsBits = v76;
      v61._object = object;
      String.append(_:)(v61);

      swift_bridgeObjectRelease_n();
      v62._countAndFlagsBits = 41;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      String.append(_:)(v87[0]);

      sub_1003293D0(v89._countAndFlagsBits, v89._object);
    }

LABEL_25:
    v47 = v78;
    goto LABEL_26;
  }

  __break(1u);
LABEL_57:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_1005A7910(void *a1, unsigned __int8 *a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 bindString:v4 atPosition:1];

  v5 = a2[34] + 1000000 * a2[32] + 1000 * a2[33];

  return [a1 bindInt64:v5 atPosition:2];
}

id sub_1005A79A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 int64ForColumnIndex:0];
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

id sub_1005A79E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 stringForColumnIndex:1];
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 stringForColumnIndex:2];
  if (!v9)
  {

LABEL_6:
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [a1 intForColumnIndex:3];
  v15 = [a1 intForColumnIndex:5];
  result = ASUSQLiteCopyFoundationValue(a1, 4);
  if (result)
  {
    _bridgeAnyObjectToAny(_:)();
    result = swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  *(a2 + 40) = v16;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14 == 0;
  *(a2 + 33) = v15 != 0;
  *(a2 + 56) = v17;
  return result;
}

void sub_1005A7B44(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 stringForColumnIndex:1];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1005A7BBC(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10052213C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1005BCFF4(v15, v4 & 1);
    v10 = sub_10052213C(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1005C5BD0();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x80000001006C4E90;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10052213C(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1005BCFF4(v31, 1);
        v27 = sub_10052213C(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1005A7F6C(uint64_t a1, char a2, void *a3)
{
  v50 = *(a1 + 16);
  if (!v50)
  {
  }

  sub_100005934(a1 + 32, &v58, &qword_100786EC8);
  v7 = v58;
  v6 = v59;
  v56 = v58;
  v57 = v59;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v51 = v60;
  v52 = v61;
  v8 = *a3;
  v9 = sub_10052213C(v58, v59);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_1005BD2B4(v14, a2 & 1);
    v9 = sub_10052213C(v7, v6);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v9;
  sub_1005C5D48();
  v9 = v19;
  if (v15)
  {
LABEL_9:
    v17 = swift_allocError();
    swift_willThrow();
    v65 = v17;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1005A8CA8(&v51);
    }

    goto LABEL_26;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  v21 = (v20[6] + 16 * v9);
  *v21 = v7;
  v21[1] = v6;
  v22 = v20[7] + 72 * v9;
  *v22 = v51;
  v23 = v52;
  v24 = v53;
  v25 = v54;
  *(v22 + 64) = v55;
  *(v22 + 32) = v24;
  *(v22 + 48) = v25;
  *(v22 + 16) = v23;
  v26 = v20[2];
  v13 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v13)
  {
    v20[2] = v27;
    if (v50 == 1)
    {
    }

    v28 = a1 + 120;
    v29 = 1;
    while (v29 < *(a1 + 16))
    {
      sub_100005934(v28, &v58, &qword_100786EC8);
      v31 = v58;
      v30 = v59;
      v56 = v58;
      v57 = v59;
      v53 = v62;
      v54 = v63;
      v55 = v64;
      v51 = v60;
      v52 = v61;
      v32 = *a3;
      v33 = sub_10052213C(v58, v59);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v13 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v13)
      {
        goto LABEL_23;
      }

      v38 = v34;
      if (v32[3] < v37)
      {
        sub_1005BD2B4(v37, 1);
        v33 = sub_10052213C(v31, v30);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v41 = (v40[6] + 16 * v33);
      *v41 = v31;
      v41[1] = v30;
      v42 = v40[7] + 72 * v33;
      *v42 = v51;
      v43 = v52;
      v44 = v53;
      v45 = v54;
      *(v42 + 64) = v55;
      *(v42 + 32) = v44;
      *(v42 + 48) = v45;
      *(v42 + 16) = v43;
      v46 = v40[2];
      v13 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v29;
      v40[2] = v47;
      v28 += 88;
      if (v50 == v29)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  v48._object = 0x80000001006C4E90;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v48);
  _print_unlocked<A, B>(_:_:)();
  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1005A83A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10052666C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10020A980(v4, v8);
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10052666C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001DFDBC(v8, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1005A8474(void *a1, uint64_t a2, void *a3)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 tableExists:v7];

  if ((v8 & 1) != 0 || (result = sub_1003293D0(0xD00000000000009BLL, 0x80000001006CDAF0), !v3))
  {
    _StringGuts.grow(_:)(66);
    v10._object = 0x80000001006CDB90;
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v10);
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 39;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_1005A5398(0, 0xE000000000000000, sub_1005A79A4, 0);

    if (!v3)
    {
      if (!*(v13 + 16))
      {

        LOBYTE(v18) = 0;
        v17 = 0;
        LOBYTE(v16) = 0;
        return (v17 << 16) | (v16 << 8) | v18;
      }

      v14 = *(v13 + 32);

      if (v14 > 255999999)
      {
        __break(1u);
      }

      else
      {
        v15 = v14 % 1000000;
        if (v14 % 1000000 <= 255999)
        {
          if (v14 < -999999)
          {
            goto LABEL_18;
          }

          if (v15 < -999)
          {
            goto LABEL_18;
          }

          v16 = v15 / 1000;
          v17 = v15 % 1000;
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_18;
          }

          if (v17 <= 0xFF)
          {
            v18 = v14 / 1000000;
            return (v17 << 16) | (v16 << 8) | v18;
          }

LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_1005A8700(uint64_t a1, void *a2, void *a3)
{
  _StringGuts.grow(_:)(21);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = sub_1005A5728(0xD000000000000012, 0x80000001006CDA50, sub_1005A79E4, 0);

  if (!v3)
  {
    _StringGuts.grow(_:)(21);

    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 41;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    sub_1005A5AB8(0xD000000000000012, 0x80000001006CDA70, sub_1005A7B44, 0);
  }

  return v9;
}

uint64_t sub_1005A88F0(void *a1)
{
  sub_10020AB78(a1, v22);
  sub_1001F0C48(&qword_100780778);
  sub_1001F0C48(&qword_1007881F0);
  if (swift_dynamicCast())
  {
    sub_1001DFDBC(&v21, v19);
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_100006D8C(v19, v19[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v3 = v20;
    sub_10000710C(v19);
  }

  else
  {
    if (swift_dynamicCast())
    {
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      Double.write<A>(to:)();
    }

    else if (swift_dynamicCast())
    {
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      Float.write<A>(to:)();
    }

    else if (swift_dynamicCast())
    {
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      v19[0] = v20;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);
    }

    else
    {
      if (swift_dynamicCast())
      {
        v19[0] = 34;
        v19[1] = 0xE100000000000000;
        v20 = v21;
        v19[7] = 34;
        v19[8] = 0xE100000000000000;
        v19[5] = 8738;
        v19[6] = 0xE200000000000000;
        sub_100005E50();
        v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v8 = v7;

        v9._countAndFlagsBits = v6;
        v9._object = v8;
        String.append(_:)(v9);

        v10._countAndFlagsBits = 34;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
        v3 = 34;
        goto LABEL_10;
      }

      *&v21 = 10072;
      *(&v21 + 1) = 0xE200000000000000;
      sub_100006D8C(a1, a1[3]);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v12 = v11;

      if (v1)
      {
        sub_10000710C(v22);
        return v3;
      }

      v13 = sub_1005A4834(v3, v12);
      sub_100007158(v3, v12);
      v19[0] = v13;
      sub_1001F0C48(&unk_10077FB40);
      sub_1001F766C();
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);

      v18._countAndFlagsBits = 39;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
    }

    v3 = v21;
  }

LABEL_10:
  sub_10000710C(v22);
  return v3;
}

uint64_t sub_1005A8D64(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

__n128 sub_1005A8D7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1005A8D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1005A8DD8(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005A8E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1005A8E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SQLiteSchemaVersion(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteSchemaVersion(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for SQLiteSchemaVersion(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

void sub_1005A9044()
{
  v28 = *(v0 + 32);
  v1 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v2 = v28;
    v3 = HIBYTE(*(&v28 + 1)) & 0xFLL;
    v4 = v28 & 0xFFFFFFFFFFFFLL;
    if ((*(&v28 + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v28 + 1)) & 0xFLL : v28 & 0xFFFFFFFFFFFFLL)
    {
      if ((*(&v28 + 1) & 0x1000000000000000) != 0)
      {
        sub_1005A9C8C(&v28, v26);
        sub_1005D92D4(v2, v1, 10);
        sub_1005A9CFC(&v28);
        return;
      }

      if ((*(&v28 + 1) & 0x2000000000000000) != 0)
      {
        v26[0] = v28;
        v26[1] = *(&v28 + 1) & 0xFFFFFFFFFFFFFFLL;
        if (v28 == 43)
        {
          if (v3)
          {
            if (--v3)
            {
              v18 = 0;
              v19 = v26 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v18, 0xAuLL))
                {
                  break;
                }

                v11 = __CFADD__(10 * v18, v20);
                v18 = 10 * v18 + v20;
                if (v11)
                {
                  break;
                }

                ++v19;
                if (!--v3)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }

          goto LABEL_72;
        }

        if (v28 != 45)
        {
          if (v3)
          {
            v23 = 0;
            v24 = v26;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              if (!is_mul_ok(v23, 0xAuLL))
              {
                break;
              }

              v11 = __CFADD__(10 * v23, v25);
              v23 = 10 * v23 + v25;
              if (v11)
              {
                break;
              }

              ++v24;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

        if (v3)
        {
          if (--v3)
          {
            v12 = 0;
            v13 = v26 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              if (!is_mul_ok(v12, 0xAuLL))
              {
                break;
              }

              v11 = 10 * v12 >= v14;
              v12 = 10 * v12 - v14;
              if (!v11)
              {
                break;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }
      }

      else
      {
        if ((v28 & 0x1000000000000000) != 0)
        {
          v6 = ((*(&v28 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v6 = _StringObject.sharedUTF8.getter();
        }

        v7 = *v6;
        if (v7 == 43)
        {
          if (v4 >= 1)
          {
            v3 = v4 - 1;
            if (v4 != 1)
            {
              v15 = 0;
              if (v6)
              {
                v16 = v6 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_65;
                  }

                  if (!is_mul_ok(v15, 0xAuLL))
                  {
                    goto LABEL_65;
                  }

                  v11 = __CFADD__(10 * v15, v17);
                  v15 = 10 * v15 + v17;
                  if (v11)
                  {
                    goto LABEL_65;
                  }

                  ++v16;
                  if (!--v3)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_57;
            }

            goto LABEL_65;
          }

          goto LABEL_71;
        }

        if (v7 != 45)
        {
          if (v4)
          {
            v21 = 0;
            if (v6)
            {
              while (1)
              {
                v22 = *v6 - 48;
                if (v22 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v11 = __CFADD__(10 * v21, v22);
                v21 = 10 * v21 + v22;
                if (v11)
                {
                  goto LABEL_65;
                }

                ++v6;
                if (!--v4)
                {
                  goto LABEL_57;
                }
              }
            }

            goto LABEL_57;
          }

LABEL_65:
          LOBYTE(v3) = 1;
          goto LABEL_66;
        }

        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (v6)
            {
              v9 = v6 + 1;
              while (1)
              {
                v10 = *v9 - 48;
                if (v10 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v8, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v11 = 10 * v8 >= v10;
                v8 = 10 * v8 - v10;
                if (!v11)
                {
                  goto LABEL_65;
                }

                ++v9;
                if (!--v3)
                {
                  goto LABEL_66;
                }
              }
            }

LABEL_57:
            LOBYTE(v3) = 0;
LABEL_66:
            v27 = v3;
            return;
          }

          goto LABEL_65;
        }

        __break(1u);
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }
  }
}

void sub_1005A9350()
{
  v28 = *(v0 + 48);
  v1 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v2 = v28;
    v3 = HIBYTE(*(&v28 + 1)) & 0xFLL;
    v4 = v28 & 0xFFFFFFFFFFFFLL;
    if ((*(&v28 + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v28 + 1)) & 0xFLL : v28 & 0xFFFFFFFFFFFFLL)
    {
      if ((*(&v28 + 1) & 0x1000000000000000) != 0)
      {
        sub_1005A9C8C(&v28, v26);
        sub_1005D92D4(v2, v1, 10);
        sub_1005A9CFC(&v28);
        return;
      }

      if ((*(&v28 + 1) & 0x2000000000000000) != 0)
      {
        v26[0] = v28;
        v26[1] = *(&v28 + 1) & 0xFFFFFFFFFFFFFFLL;
        if (v28 == 43)
        {
          if (v3)
          {
            if (--v3)
            {
              v18 = 0;
              v19 = v26 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v18, 0xAuLL))
                {
                  break;
                }

                v11 = __CFADD__(10 * v18, v20);
                v18 = 10 * v18 + v20;
                if (v11)
                {
                  break;
                }

                ++v19;
                if (!--v3)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }

          goto LABEL_72;
        }

        if (v28 != 45)
        {
          if (v3)
          {
            v23 = 0;
            v24 = v26;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              if (!is_mul_ok(v23, 0xAuLL))
              {
                break;
              }

              v11 = __CFADD__(10 * v23, v25);
              v23 = 10 * v23 + v25;
              if (v11)
              {
                break;
              }

              ++v24;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

        if (v3)
        {
          if (--v3)
          {
            v12 = 0;
            v13 = v26 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              if (!is_mul_ok(v12, 0xAuLL))
              {
                break;
              }

              v11 = 10 * v12 >= v14;
              v12 = 10 * v12 - v14;
              if (!v11)
              {
                break;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }
      }

      else
      {
        if ((v28 & 0x1000000000000000) != 0)
        {
          v6 = ((*(&v28 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v6 = _StringObject.sharedUTF8.getter();
        }

        v7 = *v6;
        if (v7 == 43)
        {
          if (v4 >= 1)
          {
            v3 = v4 - 1;
            if (v4 != 1)
            {
              v15 = 0;
              if (v6)
              {
                v16 = v6 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_65;
                  }

                  if (!is_mul_ok(v15, 0xAuLL))
                  {
                    goto LABEL_65;
                  }

                  v11 = __CFADD__(10 * v15, v17);
                  v15 = 10 * v15 + v17;
                  if (v11)
                  {
                    goto LABEL_65;
                  }

                  ++v16;
                  if (!--v3)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_57;
            }

            goto LABEL_65;
          }

          goto LABEL_71;
        }

        if (v7 != 45)
        {
          if (v4)
          {
            v21 = 0;
            if (v6)
            {
              while (1)
              {
                v22 = *v6 - 48;
                if (v22 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v11 = __CFADD__(10 * v21, v22);
                v21 = 10 * v21 + v22;
                if (v11)
                {
                  goto LABEL_65;
                }

                ++v6;
                if (!--v4)
                {
                  goto LABEL_57;
                }
              }
            }

            goto LABEL_57;
          }

LABEL_65:
          LOBYTE(v3) = 1;
          goto LABEL_66;
        }

        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (v6)
            {
              v9 = v6 + 1;
              while (1)
              {
                v10 = *v9 - 48;
                if (v10 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v8, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v11 = 10 * v8 >= v10;
                v8 = 10 * v8 - v10;
                if (!v11)
                {
                  goto LABEL_65;
                }

                ++v9;
                if (!--v3)
                {
                  goto LABEL_66;
                }
              }
            }

LABEL_57:
            LOBYTE(v3) = 0;
LABEL_66:
            v27 = v3;
            return;
          }

          goto LABEL_65;
        }

        __break(1u);
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }
  }
}

uint64_t sub_1005A965C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1001F0C48(&qword_100788240);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_1005AAB24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1005A97F0()
{
  if (*v0)
  {
    return 7371124;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_1005A9814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7371124 && a2 == 0xE300000000000000)
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

uint64_t sub_1005A98F0(uint64_t a1)
{
  v2 = sub_1005AAB24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A992C(uint64_t a1)
{
  v2 = sub_1005AAB24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A9968@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1005AA43C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1005A99B8(void *a1)
{
  v3 = sub_1001F0C48(&qword_100788248);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_1005AAA68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005A9B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005AA620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005A9BB8(uint64_t a1)
{
  v2 = sub_1005AAA68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A9BF4(uint64_t a1)
{
  v2 = sub_1005AAA68();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1005A9C30@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1005AA774(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1005A9C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_10077FA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A9CFC(uint64_t a1)
{
  v2 = sub_1001F0C48(&unk_10077FA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A9D64()
{
  v1 = sub_1004B3FA8();
  if (v2 >> 60 == 15)
  {
    sub_1005AA204();
    swift_allocError();
    *v3 = 1;
    return swift_willThrow();
  }

  else
  {
    v5 = v1;
    v6 = v2;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005AA2AC();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10020B0E0(v5, v6);

    if (!v0)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1005A9E54@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1004B3FA8();
  if (v4 >> 60 == 15)
  {
    sub_1005AA204();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005AA258();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10020B0E0(v7, v8);

    if (!v1)
    {
      *a1 = v9;
      a1[1] = v10;
      a1[2] = v11;
      a1[3] = v12;
    }
  }

  return result;
}

uint64_t sub_1005A9F58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v30 = 46;
  v31 = 0xE100000000000000;
  v21[2] = &v30;
  v5 = sub_100432C48(0x7FFFFFFFFFFFFFFFLL, 1, sub_1001F7FFC, v21, a1, a2, &v30);
  if (v5[2] != 3)
  {

    sub_1005AA204();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    return sub_10020B0E0(0, 0xF000000000000000);
  }

  v6 = v5;

  static String._fromSubstring(_:)();

  result = sub_1005A9D64();
  if (v3)
  {

    return sub_10020B0E0(0, 0xF000000000000000);
  }

  v45 = v9;
  if (v6[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v10;
    v13 = v8;

    static String._fromSubstring(_:)();

    result = sub_1005A9E54(v44);
    v40 = v44[0];
    v41 = v44[1];
    v42 = v44[2];
    v43 = v44[3];
    if (v6[2] >= 3uLL)
    {

      static String._fromSubstring(_:)();

      v15 = sub_1004B3FA8();
      v17 = v16;
      sub_10020B0E0(0, 0xF000000000000000);
      *&v23 = v11;
      *(&v23 + 1) = v13;
      *&v24 = v45;
      *(&v24 + 1) = v12;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
      *&v29 = v15;
      *(&v29 + 1) = v17;
      v30 = v11;
      v31 = v13;
      v32 = v45;
      v33 = v12;
      v36 = v42;
      v37 = v43;
      v34 = v40;
      v35 = v41;
      v38 = v15;
      v39 = v17;
      sub_10020ACE0(&v23, v22);
      result = sub_10020AD3C(&v30);
      v18 = v28;
      a3[4] = v27;
      a3[5] = v18;
      a3[6] = v29;
      v19 = v24;
      *a3 = v23;
      a3[1] = v19;
      v20 = v26;
      a3[2] = v25;
      a3[3] = v20;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1005AA204()
{
  result = qword_100788200;
  if (!qword_100788200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788200);
  }

  return result;
}

unint64_t sub_1005AA258()
{
  result = qword_100788208;
  if (!qword_100788208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788208);
  }

  return result;
}

unint64_t sub_1005AA2AC()
{
  result = qword_100788210;
  if (!qword_100788210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788210);
  }

  return result;
}

uint64_t sub_1005AA330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1005AA378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005AA3E8()
{
  result = qword_100788218;
  if (!qword_100788218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788218);
  }

  return result;
}

uint64_t sub_1005AA43C(void *a1)
{
  v3 = sub_1001F0C48(&qword_100788230);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_1005AAB24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

uint64_t sub_1005AA620(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580578 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7566185 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6580585 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6580598 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1005AA774@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100788220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1005AAA68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v13;
  v33 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_1005AAABC(&v28, v32);
  sub_10000710C(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_1005AAAF4(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_1005AAA68()
{
  result = qword_100788228;
  if (!qword_100788228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788228);
  }

  return result;
}

unint64_t sub_1005AAB24()
{
  result = qword_100788238;
  if (!qword_100788238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788238);
  }

  return result;
}

unint64_t sub_1005AAB9C()
{
  result = qword_100788250;
  if (!qword_100788250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788250);
  }

  return result;
}

unint64_t sub_1005AABF4()
{
  result = qword_100788258;
  if (!qword_100788258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788258);
  }

  return result;
}

unint64_t sub_1005AAC4C()
{
  result = qword_100788260;
  if (!qword_100788260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788260);
  }

  return result;
}

unint64_t sub_1005AACA4()
{
  result = qword_100788268;
  if (!qword_100788268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788268);
  }

  return result;
}

unint64_t sub_1005AACFC()
{
  result = qword_100788270;
  if (!qword_100788270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788270);
  }

  return result;
}

unint64_t sub_1005AAD54()
{
  result = qword_100788278;
  if (!qword_100788278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788278);
  }

  return result;
}

uint64_t sub_1005AADA8()
{
  v1[22] = v0;
  v2 = type metadata accessor for FeatureFlag();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for InstallConfirmationRequest();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v4 = type metadata accessor for InstallSheetContext();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = type metadata accessor for InstallSheetContext.InstallType();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v6 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v1[37] = v6;
  v1[38] = *(v6 - 8);
  v1[39] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v1[40] = swift_task_alloc();
  v7 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v1[41] = v7;
  v1[42] = *(v7 - 8);
  v1[43] = swift_task_alloc();
  v8 = type metadata accessor for InstallSheetContext.Source();
  v1[44] = v8;
  v1[45] = *(v8 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v1[48] = v9;
  v1[49] = *(v9 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return _swift_task_switch(sub_1005AB178, 0, 0);
}

uint64_t sub_1005AB178()
{
  v77 = v0;
  v1 = v0[22];
  static Logger.install.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Requesting install confirmation", v6, 0xCu);
    sub_1001F8084(v7);
  }

  v10 = v0[54];
  v11 = v0[48];
  v12 = v0[49];
  v13 = v0[22];

  v14 = *(v12 + 8);
  v0[55] = v14;
  v0[56] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v11);
  v15 = (v13 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_distributor);
  sub_10020A980(v13 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_distributor, (v0 + 2));
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v16 = v0[15];
    v17 = v0[16];
    v18 = objc_allocWithZone(LSApplicationRecord);

    v19 = sub_10049E57C(v16, v17, 0);
    if (v19)
    {
      v36 = v19;
      v37 = [v19 localizedName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    v38 = v0[47];
    v39 = v0[45];
    v74 = v0[44];
    v40 = v0[42];
    v41 = v0[43];
    v42 = v0[40];
    v66 = v0[41];
    v72 = v0[22];
    v43 = v72 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_metadata;
    v44 = type metadata accessor for MediaAPIMetadata();
    sub_100337114(v43 + *(v44 + 28), v42);

    InstallSheetContext.Source.DistributorContext.init(name:id:appName:iconURL:)();
    (*(v40 + 16))(v38, v41, v66);
    (*(v39 + 104))(v38, enum case for InstallSheetContext.Source.distributorWithContext(_:), v74);
    sub_100006D8C((v72 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_bag), *(v72 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_bag + 24));
    sub_100365568();
    (*(v40 + 8))(v41, v66);
LABEL_19:
    v61 = v0[46];
    v53 = v0[45];
    v62 = v0[44];
    v63 = v0[47];
    v54 = v0[36];
    v55 = v0[33];
    v56 = v0[34];
    v64 = v0[35];
    v65 = v0[32];
    v70 = v0[31];
    v57 = v0[30];
    v58 = v0[22];
    v68 = v0[29];
    if (*(v58 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_isMarketplace))
    {
      v59 = &enum case for InstallSheetContext.InstallType.marketplace(_:);
    }

    else
    {
      v59 = &enum case for InstallSheetContext.InstallType.app(_:);
    }

    (*(v56 + 104))(v54, *v59, v55);
    v0[19] = *(v58 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_itemID);
    dispatch thunk of CustomStringConvertible.description.getter();
    v0[20] = *(v58 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_versionID);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v53 + 16))(v61, v63, v62);
    (*(v56 + 16))(v64, v54, v55);
    v0[57] = *(v58 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_logKey);
    LogKey.stringValue.getter();
    sub_1001DFECC(*(v58 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_authenticationContextData), *(v58 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_authenticationContextData + 8));
    InstallSheetContext.init(itemID:versionID:source:type:logKey:learnMoreURL:authenticationContextData:showBiometricsForAppStoreInstall:)();
    (*(v57 + 16))(v70, v65, v68);
    InstallConfirmationRequest.init(context:)();
    v60 = swift_task_alloc();
    v0[58] = v60;
    *v60 = v0;
    v60[1] = sub_1005ABAA4;

    return InstallConfirmationRequest.run()();
  }

  sub_10020A980(v15, (v0 + 7));
  if (swift_dynamicCast())
  {
    v20 = v0[17];
    v21 = v0[18];

    sub_10060014C(v20, v21);
    v23 = v22;

    if (v23)
    {
    }

    v47 = v0[45];
    v73 = v0[47];
    v75 = v0[44];
    v48 = v0[40];
    v67 = v0[39];
    v49 = v0[38];
    v69 = v0[37];
    v50 = v0[22];
    v51 = v50 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_metadata;
    v52 = type metadata accessor for MediaAPIMetadata();
    sub_100337114(v51 + *(v52 + 28), v48);

    InstallSheetContext.Source.WebInstallContext.init(domain:developerName:developerID:appName:isUpdate:iconURL:)();
    (*(v49 + 16))(v73, v67, v69);
    (*(v47 + 104))(v73, enum case for InstallSheetContext.Source.webWithContext(_:), v75);
    sub_100006D8C((v50 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_bag), *(v50 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_bag + 24));
    sub_1003655C8();
    (*(v49 + 8))(v67, v69);
    goto LABEL_19;
  }

  v24 = v0[22];
  static Logger.install.getter();
  v25 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[53];
  v30 = v0[48];
  if (v28)
  {
    v71 = v27;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136446210;
    v76 = v32;
    sub_100006D8C(v15, v15[3]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = sub_1002346CC(v33, v34, &v76);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v71, "Unknown distributor type: %{public}s", v31, 0xCu);
    sub_10000710C(v32);
  }

  else
  {
  }

  v14(v29, v30);

  v45 = v0[1];

  return v45(0);
}

uint64_t sub_1005ABAA4(char a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_1005AC3E8;
  }

  else
  {
    v4 = sub_1005ABBBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005ABBBC()
{
  v104 = v0;
  v1 = *(v0 + 176);
  static Logger.install.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 456);
    v99 = *(v0 + 440);
    v97 = *(v0 + 416);
    v7 = *(v0 + 384);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v103[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *v9 = v6;
    *(v8 + 12) = 2082;
    v11 = v5 == 0;
    if (v5)
    {
      v12 = 0x65756E69746E6F63;
    }

    else
    {
      v12 = 0x6C65636E6163;
    }

    if (v11)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    v14 = v6;
    v15 = sub_1002346CC(v12, v13, v103);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Asked to %{public}s the install", v8, 0x16u);
    sub_1001F8084(v9);

    sub_10000710C(v10);

    v99(v97, v7);
  }

  else
  {
    v16 = *(v0 + 440);
    v17 = *(v0 + 416);
    v18 = *(v0 + 384);

    v16(v17, v18);
  }

  v102 = *(v0 + 480);
  if (v102 == 1)
  {
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    v21 = *(v0 + 184);
    (*(v19 + 104))(v20, enum case for FeatureFlag.newInstallSheetFlow(_:), v21);
    v22 = isFeatureEnabled(_:)();
    (*(v19 + 8))(v20, v21);
    v23 = *(v0 + 352);
    v24 = *(v0 + 360);
    if (v22)
    {
      v25 = *(v0 + 368);
      InstallSheetContext.source.getter();
      v26 = InstallSheetContext.Source.isWebInstall.getter();
      v27 = *(v24 + 8);
      v27(v25, v23);
      if ((v26 & 1) != 0 && (v28 = *(v0 + 472), v29 = (*(v0 + 176) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_metadata), v30 = v29[4], v31 = v29[5], v32 = v29[6], v33 = v29[7], v34 = type metadata accessor for MediaAPIMetadata(), sub_10058B130(v30, v31, v32, v33, *(v29 + *(v34 + 56)), *(v29 + *(v34 + 56) + 8)), v28))
      {
        v100 = v27;
        v35 = *(v0 + 176);
        static Logger.install.getter();
        v36 = v35;
        swift_errorRetain();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        v98 = v37;
        if (os_log_type_enabled(v37, v38))
        {
          v39 = *(v0 + 456);
          v82 = *(v0 + 400);
          v83 = *(v0 + 440);
          v81 = *(v0 + 384);
          v96 = *(v0 + 376);
          v93 = *(v0 + 288);
          v95 = *(v0 + 352);
          v89 = *(v0 + 272);
          v91 = *(v0 + 264);
          v84 = *(v0 + 240);
          v86 = *(v0 + 232);
          v87 = *(v0 + 256);
          v78 = *(v0 + 216);
          v79 = *(v0 + 208);
          v80 = *(v0 + 224);
          v77 = v38;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v103[0] = swift_slowAlloc();
          *v40 = 138413058;
          *(v40 + 4) = v39;
          *v41 = v39;
          *(v40 + 12) = 2082;
          v42 = v39;
          *(v40 + 14) = sub_1002346CC(v32, v33, v103);
          *(v40 + 22) = 2082;
          *(v40 + 24) = sub_1002346CC(v30, v31, v103);
          *(v40 + 32) = 2114;
          swift_errorRetain();
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 34) = v43;
          v41[1] = v43;
          _os_log_impl(&_mh_execute_header, v98, v77, "[%@] Failed to approve developer %{public}s (%{public}s): %{public}@", v40, 0x2Au);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v83(v82, v81);
          (*(v78 + 8))(v80, v79);
          (*(v84 + 8))(v87, v86);
          (*(v89 + 8))(v93, v91);
        }

        else
        {
          v85 = *(v0 + 440);
          v68 = *(v0 + 400);
          v69 = *(v0 + 384);
          v96 = *(v0 + 376);
          v94 = *(v0 + 288);
          v95 = *(v0 + 352);
          v70 = *(v0 + 272);
          v90 = *(v0 + 256);
          v92 = *(v0 + 264);
          v71 = *(v0 + 240);
          v88 = *(v0 + 232);
          v73 = *(v0 + 216);
          v72 = *(v0 + 224);
          v74 = *(v0 + 208);

          v85(v68, v69);
          (*(v73 + 8))(v72, v74);
          (*(v71 + 8))(v90, v88);
          (*(v70 + 8))(v94, v92);
        }

        v100(v96, v95);
      }

      else
      {
        v101 = *(v0 + 376);
        v60 = *(v0 + 352);
        v61 = *(v0 + 288);
        v63 = *(v0 + 264);
        v62 = *(v0 + 272);
        v64 = *(v0 + 256);
        v65 = v27;
        v66 = *(v0 + 232);
        v67 = *(v0 + 240);
        (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        (*(v67 + 8))(v64, v66);
        (*(v62 + 8))(v61, v63);
        v65(v101, v60);
      }
    }

    else
    {
      v53 = *(v0 + 376);
      v54 = *(v0 + 288);
      v56 = *(v0 + 264);
      v55 = *(v0 + 272);
      v57 = *(v0 + 256);
      v58 = *(v0 + 232);
      v59 = *(v0 + 240);
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
      (*(v59 + 8))(v57, v58);
      (*(v55 + 8))(v54, v56);
      (*(v24 + 8))(v53, v23);
    }
  }

  else
  {
    v44 = *(v0 + 376);
    v46 = *(v0 + 352);
    v45 = *(v0 + 360);
    v47 = *(v0 + 288);
    v48 = *(v0 + 264);
    v49 = *(v0 + 272);
    v50 = *(v0 + 256);
    v51 = *(v0 + 232);
    v52 = *(v0 + 240);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    (*(v52 + 8))(v50, v51);
    (*(v49 + 8))(v47, v48);
    (*(v45 + 8))(v44, v46);
  }

  v75 = *(v0 + 8);

  return v75(v102);
}

uint64_t sub_1005AC3E8()
{
  v49 = v0;
  v1 = v0[22];
  static Logger.install.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v47 = v3;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[57];
    v31 = v0[55];
    v28 = v0[48];
    v29 = v0[51];
    v45 = v0[47];
    v41 = v0[45];
    v43 = v0[44];
    v37 = v0[33];
    v39 = v0[36];
    v34 = v0[32];
    v35 = v0[34];
    v30 = v0[30];
    v32 = v0[29];
    v25 = v0[27];
    v26 = v0[26];
    v27 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48 = v8;
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v9 = *(v0[13] - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = v5;
    v11 = String.init<A>(describing:)();
    v13 = v12;

    v14 = sub_1002346CC(v11, v13, &v48);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v47, v4, "[%@] Error asking for install confirmation: %{public}s", v6, 0x16u);
    sub_1001F8084(v7);

    sub_10000710C(v8);

    v31(v29, v28);
    (*(v25 + 8))(v27, v26);
    (*(v30 + 8))(v34, v32);
    (*(v35 + 8))(v39, v37);
    (*(v41 + 8))(v45, v43);
  }

  else
  {
    v33 = v0[55];
    v15 = v0[51];
    v16 = v0[48];
    v17 = v0[45];
    v44 = v0[44];
    v46 = v0[47];
    v18 = v0[34];
    v40 = v0[33];
    v42 = v0[36];
    v19 = v0[30];
    v36 = v0[29];
    v38 = v0[32];
    v21 = v0[27];
    v20 = v0[28];
    v22 = v0[26];

    v33(v15, v16);
    (*(v21 + 8))(v20, v22);
    (*(v19 + 8))(v38, v36);
    (*(v18 + 8))(v42, v40);
    (*(v17 + 8))(v46, v44);
  }

  v23 = v0[1];

  return v23(0);
}

uint64_t type metadata accessor for InstallConfirmationTask()
{
  result = qword_1007882F8;
  if (!qword_1007882F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005AC98C()
{
  result = type metadata accessor for MediaAPIMetadata();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1005ACA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, objc_class *a6, uint64_t a7, uint64_t a8)
{
  v53 = a3;
  v49 = a2;
  v50 = type metadata accessor for AppInstallRequestType();
  v14 = *(v50 - 8);
  v15 = __chkstk_darwin(v50);
  v48 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = &v48 - v17;
  v58 = a7;
  v59 = a8;
  v18 = sub_10020A748(v57);
  (*(*(a7 - 8) + 32))(v18, a5, a7);
  v52 = a6;
  v19 = objc_allocWithZone(a6);
  v20 = sub_100231ED8(v57, v58);
  __chkstk_darwin(v20);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v25 = type metadata accessor for Dependencies();
  v56[3] = v25;
  v56[4] = &off_100770270;
  v56[0] = v24;
  v26 = *(a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v27 = v26 + *(*v26 + class metadata base offset for ManagedBuffer + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v26 + v28));
  sub_10020A980(v27, v55);
  os_unfair_lock_unlock((v26 + v28));
  sub_1001DFDBC(v55, &v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_distributor]);
  v30 = *(a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData);
  v29 = *(a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData + 8);
  v31 = &v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_authenticationContextData];
  *v31 = v30;
  v31[1] = v29;
  *&v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_approvedDeveloperStore] = *(*sub_100006D8C(v56, v25) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_approvedDeveloperStore);
  sub_10020A980(a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, &v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_bag]);
  sub_1003A7B64(a4, &v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_metadata]);
  v32 = *(a1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  *&v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_logKey] = v32;
  *&v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_itemID] = v49;
  *&v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_versionID] = v53;
  v33 = *(type metadata accessor for MediaAPIMetadata() + 32);
  v34 = a4;
  v35 = v50;
  v53 = v34;
  v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_isMarketplace] = *(v34 + v33);
  v36 = v29;
  v37 = v48;
  sub_1001DFECC(v30, v36);

  v38 = v32;
  os_unfair_lock_lock((v26 + v28));
  v39 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v40 = v51;
  (*(v14 + 16))(v51, v27 + *(v39 + 28), v35);
  os_unfair_lock_unlock((v26 + v28));
  (*(v14 + 32))(v37, v40, v35);
  v41 = (*(v14 + 88))(v37, v35);
  v44 = v41 == enum case for AppInstallRequestType.automaticUpdate(_:) || v41 == enum case for AppInstallRequestType.update(_:) || v41 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v41 == enum case for AppInstallRequestType.userVPPUpdate(_:);
  v45 = v44;
  if (!v44)
  {
    (*(v14 + 8))(v37, v35);
  }

  v19[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_isUpdate] = v45;
  v54.receiver = v19;
  v54.super_class = v52;
  v46 = objc_msgSendSuper2(&v54, "init");
  sub_1005AD478(v53, type metadata accessor for MediaAPIMetadata);
  sub_10000710C(v56);
  sub_10000710C(v57);
  return v46;
}

id sub_1005ACF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, objc_class *a8, uint64_t a9, uint64_t a10)
{
  v51 = a6;
  v50 = a1;
  v16 = type metadata accessor for AppInstallRequestType();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v53 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v52 = &v50 - v20;
  v60 = a9;
  v61 = a10;
  v21 = sub_10020A748(v59);
  (*(*(a9 - 8) + 32))(v21, a7, a9);
  v54 = a8;
  v22 = objc_allocWithZone(a8);
  v23 = sub_100231ED8(v59, v60);
  __chkstk_darwin(v23);
  v25 = (&v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v28 = type metadata accessor for Dependencies();
  v58[3] = v28;
  v58[4] = &off_100770270;
  v58[0] = v27;
  v29 = &v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_authenticationContextData];
  *v29 = a4;
  v29[1] = a5;
  *&v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_approvedDeveloperStore] = *(*sub_100006D8C(v58, v28) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_approvedDeveloperStore);
  v55 = a3;
  sub_1003A7B64(a3, &v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_metadata]);
  v30 = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v31 = v30 + *(*v30 + class metadata base offset for ManagedBuffer + 16);
  v32 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;
  v33 = v50;

  v34 = a4;
  v35 = v51;
  sub_1001DFECC(v34, a5);
  os_unfair_lock_lock((v30 + v32));
  sub_10020A980(v31, v57);
  os_unfair_lock_unlock((v30 + v32));
  sub_1001DFDBC(v57, &v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_distributor]);
  sub_10020A980(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, &v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_bag]);
  *&v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_logKey] = v35;
  v36 = v33 + *(type metadata accessor for ADP() + 24);
  *&v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_itemID] = *(v36 + 16);
  *&v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_versionID] = *(v36 + 8);
  v37 = *(v36 + 168);
  if (v37)
  {
    if (*(v36 + 160) == 0x6C7074656B72616DLL && v37 == 0xEB00000000656361)
    {
      LOBYTE(v38) = 1;
    }

    else
    {
      LOBYTE(v38) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (*(v36 + 184) == 1)
  {
    LOBYTE(v38) = 0;
  }

  else
  {
    v38 = *(v36 + 176) & 1;
  }

  v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_isMarketplace] = v38 & 1;
  v39 = v35;
  os_unfair_lock_lock((v30 + v32));
  v40 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v41 = v52;
  (*(v17 + 16))(v52, v31 + *(v40 + 28), v16);
  os_unfair_lock_unlock((v30 + v32));
  v42 = v53;
  (*(v17 + 32))(v53, v41, v16);
  v43 = (*(v17 + 88))(v42, v16);
  v46 = v43 == enum case for AppInstallRequestType.automaticUpdate(_:) || v43 == enum case for AppInstallRequestType.update(_:) || v43 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v43 == enum case for AppInstallRequestType.userVPPUpdate(_:);
  v47 = v46;
  if (!v46)
  {
    (*(v17 + 8))(v42, v16);
  }

  v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23InstallConfirmationTask_isUpdate] = v47;
  v56.receiver = v22;
  v56.super_class = v54;
  v48 = objc_msgSendSuper2(&v56, "init", v50);
  sub_1005AD478(v55, type metadata accessor for MediaAPIMetadata);
  sub_1005AD478(v33, type metadata accessor for ADP);
  sub_10000710C(v58);
  sub_10000710C(v59);
  return v48;
}

uint64_t sub_1005AD478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005AD4D8(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a4;
  v42 = a3;
  v41 = a2;
  v40 = type metadata accessor for OSSignpostID();
  v6 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = v44;
  v23 = v41;
  *(v5 + 16) = v43;
  *(v5 + 24) = v23;
  *(v5 + 32) = v42;
  v24 = *(v12 + 16);
  v41 = v11;
  v24(v14, v22, v11);
  OSSignposter.init(logger:)();
  v25 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16SignpostInterval_signposter;
  (*(v16 + 32))(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16SignpostInterval_signposter, v21, v15);
  (*(v16 + 16))(v19, v5 + v25, v15);
  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = v19;
  v37 = v5;
  v35 = v16;
  v38 = v12;
  if ((v42 & 1) == 0)
  {
    v29 = v43;
    if (v43)
    {
LABEL_9:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v31, v29, "", v30, 2u);

      v5 = v37;
      v12 = v38;
      v16 = v35;
      v19 = v36;
LABEL_10:

      v32 = v40;
      (*(v6 + 16))(v39, v10, v40);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v33 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v12 + 8))(v44, v41);
      (*(v6 + 8))(v10, v32);
      (*(v16 + 8))(v19, v15);
      *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16SignpostInterval_interval) = v33;
      return v5;
    }

    __break(1u);
  }

  if (v43 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {
      v29 = &v45;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1005AD8EC()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16SignpostInterval_signposter;
  (*(v8 + 16))(v10, v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16SignpostInterval_signposter, v7);
  v32 = *(v0 + 16);
  v31 = *(v0 + 32);
  v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon16SignpostInterval_interval;
  v13 = *(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16SignpostInterval_interval);

  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v29 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v16 = v37;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v36 + 8))(v6, v16);
    v25 = *(v8 + 8);
    v25(v10, v7);
    v25((v1 + v11), v7);

    return v1;
  }

  v30 = v13;
  v26[0] = v1;
  v26[1] = v12;
  v27 = v10;
  v28 = v11;
  v17 = v37;
  if ((v31 & 1) == 0)
  {
    v19 = v34;
    v18 = v35;
    v21 = v32;
    v20 = v33;
    if (v32)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v19 + 88))(v20, v18) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v20, v18);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v29, v24, v21, v22, v23, 2u);

      v16 = v17;
      v10 = v27;
      v11 = v28;
      v1 = v26[0];
      goto LABEL_13;
    }

    __break(1u);
  }

  v20 = v33;
  v19 = v34;
  v18 = v35;
  if (v32 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    if (v32 >> 16 <= 0x10)
    {
      v21 = &v38;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1005ADCBC()
{
  sub_1005AD8EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostInterval()
{
  result = qword_100788330;
  if (!qword_100788330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005ADD68()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005ADE10(char a1)
{
  result = 0x6F72656C65636361;
  switch(a1)
  {
    case 1:
      result = 0x74696B7261;
      break;
    case 2:
      result = 0x37766D7261;
      break;
    case 3:
      result = 0x34366D7261;
      break;
    case 4:
      result = 0x75636F466F747561;
      break;
    case 5:
      result = 0x746F6F7465756C62;
      break;
    case 6:
      result = 0x6C466172656D6163;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x74696B656D6167;
      break;
    case 9:
      result = 7565415;
      break;
    case 10:
      result = 0x706F63736F727967;
      break;
    case 11:
      result = 0x696B68746C616568;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6D6F74656E67616DLL;
      break;
    case 14:
      result = 0x6C6174656DLL;
      break;
    case 15:
      result = 0x6F68706F7263696DLL;
      break;
    case 16:
      result = 6514286;
      break;
    case 17:
      result = 0x73656C676E65706FLL;
      break;
    case 18:
      result = 0x73656C676E65706FLL;
      break;
    case 19:
      result = 0x73656C676E65706FLL;
      break;
    case 20:
      result = 0x65506F5472656570;
      break;
    case 21:
      result = 7564659;
      break;
    case 22:
      v3 = 0x436C6C697473;
      goto LABEL_25;
    case 23:
      result = 0x6E6F6870656C6574;
      break;
    case 24:
      v3 = 0x436F65646976;
LABEL_25:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 25:
      result = 1768319351;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005AE0F0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1005ADE10(*a1);
  v5 = v4;
  if (v3 == sub_1005ADE10(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005AE178()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005ADE10(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005AE1DC()
{
  sub_1005ADE10(*v0);
  String.hash(into:)();
}

Swift::Int sub_1005AE230()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005ADE10(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005AE290@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1005AE3BC();
  *a1 = result;
  return result;
}

uint64_t sub_1005AE2C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005ADE10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1005AE2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    v8 = MobileGestalt_copy_productVersion_obj();

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    sub_10051BCFC(v9, v11, &v14);
    sub_100222DA4(&v14);
    v12 = v14 < a1;
    if (v14 == a1)
    {
      v12 = v15 < a2;
      if (v15 == a2)
      {
        v12 = v16 < a3;
      }
    }

    v13 = v12;
    return (v13 ^ 1u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005AE3BC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1005AE410(uint64_t a1)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (2)
  {
    if (v6)
    {
LABEL_10:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      switch(*(*(a1 + 48) + (v11 | (v9 << 6))))
      {
        case 1:
          result = MobileGestalt_get_deviceSupportsARKit();
          if (result)
          {
            continue;
          }

          break;
        case 2:
          result = MobileGestalt_get_armV7ExecutionCapability();
          if (result)
          {
            continue;
          }

          break;
        case 3:
          result = MobileGestalt_get_arm64ExecutionCapability();
          if (result)
          {
            continue;
          }

          break;
        case 4:
          result = MobileGestalt_get_autoFocusCameraCapability();
          if (result)
          {
            continue;
          }

          break;
        case 5:
          result = MobileGestalt_get_bluetoothLECapability();
          if (result)
          {
            continue;
          }

          break;
        case 6:
          result = MobileGestalt_get_cameraFlashCapability();
          if (result)
          {
            continue;
          }

          break;
        case 7:
          result = MobileGestalt_get_frontFacingCameraCapability();
          if (result)
          {
            continue;
          }

          break;
        case 8:
          result = MobileGestalt_get_gameKitCapability();
          if (result)
          {
            continue;
          }

          break;
        case 9:
          result = MobileGestalt_get_gpsCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0xA:
          result = MobileGestalt_get_gyroscopeCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0xB:
          result = MobileGestalt_get_healthKitCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0xC:
          result = MobileGestalt_get_locationServicesCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0xD:
          result = MobileGestalt_get_magnetometerCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0xE:
          result = MobileGestalt_get_metalCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0xF:
          result = MobileGestalt_get_microphoneCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0x10:
          result = MobileGestalt_get_deviceSupportsNFC();
          if (result)
          {
            continue;
          }

          break;
        case 0x11:
          result = MobileGestalt_get_openGLES1Capability();
          if (result)
          {
            continue;
          }

          break;
        case 0x12:
          result = MobileGestalt_get_openGLES2Capability();
          if (result)
          {
            continue;
          }

          break;
        case 0x13:
          result = MobileGestalt_get_openGLES3Capability();
          if (result)
          {
            continue;
          }

          break;
        case 0x14:
          result = MobileGestalt_get_peer2PeerCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0x15:
          result = MobileGestalt_get_smsCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0x16:
          result = MobileGestalt_get_cameraCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0x17:
          result = MobileGestalt_get_telephonyCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0x18:
          result = MobileGestalt_get_videoCameraCapability();
          if (result)
          {
            continue;
          }

          break;
        case 0x19:
          result = MobileGestalt_get_wifiCapability();
          if (result)
          {
            continue;
          }

          break;
        default:
          result = MobileGestalt_get_accelerometerCapability();
          if (result)
          {
            continue;
          }

          break;
      }

      v12 = 0;
LABEL_64:

      return v12;
    }

    break;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v12 = 1;
      goto LABEL_64;
    }

    v6 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1005AE6B4(uint64_t a1)
{
  v11 = &_swiftEmptySetSingleton;
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v4 &= v4 - 1;

    result = sub_1005AE3BC();
    if (result != 26)
    {
      result = sub_1003F2150(&v10, result);
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v9 = sub_1005AE410(v11);

      return v9 & 1;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ADPPreflightTaskUtilities.Requirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ADPPreflightTaskUtilities.Requirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1005AE940()
{
  result = qword_1007883C8;
  if (!qword_1007883C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007883C8);
  }

  return result;
}

void *sub_1005AEAAC(void *result, uint64_t (*a2)(void), uint64_t *a3)
{
  v3 = result[2];
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result + 4;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v6;
    v9 = *(*v6 + 16);
    v10 = v7[2];
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 + v9 <= v7[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = a2();
      v7 = result;
      if (*(v8 + 16))
      {
LABEL_11:
        if ((v7[3] >> 1) - v7[2] < v9)
        {
          goto LABEL_19;
        }

        sub_1001F0C48(a3);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v11 = v7[2];
          v12 = __OFADD__(v11, v9);
          v13 = v11 + v9;
          if (v12)
          {
            goto LABEL_20;
          }

          v7[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_18;
    }

LABEL_4:
    ++v6;
    if (!--v3)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1005AEC00(void *a1)
{
  v2 = v1;
  v4 = sub_1001F0C48(&qword_1007884E0);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v40 - v5;
  v6 = sub_1001F0C48(&qword_1007884E8);
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v50 = &v40 - v7;
  v8 = sub_1001F0C48(&qword_1007884F0);
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v53 = sub_1001F0C48(&qword_1007884F8);
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v12 = &v40 - v11;
  sub_100006D8C(a1, a1[3]);
  sub_1005B11B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v2;
  v14 = v2[1];
  v16 = v2[2];
  v15 = v2[3];
  v17 = *(v2 + 32);
  v19 = v2[5];
  v18 = v2[6];
  v21 = v2[7];
  v20 = v2[8];
  v22 = *(v2 + 9);
  v23 = *(v2 + 95) >> 6;
  if (!v23)
  {
    v41 = v2[8];
    v42 = v22;
    v32 = *(v2 + 33);
    v31 = v2 + 33;
    v49 = v32;
    v48 = *(v31 + 4);
    v47 = *(v31 + 6);
    LOBYTE(v54) = 1;
    v43 = v21;
    v44 = v18;
    v33 = v19;
    LOBYTE(v31) = v17;
    sub_1005B12B4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v13;
    v55 = v14;
    *&v56 = v16;
    *(&v56 + 1) = v15;
    v57 = v31;
    v60 = v47;
    v59 = v48;
    v58 = v49;
    v61 = v33;
    v62 = v44;
    v63 = v43;
    v64 = 0;
    sub_1005B1458();
    v29 = v46;
    v34 = v52;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    if (v34)
    {
      v35 = *(v45 + 8);
      v36 = v50;
LABEL_11:
      v35(v36, v29);
      return (*(v51 + 8))(v12, v53);
    }

    v54 = v41;
    v55 = v42;
    v64 = 1;
    sub_1005B14AC();
    v28 = v50;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39 = v45;
LABEL_10:
    v35 = *(v39 + 8);
    v36 = v28;
    goto LABEL_11;
  }

  if (v23 != 1)
  {
    LOBYTE(v54) = 0;
    sub_1005B13B0();
    v37 = v53;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v44 + 8))(v10, v8);
    return (*(v51 + 8))(v12, v37);
  }

  v43 = v2[7];
  v41 = v20;
  v42 = v22;
  LODWORD(v45) = *(v2 + 88);
  v24 = v2[13];
  v50 = v2[12];
  v46 = v24;
  LOBYTE(v54) = 2;
  v44 = v18;
  v25 = v19;
  v26 = v17;
  sub_1005B120C();
  v27 = v47;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v54 = v13;
  v55 = v14;
  v28 = v27;
  *&v56 = v16;
  *(&v56 + 1) = v15;
  v57 = v26 & 1;
  v61 = v25;
  v62 = v44;
  v64 = 0;
  sub_1005B1404();
  v29 = v49;
  v30 = v52;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v30)
  {
    v54 = v43;
    v55 = v41;
    v56 = v42;
    v57 = v45 & 1;
    v61 = v50;
    v62 = v46;
    v64 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39 = v48;
    goto LABEL_10;
  }

  (*(v48 + 8))(v27, v29);
  return (*(v51 + 8))(v12, v53);
}

unint64_t sub_1005AF1B0(char a1)
{
  result = 0x666F5F7365747962;
  switch(a1)
  {
    case 1:
      result = 0x645F726568706963;
      break;
    case 2:
      result = 0x73736572706D6F63;
      break;
    case 3:
      result = 0x6F72705F61746164;
      break;
    case 4:
      result = 0x747365676964;
      break;
    case 5:
      result = 0x636F6C5F6B736964;
      break;
    case 6:
      result = 0x6974707972636E65;
      break;
    case 7:
      result = 0x74616D726F66;
      break;
    case 8:
      result = 0x6B636F6C625F7369;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x695F746E65726170;
      break;
    case 11:
      result = 0x5F74736575716572;
      break;
    case 12:
      result = 0x7265696669726576;
      break;
    case 13:
      result = 1701869940;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 7107189;
      break;
    case 16:
      result = 0x746E6169726176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005AF3C4()
{
  if (*v0)
  {
    return 0x4B65736E6563696CLL;
  }

  else
  {
    return 0x79654B707061;
  }
}

uint64_t sub_1005AF400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B707061 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65736E6563696CLL && a2 == 0xEA00000000007965)
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

uint64_t sub_1005AF4E0(uint64_t a1)
{
  v2 = sub_1005B120C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005AF51C(uint64_t a1)
{
  v2 = sub_1005B120C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005AF558()
{
  v1 = 0x79616C5072696166;
  if (*v0 != 1)
  {
    v1 = 0x6E6563694C707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707972636E656E75;
  }
}

uint64_t sub_1005AF5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005B0730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005AF5E8(uint64_t a1)
{
  v2 = sub_1005B11B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005AF624(uint64_t a1)
{
  v2 = sub_1005B11B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005AF660()
{
  if (*v0)
  {
    return 1718511987;
  }

  else
  {
    return 0x6F666E497064;
  }
}

uint64_t sub_1005AF690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F666E497064 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1718511987 && a2 == 0xE400000000000000)
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

uint64_t sub_1005AF768(uint64_t a1)
{
  v2 = sub_1005B12B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005AF7A4(uint64_t a1)
{
  v2 = sub_1005B12B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005AF7E0(uint64_t a1)
{
  v2 = sub_1005B13B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005AF81C(uint64_t a1)
{
  v2 = sub_1005B13B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1005AF858@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_f64[0] = sub_1005B0854(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1005AF8C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1005AF1B0(*a1);
  v5 = v4;
  if (v3 == sub_1005AF1B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005AF94C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005AF1B0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005AF9B0()
{
  sub_1005AF1B0(*v0);
  String.hash(into:)();
}

Swift::Int sub_1005AFA04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005AF1B0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005AFA64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1005B1500();
  *a1 = result;
  return result;
}

unint64_t sub_1005AFA94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1005AF1B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1005AFC74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPackageEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1005AFCCC(uint64_t a1)
{
  v11 = sub_1001F0C48(&qword_10077EFB0);
  LOWORD(v10) = 10;
  v12 = sub_100213FA0(&qword_10077EFB8, &qword_10077EFB0);
  *(&v10 + 1) = a1;
  sub_1001F0C48(&qword_100781430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v10, inited + 32);
  v8 = sub_1001F0C48(&qword_100788408);
  v9 = sub_100213FA0(&qword_100788410, &qword_100788408);
  LOWORD(v7) = 8;
  BYTE2(v7) = 0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_10069E680;
  sub_100236238(&v7, v3 + 32);
  sub_1001F0C48(&qword_100788418);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_10069F6E0;
  *(v4 + 32) = inited;
  *(v4 + 40) = v3;
  v5 = sub_1005AEAAC(v4, sub_1003643D0, &qword_100781438);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100788420);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_1005AFEA0(void *a1, uint64_t a2)
{
  v3 = sub_1005AFCCC(a2);
  *(&v33 + 1) = sub_1001F0C48(&qword_1007883F8);
  LOBYTE(v32) = 0;
  v34 = sub_100213FA0(&qword_100788400, &qword_1007883F8);
  *(&v32 + 1) = v3;
  v4 = sub_100235520(&v32, a1);
  v6 = v5;
  if (*(&v33 + 1))
  {
    sub_10000710C(&v32);
  }

  v7 = *(v6 + 16);

  v8 = v4;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    while (v9 < *(v6 + 16))
    {
      v11 = *(v6 + 8 * v9 + 32);
      type metadata accessor for AppPackageEntity.Entity();
      v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v11 onConnection:v8];
      if (([v12 existsInDatabase] & 1) == 0)
      {

        swift_bridgeObjectRelease_n();
        return v10;
      }

      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 valueForProperty:v13];

      if (v14)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      sub_100323B90(&v32, &v30);
      if (v31)
      {
        sub_1001F6498(&v30, &v28);
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_10020A6D0(&v28, v26);
        if (swift_dynamicCast())
        {
          sub_1004EAE00();
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          sub_100007158(v24, v25);

          sub_10000710C(&v28);
          sub_1000032A8(&v32, &qword_100783A30);
          if (v27)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_10020A6D0(&v28, v26);
          if (!swift_dynamicCast() || v24 == 2)
          {
            goto LABEL_29;
          }

          sub_10000710C(&v28);
          sub_1000032A8(&v32, &qword_100783A30);
          if (v24)
          {
LABEL_24:

            goto LABEL_25;
          }
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {

          v10 = v8;
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {

        sub_1000032A8(&v32, &qword_100783A30);
      }

      ++v9;
      v10 = v12;
      if (v7 == v9)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    sub_100513858();
    swift_allocError();
    v18 = v17;
    v26[0] = &type metadata for AppPackageType;
    sub_1001F0C48(&qword_100787410);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_100006D8C(&v28, v29);
    v26[0] = swift_getDynamicType();
    sub_1001F0C48(&qword_1007868B0);
    v22 = String.init<A>(describing:)();
    *v18 = v19;
    *(v18 + 8) = v21;
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;
    *(v18 + 40) = 2;
    swift_willThrow();

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v12 = 0;
LABEL_22:
    swift_bridgeObjectRelease_n();

LABEL_26:
    return v12;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppPackageEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppPackageEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1005B04E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005B0508(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1005B0530(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_1005B05A8()
{
  result = qword_100788468;
  if (!qword_100788468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788468);
  }

  return result;
}

unint64_t sub_1005B05FC(void *a1)
{
  a1[1] = sub_1005B0634();
  a1[2] = sub_1005B0688();
  result = sub_1005B06DC();
  a1[3] = result;
  return result;
}

unint64_t sub_1005B0634()
{
  result = qword_100788470;
  if (!qword_100788470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788470);
  }

  return result;
}

unint64_t sub_1005B0688()
{
  result = qword_100788478;
  if (!qword_100788478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788478);
  }

  return result;
}

unint64_t sub_1005B06DC()
{
  result = qword_100788480;
  if (!qword_100788480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788480);
  }

  return result;
}

uint64_t sub_1005B0730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707972636E656E75 && a2 == 0xEB00000000646574;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C5072696166 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6563694C707061 && a2 == 0xEA00000000006573)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1005B0854@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = a2;
  v41 = sub_1001F0C48(&qword_100788488);
  *&v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  *&v47 = &v39 - v3;
  v42 = sub_1001F0C48(&qword_100788490);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v39 - v4;
  v6 = sub_1001F0C48(&qword_100788498);
  *&v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_1001F0C48(&qword_1007884A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = a1[3];
  v63 = a1;
  sub_100006D8C(a1, v13);
  sub_1005B11B8();
  v14 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_8;
  }

  v15 = v46;
  *(&v40 + 1) = v6;
  v16 = v47;
  *&v48 = v10;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v59 = v17;
  v60 = v17 + 32;
  v61 = 0;
  v62 = v18;
  v19 = sub_1005CD740();
  if (v19 == 3 || v61 != v62 >> 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    sub_1001F0C48(&qword_1007896A0);
    *v23 = &type metadata for AppPackageEncryption;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
    (*(v48 + 8))(v12, v9);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10000710C(v63);
    return result;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      LOBYTE(v55) = 1;
      sub_1005B12B4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v54 = 0;
      sub_1005B1308();
      v20 = v42;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      *v51 = v55;
      *&v51[16] = v56;
      v52 = v57;
      v53 = v58;
      v49 = 1;
      sub_1005B135C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v43 + 8))(v5, v20);
      (*(v48 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v33 = 0;
      v34 = 0;
      v48 = v50;
      v47 = v52;
      v46 = *v51;
      v44 = *&v51[16];
      v36 = *(&v53 + 1);
      v35 = v53;
    }

    else
    {
      LOBYTE(v55) = 2;
      sub_1005B120C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v9;
      v51[0] = 0;
      sub_1005B1260();
      v27 = v16;
      v28 = v41;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v29 = v48;
      v46 = v55;
      v30 = *(&v56 + 1);
      v31 = v56;
      *&v40 = v57;
      *(&v40 + 1) = *(&v57 + 1);
      v32 = v28;
      v35 = v58;
      LOBYTE(v50) = 1;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v42 = 0;
      v39 = v30;
      (*(v44 + 8))(v27, v32);
      (*(v29 + 8))(v12, v43);
      swift_unknownObjectRelease();
      v36 = *v51;
      v48 = *&v51[8];
      v37 = v31;
      v12 = *(&v52 + 1);
      v15 = v53;
      v33 = *&v51[24] & 0xCFFFFFFFFFFFFFFFLL;
      v34 = v52 | 0x4000000000000000;
      v47 = v40;
      *&v38 = v37;
      *(&v38 + 1) = v39;
      v44 = v38;
    }
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_1005B13B0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v15 + 8))(v8, *(&v40 + 1));
    (*(v48 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v12 = 0;
    v15 = 0;
    v46 = 0u;
    v48 = 0u;
    v34 = 0x8000000000000000;
    v44 = 0u;
    v47 = 0u;
  }

  sub_10000710C(v63);
  v25 = v45;
  v26 = v47;
  *v45 = v46;
  v25[1] = v44;
  v25[2] = v26;
  *(v25 + 6) = v35;
  *(v25 + 7) = v36;
  result = *&v48;
  v25[4] = v48;
  *(v25 + 10) = v33;
  *(v25 + 11) = v34;
  *(v25 + 12) = v12;
  *(v25 + 13) = v15;
  return result;
}

unint64_t sub_1005B11B8()
{
  result = qword_1007884A8;
  if (!qword_1007884A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007884A8);
  }

  return result;
}

unint64_t sub_1005B120C()
{
  result = qword_1007884B0;
  if (!qword_1007884B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007884B0);
  }

  return result;
}

unint64_t sub_1005B1260()
{
  result = qword_1007884B8;
  if (!qword_1007884B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007884B8);
  }

  return result;
}

unint64_t sub_1005B12B4()
{
  result = qword_1007884C0;
  if (!qword_1007884C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007884C0);
  }

  return result;
}

unint64_t sub_1005B1308()
{
  result = qword_1007884C8;
  if (!qword_1007884C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007884C8);
  }

  return result;
}

unint64_t sub_1005B135C()
{
  result = qword_1007884D0;
  if (!qword_1007884D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007884D0);
  }

  return result;
}

unint64_t sub_1005B13B0()
{
  result = qword_1007884D8;
  if (!qword_1007884D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007884D8);
  }

  return result;
}

unint64_t sub_1005B1404()
{
  result = qword_100788500;
  if (!qword_100788500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788500);
  }

  return result;
}

unint64_t sub_1005B1458()
{
  result = qword_100788508;
  if (!qword_100788508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788508);
  }

  return result;
}

unint64_t sub_1005B14AC()
{
  result = qword_100788510;
  if (!qword_100788510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788510);
  }

  return result;
}

uint64_t sub_1005B1500()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1005B1598()
{
  result = qword_100788518;
  if (!qword_100788518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788518);
  }

  return result;
}

unint64_t sub_1005B15F0()
{
  result = qword_100788520;
  if (!qword_100788520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788520);
  }

  return result;
}

unint64_t sub_1005B1648()
{
  result = qword_100788528;
  if (!qword_100788528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788528);
  }

  return result;
}

unint64_t sub_1005B16A0()
{
  result = qword_100788530;
  if (!qword_100788530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788530);
  }

  return result;
}

unint64_t sub_1005B16F8()
{
  result = qword_100788538;
  if (!qword_100788538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788538);
  }

  return result;
}

unint64_t sub_1005B1750()
{
  result = qword_100788540;
  if (!qword_100788540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788540);
  }

  return result;
}

unint64_t sub_1005B17A8()
{
  result = qword_100788548;
  if (!qword_100788548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788548);
  }

  return result;
}

unint64_t sub_1005B1800()
{
  result = qword_100788550;
  if (!qword_100788550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788550);
  }

  return result;
}

unint64_t sub_1005B1858()
{
  result = qword_100788558;
  if (!qword_100788558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788558);
  }

  return result;
}

unint64_t sub_1005B18B0()
{
  result = qword_100788560;
  if (!qword_100788560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788560);
  }

  return result;
}

unint64_t sub_1005B1908()
{
  result = qword_100788568;
  if (!qword_100788568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788568);
  }

  return result;
}

uint64_t type metadata accessor for IPA_FailTask()
{
  result = qword_1007885C8;
  if (!qword_1007885C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005B19D0()
{
  type metadata accessor for LogKey();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppInstall();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppPackage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for InstallCoordinationInstallObserver(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ProgressCache();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ManagedAppDeclarationStore();
            if (v5 <= 0x3F)
            {
              type metadata accessor for ManagedAppDeclarationStatusStore();
              if (v6 <= 0x3F)
              {
                type metadata accessor for XPCClientRegistry();
                if (v7 <= 0x3F)
                {
                  sub_1005B1B7C(319, &qword_100780988);
                  if (v8 <= 0x3F)
                  {
                    sub_1005B1B7C(319, &qword_1007885D8);
                    if (v9 <= 0x3F)
                    {
                      sub_1000033B8();
                      if (v10 <= 0x3F)
                      {
                        sub_1005B1BCC();
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1005B1B7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for SQLiteDatabase();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1005B1BCC()
{
  result = qword_1007885E0;
  if (!qword_1007885E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1007885E0);
  }

  return result;
}

void sub_1005B1C44(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a2;
  v64 = a5;
  v65 = a3;
  v58 = a6;
  v9 = type metadata accessor for Logger();
  v59 = *(v9 - 8);
  v60 = v9;
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v12 - 8);
  v62 = &v55 - v13;
  v14 = type metadata accessor for AppPackage();
  v61 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppInstall();
  __chkstk_darwin(v17 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IPA_FailTask();
  __chkstk_darwin(v20);
  v22 = (&v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v22 = a4;
  v23 = a1;
  sub_1003A85C8(v23, v19);
  if (v6)
  {
    sub_10000710C(v64);

    sub_10000710C(v65);
    return;
  }

  v55 = v16;
  v56 = a4;
  sub_1005B67B4(v19, v22 + *(v20 + 20), type metadata accessor for AppInstall);
  v24 = [v23 persistentID];
  v25 = sub_1005AFEA0(v63, v24);
  v27 = v61;
  v26 = v62;
  v57 = v20;
  if (v25)
  {
    sub_1003A84AC(v25, v62);
    v63 = 0;
    (*(v27 + 56))(v26, 0, 1, v14);
    v37 = v26;
    v38 = v55;
    sub_1005B67B4(v37, v55, type metadata accessor for AppPackage);
    sub_1005B681C(v38, v22 + *(v20 + 24), type metadata accessor for AppPackage);
    v39 = v20;
    v40 = v65;
    v62 = *(*sub_100006D8C(v65, v65[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installObserver);
    *(v22 + v39[7]) = v62;
    v61 = *(*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
    *(v22 + v39[8]) = v61;
    *(v22 + v39[9]) = *(*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
    *(v22 + v39[10]) = *(*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
    *(v22 + v39[11]) = *(*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    *(v22 + v39[12]) = *(*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v22 + v39[14]) = *(*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_certificateStore);
    v41 = sub_100006D8C(v40, v40[3]);
    sub_100005934(*v41 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v22 + v39[15], &qword_1007812A0);
    v42 = v62;

    v43 = sub_100535ED0(27, v23);
    if (v43 > 3)
    {
      if (v43 <= 5)
      {
        if (v43 == 4)
        {
          v44 = 1;
LABEL_18:

LABEL_19:
          v45 = v57;
          *(v22 + *(v57 + 52)) = v44 & 1;
          v46 = v22;
          v47 = v65;
          v48 = v65[3];
          v49 = v65[6];
          v50 = v65[9];
          v51 = v65[11];
          v52 = sub_100006D8C(v65, v48);
          v53 = (v46 + *(v45 + 64));
          v53[3] = v48;
          v53[4] = v49;
          v53[5] = v50;
          v53[6] = v51;
          v54 = sub_10020A748(v53);
          (*(*(v48 - 8) + 16))(v54, v52, v48);

          sub_10000710C(v64);
          sub_1005B6884(v55, type metadata accessor for AppPackage);
          sub_1005B681C(v46, v58, type metadata accessor for IPA_FailTask);
          sub_10000710C(v47);
          sub_1005B6884(v46, type metadata accessor for IPA_FailTask);
          return;
        }
      }

      else if (v43 != 6)
      {
        v44 = 0;
        if (v43 != 7)
        {
          goto LABEL_19;
        }
      }
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_18;
  }

  v63 = v22;
  (*(v61 + 56))(v62, 1, 1, v14);
  sub_1000032A8(v26, &unk_100780AB0);
  static Logger.install.getter();
  v28 = v23;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = [v28 persistentID];

    _os_log_impl(&_mh_execute_header, v29, v30, "No package available for %lld", v31, 0xCu);
  }

  else
  {

    v29 = v28;
  }

  v32 = v65;
  v33 = v64;
  v34 = v56;
  v36 = v59;
  v35 = v60;

  (*(v36 + 8))(v11, v35);
  type metadata accessor for InternalError();
  sub_1005B676C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10000710C(v33);
  sub_10000710C(v32);

  sub_1005B6884(v63 + *(v57 + 20), type metadata accessor for AppInstall);
}

uint64_t sub_1005B24FC(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_1001F0C48(&qword_10077F380);
  v2[15] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F3A0);
  v2[16] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for DDMDeclaration(0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = type metadata accessor for AppInstallRequestType();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for MarketplaceKitError();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for IPA_FailTask();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[41] = v8;
  v2[42] = *(v8 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = type metadata accessor for InternalError();
  v2[48] = swift_task_alloc();

  return _swift_task_switch(sub_1005B2954, 0, 0);
}

uint64_t sub_1005B2954()
{
  v98 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 112);
  v3 = v1[5];
  *(v0 + 584) = v3;
  v4 = v2 + v3;
  v5 = type metadata accessor for AppInstall();
  *(v0 + 392) = v5;
  v6 = v5[16];
  v7 = *(v4 + v6);
  if (v7)
  {
    v8 = *(v4 + v6);
  }

  else
  {
    v9 = *(v0 + 384);
    swift_storeEnumTagMultiPayload();
    sub_1005B676C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    sub_1005B67B4(v9, v10, type metadata accessor for InternalError);
    v8 = _convertErrorToNSError(_:)();

    v1 = *(v0 + 288);
    v2 = *(v0 + 112);
  }

  *(v0 + 400) = v8;
  v11 = *(v2 + v1[13]);
  *(v0 + 588) = v11;
  if (v11)
  {
    v12 = v7;
LABEL_10:
    v18 = *(v0 + 256);
    v19 = *(v0 + 264);
    v20 = *(v0 + 248);
    sub_100005934(v4 + v5[14], v20, &unk_100780A00);
    v96 = v4;
    if ((*(v19 + 48))(v20, 1, v18) == 1)
    {
      sub_1000032A8(*(v0 + 248), &unk_100780A00);
    }

    else
    {
      v21 = *(v0 + 280);
      (*(*(v0 + 264) + 32))(v21, *(v0 + 248), *(v0 + 256));
      v22 = sub_1005F8634(v21);
      if (v22)
      {
        v23 = v22;
        v24 = [v22 error];
        if (v24)
        {
          v25 = v24;
          v26 = *(v0 + 280);
          v28 = *(v0 + 256);
          v27 = *(v0 + 264);

          (*(v27 + 8))(v26, v28);
        }

        else
        {
          v38 = *(v0 + 312);
          v93 = *(v0 + 280);
          v95 = v23;
          v40 = *(v0 + 264);
          v39 = *(v0 + 272);
          v41 = *(v0 + 256);
          v42 = *(v0 + 112);
          static Logger.install.getter();
          sub_1005B681C(v42, v38, type metadata accessor for IPA_FailTask);
          (*(v40 + 16))(v39, v93, v41);
          v43 = v8;
          v44 = Logger.logObject.getter();
          LOBYTE(v41) = static os_log_type_t.default.getter();
          v91 = v43;

          v90 = v41;
          log = v44;
          v45 = os_log_type_enabled(v44, v41);
          v46 = *(v0 + 360);
          v47 = *(v0 + 336);
          v94 = *(v0 + 328);
          v48 = *(v0 + 312);
          v50 = *(v0 + 264);
          v49 = *(v0 + 272);
          v51 = *(v0 + 256);
          if (v45)
          {
            v89 = *(v0 + 336);
            v52 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v97 = v87;
            *v52 = 138412802;
            v88 = v46;
            v53 = *v48;
            sub_1005B6884(v48, type metadata accessor for IPA_FailTask);
            *(v52 + 4) = v53;
            *v86 = v53;
            *(v52 + 12) = 2080;
            sub_1005B676C(&qword_100789F60, &type metadata accessor for UUID);
            v54 = dispatch thunk of CustomStringConvertible.description.getter();
            v56 = v55;
            v57 = *(v50 + 8);
            v57(v49, v51);
            v58 = sub_1002346CC(v54, v56, &v97);

            *(v52 + 14) = v58;
            *(v52 + 22) = 2114;
            v59 = v91;
            *(v52 + 24) = v91;
            v86[1] = v91;
            v60 = v91;
            _os_log_impl(&_mh_execute_header, log, v90, "[%@] Failing coordinator %s with error: %{public}@", v52, 0x20u);
            sub_1001F0C48(&qword_10077F920);
            swift_arrayDestroy();

            sub_10000710C(v87);

            (*(v89 + 8))(v88, v94);
            v61 = v96;
          }

          else
          {

            v57 = *(v50 + 8);
            v57(v49, v51);
            sub_1005B6884(v48, type metadata accessor for IPA_FailTask);
            (*(v47 + 8))(v46, v94);
            v61 = v96;
            v59 = v91;
          }

          v70 = *(v0 + 280);
          v71 = *(v0 + 256);
          if (v11)
          {
            v72 = 3;
          }

          else
          {
            v72 = 1;
          }

          v73 = *(v61 + v5[27]);
          v74 = v59;
          sub_1005F6C58(v72, v73, v59);

          v57(v70, v71);
        }
      }

      else
      {
        (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
      }
    }

    v75 = *(v0 + 288);
    v76 = *(v0 + 112);
    v77 = *(v76 + *(v75 + 32));
    v78 = v5[19];
    v79 = (v76 + *(v75 + 64));
    v80 = v79[3];
    v81 = v79[4];
    v82 = v79[5];
    v83 = v79[6];
    v84 = sub_100006D8C(v79, v80);
    v85 = swift_task_alloc();
    *(v0 + 408) = v85;
    *v85 = v0;
    v85[1] = sub_1005B33B4;

    return sub_100387224(v96 + v78, v84, v77, v80, v81, v82, v83);
  }

  v13 = (v2 + v1[6]);
  v14 = type metadata accessor for AppPackage();
  if (*(v13 + *(v14 + 68)) == 1)
  {
    v15 = v7;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = v7;

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (*(v13 + *(v14 + 52)))
  {
    goto LABEL_10;
  }

  v29 = *(v0 + 320);
  v30 = *(v0 + 112);
  static Logger.install.getter();
  sub_1005B681C(v30, v29, type metadata accessor for IPA_FailTask);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 320);
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = *v34;
    sub_1005B6884(v34, type metadata accessor for IPA_FailTask);
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Retrying update after delta package patch failed", v35, 0xCu);
    sub_1000032A8(v36, &qword_10077F920);
  }

  else
  {

    sub_1005B6884(v34, type metadata accessor for IPA_FailTask);
  }

  v62 = *(v0 + 104);
  (*(*(v0 + 336) + 8))(*(v0 + 368), *(v0 + 328));
  sub_1001F0C48(&unk_100780A80);
  v63 = *(type metadata accessor for AppInstallTaskResult() - 8);
  v64 = *(v63 + 72);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10069F6E0;
  v67 = (v66 + v65);
  *v67 = *v13;
  swift_storeEnumTagMultiPayload();
  *(v67 + v64) = 0;
  swift_storeEnumTagMultiPayload();

  *v62 = v66;
  swift_storeEnumTagMultiPayload();

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1005B33B4()
{

  return _swift_task_switch(sub_1005B34DC, 0, 0);
}

uint64_t sub_1005B34DC()
{
  v1 = v0[14];
  sub_10048C4C4();
  v2 = swift_task_alloc();
  v0[52] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_1005B35F0;

  return sub_10052FC18(v3, sub_1005B6654, v2);
}

uint64_t sub_1005B35F0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1005B6088;
  }

  else
  {

    v2 = sub_1005B3740;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005B3740()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 584);
  v3 = *(v0 + 112);
  v4 = v3 + v2;
  v5 = (v3 + v2 + v1[41]);
  v6 = *v5;
  *(v0 + 440) = *v5;
  v7 = v5[1];
  *(v0 + 448) = v7;
  v8 = *(v5 + 16);
  *(v0 + 589) = v8;
  if (v8 != 255)
  {
    v9 = *(v3 + *(*(v0 + 288) + 56));
    v10 = swift_task_alloc();
    *(v0 + 456) = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8 & 1;
    v11 = swift_task_alloc();
    *(v0 + 464) = v11;
    *v11 = v0;
    v11[1] = sub_1005B4084;

    return sub_10052C4BC(v11, sub_1005B6670, v10, v9);
  }

  if (*(v4 + v1[17]) == 1)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = [objc_allocWithZone(BAAppStoreClient) init];
    (*(v15 + 16))(v13, v4 + v1[21], v14);
    v17 = (*(v15 + 88))(v13, v14);
    if (v17 == enum case for AppInstallRequestType.automaticInstall(_:))
    {
LABEL_7:
      v18 = 0;
      goto LABEL_10;
    }

    if (v17 == enum case for AppInstallRequestType.install(_:))
    {
      v18 = 1;
    }

    else
    {
      if (v17 == enum case for AppInstallRequestType.automaticUpdate(_:))
      {
        goto LABEL_7;
      }

      v18 = 1;
      if (v17 != enum case for AppInstallRequestType.update(_:) && v17 != enum case for AppInstallRequestType.promotion(_:))
      {
        v18 = 0;
        if (v17 != enum case for AppInstallRequestType.restore(_:) && v17 != enum case for AppInstallRequestType.deviceVPP(_:) && v17 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v17 != enum case for AppInstallRequestType.userVPP(_:) && v17 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v17 != enum case for AppInstallRequestType.upp(_:) && v17 != enum case for AppInstallRequestType.restoreUpdate(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }

LABEL_10:
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 168);
    URL.init(fileURLWithPath:)();
    v22 = String._bridgeToObjectiveC()();
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v26 = [objc_opt_self() descriptorWithAppBundleIdentifier:v22 appBundleURL:v24 event:22 client:0];

    (*(v20 + 8))(v19, v21);
    [v26 setAutomaticInstall:v18 ^ 1];
    [v26 setUserInitiated:v18];
    *(v0 + 96) = 0;
    v27 = [v16 performEventWithDescriptor:v26 error:v0 + 96];
    v28 = *(v0 + 96);
    v29 = *(v0 + 112);
    if (v27)
    {
      v30 = (v0 + 352);
      v31 = *(v0 + 304);
      v32 = v28;
      static Logger.install.getter();
      sub_1005B681C(v29, v31, type metadata accessor for IPA_FailTask);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 304);
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = *v36;
        sub_1005B6884(v36, type metadata accessor for IPA_FailTask);
        *(v37 + 4) = v39;
        *v38 = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "[%@] Sent install canceled to Background Assets", v37, 0xCu);
        sub_1000032A8(v38, &qword_10077F920);

LABEL_29:
        (*(*(v0 + 336) + 8))(*v30, *(v0 + 328));
        v1 = *(v0 + 392);
        v2 = *(v0 + 584);
        v3 = *(v0 + 112);
        goto LABEL_30;
      }

      v50 = v36;
    }

    else
    {
      v30 = (v0 + 344);
      v40 = *(v0 + 296);
      v41 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.install.getter();
      sub_1005B681C(v29, v40, type metadata accessor for IPA_FailTask);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 296);
      if (v44)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412546;
        v48 = *v45;
        sub_1005B6884(v45, type metadata accessor for IPA_FailTask);
        *(v46 + 4) = v48;
        *v47 = v48;
        *(v46 + 12) = 2114;
        swift_errorRetain();
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v49;
        v47[1] = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Failed to send install canceled to Background Assets: %{public}@", v46, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();

        goto LABEL_29;
      }

      v50 = v45;
    }

    sub_1005B6884(v50, type metadata accessor for IPA_FailTask);
    goto LABEL_29;
  }

LABEL_30:
  v51 = (v3 + v2 + v1[15]);
  v52 = v51[1];
  *(v0 + 512) = v52;
  if (v52)
  {
    v53 = *(v0 + 288);
    *(v0 + 520) = *v51;
    v54 = *(v3 + *(v53 + 36));
    *(v0 + 528) = v54;

    return _swift_task_switch(sub_1005B5160, v54, 0);
  }

  else
  {

    type metadata accessor for AppInstallTaskResult();
    swift_storeEnumTagMultiPayload();

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_1005B4084()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1005B622C;
  }

  else
  {
    v2 = sub_1005B41E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1005B41E8()
{
  v39 = v0;
  if (*(v0 + 589))
  {
    v1 = &type metadata for WebDistributor;
    v2 = sub_100231E84();
  }

  else
  {
    v1 = &type metadata for NativeDistributor;
    v2 = sub_1003000A4();
  }

  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v37 = *(v0 + 588);
  v5 = *(v0 + 392);
  v6 = *(v0 + 112) + *(v0 + 584);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  sub_1001DFDBC((v0 + 56), v0 + 16);
  v36 = *(v6 + *(v5 + 172));
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_100006D8C((v0 + 16), v7);
  v9 = *(v8 + 40);
  sub_10032F7C8();
  v10 = v9(v7, v8);
  v12 = v11;
  sub_10000710C(v0 + 16);
  if (v37)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  sub_10056D4A4(v13, v10, v12, v36);

  if (*(v6 + 48) == 1)
  {
    v14 = *(v0 + 589);
    v15 = *(v0 + 112);
    v16 = *(v15 + *(*(v0 + 288) + 48));
    v17 = (v15 + *(v0 + 584) + *(*(v0 + 392) + 40));
    v18 = *v17;
    v19 = v17[1];
    v20 = swift_task_alloc();
    *(v0 + 504) = v20;
    *v20 = v0;
    v20[1] = sub_1005B47F8;
    v22 = *(v0 + 440);
    v21 = *(v0 + 448);

    sub_10066A1D8(v22, v21, v14 & 1, v16, v18, v19);
  }

  else
  {
    v23 = *(v6 + 40);
    v24 = *(v0 + 472);
    v25 = *(v0 + 589);
    v27 = *(v0 + 440);
    v26 = *(v0 + 448);
    v28 = *(v0 + 288);
    v29 = *(v0 + 112);
    v30 = *(v29 + *(v28 + 44));
    v31 = *(v29 + *(v28 + 48));
    sub_100616448(*(v0 + 240));
    os_unfair_lock_lock((v30 + 16));
    sub_10066F154((v30 + 24), v27, v26, v25 & 1, &v38);
    os_unfair_lock_unlock((v30 + 16));
    if (!v24)
    {
      v32 = *(v0 + 240);
      v33 = v38;
      *(v0 + 480) = v38;
      v34 = swift_task_alloc();
      *(v0 + 488) = v34;
      v34[2] = v32;
      v34[3] = v33;
      v34[4] = v31;
      v34[5] = 0;
      v34[6] = 0;
      v34[7] = v23;
      v35 = swift_task_alloc();
      *(v0 + 496) = v35;
      *v35 = v0;
      v35[1] = sub_1005B4568;

      withDiscardingTaskGroup<A>(returning:isolation:body:)();
    }
  }
}

uint64_t sub_1005B4568()
{

  return _swift_task_switch(sub_1005B46D0, 0, 0);
}

uint64_t sub_1005B46D0()
{
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  v1 = *(v0 + 589);
  v2 = *(v0 + 112);
  v3 = *(v2 + *(*(v0 + 288) + 48));
  v4 = (v2 + *(v0 + 584) + *(*(v0 + 392) + 40));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 504) = v7;
  *v7 = v0;
  v7[1] = sub_1005B47F8;
  v9 = *(v0 + 440);
  v8 = *(v0 + 448);

  return sub_10066A1D8(v9, v8, v1 & 1, v3, v5, v6);
}

uint64_t sub_1005B47F8()
{

  return _swift_task_switch(sub_1005B4920, 0, 0);
}

uint64_t sub_1005B4920()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 584);
  v3 = *(v0 + 112);
  v4 = v3 + v2;
  if (*(v3 + v2 + v1[17]) == 1)
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = [objc_allocWithZone(BAAppStoreClient) init];
    (*(v7 + 16))(v5, v4 + v1[21], v6);
    v9 = (*(v7 + 88))(v5, v6);
    if (v9 == enum case for AppInstallRequestType.automaticInstall(_:))
    {
LABEL_3:
      v10 = 0;
      goto LABEL_6;
    }

    if (v9 == enum case for AppInstallRequestType.install(_:))
    {
      v10 = 1;
    }

    else
    {
      if (v9 == enum case for AppInstallRequestType.automaticUpdate(_:))
      {
        goto LABEL_3;
      }

      v10 = 1;
      if (v9 != enum case for AppInstallRequestType.update(_:) && v9 != enum case for AppInstallRequestType.promotion(_:))
      {
        v10 = 0;
        if (v9 != enum case for AppInstallRequestType.restore(_:) && v9 != enum case for AppInstallRequestType.deviceVPP(_:) && v9 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v9 != enum case for AppInstallRequestType.userVPP(_:) && v9 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v9 != enum case for AppInstallRequestType.upp(_:) && v9 != enum case for AppInstallRequestType.restoreUpdate(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }

LABEL_6:
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 168);
    URL.init(fileURLWithPath:)();
    v14 = String._bridgeToObjectiveC()();
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [objc_opt_self() descriptorWithAppBundleIdentifier:v14 appBundleURL:v16 event:22 client:0];

    (*(v12 + 8))(v11, v13);
    [v18 setAutomaticInstall:v10 ^ 1];
    [v18 setUserInitiated:v10];
    *(v0 + 96) = 0;
    v19 = [v8 performEventWithDescriptor:v18 error:v0 + 96];
    v20 = *(v0 + 96);
    v21 = *(v0 + 112);
    if (v19)
    {
      v22 = (v0 + 352);
      v23 = *(v0 + 304);
      v24 = v20;
      static Logger.install.getter();
      sub_1005B681C(v21, v23, type metadata accessor for IPA_FailTask);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 304);
      if (v27)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = *v28;
        sub_1005B6884(v28, type metadata accessor for IPA_FailTask);
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Sent install canceled to Background Assets", v29, 0xCu);
        sub_1000032A8(v30, &qword_10077F920);

LABEL_25:
        (*(*(v0 + 336) + 8))(*v22, *(v0 + 328));
        v1 = *(v0 + 392);
        v2 = *(v0 + 584);
        v3 = *(v0 + 112);
        goto LABEL_26;
      }

      v43 = v28;
    }

    else
    {
      v22 = (v0 + 344);
      v32 = *(v0 + 296);
      v33 = v20;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.install.getter();
      sub_1005B681C(v21, v32, type metadata accessor for IPA_FailTask);
      swift_errorRetain();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 296);
      if (v36)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412546;
        v40 = *v37;
        sub_1005B6884(v37, type metadata accessor for IPA_FailTask);
        *(v38 + 4) = v40;
        *v39 = v40;
        *(v38 + 12) = 2114;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 14) = v41;
        v39[1] = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Failed to send install canceled to Background Assets: %{public}@", v38, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();

        goto LABEL_25;
      }

      v43 = v37;
    }

    sub_1005B6884(v43, type metadata accessor for IPA_FailTask);
    goto LABEL_25;
  }

LABEL_26:
  v44 = (v3 + v2 + v1[15]);
  v45 = v44[1];
  *(v0 + 512) = v45;
  if (v45)
  {
    v46 = *(v0 + 288);
    *(v0 + 520) = *v44;
    v47 = *(v3 + *(v46 + 36));
    *(v0 + 528) = v47;

    return _swift_task_switch(sub_1005B5160, v47, 0);
  }

  else
  {

    type metadata accessor for AppInstallTaskResult();
    swift_storeEnumTagMultiPayload();

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_1005B5160()
{
  v1 = v0;
  v2 = v0[66];
  v3 = v0[65];
  v4 = v1[64];
  v5 = *(v2 + 112);
  v6 = swift_task_alloc();
  v1[67] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v1[68] = v7;
  *v7 = v1;
  v7[1] = sub_1005B527C;
  v8 = v1[17];

  return sub_1003B0094(v8, sub_10030124C, v6, v5);
}

uint64_t sub_1005B527C()
{

  if (v0)
  {

    v1 = sub_1005B5734;
  }

  else
  {

    v1 = sub_1005B53F0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1005B53F0()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112) + *(v0 + 584);
  (*(*(v0 + 152) + 56))(v6, 0, 1, *(v0 + 144));
  sub_1005B67B4(v6, v5, type metadata accessor for DDMDeclaration);
  (*(v3 + 16))(v2, v7 + *(v1 + 84), v4);
  v8 = (*(v3 + 88))(v2, v4);
  if (v8 == enum case for AppInstallRequestType.automaticUpdate(_:) || v8 == enum case for AppInstallRequestType.update(_:) || v8 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v8 == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    v19 = *(v0 + 112);
    *(v0 + 552) = *(v19 + *(*(v0 + 288) + 40));
    *(v0 + 560) = *v19;
    type metadata accessor for ManagedAppDeclarationStatusStore();
    sub_1005B676C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
    v21 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1005B5920, v21, v20);
  }

  else
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = enum case for ManagedAppStatus.Reason.installFailed(_:);
    v12 = type metadata accessor for ManagedAppStatus.Reason();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v9, v11, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = *v10;
    v15 = swift_task_alloc();
    *(v0 + 576) = v15;
    *v15 = v0;
    v15[1] = sub_1005B5D68;
    v16 = *(v0 + 160);
    v17 = *(v0 + 120);

    return sub_10030B39C(v16, v17, 1, v14);
  }
}

uint64_t sub_1005B5734()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1000032A8(v3, &unk_1007809E0);
  type metadata accessor for AppInstallTaskResult();
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1005B5920()
{
  v1 = v0[16];
  v2 = enum case for ManagedAppStatus.UpdateState.failed(_:);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v4 = *(updated - 8);
  (*(v4 + 104))(v1, v2, updated);
  (*(v4 + 56))(v1, 0, 1, updated);
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_1005B5A9C;
  v6 = v0[70];
  v7 = v0[20];
  v8 = v0[16];

  return sub_10030E4E0(v8, v7, 0, v6);
}

uint64_t sub_1005B5A9C()
{
  v1 = *(*v0 + 128);

  sub_1000032A8(v1, &qword_10077F3A0);

  return _swift_task_switch(sub_1005B5BF0, 0, 0);
}

uint64_t sub_1005B5BF0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = enum case for ManagedAppStatus.Reason.installFailed(_:);
  v4 = type metadata accessor for ManagedAppStatus.Reason();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = *v2;
  v7 = swift_task_alloc();
  v0[72] = v7;
  *v7 = v0;
  v7[1] = sub_1005B5D68;
  v8 = v0[20];
  v9 = v0[15];

  return sub_10030B39C(v8, v9, 1, v6);
}

uint64_t sub_1005B5D68()
{
  v1 = *(*v0 + 120);

  sub_1000032A8(v1, &qword_10077F380);

  return _swift_task_switch(sub_1005B5EBC, 0, 0);
}

uint64_t sub_1005B5EBC()
{
  v1 = *(v0 + 160);

  sub_1005B6884(v1, type metadata accessor for DDMDeclaration);
  type metadata accessor for AppInstallTaskResult();
  swift_storeEnumTagMultiPayload();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005B6088()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B622C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005B63C4(void **a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for IPA_FailTask() + 20);
  v4 = (v3 + *(type metadata accessor for AppInstall() + 40));
  v6 = *v4;
  v5 = v4[1];
  v7 = *a1;
  v14 = sub_1001F0C48(&qword_1007813C0);
  v15 = sub_100361EA4();
  LOWORD(v12) = 1;
  *(&v12 + 1) = v6;
  v13 = v5;
  sub_1001F0C48(&qword_1007813D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v12, inited + 32);
  sub_1001F0C48(&qword_1007813D8);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10069E680;
  *(v9 + 32) = inited;

  v10 = sub_1005AEA84(v9);
  swift_setDeallocating();
  sub_1000032A8(v9 + 32, &qword_10077FA00);
  v11 = sub_100513920(0, 0, v10, sub_1005138AC, 0, v7);

  if (v11)
  {
    sub_100512350(v11);
  }
}

uint64_t sub_1005B654C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = &type metadata for WebDistributor;
    v7 = sub_100231E84();
  }

  else
  {
    v6 = &type metadata for NativeDistributor;
    v7 = sub_1003000A4();
  }

  v15 = v6;
  v16 = v7;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  sub_1001DFDBC(&v14, v17);
  v8 = v18;
  v9 = v19;
  sub_100006D8C(v17, v18);
  v10 = *(v9 + 40);
  sub_10032F7C8();
  v11 = v10(v8, v9);
  sub_10047DC1C(v11, v12);

  return sub_10000710C(v17);
}

uint64_t sub_1005B6690(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1001F0E54;

  return sub_10066E1A0(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1005B676C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B67B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B681C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B6884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005B6904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1005B6BB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_1005B6930()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005B6978()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1005B69BC(void *a1)
{
  v2 = *v1;
  sub_100006D8C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100231ED8(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_10000710C(v4);
}

uint64_t sub_1005B6A84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1005B72BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1005B6B04()
{
  result = qword_100788640;
  if (!qword_100788640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788640);
  }

  return result;
}

unint64_t sub_1005B6B5C()
{
  result = qword_100788648;
  if (!qword_100788648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788648);
  }

  return result;
}

uint64_t sub_1005B6BB0(void *a1)
{
  object = a1;
  v3 = sub_100006D8C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_10000710C(object);
    return v3;
  }

  sub_100006D8C(v30, v30[3]);
  result = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v6 = HIBYTE(v5) & 0xF;
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_71;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v31 = 0;
    v22 = result;
    v27 = v5;

    v3 = sub_1005D92D4(v22, v27, 10);
    v24 = v23;

    if (v24)
    {
      goto LABEL_71;
    }

LABEL_69:

    sub_10000710C(v30);
    sub_10000710C(object);
    return v3;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) == 0)
    {
      goto LABEL_72;
    }

    result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      v9 = *result;
      if (v9 == 43)
      {
        if (v7 < 1)
        {
          goto LABEL_75;
        }

        if (--v7)
        {
          v3 = 0;
          if (!result)
          {
            goto LABEL_66;
          }

          v15 = (result + 1);
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v12 = __CFADD__(10 * v3, v16);
            v3 = 10 * v3 + v16;
            if (v12)
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else if (v9 == 45)
      {
        if (v7 < 1)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        if (--v7)
        {
          v3 = 0;
          if (!result)
          {
            goto LABEL_66;
          }

          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v3, 0xAuLL))
            {
              break;
            }

            v12 = 10 * v3 >= v11;
            v3 = 10 * v3 - v11;
            if (!v12)
            {
              break;
            }

            ++v10;
            if (!--v7)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else if (v7)
      {
        v3 = 0;
        if (!result)
        {
LABEL_66:
          LOBYTE(v7) = 0;
          goto LABEL_68;
        }

        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          if (!is_mul_ok(v3, 0xAuLL))
          {
            break;
          }

          v12 = __CFADD__(10 * v3, v19);
          v3 = 10 * v3 + v19;
          if (v12)
          {
            break;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_67:
      v3 = 0;
      LOBYTE(v7) = 1;
LABEL_68:
      v31 = v7;
      if ((v7 & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_71:
      v28 = 0x203A4F444F54;
      v29 = 0xE600000000000000;
      v25._countAndFlagsBits = StaticString.description.getter();
      object = v25._object;
      String.append(_:)(v25);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_72:
      result = _StringObject.sharedUTF8.getter();
      v7 = v26;
    }
  }

  v28 = result;
  v29 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (!v6)
      {
        goto LABEL_67;
      }

      v3 = 0;
      v20 = &v28;
      do
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          goto LABEL_67;
        }

        if (!is_mul_ok(v3, 0xAuLL))
        {
          goto LABEL_67;
        }

        v12 = __CFADD__(10 * v3, v21);
        v3 = 10 * v3 + v21;
        if (v12)
        {
          goto LABEL_67;
        }

        v20 = (v20 + 1);
        --v6;
      }

      while (v6);
      goto LABEL_66;
    }

    if (v6)
    {
      v7 = v6 - 1;
      if (v6 != 1)
      {
        v3 = 0;
        v13 = &v28 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (!is_mul_ok(v3, 0xAuLL))
          {
            break;
          }

          v12 = 10 * v3 >= v14;
          v3 = 10 * v3 - v14;
          if (!v12)
          {
            break;
          }

          ++v13;
          if (!--v7)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_74;
  }

  if (v6)
  {
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v3 = 0;
      v17 = &v28 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        if (!is_mul_ok(v3, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v3, v18);
        v3 = 10 * v3 + v18;
        if (v12)
        {
          break;
        }

        ++v17;
        if (!--v7)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1005B6FBC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1005D92D4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}