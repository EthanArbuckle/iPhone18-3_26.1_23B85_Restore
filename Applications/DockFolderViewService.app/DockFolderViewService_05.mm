void sub_10006BEDC(char a1, void *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v43 = a2;
    [v14 completeContextRequestUpdateFromHost:a3 withError:0];
    if (a1)
    {
      v15 = v43;
    }

    else
    {
      static Logger.UI.getter();
      v16 = v43;
      v17 = a3;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v43 = a4;
        v21 = v20;
        v41 = swift_slowAlloc();
        v44 = v41;
        *v21 = 136315650;
        *(v21 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &v44);
        *(v21 + 12) = 2080;
        v22 = v16;
        v23 = [v22 description];
        v40 = v9;
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v16;
        v27 = v26;

        v28 = sub_100037B98(v25, v27, &v44);

        *(v21 + 14) = v28;
        *(v21 + 22) = 2080;
        v29 = v17;
        v30 = [v29 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v16 = v42;
        v34 = sub_100037B98(v31, v33, &v44);

        *(v21 + 24) = v34;
        _os_log_impl(&_mh_execute_header, v18, v19, "%s scene: %s failed to present folder withContext: %s", v21, 0x20u);
        swift_arrayDestroy();

        (*(v40 + 8))(v12, v8);
      }

      else
      {

        (*(v9 + 8))(v12, v8);
      }

      v35 = [v17 iconIdentifier];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      sub_100065BB8(v36, v38);
    }
  }
}

id sub_10006C26C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result completeContextRequestUpdateFromHost:a2 withError:0];
  }

  return result;
}

uint64_t sub_10006C370(void *a1, void *a2)
{
  v180 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v4 = *(*(v180 - 8) + 64);
  __chkstk_darwin(v180);
  v182 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v179 = &v177 - v7;
  v8 = type metadata accessor for URL();
  v192 = *(v8 - 8);
  v9 = *(v192 + 64);
  __chkstk_darwin(v8);
  v177 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v177 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v184 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v187 = &v177 - v19;
  __chkstk_darwin(v20);
  v183 = &v177 - v21;
  __chkstk_darwin(v22);
  v24 = &v177 - v23;
  __chkstk_darwin(v25);
  v27 = &v177 - v26;
  static Logger.UI.getter();
  v28 = a2;
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v185 = v31;
  v189 = v30;
  v32 = os_log_type_enabled(v30, v31);
  v33 = &selRef_setItemSize_;
  v188 = v15;
  v191 = v8;
  v178 = v24;
  v190 = v29;
  if (v32)
  {
    v34 = swift_slowAlloc();
    v194[0] = swift_slowAlloc();
    *v34 = 136315906;
    *(v34 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v194);
    *(v34 + 12) = 2080;
    v35 = v29;
    v36 = [v35 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v186 = v14;
    v38 = v37;
    v181 = v13;
    v40 = v39;

    v41 = sub_100037B98(v38, v40, v194);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    v193 = [v28 actionType];
    type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, v194);

    *(v34 + 24) = v44;
    *(v34 + 32) = 2080;
    v45 = v28;
    v46 = [v45 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = v47;
    v51 = v188;
    v52 = sub_100037B98(v50, v49, v194);
    v53 = v186;

    *(v34 + 34) = v52;
    v54 = v181;
    v55 = v189;
    _os_log_impl(&_mh_execute_header, v189, v185, "%s scene: %s actionType: %s actionContext: %s", v34, 0x2Au);
    swift_arrayDestroy();
    v33 = &selRef_setItemSize_;

    v56 = *(v51 + 8);
    (v56)(v27, v53);
  }

  else
  {

    v56 = *(v15 + 8);
    (v56)(v27, v14);
    v53 = v14;
    v54 = v13;
  }

  v57 = [v28 v33[141]];
  if ((v57 - 1000) < 3)
  {
    v58 = v53;
    v59 = v187;
    static Logger.UI.getter();
    v60 = v28;
    v61 = v190;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v194[0] = swift_slowAlloc();
      *v64 = 136315650;
      *(v64 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v194);
      v189 = v56;
      *(v64 + 12) = 2080;
      v65 = v61;
      v66 = [v65 description];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v58;
      v68 = v67;
      v70 = v69;

      v71 = sub_100037B98(v68, v70, v194);

      *(v64 + 14) = v71;
      *(v64 + 22) = 2080;
      v193 = [v60 actionType];
      type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
      v72 = String.init<A>(describing:)();
      v74 = sub_100037B98(v72, v73, v194);

      *(v64 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v62, v63, "%s scene: %s should never get here. actionContext: %s", v64, 0x20u);
      swift_arrayDestroy();

      v75 = v187;
LABEL_26:
      v119 = v186;
      return (v189)(v75, v119);
    }

LABEL_29:
    v121 = v59;
    v122 = v58;
    return (v56)(v121, v122);
  }

  v76 = v190;
  if (v57 == 1)
  {
    v91 = [v28 uuid];
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    v95 = [v28 iconIdentifier];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    v99 = [v28 iconURL];
    if (v99)
    {
      v100 = v182;
      v101 = v99;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v102 = v191;
      v103 = 0;
    }

    else
    {
      v103 = 1;
      v102 = v191;
      v100 = v182;
    }

    (*(v192 + 56))(v100, v103, 1, v102);
    sub_10006DDC0(v92, v94, v96, v98, v100);

    return sub_100006390(v100, &unk_1000BCA20, &qword_100090BC0);
  }

  if (v57)
  {
    v58 = v53;
    v59 = v184;
    static Logger.UI.getter();
    v104 = v28;
    v105 = v76;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v194[0] = swift_slowAlloc();
      *v108 = 136315650;
      *(v108 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v194);
      v189 = v56;
      *(v108 + 12) = 2080;
      v109 = v105;
      v110 = [v109 description];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v58;
      v112 = v111;
      v114 = v113;

      v115 = sub_100037B98(v112, v114, v194);

      *(v108 + 14) = v115;
      *(v108 + 22) = 2080;
      v193 = [v104 actionType];
      type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
      v116 = String.init<A>(describing:)();
      v118 = sub_100037B98(v116, v117, v194);

      *(v108 + 24) = v118;
      _os_log_impl(&_mh_execute_header, v106, v107, "%s scene: %s unknown action context type: %s", v108, 0x20u);
      swift_arrayDestroy();

      v75 = v184;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v77 = [v28 fromSecurityURLWrappers];
  if (!v77)
  {
LABEL_40:
    v153 = v183;
    static Logger.UI.getter();
    v154 = v28;
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v155, v156))
    {
      v189 = v56;
      v157 = v53;
      v158 = swift_slowAlloc();
      v194[0] = swift_slowAlloc();
      *v158 = 136315906;
      *(v158 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v194);
      *(v158 + 12) = 2080;
      v193 = [v154 actionType];
      type metadata accessor for SBUISFloatingDockRemoteSceneActionType(0);
      v159 = String.init<A>(describing:)();
      v161 = sub_100037B98(v159, v160, v194);

      *(v158 + 14) = v161;
      *(v158 + 22) = 2080;
      v162 = [v154 fromSecurityURLWrappers];
      if (v162)
      {
        v163 = v162;
        sub_10001A2A8(0, &qword_1000BCE58, NSSecurityScopedURLWrapper_ptr);
        v164 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v164 = 0;
      }

      v193 = v164;
      sub_10000589C(&qword_1000BCE50, &unk_100091118);
      v165 = String.init<A>(describing:)();
      v167 = sub_100037B98(v165, v166, v194);

      *(v158 + 24) = v167;
      *(v158 + 32) = 2080;
      v168 = [v154 iconURL];
      if (v168)
      {
        v169 = v179;
        v170 = v168;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v171 = 0;
        v172 = v157;
        v173 = v183;
      }

      else
      {
        v171 = 1;
        v172 = v157;
        v173 = v183;
        v169 = v179;
      }

      (*(v192 + 56))(v169, v171, 1, v191);
      v174 = String.init<A>(describing:)();
      v176 = sub_100037B98(v174, v175, v194);

      *(v158 + 34) = v176;
      _os_log_impl(&_mh_execute_header, v155, v156, "%s action context type: %s but fromSecurityURLWrappers: %s or destinationURL: %s was nil.", v158, 0x2Au);
      swift_arrayDestroy();

      v75 = v173;
      v119 = v172;
      return (v189)(v75, v119);
    }

    v121 = v153;
    v122 = v53;
    return (v56)(v121, v122);
  }

  v78 = v77;
  sub_10001A2A8(0, &qword_1000BCE58, NSSecurityScopedURLWrapper_ptr);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = [v28 iconURL];
  if (!v80)
  {
LABEL_39:

    goto LABEL_40;
  }

  v81 = v80;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v79 >> 62))
  {
    v82 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82 >= 1)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

  v82 = _CocoaArrayWrapper.endIndex.getter();
  if (v82 < 1)
  {
LABEL_38:
    (*(v192 + 8))(v54, v191);
    goto LABEL_39;
  }

LABEL_13:
  v186 = v53;
  v187 = v28;
  v181 = v54;
  v189 = v56;
  v194[0] = _swiftEmptyArrayStorage;
  sub_10000F7F8(0, v82, 0);
  v83 = 0;
  v84 = v194[0];
  v85 = v177;
  do
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v86 = *(v79 + 8 * v83 + 32);
    }

    v87 = v86;
    v88 = [v86 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v194[0] = v84;
    v90 = *(v84 + 16);
    v89 = *(v84 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_10000F7F8(v89 > 1, v90 + 1, 1);
      v84 = v194[0];
    }

    ++v83;
    *(v84 + 16) = v90 + 1;
    (*(v192 + 32))(v84 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v90, v85, v191);
  }

  while (v82 != v83);

  v123 = v178;
  static Logger.UI.getter();
  v124 = v187;
  v125 = v190;
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v129 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v194[0] = v190;
    *v129 = 136315650;
    *(v129 + 4) = sub_100037B98(0xD000000000000035, 0x80000001000944E0, v194);
    *(v129 + 12) = 2080;
    v130 = v125;
    v131 = [v130 description];
    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v133;

    v135 = sub_100037B98(v132, v134, v194);

    *(v129 + 14) = v135;
    *(v129 + 22) = 2080;
    v136 = v124;
    v137 = [v136 description];
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = sub_100037B98(v138, v140, v194);

    *(v129 + 24) = v141;
    _os_log_impl(&_mh_execute_header, v126, v127, "%s scene: %s actionContext: %s", v129, 0x20u);
    swift_arrayDestroy();

    v142 = v178;
  }

  else
  {

    v142 = v123;
  }

  (v189)(v142, v186);
  v143 = [v124 uuid];
  v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v146 = v145;

  v147 = [v124 iconIdentifier];
  v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v150 = v149;

  v151 = v148;
  v152 = v181;
  sub_10006D44C(v144, v146, v151, v150, v84, v181);

  return (*(v192 + 8))(v152, v191);
}

uint64_t sub_10006D44C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, char *a6)
{
  v95 = a1;
  v96 = a3;
  v10 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v98 = &v86 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v89 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v86 - v18;
  __chkstk_darwin(v19);
  v97 = &v86 - v20;
  __chkstk_darwin(v21);
  v23 = &v86 - v22;
  v92 = v24;
  __chkstk_darwin(v25);
  v27 = &v86 - v26;
  v28 = type metadata accessor for Logger();
  v102 = *(v28 - 8);
  v29 = *(v102 + 64);
  __chkstk_darwin(v28);
  v91 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v86 - v32;
  static Logger.UI.getter();
  v101 = v14;
  v34 = *(v14 + 16);
  v94 = a6;
  v106 = v34;
  v107 = (v14 + 16);
  v34(v27, a6, v13);

  v35 = a5;
  v36 = Logger.logObject.getter();
  LODWORD(v14) = static os_log_type_t.debug.getter();

  LODWORD(v90) = v14;
  v37 = os_log_type_enabled(v36, v14);
  v104 = v13;
  v99 = a2;
  v100 = a4;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v87 = v36;
    v39 = v38;
    v88 = swift_slowAlloc();
    v108[0] = v88;
    *v39 = 136316162;
    *(v39 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, v108);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_100037B98(v95, a2, v108);
    *(v39 + 22) = 2080;
    *(v39 + 24) = sub_100037B98(v96, a4, v108);
    *(v39 + 32) = 2080;
    v40 = Array.description.getter();
    v41 = v35;
    v43 = sub_100037B98(v40, v42, v108);

    *(v39 + 34) = v43;
    *(v39 + 42) = 2080;
    v13 = v104;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v47 = v101;
    v103 = *(v101 + 8);
    v103(v27, v13);
    v48 = sub_100037B98(v44, v46, v108);

    *(v39 + 44) = v48;
    v35 = v41;
    v49 = v87;
    _os_log_impl(&_mh_execute_header, v87, v90, "%s contextID: %s folderID: %s documentURLs: %s to: %s", v39, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v47 = v101;
    v103 = *(v101 + 8);
    v103(v27, v13);
  }

  v50 = *(v102 + 8);
  v50(v33, v28);
  v51 = *(v35 + 2);
  if (v51)
  {
    v90 = *(v47 + 80);
    v91 = v35;
    v102 = (v90 + 32) & ~v90;
    v52 = &v35[v102];
    v53 = *(v47 + 72);
    v101 = v47 + 8;
    v54 = (v47 + 32);
    v55 = _swiftEmptyArrayStorage;
    do
    {
      v106(v23, v52, v13);
      if (URL.startAccessingSecurityScopedResource()())
      {
        v56 = *v54;
        (*v54)(v105, v23, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108[0] = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10000F7F8(0, v55[2] + 1, 1);
          v55 = v108[0];
        }

        v59 = v55[2];
        v58 = v55[3];
        if (v59 >= v58 >> 1)
        {
          sub_10000F7F8(v58 > 1, v59 + 1, 1);
          v55 = v108[0];
        }

        v55[2] = v59 + 1;
        v60 = v55 + v102 + v59 * v53;
        v13 = v104;
        v56(v60, v105, v104);
      }

      else
      {
        v103(v23, v13);
      }

      v52 += v53;
      --v51;
    }

    while (v51);
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v98, 1, 1, v61);
    v106(v97, v94, v13);
    type metadata accessor for MainActor();

    v62 = v91;

    v107 = v93;
    v106 = static MainActor.shared.getter();
    v63 = v102;
    v64 = (v92 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = v106;
    *(v68 + 24) = &protocol witness table for MainActor;
    (*v54)((v68 + v63), v97, v104);
    *(v68 + v64) = v62;
    *(v68 + v65) = v107;
    *(v68 + v66) = v55;
    v69 = (v68 + v67);
    v70 = v98;
    v71 = v99;
    *v69 = v95;
    v69[1] = v71;
    v72 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
    v73 = v100;
    *v72 = v96;
    v72[1] = v73;
    sub_100064E70(0, 0, v70, &unk_100091130, v68);
  }

  else
  {
    v75 = v91;
    static Logger.UI.getter();
    v76 = v89;
    v106(v89, v94, v13);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      *v79 = 136315394;
      *(v79 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, v108);
      *(v79 + 12) = 2080;
      sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v76;
      v83 = v82;
      v103(v81, v13);
      v84 = sub_100037B98(v80, v83, v108);

      *(v79 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v77, v78, "%s can not start move operation with 0 items to move to destinationURL: %s", v79, 0x16u);
      swift_arrayDestroy();

      v85 = v91;
    }

    else
    {

      v103(v76, v13);
      v85 = v75;
    }

    return (v50)(v85, v28);
  }
}

void sub_10006DDC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v54 = a3;
  v58 = a1;
  v9 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = v12;
  __chkstk_darwin(v14);
  v16 = &v46[-v15];
  v17 = type metadata accessor for Logger();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  __chkstk_darwin(v17);
  v20 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  sub_100042774(a5, v16, &unk_1000BCA20, &qword_100090BC0);
  v21 = v5;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v55 = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v49 = a5;
    v26 = v25;
    v48 = swift_slowAlloc();
    v61 = v48;
    *v26 = 136315906;
    *(v26 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100094600, &v61);
    v50 = a4;
    *(v26 + 12) = 2080;
    v27 = swift_allocObject();
    v47 = v23;
    v28 = v27;
    *(v27 + 16) = v21;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_100074D58;
    *(v29 + 24) = v28;
    v59 = sub_100074DB4;
    v60 = v29;
    v30 = v21;
    sub_10000589C(&unk_1000BCEE0, qword_1000911A0);
    v31 = String.init<A>(describing:)();
    v33 = sub_100037B98(v31, v32, &v61);

    *(v26 + 14) = v33;
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_100037B98(v58, a2, &v61);
    *(v26 + 32) = 2080;
    sub_100042774(v16, v13, &unk_1000BCA20, &qword_100090BC0);
    v34 = v13;
    v35 = String.init<A>(describing:)();
    v37 = v36;
    sub_100006390(v16, &unk_1000BCA20, &qword_100090BC0);
    a4 = v50;
    v38 = sub_100037B98(v35, v37, &v61);

    *(v26 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v22, v47, "%s scene: %s contextID: %s, iconURL: %s", v26, 0x2Au);
    swift_arrayDestroy();

    a5 = v49;
  }

  else
  {
    v34 = v13;

    sub_100006390(v16, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v56 + 8))(v20, v57);
  v39 = *&v21[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
  if (v39)
  {
    sub_100042774(a5, v34, &unk_1000BCA20, &qword_100090BC0);
    v40 = (*(v52 + 80) + 56) & ~*(v52 + 80);
    v41 = swift_allocObject();
    v42 = v58;
    v41[2].isa = v21;
    v41[3].isa = v42;
    v43 = v54;
    v41[4].isa = v55;
    v41[5].isa = v43;
    v41[6].isa = a4;
    sub_100042594(v34, v41 + v40);
    v44 = v21;

    v45 = v39;

    sub_100047B28(v43, a4, sub_100074CC0, v41);
  }
}

