uint64_t sub_100056570()
{
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    return sub_1000663B0(0);
  }

  type metadata accessor for ComposeTranslationViewModel(0);
  sub_10005E050(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_10005666C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for ComposeTranslationCardView();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v46 = v51;
  v44 = sub_10005FD9C();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Locale.current.getter();
  v41 = Locale.sqDisplayName(context:in:)();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  sub_10005C868(a1, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v45 = swift_allocObject();
  sub_10005CBBC(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v15, type metadata accessor for ComposeTranslationCardView);
  v43 = static Color.sourceTextColor.getter();
  KeyPath = swift_getKeyPath();
  v16 = 1.0;
  if (sub_10005FD9C())
  {
    v16 = 0.0;
    if (!sub_100066D38())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }

  v40 = static Animation.default.getter();
  if ((sub_10005FD9C() & 1) == 0)
  {
    v17 = 2;
LABEL_9:
    v38 = v17;
    goto LABEL_10;
  }

  if (!sub_100066D38())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = (v51 & 1) == 0;
    goto LABEL_9;
  }

  v38 = 0;
LABEL_10:
  sub_10005C868(a1, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = swift_allocObject();
  sub_10005CBBC(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v15, type metadata accessor for ComposeTranslationCardView);
  if ((sub_10005FD9C() & 1) == 0 || sub_100066D38() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v18 = 1.0, v51 == 1))
  {
    v18 = 0.0;
  }

  v36 = static Animation.linear(duration:)();
  if (sub_10005FD9C())
  {
    if (sub_100066D38())
    {
      v19 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v19 = (v51 & 1) == 0;
    }
  }

  else
  {
    v19 = 2;
  }

  v20 = v46;
  LOBYTE(v47) = v46;
  v21 = v44 & 1;
  BYTE1(v47) = v44 & 1;
  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  BYTE2(v47) = 1;
  if (v13)
  {
    v23 = v41;
  }

  else
  {
    v23 = 0;
  }

  *(&v47 + 3) = v67;
  BYTE7(v47) = v68;
  *(&v47 + 1) = v23;
  *&v48 = v22;
  *(&v48 + 1) = sub_10005D8F4;
  v24 = v45;
  *&v49 = v45;
  v25 = KeyPath;
  *(&v49 + 1) = KeyPath;
  v26 = v43;
  *&v50[0] = v43;
  *(v50 + 1) = v16;
  v27 = v40;
  *&v50[1] = v40;
  v28 = v38;
  BYTE8(v50[1]) = v38;
  *&v54[9] = *(v50 + 9);
  v53 = v49;
  *v54 = v50[0];
  v51 = v47;
  v52 = v48;
  v29 = v47;
  v30 = *&v54[16];
  v31 = v39;
  *(v39 + 48) = v50[0];
  *(v31 + 64) = v30;
  v32 = v53;
  *(v31 + 16) = v52;
  *(v31 + 32) = v32;
  *v31 = v29;
  v33 = v37;
  *(v31 + 80) = sub_10005DBAC;
  *(v31 + 88) = v33;
  *(v31 + 96) = v18;
  *(v31 + 104) = v36;
  *(v31 + 112) = v19;
  sub_10001F620(&v47, v55, &qword_1003ACB78);
  v55[0] = v20;
  v55[1] = v21;
  v55[2] = 1;
  v56 = v67;
  v57 = v68;
  v58 = v23;
  v59 = v22;
  v60 = sub_10005D8F4;
  v61 = v24;
  v62 = v25;
  v63 = v26;
  v64 = v16;
  v65 = v27;
  v66 = v28;
  return sub_100009EBC(v55, &qword_1003ACB78);
}

void sub_100056D7C()
{
  type metadata accessor for ComposeTranslationCardView();
  sub_10006C1A4(0);

  sub_100225840();

  sub_100062730(0, 0, 1);
}

uint64_t sub_100056DF0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ErrorStateView.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v19 - v14;
  if (a1)
  {
    (*(v5 + 104))(v7, enum case for ErrorStateView.Context.translate(_:), v4);
    if (a1 == 1)
    {
      static ErrorStateView.noInternetConnection(context:)();
    }

    else
    {
      static ErrorStateView.missingOfflineAssets(context:)();
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v16 = v13;
    type metadata accessor for ComposeTranslationCardView();
    swift_getKeyPath();
    v19[1] = a2;
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v5 + 104))(v7, enum case for ErrorStateView.Context.translate(_:), v4);
    static ErrorStateView.airplaneMode(sourceLocale:targetLocale:context:)();
    (*(v5 + 8))(v7, v4);
    v17 = *(v9 + 8);
    v17(v12, v16);
    return (v17)(v15, v16);
  }
}

