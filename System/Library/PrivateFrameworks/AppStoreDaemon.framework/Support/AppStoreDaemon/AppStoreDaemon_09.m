id sub_100131F20()
{
  *(v0 + 64) = _swiftEmptyArrayStorage;
  *(v0 + 72) = _swiftEmptyArrayStorage;
  *(v0 + 80) = &_swiftEmptyDictionarySingleton;
  *(v0 + 128) = [objc_allocWithZone(ASDCoastGuard) init];
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    *(v0 + 160) = [v2 applicationIsInstalled:v3];

    objc_opt_self();
    *(v0 + 136) = sub_1002BB3F0();
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_10013209C;

    return (sub_1001B9468)(sub_10012DA4C, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10013209C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 152) = a1;

  v4 = *(v3 + 136);
  if (v1)
  {

    v5 = sub_100132534;
  }

  else
  {

    v5 = sub_1001321E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001321E4()
{
  v1 = v0[19];
  if (!v1)
  {
    v1 = sub_1000EFE68(_swiftEmptyArrayStorage);
  }

  v2 = v0[11];
  v3 = *&v2[OBJC_IVAR____TtC9appstored14UpdatesContext_reason];
  v5 = v3 == 2 || v3 == 4;
  v32 = v5;
  static Logger.updates.getter();
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = *(v9 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v10 + 4) = v12;
    *v11 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@] ╒ Prepping update request", v10, 0xCu);
    sub_100005518(v11, &unk_10059C250);
  }

  v14 = *(v0 + 160);
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[14];
  v20 = v0[11];
  v19 = v0[12];

  (*(v18 + 8))(v15, v17);
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v1;
  *(v22 + 32) = v14;
  *(v22 + 33) = v32;
  *(v22 + 40) = v0 + 9;
  *(v22 + 48) = v16;
  *(v22 + 56) = v0 + 10;
  *(v22 + 64) = v0 + 8;
  *(v22 + 72) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10013BC68;
  *(v23 + 24) = v22;
  v0[6] = sub_10013BCA8;
  v0[7] = v23;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100133A3C;
  v0[5] = &unk_10050EA38;
  v24 = _Block_copy(v0 + 2);
  v25 = v20;
  v26 = v16;

  sub_1003D31A8(v21, 0, v24);

  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[10];

    v31 = v0[1];

    return v31(v28, v29, v30);
  }

  return result;
}

uint64_t sub_100132534()
{
  v32 = sub_1000EFE68(_swiftEmptyArrayStorage);

  v1 = v0[11];
  v2 = *&v1[OBJC_IVAR____TtC9appstored14UpdatesContext_reason];
  v4 = v2 == 2 || v2 == 4;
  v31 = v4;
  static Logger.updates.getter();
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(v8 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] ╒ Prepping update request", v9, 0xCu);
    sub_100005518(v10, &unk_10059C250);
  }

  v13 = *(v0 + 160);
  v14 = v0[15];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];

  (*(v16 + 8))(v14, v17);
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v32;
  *(v21 + 32) = v13;
  *(v21 + 33) = v31;
  *(v21 + 40) = v0 + 9;
  *(v21 + 48) = v15;
  *(v21 + 56) = v0 + 10;
  *(v21 + 64) = v0 + 8;
  *(v21 + 72) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10013BC68;
  *(v22 + 24) = v21;
  v0[6] = sub_10013BCA8;
  v0[7] = v22;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100133A3C;
  v0[5] = &unk_10050EA38;
  v23 = _Block_copy(v0 + 2);
  v24 = v19;
  v25 = v15;

  sub_1003D31A8(v20, 0, v23);

  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v27 = v0[8];
    v28 = v0[9];
    v29 = v0[10];

    v30 = v0[1];

    return v30(v27, v28, v29);
  }

  return result;
}

void sub_100132880(id *a1, uint64_t a2, char *a3, uint64_t a4, char a5, int a6, void *a7, void *a8, uint64_t *a9, char **a10)
{
  v178 = a8;
  v175 = a7;
  LODWORD(v183) = a6;
  v181 = a10;
  v179 = a9;
  v14 = type metadata accessor for Date();
  v173 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v168 - v18;
  v20 = type metadata accessor for Logger();
  v184 = *(v20 - 8);
  v185 = v20;
  v21 = __chkstk_darwin(v20);
  v180 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v174 = &v168 - v24;
  v25 = __chkstk_darwin(v23);
  v176 = &v168 - v26;
  v27 = __chkstk_darwin(v25);
  v177 = &v168 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v168 - v30;
  __chkstk_darwin(v29);
  v33 = &v168 - v32;
  v186 = a3;
  if ((a3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID + 8] & 1) == 0)
  {
    v34 = *&a3[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
    v35 = sub_1003D0F1C(a1);
    if ((v34 & 0x8000000000000000) != 0 || v35 != v34)
    {
      return;
    }
  }

  v36 = *&v186[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
  if (!sub_1003D11A0(a1, v36))
  {
    return;
  }

  v171 = v36;
  v182 = a1;
  v37 = sub_1003D0F1C(a1);
  if (*(a4 + 16) && (v38 = sub_1000F2DCC(v37), (v39 & 1) != 0))
  {
    v40 = *(*(a4 + 56) + 8 * v38);
    v41 = swift_allocObject();
    v172 = v40;
    v42 = v40;
    v43 = sub_10017A78C();

    v44 = [(objc_class *)v43 longLongValue];
    v45 = v41;
    *(v41 + 16) = v44;
    if (a5)
    {
LABEL_15:
      if (v183)
      {
        static Logger.updates.getter();
        v53 = v182;
        v54 = v182;
        v55 = v186;
        v56 = v54;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        v59 = os_log_type_enabled(v57, v58);
        v60 = v172;
        if (v59)
        {
          v170 = v45;
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          *&v187[0] = v183;
          *v61 = 138413058;
          v63 = v171;
          *(v61 + 4) = v171;
          *v62 = v63;
          *(v61 + 12) = 2082;
          v64 = v63;
          v65 = sub_1003D0F60(v56);
          if (v65)
          {
            v66 = v65;
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;
          }

          else
          {
            v67 = 7104878;
            v69 = 0xE300000000000000;
          }

          v114 = sub_1001AD0D8(v67, v69, v187);

          *(v61 + 14) = v114;
          *(v61 + 22) = 2050;
          v115 = sub_1003D2F7C(v56);

          *(v61 + 24) = v115;
          *(v61 + 32) = 2050;
          v45 = v170;
          swift_beginAccess();
          *(v61 + 34) = *(v45 + 16);

          _os_log_impl(&_mh_execute_header, v57, v58, "[%@] ├ FRC { %{public}s evid: %{public}lld currentEvid: %{public}lld }", v61, 0x2Au);
          sub_100005518(v62, &unk_10059C250);

          sub_100005A00(v183);

          (*(v184 + 8))(v31, v185);
          v60 = v172;
          v53 = v182;
        }

        else
        {

          (*(v184 + 8))(v31, v185);
        }

        v70 = sub_1003D2F7C(v56);
        swift_beginAccess();
        *(v45 + 16) = v70;
        if (v70 < 1)
        {
LABEL_51:

          return;
        }
      }

      else
      {
        v70 = *(v45 + 16);
        v60 = v172;
        if (v70)
        {
          if (v172)
          {
            v71 = v172;
            v72 = sub_10023E590(v71, @"timestamp");
            if (v72 && (v73 = v72, static Date._unconditionallyBridgeFromObjectiveC(_:)(), v73, v74 = v173, (*(v173 + 32))(v19, v17, v14), Date.timeIntervalSinceNow.getter(), v76 = v75, (*(v74 + 8))(v19, v14), v76 >= -1209600.0))
            {
              v116 = v45;
              static Logger.updates.getter();
              v117 = v186;
              v118 = v71;
              v119 = Logger.logObject.getter();
              v120 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v119, v120))
              {
                v121 = swift_slowAlloc();
                v122 = swift_slowAlloc();
                *v121 = 138412546;
                v123 = v171;
                *(v121 + 4) = v171;
                *(v121 + 12) = 2114;
                *(v121 + 14) = v118;
                *v122 = v123;
                v122[1] = v60;
                v124 = v123;
                v125 = v118;
                _os_log_impl(&_mh_execute_header, v119, v120, "[%@] ├ PRE %{public}@", v121, 0x16u);
                sub_100085D40(&unk_10059C250);
                swift_arrayDestroy();
              }

              else
              {
                v125 = v119;
                v119 = v118;
              }

              v45 = v116;

              (*(v184 + 8))(v174, v185);
            }

            else
            {
              v77 = v71;
              v78 = v175;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v70 = sub_1003D2F7C(v182);
              v79 = v45;
              *(v45 + 16) = v70;
              static Logger.updates.getter();
              v80 = v186;
              v81 = v77;
              v82 = Logger.logObject.getter();
              v83 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v82, v83))
              {
                v84 = swift_slowAlloc();
                v85 = swift_slowAlloc();
                *v84 = 138412546;
                v86 = v171;
                *(v84 + 4) = v171;
                *(v84 + 12) = 2114;
                *(v84 + 14) = v81;
                *v85 = v86;
                v85[1] = v60;
                v87 = v86;
                v88 = v81;
                _os_log_impl(&_mh_execute_header, v82, v83, "[%@] ├ REL %{public}@", v84, 0x16u);
                sub_100085D40(&unk_10059C250);
                swift_arrayDestroy();
              }

              else
              {
                v88 = v82;
                v82 = v81;
              }

              (*(v184 + 8))(v176, v185);
              v45 = v79;
            }
          }

          v53 = v182;
          if (v70 < 1)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v170 = v45;
          v89 = v177;
          static Logger.updates.getter();
          v53 = v182;
          v90 = v182;
          v91 = v186;
          v92 = v90;
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            *&v187[0] = v97;
            *v95 = 138412802;
            v98 = v171;
            *(v95 + 4) = v171;
            *v96 = v98;
            *(v95 + 12) = 2082;
            v99 = v98;
            v100 = sub_1003D0F60(v92);
            if (v100)
            {
              v101 = v100;
              v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v104 = v103;
            }

            else
            {
              v102 = 7104878;
              v104 = 0xE300000000000000;
            }

            v128 = sub_1001AD0D8(v102, v104, v187);

            *(v95 + 14) = v128;
            *(v95 + 22) = 2050;
            v129 = sub_1003D2F7C(v92);

            *(v95 + 24) = v129;
            _os_log_impl(&_mh_execute_header, v93, v94, "[%@] ├ NEW { %{public}s evid: %{public}lld }", v95, 0x20u);
            sub_100005518(v96, &unk_10059C250);

            sub_100005A00(v97);

            (*(v184 + 8))(v177, v185);
            v60 = v172;
            v53 = v182;
          }

          else
          {

            (*(v184 + 8))(v89, v185);
          }

          v70 = sub_1003D2F7C(v92);
          v45 = v170;
          *(v170 + 16) = v70;
          if (v70 < 1)
          {
            goto LABEL_51;
          }
        }
      }

      if (sub_1003D2820(v53) < kMISFutureMinSupportedSignatureVersion)
      {
        v130 = sub_1003D0F1C(v53);
        if ([v178 isUnrepairableAppWithItemID:v130 externalVersionID:v70])
        {
          v131 = 0;
        }

        else
        {
          v131 = sub_1003D2F7C(v53);
          swift_beginAccess();
          *(v45 + 16) = 0;
        }

        v132 = v179;
        v133 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:sub_1003D0F1C(v53)];
        v134 = [objc_allocWithZone(NSNumber) initWithLongLong:v131];
        if (!v134)
        {
          v154 = sub_10016D568(v133);

          v140 = v181;
          if (v60)
          {
LABEL_68:
            v141 = v60;
            if (sub_10023E604(v141, @"update_state") == 5)
            {
              v142 = sub_10017A78C();
              v143 = [(objc_class *)v142 longLongValue];

              swift_beginAccess();
              *(v45 + 16) = v143;
              static Logger.updates.getter();
              v144 = v53;
              v145 = v186;
              v146 = v144;
              v147 = Logger.logObject.getter();
              v148 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v147, v148))
              {
                v149 = swift_slowAlloc();
                v150 = swift_slowAlloc();
                *v149 = 138412802;
                v151 = v171;
                *(v149 + 4) = v171;
                *v150 = v151;
                *(v149 + 12) = 2050;
                v152 = v151;
                v153 = sub_1003D0F1C(v146);

                *(v149 + 14) = v153;
                v140 = v181;

                *(v149 + 22) = 2050;
                *(v149 + 24) = v143;

                _os_log_impl(&_mh_execute_header, v147, v148, "[%@] Only checking for newer updates (%{public}llu -> %{public}lld) due to the current update being marked as blocked.", v149, 0x20u);
                sub_100005518(v150, &unk_10059C250);
                v53 = v182;
              }

              else
              {

                v141 = v146;
                v147 = v146;
              }

              (*(v184 + 8))(v180, v185);
              v60 = v172;
            }

            else
            {
            }
          }

LABEL_76:
          swift_beginAccess();
          v155 = *(v45 + 16);
          v156 = v53;
          sub_1000A40A4(v156, v155, 0, v187);

          v157 = *v140;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v140 = v157;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v157 = sub_1001AC290(0, *(v157 + 2) + 1, 1, v157);
            *v140 = v157;
          }

          v160 = *(v157 + 2);
          v159 = *(v157 + 3);
          if (v160 >= v159 >> 1)
          {
            *v140 = sub_1001AC290((v159 > 1), v160 + 1, 1, v157);
          }

          v161 = *v140;
          v162 = &(*v140)[136 * v160];
          v163 = v187[5];
          v164 = v187[7];
          *(v162 + 128) = v187[6];
          *(v162 + 144) = v164;
          v165 = v187[1];
          v166 = v187[3];
          v167 = v187[4];
          *(v162 + 64) = v187[2];
          *(v162 + 80) = v166;
          *(v161 + 2) = v160 + 1;
          *(v162 + 160) = v188;
          *(v162 + 96) = v167;
          *(v162 + 112) = v163;
          *(v162 + 32) = v187[0];
          *(v162 + 48) = v165;

          return;
        }

        v135 = v134;
        v136 = *v132;
        if ((*v132 & 0xC000000000000001) != 0)
        {
          if (v136 < 0)
          {
            v137 = *v132;
          }

          else
          {
            v137 = v136 & 0xFFFFFFFFFFFFFF8;
          }

          v138 = __CocoaDictionary.count.getter();
          if (__OFADD__(v138, 1))
          {
            __break(1u);
            return;
          }

          *v132 = sub_10009DBA8(v137, v138 + 1);
        }

        v139 = swift_isUniquelyReferenced_nonNull_native();
        *&v187[0] = *v132;
        sub_1001B42A8(v135, v133, v139);
        *v132 = *&v187[0];
      }

      v140 = v181;
      if (v60)
      {
        goto LABEL_68;
      }

      goto LABEL_76;
    }
  }

  else
  {
    v45 = swift_allocObject();
    v172 = 0;
    *(v45 + 16) = 0;
    if (a5)
    {
      goto LABEL_15;
    }
  }

  v46 = sub_1003D0F60(v182);
  if (!v46)
  {
    goto LABEL_15;
  }

  v47 = v46;
  v170 = v45;
  v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  v50 = sub_1003D2888(v182, v48);
  if (v50 && (v51 = v50, v52 = [v50 deviceBasedVPP], v51, (v52 & 1) != 0) || (sub_1003D22A4(v182) & 1) != 0)
  {

    v45 = v170;
    goto LABEL_15;
  }

  if (v172)
  {
    v183 = v47;
    static Logger.updates.getter();
    v105 = v186;

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v187[0] = v110;
      *v108 = 138412546;
      v111 = v171;
      *(v108 + 4) = v171;
      *v109 = v111;
      *(v108 + 12) = 2082;
      v112 = v111;
      v113 = sub_1001AD0D8(v169, v49, v187);

      *(v108 + 14) = v113;
      _os_log_impl(&_mh_execute_header, v106, v107, "[%@] ├ DRP { %{public}s }", v108, 0x16u);
      sub_100005518(v109, &unk_10059C250);

      sub_100005A00(v110);

      (*(v184 + 8))(v33, v185);
    }

    else
    {

      (*(v184 + 8))(v33, v185);
      v111 = v171;
    }

    objc_opt_self();
    v126 = sub_1002BB3F0();
    v127 = v183;
    sub_1002BBE74(v126, v183, v111);
  }

  else
  {
  }
}

void sub_100133A3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100133A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = type metadata accessor for Logger();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100133B5C, v4, 0);
}

