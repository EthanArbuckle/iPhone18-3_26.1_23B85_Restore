uint64_t sub_100347A98(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FD70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FD70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FD70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FD70);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FD70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FD70);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FD70);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_100391B44(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FD70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036A1EC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100365260, &qword_10077FD98, &unk_10063BDD0);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FD98);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FD70);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE18, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FD98);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003495D0(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDC0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDC0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDC0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDC0);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDC0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDC0);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDC0);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_100391EE0(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDC0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036A4E4(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100365FF8, &qword_10077FDC8, &unk_10063C910);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDC8);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDC0);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE30, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDC8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034B108(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDD0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDD0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDD0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDD0);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDD0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDD0);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDD0);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_10039227C(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDD0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036A7DC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100366D90, &qword_10077FDD8, &unk_10063BE50);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDD8);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDD0);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE48, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDD8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034CC40(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDE0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDE0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDE0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDE0);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDE0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDE0);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDE0);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_100392618(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDE0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036AAD4(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100367B28, &qword_10077FDE8, &unk_10063C920);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDE8);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDE0);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE60, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDE8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034E778(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDF0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDF0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDF0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDF0);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDF0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDF0);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDF0);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_1003929B4(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDF0);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036ADCC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_1003688C0, &qword_10077FDF8, &unk_10063BE80);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDF8);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDF0);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE78, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDF8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003502B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100350348, v6, v5);
}

uint64_t sub_100350348()
{
  v0[2] = *(v0[3] + 96);
  v1 = swift_task_alloc();
  v0[7] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100223E20;

  return TTRPrivacyChecker.checkAndPromptNotificationAndLocationAccessForRemindersInCalendar()(v2, &protocol witness table for TTRIPrivacyChecker);
}

void sub_1003503FC(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 || *(a3 + 161) == 1)
  {
    type metadata accessor for TTRIPrivacyChecker();
    TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded()();
    *(a3 + 161) = 0;
  }
}

uint64_t sub_100350460(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v68 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v67 = &v64 - v13;
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  v17 = *sub_10000C36C(v2 + 6, v2[9]);
  if (sub_10001D354() >= 2u)
  {
    *v16 = a2 & 1;
    v16[1] = 0;
    v50 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier.revealSubtasks(_:);
    v51 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier();
    (*(*(v51 - 8) + 104))(v16, v50, v51);
    (*(v10 + 104))(v16, enum case for REMNavigationSpecifier.ReminderPathSpecifier.showInList(_:), v9);
    v52 = a1;
    v53 = [a1 list];
    v54 = [v53 objectID];

    v55 = [v54 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v57;
    *&v66 = v56;

    v68 = &v64;
    v59 = __chkstk_darwin(v58);
    *(&v64 - 2) = v52;
    v60 = v67;
    (*(v10 + 16))(v67, v16, v9, v59);
    v61 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v52;
    (*(v10 + 32))(v62 + v61, v60, v9);
    v63 = v52;
    sub_10035EB18(v66, v65, sub_10036BD30, (&v64 - 4), sub_10036BD38, v62);

    return (*(v10 + 8))(v16, v9);
  }

  else
  {
    v18 = a1;
    v67 = v9;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = result;
      v21 = v8;
      v22 = v68;
      *v68 = a2 & 1;
      *(v22 + 1) = 1;
      v23 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier.revealSubtasks(_:);
      v24 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier();
      (*(*(v24 - 8) + 104))(v22, v23, v24);
      v25 = v10;
      (*(v10 + 104))(v22, enum case for REMNavigationSpecifier.ReminderPathSpecifier.showInList(_:), v67);
      v26 = v18;
      v27 = [v18 list];
      v28 = [v18 store];
      v29 = v6[5];
      v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      (*(*(v30 - 8) + 56))(&v21[v29], 1, 1, v30);
      v31 = *(v17 + 56);
      *v21 = v28;
      v32 = v6[6];
      v66 = *(v17 + 64);
      v33 = v66;
      *&v21[v32] = v31;
      *&v21[v6[7]] = v33;
      v21[v6[8]] = 0;
      type metadata accessor for TTRIShowRemindersInListAssembly();

      swift_unknownObjectRetain();
      v34 = v27;
      *&v66 = v21;
      v35 = v21;
      v36 = v34;
      v37 = sub_1005A9588(v69, v35, v27, v3, &off_100721110, 0);

      v38 = *sub_10000C36C(v69, v70);
      v39 = objc_allocWithZone(UINavigationController);

      v40 = [v39 initWithRootViewController:v37];
      v41 = [v40 navigationBar];
      [v41 setPrefersLargeTitles:1];

      v42 = [v40 presentationController];
      if (v42)
      {
        v43 = v42;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = *(v38 + 24);
          ObjectType = swift_getObjectType();
          (*(v44 + 104))(v43, ObjectType, v44);
          swift_unknownObjectRelease();
        }

        *(v38 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 1;
      }

      [v20 presentViewController:v40 animated:1 completion:0];
      v46 = v70;
      v47 = v71;
      sub_10000C36C(v69, v70);
      v48 = v26;
      v49 = v68;
      (*(*(v47 + 8) + 56))(v48, v68, &type metadata for Any[8], &type metadata for Any[8], v46);

      sub_100079664(v66);
      (*(v25 + 8))(v49, v67);
      return sub_100004758(v69);
    }
  }

  return result;
}

void sub_100350B10(uint64_t a1, char a2)
{
  sub_10000C36C((v2 + 48), *(v2 + 72));
  if ((sub_10001D354() - 1) <= 1u)
  {
    sub_10000C36C((v2 + 48), *(v2 + 72));
    sub_100391414(1);
    v4 = swift_allocObject();
    *(v4 + 16) = a2 & 1;
    *(v4 + 24) = v2;

    v5 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
  }
}

uint64_t sub_100350CAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100391414(0);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v9 = zalgo.getter();
  v10 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v10;
}

uint64_t sub_100350E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a5;
  v17[1] = a6;
  v8 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100391414(0);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v14 = zalgo.getter();
  sub_100058000(a4);
  v15 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v15;
}

uint64_t sub_100351008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v39 = a2;
  v3 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v3 - 8);
  v38 = &v31 - v4;
  v5 = sub_100058000(&unk_10076B880);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &v31 - v6;
  v37 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100058000(&qword_10077FDA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = type metadata accessor for TTRRemindersListListType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v39, v9);
  v19 = (*(v10 + 88))(v12, v9);
  v36 = v7;
  if (v19 == enum case for REMNavigationSpecifier.NewListPathSpecifier.list(_:))
  {
    v20 = &enum case for TTRRemindersListListType.standard(_:);
  }

  else if (v19 == enum case for REMNavigationSpecifier.NewListPathSpecifier.groceryList(_:))
  {
    v20 = &enum case for TTRRemindersListListType.groceries(_:);
  }

  else
  {
    if (v19 != enum case for REMNavigationSpecifier.NewListPathSpecifier.customSmartList(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v20 = &enum case for TTRRemindersListListType.smartList(_:);
  }

  sub_1000079B4(v15, &qword_10077FDA8);
  (*(v10 + 96))(v12, v9);
  v22 = *v12;
  v21 = v12[1];
  (*(v17 + 104))(v15, *v20, v16);
  v18(v15, 0, 1, v16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    v23 = v33;
    TTRAccountsListsViewModel.accountCollection.getter();

    v24 = v38;
    sub_100015E68(v38);
    (*(v34 + 8))(v23, v35);
    v26 = v36;
    v25 = v37;
    if ((*(v36 + 48))(v24, 1, v37) == 1)
    {
      sub_1000079B4(v24, &unk_10076B870);
    }

    else
    {
      v27 = v32;
      (*(v26 + 32))(v32, v24, v25);
      sub_100426520(v27, v22, v21, v15);
      (*(v26 + 8))(v27, v25);
    }

    swift_unknownObjectRelease();
  }

  v28 = objc_opt_self();
  v29 = String._bridgeToObjectiveC()();
  [v28 internalErrorWithDebugDescription:v29];

  swift_willThrow();
  return sub_1000079B4(v15, &qword_10077FDA8);
}

uint64_t sub_100351584()
{
  sub_100391414(0);
  swift_allocObject();
  swift_weakInit();
  v0 = zalgo.getter();
  v1 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v1;
}

uint64_t sub_10035162C(uint64_t a1, uint64_t *a2)
{
  sub_100391414(0);
  swift_allocObject();
  swift_weakInit();
  v3 = zalgo.getter();
  sub_100058000(a2);
  v4 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v4;
}

uint64_t sub_1003516E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 32);
    swift_unknownObjectRetain();

    sub_10000C36C((v1 + 112), *(v1 + 136));
    swift_getObjectType();
    v2 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    v3 = sub_10036ED08(&unk_10078D530, type metadata accessor for TTRIAccountsListsPresenter);
    sub_1002A4ADC(v2, v1, v3);
    swift_unknownObjectRelease();
  }

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  [v4 internalErrorWithDebugDescription:v5];

  return swift_willThrow();
}

