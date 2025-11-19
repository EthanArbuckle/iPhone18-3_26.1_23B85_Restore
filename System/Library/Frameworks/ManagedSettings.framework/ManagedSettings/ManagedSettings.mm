int main(int argc, const char **argv, const char **envp)
{
  v3 = [objc_opt_self() sharedProgram];
  qword_100011598 = v3;
  v4 = [objc_allocWithZone(type metadata accessor for ManagedSettingsDiagnosticsToolDelegate()) init];
  [v3 setDelegate:v4];

  result = [qword_100011598 main];
  __break(1u);
  return result;
}

id sub_1000013A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSettingsDiagnosticsToolDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000013FC()
{
  v1 = &v0[OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath];
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x800000010000A640;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for DiagnosticsCommand();
  v2 = objc_msgSendSuper2(&v22, "init");
  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  v4 = String._bridgeToObjectiveC()();
  [v2 setShortEnglishDescription:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setLongEnglishDescription:v5];

  v6 = &v2[OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath];
  v7 = *&v2[OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath];
  v8 = *&v2[OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath + 8];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 93;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  [v2 setUsageLine:{v11, 2960731, 0xE300000000000000}];

  v12 = [objc_allocWithZone(CLIOption) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setShortName:v13];

  v14 = *v6;
  v15 = *(v6 + 1);

  v16 = String._bridgeToObjectiveC()();

  [v12 setLongName:v16];

  [v12 setParameterCount:1];
  v17 = String._bridgeToObjectiveC()();
  [v12 setShortEnglishDescription:v17];

  sub_100002D08(&qword_100011520, &unk_100009618);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000095C0;
  *(v18 + 32) = v12;
  sub_100003698();
  v19 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setOptions:isa];

  return v2;
}

