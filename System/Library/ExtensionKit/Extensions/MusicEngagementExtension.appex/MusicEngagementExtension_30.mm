id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v4, "init");
}

id LyricsLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t specialized static LyricsLoader.supportsLyrics(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  v196 = v2;
  v197 = v3;
  __chkstk_darwin(v2);
  v5 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v194 = &v185 - v7;
  __chkstk_darwin(v8);
  v193 = (&v185 - v9);
  __chkstk_darwin(v10);
  v192 = (&v185 - v11);
  __chkstk_darwin(v12);
  v187 = &v185 - v13;
  __chkstk_darwin(v14);
  v186 = &v185 - v15;
  __chkstk_darwin(v16);
  v18 = &v185 - v17;
  __chkstk_darwin(v19);
  v21 = &v185 - v20;
  __chkstk_darwin(v22);
  v189 = (&v185 - v23);
  __chkstk_darwin(v24);
  v188 = &v185 - v25;
  __chkstk_darwin(v26);
  v191 = &v185 - v27;
  __chkstk_darwin(v28);
  v30 = &v185 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v199 = v31;
  v200 = v32;
  __chkstk_darwin(v31);
  v34 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v195 = &v185 - v36;
  __chkstk_darwin(v37);
  v190 = &v185 - v38;
  __chkstk_darwin(v39);
  v41 = &v185 - v40;
  __chkstk_darwin(v42);
  v44 = &v185 - v43;
  __chkstk_darwin(v45);
  v47 = &v185 - v46;
  if ((Song.hasLyrics.getter() & 1) == 0 && (Song.hasCustomLyrics.getter() & 1) == 0)
  {
    v75 = Logger.lyrics.unsafeMutableAddressor();
    v76 = v199;
    v77 = v200;
    (*(v200 + 16))(v34, v75, v199);
    v78 = v196;
    v79 = v197;
    (*(v197 + 16))(v5, a1, v196);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v204[0] = v83;
      *v82 = 136446210;
      v84 = Song.loggingInfo.getter();
      v85 = v78;
      v87 = v86;
      (*(v79 + 8))(v5, v85);
      v88 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v84, v87, v204);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v80, v81, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);

      (*(v200 + 8))(v34, v199);
    }

    else
    {

      (*(v79 + 8))(v5, v78);
      (*(v77 + 8))(v34, v76);
    }

    v159 = 0;
    return v159 & 1;
  }

  v198 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v48 = BagProvider.bag.getter();

  if (v48)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v48] & 1) == 0)
    {
      v89 = [v48 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v90 = v198;
      v91 = v196;
      if (v89)
      {

        v92 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v47, v92, v199);
        v93 = v197;
        v94 = *(v197 + 16);
        v94(v30, v90, v91);
        v95 = v191;
        v94(v191, v90, v91);
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v195 = v48;
          v99 = v98;
          v194 = swift_slowAlloc();
          *&v204[0] = v194;
          *v99 = 136446466;
          v193 = v96;
          v100 = Song.hasCustomLyrics.getter();
          if (v100)
          {
            v101 = 1702195828;
          }

          else
          {
            v101 = 0x65736C6166;
          }

          LODWORD(v192) = v97;
          v102 = v91;
          if (v100)
          {
            v103 = 0xE400000000000000;
          }

          else
          {
            v103 = 0xE500000000000000;
          }

          v104 = *(v93 + 8);
          v104(v30, v102);
          v105 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v101, v103, v204);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2082;
          v106 = Song.loggingInfo.getter();
          v108 = v107;
          v104(v95, v102);
          v109 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v106, v108, v204);

          *(v99 + 14) = v109;
          v110 = v193;
          _os_log_impl(&_mh_execute_header, v193, v192, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v99, 0x16u);
          swift_arrayDestroy();

          v48 = v195;
        }

        else
        {

          v180 = *(v93 + 8);
          v180(v95, v91);
          v180(v30, v91);
        }

        (*(v200 + 8))(v47, v199);
      }

      else
      {
        v160 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v44, v160, v199);
        v161 = v197;
        v162 = *(v197 + 16);
        v163 = v188;
        v162(v188, v90, v91);
        v164 = v189;
        v162(v189, v90, v91);
        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v195 = v48;
          v168 = v167;
          v193 = swift_slowAlloc();
          *&v204[0] = v193;
          *v168 = 136446466;
          v192 = v165;
          v169 = Song.hasCustomLyrics.getter();
          if (v169)
          {
            v170 = 1702195828;
          }

          else
          {
            v170 = 0x65736C6166;
          }

          v194 = v44;
          v171 = v164;
          if (v169)
          {
            v172 = 0xE400000000000000;
          }

          else
          {
            v172 = 0xE500000000000000;
          }

          LODWORD(v191) = v166;
          v173 = *(v161 + 8);
          v173(v163, v91);
          v174 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v170, v172, v204);

          *(v168 + 4) = v174;
          *(v168 + 12) = 2082;
          v175 = Song.loggingInfo.getter();
          v177 = v176;
          v173(v171, v91);
          v178 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v175, v177, v204);

          *(v168 + 14) = v178;
          v179 = v192;
          _os_log_impl(&_mh_execute_header, v192, v191, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v168, 0x16u);
          swift_arrayDestroy();

          v48 = v195;

          (*(v200 + 8))(v194, v199);
        }

        else
        {

          v181 = *(v161 + 8);
          v181(v164, v91);
          v181(v163, v91);
          (*(v200 + 8))(v44, v199);
        }
      }

      v182 = Song.hasCustomLyrics.getter();

      v159 = v182;
      return v159 & 1;
    }

    v49 = v199;
    v50 = v200;
    v52 = v196;
    v51 = v197;
    v53 = v192;
  }

  else
  {
    v54 = Logger.lyrics.unsafeMutableAddressor();
    v55 = v199;
    (*(v200 + 16))(v41, v54, v199);
    v51 = v197;
    v56 = v198;
    v57 = *(v197 + 16);
    v58 = v196;
    v57(v21, v198, v196);
    v57(v18, v56, v58);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v204[0] = v191;
      *v61 = 136446466;
      v189 = v59;
      v62 = Song.hasCustomLyrics.getter();
      if (v62)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v62)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v65 = v196;
      LODWORD(v188) = v60;
      v66 = *(v197 + 8);
      v66(v21, v196);
      v67 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v63, v64, v204);
      v51 = v197;

      *(v61 + 4) = v67;
      *(v61 + 12) = 2082;
      v68 = Song.loggingInfo.getter();
      v70 = v69;
      v66(v18, v65);
      v71 = v199;
      v50 = v200;
      v72 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v68, v70, v204);

      *(v61 + 14) = v72;
      v73 = v189;
      _os_log_impl(&_mh_execute_header, v189, v188, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v61, 0x16u);
      swift_arrayDestroy();

      v74 = v41;
      v49 = v71;
      (*(v50 + 8))(v74, v71);
      v52 = v65;
      v53 = v192;
    }

    else
    {

      v111 = *(v51 + 8);
      v112 = v18;
      v52 = v196;
      v111(v112, v196);
      v111(v21, v52);
      v113 = v200;
      (*(v200 + 8))(v41, v55);
      v53 = v192;
      v49 = v55;
      v50 = v113;
    }
  }

  v114 = Song.hasLyrics.getter();
  v115 = v195;
  v116 = v193;
  if (v114 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v202), v117 = v203, , outlined destroy of ApplicationCapabilities(v202), v118 = specialized Set.contains(_:)(2, v117), , (v118))
  {
    static ApplicationCapabilities.shared.getter(v204);
    outlined destroy of ApplicationCapabilities(v204);
    if (BYTE10(v204[0]))
    {
      v159 = 1;
      return v159 & 1;
    }

    v119 = Logger.lyrics.unsafeMutableAddressor();
    v120 = v190;
    (*(v50 + 16))(v190, v119, v49);
    v121 = *(v51 + 16);
    v122 = v186;
    v123 = v198;
    v121(v186, v198, v52);
    v124 = v51;
    v125 = v49;
    v126 = v187;
    v121(v187, v123, v52);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v129 = 67240450;
      v130 = Song.hasCustomLyrics.getter() & 1;
      v131 = *(v124 + 8);
      v131(v122, v52);
      *(v129 + 4) = v130;
      *(v129 + 8) = 2082;
      v132 = Song.loggingInfo.getter();
      v133 = v126;
      v134 = v200;
      v136 = v135;
      v131(v133, v52);
      v137 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v132, v136, &v201);

      *(v129 + 10) = v137;
      _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v129, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v197);

      (*(v134 + 8))(v190, v199);
    }

    else
    {
      v184 = *(v124 + 8);
      v184(v122, v52);

      v184(v126, v52);
      (*(v200 + 8))(v120, v125);
    }
  }

  else
  {
    v138 = Logger.lyrics.unsafeMutableAddressor();
    (*(v50 + 16))(v115, v138, v49);
    v139 = *(v51 + 16);
    v140 = v198;
    v139(v53, v198, v52);
    v141 = v116;
    v139(v116, v140, v52);
    v142 = v194;
    v139(v194, v140, v52);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v145 = 67240962;
      LODWORD(v192) = v144;
      v146 = Song.hasCustomLyrics.getter() & 1;
      v147 = *(v51 + 8);
      v147(v53, v52);
      *(v145 + 4) = v146;
      v148 = v141;
      v149 = v200;
      *(v145 + 8) = 1026;
      v150 = Song.hasLyrics.getter() & 1;
      v147(v148, v52);
      *(v145 + 10) = v150;
      *(v145 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(v204);
      v151 = v205;

      outlined destroy of ApplicationCapabilities(v204);
      v152 = specialized Set.contains(_:)(2, v151);

      *(v145 + 16) = v152 & 1;
      *(v145 + 20) = 2082;
      v153 = v194;
      v154 = Song.loggingInfo.getter();
      v156 = v155;
      v147(v153, v52);
      v157 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v154, v156, &v201);

      *(v145 + 22) = v157;
      _os_log_impl(&_mh_execute_header, v143, v192, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v145, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_0Tm(v197);

      (*(v149 + 8))(v195, v199);
    }

    else
    {
      v158 = *(v51 + 8);
      v158(v141, v52);
      v158(v53, v52);

      v158(v142, v52);
      (*(v200 + 8))(v115, v199);
    }
  }

  v159 = Song.hasCustomLyrics.getter();
  return v159 & 1;
}

unint64_t lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError()
{
  result = lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError;
  if (!lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError;
  if (!lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Song and conformance Song()
{
  result = _s8MusicKit4SongVACSeAAWL_0;
  if (!_s8MusicKit4SongVACSeAAWL_0)
  {
    type metadata accessor for Song();
    result = swift_getWitnessTable();
    atomic_store(result, &_s8MusicKit4SongVACSeAAWL_0);
  }

  return result;
}

uint64_t specialized static LyricsLoader.supportsLyrics(for:)(void *a1)
{
  v194 = type metadata accessor for Logger();
  v2 = *(v194 - 8);
  __chkstk_darwin(v194);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v185 - v6;
  __chkstk_darwin(v8);
  v10 = &v185 - v9;
  __chkstk_darwin(v11);
  v13 = &v185 - v12;
  __chkstk_darwin(v14);
  v16 = &v185 - v15;
  __chkstk_darwin(v17);
  v19 = &v185 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v185 - v22;
  v193 = [a1 lyrics];
  if (v193)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v191 = v10;
    v192 = v2;
    v36 = v193;
    v37 = [v193 hasLibraryLyrics];
    if (([v36 hasStoreLyrics] & 1) == 0 && !v37)
    {
      v38 = Logger.lyrics.unsafeMutableAddressor();
      v39 = v192;
      v40 = v194;
      (*(v192 + 16))(v7, v38, v194);
      v41 = a1;
      v42 = v193;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&v198[0] = v193;
        *v45 = 67240962;
        *(v45 + 4) = [v42 hasLibraryLyrics];
        *(v45 + 8) = 1026;
        *(v45 + 10) = [v42 hasStoreLyrics];

        *(v45 + 14) = 2082;
        v46 = [v41 title];
        if (v46)
        {
          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0;
        }

        *&v200[0] = v48;
        *(&v200[0] + 1) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
        v92 = String.init<A>(describing:)();
        v94 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v92, v93, v198);

        *(v45 + 16) = v94;
        *(v45 + 24) = 2082;
        v95 = [v41 identifiers];
        v96 = [v95 description];
        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;

        v100 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v97, v99, v198);

        *(v45 + 26) = v100;
        _os_log_impl(&_mh_execute_header, v43, v44, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v45, 0x22u);
        swift_arrayDestroy();

        (*(v192 + 8))(v7, v194);
      }

      else
      {

        (*(v39 + 8))(v7, v40);
      }

      return 0;
    }

    v190 = v37;
    BagProvider.shared.unsafeMutableAddressor();

    v51 = BagProvider.bag.getter();

    if (v51)
    {
      v52 = [objc_opt_self() supportsLyricsForURLBag:v51];
      v53 = v192;
      if ((v52 & 1) == 0)
      {
        v191 = v51;
        v79 = [v51 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v79)
        {

          v80 = Logger.lyrics.unsafeMutableAddressor();
          v81 = v194;
          (*(v53 + 16))(v23, v80, v194);
          v82 = v53;
          v83 = a1;
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v86 = 67240706;
            *(v86 + 4) = v190;
            *(v86 + 8) = 2082;
            v87 = [v83 title];
            if (v87)
            {
              v88 = v87;
              v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v91 = v90;
            }

            else
            {
              v89 = 0;
              v91 = 0;
            }

            *&v200[0] = v89;
            *(&v200[0] + 1) = v91;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
            v158 = String.init<A>(describing:)();
            v160 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v158, v159, v198);

            *(v86 + 10) = v160;
            *(v86 + 18) = 2082;
            v161 = [v83 identifiers];
            v162 = [v161 description];
            v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v165 = v164;

            v166 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v163, v165, v198);

            *(v86 + 20) = v166;
            _os_log_impl(&_mh_execute_header, v84, v85, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v86, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v23, v194);
            return v190;
          }

          (*(v82 + 8))(v23, v81);
        }

        else
        {
          v101 = Logger.lyrics.unsafeMutableAddressor();
          v102 = v194;
          (*(v53 + 16))(v19, v101, v194);
          v103 = v53;
          v104 = a1;
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v107 = 67240706;
            *(v107 + 4) = v190;
            *(v107 + 8) = 2082;
            v108 = [v104 title];
            if (v108)
            {
              v109 = v108;
              v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = v111;
            }

            else
            {
              v110 = 0;
              v112 = 0;
            }

            *&v200[0] = v110;
            *(&v200[0] + 1) = v112;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
            v167 = String.init<A>(describing:)();
            v169 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v167, v168, v198);

            *(v107 + 10) = v169;
            *(v107 + 18) = 2082;
            v170 = [v104 identifiers];
            v171 = [v170 description];
            v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v174 = v173;

            v175 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v172, v174, v198);

            *(v107 + 20) = v175;
            _os_log_impl(&_mh_execute_header, v105, v106, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v107, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v19, v194);
            return v190;
          }

          (*(v103 + 8))(v19, v102);
        }

        return v190;
      }

      v54 = v13;

      v55 = v194;
    }

    else
    {
      v66 = Logger.lyrics.unsafeMutableAddressor();
      v53 = v192;
      v55 = v194;
      (*(v192 + 16))(v16, v66, v194);
      v67 = a1;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();

      v54 = v13;
      if (os_log_type_enabled(v68, v69))
      {
        v187 = v69;
        v188 = v13;
        v189 = v68;
        v70 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *&v198[0] = v186;
        *v70 = 67240706;
        *(v70 + 4) = v190;
        v71 = v70;
        *(v70 + 8) = 2082;
        v72 = v67;
        v73 = [v67 title];
        v74 = &stru_1005F2000;
        if (v73)
        {
          v75 = v73;
          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        *&v200[0] = v76;
        *(&v200[0] + 1) = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
        v113 = String.init<A>(describing:)();
        v115 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v113, v114, v198);

        *(v71 + 10) = v115;
        *(v71 + 18) = 2082;
        v116 = [v72 identifiers];
        v117 = [v116 description];
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v121 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v118, v120, v198);

        *(v71 + 20) = v121;
        v122 = v189;
        _os_log_impl(&_mh_execute_header, v189, v187, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v71, 0x1Cu);
        swift_arrayDestroy();

        v55 = v194;
        (*(v53 + 8))(v16, v194);
        v54 = v188;
LABEL_38:
        if ([v193 v74[152].attr] && (static ApplicationCapabilities.shared.getter(v198), v123 = v199, , outlined destroy of ApplicationCapabilities(v198), v124 = specialized Set.contains(_:)(2, v123), , (v124 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v200);
          outlined destroy of ApplicationCapabilities(v200);
          if (BYTE10(v200[0]))
          {

            return 1;
          }

          v125 = Logger.lyrics.unsafeMutableAddressor();
          (*(v53 + 16))(v54, v125, v55);
          v126 = a1;
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v197 = v191;
            *v129 = 67240706;
            *(v129 + 4) = v190;
            *(v129 + 8) = 2082;
            v130 = [v126 title];
            if (v130)
            {
              v131 = v130;
              v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v134 = v133;
            }

            else
            {
              v132 = 0;
              v134 = 0;
            }

            v195 = v132;
            v196 = v134;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
            v176 = String.init<A>(describing:)();
            v178 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v176, v177, &v197);

            *(v129 + 10) = v178;
            *(v129 + 18) = 2082;
            v179 = [v126 identifiers];
            v180 = [v179 description];
            v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v183 = v182;

            v184 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v181, v183, &v197);

            *(v129 + 20) = v184;
            _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v129, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v54, v194);
            return v190;
          }

          (*(v53 + 8))(v54, v55);
        }

        else
        {
          v135 = Logger.lyrics.unsafeMutableAddressor();
          v136 = v191;
          (*(v53 + 16))(v191, v135, v55);
          v137 = a1;
          v138 = v193;
          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            v197 = v193;
            *v141 = 67241218;
            *(v141 + 4) = v190;
            *(v141 + 8) = 1026;
            *(v141 + 10) = [v138 v74[152].attr];

            *(v141 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v200);
            v142 = v201;

            outlined destroy of ApplicationCapabilities(v200);
            v143 = specialized Set.contains(_:)(2, v142);

            *(v141 + 16) = v143 & 1;
            *(v141 + 20) = 2082;
            v144 = [v137 title];
            if (v144)
            {
              v145 = v144;
              v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v148 = v147;
            }

            else
            {
              v146 = 0;
              v148 = 0;
            }

            v195 = v146;
            v196 = v148;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
            v149 = String.init<A>(describing:)();
            v151 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v149, v150, &v197);

            *(v141 + 22) = v151;
            *(v141 + 30) = 2082;
            v152 = [v137 identifiers];
            v153 = [v152 description];
            v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v156 = v155;

            v157 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v154, v156, &v197);

            *(v141 + 32) = v157;
            _os_log_impl(&_mh_execute_header, v139, v140, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v141, 0x28u);
            swift_arrayDestroy();

            (*(v192 + 8))(v191, v194);
            return v190;
          }

          (*(v53 + 8))(v136, v55);
        }

        return v190;
      }

      (*(v53 + 8))(v16, v55);
    }

    v74 = &stru_1005F2000;
    goto LABEL_38;
  }

