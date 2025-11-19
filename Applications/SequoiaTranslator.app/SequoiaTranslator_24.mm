uint64_t sub_10029D690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = sub_100005AD4(&qword_1003BC020);
  v133 = *(v3 - 8);
  __chkstk_darwin(v3);
  v131 = &v109 - v4;
  v5 = sub_100005AD4(&qword_1003AC9D8);
  v121 = *(v5 - 8);
  v122 = v5;
  __chkstk_darwin(v5);
  v119 = &v109 - v6;
  v132 = type metadata accessor for TranslationCardView();
  v111 = *(v132 - 8);
  v7 = *(v111 + 64);
  __chkstk_darwin(v132);
  v112 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100005AD4(&qword_1003BC1C8);
  __chkstk_darwin(v123);
  v113 = &v109 - v8;
  v9 = sub_100005AD4(&qword_1003BC1D0);
  v114 = *(v9 - 8);
  v115 = v9;
  __chkstk_darwin(v9);
  v124 = &v109 - v10;
  v11 = sub_100005AD4(&qword_1003BC1D8);
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin(v11);
  v125 = &v109 - v12;
  v127 = sub_100005AD4(&qword_1003BC1E0);
  v13 = __chkstk_darwin(v127);
  v116 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v109 - v15;
  v126 = sub_100005AD4(&qword_1003BC1E8);
  __chkstk_darwin(v126);
  v17 = &v109 - v16;
  v18 = sub_100005AD4(&qword_1003BC1F0);
  v19 = __chkstk_darwin(v18 - 8);
  v130 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v136 = &v109 - v21;
  v22 = sub_100005AD4(&qword_1003BC1F8);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v129 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v109 - v26;
  *v27 = static VerticalAlignment.lastTextBaseline.getter();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = &v27[*(sub_100005AD4(&qword_1003BC200) + 44)];
  *v28 = static HorizontalAlignment.leading.getter();
  *(v28 + 1) = 0x4010000000000000;
  v28[16] = 0;
  v29 = sub_100005AD4(&qword_1003BC208);
  sub_10029E938(a1, &v28[*(v29 + 44)]);
  LOBYTE(v28) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = *(v23 + 44);
  v128 = v27;
  v31 = &v27[v30];
  *v31 = v28;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  Bindable.wrappedValue.getter();
  v36 = v147;
  swift_getKeyPath();
  *&v147 = v36;
  v135 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v36 + 72);
  dispatch thunk of PersistedTranslation.translationResult.getter();

  sub_1000085CC(&v147, *(&v148 + 1));
  LOBYTE(v37) = TranslationResult.isLowConfidence.getter();

  sub_100008664(&v147);
  if (v37)
  {
    sub_100005AD4(&qword_1003AD990);
    v38 = type metadata accessor for TranslateTip(0);
    v39 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1002D3160;
    if (qword_1003A9370 != -1)
    {
      swift_once();
    }

    v41 = sub_1000078E8(v38, qword_1003D2C48);
    sub_1002A244C(v41, v40 + v39, type metadata accessor for TranslateTip);
    v42 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v138 = 0;
    v137 = 0;
    v139 = v40;
    LOBYTE(v140) = v42;
    *(&v140 + 1) = v146;
    HIDWORD(v140) = *(&v146 + 3);
    v141 = v43;
    v142 = v44;
    v143 = v45;
    v144 = v46;
    v145 = 0;
LABEL_9:
    sub_100005AD4(&qword_1003BC248);
    sub_1002A21AC();
    _ConditionalContent<>.init(storage:)();
    v58 = v148;
    *v17 = v147;
    *(v17 + 1) = v58;
    *(v17 + 2) = v149;
    *(v17 + 24) = v150;
    swift_storeEnumTagMultiPayload();
    sub_100005AD4(&qword_1003BC230);
    sub_1002A2128();
    sub_1002A228C();
    v59 = v136;
    _ConditionalContent<>.init(storage:)();
    v60 = sub_100005AD4(&qword_1003BC210);
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    goto LABEL_10;
  }

  Bindable.wrappedValue.getter();
  v47 = v147;
  swift_getKeyPath();
  *&v147 = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v47 + 242);

  if (v48 == 1)
  {
    sub_100005AD4(&qword_1003AD990);
    v49 = type metadata accessor for TranslateTip(0);
    v50 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1002D3160;
    if (qword_1003A9378 != -1)
    {
      swift_once();
    }

    v52 = sub_1000078E8(v49, qword_1003D2C60);
    sub_1002A244C(v52, v51 + v50, type metadata accessor for TranslateTip);
    v53 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v138 = 0;
    v137 = 1;
    v139 = v51;
    LOBYTE(v140) = v53;
    *(&v140 + 1) = v146;
    HIDWORD(v140) = *(&v146 + 3);
    v141 = v54;
    v142 = v55;
    v143 = v56;
    v144 = v57;
    v145 = 256;
    goto LABEL_9;
  }

  Bindable.wrappedValue.getter();
  v77 = v147;
  swift_getKeyPath();
  *&v147 = v77;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v78 = *(v77 + 192);

  if (v78 == 1)
  {
    Bindable.wrappedValue.getter();
    v79 = v147;
    swift_getKeyPath();
    *&v147 = v79;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(&v148 + 1) = &type metadata for TipsHelper.GenderDisambiguationTip;
    v110 = sub_10005CC6C();
    *&v149 = v110;
    v80 = v112;
    sub_1002A244C(a1, v112, type metadata accessor for TranslationCardView);
    v81 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v82 = swift_allocObject() + v81;
    sub_1002A28E0(v80, v82, type metadata accessor for TranslationCardView);
    v83 = v113;
    TipView.init<>(_:isPresented:arrowEdge:action:)();
    v84 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v86 = (v83 + *(v123 + 36));
    *v86 = KeyPath;
    v86[1] = v84;
    v87 = [objc_opt_self() systemGroupedBackgroundColor];
    *&v147 = Color.init(_:)();
    v88 = sub_1002A2044();
    View.tipBackground<A>(_:)();

    sub_100009EBC(v83, &qword_1003BC1C8);
    Solarium.init()();
    v89 = v119;
    static ViewInputPredicate.! prefix(_:)();
    v113 = sub_100005AD4(&qword_1003BC228);
    *&v147 = v123;
    *(&v147 + 1) = &type metadata for Color;
    *&v148 = v88;
    *(&v148 + 1) = &protocol witness table for Color;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v147 = &type metadata for Solarium;
    *(&v147 + 1) = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    v91 = v115;
    *&v147 = v115;
    *(&v147 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v92 = v122;
    v93 = v124;
    View.staticIf<A, B>(_:then:)();
    (*(v121 + 8))(v89, v92);
    (*(v114 + 8))(v93, v91);
    LOBYTE(v92) = static Edge.Set.bottom.getter();
    Bindable.wrappedValue.getter();
    v94 = v147;
    swift_getKeyPath();
    *&v147 = v94;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Tip.shouldDisplay.getter();
    EdgeInsets.init(_all:)();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = v116;
    (*(v117 + 32))(v116, v125, v118);
    v104 = v103 + v127[9];
    *v104 = v92;
    *(v104 + 8) = v96;
    *(v104 + 16) = v98;
    *(v104 + 24) = v100;
    *(v104 + 32) = v102;
    *(v104 + 40) = 0;
    v105 = v120;
    sub_100023BD4(v103, v120, &qword_1003BC1E0);
    sub_10001F620(v105, v17, &qword_1003BC1E0);
    swift_storeEnumTagMultiPayload();
    sub_100005AD4(&qword_1003BC230);
    sub_1002A2128();
    sub_1002A228C();
    v106 = v136;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v105, &qword_1003BC1E0);
    v107 = sub_100005AD4(&qword_1003BC210);
    (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
  }

  else
  {
    v108 = sub_100005AD4(&qword_1003BC210);
    (*(*(v108 - 8) + 56))(v136, 1, 1, v108);
  }

LABEL_10:
  Bindable.wrappedValue.getter();
  v61 = v147;
  swift_getKeyPath();
  *&v147 = v61;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v127 = *(v61 + 72);

  Bindable.wrappedValue.getter();
  sub_100031DD8(v147 + 24, &v148);

  v62 = v131;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v133 + 8))(v62, v3);
  v63 = v140;
  v133 = v139;
  LOBYTE(v62) = v141;
  Bindable.wrappedValue.getter();
  v64 = v146;
  swift_getKeyPath();
  v146 = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v61) = *(v64 + 193);

  v65 = (a1 + *(v132 + 24));
  v66 = *v65;
  v67 = v65[1];
  v157 = swift_getKeyPath();
  v158 = 0;
  v159 = 0;
  sub_10001AD18(v66);
  type metadata accessor for PersistedTranslation();
  sub_1002A2CF0(&qword_1003AE628, &type metadata accessor for PersistedTranslation);
  *&v147 = ObservedObject.init(wrappedValue:)();
  *(&v147 + 1) = v68;
  v151 = v133;
  v152 = v63;
  v153 = v62;
  v154 = v61;
  v155 = v66;
  v156 = v67;
  v70 = v128;
  v69 = v129;
  sub_10001F620(v128, v129, &qword_1003BC1F8);
  v71 = v136;
  v72 = v130;
  sub_10001F620(v136, v130, &qword_1003BC1F0);
  sub_10027B74C(&v147, &v139);
  v73 = v134;
  sub_10001F620(v69, v134, &qword_1003BC1F8);
  v74 = sub_100005AD4(&qword_1003BC218);
  v75 = v73 + v74[12];
  *v75 = 0x4020000000000000;
  *(v75 + 8) = 0;
  sub_10001F620(v72, v73 + v74[16], &qword_1003BC1F0);
  sub_10027B74C(&v139, v73 + v74[20]);
  sub_1002A1F78(&v147);
  sub_100009EBC(v71, &qword_1003BC1F0);
  sub_100009EBC(v70, &qword_1003BC1F8);
  sub_1002A1F78(&v139);
  sub_100009EBC(v72, &qword_1003BC1F0);
  return sub_100009EBC(v69, &qword_1003BC1F8);
}

uint64_t sub_10029E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v111 = type metadata accessor for Locale();
  v108 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for LayoutDirection();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v5 - 8);
  v98 = &v95 - v6;
  v7 = sub_100005AD4(&qword_1003BC020);
  v97 = *(v7 - 8);
  __chkstk_darwin(v7);
  v96 = &v95 - v8;
  v99 = sub_100005AD4(&qword_1003BC260);
  __chkstk_darwin(v99);
  v105 = &v95 - v9;
  v100 = sub_100005AD4(&qword_1003BC268);
  __chkstk_darwin(v100);
  v102 = &v95 - v10;
  v104 = sub_100005AD4(&qword_1003BC270);
  __chkstk_darwin(v104);
  v103 = &v95 - v11;
  v12 = sub_100005AD4(&qword_1003BC278);
  v122 = *(v12 - 8);
  v123 = v12;
  __chkstk_darwin(v12);
  v101 = &v95 - v13;
  v14 = sub_100005AD4(&qword_1003BC280);
  v15 = __chkstk_darwin(v14 - 8);
  v124 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v126 = &v95 - v17;
  v18 = type metadata accessor for TranslationCardView();
  v118 = *(v18 - 8);
  v117 = *(v118 + 64);
  __chkstk_darwin(v18 - 8);
  v116 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005AD4(&qword_1003BC288);
  __chkstk_darwin(v20 - 8);
  v22 = &v95 - v21;
  v23 = sub_100005AD4(&qword_1003BC290);
  v24 = v23 - 8;
  v25 = __chkstk_darwin(v23);
  v121 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v95 - v28;
  __chkstk_darwin(v27);
  v127 = &v95 - v30;
  v31 = sub_100005AD4(&qword_1003BC298);
  v32 = __chkstk_darwin(v31 - 8);
  v120 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v95 - v34;
  *v35 = static VerticalAlignment.center.getter();
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = *(sub_100005AD4(&qword_1003BC2A0) + 44);
  v119 = v35;
  sub_10029F894(&v35[v36]);
  *v22 = static VerticalAlignment.bottom.getter();
  *(v22 + 1) = 0x4024000000000000;
  v22[16] = 0;
  v37 = sub_100005AD4(&qword_1003BC2A8);
  sub_10029FB90(a1, &v22[*(v37 + 44)]);
  Bindable.wrappedValue.getter();
  v38 = v128[0];
  swift_getKeyPath();
  v128[0] = v38;
  v39 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v115 = *(v38 + 161);

  v112 = v7;
  Bindable.wrappedValue.getter();
  v40 = v128[0];
  swift_getKeyPath();
  v128[0] = v40;
  v114 = v39;
  v41 = 1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v40 + 72);

  v43 = sub_10028AF00();

  if (v43 == 4)
  {
    v44 = 2;
  }

  else
  {
    v44 = v43;
  }

  v113 = a1;
  v45 = v116;
  sub_1002A244C(a1, v116, type metadata accessor for TranslationCardView);
  v46 = (*(v118 + 80) + 16) & ~*(v118 + 80);
  v47 = swift_allocObject();
  sub_1002A28E0(v45, v47 + v46, type metadata accessor for TranslationCardView);
  v48 = static Color.translateAccentColor.getter();
  v49 = static VerticalAlignment.bottom.getter();
  v131 = 0;
  static Binding.constant(_:)();
  v50 = v128[0];
  v51 = v128[1];
  v52 = v128[2];
  LOBYTE(v131) = 1;
  sub_100023BD4(v22, v29, &qword_1003BC288);
  v53 = &v29[*(v24 + 44)];
  *v53 = 0;
  v53[1] = v115;
  v53[2] = v44;
  *(v53 + 1) = sub_1002A24BC;
  *(v53 + 2) = v47;
  v53[24] = 0;
  *(v53 + 4) = v49;
  *(v53 + 5) = v48;
  *(v53 + 6) = v50;
  *(v53 + 7) = v51;
  *(v53 + 8) = v52;
  *(v53 + 9) = 0x4020000000000000;
  v53[80] = 0;
  *(v53 + 11) = 0;
  v53[96] = v131;
  sub_100023BD4(v29, v127, &qword_1003BC290);
  v129 = &type metadata for TranslateFeatures;
  v130 = sub_100009DF8();
  LOBYTE(v128[0]) = 6;
  LOBYTE(v47) = isFeatureEnabled(_:)();
  sub_100008664(v128);
  if (v47)
  {
    v54 = v112;
    Bindable.wrappedValue.getter();
    v55 = v128[0];
    swift_getKeyPath();
    v128[0] = v55;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = *(v55 + 72);

    sub_1000E522C();
    v58 = v57;

    if (!v58)
    {
LABEL_9:
      v41 = 1;
      goto LABEL_14;
    }

    Bindable.wrappedValue.getter();
    v59 = v128[0];
    swift_getKeyPath();
    v128[0] = v59;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = *(v59 + 72);
    dispatch thunk of PersistedTranslation.translationResult.getter();

    sub_1000085CC(v128, v129);
    v61 = dispatch thunk of TranslationResult.disambiguableResult.getter();
    if (v61)
    {
      v62 = v61;
      v63 = [v61 hasDisambiguationsOfType:1];

      sub_100008664(v128);
      if (v63)
      {

        goto LABEL_9;
      }
    }

    else
    {

      sub_100008664(v128);
    }

    v64 = v96;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    (*(v97 + 8))(v64, v54);
    v65 = v108;
    (*(v108 + 56))(v98, 1, 1, v111);
    v66 = v105;
    SimpleExpandingText.init(_:isExpanded:_:buttonAction:)();
    v67 = static Font.headline.getter();
    KeyPath = swift_getKeyPath();
    v69 = (v66 + *(sub_100005AD4(&qword_1003BC2B8) + 36));
    *v69 = KeyPath;
    v69[1] = v67;
    v70 = static Color.tertiaryTranslateAccentColor.getter();
    v71 = swift_getKeyPath();
    v72 = (v66 + *(v99 + 36));
    *v72 = v71;
    v72[1] = v70;
    v73 = swift_getKeyPath();
    Bindable.wrappedValue.getter();
    v74 = v128[0];
    swift_getKeyPath();
    v128[0] = v74;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v75 = *(v74 + 72);

    v76 = v106;
    dispatch thunk of PersistedTranslation.targetLocale.getter();

    LOBYTE(v74) = Locale.isRTL()();
    (*(v65 + 8))(v76, v111);
    v77 = v109;
    v78 = &enum case for LayoutDirection.rightToLeft(_:);
    if ((v74 & 1) == 0)
    {
      v78 = &enum case for LayoutDirection.leftToRight(_:);
    }

    v79 = v107;
    v80 = v110;
    (*(v109 + 104))(v107, *v78, v110);
    v81 = v102;
    v82 = &v102[*(v100 + 36)];
    v83 = sub_100005AD4(&qword_1003AA938);
    (*(v77 + 32))(v82 + *(v83 + 28), v79, v80);
    *v82 = v73;
    sub_100023BD4(v66, v81, &qword_1003BC260);
    v84 = v103;
    sub_100023BD4(v81, v103, &qword_1003BC268);
    *(v84 + *(v104 + 36)) = 256;
    sub_1002A24EC();
    v85 = v101;
    View.accessibilityIdentifier(_:)();
    sub_100009EBC(v84, &qword_1003BC270);
    sub_100023BD4(v85, v126, &qword_1003BC278);
    v41 = 0;
  }

LABEL_14:
  v86 = v126;
  (*(v122 + 56))(v126, v41, 1, v123);
  v88 = v119;
  v87 = v120;
  sub_10001F620(v119, v120, &qword_1003BC298);
  v89 = v127;
  v90 = v121;
  sub_10001F620(v127, v121, &qword_1003BC290);
  v91 = v124;
  sub_10001F620(v86, v124, &qword_1003BC280);
  v92 = v125;
  sub_10001F620(v87, v125, &qword_1003BC298);
  v93 = sub_100005AD4(&qword_1003BC2B0);
  sub_10001F620(v90, v92 + *(v93 + 48), &qword_1003BC290);
  sub_10001F620(v91, v92 + *(v93 + 64), &qword_1003BC280);
  sub_100009EBC(v86, &qword_1003BC280);
  sub_100009EBC(v89, &qword_1003BC290);
  sub_100009EBC(v88, &qword_1003BC298);
  sub_100009EBC(v91, &qword_1003BC280);
  sub_100009EBC(v90, &qword_1003BC290);
  return sub_100009EBC(v87, &qword_1003BC298);
}

uint64_t sub_10029F894@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100005AD4(&qword_1003AF510);
  v2 = __chkstk_darwin(v1 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v6 = v29;
  swift_getKeyPath();
  v29 = v6;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + 72);

  v8 = sub_100298DEC(&dispatch thunk of PersistedTranslation.targetLocale.getter);
  v10 = v9;

  v29 = v8;
  v30 = v10;
  sub_10001F278();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v10) = v14;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10002EA54(v11, v13, v10 & 1);

  v29 = v15;
  v30 = v17;
  v31 = v19 & 1;
  v32 = v21;
  View.accessibilityIdentifier(_:)();
  sub_10002EA54(v15, v17, v19 & 1);

  v22 = v27;
  sub_10001F620(v5, v27, &qword_1003AF510);
  v23 = v28;
  sub_10001F620(v22, v28, &qword_1003AF510);
  v24 = v23 + *(sub_100005AD4(&qword_1003BC358) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100009EBC(v5, &qword_1003AF510);
  return sub_100009EBC(v22, &qword_1003AF510);
}

uint64_t sub_10029FB90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v135 = a2;
  v3 = type metadata accessor for Locale.Language();
  v133 = *(v3 - 8);
  v134 = v3;
  __chkstk_darwin(v3);
  v132 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Locale();
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v131 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for LayoutDirection();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TranslationCardView();
  v110 = *(v108 - 8);
  v7 = __chkstk_darwin(v108);
  v114 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v111 = &v97 - v10;
  v113 = v11;
  __chkstk_darwin(v9);
  v109 = &v97 - v12;
  v13 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v97 - v14;
  v16 = type metadata accessor for AttributedString();
  __chkstk_darwin(v16 - 8);
  v107 = type metadata accessor for LanguageAwareText();
  __chkstk_darwin(v107);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100005AD4(&qword_1003BC2E8);
  __chkstk_darwin(v119);
  v117 = &v97 - v19;
  v20 = sub_100005AD4(&qword_1003BC2F0);
  __chkstk_darwin(v20 - 8);
  v116 = &v97 - v21;
  v115 = sub_100005AD4(&qword_1003BC2F8);
  __chkstk_darwin(v115);
  v120 = &v97 - v22;
  v118 = sub_100005AD4(&qword_1003BC300);
  __chkstk_darwin(v118);
  v121 = &v97 - v23;
  v122 = sub_100005AD4(&qword_1003BC308);
  __chkstk_darwin(v122);
  v123 = &v97 - v24;
  v127 = sub_100005AD4(&qword_1003BC310);
  v126 = *(v127 - 8);
  v25 = __chkstk_darwin(v127);
  v125 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v124 = &v97 - v27;
  v28 = sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v29 = v140;
  swift_getKeyPath();
  *&v140 = v29;
  v30 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v29 + 176);
  v32 = v31;

  if (!v31)
  {
    sub_10000A2CC(0, &qword_1003AC720);
    AttributedString.init(stringLiteral:)();
    v31 = NSAttributedString.init(_:)();
  }

  v106 = v31;
  v33 = *(v136 + 56);
  v112 = v15;
  v33(v15, 1, 1, v138);
  v105 = sub_10029927C();
  Bindable.wrappedValue.getter();
  v34 = v140;
  swift_getKeyPath();
  *&v140 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v34 + 232);
  v104 = *(v34 + 224);
  v103 = v35;
  v102 = *(v34 + 240);

  v36 = (a1 + *(v108 + 20));
  v37 = *v36;
  v100 = v36[1];
  v108 = v37;
  swift_unknownObjectRetain();
  Bindable.wrappedValue.getter();
  v38 = v140;
  swift_getKeyPath();
  *&v140 = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + 194);

  if (v39)
  {
    v99 = 0;
  }

  else
  {
    sub_10000A2CC(0, &qword_1003B2990);
    v40 = static UIColor.translateAccentColor.getter();
    v99 = [v40 colorWithAlphaComponent:0.2];
  }

  Bindable.wrappedValue.getter();
  v41 = v140;
  swift_getKeyPath();
  *&v140 = v41;
  v137 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v98 = *(v41 + 194);

  v101 = v28;
  v42 = v109;
  sub_1002A244C(a1, v109, type metadata accessor for TranslationCardView);
  v43 = a1;
  v44 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v110 = swift_allocObject();
  sub_1002A28E0(v42, v110 + v44, type metadata accessor for TranslationCardView);
  v45 = v111;
  sub_1002A244C(v43, v111, type metadata accessor for TranslationCardView);
  v109 = swift_allocObject();
  sub_1002A28E0(v45, v109 + v44, type metadata accessor for TranslationCardView);
  Bindable.wrappedValue.getter();
  v46 = v140;
  swift_getKeyPath();
  *&v140 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v46 + 194);

  v97 = v43;
  v48 = v114;
  sub_1002A244C(v43, v114, type metadata accessor for TranslationCardView);
  v49 = swift_allocObject();
  sub_1002A28E0(v48, v49 + v44, type metadata accessor for TranslationCardView);
  *v18 = v106;
  *(v18 + 8) = xmmword_1002D8D70;
  v50 = v107;
  sub_100023BD4(v112, &v18[*(v107 + 24)], &qword_1003AFCE0);
  *&v18[v50[7]] = v105;
  v18[v50[8]] = 0;
  *&v18[v50[9]] = 0;
  *&v18[v50[10]] = 0;
  v18[v50[11]] = 0;
  v51 = &v18[v50[12]];
  v52 = v103;
  *v51 = v104;
  *(v51 + 1) = v52;
  v51[16] = v102;
  v53 = &v18[v50[13]];
  v54 = v100;
  *v53 = v108;
  v53[1] = v54;
  *&v18[v50[14]] = v99;
  v18[v50[15]] = (v98 & 1) == 0;
  v55 = &v18[v50[16]];
  v56 = v110;
  *v55 = sub_1002A28CC;
  *(v55 + 1) = v56;
  v57 = &v18[v50[17]];
  v58 = v109;
  *v57 = sub_1002A28D0;
  v57[1] = v58;
  v59 = &v18[v50[18]];
  *v59 = 0;
  *(v59 + 1) = 0;
  *&v18[v50[19]] = 0;
  v18[v50[20]] = (v47 & 1) == 0;
  v60 = &v18[v50[21]];
  *v60 = sub_1002A28DC;
  *(v60 + 1) = v49;
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
  LazyState.init(wrappedValue:)();
  static Font.title.getter();
  v61 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v63 = v18;
  v64 = v117;
  sub_1002A28E0(v63, v117, type metadata accessor for LanguageAwareText);
  v65 = (v64 + *(v119 + 36));
  *v65 = KeyPath;
  v65[1] = v61;
  sub_1002A2948();
  v66 = v116;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v64, &qword_1003BC2E8);
  v67 = v66;
  v68 = v120;
  sub_100023BD4(v67, v120, &qword_1003BC2F0);
  *(v68 + *(v115 + 36)) = 0x3FF199999999999ALL;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = v68;
  v70 = v121;
  sub_100023BD4(v69, v121, &qword_1003BC2F8);
  v71 = (v70 + *(v118 + 36));
  v72 = v145;
  v71[4] = v144;
  v71[5] = v72;
  v71[6] = v146;
  v73 = v141;
  *v71 = v140;
  v71[1] = v73;
  v74 = v143;
  v71[2] = v142;
  v71[3] = v74;
  v120 = swift_getKeyPath();
  Bindable.wrappedValue.getter();
  v75 = v139;
  swift_getKeyPath();
  v139 = v75;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = *(v75 + 72);

  v77 = v131;
  dispatch thunk of PersistedTranslation.targetLocale.getter();

  LOBYTE(v76) = Locale.isRTL()();
  v136 = *(v136 + 8);
  (v136)(v77, v138);
  v78 = v129;
  v79 = &enum case for LayoutDirection.rightToLeft(_:);
  if ((v76 & 1) == 0)
  {
    v79 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v80 = v128;
  v81 = v130;
  (*(v129 + 104))(v128, *v79, v130);
  v82 = v123;
  v83 = &v123[*(v122 + 36)];
  v84 = sub_100005AD4(&qword_1003AA938);
  (*(v78 + 32))(&v83[*(v84 + 28)], v80, v81);
  *v83 = v120;
  sub_100023BD4(v70, v82, &qword_1003BC300);
  Bindable.wrappedValue.getter();
  v85 = v139;
  swift_getKeyPath();
  v139 = v85;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v86 = *(v85 + 72);

  dispatch thunk of PersistedTranslation.targetLocale.getter();

  v87 = v132;
  Locale.language.getter();
  (v136)(v77, v138);
  sub_1002A2A30();
  v88 = v124;
  View.typesettingLanguage(_:isEnabled:)();
  (*(v133 + 8))(v87, v134);
  sub_100009EBC(v82, &qword_1003BC308);
  v89 = v126;
  v90 = *(v126 + 16);
  v91 = v125;
  v92 = v127;
  v90(v125, v88, v127);
  v93 = v135;
  v90(v135, v91, v92);
  v94 = &v93[*(sub_100005AD4(&qword_1003BC350) + 48)];
  *v94 = 0;
  v94[8] = 0;
  v95 = *(v89 + 8);
  v95(v88, v92);
  return (v95)(v91, v92);
}

uint64_t sub_1002A0C4C(uint64_t a1, Swift::UInt a2)
{
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v7 + 72);

  v5 = sub_10029CE90(v4, a1, a2);

  return v5;
}

uint64_t sub_1002A0D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v19 = a4;
  v20 = a5;
  v17 = a2;
  v18 = a3;
  v16 = a1;
  v8 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v12 = v21;
  swift_getKeyPath();
  v21 = v12;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 96);
  sub_10001AD18(v13);

  if (v13)
  {
    Bindable.wrappedValue.getter();
    v15 = v21;
    (*(v9 + 104))(v11, *a7, v8);
    v13(v15, v11, v16, v17, v18, v19, v20);

    sub_100051D20(v13);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1002A0F48(char a1, uint64_t a2)
{
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  sub_10004B8A4(a1, a2);
}

uint64_t sub_1002A0FB4(uint64_t a1, char a2)
{
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  v7 = v16;
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    v16 = v7;
    sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*(v7 + 72) setTtsPlaybackRateDouble:*&a1];
    v8 = sub_10003204C(*&a1);
    v9 = v8;
    v10 = *(v7 + 162);
    if (v10 == 4)
    {
      if (v8 != 4)
      {
LABEL_4:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v15 - 2) = v7;
        *(&v15 - 8) = v9;
        v16 = v7;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_7;
      }
    }

    else if (v10 != v8)
    {
      goto LABEL_4;
    }

    *(v7 + 162) = v8;
  }

