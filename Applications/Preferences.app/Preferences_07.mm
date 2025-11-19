uint64_t sub_1000ACA48(uint64_t a1, int a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v226 = a4;
  v231 = a3;
  LODWORD(v233) = a2;
  v5 = *a5;
  v215 = *(a5 + 16);
  v216 = v5;
  v228 = a5;
  v214 = *(a5 + 32);
  v230 = type metadata accessor for SettingsAppDetailContent(0);
  v220 = *(v230 - 8);
  v6 = *(v220 + 64);
  v7 = __chkstk_darwin(v230);
  v229 = v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = v8;
  __chkstk_darwin(v7);
  v222 = v186 - v9;
  v10 = type metadata accessor for AnimationCompletionCriteria();
  v211 = *(v10 - 8);
  v11 = *(v211 + 64);
  __chkstk_darwin(v10);
  v210 = v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SettingsURLDestination(0);
  v223 = *(v13 - 8);
  v14 = *(v223 + 64);
  v15 = __chkstk_darwin(v13);
  v227 = v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v219 = v186 - v17;
  v18 = __chkstk_darwin(v16);
  v203 = v186 - v19;
  __chkstk_darwin(v18);
  v202 = v186 - v20;
  v232 = type metadata accessor for URLQueryItem();
  v212 = *(v232 - 8);
  v21 = *(v212 + 64);
  v22 = __chkstk_darwin(v232);
  v207 = v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v206 = v186 - v25;
  v26 = __chkstk_darwin(v24);
  v204 = v186 - v27;
  v28 = __chkstk_darwin(v26);
  v205 = v186 - v29;
  v30 = __chkstk_darwin(v28);
  v213 = v186 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = v186 - v33;
  __chkstk_darwin(v32);
  v208 = v186 - v35;
  v36 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36);
  v218 = v186 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v42 = v186 - v41;
  __chkstk_darwin(v40);
  v44 = (v186 - v43);
  v225 = type metadata accessor for NavigationPath();
  v224 = *(v225 - 8);
  v45 = *(v224 + 64);
  __chkstk_darwin(v225);
  v47 = v186 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v49 = result;
  v217 = v14;
  v209 = v47;
  v50 = v233;
  v198 = v10;
  if (v233)
  {
    goto LABEL_20;
  }

  swift_getKeyPath();
  v51 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel___observationRegistrar;
  *&v238 = v49;
  v52 = sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  v194 = v51;
  v193 = v52;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v197 = v13;
  v54 = v224;
  v55 = *(v224 + 16);
  v192 = v53;
  v56 = &v49[v53];
  v57 = v209;
  v58 = v225;
  v191 = v224 + 16;
  v190 = v55;
  v55(v209, v56, v225);
  v59 = NavigationPath.isEmpty.getter();
  v60 = v54;
  v61 = v197;
  v62 = *(v60 + 8);
  v63 = v57;
  v50 = v233;
  v189 = v60 + 8;
  v188 = v62;
  v62(v63, v58);
  if (v59)
  {
    goto LABEL_20;
  }

  sub_10000822C(v231 + *(v230 + 20), v44, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100046460(v44, type metadata accessor for SettingsAppDetailContent.ContentType);
    goto LABEL_20;
  }

  v187 = v49;
  v186[1] = *v44;
  v64 = *(v226 + *(v61 + 24));
  v65 = *(v64 + 16);
  v66 = v232;
  if (!v65)
  {
LABEL_18:

    v49 = v187;
LABEL_19:
    v50 = v233;
LABEL_20:
    v81 = *(v230 + 20);
    v82 = v231;
    sub_10000822C(v231 + v81, v42, type metadata accessor for SettingsAppDetailContent.ContentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v84 = *&v42[*(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48)];

      v85 = type metadata accessor for SettingsPaneRecipe();
      (*(*(v85 - 8) + 8))(v42, v85);
      v86 = v49;
      sub_1000A9738((v50 & 1) == 0);
      v94 = v217;
      v95 = v228;
    }

    else
    {
      sub_100046460(v42, type metadata accessor for SettingsAppDetailContent.ContentType);
      v86 = v49;
      sub_1000A9738(1);
      v87 = v218;
      sub_10000822C(v82 + v81, v218, type metadata accessor for SettingsAppDetailContent.ContentType);
      v88 = swift_getEnumCaseMultiPayload();
      sub_100046460(v87, type metadata accessor for SettingsAppDetailContent.ContentType);
      if (v88 == 1 && (*(&v239 + 1) = &type metadata for SettingsAppFeatureFlags, v240 = sub_10000631C(), LOBYTE(v238) = 6, v89 = isFeatureEnabled(_:)(), sub_10000665C(&v238), (v89 & 1) != 0))
      {
        v94 = v217;
        v95 = v228;
        if (qword_10015AAA0 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_10000659C(v90, qword_100169658);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "Skipping selection update as we're in strict navigation mode.", v93, 2u);
        }
      }

      else
      {
        sub_100010CD0();
        v238 = v216;
        v239 = v215;
        LOBYTE(v240) = v214;
        v95 = v228;
        sub_10002698C(v228, v241);
        sub_1000954AC(&v238);

        v94 = v217;
      }
    }

    v96 = sub_100010CD0();
    swift_getKeyPath();
    v241[0] = v96;
    sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v97 = v96[16];

    if (v97 == 1)
    {
      if (qword_10015AAA0 != -1)
      {
LABEL_93:
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      sub_10000659C(v98, qword_100169658);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v99, v100, "New selection was not selectable, ignoring URL", v101, 2u);
      }
    }

    else
    {
      LODWORD(v232) = EnumCaseMultiPayload;
      v102 = swift_allocObject();
      swift_weakInit();
      v103 = v82;
      v104 = v222;
      sub_10000822C(v103, v222, type metadata accessor for SettingsAppDetailContent);
      v105 = v219;
      sub_10000822C(v226, v219, type metadata accessor for SettingsURLDestination);
      sub_10000822C(v104, v229, type metadata accessor for SettingsAppDetailContent);
      sub_10000822C(v105, v227, type metadata accessor for SettingsURLDestination);
      v106 = (*(v220 + 80) + 24) & ~*(v220 + 80);
      v107 = (v221 + *(v223 + 80) + v106) & ~*(v223 + 80);
      v108 = v107 + v94;
      v109 = swift_allocObject();
      *(v109 + 16) = v102;
      sub_100030854(v104, v109 + v106, type metadata accessor for SettingsAppDetailContent);
      sub_100030854(v105, v109 + v107, type metadata accessor for SettingsURLDestination);
      v110 = v233;
      *(v109 + v108) = v233 & 1;
      v111 = v109 + (v108 & 0xFFFFFFFFFFFFFFF8);
      *(v111 + 40) = *(v95 + 32);
      v112 = *v95;
      *(v111 + 24) = *(v95 + 16);
      *(v111 + 8) = v112;
      if ((v110 & 1) != 0 || v232 == 2)
      {
        sub_10002698C(v95, v241);
      }

      else
      {
        swift_getKeyPath();
        v234 = v86;

        sub_10002698C(v95, v241);
        sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v116 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
        swift_beginAccess();
        v117 = v224;
        v118 = v209;
        v119 = v225;
        (*(v224 + 16))(v209, &v86[v116], v225);
        LOBYTE(v116) = NavigationPath.isEmpty.getter();
        (*(v117 + 8))(v118, v119);
        if ((v116 & 1) == 0)
        {

          sub_100046460(v227, type metadata accessor for SettingsURLDestination);
          sub_100046460(v229, type metadata accessor for SettingsAppDetailContent);
          v234 = 0;
          v120 = v210;
          static AnimationCompletionCriteria.logicallyComplete.getter();
          Transaction.addAnimationCompletion(criteria:_:)();
          (*(v211 + 8))(v120, v198);
          v121 = swift_allocObject();
          swift_weakInit();

          __chkstk_darwin(v122);
          v123 = v226;
          v186[-2] = v121;
          v186[-1] = v123;
          withTransaction<A>(_:_:)();
        }

        v110 = v233;
      }

      v113 = v110 & 1;
      v114 = v229;
      v115 = v227;
      sub_1000B1308(v102, v229, v227, v113, v95);

      sub_100046460(v115, type metadata accessor for SettingsURLDestination);
      return sub_100046460(v114, type metadata accessor for SettingsAppDetailContent);
    }
  }

  v67 = 0;
  v68 = v212;
  v201 = (v212 + 8);
  v200 = v212 + 16;
  while (1)
  {
    if (v67 >= *(v64 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    v69 = *(v68 + 72);
    v196 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v199 = v69;
    v195 = *(v68 + 16);
    v195(v34, v64 + v196 + v69 * v67, v66);
    if (URLQueryItem.name.getter() == 1752457584 && v70 == 0xE400000000000000)
    {
      break;
    }

    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v71)
    {
      goto LABEL_15;
    }

    ++v67;
    v66 = v232;
    (*v201)(v34, v232);
    if (v65 == v67)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v74 = *(v68 + 32);
  v72 = v68 + 32;
  v73 = v74;
  v75 = v208;
  v76 = v232;
  v74(v208, v34, v232);
  v77 = URLQueryItem.value.getter();
  v79 = v78;
  v208 = *(v72 - 24);
  (v208)(v75, v76);
  if (!v79)
  {
    goto LABEL_18;
  }

  v186[0] = v72;
  *(&v239 + 1) = &type metadata for SettingsAppFeatureFlags;
  v240 = sub_10000631C();
  LOBYTE(v238) = 6;
  v80 = isFeatureEnabled(_:)();
  sub_10000665C(&v238);
  v49 = v187;
  if (v80)
  {

    goto LABEL_19;
  }

  if (qword_10015AAA0 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v124 = type metadata accessor for Logger();
    sub_10000659C(v124, qword_100169658);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Navigation Stack is not empty.", v127, 2u);
    }

    v231 = v73;

    v128 = swift_allocObject();
    *(v128 + 16) = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
    v129 = (v128 + 16);

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v132 = 141558275;
      *(v132 + 4) = 1752392040;
      *(v132 + 12) = 2113;
      swift_beginAccess();
      v134 = *v129;
      *(v132 + 14) = *v129;
      *v133 = v134;
      v135 = v134;
      _os_log_impl(&_mh_execute_header, v130, v131, "Initial controllerToHandleURL is '%{private,mask.hash}@'", v132, 0x16u);
      sub_1000068B0(v133, &unk_10015F9C0, &unk_100115230);
    }

    v237 = -1;
    v136 = swift_allocObject();
    *&v238 = v77;
    *(&v238 + 1) = v79;
    v241[0] = 47;
    v241[1] = 0xE100000000000000;
    sub_10002EAE0();
    v137 = StringProtocol.components<A>(separatedBy:)();

    v138 = *(v137 + 16);
    v136[2] = v137;
    v230 = (v136 + 2);
    v136[3] = v137 + 32;
    v136[4] = 0;
    v136[5] = (2 * v138) | 1;
    swift_getKeyPath();
    *&v238 = v49;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v139 = v209;
    v140 = v225;
    v141 = v190(v209, &v49[v192], v225);
    __chkstk_darwin(v141);
    v186[-4] = v128;
    v186[-3] = v136;
    v233 = v136;
    v186[-2] = &v237;
    NavigationPath.withCollectionProxy(_:)();
    v188(v139, v140);
    v142 = v197;
    v229 = swift_allocBox();
    v144 = v143;
    sub_10000822C(v226, v143, type metadata accessor for SettingsURLDestination);
    v145 = *(v142 + 24);
    v77 = *(v144 + v145);
    v146 = *(v77 + 2);

    if (!v146)
    {
      break;
    }

    v227 = v145;
    v228 = v144;
    v147 = 0;
    v73 = 0xE400000000000000;
    v148 = v196;
    v149 = v232;
    v49 = v205;
    v150 = v195;
    while (1)
    {
      if (v147 >= *(v77 + 2))
      {
        __break(1u);
        goto LABEL_95;
      }

      v150(v213, &v77[v148], v149);
      if (URLQueryItem.name.getter() == 1752457584 && v151 == 0xE400000000000000)
      {
        break;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v149 = v232;
      (v208)(v213, v232);
      if (v79)
      {
        goto LABEL_58;
      }

      ++v147;
      v148 += v199;
      if (v146 == v147)
      {
        v79 = *(v77 + 2);
        v147 = v79;
        goto LABEL_59;
      }
    }

    v149 = v232;
    (v208)(v213, v232);
LABEL_58:
    v79 = v147 + 1;
    v152 = *(v77 + 2);
    if (v152 - 1 == v147)
    {
LABEL_59:
      v144 = v228;
      v145 = v227;
      goto LABEL_78;
    }

    v224 = v128;
    v153 = v199 + v148;
    v154 = (v212 + 40);
    while (v79 < v152)
    {
      v150(v49, &v77[v153], v149);
      if (URLQueryItem.name.getter() == 1752457584 && v155 == 0xE400000000000000)
      {

        v149 = v232;
        (v208)(v49, v232);
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v149 = v232;
        result = (v208)(v49, v232);
        if ((v73 & 1) == 0)
        {
          if (v79 != v147)
          {
            if (v147 < 0)
            {
              goto LABEL_103;
            }

            v156 = *(v77 + 2);
            if (v147 >= v156)
            {
              goto LABEL_104;
            }

            v157 = v147 * v199;
            v158 = v232;
            v150 = v195;
            result = (v195)(v206, &v77[v196 + v147 * v199], v232);
            if (v79 >= v156)
            {
              goto LABEL_105;
            }

            v150(v207, &v77[v153], v158);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_1000BA188(v77);
            }

            v49 = v205;
            v73 = *v154;
            v159 = &v77[v196 + v157];
            v149 = v232;
            result = (*v154)(v159, v207, v232);
            if (v79 >= *(v77 + 2))
            {
              goto LABEL_106;
            }

            (v73)(&v77[v153], v206, v149);
          }

          ++v147;
        }
      }

      ++v79;
      v152 = *(v77 + 2);
      v153 += v199;
      if (v79 == v152)
      {
        v128 = v224;
        v144 = v228;
        v160 = &v242;
        v145 = v227;
        if (v79 < v147)
        {
          __break(1u);
        }

        else if ((v147 & 0x8000000000000000) == 0)
        {
          goto LABEL_78;
        }

        __break(1u);
        goto LABEL_99;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  v79 = 0;
  v147 = 0;
LABEL_78:
  v160 = v147 - v79;
  v149 = v147;
  if (__OFADD__(v79, v147 - v79))
  {
LABEL_99:
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v236 = v77;
    if (!isUniquelyReferenced_nonNull_native || v147 > *(v77 + 3) >> 1)
    {
      if (v79 <= v147)
      {
        v162 = v147;
      }

      else
      {
        v162 = v79;
      }

      v77 = sub_1000C4F50(isUniquelyReferenced_nonNull_native, v162, 1, v77);
      v236 = v77;
    }

    sub_1000BA974(v147, v79, 0);
    swift_beginAccess();
    v163 = *(v233 + 2);
    v238 = *(v233 + 1);
    v239 = v163;
    swift_unknownObjectRetain();
    sub_10004DED0(&qword_10015EEC8, &unk_1001160A0);
    sub_1000525A0(&unk_10015EED0, &qword_10015EEC8, &unk_1001160A0);
    BidirectionalCollection<>.joined(separator:)();
    swift_unknownObjectRelease();
    v79 = v204;
    URLQueryItem.init(name:value:)();

    v149 = *(v77 + 2);
    v160 = *(v77 + 3);
    v147 = v149 + 1;
    if (v149 < v160 >> 1)
    {
      goto LABEL_86;
    }
  }

  v77 = sub_1000C4F50(v160 > 1, v147, 1, v77);
LABEL_86:
  *(v77 + 2) = v147;
  v231(&v77[v196 + v149 * v199], v79, v232);
  v164 = *(v144 + v145);
  *(v144 + v145) = v77;

  swift_getKeyPath();
  v165 = v187;
  *&v238 = v187;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v166 = &v165[v192];
  v167 = v209;
  v168 = v225;
  v190(v209, v166, v225);
  v169 = NavigationPath.count.getter();
  result = (v188)(v167, v168);
  v170 = v237 + 1;
  if (__OFADD__(v237, 1))
  {
    __break(1u);
  }

  else
  {
    v232 = v169 - v170;
    if (!__OFSUB__(v169, v170))
    {
      v171 = v128;
      v172 = swift_allocObject();
      v173 = v187;
      swift_weakInit();
      v174 = v202;
      sub_10000822C(v226, v202, type metadata accessor for SettingsURLDestination);
      v175 = v203;
      sub_10000822C(v174, v203, type metadata accessor for SettingsURLDestination);
      v176 = (*(v223 + 80) + 24) & ~*(v223 + 80);
      v177 = (v217 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
      v178 = swift_allocObject();
      *(v178 + 16) = v172;
      sub_100030854(v174, v178 + v176, type metadata accessor for SettingsURLDestination);
      v179 = v229;
      *(v178 + v177) = v229;
      *(v178 + ((v177 + 15) & 0xFFFFFFFFFFFFFFF8)) = v171;

      if (v232 <= 0)
      {

        sub_1000AF878(v172, v175, v179, v171);

        sub_100046460(v175, type metadata accessor for SettingsURLDestination);
      }

      else
      {

        sub_100046460(v175, type metadata accessor for SettingsURLDestination);
        *&v238 = 0;
        v180 = v210;
        static AnimationCompletionCriteria.logicallyComplete.getter();
        Transaction.addAnimationCompletion(criteria:_:)();
        (*(v211 + 8))(v180, v198);
        swift_getKeyPath();
        v235 = v173;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v181 = v209;
        v182 = v225;
        v190(v209, &v173[v192], v225);
        NavigationPath.count.getter();
        v188(v181, v182);
        v183 = v232;
        Transaction.disablesAnimations.setter();
        v184 = swift_allocObject();
        swift_weakInit();

        __chkstk_darwin(v185);
        v186[-2] = v184;
        v186[-1] = v183;
        withTransaction<A>(_:_:)();
      }
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_1000AEA14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v119 = a4;
  *&v128 = a2;
  v6 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v124 = &v115 - v8;
  v131 = type metadata accessor for PreferencesControllerRecipe();
  v9 = *(v131 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v131);
  v130 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationPath.CollectionProxy();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004DED0(&qword_10015EEE8, &qword_1001160B8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v115 - v19;
  v21 = sub_10004DED0(&qword_10015EEF0, &qword_1001160C0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v115 - v24;
  (*(v13 + 16))(v20, a1, v12);
  (*(v13 + 32))(v16, v20, v12);
  sub_100018684(&qword_10015EEF8, &type metadata accessor for NavigationPath.CollectionProxy);
  dispatch thunk of Sequence.makeIterator()();
  v26 = *(v22 + 44);
  v27 = v128;
  v28 = a3;
  v116 = v26;
  *&v25[v26] = 0;
  v125 = *(sub_10004DED0(&qword_10015EF00, &qword_1001160C8) + 36);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v29 = sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy);
  v129 = 0;
  v122 = (v9 + 32);
  v123 = (v9 + 56);
  v121 = (v9 + 8);
  *&v30 = 136315651;
  v115 = v30;
  v120 = a3;
  v117 = v29;
  v118 = v12;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v25[v125] == v134[0])
    {
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = v129;
    }

    else
    {
      v35 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v36, v135);
      v35(v134, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v135, v136);
      v37 = v129;
      *&v135[0] = v129;
      sub_100046A2C(v136, v135 + 8);
      v38 = __OFADD__(v37, 1);
      v34 = v37 + 1;
      if (v38)
      {
        goto LABEL_58;
      }

      *&v25[v116] = v34;
      v31 = v135[0];
      v32 = v135[1];
      v33 = v135[2];
    }

    v137[0] = v31;
    v137[1] = v32;
    v137[2] = v33;
    if (!v33)
    {
      goto LABEL_51;
    }

    v128 = v31;
    sub_100046A2C((v137 + 8), v135);
    sub_10000B270(v135, v136);
    sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
    v39 = v124;
    v40 = swift_dynamicCast();
    v41 = *v123;
    if ((v40 & 1) == 0)
    {
      v41(v39, 1, 1, v131);
      sub_1000068B0(v39, &qword_10015EEE0, &qword_1001160B0);
      goto LABEL_46;
    }

    v42 = v131;
    v41(v39, 0, 1, v131);
    (*v122)(v130, v39, v42);
    v43 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
    if (!v43)
    {
      goto LABEL_33;
    }

    v44 = v43;
    v45 = [v43 specifier];
    if (!v45 || (v46 = v45, v47 = [v45 identifier], v46, !v47))
    {

LABEL_33:
      (*v121)(v130, v131);
LABEL_46:
      if (qword_10015AAA0 != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    v127 = v44;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = v28[4];
    v52 = v28[5] >> 1;
    if (v51 == v52)
    {
      goto LABEL_35;
    }

    if (v51 >= v52)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
LABEL_47:
      v102 = type metadata accessor for Logger();
      sub_10000659C(v102, qword_100169658);
      sub_10000B270(v135, v136);

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = v27;
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v132 = v108;
        *v105 = 141558787;
        *(v105 + 4) = 1752392040;
        *(v105 + 12) = 2081;
        sub_10000B270(v136, v134);
        v109 = String.init<A>(describing:)();
        v111 = v110;
        sub_10000665C(v136);
        v112 = sub_100025CF0(v109, v111, &v132);

        *(v105 + 14) = v112;
        *(v105 + 22) = 2160;
        *(v105 + 24) = 1752392040;
        *(v105 + 32) = 2113;
        swift_beginAccess();
        v113 = *(v106 + 16);
        *(v105 + 34) = v113;
        *v107 = v113;
        v114 = v113;
        _os_log_impl(&_mh_execute_header, v103, v104, "Item '%{private,mask.hash}s' not valid, controllerToHandleURL is '%{private,mask.hash}@'", v105, 0x2Au);
        sub_1000068B0(v107, &unk_10015F9C0, &unk_100115230);

        sub_10000665C(v108);
      }

      else
      {

        sub_10000665C(v136);
      }

      sub_10000665C(v135);
LABEL_51:
      v101 = v25;
      return sub_1000068B0(v101, &qword_10015EEF0, &qword_1001160C0);
    }

    v53 = (v28[3] + 16 * v51);
    v54 = *v53;
    v55 = v53[1];

    v56 = String._bridgeToObjectiveC()();

    v57 = SFObjectAndOffsetForURLPair();

    v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = 0x7463656A626FLL;
    v133 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (!*(v58 + 16))
    {
      break;
    }

    v59 = sub_100017DC0(v136);
    if ((v60 & 1) == 0)
    {
      break;
    }

    sub_10001EE30(*(v58 + 56) + 32 * v59, v134);
    sub_100017E04(v136);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v62 = v132;
    v61 = v133;
    if ((v132 != v48 || v133 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v28 = v120;
      goto LABEL_35;
    }

    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000659C(v63, qword_100169658);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    v66 = os_log_type_enabled(v64, v65);
    v129 = v34;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v68 = v25;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v136[0] = v70;
      *v67 = v115;
      v71 = sub_100025CF0(v62, v61, v136);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2160;
      *(v67 + 14) = 1752392040;
      *(v67 + 22) = 2113;
      v72 = *(v27 + 16);
      *(v67 + 24) = v72;
      *v69 = v72;
      v73 = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "Identifier '%s' is a match to path component, new controllerToHandleURL is '%{private,mask.hash}@'", v67, 0x20u);
      sub_1000068B0(v69, &unk_10015F9C0, &unk_100115230);
      v25 = v68;

      sub_10000665C(v70);
    }

    else
    {
    }

    v28 = v120;
    v74 = v120[4];
    v75 = v120[5];
    v76 = v75 >> 1;
    if (__OFSUB__(v75 >> 1, v74))
    {
      goto LABEL_54;
    }

    v77 = *(v120 + 1);
    v78 = v120[4];
    if (v75 >> 1 != v74)
    {
      v78 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_59;
      }

      if (v76 < v78)
      {
        goto LABEL_55;
      }

      if (v78 < v74)
      {
        goto LABEL_56;
      }
    }

    if (v76 < v74)
    {
      goto LABEL_57;
    }

    v79 = *v121;
    v126 = *(v120 + 1);
    swift_unknownObjectRetain();
    v79(v130, v131);
    sub_10000665C(v135);
    v80 = v28[2];
    *(v28 + 1) = v126;
    v28[4] = v78;
    v28[5] = v75;
    swift_unknownObjectRelease();
    v81 = *(v27 + 16);
    *(v27 + 16) = v127;

    *v119 = v128;
  }

  sub_100017E04(v136);
LABEL_35:
  v129 = v25;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  sub_10000659C(v82, qword_100169658);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = v28;
    v86 = swift_slowAlloc();
    *&v128 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v86 = 136315907;
    v87 = sub_100025CF0(v48, v50, &v132);

    *(v86 + 4) = v87;
    *(v86 + 12) = 2080;
    swift_beginAccess();
    v88 = 0;
    result = 0;
    v90 = v85[4];
    v91 = v85[5] >> 1;
    v92 = v127;
    if (v90 != v91)
    {
      if (v90 >= v91)
      {
        __break(1u);
        return result;
      }

      v93 = (v120[3] + 16 * v90);
      v88 = *v93;
      v94 = v93[1];
    }

    v134[0] = v88;
    v134[1] = result;
    sub_10004DED0(&qword_10015E900, &qword_100114A50);
    v95 = String.init<A>(describing:)();
    v97 = sub_100025CF0(v95, v96, &v132);

    *(v86 + 14) = v97;
    *(v86 + 22) = 2160;
    *(v86 + 24) = 1752392040;
    *(v86 + 32) = 2113;
    swift_beginAccess();
    v98 = *(v27 + 16);
    *(v86 + 34) = v98;
    v99 = v128;
    *v128 = v98;
    v100 = v98;
    _os_log_impl(&_mh_execute_header, v83, v84, "Identifier '%s' does not match '%s,  controllerToHandleURL is '%{private,mask.hash}@'", v86, 0x2Au);
    sub_1000068B0(v99, &unk_10015F9C0, &unk_100115230);

    swift_arrayDestroy();
  }

  else
  {
  }

  (*v121)(v130, v131);
  sub_10000665C(v135);
  v101 = v129;
  return sub_1000068B0(v101, &qword_10015EEF0, &qword_1001160C0);
}

