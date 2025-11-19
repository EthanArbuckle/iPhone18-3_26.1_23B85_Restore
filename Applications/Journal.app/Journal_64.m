void *sub_1006E2BFC(void *result, uint64_t a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100AD0148 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AEDDE0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 136315394;
      if (qword_100AD0150 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for UUID();
      sub_10000617C(v10, qword_100AEDDF8);
      sub_1006E9C54(&qword_100AE19B0, &type metadata accessor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = sub_100008458(v11, v12, &v18);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s location picker cannot perform POI search with completion due to error: %@.", v7, 0x16u);
      sub_100004F84(v8, &unk_100AD4BB0);

      sub_10000BA7C(v9);
    }

    a3(0);
  }

  else if (result)
  {
    v15 = result;
    v16 = [v15 mapItems];
    sub_1000065A8(0, &qword_100AD5A90);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    a3(v17);
  }

  return result;
}

void sub_1006E2F2C(char a1)
{
  v3 = sub_1000F24EC(&qword_100AD6598);
  __chkstk_darwin(v3 - 8);
  v210 = &v190 - v4;
  v5 = sub_1000F24EC(&unk_100AEE090);
  __chkstk_darwin(v5 - 8);
  v211 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v190 - v8;
  v214 = type metadata accessor for NWPath.Status();
  v10 = *(v214 - 1);
  __chkstk_darwin(v214);
  v213 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v212 = &v190 - v13;
  v215 = type metadata accessor for NWPath();
  v14 = *(v215 - 8);
  __chkstk_darwin(v215);
  v16 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Loc(0);
  v216 = *(v17 - 8);
  v217 = v17;
  __chkstk_darwin(v17);
  v19 = &v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v24 = &v190 - v23;
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v31 = &v190 - v30;
  if (*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView))
  {
    v32 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView);
    v209 = v9;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v34 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView);
          v35 = v32;
          [v34 setHidden:0];
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);

          v36 = v219;
          [v219 setHidden:1];

LABEL_110:
          [v32 p_ivar_lyt[500]];

          return;
        }

LABEL_7:
        v37 = v32;
        sub_1006DFE7C();
        goto LABEL_110;
      }

      if (*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDenied))
      {
        goto LABEL_7;
      }

      v197 = v29;
      v203 = v28;
      v204 = v27;
      v40 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar);
      v196 = v32;
      v206 = v40;
      v208 = v1;
      sub_1006DC0A4();
      NWPathMonitor.currentPath.getter();

      v41 = v212;
      NWPath.status.getter();
      v43 = *(v14 + 8);
      v42 = v14 + 8;
      v198 = v16;
      v202 = v43;
      v43(v16, v215);
      v45 = v10 + 104;
      v44 = *(v10 + 104);
      v46 = v213;
      v201 = enum case for NWPath.Status.unsatisfied(_:);
      v47 = v214;
      v200 = v44;
      v44(v213);
      v199 = sub_1006E9C54(&unk_100AE5DE0, &type metadata accessor for NWPath.Status);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = v208;
      v50 = v48;
      v52 = *(v10 + 8);
      v51 = v10 + 8;
      v53 = v46;
      v54 = v52;
      v52(v53, v47);
      v52(v41, v47);
      v55 = v206;
      [v206 setEnabled:(v50 & 1) == 0];

      v56 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs;
      swift_beginAccess();
      if (*(*(v49 + v56) + 16))
      {
        [*(v49 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
        goto LABEL_110;
      }

      v191 = v54;
      v192 = v45;
      v193 = v42;
      v194 = v51;
      v195 = v56;
      v96 = *(v49 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
      p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      v19 = v215;
      v1 = v49;
      v207 = v32;
      if (v96)
      {
        v97 = qword_100ACFD60;
        v206 = v96;
        if (v97 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v31 = (qword_100B2F8D8 + 64);
        v98 = 1 << *(qword_100B2F8D8 + 32);
        v99 = -1;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        v100 = v99 & *(qword_100B2F8D8 + 64);
        v101 = (v98 + 63) >> 6;
        v205 = qword_100B2F8D8;
        swift_bridgeObjectRetain_n();
        v102 = 0;
        do
        {
          if (!v100)
          {
            while (1)
            {
              v103 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                break;
              }

              if (v103 >= v101)
              {

                v32 = v207;
                p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
                goto LABEL_57;
              }

              v100 = *&v31[8 * v103];
              ++v102;
              if (v100)
              {
                v102 = v103;
                goto LABEL_52;
              }
            }

LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v103 = v102;
LABEL_52:
          v104 = __clz(__rbit64(v100));
          v100 &= v100 - 1;
          v105 = *(*(v205 + 48) + 8 * (v104 | (v103 << 6)));
          sub_1000065A8(0, &unk_100AD43A0);
          v106 = v105;

          v107 = static NSObject.== infix(_:_:)();

          v1 = v208;
          v19 = v215;
        }

        while ((v107 & 1) == 0);

        swift_beginAccess();
        v108 = qword_100B2F8D8;
        v32 = v207;
        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
        if (*(qword_100B2F8D8 + 16))
        {
          v109 = v206;
          v110 = sub_100361F20(v206);
          if (v111)
          {
            v112 = (*(v108 + 56) + 16 * v110);
            v113 = *v112;
            v114 = v112[1];
            swift_endAccess();
            v115 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
            v116 = v208;
            v117 = *(v208 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView);

            [v117 setHidden:0];
            *(v116 + v195) = v114;

            [*(v116 + v115) setHidden:1];
            v118 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentPlaces;
            swift_beginAccess();
            *(v116 + v118) = v113;
            p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);

            sub_1006DB2C8();

            goto LABEL_110;
          }

          swift_endAccess();

          v1 = v208;
        }

        else
        {
          swift_endAccess();
        }
      }

LABEL_57:
      v119 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
      [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:0];
      v120 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentPlaces;
      swift_beginAccess();
      v121 = *(v1 + v120);
      if (v121)
      {
        if (v121 >> 62)
        {
          v122 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v123 = _swiftEmptyArrayStorage;
        if (v122)
        {
          v218 = _swiftEmptyArrayStorage;

          sub_1001999E0(0, v122 & ~(v122 >> 63), 0);
          if (v122 < 0)
          {
            __break(1u);
            return;
          }

          v213 = v119;
          v123 = v218;
          v215 = v121;
          if ((v121 & 0xC000000000000001) != 0)
          {
            v124 = 0;
            v125 = v217;
            do
            {
              v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              *v24 = 0;
              *(v24 + 2) = 0;
              v127 = v125[7];
              v128 = type metadata accessor for Date();
              v129 = *(*(v128 - 8) + 56);
              v129(&v24[v127], 1, 1, v128);
              v129(&v24[v125[8]], 1, 1, v128);
              v130 = &v24[v125[9]];
              *v130 = 0;
              *(v130 + 1) = 0;
              v131 = &v24[v125[10]];
              *v131 = 0;
              *(v131 + 1) = 0;
              *&v24[v125[11]] = 0;
              v24[v125[12]] = 0;
              *(v24 + 1) = v126;
              v218 = v123;
              v133 = *(v123 + 2);
              v132 = *(v123 + 3);
              if (v133 >= v132 >> 1)
              {
                sub_1001999E0(v132 > 1, v133 + 1, 1);
                v123 = v218;
              }

              ++v124;
              *(v123 + 2) = v133 + 1;
              sub_1006EB5D0(v24, v123 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v133, type metadata accessor for Loc);
            }

            while (v122 != v124);
          }

          else
          {
            v159 = (v121 + 32);
            v214 = type metadata accessor for Date();
            v160 = *(*(v214 - 1) + 56);
            v161 = v197;
            do
            {
              v162 = *v159;
              *v161 = 0;
              *(v161 + 2) = 0;
              v163 = v217;
              v164 = v214;
              v160(&v161[v217[7]], 1, 1, v214);
              v160(&v161[v163[8]], 1, 1, v164);
              v165 = &v161[v163[9]];
              *v165 = 0;
              *(v165 + 1) = 0;
              v166 = &v161[v163[10]];
              *v166 = 0;
              *(v166 + 1) = 0;
              *&v161[v163[11]] = 0;
              v161[v163[12]] = 0;
              *(v161 + 1) = v162;
              v218 = v123;
              v168 = *(v123 + 2);
              v167 = *(v123 + 3);
              v169 = v162;
              if (v168 >= v167 >> 1)
              {
                sub_1001999E0(v167 > 1, v168 + 1, 1);
                v123 = v218;
              }

              *(v123 + 2) = v168 + 1;
              sub_1006EB5D0(v161, v123 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v168, type metadata accessor for Loc);
              ++v159;
              --v122;
            }

            while (v122);
          }

          v32 = v207;
          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
          v119 = v213;
        }

        v170 = v208;
        *(v208 + v195) = v123;

        [*(v170 + v119) setHidden:1];
        v171 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
        swift_beginAccess();
        v172 = v170 + v171;
        v173 = v209;
        sub_1000082B4(v172, v209, &unk_100AEE090);
        if ((*(v216 + 48))(v173, 1, v217) == 1)
        {
          sub_100004F84(v173, &unk_100AEE090);
          goto LABEL_110;
        }

        v174 = v173;
        v175 = v204;
        sub_1006EB5D0(v174, v204, type metadata accessor for Loc);
        v176 = *(v175 + 8);
        if (!v176)
        {
          goto LABEL_96;
        }

        v177 = [v176 name];
        if (!v177)
        {
          goto LABEL_96;
        }

        v178 = v177;
        v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v181 = v180;

        v182 = HIBYTE(v181) & 0xF;
        if ((v181 & 0x2000000000000000) == 0)
        {
          v182 = v179 & 0xFFFFFFFFFFFFLL;
        }

        if (!v182)
        {
LABEL_96:
          sub_1006EB484(v204, type metadata accessor for Loc);
          goto LABEL_110;
        }

        v158 = v204;
        v183 = (v204 + v217[9]);
        v184 = v183[1];
        if (v184)
        {
          v185 = *v183 & 0xFFFFFFFFFFFFLL;
          if ((v184 & 0x2000000000000000) != 0)
          {
            v186 = HIBYTE(v184) & 0xF;
          }

          else
          {
            v186 = v185;
          }

          if (v186)
          {
            v187 = v204;
            swift_beginAccess();
            v188 = v210;
            sub_1006EB41C(v187, v210, type metadata accessor for Loc);
            sub_100203870(0, 0, v188);
            swift_endAccess();
            [*(v170 + v119) setHidden:1];
            v158 = v187;
          }
        }

LABEL_95:
        sub_1006EB484(v158, type metadata accessor for Loc);
        goto LABEL_110;
      }

      v134 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
      swift_beginAccess();
      v135 = v1 + v134;
      v136 = v211;
      sub_1000082B4(v135, v211, &unk_100AEE090);
      if ((*(v216 + 48))(v136, 1, v217) == 1)
      {
        sub_100004F84(v136, &unk_100AEE090);
      }

      else
      {
        v148 = v203;
        sub_1006EB5D0(v136, v203, type metadata accessor for Loc);

        v149 = v198;
        NWPathMonitor.currentPath.getter();

        v150 = v212;
        NWPath.status.getter();
        v202(v149, v19);
        v152 = v213;
        v151 = v214;
        v200(v213, v201, v214);
        LOBYTE(v149) = dispatch thunk of static Equatable.== infix(_:_:)();
        v153 = v152;
        v154 = v191;
        v191(v153, v151);
        v154(v150, v151);
        if (v149)
        {
          v155 = v208;
          swift_beginAccess();
          v156 = v210;
          sub_1006EB41C(v148, v210, type metadata accessor for Loc);
          sub_100203870(0, 0, v156);
          swift_endAccess();
          v157 = *(v155 + v119);
          p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
          [v157 setHidden:1];
          [v196 reloadData];
          v158 = v148;
          goto LABEL_95;
        }

        sub_1006EB484(v148, type metadata accessor for Loc);
      }

      v189 = 1;
LABEL_109:
      sub_1006E234C(v189);
      goto LABEL_110;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v32;
    static UIViewController.ViewLoading.subscript.getter();

    v39 = v219;
    [v219 setHidden:1];

    if (*(*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs) + 16))
    {
      [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
      goto LABEL_110;
    }

    v212 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs;
    v57 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation;
    v58 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation);
    v208 = v1;
    v207 = v32;
    if (v58)
    {
      v211 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation;
      v59 = qword_100ACFD60;
      v214 = v58;
      if (v59 != -1)
      {
LABEL_106:
        swift_once();
      }

      swift_beginAccess();
      v60 = qword_100B2F8D8 + 64;
      v61 = 1 << *(qword_100B2F8D8 + 32);
      v62 = -1;
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      v63 = v62 & *(qword_100B2F8D8 + 64);
      v64 = (v61 + 63) >> 6;
      v213 = qword_100B2F8D8;
      swift_bridgeObjectRetain_n();
      v65 = 0;
      do
      {
        if (!v63)
        {
          while (1)
          {
            v66 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              break;
            }

            if (v66 >= v64)
            {

              v32 = v207;
              p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
              goto LABEL_28;
            }

            v63 = *(v60 + 8 * v66);
            ++v65;
            if (v63)
            {
              v65 = v66;
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_105;
        }

        v66 = v65;
LABEL_23:
        v67 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v68 = *(*(v213 + 6) + 8 * (v67 | (v66 << 6)));
        sub_1000065A8(0, &unk_100AD43A0);
        v69 = v68;

        LODWORD(v215) = static NSObject.== infix(_:_:)();

        v1 = v208;
      }

      while ((v215 & 1) == 0);

      swift_beginAccess();
      v70 = qword_100B2F8D8;
      v32 = v207;
      p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      if (*(qword_100B2F8D8 + 16))
      {
        v71 = v214;
        v72 = sub_100361F20(v214);
        if (v73)
        {
          v74 = (*(v70 + 56) + 16 * v72);
          v75 = *v74;
          v76 = v74[1];
          swift_endAccess();
          v77 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
          v78 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView);

          [v78 setHidden:0];
          *&v212[v1] = v76;

          [*(v1 + v77) setHidden:1];
          v79 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoPlaces;
          swift_beginAccess();
          *(v1 + v79) = v75;
          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);

          sub_1006DBAEC();

          goto LABEL_110;
        }

        swift_endAccess();
      }

      else
      {
        swift_endAccess();
      }

LABEL_28:
      v57 = v211;
    }

    v80 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
    v81 = [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:0];
    if (!*(v1 + v57))
    {
      sub_1006E4EB4(v81);
    }

    v82 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoPlaces;
    swift_beginAccess();
    v83 = *(v1 + v82);
    if (v83)
    {
      if (v83 >> 62)
      {
        v84 = _CocoaArrayWrapper.endIndex.getter();
        if (v84 >= 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v84 >= 1)
        {
LABEL_34:
          v213 = v80;
          v218 = _swiftEmptyArrayStorage;

          sub_1001999E0(0, v84, 0);
          v85 = v218;
          v215 = v83;
          if ((v83 & 0xC000000000000001) != 0)
          {
            v86 = 0;
            v87 = v217;
            do
            {
              v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              *v31 = 0;
              *(v31 + 2) = 0;
              v89 = v87[7];
              v90 = type metadata accessor for Date();
              v91 = *(*(v90 - 8) + 56);
              v91(&v31[v89], 1, 1, v90);
              v91(&v31[v87[8]], 1, 1, v90);
              v92 = &v31[v87[9]];
              *v92 = 0;
              *(v92 + 1) = 0;
              v93 = &v31[v87[10]];
              *v93 = 0;
              *(v93 + 1) = 0;
              *&v31[v87[11]] = 0;
              v31[v87[12]] = 0;
              *(v31 + 1) = v88;
              v218 = v85;
              v95 = *(v85 + 2);
              v94 = *(v85 + 3);
              if (v95 >= v94 >> 1)
              {
                sub_1001999E0(v94 > 1, v95 + 1, 1);
                v85 = v218;
              }

              ++v86;
              *(v85 + 2) = v95 + 1;
              sub_1006EB5D0(v31, v85 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v95, type metadata accessor for Loc);
            }

            while (v84 != v86);
          }

          else
          {
            v137 = (v83 + 32);
            v214 = type metadata accessor for Date();
            v138 = *(*(v214 - 1) + 56);
            do
            {
              v139 = *v137;
              *v19 = 0;
              *(v19 + 2) = 0;
              v140 = v217;
              v141 = v214;
              v138(&v19[v217[7]], 1, 1, v214);
              v138(&v19[v140[8]], 1, 1, v141);
              v142 = &v19[v140[9]];
              *v142 = 0;
              *(v142 + 1) = 0;
              v143 = &v19[v140[10]];
              *v143 = 0;
              *(v143 + 1) = 0;
              *&v19[v140[11]] = 0;
              v19[v140[12]] = 0;
              *(v19 + 1) = v139;
              v218 = v85;
              v145 = *(v85 + 2);
              v144 = *(v85 + 3);
              v146 = v139;
              if (v145 >= v144 >> 1)
              {
                sub_1001999E0(v144 > 1, v145 + 1, 1);
                v85 = v218;
              }

              *(v85 + 2) = v145 + 1;
              sub_1006EB5D0(v19, v85 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v145, type metadata accessor for Loc);
              ++v137;
              --v84;
            }

            while (v84);
          }

          v147 = v208;
          *&v212[v208] = v85;

          [*&v213[v147] setHidden:1];
          v32 = v207;
          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
          goto LABEL_110;
        }
      }
    }

    v189 = 0;
    goto LABEL_109;
  }
}

