void sub_100222940(uint64_t a1, void *a2)
{
  v3 = v2;
  v213 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v200 - v10;
  __chkstk_darwin(v12);
  v14 = &v200 - v13;
  __chkstk_darwin(v15);
  v202 = &v200 - v16;
  __chkstk_darwin(v17);
  v207 = &v200 - v18;
  __chkstk_darwin(v19);
  v21 = &v200 - v20;
  v227 = type metadata accessor for RemoteNonFollowedShow();
  v22 = *(v227 - 8);
  __chkstk_darwin(v227);
  v212 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v208 = &v200 - v25;
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v30 = &v200 - v29;
  v218 = *(a1 + 16);
  if (!v218)
  {
    v217 = _swiftEmptyArrayStorage;
    return;
  }

  v205 = v28;
  v216 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v209 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  v31 = 0;
  v211 = v8;
  v34 = *(v22 + 16);
  v32 = v22 + 16;
  v33 = v34;
  v220 = (v32 - 8);
  v228 = (v6 + 8);
  v217 = _swiftEmptyArrayStorage;
  v215 = *(v32 + 56);
  *&v35 = 136315394;
  v200 = v35;
  *&v35 = 136381955;
  v204 = v35;
  *&v35 = 136315138;
  v222 = v35;
  v225 = v5;
  v206 = v14;
  v210 = v21;
  v36 = v227;
  v223 = v32;
  v224 = v30;
  v221 = v34;
  v219 = v3;
  v201 = v11;
  while (1)
  {
    v226 = v31;
    v33(v30, v216 + v215 * v31, v36);
    v43 = RemoteNonFollowedShow.prioritizedIDs.getter();
    v230 = v43;
    sub_100168088(&qword_100578598);
    sub_100226254();
    if (Collection.isNotEmpty.getter())
    {
      break;
    }

    v75 = v211;
    static Logger.cloudSync.getter();
    v76 = v212;
    v33(v212, v30, v36);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v77, v78))
    {

      v79 = *v220;
      (*v220)(v76, v227);
      (*v228)(v75, v5);
      v79(v30, v227);
      v36 = v227;
      goto LABEL_36;
    }

    v37 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    v230 = v229;
    *v37 = v222;
    v33(v208, v76, v36);
    v38 = String.init<A>(describing:)();
    v40 = v39;
    v41 = *v220;
    v30 = v224;
    (*v220)(v76, v227);
    v42 = sub_1000153E0(v38, v40, &v230);

    *(v37 + 4) = v42;
    v5 = v225;
    _os_log_impl(&_mh_execute_header, v77, v78, "[NonFollowedShows] Remote Implicit Follow received without any meaningful podcast ID. There is nothing we can do with this show: %s", v37, 0xCu);
    sub_100004590(v229);

    (*v228)(v75, v5);
    v41(v30, v227);
    v3 = v219;
    v36 = v227;
LABEL_4:
    v31 = v226 + 1;
    v33 = v221;
    if (v226 + 1 == v218)
    {
      return;
    }
  }

  v44 = *(v43 + 2);
  v229 = v213;

  if (!v44)
  {
    goto LABEL_19;
  }

  v45 = 0;
  v214 = v43;
  v46 = v43 + 48;
  while (1)
  {
    v47 = *(v46 - 2);
    if (!*v46)
    {
      v54 = [v229 podcastForStoreId:*(v46 - 2)];

      if (v54)
      {
        break;
      }

      goto LABEL_9;
    }

    v48 = *(v46 - 1);
    if (*v46 == 1)
    {

      static Logger.cloudSync.getter();

      v49 = Logger.logObject.getter();
      v50 = v21;
      v51 = static os_log_type_t.error.getter();
      sub_1001F876C(v47, v48, 1u);
      if (os_log_type_enabled(v49, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v230 = v53;
        *v52 = v222;
        *(v52 + 4) = sub_1000153E0(v47, v48, &v230);
        _os_log_impl(&_mh_execute_header, v49, v51, "[NonFollowedShows] A remote podcast identified by a local ID as the UUID does not make any sense at all. Offending UUID: %s", v52, 0xCu);
        sub_100004590(v53);
        v5 = v225;
      }

      (*v228)(v50, v5);
      sub_1001F876C(v47, v48, 1u);
      v21 = v50;
      goto LABEL_9;
    }

    v55 = String._bridgeToObjectiveC()();
    v56 = [v229 podcastForFeedUrl:v55];

    sub_1001F876C(v47, v48, 2u);
    if (v56)
    {
      break;
    }

LABEL_9:
    v46 += 24;
    if (v44 == ++v45)
    {
      goto LABEL_18;
    }
  }

  v44 = v45;
LABEL_18:
  v3 = v219;
  v30 = v224;
  v43 = v214;
LABEL_19:
  v57 = *(v43 + 2);
  if (v44 == v57)
  {

    v58 = v206;
    static Logger.cloudSync.getter();
    v59 = static os_log_type_t.default.getter();
    v60 = v205;
    v61 = v227;
    v62 = v221;
    v221(v205, v30, v227);
    v63 = Logger.logObject.getter();
    if (os_log_type_enabled(v63, v59))
    {
      v64 = swift_slowAlloc();
      LODWORD(v203) = v59;
      v65 = v64;
      v214 = swift_slowAlloc();
      v230 = v214;
      *v65 = v200;
      v66 = Array.description.getter();
      v68 = v67;

      v69 = sub_1000153E0(v66, v68, &v230);
      v5 = v225;

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v62(v208, v60, v61);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      v73 = *v220;
      (*v220)(v60, v61);
      v74 = sub_1000153E0(v70, v72, &v230);

      *(v65 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v63, v203, "[NonFollowedShows] Received Implicit Follow from sync which doesn't exist in this device, we must insert it as Implicitly Followed: IDs %s, remote show: %s", v65, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v73 = *v220;
      (*v220)(v60, v61);
    }

    v97 = *v228;
    (*v228)(v58, v5);
    v3 = v219;
    sub_100004428(v219 + v209, &v230);
    v98 = v233;
    v99 = v234;
    sub_1000044A0(&v230, v233);
    v30 = v224;
    v100 = (*(v99 + 136))(v224, v229, v98, v99);
    sub_100004590(&v230);
    v101 = [v100 uuid];
    if (v101)
    {
      v229 = v73;
      v102 = v101;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v217 = sub_100243134(0, *(v217 + 2) + 1, 1, v217);
      }

      v21 = v210;
      v107 = *(v217 + 2);
      v106 = *(v217 + 3);
      if (v107 >= v106 >> 1)
      {
        v217 = sub_100243134((v106 > 1), v107 + 1, 1, v217);
      }

      v108 = v227;
      (v229)(v30, v227);
      v109 = v217;
      *(v217 + 2) = v107 + 1;
      v110 = &v109[16 * v107];
      v36 = v108;
      *(v110 + 4) = v103;
      *(v110 + 5) = v105;
LABEL_36:
      v3 = v219;
      goto LABEL_4;
    }

    v112 = v201;
    static Logger.cloudSync.getter();
    v113 = v100;
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = os_log_type_enabled(v114, v115);
    v36 = v227;
    if (v116)
    {
      LODWORD(v214) = v115;
      v229 = v73;
      v117 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v235 = v203;
      *v117 = v204;
      v118 = [v113 title];
      if (v118)
      {
        v119 = v118;
        v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v122 = v121;
      }

      else
      {
        v120 = 0;
        v122 = 0;
      }

      v230 = v120;
      v231 = v122;
      sub_100168088(&qword_100574230);
      v164 = String.init<A>(describing:)();
      v166 = sub_1000153E0(v164, v165, &v235);

      *(v117 + 4) = v166;
      *(v117 + 12) = 2080;
      v167 = [v113 uuid];
      if (v167)
      {
        v168 = v167;
        v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v170;
      }

      else
      {
        v169 = 0;
        v171 = 0;
      }

      v230 = v169;
      v231 = v171;
      v172 = String.init<A>(describing:)();
      v174 = sub_1000153E0(v172, v173, &v235);

      *(v117 + 14) = v174;
      *(v117 + 22) = 2081;
      v230 = MTPodcast.adamId.getter();
      LOBYTE(v231) = v175 & 1;
      sub_100168088(&qword_1005785A8);
      v176 = String.init<A>(describing:)();
      v178 = sub_1000153E0(v176, v177, &v235);

      *(v117 + 24) = v178;
      *(v117 + 32) = 1024;
      v179 = [v113 subscribed];

      *(v117 + 34) = v179;
      *(v117 + 38) = 1024;
      v180 = [v113 hidden];

      *(v117 + 40) = v180;
      *(v117 + 44) = 1024;
      v181 = [v113 isImplicitlyFollowed];

      *(v117 + 46) = v181;
      _os_log_impl(&_mh_execute_header, v114, v214, "[NonFollowedShows] New inserted podcast has no uuid: %{private}s, uuid: %s, adamID: %{private}s, isFollowed: %{BOOL}d, isHidden: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v117, 0x32u);
      swift_arrayDestroy();

      v5 = v225;
      v97(v201, v225);
      v30 = v224;
      (v229)(v224, v36);
    }

    else
    {

      v97(v112, v5);
      v30 = v224;
      v73(v224, v36);
    }

LABEL_68:
    v21 = v210;
    goto LABEL_4;
  }

  if (v44 >= v57)
  {
    __break(1u);
  }

  else
  {
    v80 = &v43[24 * v44 + 32];
    v82 = *(v80 + 8);
    v83 = *(v80 + 16);
    v230 = *v80;
    v81 = v230;
    v231 = v82;
    v232 = v83;
    sub_1002262B8(v230, v82, v83);
    v84 = v229;
    sub_1002243E0(&v230, v229, &v235);
    sub_1001F876C(v81, v82, v83);
    v85 = v235;

    if (v85)
    {
      v86 = v85;
      swift_bridgeObjectRelease_n();
      v87 = v207;
      static Logger.cloudSync.getter();
      v88 = static os_log_type_t.default.getter();
      v89 = v86;
      v90 = Logger.logObject.getter();
      if (os_log_type_enabled(v90, v88))
      {
        v91 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        v235 = v229;
        *v91 = v204;
        v92 = [v89 title];
        if (v92)
        {
          v93 = v92;
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;
        }

        else
        {
          v94 = 0;
          v96 = 0;
        }

        v36 = v227;
        v230 = v94;
        v231 = v96;
        sub_100168088(&qword_100574230);
        v123 = String.init<A>(describing:)();
        v125 = sub_1000153E0(v123, v124, &v235);

        *(v91 + 4) = v125;
        *(v91 + 12) = 2080;
        v126 = [v89 uuid];
        if (v126)
        {
          v127 = v126;
          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v129;
        }

        else
        {
          v128 = 0;
          v130 = 0;
        }

        v230 = v128;
        v231 = v130;
        v131 = String.init<A>(describing:)();
        v133 = sub_1000153E0(v131, v132, &v235);

        *(v91 + 14) = v133;
        *(v91 + 22) = 2081;
        v230 = MTPodcast.adamId.getter();
        LOBYTE(v231) = v134 & 1;
        sub_100168088(&qword_1005785A8);
        v135 = String.init<A>(describing:)();
        v137 = sub_1000153E0(v135, v136, &v235);

        *(v91 + 24) = v137;
        *(v91 + 32) = 1024;
        v138 = [v89 subscribed];

        *(v91 + 34) = v138;
        *(v91 + 38) = 1024;
        v139 = [v89 hidden];

        *(v91 + 40) = v139;
        *(v91 + 44) = 1024;
        v140 = [v89 isImplicitlyFollowed];

        *(v91 + 46) = v140;
        _os_log_impl(&_mh_execute_header, v90, v88, "[NonFollowedShows] Upgrade to Implicitly Followed if needed from sync already existing local podcast: %{private}s, uuid: %s, adamID: %{private}s, isFollowed: %{BOOL}d, isHidden: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v91, 0x32u);
        swift_arrayDestroy();

        v111 = *v228;
        v5 = v225;
        (*v228)(v207, v225);
      }

      else
      {

        v111 = *v228;
        (*v228)(v87, v5);
        v36 = v227;
      }

      sub_100004428(v3 + v209, &v230);
      v141 = v233;
      v142 = v234;
      sub_1000044A0(&v230, v233);
      (*(v142 + 144))(v89, v224, v141, v142);
      sub_100004590(&v230);
      v143 = [v89 uuid];
      if (v143)
      {
        v144 = v143;

        v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v147 = v146;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v217 = sub_100243134(0, *(v217 + 2) + 1, 1, v217);
        }

        v21 = v210;
        v149 = *(v217 + 2);
        v148 = *(v217 + 3);
        if (v149 >= v148 >> 1)
        {
          v217 = sub_100243134((v148 > 1), v149 + 1, 1, v217);
        }

        v30 = v224;
        v150 = v227;
        (*v220)(v224, v227);
        v151 = v217;
        *(v217 + 2) = v149 + 1;
        v152 = &v151[16 * v149];
        v36 = v150;
        *(v152 + 4) = v145;
        *(v152 + 5) = v147;
        goto LABEL_4;
      }

      v153 = v202;
      static Logger.cloudSync.getter();
      v154 = v89;
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v155, v156))
      {
        LODWORD(v229) = v156;
        v157 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v235 = v214;
        *v157 = v204;
        v158 = [v154 title];
        if (v158)
        {
          v159 = v158;
          v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v162 = v161;
        }

        else
        {
          v160 = 0;
          v162 = 0;
        }

        v230 = v160;
        v231 = v162;
        sub_100168088(&qword_100574230);
        v182 = String.init<A>(describing:)();
        v184 = sub_1000153E0(v182, v183, &v235);

        *(v157 + 4) = v184;
        *(v157 + 12) = 2080;
        v185 = [v154 uuid];
        if (v185)
        {
          v186 = v185;
          v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v189 = v188;
        }

        else
        {
          v187 = 0;
          v189 = 0;
        }

        v230 = v187;
        v231 = v189;
        v190 = String.init<A>(describing:)();
        v192 = sub_1000153E0(v190, v191, &v235);

        *(v157 + 14) = v192;
        *(v157 + 22) = 2081;
        v230 = MTPodcast.adamId.getter();
        LOBYTE(v231) = v193 & 1;
        sub_100168088(&qword_1005785A8);
        v194 = String.init<A>(describing:)();
        v196 = sub_1000153E0(v194, v195, &v235);

        *(v157 + 24) = v196;
        *(v157 + 32) = 1024;
        v197 = [v154 subscribed];

        *(v157 + 34) = v197;
        *(v157 + 38) = 1024;
        v198 = [v154 hidden];

        *(v157 + 40) = v198;
        *(v157 + 44) = 1024;
        v199 = [v154 isImplicitlyFollowed];

        *(v157 + 46) = v199;
        _os_log_impl(&_mh_execute_header, v155, v229, "[NonFollowedShows] Existing local podcast has no uuid: %{private}s, uuid: %s, adamID: %{private}s, isFollowed: %{BOOL}d, isHidden: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v157, 0x32u);
        swift_arrayDestroy();

        v163 = v202;
        v5 = v225;
      }

      else
      {

        v163 = v153;
      }

      v111(v163, v5);
      v30 = v224;
      (*v220)(v224, v36);
      goto LABEL_68;
    }
  }

  __break(1u);
}

void sub_100224018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  if (a1 || a2 < 10)
  {
    static Logger.cloudSync.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      *(v23 + 4) = a1;
      *(v23 + 12) = 2048;
      *(v23 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v21, v22, "%ld non followed shows added from cloud, %ld non-followed-shows removed locally.", v23, 0x16u);
    }

    (*(v10 + 8))(v12, v9);
  }

  else
  {
    static Logger.cloudSync.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = 0;
      *(v18 + 12) = 2048;
      *(v18 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v16, v17, "[NonFollowedShows] Big library removal detected remoteNonFollowedShowsCount = %ld, localNonFollowedShowsToDeleteCount = %ld", v18, 0x16u);
    }

    (*(v10 + 8))(v15, v9);
    v19 = *(v5 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_cloudSyncBugReporter);
    if (a4)
    {
      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    sub_100168088(&qword_100573618);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    v27 = 0xD00000000000001BLL;
    v28 = 0x800000010046A240;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v27 = 0xD000000000000022;
    v28 = 0x800000010046A260;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = a2;
    sub_10016A0DC(inited);
    swift_setDeallocating();
    sub_100168088(&qword_100578590);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 reportNonFollowedShowsSyncIssue:1 version:v20 userInfo:isa];
  }
}

void sub_1002243E0(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  *&v9 = __chkstk_darwin(v6).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*(a1 + 16))
  {
    v13 = a1[1];
    if (*(a1 + 16) == 1)
    {
      v14 = v8;
      static Logger.cloudSync.getter();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      sub_1001F876C(v12, v13, 1u);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_1000153E0(v12, v13, &v22);
        _os_log_impl(&_mh_execute_header, v15, v16, "[NonFollowedShows] A remote podcast identified by a local ID as the UUID does not make any sense at all. Offending UUID: %s", v17, 0xCu);
        sub_100004590(v18);
      }

      (*(v7 + 8))(v11, v14);
      v19 = 0;
    }

    else
    {
      v20 = String._bridgeToObjectiveC()();
      v19 = [a2 podcastForFeedUrl:v20];
    }
  }

  else
  {
    v19 = [a2 podcastForStoreId:{*a1, v9}];
  }

  *a3 = v19;
}

uint64_t sub_100224610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v34 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35[0] = v20;
    v35[1] = a1;
    *v19 = 136315394;
    v35[2] = a2;

    sub_100168088(&qword_100574230);
    v21 = String.init<A>(describing:)();
    v33 = v6;
    v23 = sub_1000153E0(v21, v22, v35);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "[NonFollowedShows] Bumping NonFollowedShowsSync version: %s, nonFollowedShowsLastSyncTimestamp: %f, isNonFollowedShowsSyncDirty = false.", v19, 0x16u);
    sub_100004590(v20);

    (*(v34 + 8))(v9, v33);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = v3 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = *(v24 + 32);
  sub_100010C38(v24, v25);
  v27 = *(v26 + 72);

  v27(a1, a2, v25, v26);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  sub_100010C38(v24, v28);
  (*(v29 + 24))(0, v28, v29);
  v30 = *(v24 + 24);
  v31 = *(v24 + 32);
  sub_100010C38(v24, v30);
  (*(v31 + 48))(v15, 0, v30, v31);
  return swift_endAccess();
}

id sub_1002249AC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for NonFollowedShowsSyncStorage();
  v15[4] = &protocol witness table for NonFollowedShowsSyncStorage;
  v15[0] = a1;
  static OSSignposter.cloudSync.getter();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  (*(v7 + 8))(v9, v6);
  *&a3[OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState] = 0;
  sub_100004428(v15, &a3[OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage]);
  *&a3[OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_cloudSyncBugReporter] = a2;
  v10 = type metadata accessor for NonFollowedShowsSyncProcessor();
  v14.receiver = a3;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "init");
  sub_100004590(v15);
  return v11;
}