uint64_t sub_1000AF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SettingsURLDestination(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000659C(v18, qword_100169658);
    sub_10000822C(a2, v15, type metadata accessor for SettingsURLDestination);
    sub_10000822C(a2, v13, type metadata accessor for SettingsURLDestination);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = v16;
      v22 = v21;
      v32 = swift_slowAlloc();
      v35[0] = v32;
      *v22 = 141558787;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v23 = sub_1000F41C0();
      v34 = a4;
      v25 = v24;
      sub_100046460(v15, type metadata accessor for SettingsURLDestination);
      v26 = sub_100025CF0(v23, v25, v35);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2160;
      *(v22 + 24) = 1752392040;
      *(v22 + 32) = 2081;
      v27 = sub_1000F41C0();
      v29 = v28;
      sub_100046460(v13, type metadata accessor for SettingsURLDestination);
      v30 = sub_100025CF0(v27, v29, v35);
      a4 = v34;

      *(v22 + 34) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Processing URL with possibly modified URL Destination (was '%{private,mask.hash}s', is now '%{private,mask.hash}s').", v22, 0x2Au);
      swift_arrayDestroy();

      v16 = v33;
    }

    else
    {

      sub_100046460(v13, type metadata accessor for SettingsURLDestination);
      sub_100046460(v15, type metadata accessor for SettingsURLDestination);
    }

    swift_beginAccess();
    sub_10000822C(v16, v10, type metadata accessor for SettingsURLDestination);
    swift_beginAccess();
    v31 = *(a4 + 16);
    sub_1000AFC44(v10, v31, 1);

    return sub_100046460(v10, type metadata accessor for SettingsURLDestination);
  }

  return result;
}

void sub_1000AFC44(uint64_t a1, void *a2, int a3)
{
  v145 = a3;
  v153 = type metadata accessor for URLQueryItem();
  v144 = *(v153 - 8);
  v5 = *(v144 + 64);
  __chkstk_darwin(v153);
  v7 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsURLDestination(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v146 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v143 - v13;
  __chkstk_darwin(v12);
  v16 = &v143 - v15;
  v17 = swift_allocObject();
  swift_weakInit();
  sub_10000822C(a1, v16, type metadata accessor for SettingsURLDestination);
  v150 = v14;
  sub_10000822C(v16, v14, type metadata accessor for SettingsURLDestination);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_100030854(v16, v19 + v18, type metadata accessor for SettingsURLDestination);
  v151 = v19;
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v149 = v17;

  v152 = a2;
  [a2 dismissViewControllerAnimated:1 completion:0];
  v147 = v8;
  v20 = *(v8 + 24);
  v148 = a1;
  v21 = *(a1 + v20);
  v158 = *(v21 + 16);
  if (v158)
  {
    v22 = 0;
    v157 = v21 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v156 = v144 + 16;
    v23 = &_swiftEmptyDictionarySingleton;
    v155 = (v144 + 8);
    v24 = v153;
    v25 = v144;
    v154 = v21;
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v26 = v25;
      (*(v25 + 16))(v7, v157 + *(v25 + 72) * v22, v24);
      v16 = URLQueryItem.name.getter();
      v28 = v27;
      v29 = URLQueryItem.value.getter();
      if (!v30 || (*&aBlock = v29, *(&aBlock + 1) = v30, sub_10002EAE0(), v31 = StringProtocol.removingPercentEncoding.getter(), v33 = v32, , !v33))
      {
        v43 = sub_1000B8930(v16, v28);
        v45 = v44;

        if (v45)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v161 = v23;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1000B9964();
            v23 = v161;
          }

          v47 = *(v23[6] + 16 * v43 + 8);

          v48 = v23[7] + 40 * v43;
          v49 = *(v48 + 32);
          v50 = *(v48 + 16);
          aBlock = *v48;
          v167 = v50;
          v168 = v49;
          sub_1000B9468(v43, v23);
          (*v155)(v7, v24);
        }

        else
        {
          (*v155)(v7, v24);
          v168 = 0;
          aBlock = 0u;
          v167 = 0u;
        }

        sub_1000068B0(&aBlock, &qword_10015EDD8, &qword_100116058);
        goto LABEL_5;
      }

      *&v161 = v31;
      *(&v161 + 1) = v33;
      AnyHashable.init<A>(_:)();
      v161 = aBlock;
      v162 = v167;
      v163 = v168;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v159 = v23;
      v36 = sub_1000B8930(v16, v28);
      v37 = v23[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_93;
      }

      v40 = v35;
      if (v23[3] >= v39)
      {
        if (v34)
        {
          if (v35)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1000B9964();
          if (v40)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_1000B8D5C(v39, v34);
        v41 = sub_1000B8930(v16, v28);
        if ((v40 & 1) != (v42 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v36 = v41;
        if (v40)
        {
LABEL_20:

          v23 = v159;
          sub_1000BAD20(&v161, v159[7] + 40 * v36);
          v24 = v153;
          (*v155)(v7, v153);
          goto LABEL_5;
        }
      }

      v23 = v159;
      v159[(v36 >> 6) + 8] |= 1 << v36;
      v51 = (v23[6] + 16 * v36);
      *v51 = v16;
      v51[1] = v28;
      v52 = v23[7] + 40 * v36;
      v53 = v163;
      v54 = v162;
      *v52 = v161;
      *(v52 + 16) = v54;
      *(v52 + 32) = v53;
      v24 = v153;
      (*v155)(v7, v153);
      v55 = v23[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_94;
      }

      v23[2] = v57;
LABEL_5:
      ++v22;
      v25 = v26;
      v21 = v154;
      if (v158 == v22)
      {
        goto LABEL_25;
      }
    }
  }

  v23 = &_swiftEmptyDictionarySingleton;
LABEL_25:
  LOBYTE(v161) = 1;
  AnyHashable.init<A>(_:)();
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v161 = v23;
  sub_1000B97D4(&aBlock, 0x6574616D696E61, 0xE700000000000000, v58);
  v59 = v161;
  sub_10000822C(v148, v146, type metadata accessor for SettingsURLDestination);
  sub_100018684(&qword_10015EDE0, type metadata accessor for SettingsURLDestination);
  AnyHashable.init<A>(_:)();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *&v161 = v59;
  sub_1000B97D4(&aBlock, 0xD000000000000021, 0x8000000100124380, v60);
  v16 = v161;
  v61 = &off_10015A000;
  v23 = v152;
  if (*(v161 + 16) && (v62 = sub_1000B8930(1752457584, 0xE400000000000000), (v63 & 1) != 0) && (sub_1000069D8(*(v16 + 7) + 40 * v62, &aBlock), (swift_dynamicCast() & 1) != 0))
  {
    v64 = v160;
    *&v161 = v159;
    if (!v160)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (!*(v16 + 2))
    {
      goto LABEL_62;
    }

    v65 = sub_1000B8930(1953460082, 0xE400000000000000);
    if ((v66 & 1) == 0)
    {
      goto LABEL_62;
    }

    sub_1000069D8(*(v16 + 7) + 40 * v65, &aBlock);
    if (!swift_dynamicCast())
    {
      v161 = 0uLL;
      goto LABEL_62;
    }

    v64 = *(&v161 + 1);
    if (!*(&v161 + 1))
    {
      goto LABEL_62;
    }
  }

  *&aBlock = v161;
  *(&aBlock + 1) = v64;
  *&v161 = 47;
  *(&v161 + 1) = 0xE100000000000000;
  sub_10002EAE0();
  v67 = StringProtocol.components<A>(separatedBy:)();

  if (!v67[2])
  {
LABEL_42:

    goto LABEL_62;
  }

  v69 = v67[4];
  v68 = v67[5];

  *&aBlock = v69;
  *(&aBlock + 1) = v68;
  *&v161 = 35;
  *(&v161 + 1) = 0xE100000000000000;
  v70 = StringProtocol.components<A>(separatedBy:)();
  if (!v70[2])
  {

    goto LABEL_42;
  }

  v72 = v70[4];
  v71 = v70[5];

  LOBYTE(v159) = 1;
  if ([v23 respondsToSelector:"prepareHandlingURLForSpecifierID:resourceDictionary:animatePush:withCompletion:"])
  {
    v158 = sub_1000B2C98(v16);
    v73 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v168 = sub_1000BAC94;
    v169 = v151;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v167 = sub_10000411C;
    *(&v167 + 1) = &unk_100150668;
    v75 = v23;
    v76 = _Block_copy(&aBlock);
    v61 = &off_10015A000;

    v77 = [v75 prepareHandlingURLForSpecifierID:v73 resourceDictionary:isa animatePush:&v159 withCompletion:v76];
    _Block_release(v76);
  }

  else
  {

    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_10000659C(v78, qword_100169658);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v77 = 2;
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "controllerToHandleURL doesn't respond to prepareHandlingURL", v81, 2u);
    }

    else
    {

      v77 = 2;
    }
  }

  *&aBlock = v69;
  *(&aBlock + 1) = v68;
  *&v161 = 35;
  *(&v161 + 1) = 0xE100000000000000;
  v82 = StringProtocol.components<A>(separatedBy:)();

  v83 = *(v82 + 16);
  if (v83)
  {
    v84 = (v82 + 16 + 16 * v83);
    v86 = *v84;
    v85 = v84[1];

    if (v61[340] != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_10000659C(v87, qword_100169658);

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&aBlock = v91;
      *v90 = 136315138;
      *(v90 + 4) = sub_100025CF0(v86, v85, &aBlock);
      _os_log_impl(&_mh_execute_header, v88, v89, "controllerToHandleURL handling offset target %s", v90, 0xCu);
      sub_10000665C(v91);
    }

    v23 = v152;
    v164 = &OBJC_PROTOCOL___PSViewControllerOffsetProtocol;
    v92 = swift_dynamicCastObjCProtocolConditional();
    if (v92)
    {
      v93 = v92;
      v94 = v23;
      v95 = String._bridgeToObjectiveC()();
      [v93 setDesiredVerticalContentOffsetItemNamed:v95];
    }

    if ([v23 respondsToSelector:"highlightSpecifierWithID:"])
    {
      v96 = String._bridgeToObjectiveC()();
      [v23 highlightSpecifierWithID:v96];

      if (v77 == 2)
      {
        goto LABEL_62;
      }
    }

    else
    {

      if (v77 == 2)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {

    v23 = v152;
    if (v77 == 2)
    {
      goto LABEL_62;
    }
  }

  if ((v77 & 1) == 0)
  {
    sub_100046460(v150, type metadata accessor for SettingsURLDestination);

    if (v61[340] != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for Logger();
    sub_10000659C(v134, qword_100169658);
    v135 = v23;
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *&aBlock = v139;
      *v138 = 136446210;
      swift_getObjectType();
      v140 = _typeName(_:qualified:)();
      v142 = sub_100025CF0(v140, v141, &aBlock);

      *(v138 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v136, v137, "Instance of %{public}s deferred URL handling.", v138, 0xCu);
      sub_10000665C(v139);
    }

    return;
  }

LABEL_62:
  if (v61[340] != -1)
  {
LABEL_95:
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  sub_10000659C(v97, qword_100169658);
  v98 = v23;
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&aBlock = v102;
    *v101 = 136446210;
    swift_getObjectType();
    v103 = _typeName(_:qualified:)();
    v105 = sub_100025CF0(v103, v104, &aBlock);

    *(v101 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v99, v100, "Instance of %{public}s did not defer URL handling, calling handleURL.", v101, 0xCu);
    sub_10000665C(v102);
  }

  if (*(v16 + 2) && (v106 = sub_1000B8930(1752457584, 0xE400000000000000), (v107 & 1) != 0) && (sub_1000069D8(*(v16 + 7) + 40 * v106, &aBlock), (swift_dynamicCast() & 1) != 0))
  {
    v108 = *(&v161 + 1);
    v109 = v161 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v109 = 0;
    v108 = 0xE000000000000000;
  }

  if ((v145 & 1) == 0)
  {
    sub_100046460(v150, type metadata accessor for SettingsURLDestination);

    goto LABEL_76;
  }

  v110 = HIBYTE(v108) & 0xF;
  if ((v108 & 0x2000000000000000) == 0)
  {
    v110 = v109;
  }

  if (v110)
  {
    sub_100046460(v150, type metadata accessor for SettingsURLDestination);
LABEL_76:

LABEL_77:
    v111 = v98;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *&aBlock = v115;
      *v114 = 136315138;
      swift_getObjectType();
      v116 = _typeName(_:qualified:)();
      v118 = sub_100025CF0(v116, v117, &aBlock);

      *(v114 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v112, v113, "Path is not empty, calling handleURL on '%s'.", v114, 0xCu);
      sub_10000665C(v115);
    }

    sub_1000B2C98(v16);
    v119 = Dictionary._bridgeToObjectiveC()().super.isa;

    v168 = sub_1000BAC94;
    v169 = v151;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v167 = sub_10000411C;
    *(&v167 + 1) = &unk_100150640;
    v120 = _Block_copy(&aBlock);

    [v111 handleURL:v119 withCompletion:v120];

    _Block_release(v120);

    return;
  }

  v165 = &OBJC_PROTOCOL___PSListControllerURLHandler;
  v121 = swift_dynamicCastObjCProtocolConditional();
  if (!v121)
  {

    sub_100046460(v150, type metadata accessor for SettingsURLDestination);
    goto LABEL_77;
  }

  v122 = v121;
  v123 = v98;
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&aBlock = v127;
    *v126 = 136315138;
    swift_getObjectType();
    v128 = _typeName(_:qualified:)();
    v130 = sub_100025CF0(v128, v129, &aBlock);

    *(v126 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v124, v125, "Reusing existing controller '%s' for handling URL with empty remaining path.", v126, 0xCu);
    sub_10000665C(v127);
  }

  if ([v122 respondsToSelector:"handleResourceDictionaryWhenAlreadyPresented:"])
  {
    v131 = v123;
    sub_1000B2C98(v16);
    v132 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v122 handleResourceDictionaryWhenAlreadyPresented:v132];
  }

  v133 = v150;
  sub_1000B295C(v150);

  sub_100046460(v133, type metadata accessor for SettingsURLDestination);
}