void *sub_1006E46DC()
{
  v0 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v0 - 8);
  v76 = v56 - v1;
  v63 = type metadata accessor for Date();
  v2 = *(v63 - 8);
  __chkstk_darwin(v63);
  v75 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Loc(0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DataAggregator.Place(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v64 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = *(v79 + 16);
  v56[0] = v79;
  if (v10)
  {
    v11 = v79 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v65 = *(v8 + 72);
    v59 = (v2 + 16);
    v58 = (v2 + 56);
    v57 = (v2 + 32);
    v12 = _swiftEmptyArrayStorage;
    v13 = v64;
    v60 = v7;
    while (1)
    {
      sub_1006EB41C(v11, v13, type metadata accessor for DataAggregator.Place);
      v14 = (v13 + v7[7]);
      v15 = *v14;
      v16 = v14[1];
      if (!v16)
      {
        break;
      }

      v17 = !v15 && v16 == 0xE000000000000000;
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

LABEL_6:
      sub_1006EB484(v13, type metadata accessor for DataAggregator.Place);
      v11 += v65;
      if (!--v10)
      {
        goto LABEL_46;
      }
    }

    v71 = *(v13 + v7[11]);
    v18 = *(v13 + v7[5]);
    v19 = objc_allocWithZone(MKMapItem);
    v77 = [v19 initWithLocation:v18 address:{0, v56[0]}];
    if (v16)
    {
      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    [v77 setName:v20];

    v21 = (v13 + v7[9]);
    v23 = *v21;
    v22 = v21[1];
    v74 = v12;
    if (v22)
    {
      v24 = !v23 && v22 == 0xE000000000000000;
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_39;
      }
    }

    v78 = v23;
    v25 = *(v13 + v7[12]);
    if (v25)
    {

      v26 = [v25 name];
      if (!v26)
      {
        goto LABEL_29;
      }

      v27 = [v25 name];
      if (v27)
      {
        v28 = v27;
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (!v73 && v30 == 0xE000000000000000)
        {

          goto LABEL_29;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          v23 = v78;
          if (v31)
          {
LABEL_30:
            if ((v15 || v16 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {

              v23 = v15;
              v22 = v16;
            }
          }

LABEL_39:
          v78 = v23;
          v70 = v22;
          v72 = v11;
          v73 = v10;
          v32 = *(v13 + v7[12]);
          v33 = v32;
          if (!v32)
          {
            v33 = v77;
            v34 = v77;
          }

          v35 = v63;
          (*v59)(v75, v13, v63);
          sub_1000082B4(v13 + v7[6], v76, &unk_100AD4790);
          v36 = (v13 + v7[8]);
          v38 = *v36;
          v37 = v36[1];
          v69 = v38;
          v66 = v37;
          *v6 = 0;
          *(v6 + 2) = 0;
          v39 = v62;
          v40 = v62[7];
          v41 = *v58;
          (*v58)(&v6[v40], 1, 1, v35);
          v42 = v39[8];
          v41(&v6[v42], 1, 1, v35);
          v43 = &v6[v39[9]];
          v67 = &v6[v39[10]];
          v44 = v39[12];
          v68 = v39[11];
          v6[v44] = 0;
          *(v6 + 1) = v33;
          v45 = v71;
          v46 = v71;
          v47 = v32;
          v48 = v66;

          sub_100014318(v76, &v6[v40], &unk_100AD4790);
          sub_100004F84(&v6[v42], &unk_100AD4790);
          (*v57)(&v6[v42], v75, v35);
          v41(&v6[v42], 0, 1, v35);
          v49 = v69;
          v50 = v70;
          *v43 = v78;
          *(v43 + 1) = v50;
          v51 = v67;
          *v67 = v49;
          *(v51 + 1) = v48;
          *&v6[v68] = v45;
          v12 = v74;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1003E4B08(0, v12[2] + 1, 1, v12);
          }

          v11 = v72;
          v10 = v73;
          v53 = v12[2];
          v52 = v12[3];
          v7 = v60;
          v13 = v64;
          if (v53 >= v52 >> 1)
          {
            v12 = sub_1003E4B08(v52 > 1, v53 + 1, 1, v12);
          }

          v12[2] = v53 + 1;
          sub_1006EB5D0(v6, v12 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v53, type metadata accessor for Loc);
          goto LABEL_6;
        }
      }

      v23 = v78;
      goto LABEL_39;
    }

LABEL_29:
    v23 = v78;
    if (v16)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_46:
  result = [v56[1] view];
  if (result)
  {
    v55 = result;

    [v55 setNeedsUpdateConstraints];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006E4EB4()
{
  v137 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for DispatchQoS();
  v3 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v146);
  v145 = (&v125 - v5);
  v144 = sub_1000F24EC(&qword_100AD5B20);
  v6 = *(v144 - 8);
  __chkstk_darwin(v144);
  v8 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v125 - v10;
  __chkstk_darwin(v12);
  v153 = &v125 - v13;
  v14 = type metadata accessor for PhotoLibraryAssetMetadata();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  v18 = &v125 - v17;
  __chkstk_darwin(v19);
  v149 = v0;
  v22 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry];
  if (!v22)
  {
    return;
  }

  v23 = *&v22[OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets];
  v147 = v21;
  v150 = &v125 - v20;
  if (v23 >> 62)
  {
LABEL_116:
    v122 = v22;
    v123 = v23;
    v124 = _CocoaArrayWrapper.endIndex.getter();
    v23 = v123;
    v24 = v124;
    v22 = v122;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v130 = v22;
  if (!v24)
  {

    v99 = 0;
    v100 = 0;
LABEL_75:
    v101 = v149;
    if (!(v100 | v99))
    {
      v102 = *&v149[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation];
      *&v149[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation] = 0;

      v103 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation;
      v104 = v101[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation];
      v101[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation] = 0;
      if (v104 == 1)
      {
        v105 = [v101 view];
        if (!v105)
        {
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          return;
        }

        v106 = v105;
        [v105 setNeedsUpdateConstraints];

        if (v101[v103] == 1)
        {
          v101[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = 0;
          sub_1006E2F2C(0);
        }
      }

LABEL_100:
      sub_1006E61C0();
      goto LABEL_101;
    }

    v107 = &v149[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle];
    v109 = *&v149[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle];
    v108 = *&v149[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle + 8];
    if (v100 < 1)
    {
      if (v100 || v99 <= 0)
      {
        goto LABEL_93;
      }

      v113 = qword_100AD0628;

      if (v113 != -1)
      {
        swift_once();
      }

      v111 = &xmmword_100B30830;
    }

    else
    {
      if (v99 >= 1)
      {
        v110 = qword_100AD0630;

        if (v110 != -1)
        {
          swift_once();
        }

        v111 = &xmmword_100B30840;
        goto LABEL_85;
      }

      if (v99)
      {
LABEL_93:

        if (!v108)
        {
LABEL_101:

          return;
        }

        goto LABEL_94;
      }

      v121 = qword_100AD0620;

      if (v121 != -1)
      {
        swift_once();
      }

      v111 = &xmmword_100B30820;
    }

LABEL_85:
    v112 = *(v111 + 1);
    *v107 = *v111;
    v107[1] = v112;

    if (!v108)
    {
      goto LABEL_101;
    }

LABEL_94:
    v114 = v107[1];
    if (v114)
    {
      if (v109 == *v107 && v108 == v114)
      {

        return;
      }

      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v115)
      {
        goto LABEL_101;
      }
    }

    else
    {
    }

    goto LABEL_100;
  }

  v139 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation;
  v129 = &v149[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearPhoto];
  v133 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation;
  v159 = v23 & 0xC000000000000001;
  v151 = v23 & 0xFFFFFFFFFFFFFF8;
  v142 = (v6 + 56);
  v125 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption;
  v160 = (v15 + 48);
  v155 = (v15 + 8);
  v156 = (v15 + 32);
  v140 = (v15 + 56);
  v128 = v162;
  v127 = (v1 + 8);
  v126 = (v3 + 8);
  v1 = v23;

  v25 = v1;
  v3 = 0;
  v138 = 0;
  v143 = 0;
  v141 = xmmword_100941EE0;
  v148 = v8;
  v152 = v11;
  v6 = v153;
  v154 = v18;
  v157 = v24;
  v158 = v1;
  while (1)
  {
    if (v159)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v151 + 16))
      {
        goto LABEL_112;
      }

      v22 = *&v25[8 * v3 + 32];
    }

    v15 = v22;
    v26 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    type metadata accessor for PhotoAsset();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v1 = OBJC_IVAR____TtC7Journal10PhotoAsset_metadata;
      if (*(v27 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
      {
        v28 = v15;
      }

      else
      {
        v29 = v27;
        v30 = *(v27 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v30)
        {
          v31 = v15;
          v32 = [v30 assetMetaData];
          if (v32)
          {
            v33 = v32;
            v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v37 = v145;
            *v145 = v34;
            v37[1] = v36;
            v11 = v152;
            v6 = v153;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0);
            v38 = swift_allocObject();
            (*v142)(v38 + *(*v38 + 104), 1, 1, v144);
            *(v38 + *(*v38 + 112)) = v141;
            v39 = v37;
            v8 = v148;
            sub_10017005C(v39, v38 + *(*v38 + 120));
            *&v1[v29] = v38;
          }
        }

        else
        {
          v40 = v15;
        }

        v41 = *&v1[v29];
        v18 = v154;
        if (!v41)
        {

          (*v140)(v6, 1, 1, v14);
          goto LABEL_28;
        }
      }

      sub_100046ADC(v6);

      if ((*v160)(v6, 1, v14) == 1)
      {

LABEL_28:
        sub_100004F84(v6, &qword_100AD5B20);
        goto LABEL_29;
      }

      v42 = v150;
      (*v156)(v150, v6, v14);
      v43 = PhotoLibraryAssetMetadata.latitude.getter();
      if ((v44 & 1) == 0)
      {
        v1 = v43;
        v22 = PhotoLibraryAssetMetadata.longitude.getter();
        if ((v45 & 1) == 0)
        {
          if (__OFADD__(v143, 1))
          {
            goto LABEL_113;
          }

          ++v143;
          v83 = v150;
          goto LABEL_64;
        }
      }

      (*v155)(v42, v14);
    }

LABEL_29:
    type metadata accessor for LivePhotoAsset();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      goto LABEL_44;
    }

    v1 = OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata;
    if (*(v46 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
    {
      v47 = v15;
    }

    else
    {
      v48 = v46;
      v49 = *(v46 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
      if (v49)
      {
        v50 = v15;
        v51 = [v49 assetMetaData];
        if (v51)
        {
          v52 = v51;
          v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v56 = v145;
          *v145 = v53;
          v56[1] = v55;
          v11 = v152;
          v6 = v153;
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&unk_100AEE0B0);
          v57 = swift_allocObject();
          (*v142)(v57 + *(*v57 + 104), 1, 1, v144);
          *(v57 + *(*v57 + 112)) = v141;
          v58 = v56;
          v8 = v148;
          sub_10017005C(v58, v57 + *(*v57 + 120));
          *&v1[v48] = v57;
        }
      }

      else
      {
        v59 = v15;
      }

      v60 = *&v1[v48];
      v18 = v154;
      if (!v60)
      {

        (*v140)(v11, 1, 1, v14);
        goto LABEL_43;
      }
    }

    sub_100046ADC(v11);

    if ((*v160)(v11, 1, v14) != 1)
    {
      break;
    }

LABEL_43:
    sub_100004F84(v11, &qword_100AD5B20);
LABEL_44:
    type metadata accessor for VideoAsset();
    v64 = swift_dynamicCastClass();
    if (v64)
    {
      v1 = OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
      if (*(v64 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
      {
        v65 = v15;
      }

      else
      {
        v66 = v64;
        v67 = *(v64 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v67)
        {
          v68 = v15;
          v69 = [v67 assetMetaData];
          if (v69)
          {
            v70 = v69;
            v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            v74 = v145;
            *v145 = v71;
            v74[1] = v73;
            v11 = v152;
            v6 = v153;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0);
            v75 = swift_allocObject();
            (*v142)(v75 + *(*v75 + 104), 1, 1, v144);
            *(v75 + *(*v75 + 112)) = v141;
            v76 = v74;
            v8 = v148;
            sub_10017005C(v76, v75 + *(*v75 + 120));
            *&v1[v66] = v75;
          }
        }

        else
        {
          v77 = v15;
        }

        v78 = *&v1[v66];
        v18 = v154;
        if (!v78)
        {

          (*v140)(v8, 1, 1, v14);
          goto LABEL_59;
        }
      }

      sub_100046ADC(v8);

      if ((*v160)(v8, 1, v14) == 1)
      {

LABEL_59:
        v22 = sub_100004F84(v8, &qword_100AD5B20);
        goto LABEL_8;
      }

      v79 = v147;
      (*v156)(v147, v8, v14);
      v80 = PhotoLibraryAssetMetadata.latitude.getter();
      if ((v81 & 1) == 0)
      {
        v1 = v80;
        v22 = PhotoLibraryAssetMetadata.longitude.getter();
        if ((v82 & 1) == 0)
        {
          if (__OFADD__(v138, 1))
          {
            goto LABEL_115;
          }

          ++v138;
          v83 = v147;
          goto LABEL_64;
        }
      }

      (*v155)(v79, v14);
    }

LABEL_8:
    ++v3;
    v25 = v158;
    if (v26 == v157)
    {

      v99 = v138;
      v100 = v143;
      goto LABEL_75;
    }
  }

  (*v156)(v18, v11, v14);
  v61 = PhotoLibraryAssetMetadata.latitude.getter();
  if (v62 & 1) != 0 || (v1 = v61, v22 = PhotoLibraryAssetMetadata.longitude.getter(), (v63))
  {
    (*v155)(v18, v14);

    goto LABEL_44;
  }

  if (__OFADD__(v143, 1))
  {
    goto LABEL_114;
  }

  ++v143;
  v83 = v18;
LABEL_64:
  v84 = [objc_allocWithZone(CLLocation) initWithLatitude:*&v1 longitude:*&v22];

  (*v155)(v83, v14);
  v1 = v149;
  v85 = *&v149[v139];
  if (!v85)
  {
    *&v149[v139] = v84;
    v132 = v84;
    [v132 coordinate];
    v164 = MKCoordinateRegionMakeWithDistance(v163, 16093.0, 16093.0);
    v88 = v129;
    *v129 = v164;
    LOBYTE(v88[1].center.latitude) = 0;
    sub_1006E234C(0);
    v89 = v1[v133];
    v1[v133] = 1;
    if (v89)
    {
      goto LABEL_70;
    }

    v90 = [v1 view];
    if (!v90)
    {
      __break(1u);
      goto LABEL_118;
    }

    v91 = v90;
    [v90 setNeedsUpdateConstraints];

    if (v1[v133] == 1)
    {
LABEL_70:
      v1[v125] = 0;
      sub_1006E2F2C(0);
    }

    sub_1000065A8(0, &qword_100AD6210);
    v131 = static OS_dispatch_queue.main.getter();
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v162[2] = sub_1006EB718;
    v162[3] = v92;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v162[0] = sub_100006C7C;
    v162[1] = &unk_100A79198;
    v93 = _Block_copy(aBlock);

    v94 = v134;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    v1 = sub_1006E9C54(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    v95 = v136;
    v96 = v137;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v97 = v131;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v93);

    v98 = v96;
    v18 = v154;
    (*v127)(v95, v98);
    v22 = (*v126)(v94, v135);
    v8 = v148;
    goto LABEL_72;
  }

  v86 = v85;
  [v84 distanceFromLocation:v86];
  if (v87 <= 1609.0)
  {

LABEL_72:
    v11 = v152;
    v6 = v153;
    goto LABEL_8;
  }

  v116 = v149;
  v117 = *&v149[v139];
  *&v149[v139] = 0;

  v118 = v116[v133];
  v116[v133] = 0;
  if (v118 == 1)
  {
    v119 = [v116 view];
    if (!v119)
    {
      goto LABEL_119;
    }

    v120 = v119;
    [v119 setNeedsUpdateConstraints];

    if (v116[v133] == 1)
    {
      v116[v125] = 0;
      sub_1006E2F2C(0);
    }
  }

  sub_1006E61C0();
}

uint64_t sub_1006E61E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006E9C54(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

void sub_1006E6498()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation] & 1) == 0)
    {
      if (!Strong[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption])
      {
        Strong[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = 1;
      }

      v1 = Strong;
      v2 = *&Strong[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView];
      [v2 reloadData];

      Strong = v1;
    }
  }
}

id sub_1006E6538(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar;
  *&v3[v6] = [objc_allocWithZone(UISearchBar) init];
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView] = 0;
  v7 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptyJournaledLocationView;
  if (qword_100AD0650 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_100B30880 + 1);
  v8 = xmmword_100B30880;
  if (qword_100AD0658 != -1)
  {
    v23 = xmmword_100B30880;
    swift_once();
    v9 = *(&v23 + 1);
    v8 = v23;
  }

  *&v3[v7] = sub_1006EA500(v8, v9, xmmword_100B30890, *(&xmmword_100B30890 + 1));
  v10 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView;
  if (qword_100AD0640 != -1)
  {
    swift_once();
  }

  v12 = *(&xmmword_100B30860 + 1);
  v11 = xmmword_100B30860;
  if (qword_100AD0648 != -1)
  {
    v24 = xmmword_100B30860;
    swift_once();
    v12 = *(&v24 + 1);
    v11 = v24;
  }

  *&v3[v10] = sub_1006EA500(v11, v12, xmmword_100B30870, *(&xmmword_100B30870 + 1));
  sub_1000065A8(0, &qword_100ADC670);
  UIViewController.ViewLoading.init()();
  v13 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
  *&v3[v13] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v14 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchManager;
  *&v3[v14] = [objc_allocWithZone(type metadata accessor for LocationPickerSearchManager()) init];
  v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_hideFirstSeparator] = 1;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationUpdatesTask] = 0;
  v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDenied] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDeniedHeightConstraint] = 0;
  v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = 1;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearch] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearchWithCompletion] = 0;
  v15 = &v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearMe];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = &v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearPhoto];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable] = 1;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation] = 0;
  v17 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
  v18 = type metadata accessor for Loc(0);
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentPlaces] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoPlaces] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation] = 0;
  v19 = &v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle];
  *v19 = 0;
  v19[1] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange] = 0;
  *&v3[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController____lazy_storage___pathMonitor] = 0;
  if (a2)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v25.receiver = v3;
  v25.super_class = type metadata accessor for LocationPickerCollectionViewController(0);
  v21 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", v20, a3);

  return v21;
}

id sub_1006E6988(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar;
  *&v1[v3] = [objc_allocWithZone(UISearchBar) init];
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView] = 0;
  v4 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptyJournaledLocationView;
  if (qword_100AD0650 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_100B30880 + 1);
  v5 = xmmword_100B30880;
  if (qword_100AD0658 != -1)
  {
    v19 = xmmword_100B30880;
    swift_once();
    v6 = *(&v19 + 1);
    v5 = v19;
  }

  *&v1[v4] = sub_1006EA500(v5, v6, xmmword_100B30890, *(&xmmword_100B30890 + 1));
  v7 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView;
  if (qword_100AD0640 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_100B30860 + 1);
  v8 = xmmword_100B30860;
  if (qword_100AD0648 != -1)
  {
    v20 = xmmword_100B30860;
    swift_once();
    v9 = *(&v20 + 1);
    v8 = v20;
  }

  *&v1[v7] = sub_1006EA500(v8, v9, xmmword_100B30870, *(&xmmword_100B30870 + 1));
  sub_1000065A8(0, &qword_100ADC670);
  UIViewController.ViewLoading.init()();
  v10 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
  *&v1[v10] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v11 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchManager;
  *&v1[v11] = [objc_allocWithZone(type metadata accessor for LocationPickerSearchManager()) init];
  v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_hideFirstSeparator] = 1;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationUpdatesTask] = 0;
  v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDenied] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDeniedHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = 1;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearch] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearchWithCompletion] = 0;
  v12 = &v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearMe];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  v13 = &v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearPhoto];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable] = 1;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation] = 0;
  v14 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
  v15 = type metadata accessor for Loc(0);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentPlaces] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoPlaces] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation] = 0;
  v16 = &v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle];
  *v16 = 0;
  v16[1] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange] = 0;
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController____lazy_storage___pathMonitor] = 0;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for LocationPickerCollectionViewController(0);
  v17 = objc_msgSendSuper2(&v21, "initWithCoder:", a1);

  if (v17)
  {
  }

  return v17;
}

void sub_1006E6D74()
{
  sub_1006E9990(319, &unk_100AE41F0, &qword_100ADC670, UIView_ptr, &type metadata accessor for UIViewController.ViewLoading);
  if (v0 <= 0x3F)
  {
    sub_1006E6F14(319, &qword_100AE4740, type metadata accessor for Loc);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1006E6F14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1006E6FA0()
{
  v1 = 1;
  v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_hideFirstSeparator] = 1;
  [*&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView] setHidden:1];
  v2 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptyJournaledLocationView];
  v3 = sub_1006E46DC();
  [*&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView] setHidden:1];
  v4 = v3[2];

  if (!v4)
  {
    v1 = v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable];
  }

  [v2 setHidden:v1];

  v5 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView;
  v6 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView];
  if (v6)
  {
    [v6 setDelegate:v0];
    v7 = *&v0[v5];
    if (v7)
    {
      [v7 setDataSource:v0];
    }
  }

  if (v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDenied] == 1)
  {
    sub_1006DFE7C();
  }

  v8 = [v0 sheetPresentationController];
  if (!v8)
  {
    return;
  }

  v31 = v8;
  v9 = [v8 detents];
  sub_1000065A8(0, &qword_100AD85C0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_33:

    return;
  }

LABEL_32:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_33;
  }

LABEL_11:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v16 = [objc_opt_self() largeDetent];
    v17 = static NSObject.== infix(_:_:)();

    if ((v17 & 1) == 0)
    {
      break;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_33;
    }
  }

  v18 = [v14 identifier];

  v19 = [v31 selectedDetentIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {

LABEL_25:

      return;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_25;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v31;
  *(v26 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10065313C;
  *(v27 + 24) = v26;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A793A0;
  v28 = _Block_copy(aBlock);
  v29 = v18;
  v30 = v31;

  [v30 _animateChanges:v28 completion:0];

  _Block_release(v28);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }
}

id sub_1006E7460(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView);
  if (v3)
  {
    [v3 setHidden:a1 & 1];
  }

  v4 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView;
  v5 = a1 ^ 1;
  if ([*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView) isHidden] & 1) != 0 || (v5)
  {
    [*(v1 + v4) setHidden:1];
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView);

  return [v6 setHidden:v5 & 1];
}