uint64_t sub_100057104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = sub_100005AD4(&qword_1003AC9D8);
  v145 = *(v3 - 8);
  v146 = v3;
  __chkstk_darwin(v3);
  v144 = &v128 - v4;
  v5 = type metadata accessor for ComposeTranslationCardView();
  v159 = v5;
  v130 = *(v5 - 8);
  __chkstk_darwin(v5);
  v131 = v6;
  v132 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AC9E0);
  v134 = *(v7 - 8);
  v135 = v7;
  __chkstk_darwin(v7);
  v133 = &v128 - v8;
  v140 = sub_100005AD4(&qword_1003AC9E8);
  v137 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v128 - v9;
  v10 = sub_100005AD4(&qword_1003AC9F0);
  v142 = *(v10 - 8);
  v143 = v10;
  __chkstk_darwin(v10);
  v141 = &v128 - v11;
  v158 = sub_100005AD4(&qword_1003AC9F8);
  v155 = *(v158 - 8);
  v12 = __chkstk_darwin(v158);
  v139 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v138 = &v128 - v14;
  v15 = sub_100005AD4(&qword_1003ACA00);
  v16 = __chkstk_darwin(v15 - 8);
  v165 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v168 = &v128 - v18;
  v19 = type metadata accessor for ErrorStateView();
  v153 = *(v19 - 8);
  v154 = v19;
  __chkstk_darwin(v19);
  v128 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UserInterfaceSizeClass();
  v22 = *(v21 - 8);
  v150 = v21;
  v151 = v22;
  __chkstk_darwin(v21);
  v129 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_100005AD4(&qword_1003AC998) - 8;
  __chkstk_darwin(v149);
  v148 = &v128 - v24;
  v25 = sub_100005AD4(&qword_1003AC848);
  v26 = __chkstk_darwin(v25 - 8);
  v152 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v157 = &v128 - v29;
  __chkstk_darwin(v28);
  v147 = &v128 - v30;
  v31 = sub_100005AD4(&qword_1003ACA08);
  v32 = __chkstk_darwin(v31 - 8);
  v164 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v169 = &v128 - v34;
  v35 = sub_100005AD4(&qword_1003ACA10);
  v36 = __chkstk_darwin(v35 - 8);
  v163 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v128 - v38;
  v40 = type metadata accessor for Locale();
  __chkstk_darwin(v40 - 8);
  v160 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100005AD4(&qword_1003ABBA0);
  __chkstk_darwin(v42 - 8);
  v162 = type metadata accessor for LanguagePicker();
  v166 = *(v162 - 1);
  __chkstk_darwin(v162);
  v44 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100005AD4(&qword_1003ABD10);
  v46 = __chkstk_darwin(v45 - 8);
  v161 = &v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = &v128 - v48;
  v50 = *(a1 + *(v5 + 28) + 8);
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_10005E050(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v167 = v50;
  static Published.subscript.getter();

  LanguagesService.models.getter();
  LanguagePicker.init(selectedLocale:preferredLocales:oppositeLocale:languageModels:disabledLanguages:)();
  sub_10005E050(&qword_1003ABD50, &type metadata accessor for LanguagePicker);
  v160 = v49;
  v51 = v162;
  View.accessibilityIdentifier(_:)();
  v52 = v44;
  v53 = v148;
  (*(v166 + 8))(v52, v51);
  *v39 = static VerticalAlignment.top.getter();
  *(v39 + 1) = 0;
  v39[16] = 1;
  v54 = *(sub_100005AD4(&qword_1003ACA18) + 44);
  v162 = v39;
  v55 = &v39[v54];
  v56 = v150;
  sub_1000588EC(a1, v55);
  v57 = v147;
  v166 = a1;
  sub_100051DEC(v147);
  v58 = v157;
  v59 = v151;
  (*(v151 + 104))(v157, enum case for UserInterfaceSizeClass.compact(_:), v56);
  (*(v59 + 56))(v58, 0, 1, v56);
  v60 = *(v149 + 56);
  sub_10001F620(v57, v53, &qword_1003AC848);
  sub_10001F620(v58, v53 + v60, &qword_1003AC848);
  v61 = v59;
  v62 = *(v59 + 48);
  if (v62(v53, 1, v56) == 1)
  {
    sub_100009EBC(v58, &qword_1003AC848);
    sub_100009EBC(v57, &qword_1003AC848);
    if (v62(v53 + v60, 1, v56) == 1)
    {
      sub_100009EBC(v53, &qword_1003AC848);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10001F620(v53, v152, &qword_1003AC848);
  if (v62(v53 + v60, 1, v56) == 1)
  {
    sub_100009EBC(v157, &qword_1003AC848);
    sub_100009EBC(v57, &qword_1003AC848);
    (*(v59 + 8))(v152, v56);
LABEL_6:
    sub_100009EBC(v53, &qword_1003AC998);
LABEL_9:
    v68 = 1;
    v70 = v153;
    v69 = v154;
    goto LABEL_10;
  }

  v63 = v59;
  v64 = v129;
  (*(v61 + 32))(v129, v53 + v60, v56);
  sub_10005E050(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
  v65 = v152;
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = *(v63 + 8);
  v67(v64, v56);
  sub_100009EBC(v157, &qword_1003AC848);
  sub_100009EBC(v57, &qword_1003AC848);
  v67(v65, v56);
  sub_100009EBC(v53, &qword_1003AC848);
  if ((v66 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v202 == 3)
  {
    goto LABEL_9;
  }

  v126 = v128;
  sub_100056DF0(v202, v128);
  v70 = v153;
  v127 = v154;
  (*(v153 + 32))(v169, v126, v154);
  v69 = v127;
  v68 = 0;
LABEL_10:
  v71 = 1;
  (*(v70 + 56))(v169, v68, 1, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v202 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(&v203 + 1) = &type metadata for TipsHelper.GenderDisambiguationTip;
    v157 = sub_10005CC6C();
    *&v204 = v157;
    v72 = v132;
    sub_10005C868(v166, v132);
    v73 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v74 = swift_allocObject();
    sub_10005CBBC(v72, v74 + v73, type metadata accessor for ComposeTranslationCardView);
    v75 = v133;
    TipView.init<>(_:isPresented:arrowEdge:action:)();
    v76 = [objc_opt_self() systemGroupedBackgroundColor];
    *&v202 = Color.init(_:)();
    v77 = sub_10001BAEC(&qword_1003ACA40, &qword_1003AC9E0);
    v78 = v135;
    v79 = v136;
    View.tipBackground<A>(_:)();

    (*(v134 + 8))(v75, v78);
    Solarium.init()();
    v80 = v144;
    static ViewInputPredicate.! prefix(_:)();
    sub_100005AD4(&qword_1003ACA48);
    *&v202 = v78;
    *(&v202 + 1) = &type metadata for Color;
    *&v203 = v77;
    *(&v203 + 1) = &protocol witness table for Color;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v202 = &type metadata for Solarium;
    *(&v202 + 1) = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    v82 = v140;
    *&v202 = v140;
    *(&v202 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v83 = v141;
    v84 = v146;
    View.staticIf<A, B>(_:then:)();
    (*(v145 + 8))(v80, v84);
    (*(v137 + 8))(v79, v82);
    v85 = static Edge.Set.bottom.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Tip.shouldDisplay.getter();
    EdgeInsets.init(_all:)();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = v139;
    (*(v142 + 32))(v139, v83, v143);
    v95 = &v94[*(v158 + 36)];
    *v95 = v85;
    *(v95 + 1) = v87;
    *(v95 + 2) = v89;
    *(v95 + 3) = v91;
    *(v95 + 4) = v93;
    v95[40] = 0;
    v96 = v94;
    v97 = v138;
    sub_100023BD4(v96, v138, &qword_1003AC9F8);
    sub_100023BD4(v97, v168, &qword_1003AC9F8);
    v71 = 0;
  }

  (*(v155 + 56))(v168, v71, 1, v158);
  v98 = (v166 + *(v159 + 36));
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v98) = v98[16];
  LOBYTE(v202) = v99;
  *(&v202 + 1) = v100;
  LOBYTE(v203) = v98;
  sub_100005AD4(&qword_1003AC920);
  FocusState.wrappedValue.getter();
  if (v200 == 1)
  {
    v101 = static VerticalAlignment.center.getter();
    v171 = 1;
    sub_10005A328(v166, &v202);
    v180 = v210;
    v181 = v211;
    v182 = v212;
    v183 = v213;
    v176 = v206;
    v177 = v207;
    v178 = v208;
    v179 = v209;
    v172 = v202;
    v173 = v203;
    v174 = v204;
    v175 = v205;
    v194 = v210;
    v195 = v211;
    v196 = v212;
    v197 = v213;
    v190 = v206;
    v191 = v207;
    v192 = v208;
    v193 = v209;
    v186 = v202;
    v187 = v203;
    v188 = v204;
    v189 = v205;
    sub_10001F620(&v172, &v200, &qword_1003ACA30);
    sub_100009EBC(&v186, &qword_1003ACA30);
    *&v170[135] = v180;
    *&v170[151] = v181;
    *&v170[167] = v182;
    *&v170[183] = v183;
    *&v170[71] = v176;
    *&v170[87] = v177;
    *&v170[103] = v178;
    *&v170[119] = v179;
    *&v170[7] = v172;
    *&v170[23] = v173;
    *&v170[39] = v174;
    *&v170[55] = v175;
    *(&v201[9] + 1) = *&v170[144];
    *(&v201[10] + 1) = *&v170[160];
    *(&v201[11] + 1) = *&v170[176];
    *(&v201[5] + 1) = *&v170[80];
    *(&v201[6] + 1) = *&v170[96];
    *(&v201[7] + 1) = *&v170[112];
    *(&v201[8] + 1) = *&v170[128];
    *(&v201[1] + 1) = *&v170[16];
    *(&v201[2] + 1) = *&v170[32];
    *(&v201[3] + 1) = *&v170[48];
    *(&v201[4] + 1) = *&v170[64];
    v200 = v101;
    LOBYTE(v201[0]) = v171;
    *&v201[12] = *(&v183 + 1);
    *(v201 + 1) = *v170;
    nullsub_1(&v200);
    v212 = v201[9];
    v213 = v201[10];
    v214 = v201[11];
    v215 = *&v201[12];
    v208 = v201[5];
    v209 = v201[6];
    v210 = v201[7];
    v211 = v201[8];
    v204 = v201[1];
    v205 = v201[2];
    v206 = v201[3];
    v207 = v201[4];
    v202 = v200;
    v203 = v201[0];
  }

  else
  {
    sub_10005CC3C(&v202);
  }

  v102 = v161;
  sub_10001F620(v160, v161, &qword_1003ABD10);
  v103 = v163;
  sub_10001F620(v162, v163, &qword_1003ACA10);
  v104 = v164;
  sub_10001F620(v169, v164, &qword_1003ACA08);
  v105 = v168;
  v106 = v165;
  sub_10001F620(v168, v165, &qword_1003ACA00);
  v182 = v212;
  v183 = v213;
  v184 = v214;
  v185 = v215;
  v178 = v208;
  v179 = v209;
  v180 = v210;
  v181 = v211;
  v174 = v204;
  v175 = v205;
  v176 = v206;
  v177 = v207;
  v172 = v202;
  v173 = v203;
  v107 = v102;
  v108 = v156;
  sub_10001F620(v107, v156, &qword_1003ABD10);
  v109 = sub_100005AD4(&qword_1003ACA20);
  sub_10001F620(v103, v108 + v109[12], &qword_1003ACA10);
  v110 = v108 + v109[16];
  *v110 = 0x3F847AE147AE147BLL;
  *(v110 + 8) = 0;
  sub_10001F620(v104, v108 + v109[20], &qword_1003ACA08);
  sub_10001F620(v106, v108 + v109[24], &qword_1003ACA00);
  v111 = v109[28];
  v112 = v183;
  v196 = v182;
  v197 = v183;
  v113 = v184;
  v198 = v184;
  v114 = v180;
  v115 = v181;
  v194 = v180;
  v195 = v181;
  v116 = v178;
  v117 = v179;
  v192 = v178;
  v193 = v179;
  v118 = v174;
  v119 = v175;
  v188 = v174;
  v189 = v175;
  v120 = v176;
  v121 = v177;
  v190 = v176;
  v191 = v177;
  v122 = v172;
  v123 = v173;
  v186 = v172;
  v187 = v173;
  v124 = v108 + v111;
  *(v124 + 160) = v182;
  *(v124 + 176) = v112;
  *(v124 + 192) = v113;
  *(v124 + 96) = v116;
  *(v124 + 112) = v117;
  *(v124 + 128) = v114;
  *(v124 + 144) = v115;
  *(v124 + 32) = v118;
  *(v124 + 48) = v119;
  *(v124 + 64) = v120;
  *(v124 + 80) = v121;
  v199 = v185;
  *(v124 + 208) = v185;
  *v124 = v122;
  *(v124 + 16) = v123;
  sub_10001F620(&v186, &v200, &qword_1003ACA28);
  sub_100009EBC(v105, &qword_1003ACA00);
  sub_100009EBC(v169, &qword_1003ACA08);
  sub_100009EBC(v162, &qword_1003ACA10);
  sub_100009EBC(v160, &qword_1003ABD10);
  v201[9] = v182;
  v201[10] = v183;
  v201[11] = v184;
  *&v201[12] = v185;
  v201[5] = v178;
  v201[6] = v179;
  v201[7] = v180;
  v201[8] = v181;
  v201[2] = v175;
  v201[3] = v176;
  v201[4] = v177;
  v200 = v172;
  v201[0] = v173;
  v201[1] = v174;
  sub_100009EBC(&v200, &qword_1003ACA28);
  sub_100009EBC(v165, &qword_1003ACA00);
  sub_100009EBC(v164, &qword_1003ACA08);
  sub_100009EBC(v163, &qword_1003ACA10);
  return sub_100009EBC(v161, &qword_1003ABD10);
}

uint64_t sub_1000588EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100005AD4(&qword_1003ACA58);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  *v9 = static Alignment.topLeading.getter();
  *(v9 + 1) = v10;
  v11 = sub_100005AD4(&qword_1003ACA60);
  sub_100058D24(a1, &v9[*(v11 + 44)]);
  v12 = static Animation.easeInOut.getter();
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = *(v58 + 16);

  v14 = &v9[*(v4 + 44)];
  *v14 = v12;
  v14[8] = v13 == 0;
  v15 = static Alignment.center.getter();
  v17 = v16;
  sub_100059B90(a1, &v58);
  v38 = v60;
  v39 = v61;
  v40 = v62;
  v41 = v63;
  v36 = v58;
  v37 = v59;
  v42[2] = v60;
  v42[3] = v61;
  v42[4] = v62;
  v42[5] = v63;
  v42[0] = v58;
  v42[1] = v59;
  sub_10001F620(&v36, &v49, &qword_1003ACA68);
  sub_100009EBC(v42, &qword_1003ACA68);
  v45 = v38;
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v43 = v36;
  v44 = v37;
  v18 = static Edge.Set.top.getter();
  sub_100005AD4(&qword_1003AC7D8);
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v58) = 0;
  sub_10001F620(v9, v7, &qword_1003ACA58);
  v27 = v35;
  sub_10001F620(v7, v35, &qword_1003ACA58);
  v28 = (v27 + *(sub_100005AD4(&qword_1003ACA70) + 48));
  *&v49 = v15;
  *(&v49 + 1) = v17;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v50 = v43;
  v51 = v44;
  LOBYTE(v56) = v18;
  *(&v56 + 1) = v20;
  *&v57[0] = v22;
  *(&v57[0] + 1) = v24;
  *&v57[1] = v26;
  BYTE8(v57[1]) = 0;
  v29 = v56;
  v28[6] = v48;
  v28[7] = v29;
  v28[8] = v57[0];
  *(v28 + 137) = *(v57 + 9);
  v30 = v52;
  v28[2] = v51;
  v28[3] = v30;
  v31 = v54;
  v28[4] = v53;
  v28[5] = v31;
  v32 = v50;
  *v28 = v49;
  v28[1] = v32;
  sub_10001F620(&v49, &v58, &qword_1003ACA78);
  sub_100009EBC(v9, &qword_1003ACA58);
  *&v58 = v15;
  *(&v58 + 1) = v17;
  v61 = v45;
  v62 = v46;
  v63 = v47;
  v64 = v48;
  v59 = v43;
  v60 = v44;
  v65 = v18;
  v66 = v20;
  v67 = v22;
  v68 = v24;
  v69 = v26;
  v70 = 0;
  sub_100009EBC(&v58, &qword_1003ACA78);
  return sub_100009EBC(v7, &qword_1003ACA58);
}

uint64_t sub_100058D24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v104 = type metadata accessor for Locale.Language();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for LayoutDirection();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComposeTranslationCardView();
  v9 = v8 - 8;
  v107 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v11;
  __chkstk_darwin(v10);
  v13 = &v74 - v12;
  v84 = sub_100005AD4(&qword_1003ACA88);
  __chkstk_darwin(v84);
  v15 = &v74 - v14;
  v85 = sub_100005AD4(&qword_1003ACA90);
  __chkstk_darwin(v85);
  v87 = &v74 - v16;
  v86 = sub_100005AD4(&qword_1003ACA98);
  __chkstk_darwin(v86);
  v89 = &v74 - v17;
  v91 = sub_100005AD4(&qword_1003ACAA0);
  __chkstk_darwin(v91);
  v90 = &v74 - v18;
  v94 = sub_100005AD4(&qword_1003ACAA8);
  __chkstk_darwin(v94);
  v95 = &v74 - v19;
  v100 = sub_100005AD4(&qword_1003ACAB0);
  v99 = *(v100 - 8);
  v20 = __chkstk_darwin(v100);
  v97 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v93 = &v74 - v22;
  v23 = a1;
  v24 = *(a1 + *(v9 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = *(v109 + 16);

  if (v25)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v88 = v109;
  }

  else
  {
    v88 = 0;
  }

  v76 = v23;
  v80 = sub_100052A40();
  v79 = sub_1000602FC();
  v78 = v26;
  v27 = type metadata accessor for LanguageAwareText();
  v28 = v27[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v24;
  static Published.subscript.getter();

  (*(v5 + 56))(&v15[v28], 0, 1, v4);
  v77 = sub_1000525C8();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v75 = v109;
  sub_10005CEB0();
  v74 = static UIColor.quaternaryTranslateAccentColor.getter();
  sub_10005C868(v23, v13);
  v81 = v4;
  v29 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v30 = swift_allocObject();
  v107 = v5;
  v31 = v30;
  sub_10005CBBC(v13, v30 + v29, type metadata accessor for ComposeTranslationCardView);
  v32 = v83;
  sub_10005C868(v23, v83);
  v33 = swift_allocObject();
  sub_10005CBBC(v32, v33 + v29, type metadata accessor for ComposeTranslationCardView);
  v34 = v79;
  *v15 = v80;
  *(v15 + 1) = v34;
  *(v15 + 2) = v78;
  *&v15[v27[7]] = v77;
  v15[v27[8]] = v75;
  *&v15[v27[9]] = v74;
  *&v15[v27[10]] = 0;
  v15[v27[11]] = 1;
  v35 = &v15[v27[12]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = &v15[v27[13]];
  *v36 = 0;
  *(v36 + 1) = 0;
  *&v15[v27[14]] = 0;
  v15[v27[15]] = 0;
  v37 = &v15[v27[16]];
  *v37 = sub_10005CEFC;
  v37[1] = v31;
  v38 = &v15[v27[17]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v15[v27[18]];
  *v39 = sub_10005CF7C;
  v39[1] = v33;
  *&v15[v27[19]] = 0;
  v15[v27[20]] = 1;
  v40 = &v15[v27[21]];
  *v40 = 0;
  *(v40 + 1) = 0;
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
  LazyState.init(wrappedValue:)();
  v41 = static VerticalAlignment.firstTextBaseline.getter();
  sub_10005C868(v76, v13);
  v42 = swift_allocObject();
  sub_10005CBBC(v13, v42 + v29, type metadata accessor for ComposeTranslationCardView);
  v43 = &v15[*(v84 + 36)];
  *v43 = v41;
  v43[1] = sub_10005CFD8;
  v43[2] = v42;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v44 = v87;
  sub_100023BD4(v15, v87, &qword_1003ACA88);
  v45 = (v44 + *(v85 + 36));
  v46 = v114;
  v45[4] = v113;
  v45[5] = v46;
  v45[6] = v115;
  v47 = v110;
  *v45 = v109;
  v45[1] = v47;
  v48 = v112;
  v45[2] = v111;
  v45[3] = v48;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v101;
  static Published.subscript.getter();

  v51 = Locale.isRTL()();
  v106 = *(v107 + 8);
  v107 += 8;
  v52 = v81;
  v106(v50, v81);
  v53 = v96;
  v54 = &enum case for LayoutDirection.rightToLeft(_:);
  if (!v51)
  {
    v54 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v55 = v92;
  v56 = v98;
  (*(v96 + 104))(v92, *v54, v98);
  v57 = v89;
  v58 = &v89[*(v86 + 36)];
  v59 = sub_100005AD4(&qword_1003AA938);
  (*(v53 + 32))(v58 + *(v59 + 28), v55, v56);
  *v58 = KeyPath;
  sub_100023BD4(v44, v57, &qword_1003ACA90);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v60 = *(v108 + 16);

  if (v60)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = 1.0;
  }

  v62 = v90;
  sub_100023BD4(v57, v90, &qword_1003ACA98);
  *(v62 + *(v91 + 36)) = v61;
  sub_10005D060();
  v63 = v95;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v62, &qword_1003ACAA0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = v102;
  Locale.language.getter();
  v106(v50, v52);
  sub_10005D260(&qword_1003ACAD8, &qword_1003ACAA8, &unk_1002D6E08, sub_10005D060);
  v65 = v93;
  View.typesettingLanguage(_:isEnabled:)();
  (*(v103 + 8))(v64, v104);
  sub_100009EBC(v63, &qword_1003ACAA8);
  v66 = v99;
  v67 = *(v99 + 16);
  v68 = v97;
  v69 = v100;
  v67(v97, v65, v100);
  v70 = v105;
  *v105 = v88;
  v71 = sub_100005AD4(&qword_1003ACAE0);
  v67(&v70[*(v71 + 48)], v68, v69);
  v72 = *(v66 + 8);

  v72(v65, v69);
  v72(v68, v69);
}

uint64_t sub_100059AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ComposeTranslationCardView();
  v7 = *(a3 + *(v6 + 52));
  v8 = *(*(a3 + *(v6 + 28) + 8) + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel);
  if (v8)
  {
    v9 = v8;
    v10 = DisambiguationResultModel.disambiguableResult.getter();
  }

  else
  {
    v10 = 0;
  }

  v11 = v7(v10, a1, a2);

  return v11;
}

uint64_t sub_100059B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v38 = a2;
  v2 = type metadata accessor for ComposeTranslationCardView();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  __chkstk_darwin(v2);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41 = v48;
  v40 = sub_10005FD9C();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Locale.current.getter();
  v11 = Locale.sqDisplayName(context:in:)();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v37 = v15;
  v16 = 0xE000000000000000;
  if (v13)
  {
    v16 = v13;
  }

  v36 = v16;
  v17 = v42;
  sub_10005C868(v39, v42);
  v18 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v19 = swift_allocObject();
  sub_10005CBBC(v17, v19 + v18, type metadata accessor for ComposeTranslationCardView);
  v20 = static Color.translateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v22 = (v40 >> 8) & 1;
  LODWORD(v43) = v22;
  if ((sub_10005FD9C() & 0x100) != 0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = static Animation.default.getter();
  v42 = v24;
  v25 = sub_10005FD9C();
  v26 = (v25 >> 8) & 1;
  v27 = v41;
  LOBYTE(v44) = v41;
  *(&v44 + 1) = v22;
  *(&v44 + 3) = v64;
  BYTE7(v44) = v65;
  v28 = v37;
  *(&v44 + 1) = v37;
  v29 = v36;
  *&v45 = v36;
  *(&v45 + 1) = sub_10005CE88;
  *&v46 = v19;
  *(&v46 + 1) = KeyPath;
  *&v47[0] = v20;
  *(v47 + 1) = v23;
  *&v47[1] = v24;
  BYTE8(v47[1]) = BYTE1(v25) & 1;
  v50 = v46;
  *v51 = v47[0];
  *&v51[9] = *(v47 + 9);
  v49 = v45;
  v48 = v44;
  v30 = v44;
  v31 = *&v51[16];
  v32 = v38;
  *(v38 + 48) = *v51;
  *(v32 + 64) = v31;
  v33 = v50;
  *(v32 + 16) = v49;
  *(v32 + 32) = v33;
  *v32 = v30;
  *(v32 + 80) = nullsub_1;
  *(v32 + 88) = 0;
  sub_10001F620(&v44, v52, &qword_1003ACA80);
  v52[0] = v27;
  v52[1] = v43;
  v52[2] = 0;
  v53 = v64;
  v54 = v65;
  v55 = v28;
  v56 = v29;
  v57 = sub_10005CE88;
  v58 = v19;
  v59 = KeyPath;
  v60 = v20;
  v61 = v23;
  v62 = v42;
  v63 = v26;
  return sub_100009EBC(v52, &qword_1003ACA80);
}

void sub_10005A07C()
{
  type metadata accessor for ComposeTranslationCardView();
  sub_100063384(0, 0);
  sub_100065448();
}

uint64_t sub_10005A0C0()
{
  if (qword_1003A9238 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D27B8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Presenting learn more from compose card", v3, 2u);
  }

  type metadata accessor for ComposeTranslationCardView();
  sub_100005AD4(&qword_1003AC920);
  FocusState.wrappedValue.setter();
  sub_100005AD4(&qword_1003AC8F8);
  return State.wrappedValue.setter();
}

uint64_t sub_10005A23C()
{
  sub_100005AD4(&qword_1003AC9E8);
  sub_100005EA8(&qword_1003AC9E0);
  sub_10001BAEC(&qword_1003ACA40, &qword_1003AC9E0);
  swift_getOpaqueTypeConformance2();
  return View.tipCornerRadius(_:antialiased:)();
}

uint64_t sub_10005A328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for ComposeTranslationCardView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v49 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v6);
  v9 = &v33[-v8];
  __chkstk_darwin(v7);
  v11 = &v33[-v10];
  sub_10005C868(a1, &v33[-v10]);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v52 = swift_allocObject();
  sub_10005CBBC(v11, v52 + v12, type metadata accessor for ComposeTranslationCardView);
  v39 = v11;
  sub_10005C868(a1, v11);
  v51 = swift_allocObject();
  sub_10005CBBC(v11, v51 + v12, type metadata accessor for ComposeTranslationCardView);
  sub_10005C868(a1, v9);
  v50 = swift_allocObject();
  sub_10005CBBC(v9, v50 + v12, type metadata accessor for ComposeTranslationCardView);
  v13 = v49;
  sub_10005C868(a1, v49);
  v46 = swift_allocObject();
  sub_10005CBBC(v13, v46 + v12, type metadata accessor for ComposeTranslationCardView);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = v63;
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_10005E050(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v43 = v64;
  v44 = v63;
  LODWORD(v49) = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v54;
  KeyPath = swift_getKeyPath();
  v86 = 0;
  LOBYTE(v13) = sub_1000669C8();
  v48 = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v13 & 1;
  v47 = v86;
  v15 = v39;
  sub_10005C868(a1, v39);
  v16 = swift_allocObject();
  sub_10005CBBC(v15, v16 + v12, type metadata accessor for ComposeTranslationCardView);
  v17 = 1;
  if (!sub_100066D38())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v64)
    {
      v17 = String.isWhitespaceOnly.getter();
    }

    else
    {
      v17 = 1;
    }
  }

  v39 = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v17 & 1;
  v38 = sub_10005CD64;
  *&v54 = sub_10005CD64;
  *(&v54 + 1) = v52;
  v37 = sub_10005CD7C;
  *&v55 = sub_10005CD7C;
  *(&v55 + 1) = v51;
  v36 = sub_10005CD94;
  *&v56 = sub_10005CD94;
  *(&v56 + 1) = v50;
  v35 = sub_10005CDAC;
  v19 = v46;
  *&v57 = sub_10005CDAC;
  *(&v57 + 1) = v46;
  v20 = v45;
  LOBYTE(v58) = v45;
  *(&v58 + 1) = v89[0];
  DWORD1(v58) = *(v89 + 3);
  v22 = v43;
  v21 = v44;
  *(&v58 + 1) = v44;
  *&v59 = v43;
  BYTE8(v59) = v49;
  BYTE9(v59) = v14;
  *(&v59 + 10) = v87;
  HIWORD(v59) = v88;
  v23 = v41;
  v24 = KeyPath;
  *&v60 = KeyPath;
  BYTE8(v60) = v47;
  *(&v60 + 9) = *v85;
  HIDWORD(v60) = *&v85[3];
  v34 = v14;
  *&v61 = v48;
  *(&v61 + 1) = sub_10005CDFC;
  v62 = v41;
  v53 = 1;
  v25 = v54;
  v26 = v55;
  v27 = v57;
  v28 = v40;
  *(v40 + 32) = v56;
  *(v28 + 48) = v27;
  *v28 = v25;
  *(v28 + 16) = v26;
  v29 = v58;
  v30 = v59;
  v31 = v61;
  *(v28 + 96) = v60;
  *(v28 + 112) = v31;
  *(v28 + 64) = v29;
  *(v28 + 80) = v30;
  *(v28 + 128) = v23;
  *(v28 + 136) = 0;
  *(v28 + 144) = 1;
  *(v28 + 152) = sub_10005CE04;
  *(v28 + 160) = v16;
  *(v28 + 168) = v39;
  *(v28 + 176) = sub_10005E368;
  *(v28 + 184) = v18;
  sub_10001F620(&v54, &v63, &qword_1003ACA50);
  v63 = v38;
  v64 = v52;
  v65 = v37;
  v66 = v51;
  v67 = v36;
  v68 = v50;
  v69 = v35;
  v70 = v19;
  v71 = v20;
  *v72 = v89[0];
  *&v72[3] = *(v89 + 3);
  v73 = v21;
  v74 = v22;
  v75 = v49;
  v76 = v34;
  v78 = v88;
  v77 = v87;
  v79 = v24;
  v80 = v47;
  *&v81[3] = *&v85[3];
  *v81 = *v85;
  v82 = v48;
  v83 = sub_10005CDFC;
  v84 = v23;
  return sub_100009EBC(&v63, &qword_1003ACA50);
}

uint64_t sub_10005A9C0()
{
  type metadata accessor for ComposeTranslationCardView();
  result = sub_100066DDC();
  if (result)
  {
    v2 = result;
    v3 = v1;
    v4 = sub_100051FCC();
    v4(v2, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005AA5C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ComposeTranslationCardView() + 28) + 8);
  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of DisambiguationResultModel.didAppear()();
  }

  sub_100005AD4(&qword_1003AC920);
  FocusState.wrappedValue.getter();
  v4 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics;
  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
  swift_getKeyPath();
  sub_10005E050(&qword_1003AC930, type metadata accessor for CardMetrics);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 24);

  if (v10 != v6)
  {
    v8 = *(v1 + v4);

    FocusState.wrappedValue.getter();
    if (v10 == *(v8 + 24))
    {
      *(v8 + 24) = v10;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10005ACA8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + *(type metadata accessor for ComposeTranslationCardView() + 28) + 8);
  v5 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics;
  v6 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
  swift_getKeyPath();
  sub_10005E050(&qword_1003AC930, type metadata accessor for CardMetrics);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + 24);

  if (v3 != v7)
  {
    v9 = *(v4 + v5);
    if (v3 == *(v9 + 24))
    {
      *(v9 + 24) = v3;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10005AE50(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for ComposeTranslationCardView();
  sub_100005AD4(&qword_1003AC920);
  result = FocusState.wrappedValue.getter();
  if (v2 != v4)
  {
    return FocusState.wrappedValue.setter();
  }

  return result;
}

void sub_10005AF04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ComposeTranslationCardView();
  if (!*(a2 + *(v3 + 20)))
  {
    type metadata accessor for ConversationContext(0);
    v5 = &unk_1003BC490;
    v6 = type metadata accessor for ConversationContext;
    goto LABEL_15;
  }

  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v8 <= 2)
  {
    if (v8)
    {
LABEL_8:
      sub_10000A948(v7, v8);
      return;
    }

    sub_10000A948(v7, 0);
    if (!*(a2 + *(v4 + 24)))
    {
      while (1)
      {
        type metadata accessor for SceneContext();
        v5 = &unk_1003AC860;
        v6 = type metadata accessor for SceneContext;
LABEL_15:
        sub_10005E050(v5, v6);
        EnvironmentObject.error()();
        __break(1u);
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v7)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100065448();
    }
  }

  else if (v8 <= 5 || v8 != 6)
  {
    goto LABEL_8;
  }
}