uint64_t sub_10035182C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v86 = a4;
  v101 = a3;
  v90 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v82 = &v79 - v6;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v84 = *(v85 - 8);
  v7 = __chkstk_darwin(v85);
  v80 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v8;
  __chkstk_darwin(v7);
  v83 = &v79 - v9;
  v88 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v87 = *(v88 - 1);
  v10 = *(v87 + 64);
  v11 = __chkstk_darwin(v88);
  v12 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v79 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v79 - v19;
  v21 = *(v15 + 16);
  v81 = a1;
  v21(&v79 - v19, a1, v14);
  v22 = (*(v15 + 88))(v20, v14);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v20, v14);
    v23 = v87;
    v89 = *(v87 + 32);
    v24 = v91;
    v25 = v20;
    v26 = v88;
    v89(v91, v25);
    swift_unknownObjectRetain();

    v90 = TTRModuleState.initialLoadPromise.getter();

    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v24;
    v29 = v26;
    (*(v23 + 16))(v12, v28, v26);
    v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v31 = swift_allocObject();
    v32 = v101;
    *(v31 + 16) = v27;
    *(v31 + 24) = v32;
    (v89)(v31 + v30, v12, v29);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_10036E45C;
    *(v33 + 24) = v31;
    v34 = v32;
    v35 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v36 = objc_opt_self();
    v37 = String._bridgeToObjectiveC()();
    [v36 internalErrorWithDebugDescription:v37];

    swift_willThrow();
    return (*(v23 + 8))(v91, v29);
  }

  v39 = v86;
  v40 = v90;
  v41 = v101;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v20, v14);
  }

  else
  {
    if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100391414(0);
    }

    if (v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  v21(v18, v81, v14);
  v43 = v82;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v84;
  v14 = v85;
  if ((*(v84 + 48))(v43, 1, v85) == 1)
  {
    sub_1000079B4(v43, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10078A340);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = *(v15 + 32);
  v91 = (v15 + 32);
  v88 = v47;
  (v47)(v83, v43, v14);
  v18 = v40;
  swift_beginAccess();
  sub_100010540((v40 + 96), &v94);
  if (v97)
  {
    sub_100015124(&v94);
    v48 = v41;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v94, v98);
  sub_10000C36C(v98, v99);
  swift_getObjectType();
  v49 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v48 = v41;
  if (v49)
  {
    v50 = v49;
    v51 = [v49 objectID];
  }

  else
  {
    v51 = 0;
  }

  v52 = [v41 objectID];
  v53 = v52;
  if (v51)
  {
    if (v52)
    {
      sub_100003540(0, &qword_10076BA50);
      v54 = static NSObject.== infix(_:_:)();

      if (v54)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v53 = v51;
  }

  else if (!v52)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v98);
LABEL_32:
  sub_100010540((v18 + 96), &v94);
  if (v97 != 2)
  {
    sub_100015124(&v94);
LABEL_46:
    v94 = 0u;
    v95 = 0u;
    v96 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v94, v98);
  sub_10000C36C(v98, v99);
  swift_getObjectType();
  v55 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v55)
  {
    v56 = v55;
    v57 = [v55 objectID];
  }

  else
  {
    v57 = 0;
  }

  v58 = [v48 objectID];
  v59 = v58;
  if (!v57)
  {
    if (!v58)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v98);
    goto LABEL_46;
  }

  if (!v58)
  {
    v59 = v57;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v60 = static NSObject.== infix(_:_:)();

  if ((v60 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v61 = v99;
  v62 = v100;
  v63 = sub_10000C36C(v98, v99);
  *(&v95 + 1) = v61;
  v96 = *(v62 + 8);
  v64 = sub_1000317B8(&v94);
  (*(*(v61 - 8) + 16))(v64, v63, v61);
  sub_100004758(v98);
LABEL_47:
  sub_10000794C(&v94, &v92, &unk_100792FE0);
  if (v93)
  {
    sub_100005FD0(&v92, v98);
    v65 = v99;
    v66 = v100;
    v67 = sub_10000C36C(v98, v99);
    sub_1003982D4(v67, v18, v65, v66);
    sub_10000B0D8(v98, &v92);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v98);
  }

  else
  {
    sub_1000079B4(&v92, &unk_100792FE0);
    sub_100391414(0);
    v68 = swift_allocObject();
    *(v68 + 16) = v18;
    *(v68 + 24) = v48;
    *(v68 + 32) = v39 & 1;
    v69 = v48;

    v70 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v71 = v80;
  v72 = v83;
  (*(v15 + 16))(v80, v83, v14);
  v73 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v74 = (v79 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (v88)(v75 + v73, v71, v14);
  *(v75 + v74) = v48;
  v76 = v48;

  v77 = zalgo.getter();
  v78 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v72, v14);
  sub_1000079B4(&v94, &unk_100792FE0);
  return v78;
}

uint64_t sub_10035245C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_1003917A8(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_100775650);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0);
  return v79;
}

uint64_t sub_10035309C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v86 = a4;
  v101 = a3;
  v90 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v82 = &v79 - v6;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v84 = *(v85 - 8);
  v7 = __chkstk_darwin(v85);
  v80 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v8;
  __chkstk_darwin(v7);
  v83 = &v79 - v9;
  v88 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v87 = *(v88 - 1);
  v10 = *(v87 + 64);
  v11 = __chkstk_darwin(v88);
  v12 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v79 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v79 - v19;
  v21 = *(v15 + 16);
  v81 = a1;
  v21(&v79 - v19, a1, v14);
  v22 = (*(v15 + 88))(v20, v14);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v20, v14);
    v23 = v87;
    v89 = *(v87 + 32);
    v24 = v91;
    v25 = v20;
    v26 = v88;
    v89(v91, v25);
    swift_unknownObjectRetain();

    v90 = TTRModuleState.initialLoadPromise.getter();

    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v24;
    v29 = v26;
    (*(v23 + 16))(v12, v28, v26);
    v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v31 = swift_allocObject();
    v32 = v101;
    *(v31 + 16) = v27;
    *(v31 + 24) = v32;
    (v89)(v31 + v30, v12, v29);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100371EF0;
    *(v33 + 24) = v31;
    v34 = v32;
    v35 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v36 = objc_opt_self();
    v37 = String._bridgeToObjectiveC()();
    [v36 internalErrorWithDebugDescription:v37];

    swift_willThrow();
    return (*(v23 + 8))(v91, v29);
  }

  v39 = v86;
  v40 = v90;
  v41 = v101;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v20, v14);
  }

  else
  {
    if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100024898(0);
    }

    if (v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v22 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  v21(v18, v81, v14);
  v43 = v82;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v84;
  v14 = v85;
  if ((*(v84 + 48))(v43, 1, v85) == 1)
  {
    sub_1000079B4(v43, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10077FDB8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = *(v15 + 32);
  v91 = (v15 + 32);
  v88 = v47;
  (v47)(v83, v43, v14);
  v18 = v40;
  swift_beginAccess();
  sub_100010540((v40 + 96), &v94);
  if (v97)
  {
    sub_100015124(&v94);
    v48 = v41;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v94, v98);
  sub_10000C36C(v98, v99);
  swift_getObjectType();
  v49 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v48 = v41;
  if (v49)
  {
    v50 = v49;
    v51 = [v49 objectID];
  }

  else
  {
    v51 = 0;
  }

  v52 = [v41 objectID];
  v53 = v52;
  if (v51)
  {
    if (v52)
    {
      sub_100003540(0, &qword_10076BA50);
      v54 = static NSObject.== infix(_:_:)();

      if (v54)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v53 = v51;
  }

  else if (!v52)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v98);
LABEL_32:
  sub_100010540((v18 + 96), &v94);
  if (v97 != 2)
  {
    sub_100015124(&v94);
LABEL_46:
    v94 = 0u;
    v95 = 0u;
    v96 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v94, v98);
  sub_10000C36C(v98, v99);
  swift_getObjectType();
  v55 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v55)
  {
    v56 = v55;
    v57 = [v55 objectID];
  }

  else
  {
    v57 = 0;
  }

  v58 = [v48 objectID];
  v59 = v58;
  if (!v57)
  {
    if (!v58)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v98);
    goto LABEL_46;
  }

  if (!v58)
  {
    v59 = v57;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v60 = static NSObject.== infix(_:_:)();

  if ((v60 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v61 = v99;
  v62 = v100;
  v63 = sub_10000C36C(v98, v99);
  *(&v95 + 1) = v61;
  v96 = *(v62 + 8);
  v64 = sub_1000317B8(&v94);
  (*(*(v61 - 8) + 16))(v64, v63, v61);
  sub_100004758(v98);
LABEL_47:
  sub_10000794C(&v94, &v92, &unk_100792FE0);
  if (v93)
  {
    sub_100005FD0(&v92, v98);
    v65 = v99;
    v66 = v100;
    v67 = sub_10000C36C(v98, v99);
    sub_1003982D4(v67, v18, v65, v66);
    sub_10000B0D8(v98, &v92);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v98);
  }

  else
  {
    sub_1000079B4(&v92, &unk_100792FE0);
    sub_100391414(0);
    v68 = swift_allocObject();
    *(v68 + 16) = v18;
    *(v68 + 24) = v48;
    *(v68 + 32) = v39 & 1;
    v69 = v48;

    v70 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v71 = v80;
  v72 = v83;
  (*(v15 + 16))(v80, v83, v14);
  v73 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v74 = (v79 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (v88)(v75 + v73, v71, v14);
  *(v75 + v74) = v48;
  v76 = v48;

  v77 = zalgo.getter();
  sub_100058000(&qword_10077FDB0);
  v78 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v72, v14);
  sub_1000079B4(&v94, &unk_100792FE0);
  return v78;
}

uint64_t sub_100353CDC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100391B44(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FD98);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0);
  return v79;
}

uint64_t sub_10035491C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100391EE0(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDC8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDC0);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0);
  return v79;
}

uint64_t sub_10035555C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_10039227C(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDD8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDD0);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0);
  return v79;
}

uint64_t sub_10035619C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100392618(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDE8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDE0);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0);
  return v79;
}

uint64_t sub_100356DDC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_1003929B4(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDF8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDF0);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0);
  return v79;
}