void sub_1006E7508(void *a1, void *a2)
{
  v5 = type metadata accessor for Loc(0);
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = v8;
    if (*(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable) == 1)
    {
      v10 = objc_allocWithZone(MKLocalSearchRequest);

      v11 = a2;
      v12 = a1;
      v13 = [v10 initWithCompletion:v12];
      v14 = [objc_allocWithZone(MKLocalSearch) initWithRequest:v13];
      v15 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearchWithCompletion;
      v16 = *(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearchWithCompletion);
      if (v16)
      {
        [v16 cancel];
        v17 = *(v2 + v15);
      }

      else
      {
        v17 = 0;
      }

      *(v2 + v15) = v14;

      if (v14)
      {
        v28 = swift_allocObject();
        *(v28 + 16) = sub_1006EB6F4;
        *(v28 + 24) = v9;
        aBlock[4] = sub_1006EB6FC;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100825A38;
        aBlock[3] = &unk_100A79328;
        v29 = _Block_copy(aBlock);
        v30 = v14;

        [v30 startWithCompletionHandler:v29];

        _Block_release(v29);

        return;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v33 = Strong;
        *v7 = 0;
        *(v7 + 2) = 0;
        v42 = v12;
        v34 = v5[7];
        v35 = type metadata accessor for Date();
        v36 = *(*(v35 - 8) + 56);
        v41 = v11;
        v12 = v42;
        v36(&v7[v34], 1, 1, v35);
        v36(&v7[v5[8]], 1, 1, v35);
        v37 = &v7[v5[9]];
        *v37 = 0;
        *(v37 + 1) = 0;
        v38 = &v7[v5[10]];
        *v38 = 0;
        *(v38 + 1) = 0;
        *&v7[v5[11]] = 0;
        v7[v5[12]] = 0;
        v39 = v41;
        *(v7 + 1) = v41;
        v40 = v39;
        sub_1006E7CF8(v7);

        sub_1006EB484(v7, type metadata accessor for Loc);
      }
    }

    else
    {
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        *v7 = 0;
        *(v7 + 2) = 0;
        v20 = v5[7];
        v21 = type metadata accessor for Date();
        v22 = *(*(v21 - 8) + 56);
        v42 = v9;
        v22(&v7[v20], 1, 1, v21);
        v22(&v7[v5[8]], 1, 1, v21);
        v23 = &v7[v5[9]];
        *v23 = 0;
        *(v23 + 1) = 0;
        v24 = &v7[v5[10]];
        *v24 = 0;
        *(v24 + 1) = 0;
        *&v7[v5[11]] = 0;
        v7[v5[12]] = 0;
        *(v7 + 1) = a2;
        v25 = a2;

        v26 = v25;
        v27 = a1;
        sub_1006E7CF8(v7);

        sub_1006EB484(v7, type metadata accessor for Loc);

        return;
      }

      v31 = a2;
    }
  }
}

void sub_1006E79C8(unint64_t a1, void *a2)
{
  v4 = type metadata accessor for Loc(0);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(a1 + 32);
  }

  v8 = v7;
  v9 = [v7 location];
  v10 = [a2 location];
  [v9 distanceFromLocation:v10];
  v12 = v11;

  if (v12 <= 2.0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v22 = Strong;
    *v6 = 0;
    *(v6 + 2) = 0;
    v23 = v4[7];
    v24 = type metadata accessor for Date();
    v25 = *(*(v24 - 8) + 56);
    v25(&v6[v23], 1, 1, v24);
    v25(&v6[v4[8]], 1, 1, v24);
    v26 = &v6[v4[9]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v6[v4[10]];
    *v27 = 0;
    *(v27 + 1) = 0;
    *&v6[v4[11]] = 0;
    v6[v4[12]] = 0;
    *(v6 + 1) = v8;
    v28 = v8;
    sub_1006E7CF8(v6);

    goto LABEL_11;
  }

LABEL_9:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  *v6 = 0;
  *(v6 + 2) = 0;
  v15 = v4[7];
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(&v6[v15], 1, 1, v16);
  v17(&v6[v4[8]], 1, 1, v16);
  v18 = &v6[v4[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v6[v4[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v6[v4[11]] = 0;
  v6[v4[12]] = 0;
  *(v6 + 1) = a2;
  v20 = a2;
  sub_1006E7CF8(v6);

LABEL_11:
  sub_1006EB484(v6, type metadata accessor for Loc);
}

uint64_t sub_1006E7CF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AEED30);
  __chkstk_darwin(v4 - 8);
  v96 = &v85 - v5;
  v6 = type metadata accessor for VisitAssetMetadata();
  v98 = *(v6 - 8);
  v99 = v6;
  __chkstk_darwin(v6);
  v97 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  v9 = __chkstk_darwin(v8 - 8);
  v106 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v85 - v12;
  v14 = __chkstk_darwin(v11);
  v105 = &v85 - v15;
  __chkstk_darwin(v14);
  v17 = &v85 - v16;
  v18 = sub_1000F24EC(&unk_100AEE090);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v85 - v23;
  __chkstk_darwin(v22);
  v26 = &v85 - v25;
  v27 = *(a1 + 8);
  v101 = a1;
  v103 = v13;
  v104 = v17;
  if (!v27)
  {
    if (*(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption) != 1)
    {
      v37 = *(a1 + 16);
      v102 = 0;
      if (!v37)
      {
        v94 = 1;
        v100 = 0;
        v93 = 0;
        v95 = 0;
        goto LABEL_40;
      }

      v38 = &selRef_coordinate;
      v100 = 0;
      goto LABEL_39;
    }

    v100 = 0;
    v102 = 0;
    v31 = 0.0;
LABEL_9:
    v33 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
    swift_beginAccess();
    sub_1000082B4(v2 + v33, v26, &unk_100AEE090);
    v34 = type metadata accessor for Loc(0);
    v35 = *(*(v34 - 8) + 48);
    if (v35(v26, 1, v34) || (v39 = *(v26 + 1)) == 0)
    {
      sub_100004F84(v26, &unk_100AEE090);
      if (v27)
      {
        goto LABEL_28;
      }

      v36 = 0.0;
    }

    else
    {
      v40 = v39;
      sub_100004F84(v26, &unk_100AEE090);
      [v40 _coordinate];
      v42 = v41;

      if (!v27 || v31 != v42)
      {
        goto LABEL_28;
      }

      [v27 _coordinate];
      v36 = v43;
    }

    sub_1000082B4(v2 + v33, v24, &unk_100AEE090);
    if (v35(v24, 1, v34) || (v44 = *(v24 + 1)) == 0)
    {
      sub_100004F84(v24, &unk_100AEE090);
      if (!v27)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v45 = v44;
      sub_100004F84(v24, &unk_100AEE090);
      [v45 _coordinate];
      v47 = v46;

      if (v27 && v36 == v47)
      {
LABEL_24:
        if (v102)
        {
          v48 = HIBYTE(v102) & 0xF;
          if ((v102 & 0x2000000000000000) == 0)
          {
            v48 = v100 & 0xFFFFFFFFFFFFLL;
          }

          if (v48)
          {
            goto LABEL_28;
          }
        }

        sub_1000082B4(v2 + v33, v21, &unk_100AEE090);
        if (v35(v21, 1, v34))
        {
          v100 = 0;
          v102 = 0;
        }

        else
        {
          v49 = &v21[*(v34 + 36)];
          v50 = v49[1];
          v100 = *v49;
          v102 = v50;
        }

        a1 = v101;
        v13 = v103;
        v17 = v104;
        sub_100004F84(v21, &unk_100AEE090);
        v37 = *(a1 + 16);
        if (v37)
        {
          goto LABEL_30;
        }

        goto LABEL_37;
      }
    }

LABEL_28:
    a1 = v101;
    v13 = v103;
    v17 = v104;
    goto LABEL_29;
  }

  v28 = [v27 name];
  if (v28)
  {
    v29 = v28;
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v30;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption) == 1)
  {
    [v27 _coordinate];
    v31 = v32;
    goto LABEL_9;
  }

LABEL_29:
  v37 = *(a1 + 16);
  if (v37)
  {
LABEL_30:
    v38 = &selRef_coordinate;
LABEL_39:
    [v37 *v38];
    v95 = v51;
    [v37 *v38];
    v94 = 0;
    v93 = v52;
    goto LABEL_40;
  }

LABEL_37:
  if (v27)
  {
    v38 = &selRef__coordinate;
    v37 = v27;
    goto LABEL_39;
  }

  v93 = 0;
  v95 = 0;
  v94 = 1;
LABEL_40:
  v53 = type metadata accessor for Loc(0);
  v54 = (a1 + v53[9]);
  v55 = v54[1];
  if (v55)
  {
    v56 = *v54;
  }

  else
  {
    v56 = 0;
  }

  if (v27 && !v55)
  {
    v57 = [v27 addressRepresentations];
    if (v57 && (v58 = v57, v59 = [v57 cityName], v58, v59))
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v56 = 0;
    }
  }

  v60 = (a1 + v53[10]);
  v61 = v60[1];
  if (v61)
  {
    v91 = *v60;

    v90 = v61;
    goto LABEL_57;
  }

  if (v27)
  {

    v62 = [v27 _firstLocalizedCategoryName];
    if (v62 || (v62 = [v27 pointOfInterestCategory]) != 0)
    {
      v63 = v62;
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v64;

      goto LABEL_57;
    }
  }

  else
  {
  }

  v91 = 0;
  v90 = 0;
LABEL_57:
  sub_1000082B4(a1 + v53[7], v17, &unk_100AD4790);
  v65 = *(a1 + v53[11]);
  v86 = v53;
  v92 = v56;

  if (v65)
  {
    v66 = v65;
  }

  else
  {
    v66 = [v27 _styleAttributes];
  }

  sub_1000082B4(v17, v105, &unk_100AD4790);
  v67 = type metadata accessor for Date();
  v68 = *(*(v67 - 8) + 56);
  v68(v13, 1, 1, v67);
  v69 = v65;
  v70 = v106;
  static Date.now.getter();
  v68(v70, 0, 1, v67);
  if (v66)
  {
    sub_1000065A8(0, &qword_100AD5A80);
    v71 = v66;
    v88 = NSCoding<>.toData.getter();
    v87 = v72;
  }

  else
  {
    v88 = 0;
    v87 = 0xF000000000000000;
  }

  v89 = v66;
  v73 = v2;
  if (v27)
  {
    sub_1000065A8(0, &qword_100AD5A90);
    NSCoding<>.toData.getter();
    v74 = [v27 location];
    [v74 horizontalAccuracy];
  }

  v75 = enum case for AssetSource.locationPicker(_:);
  v76 = type metadata accessor for AssetSource();
  v77 = *(v76 - 8);
  v78 = v96;
  (*(v77 + 104))(v96, v75, v76);
  (*(v77 + 56))(v78, 0, 1, v76);

  v79 = v97;
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  v80 = v73 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v81 = *(v80 + 8);
    ObjectType = swift_getObjectType();
    (*(v81 + 8))(v73, v79, *(v101 + v86[12]), ObjectType, v81);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v83 = v104;

  (*(v98 + 8))(v79, v99);
  return sub_100004F84(v83, &unk_100AD4790);
}

id sub_1006E881C(void *a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v6 = sub_1000F24EC(&unk_100AEE090);
  __chkstk_darwin(v6 - 8);
  v8 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v84[-v10];
  __chkstk_darwin(v12);
  v14 = &v84[-v13];
  if (IndexPath.section.getter())
  {
    v15 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [a1 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:isa];

    type metadata accessor for LocationCollectionViewCell();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_cellType;
      *(v18 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_cellType) = 1;
      if (*(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption))
      {
        if (*(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption) == 1)
        {
          v21 = *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
          v22 = *(v18 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation);
          *(v18 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation) = v21;
          v23 = v21;

          *(v19 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_sortMethod) = 1;
          v24 = IndexPath.item.getter();
          v25 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs;
          swift_beginAccess();
          if ((v24 & 0x8000000000000000) == 0)
          {
            v26 = *(&v3->isa + v25);
            if (v24 < *(v26 + 16))
            {
              v27 = type metadata accessor for Loc(0);
              v28 = *(v27 - 8);
              sub_1006EB41C(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v11, type metadata accessor for Loc);
              (*(v28 + 56))(v11, 0, 1, v27);
              v29 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
              swift_beginAccess();
              sub_10010EF40(v11, v19 + v29);
              swift_endAccess();
              if (*(v19 + v20))
              {
                sub_1004566A4();
              }

              else
              {
                sub_100456BD4();
              }

              v66 = v11;
LABEL_52:
              sub_100004F84(v66, &unk_100AEE090);
              return v19;
            }

            goto LABEL_56;
          }

          __break(1u);
        }

        else
        {
          v48 = *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
          v49 = *(v18 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation);
          *(v18 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation) = v48;
          v50 = v48;

          *(v19 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_sortMethod) = 0;
          v51 = sub_1006E46DC();
          [*(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
          v52 = IndexPath.item.getter();
          if ((v52 & 0x8000000000000000) == 0)
          {
            v53 = v52;
            if (v52 < v51[2])
            {
              v54 = type metadata accessor for Loc(0);
              v55 = *(v54 - 8);
              sub_1006EB41C(v51 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53, v14, type metadata accessor for Loc);

              (*(v55 + 56))(v14, 0, 1, v54);
              v56 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
              swift_beginAccess();
              sub_10010EF40(v14, v19 + v56);
              swift_endAccess();
              if (*(v19 + v20))
              {
                sub_1004566A4();
              }

              else
              {
                sub_100456BD4();
              }

              v66 = v14;
              goto LABEL_52;
            }

            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v40 = *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation);
      if (!v40 || *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation) != 1)
      {
        return v19;
      }

      v41 = *(v18 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation);
      *(v18 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation) = v40;
      v42 = v40;

      *(v19 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_sortMethod) = 1;
      v43 = IndexPath.item.getter();
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v44 = v43;
        v4 = *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs);
        if (v43 < *(v4 + 16))
        {
          v45 = type metadata accessor for Loc(0);
          v46 = *(v45 - 8);
          sub_1006EB41C(v4 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44, v8, type metadata accessor for Loc);
          (*(v46 + 56))(v8, 0, 1, v45);
          v47 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
          swift_beginAccess();
          sub_10010EF40(v8, v19 + v47);
          swift_endAccess();
          if (*(v19 + v20))
          {
            sub_1004566A4();
          }

          else
          {
            sub_100456BD4();
          }

          v66 = v8;
          goto LABEL_52;
        }
      }

      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
    v30 = String._bridgeToObjectiveC()();
    v31 = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [a1 dequeueReusableCellWithReuseIdentifier:v30 forIndexPath:v31];

    type metadata accessor for LocationPickerTitleCell();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v19 = v32;
      if ((*(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable) & 1) == 0)
      {
        if (qword_100AD0148 == -1)
        {
LABEL_32:
          v57 = type metadata accessor for Logger();
          sub_10000617C(v57, qword_100AEDDE0);
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v85[0] = v61;
            *v60 = 136315138;
            if (qword_100AD0150 != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for UUID();
            sub_10000617C(v62, qword_100AEDDF8);
            sub_1006E9C54(&qword_100AE19B0, &type metadata accessor for UUID);
            v63 = dispatch thunk of CustomStringConvertible.description.getter();
            v65 = sub_100008458(v63, v64, v85);

            *(v60 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v58, v59, "%s location picker shows the title label since it's in prod-cn", v60, 0xCu);
            sub_10000BA7C(v61);
          }

          if (qword_100AD0610 != -1)
          {
            swift_once();
          }

          sub_1004059A4();
          return v19;
        }

LABEL_58:
        swift_once();
        goto LABEL_32;
      }

      if (!*(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange))
      {
        if (qword_100AD0148 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_10000617C(v67, qword_100AEDDE0);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v85[0] = v71;
          *v70 = 136315138;
          if (qword_100AD0150 != -1)
          {
            swift_once();
          }

          v72 = type metadata accessor for UUID();
          sub_10000617C(v72, qword_100AEDDF8);
          sub_1006E9C54(&qword_100AE19B0, &type metadata accessor for UUID);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = sub_100008458(v73, v74, v85);

          *(v70 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v68, v69, "%s location picker shows segmented control since it's used in the location picker without prod-cn", v70, 0xCu);
          sub_10000BA7C(v71);
        }

        v76 = *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle);
        v77 = *(&v3[1].isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle);
        v78 = *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation);

        v79 = sub_1006E46DC();
        [*(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
        v80 = v79[2];

        sub_100405DF8(v76, v77, v78, v80 != 0, *(&v3->isa + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption));

        v81 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v82 = (v19 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_locationOptionChanged);
        v83 = *(v19 + OBJC_IVAR____TtC7Journal23LocationPickerTitleCell_locationOptionChanged);
        *v82 = sub_1006EB40C;
        v82[1] = v81;

        sub_100004DF8(v83);

        return v19;
      }

      if (qword_100AD0148 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000617C(v33, qword_100AEDDE0);
      v3 = Logger.logObject.getter();
      LOBYTE(v4) = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v3, v4))
      {
LABEL_17:

        return v19;
      }

      v8 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v85[0] = v14;
      *v8 = 136315138;
      if (qword_100AD0150 == -1)
      {
LABEL_16:
        v34 = type metadata accessor for UUID();
        sub_10000617C(v34, qword_100AEDDF8);
        sub_1006E9C54(&qword_100AE19B0, &type metadata accessor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = sub_100008458(v35, v36, v85);

        *(v8 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v3, v4, "%s location picker shows no segmented control nor title since it's used in the Change Location list without prod-cn", v8, 0xCu);
        sub_10000BA7C(v14);

        goto LABEL_17;
      }

LABEL_61:
      swift_once();
      goto LABEL_16;
    }
  }

  v38 = objc_allocWithZone(UICollectionViewCell);

  return [v38 init];
}

void sub_1006E9518(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = a1;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1006E2F2C(a1);
  }
}