unint64_t sub_10005B118(void *a1, uint64_t a2, Swift::UInt a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = &type metadata for TranslateFeatures;
  v30[4] = sub_100009DF8();
  LOBYTE(v30[0]) = 5;
  v10 = isFeatureEnabled(_:)();
  sub_100008664(v30);
  result = 0;
  if ((v10 & 1) != 0 && a1)
  {
    v12 = a1;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v14 = [v12 sentenceWithUUID:isa];

    if (v14)
    {
      v15 = _LTDisambiguableSentence.menu(forLinkIndex:)(a3);

      return v15;
    }

    else
    {
      if (qword_1003A9238 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D27B8);
      (*(v7 + 16))(v9, a2, v6);
      v17 = v12;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30[0] = v29;
        *v20 = 136446466;
        sub_10005E050(&qword_1003AC7D0, &type metadata accessor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v7 + 8))(v9, v6);
        v24 = sub_10028D78C(v21, v23, v30);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2114;
        *(v20 + 14) = v17;
        v25 = v28;
        *v28 = a1;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to find sentence UUID %{public}s in result %{public}@", v20, 0x16u);
        sub_100009EBC(v25, &unk_1003AECA0);

        sub_100008664(v29);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10005B494@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003AB5A0);
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v48 - v5;
  v53 = sub_100005AD4(&qword_1003AB5A8);
  v7 = __chkstk_darwin(v53);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v51 = v48 - v11;
  v12 = __chkstk_darwin(v10);
  v52 = v48 - v13;
  __chkstk_darwin(v12);
  v55 = v48 - v14;
  v54 = sub_100005AD4(&qword_1003ACBB8);
  __chkstk_darwin(v54);
  v56 = v48 - v15;
  v62 = *(v1 + 8);
  v16 = swift_allocObject();
  v17 = *(v1 + 1);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v1 + 4);
  sub_10005DFF4(&v62, &v61);

  Button.init(action:label:)();
  v50 = v1;
  v48[1] = *v1;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  sub_10001BAEC(&qword_1003AB5B8, &qword_1003AB5A0);
  View.accessibility(label:)();
  sub_10002EA54(v18, v20, v22 & 1);

  (*(v49 + 8))(v6, v4);
  v61 = v62;
  sub_10001F278();

  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  v28 = v51;
  ModifiedContent<>.accessibility(value:)();
  sub_10002EA54(v23, v25, v27 & 1);

  sub_100009EBC(v9, &qword_1003AB5A8);
  v29 = v50;
  v30 = v52;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_100009EBC(v28, &qword_1003AB5A8);
  sub_100005AD4(&qword_1003AA880);
  v31 = v58;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1002D3160;
  static AccessibilityTraits.startsMediaSession.getter();
  *&v61 = v32;
  sub_10005E050(&qword_1003AA888, &type metadata accessor for AccessibilityTraits);
  sub_100005AD4(&qword_1003AA890);
  sub_10001BAEC(&qword_1003AA898, &qword_1003AA890);
  v33 = v57;
  v34 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v55;
  ModifiedContent<>.accessibility(addTraits:)();
  (*(v31 + 8))(v33, v34);
  sub_100009EBC(v30, &qword_1003AB5A8);
  v36 = v29[1];
  v37 = static Color.accentColor.getter();
  if (v36)
  {
    v38 = Color.opacity(_:)();

    v37 = v38;
  }

  KeyPath = swift_getKeyPath();
  v40 = v56;
  sub_100023BD4(v35, v56, &qword_1003AB5A8);
  v41 = (v40 + *(v54 + 36));
  *v41 = KeyPath;
  v41[1] = v37;
  v42 = static Font.title2.getter();
  v43 = swift_getKeyPath();
  v44 = v40;
  v45 = v60;
  sub_100023BD4(v44, v60, &qword_1003ACBB8);
  result = sub_100005AD4(&qword_1003ACBC0);
  v47 = (v45 + *(result + 36));
  *v47 = v43;
  v47[1] = v42;
  return result;
}

uint64_t sub_10005BBDC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10005BC4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003ACB98);
  __chkstk_darwin(v2);
  v4 = &v21[-v3];
  v5 = sub_100005AD4(&qword_1003ACBA0);
  __chkstk_darwin(v5);
  v7 = &v21[-v6];

  Button.init(action:label:)();
  v8 = [objc_opt_self() tertiaryLabelColor];
  v9 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v11 = &v4[*(v2 + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  sub_10005DE98();
  View.accessibility(label:)();
  sub_10002EA54(v12, v14, v16 & 1);

  sub_100009EBC(v4, &qword_1003ACB98);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_100009EBC(v7, &qword_1003ACBA0);
  v17 = static Font.title2.getter();
  v18 = swift_getKeyPath();
  result = sub_100005AD4(&qword_1003ACBB0);
  v20 = (a1 + *(result + 36));
  *v20 = v18;
  v20[1] = v17;
  return result;
}

uint64_t sub_10005BEEC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_10005BF34@<X0>(void *a1@<X8>)
{
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
  v2 = swift_allocObject();
  result = sub_1002926E8(_swiftEmptyArrayStorage);
  v2[2] = result;
  v2[3] = _swiftEmptyArrayStorage;
  v2[4] = 100;
  *a1 = v2;
  return result;
}

uint64_t sub_10005BFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B2300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005AD4(&qword_1003AC7D8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10005C0FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B2300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005AD4(&qword_1003AC7D8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ComposeTranslationCardView()
{
  result = qword_1003AC838;
  if (!qword_1003AC838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005C288()
{
  sub_10005C414();
  if (v0 <= 0x3F)
  {
    sub_10005C478();
    if (v1 <= 0x3F)
    {
      sub_10005C50C();
      if (v2 <= 0x3F)
      {
        sub_10005C5A0();
        if (v3 <= 0x3F)
        {
          sub_10003E0E8();
          if (v4 <= 0x3F)
          {
            sub_10005C634();
            if (v5 <= 0x3F)
            {
              sub_10005C68C(319, &qword_1003AC878, &type metadata for Bool, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10005C68C(319, &qword_1003AC880, &type metadata for ShowFullscreenAction, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_10005C6DC();
                  if (v8 <= 0x3F)
                  {
                    sub_10002ACA4();
                    if (v9 <= 0x3F)
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

void sub_10005C414()
{
  if (!qword_1003B2380)
  {
    sub_100005EA8(&qword_1003AC848);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B2380);
    }
  }
}

void sub_10005C478()
{
  if (!qword_1003AC850)
  {
    type metadata accessor for ConversationContext(255);
    sub_10005E050(&unk_1003BC490, type metadata accessor for ConversationContext);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AC850);
    }
  }
}

void sub_10005C50C()
{
  if (!qword_1003AC858)
  {
    type metadata accessor for SceneContext();
    sub_10005E050(&qword_1003AC860, type metadata accessor for SceneContext);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AC858);
    }
  }
}

void sub_10005C5A0()
{
  if (!qword_1003AC868)
  {
    type metadata accessor for ComposeTranslationViewModel(255);
    sub_10005E050(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AC868);
    }
  }
}

void sub_10005C634()
{
  if (!qword_1003AC870)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AC870);
    }
  }
}

void sub_10005C68C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10005C6DC()
{
  if (!qword_1003AC888)
  {
    sub_10005C738();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AC888);
    }
  }
}

unint64_t sub_10005C738()
{
  result = qword_1003BC4B0;
  if (!qword_1003BC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC4B0);
  }

  return result;
}

unint64_t sub_10005C7B0()
{
  result = qword_1003AC900;
  if (!qword_1003AC900)
  {
    sub_100005EA8(&qword_1003AC8D8);
    sub_10001BAEC(&qword_1003AC908, &qword_1003AC910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC900);
  }

  return result;
}

uint64_t sub_10005C868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeTranslationCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C90C()
{
  result = qword_1003AC928;
  if (!qword_1003AC928)
  {
    sub_100005EA8(&qword_1003AC8E0);
    sub_100005EA8(&qword_1003AC8D8);
    type metadata accessor for GenderDisambiguationLearnMoreView();
    sub_10005C7B0();
    sub_10005E050(&qword_1003AC918, &type metadata accessor for GenderDisambiguationLearnMoreView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC928);
  }

  return result;
}

uint64_t sub_10005CA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ComposeTranslationCardView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_10005CBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_10005CC3C(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_10005CC6C()
{
  result = qword_1003ACA38;
  if (!qword_1003ACA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACA38);
  }

  return result;
}

uint64_t sub_10005CCD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ComposeTranslationCardView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10005CEB0()
{
  result = qword_1003B2990;
  if (!qword_1003B2990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B2990);
  }

  return result;
}

uint64_t sub_10005CEFC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ComposeTranslationCardView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100059AE8(a1, a2, v6);
}

double sub_10005CFD8()
{
  type metadata accessor for ComposeTranslationCardView();
  v0 = sub_1000525C8();
  [v0 ascender];
  v2 = v1;

  return v2;
}

unint64_t sub_10005D060()
{
  result = qword_1003ACAB8;
  if (!qword_1003ACAB8)
  {
    sub_100005EA8(&qword_1003ACAA0);
    sub_10005D670(&qword_1003ACAC0, &qword_1003ACA98, &unk_1002D6DF8, sub_10005D118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACAB8);
  }

  return result;
}

unint64_t sub_10005D118()
{
  result = qword_1003ACAC8;
  if (!qword_1003ACAC8)
  {
    sub_100005EA8(&qword_1003ACA90);
    sub_10005D1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACAC8);
  }

  return result;
}

unint64_t sub_10005D1A4()
{
  result = qword_1003ACAD0;
  if (!qword_1003ACAD0)
  {
    sub_100005EA8(&qword_1003ACA88);
    sub_10005E050(&qword_1003B2A40, type metadata accessor for LanguageAwareText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACAD0);
  }

  return result;
}

uint64_t sub_10005D260(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    sub_10005E050(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005D314()
{
  type metadata accessor for ComposeTranslationCardView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v6)
  {
    goto LABEL_5;
  }

  v0 = [v6 string];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_5:
    sub_100063384(0, 0);
    sub_100005AD4(&qword_1003AC920);
    return FocusState.wrappedValue.setter();
  }

  return result;
}

unint64_t sub_10005D478()
{
  result = qword_1003ACB00;
  if (!qword_1003ACB00)
  {
    sub_100005EA8(&qword_1003ACAF0);
    sub_10005E050(&qword_1003ABD50, &type metadata accessor for LanguagePicker);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACB00);
  }

  return result;
}

uint64_t sub_10005D590(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ComposeTranslationCardView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10005D614(uint64_t a1)
{
  v2 = type metadata accessor for LanguageAwareEditor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005D670(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    sub_10001BAEC(&qword_1003AA930, &qword_1003AA938);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005D720()
{
  result = qword_1003ACB50;
  if (!qword_1003ACB50)
  {
    sub_100005EA8(&qword_1003ACB20);
    type metadata accessor for LanguageAwareEditor(255);
    sub_10005E050(&qword_1003ACB40, type metadata accessor for LanguageAwareEditor);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACB50);
  }

  return result;
}

unint64_t sub_10005D80C()
{
  result = qword_1003ACB58;
  if (!qword_1003ACB58)
  {
    sub_100005EA8(&qword_1003ACB30);
    sub_10005D670(&qword_1003ACB48, &qword_1003ACB28, &unk_1002D6FF8, sub_10005D720);
    sub_10005E050(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACB58);
  }

  return result;
}

uint64_t sub_10005D97C()
{
  v1 = type metadata accessor for ComposeTranslationCardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100005AD4(&qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  sub_10005C8D0();
  v7 = *(v1 + 48);
  v8 = sub_100005AD4(&qword_1003AC7D8);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005DBC4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ComposeTranslationCardView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10005DC38()
{
  result = qword_1003ACB80;
  if (!qword_1003ACB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACB80);
  }

  return result;
}

unint64_t sub_10005DC8C()
{
  result = qword_1003ACB88;
  if (!qword_1003ACB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACB88);
  }

  return result;
}

uint64_t sub_10005DCE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10005DD28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005DD74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005DDBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005DE98()
{
  result = qword_1003ACBA8;
  if (!qword_1003ACBA8)
  {
    sub_100005EA8(&qword_1003ACB98);
    sub_10001BAEC(&qword_1003AB5B8, &qword_1003AB5A0);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACBA8);
  }

  return result;
}

uint64_t sub_10005DF84()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005DFC4()
{
  if ((*(v0 + 17) & 1) == 0)
  {
    return (*(v0 + 40))();
  }

  return result;
}

uint64_t sub_10005E050(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005E09C()
{
  result = qword_1003ACBC8;
  if (!qword_1003ACBC8)
  {
    sub_100005EA8(&qword_1003ACBB0);
    sub_10005D260(&qword_1003ACBD0, &qword_1003ACBA0, &unk_1002D7148, sub_10005DE98);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACBC8);
  }

  return result;
}

unint64_t sub_10005E184()
{
  result = qword_1003ACBD8;
  if (!qword_1003ACBD8)
  {
    sub_100005EA8(&qword_1003ACBC0);
    sub_10005E23C();
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACBD8);
  }

  return result;
}

unint64_t sub_10005E23C()
{
  result = qword_1003ACBE0;
  if (!qword_1003ACBE0)
  {
    sub_100005EA8(&qword_1003ACBB8);
    sub_10002EFE4();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ACBE0);
  }

  return result;
}

uint64_t sub_10005E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001F620(a3, v25 - v10, &qword_1003AA3B8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009EBC(v11, &qword_1003AA3B8);
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

      sub_100009EBC(a3, &qword_1003AA3B8);

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

  sub_100009EBC(a3, &qword_1003AA3B8);
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

uint64_t sub_10005E66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001F620(a3, v25 - v10, &qword_1003AA3B8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009EBC(v11, &qword_1003AA3B8);
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

      sub_100005AD4(&qword_1003AD838);
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

      sub_100009EBC(a3, &qword_1003AA3B8);

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

  sub_100009EBC(a3, &qword_1003AA3B8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100005AD4(&qword_1003AD838);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10005E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001F620(a3, v25 - v10, &qword_1003AA3B8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009EBC(v11, &qword_1003AA3B8);
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

      sub_100009EBC(a3, &qword_1003AA3B8);

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

  sub_100009EBC(a3, &qword_1003AA3B8);
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

uint64_t sub_10005EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001F620(a3, v25 - v10, &qword_1003AA3B8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009EBC(v11, &qword_1003AA3B8);
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

      sub_100009EBC(a3, &qword_1003AA3B8);

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

  sub_100009EBC(a3, &qword_1003AA3B8);
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

double sub_10005EF70@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10005EFF0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10005F0EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10005F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v19 = a7;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = *(v9 + 16);
  v15(&v18 - v13, a1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v15(v12, v14, v8);

  v16 = static Published.subscript.setter();
  v19(v16);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_10005F328()
{
  String.hash(into:)();
}

unint64_t sub_10005F43C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100076E6C(*a1);
  *a2 = result;
  return result;
}

void sub_10005F46C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  v5 = 0x6F4C746567726174;
  v6 = 0xEE004449656C6163;
  v7 = 0xEF6E6F697461746ELL;
  v8 = 0x656D757274736E69;
  if (v2 != 4)
  {
    v8 = 0x7375636F66;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEA00000000007478;
  v10 = 0x6554746567726174;
  if (v2 != 1)
  {
    v10 = 0x6F4C656372756F73;
    v9 = 0xEE004449656C6163;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

NSString sub_10005F548()
{
  result = String._bridgeToObjectiveC()();
  qword_1003D2500 = result;
  return result;
}

uint64_t sub_10005F580()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 stringForKey:v9];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Locale.init(identifier:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10007373C(&unk_1003B06F0, &type metadata accessor for Locale);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  if ((v11 & 1) == 0)
  {
    sub_1000637A8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = [v7 standardUserDefaults];
  Locale.identifier.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();
  [v13 setObject:v14 forKey:v15];

  return (v12)(v4, v0);
}

uint64_t sub_10005F8B0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  sub_100228CB4();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10007373C(&unk_1003B06F0, &type metadata accessor for Locale);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if ((v7 & 1) == 0)
  {
    sub_1000637A8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = [objc_opt_self() standardUserDefaults];
  Locale.identifier.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();
  [v9 setObject:v10 forKey:v11];

  Locale.identifier.getter();
  sub_10022AA40();
  return (v8)(v6, v0);
}

uint64_t sub_10005FB54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10005FBEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10005FC88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10005FD1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    v0 = 256;
  }

  else
  {
    v0 = 0;
  }

  return v0 | v2;
}

uint64_t sub_10005FD9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {
    v0 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v0 = v5 ^ 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = 256;
  if ((v4 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v3)
    {
      v1 = 0;
    }

    else
    {
      v1 = 256;
    }
  }

  return v1 | v0 & 1u;
}

uint64_t sub_10005FF68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060010()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1 | (v2 << 16);
}

uint64_t sub_1000600B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1000601DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 != 3)
  {
    return 0xD000000000000019;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {
    return 0x4E494E455453494CLL;
  }

  else
  {
    return 0x545F4F545F504154;
  }
}

uint64_t sub_1000602FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {

    v0 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v0 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    v1 = v0 != 0;
  }

  else
  {
    v1 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = 0;
  if ((v3[0] & 1) == 0 && !v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v3[0] == 3)
    {
      return 0x545F4F545F504154;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  return result;
}

char *sub_100060488()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel____lazy_storage___streamingManager;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel____lazy_storage___streamingManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel____lazy_storage___streamingManager);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_translator);
    type metadata accessor for TextStreamingTranslationManager(0);
    v4 = swift_allocObject();
    v5 = v3;

    v2 = sub_1000C81D0(v5, v0, v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100060530()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1000605B4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100068910();
  }

  if (qword_1003A9328 != -1)
  {
    swift_once();
  }

  v0 = sub_100005AD4(&qword_1003AD988);
  sub_1000078E8(v0, qword_1003D2B60);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100060698(char a1, unsigned __int8 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (((a1 == 1) & a2) == v5)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t sub_100060794(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v18 = a1;
      v19 = a2;

      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10001F278();
      StringProtocol.trimmingCharacters(in:)();
      (*(v7 + 8))(v9, v6);

      a2 = String.count.getter();
    }

    if (a3)
    {
      v11 = [a3 string];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v18 = v12;
      v19 = v14;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10001F278();
      StringProtocol.trimmingCharacters(in:)();
      (*(v7 + 8))(v9, v6);

      v15 = String.count.getter();

      if (v15 <= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      v16 = a2 & ~(a2 >> 63);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16 > 50 == v18)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v18) = v16 > 50;
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t sub_100060A3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D28C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Clearing compose card since the previous session timed out", v5, 2u);
    }

    sub_100062730(0, 0, 0);
    v6 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
    if (*(v6 + 24) == 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {

      *(v6 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_100060C80(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v3 == 1)
      {
        sub_1000663B0(1);
        sub_100062730(0, 1, 1);
      }
    }
  }

  return result;
}

uint64_t sub_100060D4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100060DD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006C680();
  }

  return result;
}

uint64_t sub_100060E30(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100063124(v1);
  }

  return result;
}