uint64_t sub_100133B5C()
{
  v26 = v0;
  v1 = v0[2];
  static Logger.updates.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  if (v5)
  {
    v9 = v0[3];
    v23 = v0[4];
    v24 = v0[8];
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 138412546;
    v14 = *(v10 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2082;
    v15 = v14;
    *(v11 + 14) = sub_1001AD0D8(v9, v23, &v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Sending updates changed notification with reason: %{public}s", v11, 0x16u);
    sub_100005518(v12, &unk_10059C250);

    sub_100005A00(v13);

    (*(v7 + 8))(v24, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v16 = String.utf8CString.getter();
  notify_post((v16 + 32));

  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = objc_opt_self();
  v19 = sub_1002A20A8(v18, isa);

  objc_opt_self();
  v20 = sub_100003984();
  sub_1003B8178(v20, v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100133DF4(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  v4 = sub_100085D40(&qword_10059D3B8);
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();
  v5 = type metadata accessor for AccountClientIdentifier();
  v3[56] = v5;
  v3[57] = *(v5 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v6 = type metadata accessor for ClientInfo();
  v3[60] = v6;
  v3[61] = *(v6 - 8);
  v3[62] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[63] = v7;
  v3[64] = *(v7 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[73] = v8;
  v3[74] = *(v8 - 8);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();

  return _swift_task_switch(sub_1001340AC, v2, 0);
}

uint64_t sub_1001340AC()
{
  v71 = v0;
  if (qword_10059B538 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((*(v0 + 896) & 1) != 0 || (v1 = *(v0 + 416), swift_beginAccess(), !*(v1 + 152)))
  {
    v7 = *(*(v0 + 400) + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
    *(v0 + 624) = v7;
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    *(v0 + 632) = v8;
    if (v7 > 9)
    {
      *(v0 + 368) = v7;

      return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    }

    else
    {
      if (((1 << v7) & 0x2D6) != 0)
      {
        objc_opt_self();
        v9 = sub_1003D60B4();
        if (v9)
        {
          v10 = *(v0 + 616);
          v11 = *(v0 + 608);
          v12 = *(v0 + 592);
          v13 = *(v0 + 584);
          v14 = *(v0 + 400);
          v15 = v9;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          static Logger.updates.getter();
          (*(v12 + 16))(v11, v10, v13);
          v16 = v14;
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();

          v19 = os_log_type_enabled(v17, v18);
          v20 = *(v0 + 616);
          v21 = *(v0 + 608);
          v22 = *(v0 + 592);
          v23 = *(v0 + 584);
          v24 = *(v0 + 576);
          v26 = *(v0 + 504);
          v25 = *(v0 + 512);
          if (v19)
          {
            v68 = *(v0 + 616);
            v27 = *(v0 + 400);
            v66 = *(v0 + 504);
            v28 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v70 = v64;
            *v28 = 138412546;
            v65 = v24;
            v29 = *(v27 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
            *(v28 + 4) = v29;
            *v63 = v29;
            *(v28 + 12) = 2082;
            sub_10013BA2C(&qword_10059DC10, 255, &type metadata accessor for Date);
            v30 = v29;
            v31 = dispatch thunk of CustomStringConvertible.description.getter();
            v33 = v32;
            v34 = *(v22 + 8);
            v34(v21, v23);
            v35 = sub_1001AD0D8(v31, v33, &v70);

            *(v28 + 14) = v35;
            _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Starting reload for automatic updates, last auto-update completion date: %{public}s", v28, 0x16u);
            sub_100005518(v63, &unk_10059C250);

            sub_100005A00(v64);

            (*(v25 + 8))(v65, v66);
            v34(v68, v23);
          }

          else
          {

            v36 = *(v22 + 8);
            v36(v21, v23);
            (*(v25 + 8))(v24, v26);
            v36(v20, v23);
          }
        }
      }

      sub_1000044A4(*(v0 + 408), v0 + 224, &unk_10059CB80);
      if (*(v0 + 248))
      {
        sub_1000056B8((v0 + 224), v0 + 184);
        sub_1000056B8((v0 + 184), v0 + 144);
        v37 = *(*(v0 + 400) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
        *(v0 + 680) = v37;
        v38 = swift_task_alloc();
        *(v0 + 688) = v38;
        *v38 = v0;
        v38[1] = sub_100135580;

        return sub_100138950(v37);
      }

      else
      {
        v39 = *(v0 + 400);
        sub_100005518(v0 + 224, &unk_10059CB80);
        static Logger.updates.getter();
        v40 = v39;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = *(v0 + 400);
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = *(v43 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
          *(v44 + 4) = v46;
          *v45 = v46;
          v47 = v46;
          _os_log_impl(&_mh_execute_header, v41, v42, "[%@] Loading bag", v44, 0xCu);
          sub_100005518(v45, &unk_10059C250);
        }

        v48 = *(v0 + 568);
        v49 = v41;
        v51 = *(v0 + 504);
        v50 = *(v0 + 512);
        v52 = *(v0 + 488);
        v53 = *(v0 + 496);
        v54 = *(v0 + 472);
        v55 = *(v0 + 456);
        v56 = *(v0 + 464);
        v57 = *(v0 + 448);
        v67 = *(v0 + 480);
        v69 = *(v0 + 416);

        v58 = *(v50 + 8);
        *(v0 + 648) = v58;
        *(v0 + 656) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v58(v48, v51);
        static AccountClientIdentifier.production.getter();
        (*(v55 + 16))(v56, v54, v57);
        ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
        (*(v55 + 8))(v54, v57);
        *(v0 + 664) = sub_1000D6694(v53);
        (*(v52 + 8))(v53, v67);
        v60 = sub_10013BA2C(&qword_10059DC08, v59, type metadata accessor for UpdatesManager_Swift);
        v61 = swift_task_alloc();
        *(v0 + 672) = v61;
        *v61 = v0;
        v61[1] = sub_100135108;

        return sub_1000C8E90(v0 + 304, v69, v60);
      }
    }
  }

  else
  {
    v3 = *(v0 + 416);
    v4 = sub_10013BA2C(&qword_10059DC08, v2, type metadata accessor for UpdatesManager_Swift);
    v5 = swift_task_alloc();
    *(v0 + 640) = v5;
    *v5 = v0;
    v5[1] = sub_100134904;
    v6 = *(v0 + 416);

    return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, v4, 0xD000000000000012, 0x80000001004505F0, sub_10013BA74, v6, &type metadata for () + 8);
  }
}

uint64_t sub_100134904()
{
  v1 = *(*v0 + 416);

  return _swift_task_switch(sub_100134A14, v1, 0);
}

uint64_t sub_100134A14()
{
  v65 = v0;
  v1 = *(*(v0 + 400) + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  *(v0 + 624) = v1;
  type metadata accessor for LoadSoftwareUpdatesReason(0);
  *(v0 + 632) = v2;
  if (v1 > 9)
  {
    *(v0 + 368) = v1;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  else
  {
    if (((1 << v1) & 0x2D6) != 0)
    {
      objc_opt_self();
      v3 = sub_1003D60B4();
      if (v3)
      {
        v4 = *(v0 + 616);
        v5 = *(v0 + 608);
        v6 = *(v0 + 592);
        v7 = *(v0 + 584);
        v8 = *(v0 + 400);
        v9 = v3;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        static Logger.updates.getter();
        (*(v6 + 16))(v5, v4, v7);
        v10 = v8;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        v13 = os_log_type_enabled(v11, v12);
        v14 = *(v0 + 616);
        v15 = *(v0 + 608);
        v16 = *(v0 + 592);
        v17 = *(v0 + 584);
        v18 = *(v0 + 576);
        v20 = *(v0 + 504);
        v19 = *(v0 + 512);
        if (v13)
        {
          v62 = *(v0 + 616);
          v21 = *(v0 + 400);
          v60 = *(v0 + 504);
          v22 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v64 = v58;
          *v22 = 138412546;
          v59 = v18;
          v23 = *(v21 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
          *(v22 + 4) = v23;
          *v57 = v23;
          *(v22 + 12) = 2082;
          sub_10013BA2C(&qword_10059DC10, 255, &type metadata accessor for Date);
          v24 = v23;
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v26;
          v28 = *(v16 + 8);
          v28(v15, v17);
          v29 = sub_1001AD0D8(v25, v27, &v64);

          *(v22 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Starting reload for automatic updates, last auto-update completion date: %{public}s", v22, 0x16u);
          sub_100005518(v57, &unk_10059C250);

          sub_100005A00(v58);

          (*(v19 + 8))(v59, v60);
          v28(v62, v17);
        }

        else
        {

          v30 = *(v16 + 8);
          v30(v15, v17);
          (*(v19 + 8))(v18, v20);
          v30(v14, v17);
        }
      }
    }

    sub_1000044A4(*(v0 + 408), v0 + 224, &unk_10059CB80);
    if (*(v0 + 248))
    {
      sub_1000056B8((v0 + 224), v0 + 184);
      sub_1000056B8((v0 + 184), v0 + 144);
      v31 = *(*(v0 + 400) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
      *(v0 + 680) = v31;
      v32 = swift_task_alloc();
      *(v0 + 688) = v32;
      *v32 = v0;
      v32[1] = sub_100135580;

      return sub_100138950(v31);
    }

    else
    {
      v34 = *(v0 + 400);
      sub_100005518(v0 + 224, &unk_10059CB80);
      static Logger.updates.getter();
      v35 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v0 + 400);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = *(v38 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
        *(v39 + 4) = v41;
        *v40 = v41;
        v42 = v41;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%@] Loading bag", v39, 0xCu);
        sub_100005518(v40, &unk_10059C250);
      }

      v43 = *(v0 + 568);
      v44 = v36;
      v46 = *(v0 + 504);
      v45 = *(v0 + 512);
      v47 = *(v0 + 488);
      v48 = *(v0 + 496);
      v49 = *(v0 + 472);
      v50 = *(v0 + 456);
      v51 = *(v0 + 464);
      v52 = *(v0 + 448);
      v61 = *(v0 + 480);
      v63 = *(v0 + 416);

      v53 = *(v45 + 8);
      *(v0 + 648) = v53;
      *(v0 + 656) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v53(v43, v46);
      static AccountClientIdentifier.production.getter();
      (*(v50 + 16))(v51, v49, v52);
      ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
      (*(v50 + 8))(v49, v52);
      *(v0 + 664) = sub_1000D6694(v48);
      (*(v47 + 8))(v48, v61);
      v55 = sub_10013BA2C(&qword_10059DC08, v54, type metadata accessor for UpdatesManager_Swift);
      v56 = swift_task_alloc();
      *(v0 + 672) = v56;
      *v56 = v0;
      v56[1] = sub_100135108;

      return sub_1000C8E90(v0 + 304, v63, v55);
    }
  }
}

uint64_t sub_100135108()
{
  v2 = *v1;

  v3 = *(v2 + 664);
  v4 = *(v2 + 416);
  if (v0)
  {

    v5 = sub_100135320;
  }

  else
  {

    v5 = sub_10013525C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10013525C()
{
  sub_1000056B8((v0 + 304), v0 + 264);
  sub_1000056B8((v0 + 264), v0 + 144);
  v1 = *(*(v0 + 400) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
  *(v0 + 680) = v1;
  v2 = swift_task_alloc();
  *(v0 + 688) = v2;
  *v2 = v0;
  v2[1] = sub_100135580;

  return sub_100138950(v1);
}

uint64_t sub_100135320()
{
  v1 = *(v0 + 400);
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  sub_100005518(v0 + 304, &unk_10059CB80);
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 400);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to load bag", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v10 = *(v0 + 648);
  v11 = *(v0 + 560);
  v12 = *(v0 + 504);

  v10(v11, v12);

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100135580(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v9 = *v2;
  v4[87] = a1;
  v4[88] = a2;

  v5 = swift_task_alloc();
  v4[89] = v5;
  *v5 = v9;
  v5[1] = sub_1001356E8;
  v6 = v3[52];
  v7 = v3[50];

  return sub_10013B1A8(v7, v6);
}

uint64_t sub_1001356E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  *(v3 + 720) = a1;
  *(v3 + 728) = a2;

  return _swift_task_switch(sub_100135804, v4, 0);
}

uint64_t sub_100135804()
{
  v13 = v0[90];
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[50];
  v4 = type metadata accessor for MediaAPIUpdateAvailabilityCheck();
  v5 = v0[21];
  v6 = v0[22];
  v7 = sub_100005B60(v0 + 18, v5);
  v8 = *(v5 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v5);
  v0[92] = sub_10009EE38(v2, v1, v3, v13, v9, v4, v5, v6);

  v0[93] = swift_allocObject();
  v10 = v3;

  v11 = swift_task_alloc();
  v0[94] = v11;
  *v11 = v0;
  v11[1] = sub_1001359BC;

  return sub_10008B7D8();
}

uint64_t sub_1001359BC(uint64_t a1)
{
  v2 = *(*v1 + 416);
  *(*v1 + 760) = a1;

  return _swift_task_switch(sub_100135AD4, v2, 0);
}

uint64_t sub_100135AD4()
{
  v94 = v0;
  v1 = v0;
  v2 = *(v0 + 95);
  *(*(v0 + 93) + 16) = v2;
  if (v2 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v3; i = v1)
  {
    v87 = v2 & 0xFFFFFFFFFFFFFF8;
    v85 = *(v1 + 91);
    v86 = *(v1 + 95) + 32;
    v90 = (v2 & 0xC000000000000001);

    v4 = 0;
    v5 = &_swiftEmptyDictionarySingleton;
    v88 = v3;
    while (1)
    {
      if (v90)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v87 + 16))
        {
          goto LABEL_41;
        }

        v8 = *(v86 + 8 * v4);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (*(v8 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip) != 1 || (v11 = String._bridgeToObjectiveC()(), v12 = sub_10023E604(v9, v11), v11, (v12 & 0x20) != 0))
      {
        v2 = v9;
        sub_10017A580();
        v13.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        isa = v13.super.super.isa;
        if ((v85 & 0xC000000000000001) != 0)
        {
          v15 = __CocoaDictionary.lookup(_:)();
          if (!v15)
          {
            goto LABEL_27;
          }

          *(v1 + 49) = v15;
          sub_10009FAD4(0, &qword_10059CBB0);
          swift_dynamicCast();
          v2 = *(v1 + 48);

          if (!v2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (!*(v85 + 16) || (v2 = *(v1 + 91), v16 = sub_1000EE9F0(v13.super.super.isa), (v17 & 1) == 0))
          {
LABEL_27:

LABEL_28:
            goto LABEL_6;
          }

          v2 = *(*(v85 + 56) + 8 * v16);

          if (!v2)
          {
            goto LABEL_28;
          }
        }
      }

      v18 = sub_10017A6C0();
      v20 = v19;
      v1 = UInt._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v5;
      v2 = v5;
      v23 = sub_1000EE808(v18, v20);
      v24 = v5;
      v25 = v5[2];
      v26 = (v22 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_40;
      }

      v28 = v22;
      if (v24[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v22 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v2 = &v93;
          sub_1001B113C();
          if ((v28 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_1001AE148(v27, isUniquelyReferenced_nonNull_native);
        v2 = v93;
        v29 = sub_1000EE808(v18, v20);
        if ((v28 & 1) != (v30 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v23 = v29;
        if ((v28 & 1) == 0)
        {
LABEL_31:
          v5 = v93;
          v93[(v23 >> 6) + 8] |= 1 << v23;
          v31 = (v5[6] + 16 * v23);
          *v31 = v18;
          v31[1] = v20;
          *(v5[7] + 8 * v23) = v1;

          v32 = v5[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_42;
          }

          v5[2] = v34;
          goto LABEL_5;
        }
      }

      v5 = v93;
      v6 = v93[7];
      v7 = *(v6 + 8 * v23);
      *(v6 + 8 * v23) = v1;

LABEL_5:
      v1 = i;
      v3 = v88;
LABEL_6:
      ++v4;
      if (v10 == v3)
      {

        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = &_swiftEmptyDictionarySingleton;
LABEL_45:
  *(v1 + 96) = v5;

  if (v5[2])
  {
    v36 = *(v1 + 50);
    static Logger.updates.getter();
    v37 = v36;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_93;
    }

    v40 = *(i + 85);
    v91 = *(i + 69);
    v41 = *(i + 64);
    v42 = *(i + 63);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v93 = v45;
    *v43 = 138412546;
    *(v43 + 4) = v40;
    *v44 = v40;
    *(v43 + 12) = 2082;
    sub_10009FAD4(0, &qword_10059CBB0);
    v46 = v40;
    v47 = Dictionary.Keys.description.getter();
    v49 = sub_1001AD0D8(v47, v48, &v93);

    *(v43 + 14) = v49;
    v1 = i;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Setting updateAvailability as Available for apps: %{public}s", v43, 0x16u);
    sub_100005518(v44, &unk_10059C250);

    sub_100005A00(v45);

    v50 = *(v41 + 8);
    v50(v91, v42);
    goto LABEL_94;
  }

  v38 = *(*(v1 + 93) + 16);
  v51 = v38 & 0xFFFFFFFFFFFFFF8;
  v52 = (v38 >> 62);
  if (v38 >> 62)
  {
LABEL_113:
    v53 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  j = 0;
  while (1)
  {
    if (v53 == j)
    {
      if (v52)
      {
        goto LABEL_116;
      }

      for (j = *(v51 + 16); ; j = _CocoaArrayWrapper.endIndex.getter())
      {
LABEL_99:
        if (v38 >> 62)
        {
          v77 = _CocoaArrayWrapper.endIndex.getter();
          if (v77 >= j)
          {
LABEL_101:
            v78 = *(v1 + 93);
            v79 = *(v1 + 91);
            v80 = *(v1 + 50);
            sub_10013B8D8(j, v77, sub_1001621B0, sub_1001B4A4C);

            *(v1 + 101) = objc_opt_self();
            *(v1 + 102) = sub_1002BB3F0();
            v81 = swift_allocObject();
            v81[2] = v78;
            v81[3] = v80;
            v81[4] = v79;
            v82 = swift_allocObject();
            *(v1 + 103) = v82;
            *(v82 + 16) = sub_10013B9D4;
            *(v82 + 24) = v81;
            v83 = v80;

            v84 = swift_task_alloc();
            *(v1 + 104) = v84;
            *v84 = v1;
            v84[1] = sub_100136DE0;

            return sub_1000DB98C(sub_10013B9F8, v82);
          }
        }

        else
        {
          v77 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v77 >= j)
          {
            goto LABEL_101;
          }
        }

        __break(1u);
LABEL_116:
        ;
      }
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (j >= *(v51 + 16))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    if (*(*(v38 + 8 * j + 32) + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip))
    {
      goto LABEL_59;
    }

LABEL_55:
    v33 = __OFADD__(j++, 1);
    if (v33)
    {
      goto LABEL_105;
    }
  }

  v55 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip);
  swift_unknownObjectRelease();
  if ((v55 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_59:
  v56 = j + 1;
  if (__OFADD__(j, 1))
  {
    __break(1u);
  }

  else if (!v52)
  {
    if (v56 == *(v51 + 16))
    {
      goto LABEL_99;
    }

    goto LABEL_62;
  }

  if (v56 == _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_99;
  }

LABEL_62:
  v57 = j + 5;
  while (2)
  {
    v58 = v57 - 4;
    if ((v38 & 0xC000000000000001) != 0)
    {
      v51 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip);
      swift_unknownObjectRelease();
      if ((v51 & 1) == 0)
      {
        if (v58 != j)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_71;
        }

        goto LABEL_81;
      }

LABEL_82:
      v51 = v57 - 3;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_108;
      }

      if (v38 >> 62)
      {
        v68 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v68 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v57;
      if (v51 == v68)
      {
        goto LABEL_99;
      }

      continue;
    }

    break;
  }

  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  v59 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v58 >= v59)
  {
    goto LABEL_107;
  }

  v51 = *(v38 + 8 * v57);
  if (*(v51 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip))
  {
    goto LABEL_82;
  }

  if (v58 == j)
  {
    goto LABEL_81;
  }

  if (j < 0)
  {
    goto LABEL_110;
  }

  if (j >= v59)
  {
    goto LABEL_111;
  }

  v52 = *(v38 + 32 + 8 * j);
  v60 = v51;
LABEL_71:
  v51 = v60;
  v61 = *(v1 + 93);
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v61 + 16) = v38;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v64 = *(v1 + 93);
    v38 = sub_1001B6EDC(v38);
    *(v64 + 16) = v38;
    v63 = (v38 >> 62) & 1;
  }

  else
  {
    LOBYTE(v63) = 0;
  }

  v65 = v38 & 0xFFFFFFFFFFFFFF8;
  v66 = *((v38 & 0xFFFFFFFFFFFFFF8) + 8 * j + 0x20);
  *((v38 & 0xFFFFFFFFFFFFFF8) + 8 * j + 0x20) = v51;

  if ((v63 & 1) == 0 && (v38 & 0x8000000000000000) == 0)
  {
    if ((v58 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

LABEL_79:
    if (v58 >= *(v65 + 16))
    {
      goto LABEL_112;
    }

    v67 = *(v65 + 8 * v57);
    *(v65 + 8 * v57) = v52;

LABEL_81:
    v33 = __OFADD__(j++, 1);
    if (v33)
    {
      goto LABEL_109;
    }

    goto LABEL_82;
  }

  v51 = *(v1 + 93);
  v38 = sub_1001B6EDC(v38);
  *(v51 + 16) = v38;
  v65 = v38 & 0xFFFFFFFFFFFFFF8;
  if ((v58 & 0x8000000000000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  v69 = *(v1 + 69);
  v71 = *(v1 + 63);
  v70 = *(v1 + 64);

  v50 = *(v70 + 8);
  v50(v69, v71);
LABEL_94:
  *(v1 + 97) = v50;
  v73 = *(v1 + 54);
  v72 = *(v1 + 55);
  v74 = *(v1 + 53);
  v92 = objc_opt_self();
  *(v1 + 98) = sub_10009FAD4(0, &qword_10059CBB0);
  v75 = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v1 + 99) = v75;
  *(v1 + 2) = v1;
  *(v1 + 7) = v1 + 897;
  *(v1 + 3) = sub_100136680;
  swift_continuation_init();
  *(v1 + 17) = v74;
  v76 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v73 + 32))(v76, v72, v74);
  *(v1 + 10) = _NSConcreteStackBlock;
  *(v1 + 11) = 1107296256;
  *(v1 + 12) = sub_1001A0AD0;
  *(v1 + 13) = &unk_10050E880;
  [v92 setUpdateAvailabilityForApplicationsWithBundleIdentifiers:v75 completionHandler:v1 + 80];
  (*(v73 + 8))(v76, v74);

  return _swift_continuation_await(v1 + 16);
}

uint64_t sub_100136680()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 800) = v2;
  v3 = *(v1 + 416);
  if (v2)
  {
    v4 = sub_100137E70;
  }

  else
  {
    v4 = sub_1001367A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001367A0()
{
  v51 = v0;
  v1 = *(v0 + 400);

  static Logger.updates.getter();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 680);
    v48 = *(v0 + 544);
    v49 = *(v0 + 776);
    v47 = *(v0 + 504);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2082;

    v9 = v5;
    v10 = Dictionary.Keys.description.getter();
    v12 = v11;

    v13 = sub_1001AD0D8(v10, v12, &v50);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Set updateAvailability to Available for apps: %{public}s", v6, 0x16u);
    sub_100005518(v7, &unk_10059C250);

    sub_100005A00(v8);

    v49(v48, v47);
  }

  else
  {
    v14 = *(v0 + 776);
    v15 = *(v0 + 544);
    v16 = *(v0 + 504);

    v14(v15, v16);
  }

  v17 = *(*(v0 + 744) + 16);
  v18 = v17 & 0xFFFFFFFFFFFFFF8;
  v19 = (v17 >> 62);
  if (v17 >> 62)
  {
LABEL_65:
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 0;
  while (1)
  {
    if (v20 == v21)
    {
      goto LABEL_49;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v21 >= *(v18 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
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
      goto LABEL_65;
    }

    if (*(*(v17 + 8 * v21 + 32) + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip))
    {
      goto LABEL_15;
    }

LABEL_11:
    v22 = __OFADD__(v21++, 1);
    if (v22)
    {
      goto LABEL_57;
    }
  }

  v23 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip);
  swift_unknownObjectRelease();
  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else if (!v19)
  {
    if (v24 == *(v18 + 16))
    {
      goto LABEL_51;
    }

    goto LABEL_18;
  }

  if (v24 == _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_51;
  }

LABEL_18:
  v25 = v21 + 5;
  while (2)
  {
    v26 = v25 - 4;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip);
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        if (v26 != v21)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_27;
        }

        goto LABEL_37;
      }

LABEL_38:
      v22 = __OFADD__(v26, 1);
      v36 = v25 - 3;
      if (v22)
      {
        goto LABEL_60;
      }

      if (v17 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v25;
      if (v36 == v37)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26 >= v27)
  {
    goto LABEL_59;
  }

  v19 = *(v17 + 8 * v25);
  if (*(v19 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip))
  {
    goto LABEL_38;
  }

  if (v26 == v21)
  {
    goto LABEL_37;
  }

  if (v21 < 0)
  {
    goto LABEL_62;
  }

  if (v21 >= v27)
  {
    goto LABEL_63;
  }

  v18 = *(v17 + 32 + 8 * v21);
  v28 = v19;
LABEL_27:
  v19 = v28;
  v29 = *(v0 + 744);
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v29 + 16) = v17;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    v32 = *(v0 + 744);
    v17 = sub_1001B6EDC(v17);
    *(v32 + 16) = v17;
    v31 = (v17 >> 62) & 1;
  }

  else
  {
    LOBYTE(v31) = 0;
  }

  v33 = v17 & 0xFFFFFFFFFFFFFF8;
  v34 = *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20);
  *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20) = v19;

  if ((v31 & 1) == 0 && (v17 & 0x8000000000000000) == 0)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_35:
    if (v26 >= *(v33 + 16))
    {
      goto LABEL_64;
    }

    v35 = *(v33 + 8 * v25);
    *(v33 + 8 * v25) = v18;

LABEL_37:
    v22 = __OFADD__(v21++, 1);
    if (v22)
    {
      goto LABEL_61;
    }

    goto LABEL_38;
  }

  v19 = *(v0 + 744);
  v17 = sub_1001B6EDC(v17);
  v19[2] = v17;
  v33 = v17 & 0xFFFFFFFFFFFFFF8;
  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  if (v19)
  {
    goto LABEL_68;
  }

  v21 = *(v18 + 16);
LABEL_51:
  while (2)
  {
    if (!(v17 >> 62))
    {
      v38 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38 >= v21)
      {
        break;
      }

      goto LABEL_67;
    }

    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (v38 < v21)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      v21 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

  v39 = *(v0 + 744);
  v40 = *(v0 + 728);
  v41 = *(v0 + 400);
  sub_10013B8D8(v21, v38, sub_1001621B0, sub_1001B4A4C);

  *(v0 + 808) = objc_opt_self();
  *(v0 + 816) = sub_1002BB3F0();
  v42 = swift_allocObject();
  v42[2] = v39;
  v42[3] = v41;
  v42[4] = v40;
  v43 = swift_allocObject();
  *(v0 + 824) = v43;
  *(v43 + 16) = sub_10013B9D4;
  *(v43 + 24) = v42;
  v44 = v41;

  v45 = swift_task_alloc();
  *(v0 + 832) = v45;
  *v45 = v0;
  v45[1] = sub_100136DE0;

  return sub_1000DB98C(sub_10013B9F8, v43);
}

uint64_t sub_100136DE0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 840) = a1;

  v4 = *(v3 + 816);
  v5 = *(v3 + 416);
  if (v1)
  {

    v6 = sub_100138508;
  }

  else
  {

    v6 = sub_100136F68;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100136F68()
{
  v29 = v0;
  v1 = v0[105];
  if (v1)
  {
    v2 = v0[50];
    static Logger.updates.getter();
    v3 = v1;
    v4 = v2;
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[85];
      v25 = v0[64];
      v26 = v0[63];
      v27 = v0[67];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v9 = 138413058;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2050;
      v12 = *&v5[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_availableUpdateCount];
      v13 = v8;

      *(v9 + 14) = v12;
      *(v9 + 22) = 1026;
      LODWORD(v8) = v5[OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_result];

      *(v9 + 24) = v8;
      *(v9 + 28) = 2082;
      v14 = sub_1001704BC();
      v16 = sub_1001AD0D8(v14, v15, &v28);

      *(v9 + 30) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Merged %{public}ld app updates into database with result: %{BOOL,public}d reason: %{public}s", v9, 0x26u);
      sub_100005518(v10, &unk_10059C250);

      sub_100005A00(v11);

      v17 = *(v25 + 8);
      v17(v27, v26);
    }

    else
    {
      v20 = v0[67];
      v21 = v0[63];
      v22 = v0[64];

      v17 = *(v22 + 8);
      v17(v20, v21);
    }

    v0[106] = v17;
    v23 = swift_task_alloc();
    v0[107] = v23;
    *v23 = v0;
    v23[1] = sub_10013733C;
    v24 = v0[50];

    return sub_1001307AC(v5, v24, (v0 + 18));
  }

  else
  {

    sub_100005A00((v0 + 18));

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10013733C()
{
  v1 = *(*v0 + 416);

  return _swift_task_switch(sub_10013744C, v1, 0);
}

uint64_t sub_10013744C()
{
  v1 = v0[78];
  if (v1 > 9)
  {
    v0[47] = v1;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  else if (((1 << v1) & 0x2D6) != 0)
  {
    v2 = v0[75];
    v3 = v0[74];
    v4 = v0[73];
    v5 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v2, v4);
    sub_1003D6364(v5, isa);

    v0[108] = sub_1002BB3F0();
    v7 = swift_task_alloc();
    v0[109] = v7;
    *v7 = v0;
    v7[1] = sub_1001377B4;

    return sub_1000DB090(sub_10011FB18, 0);
  }

  else
  {
    if (sub_1000E3560())
    {
      v9 = v0[78];
      v10 = v0[75];
      v11 = v0[74];
      v12 = v0[73];
      v13 = [objc_allocWithZone(ASDUpdatePollMetrics) init];
      static Date.now.getter();
      v14 = Date._bridgeToObjectiveC()().super.isa;
      (*(v11 + 8))(v10, v12);
      [v13 setPollTime:v14];

      if (v9 == 1)
      {
        v15 = String._bridgeToObjectiveC()();
      }

      else
      {
        sub_1001704BC();
        v15 = String._bridgeToObjectiveC()();
      }

      v16 = v0[105];
      [v13 setReason:v15];

      sub_1000E0F24(*(v16 + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_bundleIDs));
      v17 = Array._bridgeToObjectiveC()().super.isa;

      [v13 setBundleIDs:v17];

      v18 = [objc_allocWithZone(ASDUpdateMetricsStore) init];
      [v18 addPoll:v13];
    }

    v19 = swift_task_alloc();
    v0[110] = v19;
    *v19 = v0;
    v19[1] = sub_100137BFC;
    v20 = v0[50];

    return sub_10012DE9C(v20);
  }
}

uint64_t sub_1001377B4()
{
  v2 = *v1;

  v3 = *(v2 + 864);
  v4 = *(v2 + 416);
  if (v0)
  {

    v5 = sub_10013F1B0;
  }

  else
  {

    v5 = sub_100137908;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100137908()
{
  v1 = v0[50];
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[85];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Cleared expired history", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v9 = v0[106];
  v10 = v0[66];
  v11 = v0[63];

  v9(v10, v11);
  if (sub_1000E3560())
  {
    v12 = v0[78];
    v13 = v0[75];
    v14 = v0[74];
    v15 = v0[73];
    v16 = [objc_allocWithZone(ASDUpdatePollMetrics) init];
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v13, v15);
    [v16 setPollTime:isa];

    if (v12 == 1)
    {
      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      sub_1001704BC();
      v18 = String._bridgeToObjectiveC()();
    }

    v19 = v0[105];
    [v16 setReason:v18];

    sub_1000E0F24(*(v19 + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_bundleIDs));
    v20 = Array._bridgeToObjectiveC()().super.isa;

    [v16 setBundleIDs:v20];

    v21 = [objc_allocWithZone(ASDUpdateMetricsStore) init];
    [v21 addPoll:v16];
  }

  v22 = swift_task_alloc();
  v0[110] = v22;
  *v22 = v0;
  v22[1] = sub_100137BFC;
  v23 = v0[50];

  return sub_10012DE9C(v23);
}

uint64_t sub_100137BFC(uint64_t a1)
{
  v2 = *(*v1 + 416);
  *(*v1 + 888) = a1;

  return _swift_task_switch(sub_100137D14, v2, 0);
}

uint64_t sub_100137D14()
{
  v1 = v0[105];

  sub_100005A00((v0 + 18));

  v4 = v0[111];

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_100137E70()
{
  v53 = v0;
  v1 = v0[99];
  v2 = v0[50];
  swift_willThrow();

  static Logger.updates.getter();
  v3 = v2;

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[85];
    v50 = v0[65];
    v51 = v0[97];
    v49 = v0[63];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2114;
    v10 = v6;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    *(v7 + 22) = 2082;

    v12 = Dictionary.Keys.description.getter();
    v14 = v13;

    v15 = sub_1001AD0D8(v12, v14, &v52);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to set updateAvailability to Available %{public}@ for apps: %{public}s", v7, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v9);

    v51(v50, v49);
  }

  else
  {
    v16 = v0[97];
    v17 = v0[65];
    v18 = v0[63];

    v16(v17, v18);
  }

  v19 = *(v0[93] + 16);
  v20 = v19 & 0xFFFFFFFFFFFFFF8;
  v21 = (v19 >> 62);
  if (v19 >> 62)
  {
LABEL_65:
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  while (1)
  {
    if (v22 == v23)
    {
      goto LABEL_49;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v23 >= *(v20 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
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
      goto LABEL_65;
    }

    if (*(*(v19 + 8 * v23 + 32) + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip))
    {
      goto LABEL_15;
    }

LABEL_11:
    v24 = __OFADD__(v23++, 1);
    if (v24)
    {
      goto LABEL_57;
    }
  }

  v25 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip);
  swift_unknownObjectRelease();
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v26 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else if (!v21)
  {
    if (v26 == *(v20 + 16))
    {
      goto LABEL_51;
    }

    goto LABEL_18;
  }

  if (v26 == _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_51;
  }

LABEL_18:
  v27 = v23 + 5;
  while (2)
  {
    v28 = v27 - 4;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip);
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
        if (v28 != v23)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_27;
        }

        goto LABEL_37;
      }

LABEL_38:
      v24 = __OFADD__(v28, 1);
      v38 = v27 - 3;
      if (v24)
      {
        goto LABEL_60;
      }

      if (v19 >> 62)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v27;
      if (v38 == v39)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  v29 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28 >= v29)
  {
    goto LABEL_59;
  }

  v21 = *(v19 + 8 * v27);
  if (*(v21 + OBJC_IVAR____TtC9appstored14MediaAPIUpdate_isAppClip))
  {
    goto LABEL_38;
  }

  if (v28 == v23)
  {
    goto LABEL_37;
  }

  if (v23 < 0)
  {
    goto LABEL_62;
  }

  if (v23 >= v29)
  {
    goto LABEL_63;
  }

  v20 = *(v19 + 32 + 8 * v23);
  v30 = v21;
LABEL_27:
  v21 = v30;
  v31 = v0[93];
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v31 + 16) = v19;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    v34 = v0[93];
    v19 = sub_1001B6EDC(v19);
    *(v34 + 16) = v19;
    v33 = (v19 >> 62) & 1;
  }

  else
  {
    LOBYTE(v33) = 0;
  }

  v35 = v19 & 0xFFFFFFFFFFFFFF8;
  v36 = *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v23 + 0x20);
  *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v23 + 0x20) = v21;

  if ((v33 & 1) == 0 && (v19 & 0x8000000000000000) == 0)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_35:
    if (v28 >= *(v35 + 16))
    {
      goto LABEL_64;
    }

    v37 = *(v35 + 8 * v27);
    *(v35 + 8 * v27) = v20;

LABEL_37:
    v24 = __OFADD__(v23++, 1);
    if (v24)
    {
      goto LABEL_61;
    }

    goto LABEL_38;
  }

  v21 = v0[93];
  v19 = sub_1001B6EDC(v19);
  v21[2] = v19;
  v35 = v19 & 0xFFFFFFFFFFFFFF8;
  if ((v28 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  if (v21)
  {
    goto LABEL_68;
  }

  v23 = *(v20 + 16);
LABEL_51:
  while (2)
  {
    if (!(v19 >> 62))
    {
      v40 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40 >= v23)
      {
        break;
      }

      goto LABEL_67;
    }

    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40 < v23)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      v23 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

  v41 = v0[93];
  v42 = v0[91];
  v43 = v0[50];
  sub_10013B8D8(v23, v40, sub_1001621B0, sub_1001B4A4C);

  v0[101] = objc_opt_self();
  v0[102] = sub_1002BB3F0();
  v44 = swift_allocObject();
  v44[2] = v41;
  v44[3] = v43;
  v44[4] = v42;
  v45 = swift_allocObject();
  v0[103] = v45;
  *(v45 + 16) = sub_10013B9D4;
  *(v45 + 24) = v44;
  v46 = v43;

  v47 = swift_task_alloc();
  v0[104] = v47;
  *v47 = v0;
  v47[1] = sub_100136DE0;

  return sub_1000DB98C(sub_10013B9F8, v45);
}

uint64_t sub_100138508()
{

  sub_100005A00(v0 + 144);

  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

void sub_10013865C(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, _TtC9appstored26UpdatesDatabaseMergeResult **a4@<X8>)
{
  swift_beginAccess();
  type metadata accessor for MediaAPIUpdate();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = *(a2 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason) == 2;
  sub_10009FAD4(0, &qword_10059CBB0);
  sub_10013BA7C();
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;
  v11 = sub_10034E5BC(a1, isa, v9, v10);

  if (*(v11 + OBJC_IVAR____TtC9appstored26UpdatesDatabaseMergeResult_result))
  {
    *a4 = v11;
  }

  else
  {
    type metadata accessor for ASDError(0);
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_10013BA2C(&qword_10059B7F0, 255, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_10013BA2C(&unk_10059DC30, 255, type metadata accessor for ASDError);
    swift_willThrowTypedImpl();

    *a3 = v12;
  }
}

void sub_100138850(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_10009FAD4(0, &qword_10059CC48);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10009FAD4(0, &qword_10059CC48);
  }

  sub_10009FAD4(0, &qword_10059CC48);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10034E224(a1, isa);
}

uint64_t sub_100138950(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for AccountIdentity();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100138A80, v1, 0);
}

uint64_t sub_100138A80()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];
  v0[12] = v2;

  if (v2)
  {
    v3 = v2;
    if ([v3 ams_accountID])
    {
      AccountIdentity.init(amsAccountID:)();

      type metadata accessor for AccountCachedServerData();
      v0[13] = static AccountCachedServerData.shared.getter();

      return _swift_task_switch(sub_100138CD0, 0, 0);
    }
  }

  v4 = v0[2];
  static Logger.updates.getter();
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] No active iTunes account found. Age rating updates will not be performed.", v9, 0xCu);
    sub_100005518(v10, &unk_10059C250);
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v12 = v0[1];

  return v12(0, 0);
}

uint64_t sub_100138CD0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[7];
  (*(v3 + 16))(v2, v0[11], v4);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = 10;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = v1;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100138E10;
  v9 = v0[2];

  return sub_100194A44(v9, 0, sub_100108F30, v6);
}

uint64_t sub_100138E10(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;

  return _swift_task_switch(sub_100138F30, 0, 0);
}

uint64_t sub_100138F30()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100138F9C, v1, 0);
}

uint64_t sub_100138F9C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_100139050(void *a1)
{
  sub_100085D40(&unk_10059D038);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100436FD0;
  *(v2 + 32) = xmmword_1004371A0;
  v3 = String._bridgeToObjectiveC()();

  sub_100085D40(&qword_10059DC40);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = [objc_opt_self() containsPredicateWithProperty:v3 values:{v4, v2}];

  swift_unknownObjectRelease();

  type metadata accessor for MediaAPIUpdateEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [a1 connection];
  v8 = sub_1002D3F5C(ObjCClassFromMetadata, v7, v5);

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10013BC44;
  *(v10 + 24) = v9;
  v14[4] = sub_1000B5D08;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10014BEFC;
  v14[3] = &unk_10050E970;
  v11 = _Block_copy(v14);
  v12 = a1;

  [v8 enumeratePersistentIDsUsingBlock:v11];

  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001392CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a4 connection];
  v11 = [objc_allocWithZone(type metadata accessor for MediaAPIUpdateEntity()) initWithPersistentID:a1 onConnection:v10];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v13 = String._bridgeToObjectiveC()();
  [v11 setValue:isa forProperty:v13];

  static Logger.updates.getter();
  v14 = v11;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v26 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136446210;
    v19 = String._bridgeToObjectiveC()();
    v20 = sub_100340328(v14, v19);

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v25 = sub_1001AD0D8(v21, v23, &v27);

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Resetting update state to available on startup: %{public}s", v17, 0xCu);
    sub_100005A00(v18);

    return (*(v7 + 8))(v9, v26);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100139594()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001395F8(unint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    goto LABEL_21;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v9 = *(a1 + 32);
  }

  v10 = v9;
  v49 = v9;
  a2(&v47, &v49);

  v12 = v47;
  v11 = v48;
  v49 = v47;
  v13 = *a5;
  v15 = sub_1000F2DCC(v47);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v14;
  if (v13[3] >= v18)
  {
    if (a4)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1001B1A38();
      if ((v19 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_14;
  }

  sub_1001AF4E8(v18, a4 & 1);
  v20 = sub_1000F2DCC(v12);
  if ((v19 & 1) == (v21 & 1))
  {
    v15 = v20;
    if ((v19 & 1) == 0)
    {
LABEL_19:
      v23 = *a5;
      *(*a5 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(v23[6] + 8 * v15) = v12;
      *(v23[7] + 8 * v15) = v11;
      v24 = v23[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        v23[2] = v26;
        if (v8 == 1)
        {
LABEL_21:

          return swift_bridgeObjectRelease_n();
        }

        v27 = 5;
        while (1)
        {
          v28 = v27 - 4;
          if ((a1 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v28 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v29 = *(a1 + 8 * v27);
          }

          v30 = v29;
          v31 = v27 - 3;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_38;
          }

          v49 = v29;
          a2(&v47, &v49);

          v32 = v47;
          v11 = v48;
          v49 = v47;
          v33 = *a5;
          v34 = sub_1000F2DCC(v47);
          v36 = v33[2];
          v37 = (v35 & 1) == 0;
          v25 = __OFADD__(v36, v37);
          v38 = v36 + v37;
          if (v25)
          {
            goto LABEL_36;
          }

          v39 = v35;
          if (v33[3] < v38)
          {
            sub_1001AF4E8(v38, 1);
            v34 = sub_1000F2DCC(v32);
            if ((v39 & 1) != (v40 & 1))
            {
              goto LABEL_39;
            }
          }

          if (v39)
          {
            goto LABEL_14;
          }

          v41 = *a5;
          *(*a5 + 8 * (v34 >> 6) + 64) |= 1 << v34;
          *(v41[6] + 8 * v34) = v32;
          *(v41[7] + 8 * v34) = v11;
          v42 = v41[2];
          v25 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v25)
          {
            break;
          }

          v41[2] = v43;
          ++v27;
          if (v31 == v8)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_14:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100085D40(&unk_10059DE80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_40;
  }

LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_40:
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v44._object = 0x80000001004506E0;
  v44._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v44);
  _print_unlocked<A, B>(_:_:)();
  v45._countAndFlagsBits = 39;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100139A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1000044A4(a3, v13, &qword_10059C3E0);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_100005518(v13, &qword_10059C3E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_100139DC4()
{
  v1 = sub_100085D40(&qword_10059DC48);
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100139E8C, 0, 0);
}

uint64_t sub_100139E8C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = AMSAccountMediaTypeProduction;
  v8 = [objc_opt_self() ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeProduction];
  v9 = [v8 ams_activeiTunesAccountForMediaType:v7];
  v1[22] = v9;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_10013A0B0;
  swift_continuation_init();
  v1[17] = v6;
  v10 = sub_100005F38(v1 + 14);
  sub_10009FAD4(0, &unk_10059DC50);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v10, v4, v6);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10012FB38;
  v1[13] = &unk_10050E998;
  [v9 resultWithCompletion:?];
  (*(v5 + 8))(v10, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_10013A0B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10013A28C;
  }

  else
  {
    v2 = sub_10013A1C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013A1C0()
{
  v1 = v0[18];
  v2 = [v1 ams_DSID];

  v3 = v0[22];
  if (v2)
  {
    v4 = [v2 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4, v2 == 0);
}

uint64_t sub_10013A28C()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0, 1);
}

uint64_t sub_10013A314(Swift::Int a1)
{
  if (a1 && (v15 = a1, swift_unknownObjectRetain(), sub_100085D40(&qword_10059D108), (swift_dynamicCast() & 1) != 0))
  {
    v1 = v16;
  }

  else
  {
    v1 = sub_1000EFD6C(_swiftEmptyArrayStorage);
  }

  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v4 = *(v1 + 64);
  v16 = result;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  while (v7)
  {
LABEL_15:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v3 << 6);
    if (*(*(v1 + 56) + v11) == 1)
    {
      v12 = (*(v1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      sub_100175394(&v15, v14, v13);
    }
  }

  v8 = v3;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= ((63 - v5) >> 6))
    {
      sub_10013CD30();
      return v16;
    }

    v7 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v7)
    {
      v3 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10013A4B4(char *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v70 = a2;
  v7 = type metadata accessor for Logger();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v67 - v11;
  v13 = objc_allocWithZone(UISApplicationState);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithBundleIdentifier:v14];

  if ([v15 badgeValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v77[0] = v75;
  v77[1] = v76;
  sub_1000044A4(v77, &v75, &unk_10059CC50);
  if (*(&v76 + 1))
  {
    sub_10009FAD4(0, &qword_10059CBB0);
    if (swift_dynamicCast())
    {
      v16 = v73;
      v17 = [v73 integerValue];

      if (v17 != a1)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  else
  {
    sub_100005518(&v75, &unk_10059CC50);
  }

  sub_1000044A4(v77, &v75, &unk_10059CC50);
  if (!*(&v76 + 1))
  {
    sub_100005518(&v75, &unk_10059CC50);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  result = v74;
  v31 = HIBYTE(v74) & 0xF;
  v32 = v73 & 0xFFFFFFFFFFFFLL;
  if ((v74 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v74) & 0xF;
  }

  else
  {
    v33 = v73 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

LABEL_32:
    v17 = 0;
    if (a1)
    {
LABEL_7:
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      [v15 setBadgeValue:isa];

      static Logger.updates.getter();
      v19 = v12;
      v20 = a4;

      v21 = a1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v68 = v19;
        v26 = v25;
        v27 = swift_slowAlloc();
        *&v75 = v27;
        *v24 = 138413314;
        v69 = v15;
        v28 = *&v20[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
        *(v24 + 4) = v28;
        *v26 = v28;
        *(v24 + 12) = 2050;
        *(v24 + 14) = v21;
        *(v24 + 22) = 2050;
        *(v24 + 24) = v17;
        *(v24 + 32) = 1026;
        objc_opt_self();
        v29 = v28;
        *(v24 + 34) = sub_1003D5FC8();
        *(v24 + 38) = 2082;
        *(v24 + 40) = sub_1001AD0D8(v70, a3, &v75);
        _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Updated badge count to: %{public}ld previous badgeValue: %{public}ld auto enabled: %{BOOL,public}d reason: %{public}s", v24, 0x30u);
        sub_100005518(v26, &unk_10059C250);

        sub_100005A00(v27);

        (*(v71 + 8))(v68, v72);
      }

      else
      {

        (*(v71 + 8))(v19, v72);
      }

      return sub_100005518(v77, &unk_10059CC50);
    }

LABEL_33:
    v68 = a1;
    static Logger.updates.getter();
    v40 = a4;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v75 = v45;
      *v43 = 138413058;
      v69 = v15;
      v46 = v71;
      v47 = *&v40[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey];
      *(v43 + 4) = v47;
      *v44 = v47;
      *(v43 + 12) = 2050;
      *(v43 + 14) = v68;
      *(v43 + 22) = 1026;
      objc_opt_self();
      v48 = v47;
      *(v43 + 24) = sub_1003D5FC8();
      *(v43 + 28) = 2082;
      *(v43 + 30) = sub_1001AD0D8(v70, a3, &v75);
      _os_log_impl(&_mh_execute_header, v41, v42, "[%@] Leaving badge count at: %{public}ld auto enabled: %{BOOL,public}d reason: %{public}s", v43, 0x26u);
      sub_100005518(v44, &unk_10059C250);

      sub_100005A00(v45);

      (*(v46 + 8))(v10, v72);
    }

    else
    {

      (*(v71 + 8))(v10, v72);
    }

    return sub_100005518(v77, &unk_10059CC50);
  }

  if ((v74 & 0x1000000000000000) != 0)
  {
    v17 = sub_1001704B8(v73, v74, 10);
    v64 = v65;
LABEL_81:

    if (v64)
    {
      v17 = 0;
    }

    if (v17 != a1)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if ((v74 & 0x2000000000000000) == 0)
  {
    if ((v73 & 0x1000000000000000) != 0)
    {
      v34 = ((v74 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v66 = v74;
      v34 = _StringObject.sharedUTF8.getter();
      result = v66;
    }

    v35 = *v34;
    if (v35 == 43)
    {
      if (v32 >= 1)
      {
        v52 = v32 - 1;
        if (v32 != 1)
        {
          v17 = 0;
          if (v34)
          {
            v53 = v34 + 1;
            while (1)
            {
              v54 = *v53 - 48;
              if (v54 > 9)
              {
                goto LABEL_79;
              }

              v55 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_79;
              }

              v17 = v55 + v54;
              if (__OFADD__(v55, v54))
              {
                goto LABEL_79;
              }

              ++v53;
              if (!--v52)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_80;
        }

        goto LABEL_79;
      }

      goto LABEL_90;
    }

    if (v35 != 45)
    {
      if (v32)
      {
        v17 = 0;
        if (v34)
        {
          while (1)
          {
            v59 = *v34 - 48;
            if (v59 > 9)
            {
              goto LABEL_79;
            }

            v60 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_79;
            }

            v17 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              goto LABEL_79;
            }

            ++v34;
            if (!--v32)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_80;
      }

LABEL_79:
      v17 = 0;
      LOBYTE(v34) = 1;
      goto LABEL_80;
    }

    if (v32 >= 1)
    {
      v36 = v32 - 1;
      if (v32 != 1)
      {
        v17 = 0;
        if (v34)
        {
          v37 = v34 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_79;
            }

            v39 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_79;
            }

            v17 = v39 - v38;
            if (__OFSUB__(v39, v38))
            {
              goto LABEL_79;
            }

            ++v37;
            if (!--v36)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_80:
        LOBYTE(v73) = v34;
        v64 = v34;
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  *&v75 = v73;
  *(&v75 + 1) = v74 & 0xFFFFFFFFFFFFFFLL;
  if (v73 != 43)
  {
    if (v73 != 45)
    {
      if (v31)
      {
        v17 = 0;
        v61 = &v75;
        while (1)
        {
          v62 = *v61 - 48;
          if (v62 > 9)
          {
            break;
          }

          v63 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v63 + v62;
          if (__OFADD__(v63, v62))
          {
            break;
          }

          ++v61;
          if (!--v31)
          {
LABEL_78:
            LOBYTE(v34) = 0;
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v31)
    {
      v34 = (v31 - 1);
      if (v31 != 1)
      {
        v17 = 0;
        v49 = &v75 + 1;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v51 - v50;
          if (__OFSUB__(v51, v50))
          {
            break;
          }

          ++v49;
          if (!--v34)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_89;
  }

  if (v31)
  {
    v34 = (v31 - 1);
    if (v31 != 1)
    {
      v17 = 0;
      v56 = &v75 + 1;
      while (1)
      {
        v57 = *v56 - 48;
        if (v57 > 9)
        {
          break;
        }

        v58 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          break;
        }

        ++v56;
        if (!--v34)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_91:
  __break(1u);
  return result;
}

void sub_10013ADB8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (v8 != v9)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v16 = v10;
    v12 = sub_10012F7A4(&v16, a2, a3, a4);

    if (v4 || (v12 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_18;
    }
  }
}

unint64_t sub_10013AED0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = *a1;
  sub_10013ADB8(*a1, a2, a3, a4);
  if (v4)
  {

    return v5;
  }

  if (v12)
  {
    if (v10 >> 62)
    {
      goto LABEL_56;
    }

    v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_46;
  }

  v5 = v11;
  v29 = a1;
  v31 = v7;
  v13 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v10 >> 62)
    {
      if (v13 == _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_45;
      }
    }

    else if (v13 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v15 = *(v10 + 8 * v13 + 32);
LABEL_17:
    v16 = v15;
    v32 = v15;
    v7 = v8;
    v17 = v8;
    v8 = v6;
    v18 = sub_10012F7A4(&v32, v17, v31, v6);

    if (v18)
    {
LABEL_9:
      v6 = v8;
    }

    else if (v5 == v13)
    {
      v6 = v8;
      v14 = __OFADD__(v5++, 1);
      if (v14)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5 >= v20)
        {
          goto LABEL_54;
        }

        if (v13 >= v20)
        {
          goto LABEL_55;
        }

        v21 = *(v10 + 32 + 8 * v13);
        v30 = *(v10 + 32 + 8 * v5);
        v19 = v21;
      }

      v22 = v19;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
      {
        v10 = sub_1001B6EDC(v10);
        v23 = (v10 >> 62) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      v24 = v10 & 0xFFFFFFFFFFFFFF8;
      v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
      *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v22;

      if ((v10 & 0x8000000000000000) != 0 || v23)
      {
        v10 = sub_1001B6EDC(v10);
        v24 = v10 & 0xFFFFFFFFFFFFFF8;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
LABEL_45:
          v7 = v31;
          goto LABEL_46;
        }
      }

      else if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v13 >= *(v24 + 16))
      {
        goto LABEL_52;
      }

      v6 = v8;
      v26 = v24 + 8 * v13;
      v27 = *(v26 + 32);
      *(v26 + 32) = v30;

      *v29 = v10;
      v14 = __OFADD__(v5++, 1);
      if (v14)
      {
        goto LABEL_51;
      }
    }

    v8 = v7;
    v14 = __OFADD__(v13++, 1);
    if (v14)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:

  return v5;
}

uint64_t sub_10013B1A8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[6] = _swiftEmptyArrayStorage;
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_10013B2AC;

  return sub_100131E54(a1);
}

uint64_t sub_10013B2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v6 = v4[8];
  v5[13] = a1;
  v5[14] = a2;

  return _swift_task_switch(sub_10013B3CC, v6, 0);
}

uint64_t sub_10013B3CC()
{
  v1 = v0[7];
  sub_100154B94(v0[13]);
  static Logger.updates.getter();
  v2 = v0[6];
  v0[15] = v2;
  swift_bridgeObjectRetain_n();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2050;
    v10 = *(v2 + 16);
    v11 = v9;

    *(v7 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] ╘ Update request contains %{public}ld eligible app(s)", v7, 0x16u);
    sub_100005518(v8, &unk_10059C250);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v12 = v0[14];
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (v12 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v0[14];
    if (v18)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v0[14];
    if (v13)
    {
LABEL_6:
      objc_opt_self();
      v0[16] = sub_1002BB3F0();
      v15 = swift_allocObject();
      v0[17] = v15;
      *(v15 + 16) = v14;
      v16 = swift_task_alloc();
      v0[18] = v16;
      *v16 = v0;
      v16[1] = sub_10013B6C0;

      return (sub_1000DB3D4)();
    }
  }

  v19 = v0[5];

  v20 = v0[1];
  v21 = v0[15];

  return v20(v21, v19);
}

uint64_t sub_10013B6C0()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 64);
  if (v0)
  {

    v5 = sub_10013F1AC;
  }

  else
  {

    v5 = sub_10013B840;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10013B840()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[15];

  return v2(v3, v1);
}

uint64_t sub_10013B8D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_10013BA2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_10013BA7C()
{
  result = qword_10059DC20;
  if (!qword_10059DC20)
  {
    sub_10009FAD4(255, &qword_10059CBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059DC20);
  }

  return result;
}

uint64_t sub_10013BAE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_10011E2D8(a1, v4, v5, v6);
}

uint64_t sub_10013BB98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_10011E6F0(a1, v4);
}

uint64_t sub_10013BCD0()
{
  v1 = type metadata accessor for Date();
  v0[12] = v1;
  v0[13] = *(v1 - 8);
  v0[14] = swift_task_alloc();
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v0[17] = swift_task_alloc();
  v3 = type metadata accessor for AccountClientIdentifier();
  v0[18] = v3;
  v0[19] = *(v3 - 8);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v4 = type metadata accessor for ClientInfo();
  v0[22] = v4;
  v0[23] = *(v4 - 8);
  v0[24] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v0[25] = v5;
  v0[26] = *(v5 - 8);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();

  return _swift_task_switch(sub_10013BF14, 0, 0);
}

uint64_t sub_10013BF14()
{
  v0[29] = objc_opt_self();
  if (sub_1003796B4())
  {
    static Logger.updates.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Post processing update metrics", v3, 2u);
    }

    v4 = v0[28];
    v5 = v1;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];
    v9 = v0[24];
    v10 = v0[21];
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    v24 = v0[22];

    v14 = *(v6 + 8);
    v0[30] = v14;
    v14(v4, v7);
    static AccountClientIdentifier.production.getter();
    (*(v12 + 16))(v11, v10, v13);
    ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
    (*(v12 + 8))(v10, v13);
    v0[31] = sub_1000D6694(v9);
    (*(v8 + 8))(v9, v24);
    static BagService.PermittedDataOrigin.networkAndPersistence.getter();
    v15 = swift_task_alloc();
    v0[32] = v15;
    *v15 = v0;
    v15[1] = sub_10013C234;
    v16 = v0[17];

    return sub_1000C4BE0((v0 + 7), 0, 0, v16);
  }

  else
  {
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];
    v21 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v19 + 8))(v18, v20);
    sub_1003D629C(v21, isa);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10013C234()
{
  v2 = *v1;

  v3 = v2[31];
  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[15];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_10013C7F0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);

    v7 = sub_10013C3E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10013C3E8()
{
  sub_1000056B8((v0 + 56), v0 + 16);
  objc_opt_self();
  *(v0 + 264) = sub_1002BB3F0();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_10013C4CC;

  return sub_1001B9DA4(sub_100122868, 0);
}

uint64_t sub_10013C4CC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 264);
  if (v1)
  {

    v7 = sub_10013C970;
  }

  else
  {

    *(v5 + 280) = a1;
    v7 = sub_10013C618;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10013C618()
{
  if (v0[35])
  {
    v1 = v0[35];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v2 = sub_1003795D4();
    sub_10009FAD4(0, &qword_10059DD00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v4 = v0[5];
    v5 = v0[6];
    v6 = sub_100005B60(v0 + 2, v4);
    v7 = sub_1000D1A7C(v4, v5, v6);
    sub_100379730(v2, isa, v7);

    goto LABEL_9;
  }

LABEL_9:
  sub_100005A00((v0 + 2));
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  v11 = objc_opt_self();
  Date.init()();
  v12 = Date._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v8, v10);
  sub_1003D629C(v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10013C7F0()
{
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_100005518(v0 + 56, &qword_10059BDF0);
  static Logger.updates.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to post update metrics; bag load failed", v7, 2u);
  }

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10013C970()
{
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v1 = sub_1003795D4();
    sub_10009FAD4(0, &qword_10059DD00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v3 = v0[5];
    v4 = v0[6];
    v5 = sub_100005B60(v0 + 2, v3);
    v6 = sub_1000D1A7C(v3, v4, v5);
    sub_100379730(v1, isa, v6);

    goto LABEL_6;
  }

LABEL_6:
  sub_100005A00((v0 + 2));
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = objc_opt_self();
  Date.init()();
  v11 = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v7, v9);
  sub_1003D629C(v10, v11);

  v12 = v0[1];

  return v12();
}

void *sub_10013CB48(unint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3)
{
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = &_swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_100085D40(&qword_10059CE40);
  v6 = static _DictionaryStorage.allocate(capacity:)();
LABEL_6:
  v8 = v6;

  sub_1001395F8(a1, a2, a3, 1, &v8);
  return v8;
}

uint64_t sub_10013CC34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100085384;

  return sub_10013198C(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_10013CD10(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_10013CD20(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10013CD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10013CD84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_100176F5C(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_1000828A8(v47, v45);
  v14 = *a5;
  result = sub_1000EE808(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_1001ADE90(v20, a4 & 1);
    result = sub_1000EE808(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1001B0F98();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_10009F6D0(*(*a5 + 56) + 32 * result, v44);
    sub_100005A00(v45);

    v25 = *(v23 + 56);
    sub_100005A00(v25 + v24);
    sub_1000828A8(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1000828A8(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_100176F5C(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_1000828A8(v47, v45);
        v34 = *a5;
        result = sub_1000EE808(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_1001ADE90(v38, 1);
          result = sub_1000EE808(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_10009F6D0(*(*a5 + 56) + 32 * result, v44);
          sub_100005A00(v45);

          v33 = *(v31 + 56);
          sub_100005A00(v33 + v32);
          sub_1000828A8(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1000828A8(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_100176F5C(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_10013CD30();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10013D0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100085D40(&qword_10059CB40);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v41[-v11];
  __chkstk_darwin(v10);
  v14 = &v41[-v13];
  v46 = a1;

  v16 = sub_1000BC2C8(v15);
  if (v16)
  {
    v17 = v16;
    if (*(v16 + 16) && (v18 = sub_1000EE808(0xD000000000000011, 0x8000000100450730), (v19 & 1) != 0))
    {
      sub_10009F6D0(*(v17 + 56) + 32 * v18, &v44);
      sub_1000828A8(&v44, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = a1;
      sub_1001B3A08(v43, 0x6C616E7265747865, 0xEA00000000006449, isUniquelyReferenced_nonNull_native);
      v21 = v42;
    }

    else
    {
      sub_10016D4C4(0x6C616E7265747865, 0xEA00000000006449, &v44);
      sub_100005518(&v44, &unk_10059CC50);
      v21 = v46;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v44 = v21;
    sub_10013CD84(v17, sub_100165DEC, 0, v22, &v44);

    a1 = v44;
    v46 = v44;
    if (*(v17 + 16) && (v23 = sub_1000EE808(0x44657361656C6572, 0xEB00000000657461), (v24 & 1) != 0))
    {
      sub_10009F6D0(*(v17 + 56) + 32 * v23, &v44);

      if (swift_dynamicCast())
      {
        if (qword_10059B530 != -1)
        {
          swift_once();
        }

        v25 = qword_10059DB68;
        v26 = String._bridgeToObjectiveC()();

        v27 = [v25 dateFromString:v26];

        if (v27)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v31 = type metadata accessor for Date();
        v32 = *(v31 - 8);
        (*(v32 + 56))(v12, v28, 1, v31);
        sub_100117568(v12, v14);
        if (qword_10059B528 != -1)
        {
          swift_once();
        }

        v33 = qword_10059DB60;
        sub_1000044A4(v14, v9, &qword_10059CB40);
        if ((*(v32 + 48))(v9, 1, v31) == 1)
        {
          isa = 0;
        }

        else
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v32 + 8))(v9, v31);
        }

        v35 = [v33 stringForObjectValue:isa];
        swift_unknownObjectRelease();
        if (v35)
        {
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v45 = &type metadata for String;
          *&v44 = v36;
          *(&v44 + 1) = v38;
          sub_1000828A8(&v44, v43);
          v39 = v46;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v42 = v39;
          sub_1001B3A08(v43, 0x44657361656C6572, 0xEB00000000657461, v40);
          sub_100005518(v14, &qword_10059CB40);
          a1 = v42;
          v46 = v42;
        }

        else
        {
          sub_10016D4C4(0x44657361656C6572, 0xEB00000000657461, v43);
          sub_100005518(v43, &unk_10059CC50);
          sub_100005518(v14, &qword_10059CB40);
          a1 = v46;
        }
      }
    }

    else
    {
    }
  }

  v45 = &type metadata for String;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  sub_1000828A8(&v44, v43);

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = a1;
  sub_1001B3A08(v43, 0x6449656C646E7562, 0xE800000000000000, v29);
  return v42;
}

uint64_t sub_10013D68C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100086B9C;

  return sub_10012AB8C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10013D77C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_10012A010(a1, v4, v5, v7, v6);
}

uint64_t sub_10013D864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_10012716C(a1, v4, v5, v7, v6);
}

uint64_t sub_10013D924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_100126B7C(a1, v4, v5, v6, v7);
}

uint64_t sub_10013D9EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10013DA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_10012670C(a1, v4, v5, v6, v7);
}

uint64_t sub_10013DB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100086B9C;

  return sub_100121780(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10013DBD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_10011D398(a1, v4, v5, v6);
}

uint64_t sub_10013DC8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100086B9C;

  return sub_10012FBE8();
}

uint64_t sub_10013DD40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1001A0494(a1, v4);
}

uint64_t sub_10013DDF8(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_10013DE60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_10012B590(a1, v4, v5, v7, v6);
}

uint64_t sub_10013DF20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_10012A5D0(v2, v3);
}

uint64_t sub_10013DFCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_100129364(v2, v3, v4);
}

uint64_t sub_10013E080()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_100128C58(v2, v3, v4);
}

uint64_t sub_10013E134()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_10012842C(v2, v3, v5, v4);
}

uint64_t sub_10013E1F4()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_1001261D0(v2, v4, v3);
}

uint64_t sub_10013E2A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_100125A28(a1, v4, v5, v7, v6);
}

uint64_t sub_10013E368()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_1001257A4(v2, v3, v4);
}

uint64_t sub_10013E41C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_100125064(v2, v3, v4);
}

uint64_t sub_10013E4D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_100124B38(v2, v3, v4);
}

uint64_t sub_10013E584(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100086B9C;

  return sub_1001242B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10013E64C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_100124074(v2, v3, v5, v4);
}

uint64_t sub_10013E70C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100086B9C;

  return sub_1001239BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10013E7D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_100123744(v2, v3, v4);
}

uint64_t sub_10013E888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100086B9C;

  return sub_100122684();
}

uint64_t sub_10013E93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_10012224C(a1, v4, v5, v6);
}

uint64_t sub_10013E9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_1001218C0(a1, v4, v5, v6);
}

uint64_t sub_10013EAA4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EAEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_100121434(v2, v3, v4);
}

uint64_t sub_10013EBA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_100120D88(v2, v3, v4);
}

uint64_t sub_10013EC54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EC94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100085384;

  return sub_1001202BC(a1, v4, v5, v6);
}

uint64_t sub_10013ED48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10013ED90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_10012006C(a1, v4, v5, v7, v6);
}