void sub_1006E97D8()
{
  sub_1006E9990(319, &unk_100AEDFF0, &unk_100AD2BD0, MKLocalSearchCompletion_ptr, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1006E9990(319, &qword_100AEE000, &qword_100AD5A90, MKMapItem_ptr, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1006E9990(319, &unk_100AEE010, &unk_100AD2BF0, CLLocation_ptr, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1006E6F14(319, &qword_100AD59F0, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          sub_10034652C();
          if (v4 <= 0x3F)
          {
            sub_1006E9990(319, qword_100AEE020, &qword_100AD5A80, GEOFeatureStyleAttributes_ptr, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1006E9990(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000065A8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1006E9A40()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      v8 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar;
      result = [*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar) isFirstResponder];
      if (result)
      {
        v9 = *(v0 + v8);

        return [v9 resignFirstResponder];
      }
    }
  }

  return result;
}

uint64_t sub_1006E9B5C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1006E9BDC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

uint64_t sub_1006E9C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006E9C9C(void **a1, void **a2)
{
  v4 = type metadata accessor for Date();
  v68 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v64[-v11];
  v13 = sub_1000F24EC(&unk_100AD5BE0);
  __chkstk_darwin(v13);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v64[-v17];
  v69 = a1;
  v70 = a2;
  v19 = *a1;
  v20 = *a2;
  if (*a1)
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    sub_1000065A8(0, &unk_100AD2BD0);
    v21 = v20;
    v22 = v19;
    v23 = static NSObject.== infix(_:_:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v20)
  {
    goto LABEL_30;
  }

  v24 = v69[1];
  v25 = v70[1];
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_30;
    }

    sub_1000065A8(0, &qword_100AD5A90);
    v26 = v25;
    v27 = v24;
    v28 = static NSObject.== infix(_:_:)();

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v25)
  {
    goto LABEL_30;
  }

  v29 = v69[2];
  v30 = v70[2];
  if (v29)
  {
    if (!v30)
    {
      goto LABEL_30;
    }

    sub_1000065A8(0, &unk_100AD2BF0);
    v31 = v30;
    v32 = v29;
    v33 = static NSObject.== infix(_:_:)();

    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v30)
  {
    goto LABEL_30;
  }

  v67 = type metadata accessor for Loc(0);
  v34 = v67[7];
  v35 = *(v13 + 48);
  sub_1000082B4(v69 + v34, v18, &unk_100AD4790);
  sub_1000082B4(v70 + v34, &v18[v35], &unk_100AD4790);
  v36 = *(v68 + 48);
  if (v36(v18, 1, v4) == 1)
  {
    if (v36(&v18[v35], 1, v4) == 1)
    {
      v66 = v36;
      sub_100004F84(v18, &unk_100AD4790);
      goto LABEL_23;
    }

LABEL_21:
    v37 = v18;
LABEL_29:
    sub_100004F84(v37, &unk_100AD5BE0);
    goto LABEL_30;
  }

  sub_1000082B4(v18, v12, &unk_100AD4790);
  if (v36(&v18[v35], 1, v4) == 1)
  {
    (*(v68 + 8))(v12, v4);
    goto LABEL_21;
  }

  v66 = v36;
  v38 = v68;
  (*(v68 + 32))(v6, &v18[v35], v4);
  sub_1006E9C54(&qword_100AD5BF0, &type metadata accessor for Date);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v38 + 8);
  v39(v6, v4);
  v39(v12, v4);
  sub_100004F84(v18, &unk_100AD4790);
  if ((v65 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v40 = v67[8];
  v41 = *(v13 + 48);
  sub_1000082B4(v69 + v40, v15, &unk_100AD4790);
  sub_1000082B4(v70 + v40, &v15[v41], &unk_100AD4790);
  v42 = v66;
  if (v66(v15, 1, v4) != 1)
  {
    sub_1000082B4(v15, v9, &unk_100AD4790);
    if (v42(&v15[v41], 1, v4) != 1)
    {
      v45 = v68;
      (*(v68 + 32))(v6, &v15[v41], v4);
      sub_1006E9C54(&qword_100AD5BF0, &type metadata accessor for Date);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v45 + 8);
      v47(v6, v4);
      v47(v9, v4);
      sub_100004F84(v15, &unk_100AD4790);
      if ((v46 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    (*(v68 + 8))(v9, v4);
    goto LABEL_28;
  }

  if (v42(&v15[v41], 1, v4) != 1)
  {
LABEL_28:
    v37 = v15;
    goto LABEL_29;
  }

  sub_100004F84(v15, &unk_100AD4790);
LABEL_33:
  v48 = v67[9];
  v49 = (v69 + v48);
  v50 = *(v69 + v48 + 8);
  v51 = (v70 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v52)
  {
    goto LABEL_30;
  }

  v53 = v67[10];
  v54 = (v69 + v53);
  v55 = *(v69 + v53 + 8);
  v56 = (v70 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57 || (*v54 != *v56 || v55 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v57)
  {
    goto LABEL_30;
  }

  v58 = v67[11];
  v59 = *(v69 + v58);
  v60 = *(v70 + v58);
  if (v59)
  {
    if (v60)
    {
      sub_1000065A8(0, &qword_100AD5A80);
      v61 = v60;
      v62 = v59;
      v63 = static NSObject.== infix(_:_:)();

      if (v63)
      {
        goto LABEL_52;
      }
    }
  }

  else if (!v60)
  {
LABEL_52:
    v43 = *(v69 + v67[12]) ^ *(v70 + v67[12]) ^ 1;
    return v43 & 1;
  }

LABEL_30:
  v43 = 0;
  return v43 & 1;
}

id sub_1006EA468()
{
  v1 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentPlaces;
  swift_beginAccess();
  *(v0 + v1) = 0;

  sub_1006DB2C8();
  v2 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoPlaces;
  swift_beginAccess();
  *(v0 + v2) = 0;

  sub_1006DBAEC();
  result = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearch);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

id sub_1006EA500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03C0 != -1)
  {
    swift_once();
  }

  [v4 setFont:{qword_100B303B8, a3, a4}];
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  [v4 setTextColor:v6];

  [v4 setLineBreakMode:0];
  [v4 setTextAlignment:1];
  [v4 setNumberOfLines:0];
  v7 = UIAccessibilityTraitHeader;
  v8 = v4;
  v9 = [v8 accessibilityTraits];
  if ((v7 & ~v9) != 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  [v8 setAccessibilityTraits:v10 | v9];

  v11 = String._bridgeToObjectiveC()();
  [v8 setText:v11];

  v12 = [objc_allocWithZone(UILabel) init];
  v13 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v12 setFont:v13];

  v14 = [v5 secondaryLabelColor];
  [v12 setTextColor:v14];

  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:0];
  [v12 setTextAlignment:1];
  v15 = String._bridgeToObjectiveC()();
  [v12 setText:v15];

  sub_1000F24EC(&unk_100AD4780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100941D60;
  *(v16 + 32) = v8;
  *(v16 + 40) = v12;
  v17 = objc_allocWithZone(UIStackView);
  sub_1000065A8(0, &qword_100ADC670);
  v18 = v8;
  v19 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v17 initWithArrangedSubviews:isa];

  [v21 setAxis:1];
  [v21 setAlignment:3];
  [v21 setSpacing:4.0];

  return v21;
}

void sub_1006EA864(void *a1, void *a2)
{
  v35 = [a1 superview];
  if (!v35)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = [a1 superview];
  v5 = &selRef_setSuggestedName_;
  if (v4)
  {
    v6 = v4;
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [a1 leadingAnchor];
    v8 = [v6 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setConstant:12.0];
    if (v9)
    {
      [v9 setActive:1];
    }

    v5 = &selRef_setSuggestedName_;
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 superview];
  if (v10)
  {
    v11 = v10;
    [a1 v5[278]];
    v12 = [a1 trailingAnchor];
    v13 = [v11 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:-12.0];
    if (v14)
    {
      [v14 setActive:1];
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 centerYAnchor];
  v16 = [a2 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  LODWORD(v18) = 1144750080;
  [v17 setPriority:v18];
  v19 = [a1 topAnchor];
  v20 = [v35 topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];

  v22 = String._bridgeToObjectiveC()();
  [v21 setIdentifier:v22];

  sub_1000F24EC(&unk_100AD4780);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100941040;
  v24 = [a1 centerXAnchor];
  v25 = [a2 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v23 + 32) = v26;
  if (!v9)
  {
    *(v23 + 40) = [objc_allocWithZone(NSLayoutConstraint) init];
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_16:
    v29 = objc_allocWithZone(NSLayoutConstraint);
    v27 = v9;
    v28 = [v29 init];
    goto LABEL_17;
  }

  *(v23 + 40) = v9;
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_14:
  v27 = v9;
  v28 = v14;
LABEL_17:
  *(v23 + 48) = v28;
  v30 = objc_opt_self();
  *(v23 + 56) = v17;
  *(v23 + 64) = v21;
  sub_1000065A8(0, &qword_100AD8000);
  v31 = v14;
  v32 = v17;
  v33 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];
}

void sub_1006EAD60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = [a1 superview];
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v30 = v7;
  v8 = [v7 constraints];
  sub_1000065A8(0, &qword_100AD8000);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_30:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v30;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_31:

    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v30;
  if (!v10)
  {
    goto LABEL_31;
  }

LABEL_4:
  v12 = 0;
  while ((v9 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_18;
    }

LABEL_9:
    v31 = v13;
    v15 = [v13 identifier];
    if (v15)
    {
      v16 = a3;
      v17 = v15;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == a2 && v20 == v16)
      {
        goto LABEL_19;
      }

      a3 = v16;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_20;
      }
    }

    ++v12;
    v11 = v30;
    if (v14 == v10)
    {
      goto LABEL_31;
    }
  }

  if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v13 = *(v9 + 8 * v12 + 32);
  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
LABEL_19:

LABEL_20:

  [v31 constant];
  if (v23 == 0.0)
  {
    if (a5)
    {
      [a1 frame];
      v25 = v24;
    }

    else
    {
      v25 = *&a4;
    }

    [v31 setConstant:v25];

    v26 = v31;
  }

  else
  {

    v26 = v30;
  }
}

uint64_t sub_1006EB03C(uint64_t a1)
{
  if (a1)
  {
    if (*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption))
    {
      if (*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption) == 1)
      {
        v2 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs;
        swift_beginAccess();
        v3 = *(v1 + v2);
        return *(v3 + 16);
      }

      v7 = sub_1006E46DC();
      [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
      v8 = v7[2];

      return v8;
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation))
      {
        v3 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs);
        return *(v3 + 16);
      }

      return 0;
    }
  }

  else if (((*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation) & 1) != 0 || (v4 = sub_1006E46DC(), [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1], v5 = v4[2], , v5)) && !*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange))
  {
    return 1;
  }

  else
  {
    return ~*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable) & 1;
  }
}

unint64_t sub_1006EB17C()
{
  v1 = v0;
  v2 = type metadata accessor for Loc(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption);
  result = IndexPath.item.getter();
  v8 = result;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v12 = sub_1006E46DC();
    v13 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
    [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
    v14 = v12[2];

    if (v8 >= v14)
    {
      return result;
    }

    v15 = sub_1006E46DC();
    [*(v1 + v13) setHidden:1];
    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < v15[2])
      {
        sub_1006EB41C(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v5, type metadata accessor for Loc);

        goto LABEL_16;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs;
  result = swift_beginAccess();
  if (v8 >= *(*(v0 + v9) + 16))
  {
    return result;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v0 + v9);
  if (result < *(v10 + 16))
  {
LABEL_11:
    sub_1006EB41C(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v5, type metadata accessor for Loc);
LABEL_16:
    sub_1006E7CF8(v5);
    return sub_1006EB484(v5, type metadata accessor for Loc);
  }

  __break(1u);
LABEL_7:
  v11 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs;
  if (v8 < *(*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs) + 16) && *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation))
  {
    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v10 = *(v0 + v11);
      if (result < *(v10 + 16))
      {
        goto LABEL_11;
      }

LABEL_22:
      __break(1u);
      return result;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1006EB41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006EB484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006EB4F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1006E0120(a1, v4, v5, v7, v6);
}

uint64_t sub_1006EB5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006EB640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1006DE3A8(a1, v4, v5, v6);
}

uint64_t sub_1006EB730()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEE0E8);
  v1 = sub_10000617C(v0, qword_100AEE0E8);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006EB7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_1000F24EC(&qword_100AE64E0);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for ClientInfo();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64F0);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64F8);
  v4[14] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1350);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEE350);
  v4[20] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AEE360);
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = sub_1000F24EC(&unk_100AEE180);
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AEE368);
  v4[27] = v10;
  v4[28] = *(v10 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v4[31] = v11;
  v4[32] = v13;

  return _swift_task_switch(sub_1006EBBBC, v11, v13);
}

uint64_t sub_1006EBBBC()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];
  v12 = v0[8];
  type metadata accessor for AnalyzerInput();
  (*(v6 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 16))(v7, v1, v3);
  (*(v2 + 56))(v7, 0, 1, v3);
  v8 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_inputBuilder;
  swift_beginAccess();
  sub_100014318(v7, v12 + v8, &qword_100AEE350);
  swift_endAccess();
  v0[33] = type metadata accessor for MainActor();
  v0[34] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006EBD78, v10, v9);
}

uint64_t sub_1006EBD78()
{

  if (qword_100AD0A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_1006EBE0C, v1, v2);
}

uint64_t sub_1006EBE0C()
{
  *(v0 + 280) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006EBE98, v2, v1);
}

uint64_t sub_1006EBE98()
{

  v0[36] = qword_100B31070;
  v1 = v0[31];
  v2 = v0[32];

  return _swift_task_switch(sub_1006EBF08, v1, v2);
}

uint64_t sub_1006EBF08()
{
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1000A6318(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[15], &qword_100AD1350);
LABEL_4:
    static Locale.autoupdatingCurrent.getter();
    goto LABEL_6;
  }

  (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
LABEL_6:
  v5 = v0[13];
  v4 = v0[14];
  v26 = v0[8];
  (*(v0[17] + 16))(v0[18], v0[19], v0[16]);
  v6 = enum case for TaskHint.liveTranscription(_:);
  v7 = type metadata accessor for TaskHint();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = type metadata accessor for Transcriber.ModelOptions();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1006EF004();
  sub_1000F24EC(&qword_100AE6500);
  v10 = type metadata accessor for Transcriber.ReportingOption();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940050;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v10);
  v16(v15 + v12, enum case for Transcriber.ReportingOption.volatileResults(_:), v10);
  sub_100496714(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000F24EC(&qword_100AE6508);
  v17 = type metadata accessor for TranscriptionResultAttributeOption();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100940080;
  (*(v18 + 104))(v20 + v19, enum case for TranscriptionResultAttributeOption.audioTimeRange(_:), v17);
  sub_100496A34(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  type metadata accessor for Transcriber();
  swift_allocObject();
  v21 = Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  v0[37] = v21;
  *(v26 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_transcriber) = v21;

  v0[38] = type metadata accessor for SpeechAnalyzer();
  v0[39] = sub_1000F24EC(&qword_100AE6510);
  v22 = swift_allocObject();
  v0[40] = v22;
  *(v22 + 16) = xmmword_100940080;
  v23 = sub_1006EF280();
  v0[41] = v23;
  *(v22 + 32) = v21;
  *(v22 + 40) = v23;

  v24 = swift_task_alloc();
  v0[42] = v24;
  *v24 = v0;
  v24[1] = sub_1006EC3F4;

  return static SpeechAnalyzer.bestAudioFormat(compatibleWith:)(v22);
}

uint64_t sub_1006EC3F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_1006ECA44;
  }

  else
  {
    v7 = sub_1006EC554;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1006EC554()
{
  v1 = v0[43];
  v18 = v0[37];
  v19 = v0[41];
  v2 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  v20 = v0[9];
  v9 = v0[8];
  v10 = *(v9 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzerFormat);
  *(v9 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzerFormat) = v1;
  v21 = v1;

  (*(v6 + 16))(v7, v9 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_clientInfo, v8);
  (*(v4 + 16))(v2, v3, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100940080;
  *(v11 + 32) = v18;
  *(v11 + 40) = v19;
  v12 = type metadata accessor for AnalysisOptions();
  (*(*(v12 - 8) + 56))(v20, 1, 1, v12);
  type metadata accessor for AnalysisContext();
  swift_allocObject();

  v13 = v21;
  AnalysisContext.init()();
  sub_1006EF2D8();
  *(v9 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzer) = SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:volatileRangeChangedHandler:)();

  v14 = swift_task_alloc();
  v0[45] = v14;
  *v14 = v0;
  v14[1] = sub_1006EC794;
  v15 = v0[5];
  v16 = v0[6];

  return sub_1006EDB34(v15, v16);
}

uint64_t sub_1006EC794()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_1006ECBAC;
  }

  else
  {
    v5 = sub_1006EC8D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006EC8D0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v11 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 128);

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1006ECA44()
{

  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[24];
  (*(v0[17] + 8))(v0[19], v0[16]);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006ECBAC()
{

  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006ECD20(void *a1)
{
  v32 = a1;
  v2 = sub_1000F24EC(&qword_100AEE358);
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = &v26 - v3;
  v31 = type metadata accessor for AnalyzerInput();
  v26 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v30 = &v26 - v7;
  v8 = sub_1000F24EC(&qword_100AEE350);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1000F24EC(&unk_100AEE180);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_inputBuilder;
  swift_beginAccess();
  sub_1000082B4(v1 + v15, v10, &qword_100AEE350);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &qword_100AEE350);
LABEL_7:
    sub_1006EEDC0();
    swift_allocError();
    *v21 = 3;
    return swift_willThrow();
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = *(v1 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzerFormat);
  if (!v16)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_7;
  }

  v17 = v16;

  v18 = v33;
  v19 = sub_100814D80(v32, v17);
  if (v18)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v22 = v19;

    v33 = v22;
    v23 = v30;
    AnalyzerInput.init(buffer:)();
    v24 = v26;
    (*(v26 + 16))(v5, v23, v31);
    v25 = v27;
    AsyncStream.Continuation.yield(_:)();

    (*(v28 + 8))(v25, v29);
    (*(v24 + 8))(v30, v31);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1006ED158(uint64_t a1)
{
  v2[11] = v1;
  v4 = sub_1000F24EC(&qword_100AEE170);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEE328);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = sub_1000F24EC(&unk_100AEE180);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEE350);
  v2[20] = swift_task_alloc();
  if (a1)
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

  v2[21] = v6;
  v2[22] = v8;

  return _swift_task_switch(sub_1006ED344, v6, v8);
}

uint64_t sub_1006ED344()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_inputBuilder;
  swift_beginAccess();
  sub_1000082B4(v4 + v5, v1, &qword_100AEE350);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[20];
  if (v6)
  {
    sub_100004F84(v0[20], &qword_100AEE350);
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[17];
    (*(v9 + 16))(v8, v0[20], v10);
    sub_100004F84(v7, &qword_100AEE350);
    AsyncStream.Continuation.finish()();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[11];
  v12 = *(v11 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzer);
  v0[23] = v12;
  if (v12)
  {

    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_1006ED718;

    return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
  }

  else
  {
    v14 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_recognizerTask;
    if (*(v11 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_recognizerTask))
    {

      sub_1000F24EC(&qword_100AD5BC0);
      Task.cancel()();

      v15 = v0[11];
    }

    else
    {
      v15 = v11;
    }

    v16 = v0[16];
    v17 = v0[12];
    v18 = v0[13];
    *(v11 + v14) = 0;

    v19 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_audioTaskContinuation;
    swift_beginAccess();
    sub_1000082B4(v15 + v19, v16, &qword_100AEE328);
    v20 = (*(v18 + 48))(v16, 1, v17);
    v21 = v0[16];
    if (v20)
    {
      sub_100004F84(v0[16], &qword_100AEE328);
    }

    else
    {
      v23 = v0[13];
      v22 = v0[14];
      v24 = v0[12];
      (*(v23 + 16))(v22, v0[16], v24);
      sub_100004F84(v21, &qword_100AEE328);
      AsyncStream.Continuation.finish()();
      (*(v23 + 8))(v22, v24);
    }

    v25 = v0[15];
    (*(v0[13] + 56))(v25, 1, 1, v0[12]);
    swift_beginAccess();
    sub_100014318(v25, v15 + v19, &qword_100AEE328);
    swift_endAccess();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1006ED718()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1006EDA8C;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1006ED834;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006ED834()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_recognizerTask;
  if (*(v1 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_recognizerTask))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v3 = v0[11];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[13];
  *(v1 + v2) = 0;

  v7 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_audioTaskContinuation;
  swift_beginAccess();
  sub_1000082B4(v3 + v7, v4, &qword_100AEE328);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v9 = v0[16];
  if (v8)
  {
    sub_100004F84(v0[16], &qword_100AEE328);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    (*(v11 + 16))(v10, v0[16], v12);
    sub_100004F84(v9, &qword_100AEE328);
    AsyncStream.Continuation.finish()();
    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[15];
  (*(v0[13] + 56))(v13, 1, 1, v0[12]);
  swift_beginAccess();
  sub_100014318(v13, v3 + v7, &qword_100AEE328);
  swift_endAccess();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1006EDA8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006EDB34(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = v2;
  sub_1000F24EC(&qword_100AD5170);
  v3[7] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEE328);
  v3[8] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AEE330);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AEE170);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_1006EDD10, v7, v9);
}

uint64_t sub_1006EDD10()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v26 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[6];
  type metadata accessor for Transcriber.MultisegmentResult();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v3, v5);
  (*(v2 + 16))(v6, v1, v26);
  (*(v2 + 56))(v6, 0, 1, v26);
  v8 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_audioTaskContinuation;
  swift_beginAccess();
  sub_100014318(v6, v7 + v8, &qword_100AEE328);
  swift_endAccess();
  v9 = *(v7 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_transcriber);
  if (v9 && (v10 = v0[6], *(v10 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzer)))
  {
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v14 = v0[7];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v9;
    v16[5] = v10;

    v17 = sub_1004EC158(0, 0, v14, &unk_1009643F8, v16);
    (*(v12 + 8))(v11, v13);
    *(v10 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_recognizerTask) = v17;

    v18 = v0[1];
  }

  else
  {
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v22 = v0[5];
    sub_1006EEDC0();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    (*(v20 + 8))(v19, v21);
    v24 = sub_1000F24EC(&qword_100AE64A0);
    (*(*(v24 - 8) + 8))(v22, v24);

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1006EE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1000F24EC(&qword_100AEE170);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEE328);
  v5[11] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEE340);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for Transcriber.MultisegmentResult();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64C0);
  v5[17] = swift_task_alloc();
  v5[18] = sub_1000F24EC(&qword_100AE6530);
  v5[19] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AE6538);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1006EE2F0, 0, 0);
}

uint64_t sub_1006EE2F0()
{
  Transcriber.multisegmentResults.getter();
  v0[23] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[24] = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_audioTaskContinuation;
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1006EE43C;
  v2 = v0[17];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, 0, 0);
}

uint64_t sub_1006EE43C()
{

  if (v0)
  {
    v1 = sub_1006EE8E0;
  }

  else
  {
    v1 = sub_1006EE54C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1006EE54C()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[24];
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[7];
    (*(v3 + 32))(v0[16], v1, v2);
    sub_1000082B4(v10 + v6, v7, &qword_100AEE328);
    v11 = (*(v9 + 48))(v7, 1, v8);
    v12 = v0[16];
    if (v11)
    {
      v13 = v0[11];
      (*(v0[14] + 8))(v0[16], v0[13]);
      sub_100004F84(v13, &qword_100AEE328);
      v14 = 1;
    }

    else
    {
      v16 = v0[14];
      v15 = v0[15];
      v17 = v0[13];
      v19 = v0[10];
      v18 = v0[11];
      v20 = v0[8];
      v21 = v0[9];
      (*(v21 + 16))(v19, v18, v20);
      sub_100004F84(v18, &qword_100AEE328);
      (*(v16 + 16))(v15, v12, v17);
      AsyncStream.Continuation.yield(_:)();
      (*(v21 + 8))(v19, v20);
      (*(v16 + 8))(v12, v17);
      v14 = 0;
    }

    v22 = v0[12];
    v23 = sub_1000F24EC(&qword_100AEE348);
    (*(*(v23 - 8) + 56))(v22, v14, 1, v23);
    sub_100004F84(v22, &qword_100AEE340);
    swift_getAssociatedConformanceWitness();
    v24 = swift_task_alloc();
    v0[25] = v24;
    *v24 = v0;
    v24[1] = sub_1006EE43C;
    v25 = v0[17];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v25, 0, 0);
  }
}