uint64_t sub_100224B14(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v5 = type metadata accessor for Logger();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v48 = type metadata accessor for OSSignposter();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.cloudSync.getter();
  v44 = *(v9 + 16);
  v45 = v8;
  v44(v13, v2 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostID, v8);

  v16 = OSSignposter.logHandle.getter();
  v42 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    v41 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v40 = v2;
    v20 = v19;
    v52[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000153E0(v43, a2, v52);
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v42, v21, "NonFollowedShowsSyncProcessor.GET", "%s", v18, 0xCu);
    sub_100004590(v20);
    v3 = v40;

    v7 = v41;
  }

  v22 = v45;
  v44(v47, v13, v45);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v23 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v13, v22);
  (*(v46 + 8))(v15, v48);
  *(v3 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState) = v23;

  v24 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  sub_100004428(v3 + v24, v52);
  v25 = v53;
  v26 = v54;
  sub_1000044A0(v52, v53);
  v27 = (*(v26 + 64))(v25, v26);
  v29 = v28;
  sub_100004590(v52);
  static Logger.cloudSync.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = Logger.logObject.getter();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    v33 = v7;
    v34 = swift_slowAlloc();
    v51 = v34;
    *v32 = 136315138;
    v52[0] = v27;
    v52[1] = v29;

    sub_100168088(&qword_100574230);
    v35 = String.init<A>(describing:)();
    v37 = sub_1000153E0(v35, v36, &v51);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v30, "[NonFollowedShows] Version for Get transaction: %s", v32, 0xCu);
    sub_100004590(v34);

    (*(v49 + 8))(v33, v50);
  }

  else
  {

    (*(v49 + 8))(v7, v50);
  }

  return v27;
}

unsigned __int8 *sub_100225034(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v91 = a1;
  v7 = type metadata accessor for Logger();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v94 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v85 - v13;
  v95 = type metadata accessor for OSSignposter();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.cloudSync.getter();
  v92 = *(v10 + 16);
  v92(v14, v3 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostID, v9);

  v17 = OSSignposter.logHandle.getter();
  v87 = static os_signpost_type_t.begin.getter();

  v18 = OS_os_log.signpostsEnabled.getter();
  v88 = a3;
  v86 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v85 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v98[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000153E0(v91, a2, v98);
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v87, v22, "NonFollowedShowsSyncProcessor.SET", "%s", v20, 0xCu);
    sub_100004590(v21);

    v4 = v85;
  }

  v92(v94, v14, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v23 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v14, v9);
  (*(v93 + 8))(v16, v95);
  *(v4 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState) = v23;

  v24 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  sub_100004428(v4 + v24, v98);
  v25 = v99;
  v26 = v100;
  sub_1000044A0(v98, v99);
  v27 = (*(v26 + 120))(v25, v26);
  sub_100004590(v98);
  if (*(v27 + 16))
  {
    goto LABEL_4;
  }

  sub_100004428(v4 + v24, v98);
  v42 = v99;
  v43 = v100;
  sub_1000044A0(v98, v99);
  v44 = (*(v43 + 64))(v42, v43);
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    result = sub_100004590(v98);
    v49 = HIBYTE(v47) & 0xF;
    v50 = v46 & 0xFFFFFFFFFFFFLL;
    if ((v47 & 0x2000000000000000) != 0)
    {
      v51 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v51 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      if ((v47 & 0x1000000000000000) != 0)
      {
        v53 = sub_100311A9C(v46, v47, 10);
        v78 = v84;
        goto LABEL_78;
      }

      if ((v47 & 0x2000000000000000) != 0)
      {
        v98[0] = v46;
        v98[1] = v47 & 0xFFFFFFFFFFFFFFLL;
        if (v46 == 43)
        {
          if (v49)
          {
            if (--v49)
            {
              v53 = 0;
              v70 = v98 + 1;
              while (1)
              {
                v71 = *v70 - 48;
                if (v71 > 9)
                {
                  break;
                }

                v72 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  break;
                }

                v53 = v72 + v71;
                if (__OFADD__(v72, v71))
                {
                  break;
                }

                ++v70;
                if (!--v49)
                {
                  goto LABEL_77;
                }
              }
            }

            goto LABEL_76;
          }

LABEL_90:
          __break(1u);
          return result;
        }

        if (v46 != 45)
        {
          if (v49)
          {
            v53 = 0;
            v75 = v98;
            while (1)
            {
              v76 = *v75 - 48;
              if (v76 > 9)
              {
                break;
              }

              v77 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                break;
              }

              v53 = v77 + v76;
              if (__OFADD__(v77, v76))
              {
                break;
              }

              v75 = (v75 + 1);
              if (!--v49)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

        if (v49)
        {
          if (--v49)
          {
            v53 = 0;
            v64 = v98 + 1;
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                break;
              }

              v66 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                break;
              }

              v53 = v66 - v65;
              if (__OFSUB__(v66, v65))
              {
                break;
              }

              ++v64;
              if (!--v49)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }
      }

      else
      {
        if ((v46 & 0x1000000000000000) != 0)
        {
          result = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v52 = *result;
        if (v52 == 43)
        {
          if (v50 >= 1)
          {
            v49 = v50 - 1;
            if (v50 != 1)
            {
              v53 = 0;
              if (result)
              {
                v67 = result + 1;
                while (1)
                {
                  v68 = *v67 - 48;
                  if (v68 > 9)
                  {
                    goto LABEL_76;
                  }

                  v69 = 10 * v53;
                  if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                  {
                    goto LABEL_76;
                  }

                  v53 = v69 + v68;
                  if (__OFADD__(v69, v68))
                  {
                    goto LABEL_76;
                  }

                  ++v67;
                  if (!--v49)
                  {
                    goto LABEL_77;
                  }
                }
              }

              goto LABEL_68;
            }

            goto LABEL_76;
          }

          goto LABEL_89;
        }

        if (v52 != 45)
        {
          if (v50)
          {
            v53 = 0;
            if (result)
            {
              while (1)
              {
                v73 = *result - 48;
                if (v73 > 9)
                {
                  goto LABEL_76;
                }

                v74 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  goto LABEL_76;
                }

                v53 = v74 + v73;
                if (__OFADD__(v74, v73))
                {
                  goto LABEL_76;
                }

                ++result;
                if (!--v50)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_76:
          v53 = 0;
          LOBYTE(v49) = 1;
          goto LABEL_77;
        }

        if (v50 >= 1)
        {
          v49 = v50 - 1;
          if (v50 != 1)
          {
            v53 = 0;
            if (result)
            {
              v54 = result + 1;
              while (1)
              {
                v55 = *v54 - 48;
                if (v55 > 9)
                {
                  goto LABEL_76;
                }

                v56 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  goto LABEL_76;
                }

                v53 = v56 - v55;
                if (__OFSUB__(v56, v55))
                {
                  goto LABEL_76;
                }

                ++v54;
                if (!--v49)
                {
                  goto LABEL_77;
                }
              }
            }

LABEL_68:
            LOBYTE(v49) = 0;
LABEL_77:
            v97 = v49;
            v78 = v49;
LABEL_78:

            if ((v78 & 1) == 0 && v53 >= 11)
            {
              v79 = *(v4 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_cloudSyncBugReporter);
              sub_100004428(v4 + v24, v98);
              v80 = v99;
              v81 = v100;
              sub_1000044A0(v98, v99);
              (*(v81 + 64))(v80, v81);
              if (v82)
              {
                v83 = String._bridgeToObjectiveC()();
              }

              else
              {
                v83 = 0;
              }

              sub_100004590(v98);
              [v79 reportNonFollowedShowsSyncIssue:0 version:v83 userInfo:0];
            }

            goto LABEL_4;
          }

          goto LABEL_76;
        }

        __break(1u);
      }

      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }
  }

  else
  {
    sub_100004590(v98);
  }

LABEL_4:
  v28 = v96;
  static Logger.cloudSync.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = Logger.logObject.getter();
  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    v98[0] = swift_slowAlloc();
    *v31 = 136315394;
    sub_100168088(&qword_100574880);
    v32 = Array.description.getter();
    v34 = v24;
    v35 = v27;
    v36 = v4;
    v37 = sub_1000153E0(v32, v33, v98);

    *(v31 + 4) = v37;
    v4 = v36;
    v27 = v35;
    v24 = v34;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1000153E0(v91, v86, v98);
    _os_log_impl(&_mh_execute_header, v30, v29, "[NonFollowedShows] Providing data for SET transaction. implicitlyFollowedShows: %s, key: %s", v31, 0x16u);
    swift_arrayDestroy();

    (*(v89 + 8))(v96, v90);
  }

  else
  {

    (*(v89 + 8))(v28, v90);
  }

  sub_100004428(v4 + v24, v98);
  v38 = v99;
  v39 = v100;
  sub_1000044A0(v98, v99);
  (*(v39 + 64))(v38, v39);
  if (v40)
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  v57 = v88;
  sub_100004590(v98);
  v58 = v41;
  *v57 = v41;
  v59 = [objc_allocWithZone(MZKeyValueStoreNode) init];
  sub_1001A543C(v27);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 setArrayValue:isa];

  v61 = [v59 value];
  if (v61)
  {
    v62 = v61;
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v63;
}

uint64_t sub_100225A6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v25 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v24 = a7;
    v21 = v20;
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(v26, v27, &v30);
    _os_log_impl(&_mh_execute_header, v17, v16, "[NonFollowedShows] Updating local cache after GET transaction for key %s", v19, 0xCu);
    sub_100004590(v21);
    a7 = v24;

    a8 = v25;
  }

  (*(v13 + 8))(v15, v12);
  sub_100220C94(v28, v29, a5, a6);
  return sub_100221660(a5, a6, a7, a8);
}

uint64_t sub_100225C48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v29 = a1;
  v30 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v28 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = v20;
    v31 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(v29, v30, &v31);
    _os_log_impl(&_mh_execute_header, v17, v16, "[NonFollowedShows] Successful SET transaction for key %s, marking everything as synced and finishing normally.", v19, 0xCu);
    sub_100004590(v24);
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v27;
  }

  (*(v13 + 8))(v15, v12);
  return sub_100221660(a3, a4, a5, a6);
}

uint64_t sub_100225E28(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, __n128), uint64_t a8)
{
  v9 = v8;
  v33 = a3;
  v34 = a4;
  v35 = a1;
  v36 = a2;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v32 = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = a5;
    v23 = a7;
    v24 = v22;
    v37[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000153E0(v33, v34, v37);
    _os_log_impl(&_mh_execute_header, v19, v18, "[NonFollowedShows] Failure on SET transaction for key %s, Bookkeeper copy has diverged from local copy, we must merge both.", v21, 0xCu);
    sub_100004590(v24);
    a7 = v23;
    a5 = v31;

    a8 = v32;
  }

  (*(v15 + 8))(v17, v14);
  sub_100220C94(v35, v36, a5, a6);
  sub_100221CFC(a7, a8);
  v25 = v9 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  v26 = *(v25 + 24);
  v27 = *(v25 + 32);
  sub_100010C38(v25, v26);
  v28 = *(v27 + 72);

  v28(a5, a6, v26, v27);
  return swift_endAccess();
}

uint64_t sub_100226074()
{
  result = type metadata accessor for OSSignpostID();
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

uint64_t sub_100226120(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100226188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578588);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100226208()
{
  result = qword_100573AC0;
  if (!qword_100573AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100573AC0);
  }

  return result;
}

unint64_t sub_100226254()
{
  result = qword_1005785A0;
  if (!qword_1005785A0)
  {
    sub_100168310(&qword_100578598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005785A0);
  }

  return result;
}

uint64_t sub_1002262B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

id sub_100226384(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v39._object = 0x800000010046A360;
  v7._countAndFlagsBits = 0xD000000000000018;
  v7._object = 0x800000010046A340;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v39);

  sub_100168088(&unk_100574670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = [a1 title];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100022C18();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  String.init(format:_:)();

  v17 = [v5 mainBundle];
  v40._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x6C65636E6143;
  v18._object = 0xE600000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v40);

  v20 = [v5 mainBundle];
  v41._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x53206574656C6544;
  v21._object = 0xEE006E6F69746174;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v41);

  v23 = String._bridgeToObjectiveC()();

  v24 = [objc_opt_self() alertControllerWithTitle:v23 message:0 preferredStyle:1];

  v25 = String._bridgeToObjectiveC()();

  v26 = objc_opt_self();
  v27 = [v26 actionWithTitle:v25 style:1 handler:0];

  [v24 addAction:v27];
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a1;
  v28[4] = a3;
  v28[5] = a4;
  v29 = a2;
  v30 = a1;

  v31 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10022677C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E8240;
  aBlock[3] = &unk_1004E6370;
  v32 = _Block_copy(aBlock);

  v33 = [v26 actionWithTitle:v31 style:2 handler:v32];
  _Block_release(v32);

  [v24 addAction:v33];
  return v24;
}

uint64_t sub_1002267B4(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100574690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100400790;
  *(v4 + 32) = (*(a2 + 8))(a1, a2);
  *(v4 + 40) = v5;
  (*(a2 + 16))(&v9, a1, a2);
  if (v10)
  {
    sub_1000109E4(&v9, v11);
    v6 = v12;
    v7 = v13;
    sub_1000044A0(v11, v12);
    *&v9 = sub_1002267B4(v6, v7);
    sub_1001C3B80(v4);
    v4 = v9;
    sub_100004590(v11);
  }

  else
  {
    sub_1002268BC(&v9);
  }

  return v4;
}

uint64_t sub_1002268BC(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005785B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100226924(char a1)
{
  v2 = v1;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *v2;
  v7 = objc_allocWithZone(CLSContext);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithType:v6 identifier:v8 title:v9];

  [v10 setAssignable:*(v2 + 40)];
  [v10 setDisplayOrder:v2[6]];
  v11 = type metadata accessor for CLSContextMetadata();
  sub_1001BB0E0(v2 + *(v11 + 36), v5);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v5, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v5, v12);
  }

  [v10 setUniversalLinkURL:v15];

  if (a1)
  {
    v17 = (*(v2 + *(v11 + 40)))();
    [v10 setThumbnail:v17];
  }

  return v10;
}

uint64_t type metadata accessor for CLSContextMetadata()
{
  result = qword_100578610;
  if (!qword_100578610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100226BA4()
{
  type metadata accessor for CLSContextType(319);
  if (v0 <= 0x3F)
  {
    sub_100012E4C();
    if (v1 <= 0x3F)
    {
      sub_100226C84();
      if (v2 <= 0x3F)
      {
        sub_100226CD4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100226C84()
{
  result = qword_100578620;
  if (!qword_100578620)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100578620);
  }

  return result;
}

void sub_100226CD4()
{
  if (!qword_100578628)
  {
    sub_100168310(&qword_10057C9C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100578628);
    }
  }
}

uint64_t sub_100226D38(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  type metadata accessor for PlayStateDataSource();
  swift_allocObject();

  PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)();
  sub_100226EAC();
  v4 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  sub_100168088(&unk_100574680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100400800;
  *(v5 + 32) = v4;
  *(v5 + 40) = a2;
  sub_100168088(&qword_100578680);
  swift_allocObject();

  DefaultEpisodeStateDataSource.init()();
  sub_100226F04();
  v6 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  *(v5 + 48) = v6;

  return v5;
}

unint64_t sub_100226EAC()
{
  result = qword_100578678;
  if (!qword_100578678)
  {
    type metadata accessor for PlayStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578678);
  }

  return result;
}

unint64_t sub_100226F04()
{
  result = qword_100578688;
  if (!qword_100578688)
  {
    sub_100168310(&qword_100578680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578688);
  }

  return result;
}

uint64_t FeedIngesterProvider.downloadManager.getter()
{
  swift_beginAccess();

  sub_100168088(&qword_1005786F0);
  Synchronized.wrappedValue.getter();

  return v1;
}

uint64_t FeedIngesterProvider.downloadManager.setter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_100168088(&qword_1005786F8);
  Synchronized.wrappedValue.setter();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*FeedIngesterProvider.downloadManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  sub_100168088(&qword_1005786F0);
  Synchronized.wrappedValue.getter();
  return sub_100227144;
}

void sub_100227144(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*a1 + 32) = *(*a1 + 24);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_100168088(&qword_1005786F8);
    Synchronized.wrappedValue.setter();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100168088(&qword_1005786F8);
    Synchronized.wrappedValue.setter();
  }

  swift_endAccess();

  free(v2);
}

id FeedIngesterProvider.createNewIngester(with:from:updaterJobUUID:)(void *a1, uint64_t a2)
{
  v4 = v2[2];
  v19 = v2[3];
  v20 = v2[10];
  v5 = v2[5];
  v17 = v2[9];
  v18 = v2[4];
  swift_beginAccess();
  swift_unknownObjectRetain();
  v16 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5;

  swift_unknownObjectRetain();
  sub_100168088(&qword_1005786F0);
  Synchronized.wrappedValue.getter();

  v15 = [objc_allocWithZone(type metadata accessor for EpisodeLevelCalculator()) init];
  v8 = v2[6];
  v7 = v2[7];
  type metadata accessor for NotificationSettings();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v9 = static NotificationSettings.canSendNotification()();
  v10 = objc_allocWithZone(MTFeedIngester);
  v11 = a1;
  v12 = String._bridgeToObjectiveC()();

  LOBYTE(v14) = v9 & 1;
  v22 = [v10 initWithPodcast:v11 ctx:v16 storeInfoUpdater:v19 imageDownloader:v17 imageStore:v20 syncController:v18 library:v6 downloadManager:v23 episodeLevelCalculator:v15 categoryIngester:v8 chapterIngester:v7 feedUpdateSource:a2 updaterJobUUID:v12 canSendNotifications:v14];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v22;
}

uint64_t FeedIngesterProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FeedIngesterProvider.__deallocating_deinit()
{
  FeedIngesterProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1002274C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_100168088(&qword_10057AB40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  Models.AlertAction.Button.action.getter();
  if (!v23)
  {
    return sub_100227A90(&v22);
  }

  sub_100184658(&v22, v24);
  BaseObjectGraph.inject<A>(_:)();
  static TaskPriority.userInitiated.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  (*(v8 + 16))(v10, v13, v7);
  sub_100004428(v24, &v22);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v6;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  (*(v8 + 32))(v18 + v16, v10, v7);
  sub_100184658(&v22, v18 + v17);
  *(v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_100217F98(0, 0, v21, &unk_100405B40, v18);

  (*(v8 + 8))(v13, v7);
  return sub_100004590(v24);
}

uint64_t sub_100227794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_100168088(&qword_100578920);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100227898, v9, v8);
}