id sub_10006E310(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = sub_10006E67C();
  }

  v14 = a1;
  static Logger.UI.getter();
  v15 = v13;
  v16 = a4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = v9;
    v20 = v19;
    v45 = swift_slowAlloc();
    v48 = v45;
    *v20 = 136316162;
    *(v20 + 4) = sub_100037B98(0xD000000000000040, 0x80000001000946A0, &v48);
    *(v20 + 12) = 2080;
    v21 = v15;
    v46 = v8;
    v22 = v21;
    v23 = [v21 description];
    v44 = v18;
    v24 = a3;
    v25 = v23;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v17;
    v27 = a2;
    v28 = v26;
    v30 = v29;

    v31 = sub_100037B98(v28, v30, &v48);

    *(v20 + 14) = v31;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v27;
    *(v20 + 32) = 1024;
    *(v20 + 34) = v24;
    *(v20 + 38) = 2080;
    v32 = v16;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    a3 = v24;
    v37 = v34;
    a2 = v27;
    v38 = sub_100037B98(v37, v36, &v48);

    *(v20 + 40) = v38;
    v39 = v43;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s update portalView: %s to use sourceLayerRenderId: %llu, sourceContextId: %u for context: %s", v20, 0x30u);
    swift_arrayDestroy();

    (*(v47 + 8))(v12, v46);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v40 = [v15 portalLayer];
  [v40 setSourceLayerRenderId:a2];

  v41 = [v15 portalLayer];
  [v41 setSourceContextId:a3];

  return v15;
}

id sub_10006E67C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FolderSceneDelegate._DOCPortalView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setHidesSourceView:1];
  [v5 setClipsToBounds:0];
  static Logger.UI.getter();
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = v1;
    v10 = v9;
    v21 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000012, 0x80000001000946F0, &v21);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v0;
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v21);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s created portalView: %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v20 + 8))(v4, v19);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return v6;
}

uint64_t sub_10006E910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v20;
  *(v8 + 240) = v19;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 200) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 264) = v9;
  v10 = *(v9 - 8);
  *(v8 + 272) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v12 = *(*(sub_10000589C(&qword_1000BCE60, &unk_100090AE0) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v8 + 312) = v13;
  v14 = *(v13 - 8);
  *(v8 + 320) = v14;
  *(v8 + 328) = *(v14 + 64);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 368) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 376) = v16;
  *(v8 + 384) = v15;

  return _swift_task_switch(sub_10006EAF8, v16, v15);
}

uint64_t sub_10006EAF8()
{
  v1 = v0[25];
  v2 = objc_opt_self();
  v0[49] = v2;
  v3 = [v2 defaultManager];
  v0[50] = v3;
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v0[51] = v5;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_10006EC58;
  v7 = swift_continuation_init();
  v0[17] = sub_10000589C(&qword_1000BCE68, &qword_100091150);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006FF08;
  v0[13] = &unk_1000AFD28;
  v0[14] = v7;
  [v3 fetchItemForURL:v6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006EC58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 416) = v3;
  v4 = *(v1 + 384);
  v5 = *(v1 + 376);
  if (v3)
  {
    v6 = sub_10006FB70;
  }

  else
  {
    v6 = sub_10006ED88;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10006ED88()
{
  v89 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[26];
  v86 = v0[24];
  v0[53] = v86;

  v5 = 0;
  v6 = *(v4 + 16);
  while (v6 != v5)
  {
    v7 = v0[45];
    v8 = v0[39];
    (*(v3 + 16))(v7, v0[26] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v5++, v8);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = FPURLMightBeInFileProvider();

    (*(v3 + 8))(v7, v8);
    if (!v12)
    {
      v13 = v0[46];
      v14 = v0[37];
      v15 = v0[26];

      static Logger.UI.getter();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[39];
        v19 = v0[34];
        v80 = v0[33];
        v83 = v0[37];
        v20 = v0[26];
        v21 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v21 = 136315394;
        *(v21 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v88);
        *(v21 + 12) = 2080;
        v22 = Array.description.getter();
        v24 = sub_100037B98(v22, v23, &v88);

        *(v21 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v16, v17, "%s at least one URL is not in FileProvider, importing as regular files: %s ", v21, 0x16u);
        swift_arrayDestroy();

        v25 = *(v19 + 8);
        v25(v83, v80);
      }

      else
      {
        v29 = v0[37];
        v30 = v0[33];
        v31 = v0[34];

        v25 = *(v31 + 8);
        v25(v29, v30);
      }

      v32 = v0[36];
      v33 = v0[26];
      static Logger.UI.getter();
      v34 = v86;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      v87 = v34;
      if (os_log_type_enabled(v35, v36))
      {
        v77 = v0[39];
        v78 = v0[34];
        v81 = v0[33];
        v84 = v0[36];
        v75 = v0[26];
        v37 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v37 = 136315650;
        *(v37 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v88);
        *(v37 + 12) = 2080;
        v38 = v34;
        v39 = [v38 description];
        v76 = v25;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = sub_100037B98(v40, v42, &v88);

        *(v37 + 14) = v43;
        *(v37 + 22) = 2080;
        v44 = Array.description.getter();
        v46 = sub_100037B98(v44, v45, &v88);

        *(v37 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "%s destination item: %s documentURLs: %s", v37, 0x20u);
        swift_arrayDestroy();

        v76(v84, v81);
      }

      else
      {
        v47 = v0[36];
        v49 = v0[33];
        v48 = v0[34];

        v25(v47, v49);
      }

      v50 = v0[39];
      v82 = v0[32];
      v85 = v0[49];
      v79 = v0[31];
      v52 = v0[29];
      v51 = v0[30];
      v53 = v0[27];
      v54 = v0[28];
      v55 = v0[26];
      v56 = objc_allocWithZone(FPMoveOperation);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v58 = [v56 initWithURLs:isa destinationFolder:v87];

      [v58 setLastUsageUpdatePolicy:2];
      [v58 setShouldBounceOnCollision:1];
      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v53;
      v59[4] = v58;
      v59[5] = v6;
      v59[6] = v54;
      v59[7] = v52;
      v59[8] = v51;
      v59[9] = v79;
      v59[10] = v82;
      v0[22] = sub_100072B64;
      v0[23] = v59;
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_1000717DC;
      v0[21] = &unk_1000AFD78;
      v60 = _Block_copy(v0 + 18);
      v61 = v0[23];
      v62 = v58;
      v63 = v53;

      v64 = v62;

      [v64 setActionCompletionBlock:v60];
      _Block_release(v60);

      v65 = [v85 defaultManager];
      [v65 scheduleAction:v64];

      v67 = v0[44];
      v66 = v0[45];
      v69 = v0[42];
      v68 = v0[43];
      v71 = v0[37];
      v70 = v0[38];
      v73 = v0[35];
      v72 = v0[36];

      v74 = v0[1];

      return v74();
    }
  }

  v26 = swift_task_alloc();
  v0[54] = v26;
  *v26 = v0;
  v26[1] = sub_10006F4A8;
  v27 = v0[26];

  return sub_100073CBC(v27);
}

uint64_t sub_10006F4A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v7 = v4[47];
    v8 = v4[48];
    v9 = sub_10006F7E4;
  }

  else
  {
    v4[56] = a1;
    v7 = v4[47];
    v8 = v4[48];
    v9 = sub_10006F5D0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10006F5D0()
{
  v1 = v0[53];
  v2 = v0[46];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[27];
  v25 = v0[56];
  v26 = v0[28];
  v9 = v0[25];

  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  (*(v5 + 16))(v3, v9, v7);
  v11 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  *(v12 + 5) = v25;
  *(v12 + 6) = v8;
  (*(v5 + 32))(&v12[v11], v3, v7);
  *&v12[(v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v26;
  v13 = v1;
  v14 = v8;

  sub_100070928(0, 0, v6, &unk_100091170, v12);

  sub_100006390(v6, &qword_1000BCE60, &unk_100090AE0);
  v16 = v0[44];
  v15 = v0[45];
  v18 = v0[42];
  v17 = v0[43];
  v20 = v0[37];
  v19 = v0[38];
  v22 = v0[35];
  v21 = v0[36];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10006F7E4()
{
  v48 = v0;
  v1 = v0[53];
  v2 = v0[46];

  v46 = v0[55];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[35];
  v8 = v0[25];
  v7 = v0[26];
  static Logger.UI.getter();
  v9 = *(v5 + 16);
  v9(v3, v8, v4);

  v10 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v10, v44);
  v12 = v0[43];
  v13 = v0[39];
  v14 = v0[40];
  v15 = v0[34];
  v45 = v0[35];
  v16 = v0[33];
  v17 = v0[26];
  if (v11)
  {
    v43 = v0[33];
    v18 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v47);
    *(v18 + 12) = 2048;
    *(v18 + 14) = *(v17 + 16);

    *(v18 + 22) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v10;
    v42 = v15;
    v21 = v20;
    v22 = *(v14 + 8);
    v22(v12, v13);
    v23 = sub_100037B98(v19, v21, &v47);

    *(v18 + 24) = v23;
    _os_log_impl(&_mh_execute_header, log, v44, "%s failed to move %ld URL(s) to folder: %s", v18, 0x20u);
    swift_arrayDestroy();

    (*(v42 + 8))(v45, v43);
  }

  else
  {

    v22 = *(v14 + 8);
    v22(v12, v13);
    (*(v15 + 8))(v45, v16);
  }

  v24 = v0[28];
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v0[40];
    v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v28 = *(v26 + 72);
    do
    {
      v29 = v0[42];
      v30 = v0[39];
      v9(v29, v27, v30);
      URL.stopAccessingSecurityScopedResource()();
      v22(v29, v30);
      v27 += v28;
      --v25;
    }

    while (v25);
  }

  v32 = v0[44];
  v31 = v0[45];
  v34 = v0[42];
  v33 = v0[43];
  v36 = v0[37];
  v35 = v0[38];
  v38 = v0[35];
  v37 = v0[36];

  v39 = v0[1];

  return v39();
}

uint64_t sub_10006FB70()
{
  v50 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[46];

  swift_willThrow();

  v48 = v0[52];
  v5 = v0[43];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[35];
  v10 = v0[25];
  v9 = v0[26];
  static Logger.UI.getter();
  v11 = *(v7 + 16);
  v11(v5, v10, v6);

  v12 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v12, v46);
  v14 = v0[43];
  v15 = v0[39];
  v16 = v0[40];
  v17 = v0[34];
  v47 = v0[35];
  v18 = v0[33];
  v19 = v0[26];
  if (v13)
  {
    v45 = v0[33];
    v20 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, v49);
    *(v20 + 12) = 2048;
    *(v20 + 14) = *(v19 + 16);

    *(v20 + 22) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v12;
    v44 = v17;
    v23 = v22;
    v24 = *(v16 + 8);
    v24(v14, v15);
    v25 = sub_100037B98(v21, v23, v49);

    *(v20 + 24) = v25;
    _os_log_impl(&_mh_execute_header, log, v46, "%s failed to move %ld URL(s) to folder: %s", v20, 0x20u);
    swift_arrayDestroy();

    (*(v44 + 8))(v47, v45);
  }

  else
  {

    v24 = *(v16 + 8);
    v24(v14, v15);
    (*(v17 + 8))(v47, v18);
  }

  v26 = v0[28];
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v0[40];
    v29 = v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v30 = *(v28 + 72);
    do
    {
      v31 = v0[42];
      v32 = v0[39];
      v11(v31, v29, v32);
      URL.stopAccessingSecurityScopedResource()();
      v24(v31, v32);
      v29 += v30;
      --v27;
    }

    while (v27);
  }

  v34 = v0[44];
  v33 = v0[45];
  v36 = v0[42];
  v35 = v0[43];
  v38 = v0[37];
  v37 = v0[38];
  v40 = v0[35];
  v39 = v0[36];

  v41 = v0[1];

  return v41();
}

uint64_t sub_10006FF08(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100042398((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000589C(&unk_1000BC330, &qword_100090AD8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10006FFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for URL();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v8[9] = *(v10 + 64);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v8[12] = v11;
  v12 = *(v11 - 8);
  v8[13] = v12;
  v13 = *(v12 + 64) + 15;
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_100070118, 0, 0);
}

uint64_t sub_100070118()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000701AC, v2, v1);
}

uint64_t sub_1000701AC()
{
  v54 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[2];
  v3 = v0[3];

  static Logger.Application.getter();
  swift_bridgeObjectRetain_n();
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v53);
    *(v10 + 12) = 2080;
    v11 = [v8 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100037B98(v12, v14, &v53);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2048;
    if (v9 >> 62)
    {
      if (v0[3] < 0)
      {
        v47 = v0[3];
      }

      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    v20 = v0[3];

    *(v10 + 24) = v16;

    _os_log_impl(&_mh_execute_header, v6, v7, "%s: performing drop in to: %s with %ld.", v10, 0x20u);
    swift_arrayDestroy();

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];
    v24 = v0[3];
    swift_bridgeObjectRelease_n();

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[4];
  v26 = *(v25 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v26)
  {
    v52 = *(v25 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  }

  else
  {
    v52 = [objc_allocWithZone(UIViewController) init];
  }

  v27 = v0[11];
  v28 = v0[8];
  v48 = v0[9];
  v29 = v0[7];
  v30 = v0[5];
  v50 = v0[3];
  v51 = v0[6];
  v49 = v0[2];
  sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
  v31 = *(v28 + 16);
  v31(v27, v30, v29);
  v32 = *(v28 + 80);
  v33 = swift_allocObject();
  (*(v28 + 32))(v33 + ((v32 + 16) & ~v32), v27, v29);
  v34 = v26;
  static FPItem.performDrop(_:underItem:alertPresenting:completion:)();

  v35 = *(v51 + 16);
  if (v35)
  {
    v36 = v0[8];
    v37 = v0[6] + ((v32 + 32) & ~v32);
    v38 = *(v36 + 72);
    v39 = (v36 + 8);
    do
    {
      v40 = v0[10];
      v41 = v0[7];
      v31(v40, v37, v41);
      URL.stopAccessingSecurityScopedResource()();
      (*v39)(v40, v41);
      v37 += v38;
      --v35;
    }

    while (v35);
  }

  v42 = v0[14];
  v44 = v0[10];
  v43 = v0[11];

  v45 = v0[1];

  return v45();
}

uint64_t sub_1000705C4(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v5 + 16))(v8, a2, v4);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v25 = v9;
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v16 = 136315650;
    *(v16 + 4) = sub_100037B98(0xD00000000000003FLL, 0x8000000100094520, &v26);
    *(v16 + 12) = 2048;
    if (a1)
    {
      if (a1 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v17 = 0;
    }

    *(v16 + 14) = v17;

    *(v16 + 22) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = sub_100037B98(v19, v21, &v26);

    *(v16 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s finished moving %ld nodes(s) to folder: %s finished", v16, 0x20u);
    swift_arrayDestroy();

    return (*(v10 + 8))(v13, v25);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_100070928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100042774(a3, v27 - v11, &qword_1000BCE60, &unk_100090AE0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006390(v12, &qword_1000BCE60, &unk_100090AE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100070BE8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v105 = a7;
  v106 = a8;
  v104 = a6;
  v99 = a5;
  v101 = a4;
  v109 = a3;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v98 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v100 = &v96 - v22;
  __chkstk_darwin(v23);
  v107 = &v96 - v24;
  __chkstk_darwin(v25);
  v102 = &v96 - v26;
  __chkstk_darwin(v27);
  v29 = &v96 - v28;
  static Logger.UI.getter();
  v30 = a2;
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v103 = v17;
  v108 = v18;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v111 = v97;
    *v34 = 136315650;
    *(v34 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v111);
    *(v34 + 12) = 2080;
    v35 = [v30 transferResults];
    if (v35)
    {
      v36 = v35;
      sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v37 = 0;
    }

    v110 = v37;
    sub_10000589C(&unk_1000BCED0, &unk_100091190);
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, &v111);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    v110 = a1;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, &v111);

    *(v34 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s move operation transfer result: %s error: %s", v34, 0x20u);
    swift_arrayDestroy();

    v38 = *(v108 + 8);
    v17 = v103;
    v38(v29, v103);
  }

  else
  {

    v38 = *(v18 + 8);
    v38(v29, v17);
  }

  v45 = v107;
  if (a1)
  {
    swift_errorRetain();
    v46 = v102;
    static Logger.UI.getter();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v111);
      *(v49 + 12) = 2080;
      v110 = a1;
      swift_errorRetain();
      sub_10000589C(&unk_1000BC330, &qword_100090AD8);
      v50 = String.init<A>(describing:)();
      v52 = sub_100037B98(v50, v51, &v111);
      v107 = v38;
      v53 = v52;

      *(v49 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s move operation failed with error: %s Presenting alert.", v49, 0x16u);
      swift_arrayDestroy();

      (v107)(v102, v103);
    }

    else
    {

      v38(v46, v17);
    }

    v66 = swift_allocObject();
    v67 = v109;
    *(v66 + 16) = v109;
    *(v66 + 24) = a1;
    swift_errorRetain();
    v68 = v67;
    DOCRunInMainThread(_:)();

    goto LABEL_25;
  }

  v54 = [v101 transferResults];
  if (v54)
  {
    v55 = v54;
    v56 = sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
    v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    static Logger.UI.getter();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    v60 = os_log_type_enabled(v58, v59);
    v102 = v56;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v111 = v101;
      *v61 = 136315394;
      *(v61 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v111);
      *(v61 + 12) = 2080;
      v62 = Dictionary.description.getter();
      v64 = sub_100037B98(v62, v63, &v111);

      *(v61 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s move operation transfer result: %s", v61, 0x16u);
      swift_arrayDestroy();
      v17 = v103;

      v65 = v107;
    }

    else
    {

      v65 = v45;
    }

    v38(v65, v17);
    v75 = v100;
    if (*(v57 + 16) == v99)
    {

      goto LABEL_25;
    }

    static Logger.UI.getter();

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v78 = 136315394;
      *(v78 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v111);
      *(v78 + 12) = 2080;
      v79 = Dictionary.description.getter();
      v107 = v38;
      v81 = v80;

      v82 = sub_100037B98(v79, v81, &v111);

      *(v78 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s unexpected transfer results count: %s", v78, 0x16u);
      swift_arrayDestroy();

      (v107)(v100, v103);
      goto LABEL_25;
    }

    v74 = v75;
  }

  else
  {
    v69 = v98;
    static Logger.UI.getter();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v111 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094580, &v111);
      _os_log_impl(&_mh_execute_header, v70, v71, "%s unhandled case", v72, 0xCu);
      sub_1000064E0(v73);
    }

    v74 = v69;
  }

  v38(v74, v17);