uint64_t sub_1006EE8E0()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  if (qword_100AD0158 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEE0E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "speech recognition failed", v4, 2u);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006EEA80()
{
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_audioTaskContinuation, &qword_100AEE328);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_inputBuilder, &qword_100AEE350);

  v1 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_clientInfo;
  v2 = type metadata accessor for ClientInfo();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1006EEB70()
{
  sub_1006EEA80();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriSpeechRecognitionManager()
{
  result = qword_100AEE158;
  if (!qword_100AEE158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006EEC1C()
{
  sub_1006EED6C(319, &qword_100AEE168, &qword_100AEE170);
  if (v0 <= 0x3F)
  {
    sub_1006EED6C(319, &qword_100AEE178, &unk_100AEE180);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClientInfo();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1006EED6C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000F2A18(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1006EEDC0()
{
  result = qword_100AEE338;
  if (!qword_100AEE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE338);
  }

  return result;
}

uint64_t sub_1006EEE14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1006EE070(a1, v4, v5, v7, v6);
}

uint64_t sub_1006EEED4()
{
  v1 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_audioTaskContinuation;
  v2 = sub_1000F24EC(&qword_100AEE170);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_inputBuilder;
  v4 = sub_1000F24EC(&unk_100AEE180);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_transcriber) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzer) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_recognizerTask) = 0;
  v5 = OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_converter;
  type metadata accessor for BufferConverter();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v0 + v5) = v6;
  static AppInfo.bundleIdentifier.getter();
  ClientInfo.init(identifier:)();
  *(v0 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_analyzerFormat) = 0;
  return v0;
}

id sub_1006EF004()
{
  v0 = type metadata accessor for Transcriber.TranscriptionOption();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  sub_1000F24EC(&qword_100AEE378);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100942000;
  v11 = v10 + v9;
  v12 = *(v2 + 104);
  v12(v11, enum case for Transcriber.TranscriptionOption.contextualizedTranscription(_:), v0);
  v12(v11 + v8, enum case for Transcriber.TranscriptionOption.punctuation(_:), v0);
  v12(v11 + 2 * v8, enum case for Transcriber.TranscriptionOption.emoji(_:), v0);
  v13 = sub_1004963F4(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = v13;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v15 = result;
    v16 = [result effectiveBoolValueForSetting:MCFeatureAssistantProfanityFilterForced];

    if (v16 == 1)
    {
      v12(v4, enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:), v0);
      sub_1002891A0(v7, v4);
      (*(v2 + 8))(v7, v0);
      return v18;
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1006EF280()
{
  result = qword_100AE6518;
  if (!qword_100AE6518)
  {
    type metadata accessor for Transcriber();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6518);
  }

  return result;
}

unint64_t sub_1006EF2D8()
{
  result = qword_100AEE370;
  if (!qword_100AEE370)
  {
    sub_1000F2A18(&qword_100AEE368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE370);
  }

  return result;
}

void sub_1006EF33C(uint64_t a1, void (*a2)(void))
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000065A8(0, &unk_100AE4860);
    sub_10006DAB0(&qword_100AE2A98, &unk_100AE4860);
    Set.Iterator.init(_cocoa:)();
    v3 = v15;
    v4 = v16;
    v6 = v17;
    v5 = v18;
    v7 = v19;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v5 = 0;
  }

  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000065A8(0, &unk_100AE4860), swift_dynamicCast(), (v13 = v14) == 0))
    {
LABEL_21:
      sub_100014FF8();
      return;
    }

LABEL_16:
    a2(0);
    if (swift_dynamicCastClass())
    {
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

  v11 = v5;
  v12 = v7;
  if (v7)
  {
LABEL_12:
    v7 = (v12 - 1) & v12;
    v13 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v12 = *(v4 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1006EF5D4()
{
  v0 = type metadata accessor for FileStoreConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v71 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v69 = &v63 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v63 - v10;
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0180 != -1)
  {
    swift_once();
  }

  v18 = sub_10000617C(v14, qword_100B2FF20);
  (*(v15 + 16))(v17, v18, v14);
  sub_1008250F4();
  if (!v19)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v68 = v14;
  v70 = v17;
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.getAttachmentURL(from:isDirectory:)();

  (*(v1 + 8))(v3, v0);
  v20 = v71;
  v21 = v4;
  v22 = v13;
  (*(v71 + 32))(v13, v11, v21);
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  URL.path.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 fileExistsAtPath:v25];

  if ((v26 & 1) == 0)
  {
    (*(v20 + 8))(v13, v21);
    return (*(v15 + 8))(v70, v68);
  }

  v27 = *(v20 + 16);
  v28 = v69;
  v64 = (v20 + 16);
  v65 = v23;
  v63 = v27;
  v27(v69, v13, v21);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v66 = v15;
  if (v31)
  {
    v32 = v28;
    v33 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_100008458(0xD000000000000013, 0x80000001008E3C80, &v72);
    *(v33 + 12) = 2080;
    sub_1006F4450(&qword_100ADEFD0, &type metadata accessor for URL);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v20;
    v37 = v36;
    v38 = *(v35 + 8);
    v38(v32, v21);
    v39 = sub_100008458(v34, v37, &v72);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Deleting %s attachment directory: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v20 + 8);
    v38(v28, v21);
  }

  v41 = [v65 defaultManager];
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  v72 = 0;
  v45 = [v41 removeItemAtURL:v43 error:&v72];

  if (v45)
  {
    v46 = v72;
    v38(v22, v21);
    return (*(v66 + 8))(v70, v68);
  }

  v69 = v38;
  v47 = v72;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v48 = v67;
  v63(v67, v22, v21);
  swift_errorRetain();
  v49 = v22;
  v50 = v70;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v65 = v49;
    *v53 = 136315650;
    *(v53 + 4) = sub_100008458(0xD000000000000013, 0x80000001008E3C80, &v72);
    *(v53 + 12) = 2080;
    sub_1006F4450(&qword_100ADEFD0, &type metadata accessor for URL);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v57 = v48;
    v58 = v69;
    (v69)(v57, v21);
    v59 = sub_100008458(v54, v56, &v72);

    *(v53 + 14) = v59;
    *(v53 + 22) = 2112;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 24) = v60;
    v61 = v64;
    *v64 = v60;
    _os_log_impl(&_mh_execute_header, v51, v52, "Error deleting %s attachments directory %s: %@", v53, 0x20u);
    sub_100004F84(v61, &unk_100AD4BB0);

    swift_arrayDestroy();

    v58(v65, v21);
    return (*(v66 + 8))(v70, v68);
  }

  v62 = v69;
  (v69)(v48, v21);
  v62(v49, v21);
  return (*(v66 + 8))(v50, v68);
}

uint64_t sub_1006EFE94()
{
  v0 = type metadata accessor for FileStoreConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v71 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v69 = &v63 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v63 - v10;
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0180 != -1)
  {
    swift_once();
  }

  v18 = sub_10000617C(v14, qword_100B2FF20);
  (*(v15 + 16))(v17, v18, v14);
  sub_100825608();
  if (!v19)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v68 = v14;
  v70 = v17;
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.getAttachmentURL(from:isDirectory:)();

  (*(v1 + 8))(v3, v0);
  v20 = v71;
  v21 = v4;
  v22 = v13;
  (*(v71 + 32))(v13, v11, v21);
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  URL.path.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 fileExistsAtPath:v25];

  if ((v26 & 1) == 0)
  {
    (*(v20 + 8))(v13, v21);
    return (*(v15 + 8))(v70, v68);
  }

  v27 = *(v20 + 16);
  v28 = v69;
  v64 = (v20 + 16);
  v65 = v23;
  v63 = v27;
  v27(v69, v13, v21);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v66 = v15;
  if (v31)
  {
    v32 = v28;
    v33 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_100008458(0x456C616E72756F4ALL, 0xEE004F4D7972746ELL, &v72);
    *(v33 + 12) = 2080;
    sub_1006F4450(&qword_100ADEFD0, &type metadata accessor for URL);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v20;
    v37 = v36;
    v38 = *(v35 + 8);
    v38(v32, v21);
    v39 = sub_100008458(v34, v37, &v72);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Deleting %s attachment directory: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v20 + 8);
    v38(v28, v21);
  }

  v41 = [v65 defaultManager];
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  v72 = 0;
  v45 = [v41 removeItemAtURL:v43 error:&v72];

  if (v45)
  {
    v46 = v72;
    v38(v22, v21);
    return (*(v66 + 8))(v70, v68);
  }

  v69 = v38;
  v47 = v72;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v48 = v67;
  v63(v67, v22, v21);
  swift_errorRetain();
  v49 = v22;
  v50 = v70;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v65 = v49;
    *v53 = 136315650;
    *(v53 + 4) = sub_100008458(0x456C616E72756F4ALL, 0xEE004F4D7972746ELL, &v72);
    *(v53 + 12) = 2080;
    sub_1006F4450(&qword_100ADEFD0, &type metadata accessor for URL);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v57 = v48;
    v58 = v69;
    (v69)(v57, v21);
    v59 = sub_100008458(v54, v56, &v72);

    *(v53 + 14) = v59;
    *(v53 + 22) = 2112;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 24) = v60;
    v61 = v64;
    *v64 = v60;
    _os_log_impl(&_mh_execute_header, v51, v52, "Error deleting %s attachments directory %s: %@", v53, 0x20u);
    sub_100004F84(v61, &unk_100AD4BB0);

    swift_arrayDestroy();

    v58(v65, v21);
    return (*(v66 + 8))(v70, v68);
  }

  v62 = v69;
  (v69)(v48, v21);
  v62(v49, v21);
  return (*(v66 + 8))(v50, v68);
}

uint64_t sub_1006F0764()
{
  if (qword_100AD0160 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AEE380);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Private [Sync] context - Want to save", v3, 2u);
  }

  sub_1000F24EC(&qword_100ADFA68);
  sub_10000B58C(&qword_100ADFAE8, &qword_100ADFA68);
  return Subject<>.send()();
}

void sub_1006F08A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006F08F8();
  }
}