LABEL_7:
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v7;
  *(v13 + 40) = 0;
  sub_10005E36C(0, 0, v6, &unk_1002EE3E8, v13);
}

uint64_t sub_1002A1240(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for TranslationCardView() + 36)))
  {
    v2 = objc_opt_self();

    v3 = [v2 sharedApplication];
    [v3 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

    sub_100005AD4(&qword_1003AC8F8);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1002A2CF0(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A138C()
{
  sub_100005AD4(&qword_1003BC1D0);
  sub_100005EA8(&qword_1003BC1C8);
  sub_1002A2044();
  swift_getOpaqueTypeConformance2();
  return View.tipCornerRadius(_:antialiased:)();
}

void sub_1002A1444()
{
  sub_1002A1524();
  sub_100005AD4(&qword_1003BC020);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v2 + 88);
  v1 = v0;

  if (v0)
  {
    dispatch thunk of DisambiguationResultModel.didAppear()();
  }
}

void sub_1002A1524()
{
  v1 = *(v0 + *(type metadata accessor for TranslationCardView() + 28));
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    if ((v8 & 1) == 0)
    {
      v3 = sub_10028C980(0, 1, 1, _swiftEmptyArrayStorage);
      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_10028C980((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5 + 32] = 1;
    }

    sub_100005AD4(&qword_1003BC020);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v8 + 88);
    v7 = v6;

    if (v6)
    {
      dispatch thunk of DisambiguationResultModel.excludedTypes.setter();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for SharedTranslationOptions();
    sub_1002A2CF0(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1002A1738(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for TranslationCardView() + 36)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v5 & 1) == 0)
    {
      sub_100005AD4(&qword_1003BC020);
      Bindable.wrappedValue.getter();
      v1 = v5[17];
      v2 = v5[18];
      sub_100005B2C(v1, v2);

      if (v2)
      {
        sub_10000A958(v1, v2);
      }

      else
      {
        Bindable.wrappedValue.getter();
        swift_getKeyPath();
        sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v3 = v5[11];
        v4 = v3;

        if (v3)
        {
          dispatch thunk of DisambiguationResultModel.didAppear()();
        }
      }
    }
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1002A2CF0(&qword_1003AC860, type metadata accessor for SceneContext);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t sub_1002A1938()
{
  result = qword_1003BC138;
  if (!qword_1003BC138)
  {
    sub_100005EA8(&qword_1003BC0E0);
    sub_1002A19F0();
    sub_10001BAEC(&qword_1003B18B8, &qword_1003AC978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC138);
  }

  return result;
}

unint64_t sub_1002A19F0()
{
  result = qword_1003BC140;
  if (!qword_1003BC140)
  {
    sub_100005EA8(&qword_1003BC148);
    sub_1002A1AA8();
    sub_10001BAEC(&qword_1003ADB10, &qword_1003ADB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC140);
  }

  return result;
}

unint64_t sub_1002A1AA8()
{
  result = qword_1003BC150;
  if (!qword_1003BC150)
  {
    sub_100005EA8(&qword_1003BC0E8);
    sub_1002A1B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC150);
  }

  return result;
}

unint64_t sub_1002A1B34()
{
  result = qword_1003BC158;
  if (!qword_1003BC158)
  {
    sub_100005EA8(&qword_1003BC130);
    sub_1002A1BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC158);
  }

  return result;
}

unint64_t sub_1002A1BC0()
{
  result = qword_1003BC160;
  if (!qword_1003BC160)
  {
    sub_100005EA8(&qword_1003BC128);
    sub_10001BAEC(&qword_1003BC168, &qword_1003BC170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC160);
  }

  return result;
}

unint64_t sub_1002A1D00()
{
  result = qword_1003BC178;
  if (!qword_1003BC178)
  {
    sub_100005EA8(&qword_1003BC100);
    sub_1002A1D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC178);
  }

  return result;
}

unint64_t sub_1002A1D8C()
{
  result = qword_1003BC180;
  if (!qword_1003BC180)
  {
    sub_100005EA8(&qword_1003BC0F8);
    sub_1002A1E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC180);
  }

  return result;
}

unint64_t sub_1002A1E18()
{
  result = qword_1003BC188;
  if (!qword_1003BC188)
  {
    sub_100005EA8(&qword_1003BC0F0);
    sub_1002A1938();
    sub_1002A1AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC188);
  }

  return result;
}

uint64_t sub_1002A1EC4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TranslationCardView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1002A1FD4(uint64_t a1)
{
  v3 = *(type metadata accessor for TranslationCardView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002A1240(a1, v4);
}

unint64_t sub_1002A2044()
{
  result = qword_1003BC220;
  if (!qword_1003BC220)
  {
    sub_100005EA8(&qword_1003BC1C8);
    sub_10001BAEC(&qword_1003ACA40, &qword_1003AC9E0);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC220);
  }

  return result;
}

unint64_t sub_1002A2128()
{
  result = qword_1003BC238;
  if (!qword_1003BC238)
  {
    sub_100005EA8(&qword_1003BC230);
    sub_1002A21AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC238);
  }

  return result;
}

unint64_t sub_1002A21AC()
{
  result = qword_1003BC240;
  if (!qword_1003BC240)
  {
    sub_100005EA8(&qword_1003BC248);
    sub_1002A2238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC240);
  }

  return result;
}

unint64_t sub_1002A2238()
{
  result = qword_1003BC250;
  if (!qword_1003BC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC250);
  }

  return result;
}

unint64_t sub_1002A228C()
{
  result = qword_1003BC258;
  if (!qword_1003BC258)
  {
    sub_100005EA8(&qword_1003BC1E0);
    sub_100005EA8(&qword_1003BC1D0);
    sub_100005EA8(&qword_1003AC9D8);
    sub_100005EA8(&qword_1003BC228);
    sub_100005EA8(&qword_1003BC1C8);
    sub_1002A2044();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC258);
  }

  return result;
}

uint64_t sub_1002A244C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002A24EC()
{
  result = qword_1003BC2C0;
  if (!qword_1003BC2C0)
  {
    sub_100005EA8(&qword_1003BC270);
    sub_1002A2578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2C0);
  }

  return result;
}

unint64_t sub_1002A2578()
{
  result = qword_1003BC2C8;
  if (!qword_1003BC2C8)
  {
    sub_100005EA8(&qword_1003BC268);
    sub_1002A2630();
    sub_10001BAEC(&qword_1003AA930, &qword_1003AA938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2C8);
  }

  return result;
}

unint64_t sub_1002A2630()
{
  result = qword_1003BC2D0;
  if (!qword_1003BC2D0)
  {
    sub_100005EA8(&qword_1003BC260);
    sub_1002A26E8();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2D0);
  }

  return result;
}

unint64_t sub_1002A26E8()
{
  result = qword_1003BC2D8;
  if (!qword_1003BC2D8)
  {
    sub_100005EA8(&qword_1003BC2B8);
    sub_1002A2CF0(&qword_1003BC2E0, &type metadata accessor for SimpleExpandingText);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2D8);
  }

  return result;
}

uint64_t sub_1002A27D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_10004A464(a1, v4, v5, v6, v7);
}

uint64_t sub_1002A28E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002A2948()
{
  result = qword_1003BC318;
  if (!qword_1003BC318)
  {
    sub_100005EA8(&qword_1003BC2E8);
    sub_1002A2CF0(&qword_1003B2A40, type metadata accessor for LanguageAwareText);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC318);
  }

  return result;
}

unint64_t sub_1002A2A30()
{
  result = qword_1003BC320;
  if (!qword_1003BC320)
  {
    sub_100005EA8(&qword_1003BC308);
    sub_1002A2AE8();
    sub_10001BAEC(&qword_1003AA930, &qword_1003AA938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC320);
  }

  return result;
}

unint64_t sub_1002A2AE8()
{
  result = qword_1003BC328;
  if (!qword_1003BC328)
  {
    sub_100005EA8(&qword_1003BC300);
    sub_1002A2B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC328);
  }

  return result;
}

unint64_t sub_1002A2B74()
{
  result = qword_1003BC330;
  if (!qword_1003BC330)
  {
    sub_100005EA8(&qword_1003BC2F8);
    sub_1002A2C2C();
    sub_10001BAEC(&qword_1003BC340, &qword_1003BC348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC330);
  }

  return result;
}

unint64_t sub_1002A2C2C()
{
  result = qword_1003BC338;
  if (!qword_1003BC338)
  {
    sub_100005EA8(&qword_1003BC2F0);
    sub_1002A2948();
    sub_1002A2CF0(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC338);
  }

  return result;
}

uint64_t sub_1002A2CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002A2D58(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v6 = *(type metadata accessor for TranslationCardView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7);
}

uint64_t sub_1002A2DF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_1002A2E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_10004A464(a1, v4, v5, v6, v7);
}

uint64_t sub_1002A3028()
{
  v1 = type metadata accessor for TranslationCardView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = sub_100005AD4(&qword_1003BC020);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  swift_unknownObjectRelease();
  if (*(v0 + v2 + v1[6]))
  {
  }

  v6 = v1[8];
  sub_100005AD4(&qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002A32B8()
{
  sub_100005EA8(&qword_1003BC110);
  type metadata accessor for GenderDisambiguationLearnMoreView();
  sub_100005EA8(&qword_1003BC108);
  sub_100005EA8(&qword_1003BC100);
  sub_1002A1D00();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1002A2CF0(&qword_1003AC918, &type metadata accessor for GenderDisambiguationLearnMoreView);
  return swift_getOpaqueTypeConformance2();
}

double sub_1002A3448@<D0>(_OWORD *a1@<X8>)
{
  sub_10027A9FC();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002A3498()
{
  sub_10027A9FC();

  return EnvironmentValues.subscript.setter();
}

void sub_1002A34F8(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1002B2198, v8);
}

id sub_1002A35CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

uint64_t sub_1002A36B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 194);
  return result;
}

uint64_t sub_1002A3780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 241);
  return result;
}

void sub_1002A3864()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100068910();
}

double sub_1002A38DC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003AC930, type metadata accessor for CardMetrics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1002A39AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_1002A3A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1002A3A88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_getKeyPath();
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = [*(a2 + 72) objectID];
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }
}

Swift::Int sub_1002A3BAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    swift_getKeyPath();
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = [*(v1 + 72) objectID];
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  return Hasher._finalize()();
}

uint64_t sub_1002A3CA0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  v48 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  v49 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
  if (v49)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (LOBYTE(aBlock[0]) == 1)
    {

      sub_1000663B0(0);
    }

    goto LABEL_20;
  }

  v3 = &v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView] = 0;

  v5 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController];
  if (!v5)
  {
    v14 = [v0 presentedViewController];
    if (v14)
    {
      v15 = v14;
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D27A0);
      v6 = v15;
      v8 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v8, v17))
      {
        goto LABEL_8;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136446210;
      swift_getObjectType();
      v20 = _typeName(_:qualified:)();
      v22 = sub_10028D78C(v20, v21, aBlock);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v8, v17, "Couldn't find dictionaryController to dismiss but have presented view controller: %{public}s; not attempting to dismiss it though since it might not be a dictionaryController", v18, 0xCu);
      sub_100008664(v19);
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000078E8(v23, qword_1003D27A0);
      v6 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v6, v24, "Unable to find any dictionary view controller to dismiss", v25, 2u);
      }
    }

    goto LABEL_19;
  }

  v6 = v5;
  v7 = [v6 presentingViewController];
  v8 = v6;
  if (v7)
  {
    v9 = v7;

    v8 = v9;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1002B1D18;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038C3E8;
  v13 = _Block_copy(aBlock);

  [v8 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
LABEL_8:

LABEL_19:
  sub_1002AD7A4(1u, 1);
LABEL_20:
  v26 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
  if (v26 >> 62)
  {
    goto LABEL_54;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:

  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v52 = v26 & 0xFFFFFFFFFFFFFF8;
    v53 = v26 & 0xC000000000000001;
    v50 = v26;
    v51 = v27;
    while (1)
    {
      if (v53)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        if (v28 >= *(v52 + 16))
        {
          __break(1u);
LABEL_54:
          v27 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }

        v31 = *(v26 + 8 * v28 + 32);

        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_44;
        }
      }

      v33 = *(v2 + 1);
      v34 = v33 != 0;
      if (!v33)
      {
        goto LABEL_33;
      }

      v54 = v29;
      v35 = v2;
      v36 = *v2;
      swift_getKeyPath();
      aBlock[0] = v31;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      swift_bridgeObjectRetain_n();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = [*(v31 + 72) identifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if (v36 == v38 && v33 == v40)
      {
        break;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      swift_bridgeObjectRelease_n();
      if ((v41 & 1) == *(v31 + 241))
      {
        v42 = (v31 + 241);
        v34 = v41;
        v2 = v35;
        v26 = v50;
        v29 = v54;
        goto LABEL_39;
      }

      v34 = v41;
      v2 = v35;
      v29 = v54;
LABEL_37:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      aBlock[0] = v31;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v26 = v50;
LABEL_40:
      v44 = *(v31 + 194);
      if (v34 == v44)
      {
        *(v31 + 194) = v34;
        sub_1000458A4(v44);
      }

      else
      {
        v30 = swift_getKeyPath();
        __chkstk_darwin(v30);
        aBlock[0] = v31;
        sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      ++v28;
      if (v32 == v51)
      {
        goto LABEL_45;
      }
    }

    swift_bridgeObjectRelease_n();
    v2 = v35;
    v26 = v50;
    v29 = v54;
LABEL_33:
    v41 = 1;
    if (*(v31 + 241))
    {
      v42 = (v31 + 241);
LABEL_39:
      *v42 = v41 & 1;
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_45:

  if (v49)
  {
    if (v48 == 0xD000000000000025 && v49 == 0x80000001002FD660)
    {
      v45 = 1;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v46 = v45;
  }

  else
  {
    v45 = 0;
    v46 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v45 & 1;
  swift_retain_n();
  static Published.subscript.setter();
  sub_100068910();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v46 & 1;

  static Published.subscript.setter();
  return sub_1002A8F4C(0);
}

uint64_t sub_1002A4620(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616E6F6974636964;
  v4 = 0xEA00000000007972;
  if (v2 != 1)
  {
    v3 = 0x6F68706F7263696DLL;
    v4 = 0xEA0000000000656ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6472616F6279656BLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x616E6F6974636964;
  v8 = 0xEA00000000007972;
  if (*a2 != 1)
  {
    v7 = 0x6F68706F7263696DLL;
    v8 = 0xEA0000000000656ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6472616F6279656BLL;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1002A4734()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A47E0()
{
  String.hash(into:)();
}

Swift::Int sub_1002A4878()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002A4920@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B1E90(*a1);
  *a2 = result;
  return result;
}

void sub_1002A4950(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000007972;
  v5 = 0x616E6F6974636964;
  if (v2 != 1)
  {
    v5 = 0x6F68706F7263696DLL;
    v4 = 0xEA0000000000656ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6472616F6279656BLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1002A49B8(uint64_t a1)
{
  v67 = sub_100005AD4(&unk_1003BC4E0);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v52 - v3;
  v65 = sub_100005AD4(&unk_1003B8DA0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = v52 - v4;
  v5 = sub_100005AD4(&unk_1003BC4F0);
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v66 = v52 - v6;
  v7 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v7 - 8);
  v9 = v52 - v8;
  v55 = sub_100005AD4(&qword_1003BC500);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = v52 - v10;
  v58 = sub_100005AD4(&qword_1003BC508);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v13 = v52 - v12;
  v60 = sub_100005AD4(&qword_1003BC510);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v15 = v52 - v14;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource] = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v16 = sub_10011ED3C(_swiftEmptyArrayStorage);
    }

    else
    {
      v16 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_observers] = v16;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore] = _swiftEmptyArrayStorage;
  v17 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  *v17 = 0;
  v17[1] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController] = 0;
  v18 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView] = 0;
  v19 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier];
  *v20 = 0xD000000000000018;
  v20[1] = 0x80000001002FD730;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard] = 0;
  v21 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  *&v1[v21] = sub_100292B54(_swiftEmptyArrayStorage);
  v22 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame];
  *v22 = 0u;
  v22[1] = 0u;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel] = a1;
  v23 = type metadata accessor for TranslationListController();
  v75.receiver = v1;
  v75.super_class = v23;

  v71 = objc_msgSendSuper2(&v75, "initWithNibName:bundle:", 0, 0);
  v72 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
  v24 = v71;
  v70 = a1;
  swift_beginAccess();
  v25 = v24;

  sub_100005AD4(&qword_1003B8CB0);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_10000A2CC(0, &qword_1003A9C40);
  v26 = static OS_dispatch_queue.main.getter();
  aBlock[0] = v26;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v28 = *(v27 - 8);
  v53 = *(v28 + 56);
  v54 = v28 + 56;
  v53(v9, 1, 1, v27);
  v52[2] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&qword_1003AEAE0, &qword_1003BC500);
  v52[1] = sub_100051450();
  v29 = v55;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v9, &qword_1003B23F0);

  (*(v56 + 8))(v11, v29);
  *(swift_allocObject() + 16) = v25;
  v30 = v25;
  sub_100005AD4(&qword_1003BC518);
  sub_10001BAEC(&qword_1003BC520, &qword_1003BC508);
  v31 = v58;
  Publisher.map<A>(_:)();

  (*(v57 + 8))(v13, v31);
  v32 = swift_allocObject();
  v33 = v70;
  *(v32 + 16) = v30;
  *(v32 + 24) = v33;
  sub_10001BAEC(&unk_1003BC528, &qword_1003BC510);

  v34 = v30;
  v35 = v60;
  Publisher<>.sink(receiveValue:)();

  (*(v59 + 8))(v15, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();

  sub_100005AD4(&unk_1003B8DF0);
  v36 = v62;
  Published.projectedValue.getter();
  swift_endAccess();

  v37 = static OS_dispatch_queue.main.getter();
  aBlock[0] = v37;
  v53(v9, 1, 1, v27);
  sub_10001BAEC(&qword_1003AD900, &unk_1003BC4E0);
  v38 = v61;
  v39 = v67;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v9, &qword_1003B23F0);

  (*(v64 + 8))(v36, v39);
  sub_10001BAEC(&qword_1003B8E00, &unk_1003B8DA0);
  v40 = v65;
  v41 = v66;
  Publisher<>.removeDuplicates()();
  (*(v63 + 8))(v38, v40);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&qword_1003BC538, &unk_1003BC4F0);
  v42 = v69;
  Publisher<>.sink(receiveValue:)();

  (*(v68 + 8))(v41, v42);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v43 = [objc_opt_self() defaultCenter];
  v44 = [objc_opt_self() mainQueue];
  v45 = swift_allocObject();
  *(v45 + 16) = v34;
  aBlock[4] = sub_1002B2964;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100213518;
  aBlock[3] = &unk_10038C888;
  v46 = _Block_copy(aBlock);
  v47 = v34;

  v48 = [v43 addObserverForName:UIKeyboardWillChangeFrameNotification object:0 queue:v44 usingBlock:v46];
  _Block_release(v46);
  swift_unknownObjectRelease();

  v73[1] = &off_10038C338;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v49 = v47;

  sub_1000CC8A4(v73, v49);
  swift_endAccess();

  sub_100005AD4(&qword_1003AFCD0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1002D3160;
  *(v50 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005AD4(&qword_1003AFCD8);
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v49;
}

unint64_t sub_1002A5728@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *result;
  if (*result >> 62)
  {
    goto LABEL_37;
  }

  v4 = *((*result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v4)
  {
LABEL_32:
    *a3 = _swiftEmptyArrayStorage;
    return result;
  }

  v19 = a3;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    result = 0;
    v22 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
    v21 = v4;
    do
    {
      if (__OFADD__(result, 1))
      {
        goto LABEL_35;
      }

      v24 = result + 1;
      if ((v20 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (result >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v5 = *(v20 + 32 + 8 * result);
      }

      v25 = v5;
      v6 = *(a2 + v22);
      if (v6 >> 62)
      {
        a3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        v7 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v8 = *(v6 + 8 * v7 + 32);

            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              result = _CocoaArrayWrapper.endIndex.getter();
              v4 = result;
              goto LABEL_3;
            }
          }

          swift_getKeyPath();
          sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = [*(v8 + 72) identifier];
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          v14 = [v25 identifier];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          if (v11 == v15 && v13 == v17)
          {

            goto LABEL_7;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {

            goto LABEL_7;
          }

          ++v7;
        }

        while (v9 != a3);
      }

      sub_1002A9FAC(v25);

LABEL_7:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a3 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      result = v24;
    }

    while (v24 != v21);
    a3 = v19;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A5AA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
  v7 = *(a2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  if (v7 >> 62)
  {
    v13 = v5;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v13;
    if (!(v13 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v5 >> 62))
    {
LABEL_3:
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v14 = v5;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  v5 = v14;
LABEL_4:
  *(a2 + v6) = v5;

  v10 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_newTranslationFromPunchOut;
  if (*(a3 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_newTranslationFromPunchOut))
  {
    v11 = 2;
  }

  else if (v8 < v9)
  {
    v11 = *(a2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible);
  }

  else
  {
    v11 = 0;
  }

  result = sub_1002A8F4C(v11);
  *(a3 + v10) = 0;
  return result;
}

uint64_t sub_1002A5B9C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = (result + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
      v5 = *(result + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
      *v4 = 0;
      v4[1] = 0;
      if (v5)
      {
        sub_1002A3CA0();
      }
    }

    v6 = v3;
    v7 = [v6 traitCollection];
    sub_1000E85EC();
    UITraitCollection.subscript.getter();

    v8 = v6;
    if ((v12 & 1) == 0)
    {
      v9 = [v6 parentViewController];

      if (!v9)
      {
LABEL_9:
        v10 = sub_10000A2CC(0, &qword_1003AFCF0);
        __chkstk_darwin(v10);
        v11 = v6;
        static Animation.default.getter();
        static UIView.animate(with:changes:completion:)();
      }

      v8 = [v9 navigationItem];

      [v8 setLargeTitleDisplayMode:0];
    }

    goto LABEL_9;
  }

  return result;
}

void sub_1002A5D7C(char *a1, char a2, double a3)
{
  sub_1002AD208(2u, 0, a3);
  if (a2)
  {
    v5 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
    v6 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
    if (v6)
    {
      [v6 contentSize];
      v8 = *&a1[v5];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v9 = v7;
      [v8 frame];
      MaxY = CGRectGetMaxY(v35);
      v11 = *&a1[v5];
      if (!v11)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = MaxY;
      [v11 adjustedContentInset];
      v14 = *&a1[v5];
      if (!v14)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v15 = v13;
      [v14 adjustedContentInset];
      v17 = v16;
      v18 = [a1 traitCollection];
      sub_1000E85EC();
      UITraitCollection.subscript.getter();

      if (v34)
      {
        goto LABEL_18;
      }

      v19 = [a1 parentViewController];
      if (!v19)
      {
        goto LABEL_18;
      }

      v20 = v19;
      v21 = [v19 navigationController];

      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = [v21 navigationBar];

      if (!v22)
      {
        goto LABEL_18;
      }

      if ((sub_1002C21EC() & 1) == 0)
      {
LABEL_17:

LABEL_18:
        sub_1002A6BD8(0);
        return;
      }

      sub_1002C23E4();
      if (v23 >= 0.0)
      {
        v24 = v9 - (v12 - v15 - v17);
        if (v24 >= 0.0 && v24 <= v23)
        {
          v26 = [a1 parentViewController];
          if (v26)
          {
            v27 = v26;
            v28 = [v26 navigationItem];

            [v28 setLargeTitleDisplayMode:2];
          }

          v29 = *&a1[v5];
          if (v29)
          {
            v30 = v29;
            [v30 contentOffset];
            v32 = v31;
            sub_1002C23E4();
            [v30 setContentOffset:0 animated:{0.0, v32 + v33 + 5.0}];

            return;
          }

          goto LABEL_29;
        }

        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }
}

void sub_1002A5FE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = &Strong[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
    v3 = *&Strong[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
    *v2 = 0;
    *(v2 + 1) = 0;
    if (v3)
    {
      sub_1002A3CA0();
    }

    else
    {
    }
  }
}

void sub_1002A6088()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setAutoresizingMask:18];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  sub_1002A7924();
}

uint64_t sub_1002A6234(char a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranslationListController();
  v12.receiver = v1;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  sub_1002A8F4C(0);
  v8 = *(*&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);

  UUID.init()();
  v9 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabSessionId;
  swift_beginAccess();
  (*(v4 + 40))(v8 + v9, v6, v3);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 0;
}

void sub_1002A63D8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TranslationListController();
  objc_msgSendSuper2(&v14, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ((sub_1002A6528() & 1) == 0)
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D27A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Dismissing Dictionary Mode due to rotation/size change in a configuration we can't properly move the highlight", v11, 2u);
    }

    v12 = &v4[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
    v13 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
    *v12 = 0;
    *(v12 + 1) = 0;
    if (v13)
    {
      sub_1002A3CA0();
    }
  }
}

uint64_t sub_1002A6528()
{
  v1 = type metadata accessor for Locale();
  v2 = __chkstk_darwin(v1);
  v3 = __chkstk_darwin(v2);
  v7 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  v41 = v5;
  v42 = v3;
  v39 = v6;
  v40 = &v38 - v4;
  if (v9 >> 62)
  {
LABEL_28:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
LABEL_19:

LABEL_24:
    v35 = 0;
    return v35 & 1;
  }

  v11 = 0;
  v45 = v9 & 0xFFFFFFFFFFFFFF8;
  v46 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v46)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v11 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_18;
      }
    }

    swift_getKeyPath();
    v14 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
    v47 = v12;
    v43 = sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    v44 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = v12;
    v16 = [*(v12 + 72) identifier];
    v17 = v7;
    v18 = v8;
    v19 = v16;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v8 = v18;
    v7 = v17;
    if (v20 == v8 && v17 == v22)
    {

      goto LABEL_22;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      break;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_19;
    }
  }

LABEL_22:

  swift_getKeyPath();
  v47 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v15 + 72);
  v26 = v40;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v27 = v39;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v28 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v30 = Locale._bridgeToObjectiveC()().super.isa;
  v31 = [v28 initWithSourceLocale:isa targetLocale:v30];

  v32 = v42;
  v33 = *(v41 + 8);
  v33(v27, v42);
  v33(v26, v32);
  v34 = [v31 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v34) = Locale.isRTL()();
  v33(v26, v32);
  if (v34)
  {

    goto LABEL_24;
  }

  v37 = [v31 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v37) = Locale.isRTL()();

  v33(v26, v32);
  v35 = v37 ^ 1;
  return v35 & 1;
}

void sub_1002A6A70()
{
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard) != 1)
  {
    return;
  }

  sub_1002A6BD8(0);
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  if (v1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v2 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v3 layoutIfNeeded];
  v4 = *(v0 + v2);
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v4 contentOffset];
  v7 = *(v0 + v2);
  if (!v7)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = [v10 traitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 16.0;
  if (v13 != 0.0)
  {
    v14 = sub_1000FBCB4(v13 * 16.0) / v13;
  }

  v15 = *(v0 + v2);
  if (!v15)
  {
    goto LABEL_18;
  }

  [v15 setContentOffset:0 animated:{v8, v9 + v14}];
}

uint64_t sub_1002A6BD8(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier + 8);
    v18[0] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier);
    v18[1] = v12;
    v13 = v11;

    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      result = (*(v8 + 32))(v10, v6, v7);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  IndexPath.init(row:section:)();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    result = sub_100009EBC(v6, &unk_1003AB970);
  }