uint64_t sub_100357A1C(uint64_t a1, uint64_t a2, void *a3)
{
  v88 = a2;
  v89 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v82 = &v78 - v5;
  v84 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v84 - 8);
  v6 = __chkstk_darwin(v84);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v7;
  __chkstk_darwin(v6);
  v83 = &v78 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v87 = *(v9 - 8);
  v10 = *(v87 + 8);
  v11 = __chkstk_darwin(v9);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v78 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v78 - v18;
  v20 = *(v14 + 16);
  v81 = a1;
  v20(&v78 - v18, a1, v13);
  v21 = (*(v14 + 88))(v19, v13);
  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v19, v13);
    v22 = v87;
    v85 = *(v87 + 4);
    v23 = v97;
    (v85)(v97, v19, v9);
    swift_unknownObjectRetain();

    v88 = TTRModuleState.initialLoadPromise.getter();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v86;
    v26 = v23;
    v27 = v9;
    (*(v22 + 2))(v86, v26, v9);
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v29 = swift_allocObject();
    v30 = v89;
    *(v29 + 16) = v24;
    *(v29 + 24) = v30;
    v31 = v29 + v28;
    v32 = v27;
    (v85)(v31, v25, v27);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_10036E730;
    *(v33 + 24) = v29;
    v34 = v30;
    v35 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v36 = objc_opt_self();
    v37 = String._bridgeToObjectiveC()();
    [v36 internalErrorWithDebugDescription:v37];

    swift_willThrow();
    return (*(v22 + 1))(v97, v32);
  }

  v39 = v88;
  v40 = v89;
  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v19, v13);
    goto LABEL_9;
  }

  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100391414(0);
  }

  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    v20(v17, v81, v13);
    v42 = v82;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v43 = v85;
    v44 = v84;
    if ((*(v85 + 48))(v42, 1, v84) == 1)
    {
      sub_1000079B4(v42, &qword_10077FD78);
      v45 = objc_opt_self();
      v46 = String._bridgeToObjectiveC()();
      v47 = [v45 internalErrorWithDebugDescription:v46];

      sub_100058000(&qword_10078A340);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v48 = *(v43 + 32);
    v48(v83, v42, v44);
    v49 = v39;
    swift_beginAccess();
    sub_100010540(v39 + 96, &v90);
    v97 = (v43 + 32);
    v87 = v48;
    if (v93 != 1)
    {
      sub_100015124(&v90);
      v51 = v40;
LABEL_34:
      sub_100391414(0);
      v66 = swift_allocObject();
      *(v66 + 16) = v49;
      *(v66 + 24) = v51;
      v67 = v51;

      v68 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v69 = v85;
      v70 = v80;
      v71 = v83;
      (*(v85 + 16))(v80, v83, v44);
      v72 = (*(v69 + 80) + 16) & ~*(v69 + 80);
      v73 = (v79 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      v87((v74 + v72), v70, v44);
      *(v74 + v73) = v51;
      v75 = v51;
      v76 = zalgo.getter();
      v77 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v69 + 8))(v71, v44);
      return v77;
    }

    sub_100005FD0(&v90, v94);
    sub_10000C36C(v94, v95);
    swift_getObjectType();
    v50 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v51 = v40;
    if (v50)
    {
      v52 = v50;
      v53 = [v50 objectID];
    }

    else
    {
      v53 = 0;
    }

    v56 = [v40 objectID];
    v57 = v56;
    if (v53)
    {
      if (v56)
      {
        sub_100003540(0, &qword_10076BA50);
        v58 = static NSObject.== infix(_:_:)();

        if ((v58 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v94 v95)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v60 = Strong;
          sub_1002FB7EC(1);
          v61 = sub_100341598();
          sub_10001A06C(v61);
        }

        v62 = v95;
        v63 = v96;
        v64 = sub_10000C36C(v94, v95);
        v91 = v62;
        v92 = *(v63 + 8);
        v65 = sub_1000317B8(&v90);
        (*(*(v62 - 8) + 16))(v65, v64, v62);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v94);
        goto LABEL_35;
      }

      v57 = v53;
    }

    else if (!v56)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v94);
    goto LABEL_34;
  }

  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v54 = objc_opt_self();
    v55 = String._bridgeToObjectiveC()();
    [v54 internalErrorWithDebugDescription:v55];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100358510(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_1003917A8(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FD80);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_100775650);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100359014(uint64_t a1, uint64_t a2, void *a3)
{
  v88 = a2;
  v89 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v82 = &v78 - v5;
  v84 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v84 - 8);
  v6 = __chkstk_darwin(v84);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v7;
  __chkstk_darwin(v6);
  v83 = &v78 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v87 = *(v9 - 8);
  v10 = *(v87 + 8);
  v11 = __chkstk_darwin(v9);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v78 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v78 - v18;
  v20 = *(v14 + 16);
  v81 = a1;
  v20(&v78 - v18, a1, v13);
  v21 = (*(v14 + 88))(v19, v13);
  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v19, v13);
    v22 = v87;
    v85 = *(v87 + 4);
    v23 = v97;
    (v85)(v97, v19, v9);
    swift_unknownObjectRetain();

    v88 = TTRModuleState.initialLoadPromise.getter();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v86;
    v26 = v23;
    v27 = v9;
    (*(v22 + 2))(v86, v26, v9);
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v29 = swift_allocObject();
    v30 = v89;
    *(v29 + 16) = v24;
    *(v29 + 24) = v30;
    v31 = v29 + v28;
    v32 = v27;
    (v85)(v31, v25, v27);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100371EF8;
    *(v33 + 24) = v29;
    v34 = v30;
    v35 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v36 = objc_opt_self();
    v37 = String._bridgeToObjectiveC()();
    [v36 internalErrorWithDebugDescription:v37];

    swift_willThrow();
    return (*(v22 + 1))(v97, v32);
  }

  v39 = v88;
  v40 = v89;
  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v19, v13);
    goto LABEL_9;
  }

  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100024898(0);
  }

  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    v20(v17, v81, v13);
    v42 = v82;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v43 = v85;
    v44 = v84;
    if ((*(v85 + 48))(v42, 1, v84) == 1)
    {
      sub_1000079B4(v42, &qword_10077FD78);
      v45 = objc_opt_self();
      v46 = String._bridgeToObjectiveC()();
      v47 = [v45 internalErrorWithDebugDescription:v46];

      sub_100058000(&qword_10077FDB8);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v48 = *(v43 + 32);
    v48(v83, v42, v44);
    v49 = v39;
    swift_beginAccess();
    sub_100010540(v39 + 96, &v90);
    v97 = (v43 + 32);
    v87 = v48;
    if (v93 != 1)
    {
      sub_100015124(&v90);
      v51 = v40;
LABEL_34:
      sub_100391414(0);
      v66 = swift_allocObject();
      *(v66 + 16) = v49;
      *(v66 + 24) = v51;
      v67 = v51;

      v68 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v69 = v85;
      v70 = v80;
      v71 = v83;
      (*(v85 + 16))(v80, v83, v44);
      v72 = (*(v69 + 80) + 16) & ~*(v69 + 80);
      v73 = (v79 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      v87((v74 + v72), v70, v44);
      *(v74 + v73) = v51;
      v75 = v51;
      v76 = zalgo.getter();
      sub_100058000(&qword_10077FDB0);
      v77 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v69 + 8))(v71, v44);
      return v77;
    }

    sub_100005FD0(&v90, v94);
    sub_10000C36C(v94, v95);
    swift_getObjectType();
    v50 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v51 = v40;
    if (v50)
    {
      v52 = v50;
      v53 = [v50 objectID];
    }

    else
    {
      v53 = 0;
    }

    v56 = [v40 objectID];
    v57 = v56;
    if (v53)
    {
      if (v56)
      {
        sub_100003540(0, &qword_10076BA50);
        v58 = static NSObject.== infix(_:_:)();

        if ((v58 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v94 v95)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v60 = Strong;
          sub_1002FB7EC(1);
          v61 = sub_100341598();
          sub_10001A06C(v61);
        }

        v62 = v95;
        v63 = v96;
        v64 = sub_10000C36C(v94, v95);
        v91 = v62;
        v92 = *(v63 + 8);
        v65 = sub_1000317B8(&v90);
        (*(*(v62 - 8) + 16))(v65, v64, v62);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v94);
        goto LABEL_35;
      }

      v57 = v53;
    }

    else if (!v56)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v94);
    goto LABEL_34;
  }

  if (v21 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v54 = objc_opt_self();
    v55 = String._bridgeToObjectiveC()();
    [v54 internalErrorWithDebugDescription:v55];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100359B18(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100391B44(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FD70);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035A61C(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100391EE0(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDC8);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDC0);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035B120(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_10039227C(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDD8);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDD0);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035BC24(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100392618(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDE8);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDE0);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035C728(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_1003929B4(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDF8);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDF0);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035D22C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a4;
  v19[1] = a5;
  v8 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = a1[3];
  v12 = a1[4];
  sub_10000C36C(a1, v11);
  (*(v12 + 8))(v11, v12);
  (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = a3;
  v16 = zalgo.getter();
  v17 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v17;
}

uint64_t sub_10035D3E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v23 = a4;
  v24 = a5;
  v10 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  (*(v15 + 8))(v14, v15);
  (*(v11 + 16))(v13, a2, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v13, v10);
  *(v18 + v17) = a3;
  v19 = a3;
  v20 = zalgo.getter();
  sub_100058000(v24);
  v21 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v21;
}

uint64_t sub_10035D59C(void *a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v21 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  v13 = enum case for REMNavigationSpecifier.CommonListPathSpecifier.showSectionlessSection(_:);
  (*(v9 + 8))(v11, v8);
  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  if (v12 != v13)
  {
    return (*(v15 + 88))(a2, &type metadata for Any[8], &type metadata for Any[8], v14, v15);
  }

  v16 = [v20 objectID];
  v17 = v21;
  (*(v5 + 104))(v7, enum case for REMNavigationSpecifier.SectionPathSpecifier.showExpanded(_:), v21);
  v18 = (*(v15 + 80))(v16, v7, &type metadata for Any[8], &type metadata for Any[8], v14, v15);

  (*(v5 + 8))(v7, v17);
  return v18;
}

uint64_t sub_10035D840(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v25 = a3;
  v7 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(a4);
  v15 = *(v11 + 16);
  v24 = a2;
  v15(v13, a2, v10);
  LODWORD(a2) = (*(v11 + 88))(v13, v10);
  v16 = enum case for REMNavigationSpecifier.CommonListPathSpecifier.showSectionlessSection(_:);
  (*(v11 + 8))(v13, v10);
  v17 = a1[3];
  v18 = a1[4];
  sub_10000C36C(a1, v17);
  if (a2 != v16)
  {
    return (*(v18 + 88))(v24, v14, v14, v17, v18);
  }

  v19 = [v25 objectID];
  v21 = v26;
  v20 = v27;
  (*(v26 + 104))(v9, enum case for REMNavigationSpecifier.SectionPathSpecifier.showExpanded(_:), v27);
  v22 = (*(v18 + 80))(v19, v9, v14, v14, v17, v18);

  (*(v21 + 8))(v9, v20);
  return v22;
}

uint64_t sub_10035DAEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035EB18(v10, v12, sub_100371EFC, v19, sub_100371F3C, v14);

  return v16;
}