LABEL_25:
  v108 = a9;
  v83 = *(v104 + 16);
  if (v83)
  {
    v86 = *(v13 + 16);
    v84 = v13 + 16;
    v85 = v86;
    v87 = v104 + ((*(v84 + 64) + 32) & ~*(v84 + 64));
    v88 = *(v84 + 56);
    do
    {
      v85(v16, v87, v12);
      URL.stopAccessingSecurityScopedResource()();
      (*(v84 - 8))(v16, v12);
      v87 += v88;
      --v83;
    }

    while (v83);
  }

  v89 = swift_allocObject();
  v90 = v109;
  v91 = v105;
  v92 = v106;
  v89[2] = v109;
  v89[3] = v91;
  v93 = v108;
  v89[4] = v92;
  v89[5] = v93;
  v89[6] = a10;
  v94 = v90;

  DOCRunInMainThread(_:)();
}

void sub_100071728(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v1)
  {
    v2 = v1;
    v3 = _convertErrorToNSError(_:)();
    v4 = String._bridgeToObjectiveC()();
    DOCPresentAlertForErrorWithForceHandler();
  }
}

void sub_1000717DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100071848(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v48 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v16 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v44 = a4;
    v45 = v24;
    v46 = v23;
    static Logger.UI.getter();
    sub_100042774(a8, v20, &unk_1000BCA20, &qword_100090BC0);
    v27 = a3;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v30 = 136315906;
      *(v30 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100094600, &v51);
      *(v30 + 12) = 2080;
      v31 = swift_allocObject();
      *(v31 + 16) = v27;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_100074F80;
      *(v32 + 24) = v31;
      v49 = sub_100074F64;
      v50 = v32;
      v33 = v27;
      sub_10000589C(&unk_1000BCEE0, qword_1000911A0);
      v34 = String.init<A>(describing:)();
      v36 = sub_100037B98(v34, v35, &v51);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_100037B98(v44, a5, &v51);
      *(v30 + 32) = 2080;
      sub_100042774(v20, v47, &unk_1000BCA20, &qword_100090BC0);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      sub_100006390(v20, &unk_1000BCA20, &qword_100090BC0);
      v40 = sub_100037B98(v37, v39, &v51);

      *(v30 + 34) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s FAILED scene: %s contextID: %s, iconURL: %s", v30, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100006390(v20, &unk_1000BCA20, &qword_100090BC0);
    }

    return (*(v45 + 8))(v26, v46);
  }

  else
  {
    sub_100041D18(a1, a2);
    sub_1000671E4(a4, a5, a6, a7, a1, a2);

    return sub_100041D6C(a1, a2);
  }
}

uint64_t sub_100071CF4()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  v2 = objc_msgSendSuper2(&v14, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  _StringGuts.grow(_:)(71);
  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = 0x8000000100094490;
  String.append(_:)(v7);
  v8 = [v1 portalLayer];
  [v8 sourceLayerRenderId];

  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._object = 0x80000001000944C0;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v10);
  v11 = [v1 portalLayer];
  [v11 sourceContextId];

  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  return 0;
}

id sub_100071FD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100072100(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100072154(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007224C;

  return v7(a1);
}

uint64_t sub_10007224C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100072358()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100072398()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_100068B8C(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1000723A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000723D0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1000682D4(v0[2]);
}

uint64_t sub_100072400()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_100041D80(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100072450()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  sub_100067500(v0[2]);
}

uint64_t sub_10007246C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100072540()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_100066C7C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000725AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100072620()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100072660()
{
  result = qword_1000BCE48;
  if (!qword_1000BCE48)
  {
    sub_10001A2A8(255, &qword_1000BCE40, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BCE48);
  }

  return result;
}

uint64_t sub_1000726C8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v7);

  v13 = *(v0 + v8 + 8);

  v14 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v3 | 7);
}

uint64_t sub_1000727F8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v15 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100041F4C;

  return sub_10006E910(a1, v21, v20, v1 + v5, v11, v12, v13, v15);
}

uint64_t sub_10007297C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100043474;

  return sub_100072154(a1, v5);
}

uint64_t sub_100072A34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F4C;

  return sub_100072154(a1, v5);
}

uint64_t sub_100072B04()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

void sub_100072B9C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v61 = v4;
    v62 = v3;
    v13 = objc_allocWithZone(NSString);
    v14 = a1;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 initWithString:v15];

    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10008F940;
    *(v17 + 32) = v1;
    v18 = v1;
    sub_10000589C(&unk_1000BCEF0, &unk_1000911B8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v60 = v16;
    [v12 _registerBSActionResponderArray:isa forKey:v16];

    type metadata accessor for DOCSBSceneRootViewController();
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v20[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = &off_1000AFA20;
    swift_unknownObjectWeakAssign();
    v21 = *&v18[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    *&v18[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController] = v20;
    v22 = v20;

    v23 = [objc_allocWithZone(UIWindow) initWithWindowScene:v12];
    v24 = OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window;
    v25 = *&v18[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window];
    *&v18[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window] = v23;
    v26 = v23;

    if (v26)
    {
      [v26 setRootViewController:v22];
    }

    static Logger.UI.getter();
    v27 = v14;
    v28 = v18;
    v29 = v22;
    v30 = v10;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    v59 = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v57 = v30;
      v58 = v29;
      v56 = v27;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v33 = 136316162;
      *(v33 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093F30, &v63);
      *(v33 + 12) = 2080;
      v35 = [v12 session];
      v36 = [v35 persistentIdentifier];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_100037B98(v37, v39, &v63);

      *(v33 + 14) = v40;
      *(v33 + 22) = 2112;
      *(v33 + 24) = v12;
      *v34 = v12;
      *(v33 + 32) = 2112;
      v55 = v24;
      v41 = *&v18[v24];
      if (!v41)
      {

        __break(1u);
        return;
      }

      v27 = v56;
      v42 = v56;
      v43 = v41;
      v29 = v58;

      *(v33 + 34) = v43;
      *(v33 + 42) = 2112;
      *(v33 + 44) = v29;
      v34[1] = v41;
      v34[2] = v20;
      v44 = v29;
      _os_log_impl(&_mh_execute_header, v31, v59, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v33, 0x34u);
      sub_10000589C(&qword_1000BC328, &qword_100090AD0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      (*(v61 + 8))(v57, v62);
      v24 = v55;
    }

    else
    {

      (*(v61 + 8))(v30, v62);
    }

    v53 = *&v18[v24];
    [v53 makeKeyAndVisible];
  }

  else
  {
    static Logger.Application.getter();
    v45 = a1;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v63 = v49;
      *v48 = 136315138;
      swift_getObjectType();
      v50 = _typeName(_:qualified:)();
      v52 = sub_100037B98(v50, v51, &v63);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Denying creation of browser window / scene.  Unexpected scene type received: %s)", v48, 0xCu);
      sub_1000064E0(v49);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000731B8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100093DC0, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1000733EC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100093EC0, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100073620(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100093EA0, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100073854(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100093E80, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100073A88(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093E60, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100073CBC(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v9;
  v1[14] = v8;

  return _swift_task_switch(sub_100073E18, v9, v8);
}

uint64_t sub_100073E18()
{
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = objc_opt_self();
    *(v0 + 128) = v3;
    v4 = *(v2 + 80);
    *(v0 + 208) = v4;
    *(v0 + 136) = *(v2 + 72);
    v5 = *(v2 + 16);
    *(v0 + 144) = v5;
    *(v0 + 152) = 0;
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 32);
    v9 = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 160) = _swiftEmptyArrayStorage;
    *(v0 + 168) = v9;
    v5(v6, v8 + ((v4 + 32) & ~v4), v7);
    *(v0 + 176) = [v3 defaultManager];
    v10 = async function pointer to FPItemManager.doc_fetchItem(for:)[1];
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_100073FC4;
    v12 = *(v0 + 88);

    return FPItemManager.doc_fetchItem(for:)(v12);
  }

  else
  {
    v13 = *(v0 + 96);

    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 56);

    v17 = *(v0 + 8);

    return v17(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100073FC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v9 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = *(v3 + 104);
    v6 = *(v3 + 112);
    v7 = sub_1000742EC;
  }

  else
  {

    v5 = *(v3 + 104);
    v6 = *(v3 + 112);
    v7 = sub_1000740E0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000740E0()
{
  v1 = *(v0 + 192);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v22 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 152) + 1;
  if (v7 == *(v0 + 120))
  {
    v8 = *(v0 + 96);

    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 56);

    v12 = *(v0 + 8);

    return v12(v6);
  }

  else
  {
    *(v0 + 152) = v7;
    *(v0 + 160) = v6;
    v14 = *(v0 + 144);
    v15 = *(v0 + 128);
    v16 = *(v0 + 88);
    v17 = *(v0 + 64);
    v18 = *(v0 + 32) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 136) * v7;
    *(v0 + 168) = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v16, v18, v17);
    *(v0 + 176) = [v15 defaultManager];
    v19 = async function pointer to FPItemManager.doc_fetchItem(for:)[1];
    v20 = swift_task_alloc();
    *(v0 + 184) = v20;
    *v20 = v0;
    v20[1] = sub_100073FC4;
    v21 = *(v0 + 88);

    return FPItemManager.doc_fetchItem(for:)(v21);
  }
}

uint64_t sub_1000742EC()
{
  v53 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);

  static Logger.UI.getter();
  v3(v4, v5, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v47 = *(v0 + 200);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v50 = *(v0 + 56);
    v51 = *(v0 + 88);
    v48 = *(v0 + 48);
    v49 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100037B98(0xD000000000000010, 0x80000001000945A0, &v52);
    *(v13 + 12) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_100037B98(v14, v16, &v52);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    *(v0 + 24) = v47;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC330, &qword_100090AD8);
    v19 = String.init<A>(describing:)();
    v21 = sub_100037B98(v19, v20, &v52);

    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s could not fetch item for URL: %s error: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v48 + 8))(v50, v49);
    v17(v51, v12);
  }

  else
  {
    v22 = *(v0 + 200);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);

    v30 = *(v26 + 8);
    v30(v24, v25);
    (*(v28 + 8))(v27, v29);
    v30(v23, v25);
  }

  v31 = *(v0 + 152) + 1;
  if (v31 == *(v0 + 120))
  {
    v32 = *(v0 + 160);
    v33 = *(v0 + 96);

    v35 = *(v0 + 80);
    v34 = *(v0 + 88);
    v36 = *(v0 + 56);

    v37 = *(v0 + 8);

    return v37(v32);
  }

  else
  {
    *(v0 + 152) = v31;
    v39 = *(v0 + 144);
    v40 = *(v0 + 128);
    v41 = *(v0 + 88);
    v42 = *(v0 + 64);
    v43 = *(v0 + 32) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 136) * v31;
    *(v0 + 168) = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v41, v43, v42);
    *(v0 + 176) = [v40 defaultManager];
    v44 = async function pointer to FPItemManager.doc_fetchItem(for:)[1];
    v45 = swift_task_alloc();
    *(v0 + 184) = v45;
    *v45 = v0;
    v45[1] = sub_100073FC4;
    v46 = *(v0 + 88);

    return FPItemManager.doc_fetchItem(for:)(v46);
  }
}

uint64_t sub_10007474C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10007483C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100043474;

  return sub_10006FFE0(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_100074984()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100074A0C(unint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000705C4(a1, v4);
}

uint64_t sub_100074A7C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  return sub_100065F1C(v1, v2, v3, v4);
}

uint64_t sub_100074AAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074AF8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100074B40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000661B0(v0[2]);
}

uint64_t sub_100074B50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074B90()
{
  v1 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(v0 + 32);

  v6 = *(v0 + 48);

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100074CC0(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_100071848(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100074D7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074DB8(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_100074DEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100074E40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100074E98()
{
  v1 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100074ED8()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

void sub_100074FCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_100075018(double a1, double a2)
{
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10007C410;
  *(v7 + 24) = v6;
  v12[4] = sub_10007C478;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100074FCC;
  v12[3] = &unk_1000B0358;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

id sub_1000751CC(uint64_t a1)
{
  v2 = type metadata accessor for UICornerRadius();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICornerConfiguration();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (_UISolariumEnabled())
  {
    static UICornerRadius.containerConcentric(minimum:)();
    static UICornerConfiguration.uniformCorners(radius:)();
    (*(v3 + 8))(v6, v2);
    UIView.cornerConfiguration.setter();
  }

  else
  {
    v10 = [v9 layer];
    [v10 setCornerCurve:kCACornerCurveContinuous];

    v11 = [v9 layer];
    [v11 setCornerRadius:sub_10007547C()];

    v12 = [v9 layer];
    [v12 setMasksToBounds:1];
  }

  v13 = [v9 layer];
  [v13 setCompositingFilter:kCAFilterPlusL];

  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected))
  {
    v14 = 0.0980392157;
  }

  else
  {
    v14 = 0.152941176;
  }

  v15 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v14 green:v14 blue:v14 alpha:1.0];
  [v9 setBackgroundColor:v15];

  return v9;
}

double sub_10007547C()
{
  v1 = (v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  strcpy(v1, "ףp=\nW+@");
  return 13.67;
}

double sub_1000754BC()
{
  v1 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
    {
      v2 = &OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeList;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid;
    }

    v3 = v0 + *v2;
    result = *v3;
    v5 = *(v3 + 8);
    *v1 = *v3;
    *(v1 + 8) = v5;
    *(v1 + 16) = 0;
  }

  else
  {
    result = *v1;
    v6 = *(v1 + 8);
  }

  return result;
}

id sub_100075514(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  v5 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  [v2 addSubview:v5];

  v6 = sub_100075A44();
  [v2 addSubview:v6];

  sub_1000754BC();
  v7 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale);
  UIRoundToScale();
  v9 = v8;
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8) + v7 * -6.0 + v7 * -6.0;
  }

  else
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8);
  }

  v39 = objc_opt_self();
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100091200;
  v12 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView;
  v13 = [*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView) widthAnchor];
  v14 = [v13 constraintLessThanOrEqualToConstant:v7 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize)];

  *(v11 + 32) = v14;
  v15 = [*(a1 + v12) heightAnchor];
  v16 = [v15 constraintLessThanOrEqualToConstant:v10];

  *(v11 + 40) = v16;
  v17 = [*(a1 + v12) centerXAnchor];
  v18 = [v2 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v11 + 48) = v19;
  v20 = [*(a1 + v12) bottomAnchor];
  v21 = [v2 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v11 + 56) = v22;
  v23 = [*(a1 + v12) topAnchor];
  v24 = [v2 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v11 + 64) = v25;
  v26 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge;
  v27 = [*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge) centerXAnchor];
  v28 = [*(a1 + v12) centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v9];

  *(v11 + 72) = v29;
  v30 = [*(a1 + v26) bottomAnchor];
  v31 = [*(a1 + v12) bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v11 + 80) = v32;
  v33 = [*(a1 + v26) widthAnchor];
  v34 = [v33 constraintEqualToConstant:17.0];

  *(v11 + 88) = v34;
  v35 = [*(a1 + v26) heightAnchor];
  v36 = [v35 constraintEqualToConstant:17.0];

  *(v11 + 96) = v36;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:isa];

  return v2;
}

id sub_100075A44()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setContentMode:1];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100075AFC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setContentMode:1];
  if (_UISolariumEnabled())
  {
    v3 = 5.0;
  }

  else
  {
    v3 = 3.0;
  }

  v4 = [v2 layer];
  [v4 setCornerRadius:v3 * *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale)];

  v5 = [v2 layer];
  [v5 setMasksToBounds:1];

  v6 = [v2 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  return v2;
}