uint64_t sub_10013EE50()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EE90()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_10011FCF4(v2, v3);
}

uint64_t sub_10013EF54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_10011F6D4(v2, v3);
}

uint64_t sub_10013F000()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013F040()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_10011F444(v2, v3);
}

uint64_t sub_10013F134()
{

  return sub_10012C5E0();
}

id sub_10013F1DC()
{
  result = [objc_allocWithZone(type metadata accessor for CrashCoordinator()) init];
  qword_1005AB158 = result;
  return result;
}

id sub_10013F268(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v7 = result;
    static Logger.appUsage.getter();
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v11 = 136315650;
      *(v11 + 4) = sub_1001AD0D8(0xD000000000000020, 0x8000000100450A10, &v16);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1001AD0D8(0xD000000000000022, 0x8000000100450A40, &v16);
      *(v11 + 22) = 2080;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_1001AD0D8(v12, v13, &v16);

      *(v11 + 24) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s:%s: Biome query completed with error - %s", v11, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_10013F4C8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = [a1 eventBody];
  if (v11)
  {
    v12 = v11;
    [a1 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    v13 = [v12 bundleID];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v16;
      v54 = v15;

      v17 = [v12 appVersion];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v20;
        v52 = v19;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      v21 = [v12 bundleVersion];
      v55 = a2;
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v24;
        v50 = v23;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v56 = v5;
      v25 = *(v5 + 16);
      v25(v8, v10, v4);
      v26 = [v12 incidentID];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v29;
        v48 = v28;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v30 = [v12 isBeta];
      v31 = [v12 isFirstParty];
      v32 = type metadata accessor for CrashEvent();
      v33 = objc_allocWithZone(v32);
      v34 = &v33[OBJC_IVAR____TtC9appstored10CrashEvent_appVersion];
      v35 = v51;
      *v34 = v52;
      v34[1] = v35;
      v36 = &v33[OBJC_IVAR____TtC9appstored10CrashEvent_bundleID];
      v37 = v53;
      *v36 = v54;
      v36[1] = v37;
      v38 = &v33[OBJC_IVAR____TtC9appstored10CrashEvent_bundleVersion];
      v39 = v49;
      *v38 = v50;
      v38[1] = v39;
      v25(&v33[OBJC_IVAR____TtC9appstored10CrashEvent_date], v8, v4);
      v40 = &v33[OBJC_IVAR____TtC9appstored10CrashEvent_incidentID];
      v41 = v47;
      *v40 = v48;
      v40[1] = v41;
      v33[OBJC_IVAR____TtC9appstored10CrashEvent_isBeta] = v30;
      v33[OBJC_IVAR____TtC9appstored10CrashEvent_isSystem] = v31;
      v57.receiver = v33;
      v57.super_class = v32;
      v42 = objc_msgSendSuper2(&v57, "init");
      v43 = *(v56 + 8);
      v43(v8, v4);
      v44 = v55;
      swift_beginAccess();
      v45 = v42;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v44 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v44 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v43(v10, v4);
    }

    else
    {
      (*(v5 + 8))(v10, v4);
    }
  }
}