uint64_t sub_100227898()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);
  sub_100168088(&qword_10057AB40);
  v5 = ActionDispatcher.perform(_:withMetrics:asPartOf:)();
  (*(v3 + 8))(v1, v2);
  *v4 = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100227994(uint64_t a1, uint64_t a2)
{
  v4 = static Models.AlertAction.ButtonRole.cancel.getter();
  if (!a2)
  {

    static Models.AlertAction.ButtonRole.destructive.getter();

    return 0;
  }

  if (v4 == a1 && v5 == a2)
  {

LABEL_8:

    return 1;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_8;
  }

  if (static Models.AlertAction.ButtonRole.destructive.getter() == a1 && v8 == a2)
  {

    return 2;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_100227A90(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100227AF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100168088(&qword_10057AB40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10001C51C;

  return sub_100227794(a1, v8, v9, v1 + v6, v1 + v7, v10);
}

void sub_100227C3C()
{
  v1 = type metadata accessor for EpisodeOffer();
  v55 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v4 - 8);
  v6 = v50 - v5;
  v57 = type metadata accessor for URL();
  v52 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = v50 - v10;
  v11 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v11);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v50 - v15;
  __chkstk_darwin(v17);
  v19 = v50 - v18;
  v20 = *(v0 + 16);
  if (v20)
  {
    v21 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v20 + v21, v16);
    sub_1002288DC(v16, v19);
    sub_1001EAFE4(v19, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v36 = *v13;
      v37 = *(*v13 + 16);
      if (!v37)
      {

        goto LABEL_19;
      }

      v51 = v19;
      v38 = objc_opt_self();
      v39 = v8;
      v40 = v55 + 16;
      v55 = *(v55 + 16);
      v56 = v38;
      v41 = (*(v40 + 64) + 32) & ~*(v40 + 64);
      v50[1] = v36;
      v42 = v36 + v41;
      v43 = *(v40 + 56);
      v53 = (v40 - 8);
      v54 = v43;
      v44 = (v52 + 8);
      do
      {
        (v55)(v3, v42, v1);
        v45 = [v56 sharedApplication];
        EpisodeOffer.streamUrl.getter();
        (*v53)(v3, v1);
        URL._bridgeToObjectiveC()(v46);
        v48 = v47;
        (*v44)(v39, v57);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_100228940(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v45 openURL:v48 options:isa completionHandler:0];

        v42 += v54;
        --v37;
      }

      while (v37);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1001EDA30(v19);
        v19 = v13;
        goto LABEL_19;
      }

      v51 = v19;
      v23 = *v13;

      v53 = v23;
      v24 = *(v23 + 16);
      v25 = v57;
      if (v24)
      {
        v26 = type metadata accessor for CoreDataFetcher();
        v27 = (v52 + 48);
        v54 = (v52 + 8);
        v55 = v52 + 32;
        v28 = v24 - 1;
        for (i = (v53 + 5); ; i += 2)
        {
          v58 = 0;
          v59 = 0;
          __chkstk_darwin(v26);
          v50[-2] = &v58;

          static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

          if (!v59)
          {
            goto LABEL_7;
          }

          URL.init(string:)();
          if ((*v27)(v6, 1, v25) == 1)
          {
            break;
          }

          v30 = v56;
          (*v55)(v56, v6, v25);
          v31 = [objc_opt_self() sharedApplication];
          URL._bridgeToObjectiveC()(v32);
          v34 = v33;
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_100228940(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
          v35 = Dictionary._bridgeToObjectiveC()().super.isa;
          [v31 openURL:v34 options:v35 completionHandler:0];

          v25 = v57;
          (*v54)(v30, v57);

          if (!v28)
          {
            goto LABEL_16;
          }

LABEL_8:
          --v28;
        }

        sub_1001FDD40(v6);

LABEL_7:
        if (!v28)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }
    }

LABEL_16:

    v19 = v51;
LABEL_19:
    sub_1001EDA30(v19);
  }
}

uint64_t sub_1002282A4(void *a1, uint64_t *a2)
{
  if (a1 && (v3 = [a1 enclosureURL]) != 0)
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

uint64_t sub_100228320()
{

  v1 = OBJC_IVAR____TtC8Podcasts24OpenEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenEpisodeContextAction()
{
  result = qword_100578950;
  if (!qword_100578950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100228420()
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1002284BC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE400000000000000;
  v1._object = 0x800000010046A470;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 1852141647;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100228570@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts24OpenEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002285E8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.openEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1002286C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_100228724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100228784(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002287E4()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_100396F64();

  return v1 & 1;
}

uint64_t sub_10022882C(uint64_t a1)
{
  result = sub_100228940(&unk_100582220, type metadata accessor for OpenEpisodeContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100228884(uint64_t a1)
{
  result = sub_100228940(&unk_100578A50, type metadata accessor for OpenEpisodeContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002288DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100228940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100228990()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002289F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100168088(&unk_100578B10);
  v4 = *(v3 - 8);
  v14 = v3;
  v15 = v4;
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v16 = ShowListProvider.pageContent.getter();
  v7 = v0[2];
  v8 = *(v1 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v2;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578DB0);
  sub_100168088(&unk_100578B20);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0);
  sub_100009FAC(&qword_100578B30, &unk_100578B20);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_100009FAC(&qword_100578B38, &unk_100578B10);
  v10 = v14;
  v11 = Publisher.eraseToAnyPublisher()();
  (*(v15 + 8))(v6, v10);
  return v11;
}

uint64_t sub_100228C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v23 = a5;
  v9 = type metadata accessor for PageContent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  sub_100168088(&unk_100578B20);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1001AB84C(a1, v12);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = v17 + v11;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_1001AD194(v12, v19 + v17, &type metadata accessor for PageContent);
  *(v19 + v18) = a3;
  *(v19 + (v18 & 0xFFFFFFFFFFFFFFF8) + 8) = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_100405CC8;
  *(v20 + 24) = v19;

  result = Future<>.init(priority:unwrapping:)();
  *v23 = result;
  return result;
}

uint64_t sub_100228EA4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for MainActor();
  *(v3 + 32) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100228F40, v5, v4);
}

uint64_t sub_100228F40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);

  v4 = sub_100229744(v2, v1, v3);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100228FF4()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001AB9B8;

  return sub_100228EA4(v4, v0 + v3, v5);
}

id sub_10022910C(uint64_t a1, uint64_t a2, int a3)
{
  v47 = a1;
  v48 = type metadata accessor for ModernShelf();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v45 = &v44 - v12;
  v13 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v14 = *(v13 + 16);
  if (!v14)
  {
    return 0;
  }

  LODWORD(v44) = a3;
  v15 = 0;
  v16 = v5 + 16;
  v46 = (v5 + 8);
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    (*(v5 + 16))(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v48);
    v17 = ModernShelf.id.getter();
    v19 = v18;
    type metadata accessor for ShowListProvider();
    if (v17 == static ShowListProvider.showsShelfID.getter() && v19 == v20)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_10;
    }

    ++v15;
    (*v46)(v7, v48);
    if (v14 == v15)
    {
      return 0;
    }
  }

LABEL_10:
  v23 = *(v5 + 32);
  v24 = v48;
  v23(v10, v7, v48);
  v23(v45, v10, v24);
  v25 = ModernShelf.items.getter();
  v50 = _swiftEmptyArrayStorage;
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + 32;
    v7 = _swiftEmptyArrayStorage;
    v28 = v44;
    do
    {
      sub_100004428(v27, v51);
      sub_1000109E4(v51, v49);
      sub_100168088(&qword_1005748E0);
      type metadata accessor for LibraryShowLockup();
      if ((swift_dynamicCast() & 1) != 0 && v49[5])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v50;
      }

      v27 += 40;
      --v26;
    }

    while (v26);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
    v28 = v44;
  }

  if (v28 == 7)
  {
    v16 = 6;
  }

  else
  {
    v29 = ShowsSortType.rawValue.getter();
    v31 = v30;
    if (v29 == ShowsSortType.rawValue.getter() && v31 == v32)
    {

      v16 = 5;
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        v16 = 5;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  v49[0] = _swiftEmptyArrayStorage;
  v13 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_30;
  }

LABEL_48:
  v34 = _CocoaArrayWrapper.endIndex.getter();
LABEL_30:
  v35 = 0;
  v44 = _swiftEmptyArrayStorage;
  while (v34 != v35)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v35 >= *(v13 + 16))
      {
        goto LABEL_46;
      }

      v36 = *(v7 + 8 * v35 + 32);

      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    sub_100009F1C(0, &qword_100577460);
    memset(v51, 0, sizeof(v51));
    v52 = -1;
    v38 = sub_100271D14(v47, v36, v51, v16);

    ++v35;
    if (v38)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 = v49[0];
      v35 = v37;
    }
  }

  v39 = v44;
  if (v44 >> 62)
  {

    sub_100168088(&unk_100574A00);
    v40 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v40 = v39;
  }

  v41 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v40);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v43 = [v41 initWithItems:isa];

  (*v46)(v45, v48);
  return v43;
}

