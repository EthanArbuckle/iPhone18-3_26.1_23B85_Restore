uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_10023B1C8(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  return sub_10023ACAC(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_100572F08();
  v3[15] = sub_100572EF8();
  v7 = sub_100572E78();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_10023B36C, v7, v6);
}

uint64_t sub_10023B36C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_10023B4F4;
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

uint64_t sub_10023B4F4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_10023B71C;
  }

  else
  {
    v8 = sub_10023B6B0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10023B6B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023B71C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10023B788(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v243 = a2;
  v238 = a1;
  v4 = *v2;
  v5 = sub_1005717B8();
  v229 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v224 = &v208[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v228 = &v208[-v9];
  v10 = __chkstk_darwin(v8);
  v227 = &v208[-v11];
  v12 = __chkstk_darwin(v10);
  v226 = &v208[-v13];
  __chkstk_darwin(v12);
  v232 = &v208[-v14];
  v15 = sub_100009DCC(&qword_1006E6FD8);
  __chkstk_darwin(v15 - 8);
  v220 = &v208[-v16];
  v225 = sub_1005722D8();
  v216 = *(v225 - 8);
  v17 = __chkstk_darwin(v225);
  v215 = &v208[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v217 = &v208[-v19];
  v222 = sub_100571B78();
  v219 = *(v222 - 8);
  v20 = __chkstk_darwin(v222);
  v218 = &v208[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v221 = &v208[-v22];
  v23 = *(v4 + 80);
  v24 = sub_1005717C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v223 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v237 = &v208[-v25];
  v26 = sub_100009DCC(&qword_1006E9C68);
  __chkstk_darwin(v26 - 8);
  v28 = &v208[-v27];
  v29 = sub_1005715D8();
  v242 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v213 = &v208[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v234 = &v208[-v33];
  __chkstk_darwin(v32);
  v244 = &v208[-v34];
  v35 = sub_100009DCC(&qword_1006E9C70);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v208[-v37];
  v245 = *(v24 - 8);
  v39 = __chkstk_darwin(v36);
  v214 = &v208[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v43 = &v208[-v42];
  v44 = __chkstk_darwin(v41);
  v247 = &v208[-v45];
  v239 = *(v23 - 8);
  __chkstk_darwin(v44);
  v230 = &v208[-v46];
  v47 = v3 + *(v4 + 152);
  swift_beginAccess();
  v210 = *v47;
  v209 = *(v47 + 8);
  if (qword_1006E4EF0 != -1)
  {
    swift_once();
  }

  v48 = sub_10056DF88();
  v49 = sub_10000C49C(v48, static Logger.libraryActionableState);

  v246 = v49;
  v50 = sub_10056DF68();
  v51 = sub_100573448();

  v52 = os_log_type_enabled(v50, v51);
  v240 = v29;
  v241 = v24;
  v231 = v5;
  v236 = v23;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v250 = v54;
    *v53 = 136446210;
    v55 = *(*v3 + 128);
    swift_beginAccess();
    (*(v239 + 16))(v230, v3 + v55, v23);
    v56 = sub_100572978();
    v58 = sub_1000C9784(v56, v57, &v250);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "╭ Updating state for item: %{public}s", v53, 0xCu);
    sub_100010474(v54);
    v24 = v241;

    v29 = v240;
  }

  sub_10000CC8C(v238, v38, &qword_1006E9C70);
  v59 = v245;
  v60 = *(v245 + 48);
  v61 = v60(v38, 1, v24);
  v62 = v242;
  if (v61 == 1)
  {
    sub_100571838();
    if (v60(v38, 1, v24) != 1)
    {
      sub_10001036C(v38, &qword_1006E9C70);
    }
  }

  else
  {
    (*(v59 + 32))(v247, v38, v24);
  }

  sub_10000CC8C(v243, v28, &qword_1006E9C68);
  v63 = *(v62 + 48);
  v64 = v63(v28, 1, v29);
  v243 = v3;
  if (v64 == 1)
  {
    sub_1005717E8();
    if (v63(v28, 1, v29) != 1)
    {
      sub_10001036C(v28, &qword_1006E9C68);
    }
  }

  else
  {
    (*(v62 + 32))(v244, v28, v29);
  }

  v65 = v245;
  v233 = *(v245 + 16);
  v233(v43, v247, v24);
  v66 = sub_10056DF68();
  v67 = v24;
  v68 = sub_100573448();
  if (os_log_type_enabled(v66, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v250 = v70;
    *v69 = 136446210;
    sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus);
    v71 = sub_100574408();
    v73 = v72;
    v238 = *(v65 + 8);
    v238(v43, v67);
    v74 = sub_1000C9784(v71, v73, &v250);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v66, v68, "| Add Status: %{public}s", v69, 0xCu);
    sub_100010474(v70);
    v29 = v240;

    v62 = v242;
  }

  else
  {

    v238 = *(v65 + 8);
    v238(v43, v67);
  }

  v75 = *(v62 + 16);
  v76 = v234;
  v212 = v62 + 16;
  v211 = v75;
  v75(v234, v244, v29);
  v77 = sub_10056DF68();
  v78 = sub_100573448();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = v62;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v250 = v81;
    *v80 = 136446210;
    sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v82 = sub_100574408();
    v84 = v83;
    v234 = *(v79 + 8);
    (v234)(v76, v29);
    v85 = sub_1000C9784(v82, v84, &v250);

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v77, v78, "| Download Status: %{public}s", v80, 0xCu);
    sub_100010474(v81);
  }

  else
  {

    v234 = *(v62 + 8);
    (v234)(v76, v29);
  }

  v86 = v236;
  v87 = v239;
  v88 = v243;
  v89 = *(*v243 + 128);
  swift_beginAccess();
  v90 = *(TupleTypeMetadata2 + 48);
  v91 = *(v87 + 16);
  v92 = v237;
  v91(v237, v88 + v89, v86);
  v93 = v241;
  v233(&v92[v90], v247, v241);
  v94 = v245;
  v95 = (*(v245 + 88))(&v92[v90], v93);
  if (v95 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v238(&v92[v90], v93);
    v96 = 0;
    v97 = 5;
    goto LABEL_73;
  }

  if (v95 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v95 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v145 = sub_10056DF68();
      v146 = sub_100573428();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v249 = v239;
        *v147 = 136446466;
        v148 = v214;
        sub_100571838();
        sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus);
        v149 = v241;
        v150 = sub_100574408();
        v152 = v151;
        v238(v148, v149);
        v153 = sub_1000C9784(v150, v152, &v249);

        *(v147 + 4) = v153;
        *(v147 + 12) = 2082;
        v91(v230, v243 + v89, v236);
        v154 = sub_100572978();
        v156 = sub_1000C9784(v154, v155, &v249);

        *(v147 + 14) = v156;
        _os_log_impl(&_mh_execute_header, v145, v146, "| Unhandled add status (%{public}s) for item: %{public}s", v147, 0x16u);
        swift_arrayDestroy();

        v92 = v237;
      }

      v97 = 0;
      v96 = 0x8000;
      v87 = v223;
      v86 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v116 = v221;
    v117 = v222;
    v118 = swift_dynamicCast();
    v119 = v242;
    v120 = v243;
    v121 = v225;
    if (v118)
    {
      v122 = v219;
      v123 = v116;
      v124 = v218;
      (*(v219 + 32))(v218, v123, v117);
      if (Album.childrenAddStatus(_:)(*(v120 + 16)) == 1)
      {
        v125 = sub_10056DF68();
        v126 = sub_100573448();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&_mh_execute_header, v125, v126, "| Album is already added but has at least 1 addable track", v127, 2u);
        }

        (*(v219 + 8))(v218, v117);
        v96 = 0;
        v97 = 4;
        goto LABEL_73;
      }

      (*(v122 + 8))(v124, v117);
    }

    v160 = v217;
    if (swift_dynamicCast())
    {
      v161 = v216;
      v162 = v215;
      (*(v216 + 32))(v215, v160, v121);
      v163 = v220;
      sub_1005722C8();
      v164 = sub_100009DCC(&qword_1006E8BD0);
      v165 = v163;
      v166 = v164;
      v167 = *(v164 - 8);
      if ((*(v167 + 48))(v165, 1, v164) == 1)
      {
        (*(v161 + 8))(v162, v121);
        sub_10001036C(v220, &qword_1006E6FD8);
      }

      else
      {
        sub_100010BC0(&qword_1006E8C00, &qword_1006E8BD0);
        v168 = v220;
        sub_1005731B8();
        sub_100573208();
        v170 = v248;
        v169 = v249;
        (*(v167 + 8))(v168, v166);
        if (v169 == v170)
        {
          v171 = sub_10056DF68();
          v172 = sub_100573448();
          v173 = os_log_type_enabled(v171, v172);
          v174 = v216;
          v175 = v215;
          if (v173)
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v171, v172, "| Playlist is already added but does not have any tracks", v176, 2u);
          }

          (*(v174 + 8))(v175, v225);
          goto LABEL_72;
        }

        (*(v216 + 8))(v215, v225);
      }

      v119 = v242;
    }

    v177 = sub_10056DF68();
    v178 = sub_100573448();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&_mh_execute_header, v177, v178, "|—● Item is added", v179, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v181 = result;
    v182 = [result canShowCloudDownloadButtons];

    if (v182)
    {
      v183 = v213;
      v184 = v240;
      v211(v213, v244, v240);
      v185 = (*(v119 + 88))(v183, v184);
      if (v185 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v119 + 96))(v183, v184);
        v97 = *v183;
        v96 = 0x4000;
        goto LABEL_73;
      }

      if (v185 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v119 + 96))(v183, v184);
        if (((v209 & 0xC000) != 0x4000) | v209 & 1)
        {
          v97 = 0;
        }

        else
        {
          v97 = v210;
        }

        v96 = ((v209 & 0xC000) != 0x4000) | v209 & 1 | 0x4100;
        v196 = sub_1005715C8();
        (*(*(v196 - 8) + 8))(v183, v196);
        goto LABEL_73;
      }

      if (v185 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v185 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v96 = 0x8000;
          v97 = 1;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v97 = 0;
          v96 = 16385;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v96 = 0x8000;
          v97 = 2;
        }

        else
        {
          v197 = v86;
          v198 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v199 = v185;
          v200 = sub_10056DF68();
          v201 = sub_100573448();
          v202 = os_log_type_enabled(v200, v201);
          if (v199 == v198)
          {
            if (v202)
            {
              v203 = swift_slowAlloc();
              *v203 = 0;
            }

            v204 = sub_10056DF68();
            v205 = sub_100573448();
            v86 = v197;
            if (os_log_type_enabled(v204, v205))
            {
              v206 = swift_slowAlloc();
              *v206 = 0;
              _os_log_impl(&_mh_execute_header, v204, v205, "|—| 🌚 though we're not sure this is the right thing to do", v206, 2u);
            }

            v96 = 0x8000;
            v97 = 1;
            v87 = v239;
          }

          else
          {
            v86 = v197;
            if (v202)
            {
              v207 = swift_slowAlloc();
              *v207 = 0;
              _os_log_impl(&_mh_execute_header, v200, v201, "|—| Unhandled case", v207, 2u);
            }

            (v234)(v213, v240);
            v97 = 0;
            v96 = 0x8000;
            v87 = v239;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v186 = sub_10056DF68();
      v187 = sub_100573448();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&_mh_execute_header, v186, v187, "|—| MPCloudController -canShowCloudDownloadButton: NO", v188, 2u);
      }
    }

LABEL_72:
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_73;
  }

  v98 = v229;
  (*(v94 + 96))(&v92[v90], v93);
  v99 = v98[4];
  v100 = &v92[v90];
  v101 = v232;
  v102 = v231;
  TupleTypeMetadata2 = (v98 + 4);
  v233 = v99;
  v99(v232, v100, v231);
  v103 = v98[2];
  v104 = v226;
  v103(v226, v101, v102);
  v105 = sub_10056DF68();
  v106 = sub_100573448();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = v104;
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v249 = v109;
    *v108 = 136446210;
    sub_100240384(&qword_1006E6D68, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v110 = sub_100574408();
    v112 = v111;
    v113 = v107;
    v114 = v98[1];
    v114(v113, v231);
    v115 = sub_1000C9784(v110, v112, &v249);

    *(v108 + 4) = v115;
    v102 = v231;
    _os_log_impl(&_mh_execute_header, v105, v106, "|—● Item is unaddable: %{public}s", v108, 0xCu);
    sub_100010474(v109);
  }

  else
  {

    v114 = v98[1];
    v114(v104, v102);
  }

  v128 = v227;
  v103(v227, v232, v102);
  v129 = v98[11];
  v130 = v129(v128, v102);
  v131 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v132 = v228;
  if (v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v133 = sub_10056DF68();
    v134 = sub_100573448();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "|—| Reason is not actionable by the user", v135, 2u);
    }

    v136 = v231;
    v114(v232, v231);
    v114(v128, v136);
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v230) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v227) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v226) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v103(v228, v232, v102);
  v137 = v132;
  v138 = sub_10056DF68();
  v139 = sub_100573448();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v249 = v225;
    *v140 = 136315138;
    sub_100240384(&qword_1006E6D68, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v141 = sub_100574408();
    v143 = v142;
    v114(v137, v231);
    v144 = sub_1000C9784(v141, v143, &v249);

    *(v140 + 4) = v144;
    v102 = v231;
    sub_100010474(v225);
  }

  else
  {

    v114(v137, v102);
  }

  v157 = v224;
  v233(v224, v232, v102);
  v158 = v129(v157, v102);
  if (v158 == v131)
  {
    v96 = 0;
    v97 = 1;
LABEL_46:
    v92 = v237;
    v86 = v236;
    v87 = v239;
    goto LABEL_73;
  }

  v159 = v114;
  v92 = v237;
  v86 = v236;
  v87 = v239;
  if (v158 == v230)
  {
    v97 = 0;
    v96 = 0;
  }

  else if (v158 == v227)
  {
    v96 = 0;
    v97 = 2;
  }

  else if (v158 == v226)
  {
    v96 = 0;
    v97 = 3;
  }

  else
  {
    v159(v157, v102);
    v96 = 0;
    v97 = 5;
  }