LABEL_4:
  v24 = Logger.lyrics.unsafeMutableAddressor();
  v25 = v194;
  (*(v2 + 16))(v4, v24, v194);
  v26 = v2;
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v192 = v26;
    v30 = swift_slowAlloc();
    *&v198[0] = swift_slowAlloc();
    *v30 = 136446466;
    v31 = [v27 title];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    *&v200[0] = v33;
    *(&v200[0] + 1) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
    v56 = String.init<A>(describing:)();
    v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v56, v57, v198);

    *(v30 + 4) = v58;
    *(v30 + 12) = 2082;
    v59 = [v27 identifiers];
    v60 = [v59 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v61, v63, v198);

    *(v30 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v28, v29, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v30, 0x16u);
    swift_arrayDestroy();

    (*(v192 + 8))(v4, v194);
  }

  else
  {

    (*(v26 + 8))(v4, v25);
  }

  return 0;
}

unint64_t _sSo13MPPropertySetCMa_0()
{
  result = _sSo13MPPropertySetCML_0;
  if (!_sSo13MPPropertySetCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo13MPPropertySetCML_0);
  }

  return result;
}

__n128 __swift_memcpy17_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LyricsLoader.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LyricsLoader.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002DC414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in LyricsLoader.loadLyrics(for:)(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  closure #1 in closure #1 in LyricsLoader.loadLyrics(for:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_15_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_0()
{
  result = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_0;
  if (!_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_0);
  }

  return result;
}

unint64_t _sSaySSGSayxGSKsWl_0()
{
  result = _sSaySSGSayxGSKsWL_0;
  if (!_sSaySSGSayxGSKsWL_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySSGSayxGSKsWL_0);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = type metadata accessor for ScenePhase();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = type metadata accessor for Song();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v18 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v18;
  ObservationRegistrar.init()();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(partial apply for closure #1 in Lyrics.StateManager.init(), v20);

  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v1;
}

uint64_t sub_1002DCB4C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  outlined init with copy of Lyrics.StateManager.State(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State);
  v10 = specialized static Lyrics.StateManager.State.__derived_struct_equals(_:_:)(v8, a1);
  outlined destroy of Lyrics.StateManager.State(v8, type metadata accessor for Lyrics.StateManager.State);
  if (v10)
  {
    outlined init with copy of Lyrics.StateManager.State(a1, v8, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v8, v1 + v9, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v5);
    outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v8, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of Lyrics.StateManager.State(a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t Lyrics.StateManager.showTranslationButton.setter(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void Lyrics.StateManager.loader.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void Lyrics.StateManager.lyricsReportingController.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCLyricsReportingController);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in Lyrics.StateManager.init()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_getKeyPath();
    v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v63 = v18;
    v20 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    v59 = v19;
    v60 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    outlined init with copy of Lyrics.StateManager.State(v18 + v21, v16, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v16, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v16, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return outlined destroy of Lyrics.StateManager.State(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    }

    v57 = v4;
    v58 = a1;
    v22 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v13 + 2);
    v24 = *(v13 + 3);
    v26 = v13[32];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
    v28 = type metadata accessor for Song();
    v29 = (*(*(v28 - 8) + 8))(&v13[v27], v28);
    if (v26 != 1)
    {
    }

    v30 = v23;
    v55 = v25;
    v56 = v24;
    v31 = (*v22 + 312);
    v32 = *v31;
    v33 = v31;
    (*v31)(v29);
    v34 = type metadata accessor for Lyrics.Transliteration(0);
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v53 = v34;
    if ((v36)(v10, 1) == 1)
    {

      outlined consume of Lyrics.StateManager.LyricsType(v22, v30, v55, v56, 1);
      v37 = v10;
    }

    else
    {
      v52 = v35;
      v50 = v33;
      v51 = v32;
      v54 = v22;
      outlined destroy of TaskPriority?(v10, &_s7LyricsX0A0C15TransliterationVSgMd);
      v38 = specialized Set.contains(_:)(3, v58);
      v39 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v39) = v39(3) & 1;

      if (v38 == v39)
      {
        outlined consume of Lyrics.StateManager.LyricsType(v54, v30, v55, v56, 1);
      }

      v58 = v30;
      (*(*v54 + 440))(v40);
      swift_getKeyPath();
      v62 = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      outlined init with copy of TaskPriority?(v18 + v41, v7, &_s7LyricsX0A0C15TransliterationVSgMd);
      v42 = v53;
      v43 = v36(v7, 1, v53);
      outlined destroy of TaskPriority?(v7, &_s7LyricsX0A0C15TransliterationVSgMd);
      v44 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v45 = swift_beginAccess();
      if (*(v18 + v44) == 1)
      {
        *(v18 + v44) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v50 - 2) = v18;
        *(&v50 - 8) = 1;
        v61 = v18;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v47 = v57;
      if (v43 == 1)
      {
        (*(v52 + 56))(v57, 1, 1, v42);
        v48 = v54;
      }

      else
      {
        v48 = v54;
        v51(v45);
      }

      v49 = swift_getKeyPath();
      __chkstk_darwin(v49);
      *(&v50 - 2) = v18;
      *(&v50 - 1) = v47;
      v61 = v18;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      outlined consume of Lyrics.StateManager.LyricsType(v48, v58, v55, v56, 1);

      v37 = v47;
    }

    return outlined destroy of TaskPriority?(v37, &_s7LyricsX0A0C15TransliterationVSgMd);
  }

  return result;
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  v1 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Lyrics.StateManager.State(v0, v3, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Lyrics.StateManager.State(v3, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v4 = *v3;
  v5 = v3[32];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
  v7 = type metadata accessor for Song();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  return v4;
}

uint64_t Lyrics.StateManager._state.didset(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_SbtMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v79[-v5];
  v7 = type metadata accessor for ScenePhase();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v91 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v85);
  v93 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd);
  __chkstk_darwin(v10 - 8);
  v88 = &v79[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd);
  __chkstk_darwin(v12 - 8);
  v87 = &v79[-v13];
  v100 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v100);
  v90 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v79[-v16];
  v18 = type metadata accessor for Logger();
  v96 = *(v18 - 8);
  v97 = v18;
  __chkstk_darwin(v18);
  v20 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v99);
  v86 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v79[-v23];
  __chkstk_darwin(v25);
  v27 = &v79[-v26];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v102[3] = v2;
  v29 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  v89 = v28;
  v94 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v98 = v30;
  outlined init with copy of Lyrics.StateManager.State(v30, v27, type metadata accessor for Lyrics.StateManager.State);
  v95 = a1;
  LOBYTE(v30) = specialized static Lyrics.StateManager.State.__derived_struct_equals(_:_:)(v27, a1);
  result = outlined destroy of Lyrics.StateManager.State(v27, type metadata accessor for Lyrics.StateManager.State);
  if ((v30 & 1) == 0)
  {
    v83 = v7;
    v84 = v6;
    v32 = Logger.lyrics.unsafeMutableAddressor();
    (*(v96 + 16))(v20, v32, v97);
    outlined init with copy of Lyrics.StateManager.State(v95, v24, type metadata accessor for Lyrics.StateManager.State);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v102[0] = v82;
      *v35 = 136446466;
      outlined init with copy of Lyrics.StateManager.State(v24, v27, type metadata accessor for Lyrics.StateManager.State);
      v36 = String.init<A>(describing:)();
      v81 = v33;
      v37 = v36;
      v80 = v34;
      v39 = v38;
      outlined destroy of Lyrics.StateManager.State(v24, type metadata accessor for Lyrics.StateManager.State);
      v40 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v37, v39, v102);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      swift_getKeyPath();
      v101 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = v98;
      outlined init with copy of Lyrics.StateManager.State(v98, v27, type metadata accessor for Lyrics.StateManager.State);
      v42 = String.init<A>(describing:)();
      v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v42, v43, v102);

      *(v35 + 14) = v44;
      v45 = v81;
      _os_log_impl(&_mh_execute_header, v81, v80, "[State] changed from %{public}s to %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v96 + 8))(v20, v97);
    }

    else
    {

      outlined destroy of Lyrics.StateManager.State(v24, type metadata accessor for Lyrics.StateManager.State);
      (*(v96 + 8))(v20, v97);
      v41 = v98;
    }

    swift_getKeyPath();
    v102[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = v86;
    outlined init with copy of Lyrics.StateManager.State(v41, v86, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v46, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v46, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *v17;
      v48 = v17[32];
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
      v50 = type metadata accessor for Song();
      (*(*(v50 - 8) + 8))(&v17[v49], v50);
      if (v48)
      {
        v51 = v90;
        v52 = v88;
        if (v47)
        {
          v53 = *(*v47 + 288);

          v55 = v87;
          v53(v54);

          v56 = type metadata accessor for Lyrics.Translation(0);
          v57 = 1;
          v58 = (*(*(v56 - 8) + 48))(v55, 1, v56);
          outlined destroy of TaskPriority?(v55, &_s7LyricsX0A0C11TranslationVSgMd);
          if (v58 != 1)
          {
            goto LABEL_17;
          }

          v59 = *(*v47 + 312);

          v59(v60);

          v61 = type metadata accessor for Lyrics.Transliteration(0);
          v57 = 1;
          if ((*(*(v61 - 8) + 48))(v52, 1, v61) != 1)
          {
LABEL_16:
            outlined destroy of TaskPriority?(v52, &_s7LyricsX0A0C15TransliterationVSgMd);
LABEL_17:
            v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v57 == *(v2 + v65))
            {
              *(v2 + v65) = v57;
            }

            else
            {
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              *&v79[-16] = v2;
              v79[-8] = v57;
              v101 = v2;
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }

            v67 = v84;
            swift_getKeyPath();
            v101 = v2;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v68 = v98;
            outlined init with copy of Lyrics.StateManager.State(v98, v51, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v101 = v2;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v69 = v68 + *(v99 + 20);
            v70 = v93;
            outlined init with copy of Lyrics.StateManager.State(v69, v93, type metadata accessor for Lyrics.StateManager.State.Display);
            v72 = v91;
            v71 = v92;
            v73 = v83;
            (*(v92 + 104))(v91, enum case for ScenePhase.active(_:), v83);
            v74 = static ScenePhase.== infix(_:_:)();
            (*(v71 + 8))(v72, v73);
            if ((v74 & 1) != 0 && v70[*(v85 + 20)] == 1)
            {
              v75 = v70[*(v85 + 24)];
            }

            else
            {
              v75 = 0;
            }

            outlined destroy of Lyrics.StateManager.State(v70, type metadata accessor for Lyrics.StateManager.State.Display);
            outlined init with take of Lyrics.StateManager.State.Loading(v51, v67);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                outlined consume of Lyrics.StateManager.LyricsType(*v67, *(v67 + 8), *(v67 + 16), *(v67 + 24), *(v67 + 32));
                v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
                v78 = type metadata accessor for Song();
                (*(*(v78 - 8) + 8))(v67 + v77, v78);
                if (v75)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              outlined destroy of Lyrics.StateManager.State(v67, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            Lyrics.StateManager.reportLyricsEvent(state:)(v95);
LABEL_30:
            Lyrics.StateManager.updateMetricsPage()();
          }

LABEL_15:
          v57 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v62 = type metadata accessor for Lyrics.Translation(0);
        v63 = v87;
        (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
        outlined destroy of TaskPriority?(v63, &_s7LyricsX0A0C11TranslationVSgMd);
        v64 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v64 - 8) + 56))(v52, 1, 1, v64);
        goto LABEL_15;
      }

      v51 = v90;
    }

    else
    {
      outlined destroy of Lyrics.StateManager.State(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v51 = v90;
    }

    v52 = v88;
    goto LABEL_14;
  }

  return result;
}