LABEL_7:
  v15 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (v15)
  {
    v16 = v15;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v16 scrollToItemAtIndexPath:isa atScrollPosition:4 animated:a1 & 1];

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002A6E50(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
    v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
    if (!v10)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = v8;
    v12 = v10;
    v13 = dispatch thunk of UICollectionViewDiffableDataSource.numberOfSections(in:)();

    if (v13 >= 1)
    {
      v14 = *(v2 + v9);
      if (!v14)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v15 = v14;
      v16 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();

      if (v16 >= 1)
      {
        v17 = *(v2 + v9);
        if (!v17)
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v18 = v17;
        v19 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();

        if (!__OFSUB__(v19, 1))
        {
          IndexPath.init(item:section:)();
          v20 = *(v2 + v9);
          if (v20)
          {
            v21 = v20;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v21 scrollToItemAtIndexPath:isa atScrollPosition:4 animated:a1 & 1];

            (*(v5 + 8))(v7, v4);
            return;
          }

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_19;
      }
    }
  }

  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000078E8(v23, qword_1003D28C0);
  v28 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v28, v24, "Couldn't scroll to the last translation card", v25, 2u);
  }

  v26 = v28;
}

void *sub_1002A7118(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003BC440);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UICollectionLayoutListConfiguration();
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v11);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  sub_10000A2CC(0, &unk_1003B0730);
  result = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v19 = result;
  if (a1 == 1)
  {
    [result contentInsets];
    [v19 setContentInsets:0.0];
    v27 = v40;
LABEL_16:
    (*(v15 + 8))(v17, v27);
    return v19;
  }

  if (a1)
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000078E8(v33, qword_1003D28C0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    v36 = os_log_type_enabled(v34, v35);
    v27 = v40;
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 134349056;
      *(v37 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to get section for index %{public}ld; data might be malformed", v37, 0xCu);
    }

    goto LABEL_16;
  }

  v20 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (v20)
  {
    v21 = v20;
    v22 = [v21 traitCollection];
    [v22 displayScale];
    v24 = v23;

    v25 = 16.0;
    if (v24 != 0.0)
    {
      v25 = sub_1000FBCB4(v24 * 16.0) / v24;
    }

    [v19 setInterGroupSpacing:{v25, v38}];
    v26 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
    v28 = v39;
    v27 = v40;
    if (v26)
    {
      v29 = v26;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v30 = v8;
      v31 = v38;
      (*(v28 + 32))(v10, v30, v38);
      v41 = 0;
      v32 = *(NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)() + 16);

      if (!v32)
      {
        [v19 contentInsets];
        [v19 setContentInsets:0.0];
        [v19 contentInsets];
        [v19 setContentInsets:?];
      }

      (*(v28 + 8))(v10, v31);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A7604()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
    if (v2 && (v3 = v2, dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)(), v3, v17))
    {
      v4 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
      v15 = v1;
      if (v4 >> 62)
      {
        goto LABEL_29;
      }

      v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

      if (v1)
      {
        v5 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v7 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_29:
              v1 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_6;
            }

            v6 = *(v4 + 8 * v5 + 32);

            v7 = (v5 + 1);
            if (__OFADD__(v5, 1))
            {
              goto LABEL_20;
            }
          }

          swift_getKeyPath();
          sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v8 = [*(v6 + 72) identifier];
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;

          if (v9 == v16 && v17 == v11)
          {

LABEL_27:

            v14 = sub_1002ADD68(v6);

            return v14;
          }

          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {

            goto LABEL_27;
          }

          ++v5;
        }

        while (v7 != v1);
      }
    }

    else
    {
LABEL_21:
    }

    return 0;
  }

  return result;
}

void *sub_1002A78A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_1002A7118(a1);

  return v4;
}

void sub_1002A7924()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v30[4] = sub_1002B264C;
  v30[5] = v11;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_1002A3A0C;
  v30[3] = &unk_10038C758;
  v13 = _Block_copy(v30);
  v14 = [v12 initWithSectionProvider:v13];
  _Block_release(v13);

  v15 = [objc_allocWithZone(UICollectionView) initWithFrame:v14 collectionViewLayout:{v4, v6, v8, v10}];

  v16 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
  v17 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView] = v15;
  v18 = v15;

  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v18 setAutoresizingMask:18];

  v19 = *&v0[v16];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemGroupedBackgroundColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v0[v16];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v23 setKeyboardDismissMode:2];
  v24 = *&v0[v16];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v24 setAllowsSelection:0];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!*&v0[v16])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  [v25 addSubview:?];

  v27 = *&v0[v16];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v27 setTag:204];
  v28 = *&v0[v16];
  if (v28)
  {
    v29 = [v28 keyboardLayoutGuide];
    [v29 setUsesBottomSafeArea:0];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1002A7C00()
{
  v1 = sub_100005AD4(&qword_1003BC458);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v34 = &v30 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - v8;
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  *(swift_allocObject() + 16) = v0;
  sub_10000A2CC(0, &qword_1003BC460);
  v12 = v0;
  v13 = v11;
  UICollectionView.CellRegistration.init(handler:)();
  *(swift_allocObject() + 16) = v12;
  v14 = v12;
  UICollectionView.CellRegistration.init(handler:)();
  v33 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
  if (v33)
  {
    v15 = *(v2 + 16);
    v16 = v34;
    v32 = v13;
    v15(v34, v13, v1);
    v17 = v35;
    v15(v35, v9, v1);
    v18 = *(v2 + 80);
    v19 = (v18 + 24) & ~v18;
    v20 = (v3 + v18 + v19) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    v31 = v9;
    v22 = *(v2 + 32);
    v22(v21 + v19, v16, v1);
    v22(v21 + v20, v17, v1);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1002B24A4;
    *(v23 + 24) = v21;
    v24 = objc_allocWithZone(sub_100005AD4(&qword_1003BC468));
    v25 = v14;
    v26 = v33;
    v27 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v28 = *(v2 + 8);
    v28(v31, v1);
    v28(v32, v1);
    v29 = *&v25[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource];
    *&v25[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource] = v27;
  }

  else
  {
    __break(1u);
  }
}

void sub_1002A7F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v27[2] = a4;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005AD4(&unk_1003BC4C0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  v18 = *a3;
  if (IndexPath.section.getter())
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D28C0);
    (*(v8 + 16))(v10, a2, v7);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      v23 = IndexPath.section.getter();
      (*(v8 + 8))(v10, v7);
      *(v22 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, v21, "Malformed data: we are asked to configure a cell for a section that cannot exist: %{public}ld", v22, 0xCu);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v27[1] = a1;
    if (v18)
    {
      __chkstk_darwin(0);
      v27[-2] = v18;
      v27[-1] = v24;
      type metadata accessor for TranslationCardView();
      sub_1002B2220(&qword_1003B07B0, type metadata accessor for TranslationCardView);

      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      UIHostingConfiguration.margins(_:_:)();
      v25 = *(v12 + 8);
      v25(v15, v11);
      v28[3] = v11;
      v28[4] = sub_10001BAEC(&qword_1003BC4D0, &unk_1003BC4C0);
      v26 = sub_100050D60(v28);
      (*(v12 + 16))(v26, v17, v11);
      UICollectionViewCell.contentConfiguration.setter();

      v25(v17, v11);
    }
  }
}

uint64_t sub_1002A8378@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for SharedTranslationOptions();
  sub_1002B2220(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  v4 = EnvironmentObject.init()();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for TranslationCardView();
  *(a2 + v8[8]) = KeyPath;
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CommittedTranslationViewModel();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  v9 = a1;

  Bindable<A>.init(wrappedValue:)();
  v10 = (a2 + v8[5]);
  *v10 = a1;
  v10[1] = &off_10038C348;
  v11 = (a2 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v8[7]);
  *v12 = v4;
  v12[1] = v6;
  v13 = (a2 + v8[9]);
  type metadata accessor for SceneContext();
  sub_1002B2220(&qword_1003AC860, type metadata accessor for SceneContext);
  *v13 = EnvironmentObject.init()();
  v13[1] = v14;
  v15 = a2 + v8[10];
  State.init(wrappedValue:)();
  *v15 = v18;
  *(v15 + 8) = v19;
  v16 = v8[11];
  result = Image.init(systemName:)();
  *(a2 + v16) = result;
  return result;
}

void sub_1002A8594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003BC470);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v28[-1] - v16;
  __chkstk_darwin(v15);
  v19 = &v28[-1] - v18;
  if (IndexPath.section.getter() == 1)
  {
    __chkstk_darwin(1);
    *(&v27 - 2) = a4;
    type metadata accessor for ComposeTranslationCardView();
    sub_1002B2220(&qword_1003BC478, type metadata accessor for ComposeTranslationCardView);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v11 + 8);
    v20(v14, v10);
    UIHostingConfiguration.animatedSizeInvalidationDisabled()();
    v20(v17, v10);
    v28[3] = v10;
    v28[4] = sub_10001BAEC(&unk_1003BC480, &qword_1003BC470);
    v21 = sub_100050D60(v28);
    (*(v11 + 16))(v21, v19, v10);
    UICollectionViewCell.contentConfiguration.setter();
    v20(v19, v10);
  }

  else
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000078E8(v22, qword_1003D28C0);
    (*(v7 + 16))(v9, a2, v6);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      v26 = IndexPath.section.getter();
      (*(v7 + 8))(v9, v6);
      *(v25 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v23, v24, "Malformed data: we are asked to configure a cell for a section that cannot exist: %{public}ld", v25, 0xCu);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1002A89B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationContext(0);
  sub_1002B2220(&unk_1003BC490, type metadata accessor for ConversationContext);

  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for SceneContext();
  sub_1002B2220(&qword_1003AC860, type metadata accessor for SceneContext);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = type metadata accessor for ComposeTranslationCardView();
  v10 = (a1 + v9[5]);
  *v10 = v2;
  v10[1] = v4;
  v11 = (a1 + v9[6]);
  *v11 = v5;
  v11[1] = v7;
  v12 = (a1 + v9[7]);
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_1002B2220(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
  *v12 = ObservedObject.init(wrappedValue:)();
  v12[1] = v13;
  v14 = (a1 + v9[8]);
  type metadata accessor for LanguagesService();
  sub_1002B2220(&unk_1003ABC30, &type metadata accessor for LanguagesService);
  *v14 = ObservedObject.init(wrappedValue:)();
  v14[1] = v15;
  v16 = a1 + v9[9];
  *v16 = FocusState.init<>()() & 1;
  *(v16 + 1) = v17;
  v16[16] = v18 & 1;
  v19 = a1 + v9[10];
  State.init(wrappedValue:)();
  *v19 = v23;
  *(v19 + 1) = v24;
  v20 = a1 + v9[11];
  *v20 = KeyPath;
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_10005C738();
  result = ScaledMetric.init(wrappedValue:)();
  v22 = (a1 + v9[13]);
  *v22 = sub_10005B118;
  v22[1] = 0;
  return result;
}

uint64_t sub_1002A8C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (IndexPath.section.getter())
  {
    sub_10000A2CC(0, &qword_1003BC460);
    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v9 = *(a5 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
    if (v9 >> 62)
    {
      goto LABEL_24;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v10)
    {
      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

LABEL_21:

            sub_10000A2CC(0, &qword_1003BC460);

            v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

            return v20;
          }
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_24:
            v10 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_5;
          }

          v12 = *(v9 + 8 * v11 + 32);

          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_19;
          }
        }

        swift_getKeyPath();
        sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v14 = [*(v12 + 72) identifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v15 == a3 && v17 == a4)
        {
          goto LABEL_20;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_21;
        }

        ++v11;
      }

      while (v13 != v10);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002A8F4C(int a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003BC440);
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v59 - v5;
  sub_1002B22FC();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10037D6A8);
  sub_100005AD4(&unk_1003BA780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D3160;
  v8 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier + 8);
  *(v7 + 32) = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier);
  *(v7 + 40) = v8;
  LOBYTE(v68[0]) = 1;

  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v64 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
  v9 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  swift_bridgeObjectRetain_n();
  v68[0] = sub_1002C08E8(v9);
  sub_1002B00F0(v68);
  v60 = a1;

  v10 = v68[0];
  v62 = v6;
  v63 = v4;
  v65 = v2;
  if (v68[0] < 0 || (v68[0] & 0x4000000000000000) != 0)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = *(v68[0] + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_4:
  v68[0] = _swiftEmptyArrayStorage;
  sub_1000C4B4C(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
LABEL_69:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_38;
  }

  v12 = 0;
  v13 = v68[0];
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v10 + 8 * v12 + 32);
    }

    swift_getKeyPath();
    v67 = v14;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = [*(v14 + 72) identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v68[0] = v13;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1000C4B4C((v19 > 1), v20 + 1, 1);
      v13 = v68[0];
    }

    ++v12;
    *(v13 + 16) = v20 + 1;
    v21 = v13 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
  }

  while (v11 != v12);

  v2 = v65;
LABEL_15:
  LOBYTE(v68[0]) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v10 = *(v2 + v64);
  if (v10 >> 62)
  {
    goto LABEL_67;
  }

  v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v23 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier;

  if (v22)
  {
    v24 = 0;
    v25 = (v65 + v23);
    v66 = v10 & 0xC000000000000001;
    do
    {
      if (v66)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v24 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v22 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_17;
        }

        v26 = *(v10 + 8 * v24 + 32);

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_31;
        }
      }

      swift_getKeyPath();
      v68[0] = v26;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = [*(v26 + 72) identifier];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = v25[1];
      if (v32)
      {
        if (v29 == *v25 && v32 == v31)
        {

          goto LABEL_34;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {

LABEL_34:
          v34 = 1;
          goto LABEL_35;
        }
      }

      else
      {
      }

      ++v24;
    }

    while (v27 != v22);
  }

  v34 = 0;
LABEL_35:
  v35 = v65;
  v2 = (v65 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  if (!*(v65 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8))
  {
    v46 = 0;
    v48 = v62;
    v47 = v63;
    goto LABEL_58;
  }

  v10 = *(v65 + v64);
  v59 = v34;
  if (v10 >> 62)
  {
    goto LABEL_69;
  }

  v36 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:

  if (!v36)
  {
LABEL_53:

    v46 = 1;
    goto LABEL_57;
  }

  v37 = 0;
  v66 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v66)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v37 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v38 = *(v10 + 8 * v37 + 32);

      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    swift_getKeyPath();
    v68[0] = v38;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = [*(v38 + 72) identifier];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = v2[1];
    if (!v44)
    {

      goto LABEL_41;
    }

    if (v41 == *v2 && v44 == v43)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {

      goto LABEL_56;
    }

LABEL_41:
    ++v37;
    if (v39 == v36)
    {
      goto LABEL_53;
    }
  }

LABEL_56:
  v46 = 0;
LABEL_57:
  v48 = v62;
  v47 = v63;
  v35 = v65;
  LOBYTE(v34) = v59;
LABEL_58:
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000078E8(v49, qword_1003D28C0);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    swift_beginAccess();
    v53 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    *(v52 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v50, v51, "Snapshot identifiers count: %ld", v52, 0xCu);
  }

  v54 = *(v35 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (v54)
  {
    swift_beginAccess();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v60;
    *(v56 + 25) = v34;
    *(v56 + 26) = v46;
    v57 = v54;

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  return (*(v61 + 8))(v48, v47);
}

uint64_t sub_1002A986C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_100005AD4(&qword_1003B5130);
  v5 = __chkstk_darwin(v4 - 8);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v36 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v36 - v14;
  __chkstk_darwin(v13);
  v17 = v36 - v16;
  v18 = *a1;
  v19 = *a2;
  swift_getKeyPath();
  v40 = v18;
  v36[1] = sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = [*(v18 + 72) creationDate];
  v37 = v17;
  v36[0] = v15;
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v10 + 32);
    v22(v8, v15, v9);
    v23 = *(v10 + 56);
    v23(v8, 0, 1, v9);
    v22(v17, v8, v9);
  }

  else
  {
    v23 = *(v10 + 56);
    v23(v8, 1, 1, v9);
    static Date.now.getter();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_100009EBC(v8, &qword_1003B5130);
    }
  }

  swift_getKeyPath();
  v40 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = [*(v19 + 72) creationDate];
  if (v24)
  {
    v25 = v36[0];
    v26 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v10 + 32);
    v28 = v39;
    v27(v39, v25, v9);
    v23(v28, 0, 1, v9);
    v29 = v38;
    v27(v38, v28, v9);
    v30 = v37;
  }

  else
  {
    v31 = v39;
    v23(v39, 1, 1, v9);
    v29 = v38;
    static Date.now.getter();
    v32 = (*(v10 + 48))(v31, 1, v9);
    v30 = v37;
    if (v32 != 1)
    {
      sub_100009EBC(v31, &qword_1003B5130);
    }
  }

  v33 = static Date.< infix(_:_:)();
  v34 = *(v10 + 8);
  v34(v29, v9);
  v34(v30, v9);
  return v33 & 1;
}

void sub_1002A9CEC(uint64_t a1, char a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_1002A6BD8(1);
      }

      else
      {
        sub_1002A6E50(1);
      }
    }

    v9 = &v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier];
    v10 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier + 8];
    if (v10 && (a3 & 1) != 0)
    {
      v11 = *v9;
      v12 = qword_1003A9230;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000078E8(v13, qword_1003D27A0);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Entering dictionary mode on new translation now that the list has updated", v16, 2u);
      }

      v17 = &v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v18 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v19 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
      *v17 = v11;
      *(v17 + 1) = v10;
      if (!v19 || (v11 != v18 || v10 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        sub_1002A3CA0();
      }

      *v9 = 0;
      *(v9 + 1) = 0;
    }

    else
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D27A0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Dismissing Dictionary Mode because the card in Dictionary Mode is no longer shown", v23, 2u);
      }

      v24 = &v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v25 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
      *v24 = 0;
      *(v24 + 1) = 0;
      if (v25)
      {
        sub_1002A3CA0();
      }

      else
      {
LABEL_25:
      }
    }
  }
}

uint64_t sub_1002A9FAC(void *a1)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for GenderTipManager.Registration(0);
  __chkstk_darwin(v3 - 8);
  v54 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CommittedTranslationViewModel();
  v6 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel];
  v7 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
  v51 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
  v52 = v5;
  v8 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
  sub_100031DD8(v8 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store, &v56);
  v9 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_ttsManager);

  v10 = [v2 traitCollection];
  sub_1000E8640();
  UITraitCollection.subscript.getter();

  v11 = *&v2[v7];
  v50 = v55;
  v12 = *(v11 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_dictionaryManager);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v58;
  v15 = v59;
  v17 = sub_1000E859C(&v56, v58);
  __chkstk_darwin(v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = v12;

  v22 = v53;
  v23 = v19;
  v24 = v22;
  v25 = sub_10005098C(v22, v8, v23, v9, 0, 0, v50, v12, sub_1002B22DC, v13, sub_1002B22E4, v14, v52, v16, v15);

  sub_100008664(&v56);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v26 = v57;
  if (v57)
  {
    v27 = v56;
    if (v27 == dispatch thunk of PersistedTranslation.displaySourceText.getter() && v26 == v28)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        if (qword_1003A9230 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_1000078E8(v39, qword_1003D27A0);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = v24;
          v44 = swift_slowAlloc();
          v56 = v44;
          *v42 = 136642819;
          v45 = sub_10028D78C(v27, v26, &v56);

          *(v42 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v40, v41, "Compose card pending dictionary item source text does not match new translation, clearing request to go into Dictionary Mode; pending source text: %{sensitive}s", v42, 0xCu);
          sub_100008664(v44);
          v24 = v43;
        }

        else
        {
        }

        goto LABEL_17;
      }
    }

    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000078E8(v30, qword_1003D27A0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Compose card pending dictionary item source text matches newly added translation source text; saving the identifier to go into Dictionary Mode when it's on screen", v33, 2u);
    }

    swift_getKeyPath();
    v56 = v25;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = [*(v25 + 72) identifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = &v2[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier];
    *v38 = v35;
    v38[1] = v37;

LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = 0;
    v57 = 0;

    static Published.subscript.setter();
  }

  v46 = v24;

  v47 = v54;
  sub_10010993C(v46, 0, v54);
  sub_100109EB0(v47);

  sub_10005139C(v47);
  if (*&v2[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8])
  {
    sub_1002ABCFC(v25);
  }

  return v25;
}

void sub_1002AA6B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1002AA760(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1002AA760(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v77 = a6;
  v14 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for DisambiguationResultModel.TextLocation.source(_:))
  {
    sub_100045EE4(a4, a5, 0);
    if (a3)
    {
LABEL_3:
      v19 = a3;
      v20 = [v7 presentedViewController];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 popoverPresentationController];

        if (v22)
        {
          [v22 setSourceView:0];
        }
      }

      v23 = [v8 presentedViewController];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 popoverPresentationController];

        if (v25)
        {
          [v25 setSourceView:v19];
        }
      }

      v26 = [v8 presentedViewController];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 popoverPresentationController];

        if (v28)
        {
          [v28 setPermittedArrowDirections:3];
        }
      }

      v29 = [v19 beginningOfDocument];
      v30 = [v19 positionFromPosition:v29 offset:a4];
      if (v30)
      {
        v31 = v30;
        v32 = [v19 positionFromPosition:v30 offset:a5];
        if (v32)
        {
          v33 = v32;
          v34 = [v19 textRangeFromPosition:v31 toPosition:v32];
          if (v34)
          {
            v75 = v34;
            [v19 firstRectForRange:v34];
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v42 = v41;
            if (qword_1003A9230 != -1)
            {
              swift_once();
            }

            v43 = type metadata accessor for Logger();
            sub_1000078E8(v43, qword_1003D27A0);

            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.info.getter();

            v76 = v44;
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v78 = v74;
              *v46 = 136446467;
              v79.origin.x = v36;
              v79.origin.y = v38;
              v79.size.width = v40;
              v79.size.height = v42;
              v47 = NSStringFromRect(v79);
              HIDWORD(v73) = v45;
              v48 = v47;
              v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v50;

              v52 = sub_10028D78C(v49, v51, &v78);

              *(v46 + 4) = v52;
              *(v46 + 12) = 2085;
              if (a7)
              {
                v53 = v77;
              }

              else
              {
                v53 = 0x3E6C696E3CLL;
              }

              if (a7)
              {
                v54 = a7;
              }

              else
              {
                v54 = 0xE500000000000000;
              }

              v55 = sub_10028D78C(v53, v54, &v78);

              *(v46 + 14) = v55;
              v56 = v76;
              _os_log_impl(&_mh_execute_header, v76, BYTE4(v73), "Setting popover rect to %{public}s for word %{sensitive}s", v46, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v71 = [v8 presentedViewController];
            v72 = [v71 popoverPresentationController];

            [v72 setSourceRect:{v36, v38, v40, v42}];
LABEL_48:

LABEL_49:
            sub_1002AE778(v77, a7, v8);
            return;
          }
        }

        else
        {
          v33 = v31;
        }
      }

      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000078E8(v61, qword_1003D27A0);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v64 = 136446467;
        v65 = _NSRange.description.getter();
        v67 = sub_10028D78C(v65, v66, &v78);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2085;
        if (a7)
        {
          v68 = v77;
        }

        else
        {
          v68 = 0x3E6C696E3CLL;
        }

        if (a7)
        {
          v69 = a7;
        }

        else
        {
          v69 = 0xE500000000000000;
        }

        v70 = sub_10028D78C(v68, v69, &v78);

        *(v64 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v62, v63, "Failed to lookup range %{public}s in text view; word: %{sensitive}s", v64, 0x16u);
        swift_arrayDestroy();
      }

      goto LABEL_48;
    }

LABEL_27:
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000078E8(v57, qword_1003D27A0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Not moving popover after setting new word because there's no UITextView to get the location from", v60, 2u);
    }

    goto LABEL_49;
  }

  if (v18 == enum case for DisambiguationResultModel.TextLocation.target(_:))
  {
    sub_100046394(a4, a5, 0);
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_27;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002AAF7C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1002AAFEC(a1, a2 & 1);
  }
}

void sub_1002AAFEC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v104 - v11;
  if ((a2 & 1) == 0)
  {
    v65 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
    v66 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
    *v65 = 0;
    v65[1] = 0;
    if (v66)
    {
      sub_1002A3CA0();
    }

    return;
  }

  swift_getKeyPath();
  v111 = a1;
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 88);
  if (!v13)
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000078E8(v67, qword_1003D27A0);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Can't find resultModel so unable to present dictionary", v70, 2u);
    }

    v71 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
    v72 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
    *v71 = 0;
    v71[1] = 0;
    if (v72)
    {
      sub_1002A3CA0();
    }

    return;
  }

  v107 = v7;
  type metadata accessor for DictionaryViewController();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v108 = v13;
  v15 = [v14 init];
  v16 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController);
  *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController) = v15;
  v110 = v15;

  v17 = [objc_opt_self() sharedApplication];
  [v17 sendAction:"resignFirstResponder" to:0 from:v3 forEvent:0];

  swift_getKeyPath();
  v111 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v3;
  v19 = [*(a1 + 72) identifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v109 = v18;
  v23 = (v18 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v24 = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v25 = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  *v23 = v20;
  v23[1] = v22;
  v105 = v23;
  if (!v25 || (v20 != v24 || v25 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1002A3CA0();
  }

  swift_getKeyPath();
  v111 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(a1 + 72);
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v27 = type metadata accessor for Locale();
  v28 = *(*(v27 - 8) + 56);
  v28(v12, 0, 1, v27);
  v29 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
  v30 = v110;
  swift_beginAccess();
  sub_10028C60C(v12, &v30[v29]);
  swift_endAccess();
  v106 = v26;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v28(v12, 0, 1, v27);
  v31 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale;
  swift_beginAccess();
  sub_10028C60C(v12, &v30[v31]);
  swift_endAccess();
  *&v30[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate + 8] = &off_10038C360;
  swift_unknownObjectWeakAssign();
  v32 = v107;
  (*(v107 + 104))(v9, enum case for DisambiguationResultModel.TextLocation.target(_:), v6);
  v33 = dispatch thunk of DisambiguationResultModel.rangeOfFirstWordForDictionary(inLocation:)();
  v35 = v34;
  (*(v32 + 8))(v9, v6);
  v36 = dispatch thunk of DisambiguationResultModel.targetAttributedText.getter();
  v37 = [v36 attributedSubstringFromRange:{v33, v35}];

  v38 = [v37 string];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  sub_100046394(v33, v35, 0);
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000078E8(v42, qword_1003D27A0);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Not moving popover after setting new word because there's no UITextView to get the location from", v45, 2u);
  }

  v46 = v109;
  sub_1002AE778(v39, v41, v109);

  v47 = objc_allocWithZone(UINavigationController);
  v48 = [v47 initWithRootViewController:v110];
  [v48 setModalPresentationStyle:7];
  v49 = [v48 presentationController];
  if (v49)
  {
    v50 = v49;
    [v49 setDelegate:v46];
  }

  v51 = sub_1002AE8B4(a1);
  if (!v51)
  {

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Failed to find cell for viewModel that will get Dictionary Mode, so can't display popover", v96, 2u);
    }

    v97 = v105;
    v98 = v105[1];
    *v105 = 0;
    v97[1] = 0;
    if (v98)
    {
      sub_1002A3CA0();
    }

    else
    {
    }

    return;
  }

  v52 = v51;
  v53 = &v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect];
  if ((v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect + 32] & 1) != 0 || (v54 = *&v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView]) == 0)
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Presenting dictionary but don't yet have source rect or text view; presenting from the bottom middle of the card, and it should reposition soon when the source rect comes in", v75, 2u);
    }

    v59 = [v52 contentView];
    [v59 frame];
    x = v113.origin.x;
    y = v113.origin.y;
    width = v113.size.width;
    height = v113.size.height;
    MidX = CGRectGetMidX(v113);
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    MaxY = CGRectGetMaxY(v114);
    v82 = CGSizeZero.height;
    v83 = [v48 popoverPresentationController];
    if (v83)
    {
      v84 = v83;
      [v83 setSourceView:v59];
    }

    v85 = [v48 popoverPresentationController];
    [v85 setSourceRect:{MidX, MaxY, CGSizeZero.width, v82}];

    v86 = [v48 popoverPresentationController];
    if (!v86)
    {
      goto LABEL_38;
    }

    v64 = v86;
    [v86 setPermittedArrowDirections:1];
  }

  else
  {
    v56 = v53[2];
    v55 = v53[3];
    v58 = *v53;
    v57 = v53[1];
    v59 = v54;
    v60 = [v48 popoverPresentationController];
    if (v60)
    {
      v61 = v60;
      [v60 setSourceView:v59];
    }

    v62 = [v48 popoverPresentationController];
    [v62 setSourceRect:{v58, v57, v56, v55}];

    v63 = [v48 popoverPresentationController];
    if (!v63)
    {
      goto LABEL_38;
    }

    v64 = v63;
    [v63 setPermittedArrowDirections:3];
  }