uint64_t sub_100229744(uint64_t a1, uint64_t a2, int a3)
{
  v5 = type metadata accessor for ModernPage();
  __chkstk_darwin(v5 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageContent();
  __chkstk_darwin(v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB84C(a2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001AD1FC(v14, &type metadata accessor for PageContent);
    }

    else
    {
      sub_1001AD194(v14, v7, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator();
      swift_allocObject();

      v23 = sub_1002442DC(v22);

      v31[1] = v23;
      v24 = BaseObjectGraph.satisfying<A>(_:with:)();
      v25 = sub_10022910C(v24, v7, a3);
      if (v25)
      {
        v26 = v25;
        v27 = [v26 items];
        sub_100168088(&unk_100574A00);
        v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v28 >> 62)
        {
          v29 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v29)
        {
          sub_100168088(&unk_100574680);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1004007B0;
          *(v30 + 32) = v26;

          sub_1001AD1FC(v7, &type metadata accessor for ModernPage);
          return v30;
        }

        sub_1001AD1FC(v7, &type metadata accessor for ModernPage);
      }

      else
      {
        sub_1001AD1FC(v7, &type metadata accessor for ModernPage);
      }
    }

    return 0;
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to load show list page: %@.", v19, 0xCu);
      sub_100186264(v20);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    return 0;
  }
}

void sub_100229BFC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &aBlock - v6;
  __chkstk_darwin(v8);
  v10 = &aBlock - v9;
  if (v0[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_iTunesCloudFairPlayOfflineEnabled] != 1)
  {
    static Logger.fairPlay.getter();
    v11 = v0;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315138;
      v23 = sub_10022A25C();
      v25 = sub_1000153E0(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      sub_100004590(v22);
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_9;
  }

  if (v0[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeAdamID + 8])
  {
    static Logger.fairPlay.getter();
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136315138;
      v16 = sub_10022A25C();
      v18 = sub_1000153E0(v16, v17, &aBlock);

      *(v14 + 4) = v18;
      sub_100004590(v15);
    }

    (*(v2 + 8))(v7, v1);
LABEL_9:
    v26 = *&v11[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    if (v26)
    {
      v53 = sub_100168088(&qword_100578BE0);
      aBlock = 0;
      LOBYTE(v51) = 0;

      v26(&aBlock);
      sub_100037470(v26);
      sub_100004590(&aBlock);
    }

    goto LABEL_11;
  }

  v27 = v0;
  URL.path(percentEncoded:)(0);
  v28._countAndFlagsBits = 0x676B70766F6D2ELL;
  v28._object = 0xE700000000000000;
  v29 = String.hasSuffix(_:)(v28);

  if (v29)
  {
    v30 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    [v30 initWithURL:v32 options:0];

    v34 = objc_allocWithZone(type metadata accessor for FairPlayAsset());
    v35 = FairPlayAsset.init(adamID:avAsset:)();
    v36 = *&v27[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_fairPlayKeyLoader];
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v35;
    v54 = sub_10022B2A8;
    v55 = v38;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_10022AF78;
    v53 = &unk_1004E6540;
    v39 = _Block_copy(&aBlock);
    v40 = v35;

    [v36 createSessionWithAsset:v40 completion:v39];
    _Block_release(v39);

    return;
  }

  static Logger.fairPlay.getter();
  v41 = v0;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    v46 = sub_10022A25C();
    v48 = sub_1000153E0(v46, v47, &aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s Not a FairPlay asset, finishing operation.", v44, 0xCu);
    sub_100004590(v45);
  }

  (*(v2 + 8))(v10, v1);
  v49 = *&v41[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  if (v49)
  {
    v53 = sub_100168088(&qword_100578BE0);
    aBlock = 0;
    LOBYTE(v51) = 0;

    v49(&aBlock);
    sub_100037470(v49);
    sub_100004590(&aBlock);
  }

LABEL_11:
  sub_10003172C();
}

unint64_t sub_10022A25C()
{
  v1 = (v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    *v1 = 0xD00000000000001CLL;
    v1[1] = 0x800000010046A5E0;
  }

  return v2;
}

uint64_t sub_10022A2C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    if (a2)
    {
      swift_errorRetain();
      static Logger.fairPlay.getter();
      v16 = v15;
      v17 = a4;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v7;
        aBlock = v52;
        *v20 = 136315651;
        v21 = sub_10022A25C();
        v23 = v8;
        v24 = sub_1000153E0(v21, v22, &aBlock);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2160;
        *(v20 + 14) = 1752392040;
        *(v20 + 22) = 2081;
        v25 = FairPlayAsset.description.getter();
        v27 = sub_1000153E0(v25, v26, &aBlock);

        *(v20 + 24) = v27;
        _os_log_impl(&_mh_execute_header, v18, v19, "%s Error creating content key session for adamID %{private,mask.hash}s, failing operation.", v20, 0x20u);
        swift_arrayDestroy();

        (*(v23 + 8))(v13, v53);
      }

      else
      {

        (*(v8 + 8))(v13, v7);
      }

      v33 = *&v16[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      if (v33)
      {
        v57 = sub_100168088(&qword_100578BE0);
        aBlock = a2;
        LOBYTE(v55) = 1;
        swift_errorRetain();
        swift_errorRetain();
        sub_100013CB4(v33);
        v33(&aBlock);
        sub_100037470(v33);
        sub_100004590(&aBlock);
      }

      else
      {
        swift_errorRetain();
      }

      v34 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
      v35 = *&v16[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
      swift_errorRetain();
      [v35 lock];
      *&v16[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = a2;
      swift_errorRetain();

      [*&v16[v34] unlock];

      sub_10003172C();
    }

    else
    {
      if (a1)
      {
        v28 = *(result + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_fairPlayKeyLoader);
        v29 = swift_allocObject();
        *(v29 + 16) = v15;
        *(v29 + 24) = a4;
        v58 = sub_10022B304;
        v59 = v29;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v56 = sub_10022AF0C;
        v57 = &unk_1004E6590;
        v30 = _Block_copy(&aBlock);
        v31 = v15;
        v32 = a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        [v28 startKeyRequestWithSession:a1 completion:v30];

        _Block_release(v30);
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      static Logger.fairPlay.getter();
      v36 = v15;
      v37 = a4;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v40 = 136315651;
        v41 = sub_10022A25C();
        v53 = v8;
        v43 = sub_1000153E0(v41, v42, &aBlock);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2160;
        *(v40 + 14) = 1752392040;
        *(v40 + 22) = 2081;
        v44 = FairPlayAsset.description.getter();
        v46 = sub_1000153E0(v44, v45, &aBlock);

        *(v40 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "%s No error or session returned creating content key session for adamID %{private,mask.hash}s, failing operation.", v40, 0x20u);
        swift_arrayDestroy();

        (*(v53 + 8))(v10, v7);
      }

      else
      {

        (*(v8 + 8))(v10, v7);
      }

      sub_10022B2B0();
      v47 = swift_allocError();
      v48 = *&v36[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      if (v48)
      {
        v57 = sub_100168088(&qword_100578BE0);
        aBlock = v47;
        LOBYTE(v55) = 1;
        sub_100013CB4(v48);
        swift_errorRetain();
        v48(&aBlock);
        sub_100037470(v48);
        sub_100004590(&aBlock);
      }

      v49 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
      v50 = *&v36[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
      swift_errorRetain();
      [v50 lock];
      *&v36[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = v47;
      swift_errorRetain();

      [*&v36[v49] unlock];

      sub_10003172C();
    }
  }

  return result;
}

void sub_10022A9BC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  if (a1)
  {
    swift_errorRetain();
    static Logger.fairPlay.getter();
    v13 = a2;
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v6;
      v42 = v40;
      *v17 = 136315651;
      v18 = sub_10022A25C();
      v20 = v7;
      v21 = sub_1000153E0(v18, v19, &v42);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      v22 = FairPlayAsset.description.getter();
      v24 = sub_1000153E0(v22, v23, &v42);

      *(v17 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s Error fetching key for adamID %{private,mask.hash}s, failing operation.", v17, 0x20u);
      swift_arrayDestroy();

      (*(v20 + 8))(v12, v41);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v36 = *&v13[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    if (v36)
    {
      v44 = sub_100168088(&qword_100578BE0);
      v42 = a1;
      v43 = 1;
      swift_errorRetain();
      swift_errorRetain();
      sub_100013CB4(v36);
      v36(&v42);
      sub_100037470(v36);
      sub_100004590(&v42);
    }

    else
    {
      swift_errorRetain();
    }

    v37 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
    v38 = *&v13[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
    swift_errorRetain();
    [v38 lock];
    *&v13[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = a1;
    swift_errorRetain();

    [*&v13[v37] unlock];

    sub_10003172C();
  }

  else
  {
    static Logger.fairPlay.getter();
    v25 = a2;
    v26 = a3;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v29 = 136315651;
      v30 = sub_10022A25C();
      v41 = v7;
      v32 = sub_1000153E0(v30, v31, &v42);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      v33 = FairPlayAsset.description.getter();
      v35 = sub_1000153E0(v33, v34, &v42);

      *(v29 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s Successfully fetched key for adamID %{private,mask.hash}s, finishing operation.", v29, 0x20u);
      swift_arrayDestroy();

      (*(v41 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v39 = *&v25[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    if (v39)
    {
      v44 = sub_100168088(&qword_100578BE0);
      v42 = 0;
      v43 = 0;

      v39(&v42);
      sub_100037470(v39);
      sub_100004590(&v42);
    }

    sub_10003172C();
  }
}

void sub_10022AF0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10022AF78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10022B028()
{
  sub_10003163C(*(v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input + 8));
  v1 = OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeLocation;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for FetchFairPlayKeyOperation()
{
  result = qword_100578B98;
  if (!qword_100578B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022B1C8()
{
  result = type metadata accessor for URL();
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

uint64_t sub_10022B288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_1000314A0(v3, v4);
}

unint64_t sub_10022B2B0()
{
  result = qword_100578BE8;
  if (!qword_100578BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578BE8);
  }

  return result;
}

unint64_t sub_10022B320()
{
  result = qword_100578BF0;
  if (!qword_100578BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578BF0);
  }

  return result;
}

NSArray sub_10022B37C(void *a1, objc_class *a2, int64_t a3, unint64_t a4)
{
  v83 = a3;
  isa = a2;
  v84 = a1;
  v5 = type metadata accessor for ArtworkModel();
  v79 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v8 - 8);
  v81 = (&v75 - v9);
  v10 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v10 - 8);
  v80 = &v75 - v11;
  v12 = sub_100168088(&qword_100578C00);
  __chkstk_darwin(v12 - 8);
  v14 = &v75 - v13;
  v15 = _s20ShowcaseImageRowItemVMa();
  v16 = *(v15 - 8);
  v89 = v15;
  v90 = v16;
  __chkstk_darwin(v15);
  v18 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  if (a4 >> 62)
  {
    goto LABEL_19;
  }

  v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v86 = v7;
  for (i = a4; v22; i = a4)
  {
    v23 = 0;
    v88 = a4 & 0xC000000000000001;
    v24 = a4 & 0xFFFFFFFFFFFFFF8;
    v7 = (v90 + 48);
    v25 = _swiftEmptyArrayStorage;
    v85 = v21;
    while (v88)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_10022BDF4(v14);
      if ((*v7)(v14, 1, v89) == 1)
      {
        sub_100009104(v14, &qword_100578C00);
      }

      else
      {
        sub_10022D080(v14, v21, _s20ShowcaseImageRowItemVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100243BAC(0, v25[2] + 1, 1, v25);
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v25 = sub_100243BAC(v27 > 1, v28 + 1, 1, v25);
        }

        v25[2] = v28 + 1;
        v29 = v25 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v28;
        v21 = v85;
        sub_10022D080(v85, v29, _s20ShowcaseImageRowItemVMa);
        a4 = i;
      }

      ++v23;
      if (v26 == v22)
      {
        goto LABEL_21;
      }
    }

    if (v23 >= *(v24 + 16))
    {
      goto LABEL_18;
    }

    v26 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v86 = v7;
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_21:
  v33 = sub_10023E334(CPMaximumNumberOfGridImages, v25);
  v34 = v32 >> 1;
  if (v31 == v32 >> 1)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v36 = v30;
  v37 = v31;
  v38 = v32;
  type metadata accessor for CarPlayPageLoadCoordinator();
  v88 = v37;
  BaseObjectGraph.inject<A>(_:)();
  v78 = aBlock;
  v85 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &qword_100578C08);
  result.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v40 = v34 - v88;
  if (__OFSUB__(v34, v88))
  {
    goto LABEL_49;
  }

  isa = result.super.isa;
  v77 = v33;
  v76 = v38;
  v83 = v34 - v88;
  v75 = v40 & ~(v40 >> 63);
  if (v40)
  {
    aBlock = _swiftEmptyArrayStorage;
    result.super.isa = sub_1001A7364(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v41 = aBlock;
    v42 = v88;
    if (v88 <= v34)
    {
      v43 = v34;
    }

    else
    {
      v43 = v88;
    }

    while (v43 != v42)
    {
      sub_10022D1F4(v36 + *(v90 + 72) * v42, v18, _s20ShowcaseImageRowItemVMa);
      v45 = *v18;
      v44 = v18[1];

      result.super.isa = sub_10022D25C(v18, _s20ShowcaseImageRowItemVMa);
      aBlock = v41;
      v47 = v41[2];
      v46 = v41[3];
      if (v47 >= v46 >> 1)
      {
        result.super.isa = sub_1001A7364((v46 > 1), v47 + 1, 1);
        v41 = aBlock;
      }

      v41[2] = (v47 + 1);
      v48 = &v41[2 * v47];
      v48[4] = v45;
      v48[5] = v44;
      if (v34 == ++v42)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_33:
  v49 = v85;
  v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v51 = Array._bridgeToObjectiveC()().super.isa;

  v52 = isa;
  v53 = [v50 initWithText:v49 images:isa imageTitles:v51];

  v54 = v83;
  if (!v83)
  {
    v63 = v53;
    v56 = _swiftEmptyArrayStorage;
LABEL_45:
    CarPlayPageLoadCoordinator.loadImages(for:into:)(v56, v53);

    v64 = v81;
    *v81 = i;
    v65 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v66 = *(*(v65 - 8) + 56);
    v35 = v53;
    v66(v64, 0, 1, v65);
    v67 = v80;
    v66(v80, 1, 1, v65);
    v68 = type metadata accessor for CarPlayTemplateInfo(0);
    v69 = *(v68 + 20);
    sub_1001FBB44(v64, v67);
    *(v67 + v69) = 0;
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    sub_1001D2AD4(v67);
    v70 = v84;
    v95 = sub_10022D0E8;
    v96 = v84;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100372F30;
    v94 = &unk_1004E6648;
    v71 = _Block_copy(&aBlock);

    [v53 setHandler:v71];
    _Block_release(v71);
    v72 = swift_allocObject();
    v72[2] = v77;
    v72[3] = v36;
    v73 = v76;
    v72[4] = v88;
    v72[5] = v73;
    v72[6] = v70;
    v95 = sub_10022D0F0;
    v96 = v72;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_1002B1CD0;
    v94 = &unk_1004E6698;
    v74 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v53 setListImageRowHandler:v74];
    _Block_release(v74);

    swift_unknownObjectRelease();

    return v35;
  }

  aBlock = _swiftEmptyArrayStorage;
  v55 = v53;
  result.super.isa = sub_1001A7650(0, v75, 0);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v85 = v53;
    v56 = aBlock;
    v57 = v88;
    if (v88 <= v34)
    {
      v58 = v34;
    }

    else
    {
      v58 = v88;
    }

    v59 = v79;
    while (v58 != v57)
    {
      sub_10022D1F4(v36 + *(v90 + 72) * v57, v18, _s20ShowcaseImageRowItemVMa);
      v60 = v86;
      sub_10022D1F4(v18 + *(v89 + 24), v86, &type metadata accessor for ArtworkModel);
      sub_10022D25C(v18, _s20ShowcaseImageRowItemVMa);
      aBlock = v56;
      v62 = v56[2];
      v61 = v56[3];
      if (v62 >= v61 >> 1)
      {
        sub_1001A7650(v61 > 1, v62 + 1, 1);
        v59 = v79;
        v56 = aBlock;
      }

      v56[2] = (v62 + 1);
      result.super.isa = sub_10022D080(v60, v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v62, &type metadata accessor for ArtworkModel);
      if (v34 == ++v57)
      {
        v53 = v85;
        goto LABEL_45;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t _s20ShowcaseImageRowItemVMa()
{
  result = qword_100578C80;
  if (!qword_100578C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022BDF4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v1 - 8);
  v33 = &v32 - v2;
  v3 = type metadata accessor for ArtworkModel();
  v32 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_10057CF40);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for FlowDestination();
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s20ShowcaseImageRowItemVMa();
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = Showcase.showName.getter();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_10:

    goto LABEL_11;
  }

  Showcase.clickAction.getter();
  if (!v39)
  {

    sub_100009104(v38, &qword_100578C20);
LABEL_14:
    v20 = v36;
    (*(v35 + 56))(v7, 1, 1, v8);
    goto LABEL_15;
  }

  sub_100168088(&unk_10057BB70);
  type metadata accessor for FlowAction();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  dispatch thunk of FlowAction.destination.getter();

  v19 = v35;
  if ((*(v35 + 48))(v7, 1, v8) == 1)
  {

    v20 = v36;
LABEL_15:
    sub_100009104(v7, &qword_10057CF40);
    v21 = 1;
    v22 = v20;
    return (*(v11 + 56))(v22, v21, 1, v37);
  }

  (*(v19 + 32))(v10, v7, v8);
  v24 = v33;
  Showcase.showArtwork.getter();
  if ((*(v32 + 48))(v24, 1, v3) != 1)
  {
    sub_10022D080(v24, v34, &type metadata accessor for ArtworkModel);
    *v13 = v16;
    v13[1] = v17;
    v25 = v13 + *(v37 + 20);
    v26 = sub_100168088(&unk_100575B10);
    v27 = *(v26 + 48);
    v28 = &v25[*(v26 + 64)];
    FlowDestination.pageDestinationURL.getter();
    *&v25[v27] = FlowDestination.pageDestinationPage.getter();
    v29 = Showcase.showAdamId.getter();
    LOBYTE(v27) = v30;

    (*(v35 + 8))(v10, v8);
    *v28 = v29;
    v28[8] = v27 & 1;
    type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    sub_10022D080(v34, v13 + *(v37 + 24), &type metadata accessor for ArtworkModel);
    v31 = v36;
    sub_10022D080(v13, v36, _s20ShowcaseImageRowItemVMa);
    v22 = v31;
    v21 = 0;
    return (*(v11 + 56))(v22, v21, 1, v37);
  }

  (*(v35 + 8))(v10, v8);

  sub_100009104(v24, &unk_100578C10);
LABEL_11:
  v21 = 1;
  v22 = v36;
  return (*(v11 + 56))(v22, v21, 1, v37);
}

uint64_t sub_10022C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_10023EE80(0, 0, v10, &unk_100405EC0, v13);
}

uint64_t sub_10022C4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_10022C5A0;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_10022C5A0()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10022D44C;
  }

  else
  {
    v4 = sub_1001FB358;
  }

  return _swift_task_switch(v4, v3, v2);
}

void sub_10022C6FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v54 = a6;
  v59 = a3;
  v60 = a4;
  v12 = type metadata accessor for Logger();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v15 - 8);
  v58 = &v53 - v16;
  v17 = type metadata accessor for CarPlayTemplateInfo(0);
  v57 = *(v17 - 8);
  __chkstk_darwin(v17);
  v53 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v53 - v26;
  v28 = _s20ShowcaseImageRowItemVMa();
  __chkstk_darwin(v28);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Attempted to select list image row item with invalid index!", v51, 2u);
    }

    v52 = (*(v55 + 8))(v14, v56);
    v59(v52);
  }

  else
  {
    v56 = a9;
    sub_10022D1F4(v54 + *(v29 + 72) * a2, &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), _s20ShowcaseImageRowItemVMa);
    v32 = objc_allocWithZone(CPListImageRowItem);
    v33 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_100578C08);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v35 = [v32 initWithText:v33 images:isa];

    sub_10022D1F4(&v31[*(v28 + 20)], v21, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v36 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v37 = *(*(v36 - 8) + 56);
    v37(v21, 0, 1, v36);
    v37(v27, 1, 1, v36);
    v38 = *(v17 + 20);
    sub_1001FBB44(v21, v27);
    v27[v38] = 0;
    v39 = v57;
    (*(v57 + 56))(v27, 0, 1, v17);
    sub_1001D2D08(v27, v24);
    v40 = (*(v39 + 48))(v24, 1, v17);
    v41 = 0;
    if (v40 != 1)
    {
      sub_10022D1F4(v24, v53, type metadata accessor for CarPlayTemplateInfo);
      v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_10022D25C(v24, type metadata accessor for CarPlayTemplateInfo);
    }

    [v35 setUserInfo:v41];
    swift_unknownObjectRelease();
    sub_100009104(v27, &unk_100578410);
    v42 = v58;
    static TaskPriority.userInitiated.getter();
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    type metadata accessor for MainActor();
    v44 = v56;

    v45 = v35;
    v46 = v60;

    v47 = static MainActor.shared.getter();
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = &protocol witness table for MainActor;
    v48[4] = v44;
    v48[5] = v45;
    v48[6] = v59;
    v48[7] = v46;
    sub_10023EE80(0, 0, v42, &unk_100405EA8, v48);

    sub_10022D25C(v31, _s20ShowcaseImageRowItemVMa);
  }
}

uint64_t sub_10022CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_10022CE94;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_10022CE94()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001FB3F4;
  }

  else
  {
    v4 = sub_10022CFF0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10022CFF0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[2];
  sub_1002B2D3C(v3, v1, v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10022D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10022D120(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10022D1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10022D25C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10022D2BC(uint64_t a1)
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
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10022D3B8()
{
  result = type metadata accessor for CarPlayTemplateInfo.TemplateType(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ArtworkModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10022D450(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v22 = a4;
  v23 = type metadata accessor for SmartPlayPlatformContext();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SmartPlayContext();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100574B10);
  swift_allocObject();
  *(v4 + 104) = CurrentValueSubject.init(_:)();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  sub_100168088(&qword_10057E670);

  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(&v24, v4 + 40);
  *(v4 + 80) = v22;
  type metadata accessor for LibraryShowProvider();
  swift_allocObject();

  *(v4 + 88) = LibraryShowProvider.init(asPartOf:showUUID:)();
  (*(v13 + 104))(v15, enum case for SmartPlayContext.showPage(_:), v12);
  (*(v9 + 104))(v11, enum case for SmartPlayPlatformContext.carPlay(_:), v23);
  type metadata accessor for SmartPlayButtonController();
  swift_allocObject();

  *(v4 + 96) = SmartPlayButtonController.init(button:context:platform:objectGraph:)();

  LibraryShowProvider.loadPageContent()();

  sub_1000044A0((v5 + 40), *(v5 + 64));
  dispatch thunk of LibraryActionControllerProtocol.updateFeed(podcast:context:)();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = sub_100009F1C(0, &qword_1005729D0);

  v19 = static OS_dispatch_queue.main.getter();
  v25 = v18;
  v26 = &protocol witness table for OS_dispatch_queue;
  *&v24 = v19;
  Promise.then(perform:orCatchError:on:)();

  sub_100004590(&v24);
  return v5;
}

uint64_t sub_10022D7F8(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = "Feed update was not successful from CarPlay store page";
  v11 = *a1;
  if (*a1)
  {
    v10 = "Feed update was successful from CarPlay store page";
  }

  v12 = v10 - 32;
  static Logger.podcastsStatesCoordination.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v13))
  {
    v19 = a3;
    if (v11)
    {
      v15 = 0xD000000000000032;
    }

    else
    {
      v15 = 0xD000000000000036;
    }

    v16 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v16 = 136315395;
    v17 = sub_1000153E0(v15, v12 | 0x8000000000000000, &v20);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_1000153E0(a2, v19, &v20);
    _os_log_impl(&_mh_execute_header, v14, v13, "%s adamID: %{private}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10022DA10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v18 = v5;
    v12 = a3;
    v13 = v11;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v13 = 136380931;
    *(v13 + 4) = sub_1000153E0(a2, v12, &v19);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "Error triggering feed update from CarPlay store page for podcast adamID: %{private}s, with error: %@.", v13, 0x16u);
    sub_100009104(v14, &qword_100575B20);

    sub_100004590(v15);

    return (*(v6 + 8))(v8, v18);
  }

  else
  {

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10022DC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = type metadata accessor for ModernShelf.ItemPresentation();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModernShelf();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v23 = v8;
    v24 = a2;
    v26 = *(v8 + 16);
    v27 = v8 + 16;
    v13 = (v4 + 8);
    v14 = (v8 + 8);
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = *(v8 + 72);
    while (1)
    {
      v26(v11, v15, v7, v9);
      ModernShelf.itemPresentation.getter();
      ModernShelf.ItemPresentation.itemKind.getter();
      (*v13)(v6, v28);
      v16 = ModernShelf.ItemKind.rawValue.getter();
      v18 = v17;
      if (v16 == ModernShelf.ItemKind.rawValue.getter() && v18 == v19)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_10;
      }

      (*v14)(v11, v7);
      v15 += v25;
      if (!--v12)
      {
        v21 = 1;
        v8 = v23;
        a2 = v24;
        return (*(v8 + 56))(a2, v21, 1, v7);
      }
    }

LABEL_10:
    v8 = v23;
    a2 = v24;
    (*(v23 + 32))(v24, v11, v7);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v8 + 56))(a2, v21, 1, v7);
}

void *sub_10022DEC4(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v5 = type metadata accessor for ModernShelf();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022DC1C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009104(v4, &qword_100578DE0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = ModernShelf.items.getter();
    v18 = _swiftEmptyArrayStorage;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      v9 = _swiftEmptyArrayStorage;
      do
      {
        sub_100004428(v12, v17);
        sub_1000109E4(v17, v15);
        sub_100168088(&qword_1005748E0);
        type metadata accessor for LibraryEpisodeLockup();
        if ((swift_dynamicCast() & 1) != 0 && v16)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14[1] = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v18;
        }

        v12 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

char *sub_10022E16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v4 - 8);
  v6 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v85 - v8;
  v10 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v10 - 8);
  v92 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v85 - v13;
  v15 = type metadata accessor for PageContent();
  __chkstk_darwin(v15);
  v17 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v85 - v19;
  v21 = type metadata accessor for ModernPage();
  __chkstk_darwin(v21);
  v93 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v85 - v24;
  sub_100231644(a1, v20, &type metadata accessor for PageContent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v35 = &type metadata accessor for PageContent;
    v36 = v20;
LABEL_92:
    sub_1002316B4(v36, v35);
    v84 = 0;
    return (v84 & 1);
  }

  sub_1001AD194(v20, v25, &type metadata accessor for ModernPage);
  sub_100231644(a2, v17, &type metadata accessor for PageContent);
  v26 = v25;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1002316B4(v25, &type metadata accessor for ModernPage);
    v35 = &type metadata accessor for PageContent;
    v36 = v17;
    goto LABEL_92;
  }

  v27 = v93;
  sub_1001AD194(v17, v93, &type metadata accessor for ModernPage);
  v28 = *(v21 + 24);
  v29 = *&v25[v28];
  v30 = sub_100230D5C(*(v26 + v28));
  v87 = *(v27 + *(v21 + 24));
  v31 = sub_100230D5C(v87);
  v32 = v31;
  v89 = v31;
  v90 = v30;
  v88 = v26;
  if (!v30)
  {
    v33 = 0;
    v34 = 0;
    v91 = 0;
    if (!v31)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  v33 = ShowHeader.episodeToPlay.getter();

  if (v32)
  {
LABEL_10:

    v37 = ShowHeader.episodeToPlay.getter();

    if (!v33)
    {
      if (!v37)
      {
        v34 = 0;
        v91 = 0;
        goto LABEL_43;
      }

      v86 = v29;
      v41 = 1;
      v40 = 1;
      v38 = 0;
      goto LABEL_16;
    }

    v91 = v37;
LABEL_12:

    v38 = Episode.adamId.getter();
    v40 = v39;

    v37 = v91;
    if (!v91)
    {
      if ((v40 & 1) == 0)
      {
        v91 = 0;
        goto LABEL_88;
      }

      v91 = 0;
      v48 = 1;
      goto LABEL_28;
    }

    v86 = v29;
    v41 = 0;
LABEL_16:

    v42 = Episode.adamId.getter();
    v44 = v43;
    v91 = v37;

    if (v40)
    {
      if ((v44 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if ((v44 & 1) != 0 || v38 != v42)
    {
      goto LABEL_88;
    }

    v45 = v91;
    if (v41)
    {
      v46 = 0;
      v47 = 0;
LABEL_32:

      v50 = Episode.uuid.getter();
      v52 = v51;
      v91 = v45;

      if (v46)
      {
        v29 = v86;
        if (v52)
        {
          if (v47 == v50 && v46 == v52)
          {

LABEL_42:
            v34 = v33;
            goto LABEL_43;
          }

          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v53)
          {
            goto LABEL_42;
          }

          goto LABEL_88;
        }

LABEL_37:

LABEL_89:

        goto LABEL_90;
      }

      v29 = v86;
      if (!v52)
      {
        goto LABEL_42;
      }

LABEL_88:

      goto LABEL_89;
    }

    v48 = 0;
    v29 = v86;
LABEL_28:

    v47 = Episode.uuid.getter();
    v46 = v49;

    if (v48)
    {
      if (!v46)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    v86 = v29;
    v45 = v91;
    goto LABEL_32;
  }

  v91 = 0;
  v34 = 0;
  if (v33)
  {
    goto LABEL_12;
  }

LABEL_43:
  v85[1] = v34;
  sub_10022DC1C(v29, v9);
  v54 = type metadata accessor for ModernShelf();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v9, 1, v54) == 1)
  {
    sub_100009104(v9, &qword_100578DE0);
    v85[0] = 0;
    v57 = 0;
  }

  else
  {
    v86 = v29;
    ModernShelf.header.getter();
    (*(v55 + 8))(v9, v54);
    v58 = type metadata accessor for Header();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v14, 1, v58) == 1)
    {
      sub_100009104(v14, &qword_100577490);
      v85[0] = 0;
      v57 = 0;
    }

    else
    {
      v85[0] = Header.title.getter();
      v60 = v14;
      v57 = v61;
      (*(v59 + 8))(v60, v58);
    }

    v29 = v86;
  }

  sub_10022DC1C(v87, v6);
  if (v56(v6, 1, v54) == 1)
  {
    sub_100009104(v6, &qword_100578DE0);
    v62 = 0;
    v63 = 0;
    if (v57)
    {
      goto LABEL_51;
    }

LABEL_59:
    if (!v63)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

  v64 = v92;
  ModernShelf.header.getter();
  (*(v55 + 8))(v6, v54);
  v65 = type metadata accessor for Header();
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(v64, 1, v65) == 1)
  {
    sub_100009104(v64, &qword_100577490);
    v62 = 0;
    v63 = 0;
    if (!v57)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v62 = Header.title.getter();
    v63 = v67;
    (*(v66 + 8))(v64, v65);
    if (!v57)
    {
      goto LABEL_59;
    }
  }

LABEL_51:
  if (!v63)
  {

LABEL_75:

LABEL_90:

LABEL_91:
    sub_1002316B4(v93, &type metadata accessor for ModernPage);
    v36 = v88;
    v35 = &type metadata accessor for ModernPage;
    goto LABEL_92;
  }

  if (v85[0] == v62 && v57 == v63)
  {

    goto LABEL_63;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v68 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_63:
  v69 = sub_10022DEC4(v29);
  v70 = sub_10022DEC4(v87);
  if (v69 >> 62)
  {
    v71 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v71)
  {
    v94 = _swiftEmptyArrayStorage;
    result = sub_1001A7578(0, v71 & ~(v71 >> 63), 0);
    if (v71 < 0)
    {
      __break(1u);
      goto LABEL_99;
    }

    v73 = 0;
    v74 = v94;
    do
    {
      if ((v69 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v75 = LegacyLockup.adamId.getter();

      v94 = v74;
      v77 = v74[2];
      v76 = v74[3];
      if (v77 >= v76 >> 1)
      {
        sub_1001A7578((v76 > 1), v77 + 1, 1);
        v74 = v94;
      }

      ++v73;
      v74[2] = v77 + 1;
      v74[v77 + 4] = v75;
    }

    while (v71 != v73);
  }

  else
  {

    v74 = _swiftEmptyArrayStorage;
  }

  if (!(v70 >> 62))
  {
    v78 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v78)
    {
      goto LABEL_79;
    }

LABEL_96:

    v80 = _swiftEmptyArrayStorage;
LABEL_97:
    v84 = sub_100195F50(v74, v80);

    sub_1002316B4(v93, &type metadata accessor for ModernPage);
    sub_1002316B4(v88, &type metadata accessor for ModernPage);
    return (v84 & 1);
  }

  v78 = _CocoaArrayWrapper.endIndex.getter();
  if (!v78)
  {
    goto LABEL_96;
  }

LABEL_79:
  v94 = _swiftEmptyArrayStorage;
  result = sub_1001A7578(0, v78 & ~(v78 >> 63), 0);
  if ((v78 & 0x8000000000000000) == 0)
  {
    v79 = 0;
    v80 = v94;
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v81 = LegacyLockup.adamId.getter();

      v94 = v80;
      v83 = v80[2];
      v82 = v80[3];
      if (v83 >= v82 >> 1)
      {
        sub_1001A7578((v82 > 1), v83 + 1, 1);
        v80 = v94;
      }

      ++v79;
      v80[2] = v83 + 1;
      v80[v83 + 4] = v81;
    }

    while (v78 != v79);

    goto LABEL_97;
  }

LABEL_99:
  __break(1u);
  return result;
}

id sub_10022ED70(uint64_t a1, uint64_t a2, _UNKNOWN **a3, uint64_t a4, uint64_t a5, int a6)
{
  v52 = a6;
  v46 = a4;
  v47 = a5;
  v53 = a1;
  v9 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v9 - 8);
  v50 = &v45 - v10;
  v11 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v48 = a2;
  v49 = v6;
  v14 = sub_10022DEC4(a2);
  v15 = v14;
  v54 = _swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
LABEL_56:
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v13;
  v13 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v17 = 0;
    v51 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v51)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v23 = v54;
          goto LABEL_22;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_19;
        }
      }

      v19 = LibraryEpisodeLockup.uuid.getter();
      v13 = v20;
      if (!a3)
      {
        break;
      }

      if (v19 == Episode.uuid.getter() && v13 == v21)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_6:
      ++v17;
      if (v18 == v16)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v13 = *(v54 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    goto LABEL_6;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_22:

  v54 = _swiftEmptyArrayStorage;
  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *(v23 + 16);
  }

  v13 = 0;
  v51 = _swiftEmptyArrayStorage;
  v15 = &qword_100577460;
  a3 = CPListItem_ptr;
  while (v24 != v13)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v26 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v13 >= *(v23 + 16))
      {
        goto LABEL_54;
      }

      v25 = *(v23 + 8 * v13 + 32);

      v26 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    sub_100009F1C(0, &qword_100577460);
    v27 = sub_10021E760(v53, v25, 0, 1, v52);

    ++v13;
    if (v27)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v51 = v54;
      v13 = v26;
    }
  }

  v54 = v51;
  if (!(v51 >> 62))
  {
    v28 = v50;
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

LABEL_59:

    return 0;
  }

  v43 = _CocoaArrayWrapper.endIndex.getter();
  v28 = v50;
  if (!v43)
  {
    goto LABEL_59;
  }