id sub_100075C40(uint64_t a1)
{
  v2 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
  v47 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = v2;
  [v3 addSubview:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  v7 = [v3 layer];
  [v7 setAllowsGroupBlending:0];

  v8 = objc_opt_self();
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100090F10;
  v10 = [v4 topAnchor];

  v11 = [v3 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [v4 leadingAnchor];

  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [v4 trailingAnchor];

  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  p_type = &stru_1000B6FF0.type;
  v46 = v8;
  [v8 activateConstraints:isa];

  LODWORD(isa) = *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout);
  v21 = &stru_1000B6FF0.type;
  if (isa == 1)
  {
    v22 = v47;
    [v3 addSubview:v22];
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10008F920;
    v24 = [v22 topAnchor];
    v25 = [v4 bottomAnchor];

    v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];
    *(v23 + 32) = v26;
    v27 = [v22 leadingAnchor];

    v28 = [v3 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v23 + 40) = v29;
    v30 = [v22 trailingAnchor];

    v31 = [v3 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    v21 = (&stru_1000B6FF0 + 16);
    *(v23 + 48) = v32;
    p_type = (&stru_1000B6FF0 + 16);
    v33 = (v23 + 56);
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10008F940;
    v33 = (v34 + 32);
    v22 = v4;
  }

  v35 = [v22 v21[369]];

  v36 = [v3 v21[369]];
  v37 = [v35 constraintEqualToAnchor:v36];

  *v33 = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v46 p_type[371]];

  v39 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
  [v3 addSubview:v39];

  v40 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay);
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v44 = DOCConstraintsToResizeWithReferenceView();
  if (!v44)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v46 p_type[371]];

  return v3;
}

id sub_100076264(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000762C8(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = &kCAFilterPlusL;
  if (v6 != 2)
  {
    v7 = &kCAFilterPlusD;
  }

  v8 = *v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  [v4 setCompositingFilter:v9];

  [v2 setNumberOfLines:sub_10007645C()];
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  [v2 setTextAlignment:v10];
  return v2;
}

uint64_t sub_10007645C()
{
  if (v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout] != 1)
  {
    return 1;
  }

  [v0 frame];
  if (v1 >= 58.0)
  {
    v3 = 1;
  }

  else
  {
    [v0 frame];
    v3 = v2 <= 0.0;
  }

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = static UIContentSizeCategory.>= infix(_:_:)();
  if (v3 || (v5 & 1) == 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id sub_10007653C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  [v2 setNumberOfLines:sub_10007645C()];
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v2 setTextAlignment:v4];
  return v2;
}

id sub_100076620(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() tertiaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = &kCAFilterPlusL;
  if (v6 != 2)
  {
    v7 = &kCAFilterPlusD;
  }

  v8 = *v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  [v4 setCompositingFilter:v9];

  [v2 setNumberOfLines:1];
  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout))
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  [v2 setTextAlignment:v10];
  return v2;
}

uint64_t sub_1000767B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100042EC8(a1, *(a1 + 24));
  v2 = UIContentSizeCategoryExtraExtraExtraLarge;
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

void sub_100076804(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v6 - 8);
  v7 = *(v103 + 64);
  __chkstk_darwin(v6);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v101 = *(v10 - 8);
  v102 = v10;
  v11 = *(v101 + 64);
  __chkstk_darwin(v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000589C(&unk_1000BC340, &unk_100091350);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v99 = &ObjectType - v16;
  v17 = type metadata accessor for ImageOptions();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  v21 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  v22 = v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8];
  v23 = v22 == 2 && v21 == 0;
  v100 = &ObjectType - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v23)
  {
    v24 = 0;
    if (a2 == 2 && !a1)
    {
      return;
    }
  }

  else if (v22 >= 2)
  {
    v24 = 0;
  }

  else
  {
    sub_10007B494(v21, v22);
    v24 = [v21 thumbnailIdentifier];
  }

  if (a2 > 1u)
  {
    if (v24)
    {
LABEL_17:
      v26 = v24;
LABEL_19:

      sub_10007B4A8(v21, v22);
LABEL_20:
      v28 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader;
      v29 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
      if (v29)
      {
        [v29 removeListener:v3];
      }

      v30 = *v20;
      if (v20[8])
      {
        if (v20[8] == 1)
        {
          v98 = v28;
          swift_unknownObjectRetain();
          v31 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
          [v31 setLineBreakMode:5];

          v32 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title] setAlpha:1.0];
          v33 = *&v3[v32];
          ObjectType = swift_getObjectType();
          v34 = v33;
          v35 = [v30 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10007BD74(1);
          v37 = v36;

          [v34 setAttributedText:v37];

          v38 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
          [v38 setLineBreakMode:5];

          v39 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] setAlpha:1.0];
          [*&v3[v39] setHidden:0];
          v40 = *&v3[v39];
          v41 = [v30 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10007BD74(0);
          v43 = v42;

          [v40 setAttributedText:v43];

          v44 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
          swift_unknownObjectRetain();
          DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)(UIUserInterfaceSizeClassCompact, 1);
          v45 = String._bridgeToObjectiveC()();

          [v44 setText:v45];

          v46 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:5];
          [*&v3[v46] setAdjustsFontSizeToFitWidth:1];
          [*&v3[v46] setAlpha:1.0];
          [v3 setUserInteractionEnabled:1];
          v47 = sub_1000754BC();
          v48 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale];
          v49 = v47 * v48;
          v50 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
          v51 = [v3 traitCollection];
          v52 = [v3 traitCollection];
          [v52 displayScale];
          v54 = v53;

          if (v49 <= 0.0 || v48 * v50 <= 0.0 || v54 <= 0.0)
          {

            sub_10007B4A8(v30, 1u);
            v55 = 0;
          }

          else
          {
            sub_10007B494(v30, 1u);
            nullsub_1(floor(v49), floor(v48 * v50));
            swift_unknownObjectRetain();
            UITraitCollection._ifColorForIconFolderTintComponents.getter();
            ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
            if (qword_1000BB738 != -1)
            {
              swift_once();
            }

            objc_allocWithZone(type metadata accessor for NodeThumbnail());

            v55 = NodeThumbnail.init(node:imageOptions:imageCache:)();
            NodeThumbnail.addListener(_:)();
            sub_10007B4A8(v30, 1u);

            sub_10007B4A8(v30, 1u);
          }

          v86 = v98;
          v87 = *&v3[v98];
          *&v3[v98] = v55;
          swift_unknownObjectRelease();
          if ([v30 isFolder])
          {
            if (qword_1000BB740 != -1)
            {
              swift_once();
            }

            v100 = qword_1000BF180;
            v88 = swift_allocObject();
            *(v88 + 16) = v3;
            aBlock[4] = sub_10007C2C4;
            aBlock[5] = v88;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10000D508;
            aBlock[3] = &unk_1000B01A0;
            v89 = _Block_copy(aBlock);
            v90 = v3;
            static DispatchQoS.unspecified.getter();
            v104 = _swiftEmptyArrayStorage;
            sub_10007C350(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
            sub_10000589C(&unk_1000BCE30, &unk_100090E70);
            sub_10007D18C(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v89);
            sub_10007B4A8(v30, 1u);
            (*(v103 + 8))(v9, v6);
            (*(v101 + 8))(v13, v102);
          }

          else
          {
            v94 = *&v3[v86];
            if (v94)
            {
              v95 = [v94 thumbnail];
            }

            else
            {
              v95 = 0;
            }

            sub_10007776C(v95, 0);
            sub_10007B4A8(v30, 1u);
          }
        }

        else
        {
          v76 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
          v77 = [v76 layer];

          [v77 setBorderWidth:0.0];
          v78 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView;
          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView] setImage:0];
          [*&v3[v78] setHidden:1];
          v79 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
          [v79 setAttributedText:0];

          v80 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title];
          v81 = String._bridgeToObjectiveC()();
          [v80 setText:v81];

          v82 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
          [v82 setHidden:1];

          [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
          v83 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
          v84 = String._bridgeToObjectiveC()();
          [v83 setText:v84];

          [v3 setUserInteractionEnabled:0];
          v85 = sub_100075A44();
          [v85 setImage:0];
        }
      }

      else
      {
        v56 = *v20;
        swift_unknownObjectRetain();
        v57 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
        [v57 setAttributedText:0];

        v58 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title;
        v59 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title];
        v60._countAndFlagsBits = 3081666804;
        v60._object = 0xA400000000000000;
        String.init(repeating:count:)(v60, 32);
        v61 = String._bridgeToObjectiveC()();

        [v59 setText:v61];

        [*&v3[v58] setLineBreakMode:1];
        [*&v3[v58] setAlpha:0.08];
        v62 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
        [v62 setHidden:1];

        [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
        v63 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
        v64._countAndFlagsBits = 3081666804;
        v64._object = 0xA400000000000000;
        String.init(repeating:count:)(v64, 8);
        v65 = String._bridgeToObjectiveC()();

        [v63 setText:v65];

        v66 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle;
        [*&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:1];
        [*&v3[v66] setAlpha:0.08];
        [v3 setUserInteractionEnabled:1];
        v67 = sub_1000754BC();
        v68 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale];
        v69 = v67 * v68;
        v70 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
        swift_unknownObjectRetain();
        v71 = [v3 traitCollection];
        v72 = [v3 traitCollection];
        [v72 displayScale];
        v74 = v73;

        if (v69 <= 0.0 || v68 * v70 <= 0.0 || v74 <= 0.0)
        {

          sub_10007B4A8(v30, 0);
          v75 = 0;
        }

        else
        {
          sub_10007B494(v30, 0);
          nullsub_1(floor(v69), floor(v68 * v70));
          swift_unknownObjectRetain();
          UITraitCollection._ifColorForIconFolderTintComponents.getter();
          ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
          if (qword_1000BB738 != -1)
          {
            swift_once();
          }

          objc_allocWithZone(type metadata accessor for NodeThumbnail());

          v75 = NodeThumbnail.init(node:imageOptions:imageCache:)();
          NodeThumbnail.addListener(_:)();
          sub_10007B4A8(v30, 0);

          sub_10007B4A8(v30, 0);
        }

        v91 = *&v3[v28];
        *&v3[v28] = v75;
        swift_unknownObjectRelease();
        v92 = *&v3[v28];
        if (v92)
        {
          v93 = [v92 thumbnail];
        }

        else
        {
          v93 = 0;
        }

        sub_10007776C(v93, 1);

        v96 = sub_100075A44();
        [v96 setImage:0];

        sub_10007B4A8(v30, 0);
      }

      sub_100077D0C();
      return;
    }
  }

  else
  {
    v25 = [a1 thumbnailIdentifier];
    v26 = v25;
    if (v24)
    {
      if (v25)
      {
        sub_10001A2A8(0, &unk_1000BD128, DOCNodeThumbnailIdentifier_ptr);
        v27 = static NSObject.== infix(_:_:)();

        sub_10007B4A8(v21, v22);
        if (v27)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v25)
    {
      goto LABEL_19;
    }
  }

  sub_10007B4A8(v21, v22);
}

void sub_10007776C(void *a1, char a2)
{
  v3 = v2;
  if (!a1 || ([a1 size], v6 == 0.0) || (v8 = v7, v7 == 0.0))
  {
    v13 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    [v13 setImage:0];

    v14 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView);

    [v14 setHidden:1];
  }

  else
  {
    v9 = v6;
    v10 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint;
    v11 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint);
    if (v11)
    {
      [v11 setActive:0];
      v12 = *(v2 + v10);
    }

    else
    {
      v12 = 0;
    }

    *(v2 + v10) = 0;

    v15 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    v16 = [v15 widthAnchor];

    v17 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView;
    v18 = [*(v3 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView) heightAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 multiplier:v9 / v8];

    [v19 setActive:1];
    v20 = *(v3 + v10);
    *(v3 + v10) = v19;
    v23 = v19;

    if (a2)
    {
      v21 = [objc_opt_self() systemBackgroundColor];
      v22 = sub_100075018(v9, v8);

      [*(v3 + v17) setImage:v22];
    }

    else
    {
      [*(v3 + v17) setImage:a1];
    }

    [*(v3 + v17) setHidden:0];
  }
}

uint64_t sub_1000779F4(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
  if (v11)
  {
    v12 = [v11 thumbnail];
  }

  else
  {
    v12 = 0;
  }

  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v12;
  aBlock[4] = sub_10007C324;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000B01F0;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007C350(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
  sub_10007D18C(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v22 + 8))(v5, v2);
  return (*(v20 + 8))(v10, v21);
}

void sub_100077D0C()
{
  v1 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  if (!v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8])
  {
    v12 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
    swift_unknownObjectRetain();
    v13 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    v14 = [v13 layer];

    v15 = objc_opt_self();
    v16 = [v0 traitCollection];
    [v15 separatorThicknessForTraitCollection:v16];
    v18 = v17;

    [v14 setBorderWidth:v18];
    v10 = v1;
    v11 = 0;
LABEL_9:

    sub_10007B4A8(v10, v11);
    return;
  }

  if (v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
    v3 = 0.0;
    if (([swift_unknownObjectRetain() isFolder] & 1) == 0)
    {
      v4 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
      if (v4)
      {
        if ([v4 isRepresentativeIcon])
        {
          v5 = objc_opt_self();
          v6 = [v0 traitCollection];
          [v5 separatorThicknessForTraitCollection:v6];
          v3 = v7;
        }
      }
    }

    v8 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    v9 = [v8 layer];

    [v9 setBorderWidth:v3];
    v10 = v1;
    v11 = 1;
    goto LABEL_9;
  }

  v19 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  v20 = [v19 layer];

  [v20 setBorderWidth:0.0];
}

char *sub_100077F88(uint64_t a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground] = 0;
  v20 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_listBackgroundBlurEffect;
  *&v9[v20] = [objc_opt_self() effectWithStyle:7];
  v21 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid];
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid] = xmmword_100091210;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeList] = xmmword_100091220;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader] = 0;
  v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = &v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
  *v24 = 0;
  v24[8] = 2;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale] = a9;
  v9[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout] = a4;
  if ((a3 & 1) == 0)
  {
    *v23 = a1;
    v23[1] = a2;
  }

  v95.receiver = v9;
  v95.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v95, "initWithFrame:", a5, a6, a7, a8);
  v26 = v25;
  if (a4)
  {
    v27 = [v25 layer];
    [v27 setAllowsGroupBlending:0];

    v28 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground, sub_1000751CC);
    [v26 addSubview:v28];

    v29 = *&v26[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground];
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    isa = DOCConstraintsToResizeWithSuperview();
    if (!isa)
    {
      sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [objc_opt_self() activateConstraints:isa];
  }

  v34 = v26;
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor:v37];

  v38 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer, sub_100075514);
  [v36 addSubview:v38];

  v39 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer, sub_100075C40);
  [v36 addSubview:v39];

  if (a4)
  {

    v94 = objc_opt_self();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100091240;
    v41 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer;
    v42 = [*&v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v43 = [v36 leadingAnchor];
    v44 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale;
    v45 = [v42 constraintEqualToAnchor:v43 constant:*&v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale] * 6.0];

    *(v40 + 32) = v45;
    v46 = &selRef_centerYAnchor;
    v47 = [*&v36[v41] centerYAnchor];
    v48 = [v36 centerYAnchor];

    v49 = [v47 constraintEqualToAnchor:v48];
    *(v40 + 40) = v49;
    v50 = [*&v36[v41] heightAnchor];
    sub_1000754BC();
    v51 = &v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
    v52 = [v50 constraintLessThanOrEqualToConstant:*&v36[v44] * *&v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8]];

    *(v40 + 48) = v52;
    v53 = [*&v36[v41] widthAnchor];
    v54 = [v53 constraintEqualToConstant:*v51 * *&v36[v44]];

    *(v40 + 56) = v54;
    v55 = &v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer];
    v56 = [*&v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v57 = [*&v36[v41] trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:*&v36[v44] * 6.0];

    *(v40 + 64) = v58;
    v59 = [*v55 trailingAnchor];
    v60 = [v36 trailingAnchor];

    v61 = [v59 constraintEqualToAnchor:v60 constant:*&v36[v44] * -6.0];
    *(v40 + 72) = v61;
    v62 = (v40 + 80);
  }

  else
  {
    v94 = objc_opt_self();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100091230;
    v64 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer;
    v65 = [*&v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v66 = [v36 leadingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v63 + 32) = v67;
    v68 = [*&v36[v64] trailingAnchor];
    v69 = [v36 trailingAnchor];

    v70 = [v68 constraintEqualToAnchor:v69];
    *(v63 + 40) = v70;
    v71 = [*&v36[v64] topAnchor];
    v72 = [v36 topAnchor];

    v73 = [v71 constraintEqualToAnchor:v72];
    *(v63 + 48) = v73;
    v74 = [*&v36[v64] widthAnchor];
    v75 = sub_1000754BC();
    v76 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale;
    v77 = [v74 constraintGreaterThanOrEqualToConstant:v75 * *&v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_layoutScale]];

    *(v63 + 56) = v77;
    v55 = &v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer];
    v78 = [*&v36[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v79 = [v36 leadingAnchor];

    v80 = [v78 constraintEqualToAnchor:v79];
    *(v63 + 64) = v80;
    v81 = [*v55 trailingAnchor];
    v82 = [v36 trailingAnchor];

    v83 = [v81 constraintEqualToAnchor:v82];
    *(v63 + 72) = v83;
    v84 = [*v55 topAnchor];
    v46 = &selRef_bottomAnchor;
    v85 = [*&v36[v64] bottomAnchor];
    v86 = [v84 constraintEqualToAnchor:v85 constant:*&v36[v76] * 6.0];

    *(v63 + 80) = v86;
    v62 = (v63 + 88);
  }

  v87 = [*v55 *v46];
  v88 = [v36 *v46];

  v89 = [v87 constraintEqualToAnchor:v88];
  *v62 = v89;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  v90 = Array._bridgeToObjectiveC()().super.isa;

  [v94 activateConstraints:v90];

  v91 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v36 action:"handleTap:"];
  [v36 addGestureRecognizer:v91];
  v92 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v36];
  [v36 addInteraction:v92];

  return v36;
}