LABEL_38:
  v87 = [v48 popoverPresentationController];
  if (v87)
  {
    v88 = v87;
    sub_100005AD4(&unk_1003AFCC0);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1002D95A0;
    v90 = *&v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
    if (!v90)
    {
      __break(1u);
      return;
    }

    v91 = v89;
    v92 = v90;

    *(v91 + 32) = v92;
    sub_10000A2CC(0, &qword_1003AFCF0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v88 setPassthroughViews:isa];
  }

  else
  {
  }

  v99 = [v48 popoverPresentationController];

  if (v99)
  {
    v100 = [v99 adaptiveSheetPresentationController];

    if (v100)
    {
      [v100 setDelegate:v46];
      [v100 _setShouldDismissWhenTappedOutside:0];
      sub_100005AD4(&unk_1003AFCC0);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1002D5560;
      v102 = objc_opt_self();
      *(v101 + 32) = [v102 mediumDetent];
      *(v101 + 40) = [v102 largeDetent];
      sub_10000A2CC(0, &qword_1003AFCE8);
      v103 = Array._bridgeToObjectiveC()().super.isa;

      [v100 setDetents:v103];

      [v100 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierMedium];
      [v100 setPrefersGrabberVisible:1];
    }
  }

  [v46 presentViewController:v48 animated:1 completion:0];
}

uint64_t sub_1002ABCFC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  v4 = v3 != 0;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  swift_bridgeObjectRetain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = [*(a1 + 72) identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v5 == v7 && v3 == v9)
  {

    swift_bridgeObjectRelease_n();
LABEL_9:
    v11 = 1;
    if ((*(a1 + 241) & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = (a1 + 241);
    goto LABEL_13;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  swift_bridgeObjectRelease_n();
  if ((v11 & 1) != *(a1 + 241))
  {
    v4 = v11;
LABEL_11:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_14;
  }

  v12 = (a1 + 241);
  v4 = v11;
LABEL_13:
  *v12 = v11 & 1;
LABEL_14:
  v14 = *(a1 + 194);
  if (v4 == v14)
  {
    *(a1 + 194) = v4;
    return sub_1000458A4(v14);
  }

  else
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1002AC034()
{
  v1 = v0;
  v2 = [v0 viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {

    Notification.object.getter();
    if (!v160)
    {
      sub_100009EBC(&aBlock, &unk_1003AB9C0);
      return;
    }

    sub_10000A2CC(0, &unk_1003BC430);
    if (swift_dynamicCast())
    {
      v4 = v167;
      v5 = [v1 view];
      if (!v5)
      {
        __break(1u);
        goto LABEL_95;
      }

      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        v8 = [v7 screen];

        aBlock = v8;
        v9 = _bridgeAnythingToObjectiveC<A>(_:)();
      }

      else
      {
        v9 = 0;
      }

      v10 = [v167 isEqual:v9];
      swift_unknownObjectRelease();
      if (!v10 || (v11 = Notification.userInfo.getter()) == 0)
      {

        return;
      }

      v12 = v11;
      *&v163 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
      v164 = v13;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v14 = sub_10028DF68(&aBlock);
        if (v15)
        {
          sub_10000A37C(*(v12 + 56) + 32 * v14, &v167);
          sub_100078028(&aBlock);
          type metadata accessor for CGRect(0);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_16:

            return;
          }

          v16 = *&v163;
          v17 = v164;
          v18 = v165;
          v19 = v166;
          v20 = [v1 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 keyboardLayoutGuide];

            [v22 layoutFrame];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;

            v31 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame];
            v176.origin.x = v24;
            v176.origin.y = v26;
            v176.size.width = v28;
            v176.size.height = v30;
            if (CGRectEqualToRect(*&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame], v176))
            {
              goto LABEL_16;
            }

            *v31 = v24;
            v31[1] = v26;
            v31[2] = v28;
            v31[3] = v30;
            v32 = Notification.userInfo.getter();
            if (v32)
            {
              v33 = v32;
              *&v163 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
              v164 = v34;
              AnyHashable.init<A>(_:)();
              if (*(v33 + 16))
              {
                v35 = sub_10028DF68(&aBlock);
                if (v36)
                {
                  sub_10000A37C(*(v33 + 56) + 32 * v35, &v167);
                  sub_100078028(&aBlock);

                  if (*(&v168 + 1))
                  {
                    sub_10000A2CC(0, &qword_1003AED20);
                    if (swift_dynamicCast())
                    {
                      v37 = aBlock;
                      [aBlock doubleValue];
                      v149 = v38;

                      goto LABEL_30;
                    }

LABEL_29:
                    v149 = 0.0;
LABEL_30:
                    v39 = Notification.userInfo.getter();
                    v154 = v24;
                    v153 = v26;
                    v152 = v28;
                    if (v39)
                    {
                      v40 = v39;
                      *&v163 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
                      v164 = v41;
                      AnyHashable.init<A>(_:)();
                      if (*(v40 + 16))
                      {
                        v42 = sub_10028DF68(&aBlock);
                        if (v43)
                        {
                          sub_10000A37C(*(v40 + 56) + 32 * v42, &v167);
                          sub_100078028(&aBlock);

                          if (*(&v168 + 1))
                          {
                            sub_10000A2CC(0, &qword_1003AED20);
                            if (swift_dynamicCast())
                            {
                              v44 = aBlock;
                              v45 = [aBlock unsignedIntegerValue];

                              v46 = (v45 << 16) | 2;
                              goto LABEL_40;
                            }

LABEL_39:
                            v46 = 2;
LABEL_40:
                            v150 = v30;
                            v47 = [v4 coordinateSpace];
                            v48 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
                            v49 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
                            if (v49)
                            {
                              v50 = v47;
                              v147 = v49;
                              [v50 convertRect:v16 toCoordinateSpace:{v17, v18, v19}];
                              v55 = *&v1[v48];
                              if (v55)
                              {
                                v56 = v16;
                                v57 = v51;
                                v58 = v52;
                                v59 = v19;
                                v60 = v18;
                                v61 = v17;
                                v62 = v53;
                                v63 = v54;
                                [v55 bounds];
                                v177.origin.x = v57;
                                v177.origin.y = v58;
                                v177.size.width = v62;
                                v177.size.height = v63;
                                v170 = CGRectIntersection(v169, v177);
                                x = v170.origin.x;
                                y = v170.origin.y;
                                width = v170.size.width;
                                height = v170.size.height;
                                [v4 bounds];
                                v178.origin.x = v56;
                                v178.origin.y = v61;
                                v178.size.width = v60;
                                v178.size.height = v59;
                                v172 = CGRectIntersection(v171, v178);
                                IsEmpty = CGRectIsEmpty(v172);
                                v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible] = !IsEmpty;
                                v67 = [v1 parentViewController];
                                v148 = v46;
                                if (v67)
                                {
                                  v68 = v67;
                                  v69 = [v67 navigationController];

                                  v70 = v150;
                                  if (v69)
                                  {
                                    v71 = [v69 navigationBar];

                                    v72 = sub_1002C21EC();
                                  }

                                  else
                                  {
                                    v72 = 0;
                                  }
                                }

                                else
                                {
                                  v72 = 0;
                                  v70 = v150;
                                }

                                v73 = [v1 parentViewController];
                                v74 = 0.0;
                                if (v73)
                                {
                                  v75 = v73;
                                  v76 = [v73 navigationController];

                                  if (v76)
                                  {
                                    v77 = [v76 navigationBar];

                                    sub_1002C23E4();
                                    v74 = v78;
                                  }
                                }

                                if (qword_1003A9290 != -1)
                                {
                                  swift_once();
                                }

                                v79 = type metadata accessor for Logger();
                                sub_1000078E8(v79, qword_1003D28C0);
                                v80 = Logger.logObject.getter();
                                v81 = static os_log_type_t.debug.getter();
                                if (os_log_type_enabled(v80, v81))
                                {
                                  v82 = swift_slowAlloc();
                                  *v82 = 67109376;
                                  *(v82 + 4) = v72 & 1;
                                  *(v82 + 8) = 2048;
                                  *(v82 + 10) = v74;
                                  _os_log_impl(&_mh_execute_header, v80, v81, "Nav title is large? : %{BOOL}d with height: %f", v82, 0x12u);
                                }

                                v151 = v74;

                                v173.origin.x = v154;
                                v173.origin.y = v153;
                                v173.size.width = v152;
                                v173.size.height = v70;
                                v83 = CGRectGetHeight(v173);
                                v84 = x;
                                v174.origin.x = x;
                                v85 = y;
                                v174.origin.y = y;
                                v86 = width;
                                v174.size.width = width;
                                v174.size.height = height;
                                v87 = CGRectGetHeight(v174);
                                if (v83 > v87)
                                {
                                  v88 = v83;
                                }

                                else
                                {
                                  v88 = v87;
                                }

                                v89 = [v1 view];
                                if (v89)
                                {
                                  v90 = v89;
                                  [v89 bounds];
                                  v92 = v91;
                                  v94 = v93;
                                  v96 = v95;
                                  v98 = v97;

                                  v175.origin.x = v92;
                                  v175.origin.y = v94;
                                  v175.size.width = v96;
                                  v175.size.height = v98;
                                  v99 = CGRectGetHeight(v175);
                                  v100 = [v1 view];
                                  if (v100)
                                  {
                                    v101 = v100;
                                    [v100 safeAreaInsets];
                                    v103 = v102;

                                    v104 = [v1 view];
                                    if (v104)
                                    {
                                      v105 = v104;
                                      v106 = v99 - v103;
                                      [v104 safeAreaInsets];
                                      v108 = v107;

                                      v109 = v106 - v108 - v88;
                                      v110 = Logger.logObject.getter();
                                      v111 = static os_log_type_t.debug.getter();
                                      v112 = v86;
                                      if (os_log_type_enabled(v110, v111))
                                      {
                                        v113 = swift_slowAlloc();
                                        *v113 = 134217984;
                                        *(v113 + 4) = v109;
                                        _os_log_impl(&_mh_execute_header, v110, v111, "Initial available height: %f", v113, 0xCu);
                                      }

                                      if (v72)
                                      {
                                        v109 = v151 + v109;
                                        v114 = Logger.logObject.getter();
                                        v115 = static os_log_type_t.debug.getter();
                                        if (os_log_type_enabled(v114, v115))
                                        {
                                          v116 = swift_slowAlloc();
                                          *v116 = 134218240;
                                          *(v116 + 4) = v151;
                                          *(v116 + 12) = 2048;
                                          *(v116 + 14) = v109;
                                          _os_log_impl(&_mh_execute_header, v114, v115, "Accounting for large title (+%f): %f", v116, 0x16u);
                                        }
                                      }

                                      v117 = IsEmpty;
                                      v118 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
                                      if (v118 >> 62)
                                      {
                                        if (!_CocoaArrayWrapper.endIndex.getter())
                                        {
                                          goto LABEL_71;
                                        }
                                      }

                                      else if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                      {
                                        goto LABEL_71;
                                      }

                                      v109 = v109 + -36.0;
                                      v119 = Logger.logObject.getter();
                                      v120 = static os_log_type_t.debug.getter();
                                      if (os_log_type_enabled(v119, v120))
                                      {
                                        v121 = swift_slowAlloc();
                                        *v121 = 134218240;
                                        *(v121 + 4) = 0x4042000000000000;
                                        *(v121 + 12) = 2048;
                                        *(v121 + 14) = v109;
                                        _os_log_impl(&_mh_execute_header, v119, v120, "Subtracting to show hint of prior cards (-%f): %f", v121, 0x16u);
                                      }

LABEL_71:
                                      v122 = [v1 parentViewController];
                                      if (v122)
                                      {
                                        v123 = v122;
                                        v124 = [v122 navigationItem];

                                        v125 = [objc_opt_self() currentTraitCollection];
                                        v126 = [v125 horizontalSizeClass];

                                        v127 = 2;
                                        if (IsEmpty)
                                        {
                                          v127 = 0;
                                        }

                                        if (v126 == 2)
                                        {
                                          v128 = 2;
                                        }

                                        else
                                        {
                                          v128 = v127;
                                        }

                                        [v124 setLargeTitleDisplayMode:v128];
                                      }

                                      v129 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
                                      if (IsEmpty)
                                      {
                                        v130 = 280.0;
                                      }

                                      else
                                      {
                                        v130 = v109 + 8.0;
                                      }

                                      v131 = *(*&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
                                      swift_getKeyPath();
                                      aBlock = v131;
                                      sub_1002B2220(&qword_1003AC930, type metadata accessor for CardMetrics);

                                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                                      v132 = v131[2];

                                      if (v132 != v130)
                                      {
                                        v133 = Logger.logObject.getter();
                                        v134 = static os_log_type_t.debug.getter();
                                        if (os_log_type_enabled(v133, v134))
                                        {
                                          v135 = swift_slowAlloc();
                                          *v135 = 134217984;
                                          *(v135 + 4) = v130;
                                          _os_log_impl(&_mh_execute_header, v133, v134, "Setting height: %f", v135, 0xCu);
                                        }

                                        v136 = *(*&v1[v129] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
                                        if (v136[2] == v130)
                                        {
                                          v136[2] = v130;
                                        }

                                        else
                                        {
                                          KeyPath = swift_getKeyPath();
                                          __chkstk_darwin(KeyPath);
                                          aBlock = v136;

                                          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                                        }

                                        v117 = IsEmpty;
                                      }

                                      if (!v117)
                                      {
                                        v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard] = 1;
                                      }

                                      v138 = [v1 view];
                                      if (v138)
                                      {
                                        v139 = v138;

                                        [v139 setNeedsLayout];

                                        v140 = objc_opt_self();
                                        v141 = swift_allocObject();
                                        *(v141 + 16) = v1;
                                        *(v141 + 24) = !IsEmpty;
                                        *(v141 + 32) = v84;
                                        *(v141 + 40) = v85;
                                        *(v141 + 48) = v112;
                                        *(v141 + 56) = height;
                                        v161 = sub_1002B22C0;
                                        v162 = v141;
                                        aBlock = _NSConcreteStackBlock;
                                        v158 = 1107296256;
                                        v159 = sub_100096948;
                                        v160 = &unk_10038C618;
                                        v142 = _Block_copy(&aBlock);
                                        v143 = v1;

                                        v144 = swift_allocObject();
                                        *(v144 + 16) = v143;
                                        v161 = sub_1002B22D4;
                                        v162 = v144;
                                        aBlock = _NSConcreteStackBlock;
                                        v158 = 1107296256;
                                        v159 = sub_1001D1870;
                                        v160 = &unk_10038C668;
                                        v145 = _Block_copy(&aBlock);
                                        v146 = v143;

                                        [v140 animateWithDuration:v148 delay:v142 options:v145 animations:v149 completion:0.0];
                                        _Block_release(v145);
                                        _Block_release(v142);

                                        swift_unknownObjectRelease();
                                        return;
                                      }

                                      goto LABEL_101;
                                    }

LABEL_100:
                                    __break(1u);
LABEL_101:
                                    __break(1u);
                                    return;
                                  }

LABEL_99:
                                  __break(1u);
                                  goto LABEL_100;
                                }

LABEL_98:
                                __break(1u);
                                goto LABEL_99;
                              }

LABEL_97:
                              __break(1u);
                              goto LABEL_98;
                            }

LABEL_96:
                            __break(1u);
                            goto LABEL_97;
                          }

LABEL_38:
                          sub_100009EBC(&v167, &unk_1003AB9C0);
                          goto LABEL_39;
                        }
                      }

                      sub_100078028(&aBlock);
                    }

                    v167 = 0u;
                    v168 = 0u;
                    goto LABEL_38;
                  }

LABEL_28:
                  sub_100009EBC(&v167, &unk_1003AB9C0);
                  goto LABEL_29;
                }
              }

              sub_100078028(&aBlock);
            }

            v167 = 0u;
            v168 = 0u;
            goto LABEL_28;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }
      }

      sub_100078028(&aBlock);
    }
  }
}

void *sub_1002AD06C(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
  result = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (result)
  {
    [result safeAreaInsets];
    if ((a2 & 1) == 0)
    {
      sub_1002AD7A4(0, 0);
      return sub_1002A6BD8(0);
    }

    result = *(a1 + v7);
    if (result)
    {
      [result safeAreaInsets];
      sub_1002AD208(0, 0, a6 - v11);
      return sub_1002A6BD8(0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002AD104(char a1, uint64_t a2)
{
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D28C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "<<<<< End animation with %{BOOL}d", v7, 8u);
  }

  *(a2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard) = 0;
}

void sub_1002AD208(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  if (a3 == 0.0)
  {
    v6 = a2 & 1;

    sub_1002AD7A4(a1, v6);
    return;
  }

  v8 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_10028E05C(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      if (v12 == a3)
      {
        if (qword_1003A9290 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1000078E8(v13, qword_1003D28C0);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v42[0] = v17;
          *v16 = 136446466;
          if (a1)
          {
            if (a1 == 1)
            {
              v18 = 0x616E6F6974636964;
            }

            else
            {
              v18 = 0x6F68706F7263696DLL;
            }

            if (a1 == 1)
            {
              v19 = 0xEA00000000007972;
            }

            else
            {
              v19 = 0xEA0000000000656ELL;
            }
          }

          else
          {
            v18 = 0x6472616F6279656BLL;
            v19 = 0xE800000000000000;
          }

          v39 = sub_10028D78C(v18, v19, v42);

          *(v16 + 4) = v39;
          *(v16 + 12) = 2050;
          *(v16 + 14) = a3;
          _os_log_impl(&_mh_execute_header, v14, v15, "Not changing bottom inset for reason %{public}s because the height %{public}f is already being used", v16, 0x16u);
          sub_100008664(v17);
        }

        return;
      }
    }

    else
    {
    }
  }

  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000078E8(v20, qword_1003D28C0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v42[0] = v24;
    *v23 = 136446466;
    if (a1)
    {
      if (a1 == 1)
      {
        v25 = 0x616E6F6974636964;
      }

      else
      {
        v25 = 0x6F68706F7263696DLL;
      }

      if (a1 == 1)
      {
        v26 = 0xEA00000000007972;
      }

      else
      {
        v26 = 0xEA0000000000656ELL;
      }
    }

    else
    {
      v25 = 0x6472616F6279656BLL;
      v26 = 0xE800000000000000;
    }

    v27 = sub_10028D78C(v25, v26, v42);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2050;
    *(v23 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v21, v22, "Adding bottom inset reason to %{public}s with height %{public}f", v23, 0x16u);
    sub_100008664(v24);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_100291EE8(a1, isUniquelyReferenced_nonNull_native, a3);
  *(v4 + v8) = v41;
  swift_endAccess();

  v30 = COERCE_DOUBLE(sub_1002ADB40(v29));
  v32 = v31;

  if (v32)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v30;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Setting bottom inset to %{public}f", v36, 0xCu);
  }

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v33;
  if (a2)
  {
    sub_10000A2CC(0, &qword_1003AFCF0);
    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  }

  else
  {

    sub_1002ADC50();
  }
}

uint64_t sub_1002AD7A4(unsigned __int8 a1, char a2)
{
  v3 = v2;
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D28C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v9 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x616E6F6974636964;
      }

      else
      {
        v11 = 0x6F68706F7263696DLL;
      }

      if (a1 == 1)
      {
        v12 = 0xEA00000000007972;
      }

      else
      {
        v12 = 0xEA0000000000656ELL;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      v11 = 0x6472616F6279656BLL;
    }

    v13 = sub_10028D78C(v11, v12, v28);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Removing bottom inset reason %{public}s", v9, 0xCu);
    sub_100008664(v10);
  }

  v14 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  result = swift_beginAccess();
  if (*(*(v3 + v14) + 16))
  {

    sub_10028E05C(a1);
    v17 = v16;

    if (v17)
    {
      swift_beginAccess();
      sub_1002B1A60(a1);
      swift_endAccess();

      v19 = COERCE_DOUBLE(sub_1002ADB40(v18));
      v21 = v20;

      if (v21)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134349056;
        *(v25 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Setting bottom inset to %{public}f", v25, 0xCu);
      }

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v22;
      if (a2)
      {
        sub_10000A2CC(0, &qword_1003AFCF0);
        static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
      }

      else
      {

        sub_1002ADC50();
      }
    }
  }

  return result;
}

uint64_t sub_1002ADB40(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

void sub_1002ADC50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
    v2 = Strong;
    v3 = v1;

    if (!v1)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v3 contentInset];
    [v3 setContentInset:?];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    return;
  }

  v5 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  v6 = v4;
  v7 = v5;

  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v7 verticalScrollIndicatorInsets];
  [v7 setVerticalScrollIndicatorInsets:?];
}

id sub_1002ADD68(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8))
  {
    return 0;
  }

  if (qword_1003A91F0 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  v3 = a1;
  if (byte_1003D26A0)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;

    v6 = 0;
    v7 = sub_1002B29F0;
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v22._object = 0x80000001002F4780;
    v9._countAndFlagsBits = 0x4554454C4544;
    v9._object = 0xE600000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0xD000000000000013;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v22);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v11;
    *(v5 + 24) = v3;

    v6 = String._bridgeToObjectiveC()();

    v7 = sub_1002B2118;
  }

  aBlock[4] = v7;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A34F8;
  aBlock[3] = &unk_10038C528;
  v12 = _Block_copy(aBlock);
  v13 = [objc_opt_self() contextualActionWithStyle:1 title:v6 handler:v12];

  _Block_release(v12);

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() _systemImageNamed:v14];

  [v13 setImage:v15];
  sub_100005AD4(&unk_1003AFCC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002D95A0;
  *(v16 + 32) = v13;
  sub_10000A2CC(0, &qword_1003AB960);
  v17 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() configurationWithActions:isa];

  [v19 _setSwipeActionsStyle:3];
  return v19;
}

void sub_1002AE118(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100005AD4(&unk_1003BC420);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = a4;
    v40 = Strong;
    if (qword_1003A9228 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2788);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v37 = v10;
    v38 = v9;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v36 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136446210;
      swift_getKeyPath();
      v41 = a6;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = [*(a6 + 72) identifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_10028D78C(v22, v24, &v42);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "User deleted card item %{public}s via swipe action", v19, 0xCu);
      sub_100008664(v20);

      a3 = v36;
    }

    v26 = v40;
    v27 = *&v40[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource];
    if (v27)
    {
      LOBYTE(v42) = 0;
      v28 = v27;
      UICollectionViewDiffableDataSource.snapshot(for:)();
      sub_100005AD4(&unk_1003BA780);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1002D3160;
      swift_getKeyPath();
      v42 = a6;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = [*(a6 + 72) identifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      v34 = v38;
      NSDiffableDataSourceSectionSnapshot.delete(_:)(v29);

      LOBYTE(v42) = 0;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      v26 = v40;
      (*(v37 + 8))(v12, v34);
    }

    (a3)(1);
    swift_getKeyPath();
    v42 = a6;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = *(a6 + 72);
    sub_1002B2B48(v35);
  }

  else
  {
    a3();
  }
}

id sub_1002AE638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslationListController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002AE778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController);
    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
      *v4 = a1;
      *(v4 + 1) = a2;

      oslog = v3;

      sub_1000E0A1C();
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000078E8(v5, qword_1003D27A0);
      oslog = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v6, "Got new word to define but don't have a dictionaryController to update the definition", v7, 2u);
      }
    }
  }
}

uint64_t sub_1002AE8B4(uint64_t a1)
{
  v3 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (!v10)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_7;
  }

  v22 = v1;
  swift_getKeyPath();
  v23 = a1;
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
  v11 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = [*(a1 + 72) identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v23 = v13;
  v24 = v15;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_7:
    sub_100009EBC(v5, &unk_1003AB970);
    return 0;
  }

  result = (*(v7 + 32))(v9, v5, v6);
  v17 = *(v22 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (!v17)
  {
    __break(1u);
    return result;
  }

  v18 = v17;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 cellForItemAtIndexPath:isa];

  (*(v7 + 8))(v9, v6);
  result = v20;
  if (!v20)
  {
    return 0;
  }

  return result;
}

void sub_1002AEB94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController;
      v5 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController];
      if (v5)
      {
        type metadata accessor for DictionaryViewController();
        v6 = v3;
        v7 = v5;
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          v9 = *&v1[v4];
          *&v1[v4] = 0;
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    if (*&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController])
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000078E8(v10, qword_1003D27A0);
      v9 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v9, v11))
      {
        goto LABEL_17;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000078E8(v14, qword_1003D27A0);
      v9 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v9, v11))
      {
        goto LABEL_17;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
    }

    _os_log_impl(&_mh_execute_header, v9, v11, v13, v12, 2u);

LABEL_17:
  }
}

uint64_t sub_1002AEDC8(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_100005AD4(&unk_1003AB970);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = __chkstk_darwin(v10);
  result = __chkstk_darwin(v11);
  if (a2 == 2)
  {
    v17 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
    if (v17)
    {
      v48 = v16;
      v49 = v15;
      v52 = a3;
      v53 = v9;
      v50 = a1;
      v51 = &v48 - v13;
      v56 = result;
      v59 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v60 = v17;
      v18 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
      v54 = v14;
      if (v18 >> 62)
      {
LABEL_33:
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = v3;

      if (v19)
      {
        v20 = 0;
        v57 = v18 & 0xFFFFFFFFFFFFFF8;
        v58 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v58)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          else
          {
            if (v20 >= *(v57 + 16))
            {
              __break(1u);
              goto LABEL_33;
            }

            v21 = *(v18 + 8 * v20 + 32);

            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_19;
            }
          }

          swift_getKeyPath();
          aBlock = v21;
          sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v23 = [*(v21 + 72) identifier];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v3 = v25;

          if (v24 == v59 && v60 == v3)
          {

            goto LABEL_23;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            break;
          }

          ++v20;
          if (v22 == v19)
          {
            goto LABEL_20;
          }
        }

LABEL_23:

        v29 = v54;
        v28 = v55;
        v30 = *&v55[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource];
        if (!v30)
        {

          v37 = v53;
          (*(v29 + 56))(v53, 1, 1, v56);
          return sub_100009EBC(v37, &unk_1003AB970);
        }

        swift_getKeyPath();
        aBlock = v21;
        v31 = v30;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v32 = [*(v21 + 72) identifier];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        aBlock = v33;
        v62 = v35;
        v36 = v53;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        v37 = v36;

        if ((*(v29 + 48))(v36, 1, v56) == 1)
        {

          return sub_100009EBC(v37, &unk_1003AB970);
        }

        v38 = *(v29 + 32);
        v39 = v51;
        v38(v51, v36, v56);
        if (v52)
        {
          v40 = v49;
          (*(v29 + 16))(v49, v39, v56);
          v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          v42 = swift_allocObject();
          v43 = v50;
          *(v42 + 16) = v50;
          *(v42 + 24) = v28;
          v44 = v56;
          v38((v42 + v41), v40, v56);
          v65 = sub_1002B20A0;
          v66 = v42;
          aBlock = _NSConcreteStackBlock;
          v62 = 1107296256;
          v63 = sub_1002A39AC;
          v64 = &unk_10038C4D8;
          v45 = _Block_copy(&aBlock);
          v46 = v43;
          v47 = v55;

          [v52 animateAlongsideTransition:v45 completion:0];
          _Block_release(v45);

          return (*(v29 + 8))(v39, v44);
        }

        else
        {
          (*(v29 + 8))(v39, v56);
        }
      }

      else
      {
LABEL_20:
      }
    }
  }

  return result;
}