uint64_t sub_1000B10C0(uint64_t a1, Swift::Int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000659C(v4, qword_100169658);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2049;
      *(v7 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v5, v6, "Popping %{private,mask.hash}ld from stack.", v7, 0x16u);
    }

    swift_getKeyPath();
    sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    NavigationPath.removeLast(_:)(a2);
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000B1308(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v56 = a5;
  v57 = a3;
  v7 = type metadata accessor for SettingsURLDestination(0);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v7 - 8);
  v59 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v60 = &v53[-v11];
  v12 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for SettingsAppDetailContent(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v23 = &v53[-v22];
  __chkstk_darwin(v21);
  v25 = &v53[-v24];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v54 = a4;
    v58 = a2;
    sub_10000822C(a2, v25, type metadata accessor for SettingsAppDetailContent);
    v28 = v27 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
    swift_beginAccess();
    sub_10000822C(v28, v23, type metadata accessor for SettingsAppDetailContent);
    v29 = sub_1000BAABC(v23, v25);
    sub_100046460(v23, type metadata accessor for SettingsAppDetailContent);
    if (v29)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v53[-16] = v27;
      *&v53[-8] = v25;
      v61[0] = v27;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10000822C(v25, v20, type metadata accessor for SettingsAppDetailContent);
      swift_beginAccess();
      sub_1000BABF8(v20, v28);
      swift_endAccess();
      swift_getKeyPath();
      v61[0] = v27;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v28 + 32) <= 2u)
      {
        sub_1000A8068();
      }

      sub_100046460(v20, type metadata accessor for SettingsAppDetailContent);
    }

    v31 = v58;
    sub_100046460(v25, type metadata accessor for SettingsAppDetailContent);
    sub_10000822C(v31 + *(v16 + 20), v15, type metadata accessor for SettingsAppDetailContent.ContentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v58 = *(v15 + *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48));
        v38 = type metadata accessor for TaskPriority();
        (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
        v39 = swift_allocObject();
        swift_weakInit();
        sub_10000822C(v57, v59, type metadata accessor for SettingsURLDestination);
        type metadata accessor for MainActor();

        v40 = v56;
        sub_10002698C(v56, v61);
        v41 = static MainActor.shared.getter();
        v42 = (*(v55 + 80) + 40) & ~*(v55 + 80);
        v43 = swift_allocObject();
        v43[2] = v41;
        v43[3] = &protocol witness table for MainActor;
        v43[4] = v39;
        sub_100030854(v59, v43 + v42, type metadata accessor for SettingsURLDestination);
        v44 = v43 + ((v42 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v44 = v58;
        v44[8] = v54 & 1;
        v45 = v43 + ((v42 + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
        v45[32] = *(v40 + 32);
        v46 = *(v40 + 16);
        *v45 = *v40;
        *(v45 + 1) = v46;

        sub_100094AF4(0, 0, v60, &unk_1001160E0, v43);

        v47 = type metadata accessor for SettingsPaneRecipe();
        return (*(*(v47 - 8) + 8))(v15, v47);
      }

      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000659C(v51, qword_100169658);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_25;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Processing a URL for an empty content state!";
    }

    else if (EnumCaseMultiPayload)
    {
      v48 = *v15;
      v61[3] = &type metadata for SettingsAppFeatureFlags;
      v61[4] = sub_10000631C();
      LOBYTE(v61[0]) = 6;
      v49 = isFeatureEnabled(_:)();
      sub_10000665C(v61);
      if ((v49 & 1) == 0)
      {
        v52 = PreferencesControllerRepresentableModel.makeViewControllerIfNeeded()();
        sub_1000AFC44(v57, v52, (v54 & 1) == 0);
      }

      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_10000659C(v50, qword_100169658);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v34, v35))
      {
LABEL_25:
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "PSController URL handling is no longer supported in this app.";
    }

    else
    {
      sub_100046460(v15, type metadata accessor for SettingsAppDetailContent.ContentType);
      if (qword_10015AAA0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000659C(v33, qword_100169658);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_25;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Processing a URL for opaque view controller!";
    }

    _os_log_impl(&_mh_execute_header, v34, v35, v37, v36, 2u);

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1000B1C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 56) = a6;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = type metadata accessor for AnimationCompletionCriteria();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v12 = type metadata accessor for NavigationPath();
  *(v8 + 96) = v12;
  v13 = *(v12 - 8);
  *(v8 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 120) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 128) = v16;
  *(v8 + 136) = v15;

  return _swift_task_switch(sub_1000B1D6C, v16, v15);
}

uint64_t sub_1000B1D6C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    type metadata accessor for SettingsExperienceCoordinationManager();
    v0[19] = static SettingsExperienceCoordinationManager.shared.getter();
    v3 = *(&async function pointer to dispatch thunk of SettingsExperienceCoordinationManager.openURL(_:startingFrom:) + 1);
    v13 = (&async function pointer to dispatch thunk of SettingsExperienceCoordinationManager.openURL(_:startingFrom:) + async function pointer to dispatch thunk of SettingsExperienceCoordinationManager.openURL(_:startingFrom:));
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1000B1EA4;
    v5 = v0[14];
    v6 = v0[6];
    v7 = v0[7];

    return v13(v5, v6, v7);
  }

  else
  {
    v9 = v0[15];

    v10 = v0[14];
    v11 = v0[11];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000B1EA4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_1000B1FE8, v5, v4);
}

uint64_t sub_1000B1FE8()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v15 = *(v0 + 104);
  v16 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v14 = *(v0 + 72);
  v7 = *(v0 + 168);

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v3;
  swift_allocObject();
  swift_weakInit();

  static Animation.default.getter();
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();
  (*(v4 + 8))(v5, v14);

  (*(v15 + 8))(v3, v16);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000B21B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = *a3;
  v28 = *(a3 + 16);
  v29 = v7;
  v8 = *(a3 + 32);
  v9 = type metadata accessor for NavigationPath();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a2)
    {
      sub_100010CD0();
      v31[1] = v28;
      v31[0] = v29;
      v32 = v8;
      sub_10002698C(a3, v30);
      sub_1000954AC(v31);
    }

    *&v29 = v4;
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000659C(v19, qword_100169658);
    v20 = v10[2];
    v20(v16, v33, v9);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      swift_getKeyPath();
      *&v28 = v20;
      v27 = v22;
      v30[0] = v18;
      sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v23 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
      swift_beginAccess();
      (v28)(v14, v18 + v23, v9);
      LOBYTE(v23) = static NavigationPath.== infix(_:_:)();
      v24 = v10[1];
      v24(v14, v9);
      v24(v16, v9);
      v20 = v28;
      v25 = v26;
      *(v26 + 1) = v23 & 1;

      _os_log_impl(&_mh_execute_header, v21, v27, "Is new NavigationPath equal to old NavigationPath? %{BOOL}d", v25, 8u);
    }

    else
    {
      (v10[1])(v16, v9);
    }

    v20(v14, v33, v9);
    sub_1000A7C70(v14);
  }

  return result;
}

uint64_t sub_1000B255C()
{
  v0 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8[-v2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SettingsURLDestination(0);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
    swift_beginAccess();
    sub_10003BBC0(v3, v5 + v7, &qword_10015ED78, &qword_100115FB8);
    swift_endAccess();
    sub_1000A8CB0();

    return sub_1000068B0(v3, &qword_10015ED78, &qword_100115FB8);
  }

  return result;
}

uint64_t sub_1000B26A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationPath();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsURLDestination(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000659C(v13, qword_100169658);
    sub_10000822C(a2, v11, type metadata accessor for SettingsURLDestination);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      v18 = sub_1000F41C0();
      v22 = v2;
      v20 = v19;
      sub_100046460(v11, type metadata accessor for SettingsURLDestination);
      v21 = sub_100025CF0(v18, v20, &v23);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Resetting Navigation Path for URL navigation %{private,mask.hash}s.", v16, 0x16u);
      sub_10000665C(v17);
    }

    else
    {

      sub_100046460(v11, type metadata accessor for SettingsURLDestination);
    }

    NavigationPath.init()();
    sub_1000A7C70(v7);
  }

  return result;
}

uint64_t sub_1000B295C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for SettingsURLDestination(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000659C(v11, qword_100169658);
  sub_10000822C(a1, v10, type metadata accessor for SettingsURLDestination);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    v17 = URL.absoluteString.getter();
    v19 = v18;
    sub_100046460(v10, type metadata accessor for SettingsURLDestination);
    v20 = sub_100025CF0(v17, v19, &v27);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Application level completion handler for url '%s' called.", v15, 0xCu);
    sub_10000665C(v16);

    v6 = v26;
  }

  else
  {

    sub_100046460(v10, type metadata accessor for SettingsURLDestination);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    (*(v7 + 56))(v5, 1, 1, v6);
    v23 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
    swift_beginAccess();
    sub_10003BBC0(v5, v22 + v23, &qword_10015ED78, &qword_100115FB8);
    v24 = swift_endAccess();
    sub_1000A8CB0(v24);

    return sub_1000068B0(v5, &qword_10015ED78, &qword_100115FB8);
  }

  return result;
}

uint64_t sub_1000B2C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004DED0(&qword_10015C8F0, &qword_100112B58);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000069D8(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_10001EFEC(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_10001EFEC(v35, v24);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_10001EFEC(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000B2F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[11] = v10;
  v8[12] = v9;

  return _swift_task_switch(sub_1000B3024, v10, v9);
}

uint64_t sub_1000B3024()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v0[14] = sub_100010CD0();
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1000B312C;
    v4 = v0[8];
    v5 = v0[9];
    v7 = v0[6];
    v6 = v0[7];

    return sub_10009EC24(v7, v6, v4, v5);
  }

  else
  {
    v9 = v0[10];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000B312C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return _swift_task_switch(sub_1000B3270, v5, v4);
}

uint64_t sub_1000B3270()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

void sub_1000B32DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EngagementLinkData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  if (([a1 integerValue] | 2) == 2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v17 = sub_100010CD0();

      sub_10000822C(a3, v16, type metadata accessor for EngagementLinkData);
      (*(v6 + 56))(v16, 0, 1, v5);
      v18 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
      swift_beginAccess();
      sub_1000BB1A0(v16, v17 + v18, &qword_10015EB40, &qword_1001161A0);
      swift_endAccess();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100010CD0();

      sub_1000951B0(7u);
    }

    if (qword_10015AAB8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000659C(v19, qword_1001696A0);
    sub_10000822C(a3, v12, type metadata accessor for EngagementLinkData);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = &v12[*(v5 + 24)];
      v25 = URL.absoluteString.getter();
      v27 = v26;
      sub_100046460(v12, type metadata accessor for EngagementLinkData);
      v28 = sub_100025CF0(v25, v27, &v41);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Did update pending engagement link data for URL '%{private,mask.hash}s'.", v22, 0x16u);
      sub_10000665C(v23);

      return;
    }

    v39 = v12;
  }

  else
  {
    if (qword_10015AAB8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000659C(v29, qword_1001696A0);
    sub_10000822C(a3, v10, type metadata accessor for EngagementLinkData);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v34 = &v10[*(v5 + 24)];
      v35 = URL.absoluteString.getter();
      v37 = v36;
      sub_100046460(v10, type metadata accessor for EngagementLinkData);
      v38 = sub_100025CF0(v35, v37, &v42);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unsupported URL type for URL '%{private,mask.hash}s'.", v32, 0x16u);
      sub_10000665C(v33);

      return;
    }

    v39 = v10;
  }

  sub_100046460(v39, type metadata accessor for EngagementLinkData);
}

void sub_1000B384C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1000B38B4(uint64_t *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169640);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = *a1;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD00000000000001FLL, 0x8000000100124590, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s)", v4, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000B3A7C(uint64_t a1, char **a2)
{
  v58 = a2;
  v3 = sub_10004DED0(&unk_10015EFE0, &qword_100116268);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = &v48 - v5;
  v6 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 8);
  __chkstk_darwin(v6);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for PreferencesControllerRecipe();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  v23 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v23 - 8) + 16))(v22, a1, v23);
  v24 = *(v19 + 44);
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v22[v24] != v61[0])
  {
    v26 = (v14 + 56);
    v51 = (v14 + 32);
    v50 = (v14 + 8);
    v52 = (v56 + 56);
    v49 = (v56 + 32);
    v48 = (v56 + 8);
    v55 = (v14 + 56);
    v56 = v17;
    while (1)
    {
      v27 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v28, v62);
      v27(v61, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v62, v61);
      sub_10000B270(v61, v60);
      sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
      v29 = swift_dynamicCast();
      v30 = *v26;
      if ((v29 & 1) == 0)
      {
        break;
      }

      v30(v12, 0, 1, v13);
      (*v51)(v17, v12, v13);
      v31 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
      v32 = v57;
      if (!v31)
      {
        (*v50)(v17, v13);
LABEL_9:
        sub_10000B270(v61, v60);
        v35 = v54;
        v36 = swift_dynamicCast();
        v37 = *v52;
        v34 = 1;
        if (v36)
        {
          v37(v35, 0, 1, v32);
          (*v49)(v53, v35, v32);
          v38 = SettingsAnyPlatformViewControllerRecipe.viewController.getter();
          if (v38)
          {
            v39 = v38;
            v59 = &OBJC_PROTOCOL___PSStateRestoration;
            v34 = 1;
            v40 = swift_dynamicCastObjCProtocolConditional();
            if (v40)
            {
              v34 = [v40 canBeShownFromSuspendedState];
            }
          }

          (*v48)(v53, v32);
        }

        else
        {
          v37(v35, 1, 1, v32);
          sub_1000068B0(v35, &unk_10015EFE0, &qword_100116268);
        }

        goto LABEL_16;
      }

      v33 = v31;
      v34 = [v31 canBeShownFromSuspendedState];

      (*v50)(v17, v13);
LABEL_16:
      v41 = v58;
      v42 = *v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v41 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1000C51E4(0, *(v42 + 2) + 1, 1, v42);
        *v58 = v42;
      }

      v45 = *(v42 + 2);
      v44 = *(v42 + 3);
      if (v45 >= v44 >> 1)
      {
        v47 = sub_1000C51E4((v44 > 1), v45 + 1, 1, v42);
        *v58 = v47;
      }

      sub_10000665C(v61);
      v46 = *v58;
      *(v46 + 2) = v45 + 1;
      v46[v45 + 32] = v34;
      dispatch thunk of Collection.endIndex.getter();
      v26 = v55;
      v17 = v56;
      if (*&v22[v24] == v61[0])
      {
        return sub_1000068B0(v22, &qword_10015EF00, &qword_1001160C8);
      }
    }

    v30(v12, 1, 1, v13);
    sub_1000068B0(v12, &qword_10015EEE0, &qword_1001160B0);
    v32 = v57;
    goto LABEL_9;
  }

  return sub_1000068B0(v22, &qword_10015EF00, &qword_1001160C8);
}