uint64_t sub_100060E90()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__sourceLocale;
  v3 = sub_100005AD4(&qword_1003AED90);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__targetLocale, v3);
  v5 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__isFlipped;
  v6 = sub_100005AD4(&unk_1003B8DF0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__sourceText;
  v9 = sub_100005AD4(&qword_1003AABF0);
  v31 = *(*(v9 - 8) + 8);
  v31(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__targetText;
  v11 = sub_100005AD4(&qword_1003AD8F8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__textStreamingErrorTips;
  v13 = sub_100005AD4(&qword_1003AD8F0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__tips, v13);
  v15 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__forceDisableDictation;
  v16 = sub_100005AD4(&qword_1003AD8E8);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v15, v16);
  v17(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__isASRSupported, v16);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__unableToTranslate, v6);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__isFavorite, v6);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__isDictionaryModeActive, v6);
  v31(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__pendingDictionaryModeSourceText, v9);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__canShowDictionary, v6);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__userInteractionEnabled, v6);
  v18 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__stateError;
  v19 = sub_100005AD4(&qword_1003AD8E0);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__transactionalError;
  v21 = sub_100005AD4(&qword_1003AD8D8);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__showErrorAlert, v6);
  v22 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__inputStyle;
  v23 = sub_100005AD4(&qword_1003AD8D0);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__state;
  v25 = sub_100005AD4(&qword_1003AD8C8);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__isListening, v6);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__useSmallerFont, v6);

  v26 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__partialSpeechResult;
  v27 = sub_100005AD4(&qword_1003AD8C0);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__redactTargetText, v6);

  v28 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__genderDisambiguationTip;
  v29 = sub_100005AD4(&qword_1003AD9B8);
  (*(*(v29 - 8) + 8))(v0 + v28, v29);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel__canShowGenderTip, v6);

  return v0;
}

uint64_t sub_100061554()
{
  sub_100060E90();

  return swift_deallocClassInstance();
}

void sub_1000615D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a2;
  v55 = a4;
  v7 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v7 - 8);
  v61 = v50 - v8;
  v62 = sub_100005AD4(&qword_1003AC740);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = v50 - v9;
  v10 = sub_100005AD4(&qword_1003AC748);
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v63 = v50 - v11;
  v12 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v12 - 8);
  v53 = v50 - v13;
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v57 = v50 - v19;
  v20 = __chkstk_darwin(v18);
  v66 = v50 - v21;
  __chkstk_darwin(v20);
  v23 = v50 - v22;
  v58 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationUpdateSubscription;
  if (*(v4 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationUpdateSubscription))
  {

    AnyCancellable.cancel()();
  }

  v24 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel);
  v56 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel;
  *(v4 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel) = 0;

  v52 = a1;
  sub_10001F620(a1, v67, &unk_1003B9EC0);
  if (v68)
  {
    v51 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000085CC(v67, v68);
    v25 = dispatch thunk of TranslationResult.disambiguableResult.getter();
    sub_100008664(v67);
    if (v25)
    {
      v26 = [*(v4 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationChangeManager) restoreChangesToResult:v25];
      v27 = v53;
      if (v26)
      {
        if (qword_1003A9238 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_1000078E8(v28, qword_1003D27B8);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Restored changes to new result from previous user-selections", v31, 2u);
        }
      }

      sub_10001F620(v52, v67, &unk_1003B9EC0);
      v50[1] = v25;
      if (v68)
      {
        sub_1000085CC(v67, v68);
        dispatch thunk of TranslationResult.locale.getter();
        (*(v15 + 56))(v27, 0, 1, v14);
        sub_100008664(v67);
        if ((*(v15 + 48))(v27, 1, v14) != 1)
        {
          (*(v15 + 32))(v23, v27, v14);
LABEL_19:
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v34 = *(v15 + 16);
          v34(v57, v23, v14);
          v35 = swift_allocObject();
          swift_weakInit();
          v36 = v23;
          v37 = v51;
          v34(v51, v36, v14);
          v38 = (*(v15 + 80) + 24) & ~*(v15 + 80);
          v39 = swift_allocObject();
          *(v39 + 16) = v35;
          (*(v15 + 32))(v39 + v38, v37, v14);
          objc_allocWithZone(type metadata accessor for DisambiguationResultModel());

          v33 = DisambiguationResultModel.init(disambiguableResult:excludedTypes:sourceLocale:targetLocale:globalAttributeProvider:linkAttributeProvider:userSelectionHandler:)();
          (*(v15 + 8))(v36, v14);

          goto LABEL_20;
        }
      }

      else
      {
        sub_100009EBC(v67, &unk_1003B9EC0);
        (*(v15 + 56))(v27, 1, 1, v14);
      }

      Locale.init(identifier:)();
      if ((*(v15 + 48))(v27, 1, v14) != 1)
      {
        sub_100009EBC(v27, &qword_1003AFCE0);
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_100009EBC(v67, &unk_1003B9EC0);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = objc_allocWithZone(type metadata accessor for DisambiguationResultModel());
  v33 = DisambiguationResultModel.init(withStaticSource:staticTarget:sourceLocale:targetLocale:globalAttributeProvider:)();
LABEL_20:
  v40 = *(v5 + v56);
  *(v5 + v56) = v33;
  v41 = v33;

  v42 = v59;
  dispatch thunk of DisambiguationResultModel.$targetAttributedText.getter();

  sub_10000A2CC(0, &qword_1003A9C40);
  v43 = static OS_dispatch_queue.main.getter();
  v67[0] = v43;
  v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v45 = v61;
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  sub_10001BAEC(&qword_1003AC758, &qword_1003AC740);
  sub_100051450();
  v47 = v62;
  v46 = v63;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v45, &qword_1003B23F0);

  (*(v60 + 8))(v42, v47);
  swift_allocObject();
  swift_weakInit();
  sub_10001BAEC(&qword_1003AC760, &qword_1003AC748);
  v48 = v65;
  v49 = Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v46, v48);
  *(v5 + v58) = v49;

  swift_getKeyPath();
  swift_getKeyPath();
  BYTE2(v67[0]) = 8;
  LOWORD(v67[0]) = 0;

  static Published.subscript.setter();
  sub_100068910();
  sub_100068B18();
}

unint64_t sub_100062090()
{
  v0 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for DisambiguationResultModel.TextLocation.source(_:), v0);
  v4 = static DisambiguationResultModel.TextLocation.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  v5 = sub_10000A2CC(0, &qword_1003B2990);
  if (v4)
  {
    v6 = static UIColor.sourceLinkColor.getter();
  }

  else
  {
    v6 = static UIColor.targetLinkColor.getter();
  }

  v7 = v6;
  sub_100005AD4(&unk_1003BBD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = NSForegroundColorAttributeName;
  *(inited + 64) = v5;
  *(inited + 40) = v7;
  v9 = NSForegroundColorAttributeName;
  v10 = sub_100292588(inited);
  swift_setDeallocating();
  sub_100009EBC(inited + 32, &qword_1003B3490);
  return v10;
}

uint64_t sub_100062234(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v5 = type metadata accessor for CoreAnalyticsLogger.InteractionLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CoreAnalyticsLogger.CardType();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v31 = v9;
    v33 = v6;
    v34 = v5;
    v18 = [a2 edge];
    v19 = [v18 type];

    v20 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationChangeManager;
    v21 = *(v17 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationChangeManager);
    v32 = v19;
    LOBYTE(v18) = [v21 hasAnyChangeOfType:v19];
    [*(v17 + v20) addUserSelection:a2];
    if (v18)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v22 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v24 = Locale._bridgeToObjectiveC()().super.isa;
      v25 = [v22 initWithSourceLocale:isa targetLocale:v24];

      (*(v13 + 8))(v15, v12);
      type metadata accessor for CoreAnalyticsLogger();
      static CoreAnalyticsLogger.shared.getter();
      v26 = v36;
      v27 = v31;
      (*(v36 + 104))(v11, enum case for CoreAnalyticsLogger.CardType.compose(_:), v31);
      v29 = v33;
      v28 = v34;
      (*(v33 + 104))(v8, enum case for CoreAnalyticsLogger.InteractionLocation.translationTab(_:), v34);
      dispatch thunk of CoreAnalyticsLogger.didInteractWithDisambiguation(fromCard:location:type:localePair:)();

      (*(v29 + 8))(v8, v28);
      return (*(v26 + 8))(v11, v27);
    }
  }

  return result;
}

uint64_t sub_100062600(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6)
    {
      sub_10000A2CC(0, &qword_1003AC720);
      v3 = v1;
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
      }
    }

    else
    {
      v5 = v1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

void sub_100062730(void *a1, char a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = qword_1003A9290;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D28C0);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = a1;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Resetting translation compose card due to error: %@", v14, 0xCu);
      sub_100009EBC(v15, &unk_1003AECA0);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D28C0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Resetting translation compose card", v20, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(&v22[0] + 1))
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v22[0] = 0uLL;

      static Published.subscript.setter();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v22[0]) == 1 && (a3 & 1) != 0)
  {
    sub_1000668DC(a2 & 1);
  }

  sub_100060488();
  sub_10025FDF8(a1 != 0);

  [*(v4 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationChangeManager) reset];
  [*(v4 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_debounceTimer) invalidate];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v22[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22[0]) = 0;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v22[0]))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22[0]) = 0;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v22[0]) != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22[0]) = 2;

    static Published.subscript.setter();
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1000615D4(v22, 0, 0, 0);
  sub_100009EBC(v22, &unk_1003B9EC0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v22[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22[0]) = 0;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v22[0] & 1) != 0 || BYTE1(v22[0]))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v22[0]) = 0;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v22[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22[0]) = 0;

    static Published.subscript.setter();
  }

  sub_100062FA0();
  sub_100063B30();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (BYTE2(v22[0]) << 16 != 0x80000)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    BYTE2(v22[0]) = 8;
    LOWORD(v22[0]) = 0;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v22[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22[0]) = 0;

    static Published.subscript.setter();
  }

  if (a1)
  {
    v21 = a1;
    sub_10006CA14(v21);
  }
}

uint64_t sub_100062FA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_1000FAB84(v3, _swiftEmptyArrayStorage);

  if ((v0 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = _swiftEmptyArrayStorage;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = sub_1000FAB84(v3, _swiftEmptyArrayStorage);

  if ((v1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

void sub_100063124(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  if (a1)
  {
    v6 = a1;
    static Published.subscript.getter();

    isa = Locale._bridgeToObjectiveC()().super.isa;
    v8 = *(v3 + 8);
    v8(v5, v2);
    v9 = [v6 locale:isa supportsModality:1];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = Locale._bridgeToObjectiveC()().super.isa;
    v8(v5, v2);
    v11 = [v6 locale:v10 supportsModality:1];

    swift_getKeyPath();
    swift_getKeyPath();
    v12[12] = v9;
    v12[13] = v11;

    static Published.subscript.setter();
  }

  else
  {
    v13 = 257;

    static Published.subscript.setter();
  }
}

uint64_t sub_100063384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  if (a2 && (a1 == 0x72657070696C46 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100078528;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100241654;
    aBlock[3] = &unk_100381468;
    v16 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v16);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = static Published.subscript.modify();
  *v18 = !*v18;
  v17(aBlock, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  v19 = v13;
  v24 = v13;
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = *(v5 + 16);
  v20(v8, v11, v4);

  static Published.subscript.setter();
  sub_10005F580();
  v21 = *(v5 + 8);
  v21(v11, v4);
  v20(v11, v19, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v20(v8, v11, v4);

  static Published.subscript.setter();
  sub_10005F8B0();
  v21(v11, v4);
  sub_100062FA0();
  return (v21)(v24, v4);
}

void sub_1000637A8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v16;
  if (v16 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16 == 1)
    {
      if (v7)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v16 == 1)
        {
          sub_1000663B0(0);
        }
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v17)
        {
          v8 = v16;
        }

        else
        {
          v8 = 0;
        }

        if (v17)
        {
          v9 = v17;
        }

        else
        {
          v9 = 0xE000000000000000;
        }

        sub_100064410(v8, v9);
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v12 = Locale._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithSourceLocale:isa targetLocale:v12];

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v6, v0);
  sub_1000DCDF8(v13);
  sub_100063B30();
  v15 = LanguagesService.localeModalities.getter();
  sub_100063124(v15);
}

void sub_100063B30()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v9 = Locale._bridgeToObjectiveC()().super.isa;
  v10 = [v7 initWithSourceLocale:isa targetLocale:v9];

  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v6, v0);
  v12 = sub_1000DCA80(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v19;
  if (v19)
  {
    v14 = v18;

    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    v16 = v15 == 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v17 = !v16;
    goto LABEL_10;
  }

  if (v12)
  {
    v16 = 1;
    goto LABEL_8;
  }

LABEL_9:
  v17 = 0;
LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v17 != v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18) = v17;

    static Published.subscript.setter();
  }
}

void sub_100063E40(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = type metadata accessor for Locale();
  v39 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v43;
  if (v43 == 3)
  {
    v18 = v4;
    v19 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v40;
    (*(v41 + 56))(&v12[v10[14]], 1, 1, v40);
    *&v12[v10[6]] = 1;
    *&v12[v10[7]] = 1;
    *&v12[v10[8]] = 0;
    v12[v10[9]] = 0;
    v21 = &v12[v10[10]];
    *v21 = 0;
    v21[8] = 1;
    v12[v10[11]] = 0;
    *&v12[v10[12]] = 0;
    v22 = &v12[v10[13]];
    *v22 = 0;
    v22[8] = 1;
    sub_10022520C(v12);
    v23 = *(v19 + 16);
    if (v23)
    {
      v24 = [v23 invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100077D38(v12, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
      sub_100060488();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_100263AA0(v37, v38, v9, v7, v16);

      v25 = *(v39 + 8);
      v25(v7, v18);
      v25(v9, v18);
      (*(v41 + 8))(v16, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000078E8(v26, qword_1003D28C0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      v31 = 0xE90000000000006BLL;
      v32 = 0x726F7774654E6F6ELL;
      if (v17 != 1)
      {
        v32 = 0xD000000000000014;
        v31 = 0x80000001002EF720;
      }

      if (v17)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0xD000000000000013;
      }

      if (v17)
      {
        v34 = v31;
      }

      else
      {
        v34 = 0x80000001002EF700;
      }

      v35 = sub_10028D78C(v33, v34, &v42);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Skipping partial translation because an error state is active: %s", v29, 0xCu);
      sub_100008664(v30);
    }
  }
}

void sub_100064410(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = __chkstk_darwin(v4);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = v41 - v7;
  v8 = type metadata accessor for StreamingRequestInfo(0);
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003AD830);
  __chkstk_darwin(v10 - 8);
  v12 = v41 - v11;
  v13 = type metadata accessor for CharacterSet();
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100062FA0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49 == 1)
  {
    sub_100067508();
  }

  v16 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v17)
  {
    LOBYTE(v49) = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v49) = 1;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v49) = 257;

    static Published.subscript.setter();
    *(&v50 + 1) = &type metadata for TranslateFeatures;
    v51 = sub_100009DF8();
    LOBYTE(v49) = 4;
    v18 = isFeatureEnabled(_:)();
    sub_100008664(&v49);
    if (v18)
    {
      v19 = v16;
      *&v49 = v16;
      *(&v49 + 1) = a2;
      static CharacterSet.whitespacesAndNewlines.getter();
      v41[1] = sub_10001F278();
      v20 = StringProtocol.trimmingCharacters(in:)();
      v22 = v21;
      v23 = v48 + 8;
      v41[0] = *(v48 + 8);
      (v41[0])(v15, v13);

      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {
        goto LABEL_24;
      }

      v25 = sub_100060488();
      v26 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
      swift_beginAccess();
      sub_10001F620(&v25[v26], v12, &qword_1003AD830);
      if ((*(v47 + 48))(v12, 1, v8))
      {
        sub_100009EBC(v12, &qword_1003AD830);

        v27 = 0;
        v28 = 0xE000000000000000;
      }

      else
      {
        v48 = v23;
        v30 = v42;
        sub_10007727C(v12, v42, type metadata accessor for StreamingRequestInfo);
        sub_100009EBC(v12, &qword_1003AD830);
        v31 = (v30 + *(v8 + 20));
        v32 = v31[1];
        *&v49 = *v31;
        *(&v49 + 1) = v32;

        static CharacterSet.whitespacesAndNewlines.getter();
        v33 = StringProtocol.trimmingCharacters(in:)();
        v28 = v34;
        (v41[0])(v15, v13);
        sub_100077D38(v30, type metadata accessor for StreamingRequestInfo);

        v27 = v33 & 0xFFFFFFFFFFFFLL;
      }

      v35 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v35 = v27;
      }

      if (!v35)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v36 = v43;
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        v37 = v44;
        static Published.subscript.getter();

        v38 = static Locale.== infix(_:_:)();
        v39 = v46;
        v40 = *(v45 + 8);
        v40(v37, v46);
        v40(v36, v39);
        if ((v38 & 1) == 0)
        {
LABEL_24:
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if ((v49 & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v49) = 1;

            static Published.subscript.setter();
          }

          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          sub_1000615D4(&v49, v19, a2, v19);
          sub_100009EBC(&v49, &unk_1003B9EC0);
        }
      }

      sub_100063E40(v19, a2);
    }

    else
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v19 = v16;
      sub_1000615D4(&v49, v16, a2, v16);
      sub_100009EBC(&v49, &unk_1003B9EC0);
    }
  }

  else
  {
    LOBYTE(v49) = 2;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v49) = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v49) = 0;

    static Published.subscript.setter();
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    sub_1000615D4(&v49, 0, 0, 0);
    sub_100009EBC(&v49, &unk_1003B9EC0);
    *(&v50 + 1) = &type metadata for TranslateFeatures;
    v51 = sub_100009DF8();
    LOBYTE(v49) = 4;
    v29 = isFeatureEnabled(_:)();
    sub_100008664(&v49);
    v19 = v16;
    if (v29)
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      sub_1000615D4(&v49, v16, a2, v16);
      sub_100009EBC(&v49, &unk_1003B9EC0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v49 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v49) = 0;

      static Published.subscript.setter();
    }

    sub_100060488();
    sub_10025FDF8(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v49 = v19;
  *(&v49 + 1) = a2;

  static Published.subscript.setter();
  sub_100063B30();
}

void sub_100064DF0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100062FA0();
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D28C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "in performFinalTextTranslation", v11, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v27)
  {
    goto LABEL_16;
  }

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10001F278();
  v12 = StringProtocol.trimmingCharacters(in:)();
  v14 = v13;
  (*(v5 + 8))(v7, v4);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_16:
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Skipping final translation: no text to translate", v22, 2u);
    }

    if ((a1 & 1) == 0)
    {
      return;
    }

    v19 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
    if (*(v19 + 24) == 1)
    {
      goto LABEL_23;
    }

LABEL_24:
    *(v19 + 24) = 0;
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = 2;

    static Published.subscript.setter();
    sub_10006B470(v12, v14, v23, 0);

    sub_10006C1A4(1);
    if ((a1 & 1) == 0)
    {
      return;
    }

    v19 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
    if (*(v19 + 24) == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Early returning and not translating because translation is in progress with the same text already", v18, 2u);
  }

  if (a1)
  {
    v19 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
    if (*(v19 + 24) == 1)
    {
LABEL_23:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v25[-16] = v19;
      v25[-8] = 0;
      v26 = v19;
      sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

    goto LABEL_24;
  }
}