uint64_t sub_10035DCE0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035ED90(v10, v12, sub_100371EFC, v19, sub_10036FF30, v14);

  return v16;
}

uint64_t sub_10035DED4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F004(v10, v12, sub_100371EFC, v19, sub_10036F31C, v14);

  return v16;
}

uint64_t sub_10035E0C8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F28C(v10, v12, sub_100371EFC, v19, sub_10036FAA0, v14);

  return v16;
}

uint64_t sub_10035E2BC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F514(v10, v12, sub_100371EFC, v19, sub_1003703DC, v14);

  return v16;
}

uint64_t sub_10035E4B0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F79C(v10, v12, sub_100371EFC, v19, sub_1003708D0, v14);

  return v16;
}

uint64_t sub_10035E6A4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FA24(v10, v12, sub_100371EFC, v19, sub_100370D60, v14);

  return v16;
}

uint64_t sub_10035E898(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FCAC(v10, v12, sub_100371EFC, v19, sub_1003715D8, v14);

  return v16;
}

uint64_t sub_10035EA8C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_100058000(a4);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000C36C(a1, v8);
  return (*(v9 + 56))(a2, a3, v7, v7, v8, v9);
}

uint64_t sub_10035EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10078A340);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FD80);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035F004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FDB8);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  sub_100058000(&qword_10077FDB0);
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FD98);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035F514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FDC8);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  sub_100058000(&qword_10077FDC0);
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035F79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FDD8);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  sub_100058000(&qword_10077FDD0);
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035FA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FDE8);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  sub_100058000(&qword_10077FDE0);
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035FCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FDF8);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  sub_100058000(&qword_10077FDF0);
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035FF34(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035EB18(v10, v12, sub_10036E590, v19, sub_10036E598, v14);

  return v16;
}

uint64_t sub_100360128(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035ED90(v10, v12, sub_100371F00, v19, sub_10036FE18, v14);

  return v16;
}

uint64_t sub_10036031C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F004(v10, v12, sub_100371F00, v19, sub_10036F170, v14);

  return v16;
}

uint64_t sub_100360510(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F28C(v10, v12, sub_100371F00, v19, sub_10036F988, v14);

  return v16;
}

uint64_t sub_100360704(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F514(v10, v12, sub_100371F00, v19, sub_1003702A8, v14);

  return v16;
}

uint64_t sub_1003608F8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F79C(v10, v12, sub_100371F00, v19, sub_1003707B8, v14);

  return v16;
}

uint64_t sub_100360AEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FA24(v10, v12, sub_100371F00, v19, sub_100370C48, v14);

  return v16;
}

uint64_t sub_100360CE0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FCAC(v10, v12, sub_100371F00, v19, sub_100371284, v14);

  return v16;
}

uint64_t sub_100360ED4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_100058000(a4);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000C36C(a1, v8);
  return (*(v9 + 64))(a2, a3, v7, v7, v8, v9);
}

uint64_t sub_100360F60(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035EB18(v10, v12, sub_10036E650, v19, sub_10036E658, v14);

  return v16;
}

uint64_t sub_100361154(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035ED90(v10, v12, sub_100371F04, v19, sub_10036FE54, v14);

  return v16;
}

uint64_t sub_100361348(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F004(v10, v12, sub_100371F04, v19, sub_10036F1AC, v14);

  return v16;
}

uint64_t sub_10036153C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F28C(v10, v12, sub_100371F04, v19, sub_10036F9C4, v14);

  return v16;
}

uint64_t sub_100361730(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F514(v10, v12, sub_100371F04, v19, sub_100370300, v14);

  return v16;
}

uint64_t sub_100361924(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F79C(v10, v12, sub_100371F04, v19, sub_1003707F4, v14);

  return v16;
}

uint64_t sub_100361B18(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FA24(v10, v12, sub_100371F04, v19, sub_100370C84, v14);

  return v16;
}

uint64_t sub_100361D0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 smartList];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FCAC(v10, v12, sub_100371F04, v19, sub_1003712D0, v14);

  return v16;
}

uint64_t sub_100361F00(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_100058000(a4);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000C36C(a1, v8);
  return (*(v9 + 72))(a2, a3, v7, v7, v8, v9);
}

uint64_t sub_100361F8C(uint64_t a1, int a2, uint64_t (*a3)(_BYTE *, _BYTE *, void), uint64_t *a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v46 = a3;
  v45 = a2;
  v47 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v44[-v16];
  __chkstk_darwin(v15);
  v19 = &v44[-v18];
  v20 = *(v11 + 16);
  v53 = a1;
  v20(&v44[-v18], a1, v10);
  v21 = (*(v11 + 88))(v19, v10);
  if (v21 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v11 + 96))(v19, v10);

    v22 = *(sub_100058000(&qword_100777A40) + 48);
    v23 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
LABEL_6:
    (*(*(v23 - 8) + 8))(v19 + v22, v23);
    goto LABEL_7;
  }

  if (v21 == enum case for REMNavigationSpecifier.list(_:) || v21 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v11 + 96))(v19, v10);

    v22 = *(sub_100058000(&unk_100793000) + 48);
    v23 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    goto LABEL_6;
  }

  if (v21 == enum case for REMNavigationSpecifier.newList(_:))
  {
    goto LABEL_14;
  }

  if (v21 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v11 + 96))(v19, v10);

    v22 = *(sub_100058000(&unk_10076DF50) + 48);
    v23 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
    goto LABEL_6;
  }

  if (v21 == enum case for REMNavigationSpecifier.section(_:) || v21 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v11 + 96))(v19, v10);

    v22 = *(sub_100058000(&qword_100777A38) + 48);
    v23 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
    goto LABEL_6;
  }

  if (v21 == enum case for REMNavigationSpecifier.root(_:))
  {
    goto LABEL_14;
  }

  if (v21 == enum case for REMNavigationSpecifier.today(_:))
  {
    (*(v11 + 96))(v19, v10);
    v38 = v48;
    v39 = v50;
    (*(v8 + 32))(v48, v19, v50);
    v40 = &enum case for TTRListType.PredefinedSmartListType.today(_:);
LABEL_29:
    v41 = v49;
    v42 = v47;
    (*(v49 + 104))(v7, *v40, v47);
    v43 = v46(v7, v38, v45 & 1);
    (*(v41 + 8))(v7, v42);
    (*(v8 + 8))(v38, v39);
    return v43;
  }

  if (v21 == enum case for REMNavigationSpecifier.scheduled(_:))
  {
    (*(v11 + 96))(v19, v10);
    v38 = v48;
    v39 = v50;
    (*(v8 + 32))(v48, v19, v50);
    v40 = &enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
    goto LABEL_29;
  }

  if (v21 == enum case for REMNavigationSpecifier.allReminders(_:))
  {
    (*(v11 + 96))(v19, v10);
    v38 = v48;
    v39 = v50;
    (*(v8 + 32))(v48, v19, v50);
    v40 = &enum case for TTRListType.PredefinedSmartListType.all(_:);
    goto LABEL_29;
  }

  if (v21 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    (*(v11 + 96))(v19, v10);
    v38 = v48;
    v39 = v50;
    (*(v8 + 32))(v48, v19, v50);
    v40 = &enum case for TTRListType.PredefinedSmartListType.flagged(_:);
    goto LABEL_29;
  }

  if (v21 == enum case for REMNavigationSpecifier.search(_:))
  {
    goto LABEL_14;
  }

  if (v21 == enum case for REMNavigationSpecifier.assigned(_:))
  {
    (*(v11 + 96))(v19, v10);
    v38 = v48;
    v39 = v50;
    (*(v8 + 32))(v48, v19, v50);
    v40 = &enum case for TTRListType.PredefinedSmartListType.assigned(_:);
    goto LABEL_29;
  }

  if (v21 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    (*(v11 + 96))(v19, v10);
    v38 = v48;
    v39 = v50;
    (*(v8 + 32))(v48, v19, v50);
    v40 = &enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
    goto LABEL_29;
  }

  if (v21 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    goto LABEL_14;
  }

  if (v21 == enum case for REMNavigationSpecifier.completed(_:))
  {
    (*(v11 + 96))(v19, v10);
    v38 = v48;
    v39 = v50;
    (*(v8 + 32))(v48, v19, v50);
    v40 = &enum case for TTRListType.PredefinedSmartListType.completed(_:);
    goto LABEL_29;
  }

  if (v21 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
LABEL_14:
    (*(v11 + 8))(v19, v10);
    goto LABEL_7;
  }

  if (v21 != enum case for REMNavigationSpecifier.newReminder(_:) && v21 != enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

LABEL_7:
  if (qword_100767230 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100780A58);
  v20(v17, v53, v10);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v54[0] = v28;
    *v27 = 136315138;
    v20(v14, v17, v10);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    (*(v11 + 8))(v17, v10);
    v32 = sub_100004060(v29, v31, v54);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Tried to navigate to unknown smart list {navigation: %s}", v27, 0xCu);
    sub_100004758(v28);
  }

  else
  {

    (*(v11 + 8))(v17, v10);
  }

  v33 = objc_opt_self();
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v34._object = 0x8000000100682F30;
  v34._countAndFlagsBits = 0xD000000000000028;
  String.append(_:)(v34);
  _print_unlocked<A, B>(_:_:)();
  v35 = String._bridgeToObjectiveC()();

  v36 = [v33 internalErrorWithDebugDescription:v35];

  sub_100058000(v51);
  swift_allocObject();
  return Promise.init(error:)();
}