uint64_t sub_1000B4114()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationPath.init()();
  return sub_1000A7C70(v3);
}

uint64_t sub_1000B419C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v10, a2, v3);
  v11(v8, v10, v3);
  sub_1000A7C70(v8);
  return (*(v4 + 8))(v10, v3);
}

void sub_1000B42F8(uint64_t *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169640);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = *a1;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001245D0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s)", v4, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000B44D4(uint64_t *a1)
{
  if (qword_10015AA98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169640);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = *a1;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD000000000000020, 0x80000001001245F0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s)", v4, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000B469C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EEE0, &qword_1001160B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for PreferencesControllerRecipe();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = *(v12 + 44);
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v15[v17] != v45[0])
  {
    v20 = (v7 + 56);
    v44 = (v7 + 8);
    v21 = (v7 + 32);
    *&v18 = 141558275;
    v38 = v18;
    v43 = v10;
    v40 = v20;
    v41 = v21;
    do
    {
      v22 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v23, v46);
      v22(v45, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_100046A2C(v46, v45);
      sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
      v24 = swift_dynamicCast();
      v25 = *v20;
      if (v24)
      {
        v25(v5, 0, 1, v6);
        (*v21)(v10, v5, v6);
        v26 = PreferencesControllerRecipe.viewControllerIfLoaded.getter();
        if (v26)
        {
          v27 = v26;
          objc_opt_self();
          v28 = swift_dynamicCastObjCClass();
          if (v28)
          {
            v29 = v28;
            if ([v28 shouldReloadSpecifiersOnResume])
            {
              if (qword_10015AA80 != -1)
              {
                swift_once();
              }

              v30 = type metadata accessor for Logger();
              sub_10000659C(v30, qword_1001695F8);
              v31 = v27;
              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.default.getter();
              v42 = v31;

              v34 = v32;
              if (os_log_type_enabled(v32, v33))
              {
                v35 = swift_slowAlloc();
                v36 = swift_slowAlloc();
                v39 = v36;
                *v35 = v38;
                *(v35 + 4) = 1752392040;
                *(v35 + 12) = 2113;
                *(v35 + 14) = v29;
                *v36 = v29;
                v37 = v42;
                _os_log_impl(&_mh_execute_header, v34, v33, "Reloading specifiers on resume for %{private,mask.hash}@.", v35, 0x16u);
                sub_1000068B0(v39, &unk_10015F9C0, &unk_100115230);
              }

              [v29 reloadSpecifiers];
              v10 = v43;
              (*v44)(v43, v6);
              v20 = v40;
              v21 = v41;
            }

            else
            {
              v10 = v43;
              (*v44)(v43, v6);
            }

            goto LABEL_5;
          }

          v10 = v43;
        }

        (*v44)(v10, v6);
      }

      else
      {
        v25(v5, 1, 1, v6);
        sub_1000068B0(v5, &qword_10015EEE0, &qword_1001160B0);
      }

LABEL_5:
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v15[v17] != v45[0]);
  }

  return sub_1000068B0(v15, &qword_10015EF00, &qword_1001160C8);
}

void sub_1000B4C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v142 = a1;
  v7 = *(a3 + 8);
  v141 = *a3;
  v140 = v7;
  v8 = *(a3 + 24);
  v139 = *(a3 + 16);
  v138 = v8;
  v137 = *(a3 + 32);
  v136 = type metadata accessor for SettingsPaneRecipe();
  v135 = *(v136 - 8);
  v9 = *(v135 + 64);
  v10 = __chkstk_darwin(v136);
  v130 = v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = v128 - v12;
  v149 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v13 = *(*(v149 - 8) + 64);
  v14 = __chkstk_darwin(v149);
  v16 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v143 = v128 - v18;
  __chkstk_darwin(v17);
  v151 = (v128 - v19);
  v20 = type metadata accessor for NavigationPath();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v148 = v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for SettingsAppDetailContent(0);
  v23 = *(*(v157 - 8) + 64);
  v24 = __chkstk_darwin(v157);
  v133 = v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v132 = v128 - v27;
  v28 = __chkstk_darwin(v26);
  v134 = v128 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v128 - v31;
  v33 = __chkstk_darwin(v30);
  v153 = v128 - v34;
  v35 = __chkstk_darwin(v33);
  v150 = v128 - v36;
  __chkstk_darwin(v35);
  v38 = v128 - v37;
  v146 = type metadata accessor for SettingsURLDestination.Action(0);
  v39 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v147 = v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v156 = v128 - v43;
  v155 = type metadata accessor for SettingsURLDestination(0);
  v154 = *(v155 - 8);
  v44 = *(v154 + 64);
  __chkstk_darwin(v155);
  v145 = v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  v47 = sub_10000659C(v46, qword_100169658);

  sub_100059CA0(a2, &v166, &qword_10015E690, &qword_100115788);
  sub_100059CA0(a3, &v166, &qword_10015E690, &qword_100115788);
  v158 = a2;
  v128[1] = v47;
  v48 = Logger.logObject.getter();
  v49 = v158;
  v50 = v48;
  v51 = static os_log_type_t.info.getter();

  sub_1000068B0(v49, &qword_10015E690, &qword_100115788);
  sub_1000068B0(a3, &qword_10015E690, &qword_100115788);
  v144 = v51;
  v52 = os_log_type_enabled(v50, v51);
  v152 = v38;
  v129 = v32;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *&v160[0] = v128[0];
    *v53 = 136315906;
    v54 = *v4;
    v55 = _typeName(_:qualified:)();
    v57 = sub_100025CF0(v55, v56, v160);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_100025CF0(0xD000000000000037, 0x8000000100124340, v160);
    *(v53 + 22) = 2082;
    v58 = *(v49 + 16);
    v166 = *v49;
    v167 = v58;
    v168 = *(v49 + 32);
    sub_100059CA0(v49, &v162, &qword_10015E690, &qword_100115788);
    sub_10004DED0(&qword_10015E690, &qword_100115788);
    v59 = String.init<A>(describing:)();
    v61 = sub_100025CF0(v59, v60, v160);

    *(v53 + 24) = v61;
    *(v53 + 32) = 2082;
    v62 = *(a3 + 16);
    v166 = *a3;
    v167 = v62;
    v168 = *(a3 + 32);
    v38 = v152;
    sub_100059CA0(a3, &v162, &qword_10015E690, &qword_100115788);
    v63 = String.init<A>(describing:)();
    v65 = sub_100025CF0(v63, v64, v160);

    *(v53 + 34) = v65;
    _os_log_impl(&_mh_execute_header, v50, v144, "(%s.%s): '%{public}s' → '%{public}s'", v53, 0x2Au);
    swift_arrayDestroy();
  }

  v66 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination;
  swift_beginAccess();
  v67 = v4 + v66;
  v68 = v156;
  sub_100059CA0(v67, v156, &qword_10015ED78, &qword_100115FB8);
  v69 = v155;
  if ((*(v154 + 48))(v68, 1, v155) == 1)
  {
    sub_1000068B0(v68, &qword_10015ED78, &qword_100115FB8);
  }

  else
  {
    v70 = v145;
    sub_100030854(v68, v145, type metadata accessor for SettingsURLDestination);
    v71 = v147;
    sub_10000822C(v70 + *(v69 + 20), v147, type metadata accessor for SettingsURLDestination.Action);
    sub_100046460(v70, type metadata accessor for SettingsURLDestination);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v72 = *v71;
      v73 = *(v71 + 8);
      v74 = *(v71 + 16);
      v75 = *(v71 + 24);
      v76 = *(v71 + 32);
      if (v76 > 2)
      {
        sub_10002C5C0(v72, v73, v74, v75, v76);

        v120 = Logger.logObject.getter();
        v121 = v4;
        v122 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v120, v122))
        {
          v123 = swift_slowAlloc();
          *&v166 = swift_slowAlloc();
          *v123 = 136315394;
          v124 = *v121;
          v125 = _typeName(_:qualified:)();
          v127 = sub_100025CF0(v125, v126, &v166);

          *(v123 + 4) = v127;
          *(v123 + 12) = 2080;
          *(v123 + 14) = sub_100025CF0(0xD000000000000037, 0x8000000100124340, &v166);
          _os_log_impl(&_mh_execute_header, v120, v122, "(%s.%s): URL in progress, trusting URL handling to set the detail content and NavigationPath.", v123, 0x16u);
          swift_arrayDestroy();
        }

        return;
      }

      sub_10002C5C0(v72, v73, v74, v75, v76);
    }

    else
    {
      sub_100046460(v71, type metadata accessor for SettingsURLDestination.Action);
    }
  }

  swift_getKeyPath();
  v77 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel___observationRegistrar;
  *&v166 = v4;
  v156 = sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v78 = v4 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_10000822C(v78, v38, type metadata accessor for SettingsAppDetailContent);
  v79 = *(a3 + 32);
  if (v79 != 255)
  {
    v80 = *a3;
    v81 = *(a3 + 8);
    v82 = *(a3 + 16);
    v83 = *(a3 + 24);
    v162.i64[0] = v80;
    v162.i64[1] = v81;
    v163 = v82;
    v164 = v83;
    v165 = v79;
    v84 = *(v158 + 32);
    if (v84 != 255)
    {
      v85 = *(v158 + 1);
      v160[0] = *v158;
      v160[1] = v85;
      v161 = v84;
      if (sub_10002BB48(v160, &v162))
      {
        v86 = v148;
        NavigationPath.init()();
        sub_1000A7C70(v86);
LABEL_30:
        sub_100046460(v38, type metadata accessor for SettingsAppDetailContent);
        return;
      }
    }

    v155 = v77;
    sub_100029920(v141, v140, v139, v138, v137);
    v87 = v148;
    NavigationPath.init()();
    v158 = v4;
    sub_1000A7C70(v87);
    v88 = v151;
    sub_10008F610(v142, v151);
    v89 = v150;
    v148 = *(v157 + 20);
    sub_10000822C(v88, v150 + v148, type metadata accessor for SettingsAppDetailContent.ContentType);
    *v89 = v80;
    *(v89 + 8) = v81;
    *(v89 + 16) = v82;
    *(v89 + 24) = v83;
    *(v89 + 32) = v79;
    v154 = v80;
    v90 = v153;
    sub_10000822C(v78, v153, type metadata accessor for SettingsAppDetailContent);
    v91 = *v90;
    v92 = *(v90 + 8);
    v94 = *(v90 + 16);
    v93 = *(v90 + 24);
    v95 = *(v90 + 32);
    if (v95 == 255)
    {
      sub_10002698C(&v162, &v166);
      sub_100032660(v91, v92, v94, v93, 0xFFu);
      sub_100032660(v154, v81, v82, v83, v79);
      v97 = v157;
      v98 = v150;
    }

    else
    {
      *&v166 = *v90;
      *(&v166 + 1) = v92;
      *&v167 = v94;
      *(&v167 + 1) = v93;
      v168 = v95;
      v96 = sub_10002BB48(&v166, &v162);
      v97 = v157;
      v98 = v150;
      if ((v96 & 1) != 0 && sub_100032BF8(v153 + *(v157 + 20), v150 + v148))
      {
        sub_100046460(v153, type metadata accessor for SettingsAppDetailContent);
        v99 = v129;
        sub_10000822C(v98, v129, type metadata accessor for SettingsAppDetailContent);
        swift_beginAccess();
        sub_1000BABF8(v99, v78);
        swift_endAccess();
        swift_getKeyPath();
        v159 = v158;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v100 = v152;
        if (*(v78 + 32) <= 2u)
        {
          sub_1000A8068();
        }

        sub_100046460(v99, type metadata accessor for SettingsAppDetailContent);
        goto LABEL_34;
      }
    }

    sub_100046460(v153, type metadata accessor for SettingsAppDetailContent);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v114 = v158;
    v128[-2] = v158;
    v128[-1] = v98;
    v159 = v114;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v100 = v152;
LABEL_34:
    sub_100046460(v98, type metadata accessor for SettingsAppDetailContent);
    v115 = v143;
    sub_10000822C(v100 + *(v97 + 20), v143, type metadata accessor for SettingsAppDetailContent.ContentType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v116 = *(v115 + *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48));

      v117 = v135;
      v118 = v131;
      v119 = v136;
      (*(v135 + 32))(v131, v115, v136);
      type metadata accessor for SettingsExperienceCoordinationManager();
      static SettingsExperienceCoordinationManager.shared.getter();
      dispatch thunk of SettingsExperienceCoordinationManager.removeCoordinator(for:)();

      (*(v117 + 8))(v118, v119);
      sub_100046460(v151, type metadata accessor for SettingsAppDetailContent.ContentType);
      sub_100046460(v100, type metadata accessor for SettingsAppDetailContent);
    }

    else
    {
      sub_100046460(v151, type metadata accessor for SettingsAppDetailContent.ContentType);
      sub_100046460(v100, type metadata accessor for SettingsAppDetailContent);
      sub_100046460(v115, type metadata accessor for SettingsAppDetailContent.ContentType);
    }

    return;
  }

  if (qword_10015AB18 != -1)
  {
    swift_once();
  }

  v101 = v157;
  v102 = sub_10000659C(v157, qword_1001697A0);
  v103 = v134;
  sub_10000822C(v102, v134, type metadata accessor for SettingsAppDetailContent);
  v104 = v132;
  sub_10000822C(v78, v132, type metadata accessor for SettingsAppDetailContent);
  v105 = sub_1000BAABC(v104, v103);
  sub_100046460(v104, type metadata accessor for SettingsAppDetailContent);
  if (v105)
  {
    v106 = swift_getKeyPath();
    __chkstk_darwin(v106);
    v128[-2] = v107;
    v128[-1] = v103;
    *&v166 = v107;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v108 = v133;
    sub_10000822C(v103, v133, type metadata accessor for SettingsAppDetailContent);
    swift_beginAccess();
    sub_1000BABF8(v108, v78);
    swift_endAccess();
    swift_getKeyPath();
    *&v166 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v78 + 32) <= 2u)
    {
      sub_1000A8068();
    }

    sub_100046460(v133, type metadata accessor for SettingsAppDetailContent);
  }

  sub_100046460(v103, type metadata accessor for SettingsAppDetailContent);
  sub_10000822C(&v38[*(v101 + 20)], v16, type metadata accessor for SettingsAppDetailContent.ContentType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v109 = *&v16[*(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48)];

    v110 = v135;
    v111 = v130;
    v112 = v136;
    (*(v135 + 32))(v130, v16, v136);
    type metadata accessor for SettingsExperienceCoordinationManager();
    static SettingsExperienceCoordinationManager.shared.getter();
    dispatch thunk of SettingsExperienceCoordinationManager.removeCoordinator(for:)();

    (*(v110 + 8))(v111, v112);
    goto LABEL_30;
  }

  sub_100046460(v38, type metadata accessor for SettingsAppDetailContent);
  sub_100046460(v16, type metadata accessor for SettingsAppDetailContent.ContentType);
}

BOOL sub_1000B5F84()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26[-1] - v4;
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_1001696A0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v9 = 136315907;
    v10 = *v0;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100025CF0(v11, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100025CF0(0xD000000000000039, 0x8000000100124550, v26);
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v14 = Dictionary.description.getter();
    v16 = sub_100025CF0(v14, v15, v26);

    *(v9 + 34) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start (%s.%s), resourceDictionary: '%{private,mask.hash}s'…", v9, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  sub_100059CA0(v0 + v17, v5, &qword_10015ED78, &qword_100115FB8);
  v18 = type metadata accessor for SettingsURLDestination(0);
  v19 = (*(*(v18 - 8) + 48))(v5, 1, v18);
  sub_1000068B0(v5, &qword_10015ED78, &qword_100115FB8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    if (v19 == 1)
    {
      v22 = "No pending request found, should continue active URL routing.";
    }

    else
    {
      v22 = "Pending request found, should stop active URL routing.";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, v22, v23, 2u);
  }

  sub_1000B6330(v1);
  return v19 == 1;
}

void sub_1000B6330(uint64_t *a1)
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_1001696A0);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 136315907;
    v5 = *a1;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v13);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100025CF0(0xD000000000000039, 0x8000000100124550, &v13);
    *(v4 + 22) = 2160;
    *(v4 + 24) = 1752392040;
    *(v4 + 32) = 2081;
    v9 = Dictionary.description.getter();
    v11 = sub_100025CF0(v9, v10, &v13);

    *(v4 + 34) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v3, "…Complete (%s.%s), resourceDictionary: '%{private,mask.hash}s'.", v4, 0x2Au);
    swift_arrayDestroy();
  }
}