void sub_1006F08F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v32);
  v4 = type metadata accessor for ProtectedData.ProtectedDataState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v5 + 104))(v8, enum case for ProtectedData.ProtectedDataState.available(_:), v4);
  v11 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  v13 = qword_100AD0160 == -1;
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_100AD0160 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000617C(v14, qword_100AEE380);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Private [Sync] context - Saving...", v17, 2u);
  }

  v18 = OBJC_IVAR____TtC7Journal13CoreDataStack_sessionID;
  v19 = *(v1 + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v1 + v18;
  v22 = v32;
  (*(v2 + 16))(&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v32);
  v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v19;
  (*(v2 + 32))(v24 + v23, &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  *(v24 + ((v3 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1006F3938;
  *(v25 + 24) = v24;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A79468;
  v26 = _Block_copy(aBlock);
  v27 = v19;

  [v27 performBlockAndWait:v26];
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_8:
    if (!v13)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000617C(v28, qword_100AEE380);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Skipping performSaveToPrivateContext - ProtectedData.state is not .available", v31, 2u);
    }
  }
}

void sub_1006F0E04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v88 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = &v81 - v9;
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v81 - v11;
  v13 = sub_1000F24EC(&qword_100ADFA80);
  v14 = __chkstk_darwin(v13 - 8);
  v92 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = type metadata accessor for CKSyncEngine.State.Serialization();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v87 = v12;
  v89 = a3;
  v90 = Strong;
  v91 = v6;
  v94 = v5;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1004667BC;
  *(v24 + 24) = v23;
  v99 = sub_100177C4C;
  v100 = v24;
  aBlock = _NSConcreteStackBlock;
  v96 = 1107296256;
  v97 = sub_10001A7D4;
  v98 = &unk_100A794E0;
  v25 = _Block_copy(&aBlock);
  v26 = a2;

  [v26 performBlockAndWait:v25];
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_100758B08(v26);
  v25 = v90;
  sub_1006F199C(v26);
  if (qword_100ACFE28 != -1)
  {
LABEL_22:
    swift_once();
  }

  v86 = qword_100B2F9E0;
  v28 = *(qword_100B2F9E0 + 24);
  v29 = &v28[OBJC_IVAR____TtC7Journal13CloudKitStack_pendingSyncEngineStateTokenMutex];
  v30 = v28;
  os_unfair_lock_lock(v29);
  v85 = sub_1000F24EC(&qword_100AE5DD0);
  sub_100052EAC(v29 + *(v85 + 28), v17);
  os_unfair_lock_unlock(v29);

  v31 = (*(v19 + 48))(v17, 1, v18);
  v32 = v94;
  if (v31 == 1)
  {
    sub_100004F84(v17, &qword_100ADFA80);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_10048BDC0(v21);
    (*(v19 + 8))(v21, v18);
  }

  aBlock = 0;
  if ([v26 save:&aBlock])
  {
    v33 = aBlock;
    sub_1006F4498(v26);
    sub_1006F4710(v26);
    [v26 reset];
  }

  else
  {
    v34 = aBlock;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v84 = v35;
    v36 = _convertErrorToNSError(_:)();
    aBlock = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    aBlock = 0xD000000000000020;
    v96 = 0x8000000100901C00;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 8236;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    v83 = v36;
    v43 = [v36 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = Dictionary.description.getter();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);

    v48 = v96;
    v82 = aBlock;
    if (qword_100AD0160 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000617C(v49, qword_100AEE380);
    v50 = v91;
    v51 = v88;
    (*(v91 + 16))(v88, v89, v32);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v54 = 136446466;
      sub_1006F4450(&qword_100AE19B0, &type metadata accessor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v51;
      v57 = v55;
      v59 = v58;
      (*(v50 + 8))(v56, v94);
      v60 = sub_100008458(v57, v59, &aBlock);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      v61 = sub_100008458(v82, v48, &aBlock);

      *(v54 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s %s", v54, 0x16u);
      swift_arrayDestroy();
      v32 = v94;
    }

    else
    {

      (*(v50 + 8))(v51, v32);
    }

    v25 = v90;
  }

  v62 = *(v86 + 24);
  v63 = v92;
  (*(v19 + 56))(v92, 1, 1, v18);
  v64 = &v62[OBJC_IVAR____TtC7Journal13CloudKitStack_pendingSyncEngineStateTokenMutex];
  v65 = v62;
  os_unfair_lock_lock(v64);
  v66 = *(v85 + 28);
  sub_100004F84(v64 + v66, &qword_100ADFA80);
  sub_100052EAC(v63, v64 + v66);
  os_unfair_lock_unlock(v64);

  sub_100004F84(v63, &qword_100ADFA80);
  v67 = type metadata accessor for TaskPriority();
  v68 = v87;
  (*(*(v67 - 8) + 56))(v87, 1, 1, v67);
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  sub_1003E9628(0, 0, v68, &unk_100964490, v69);

  if (qword_100AD0160 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_10000617C(v70, qword_100AEE380);
  v71 = v91;
  v72 = v93;
  (*(v91 + 16))(v93, v89, v32);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock = v76;
    *v75 = 136446210;
    sub_1006F4450(&qword_100AE19B0, &type metadata accessor for UUID);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v78;
    (*(v71 + 8))(v72, v32);
    v80 = sub_100008458(v77, v79, &aBlock);

    *(v75 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v73, v74, "%{public}s Private Save - Done", v75, 0xCu);
    sub_10000BA7C(v76);
  }

  else
  {

    (*(v71 + 8))(v72, v32);
  }
}

uint64_t sub_1006F199C(void *a1)
{
  v66 = type metadata accessor for UUID();
  v2 = *(v66 - 8);
  v3 = __chkstk_darwin(v66);
  v61 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v53 - v5;
  v7 = &selRef_startExport_;
  v8 = [a1 updatedObjects];
  v9 = sub_1000065A8(0, &unk_100AE4860);
  v10 = sub_10006DAB0(&qword_100AE2A98, &unk_100AE4860);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006EF33C(v11, &type metadata accessor for JournalEntryMO);
  v13 = v12;
  v58 = 0;

  v62 = v13;
  if (v13 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    v57 = v2;
    if (i)
    {
      v54 = v10;
      v55 = v9;
      v56 = a1;
      v9 = v62;
      v64 = OBJC_IVAR____TtC7Journal13CoreDataStack_unDeletedObjectsIDs;
      v65 = v62 & 0xC000000000000001;
      swift_beginAccess();
      v10 = 0;
      v60 = v9 & 0xFFFFFFFFFFFFFF8;
      v59 = v9 + 32;
      v63 = (v2 + 8);
      while (1)
      {
        if (v65)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v60 + 16))
          {
            goto LABEL_56;
          }

          v16 = *(v59 + 8 * v10);
        }

        v17 = v16;
        v18 = __OFADD__(v10++, 1);
        if (v18)
        {
          break;
        }

        v19 = [v16 p_ivar_lyt[371]];
        if (v19)
        {
          v7 = i;
          v20 = v19;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v2 = *(v64 + v67);

          v21 = UUID.uuidString.getter();
          v23 = v22;
          if (*(v2 + 16))
          {
            a1 = v21;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v24 = Hasher._finalize()();
            v25 = -1 << *(v2 + 32);
            v26 = v24 & ~v25;
            if ((*(v2 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
            {
              v27 = ~v25;
              while (1)
              {
                v28 = (*(v2 + 48) + 16 * v26);
                v29 = *v28 == a1 && v28[1] == v23;
                if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v26 = (v26 + 1) & v27;
                if (((*(v2 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
                {
                  goto LABEL_21;
                }
              }

              [v17 setIsFullyRemoved:1];
            }

            else
            {
LABEL_21:
            }

            p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
            v9 = v62;
          }

          else
          {
          }

          (*v63)(v6, v66);
          i = v7;
          if (v10 == v7)
          {
LABEL_26:

            a1 = v56;
            v7 = &selRef_startExport_;
            v10 = v54;
            goto LABEL_28;
          }
        }

        else
        {

          if (v10 == i)
          {
            goto LABEL_26;
          }
        }
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_28:
    v30 = [a1 v7[307]];
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1006EF33C(v31, &type metadata accessor for JournalEntryAssetMO);
    v33 = v32;

    v7 = v33 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v61;
    v35 = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    if (!v7)
    {
      break;
    }

    v6 = (v33 & 0xC000000000000001);
    v65 = OBJC_IVAR____TtC7Journal13CoreDataStack_unDeletedObjectsIDs;
    swift_beginAccess();
    v9 = 0;
    v62 = v33 & 0xFFFFFFFFFFFFFF8;
    v60 = v33 + 32;
    v63 = (v33 & 0xC000000000000001);
    v64 = (v57 + 8);
    while (1)
    {
      if (v6)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v62 + 16))
        {
          goto LABEL_57;
        }

        v36 = *(v60 + 8 * v9);
      }

      v10 = v36;
      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        break;
      }

      v37 = [v36 v35[371]];
      if (v37)
      {
        v38 = v37;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v2 = *(v67 + v65);

        v39 = UUID.uuidString.getter();
        v41 = v40;
        if (*(v2 + 16))
        {
          a1 = v39;
          v42 = v7;
          v43 = v33;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v44 = Hasher._finalize()();
          v45 = -1 << *(v2 + 32);
          v46 = v44 & ~v45;
          if ((*(v2 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
          {
            v47 = ~v45;
            while (1)
            {
              v48 = (*(v2 + 48) + 16 * v46);
              v49 = *v48 == a1 && v48[1] == v41;
              if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v46 = (v46 + 1) & v47;
              if (((*(v2 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            [v10 setIsFullyRemoved:1];
          }

          else
          {
LABEL_48:
          }

          v34 = v61;
          v35 = (&InsightsPlacesDetailView.ContentViewController + 16);
          v33 = v43;
          v7 = v42;
          v6 = v63;
        }

        else
        {
        }

        (*v64)(v34, v66);
        if (v9 == v7)
        {
          goto LABEL_53;
        }
      }

      else
      {

        if (v9 == v7)
        {
          goto LABEL_53;
        }
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_53:

  v50 = OBJC_IVAR____TtC7Journal13CoreDataStack_unDeletedObjectsIDs;
  v51 = v67;
  swift_beginAccess();
  *(v51 + v50) = &_swiftEmptySetSingleton;
}

uint64_t sub_1006F2118()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006F21B0, v2, v1);
}

uint64_t sub_1006F21B0()
{

  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1006F2248, 0, 0);
}

uint64_t sub_1006F2248()
{
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006F22D4, v2, v1);
}

uint64_t sub_1006F22D4()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1003A1CE0;

  return sub_100179B44();
}

void sub_1006F23C0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v94 = a3;
  v97 = a2;
  v81 = a4;
  v102 = type metadata accessor for UUID();
  v6 = *(v102 - 8);
  __chkstk_darwin(v102);
  v90 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v8 - 8);
  v86 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v79 - v11;
  __chkstk_darwin(v12);
  v87 = &v79 - v13;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v93 = &v79 - v16;
  v80 = a1;
  v17 = [a1 updatedObjects];
  v18 = sub_1000065A8(0, &unk_100AE4860);
  v19 = sub_10006DAB0(&qword_100AE2A98, &unk_100AE4860);
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = v18;
  v82 = v4;
  v79 = v19;
  v84 = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v20 = v104;
    v21 = v105;
    v22 = v106;
    v23 = v107;
    v24 = v108;
  }

  else
  {
    v25 = -1 << *(v20 + 32);
    v21 = v20 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v20 + 56);

    v23 = 0;
  }

  v83 = v22;
  v100 = (v6 + 48);
  v101 = (v6 + 56);
  v89 = (v6 + 16);
  v88 = (v6 + 8);
  v28 = v87;
  v92 = v20;
  while (v20 < 0)
  {
    v34 = __CocoaSet.Iterator.next()();
    if (!v34)
    {
      goto LABEL_28;
    }

    v114 = v34;
    swift_dynamicCast();
    v33 = v109;
    v31 = v23;
    v32 = v24;
    if (!v109)
    {
      goto LABEL_28;
    }

LABEL_19:
    v95 = v23;
    v96 = v24;
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = v35;
      v99 = v33;
      v37 = [v36 id];
      if (v37)
      {
        v38 = v32;
        v39 = v37;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = v38;
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = v102;
      (*v101)(v28, v40, 1, v102);
      v42 = v93;
      sub_100024EC0(v28, v93);
      if ((*v100)(v42, 1, v41))
      {
        sub_100004F84(v42, &qword_100AD1420);

        v20 = v92;
      }

      else
      {
        v85 = v32;
        v43 = v90;
        (*v89)(v90, v42, v41);
        sub_100004F84(v42, &qword_100AD1420);
        v44 = UUID.uuidString.getter();
        v45 = v41;
        v46 = v44;
        v48 = v47;
        (*v88)(v43, v45);
        if (v46 == v97 && v48 == v94)
        {
LABEL_57:

LABEL_58:
          sub_100014FF8();

LABEL_56:
          *v81 = v36;
          return;
        }

        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v87;
        v20 = v92;
        v32 = v85;
        if (v49)
        {
          goto LABEL_58;
        }
      }
    }

    v23 = v31;
    v24 = v32;
  }

  v29 = v23;
  v30 = v24;
  v31 = v23;
  if (v24)
  {
LABEL_15:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v31 >= ((v22 + 64) >> 6))
    {
      break;
    }

    v30 = *(v21 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  sub_100014FF8();

  v50 = [v80 insertedObjects];
  v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v86;
  v87 = v51;
  if ((v51 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v51 = v109;
    v53 = v110;
    v54 = v111;
    v55 = v112;
    v56 = v113;
  }

  else
  {
    v57 = -1 << *(v51 + 32);
    v53 = v51 + 56;
    v54 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v51 + 56);

    v55 = 0;
  }

  v85 = v54;
  v93 = v51;
  while (2)
  {
    if (v51 < 0)
    {
      v65 = __CocoaSet.Iterator.next()();
      if (!v65 || (v103 = v65, swift_dynamicCast(), v64 = v114, v62 = v55, v63 = v56, !v114))
      {
LABEL_55:
        sub_100014FF8();

        v36 = 0;
        goto LABEL_56;
      }

      goto LABEL_46;
    }

    v60 = v55;
    v61 = v56;
    v62 = v55;
    if (v56)
    {
LABEL_42:
      v63 = (v61 - 1) & v61;
      v64 = *(*(v51 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
      if (!v64)
      {
        goto LABEL_55;
      }

LABEL_46:
      v95 = v55;
      v96 = v56;
      type metadata accessor for JournalEntryAssetFileAttachmentMO();
      v66 = swift_dynamicCastClass();
      if (v66)
      {
        v36 = v66;
        v67 = v64;
        v68 = [v36 id];
        v99 = v67;
        if (v68)
        {
          v69 = v63;
          v70 = v68;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v63 = v69;
          v71 = 0;
        }

        else
        {
          v71 = 1;
        }

        v72 = v91;
        v73 = v102;
        (*v101)(v52, v71, 1, v102);
        sub_100024EC0(v52, v72);
        if ((*v100)(v72, 1, v73))
        {
          sub_100004F84(v72, &qword_100AD1420);

          v51 = v93;
        }

        else
        {
          v92 = v63;
          v74 = v90;
          (*v89)(v90, v72, v73);
          sub_100004F84(v72, &qword_100AD1420);
          v75 = UUID.uuidString.getter();
          v77 = v76;
          (*v88)(v74, v73);
          if (v75 == v97 && v77 == v94)
          {
            goto LABEL_57;
          }

          v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v52 = v86;
          v51 = v93;
          v63 = v92;
          if (v78)
          {
            goto LABEL_58;
          }
        }
      }

      v55 = v62;
      v56 = v63;
      continue;
    }

    break;
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= ((v54 + 64) >> 6))
    {
      goto LABEL_55;
    }

    v61 = *(v53 + 8 * v62);
    ++v60;
    if (v61)
    {
      goto LABEL_42;
    }
  }

LABEL_60:
  __break(1u);
}

void sub_1006F2D70(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  type metadata accessor for JournalEntryMO();
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  v19 = v12;
  if (v12 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_8:
      v39 = v5;
      if (v20 < 1)
      {
        __break(1u);
      }

      v21 = 0;
      v41 = (v3 + 56);
      v42 = v19 & 0xC000000000000001;
      v40 = (v3 + 48);
      v36 = (v3 + 8);
      v37 = (v3 + 16);
      v38 = a1;
      do
      {
        if (v42)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = [v22 id];
        if (v24)
        {
          v25 = v24;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        v27 = v19;
        (*v41)(v9, v26, 1, v2);
        sub_100024EC0(v9, v11);
        if ((*v40)(v11, 1, v2))
        {
          sub_100004F84(v11, &qword_100AD1420);
        }

        else
        {
          v28 = v39;
          (*v37)(v39, v11, v2);
          sub_100004F84(v11, &qword_100AD1420);
          v29 = UUID.uuidString.getter();
          v31 = v30;
          (*v36)(v28, v2);
          if (qword_100ACFE28 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          sub_100286DEC(&v43, v29, v31);
          swift_endAccess();

          a1 = v38;
        }

        ++v21;
        sub_1006EFE94();
        [a1 deleteObject:v23];

        v19 = v27;
      }

      while (v20 != v21);

      v44[0] = 0;
      v32 = [a1 save:v44];
      v33 = v44[0];
      if (v32)
      {

        v34 = v33;
      }

      else
      {
        v42 = v44[0];
        v35 = v44[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100AD0160 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000617C(v13, qword_100AEE380);
        swift_errorRetain();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          swift_errorRetain();
          v18 = _swift_stdlib_bridgeErrorToNSError();
          *(v16 + 4) = v18;
          *v17 = v18;
          _os_log_impl(&_mh_execute_header, v14, v15, "Unable cleanupUndeletedEntries: %@", v16, 0xCu);
          sub_100004F84(v17, &unk_100AD4BB0);
        }

        else
        {
        }
      }

      return;
    }
  }
}

void sub_1006F3350(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  type metadata accessor for JournalEntryAssetMO();
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  v19 = v12;
  if (v12 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_8:
      v39 = v5;
      if (v20 < 1)
      {
        __break(1u);
      }

      v21 = 0;
      v41 = (v3 + 56);
      v42 = v19 & 0xC000000000000001;
      v40 = (v3 + 48);
      v36 = (v3 + 8);
      v37 = (v3 + 16);
      v38 = a1;
      do
      {
        if (v42)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = [v22 id];
        if (v24)
        {
          v25 = v24;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        v27 = v19;
        (*v41)(v9, v26, 1, v2);
        sub_100024EC0(v9, v11);
        if ((*v40)(v11, 1, v2))
        {
          sub_100004F84(v11, &qword_100AD1420);
        }

        else
        {
          v28 = v39;
          (*v37)(v39, v11, v2);
          sub_100004F84(v11, &qword_100AD1420);
          v29 = UUID.uuidString.getter();
          v31 = v30;
          (*v36)(v28, v2);
          if (qword_100ACFE28 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          sub_100286DEC(&v43, v29, v31);
          swift_endAccess();

          a1 = v38;
        }

        ++v21;
        sub_1006EF5D4();
        [a1 deleteObject:v23];

        v19 = v27;
      }

      while (v20 != v21);

      v44[0] = 0;
      v32 = [a1 save:v44];
      v33 = v44[0];
      if (v32)
      {

        v34 = v33;
      }

      else
      {
        v42 = v44[0];
        v35 = v44[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100AD0160 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000617C(v13, qword_100AEE380);
        swift_errorRetain();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          swift_errorRetain();
          v18 = _swift_stdlib_bridgeErrorToNSError();
          *(v16 + 4) = v18;
          *v17 = v18;
          _os_log_impl(&_mh_execute_header, v14, v15, "Unable cleanupUndeletedAssets: %@", v16, 0xCu);
          sub_100004F84(v17, &unk_100AD4BB0);
        }

        else
        {
        }
      }

      return;
    }
  }
}

void sub_1006F3938()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1006F0E04(v2, v3, v4);
}

void sub_1006F39F8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v103 = a4;
  v94 = a2;
  v96 = a1;
  v102 = type metadata accessor for UUID();
  v5 = *(v102 - 8);
  __chkstk_darwin(v102 - 8);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD1420);
  v8 = __chkstk_darwin(v7 - 8);
  v88 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = &v83 - v11;
  v12 = __chkstk_darwin(v10);
  v95 = &v83 - v13;
  __chkstk_darwin(v12);
  v93 = &v83 - v14;
  v84 = a3;
  v15 = [a3 updatedObjects];
  v16 = sub_1000065A8(0, &unk_100AE4860);
  v17 = sub_10006DAB0(&qword_100AE2A98, &unk_100AE4860);
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = v17;
  v86 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v18 = v106;
    v19 = v107;
    v20 = v108;
    v21 = v109;
    v22 = v110;
  }

  else
  {
    v23 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v24 = ~v23;
    v25 = -v23;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v22 = v26 & *(v18 + 56);

    v20 = v24;
    v21 = 0;
  }

  v85 = v20;
  v27 = (v20 + 64) >> 6;
  v100 = (v5 + 48);
  v101 = (v5 + 56);
  v90 = (v5 + 16);
  v89 = (v5 + 8);
  v99 = v16;
  while (v18 < 0)
  {
    v33 = __CocoaSet.Iterator.next()();
    if (!v33)
    {
      goto LABEL_28;
    }

    v105 = v33;
    swift_dynamicCast();
    v32 = v111;
    v30 = v21;
    v31 = v22;
    if (!v111)
    {
      goto LABEL_28;
    }

LABEL_19:
    v97 = v21;
    v103(0);
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v98 = v32;
      v36 = [v35 id];
      if (v36)
      {
        v37 = v95;
        v38 = v31;
        v39 = v36;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = v38;
        v40 = 0;
        v41 = v102;
      }

      else
      {
        v40 = 1;
        v41 = v102;
        v37 = v95;
      }

      (*v101)(v37, v40, 1, v41);
      v42 = v37;
      v43 = v93;
      sub_100024EC0(v42, v93);
      if ((*v100)(v43, 1, v41))
      {
        sub_100004F84(v43, &qword_100AD1420);
      }

      else
      {
        v87 = v31;
        v44 = v91;
        (*v90)(v91, v43, v41);
        sub_100004F84(v43, &qword_100AD1420);
        v45 = UUID.uuidString.getter();
        v46 = v41;
        v47 = v45;
        v49 = v48;
        (*v89)(v44, v46);
        if (v47 == v96 && v49 == v94)
        {
LABEL_56:

LABEL_57:
          sub_100014FF8();

          return;
        }

        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v31 = v87;
        if (v50)
        {
          goto LABEL_57;
        }
      }
    }

    v21 = v30;
    v22 = v31;
  }

  v28 = v21;
  v29 = v22;
  v30 = v21;
  if (v22)
  {
LABEL_15:
    v31 = (v29 - 1) & v29;
    v32 = *(*(v18 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v30 >= v27)
    {
      break;
    }

    v29 = *(v19 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  sub_100014FF8();

  v51 = [v84 insertedObjects];
  v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = v52;
  if ((v52 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v53 = v111;
    v54 = v112;
    v55 = v113;
    v56 = v114;
    v57 = v115;
  }

  else
  {
    v58 = -1 << *(v52 + 32);
    v54 = v52 + 56;
    v59 = ~v58;
    v60 = -v58;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v57 = v61 & *(v52 + 56);

    v55 = v59;
    v56 = 0;
    v53 = v52;
  }

  v62 = v88;
  v86 = v55;
  v63 = (v55 + 64) >> 6;
  v97 = v53;
  while (2)
  {
    if (v53 < 0)
    {
      v69 = __CocoaSet.Iterator.next()();
      if (!v69)
      {
        goto LABEL_57;
      }

      v104 = v69;
      swift_dynamicCast();
      v68 = v105;
      v66 = v56;
      v67 = v57;
      if (!v105)
      {
        goto LABEL_57;
      }

      goto LABEL_46;
    }

    v64 = v56;
    v65 = v57;
    v66 = v56;
    if (v57)
    {
LABEL_42:
      v67 = (v65 - 1) & v65;
      v68 = *(*(v53 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v65)))));
      if (!v68)
      {
        goto LABEL_57;
      }

LABEL_46:
      v95 = v56;
      v103(0);
      v70 = swift_dynamicCastClass();
      if (v70)
      {
        v71 = v70;
        v98 = v68;
        v72 = [v71 id];
        if (v72)
        {
          v73 = v67;
          v74 = v72;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v67 = v73;
          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v76 = v92;
        v77 = v102;
        (*v101)(v62, v75, 1, v102);
        sub_100024EC0(v62, v76);
        if ((*v100)(v76, 1, v77))
        {
          sub_100004F84(v76, &qword_100AD1420);
        }

        else
        {
          v93 = v67;
          v78 = v91;
          (*v90)(v91, v76, v77);
          sub_100004F84(v76, &qword_100AD1420);
          v79 = UUID.uuidString.getter();
          v81 = v80;
          (*v89)(v78, v77);
          if (v79 == v96 && v81 == v94)
          {
            goto LABEL_56;
          }

          v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v62 = v88;
          v67 = v93;
          if (v82)
          {
            goto LABEL_57;
          }
        }
      }

      v56 = v66;
      v57 = v67;
      v53 = v97;
      continue;
    }

    break;
  }

  while (1)
  {
    v66 = (v64 + 1);
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v66 >= v63)
    {
      goto LABEL_57;
    }

    v65 = *(v54 + 8 * v66);
    ++v64;
    if (v65)
    {
      goto LABEL_42;
    }
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_1006F43A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_1006F20FC();
}

uint64_t sub_1006F4450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006F4498(void *a1)
{
  type metadata accessor for JournalEntryMO();
  v2 = static JournalEntryMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940080;
  v4 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(v3 + 56) = sub_1000065A8(0, &unk_100ADE730);
  *(v3 + 64) = sub_10006DAB0(&qword_100AEE3A8, &unk_100ADE730);
  *(v3 + 32) = v4;
  v5 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v5];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1006F4990;
  *(v7 + 24) = v6;
  v12[4] = sub_100177C4C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001A7D4;
  v12[3] = &unk_100A795F8;
  v8 = _Block_copy(v12);
  v9 = a1;
  v10 = v2;

  [v9 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006F4710(void *a1)
{
  type metadata accessor for JournalEntryAssetMO();
  v2 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940080;
  v4 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(v3 + 56) = sub_1000065A8(0, &unk_100ADE730);
  *(v3 + 64) = sub_10006DAB0(&qword_100AEE3A8, &unk_100ADE730);
  *(v3 + 32) = v4;
  v5 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v5];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1006F4988;
  *(v7 + 24) = v6;
  v12[4] = sub_100177C4C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001A7D4;
  v12[3] = &unk_100A79580;
  v8 = _Block_copy(v12);
  v9 = a1;
  v10 = v2;

  [v9 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006F49A8()
{
  v0 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v55 = *(v0 - 8);
  __chkstk_darwin(v0);
  v53 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Date.FormatStyle.DateStyle();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v50);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v56 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v42 - v14;
  v15 = sub_1000F24EC(&qword_100ADA980);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for ConfettiAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AC7D4(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &qword_100ADA980;
    v23 = v17;
LABEL_8:
    sub_100004F84(v23, v22);
    return 0;
  }

  v48 = v0;
  (*(v19 + 32))(v21, v17, v18);
  v24 = v18;
  ConfettiAssetMetadata.startDate.getter();
  v25 = *(v10 + 48);
  if (v25(v8, 1, v9) == 1)
  {
    (*(v19 + 8))(v21, v24);
LABEL_7:
    v22 = &unk_100AD4790;
    v23 = v8;
    goto LABEL_8;
  }

  v46 = v12;
  v47 = v24;
  v26 = v57;
  v45 = *(v10 + 32);
  v45(v57, v8, v9);
  v8 = v56;
  ConfettiAssetMetadata.endDate.getter();
  if (v25(v8, 1, v9) == 1)
  {
    (*(v10 + 8))(v26, v9);
    (*(v19 + 8))(v21, v47);
    goto LABEL_7;
  }

  v43 = v10;
  v28 = v46;
  v45(v46, v8, v9);
  v56 = v9;
  if (qword_100AD04E0 != -1)
  {
    swift_once();
  }

  v44 = *(&xmmword_100B305A0 + 1);
  v45 = xmmword_100B305A0;
  sub_1000F24EC(&unk_100AD5B10);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100940050;
  v30 = v49;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v30);
  v31 = v58;
  v32 = v59;
  *(v29 + 56) = &type metadata for String;
  v33 = sub_100031B20();
  *(v29 + 64) = v33;
  *(v29 + 32) = v31;
  *(v29 + 40) = v32;
  v34 = v51;
  static Date.FormatStyle.DateStyle.omitted.getter();
  v35 = v53;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v36 = Date.formatted(date:time:)();
  v38 = v37;
  (*(v55 + 8))(v35, v48);
  (*(v52 + 8))(v34, v54);
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v33;
  *(v29 + 72) = v36;
  *(v29 + 80) = v38;
  v39 = static String.localizedStringWithFormat(_:_:)();

  v40 = *(v43 + 8);
  v41 = v56;
  v40(v28, v56);
  v40(v57, v41);
  (*(v19 + 8))(v21, v47);
  return v39;
}

uint64_t type metadata accessor for CanvasStateOfMindPicker()
{
  result = qword_100AEE3C0;
  if (!qword_100AEE3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006F5138(uint64_t a1)
{
  *(a1 + qword_100AEE3B8) = 0;
  type metadata accessor for CanvasStateOfMindPicker();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1006F5184(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_100AEE3B8);
    *(Strong + qword_100AEE3B8) = a1;
    v4 = Strong;
    v5 = a1;
  }
}

void sub_1006F51F8(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CanvasStateOfMindPicker();
  objc_msgSendSuper2(&v4, "viewWillDisappear:", a1 & 1);
  if ([v1 isBeingDismissed])
  {
    v3 = *&v1[qword_100AEE3B8];
    if (v3)
    {
      *&v1[qword_100AEE3B8] = 0;
      (*&v1[qword_100AEE3B0])(v3);
    }
  }
}

void sub_1006F5288(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1006F51F8(a3);
}

void sub_1006F533C()
{

  v1 = *(v0 + qword_100AEE3B8);
}

id sub_1006F5380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasStateOfMindPicker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006F53B8(uint64_t a1)
{

  v2 = *(a1 + qword_100AEE3B8);
}

id sub_1006F542C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StateOfMindEntryPresentationStyle();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin(v5);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateOfMindEntryView();
  __chkstk_darwin(v8 - 8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AEE410);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_1000F24EC(&qword_100AEE418);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = type metadata accessor for Date();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for StateOfMindEntryModel.Configuration.InitialReflectiveInterval();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for StateOfMindEntryModel.Configuration();
  v50 = *(v21 - 8);
  v22 = v50;
  v51 = v21;
  __chkstk_darwin(v21);
  v49 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v47 = &v47 - v25;
  v52 = v2;
  *(v2 + qword_100AEE3B8) = 0;
  v26 = (v2 + qword_100AEE3B0);
  *v26 = a1;
  v26[1] = a2;
  v27 = objc_allocWithZone(HKHealthStore);

  v48 = [v27 init];
  static StateOfMindEntryModel.Configuration.InitialReflectiveInterval.fixed(_:)();
  Date.init()();
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  v29 = enum case for StateOfMindLoggingAnalyticsEntryPointType.journal(_:);
  v30 = type metadata accessor for StateOfMindLoggingAnalyticsEntryPointType();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v15, v29, v30);
  (*(v31 + 56))(v15, 0, 1, v30);
  v32 = enum case for StateOfMindLoggingAnalyticsProvenanceType.journal(_:);
  v33 = type metadata accessor for StateOfMindLoggingAnalyticsProvenanceType();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v12, v32, v33);
  (*(v34 + 56))(v12, 0, 1, v33);
  v35 = v47;
  StateOfMindEntryModel.Configuration.init(reflectiveInterval:date:parentSampleUUID:fitnessPlusSessionID:entryPoint:provenance:)();
  v36 = *(v22 + 16);
  v37 = v49;
  v38 = v35;
  v39 = v51;
  v36(v49, v35, v51);
  type metadata accessor for StateOfMindEntryModel();
  swift_allocObject();
  v40 = v48;
  StateOfMindEntryModel.init(healthStore:configuration:onSampleSave:)();
  v41 = *(v56 + 104);
  v56 += 104;
  v48 = v41;
  v42 = v54;
  (v41)(v54, enum case for StateOfMindEntryPresentationStyle.standalone(_:), v55);
  StateOfMindEntryView.init(model:presentationStyle:)();
  v43 = UIHostingController.init(rootView:)();
  v36(v37, v38, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  v44 = v40;
  v45 = v43;
  StateOfMindEntryModel.init(healthStore:configuration:onSampleSave:)();
  (v48)(v42, enum case for StateOfMindEntryPresentationStyle.embedded(_:), v55);
  StateOfMindEntryView.init(model:presentationStyle:)();
  dispatch thunk of UIHostingController.rootView.setter();

  (*(v50 + 8))(v38, v39);
  return v45;
}

uint64_t sub_1006F5C60()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B300A0);
  sub_10000617C(v0, qword_100B300A0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1006F5D54()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B30100);
  sub_10000617C(v0, qword_100B30100);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1006F5E74()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B301C0);
  sub_10000617C(v0, qword_100B301C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1006F5EF4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B30220);
  sub_10000617C(v0, qword_100B30220);
  return Logger.init(subsystem:category:)();
}

id sub_1006F5F88()
{
  v1 = OBJC_IVAR____TtC7Journal37NotificationsOnboardingViewController____lazy_storage___onboardingAsset;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal37NotificationsOnboardingViewController____lazy_storage___onboardingAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal37NotificationsOnboardingViewController____lazy_storage___onboardingAsset);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() imageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setContentMode:2];
    [v7 setClipsToBounds:1];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_1006F6098()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  *&v0[OBJC_IVAR____TtC7Journal37NotificationsOnboardingViewController____lazy_storage___onboardingAsset] = 0;
  v3 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100901E80;
  v4._object = 0x8000000100901E60;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v17.receiver = v0;
  v17.super_class = type metadata accessor for NotificationsOnboardingViewController();
  v8 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:icon:contentLayout:", v6, v7, 0, 1);

  v9 = v8;
  result = [v9 view];
  if (result)
  {
    v11 = result;

    [v11 setAccessibilityViewIsModal:1];

    v12 = [v9 headerView];
    [v12 setAllowFullWidthIcon:1];

    v13 = [v9 contentView];
    if (qword_100AD0300 != -1)
    {
      swift_once();
    }

    [v13 setBackgroundColor:qword_100B302F8];

    v14 = [v9 contentView];
    v15 = sub_1006F5F88();
    [v14 addSubview:v15];

    v16 = *&v9[OBJC_IVAR____TtC7Journal37NotificationsOnboardingViewController____lazy_storage___onboardingAsset];
    sub_100013178(0.0);

    sub_1006F63F8();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006F63F8()
{
  v1 = [v0 buttonTray];
  [v1 setUserInteractionEnabled:1];

  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v16._object = 0x8000000100901DF0;
  v4._object = 0x80000001008DF7C0;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v4._countAndFlagsBits = 0xD000000000000014;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v16);

  v6 = [objc_opt_self() boldButton];
  [v6 addTarget:v0 action:"didTapContinue:" forControlEvents:64];
  v7 = String._bridgeToObjectiveC()();

  [v6 setTitle:v7 forState:0];

  v8 = [v0 buttonTray];
  [v8 addButton:v6];

  v9 = [v2 mainBundle];
  v17._object = 0x80000001008E2D50;
  v10._countAndFlagsBits = 0x776F4E20746F4ELL;
  v17._countAndFlagsBits = 0xD00000000000002ELL;
  v10._object = 0xE700000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v17);

  v12 = [objc_opt_self() linkButton];
  [v12 addTarget:v0 action:"didTapNotNow:" forControlEvents:64];
  v13 = String._bridgeToObjectiveC()();

  [v12 setTitle:v13 forState:0];

  v14 = [v0 buttonTray];
  [v14 addButton:v12];
}

uint64_t sub_1006F66AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1006F6744, v6, v5);
}