uint64_t sub_100001714(void *a1)
{
  v195 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v195 - 1);
  v4 = v3[8];
  (__chkstk_darwin)();
  v194 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_100002D08(&qword_1000114F0, &qword_1000095F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v179 - v7;
  v9 = type metadata accessor for URL();
  v196 = *(v9 - 8);
  v197 = v9;
  v10 = *(v196 + 64);
  v11 = (__chkstk_darwin)();
  v191 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v190 = &v179 - v14;
  v15 = __chkstk_darwin(v13);
  v193 = &v179 - v16;
  v17 = __chkstk_darwin(v15);
  v192 = &v179 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v179 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v179 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v179 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v179 - v29;
  __chkstk_darwin(v28);
  v198 = &v179 - v31;
  v32 = [a1 dictionaryWithOptionsAndValues];
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v33 + 16) && (v34 = sub_1000032F8(*(v1 + OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath), *(v1 + OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath + 8)), (v35 & 1) != 0))
  {
    sub_100003580(*(v33 + 56) + 32 * v34, v203);
  }

  else
  {

    memset(v203, 0, sizeof(v203));
  }

  sub_100003370(v203, &v200);
  if (!v201)
  {
    sub_100003520(&v200, &qword_1000114F8, &qword_100009600);
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000033E0(v43, static Logger.diagnostics);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "diagnostics path cannot be nil", v46, 2u);
    }

    goto LABEL_59;
  }

  v36 = v196;
  sub_100003418(&v200, v202);
  *&v200 = 0;
  *(&v200 + 1) = 0xE000000000000000;
  v37._countAndFlagsBits = 0x2F2F3A656C6966;
  v37._object = 0xE700000000000000;
  String.append(_:)(v37);
  _print_unlocked<A, B>(_:_:)();
  URL.init(string:)();

  v38 = v197;
  if ((*(v36 + 48))(v8, 1, v197) == 1)
  {
    sub_100003520(v8, &qword_1000114F0, &qword_1000095F8);
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000033E0(v39, static Logger.diagnostics);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to convert diagnostics path to URL", v42, 2u);
    }

    goto LABEL_58;
  }

  (*(v36 + 32))(v198, v8, v38);
  v199 = 0;
  v189 = objc_opt_self();
  v47 = [v189 defaultManager];
  URL.path.getter();
  v48 = String._bridgeToObjectiveC()();

  v49 = [v47 fileExistsAtPath:v48 isDirectory:&v199];

  if (!v49 || (v199 & 1) == 0)
  {
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_1000033E0(v87, static Logger.diagnostics);
    v88 = v198;
    (*(v36 + 16))(v30, v198, v38);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v200 = v92;
      *v91 = 136315138;
      sub_100003474();
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v96 = *(v36 + 8);
      v96(v30, v38);
      v97 = sub_100002D50(v93, v95, &v200);

      *(v91 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v89, v90, "Path doesn't exist at %s or is NOT a directory", v91, 0xCu);
      sub_100003428(v92);

      v96(v198, v38);
    }

    else
    {

      v98 = *(v36 + 8);
      v98(v30, v38);
      v98(v88, v38);
    }

    goto LABEL_58;
  }

  *&v200 = 1919251285;
  *(&v200 + 1) = 0xE400000000000000;
  v50 = v3[13];
  v51 = v194;
  v187 = enum case for URL.DirectoryHint.isDirectory(_:);
  v52 = v195;
  v186 = v3 + 13;
  v185 = v50;
  v50(v194);
  v184 = sub_1000034CC();
  URL.appending<A>(path:directoryHint:)();
  v53 = v3[1];
  v188 = v3 + 1;
  v183 = v53;
  v53(v51, v52);
  v54 = objc_opt_self();
  *&v200 = 0;
  v55 = [v54 collectDiagnosticsWithOutError:&v200];
  v56 = v200;
  if (v55)
  {
    v57 = v55;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v56;

    v59 = v189;
    v60 = [v189 defaultManager];
    URL._bridgeToObjectiveC()(v61);
    v63 = v62;
    URL._bridgeToObjectiveC()(v64);
    v66 = v65;
    *&v200 = 0;
    v67 = [v60 copyItemAtURL:v63 toURL:v65 error:&v200];

    if (v67)
    {
      v68 = v200;
      v69 = [v59 defaultManager];
      URL._bridgeToObjectiveC()(v70);
      v72 = v71;
      *&v200 = 0;
      v73 = [v69 removeItemAtURL:v71 error:&v200];

      if (v73)
      {
        v74 = qword_1000113C0;
        v75 = v200;
        if (v74 != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        sub_1000033E0(v76, static Logger.diagnostics);
        v77 = v197;
        (*(v36 + 16))(v21, v27, v197);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v180 = v80;
          v182 = swift_slowAlloc();
          *&v200 = v182;
          *v80 = 136315138;
          sub_100003474();
          v181 = v79;
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          v83 = v82;
          v84 = *(v36 + 8);
          v84(v21);
          v85 = sub_100002D50(v81, v83, &v200);

          v86 = v180;
          *(v180 + 1) = v85;
          _os_log_impl(&_mh_execute_header, v78, v181, "Successfully created user diagnostic files at %s", v86, 0xCu);
          sub_100003428(v182);
        }

        else
        {

          v84 = *(v36 + 8);
          (v84)(v21, v77);
        }

        (v84)(v24, v77);
        (v84)(v27, v77);
        v110 = 1;
        v103 = v198;
        goto LABEL_43;
      }

      v102 = v200;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v84 = *(v36 + 8);
      v101 = v197;
      (v84)(v24, v197);
    }

    else
    {
      v100 = v200;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v101 = v38;
      v84 = *(v36 + 8);
      (v84)(v24, v38);
    }

    (v84)(v27, v101);
  }

  else
  {
    v99 = v200;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v84 = *(v36 + 8);
    (v84)(v27, v38);
    v59 = v189;
  }

  v103 = v198;
  if (qword_1000113C0 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_1000033E0(v104, static Logger.diagnostics);
  swift_errorRetain();
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v107 = 138412290;
    swift_errorRetain();
    v109 = _swift_stdlib_bridgeErrorToNSError();
    *(v107 + 4) = v109;
    *v108 = v109;
    _os_log_impl(&_mh_execute_header, v105, v106, "Failed to collect user diagnostics. Error: %@", v107, 0xCu);
    sub_100003520(v108, &qword_100011510, &qword_100009608);
  }

  else
  {
  }

  v110 = 0;