id sub_10013FC8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrashEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CrashEvent()
{
  result = qword_10059DD78;
  if (!qword_10059DD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013FDD4()
{
  result = type metadata accessor for Date();
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

uint64_t sub_10013FE88()
{
  v1 = v0;
  v2 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
  }

  v9 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:v7.super.isa endDate:isa maxEvents:5000 lastN:1000 reversed:0];

  v10 = [*(v1 + OBJC_IVAR____TtC9appstored16CrashCoordinator_appCrashStream) publisherWithOptions:v9];
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v21 = sub_10013F268;
  v22 = 0;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10018C220;
  v20 = &unk_10050F8E8;
  v12 = _Block_copy(&aBlock);
  v21 = sub_1001401A8;
  v22 = v11;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000C1214;
  v20 = &unk_10050F910;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 sinkWithCompletion:v12 receiveInput:v13];

  _Block_release(v13);
  _Block_release(v12);

  swift_beginAccess();
  v15 = *(v11 + 16);

  return v15;
}

uint64_t sub_100140190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001401B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10009E3F4(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100005518(v10, &qword_10059C3E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100005518(a3, &qword_10059C3E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005518(a3, &qword_10059C3E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001404EC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v54 - v8;
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  result = [a1 bundleIdentifier];
  if (result)
  {
    v13 = result;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = [a1 typeForInstallMachinery];
    if (v17)
    {
      v54 = v14;
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v21)
      {
        if (v19 == v22 && v21 == v23)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (([a1 isProfileValidated] & 1) == 0)
        {
          v26 = [a1 iTunesMetadata];
          v27 = [v26 distributorInfo];

          LOBYTE(v26) = [v27 distributorIsThirdParty];
          if ((v26 & 1) == 0)
          {
            v28 = [a1 iTunesMetadata];
            v29 = [v28 distributorInfo];

            v30 = [v29 distributorID];
            if (v30)
            {

              v31 = [a1 iTunesMetadata];
              v32 = [v31 distributorInfo];

              v33 = [v32 developerName];
              if (v33)
              {

                v34 = [a1 iTunesMetadata];
                v35 = [v34 distributorInfo];

                v36 = [v35 localizedDistributorName];
                if (v36 || (v37 = [a1 iTunesMetadata], v38 = objc_msgSend(v37, "distributorInfo"), v37, v36 = objc_msgSend(v38, "domain"), v38, v36))
                {

                  return 0;
                }

                static Logger.migrate.getter();

                v49 = Logger.logObject.getter();
                v50 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v49, v50))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  v55 = v52;
                  *v51 = 136446210;
                  v53 = sub_1001AD0D8(v54, v16, &v55);

                  *(v51 + 4) = v53;
                  sub_100005A00(v52);
                }

                else
                {
                }

                (*(v3 + 8))(v6, v2);
              }

              else
              {
                static Logger.migrate.getter();

                v44 = Logger.logObject.getter();
                v45 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  v47 = swift_slowAlloc();
                  v55 = v47;
                  *v46 = 136446210;
                  v48 = sub_1001AD0D8(v54, v16, &v55);

                  *(v46 + 4) = v48;
                  sub_100005A00(v47);
                }

                else
                {
                }

                (*(v3 + 8))(v9, v2);
              }
            }

            else
            {
              static Logger.migrate.getter();

              v39 = Logger.logObject.getter();
              v40 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                v42 = swift_slowAlloc();
                v55 = v42;
                *v41 = 136446210;
                v43 = sub_1001AD0D8(v54, v16, &v55);

                *(v41 + 4) = v43;
                sub_100005A00(v42);
              }

              else
              {
              }

              (*(v3 + 8))(v11, v2);
            }

            return 1;
          }
        }

LABEL_12:

        return 0;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100140BB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100140C10(void *a1)
{
  v2 = [a1 iTunesMetadata];
  v3 = [v2 distributorInfo];

  v4 = [v3 domain];
  if (v4)
  {

    v5 = [a1 iTunesMetadata];
    v6 = [v5 distributorInfo];

    v4 = [v6 distributorID];
    if (v4)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v7 == 0xD000000000000012 && 0x800000010044C480 == v9)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return v4 & 1;
}

uint64_t sub_100140D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100085D40(&qword_10059DDB0);
  v5[4] = swift_task_alloc();
  updated = type metadata accessor for UpdateMetadata();
  v5[5] = updated;
  v5[6] = *(updated - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100140EB0, 0, 0);
}