uint64_t sub_1006F6744()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1006F6834;

    return sub_1006F6CB4();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1006F6834()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1006F69DC;
  }

  else
  {
    v5 = sub_1006F6970;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006F6970()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006F69DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006F6CB4()
{
  v1[2] = v0;
  sub_1000F24EC(&unk_100AD6DD0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for OpenSensitiveURLAction.Destination();
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_1006F6DB8, v3, v2);
}

uint64_t sub_1006F6DB8()
{
  v1 = v0[2];
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 setBool:1 forKey:v3];

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = v0[2];
  if (v5 == 5)
  {
    v7 = [v6 presentingViewController];
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }

    if (qword_100ACFD20 != -1)
    {
      swift_once();
    }

    v9 = v0[7];
    v0[10] = qword_100B2F898;

    if (v9)
    {
      swift_getObjectType();
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v0[11] = v10;
    v0[12] = v12;
    v19 = sub_1006F705C;
  }

  else
  {
    v13 = [v6 viewIfLoaded];
    if (v13 && (v14 = v13, v15 = [v13 window], v14, v15))
    {
      v16 = [v15 windowScene];
    }

    else
    {
      v16 = 0;
    }

    v0[15] = v16;
    if (qword_100ACFD20 != -1)
    {
      swift_once();
    }

    v17 = v0[7];
    v0[16] = qword_100B2F898;

    if (v17)
    {
      swift_getObjectType();
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v18;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v0[17] = v10;
    v0[18] = v12;
    v19 = sub_1006F7410;
  }

  return _swift_task_switch(v19, v10, v12);
}

uint64_t sub_1006F705C()
{
  v1 = [*(v0[10] + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings];
  v2 = [v1 authorizationStatus];

  v3 = v0[7];
  if (v2)
  {

    v4 = v0[8];
    v5 = v0[9];

    return _swift_task_switch(sub_1006F7398, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1006F7188;

    return sub_1003C1F2C(v3, &protocol witness table for MainActor, 1);
  }
}

uint64_t sub_1006F7188()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1006F7328;
  }

  else
  {
    v5 = sub_1006F72C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006F72C4()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1006F7398, v1, v2);
}

uint64_t sub_1006F7328()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1006F7398, v1, v2);
}

uint64_t sub_1006F7398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006F7410()
{
  v1 = [*(v0[16] + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings];
  v2 = [v1 authorizationStatus];

  if (v2)
  {

    v6 = v0[8];
    v7 = v0[9];

    return _swift_task_switch(sub_1006F82D8, v6, v7);
  }

  else
  {
    v3 = v0[7];
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_1006F7554;

    return sub_1003C1F2C(v3, &protocol witness table for MainActor, 1);
  }
}

uint64_t sub_1006F7554(char a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_1006F7700;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_1006F7680;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1006F7680()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (v1 == 1)
  {
    v4 = sub_1006F782C;
  }

  else
  {
    v4 = sub_1006F82DC;
  }

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_1006F7700()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1006F7770, v1, v2);
}

uint64_t sub_1006F7770()
{
  v1 = v0[2];

  v2 = [v1 presentingViewController];
  v3 = v0[15];
  if (v2)
  {
    v4 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006F782C()
{
  swift_storeEnumTagMultiPayload();
  v0[21] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[22] = v2;
  v0[23] = v1;

  return _swift_task_switch(sub_1006F78C4, v2, v1);
}

uint64_t sub_1006F78C4()
{
  sub_1008B4384(v0[3]);
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1006F7970;
  v2 = v0[15];
  v3 = v0[3];

  return sub_1008B5208(v3, v2, 0, 0);
}

uint64_t sub_1006F7970()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_1001616C0(v2);
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_1006F7AB4, v4, v3);
}

uint64_t sub_1006F7AB4()
{
  v1 = v0[5];

  sub_1001295EC(v1);
  v2 = v0[8];
  v3 = v0[9];

  return _swift_task_switch(sub_1006F82DC, v2, v3);
}

void sub_1006F7B24()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v9 = [v0 presentingViewController];
    if (v9)
    {
      v15 = v9;
      [v9 dismissViewControllerAnimated:1 completion:0];
      v10 = v15;
    }
  }

  else
  {
    sub_100005508();
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1006F81C8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A79730;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000826D8();
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1006F7E30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006F7B24();
  }
}

id sub_1006F7EE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationsOnboardingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1006F7F50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100964690[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1006F7FD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100964690[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1006F8024@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7Journal27NotificationOnboardingStageO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s7Journal27NotificationOnboardingStageO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40503020100uLL >> (8 * a1));
  }
}

unint64_t sub_1006F8140()
{
  result = qword_100AEE420;
  if (!qword_100AEE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE420);
  }

  return result;
}

uint64_t sub_1006F81D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1006F66AC(a1, v4, v5, v6);
}

unint64_t sub_1006F8284()
{
  result = qword_100AEE458;
  if (!qword_100AEE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE458);
  }

  return result;
}

uint64_t sub_1006F82E0()
{
  v0 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_1000A8720(v5);
  v9 = type metadata accessor for AudioAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD8F98;
    v12 = v5;
LABEL_5:
    sub_100004F84(v12, v11);
    return 0;
  }

  AudioAssetMetadata.recordingDate.getter();
  (*(v10 + 8))(v5, v9);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v16 = v17;
  (*(v14 + 8))(v8, v13);
  return v16;
}