void sub_100065448()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v77 - v3;
  v85 = type metadata accessor for Locale();
  v5 = *(v85 - 8);
  v6 = __chkstk_darwin(v85);
  v83 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v82 = &v77 - v9;
  v10 = __chkstk_darwin(v8);
  v88 = &v77 - v11;
  __chkstk_darwin(v10);
  v87 = &v77 - v12;
  v13 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UUID();
  v16 = *(v86 - 8);
  __chkstk_darwin(v86);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v90;
  if (!v90)
  {
    goto LABEL_10;
  }

  v20 = v89;

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000078E8(v22, qword_1003D28C0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "begingListening called when source text is present", v25, 2u);
    }
  }

  else
  {
LABEL_10:
    v78 = v5;
    v26 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
    v27 = *(v26 + 24);
    v80 = v4;
    v81 = v18;
    if (v27 == 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v77 - 2) = v26;
      *(&v77 - 8) = 0;
      v89 = v26;
      sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v26 + 24) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v90)
    {

      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000078E8(v29, qword_1003D28C0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Cancelling TTS when dictation starts", v32, 2u);
      }

      sub_1002BBD20();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v89 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v89) = 1;

      static Published.subscript.setter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v89 != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v89) = 1;

      static Published.subscript.setter();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v89) = 257;

    static Published.subscript.setter();
    v33 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v34 = v13[14];
    v79 = v16;
    (*(v16 + 56))(&v15[v34], 1, 1, v86);
    *&v15[v13[6]] = 2;
    *&v15[v13[7]] = 2;
    *&v15[v13[8]] = 0;
    v15[v13[9]] = 0;
    v35 = &v15[v13[10]];
    *v35 = 0;
    v35[8] = 1;
    v15[v13[11]] = 0;
    *&v15[v13[12]] = 0;
    v36 = &v15[v13[13]];
    *v36 = 0;
    v36[8] = 1;
    sub_10022520C(v15);
    v37 = *(v33 + 16);
    if (v37)
    {
      v38 = [v37 invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100077D38(v15, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
      v39 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_speechManager);
      swift_getKeyPath();
      swift_getKeyPath();
      v40 = v87;
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v77 = v89;
      v84 = v90;
      swift_getKeyPath();
      swift_getKeyPath();
      v41 = v82;
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v42 = v83;
      static Published.subscript.getter();

      v43 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v45 = Locale._bridgeToObjectiveC()().super.isa;
      v46 = [v43 initWithSourceLocale:isa targetLocale:v45];

      v47 = v78;
      v48 = *(v78 + 8);
      v49 = v42;
      v50 = v85;
      v48(v49, v85);
      v48(v41, v50);
      LODWORD(v83) = sub_10022CDDC(v46);

      sub_100005AD4(qword_1003B5180);
      v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1002D3160;
      (*(v47 + 16))(v52 + v51, v40, v50);
      v53 = sub_10011EA1C(v52);
      swift_setDeallocating();
      v48((v52 + v51), v50);
      swift_deallocClassInstance();
      v54 = &v39[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v55 = *(v54 + 1);
        ObjectType = swift_getObjectType();
        (*(v55 + 16))(1, 0, v53, ObjectType, v55);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v57 = v80;
      v58 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator;
      [*&v39[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] cleanup];
      v59 = objc_allocWithZone(_LTSpeechTranslationRequest);
      v60 = Locale._bridgeToObjectiveC()().super.isa;
      v61 = Locale._bridgeToObjectiveC()().super.isa;
      v62 = [v59 initWithSourceLocale:v60 targetLocale:v61];

      v63 = v62;
      v64 = v77;
      v65 = String._bridgeToObjectiveC()();
      [v63 setSessionID:v65];

      [v63 setCensorSpeech:byte_1003D2A90];
      sub_10000A2CC(0, &qword_1003A9B80);
      v66 = static NSUserDefaults.translationGroupDefaults.getter();
      LOBYTE(v65) = NSUserDefaults.onDeviceOnly.getter();

      [v63 setForcedOfflineTranslation:v65 & 1];
      v91 = &type metadata for TranslateFeatures;
      v92 = sub_100009DF8();
      LOBYTE(v89) = 18;
      LOBYTE(v65) = isFeatureEnabled(_:)();
      sub_100008664(&v89);
      if (v65)
      {
        [v63 setPreferOnDeviceIfAvailable:1];
      }

      [v63 setAutoEndpoint:1];
      [v63 setEnableStreamingSpeechTranslation:0];
      [v63 setAutodetectLanguage:v83 & 1];
      [v63 setEnableVAD:0];
      [v63 setEnableAirPodsOwnVAD:0];
      [v63 setEnableMultiFieldInput:0];
      [v63 setEnableTranslationSemanticSegmentation:0];
      [v63 setForceSourceLocale:1];
      [v63 set_supportsGenderDisambiguation:1];
      [v63 setSourceOrigin:0];
      [v63 setDelegate:v39];
      [v63 setTaskHint:{objc_msgSend(v63, "taskHint")}];
      v67 = v81;
      v68 = UUID._bridgeToObjectiveC()().super.isa;
      [v63 setLogIdentifier:v68];

      v39[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 0;
      [*&v39[v58] translate:v63];
      v69 = *&v39[v58];
      _s21SpeechResultContainerCMa();
      swift_allocObject();
      v70 = v63;
      *&v39[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer] = sub_100241798(v69, v70);

      v71 = type metadata accessor for TaskPriority();
      (*(*(v71 - 8) + 56))(v57, 1, 1, v71);
      v72 = swift_allocObject();
      v72[2] = 0;
      v72[3] = 0;
      v72[4] = v39;
      v72[5] = v70;
      v72[6] = 0;
      v72[7] = 0;
      v73 = v84;
      v72[8] = v64;
      v72[9] = v73;
      v72[10] = 0;
      v74 = v70;
      v75 = v39;
      sub_10005E36C(0, 0, v57, &unk_1002DB9C0, v72);

      v76 = v85;
      v48(v88, v85);
      v48(v87, v76);
      (*(v79 + 8))(v67, v86);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000663B0(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v18 & 1) != 0 || BYTE1(v18))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v18) = 0;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18) = 0;

    static Published.subscript.setter();
  }

  v4 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_speechManager);
  v5 = v4 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v7 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(0, 0, 0, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    v9 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer;
    v10 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
    if (v10)
    {
      [*(v10 + 48) endAudio];
    }

    sub_10020BB08();
    *(v4 + v9) = 0;

    [*(v4 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator) cleanup];
  }

  else
  {
    if (Strong)
    {
      v11 = *(v5 + 8);
      v12 = swift_getObjectType();
      (*(v11 + 16))(0, 0, 0, v12, v11);
      swift_unknownObjectRelease();
    }

    v13 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
    if (v13)
    {
      [*(v13 + 48) endAudio];
    }

    sub_10020BB08();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = *(&v19 + 1);
  sub_100009EBC(&v18, &qword_1003ACDA0);
  if (v14)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001F620(&v18, &v17, &qword_1003ACDA0);

    static Published.subscript.setter();
    sub_100009EBC(&v18, &qword_1003ACDA0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18) = 1;

    static Published.subscript.setter();
  }

  *(&v19 + 1) = &type metadata for TranslateFeatures;
  *&v20 = sub_100009DF8();
  LOBYTE(v18) = 9;
  v15 = isFeatureEnabled(_:)();
  sub_100008664(&v18);
  if (v15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v18)
    {
      sub_100278D7C(1u, 0, 0);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18 == 2 || (v18 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18) = 0;

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000668DC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 == 1)
  {
    sub_1000663B0(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  if (v4)
  {

    if ((a1 & 1) == 0)
    {
      return sub_1002BBD20();
    }
  }

  return result;
}

uint64_t sub_1000669C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v16)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v0 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v0)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = String.count.getter();

  if (!v1)
  {
    goto LABEL_13;
  }

  v17 = &type metadata for TranslateFeatures;
  v18 = sub_100009DF8();
  LOBYTE(v15) = 4;
  v2 = isFeatureEnabled(_:)();
  sub_100008664(&v15);
  if ((v2 & 1) == 0)
  {
    v12 = 0;
    return v12 & 1;
  }

  v3 = sub_100060488();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = sub_100264CAC(v15, v16);

  if ((v4 & 1) == 0)
  {

LABEL_13:
    v12 = 1;
    return v12 & 1;
  }

  v5 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslation;
  swift_beginAccess();
  sub_10001F620(&v3[v5], &v15, &unk_1003B9EC0);
  v6 = v17;
  if (!v17)
  {

    sub_100009EBC(&v15, &unk_1003B9EC0);
    goto LABEL_13;
  }

  v7 = sub_1000085CC(&v15, v17);
  Description = v6[-1].Description;
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Description[2](v10);
  sub_100009EBC(&v15, &unk_1003B9EC0);
  v11 = dispatch thunk of TranslationResult.isFinal.getter();

  (Description[1])(v10, v6);
  v12 = v11 ^ 1;
  return v12 & 1;
}

BOOL sub_100066D38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v3)
  {
    return 1;
  }

  v0 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v0 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  return v0 == 0;
}

uint64_t sub_100066DDC()
{
  v0 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v0 - 8);
  v54 = &v47[-v1];
  v2 = type metadata accessor for UUID();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v4 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = type metadata accessor for Locale();
  v5 = *(v57 - 8);
  v6 = __chkstk_darwin(v57);
  v58 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v47[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v60)
  {
    v10 = v59;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v60)
  {
    v12 = v60;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v55 = v10;
  v56 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v59;
  if (v59)
  {
    v14 = [v59 string];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v16;
  }

  else
  {
    v15 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v58;
  static Published.subscript.getter();

  v18 = static Locale.== infix(_:_:)();
  v53 = v5;
  v19 = *(v5 + 8);
  v20 = v57;
  v19(v17, v57);
  v19(v9, v20);
  if (v18)
  {

    v11 = v56;

    v21 = v55;
  }

  else
  {
    v21 = v15;
  }

  if (String.count.getter() < 1)
  {

    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000078E8(v42, qword_1003D28C0);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Request to broadcast a translation when the text to display is empty", v45, 2u);
    }

    return 0;
  }

  else
  {
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v49 = v23;
    v50 = v22;
    v24 = v51;
    v25 = v52;
    (*(v51 + 8))(v4, v52);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v48 = v59;
    v26 = *(v24 + 56);
    v27 = v54;
    v26(v54, 1, 1, v25);
    type metadata accessor for TestableTranslation();
    v28 = swift_allocObject();
    v29 = v21;
    v30 = (v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_romanization);
    *v30 = 0;
    v30[1] = 0;
    v31 = v25;
    v32 = v27;
    v33 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_ttsPlaybackRateDouble;
    *(v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_ttsPlaybackRateDouble) = 0x3FF0000000000000;
    v34 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId;
    v26((v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId), 1, 1, v31);
    v35 = v49;
    *(v28 + 16) = v50;
    *(v28 + 24) = v35;
    v36 = *(v53 + 32);
    v37 = v9;
    v38 = v57;
    v36(v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_sourceLocale, v37, v57);
    v36(v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_targetLocale, v58, v38);
    *(v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_isFavorite) = v48;
    v39 = (v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displaySourceText);
    v40 = v56;
    *v39 = v55;
    v39[1] = v40;
    v41 = (v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displayTargetText);
    *v41 = v29;
    v41[1] = v11;
    *v30 = 0;
    v30[1] = 0;
    *(v28 + v33) = 0x3FF0000000000000;
    *(v28 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_showDisambiguation) = 0;
    swift_beginAccess();
    sub_10003BD84(v32, v28 + v34, &unk_1003B8C90);
    swift_endAccess();
    sub_10007373C(&qword_1003AD9B0, type metadata accessor for TestableTranslation);
  }

  return v28;
}

void sub_100067508()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = v61 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v72 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v71 = v61 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v61 - v12;
  __chkstk_darwin(v11);
  v75 = v61 - v14;
  v15 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v15);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for UUID();
  isa = v76[-1].isa;
  v18 = *(isa + 8);
  v19 = __chkstk_darwin(v76);
  v70 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v74 = v61 - v20;
  if (sub_1000669C8())
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000078E8(v21, qword_1003D28C0);
    v76 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v76, v22, "Ignoring request to toggleFavorite with actions disabled", v23, 2u);
    }

    v24 = v76;
  }

  else
  {
    v67 = v5;
    v68 = v6;
    v69 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = static Published.subscript.modify();
    *v26 = !*v26;
    v25(&v77, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27 = v78;
    if (v78)
    {
      v28 = v77;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v77 == 1)
      {
        v65 = v28;
        if (qword_1003A9290 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_1000078E8(v64, qword_1003D28C0);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Creating a new final translation request for the favorited translation", v31, 2u);
        }

        v32 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        (*(isa + 7))(&v17[v15[14]], 1, 1, v76);
        *&v17[v15[6]] = 1;
        *&v17[v15[7]] = 1;
        *&v17[v15[8]] = 0;
        v17[v15[9]] = 0;
        v33 = &v17[v15[10]];
        *v33 = 0;
        v33[8] = 1;
        v17[v15[11]] = 0;
        *&v17[v15[12]] = 0;
        v34 = &v17[v15[13]];
        *v34 = 0;
        v34[8] = 1;
        sub_10022520C(v17);
        v35 = *(v32 + 16);
        if (v35)
        {
          v36 = [v35 invocationId];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100077D38(v17, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
          v66 = sub_100060488();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v63 = v77;
          v37 = v4;
          if (qword_1003A9288 != -1)
          {
            swift_once();
          }

          sub_1000078E8(v64, qword_1003D28A8);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.info.getter();

          v40 = os_log_type_enabled(v38, v39);
          v61[1] = v18;
          v62 = v27;
          if (v40)
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v77 = v42;
            *v41 = 136642819;
            *(v41 + 4) = sub_10028D78C(v65, v27, &v77);
            _os_log_impl(&_mh_execute_header, v38, v39, "Performing final translation; sourceText: %{sensitive}s", v41, 0xCu);
            sub_100008664(v42);
          }

          v43 = v68;
          v44 = type metadata accessor for TaskPriority();
          (*(*(v44 - 8) + 56))(v4, 1, 1, v44);
          v45 = *(v43 + 16);
          v46 = v67;
          v45(v71, v75, v67);
          v45(v72, v69, v46);
          v47 = isa;
          (*(isa + 2))(v70, v74, v76);
          type metadata accessor for MainActor();
          v48 = v66;

          v49 = static MainActor.shared.getter();
          v50 = *(v43 + 80);
          v51 = (v50 + 56) & ~v50;
          v52 = (v7 + v50 + v51) & ~v50;
          v53 = v52 + v7;
          v54 = *(v47 + 80);
          v68 = v37;
          v55 = (v54 + v53 + 1) & ~v54;
          v56 = swift_allocObject();
          *(v56 + 2) = v49;
          *(v56 + 3) = &protocol witness table for MainActor;
          v57 = v65;
          *(v56 + 4) = v48;
          *(v56 + 5) = v57;
          *(v56 + 6) = v62;
          v58 = *(v43 + 32);
          v58(&v56[v51], v71, v46);
          v58(&v56[v52], v72, v46);
          v56[v53] = v63;
          v59 = v76;
          (*(v47 + 4))(&v56[v55], v70, v76);
          sub_10005E36C(0, 0, v68, &unk_1002D7D28, v56);

          v60 = *(v43 + 8);
          v60(v69, v46);
          v60(v75, v46);
          (*(v47 + 1))(v74, v59);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

void sub_100067FB0()
{
  if (sub_1000669C8())
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_1000078E8(v0, qword_1003D28C0);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Ignoring request to show dictionary with actions disabled", v2, 2u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    sub_100064DF0(1);
  }
}

void sub_100068158()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1000669C8() & 1) == 0)
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000781B8;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100241654;
    aBlock[3] = &unk_1003813F0;
    v10 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v10);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v11 = aBlock[0];
    if (aBlock[0])
    {
      v12 = [aBlock[0] string];

      v13 = v12;
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String.count.getter();

      if (v14 >= 1)
      {
        v15 = [objc_opt_self() generalPasteboard];
        static UTType.plainText.getter();
        UTType.identifier.getter();
        (*(v1 + 8))(v3, v0);
        v16 = String._bridgeToObjectiveC()();

        [v15 setValue:v13 forPasteboardType:v16];

LABEL_19:
        return;
      }
    }

    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D28C0);
    v16 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, v18, "Unable to get valid target text to copy to pasteboard", v19, 2u);
    }

    goto LABEL_19;
  }

  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D28C0);
  v21 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v21, v5, "Ignoring request to copy translation with actions disabled", v6, 2u);
  }

  v7 = v21;
}

unint64_t sub_1000685B8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v13 - v5;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  sub_100005AD4(&qword_1003AD9A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3550;
  *(inited + 32) = 0x6D614E746E657665;
  v13[1] = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  sub_10000A2CC(0, &qword_1003A9AA8);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0x6E6F697461636F6CLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = NSString.init(stringLiteral:)();
  strcpy((inited + 80), "sourceLocale");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Locale.ltIdentifier.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  v9 = String._bridgeToObjectiveC()();

  *(inited + 96) = v9;
  strcpy((inited + 104), "targetLocale");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Locale.ltIdentifier.getter();
  v8(v4, v0);
  v10 = String._bridgeToObjectiveC()();

  *(inited + 120) = v10;
  v11 = sub_1002927F0(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003AD9A8);
  swift_arrayDestroy();

  return v11;
}

void sub_100068910()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12 == 1)
  {
    v1 = sub_10028C980(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
    v5 = v3 + 1;
    if (v2 >> 1 <= v3)
    {
      v1 = sub_10028C980((v2 > 1), v3 + 1, 1, v1);
      v2 = *(v1 + 3);
      v4 = v2 >> 1;
    }

    *(v1 + 2) = v5;
    *&v1[8 * v3 + 32] = 1;
    v6 = v3 + 2;
    if (v4 < v6)
    {
      v1 = sub_10028C980((v2 > 1), v6, 1, v1);
    }

    v7 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11)
    {
      goto LABEL_11;
    }

    v7 = 1;
    v1 = sub_10028C980(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v1 + 2);
    v8 = *(v1 + 3);
    v6 = v5 + 1;
    if (v5 >= v8 >> 1)
    {
      v7 = 1;
      v1 = sub_10028C980((v8 > 1), v5 + 1, 1, v1);
    }
  }

  *(v1 + 2) = v6;
  *&v1[8 * v5 + 32] = v7;
LABEL_11:
  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of DisambiguationResultModel.excludedTypes.setter();
  }

  else
  {
  }
}

void sub_100068B18()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_debounceTimer;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_debounceTimer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1000780EC;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000CF44C;
  v7[3] = &unk_1003813A0;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:1.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
}

uint64_t sub_100068C38()
{
  v0 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10005E36C(0, 0, v2, &unk_1002D7C38, v6);
}

uint64_t sub_100068DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for CoreAnalyticsLogger.CardType();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100068EAC, v7, v6);
}

uint64_t sub_100068EAC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    sub_10006C680();
    (*(v4 + 104))(v3, enum case for CoreAnalyticsLogger.CardType.compose(_:), v5);
    v6 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel);
    if (v6)
    {
      v7 = v6;
      v8 = DisambiguationResultModel.disambiguableResult.getter();
    }

    else
    {
      v8 = 0;
    }

    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    sub_100068FE8(v9, v8);

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