void sub_100078A9C()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    v2 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v3 = sub_10007B8DC(&qword_1000BCF10, &qword_1000BCF18, v2, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v4 = v3;

    v5 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v6 = sub_10007B8DC(&qword_1000BCF20, &qword_1000BCF28, v5, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v7 = v6;

    v8 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
    v9 = v4;
    [v8 setFont:v9];

    v10 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
    [v10 setFont:v9];

    v11 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
    [v11 setFont:v7];

    v12 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title];
    [v12 setNumberOfLines:sub_10007645C()];

    v13 = *&v0[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay];
    [v13 setNumberOfLines:sub_10007645C()];
  }
}

void sub_100078D90()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout) == 1)
  {
    v1 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground, sub_1000751CC);
    if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected))
    {
      v2 = 0.0980392157;
    }

    else
    {
      v2 = 0.152941176;
    }

    v3 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v2 green:v2 blue:v2 alpha:1.0];
    [v1 setBackgroundColor:v3];
  }

  v4 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  v5 = [v4 layer];

  v6 = [objc_opt_self() separatorColor];
  v7 = [v6 colorWithAlphaComponent:0.15];

  v8 = [v7 CGColor];
  [v5 setBorderColor:v8];

  v9 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
  [v9 setNumberOfLines:sub_10007645C()];

  v10 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
  [v10 setNumberOfLines:sub_10007645C()];
}

uint64_t sub_10007900C()
{
  v0 = type metadata accessor for ImageCache();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = ImageCache.init()();
  qword_1000BF178 = result;
  return result;
}

uint64_t sub_10007904C()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10007C350(&qword_1000BD138, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000589C(&qword_1000BD140, &unk_100091360);
  sub_10007D18C(&unk_1000BD148, &qword_1000BD140, &unk_100091360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000BF180 = result;
  return result;
}

uint64_t sub_1000792AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8);
    if (v3 <= 1)
    {
      v4 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
      swift_getObjectType();
      sub_10007B494(v4, v3);
      v5 = DOCNode.fpfs_syncFetchFPItem()();
      sub_10007B4A8(v4, v3);
      if (v5)
      {
        v6 = v2 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 8);
          ObjectType = swift_getObjectType();
          (*(v7 + 8))(v2, v5, ObjectType, v7);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10007943C(objc_class *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000589C(&unk_1000BC340, &unk_100091350);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v59 = &v59 - v7;
  v8 = type metadata accessor for ImageOptions();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UITraitCollection.Traits();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  v15 = __chkstk_darwin(v11);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.receiver = v2;
  v62.super_class = ObjectType;
  [(objc_class *)&v62 traitCollectionDidChange:a1, v15];
  v18 = [v2 traitCollection];
  sub_10000589C(&unk_1000BC530, &qword_100090D00);
  v19 = *(v12 + 72);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100090DF0;
  static UITraitCollection.Traits.userInterfaceStyle.getter();
  static UITraitCollection.Traits.displayScale.getter();
  v61 = v21;
  sub_10007C350(&unk_1000BD180, &type metadata accessor for UITraitCollection.Traits);
  sub_10000589C(&unk_1000BC540, &qword_100090D08);
  sub_10007D18C(&unk_1000BD190, &unk_1000BC540, &qword_100090D08);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LOBYTE(v21) = UITraitCollection.doc_hasChanged(_:comparesTo:)();

  (*(v13 + 8))(v17, v11);
  if ((v21 & 1) != 0 || (v22 = [v2 traitCollection], v63.value.super.isa = a1, v23 = UITraitCollection.traitCollectionTintEqual(_:)(v63), v22, !v23))
  {
    v24 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader;
    v25 = *&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader];
    if (v25)
    {
      [v25 removeListener:v2];
    }

    v26 = &v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
    v27 = v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8];
    if (v27 >= 2)
    {
      v28 = 0;
    }

    else
    {
      v28 = *v26;
      sub_10007B494(*v26, v27);
    }

    v29 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
    [v29 frame];
    v31 = v30;
    v33 = v32;

    v34 = [v2 traitCollection];
    v35 = [v2 traitCollection];
    [v35 displayScale];
    v37 = v36;

    if (v28)
    {
      if (v31 > 0.0 && v33 > 0.0 && v37 > 0.0)
      {
        nullsub_1(floor(v31), floor(v33));
        swift_unknownObjectRetain_n();
        UITraitCollection._ifColorForIconFolderTintComponents.getter();
        ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
        if (qword_1000BB738 != -1)
        {
          swift_once();
        }

        objc_allocWithZone(type metadata accessor for NodeThumbnail());

        v38 = NodeThumbnail.init(node:imageOptions:imageCache:)();
        NodeThumbnail.addListener(_:)();

        swift_unknownObjectRelease_n();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    v38 = 0;
LABEL_17:
    v39 = *&v2[v24];
    *&v2[v24] = v38;
    swift_unknownObjectRelease();
  }

  v40 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v41 = sub_10007B8DC(&qword_1000BCF10, &qword_1000BCF18, v40, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v42 = v41;

  v43 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v44 = sub_10007B8DC(&qword_1000BCF20, &qword_1000BCF28, v43, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v45 = v44;
  v60 = v45;

  v46 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title, sub_1000762C8);
  v47 = v42;
  [v46 setFont:v47];

  v48 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay, sub_10007653C);
  [v48 setFont:v47];

  v49 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle, sub_100076620);
  [v49 setFont:v45];

  v50 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title;
  v51 = [*&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title] layer];
  v52 = [v2 traitCollection];
  [v52 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = String._bridgeToObjectiveC()();

  [v51 setCompositingFilter:v53];

  v54 = [*&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle] layer];
  v55 = [v2 traitCollection];
  [v55 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = String._bridgeToObjectiveC()();

  [v54 setCompositingFilter:v56];

  v57 = *&v2[v50];
  [v57 setNumberOfLines:sub_10007645C()];

  v58 = *&v2[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay];
  [v58 setNumberOfLines:sub_10007645C()];
}

uint64_t sub_100079FDC(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8] <= 1u && [*&v1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind] isFolder])
  {
    v23 = v4;
    if (qword_1000BB740 != -1)
    {
      swift_once();
    }

    v22[1] = qword_1000BF180;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v1;
    aBlock[4] = sub_10007D13C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000B0538;
    v15 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v16 = v1;
    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10007C350(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_10007D18C(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v23 + 8))(v7, v3);
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v18 = [a1 thumbnail];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v20[4] = v18;
    swift_unknownObjectRetain();

    v21 = v18;
    DOCRunInMainThread(_:)();
  }
}

void sub_10007A3D8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      sub_10007776C(a3, *(Strong + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8) == 0);
      sub_100077D0C();
    }
  }
}

uint64_t sub_10007A474(void *a1)
{
  v2 = [a1 thumbnail];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = v2;

  swift_unknownObjectRetain();
  v5 = v2;
  DOCRunInMainThread(_:)();
}

void sub_10007A5B8(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  sub_100042774(a1, v8, &qword_1000BCA30, &unk_100090E80);
  if (v8[3])
  {
    sub_10001A2A8(0, &unk_1000BD158, UIFont_ptr);
    if (swift_dynamicCast())
    {
      if ((CTFontGetSymbolicTraits(font) & 0x2000) != 0)
      {
        v5 = a2;
        v6 = a3;
      }

      else
      {
        v5 = a2;
        v6 = a3;
      }

      sub_100083A7C(v8, v5, v6);
    }
  }

  else
  {
    sub_100006390(v8, &qword_1000BCA30, &unk_100090E80);
  }
}

uint64_t sub_10007A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_10001A344(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_100006390(v14, &qword_1000BCA30, &unk_100090E80);
}

void sub_10007A758(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected;
  v3 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected);
  *(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected) = a2;
  if (v3 != (a2 & 1) && (*(a1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_useListLayout) & 1) != 0)
  {
    v5 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground, sub_1000751CC);
    if (*(a1 + v2))
    {
      v6 = 0.0980392157;
    }

    else
    {
      v6 = 0.152941176;
    }

    v7 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v6 green:v6 blue:v6 alpha:1.0];
    [v5 setBackgroundColor:v7];
  }
}

void sub_10007AA48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  ObjectType = swift_getObjectType();
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
    sub_10007D008();
    Set.Iterator.init(_cocoa:)();
    v4 = aBlock[6];
    v5 = aBlock[7];
    v6 = aBlock[8];
    v7 = aBlock[9];
    v8 = aBlock[10];
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_19:
      LOBYTE(v13) = 0;
LABEL_20:
      sub_100042A9C();
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      *(v28 + 24) = v13;
      aBlock[4] = sub_10007D22C;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D508;
      aBlock[3] = &unk_1000B03F8;
      v29 = _Block_copy(aBlock);
      v30 = v3;

      [v27 animateWithDuration:v29 animations:0.1];
      _Block_release(v29);
      sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
      sub_10007D008();
      isa = Set._bridgeToObjectiveC()().super.isa;
      v35.receiver = v30;
      v35.super_class = ObjectType;
      objc_msgSendSuper2(&v35, "touchesMoved:withEvent:", isa, a2);

      return;
    }

    sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
    swift_dynamicCast();
    v13 = aBlock[0];
    if (!aBlock[0])
    {
      goto LABEL_20;
    }

LABEL_9:
    [v3 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v13 locationInView:v3];
    v37.x = v22;
    v37.y = v23;
    v38.origin.x = v15;
    v38.origin.y = v17;
    v38.size.width = v19;
    v38.size.height = v21;
    v24 = CGRectContainsPoint(v38, v37);

    if (v24)
    {
      LOBYTE(v13) = 1;
      goto LABEL_20;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v26 - 1) & v26;
    v13 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_19;
    }

    v26 = *(v5 + 8 * v7);
    ++v25;
    if (v26)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_10007AE9C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  ObjectType = swift_getObjectType();
  sub_10001A2A8(0, &qword_1000BD168, UITouch_ptr);
  sub_10007D008();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = 0;
  aBlock[4] = a6;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = a7;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a4;

  [v13 animateWithDuration:v15 animations:0.1];
  _Block_release(v15);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v20.receiver = v16;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, *a8, isa, v17);
}

uint64_t sub_10007B2A0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10007B2BC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10007B2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10007B318(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10007B35C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10007B384(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if (a2 == 2 && a1 == 0)
  {
    v8 = 0;
    if (a4 == 2 && !a3)
    {
      goto LABEL_21;
    }
  }

  else if (a2 > 1u)
  {
    v8 = 0;
  }

  else
  {
    v5 = a3;
    v6 = a4;
    v7 = [a1 thumbnailIdentifier];
    a4 = v6;
    a3 = v5;
    v8 = v7;
  }

  if (a4 > 1u)
  {
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_21:
    v11 = 1;
    return v11 & 1;
  }

  v9 = [a3 thumbnailIdentifier];
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      v11 = 0;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (!v9)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  sub_10001A2A8(0, &unk_1000BD128, DOCNodeThumbnailIdentifier_ptr);
  v11 = static NSObject.== infix(_:_:)();

LABEL_17:
  v10 = v8;
LABEL_18:

  return v11 & 1;
}

uint64_t sub_10007B494(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_10007B4A8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10007B4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BD1B0, &unk_100091390);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100052AAC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10007B5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BD1A8, &qword_100091388);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100042774(v4, &v11, &qword_1000BB928, &qword_100091380);
      v5 = v11;
      result = sub_100052AAC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001A344(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_10007B6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&unk_1000BCAD0, &unk_100091020);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100037A68(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10007B7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BCAC0, &qword_100091010);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100037A68(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_10007B8DC(id *a1, void **a2, void *a3, double a4)
{
  v38 = a3;
  v7 = type metadata accessor for UITraitCollection.Traits();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 64);
  __chkstk_darwin(v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000589C(&unk_1000BC530, &qword_100090D00);
  v13 = *(v8 + 72);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100090DF0;
  static UITraitCollection.Traits.sizeCategory.getter();
  static UITraitCollection.Traits.legibilityWeight.getter();
  v39 = v15;
  sub_10007C350(&unk_1000BD180, &type metadata accessor for UITraitCollection.Traits);
  sub_10000589C(&unk_1000BC540, &qword_100090D08);
  sub_10007D18C(&unk_1000BD190, &unk_1000BC540, &qword_100090D08);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = a2;
  v16 = *a2;
  v17 = v38;
  v18 = UITraitCollection.doc_hasChanged(_:comparesTo:)();
  (*(v9 + 8))(v12, v7);
  v19 = *a1;
  if (*a1)
  {
    if ((v18 & 1) == 0)
    {
      return v19;
    }
  }

  v20 = UITraitCollection.modifyingTraits(_:)();
  v21 = objc_opt_self();
  v22 = [v21 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v20];
  sub_10000589C(&unk_1000BB910, &qword_10008FB30);
  inited = swift_initStackObject();
  v36 = xmmword_10008F930;
  *(inited + 16) = xmmword_10008F930;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = a4;
  v24 = UIFontWeightTrait;
  v25 = sub_10007B4BC(inited);
  swift_setDeallocating();
  sub_100006390(inited + 32, &qword_1000BD1A0, &qword_10008FB38);
  v26 = [v21 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v17];
  sub_10000589C(&qword_1000BB908, &unk_100091370);
  v27 = swift_initStackObject();
  *(v27 + 16) = v36;
  *(v27 + 32) = UIFontDescriptorTraitsAttribute;
  *(v27 + 64) = sub_10000589C(&qword_1000BB920, &unk_10008FB40);
  *(v27 + 40) = v25;
  v28 = UIFontDescriptorTraitsAttribute;
  sub_10007B5AC(v27);
  swift_setDeallocating();
  sub_100006390(v27 + 32, &qword_1000BB928, &qword_100091380);
  type metadata accessor for AttributeName(0);
  sub_10007C350(&qword_1000BB930, type metadata accessor for AttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = [v26 fontDescriptorByAddingAttributes:isa];

  [v26 pointSize];
  v32 = v31;
  [v22 pointSize];
  if (v33 < v32)
  {
    v32 = v33;
  }

  v19 = [objc_opt_self() fontWithDescriptor:v30 size:v32];

  *a1 = v19;
  *v37 = v17;
  v34 = v17;
  return v19;
}

void sub_10007BD74(char a1)
{
  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v2 = objc_allocWithZone(NSMutableAttributedString);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithString:v3];

  v5 = [v4 length];
  [v4 fixAttributesInRange:{0, v5}];
  v6 = swift_allocObject();
  *(v6 + 16) = &v40;
  *(v6 + 24) = &v41;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10007C398;
  *(v7 + 24) = v6;
  v38 = sub_10007C3B0;
  v39 = v7;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10007A6AC;
  v37 = &unk_1000B0268;
  v8 = _Block_copy(&aBlock);

  [v4 enumerateAttribute:NSFontAttributeName inRange:0 options:v5 usingBlock:{0, v8}];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = a1;
  v9 = v40;

  v40 = &_swiftEmptySetSingleton;
  v41 = &_swiftEmptySetSingleton;
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = [v12 length];
  [v12 fixAttributesInRange:{0, v13}];
  v14 = swift_allocObject();
  *(v14 + 16) = &v40;
  *(v14 + 24) = &v41;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10007D204;
  *(v15 + 24) = v14;
  v38 = sub_10007D208;
  v39 = v15;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10007A6AC;
  v37 = &unk_1000B02E0;
  v16 = _Block_copy(&aBlock);

  [v12 enumerateAttribute:NSFontAttributeName inRange:0 options:v13 usingBlock:{0, v16}];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v18 = v41;

    v19 = objc_allocWithZone(NSMutableAttributedString);
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 initWithString:v20];

    if ((v33 & 1) == 0)
    {
      v9 = v18;
    }

    v22 = 0;
    v23 = 1 << v9[32];
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v9 + 7);
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
LABEL_13:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = (*(v9 + 6) + ((v22 << 10) | (16 * v28)));
      v30 = v29[1];
      if (v30 > 0)
      {
        v31 = *v29;
        v32 = [objc_opt_self() clearColor];
        [v21 addAttribute:NSForegroundColorAttributeName value:v32 range:{v31, v30}];
      }
    }

    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        return;
      }

      v25 = *&v9[8 * v27 + 56];
      ++v22;
      if (v25)
      {
        v22 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_10007C28C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007C2CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007C2E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10007C324()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10007776C(v1, 0);
}