LABEL_39:
  sub_100231174(v53, v46, v47);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = v54;
  if (v54 >> 62)
  {

    sub_100168088(&unk_100574A00);
    v30 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v30 = v29;
  }

  sub_10022DC1C(v48, v28);
  v31 = type metadata accessor for ModernShelf();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v28, 1, v31) == 1)
  {
    v33 = &qword_100578DE0;
    v34 = v28;
  }

  else
  {
    v35 = v45;
    ModernShelf.header.getter();
    (*(v32 + 8))(v28, v31);
    v36 = type metadata accessor for Header();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) != 1)
    {
      Header.title.getter();
      v38 = v39;
      (*(v37 + 8))(v35, v36);
      goto LABEL_49;
    }

    v33 = &qword_100577490;
    v34 = v35;
  }

  sub_100009104(v34, v33);
  v38 = 0;
LABEL_49:
  sub_1001AA058(v30);

  v40.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v38)
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  v42 = [objc_allocWithZone(CPListSection) initWithItems:v40.super.isa header:v41 sectionIndexTitle:0];

  return v42;
}

uint64_t sub_10022F418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_10023EE80(0, 0, v10, &unk_100405FD0, v13);
}

uint64_t sub_10022F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = type metadata accessor for CarPlayTemplateInfo(0);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_100168088(&unk_100578410);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = type metadata accessor for CarPlayController();
  v10 = swift_task_alloc();
  v7[13] = v10;
  *v10 = v7;
  v10[1] = sub_10022F6E0;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v9, v9);
}

uint64_t sub_10022F6E0()
{
  *(*v1 + 112) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10022FA94;
  }

  else
  {
    v4 = sub_10022F83C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10022F83C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];

  v5 = v0[2];
  v6 = [objc_opt_self() mainBundle];
  v21._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x5345444F53495045;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v21);

  v9 = objc_allocWithZone(CPListItem);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithText:v10 detailText:0];

  swift_getObjectType();
  sub_1001D29AC(v2);
  sub_1001D2D08(v2, v1);
  v12 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v13 = v0[9];
    sub_100231644(v13, v0[8], type metadata accessor for CarPlayTemplateInfo);
    v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1002316B4(v13, type metadata accessor for CarPlayTemplateInfo);
  }

  v14 = v0[10];
  v16 = v0[4];
  v15 = v0[5];
  [v11 setUserInfo:v12];
  swift_unknownObjectRelease();
  sub_100009104(v14, &unk_100578410);
  v17 = v11;
  sub_1002B4180(v17, v16, v15, v5);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10022FA94()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10022FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v10 = sub_100230D5C(v9);
  if (v10)
  {
    v11 = v10;
    sub_100009F1C(0, &unk_100575B00);
    v12 = sub_1002CA624(a1, v11, a5);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v15 = ShowHeader.episodeToPlay.getter();
    v16 = sub_10022ED70(a1, v9, v15, a3, a4, a5);

    if (v16)
    {
      v17 = v16;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10022FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v8 = type metadata accessor for ModernPage();
  __chkstk_darwin(v8 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Logger();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for PageContent();
  __chkstk_darwin(v14);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100231644(a2, v16, &type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002316B4(v16, &type metadata accessor for PageContent);
      return 0;
    }

    else
    {
      sub_1001AD194(v16, v10, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator();
      swift_allocObject();

      v25 = sub_1002442DC(v24);

      v33 = v25;
      v26 = BaseObjectGraph.satisfying<A>(_:with:)();
      v27 = sub_10022FB20(v26, v10, a3, a4, v31);
      v28 = v27;
      if (v27 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1002316B4(v10, &type metadata accessor for ModernPage);
      if (v29)
      {
        return v28;
      }

      else
      {

        return 0;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to load library show page: %@", v21, 0xCu);
      sub_100009104(v22, &qword_100575B20);
    }

    else
    {
    }

    (*(v32 + 8))(v13, v11);
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100230128()
{

  sub_100004590(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1002301AC()
{
  v1 = v0;
  v28 = *v0;
  v2 = v28;
  v3 = sub_100168088(&unk_100578D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_100168088(&unk_100577400);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  __chkstk_darwin(v7);
  v29 = &v27 - v9;
  v35 = sub_100168088(&unk_100578DA0);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v27 - v10;
  v34 = sub_100168088(&unk_100577410);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v27 - v11;
  v38 = LibraryShowProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v2;
  sub_100168088(&unk_100578DB0);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0);
  Publisher.removeDuplicates(by:)();

  v38 = v0[13];
  sub_100168088(&qword_100574B10);
  sub_100009FAC(&unk_100577420, &unk_100578D90);
  sub_100009FAC(&unk_100574B20, &qword_100574B10);
  v12 = v29;
  Publisher.combineLatest<A>(_:)();
  (*(v4 + 8))(v6, v3);
  v13 = v0[2];
  v14 = v0[3];
  v15 = v0[4];
  v16 = *(v1 + 80);
  v17 = v1[12];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v17;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  *(v18 + 48) = v16;
  *(v18 + 56) = v28;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100230C08;
  *(v19 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100577430);
  sub_100009FAC(&unk_100578DC0, &unk_100577400);
  sub_100009FAC(&unk_100577440, &unk_100577430);
  v20 = v30;
  v21 = v32;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v33 + 8))(v12, v21);
  sub_100009FAC(&unk_100578DD0, &unk_100578DA0);
  v22 = v31;
  v23 = v35;
  Publisher.compactMap<A>(_:)();
  (*(v37 + 8))(v20, v23);
  sub_100009FAC(&unk_100577450, &unk_100577410);
  v24 = v34;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v36 + 8))(v22, v24);
  return v25;
}

uint64_t sub_1002307E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v26 = a7;
  v25 = a6;
  v11 = type metadata accessor for PageContent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v14 - 8);
  v16 = &v24[-v15];
  type metadata accessor for SmartPlayButtonController();
  v27 = a3;
  v17 = BaseObjectGraph.satisfying<A>(_:with:)();
  sub_100168088(&unk_100577430);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_100231644(a1, &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], &type metadata accessor for PageContent);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_1001AD194(&v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, &type metadata accessor for PageContent);
  v21 = v20 + ((v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = a4;
  *(v21 + 8) = a5;
  *(v21 + 16) = v25;
  *(v20 + ((v19 + v13 + 31) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_100405F98;
  *(v22 + 24) = v20;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_100230A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 64) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100230B00, v8, v7);
}

uint64_t sub_100230B00()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 64);

  v6 = sub_10022FCE8(v4, v3, v2, v1, v5);
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100230C24()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v6 + 16);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1001AB9B8;

  return sub_100230A5C(v5, v0 + v3, v7, v8, v10, v9);
}

uint64_t sub_100230D5C(uint64_t a1)
{
  v45 = type metadata accessor for ModernShelf.ItemPresentation();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModernShelf();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v10);
  v14 = *(a1 + 16);
  if (!v14)
  {
    return 0;
  }

  v39 = v12;
  v40 = v6;
  v41 = &v38 - v11;
  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v17 = (v2 + 8);
  v43 = (v15 - 8);
  v44 = v16;
  v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v42 = *(v15 + 56);
  while (1)
  {
    v19 = v5;
    v44(v8, v18, v5, v13);
    ModernShelf.itemPresentation.getter();
    ModernShelf.ItemPresentation.itemKind.getter();
    (*v17)(v4, v45);
    v20 = ModernShelf.ItemKind.rawValue.getter();
    v22 = v21;
    if (v20 == ModernShelf.ItemKind.rawValue.getter() && v22 == v23)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_9;
    }

    v5 = v19;
    (*v43)(v8, v19);
    v18 += v42;
    if (!--v14)
    {
      return 0;
    }
  }

LABEL_9:
  v26 = v39;
  v27 = *(v40 + 32);
  v28 = v19;
  v27(v39, v8, v19);
  v29 = v41;
  v27(v41, v26, v19);
  result = ModernShelf.items.getter();
  v31 = result;
  v32 = *(result + 16);
  v33 = result + 32;
  if (v32)
  {
    v34 = 0;
    v35 = result + 32;
    while (1)
    {
      sub_100004428(v35, v46);
      sub_100168088(&qword_1005748E0);
      type metadata accessor for ShowHeader();
      result = swift_dynamicCast();
      if (result)
      {
        v36 = v47;

        if (v36)
        {
          break;
        }
      }

      ++v34;
      v35 += 40;
      if (v32 == v34)
      {
        goto LABEL_15;
      }
    }

    v32 = v34;
  }

LABEL_15:
  v37 = *(v31 + 16);
  if (v32 == v37)
  {
    v25 = 0;
LABEL_20:

    (*v43)(v29, v28);
    return v25;
  }

  if (v32 >= v37)
  {
    __break(1u);
  }

  else
  {
    sub_100004428(v33 + 40 * v32, v46);
    sub_100168088(&qword_1005748E0);
    type metadata accessor for ShowHeader();
    result = swift_dynamicCast();
    if (result)
    {
      v25 = v47;
      if (v47)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_100231174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v5 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for CarPlayTemplateInfo(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v19 = [objc_opt_self() mainBundle];
  v38._object = 0xE000000000000000;
  v20._object = 0x800000010046A6C0;
  v20._countAndFlagsBits = 0xD000000000000019;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v38);

  v22 = objc_allocWithZone(CPListItem);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 initWithText:v23 detailText:0 image:0 accessoryImage:0 accessoryType:1];

  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = 0;
  v12[24] = 2;
  v12[64] = 8;
  v25 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v26 = *(*(v25 - 8) + 56);
  v26(v12, 0, 1, v25);
  v26(v18, 1, 1, v25);
  v27 = *(v13 + 20);

  sub_1001FBB44(v12, v18);
  v18[v27] = 0;
  v28 = v35;
  sub_100231644(v18, v9, type metadata accessor for CarPlayTemplateInfo);
  (*(v14 + 56))(v9, 0, 1, v13);
  sub_1001D2D08(v9, v28);
  v29 = (*(v14 + 48))(v28, 1, v13);
  v30 = 0;
  if (v29 != 1)
  {
    sub_100231644(v28, v34, type metadata accessor for CarPlayTemplateInfo);
    v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1002316B4(v28, type metadata accessor for CarPlayTemplateInfo);
  }

  [v24 setUserInfo:v30];
  swift_unknownObjectRelease();
  sub_100009104(v9, &unk_100578410);
  aBlock[4] = sub_1002316AC;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004E67F8;
  v31 = _Block_copy(aBlock);

  [v24 setHandler:v31];
  _Block_release(v31);
  sub_1002316B4(v18, type metadata accessor for CarPlayTemplateInfo);
  return v24;
}

uint64_t sub_100231644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002316B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100231714(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_10022F56C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002317F8@<X0>(void *a1@<X8>)
{
  v3 = 0xD000000000000010;
  v4 = (v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination);
  v5 = *(v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8);
  if (v5 >= 2)
  {
    v13 = *v4;
    v12 = 0x8000000100468230;

    v14._countAndFlagsBits = 0x5F4E495F4E45504FLL;
    v15._countAndFlagsBits = 0xD000000000000022;
    v15._object = 0x8000000100468280;
    v14._object = 0xEA00000000004025;
    PFLocalizedString(_:comment:)(v14, v15);
    sub_100168088(&unk_100574670);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100400790;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100022C18();
    *(v16 + 32) = v13;
    *(v16 + 40) = v5;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v17;
  }

  else
  {
    v6._countAndFlagsBits = 0x4E494C5F4E45504FLL;
    v7._countAndFlagsBits = 0xD000000000000021;
    v7._object = 0x8000000100468250;
    v6._object = 0xE90000000000004BLL;
    v9 = PFLocalizedString(_:comment:)(v6, v7);
    result = v9._countAndFlagsBits;
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
    v12 = 0xE600000000000000;
    v3 = 0x697261666173;
  }

  *a1 = 0;
  a1[1] = v3;
  a1[2] = v12;
  a1[3] = countAndFlagsBits;
  a1[4] = object;
  return result;
}

uint64_t sub_10023196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(a2 + 32))();
  v8 = v7;
  result = (*(a2 + 16))(a1, a2);
  *a3 = 0;
  a3[1] = v6;
  a3[2] = v8;
  a3[3] = result;
  a3[4] = v10;
  return result;
}

uint64_t sub_1002319E8()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_interestState) == 4)
  {
    goto LABEL_3;
  }

  v3 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  if (!*(v0 + v3))
  {
LABEL_11:
    v6 = InterestState.rawValue.getter();
    v8 = v7;
    v1 = 1;
    if (v6 != InterestState.rawValue.getter() || v8 != v9)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        v1 = 1;
        return v1 & 1;
      }

      v12 = InterestState.rawValue.getter();
      v14 = v13;
      if (v12 == InterestState.rawValue.getter() && v14 == v15)
      {
        v1 = 1;
      }

      else
      {
        v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return v1 & 1;
  }

  type metadata accessor for ChannelContextActionConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if ((*(v4 + qword_1005932C8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_11;
    }

    v5 = sub_1002DC89C();

    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v1 = 0;
  return v1 & 1;
}

uint64_t sub_100231B9C()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) == 4 || (v1 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration, swift_beginAccess(), *(v0 + v1)) && (type metadata accessor for PodcastContextActionConfiguration(0), swift_dynamicCastClass()))
  {
    v2 = 0;
  }

  else
  {
    v4 = InterestState.rawValue.getter();
    v6 = v5;
    if (v4 == InterestState.rawValue.getter() && v6 == v7)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v2 & 1;
}

BOOL sub_100231CA0()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractionContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 16) && (, dispatch thunk of ContextActionsConfiguration.context.getter(), , InteractionContext.page.getter(), (*(v6 + 8))(v8, v5), v9 = InteractionContext.Page.isShowPage.getter(), sub_10023625C(v4, &type metadata accessor for InteractionContext.Page), (v9 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24) != 0;
  }
}