uint64_t sub_100140EB0()
{
  v17 = v0;
  static Logger.migrate.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1001AD0D8(v8, v7, &v16);
    sub_100005A00(v10);
  }

  (*(v5 + 8))(v4, v6);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_100141068;
  v13 = v0[3];
  v12 = v0[4];
  v14 = v0[2];

  return static UpdateService.availableUpdate(for:checkInWithServer:)(v12, v14, v13, 1);
}

uint64_t sub_100141068()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100141480;
  }

  else
  {
    v2 = sub_10014117C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014117C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005518(v3, &qword_10059DDB0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1001412D8;
    v7 = v0[7];

    return static UpdateService.requestUpdate(for:)(v7);
  }
}

uint64_t sub_1001412D8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100141504;
  }

  else
  {
    v2 = sub_1001413EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001413EC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100141480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100141504()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id sub_1001415C4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_100141620(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_100141684()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() enumeratorWithOptions:0];
  aBlock[4] = sub_1001404EC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100140BB8;
  aBlock[3] = &unk_10050F988;
  v8 = _Block_copy(aBlock);
  [v7 setFilter:v8];
  _Block_release(v8);
  v9 = &selRef_initWithLocaleIdentifier_;
  v10 = [v7 nextObject];
  if (v10)
  {
    v12 = v10;
    v45 = (v1 + 8);
    v46 = (v5 + 8);
    v13 = &selRef_dictionaryForPosting;
    *&v11 = 136446466;
    v42 = v11;
    v47 = v7;
    v43 = v4;
    v44 = v3;
    do
    {
      v14 = [v12 v13[388]];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        v19 = [v12 bundleContainerURL];
        if (v19)
        {
          v20 = v19;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL._bridgeToObjectiveC()(v21);
          v23 = v22;
          v24 = objc_opt_self();
          aBlock[0] = 0;
          v25 = [v24 metadataForBundleContainerURL:v23 error:aBlock];

          if (v25)
          {
            v26 = aBlock[0];
            sub_1003E36D4(v25, [v12 isBeta]);
            v27 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleIdentifier:v15];

            if (!v27)
            {
              __break(1u);
            }

            v28 = objc_opt_self();
            aBlock[0] = 0;
            v29 = [v28 updateiTunesMetadata:v25 forAppWithIdentity:v27 error:aBlock];

            if (v29)
            {
              v30 = *v46;
              v31 = aBlock[0];
              v30(v48, v4);

LABEL_18:
              v7 = v47;
              v9 = &selRef_initWithLocaleIdentifier_;
              v13 = &selRef_dictionaryForPosting;
              goto LABEL_4;
            }

            v33 = aBlock[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          else
          {
            v32 = aBlock[0];

            _convertNSErrorToError(_:)();
            swift_willThrow();
          }

          (*v46)(v48, v4);
          static Logger.migrate.getter();

          swift_errorRetain();
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = v0;
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            aBlock[0] = v39;
            *v36 = v42;
            v40 = sub_1001AD0D8(v16, v18, aBlock);

            *(v36 + 4) = v40;
            *(v36 + 12) = 2114;
            swift_errorRetain();
            v41 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 14) = v41;
            *v38 = v41;
            _os_log_impl(&_mh_execute_header, v34, v35, "Unable to update store metadata with distributorID for %{public}s: %{public}@", v36, 0x16u);
            sub_100005518(v38, &unk_10059C250);
            v0 = v37;
            v3 = v44;

            sub_100005A00(v39);
            v4 = v43;
          }

          else
          {
          }

          (*v45)(v3, v0);
          goto LABEL_18;
        }
      }

      else
      {
      }

LABEL_4:
      v12 = [v7 v9[328]];
    }

    while (v12);
  }
}