LABEL_43:
  v111 = v192;
  v113 = v193;
  v112 = v194;
  *&v200 = 0x6D6574737953;
  *(&v200 + 1) = 0xE600000000000000;
  v114 = v195;
  v185(v194, v187, v195);
  URL.appending<A>(path:directoryHint:)();
  v183(v112, v114);
  v115 = objc_opt_self();
  *&v200 = 0;
  v116 = [v115 collectDiagnosticsWithOutError:&v200];
  v117 = v200;
  if (!v116)
  {
    v159 = v200;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (v84)(v111, v197);
    goto LABEL_52;
  }

  LODWORD(v194) = v110;
  v195 = v84;
  v118 = v116;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v117;

  v120 = [v59 defaultManager];
  URL._bridgeToObjectiveC()(v121);
  v123 = v122;
  URL._bridgeToObjectiveC()(v124);
  v126 = v125;
  *&v200 = 0;
  v127 = v59;
  v128 = [v120 copyItemAtURL:v123 toURL:v125 error:&v200];

  v129 = v200;
  if (!v128)
  {
    goto LABEL_50;
  }

  v130 = v200;
  v131 = [v127 defaultManager];
  URL._bridgeToObjectiveC()(v132);
  v134 = v133;
  *&v200 = 0;
  v135 = [v131 removeItemAtURL:v133 error:&v200];

  v129 = v200;
  if (!v135)
  {
LABEL_50:
    v156 = v129;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v157 = v197;
    v158 = v195;
    (v195)(v113, v197);
    v84 = v158;
    (v158)(v111, v157);
LABEL_52:
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    sub_1000033E0(v160, static Logger.diagnostics);
    swift_errorRetain();
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *v163 = 138412290;
      swift_errorRetain();
      v165 = _swift_stdlib_bridgeErrorToNSError();
      *(v163 + 4) = v165;
      *v164 = v165;
      _os_log_impl(&_mh_execute_header, v161, v162, "Failed to collect system diagnostics. Error: %@", v163, 0xCu);
      sub_100003520(v164, &qword_100011510, &qword_100009608);
    }

    goto LABEL_57;
  }

  v136 = qword_1000113C0;
  v137 = v200;
  if (v136 != -1)
  {
    swift_once();
  }

  v138 = type metadata accessor for Logger();
  v139 = sub_1000033E0(v138, static Logger.diagnostics);
  v142 = *(v36 + 16);
  v141 = (v36 + 16);
  v140 = v142;
  v143 = v190;
  v144 = v197;
  (v142)(v190, v111, v197);
  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.default.getter();
  v147 = os_log_type_enabled(v145, v146);
  v84 = v195;
  if (v147)
  {
    v148 = swift_slowAlloc();
    v189 = v139;
    v188 = v140;
    v149 = v148;
    v150 = swift_slowAlloc();
    *&v200 = v150;
    *v149 = 136315138;
    sub_100003474();
    v151 = dispatch thunk of CustomStringConvertible.description.getter();
    v192 = v141;
    v152 = v111;
    v154 = v153;
    (v84)(v143, v144);
    v155 = sub_100002D50(v151, v154, &v200);

    *(v149 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v145, v146, "Successfully created system diagnostic files at %s", v149, 0xCu);
    sub_100003428(v150);
    v103 = v198;

    v140 = v188;

    (v84)(v193, v144);
    (v84)(v152, v144);
  }

  else
  {

    (v84)(v143, v144);
    (v84)(v193, v144);
    (v84)(v111, v144);
  }

  v167 = v191;
  if ((v194 & 1) == 0)
  {
LABEL_57:
    (v84)(v103, v197);
LABEL_58:
    sub_100003428(v202);
LABEL_59:
    sub_100003520(v203, &qword_1000114F8, &qword_100009600);
    return 0;
  }

  v168 = v197;
  (v140)(v191, v103, v197);
  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *&v200 = v172;
    *v171 = 136315138;
    sub_100003474();
    v173 = dispatch thunk of CustomStringConvertible.description.getter();
    v174 = v103;
    v176 = v175;
    (v84)(v167, v168);
    v177 = sub_100002D50(v173, v176, &v200);

    *(v171 + 4) = v177;
    _os_log_impl(&_mh_execute_header, v169, v170, "Successfully created diagnostic files at %s", v171, 0xCu);
    sub_100003428(v172);

    v178 = v174;
  }

  else
  {

    (v84)(v167, v168);
    v178 = v103;
  }

  (v84)(v178, v168);
  sub_100003428(v202);
  sub_100003520(v203, &qword_1000114F8, &qword_100009600);
  return 1;
}