LABEL_73:
  (*(v87 + 8))(v92, v86);
  v189 = sub_10056DF68();
  v190 = sub_100573448();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v249 = v192;
    *v191 = 136446210;
    v193 = MusicLibrary.ActionableState.description.getter(v97, v96);
    v195 = sub_1000C9784(v193, v194, &v249);

    *(v191 + 4) = v195;
    _os_log_impl(&_mh_execute_header, v189, v190, "╰ Item state resolved to %{public}s", v191, 0xCu);
    sub_100010474(v192);
  }

  sub_10023B1C8(v97, v96);
  (v234)(v244, v240);
  return (v238)(v247, v241);
}

uint64_t sub_10023D6BC()
{
  v1 = *v0;
  v2 = sub_100009DCC(&qword_1006E9C48);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin(v2);
  v27 = &v23 - v4;
  v5 = sub_100009DCC(&qword_1006E9C50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  sub_1005717D8();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100010BC0(&qword_1006E9C58, &qword_1006E9C50);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = sub_10056E518();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_100250468(&v30, v14);
  swift_endAccess();

  v15 = v27;
  sub_1005717F8();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v24;
  *(&v18 + 1) = v23;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  sub_100010BC0(&qword_1006E9C60, &qword_1006E9C48);
  v20 = v28;
  v21 = sub_10056E518();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  sub_100250468(&v30, v21);
  swift_endAccess();
}

uint64_t sub_10023DACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E9C68);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100009DCC(&qword_1006E9C70);
  __chkstk_darwin(v7 - 8);
  v9 = (&v30 - v8);
  v10 = sub_1005717C8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4EF0 != -1)
  {
    swift_once();
  }

  v14 = sub_10056DF88();
  sub_10000C49C(v14, static Logger.libraryActionableState);
  v36 = *(v11 + 16);
  v36(v13, a1, v10);
  v15 = v11;
  v16 = sub_10056DF68();
  v17 = sub_100573448();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v6;
    v33 = v20;
    v37[0] = v20;
    *v19 = 136446210;
    sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus);
    v21 = v15;
    v31 = v15;
    v22 = sub_100574408();
    v32 = a1;
    v23 = v9;
    v25 = v24;
    (*(v21 + 8))(v13, v10);
    v26 = sub_1000C9784(v22, v25, v37);
    v9 = v23;
    a1 = v32;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Add status has updated to %{public}s", v19, 0xCu);
    sub_100010474(v33);
    v6 = v35;

    v27 = v31;
  }

  else
  {

    (*(v15 + 8))(v13, v10);
    v27 = v15;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36(v9, a1, v10);
    (*(v27 + 56))(v9, 0, 1, v10);
    v29 = sub_1005715D8();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    sub_10023B788(v9, v6);

    sub_10001036C(v6, &qword_1006E9C68);
    return sub_10001036C(v9, &qword_1006E9C70);
  }

  return result;
}

uint64_t sub_10023DEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E9C68);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100009DCC(&qword_1006E9C70);
  __chkstk_darwin(v7 - 8);
  v9 = (&v30 - v8);
  v10 = sub_1005715D8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4EF0 != -1)
  {
    swift_once();
  }

  v14 = sub_10056DF88();
  sub_10000C49C(v14, static Logger.libraryActionableState);
  v35 = *(v11 + 16);
  v35(v13, a1, v10);
  v15 = v11;
  v16 = sub_10056DF68();
  v17 = sub_100573448();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v10;
    v19 = v18;
    v33 = swift_slowAlloc();
    v34 = v6;
    v37[0] = v33;
    *v19 = 136446210;
    sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus);
    v20 = v15;
    v31 = v15;
    v21 = sub_100574408();
    v32 = a2;
    v22 = v9;
    v23 = a1;
    v25 = v24;
    (*(v20 + 8))(v13, v36);
    v26 = sub_1000C9784(v21, v25, v37);
    a1 = v23;
    v9 = v22;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Download status has updated to %{public}s", v19, 0xCu);
    sub_100010474(v33);
    v6 = v34;

    v10 = v36;

    v27 = v31;
  }

  else
  {

    (*(v15 + 8))(v13, v10);
    v27 = v15;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = sub_1005717C8();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    v35(v6, a1, v10);
    (*(v27 + 56))(v6, 0, 1, v10);
    sub_10023B788(v9, v6);

    sub_10001036C(v6, &qword_1006E9C68);
    return sub_10001036C(v9, &qword_1006E9C70);
  }

  return result;
}

uint64_t *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  sub_10023FEF8((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10023E47C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.libraryActionableState);
  sub_10000C49C(v0, static Logger.libraryActionableState);
  sub_1000D3B98(0, &qword_1006EE020);
  sub_100573C18();
  return sub_10056DF98();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E4EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.libraryActionableState);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10023E5C8(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100009DCC(&qword_1006E8B80);
  }

  else
  {

    return sub_100574418();
  }
}

uint64_t sub_10023E63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = sub_1000FC094;

  return sub_10021FA1C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000116F0;

  return sub_100220764(a1, a2, a3, a4);
}

uint64_t sub_10023E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000116F0;

  return sub_100221474(a1, a2, a3, a4);
}