void sub_1002AF39C(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a2;
    v8 = [v6 adaptiveSheetPresentationController];
    [v8 frameOfPresentedViewInContainerView];
    Height = CGRectGetHeight(v18);
    v10 = *(a3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
    if (!v10)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v11 = Height;
    [v10 safeAreaInsets];
    v13 = v11 - v12;
    if (v11 - v12 <= 0.0)
    {
      v13 = 0.0;
    }

    sub_1002AD208(1u, 0, v13);
  }

  v14 = *(a3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v15 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
}

id sub_1002AF560(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  *v3 = 0;
  v3[1] = 0;
  if (v4)
  {
    sub_1002A3CA0();
  }

  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D27A0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Force dismissing dictionary controller due to user pressing close button", v8, 2u);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1002AF6EC(void *a1)
{
  v2 = [a1 presentingViewController];
  v3 = [v2 transitionCoordinator];

  if (v3)
  {
    v4 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (*(v5 + 16))
    {

      v6 = sub_10028E05C(1u);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 8 * v6);
      }

      else
      {
        v8 = 0;
      }

      v10 = v7 ^ 1;
    }

    else
    {
      v8 = 0;
      v10 = 1;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v21 = sub_1002B1F1C;
    v22 = v11;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1002A39AC;
    v20 = &unk_10038C438;
    v12 = _Block_copy(&aBlock);
    v13 = v1;

    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10 & 1;
    *(v14 + 32) = v13;
    v21 = sub_1002B1F80;
    v22 = v14;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1002A39AC;
    v20 = &unk_10038C488;
    v15 = _Block_copy(&aBlock);
    v16 = v13;

    [v3 animateAlongsideTransition:v12 completion:v15];
    _Block_release(v15);
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1002AD7A4(1u, 1);
  }
}

unint64_t sub_1002AF9E4()
{
  result = qword_1003BC410;
  if (!qword_1003BC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC410);
  }

  return result;
}

unint64_t sub_1002AFA3C()
{
  result = qword_1003BC418;
  if (!qword_1003BC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC418);
  }

  return result;
}

uint64_t sub_1002AFA90(uint64_t a1, void *a2)
{
  v48 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v49[0];
  v50 = &_swiftEmptyArrayStorage;
  if (v49[0] >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v45 = 0;
    v47 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v47)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v2;
      v10 = [v6 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v49[0] = v11;
      v49[1] = v13;
      __chkstk_darwin(v14);
      v37[2] = v49;
      v15 = v45;
      LOBYTE(v10) = sub_1000B74D0(sub_1001CC138, v37, v48);
      v45 = v15;

      if (v10)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v2 = v9;
      ++v4;
      if (v8 == i)
      {
        v16 = v50;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v45 = 0;
  v16 = &_swiftEmptyArrayStorage;
LABEL_18:

  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v17 = *(v16 + 16);
  if (v17)
  {
LABEL_21:
    v18 = 0;
    v41 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
    v42 = v16 & 0xC000000000000001;
    v38 = v16 + 32;
    v39 = v17;
    v40 = v16;
    while (1)
    {
      if (v42)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_50;
        }

        v19 = *(v38 + 8 * v18);
      }

      v48 = v19;
      v20 = __OFADD__(v18, 1);
      v21 = v18 + 1;
      if (v20)
      {
        goto LABEL_49;
      }

      v22 = *(v43 + v41);
      v16 = v22 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v21;

      if (v16)
      {
        break;
      }

LABEL_22:

LABEL_23:
      v16 = v40;
      v18 = v44;
      if (v44 == v39)
      {
      }
    }

    v23 = 0;
    v46 = v22 & 0xFFFFFFFFFFFFFF8;
    v47 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v47)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v23 >= *(v46 + 16))
        {
          goto LABEL_48;
        }

        v24 = *(v22 + 8 * v23 + 32);

        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v17 = _CocoaArrayWrapper.endIndex.getter();
          if (!v17)
          {
          }

          goto LABEL_21;
        }
      }

      swift_getKeyPath();
      v49[0] = v24;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = [*(v24 + 72) identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = [v48 identifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v27 == v31 && v29 == v33)
      {

LABEL_45:

        v35 = v48;
        sub_1000476D0(v48, 0);

        goto LABEL_23;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_45;
      }

      ++v23;
      if (v25 == v16)
      {
        goto LABEL_22;
      }
    }
  }
}