id sub_100002C9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsCommand();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002D08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002D50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002E1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003580(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003428(v11);
  return v7;
}

unint64_t sub_100002E1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002F28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100002F28(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002F74(a1, a2);
  sub_1000030A4(&off_10000C538);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002F74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003190(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003190(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000030A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100003204(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003190(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002D08(&qword_100011518, &qword_100009610);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003204(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D08(&qword_100011518, &qword_100009610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1000032F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000035E0(a1, a2, v6);
}

uint64_t sub_100003370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_1000114F8, &qword_100009600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000033E0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

_OWORD *sub_100003418(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100003428(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100003474()
{
  result = qword_100011500;
  if (!qword_100011500)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011500);
  }

  return result;
}

unint64_t sub_1000034CC()
{
  result = qword_100011508;
  if (!qword_100011508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011508);
  }

  return result;
}

uint64_t sub_100003520(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D08(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000035E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100003698()
{
  result = qword_100011528;
  if (!qword_100011528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011528);
  }

  return result;
}

uint64_t Logger.diagnostics.unsafeMutableAddressor()
{
  if (qword_1000113C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000033E0(v0, static Logger.diagnostics);
}

uint64_t sub_100003748()
{
  v0 = type metadata accessor for Logger();
  sub_100003870(v0, static Logger.diagnostics);
  sub_1000033E0(v0, static Logger.diagnostics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.diagnostics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000113C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000033E0(v2, static Logger.diagnostics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100003870(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_100003DE0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSMutableString stringWithCapacity:a2];
  for (i = [NSMutableString stringWithCapacity:a2 + 1];
  {
    [v4 appendString:@"\t"];
  }

  [i appendFormat:@"\n%@", v4];
  v6 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:i];
  v7 = [NSString stringWithFormat:@"%@%@", v4, v6];

  return v7;
}

void sub_100003EE4()
{
  v0 = +[CLIProgram sharedProgram];
  v12 = [v0 programName];

  v1 = +[NSBundle mainBundle];
  v2 = [v1 infoDictionary];
  v3 = [v2 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
  v4 = [v2 objectForKeyedSubscript:kCFBundleVersionKey];
  if ([v3 length])
  {
    v5 = [@" " stringByAppendingString:v3];
  }

  else
  {
    v5 = &stru_10000C7F0;
  }

  if ([v4 length])
  {
    sub_100006E14(__stdoutp, @"%@%@ (%@)\n", v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    sub_100006E14(__stdoutp, @"%@%@\n", v6, v7, v8, v9, v10, v11, v12);
  }
}

void sub_100004030(void *a1)
{
  v1 = a1;
  v2 = [qword_1000115C0 objectForKeyedSubscript:v1];
  v3 = [qword_1000115D0 objectForKey:v2];
  v10 = v3;
  if (v1 && !v2)
  {
    v67 = v3;

    sub_100006E14(__stdoutp, @"\n", v11, v12, v13, v14, v15, v16, v63);
    v68 = 0;
LABEL_8:
    sub_100004398(qword_1000115D8);
    sub_100006E14(__stdoutp, @"Commands:\n", v22, v23, v24, v25, v26, v27, v64);
    v28 = qword_1000115C8;
    v29 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:1];
    v74 = v29;
    v30 = [NSArray arrayWithObjects:&v74 count:1];
    v31 = [v28 sortedArrayUsingDescriptors:v30];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v70;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v70 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v69 + 1) + 8 * i);
          v38 = __stdoutp;
          v39 = [v37 nameSummaryString];
          v65 = [v37 shortEnglishDescription];
          sub_100006E14(v38, @"\t%@\n\t%@\n\n", v40, v41, v42, v43, v44, v45, v39);
        }

        v34 = [v32 countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v34);
    }

    v10 = v67;
    v1 = v68;
    goto LABEL_21;
  }

  sub_100006E14(__stdoutp, @"\n", v4, v5, v6, v7, v8, v9, v63);
  if (!v2)
  {
    v67 = v10;
    v68 = v1;
    goto LABEL_8;
  }

  v17 = [v2 nameSummaryString];
  v18 = [v2 usageLine];

  if (v18)
  {
    v19 = [v2 name];
    v20 = [v2 usageLine];
    v21 = [NSString stringWithFormat:@"Usage: %@ %@\n\t", v19, v20];
  }

  else
  {
    v21 = &stru_10000C7F0;
  }

  v46 = __stdoutp;
  v66 = [v2 shortEnglishDescription];
  sub_100006E14(v46, @"%@\n\t%@%@\n\n", v47, v48, v49, v50, v51, v52, v17);

  v53 = [v2 longEnglishDescription];
  v54 = v53;
  if (v53)
  {
    v55 = __stdoutp;
    v56 = sub_100003DE0(v53, 1);
    sub_100006E14(v55, @"%@\n\n", v57, v58, v59, v60, v61, v62, v56);
  }

  sub_100004398(qword_1000115D8);
  if (v10)
  {
    sub_100004398(v10);
  }

LABEL_21:
}

void sub_100004398(void *a1)
{
  v1 = a1;
  if ([v1[1] count])
  {
    if (qword_1000115D8 == v1)
    {
      v8 = @"Global options:\n";
    }

    else
    {
      v8 = @"Command options:\n";
    }

    sub_100006E14(__stdoutp, v8, v2, v3, v4, v5, v6, v7, v37);
    v39 = v1;
    v9 = v1[1];
    v10 = [NSSortDescriptor sortDescriptorWithKey:@"canonicalName" ascending:1];
    v45 = v10;
    v11 = [NSArray arrayWithObjects:&v45 count:1];
    v12 = [v9 sortedArrayUsingDescriptors:v11];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          v19 = __stdoutp;
          v20 = [v18 nameSummaryString];
          v38 = [v18 shortEnglishDescription];
          sub_100006E14(v19, @"\t%@\n\t%@\n\n", v21, v22, v23, v24, v25, v26, v20);

          v27 = [v18 longEnglishDescription];
          v28 = v27;
          if (v27)
          {
            v29 = __stdoutp;
            v30 = sub_100003DE0(v27, 1);
            sub_100006E14(v29, @"%@\n\n", v31, v32, v33, v34, v35, v36, v30);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v15);
    }

    v1 = v39;
  }
}

void sub_1000053EC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_100006EF4(@"Unknown option '%@'", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = [a1 command];
    sub_1000070AC(v11);
  }
}

void sub_10000544C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_100006EF4(@"Option '%@' missing an argument", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = [a1 command];
    sub_1000070AC(v11);
  }
}

void sub_100005708(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(*(*(a1 + 32) + 16) + 16) objectForKeyedSubscript:?];
  v4 = [v3 parameterCount];
  if (!v3)
  {
    sub_1000053EC(*(a1 + 32), v11);
    [(CLIOptionParser *)v9 dictionaryWithOptionsAndValues];
    return;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [*(a1 + 32) nextArgument];
  if (!v5)
  {
    sub_10000544C(*(a1 + 32), *(a1 + 40));
LABEL_5:
    v5 = 0;
  }

  v6 = *(a1 + 48);
  v7 = [v3 shortName];
  v8 = [v3 longName];
  (*(v6 + 16))(v6, v7, v8, v5);
}

uint64_t sub_1000058BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if (![*(a1 + 40) preserveMultipleArguments])
  {
    if (v9)
    {
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v11];
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v9)
  {
LABEL_10:
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 unsignedIntegerValue] + 1);
LABEL_12:
    v14 = v13;
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v11];

    goto LABEL_13;
  }

  if (!v12)
  {
    v13 = [NSMutableArray arrayWithObject:v9];
    goto LABEL_12;
  }

  [v12 addObject:v9];