id sub_100231E2C()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    goto LABEL_7;
  }

  dispatch thunk of ContextActionsConfiguration.previewModel.getter();

  if (!*(&v4 + 1))
  {
LABEL_7:
    sub_100009104(&v3, &qword_100576490);
    v1 = 0;
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_10;
  }

  sub_100168088(&qword_1005748C0);
  sub_100168088(&qword_10057BC10);
  if (swift_dynamicCast())
  {
    if (*(&v7 + 1))
    {
      v1 = [objc_opt_self() isRunningOnInternalOS];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

LABEL_10:
  sub_100009104(&v6, &qword_100578DE8);
  return v1;
}

uint64_t sub_100231F68()
{
  v1 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {

    if (sub_100397D28())
    {
      swift_beginAccess();
      v8 = *(v0 + 40);
      if (v8)
      {

        dispatch thunk of ContextActionsConfiguration.context.getter();

        InteractionContext.page.getter();
        (*(v5 + 8))(v7, v4);
        LOBYTE(v8) = InteractionContext.Page.isTranscriptView.getter();

        sub_10023625C(v3, &type metadata accessor for InteractionContext.Page);
      }

      else
      {
      }
    }

    else
    {

      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_100232138(uint64_t (*a1)(uint64_t))
{
  sub_1002B9778();
  v3 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = sub_10024E918;
  v5[4] = 0;
  aBlock[4] = sub_1001E9664;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004E6A28;
  v6 = _Block_copy(aBlock);
  swift_retain_n();

  [v3 reportAConcernURLWithCompletion:v6];
  _Block_release(v6);

  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_100232294(uint64_t (*a1)(void), void *a2)
{
  v5 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  v15 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_1001BB0E0(v2 + v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v25[1] = a2;
    v17 = *(v9 + 32);
    v17(v14, v7, v8);
    v25[0] = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v18);
    v26 = a1;
    v20 = v19;
    (*(v9 + 16))(v11, v14, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v22 = swift_allocObject();
    v17((v22 + v21), v11, v8);
    aBlock[4] = sub_100236184;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002016BC;
    aBlock[3] = &unk_1004E69D8;
    v23 = _Block_copy(aBlock);

    v24 = v25[0];
    [v25[0] openURL:v20 withCompletionHandler:v23];
    _Block_release(v23);

    a1 = v26;
    result = (*(v9 + 8))(v14, v8);
    if (!a1)
    {
      return result;
    }

    return a1(result);
  }

  result = sub_100009104(v7, &qword_100574040);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_1002325B0(void (*a1)(uint64_t, __n128))
{
  v3 = type metadata accessor for EpisodeContextActionDataType(0);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  if (!v8)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v9 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1002361F4(v8 + v9, v7, type metadata accessor for EpisodeContextActionDataType);
  if (swift_getEnumCaseMultiPayload())
  {
    v4 = sub_10023625C(v7, type metadata accessor for EpisodeContextActionDataType);
    goto LABEL_4;
  }

  sub_1000044A0(v1 + 4, v1[7]);
  dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(v4, v5);
}

uint64_t sub_100232714(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 56))(a3, a4);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_10023276C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);

  dispatch thunk of ContextAction.configuration.setter();
  type metadata accessor for PodcastContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v6 = *(a3 + 24);

    v6(v7, a2, a3);
  }

  v8 = *(v5 + 64);

  return v8(a2, v5);
}

uint64_t sub_100232848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8;
  dispatch thunk of ContextAction.apply(configuration:)();
  if ((dispatch thunk of ContextAction.isSupported()() & 1) == 0)
  {
    return 0;
  }

  v10 = (*(a3 + 16))(a2, a3);
  v16[0] = v11;
  v16[1] = v10;
  sub_1002330C8(a2, a3);
  (*(a3 + 48))(a2, a3);
  v12 = type metadata accessor for ContextActionType();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_100009104(v9, &qword_100575870);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v13 + 8))(v9, v12);
  }

  (*(a3 + 24))(a2, a3);
  (*(a3 + 96))(a2, a3);
  sub_100009F1C(0, &qword_1005764B0);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  v15[5] = v3;

  swift_unknownObjectRetain();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

id sub_100232ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100168088(&qword_100575870);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  dispatch thunk of ContextAction.apply(configuration:)();
  if (((*(a3 + 80))(a2, a3) & 1) == 0)
  {
    return 0;
  }

  (*(a3 + 72))(&aBlock, a2, a3);
  v24[2] = v27;
  v25 = aBlock;
  v11 = v28;
  v24[1] = v29;
  v12 = v30;
  (*(a3 + 48))(a2, a3);
  v13 = type metadata accessor for ContextActionType();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_100009104(v10, &qword_100575870);
    v15 = 0;
  }

  else
  {
    v15 = sub_100234C80() & 1;
    (*(v14 + 8))(v10, v13);
  }

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v4;
  v17[5] = a1;
  v17[6] = v15;
  swift_unknownObjectRetain();

  if (v12)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v30 = sub_1002344A8;
  v31 = v17;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1002348A4;
  v29 = &unk_1004E68C0;
  v19 = _Block_copy(&aBlock);
  v16 = [objc_opt_self() contextualActionWithStyle:v15 title:v18 handler:v19];

  _Block_release(v19);

  v20 = v25;
  [v16 setBackgroundColor:v25];
  if (v11)
  {
    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() systemImageNamed:v21];
  }

  else
  {
    v22 = sub_1002330C8(a2, a3);
  }

  [v16 setImage:v22];

  return v16;
}

uint64_t sub_100232E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);

  dispatch thunk of ContextAction.configuration.setter();
  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v6 = sub_1001ECDA0();
    (*(a3 + 24))(v6, a2, a3);
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v7 = *(a3 + 24);

      v7(v8, a2, a3);
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        goto LABEL_9;
      }

      v10 = *(v9 + qword_1005766C8);
      v11 = *(a3 + 24);

      v11(v10, a2, a3);
    }
  }

LABEL_9:
  v12 = *(v5 + 64);

  return v12(a2, v5);
}

double sub_100232FDC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100468210;
  v3._countAndFlagsBits = 0x6853206F74206F47;
  v3._object = 0xEA0000000000776FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  result = 0.0;
  *a1 = xmmword_100405FF0;
  *(a1 + 16) = 0xEF6572617571732ELL;
  *(a1 + 24) = v5;
  return result;
}

id sub_1002330C8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  if (!v2)
  {
    return 0;
  }

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() _systemImageNamed:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 imageWithRenderingMode:2];

  return v5;
}

uint64_t sub_100233170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v7 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v7 - 8);
  v9 = &v31[-v8];
  v10 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v10 - 8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v31[-v14];
  v16 = type metadata accessor for PresentationSource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v31[-v22];
  v24 = [a1 presentationSourceItem];
  if (v24)
  {
    v25 = v24;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v15, &unk_10057BB90);
    }

    else
    {
      (*(v17 + 32))(v23, v15, v16);
      v34 = a5;
      v33 = *(v17 + 16);
      v33(v19, v23, v16);
      *v9 = v25;
      v32 = enum case for PresentationSource.Position.sourceItem(_:);
      v26 = type metadata accessor for PresentationSource.Position();
      v27 = *(v26 - 8);
      (*(v27 + 104))(v9, v32, v26);
      (*(v27 + 56))(v9, 0, 1, v26);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v33(v12, v19, v16);
      (*(v17 + 56))(v12, 0, 1, v16);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v28 = *(v17 + 8);
      v28(v19, v16);
      v28(v23, v16);
      a5 = v34;
    }
  }

  v29 = v36;
  sub_100233528(v37, v36, a5);
  return (*(a5 + 56))(v29, a5);
}

uint64_t sub_100233528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for OSLogger();
  v104 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ActionMetricsBehavior();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for PresentationSource.Position();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100576480);
  __chkstk_darwin(v12 - 8);
  v89 = v77 - v13;
  v14 = type metadata accessor for InteractionContext();
  __chkstk_darwin(v14 - 8);
  v90 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100168088(&qword_100576488);
  __chkstk_darwin(v16 - 8);
  v97 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = v77 - v19;
  v94 = type metadata accessor for ActionOrigin();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v103 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v21 - 8);
  v92 = v77 - v22;
  v23 = type metadata accessor for MetricsLabel();
  v91 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MetricsData();
  __chkstk_darwin(v26 - 8);
  v28 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for NativeClickMetricsAction();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v102 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v30 - 8);
  v88 = v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = v77 - v34;
  result = (*(a3 + 104))(a1, a2, a3, v33);
  if ((result & 1) == 0)
  {
    result = sub_100234978();
    if (v37)
    {
      v80 = result;
      v84 = v37;
      v81 = v28;
      v82 = a2;
      v83 = v3;
      v38 = v7;
      dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
      v39 = type metadata accessor for PresentationSource();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      v42 = v40 + 48;
      if (v41(v35, 1, v39) || (v77[3] = v42, v78 = v41, v79 = v39, (v43 = PresentationSource.viewController.getter()) == 0))
      {

        sub_100009104(v35, &unk_10057BB90);
      }

      else
      {
        v44 = v43;
        sub_100009104(v35, &unk_10057BB90);
        v45 = UIResponder.nearestActionRunner.getter();
        v77[2] = v46;

        if (v45)
        {
          v104 = v45;
          type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
          if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
          {
            v47 = static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            v47 = static MetricsTargetType.button.getter();
          }

          v77[0] = v47;
          (*(a3 + 40))(v82, a3);
          MetricsLabel.rawValue.getter();
          (*(v91 + 8))(v25, v23);
          v48 = swift_dynamicCastClass();
          v77[1] = a1;
          if (v48)
          {
            static MetricsActionContext.selectionMenu.getter();
          }

          else
          {
            static MetricsActionContext.contextual.getter();
          }

          v49 = v94;
          v50 = type metadata accessor for URL();
          v51 = v92;
          (*(*(v50 - 8) + 56))(v92, 1, 1, v50);
          static MetricsDataConfiguration.default.getter();
          static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

          v116 = v110;
          sub_100009104(&v116, &unk_100574650);
          v115 = v111;
          sub_100009104(&v115, &unk_100573A90);
          v114 = v112;
          sub_100009104(&v114, &unk_100574660);
          sub_100037470(v113);

          sub_100009104(v51, &qword_100574040);
          NativeClickMetricsAction.init(_:)();
          ContextActionsConfiguration.objectGraph.getter();
          v52 = v101;
          BaseObjectGraph.injectIfAvailable<A>(_:)();

          v53 = v93;
          v54 = *(v93 + 48);
          v55 = v49;
          if (v54(v52, 1, v49) != 1)
          {
            v59 = v103;
            sub_1001E91F0(v52, v103);
LABEL_27:
            type metadata accessor for ActionRunnerOptions();
            ContextActionsConfiguration.objectGraph.getter();
            BaseObjectGraph.__allocating_init(_:)();
            v67 = v97;
            sub_1002361F4(v59, v97, &type metadata accessor for ActionOrigin);
            (*(v53 + 56))(v67, 0, 1, v55);
            ActionRunnerOptions.withActionOrigin(_:)();

            sub_100009104(v67, &qword_100576488);
            swift_getObjectType();
            v68 = v96;
            v106 = v96;
            v107 = sub_10000E464(&qword_100576498, &type metadata accessor for NativeClickMetricsAction);
            v69 = sub_10000E680(&v105);
            v70 = v95;
            v71 = v102;
            (*(v95 + 16))(v69, v102, v68);
            v72 = v99;
            v73 = v98;
            v74 = v100;
            (*(v99 + 104))(v98, enum case for ActionMetricsBehavior.fromAction(_:), v100);
            ActionRunner.perform(_:withMetrics:asPartOf:)();
            swift_unknownObjectRelease();

            (*(v72 + 8))(v73, v74);
            sub_10023625C(v103, &type metadata accessor for ActionOrigin);
            (*(v70 + 8))(v71, v68);
            return sub_100004590(&v105);
          }

          dispatch thunk of ContextActionsConfiguration.context.getter();
          dispatch thunk of ContextActionsConfiguration.previewModel.getter();
          v56 = v106;
          if (v106)
          {
            v57 = sub_1000044A0(&v105, v106);
            *(&v109 + 1) = v56;
            v58 = sub_10000E680(&v108);
            (*(*(v56 - 8) + 16))(v58, v57, v56);
            sub_100004590(&v105);
          }

          else
          {
            sub_100009104(&v105, &qword_100576490);
            v108 = 0u;
            v109 = 0u;
          }

          v60 = v89;
          v61 = v78;
          v62 = v88;
          dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
          if (!v61(v62, 1, v79))
          {
            PresentationSource.position.getter();
            v63 = v86;
            v64 = v62;
            v65 = v87;
            if (!(*(v86 + 48))(v60, 1, v87))
            {
              (*(v63 + 16))(v85, v60, v65);
              sub_100009104(v60, &qword_100576480);
              sub_100009104(v64, &unk_10057BB90);
              v75 = v63;
              v76 = v85;
              PresentationSource.Position.view.getter();
              (*(v75 + 8))(v76, v65);
LABEL_25:
              v59 = v103;
              ActionOrigin.init(context:sender:view:)();
              v66 = v101;
              if (v54(v101, 1, v55) != 1)
              {
                sub_100009104(v66, &qword_100576488);
              }

              goto LABEL_27;
            }

            sub_100009104(v60, &qword_100576480);
            v62 = v64;
          }

          sub_100009104(v62, &unk_10057BB90);
          goto LABEL_25;
        }
      }

      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      return (*(v104 + 8))(v9, v38);
    }
  }

  return result;
}

uint64_t sub_1002343DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100233528(a6, a8, a9);
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a3;
  v13[4] = a4;
  v14 = *(a9 + 88);

  v14(sub_1001E9478, v13, a8, a9);
}

uint64_t sub_1002344D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v23 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_100009F1C(0, &qword_1005729D0);
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v10 + 8);
  v17 = v12;
  v18 = v9;
  v24(v17, v9);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = v23;
  *(v19 + 24) = v20;
  aBlock[4] = sub_10023614C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E6960;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E464(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v28 + 8))(v5, v3);
  (*(v26 + 8))(v8, v27);
  return (v24)(v15, v18);
}

void sub_1002348A4(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1002353FC, v8);
}

uint64_t sub_100234978()
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    *&v15 = *(v1 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && v0 && (v4 = v3, v5 = swift_getObjectType(), v6 = v0, (*(v4 + 16))(v5, v4)))
  {
    v7 = sub_100398D08();
    v9 = v8;

    if (object_getClass(v6) == _TtC8Podcasts34EpisodePresentPodcastContextAction && (AdamID.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_22;
    }

    type metadata accessor for SubscribeEpisodeContextAction();
    if (swift_dynamicCastClass())
    {
      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (v0)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        if ((*(v11 + 16))(ObjectType, v11))
        {
          v9 = sub_1002160A8();

          if ((AdamID.isEmpty.getter() & 1) == 0)
          {
LABEL_22:
            *&v15 = v9;
            goto LABEL_3;
          }
        }
      }
    }

    type metadata accessor for ContextActionsConfiguration();

    sub_100168088(&qword_1005764A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      sub_100009104(&v15, &qword_1005764A8);
      return 0;
    }

    v13 = *(&v16 + 1);
    v14 = v17;
    sub_1000044A0(&v15, *(&v16 + 1));
    if (!(*(v14 + 8))(v13, v14))
    {
      sub_100004590(&v15);
      return 0;
    }

    v7 = sub_100399278();

    sub_100004590(&v15);
  }

  if ((AdamID.isEmpty.getter() & 1) == 0)
  {
    *&v15 = v7;
    goto LABEL_3;
  }

  return 0;
}

uint64_t sub_100234C18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  dispatch thunk of ContextAction.configuration.setter();
  v5 = *(a3 + 64);

  return v5(a2, a3);
}