void sub_100141C74()
{
  v0 = sub_100085D40(&qword_10059C3E0);
  v1 = __chkstk_darwin(v0 - 8);
  v102 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v96 = &v92 - v3;
  v4 = type metadata accessor for ApprovedDeveloper();
  v116 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v92 - v8;
  v106 = type metadata accessor for Logger();
  v9 = *(v106 - 8);
  v10 = __chkstk_darwin(v106);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v92 - v13;
  v101 = type metadata accessor for URL();
  v15 = *(v101 - 8);
  __chkstk_darwin(v101);
  v111 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() enumeratorWithOptions:0];
  aBlock[4] = sub_100140C10;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100140BB8;
  aBlock[3] = &unk_10050F938;
  v18 = _Block_copy(aBlock);
  [v17 setFilter:v18];
  _Block_release(v18);
  v19 = &selRef_initWithLocaleIdentifier_;
  v20 = [v17 nextObject];
  if (v20)
  {
    v97 = 0;
    v105 = (v9 + 8);
    v114 = v116 + 16;
    v115 = (v116 + 8);
    v93 = (v116 + 32);
    v98 = (v15 + 8);
    v22 = &selRef_dictionaryForPosting;
    *&v21 = 136446210;
    v95 = v21;
    *&v21 = 136446466;
    v92 = v21;
    v112 = v4;
    v113 = v7;
    v103 = v14;
    v99 = v17;
    v100 = v12;
    do
    {
      v23 = v20;
      v24 = [v20 v22[388]];
      if (!v24)
      {

        goto LABEL_4;
      }

      v25 = v24;
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      v28 = v25;
      v29 = [v23 bundleContainerURL];
      if (!v29)
      {

        goto LABEL_4;
      }

      v109 = v23;
      v110 = v28;
      v30 = v29;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      static Logger.migrate.getter();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      v33 = os_log_type_enabled(v31, v32);
      v107 = v27;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = v95;
        *(v34 + 4) = sub_1001AD0D8(v108, v27, aBlock);
        sub_100005A00(v35);
      }

      v104 = *v105;
      v104(v14, v106);
      v36 = [v109 iTunesMetadata];
      v37 = [v36 distributorInfo];

      v38 = v110;
      [v37 setDistributorID:v110];

      [v37 setLocalizedDistributorName:0];
      v39 = static AppDistributor.allApprovedDevelopers()();
      v40 = v39;
      v41 = *(v39 + 16);
      if (!v41)
      {
LABEL_21:
        v54 = String._bridgeToObjectiveC()();
        [v37 setDeveloperName:v54];

        goto LABEL_25;
      }

      v42 = 0;
      v43 = v39 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      while (1)
      {
        if (v42 >= *(v40 + 16))
        {
          __break(1u);
LABEL_45:
          __break(1u);
        }

        (*(v116 + 16))(v7, v43 + *(v116 + 72) * v42, v4);
        v44 = ApprovedDeveloper.identifier.getter();
        v46 = v45;
        v47 = [v37 developerID];
        if (!v47)
        {

          goto LABEL_12;
        }

        v48 = v47;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        if (v44 == v49 && v46 == v51)
        {
          break;
        }

        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = v112;
        v7 = v113;
        if (v53)
        {
          goto LABEL_24;
        }

LABEL_12:
        ++v42;
        (*v115)(v7, v4);
        if (v41 == v42)
        {
          goto LABEL_21;
        }
      }

      v4 = v112;
      v7 = v113;
LABEL_24:
      v56 = v94;
      (*v93)(v94, v7, v4);
      ApprovedDeveloper.name.getter();
      v57 = String._bridgeToObjectiveC()();

      [v37 setDeveloperName:v57];

      (*v115)(v56, v4);
LABEL_25:
      URL._bridgeToObjectiveC()(v55);
      v59 = v58;
      v60 = objc_opt_self();
      aBlock[0] = 0;
      v61 = [v60 metadataForBundleContainerURL:v59 error:aBlock];

      v62 = v102;
      v63 = v100;
      v14 = v103;
      if (!v61)
      {
        v78 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();

        goto LABEL_32;
      }

      v64 = aBlock[0];
      [v61 setDistributorInfo:v37];
      v65 = objc_allocWithZone(IXApplicationIdentity);
      v66 = v110;
      v67 = [v65 initWithBundleIdentifier:v110];

      if (!v67)
      {
        goto LABEL_45;
      }

      v68 = objc_opt_self();
      aBlock[0] = 0;
      v69 = [v68 updateiTunesMetadata:v61 forAppWithIdentity:v67 error:aBlock];

      v70 = aBlock[0];
      if (v69)
      {
        v71 = v61;
        v72 = type metadata accessor for TaskPriority();
        v73 = *(v72 - 8);
        v74 = v96;
        (*(v73 + 56))(v96, 1, 1, v72);
        v75 = swift_allocObject();
        v75[2] = 0;
        v75[3] = 0;
        v76 = v107;
        v75[4] = v108;
        v75[5] = v76;
        sub_10009E3F4(v74, v62);
        LODWORD(v74) = (*(v73 + 48))(v62, 1, v72);
        v77 = v70;

        if (v74 == 1)
        {
          sub_100005518(v62, &qword_10059C3E0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v73 + 8))(v62, v72);
        }

        v88 = v75[2];
        swift_unknownObjectRetain();

        v14 = v103;
        if (v88)
        {
          swift_getObjectType();
          v89 = dispatch thunk of Actor.unownedExecutor.getter();
          v91 = v90;
          swift_unknownObjectRelease();
        }

        else
        {
          v89 = 0;
          v91 = 0;
        }

        v7 = v113;
        sub_100005518(v96, &qword_10059C3E0);
        if (v91 | v89)
        {
          v117 = 0;
          v118 = 0;
          v119 = v89;
          v120 = v91;
        }

        v4 = v112;
        v22 = &selRef_dictionaryForPosting;
        swift_task_create();

        (*v98)(v111, v101);
        v17 = v99;
        v19 = &selRef_initWithLocaleIdentifier_;
        goto LABEL_4;
      }

      v79 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_32:
      v97 = 0;
      static Logger.migrate.getter();
      v80 = v107;

      swift_errorRetain();
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        aBlock[0] = v85;
        *v83 = v92;
        v86 = sub_1001AD0D8(v108, v80, aBlock);

        *(v83 + 4) = v86;
        v4 = v112;
        *(v83 + 12) = 2114;
        swift_errorRetain();
        v87 = _swift_stdlib_bridgeErrorToNSError();
        *(v83 + 14) = v87;
        *v84 = v87;
        _os_log_impl(&_mh_execute_header, v81, v82, "Unable to update store metadata with distributorID for %{public}s: %{public}@", v83, 0x16u);
        sub_100005518(v84, &unk_10059C250);

        sub_100005A00(v85);
      }

      else
      {
      }

      v104(v63, v106);
      (*v98)(v111, v101);
      v7 = v113;
      v17 = v99;
      v19 = &selRef_initWithLocaleIdentifier_;
      v22 = &selRef_dictionaryForPosting;
LABEL_4:
      v20 = [v17 v19[328]];
    }

    while (v20);
  }
}

uint64_t sub_1001429B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001429D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100085384;

  return sub_100140D5C(a1, v4, v5, v7, v6);
}

id sub_100142A98()
{
  v26 = sub_100085D40(&qword_10059DDB8);
  v22 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v21 - v0;
  v1 = type metadata accessor for Locale();
  v23 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100085D40(&qword_10059DDC0);
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v21 - v5;
  v7 = sub_100085D40(&qword_10059DDC8);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = [objc_allocWithZone(NSNumberFormatter) init];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 numberFromString:v11];

  if (v12)
  {
  }

  else
  {
    v21 = v4;
    v13 = v22;
    Locale.init(identifier:)();
    static RegexComponent<>.localizedInteger(locale:)();
    (*(v23 + 8))(v3, v1);
    String.subscript.getter();

    sub_100142FB0();
    v15 = v24;
    v14 = v25;
    dispatch thunk of RegexComponent.regex.getter();
    v16 = v26;
    Regex.firstMatch(in:)();

    (*(v13 + 8))(v14, v16);
    (*(v21 + 8))(v6, v15);
    v17 = sub_100085D40(&qword_10059DDD8);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v9, 1, v17) == 1)
    {
      sub_100143014(v9);
      return 0;
    }

    else
    {
      Regex.Match.output.getter();
      v19 = v27;
      (*(v18 + 8))(v9, v17);
      return [objc_allocWithZone(NSNumber) initWithInteger:v19];
    }
  }

  return v12;
}

unint64_t sub_100142FB0()
{
  result = qword_10059DDD0;
  if (!qword_10059DDD0)
  {
    sub_10009F7F8(&qword_10059DDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059DDD0);
  }

  return result;
}

uint64_t sub_100143014(uint64_t a1)
{
  v2 = sub_100085D40(&qword_10059DDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10014314C(uint64_t a1, void *a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100085D40(&qword_10059DE70);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100085D40(&qword_10059DE70);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001433BC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *aBlock)
{
  v6[5] = a4;
  v6[6] = a5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_1001434D0;

  return (sub_10014470C)(v12, a2, a3, a4, a5);
}

uint64_t sub_1001434D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  swift_unknownObjectRelease();

  if (a1)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = *(v3 + 56);
  (v10)[2](v10, v9.super.isa);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

id sub_1001436FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100143754()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100085384;

  return sub_1001433BC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100143830(unint64_t a1)
{
  v2 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for AccountClientIdentifier();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ClientInfo();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Metrics();
  v16 = sub_1000E1024(a1);
  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v9, v11, v5);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v11, v5);
  v17 = sub_1000D6694(v15);
  (*(v13 + 8))(v15, v12);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v19[5] = v17;
  v19[6] = v22;
  sub_10019F02C(0, 0, v4, &unk_100435D88, v19);
}

uint64_t sub_100143B28(uint64_t a1)
{
  v2 = 0;
  v3 = &_swiftEmptyDictionarySingleton;
  v4 = &unk_10059CC50;
  while (2)
  {
    v5 = *(&off_100508F98 + v2++ + 32);
    switch(v5)
    {
      case 1:
        v6 = 0x6174536863746566;
        v34 = 0x6174536863746566;
        v7 = 0xEE00656D69547472;
        goto LABEL_24;
      case 2:
        v6 = 0xD000000000000010;
        v34 = 0xD000000000000010;
        v7 = 0x8000000100450D90;
        goto LABEL_24;
      case 3:
        v34 = 0xD000000000000011;
        v7 = 0x8000000100450D70;
        goto LABEL_21;
      case 4:
        v6 = 0x65736E6F70736572;
        v34 = 0x65736E6F70736572;
        v7 = 0xEF656D6954646E45;
        goto LABEL_24;
      case 5:
        v6 = 0xD000000000000013;
        v34 = 0xD000000000000013;
        v7 = 0x8000000100450D50;
        goto LABEL_24;
      case 6:
        v34 = 0xD000000000000011;
        v7 = 0x8000000100450D30;
        goto LABEL_21;
      case 7:
        v6 = 0xD000000000000019;
        v34 = 0xD000000000000019;
        v7 = 0x8000000100450D10;
        goto LABEL_24;
      case 8:
        v6 = 0xD000000000000015;
        v34 = 0xD000000000000015;
        v7 = 0x8000000100450CF0;
        goto LABEL_24;
      case 9:
        v6 = 0xD000000000000013;
        v34 = 0xD000000000000013;
        v7 = 0x8000000100450CD0;
        goto LABEL_24;
      case 10:
        v6 = 0xD000000000000012;
        v34 = 0xD000000000000012;
        v7 = 0x8000000100450CB0;
        goto LABEL_24;
      case 11:
        v6 = 0xD000000000000013;
        v34 = 0xD000000000000013;
        v7 = 0x8000000100450C90;
        goto LABEL_24;
      case 12:
        v6 = 0xD000000000000010;
        v34 = 0xD000000000000010;
        v7 = 0x8000000100450C70;
        goto LABEL_24;
      case 13:
        v34 = 0xD000000000000011;
        v7 = 0x8000000100450C50;
LABEL_21:
        v35 = v7;
        AnyHashable.init<A>(_:)();
        v6 = 0xD000000000000011;
        goto LABEL_25;
      case 14:
        v6 = 0xD000000000000019;
        v34 = 0xD000000000000019;
        v7 = 0x800000010044BF50;
        goto LABEL_24;
      case 15:
        v6 = 0xD000000000000023;
        v34 = 0xD000000000000023;
        v7 = 0x8000000100450C20;
        goto LABEL_24;
      case 16:
        v6 = 0x6F43737574617473;
        v34 = 0x6F43737574617473;
        v35 = 0xEA00000000006564;
        AnyHashable.init<A>(_:)();
        v8 = 0xEA00000000006564;
        goto LABEL_26;
      default:
        v6 = 0xD000000000000015;
        v34 = 0xD000000000000015;
        v7 = 0x8000000100450DB0;
LABEL_24:
        v35 = v7;
        AnyHashable.init<A>(_:)();
LABEL_25:
        v8 = v7;
LABEL_26:
        *&v33[0] = v6;
        *(&v33[0] + 1) = v8;
        AnyHashable.init<A>(_:)();
        if (!*(a1 + 16) || (v9 = sub_1000EE7C4(&v34), (v10 & 1) == 0))
        {
          sub_1000B5BDC(&v34);
          v21 = sub_1000EE7C4(v36);
          if (v22)
          {
            v23 = v21;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v32[0] = v3;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1001B1CF8();
              v3 = *&v32[0];
            }

            sub_1000B5BDC(v3[6] + 40 * v23);
            sub_1000828A8((v3[7] + 32 * v23), v33);
            sub_1001B3090(v23, v3);
            sub_1000B5BDC(v36);
          }

          else
          {
            sub_1000B5BDC(v36);
            memset(v33, 0, sizeof(v33));
          }

          sub_100005518(v33, v4);
LABEL_4:
          if (v2 == 17)
          {
            return v3;
          }

          continue;
        }

        v11 = v4;
        sub_10009F6D0(*(a1 + 56) + 32 * v9, v33);
        sub_1000B5BDC(&v34);
        sub_1000828A8(v33, v32);
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v31 = v3;
        v13 = sub_1000EE7C4(v36);
        v15 = v3[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (!v17)
        {
          v19 = v14;
          if (v3[3] >= v18)
          {
            if ((v12 & 1) == 0)
            {
              v29 = v13;
              sub_1001B1CF8();
              v13 = v29;
            }
          }

          else
          {
            sub_1001AF9C4(v18, v12);
            v13 = sub_1000EE7C4(v36);
            if ((v19 & 1) != (v20 & 1))
            {
              goto LABEL_45;
            }
          }

          v4 = v11;
          v3 = v31;
          if (v19)
          {
            v25 = (v31[7] + 32 * v13);
            sub_100005A00(v25);
            sub_1000828A8(v32, v25);
            sub_1000B5BDC(v36);
          }

          else
          {
            v31[(v13 >> 6) + 8] |= 1 << v13;
            v26 = v13;
            sub_1000F26AC(v36, v31[6] + 40 * v13);
            sub_1000828A8(v32, (v31[7] + 32 * v26));
            sub_1000B5BDC(v36);
            v27 = v31[2];
            v17 = __OFADD__(v27, 1);
            v28 = v27 + 1;
            if (v17)
            {
              goto LABEL_44;
            }

            v31[2] = v28;
          }

          goto LABEL_4;
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
    }
  }
}

id sub_1001440A4(void *a1)
{
  v2 = sub_100085D40(&qword_10059CE90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v54 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  result = [a1 loadURLEventDictionary];
  if (!result)
  {
    return result;
  }

  v16 = result;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_100143B28(v17);

  v60 = v18;
  v19 = [a1 URLResponse];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 URL];

    if (v21)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 56))(v5, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v5, 1, 1, v8);
    }

    sub_10009E1C4(v5, v7, &qword_10059CE90);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v14, v7, v8);
      *&v57 = 0x5574736575716572;
      *(&v57 + 1) = 0xEA00000000006C72;
      AnyHashable.init<A>(_:)();
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      v25 = sub_100259550(v23);

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = URL.absoluteString.getter();
      v28 = v27;
      v29 = *(v9 + 8);
      v29(v12, v8);
      v58 = &type metadata for String;
      *&v57 = v26;
      *(&v57 + 1) = v28;
      sub_1000828A8(&v57, v56);
      v30 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v30;
      sub_1001B4444(v56, v59, isUniquelyReferenced_nonNull_native);
      sub_1000B5BDC(v59);
      v29(v14, v8);
      v60 = v55;
      goto LABEL_10;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_100005518(v7, &qword_10059CE90);