double sub_1002AFF64@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002AFFE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B007C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B00F0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002C1270(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002B016C(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1002B016C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CommittedTranslationViewModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1002B07C8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1002B0270(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002B0270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100005AD4(&qword_1003B5130);
  v9 = __chkstk_darwin(v8 - 8);
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v50 - v11;
  v12 = type metadata accessor for Date();
  v13 = __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v63 = &v50 - v17;
  result = __chkstk_darwin(v16);
  v66 = &v50 - v20;
  v51 = a2;
  if (a3 != a2)
  {
    v62 = (v19 + 32);
    v65 = (v19 + 56);
    v21 = *a4;
    v55 = (v19 + 48);
    v56 = v12;
    v57 = v15;
    v58 = (v19 + 8);
    v60 = v21;
    v22 = v21 + 8 * a3 - 8;
    v23 = a1 - a3;
LABEL_5:
    v53 = v22;
    v54 = a3;
    v24 = *(v60 + 8 * a3);
    v52 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = *v26;
      swift_getKeyPath();
      v67 = v24;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = [*(v24 + 72) creationDate];
      v64 = v25;
      if (v28)
      {
        v29 = v63;
        v30 = v28;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = *v62;
        v32 = v59;
        (*v62)(v59, v29, v12);
        v33 = *v65;
        (*v65)(v32, 0, 1, v12);
        v31(v66, v32, v12);
      }

      else
      {
        v33 = *v65;
        v34 = v59;
        (*v65)(v59, 1, 1, v12);
        static Date.now.getter();
        if ((*v55)(v34, 1, v12) != 1)
        {
          sub_100009EBC(v34, &qword_1003B5130);
        }
      }

      swift_getKeyPath();
      v67 = v27;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = [*(v27 + 72) creationDate];
      if (v35)
      {
        v36 = v63;
        v37 = v35;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = v61;
        v39 = *v62;
        v40 = v36;
        v41 = v56;
        (*v62)(v61, v40, v56);
        v33(v38, 0, 1, v41);
        v42 = v57;
        v39(v57, v38, v41);
        v12 = v41;
      }

      else
      {
        v43 = v61;
        v12 = v56;
        v33(v61, 1, 1, v56);
        v42 = v57;
        static Date.now.getter();
        if ((*v55)(v43, 1, v12) != 1)
        {
          sub_100009EBC(v61, &qword_1003B5130);
        }
      }

      v44 = v66;
      v45 = static Date.< infix(_:_:)();
      v46 = *v58;
      (*v58)(v42, v12);
      v46(v44, v12);

      v47 = v64;
      if ((v45 & 1) == 0)
      {
LABEL_4:
        a3 = v54 + 1;
        v22 = v53 + 8;
        v23 = v52 - 1;
        if (v54 + 1 == v51)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v60)
      {
        break;
      }

      v48 = *v26;
      v24 = v26[1];
      *v26 = v24;
      v26[1] = v48;
      --v26;
      v49 = __CFADD__(v47, 1);
      v25 = v47 + 1;
      if (v49)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B07C8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = v6;
  v143 = a4;
  v144 = a1;
  v9 = sub_100005AD4(&qword_1003B5130);
  v10 = __chkstk_darwin(v9 - 8);
  v159 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v156 = &v138 - v13;
  v14 = __chkstk_darwin(v12);
  v150 = &v138 - v15;
  __chkstk_darwin(v14);
  v148 = &v138 - v16;
  v17 = type metadata accessor for Date();
  v18 = __chkstk_darwin(v17);
  v155 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v163 = &v138 - v21;
  v22 = __chkstk_darwin(v20);
  v147 = &v138 - v23;
  v24 = __chkstk_darwin(v22);
  v161 = &v138 - v25;
  result = __chkstk_darwin(v24);
  v151 = &v138 - v28;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_106:
    v4 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    v5 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    result = v5;
LABEL_109:
    v167 = result;
    v5 = *(result + 16);
    if (v5 >= 2)
    {
      while (*a3)
      {
        v134 = *(result + 16 * v5);
        v135 = result;
        v136 = *(result + 16 * (v5 - 1) + 40);
        sub_1002B16C8((*a3 + 8 * v134), (*a3 + 8 * *(result + 16 * (v5 - 1) + 32)), (*a3 + 8 * v136), v4);
        if (v7)
        {
        }

        if (v136 < v134)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_1002C08D4(v135);
        }

        if (v5 - 2 >= *(v135 + 2))
        {
          goto LABEL_135;
        }

        v137 = &v135[16 * v5];
        *v137 = v134;
        *(v137 + 1) = v136;
        v167 = v135;
        sub_1002C0848(v5 - 1);
        result = v167;
        v5 = *(v167 + 2);
        if (v5 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

  v30 = 0;
  v160 = (v27 + 32);
  v164 = (v27 + 56);
  v153 = (v27 + 48);
  v158 = (v27 + 8);
  v31 = _swiftEmptyArrayStorage;
  v139 = a3;
  v154 = v17;
  while (1)
  {
    if (v30 + 1 >= v29)
    {
      v42 = v30 + 1;
      v54 = v143;
    }

    else
    {
      v152 = v29;
      v142 = v31;
      v32 = *a3;
      v5 = *(*a3 + 8 * (v30 + 1));
      v166 = v5;
      v4 = *(v32 + 8 * v30);
      v165 = v4;

      LODWORD(v149) = sub_1002A986C(&v166, &v165);
      if (v7)
      {
      }

      v141 = 0;

      v33 = v30 + 2;
      v140 = v30;
      v146 = 8 * v30;
      v34 = (v32 + 8 * v30 + 16);
      while (1)
      {
        v42 = v152;
        if (v152 == v33)
        {
          break;
        }

        v43 = *(v34 - 1);
        v44 = *v34;
        swift_getKeyPath();
        v166 = v44;
        sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v157 = v44;
        v45 = [*(v44 + 72) creationDate];
        if (v45)
        {
          v46 = v161;
          v47 = v45;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = *v160;
          v49 = v148;
          (*v160)(v148, v46, v17);
          v50 = *v164;
          (*v164)(v49, 0, 1, v17);
          v48(v151, v49, v17);
        }

        else
        {
          v50 = *v164;
          v51 = v148;
          (*v164)(v148, 1, 1, v17);
          static Date.now.getter();
          if ((*v153)(v51, 1, v17) != 1)
          {
            sub_100009EBC(v51, &qword_1003B5130);
          }
        }

        swift_getKeyPath();
        v166 = v43;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v162 = v43;
        v52 = [*(v43 + 72) creationDate];
        if (v52)
        {
          v35 = v161;
          v36 = v52;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = *v160;
          v38 = v150;
          (*v160)(v150, v35, v17);
          v50(v38, 0, 1, v17);
          v39 = v147;
          v37(v147, v38, v17);
        }

        else
        {
          v53 = v150;
          v50(v150, 1, 1, v17);
          v39 = v147;
          static Date.now.getter();
          if ((*v153)(v53, 1, v17) != 1)
          {
            sub_100009EBC(v150, &qword_1003B5130);
          }
        }

        v40 = v151;
        v5 = static Date.< infix(_:_:)();
        v4 = v158;
        v41 = *v158;
        (*v158)(v39, v17);
        v41(v40, v17);

        ++v33;
        ++v34;
        if ((v149 ^ v5))
        {
          v42 = v33 - 1;
          break;
        }
      }

      v7 = v141;
      a3 = v139;
      v54 = v143;
      v31 = v142;
      v30 = v140;
      v55 = v146;
      if (v149)
      {
        if (v42 < v140)
        {
          goto LABEL_140;
        }

        if (v140 < v42)
        {
          v56 = 8 * v42 - 8;
          v57 = v42;
          v58 = v140;
          do
          {
            if (v58 != --v57)
            {
              v59 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v60 = *(v59 + v55);
              *(v59 + v55) = *(v59 + v56);
              *(v59 + v56) = v60;
            }

            ++v58;
            v56 -= 8;
            v55 += 8;
          }

          while (v58 < v57);
        }
      }
    }

    v61 = a3[1];
    if (v42 < v61)
    {
      if (__OFSUB__(v42, v30))
      {
        goto LABEL_137;
      }

      if (v42 - v30 < v54)
      {
        v62 = v30 + v54;
        if (__OFADD__(v30, v54))
        {
          goto LABEL_138;
        }

        if (v62 >= v61)
        {
          v62 = a3[1];
        }

        if (v62 < v30)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          result = sub_1002C08D4(v5);
          goto LABEL_109;
        }

        if (v42 != v62)
        {
          break;
        }
      }
    }

    v63 = v42;
    if (v42 < v30)
    {
      goto LABEL_136;
    }

LABEL_36:
    v145 = v63;
    v64 = v31;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v31 = v64;
    }

    else
    {
      result = sub_10028C748(0, *(v64 + 2) + 1, 1, v64);
      v31 = result;
    }

    v66 = *(v31 + 2);
    v65 = *(v31 + 3);
    v5 = v66 + 1;
    v67 = v145;
    if (v66 >= v65 >> 1)
    {
      result = sub_10028C748((v65 > 1), v66 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v5;
    v68 = &v31[16 * v66];
    *(v68 + 4) = v30;
    *(v68 + 5) = v67;
    v4 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (v66)
    {
      while (1)
      {
        v69 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v70 = *(v31 + 4);
          v71 = *(v31 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_55:
          if (v73)
          {
            goto LABEL_125;
          }

          v86 = &v31[16 * v5];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_128;
          }

          v92 = &v31[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_132;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v96 = &v31[16 * v5];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_69:
        if (v91)
        {
          goto LABEL_127;
        }

        v99 = &v31[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_130;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_76:
        v107 = v69 - 1;
        if (v69 - 1 >= v5)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v108 = v31;
        v5 = *&v31[16 * v107 + 32];
        v109 = *&v31[16 * v69 + 40];
        sub_1002B16C8((*a3 + 8 * v5), (*a3 + 8 * *&v31[16 * v69 + 32]), (*a3 + 8 * v109), v4);
        if (v7)
        {
        }

        if (v109 < v5)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1002C08D4(v108);
        }

        if (v107 >= *(v108 + 2))
        {
          goto LABEL_122;
        }

        v110 = &v108[16 * v107];
        *(v110 + 4) = v5;
        *(v110 + 5) = v109;
        v167 = v108;
        result = sub_1002C0848(v69);
        v31 = v167;
        v5 = *(v167 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v31[16 * v5 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_123;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_124;
      }

      v81 = &v31[16 * v5];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_126;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_129;
      }

      if (v85 >= v77)
      {
        v103 = &v31[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_133;
        }

        if (v72 < v106)
        {
          v69 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v29 = a3[1];
    v30 = v145;
    if (v145 >= v29)
    {
      goto LABEL_106;
    }
  }

  v142 = v31;
  v141 = v7;
  v157 = *a3;
  v111 = (v157 + 8 * v42 - 8);
  v140 = v30;
  v112 = v30 - v42;
  v145 = v62;
LABEL_87:
  v152 = v42;
  v4 = *(v157 + 8 * v42);
  v146 = v112;
  v113 = v112;
  v149 = v111;
  while (1)
  {
    v162 = v113;
    v114 = *v111;
    swift_getKeyPath();
    v166 = v4;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v115 = [*(v4 + 72) creationDate];
    if (v115)
    {
      v116 = v161;
      v117 = v115;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = *v160;
      v119 = v156;
      (*v160)(v156, v116, v17);
      v120 = *v164;
      (*v164)(v119, 0, 1, v17);
      v118(v163, v119, v17);
    }

    else
    {
      v120 = *v164;
      v121 = v156;
      (*v164)(v156, 1, 1, v17);
      static Date.now.getter();
      if ((*v153)(v121, 1, v17) != 1)
      {
        sub_100009EBC(v121, &qword_1003B5130);
      }
    }

    swift_getKeyPath();
    v166 = v114;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v122 = [*(v114 + 72) creationDate];
    if (v122)
    {
      v123 = v161;
      v124 = v122;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v125 = v159;
      v126 = *v160;
      v17 = v154;
      (*v160)(v159, v123, v154);
      v120(v125, 0, 1, v17);
      v127 = v155;
      v126(v155, v125, v17);
    }

    else
    {
      v128 = v159;
      v17 = v154;
      v120(v159, 1, 1, v154);
      v127 = v155;
      static Date.now.getter();
      if ((*v153)(v128, 1, v17) != 1)
      {
        sub_100009EBC(v159, &qword_1003B5130);
      }
    }

    v129 = v163;
    v5 = static Date.< infix(_:_:)();
    v130 = *v158;
    (*v158)(v127, v17);
    v130(v129, v17);

    if ((v5 & 1) == 0)
    {
LABEL_86:
      v42 = v152 + 1;
      v111 = v149 + 1;
      v112 = v146 - 1;
      v63 = v145;
      if (v152 + 1 != v145)
      {
        goto LABEL_87;
      }

      v7 = v141;
      a3 = v139;
      v31 = v142;
      v30 = v140;
      if (v145 < v140)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    v131 = v162;
    if (!v157)
    {
      break;
    }

    v132 = *v111;
    v4 = v111[1];
    *v111 = v4;
    v111[1] = v132;
    --v111;
    v133 = __CFADD__(v131, 1);
    v113 = v131 + 1;
    if (v133)
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1002B16C8(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;

      v17 = sub_1002A986C(&v45, &v44);
      if (v4)
      {

        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;

    v29 = sub_1002A986C(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;

    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1002B1A60(unsigned __int8 a1)
{
  v2 = v1;
  v3 = sub_10028E05C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100290DB0();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1002B42C8(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1002B1AF4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10028DFF0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100290EFC();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 24 * v5);
  sub_1002B44CC(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1002B1CE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002B1D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1002B1D40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      swift_getKeyPath();
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(a1 + 72);
      swift_getKeyPath();
      v5 = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = [v5 isEqual:*(a2 + 72)];

      return v6;
    }

    return 0;
  }

  return !a2;
}

unint64_t sub_1002B1E90(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DEA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002B1EE4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002B1F48()
{

  return _swift_deallocObject(v0, 40);
}

void sub_1002B1F80(void *a1)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 16);
    if ([a1 isCancelled])
    {
      sub_1002AD208(1u, 1, v2);
    }
  }
}

uint64_t sub_1002B1FD4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1002B20A0(uint64_t a1)
{
  type metadata accessor for IndexPath();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_1002AF39C(a1, v3, v4);
}

uint64_t sub_1002B2120()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2160()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002B21B0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002B2288()
{

  return _swift_deallocObject(v0, 64);
}

unint64_t sub_1002B22FC()
{
  result = qword_1003BC448;
  if (!qword_1003BC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC448);
  }

  return result;
}

uint64_t sub_1002B2350()
{

  return _swift_deallocObject(v0, 27);
}

uint64_t sub_1002B23AC()
{
  v1 = sub_100005AD4(&qword_1003BC458);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_1002B24A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005AD4(&qword_1003BC458);
  v9 = *(v4 + 16);

  return sub_1002A8C9C(a1, a2, a3, a4, v9);
}

uint64_t sub_1002B2578()
{

  return _swift_deallocObject(v0, 32);
}

double sub_1002B25F0@<D0>(_OWORD *a1@<X8>)
{
  sub_10027A9FC();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1002B265C()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_observers) = v1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore) = _swiftEmptyArrayStorage;
  v2 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController) = 0;
  v3 = v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier);
  *v5 = 0xD000000000000018;
  v5[1] = 0x80000001002FD730;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard) = 0;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  *(v0 + v6) = sub_100292B54(_swiftEmptyArrayStorage);
  v7 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame);
  *v7 = 0u;
  v7[1] = 0u;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002B27E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B2830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1002B2884(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1002B28B8()
{
  result = qword_1003BC4D8;
  if (!qword_1003BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC4D8);
  }

  return result;
}

uint64_t sub_1002B2914()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2A3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B2AB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1002B2B48(void *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = [a1 favoriteDate];
  if (v7)
  {
    v8 = v7;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    sub_100009EBC(v6, &qword_1003B5130);
    v10 = String._bridgeToObjectiveC()();
    [a1 setSessionID:v10];

    sub_1000085CC((v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    dispatch thunk of TranslationStore.save()();
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_100009EBC(v6, &qword_1003B5130);
    sub_1000085CC((v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    dispatch thunk of TranslationStore.deleteBackground(_:completion:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v13 = static Published.subscript.modify();
  v15 = v14;
  v16 = sub_100289D30(v14, v12);

  if (*v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17 >= v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v16)
    {
LABEL_6:
      sub_1002B5490(v16, v17, &type metadata accessor for PersistedTranslation);
      v13(v19, 0);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1002B2E1C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_observations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    sub_100293148(*(v4 + 56) + 16 * v15, v25);
    v26 = v16;
    sub_1000DC2EC(v25, v27);
LABEL_17:
    sub_1002B5860(&v26, &v28);
    if (!v29[0] && v29[1] == 1)
    {
    }

    v17 = v28;
    sub_1000DC2EC(v29, v25);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002AFA90(v2, a1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v18 = sub_10028DFAC(v17);
      if (v19)
      {
        v20 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v2 + v3);
        *(v2 + v3) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100290C20();
        }

        sub_1000DC2EC(*(v22 + 56) + 16 * v20, &v24);
        sub_1002B3F88(v20, v22);
        *(v2 + v3) = v22;
      }

      else
      {
        v24 = xmmword_1002D32F0;
      }

      sub_100009EBC(&v24, &qword_1003AFB10);
      swift_endAccess();
    }

    result = sub_1002B58D0(v25);
  }

  if (v8 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v7 = 0;
      v26 = 0;
      v27[0] = 0;
      v10 = v13;
      v27[1] = 1;
      goto LABEL_17;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1002B3078()
{
  sub_1000085CC((v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = dispatch thunk of TranslationStore.translations(with:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v1;

  static Published.subscript.setter();
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2878);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 134349314;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v10 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v7;

    *(v5 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = sub_10028D78C(v10, v11, &v9);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Loaded %{public}ld translations to session with ID: %{public}s", v5, 0x16u);
    sub_100008664(v6);
  }

  else
  {
  }
}

uint64_t sub_1002B3370()
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v1 = result;
    *&v61[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v61[0] + 1) = v2;
    AnyHashable.init<A>(_:)();
    if (!*(v1 + 16) || (v3 = sub_10028DF68(v63), (v4 & 1) == 0))
    {

      return sub_100078028(v63);
    }

    sub_10000A37C(*(v1 + 56) + 32 * v3, v61);
    sub_100078028(v63);

    sub_10005128C(v61, v62);
    sub_10000A37C(v62, v63);
    sub_100005AD4(&qword_1003BC728);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_1003A9228 == -1)
      {
LABEL_11:
        v11 = type metadata accessor for Logger();
        sub_1000078E8(v11, qword_1003D2788);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
        }

        return sub_100008664(v62);
      }

LABEL_67:
      swift_once();
      goto LABEL_11;
    }

    v5 = *&v61[0];
    v6 = *&v61[0] & 0xC000000000000001;
    if ((*&v61[0] & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_7:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v60 = v63[0];
        if (v6)
        {
          __CocoaSet.makeIterator()();
          type metadata accessor for PersistedTranslation();
          sub_1002B5808();
          Set.Iterator.init(_cocoa:)();
          v5 = v63[0];
          v7 = v63[1];
          v8 = v63[2];
          v9 = v63[3];
          v10 = v63[4];
        }

        else
        {
          v9 = 0;
          v15 = -1 << *(v5 + 32);
          v7 = v5 + 56;
          v8 = ~v15;
          v16 = -v15;
          if (v16 < 64)
          {
            v17 = ~(-1 << v16);
          }

          else
          {
            v17 = -1;
          }

          v10 = v17 & *(v5 + 56);
        }

        v52 = v8;
        v18 = (v8 + 64) >> 6;
        v55 = v5;
        v56 = &_swiftEmptyArrayStorage;
        v53 = v18;
        v54 = v7;
        while (2)
        {
          v19 = v60 & 0xFFFFFFFFFFFFFF8;
          v59 = v60 >> 62;
          if (v5 < 0)
          {
LABEL_28:
            if (!__CocoaSet.Iterator.next()())
            {
              goto LABEL_60;
            }

            type metadata accessor for PersistedTranslation();
            swift_dynamicCast();
            v23 = *&v61[0];
            v57 = v10;
            v58 = v9;
            if (!*&v61[0])
            {
              goto LABEL_60;
            }
          }

          else
          {
LABEL_22:
            v20 = v9;
            v21 = v10;
            v22 = v9;
            if (!v10)
            {
              while (1)
              {
                v22 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                if (v22 >= v18)
                {
                  goto LABEL_60;
                }

                v21 = *(v7 + 8 * v22);
                ++v20;
                if (v21)
                {
                  goto LABEL_26;
                }
              }

LABEL_65:
              __break(1u);
              break;
            }

LABEL_26:
            v57 = (v21 - 1) & v21;
            v58 = v22;
            v23 = *(*(v5 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
            if (!v23)
            {
LABEL_60:
              sub_10000C1D0();
              swift_getKeyPath();
              swift_getKeyPath();
              *&v61[0] = v60;

              static Published.subscript.setter();
              sub_1002B2E1C(v56);

              return sub_100008664(v62);
            }
          }

          if (v59)
          {
            v24 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v24 = *(v19 + 16);
          }

          v25 = -v24;
          v26 = 4;
          while (1)
          {
            if (v25 + v26 == 4)
            {

              v10 = v57;
              v9 = v58;
              v7 = v54;
              v5 = v55;
              v18 = v53;
              if ((v55 & 0x8000000000000000) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

            v27 = v26 - 4;
            if ((v60 & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v27 >= *(v19 + 16))
              {
                __break(1u);
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

              v28 = *(v60 + 8 * v26);
            }

            v29 = v28;
            v30 = [v28 identifier];
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            v34 = [v23 identifier];
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;

            if (v31 == v35 && v33 == v37)
            {
              break;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_50;
            }

            ++v26;
            v19 = v60 & 0xFFFFFFFFFFFFFF8;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_64;
            }
          }

LABEL_50:
          v40 = v23;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v42 = v56;
          if (v59 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            v60 = sub_1000A38E0(v60);
            v43 = v60 & 0xFFFFFFFFFFFFFF8;
            v5 = v55;
          }

          else
          {
            v5 = v55;
            v43 = v60 & 0xFFFFFFFFFFFFFF8;
          }

          if (v27 < *(v43 + 16))
          {
            v44 = *(v43 + 8 * v26);
            *(v43 + 8 * v26) = v40;

            v45 = [v40 identifier];
            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_10028CA84(0, *(v56 + 2) + 1, 1, v56);
            }

            v7 = v54;
            v50 = *(v42 + 2);
            v49 = *(v42 + 3);
            if (v50 >= v49 >> 1)
            {
              v42 = sub_10028CA84((v49 > 1), v50 + 1, 1, v42);
            }

            *(v42 + 2) = v50 + 1;
            v56 = v42;
            v51 = &v42[16 * v50];
            *(v51 + 4) = v46;
            *(v51 + 5) = v48;
            v10 = v57;
            v9 = v58;
            v18 = v53;
            continue;
          }

          break;
        }

        __break(1u);
        goto LABEL_67;
      }
    }

    else if (*(*&v61[0] + 16))
    {
      goto LABEL_7;
    }

    sub_100008664(v62);
  }

  return result;
}

uint64_t sub_1002B3A04()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD__translations;
  v2 = sub_100005AD4(&qword_1003B8CB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100008664(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD__currentID;
  v4 = sub_100005AD4(&qword_1003AABD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranslationSession_RD()
{
  result = qword_1003BC590;
  if (!qword_1003BC590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B3B6C()
{
  sub_100289AE8();
  if (v0 <= 0x3F)
  {
    sub_1002B3C5C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002B3C5C()
{
  if (!qword_1003AAA30)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AAA30);
    }
  }
}

uint64_t sub_1002B3CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B3CF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_1002B3D48@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranslationSession_RD();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002B3D88@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002B3E08()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B3E8C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002B3F0C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1002B3F88(unint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002B4118(uint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1002B42C8(Swift::Int result, uint64_t a2)
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002B44CC(uint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      sub_10013B9A0();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002B4698(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1002B4790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, 1, a3);
  *v5 = v7;
  return result;
}

unint64_t sub_1002B487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_100005AD4(&qword_1003BBDA0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
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
    return sub_100009EBC(a4, &qword_1003B79F0);
  }

  if (v17 < 1)
  {
    return sub_100009EBC(a4, &qword_1003B79F0);
  }

  result = sub_10001F620(a4, v15, &qword_1003BBDA0);
  if (v12 >= v17)
  {
    return sub_100009EBC(a4, &qword_1003B79F0);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1002B4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for StreamingRequestInfo(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
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
    return sub_100009EBC(a4, &unk_1003BAFA0);
  }

  if (v17 < 1)
  {
    return sub_100009EBC(a4, &unk_1003BAFA0);
  }

  result = sub_1000C88BC(a4, v15);
  if (v12 >= v17)
  {
    return sub_100009EBC(a4, &unk_1003BAFA0);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1002B4B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a5;
  v30 = a4;
  v31 = a3;
  v14 = a9;
  v15 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = (&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35[3] = a6;
  v35[4] = a8;
  v22 = sub_100050D60(v35);
  (*(*(a6 - 8) + 16))(v22, a1, a6);
  v34[3] = a7;
  v34[4] = a9;
  v23 = sub_100050D60(v34);
  (*(*(a7 - 8) + 16))(v23, a2, a7);
  sub_100026AA0();
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  LOBYTE(a7) = _dispatchPreconditionTest(_:)();
  v25 = *(v19 + 8);
  v24 = (v19 + 8);
  v25(v21, v18);
  if (a7)
  {
    sub_1000085CC((v32 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v32 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    v24 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
    if (!v24)
    {
LABEL_5:
      sub_100008664(v35);
      sub_100008664(v34);
      return v24;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = String._bridgeToObjectiveC()();

    [v24 setSessionID:v26];

    sub_10001F620(v30, v17, &unk_1003B8C90);
    dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v24;
    v14 = static Published.subscript.modify();
    if (!(*v27 >> 62))
    {
LABEL_4:
      sub_1002B525C(0, 0, v18);

      v14(&v33, 0);

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B4F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a4;
  v25 = a8;
  v14 = *(a7 - 8);
  v15 = __chkstk_darwin(a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v15);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21);
  (*(v14 + 16))(v17, a2, a7);
  v22 = sub_1002B4B88(v21, v17, a3, v24, a5, a6, a7, v25, a9);
  if (v22)
  {
    sub_1000085CC((a5 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(a5 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    dispatch thunk of TranslationStore.save()();
  }

  (*(v19 + 8))(v21, a6);
  (*(v14 + 8))(v17, a7);
  return v22;
}

char *sub_1002B5140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for PersistedTranslation();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1002B525C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1002B4698(result);

  return sub_1002B5140(v6, v5, 1, v3);
}

unint64_t sub_1002B5360(unint64_t result, _BYTE *a2, size_t a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 112 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 112 * v7;
  a2 = (v9 + 32 + 112 * v8);
  a3 = 112 * v14;
  v15 = &a2[112 * v14];
  if (result != a2 || result >= v15)
  {
    result = memmove(result, a2, a3);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0x69uLL);
  a3 = &qword_1003BC738;
  a2 = v19;
  result = a4;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_10001F620(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_10001F620(a4, v19, &qword_1003BC738);
}

uint64_t sub_1002B5490(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_1002B4698(result);
    return sub_1002B56EC(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1002B556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_100005AD4(&qword_1003BBDA0);
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

uint64_t sub_1002B56EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1002B5808()
{
  result = qword_1003AFD60;
  if (!qword_1003AFD60)
  {
    type metadata accessor for PersistedTranslation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFD60);
  }

  return result;
}

uint64_t sub_1002B5860(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003BC730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B5900(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_100005AD4(&unk_1003AECF0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B5A18(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1002B5AF4()
{
  v88 = type metadata accessor for DispatchPredicate();
  v95 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = (&v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_100005AD4(&unk_1003B8C90);
  v3 = __chkstk_darwin(v2 - 8);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v81 = &v64 - v6;
  __chkstk_darwin(v5);
  v92 = &v64 - v7;
  v96 = type metadata accessor for StoredTranslationResult();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SpeechResultOrigin();
  v89 = *(v93 - 8);
  __chkstk_darwin(v93);
  v86 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for StoredSpeechResult();
  v65 = *(v90 - 8);
  __chkstk_darwin(v90);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 64);
  v16 = *(v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24);
  v82 = (v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  sub_1000085CC((v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v101 = &_swiftEmptyArrayStorage;

  static Published.subscript.setter();
  v74 = v15;
  *(v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  v17 = *(v0 + 72);
  v18 = *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24);
  v80 = (v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  sub_1000085CC((v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), v18);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v101 = &_swiftEmptyArrayStorage;

  static Published.subscript.setter();
  v71 = v17;
  *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  Locale.init(identifier:)();
  (*(v89 + 13))(v86, enum case for SpeechResultOrigin.text(_:), v93);
  v20 = v92;
  v89 = v14;
  v67 = v12;
  v21 = v91;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  v22 = 0;
  v23 = (v65 + 16);
  v86 = v94 + 16;
  v85 = enum case for DispatchPredicate.onQueue(_:);
  v84 = (v95 + 104);
  v83 = (v95 + 8);
  v66 = (v94 + 8);
  v72 = (v65 + 16);
LABEL_3:
  v24 = &off_10037CFE0 + 4 * v22;
  v70 = v22 + 1;
  v25 = v24[7];
  v26 = v24[5];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v69 = v26;
  Locale.init(identifier:)();
  v68 = v25;
  StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  v95 = type metadata accessor for UUID();
  v27 = *(v95 - 8);
  v28 = *(v27 + 56);
  v93 = v27 + 56;
  v94 = v28;
  v29 = 3;
  v30 = v20;
  while (1)
  {
    v76 = v29;
    (v94)(v30, 1, 1, v95);
    v31 = v90;
    v102 = v90;
    v79 = sub_100100EB8(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
    v103 = v79;
    v32 = sub_100050D60(&v101);
    v33 = *v23;
    (*v23)(v32, v89, v31);
    v34 = v96;
    v99 = v96;
    v77 = sub_100100EB8(&qword_1003AED00, &type metadata accessor for StoredTranslationResult);
    v100 = v77;
    v35 = sub_100050D60(&v98);
    v78 = *v86;
    v78(v35, v21, v34);
    sub_100026AA0();
    v36 = static OS_dispatch_queue.main.getter();
    v37 = v87;
    *v87 = v36;
    v38 = *v84;
    v39 = v88;
    (*v84)(v37, v85, v88);
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v40 = *v83;
    (*v83)(v37, v39);
    if ((v34 & 1) == 0)
    {
      break;
    }

    sub_1000085CC(v82, v82[3]);
    v41 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
    if (!v41)
    {
      goto LABEL_19;
    }

    v42 = v41;
    v75 = v33;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v43 = String._bridgeToObjectiveC()();

    [v42 setSessionID:v43];

    v44 = v92;
    sub_100026D44(v92, v81);
    dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v42;
    v46 = static Published.subscript.modify();
    if (*v47 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_21;
      }
    }

    sub_1002B525C(0, 0, v45);

    v46(&v97, 0);

    sub_100009EBC(v44, &unk_1003B8C90);
    sub_100008664(&v101);
    sub_100008664(&v98);
    sub_100031DD8(v82, &v101);
    sub_1000085CC(&v101, v102);
    dispatch thunk of TranslationStore.toggleFavorite(_:)();
    sub_100008664(&v101);
    KeyPath = v73;
    (v94)(v73, 1, 1, v95);
    v48 = v90;
    v102 = v90;
    v103 = v79;
    v49 = sub_100050D60(&v101);
    v23 = v72;
    v75(v49, v89, v48);
    v50 = v96;
    v99 = v96;
    v100 = v77;
    v51 = sub_100050D60(&v98);
    v78(v51, v91, v50);
    v52 = static OS_dispatch_queue.main.getter();
    v53 = v87;
    *v87 = v52;
    v54 = v88;
    v38(v53, v85, v88);
    v55 = _dispatchPreconditionTest(_:)();
    v40(v53, v54);
    if ((v55 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_1000085CC(v80, v80[3]);
    v56 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
    if (!v56)
    {
      goto LABEL_20;
    }

    v57 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v58 = String._bridgeToObjectiveC()();

    [v57 setSessionID:v58];

    sub_100026D44(KeyPath, v81);
    dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v57;
    v60 = static Published.subscript.modify();
    v62 = v76;
    if (*v61 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
LABEL_16:
      (*(v65 + 8))(v89, v90);
      sub_100005AD4(&qword_1003B8D08);
      return swift_arrayDestroy();
    }

    sub_1002B525C(0, 0, v59);

    v60(&v97, 0);

    sub_100009EBC(KeyPath, &unk_1003B8C90);
    sub_100008664(&v101);
    sub_100008664(&v98);
    sub_100031DD8(v80, &v101);
    sub_1000085CC(&v101, v102);
    dispatch thunk of TranslationStore.toggleFavorite(_:)();

    sub_100008664(&v101);
    v29 = v62 - 1;
    v21 = v91;
    v30 = v92;
    if (v62 == 1)
    {
      v20 = v92;
      (*v66)(v91, v96);

      v22 = v70;
      if (v70 != 3)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_100009EBC(v92, &unk_1003B8C90);
  sub_100008664(&v101);
  sub_100008664(&v98);
  __break(1u);
LABEL_20:
  sub_100009EBC(KeyPath, &unk_1003B8C90);
  sub_100008664(&v101);
  result = sub_100008664(&v98);
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1002B6934(uint64_t a1)
{
  v52 = type metadata accessor for DispatchPredicate();
  v43 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100005AD4(&unk_1003B8C90);
  v6 = __chkstk_darwin(v5 - 8);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v38 - v8;
  v55 = type metadata accessor for StoredTranslationResult();
  v39 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SpeechResultOrigin();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v54 = type metadata accessor for StoredSpeechResult();
  v38 = *(v54 - 8);
  __chkstk_darwin(v54);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 64);
  v15 = (v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  v16 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24);
  v49 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 32);
  sub_1000085CC((v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v59[0] = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  v40 = v14;
  *(v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  Locale.init(identifier:)();
  (*(v51 + 104))(v50, enum case for SpeechResultOrigin.text(_:), v53);
  v53 = v13;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  Locale.init(identifier:)();
  result = StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  if (a1 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v18 = v42;
    if (a1)
    {
      v51 = sub_100026AA0();
      v50 = type metadata accessor for UUID();
      v19 = *(v50 - 1);
      v49 = (v38 + 16);
      v48 = (v39 + 16);
      v47 = (v43 + 13);
      v46 = *(v19 + 56);
      v45 = v19 + 56;
      v44 = enum case for DispatchPredicate.onQueue(_:);
      ++v43;
      v46(v18, 1, 1, v50);
      while (1)
      {
        v20 = v54;
        v59[3] = v54;
        v59[4] = sub_100100EB8(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
        v21 = sub_100050D60(v59);
        (*v49)(v21, v53, v20);
        v22 = v55;
        v58[3] = v55;
        v58[4] = sub_100100EB8(&qword_1003AED00, &type metadata accessor for StoredTranslationResult);
        v23 = sub_100050D60(v58);
        (*v48)(v23, v56, v22);
        *v4 = static OS_dispatch_queue.main.getter();
        v24 = v52;
        (*v47)(v4, v44, v52);
        LOBYTE(v22) = _dispatchPreconditionTest(_:)();
        result = (*v43)(v4, v24);
        if ((v22 & 1) == 0)
        {
          __break(1u);
          goto LABEL_29;
        }

        sub_1000085CC(v15, v15[3]);
        v25 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
        if (v25)
        {
          break;
        }

LABEL_7:
        sub_100009EBC(v18, &unk_1003B8C90);
        sub_100008664(v59);
        sub_100008664(v58);
        if (!--a1)
        {
          goto LABEL_27;
        }

        v46(v18, 1, 1, v50);
      }

      v26 = v25;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v27 = String._bridgeToObjectiveC()();

      [v26 setSessionID:v27];

      sub_100026D44(v18, v41);
      dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = v26;
      v29 = static Published.subscript.modify();
      v31 = v30;
      v32 = *v30;
      if (!(*v30 >> 62))
      {
        goto LABEL_12;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_30;
      }

      v32 = *v31;
      if (*v31 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          goto LABEL_31;
        }

        v37 = _CocoaArrayWrapper.endIndex.getter();
        v34 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_12:
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_26;
        }
      }

      v35 = *v31;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v31 = v35;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
        {
          if (v34 <= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      else if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
      {
        goto LABEL_5;
      }

      _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
      *v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_6:
      sub_1002B5140(0, 0, 1, v28);

      v29(&v57, 0);

      v18 = v42;
      goto LABEL_7;
    }

LABEL_27:
    (*(v39 + 8))(v56, v55);
    return (*(v38 + 8))(v53, v54);
  }

  return result;
}

uint64_t sub_1002B72B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003BC910);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for SELFLoggingInvocationDescription();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D2878);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v51 = v11;
  v52 = v10;
  v50 = a1;
  if (v16)
  {
    v46 = v15;
    v47 = v14;
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61[0] = v45;
    v48 = v17;
    *v17 = 136446466;
    swift_beginAccess();
    v19 = *(v2 + 13);
    v18 = *(v2 + 14);
    v54 = *(v2 + 11);
    v20 = v54;

    swift_getAtKeyPath();
    v21 = v58;
    if (v58)
    {
      v19 = v57;
    }

    else
    {

      v21 = v18;
    }

    v22 = sub_10028D78C(v19, v21, v61);

    v23 = v48;
    *(v48 + 1) = v22;
    *(v23 + 6) = 2082;
    swift_beginAccess();
    v25 = *(v2 + 18);
    v24 = *(v2 + 19);
    v56 = *(v2 + 16);
    v26 = v56;

    swift_getAtKeyPath();
    v27 = v58;
    if (v58)
    {
      v25 = v57;
    }

    else
    {

      v27 = v24;
    }

    v10 = v52;

    v28 = sub_10028D78C(v25, v27, v61);

    v29 = v48;
    *(v48 + 14) = v28;
    v14 = v47;
    _os_log_impl(&_mh_execute_header, v47, v46, "Suspending sessions with IDs; TranslateTab: %{public}s, ConversationTab: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v30 = *(v2 + 31);
  isa = v30[2].isa;
  if (isa)
  {
    v48 = v2;
    v32 = &v30[4];
    v33 = (v53 + 48);
    v47 = v30;

    v34 = _swiftEmptyArrayStorage;
    do
    {
      sub_100031DD8(v32, &v57);
      v35 = v59;
      v36 = v60;
      sub_1000085CC(&v57, v59);
      (*(v36 + 8))(v35, v36);
      sub_100008664(&v57);
      if ((*v33)(v6, 1, v7) == 1)
      {
        sub_100009EBC(v6, &qword_1003BC910);
      }

      else
      {
        sub_1002B8E68(v6, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10028D560(0, v34[2] + 1, 1, v34);
        }

        v38 = v34[2];
        v37 = v34[3];
        if (v38 >= v37 >> 1)
        {
          v34 = sub_10028D560(v37 > 1, v38 + 1, 1, v34);
        }

        v34[2] = v38 + 1;
        sub_1002B8E68(v9, v34 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v38);
      }

      v32 += 40;
      isa = (isa - 1);
    }

    while (isa);

    v2 = v48;
    v10 = v52;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v55 = v34;
  v56 = v34;

  swift_setAtWritableKeyPath();
  PassthroughSubject.send(_:)();

  swift_endAccess();
  v39 = v51;
  v40 = v49;
  (*(v51 + 16))(v49, v50, v10);
  v41 = [objc_opt_self() standardUserDefaults];
  v42 = Date._bridgeToObjectiveC()().super.isa;
  v43 = String._bridgeToObjectiveC()();
  [v41 setObject:v42 forKey:v43];

  result = (*(v39 + 8))(v40, v10);
  *(v2 + 240) = 1;
  return result;
}

void sub_1002B79AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  isa = v6[-1].isa;
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 240) == 1)
  {
    sub_100229518(v9);
    Date.timeIntervalSince(_:)();
    v11 = v10;
    v12 = *(isa + 1);
    v12(v9, v6);
    if (*(v2 + 16) >= v11)
    {
      if (a2)
      {
        if (qword_1003A9278 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000078E8(v21, qword_1003D2878);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Session is resuming within the time limit on first launch", v24, 2u);
        }

        sub_1002B86C4();
      }
    }

    else
    {
      if (qword_1003A9278 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000078E8(v13, qword_1003D2878);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Session was timed-out when resuming", v16, 2u);
      }

      sub_1002B8A54();
      sub_1002B80CC();
    }

    if (qword_1003A9278 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000078E8(v25, qword_1003D2878);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v44 = v27;
      v45 = isa;
      v46 = a1;
      v47 = v12;
      v48 = isa + 8;
      v49 = v6;
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v28 = 136446466;
      swift_beginAccess();
      v30 = *(v3 + 104);
      v29 = *(v3 + 112);
      v50 = *(v3 + 88);
      v31 = v50;

      swift_getAtKeyPath();
      v32 = v54;
      if (v54)
      {
        v30 = v53;
      }

      else
      {

        v32 = v29;
      }

      v33 = sub_10028D78C(v30, v32, &v52);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      swift_beginAccess();
      v34 = *(v3 + 144);
      v35 = *(v3 + 152);
      v51 = *(v3 + 128);
      v36 = v51;

      swift_getAtKeyPath();
      v37 = v54;
      if (v54)
      {
        v34 = v53;
      }

      else
      {

        v37 = v35;
      }

      v38 = sub_10028D78C(v34, v37, &v52);

      *(v28 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v26, v44, "Resuming sessions with IDs; TranslateTab: %{public}s, ConversationTab: %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      v6 = v49;
      a1 = v46;
      v12 = v47;
      isa = v45;
    }

    else
    {
    }

    *(v3 + 240) = 0;
    (*(isa + 2))(v9, a1, v6);
    v39 = [objc_opt_self() standardUserDefaults];
    v40 = Date._bridgeToObjectiveC()().super.isa;
    v41 = String._bridgeToObjectiveC()();
    [v39 setObject:v40 forKey:v41];

    v12(v9, v6);
    swift_beginAccess();
    v51 = &_swiftEmptyArrayStorage;
    v52 = &_swiftEmptyArrayStorage;
    swift_setAtWritableKeyPath();
    PassthroughSubject.send(_:)();
    swift_endAccess();
  }

  else
  {
    if (qword_1003A9278 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2878);
    v49 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v49, v18, "Trying to resume but not suspended", v19, 2u);
    }

    v20 = v49;
  }
}

uint64_t sub_1002B80CC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2878);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Preparing new sessions", v9, 2u);
  }

  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v5, v2);
  swift_beginAccess();
  v31 = v10;
  v32 = v12;
  v29 = v10;
  v30 = v12;

  swift_setAtWritableKeyPath();
  PassthroughSubject.send(_:)();

  swift_endAccess();
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v13(v5, v2);
  swift_beginAccess();
  v31 = v14;
  v32 = v16;
  v29 = v14;
  v30 = v16;

  swift_setAtWritableKeyPath();
  PassthroughSubject.send(_:)();

  swift_endAccess();
  v17 = v1[8];
  v19 = v1[13];
  v18 = v1[14];
  v31 = v1[11];
  v20 = v31;

  swift_getAtKeyPath();
  v21 = v34;
  if (v34)
  {
    v19 = v33;
  }

  else
  {

    v21 = v18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v19;
  v34 = v21;

  static Published.subscript.setter();
  v22 = v1[9];
  v24 = v1[18];
  v23 = v1[19];
  v31 = v1[16];
  v25 = v31;

  swift_getAtKeyPath();
  v26 = v34;
  if (v34)
  {
    v24 = v33;
  }

  else
  {

    v26 = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v24;
  v34 = v26;

  static Published.subscript.setter();
  sub_1000085CC(v1 + 3, v1[6]);
  dispatch thunk of TranslationStore.clearHistory(completion:)();
  sub_1000085CC((v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = &_swiftEmptyArrayStorage;

  static Published.subscript.setter();
  *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  sub_1000085CC((v22 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v22 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = &_swiftEmptyArrayStorage;

  result = static Published.subscript.setter();
  *(v22 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  return result;
}

void sub_1002B86C4()
{
  v1 = v0;
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2878);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Loading sessions with translations", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 88);

  swift_getAtKeyPath();
  if (!v12)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_beginAccess();
  v7 = *(v1 + 152);
  v8 = *(v1 + 128);

  swift_getAtKeyPath();
  v9 = v11;
  if (v11)
  {
  }

  else
  {

    v9 = v7;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v10 = *(v1 + 168);

  swift_getAtKeyPath();
  if (!v9)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1002B3078();
  sub_1002B3078();
  sub_1002B3078();
}

uint64_t sub_1002B8A54()
{
  v1 = type metadata accessor for SELFLoggingInvocationDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 224);
  v29[0] = *(v0 + 208);
  v6 = v29[0];

  swift_getAtKeyPath();
  v7 = v32;
  if (v32)
  {
  }

  else
  {

    v7 = v5;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v1 + 24);
    v27 = v0;
    v28 = v9;
    v10 = objc_opt_self();
    v11 = *(v2 + 80);
    v26 = v7;
    v12 = v7 + ((v11 + 32) & ~v11);
    v13 = *(v2 + 72);
    do
    {
      sub_100224AE0(v12, v4);
      v14 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v16 = Locale._bridgeToObjectiveC()().super.isa;
      v17 = [v14 initWithSourceLocale:isa targetLocale:{v16, v26}];

      v18 = UUID._bridgeToObjectiveC()().super.isa;
      v19 = String._bridgeToObjectiveC()();
      [v10 userEndedTypingWithInvocationId:v18 payload:v19 localePair:v17 reason:2];

      sub_100224B44(v4);
      v12 += v13;
      --v8;
    }

    while (v8);

    v0 = v27;
  }

  else
  {
  }

  result = swift_beginAccess();
  v21 = *(v0 + 248);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + 32;

    do
    {
      sub_100031DD8(v23, v29);
      v24 = v30;
      v25 = v31;
      sub_1000085CC(v29, v30);
      (*(v25 + 16))(v24, v25);
      sub_100008664(v29);
      v23 += 40;
      --v22;
    }

    while (v22);
  }

  return result;
}

void *sub_1002B8D30()
{
  sub_100008664((v0 + 3));

  v1 = v0[11];

  v2 = v0[16];

  v3 = v0[21];

  v4 = v0[26];

  return v0;
}

uint64_t sub_1002B8E00()
{
  sub_1002B8D30();

  return swift_deallocClassInstance();
}

uint64_t sub_1002B8E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFLoggingInvocationDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B8ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B8F40()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002B8FBC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v20 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_conversationManager);
  if (v20)
  {
    v38 = v20;
    sub_10009698C(a1, a2);
    v21 = v38;
  }

  else
  {
    v30 = &v29 - v18;
    v31 = v5;
    v32 = v19;
    v33 = v12;
    v34 = v8;
    v35 = v10;
    v36 = v9;
    v37 = v6;
    v38 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = LOBYTE(aBlock[0]);
    swift_getKeyPath();
    swift_getKeyPath();
    if (v22 == 1)
    {
      LOBYTE(aBlock[0]) = 0;

      static Published.subscript.setter();
    }

    else
    {
      LOBYTE(aBlock[0]) = 1;

      static Published.subscript.setter();
      sub_100026AA0();
      v23 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v24 = v30;
      + infix(_:_:)();
      v32 = *(v32 + 8);
      (v32)(v16, v38);
      aBlock[4] = sub_1002B982C;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_10038C930;
      v25 = _Block_copy(aBlock);

      v26 = v33;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100026DC4(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50);
      sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
      v27 = v34;
      v28 = v31;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v25);

      (*(v37 + 8))(v27, v28);
      (*(v35 + 8))(v26, v36);
      (v32)(v24, v38);
    }
  }
}

uint64_t sub_1002B94BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B952C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel__isPlaying;
  v2 = sub_100005AD4(&unk_1003B8DF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSPlaybackViewModel()
{
  result = qword_1003BC958;
  if (!qword_1003BC958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B9648()
{
  sub_1000C1BC0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B96F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTSPlaybackViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002B9730@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002B97B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B9834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B984C(void *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v26 = sub_100005AD4(&qword_1003AABE0);
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v26 - v8;
  v10 = sub_100005AD4(&qword_1003AABE8);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100005AD4(&unk_1003B8DF0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel__isPlaying;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(v2 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_conversationManager;
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_conversationManager) = 0;
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_subscriptions) = _swiftEmptyArrayStorage;
  *(v2 + v19) = a1;
  swift_beginAccess();
  v20 = a1;
  sub_100005AD4(&qword_1003AABF0);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100026AA0();
  v21 = static OS_dispatch_queue.main.getter();
  v29 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_10001BAEC(&qword_1003AABF8, &qword_1003AABE0);
  sub_100026DC4(&qword_1003B2410, sub_100026AA0);
  v23 = v26;
  Publisher.receive<A>(on:options:)();
  sub_10009657C(v6);

  (*(v7 + 8))(v9, v23);
  sub_10001BAEC(qword_1003AAC00, &qword_1003AABE8);

  v24 = v27;
  Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v13, v24);
  swift_beginAccess();
  sub_100005AD4(&unk_1003B8DE0);
  sub_10001BAEC(&qword_1003AE440, &unk_1003B8DE0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_1002B9D2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B9DA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B9E14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_1002B9E88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1002B9EFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, char a14, char a15)
{
  v94 = a5;
  v95 = a7;
  v92 = a6;
  v19 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v19 - 8);
  v21 = &v85 - v20;
  v22 = type metadata accessor for Locale();
  v93 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v85 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_continuation_throwingResume();
    return;
  }

  v29 = Strong;
  v91 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v99)
  {
    goto LABEL_9;
  }

  if (aBlock == a3 && v99 == a4)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (aBlock != (v94 & 1))
  {
LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v96 = a3;
    v90 = v21;
    if (v99)
    {
      v89 = a8;

      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000078E8(v31, qword_1003D28F0);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v97 = v88;
        *v34 = 136446466;
        *(v34 + 4) = sub_10028D78C(a3, a4, &v97);
        *(v34 + 12) = 2082;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v99)
        {
          v35 = aBlock;
        }

        else
        {
          v35 = 0;
        }

        if (v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 0xE000000000000000;
        }

        v37 = sub_10028D78C(v35, v36, &v97);

        *(v34 + 14) = v37;
        a3 = v96;
        _os_log_impl(&_mh_execute_header, v32, v33, "New translation TTS will start before the currently playing one ends. New translation: %{public}s. Currently playing translation: %{public}s", v34, 0x16u);
        swift_arrayDestroy();
      }

      a8 = v89;
      sub_1002BBD20();
    }

    v94 &= 1u;
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v87 = a11;
    v88 = a12;
    v86 = a10;
    v38 = type metadata accessor for Logger();
    sub_1000078E8(v38, qword_1003D28F0);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v89 = v22;
      v42 = v27;
      v43 = v25;
      v44 = a8;
      v45 = v41;
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = 136446466;
      *(v45 + 4) = sub_10028D78C(v96, a4, &aBlock);
      *(v45 + 12) = 1026;
      v47 = v94;
      *(v45 + 14) = v94 ^ 1;
      _os_log_impl(&_mh_execute_header, v39, v40, "Setting UI state for TTS with identifier %{public}s; source: %{BOOL,public}d", v45, 0x12u);
      sub_100008664(v46);
      a3 = v96;

      a8 = v44;
      v25 = v43;
      v27 = v42;
      v22 = v89;
    }

    else
    {

      v47 = v94;
    }

    LODWORD(v89) = a13;
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = a3;
    v99 = a4;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = v47;

    static Published.subscript.setter();
    v49 = v92;
    v48 = v93;
    v50 = *(v93 + 16);
    v50(v27, v92, v22);
    if (v95)
    {
      v51 = v49;
    }

    else
    {
      v51 = a8;
    }

    v50(v25, v51, v22);
    sub_10000A2CC(0, &qword_1003A9C40);
    v52 = static OS_dispatch_queue.main.getter();
    v53 = objc_allocWithZone(_LTSpeakRequest);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v55 = Locale._bridgeToObjectiveC()().super.isa;
    v56 = [v53 initWithSourceLocale:isa targetLocale:v55 handlerQueue:v52];

    v57 = *(v48 + 8);
    v57(v25, v22);
    v57(v27, v22);
    if (v86)
    {
      v58 = v56;
      v59 = String._bridgeToObjectiveC()();
    }

    else
    {
      v60 = v56;
      v59 = 0;
    }

    v61 = v91;
    [v56 setSessionID:v59];

    v62 = v88;
    sub_1002BCFF4(v87, v88, v95 & 1);
    v63 = String._bridgeToObjectiveC()();

    [v56 setText:v63];

    ObjectType = swift_getObjectType();
    (*(v62 + 96))(ObjectType, v62);
    [v56 setTtsPlaybackRate:?];
    v65 = v89;
    [v56 setMuteTTSBasedOnRingerSwitchIfPossible:v89 & 1];
    v66 = swift_allocObject();
    swift_weakInit();
    v102 = sub_1002BD274;
    v103 = v66;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_1002BAE6C;
    v101 = &unk_10038CA10;
    v67 = _Block_copy(&aBlock);

    [v56 setAudioStartHandler:v67];
    _Block_release(v67);
    sub_10000A2CC(0, &qword_1003A9B80);
    v68 = static NSUserDefaults.translationGroupDefaults.getter();
    LOBYTE(v63) = NSUserDefaults.onDeviceOnly.getter();

    [v56 setForcedOfflineTranslation:v63 & 1];
    v101 = &type metadata for TranslateFeatures;
    v102 = sub_100009DF8();
    LOBYTE(aBlock) = 18;
    LOBYTE(v68) = isFeatureEnabled(_:)();
    sub_100008664(&aBlock);
    v69 = v94;
    if (v68)
    {
      [v56 setPreferOnDeviceIfAvailable:1];
    }

    v70 = swift_allocObject();
    swift_weakInit();

    v71 = swift_allocObject();
    v72 = v96;
    *(v71 + 16) = v70;
    *(v71 + 24) = v72;
    *(v71 + 32) = a4;
    *(v71 + 40) = v69;
    *(v71 + 48) = v61;
    v102 = sub_1002BD2D4;
    v103 = v71;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100227798;
    v101 = &unk_10038CA60;
    v73 = _Block_copy(&aBlock);

    [v56 setCompletionHandler:v73];
    _Block_release(v73);
    if (v65)
    {
      if (a14)
      {
        v74 = 112;
        v75 = v96;
        if ((a15 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v74 = 16;
        v75 = v96;
        if ((a15 & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    else if (a14)
    {
      v74 = 96;
      v75 = v96;
      if ((a15 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v74 = 0;
      v75 = v96;
      if ((a15 & 1) == 0)
      {
LABEL_50:
        v80 = type metadata accessor for TaskPriority();
        v81 = v90;
        (*(*(v80 - 8) + 56))(v90, 1, 1, v80);
        type metadata accessor for MainActor();

        v82 = v56;
        v83 = static MainActor.shared.getter();
        v84 = swift_allocObject();
        *(v84 + 16) = v83;
        *(v84 + 24) = &protocol witness table for MainActor;
        *(v84 + 32) = v29;
        *(v84 + 40) = v74;
        *(v84 + 48) = v75;
        *(v84 + 56) = a4;
        *(v84 + 64) = v69;
        *(v84 + 72) = v61;
        *(v84 + 80) = v82;
        sub_10005E36C(0, 0, v81, &unk_1002EF030, v84);

        return;
      }
    }

    v74 |= 1uLL;
    goto LABEL_50;
  }

  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_1000078E8(v76, qword_1003D28F0);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "User paused in-progress TTS, cancelling the current playback", v79, 2u);
  }

  sub_1002BBD20();
  swift_continuation_throwingResume();
}

uint64_t sub_1002BAB74(unint64_t a1, double a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2CC(0, &qword_1003A9C40);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (qword_1003A92A0 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D28F0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349312;
    if (a1)
    {
      if (a1 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v14 = 0;
    }

    *(v13 + 4) = v14;

    *(v13 + 12) = 2050;
    *(v13 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v11, v12, "Audio started. wordTimingInfo.count: %{public}ld. totalDuration: %{public}f", v13, 0x16u);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a2;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = *&a1;

  return static Published.subscript.setter();
}

uint64_t sub_1002BAE6C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000A2CC(0, &qword_1003BCC68);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v4, a3);
}

uint64_t sub_1002BAF04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2CC(0, &qword_1003A9C40);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  v15 = *(v10 + 8);
  v14 = v10 + 8;
  v15(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v39)
  {
    goto LABEL_15;
  }

  if (v38 == a3 && v39 == a4)
  {

    goto LABEL_8;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_15:
    v14 = 0;
    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_16:
    swift_errorRetain();
    if (qword_1003A92A0 == -1)
    {
LABEL_17:
      v23 = type metadata accessor for Logger();
      sub_1000078E8(v23, qword_1003D28F0);
      swift_errorRetain();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v38 = v28;
        *v26 = 136446466;
        *(v26 + 4) = sub_10028D78C(a3, a4, &v38);
        *(v26 + 12) = 2112;
        v29 = _convertErrorToNSError(_:)();
        *(v26 + 14) = v29;
        *v27 = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "TTS speak request failed for translation: %{public}s. Error: %@", v26, 0x16u);
        sub_1000DDF70(v27);

        sub_100008664(v28);
      }

      if (v14)
      {
        sub_1002BBEE4();
      }

      sub_100005AD4(&unk_1003B9E90);
      swift_allocError();
      *v30 = a1;
      swift_continuation_throwingResumeWithError();
    }

LABEL_35:
    swift_once();
    goto LABEL_17;
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v38 ^ a5 ^ 1;
  if (a1)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000078E8(v18, qword_1003D28F0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_10028D78C(a3, a4, &v38);
    _os_log_impl(&_mh_execute_header, v19, v20, "TTS speak request complete for translation: %{public}s", v21, 0xCu);
    sub_100008664(v22);
  }

  if (v14)
  {
    sub_1002BBEE4();
  }

  else
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_10028D78C(a3, a4, &v37);
      *(v33 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v39)
      {
        v34 = v38;
      }

      else
      {
        v34 = 7104878;
      }

      if (v39)
      {
        v35 = v39;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_10028D78C(v34, v35, &v37);

      *(v33 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "Currently playing translation was changed before it completed. Completed translation: %{public}s. Currently playing translation: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }
  }

  swift_continuation_throwingResume();
}

uint64_t sub_1002BB5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  *(v8 + 145) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return _swift_task_switch(sub_1002BB664, v10, v9);
}

uint64_t sub_1002BB68C()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_100005AD4(&unk_1003AECD0);
  *v4 = v0;
  v4[1] = sub_1002BB798;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000022, 0x80000001002F2D50, sub_1000A46E0, v3, v5);
}

uint64_t sub_1002BB798()
{

  return _swift_task_switch(sub_1002BB8B0, 0, 0);
}

uint64_t sub_1002BB8D0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 24);
  if (v1)
  {
    if (*(v0 + 16) == *(v0 + 56) && v1 == *(v0 + 64))
    {

      goto LABEL_6;
    }

    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
LABEL_6:
      v3 = *(v0 + 145);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = *(v0 + 144) ^ v3 ^ 1;
      v5 = *(v0 + 136);
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  v4 = 0;
  v5 = *(v0 + 136);
  if (!v5)
  {
LABEL_7:
    if (v4)
    {
      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000078E8(v6, qword_1003D28F0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "TTS speak request starting", v9, 2u);
      }

      v10 = *(v0 + 80);
      v11 = *(v0 + 40);

      [*(v11 + 16) translate:v10];
    }

    else
    {
      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000078E8(v19, qword_1003D28F0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Not starting TTS request since it's been cancelled while doing prep work", v22, 2u);
      }
    }

    goto LABEL_26;
  }

LABEL_14:
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000078E8(v12, qword_1003D28F0);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = _convertErrorToNSError(_:)();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "TTS audio session config failed. Error: %@", v15, 0xCu);
    sub_1000DDF70(v16);
  }

  if (v4)
  {
    sub_1002BBEE4();
  }

  sub_100005AD4(&unk_1003B9E90);
  swift_allocError();
  *v18 = v5;
  swift_continuation_throwingResumeWithError();
LABEL_26:
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002BBD20()
{
  v1 = v0;
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D28F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v12)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = sub_10028D78C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cleaning up translator to cancel currently playing translation: %{public}s", v5, 0xCu);
    sub_100008664(v6);
  }

  [*(v1 + 16) cleanup];
  return sub_1002BBEE4();
}

uint64_t sub_1002BBEE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002BBFD4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10028DF68(v15), (v3 & 1) == 0))
  {

    sub_100078028(v15);
    return;
  }

  sub_10000A37C(*(v1 + 56) + 32 * v2, v16);
  sub_100078028(v15);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (!v14)
  {
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D28F0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_23;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Audio interruption ended";
    goto LABEL_22;
  }

  if (v14 != 1)
  {
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D28F0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_23;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Audio interruption with unhandled type";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

LABEL_23:

    return;
  }

  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D28F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Audio interruption began", v7, 2u);
  }

  sub_1002BBD20();
}

uint64_t sub_1002BC3A4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentlyPlayingTranslationID;
  v2 = sub_100005AD4(&qword_1003AABF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentSide;
  v4 = sub_100005AD4(&qword_1003AC790);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__wordTimingInfo;
  v6 = sub_100005AD4(&qword_1003BCC70);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__totalDuration;
  v8 = sub_100005AD4(&qword_1003BCC78);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSManager()
{
  result = qword_1003BCAA8;
  if (!qword_1003BCAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BC594()
{
  sub_100029834(319, &qword_1003AEC00, &qword_1003AA740);
  if (v0 <= 0x3F)
  {
    sub_100026204(319, &qword_1003BCAB8);
    if (v1 <= 0x3F)
    {
      sub_100029834(319, &qword_1003BCAC0, &qword_1003BCAC8);
      if (v2 <= 0x3F)
      {
        sub_100026204(319, &unk_1003BCAD0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1002BC748()
{
  result = qword_1003BCC60;
  if (!qword_1003BCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCC60);
  }

  return result;
}

uint64_t sub_1002BC79C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTSManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_1002BC7DC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002BC85C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002BC8E0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002BC960()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002BC9D4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002BCA54()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_1002BCAD0@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002BCB50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002BCBDC(void *a1, void *a2)
{
  v34 = a1;
  v35 = a2;
  v3 = sub_100005AD4(&qword_1003BCC78);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v30 - v4;
  v30 = sub_100005AD4(&qword_1003BCC70);
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v30 - v6;
  v8 = sub_100005AD4(&qword_1003AC790);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_100005AD4(&qword_1003AABF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentlyPlayingTranslationID;
  v36 = 0;
  v37 = 0;
  sub_100005AD4(&qword_1003AA740);
  Published.init(initialValue:)();
  (*(v13 + 32))(v2 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentSide;
  LOBYTE(v36) = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v17, v11, v8);
  v18 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__wordTimingInfo;
  v36 = 0;
  sub_100005AD4(&qword_1003BCAC8);
  Published.init(initialValue:)();
  (*(v5 + 32))(v2 + v18, v7, v30);
  v19 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__totalDuration;
  v36 = 0;
  v20 = v31;
  Published.init(initialValue:)();
  (*(v32 + 32))(v2 + v19, v20, v33);
  v22 = v34;
  v21 = v35;
  *(v2 + 16) = v34;
  *(v2 + 24) = v21;
  v23 = objc_opt_self();
  v24 = v22;
  v25 = v21;
  v26 = [v23 defaultCenter];
  v27 = objc_opt_self();

  v28 = [v27 sharedInstance];
  [v26 addObserver:v2 selector:"handleAudioInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v28];

  return v2;
}

uint64_t sub_1002BCFF4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  (*(a2 + 40))(ObjectType, a2);
  v13 = static Locale.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  if (v13)
  {
    return (*(a2 + 64))(ObjectType, a2);
  }

  if (a3)
  {
    result = (*(a2 + 64))(ObjectType, a2);
  }

  else
  {
    result = (*(a2 + 72))(ObjectType, a2);
  }

  if (byte_1003D2A90 == 1)
  {
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 stringReplacingRedactionsWithBeepMarker:v17];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v19;
  }

  return result;
}

uint64_t sub_1002BD23C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002BD27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BD294()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002BD2E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002BD338(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001B16C;

  return sub_1002BB5B8(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_1002BD444(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request) censorSpeech];
  v22 = v1;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_censorSpeech) = v2;
  sub_1000A7108(v24);
  if (!v24[3])
  {
    sub_1002BD7CC(v24);
    return;
  }

  sub_100005AD4(&qword_1003AC710);
  sub_10000A2CC(0, &unk_1003B9ED0);
  if (swift_dynamicCast())
  {
    v3 = [v23 route] == 1;
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_offline) = v3;
    v24[0] = v23;
    sub_1000A94FC();
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_lowQualityMT) = TranslationResult.isLowConfidence.getter() & 1;
    v4 = [v23 translations];
    sub_10000A2CC(0, &qword_1003AED08);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_28;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_31;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;

    v8 = [v7 statistics];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 inputTokenCount];
      *(v22 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputTokenCount) = v10;
      v11 = [v9 inputSubtokenCount];

      *(v22 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputSubtokenCount) = v11;
    }

    v12 = [v7 senses];
    sub_10000A2CC(0, &qword_1003AEE80);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
LABEL_12:
        if (v14 >= 1)
        {
          v15 = 0;
          v16 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_senseDisambiguation;
          v17 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_nBestDisplay;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v18 = *(v13 + 8 * v15 + 32);
            }

            v19 = v18;
            ++v15;
            v20 = [v18 isPhrasebookMatch];

            if (v20)
            {
              v21 = v17;
            }

            else
            {
              v21 = v16;
            }

            *(v22 + v21) = 1;
          }

          while (v14 != v15);

          return;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_12;
      }
    }

LABEL_28:
  }
}

uint64_t sub_1002BD7CC(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003B9EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BD834(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65676175676E616CLL;
  v4 = 0xEE0065676E616843;
  if (v2 != 1)
  {
    v3 = 0x4C52556E65706FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x72746E4572657375;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x65676175676E616CLL;
  v8 = 0xEE0065676E616843;
  if (*a2 != 1)
  {
    v7 = 0x4C52556E65706FLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x72746E4572657375;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1002BD950()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BDA04()
{
  String.hash(into:)();
}

Swift::Int sub_1002BDAA4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002BDB54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BEA98(*a1);
  *a2 = result;
  return result;
}

void sub_1002BDB84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEE0065676E616843;
  v5 = 0x65676175676E616CLL;
  if (v2 != 1)
  {
    v5 = 0x4C52556E65706FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72746E4572657375;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

_BYTE *sub_1002BDBF4(char a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_sourceLocale;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair] = 0;
  v5 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_end], 1, 1, v6);
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_eventType] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_characterCount] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputTokenCount] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputSubtokenCount] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_airplaneModeEnabled] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_onDeviceModeEnabled] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_offline] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_censorSpeech] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_lowQualityMT] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_nBestDisplay] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_senseDisambiguation] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TypedInputInstrumentation();
  result = objc_msgSendSuper2(&v9, "init");
  result[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_eventType] = a1;
  return result;
}

id sub_1002BDDD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TypedInputInstrumentation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TypedInputInstrumentation()
{
  result = qword_1003BCCA8;
  if (!qword_1003BCCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BDEF8()
{
  sub_100249EFC(319, &qword_1003B3410, &type metadata accessor for Locale);
  if (v0 <= 0x3F)
  {
    sub_100249EFC(319, &qword_1003AE370, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1002BE048()
{
  result = qword_1003BCCB8;
  if (!qword_1003BCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCCB8);
  }

  return result;
}

void *sub_1002BE09C()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B5130);
  v3 = __chkstk_darwin(v2 - 8);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v79 - v5;
  v81 = type metadata accessor for Date();
  v83 = *(v81 - 8);
  v7 = __chkstk_darwin(v81);
  v79 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v79 - v9;
  v10 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v79 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_sourceLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v17, v12, &qword_1003AFCE0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009EBC(v12, &qword_1003AFCE0);
    v18 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    Locale.ltIdentifier.getter();
    v19 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = &_swiftEmptyDictionarySingleton;
    sub_10029163C(v19, 0x6F4C656372756F73, 0xEC000000656C6163, isUniquelyReferenced_nonNull_native);
    v18 = v85;
    (*(v14 + 8))(v16, v13);
  }

  v21 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair);
  if (v21)
  {
    v22 = v21;
    sub_100003754();
    v23 = String._bridgeToObjectiveC()();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v18;
    sub_10029163C(v23, 0x6150656C61636F6CLL, 0xEA00000000007269, v24);

    v18 = v85;
  }

  sub_1000B0530();
  isa = NSNumber.init(integerLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_characterCount)).super.super.isa;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v18;
  sub_10029163C(isa, 0x6574636172616863, 0xEE00746E756F4372, v26);
  v27 = v85;
  v28 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount;
  v29 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount) > 0).super.super.isa;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v27;
  sub_10029163C(v29, 0x6576456574736170, 0xEA0000000000746ELL, v30);
  v31 = v85;
  v32 = NSNumber.init(integerLiteral:)(*(v1 + v28)).super.super.isa;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v31;
  sub_10029163C(v32, 0xD000000000000014, 0x80000001002FD9F0, v33);
  v34 = v85;
  v35 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_airplaneModeEnabled)).super.super.isa;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v34;
  sub_10029163C(v35, 0x656E616C70726961, 0xEC00000065646F4DLL, v36);
  v37 = v85;
  v38 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_onDeviceModeEnabled)).super.super.isa;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v37;
  sub_10029163C(v38, 0x6563697665446E6FLL, 0xEC00000065646F4DLL, v39);
  v40 = v85;
  v41 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_offline)).super.super.isa;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v40;
  sub_10029163C(v41, 0x656E696C66666FLL, 0xE700000000000000, v42);
  v43 = v85;
  v44 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_censorSpeech)).super.super.isa;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v43;
  sub_10029163C(v44, 0x7053726F736E6563, 0xEC00000068636565, v45);
  v46 = v85;
  v47 = String._bridgeToObjectiveC()();

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v46;
  sub_10029163C(v47, 0x707954746E657665, 0xE900000000000065, v48);
  v49 = v85;
  v50 = Bool._bridgeToObjectiveC()().super.super.isa;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v49;
  sub_10029163C(v50, 0xD000000000000013, 0x80000001002FBCB0, v51);
  v52 = v85;
  v53 = Bool._bridgeToObjectiveC()().super.super.isa;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v52;
  sub_10029163C(v53, 0x696C617551776F6CLL, 0xEC000000544D7974, v54);
  v55 = v85;
  v56 = Bool._bridgeToObjectiveC()().super.super.isa;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v55;
  sub_10029163C(v56, 0x736944747365426ELL, 0xEC00000079616C70, v57);
  v58 = v85;
  v59 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
  swift_beginAccess();
  v60 = v6;
  sub_10001F620(v1 + v59, v6, &qword_1003B5130);
  v61 = v83;
  v62 = *(v83 + 48);
  v63 = v6;
  v64 = v81;
  if (v62(v63, 1, v81) == 1)
  {
    sub_100009EBC(v60, &qword_1003B5130);
  }

  else
  {
    v65 = *(v61 + 32);
    v65(v82, v60, v64);
    v66 = v80;
    sub_10001F620(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_end, v80, &qword_1003B5130);
    if (v62(v66, 1, v64) == 1)
    {
      (*(v61 + 8))(v82, v64);
      sub_100009EBC(v66, &qword_1003B5130);
    }

    else
    {
      v67 = v79;
      v65(v79, v66, v64);
      v68 = v82;
      Date.timeIntervalSince(_:)();
      v70 = NSNumber.init(floatLiteral:)(v69).super.super.isa;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v58;
      sub_10029163C(v70, 0x6E6F697461727564, 0xE800000000000000, v71);
      v58 = v84;
      v72 = *(v61 + 8);
      v72(v67, v64);
      v72(v68, v64);
    }
  }

  v73 = NSNumber.init(integerLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputSubtokenCount)).super.super.isa;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v58;
  sub_10029163C(v73, 0x64726F77627573, 0xE700000000000000, v74);
  v75 = v84;
  v76 = NSNumber.init(integerLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputTokenCount)).super.super.isa;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v75;
  sub_10029163C(v76, 0xD000000000000011, 0x80000001002FDA40, v77);
  return v84;
}

unint64_t sub_1002BEA98(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DF08, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002BEAE4()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002BEB78, v2, v1);
}

void sub_1002BEB78()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 openSessions];

  sub_1002BEEC8();
  sub_1002BEF14();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
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

    v8 = v11 & *(v3 + 56);

    v7 = 0;
    v4 = v3;
  }

  v29 = v6;
  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_28:
      v15 = 0;
      goto LABEL_29;
    }

    v30[8] = v16;
    swift_dynamicCast();
    v15 = v30[7];
    if (!v15)
    {
      goto LABEL_29;
    }