uint64_t sub_100234C80()
{
  v0 = type metadata accessor for ContextActionType();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v2 - 8);
  v4 = v35 - v3;
  v5 = type metadata accessor for EpisodeListSettings();
  v35[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InteractionContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  dispatch thunk of ContextActionsConfiguration.context.getter();
  InteractionContext.page.getter();
  (*(v9 + 8))(v11, v8);
  sub_1002361F4(v17, v14, &type metadata accessor for InteractionContext.Page);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v18 = *v14;
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    v46 = xmmword_100406000;
    v47.i64[0] = 0;
    v47.i64[1] = 0xE000000000000000;
    v48 = 5;
  }

  else
  {
    InteractionContext.Page.episodeListSettings.getter();
    v19 = v35[0];
    if ((*(v35[0] + 48))(v4, 1, v5) == 1)
    {
      sub_10023625C(v17, &type metadata accessor for InteractionContext.Page);
      sub_100009104(v4, &unk_100573A80);
      v20 = v14;
LABEL_44:
      sub_10023625C(v20, &type metadata accessor for InteractionContext.Page);
LABEL_45:
      v18 = 0;
      return v18 & 1;
    }

    (*(v19 + 32))(v7, v4, v5);
    EpisodeListSettings.listType.getter();
    v18 = EpisodeListSettings.hidePlayedEpisodes.getter();
    (*(v19 + 8))(v7, v5);
    sub_10023625C(v14, &type metadata accessor for InteractionContext.Page);
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v44 = v39;
    v45 = v40;
  }

  v22 = v36;
  v21 = v37;
  v23 = v38;
  (*(v37 + 16))(v36, v35[1], v38);
  v24 = (*(v21 + 88))(v22, v23);
  if (v24 == enum case for ContextActionType.removeEpisode(_:))
  {
    if (v48 != 2)
    {
      if (v48 != 8)
      {
        if (v48 == 10)
        {
          v25 = vorrq_s8(v46, v47);
          v26 = *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *(&v44 + 1);
          v27 = v44 | *(&v45 + 1) | v45;
          goto LABEL_17;
        }

        goto LABEL_43;
      }

      goto LABEL_28;
    }

    goto LABEL_36;
  }

  if (v24 == enum case for ContextActionType.removeEpisodeFromBookmarks(_:))
  {
    if (v48 != 7)
    {
      if (v48 != 8)
      {
        if (v48 == 10 && v44 == 6)
        {
          v28 = vorrq_s8(v46, v47);
          v26 = *&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | *(&v44 + 1);
          v27 = *(&v45 + 1) | v45;
LABEL_17:
          if (!(v26 | v27))
          {
            goto LABEL_37;
          }
        }

LABEL_43:
        sub_100018888(&v44);
        v20 = v17;
        goto LABEL_44;
      }

      goto LABEL_28;
    }

LABEL_36:
    sub_100018888(&v44);
    goto LABEL_37;
  }

  if (v24 != enum case for ContextActionType.markPlayed(_:))
  {
    if (v24 == enum case for ContextActionType.markUnplayed(_:))
    {
      if (v48 != 8)
      {
        goto LABEL_43;
      }

LABEL_28:
      v18 = static EpisodeUserFilter.== infix(_:_:)();
LABEL_29:
      sub_100018888(&v44);
      goto LABEL_30;
    }

    if (v24 != enum case for ContextActionType.removeFromUpNext(_:))
    {
      v32 = enum case for ContextActionType.removeFromStation(_:);
      v33 = v24;
      sub_100018888(&v44);
      sub_10023625C(v17, &type metadata accessor for InteractionContext.Page);
      if (v33 == v32)
      {
        v18 = 1;
        return v18 & 1;
      }

      (*(v21 + 8))(v22, v23);
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v29 = BYTE8(v45);
  if (v48 <= 5u)
  {
    if (v48 - 2 >= 2)
    {
      if (v48 == 4)
      {
        sub_10023625C(v17, &type metadata accessor for InteractionContext.Page);
        sub_100018888(&v44);
        v18 = v29;
        return v18 & 1;
      }

      if (v48 != 5)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_29;
  }

  if (v48 <= 7u)
  {
    if (v48 != 6)
    {
      if (v48 != 7)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_37:
    sub_10023625C(v17, &type metadata accessor for InteractionContext.Page);
    v18 = 1;
    return v18 & 1;
  }

  if (v48 == 8)
  {
    v34 = static EpisodeUserFilter.== infix(_:_:)();
    sub_100018888(&v44);
    sub_10023625C(v17, &type metadata accessor for InteractionContext.Page);
    v18 |= v34;
    return v18 & 1;
  }

  if (v48 != 10)
  {
    goto LABEL_43;
  }

  v30 = v47.i64[0] | *(&v46 + 1) | v46;
  if (*(&v45 + 1) | v45 | v44 | v47.i64[1] | v30 | *(&v44 + 1))
  {
    if ((v44 - 5) > 1 || *(&v45 + 1) | v45 | v47.i64[1] | v30 | *(&v44 + 1))
    {
      goto LABEL_43;
    }
  }

LABEL_30:
  sub_10023625C(v17, &type metadata accessor for InteractionContext.Page);
  return v18 & 1;
}

uint64_t sub_100235414@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = xmmword_100406010;
  *(a1 + 16) = 0xE400000000000000;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

double sub_100235450@<D0>(uint64_t a1@<X8>)
{
  sub_1002317F8(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

BOOL sub_100235490()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2];
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    return 0;
  }

  type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_1001BB0E0(v0 + v4, v3);
  v5 = type metadata accessor for URL();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100009104(v3, &qword_100574040);
  return v6;
}

uint64_t sub_1002355D0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002356CC@<X0>(void *a1@<X8>)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = 0;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v5;
}

void sub_100235730(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0x80000001004682E0;
  v7._object = 0x80000001004682B0;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x100000000000001DLL;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

BOOL sub_100235804()
{
  v1 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  result = 0;
  if (*(v0 + v1))
  {
    type metadata accessor for CategoryContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 1;
    }
  }

  return result;
}

void sub_10023588C(uint64_t a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0x8000000100468320;
  v7._object = 0x8000000100468300;
  v10._countAndFlagsBits = 0xD000000000000025;
  v7._countAndFlagsBits = 0xD000000000000010;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

void sub_100235968(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0x657469726F766146;
  v7._object = 0x8000000100468360;
  v7._countAndFlagsBits = 0xD000000000000015;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

void sub_100235A54(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0xEC0000007373654CLL;
  v10._countAndFlagsBits = 0x2074736567677553;
  v7._object = 0x8000000100468380;
  v7._countAndFlagsBits = 0xD000000000000019;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

uint64_t sub_100235B48@<X0>(void *a1@<X8>)
{
  v3 = 0xEC000000656C6262;
  v4 = 0x75622E65746F7571;
  v5 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
    if (swift_dynamicCastClass())
    {
      v4 = 0xD000000000000014;
      v3 = 0x80000001004683C0;
    }
  }

  result = sub_1002EB514();
  *a1 = 0;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v7;
  return result;
}

void sub_100235C28(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0x8000000100468400;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001004683E0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

uint64_t sub_100235D00()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) == 4)
  {
    v1 = 0;
  }

  else
  {
    v2 = InterestState.rawValue.getter();
    v4 = v3;
    if (v2 == InterestState.rawValue.getter() && v4 == v5)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

uint64_t sub_100235DD0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = 0;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = 0xD000000000000024;
  a1[4] = 0x8000000100468420;
}

void sub_100235E18(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0xED0000657469726FLL;
  v10._countAndFlagsBits = 0x766146206F646E55;
  v7._object = 0x8000000100468450;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

double sub_100235F10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10023196C(a1, a2, v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v4;
  return result;
}

double sub_100235F50@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x73676E6974746553;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  result = 0.0;
  *a1 = xmmword_100406020;
  *(a1 + 16) = 0xE400000000000000;
  *(a1 + 24) = v5;
  return result;
}

double sub_10023601C@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100468470;
  v3._countAndFlagsBits = 0x6853206F74206F47;
  v3._object = 0xEA0000000000776FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000021;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  result = 0.0;
  *a1 = xmmword_100405FF0;
  *(a1 + 16) = 0xEF6572617571732ELL;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100236108(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_100236184(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1002473E8(a1, v4);
}

uint64_t sub_1002361F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023625C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002362E0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  sub_100168088(&qword_100578E88);
  __chkstk_darwin();
  v6 = v40 - v5;
  v7 = type metadata accessor for URLComponents();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin();
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URLQueryItem();
  v9 = *(v47 - 8);
  __chkstk_darwin();
  v43 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = v40 - v11;
  v12 = *a1;
  v57 = *(a1 + 1);
  v58 = v12;
  v13 = *(a1 + 2);
  v55 = *(a1 + 3);
  v56 = v13;
  v14 = *(a1 + 4);
  v53 = *(a1 + 5);
  v54 = v14;
  v15 = a1[12];
  v48 = *(a1 + 104);
  sub_100168088(&qword_100578E90);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4E65646F73697065;
  *(inited + 16) = xmmword_100401B10;
  *(inited + 40) = 0xEB00000000656D61;
  v17 = v57;
  *(inited + 48) = v58;
  *(inited + 64) = 0x4965646F73697065;
  *(inited + 72) = 0xE900000000000064;
  *(inited + 80) = v17;
  *(inited + 96) = 0x4E74736163646F70;
  *(inited + 104) = 0xEB00000000656D61;
  v18 = v55;
  *(inited + 112) = v56;
  *(inited + 128) = 0x4974736163646F70;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = v18;
  *(inited + 160) = 0x4E6C656E6E616863;
  *(inited + 168) = 0xEB00000000656D61;
  v19 = v53;
  *(inited + 176) = v54;
  *(inited + 192) = 0x496C656E6E616863;
  *(inited + 200) = 0xE900000000000064;
  *(inited + 208) = v19;
  sub_10023698C(&v58, v52);
  sub_10023698C(&v57, v52);
  sub_10023698C(&v56, v52);
  sub_10023698C(&v55, v52);
  sub_10023698C(&v54, v52);
  sub_10023698C(&v53, v52);
  v20 = sub_10016A870(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98);
  swift_arrayDestroy();
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 64);
  v24 = (v21 + 63) >> 6;
  v45 = v9 + 32;
  v46 = v9;

  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  if (!v23)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = v27 | (v25 << 6);
      v29 = (*(v20 + 56) + 16 * v28);
      if (v29[1])
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_6;
      }
    }

    v40[2] = *v29;
    v41 = a3;
    v40[1] = *(*(v20 + 48) + 16 * v28);

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_100243BD4(0, v26[2] + 1, 1, v26);
    }

    v32 = v26[2];
    v31 = v26[3];
    if (v32 >= v31 >> 1)
    {
      v26 = sub_100243BD4(v31 > 1, v32 + 1, 1, v26);
    }

    v26[2] = v32 + 1;
    (*(v46 + 32))(v26 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, v42, v47);
    a3 = v41;
  }

  while (v23);
  while (1)
  {
LABEL_6:
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_26:
      v26 = sub_100243BD4(0, v26[2] + 1, 1, v26);
      goto LABEL_19;
    }

    if (v30 >= v24)
    {
      break;
    }

    v23 = *(v20 + 64 + 8 * v30);
    ++v25;
    if (v23)
    {
      v25 = v30;
      goto LABEL_4;
    }
  }

  if ((v48 & 1) != 0 || v15 == 0.0)
  {
    goto LABEL_22;
  }

  Double.description.getter();
  v25 = v43;
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v34 = v26[2];
  v33 = v26[3];
  if (v34 >= v33 >> 1)
  {
    v26 = sub_100243BD4(v33 > 1, v34 + 1, 1, v26);
  }

  v26[2] = v34 + 1;
  (*(v46 + 32))(v26 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v34, v25, v47);
LABEL_22:
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v36 = v50;
  v35 = v51;
  if ((*(v50 + 48))(v6, 1, v51) == 1)
  {

    sub_1002369FC(v6);
    v37 = type metadata accessor for URL();
    return (*(*(v37 - 8) + 56))(a3, 1, 1, v37);
  }

  else
  {
    v39 = v44;
    (*(v36 + 32))(v44, v6, v35);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    return (*(v36 + 8))(v39, v35);
  }
}

uint64_t sub_10023698C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002369FC(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100236A64(__int128 *a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  v5 = [objc_opt_self() mainBundle];
  v17._object = 0xE400000000000000;
  v6._object = 0x800000010046A810;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v17._countAndFlagsBits = 2036427856;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v17);

  *(v2 + 24) = v8;
  *(v2 + 40) = 0;
  v9 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
  v10 = type metadata accessor for EpisodePlayState();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = v2 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_playerStartTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v2 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v2 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  v14 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
  v15 = type metadata accessor for PendingPlaybackMetadata();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  sub_1000109E4(a1, v2 + 48);
  *(v2 + 88) = a2;
  return v2;
}

void sub_100236C04(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeOffer();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v74 - v6;
  v8 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v8 - 8);
  v76 = &v74 - v9;
  v10 = sub_100168088(&qword_10057BC50);
  __chkstk_darwin(v10 - 8);
  v74 = &v74 - v11;
  v12 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v12);
  v14 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v74 - v16);
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v21 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_100239D88(a1 + v21, v20, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100239DF0(v20, type metadata accessor for EpisodeContextActionDataType);
  if (EnumCaseMultiPayload <= 1)
  {
    v27 = v4;
    v28 = v2;
    v29 = v75;
    if (EnumCaseMultiPayload)
    {
      v38 = sub_1003982E0(1);
      if (v38[2])
      {
        (*(v29 + 16))(v27, v38 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v28);

        (*(v29 + 32))(v7, v27, v28);
        EpisodeOffer.contentId.getter();
        v39 = v74;
        PendingPlaybackMetadata.init(adamId:uuid:)();
        v40 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
        v41 = v77;
        swift_beginAccess();
        sub_100016A14(v39, v41 + v40, &qword_10057BC50);
        swift_endAccess();
        EpisodeOffer.contentId.getter();
        EpisodeStateController.stateMachine(for:)();
        v42 = v76;
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        (*(v29 + 8))(v7, v28);
LABEL_51:
        v58 = type metadata accessor for EpisodePlayState();
        (*(*(v58 - 8) + 56))(v42, 0, 1, v58);
        v59 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
        swift_beginAccess();
        v54 = v41 + v59;
        v55 = v42;
        goto LABEL_72;
      }
    }

    else if (sub_100398118(1)[2])
    {
      swift_bridgeObjectRetain_n();

      v30 = v74;
      PendingPlaybackMetadata.init(adamId:uuid:)();
      v31 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
      v32 = v77;
      swift_beginAccess();
      sub_100016A14(v30, v32 + v31, &qword_10057BC50);
      swift_endAccess();
      EpisodeStateController.stateMachine(for:)();

      v33 = v76;
      dispatch thunk of EpisodeStateMachine.currentState.getter();

      goto LABEL_49;
    }

    goto LABEL_74;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100239D88(a1 + v21, v17, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100239DF0(v17, type metadata accessor for EpisodeContextActionDataType);
      v43 = _swiftEmptyArrayStorage;
      goto LABEL_42;
    }

    v23 = *v17;
    v78 = _swiftEmptyArrayStorage;
    if (!(v23 >> 62))
    {
      v34 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return;
  }

  sub_100239D88(a1 + v21, v14, type metadata accessor for EpisodeContextActionDataType);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100239DF0(v14, type metadata accessor for EpisodeContextActionDataType);
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v21 = *v14;
  v78 = _swiftEmptyArrayStorage;
  if (v21 >> 62)
  {
    goto LABEL_56;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_57:
    v44 = _swiftEmptyArrayStorage;
LABEL_58:

LABEL_59:
    if (v44 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_61:
        if ((v44 & 0xC000000000000001) != 0)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v60 = *(v44 + 32);
        }

        v61 = v60;

        v62 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v62 && (v63 = v62, MPModelObject.uuid.getter(), v65 = v64, v63, v65))
        {
          v66 = v77;
          EpisodeStateController.stateMachine(for:)();
        }

        else
        {
          v67 = MPCPlayerResponseItem.podcastEpisode.getter();
          if (!v67 || (v68 = v67, MPModelObject.adamID.getter(), v70 = v69, v68, (v70 & 1) != 0))
          {

            return;
          }

          v66 = v77;
          EpisodeStateController.stateMachine(for:)();
        }

        v71 = v76;
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        v72 = type metadata accessor for EpisodePlayState();
        (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
        v73 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
        swift_beginAccess();
        v54 = v66 + v73;
        v55 = v71;
        goto LABEL_72;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_61;
    }

LABEL_74:

    return;
  }

  while (1)
  {
    v24 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v24;
      if (v26 == v23)
      {
        v44 = v78;
        goto LABEL_58;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (!v34)
      {
        break;
      }

LABEL_21:
      v35 = 0;
      v21 = v23 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v35 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v36 = *(v23 + 8 * v35 + 32);
        }

        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if ([v36 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v35;
        if (v37 == v34)
        {
          v43 = v78;
          goto LABEL_41;
        }
      }

      __break(1u);
    }

LABEL_40:
    v43 = _swiftEmptyArrayStorage;
LABEL_41:

LABEL_42:
    if (v43 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_74;
      }
    }

    else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }

    if ((v43 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v43 + 32);
      goto LABEL_47;
    }

    __break(1u);
LABEL_56:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (!v23)
    {
      goto LABEL_57;
    }
  }

  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_47:
  v46 = v45;

  v47 = v46;
  [v47 episodeStoreId];
  AdamID.init(rawValue:)();
  v48 = [v47 episodeUuid];
  if (!v48)
  {
    [v47 episodeStoreId];

    AdamID.init(rawValue:)();
    v56 = v74;
    PendingPlaybackMetadata.init(adamId:uuid:)();
    v57 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
    v41 = v77;
    swift_beginAccess();
    sub_100016A14(v56, v41 + v57, &qword_10057BC50);
    swift_endAccess();
    EpisodeStateController.stateMachine(for:)();
    v42 = v76;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    goto LABEL_51;
  }

  v49 = v48;

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = v74;
  PendingPlaybackMetadata.init(adamId:uuid:)();
  v51 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
  v32 = v77;
  swift_beginAccess();
  sub_100016A14(v50, v32 + v51, &qword_10057BC50);
  swift_endAccess();
  EpisodeStateController.stateMachine(for:)();

  v33 = v76;
  dispatch thunk of EpisodeStateMachine.currentState.getter();

LABEL_49:
  v52 = type metadata accessor for EpisodePlayState();
  (*(*(v52 - 8) + 56))(v33, 0, 1, v52);
  v53 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
  swift_beginAccess();
  v54 = v32 + v53;
  v55 = v33;
LABEL_72:
  sub_100016A14(v55, v54, &qword_100578FE0);
  swift_endAccess();
}

uint64_t sub_10023778C()
{
  result = swift_beginAccess();
  if (*(v0 + 40))
  {
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime;
      *v3 = *(v2 + qword_1005766D8);
      *(v3 + 8) = 0;
      sub_100004428(v2 + qword_1005932A0, v13);
      v4 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
      swift_beginAccess();
      v5 = v0 + v4;
    }

    else
    {
      type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      started = NowPlayingTranscriptSelectionContextActionConfiguration.playerStartTime.getter();
      v7 = v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_playerStartTime;
      *v7 = started;
      *(v7 + 8) = v8 & 1;
      v9 = NowPlayingTranscriptSelectionContextActionConfiguration.referenceStartTime.getter();
      v10 = v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime;
      *v10 = v9;
      *(v10 + 8) = v11 & 1;
      NowPlayingTranscriptSelectionContextActionConfiguration.alignmentCoordinator.getter();

      v12 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
      swift_beginAccess();
      v5 = v0 + v12;
    }

    sub_100016A14(v13, v5, &qword_100578FE8);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100237910()
{
  v1 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 16))
  {
    goto LABEL_6;
  }

  if (!sub_100397D28())
  {

LABEL_6:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  swift_beginAccess();
  v8 = *(v0 + 40);
  if (v8)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = InteractionContext.Page.isTranscriptView.getter();

    sub_100239DF0(v3, &type metadata accessor for InteractionContext.Page);
  }

  else
  {
  }

  return v8 & 1;
}

void sub_100237AD0()
{
  v1 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for Logger();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v30 - v8);
  v10 = type metadata accessor for EpisodePlayState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  if (*(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_playerStartTime + 8))
  {
    v31 = v3;
    v17 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
    swift_beginAccess();
    sub_100010430(v0 + v17, v9, &qword_100578FE0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v18 = &qword_100578FE0;
      v19 = v9;
LABEL_14:
      sub_100009104(v19, v18);
      return;
    }

    sub_100239BE4(v9, v16);
    v20 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
    swift_beginAccess();
    sub_100010430(v0 + v20, &v33, &qword_100578FE8);
    if (!v34)
    {
      sub_100239DF0(v16, &type metadata accessor for EpisodePlayState);
      v18 = &qword_100578FE8;
      v19 = &v33;
      goto LABEL_14;
    }

    sub_1000109E4(&v33, v35);
    if ((*(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime + 8) & 1) == 0)
    {
      v30 = v0;
      v21 = *(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime);
      static Logger.transcripts.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v22, v23, "User tapped transcript play button at %f", v24, 0xCu);
      }

      (*(v32 + 8))(v6, v4);
      v25 = type metadata accessor for TaskPriority();
      v26 = v31;
      (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
      sub_100239D88(v16, v13, &type metadata accessor for EpisodePlayState);
      sub_100004428(v35, &v33);
      v27 = (*(v11 + 80) + 40) & ~*(v11 + 80);
      v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v30;
      sub_100239BE4(v13, v29 + v27);
      sub_1000109E4(&v33, v29 + v28);
      *(v29 + ((v28 + 47) & 0xFFFFFFFFFFFFFFF8)) = v21;

      sub_100217A04(0, 0, v26, &unk_1004062D0, v29);
    }

    sub_100004590(v35);
    sub_100239DF0(v16, &type metadata accessor for EpisodePlayState);
  }

  else
  {

    sub_100238000();
  }
}