void (*Lyrics.StateManager._state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  outlined init with copy of Lyrics.StateManager.State(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager._state.modify;
}

void Lyrics.StateManager._state.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of Lyrics.StateManager.State(*(*a1 + 96), v6, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v5);
    outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    outlined init with copy of Lyrics.StateManager.State(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v6);
  }

  outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State);
  outlined destroy of Lyrics.StateManager.State(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return outlined init with copy of Lyrics.StateManager.State(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t key path getter for Lyrics.StateManager.state : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return outlined init with copy of Lyrics.StateManager.State(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t key path setter for Lyrics.StateManager.state : Lyrics.StateManager(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Lyrics.StateManager.State(a1, v4, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v4);
}

uint64_t closure #1 in Lyrics.StateManager.state.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  outlined init with copy of Lyrics.StateManager.State(a2, &v12[-v8], type metadata accessor for Lyrics.StateManager.State);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  outlined init with copy of Lyrics.StateManager.State(a1 + v10, v6, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  outlined assign with copy of Lyrics.StateManager.State(v9, a1 + v10, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  Lyrics.StateManager._state.didset(v6);
  outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State);
  return outlined destroy of Lyrics.StateManager.State(v9, type metadata accessor for Lyrics.StateManager.State);
}

void (*Lyrics.StateManager.state.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._state.modify(v4);
  return Lyrics.StateManager.state.modify;
}

void Lyrics.StateManager.state.modify(void *a1)
{
  Lyrics.StateManager.state.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t Lyrics.StateManager._tracklist.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = v55 - v6;
  __chkstk_darwin(v7);
  v9 = v55 - v8;
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v13 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v16 - 8);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v65 = v1;
  v61 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  v62 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = [v21 vocalsControlCommand];
    if (v22)
    {
      v23 = [v22 isActive];
      swift_unknownObjectRelease();
      if (v23)
      {
        swift_getKeyPath();
        v64 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        outlined init with copy of Lyrics.StateManager.State(v1 + v24, v18, type metadata accessor for Lyrics.StateManager.State);
        outlined init with copy of Lyrics.StateManager.State(v18, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        outlined destroy of Lyrics.StateManager.State(v18, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v15;
          v26 = *(v15 + 1);
          v27 = *(v15 + 3);
          v58 = *(v15 + 2);
          v59 = v27;
          v28 = v15[32];
          v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
          v30 = type metadata accessor for Song();
          v31 = (*(*(v30 - 8) + 8))(&v15[v29], v30);
          if (v28 == 1)
          {
            v57 = v26;
            v32 = (*v25 + 312);
            v56 = *v32;
            v55[1] = v32;
            v56(v31);
            v33 = type metadata accessor for Lyrics.Transliteration(0);
            v34 = *(*(v33 - 8) + 48);
            if (v34(v12, 1, v33) == 1)
            {
              outlined consume of Lyrics.StateManager.LyricsType(v25, v57, v58, v59, 1);
              outlined destroy of TaskPriority?(v12, &_s7LyricsX0A0C15TransliterationVSgMd);
            }

            else
            {
              v55[0] = v25;
              outlined destroy of TaskPriority?(v12, &_s7LyricsX0A0C15TransliterationVSgMd);
              swift_getKeyPath();
              v64 = v1;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v46 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              outlined init with copy of TaskPriority?(v1 + v46, v9, &_s7LyricsX0A0C15TransliterationVSgMd);
              v47 = v34(v9, 1, v33);
              v48 = v57;
              if (v47 == 1)
              {
                outlined destroy of TaskPriority?(v9, &_s7LyricsX0A0C15TransliterationVSgMd);
                v49 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v49) = v49(2);

                v52 = v58;
                v51 = v59;
                if ((v49 & 1) == 0)
                {
                  v44 = v60;
                  v53 = v55[0];
                  v56(v50);
                  KeyPath = swift_getKeyPath();
                  __chkstk_darwin(KeyPath);
                  v55[-2] = v1;
                  v55[-1] = v44;
                  v64 = v1;
                  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                  outlined consume of Lyrics.StateManager.LyricsType(v53, v48, v52, v51, 1);
                  goto LABEL_16;
                }

                outlined consume of Lyrics.StateManager.LyricsType(v55[0], v48, v58, v59, 1);
              }

              else
              {
                outlined consume of Lyrics.StateManager.LyricsType(v55[0], v57, v58, v59, 1);
                outlined destroy of TaskPriority?(v9, &_s7LyricsX0A0C15TransliterationVSgMd);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          outlined destroy of Lyrics.StateManager.State(v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v64 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v35, v4, &_s7LyricsX0A0C15TransliterationVSgMd);
  v36 = type metadata accessor for Lyrics.Transliteration(0);
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v4, 1, v36);
  result = outlined destroy of TaskPriority?(v4, &_s7LyricsX0A0C15TransliterationVSgMd);
  if (v38 != 1)
  {
    v40 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v40) = v40(1);

    if ((v40 & 1) == 0)
    {
      swift_getKeyPath();
      v63 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = *(v1 + v20);
      if (!v41 || (v42 = [v41 vocalsControlCommand]) == 0 || (v43 = objc_msgSend(v42, "isActive"), result = swift_unknownObjectRelease(), (v43 & 1) == 0))
      {
        v44 = v60;
        (*(v37 + 56))(v60, 1, 1, v36);
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v55[-2] = v1;
        v55[-1] = v44;
        v63 = v1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
LABEL_16:

        return outlined destroy of TaskPriority?(v44, &_s7LyricsX0A0C15TransliterationVSgMd);
      }
    }
  }

  return result;
}

uint64_t (*Lyrics.StateManager._tracklist.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Lyrics.StateManager._tracklist.modify;
}

uint64_t Lyrics.StateManager._tracklist.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return Lyrics.StateManager._tracklist.didset();
  }

  return result;
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id key path getter for Lyrics.StateManager.tracklist : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for UIAction(0, &_sSo26MPCPlayerResponseTracklistCML_0);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  Lyrics.StateManager._tracklist.didset();
}

uint64_t closure #1 in Lyrics.StateManager.tracklist.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  return Lyrics.StateManager._tracklist.didset();
}

void (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._tracklist.modify(v4);
  return Lyrics.StateManager.tracklist.modify;
}

uint64_t Lyrics.StateManager._song.didset(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v41 = v2;
  v19 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  v38 = v18;
  v39 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v2[v20], v11, &_s8MusicKit4SongVSgMd_0);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_s8MusicKit4SongVSgMd_0);
  }

  else
  {
    v35 = v5;
    v22 = *(v13 + 32);
    v22(v17, v11, v12);
    outlined init with copy of TaskPriority?(v37, v8, &_s8MusicKit4SongVSgMd_0);
    if (v21(v8, 1, v12) == 1)
    {
      (*(v13 + 8))(v17, v12);
      outlined destroy of TaskPriority?(v8, &_s8MusicKit4SongVSgMd_0);
    }

    else
    {
      v23 = v36;
      v22(v36, v8, v12);
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&_s8MusicKit4SongVACSQAAWL_0, &type metadata accessor for Song);
      if (static MusicItem<>.==~ infix(_:_:)())
      {
        v24 = specialized static LyricsLoader.supportsLyrics(for:)(v17);
        v25 = specialized static LyricsLoader.supportsLyrics(for:)(v23);
        v26 = *(v13 + 8);
        v26(v23, v12);
        result = (v26)(v17, v12);
        v5 = v35;
        if (((v24 ^ v25) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v28 = *(v13 + 8);
      v28(v23, v12);
      v28(v17, v12);
    }

    v5 = v35;
  }

LABEL_10:
  swift_getKeyPath();
  v40 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    Task.cancel()();
    if (*&v2[v29])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v35 - 2) = v2;
      *(&v35 - 1) = 0;
      v40 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  type metadata accessor for MainActor();

  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v5, &async function pointer to partial apply for closure #1 in Lyrics.StateManager._song.didset, v33);

  Lyrics.StateManager.currentLyricsTask.setter(v34);
}

uint64_t closure #1 in Lyrics.StateManager._song.didset()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #3 in GroupActivitiesManager.join();

  return Lyrics.StateManager.loadLyrics()();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd_1);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_1);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
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

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_1);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_1);
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

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd_1);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_1);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd_0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_1);

      return v22;
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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_1);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd_0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC8MusicKit8PlaylistV0eF8InternalE12CollaboratorVSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10, &_sScPSgMd_1);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd_1);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_1);

      return v22;
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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_1);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void (*Lyrics.StateManager._song.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v8, v7, &_s8MusicKit4SongVSgMd_0);
  return Lyrics.StateManager._song.modify;
}

void Lyrics.StateManager._song.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of TaskPriority?(*(*a1 + 96), v6, &_s8MusicKit4SongVSgMd_0);
    outlined init with copy of TaskPriority?(v7 + v4, v5, &_s8MusicKit4SongVSgMd_0);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v6, v7 + v4, &_s8MusicKit4SongVSgMd_0);
    swift_endAccess();
    Lyrics.StateManager._song.didset(v5);
    outlined destroy of TaskPriority?(v5, &_s8MusicKit4SongVSgMd_0);
  }

  else
  {
    outlined init with copy of TaskPriority?(v7 + v4, v6, &_s8MusicKit4SongVSgMd_0);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v3, v7 + v4, &_s8MusicKit4SongVSgMd_0);
    swift_endAccess();
    Lyrics.StateManager._song.didset(v6);
  }

  outlined destroy of TaskPriority?(v6, &_s8MusicKit4SongVSgMd_0);
  outlined destroy of TaskPriority?(v3, &_s8MusicKit4SongVSgMd_0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t key path setter for Lyrics.StateManager.song : Lyrics.StateManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of TaskPriority?(a1, &v6 - v3, &_s8MusicKit4SongVSgMd_0);
  return Lyrics.StateManager.song.setter(v4);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v9, v8, &_s8MusicKit4SongVSgMd_0);
  v10 = specialized Lyrics.StateManager.shouldNotifyObservers<A>(_:_:)(v8, a1);
  outlined destroy of TaskPriority?(v8, &_s8MusicKit4SongVSgMd_0);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of TaskPriority?(a1, v8, &_s8MusicKit4SongVSgMd_0);
    outlined init with copy of TaskPriority?(v1 + v9, v5, &_s8MusicKit4SongVSgMd_0);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v8, v1 + v9, &_s8MusicKit4SongVSgMd_0);
    swift_endAccess();
    Lyrics.StateManager._song.didset(v5);
    outlined destroy of TaskPriority?(v5, &_s8MusicKit4SongVSgMd_0);
    outlined destroy of TaskPriority?(v8, &_s8MusicKit4SongVSgMd_0);
  }

  return outlined destroy of TaskPriority?(a1, &_s8MusicKit4SongVSgMd_0);
}

uint64_t closure #1 in Lyrics.StateManager.song.setter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  outlined init with copy of TaskPriority?(a2, &v12[-v8], &_s8MusicKit4SongVSgMd_0);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(a1 + v10, v6, &_s8MusicKit4SongVSgMd_0);
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v9, a1 + v10, &_s8MusicKit4SongVSgMd_0);
  swift_endAccess();
  Lyrics.StateManager._song.didset(v6);
  outlined destroy of TaskPriority?(v6, &_s8MusicKit4SongVSgMd_0);
  return outlined destroy of TaskPriority?(v9, &_s8MusicKit4SongVSgMd_0);
}

void (*Lyrics.StateManager.song.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._song.modify(v4);
  return Lyrics.StateManager.song.modify;
}

void (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._showTranslationButton.modify();
  return Lyrics.StateManager.showTranslationButton.modify;
}

uint64_t Lyrics.StateManager.showTranslationButton.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t key path getter for Lyrics.StateManager.showTranslationButton : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._needsLyricsReset.modify();
  return Lyrics.StateManager.needsLyricsReset.modify;
}

void (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._currentTranslation.modify();
  return Lyrics.StateManager.currentTranslation.modify;
}

uint64_t Lyrics.StateManager.metricsPage.getter@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v9 + v7, a3, a2);
}

uint64_t key path getter for Lyrics.StateManager.metricsPage : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v7 + v8, a4, a3);
}

uint64_t closure #1 in Lyrics.StateManager.currentTranslation.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(a2, a1 + v7, a4);
  return swift_endAccess();
}

void (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._currentTransliteration.modify();
  return Lyrics.StateManager.currentTransliteration.modify;
}

uint64_t key path setter for Lyrics.StateManager.currentTranslation : Lyrics.StateManager(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-v9];
  outlined init with copy of TaskPriority?(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of TaskPriority?(v10, a5);
}

uint64_t Lyrics.StateManager.currentTranslation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of TaskPriority?(a1, a4);
}

void (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._metricsPage.modify();
  return Lyrics.StateManager.metricsPage.modify;
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v4, &async function pointer to partial apply for closure #1 in Lyrics.StateManager.retryLoadingLyrics(), v7);
}

uint64_t closure #1 in Lyrics.StateManager.retryLoadingLyrics()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #2 in GroupActivitiesManager.join();

  return Lyrics.StateManager.loadLyrics()();
}