void sub_1000B65DC(void *a1)
{
  v3 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  v25[3] = &type metadata for SettingsAppFeatureFlags;
  v25[4] = sub_10000631C();
  LOBYTE(v25[0]) = 6;
  v7 = isFeatureEnabled(_:)();
  sub_10000665C(v25);
  if (v7)
  {
    sub_1000B690C();
  }

  else
  {
    v8 = sub_1000B6A8C();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    static TaskPriority.background.getter();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v17[5] = v8;
    v17[6] = v10;
    v17[7] = v12;
    v17[8] = v14;
    sub_1000B6E4C(0, 0, v6, &unk_100116210, v17);

    sub_1000068B0(v6, &unk_10015D490, &qword_100112150);
    v21[1] = &OBJC_PROTOCOL___PSController;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v23 = type metadata accessor for PreferencesControllerRecipe();
      v24 = sub_100018684(&qword_10015EFA0, &type metadata accessor for PreferencesControllerRecipe);
      sub_1000BB418(&v22);
      v18 = a1;
      PreferencesControllerRecipe.init(viewController:)();
    }

    else
    {
      v23 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
      v24 = sub_100018684(&qword_10015EF98, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe);
      sub_1000BB418(&v22);
      v19 = a1;
      SettingsAnyPlatformViewControllerRecipe.init(_:)();
    }

    v20 = sub_100046A2C(&v22, v25);
    __chkstk_darwin(v20);
    v21[-2] = v25;
    v21[-1] = v1;
    *&v22 = 0;
    Transaction.disablesAnimations.setter();
    withTransaction<A>(_:_:)();

    sub_10000665C(v25);
  }
}

void sub_1000B690C()
{
  v0 = sub_1000B6A8C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  sub_1000B7944(v0, v2, v4, v6);
  objc_autoreleasePoolPop(v7);
  _StringGuts.grow(_:)(283);
  v8._countAndFlagsBits = 0xD000000000000105;
  v8._object = 0x80000001001243D0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v0;
  v9._object = v2;
  String.append(_:)(v9);
  v10._object = 0x80000001001244E0;
  v10._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v4;
  v11._object = v6;
  String.append(_:)(v11);

  v12 = objc_allocWithZone(NSException);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithName:NSInternalInconsistencyException reason:v13 userInfo:0];

  [v14 raise];
}

uint64_t sub_1000B6A8C()
{
  v1 = v0;
  v20 = type metadata accessor for NavigationPath();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100010CD0();
  swift_getKeyPath();
  v24 = v6;
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *&v6[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
  v8 = *&v6[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8];
  v9 = *&v6[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16];
  v10 = *&v6[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24];
  v11 = v6[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32];
  sub_100031DF8(v7, v8, v9, v10, v6[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32]);

  if (v11 == 255)
  {
    v19 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    v24 = v7;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    v28 = v11;
    v13 = sub_100026A58(v12);
    v19 = v14;
    sub_100032660(v7, v8, v9, v10, v11);
  }

  v23 = &_swiftEmptyArrayStorage;
  swift_getKeyPath();
  v22 = v0;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v16 = v20;
  v17 = (*(v2 + 16))(v5, v1 + v15, v20);
  __chkstk_darwin(v17);
  *(&v19 - 2) = &v23;
  NavigationPath.withCollectionProxy(_:)();
  (*(v2 + 8))(v5, v16);
  if (v23[2])
  {
    v21 = v23;

    sub_10004DED0(&unk_10015FC00, &qword_100111C00);
    sub_1000525A0(&qword_10015EF80, &unk_10015FC00, &qword_100111C00);
    BidirectionalCollection<>.joined(separator:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  return v13;
}

uint64_t sub_1000B6E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  return _swift_task_switch(sub_1000BBA4C, 0, 0);
}

uint64_t sub_1000B6E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100059CA0(a3, v27 - v11, &unk_10015D490, &qword_100112150);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000068B0(v12, &unk_10015D490, &qword_100112150);
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

      sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000B7120()
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

BOOL sub_1000B7278()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-1] - v2;
  v17[3] = &type metadata for SettingsAppFeatureFlags;
  v17[4] = sub_10000631C();
  LOBYTE(v17[0]) = 6;
  v4 = isFeatureEnabled(_:)();
  sub_10000665C(v17);
  if (v4)
  {
    sub_1000B690C();
  }

  v5 = sub_1000B6A8C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static TaskPriority.background.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = v5;
  v14[6] = v7;
  v14[7] = v9;
  v14[8] = v11;
  sub_1000B6E4C(0, 0, v3, &unk_1001161B0, v14);

  sub_1000068B0(v3, &unk_10015D490, &qword_100112150);
  return (v4 & 1) == 0;
}

uint64_t sub_1000B7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  return _swift_task_switch(sub_1000B7458, 0, 0);
}

uint64_t sub_1000B7458()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);

    v7 = objc_autoreleasePoolPush();
    sub_1000B7944(v6, v5, v4, v3);
    objc_autoreleasePoolPop(v7);
  }

  **(v0 + 40) = Strong == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000B7558(uint64_t a1, char **a2)
{
  v4 = sub_10004DED0(&qword_10015EF00, &qword_1001160C8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v32 - v7;
  v9 = type metadata accessor for NavigationPath.CollectionProxy();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = *(v5 + 44);
  sub_100018684(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy);
  dispatch thunk of Collection.startIndex.getter();
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v8[v10] == v36[0])
    {
      break;
    }

    v11 = dispatch thunk of Collection.subscript.read();
    sub_10000B270(v12, v37);
    v11(v36, 0);
    dispatch thunk of Collection.formIndex(after:)();
    sub_100046A2C(v37, v36);
    sub_10000B270(v36, v34);
    sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
    sub_10004DED0(&qword_10015EF88, &qword_1001161F8);
    if (swift_dynamicCast())
    {
      sub_100046A2C(v32, v35);
      sub_100018544(v35, v35[3]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_1000C4E44(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        *a2 = sub_1000C4E44((v18 > 1), v19 + 1, 1, v16);
      }

      sub_10000665C(v36);
      v20 = *a2;
      *(v20 + 2) = v19 + 1;
      v21 = &v20[16 * v19];
      *(v21 + 4) = v13;
      *(v21 + 5) = v15;
      sub_10000665C(v35);
    }

    else
    {
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      sub_1000068B0(v32, &qword_10015EF90, &qword_100116200);
      strcpy(v35, "CustomType: ");
      BYTE5(v35[1]) = 0;
      HIWORD(v35[1]) = -5120;
      sub_100018544(v36, v36[3]);
      swift_getDynamicType();
      v22._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v22);

      v23 = v35[0];
      v24 = v35[1];
      v25 = *a2;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_1000C4E44(0, *(v25 + 2) + 1, 1, v25);
        *a2 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        *a2 = sub_1000C4E44((v27 > 1), v28 + 1, 1, v25);
      }

      sub_10000665C(v36);
      v29 = *a2;
      *(v29 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v23;
      *(v30 + 5) = v24;
    }
  }

  return sub_1000068B0(v8, &qword_10015EF00, &qword_1001160C8);
}