LABEL_18:
    v17 = v4;
    v18 = [v15 role];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v25 = [v15 scene];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 activationState];

      v4 = v17;
      if (!v27)
      {
        v15 = 1;
LABEL_29:
        sub_10000C1D0();

        v28 = v30[1];

        v28(v15);
        return;
      }
    }

    else
    {
LABEL_8:
    }
  }

  v13 = v7;
  v14 = v8;
  if (v8)
  {
LABEL_14:
    v8 = (v14 - 1) & v14;
    v15 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v14 = *(v5 + 8 * v7);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_1002BEEC8()
{
  result = qword_1003BCCC0;
  if (!qword_1003BCCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003BCCC0);
  }

  return result;
}

unint64_t sub_1002BEF14()
{
  result = qword_1003BCCC8;
  if (!qword_1003BCCC8)
  {
    sub_1002BEEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCCC8);
  }

  return result;
}

void sub_1002BEF6C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000A2CC(0, &qword_1003A9C30);
    sub_10000C168();
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_10000A2CC(0, &qword_1003A9C30), swift_dynamicCast(), (v11 = v16) == 0))
    {
LABEL_25:
      sub_10000C1D0();
      return;
    }

LABEL_17:
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v12;
    v14 = v11;
    if (![v13 activationState])
    {

      goto LABEL_22;
    }

    v15 = [v13 activationState];

    if (v15 == 1)
    {
LABEL_22:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
LABEL_7:
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1002BF214()
{
  v0 = sub_1002BF688();
  if (v0)
  {
    v1 = v0;
    v2 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v5 isKeyWindow])
        {

          return v6;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

void *sub_1002BF308(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_10000A2CC(0, &qword_1003A9B68);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_1002C121C(&qword_1003BCCD8, &qword_1003BCCD0);
            for (i = 0; i != v16; ++i)
            {
              sub_100005AD4(&qword_1003BCCD0);
              v19 = sub_1000A39A8(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
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
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1002BF688()
{
  v1 = [v0 connectedScenes];
  sub_10000A2CC(0, &qword_1003A9C30);
  sub_10000C168();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002BEF6C(v2);
  v4 = v3;

  sub_1002BF308(v4);

  v7 = sub_1002C0918(v5, sub_1002C09B4);
  sub_1002BF9AC(&v7);

  return v7;
}

void *sub_1002BF784(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(&qword_1003AF3F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1002BF814(uint64_t a1, uint64_t a2)
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

  sub_100005AD4(&qword_1003AF418);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1002BF8B0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(&qword_1003AF410);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1002BF924(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(&unk_1003AFCC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1002BF9AC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002C11E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002BFA28(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002BFA28(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000A2CC(0, &qword_1003A9B68);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1002BFCA0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002BFB3C(0, v2, 1, a1);
  }
}

void sub_1002BFB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_oneSelectedWithSender_;
LABEL_5:
    v23 = v4;
    v24 = a3;
    v7 = *(v25 + 8 * a3);
    v22 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 windowScene];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v6[315]];
      }

      else
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v14 = [v10 windowScene];
      if (v14)
      {
        v15 = v14;
        v16 = v6;
        v17 = [v14 v6[315]];

        v18 = v13 < v17;
        v6 = v16;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_4;
        }
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v19;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 8;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1002BFCA0(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_115:
    v12 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = v4;
LABEL_118:
      v4 = *(v106 + 2);
      if (v4 >= 2)
      {
        do
        {
          v107 = *v7;
          if (!*v7)
          {
            goto LABEL_153;
          }

          v7 = (v4 - 1);
          v108 = *&v106[16 * v4];
          v109 = v106;
          v110 = *&v106[16 * v4 + 24];
          sub_1002C0498((v107 + 8 * v108), (v107 + 8 * *&v106[16 * v4 + 16]), (v107 + 8 * v110), v6);
          if (v12)
          {
            break;
          }

          if (v110 < v108)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1002C08D4(v109);
          }

          if (v4 - 2 >= *(v109 + 2))
          {
            goto LABEL_143;
          }

          v111 = &v109[16 * v4];
          *v111 = v108;
          *(v111 + 1) = v110;
          sub_1002C0848(v4 - 1);
          v106 = v109;
          v4 = *(v109 + 2);
          v7 = a3;
        }

        while (v4 > 1);
      }

LABEL_126:

      return;
    }

LABEL_149:
    v106 = sub_1002C08D4(v4);
    goto LABEL_118;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v11 = &selRef_oneSelectedWithSender_;
  while (1)
  {
    v12 = v9;
    v13 = v9 + 1;
    if (v13 >= v8)
    {
      v123 = v13;
      goto LABEL_8;
    }

    v114 = v10;
    v116 = v12;
    v14 = *v7;
    v4 = *(*v7 + 8 * v12);
    v15 = *(*v7 + 8 * v13);
    v16 = v4;
    v17 = [v15 v11[396]];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 activationState];

      v11 = &selRef_oneSelectedWithSender_;
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v38 = [v16 v11[396]];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 activationState];

      v11 = &selRef_oneSelectedWithSender_;
      v41 = v19 < v40;
      v7 = a3;
      v42 = v41;
    }

    else
    {

      v42 = v19 != 0x7FFFFFFFFFFFFFFFLL;
    }

    v122 = v42;
    v12 = v116;
    v123 = v116 + 2;
    if (v116 + 2 >= v8)
    {
      v10 = v114;
      if (!v42)
      {
        goto LABEL_8;
      }

LABEL_106:
      v100 = v123;
      if (v123 < v12)
      {
        goto LABEL_146;
      }

      if (v12 < v123)
      {
        v101 = 8 * v123 - 8;
        v102 = 8 * v12;
        v103 = v12;
        do
        {
          if (v103 != --v100)
          {
            v104 = *v7;
            if (!*v7)
            {
              goto LABEL_152;
            }

            v105 = *(v104 + v102);
            *(v104 + v102) = *(v104 + v101);
            *(v104 + v101) = v105;
          }

          v103 = (v103 + 1);
          v101 -= 8;
          v102 += 8;
        }

        while (v103 < v100);
      }

      goto LABEL_8;
    }

    v43 = (v14 + 8 * v116 + 16);
    do
    {
      v4 = v8;
      v44 = *(v43 - 1);
      v45 = *v43;
      v46 = v44;
      v47 = [v45 v11[396]];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 activationState];
      }

      else
      {
        v49 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v50 = [v46 v11[396]];
      v8 = v4;
      if (v50)
      {
        v51 = v50;
        v52 = [v50 activationState];

        v41 = v49 < v52;
        v11 = &selRef_oneSelectedWithSender_;
        v53 = !v41;
        v7 = a3;
        if (((v122 ^ v53) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {

        v7 = a3;
        if (v122 == (v49 == 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_105;
        }
      }

      ++v43;
      ++v123;
    }

    while (v4 != v123);
    v123 = v4;
LABEL_105:
    v10 = v114;
    v12 = v116;
    if (v122)
    {
      goto LABEL_106;
    }

LABEL_8:
    v20 = v7[1];
    if (v123 < v20)
    {
      if (__OFSUB__(v123, v12))
      {
        goto LABEL_145;
      }

      if (v123 - v12 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v123 < v12)
    {
      goto LABEL_144;
    }

    v54 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v54;
    }

    else
    {
      v10 = sub_10028C748(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v10 + 2);
    v55 = *(v10 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v10 = sub_10028C748((v55 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v56;
    v57 = &v10[16 * v4];
    *(v57 + 4) = v12;
    *(v57 + 5) = v123;
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_154;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_74:
          if (v62)
          {
            goto LABEL_133;
          }

          v75 = &v10[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_136;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_140;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v85 = &v10[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_88:
        if (v80)
        {
          goto LABEL_135;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_138;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v7)
        {
          goto LABEL_151;
        }

        v96 = v10;
        v97 = *&v10[16 * v4 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_1002C0498((*v7 + 8 * v97), (*v7 + 8 * *&v10[16 * v58 + 32]), (*v7 + 8 * v98), v12);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v98 < v97)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1002C08D4(v96);
        }

        if (v4 >= *(v96 + 2))
        {
          goto LABEL_130;
        }

        v99 = &v96[16 * v4];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_1002C0848(v58);
        v10 = v96;
        v56 = *(v96 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_131;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_132;
      }

      v70 = &v10[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_134;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_137;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_141;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v123;
    if (v123 >= v8)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_147;
  }

  if (v12 + a4 >= v20)
  {
    v21 = v7[1];
  }

  else
  {
    v21 = v12 + a4;
  }

  if (v21 < v12)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v123 == v21)
  {
    goto LABEL_54;
  }

  v115 = v10;
  v117 = v12;
  v112 = v6;
  v22 = *v7;
  v23 = *v7 + 8 * v123 - 8;
  v24 = v12 - v123;
  v25 = v123;
  v119 = v21;
LABEL_20:
  v121 = v23;
  v124 = v25;
  v26 = *(v22 + 8 * v25);
  v4 = v24;
  while (1)
  {
    v27 = *v23;
    v28 = v26;
    v29 = v27;
    v30 = [v28 v11[396]];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 activationState];
    }

    else
    {
      v32 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v33 = [v29 v11[396]];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 activationState];

      if (v32 >= v35)
      {
        goto LABEL_18;
      }
    }

    else
    {

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_18:
        v11 = &selRef_oneSelectedWithSender_;
LABEL_19:
        v25 = v124 + 1;
        v23 = v121 + 8;
        --v24;
        if ((v124 + 1) == v119)
        {
          v123 = v119;
          v6 = v112;
          v7 = a3;
          v10 = v115;
          v12 = v117;
          goto LABEL_54;
        }

        goto LABEL_20;
      }
    }

    if (!v22)
    {
      break;
    }

    v36 = *v23;
    v26 = *(v23 + 8);
    *v23 = v26;
    *(v23 + 8) = v36;
    v23 -= 8;
    v37 = __CFADD__(v4++, 1);
    v11 = &selRef_oneSelectedWithSender_;
    if (v37)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_1002C0498(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = __dst;
    }

    v15 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_48:
      v43 = v6;
      goto LABEL_52;
    }

    __srca = v15;
    while (1)
    {
      v16 = v5;
      v17 = *v13;
      v18 = *v5;
      v19 = v17;
      v20 = [v18 windowScene];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 activationState];
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = [v19 windowScene];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 activationState];

        if (v22 < v25)
        {
          goto LABEL_17;
        }
      }

      else
      {

        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_17:
          v26 = v16;
          v5 = v16 + 1;
          if (v6 == v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          *v6 = *v26;
          goto LABEL_19;
        }
      }

      v26 = v13;
      v27 = v6 == v13++;
      v5 = v16;
      if (!v27)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v6;
      v15 = __srca;
      if (v13 >= __srca || v5 >= v4)
      {
        goto LABEL_48;
      }
    }
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    v28 = a4;
    memmove(a4, __dst, 8 * v12);
    v5 = __dst;
    a4 = v28;
  }

  __srcb = a4;
  v15 = &a4[v12];
  if (v10 < 8)
  {
    v13 = a4;
    goto LABEL_51;
  }

  v13 = a4;
  if (v5 <= v6)
  {
LABEL_51:
    v43 = v5;
    goto LABEL_52;
  }

  v30 = &selRef_oneSelectedWithSender_;
  do
  {
    v45 = v5;
    v31 = v5 - 1;
    --v4;
    v32 = v15;
    v46 = v31;
    while (1)
    {
      v33 = *--v32;
      v34 = *v31;
      v35 = v33;
      v36 = v34;
      v37 = [v35 v30[396]];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 activationState];
      }

      else
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v40 = [v36 v30[396]];
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v42 = [v40 activationState];

      if (v39 < v42)
      {
        goto LABEL_43;
      }

LABEL_41:
      v31 = v46;
      if (v4 + 1 != v15)
      {
        *v4 = *v32;
      }

      --v4;
      v15 = v32;
      v30 = &selRef_oneSelectedWithSender_;
      if (v32 <= __srcb)
      {
        v15 = v32;
        v13 = __srcb;
        v43 = v45;
        goto LABEL_52;
      }
    }

    if (v39 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_41;
    }

LABEL_43:
    v43 = v46;
    if (v4 + 1 != v45)
    {
      *v4 = *v46;
    }

    v13 = __srcb;
    v30 = &selRef_oneSelectedWithSender_;
    if (v15 <= __srcb)
    {
      break;
    }

    v5 = v46;
  }

  while (v46 > v6);