uint64_t sub_1006F85D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD6F70);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView;
  v14 = *(v1 + OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView);
  v15 = *(v14 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  *(v14 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = 7;
  v16 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  v17 = *(v14 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
  v36 = v9;
  if (v17 != 1)
  {
    v18 = &v36 - v11;
    v19 = a1;
    v20 = v14;
    goto LABEL_11;
  }

  if (v15 <= 3)
  {
    v18 = &v36 - v11;
    v19 = a1;
    goto LABEL_9;
  }

  if (v15 <= 5)
  {
    v18 = &v36 - v11;
    v19 = a1;
    goto LABEL_9;
  }

  if (v15 == 6)
  {
    v18 = &v36 - v11;
    v19 = a1;
LABEL_9:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v22 = v14;

    if (v21)
    {

LABEL_12:
      a1 = v19;
      v12 = v18;
      v9 = v36;
      goto LABEL_13;
    }

LABEL_11:
    (*((swift_isaMask & *v14) + 0x100))(v20);
    *(v14 + v16) = 1;

    goto LABEL_12;
  }

LABEL_13:
  v23 = *(v2 + v13);
  v24 = *((swift_isaMask & *v23) + 0x1D0);
  v25 = v23;
  v24(a1);

  *(*(v2 + v13) + OBJC_IVAR____TtC7Journal14MediaAssetView_delegate + 8) = &off_100A79798;
  swift_unknownObjectWeakAssign();
  if (*(a1 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata))
  {

    sub_10025BEA0(v12);
  }

  else
  {
    v26 = type metadata accessor for MusicAssetMetadata();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  }

  sub_100005508();
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000082B4(v12, v9, &qword_100AD6F70);
  v29 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  sub_1006FC73C(v9, v30 + v29);
  aBlock[4] = sub_1006FC7AC;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A79838;
  v31 = _Block_copy(aBlock);

  v32 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006B14(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v33 = v40;
  v34 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v42 + 8))(v33, v34);
  (*(v39 + 8))(v32, v41);
  return sub_100004F84(v12, &qword_100AD6F70);
}

uint64_t sub_1006F8C64(uint64_t a1, void *a2)
{
  v253 = a2;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v223 - v3;
  v5 = type metadata accessor for MusicAuthorization.Status();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v240 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v241 = &v223 - v9;
  v10 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v10 - 8);
  v12 = &v223 - v11;
  v238 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v238);
  v237 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for Date();
  v246 = *(v249 - 1);
  __chkstk_darwin(v249);
  v228 = &v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v245 = &v223 - v16;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v236 = &v223 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v235 = &v223 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v21 - 8);
  v234 = &v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v23 - 8);
  v229 = &v223 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v250 = &v223 - v26;
  __chkstk_darwin(v27);
  v248 = &v223 - v28;
  v29 = sub_1000F24EC(&qword_100AD6F70);
  __chkstk_darwin(v29 - 8);
  v31 = &v223 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v223 - v33;
  __chkstk_darwin(v35);
  v37 = &v223 - v36;
  __chkstk_darwin(v38);
  v40 = &v223 - v39;
  __chkstk_darwin(v41);
  v43 = &v223 - v42;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v231 = v12;
    v232 = v6;
    v233 = v5;
    v227 = v4;
    v247 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_backgroundView;
    v45 = result;
    v46 = *(result + OBJC_IVAR____TtC7Journal19FullScreenMusicView_backgroundView);
    sub_1000746FC();

    v251 = v45;
    v244 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_dropShadowView;
    v47 = *(v45 + OBJC_IVAR____TtC7Journal19FullScreenMusicView_dropShadowView);
    sub_1000746FC();

    v48 = v253;
    sub_1000082B4(v253, v43, &qword_100AD6F70);
    v49 = type metadata accessor for MusicAssetMetadata();
    v50 = *(v49 - 8);
    v51 = *(v50 + 48);
    if (v51(v43, 1, v49) == 1)
    {
      sub_100004F84(v43, &qword_100AD6F70);
      v226 = 0;
      v252 = 0;
    }

    else
    {
      v52 = MusicAssetMetadata.song.getter();
      v48 = v253;
      v226 = v52;
      v252 = v53;
      (*(v50 + 8))(v43, v49);
    }

    sub_1000082B4(v48, v40, &qword_100AD6F70);
    if (v51(v40, 1, v49) == 1)
    {
      sub_100004F84(v40, &qword_100AD6F70);
      v225 = 0;
      v54 = 0;
    }

    else
    {
      v55 = MusicAssetMetadata.artistName.getter();
      v48 = v253;
      v225 = v55;
      v54 = v56;
      (*(v50 + 8))(v40, v49);
    }

    sub_1000082B4(v48, v37, &qword_100AD6F70);
    if (v51(v37, 1, v49) == 1)
    {
      sub_100004F84(v37, &qword_100AD6F70);
      v239 = 0;
      v57 = 0;
    }

    else
    {
      v58 = MusicAssetMetadata.albumName.getter();
      v48 = v253;
      v239 = v58;
      v57 = v59;
      (*(v50 + 8))(v37, v49);
    }

    sub_1000082B4(v48, v34, &qword_100AD6F70);
    v60 = v51(v34, 1, v49);
    v61 = v246;
    if (v60 == 1)
    {
      sub_100004F84(v34, &qword_100AD6F70);
      v224 = 0;
      v230 = 1;
    }

    else
    {
      v62 = MusicAssetMetadata.numberOfTimesPlayed.getter();
      v48 = v253;
      v224 = v62;
      v230 = v63;
      (*(v50 + 8))(v34, v49);
    }

    sub_1000082B4(v48, v31, &qword_100AD6F70);
    v64 = v51(v31, 1, v49);
    v65 = v248;
    if (v64 == 1)
    {
      sub_100004F84(v31, &qword_100AD6F70);
      v66 = v249;
      v61[7](v65, 1, 1, v249);
    }

    else
    {
      MusicAssetMetadata.startTime.getter();
      (*(v50 + 8))(v31, v49);
      v66 = v249;
    }

    v67 = v245;
    v68 = [objc_allocWithZone(UIStackView) init];
    [v68 setAxis:1];
    [v68 setAlignment:3];
    [v68 setSpacing:16.0];
    v253 = v68;
    [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
    v69 = [objc_allocWithZone(UIStackView) init];
    v243 = [objc_allocWithZone(UILabel) init];
    v242 = [objc_allocWithZone(UILabel) init];
    v70 = [objc_allocWithZone(UILabel) init];
    if (v252)
    {
      v71 = String._bridgeToObjectiveC()();
    }

    else
    {
      v71 = 0;
    }

    [v243 setText:v71];

    if (v54)
    {
      v72 = String._bridgeToObjectiveC()();
    }

    else
    {
      v72 = 0;
    }

    v73 = v250;
    [v242 setText:v72];

    if (v57)
    {

      v74 = String._bridgeToObjectiveC()();
    }

    else
    {
      v74 = 0;
    }

    [v70 setText:v74];

    v252 = v69;
    if ((v230 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v75._countAndFlagsBits = 0x20646579616C50;
      v75._object = 0xE700000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v75);
      *&v255 = v224;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v76._countAndFlagsBits = 0x73656D697420;
      v76._object = 0xE600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v76);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v77 = String.init(localized:table:bundle:locale:comment:)();
      v79 = v78;
      v80 = [v70 text];
      if (v80)
      {
        v81 = v80;
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        *&v255 = v82;
        *(&v255 + 1) = v84;
        v85._countAndFlagsBits = 548913696;
        v85._object = 0xA400000000000000;
        String.append(_:)(v85);
        if (*(&v255 + 1))
        {
          v86 = String._bridgeToObjectiveC()();
        }

        else
        {
          v86 = 0;
        }

        [v70 setText:v86];

        v73 = v250;
      }

      else
      {
        [v70 setText:0];
      }

      v87 = [v70 text];
      if (v87)
      {
        v88 = v87;
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        *&v255 = v89;
        *(&v255 + 1) = v91;
        v92._countAndFlagsBits = v77;
        v92._object = v79;
        String.append(_:)(v92);

        v66 = v249;
        if (*(&v255 + 1))
        {
          v93 = String._bridgeToObjectiveC()();
        }

        else
        {
          v93 = 0;
        }

        v61 = v246;
        v67 = v245;
        v73 = v250;
        [v70 setText:v93];
      }

      else
      {

        [v70 setText:0];
        v66 = v249;
        v61 = v246;
        v67 = v245;
      }
    }

    sub_1000082B4(v65, v73, &unk_100AD4790);
    v94 = v61[6];
    if ((v94)(v73, 1, v66) == 1)
    {
      sub_100004F84(v73, &unk_100AD4790);
      if (v57)
      {
        v95 = String._bridgeToObjectiveC()();

        goto LABEL_47;
      }
    }

    else
    {
      (v61[4])(v67, v73, v66);
      if (v57)
      {
        sub_1000F24EC(&unk_100AD5B10);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_100940050;
        *(v96 + 56) = &type metadata for String;
        v97 = v67;
        v98 = sub_100031B20();
        *(v96 + 64) = v98;
        *(v96 + 32) = v239;
        *(v96 + 40) = v57;
        v99 = v237;
        static Date.FormatStyle.TimeStyle.shortened.getter();
        static FormatStyleCapitalizationContext.standalone.getter();
        static Locale.autoupdatingCurrent.getter();
        static Calendar.autoupdatingCurrent.getter();
        static TimeZone.autoupdatingCurrent.getter();
        static Date.now.getter();
        sub_100006B14(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
        Date.formatted<A>(_:)();
        sub_1000FBBCC(v99);
        v100 = v255;
        *(v96 + 96) = &type metadata for String;
        *(v96 + 104) = v98;
        *(v96 + 72) = v100;
        static String.localizedStringWithFormat(_:_:)();

        v101 = String._bridgeToObjectiveC()();

        [v70 setText:v101];

        (v61[1])(v97, v66);
        goto LABEL_49;
      }

      (v61[1])(v67, v66);
    }

    v102 = v229;
    sub_1000082B4(v65, v229, &unk_100AD4790);
    if ((v94)(v102, 1, v66) != 1)
    {
      v103 = v228;
      (v61[4])(v228, v102, v66);
      v104 = v237;
      static Date.FormatStyle.TimeStyle.shortened.getter();
      static FormatStyleCapitalizationContext.standalone.getter();
      static Locale.autoupdatingCurrent.getter();
      static Calendar.autoupdatingCurrent.getter();
      static TimeZone.autoupdatingCurrent.getter();
      static Date.now.getter();
      sub_100006B14(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
      Date.formatted<A>(_:)();
      sub_1000FBBCC(v104);
      v105 = String._bridgeToObjectiveC()();

      [v70 setText:v105];

      (v61[1])(v103, v66);
LABEL_49:
      v106 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_playButton;
      v107 = v251;
      [*&v251[OBJC_IVAR____TtC7Journal19FullScreenMusicView_playButton] addTarget:v251 action:"playButtonTapped" forControlEvents:64];
      v108 = *&v107[v106];
      v109 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_playConfig;
      v110 = type metadata accessor for UIButton.Configuration();
      v111 = *(v110 - 8);
      v112 = &v107[v109];
      v113 = v231;
      (*(v111 + 16))(v231, v112, v110);
      (*(v111 + 56))(v113, 0, 1, v110);
      v114 = v108;
      UIButton.configuration.setter();

      v115 = *&v107[v106];
      v116 = v243;
      v117 = v242;
      v249 = v70;
      v245 = v115;
      v118 = v252;
      [v252 setAxis:1];
      [v118 setAlignment:3];
      [v118 setUserInteractionEnabled:1];
      [v118 setSpacing:2.0];
      v119 = qword_100AD03E0;
      v120 = v116;
      if (v119 != -1)
      {
        swift_once();
      }

      v121 = qword_100B303D8;
      [v120 setFont:qword_100B303D8];
      v122 = objc_opt_self();
      v123 = [v122 secondaryLabelColor];
      [v120 setTextColor:v123];

      [v120 setAdjustsFontSizeToFitWidth:1];
      [v120 setMinimumScaleFactor:0.5];
      [v120 setAdjustsFontForContentSizeCategory:1];
      [v120 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v124 = qword_100AD0378;
      v125 = v117;
      if (v124 != -1)
      {
        swift_once();
      }

      [v125 setFont:qword_100B30370];
      v126 = [v122 labelColor];
      [v125 setTextColor:v126];

      [v125 setAdjustsFontSizeToFitWidth:1];
      [v125 setMinimumScaleFactor:0.5];
      [v125 setAdjustsFontForContentSizeCategory:1];
      [v125 setNumberOfLines:0];
      [v125 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v127 = v249;
      [v127 setFont:v121];
      v128 = [v122 secondaryLabelColor];
      [v127 setTextColor:v128];

      [v127 setAdjustsFontForContentSizeCategory:1];
      [v127 setAdjustsFontSizeToFitWidth:1];
      [v127 setMinimumScaleFactor:0.5];
      [v127 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      [v127 setLineBreakMode:0];
      [v127 setNumberOfLines:0];
      [v127 setTextAlignment:1];
      v129 = v252;
      [v252 addArrangedSubview:v120];
      v250 = v125;
      [v129 addArrangedSubview:v125];
      [v129 addArrangedSubview:v127];
      [v129 setCustomSpacing:v120 afterView:6.0];
      v249 = v127;
      [v129 setCustomSpacing:v127 afterView:12.0];
      v130 = [v120 superview];
      if (v130)
      {
        v131 = v130;
        [v120 setTranslatesAutoresizingMaskIntoConstraints:0];
        v132 = [v131 centerXAnchor];
        v133 = [v120 centerXAnchor];
        v134 = [v133 constraintEqualToAnchor:v132];

        [v134 setConstant:0.0];
        [v134 setActive:1];
      }

      v246 = v120;
      v135 = v250;
      v136 = [v250 superview];
      v137 = v253;
      if (v136)
      {
        v138 = v136;
        [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
        v139 = [v138 centerXAnchor];
        v140 = [v135 centerXAnchor];
        v141 = [v140 constraintEqualToAnchor:v139];

        [v141 setConstant:0.0];
        [v141 setActive:1];
      }

      v142 = v249;
      v143 = [v249 superview];
      if (v143)
      {
        v144 = v143;
        [v142 setTranslatesAutoresizingMaskIntoConstraints:0];
        v145 = [v144 centerXAnchor];
        v146 = [v142 centerXAnchor];
        v147 = [v146 constraintEqualToAnchor:v145];

        [v147 setConstant:0.0];
        [v147 setActive:1];
      }

      v148 = v245;
      [v129 addArrangedSubview:v148];
      v149 = [v148 superview];
      if (v149)
      {
        v150 = v149;
        [v148 setTranslatesAutoresizingMaskIntoConstraints:0];
        v151 = [v150 centerXAnchor];
        v152 = [v148 centerXAnchor];
        v153 = [v152 constraintEqualToAnchor:v151];

        [v153 setConstant:0.0];
        if (v153)
        {
          [v153 setActive:1];
        }

        v154 = v250;
        v155 = v251;

        v156 = v249;
      }

      else
      {
        v153 = 0;
        v156 = v249;
        v154 = v250;
        v151 = v250;
        v150 = v249;
        v155 = v251;
      }

      v157 = v246;
      v158 = v247;
      [v137 addArrangedSubview:*&v155[v247]];
      v159 = v244;
      v160 = *&v155[v244];
      sub_100760CA8(v160, 1);

      v161 = [*&v155[v159] layer];
      if (qword_100AD0A18 != -1)
      {
        swift_once();
      }

      v255 = xmmword_100B30F28;
      v256 = *&qword_100B30F38;
      v257 = xmmword_100B30F48;
      v258 = *&qword_100B30F58;
      [v161 setCornerRadii:&v255];

      v162 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView;
      v163 = [*&v155[OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView] layer];
      v255 = xmmword_100B30F28;
      v256 = *&qword_100B30F38;
      v257 = xmmword_100B30F48;
      v258 = *&qword_100B30F58;
      [v163 setCornerRadii:&v255];

      [*&v155[v162] setClipsToBounds:1];
      [*&v155[v158] addSubview:*&v155[v159]];
      [*&v155[v158] addSubview:*&v155[v162]];
      v164 = *&v155[v158];
      v165 = [v164 superview];
      if (v165)
      {
        v166 = v165;
        [v164 setTranslatesAutoresizingMaskIntoConstraints:0];
        v167 = [v164 leadingAnchor];
        v168 = [v166 leadingAnchor];
        v169 = [v167 constraintEqualToAnchor:v168];

        [v169 setConstant:20.0];
        v170 = v233;
        v171 = v253;
        if (v169)
        {
          [v169 setActive:1];
        }

        v155 = v251;
        v158 = v247;
      }

      else
      {
        v169 = 0;
        v166 = v164;
        v170 = v233;
        v171 = v253;
      }

      v172 = *&v155[v158];
      v173 = [v172 superview];
      if (v173)
      {
        v174 = v173;
        [v172 setTranslatesAutoresizingMaskIntoConstraints:0];
        v175 = [v172 trailingAnchor];
        v176 = [v174 trailingAnchor];
        v177 = [v175 constraintEqualToAnchor:v176];

        [v177 setConstant:-20.0];
        if (v177)
        {
          [v177 setActive:1];
        }

        v155 = v251;
        v158 = v247;
      }

      else
      {
        v177 = 0;
        v174 = v172;
      }

      v178 = *&v155[v158];
      [v178 setTranslatesAutoresizingMaskIntoConstraints:0];
      v179 = [v178 heightAnchor];
      v180 = [v178 widthAnchor];
      v181 = [v179 constraintEqualToAnchor:v180 multiplier:1.0];

      [v181 setActive:1];
      v251 = v162;
      v182 = *&v155[v162];
      sub_100013178(0.0);

      v183 = *&v155[v244];
      sub_100013178(0.0);

      v184 = v252;
      [v171 addArrangedSubview:v252];
      v185 = [v184 superview];
      if (v185)
      {
        v186 = v185;
        [v184 setTranslatesAutoresizingMaskIntoConstraints:0];
        v187 = [v184 leadingAnchor];
        v188 = [v186 leadingAnchor];
        v189 = [v187 constraintEqualToAnchor:v188];

        [v189 setConstant:32.0];
        [v189 setActive:1];
      }

      v190 = [v184 superview];
      if (v190)
      {
        v191 = v190;
        [v184 setTranslatesAutoresizingMaskIntoConstraints:0];
        v192 = [v184 trailingAnchor];
        v193 = [v191 trailingAnchor];
        v194 = [v192 constraintEqualToAnchor:v193];

        [v194 setConstant:-32.0];
        [v194 setActive:1];
      }

      [v155 addSubview:v171];
      v195 = [v171 superview];
      v196 = v240;
      if (v195)
      {
        v197 = v195;
        [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
        v198 = [v253 centerYAnchor];
        v171 = v253;
        v199 = [v197 centerYAnchor];
        v200 = [v198 constraintEqualToAnchor:v199];

        [v200 setConstant:0.0];
        [v200 setActive:1];
      }

      v201 = [v171 superview];
      if (v201)
      {
        v202 = v201;
        [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
        v203 = [v171 leadingAnchor];
        v204 = [v202 leadingAnchor];
        v205 = [v203 constraintEqualToAnchor:v204];

        [v205 setConstant:0.0];
        [v205 setActive:1];
      }

      v206 = [v171 superview];
      if (v206)
      {
        v207 = v206;
        [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
        v208 = [v171 trailingAnchor];
        v209 = [v207 trailingAnchor];
        v210 = [v208 constraintEqualToAnchor:v209];

        [v210 setConstant:0.0];
        [v210 setActive:1];
      }

      v211 = v241;
      static MusicAuthorization.currentStatus.getter();
      v212 = v232;
      (*(v232 + 104))(v196, enum case for MusicAuthorization.Status.authorized(_:), v170);
      sub_100006B14(&qword_100AE1858, &type metadata accessor for MusicAuthorization.Status);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v255 == v254)
      {
        v213 = *(v212 + 8);
        v213(v196, v170);
        v213(v211, v170);

        v214 = v249;
      }

      else
      {
        v215 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v216 = *(v212 + 8);
        v216(v196, v170);
        v216(v211, v170);

        v214 = v249;
        if ((v215 & 1) == 0)
        {
LABEL_90:
          [v155 layoutIfNeeded];
          v222 = v253;
          [v253 layoutIfNeeded];
          [*&v251[v155] layoutIfNeeded];

          return sub_100004F84(v248, &unk_100AD4790);
        }
      }

      v217 = type metadata accessor for TaskPriority();
      v218 = v227;
      (*(*(v217 - 8) + 56))(v227, 1, 1, v217);
      v219 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v220 = static MainActor.shared.getter();
      v221 = swift_allocObject();
      v221[2] = v220;
      v221[3] = &protocol witness table for MainActor;
      v221[4] = v219;

      sub_1003E9628(0, 0, v218, &unk_100964738, v221);

      goto LABEL_90;
    }

    sub_100004F84(v102, &unk_100AD4790);
    v95 = String._bridgeToObjectiveC()();
LABEL_47:
    [v70 setText:v95];

    goto LABEL_49;
  }

  return result;
}

uint64_t sub_1006FAF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1000F24EC(&qword_100AE4250);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1006FAFF0, v6, v5);
}

uint64_t sub_1006FAFF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView);
    v0[11] = v2;
    v2;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1006FB104;

    return sub_100331B54();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1006FB104(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 104) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_1006FB24C, v5, v4);
}

uint64_t sub_1006FB24C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 80);
  if (v1 == 1)
  {
    v3 = (v2 + OBJC_IVAR____TtC7Journal19FullScreenMusicView_pauseConfig);
    v4 = (v2 + OBJC_IVAR____TtC7Journal19FullScreenMusicView_playConfig);
    if (static UIButton.Configuration.== infix(_:_:)())
    {
      v5 = *(v0 + 80);
      v3 = v4;
    }

    else
    {
      v10 = static UIButton.Configuration.== infix(_:_:)();
      v5 = *(v0 + 80);
      v9 = v5;
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v3 = (v2 + OBJC_IVAR____TtC7Journal19FullScreenMusicView_playConfig);
  v6 = static UIButton.Configuration.== infix(_:_:)();
  v5 = *(v0 + 80);
  if (v6 & 1) != 0 || (v7 = &v5[OBJC_IVAR____TtC7Journal19FullScreenMusicView_pauseConfig], v8 = static UIButton.Configuration.== infix(_:_:)(), v5 = *(v0 + 80), v3 = v7, v9 = v5, (v8))
  {
LABEL_8:
    v11 = *(v0 + 48);
    v12 = *&v5[OBJC_IVAR____TtC7Journal19FullScreenMusicView_playButton];
    v13 = type metadata accessor for UIButton.Configuration();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11, v3, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    v9 = v12;
    UIButton.configuration.setter();
  }

LABEL_9:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1006FB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1006FB4E0, v6, v5);
}

uint64_t sub_1006FB4E0()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1006FB5A0;

  return (sub_10051D0E8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1006FB5A0(char a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1006FB6EC, v4, v3);
}

uint64_t sub_1006FB6EC()
{
  if (*(v0 + 80))
  {
    if (*(v0 + 80) == 1)
    {
      v1 = *(v0 + 40);

      v2 = swift_task_alloc();
      *(v0 + 72) = v2;
      *v2 = v0;
      v2[1] = sub_1003B3A90;

      return (sub_1006A41FC)(v1, &protocol witness table for MainActor);
    }
  }

  else
  {
    v4 = *(v0 + 24);

    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;

    sub_1003E9628(0, 0, v4, &unk_100964760, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1006FBA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1006FBAEC, v6, v5);
}

uint64_t sub_1006FBAEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView;
    v0[12] = OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView;
    v3 = *(Strong + v2);
    v0[13] = v3;
    v3;
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1006FBC04;

    return sub_100331B54();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1006FBC04(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 120) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return _swift_task_switch(sub_1006FBD4C, v5, v4);
}

uint64_t sub_1006FBD4C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v3 + v2);
  v5 = *(v0 + 88);
  if (v1 == 1)
  {
    v6 = *(v0 + 48);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = v4;

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;

    sub_1003E9BBC(0, 0, v6, &unk_100952E38, v11);
  }

  else
  {
    v12 = v4;
    sub_10033243C();
  }

  v13 = *(v0 + 8);

  return v13();
}

id sub_1006FBEE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_playButton;
  *&v4[v9] = [objc_allocWithZone(UIButton) init];
  v10 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_playConfig;
  if (qword_100ACFE78 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for UIButton.Configuration();
  v12 = sub_10000617C(v11, qword_100B2FA30);
  v13 = *(*(v11 - 8) + 16);
  v13(&v4[v10], v12, v11);
  v14 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_pauseConfig;
  if (qword_100ACFE80 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v11, qword_100B2FA48);
  v13(&v4[v14], v15, v11);
  v16 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView;
  type metadata accessor for MediaAssetView();
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_backgroundView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_dropShadowView;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for FullScreenMusicView();
  return objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1006FC0F8(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicAsset] = 0;
  v3 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_playButton;
  *&v1[v3] = [objc_allocWithZone(UIButton) init];
  v4 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_playConfig;
  if (qword_100ACFE78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UIButton.Configuration();
  v6 = sub_10000617C(v5, qword_100B2FA30);
  v7 = *(*(v5 - 8) + 16);
  v7(&v1[v4], v6, v5);
  v8 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_pauseConfig;
  if (qword_100ACFE80 != -1)
  {
    swift_once();
  }

  v9 = sub_10000617C(v5, qword_100B2FA48);
  v7(&v1[v8], v9, v5);
  v10 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_musicView;
  type metadata accessor for MediaAssetView();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_backgroundView;
  *&v1[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC7Journal19FullScreenMusicView_dropShadowView;
  *&v1[v12] = [objc_allocWithZone(UIView) init];
  v15.receiver = v1;
  v15.super_class = type metadata accessor for FullScreenMusicView();
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id sub_1006FC310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMusicView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenMusicView()
{
  result = qword_100AEE4C0;
  if (!qword_100AEE4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006FC488()
{
  result = type metadata accessor for UIButton.Configuration();
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

uint64_t sub_1006FC538()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_1003E9628(0, 0, v2, &unk_100964730, v6);
}

uint64_t sub_1006FC688(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1006FAF20(a1, v4, v5, v6);
}

uint64_t sub_1006FC73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006FC7AC()
{
  v1 = *(sub_1000F24EC(&qword_100AD6F70) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1006F8C64(v2, v3);
}

uint64_t sub_1006FC81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1006FB40C(a1, v4, v5, v6);
}

uint64_t sub_1006FC8D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1006FBA18(a1, v4, v5, v6);
}

uint64_t sub_1006FC984()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

double sub_1006FC9F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

char *sub_1006FCA6C(double a1, double a2, double a3, double a4)
{
  v37 = type metadata accessor for UIView.Invalidations.Constraints();
  __chkstk_darwin(v37);
  v36 = sub_1000F24EC(&qword_100AEE530);
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v36 - v10;
  v12 = type metadata accessor for UIView.Invalidations.Configuration();
  __chkstk_darwin(v12);
  v13 = sub_1000F24EC(&qword_100AEE538);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell__isCardEffectHidden;
  LOBYTE(v39) = 0;
  UIView.Invalidations.Configuration.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v14 + 32))(&v4[v17], v16, v13);
  v18 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell__aspectRatio;
  v39 = 0;
  v40 = 0;
  UIView.Invalidations.Constraints.init()();
  type metadata accessor for CGSize(0);
  sub_1006FDF78();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v9 + 32))(&v4[v18], v11, v36);
  v19 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView;
  *&v4[v20] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_aspectConstraint] = 0;
  v21 = type metadata accessor for FullScreenAssetCollectionViewCell();
  v38.receiver = v4;
  v38.super_class = v21;
  v22 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  [v22 setFocusEffect:0];
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 setPreservesSuperviewLayoutMargins:1];

  v25 = [v22 contentView];
  v26 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView;
  [v25 addSubview:*&v22[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView]];

  v27 = *&v22[v26];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [v27 superview];
  if (v28)
  {
    v29 = v28;
    v30 = objc_opt_self();
    sub_10031C008(v29);
    sub_1001AD130();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 activateConstraints:isa];
  }

  v32 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView;
  [*&v22[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView] setClipsToBounds:1];
  v33 = [*&v22[v32] layer];
  [v33 setCornerCurve:kCACornerCurveContinuous];

  [*&v22[v26] addSubview:*&v22[v32]];
  v34 = *&v22[v32];
  sub_100013178(0.0);

  return v22;
}

uint64_t sub_1006FCFA8(void *a1)
{
  v21 = a1;
  v19 = type metadata accessor for UIView.Invalidations.Constraints();
  __chkstk_darwin(v19);
  v20 = sub_1000F24EC(&qword_100AEE530);
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UIView.Invalidations.Configuration();
  __chkstk_darwin(v5);
  v6 = sub_1000F24EC(&qword_100AEE538);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell__isCardEffectHidden;
  v18 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell__isCardEffectHidden;
  LOBYTE(v22) = 0;
  UIView.Invalidations.Configuration.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell__aspectRatio;
  v22 = 0;
  v23 = 0;
  UIView.Invalidations.Constraints.init()();
  type metadata accessor for CGSize(0);
  sub_1006FDF78();
  UIView.Invalidating.init(wrappedValue:_:)();
  v12 = v20;
  (*(v2 + 32))(v1 + v11, v4, v20);
  v13 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView;
  v15 = [objc_allocWithZone(UIView) init];

  *(v1 + v14) = v15;
  v16 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_aspectConstraint;
  *(v1 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_aspectConstraint) = 0;
  (*(v7 + 8))(v1 + v18, v6);
  (*(v2 + 8))(v1 + v11, v12);

  type metadata accessor for FullScreenAssetCollectionViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}