LABEL_10:
  v32 = [a1 URLResponse];
  if (v32)
  {
    v33 = v32;
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      *&v57 = 0xD000000000000010;
      *(&v57 + 1) = 0x8000000100450BC0;
      AnyHashable.init<A>(_:)();
      v36 = String._bridgeToObjectiveC()();
      v37 = [v35 valueForHTTPHeaderField:v36];

      if (v37)
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v58 = &type metadata for String;
        *&v57 = v38;
        *(&v57 + 1) = v40;
        sub_1000828A8(&v57, v56);
        v41 = v60;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v41;
        sub_1001B4444(v56, v59, v42);

        sub_1000B5BDC(v59);
        v60 = v55;
      }

      else
      {
        sub_10016D73C(v59, &v57);

        sub_100005518(&v57, &unk_10059CC50);
        sub_1000B5BDC(v59);
      }
    }

    else
    {
    }
  }

  v43 = [a1 purchase];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 additionalHeaders];

    if (v45)
    {
      v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v46 + 16) && (v47 = sub_1000EE808(0x6567412D72657355, 0xEA0000000000746ELL), (v48 & 1) != 0))
      {
        v49 = (*(v46 + 56) + 16 * v47);
        v51 = *v49;
        v50 = v49[1];

        *&v57 = 0x6E65674172657375;
        *(&v57 + 1) = 0xE900000000000074;
        AnyHashable.init<A>(_:)();
        v58 = &type metadata for String;
        *&v57 = v51;
        *(&v57 + 1) = v50;
        sub_1000828A8(&v57, v56);
        v52 = v60;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v52;
        sub_1001B4444(v56, v59, v53);
        sub_1000B5BDC(v59);
        return v55;
      }

      else
      {
      }
    }
  }

  return v60;
}

uint64_t sub_10014470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[117] = a5;
  v5[116] = a4;
  v5[115] = a3;
  v5[114] = a2;
  v5[113] = a1;
  sub_100085D40(&qword_10059CE90);
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[121] = v6;
  v5[122] = *(v6 - 8);
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  sub_100085D40(&qword_10059BD80);
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v5[130] = swift_task_alloc();
  v7 = sub_100085D40(&qword_10059DE70);
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();

  return _swift_task_switch(sub_100144914, 0, 0);
}

uint64_t sub_100144914()
{
  v1 = v0[114];
  if (v1)
  {
    v2 = v0[117];
    v3 = v0[115];
    v4 = [objc_allocWithZone(AMSMetricsLoadURLContext) initWithTask:v0[113] metrics:v1];
    v0[134] = v4;
    [v4 setBag:v2];
    if (v3)
    {
      v3 = _convertErrorToNSError(_:)();
    }

    v5 = v0[133];
    v6 = v0[132];
    v7 = v0[131];
    v8 = v0[116];
    [v4 setError:v3];

    [v4 setSession:v8];
    v9 = [objc_opt_self() loadURLEventPromiseWithContext:v4];
    v0[135] = v9;
    v0[2] = v0;
    v0[7] = v0 + 112;
    v0[3] = sub_100144C78;
    swift_continuation_init();
    v0[17] = v7;
    v10 = sub_100005F38(v0 + 14);
    sub_10009FAD4(0, &qword_10059DE78);
    sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(v10, v5, v7);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10014314C;
    v0[13] = &unk_10050FA28;
    [v9 resultWithCompletion:?];
    (*(v6 + 8))(v10, v7);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_100144C78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1088) = v1;
  if (v1)
  {
    v2 = sub_100145A7C;
  }

  else
  {
    v2 = sub_100144D88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100144D88()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);

  v94 = v2;
  v3 = [v2 dictionaryForPosting];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100143B28(v4);

  v98 = v5;
  *(v0 + 864) = 0x6E65674172657375;
  *(v0 + 872) = 0xE900000000000074;
  AnyHashable.init<A>(_:)();
  v6 = [v1 currentRequest];
  if (v6)
  {
    v7 = v6;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 1040);
  v10 = *(v0 + 1032);
  v11 = type metadata accessor for URLRequest();
  v12 = *(v11 - 8);
  v96 = *(v12 + 56);
  v96(v10, v8, 1, v11);
  sub_10009E1C4(v10, v9, &qword_10059BD80);
  v95 = *(v12 + 48);
  v13 = v95(v9, 1, v11);
  v14 = *(v0 + 1040);
  if (v13 == 1)
  {
    sub_100005518(*(v0 + 1040), &qword_10059BD80);
  }

  else
  {
    v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = URLRequest.value(forHTTPHeaderField:)(v15);

    (*(v12 + 8))(v14, v11);
    if (v16.value._object)
    {
      *(v0 + 632) = &type metadata for String;
      *(v0 + 608) = v16;
      sub_1000828A8((v0 + 608), (v0 + 384));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1001B4444((v0 + 384), v0 + 184, isUniquelyReferenced_nonNull_native);
      sub_1000B5BDC(v0 + 184);
      v98 = v5;
      goto LABEL_9;
    }
  }

  sub_10016D73C(v0 + 184, (v0 + 512));
  sub_100005518(v0 + 512, &unk_10059CC50);
  sub_1000B5BDC(v0 + 184);
LABEL_9:
  v18 = [*(v0 + 904) currentRequest];
  if (v18)
  {
    v19 = v18;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(v0 + 1024);
  v22 = *(v0 + 1016);
  v96(v22, v20, 1, v11);
  sub_10009E1C4(v22, v21, &qword_10059BD80);
  v23 = v95(v21, 1, v11);
  v24 = *(v0 + 1024);
  if (v23 == 1)
  {
    sub_100005518(*(v0 + 1024), &qword_10059BD80);
  }

  else
  {
    v25._countAndFlagsBits = 0xD000000000000013;
    v25._object = 0x8000000100450C00;
    v26 = URLRequest.value(forHTTPHeaderField:)(v25);
    (*(v12 + 8))(v24, v11);
    if (v26.value._object)
    {
      *(v0 + 880) = 0xD000000000000010;
      *(v0 + 888) = 0x8000000100450BC0;
      AnyHashable.init<A>(_:)();
      *(v0 + 760) = &type metadata for String;
      *(v0 + 736) = v26;
      sub_1000828A8((v0 + 736), (v0 + 768));
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v98;
      sub_1001B4444((v0 + 768), v0 + 224, v27);
      v28 = v0 + 224;
LABEL_21:
      sub_1000B5BDC(v28);
      v98 = v99;
      goto LABEL_24;
    }
  }

  v29 = *(v0 + 904);
  *(v0 + 800) = 0xD000000000000010;
  *(v0 + 808) = 0x8000000100450BC0;
  AnyHashable.init<A>(_:)();
  v30 = [v29 response];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 _allHTTPHeaderFieldsAsArrays];

    if (v32)
    {
      v33 = sub_100085D40(&unk_10059DCA0);
      v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v34 + 16))
      {
        v35 = sub_1000EE808(0xD00000000000001BLL, 0x8000000100450BE0);
        if (v36)
        {
          v37 = *(*(v34 + 56) + 8 * v35);

          *(v0 + 440) = v33;
          *(v0 + 416) = v37;
          sub_1000828A8((v0 + 416), (v0 + 704));
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v99 = v98;
          sub_1001B4444((v0 + 704), v0 + 344, v38);
          v28 = v0 + 344;
          goto LABEL_21;
        }
      }
    }
  }

  sub_10016D73C(v0 + 344, (v0 + 448));
  sub_100005518(v0 + 448, &unk_10059CC50);
  sub_1000B5BDC(v0 + 344);
LABEL_24:
  v39 = [*(v0 + 904) currentRequest];
  if (v39)
  {
    v40 = v39;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = *(v0 + 1008);
  v43 = *(v0 + 1000);
  v96(v43, v41, 1, v11);
  sub_10009E1C4(v43, v42, &qword_10059BD80);
  v44 = v95(v42, 1, v11);
  v45 = *(v0 + 1008);
  v46 = *(v0 + 976);
  v47 = *(v0 + 968);
  v48 = *(v0 + 952);
  if (v44 == 1)
  {
    sub_100005518(*(v0 + 1008), &qword_10059BD80);
    (*(v46 + 56))(v48, 1, 1, v47);
  }

  else
  {
    URLRequest.url.getter();
    (*(v12 + 8))(v45, v11);
    v49 = *(v46 + 48);
    if (v49(v48, 1, v47) != 1)
    {
      v54 = *(v0 + 976);
      v55 = *(v0 + 968);
      v56 = *(v0 + 960);
      (*(v54 + 32))(v56, *(v0 + 952), v55);
      (*(v54 + 56))(v56, 0, 1, v55);
      goto LABEL_39;
    }
  }

  v50 = [*(v0 + 904) response];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 URL];

    if (v52)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v57 = *(v0 + 960);
    v58 = *(v0 + 944);
    (*(*(v0 + 976) + 56))(v58, v53, 1, *(v0 + 968));
    sub_10009E1C4(v58, v57, &qword_10059CE90);
  }

  else
  {
    (*(*(v0 + 976) + 56))(*(v0 + 960), 1, 1, *(v0 + 968));
  }

  v59 = *(v0 + 952);
  v49 = *(*(v0 + 976) + 48);
  if (v49(v59, 1, *(v0 + 968)) != 1)
  {
    sub_100005518(v59, &qword_10059CE90);
  }

LABEL_39:
  v60 = *(v0 + 968);
  v61 = *(v0 + 960);
  if (v49(v61, 1, v60) == 1)
  {
    sub_100005518(v61, &qword_10059CE90);
  }

  else
  {
    v62 = *(v0 + 992);
    v63 = *(v0 + 984);
    v64 = *(v0 + 976);
    (*(v64 + 32))(v62, v61, v60);
    *(v0 + 848) = 0x5574736575716572;
    *(v0 + 856) = 0xEA00000000006C72;
    AnyHashable.init<A>(_:)();
    URL._bridgeToObjectiveC()(v65);
    v67 = v66;
    v68 = sub_100259550(v66);

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = URL.absoluteString.getter();
    v71 = v70;
    v72 = *(v64 + 8);
    v72(v63, v60);
    *(v0 + 664) = &type metadata for String;
    *(v0 + 640) = v69;
    *(v0 + 648) = v71;
    sub_1000828A8((v0 + 640), (v0 + 672));
    v73 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001B4444((v0 + 672), v0 + 264, v73);
    sub_1000B5BDC(v0 + 264);
    v72(v62, v60);
  }

  *(v0 + 816) = 0x506B726F7774656ELL;
  *(v0 + 824) = 0xEF6C6F636F746F72;
  AnyHashable.init<A>(_:)();
  if (*(v98 + 16))
  {
    v74 = sub_1000EE7C4(v0 + 144);
    if (v75)
    {
      v76 = *(v0 + 1072);
      v77 = *(v0 + 912);
      sub_10009F6D0(*(v98 + 56) + 32 * v74, v0 + 480);
      sub_1000B5BDC(v0 + 144);
      sub_100005518(v0 + 480, &unk_10059CC50);

LABEL_55:
      v97 = v98;
      goto LABEL_56;
    }
  }

  v78 = *(v0 + 912);
  sub_1000B5BDC(v0 + 144);
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  sub_100005518(v0 + 480, &unk_10059CC50);
  v79 = [v78 transactionMetrics];
  sub_10009FAD4(0, &qword_10059DE90);
  v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v80 >> 62))
  {
    result = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_47;
    }

LABEL_54:
    v91 = *(v0 + 1072);
    v92 = *(v0 + 912);

    goto LABEL_55;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_54;
  }

LABEL_47:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v82 = *(v80 + 32);
  }

  v83 = v82;

  v84 = [v83 networkProtocolName];

  v85 = *(v0 + 1072);
  v86 = *(v0 + 912);
  if (!v84)
  {

    goto LABEL_55;
  }

  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  *(v0 + 832) = 0x506B726F7774656ELL;
  *(v0 + 840) = 0xEF6C6F636F746F72;
  AnyHashable.init<A>(_:)();
  *(v0 + 568) = &type metadata for String;
  *(v0 + 544) = v87;
  *(v0 + 552) = v89;
  sub_1000828A8((v0 + 544), (v0 + 576));
  v90 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001B4444((v0 + 576), v0 + 304, v90);

  sub_1000B5BDC(v0 + 304);
  v97 = v98;
LABEL_56:

  v93 = *(v0 + 8);

  return v93(v97);
}

uint64_t sub_100145A7C()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[114];
  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