uint64_t sub_10007C350(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10007C398(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_10007A5B8(a1, a2, a3);
}

uint64_t sub_10007C3B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10007C3D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10007C410(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  [*(v1 + 16) setFill];

  return [a1 fillRect:{0.0, 0.0, v3, v4}];
}

uint64_t sub_10007C478()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_10007C4A0()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___listBackground) = 0;
  v1 = OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_listBackgroundBlurEffect;
  *(v0 + v1) = [objc_opt_self() effectWithStyle:7];
  v2 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___cornerRadius;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeGrid) = xmmword_100091210;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_idealThumbnailSizeList) = xmmword_100091220;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailRatioConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailContainer) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___badge) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___title) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___titleOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___subtitle) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_thumbnailLoader) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_selected) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = v0 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind;
  *v4 = 0;
  *(v4 + 8) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10007C650()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Widget.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100037B98(0xD000000000000025, 0x8000000100094B60, &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000064E0(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = (v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
  v12 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8);
  if (v12 >= 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *v11;
  swift_getObjectType();
  sub_10007B494(v13, v12);
  if ((DOCNode.supportsDrag.getter() & 1) != 0 && (v14 = DOCNode.dragItemFor(session:supportsPickingFolders:)()) != 0)
  {
    v15 = v14;
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_10008F940;
    v16[4] = v15;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_10007B4A8(v13, v12);
  return v16;
}

void *sub_10007C8AC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  static Logger.Widget.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100037B98(0xD000000000000030, 0x8000000100094B20, &v33);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_1000064E0(v13);
  }

  v14 = *(v3 + 8);
  v14(v9, v2);
  sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
  if (static FPItem.sessionContainsDOCNode(_:)())
  {
    v15 = v1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8];
    if (v15 <= 1)
    {
      v16 = *&v1[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
      swift_getObjectType();
      sub_10007B494(v16, v15);
      if (DOCNode.supportsDrag.getter())
      {
        v17 = DOCNode.dragItemFor(session:supportsPickingFolders:)();
        if (v17)
        {
          v18 = v17;
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10008F940;
          *(v19 + 32) = v18;
          sub_10007B4A8(v16, v15);
          return v19;
        }
      }

      sub_10007B4A8(v16, v15);
    }
  }

  else
  {
    static Logger.Widget.getter();
    v21 = v1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v24 = 136315394;
      *(v24 + 4) = sub_100037B98(0xD000000000000030, 0x8000000100094B20, &v33);
      *(v24 + 12) = 2080;
      v25 = v21;
      v26 = [v25 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31[1] = v3;
      v29 = v28;

      v30 = sub_100037B98(v27, v29, &v33);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Item %s cannot be added to the drag because it is already part of the drag", v24, 0x16u);
      swift_arrayDestroy();
    }

    v14(v6, v2);
  }

  return _swiftEmptyArrayStorage;
}

id sub_10007CCCC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Widget.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100094AF0, &v30);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000064E0(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = [objc_allocWithZone(UIDragPreviewParameters) init];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = sub_100076264(&OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView, sub_100075AFC);
  [v15 frame];
  v17 = v16;
  v19 = v18;

  if (v17 != 0.0 || v19 != 0.0)
  {
    v20 = (v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind);
    v21 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8);
    if (v21 <= 1)
    {
      v22 = *v20;
      sub_10007B494(*v20, *(v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind + 8));
      if ([v22 isFolder])
      {
        sub_10001A2A8(0, &qword_1000BC460, UIBezierPath_ptr);
        v23 = static UIBezierPath.path(for:thumbnailSize:)();
        [v13 setVisiblePath:v23];
      }

      sub_10007B4A8(v22, v21);
    }
  }

  v24 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell____lazy_storage___thumbnailView);
  v25 = objc_allocWithZone(UITargetedDragPreview);
  v26 = v24;
  v27 = [v25 initWithView:v26 parameters:v13];

  return v27;
}

unint64_t sub_10007D008()
{
  result = qword_1000BD170;
  if (!qword_1000BD170)
  {
    sub_10001A2A8(255, &qword_1000BD168, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BD170);
  }

  return result;
}

uint64_t sub_10007D070()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10007D0B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007D0FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007D144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007D18C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000143B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10007D258(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(v7 + *a1);
  if (v9)
  {
    v10 = *(v7 + *a1);
  }

  else
  {
    v11 = sub_10007F4AC(a2, a3, a4, a5, a6, a7);
    v12 = *(v7 + v8);
    *(v7 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v13 = v9;
  return v10;
}

id sub_10007D2B8()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.152941176 green:0.152941176 blue:0.152941176 alpha:1.0];
    [v4 setBackgroundColor:v5];

    v6 = [v4 layer];
    v7 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode);
    v8 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode + 8);

    v9 = String._bridgeToObjectiveC()();

    [v6 setCompositingFilter:v9];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_10007D40C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_cellSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews] = _swiftEmptyArrayStorage;
  v10 = &v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowSideMargin] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView] = 0;
  v11 = &v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode];
  *v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11[1] = v12;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_items] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_isMasked] = 0;
  v60.receiver = v4;
  v60.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v14 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  [v13 addSubview:v14];

  v15 = sub_10007D2B8();
  [v13 addSubview:v15];

  v16 = [v13 layer];
  [v16 setAllowsGroupBlending:0];

  v17 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
  v18 = [*&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView] layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView;
  v20 = [*&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView] heightAnchor];
  [v13 frame];
  v23 = 31.0;
  if (v21 < 200.0 && v21 <= 539.0 && v22 <= 200.0)
  {
    [v13 frame];
    v23 = 23.0;
    if (v24 <= 136.0)
    {
      v23 = 20.0;
    }
  }

  v25 = [v20 constraintEqualToConstant:v23];

  v59 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint;
  v26 = *&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint];
  *&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint] = v25;

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100091230;
  v28 = [*&v13[v17] topAnchor];
  v29 = [v13 topAnchor];

  v30 = [v28 constraintEqualToAnchor:v29];
  *(v27 + 32) = v30;
  v31 = [*&v13[v17] leadingAnchor];
  v32 = [v13 leadingAnchor];

  v33 = [v31 constraintEqualToAnchor:v32];
  *(v27 + 40) = v33;
  v34 = [*&v13[v17] trailingAnchor];
  v35 = [v13 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35];
  *(v27 + 48) = v36;
  v37 = [*&v13[v19] topAnchor];
  v38 = [*&v13[v17] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v27 + 56) = v39;
  v40 = [*&v13[v19] leadingAnchor];
  v41 = [v13 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor:v41];
  *(v27 + 64) = v42;
  v43 = [*&v13[v19] trailingAnchor];
  v44 = [v13 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v27 + 72) = v45;
  v46 = [*&v13[v19] bottomAnchor];
  v47 = [v13 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor:v47];
  *(v27 + 80) = v48;
  v49 = *&v13[v59];
  if (v49)
  {
    v50 = objc_opt_self();
    *(v27 + 88) = v49;
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    v51 = v49;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints:isa];

    v53 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    [v13 addSubview:v53];

    v54 = *&v13[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView];
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    v58 = DOCConstraintsToResizeWithSuperview();
    if (!v58)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v50 activateConstraints:v58];
  }

  else
  {
    __break(1u);
  }
}

id sub_10007DB70()
{
  ObjectType = swift_getObjectType();
  [v0 frame];
  Width = CGRectGetWidth(v33);
  [v0 frame];
  Height = CGRectGetHeight(v34);
  [v0 frame];
  v4 = CGRectGetHeight(v35);
  [v0 frame];
  v5 = CGRectGetWidth(v36);
  v6 = &v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize];
  v7 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize];
  v8 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize + 8];
  v9 = v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize + 16];
  [v0 frame];
  if ((v9 & 1) != 0 || (v7 == v10 ? (v12 = v8 == v11) : (v12 = 0), !v12))
  {
    if ((v6[2] & 1) != 0 || ((v13 = floor(v5), *v6 == floor(v4)) ? (v14 = v6[1] == v13) : (v14 = 0), !v14))
    {
      v15 = floor(Width);
      v16 = floor(Height);
      [v0 frame];
      if (v17 <= 539.0)
      {
        if (v18 <= 200.0)
        {
          v21 = v17;
          sub_10007DE68(v0);
          sub_10007E010(v0);
          v19 = 2;
          if (v21 >= 200.0)
          {
            sub_10007ED90(2, v0);
LABEL_19:
            *v6 = v15;
            v6[1] = v16;
            *(v6 + 16) = 0;
            goto LABEL_20;
          }

          v20 = 2;
        }

        else
        {
          sub_10007DE68(v0);
          sub_10007E010(v0);
          v19 = 3;
          v20 = 3;
        }
      }

      else
      {
        sub_10007DE68(v0);
        sub_10007E010(v0);
        v19 = 3;
        v20 = 5;
      }

      sub_10007E298(v19, v20, v0);
      goto LABEL_19;
    }
  }

LABEL_20:
  [v0 frame];
  v24 = 31.0;
  if (v22 < 200.0 && v22 <= 539.0 && v23 <= 200.0)
  {
    [v0 frame];
    v24 = 23.0;
    if (v25 <= 136.0)
    {
      v24 = 20.0;
    }
  }

  v26 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint];
  if (v26)
  {
    [v26 setConstant:v24];
  }

  v27 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells;
  swift_beginAccess();
  v28 = *&v0[v27];
  v29 = *&v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_items];
  v30 = v0[OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_isMasked];

  sub_10007F744(v28, v29, v30);

  v32.receiver = v0;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, "layoutSubviews");
}

uint64_t sub_10007DE68(uint64_t a1)
{
  v2 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 arrangedSubviews];

  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v7 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [*(a1 + v7) removeArrangedSubview:v8];
      [v9 removeFromSuperview];

      ++v6;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews;
  swift_beginAccess();
  v12 = *(a1 + v11);
  *(a1 + v11) = _swiftEmptyArrayStorage;
}

uint64_t sub_10007E010(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows;
  swift_beginAccess();
  v20 = a1;
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 removeFromSuperview];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_12:

    v9 = *(v20 + v2);
    *(v20 + v2) = _swiftEmptyArrayStorage;

    v10 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells;
    swift_beginAccess();
    v11 = *(v20 + v10);
    *(v20 + v10) = _swiftEmptyArrayStorage;

    v12 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    v13 = [v12 arrangedSubviews];

    sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
      }

      goto LABEL_14;
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      break;
    }

LABEL_14:
    v15 = 0;
    v2 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v16 = *(v3 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [*(v20 + v2) removeArrangedSubview:v16];
      [v17 removeFromSuperview];

      ++v15;
      if (v18 == v14)
      {
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_10007E298(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 1 || a2 < 1)
  {
    return;
  }

  v4 = sub_10007D2B8();
  [v4 setHidden:0];

  sub_10007EA0C(a1);
  v5 = 0;
  v6 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews;
  p_type = &stru_1000B6FF0.type;
  v43 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells;
  v44 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows;
  while (1)
  {
    v8 = a2;
    do
    {
      [a3 p_type[414]];
      if (v9 >= 200.0)
      {
        v11 = 302.0;
      }

      else
      {
        v11 = 190.0;
      }

      if (v10 > 200.0)
      {
        v11 = 302.0;
      }

      if (v9 <= 539.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 630.0;
      }

      [a3 p_type[414]];
      v13 = CGRectGetWidth(v47) / v12;
      v14 = objc_allocWithZone(type metadata accessor for RecentItemCell());
      *&sub_100077F88(0, 0, 1, 0, 0.0, 0.0, 0.0, 0.0, v13)[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = &off_1000B0588;
      swift_unknownObjectWeakAssign();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        p_type = (&stru_1000B6FF0 + 16);
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      --v8;
    }

    while (v8);
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    }

    v16 = objc_allocWithZone(UIStackView);
    sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v16 initWithArrangedSubviews:isa];

    [v18 setDistribution:1];
    [v18 setSpacing:8.0];
    [v18 setAxis:0];
    v19 = v18;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [a3 addSubview:v19];
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10008F960;
    v21 = [v19 leadingAnchor];
    v22 = [a3 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:13.0];

    *(v20 + 32) = v23;
    v24 = [v19 trailingAnchor];

    v25 = [a3 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-13.0];

    *(v20 + 40) = v26;
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [a3 addConstraints:v27];

    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    v28 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_20;
    }

LABEL_32:

    ++v5;
    v40 = Array._bridgeToObjectiveC()().super.isa;

    [a3 addConstraints:v40];

    swift_beginAccess();
    v41 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    p_type = (&stru_1000B6FF0 + 16);
    if (*((*(a3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((*(a3 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_beginAccess();
    sub_10000D790(_swiftEmptyArrayStorage);
    swift_endAccess();

    if (v5 == a1)
    {
      return;
    }
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_20:
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v28 < 0)
  {
    goto LABEL_39;
  }

  v29 = 0;
  while (2)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = _swiftEmptyArrayStorage[v29 + 4];
    }

    v31 = v30;
    v32 = sub_100075A24();
    v33 = [v32 bottomAnchor];

    swift_beginAccess();
    v34 = *(a3 + v6);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_28:
      v36 = v35;
      ++v29;
      swift_endAccess();
      v37 = [v36 bottomAnchor];

      v38 = [v33 constraintEqualToAnchor:v37];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v39 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v28 == v29)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  if (v5 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v34 + 8 * v5 + 32);
    goto LABEL_28;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_10007EA0C(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      v3 = v1;
      v4 = 0;
      v5 = 0;
      v6 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews;
      v26 = OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView;
      do
      {
        v7 = sub_10007F1E4(v5);
        v8 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
        [v8 addArrangedSubview:v7];

        swift_beginAccess();
        v9 = v7;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        if (v2 == 1)
        {
          v10 = sub_10007D2B8();
          v11 = [v10 backgroundColor];

          [v9 setBackgroundColor:v11];
          v12 = [v9 layer];
          v13 = [*(v3 + v26) layer];
          v14 = [v13 compositingFilter];

          if (v14)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100042398(v28, v28[3]);
            v14 = _bridgeAnythingToObjectiveC<A>(_:)();
            sub_1000064E0(v28);
          }

          [v12 setCompositingFilter:v14];

          swift_unknownObjectRelease();
        }

        if (v4)
        {
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10008F940;
          v16 = [v9 heightAnchor];
          v17 = [v4 heightAnchor];
          if (v5 == 1)
          {
            v18 = 1.13;
          }

          else
          {
            v18 = 1.0;
          }

          v27 = v4;
          v19 = v6;
          v20 = v2;
          v21 = objc_opt_self();
          v22 = v9;
          v23 = [v16 constraintEqualToAnchor:v17 multiplier:v18];

          *(v15 + 32) = v23;
          v9 = v22;
          sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v25 = v21;
          v2 = v20;
          v6 = v19;
          [v25 activateConstraints:isa];
        }

        ++v5;
        v4 = v9;
      }

      while (v2 != v5);
    }
  }
}

uint64_t sub_10007ED90(uint64_t a1, void *a2)
{
  v5 = sub_10007D2B8();
  [v5 setHidden:1];

  if (a1 < 0)
  {
    goto LABEL_37;
  }

  if (a1)
  {
    v34 = xmmword_10008F960;
    do
    {
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v6 = swift_allocObject();
      *(v6 + 16) = v34;
      [a2 frame];
      if (v7 >= 200.0)
      {
        v9 = 302.0;
      }

      else
      {
        v9 = 190.0;
      }

      if (v8 > 200.0)
      {
        v9 = 302.0;
      }

      if (v7 <= 539.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 630.0;
      }

      [a2 frame];
      v11 = CGRectGetWidth(v35) / v10;
      v12 = type metadata accessor for RecentItemCell();
      v13 = objc_allocWithZone(v12);
      v14 = sub_100077F88(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v11);
      *&v14[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = &off_1000B0588;
      swift_unknownObjectWeakAssign();
      *(v6 + 32) = v14;
      [a2 frame];
      if (v15 >= 200.0)
      {
        v17 = 302.0;
      }

      else
      {
        v17 = 190.0;
      }

      if (v16 > 200.0)
      {
        v17 = 302.0;
      }

      if (v15 <= 539.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 630.0;
      }

      [a2 frame];
      v19 = CGRectGetWidth(v36) / v18;
      v20 = objc_allocWithZone(v12);
      v21 = sub_100077F88(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v19);
      *&v21[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_delegate + 8] = &off_1000B0588;
      swift_unknownObjectWeakAssign();
      *(v6 + 40) = v21;
      v22 = objc_allocWithZone(UIStackView);
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = [v22 initWithArrangedSubviews:isa];

      [v24 setDistribution:1];
      [v24 setSpacing:8.0];
      [v24 setAxis:0];
      v25 = v24;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = _swiftEmptyArrayStorage;
      swift_beginAccess();
      sub_10000D790(v6);
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v29 = *(v2 + 8 * j + 32);
      }

      v30 = v29;
      v31 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v32 = sub_10007D258(&OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
      [v32 addArrangedSubview:v30];

      if (v31 == i)
      {
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }
}

id sub_10007F1E4(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (a1 == 2)
  {
    v6 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
    [v3 setBackgroundColor:v6];

    v5 = [v3 layer];
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v4 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0470588235 green:0.0470588235 blue:0.0470588235 alpha:1.0];
    [v3 setBackgroundColor:v4];

    v5 = [v3 layer];
LABEL_6:
    v7 = v5;
    v8 = v1 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode;
    v9 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode);
    v10 = *(v8 + 8);

    v11 = String._bridgeToObjectiveC()();

    [v7 setCompositingFilter:v11];

    goto LABEL_7;
  }

  v11 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v11];
LABEL_7:

  return v3;
}

id sub_10007F4AC(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(UIStackView);
  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v12 initWithArrangedSubviews:isa];

  v15 = v14;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAxis:1];
  [v15 setDistribution:a1];
  [v15 setSpacing:a2];
  [v15 setLayoutMarginsRelativeArrangement:1];
  [v15 setInsetsLayoutMarginsFromSafeArea:0];
  [v15 setLayoutMargins:{a3, a4, a5, a6}];

  return v15;
}