uint64_t sub_1003629B0(uint64_t a1, uint64_t a2, int a3)
{
  v102 = a3;
  v111 = a1;
  v103 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v103);
  v104 = &v89 - v4;
  v5 = sub_100058000(&unk_10078D520);
  v6 = __chkstk_darwin(v5 - 8);
  v100 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v107 = &v89 - v9;
  __chkstk_darwin(v8);
  v108 = &v89 - v10;
  v106 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v101 = *(v106 - 8);
  v11 = *(v101 + 64);
  v12 = __chkstk_darwin(v106);
  v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v113 = &v89 - v14;
  __chkstk_darwin(v13);
  v110 = &v89 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v89 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v116 = *(v19 - 8);
  *&v117 = v19;
  v20 = __chkstk_darwin(v19);
  v99 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v112 = &v89 - v23;
  v24 = __chkstk_darwin(v22);
  v109 = &v89 - v25;
  v105 = v26;
  __chkstk_darwin(v24);
  v114 = &v89 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v89 - v33;
  v36 = (v29 + 16);
  v35 = *(v29 + 16);
  v37 = a2;
  v35(&v89 - v33, a2, v28);
  v38 = (*(v29 + 88))(v34, v28);
  if (v38 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v38 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v34, v28);
  }

  else
  {
    if (v38 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v117 = *(v115 + 2);
      v118 = v117;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      v39 = dispatch thunk of Promise.cast<A>(as:)();

      return v39;
    }

    if (v38 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v38 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v66 = v100;
      sub_10000794C(v18, v100, &unk_10078D520);
      if (v36(&v34[v18], 1, v37) == 1)
      {
        sub_1000079B4(v107, &unk_10078D520);
        sub_1000079B4(v108, &unk_10078D520);
        (*(v28 + 8))(v66, v37);
        goto LABEL_16;
      }

      v75 = v98;
      v90(v98, &v34[v18], v37);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v76 = v66;
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v28 + 8);
      v67(v75, v37);
      v65 = v28;
      sub_1000079B4(v107, &unk_10078D520);
      sub_1000079B4(v108, &unk_10078D520);
      v67(v76, v37);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v77 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  v35(v32, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v42 = v116;
  v41 = v117;
  if ((*(v116 + 48))(v18, 1, v117) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v43 = objc_opt_self();
    v44 = String._bridgeToObjectiveC()();
    v45 = [v43 internalErrorWithDebugDescription:v44];

    sub_100058000(&qword_10078A340);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v46 = v110;
  v47 = (v42 + 32);
  v97 = *(v42 + 32);
  v48 = v114;
  v97(v114, v18, v41);
  v49 = v101;
  v50 = v101 + 16;
  v51 = *(v101 + 16);
  v94 = v11;
  v52 = v106;
  v51(v46, v111, v106);
  v96 = v51;
  v95 = v50;
  v53 = *(v42 + 16);
  v53(v109, v48, v41);
  v51(v113, v46, v52);
  v54 = v109;
  v93 = v53;
  v53(v112, v109, v41);
  v55 = v41;
  v56 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v57 = v56 + v94;
  v94 = v42 + 16;
  v58 = (*(v42 + 80) + v57 + 1) & ~*(v42 + 80);
  v92 = *(v42 + 80);
  v59 = swift_allocObject();
  v60 = v115;
  *(v59 + 16) = v115;
  v61 = *(v49 + 32);
  v91 = v49 + 32;
  v90 = v61;
  v61((v59 + v56), v110, v52);
  v102 &= 1u;
  *(v59 + v57) = v102;
  v109 = v47;
  v110 = v59;
  v62 = v59 + v58;
  v37 = v52;
  v97(v62, v54, v55);
  swift_beginAccess();
  sub_100010540((v60 + 12), &v118);
  v28 = v49;

  v63 = v108;
  sub_1003971A0(v108);
  sub_100015124(&v118);
  v64 = v107;
  v96(v107, v111, v37);
  (*(v49 + 56))(v64, 0, 1, v37);
  v34 = *(v103 + 48);
  v18 = v104;
  sub_10000794C(v63, v104, &unk_10078D520);
  sub_10000794C(v64, &v34[v18], &unk_10078D520);
  v36 = *(v49 + 48);
  if (v36(v18, 1, v37) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v64, &unk_10078D520);
  sub_1000079B4(v63, &unk_10078D520);
  if (v36(&v34[v18], 1, v37) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v67 = *(v28 + 8);
LABEL_17:
    v68 = v116;
    v67(v113, v37);
    v69 = *(v68 + 8);
    v70 = v117;
    v69(v112, v117);
    sub_100391414(0);
    v71 = swift_allocObject();
    v72 = v110;
    *(v71 + 16) = sub_10036E884;
    *(v71 + 24) = v72;

    v73 = zalgo.getter();
    v74 = dispatch thunk of Promise.then<A>(on:closure:)();

    v69(v114, v70);
    return v74;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v65 = v49;
LABEL_19:
  v78 = v92;
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  v79 = v113;
  v80 = _print_unlocked<A, B>(_:_:)();
  v115 = &v89;
  v81 = *(&v118 + 1);
  v111 = v118;
  __chkstk_darwin(v80);
  *(&v89 - 2) = v79;
  *(&v89 - 8) = v102;
  v82 = v99;
  v83 = v112;
  v84 = v117;
  v93(v99, v112, v117);
  v85 = (v78 + 16) & ~v78;
  v86 = swift_allocObject();
  v97((v86 + v85), v82, v84);
  v87 = sub_10035EB18(v111, v81, sub_10036E8CC, (&v89 - 4), sub_10036E8D8, v86);

  (*(v65 + 8))(v79, v106);
  v88 = *(v116 + 8);
  v88(v83, v84);

  v88(v114, v84);
  return v87;
}

uint64_t sub_100363730(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a3;
  v113 = a1;
  v105 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v105);
  v106 = &v91 - v4;
  v5 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v5 - 8);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v8;
  __chkstk_darwin(v9);
  v110 = &v91 - v10;
  v108 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v108);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v91 - v13;
  __chkstk_darwin(v14);
  v112 = &v91 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v91 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v118 = *(v19 - 8);
  *&v119 = v19;
  __chkstk_darwin(v19);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v91 - v22;
  __chkstk_darwin(v23);
  v111 = &v91 - v24;
  v107 = v25;
  __chkstk_darwin(v26);
  v116 = &v91 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v91 - v34;
  v37 = (v29 + 16);
  v36 = *(v29 + 16);
  v38 = a2;
  v36(&v91 - v34, a2, v28, v33);
  v39 = (*(v29 + 88))(v35, v28);
  if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v119 = *(v117 + 2);
      v120 = v119;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      sub_100058000(&qword_100775650);
      v40 = dispatch thunk of Promise.cast<A>(as:)();

      return v40;
    }

    if (v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v67 = v102;
      sub_10000794C(v18, v102, &unk_10078D520);
      if (v37(&v35[v18], 1, v38) == 1)
      {
        sub_1000079B4(v109, &unk_10078D520);
        sub_1000079B4(v110, &unk_10078D520);
        (*(v28 + 8))(v67, v38);
        goto LABEL_16;
      }

      v76 = v100;
      v92(v100, &v35[v18], v38);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v77 = v67;
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = *(v28 + 8);
      v68(v76, v38);
      v66 = v28;
      sub_1000079B4(v109, &unk_10078D520);
      sub_1000079B4(v110, &unk_10078D520);
      v68(v77, v38);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v78 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  (v36)(v31, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v43 = v118;
  v42 = v119;
  if ((*(v118 + 48))(v18, 1, v119) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = v112;
  v48 = (v43 + 32);
  v99 = *(v43 + 32);
  v49 = v116;
  v99(v116, v18, v42);
  v50 = v103;
  v51 = v103 + 16;
  v52 = *(v103 + 16);
  v96 = v11;
  v53 = v108;
  v52(v47, v113, v108);
  v98 = v52;
  v97 = v51;
  v54 = *(v43 + 16);
  v54(v111, v49, v42);
  v52(v115, v47, v53);
  v55 = v111;
  v95 = v54;
  v54(v114, v111, v42);
  v56 = v42;
  v57 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v58 = v57 + v96;
  v96 = v43 + 16;
  v59 = (*(v43 + 80) + v58 + 1) & ~*(v43 + 80);
  v94 = *(v43 + 80);
  v60 = swift_allocObject();
  v61 = v117;
  *(v60 + 16) = v117;
  v62 = *(v50 + 32);
  v93 = v50 + 32;
  v92 = v62;
  v62((v60 + v57), v112, v53);
  v104 &= 1u;
  *(v60 + v58) = v104;
  v111 = v48;
  v112 = v60;
  v63 = v60 + v59;
  v38 = v53;
  v99(v63, v55, v56);
  swift_beginAccess();
  sub_100010540((v61 + 12), &v120);
  v28 = v50;

  v64 = v110;
  sub_1003971A0(v110);
  sub_100015124(&v120);
  v65 = v109;
  v98(v109, v113, v38);
  (*(v50 + 56))(v65, 0, 1, v38);
  v35 = *(v105 + 48);
  v18 = v106;
  sub_10000794C(v64, v106, &unk_10078D520);
  sub_10000794C(v65, &v35[v18], &unk_10078D520);
  v37 = *(v50 + 48);
  if (v37(v18, 1, v38) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v65, &unk_10078D520);
  sub_1000079B4(v64, &unk_10078D520);
  if (v37(&v35[v18], 1, v38) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v68 = *(v28 + 8);
LABEL_17:
    v69 = v118;
    v68(v115, v38);
    v70 = *(v69 + 8);
    v71 = v119;
    v70(v114, v119);
    sub_100391414(0);
    v72 = swift_allocObject();
    v73 = v112;
    *(v72 + 16) = sub_10036FF6C;
    *(v72 + 24) = v73;

    v74 = zalgo.getter();
    sub_100058000(&qword_100775650);
    v75 = dispatch thunk of Promise.then<A>(on:closure:)();

    v70(v116, v71);
    return v75;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v66 = v50;
LABEL_19:
  v79 = v94;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v80 = v115;
  v81 = _print_unlocked<A, B>(_:_:)();
  v117 = &v91;
  v82 = *(&v120 + 1);
  v113 = v120;
  v83 = __chkstk_darwin(v81);
  *(&v91 - 2) = v80;
  *(&v91 - 8) = v104;
  v84 = v101;
  v85 = v114;
  v86 = v119;
  (v95)(v101, v114, v119, v83);
  v87 = (v79 + 16) & ~v79;
  v88 = swift_allocObject();
  v99((v88 + v87), v84, v86);
  v89 = sub_10035ED90(v113, v82, sub_100371E88, (&v91 - 4), sub_10036FFB4, v88);

  (*(v66 + 8))(v80, v108);
  v90 = *(v118 + 8);
  v90(v85, v86);

  v90(v116, v86);
  return v89;
}

uint64_t sub_1003644C8(uint64_t a1, uint64_t a2, int a3)
{
  v102 = a3;
  v111 = a1;
  v103 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v103);
  v104 = &v89 - v4;
  v5 = sub_100058000(&unk_10078D520);
  v6 = __chkstk_darwin(v5 - 8);
  v100 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v107 = &v89 - v9;
  __chkstk_darwin(v8);
  v108 = &v89 - v10;
  v106 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v101 = *(v106 - 8);
  v11 = *(v101 + 64);
  v12 = __chkstk_darwin(v106);
  v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v113 = &v89 - v14;
  __chkstk_darwin(v13);
  v110 = &v89 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v89 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v116 = *(v19 - 8);
  *&v117 = v19;
  v20 = __chkstk_darwin(v19);
  v99 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v112 = &v89 - v23;
  v24 = __chkstk_darwin(v22);
  v109 = &v89 - v25;
  v105 = v26;
  __chkstk_darwin(v24);
  v114 = &v89 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v89 - v33;
  v36 = (v29 + 16);
  v35 = *(v29 + 16);
  v37 = a2;
  v35(&v89 - v33, a2, v28);
  v38 = (*(v29 + 88))(v34, v28);
  if (v38 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v38 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v34, v28);
  }

  else
  {
    if (v38 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v117 = *(v115 + 2);
      v118 = v117;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      sub_100058000(&qword_10077FDB0);
      v39 = dispatch thunk of Promise.cast<A>(as:)();

      return v39;
    }

    if (v38 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v38 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v66 = v100;
      sub_10000794C(v18, v100, &unk_10078D520);
      if (v36(&v34[v18], 1, v37) == 1)
      {
        sub_1000079B4(v107, &unk_10078D520);
        sub_1000079B4(v108, &unk_10078D520);
        (*(v28 + 8))(v66, v37);
        goto LABEL_16;
      }

      v75 = v98;
      v90(v98, &v34[v18], v37);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v76 = v66;
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v28 + 8);
      v67(v75, v37);
      v65 = v28;
      sub_1000079B4(v107, &unk_10078D520);
      sub_1000079B4(v108, &unk_10078D520);
      v67(v76, v37);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v77 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  v35(v32, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v42 = v116;
  v41 = v117;
  if ((*(v116 + 48))(v18, 1, v117) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v43 = objc_opt_self();
    v44 = String._bridgeToObjectiveC()();
    v45 = [v43 internalErrorWithDebugDescription:v44];

    sub_100058000(&qword_10077FDB8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v46 = v110;
  v47 = (v42 + 32);
  v97 = *(v42 + 32);
  v48 = v114;
  v97(v114, v18, v41);
  v49 = v101;
  v50 = v101 + 16;
  v51 = *(v101 + 16);
  v94 = v11;
  v52 = v106;
  v51(v46, v111, v106);
  v96 = v51;
  v95 = v50;
  v53 = *(v42 + 16);
  v53(v109, v48, v41);
  v51(v113, v46, v52);
  v54 = v109;
  v93 = v53;
  v53(v112, v109, v41);
  v55 = v41;
  v56 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v57 = v56 + v94;
  v94 = v42 + 16;
  v58 = (*(v42 + 80) + v57 + 1) & ~*(v42 + 80);
  v92 = *(v42 + 80);
  v59 = swift_allocObject();
  v60 = v115;
  *(v59 + 16) = v115;
  v61 = *(v49 + 32);
  v91 = v49 + 32;
  v90 = v61;
  v61((v59 + v56), v110, v52);
  v102 &= 1u;
  *(v59 + v57) = v102;
  v109 = v47;
  v110 = v59;
  v62 = v59 + v58;
  v37 = v52;
  v97(v62, v54, v55);
  swift_beginAccess();
  sub_100010540((v60 + 12), &v118);
  v28 = v49;

  v63 = v108;
  sub_1003971A0(v108);
  sub_100015124(&v118);
  v64 = v107;
  v96(v107, v111, v37);
  (*(v49 + 56))(v64, 0, 1, v37);
  v34 = *(v103 + 48);
  v18 = v104;
  sub_10000794C(v63, v104, &unk_10078D520);
  sub_10000794C(v64, &v34[v18], &unk_10078D520);
  v36 = *(v49 + 48);
  if (v36(v18, 1, v37) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v64, &unk_10078D520);
  sub_1000079B4(v63, &unk_10078D520);
  if (v36(&v34[v18], 1, v37) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v67 = *(v28 + 8);
LABEL_17:
    v68 = v116;
    v67(v113, v37);
    v69 = *(v68 + 8);
    v70 = v117;
    v69(v112, v117);
    sub_100391414(0);
    v71 = swift_allocObject();
    v72 = v110;
    *(v71 + 16) = sub_10036F358;
    *(v71 + 24) = v72;

    v73 = zalgo.getter();
    sub_100058000(&qword_10077FDB0);
    v74 = dispatch thunk of Promise.then<A>(on:closure:)();

    v69(v114, v70);
    return v74;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v65 = v49;
LABEL_19:
  v78 = v92;
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  v79 = v113;
  v80 = _print_unlocked<A, B>(_:_:)();
  v115 = &v89;
  v81 = *(&v118 + 1);
  v111 = v118;
  __chkstk_darwin(v80);
  *(&v89 - 2) = v79;
  *(&v89 - 8) = v102;
  v82 = v99;
  v83 = v112;
  v84 = v117;
  v93(v99, v112, v117);
  v85 = (v78 + 16) & ~v78;
  v86 = swift_allocObject();
  v97((v86 + v85), v82, v84);
  v87 = sub_10035F004(v111, v81, sub_100371E88, (&v89 - 4), sub_10036F3A0, v86);

  (*(v65 + 8))(v79, v106);
  v88 = *(v116 + 8);
  v88(v83, v84);

  v88(v114, v84);
  return v87;
}

uint64_t sub_100365260(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a3;
  v113 = a1;
  v105 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v105);
  v106 = &v91 - v4;
  v5 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v5 - 8);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v8;
  __chkstk_darwin(v9);
  v110 = &v91 - v10;
  v108 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v108);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v91 - v13;
  __chkstk_darwin(v14);
  v112 = &v91 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v91 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v118 = *(v19 - 8);
  *&v119 = v19;
  __chkstk_darwin(v19);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v91 - v22;
  __chkstk_darwin(v23);
  v111 = &v91 - v24;
  v107 = v25;
  __chkstk_darwin(v26);
  v116 = &v91 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v91 - v34;
  v37 = (v29 + 16);
  v36 = *(v29 + 16);
  v38 = a2;
  v36(&v91 - v34, a2, v28, v33);
  v39 = (*(v29 + 88))(v35, v28);
  if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v119 = *(v117 + 2);
      v120 = v119;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      sub_100058000(&qword_10077FD70);
      v40 = dispatch thunk of Promise.cast<A>(as:)();

      return v40;
    }

    if (v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v67 = v102;
      sub_10000794C(v18, v102, &unk_10078D520);
      if (v37(&v35[v18], 1, v38) == 1)
      {
        sub_1000079B4(v109, &unk_10078D520);
        sub_1000079B4(v110, &unk_10078D520);
        (*(v28 + 8))(v67, v38);
        goto LABEL_16;
      }

      v76 = v100;
      v92(v100, &v35[v18], v38);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v77 = v67;
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = *(v28 + 8);
      v68(v76, v38);
      v66 = v28;
      sub_1000079B4(v109, &unk_10078D520);
      sub_1000079B4(v110, &unk_10078D520);
      v68(v77, v38);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v78 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  (v36)(v31, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v43 = v118;
  v42 = v119;
  if ((*(v118 + 48))(v18, 1, v119) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10077FD98);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = v112;
  v48 = (v43 + 32);
  v99 = *(v43 + 32);
  v49 = v116;
  v99(v116, v18, v42);
  v50 = v103;
  v51 = v103 + 16;
  v52 = *(v103 + 16);
  v96 = v11;
  v53 = v108;
  v52(v47, v113, v108);
  v98 = v52;
  v97 = v51;
  v54 = *(v43 + 16);
  v54(v111, v49, v42);
  v52(v115, v47, v53);
  v55 = v111;
  v95 = v54;
  v54(v114, v111, v42);
  v56 = v42;
  v57 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v58 = v57 + v96;
  v96 = v43 + 16;
  v59 = (*(v43 + 80) + v58 + 1) & ~*(v43 + 80);
  v94 = *(v43 + 80);
  v60 = swift_allocObject();
  v61 = v117;
  *(v60 + 16) = v117;
  v62 = *(v50 + 32);
  v93 = v50 + 32;
  v92 = v62;
  v62((v60 + v57), v112, v53);
  v104 &= 1u;
  *(v60 + v58) = v104;
  v111 = v48;
  v112 = v60;
  v63 = v60 + v59;
  v38 = v53;
  v99(v63, v55, v56);
  swift_beginAccess();
  sub_100010540((v61 + 12), &v120);
  v28 = v50;

  v64 = v110;
  sub_1003971A0(v110);
  sub_100015124(&v120);
  v65 = v109;
  v98(v109, v113, v38);
  (*(v50 + 56))(v65, 0, 1, v38);
  v35 = *(v105 + 48);
  v18 = v106;
  sub_10000794C(v64, v106, &unk_10078D520);
  sub_10000794C(v65, &v35[v18], &unk_10078D520);
  v37 = *(v50 + 48);
  if (v37(v18, 1, v38) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v65, &unk_10078D520);
  sub_1000079B4(v64, &unk_10078D520);
  if (v37(&v35[v18], 1, v38) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v68 = *(v28 + 8);
LABEL_17:
    v69 = v118;
    v68(v115, v38);
    v70 = *(v69 + 8);
    v71 = v119;
    v70(v114, v119);
    sub_100391414(0);
    v72 = swift_allocObject();
    v73 = v112;
    *(v72 + 16) = sub_10036FADC;
    *(v72 + 24) = v73;

    v74 = zalgo.getter();
    sub_100058000(&qword_10077FD70);
    v75 = dispatch thunk of Promise.then<A>(on:closure:)();

    v70(v116, v71);
    return v75;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v66 = v50;
LABEL_19:
  v79 = v94;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v80 = v115;
  v81 = _print_unlocked<A, B>(_:_:)();
  v117 = &v91;
  v82 = *(&v120 + 1);
  v113 = v120;
  v83 = __chkstk_darwin(v81);
  *(&v91 - 2) = v80;
  *(&v91 - 8) = v104;
  v84 = v101;
  v85 = v114;
  v86 = v119;
  (v95)(v101, v114, v119, v83);
  v87 = (v79 + 16) & ~v79;
  v88 = swift_allocObject();
  v99((v88 + v87), v84, v86);
  v89 = sub_10035F28C(v113, v82, sub_100371E88, (&v91 - 4), sub_10036FB24, v88);

  (*(v66 + 8))(v80, v108);
  v90 = *(v118 + 8);
  v90(v85, v86);

  v90(v116, v86);
  return v89;
}

uint64_t sub_100365FF8(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a3;
  v113 = a1;
  v105 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v105);
  v106 = &v91 - v4;
  v5 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v5 - 8);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v8;
  __chkstk_darwin(v9);
  v110 = &v91 - v10;
  v108 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v108);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v91 - v13;
  __chkstk_darwin(v14);
  v112 = &v91 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v91 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v118 = *(v19 - 8);
  *&v119 = v19;
  __chkstk_darwin(v19);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v91 - v22;
  __chkstk_darwin(v23);
  v111 = &v91 - v24;
  v107 = v25;
  __chkstk_darwin(v26);
  v116 = &v91 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v91 - v34;
  v37 = (v29 + 16);
  v36 = *(v29 + 16);
  v38 = a2;
  v36(&v91 - v34, a2, v28, v33);
  v39 = (*(v29 + 88))(v35, v28);
  if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v119 = *(v117 + 2);
      v120 = v119;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      sub_100058000(&qword_10077FDC0);
      v40 = dispatch thunk of Promise.cast<A>(as:)();

      return v40;
    }

    if (v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v67 = v102;
      sub_10000794C(v18, v102, &unk_10078D520);
      if (v37(&v35[v18], 1, v38) == 1)
      {
        sub_1000079B4(v109, &unk_10078D520);
        sub_1000079B4(v110, &unk_10078D520);
        (*(v28 + 8))(v67, v38);
        goto LABEL_16;
      }

      v76 = v100;
      v92(v100, &v35[v18], v38);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v77 = v67;
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = *(v28 + 8);
      v68(v76, v38);
      v66 = v28;
      sub_1000079B4(v109, &unk_10078D520);
      sub_1000079B4(v110, &unk_10078D520);
      v68(v77, v38);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v78 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  (v36)(v31, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v43 = v118;
  v42 = v119;
  if ((*(v118 + 48))(v18, 1, v119) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10077FDC8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = v112;
  v48 = (v43 + 32);
  v99 = *(v43 + 32);
  v49 = v116;
  v99(v116, v18, v42);
  v50 = v103;
  v51 = v103 + 16;
  v52 = *(v103 + 16);
  v96 = v11;
  v53 = v108;
  v52(v47, v113, v108);
  v98 = v52;
  v97 = v51;
  v54 = *(v43 + 16);
  v54(v111, v49, v42);
  v52(v115, v47, v53);
  v55 = v111;
  v95 = v54;
  v54(v114, v111, v42);
  v56 = v42;
  v57 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v58 = v57 + v96;
  v96 = v43 + 16;
  v59 = (*(v43 + 80) + v58 + 1) & ~*(v43 + 80);
  v94 = *(v43 + 80);
  v60 = swift_allocObject();
  v61 = v117;
  *(v60 + 16) = v117;
  v62 = *(v50 + 32);
  v93 = v50 + 32;
  v92 = v62;
  v62((v60 + v57), v112, v53);
  v104 &= 1u;
  *(v60 + v58) = v104;
  v111 = v48;
  v112 = v60;
  v63 = v60 + v59;
  v38 = v53;
  v99(v63, v55, v56);
  swift_beginAccess();
  sub_100010540((v61 + 12), &v120);
  v28 = v50;

  v64 = v110;
  sub_1003971A0(v110);
  sub_100015124(&v120);
  v65 = v109;
  v98(v109, v113, v38);
  (*(v50 + 56))(v65, 0, 1, v38);
  v35 = *(v105 + 48);
  v18 = v106;
  sub_10000794C(v64, v106, &unk_10078D520);
  sub_10000794C(v65, &v35[v18], &unk_10078D520);
  v37 = *(v50 + 48);
  if (v37(v18, 1, v38) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v65, &unk_10078D520);
  sub_1000079B4(v64, &unk_10078D520);
  if (v37(&v35[v18], 1, v38) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v68 = *(v28 + 8);
LABEL_17:
    v69 = v118;
    v68(v115, v38);
    v70 = *(v69 + 8);
    v71 = v119;
    v70(v114, v119);
    sub_100391414(0);
    v72 = swift_allocObject();
    v73 = v112;
    *(v72 + 16) = sub_100370418;
    *(v72 + 24) = v73;

    v74 = zalgo.getter();
    sub_100058000(&qword_10077FDC0);
    v75 = dispatch thunk of Promise.then<A>(on:closure:)();

    v70(v116, v71);
    return v75;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v66 = v50;
LABEL_19:
  v79 = v94;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v80 = v115;
  v81 = _print_unlocked<A, B>(_:_:)();
  v117 = &v91;
  v82 = *(&v120 + 1);
  v113 = v120;
  v83 = __chkstk_darwin(v81);
  *(&v91 - 2) = v80;
  *(&v91 - 8) = v104;
  v84 = v101;
  v85 = v114;
  v86 = v119;
  (v95)(v101, v114, v119, v83);
  v87 = (v79 + 16) & ~v79;
  v88 = swift_allocObject();
  v99((v88 + v87), v84, v86);
  v89 = sub_10035F514(v113, v82, sub_100371E88, (&v91 - 4), sub_100370490, v88);

  (*(v66 + 8))(v80, v108);
  v90 = *(v118 + 8);
  v90(v85, v86);

  v90(v116, v86);
  return v89;
}

uint64_t sub_100366D90(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a3;
  v113 = a1;
  v105 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v105);
  v106 = &v91 - v4;
  v5 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v5 - 8);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v8;
  __chkstk_darwin(v9);
  v110 = &v91 - v10;
  v108 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v108);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v91 - v13;
  __chkstk_darwin(v14);
  v112 = &v91 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v91 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v118 = *(v19 - 8);
  *&v119 = v19;
  __chkstk_darwin(v19);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v91 - v22;
  __chkstk_darwin(v23);
  v111 = &v91 - v24;
  v107 = v25;
  __chkstk_darwin(v26);
  v116 = &v91 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v91 - v34;
  v37 = (v29 + 16);
  v36 = *(v29 + 16);
  v38 = a2;
  v36(&v91 - v34, a2, v28, v33);
  v39 = (*(v29 + 88))(v35, v28);
  if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v119 = *(v117 + 2);
      v120 = v119;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      sub_100058000(&qword_10077FDD0);
      v40 = dispatch thunk of Promise.cast<A>(as:)();

      return v40;
    }

    if (v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v67 = v102;
      sub_10000794C(v18, v102, &unk_10078D520);
      if (v37(&v35[v18], 1, v38) == 1)
      {
        sub_1000079B4(v109, &unk_10078D520);
        sub_1000079B4(v110, &unk_10078D520);
        (*(v28 + 8))(v67, v38);
        goto LABEL_16;
      }

      v76 = v100;
      v92(v100, &v35[v18], v38);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v77 = v67;
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = *(v28 + 8);
      v68(v76, v38);
      v66 = v28;
      sub_1000079B4(v109, &unk_10078D520);
      sub_1000079B4(v110, &unk_10078D520);
      v68(v77, v38);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v78 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  (v36)(v31, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v43 = v118;
  v42 = v119;
  if ((*(v118 + 48))(v18, 1, v119) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10077FDD8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = v112;
  v48 = (v43 + 32);
  v99 = *(v43 + 32);
  v49 = v116;
  v99(v116, v18, v42);
  v50 = v103;
  v51 = v103 + 16;
  v52 = *(v103 + 16);
  v96 = v11;
  v53 = v108;
  v52(v47, v113, v108);
  v98 = v52;
  v97 = v51;
  v54 = *(v43 + 16);
  v54(v111, v49, v42);
  v52(v115, v47, v53);
  v55 = v111;
  v95 = v54;
  v54(v114, v111, v42);
  v56 = v42;
  v57 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v58 = v57 + v96;
  v96 = v43 + 16;
  v59 = (*(v43 + 80) + v58 + 1) & ~*(v43 + 80);
  v94 = *(v43 + 80);
  v60 = swift_allocObject();
  v61 = v117;
  *(v60 + 16) = v117;
  v62 = *(v50 + 32);
  v93 = v50 + 32;
  v92 = v62;
  v62((v60 + v57), v112, v53);
  v104 &= 1u;
  *(v60 + v58) = v104;
  v111 = v48;
  v112 = v60;
  v63 = v60 + v59;
  v38 = v53;
  v99(v63, v55, v56);
  swift_beginAccess();
  sub_100010540((v61 + 12), &v120);
  v28 = v50;

  v64 = v110;
  sub_1003971A0(v110);
  sub_100015124(&v120);
  v65 = v109;
  v98(v109, v113, v38);
  (*(v50 + 56))(v65, 0, 1, v38);
  v35 = *(v105 + 48);
  v18 = v106;
  sub_10000794C(v64, v106, &unk_10078D520);
  sub_10000794C(v65, &v35[v18], &unk_10078D520);
  v37 = *(v50 + 48);
  if (v37(v18, 1, v38) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v65, &unk_10078D520);
  sub_1000079B4(v64, &unk_10078D520);
  if (v37(&v35[v18], 1, v38) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v68 = *(v28 + 8);
LABEL_17:
    v69 = v118;
    v68(v115, v38);
    v70 = *(v69 + 8);
    v71 = v119;
    v70(v114, v119);
    sub_100391414(0);
    v72 = swift_allocObject();
    v73 = v112;
    *(v72 + 16) = sub_10037090C;
    *(v72 + 24) = v73;

    v74 = zalgo.getter();
    sub_100058000(&qword_10077FDD0);
    v75 = dispatch thunk of Promise.then<A>(on:closure:)();

    v70(v116, v71);
    return v75;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v66 = v50;
LABEL_19:
  v79 = v94;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v80 = v115;
  v81 = _print_unlocked<A, B>(_:_:)();
  v117 = &v91;
  v82 = *(&v120 + 1);
  v113 = v120;
  v83 = __chkstk_darwin(v81);
  *(&v91 - 2) = v80;
  *(&v91 - 8) = v104;
  v84 = v101;
  v85 = v114;
  v86 = v119;
  (v95)(v101, v114, v119, v83);
  v87 = (v79 + 16) & ~v79;
  v88 = swift_allocObject();
  v99((v88 + v87), v84, v86);
  v89 = sub_10035F79C(v113, v82, sub_100371E88, (&v91 - 4), sub_100370954, v88);

  (*(v66 + 8))(v80, v108);
  v90 = *(v118 + 8);
  v90(v85, v86);

  v90(v116, v86);
  return v89;
}

uint64_t sub_100367B28(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a3;
  v113 = a1;
  v105 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v105);
  v106 = &v91 - v4;
  v5 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v5 - 8);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v8;
  __chkstk_darwin(v9);
  v110 = &v91 - v10;
  v108 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v108);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v91 - v13;
  __chkstk_darwin(v14);
  v112 = &v91 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v91 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v118 = *(v19 - 8);
  *&v119 = v19;
  __chkstk_darwin(v19);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v91 - v22;
  __chkstk_darwin(v23);
  v111 = &v91 - v24;
  v107 = v25;
  __chkstk_darwin(v26);
  v116 = &v91 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v91 - v34;
  v37 = (v29 + 16);
  v36 = *(v29 + 16);
  v38 = a2;
  v36(&v91 - v34, a2, v28, v33);
  v39 = (*(v29 + 88))(v35, v28);
  if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v119 = *(v117 + 2);
      v120 = v119;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      sub_100058000(&qword_10077FDE0);
      v40 = dispatch thunk of Promise.cast<A>(as:)();

      return v40;
    }

    if (v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v67 = v102;
      sub_10000794C(v18, v102, &unk_10078D520);
      if (v37(&v35[v18], 1, v38) == 1)
      {
        sub_1000079B4(v109, &unk_10078D520);
        sub_1000079B4(v110, &unk_10078D520);
        (*(v28 + 8))(v67, v38);
        goto LABEL_16;
      }

      v76 = v100;
      v92(v100, &v35[v18], v38);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v77 = v67;
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = *(v28 + 8);
      v68(v76, v38);
      v66 = v28;
      sub_1000079B4(v109, &unk_10078D520);
      sub_1000079B4(v110, &unk_10078D520);
      v68(v77, v38);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v78 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  (v36)(v31, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v43 = v118;
  v42 = v119;
  if ((*(v118 + 48))(v18, 1, v119) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10077FDE8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = v112;
  v48 = (v43 + 32);
  v99 = *(v43 + 32);
  v49 = v116;
  v99(v116, v18, v42);
  v50 = v103;
  v51 = v103 + 16;
  v52 = *(v103 + 16);
  v96 = v11;
  v53 = v108;
  v52(v47, v113, v108);
  v98 = v52;
  v97 = v51;
  v54 = *(v43 + 16);
  v54(v111, v49, v42);
  v52(v115, v47, v53);
  v55 = v111;
  v95 = v54;
  v54(v114, v111, v42);
  v56 = v42;
  v57 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v58 = v57 + v96;
  v96 = v43 + 16;
  v59 = (*(v43 + 80) + v58 + 1) & ~*(v43 + 80);
  v94 = *(v43 + 80);
  v60 = swift_allocObject();
  v61 = v117;
  *(v60 + 16) = v117;
  v62 = *(v50 + 32);
  v93 = v50 + 32;
  v92 = v62;
  v62((v60 + v57), v112, v53);
  v104 &= 1u;
  *(v60 + v58) = v104;
  v111 = v48;
  v112 = v60;
  v63 = v60 + v59;
  v38 = v53;
  v99(v63, v55, v56);
  swift_beginAccess();
  sub_100010540((v61 + 12), &v120);
  v28 = v50;

  v64 = v110;
  sub_1003971A0(v110);
  sub_100015124(&v120);
  v65 = v109;
  v98(v109, v113, v38);
  (*(v50 + 56))(v65, 0, 1, v38);
  v35 = *(v105 + 48);
  v18 = v106;
  sub_10000794C(v64, v106, &unk_10078D520);
  sub_10000794C(v65, &v35[v18], &unk_10078D520);
  v37 = *(v50 + 48);
  if (v37(v18, 1, v38) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v65, &unk_10078D520);
  sub_1000079B4(v64, &unk_10078D520);
  if (v37(&v35[v18], 1, v38) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v68 = *(v28 + 8);
LABEL_17:
    v69 = v118;
    v68(v115, v38);
    v70 = *(v69 + 8);
    v71 = v119;
    v70(v114, v119);
    sub_100391414(0);
    v72 = swift_allocObject();
    v73 = v112;
    *(v72 + 16) = sub_100370D9C;
    *(v72 + 24) = v73;

    v74 = zalgo.getter();
    sub_100058000(&qword_10077FDE0);
    v75 = dispatch thunk of Promise.then<A>(on:closure:)();

    v70(v116, v71);
    return v75;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v66 = v50;
LABEL_19:
  v79 = v94;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v80 = v115;
  v81 = _print_unlocked<A, B>(_:_:)();
  v117 = &v91;
  v82 = *(&v120 + 1);
  v113 = v120;
  v83 = __chkstk_darwin(v81);
  *(&v91 - 2) = v80;
  *(&v91 - 8) = v104;
  v84 = v101;
  v85 = v114;
  v86 = v119;
  (v95)(v101, v114, v119, v83);
  v87 = (v79 + 16) & ~v79;
  v88 = swift_allocObject();
  v99((v88 + v87), v84, v86);
  v89 = sub_10035FA24(v113, v82, sub_100371E88, (&v91 - 4), sub_100370DE4, v88);

  (*(v66 + 8))(v80, v108);
  v90 = *(v118 + 8);
  v90(v85, v86);

  v90(v116, v86);
  return v89;
}