void sub_100068FE8(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for CoreAnalyticsLogger.CardType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v19 - v10;
  if (a2)
  {
    v20 = a2;
    if ([v20 hasDisambiguations])
    {
      v19[1] = [v20 hasDisambiguationsOfType:1];
      v19[0] = [v20 hasDisambiguationsOfType:0];
      sub_10000A2CC(0, &qword_1003A9B80);
      v12 = static NSUserDefaults.translationGroupDefaults.getter();
      NSUserDefaults.genderDisambiguationEnabled.getter();

      (*(v6 + 16))(v11, a1, v5);
      v13 = (*(v6 + 88))(v11, v5);
      v14 = v13;
      if (v13 == enum case for CoreAnalyticsLogger.CardType.compose(_:))
      {
        v15 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);
        if (*(v15 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) == 1)
        {

          return;
        }

        *(v15 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 1;

        v17 = static NSUserDefaults.translationGroupDefaults.getter();
        NSUserDefaults.genderDisambiguationEnabled.getter();

        type metadata accessor for CoreAnalyticsLogger();
        static CoreAnalyticsLogger.shared.getter();
        (*(v6 + 104))(v9, v14, v5);
        dispatch thunk of CoreAnalyticsLogger.didOfferDisambiguation(fromCard:hasGender:hasMeaning:genderDisambiguationSettingEnabled:)();
      }

      else
      {
        if (v13 != enum case for CoreAnalyticsLogger.CardType.committed(_:))
        {
          v21 = 0;
          v22 = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          v18._object = 0x80000001002F2200;
          v18._countAndFlagsBits = 0xD000000000000011;
          String.append(_:)(v18);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }

        type metadata accessor for CoreAnalyticsLogger();
        static CoreAnalyticsLogger.shared.getter();
        (*(v6 + 104))(v9, v14, v5);
        dispatch thunk of CoreAnalyticsLogger.didOfferDisambiguation(fromCard:hasGender:hasMeaning:genderDisambiguationSettingEnabled:)();
      }

      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v16 = v20;
    }
  }
}

void sub_1000693B4(void *a1)
{
  v2 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v2 - 8);
  v4 = &v120 - v3;
  v134 = type metadata accessor for DispatchWorkItemFlags();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for DispatchQoS();
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for DispatchTime();
  v128 = *(v136 - 8);
  v7 = __chkstk_darwin(v136);
  v126 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v127 = &v120 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v138 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = (&v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100005AD4(&unk_1003B8C90);
  v14 = __chkstk_darwin(v13 - 8);
  v135 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v144 = &v120 - v16;
  v139 = type metadata accessor for StoredTranslationResult();
  v147 = *(v139 - 8);
  v17 = __chkstk_darwin(v139);
  v141 = (&v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v146 = &v120 - v19;
  v20 = type metadata accessor for SpeechResultOrigin();
  v137 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for StoredSpeechResult();
  v142 = *(v143 - 8);
  v23 = __chkstk_darwin(v143);
  v140 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v145 = &v120 - v25;
  v26 = type metadata accessor for Locale();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v120 - v31;
  v149 = a1;
  v33 = [a1 userInfo];
  if (!v33)
  {
    goto LABEL_16;
  }

  v34 = v33;
  v125 = v4;
  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v150) = 0;
  v36 = sub_100077FD4();
  AnyHashable.init<A>(_:)();
  if (!*(v35 + 16) || (v37 = sub_10028DF68(&aBlock), (v38 & 1) == 0))
  {

    sub_100078028(&aBlock);
LABEL_16:
    v151 = 0u;
    v152 = 0u;
    goto LABEL_17;
  }

  sub_10000A37C(*(v35 + 56) + 32 * v37, &v151);
  sub_100078028(&aBlock);

  if (!*(&v152 + 1))
  {
LABEL_17:
    sub_100009EBC(&v151, &unk_1003AB9C0);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000078E8(v46, qword_1003D28C0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Request to open a system translation with nil or empty source text", v49, 2u);
    }

    goto LABEL_22;
  }

  v39 = HIBYTE(v155) & 0xF;
  if ((v155 & 0x2000000000000000) == 0)
  {
    v39 = aBlock & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {

    goto LABEL_18;
  }

  v122 = aBlock;
  v123 = v155;
  v124 = v36;
  sub_100062730(0, 0, 1);
  v40 = v149;
  v41 = [v149 userInfo];
  if (!v41)
  {
    v151 = 0u;
    v152 = 0u;
    goto LABEL_27;
  }

  v42 = v41;
  v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v150) = 2;
  AnyHashable.init<A>(_:)();
  if (!*(v43 + 16) || (v44 = sub_10028DF68(&aBlock), (v45 & 1) == 0))
  {

    sub_100078028(&aBlock);
    v151 = 0u;
    v152 = 0u;
    v40 = v149;
    goto LABEL_27;
  }

  sub_10000A37C(*(v43 + 56) + 32 * v44, &v151);
  sub_100078028(&aBlock);

  v40 = v149;
  if (!*(&v152 + 1))
  {
LABEL_27:
    sub_100009EBC(&v151, &unk_1003AB9C0);
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    Locale.init(identifier:)();
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    (*(v27 + 16))(v30, v32, v26);

    v40 = v149;
    static Published.subscript.setter();
    sub_10005F580();
    (*(v27 + 8))(v32, v26);
  }

LABEL_28:
  v50 = [v40 userInfo];
  if (!v50)
  {
    v151 = 0u;
    v152 = 0u;
    goto LABEL_36;
  }

  v51 = v50;
  v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v150) = 3;
  AnyHashable.init<A>(_:)();
  if (!*(v52 + 16) || (v53 = sub_10028DF68(&aBlock), (v54 & 1) == 0))
  {

    sub_100078028(&aBlock);
    v151 = 0u;
    v152 = 0u;
    v40 = v149;
    goto LABEL_36;
  }

  sub_10000A37C(*(v52 + 56) + 32 * v53, &v151);
  sub_100078028(&aBlock);

  v40 = v149;
  if (!*(&v152 + 1))
  {
LABEL_36:
    sub_100009EBC(&v151, &unk_1003AB9C0);
    goto LABEL_37;
  }

  if (swift_dynamicCast())
  {
    Locale.init(identifier:)();
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    (*(v27 + 16))(v30, v32, v26);

    v40 = v149;
    static Published.subscript.setter();
    sub_10005F8B0();
    (*(v27 + 8))(v32, v26);
  }

LABEL_37:
  v55 = [v40 userInfo];
  if (!v55)
  {
LABEL_45:
    v151 = 0u;
    v152 = 0u;
    goto LABEL_46;
  }

  v56 = v55;
  v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v150) = 1;
  AnyHashable.init<A>(_:)();
  if (!*(v57 + 16) || (v58 = sub_10028DF68(&aBlock), (v59 & 1) == 0))
  {

    sub_100078028(&aBlock);
    goto LABEL_45;
  }

  sub_10000A37C(*(v57 + 56) + 32 * v58, &v151);
  sub_100078028(&aBlock);

  if (!*(&v152 + 1))
  {
LABEL_46:
    sub_100009EBC(&v151, &unk_1003AB9C0);
    goto LABEL_47;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_47:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;

    static Published.subscript.setter();
    sub_100064410(v122, v123);

    goto LABEL_48;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v148;
  static Published.subscript.getter();

  (*(v137 + 104))(v22, enum case for SpeechResultOrigin.text(_:), v20);
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = 1;
  StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  *(v60 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_newTranslationFromPunchOut) = 1;
  v62 = *(*(v60 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation) + 16);
  if (v62)
  {

    v63 = [v62 invocationId];
    v64 = v144;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = 0;
    v65 = v147;
  }

  else
  {
    v65 = v147;
    v64 = v144;
  }

  v85 = v142;
  v86 = type metadata accessor for UUID();
  (*(*(v86 - 8) + 56))(v64, v61, 1, v86);
  v87 = v148;

  sub_100225A0C();

  v137 = *(v87 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
  v88 = *(v85 + 16);
  v89 = v140;
  v90 = v143;
  v88(v140, v145, v143);
  v91 = *(v65 + 16);
  v92 = v141;
  v93 = v139;
  v91(v141, v146, v139);
  v157 = v90;
  v158 = sub_10007373C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
  v94 = sub_100050D60(&aBlock);
  v88(v94, v89, v90);
  *(&v152 + 1) = v93;
  v153 = sub_10007373C(&qword_1003AED00, &type metadata accessor for StoredTranslationResult);
  v95 = sub_100050D60(&v151);
  v91(v95, v92, v93);
  sub_10000A2CC(0, &qword_1003A9C40);
  *v12 = static OS_dispatch_queue.main.getter();
  v96 = v138;
  (*(v138 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v10);
  v97 = _dispatchPreconditionTest(_:)();
  v99 = *(v96 + 8);
  v98 = (v96 + 8);
  v99(v12, v10);
  v40 = v149;
  if ((v97 & 1) == 0)
  {
    __break(1u);
    goto LABEL_80;
  }

  v10 = (v137 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  sub_1000085CC((v137 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v137 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  v100 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
  if (!v100)
  {
    v92 = *(v147 + 8);
    v92(v141, v93);
    v98 = *(v142 + 8);
    v98(v140, v143);
    sub_100008664(&aBlock);
    sub_100008664(&v151);
    if (qword_1003A9290 == -1)
    {
LABEL_74:
      v107 = type metadata accessor for Logger();
      sub_1000078E8(v107, qword_1003D28C0);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      v110 = os_log_type_enabled(v108, v109);
      v111 = v144;
      if (v110)
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "Failed to insert translation from punchout", v112, 2u);
      }

      sub_100009EBC(v111, &unk_1003B8C90);
      v92(v146, v93);
      v98(v145, v143);
      return;
    }

LABEL_82:
    swift_once();
    goto LABEL_74;
  }

  v101 = v100;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v102 = String._bridgeToObjectiveC()();

  [v101 setSessionID:v102];

  sub_10001F620(v144, v135, &unk_1003B8C90);
  dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
  v98 = swift_getKeyPath();
  swift_getKeyPath();
  v12 = v101;
  v92 = static Published.subscript.modify();
  v89 = v147;
  if (*v103 >> 62)
  {
LABEL_80:
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_82;
  }

LABEL_72:
  sub_1002B525C(0, 0, v12);

  v92(&v150, 0);

  v104 = *(v89 + 1);
  v147 = (v89 + 8);
  v104(v141, v93);
  v105 = *(v142 + 8);
  v106 = v143;
  v105(v140, v143);
  sub_100008664(&aBlock);
  sub_100008664(&v151);
  sub_1000085CC(v10, v10[3]);
  dispatch thunk of TranslationStore.save()();

  sub_100009EBC(v144, &unk_1003B8C90);
  v104(v146, v139);
  v105(v145, v106);
LABEL_48:
  v66 = [v40 userInfo];
  if (!v66)
  {
LABEL_57:
    v151 = 0u;
    v152 = 0u;
    goto LABEL_58;
  }

  v67 = v66;
  v68 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v150) = 5;
  AnyHashable.init<A>(_:)();
  if (!*(v68 + 16) || (v69 = sub_10028DF68(&aBlock), (v70 & 1) == 0))
  {

    sub_100078028(&aBlock);
    goto LABEL_57;
  }

  sub_10000A37C(*(v68 + 56) + 32 * v69, &v151);
  sub_100078028(&aBlock);

  if (!*(&v152 + 1))
  {
LABEL_58:
    sub_100009EBC(&v151, &unk_1003AB9C0);
    goto LABEL_59;
  }

  if ((swift_dynamicCast() & 1) != 0 && aBlock == 1)
  {
    v71 = *(v148 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
    if (v71[3])
    {
      v72 = swift_getKeyPath();
      __chkstk_darwin(v72);
      *(&v120 - 2) = v71;
      *(&v120 - 8) = 0;
      aBlock = v71;
      sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v71 + 24) = 0;
    }

    sub_10000A2CC(0, &qword_1003A9C40);
    v147 = static OS_dispatch_queue.main.getter();
    v113 = v126;
    static DispatchTime.now()();
    v114 = v127;
    + infix(_:_:)();
    v149 = *(v128 + 8);
    (v149)(v113, v136);
    v158 = sub_1000780D4;
    v159 = v148;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v156 = sub_100096948;
    v157 = &unk_100381378;
    v115 = _Block_copy(&aBlock);

    v116 = v129;
    static DispatchQoS.unspecified.getter();
    *&v151 = _swiftEmptyArrayStorage;
    sub_10007373C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
    v117 = v131;
    v118 = v134;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v119 = v147;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v115);

    (*(v133 + 8))(v117, v118);
    (*(v130 + 8))(v116, v132);
    (v149)(v114, v136);
  }

LABEL_59:
  v73 = [v40 userInfo];
  if (!v73)
  {
LABEL_66:
    v151 = 0u;
    v152 = 0u;
    goto LABEL_67;
  }

  v74 = v73;
  v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v150) = 4;
  AnyHashable.init<A>(_:)();
  if (!*(v75 + 16) || (v76 = sub_10028DF68(&aBlock), (v77 & 1) == 0))
  {

    sub_100078028(&aBlock);
    goto LABEL_66;
  }

  sub_10000A37C(*(v75 + 56) + 32 * v76, &v151);
  sub_100078028(&aBlock);

  if (!*(&v152 + 1))
  {
LABEL_67:
    sub_100009EBC(&v151, &unk_1003AB9C0);
    return;
  }

  type metadata accessor for TypedInputInstrumentation();
  if (swift_dynamicCast())
  {
    v78 = aBlock;
    v79 = v125;
    Date.init()();
    v80 = type metadata accessor for Date();
    (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
    v81 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
    swift_beginAccess();
    sub_10003BD84(v79, v78 + v81, &qword_1003B5130);
    swift_endAccess();
    v47 = String._bridgeToObjectiveC()();
    v82 = swift_allocObject();
    *(v82 + 16) = v78;
    v158 = sub_1000780B4;
    v159 = v82;
    aBlock = _NSConcreteStackBlock;
    v155 = 1107296256;
    v156 = sub_100241654;
    v157 = &unk_100381350;
    v83 = _Block_copy(&aBlock);
    v84 = v78;

    AnalyticsSendEventLazy();
    _Block_release(v83);

LABEL_22:
  }
}

uint64_t sub_10006AE64(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10006AFE4()
{
  sub_10006D434();
  if (v0 <= 0x3F)
  {
    sub_100026204(319, &qword_1003B95C0);
    if (v1 <= 0x3F)
    {
      sub_100029834(319, &qword_1003AEC00, &qword_1003AA740);
      if (v2 <= 0x3F)
      {
        sub_100029834(319, &qword_1003ACD30, &qword_1003ACD38);
        if (v3 <= 0x3F)
        {
          sub_100029834(319, &qword_1003ACD40, &qword_1003ACD48);
          if (v4 <= 0x3F)
          {
            sub_100029834(319, &qword_1003ACD50, &qword_1003ACD58);
            if (v5 <= 0x3F)
            {
              sub_100029834(319, &qword_1003ACD60, &qword_1003ACD68);
              if (v6 <= 0x3F)
              {
                sub_100029834(319, &qword_1003ACD70, &qword_1003ACD78);
                if (v7 <= 0x3F)
                {
                  sub_100029834(319, &qword_1003ACD80, &qword_1003ACD88);
                  if (v8 <= 0x3F)
                  {
                    sub_100026204(319, &qword_1003ACD90);
                    if (v9 <= 0x3F)
                    {
                      sub_100029834(319, &qword_1003ACD98, &qword_1003ACDA0);
                      if (v10 <= 0x3F)
                      {
                        sub_100026204(319, &unk_1003ACDA8);
                        if (v11 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
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

void sub_10006B470(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v108 = a4;
  v113 = a1;
  v114 = a2;
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v93[-v7];
  v9 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v9);
  v11 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v105 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = v15;
  __chkstk_darwin(v14);
  v111 = &v93[-v16];
  v17 = type metadata accessor for Locale();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = __chkstk_darwin(v17);
  v104 = &v93[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v110 = &v93[-v21];
  v22 = __chkstk_darwin(v20);
  v109 = &v93[-v23];
  v101 = v24;
  __chkstk_darwin(v22);
  v112 = &v93[-v25];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = LOBYTE(v115[0]);
  if (LOBYTE(v115[0]) == 3)
  {
    v98 = v9;
    v103 = v13;
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_1000078E8(v27, qword_1003D28C0);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    v31 = os_log_type_enabled(v29, v30);
    v99 = v8;
    v100 = v12;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v115[0] = v95;
      *v32 = 136446466;
      swift_getKeyPath();
      swift_getKeyPath();
      v96 = v28;
      v94 = v30;
      v97 = v27;
      v33 = v112;
      static Published.subscript.getter();

      v34 = Locale.ltIdentifier.getter();
      v36 = v35;
      v37 = v107;
      v38 = *(v106 + 8);
      v38(v33, v107);
      v39 = sub_10028D78C(v34, v36, v115);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v40 = Locale.ltIdentifier.getter();
      v42 = v41;
      v43 = v33;
      v27 = v97;
      v38(v43, v37);
      v12 = v100;
      v44 = sub_10028D78C(v40, v42, v115);

      *(v32 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v29, v94, "Requested text translation from '%{public}s'->'%{public}s'", v32, 0x16u);
      swift_arrayDestroy();
    }

    v45 = v114;
    v46 = v108;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v103;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 134218240;
      *(v51 + 4) = String.count.getter();

      *(v51 + 12) = 1024;
      *(v51 + 14) = v46 != 0;

      _os_log_impl(&_mh_execute_header, v47, v48, "... of length %ld has sanitized text: %{BOOL}d", v51, 0x12u);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v115[0] & 1) == 0)
    {
      v62 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v63 = v98;
      static Published.subscript.getter();

      (*(v50 + 56))(&v11[v63[14]], 1, 1, v12);
      *&v11[v63[6]] = 1;
      *&v11[v63[7]] = 1;
      *&v11[v63[8]] = 0;
      v11[v63[9]] = 0;
      v64 = &v11[v63[10]];
      *v64 = 0;
      v64[8] = 1;
      v11[v63[11]] = 0;
      *&v11[v63[12]] = 0;
      v65 = &v11[v63[13]];
      *v65 = 0;
      v65[8] = 1;
      sub_10022520C(v11);
      v66 = *(v62 + 16);
      if (v66)
      {
        v67 = [v66 invocationId];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100077D38(v11, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
        v68 = sub_100060488();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        LODWORD(v108) = LOBYTE(v115[0]);
        if (qword_1003A9288 != -1)
        {
          swift_once();
        }

        sub_1000078E8(v27, qword_1003D28A8);

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.info.getter();

        v71 = os_log_type_enabled(v69, v70);
        v72 = v113;
        v73 = v103;
        if (v71)
        {
          v74 = v12;
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v115[0] = v76;
          *v75 = 136642819;
          *(v75 + 4) = sub_10028D78C(v72, v114, v115);
          _os_log_impl(&_mh_execute_header, v69, v70, "Performing final translation; sourceText: %{sensitive}s", v75, 0xCu);
          sub_100008664(v76);
          v45 = v114;

          v12 = v74;
          v73 = v103;
        }

        v77 = type metadata accessor for TaskPriority();
        (*(*(v77 - 8) + 56))(v99, 1, 1, v77);
        v78 = v106;
        v79 = v107;
        v80 = *(v106 + 16);
        v80(v112, v109, v107);
        v80(v104, v110, v79);
        (*(v73 + 16))(v105, v111, v12);
        type metadata accessor for MainActor();

        v81 = static MainActor.shared.getter();
        v82 = *(v78 + 80);
        v83 = (v82 + 56) & ~v82;
        v84 = v45;
        v85 = (v101 + v82 + v83) & ~v82;
        v114 = v85 + v101;
        v86 = (*(v73 + 80) + v85 + v101 + 1) & ~*(v73 + 80);
        v87 = swift_allocObject();
        *(v87 + 2) = v81;
        *(v87 + 3) = &protocol witness table for MainActor;
        v88 = v112;
        v89 = v113;
        *(v87 + 4) = v68;
        *(v87 + 5) = v89;
        *(v87 + 6) = v84;
        v90 = *(v78 + 32);
        v90(&v87[v83], v88, v79);
        v90(&v87[v85], v104, v79);
        v87[v114] = v108;
        v91 = v100;
        (*(v73 + 32))(&v87[v86], v105, v100);
        sub_10005E36C(0, 0, v99, &unk_1002D7B90, v87);

        v92 = *(v78 + 8);
        v92(v110, v79);
        v92(v109, v79);
        (*(v73 + 8))(v111, v91);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000078E8(v52, qword_1003D28C0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v115[0] = v56;
      *v55 = 136315138;
      v57 = 0xE90000000000006BLL;
      v58 = 0x726F7774654E6F6ELL;
      if (v26 != 1)
      {
        v58 = 0xD000000000000014;
        v57 = 0x80000001002EF720;
      }

      if (v26)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0xD000000000000013;
      }

      if (v26)
      {
        v60 = v57;
      }

      else
      {
        v60 = 0x80000001002EF700;
      }

      v61 = sub_10028D78C(v59, v60, v115);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Skipping final translation because an error state is active: %s", v55, 0xCu);
      sub_100008664(v56);
    }
  }
}

uint64_t sub_10006C1A4(uint64_t a1)
{
  v24 = a1;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v11 = v25;
  v10 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v10)
  {
    goto LABEL_8;
  }

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = *(v9 + 16)) == 0)
  {

LABEL_8:

    goto LABEL_9;
  }

  v14 = objc_allocWithZone(_LTLocalePair);
  v23 = v13;
  v15 = v2;
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v17 = Locale._bridgeToObjectiveC()().super.isa;
  v18 = [v14 initWithSourceLocale:isa targetLocale:v17];

  v2 = v15;
  v19 = String._bridgeToObjectiveC()();
  v20 = v23;
  [v23 userEndedTypingWithPayload:v19 localePair:v18 reason:v24];

LABEL_9:
  v21 = *(v3 + 8);
  v21(v6, v2);
  return (v21)(v8, v2);
}

uint64_t sub_10006C46C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v8 = v11[0];
  v7 = v11[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100225618(v8, v7, v6, v4);

  v9 = *(v1 + 8);
  v9(v4, v0);
  return (v9)(v6, v0);
}

uint64_t sub_10006C680()
{
  v1 = type metadata accessor for GenderTipManager.Registration(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v28 = (&v27 - v6);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - v8;
  __chkstk_darwin(v7);
  v11 = (&v27 - v10);
  v27 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_genderTipManager);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel;
  v29 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationResultModel);
  if (v13)
  {
    v14 = v13;
    v15 = DisambiguationResultModel.disambiguableResult.getter();
  }

  else
  {
    v15 = 0;
  }

  *v9 = 0x65736F706D6F43;
  *(v9 + 1) = 0xE700000000000000;
  v16 = v1[5];
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v18(&v9[v16], 1, 1, v17);
  if (v15)
  {
    v19 = [v15 hasDisambiguationsOfType:1];
  }

  else
  {
    v19 = 0;
  }

  v9[v1[6]] = v19;
  v9[v1[7]] = 1;
  sub_100077CD0(v9, v11, type metadata accessor for GenderTipManager.Registration);
  sub_100109EB0(v11);

  sub_100077D38(v11, type metadata accessor for GenderTipManager.Registration);
  v20 = *(v29 + v12);
  if (v20)
  {
    v21 = v20;
    v22 = DisambiguationResultModel.disambiguableResult.getter();
  }

  else
  {
    v22 = 0;
  }

  *v4 = 0x65736F706D6F43;
  *(v4 + 1) = 0xE700000000000000;
  v18(&v4[v1[5]], 1, 1, v17);
  if (v22)
  {
    v23 = [v22 hasDisambiguationsOfType:1];
  }

  else
  {
    v23 = 0;
  }

  v4[v1[6]] = v23;
  v4[v1[7]] = 1;
  v24 = v28;
  sub_100077CD0(v4, v28, type metadata accessor for GenderTipManager.Registration);
  v25 = sub_100109B6C(v24) & 1;

  sub_100077D38(v24, type metadata accessor for GenderTipManager.Registration);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 != v31)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v25;

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10006CA14(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_100009440(v3);
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D28C0);
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v9 = 136446466;
    v12 = String.init<A>(describing:)();
    v14 = sub_10028D78C(v12, v13, &v39);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received error with reason '%{public}s': %@", v9, 0x16u);
    sub_100009EBC(v10, &unk_1003AECA0);
    v2 = v1;

    sub_100008664(v11);
  }

  switch(BYTE2(v4))
  {
    case 1u:
      goto LABEL_8;
    case 6u:
      swift_getKeyPath();
      swift_getKeyPath();
      BYTE2(v39) = 6;
      LOWORD(v39) = v4;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v39) = 1;
LABEL_14:

      return static Published.subscript.setter();
    case 5u:
LABEL_8:
      swift_getKeyPath();
      swift_getKeyPath();
      BYTE2(v39) = BYTE2(v4);
      LOWORD(v39) = v4;

      static Published.subscript.setter();
      sub_100005AD4(&qword_1003AD990);
      v16 = (type metadata accessor for TranslateTip(0) - 8);
      v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1002D3160;
      v19 = v18 + v17;
      v20 = objc_opt_self();

      v21 = [v20 mainBundle];
      v41._object = 0xE000000000000000;
      v22._object = 0x80000001002F2150;
      v22._countAndFlagsBits = 0xD000000000000016;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v41._countAndFlagsBits = 0;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v41);

      v25 = swift_allocObject();
      *(v25 + 16) = sub_100077C9C;
      *(v25 + 24) = v2;

      UUID.init()();
      *(v19 + v16[7]) = v24;
      v26 = (v19 + v16[8]);
      *v26 = 0;
      v26[1] = 0;
      v27 = (v19 + v16[9]);
      *v27 = sub_10003BA58;
      v27[1] = v25;

      swift_getKeyPath();
      swift_getKeyPath();
      v39 = v18;

      return static Published.subscript.setter();
  }

  v28 = v6;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v31 = 136446466;
    v34 = String.init<A>(describing:)();
    v36 = sub_10028D78C(v34, v35, &v39);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v28;
    *v32 = v28;
    v37 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Ignoring displaying an error because it's not allow-listed to display to the user: reason '%{public}s': %@", v31, 0x16u);
    sub_100009EBC(v32, &unk_1003AECA0);

    sub_100008664(v33);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v40;
  if (v40)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    v39 = 0;
    v40 = 0;
    goto LABEL_14;
  }

  return result;
}

void sub_10006D044()
{
  v0 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:14 userInfo:0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v17 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v18 || (v10 = sub_100060488()[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_streamingManagerState], , v10 == 1))
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (qword_1003A9290 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_1000078E8(v12, qword_1003D28C0);
        v8 = v0;
        v9 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v9, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          *(v14 + 4) = v8;
          *v15 = v8;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v9, v13, "Translate view was idle during XPC interruption, ignoring XPC error: %@", v14, 0xCu);
          sub_100009EBC(v15, &unk_1003AECA0);

          v8 = v9;
          v9 = v16;
        }

        goto LABEL_9;
      }
    }
  }

  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D28C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Translate view was active during XPC interruption: %@", v5, 0xCu);
    sub_100009EBC(v6, &unk_1003AECA0);
  }

  sub_1000663B0(0);
  v8 = v2;
  sub_100062730(v2, 0, 1);
  v9 = v8;