LABEL_13:

  return 1;
}

void sub_100005B80(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000115D8;
  qword_1000115D8 = v1;

  v3 = objc_opt_new();
  v4 = qword_1000115C8;
  qword_1000115C8 = v3;

  v5 = objc_opt_new();
  v6 = qword_1000115C0;
  qword_1000115C0 = v5;

  qword_1000115D0 = +[NSMapTable strongToStrongObjectsMapTable];

  _objc_release_x1();
}

void sub_100005CBC(id a1)
{
  qword_1000115F0 = objc_opt_new();

  _objc_release_x1();
}

void sub_100005DE8(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v12 lastObject];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  v9 = v2;
  if (!v2)
  {
LABEL_14:
    sub_10000706C(64, @"Unrecognized format, valid formats are: text, JSON, plist", v3, v4, v5, v6, v7, v8, v11);
  }

  v10 = [v2 caseInsensitiveCompare:@"text"];
  if (!v10)
  {
    goto LABEL_11;
  }

  if ([v9 caseInsensitiveCompare:@"plist"])
  {
    if (![v9 caseInsensitiveCompare:@"json"])
    {
      v10 = 2;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v10 = 1;
LABEL_11:
  sub_100006EB4(v10);
}

BOOL sub_100006130(id a1, CLIOptionParser *a2)
{
  v2 = a2;
  sub_100003EE4();
  v3 = [(CLIOptionParser *)v2 nextArgument];

  sub_100004030(v3);
  return 1;
}

unint64_t sub_100006B4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 length];
    v7 = v6;
    if (v6 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = v6;
    }

    v9 = [v4 length];
    if (v9 >= 0x20)
    {
      v10 = 32;
    }

    else
    {
      v10 = v9;
    }

    v43 = v10;
    if (v7 && v9)
    {
      v42 = &v40;
      v11 = v43;
      v41 = v43 + 1;
      __chkstk_darwin(v9);
      v13 = &v40 - v12;
      bzero(&v40 - v12, v14);
      v15 = 0;
      v16 = vdupq_n_s64(v8);
      v17 = v11;
      v18 = xmmword_100009630;
      v19 = vdupq_n_s64(2uLL);
      v20 = v13;
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v16, v18));
        if (v21.i8[0])
        {
          *v20 = v15;
        }

        if (v21.i8[4])
        {
          v20[v11 + 1] = v15 + 1;
        }

        v15 += 2;
        v18 = vaddq_s64(v18, v19);
        v20 += 2 * v11 + 2;
      }

      while (((v8 + 2) & 0x7E) != v15);
      v22 = 0;
      v23 = vdupq_n_s64(v43);
      v24 = (v43 + 2) & 0x7E;
      v25 = xmmword_100009630;
      v26 = v13 + 8;
      v27 = vdupq_n_s64(2uLL);
      do
      {
        v28 = vmovn_s64(vcgeq_u64(v23, v25));
        if (v28.i8[0])
        {
          *(v26 - 1) = v22;
        }

        if (v28.i8[4])
        {
          *v26 = v22 + 1;
        }

        v22 += 2;
        v25 = vaddq_s64(v25, v27);
        v26 += 2;
      }

      while (v24 != v22);
      v40 = v13;
      v29 = v13 + 8;
      v30 = 1;
      do
      {
        v31 = 0;
        v44 = v30;
        v32 = v30 - 1;
        v33 = v29;
        do
        {
          v34 = [v3 characterAtIndex:{v31, v40}];
          v35 = [v4 characterAtIndex:v32];
          v36 = *(v33 - 1);
          v37 = *v33 + 1;
          v38 = v33[v11];
          if (v37 >= v38 + 1)
          {
            v37 = v38 + 1;
          }

          if (v34 != v35)
          {
            ++v36;
          }

          if (v37 >= v36)
          {
            v37 = v36;
          }

          v33[v17 + 1] = v37;
          ++v31;
          v33 = (v33 + v17 * 8 + 8);
        }

        while (v8 != v31);
        v30 = v44 + 1;
        v29 += 8;
      }

      while (v44 != v43);
      v5 = *&v40[8 * v41 * v8 + 8 * v43];
    }

    else if (v8 <= v43)
    {
      v5 = v43;
    }

    else
    {
      v5 = v8;
    }
  }

  return v5;
}