void sub_10007F5FC()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_cellSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemRows) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_itemCells) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowBackgroundViews) = _swiftEmptyArrayStorage;
  v1 = v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_lastLayoutSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_rowSideMargin) = 0x402A000000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_footerBackgroundViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___backgroundRowContainerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___listStackView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView____lazy_storage___footerBackgroundView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_blendMode);
  *v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_items) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService15RecentItemsView_isMasked) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10007F744(unint64_t a1, uint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v22 = objc_opt_self();
  v5 = [v22 sharedGenerator];
  v21 = [v5 startBatching];

  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = (a1 & 0xC000000000000001);
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = v7;
    v23 = (v3 & 1) == 0;
    v8 = 4;
    v25 = a1;
    while (1)
    {
      v14 = v8 - 4;
      if (v27)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(a1 + 8 * v8);
      }

      v3 = v15;
      v16 = v8 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = objc_autoreleasePoolPush();
      if (a2 >> 62)
      {
        if (v14 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_7:
          v9 = 0;
          v10 = 2;
          goto LABEL_8;
        }
      }

      else if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(a2 + 8 * v8);
      }

      v9 = v18;
      v19 = v18;
      v10 = v23;
LABEL_8:
      v11 = &v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
      v12 = *&v3[OBJC_IVAR____TtC21DockFolderViewService14RecentItemCell_kind];
      *v11 = v9;
      v13 = v11[8];
      v11[8] = v10;
      sub_10007B494(v9, v10);
      sub_100076804(v12, v13);
      sub_10007B4A8(v12, v13);
      sub_10007B4A8(v9, v10);
      sub_10007B4A8(v9, v10);
      objc_autoreleasePoolPop(v17);

      ++v8;
      a1 = v25;
      if (v16 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v28 = [v22 sharedGenerator];
  [v28 endBatching:v21];
}

id sub_10007FAD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSBFolderCollectionViewLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10007FC58(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] = a1;
  if (a1 <= 0.0 && v2 != a1)
  {
    return [v1 invalidateLayout];
  }

  return result;
}

unint64_t sub_10007FC88(double a1, double a2, double a3, double a4)
{
  v31.receiver = v4;
  v31.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v31, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_100085CB4();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v4;
  if (v11 >> 62)
  {
LABEL_32:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
LABEL_23:

    return v11;
  }

  v13 = 0;
  v30 = v11 & 0xC000000000000001;
  v14 = v11 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v30)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_31;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v18 = [v15 representedElementKind];
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

      goto LABEL_8;
    }

    v19 = v11;
    v20 = v18;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v23)
    {
      v11 = v19;
      goto LABEL_7;
    }

    if (v21 == v24 && v23 == v25)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v19;
    if (v27)
    {
      goto LABEL_26;
    }

LABEL_8:

    ++v13;
    if (v17 == v12)
    {
      goto LABEL_23;
    }
  }

LABEL_26:

  if (*&v29[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] < 0.0)
  {
    [v16 frame];
    [v16 setFrame:?];
  }

  return v19;
}

uint64_t sub_10007FF4C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_100080070()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrame];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrameInSuperview];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemTopBoundary] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundary] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom] = 0;
  v6 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction;
  v7 = objc_opt_self();
  *&v0[v6] = [v7 functionWithName:kCAMediaTimingFunctionEaseIn];
  v8 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeOutFunction;
  *&v0[v8] = [v7 functionWithName:kCAMediaTimingFunctionEaseOut];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_alwaysVisiblePinnedToBottomCount] = 3;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_progressOfBottomItemIconInDock] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  [v9 setMinimumLineSpacing:10.0];
  [v9 setMinimumInteritemSpacing:10.0];
  [v9 setSectionInset:{10.0, 0.0, 10.0, 0.0}];
  [v9 setSectionHeadersPinToVisibleBounds:1];

  return v9;
}

id sub_100080334(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] = a1;
  if (v2 != a1)
  {
    return [v1 invalidateLayout];
  }

  return result;
}

uint64_t sub_100080360()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, "prepareLayout", v6);
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v10 contentSize];
    v12 = v11;
    [v10 frame];
    if (v12 >= CGRectGetHeight(v42))
    {
    }

    else
    {
      [v10 contentSize];
      v14 = v13;

      if (v14 > 0.0)
      {
        v15 = 0;
LABEL_7:
        [v1 setSectionHeadersPinToVisibleBounds:v15];

        goto LABEL_8;
      }
    }

    v15 = 1;
    goto LABEL_7;
  }

LABEL_8:
  static Logger.UI.getter();
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v37 = v3;
    v19 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v19 = 136315906;
    *(v19 + 4) = sub_100037B98(0x2865726170657270, 0xE900000000000029, &v40);
    *(v19 + 12) = 2080;
    v20 = v16;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100037B98(v22, v24, &v40);

    *(v19 + 14) = v25;
    *(v19 + 22) = 1024;
    LODWORD(v25) = [v20 sectionHeadersPinToVisibleBounds];

    *(v19 + 24) = v25;
    *(v19 + 28) = 2080;
    v26 = [v20 collectionView];
    v27 = v26;
    if (v26)
    {
      [v26 contentSize];
      v35 = v28;
      v36 = v29;

      *&v30 = v35;
      *(&v30 + 1) = v36;
    }

    else
    {
      v30 = 0uLL;
    }

    v38 = v30;
    v39 = v27 == 0;
    sub_10000589C(&qword_1000BD4D0, &qword_1000914D0);
    v32 = String.init<A>(describing:)();
    v34 = sub_100037B98(v32, v33, &v40);

    *(v19 + 30) = v34;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s self: %s sectionHeadersPinToVisibleBounds: %{BOOL}d contentSize: %s", v19, 0x26u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v8, v37);
  }

  else
  {

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_100080760()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions;
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions);
  }

  else
  {
    type metadata accessor for DOCSBLayoutEasingFunctions();
    v2 = swift_allocObject();
    *(v2 + 16) = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100080808(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = a1;
    v5 = a2;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply;
    if (*&v2[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply] <= 0.0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *&v2[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
    }

    [v2 itemSize];
    v16 = v15;
    [v2 itemSize];
    v18 = v17 * 4.0;
    if (v17 * 4.0 < 0.0)
    {
      __break(1u);
    }

    else
    {
      v19 = v16 * 0.15;
      v20 = *&v2[v13];
      if (v18 >= v20)
      {
        v21 = *&v2[v13];
      }

      else
      {
        v21 = v18;
      }

      if (v20 > 0.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0.0;
      }

      v23 = v22 / v18 + 0.0;
      *&v23 = v23;
      [*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeOutFunction] _solveForInput:v23];
      if (v19 >= 0.0)
      {
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset] = -(v19 * v24 + 0.0);
        [v5 setFrame:{v8, v14, v10, v12}];
        [v5 frame];
        v25 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrame];
        *v25 = v26;
        *(v25 + 1) = v27;
        *(v25 + 2) = v28;
        *(v25 + 3) = v29;
        v30 = v4;
        [v5 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v39 = [v30 superview];
        [v30 convertRect:v39 toView:{v32, v34, v36, v38}];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v48 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview];
        *v48 = v41;
        *(v48 + 1) = v43;
        *(v48 + 2) = v45;
        *(v48 + 3) = v47;
        [v2 itemSize];
        [v2 itemSize];
        v49 = sub_100085E5C();
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v56 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrameInSuperview];
        *v56 = v49;
        v56[1] = v50;
        v56[2] = v52;
        v56[3] = v54;
        v57 = [v30 superview];

        [v30 convertRect:v57 fromView:{v49, v51, v53, v55}];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;

        v66 = &v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_staticHeaderFrame];
        *v66 = v59;
        *(v66 + 1) = v61;
        *(v66 + 2) = v63;
        *(v66 + 3) = v65;
        MaxY = CGRectGetMaxY(*v25);
        [v2 minimumInteritemSpacing];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemTopBoundary] = MaxY + v68;
        [v30 bounds];
        v70 = v69;

        [v2 itemSize];
        v72 = v70 - v71;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundary] = v72;
        [v2 minimumInteritemSpacing];
        v74 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing] = v72 - v73;
        v75 = *(v25 + 3);
        [v2 minimumInteritemSpacing];
        v77 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAndSpacingHeight] = v75 + v76;
        [v30 bounds];
        v79 = v78;

        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight] = v79 - v80;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion] = v79 - v80 - *&v2[v77];
        MinY = CGRectGetMinY(*v48);
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop] = MinY - (v82 + v82);
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom] = CGRectGetMaxY(*v48);
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop] = CGRectGetMinY(*v48);
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom] = CGRectGetMidY(*v48);
        v83 = *&v2[v74];
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop] = v83 - v84;
        v85 = *&v2[v74];
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom] = v85 + v86 * -0.5;
        v87 = CGRectGetMinY(*v48);
        [v2 minimumInteritemSpacing];
        v89 = v88;
        [v2 itemSize];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop] = v87 + (v89 + v90) * -4.0;
        v91 = CGRectGetMaxY(*v48);
        [v2 minimumInteritemSpacing];
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom] = v91 + v92;
        v93 = *&v2[v74];
        [v2 itemSize];
        v95 = v94;

        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop] = v93 - v95;
        *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom] = *&v2[v74];
        return;
      }
    }

    __break(1u);
  }
}

id sub_100080E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v18, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v7, isa);

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v10 == a2)
  {

    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0 || !v9)
    {
      return v9;
    }
  }

  type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = v9;
    sub_100080808(Strong, v14);

    sub_100080FD8(v14);
  }

  return v9;
}

void sub_100080FD8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v183 - v15;
  v17 = OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_scrollView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v216 = Strong;
  v19 = [v2 collectionView];
  if (v19)
  {
    *&v210 = v8;
    v204 = v5;
    v205 = v4;
    v208 = v19;
    v20 = v16;
    v21 = v9;
    v22 = v10;
    v23 = [v19 numberOfItemsInSection:0];
    v24 = [a1 indexPath];
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v206 = IndexPath.item.getter();
    v25 = *(v22 + 8);
    *&v211 = v20;
    v214 = v21;
    v212 = v25;
    v215 = v22 + 8;
    v25(v20, v21);
    v203 = v23;
    *&v207 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    v26 = [a1 indexPath];
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 frame];
    v190 = v27;
    v28 = v216;
    [a1 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [v28 superview];
    v209 = v28;
    [v28 convertRect:v37 toView:{v30, v32, v34, v36}];
    v39 = v38;
    v41 = v40;
    *&v213 = v40;
    v43 = v42;
    v45 = v44;

    v221.origin.x = v39;
    v221.origin.y = v41;
    v221.size.width = v43;
    v221.size.height = v45;
    MinY = CGRectGetMinY(v221);
    v192 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight;
    v47 = 1.0 - MinY / *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingCellHeight];
    v191 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion;
    v48 = v47 * *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_scrollViewHeightExcludingHeaderRegion];
    v189 = *&v2[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply];
    [v2 itemSize];
    v188 = v49;
    [v2 minimumLineSpacing];
    v187 = v50;
    v216 = v13;
    v51 = IndexPath.item.getter();
    v194 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing;
    v186 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_itemBottomBoundaryWithSpacing];
    [v2 minimumLineSpacing];
    v185 = v52;
    sub_100080760();
    v53 = swift_unknownObjectWeakLoadStrong();
    v54 = a1;
    v193 = v17;
    if (v53)
    {
      v55 = v53;
      v56 = [v53 traitCollection];

      v57 = [v56 layoutDirection];
      LOBYTE(v53) = v57 == 1;
    }

    v58 = v210;
    v59 = v214;
    v60 = sub_100085C24(v53, v48, 2775.0);
    v62 = v61;

    CGAffineTransformMakeTranslation(&t1, v60, 0.0);
    a = t1.a;
    b = t1.b;
    c = t1.c;
    d = t1.d;
    tx = t1.tx;
    ty = t1.ty;
    CGAffineTransformMakeRotation(&t1, v62);
    v195 = t1.a;
    v197 = t1.b;
    v199 = t1.c;
    v201 = t1.d;
    v202 = t1.tx;
    *&v210 = t1.ty;
    v66 = [v54 representedElementKind];
    if (v66)
    {
      v67 = v66;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v70)
      {
        if (v68 == v71 && v70 == v72)
        {
          v73 = v209;

LABEL_50:
          CGAffineTransformMakeTranslation(&t1, 0.0, *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerAdditionalYOffset]);
          v159 = *&t1.a;
          v160 = *&t1.c;
          v161 = *&t1.tx;
          t1.a = a;
          t1.b = b;
          t1.c = c;
          t1.d = d;
          t1.tx = tx;
          t1.ty = ty;
          *&t2.a = v159;
          *&t2.c = v160;
          *&t2.tx = v161;
          CGAffineTransformConcat(&v217, &t1, &t2);
          t1.a = v195;
          t1.b = v197;
          t1.c = v199;
          t1.d = v201;
          t1.tx = v202;
          *&t1.ty = v210;
          t2 = v217;
          CGAffineTransformConcat(&v217, &t1, &t2);
          t1 = v217;
          [v54 setTransform:&t1];

          v212(v216, v59);
          return;
        }

        v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v158)
        {
          v73 = v209;

          goto LABEL_50;
        }

LABEL_16:
        static Logger.UI.getter();
        v75 = v54;
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();

        v78 = os_log_type_enabled(v76, v77);
        v184 = v51;
        if (v78)
        {
          v79 = swift_slowAlloc();
          *&t1.a = swift_slowAlloc();
          *v79 = 136315906;
          *(v79 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100095390, &t1);
          *(v79 + 12) = 2080;
          v80 = [v75 indexPath];
          v81 = v59;
          v82 = v211;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100085DA8(&qword_1000BC458);
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v81;
          v86 = v85;
          v212(v82, v84);
          v87 = sub_100037B98(v83, v86, &t1);

          *(v79 + 14) = v87;
          *(v79 + 22) = 2048;
          *(v79 + 24) = v60;
          *(v79 + 32) = 2048;
          *(v79 + 34) = v62;
          _os_log_impl(&_mh_execute_header, v76, v77, "%s item: %s xOffsetAndRadians xPos: %f, radians: %f", v79, 0x2Au);
          swift_arrayDestroy();
        }

        (*(v204 + 8))(v58, v205);
        v88 = *&v213;
        v89 = v206;
        v90 = IndexPath.item.getter();
        v91 = v209;
        if (!__OFSUB__(v203, 3))
        {
          v92 = OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_staysVisibleWhenPinnedToBottom;
          v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_staysVisibleWhenPinnedToBottom] = v90 >= (v203 - 3);
          v93 = [v75 indexPath];
          v94 = v211;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v95 = IndexPath.item.getter();
          v96 = v214;
          v97 = v212;
          v212(v94, v214);
          [v75 setZIndex:v95];
          v222.origin.x = v39;
          v222.origin.y = v88;
          v222.size.width = v43;
          v222.size.height = v45;
          v98 = CGRectGetMinY(v222);
          v99 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom;
          if (v98 <= *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneBottom] && v89 != v207)
          {
            *&v211 = v39;
            v223.origin.x = v39;
            v223.origin.y = v88;
            v100 = v43;
            v223.size.width = v43;
            v101 = v45;
            v223.size.height = v45;
            v102 = CGRectGetMinY(v223);
            v103 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionHeaderZoneTop];
            v104 = *&v2[v99];
            if (v103 <= v104)
            {
              v105 = v102;
              v106 = CGRectGetMinY(*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerFrameInSuperview]);
              [v2 itemSize];
              v108 = v107;
              v109 = *&v2[v99];
              v110 = [v91 superview];

              if (!v110)
              {
LABEL_85:
                __break(1u);
                return;
              }

              v111 = v106 + v108 * 0.5;
              v112 = v111 - v109;
              if (v105 > v103)
              {
                v113 = v105;
              }

              else
              {
                v113 = v103;
              }

              if (v104 < v113)
              {
                v113 = v104;
              }

              v114 = v111 + 1.0 - (sin((1.0 - ((v113 - v103) / (v104 - v103) + 0.0)) * -1.57079633) + 1.0) * v112;
              v115 = v100;
              v116 = *&v211;
              v117 = v101;
              v118 = v115;
              [v110 convertRect:v91 toCoordinateSpace:?];
              v120 = v119;
              v122 = v121;
              v124 = v123;
              v126 = v125;

              [v75 setFrame:{v120, v122, v124, v126}];
              v224.origin.x = v116;
              *&v224.origin.y = v213;
              v224.size.width = v118;
              v224.size.height = v117;
              v127 = CGRectGetMinY(v224);
              v128 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop;
              v129 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop];
              v130 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom;
              v131 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom];
              if (v129 <= v131)
              {
                if (v127 <= v129)
                {
                  v127 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneTop];
                }

                if (v131 >= v127)
                {
                  v132 = v127;
                }

                else
                {
                  v132 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_headerItemScaleBoundaryZoneBottom];
                }

                v133 = (v132 - v129) * 0.1 / (v131 - v129) + 0.9;
                v134 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction];
                *&v133 = v133;
                [v134 _solveForInput:v133];
                *&v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_imageScale] = v135;
                v136 = *&v2[v128];
                v137 = *&v2[v130];
                if (v136 <= v137)
                {
                  v138 = (v132 - v136) / (v137 - v136) + 0.0;
                  *&v138 = v138;
                  [v134 _solveForInput:v138];
                  v140 = v139;
                  v225.origin.x = v116;
                  v141 = *&v213;
                  *&v225.origin.y = v213;
                  v225.size.width = v118;
                  v225.size.height = v117;
                  v142 = CGRectGetMinY(v225);
                  v143 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom;
                  v144 = v142 < *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneBottom];
                  v145 = 1.0;
                  if (!v144)
                  {
LABEL_43:
                    *&v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] = v145;
                    v227.origin.x = v116;
                    v227.origin.y = v114;
                    v227.size.width = v118;
                    v227.size.height = v117;
                    v151 = *&v2[v191] * (1.0 - CGRectGetMinY(v227) / *&v2[v192]);
                    v152 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions];
                    v153 = swift_unknownObjectWeakLoadStrong();

                    if (v153)
                    {
                      v154 = [v153 traitCollection];

                      v155 = [v154 layoutDirection];
                      v156 = v155 == 1;
                    }

                    else
                    {
                      v156 = 0;
                    }

                    v167 = sub_100085C24(v156, v151, 2775.0);
                    v169 = v168;

                    CGAffineTransformMakeTranslation(&t1, v167, 0.0);
                    v170 = t1.tx;
                    v171 = t1.ty;
                    v213 = *&t1.a;
                    v211 = *&t1.c;
                    CGAffineTransformMakeRotation(&t1, v169);
                    v172 = t1.tx;
                    v173 = t1.ty;
                    v210 = *&t1.a;
                    v207 = *&t1.c;
                    [v75 setAlpha:v140];
                    *&t1.a = v210;
                    *&t1.c = v207;
                    t1.tx = v172;
                    t1.ty = v173;
                    *&t2.a = v213;
                    *&t2.c = v211;
                    t2.tx = v170;
                    t2.ty = v171;
                    CGAffineTransformConcat(&v217, &t1, &t2);
                    t1 = v217;
                    [v75 setTransform:&t1];

                    v97(v216, v96);
                    v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom] = 0;
                    v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide] = *&v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] == 0.0;
                    return;
                  }

                  v226.origin.x = v116;
                  v226.origin.y = v141;
                  v226.size.width = v118;
                  v226.size.height = v117;
                  v146 = CGRectGetMinY(v226);
                  v147 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop];
                  v148 = *&v2[v143];
                  if (v147 <= v148)
                  {
                    if (v146 <= v147)
                    {
                      v146 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionHeaderZoneTop];
                    }

                    if (v148 < v146)
                    {
                      v146 = *&v2[v143];
                    }

                    v149 = (v146 - v147) / (v148 - v147) + 0.0;
                    *&v149 = v149;
                    [v134 _solveForInput:v149];
                    v145 = v150;
                    goto LABEL_43;
                  }

                  goto LABEL_83;
                }

                goto LABEL_81;
              }

LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v228.origin.x = v39;
          v228.origin.y = v88;
          v228.size.width = v43;
          v228.size.height = v45;
          if (*&v2[v194] < CGRectGetMinY(v228))
          {
            CGAffineTransformMakeTranslation(&t1, 0.0, v186 + v189 - (v188 + v187) * v184 - (v190 + v185));
            [v75 setTransform:&t1];
            v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide] = 1;
            v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom] = 1;
            *&v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] = 0;
            if ((v75[v92] & 1) == 0)
            {
              [v75 setAlpha:0.0];

              v157 = v216;
LABEL_75:
              v97(v157, v96);
              return;
            }

            goto LABEL_58;
          }

          t1.a = v195;
          t1.b = v197;
          t1.c = v199;
          t1.d = v201;
          t1.tx = v202;
          *&t1.ty = v210;
          t2.a = a;
          t2.b = b;
          t2.c = c;
          t2.d = d;
          t2.tx = tx;
          t2.ty = ty;
          CGAffineTransformConcat(&v217, &t1, &t2);
          t1 = v217;
          [v75 setTransform:&t1];
          v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide] = 0;
          v162 = OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha;
          *&v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha] = 0x3FF0000000000000;
          v75[OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom] = 0;
          [v75 setAlpha:1.0];
          v229.origin.x = v39;
          v229.origin.y = v88;
          v229.size.width = v43;
          v229.size.height = v45;
          v163 = CGRectGetMinY(v229);
          v164 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop];
          v165 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom];
          if (v164 > v165)
          {
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v163 <= v164)
          {
            v163 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneTop];
          }

          if (v165 < v163)
          {
            v163 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_labelTransitionDockZoneBottom];
          }

          *&v75[v162] = 1.0 - ((v163 - v164) / (v165 - v164) + 0.0);
          if (v75[v92] == 1 && v89 != v207)
          {
LABEL_58:
            v166 = v216;
LABEL_59:
            v97(v166, v96);

            return;
          }

          v230.origin.x = v39;
          v230.origin.y = v88;
          v230.size.width = v43;
          v230.size.height = v45;
          v174 = CGRectGetMinY(v230);
          v175 = OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop;
          v176 = v216;
          if (*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneTop] <= v174)
          {
            v231.origin.x = v39;
            v231.origin.y = v88;
            v231.size.width = v43;
            v231.size.height = v45;
            v177 = CGRectGetMinY(v231);
            v178 = *&v2[v175];
            v179 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom];
            if (v178 > v179)
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            if (v177 <= v178)
            {
              v177 = *&v2[v175];
            }

            if (v179 < v177)
            {
              v177 = *&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_iconTransitionDockZoneBottom];
            }

            v180 = 1.0 - ((v177 - v178) / (v179 - v178) + 0.0);
            *&v180 = v180;
            [*&v2[OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_easeInFunction] _solveForInput:v180];
            v182 = v181;
            if (v89 != v207)
            {
              [v75 setAlpha:v182];
LABEL_74:

              v157 = v176;
              goto LABEL_75;
            }
          }

          else
          {
            if (v89 != v207)
            {
              v166 = v216;
              goto LABEL_59;
            }

            v182 = 1.0;
          }

          [v2 setProgressOfBottomItemIconInDock:v182];
          goto LABEL_74;
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    goto LABEL_16;
  }

  v74 = v216;
}

uint64_t sub_100082410(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v107 = v95 - v12;
  v13 = type metadata accessor for IndexPath();
  v108 = *(v13 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v13);
  v105 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v111 = v95 - v17;
  v113.receiver = v4;
  v113.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v113, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v18)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v19 = v18;
  sub_100085CB4();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_100083084(v20);

  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v21 & 0xFFFFFFFFFFFFFF8;
  v104 = v4;
  v110 = v13;
  if (v21 >> 62)
  {
    goto LABEL_93;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v23 = 0;
      v24 = v21 & 0xC000000000000001;
      while (1)
      {
        if (v24)
        {
          v25 = v21;
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v22 + 16))
          {
            goto LABEL_90;
          }

          v25 = v21;
          v26 = *(v21 + 8 * v23 + 32);
        }

        v27 = v26;
        v21 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_89;
        }

        v28 = [v26 representedElementKind];
        if (!v28)
        {
          break;
        }

        v29 = v22;
        v30 = v28;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!v33)
        {
          v22 = v29;
          goto LABEL_8;
        }

        v36 = v31 == v34 && v33 == v35;
        if (v36)
        {
          v21 = v25;

          goto LABEL_31;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v29;
        if (v37)
        {
          v21 = v25;
LABEL_31:

          v4 = v104;
          v13 = v110;
          goto LABEL_32;
        }

LABEL_9:

        ++v23;
        v36 = v21 == i;
        v21 = v25;
        if (v36)
        {
          goto LABEL_25;
        }
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_8:

      goto LABEL_9;
    }

LABEL_25:

    v4 = v104;
    v13 = v110;
LABEL_26:
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    v41 = v111;
    IndexPath.init(item:section:)();
    v42 = sub_100080E8C(v38, v40);

    (*(v108 + 8))(v41, v13);
    if (v42)
    {
      type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_32:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v44 = Strong;
    v45 = [v4 collectionView];
    if (!v45)
    {
      if (v21)
      {
        if (v21 >> 62)
        {
          sub_100085CB4();

          v92 = _bridgeCocoaArray<A>(_:)();

          goto LABEL_100;
        }

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100085CB4();

LABEL_56:
      }

      else
      {
      }

      goto LABEL_57;
    }

    v46 = v45;
    if (!v27)
    {
      if (!v21)
      {

        return v21;
      }

      if (!(v21 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100085CB4();

        return v21;
      }

      sub_100085CB4();

      v93 = _bridgeCocoaArray<A>(_:)();

LABEL_103:
      swift_bridgeObjectRelease_n();
      return v93;
    }

    v47 = v27;
    v48 = v44;
    sub_100080808(v44, v27);
    v100 = v48;

    v101 = v47;
    v49 = [v4 indexPathsOfItemsPinnedToBottom];
    v22 = sub_100085DA8(&qword_1000BC4F8);
    v50 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = v50;
    v103 = v46;
    v104 = v4;
    v110 = v13;
    v95[0] = v21 >> 62;
    v99 = v22;
    if (v21)
    {
      v51 = v21 & 0xFFFFFFFFFFFFFF8;
      if (v21 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v52 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      i = v4;

      if (v52)
      {
        v53 = 0;
        v106 = v21 & 0xC000000000000001;
        v54 = (v108 + 8);
        v55 = v52;
        while (1)
        {
          if (v106)
          {
            v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v53 >= *(v51 + 16))
            {
              goto LABEL_92;
            }

            v58 = *(v21 + 8 * v53 + 32);
          }

          v59 = v58;
          v60 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_91;
          }

          sub_100080FD8(v58);
          if (*(v59 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom) == 1 && *(v59 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_staysVisibleWhenPinnedToBottom) == 1)
          {
            v61 = [v59 indexPath];
            v62 = v105;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v22 = v111;
            sub_100083B98(v111, v62);
            (*v54)(v22, v110);
          }

          else
          {
            v56 = [v59 indexPath];
            v22 = v111;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v57 = v107;
            sub_1000856AC(v22, v107);
            (*v54)(v22, v110);
            sub_100085D40(v57);
          }

          ++v53;
          v36 = v60 == v55;
          v51 = v21 & 0xFFFFFFFFFFFFFF8;
          if (v36)
          {
            v50 = v112;
            v46 = v103;
            break;
          }
        }
      }
    }

    v98 = v21;
    v64 = [v46 numberOfItemsInSection:{0, v95[0]}];
    v97 = v95;
    __chkstk_darwin(v64);
    i = v65;
    v95[-2] = v65;
    v66 = *(v50 + 32);
    v67 = v66 & 0x3F;
    v68 = ((1 << v66) + 63) >> 6;
    v69 = 8 * v68;

    if (v67 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v94 = swift_slowAlloc();
        v85 = sub_100085308(v94, v68, v50, sub_100085D00);

LABEL_80:

        v86 = v104;
        v87 = [v104 indexPathsOfItemsPinnedToBottom];
        v88 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v87) = sub_1000831E4(v85, v88);

        v89 = v103;
        if ((v87 & 1) == 0)
        {
          isa = Set._bridgeToObjectiveC()().super.isa;
          [v86 setIndexPathsOfItemsPinnedToBottom:isa];
        }

        v91 = v98;
        if (!v98)
        {

          return 0;
        }

        if (!v95[0])
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100085CB4();

          return v91;
        }

        sub_100085CB4();

        v93 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_103;
      }
    }

    v96 = v68;
    v95[1] = v95;
    __chkstk_darwin(v70);
    v102 = v95 - ((v69 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v102, v69);
    v71 = 0;
    v72 = v50;
    v73 = v50 + 56;
    v74 = 1 << *(v50 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v21 = v75 & *(v50 + 56);
    v76 = (v74 + 63) >> 6;
    v107 = v108 + 16;
    v105 = 0;
    v106 = v108 + 8;
    v77 = v108;
    v78 = v110;
    while (v21)
    {
      v79 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_75:
      v82 = v79 | (v71 << 6);
      v83 = v111;
      (*(v77 + 16))(v111, *(v72 + 48) + *(v77 + 72) * v82, v78);
      v22 = IndexPath.item.getter();
      (*(v77 + 8))(v83, v78);
      if (v22 < i)
      {
        *&v102[(v82 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v82;
        if (__OFADD__(v105++, 1))
        {
          __break(1u);
LABEL_79:
          v85 = sub_100085398(v102, v96, v105, v72);
          goto LABEL_80;
        }
      }
    }

    v80 = v71;
    while (1)
    {
      v71 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v71 >= v76)
      {
        goto LABEL_79;
      }

      v81 = *(v73 + 8 * v71);
      ++v80;
      if (v81)
      {
        v79 = __clz(__rbit64(v81));
        v21 = (v81 - 1) & v81;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    ;
  }

  if (!v21)
  {
LABEL_57:

    return v21;
  }

  if (!(v21 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100085CB4();
    goto LABEL_56;
  }

  sub_100085CB4();

  v92 = _bridgeCocoaArray<A>(_:)();
LABEL_100:
  swift_bridgeObjectRelease_n();

  return v92;
}

void *sub_100083084(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000831E4(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for IndexPath();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v63);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v51 - v8;
  v61 = sub_10000589C(&qword_1000BD4C8, &qword_1000914C8);
  v9 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v62 = &v51 - v10;
  v11 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v67 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = &v51 - v15;
  v16 = *(a2 + 56);
  v54 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v19 = ~(-1 << v17);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = *(a1 + 56);
  v52 = a1 + 56;
  v22 = 1 << *(a1 + 32);
  if (v22 < 64)
  {
    v18 = ~(-1 << v22);
  }

  v23 = v18 & v21;
  v53 = (v17 + 63) >> 6;
  v68 = (v4 + 56);
  v51 = (v22 + 63) >> 6;
  v64 = (v4 + 48);
  v65 = v4 + 16;
  v56 = a2;
  v57 = (v4 + 32);
  v66 = v4;
  v60 = (v4 + 8);

  v55 = a1;

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if (!v20)
    {
      if (v53 <= v25 + 1)
      {
        v30 = v25 + 1;
      }

      else
      {
        v30 = v53;
      }

      v31 = v30 - 1;
      v28 = v63;
      v29 = v64;
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v53)
        {
          v20 = 0;
          v33 = 1;
          v25 = v31;
          goto LABEL_18;
        }

        v20 = *(v54 + 8 * v27);
        ++v25;
        if (v20)
        {
          v25 = v27;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v27 = v25;
    v28 = v63;
    v29 = v64;
LABEL_17:
    v32 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    (*(v66 + 16))(v69, *(v56 + 48) + *(v66 + 72) * (v32 | (v27 << 6)), v28);
    v33 = 0;
LABEL_18:
    v34 = *v68;
    result = (*v68)(v69, v33, 1, v28);
    if (!v23)
    {
      break;
    }

    v35 = v26;
LABEL_28:
    v38 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(v66 + 16))(v67, *(v55 + 48) + *(v66 + 72) * (v38 | (v35 << 6)), v28);
    v39 = 0;
LABEL_29:
    v40 = v67;
    v34(v67, v39, 1, v28);
    v41 = v62;
    v42 = *(v61 + 48);
    sub_100085DEC(v69, v62);
    sub_100085DEC(v40, v41 + v42);
    v43 = *v29;
    if ((*v29)(v41, 1, v28) == 1)
    {

      v50 = v43(v41 + v42, 1, v28);
      result = 1;
      if (v50 == 1)
      {
        return result;
      }

      sub_100085D40(v41 + v42);
      return 0;
    }

    if (v43(v41 + v42, 1, v28) == 1)
    {

      (*v60)(v41, v28);
      return 0;
    }

    v44 = v58;
    v45 = *v57;
    (*v57)(v58, v41, v28);
    v46 = v41 + v42;
    v47 = v59;
    v45(v59, v46, v28);
    sub_100085DA8(&qword_1000BCCE8);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *v60;
    (*v60)(v47, v28);
    result = (v49)(v44, v28);
    if ((v48 & 1) == 0)
    {

      return 0;
    }
  }

  if (v51 <= v26 + 1)
  {
    v36 = v26 + 1;
  }

  else
  {
    v36 = v51;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v35 >= v51)
    {
      v23 = 0;
      v39 = 1;
      v26 = v37;
      goto LABEL_29;
    }

    v23 = *(v52 + 8 * v35);
    ++v26;
    if (v23)
    {
      v26 = v35;
      goto LABEL_28;
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

Class sub_100083770(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(double, double, double, double))
{
  v12 = a1;
  v13 = a7(a2, a3, a4, a5);

  if (v13)
  {
    sub_100085CB4();
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  return v14.super.isa;
}

uint64_t sub_10008398C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout____lazy_storage___easingFunctions);

  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom);
}

uint64_t sub_100083A7C(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == a2 && v14 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100084400(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100083B98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100085DA8(&qword_1000BC4F8);
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
      sub_100085DA8(&qword_1000BCCE8);
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
    sub_100084570(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100083E50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000589C(&qword_1000BD4D8, &qword_1000914D8);
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
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
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

uint64_t sub_1000840B8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for IndexPath();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000589C(&qword_1000BD4C0, &qword_1000914C0);
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
      sub_100085DA8(&qword_1000BC4F8);
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

Swift::Int sub_100084400(Swift::Int result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100083E50(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1000847EC();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100084B68(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(a2);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v6;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100084570(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = __chkstk_darwin(v6);
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
    sub_1000840B8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100084930();
      goto LABEL_12;
    }

    sub_100084DA0(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100085DA8(&qword_1000BC4F8);
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
      sub_100085DA8(&qword_1000BCCE8);
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