LABEL_9:
}

void sub_10006D434()
{
  if (!qword_1003ACD28)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ACD28);
    }
  }
}

uint64_t sub_10006D48C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ComposeTranslationViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_10006D4CC()
{
  swift_getKeyPath();
  sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_10006D56C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006D68C()
{
  swift_getKeyPath();
  sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t sub_10006D72C(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007373C(&qword_1003AC930, type metadata accessor for CardMetrics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10006D844()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator11CardMetrics___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10006D908()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10006D9D4()
{
  result = qword_1003AD810;
  if (!qword_1003AD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD810);
  }

  return result;
}

unint64_t sub_10006DA2C()
{
  result = qword_1003AD818;
  if (!qword_1003AD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD818);
  }

  return result;
}

uint64_t sub_10006DA80(char a1, char a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000078E8(v9, qword_1003D28C0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = a3;
    v23 = v13;
    *v12 = 67109634;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2 & 1;
    *(v12 + 14) = 2082;
    sub_100005AD4(&qword_1003AD820);
    v14 = Optional.debugDescription.getter();
    v16 = sub_10028D78C(v14, v15, &v23);

    *(v12 + 16) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Speech: listening status changed to isListening: %{BOOL}d, wasInterrupted: %{BOOL}d, locales: %{public}s", v12, 0x18u);
    sub_100008664(v13);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  *(v20 + 32) = v18;
  *(v20 + 40) = a1 & 1;

  sub_10005E36C(0, 0, v8, &unk_1002D7620, v20);
}

uint64_t sub_10006DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 256) = a5;
  *(v5 + 240) = a4;
  type metadata accessor for MainActor();
  *(v5 + 248) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DDF0, v7, v6);
}

uint64_t sub_10006DDF0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 256);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v1 == *(v0 + 16) || (*(v0 + 256) ? (v2 = 1) : (v2 = 3), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v2 == *(v0 + 16)))
    {
LABEL_25:

      goto LABEL_26;
    }

    v3 = *(v0 + 256);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v2;

    static Published.subscript.setter();
    if (v3)
    {
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000078E8(v4, qword_1003D28C0);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Speech: empty ELSE case", v7, 2u);
      }

      goto LABEL_25;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!*(v0 + 120))
    {
      sub_100009EBC(v0 + 96, &qword_1003ACDA0);
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000078E8(v14, qword_1003D28C0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "isListening false without a partial result.  This is likely just be an audio interruption (see rdar://129403664)", v17, 2u);
      }

      sub_1000663B0(1);
      goto LABEL_25;
    }

    v8 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v8;
    *(v0 + 80) = *(v0 + 160);
    v9 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v9;
    sub_10001F620(v0 + 16, v0 + 96, &qword_1003AD828);
    if (*(v0 + 160))
    {
      sub_100051124((v0 + 136), v0 + 176);
      sub_100008664(v0 + 96);
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000078E8(v10, qword_1003D28C0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Speech: finalizing partial translation", v13, 2u);
      }

      sub_10006E398((v0 + 16), (v0 + 176));

      sub_100008664(v0 + 176);
    }

    else
    {
      sub_100009EBC(v0 + 136, &unk_1003B9EC0);
      sub_100008664(v0 + 96);
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D28C0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Speech: Performing final text translation", v23, 2u);
      }

      sub_100064DF0(0);
      sub_1000663B0(0);
    }

    sub_100009EBC(v0 + 16, &qword_1003AD828);
  }

LABEL_26:
  v18 = *(v0 + 8);

  return v18();
}

void sub_10006E398(void *a1, void *a2)
{
  v5 = type metadata accessor for CoreAnalyticsLogger.CardType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of SpeechResult.isEmpty()())
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D28C0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not storing speech translation result, as speech result is empty.", v15, 2u);
    }
  }

  else
  {
    v29 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
    v30 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation;
    v16 = *(*(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation) + 16);
    v31 = v5;
    if (v16)
    {

      v17 = [v16 invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
    }

    else
    {
      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    }

    v20 = a1[3];
    v21 = a1[4];
    v22 = sub_1000085CC(a1, v20);
    v24 = a2[3];
    v23 = a2[4];
    v25 = sub_1000085CC(a2, v24);

    sub_100009EBC(v11, &unk_1003B8C90);

    sub_100225A0C();

    v26 = v31;
    (*(v6 + 104))(v8, enum case for CoreAnalyticsLogger.CardType.committed(_:), v31);
    sub_1000085CC(a2, a2[3]);
    v27 = dispatch thunk of TranslationResult.disambiguableResult.getter();
    sub_100068FE8(v8, v27);

    (*(v6 + 8))(v8, v26);
  }

  sub_1000663B0(0);
  sub_100062730(0, 0, 1);
}

uint64_t sub_10006E77C(void *a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  sub_1000085CC(a1, a1[3]);
  v7 = AnnotatedResult.displayString.getter();
  v9 = v8;
  v26 = a2;
  sub_10001F620(a2, &v27, &unk_1003B9EC0);
  if (*(&v28 + 1))
  {
    sub_1000085CC(&v27, *(&v28 + 1));
    v10 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v10 + 16))
    {
      sub_100031DD8(v10 + 32, &v30);

      sub_1000085CC(&v30, v31);
      v11 = TranslationAlternative.displayString.getter();
      v13 = v12;
      sub_100008664(&v30);
      sub_100008664(&v27);
      goto LABEL_7;
    }

    sub_100008664(&v27);
  }

  else
  {
    sub_100009EBC(&v27, &unk_1003B9EC0);
  }

  v11 = 0;
  v13 = 0xE000000000000000;
LABEL_7:
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v14 = v7;
  v15 = type metadata accessor for Logger();
  sub_1000078E8(v15, qword_1003D28C0);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *&v30 = swift_slowAlloc();
    *v18 = 136643075;
    *(v18 + 4) = sub_10028D78C(v7, v9, &v30);
    *(v18 + 12) = 2085;
    *(v18 + 14) = sub_10028D78C(v11, v13, &v30);
    _os_log_impl(&_mh_execute_header, v16, v17, "Speech: partial %{sensitive}s -> %{sensitive}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  sub_100031DD8(a1, &v30);
  sub_10001F620(v26, &v27, &unk_1003B9EC0);
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  *(v22 + 32) = v20;
  sub_100051124(&v30, v22 + 40);
  v23 = v28;
  *(v22 + 80) = v27;
  *(v22 + 96) = v23;
  *(v22 + 112) = v29;
  *(v22 + 120) = v14;
  *(v22 + 128) = v9;
  *(v22 + 136) = v11;
  *(v22 + 144) = v13;

  sub_10005E36C(0, 0, v6, &unk_1002D7490, v22);
}

uint64_t sub_10006EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[49] = v15;
  v8[50] = v16;
  v8[47] = a7;
  v8[48] = a8;
  v8[45] = a5;
  v8[46] = a6;
  v8[44] = a4;
  v9 = type metadata accessor for TranslateTip(0);
  v8[51] = v9;
  v8[52] = *(v9 - 8);
  v8[53] = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  v8[54] = v10;
  v8[55] = *(v10 - 8);
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[58] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006ED00, v12, v11);
}

uint64_t sub_10006ED00()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[56];
    v1 = v0[57];
    v3 = v0[54];
    v4 = v0[55];
    v5 = v0[45];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = Locale.identifier.getter();
    v8 = v7;
    v9 = *(v4 + 8);
    v9(v1, v3);
    sub_1000085CC(v5, v5[3]);
    dispatch thunk of AnnotatedResult.locale.getter();
    LOBYTE(v1) = sub_1000DE07C(v2, v6, v8);

    v9(v2, v3);
    v10 = &unk_1002D3000;
    if (v1)
    {
      sub_1000085CC(v0[45], v5[3]);
      if ((dispatch thunk of AnnotatedResult.isLowConfidence.getter() & 1) == 0)
      {
        v11 = v0[56];
        v12 = v0[57];
        v13 = v0[54];
        v14 = v0[45];
        sub_100063384(0, 0);
        static Locale.current.getter();
        sub_1000085CC(v14, v5[3]);
        dispatch thunk of AnnotatedResult.locale.getter();
        v15 = Locale.identifier.getter();
        v17 = v16;
        v9(v11, v13);
        v18._countAndFlagsBits = v15;
        v18._object = v17;
        v19 = Locale.localizedString(forIdentifier:)(v18);

        v20 = v12;
        v10 = &unk_1002D3000;
        v9(v20, v13);
        if (v19.value._object)
        {
          v21 = v0[53];
          v22 = v0[51];
          v23 = [objc_opt_self() mainBundle];
          v63._object = 0x80000001002F20A0;
          v24._object = 0x80000001002F2080;
          v63._countAndFlagsBits = 0xD000000000000027;
          v24._countAndFlagsBits = 0xD00000000000001CLL;
          v25._countAndFlagsBits = 0;
          v25._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v63);

          sub_100005AD4(&qword_1003A9AB0);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1002D3160;
          *(v26 + 56) = &type metadata for String;
          *(v26 + 64) = sub_100031CD0();
          *(v26 + 32) = v19;
          v27 = String.init(format:_:)();
          v29 = v28;

          UUID.init()();
          v30 = (v21 + v22[5]);
          *v30 = v27;
          v30[1] = v29;
          v31 = (v21 + v22[6]);
          *v31 = 0;
          v31[1] = 0;
          v32 = (v21 + v22[7]);
          *v32 = 0;
          v32[1] = 0;
          swift_getKeyPath();
          swift_getKeyPath();
          v33 = static Published.subscript.modify();
          v35 = v34;
          v36 = *v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v35 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v36 = sub_10028CB90(0, v36[2] + 1, 1, v36);
            *v35 = v36;
          }

          v39 = v36[2];
          v38 = v36[3];
          v40 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            v61 = sub_10028CB90(v38 > 1, v39 + 1, 1, v36);
            v40 = v39 + 1;
            v36 = v61;
            *v35 = v61;
          }

          v42 = v0[52];
          v41 = v0[53];
          v36[2] = v40;
          sub_100077CD0(v41, v36 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, type metadata accessor for TranslateTip);
          v33(v0 + 31, 0);

          v10 = &unk_1002D3000;
        }
      }
    }

    v43 = v0[46];
    sub_100031DD8(v0[45], (v0 + 2));
    sub_10001F620(v43, (v0 + 7), &unk_1003B9EC0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001F620((v0 + 2), (v0 + 12), &qword_1003ACDA0);

    static Published.subscript.setter();
    sub_100009EBC((v0 + 2), &qword_1003ACDA0);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v44 = v0[39];
    v45 = v0[48];
    if (v44)
    {
      if (v0[38] == v0[47] && v44 == v45)
      {

LABEL_17:
        sub_100005AD4(&unk_1003BBD30);
        inited = swift_initStackObject();
        *(inited + 16) = v10[22];
        *(inited + 32) = NSForegroundColorAttributeName;
        v49 = sub_10000A2CC(0, &qword_1003B2990);
        v50 = NSForegroundColorAttributeName;
        v51 = static UIColor.targetTextColor.getter();
        *(inited + 64) = v49;
        *(inited + 40) = v51;
        sub_100292588(inited);
        swift_setDeallocating();
        sub_100009EBC(inited + 32, &qword_1003B3490);
        v52 = objc_allocWithZone(NSAttributedString);
        v53 = String._bridgeToObjectiveC()();
        type metadata accessor for Key(0);
        sub_10007373C(&qword_1003A98E0, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v55 = [v52 initWithString:v53 attributes:isa];

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v56 = v0[42];
        if (v56 && (sub_10000A2CC(0, &qword_1003AC720), v57 = v55, v58 = static NSObject.== infix(_:_:)(), v57, v56, (v58 & 1) != 0))
        {
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v0[43] = v55;
          static Published.subscript.setter();
        }

        goto LABEL_21;
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
        goto LABEL_17;
      }
    }

    v47 = v0[47];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[40] = v47;
    v0[41] = v45;

    static Published.subscript.setter();
    goto LABEL_17;
  }

LABEL_21:

  v59 = v0[1];

  return v59();
}