void sub_1000B7944(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10004DED0(&unk_10015EF60, &unk_1001148B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103D0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x8000000100124500;
  *(inited + 48) = String._bridgeToObjectiveC()();
  strcpy((inited + 56), "navigationPath");
  *(inited + 71) = -18;
  *(inited + 72) = String._bridgeToObjectiveC()();
  sub_1000BA614(inited, &qword_10015EF78, &qword_1001161C8);
  swift_setDeallocating();
  sub_10004DED0(&qword_10015DE28, &qword_1001161C0);
  swift_arrayDestroy();
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000659C(v9, qword_100169658);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_100025CF0(a1, a2, &v15);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_100025CF0(a3, a4, &v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "Posting Navigation Event for unsupported action, selectedSidebarItemIdentifier: '%{public}s', navigationPath: '%{public}s'", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = String._bridgeToObjectiveC()();
  sub_100008294(0, &qword_10015EF70, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_1000B7C90(Swift::Int a1)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.removeLast(_:)(a1);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B7DD0()
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B7F38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100107D90(a1, a2);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B80A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100107D90(a1, a2);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000B8210()
{
  v1 = type metadata accessor for NavigationPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  swift_getKeyPath();
  v9[1] = v6;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  LOBYTE(v7) = NavigationPath.isEmpty.getter();
  (*(v2 + 8))(v5, v1);
  return v7 & 1;
}

uint64_t sub_1000B8390()
{
  v1 = type metadata accessor for NavigationPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  swift_getKeyPath();
  v10[1] = v6;
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  v8 = NavigationPath.count.getter();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_1000B85C4()
{
  v1 = type metadata accessor for NavigationPath();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  NavigationPath.init()();
  return sub_1000A7C70(v4);
}

void sub_1000B863C()
{
  v1 = *v0;
  memset(v2, 0, sizeof(v2));
  v3 = 6;
  sub_1000A57A4(v2);
}

uint64_t sub_1000B867C(uint64_t a1)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  (*(v8 + 16))(v6, a1);
  return sub_1000A7C70(v6);
}

uint64_t sub_1000B8744@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

char *sub_1000B883C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&unk_10015ED80, &qword_100115FC0);
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

unint64_t sub_1000B8930(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000B8AB8(a1, a2, v6);
}

unint64_t sub_1000B89A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10004DED0(&unk_10015EF50, &qword_100116190);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000B8B70(a1, v4);
}

unint64_t sub_1000B8A24(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000B8C58(a1, v4);
}

unint64_t sub_1000B8AB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000B8B70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004DED0(&unk_10015EF50, &qword_100116190);
      v7 = *(*(v2 + 48) + 8 * v4);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000B8C58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1000B8D5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10004DED0(&unk_10015EEB0, &unk_100116060);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1000069D8(v28, &v42);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000B902C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10004DED0(&qword_10015EF48, &qword_100116188);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1000B92CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for SettingsSearchResultItem();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000068B0(v25, &unk_10015EFF0, &unk_100116270);
  }

  if (v18 < 1)
  {
    return sub_1000068B0(v25, &unk_10015EFF0, &unk_100116270);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1000068B0(v25, &unk_10015EFF0, &unk_100116270);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000B9468(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000B9624(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000B97D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000B8930(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000B8D5C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000B8930(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000B9964();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1000BAD20(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

void *sub_1000B9964()
{
  v1 = v0;
  sub_10004DED0(&unk_10015EEB0, &unk_100116060);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1000069D8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_1000B9B18()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListItemModel();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v2 - 8);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DED0(&qword_10015EF40, &qword_100116180);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 40 * v20;
        v22 = *(v5 + 56);
        v23 = *(v5 + 48) + 40 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = *(v23 + 24);
        v28 = v38;
        v29 = *(v39 + 72) * v20;
        v30 = *(v23 + 32);
        sub_10000822C(v22 + v29, v38, type metadata accessor for PrimarySettingsListItemModel);
        v31 = v40;
        v32 = *(v40 + 48) + v21;
        *v32 = v24;
        *(v32 + 8) = v25;
        *(v32 + 16) = v26;
        *(v32 + 24) = v27;
        *(v32 + 32) = v30;
        v33 = v28;
        v5 = v37;
        sub_100030854(v33, *(v31 + 56) + v29, type metadata accessor for PrimarySettingsListItemModel);
        result = sub_100029920(v24, v25, v26, v27, v30);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        v7 = v40;
        goto LABEL_18;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1000B9DA8()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListSectionModel();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DED0(&qword_10015EF38, &qword_100116178);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 24 * v20;
        v22 = *(v5 + 48) + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v32;
        v26 = *(v33 + 72) * v20;
        v27 = *(v22 + 16);
        sub_10000822C(*(v5 + 56) + v26, v32, type metadata accessor for PrimarySettingsListSectionModel);
        v28 = v34;
        v29 = *(v34 + 48) + v21;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v27;
        sub_100030854(v25, *(v28 + 56) + v26, type metadata accessor for PrimarySettingsListSectionModel);
        result = sub_100025974(v23, v24, v27);
        v15 = v35;
      }

      while (v35);
    }

    v18 = v11;
    v7 = v34;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1000BA020()
{
  v1 = v0;
  sub_10004DED0(&qword_10015EF48, &qword_100116188);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1000BA1B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000BA2A4;

  return v6(v2 + 32);
}

uint64_t sub_1000BA2A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1000BA3B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015EF48, &qword_100116188);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000B8930(v5, v6);
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

uint64_t sub_1000BA4BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000BA4EC()
{
  v1 = *(type metadata accessor for SettingsAppDetailContent(0) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1000ACA48(v6, v7, (v0 + v2), v0 + v5, v8);
}

unint64_t sub_1000BA614(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10004DED0(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1000B8930(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1000BA710(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015EFB8, &qword_100116228);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100059CA0(v4, &v11, &unk_10015EFC0, &qword_100116230);
      v5 = v11;
      result = sub_1000B8A24(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001EFEC(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1000BA838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015C8F0, &qword_100112B58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100059CA0(v4, v13, &qword_10015EFA8, &qword_100116218);
      result = sub_100017DC0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10001EFEC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1000BA974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for URLQueryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

BOOL sub_1000BAABC(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v8 == 255)
  {
    if (v13 == 255)
    {
      goto LABEL_7;
    }

LABEL_6:
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    sub_100031DF8(*a1, v4, v7, v6, v8);
    sub_100031DF8(v10, v9, v12, v11, v13);
    sub_100032660(v5, v4, v15, v16, v8);
    sub_100032660(v10, v9, v12, v11, v13);
    return 1;
  }

  if (v13 == 255)
  {
    goto LABEL_6;
  }

  v21.i64[0] = *a2;
  v21.i64[1] = v9;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v19[0] = v5;
  v19[1] = v4;
  v19[2] = v7;
  v19[3] = v6;
  v20 = v8;
  if (sub_10002BB48(v19, &v21))
  {
LABEL_7:
    v17 = type metadata accessor for SettingsAppDetailContent(0);
    return !sub_100032BF8(a1 + *(v17 + 20), a2 + *(v17 + 20));
  }

  return 1;
}

uint64_t sub_1000BABF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsAppDetailContent(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BAC94()
{
  v1 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000B295C(v0 + v2);
}

uint64_t sub_1000BAD7C()
{
  v1 = *(type metadata accessor for SettingsAppDetailContent(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v0 + 16);
  v8 = *(v0 + v6);

  return sub_1000B1308(v7, v0 + v2, v0 + v5, v8, v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000BAEA4()
{
  v1 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000AF878(v4, v0 + v2, v5, v6);
}

uint64_t sub_1000BAF5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SettingsURLDestination(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000ACE4;

  return sub_1000B1C14(a1, v10, v11, v12, v1 + v6, v13, v14, v1 + v9);
}

void sub_1000BB0DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000A7760(v2);
  *(v1 + 32) = v2;
}

void sub_1000BB12C(void *a1)
{
  v3 = *(type metadata accessor for EngagementLinkData() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000B32DC(a1, v4, v5);
}

uint64_t sub_1000BB1A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004DED0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000BB208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000A924;

  return sub_1000B7430(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000BB2EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BB33C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000ACE4;

  return sub_1000B6E24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *sub_1000BB418(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000BB47C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[4];
  sub_100018544(v1, v1[3]);
  return sub_1000B7120();
}

void sub_1000BB4C4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = qword_10015AAA0;
    v10 = a2;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_10000659C(v11, qword_100169658);
    (*(v5 + 16))(v8, a1, v4);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = v12;
      v16 = v15;
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100018684(&qword_10015E918, &type metadata accessor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v10;
      v20 = v19;
      (*(v5 + 8))(v8, v4);
      v21 = sub_100025CF0(v17, v20, aBlock);
      v10 = v18;

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Received Finish Setup Redirect with url: %{private,mask.hash}s", v16, 0x16u);
      sub_10000665C(v36);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v26 = [objc_allocWithZone(BFFFinishSetupViewController) init];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v10;
    aBlock[4] = sub_1000BB9BC;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_1001508E8;
    v31 = _Block_copy(aBlock);
    v32 = v10;

    [v26 processURL:v29 completion:v31];
    _Block_release(v31);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Presenting Finish Setup Modal.", v35, 2u);
    }

    [v32 presentViewController:v26 animated:1 completion:0];
  }

  else
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000659C(v22, qword_100169658);
    v37 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v37, v23, "No hostingController available for finish setup presentation.", v24, 2u);
    }

    v25 = v37;
  }
}

uint64_t sub_1000BBA68(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7055776F6C6C6F66;
    v6 = 0x656D656761676E65;
    v7 = 0xD000000000000012;
    if (a1 != 8)
    {
      v7 = 0x6461526F54706174;
    }

    if (a1 != 7)
    {
      v6 = v7;
    }

    if (a1 == 5)
    {
      v5 = 0xD000000000000020;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0xD000000000000018;
    if (a1 != 3)
    {
      v2 = 0xD000000000000024;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000BBBF8()
{
  result = qword_10015F000;
  if (!qword_10015F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F000);
  }

  return result;
}

unint64_t sub_1000BBC50()
{
  result = qword_10015F008;
  if (!qword_10015F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F008);
  }

  return result;
}

uint64_t sub_1000BBCA4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 10;
  }

  if (a1 == 0xD000000000000016 && 0x80000001001246E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x8000000100121660 == a2)
  {

    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 1;
  }

  else
  {
    return 10;
  }
}

void sub_1000BBDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000BBE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AppleIDSignInView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v17 = Binding.wrappedValue.getter();
  if (HIBYTE(v20) == 10 || HIBYTE(v20) != a4)
  {
    v18 = 1;
  }

  else
  {
    a5(v17);
    (*(v13 + 32))(a6, v16, v12);
    v18 = 0;
  }

  return (*(v13 + 56))(a6, v18, 1, v12);
}

uint64_t sub_1000BBF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  v14 = sub_10004DED0(a6, a7);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v19 = Binding.wrappedValue.getter();
  if (HIBYTE(v22) == 10 || HIBYTE(v22) != a4)
  {
    v20 = 1;
  }

  else
  {
    a5(v19);
    (*(v15 + 32))(a8, v18, v14);
    v20 = 0;
  }

  return (*(v15 + 56))(a8, v20, 1, v14);
}

uint64_t sub_1000BC0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, void (*a6)(char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v31 = a6;
  v32 = a5;
  v35 = a8;
  v12 = type metadata accessor for AMSEngagementSheet();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  __chkstk_darwin(v12);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v28 - v17;
  v19 = type metadata accessor for EngagementLinkData();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v38 = a3;
  v39 = a4;
  sub_100059CA0(a1, v18, &qword_10015EB40, &qword_1001161A0);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    sub_100018848(v18, v23, type metadata accessor for EngagementLinkData);
    sub_10004DED0(&qword_10015F388, &qword_100116680);
    Binding.wrappedValue.getter();
    if (v36 == 10)
    {
      v25 = v35;
    }

    else
    {
      v25 = v35;
      if (v36 == v32)
      {
        v26 = v29;
        v31(v23);
        sub_1000186CC(v23, type metadata accessor for EngagementLinkData);
        sub_100018848(v26, v25, type metadata accessor for AMSEngagementSheet);
        v24 = 0;
        return (*(v33 + 56))(v25, v24, 1, v34);
      }
    }

    sub_1000186CC(v23, type metadata accessor for EngagementLinkData);
    v24 = 1;
    return (*(v33 + 56))(v25, v24, 1, v34);
  }

  sub_1000068B0(v18, &qword_10015EB40, &qword_1001161A0);
  v24 = 1;
  v25 = v35;
  return (*(v33 + 56))(v25, v24, 1, v34);
}

uint64_t sub_1000BC400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_10004DED0(&qword_10015F348, &unk_100116648);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v17 = Binding.wrappedValue.getter();
  if (HIBYTE(v20) == 10 || HIBYTE(v20) != a4)
  {
    v18 = 1;
  }

  else
  {
    a5(v17);
    sub_1000A4CB8(v16, a6, &qword_10015F348, &unk_100116648);
    v18 = 0;
  }

  return (*(v13 + 56))(a6, v18, 1, v12);
}

uint64_t sub_1000BC574(uint64_t a1, uint64_t a2, char a3, char a4, void (*a5)(uint64_t))
{
  v20 = a5;
  v9 = sub_10004DED0(&qword_10015F390, &qword_1001166C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  v13 = sub_10004DED0(&qword_10015F320, &qword_100116638);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  v17 = Binding.wrappedValue.getter();
  if (v21 == 10 || v21 != a4)
  {
    *v12 = static Color.red.getter();
    swift_storeEnumTagMultiPayload();
    sub_10000BF00();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v20(v17);
    sub_100059CA0(v16, v12, &qword_10015F320, &qword_100116638);
    swift_storeEnumTagMultiPayload();
    sub_10000BF00();
    _ConditionalContent<>.init(storage:)();
    return sub_1000068B0(v16, &qword_10015F320, &qword_100116638);
  }
}

uint64_t sub_1000BC780()
{
  v0 = sub_10004DED0(&qword_10015F4C8, &qword_100116850);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_10004DED0(&qword_10015F1D8, &qword_1001164F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10001FAF0(&v10 - v6);
  static ToolbarDefaultItemKind.sidebarToggle.getter();
  v8 = type metadata accessor for ToolbarDefaultItemKind();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  sub_1000C2E98();
  View.toolbar(removing:)();
  sub_1000068B0(v3, &qword_10015F4C8, &qword_100116850);
  return sub_1000068B0(v7, &qword_10015F1D8, &qword_1001164F8);
}

uint64_t sub_1000BC904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10004DED0(&qword_10015F3D8, &qword_100116788);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v38 = &v30 - v5;
  v6 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = a1 + *(type metadata accessor for SettingsNavigationSplitView() + 40);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v7 + 8))(v10, v6);
  v40 = a1;
  v37 = sub_10004DED0(&qword_10015F3E0, &qword_100116790);
  v36 = sub_100052374(&qword_10015F3E8, &qword_100116798);
  v35 = type metadata accessor for SettingsPaneRecipe();
  v34 = sub_100052374(&qword_10015F3F0, &qword_1001167A0);
  v33 = sub_100052374(&qword_10015F3F8, &qword_1001167A8);
  v32 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v31 = sub_100052374(&qword_10015F400, &qword_1001167B0);
  v30 = sub_100052374(&qword_10015F408, &qword_1001167B8);
  v12 = type metadata accessor for SettingsAnyViewRecipe();
  v13 = sub_100052374(&qword_10015F410, &qword_1001167C0);
  v14 = sub_100052374(&qword_10015F418, &qword_1001167C8);
  v15 = type metadata accessor for PreferencesControllerRecipe();
  v16 = sub_100052374(&qword_10015F420, &qword_1001167D0);
  v17 = sub_1000525A0(&qword_10015F428, &qword_10015F418, &qword_1001167C8);
  v18 = sub_10000A568(&qword_10015EFA0, &type metadata accessor for PreferencesControllerRecipe);
  v19 = sub_1000525A0(&qword_10015F430, &qword_10015F420, &qword_1001167D0);
  v41 = v14;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_10000A568(&qword_10015F438, &type metadata accessor for SettingsAnyViewRecipe);
  v22 = sub_1000525A0(&qword_10015F440, &qword_10015F410, &qword_1001167C0);
  v41 = v30;
  v42 = v12;
  v43 = v13;
  v44 = OpaqueTypeConformance2;
  v45 = v21;
  v46 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_10000A568(&qword_10015EF98, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe);
  v25 = sub_1000525A0(&qword_10015F448, &qword_10015F400, &qword_1001167B0);
  v41 = v33;
  v42 = v32;
  v43 = v31;
  v44 = v23;
  v45 = v24;
  v46 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_10000A568(&qword_10015E4D0, &type metadata accessor for SettingsPaneRecipe);
  v28 = sub_1000525A0(&qword_10015F450, &qword_10015F3F0, &qword_1001167A0);
  v41 = v36;
  v42 = v35;
  v43 = v34;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(path:root:)();
}

uint64_t sub_1000BCDEC(void *a1)
{
  v1 = a1[4];
  sub_100018544(a1, a1[3]);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    NavigationPath.append<A>(_:)();
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000BCF74()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NavigationPath.init()();
    sub_1000A7C70(v3);
  }

  return result;
}

uint64_t sub_1000BD01C()
{
  v0 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  memset(v2, 0, sizeof(v2));
  v3 = 6;
  sub_1000A57A4(v2);
}

uint64_t sub_1000BD094(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EF28, &qword_100116590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100059CA0(a1, &v6 - v4, &qword_10015EF28, &qword_100116590);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_1000BD13C(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

void sub_1000BD204(char *a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v3 = sub_100010CD0();
  v4 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation;
  swift_beginAccess();
  v5 = *&v3[v4];
  if (v5)
  {
    v6 = v5;

    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    aBlock[4] = sub_1000C4354;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_100150E00;
    v9 = _Block_copy(aBlock);

    [v6 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  else
  {
  }
}

uint64_t sub_1000BD39C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WithCurrentHostingControllerAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2 + *(type metadata accessor for SettingsNavigationSplitView() + 28);
  sub_1000C3560(&qword_10015B0D8, &qword_10010FB60, &type metadata accessor for WithCurrentHostingControllerAction, v8);
  v12 = a2;
  v13 = a1;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000BD4C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_1000BB4C4(a3, a1);
}

uint64_t sub_1000BD544(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_100017DC0(v12), (v5 & 1) == 0))
  {

    sub_100017E04(v12);
LABEL_9:
    v14 = 0u;
    v15 = 0u;
    return sub_1000068B0(&v14, &qword_10015C8D0, &unk_100116750);
  }

  sub_10001EE30(*(v3 + 56) + 32 * v4, &v14);
  sub_100017E04(v12);

  if (!*(&v15 + 1))
  {
    return sub_1000068B0(&v14, &qword_10015C8D0, &unk_100116750);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = v12[0];
    v8 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
    sub_10004DED0(&qword_10015F018, &qword_100116398);
    Bindable.wrappedValue.getter();
    memset(v12, 0, sizeof(v12));
    v13 = 6;
    sub_1000A57A4(v12);

    Bindable.wrappedValue.getter();
    v9 = *(v14 + 16);

    if (*(v9 + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v14 = v9;
      sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    Bindable.wrappedValue.getter();
    v11 = *(v14 + 16);

    sub_1000EE9F4(v7, *(&v7 + 1));
  }

  return result;
}

uint64_t sub_1000BD834()
{
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_100169700);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Setting up state for scroll search test", v3, 2u);
  }

  v4 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  memset(v10, 0, sizeof(v10));
  v11 = 6;
  sub_1000A57A4(v10);

  Bindable.wrappedValue.getter();
  v5 = *(v9 + 16);

  if (*(v5 + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v9 = v5;
    sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v7 = *(v9 + 16);

  sub_1000EE9F4(0x6C6172656E6547, 0xE700000000000000);
}

uint64_t sub_1000BDAD4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000659C(v6, qword_100169700);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 2u);
  }

  v10 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_100010CD0();

  v12[0] = a4;
  memset(&v12[1], 0, 24);
  v13 = 6;
  sub_1000954AC(v12);
}

uint64_t sub_1000BDC28()
{
  sub_10004DED0(&qword_10015F3D0, &qword_100116720);
  sub_100052374(&qword_10015B028, &unk_100113980);
  sub_1000822CC();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000BDD24(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationSplitView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_100020E44(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsNavigationSplitView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_100018848(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SettingsNavigationSplitView);
  Button.init(action:label:)();
  sub_1000822CC();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  View.navigationBarItems<A>(trailing:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000BDF78()
{
  sub_10004DED0(&qword_10015F3B0, &qword_1001166F8);
  sub_100052374(&qword_10015F3B8, &qword_100116700);
  sub_100052374(&qword_10015B028, &unk_100113980);
  sub_100052374(&qword_10015F3C0, &qword_100116708);
  sub_1000C4000();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000BE0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v45 = a2;
  v2 = type metadata accessor for SettingsNavigationSplitView();
  v41 = *(v2 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v2 - 8);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v39 = &v36 - v7;
  v8 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004DED0(&qword_10015F3C0, &qword_100116708);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = sub_10004DED0(&qword_10015F3B8, &qword_100116700);
  v19 = *(v18 - 8);
  v36 = v18;
  v37 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  (*(v9 + 104))(v12, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v8);
  v23 = sub_1000C4000();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v9 + 8))(v12, v8);
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  LOBYTE(v9) = v27;
  v46 = &type metadata for AboutSupervisedDeviceRepresentable;
  v47 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.navigationBarTitle(_:)();
  sub_100009680(v24, v26, v9 & 1);

  (*(v14 + 8))(v17, v13);
  v29 = v38;
  sub_100020E44(v42, v38, type metadata accessor for SettingsNavigationSplitView);
  v30 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v31 = swift_allocObject();
  sub_100018848(v29, v31 + v30, type metadata accessor for SettingsNavigationSplitView);
  v32 = v39;
  Button.init(action:label:)();
  v46 = v13;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  v33 = v36;
  v34 = v43;
  View.navigationBarItems<A>(trailing:)();
  (*(v44 + 8))(v32, v34);
  return (*(v37 + 8))(v22, v33);
}

uint64_t sub_1000BE660(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration()) init];
  swift_retain_n();

  return AppleIDSignInView.init(configuration:onSkip:completion:)(v2, sub_1000C3E5C, a1, sub_1000C3E7C, a1);
}

uint64_t sub_1000BE6FC(void *a1, char a2, uint64_t a3)
{
  v6 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v34 = &v32 - v8;
  v9 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v35 = a3;
  v14 = swift_projectBox();
  v15 = v10[2];
  v15(v13, v14, v9);
  Bindable.wrappedValue.getter();
  v16 = v10[1];
  v16(v13, v9);
  sub_1000A5000(v37);
  sub_10002698C(v37, v36);

  if ((a2 & 1) == 0)
  {
    v33 = a1;
    a1;
    if (*(AISAppleIDSignInResult.authResults.getter() + 16))
    {
      sub_1000B8930(0x495344746C414B41, 0xE900000000000044);
      v18 = v17;

      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (*(AISAppleIDSignInResult.authResults.getter() + 16))
    {
      sub_1000B8930(0x444953444B41, 0xE600000000000000);
      v20 = v19;

      if (v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    if (*(AISAppleIDSignInResult.authResults.getter() + 16))
    {
      sub_1000B8930(v32, v22);
      v24 = v23;

      if (v24)
      {
LABEL_13:
        v25 = type metadata accessor for TaskPriority();
        v26 = v34;
        (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
        type metadata accessor for MainActor();
        v27 = v35;

        v28 = static MainActor.shared.getter();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = &protocol witness table for MainActor;
        *(v29 + 32) = v27;
        v30 = v37[1];
        *(v29 + 40) = v37[0];
        *(v29 + 56) = v30;
        *(v29 + 72) = v38;
        sub_100094AF4(0, 0, v26, &unk_1001166F0, v29);
        sub_1000C3F2C(v33, 0);

        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_100026A04(v37);
    sub_1000C3F2C(v33, 0);
    goto LABEL_16;
  }

  sub_100026A04(v37);
LABEL_16:
  v15(v13, v14, v9);
  Bindable.wrappedValue.getter();
  v16(v13, v9);
  sub_1000951B0(0xAu);
}

uint64_t sub_1000BEAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  v6 = *(a5 + 16);
  *(v5 + 120) = *a5;
  *(v5 + 136) = v6;
  *(v5 + 49) = *(a5 + 32);
  v7 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  *(v5 + 152) = v7;
  v8 = *(v7 - 8);
  *(v5 + 160) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 176) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BEBFC, v11, v10);
}

uint64_t sub_1000BEBFC()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 49);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);

  v8 = swift_projectBox();
  (*(v4 + 16))(v2, v8, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v2, v3);
  v9 = *(v0 + 96);
  *(v0 + 32) = v12;
  *(v0 + 16) = v13;
  *(v0 + 48) = v5;
  sub_10002698C(v7, v0 + 56);
  sub_1000954AC(v0 + 16);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000BED18(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = swift_projectBox();
  (*(v4 + 16))(v7, v8, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  sub_1000951B0(a2);
}

uint64_t sub_1000BEE38()
{
  v0 = type metadata accessor for AppleAccountSignInSheet(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = swift_getKeyPath();
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  swift_storeEnumTagMultiPayload();
  v4 = (v3 + *(v0 + 20));
  *v4 = nullsub_1;
  v4[1] = 0;
  v6[1] = static Color.clear.getter();
  sub_10000A568(&qword_10015DCF8, type metadata accessor for AppleAccountSignInSheet);
  View.presentationBackground<A>(_:)();

  return sub_1000186CC(v3, type metadata accessor for AppleAccountSignInSheet);
}

uint64_t sub_1000BEF8C()
{
  v0 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v10 - v3;
  v5 = swift_projectBox();
  v6 = v1[2];
  v6(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v7 = v1[1];
  v7(v4, v0);
  v8 = *(v11 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
  if (v8)
  {
    *(v11 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController) = 0;
  }

  else
  {
  }

  v6(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v7(v4, v0);
  sub_1000951B0(0xAu);
}

uint64_t sub_1000BF114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v43 = a2;
  v41 = type metadata accessor for SettingsAnyPlatformViewControllerView();
  v36 = *(v41 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v41);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10004DED0(&qword_10015F398, &qword_1001166C8);
  v38 = *(v42 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v42);
  v37 = &v36 - v6;
  v40 = sub_10004DED0(&qword_10015F3A0, &qword_1001166D0);
  v7 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v9 = (&v36 - v8);
  v10 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v36 - v22;
  __chkstk_darwin(v21);
  v25 = &v36 - v24;
  v26 = swift_projectBox();
  (*(v11 + 16))(v14, v26, v10);
  Bindable.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v27 = *(v44 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
  v28 = v27;

  if (v27)
  {
    SettingsAnyPlatformViewControllerRecipe.init(_:)();
    (*(v16 + 32))(v25, v23, v15);
    (*(v16 + 16))(v20, v25, v15);
    SettingsAnyPlatformViewControllerView.init(platformViewControllerRecipe:)();
    v44 = static Color.clear.getter();
    v29 = sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView);
    v30 = v37;
    v31 = v41;
    View.presentationBackground<A>(_:)();

    (*(v36 + 8))(v4, v31);
    v32 = v38;
    v33 = v42;
    (*(v38 + 16))(v9, v30, v42);
    swift_storeEnumTagMultiPayload();
    v44 = v31;
    v45 = &type metadata for Color;
    v46 = v29;
    v47 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v32 + 8))(v30, v33);
    return (*(v16 + 8))(v25, v15);
  }

  else
  {
    *v9 = static Color.blue.getter();
    swift_storeEnumTagMultiPayload();
    v35 = sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView);
    v44 = v41;
    v45 = &type metadata for Color;
    v46 = v35;
    v47 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000BF6B8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SettingsApplicationDebugRoot();
  v13 = *(v2 - 8);
  v3 = *(v13 + 64);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 sf_isInternalInstall];

  if (v7)
  {
    *v5 = swift_getKeyPath();
    sub_10004DED0(&qword_10015D1B0, &qword_100114420);
    swift_storeEnumTagMultiPayload();
    v8 = v5 + *(v2 + 20);
    type metadata accessor for SettingsAppModel();
    sub_10000A568(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
    *v8 = Environment.init<A>(_:)();
    v8[8] = v9 & 1;
    sub_100018848(v5, a1, type metadata accessor for SettingsApplicationDebugRoot);
    return (*(v13 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v11 = *(v13 + 56);

    return v11(a1, 1, 1, v2);
  }
}

uint64_t sub_1000BF8C8()
{
  v0 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v14 - v2;
  v4 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = swift_projectBox();
  (*(v5 + 16))(v8, v9, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v10 = v14[1];
  v11 = type metadata accessor for EngagementLinkData();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
  swift_beginAccess();
  sub_1000BB1A0(v3, v10 + v12, &qword_10015EB40, &qword_1001161A0);
  swift_endAccess();
}

uint64_t sub_1000BFAB4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() bagForProfile:v8 profileVersion:v9];

  v11 = *(type metadata accessor for EngagementLinkData() + 24);
  v12 = type metadata accessor for AMSEngagementSheet();
  v13 = *(v12 + 24);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 16))(a2 + v13, &a1[v11], v14);
  *a2 = swift_getKeyPath();
  sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v12 + 20)) = v10;
  return result;
}

uint64_t sub_1000BFBD4@<X0>(char *a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - v12;
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  Button.init(action:label:)();
  Button.init(action:label:)();
  v16 = v3[2];
  v16(v10, v15, v2);
  v16(v7, v13, v2);
  v16(a1, v10, v2);
  v17 = sub_10004DED0(&qword_10015F380, &unk_100116670);
  v16(&a1[*(v17 + 48)], v7, v2);
  v18 = v3[1];
  v18(v13, v2);
  v18(v15, v2);
  v18(v7, v2);
  return (v18)(v10, v2);
}

uint64_t sub_1000BFE60()
{
  v0 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  if (qword_10015AB08 != -1)
  {
    swift_once();
  }

  v4 = qword_100169780;
  v5 = type metadata accessor for TapToRadarDraft();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
  swift_beginAccess();
  sub_1000BB1A0(v3, v4 + v6, &qword_10015E1D8, &unk_100115208);
  return swift_endAccess();
}

void sub_1000BFFB4()
{
  if (qword_10015AB08 != -1)
  {
    swift_once();
  }

  sub_10008DA10();
}

uint64_t sub_1000C0034@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015AB08 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = *(qword_100169780 + 16);
  v2 = *(qword_100169780 + 24);
  v3 = *(qword_100169780 + 32);
  v4 = *(qword_100169780 + 40);
  v5 = 0x8000000100124710;
  v6 = &_swiftEmptyArrayStorage;
  v7 = 0xD000000000000033;
  if (v4)
  {
    v7 = *(qword_100169780 + 16);
    v5 = *(qword_100169780 + 24);
    v8 = *(qword_100169780 + 32);
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v6 = *(qword_100169780 + 40);
  }

  *a1 = v7;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v6;

  return sub_10007AAFC(v1, v2, v3, v4);
}

uint64_t sub_1000C00EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_10004DED0(&qword_10015F220, &qword_100116520);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin(v3);
  v59 = &v55 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&qword_10015F4F0, &qword_100116900);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = sub_10004DED0(&qword_10015F4F8, &qword_100116908);
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v55 - v21;
  v23 = sub_10004DED0(&qword_10015F4D0, &qword_100116858);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v55 - v26;
  v28 = swift_projectBox();
  (*(v24 + 16))(v27, v28, v23);
  Bindable.wrappedValue.getter();
  (*(v24 + 8))(v27, v23);
  v29 = v64;
  swift_getKeyPath();
  v64 = v29;
  sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v27) = *(v29 + 16);

  if (v27 == 1)
  {
    __chkstk_darwin(v30);
    LocalizedStringKey.init(stringLiteral:)();
    v64 = Text.init(_:tableName:bundle:comment:)();
    v65 = v31;
    v66 = v32 & 1;
    v67 = v33;
    sub_10004DED0(&qword_10015B038, &qword_100116910);
    v55 = sub_100007108();
    Section<>.init(header:content:)();
    v34 = *(a1 + 16);
    v35 = *(a1 + 24);

    v36 = v22;
    if ((v35 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v37 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v56 + 8))(v9, v57);
    }

    v38 = SettingsZeroKeywordNavigationItemsProvider.recents.getter();

    v39 = *(v38 + 16);

    if (v39)
    {
      __chkstk_darwin(v40);
      LocalizedStringKey.init(stringLiteral:)();
      v64 = Text.init(_:tableName:bundle:comment:)();
      v65 = v41;
      v66 = v42 & 1;
      v67 = v43;
      Section<>.init(header:content:)();
      (*(v60 + 32))(v15, v20, v16);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v47 = v60;
    (*(v60 + 56))(v15, v44, 1, v16);
    v48 = *(v47 + 16);
    v48(v20, v22, v16);
    v49 = v58;
    sub_100059CA0(v15, v58, &qword_10015F4F0, &qword_100116900);
    v50 = v36;
    v51 = v59;
    v48(v59, v20, v16);
    v52 = sub_10004DED0(&qword_10015F500, &qword_100116918);
    sub_100059CA0(v49, v51 + *(v52 + 48), &qword_10015F4F0, &qword_100116900);
    sub_1000068B0(v15, &qword_10015F4F0, &qword_100116900);
    v53 = *(v47 + 8);
    v53(v50, v16);
    sub_1000068B0(v49, &qword_10015F4F0, &qword_100116900);
    v53(v20, v16);
    v46 = v63;
    sub_1000A4CB8(v51, v63, &qword_10015F220, &qword_100116520);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v46 = v63;
  }

  return (*(v61 + 56))(v46, v45, 1, v62);
}