size_t sub_100006E14(FILE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

  v12 = fwrite([v11 UTF8String], 1uLL, objc_msgSend(v11, "lengthOfBytesUsingEncoding:", 4), a1);
  return v12;
}

void sub_100006EB4(uint64_t a1)
{
  if (qword_100011600 != -1)
  {
    sub_10000798C();
  }

  qword_1000115F8 = a1;
}

void sub_100006F2C(const char *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = [[NSString alloc] initWithFormat:v5 arguments:a3];

  if ([v13 length])
  {
    v6 = [v13 characterAtIndex:{objc_msgSend(v13, "length") - 1}] != 10;
  }

  else
  {
    v6 = 1;
  }

  v7 = __stderrp;
  v8 = +[CLIProgram sharedProgram];
  v9 = [v8 programName];
  fprintf(v7, "%s: %s: ", [v9 UTF8String], a1);

  v10 = v13;
  v11 = [v13 UTF8String];
  v12 = [v13 lengthOfBytesUsingEncoding:4];
  fwrite(v11, 1uLL, v12, __stderrp);
  if (v6)
  {
    fputc(10, __stderrp);
  }
}

void sub_1000070AC(void *a1)
{
  v1 = a1;
  [v1 usageLine];
  if (!objc_claimAutoreleasedReturnValue())
  {
    exit(64);
  }

  v2 = [v1 name];
  sub_10000706C(64, @"Usage: %@ %@\n", v3, v4, v5, v6, v7, v8, v2);
}