void sub_100145BCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_100145C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_dispatchQueue;
  v13[1] = sub_10014691C();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100146968(&qword_10059D0F0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100085D40(&qword_10059D0F8);
  sub_1000F8888(&qword_10059D100, &qword_10059D0F8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_deadline] = 0;
  v10 = &v3[OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_descriptiveName];
  *v10 = 0xD000000000000012;
  *(v10 + 1) = 0x8000000100450F20;
  *&v3[OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_serviceHost] = v15;
  v11 = v18;
  *&v3[OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncIntervalMinutes] = v17;
  *&v3[OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncGracePeriodMinutes] = v11;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t sub_100145F2C()
{
  XPCDictionary.init()();
  String.init(cString:)();
  if (qword_10059B4A0 != -1)
  {
    swift_once();
  }

  result = XPCDictionary.subscript.setter();
  v2 = 15;
  if (*(v0 + OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncIntervalMinutes) > 15)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncIntervalMinutes);
  }

  if ((XPC_ACTIVITY_INTERVAL_1_MIN * v2) >> 64 == (XPC_ACTIVITY_INTERVAL_1_MIN * v2) >> 63)
  {
    sub_100117514();

    result = XPCDictionary.subscript.setter();
    if ((XPC_ACTIVITY_INTERVAL_1_MIN * *(v0 + OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncGracePeriodMinutes)) >> 64 == (XPC_ACTIVITY_INTERVAL_1_MIN * *(v0 + OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_syncGracePeriodMinutes)) >> 63)
    {

      XPCDictionary.subscript.setter();

      XPCDictionary.subscript.setter();

      XPCDictionary.subscript.setter();

      XPCDictionary.subscript.setter();

      XPCDictionary.subscript.setter();

      XPCDictionary.subscript.setter();

      return XPCDictionary.subscript.setter();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10014621C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.testFlightExtension.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "TestFlightExtensionSyncActivity - run", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  objc_opt_self();
  v9 = sub_100336524();
  v10 = sub_1003367A0(v9);

  v11 = *(v1 + OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_dispatchQueue);
  v12 = *(v1 + OBJC_IVAR____TtC9appstored31TestFlightExtensionSyncActivity_serviceHost);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1001468F4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100145BCC;
  aBlock[3] = &unk_10050FAA0;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v16 = v12;

  sub_100340DBC(v10, v14);
  _Block_release(v14);
}

uint64_t sub_100146450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  aBlock[4] = sub_100146914;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005A4C;
  aBlock[3] = &unk_10050FAF0;
  v13 = _Block_copy(aBlock);
  v14 = a4;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100146968(&unk_10059CBD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100085D40(&unk_10059D0C0);
  sub_1000F8888(&qword_10059CBE0, &unk_10059D0C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_100146704(uint64_t a1)
{
  v3[4] = nullsub_75;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100145BCC;
  v3[3] = &unk_10050FB18;
  v2 = _Block_copy(v3);
  sub_1003E6B88(a1, v2);
  _Block_release(v2);
}

uint64_t sub_10014681C()
{
}

uint64_t sub_1001468FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10014691C()
{
  result = qword_10059CBC8;
  if (!qword_10059CBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059CBC8);
  }

  return result;
}

uint64_t sub_100146968(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100146D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAPIUpdateEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100146DF0(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_100085D40(&unk_10059DC70);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_100146EC0, 0, 0);
}

uint64_t sub_100146EC0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v15 = *(v1 + 25);
  v7 = [objc_opt_self() exceptionConnection];
  [v7 activate];
  v8 = swift_allocObject();
  v8[1] = vextq_s8(v15, v15, 8uLL);
  v1[22] = sub_10014838C;
  v1[23] = v8;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_100148288;
  v1[21] = &unk_10050FB68;
  v9 = _Block_copy(v3);
  v10 = v15.i64[0];

  v11 = [v7 asynchronousExceptionServiceWithErrorHandler:v9];
  v1[30] = v11;

  _Block_release(v9);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1[31] = isa;
  v1[2] = v1;
  v1[3] = sub_100147194;
  swift_continuation_init();
  v1[17] = v6;
  v13 = sub_100005F38(v1 + 14);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v4, v6);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100147F5C;
  v1[13] = &unk_10050FB90;
  [v11 notifyUserOfAppRatingChange:isa completionHandler:?];
  (*(v5 + 8))(v13, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_100147194()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_100147318;
  }

  else
  {
    v2 = sub_1001472A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001472A4()
{
  v1 = *(v0 + 248);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100147318()
{
  v1 = *(v0 + 248);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001473A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = sub_100085D40(&qword_10059DF58);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_100147474, 0, 0);
}

uint64_t sub_100147474()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[26];
    if (v2)
    {
      v3 = v0[30];
      v34 = v0[31];
      v4 = v0[29];
      v36 = *(v0 + 27);
      v5 = objc_opt_self();
      v35 = v1;
      v6 = [v5 exceptionConnection];
      [v6 activate];
      v7 = swift_allocObject();
      v7[1] = vextq_s8(v36, v36, 8uLL);
      v0[22] = sub_100148420;
      v0[23] = v7;
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_100148288;
      v0[21] = &unk_10050FBE0;
      v8 = _Block_copy(v0 + 18);
      v9 = v36.i64[0];

      v10 = [v6 asynchronousExceptionServiceWithErrorHandler:v8];
      v0[32] = v10;

      _Block_release(v8);
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_1001479D4;
      swift_continuation_init();
      v0[17] = v4;
      v11 = sub_100005F38(v0 + 14);
      sub_100085D40(&qword_10059DF60);
      sub_100085D40(&unk_10059DE80);
      CheckedContinuation.init(continuation:function:)();
      (*(v3 + 32))(v11, v34, v4);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100148038;
      v0[13] = &unk_10050FC08;
      [v10 fetchExceptionsForRequesterDSID:v35 adamID:v2 completionHandler:?];
      (*(v3 + 8))(v11, v4);

      return _swift_continuation_await(v0 + 2);
    }

    v22 = qword_10059B548;
    v23 = v1;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = v0[27];
    v25 = type metadata accessor for Logger();
    sub_1000A5FBC(v25, qword_10059DF18);
    v26 = v24;
    v15 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v27))
    {
      v28 = v0[27];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v28;
      *v30 = v28;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v15, v27, "[%@] Error fetching restriction exceptions: itemID was 0", v29, 0xCu);
      sub_100086A24(v30);
    }
  }

  else
  {
    if (qword_10059B548 != -1)
    {
      swift_once();
    }

    v12 = v0[27];
    v13 = type metadata accessor for Logger();
    sub_1000A5FBC(v13, qword_10059DF18);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[26];
      v17 = v0[27];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      *(v19 + 4) = v17;
      *v20 = v17;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v18;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Error fetching restriction exceptions for %llu: no dsid provided", v19, 0x16u);
      sub_100086A24(v20);
    }
  }

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_1001479D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_100147D3C;
  }

  else
  {
    v2 = sub_100147AE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100147AE4()
{
  v1 = *(v0 + 192);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = *(v0 + 200);
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (qword_10059B548 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v3 = type metadata accessor for Logger();
  sub_1000A5FBC(v3, qword_10059DF18);
  swift_bridgeObjectRetain_n();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412802;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2048;
    if (v1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = *(v0 + 208);
    v13 = *(v0 + 200);
    v14 = *(v0 + 216);

    *(v8 + 14) = v10;

    *(v8 + 22) = 2048;
    *(v8 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Succesfully fetched %ld restriction exceptions for %llu", v8, 0x20u);
    sub_100086A24(v9);

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v0 + 200);
    swift_bridgeObjectRelease_n();

    swift_unknownObjectRelease();
  }

LABEL_13:

  v16 = *(v0 + 8);

  return v16(v1);
}

uint64_t sub_100147D3C()
{
  swift_willThrow();
  swift_unknownObjectRelease();
  if (qword_10059B548 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = type metadata accessor for Logger();
  sub_1000A5FBC(v2, qword_10059DF18);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v7;
    *(v9 + 22) = 2112;
    v11 = v6;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error when fetching restriction exceptions for %llu: %@", v9, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  else
  {
    v13 = v0[25];
  }

  v14 = v0[1];

  return v14(0);
}

void sub_100147F5C(uint64_t a1, void *a2)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_100085D40(&unk_10059DC70);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100085D40(&unk_10059DC70);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100147FEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000A6360(v0, qword_10059DF18);
  sub_1000A5FBC(v0, qword_10059DF18);
  return static Logger.updates.getter();
}

void sub_100148038(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100085D40(&qword_10059DF58);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001483C4();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100085D40(&qword_10059DF58);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_1001480F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10059B548 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A5FBC(v4, qword_10059DF18);
  v5 = a3;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2112;
    v9 = v5;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, oslog, v6, "[%@] Error fetching exception service: %@", v7, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }
}

void sub_100148288(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100148330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeExceptionsHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100148394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001483C4()
{
  result = qword_10059DF68[0];
  if (!qword_10059DF68[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_10059DF68);
  }

  return result;
}

uint64_t sub_100148424()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_1001484F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 80);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + 7;
  v18 = v14 + 8;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v19 = v16 + ((v18 + ((v17 + ((v13 + 40) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v12 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v22 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        v26 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13;
        if (v7 >= v11)
        {
          v29 = *(v6 + 48);

          return v29(v26, v7, v5);
        }

        else
        {
          v27 = (*(v9 + 48))((v18 + ((v17 + v26) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_33;
  }

LABEL_20:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v12 + (v25 | v23) + 1;
}

void sub_1001487AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 80);
  v17 = *(v8 + 64) + 7;
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = ((v18 + 8 + ((v17 + ((v16 + 40) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + v20;
  if (a3 <= v15)
  {
    goto LABEL_20;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v10 = 4;
      if (v15 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v15 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v15 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v21] = 0;
    }

    else if (v10)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      v27 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16;
      if (v9 >= v14)
      {
        v32 = *(v35 + 56);

        v32(v27, a2, v9, v7);
      }

      else
      {
        v28 = ((v18 + 8 + ((v17 + v27) & 0xFFFFFFFFFFFFFFF8)) & ~v18);
        if (v14 >= a2)
        {
          v33 = *(v12 + 56);
          v34 = (v18 + 8 + ((v17 + v27) & 0xFFFFFFFFFFFFFFF8)) & ~v18;

          v33(v34, (a2 + 1));
        }

        else
        {
          if (v20 <= 3)
          {
            v29 = ~(-1 << (8 * v20));
          }

          else
          {
            v29 = -1;
          }

          if (v20)
          {
            v30 = v29 & (~v14 + a2);
            if (v20 <= 3)
            {
              v31 = v20;
            }

            else
            {
              v31 = 4;
            }

            bzero(v28, v20);
            if (v31 > 2)
            {
              if (v31 == 3)
              {
                *v28 = v30;
                v28[2] = BYTE2(v30);
              }

              else
              {
                *v28 = v30;
              }
            }

            else if (v31 == 1)
            {
              *v28 = v30;
            }

            else
            {
              *v28 = v30;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v24 = ~v15 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_58;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v21] = v25;
  }
}

uint64_t sub_100148BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10059B550 != -1)
  {
    swift_once();
  }

  v9 = sub_100085D40(&qword_10059E020);
  v10 = sub_1000A5FBC(v9, qword_10059DFF0);
  __chkstk_darwin(v10);
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v4;
  return sub_10014B584(a1, a2, v4, v11, sub_10014AA44, v14, v12, a3, a4);
}

uint64_t sub_100148CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10059B558 != -1)
  {
    swift_once();
  }

  v9 = sub_100085D40(&qword_10059E020);
  v10 = sub_1000A5FBC(v9, qword_10059E008);
  return sub_10014B584(a1, a2, v4, @"hideableSystemAppsForWatch", sub_100148D78, 0, v10, a3, a4);
}

uint64_t sub_100148D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10059B550 != -1)
  {
    swift_once();
  }

  v8 = sub_100085D40(&qword_10059E020);
  v9 = sub_1000A5FBC(v8, qword_10059DFF0);
  __chkstk_darwin(v9);
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v4;
  return sub_10014B9DC(a1, v4, v10, sub_10014AA44, v13, v11, a2, a3);
}

uint64_t sub_100148E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10059B558 != -1)
  {
    swift_once();
  }

  v8 = sub_100085D40(&qword_10059E020);
  v9 = sub_1000A5FBC(v8, qword_10059E008);

  return sub_10014B9DC(a1, v4, @"hideableSystemAppsForWatch", sub_100148D78, 0, v9, a2, a3);
}

uint64_t sub_100148F74@<X0>(uint64_t *a1@<X8>)
{
  result = AnyValue.dictionary.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100149000(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&a1[OBJC_IVAR___Bag_bag + 24];
  v10 = *&a1[OBJC_IVAR___Bag_bag + 32];
  sub_100005B60(&a1[OBJC_IVAR___Bag_bag], v9);
  v11 = a1;
  LOBYTE(a4) = a4(v6, v8, v9, v10);

  return a4 & 1;
}

Class sub_1001490BC(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&a1[OBJC_IVAR___Bag_bag + 24];
  v10 = *&a1[OBJC_IVAR___Bag_bag + 32];
  sub_100005B60(&a1[OBJC_IVAR___Bag_bag], v9);
  v11 = a1;
  a4(v6, v8, v9, v10);
  LOBYTE(a4) = v12;

  if (a4)
  {
    isa = 0;
  }

  else
  {
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  }

  return isa;
}

id sub_1001491A4(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = &a1[OBJC_IVAR___Bag_bag];
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  sub_100005B60(v7, v8);
  v10 = a1;
  a4(a3, v8, v9);
  v12 = v11;

  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_100149260@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100085D40(&qword_10059E028);
  __chkstk_darwin(v9 - 8);
  v11 = &v19[-1] - v10;
  sub_100005B60(a1, a1[3]);
  v12 = sub_1000D10D8();
  if (!v12)
  {

    goto LABEL_5;
  }

  v13 = v12;
  sub_100005B60(a1, a1[3]);
  dispatch thunk of Bag.expiration.getter();
  v19[0] = v13;
  v19[1] = sub_100148F74;
  v19[2] = 0;
  v19[3] = sub_10014B53C;
  v19[4] = 0;
  v19[5] = sub_10014B54C;
  v19[6] = 0;
  v19[7] = sub_10014951C;
  v19[8] = 0;
  v19[9] = sub_1000828B8;
  v19[10] = 0;
  v19[11] = sub_10014B560;
  v19[12] = 0;
  sub_100149B84(v8, v19, v11);

  v14 = type metadata accessor for SystemAppCache();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14))
  {
    sub_100005518(v11, &qword_10059E028);
LABEL_5:
    sub_100005A00(a1);
    v16 = type metadata accessor for SystemAppCache();
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  sub_10014B920(v11, a3);
  (*(v15 + 56))(a3, 0, 1, v14);
  return sub_100005A00(a1);
}

unsigned __int8 *sub_10014951C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for Logger();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AnyValue();
  v6 = *(v67 - 8);
  v7 = __chkstk_darwin(v67);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v64 - v10;
  v12 = *a1;
  if (*(*a1 + 16))
  {
    v13 = sub_1000EE808(0x692D656C646E7562, 0xE900000000000064);
    if (v14)
    {
      v15 = v6[9];
      v16 = *(v12 + 56) + v15 * v13;
      v17 = v12;
      v18 = v5;
      v19 = v67;
      v66 = v6[2];
      v66(v11, v16, v67);
      v20 = AnyValue.string.getter();
      v22 = v21;
      v23 = v6[1];
      v24 = v19;
      v5 = v18;
      v25 = v17;
      v26 = v22;
      v23(v11, v24);
      if (v26)
      {
        v65 = v20;
        if (!*(v25 + 16))
        {
          goto LABEL_71;
        }

        v27 = sub_1000EE808(25705, 0xE200000000000000);
        if ((v28 & 1) == 0)
        {
          goto LABEL_71;
        }

        v29 = *(v25 + 56) + v27 * v15;
        v30 = v67;
        v66(v9, v29, v67);
        v31 = AnyValue.string.getter();
        v33 = v32;
        result = (v23)(v9, v30);
        if (!v33)
        {
          goto LABEL_71;
        }

        v35 = HIBYTE(v33) & 0xF;
        v36 = v31 & 0xFFFFFFFFFFFFLL;
        if ((v33 & 0x2000000000000000) != 0)
        {
          v37 = HIBYTE(v33) & 0xF;
        }

        else
        {
          v37 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v37)
        {

          goto LABEL_71;
        }

        if ((v33 & 0x1000000000000000) != 0)
        {

          v39 = sub_10016DBD8(v31, v33, 10);
          v62 = v61;
          result = swift_bridgeObjectRelease_n();
          if (v62)
          {
            goto LABEL_71;
          }

          goto LABEL_77;
        }

        if ((v33 & 0x2000000000000000) != 0)
        {
          v71[0] = v31;
          v71[1] = v33 & 0xFFFFFFFFFFFFFFLL;
          if (v31 == 43)
          {
            if (v35)
            {
              if (--v35)
              {
                v39 = 0;
                v47 = v71 + 1;
                while (1)
                {
                  v48 = *v47 - 48;
                  if (v48 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v39, 0xAuLL))
                  {
                    break;
                  }

                  v42 = __CFADD__(10 * v39, v48);
                  v39 = 10 * v39 + v48;
                  if (v42)
                  {
                    break;
                  }

                  ++v47;
                  if (!--v35)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_82:
            __break(1u);
            return result;
          }

          if (v31 != 45)
          {
            if (v35)
            {
              v39 = 0;
              v50 = v71;
              while (1)
              {
                v51 = *v50 - 48;
                if (v51 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v39, 0xAuLL))
                {
                  break;
                }

                v42 = __CFADD__(10 * v39, v51);
                v39 = 10 * v39 + v51;
                if (v42)
                {
                  break;
                }

                v50 = (v50 + 1);
                if (!--v35)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v35)
          {
            if (--v35)
            {
              v39 = 0;
              v43 = v71 + 1;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v39, 0xAuLL))
                {
                  break;
                }

                v42 = 10 * v39 >= v44;
                v39 = 10 * v39 - v44;
                if (!v42)
                {
                  break;
                }

                ++v43;
                if (!--v35)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((v31 & 0x1000000000000000) != 0)
          {
            result = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = _StringObject.sharedUTF8.getter();
          }

          v38 = *result;
          if (v38 == 43)
          {
            if (v36 >= 1)
            {
              v35 = v36 - 1;
              if (v36 != 1)
              {
                v39 = 0;
                if (result)
                {
                  v45 = result + 1;
                  while (1)
                  {
                    v46 = *v45 - 48;
                    if (v46 > 9)
                    {
                      goto LABEL_69;
                    }

                    if (!is_mul_ok(v39, 0xAuLL))
                    {
                      goto LABEL_69;
                    }

                    v42 = __CFADD__(10 * v39, v46);
                    v39 = 10 * v39 + v46;
                    if (v42)
                    {
                      goto LABEL_69;
                    }

                    ++v45;
                    if (!--v35)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_81;
          }

          if (v38 != 45)
          {
            if (v36)
            {
              v39 = 0;
              if (result)
              {
                while (1)
                {
                  v49 = *result - 48;
                  if (v49 > 9)
                  {
                    goto LABEL_69;
                  }

                  if (!is_mul_ok(v39, 0xAuLL))
                  {
                    goto LABEL_69;
                  }

                  v42 = __CFADD__(10 * v39, v49);
                  v39 = 10 * v39 + v49;
                  if (v42)
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v36)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v39 = 0;
            LOBYTE(v35) = 1;
LABEL_70:
            v72 = v35;
            v52 = v35;

            if (v52)
            {
LABEL_71:

              goto LABEL_72;
            }

LABEL_77:
            v63 = v70;
            *v70 = v65;
            v63[1] = v26;
            v63[2] = v39;
            return result;
          }

          if (v36 >= 1)
          {
            v35 = v36 - 1;
            if (v36 != 1)
            {
              v39 = 0;
              if (result)
              {
                v40 = result + 1;
                while (1)
                {
                  v41 = *v40 - 48;
                  if (v41 > 9)
                  {
                    goto LABEL_69;
                  }

                  if (!is_mul_ok(v39, 0xAuLL))
                  {
                    goto LABEL_69;
                  }

                  v42 = 10 * v39 >= v41;
                  v39 = 10 * v39 - v41;
                  if (!v42)
                  {
                    goto LABEL_69;
                  }

                  ++v40;
                  if (!--v35)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v35) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }
    }
  }

LABEL_72:
  static Logger.bag.getter();

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v71[0] = v56;
    *v55 = 136315138;
    v57 = Dictionary.description.getter();
    v59 = sub_1001AD0D8(v57, v58, v71);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "Malformed system app: %s", v55, 0xCu);
    sub_100005A00(v56);
  }

  result = (*(v68 + 8))(v5, v69);
  v60 = v70;
  *v70 = 0;
  v60[1] = 0;
  v60[2] = 0;
  return result;
}