uint64_t sub_1000C0884(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = (*(v5 + 8))(v8, v4);
  }

  v12 = a2(v10);

  v14[1] = v12;
  sub_10004DED0(&qword_10015B058, &qword_100116920);
  type metadata accessor for URL();
  type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  sub_1000525A0(&qword_10015B060, &qword_10015B058, &qword_100116920);
  sub_10000A568(&qword_10015B048, type metadata accessor for SettingsSearchZeroKeywordListRecentItem);
  sub_10000A568(&qword_10015B068, &type metadata accessor for SettingsNavigationEventRecord);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000C0AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem();
  v5 = v4[7];
  v6 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for SettingsAppModel();
  sub_10000A568(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v7 & 1;
  v8 = v4[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B070, &qword_10010FA60);
  swift_storeEnumTagMultiPayload();
  v9 = v4[6];
  *(a2 + v9) = swift_getKeyPath();
  sub_10004DED0(&qword_10015B078, &unk_100113E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000C0C4C(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_10004DED0(&qword_10015F4D0, &qword_100116858);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v9;
  v1[14] = v8;

  return _swift_task_switch(sub_1000C0DA8, v9, v8);
}

uint64_t sub_1000C0DA8()
{
  v1 = *(v0 + 88);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000C0E74;
  v3 = *(v0 + 88);

  return sub_100044BC4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000C0E74()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 112);
  v9 = *(v2 + 104);
  if (v0)
  {
    v10 = sub_1000C13B0;
  }

  else
  {
    v10 = sub_1000C100C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000C100C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_projectBox();
  v6 = *(v2 + 16);
  v6(v1, v5, v4);
  Bindable.wrappedValue.getter();
  v7 = *(v2 + 8);
  v7(v1, v4);
  v0[17] = v0[2];
  v6(v1, v5, v4);
  Bindable.wrappedValue.getter();
  v7(v1, v4);
  v8 = v0[3];
  swift_getKeyPath();
  v0[4] = v8;
  sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v0[18] = v10;

  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_1000C11DC;

  return sub_1000EF1AC(v9, v10);
}

uint64_t sub_1000C11DC()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v8 = *v0;

  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return _swift_task_switch(sub_1000C133C, v6, v5);
}

uint64_t sub_1000C133C()
{
  v1 = v0[12];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000C13B0()
{
  v1 = v0[12];

  if (qword_10015AAA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169670);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Search cancelled.", v7, 2u);
  }

  v8 = v0[11];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000C14EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v64 = a2;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015F458, &qword_1001167D8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = sub_10004DED0(&qword_10015F460, &qword_1001167E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v56 = sub_10004DED0(&qword_10015F418, &qword_1001167C8);
  v16 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v18 = &v55 - v17;
  v57 = sub_10004DED0(&qword_10015F408, &qword_1001167B8);
  v59 = *(v57 - 8);
  v19 = *(v59 + 64);
  __chkstk_darwin(v57);
  v65 = &v55 - v20;
  v21 = sub_10004DED0(&qword_10015F3F8, &qword_1001167A8);
  v22 = *(v21 - 8);
  v60 = v21;
  v61 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v66 = &v55 - v24;
  v25 = sub_10004DED0(&qword_10015F3E8, &qword_100116798);
  v26 = *(v25 - 8);
  v62 = v25;
  v63 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v58 = &v55 - v28;
  sub_1000C1E5C(v10);
  (*(v3 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v2);
  v29 = sub_1000C4368();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v6, v2);
  sub_1000068B0(v10, &qword_10015F458, &qword_1001167D8);
  v67 = v7;
  v68 = v29;
  swift_getOpaqueTypeConformance2();
  View.navigationBarHidden(_:)();
  (*(v12 + 8))(v15, v11);
  LODWORD(v10) = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v30 = v67;
  swift_getKeyPath();
  v67 = v30;
  sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  v32 = v56;
  sub_100020E44(v30 + v31, &v18[*(v56 + 52)], type metadata accessor for SettingsAppDetailContent);

  v33 = type metadata accessor for PreferencesControllerRecipe();
  v34 = sub_10004DED0(&qword_10015F420, &qword_1001167D0);
  v35 = sub_1000525A0(&qword_10015F428, &qword_10015F418, &qword_1001167C8);
  v36 = sub_10000A568(&qword_10015EFA0, &type metadata accessor for PreferencesControllerRecipe);
  v55 = &protocol conformance descriptor for IDView<A, B>;
  v37 = sub_1000525A0(&qword_10015F430, &qword_10015F420, &qword_1001167D0);
  View.navigationDestination<A, B>(for:destination:)();
  sub_1000068B0(v18, &qword_10015F418, &qword_1001167C8);
  v38 = type metadata accessor for SettingsAnyViewRecipe();
  v39 = sub_10004DED0(&qword_10015F410, &qword_1001167C0);
  v67 = v32;
  v68 = v33;
  v69 = v34;
  v70 = v35;
  v71 = v36;
  v72 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_10000A568(&qword_10015F438, &type metadata accessor for SettingsAnyViewRecipe);
  v42 = sub_1000525A0(&qword_10015F440, &qword_10015F410, &qword_1001167C0);
  v43 = v65;
  v44 = v57;
  View.navigationDestination<A, B>(for:destination:)();
  (*(v59 + 8))(v43, v44);
  v45 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v46 = sub_10004DED0(&qword_10015F400, &qword_1001167B0);
  v67 = v44;
  v68 = v38;
  v69 = v39;
  v70 = OpaqueTypeConformance2;
  v71 = v41;
  v72 = v42;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_10000A568(&qword_10015EF98, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe);
  v49 = sub_1000525A0(&qword_10015F448, &qword_10015F400, &qword_1001167B0);
  v50 = v58;
  v51 = v60;
  v52 = v66;
  View.navigationDestination<A, B>(for:destination:)();
  (*(v61 + 8))(v52, v51);
  type metadata accessor for SettingsPaneRecipe();
  v66 = sub_10004DED0(&qword_10015F3F0, &qword_1001167A0);
  v67 = v51;
  v68 = v45;
  v69 = v46;
  v70 = v47;
  v71 = v48;
  v72 = v49;
  swift_getOpaqueTypeConformance2();
  sub_10000A568(&qword_10015E4D0, &type metadata accessor for SettingsPaneRecipe);
  sub_1000525A0(&qword_10015F450, &qword_10015F3F0, &qword_1001167A0);
  v53 = v62;
  View.navigationDestination<A, B>(for:destination:)();
  return (*(v63 + 8))(v50, v53);
}

uint64_t sub_1000C1E5C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v62 = sub_10004DED0(&qword_10015F4A8, &qword_100116828);
  v56 = *(v62 - 8);
  v1 = *(v56 + 64);
  __chkstk_darwin(v62);
  v55 = &v50 - v2;
  v57 = sub_10004DED0(&qword_10015F4B0, &qword_100116830);
  v3 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v59 = &v50 - v4;
  v66 = sub_10004DED0(&qword_10015F498, &qword_1001167F8);
  v5 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v61 = &v50 - v6;
  v60 = type metadata accessor for PreferencesControllerView();
  v54 = *(v60 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v60);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SettingsAnyPlatformViewControllerView();
  v52 = *(v58 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v58);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10004DED0(&qword_10015F4B8, &qword_100116838);
  v11 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v65 = &v50 - v12;
  v13 = sub_10004DED0(&qword_10015F4C0, &unk_100116840);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v50 - v15);
  v64 = sub_10004DED0(&qword_10015F488, &qword_1001167F0);
  v17 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v19 = &v50 - v18;
  v20 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for SettingsAppDetailContent(0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v30 = v68;
  swift_getKeyPath();
  v68 = v30;
  sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent;
  swift_beginAccess();
  sub_100020E44(v30 + v31, v28, type metadata accessor for SettingsAppDetailContent);

  sub_100020E44(&v28[*(v25 + 28)], v23, type metadata accessor for SettingsAppDetailContent.ContentType);
  sub_1000186CC(v28, type metadata accessor for SettingsAppDetailContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = *(v23 + *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48));
      v39 = v55;
      dispatch thunk of SettingsExperienceContentCoordinator.requestRootView()();
      v40 = v56;
      v41 = v62;
      (*(v56 + 16))(v59, v39, v62);
      swift_storeEnumTagMultiPayload();
      sub_10000A568(&qword_10015F4A0, &type metadata accessor for PreferencesControllerView);
      swift_getOpaqueTypeConformance2();
      v42 = v61;
      _ConditionalContent<>.init(storage:)();
      sub_100059CA0(v42, v65, &qword_10015F498, &qword_1001167F8);
      swift_storeEnumTagMultiPayload();
      sub_10001878C();
      sub_1000C4478();
      _ConditionalContent<>.init(storage:)();

      sub_1000068B0(v42, &qword_10015F498, &qword_1001167F8);
      (*(v40 + 8))(v39, v41);
      v43 = type metadata accessor for SettingsPaneRecipe();
      return (*(*(v43 - 8) + 8))(v23, v43);
    }

    else
    {
      v49 = [objc_opt_self() systemGroupedBackgroundColor];
      *v16 = Color.init(_:)();
      swift_storeEnumTagMultiPayload();
      sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView);

      _ConditionalContent<>.init(storage:)();
      sub_100059CA0(v19, v65, &qword_10015F488, &qword_1001167F0);
      swift_storeEnumTagMultiPayload();
      sub_10001878C();
      sub_1000C4478();
      _ConditionalContent<>.init(storage:)();

      return sub_1000068B0(v19, &qword_10015F488, &qword_1001167F0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v44 = *v23;

    v45 = v53;
    PreferencesControllerView.init(preferencesControllerRepresentableModel:)();
    v46 = v54;
    v47 = v60;
    (*(v54 + 16))(v59, v45, v60);
    swift_storeEnumTagMultiPayload();
    sub_10000A568(&qword_10015F4A0, &type metadata accessor for PreferencesControllerView);
    swift_getOpaqueTypeConformance2();
    v48 = v61;
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v48, v65, &qword_10015F498, &qword_1001167F8);
    swift_storeEnumTagMultiPayload();
    sub_10001878C();
    sub_1000C4478();
    _ConditionalContent<>.init(storage:)();

    sub_1000068B0(v48, &qword_10015F498, &qword_1001167F8);
    return (*(v46 + 8))(v45, v47);
  }

  else
  {
    v33 = *v23;

    v34 = v51;
    SettingsAnyPlatformViewControllerView.init(platformViewControllerModel:)();
    v35 = v52;
    v36 = v58;
    (*(v52 + 16))(v16, v34, v58);
    swift_storeEnumTagMultiPayload();
    sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView);
    _ConditionalContent<>.init(storage:)();
    sub_100059CA0(v19, v65, &qword_10015F488, &qword_1001167F0);
    swift_storeEnumTagMultiPayload();
    sub_10001878C();
    sub_1000C4478();
    _ConditionalContent<>.init(storage:)();

    sub_1000068B0(v19, &qword_10015F488, &qword_1001167F0);
    return (*(v35 + 8))(v34, v36);
  }
}

uint64_t sub_1000C291C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = SettingsAnyViewRecipe.view.getter();
  v5 = *(sub_10004DED0(&qword_10015F410, &qword_1001167C0) + 52);
  v6 = type metadata accessor for SettingsAnyViewRecipe();
  result = (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  *a2 = v4;
  return result;
}

uint64_t sub_1000C2A20@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(char *)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = *(v12 + 16);
  v16(&v19 - v14, a1, v11);
  a3(v15);
  v17 = sub_10004DED0(a4, a5);
  return (v16)(a6 + *(v17 + 52), a1, v11);
}

uint64_t sub_1000C2B40(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationSplitView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100020E44(a1, v5, type metadata accessor for SettingsNavigationSplitView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100018848(v5, v13 + v12, type metadata accessor for SettingsNavigationSplitView);
  sub_100094AF4(0, 0, v9, &unk_100116718, v13);
}

uint64_t sub_1000C2D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C2DB8, v6, v5);
}

uint64_t sub_1000C2DB8()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  v4 = v0[2];
  sub_100010CD0();

  sub_1000951B0(0xAu);

  v5 = v0[1];

  return v5();
}

unint64_t sub_1000C2E98()
{
  result = qword_10015F1E0;
  if (!qword_10015F1E0)
  {
    sub_100052374(&qword_10015F1D8, &qword_1001164F8);
    sub_100052374(&qword_10015F1E8, &qword_100116500);
    sub_100052374(&qword_10015F1F0, &qword_100116508);
    sub_100052374(&qword_10015F1F8, &qword_100116510);
    sub_100052374(&qword_10015F200, &qword_100116518);
    type metadata accessor for PrimarySettingsList();
    sub_10000A568(&qword_10015F208, type metadata accessor for PrimarySettingsList);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000C310();
    swift_getOpaqueTypeConformance2();
    sub_1000525A0(&qword_10015F228, &qword_10015F230, &qword_100116528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F1E0);
  }

  return result;
}

void sub_1000C30C0(char *a1)
{
  v2 = *(*(type metadata accessor for SettingsNavigationSplitView() - 8) + 80);

  sub_1000BD204(a1);
}