uint64_t Lyrics.StateManager.State.updateLoadedAndVisibleSince()()
{
  v1 = type metadata accessor for ScenePhase();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v28 = type metadata accessor for Lyrics.StateManager.State(0);
  v11 = *(v28 + 24);
  outlined init with copy of TaskPriority?(v0 + v11, v10, &_s10Foundation4DateVSgMd_0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v10, 1, v12);
  v15 = v10;
  v16 = v0;
  outlined destroy of TaskPriority?(v15, &_s10Foundation4DateVSgMd_0);
  if (v14 == 1)
  {
    outlined init with copy of Lyrics.StateManager.State(v0, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined consume of Lyrics.StateManager.LyricsType(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), v5[32]);
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
      v18 = type metadata accessor for Song();
      (*(*(v18 - 8) + 8))(&v5[v17], v18);
      v19 = v29;
      v20 = v0 + *(v28 + 20);
      v22 = v30;
      v21 = v31;
      (*(v30 + 104))(v29, enum case for ScenePhase.active(_:), v31);
      LOBYTE(v17) = static ScenePhase.== infix(_:_:)();
      (*(v22 + 8))(v19, v21);
      if (v17)
      {
        v23 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v20 + *(v23 + 20)) == 1 && *(v20 + *(v23 + 24)) == 1)
        {
          v24 = v27;
          static Date.now.getter();
          (*(v13 + 56))(v24, 0, 1, v12);
          return outlined assign with take of Date?(v24, v16 + v11);
        }
      }
    }

    else
    {
      outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  outlined destroy of TaskPriority?(v16 + v11, &_s10Foundation4DateVSgMd_0);
  return (*(v13 + 56))(v16 + v11, 1, 1, v12);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  outlined init with copy of Lyrics.StateManager.State(v1, &v11 - v7, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined assign with copy of Lyrics.StateManager.State(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined init with copy of Lyrics.StateManager.State(v1, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  v9 = specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v5, v8);
  outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v9 & 1) == 0)
  {
    Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
  }

  outlined destroy of Lyrics.StateManager.State(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return outlined destroy of Lyrics.StateManager.State(v8, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  outlined init with copy of Lyrics.StateManager.State(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return Lyrics.StateManager.State.loading.modify;
}

void Lyrics.StateManager.State.loading.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    outlined init with copy of Lyrics.StateManager.State((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v4, v6);
    outlined destroy of Lyrics.StateManager.State(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    outlined destroy of Lyrics.StateManager.State(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    outlined init with copy of Lyrics.StateManager.State(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v17, v16);
    outlined destroy of Lyrics.StateManager.State(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  outlined destroy of Lyrics.StateManager.State(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined destroy of Lyrics.StateManager.State(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  outlined init with copy of Lyrics.StateManager.State(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State.Display);
  outlined assign with copy of Lyrics.StateManager.State(a1, v1 + v9, type metadata accessor for Lyrics.StateManager.State.Display);
  outlined init with copy of Lyrics.StateManager.State(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && v5[*(v3 + 20)] == v8[*(v3 + 20)])
  {
    v11 = v5[*(v3 + 24)];
    outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v11 == v8[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
LABEL_5:
  outlined destroy of Lyrics.StateManager.State(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return outlined destroy of Lyrics.StateManager.State(v8, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  outlined init with copy of Lyrics.StateManager.State(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return Lyrics.StateManager.State.display.modify;
}

void Lyrics.StateManager.State.display.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of Lyrics.StateManager.State(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    outlined destroy of Lyrics.StateManager.State(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Lyrics.StateManager.State(v2, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v8 = 0uLL;
  if (!result)
  {
    result = outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v10 = -1;
    v13 = 0uLL;
    goto LABEL_6;
  }

  v9 = *v6;
  v14 = *(v6 + 1);
  v15 = v9;
  v10 = v6[32];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
  v12 = type metadata accessor for Song();
  result = (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = v14;
  v8 = v15;
LABEL_6:
  *a1 = v8;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Lyrics.StateManager.State.Display(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Lyrics.StateManager.LyricsType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static Lyrics.StateManager.LyricsType.== infix(_:_:)(v5, v7) & 1;
}

uint64_t Lyrics.StateManager.currentLyricsTask.getter()
{
  return Lyrics.StateManager.currentLyricsTask.getter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t Lyrics.StateManager.currentLyricsTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t key path getter for Lyrics.StateManager.currentLyricsTask : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t key path setter for Lyrics.StateManager.optionsObserver : Lyrics.StateManager()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t Lyrics.StateManager.loadLyrics()()
{
  v1[74] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd);
  v1[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd);
  v1[76] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = type metadata accessor for Song();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[119] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(Lyrics.StateManager.loadLyrics(), v5, v4);
}

{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v4 + v5, v3, &_s8MusicKit4SongVSgMd_0);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v66 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    outlined destroy of TaskPriority?(v7, &_s8MusicKit4SongVSgMd_0);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[69] = v10;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    outlined init with copy of Lyrics.StateManager.State(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v9, v66) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    outlined destroy of Lyrics.StateManager.State(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v13);
    outlined destroy of Lyrics.StateManager.State(v13, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v63 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[55] = v24;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    outlined init with copy of Lyrics.StateManager.State(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v23, v63) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v61 = v0[117];
    v64 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v56 = v0[82];
    v31 = v0[78];
    v57 = v0[77];
    v59 = v0[111];
    v32 = v0[74];
    outlined destroy of Lyrics.StateManager.State(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v30);
    outlined destroy of Lyrics.StateManager.State(v30, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v33 = Logger.lyrics.unsafeMutableAddressor();
    v0[130] = v33;
    v34 = *(v31 + 16);
    v0[131] = v34;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v56, v33, v57);
    v35 = *(v27 + 16);
    v0[133] = v35;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v61, v64, v59);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[117];
    v40 = v0[112];
    v41 = v0[111];
    v42 = v0[82];
    v43 = v0[78];
    v44 = v0[77];
    if (v38)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v45 = 136446210;
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);
      v60 = v44;
      v62 = v42;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);

      v51 = *(v43 + 8);
      v51(v62, v60);
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v39, v41);
      v51 = *(v43 + 8);
      v51(v42, v44);
    }

    v0[136] = v49;
    v0[135] = v51;
    v52 = v0[74];
    swift_getKeyPath();
    v0[50] = v52;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = Lyrics.StateManager.loadLyrics();
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

{
  v163 = v0;

  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    outlined consume of Text.Storage(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of TaskPriority?(v8 + v5, v7, &_s8MusicKit4SongVSgMd_0);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    outlined consume of Text.Storage(v10, v9, v12 & 1);
    outlined destroy of TaskPriority?(v11, &_s8MusicKit4SongVSgMd_0);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&_s8MusicKit4SongVACSQAAWL_0, &type metadata accessor for Song);
  v13 = static MusicItem<>.==~ infix(_:_:)();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    outlined consume of Text.Storage(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  outlined copy of Text.Storage(v16, v15, v14 & 1);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  outlined consume of Text.Storage(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v130(v24, v25);
    v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    outlined copy of Text.Storage(v23, v134, v132 & 1);
    v31 = String.init<A>(describing:)();
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      outlined init with copy of Lyrics.StateManager.State(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      outlined init with copy of Lyrics.StateManager.State(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined assign with copy of Lyrics.StateManager.State(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v40, v157) & 1) == 0)
      {
        Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      outlined destroy of Lyrics.StateManager.State(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined destroy of Lyrics.StateManager.State(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined init with copy of Lyrics.StateManager.State(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      outlined assign with copy of Lyrics.StateManager.State(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      Lyrics.StateManager._state.didset(v47);
      outlined destroy of Lyrics.StateManager.State(v47, type metadata accessor for Lyrics.StateManager.State);
      outlined destroy of Lyrics.StateManager.State(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      outlined consume of Text.Storage(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      outlined copy of Text.Storage(v110, v133, 1);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      outlined init with copy of Lyrics.StateManager.State(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      outlined init with copy of Lyrics.StateManager.State(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined assign with copy of Lyrics.StateManager.State(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v114, v154) & 1) == 0)
      {
        Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      outlined destroy of Lyrics.StateManager.State(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined destroy of Lyrics.StateManager.State(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined init with copy of Lyrics.StateManager.State(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      outlined assign with copy of Lyrics.StateManager.State(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      Lyrics.StateManager._state.didset(v124);
      outlined destroy of Lyrics.StateManager.State(v124, type metadata accessor for Lyrics.StateManager.State);
      outlined destroy of Lyrics.StateManager.State(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      outlined consume of Text.Storage(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    outlined copy of Text.Storage(v95, v136, 1);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    outlined init with copy of Lyrics.StateManager.State(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v99, v160) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    outlined destroy of Lyrics.StateManager.State(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v107);
    outlined destroy of Lyrics.StateManager.State(v107, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of TaskPriority?(v70, &_s7LyricsX0A0C11TranslationVSgMd);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of TaskPriority?(v77, &_s7LyricsX0A0C15TransliterationVSgMd);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  outlined init with copy of Lyrics.StateManager.State(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  outlined init with copy of Lyrics.StateManager.State(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined assign with copy of Lyrics.StateManager.State(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v85, v145) & 1) == 0)
  {
    Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  outlined destroy of Lyrics.StateManager.State(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined destroy of Lyrics.StateManager.State(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined init with copy of Lyrics.StateManager.State(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  outlined assign with copy of Lyrics.StateManager.State(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  Lyrics.StateManager._state.didset(v92);
  outlined destroy of Lyrics.StateManager.State(v92, type metadata accessor for Lyrics.StateManager.State);
  outlined destroy of Lyrics.StateManager.State(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  outlined consume of Text.Storage(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);
      v69 = v19;
      v71 = v15;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v14(v16, v17);
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = String.init<A>(describing:)();
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    outlined init with copy of Lyrics.StateManager.State(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v44, v43) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    outlined destroy of Lyrics.StateManager.State(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v48);
    outlined destroy of Lyrics.StateManager.State(v48, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v68(v32, v33);
      v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = String.init<A>(describing:)();
      v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    outlined init with copy of Lyrics.StateManager.State(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v59, v58) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    outlined destroy of Lyrics.StateManager.State(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v63);
    outlined destroy of Lyrics.StateManager.State(v63, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

uint64_t Lyrics.StateManager.loadLyrics()(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = Lyrics.StateManager.loadLyrics();
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = Lyrics.StateManager.loadLyrics();
  }

  return _swift_task_switch(v8, v7, v6);
}

id Lyrics.StateManager.loader.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id key path getter for Lyrics.StateManager.loader : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t Lyrics.StateManager.updateMetricsPage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  __chkstk_darwin(v2 - 8);
  v53 = &v47[-v3];
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd_0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v47[-v11];
  v13 = type metadata accessor for MetricsEvent.Page(0);
  v54 = *(*(v13 - 8) + 56);
  v54(v12, 1, 1, v13);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v57 = v1;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  v55 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  outlined init with copy of Lyrics.StateManager.State(v1 + v15, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v6 + 1);
      v18 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v6[32] != 1)
      {
        outlined consume of Lyrics.StateManager.LyricsType(*v6, v17, v18, v19, 0);
        outlined destroy of TaskPriority?(v12, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
        v23 = type metadata accessor for URL();
        v24 = *(*(v23 - 8) + 56);
        goto LABEL_24;
      }

      v49 = *v6;
      v50 = v17;
      v51 = v18;
      v52 = v19;
      swift_getKeyPath();
      *&v57 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v21 = *(v1 + v20);
      if (v21 && (v22 = [v21 vocalsControlCommand]) != 0)
      {
        v48 = [v22 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 1;
      }

      swift_getKeyPath();
      *&v57 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = *(v1 + v20);
      if (v25)
      {
        v26 = [v25 playingItem];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 metadataObject];

          if (v28)
          {
            v29 = [v28 innermostModelObject];

            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              v31 = [v30 lyrics];

              if (v31)
              {
                v32 = [v31 hasStoreLyrics];

                v33 = v32 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v57);
                outlined destroy of ApplicationCapabilities(&v57);
                if (*(v49 + 56))
                {
                  v34 = (v58 == 1) & ~(v48 | v33);
                  if (*(v49 + 56) == 1)
                  {
                    outlined consume of Lyrics.StateManager.LyricsType(v49, v50, v51, v52, 1);
                    outlined destroy of TaskPriority?(v12, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
                    v35 = type metadata accessor for URL();
                    v36 = v53;
                    (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
                    v37 = 0x80000001004D11C0;
                    v46 = v34;
                    v38 = v9;
                    v39 = 0xD000000000000010;
                  }

                  else
                  {
                    outlined consume of Lyrics.StateManager.LyricsType(v49, v50, v51, v52, 1);
                    outlined destroy of TaskPriority?(v12, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
                    v41 = type metadata accessor for URL();
                    v36 = v53;
                    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
                    v46 = v34;
                    v39 = 0x795373636972794CLL;
                    v37 = 0xEE00656C62616C6CLL;
                    v38 = v9;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v39, v37, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v38, 1, 0, 0, v46);
                  goto LABEL_27;
                }

                outlined consume of Lyrics.StateManager.LyricsType(v49, v50, v51, v52, 1);
                outlined destroy of TaskPriority?(v12, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
                v23 = type metadata accessor for URL();
                v24 = *(*(v23 - 8) + 56);
LABEL_24:
                v40 = v53;
                v24(v53, 1, 1, v23);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v40, 0, 0, 0, v9, 1, 0, 0, 2);
LABEL_27:
                v54(v9, 0, 1, v13);
                outlined init with take of MetricsEvent.Page?(v9, v12);
                v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
                v43 = type metadata accessor for Song();
                (*(*(v43 - 8) + 8))(&v6[v42], v43);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v33 = 1;
      goto LABEL_20;
    }

    outlined destroy of TaskPriority?(v12, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
  }

  else
  {
    outlined destroy of TaskPriority?(v12, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
    outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v54(v12, 1, 1, v13);
LABEL_28:
  outlined init with copy of TaskPriority?(v12, v9, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v56 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of TaskPriority?(v12, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
  return outlined destroy of TaskPriority?(v9, &_s9MusicCore12MetricsEventV4PageVSgMd_0);
}

uint64_t Lyrics.StateManager.reportLyricsEvent(state:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd);
  __chkstk_darwin(v2 - 8);
  v170 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v171 = &v162 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v162 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd);
  __chkstk_darwin(v12 - 8);
  v177 = &v162 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd);
  __chkstk_darwin(v14 - 8);
  v176 = &v162 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  __chkstk_darwin(v16 - 8);
  v175 = &v162 - v17;
  v188 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v188);
  v189 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v187 = &v162 - v20;
  __chkstk_darwin(v21);
  v173 = &v162 - v22;
  v192 = type metadata accessor for Logger();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v162 - v25;
  __chkstk_darwin(v26);
  v174 = &v162 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  __chkstk_darwin(v28 - 8);
  v180 = &v162 - v29;
  v184 = type metadata accessor for Date();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for ScenePhase();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v32 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v33);
  v35 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Song();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  outlined init with copy of Lyrics.StateManager.State(a1, v35, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Lyrics.StateManager.State(v35, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v56 = v192;
    v55 = v190;
LABEL_12:
    v57 = Logger.lyrics.unsafeMutableAddressor();
    v58 = v191;
    (*(v55 + 16))(v191, v57, v56);
    v59 = v189;
    outlined init with copy of Lyrics.StateManager.State(v40, v189, type metadata accessor for Lyrics.StateManager.State);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v55;
      v64 = swift_slowAlloc();
      v196 = v64;
      *v62 = 136446210;
      outlined init with copy of Lyrics.StateManager.State(v59, v187, type metadata accessor for Lyrics.StateManager.State);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      outlined destroy of Lyrics.StateManager.State(v59, type metadata accessor for Lyrics.StateManager.State);
      v68 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v65, v67, &v196);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "Skipping Reporting lyrics for state=%{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);

      return (*(v63 + 8))(v191, v192);
    }

    else
    {

      outlined destroy of Lyrics.StateManager.State(v59, type metadata accessor for Lyrics.StateManager.State);
      return (*(v55 + 8))(v58, v56);
    }
  }

  v163 = v11;
  v162 = v8;
  v41 = *(v35 + 1);
  v178 = *v35;
  v172 = v41;
  v42 = *(v35 + 2);
  v43 = *(v35 + 3);
  v44 = v35[32];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd);
  (*(v37 + 32))(v39, &v35[*(v45 + 48)], v36);
  if ((Song.hasLyrics.getter() & 1) == 0)
  {
    (*(v37 + 8))(v39, v36);
    outlined consume of Lyrics.StateManager.LyricsType(v178, v172, v42, v43, v44);
    goto LABEL_11;
  }

  v164 = v42;
  v165 = v43;
  v167 = v44;
  v168 = v39;
  v166 = v37;
  v169 = v36;
  v46 = v40 + *(v188 + 20);
  v47 = v185;
  v48 = v186;
  (v185[13])(v32, enum case for ScenePhase.active(_:), v186);
  v49 = static ScenePhase.== infix(_:_:)();
  v47[1](v32, v48);
  if ((v49 & 1) == 0 || (v50 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v46 + *(v50 + 20)) != 1) || *(v46 + *(v50 + 24)) != 1)
  {
    outlined consume of Lyrics.StateManager.LyricsType(v178, v172, v164, v165, v167);
    (*(v166 + 8))(v168, v169);
    goto LABEL_11;
  }

  v51 = v180;
  outlined init with copy of TaskPriority?(v40 + *(v188 + 24), v180, &_s10Foundation4DateVSgMd_0);
  v52 = v183;
  v53 = v184;
  v54 = (*(v183 + 48))(v51, 1, v184);
  v55 = v190;
  if (v54 == 1)
  {
    (*(v166 + 8))(v168, v169);
    outlined consume of Lyrics.StateManager.LyricsType(v178, v172, v164, v165, v167);
    outlined destroy of TaskPriority?(v51, &_s10Foundation4DateVSgMd_0);
    v56 = v192;
    goto LABEL_12;
  }

  (*(v52 + 32))(v182, v51, v53);
  v70 = Logger.lyrics.unsafeMutableAddressor();
  v71 = *(v55 + 16);
  v72 = v174;
  v186 = v70;
  v73 = v192;
  v185 = v71;
  v180 = v55 + 16;
  (v71)(v174);
  v74 = v173;
  outlined init with copy of Lyrics.StateManager.State(v40, v173, type metadata accessor for Lyrics.StateManager.State);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v196 = v78;
    *v77 = 136446210;
    outlined init with copy of Lyrics.StateManager.State(v74, v187, type metadata accessor for Lyrics.StateManager.State);
    v79 = String.init<A>(describing:)();
    v81 = v80;
    v73 = v192;
    outlined destroy of Lyrics.StateManager.State(v74, type metadata accessor for Lyrics.StateManager.State);
    v82 = v79;
    v55 = v190;
    v83 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v82, v81, &v196);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "Reporting lyrics for state=%{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
  }

  else
  {

    outlined destroy of Lyrics.StateManager.State(v74, type metadata accessor for Lyrics.StateManager.State);
  }

  v188 = *(v55 + 8);
  (v188)(v72, v73);
  v84 = v165;
  Date.timeIntervalSinceNow.getter();
  v86 = -v85;
  v87 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v88 = v166;
  v89 = v175;
  v90 = v169;
  (*(v166 + 16))(v175, v168, v169);
  (*(v88 + 56))(v89, 0, 1, v90);
  MPCReportingLyricsViewEvent.song.setter();
  swift_getKeyPath();
  v91 = v181;
  v196 = v181;
  v189 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v92 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v93 = *(v91 + v92);
  if (v93)
  {
    v94 = v93;
    v95 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v95 = 0;
  }

  [v87 setModelPlayEvent:v95];

  [v87 setVisibleDuration:v86];
  swift_getKeyPath();
  v191 = v87;
  v96 = v181;
  v195[4] = v181;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v97 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v98 = v176;
  outlined init with copy of TaskPriority?(v96 + v97, v176, &_s7LyricsX0A0C11TranslationVSgMd);
  v99 = type metadata accessor for Lyrics.Translation(0);
  v100 = (*(*(v99 - 8) + 48))(v98, 1, v99) != 1;
  outlined destroy of TaskPriority?(v98, &_s7LyricsX0A0C11TranslationVSgMd);
  [v191 setDisplayTranslationEnabled:v100];
  swift_getKeyPath();
  v195[1] = v96;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v101 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v102 = v96 + v101;
  v103 = v177;
  outlined init with copy of TaskPriority?(v102, v177, &_s7LyricsX0A0C15TransliterationVSgMd);
  v104 = type metadata accessor for Lyrics.Transliteration(0);
  v105 = (*(*(v104 - 8) + 48))(v103, 1, v104) != 1;
  v106 = v191;
  outlined destroy of TaskPriority?(v103, &_s7LyricsX0A0C15TransliterationVSgMd);
  [v106 setDisplayTransliterationEnabled:v105];
  if (v167)
  {
    v107 = v178;
    v108 = v192;
    if (*(v178 + 24))
    {
      outlined copy of Lyrics.StateManager.LyricsType(v178, v172, v164, v84, 1);

      v109 = String._bridgeToObjectiveC()();
    }

    else
    {

      v109 = 0;
    }

    v118 = v171;
    [v191 setLyricsID:v109];

    (*(*v107 + 232))();
    v119 = type metadata accessor for Locale.Language();
    v120 = *(v119 - 8);
    if ((*(v120 + 48))(v118, 1, v119) == 1)
    {
      outlined destroy of TaskPriority?(v118, &_s10Foundation6LocaleV8LanguageVSgMd);
      v121 = 0;
      v122 = v164;
      v123 = v172;
    }

    else
    {
      v124 = v163;
      Locale.Language.languageCode.getter();
      (*(v120 + 8))(v118, v119);
      v125 = type metadata accessor for Locale.LanguageCode();
      v126 = *(v125 - 8);
      if ((*(v126 + 48))(v124, 1, v125) == 1)
      {
        outlined destroy of TaskPriority?(v124, &_s10Foundation6LocaleV12LanguageCodeVSgMd);
        v121 = 0;
      }

      else
      {
        Locale.LanguageCode.identifier.getter();
        (*(v126 + 8))(v124, v125);
        v121 = String._bridgeToObjectiveC()();
      }

      v84 = v165;
      v122 = v164;
      v123 = v172;
      v108 = v192;
    }

    v106 = v191;
    [v191 setLanguage:v121];

    v130 = v178;
    [v106 setDisplayType:*(v178 + 56)];
    outlined consume of Lyrics.StateManager.LyricsType(v130, v123, v122, v84, 1);
    v110 = v179;
  }

  else
  {
    v110 = v179;
    v108 = v192;
    if (v84 && v84[3])
    {

      v111 = String._bridgeToObjectiveC()();
    }

    else
    {

      v111 = 0;
    }

    [v106 setLyricsID:v111];

    if (v84)
    {
      v112 = *(*v84 + 232);

      v114 = v170;
      v112(v113);

      v115 = type metadata accessor for Locale.Language();
      v116 = *(v115 - 8);
      if ((*(v116 + 48))(v114, 1, v115) == 1)
      {
        outlined destroy of TaskPriority?(v114, &_s10Foundation6LocaleV8LanguageVSgMd);
        v117 = 0;
        v110 = v179;
        v108 = v192;
      }

      else
      {
        v127 = v162;
        Locale.Language.languageCode.getter();
        (*(v116 + 8))(v114, v115);
        v128 = type metadata accessor for Locale.LanguageCode();
        v129 = *(v128 - 8);
        if ((*(v129 + 48))(v127, 1, v128) == 1)
        {
          outlined destroy of TaskPriority?(v127, &_s10Foundation6LocaleV12LanguageCodeVSgMd);
          v117 = 0;
        }

        else
        {
          Locale.LanguageCode.identifier.getter();
          (*(v129 + 8))(v127, v128);
          v117 = String._bridgeToObjectiveC()();
        }

        v110 = v179;
        v84 = v165;
        v106 = v191;
        v108 = v192;
      }
    }

    else
    {
      v117 = 0;
    }

    [v106 setLanguage:v117];

    [v106 setDisplayType:0];
  }

  v131 = String._bridgeToObjectiveC()();
  [v106 setFeatureName:v131];

  [v106 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v132 = v181;
  v193 = v181;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v132 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v106];
  (v185)(v110, v186, v108);
  v133 = v106;
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v195[0] = swift_slowAlloc();
    *v136 = 136446978;
    v193 = [v133 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v137 = String.init<A>(describing:)();
    v139 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v137, v138, v195);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2082;
    v140 = [v133 lyricsID];
    if (v140)
    {
      v141 = v140;
      v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v143;
    }

    else
    {
      v142 = 0;
      v144 = 0;
    }

    v193 = v142;
    v194 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
    v147 = String.init<A>(describing:)();
    v149 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v147, v148, v195);

    *(v136 + 14) = v149;
    *(v136 + 22) = 2082;
    [v133 visibleDuration];
    v150 = Double.description.getter();
    v152 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v150, v151, v195);

    *(v136 + 24) = v152;
    *(v136 + 32) = 2082;
    v153 = [v133 modelSong];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 humanDescription];

      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v158 = v157;
    }

    else
    {
      v156 = 0;
      v158 = 0;
    }

    v193 = v156;
    v194 = v158;
    v159 = String.init<A>(describing:)();
    v161 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v159, v160, v195);

    *(v136 + 34) = v161;
    _os_log_impl(&_mh_execute_header, v134, v135, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v136, 0x2Au);
    swift_arrayDestroy();

    outlined consume of Lyrics.StateManager.LyricsType(v178, v172, v164, v165, v167);
    v145 = v179;
    v146 = v192;
  }

  else
  {

    outlined consume of Lyrics.StateManager.LyricsType(v178, v172, v164, v84, v167);
    v145 = v110;
    v146 = v108;
  }

  (v188)(v145, v146);
  (*(v183 + 8))(v182, v184);
  return (*(v166 + 8))(v168, v169);
}

uint64_t Lyrics.StateManager.deinit()
{
  outlined destroy of Lyrics.StateManager.State(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &_s8MusicKit4SongVSgMd_0);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &_s7LyricsX0A0C11TranslationVSgMd);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &_s7LyricsX0A0C15TransliterationVSgMd);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &_s9MusicCore12MetricsEventV4PageVSgMd_0);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5_0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0__0;

  return v6(a1);
}

uint64_t specialized static Lyrics.StateManager.LyricsType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

uint64_t specialized static Lyrics.StateManager.State.Loading.Error.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v40 - v8;
  v9 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_AJtMd);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v19 = &v40 + *(v18 + 56) - v16;
  outlined init with copy of Lyrics.StateManager.State(a1, &v40 - v16, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined init with copy of Lyrics.StateManager.State(a2, v19, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Lyrics.StateManager.State(v17, v14, type metadata accessor for Lyrics.StateManager.State.Loading);
    v30 = *v14;
    v31 = v14[8];
    if (swift_getEnumCaseMultiPayload())
    {
      outlined consume of Lyrics.StateManager.State.Loading.Error(v30, v31);
      goto LABEL_11;
    }

    v32 = *v19;
    v33 = v19[8];
    if (v31)
    {
      if (v31 == 1)
      {
        if (v33 == 1)
        {
          v34 = *v19;
          type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
          v35 = static NSObject.== infix(_:_:)();
          outlined consume of Lyrics.StateManager.State.Loading.Error(v34, 1);
          outlined consume of Lyrics.StateManager.State.Loading.Error(v30, 1);
          if ((v35 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        outlined consume of Lyrics.StateManager.State.Loading.Error(v32, v33);
        v32 = v30;
        LOBYTE(v33) = 1;
      }

      else if (v30)
      {
        if (v33 == 2 && v32 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v33 == 2 && v32 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v19[8])
    {
      if (v32 != v30)
      {
        goto LABEL_33;
      }

LABEL_9:
      outlined destroy of Lyrics.StateManager.State(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v28 = 1;
      return v28 & 1;
    }

    outlined consume of Lyrics.StateManager.State.Loading.Error(v32, v33);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    outlined destroy of TaskPriority?(v17, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_AJtMd);
LABEL_34:
    v28 = 0;
    return v28 & 1;
  }

  outlined init with copy of Lyrics.StateManager.State(v17, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
  v21 = *(v11 + 1);
  v42[0] = *v11;
  v42[1] = v21;
  v43 = v11[32];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(&v11[v22], v4);
    outlined destroy of Lyrics.StateManager.LyricsType(v42);
    goto LABEL_11;
  }

  v23 = *(v19 + 1);
  v44[0] = *v19;
  v44[1] = v23;
  v45 = v19[32];
  v24 = v41;
  v25 = *(v41 + 32);
  v26 = &v11[v22];
  v27 = v40;
  v25(v40, v26, v4);
  v25(v6, &v19[v22], v4);
  if ((specialized static Lyrics.StateManager.LyricsType.== infix(_:_:)(v42, v44) & 1) == 0)
  {
    outlined destroy of Lyrics.StateManager.LyricsType(v44);
    outlined destroy of Lyrics.StateManager.LyricsType(v42);
    v36 = *(v24 + 8);
    v36(v6, v4);
    v36(v27, v4);
LABEL_33:
    outlined destroy of Lyrics.StateManager.State(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v28 = static Song.== infix(_:_:)();
  outlined destroy of Lyrics.StateManager.LyricsType(v44);
  outlined destroy of Lyrics.StateManager.LyricsType(v42);
  v29 = *(v24 + 8);
  v29(v6, v4);
  v29(v27, v4);
  outlined destroy of Lyrics.StateManager.State(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v28 & 1;
}

BOOL specialized static Lyrics.StateManager.State.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v27 = v5;
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  v15 = *(v14 + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  if ((static ScenePhase.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v16 + *(v18 + 20)) != *(v17 + *(v18 + 20)) || *(v16 + *(v18 + 24)) != *(v17 + *(v18 + 24)))
  {
    return 0;
  }

  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  outlined init with copy of TaskPriority?(a1 + v19, v13, &_s10Foundation4DateVSgMd_0);
  outlined init with copy of TaskPriority?(a2 + v19, &v13[v20], &_s10Foundation4DateVSgMd_0);
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v20], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s10Foundation4DateVSgMd_0);
      return 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of TaskPriority?(v13, v10, &_s10Foundation4DateVSgMd_0);
  if (v22(&v13[v20], 1, v4) == 1)
  {
    (*(v21 + 8))(v10, v4);
LABEL_10:
    outlined destroy of TaskPriority?(v13, &_s10Foundation4DateVSg_ADtMd);
    return 0;
  }

  (*(v21 + 32))(v7, &v13[v20], v4);
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v21 + 8);
  v25(v7, v4);
  v25(v10, v4);
  outlined destroy of TaskPriority?(v13, &_s10Foundation4DateVSgMd_0);
  return (v24 & 1) != 0;
}

uint64_t outlined init with copy of Lyrics.StateManager.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Lyrics.StateManager.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002EA064(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t specialized Lyrics.StateManager.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSg_ADtMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of TaskPriority?(a1, &v21 - v12, &_s8MusicKit4SongVSgMd_0);
  outlined init with copy of TaskPriority?(a2, &v13[v15], &_s8MusicKit4SongVSgMd_0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of TaskPriority?(v13, v10, &_s8MusicKit4SongVSgMd_0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&_s8MusicKit4SongVACSQAAWL_0, &type metadata accessor for Song);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      outlined destroy of TaskPriority?(v13, &_s8MusicKit4SongVSgMd_0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of TaskPriority?(v13, &_s8MusicKit4SongVSg_ADtMd);
    v17 = 1;
    return v17 & 1;
  }

  outlined destroy of TaskPriority?(v13, &_s8MusicKit4SongVSgMd_0);
  v17 = 0;
  return v17 & 1;
}

uint64_t partial apply for closure #1 in Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Lyrics.StateManager.retryLoadingLyrics()();
}

uint64_t outlined assign with copy of Lyrics.StateManager.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Lyrics.StateManager()
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Song?(319, &lazy cache variable for type metadata for Song?, &type metadata accessor for Song);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Song?(319, &lazy cache variable for type metadata for Lyrics.Translation?, type metadata accessor for Lyrics.Translation);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Song?(319, &lazy cache variable for type metadata for Lyrics.Transliteration?, type metadata accessor for Lyrics.Transliteration);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Song?(319, &_s9MusicCore12MetricsEventV4PageVSgML_0, type metadata accessor for MetricsEvent.Page);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002EA9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1002EAB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void type metadata completion function for Lyrics.StateManager.State()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Song?(319, &_s10Foundation4DateVSgML_0, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Song?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for Lyrics.StateManager.State.Loading()
{
  type metadata accessor for (Lyrics.StateManager.LyricsType, Song)();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (Lyrics.StateManager.LyricsType, Song)()
{
  if (!lazy cache variable for type metadata for (Lyrics.StateManager.LyricsType, Song))
  {
    type metadata accessor for Song();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Lyrics.StateManager.LyricsType, Song));
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO(uint64_t a1)
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

uint64_t sub_1002EAE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002EAF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScenePhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for Lyrics.StateManager.State.Display()
{
  result = type metadata accessor for ScenePhase();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.StateManager.LyricsType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.StateManager.LyricsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EB178()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSg_Tg5TA_116(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined consume of Lyrics.StateManager.LyricsType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t outlined copy of Lyrics.StateManager.LyricsType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t outlined init with take of MetricsEvent.Page?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in Lyrics.StateManager.lyricsReportingController.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in Lyrics.StateManager.loader.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5(a1, v4);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void outlined consume of Lyrics.StateManager.State.Loading.Error(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_1(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5_0(a1, v4);
}

uint64_t partial apply for closure #1 in Lyrics.StateManager._song.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Lyrics.StateManager._song.didset();
}

uint64_t outlined init with take of Lyrics.StateManager.State.Loading(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Lyrics.StateManager.optionsObserver.setter(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t partial apply for closure #1 in Lyrics.StateManager.showTranslationButton.setter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v30.receiver = v4;
  v30.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x80000001004D11E0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  LOBYTE(v50[0]) = 1;
  *&v33 = 0x6F68706F7263694DLL;
  *(&v33 + 1) = 0xEA0000000000656ELL;
  *&v34 = static NSBundle.module;
  *(&v34 + 1) = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 0x3FF0000000000000;
  v38 = 0;
  *&v39 = 0;
  *(&v39 + 1) = _swiftEmptyArrayStorage;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v43 = v33;
  v44 = v34;
  v49 = 1;
  v47 = v39;
  v48 = 0u;
  v13 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v45 = 0u;
  v46 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 2);
  v31[1] = *(v13 + 1);
  v31[2] = v15;
  v31[0] = v14;
  v16 = *(v13 + 3);
  v17 = *(v13 + 4);
  v18 = *(v13 + 5);
  v32 = v13[96];
  v31[4] = v17;
  v31[5] = v18;
  v31[3] = v16;
  v20 = *(v13 + 4);
  v19 = *(v13 + 5);
  v21 = *(v13 + 3);
  v51 = v13[96];
  v50[4] = v20;
  v50[5] = v19;
  v50[3] = v21;
  v22 = *v13;
  v23 = *(v13 + 2);
  v50[1] = *(v13 + 1);
  v50[2] = v23;
  v50[0] = v22;
  v24 = v48;
  *(v13 + 4) = v47;
  *(v13 + 5) = v24;
  v13[96] = v49;
  v25 = v44;
  *v13 = v43;
  *(v13 + 1) = v25;
  v26 = v46;
  *(v13 + 2) = v45;
  *(v13 + 3) = v26;
  v27 = v12;
  outlined init with copy of CAPackageDefinition?(v31, v29);
  outlined init with copy of CAPackageDefinition(&v33, v29);
  outlined destroy of CAPackageDefinition?(v50);
  VerticalToggleSlider.packageDefinition.didset(v31);
  outlined destroy of CAPackageDefinition?(v31);
  outlined destroy of CAPackageDefinition(&v33);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t outlined init with copy of CAPackageDefinition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI19CAPackageDefinitionVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAPackageDefinition?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI19CAPackageDefinitionVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for glowTextReveal()
{
  lazy protocol witness table accessor for type GlowTextRevealTransition and conformance GlowTextRevealTransition();
  result = AnyTransition.init<A>(_:)();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (one-time initialization token for glowTextReveal != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (one-time initialization token for glowTextReveal != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (TransitionPhase.isIdentity.getter())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB024GlowTextRevealTransitionVGMd);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB024GlowTextRevealTransitionVGAA01_j8RendererF8ModifierVyAF0ijk6EffectM0VGGMd);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return GlowTextRevealEffectRenderer.animatableData.modify;
}

uint64_t GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v63 = a2;
  v62 = type metadata accessor for GraphicsContext.Filter();
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtMd);
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v49 - v6;
  v71 = type metadata accessor for Text.Layout.Line();
  v55 = *(v71 - 8);
  __chkstk_darwin(v71);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v49 - v14);
  v16 = type metadata accessor for Text.Layout();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy7SwiftUI4TextV6LayoutVGMd);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy7SwiftUI4TextV6LayoutV_GMd);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v68 = GlowTextRevealEffectRenderer.lineProgress(with:)(a1, a3);
  (*(v17 + 16))(v22, a1, v16);
  v27 = v22;
  v28 = v26;
  (*(v17 + 32))(v19, v27, v16);
  lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  dispatch thunk of Sequence.makeIterator()();
  v50 = *(v24 + 44);
  *&v26[v50] = 0;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI4TextV6LayoutVGMd) + 36);
  v30 = lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  v66 = 0;
  v51 = (v55 + 16);
  v70 = (v55 + 32);
  v31 = v64;
  v64 += 6;
  v65 = (v31 + 7);
  v54 = (v56 + 8);
  v53 = (v55 + 8);
  v56 = v29;
  v55 = v30;
  v59 = v15;
  v58 = v16;
  v57 = v12;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v28 + v29) == v73[0])
    {
      v32 = 1;
      v33 = v69;
      goto LABEL_6;
    }

    v34 = dispatch thunk of Collection.subscript.read();
    v35 = v52;
    v36 = v71;
    (*v51)(v52);
    v34(v73, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v33 = v69;
    v37 = v70;
    v38 = *(v69 + 48);
    v40 = v66;
    v39 = v67;
    *v67 = v66;
    result = (*v37)(&v39[v38], v35, v36);
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v66 = v40 + 1;
    *(v28 + v50) = v40 + 1;
    outlined init with take of URL?(v67, v12, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtMd);
    v32 = 0;
LABEL_6:
    (*v65)(v12, v32, 1, v33);
    outlined init with take of URL?(v12, v15, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtSgMd);
    if ((*v64)(v15, 1, v33) == 1)
    {
      outlined destroy of EnumeratedSequence<Text.Layout>.Iterator(v28);
    }

    v42 = *v15;
    v43 = v15 + *(v33 + 48);
    v44 = v60;
    (*v70)(v60, v43, v71);
    v73[0] = *v63;
    __chkstk_darwin(v73[0]);
    *(&v49 - 4) = a3;
    v45 = v68;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;

    v46 = GraphicsContext.clipToLayer(opacity:options:content:)();
    v72 = v73[0];
    __chkstk_darwin(v46);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;
    v12 = v57;

    GraphicsContext.clipToLayer(opacity:options:content:)();
    v47 = v61;
    static GraphicsContext.Filter.blur(radius:options:)();
    GraphicsContext.addFilter(_:options:)();
    (*v54)(v47, v62);
    GraphicsContext.draw(_:options:)();
    GraphicsContext.draw(_:options:)();

    v48 = v44;
    v15 = v59;
    (*v53)(v48, v71);
    v29 = v56;
  }

  __break(1u);
  return result;
}

id *GlowTextRevealEffectRenderer.lineProgress(with:)(uint64_t a1, double a2)
{
  v33 = type metadata accessor for Text.Layout.Line();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Layout();
  lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout);
  v7 = dispatch thunk of Collection.count.getter();
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = v7;
    v34 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    v8 = v34;
    dispatch thunk of Collection.startIndex.getter();
    if (v9 < 0)
    {
      goto LABEL_24;
    }

    v32 = (v4 + 16);
    do
    {
      v10 = dispatch thunk of Collection.subscript.read();
      v11 = v33;
      (*v32)(v6);
      v10(v40, 0);
      Text.Layout.Line.typographicBounds.getter();
      v41.origin.x = v35;
      v41.size.width = v37;
      v41.origin.y = v36 - v38;
      v41.size.height = v38 + v39;
      Width = CGRectGetWidth(v41);
      (*(v4 + 8))(v6, v11);
      v34 = v8;
      v13 = a1;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v8 = v34;
      }

      v8[2] = (v15 + 1);
      *&v8[v15 + 4] = Width;
      dispatch thunk of Collection.formIndex(after:)();
      --v9;
      a1 = v13;
    }

    while (v9);
  }

  v16 = v8[2];
  if (!v16)
  {
    v18 = 0.0;
    goto LABEL_16;
  }

  if (v16 <= 3)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_14:
    v21 = v16 - v17;
    v22 = &v8[v17 + 4];
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v19 = (v8 + 6);
  v18 = 0.0;
  v20 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_14;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = 0;
  if (v16)
  {
    v25 = 0;
    while (v25 < v8[2])
    {
      v26 = *&v8[v25 + 4];
      v27 = v25 + 1;
      v28 = *(inited + 8 * v25 + 32);
      v29 = *(inited + 24);
      if (v25 + 1 >= v29 >> 1)
      {
        inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v25 + 2, 1, inited);
      }

      *(inited + 16) = v25 + 2;
      *(inited + 8 * v25++ + 40) = v26 / v18 + v28;
      if (v16 == v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v40[0] = inited;
  v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sds5NeverOTg5142_s11MusicCoreUI28GlowTextRevealEffectRendererV12lineProgress33_ED0BDDCA58480CC0F9DA42494B3FDE894withSaySdG05SwiftC00E0V6LayoutV_tFSdSiXEfU1_0fG2UI0ijklM0VSaySdGTf1cn_n(0, v16, v40, a2);

  return v30;
}

uint64_t lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Text.Layout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of EnumeratedSequence<Text.Layout>.Iterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy7SwiftUI4TextV6LayoutV_GMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer()
{
  result = lazy protocol witness table cache variable for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer;
  if (!lazy protocol witness table cache variable for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer);
  }

  return result;
}

id *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sds5NeverOTg5142_s11MusicCoreUI28GlowTextRevealEffectRendererV12lineProgress33_ED0BDDCA58480CC0F9DA42494B3FDE89LL4withSaySdG05SwiftC00E0V6LayoutV_tFSdSiXEfU1_0fG2UI0ijklM0VSaySdGTf1cn_n(id *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = result[2];
      v15 = result[3];
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      result[2] = (v16 + 1);
      *&result[v16 + 4] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance GlowTextRevealEffectRenderer(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance GlowTextRevealEffectRenderer(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance GlowTextRevealEffectRenderer;
}

double protocol witness for Animatable.animatableData.modify in conformance GlowTextRevealEffectRenderer(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB024GlowTextRevealTransitionVGAA01_j8RendererF8ModifierVyAF0ijk6EffectM0VGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<GlowTextRevealTransition> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB024GlowTextRevealTransitionVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TextRendererViewModifier<GlowTextRevealEffectRenderer> and conformance _TextRendererViewModifier<A>, &_s7SwiftUI25_TextRendererViewModifierVy09MusicCoreB004Glowc12RevealEffectD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized GlowTextRevealEffectRenderer.drawMaskReveal(line:progress:in:)()
{
  v0 = type metadata accessor for GraphicsContext.Shading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2EF0;
  *(v4 + 32) = static Color.white.getter();
  *(v4 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  *&v10.origin.x = v6[13];
  *&v10.size.width = v6[15];
  v10.origin.y = *&v6[14] - v7;
  v10.size.height = v7 + v8;
  CGRectInset(v10, -14.0, 0.0);
  Path.init(_:)();
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v9);
  return (*(v1 + 8))(v3, v0);
}

uint64_t specialized GlowTextRevealEffectRenderer.drawGlowReveal(line:progress:in:)()
{
  v0 = type metadata accessor for GraphicsContext.Shading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2EE0;
  static Color.clear.getter();
  *(v4 + 32) = Gradient.Stop.init(color:location:)();
  *(v4 + 40) = v5;
  static Color.white.getter();
  *(v4 + 48) = Gradient.Stop.init(color:location:)();
  *(v4 + 56) = v6;
  static Color.white.getter();
  *(v4 + 64) = Gradient.Stop.init(color:location:)();
  *(v4 + 72) = v7;
  static Color.clear.getter();
  *(v4 + 80) = Gradient.Stop.init(color:location:)();
  *(v4 + 88) = v8;
  Gradient.init(stops:)();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  *&v14.origin.x = v10[13];
  *&v14.size.width = v10[15];
  v14.origin.y = *&v10[14] - v11;
  v14.size.height = v11 + v12;
  CGRectInset(v14, -57.5, 0.0);
  Path.init(_:)();
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v13);
  return (*(v1 + 8))(v3, v0);
}

unint64_t lazy protocol witness table accessor for type GlowTextRevealTransition and conformance GlowTextRevealTransition()
{
  result = lazy protocol witness table cache variable for type GlowTextRevealTransition and conformance GlowTextRevealTransition;
  if (!lazy protocol witness table cache variable for type GlowTextRevealTransition and conformance GlowTextRevealTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowTextRevealTransition and conformance GlowTextRevealTransition);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      String.hash(into:)();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      Hasher._combine(_:)(v5);
    }

    else
    {

      String.hash(into:)();
    }
  }

  else
  {
    String.hash(into:)();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
    Hasher._combine(_:)(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  Hasher.init(_seed:)();
  Corner.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Corner()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Corner.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Corner()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Corner.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Corner(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(double a1, double a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a4;
  v8 = static Color.== infix(_:_:)() & (a1 == a2);
  if (v7 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  Color.hash(into:)();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(a4);
}

Swift::Int Border.hashValue.getter(double a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  Color.hash(into:)();
  v5 = 0.0;
  if (a1 != 0.0)
  {
    v5 = a1;
  }

  Hasher._combine(_:)(*&v5);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Border()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Color.hash(into:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Border()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  Color.hash(into:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Border(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = static Color.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)()
{
  Color.hash(into:)();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[2];
  v3 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
}

Swift::Int Shadow.hashValue.getter()
{
  Hasher.init(_seed:)();
  Shadow.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Shadow()
{
  Hasher.init(_seed:)();
  Shadow.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Shadow(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = static Color.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance CornerRadiusModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012CornerRadiusD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGAA05_ClipT0VyAF0I5ShapeAHLLVGGMd);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t BorderViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = static Alignment.center.getter();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006BordercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006BordereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA08_OverlayF0VyAA011StrokeShapeE0VyAF06CornerS0AHLLVAA5ColorVAA05EmptyE0VGGGMd) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  outlined init with copy of TaskPriority?(&v27, &v23, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMd);
  return outlined destroy of TaskPriority?(v35, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMd);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v5 = *a1;
  *&v5[8] = *(a1 + 8);
  *&v5[24] = *(a1 + 24);
  *&v5[40] = a2;
  *&v5[48] = a3;
  v5[56] = a4;

  View.modifier<A>(_:)();
  v6[0] = *v5;
  v6[1] = *&v5[16];
  v7[0] = *&v5[32];
  *(v7 + 9) = *&v5[41];
  return outlined destroy of ShadowViewModifier(v6);
}

uint64_t closure #1 in closure #1 in ShadowViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  v11 = *(a1 + 48);
  v39 = *(a1 + 40);
  v37 = *(a1 + 56);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  outlined init with copy of ShadowViewModifier(a1, v49);
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v49[0]) = 0;
  v25 = *(v5 + 44);
  v26 = enum case for BlendMode.destinationOut(_:);
  v27 = type metadata accessor for BlendMode();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  v28 = v39;
  *v10 = v39;
  *(v10 + 1) = v11;
  v29 = v11;
  v38 = v11;
  LOBYTE(v11) = v37;
  v10[16] = v37;
  *(v10 + 3) = 0;
  outlined init with copy of TaskPriority?(v10, v7, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd);
  *&v42 = v28;
  *(&v42 + 1) = v29;
  LOBYTE(v43) = v11;
  *(&v43 + 1) = *v41;
  HIDWORD(v43) = *&v41[3];
  v44 = 0;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  *&v46 = v14;
  *(&v46 + 1) = v15;
  LOBYTE(v47) = v16;
  *(&v47 + 1) = *v40;
  DWORD1(v47) = *&v40[3];
  *(&v47 + 1) = v18;
  *&v48[0] = v20;
  *(&v48[0] + 1) = v22;
  *&v48[1] = v24;
  BYTE8(v48[1]) = 0;
  v30 = v43;
  *a2 = v42;
  a2[1] = v30;
  v31 = v45;
  v32 = v46;
  *(a2 + 89) = *(v48 + 9);
  v33 = v48[0];
  a2[4] = v47;
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_ACyAiA16_BlendModeEffectVGtMd);
  outlined init with copy of TaskPriority?(v7, a2 + *(v34 + 48), &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd);
  outlined init with copy of TaskPriority?(&v42, v49, &_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVGMd);
  outlined destroy of TaskPriority?(v10, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd);
  outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd);
  v49[0] = v39;
  v49[1] = v38;
  v50 = v11;
  *v51 = *v41;
  *&v51[3] = *&v41[3];
  v52 = 0;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  *v58 = *v40;
  *&v58[3] = *&v40[3];
  v59 = v18;
  v60 = v20;
  v61 = v22;
  v62 = v24;
  v63 = 0;
  return outlined destroy of TaskPriority?(v49, &_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVGMd);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ShadowViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006ShadoweF033_F5ED3014321945F1E2BE58A044A15282LLVGAA011_BackgroundF0VyACyAA6ZStackVyAA05TupleE0VyACyAA01_iE0VyAF11CornerShapeAHLLVGAA14_PaddingLayoutVG_ACyAtA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGGMd) + 36));
  *v9 = static Alignment.center.getter();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA07_ShadowD0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA08_PaddingG0VG_AKyAqA16_BlendModeEffectVGtGGMd);
  closure #1 in closure #1 in ShadowViewModifier.body(content:)(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAEyAA07_ShadowI0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_AEyAoA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGMd) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006ShadowcD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance HoverViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v3 = type metadata accessor for HighlightHoverEffect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = *(v2 + 16);
  v13 = *(v2 + 3);
  v15 = v18 + *(v14 + 36) - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVy09MusicCoreB006CornerD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  static ContentShapeKinds.hoverEffect.getter();
  *v15 = v10;
  *(v15 + 1) = v11;
  v15[16] = v12;
  *(v15 + 3) = -v13;
  v15[32] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB005HovercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
  (*(*(v16 - 8) + 16))(v9, v18[0], v16);
  static CustomHoverEffect<>.highlight.getter();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HighlightHoverEffect and conformance HighlightHoverEffect();
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v4 + 8))(v6, v3);
  return outlined destroy of TaskPriority?(v9, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd);
}

void CornerShape.path(in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v48) = a3;
  v46 = a2;
  *&v47 = a1;
  v49 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4EdgeOAAE6CornerO5StyleVSgMd);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Edge.Corner.Style();
  v43 = *(v17 - 8);
  __chkstk_darwin(v17);
  v18 = type metadata accessor for ConcentricRectangle();
  v44 = *(v18 - 8);
  v45 = v18;
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RoundedCornerStyle();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Capsule();
  __chkstk_darwin(v25 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RoundedRectangle._Inset();
  v29 = __chkstk_darwin(v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v48)
  {
    v33 = v46;
    if (v46 == -1)
    {
      v40 = type metadata accessor for RoundedRectangle();
      (*(v22 + 104))(&v31[*(v40 + 20)], enum case for RoundedCornerStyle.continuous(_:), v21);
      v41 = v47;
      *v31 = v47;
      *(v31 + 1) = v41;
      *&v31[*(v28 + 20)] = a9;
      RoundedRectangle._Inset.path(in:)();
      v47 = v50;
      v48 = v51;
      v32 = v52;
      outlined destroy of Capsule(v31, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v34 = *&v47;
      v54.origin.x = a5;
      v54.origin.y = a6;
      v54.size.width = a7;
      v54.size.height = a8;
      v55 = CGRectInset(v54, a9, a9);
      v35 = [objc_opt_self() bezierPathWithRoundedRect:v33 byRoundingCorners:v55.origin.x cornerRadii:{v55.origin.y, v55.size.width, v55.size.height, v34, v34}];
      v36 = [v35 CGPath];
      Path.init(_:)();
      v47 = v50;
      v48 = v51;
      v32 = v52;
    }

    goto LABEL_8;
  }

  if (v48 == 1)
  {
    static Edge.Corner.Style.fixed(_:)();
    (*(v43 + 56))(v16, 0, 1, v17);
    static Edge.Corner.Style.concentric(minimum:)();
    outlined destroy of TaskPriority?(v16, &_s7SwiftUI4EdgeOAAE6CornerO5StyleVSgMd);
    ConcentricRectangle.init(corners:isUniform:)();
    v53.origin.x = a5;
    v53.origin.y = a6;
    v53.size.width = a7;
    v53.size.height = a8;
    CGRectInset(v53, a9, a9);
    ConcentricRectangle.path(in:)();
    v47 = v50;
    v48 = v51;
    v32 = v52;
    (*(v44 + 8))(v20, v45);
LABEL_8:
    v39 = v47;
    v38 = v48;
    goto LABEL_9;
  }

  v37 = *(v22 + 104);
  v37(v27, enum case for RoundedCornerStyle.continuous(_:), v21, v29);
  (v37)(v24, enum case for RoundedCornerStyle.circular(_:), v21);
  static RoundedCornerStyle.== infix(_:_:)();
  (*(v22 + 8))(v24, v21);
  outlined destroy of Capsule(v27, &type metadata accessor for Capsule);
  Capsule._Inset.path(in:)();
  v39 = v50;
  v38 = v51;
  v32 = v52;
LABEL_9:
  v42 = v49;
  *v49 = v39;
  v42[1] = v38;
  *(v42 + 32) = v32;
}

double protocol witness for InsettableShape.inset(by:) in conformance CornerShape@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance CornerShape@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CornerShape.path(in:)(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance CornerShape(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CornerShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CornerShape and conformance CornerShape();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CornerShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CornerShape and conformance CornerShape();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance CornerShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CornerShape and conformance CornerShape();

  return Shape.body.getter(a1, v2);
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (one-time initialization token for extraSmall != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (one-time initialization token for extraSmall != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (one-time initialization token for small != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (one-time initialization token for small != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (one-time initialization token for medium != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (one-time initialization token for medium != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (one-time initialization token for large != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (one-time initialization token for large != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (one-time initialization token for extraLarge != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (one-time initialization token for extraLarge != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

id closure #1 in variable initialization expression of static Border.artwork(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_1005079E0[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v0 = *&qword_10063F0B8;

  return v0;
}

double one-time initialization function for shallow()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.shallow = v0;
  unk_10063F0D0 = xmmword_1005079F0;
  result = 2.0;
  unk_10063F0E0 = xmmword_100507A00;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (one-time initialization token for shallow != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shallow != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_10063F0D0;
  *(a1 + 24) = unk_10063F0E0;
}

double one-time initialization function for intermediate()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.intermediate = v0;
  unk_10063F0F8 = xmmword_100507A10;
  result = 15.0;
  unk_10063F108 = xmmword_100507A20;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (one-time initialization token for intermediate != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for intermediate != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_10063F0F8;
  *(a1 + 24) = unk_10063F108;
}

double one-time initialization function for deep()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.deep = v0;
  *algn_10063F120 = xmmword_100507A30;
  result = 25.0;
  *&algn_10063F120[16] = xmmword_100507A40;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (one-time initialization token for deep != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for deep != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = *algn_10063F120;
  *(a1 + 24) = *&algn_10063F120[16];
}

unint64_t lazy protocol witness table accessor for type Corner and conformance Corner()
{
  result = lazy protocol witness table cache variable for type Corner and conformance Corner;
  if (!lazy protocol witness table cache variable for type Corner and conformance Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Corner and conformance Corner);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Border.StrokeStyle and conformance Border.StrokeStyle()
{
  result = lazy protocol witness table cache variable for type Border.StrokeStyle and conformance Border.StrokeStyle;
  if (!lazy protocol witness table cache variable for type Border.StrokeStyle and conformance Border.StrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Border.StrokeStyle and conformance Border.StrokeStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Border and conformance Border()
{
  result = lazy protocol witness table cache variable for type Border and conformance Border;
  if (!lazy protocol witness table cache variable for type Border and conformance Border)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Border and conformance Border);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Shadow and conformance Shadow()
{
  result = lazy protocol witness table cache variable for type Shadow and conformance Shadow;
  if (!lazy protocol witness table cache variable for type Shadow and conformance Shadow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shadow and conformance Shadow);
  }

  return result;
}

uint64_t getEnumTag for Corner(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy40_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier()
{
  result = lazy protocol witness table cache variable for type CornerRadiusModifier and conformance CornerRadiusModifier;
  if (!lazy protocol witness table cache variable for type CornerRadiusModifier and conformance CornerRadiusModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerRadiusModifier and conformance CornerRadiusModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderViewModifier and conformance BorderViewModifier()
{
  result = lazy protocol witness table cache variable for type BorderViewModifier and conformance BorderViewModifier;
  if (!lazy protocol witness table cache variable for type BorderViewModifier and conformance BorderViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderViewModifier and conformance BorderViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShadowViewModifier and conformance ShadowViewModifier()
{
  result = lazy protocol witness table cache variable for type ShadowViewModifier and conformance ShadowViewModifier;
  if (!lazy protocol witness table cache variable for type ShadowViewModifier and conformance ShadowViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowViewModifier and conformance ShadowViewModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type HoverViewModifier and conformance HoverViewModifier()
{
  result = lazy protocol witness table cache variable for type HoverViewModifier and conformance HoverViewModifier;
  if (!lazy protocol witness table cache variable for type HoverViewModifier and conformance HoverViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverViewModifier and conformance HoverViewModifier);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HoverViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShadowViewModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ShadowViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BorderViewModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BorderViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HoverViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB005HovercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<CornerShape> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVy09MusicCoreB006CornerD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightHoverEffect and conformance HighlightHoverEffect()
{
  result = lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect;
  if (!lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect)
  {
    type metadata accessor for HighlightHoverEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect);
  }

  return result;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for CornerShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for CornerShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGAA05_ClipT0VyAF0I5ShapeAHLLVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<CornerShape> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CornerRadiusModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012CornerRadiusD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006BordereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA08_OverlayF0VyAA011StrokeShapeE0VyAF06CornerS0AHLLVAA5ColorVAA05EmptyE0VGGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BorderViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006BordercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006ShadoweF033_F5ED3014321945F1E2BE58A044A15282LLVGAA011_BackgroundF0VyACyAA6ZStackVyAA05TupleE0VyACyAA01_iE0VyAF11CornerShapeAHLLVGAA14_PaddingLayoutVG_ACyAtA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShadowViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006ShadowcD033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAEyAA07_ShadowI0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_AEyAoA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_1002F0984()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd);
  type metadata accessor for HighlightHoverEffect();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HighlightHoverEffect and conformance HighlightHoverEffect();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type CornerShape and conformance CornerShape()
{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

uint64_t outlined destroy of Capsule(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id *_ss15_arrayForceCastySayq_GSayxGr0_lF10Foundation3URLV_AFSgTg5_0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_0(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_0(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = (v15 + 1);
      _s10Foundation3URLVSgWOb_0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

id *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        _sSo10CGColorRefaMa_0(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v7 + 1);
        outlined init with take of Any(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _sSo10CGColorRefaMa_0(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v11 + 1);
        outlined init with take of Any(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t GradientProperties.colors.getter(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF_0(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = static Array._adoptStorage(_:count:)();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  type metadata accessor for Array();
  return v5;
}

double specialized GradientProperties.locations.getter()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F3070;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100507A50, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double GradientProperties.locations.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F3070;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100507A50, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

id *GradientProperties<>.stops.getter(uint64_t a1, void *a2)
{
  v4 = GradientProperties.colors.getter(a1, a2);
  GradientProperties.locations.getter(a1, a2);
  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI5ColorVGSaySdGG_AH8GradientV4StopVs5NeverOTg503_s7f3UI5h6VSdAA8i2V4j17VIggyo_AC_SdtAGs5k80OIegnrzr_TR017_s11MusicCoreUI18d15PropertiesPAA05a3C05c25VAERtzrlE5stopsSayAD0D0p11E16VGvgAlF_S15XEfU_Tf3nnnpf_nTf1cn_n(v4, v5);

  return v6;
}

id *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI5ColorVGSaySdGG_AH8GradientV4StopVs5NeverOTg503_s7f3UI5h6VSdAA8i2V4j17VIggyo_AC_SdtAGs5k80OIegnrzr_TR017_s11MusicCoreUI18d15PropertiesPAA05a3C05c25VAERtzrlE5stopsSayAD0D0p11E16VGvgAlF_S15XEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = Gradient.Stop.init(color:location:)();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = (v13 + 1);
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = Gradient.Stop.init(color:location:)();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = (v21 + 1);
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #1 in StrokeView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v24);
  v4 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v25);
  v5 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v26);
  v6 = static Color.white.getter();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  outlined init with copy of TaskPriority?(v30, v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  outlined init with copy of TaskPriority?(v34, v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  outlined init with copy of TaskPriority?(&v38, v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  outlined destroy of TaskPriority?(v43, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  outlined destroy of TaskPriority?(v49, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return outlined destroy of TaskPriority?(v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
}

double protocol witness for View.body.getter in conformance StrokeView@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in StrokeView.body.getter(v18, &v36);
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  v34[10] = v46;
  v34[11] = v47;
  v34[12] = v48;
  v34[6] = v42;
  v34[7] = v43;
  v34[8] = v44;
  v34[9] = v45;
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v34[5] = v41;
  v33 = v49;
  v35 = v49;
  v34[0] = v36;
  v34[1] = v37;
  outlined init with copy of TaskPriority?(&v20, v17, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMd);
  outlined destroy of TaskPriority?(v34, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMd);
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v36 = v20;
  v37 = v21;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMd) + 36);
  v8 = enum case for BlendMode.plusLighter(_:);
  v9 = type metadata accessor for BlendMode();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v6;
  v10 = v47;
  *(a1 + 176) = v46;
  *(a1 + 192) = v10;
  *(a1 + 208) = v48;
  *(a1 + 224) = v49;
  v11 = v43;
  *(a1 + 112) = v42;
  *(a1 + 128) = v11;
  v12 = v45;
  *(a1 + 144) = v44;
  *(a1 + 160) = v12;
  v13 = v39;
  *(a1 + 48) = v38;
  *(a1 + 64) = v13;
  v14 = v41;
  *(a1 + 80) = v40;
  *(a1 + 96) = v14;
  result = *&v36;
  v16 = v37;
  *(a1 + 16) = v36;
  *(a1 + 32) = v16;
  return result;
}

uint64_t GradientMaskModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  v5 = type metadata accessor for ModifiedContent();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v20 = *(a2 + 16);
  v21 = v3;
  static Alignment.center.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd);
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient);
  View.mask<A>(alignment:_:)();
  v12 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<ModifiedContent<LinearGradient, _FrameLayout>> and conformance _MaskAlignmentEffect<A>, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  v22 = WitnessTable;
  v23 = v12;
  v13 = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v7, v5, v13);
  v14 = *(v17 + 8);
  v14(v7, v5);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v10, v5, v13);
  return (v14)(v10, v5);
}

double closure #1 in GradientMaskModifier.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  GradientProperties<>.stops.getter(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t GlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for RoundedCornerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36));
  v13 = type metadata accessor for RoundedRectangle();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)) = 256;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB004GlowD0VGMd);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = static Alignment.center.getter();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  Path.init(roundedRect:cornerRadius:style:)();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = static Color.white.getter();
  v43 = v26;
  v27 = static Color.clear.getter();
  static Color.white.getter();
  v28 = Color.opacity(_:)();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGGMd);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  outlined init with copy of TaskPriority?(&v57, &v47, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMd);
  return outlined destroy of TaskPriority?(v65, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMd);
}

__n128 _s11MusicCoreUI8GlowViewC24StaticGradientProperties33_D2284C9348FF36AA381FDC545CBE5EACLLVAA0gH0A2aGP10startPoint0Q0QzvgTW_0@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 _s11MusicCoreUI8GlowViewC24StaticGradientProperties33_D2284C9348FF36AA381FDC545CBE5EACLLVAA0gH0A2aGP8endPoint0Q0QzvgTW_0@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlowModifier.StaticGradientProperties(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static GlowModifier.StaticGradientProperties.__derived_struct_equals(_:_:)(v7, v8) & 1;
}

uint64_t closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for RoundedCornerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA018PlaceholderContentC0VyxG_qd__tYbcqd_2_qd__ct0G0Qyd_2_Rsd__SQRd_0_AaBRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeC0V_AO20AnimatedGlowModifierV0Q18GradientPropertiesVSbAA08ModifiedL0VyAJyAQGAO0t4MaskS0VyAUGGAA13KeyframeTrackVyAUSdAA0xyL7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tALQyd__RszAA0xyL0Rd__AAA9_Rd_0_ALQyd_0_A8_RSr0_lFZQOySd_AA04MoveX0VySdGAA06SpringX0VySdGQo_GQo_Md);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin(v7);
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  Path.init(roundedRect:cornerRadius:style:)();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  Path.init(roundedRect:cornerRadius:style:)();
  v13 = static Color.white.getter();
  v14 = static Color.clear.getter();
  static Color.white.getter();
  v15 = Color.opacity(_:)();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  outlined init with copy of Path.Storage(v44, v33);
  Path.addPath(_:transform:)();
  outlined destroy of Path(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 64);
  LOBYTE(v29) = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.getter();
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  v16[5] = *(a1 + 64);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v19;
  outlined init with copy of AnimatedGlowModifier(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd);
  lazy protocol witness table accessor for type StrokeView and conformance StrokeView();
  lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type KeyframeTrack<AnimatedGlowModifier.AnimatedGradientProperties, Double, <<opaque return type of static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd);
  v20 = v24;
  View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  outlined destroy of AnimatedGlowModifier.AnimatedGradientProperties(&v28);
  outlined destroy of Path(v39);
  v33[0] = *(a1 + 88);
  LOBYTE(v33[1]) = *(a1 + 104);
  Binding.wrappedValue.getter();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0I0Qyd_2_Rsd__SQRd_0_AaDRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeE0V_AQ20AnimatedGlowModifierV0R18GradientPropertiesVSbACyALyASGAQ0u4MaskT0VyAWGGAA13KeyframeTrackVyAWSdAA0xyD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tANQyd__RszAA0xyD0Rd__AAA9_Rd_0_ANQyd_0_A8_RSr0_lFZQOySd_AA04MoveX0VySdGAA06SpringX0VySdGQo_GQo_AA14_OpacityEffectVGMd);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t closure #1 in closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB006StrokeE0VGMd);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMd) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return outlined init with copy of AnimatedGlowModifier.AnimatedGradientProperties(v14, &v13);
}

uint64_t closure #2 in closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v17 = v16 - v8;
  v16[1] = swift_getKeyPath();
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI27KeyframeTrackContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdE0Rd__AaIRd_0_AGQyd_0_AHRSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_Md);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12MoveKeyframeVySdGMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14SpringKeyframeVySdGMd);
  v11 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MoveKeyframe<Double> and conformance MoveKeyframe<A>, &_s7SwiftUI12MoveKeyframeVySdGMd);
  v12 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SpringKeyframe<Double> and conformance SpringKeyframe<A>, &_s7SwiftUI14SpringKeyframeVySdGMd);
  v20 = &type metadata for Double;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  swift_getOpaqueTypeConformance2();
  KeyframeTrack.init(_:content:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type KeyframeTrack<AnimatedGlowModifier.AnimatedGradientProperties, Double, <<opaque return type of static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd);
  v13 = v17;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  v14(v6, v3);
  return (v14)(v13, v3);
}

uint64_t closure #1 in closure #2 in closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for Spring();
  __chkstk_darwin(v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14SpringKeyframeVySdGMd);
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  __chkstk_darwin(v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v28 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12MoveKeyframeVySdGMd);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v24 = &v23 - v14;
  v32 = *(a1 + 16);
  v33 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.wrappedValue.getter();
  MoveKeyframe.init(_:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MoveKeyframe<Double> and conformance MoveKeyframe<A>, &_s7SwiftUI12MoveKeyframeVySdGMd);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v15 = *(v10 + 8);
  v25 = v10 + 8;
  v26 = v15;
  v15(v12, v9);
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  Binding.wrappedValue.getter();
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  *&v32 = 0;
  BYTE8(v32) = 0;
  v16 = v27;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SpringKeyframe<Double> and conformance SpringKeyframe<A>, &_s7SwiftUI14SpringKeyframeVySdGMd);
  v18 = v28;
  v17 = v29;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v19 = *(v30 + 8);
  v19(v16, v17);
  v20 = v24;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v21 = v26;
  v26(v12, v9);
  v19(v18, v17);
  return v21(v20, v9);
}

double protocol witness for GradientProperties.startPoint.getter in conformance AnimatedGlowModifier.AnimatedGradientProperties@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  Path.trimmedPath(from:to:)();
  *&v6 = COERCE_DOUBLE(Path.currentPoint.getter());
  v8 = v7;
  v10 = v9;
  outlined destroy of Path(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double protocol witness for GradientProperties.endPoint.getter in conformance AnimatedGlowModifier.AnimatedGradientProperties@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  Path.trimmedPath(from:to:)();
  *&v6 = COERCE_DOUBLE(Path.currentPoint.getter());
  v8 = v7;
  v10 = v9;
  outlined destroy of Path(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedGlowModifier.AnimatedGradientProperties(_OWORD *a1, __int128 *a2)
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
  return specialized static AnimatedGlowModifier.AnimatedGradientProperties.__derived_struct_equals(_:_:)(v8, v9) & 1;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance AnimatedGlowModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012AnimatedGlowD0VGMd);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAA0E0PAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0U0Qyd_2_Rsd__SQRd_0_AaURd_1_AA9KeyframesRd_2_r2_lFQOyAF06StrokeE0V_AH0I18GradientPropertiesVSbACyA1_yA7_GAF012GradientMaskF0VyA9_GGAA13KeyframeTrackVyA9_SdAA013KeyframeTrackD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tA3_Qyd__RszAA013KeyframeTrackD0Rd__AAA23_Rd_0_A3_Qyd_0_A22_RSr0_lFZQOySd_AA12MoveKeyframeVySdGAA14SpringKeyframeVySdGQo_GQo_AA08_OpacityL0VGGGMd) + 36);
  closure #1 in AnimatedGlowModifier.body(content:)(v24, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderfG0VyxG_qd__tYbcqd_2_qd__ct0K0Qyd_2_Rsd__SQRd_0_AaFRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeG0V_AS012AnimatedGlowD0V0T18GradientPropertiesVSbAEyANyAUGAS0v4MaskD0VyAYGGAA13KeyframeTrackVyAYSdAA0yzF7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tAPQyd__RszAA0yzF0Rd__AAA11_Rd_0_APQyd_0_A10_RSr0_lFZQOySd_AA04MoveY0VySdGAA06SpringY0VySdGQo_GQo_AA14_OpacityEffectVGGMd);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14)
{
  *&v15 = a9;
  *(&v15 + 1) = a10;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a11;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a12;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  v20[0] = a7;
  *&v20[8] = a8;
  *&v20[16] = a13;
  v20[24] = a14;

  View.modifier<A>(_:)();
  v21[4] = v19;
  v22[0] = *v20;
  *(v22 + 9) = *&v20[9];
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  return outlined destroy of AnimatedGlowModifier(v21);
}

void GlowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  GlowView.createBlur(width:radius:)(0.5);
  GlowView.createBlur(width:radius:)(1.0);
  GlowView.createBlur(width:radius:)(4.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  GlowView.properties.getter(v32);
  outlined destroy of GlowView.StaticGradientProperties(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  GlowView.properties.getter(v35);
  outlined destroy of GlowView.StaticGradientProperties(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    GlowView.properties.getter(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F3060;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    outlined destroy of GlowView.StaticGradientProperties(v38);
    specialized _arrayForceCast<A, B>(_:)(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void GlowView.createBlur(width:radius:)(double a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = UIView.forAutolayout.getter();

  v6 = [v5 layer];
  [v6 setBorderWidth:a1];

  v7 = [v5 layer];
  v8 = [objc_opt_self() whiteColor];
  v9 = [v8 CGColor];

  [v7 setBorderColor:v9];
  v10 = [v5 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  v11 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v11 setValue:isa forKey:kCAFilterInputRadius];

  v13 = [v5 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F2400;
  *(v14 + 56) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAFilter);
  *(v14 + 32) = v11;
  v15 = v11;
  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setFilters:v16];

  v17 = [v5 layer];
  [v17 setCompositingFilter:kCAFilterPlusL];

  [v2 addSubview:v5];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004F3040;
  v20 = [v5 topAnchor];
  v21 = [v2 topAnchor];
  v22 = a1 * -0.5;
  v23 = [v20 constraintEqualToAnchor:v21 constant:a1 * -0.5];

  *(v19 + 32) = v23;
  v24 = [v5 bottomAnchor];
  v25 = [v2 bottomAnchor];
  v26 = a1 * 0.5;
  v27 = [v24 constraintEqualToAnchor:v25 constant:v26];

  *(v19 + 40) = v27;
  v28 = [v5 leadingAnchor];
  v29 = [v2 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v22];

  *(v19 + 48) = v30;
  v31 = [v5 trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v26];

  *(v19 + 56) = v33;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v34];
}

__n128 GlowView.properties.getter@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  GlowView.properties.getter(v20);
  outlined destroy of GlowView.StaticGradientProperties(v20);
  GlowView.properties.getter(v21);
  outlined destroy of GlowView.StaticGradientProperties(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  GlowView.properties.getter(v22);
  specialized GradientProperties.locations.getter();
  v15 = v14;
  outlined destroy of GlowView.StaticGradientProperties(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
    v17 = 32;
    do
    {
      NSNumber.init(floatLiteral:)(*(v15 + v17));
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UIView.Corner();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a1, v8, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of TaskPriority?(v8, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  }

  (*(v10 + 32))(v12, v8, v9);
  UIView.Corner.radius.getter();
  v14 = v28;
  [v28 bounds];
  UIView.Corner.Radius.value(in:)();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v17 = [v14 subviews];
  type metadata accessor for UIAction(0, &_sSo6UIViewCML_0);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v10;
  v27 = v9;
  v25 = v12;
  if (v18 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 layer];
      [v24 setCornerRadius:v16];

      ++v20;
      if (v23 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return (*(v26 + 8))(v25, v27);
}

id protocol witness for GradientProperties.white.getter in conformance GlowView.StaticGradientProperties@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id protocol witness for GradientProperties.clear.getter in conformance GlowView.StaticGradientProperties@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id protocol witness for GradientProperties.white40.getter in conformance GlowView.StaticGradientProperties@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlowView.StaticGradientProperties(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static GlowView.StaticGradientProperties.__derived_struct_equals(_:_:)(v7, v8) & 1;
}

unint64_t lazy protocol witness table accessor for type GlowModifier and conformance GlowModifier()
{
  result = lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier;
  if (!lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB012GlowModifierVGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type AnimatedGlowModifier and conformance AnimatedGlowModifier()
{
  result = lazy protocol witness table cache variable for type AnimatedGlowModifier and conformance AnimatedGlowModifier;
  if (!lazy protocol witness table cache variable for type AnimatedGlowModifier and conformance AnimatedGlowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedGlowModifier and conformance AnimatedGlowModifier);
  }

  return result;
}

__n128 __swift_memcpy64_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedGlowModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimatedGlowModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlowModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowModifier and conformance GlowModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnimatedGlowModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnimatedGlowModifier and conformance AnimatedGlowModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlowView.StaticGradientProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties()
{
  result = lazy protocol witness table cache variable for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties;
  if (!lazy protocol witness table cache variable for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties);
  }

  return result;
}

uint64_t sub_1002F4978()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type StrokeView and conformance StrokeView()
{
  result = lazy protocol witness table cache variable for type StrokeView and conformance StrokeView;
  if (!lazy protocol witness table cache variable for type StrokeView and conformance StrokeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrokeView and conformance StrokeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<StrokeView> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB006StrokeE0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties> and conformance GradientMaskModifier<A>, &_s11MusicCoreUI20GradientMaskModifierVyAA012AnimatedGlowF0V0gD10PropertiesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF_0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t specialized static GlowModifier.StaticGradientProperties.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t specialized static AnimatedGlowModifier.AnimatedGradientProperties.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || (static Path.== infix(_:_:)() & 1) == 0 || a1[6] != a2[6] || (static Color.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t specialized static GlowView.StaticGradientProperties.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_sSo10CGColorRefaMa_0(0), lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(), (static _CFObject.== infix(_:_:)() & 1) != 0) && (static _CFObject.== infix(_:_:)() & 1) != 0)
  {
    return static _CFObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  result = lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    _sSo10CGColorRefaMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }

  return result;
}