uint64_t sub_10006F530(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - v6;
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D28C0);
  sub_100031DD8(a1, &v34);
  sub_100031DD8(a2, &v32);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v29[1] = v2;
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v11 = 136643075;
    sub_1000085CC(&v34, v35);
    v12 = AnnotatedResult.displayString.getter();
    v14 = v13;
    sub_100008664(&v34);
    v15 = sub_10028D78C(v12, v14, &v31);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2085;
    sub_1000085CC(&v32, v33);
    v16 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v16 + 16))
    {
      sub_100031DD8(v16 + 32, v30);

      sub_1000085CC(v30, v30[3]);
      v17 = TranslationAlternative.displayString.getter();
      v19 = v18;
      sub_100008664(v30);
    }

    else
    {

      v17 = 0;
      v19 = 0;
    }

    v30[0] = v17;
    v30[1] = v19;
    sub_100005AD4(&qword_1003AA740);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    sub_100008664(&v32);
    v23 = sub_10028D78C(v20, v22, &v31);

    *(v11 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Speech: final: %{sensitive}s -> %{sensitive}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008664(&v34);
    sub_100008664(&v32);
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  sub_100031DD8(a1, &v34);
  sub_100031DD8(a2, &v32);
  type metadata accessor for MainActor();

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;
  sub_100051124(&v34, (v27 + 5));
  sub_100051124(&v32, (v27 + 10));

  sub_10005E36C(0, 0, v7, &unk_1002D7470, v27);
}

uint64_t sub_10006F93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F9D8, v8, v7);
}

uint64_t sub_10006F9D8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10006E398(*(v0 + 48), *(v0 + 56));
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006FA70(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D28C0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Speech: finished with error %@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();
  swift_errorRetain();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = a1;

  sub_10005E36C(0, 0, v4, &unk_1002D7440, v14);
}

uint64_t sub_10006FCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006FD94, v7, v6);
}

uint64_t sub_10006FD94()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000663B0(0);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = _convertErrorToNSError(_:)();
    sub_100062730(v1, 1, 1);
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_10006FE8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for StreamingRequestInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for TranslateTip(0);
  v17 = __chkstk_darwin(v16 - 8);
  __chkstk_darwin(v17);
  if (!a4)
  {
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
    sub_10001F620(a2, v61, &unk_1003B9EC0);
    sub_10007727C(a1, &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StreamingRequestInfo);
    type metadata accessor for MainActor();

    v37 = static MainActor.shared.getter();
    v38 = a3;
    v39 = (*(v11 + 80) + 88) & ~*(v11 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    *(v40 + 24) = &protocol witness table for MainActor;
    *(v40 + 32) = v38 & 1;
    v41 = v61[1];
    *(v40 + 40) = v61[0];
    *(v40 + 56) = v41;
    *(v40 + 72) = v62;
    *(v40 + 80) = v5;
    sub_100077CD0(&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for StreamingRequestInfo);
    sub_10005E36C(0, 0, v15, &unk_1002D76D0, v40);

    return;
  }

  v58 = v20;
  v59 = v19;
  v60 = &v54 - v18;
  swift_errorRetain();
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000078E8(v21, qword_1003D28C0);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v61[0] = v57;
    *v24 = 136315394;
    if (a3)
    {
      v25 = 0x6C616E6966;
    }

    else
    {
      v25 = 0x6C616974726170;
    }

    v26 = a3;
    if (a3)
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    v28 = sub_10028D78C(v25, v27, v61);
    v55 = v22;
    v29 = v5;
    v30 = v15;
    v31 = v28;

    *(v24 + 4) = v31;
    v15 = v30;
    v5 = v29;
    *(v24 + 12) = 2112;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v32;
    v33 = v56;
    *v56 = v32;
    v34 = v23;
    v35 = v55;
    _os_log_impl(&_mh_execute_header, v55, v34, "Exception while creating a %s translation: %@", v24, 0x16u);
    sub_100009EBC(v33, &unk_1003AECA0);

    sub_100008664(v57);

    if ((v26 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v42 = v60;
  sub_100286B74(1, sub_100077274, v5, v60);

  v43 = type metadata accessor for TaskPriority();
  (*(*(v43 - 8) + 56))(v15, 1, 1, v43);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v59;
  sub_10007727C(v42, v59, type metadata accessor for TranslateTip);
  type metadata accessor for MainActor();

  v46 = static MainActor.shared.getter();
  v47 = (*(v58 + 80) + 40) & ~*(v58 + 80);
  v48 = swift_allocObject();
  v48[2] = v46;
  v48[3] = &protocol witness table for MainActor;
  v48[4] = v44;
  sub_100077CD0(v45, v48 + v47, type metadata accessor for TranslateTip);

  sub_10005E36C(0, 0, v15, &unk_1002D76E0, v48);

  sub_100077D38(v42, type metadata accessor for TranslateTip);
LABEL_16:
  swift_errorRetain();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    swift_errorRetain();
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v53;
    *v52 = v53;
    _os_log_impl(&_mh_execute_header, v49, v50, "Ignoring text streaming error since it occurred during a partial translation: %@", v51, 0xCu);
    sub_100009EBC(v52, &unk_1003AECA0);
  }

  else
  {
  }
}

uint64_t sub_1000705E4()
{
  v0 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10005E36C(0, 0, v2, &unk_1002D7780, v6);
}

uint64_t sub_100070738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000707D0, v6, v5);
}

uint64_t sub_1000707D0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100064DF0(0);
  }

  else
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D28C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "self is nil in retranslation action handler", v4, 2u);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100070924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[12] = *(type metadata accessor for TranslateTip(0) - 8);
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100070A14, v7, v6);
}

uint64_t sub_100070A14()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0 + 120) == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v1 = *(*(v0 + 72) + 16);

      if (v1)
      {
        if (qword_1003A9290 != -1)
        {
          swift_once();
        }

        v2 = type metadata accessor for Logger();
        sub_1000078E8(v2, qword_1003D28C0);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v3, v4, "Not showing 'Try Again' tip to user in response to streaming error because we're already showing a text streaming error tip", v5, 2u);
        }
      }

      else
      {
        if (qword_1003A9290 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_1000078E8(v10, qword_1003D28C0);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "Showing 'Try Again' tip to user in response to streaming error", v13, 2u);
        }

        v14 = *(v0 + 104);
        v15 = *(v0 + 88);

        sub_10007727C(v15, v14, type metadata accessor for TranslateTip);
        swift_getKeyPath();
        swift_getKeyPath();
        v16 = static Published.subscript.modify();
        v18 = v17;
        v19 = *v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v18 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_10028CB90(0, v19[2] + 1, 1, v19);
          *v18 = v19;
        }

        v21 = v19[2];
        v22 = v19[3];
        v23 = v21 + 1;
        if (v21 >= v22 >> 1)
        {
          v31 = v21 + 1;
          v28 = v19;
          v29 = v19[2];
          v30 = sub_10028CB90(v22 > 1, v21 + 1, 1, v28);
          v21 = v29;
          v23 = v31;
          v19 = v30;
          *v18 = v30;
        }

        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        v19[2] = v23;
        sub_100077CD0(v24, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for TranslateTip);
        v16(v0 + 16, 0);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 121) = 1;
      static Published.subscript.setter();
    }

    else
    {
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000078E8(v6, qword_1003D28C0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Not showing 'Try Again' tip to the user because already showing a state-based error", v9, 2u);
      }
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100070EFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 336) = a6;
  *(v7 + 344) = a7;
  *(v7 + 328) = a5;
  *(v7 + 538) = a4;
  v8 = type metadata accessor for CharacterSet();
  *(v7 + 352) = v8;
  *(v7 + 360) = *(v8 - 8);
  *(v7 + 368) = swift_task_alloc();
  v9 = type metadata accessor for StreamingRequestInfo(0);
  *(v7 + 376) = v9;
  *(v7 + 384) = *(v9 - 8);
  *(v7 + 392) = swift_task_alloc();
  sub_100005AD4(&qword_1003AD830);
  *(v7 + 400) = swift_task_alloc();
  v10 = type metadata accessor for CoreAnalyticsLogger.CardType();
  *(v7 + 408) = v10;
  *(v7 + 416) = *(v10 - 8);
  *(v7 + 424) = swift_task_alloc();
  sub_100005AD4(&unk_1003B8C90);
  *(v7 + 432) = swift_task_alloc();
  v11 = type metadata accessor for SpeechResultOrigin();
  *(v7 + 440) = v11;
  *(v7 + 448) = *(v11 - 8);
  *(v7 + 456) = swift_task_alloc();
  v12 = type metadata accessor for Locale();
  *(v7 + 464) = v12;
  *(v7 + 472) = *(v12 - 8);
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  v13 = type metadata accessor for StoredSpeechResult();
  *(v7 + 496) = v13;
  *(v7 + 504) = *(v13 - 8);
  *(v7 + 512) = swift_task_alloc();
  *(v7 + 520) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 528) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007124C, v15, v14);
}

uint64_t sub_10007124C()
{
  v1 = *(v0 + 538);

  if (v1 == 1)
  {
    sub_10001F620(*(v0 + 328), v0 + 216, &unk_1003B9EC0);
    if (*(v0 + 240))
    {
      sub_100051124((v0 + 216), v0 + 176);
      sub_1000085CC((v0 + 176), *(v0 + 200));
      v2 = dispatch thunk of TranslationResult.disambiguableResult.getter();
      if (v2)
      {
        v3 = v2;
        if ([*(*(v0 + 336) + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_disambiguationChangeManager) restoreChangesToResult:v2])
        {
          if (qword_1003A9238 != -1)
          {
            swift_once();
          }

          v4 = type metadata accessor for Logger();
          sub_1000078E8(v4, qword_1003D27B8);
          v5 = Logger.logObject.getter();
          v6 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v5, v6))
          {
            v7 = swift_slowAlloc();
            *v7 = 0;
            _os_log_impl(&_mh_execute_header, v5, v6, "Restored changes to finalized result from previous user-selections", v7, 2u);
          }
        }
      }

      v8 = *(v0 + 504);
      v74 = *(v0 + 496);
      v76 = *(v0 + 512);
      v9 = *(v0 + 448);
      v10 = *(v0 + 456);
      v70 = *(v0 + 520);
      v71 = *(v0 + 440);
      v73 = *(v0 + 376);
      v11 = *(v0 + 336);
      v12 = *(v0 + 344);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      (*(v9 + 104))(v10, enum case for SpeechResultOrigin.text(_:), v71);
      StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
      v72 = *(v11 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
      (*(v8 + 16))(v76, v70, v74);
      v69 = *(v12 + *(v73 + 36));
      v13 = *(*(v11 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation) + 16);
      if (v13)
      {

        v14 = [v13 invocationId];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      v75 = *(v0 + 520);
      v28 = *(v0 + 504);
      v29 = *(v0 + 512);
      v30 = *(v0 + 496);
      v32 = *(v0 + 424);
      v31 = *(v0 + 432);
      v33 = *(v0 + 416);
      v68 = *(v0 + 408);
      v34 = type metadata accessor for UUID();
      (*(*(v34 - 8) + 56))(v31, v15, 1, v34);
      v36 = *(v0 + 200);
      v35 = *(v0 + 208);
      v37 = sub_1000085CC((v0 + 176), v36);
      v38 = sub_10007373C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);

      sub_100009EBC(v31, &unk_1003B8C90);
      v39 = *(v28 + 8);
      v39(v29, v30);

      sub_100225A0C();

      (*(v33 + 104))(v32, enum case for CoreAnalyticsLogger.CardType.committed(_:), v68);
      sub_1000085CC((v0 + 176), *(v0 + 200));
      v40 = dispatch thunk of TranslationResult.disambiguableResult.getter();
      sub_100068FE8(v32, v40);

      (*(v33 + 8))(v32, v68);
      v39(v75, v30);
      sub_100008664(v0 + 176);
    }

    else
    {
      sub_100009EBC(v0 + 216, &unk_1003B9EC0);
    }

    sub_100062730(0, 0, 1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = *(v0 + 288);
    if (v16)
    {
      v17 = *(v0 + 280);

      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = *(v0 + 400);
        v20 = *(v0 + 376);
        v21 = *(v0 + 384);
        v22 = sub_100060488();
        v23 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
        swift_beginAccess();
        sub_10001F620(&v22[v23], v19, &qword_1003AD830);
        v24 = (*(v21 + 48))(v19, 1, v20);
        v25 = *(v0 + 400);
        if (v24)
        {
          sub_100009EBC(v25, &qword_1003AD830);

          v26 = 0;
          v27 = 0xE000000000000000;
        }

        else
        {
          v43 = *(v0 + 392);
          v44 = *(v0 + 368);
          v45 = *(v0 + 376);
          v46 = *(v0 + 352);
          v47 = *(v0 + 360);
          v48 = *(v0 + 400);
          sub_10007727C(v25, v43, type metadata accessor for StreamingRequestInfo);
          sub_100009EBC(v48, &qword_1003AD830);
          v49 = (v43 + *(v45 + 20));
          v50 = v49[1];
          *(v0 + 312) = *v49;
          *(v0 + 320) = v50;

          static CharacterSet.whitespacesAndNewlines.getter();
          sub_10001F278();
          v51 = StringProtocol.trimmingCharacters(in:)();
          v27 = v52;
          (*(v47 + 8))(v44, v46);
          sub_100077D38(v43, type metadata accessor for StreamingRequestInfo);

          v26 = v51 & 0xFFFFFFFFFFFFLL;
        }

        v53 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v53 = v26;
        }

        if (v53 || (v55 = *(v0 + 480), v54 = *(v0 + 488), v56 = *(v0 + 464), v57 = *(v0 + 472), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v58 = static Locale.== infix(_:_:)(), v59 = *(v57 + 8), v59(v55, v56), v59(v54, v56), (v58 & 1) != 0))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (*(v0 + 536) == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            *(v0 + 537) = 0;

            static Published.subscript.setter();
          }
        }

        sub_10001F620(*(v0 + 328), v0 + 16, &unk_1003B9EC0);
        if (*(v0 + 40))
        {
          sub_1000085CC((v0 + 16), *(v0 + 40));
          v60 = dispatch thunk of TranslationResult.disambiguableResult.getter();
          sub_100008664(v0 + 16);
          if (v60)
          {
            v61 = *(v0 + 328);

            sub_1000615D4(v61, 0, 0, 0);
            goto LABEL_23;
          }
        }

        else
        {
          sub_100009EBC(v0 + 16, &unk_1003B9EC0);
        }

        sub_10001F620(*(v0 + 328), v0 + 96, &unk_1003B9EC0);
        if (*(v0 + 120))
        {
          sub_1000085CC((v0 + 96), *(v0 + 120));
          v62 = dispatch thunk of TranslationResult.alternatives.getter();
          if (*(v62 + 16))
          {
            sub_100031DD8(v62 + 32, v0 + 56);

            sub_1000085CC((v0 + 56), *(v0 + 80));
            v63 = TranslationAlternative.displayString.getter();
            sub_100008664(v0 + 56);
            sub_100008664(v0 + 96);
            *(v0 + 168) = 0;
            *(v0 + 152) = 0u;
            *(v0 + 136) = 0u;
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            sub_1000615D4(v0 + 136, *(v0 + 296), *(v0 + 304), v63);

            sub_100009EBC(v0 + 136, &unk_1003B9EC0);
            goto LABEL_23;
          }

          sub_100008664(v0 + 96);
        }

        else
        {
          sub_100009EBC(v0 + 96, &unk_1003B9EC0);
        }

        if (qword_1003A9290 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_1000078E8(v64, qword_1003D28C0);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "Can't find any text to display for result", v67, 2u);
        }
      }
    }
  }

LABEL_23:

  v41 = *(v0 + 8);

  return v41();
}

void *sub_100071DFC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v22)
  {
    v20 = v22;
    v19 = v21;
    v11 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v8 + 56))(&v6[v4[14]], 1, 1, v7);
    *&v6[v4[6]] = 1;
    *&v6[v4[7]] = 1;
    *&v6[v4[8]] = 0;
    v6[v4[9]] = 0;
    v12 = &v6[v4[10]];
    *v12 = 0;
    v12[8] = 1;
    v6[v4[11]] = 0;
    *&v6[v4[12]] = 0;
    v13 = &v6[v4[13]];
    *v13 = 0;
    v13[8] = 1;
    sub_10022520C(v6);
    result = *(v11 + 16);
    if (result)
    {
      v15 = [result invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100077D38(v6, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
      v16 = type metadata accessor for SELFLoggingInvocationDescription();
      (*(v8 + 16))(&a1[*(v16 + 20)], v10, v7);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      (*(v8 + 8))(v10, v7);
      v17 = v20;
      *a1 = v19;
      *(a1 + 1) = v17;
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = type metadata accessor for SELFLoggingInvocationDescription();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  return result;
}

uint64_t sub_100072254()
{

  sub_100225840();
}

uint64_t sub_1000722A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000722D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100072320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_10006FCFC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000723E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100072454()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000724C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100072540(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t sub_1000725F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100072684()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000726FC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100072780()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100072878@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000728F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100072964@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000729E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100072AA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100072B24(uint64_t a1)
{
  sub_10001F620(a1, v3, &qword_1003ACDA0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001F620(v3, &v2, &qword_1003ACDA0);

  static Published.subscript.setter();
  return sub_100009EBC(v3, &qword_1003ACDA0);
}

uint64_t sub_100072C30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100072D28;

  return v6(a1);
}

uint64_t sub_100072D28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100072E20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072E58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001B558;

  return sub_100072C30(a1, v4);
}

uint64_t sub_100072F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001B558;

  return sub_100072C30(a1, v4);
}

uint64_t sub_100072FC8()
{
  swift_unknownObjectRelease();

  sub_100008664(v0 + 40);
  sub_100008664(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100073018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_10006F93C(a1, v4, v5, v6, (v1 + 5), (v1 + 10));
}

uint64_t sub_1000730DC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000731D0;

  return v5(v2 + 32);
}

uint64_t sub_1000731D0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000732E4()
{
  swift_unknownObjectRelease();

  sub_100008664(v0 + 40);
  if (*(v0 + 104))
  {
    sub_100008664(v0 + 80);
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10007334C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[15];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_10006EB90(a1, v4, v5, v6, (v1 + 5), (v1 + 10), v7, v8);
}

uint64_t sub_1000734AC(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1000735A0;

  return v5(v2 + 16);
}

uint64_t sub_1000735A0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  v2[1] = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10007373C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007378C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_10006DD54(a1, v4, v5, v6, v7);
}