void sub_100238000()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for EpisodeOffer();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v67 - v7;
  v9 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v9 - 8);
  v70 = &v67 - v10;
  v11 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v11);
  v13 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v20 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v20 - 8);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  v72 = v0[2];
  if (!v72)
  {
    return;
  }

  v67 = v2;
  v26 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
  swift_beginAccess();
  sub_100010430(v0 + v26, v25, &qword_100578FE0);
  v27 = type metadata accessor for EpisodePlayState();
  v28 = (*(*(v27 - 8) + 48))(v25, 1, v27);
  v71 = v25;
  if (v28 == 1)
  {
    v29 = v72;
  }

  else
  {
    sub_100010430(v25, v22, &qword_100578FE0);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v30 = v22[16];
      sub_1000044A0(v0 + 6, v0[9]);

      dispatch thunk of EpisodeControllerProtocol.seekTo(time:)();
      if (v30 == 1)
      {
        sub_1000044A0(v0 + 6, v0[9]);
        dispatch thunk of EpisodeControllerProtocol.playPlayer()();
      }

      goto LABEL_85;
    }

    v29 = v72;

    sub_100239DF0(v22, &type metadata accessor for EpisodePlayState);
  }

  v31 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_100239D88(v29 + v31, v19, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100239DF0(v19, type metadata accessor for EpisodeContextActionDataType);
      v45 = sub_1003982E0(1);
      if (v45[2])
      {
        v47 = v68;
        v46 = v69;
        (*(v68 + 16))(v5, v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v69);

        (*(v47 + 32))(v8, v5, v46);
        sub_1000044A0(v0 + 6, v0[9]);
        v74 = v67;
        v73 = v0;

        dispatch thunk of EpisodeControllerProtocol.play(episodeOffer:queueEpisodesIds:timestamp:sender:)();

        (*(v47 + 8))(v8, v46);
        goto LABEL_82;
      }

      goto LABEL_85;
    }

    sub_100239DF0(v19, type metadata accessor for EpisodeContextActionDataType);
    if (sub_100398118(1)[2])
    {

      sub_1000044A0(v0 + 6, v0[9]);
      v38 = type metadata accessor for EpisodeListSettings();
      v39 = v70;
      (*(*(v38 - 8) + 56))(v70, 1, 1, v38);
      v74 = v67;
      v73 = v0;

      dispatch thunk of EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:reason:timestamp:waitForEngine:)();

      v40 = v39;
LABEL_77:
      sub_100009104(v40, &unk_100573A80);
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100239DF0(v19, type metadata accessor for EpisodeContextActionDataType);
    sub_100239D88(v72 + v31, v16, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100239DF0(v16, type metadata accessor for EpisodeContextActionDataType);
      v48 = _swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    v16 = *v16;
    v73 = _swiftEmptyArrayStorage;
    if (!(v16 >> 62))
    {
      v41 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_28;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v33 = v72;
  if (EnumCaseMultiPayload != 3)
  {

    sub_100239DF0(v19, type metadata accessor for EpisodeContextActionDataType);
    goto LABEL_86;
  }

  sub_100239DF0(v19, type metadata accessor for EpisodeContextActionDataType);
  sub_100239D88(v33 + v31, v13, type metadata accessor for EpisodeContextActionDataType);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100239DF0(v13, type metadata accessor for EpisodeContextActionDataType);
    v49 = _swiftEmptyArrayStorage;
    goto LABEL_68;
  }

  v16 = *v13;
  v73 = _swiftEmptyArrayStorage;
  if (v16 >> 62)
  {
    goto LABEL_65;
  }

  v34 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
LABEL_66:
    v49 = _swiftEmptyArrayStorage;
LABEL_67:

LABEL_68:
    if (v49 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_70;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_70:
      if ((v49 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v57 = *(v49 + 32);
      }

      v52 = v57;

      v58 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v58)
      {
        v59 = v58;
        MPModelObject.uuid.getter();
        v61 = v60;

        if (v61)
        {
          sub_1000044A0(v0 + 6, v0[9]);
          v62 = type metadata accessor for EpisodeListSettings();
          v56 = v70;
          (*(*(v62 - 8) + 56))(v70, 1, 1, v62);
          v74 = v67;
          v73 = v0;

          dispatch thunk of EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:reason:timestamp:waitForEngine:)();

LABEL_76:
          v40 = v56;
          goto LABEL_77;
        }
      }

      v63 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v63)
      {
        v64 = v63;
        MPModelObject.adamID.getter();
        v66 = v65;

        if ((v66 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

LABEL_85:

      goto LABEL_86;
    }

LABEL_84:

    goto LABEL_85;
  }

  while (1)
  {
    v35 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v36 = *(v16 + 8 * v35 + 32);
      }

      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v35;
      if (v37 == v34)
      {
        v49 = v73;
        goto LABEL_67;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      v41 = _CocoaArrayWrapper.endIndex.getter();
      if (!v41)
      {
        break;
      }

LABEL_28:
      v42 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v42 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v43 = *(v16 + 8 * v42 + 32);
        }

        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if ([v43 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v42;
        if (v44 == v41)
        {
          v48 = v73;
          goto LABEL_52;
        }
      }

      __break(1u);
    }

LABEL_51:
    v48 = _swiftEmptyArrayStorage;
LABEL_52:

LABEL_53:
    if (v48 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_84;
      }
    }

    else if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    if ((v48 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = *(v48 + 32);
      goto LABEL_58;
    }

    __break(1u);
LABEL_65:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (!v34)
    {
      goto LABEL_66;
    }
  }

  v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
  v51 = v50;

  v52 = v51;
  v53 = [v52 episodeUuid];
  if (v53)
  {
    v54 = v53;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000044A0(v1 + 6, v1[9]);
    v55 = type metadata accessor for EpisodeListSettings();
    v56 = v70;
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    v74 = v67;
    v73 = v1;

    dispatch thunk of EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:reason:timestamp:waitForEngine:)();

    goto LABEL_76;
  }

  [v52 episodeStoreId];

  AdamID.init(rawValue:)();
LABEL_81:
  sub_1000044A0(v1 + 6, v1[9]);
  v74 = v67;
  v73 = v1;

  dispatch thunk of EpisodeControllerProtocol.play(storeEpisodeId:timestamp:sender:)();

LABEL_82:
  sub_100009104(&v73, &unk_1005783D0);
LABEL_86:
  sub_100009104(v71, &qword_100578FE0);
}

uint64_t sub_100238D24(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a1;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 40) = a5;
  v8 = type metadata accessor for Logger();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  sub_100168088(&qword_10057BC50);
  *(v7 + 112) = swift_task_alloc();
  v9 = type metadata accessor for PendingPlaybackMetadata();
  *(v7 + 120) = v9;
  *(v7 + 128) = *(v9 - 8);
  *(v7 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100238E98, 0, 0);
}

uint64_t sub_100238E98()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
  swift_beginAccess();
  sub_100010430(v4 + v5, v3, &qword_10057BC50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009104(v0[14], &qword_10057BC50);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    if (EpisodePlayState.isEpisodePlaying.getter() & 1) != 0 || (EpisodePlayState.isEpisodePaused.getter())
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
    }

    else
    {
      v7 = v0[16];
      v6 = v0[17];
      v8 = v0[15];
      sub_1000044A0((v0[5] + 48), *(v0[5] + 72));
      dispatch thunk of EpisodeControllerProtocol.preflight(_:)();
      (*(v7 + 8))(v6, v8);
    }
  }

  v9 = v0[7];
  v10 = v9[3];
  v11 = v9[4];
  sub_1000044A0(v9, v10);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_100239070;
  v13.n128_u64[0] = v0[8];

  return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v10, v11, v13);
}

uint64_t sub_100239070(double a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1002392F0;
  }

  else
  {
    v4 = sub_100239188;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100239188()
{
  static Logger.transcripts.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v4 = v0[8];
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = v3;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting play at %f, reference timestamp: %f", v5, 0x16u);
  }

  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[10];

  (*(v8 + 8))(v6, v7);
  sub_100238000();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002392F0()
{
  static Logger.transcripts.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 134218242;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to play from transcript at time: %f, error: %@", v4, 0x16u);
    sub_100009104(v5, &qword_100575B20);
  }

  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];

  v10 = *(v9 + 8);
  v10(v7, v8);
  static Logger.transcripts.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[8];
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v11, v12, "Falling back to play at reference time: %f", v14, 0xCu);
  }

  v15 = v0[11];
  v16 = v0[9];

  v10(v15, v16);
  sub_100238000();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100239568()
{

  sub_100004590(v0 + 48);

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state, &qword_100578FE0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator, &qword_100578FE8);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata, &qword_10057BC50);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayTranscriptSelectionContextAction()
{
  result = qword_100578EF0;
  if (!qword_100578EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100239698()
{
  sub_1002397DC(319, &qword_100578F00, &type metadata accessor for EpisodePlayState);
  if (v0 <= 0x3F)
  {
    sub_1002397DC(319, &unk_100578F08, &type metadata accessor for PendingPlaybackMetadata);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002397DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100239830()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100239870@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.play(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002398E4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playFromTranscript(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1002399C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    if (sub_100397D28())
    {
      sub_100236C04(v1);
      sub_10023778C();
    }
  }
}

uint64_t sub_100239A74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_100239B18(uint64_t a1)
{
  result = sub_100239BA0(&qword_100578FD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100239B5C(uint64_t a1)
{
  result = sub_100239BA0(&qword_100578FD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100239BA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayTranscriptSelectionContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100239BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100239C48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EpisodePlayState() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001C51C;

  return sub_100238D24(v11, a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_100239D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100239DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100239E50()
{
  v1 = [objc_allocWithZone(MTInformativeTableViewCell) init];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = v1;
  *(v0 + 16) = 0x7263736275536F6ELL;
  *(v0 + 24) = 0xEF736E6F69747069;
  *(v0 + 32) = [objc_allocWithZone(MTDynamicTypeConstant) initWithDefaultConstant:UIFontTextStyleBody textStyle:UITableViewAutomaticDimension];
  v2 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = objc_opt_self();
  v5 = [v4 groupWithTitle:v2 footerText:0 settings:isa];

  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 40) = v5;
  sub_100168088(&unk_100574680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  v7 = objc_opt_self();
  v8 = objc_opt_self();

  v9 = [v8 mainBundle];
  v27._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000002DLL;
  v10._object = 0x800000010046A8A0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v27);

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();
  v14 = [v7 informativeSettingWithText:v12 identifier:v13];

  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = v14;

  v15 = [v8 mainBundle];
  v28._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000031;
  v16._object = 0x8000000100469FF0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v28);

  sub_1001A5228(inited);
  v18 = String._bridgeToObjectiveC()();

  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v4 groupWithTitle:v18 footerText:0 settings:v19];

  if (v20)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v21 = *(v0 + 40);
    *(v0 + 40) = v20;

    v22 = [objc_opt_self() defaultCenter];
    v23 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10023A58C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003250A8;
    aBlock[3] = &unk_1004E6B48;
    v24 = _Block_copy(aBlock);

    v25 = [v22 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:0 usingBlock:v24];
    _Block_release(v24);

    swift_unknownObjectRelease();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10023A2E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(MTInformativeTableViewCell) init];
    v3 = *(v1 + 88);
    *(v1 + 88) = v2;
  }
}

double sub_10023A358()
{
  v1 = [*(v0 + 88) messageLabel];
  v2 = [objc_opt_self() mainBundle];
  v11._object = 0xE000000000000000;
  v3._object = 0x800000010046A8A0;
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v5 = String._bridgeToObjectiveC()();

  [v1 setText:v5];

  [*(v0 + 88) fittingSize];
  if (v7 != 0.0 || v6 != 0.0)
  {
    return v6;
  }

  v8 = *(v0 + 32);

  [v8 currentConstant];
  return result;
}

uint64_t sub_10023A4A8()
{

  sub_10023A524((v0 + 6));

  return swift_deallocClassInstance();
}

uint64_t sub_10023A524(uint64_t a1)
{
  v2 = sub_100168088(&qword_100576010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10023A62C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  sub_10023D8CC();
  swift_getKeyPath();
  v6 = NSExpression.init<A, B>(forKeyPath:)();
  v7 = [v6 keyPath];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *a3 = v8;
  *a4 = v10;
}

id sub_10023A6E4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_10023A7BC()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_10023A824(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_10023A874(uint64_t a1)
{
  v1[OBJC_IVAR___MTSharedPlaybackController_isPlaying] = 0;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_preferredJumpForwardInterval] = 0x403E000000000000;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_preferredJumpBackwardInterval] = 0x402E000000000000;
  v2 = &v1[OBJC_IVAR___MTSharedPlaybackController_localizedPreferredJumpForwardString];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = &v1[OBJC_IVAR___MTSharedPlaybackController_localizedPreferredJumpBackwardString];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_subscriptions] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_playbackController] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SharedPlaybackController();

  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100009638();

  return v4;
}

uint64_t sub_10023A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10023A970, 0, 0);
}

uint64_t sub_10023A970()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10023AA10;

  return PlaybackController.play()();
}

uint64_t sub_10023AA10()
{
  *(*v1 + 40) = v0;

  if (v0)
  {

    v2 = sub_10023D948;
  }

  else
  {
    v2 = sub_10023AB2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10023ABA8, 0, 0);
}

uint64_t sub_10023ABA8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10023AC48;

  return PlaybackController.pause()();
}

uint64_t sub_10023AC48()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
  }

  return _swift_task_switch(sub_10023D948, 0, 0);
}

uint64_t sub_10023AD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_10023ADB8, 0, 0);
}

uint64_t sub_10023ADB8()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpForward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10023AED0;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_10023AED0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10023B024;
  }

  else
  {
    *(v4 + 80) = a1;
    sub_100004590(v4 + 16);
    v5 = sub_10023B004;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023B024()
{
  sub_100004590(v0 + 16);
  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023B0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_10023B0E0, 0, 0);
}

uint64_t sub_10023B0E0()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpBackward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10023B1F8;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_10023B1F8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10023D940;
  }

  else
  {
    *(v4 + 80) = a1;
    sub_100004590(v4 + 16);
    v5 = sub_10023D93C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023B360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = a1;
  a5(0, 0, v10, a4, v12);
}

uint64_t sub_10023B46C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v36 = &v32 - v9;
  v34 = type metadata accessor for Logger();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.modernPlayback.getter();
  v13 = v4;
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = a3;
    v18 = v17;
    v37 = swift_slowAlloc();
    *v18 = 136315394;
    swift_getObjectType();
    v19 = _typeName(_:qualified:)();
    v21 = sub_1000153E0(v19, v20, &v37);
    v33 = a4;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    swift_getObjectType();
    v23 = _typeName(_:qualified:)();
    v25 = sub_1000153E0(v23, v24, &v37);

    *(v18 + 14) = v25;
    a4 = v33;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Resolving %{public}s for playback.", v18, 0x16u);
    swift_arrayDestroy();

    a3 = v32;
  }

  (*(v10 + 8))(v12, v34);
  v26 = type metadata accessor for TaskPriority();
  v27 = v36;
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v14;
  *(v28 + 40) = a3;
  *(v28 + 48) = a4;
  *(v28 + 56) = v13;
  *(v28 + 64) = v35 & 1;
  v29 = v13;
  v30 = v14;
  sub_100013CB4(a3);
  sub_100217A04(0, 0, v27, &unk_1004063D8, v28);
}

uint64_t sub_10023B798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 344) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = type metadata accessor for PlaybackController.QueueCommand();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  sub_100168088(&qword_1005791C8);
  v11 = swift_task_alloc();
  *(v8 + 192) = v11;
  v12 = type metadata accessor for PlaybackIntent();
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 240) = v13;
  *v13 = v8;
  v13[1] = sub_10023B9C4;

  return sub_1002FB2BC(v11);
}

uint64_t sub_10023B9C4()
{

  return _swift_task_switch(sub_10023BAC0, 0, 0);
}

uint64_t sub_10023BAC0()
{
  v69 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009104(v3, &qword_1005791C8);
    type metadata accessor for MainActor();
    *(v0 + 248) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10023C15C, v5, v4);
  }

  v6 = *(v0 + 96);
  (*(v2 + 32))(*(v0 + 232), v3, v1);
  static Logger.modernPlayback.getter();
  v7 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v8, v9))
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);
    v25 = *(v0 + 96);

    v26 = *(v24 + 8);
    v26(v22, v23);
    goto LABEL_13;
  }

  v10 = 0x6E776F6E6B6E555BLL;
  v11 = *(v0 + 96);
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v68 = v14;
  *v12 = 141559043;
  *(v12 + 4) = 1752392040;
  *(v12 + 12) = 2113;
  v15 = [v11 currentItem];
  *(v12 + 14) = v15;
  v64 = v13;
  *v13 = v15;
  *(v12 + 22) = 2160;
  *(v12 + 24) = 1752392040;
  *(v12 + 32) = 2081;
  v16 = [v11 currentItem];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v16;
  v19 = [v16 episodeUuid];

  if (!v19)
  {
    v14 = v17;
LABEL_11:
    v21 = 0xE90000000000005DLL;
    goto LABEL_12;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v14 = v17;
LABEL_12:
  v27 = *(v0 + 160);
  v61 = *(v0 + 152);
  v62 = *(v0 + 184);
  v28 = *(v0 + 96);
  v29 = sub_1000153E0(v10, v21, &v68);

  *(v12 + 34) = v29;
  *(v12 + 42) = 2048;
  v30 = [v28 count];

  *(v12 + 44) = v30;
  _os_log_impl(&_mh_execute_header, v8, v9, "Resolved manifest starting item: %{private,mask.hash}@ - UUID: %{private,mask.hash}s. Number of items: %ld", v12, 0x34u);
  sub_100009104(v64, &qword_100575B20);

  sub_100004590(v14);

  v26 = *(v27 + 8);
  v26(v62, v61);
LABEL_13:
  *(v0 + 256) = v26;
  v31 = *(v0 + 120);
  static Logger.modernPlayback.getter();
  v32 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 176);
  v37 = *(v0 + 152);
  if (v35)
  {
    v63 = *(v0 + 344);
    v65 = *(v0 + 176);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v68 = v39;
    *v38 = 136315394;
    swift_getObjectType();
    v40 = _typeName(_:qualified:)();
    v42 = sub_1000153E0(v40, v41, &v68);

    *(v38 + 4) = v42;
    *(v38 + 12) = 1024;
    *(v38 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%s] Intent created, requesting playback (waitForEngine: %{BOOL}d)", v38, 0x12u);
    sub_100004590(v39);

    v43 = v65;
  }

  else
  {

    v43 = v36;
  }

  v26(v43, v37);
  v44 = *(v0 + 232);
  v45 = *(v0 + 200);
  v46 = *(v0 + 208);
  v48 = *(v0 + 136);
  v47 = *(v0 + 144);
  v49 = *(v0 + 344);
  v50 = *(v0 + 128);
  v51 = *(v46 + 16);
  *(v0 + 264) = v51;
  *(v0 + 272) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v47, v44, v45);
  (*(v48 + 104))(v47, enum case for PlaybackController.QueueCommand.replace(_:), v50);
  v52 = (v48 + 16);
  v53 = *(v0 + 144);
  v54 = *(v0 + 128);
  if (v49 == 1)
  {
    *(v0 + 80) = v54;
    *(v0 + 88) = &protocol witness table for PlaybackController.QueueCommand;
    v55 = sub_10000E680((v0 + 56));
    (*v52)(v55, v53, v54);
    v66 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v56 = swift_task_alloc();
    *(v0 + 280) = v56;
    *v56 = v0;
    v56[1] = sub_10023C23C;
    v57.n128_u64[0] = 5.0;

    return (v66)(v0 + 56, 0, v57);
  }

  else
  {
    *(v0 + 40) = v54;
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    v58 = sub_10000E680((v0 + 16));
    (*v52)(v58, v53, v54);
    v67 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v59 = swift_task_alloc();
    *(v0 + 296) = v59;
    *v59 = v0;
    v59[1] = sub_10023C400;

    return (v67)(v0 + 16, 0);
  }
}