uint64_t sub_10023E888(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100222184(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023E95C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100222E38(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023EA30(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100223AEC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023EB04(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_1002247A0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023EBD8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100225454(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023ECAC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100226108(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023ED80(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100226DBC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023EE54(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100227A70(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023EF28(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_100228724(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023EFFC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_1000FDD7C;

  return sub_1002293D8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023F0C8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_10022A05C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023F19C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_1000FE3F0;

  return sub_10022AD10(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023F270(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_10022B9C4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023F344(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100101FD4;

  return sub_10022C678(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10023F418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000116F0;

  return sub_10022D32C(a1, a2, a3, a4, v10);
}

uint64_t sub_10023F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000CB98;

  return sub_10022DF64(a1, a2, a3, a4);
}

uint64_t _s8MusicKit0A7LibraryC0A4CoreE15ActionableStateO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      if (a1 | a2 ^ 0x8000)
      {
        v5 = a4 & 0xC000;
        if (a2 == 0x8000 && a1 == 1)
        {
          if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
          {
            return 1;
          }
        }

        else if (v5 == 0x8000 && a3 == 2 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC000) == 0x8000 && *&a3 == 0.0 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else if (a4 < 0x4000u)
  {
    if (a1 == 5)
    {
      if (a3 == 5)
      {
        return 1;
      }
    }

    else if (a3 != 5 && a3 == a1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_10023F6C4()
{
  result = qword_1006E9B98;
  if (!qword_1006E9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9B98);
  }

  return result;
}

uint64_t sub_10023F718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023F77C()
{

  return swift_deallocObject();
}

uint64_t sub_10023F7B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10023F7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a4;
  v55 = a5;
  v11 = *v7;
  v12 = sub_100009DCC(&qword_1006E9C68);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_100009DCC(&qword_1006E9C70);
  __chkstk_darwin(v15 - 8);
  v17 = (&v48 - v16);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v18 = &v7[*(*v7 + 152)];
  *v18 = 0;
  *(v18 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_100574178())
  {
    v19 = sub_1000D13A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v7[*(*v7 + 168)] = v19;
  v20 = v11[10];
  v21 = v11[12];
  v53 = a1;
  v56 = v20;
  v57 = v21;
  v22 = sub_100571728();
  *&v7[*(*v7 + 136)] = v22;
  v23 = qword_1006E4EF0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_10056DF88();
  sub_10000C49C(v24, static Logger.libraryActionableState);

  v25 = sub_10056DF68();
  v26 = sub_100573448();

  v27 = os_log_type_enabled(v25, v26);
  v52 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v50 = v14;
    v29 = v28;
    v30 = swift_slowAlloc();
    v49 = v17;
    v31 = v30;
    v58 = v22;
    v59 = v30;
    *v29 = 136446210;
    v32 = sub_100572978();
    v51 = v11;
    v34 = a6;
    v35 = sub_1000C9784(v32, v33, &v59);
    v11 = v51;

    *(v29 + 4) = v35;
    a6 = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Initializing item state: %{public}s", v29, 0xCu);
    sub_100010474(v31);
    v17 = v49;

    v14 = v50;
  }

  v36 = v56;
  (*(*(v56 - 8) + 16))(&v7[*(*v7 + 128)], v53, v56);
  *(v7 + 2) = a2;
  *(v7 + 4) = v54;
  swift_unknownObjectWeakAssign();
  v37 = &v7[*(*v7 + 144)];
  *v37 = v55;
  *(v37 + 1) = a6;
  v38 = sub_1005717C8();
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  v39 = sub_1005715D8();
  (*(*(v39 - 8) + 56))(v14, 1, 1, v39);

  sub_10023B788(v17, v14);
  sub_10001036C(v14, &qword_1006E9C68);
  sub_10001036C(v17, &qword_1006E9C70);
  v40 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 sharedCloudController];
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v45[2] = v36;
  v46 = v57;
  v45[3] = v11[11];
  v45[4] = v46;
  v45[5] = v11[13];
  v45[6] = v44;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v42, v43, 1, 1, sub_100240820, v45);

  sub_10023D6BC();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_10023FD9C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_100239BA4(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10023FF24()
{
  result = qword_1006E9BB8[0];
  if (!qword_1006E9BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006E9BB8);
  }

  return result;
}

uint64_t sub_10023FF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 152);
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_10024001C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t _s15ActionableStateOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s15ActionableStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s15ActionableStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_10024010C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10024013C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t sub_100240188()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100240290()
{
  result = qword_1006E9C40;
  if (!qword_1006E9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9C40);
  }

  return result;
}

uint64_t sub_1002402E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10024031C()
{

  return swift_deallocObject();
}

uint64_t sub_100240384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002403EC()
{
  v1 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_100572128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100240578(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_10023F4E0(a1, v6, v7, v1 + v5);
}

uint64_t sub_100240680()
{
  v1 = *(sub_100009DCC(&qword_1006E6D10) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_100572128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100240850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002408B0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BE8, &unk_10058D8E0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10024090C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023EA30(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1002409D0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BE8, &unk_10058D8E0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100240A2C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BE0, &unk_100586CB0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100240A88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023EB04(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100240B4C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BE0, &unk_100586CB0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100240BCC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100240C90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023F418(a1, v4, v5, v1 + 32, (v1 + 288));
}

uint64_t sub_100240D5C()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100240E3C()
{
  v1 = sub_10056C8A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100240EC4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_10056C8A8() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CB98;

  return sub_1001C3948(a1, a2, v2 + v7);
}

uint64_t sub_100240FA8(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10022EED0(a1, v6, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100240FEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10024104C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023EFFC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100241110(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10022EED0(a1, v6, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100241158(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C30, &unk_100586DA0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1002411B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023F0C8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10024127C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C30, &unk_100586DA0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1002412D8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C28, &unk_10058DC30, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100241334(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023F19C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1002413F8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C28, &unk_10058DC30, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100241454(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C20, &unk_100586D80, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1002414B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023F270(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100241574(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C20, &unk_100586D80, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1002415D0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C18, &unk_10058DC80, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10024162C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023F344(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1002416F0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C18, &unk_10058DC80, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10024174C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C08, &unk_100586D38, "%{public}s: waiting for perform to return…");
}

uint64_t sub_1002417A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023ED80(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10024186C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C08, &unk_100586D38, "%{public}s: waiting for finish to return…");
}

uint64_t sub_1002418C8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C00, &unk_100586D30, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100241924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023EE54(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1002419E8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6C00, &unk_100586D30, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100241A44(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BF8, &unk_100586CF0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100241AA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023EF28(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100241B64(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BF8, &unk_100586CF0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100241BC0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BD8, &unk_10058DD20, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100241C1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023EBD8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100241CE0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BD8, &unk_10058DD20, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100241D3C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BD0, &unk_100586C80, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100241D98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023E95C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100241E5C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BD0, &unk_100586C80, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100241EB8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BC8, &unk_10058DD70, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100241F14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023E888(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100241FD8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BC8, &unk_10058DD70, "%{public}s: waiting for finish to return…");
}

uint64_t sub_100242034(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BA8, &unk_100586C38, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100242090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023ECAC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_100242154(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_10021F7CC(a1, v6, &qword_1006E6BA8, &unk_100586C38, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10024221C(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006E6B90) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_10023E718(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002423AC(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006E6B98) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_10023E7D0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002424B4(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(sub_100009DCC(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_10056D818();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_1002426FC(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_10022EC74(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100242750()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002427D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10023E63C(a1, v4, v5, v1 + 32);
}

uint64_t sub_100242894(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_10022EC74(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t sub_100242A14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100574498();
  }

  return v9 & 1;
}

uint64_t sub_100242B00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100242B30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_100242B90()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100242C34()
{
  sub_1005729F8();
}

Swift::Int sub_100242CC4()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = sub_100574498();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100009DCC(&qword_1006E9C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = a1;
  v5 = sub_1000D1614(inited);
  swift_setDeallocating();
  return v5;
}

uint64_t Library.Context.musicLibrary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context() + 60));

  return v1;
}

uint64_t Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context() + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context();
}

uint64_t Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context() + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_100571898();
  *a1 = sub_100571888();
  v2 = type metadata accessor for Library.Context();
  v3 = v2[5];
  v4 = sub_100571B78();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = sub_100571CF8();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = sub_10056DB18();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = sub_100571BA8();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[9];
  v12 = sub_1005722D8();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v2[10];
  v14 = sub_10056DB08();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v2[11];
  v16 = sub_10056DB68();
  result = (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 2;
  *(a1 + v2[14]) = 3;
  v18 = (a1 + v2[15]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v2[16]) = _swiftEmptyArrayStorage;
  *(a1 + v2[17]) = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v37 = sub_10056DB68();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10056DB08();
  v35 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1005722D8();
  v38 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100571BA8();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10056DB18();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100571CF8();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100571B78();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100573C28();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  v51 = a3;
  sub_10024776C(v53, a3);
  v53 = v17;
  v23 = *(v17 + 16);
  v23(v22, v52, v16);
  v52 = *(a2 - 8);
  if ((*(v52 + 48))(v22, 1, a2) != 1)
  {
    v33 = v16;
    v23(v20, v22, v16);
    v24 = a2;
    v25 = v20;
    if (swift_dynamicCast())
    {
      v26 = *(type metadata accessor for Library.Context() + 20);
      v27 = v51;
      sub_10001036C(v51 + v26, &qword_1006E6D78);
      (*(v13 + 32))(v27 + v26, v15, v12);
      (*(v13 + 56))(v27 + v26, 0, 1, v12);
LABEL_17:
      (*(v52 + 8))(v25, v24);
      v16 = v33;
      return (*(v53 + 8))(v22, v16);
    }

    v28 = v50;
    if (swift_dynamicCast())
    {
      v29 = *(type metadata accessor for Library.Context() + 24);
      v30 = v51;
      sub_10001036C(v51 + v29, &qword_1006E7650);
      v31 = v47;
    }

    else
    {
      v11 = v48;
      v28 = v49;
      if (swift_dynamicCast())
      {
        v29 = *(type metadata accessor for Library.Context() + 28);
        v30 = v51;
        sub_10001036C(v51 + v29, &qword_1006E9C98);
        v31 = v44;
      }

      else
      {
        v11 = v45;
        v28 = v46;
        if (swift_dynamicCast())
        {
          v29 = *(type metadata accessor for Library.Context() + 32);
          v30 = v51;
          sub_10001036C(v51 + v29, &qword_1006E9CA0);
          v31 = v41;
        }

        else
        {
          v11 = v42;
          v28 = v43;
          if (swift_dynamicCast())
          {
            v29 = *(type metadata accessor for Library.Context() + 36);
            v30 = v51;
            sub_10001036C(v51 + v29, &qword_1006E8BE0);
            v31 = v38;
          }

          else
          {
            v11 = v39;
            v28 = v40;
            if (swift_dynamicCast())
            {
              v29 = *(type metadata accessor for Library.Context() + 40);
              v30 = v51;
              sub_10001036C(v51 + v29, &qword_1006E77A8);
              v31 = v35;
            }

            else
            {
              v11 = v36;
              v28 = v37;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v29 = *(type metadata accessor for Library.Context() + 44);
              v30 = v51;
              sub_10001036C(v51 + v29, &qword_1006E7778);
              v31 = v34;
            }
          }
        }
      }
    }

    (*(v31 + 32))(v30 + v29, v11, v28);
    (*(v31 + 56))(v30 + v29, 0, 1, v28);
    goto LABEL_17;
  }

  return (*(v53 + 8))(v22, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  sub_10024776C(v1, a1);
  result = type metadata accessor for Library.Context();
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_10024776C(v2, a2);
  result = type metadata accessor for Library.Context();
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_10024776C(v2, a2);
  result = type metadata accessor for Library.Context();
  *(a2 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.with(filterText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10024776C(v3, a3);
  v7 = (a3 + *(type metadata accessor for Library.Context() + 60));

  *v7 = a1;
  v7[1] = a2;
  return result;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  sub_100574678();
  sub_100574688(0);
  sub_100574698(a1 & 1);
  return sub_1005746C8();
}

Swift::Int sub_100244528()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(0);
  sub_100574698(v1);
  return sub_1005746C8();
}

void sub_10024457C()
{
  v1 = *v0;
  sub_100574688(0);
  sub_100574698(v1);
}

Swift::Int sub_1002445BC()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(0);
  sub_100574698(v1);
  return sub_1005746C8();
}

void Library.Context.hash(into:)()
{
  v1 = v0;
  v2 = sub_100572128();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v82 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10056DB68();
  v97 = *(v102 - 8);
  __chkstk_darwin(v102);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006E7778);
  __chkstk_darwin(v6 - 8);
  v98 = &v75 - v7;
  v95 = sub_10056DB08();
  v101 = *(v95 - 8);
  __chkstk_darwin(v95);
  v80 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E77A8);
  __chkstk_darwin(v9 - 8);
  v96 = &v75 - v10;
  v91 = sub_1005722D8();
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009DCC(&qword_1006E8BE0);
  __chkstk_darwin(v12 - 8);
  v93 = &v75 - v13;
  v88 = sub_100571BA8();
  v92 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009DCC(&qword_1006E9CA0);
  __chkstk_darwin(v15 - 8);
  v87 = &v75 - v16;
  v17 = sub_10056DB18();
  v89 = *(v17 - 8);
  v90 = v17;
  __chkstk_darwin(v17);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009DCC(&qword_1006E9C98);
  __chkstk_darwin(v19 - 8);
  v86 = &v75 - v20;
  v21 = sub_100571CF8();
  v84 = *(v21 - 8);
  v85 = v21;
  __chkstk_darwin(v21);
  v76 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100009DCC(&qword_1006E7650);
  __chkstk_darwin(v23 - 8);
  v83 = &v75 - v24;
  v25 = sub_100571B78();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100009DCC(&qword_1006E6D78);
  __chkstk_darwin(v29 - 8);
  v31 = &v75 - v30;
  v103 = *v0;
  sub_100571898();
  sub_1002484CC(&qword_1006E9CA8, &type metadata accessor for MusicLibrary);
  sub_100572748();
  v32 = type metadata accessor for Library.Context();
  sub_10000CC8C(v0 + v32[5], v31, &qword_1006E6D78);
  if ((*(v26 + 48))(v31, 1, v25) == 1)
  {
    sub_100574698(0);
  }

  else
  {
    (*(v26 + 32))(v28, v31, v25);
    sub_100574698(1u);
    sub_1002484CC(&qword_1006E9CB0, &type metadata accessor for Album);
    sub_100572748();
    (*(v26 + 8))(v28, v25);
  }

  v33 = v83;
  sub_10000CC8C(v0 + v32[6], v83, &qword_1006E7650);
  v35 = v84;
  v34 = v85;
  v36 = (*(v84 + 48))(v33, 1, v85);
  v38 = v86;
  v37 = v87;
  if (v36 == 1)
  {
    sub_100574698(0);
  }

  else
  {
    v39 = v33;
    v40 = v76;
    (*(v35 + 32))(v76, v39, v34);
    sub_100574698(1u);
    sub_1002484CC(&qword_1006E9CB8, &type metadata accessor for Artist);
    sub_100572748();
    (*(v35 + 8))(v40, v34);
  }

  v41 = v93;
  v42 = v90;
  sub_10000CC8C(v0 + v32[7], v38, &qword_1006E9C98);
  v43 = v89;
  if ((*(v89 + 48))(v38, 1, v42) == 1)
  {
    sub_100574698(0);
  }

  else
  {
    v44 = v77;
    (*(v43 + 32))(v77, v38, v42);
    sub_100574698(1u);
    sub_1002484CC(&qword_1006E9CC0, &type metadata accessor for Composer);
    sub_100572748();
    (*(v43 + 8))(v44, v42);
  }

  v45 = v88;
  sub_10000CC8C(v1 + v32[8], v37, &qword_1006E9CA0);
  v46 = v92;
  if ((*(v92 + 48))(v37, 1, v45) == 1)
  {
    sub_100574698(0);
  }

  else
  {
    v47 = v78;
    (*(v46 + 32))(v78, v37, v45);
    sub_100574698(1u);
    sub_1002484CC(&qword_1006E9CC8, &type metadata accessor for Genre);
    sub_100572748();
    (*(v46 + 8))(v47, v45);
  }

  v48 = v95;
  v49 = v97;
  sub_10000CC8C(v1 + v32[9], v41, &qword_1006E8BE0);
  v50 = v94;
  v51 = v91;
  if ((*(v94 + 48))(v41, 1, v91) == 1)
  {
    sub_100574698(0);
  }

  else
  {
    v52 = v79;
    (*(v50 + 32))(v79, v41, v51);
    sub_100574698(1u);
    sub_1002484CC(&qword_1006E9CD0, &type metadata accessor for Playlist);
    sub_100572748();
    (*(v50 + 8))(v52, v51);
  }

  v53 = v96;
  sub_10000CC8C(v1 + v32[10], v96, &qword_1006E77A8);
  if ((*(v101 + 6))(v53, 1, v48) == 1)
  {
    sub_100574698(0);
  }

  else
  {
    v54 = v101;
    v55 = v80;
    (*(v101 + 4))(v80, v53, v48);
    sub_100574698(1u);
    sub_1002484CC(&qword_1006E9CD8, &type metadata accessor for TVShow);
    sub_100572748();
    (*(v54 + 1))(v55, v48);
  }

  v56 = v98;
  sub_10000CC8C(v1 + v32[11], v98, &qword_1006E7778);
  if ((*(v49 + 48))(v56, 1, v102) == 1)
  {
    sub_100574698(0);
  }

  else
  {
    v57 = v81;
    v58 = v102;
    (*(v49 + 32))(v81, v56, v102);
    sub_100574698(1u);
    sub_1002484CC(&qword_1006E9CE0, &type metadata accessor for TVSeason);
    sub_100572748();
    (*(v49 + 8))(v57, v58);
  }

  v59 = v99;
  sub_100574698(*(v1 + v32[12]));
  v60 = *(v1 + v32[13]);
  if (v60 == 2)
  {
    v61 = 0;
  }

  else
  {
    sub_100574698(1u);
    sub_100574688(0);
    v61 = v60 & 1;
  }

  sub_100574698(v61);
  v62 = *(v1 + v32[14]);
  if (v62 == 3)
  {
    sub_100574698(0);
    v63 = v82;
  }

  else
  {
    sub_100574698(1u);
    v63 = v82;
    sub_1005729F8();
  }

  if (*(v1 + v32[15] + 8))
  {
    sub_100574698(1u);
    sub_1005729F8();
  }

  else
  {
    sub_100574698(0);
  }

  v101 = v32;
  v102 = v1;
  v64 = *(v1 + v32[16]);
  sub_100574688(*(v64 + 16));
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v63;
    v67 = v100 + 16;
    v68 = *(v100 + 16);
    v69 = v64 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v70 = *(v100 + 72);
    v71 = (v100 + 8);
    do
    {
      v72 = v67;
      v68(v66, v69, v59);
      sub_1002484CC(&qword_1006E9CE8, &type metadata accessor for Playlist.Variant);
      sub_100572748();
      (*v71)(v66, v59);
      v67 = v72;
      v69 += v70;
      --v65;
    }

    while (v65);
  }

  v73 = *(v102 + v101[17]);
  if (v73 == 2)
  {
    v74 = 0;
  }

  else
  {
    sub_100574698(1u);
    v74 = v73 & 1;
  }

  sub_100574698(v74);
}

Swift::Int Library.Context.hashValue.getter()
{
  sub_100574678();
  Library.Context.hash(into:)();
  return sub_1005746C8();
}

Swift::Int sub_100245604()
{
  sub_100574678();
  Library.Context.hash(into:)();
  return sub_1005746C8();
}

uint64_t sub_100245640()
{
  v0 = type metadata accessor for Library.Context();
  sub_10000C910(v0, qword_1006E9C78);
  v1 = sub_10000C49C(v0, qword_1006E9C78);
  sub_100571898();
  *v1 = sub_100571888();
  v2 = v0[5];
  v3 = sub_100571B78();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = sub_100571CF8();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = sub_10056DB18();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = sub_100571BA8();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = sub_1005722D8();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = sub_10056DB08();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = sub_10056DB68();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

uint64_t sub_1002458C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E4EF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context();
  v3 = sub_10000C49C(v2, qword_1006E9C78);

  return sub_10024776C(v3, a1);
}

uint64_t sub_10024593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1002484CC(&qword_1006E9D08, type metadata accessor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  sub_1002477D0();

  return sub_10056F1A8();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  __chkstk_darwin(v2 - 8);
  sub_10024776C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002477D0();
  sub_10056F1B8();
  return sub_100247824(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1002477D0();
  sub_10056F1A8();
  return sub_100245BC4;
}

void sub_100245BC4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_10024776C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_10024776C(v3[2], v3[1]);
    sub_10056F1B8();
    sub_100247824(v6);
  }

  else
  {
    sub_10056F1B8();
  }

  sub_100247824(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t View.libraryContext(_:)()
{
  swift_getKeyPath();
  sub_100570028();
}

uint64_t sub_100245D08(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10024776C(a1, &v9 - v6);
  sub_10024776C(v7, v5);
  sub_1002477D0();
  sub_10056F1B8();
  return sub_100247824(v7);
}

uint64_t MusicLibraryRequest.apply(_:)(uint64_t a1, uint64_t a2)
{

  sub_100570EC8();
  v4 = *(a1 + *(type metadata accessor for Library.Context() + 48));

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter(v4, a2);
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v152 = sub_10056DB68();
  v153 = *(v152 - 8);
  __chkstk_darwin(v152);
  v147 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006E7778);
  __chkstk_darwin(v5 - 8);
  v148 = &v144 - v6;
  v150 = sub_100009DCC(&qword_1006E9E38);
  __chkstk_darwin(v150);
  v151 = &v144 - v7;
  v158 = sub_10056DB08();
  v159 = *(v158 - 8);
  __chkstk_darwin(v158);
  v149 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E77A8);
  __chkstk_darwin(v9 - 8);
  v156 = &v144 - v10;
  v155 = sub_100009DCC(&qword_1006E9E40);
  __chkstk_darwin(v155);
  v157 = &v144 - v11;
  v12 = sub_1005722D8();
  v13 = *(v12 - 8);
  v164 = v12;
  v165 = v13;
  __chkstk_darwin(v12);
  v154 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009DCC(&qword_1006E8BE0);
  __chkstk_darwin(v15 - 8);
  v162 = &v144 - v16;
  v161 = sub_100009DCC(&qword_1006E9E48);
  __chkstk_darwin(v161);
  v163 = &v144 - v17;
  v169 = sub_100571BA8();
  v171 = *(v169 - 8);
  __chkstk_darwin(v169);
  v160 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009DCC(&qword_1006E9CA0);
  __chkstk_darwin(v19 - 8);
  v177 = &v144 - v20;
  v167 = sub_100009DCC(&qword_1006E9E50);
  __chkstk_darwin(v167);
  v168 = &v144 - v21;
  v22 = sub_10056DB18();
  v174 = *(v22 - 8);
  v175 = v22;
  __chkstk_darwin(v22);
  v166 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100009DCC(&qword_1006E9C98);
  __chkstk_darwin(v24 - 8);
  v170 = &v144 - v25;
  v173 = sub_100009DCC(&qword_1006E9E58);
  __chkstk_darwin(v173);
  v180 = &v144 - v26;
  v179 = sub_100571CF8();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v172 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100009DCC(&qword_1006E7650);
  __chkstk_darwin(v28 - 8);
  v176 = &v144 - v29;
  v30 = sub_100009DCC(&qword_1006E9E60);
  __chkstk_darwin(v30);
  v178 = &v144 - v31;
  v32 = sub_100571B78();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100009DCC(&qword_1006E6D78);
  __chkstk_darwin(v36 - 8);
  v38 = &v144 - v37;
  v39 = sub_100009DCC(&qword_1006E9E68);
  __chkstk_darwin(v39);
  v41 = &v144 - v40;
  sub_100571898();
  if ((sub_1005716D8() & 1) == 0)
  {
    return 0;
  }

  v42 = type metadata accessor for Library.Context();
  v182 = a2;
  v43 = a1;
  v145 = v42;
  v44 = *(v42 + 20);
  v45 = *(v39 + 48);
  v146 = v43;
  sub_10000CC8C(v43 + v44, v41, &qword_1006E6D78);
  sub_10000CC8C(v182 + v44, &v41[v45], &qword_1006E6D78);
  v46 = *(v33 + 48);
  if (v46(v41, 1, v32) == 1)
  {
    if (v46(&v41[v45], 1, v32) == 1)
    {
      sub_10001036C(v41, &qword_1006E6D78);
      goto LABEL_9;
    }

LABEL_7:
    v47 = &qword_1006E9E68;
    v48 = v41;
LABEL_44:
    sub_10001036C(v48, v47);
    return 0;
  }

  sub_10000CC8C(v41, v38, &qword_1006E6D78);
  if (v46(&v41[v45], 1, v32) == 1)
  {
    (*(v33 + 8))(v38, v32);
    goto LABEL_7;
  }

  (*(v33 + 32))(v35, &v41[v45], v32);
  sub_1002484CC(&qword_1006E9E98, &type metadata accessor for Album);
  v49 = sub_1005727E8();
  v50 = *(v33 + 8);
  v50(v35, v32);
  v50(v38, v32);
  sub_10001036C(v41, &qword_1006E6D78);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v51 = v145;
  v52 = v145[6];
  v53 = *(v30 + 48);
  v54 = v178;
  sub_10000CC8C(v146 + v52, v178, &qword_1006E7650);
  v55 = v182 + v52;
  v56 = v182;
  sub_10000CC8C(v55, v54 + v53, &qword_1006E7650);
  v57 = *(v181 + 48);
  v58 = v179;
  if (v57(v54, 1, v179) == 1)
  {
    v59 = v57(v54 + v53, 1, v58);
    v60 = v177;
    v61 = v180;
    if (v59 == 1)
    {
      sub_10001036C(v54, &qword_1006E7650);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v62 = v176;
  sub_10000CC8C(v54, v176, &qword_1006E7650);
  v63 = v57(v54 + v53, 1, v58);
  v61 = v180;
  if (v63 == 1)
  {
    (*(v181 + 8))(v62, v58);
LABEL_14:
    v47 = &qword_1006E9E60;
    v48 = v54;
    goto LABEL_44;
  }

  v64 = v181;
  v65 = v54 + v53;
  v66 = v51;
  v67 = v54;
  v68 = v172;
  (*(v181 + 32))(v172, v65, v58);
  sub_1002484CC(&qword_1006E9E90, &type metadata accessor for Artist);
  v69 = sub_1005727E8();
  v70 = *(v64 + 8);
  v70(v68, v58);
  v70(v62, v58);
  v71 = v67;
  v51 = v66;
  v60 = v177;
  sub_10001036C(v71, &qword_1006E7650);
  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v72 = v51[7];
  v73 = v56;
  v74 = *(v173 + 48);
  sub_10000CC8C(v146 + v72, v61, &qword_1006E9C98);
  sub_10000CC8C(v73 + v72, v61 + v74, &qword_1006E9C98);
  v76 = v174;
  v75 = v175;
  v77 = *(v174 + 48);
  if (v77(v61, 1, v175) == 1)
  {
    if (v77(v61 + v74, 1, v75) == 1)
    {
      sub_10001036C(v61, &qword_1006E9C98);
      goto LABEL_23;
    }

LABEL_21:
    v47 = &qword_1006E9E58;
LABEL_43:
    v48 = v61;
    goto LABEL_44;
  }

  v78 = v170;
  sub_10000CC8C(v61, v170, &qword_1006E9C98);
  if (v77(v61 + v74, 1, v75) == 1)
  {
    (*(v76 + 8))(v78, v75);
    goto LABEL_21;
  }

  v79 = v61 + v74;
  v80 = v166;
  (*(v76 + 32))(v166, v79, v75);
  sub_1002484CC(&qword_1006E9E88, &type metadata accessor for Composer);
  v81 = sub_1005727E8();
  v82 = *(v76 + 8);
  v82(v80, v75);
  v82(v78, v75);
  sub_10001036C(v61, &qword_1006E9C98);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v83 = v51[8];
  v61 = v168;
  v84 = *(v167 + 48);
  sub_10000CC8C(v146 + v83, v168, &qword_1006E9CA0);
  sub_10000CC8C(v182 + v83, v61 + v84, &qword_1006E9CA0);
  v85 = *(v171 + 48);
  v86 = v169;
  if (v85(v61, 1, v169) == 1)
  {
    if (v85(v61 + v84, 1, v86) == 1)
    {
      sub_10001036C(v61, &qword_1006E9CA0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_10000CC8C(v61, v60, &qword_1006E9CA0);
  if (v85(v61 + v84, 1, v86) == 1)
  {
    (*(v171 + 8))(v60, v86);
LABEL_28:
    v47 = &qword_1006E9E50;
    goto LABEL_43;
  }

  v87 = v60;
  v88 = v171;
  v89 = v61 + v84;
  v90 = v160;
  (*(v171 + 32))(v160, v89, v86);
  sub_1002484CC(&qword_1006E9E80, &type metadata accessor for Genre);
  v91 = sub_1005727E8();
  v92 = *(v88 + 8);
  v92(v90, v86);
  v92(v87, v86);
  sub_10001036C(v61, &qword_1006E9CA0);
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v93 = v51[9];
  v94 = *(v161 + 48);
  v61 = v163;
  sub_10000CC8C(v146 + v93, v163, &qword_1006E8BE0);
  sub_10000CC8C(v182 + v93, v61 + v94, &qword_1006E8BE0);
  v95 = v164;
  v96 = *(v165 + 48);
  if (v96(v61, 1, v164) == 1)
  {
    if (v96(v61 + v94, 1, v95) == 1)
    {
      sub_10001036C(v61, &qword_1006E8BE0);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_10000CC8C(v61, v162, &qword_1006E8BE0);
  if (v96(v61 + v94, 1, v95) == 1)
  {
    (*(v165 + 8))(v162, v95);
LABEL_35:
    v47 = &qword_1006E9E48;
    goto LABEL_43;
  }

  v97 = v165;
  v98 = v61 + v94;
  v99 = v154;
  (*(v165 + 32))(v154, v98, v95);
  sub_1002484CC(&qword_1006E9290, &type metadata accessor for Playlist);
  v100 = v162;
  v101 = sub_1005727E8();
  v102 = *(v97 + 8);
  v102(v99, v95);
  v102(v100, v95);
  sub_10001036C(v61, &qword_1006E8BE0);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v103 = v51[10];
  v104 = *(v155 + 48);
  v61 = v157;
  sub_10000CC8C(v146 + v103, v157, &qword_1006E77A8);
  sub_10000CC8C(v182 + v103, v61 + v104, &qword_1006E77A8);
  v105 = *(v159 + 48);
  v106 = v158;
  if (v105(v61, 1, v158) == 1)
  {
    if (v105(v61 + v104, 1, v106) == 1)
    {
      sub_10001036C(v61, &qword_1006E77A8);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_10000CC8C(v61, v156, &qword_1006E77A8);
  if (v105(v61 + v104, 1, v106) == 1)
  {
    (*(v159 + 8))(v156, v106);
LABEL_42:
    v47 = &qword_1006E9E40;
    goto LABEL_43;
  }

  v108 = v159;
  v109 = v61 + v104;
  v110 = v149;
  (*(v159 + 32))(v149, v109, v106);
  sub_1002484CC(&qword_1006E9E78, &type metadata accessor for TVShow);
  v111 = v156;
  v112 = sub_1005727E8();
  v113 = *(v108 + 8);
  v113(v110, v106);
  v113(v111, v106);
  sub_10001036C(v61, &qword_1006E77A8);
  if ((v112 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v114 = v51[11];
  v115 = *(v150 + 48);
  v116 = v151;
  sub_10000CC8C(v146 + v114, v151, &qword_1006E7778);
  sub_10000CC8C(v182 + v114, v116 + v115, &qword_1006E7778);
  v117 = *(v153 + 48);
  v118 = v152;
  if (v117(v116, 1, v152) == 1)
  {
    if (v117(v116 + v115, 1, v118) == 1)
    {
      sub_10001036C(v116, &qword_1006E7778);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v119 = v148;
  sub_10000CC8C(v116, v148, &qword_1006E7778);
  if (v117(v116 + v115, 1, v118) == 1)
  {
    (*(v153 + 8))(v119, v118);
LABEL_53:
    v47 = &qword_1006E9E38;
    v48 = v116;
    goto LABEL_44;
  }

  v120 = v153;
  v121 = v116 + v115;
  v122 = v147;
  (*(v153 + 32))(v147, v121, v118);
  sub_1002484CC(&qword_1006E9E70, &type metadata accessor for TVSeason);
  v123 = sub_1005727E8();
  v124 = *(v120 + 8);
  v124(v122, v118);
  v124(v119, v118);
  sub_10001036C(v116, &qword_1006E7778);
  if ((v123 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  if (*(v146 + v51[12]) != *(v182 + v51[12]))
  {
    return 0;
  }

  v125 = v51[13];
  v126 = *(v146 + v125);
  v127 = *(v182 + v125);
  if (v126 == 2)
  {
    if (v127 != 2)
    {
      return 0;
    }

    goto LABEL_61;
  }

  result = 0;
  if (v127 != 2 && ((v127 ^ v126) & 1) == 0)
  {
LABEL_61:
    v128 = v51[14];
    v129 = *(v146 + v128);
    v130 = *(v182 + v128);
    if (v129 == 3)
    {
      if (v130 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v130 == 3)
      {
        return 0;
      }

      v131 = 0xE900000000000073;
      v132 = 7105633;
      if (v129)
      {
        if (v129 == 1)
        {
          v133 = 0x657469726F766166;
        }

        else
        {
          v133 = 0x64616F6C6E776F64;
        }

        v134 = 0xE900000000000073;
      }

      else
      {
        v134 = 0xE300000000000000;
        v133 = 7105633;
      }

      if (v130)
      {
        if (v130 == 1)
        {
          v132 = 0x657469726F766166;
        }

        else
        {
          v132 = 0x64616F6C6E776F64;
        }
      }

      else
      {
        v131 = 0xE300000000000000;
      }

      if (v133 == v132 && v134 == v131)
      {

        v51 = v145;
      }

      else
      {
        v135 = sub_100574498();

        v51 = v145;
        if ((v135 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v136 = v51[15];
    v137 = (v146 + v136);
    v138 = *(v146 + v136 + 8);
    v139 = (v182 + v136);
    v140 = v139[1];
    if (v138)
    {
      if (v140 && (*v137 == *v139 && v138 == v140 || (sub_100574498() & 1) != 0))
      {
LABEL_87:
        if (sub_10019F82C(*(v146 + v145[16]), *(v182 + v145[16])))
        {
          v141 = v145[17];
          v142 = *(v146 + v141);
          v143 = *(v182 + v141);
          if (v142 == 2)
          {
            if (v143 == 2)
            {
              return 1;
            }
          }

          else if (v143 != 2 && ((v143 ^ v142) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v140)
    {
      goto LABEL_87;
    }

    return 0;
  }

  return result;
}

uint64_t _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100684898;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for Library.Context()
{
  result = qword_1006E9D68;
  if (!qword_1006E9D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10024776C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002477D0()
{
  result = qword_1006E9CF0;
  if (!qword_1006E9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9CF0);
  }

  return result;
}

uint64_t sub_100247824(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002478C8()
{
  result = qword_1006E9CF8;
  if (!qword_1006E9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9CF8);
  }

  return result;
}

unint64_t sub_100247920()
{
  result = qword_1006E9D00;
  if (!qword_1006E9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9D00);
  }

  return result;
}

uint64_t sub_1002479F0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009DCC(&qword_1006E6D78);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = sub_100009DCC(&qword_1006E7650);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_100009DCC(&qword_1006E9C98);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = sub_100009DCC(&qword_1006E9CA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v15 = sub_100009DCC(&qword_1006E8BE0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v16 = sub_100009DCC(&qword_1006E77A8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v18 = sub_100009DCC(&qword_1006E7778);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[11]];

  return v19(v20, a2, v18);
}

char *sub_100247CE4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100009DCC(&qword_1006E6D78);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100009DCC(&qword_1006E7650);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_100009DCC(&qword_1006E9C98);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = sub_100009DCC(&qword_1006E9CA0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v15 = sub_100009DCC(&qword_1006E8BE0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v16 = sub_100009DCC(&qword_1006E77A8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v18 = sub_100009DCC(&qword_1006E7778);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[11]];

  return v19(v20, a2, a2, v18);
}

void sub_100247FC4()
{
  sub_100571898();
  if (v0 <= 0x3F)
  {
    sub_100248318(319, &qword_1006E9D78, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100248318(319, &qword_1006E9D80, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100248318(319, &qword_1006E9D88, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100248318(319, &qword_1006E9D90, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100248318(319, &qword_1006E9D98, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100248318(319, &qword_1006E9DA0, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100248318(319, &qword_1006E9DA8, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_100016918(319, &qword_1006E9DB0);
                  if (v8 <= 0x3F)
                  {
                    sub_100016918(319, &qword_1006E9DB8);
                    if (v9 <= 0x3F)
                    {
                      sub_100016918(319, &qword_1006ED410);
                      if (v10 <= 0x3F)
                      {
                        sub_100248318(319, &unk_1006E9DC0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v11 <= 0x3F)
                        {
                          sub_100016918(319, &unk_1006E7EC0);
                          if (v12 <= 0x3F)
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
}

void sub_100248318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10024838C()
{
  sub_100010324(&qword_1006E9E20);
  sub_10056ECA8();
  sub_100248404();
  return swift_getWitnessTable();
}

unint64_t sub_100248404()
{
  result = qword_1006E9E28;
  if (!qword_1006E9E28)
  {
    sub_100010324(&qword_1006E9E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9E28);
  }

  return result;
}

unint64_t sub_100248478()
{
  result = qword_1006E9E30;
  if (!qword_1006E9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9E30);
  }

  return result;
}

uint64_t sub_1002484CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100248518(uint64_t a1, char **a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v12 << 6)));
      result = sub_10024E1AC(&v13, a2);
      if (v2)
      {
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_100248604(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = ActionType.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == ActionType.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_100574498();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1002486C8(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000029;
    v9 = "orites";
    switch(*v4)
    {
      case 1:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v8 = 0xD000000000000023;
        v9 = "LibraryView.Playlists";
        break;
      case 3:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Artists";
        break;
      case 4:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Albums";
        break;
      case 5:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Songs";
        break;
      case 6:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.MadeForYou";
        break;
      case 7:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.MusicVideos";
        break;
      case 8:
        v8 = 0xD000000000000028;
        v9 = "LibraryView.Genres";
        break;
      case 9:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Compilations";
        break;
      case 0xA:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Composers";
        break;
      case 0xB:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Shows";
        break;
      case 0xC:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = 0xD000000000000029;
    v12 = "orites";
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v11 = 0xD000000000000023;
        v12 = "LibraryView.Playlists";
        break;
      case 3:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Artists";
        break;
      case 4:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Albums";
        break;
      case 5:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Songs";
        break;
      case 6:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.MadeForYou";
        break;
      case 7:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.MusicVideos";
        break;
      case 8:
        v11 = 0xD000000000000028;
        v12 = "LibraryView.Genres";
        break;
      case 9:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Compilations";
        break;
      case 10:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Composers";
        break;
      case 11:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Shows";
        break;
      case 12:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
    {

      return v6 != 0;
    }

    v5 = sub_100574498();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

Swift::Int sub_100248A28(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_100574678();
    sub_100574688(v13);
    result = sub_1005746C8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100248B98(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v24 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v28 = a2 + 56;
    v25 = v8;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v27 = (v7 - 1) & v7;
LABEL_13:
        v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
        sub_100574678();
        Library.Menu.Identifier.rawValue.getter(v12);
        sub_1005729F8();

        v13 = sub_1005746C8();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = 0xD000000000000029;
          v18 = "orites";
          switch(*(*(a2 + 48) + v15))
          {
            case 1:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v17 = 0xD000000000000023;
              v18 = "LibraryView.Playlists";
              break;
            case 3:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.Artists";
              break;
            case 4:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Albums";
              break;
            case 5:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Songs";
              break;
            case 6:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.MadeForYou";
              break;
            case 7:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.MusicVideos";
              break;
            case 8:
              v17 = 0xD000000000000028;
              v18 = "LibraryView.Genres";
              break;
            case 9:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.Compilations";
              break;
            case 0xA:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Composers";
              break;
            case 0xB:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Shows";
              break;
            case 0xC:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v19 = v18 | 0x8000000000000000;
          v20 = 0xD000000000000029;
          v21 = "orites";
          switch(v12)
          {
            case 1:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v20 = 0xD000000000000023;
              v21 = "LibraryView.Playlists";
              break;
            case 3:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.Artists";
              break;
            case 4:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Albums";
              break;
            case 5:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Songs";
              break;
            case 6:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.MadeForYou";
              break;
            case 7:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.MusicVideos";
              break;
            case 8:
              v20 = 0xD000000000000028;
              v21 = "LibraryView.Genres";
              break;
            case 9:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.Compilations";
              break;
            case 10:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Composers";
              break;
            case 11:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Shows";
              break;
            case 12:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
          {
            break;
          }

          v22 = sub_100574498();

          if (v22)
          {
            goto LABEL_47;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            return 0;
          }
        }

LABEL_47:
        v8 = v25;
        v3 = a1;
        v7 = v27;
      }

      while (v27);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        JUMPOUT(0x100248FDCLL);
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v24 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }
  }

  return 0;
}

uint64_t sub_100249044(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_100574678();
    ApplicationCapabilities.Service.rawValue.getter(v13);
    sub_1005729F8();

    v14 = sub_1005746C8();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 4)
      {
        v21 = 0x6C6169636F73;
        if (v18 != 3)
        {
          v21 = 0x6F69646172;
        }

        v22 = 0xE600000000000000;
        if (v18 != 3)
        {
          v22 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v21 = 0xD000000000000013;
          v22 = 0x80000001005ABE30;
        }

        v23 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v16))
        {
          v23 = 0x636973756DLL;
        }

        v24 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v16))
        {
          v24 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v19 = v23;
        }

        else
        {
          v19 = v21;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v20 = v24;
        }

        else
        {
          v20 = v22;
        }
      }

      else if (*(*(a2 + 48) + v16) > 7u)
      {
        if (v18 == 8)
        {
          v19 = 0xD000000000000013;
          v20 = 0x80000001005ABE70;
        }

        else if (v18 == 9)
        {
          v19 = 0xD000000000000011;
          v20 = 0x80000001005ABE90;
        }

        else
        {
          v19 = 0x6C62616E45696C6DLL;
          v20 = 0xEA00000000006465;
        }
      }

      else if (v18 == 5)
      {
        v20 = 0xE600000000000000;
        v19 = 0x73656E757469;
      }

      else
      {
        if (v18 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        else
        {
          v19 = 0x746963696C707865;
        }

        if (v18 == 6)
        {
          v20 = 0xED00007974697669;
        }

        else
        {
          v20 = 0xEF746E65746E6F43;
        }
      }

      if (v13 > 4)
      {
        v25 = 0xD000000000000011;
        if (v13 != 9)
        {
          v25 = 0x6C62616E45696C6DLL;
        }

        v26 = 0xEA00000000006465;
        if (v13 == 9)
        {
          v26 = 0x80000001005ABE90;
        }

        if (v13 == 8)
        {
          v25 = 0xD000000000000013;
          v26 = 0x80000001005ABE70;
        }

        v27 = 0x746963696C707865;
        if (v13 == 6)
        {
          v27 = 0x74634170756F7267;
        }

        v28 = 0xEF746E65746E6F43;
        if (v13 == 6)
        {
          v28 = 0xED00007974697669;
        }

        if (v13 == 5)
        {
          v27 = 0x73656E757469;
          v28 = 0xE600000000000000;
        }

        if (v13 <= 7)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v13 <= 7)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 == v29)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (v13 <= 1)
      {
        break;
      }

      v31 = 0x6C6169636F73;
      if (v13 != 3)
      {
        v31 = 0x6F69646172;
      }

      v32 = 0xE500000000000000;
      if (v13 == 3)
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v33 = 0xD000000000000013;
      }

      else
      {
        v33 = v31;
      }

      if (v13 == 2)
      {
        v30 = 0x80000001005ABE30;
      }

      else
      {
        v30 = v32;
      }

      if (v19 == v33)
      {
        goto LABEL_83;
      }

LABEL_84:
      v34 = sub_100574498();

      if (v34)
      {
        goto LABEL_89;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v30 = 0xE500000000000000;
      if (v19 == 0x636973756DLL)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v30 = 0xEB00000000736F65;
    if (v19 != 0x646956636973756DLL)
    {
      goto LABEL_84;
    }

LABEL_83:
    if (v20 != v30)
    {
      goto LABEL_84;
    }

LABEL_89:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Library.Menu.setSelectionState(_:for:)(char a1, Swift::Int a2)
{
  if (a1)
  {
    sub_1001DFF84(a2);
  }

  else
  {
    sub_100250708(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_1001E6668(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    sub_100250E4C();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    *(v15 + 32) = v4;

    return swift_willThrow();
  }

  v11 = v6;
  v10 = v2[4];
  result = sub_1001E6668(v4, v10);
  if (v13)
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  v17 = *(v5 + a2 + 32);
  v18 = sub_1001E6668(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = sub_1000E9FB4(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  sub_1000F2268(a2, a2, result);
  result = sub_1000E9FB4(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return sub_1000F2268(v20, v20, result);
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Library.Menu.persist()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  NSUserDefaults.libraryMenuRevision.setter(v1, v2, v3);
}

uint64_t NSUserDefaults.libraryMenuRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10056C2C8();
  swift_allocObject();
  sub_10056C2B8();
  v9[2] = a3;
  sub_100250EA0();
  v4 = sub_10056C2A8();
  v6 = v5;

  v9[3] = &type metadata for Data;
  v9[0] = v4;
  v9[1] = v6;
  v8[0] = 0x4D7972617262694CLL;
  v8[1] = 0xEB00000000756E65;
  sub_1000F54C8(v4, v6);
  sub_1000C5FB8();
  NSUserDefaults.subscript.setter(v9, v8, &type metadata for String);
  return sub_10008246C(v4, v6);
}

uint64_t Library.Menu.revision.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Library.Menu.Request.label.getter()
{
  swift_beginAccess();
  v0 = *static Library.Menu.Request.label;

  return v0;
}

uint64_t static Library.Menu.Request.label.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static Library.Menu.Request.label = a1;
  *&static Library.Menu.Request.label[8] = a2;
}

id Library.Menu.Request.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = &_swiftEmptySetSingleton;
    *(a1 + 40) = 257;
    *(a1 + 42) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static Library.Menu.Request.with(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *&v7 = result;
    BYTE8(v7) = 0;
    v8 = 0uLL;
    *&v9 = &_swiftEmptySetSingleton;
    WORD4(v9) = 257;
    BYTE10(v9) = 0;
    v10 = 0u;
    v11 = 0u;
    result = a1(&v7);
    v5 = v10;
    a2[2] = v9;
    a2[3] = v5;
    a2[4] = v11;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Library.Menu.Request.MediaLibrarySource.init(_:)()
{
  ;
}

{
  ;
}

uint64_t static Library.Menu.Request.MediaLibrarySource.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_1000D3B98(0, &qword_1006E93C0);
      v4 = sub_100573A58();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_100571898();
  v4 = sub_1005716D8();
  return v4 & 1;
}

uint64_t sub_100249D94(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      sub_1000D3B98(0, &qword_1006E93C0);
      v2 = sub_100573A58();
      return v2 & 1;
    }

    return 0;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    return 0;
  }

  sub_100571898();
  v2 = sub_1005716D8();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  sub_100250EF4(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  sub_100250F00(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t Library.Menu.Request.excludedIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Library.Menu.Request.editingRevision.getter()
{
  v1 = *(v0 + 48);
  sub_100250F0C(v1);
  return v1;
}

uint64_t Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100250F6C(v4[6]);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return result;
}

uint64_t Library.Menu.Request.perform(_:_:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v61 = a1;
  v7 = sub_100570B98();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100570B88();
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = sub_100571498();
  }

  else
  {
    v15 = v14;
  }

  v51 = v4[2];
  v52 = v15;
  v16 = swift_allocObject();
  v17 = v4[3];
  v59 = v7;
  v60 = a3;
  v57 = v10;
  v58 = v8;
  v56 = v13;
  v53 = v11;
  v54 = a2;
  if (v17)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(v4 + 42);
  }

  v55 = v16;
  *(v16 + 16) = v18;
  v62 = swift_allocObject();
  *(v62 + 16) = v19;
  v20 = v4[4];
  v21 = *(v4 + 40);
  v22 = objc_opt_self();

  v23 = [v22 standardUserDefaults];
  v24 = swift_allocObject();
  v26 = v4[6];
  v25 = v4[7];
  v28 = v4[8];
  v27 = v4[9];
  v50 = v25;
  if (v26)
  {
    v29 = v26;
    v30 = v25;
    v31 = v28;
    v32 = v27;
  }

  else
  {
    v29 = NSUserDefaults.libraryMenuRevision.getter();
  }

  v24[2] = v29;
  v24[3] = v30;
  v24[4] = v31;
  v24[5] = v32;
  if (*(v4 + 41))
  {
    v33 = v31;
  }

  else
  {
    v33 = v29;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v24;
  *(v34 + 24) = v23;
  *(v34 + 32) = v17;
  *(v34 + 40) = v33;
  v35 = v17;
  v36 = v51;
  v37 = v52;
  *(v34 + 48) = v52;
  *(v34 + 56) = v36;
  *(v34 + 64) = v20;
  *(v34 + 72) = v21;
  v39 = v54;
  v38 = v55;
  *(v34 + 80) = v62;
  *(v34 + 88) = v38;
  *(v34 + 96) = v61;
  *(v34 + 104) = v39;
  aBlock[4] = sub_1002510A4;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_100693900;
  v51 = _Block_copy(aBlock);
  v63 = _swiftEmptyArrayStorage;
  sub_100250F0C(v26);
  sub_10025AA14(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags);

  v61 = v23;
  v40 = v35;
  v41 = v37;

  sub_100009DCC(&unk_1006E9B30);
  sub_100010BC0(&qword_1006EBE80, &unk_1006E9B30);
  sub_100573DA8();
  v42 = sub_100570C28();
  swift_allocObject();
  v43 = sub_100570C08();

  sub_1000D3B98(0, &qword_1006E84A0);
  v45 = v57;
  v44 = v58;
  v46 = v59;
  (*(v58 + 104))(v57, enum case for DispatchQoS.QoSClass.userInteractive(_:), v59);
  v47 = sub_100573638();
  (*(v44 + 8))(v45, v46);
  sub_100573618();

  v48 = v60;
  v60[3] = v42;
  v48[4] = &protocol witness table for DispatchWorkItem;

  *v48 = v43;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  sub_10024EC9C();
  v8 = 0x4D7972617262694CLL;
  v9 = 0xEB00000000756E65;
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(&v8, &v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v0 = v8;
      v1 = v9;
      sub_10056C298();
      swift_allocObject();
      sub_10056C288();
      sub_100251100();
      sub_10056C278();
      sub_10008246C(v0, v1);

      return v10;
    }
  }

  else
  {
    sub_10001036C(&v10, &qword_1006EA040);
  }

  if (qword_1006E4F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, static Logger.libraryMenu);
  v3 = sub_10056DF68();
  v4 = sub_100573448();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No edits found — Returning stock menu revision", v5, 2u);
  }

  if (qword_1006E4F00 != -1)
  {
    swift_once();
  }

  v6 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v6;
}

uint64_t sub_10024A8F0(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (qword_1006E4F00 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = *algn_1006FC7C8;
    swift_beginAccess();
    v16 = a1[3];
    v103 = a7;
    if (sub_10019F874(a1[2], v15) & 1) != 0 && (sub_100248B98(v16, v14))
    {
      break;
    }

    sub_10024D21C(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v17 = a1[2];
    v18 = a1[3];
    v19 = a1[4];

    NSUserDefaults.libraryMenuRevision.setter(v17, v18, v19);
    v100 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v20 = a4[2];
    if (!v20)
    {
      v104 = 0;
      goto LABEL_68;
    }

    v21 = 0;
    v104 = 0;
    v22 = a4 + 4;
LABEL_39:
    v31 = v21;
    while (v31 < v20)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_149;
      }

      v32 = *(v22 + v31);
      if (v32 <= 4)
      {
        if (*(v22 + v31) <= 1u)
        {
          if (*(v22 + v31))
          {
            v33 = v104 | 0xC0;
          }

          else
          {
            v33 = v104 | 0x41;
          }

LABEL_38:
          v104 = v33;
          if (v21 == v20)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v32)
        {
          case 2u:
            v33 = v104 | 2;
            goto LABEL_38;
          case 3u:
            v33 = v104 | 1;
            goto LABEL_38;
          case 4u:
            v33 = v104 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v22 + v31) > 7u)
      {
        switch(v32)
        {
          case 8u:
            v33 = v104 | 4;
            goto LABEL_38;
          case 9u:
            v33 = v104 | 8;
            goto LABEL_38;
          case 0xAu:
            v33 = v104 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v32)
        {
          case 5u:
            v33 = v104 | 0x400;
            goto LABEL_38;
          case 6u:
            v33 = v104 | 0x20;
            goto LABEL_38;
          case 7u:
            v33 = v104 | 0x10;
            goto LABEL_38;
        }
      }

      ++v31;
      if (v21 == v20)
      {
        goto LABEL_68;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  swift_endAccess();
  v100 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v93 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
  a7 = 0;
  v24 = *(v23 + 16);
  a1 = 0x80000001005B1750;
  v104 = 0;
  v98 = v23 + 40;
LABEL_12:
  v26 = (v98 + 16 * a7);
  a3 = a7;
  while (v24 != a3)
  {
    if (a3 >= v24)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    a7 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_147;
    }

    v28 = *(v26 - 1);
    v27 = *v26;
    v29 = v28 == 0xD000000000000014 && 0x80000001005B1770 == v27;
    if (v29 || (sub_100574498() & 1) != 0)
    {
      v25 = 1247;
LABEL_11:
      v104 |= v25;
      goto LABEL_12;
    }

    if (v28 == 0xD00000000000001BLL && 0x80000001005B1750 == v27 || (sub_100574498() & 1) != 0)
    {
      v25 = 32;
      goto LABEL_11;
    }

    if (v28 == 0xD00000000000001ALL && 0x80000001005B2B90 == v27 || (sub_100574498() & 1) != 0)
    {
      v25 = 256;
      goto LABEL_11;
    }

    if (v28 != 0xD000000000000015 || 0x80000001005B2BB0 != v27)
    {
      a3 = (a3 + 1);
      v26 += 2;
      if ((sub_100574498() & 1) == 0)
      {
        continue;
      }
    }

    v25 = 512;
    goto LABEL_11;
  }

  a7 = v103;
  if ([v93 selectionMode] == 2)
  {

    a1 = v100;
    a3 = a4;
  }

  else
  {
    v30 = [v93 selectionMode];

    v29 = v30 == 3;
    a1 = v100;
    a3 = a4;
    if (!v29)
    {
      goto LABEL_68;
    }
  }

  v104 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v99 = [a5 filterAvailableContentGroups:v104 withOptions:{a6, v90}];
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  v34 = static ApplicationCapabilities.Controller.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  v91 = v34;
  sub_10056E478();

  v117[4] = v113;
  v117[5] = v114;
  v117[6] = v115;
  v117[7] = v116;
  v117[0] = v109;
  v117[1] = v110;
  v117[2] = v111;
  v117[3] = v112;
  LODWORD(a4) = BYTE2(v109);
  if (v115 == 2)
  {
    v94 = 1;
  }

  else
  {
    v94 = sub_100574498();
  }

  v35 = a3[2];

  v105 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v35)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v36 = 0;
  a3 += 4;
  LODWORD(v90) = (v99 & 0x300) != 0;
  HIDWORD(v90) = (v99 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v36;
    while (2)
    {
      if (a1 >= v35)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v36 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v37 = *(a1 + a3);
      if (sub_1001B5400(*(a1 + a3), a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v38 = v100[5];

        v39 = sub_1001B5400(v37, v38);

        if (v37 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v39 &= v94 & a4;
LABEL_100:
        v51 = (*(a9 + 16) ^ 1) & v39;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v39)
        {
          if (v37 > 6)
          {
            if (v37 > 9)
            {
              if ((v37 - 11) >= 2)
              {
                v51 = v90;
              }

              else
              {
                v51 = 1;
              }
            }

            else
            {
              if (v37 == 7)
              {
                v54 = -17;
              }

              else if (v37 == 8)
              {
                v54 = -5;
              }

              else
              {
                v54 = -9;
              }

LABEL_122:
              v51 = (v54 | v99) == -1;
            }
          }

          else if (v37 <= 2)
          {
            v51 = (v99 & 0x41) != 0;
            if (v37)
            {
              v51 = (v99 & 0xC0) != 0;
              if (v37 != 1)
              {
                v54 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v37 <= 4)
            {
              if (v37 == 3)
              {
                v54 = -2;
              }

              else
              {
                v54 = -129;
              }

              goto LABEL_122;
            }

            v51 = (v99 & 0x400) != 0;
            if (v37 != 5)
            {
              v54 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v39 = 1;
        if (v37 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v37 == 12)
        {
          v45 = [objc_opt_self() deviceMediaLibrary];
          if (v45)
          {
            v46 = v45;
            sub_1000D3B98(0, &qword_1006EA010);
            v47 = v105;
            v48 = sub_100573A58();
          }

          else
          {
            v48 = 0;
          }

          v49 = [objc_opt_self() sharedManager];
          v50 = [v49 hasActiveDownloads];

          if (v39)
          {
            v39 = v48 & v50;
            goto LABEL_100;
          }

          v51 = 0;
        }

        else
        {
          if (v37 != 11)
          {
            goto LABEL_100;
          }

          v40 = [objc_opt_self() deviceMediaLibrary];
          if (v40)
          {
            v41 = v40;
            sub_1000D3B98(0, &qword_1006EA010);
            v42 = v105;
            v43 = sub_100573A58();

            v44 = v43 ^ 1;
          }

          else
          {
            v44 = 1;
          }

          v52 = [objc_opt_self() sharedManager];
          v53 = [v52 hasActiveDownloads];

          v51 = 0;
          if ((v39 & 1) != 0 && (a6 & 2) == 0 && (v44 & 1) == 0)
          {
            v39 = (v99 != 0) | v53;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v51 &= v37 != 12;
      }

      a7 = v103;
      if ((v51 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v36 == v35)
        {
          a1 = v100;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_1000CFDD4(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v100;
    v56 = *(a5 + 2);
    v55 = *(a5 + 3);
    if (v56 >= v55 >> 1)
    {
      a5 = sub_1000CFDD4((v55 > 1), v56 + 1, 1, a5);
    }

    *(a5 + 2) = v56 + 1;
    a5[v56 + 32] = v37;
    if (v36 != v35)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v58 = a1[2];
  v57 = a1[3];
  v59 = a1[4];
  v60 = a1[5];
  *&v109 = a5;
  *(&v109 + 1) = a2;
  *&v110 = v58;
  *(&v110 + 1) = v57;
  *&v111 = v59;
  *(&v111 + 1) = v60;
  LOBYTE(v112) = 0;
  sub_100009DCC(&unk_1006E84D0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_10057BD80;
  v62 = CFRange.init(_:)(0);
  v64 = v63;
  v66 = v65;
  *(v61 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v61 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v67 = swift_allocObject();
  *(v61 + 32) = v67;
  v67[1] = v62;
  v67[2].location = v64;
  v67[2].length = v66;
  v68 = qword_1006E4DC0;

  v102 = a2;
  if (v68 != -1)
  {
    swift_once();
  }

  v69 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v70.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v70.length = v91;
  v71 = CFRange.init(_:)(v70);
  *(v61 + 96) = &type metadata for NotificationTrigger;
  *(v61 + 104) = &protocol witness table for NotificationTrigger;
  *(v61 + 72) = v71;
  v72 = qword_1006E4DA0;
  swift_retain_n();
  v73 = v69;
  if (v72 != -1)
  {
    swift_once();
  }

  v74 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v75.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v75.length = v91;
  v76 = CFRange.init(_:)(v75);
  *(v61 + 136) = &type metadata for NotificationTrigger;
  *(v61 + 144) = &protocol witness table for NotificationTrigger;
  *(v61 + 112) = v76;
  v77.location = MPMediaLibraryDidChangeNotification;
  v77.length = v105;
  v78 = CFRange.init(_:)(v77);
  *(v61 + 176) = &type metadata for NotificationTrigger;
  *(v61 + 184) = &protocol witness table for NotificationTrigger;
  *(v61 + 152) = v78;
  v79 = v105;
  v80 = v74;
  v81 = MPMediaLibraryDidChangeNotification;
  if ((sub_1001B5400(12, v103) & 1) == 0)
  {
    if (qword_1006E4E38 != -1)
    {
      swift_once();
    }

    v82 = static MusicLibrary.downloadingStateDidChange;
    v83 = CFRange.init(_:)(static MusicLibrary.downloadingStateDidChange);
    v84 = *(v61 + 16);
    v85 = *(v61 + 24);
    v86 = v82;
    if (v84 >= v85 >> 1)
    {
      v61 = sub_1000CFDE8((v85 > 1), v84 + 1, 1, v61);
    }

    v107 = &type metadata for NotificationTrigger;
    v108 = &protocol witness table for NotificationTrigger;
    v106 = v83;
    *(v61 + 16) = v84 + 1;
    sub_10002EA74(&v106.location, v61 + 40 * v84 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v87 = BindingRequestResponseInvalidation.init(triggers:)(v61);
  v88 = sub_10025AA14(&qword_1006EA018, type metadata accessor for BindingRequestResponseInvalidation);
  a11(&v109, v87, v88);

  sub_100108D2C(v117);
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (qword_1006E4F00 != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor()
{
  if (qword_1006E4F08 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_10058EB98[a1];
  }
}

uint64_t sub_10024B968@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(sub_10025A720, v6, a3);
}

BOOL sub_10024B9F8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(v8, v9);
}

unint64_t Library.Menu.Identifier.symbolName(for:)(char a1, char a2)
{
  result = 0x732E657261757173;
  switch(a2)
  {
    case 1:
      if (a1 == 2)
      {
        result = 0x6F6E2E636973756DLL;
      }

      else
      {
        result = 0x672E657261757173;
      }

      break;
    case 2:
      result = 0x696D2E636973756DLL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0x6F6E2E636973756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x73726174697567;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 30324;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6B636F6C63;
      break;
  }

  return result;
}

uint64_t Library.Menu.Identifier.name(for:)()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

BOOL static Library.Menu.Identifier.Location.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL sub_10024C0A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t Library.Menu.Identifier.description.getter(char a1)
{
  v1 = Library.Menu.Identifier.rawValue.getter(a1);
  sub_1000C5FB8();
  v2 = sub_100573C88();

  v3 = *(v2 + 16);
  if (v3)
  {
    v1 = *(v2 + 16 + 16 * v3);
  }

  return v1;
}

unint64_t Library.Menu.Identifier.rawValue.getter(char a1)
{
  result = 0xD000000000000029;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
    case 7:
      result = 0xD000000000000022;
      break;
    case 4:
    case 10:
      result = 0xD000000000000021;
      break;
    case 5:
    case 11:
      result = 0xD000000000000026;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10024C2F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Library.Menu.Identifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Library.Menu.Identifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_10024C37C()
{
  v1 = *v0;
  sub_100574678();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10024C3E0()
{
  Library.Menu.Identifier.rawValue.getter(*v0);
  sub_1005729F8();
}

Swift::Int sub_10024C434()
{
  v1 = *v0;
  sub_100574678();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10024C494@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10024C4C4@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.init(from:)(void *a1)
{
  result = sub_10025940C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t Library.Menu.Revision.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_100009DCC(&qword_1006E9EC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_10000C8CC(a1, a1[3]);
  sub_100259ADC();
  sub_100574718();
  v18 = a4;
  v20 = 1;
  sub_100009DCC(&qword_1006E9ED8);
  sub_10025A76C(&qword_1006E9EE0, sub_100259B30);
  sub_100574368();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    sub_100009DCC(&qword_1006E9EF0);
    sub_100259B84(&qword_1006E9EF8, sub_100259B30);
    sub_100574368();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_100259BFC();
    sub_100574368();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10024C84C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7105633;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100574498();
  }

  return v11 & 1;
}

Swift::Int sub_10024C940()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10024C9DC()
{
  sub_1005729F8();
}

Swift::Int sub_10024CA64()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10024CAFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100259CA4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10024CB2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  v5 = 7105633;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10024CB84()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_10024CBD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100259CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10024CC00(uint64_t a1)
{
  v2 = sub_100259ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024CC3C(uint64_t a1)
{
  v2 = sub_100259ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Library.Menu.Revision.Version.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Menu.Revision.Version.selected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_10024CCD8()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_10024CD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_100574498() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100574498();

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

uint64_t sub_10024CDFC(uint64_t a1)
{
  v2 = sub_100259C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024CE38(uint64_t a1)
{
  v2 = sub_100259C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_10019F874(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_100248B98(a2, a4);
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100009DCC(&qword_1006E9F08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000C8CC(a1, a1[3]);
  sub_100259C50();
  sub_100574718();
  v14 = a2;
  v13 = 0;
  sub_100009DCC(&qword_1006E9ED8);
  sub_10025A76C(&qword_1006E9EE0, sub_100259B30);
  sub_100574368();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100009DCC(&qword_1006E9EF0);
    sub_100259B84(&qword_1006E9EF8, sub_100259B30);
    sub_100574368();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10024D104@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100259CF0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10024D14C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10019F874(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_100248B98(v2, v3);
}

uint64_t Library.Menu.Revision.version.getter(uint64_t a1)
{

  return a1;
}

uint64_t MPCPlaybackEngine.Configuration.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_10024D21C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (qword_1006E4F08 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = sub_10056DF88();
    sub_10000C49C(v7, static Logger.libraryMenu);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = sub_10056DF68();
    v12 = sub_100573448();

    v44 = v6;
    v45 = v5;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v47 = v6;
      v48 = v5;

      v15 = sub_100572978();
      v17 = sub_1000C9784(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "╞< %s", v13, 0xCu);
      sub_100010474(v14);
    }

    v18 = sub_10056DF68();
    v19 = sub_100573448();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = sub_100572978();
      v24 = sub_1000C9784(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "╞> %s", v20, 0xCu);
      sub_100010474(v21);
    }

    v5 = v46[2];

    v26 = sub_1001E18EC(v25);

    v28 = sub_1001E18EC(v27);

    if (*(v28 + 16) <= *(v26 + 16) >> 3)
    {
      v47 = v26;

      sub_100257294(v28);
      v6 = v47;
    }

    else
    {

      v6 = sub_100257388(v28, v26);
    }

    if (*(v26 + 16) <= *(v28 + 16) >> 3)
    {
      v47 = v28;
      sub_100257294(v26);
      v29 = v47;
    }

    else
    {
      v29 = sub_100257388(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = *(v26 + 16);

    if (v30 == v31)
    {
      break;
    }

    v32 = *(v5 + 16);
    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (v33 < *(v5 + 16))
    {
      v34 = v33 + 1;
      LOBYTE(v47) = *(v5 + 32 + v33);
      sub_10024DB80(&v47, &v49);
      v33 = v34;
      if (v32 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_19:
  sub_100248518(v6, &v49);

  sub_100258A04(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (*(v6 + 2) <= *(v37 + 16) >> 3)
    {

      sub_100257294(v6);

      v38 = v37;
    }

    else
    {

      v38 = sub_100257388(v6, v37);
    }

    v42 = sub_100258C78(v29, a1, a2);

    v43 = sub_10024E990(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    sub_10025A940();
    swift_allocError();
    *v40 = v44;
    v40[1] = v45;
    v40[2] = v5;
    v40[3] = v39;
    v40[4] = a1;
    v40[5] = a2;
    swift_willThrow();

    v41 = v46;
  }

  sub_10024D838(v41, a1, a2);
}

void sub_10024D838(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = qword_1006E4F08;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_10056DF88();
  sub_10000C49C(v4, static Logger.libraryMenu);
  v5 = sub_10056DF68();
  v6 = sub_100573448();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = sub_10056DF68();
  v9 = sub_100573448();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = sub_100572D38();
    v14 = v13;

    v15 = sub_1000C9784(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    sub_100010474(v11);
  }

  else
  {
  }

  oslog = sub_10056DF68();
  v16 = sub_100573448();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_1001E1960();
    v19 = sub_100573108();
    v21 = v20;

    v22 = sub_1000C9784(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    sub_100010474(v18);
  }

  else
  {
  }
}

uint64_t sub_10024DB80(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = sub_1001E6668(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v20 = *a2;

      v21 = sub_10024DE4C(v3, v20);
      v23 = v22;

      if ((v23 & 1) != 0 || v5 == v21)
      {
        break;
      }

      if (qword_1006E4F08 != -1)
      {
        swift_once();
      }

      v24 = sub_10056DF88();
      sub_10000C49C(v24, static Logger.libraryMenu);
      v16 = sub_10056DF68();
      v25 = sub_100573448();
      if (os_log_type_enabled(v16, v25))
      {
        v29 = v25;
        v26 = swift_slowAlloc();
        result = swift_slowAlloc();
        v28[0] = result;
        *v26 = 136315650;
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

        if (v21 >= *(*a2 + 16))
        {
          goto LABEL_15;
        }

        v9 = result;
        v10 = Library.Menu.Identifier.description.getter(*(*a2 + v21 + 32));
        log = v16;
        v12 = v5;
        v13 = a2;
        v14 = v3;
        v15 = sub_1000C9784(v10, v11, v28);

        *(v26 + 4) = v15;
        v3 = v14;
        a2 = v13;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v21;
        v16 = log;
        _os_log_impl(&_mh_execute_header, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v26, 0x20u);
        sub_100010474(v9);
      }

      swift_beginAccess();
      sub_1000E9FB4(v21);
      swift_endAccess();
      v17 = *a2;

      v5 = sub_1001E6668(v3, v17);
      v19 = v18;
    }

    while ((v19 & 1) == 0);
  }

  return result;
}

uint64_t sub_10024DE4C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a2 + 31;
  do
  {
    v6 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v7 = 0xD000000000000029;
    v8 = "orites";
    switch(*(v4 + v6))
    {
      case 1:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v7 = 0xD000000000000023;
        v8 = "LibraryView.Playlists";
        break;
      case 3:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Artists";
        break;
      case 4:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Albums";
        break;
      case 5:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Songs";
        break;
      case 6:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.MadeForYou";
        break;
      case 7:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.MusicVideos";
        break;
      case 8:
        v7 = 0xD000000000000028;
        v8 = "LibraryView.Genres";
        break;
      case 9:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Compilations";
        break;
      case 0xA:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Composers";
        break;
      case 0xB:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Shows";
        break;
      case 0xC:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = 0xD000000000000029;
    v11 = "orites";
    switch(a1)
    {
      case 1:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v10 = 0xD000000000000023;
        v11 = "LibraryView.Playlists";
        break;
      case 3:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Artists";
        break;
      case 4:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Albums";
        break;
      case 5:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Songs";
        break;
      case 6:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.MadeForYou";
        break;
      case 7:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.MusicVideos";
        break;
      case 8:
        v10 = 0xD000000000000028;
        v11 = "LibraryView.Genres";
        break;
      case 9:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Compilations";
        break;
      case 10:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Composers";
        break;
      case 11:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Shows";
        break;
      case 12:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
    {

      return v3;
    }

    v5 = sub_100574498();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t sub_10024E1AC(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "orites";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(v4[v6 + 32])
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 10:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 11:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 12:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(v29)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {

LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = a2;
        *a2 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          *v5 = v4;
          v16 = *(v4 + 2);
          if ((v16 - 1) == v6)
          {
LABEL_39:
            v7 = v2;
            *v28 = v4;
            v14 = *(v4 + 2);
            if (v14 >= v6)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v5 = (v6 + 1);
            v27 = v4 + 32;
            v18 = &v4[v6 + 33];
            while (v5 < v16)
            {
              v19 = 0xD000000000000029;
              v20 = v7;
              switch(*v18)
              {
                case 1:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v19 = 0xD000000000000023;
                  v20 = "LibraryView.Playlists";
                  break;
                case 3:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Artists";
                  break;
                case 4:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Albums";
                  break;
                case 5:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Songs";
                  break;
                case 6:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v19 = 0xD000000000000028;
                  v20 = "LibraryView.Genres";
                  break;
                case 9:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Compilations";
                  break;
                case 10:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Composers";
                  break;
                case 11:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Shows";
                  break;
                case 12:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              v21 = v20 | 0x8000000000000000;
              v22 = 0xD000000000000029;
              v23 = v7;
              switch(v29)
              {
                case 1:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v22 = 0xD000000000000023;
                  v23 = "LibraryView.Playlists";
                  break;
                case 3:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Artists";
                  break;
                case 4:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Albums";
                  break;
                case 5:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Songs";
                  break;
                case 6:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v22 = 0xD000000000000028;
                  v23 = "LibraryView.Genres";
                  break;
                case 9:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Compilations";
                  break;
                case 10:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Composers";
                  break;
                case 11:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Shows";
                  break;
                case 12:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
              {
              }

              else
              {
                v24 = sub_100574498();

                if ((v24 & 1) == 0)
                {
                  if (v5 != v6)
                  {
                    if (v6 < 0)
                    {
                      goto LABEL_83;
                    }

                    v25 = *(v4 + 2);
                    if (v6 >= v25)
                    {
                      goto LABEL_84;
                    }

                    if (v5 >= v25)
                    {
                      goto LABEL_85;
                    }

                    v26 = v27[v6];
                    v27[v6] = *v18;
                    *v18 = v26;
                  }

                  ++v6;
                }
              }

              v5 = (v5 + 1);
              v16 = *(v4 + 2);
              ++v18;
              if (v5 == v16)
              {
                goto LABEL_39;
              }
            }

LABEL_81:
            __break(1u);
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v4 = sub_1000F2404(v4);
        }
      }

      v13 = sub_100574498();

      if (v13)
      {
        goto LABEL_37;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = *(v4 + 2);
    v14 = v6;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

LABEL_40:
  sub_1000F356C(v6, v14);
  return swift_endAccess();
}

uint64_t sub_10024E878(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v10 = a4 >> 1;
  result = swift_beginAccess();
  do
  {
    if (a3 == v10)
    {
      return 13;
    }

    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (v10 < a3)
    {
      goto LABEL_11;
    }

    v13 = *a5;
    v14 = *(a2 + v10);

    v15 = sub_1002486C8(v14, v13);
  }

  while (!v15);
  __chkstk_darwin(result);
  v16 = v10;
  result = sub_10025A99C(&v16, &v17);
  if (!v6)
  {
    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10024E990(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100250708(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Library.Menu.Revision.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10019F874(a1, a5) & 1) == 0 || (sub_100248B98(a2, a6) & 1) == 0 || (sub_10019F874(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_100248B98(a4, a8);
}

uint64_t sub_10024EB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10025940C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10024EB5C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_10019F874(*a1, *a2) & 1) == 0 || (sub_100248B98(v2, v5) & 1) == 0 || (sub_10019F874(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_100248B98(v3, v6);
}

void *sub_10024EBF8()
{
  result = sub_1000D1884(&off_100684930);
  static Library.Menu.Revision.Version.current = &off_100684900;
  *algn_1006FC7C8 = result;
  return result;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (qword_1006E4F00 != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void sub_10024EC9C()
{
  LOBYTE(v15[0]) = 0;
  sub_10025A8EC();
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(&v16);
  if (!*(&v17 + 1))
  {
    goto LABEL_8;
  }

  sub_100009DCC(&unk_1006E84C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v1 = v15[0];
  LOBYTE(v15[0]) = 1;
  NSUserDefaults.subscript.getter(&v16);
  if (!*(&v17 + 1))
  {
LABEL_7:

LABEL_8:
    sub_10001036C(&v16, &qword_1006EA040);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v2 = v15[0];
  v15[0] = 0x4D7972617262694CLL;
  v15[1] = 0xEB00000000756E65;
  NSUserDefaults.subscript.getter(v15, &v16);
  if (*(&v17 + 1))
  {

    goto LABEL_7;
  }

  sub_10001036C(&v16, &qword_1006EA040);
  if (qword_1006E4F00 != -1)
  {
    swift_once();
  }

  v3 = sub_100258F04(v1, v2, static Library.Menu.Revision.Version.current, *algn_1006FC7C8);
  if (v0)
  {

    if (qword_1006E4F08 != -1)
    {
      swift_once();
    }

    v6 = sub_10056DF88();
    sub_10000C49C(v6, static Logger.libraryMenu);
    swift_errorRetain();
    v7 = sub_10056DF68();
    v8 = sub_100573428();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *&v16 = v0;
      swift_errorRetain();
      sub_100009DCC(&qword_1006E9B60);
      sub_100572978();
      v11 = sub_100572898();

      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to migrate legacy library menu: %@", v9, 0xCu);
      sub_10001036C(v10, &qword_1006E7640);
    }

    else
    {
    }
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v14 = v5;

    NSUserDefaults.libraryMenuRevision.setter(v12, v13, v14);
    v16 = 0u;
    v17 = 0u;
    LOBYTE(v15[0]) = 0;
    NSUserDefaults.subscript.setter(&v16, v15, &_s9LegacyKeyON);
    v16 = 0u;
    v17 = 0u;
    LOBYTE(v15[0]) = 1;
    NSUserDefaults.subscript.setter(&v16, v15, &_s9LegacyKeyON);
  }
}

void (*NSUserDefaults.libraryMenuRevision.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = NSUserDefaults.libraryMenuRevision.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_10024F114;
}

void sub_10024F114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    NSUserDefaults.libraryMenuRevision.setter(v4, v3, v5);
  }

  else
  {
    NSUserDefaults.libraryMenuRevision.setter(**a1, v3, v5);
  }

  free(v2);
}

uint64_t sub_10024F1D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "loading";
  }

  else
  {
    v4 = "orderedLibraryViewIdentifiers";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v6 = "orderedLibraryViewIdentifiers";
  }

  else
  {
    v6 = "loading";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_10024F280()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10024F2FC()
{
  sub_1005729F8();
}

Swift::Int sub_10024F364()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10024F3DC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100684B18;
  v8._object = v3;
  v5 = sub_100574238(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10024F43C(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "loading";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_10024F478()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.libraryMenu);
  sub_10000C49C(v0, static Logger.libraryMenu);
  return sub_10056DF78();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E4F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.libraryMenu);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1006E5398 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (qword_1006E5348 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (qword_1006E5358 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (qword_1006E53A0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (qword_1006E5388 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (qword_1006E5390 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (qword_1006E5380 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (qword_1006E5368 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (qword_1006E5360 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (qword_1006E53A8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (qword_1006E5370 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (qword_1006E5378 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (qword_1006E5340 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_10024F94C(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  sub_100574678();
  ActionType.rawValue.getter(a2);
  sub_1005729F8();

  v7 = sub_1005746C8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = ActionType.rawValue.getter(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == ActionType.rawValue.getter(a2) && v13 == v14)
      {
        break;
      }

      v16 = sub_100574498();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100255474(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10024FAD4(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_100574678();
  ApplicationCapabilities.Service.rawValue.getter(a2);
  sub_1005729F8();

  v5 = sub_1005746C8();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001005ABE30;
        }

        v13 = *(*(v32 + 48) + v7) ? 0x646956636973756DLL : 0x636973756DLL;
        v14 = *(*(v32 + 48) + v7) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(v32 + 48) + v7) <= 1u ? v13 : v11;
        v10 = *(*(v32 + 48) + v7) <= 1u ? v14 : v12;
      }

      else if (*(*(v32 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001005ABE70;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001005ABE90;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a2 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a2 == 9)
      {
        v16 = 0x80000001005ABE90;
      }

      if (a2 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001005ABE70;
      }

      v17 = 0x746963696C707865;
      if (a2 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a2 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a2 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a2 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a2 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001005ABE30;
      }

      if (a2)
      {
        v21 = 0x646956636973756DLL;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a2)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a2 <= 4u ? v19 : v15;
      v24 = a2 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = sub_100574498();

      if (v25)
      {
        goto LABEL_78;
      }

      v7 = (v33 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v32 + 48) + v33);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    sub_10025565C(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10024FEDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1005718D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10025AA14(&qword_1006E8DD8, &type metadata accessor for AudioVariant);
  v33 = a2;
  v11 = sub_100572738();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10025AA14(&qword_1006E8DE0, &type metadata accessor for AudioVariant);
      v21 = sub_1005727E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100255AC0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1002501BC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1005728D8();
  sub_100574678();
  sub_1005729F8();
  v7 = sub_1005746C8();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1005728D8();
      v13 = v12;
      if (v11 == sub_1005728D8() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_100574498();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100255D64(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100250368(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_100574678();
  v7 = a2 & 1;
  sub_100574688(v7);
  v8 = sub_1005746C8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100255F4C(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_100250468(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_100573E18();

    if (v8)
    {

      sub_10056E3C8();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_100573E08();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100255158(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1002543E4();
    }

    sub_10025538C(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_10056E3C8();
  sub_10025AA14(&qword_1006E6218, &type metadata accessor for AnyCancellable);
  v10 = sub_100572738();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_1002560A0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_10025AA14(&qword_1006E6220, &type metadata accessor for AnyCancellable);
  while ((sub_1005727E8() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100250708(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  sub_100574678();
  Library.Menu.Identifier.rawValue.getter(a2);
  sub_1005729F8();

  v5 = sub_1005746C8();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "orites";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "orites";
      switch(a2)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = sub_100574498();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_100256288(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100250B24(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  sub_100574678();
  sub_100574688(a2);
  v6 = sub_1005746C8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1002566F4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100250C1C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100574668();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100256854(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100250CFC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_100574678();
  sub_1005729F8();
  v8 = sub_1005746C8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100574498() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100256974(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_100250E4C()
{
  result = qword_1006E9EB0;
  if (!qword_1006E9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9EB0);
  }

  return result;
}

unint64_t sub_100250EA0()
{
  result = qword_1006E9EB8;
  if (!qword_1006E9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9EB8);
  }

  return result;
}

id sub_100250EF4(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void sub_100250F00(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100250F0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100250F6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100250FDC()
{

  return swift_deallocObject();
}

uint64_t sub_10025102C()
{

  return swift_deallocObject();
}

uint64_t sub_1002510E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100251100()
{
  result = qword_1006E9EC0;
  if (!qword_1006E9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9EC0);
  }

  return result;
}

void *sub_100251168()
{
  v1 = v0;
  v2 = sub_1005718D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EA028);
  v6 = *v0;
  v7 = sub_100573E88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1002513A0()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E9FA0);
  v2 = *v0;
  v3 = sub_100573E88();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1002514F0()
{
  v1 = v0;
  sub_100009DCC(&qword_1006EA020);
  v2 = *v0;
  v3 = sub_100573E88();
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

void *sub_100251630()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6210);
  v2 = *v0;
  v3 = sub_100573E88();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_100251794(uint64_t *a1)
{
  v2 = v1;
  sub_100009DCC(a1);
  v3 = *v1;
  v4 = sub_100573E88();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1002518C4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E9FB8);
  v2 = *v0;
  v3 = sub_100573E88();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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