void sub_100007134()
{
  sub_100003DCC();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"CLICommand.m" lineNumber:47 description:@"Nothing to execute"];

  *v0 = *v1;
}

void sub_1000071A4()
{
  sub_100003DCC();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"CLICommand.m" lineNumber:53 description:@"Commands must have a name"];

  *v0 = *v1;
}

id *sub_100007214(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = CLIOptionParser;
    v7 = objc_msgSendSuper2(&v17, "init");
    a1 = v7;
    if (v7)
    {
      [v7 setArguments:v5];
      v8 = [a1 nextArgument];
      v9 = a1[4];
      a1[4] = v8;

      if (v6)
      {
        objc_storeStrong(a1 + 5, a3);
        v10 = [qword_1000115D0 objectForKey:v6];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_opt_new();
        }

        v14 = a1[2];
        a1[2] = v12;
      }

      else
      {
        if (qword_1000115E0 != -1)
        {
          dispatch_once(&qword_1000115E0, &stru_10000C610);
        }

        v13 = qword_1000115D8;
        v11 = a1[2];
        a1[2] = v13;
      }

      if (!a1[2])
      {
        v16 = +[NSAssertionHandler currentHandler];
        [v16 handleFailureInMethod:"initWithArguments:command:" object:a1 file:@"CLIOptionParsing.m" lineNumber:422 description:@"The commands or global options haven't been registered yet!"];
      }
    }
  }

  return a1;
}

void sub_100007394()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100007414(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"CLIOptionParsing.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"_canonicalName"}];

  *a4 = *a3;
}

void sub_1000074A4()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100007510()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10000757C()
{
  sub_100005C1C();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"CLIOptionParsing.m" lineNumber:302 description:{@"Short option '-%@' is duplicated", v0}];
}

void sub_1000075F4()
{
  sub_100005C1C();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"CLIOptionParsing.m" lineNumber:309 description:{@"Long option '--%@' is duplicated", v0}];
}

void sub_10000766C()
{
  sub_100005C1C();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"CLIOptionParsing.m" lineNumber:356 description:{@"Long option '--%@' is duplicated", v0}];
}

void sub_1000076E4()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100007750(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_new();
    [v1 setName:@"help"];
    [v1 setAliases:&off_10000CF58];
    [v1 setShortEnglishDescription:@"Show help for a command or show all commands."];
    [v1 setExecutionBlock:&stru_10000C670];
    [v1 register];
    v2 = objc_opt_new();

    [v2 setName:@"version"];
    [v2 setShortEnglishDescription:@"Show this program's version."];
    [v2 setExecutionBlock:&stru_10000C690];
    [v2 register];
  }
}

void sub_10000782C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CLIProgram.m" lineNumber:52 description:@"Calling +sharedProgram will not return a CLIProgram subclass"];
}

void sub_1000078B4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CLIProgram.m" lineNumber:313 description:@"-startRunLoop must be called on the main thread"];
}

unint64_t sub_100007928(unint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && !*(a1 + 8))
  {
    a1 = sub_100006B4C(v5, v6);
  }

  return a1;
}