uint64_t sub_1000C3148(void *a1)
{
  v2 = *(*(type metadata accessor for SettingsNavigationSplitView() - 8) + 80);

  return sub_1000BD544(a1);
}

unint64_t sub_1000C329C()
{
  result = qword_10015F280;
  if (!qword_10015F280)
  {
    sub_100052374(&qword_10015F160, &qword_100116480);
    sub_1000C3328();
    sub_10000BBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F280);
  }

  return result;
}

unint64_t sub_1000C3328()
{
  result = qword_10015F288;
  if (!qword_10015F288)
  {
    sub_100052374(&qword_10015F270, &qword_1001165D0);
    sub_100052374(&qword_10015F158, &qword_100116478);
    sub_100052374(&qword_10015F150, &qword_100116470);
    sub_100052374(&qword_10015F148, &qword_100116468);
    sub_100052374(&qword_10015F140, &qword_100116460);
    sub_100052374(&qword_10015F138, &qword_100116458);
    sub_1000525A0(&qword_10015F268, &qword_10015F138, &qword_100116458);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000BB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F288);
  }

  return result;
}

uint64_t sub_1000C3560@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004DED0(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100059CA0(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1000C3788()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10000A568(&qword_10015F4E0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000A568(&qword_10015F4E8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000C3918;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000C3918()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000C3AD4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000C3AD4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1000C3B6C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsNavigationSplitView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000C3CAC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000C3D0C()
{
  result = qword_10015F338;
  if (!qword_10015F338)
  {
    sub_100052374(&qword_10015F330, &qword_100116640);
    sub_10000C000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F338);
  }

  return result;
}

uint64_t sub_1000C3D98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10004DED0(&qword_10015EB40, &qword_1001161A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 25) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = v1 + v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *v7;
  v12 = *(v7 + 8);
  v13 = *(v7 + 17);
  v14 = *(v7 + 16);

  return sub_1000BC0F8(v1 + v4, v11, v12, v14, v13, v9, v10, a1);
}

uint64_t sub_1000C3E88()
{
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  Binding.transaction(_:)();
  Binding.wrappedValue.setter();
}

void sub_1000C3F2C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000C3F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000BEAE8(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_1000C4000()
{
  result = qword_10015F3C8;
  if (!qword_10015F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F3C8);
  }

  return result;
}

uint64_t sub_1000C406C(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsNavigationSplitView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000C2D20(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000C415C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_1000C41A4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 49);
  v6 = *(v1 + 48);
  return sub_1000C3E88();
}

uint64_t sub_1000C41C0()
{
  v1 = type metadata accessor for SettingsNavigationSplitView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = v1[7];
  sub_10004DED0(&qword_10015B0D8, &qword_10010FB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + v1[8]);

  v13 = v1[10];
  v14 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  (*(*(v14 - 8) + 8))(v5 + v13, v14);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000C4368()
{
  result = qword_10015F468;
  if (!qword_10015F468)
  {
    sub_100052374(&qword_10015F458, &qword_1001167D8);
    sub_1000C43EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F468);
  }

  return result;
}

unint64_t sub_1000C43EC()
{
  result = qword_10015F470;
  if (!qword_10015F470)
  {
    sub_100052374(&qword_10015F478, &qword_1001167E8);
    sub_10001878C();
    sub_1000C4478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F470);
  }

  return result;
}

unint64_t sub_1000C4478()
{
  result = qword_10015F490;
  if (!qword_10015F490)
  {
    sub_100052374(&qword_10015F498, &qword_1001167F8);
    sub_10000A568(&qword_10015F4A0, &type metadata accessor for PreferencesControllerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F490);
  }

  return result;
}

uint64_t sub_1000C4554()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000ACE4;

  return sub_1000C0C4C(v0);
}

uint64_t sub_1000C4690(uint64_t a1, uint64_t a2, void (***a3)(void *, uint64_t), unint64_t a4)
{
  v68 = a2;
  v8 = type metadata accessor for SettingsNavigationEventRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10004DED0(qword_10015F538, &qword_100116A98);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v66 = &v53 - v19;
  __chkstk_darwin(v18);
  v20 = &v53;
  v22 = &v53 - v21;
  v23 = (a4 >> 1);
  v24 = __OFSUB__(a4 >> 1, a3);
  v25 = (a4 >> 1) - a3;
  if (v24)
  {
    __break(1u);
    goto LABEL_21;
  }

  v67 = v12;
  v69 = v9;
  v70 = a1;
  v12 = *v4;
  v26 = *(*v4 + 16);
  v27 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = (v12[3] >> 1), v20 < v27))
  {
    if (v26 <= v27)
    {
      v30 = v26 + v25;
    }

    else
    {
      v30 = v26;
    }

    v12 = sub_100026144(isUniquelyReferenced_nonNull_native, v30, 1, v12, &qword_10015D5C8, &unk_100116AA0, &type metadata accessor for SettingsNavigationEventRecord);
    v20 = (v12[3] >> 1);
  }

  v31 = v12[2];
  v32 = v20 - v31;
  if (v23 == a3)
  {
    if (v25 <= 0)
    {
      v25 = 0;
      v20 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v32 < v25)
  {
    __break(1u);
    goto LABEL_26;
  }

  v33 = v12 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v31;
  result = swift_arrayInitWithCopy();
  if (v25 <= 0)
  {
LABEL_16:
    v20 = v23;
LABEL_17:
    if (v25 != v32)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v12;
      return result;
    }

LABEL_23:
    v65 = v20;
    v25 = v12[2];
    v27 = v69;
    v55 = *(v69 + 56);
    v56 = v69 + 56;
    v55(v22, 1, 1, v8);
    v32 = v66;
    sub_1000C56B4(v22, v66);
    v62 = *(v27 + 48);
    v63 = v27 + 48;
    if (v62(v32, 1, v8) == 1)
    {
LABEL_24:
      sub_1000C5724(v22);
      swift_unknownObjectRelease();
      result = sub_1000C5724(v32);
      goto LABEL_19;
    }

LABEL_26:
    v60 = (v27 + 32);
    v53 = (v27 + 8);
    v54 = (v27 + 16);
    v37 = v25;
    v57 = v17;
    do
    {
      sub_1000C5724(v32);
      v39 = v12[3];
      v40 = v39 >> 1;
      v41 = v37;
      if ((v39 >> 1) < v37 + 1)
      {
        v12 = sub_100026144(v39 > 1, v37 + 1, 1, v12, &qword_10015D5C8, &unk_100116AA0, &type metadata accessor for SettingsNavigationEventRecord);
        v40 = v12[3] >> 1;
      }

      v42 = *(v69 + 80);
      sub_1000C56B4(v22, v17);
      if (v62(v17, 1, v8) == 1)
      {
        v37 = v41;
LABEL_33:
        sub_1000C5724(v17);
        v38 = v37;
        v32 = v66;
      }

      else
      {
        v59 = v12 + ((v42 + 32) & ~v42);
        v43 = *v60;
        v37 = v41;
        if (v41 <= v40)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        v61 = v44;
        v58 = v43;
        while (1)
        {
          v47 = v67;
          v48 = v17;
          v49 = v43;
          v43(v67, v48, v8);
          if (v61 == v37)
          {
            break;
          }

          sub_1000C5724(v22);
          v50 = v37;
          v51 = *(v69 + 72);
          v64 = v50;
          result = v49(&v59[v51 * v50], v47, v8);
          if (v65 == v23)
          {
            v45 = 1;
            v65 = v23;
            v17 = v57;
          }

          else
          {
            v17 = v57;
            if (v65 < a3 || v65 >= v23)
            {
              goto LABEL_46;
            }

            v52 = v65;
            (*v54)(v22, v68 + v51 * v65, v8);
            v45 = 0;
            v65 = v52 + 1;
          }

          v55(v22, v45, 1, v8);
          sub_1000C56B4(v22, v17);
          v46 = v62(v17, 1, v8);
          v37 = v64 + 1;
          v43 = v58;
          if (v46 == 1)
          {
            goto LABEL_33;
          }
        }

        (*v53)(v47, v8);
        v38 = v61;
        v37 = v61;
        v32 = v66;
        v17 = v57;
      }

      v12[2] = v38;
      sub_1000C56B4(v22, v32);
    }

    while (v62(v32, 1, v8) != 1);
    goto LABEL_24;
  }

  v35 = v12[2];
  v24 = __OFADD__(v35, v25);
  v36 = v35 + v25;
  if (!v24)
  {
    v12[2] = v36;
    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000C4C68(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_100026144(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000C4DC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10006C7EC(*a1, *a2) & 1) == 0 || (sub_1000A2E68(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1000A3B54(v3, v5);
}

char *sub_1000C4E44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015C470, &qword_100112480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C4F78(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015F520, &qword_100116A78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C50C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015F518, &qword_100116A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C51E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015F528, &qword_100116A88);
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

void sub_1000C5300(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v13 = v8 + v6;
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1000C4E44(isUniquelyReferenced_nonNull_native, v13, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v14 = *(v7 + 2);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 2) = v16;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void *sub_1000C5400(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListSectionModel();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = *(v4 + 28);
  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  v12 = &_swiftEmptyArrayStorage;
  while (1)
  {
    sub_10002F2E0(v10, v7, type metadata accessor for PrimarySettingsListSectionModel);
    v14 = *&v7[v9];

    result = sub_10002CA38(v7);
    v15 = *(v14 + 16);
    v16 = v12[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v12[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v12 = sub_100026144(isUniquelyReferenced_nonNull_native, v19, 1, v12, &unk_10015FB80, &unk_100116A40, type metadata accessor for PrimarySettingsListItemModel);
      if (*(v14 + 16))
      {
LABEL_14:
        v20 = (v12[3] >> 1) - v12[2];
        result = type metadata accessor for PrimarySettingsListItemModel();
        v21 = *(result - 1);
        if (v20 < v15)
        {
          goto LABEL_22;
        }

        v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v23 = *(v21 + 72);
        swift_arrayInitWithCopy();

        if (v15)
        {
          v24 = v12[2];
          v25 = __OFADD__(v24, v15);
          v26 = v24 + v15;
          if (v25)
          {
            goto LABEL_23;
          }

          v12[2] = v26;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_21;
    }

LABEL_4:
    v10 += v11;
    if (!--v8)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000C564C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C56B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(qword_10015F538, &qword_100116A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5724(uint64_t a1)
{
  v2 = sub_10004DED0(qword_10015F538, &qword_100116A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C578C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_1000C57D0()
{
  v0 = [objc_allocWithZone(PSAboutHTMLSheetViewController) init];
  v1 = PSAboutDeviceSupervision();
  [v0 setHTMLContent:v1 isFragment:1];

  return v0;
}

uint64_t sub_1000C5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5928();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000C589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C5928();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000C5900()
{
  sub_1000C5928();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000C5928()
{
  result = qword_10015F670;
  if (!qword_10015F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F670);
  }

  return result;
}

uint64_t sub_1000C597C(uint64_t a1)
{
  v3 = *(v1 + 56);

  v4 = sub_10006D3B8(a1, v3);

  if ((v4 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel();
    sub_1000A2E28();
    swift_unknownObjectRelease();
  }

  v5 = *(v1 + 56);
  *(v1 + 56) = a1;
}

id sub_1000C5A54()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(ConnectedHeadphonesControllerWrapper) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000C5AC0()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation;
  (*(v3 + 16))(&v19 - v5, v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask;
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask))
  {
    v10 = *(v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask);

    Task.cancel()();

    v11 = *(v1 + v9);
  }

  *(v1 + v9) = 0;

  v12 = sub_1000C5A54();
  [v12 setDeviceChangeHandler:0];

  v13 = *(v1 + 56);
  *(v1 + 56) = &_swiftEmptyArrayStorage;

  sub_100025CD8(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  sub_1000122B4(v1 + 40);
  v14 = *(v1 + 56);

  v15 = OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStream;
  v16 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v8((v1 + v7), v2);
  v17 = *(v1 + v9);

  return v1;
}

uint64_t sub_1000C5CDC()
{
  sub_1000C5AC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C5D3C()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = aBlock - v9;
  v11 = sub_1000C5A54();
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000C8320;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_100150FD8;
  v13 = _Block_copy(aBlock);

  [v11 setDeviceChangeHandler:v13];
  _Block_release(v13);

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;

  v18 = sub_100094AF4(0, 0, v10, &unk_100116F18, v17);
  v19 = *(v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask);
  *(v1 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask) = v18;

  AsyncStream.Continuation.yield<A>()();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000C601C()
{
  v0 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  v5 = sub_10004DED0(&qword_10015F818, &qword_100116F28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation, v0);

    AsyncStream.Continuation.yield<A>()();
    (*(v1 + 8))(v4, v0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v11 - 8) + 56))(v8, v10, 1, v11);
  return sub_1000068B0(v8, &qword_10015F818, &qword_100116F28);
}

uint64_t sub_1000C6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v7 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v11;
  v4[19] = v10;

  return _swift_task_switch(sub_1000C6350, v11, v10);
}

uint64_t sub_1000C6350()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    (*(v6 + 16))(v3, Strong + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStream, v5);

    (*(v6 + 32))(v4, v3, v5);
    sub_10001AE08();
    AsyncSequence.debounce<>(for:tolerance:)();
    v10 = AsyncDebounceSequence.makeAsyncIterator()();
    v0[20] = v10;
    sub_1000068B0(v7, &unk_10015F9E0, &unk_100112BB0);
    v0[8] = v10;
    swift_beginAccess();
    v11 = v0[16];
    v12 = static MainActor.shared.getter();
    v0[21] = v12;
    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    v13[1] = sub_1000C658C;

    return sub_100064180(v12, &protocol witness table for MainActor);
  }

  else
  {
    v15 = v0[17];

    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[11];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000C658C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;

  if (!v1)
  {
    v8 = *(v4 + 168);

    *(v4 + 208) = a1;
    v9 = *(v4 + 144);
    v10 = *(v4 + 152);

    return _swift_task_switch(sub_1000C66B8, v9, v10);
  }

  return result;
}

uint64_t sub_1000C66B8()
{
  if ((*(v0 + 208) & 1) != 0 || (v1 = *(v0 + 72), Strong = swift_weakLoadStrong(), (*(v0 + 184) = Strong) == 0))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    (*(v9 + 8))(v7, v8);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 88);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    *v3 = v0;
    v3[1] = sub_1000C67F0;

    return sub_1000C6D3C();
  }
}

uint64_t sub_1000C67F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = a1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return _swift_task_switch(sub_1000C6918, v5, v4);
}

uint64_t sub_1000C6918()
{
  v1 = v0[23];
  sub_1000C597C(v0[25]);

  v2 = v0[16];
  v3 = static MainActor.shared.getter();
  v0[21] = v3;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1000C658C;

  return sub_100064180(v3, &protocol witness table for MainActor);
}

uint64_t sub_1000C69F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimarySettingsListItemModel();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 56);
  v8 = *(v7 + 16);
  if (v8)
  {
    v33 = v1;
    v34 = a1;
    v9 = v7 + 32;
    v32[1] = v7;

    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v39 = v8;
      sub_10006D7CC(v9, v40);
      v11 = v40[1];
      v12 = v10;
      v14 = v40[4];
      v13 = v40[5];
      v15 = v40[3];
      v37 = v40[2];
      v38 = v40[0];
      v16 = v41;

      sub_100039F14(v14, v13, v16);

      sub_10006D828(v40);
      v17 = v36;
      v18 = &v6[*(v36 + 20)];
      *v18 = v14;
      *(v18 + 1) = v13;
      v10 = v12;
      v18[16] = v16;
      *(v18 + 3) = v37;
      *(v18 + 4) = v15;
      type metadata accessor for PrimarySettingsListItemViewType();
      swift_storeEnumTagMultiPayload();
      *v6 = v38;
      *(v6 + 1) = v11;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      v6[32] = 5;
      *&v6[*(v17 + 24)] = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10002C850(0, v12[2] + 1, 1, v12);
      }

      v20 = v10[2];
      v19 = v10[3];
      v21 = v39;
      if (v20 >= v19 >> 1)
      {
        v10 = sub_10002C850(v19 > 1, v20 + 1, 1, v10);
      }

      v10[2] = v20 + 1;
      sub_10002C634(v6, v10 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v20);
      v9 += 96;
      v8 = v21 - 1;
    }

    while (v8);

    v22 = *(v33 + 16);
    v23 = *(v33 + 24);
    v24 = *(v33 + 32);
    v25 = type metadata accessor for PrimarySettingsListSectionModel();
    v26 = *(v25 + 24);
    v27 = type metadata accessor for LocalizedStringResource();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34 + v26, 1, 1, v27);
    *v28 = v22;
    *(v28 + 8) = v23;
    *(v28 + 16) = v24;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + *(v25 + 28)) = v10;
    (*(*(v25 - 8) + 56))(v28, 0, 1, v25);
    return sub_100025974(v22, v23, v24);
  }

  else
  {
    v30 = type metadata accessor for PrimarySettingsListSectionModel();
    v31 = *(*(v30 - 8) + 56);

    return v31(a1, 1, 1, v30);
  }
}

uint64_t sub_1000C6D3C()
{
  v1[2] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for OSSignposter();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6E58, 0, 0);
}

uint64_t sub_1000C6E58()
{
  v19 = v0;
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v16 = v4;
  v17 = v0[3];
  v6 = v0[2];
  v7 = sub_10000659C(v4, qword_100169718);
  (*(v2 + 16))(v1, v7, v4);
  static OSSignpostID.exclusive.getter();
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  v11 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v11, "ConnectedHeadphonesSectionModelProvider.produceConnectedHeadphoneItems()", "", v8, 2u);
  sub_1000C7054(&v18);
  LOBYTE(v6) = static os_signpost_type_t.end.getter();
  v12 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v6, v12, "ConnectedHeadphonesSectionModelProvider.produceConnectedHeadphoneItems()", "", v8, 2u);

  v13 = v18;

  (*(v5 + 8))(v3, v17);
  (*(v2 + 8))(v1, v16);

  v14 = v0[1];

  return v14(v13);
}