LABEL_52:
  if (v43 != v13 || v43 >= (v13 + ((v15 - v13 + (v15 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v43, v13, 8 * ((v15 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1002C0848(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002C08D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1002C0918(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_1002BF924(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1002C09B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCD8, &qword_1003BCCD0);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003BCCD0);
            v9 = sub_1000A39A8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A2CC(0, &qword_1003A9B68);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C0B54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCE8, &qword_1003B8CB8);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003B8CB8);
            v9 = sub_1000A3A28(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PersistedTranslation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C0CE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCD00, &qword_1003BCCF8);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003BCCF8);
            v9 = sub_1000A39A8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A2CC(0, &unk_1003AED40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C0E84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCE0, &qword_1003BC518);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003BC518);
            v9 = sub_1000A3AB0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CommittedTranslationViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C1014(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCF0, &qword_1003B30E8);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003B30E8);
            v9 = sub_1000A3B30(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LanguageSelectionDownloadModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C121C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1002C1274(double a1)
{
  v3 = objc_allocWithZone(NSString);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:v4];

  sub_100005AD4(&unk_1003BBD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_10022B668();
  *(inited + 40) = v1;
  v7 = NSFontAttributeName;
  v8 = v1;
  sub_100292588(inited);
  swift_setDeallocating();
  sub_1000E4F60(inited + 32);
  type metadata accessor for Key(0);
  sub_10013B81C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 boundingRectWithSize:1 options:isa attributes:0 context:{a1, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v15;
  v19.size.height = v17;
  return ceil(CGRectGetHeight(v19));
}

id sub_1002C1404(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v42 = v7;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    v41 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v12 pointSize];
      v16 = v15;
      [*a2 pointSize];
      if (v16 < v17)
      {
        v18 = i;
        v19 = a2;
        v20 = objc_allocWithZone(NSString);
        v21 = String._bridgeToObjectiveC()();
        v22 = [v20 initWithString:v21];

        v45[0] = NSFontAttributeName;
        v45[4] = sub_10022B668();
        v45[1] = v13;
        sub_100005AD4(&qword_1003BBD58);
        a2 = static _DictionaryStorage.allocate(capacity:)();
        v23 = NSFontAttributeName;
        v24 = v13;
        sub_1002C217C(v45, &v43);
        v7 = v43;
        v25 = sub_10028DF64(v43);
        if (v26)
        {
          goto LABEL_18;
        }

        *(a2 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        *(*(a2 + 48) + 8 * v25) = v7;
        sub_10005128C(&v44, (*(a2 + 56) + 32 * v25));
        v27 = *(a2 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_19;
        }

        *(a2 + 16) = v29;
        sub_1000E4F60(v45);
        type metadata accessor for Key(0);
        sub_10013B81C();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v22 boundingRectWithSize:1 options:isa attributes:0 context:{a3, 1.79769313e308}];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v46.origin.x = v32;
        v46.origin.y = v34;
        v46.size.width = v36;
        v46.size.height = v38;
        a2 = v19;
        i = v18;
        v10 = v41;
        v7 = v42;
        v11 = v40;
        if (ceil(CGRectGetHeight(v46)) < a4)
        {
          return v24;
        }
      }

      ++v9;
      if (v14 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

id sub_1002C1718(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v42 = v7;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    v41 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v12 pointSize];
      v16 = v15;
      [*a2 pointSize];
      if (v17 < v16)
      {
        v18 = i;
        v19 = a2;
        v20 = objc_allocWithZone(NSString);
        v21 = String._bridgeToObjectiveC()();
        v22 = [v20 initWithString:v21];

        v45[0] = NSFontAttributeName;
        v45[4] = sub_10022B668();
        v45[1] = v13;
        sub_100005AD4(&qword_1003BBD58);
        a2 = static _DictionaryStorage.allocate(capacity:)();
        v23 = NSFontAttributeName;
        v24 = v13;
        sub_1002C217C(v45, &v43);
        v7 = v43;
        v25 = sub_10028DF64(v43);
        if (v26)
        {
          goto LABEL_18;
        }

        *(a2 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        *(*(a2 + 48) + 8 * v25) = v7;
        sub_10005128C(&v44, (*(a2 + 56) + 32 * v25));
        v27 = *(a2 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_19;
        }

        *(a2 + 16) = v29;
        sub_1000E4F60(v45);
        type metadata accessor for Key(0);
        sub_10013B81C();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v22 boundingRectWithSize:1 options:isa attributes:0 context:{a3, 1.79769313e308}];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v46.origin.x = v32;
        v46.origin.y = v34;
        v46.size.width = v36;
        v46.size.height = v38;
        a2 = v19;
        i = v18;
        v10 = v41;
        v7 = v42;
        v11 = v40;
        if (ceil(CGRectGetHeight(v46)) < a4)
        {
          return v24;
        }
      }

      ++v9;
      if (v14 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

id sub_1002C1A2C(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100005AD4(&unk_1003AFCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D53E0;
  v8 = objc_opt_self();
  v9 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
  v10 = objc_opt_self();
  [v9 pointSize];
  v11 = [v10 systemFontOfSize:? weight:?];
  v12 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v13 = [v12 scaledFontForFont:v11 maximumPointSize:1.79769313e308];

  *(inited + 32) = v13;
  v14 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:0];
  [v14 pointSize];
  v15 = [v10 systemFontOfSize:? weight:?];
  v16 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v17 = [v16 scaledFontForFont:v15 maximumPointSize:1.79769313e308];

  *(inited + 40) = v17;
  v18 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:0];
  [v18 pointSize];
  v19 = [v10 systemFontOfSize:? weight:?];
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
  v21 = [v20 scaledFontForFont:v19 maximumPointSize:1.79769313e308];

  *(inited + 48) = v21;
  v22 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:0];
  [v22 pointSize];
  v23 = [v10 systemFontOfSize:? weight:?];
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v25 = [v24 scaledFontForFont:v23 maximumPointSize:1.79769313e308];

  *(inited + 56) = v25;
  if (a5)
  {
    v26 = a5;
  }

  else
  {
    v27 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
    [v27 pointSize];
    v28 = [v10 systemFontOfSize:? weight:?];
    v29 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
    v30 = [v29 scaledFontForFont:v28 maximumPointSize:1.79769313e308];

    v26 = v30;
  }

  v40 = v26;
  v31 = floor(a1);
  v32 = a5;
  v33 = sub_1002C1274(v31);

  v34 = floor(a2);
  if (v34 >= v33)
  {
    v35 = sub_1002C1718(inited, &v40, v31, v34);

    if (!v35)
    {
      return v26;
    }

    return v35;
  }

  v35 = sub_1002C1404(inited, &v40, v31, v34);

  if (v35)
  {
LABEL_6:

    return v35;
  }

  v37 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {

    return v26;
  }

  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  v38 = *(inited + 32 + 8 * (v37 - 1));

  return v38;
}

id sub_1002C1F50(uint64_t a1, id a2)
{
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for UserInterfaceSizeClass.compact(_:), v3);
  v7 = static UserInterfaceSizeClass.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  v8 = &UIFontTextStyleTitle2;
  if ((v7 & 1) == 0)
  {
    v8 = &UIFontTextStyleTitle1;
  }

  v9 = *v8;
  if (a2)
  {
    a2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a2];
  }

  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:a2];
  v11 = objc_opt_self();
  [v10 pointSize];
  v12 = [v11 systemFontOfSize:? weight:?];
  v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:v9];
  v14 = [v13 scaledFontForFont:v12 maximumPointSize:1.79769313e308];

  return v14;
}

uint64_t sub_1002C217C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C21EC()
{
  [v0 frame];
  v2 = v1;
  v3 = [v0 _restingHeights];
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v3;
  sub_1000B0530();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      v17 = _swiftEmptyArrayStorage;
      sub_1000C4E38(0, v6 & ~(v6 >> 63), 0);
      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = 0;
        v8 = v17;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v9 = *(v5 + 8 * v7 + 32);
          }

          v10 = v9;
          CGFloat.init(truncating:)();
          v12 = v11;

          v17 = v8;
          v14 = *(v8 + 2);
          v13 = *(v8 + 3);
          if (v14 >= v13 >> 1)
          {
            sub_1000C4E38((v13 > 1), v14 + 1, 1);
            v8 = v17;
          }

          ++v7;
          *(v8 + 2) = v14 + 1;
          v8[v14 + 4] = v12;
        }

        while (v6 != v7);

        goto LABEL_15;
      }

      __break(1u);
LABEL_19:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:
  v17 = v8;

  sub_1002C2554(&v17);

  if (*(v17 + 2) == 2)
  {
    v15 = v17[5];

    return v2 == v15;
  }

  else
  {

    return 0;
  }
}

void sub_1002C23E4()
{
  v1 = [v0 _restingHeights];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1000B0530();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == 2)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    goto LABEL_17;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
LABEL_17:

    return;
  }

  v5 = 2;
  v6 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 32);
    goto LABEL_7;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  do
  {
    __break(1u);
LABEL_23:
    v5 = v4;
    v6 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v8 = v7;
    CGFloat.init(truncating:)();

    v4 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_13;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  while (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
  v9 = *(v3 + 8 * v4 + 32);
LABEL_13:
  v10 = v9;

  CGFloat.init(truncating:)();
}

Swift::Int sub_1002C2554(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002C1208(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1002C2688(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1002C2688(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1002C08D4(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1002C2BE4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028C748(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_10028C748((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        sub_1002C2BE4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1002C2BE4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void static UIScene.isApplicationBasedSceneForeground.getter()
{
  sub_1002C2E20();
  if (v0)
  {
    v1 = v0;
    [v0 activationState];
  }
}

void sub_1002C2E20()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10022281C();
  sub_10000C168();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = v36;
    v4 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v3 = v2;
  }

  v11 = (v5 + 64) >> 6;
  v34 = v4;
  v32 = v11;
  v33 = v3;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v16 = v35, v14 = v6, v15 = v7, !v35))
    {
LABEL_25:
      sub_10000C1D0();

      return;
    }

LABEL_18:
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      v20 = [v18 session];
      v21 = [v20 role];

      v22 = String._bridgeToObjectiveC()();
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v23 == v26 && v25 == v28)
      {

        v31 = v19;

LABEL_28:
        sub_10000C1D0();

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }

        return;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v31 = v19;

      v11 = v32;
      v3 = v33;
      v4 = v34;
      if (v30)
      {
        goto LABEL_28;
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_25;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1002C31A4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D53E0;
  v6 = [a1 topAnchor];
  v7 = [v2 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 leadingAnchor];
  v10 = [v2 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [a1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_1002C33E4()
{
  v1 = [v0 subviews];
  sub_10000A2CC(0, &qword_1003AFCF0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v20 = v2 + 32;
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_optionButtonPressedWithSender_;
    v23 = i;
    v24 = v2;
    v22 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v21 + 16))
        {
          goto LABEL_30;
        }

        v9 = *(v20 + 8 * v4);
      }

      v8 = v9;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v11 = [v9 v6[399]];
      if (v11)
      {
        v12 = v11;
        v25 = v8;
        sub_10000A2CC(0, qword_1003BCD08);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
          if (v14)
          {
LABEL_15:
            v15 = 0;
            v2 = 0x100379000;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_28;
                }

                v16 = *(v13 + 8 * v15 + 32);
              }

              v17 = v16;
              v18 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v2 = &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOMQ_ptr;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              ++v15;
              if (v18 == v14)
              {
                i = v23;
                v2 = v24;
                v5 = v22;
                v6 = &selRef_optionButtonPressedWithSender_;
                goto LABEL_5;
              }
            }

            __break(1u);
LABEL_28:
            __break(1u);
            break;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_15;
          }
        }

LABEL_5:

        isa = Array._bridgeToObjectiveC()().super.isa;

        v8 = v25;
        [v25 setGestureRecognizers:isa];
      }

      sub_1002C33E4();

      if (v4 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_32:
}

id sub_1002C36D0()
{
  v1 = [v0 nextResponder];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 nextResponder];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = sub_1002C36D0();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1002C378C(void *a1)
{
  [objc_msgSend(a1 "container")];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != 1)
  {
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 readableContentGuide];

      [v9 layoutFrame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18.origin.x = v11;
      v18.origin.y = v13;
      v18.size.width = v15;
      v18.size.height = v17;
      CGRectGetWidth(v18);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1002C38C8()
{
  result = sub_100226734();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for WritableKeyPath();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PassthroughSubject();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002C39B8(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1002C3B08(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1002C3CF4()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1003BCD90 = result;
  *algn_1003BCD98 = v1;
  return result;
}

id sub_1002C3D24()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_1002C3D80()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_1002C3DDC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_1002C3E3C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_1002C3E98()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C3F34()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C3FC8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C405C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C40F0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100005AD4(&qword_1003BCDB8);
  sub_1002C444C(&qword_1003BCDC8, qword_1003BCDD0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100112CE8(v3, v5);
  return v7;
}

uint64_t sub_1002C424C()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100005AD4(&qword_1003BCDA0);
  sub_1002C4390();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;

  sub_100112C80(v1, v3);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100112CE8(v1, v3);
  v5 = String._bridgeToObjectiveC()();
  [v0 setObject:isa forKey:v5];
  swift_unknownObjectRelease();

  sub_100112CD4(v1, v3);
}

unint64_t sub_1002C4390()
{
  result = qword_1003BCDA8;
  if (!qword_1003BCDA8)
  {
    sub_100005EA8(&qword_1003BCDA0);
    sub_1002C444C(&qword_1003BCDB0, &qword_1003BCDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCDA8);
  }

  return result;
}

uint64_t sub_1002C444C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(&qword_1003BCDB8);
    sub_1002C44D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002C44D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SELFLoggingInvocationDescription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002C4518()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100005AD4(&qword_1003B9548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D1370;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001002F2770;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x79616C706F747541;
  *(inited + 88) = 0xEB00000000535454;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  sub_100292258(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003BBE00);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 registerDefaults:isa];
}

uint64_t sub_1002C4674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1002C476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1002C4864@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a7;
  v40 = a6;
  v33 = a3;
  v34 = a2;
  v35 = a1;
  v38 = a8;
  v10 = *(a4 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v14);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v33 - v22;
  v24 = type metadata accessor for _ConditionalContent();
  v37 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v33 - v25;
  if (v35)
  {
    v34(v36);
    v27 = v39;
    sub_10002D870(v21, a5, v39);
    v28 = *(v18 + 8);
    v28(v21, a5);
    sub_10002D870(v23, a5, v27);
    sub_1002C4674(v21, a5);
    v28(v21, a5);
    v28(v23, a5);
  }

  else
  {
    v29 = v40;
    sub_10002D870(v36, a4, v40);
    sub_10002D870(v16, a4, v29);
    sub_1002C476C(v13, a5, a4);
    v30 = *(v10 + 8);
    v30(v13, a4);
    v30(v16, a4);
  }

  v41 = v39;
  v42 = v40;
  WitnessTable = swift_getWitnessTable();
  sub_10002D870(v26, v24, WitnessTable);
  return (*(v37 + 8))(v26, v24);
}

double sub_1002C4C34(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  static os_log_type_t.fault.getter();
  v9 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_10002F620(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

id sub_1002C4D7C()
{
  type metadata accessor for WaveformUIKitView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1002C5158();
  return v0;
}

void sub_1002C4DBC(char *a1)
{
  v3 = *(v1 + 12);
  *&a1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale] = 1.0 / sub_1002C4C34(*v1, *(v1 + 8));
  [a1 setNeedsLayout];
  *&a1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel] = v3;
  sub_1002C59D4();
}

uint64_t sub_1002C4E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002C60AC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002C4E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002C60AC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002C4EFC()
{
  sub_1002C60AC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_1002C4F7C()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for WaveformUIKitView();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer];
    v4 = v2;
    [v4 bounds];
    [v3 setBounds:?];
    CATransform3DMakeScale(&v24, *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale], *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale], 1.0);
    [v3 setTransform:&v24];
    v5 = [v1 layer];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v26.origin.x = v7;
    v26.origin.y = v9;
    v26.size.width = v11;
    v26.size.height = v13;
    MidX = CGRectGetMidX(v26);
    v15 = [v1 layer];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v27.origin.x = v17;
    v27.origin.y = v19;
    v27.size.width = v21;
    v27.size.height = v23;
    [v3 setPosition:{MidX, CGRectGetMinY(v27)}];
  }
}

void sub_1002C5158()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v40 - v7;
  __chkstk_darwin(v6);
  v10 = v40 - v9;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package;
  if (!*&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package])
  {
    v12 = [objc_opt_self() mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v40[0] = v11;
    v15 = v1;
    v16 = v2;
    v17 = v14;
    v18 = [v12 URLForResource:v13 withExtension:v14];

    v19 = v16;
    v20 = v15;
    v21 = v10;
    v22 = v40[0];
    if (v18)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v19 + 32))(v21, v8, v20);
      sub_10000A2CC(0, &qword_1003BCEE0);
      (*(v19 + 16))(v5, v21, v20);
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = sub_1002C56B0(v5, v23, v24, 0);
      v26 = [v25 rootLayer];
      if (v26)
      {
        v27 = v26;
        v28 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer];
        v29 = [v28 superlayer];
        if (!v29)
        {
          [v28 setAnchorPoint:{0.5, 0.0}];
          v30 = [v0 layer];
          [v30 addSublayer:v28];
          v29 = v30;
        }

        [v28 setGeometryFlipped:{objc_msgSend(v25, "isGeometryFlipped")}];
        [v28 addSublayer:v27];
        v31 = *&v0[v22];
        *&v0[v22] = v25;
        v32 = v25;

        v33 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer];
        *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer] = v27;
        v34 = v27;

        v35 = String._bridgeToObjectiveC()();
        v36 = [v32 publishedObjectWithName:v35];

        if (v36)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
        }

        v43[0] = v41;
        v43[1] = v42;
        if (*(&v42 + 1))
        {
          sub_10000A2CC(0, &qword_1003BCEE8);
          v37 = swift_dynamicCast();
          v38 = v40[1];
          if (!v37)
          {
            v38 = 0;
          }
        }

        else
        {
          sub_10026ED4C(v43);
          v38 = 0;
        }

        v39 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer];
        *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer] = v38;

        sub_1002C5878();
        (*(v19 + 8))(v21, v20);
      }

      else
      {
        (*(v19 + 8))(v21, v20);
      }
    }
  }
}

id sub_1002C56B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

void sub_1002C5878()
{
  v1 = [v0 window];
  if (!v1)
  {
LABEL_4:
    v3 = [v0 window];
    if (!v3)
    {
      v4 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink;
      [*&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink] invalidate];
      v3 = *&v0[v4];
      *&v0[v4] = 0;
    }

    goto LABEL_9;
  }

  v2 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink;
  if (*&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink])
  {

    goto LABEL_4;
  }

  v10 = v1;
  v5 = [v1 screen];
  v6 = [v5 displayLinkWithTarget:v0 selector:"_updateParticles"];

  v7 = *&v0[v2];
  *&v0[v2] = v6;
  v8 = v6;

  if (v8)
  {
    v9 = [objc_opt_self() currentRunLoop];
    [v8 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];
  }

  v3 = v10;
LABEL_9:
}

void sub_1002C59D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer);
  if (!v1)
  {
    return;
  }

  v17 = v1;
  v2 = [v17 emitterCells];
  if (!v2)
  {
    v14 = v17;
LABEL_11:

    return;
  }

  v3 = v2;
  sub_10000A2CC(0, &qword_1003BCED8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v17;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v17;
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;

      *&v8 = (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel) * 2000.0) + 3000.0;
      [v7 setBirthRate:v8];
      isa = Float._bridgeToObjectiveC()().super.super.isa;
      v10 = String._bridgeToObjectiveC()();
      [v7 setValue:isa forKeyPath:v10];

      v11 = CACurrentMediaTime();
      sin(v11 + v11);
      v12 = Float._bridgeToObjectiveC()().super.super.isa;
      v13 = String._bridgeToObjectiveC()();
      [v7 setValue:v12 forKeyPath:v13];

      v16 = String._bridgeToObjectiveC()();
      [v17 reloadValueForKeyPath:v16];

      v14 = v16;
      goto LABEL_11;
    }
  }
}

id sub_1002C5CDC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer;
  *&v4[v9] = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale] = 0x3FF0000000000000;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for WaveformUIKitView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1002C5DDC(void *a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer;
  *&v1[v3] = [objc_allocWithZone(CALayer) init];
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale] = 0x3FF0000000000000;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WaveformUIKitView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1002C5EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WaveformUIKitView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002C5FBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1002C6004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1002C6058()
{
  result = qword_1003BCEF0;
  if (!qword_1003BCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCEF0);
  }

  return result;
}

unint64_t sub_1002C60AC()
{
  result = qword_1003BCEF8;
  if (!qword_1003BCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCEF8);
  }

  return result;
}

uint64_t sub_1002C612C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1003D2458 == -1)
  {
    if (qword_1003D2460)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1002C6608();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1003D2460)
    {
      return _availability_version_check();
    }
  }

  if (qword_1003D2450 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1002C6620();
    a3 = v10;
    a4 = v9;
    v8 = dword_1003D2440 < v11;
    if (dword_1003D2440 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1003D2444 > a3)
      {
        return 1;
      }

      if (dword_1003D2444 >= a3)
      {
        return dword_1003D2448 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1003D2440 < a2;
  if (dword_1003D2440 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1002C62C0(uint64_t result)
{
  v1 = qword_1003D2460;
  if (qword_1003D2460)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1003D2460 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1003D2440, &dword_1003D2444, &dword_1003D2448);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Locale.ltLocalizedAppString(_:table:bundle:)(Swift::String _, Swift::String table, NSBundle bundle)
{
  v3 = Locale.ltLocalizedAppString(_:table:bundle:)(_._countAndFlagsBits, _._object, table._countAndFlagsBits, table._object, bundle.super.isa);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forIdentifier:)(Swift::String forIdentifier)
{
  v1 = Locale.localizedString(forIdentifier:)(forIdentifier._countAndFlagsBits, forIdentifier._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forLanguageCode:)(Swift::String forLanguageCode)
{
  v1 = Locale.localizedString(forLanguageCode:)(forLanguageCode._countAndFlagsBits, forLanguageCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

uint64_t static Tips.RuleBuilder.buildExpression(_:)()
{
  return static Tips.RuleBuilder.buildExpression(_:)();
}

{
  return static Tips.RuleBuilder.buildExpression(_:)();
}

uint64_t Tips.Rule.init<A>(_:_:)()
{
  return Tips.Rule.init<A>(_:_:)();
}

{
  return Tips.Rule.init<A>(_:_:)();
}

uint64_t Publisher.combineLatest<A, B, C>(_:_:_:)()
{
  return Publisher.combineLatest<A, B, C>(_:_:_:)();
}

{
  return Publisher.combineLatest<A, B, C>(_:_:_:)();
}

uint64_t EnvironmentValues.subscript.getter()
{
  return EnvironmentValues.subscript.getter();
}

{
  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.subscript.setter()
{
  return EnvironmentValues.subscript.setter();
}

{
  return EnvironmentValues.subscript.setter();
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:)()
{
  return LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
}

{
  return LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
}

uint64_t _ConditionalContent<>.init(storage:)()
{
  return _ConditionalContent<>.init(storage:)();
}

{
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ToolbarContentBuilder.buildBlock<A>(_:)()
{
  return static ToolbarContentBuilder.buildBlock<A>(_:)();
}

{
  return static ToolbarContentBuilder.buildBlock<A>(_:)();
}

uint64_t static ToolbarContentBuilder.buildIf<A>(_:)()
{
  return static ToolbarContentBuilder.buildIf<A>(_:)();
}

{
  return static ToolbarContentBuilder.buildIf<A>(_:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)()
{
  return View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();
}

{
  return View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_Bool_String __swiftcall String.truncated(limit:)(Swift::Int limit)
{
  v1 = String.truncated(limit:)(limit);
  result._1._object = v3;
  result._1._countAndFlagsBits = v2;
  result._0 = v1;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

UIMenu_optional __swiftcall _LTDisambiguableSentence.menu(forLinkIndex:)(Swift::UInt forLinkIndex)
{
  v1 = _LTDisambiguableSentence.menu(forLinkIndex:)(forLinkIndex);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}