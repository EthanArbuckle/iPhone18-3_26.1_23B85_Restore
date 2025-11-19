uint64_t sub_100603AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s13FavoriteBadgeVMa(0);
  v22[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  v14 = _s8ListCellVMa(0);
  if (*(a1 + *(v14 + 36)) == 1)
  {
    v15 = a1 + *(v14 + 20);
    v16 = v15 + *(type metadata accessor for ArtworkImage.Info(0) + 28);
    if (*(v16 + 8) == 1)
    {
      v17 = 0.0;
      v18 = 7.0;
      if (*(a1 + 40))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = *v16;
      v18 = 7.0;
      if (*(a1 + 40))
      {
LABEL_10:
        *v10 = v18 + v17;
        *(v10 + 8) = 0;
        v22[1] = 0x4020000000000000;
        (*(v5 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v4);
        sub_100363C0C();
        ScaledMetric.init(wrappedValue:relativeTo:)();
        v21 = *(v8 + 24);
        *(v10 + v21) = swift_getKeyPath();
        sub_10010FC20(&qword_1011955D8);
        swift_storeEnumTagMultiPayload();
        sub_10061601C(v10, v13, _s13FavoriteBadgeVMa);
        sub_10061601C(v13, a2, _s13FavoriteBadgeVMa);
        return (*(v22[0] + 56))(a2, 0, 1, v8);
      }
    }

    v18 = 0.0;
    goto LABEL_10;
  }

  v19 = *(v22[0] + 56);

  return v19(a2, 1, 1, v8);
}

uint64_t sub_100603DC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v142 = a3;
  v123 = sub_10010FC20(&qword_101198CE8);
  __chkstk_darwin(v123);
  v122 = v120 - v4;
  v5 = sub_10010FC20(&qword_101198CF0);
  v138 = *(v5 - 8);
  v139 = v5;
  __chkstk_darwin(v5);
  v121 = v120 - v6;
  v7 = sub_10010FC20(&qword_101198CF8);
  __chkstk_darwin(v7 - 8);
  v141 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v140 = v120 - v10;
  v11 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v11 - 8);
  v13 = v120 - v12;
  v14 = type metadata accessor for Text.Suffix();
  v126 = *(v14 - 8);
  v127 = v14;
  __chkstk_darwin(v14);
  v125 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10010FC20(&qword_101198D00);
  __chkstk_darwin(v128);
  v124 = v120 - v16;
  v17 = sub_10010FC20(&qword_101198D08);
  v132 = *(v17 - 8);
  v133 = v17;
  __chkstk_darwin(v17);
  v131 = v120 - v18;
  v129 = sub_10010FC20(&qword_101198D10);
  __chkstk_darwin(v129);
  v134 = v120 - v19;
  v135 = sub_10010FC20(&qword_101198D18);
  __chkstk_darwin(v135);
  v136 = v120 - v20;
  v21 = sub_10010FC20(&qword_101198D20);
  __chkstk_darwin(v21 - 8);
  v137 = v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v145 = v120 - v24;
  v25 = _s8ListCellVMa(0);
  v26 = *(v25 + 28);
  v27 = v25;
  v143 = a1;
  v144 = v25;
  v28 = a1;
  v29 = (a1 + v26);
  v30 = v29[1];
  *&v158 = *v29;
  *(&v158 + 1) = v30;
  v31 = sub_100009838();

  v120[1] = v31;
  v32 = Text.init<A>(_:)();
  v34 = v33;
  *&v158 = v32;
  *(&v158 + 1) = v33;
  v36 = v35 & 1;
  LOBYTE(v159) = v35 & 1;
  *(&v159 + 1) = v37;
  sub_1000089F8(v28 + *(v27 + 40), v13, &unk_10118D2F0);
  v38 = TextBadge.init(for:isPlayable:)(v13, 1);
  v39 = TextBadge.view.getter(v38);
  v41 = v40;
  v43 = v42;
  v44 = v125;
  static Text.Suffix.alwaysVisible(_:)();
  v45 = v43 & 1;
  v46 = v124;
  sub_10011895C(v39, v41, v45);

  View.textSuffix(_:)();
  (*(v126 + 8))(v44, v127);
  v47 = v36;
  v48 = v143;
  sub_10011895C(v32, v34, v47);

  v49 = v130;
  v50 = Font.init(_:)();
  KeyPath = swift_getKeyPath();
  v52 = (v46 + *(sub_10010FC20(&qword_101187818) + 36));
  *v52 = KeyPath;
  v52[1] = v50;
  sub_100616140(v48, &v158);
  v53 = sub_10000954C(&v158, *(&v159 + 1));
  v54 = __chkstk_darwin(v53);
  (*(v56 + 16))(v120 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
  sub_10000959C(&v158);
  v57 = v128;
  *(v46 + *(v57 + 36)) = AnyShapeStyle.init<A>(_:)();
  [v49 lineHeight];
  [v49 leading];
  v58 = v48 + *(v144 + 20);
  v130 = (v58 + *(type metadata accessor for ArtworkImage.Info(0) + 28));
  sub_100616178();
  v59 = v131;
  View.bodyHeadOutdent(_:)();
  sub_1000095E8(v46, &qword_101198D00);
  v60 = swift_getKeyPath();
  v61 = v134;
  (*(v132 + 32))(v134, v59, v133);
  v62 = v61 + *(v129 + 36);
  *v62 = v60;
  *(v62 + 8) = 2;
  *(v62 + 16) = 0;
  sub_100602224();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v63 = v136;
  sub_10003D17C(v61, v136, &qword_101198D10);
  v64 = v135;
  v65 = (v63 + *(v135 + 36));
  v66 = v163;
  v65[4] = v162;
  v65[5] = v66;
  v65[6] = v164;
  v67 = v159;
  *v65 = v158;
  v65[1] = v67;
  v68 = v161;
  v65[2] = v160;
  v65[3] = v68;
  v69 = AccessibilityIdentifier.libraryListCellTitle.unsafeMutableAddressor();
  v70 = *v69;
  v71 = v69[1];
  v72 = v69[2];
  v73 = v69[3];
  v74 = sub_100616318();

  View.accessibilityIdentifier(_:)(v70, v71, v72, v73, v64, v74);

  sub_1000095E8(v63, &qword_101198D18);
  v75 = (v48 + *(v144 + 32));
  v76 = v75[1];
  if (v76)
  {
    v136 = *v75;
    *&v153[0] = v136;
    *(&v153[0] + 1) = v76;
    v144 = v76;

    v77 = Text.init<A>(_:)();
    v79 = v78;
    v81 = v80;
    v82 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    Font.init(_:)();
    v83 = Text.font(_:)();
    v85 = v84;
    v87 = v86;

    sub_10011895C(v77, v79, v81 & 1);

    LODWORD(v153[0]) = static HierarchicalShapeStyle.secondary.getter();
    v88 = Text.foregroundStyle<A>(_:)();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    sub_10011895C(v83, v85, v87 & 1);

    LOBYTE(v83) = static Edge.Set.leading.getter();
    sub_100602224();
    EdgeInsets.init(_all:)();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v156 = v92 & 1;
    v155 = 0;
    v103 = swift_getKeyPath();
    v157 = 0;
    *&v146 = v88;
    *(&v146 + 1) = v90;
    LOBYTE(v147) = v92 & 1;
    *(&v147 + 1) = v94;
    LOBYTE(v148) = v83;
    *(&v148 + 1) = v96;
    *&v149 = v98;
    *(&v149 + 1) = v100;
    *&v150 = v102;
    BYTE8(v150) = 0;
    *&v151 = v103;
    *(&v151 + 1) = 1;
    v152 = 0;
    v104 = AccessibilityIdentifier.libraryListCellSubtitle.unsafeMutableAddressor();
    v105 = *v104;
    v106 = v104[1];
    v107 = v104[2];
    v108 = v104[3];

    v109 = sub_10010FC20(&qword_101198D50);
    v110 = sub_100616498();
    v111 = v122;
    View.accessibilityIdentifier(_:)(v105, v106, v107, v108, v109, v110);

    v153[4] = v150;
    v153[5] = v151;
    v154 = v152;
    v153[0] = v146;
    v153[1] = v147;
    v153[2] = v148;
    v153[3] = v149;
    sub_1000095E8(v153, &qword_101198D50);
    sub_100615550(&qword_101198D60, &qword_101198CE8, &unk_100ED7830, sub_100616498);
    v112 = v121;
    View.accessibilityHidden(_:)();
    sub_1000095E8(v111, &qword_101198CE8);
    v113 = v140;
    sub_10003D17C(v112, v140, &qword_101198CF0);
    (*(v138 + 56))(v113, 0, 1, v139);
  }

  else
  {
    v113 = v140;
    (*(v138 + 56))(v140, 1, 1, v139);
  }

  v114 = v145;
  v115 = v137;
  sub_1000089F8(v145, v137, &qword_101198D20);
  v116 = v141;
  sub_1000089F8(v113, v141, &qword_101198CF8);
  v117 = v142;
  sub_1000089F8(v115, v142, &qword_101198D20);
  v118 = sub_10010FC20(&qword_101198D48);
  sub_1000089F8(v116, v117 + *(v118 + 48), &qword_101198CF8);
  sub_1000095E8(v113, &qword_101198CF8);
  sub_1000095E8(v114, &qword_101198D20);
  sub_1000095E8(v116, &qword_101198CF8);
  return sub_1000095E8(v115, &qword_101198D20);
}

uint64_t sub_100604B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(_s8ListCellVMa(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  _s17ContextMenuButtonVMa(0);
  sub_100112878(v4);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_100604BE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v107 = *(v3 - 8);
  v108 = v3;
  __chkstk_darwin(v3);
  v106 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v103 = *(v5 - 8);
  v104 = v5;
  __chkstk_darwin(v5);
  v102 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001109D0(&qword_101198E18);
  v109 = a1;
  v8 = a1[2];
  v9 = a1[3];
  v111 = v7;
  v112 = v9;
  v100 = a1[4];
  v101 = v8;
  _s9TrackCellV13TrailingIconsVMa();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101184C80);
  sub_1001109D0(&qword_101198E20);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v99 = type metadata accessor for VStack();
  v97 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198E28);
  swift_getTupleTypeMetadata3();
  v98 = type metadata accessor for TupleView();
  sub_1001109D0(&qword_101198E30);
  sub_1001109D0(&qword_101198E38);
  sub_1001109D0(&qword_101198E40);
  sub_1001109D0(&qword_101198E48);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100020674(&qword_101198E50, &qword_101198E30);
  type metadata accessor for _VariadicView.Tree();
  sub_1001109D0(&unk_10119A2E0);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198C48);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  v84 = type metadata accessor for _ConditionalContent();
  v10 = type metadata accessor for Group();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  v92 = v73 - v11;
  WitnessTable = swift_getWitnessTable();
  v137 = &protocol witness table for _FlexFrameLayout;
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v134 = v12;
  v135 = v13;
  v83 = swift_getWitnessTable();
  v133 = v83;
  v14 = swift_getWitnessTable();
  v125 = v10;
  v126 = v14;
  v15 = v14;
  v73[1] = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v17 = v73 - v16;
  type metadata accessor for AccessibilityAttachmentModifier();
  v18 = type metadata accessor for ModifiedContent();
  v89 = *(v18 - 8);
  __chkstk_darwin(v18);
  v80 = v73 - v19;
  v77 = v18;
  v20 = type metadata accessor for ModifiedContent();
  v91 = *(v20 - 8);
  __chkstk_darwin(v20);
  v81 = v73 - v21;
  v22 = _s17ContextMenuButtonVMa(255);
  v75 = v22;
  v125 = v10;
  v126 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73[2] = OpaqueTypeConformance2;
  v24 = sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
  v131 = OpaqueTypeConformance2;
  v132 = v24;
  v76 = swift_getWitnessTable();
  v129 = v76;
  v130 = v24;
  v99 = v24;
  v25 = v20;
  v111 = v20;
  v26 = swift_getWitnessTable();
  v79 = v26;
  v78 = sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa);
  v125 = v25;
  v126 = v22;
  v127 = v26;
  v128 = v78;
  v87 = &opaque type descriptor for <<opaque return type of View.accessibilityActions<A>(_:)>>;
  v85 = swift_getOpaqueTypeMetadata2();
  v90 = *(v85 - 8);
  __chkstk_darwin(v85);
  v74 = v73 - v27;
  v28 = type metadata accessor for ModifiedContent();
  v95 = *(v28 - 8);
  __chkstk_darwin(v28);
  v73[0] = v73 - v29;
  sub_1001109D0(&unk_101184E90);
  v96 = v28;
  v88 = type metadata accessor for ModifiedContent();
  v97 = *(v88 - 8);
  __chkstk_darwin(v88);
  v93 = v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v94 = v73 - v32;
  v33 = v100;
  v34 = v101;
  v117 = v101;
  v118 = v112;
  v35 = v105;
  v119 = v100;
  v120 = v105;
  v36 = v92;
  Group<A>.init(content:)();
  v37 = v102;
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  (*(v103 + 8))(v37, v104);
  (*(v98 + 8))(v36, v10);
  v38 = v106;
  static AccessibilityTraits.isButton.getter();
  v39 = v80;
  v40 = OpaqueTypeMetadata2;
  View.accessibilityAddTraits(_:)();
  (*(v107 + 8))(v38, v108);
  (*(v86 + 8))(v17, v40);
  v41 = AccessibilityIdentifier.libraryTrackCell.unsafeMutableAddressor();
  v42 = *v41;
  v43 = v41[1];
  v45 = v41[2];
  v44 = v41[3];

  v46 = v81;
  v47 = v45;
  v48 = v77;
  View.accessibilityIdentifier(_:)(v42, v43, v47, v44, v77, v76);

  (*(v89 + 8))(v39, v48);
  v113 = v34;
  v114 = v112;
  v115 = v33;
  v116 = v35;
  v49 = swift_checkMetadataState();
  v50 = v74;
  v51 = v111;
  v53 = v78;
  v52 = v79;
  View.accessibilityActions<A>(_:)();
  (*(v91 + 8))(v46, v51);
  sub_10010FC20(&qword_10118F1F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v55 = v109;
  v56 = (v35 + *(v109 + 11));
  v57 = v56[1];
  *(inited + 32) = *v56;
  *(inited + 40) = v57;
  v58 = (v35 + *(v55 + 12));
  v59 = v58[1];
  *(inited + 48) = *v58;
  *(inited + 56) = v59;

  static Text.compact(_:)(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  v125 = v111;
  v126 = v49;
  v127 = v52;
  v128 = v53;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v73[0];
  v62 = v85;
  View.accessibilityInputLabels(_:)();

  (*(v90 + 8))(v50, v62);
  if (*(v35 + *(v55 + 17)) == 1)
  {
    v63 = *HI.Color.prominentTextColor.unsafeMutableAddressor();
    Color.init(_:)();
  }

  v123 = v60;
  v124 = v99;
  v64 = v96;
  v65 = swift_getWitnessTable();
  v66 = v93;
  View.foregroundColor(_:)();

  (*(v95 + 8))(v61, v64);
  v67 = sub_100020674(&unk_1011914C0, &unk_101184E90);
  v121 = v65;
  v122 = v67;
  v68 = v88;
  v69 = swift_getWitnessTable();
  v70 = v94;
  sub_100663950(v66, v68, v69);
  v71 = *(v97 + 8);
  v71(v66, v68);
  sub_100663950(v70, v68, v69);
  return (v71)(v70, v68);
}

uint64_t sub_100605A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v293 = a4;
  v292 = a3;
  v291 = a2;
  v295 = a1;
  v284 = a5;
  v287 = sub_1001109D0(&qword_101198E18);
  sub_1001109D0(&qword_101198E28);
  _s9TrackCellV13TrailingIconsVMa();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_1001109D0(&qword_101198E30);
  sub_1001109D0(&qword_101198E38);
  sub_1001109D0(&qword_101198E40);
  sub_1001109D0(&qword_101198E48);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100020674(&qword_101198E50, &qword_101198E30);
  type metadata accessor for _VariadicView.Tree();
  sub_1001109D0(&unk_10119A2E0);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198C48);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v251 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for HStack();
  v254 = *(v5 - 8);
  __chkstk_darwin(v5);
  v253 = v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v252 = v234 - v8;
  v244 = type metadata accessor for Text.Suffix();
  v242 = *(v244 - 8);
  __chkstk_darwin(v244);
  v240 = v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10010FC20(&qword_101189260);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v243 = v234 - v10;
  v241 = sub_10010FC20(&qword_101198B50);
  __chkstk_darwin(v241);
  v245 = v234 - v11;
  v248 = sub_10010FC20(&qword_101198E58);
  __chkstk_darwin(v248);
  v249 = v234 - v12;
  v13 = sub_10010FC20(&qword_101198E60);
  __chkstk_darwin(v13 - 8);
  v278 = v234 - v14;
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101184C80);
  sub_1001109D0(&qword_101198E20);
  swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for TupleView();
  v16 = swift_getWitnessTable();
  v234[2] = v15;
  v234[1] = v16;
  v17 = type metadata accessor for VStack();
  v236 = *(v17 - 8);
  __chkstk_darwin(v17);
  v235 = v234 - v18;
  v282 = v19;
  v20 = type metadata accessor for ModifiedContent();
  v239 = *(v20 - 8);
  __chkstk_darwin(v20);
  v238 = v234 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v237 = v234 - v23;
  v279 = v24;
  v283 = v5;
  v281 = type metadata accessor for _ConditionalContent();
  v280 = *(v281 - 8);
  __chkstk_darwin(v281);
  v288 = v234 - v25;
  v26 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v26 - 8);
  v285 = v234 - v27;
  __chkstk_darwin(v28);
  v286 = v234 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v290 = v234 - v31;
  v258 = type metadata accessor for WaveformState();
  v32 = *(v258 - 8);
  __chkstk_darwin(v258);
  v275 = v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_10010FC20(&qword_101198E68);
  __chkstk_darwin(v271);
  v274 = v234 - v34;
  v35 = sub_10010FC20(&qword_101188100);
  __chkstk_darwin(v35 - 8);
  v37 = v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v257 = v234 - v39;
  v40 = type metadata accessor for ArtworkImage.ReusePolicy();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_10010FC20(&unk_1011A1400);
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v45 = v234 - v44;
  v265 = sub_10010FC20(&qword_101198E70);
  __chkstk_darwin(v265);
  v47 = v234 - v46;
  v269 = sub_10010FC20(&qword_101198E78);
  v267 = *(v269 - 8);
  __chkstk_darwin(v269);
  v262 = v234 - v48;
  v266 = sub_10010FC20(&qword_101198E80);
  v263 = *(v266 - 8);
  __chkstk_darwin(v266);
  v261 = v234 - v49;
  v268 = sub_10010FC20(&qword_101198E88);
  __chkstk_darwin(v268);
  v264 = v234 - v50;
  v272 = sub_10010FC20(&qword_101198E90);
  __chkstk_darwin(v272);
  v273 = v234 - v51;
  v52 = sub_10010FC20(&qword_101198E98);
  __chkstk_darwin(v52 - 8);
  v277 = (v234 - v53);
  v270 = sub_10010FC20(&qword_101198EA0);
  __chkstk_darwin(v270);
  v276 = v234 - v54;
  __chkstk_darwin(v55);
  v289 = v234 - v56;
  v256 = type metadata accessor for ArtworkImage.Info(0);
  v57 = *(v256 + 20);
  v58 = _s9TrackCellVMa();
  v59 = v295;
  v60 = sub_100607C08(&v304);
  (*(v41 + 104))(v43, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v40, v60);
  v61 = v59 + v57;
  v62 = v45;
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v59, v61, &v304, v43, v45);
  (*(v41 + 8))(v43, v40);
  v294 = v58;
  v63 = *(v59 + *(v58 + 80));
  v255 = v63;
  if (v63)
  {
    swift_getKeyPath();
    *&v305 = v63;
    sub_10061465C(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v64 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
    swift_beginAccess();
    v65 = v63 + v64;
    v66 = v257;
    sub_1000089F8(v65, v257, &qword_101188100);
    v67 = v258;
  }

  else
  {
    v66 = v257;
    v67 = v258;
    (*(v32 + 56))(v257, 1, 1, v258);
  }

  sub_1000089F8(v66, v37, &qword_101188100);
  v68 = *(v32 + 48);
  v69 = v68(v37, 1, v67);
  v70 = v275;
  if (v69 == 1)
  {
    (*(v32 + 104))(v275, enum case for WaveformState.hidden(_:), v67);
    if (v68(v37, 1, v67) != 1)
    {
      sub_1000095E8(v37, &qword_101188100);
    }
  }

  else
  {
    (*(v32 + 32))(v275, v37, v67);
  }

  static Color.black.getter();
  v71 = Color.opacity(_:)();

  sub_1000095E8(v66, &qword_101188100);
  v72 = v274;
  *(v274 + *(v271 + 36)) = v71;
  (*(v32 + 32))(v72, v70, v67);
  (*(v259 + 32))(v47, v62, v260);
  v73 = v265;
  sub_10003D17C(v72, &v47[*(v265 + 36)], &qword_101198E68);
  v74 = v256;
  v75 = v295;
  v76 = sub_100616954();
  v77 = v262;
  View.corner(_:)();
  sub_1000095E8(v47, &qword_101198E70);
  Border.artwork.unsafeMutableAddressor();

  *&v305 = v73;
  *(&v305 + 1) = v76;
  swift_getOpaqueTypeConformance2();
  v78 = v261;
  v79 = v269;
  View.border(_:corner:)();

  (*(v267 + 8))(v77, v79);
  v80 = v75 + *(v74 + 24);
  v81 = *v80;
  LOBYTE(v79) = *(v80 + 8);
  v82 = v264;
  (*(v263 + 32))(v264, v78, v266);
  v83 = v268;
  v84 = v82 + *(v268 + 36);
  *v84 = v81;
  *(v84 + 8) = v79;
  *(v84 + 9) = 0;
  v85 = AccessibilityIdentifier.libraryTrackCellArtwork.unsafeMutableAddressor();
  v86 = *v85;
  v87 = v85[1];
  v88 = v85[2];
  v89 = v85[3];
  v90 = sub_100616A24();

  v91 = v273;
  View.accessibilityIdentifier(_:)(v86, v87, v88, v89, v83, v90);

  sub_1000095E8(v82, &qword_101198E88);
  v92 = v255;
  if (v255)
  {
    v92 = sub_1002743BC();
    v94 = v93;
  }

  else
  {
    v94 = 0;
  }

  v95 = v289;
  v96 = sub_100616B30();
  v97 = v277;
  View.accessibilityLabel(_:)(v92, v94, v272, v96);

  sub_1000095E8(v91, &qword_101198E90);
  v98 = static Alignment.trailing.getter();
  v100 = v99;
  v101 = v276;
  v102 = &v276[*(v270 + 36)];
  v103 = v295;
  sub_100607CE4(v295, v102);
  v104 = (v102 + *(sub_10010FC20(&qword_101198CB8) + 36));
  *v104 = v98;
  v104[1] = v100;
  sub_10003D17C(v97, v101, &qword_101198E98);
  LOBYTE(v98) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  sub_10003D17C(v101, v95, &qword_101198EA0);
  v113 = v95 + *(v287 + 36);
  *v113 = v98;
  *(v113 + 8) = v106;
  *(v113 + 16) = v108;
  *(v113 + 24) = v110;
  *(v113 + 32) = v112;
  *(v113 + 40) = 0;
  v114 = v294;
  v115 = (v103 + *(v294 + 44));
  v116 = v115[1];
  v273 = *v115;
  *&v305 = v273;
  *(&v305 + 1) = v116;
  v117 = sub_100009838();
  v275 = v116;

  v287 = v117;
  v118 = Text.init<A>(_:)();
  v120 = v119;
  LODWORD(v276) = v121;
  v274 = *(v114 + 64);
  v122 = v285;
  sub_1000089F8(v103 + v274, v285, &unk_10118D2F0);
  v123 = sub_100607F84(v114);
  v124 = TextBadge.init(for:isPlayable:)(v122, v123 & 1);
  v125 = TextBadge.view.getter(v124);
  v127 = v126;
  v129 = v128;
  v130 = static Text.+ infix(_:_:)();
  v132 = v131;
  LOBYTE(v103) = v133;
  v277 = v134;
  sub_10011895C(v125, v127, v129 & 1);

  sub_10011895C(v118, v120, v276 & 1);

  static Font.callout.getter();
  v135 = Text.font(_:)();
  v137 = v136;
  v139 = v138;

  sub_10011895C(v130, v132, v103 & 1);

  if (sub_100607F84(v294))
  {
    v140 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v140 = static HierarchicalShapeStyle.tertiary.getter();
  }

  LODWORD(v305) = v140;
  v141 = Text.foregroundStyle<A>(_:)();
  v142 = v137;
  v144 = v143;
  v146 = v145;
  v148 = v147;
  sub_10011895C(v135, v142, v139 & 1);

  *&v305 = v141;
  *(&v305 + 1) = v144;
  LOBYTE(v306) = v146 & 1;
  *(&v306 + 1) = v148;
  v149 = AccessibilityIdentifier.libraryTrackCellTitle.unsafeMutableAddressor();
  v150 = *v149;
  v151 = v149[1];
  v152 = v149[2];
  v153 = v149[3];
  v277 = v149;

  View.accessibilityIdentifier(_:)(v150, v151, v152, v153, &type metadata for Text, &protocol witness table for Text);

  sub_10011895C(v141, v144, v146 & 1);

  v154 = v294;
  v155 = (v295 + *(v294 + 48));
  v156 = v155[1];
  if (v156)
  {
    v157 = *v155;
    v158 = v156;
  }

  else
  {
    v157 = 0;
    v158 = 0xE000000000000000;
  }

  *&v305 = v157;
  *(&v305 + 1) = v158;

  v159 = Text.init<A>(_:)();
  v161 = v160;
  v163 = v162;
  if (sub_100607F84(v154))
  {
    v164 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v164 = static HierarchicalShapeStyle.tertiary.getter();
  }

  LODWORD(v305) = v164;
  v165 = Text.foregroundStyle<A>(_:)();
  v167 = v166;
  v169 = v168;
  v171 = v170;
  sub_10011895C(v159, v161, v163 & 1);

  *&v305 = v165;
  *(&v305 + 1) = v167;
  LOBYTE(v306) = v169 & 1;
  *(&v306 + 1) = v171;
  v172 = AccessibilityIdentifier.libraryTrackCellSubtitle.unsafeMutableAddressor();
  v173 = *v172;
  v174 = v172[1];
  v175 = v172[2];
  v176 = v172[3];

  v177 = v286;
  View.accessibilityIdentifier(_:)(v173, v174, v175, v176, &type metadata for Text, &protocol witness table for Text);

  sub_10011895C(v165, v167, v169 & 1);

  v178 = v294;
  v179 = v295;
  if (sub_100608118())
  {
    v180 = static HorizontalAlignment.leading.getter();
    __chkstk_darwin(v180);
    v181 = v290;
    v182 = v235;
    VStack.init(alignment:spacing:content:)();
    static Alignment.leading.getter();
    v232 = v282;
    v233 = swift_getWitnessTable();
    v183 = v238;
    View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v236 + 8))(v182, v232);
    v296 = v233;
    v297 = &protocol witness table for _FlexFrameLayout;
    v184 = v279;
    v185 = swift_getWitnessTable();
    v186 = v237;
    sub_100663950(v183, v184, v185);
    v187 = *(v239 + 8);
    v187(v183, v184);
    sub_100663950(v186, v184, v185);
    swift_getWitnessTable();
    sub_100653878(v183, v184);
    v188 = v183;
    v189 = v289;
    v187(v188, v184);
    v187(v186, v184);
    v190 = v177;
  }

  else
  {
    *&v305 = v273;
    *(&v305 + 1) = v275;

    v191 = Text.init<A>(_:)();
    v193 = v192;
    *&v305 = v191;
    *(&v305 + 1) = v192;
    v195 = v194 & 1;
    LOBYTE(v306) = v194 & 1;
    *(&v306 + 1) = v196;
    v197 = v285;
    sub_1000089F8(v179 + v274, v285, &unk_10118D2F0);
    v198 = sub_100607F84(v178);
    v199 = TextBadge.init(for:isPlayable:)(v197, v198 & 1);
    v200 = TextBadge.view.getter(v199);
    v202 = v201;
    v204 = v203;
    v205 = v240;
    static Text.Suffix.alwaysVisible(_:)();
    sub_10011895C(v200, v202, v204 & 1);

    v206 = v243;
    View.textSuffix(_:)();
    (*(v242 + 8))(v205, v244);
    sub_10011895C(v191, v193, v195);

    if (sub_100607F84(v178))
    {
      v207 = static HierarchicalShapeStyle.primary.getter();
    }

    else
    {
      v207 = static HierarchicalShapeStyle.tertiary.getter();
    }

    v208 = v207;
    v209 = v279;
    v210 = v245;
    (*(v246 + 32))(v245, v206, v247);
    *(v210 + *(v241 + 36)) = v208;
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v211 = v249;
    sub_10003D17C(v210, v249, &qword_101198B50);
    v212 = v248;
    v213 = (v211 + *(v248 + 36));
    v214 = v306;
    *v213 = v305;
    v213[1] = v214;
    v213[2] = v307;
    v215 = *v277;
    v216 = v277[1];
    v217 = v277[2];
    v218 = v277[3];
    v219 = sub_100616B60();

    View.accessibilityIdentifier(_:)(v215, v216, v217, v218, v212, v219);

    sub_1000095E8(v211, &qword_101198E58);
    v220 = static VerticalAlignment.center.getter();
    __chkstk_darwin(v220);
    v189 = v289;
    v190 = v286;
    v221 = v253;
    HStack.init(alignment:spacing:content:)();
    v222 = v283;
    v223 = swift_getWitnessTable();
    v224 = v252;
    sub_100663950(v221, v222, v223);
    v225 = *(v254 + 8);
    v225(v221, v222);
    sub_100663950(v224, v222, v223);
    v302 = swift_getWitnessTable();
    v303 = &protocol witness table for _FlexFrameLayout;
    swift_getWitnessTable();
    sub_100653970(v221, v209, v222);
    v225(v221, v222);
    v225(v224, v222);
    v181 = v290;
    sub_1000095E8(v278, &qword_101198E60);
  }

  v300 = swift_getWitnessTable();
  v301 = &protocol witness table for _FlexFrameLayout;
  v226 = swift_getWitnessTable();
  v227 = swift_getWitnessTable();
  v298 = v226;
  v299 = v227;
  v228 = v281;
  v229 = swift_getWitnessTable();
  v230 = v288;
  sub_100663950(v288, v228, v229);
  (*(v280 + 8))(v230, v228);
  sub_1000095E8(v190, &qword_101184C80);
  sub_1000095E8(v181, &qword_101184C80);
  return sub_1000095E8(v189, &qword_101198E18);
}

double sub_100607C08@<D0>(_OWORD *a1@<X8>)
{
  if ((sub_100608118() & 1) == 0 || (v3 = v1 + *(type metadata accessor for ArtworkImage.Info(0) + 28), v4 = 1.5, (*(v3 + 8) & 1) == 0) && *v3 > 48.0)
  {
    v4 = 1.0;
  }

  v5 = v1 + *(type metadata accessor for ArtworkImage.Info(0) + 28);
  v6 = *v5;
  v7 = 0.0;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  if (!*(v5 + 24))
  {
    v7 = *(v5 + 16);
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(COERCE__INT64(v4 * v6), 0, COERCE__INT64(v4 * v7), 0, 0, 1, 2, &v10);
  v8 = v11[0];
  *a1 = v10;
  a1[1] = v8;
  result = *(v11 + 10);
  *(a1 + 26) = *(v11 + 10);
  return result;
}

uint64_t sub_100607CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s13FavoriteBadgeVMa(0);
  v15[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(_s9TrackCellVMa() + 60)) == 1)
  {
    v11 = sub_100607C08(&v16);
    *v10 = v16;
    v10[8] = BYTE8(v16);
    v15[1] = 0x4020000000000000;
    (*(v5 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v4, v11);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v12 = *(v8 + 24);
    *&v10[v12] = swift_getKeyPath();
    sub_10010FC20(&qword_1011955D8);
    swift_storeEnumTagMultiPayload();
    sub_10061601C(v10, a2, _s13FavoriteBadgeVMa);
    return (*(v15[0] + 56))(a2, 0, 1, v8);
  }

  else
  {
    v14 = *(v15[0] + 56);

    return v14(a2, 1, 1, v8);
  }
}

uint64_t sub_100607F84(uint64_t a1)
{
  v3 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = *(**(v1 + *(a1 + 76) + 8) + 256);

  v10(v11);

  (*(v4 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v3);
  v12 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  return v12 & 1;
}

uint64_t sub_100608118()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_101185768);
  __chkstk_darwin(v34);
  v4 = &v32 - v3;
  v5 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v5 - 8);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for DynamicTypeSize();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  v35 = v0;
  sub_10056CABC(&v32 - v18);
  (*(v14 + 104))(v16, enum case for DynamicTypeSize.accessibility3(_:), v13);
  sub_10061465C(&qword_1011810B0, &type metadata accessor for DynamicTypeSize);
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  if ((v20 & 1) == 0)
  {
    sub_10056CAE4(v12);
    v24 = v36;
    v23 = v37;
    (*(v36 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v37);
    (*(v24 + 56))(v9, 0, 1, v23);
    v25 = *(v34 + 48);
    sub_1000089F8(v12, v4, &unk_101184290);
    sub_1000089F8(v9, &v4[v25], &unk_101184290);
    v26 = *(v24 + 48);
    if (v26(v4, 1, v23) == 1)
    {
      sub_1000095E8(v9, &unk_101184290);
      sub_1000095E8(v12, &unk_101184290);
      if (v26(&v4[v25], 1, v23) == 1)
      {
        sub_1000095E8(v4, &unk_101184290);
        v22 = 1;
        return v22 & 1;
      }
    }

    else
    {
      v27 = v33;
      sub_1000089F8(v4, v33, &unk_101184290);
      if (v26(&v4[v25], 1, v23) != 1)
      {
        v28 = v32;
        (*(v24 + 32))(v32, &v4[v25], v23);
        sub_10061465C(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
        v29 = v27;
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v24 + 8);
        v30(v28, v23);
        sub_1000095E8(v9, &unk_101184290);
        sub_1000095E8(v12, &unk_101184290);
        v30(v29, v23);
        sub_1000095E8(v4, &unk_101184290);
        return v22 & 1;
      }

      sub_1000095E8(v9, &unk_101184290);
      sub_1000095E8(v12, &unk_101184290);
      (*(v24 + 8))(v27, v23);
    }

    sub_1000095E8(v4, &qword_101185768);
    v22 = 0;
    return v22 & 1;
  }

  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1006086F0@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a4;
  v55 = a3;
  v63 = a2;
  v52 = a1;
  v62 = a8;
  v57 = sub_10010FC20(&qword_101198ED0);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v46 = &v46 - v11;
  v59 = sub_10010FC20(&qword_101198E20);
  __chkstk_darwin(v59);
  v61 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v46 - v14;
  v56 = sub_10010FC20(&qword_101184C80);
  __chkstk_darwin(v56);
  v60 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v46 - v17;
  sub_1001109D0(&qword_101198E18);
  _s9TrackCellV13TrailingIconsVMa();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for HStack();
  v49 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = type metadata accessor for ModifiedContent();
  v51 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v50 = type metadata accessor for ModifiedContent();
  v64 = *(v50 - 8);
  __chkstk_darwin(v50);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v65 = &v46 - v27;
  static VerticalAlignment.center.getter();
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v69 = v52;
  v70 = v63;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = _s9TrackCellVMa();
  sub_100607C08(&v76);
  static Alignment.center.getter();
  v28 = swift_getWitnessTable();
  View.frame(width:height:alignment:)();
  (*(v49 + 8))(v20, v18);
  static Edge.Set.bottom.getter();
  v75[5] = v28;
  v75[6] = &protocol witness table for _FrameLayout;
  v29 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v51 + 8))(v23, v21);
  v75[3] = v29;
  v75[4] = &protocol witness table for _PaddingLayout;
  v30 = v50;
  v51 = swift_getWitnessTable();
  sub_100663950(v25, v30, v51);
  v31 = v30;
  v52 = *(v64 + 8);
  v52(v25, v30);
  v32 = v53;
  sub_1000089F8(v55, v53, &qword_101184C80);
  if (*(v63 + *(WitnessTable + 48) + 8))
  {
    v33 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v35 = v46;
    sub_1000089F8(v47, v46, &qword_101184C80);
    v36 = v57;
    v37 = (v35 + *(v57 + 36));
    *v37 = KeyPath;
    v37[1] = v33;
    v38 = v54;
    sub_10003D17C(v35, v54, &qword_101198ED0);
    v39 = 0;
    v40 = v36;
  }

  else
  {
    v38 = v54;
    v40 = v57;
    v39 = 1;
  }

  (*(v58 + 56))(v38, v39, 1, v40);
  v41 = v31;
  (*(v64 + 16))(v25, v65, v31);
  v75[0] = v25;
  v42 = v60;
  sub_1000089F8(v32, v60, &qword_101184C80);
  v75[1] = v42;
  v43 = v61;
  sub_1000089F8(v38, v61, &qword_101198E20);
  v75[2] = v43;
  v74[0] = v41;
  v74[1] = v56;
  v74[2] = v59;
  v71 = v51;
  v72 = sub_100617E28(&qword_1011860C0, &qword_101184C80);
  v73 = sub_100617300(&qword_101198ED8, &qword_101198E20, &unk_100ED7998, sub_100616C2C);
  sub_1006769F4(v75, 3uLL, v74);
  sub_1000095E8(v38, &qword_101198E20);
  sub_1000095E8(v32, &qword_101184C80);
  v44 = v52;
  v52(v65, v41);
  sub_1000095E8(v43, &qword_101198E20);
  sub_1000095E8(v42, &qword_101184C80);
  return v44(v25, v41);
}

uint64_t sub_100608FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v4 = sub_10010FC20(&qword_101198E18);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = _s9TrackCellV13TrailingIconsVMa();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = (a2 + *(_s9TrackCellVMa() + 84));
  v15 = *v14;
  v16 = v14[1];

  sub_100112878(v15);
  sub_1006092D4(0, 0, 1, v15, v16, v10);
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v10, v7, WitnessTable);
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_1000089F8(v21, v6, &qword_101198E18);
  v27 = 0;
  v28 = 1;
  v29[0] = v6;
  v29[1] = &v27;
  (*(v8 + 16))(v10, v13, v7);
  v29[2] = v10;
  v26[0] = v4;
  v26[1] = &type metadata for Spacer;
  v26[2] = v7;
  v23 = sub_100616D04();
  v24 = &protocol witness table for Spacer;
  v25 = WitnessTable;
  sub_1006769F4(v29, 3uLL, v26);
  v18(v13, v7);
  v18(v10, v7);
  return sub_1000095E8(v6, &qword_101198E18);
}

uint64_t sub_1006092D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  *a6 = sub_10060CE3C();
  *(a6 + 8) = v11;
  *(a6 + 16) = sub_10060CECC();
  *(a6 + 24) = v12;
  *(a6 + 32) = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3 & 1;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  v13 = *(_s9TrackCellV13TrailingIconsVMa() + 56);
  *(a6 + v13) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100609420@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v187 = a8;
  v186 = a7;
  v185 = a6;
  v174 = a5;
  v173 = a4;
  v167 = a3;
  v188 = a2;
  v175 = a1;
  v183 = a9;
  sub_1001109D0(&qword_101198E30);
  sub_1001109D0(&qword_101198E38);
  sub_1001109D0(&qword_101198E40);
  sub_1001109D0(&qword_101198E48);
  v9 = _s9TrackCellV13TrailingIconsVMa();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v10 = type metadata accessor for TupleView();
  sub_100020674(&qword_101198E50, &qword_101198E30);
  v146 = v10;
  v11 = type metadata accessor for _VariadicView.Tree();
  sub_1001109D0(&unk_10119A2E0);
  v12 = type metadata accessor for ModifiedContent();
  v13 = sub_1001109D0(&qword_101198C48);
  swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for TupleView();
  v155 = *(v14 - 8);
  __chkstk_darwin(v14);
  v154 = &v137 - v15;
  v150 = _s17ContextMenuButtonVMa(0);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v138 = (&v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = v13;
  __chkstk_darwin(v17);
  v151 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v152 = &v137 - v20;
  v147 = v11;
  v145 = *(v11 - 8);
  __chkstk_darwin(v21);
  v144 = &v137 - v22;
  v142 = type metadata accessor for SplitPercentageLayout();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v12;
  v157 = *(v12 - 8);
  __chkstk_darwin(v24);
  v148 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v143 = &v137 - v27;
  __chkstk_darwin(v28);
  v169 = &v137 - v29;
  v30 = sub_1001109D0(&qword_101198E28);
  swift_getTupleTypeMetadata3();
  v31 = type metadata accessor for TupleView();
  v166 = *(v31 - 8);
  __chkstk_darwin(v31);
  v165 = &v137 - v32;
  v168 = v9;
  v161 = *(v9 - 8);
  __chkstk_darwin(v33);
  v162 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v164 = &v137 - v36;
  v37 = sub_10010FC20(&qword_101198F08);
  __chkstk_darwin(v37 - 8);
  v158 = (&v137 - v38);
  v163 = v30;
  __chkstk_darwin(v39);
  v160 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v159 = &v137 - v42;
  __chkstk_darwin(v43);
  v184 = &v137 - v44;
  v45 = type metadata accessor for UserInterfaceSizeClass();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v139 = &v137 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10010FC20(&qword_101185768);
  v49 = v48 - 8;
  __chkstk_darwin(v48);
  v51 = &v137 - v50;
  v52 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v52 - 8);
  v170 = &v137 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v137 - v55;
  __chkstk_darwin(v57);
  v59 = &v137 - v58;
  v181 = v31;
  v182 = v14;
  v180 = type metadata accessor for _ConditionalContent();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v137 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v177 = &v137 - v62;
  v172 = sub_10010FC20(&qword_101198E18);
  __chkstk_darwin(v172);
  v176 = &v137 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v65 = v175;
  v175 = &v137 - v66;
  sub_1000089F8(v65, &v137 - v66, &qword_101198E18);
  v171 = _s9TrackCellVMa();
  sub_10056CAE4(v59);
  (*(v46 + 104))(v56, enum case for UserInterfaceSizeClass.compact(_:), v45);
  (*(v46 + 56))(v56, 0, 1, v45);
  v67 = *(v49 + 56);
  sub_1000089F8(v59, v51, &unk_101184290);
  sub_1000089F8(v56, &v51[v67], &unk_101184290);
  v68 = *(v46 + 48);
  if (v68(v51, 1, v45) == 1)
  {
    sub_1000095E8(v56, &unk_101184290);
    sub_1000095E8(v59, &unk_101184290);
    v69 = v68(&v51[v67], 1, v45);
    v70 = v171;
    if (v69 == 1)
    {
      sub_1000095E8(v51, &unk_101184290);
      v71 = v188;
LABEL_11:
      v97 = static HorizontalAlignment.leading.getter();
      v98 = v158;
      *v158 = v97;
      v98[1] = 0;
      *(v98 + 16) = 0;
      v99 = sub_10010FC20(&qword_101198F20);
      sub_10060AEB4(v71, v167, v173, v174, v187, v98 + *(v99 + 44));
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v100 = v98;
      v101 = v159;
      sub_10003D17C(v100, v159, &qword_101198F08);
      v102 = v163;
      v103 = (v101 + *(v163 + 36));
      v104 = v206[5];
      v103[4] = v206[4];
      v103[5] = v104;
      v103[6] = v206[6];
      v105 = v206[1];
      *v103 = v206[0];
      v103[1] = v105;
      v106 = v206[3];
      v103[2] = v206[2];
      v103[3] = v106;
      v107 = v101;
      v108 = v184;
      sub_10003D17C(v107, v184, &qword_101198E28);
      v109 = (v71 + *(v70 + 84));
      v110 = *v109;
      v111 = v109[1];

      sub_100112878(v110);
      v112 = v162;
      sub_1006092D4(0, 0, 1, v110, v111, v162);
      v113 = v168;
      WitnessTable = swift_getWitnessTable();
      v115 = v164;
      sub_100663950(v112, v113, WitnessTable);
      v116 = v161;
      v117 = *(v161 + 8);
      v117(v112, v113);
      v118 = v160;
      sub_1000089F8(v108, v160, &qword_101198E28);
      v195 = 0;
      v196 = 1;
      v197 = v118;
      v198 = &v195;
      (*(v116 + 16))(v112, v115, v113);
      v199 = v112;
      v192 = v102;
      v193 = &type metadata for Spacer;
      v194 = v113;
      v189 = sub_100616F38();
      v190 = &protocol witness table for Spacer;
      v191 = WitnessTable;
      v119 = v165;
      sub_1006769F4(&v197, 3uLL, &v192);
      v117(v112, v113);
      sub_1000095E8(v118, &qword_101198E28);
      v120 = v181;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v121 = v177;
      sub_100653878(v119, v120);
      (*(v166 + 8))(v119, v120);
      v117(v115, v113);
      sub_1000095E8(v184, &qword_101198E28);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v51, v170, &unk_101184290);
  if (v68(&v51[v67], 1, v45) == 1)
  {
    sub_1000095E8(v56, &unk_101184290);
    sub_1000095E8(v59, &unk_101184290);
    (*(v46 + 8))(v170, v45);
    v70 = v171;
LABEL_6:
    sub_1000095E8(v51, &qword_101185768);
    v71 = v188;
    goto LABEL_7;
  }

  v92 = &v51[v67];
  v93 = v139;
  (*(v46 + 32))(v139, v92, v45);
  sub_10061465C(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
  v94 = v170;
  v95 = dispatch thunk of static Equatable.== infix(_:_:)();
  v96 = *(v46 + 8);
  v96(v93, v45);
  sub_1000095E8(v56, &unk_101184290);
  sub_1000095E8(v59, &unk_101184290);
  v96(v94, v45);
  sub_1000095E8(v51, &unk_101184290);
  v71 = v188;
  v70 = v171;
  if (v95)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (sub_10060AC30(v70))
  {
    goto LABEL_11;
  }

  v72 = v140;
  SplitPercentageLayout.init(axis:locations:)();
  v73 = sub_10060B554(v72, v185, v186, v187);
  v74 = (*(v141 + 8))(v72, v142);
  v75 = __chkstk_darwin(v74);
  v76 = v144;
  (v73)(sub_100616E74, v75);

  v77 = sub_100020674(&qword_101198F10, &qword_101198E30);
  v78 = swift_getWitnessTable();
  v204 = v77;
  v205 = v78;
  v79 = v147;
  v80 = swift_getWitnessTable();
  v81 = 1;
  v82 = v143;
  View.lineLimit(_:)();
  (*(v145 + 8))(v76, v79);
  v83 = sub_100020674(&qword_1011860B8, &unk_10119A2E0);
  v202 = v80;
  v203 = v83;
  v84 = v156;
  v187 = swift_getWitnessTable();
  sub_100663950(v82, v84, v187);
  v188 = *(v157 + 8);
  v188(v82, v84);
  v85 = (v71 + *(v70 + 84));
  v86 = v181;
  if (*v85)
  {
    v87 = v85[1];
    v88 = v138;
    *v138 = *v85;
    *(v88 + 8) = v87;
    v89 = v150;
    *&v206[0] = 0x4046000000000000;
    sub_100363C0C();

    ScaledMetric.init(wrappedValue:)();
    *&v206[0] = 0x403C000000000000;
    ScaledMetric.init(wrappedValue:)();
    v90 = v152;
    sub_10061601C(v88, v152, _s17ContextMenuButtonVMa);
    v81 = 0;
    v91 = v182;
  }

  else
  {
    v91 = v182;
    v90 = v152;
    v89 = v150;
  }

  (*(v149 + 56))(v90, v81, 1, v89);
  v122 = v148;
  (*(v157 + 16))(v148, v169, v84);
  *&v206[0] = v122;
  v123 = v90;
  v124 = v151;
  sub_1000089F8(v90, v151, &qword_101198C48);
  *(&v206[0] + 1) = v124;
  v197 = v84;
  v198 = v153;
  v192 = v187;
  v193 = sub_100616E84();
  v125 = v154;
  sub_1006769F4(v206, 2uLL, &v197);
  sub_1000095E8(v124, &qword_101198C48);
  v126 = v122;
  v127 = v188;
  v188(v126, v84);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v121 = v177;
  sub_100653970(v125, v86, v91);
  (*(v155 + 8))(v125, v91);
  sub_1000095E8(v123, &qword_101198C48);
  v127(v169, v84);
LABEL_14:
  v128 = v175;
  v129 = v176;
  sub_1000089F8(v175, v176, &qword_101198E18);
  v197 = v129;
  v130 = v179;
  v131 = v178;
  v132 = v180;
  (*(v179 + 16))(v178, v121, v180);
  v198 = v131;
  v192 = v172;
  v193 = v132;
  v189 = sub_100616D04();
  v133 = swift_getWitnessTable();
  v134 = swift_getWitnessTable();
  v200 = v133;
  v201 = v134;
  v190 = swift_getWitnessTable();
  sub_1006769F4(&v197, 2uLL, &v192);
  v135 = *(v130 + 8);
  v135(v121, v132);
  sub_1000095E8(v128, &qword_101198E18);
  v135(v131, v132);
  return sub_1000095E8(v129, &qword_101198E18);
}

uint64_t sub_10060AC30(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10118A610);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(v1 + *(a1 + 92), v8, &qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v5, v17);
  }

  v14 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v10 + 8))(v12, v9);
  return v14 & 1;
}

uint64_t sub_10060AEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v57 = a5;
  v55 = a4;
  v50 = a2;
  v51 = a3;
  v61 = a6;
  v54 = sub_10010FC20(&qword_101198ED0);
  __chkstk_darwin(v54);
  v56 = &v50 - v7;
  v8 = sub_10010FC20(&qword_101198F38);
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v50 - v11;
  v12 = sub_10010FC20(&qword_101198F40);
  __chkstk_darwin(v12 - 8);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_10010FC20(&qword_101198F48);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  v20 = sub_10010FC20(&qword_101198F50);
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  v23 = sub_10010FC20(&qword_101198F58);
  __chkstk_darwin(v23 - 8);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v50 - v27;
  v29 = _s9TrackCellVMa();
  v57 = a1;
  if (sub_10060AC30(v29))
  {
    sub_1000089F8(v50, v22, &qword_101184C80);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101184C80);
    sub_100617E28(&qword_1011860C0, &qword_101184C80);
    sub_100616FF0();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v30 = static Font.callout.getter();
    KeyPath = swift_getKeyPath();
    sub_1000089F8(v51, v19, &qword_101198E60);
    v32 = &v19[*(sub_10010FC20(&qword_101198F60) + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    v33 = swift_getKeyPath();
    v34 = &v19[*(v17 + 36)];
    *v34 = v33;
    *(v34 + 1) = 1;
    v34[16] = 0;
    sub_1000089F8(v19, v22, &qword_101198F48);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101184C80);
    sub_100617E28(&qword_1011860C0, &qword_101184C80);
    sub_100616FF0();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v19, &qword_101198F48);
  }

  v35 = v59;
  if (*(v57 + *(v29 + 48) + 8))
  {
    v36 = static Font.footnote.getter();
    v37 = swift_getKeyPath();
    v38 = v56;
    sub_1000089F8(v55, v56, &qword_101184C80);
    v39 = (v38 + *(v54 + 36));
    *v39 = v37;
    v39[1] = v36;
    v40 = sub_10060AC30(v29);
    v41 = swift_getKeyPath();
    v42 = v53;
    sub_10003D17C(v38, v53, &qword_101198ED0);
    v43 = v42 + *(v35 + 36);
    *v43 = v41;
    *(v43 + 8) = (v40 & 1) == 0;
    *(v43 + 16) = v40 & 1;
    v44 = v52;
    sub_10003D17C(v42, v52, &qword_101198F38);
    sub_10003D17C(v44, v16, &qword_101198F38);
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  (*(v58 + 56))(v16, v45, 1, v35);
  sub_1000089F8(v28, v25, &qword_101198F58);
  v46 = v60;
  sub_1000089F8(v16, v60, &qword_101198F40);
  v47 = v61;
  sub_1000089F8(v25, v61, &qword_101198F58);
  v48 = sub_10010FC20(&qword_101198F80);
  sub_1000089F8(v46, v47 + *(v48 + 48), &qword_101198F40);
  sub_1000095E8(v16, &qword_101198F40);
  sub_1000095E8(v28, &qword_101198F58);
  sub_1000095E8(v46, &qword_101198F40);
  return sub_1000095E8(v25, &qword_101198F58);
}

uint64_t (*sub_10060B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for SplitPercentageLayout();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  return sub_100617578;
}

uint64_t sub_10060B69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SplitPercentageLayout();
  sub_1001109D0(&qword_101198E38);
  sub_1001109D0(&qword_101198E40);
  sub_1001109D0(&qword_101198E48);
  _s9TrackCellV13TrailingIconsVMa();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v7 = type metadata accessor for TupleView();
  v8 = sub_10061465C(&qword_101198FE0, &type metadata accessor for SplitPercentageLayout);
  WitnessTable = swift_getWitnessTable();
  return sub_10060B86C(a1, a2, v6, v7, v8, WitnessTable, a3);
}

uint64_t sub_10060B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _LayoutRoot();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  _LayoutRoot.init(_:)();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t sub_10060BA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a5;
  v86 = a4;
  v101 = a3;
  v102 = a1;
  v88 = a2;
  v100 = a6;
  sub_1001109D0(&qword_101198E48);
  _s9TrackCellV13TrailingIconsVMa();
  swift_getTupleTypeMetadata3();
  v6 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v93 = v6;
  v7 = type metadata accessor for HStack();
  v96 = *(v7 - 8);
  __chkstk_darwin(v7);
  v94 = &v81 - v8;
  v97 = type metadata accessor for ModifiedContent();
  v99 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v81 - v11;
  v81 = sub_10010FC20(&unk_101184C90);
  __chkstk_darwin(v81);
  v82 = &v81 - v12;
  v13 = sub_10010FC20(&qword_101198F88);
  v87 = *(v13 - 8);
  __chkstk_darwin(v13);
  v84 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v83 = &v81 - v16;
  v91 = sub_10010FC20(&qword_101198E40);
  __chkstk_darwin(v91);
  v95 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v104 = &v81 - v19;
  v20 = sub_10010FC20(&qword_101198F90);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v81 - v22;
  v24 = sub_10010FC20(&qword_101198E38);
  __chkstk_darwin(v24);
  v103 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v81 - v27;
  __chkstk_darwin(v29);
  v31 = &v81 - v30;
  v32 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1000089F8(v102, v23, &qword_101198E60);
  v41 = &v23[*(v21 + 44)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v23, v28, &qword_101198F90);
  v89 = v24;
  v42 = &v28[*(v24 + 36)];
  v43 = v113;
  v44 = v115;
  v45 = v116;
  *(v42 + 4) = v114;
  *(v42 + 5) = v44;
  *(v42 + 6) = v45;
  v46 = v111;
  *v42 = v110;
  *(v42 + 1) = v46;
  *(v42 + 2) = v112;
  *(v42 + 3) = v43;
  v102 = v31;
  sub_10003D17C(v28, v31, &qword_101198E38);
  v47 = _s9TrackCellVMa();
  v48 = 1;
  if (*(v88 + *(v47 + 88)) >= 800.0)
  {
    v49 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v82;
    sub_1000089F8(v101, v82, &qword_101184C80);
    v59 = v58 + *(v81 + 36);
    *v59 = v49;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v60 = v58;
    v61 = v84;
    sub_10003D17C(v60, v84, &unk_101184C90);
    v62 = (v61 + *(v13 + 36));
    v63 = v122;
    v62[4] = v121;
    v62[5] = v63;
    v62[6] = v123;
    v64 = v118;
    *v62 = v117;
    v62[1] = v64;
    v65 = v120;
    v62[2] = v119;
    v62[3] = v65;
    v66 = v61;
    v67 = v83;
    sub_10003D17C(v66, v83, &qword_101198F88);
    sub_10003D17C(v67, v104, &qword_101198F88);
    v48 = 0;
  }

  (*(v87 + 56))(v104, v48, 1, v13);
  v68 = static VerticalAlignment.center.getter();
  __chkstk_darwin(v68);
  v69 = v94;
  HStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v80 = swift_getWitnessTable();
  v70 = v90;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v96 + 8))(v69, v7);
  v109[3] = v80;
  v109[4] = &protocol witness table for _FlexFrameLayout;
  v71 = v97;
  v72 = swift_getWitnessTable();
  v73 = v98;
  sub_100663950(v70, v71, v72);
  v74 = v99;
  v101 = *(v99 + 8);
  v101(v70, v71);
  v75 = v103;
  sub_1000089F8(v102, v103, &qword_101198E38);
  v109[0] = v75;
  v76 = v104;
  v77 = v95;
  sub_1000089F8(v104, v95, &qword_101198E40);
  v109[1] = v77;
  (*(v74 + 16))(v70, v73, v71);
  v109[2] = v70;
  v108[0] = v89;
  v108[1] = v91;
  v108[2] = v71;
  v105 = sub_1006171BC();
  v106 = sub_100617300(&qword_101198FA8, &qword_101198E40, &unk_100ED79B8, sub_10061737C);
  v107 = v72;
  sub_1006769F4(v109, 3uLL, v108);
  v78 = v101;
  v101(v73, v71);
  sub_1000095E8(v76, &qword_101198E40);
  sub_1000095E8(v102, &qword_101198E38);
  v78(v70, v71);
  sub_1000095E8(v77, &qword_101198E40);
  return sub_1000095E8(v103, &qword_101198E38);
}

uint64_t sub_10060C420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v97 = a3;
  v98 = _s9TrackCellV13TrailingIconsVMa();
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = &v84 - v6;
  v86 = sub_10010FC20(&unk_101184C90);
  __chkstk_darwin(v86);
  v8 = &v84 - v7;
  v91 = sub_10010FC20(&qword_101198F88);
  __chkstk_darwin(v91);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v88 = &v84 - v12;
  v89 = sub_10010FC20(&qword_101198FC0);
  __chkstk_darwin(v89);
  v14 = &v84 - v13;
  v90 = sub_10010FC20(&qword_101198FC8);
  __chkstk_darwin(v90);
  v16 = &v84 - v15;
  v92 = sub_10010FC20(&qword_101198E48);
  __chkstk_darwin(v92);
  v93 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v84 - v19;
  v21 = _s9TrackCellVMa();
  v22 = v21;
  v23 = *(a1 + *(v21 + 88));
  v99 = v20;
  if (v23 >= 800.0)
  {
    v87 = v16;
    v88 = v14;
    v40 = (a1 + *(v21 + 52));
    v41 = v40[1];
    if (v41)
    {
      v42 = *v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    *&v118 = v42;
    *(&v118 + 1) = v43;
    sub_100009838();

    v44 = Text.init<A>(_:)();
    v46 = v45;
    v48 = v47;
    v49 = sub_100607F84(v22);
    v85 = a1;
    if (v49)
    {
      v50 = static HierarchicalShapeStyle.secondary.getter();
    }

    else
    {
      v50 = static HierarchicalShapeStyle.tertiary.getter();
    }

    LODWORD(v118) = v50;
    v51 = Text.foregroundStyle<A>(_:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_10011895C(v44, v46, v48 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v58 = v55 & 1;
    LOBYTE(v132) = v55 & 1;
    v59 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v129) = 0;
    *&v100 = v51;
    *(&v100 + 1) = v53;
    LOBYTE(v101) = v58;
    *(&v101 + 1) = v57;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    v102 = v111;
    v103 = v112;
    v104 = v113;
    v105 = v114;
    LOBYTE(v109) = v59;
    *(&v109 + 1) = v60;
    *&v110[0] = v61;
    *(&v110[0] + 1) = v62;
    *&v110[1] = v63;
    BYTE8(v110[1]) = 0;
    v64 = AccessibilityIdentifier.libraryTrackCellDetailText.unsafeMutableAddressor();
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[2];
    v68 = v64[3];

    v69 = sub_10010FC20(&qword_101181120);
    v70 = sub_100119518();
    v71 = v87;
    View.accessibilityIdentifier(_:)(v65, v66, v67, v68, v69, v70);

    v126 = v108;
    v127 = v109;
    v128[0] = v110[0];
    *(v128 + 9) = *(v110 + 9);
    v122 = v104;
    v123 = v105;
    v124 = v106;
    v125 = v107;
    v118 = v100;
    v119 = v101;
    v120 = v102;
    v121 = v103;
    sub_1000095E8(&v118, &qword_101181120);
    sub_1000089F8(v71, v88, &qword_101198FC8);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101198FD0, &qword_101198FC8, &unk_100ED7AF0, sub_100119518);
    sub_10061737C();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v71, &qword_101198FC8);
    a1 = v85;
  }

  else
  {
    v24 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_1000089F8(v87, v8, &qword_101184C80);
    v33 = &v8[*(v86 + 36)];
    *v33 = v24;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10003D17C(v8, v10, &unk_101184C90);
    v34 = &v10[*(v91 + 36)];
    v35 = v123;
    *(v34 + 4) = v122;
    *(v34 + 5) = v35;
    *(v34 + 6) = v124;
    v36 = v119;
    *v34 = v118;
    *(v34 + 1) = v36;
    v37 = v121;
    *(v34 + 2) = v120;
    *(v34 + 3) = v37;
    v38 = v10;
    v39 = v88;
    sub_10003D17C(v38, v88, &qword_101198F88);
    sub_1000089F8(v39, v14, &qword_101198F88);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101198FD0, &qword_101198FC8, &unk_100ED7AF0, sub_100119518);
    sub_10061737C();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v39, &qword_101198F88);
  }

  v72 = (a1 + *(v22 + 56));
  v73 = *v72;
  v74 = v72[1];

  v75 = v96;
  sub_1006092D4(v73, v74, 0, 0, 0, v96);
  v76 = v98;
  WitnessTable = swift_getWitnessTable();
  v78 = v95;
  sub_100663950(v75, v76, WitnessTable);
  v79 = v94;
  v80 = *(v94 + 8);
  v80(v75, v76);
  v81 = v99;
  v82 = v93;
  sub_1000089F8(v99, v93, &qword_101198E48);
  v132 = 0;
  v133 = 0;
  *&v100 = v82;
  *(&v100 + 1) = &v132;
  (*(v79 + 16))(v75, v78, v76);
  *&v101 = v75;
  *&v111 = v92;
  *(&v111 + 1) = &type metadata for Spacer;
  *&v112 = v76;
  v129 = sub_1006174C0();
  v130 = &protocol witness table for Spacer;
  v131 = WitnessTable;
  sub_1006769F4(&v100, 3uLL, &v111);
  v80(v78, v76);
  sub_1000095E8(v81, &qword_101198E48);
  v80(v75, v76);
  return sub_1000095E8(v82, &qword_101198E48);
}

uint64_t sub_10060CD80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(_s9TrackCellVMa() + 84));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  _s17ContextMenuButtonVMa(0);
  sub_100112878(v4);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_10060CE3C()
{
  type metadata accessor for MusicItemState();
  swift_getWitnessTable();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t sub_10060CECC()
{
  type metadata accessor for MusicLibrary.ItemState();
  swift_getWitnessTable();

  return ObservedObject.init(wrappedValue:)();
}

__n128 sub_10060CF68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011993A8);
  __chkstk_darwin(v10 - 8);
  v12 = v19 - v11;
  sub_10056CABC(v9);
  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v7 + 8))(v9, v6);
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = v13 & 1;
  v14 = sub_10010FC20(&qword_1011993B0);
  sub_10060D194(v3, *(a1 + 24), &v12[*(v14 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v12, a2, &qword_1011993A8);
  v15 = a2 + *(sub_10010FC20(&qword_1011993B8) + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_10060D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v113 = a2;
  v124 = a3;
  v126 = _s17ContextMenuButtonVMa(0);
  v120 = *(v126 - 8);
  __chkstk_darwin(v126);
  v112 = (&v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10010FC20(&qword_101198C48);
  __chkstk_darwin(v5 - 8);
  v123 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v122 = &v107 - v8;
  v9 = sub_10010FC20(&qword_1011993C0);
  v118 = *(v9 - 8);
  v119 = v9;
  __chkstk_darwin(v9);
  v111 = &v107 - v10;
  v11 = sub_10010FC20(&qword_1011993C8);
  __chkstk_darwin(v11 - 8);
  v121 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v107 - v14;
  v116 = _s27DownloadStatusIndicatorViewVMa(0);
  __chkstk_darwin(v116);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10010FC20(&qword_101198C50);
  __chkstk_darwin(v114);
  v115 = &v107 - v17;
  v18 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v125 = *(v18 - 8);
  __chkstk_darwin(v18);
  v109 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v108 = &v107 - v21;
  __chkstk_darwin(v22);
  v24 = &v107 - v23;
  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v107 = &v107 - v30;
  v31 = sub_10010FC20(&qword_101198CC8);
  __chkstk_darwin(v31 - 8);
  v117 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v127 = &v107 - v34;
  _s9TrackCellV13TrailingIconsVMa();
  v128 = a1;
  v35 = *(**(a1 + 8) + 256);

  v35(v36);
  v37 = v125;

  v38 = (*(v37 + 88))(v24, v18);
  v110 = v18;
  if (v38 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v37 + 96))(v24, v18);
    v39 = v107;
    (*(v26 + 32))(v107, v24, v25);
    (*(v26 + 104))(v28, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:), v25);
    v40 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v41 = *(v26 + 8);
    v41(v28, v25);
    if (v40)
    {
      swift_storeEnumTagMultiPayload();
      sub_1006160EC();
      sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa);
      _ConditionalContent<>.init(storage:)();
      v41(v39, v25);
      v42 = v126;
      v43 = v128;
      goto LABEL_7;
    }

    v41(v39, v25);
  }

  else
  {
    (*(v37 + 8))(v24, v18);
  }

  v42 = v126;
  v43 = v128;

  dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();

  v44 = type metadata accessor for MusicLibrary.DownloadStatus();
  (*(*(v44 - 8) + 56))(v16, 0, 1, v44);
  v45 = v116;
  *&v136[0] = 0x4000000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  *&v136[0] = 0x3FF0000000000000;
  ScaledMetric.init(wrappedValue:)();
  v16[*(v45 + 20)] = 0;
  sub_100616084(v16, v115, _s27DownloadStatusIndicatorViewVMa);
  swift_storeEnumTagMultiPayload();
  sub_1006160EC();
  sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa);
  _ConditionalContent<>.init(storage:)();
  sub_100615BE4(v16, _s27DownloadStatusIndicatorViewVMa);
LABEL_7:
  if (*(v43 + 48) != 1)
  {
    if (qword_10117F720 != -1)
    {
      swift_once();
    }

    v51 = [qword_101218CE8 stringFromSeconds:Duration.components.getter()];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *&v136[0] = v52;
    *(&v136[0] + 1) = v54;
    sub_100009838();
    v55 = Text.init<A>(_:)();
    v57 = v56;
    v59 = v58;
    v115 = Text.monospacedDigit()();
    v116 = v60;
    v62 = v61;
    v64 = v63;
    sub_10011895C(v55, v57, v59 & 1);

    v65 = *(**(v128 + 8) + 256);

    v67 = v108;
    v65(v66);

    v68 = v125;
    v69 = v109;
    v70 = v110;
    (*(v125 + 104))(v109, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v110);
    LOBYTE(v55) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v71 = *(v68 + 8);
    v71(v69, v70);
    v71(v67, v70);
    if (v55)
    {
      v72 = static HierarchicalShapeStyle.secondary.getter();
    }

    else
    {
      v72 = static HierarchicalShapeStyle.tertiary.getter();
    }

    LODWORD(v136[0]) = v72;
    v73 = v115;
    v74 = Text.foregroundStyle<A>(_:)();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_10011895C(v73, v62, v64 & 1);

    v81 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v139 = v78 & 1;
    v138 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v140[6] + 7) = *&v140[21];
    *(&v140[8] + 7) = *&v140[23];
    *(&v140[10] + 7) = *&v140[25];
    *(&v140[12] + 7) = v141;
    *(v140 + 7) = *&v140[15];
    *(&v140[2] + 7) = *&v140[17];
    *(&v140[4] + 7) = *&v140[19];
    *&v130 = v74;
    *(&v130 + 1) = v76;
    LOBYTE(v131) = v78 & 1;
    *(&v131 + 1) = v80;
    LOBYTE(v132) = v81;
    *(&v132 + 1) = v83;
    *&v133 = v85;
    *(&v133 + 1) = v87;
    *&v134[0] = v89;
    BYTE8(v134[0]) = 0;
    *(&v134[4] + 9) = *&v140[8];
    *(&v134[5] + 9) = *&v140[10];
    *(&v134[6] + 9) = *&v140[12];
    *(v134 + 9) = *v140;
    *(&v134[1] + 9) = *&v140[2];
    *(&v134[2] + 9) = *&v140[4];
    *(&v134[3] + 9) = *&v140[6];
    *(&v134[7] + 1) = *(&v141 + 1);
    v135 = 0x3FF0000000000000;
    v90 = AccessibilityIdentifier.libraryTrackCellDuration.unsafeMutableAddressor();
    v91 = *v90;
    v92 = v90[1];
    v93 = v90[2];
    v94 = v90[3];

    v95 = sub_10010FC20(&qword_1011993D8);
    v96 = sub_100618458();
    v97 = v111;
    View.accessibilityIdentifier(_:)(v91, v92, v93, v94, v95, v96);

    v136[10] = v134[6];
    v136[11] = v134[7];
    v137 = v135;
    v136[6] = v134[2];
    v136[7] = v134[3];
    v136[8] = v134[4];
    v136[9] = v134[5];
    v136[2] = v132;
    v136[3] = v133;
    v136[4] = v134[0];
    v136[5] = v134[1];
    v136[0] = v130;
    v136[1] = v131;
    sub_1000095E8(v136, &qword_1011993D8);
    v98 = v129;
    sub_10003D17C(v97, v129, &qword_1011993C0);
    (*(v118 + 56))(v98, 0, 1, v119);
    v42 = v126;
    v43 = v128;
    v46 = *(v128 + 56);
    if (v46)
    {
      goto LABEL_9;
    }

LABEL_16:
    v50 = 1;
    v49 = v122;
    goto LABEL_17;
  }

  (*(v118 + 56))(v129, 1, 1, v119);
  v46 = *(v43 + 56);
  if (!v46)
  {
    goto LABEL_16;
  }

LABEL_9:
  v47 = *(v43 + 64);
  v48 = v112;
  *v112 = v46;
  *(v48 + 8) = v47;
  *&v136[0] = 0x4046000000000000;
  sub_100363C0C();

  ScaledMetric.init(wrappedValue:)();
  *&v136[0] = 0x403C000000000000;
  ScaledMetric.init(wrappedValue:)();
  v49 = v122;
  sub_10061601C(v48, v122, _s17ContextMenuButtonVMa);
  v50 = 0;
LABEL_17:
  (*(v120 + 56))(v49, v50, 1, v42);
  v99 = v127;
  v100 = v117;
  sub_1000089F8(v127, v117, &qword_101198CC8);
  v101 = v129;
  v102 = v121;
  sub_1000089F8(v129, v121, &qword_1011993C8);
  v103 = v123;
  sub_1000089F8(v49, v123, &qword_101198C48);
  v104 = v124;
  sub_1000089F8(v100, v124, &qword_101198CC8);
  v105 = sub_10010FC20(&qword_1011993D0);
  sub_1000089F8(v102, v104 + *(v105 + 48), &qword_1011993C8);
  sub_1000089F8(v103, v104 + *(v105 + 64), &qword_101198C48);
  sub_1000095E8(v49, &qword_101198C48);
  sub_1000095E8(v101, &qword_1011993C8);
  sub_1000095E8(v99, &qword_101198CC8);
  sub_1000095E8(v103, &qword_101198C48);
  sub_1000095E8(v102, &qword_1011993C8);
  return sub_1000095E8(v100, &qword_101198CC8);
}

__n128 sub_10060E0B8@<Q0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101198D68);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_10010FC20(&qword_101198D70);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v38 = sub_10010FC20(&qword_101198D78);
  __chkstk_darwin(v38);
  v14 = &v36 - v13;
  v15 = sub_10010FC20(&qword_101198D80);
  __chkstk_darwin(v15 - 8);
  v42 = &v36 - v16;
  v17 = [objc_opt_self() preferredFontForTextStyle:*(v1 + 32)];
  if (sub_10060E61C())
  {
    v18 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  else
  {
    v18 = static VerticalAlignment.center.getter();
  }

  *v9 = v18;
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = sub_10010FC20(&qword_101198D88);
  sub_10060E8A8(v1, v17, &v9[*(v19 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v37 = v17;
  v20 = sub_100020674(&qword_101198D90, &qword_101198D68);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v39);
  sub_1000095E8(v9, &qword_101198D68);
  v21 = AccessibilityIdentifier.libraryTextCell.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];

  *&v47 = v7;
  *(&v47 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v24;
  v28 = v41;
  View.accessibilityIdentifier(_:)(v22, v23, v27, v25, v41, OpaqueTypeConformance2);

  (*(v40 + 8))(v12, v28);
  v29 = v43;
  static AccessibilityTraits.isButton.getter();
  sub_100616570();
  v30 = v42;
  View.accessibilityAddTraits(_:)();
  (*(v44 + 8))(v29, v45);
  sub_1000095E8(v14, &qword_101198D78);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v31 = v46;
  sub_10003D17C(v30, v46, &qword_101198D80);
  v32 = v31 + *(sub_10010FC20(&qword_101198DA0) + 36);
  v33 = v52;
  *(v32 + 64) = v51;
  *(v32 + 80) = v33;
  *(v32 + 96) = v53;
  v34 = v48;
  *v32 = v47;
  *(v32 + 16) = v34;
  result = v50;
  *(v32 + 32) = v49;
  *(v32 + 48) = result;
  return result;
}

uint64_t sub_10060E61C()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118A610);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8TextCellVMa(0);
  sub_1000089F8(v0 + *(v11 + 40), v6, &qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_10060E8A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a2;
  v135 = a3;
  v132 = sub_10010FC20(&qword_10118E9A8);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v112 - v4;
  v129 = sub_10010FC20(&qword_101198DA8);
  __chkstk_darwin(v129);
  v134 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v112 - v7;
  __chkstk_darwin(v8);
  v133 = &v112 - v9;
  v10 = sub_10010FC20(&qword_1011A1440);
  __chkstk_darwin(v10);
  v12 = &v112 - v11;
  v13 = sub_10010FC20(&qword_101198DB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v112 - v14;
  v121 = sub_10010FC20(&qword_101198DB8);
  __chkstk_darwin(v121);
  v17 = (&v112 - v16);
  v122 = sub_10010FC20(&qword_101198DC0);
  __chkstk_darwin(v122);
  v123 = &v112 - v18;
  v124 = sub_10010FC20(&qword_101198DC8);
  __chkstk_darwin(v124);
  v20 = &v112 - v19;
  v21 = sub_10010FC20(&qword_101198DD0);
  v120 = *(v21 - 8);
  __chkstk_darwin(v21);
  v119 = &v112 - v22;
  v23 = sub_10010FC20(&qword_101198DD8);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v118 = &v112 - v25;
  v26 = sub_10010FC20(&qword_101198DE0);
  __chkstk_darwin(v26 - 8);
  v127 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = *(a1 + 8);
  v136 = &v112 - v29;
  v126 = v30;
  v125 = a1;
  if (v30)
  {
    v115 = v20;
    v116 = v24;
    v112 = v21;
    v113 = v23;
    v117 = v12;
    v114 = v10;

    Image.init(systemName:)();
    v31 = *(_s8TextCellVMa(0) + 28);
    v32 = type metadata accessor for SymbolRenderingMode();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v15, a1 + v31, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
    v34 = Image.symbolRenderingMode(_:)();

    sub_1000095E8(v15, &qword_101198DB0);
    v35 = static Font.title2.getter();
    KeyPath = swift_getKeyPath();
    v37 = (v17 + *(sub_10010FC20(&qword_101198DF0) + 36));
    v38 = *(sub_10010FC20(&qword_1011A13C0) + 28);
    v39 = enum case for Image.Scale.medium(_:);
    v40 = type metadata accessor for Image.Scale();
    (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
    *v37 = swift_getKeyPath();
    v41 = v137;
    *v17 = v34;
    v17[1] = KeyPath;
    v17[2] = v35;
    *(v17 + *(v121 + 36)) = static Color.accentColor.getter();
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    [v41 lineHeight];
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v42 = v123;
    sub_10003D17C(v17, v123, &qword_101198DB8);
    v43 = (v42 + *(v122 + 36));
    v44 = v147;
    v45 = v148;
    v43[4] = v146;
    v43[5] = v44;
    v43[6] = v45;
    v46 = v143;
    *v43 = v142;
    v43[1] = v46;
    v47 = v145;
    v43[2] = v144;
    v43[3] = v47;
    v48 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v115;
    sub_10003D17C(v42, v115, &qword_101198DC0);
    v58 = v124;
    v59 = v57 + *(v124 + 36);
    *v59 = v48;
    *(v59 + 8) = v50;
    *(v59 + 16) = v52;
    *(v59 + 24) = v54;
    *(v59 + 32) = v56;
    *(v59 + 40) = 0;
    v60 = enum case for DynamicTypeSize.accessibility2(_:);
    v61 = type metadata accessor for DynamicTypeSize();
    v62 = v117;
    (*(*(v61 - 8) + 104))(v117, v60, v61);
    sub_10061465C(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    v64 = v116;
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v65 = sub_10061669C();
    v66 = sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    v67 = v119;
    v68 = v57;
    v69 = v58;
    v70 = v114;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v62, &qword_1011A1440);
    sub_1000095E8(v68, &qword_101198DC8);
    v138 = v69;
    v139 = v70;
    v140 = v65;
    v141 = v66;
    swift_getOpaqueTypeConformance2();
    v71 = v118;
    v72 = v112;
    View.accessibilityHidden(_:)();
    (*(v120 + 8))(v67, v72);
    v73 = v136;
    sub_10003D17C(v71, v136, &qword_101198DD8);
    (*(v64 + 56))(v73, 0, 1, v113);
  }

  else
  {
    (*(v24 + 56))(&v112 - v29, 1, 1, v23);
  }

  v74 = *(v125 + 24);
  v138 = *(v125 + 16);
  v139 = v74;
  sub_100009838();

  v75 = Text.init<A>(_:)();
  v77 = v76;
  v79 = v78;
  v80 = v137;
  Font.init(_:)();
  v81 = Text.font(_:)();
  v83 = v82;
  v85 = v84;

  sub_10011895C(v75, v77, v79 & 1);

  LODWORD(v138) = static HierarchicalShapeStyle.primary.getter();
  v86 = Text.foregroundStyle<A>(_:)();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  sub_10011895C(v81, v83, v85 & 1);

  v138 = v86;
  v139 = v88;
  LOBYTE(v140) = v90 & 1;
  v141 = v92;
  v93 = sub_10060E61C();
  if (v126)
  {
    if (v93)
    {
      _s8TextCellVMa(0);
      sub_10010FC20(&qword_10119A070);
      ScaledMetric.wrappedValue.getter();
    }
  }

  v94 = v130;
  View.bodyHeadOutdent(_:)();
  sub_10011895C(v86, v88, v90 & 1);

  v95 = static Edge.Set.vertical.getter();
  _s8TextCellVMa(0);
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v128;
  (*(v131 + 32))(v128, v94, v132);
  v105 = v104 + *(v129 + 36);
  *v105 = v95;
  *(v105 + 8) = v97;
  *(v105 + 16) = v99;
  *(v105 + 24) = v101;
  *(v105 + 32) = v103;
  *(v105 + 40) = 0;
  v106 = v133;
  sub_10003D17C(v104, v133, &qword_101198DA8);
  v107 = v136;
  v108 = v127;
  sub_1000089F8(v136, v127, &qword_101198DE0);
  v109 = v134;
  sub_1000089F8(v106, v134, &qword_101198DA8);
  v110 = v135;
  sub_1000089F8(v108, v135, &qword_101198DE0);
  v111 = sub_10010FC20(&qword_101198DE8);
  sub_1000089F8(v109, v110 + *(v111 + 48), &qword_101198DA8);
  sub_1000095E8(v106, &qword_101198DA8);
  sub_1000095E8(v107, &qword_101198DE0);
  sub_1000095E8(v109, &qword_101198DA8);
  return sub_1000095E8(v108, &qword_101198DE0);
}

uint64_t sub_10060F6C4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityTraits();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_101184C80);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_10010FC20(&qword_1011987E0);
  __chkstk_darwin(v15);
  v21 = __chkstk_darwin(v16);
  if (a1)
  {
    v22 = *(v18 + 56);

    return v22(a4, 1, 1, v21);
  }

  else
  {
    *&v64 = a2;
    *(&v64 + 1) = a3;
    v60 = v17;
    v63 = v18;
    v59 = v20;
    v62 = &v56 - v19;
    sub_100009838();

    v24 = Text.init<A>(_:)();
    v26 = v25;
    v28 = v27;
    v61 = a4;
    static Font.body.getter();
    v29 = Text.font(_:)();
    v57 = v9;
    v30 = v29;
    v32 = v31;
    v56 = v14;
    v34 = v33;
    v58 = v8;

    sub_10011895C(v24, v26, v28 & 1);

    static Font.Weight.semibold.getter();
    v35 = Text.fontWeight(_:)();
    v37 = v36;
    v39 = v38;
    sub_10011895C(v30, v32, v34 & 1);

    LODWORD(v64) = static HierarchicalShapeStyle.primary.getter();
    v40 = Text.foregroundStyle<A>(_:)();
    v42 = v41;
    LOBYTE(v30) = v43;
    v45 = v44;
    sub_10011895C(v35, v37, v39 & 1);

    *&v64 = v40;
    *(&v64 + 1) = v42;
    LOBYTE(v35) = v30 & 1;
    LOBYTE(v65) = v30 & 1;
    *(&v65 + 1) = v45;
    static AccessibilityTraits.isHeader.getter();
    v46 = v56;
    View.accessibilityAddTraits(_:)();
    (*(v57 + 8))(v11, v58);
    sub_10011895C(v40, v42, v35);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v47 = v59;
    sub_10003D17C(v46, v59, &qword_101184C80);
    v48 = v60;
    v49 = (v47 + *(v60 + 36));
    v50 = v69;
    v49[4] = v68;
    v49[5] = v50;
    v49[6] = v70;
    v51 = v65;
    *v49 = v64;
    v49[1] = v51;
    v52 = v67;
    v49[2] = v66;
    v49[3] = v52;
    v53 = v62;
    sub_10003D17C(v47, v62, &qword_1011987E0);
    v54 = v53;
    v55 = v61;
    sub_10003D17C(v54, v61, &qword_1011987E0);
    return (*(v63 + 56))(v55, 0, 1, v48);
  }
}

uint64_t sub_10060FBB0(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10060FCC0()
{
  swift_getKeyPath();
  sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_10060FD60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_10060FE38()
{

  v1 = OBJC_IVAR____TtCVE5MusicO9MusicCore7Library17PlayShuffleHeader10DataSource___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10060FF0C()
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

uint64_t sub_10060FFB8@<X0>(uint64_t a1@<X8>)
{

  v2 = static PlayIntentButtonStack.playShuffle(_:)();
  v4 = v3;
  v6 = v5;

  v7 = static Edge.Set.bottom.getter();
  swift_getKeyPath();
  sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = static Edge.Set.top.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = 0;
  *(a1 + 72) = v16;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v20;
  *(a1 + 104) = v21;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_10061011C(unsigned int a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v42 = &v38 - v14;
  v16 = __chkstk_darwin(v15);
  v18 = &v38 - v17;
  (*(a2 + 16))(v16);
  v43 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v19 = sub_1000095E8(v9, &qword_1011848A0);
  }

  else
  {
    v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = 0xD000000000000015;
    sub_10061601C(v9, v18, type metadata accessor for PlaybackIntentDescriptor);
    v45 = 0x2E726564616548;
    v46 = 0xE700000000000000;
    v40 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v20 = 0xD000000000000018;
        v21 = "PlayIntentButton.sing";
      }

      else
      {
        v21 = "Header.PlaybackControls: ";
      }
    }

    else
    {
      v21 = "PlayIntentButton.shuffle";
    }

    v22._object = (v21 | 0x8000000000000000);
    v22._countAndFlagsBits = v20;
    String.append(_:)(v22);

    v23 = v45;
    v24 = v46;
    v25 = &v18[*(v10 + 32)];
    if (*(v25 + 24))
    {
      v39 = v6;
      sub_100008FE4(v25, &v45);
      v26 = v47;
      v27 = v48;
      sub_10000954C(&v45, v47);
      v44[3] = &type metadata for Player.CommandIssuerIdentity;
      v44[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v44[0] = v23;
      v44[1] = v24;

      v28 = Player.CommandIssuer.appending(_:)(v44, v26, v27);
      v30 = v29;
      sub_10000959C(v44);
      sub_10000959C(&v45);
      v47 = &type metadata for Player.CommandIssuerIdentity;
      v48 = &protocol witness table for Player.CommandIssuerIdentity;
      if (v30)
      {

        v23 = v28;
        v24 = v30;
      }

      v6 = v39;
    }

    else
    {
      v47 = &type metadata for Player.CommandIssuerIdentity;
      v48 = &protocol witness table for Player.CommandIssuerIdentity;
    }

    v45 = v23;
    v46 = v24;
    sub_1003F8500(&v45, v25);
    PlaybackIntentDescriptor.configure(for:)(v40);
    v31 = v42;
    sub_100616084(v18, v42, type metadata accessor for PlaybackIntentDescriptor);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    v33 = v41;
    sub_100616084(v31, v41, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = &protocol witness table for MainActor;
    sub_10061601C(v33, v36 + v35, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v6, &unk_100ECA700, v36);

    sub_100615BE4(v31, type metadata accessor for PlaybackIntentDescriptor);
    v19 = sub_100615BE4(v18, type metadata accessor for PlaybackIntentDescriptor);
  }

  return (*(a2 + 32))(v19);
}

uint64_t sub_1006105E0@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v33 = sub_10010FC20(&qword_101199400);
  __chkstk_darwin(v33);
  v10 = &v30 - v9;
  v32 = Image.init(systemName:)();
  v31 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  _s13FavoriteBadgeVMa(0);
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_1000095E8(v8, &qword_101188610);
  v14 = swift_getKeyPath();
  if (*(v1 + 8))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = *v1;
  }

  sub_10056CF8C(v5);
  v16 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v3 + 8))(v5, v2);
  v17 = 4.0;
  if (v16)
  {
    v17 = 2.0;
  }

  v35 = v32;
  v36 = KeyPath;
  v37 = v31;
  v38 = v14;
  v39 = v13;
  v40 = -(v15 + v17);
  v41 = 0;
  v18 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];

  v21 = sub_10010FC20(&qword_101199408);
  v22 = sub_10061859C();
  View.accessibilityLabel(_:)(v19, v20, v21, v22);

  v23 = AccessibilityIdentifier.libraryFavoriteBadge.unsafeMutableAddressor();
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = v23[3];
  v28 = sub_100618628();

  View.accessibilityIdentifier(_:)(v24, v25, v26, v27, v33, v28);

  return sub_1000095E8(v10, &qword_101199400);
}

uint64_t sub_10061099C(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.sizeCategory.setter();
}

double sub_100610A68@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  _s17ContextMenuButtonVMa(0);
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = a1 + *(sub_10010FC20(&qword_101199270) + 36);
  sub_100610B98(v2);
  v10 = (v9 + *(sub_10010FC20(&qword_101199278) + 36));
  *v10 = v6;
  v10[1] = v8;
  *a1 = KeyPath;
  *(a1 + 8) = v4;
  result = *&v13;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_100610B98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s17ContextMenuButtonVMa(0);
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v7[39] = v10;
  *&v7[23] = v9;
  *&v7[7] = v8;
  *&v6[1] = *v7;
  *&v4 = v1;
  *(&v4 + 1) = v2;
  *&v5 = *&v11[0];
  *(&v5 + 1) = *&v11[0];
  v6[0] = 0;
  *&v6[17] = *&v7[16];
  *&v6[33] = *&v7[32];
  sub_100112878(v1);
  sub_10010FC20(&qword_101199280);
  sub_100617CC4();
  View.accessibilityHidden(_:)();
  v11[2] = *v6;
  v11[3] = *&v6[16];
  v11[4] = *&v6[32];
  v12 = *(&v10 + 1);
  v11[0] = v4;
  v11[1] = v5;
  return sub_1000095E8(v11, &qword_101199280);
}

uint64_t sub_100610D48(uint64_t result, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v5 = *&v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v6 = *&v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 8];
  v7 = v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16];
  *v4 = *&result;
  v4[1] = *&a2;
  *(v4 + 16) = a3 & 1;
  if (a3)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v7 & 1) != 0 || (v5 == *&result ? (v8 = v6 == *&a2) : (v8 = 0), !v8))
  {
LABEL_11:
    [v3 setPointerInteractionEnabled:{1, v5, v6}];
    v9 = *v4;
    v10 = *(v4 + 1);
    v11 = *(v4 + 16);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    *(v12 + 32) = v11;
    UIButton.pointerStyleProvider.setter();

    *&result = COERCE_DOUBLE([v3 setNeedsLayout]);
  }

  return result;
}

id sub_100610E30(char *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = &a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  v6 = *&a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  *v5 = *v1;
  *(v5 + 1) = v4;
  sub_100112878(v3);
  result = sub_100020438(v6);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = &a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v12 = *&a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v13 = *&a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 8];
  v14 = a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16];
  *v11 = v8;
  v11[1] = v9;
  *(v11 + 16) = v10;
  if (v10)
  {
    if (v14)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v14 & 1) != 0 || (v8 == v12 ? (v15 = v9 == v13) : (v15 = 0), !v15))
  {
LABEL_11:
    [a1 setPointerInteractionEnabled:1];
    v16 = *v11;
    v17 = *(v11 + 1);
    v18 = *(v11 + 16);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v17;
    *(v19 + 32) = v18;
    UIButton.pointerStyleProvider.setter();

    return [a1 setNeedsLayout];
  }

  return result;
}

char *sub_100610F44()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v0[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.contentInsets.setter();
  v16 = [objc_opt_self() labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
  UIButton.Configuration.cornerStyle.setter();
  v17 = [objc_opt_self() currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  }

  else
  {
    sub_100009F78(0, &qword_101183A00);
    v19 = static UIFont.preferredFont(forTextStyle:weight:)();
  }

  v20 = v19;
  v21 = [objc_opt_self() configurationWithFont:v19 scale:2];
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() systemImageNamed:v22 withConfiguration:v21];

  UIButton.Configuration.image.setter();
  (*(v10 + 16))(v4, v12, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  v24 = v15;
  UIButton.configuration.setter();
  [v24 setContextMenuInteractionEnabled:1];
  [v24 setShowsMenuAsPrimaryAction:1];

  [v24 setPointerInteractionEnabled:1];
  v25 = *&v24[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v26 = *&v24[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 8];
  v27 = v24[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16];
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v26;
  *(v28 + 32) = v27;
  UIButton.pointerStyleProvider.setter();

  (*(v10 + 8))(v12, v9);
  return v24;
}

uint64_t sub_1006113F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_10010FC20(qword_101198800);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for UIPointerEffect();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  SymbolButton.Configuration.hitRectMinimumSize.unsafeMutableAddressor();
  if (a6)
  {
    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    CGRectGetWidth(v41);
    v42.origin.x = v18;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    CGRectGetHeight(v42);
  }

  v25 = [a1 traitCollection];
  [v25 displayScale];

  CGRect.centeringAlong(axes:bounds:scale:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v13 + 16))(v16, a2, v12);
  v43.origin.x = v27;
  v43.origin.y = v29;
  v43.size.width = v31;
  v43.size.height = v33;
  Width = CGRectGetWidth(v43);
  v44.origin.x = v27;
  v44.origin.y = v29;
  v44.size.width = v31;
  v44.size.height = v33;
  Height = CGRectGetHeight(v44);
  if (Height < Width)
  {
    Width = Height;
  }

  sub_100009F78(0, &unk_101189DF0);
  *v11 = v27;
  *(v11 + 1) = v29;
  *(v11 + 2) = v31;
  *(v11 + 3) = v33;
  *(v11 + 4) = Width * 0.5;
  v36 = enum case for UIPointerShape.roundedRect(_:);
  v37 = type metadata accessor for UIPointerShape();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v11, v36, v37);
  (*(v38 + 56))(v11, 0, 1, v37);
  return UIPointerStyle.init(effect:shape:)();
}

uint64_t sub_100611720()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v39 - v14;
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "layoutSubviews", v13);
  v16 = &v1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  if (v1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16])
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  else
  {
    v22 = *v16;
    v21 = v16[1];
    [v1 bounds];
    v23 = CGRectGetWidth(v43) - v22;
    [v1 bounds];
    top = (CGRectGetHeight(v44) - v21) * 0.5;
    leading = v23 * 0.5;
    bottom = top;
    trailing = leading;
  }

  UIButton.configuration.getter();
  v24 = type metadata accessor for UIButton.Configuration();
  v25 = *(*(v24 - 8) + 48);
  if (v25(v15, 1, v24))
  {
    sub_1000095E8(v15, &unk_101183AB0);
LABEL_16:
    UIButton.configuration.getter();
    if (v25(v11, 1, v24))
    {
      sub_1000089F8(v11, v8, &unk_101183AB0);
      UIButton.configuration.setter();
      return sub_1000095E8(v11, &unk_101183AB0);
    }

    else
    {
      v38 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundInsets.setter();
      v38(v41, 0);
      return UIButton.configuration.setter();
    }
  }

  UIButton.Configuration.background.getter();
  UIBackgroundConfiguration.backgroundInsets.getter();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v40 + 8))(v5, v3);
  result = sub_1000095E8(v15, &unk_101183AB0);
  if (v27 != top || v29 != leading || v31 != bottom || v33 != trailing)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_100611AF4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
    if (v2)
    {
      sub_100112878(*&result[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider]);

      v3 = v2(_swiftEmptyArrayStorage);
      sub_100020438(v2);
      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100611D64(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_100611DA0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = [objc_allocWithZone(_s17ContextMenuButtonV6ButtonV15UIContextButtonCMa()) init];
  v7 = &v6[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  v8 = *&v6[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  *v7 = v1;
  v7[1] = v2;
  sub_100112878(v1);
  sub_100020438(v8);
  sub_100610D48(v3, v4, v5);
  v9 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];

  v12 = UIView.withAccessibilityIdentifier(_:)(v10, v11);

  return v12;
}

uint64_t sub_100611EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100618F7C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100611F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100618F7C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100611F88()
{
  sub_100618F7C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100611FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101199510);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_10010FC20(&qword_101199518);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = *(a1 + 24);
  v41 = *(a1 + 16);
  v42 = v13;
  v44 = type metadata accessor for _OverlayModifier();
  v14 = type metadata accessor for ModifiedContent();
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v40 = &v37 - v15;
  v16 = type metadata accessor for ModifiedContent();
  v47 = *(v16 - 8);
  __chkstk_darwin(v16);
  v43 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v45 = &v37 - v19;
  v38 = v2;

  v56 = Image.init(systemName:)();
  static AccessibilityChildBehavior.ignore.getter();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v39);

  v20 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v9[*(v7 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  static Font.Weight.bold.getter();
  sub_100618FD0();
  View.fontWeight(_:)();
  sub_1000095E8(v9, &qword_101199510);
  v23 = &v12[*(sub_10010FC20(&qword_101199528) + 36)];
  v24 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v25 = enum case for Image.Scale.medium(_:);
  v26 = type metadata accessor for Image.Scale();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  LODWORD(v25) = static HierarchicalShapeStyle.tertiary.getter();
  *&v12[*(sub_10010FC20(&qword_101199530) + 36)] = v25;
  v27 = v38;
  *&v12[*(v10 + 36)] = *(v38 + 16);
  v49 = v41;
  v50 = v42;
  v51 = v27;
  static Alignment.center.getter();
  v28 = sub_1006190C4();
  v29 = v40;
  View.overlay<A>(alignment:content:)();
  sub_1000095E8(v12, &qword_101199518);
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v54 = v28;
  v55 = WitnessTable;
  v36 = swift_getWitnessTable();
  v31 = v43;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v46 + 8))(v29, v14);
  v52 = v36;
  v53 = &protocol witness table for _FlexFrameLayout;
  v32 = swift_getWitnessTable();
  v33 = v45;
  sub_100663950(v31, v16, v32);
  v34 = *(v47 + 8);
  v34(v31, v16);
  sub_100663950(v33, v16, v32);
  return (v34)(v33, v16);
}

uint64_t sub_1006125B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15StatusIndicatorVMa();
  sub_100663950(a1 + *(v9 + 40), a2, a3);
  sub_100663950(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1006126B0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101199298);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  strcpy(v17, "xmark.icloud");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v17[2] = 0x3FF0000000000000;
  static AccessibilityChildBehavior.ignore.getter();
  v9 = sub_10010FC20(&qword_1011992A0);
  v10 = sub_100020674(&qword_1011992A8, &qword_1011992A0);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  LOBYTE(v2) = v14;
  v17[0] = v9;
  v17[1] = v10;
  swift_getOpaqueTypeConformance2();
  View.accessibility(label:)();
  sub_10011895C(v11, v13, v2 & 1);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10061297C@<X0>(uint64_t a1@<X8>)
{
  v164 = a1;
  v153 = sub_10010FC20(&qword_1011992B0);
  __chkstk_darwin(v153);
  v143 = &v119 - v2;
  v152 = sub_10010FC20(&qword_1011992B8);
  __chkstk_darwin(v152);
  v4 = &v119 - v3;
  v158 = sub_10010FC20(&qword_1011992C0);
  __chkstk_darwin(v158);
  v154 = &v119 - v5;
  v156 = sub_10010FC20(&qword_1011992C8);
  __chkstk_darwin(v156);
  v157 = &v119 - v6;
  v163 = sub_10010FC20(&qword_1011992D0);
  __chkstk_darwin(v163);
  v159 = &v119 - v7;
  v123 = sub_10010FC20(&qword_101199298);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v119 - v8;
  v124 = sub_10010FC20(&qword_1011992D8);
  __chkstk_darwin(v124);
  v125 = &v119 - v9;
  v155 = sub_10010FC20(&qword_1011992E0);
  __chkstk_darwin(v155);
  v126 = &v119 - v10;
  v134 = type metadata accessor for AccessibilityTraits();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for AccessibilityChildBehavior();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for CircularProgressView.LineStyle();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_10010FC20(&qword_1011992E8);
  __chkstk_darwin(v138);
  v15 = (&v119 - v14);
  v141 = sub_10010FC20(&qword_1011992F0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v119 - v16;
  v130 = sub_10010FC20(&qword_1011992F8);
  __chkstk_darwin(v130);
  v142 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v128 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  v151 = sub_10010FC20(&qword_101199300);
  __chkstk_darwin(v151);
  v131 = &v119 - v22;
  v160 = sub_10010FC20(&qword_101199308);
  __chkstk_darwin(v160);
  v162 = &v119 - v23;
  v147 = sub_10010FC20(&qword_101199310);
  __chkstk_darwin(v147);
  v149 = &v119 - v24;
  v161 = sub_10010FC20(&qword_101199318);
  __chkstk_darwin(v161);
  v150 = &v119 - v25;
  v26 = sub_10010FC20(&qword_101199320);
  __chkstk_darwin(v26);
  v28 = &v119 - v27;
  v148 = sub_10010FC20(&qword_101199328);
  __chkstk_darwin(v148);
  v127 = &v119 - v29;
  v30 = sub_10010FC20(&qword_10118F518);
  __chkstk_darwin(v30 - 8);
  v32 = (&v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = v1;
  sub_1000089F8(v1, &v119 - v34, &qword_10118F518);
  v37 = type metadata accessor for MusicLibrary.DownloadStatus();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v35, 1, v37) == 1)
  {
LABEL_2:
    v39 = v35;
    if (*(v36 + *(_s27DownloadStatusIndicatorViewVMa(0) + 20)) == 1)
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v40 = v168[0];
      v41 = v168[1];
      v42 = v169;
      v43 = v170;
      LOBYTE(v165) = 1;
      v167 = v168[1];
      v166 = v170;
      *v4 = 0;
      v4[8] = 1;
      *(v4 + 2) = v40;
      v4[24] = v41;
      *(v4 + 4) = v42;
      v4[40] = v43;
      *(v4 + 3) = v171;
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_101199330);
      sub_100617DA4();
      sub_100617E28(&qword_101199340, &qword_1011992B0);
      v44 = v154;
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v87 = v143;
      View.accessibility(hidden:)();
      sub_1000089F8(v87, v4, &qword_1011992B0);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_101199330);
      sub_100617DA4();
      sub_100617E28(&qword_101199340, &qword_1011992B0);
      v44 = v154;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v87, &qword_1011992B0);
    }

    sub_1000089F8(v44, v157, &qword_1011992C0);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101199348, &qword_1011992E0, &unk_100ED7D90, sub_100617ED0);
    sub_100617FFC();
    v88 = v159;
    _ConditionalContent<>.init(storage:)();
    sub_1000089F8(v88, v162, &qword_1011992D0);
    swift_storeEnumTagMultiPayload();
    sub_1006180A8();
    sub_1006183A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v88, &qword_1011992D0);
    sub_1000095E8(v44, &qword_1011992C0);
    return sub_1000095E8(v39, &qword_10118F518);
  }

  v119 = v1;
  v120 = v35;
  sub_1000089F8(v35, v32, &qword_10118F518);
  v45 = (*(v38 + 88))(v32, v37);
  if (v45 != enum case for MusicLibrary.DownloadStatus.downloading(_:))
  {
    if (v45 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
    {
      strcpy(v168, "circle.dashed");
      HIWORD(v168[1]) = -4864;
      v169 = 0x3FF0000000000000;
      LocalizedStringKey.init(stringLiteral:)();
      v89 = Text.init(_:tableName:bundle:comment:)();
      v91 = v90;
      v93 = v92;
      sub_10010FC20(&qword_1011992A0);
      sub_100020674(&qword_1011992A8, &qword_1011992A0);
      View.accessibility(label:)();
      sub_10011895C(v89, v91, v93 & 1);

      v94 = AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor();
      v95 = *v94;
      v96 = v94[1];
      v97 = v94[2];
      v98 = v94[3];
      v99 = sub_10061818C();

      v100 = v127;
      View.accessibilityIdentifier(_:)(v95, v96, v97, v98, v26, v99);

      sub_1000095E8(v28, &qword_101199320);
      sub_1000089F8(v100, v149, &qword_101199328);
      swift_storeEnumTagMultiPayload();
      sub_100615550(&qword_101199368, &qword_101199328, &unk_100ED7DD8, sub_10061818C);
      sub_100615550(&qword_101199378, &qword_101199300, &unk_100ED7DB0, sub_100618274);
      v101 = v150;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v101, v162, &qword_101199318);
      swift_storeEnumTagMultiPayload();
      sub_1006180A8();
      sub_1006183A0();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v101, &qword_101199318);
      sub_1000095E8(v100, &qword_101199328);
LABEL_16:
      v39 = v120;
      return sub_1000095E8(v39, &qword_10118F518);
    }

    if (v45 != enum case for MusicLibrary.DownloadStatus.downloaded(_:))
    {
      (*(v38 + 8))(v32, v37);
      v35 = v120;
      v36 = v119;
      goto LABEL_2;
    }

    v168[0] = 0xD000000000000016;
    v168[1] = 0x8000000100E526C0;
    v169 = 0x3FF0000000000000;
    v102 = v144;
    static AccessibilityChildBehavior.ignore.getter();
    v103 = sub_10010FC20(&qword_1011992A0);
    v104 = sub_100020674(&qword_1011992A8, &qword_1011992A0);
    v105 = v121;
    View.accessibilityElement(children:)();
    (*(v145 + 8))(v102, v146);
    LocalizedStringKey.init(stringLiteral:)();
    v106 = Text.init(_:tableName:bundle:comment:)();
    v108 = v107;
    v110 = v109;
    v168[0] = v103;
    v168[1] = v104;
    swift_getOpaqueTypeConformance2();
    v111 = v125;
    v112 = v123;
    View.accessibility(label:)();
    sub_10011895C(v106, v108, v110 & 1);

    (*(v122 + 8))(v105, v112);
    v113 = AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor();
    v114 = *v113;
    v115 = v113[1];
    v116 = v113[2];
    v117 = v113[3];
    v118 = sub_100617ED0();

    v83 = v126;
    View.accessibilityIdentifier(_:)(v114, v115, v116, v117, v124, v118);

    sub_1000095E8(v111, &qword_1011992D8);
    v84 = &qword_1011992E0;
    sub_1000089F8(v83, v157, &qword_1011992E0);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101199348, &qword_1011992E0, &unk_100ED7D90, sub_100617ED0);
    sub_100617FFC();
    v85 = v159;
    _ConditionalContent<>.init(storage:)();
    v86 = &qword_1011992D0;
    sub_1000089F8(v85, v162, &qword_1011992D0);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1006180A8();
    sub_1006183A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v85, v86);
    sub_1000095E8(v83, v84);
    goto LABEL_16;
  }

  (*(v38 + 96))(v32, v37);
  v46 = *v32;
  *v15 = 0xD000000000000016;
  v15[1] = 0x8000000100E526C0;
  v15[2] = 0;
  v47 = v138;
  v48 = v15 + *(v138 + 40);
  v49 = [objc_opt_self() tertiaryLabelColor];
  Color.init(_:)();
  _s27DownloadStatusIndicatorViewVMa(0);
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  (*(v135 + 104))(v136, enum case for CircularProgressView.LineStyle.round(_:), v137);
  LOBYTE(v168[0]) = 0;
  CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
  sub_10010FC20(&qword_101199398);
  TintShapeStyle.init()();
  ScaledMetric.wrappedValue.getter();
  v50 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = &v48[*(sub_10010FC20(&qword_1011993A0) + 36)];
  *v59 = v50;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = v144;
  static AccessibilityChildBehavior.ignore.getter();
  v61 = sub_100020674(&qword_101199388, &qword_1011992E8);
  v62 = v139;
  View.accessibilityElement(children:)();
  (*(v145 + 8))(v60, v146);
  sub_1000095E8(v15, &qword_1011992E8);
  LocalizedStringKey.init(stringLiteral:)();
  v63 = Text.init(_:tableName:bundle:comment:)();
  v65 = v64;
  LOBYTE(v60) = v66;
  v168[0] = v47;
  v168[1] = v61;
  swift_getOpaqueTypeConformance2();
  v67 = v142;
  v68 = v141;
  View.accessibility(label:)();
  sub_10011895C(v63, v65, v60 & 1);

  result = (*(v140 + 8))(v62, v68);
  v70 = round(v46 * 100.0);
  if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v70 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v70 < 9.22337204e18)
  {
    v165 = v70;
    v168[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v168[1] = v71;
    v72._countAndFlagsBits = 37;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);
    v73 = v128;
    v74 = v130;
    ModifiedContent<>.accessibility(value:)();

    sub_1000095E8(v67, &qword_1011992F8);
    v75 = v132;
    static AccessibilityTraits.updatesFrequently.getter();
    v76 = v129;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v133 + 8))(v75, v134);
    sub_1000095E8(v73, &qword_1011992F8);
    v77 = AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor();
    v78 = *v77;
    v79 = v77[1];
    v80 = v77[2];
    v81 = v77[3];
    v82 = sub_100618274();

    v83 = v131;
    View.accessibilityIdentifier(_:)(v78, v79, v80, v81, v74, v82);

    sub_1000095E8(v76, &qword_1011992F8);
    v84 = &qword_101199300;
    sub_1000089F8(v83, v149, &qword_101199300);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101199368, &qword_101199328, &unk_100ED7DD8, sub_10061818C);
    sub_100615550(&qword_101199378, &qword_101199300, &unk_100ED7DB0, sub_100618274);
    v85 = v150;
    _ConditionalContent<>.init(storage:)();
    v86 = &qword_101199318;
    sub_1000089F8(v85, v162, &qword_101199318);
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100614348()
{
  v0 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  if ((UICellConfigurationState.isFocused.getter() & 1) != 0 && (v10 = [objc_opt_self() currentDevice], v11 = objc_msgSend(v10, "userInterfaceIdiom"), v10, v11 != 6))
  {
    static UIBackgroundConfiguration.clear()();
    UIBackgroundConfiguration.cornerRadius.setter();
    v12 = [objc_opt_self() tintColor];
    UIBackgroundConfiguration.strokeColor.setter();
    UIBackgroundConfiguration.strokeWidth.setter();
    UIBackgroundConfiguration.strokeOutset.setter();
    (*(v4 + 32))(v9, v6, v3);
  }

  else
  {
    static UIBackgroundConfiguration.clear()();
  }

  (*(v4 + 16))(v2, v9, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v4 + 8))(v9, v3);
}

unint64_t sub_1006145B8()
{
  result = qword_1011987D0;
  if (!qword_1011987D0)
  {
    sub_1001109D0(&qword_1011987C8);
    sub_100617428(&qword_1011987D8, &qword_1011987E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011987D0);
  }

  return result;
}

uint64_t sub_10061465C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006146C8()
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &qword_10118F6F0);
    if (v1 <= 0x3F)
    {
      sub_100617AE4(319, &qword_101198888, &type metadata accessor for ContentRating, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MusicLibrary.ItemState();
        swift_getWitnessTable();
        type metadata accessor for ObservedObject();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MusicItemState();
          swift_getWitnessTable();
          type metadata accessor for ObservedObject();
          if (v4 <= 0x3F)
          {
            sub_100617AE4(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_100266B58(319, &qword_101185558, &unk_101184290, &unk_100EC0E60, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
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

void sub_100614A0C()
{
  sub_1000308A0(319, &qword_10118F6F0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TextStyle(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SymbolRenderingMode();
      if (v2 <= 0x3F)
      {
        sub_100402A50();
        if (v3 <= 0x3F)
        {
          sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100614B64()
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &qword_101186618);
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10118F6F0);
      if (v2 <= 0x3F)
      {
        sub_100617AE4(319, &qword_101198888, &type metadata accessor for ContentRating, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100614D7C(319, &qword_1011989A8, &unk_1011847C0, &unk_100EC0480, &unk_1011847D0);
            if (v5 <= 0x3F)
            {
              sub_100614D7C(319, &unk_1011989B0, &unk_10118D300, &unk_100EBCE20, &qword_10118D310);
              if (v6 <= 0x3F)
              {
                sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
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

void sub_100614D7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1001109D0(a3);
    sub_100020674(a5, a3);
    v8 = type metadata accessor for ObservedObject();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100614E70()
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &qword_101186618);
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10118F6F0);
      if (v2 <= 0x3F)
      {
        sub_100617AE4(319, &qword_101198888, &type metadata accessor for ContentRating, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100614FD4()
{
  result = qword_101198AB8;
  if (!qword_101198AB8)
  {
    sub_1001109D0(&qword_101198AC0);
    sub_100615060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198AB8);
  }

  return result;
}

unint64_t sub_100615060()
{
  result = qword_101198AC8;
  if (!qword_101198AC8)
  {
    sub_1001109D0(&qword_101198AD0);
    sub_100218D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198AC8);
  }

  return result;
}

uint64_t sub_100615158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_100663950(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_100663950(v14, a4, a6);
  return (v15)(v14, a4);
}

unint64_t sub_10061528C()
{
  result = qword_101198B10;
  if (!qword_101198B10)
  {
    sub_1001109D0(&qword_101198AE8);
    sub_100615344();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198B10);
  }

  return result;
}

unint64_t sub_100615344()
{
  result = qword_101198B18;
  if (!qword_101198B18)
  {
    sub_1001109D0(&qword_101198AE0);
    sub_100020674(&qword_101198B20, &qword_101198AD8);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198B18);
  }

  return result;
}

unint64_t sub_100615428()
{
  result = qword_101198B28;
  if (!qword_101198B28)
  {
    sub_1001109D0(&qword_101198AF8);
    sub_1001109D0(&qword_101198AE8);
    sub_10061528C();
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198B28);
  }

  return result;
}

uint64_t sub_100615550(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100615604(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  sub_1000089F8(a1, v4, &unk_101188920);
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    v10 = &unk_101188920;
    v11 = v4;
  }

  else
  {
    Artwork.url(width:height:)();
    (*(v9 + 8))(v4, v8);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) != 1)
    {
      v15 = URL.absoluteString.getter();
      v17 = v16;
      (*(v13 + 8))(v7, v12);
      v20[2] = v15;
      v20[3] = v17;
      v20[0] = 0x6E6569736E617274;
      v20[1] = 0xE900000000000074;
      sub_100009838();
      v18 = StringProtocol.contains<A>(_:)();

      v14 = v18 ^ 1;
      return v14 & 1;
    }

    v10 = &qword_101183A20;
    v11 = v7;
  }

  sub_1000095E8(v11, v10);
  v14 = 0;
  return v14 & 1;
}

unint64_t sub_100615888()
{
  result = qword_101198BA0;
  if (!qword_101198BA0)
  {
    sub_1001109D0(&qword_101198B70);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BA0);
  }

  return result;
}

unint64_t sub_10061592C()
{
  result = qword_101198BB0;
  if (!qword_101198BB0)
  {
    sub_1001109D0(&qword_101198B78);
    sub_10024E84C();
    sub_100020674(&qword_101198BB8, &qword_101198BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BB0);
  }

  return result;
}

unint64_t sub_1006159E4()
{
  result = qword_101198BC0;
  if (!qword_101198BC0)
  {
    sub_1001109D0(&qword_101198B60);
    sub_100615A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BC0);
  }

  return result;
}

unint64_t sub_100615A70()
{
  result = qword_101198BC8;
  if (!qword_101198BC8)
  {
    sub_1001109D0(&qword_101198B58);
    sub_100615AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BC8);
  }

  return result;
}

unint64_t sub_100615AFC()
{
  result = qword_101198BD0;
  if (!qword_101198BD0)
  {
    sub_1001109D0(&qword_101198B50);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BD0);
  }

  return result;
}

uint64_t sub_100615BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100615C44()
{
  result = qword_101198C18;
  if (!qword_101198C18)
  {
    sub_1001109D0(&qword_101198BE8);
    sub_100020674(&qword_101198C20, &qword_101198BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198C18);
  }

  return result;
}

unint64_t sub_100615CFC()
{
  result = qword_101198C28;
  if (!qword_101198C28)
  {
    sub_1001109D0(&qword_101198BF8);
    sub_1001109D0(&qword_101198BE8);
    sub_100615C44();
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198C28);
  }

  return result;
}

unint64_t sub_100615E6C()
{
  result = qword_101198CA0;
  if (!qword_101198CA0)
  {
    sub_1001109D0(&qword_101198C78);
    sub_100615EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198CA0);
  }

  return result;
}

unint64_t sub_100615EF8()
{
  result = qword_101198CA8;
  if (!qword_101198CA8)
  {
    sub_1001109D0(&qword_101198C70);
    sub_1001109D0(&qword_101186908);
    sub_1001109D0(&qword_101186818);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198CA8);
  }

  return result;
}

uint64_t sub_10061601C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100616084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006160EC()
{
  result = qword_101198CD8;
  if (!qword_101198CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198CD8);
  }

  return result;
}

unint64_t sub_100616178()
{
  result = qword_101198D28;
  if (!qword_101198D28)
  {
    sub_1001109D0(&qword_101198D00);
    sub_100616230();
    sub_100020674(&qword_101185BE0, &qword_101185BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D28);
  }

  return result;
}

unint64_t sub_100616230()
{
  result = qword_101198D30;
  if (!qword_101198D30)
  {
    sub_1001109D0(&qword_101187818);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D30);
  }

  return result;
}

unint64_t sub_100616318()
{
  result = qword_101198D38;
  if (!qword_101198D38)
  {
    sub_1001109D0(&qword_101198D18);
    sub_1006163A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D38);
  }

  return result;
}

unint64_t sub_1006163A4()
{
  result = qword_101198D40;
  if (!qword_101198D40)
  {
    sub_1001109D0(&qword_101198D10);
    sub_1001109D0(&qword_101198D00);
    sub_100616178();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D40);
  }

  return result;
}

unint64_t sub_100616498()
{
  result = qword_101198D58;
  if (!qword_101198D58)
  {
    sub_1001109D0(&qword_101198D50);
    sub_100544124();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D58);
  }

  return result;
}

unint64_t sub_100616570()
{
  result = qword_101198D98;
  if (!qword_101198D98)
  {
    sub_1001109D0(&qword_101198D78);
    sub_1001109D0(&qword_101198D68);
    sub_100020674(&qword_101198D90, &qword_101198D68);
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D98);
  }

  return result;
}

unint64_t sub_10061669C()
{
  result = qword_101198DF8;
  if (!qword_101198DF8)
  {
    sub_1001109D0(&qword_101198DC8);
    sub_100616728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198DF8);
  }

  return result;
}

unint64_t sub_100616728()
{
  result = qword_101198E00;
  if (!qword_101198E00)
  {
    sub_1001109D0(&qword_101198DC0);
    sub_1006167B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198E00);
  }

  return result;
}

unint64_t sub_1006167B4()
{
  result = qword_101198E08;
  if (!qword_101198E08)
  {
    sub_1001109D0(&qword_101198DB8);
    sub_10061686C();
    sub_100020674(&unk_101199EA0, &qword_1011879C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198E08);
  }

  return result;
}

unint64_t sub_10061686C()
{
  result = qword_101198E10;
  if (!qword_101198E10)
  {
    sub_1001109D0(&qword_101198DF0);
    sub_100238768();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198E10);
  }

  return result;
}

unint64_t sub_100616954()
{
  result = qword_101198EA8;
  if (!qword_101198EA8)
  {
    sub_1001109D0(&qword_101198E70);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101198EB0, &qword_101198E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EA8);
  }

  return result;
}

unint64_t sub_100616A24()
{
  result = qword_101198EB8;
  if (!qword_101198EB8)
  {
    sub_1001109D0(&qword_101198E88);
    sub_1001109D0(&qword_101198E78);
    sub_1001109D0(&qword_101198E70);
    sub_100616954();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EB8);
  }

  return result;
}

unint64_t sub_100616B60()
{
  result = qword_101198EC8;
  if (!qword_101198EC8)
  {
    sub_1001109D0(&qword_101198E58);
    sub_100615AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EC8);
  }

  return result;
}

unint64_t sub_100616C2C()
{
  result = qword_101198EE0;
  if (!qword_101198EE0)
  {
    sub_1001109D0(&qword_101198ED0);
    sub_100617E28(&qword_1011860C0, &qword_101184C80);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EE0);
  }

  return result;
}

unint64_t sub_100616D04()
{
  result = qword_101198EE8;
  if (!qword_101198EE8)
  {
    sub_1001109D0(&qword_101198E18);
    sub_100616D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EE8);
  }

  return result;
}

unint64_t sub_100616D90()
{
  result = qword_101198EF0;
  if (!qword_101198EF0)
  {
    sub_1001109D0(&qword_101198EA0);
    sub_100615550(&qword_101198EF8, &qword_101198E98, &unk_100ED7A10, sub_100616B30);
    sub_100020674(&qword_101198F00, &qword_101198CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EF0);
  }

  return result;
}

unint64_t sub_100616E84()
{
  result = qword_101198F18;
  if (!qword_101198F18)
  {
    sub_1001109D0(&qword_101198C48);
    sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F18);
  }

  return result;
}

unint64_t sub_100616F38()
{
  result = qword_101198F28;
  if (!qword_101198F28)
  {
    sub_1001109D0(&qword_101198E28);
    sub_100020674(&qword_101198F30, &qword_101198F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F28);
  }

  return result;
}

unint64_t sub_100616FF0()
{
  result = qword_101198F68;
  if (!qword_101198F68)
  {
    sub_1001109D0(&qword_101198F48);
    sub_1006170A8();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F68);
  }

  return result;
}

unint64_t sub_1006170A8()
{
  result = qword_101198F70;
  if (!qword_101198F70)
  {
    sub_1001109D0(&qword_101198F60);
    sub_100615550(&qword_101198F78, &qword_101198E60, &unk_100ED79D8, sub_100616B60);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F70);
  }

  return result;
}

unint64_t sub_1006171BC()
{
  result = qword_101198F98;
  if (!qword_101198F98)
  {
    sub_1001109D0(&qword_101198E38);
    sub_100617248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F98);
  }

  return result;
}

unint64_t sub_100617248()
{
  result = qword_101198FA0;
  if (!qword_101198FA0)
  {
    sub_1001109D0(&qword_101198F90);
    sub_100615550(&qword_101198F78, &qword_101198E60, &unk_100ED79D8, sub_100616B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FA0);
  }

  return result;
}

uint64_t sub_100617300(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10061737C()
{
  result = qword_101198FB0;
  if (!qword_101198FB0)
  {
    sub_1001109D0(&qword_101198F88);
    sub_100617428(&qword_101198FB8, &unk_101184C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FB0);
  }

  return result;
}

uint64_t sub_100617428(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    sub_100617E28(&qword_1011860C0, &qword_101184C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006174C0()
{
  result = qword_101198FD8;
  if (!qword_101198FD8)
  {
    sub_1001109D0(&qword_101198E48);
    sub_100615550(&qword_101198FD0, &qword_101198FC8, &unk_100ED7AF0, sub_100119518);
    sub_10061737C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FD8);
  }

  return result;
}

uint64_t sub_100617578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SplitPercentageLayout();

  return sub_10060B69C(a1, a2, a3);
}

void sub_10061765C()
{
  sub_100617AE4(319, &unk_101199050, &type metadata accessor for MusicLibrary.DownloadStatus, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100402A50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100617750()
{
  sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100402A50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100617808()
{
  type metadata accessor for MusicItemState();
  swift_getWitnessTable();
  type metadata accessor for ObservedObject();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MusicLibrary.ItemState();
    swift_getWitnessTable();
    type metadata accessor for ObservedObject();
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_1011991A0);
      if (v2 <= 0x3F)
      {
        sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100617A08()
{
  sub_1000308A0(319, &qword_101194178);
  if (v0 <= 0x3F)
  {
    sub_100402A50();
    if (v1 <= 0x3F)
    {
      sub_100617AE4(319, &unk_101199218, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100617AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100617B48()
{
  result = qword_101199260;
  if (!qword_101199260)
  {
    sub_1001109D0(&qword_101198DA0);
    sub_100615550(&qword_101199268, &qword_101198D80, &unk_100ED78E0, sub_100616570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199260);
  }

  return result;
}

unint64_t sub_100617CC4()
{
  result = qword_101199288;
  if (!qword_101199288)
  {
    sub_1001109D0(&qword_101199280);
    sub_100617D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199288);
  }

  return result;
}

unint64_t sub_100617D50()
{
  result = qword_101199290;
  if (!qword_101199290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199290);
  }

  return result;
}

unint64_t sub_100617DA4()
{
  result = qword_101199338;
  if (!qword_101199338)
  {
    sub_1001109D0(&qword_101199330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199338);
  }

  return result;
}

uint64_t sub_100617E28(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100617ED0()
{
  result = qword_101199350;
  if (!qword_101199350)
  {
    sub_1001109D0(&qword_1011992D8);
    sub_1001109D0(&qword_1011992A0);
    sub_100020674(&qword_1011992A8, &qword_1011992A0);
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199350);
  }

  return result;
}

unint64_t sub_100617FFC()
{
  result = qword_101199358;
  if (!qword_101199358)
  {
    sub_1001109D0(&qword_1011992C0);
    sub_100617DA4();
    sub_100617E28(&qword_101199340, &qword_1011992B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199358);
  }

  return result;
}

unint64_t sub_1006180A8()
{
  result = qword_101199360;
  if (!qword_101199360)
  {
    sub_1001109D0(&qword_101199318);
    sub_100615550(&qword_101199368, &qword_101199328, &unk_100ED7DD8, sub_10061818C);
    sub_100615550(&qword_101199378, &qword_101199300, &unk_100ED7DB0, sub_100618274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199360);
  }

  return result;
}

unint64_t sub_10061818C()
{
  result = qword_101199370;
  if (!qword_101199370)
  {
    sub_1001109D0(&qword_101199320);
    sub_100020674(&qword_1011992A8, &qword_1011992A0);
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199370);
  }

  return result;
}

unint64_t sub_100618274()
{
  result = qword_101199380;
  if (!qword_101199380)
  {
    sub_1001109D0(&qword_1011992F8);
    sub_1001109D0(&qword_1011992E8);
    sub_100020674(&qword_101199388, &qword_1011992E8);
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199380);
  }

  return result;
}

unint64_t sub_1006183A0()
{
  result = qword_101199390;
  if (!qword_101199390)
  {
    sub_1001109D0(&qword_1011992D0);
    sub_100615550(&qword_101199348, &qword_1011992E0, &unk_100ED7D90, sub_100617ED0);
    sub_100617FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199390);
  }

  return result;
}

unint64_t sub_100618458()
{
  result = qword_1011993E0;
  if (!qword_1011993E0)
  {
    sub_1001109D0(&qword_1011993D8);
    sub_100618510();
    sub_100020674(&qword_1011993F0, &qword_1011993F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011993E0);
  }

  return result;
}

unint64_t sub_100618510()
{
  result = qword_1011A1620;
  if (!qword_1011A1620)
  {
    sub_1001109D0(&qword_1011993E8);
    sub_100544124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1620);
  }

  return result;
}

unint64_t sub_10061859C()
{
  result = qword_101199410;
  if (!qword_101199410)
  {
    sub_1001109D0(&qword_101199408);
    sub_1005963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199410);
  }

  return result;
}

uint64_t sub_100618658(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1006186B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10061871C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1006187A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100618930(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

unint64_t sub_100618BA0()
{
  result = qword_1011994A0;
  if (!qword_1011994A0)
  {
    sub_1001109D0(&qword_101199270);
    sub_100618C58();
    sub_100020674(&qword_1011994D0, &qword_101199278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994A0);
  }

  return result;
}

unint64_t sub_100618C58()
{
  result = qword_1011994A8;
  if (!qword_1011994A8)
  {
    sub_1001109D0(&qword_1011994B0);
    sub_100618CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994A8);
  }

  return result;
}

unint64_t sub_100618CE4()
{
  result = qword_1011994B8;
  if (!qword_1011994B8)
  {
    sub_1001109D0(&qword_1011994C0);
    sub_100618D9C();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994B8);
  }

  return result;
}

unint64_t sub_100618D9C()
{
  result = qword_1011994C8;
  if (!qword_1011994C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994C8);
  }

  return result;
}

unint64_t sub_100618DF0()
{
  result = qword_1011994D8;
  if (!qword_1011994D8)
  {
    sub_1001109D0(&qword_1011994E0);
    sub_1006180A8();
    sub_1006183A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994D8);
  }

  return result;
}

unint64_t sub_100618E7C()
{
  result = qword_1011994E8;
  if (!qword_1011994E8)
  {
    sub_1001109D0(&qword_1011993B8);
    sub_100020674(&qword_1011994F0, &qword_1011993A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994E8);
  }

  return result;
}

unint64_t sub_100618F7C()
{
  result = qword_101199508;
  if (!qword_101199508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199508);
  }

  return result;
}

unint64_t sub_100618FD0()
{
  result = qword_101199520;
  if (!qword_101199520)
  {
    sub_1001109D0(&qword_101199510);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199520);
  }

  return result;
}

unint64_t sub_1006190C4()
{
  result = qword_101199538;
  if (!qword_101199538)
  {
    sub_1001109D0(&qword_101199518);
    sub_100619150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199538);
  }

  return result;
}

unint64_t sub_100619150()
{
  result = qword_101199540;
  if (!qword_101199540)
  {
    sub_1001109D0(&qword_101199530);
    sub_100619208();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199540);
  }

  return result;
}

unint64_t sub_100619208()
{
  result = qword_101199548;
  if (!qword_101199548)
  {
    sub_1001109D0(&qword_101199528);
    sub_1001109D0(&qword_101199510);
    sub_100618FD0();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199548);
  }

  return result;
}

uint64_t sub_100619300(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v48 = &v47 - v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = Notification.userInfo.getter();
  if (!v18)
  {

LABEL_21:

    goto LABEL_22;
  }

  v19 = v18;
  v52 = v8;
  v53 = v10;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v20 = sub_1000160B4(v56), (v21 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_10000DD18(*(v19 + 56) + 32 * v20, &v54);
  sub_10001621C(v56);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  v22 = v52;
  v52 = v11;
  v53 = v13;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v23 = sub_1000160B4(v56), (v24 & 1) == 0))
  {
LABEL_17:

    sub_10001621C(v56);
LABEL_22:
    v31 = Logger.carMetrics.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v31, v2);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "❌ Missing PAF key information", v34, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }

  sub_10000DD18(*(v19 + 56) + 32 * v23, &v54);
  sub_10001621C(v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v25 = v52;
  v54 = v50;
  v55 = v15;
  AnyHashable.init<A>(_:)();
  if (*(v19 + 16) && (v26 = sub_1000160B4(v56), (v27 & 1) != 0))
  {
    sub_10000DD18(*(v19 + 56) + 32 * v26, &v54);
    sub_10001621C(v56);
    v28 = swift_dynamicCast();
    if (v28)
    {
      v29 = v52;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v53;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    sub_10001621C(v56);
    v29 = 0;
    v30 = 0;
  }

  v54 = v51;
  v55 = v17;
  AnyHashable.init<A>(_:)();
  if (*(v19 + 16) && (v36 = sub_1000160B4(v56), (v37 & 1) != 0))
  {
    sub_10000DD18(*(v19 + 56) + 32 * v36, &v54);
    sub_10001621C(v56);

    v38 = swift_dynamicCast();
    if (v38)
    {
      v39 = v52;
    }

    else
    {
      v39 = 0;
    }

    v40 = v38 ^ 1;
  }

  else
  {

    sub_10001621C(v56);
    v39 = 0;
    v40 = 1;
  }

  static ApplicationCapabilities.shared.getter(v56);
  sub_100014984(v56);
  if (v57 == 2)
  {

LABEL_37:
    v42 = type metadata accessor for TaskPriority();
    v43 = v48;
    (*(*(v42 - 8) + 56))(v48, 1, 1, v42);
    type metadata accessor for MainActor();
    v44 = v49;

    v45 = static MainActor.shared.getter();
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = &protocol witness table for MainActor;
    *(v46 + 32) = v44;
    *(v46 + 40) = v22;
    *(v46 + 48) = v25;
    *(v46 + 56) = v29;
    *(v46 + 64) = v30;
    *(v46 + 72) = v39;
    *(v46 + 80) = v40;
    sub_1001F4CB8(0, 0, v43, &unk_100ED7FF8, v46);
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_37;
  }
}

uint64_t sub_1006199B0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 64) = a10;
  *(v10 + 40) = a8;
  *(v10 + 48) = a9;
  *(v10 + 32) = a7;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for MainActor();
  *(v10 + 56) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100619A54, v12, v11);
}

uint64_t sub_100619A54()
{

  sub_100619CDC();
  v2 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v3 = (*(*qword_101218AC8 + 528))();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      v5 = (*((swift_isaMask & *v3) + 0x138))();

      if (v5 == 1)
      {
LABEL_2:
        sub_100619FD4((v2 & 1) == 0, *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 64) & 1, *(v0 + 16), *(v0 + 24));
      }
    }

    else
    {
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100619BE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002F3F4;

  return sub_1006199B0(v7, v8, a1, v4, v5, v6, v9, v10, v11, v12);
}

void sub_100619CDC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100062364();
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = [v15 session];
        v17 = [v16 role];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_25;
        }

        v5 = v13;
        v6 = v14;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v15 = v24;
          v13 = v5;
          v14 = v6;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_10005C9F8();
    }

    else
    {
LABEL_23:
      sub_10005C9F8();
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100619FD4(char a1, Swift::Int a2, Swift::Int a3, uint64_t a4, char a5, double a6, double a7)
{
  v40 = a4;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v41 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 & 1;
  static CarNowPlayingMetrics.persistedMetricsData(for:)(v46);
  v21 = v47;
  v22 = v46[1];
  if (v47)
  {
    v23 = *v46;
  }

  else
  {
    v23 = 0.0;
  }

  if (!v47)
  {
    v22 = 0;
  }

  v24 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v42 = v13;
    v25 = vabdd_f64(a7, a6);
    if (v47)
    {
      v26 = v48;
    }

    else
    {
      v21 = &_swiftEmptySetSingleton;
      v26 = 0;
    }

    v45 = v21;
    if (!a3 || !a2 && a3 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (a5 & 1) != 0 || v40 < 2)
    {
      sub_10061A3A4(v46, v49);
    }

    else
    {
      sub_10061A3A4(v46, v49);

      sub_1003B3170(v49, a2, a3);

      if (v26 <= v40)
      {
        v26 = v40;
      }
    }

    v27 = v25 + v23;
    if (v47)
    {
      v28 = v46[2];
      sub_10061A414(v46);
    }

    else
    {
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v28 = v29;
      (*(v41 + 8))(v19, v17);
    }

    *v49 = v27;
    v49[1] = v24;
    v49[2] = v28;
    v49[3] = v45;
    v49[4] = v26;
    static CarNowPlayingMetrics.storeMetricsData(_:for:)(v49);

    v30 = Logger.carMetrics.unsafeMutableAddressor();
    v31 = v42;
    (*(v14 + 16))(v16, v30, v42);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446210;
      v43 = v20;
      v36 = String.init<A>(describing:)();
      v38 = sub_1000105AC(v36, v37, &v44);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Stored metrics data for eventType=%{public}s", v34, 0xCu);
      sub_10000959C(v35);
    }

    (*(v14 + 8))(v16, v31);
  }
}

uint64_t sub_10061A3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101199620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061A414(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101199620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10061A47C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v56) = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TVSeason();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TVShow();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s10TVEpisodesVMa(0);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___headerRegistration;
  v18 = sub_10010FC20(&unk_10118A650);
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___listCellRegistration;
  v20 = sub_10010FC20(&unk_1011996B8);
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView] = 0;
  v21 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController;
  v22 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v21] = sub_10003AAD8(0xD00000000000001ALL, 0x8000000100E52800);
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController] = 0;
  v23 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___actionMetricsReportingContext;
  v24 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v24 - 8) + 56))(&v3[v23], 1, 1, v24);
  sub_100623E10(a1, &v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_scope], _s10TVEpisodesV5ScopeOMa);
  v25 = &v16[v14[8]];
  v57 = a1;
  v26 = a1;
  v27 = ObjectType;
  sub_100623E10(v26, v25, _s10TVEpisodesV5ScopeOMa);
  *v16 = 12;
  type metadata accessor for MusicLibrary();
  *(v16 + 1) = static MusicLibrary.shared.getter();
  v28 = &v16[v14[10]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v16[v14[11]] = 260;
  v29 = &v16[v14[12]];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  *&v16[v14[13]] = _swiftEmptyArrayStorage;
  *&v16[v14[14]] = &_swiftEmptySetSingleton;
  v30 = &v16[v14[15]];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  *&v16[v14[16]] = _swiftEmptyArrayStorage;
  v16[v14[9]] = v56;
  sub_10010FC20(&qword_1011996C8);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController] = sub_1003A0F90(v16);
  v58.receiver = v3;
  v58.super_class = v27;
  v31 = objc_msgSendSuper2(&v58, "initWithNibName:bundle:", 0, 0);
  sub_100623E10(v31 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_scope, v12, _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v52;
    v32 = v53;
    v34 = v54;
    (*(v53 + 32))(v52, v12, v54);
    v35 = v31;
    TVSeason.showName.getter();
    (*(v32 + 8))(v33, v34);
  }

  else
  {
    v37 = v50;
    v36 = v51;
    (*(v50 + 32))(v9, v12, v51);
    v38 = v31;
    TVShow.name.getter();
    (*(v37 + 8))(v9, v36);
  }

  v39 = String._bridgeToObjectiveC()();

  [v31 setTitle:v39];

  UIViewController.playActivityFeatureIdentifier.setter(17);
  v40 = [v31 traitCollection];

  v41 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    v44 = [v31 navigationItem];
    [v44 setLargeTitleDisplayMode:v41];
  }

  sub_10010FC20(&unk_101182D80);
  v45 = swift_allocObject();
  v56 = xmmword_100EBC6B0;
  *(v45 + 16) = xmmword_100EBC6B0;
  v46 = sub_100217F14();
  *(v45 + 32) = &type metadata for LibraryFilterTrait;
  *(v45 + 40) = v46;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v47 = swift_allocObject();
  *(v47 + 16) = v56;
  v48 = sub_100137E8C();
  *(v47 + 32) = &type metadata for MusicLibraryTrait;
  *(v47 + 40) = v48;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100623EC0(v57, _s10TVEpisodesV5ScopeOMa);
  return v31;
}

uint64_t sub_10061AB20()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v2 = sub_10061B028();
  v3 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView;
  v4 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView];
  v5 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v6 = v4;
  v7 = [v5 init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v10 + 80) = 0;
  *(v10 + 88) = v8;
  v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010B7C08;
  v12 = _Block_copy(aBlock);

  v13 = [v11 initWithSectionProvider:v12 configuration:v7];

  _Block_release(v12);

  [v2 setCollectionViewLayout:v13];

  v14 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController];
  [*&v1[v3] setPrefetchDataSource:v14];
  v15 = (v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v16 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v15 = sub_100622B10;
  v15[1] = 0;
  sub_100020438(v16);
  v17 = (v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v18 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v17 = sub_10061B4EC;
  v17[1] = 0;
  sub_100020438(v18);
  v19 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v19 + 32);
  *(v19 + 32) = sub_100623F28;
  *(v19 + 40) = v20;

  sub_100020438(v21);

  v22 = sub_10061BFEC();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = *(v22 + 88);
  *(v22 + 88) = sub_100623F30;
  *(v22 + 96) = v23;

  sub_100020438(v24);

  v36[3] = sub_10010FC20(&unk_10118A650);
  v25 = sub_10001C8B8(v36);
  sub_10061C1F0(v25);
  v37[3] = sub_10010FC20(&unk_1011996B8);
  v26 = sub_10001C8B8(v37);
  sub_10061C478(v26);
  swift_arrayDestroy();
  v27 = *&v1[v3];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v29 = swift_allocObject();
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 1;
  *(v29 + 96) = 0;
  v30 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v31 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *(v29 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v29 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v29 + 16) = v27;
  *(v29 + 24) = sub_100623F38;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v32 = *(v29 + 56);
  *(v29 + 64) = 0;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v33 = v27;
  swift_retain_n();
  sub_100020438(v32);
  v34 = *(v29 + 72);
  *(v29 + 72) = 0;
  *(v29 + 80) = 0;
  sub_100020438(v34);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_dragDropController] = v29;
}

id sub_10061B028()
{
  v1 = v0;
  v2 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v2);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView;
  v14 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView];
  if (v14)
  {
    v15 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView];
LABEL_9:
    v50 = v14;
    return v15;
  }

  v51[1] = v2;
  sub_100009F78(0, &qword_101184600);
  (*(v6 + 104))(v8, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v5);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v16 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v10 + 8))(v12, v9);
  v17 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v17);
  v18 = v16;
  v19 = sub_100188F30(v18, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v21 = result;
    [result bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v53.receiver = v19;
    v53.super_class = v17;
    v30 = v19;
    objc_msgSendSuper2(&v53, "frame");
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v52.receiver = v30;
    v52.super_class = v17;
    objc_msgSendSuper2(&v52, "setFrame:", v23, v25, v27, v29);
    sub_1001891B4(v32, v34, v36, v38);
    [v30 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v39 = result;
      [result addSubview:v30];

      v40 = v30;
      [v40 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v40 setDataSource:v1];
      [v40 setDelegate:v1];
      [v40 setKeyboardDismissMode:1];
      [v40 setAllowsFocus:1];
      [v40 setRemembersLastFocusedIndexPath:1];

      sub_100623E10(&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_scope], v4, _s10TVEpisodesV5ScopeOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v42 = "Library.TVAndMovies.SeasonView";
      if (EnumCaseMultiPayload == 1)
      {
        v42 = "pisodesViewController.swift";
        v43 = 0xD00000000000001ELL;
      }

      else
      {
        v43 = 0xD00000000000001CLL;
      }

      v44 = v42 | 0x8000000000000000;
      v45 = AccessibilityIdentifier.init(name:)(*&v43);
      v46 = v45;
      v47 = *(&v45 + 1);
      sub_100623EC0(v4, _s10TVEpisodesV5ScopeOMa);
      v48 = UIView.withAccessibilityIdentifier(_:)(v46, v47);

      v49 = *&v1[v13];
      *&v1[v13] = v48;
      v15 = v48;

      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10061B4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10010FC20(&qword_10118D130);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_10010FC20(&qword_10118D140);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for TVEpisode();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_101199738);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_10010FC20(&qword_10118D150);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_1000089F8(a1, v32, &unk_101183F30);
  if (!v33)
  {
    sub_1000095E8(v32, &unk_101183F30);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v21 = swift_dynamicCast();
  (*(v18 + 56))(v16, v21 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_1000095E8(v16, &qword_101199738);
    v25 = type metadata accessor for Artwork();
    return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  }

  (*(v18 + 32))(v20, v16, v17);
  v22 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v22 + 16))
  {
    (*(v8 + 16))(v10, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v24 = v29;
    MusicItemCollection.subscript.getter();
    (*(v28 + 8))(v6, v24);
    TVEpisode.artwork.getter();
    (*(v26 + 8))(v13, v27);
    return (*(v18 + 8))(v20, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_10061B9C0()
{
  v0 = sub_10010FC20(&qword_10118D150);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v45 - v2;
  v4 = sub_10010FC20(&qword_10118D148);
  __chkstk_darwin(v4 - 8);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v45 - v8;
  v10 = sub_10010FC20(&qword_101199738);
  __chkstk_darwin(v10 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  __chkstk_darwin(v16);
  v18 = v45 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v45[0] = v3;
    v48 = v1;
    RequestResponse.Revision.content.getter(v9);
    v21 = sub_10010FC20(&qword_10118D158);
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    v45[1] = v22 + 48;
    v46 = v23;
    if (v23(v9, 1, v21) == 1)
    {
      sub_1000095E8(v9, &qword_10118D148);
      v24 = 1;
      v25 = v48;
    }

    else
    {
      v25 = v48;
      (*(v48 + 16))(v18, v9, v0);
      sub_1000095E8(v9, &qword_10118D158);
      v24 = 0;
    }

    (*(v25 + 56))(v18, v24, 1, v0);
    v26 = *&v20[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController];
    sub_1000089F8(v18, v15, &qword_101199738);
    v47 = *(v25 + 48);
    if (v47(v15, 1, v0) == 1)
    {
      sub_1000095E8(v15, &qword_101199738);
      v49 = 0u;
      v50 = 0u;
    }

    else
    {
      *(&v50 + 1) = v0;
      v27 = sub_10001C8B8(&v49);
      (*(v25 + 32))(v27, v15, v0);
    }

    v28 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();
    sub_10006B010(&v49, v26 + v28, &unk_101183F30);
    swift_endAccess();
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    if (v46(v6, 1, v21) == 1)
    {
      sub_1000095E8(v6, &qword_10118D148);
      v29 = 1;
      v30 = v48;
    }

    else
    {
      v30 = v48;
      v31 = v45[0];
      (*(v48 + 16))(v45[0], v6, v0);
      sub_1000095E8(v6, &qword_10118D158);
      v32 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v30 + 8))(v31, v0);
      v29 = !v32;
    }

    [v20 setNeedsUpdateContentUnavailableConfiguration];
    v33 = sub_10061B028();
    [v33 setBouncesVertically:v29 & 1];

    v34 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView;
    [*&v20[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v29 & 1];
    [*&v20[v34] reloadData];
    v35 = sub_10061BFEC();
    sub_1000089F8(v18, v12, &qword_101199738);
    if (v47(v12, 1, v0) == 1)
    {
      sub_1000095E8(v12, &qword_101199738);
    }

    else
    {
      v36 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v30 + 8))(v12, v0);
      if (!v36)
      {
        v44 = *(v35 + 64);
        *(v35 + 64) = 1;
        if (v44)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v37 = (*(*&v20[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v38 = v37[1];
    if (v38)
    {
      v39 = *v37 & 0xFFFFFFFFFFFFLL;
      if ((v38 & 0x2000000000000000) != 0)
      {
        v40 = HIBYTE(v38) & 0xF;
      }

      else
      {
        v40 = v39;
      }

      v41 = v40 != 0;
      v42 = *(v35 + 64);
      *(v35 + 64) = v41;
      if (v42 == v41)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v43 = *(v35 + 64);
      *(v35 + 64) = 0;
      if ((v43 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    sub_10043EAB8();
LABEL_20:

    return sub_1000095E8(v18, &qword_101199738);
  }

  return result;
}

uint64_t sub_10061BFEC()
{
  v1 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_10061C090(uint64_t a1, unint64_t a2)
{
  v4 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController);
    v9 = result;

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      a1 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = *(v8 + 48);
    v12 = *(*v11 + 96);
    swift_beginAccess();
    sub_100623E10(v11 + v12, v6, _s10TVEpisodesVMa);
    v13 = &v6[*(v4 + 32)];

    *v13 = a1;
    *(v13 + 1) = v10;
    sub_10037745C(v6);
  }

  return result;
}

uint64_t sub_10061C1F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_10061C478@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&unk_1011996F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &unk_1011996F8);
  v11 = sub_10010FC20(&unk_1011996B8);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &unk_1011996F8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for TVEpisode();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &unk_1011996F8);
  return swift_endAccess();
}

uint64_t sub_10061C718(uint64_t a1)
{
  v2 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TVEpisode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v31 = v14;
    v20 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController;

    sub_10037C290(a1, v10);

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      sub_1000095E8(v10, &unk_1011996D0);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      v21 = *(*&v19[v20] + 48);
      v22 = *(*v21 + 96);
      swift_beginAccess();
      sub_100623E10(v21 + v22, v4, _s10TVEpisodesVMa);
      sub_100651550(v7);
      sub_100623EC0(v4, _s10TVEpisodesVMa);
      v23 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v7, 1, v23) == 1)
      {
        sub_1000095E8(v7, &unk_10118CDB0);
        v25 = 0;
      }

      else
      {
        v25 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v24 + 8))(v7, v23);
      }

      v26 = sub_10079B338(v25);
      v27 = sub_100797240(&off_10109BEB0, v26);

      v28 = v31;
      (*(v12 + 16))(v31, v17, v11);
      v29 = sub_10079F8F4(v27, v28);

      (*(v12 + 8))(v17, v11);
      return v29;
    }
  }

  return result;
}

void sub_10061CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[4] = a1;
  v35[5] = a4;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v35[3] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v35[2] = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v35[1] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10118D148);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v13 = sub_10010FC20(&qword_10118D150);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v35 - v15;
  v17 = sub_10010FC20(&qword_10118D140);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v35 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v12);

  v26 = sub_10010FC20(&qword_10118D158);
  if ((*(*(v26 - 8) + 48))(v12, 1, v26) == 1)
  {
    sub_1000095E8(v12, &qword_10118D148);

    return;
  }

  (*(v14 + 16))(v16, v12, v13);
  sub_1000095E8(v12, &qword_10118D158);
  v27 = MusicLibrarySectionedResponse.sections.getter();
  (*(v14 + 8))(v16, v13);
  v28 = IndexPath.section.getter();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v28 >= *(v27 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  (*(v18 + 16))(v20, v27 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v28, v17);

  (*(v18 + 32))(v23, v20, v17);
  swift_getKeyPath();
  MusicLibrarySection.subscript.getter();

  if (v37)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v31 = v36;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v32._countAndFlagsBits = 0x206E6F73616553;
    v32._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
    v35[7] = v31;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v29 = String.init(localized:table:bundle:locale:comment:)();
    v30 = v34;
  }

  sub_1005FF7FC(v29, v30, &v36);

  UICollectionViewCell.contentConfiguration.setter();

  (*(v18 + 8))(v23, v17);
}

void sub_10061D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_10118D320);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v21[-4] = a3;
    v21[-3] = v16;
    v21[-2] = a1;
    v21[-1] = a5;
    v17 = v16;
    sub_10010FC20(&unk_1011847A0);
    v18 = _s8ListCellVMa(255);
    v19 = sub_100623E78(&qword_10118D2E0, _s8ListCellVMa);
    v21[0] = v18;
    v21[1] = v19;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    static Edge.Set.vertical.getter();
    v21[3] = v8;
    v21[4] = sub_100020674(&unk_1011847B0, &unk_10118D320);
    sub_10001C8B8(v21);
    UIHostingConfiguration.margins(_:_:)();
    v20(v14, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10061D4D0@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v86 = a4;
  v87 = a2;
  v5 = type metadata accessor for TVEpisode();
  v83 = *(v5 - 8);
  v84 = v5;
  __chkstk_darwin(v5);
  v80 = v6;
  v81 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v7 - 8);
  v88 = v71 - v8;
  v9 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v74 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date.FormatStyle.DateStyle();
  v12 = *(v73 - 8);
  __chkstk_darwin(v73);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v15 - 8);
  v17 = v71 - v16;
  v18 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v18 - 8);
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v21 - 8);
  v23 = v71 - v22;
  v24 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v24 - 8);
  v26 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = _s8ListCellVMa(0);
  __chkstk_darwin(v77);
  v28 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  TVEpisode.artworkViewModel.getter(v23);
  v29 = sub_10010FC20(&unk_101182950);
  (*(*(v29 - 8) + 56))(v20, 6, 11, v29);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0x405C71C71C71C71CLL, 0, 0x4050000000000000, 0, 0x3FFC71C71C71C71CLL, 0, 2, v92);
  v30 = Corner.small.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = *(v30 + 16);
  v82 = v26;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v23, v20, 0, 1, v92, v31, v32, v33, v26);
  v79 = TVEpisode.title.getter();
  v78 = v34;
  TVEpisode.releaseDate.getter();
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v17, 1, v35) == 1)
  {
    sub_1000095E8(v17, &qword_101188C20);
    v76 = 0;
    v75 = 0;
  }

  else
  {
    static Date.FormatStyle.DateStyle.long.getter();
    static Date.FormatStyle.TimeStyle.omitted.getter();
    v76 = Date.formatted(date:time:)();
    v75 = v37;
    (v74[1])(v11, v9);
    (*(v12 + 8))(v14, v73);
    (*(v36 + 8))(v17, v35);
  }

  v38 = type metadata accessor for ContentRating();
  v39 = *(v38 - 8);
  v72 = *(v39 + 56);
  v71[2] = v39 + 56;
  v72(v88, 1, 1, v38);
  sub_1007BAD38();
  v90 = sub_10010FC20(&qword_101199708);
  v91 = sub_100020674(&unk_101199710, &qword_101199708);
  sub_10001C8B8(v89);
  dispatch thunk of MusicLibrary.ItemState.$downloadStatus.getter();

  v73 = sub_10010FC20(&unk_1011847C0);
  swift_allocObject();
  v74 = OptionalObservableObject.init(publisher:)(v89);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  sub_100623E78(&qword_101199720, &type metadata accessor for TVEpisode);
  v40 = v84;
  v41 = a1;
  v42 = *(*Player.state<A>(for:)(a1) + 280);
  v90 = sub_10010FC20(&qword_101199728);
  v91 = sub_100020674(&qword_101199730, &qword_101199728);
  sub_10001C8B8(v89);
  v42();

  sub_10010FC20(&unk_10118D300);
  swift_allocObject();
  v71[1] = OptionalObservableObject.init(publisher:)(v89);
  v43 = swift_allocObject();
  v71[0] = v43;
  swift_unknownObjectWeakInit();
  v44 = v83;
  v45 = v81;
  (*(v83 + 16))(v81, v41, v40);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v80 = v47;
  v48 = v85;
  *(v47 + 16) = v43;
  *(v47 + 24) = v48;
  (*(v44 + 32))(v47 + v46, v45, v40);

  v49 = v48;
  v50 = static HierarchicalShapeStyle.primary.getter();
  *(v28 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v28 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v28 = v50;
  v28[40] = 0;
  v51 = v77;
  v52 = &v28[v77[6]];
  v53 = v77[9];
  v54 = v77[10];
  v72(&v28[v54], 1, 1, v38);
  v85 = &v28[v51[11]];
  v55 = v51[14];
  *&v28[v55] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v56 = v82;
  sub_100623E10(v82, &v28[v51[5]], type metadata accessor for ArtworkImage.Info);
  *(v52 + 1) = 0;
  *(v52 + 2) = 0;
  *v52 = 0;
  v57 = &v28[v51[7]];
  v58 = v78;
  *v57 = v79;
  v57[1] = v58;
  v59 = &v28[v51[8]];
  v60 = v75;
  *v59 = v76;
  v59[1] = v60;
  v28[v53] = 0;
  v61 = v88;
  sub_100123348(v88, &v28[v54]);
  v62 = &v28[v51[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0);

  *v62 = ObservedObject.init(wrappedValue:)();
  v62[1] = v63;
  v64 = &v28[v51[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300);
  v65 = ObservedObject.init(wrappedValue:)();
  v67 = v66;

  sub_1000095E8(v61, &unk_10118D2F0);
  sub_100623EC0(v56, type metadata accessor for ArtworkImage.Info);

  *v64 = v65;
  v64[1] = v67;
  v68 = v85;
  v69 = v80;
  *v85 = sub_100623D9C;
  v68[1] = v69;
  sub_100623E78(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100623E78(&qword_10118D2E0, _s8ListCellVMa);

  View.artworkCaching(owner:)();

  return sub_100623EC0(v28, _s8ListCellVMa);
}

uint64_t sub_10061E048(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v138 = a4;
  v5 = type metadata accessor for UUID();
  v147 = *(v5 - 8);
  v148 = v5;
  __chkstk_darwin(v5);
  v146 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011838D0);
  v144 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v142 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v8;
  __chkstk_darwin(v9);
  v11 = &v130 - v10;
  v12 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v12 - 8);
  v139 = &v130 - v13;
  v14 = sub_10010FC20(&unk_1011845D0);
  v141 = *(v14 - 8);
  v15 = *(v141 + 64);
  __chkstk_darwin(v14 - 8);
  v143 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v156 = &v130 - v17;
  v18 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v21 - 8);
  v137 = &v130 - v22;
  v23 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v23 - 8);
  v140 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v130 - v26;
  __chkstk_darwin(v28);
  v152 = &v130 - v29;
  __chkstk_darwin(v30);
  v151 = &v130 - v31;
  v32 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v32 - 8);
  v150 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v155 = &v130 - v35;
  v36 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v36 - 8);
  v38 = &v130 - v37;
  v39 = type metadata accessor for TVEpisode();
  v153 = *(v39 - 8);
  v154 = v39;
  __chkstk_darwin(v39);
  v41 = &v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for IndexPath();
  v158 = *(v42 - 8);
  v159 = v42;
  __chkstk_darwin(v42);
  v44 = &v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v157 = &v130 - v46;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v136 = v27;
    v149 = v11;
    v48 = result;
    v49 = sub_10061B028();
    v50 = [v49 indexPathForCell:a3];

    if (v50)
    {
      v134 = v15;
      v135 = v41;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = v157;
      v51 = v158;
      v53 = v159;
      (*(v158 + 32))(v157, v44, v159);
      v54 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController;

      sub_10037C290(v52, v38);

      v56 = v153;
      v55 = v154;
      if ((*(v153 + 48))(v38, 1, v154) == 1)
      {
        (*(v51 + 8))(v52, v53);

        sub_1000095E8(v38, &unk_1011996D0);
        return 0;
      }

      else
      {
        v57 = v135;
        (*(v56 + 32))(v135, v38, v55);
        sub_10010FC20(&unk_101183900);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100EBC6B0;
        *(v58 + 56) = v55;
        *(v58 + 64) = sub_100623E78(&unk_1011996E0, &type metadata accessor for TVEpisode);
        v59 = sub_10001C8B8((v58 + 32));
        (*(v56 + 16))(v59, v57, v55);
        v60 = [v48 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v133 = v174[0];
        v61 = *(*&v48[v54] + 48);
        v62 = *(*v61 + 96);
        swift_beginAccess();
        sub_100623E10(v61 + v62, v20, _s10TVEpisodesVMa);
        v63 = v137;
        sub_100651550(v137);
        sub_100623EC0(v20, _s10TVEpisodesVMa);
        v64 = v151;
        PlaybackIntentDescriptor.IntentType.init(_:)(v63, v151);
        memset(v174, 0, 40);
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v65 = qword_101218AD8;
        sub_1000089F8(v64, v152, &unk_1011838E0);
        v137 = v65;
        v66 = UIViewController.playActivityInformation.getter();
        v68 = v67;
        v70 = v69;
        v72 = v71;
        sub_1000089F8(v174, &v166, &unk_101183910);
        v73 = v134;
        v138 = v48;
        if (*(&v167 + 1))
        {
          sub_100059A8C(&v166, &v170);
          v74 = v136;
        }

        else
        {
          *&v175 = v48;
          sub_100009F78(0, &qword_101183D40);
          v75 = v48;
          sub_10010FC20(&unk_101183920);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v178, &v170);
            v74 = v136;
          }

          else
          {
            v180 = 0;
            v178 = 0u;
            v179 = 0u;
            *&v170 = v75;
            v76 = v75;
            v77 = String.init<A>(reflecting:)();
            v171 = &type metadata for Player.CommandIssuerIdentity;
            v172 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v170 = v77;
            *(&v170 + 1) = v78;
            v74 = v136;
            if (*(&v179 + 1))
            {
              sub_1000095E8(&v178, &unk_101183910);
            }
          }

          v64 = v151;
          if (*(&v167 + 1))
          {
            sub_1000095E8(&v166, &unk_101183910);
          }
        }

        v79 = v155;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v137, v152, v66, v68, v70, v72, &v170, v155);
        sub_1000095E8(v174, &unk_101183910);
        sub_1000095E8(v64, &unk_1011838E0);
        v80 = type metadata accessor for Actions.PlaybackContext();
        v81 = *(v80 - 8);
        (*(v81 + 56))(v79, 0, 1, v80);
        v82 = type metadata accessor for PlaylistContext();
        (*(*(v82 - 8) + 56))(v156, 1, 1, v82);
        v83 = v158;
        v84 = v139;
        v85 = v159;
        (*(v158 + 16))(v139, v157, v159);
        (*(v83 + 56))(v84, 0, 1, v85);
        v86 = v138;
        sub_100376EFC(v84, v174);
        sub_1000095E8(v84, &unk_10118BCE0);
        v87 = v149;
        sub_10061F408(v149);
        v88 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
        sub_100008FE4(v58 + 32, v173);

        sub_1000089F8(v174, &v166, &unk_1011845E0);
        if (v169 == 1)
        {
          v180 = 0;
          v178 = 0u;
          v179 = 0u;
          v181 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v86, &v178, &v170);
          v89 = v150;
          if (v169 != 1)
          {
            sub_1000095E8(&v166, &unk_1011845E0);
          }
        }

        else
        {
          sub_10012B828(&v166, &v170);
          v89 = v150;
        }

        swift_getObjectType();
        v90 = swift_conformsToProtocol2();
        if (v90)
        {
          v139 = v90;
          v91 = v86;
          v151 = v86;
        }

        else
        {
          v151 = 0;
          v139 = 0;
        }

        v152 = swift_allocBox();
        v93 = v92;
        sub_1000089F8(v155, v89, &unk_10118AB20);
        v94 = *(v81 + 48);
        if (v94(v89, 1, v80) == 1)
        {
          v95 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
          (*(*(v95 - 8) + 56))(v74, 1, 1, v95);
          v168 = 0;
          v166 = 0u;
          v167 = 0u;
          sub_1000089F8(v74, v140, &unk_1011838E0);
          v137 = v137;
          v96 = UIViewController.playActivityInformation.getter();
          v131 = v98;
          v132 = v97;
          v100 = v99;
          sub_1000089F8(&v166, &v164, &unk_101183910);
          if (v165)
          {
            sub_100059A8C(&v164, &v175);
          }

          else
          {
            v163 = v86;
            sub_100009F78(0, &qword_101183D40);
            v101 = v86;
            sub_10010FC20(&unk_101183920);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v160, &v175);
              v89 = v150;
            }

            else
            {
              v162 = 0;
              v160 = 0u;
              v161 = 0u;
              *&v175 = v101;
              v102 = v101;
              v103 = String.init<A>(reflecting:)();
              *(&v176 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v177 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v175 = v103;
              *(&v175 + 1) = v104;
              v89 = v150;
              if (*(&v161 + 1))
              {
                sub_1000095E8(&v160, &unk_101183910);
              }
            }

            v74 = v136;
            if (v165)
            {
              sub_1000095E8(&v164, &unk_101183910);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v137, v140, v96, v132, v131, v100, &v175, v93);
          sub_1000095E8(&v166, &unk_101183910);
          sub_1000095E8(v74, &unk_1011838E0);
          v105 = v94(v89, 1, v80);
          v73 = v134;
          if (v105 != 1)
          {
            sub_1000095E8(v89, &unk_10118AB20);
          }
        }

        else
        {
          sub_100623D20(v89, v93, type metadata accessor for Actions.PlaybackContext);
        }

        v106 = &v93[*(v80 + 28)];
        sub_1000089F8(v106, &v175, &unk_101183910);
        if (*(&v176 + 1))
        {
          sub_100059A8C(&v175, &v166);
        }

        else
        {
          *&v166 = v138;
          v107 = v138;
          v108 = String.init<A>(reflecting:)();
          *(&v167 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v168 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v166 = v108;
          *(&v166 + 1) = v109;
          if (*(&v176 + 1))
          {
            sub_1000095E8(&v175, &unk_101183910);
          }
        }

        sub_10010FC20(&unk_101183930);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_100EBDC20;
        *(v110 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v110 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v110 + 32) = 0x4D747865746E6F43;
        *(v110 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v166, v110 + 72);
        v111 = static Player.CommandIssuer<>.combining(_:)();
        v113 = v112;

        sub_10000959C(&v166);
        *(&v167 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v168 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v166 = v111;
        *(&v166 + 1) = v113;
        sub_10006B010(&v166, v106, &unk_101183910);
        sub_100008FE4(v173, &v166);
        sub_10010FC20(&unk_10118AB50);
        v150 = String.init<A>(describing:)();
        v140 = v114;
        v137 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v173, &v164);
        sub_10012B7A8(&v170, &v166);
        v115 = v142;
        sub_1000089F8(v149, v142, &unk_1011838D0);
        v116 = v143;
        sub_1000089F8(v156, v143, &unk_1011845D0);
        v117 = (*(v144 + 80) + 160) & ~*(v144 + 80);
        v118 = (v145 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
        v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
        v120 = (*(v141 + 80) + v119 + 8) & ~*(v141 + 80);
        v145 = (v120 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
        v121 = swift_allocObject();
        sub_100059A8C(&v164, v121 + 16);
        *(v121 + 56) = v133;
        sub_10012B828(&v166, v121 + 64);
        sub_10003D17C(v115, v121 + v117, &unk_1011838D0);
        *(v121 + v118) = v137;
        *(v121 + v119) = v152;
        sub_10003D17C(v116, v121 + v120, &unk_1011845D0);
        v122 = v121 + v145;
        v123 = v139;
        *v122 = v151;
        *(v122 + 8) = v123;
        *(v122 + 16) = 2;
        v124 = (v121 + ((v120 + v73 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v124 = variable initialization expression of Library.Context.playlistVariants;
        v124[1] = 0;
        swift_unknownObjectRetain();

        v125 = v146;
        UUID.init()();
        v126 = UUID.uuidString.getter();
        v128 = v127;
        (*(v147 + 8))(v125, v148);
        v182._countAndFlagsBits = v150;
        v182._object = v140;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v182, v126, v128, sub_10021953C, v121, &v175);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v170);
        sub_10000959C(v173);

        v129 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v170 = v175;
        sub_100015BB0(&v170);
        v166 = v176;
        sub_100015BB0(&v166);

        sub_1000095E8(v149, &unk_1011838D0);
        sub_1000095E8(v174, &unk_1011845E0);
        sub_1000095E8(v156, &unk_1011845D0);
        sub_1000095E8(v155, &unk_10118AB20);
        (*(v153 + 8))(v135, v154);
        (*(v158 + 8))(v157, v159);
        return v129;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10061F408@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_100623D20(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v38 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = type metadata accessor for MetricsEvent.Page(0);
  v36 = *(*(v18 - 8) + 56);
  v36(v8, 1, 1, v18);
  v37 = v5;
  sub_1000089F8(v8, v5, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v19 = sub_10053771C();
  v34 = v20;
  v35 = v19;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v21 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v24 = v16[5];
  v36(&a1[v24], 1, 1, v18);
  v25 = v16[7];
  v26 = &a1[v16[6]];
  v27 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v37, &a1[v24], &unk_1011838F0);
  v28 = v34;
  *v26 = v35;
  v26[1] = v28;
  *&a1[v25] = 0;
  *&a1[v27] = 0;
  v29 = &a1[v16[9]];
  *v29 = v33 & 1;
  *(v29 + 1) = v32;
  *(v29 + 2) = v23;
  sub_100623E10(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v30 = v38;
  swift_beginAccess();
  sub_10006B010(v11, v30 + v15, &unk_1011838D0);
  return swift_endAccess();
}

uint64_t sub_10061F8A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {
    goto LABEL_7;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    strcpy(v15, "Unknown kind=");
    v15[7] = -4864;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_10061C1F0(v8);
  sub_100009F78(0, &unk_101184750);
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v13;
}

void *sub_10061FBC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_1011996B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_10037C290(a2, &v19 - v11);
  sub_10061C478(v6);
  v13 = sub_1007FD6F4(v6, a2, v12);
  (*(v4 + 8))(v6, v3);
  sub_1000089F8(v12, v9, &unk_1011996D0);
  v14 = type metadata accessor for TVEpisode();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_1011996D0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  else
  {
    *(&v20 + 1) = v14;
    v21 = sub_100623E78(&qword_1011996F0, &type metadata accessor for TVEpisode);
    v16 = sub_10001C8B8(&v19);
    (*(v15 + 32))(v16, v9, v14);
  }

  v17 = sub_1004F24B0(&v19);

  sub_1000095E8(v12, &unk_1011996D0);
  sub_1000095E8(&v19, &qword_1011A3DD0);
  return v17;
}

BOOL sub_10061FFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = UICollectionView.isDraggingCell(at:)();

  (*(v5 + 8))(v7, v4);
  return (v9 & 1) == 0;
}

uint64_t sub_1006200A0(void *a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v73 = &v67 - v6;
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v70 = &v67 - v8;
  v9 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v9 - 8);
  v74 = &v67 - v10;
  v72 = type metadata accessor for PlaybackIntentDescriptor(0);
  v75 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v11;
  __chkstk_darwin(v12);
  v69 = &v67 - v13;
  v76 = type metadata accessor for GenericMusicItem();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v79 = *(v17 - 8);
  v80 = v17;
  __chkstk_darwin(v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v77 = &v67 - v21;
  v22 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v22 - 8);
  v71 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v67 - v25;
  v27 = type metadata accessor for TVEpisode();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v78 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v81 deselectItemAtIndexPath:isa animated:1];

  v81 = v3;
  v31 = [v3 navigationItem];
  v32 = [v31 searchController];

  if (v32)
  {
    v33 = [v32 searchBar];

    [v33 resignFirstResponder];
  }

  sub_10037C290(a2, v26);
  v34 = v28;
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v35 = &unk_1011996D0;
    v36 = v26;
    return sub_1000095E8(v36, v35);
  }

  v38 = *(v28 + 32);
  v39 = v78;
  v38(v78, v26, v27);
  v40 = v34;
  v41 = *(v34 + 16);
  v41(v16, v39, v27);
  v42 = v76;
  (*(v14 + 104))(v16, enum case for GenericMusicItem.tvEpisode(_:), v76);
  v43 = v77;
  sub_100538C48(v16, v77);
  v44 = v42;
  v45 = v43;
  (*(v14 + 8))(v16, v44);
  v46 = v79;
  v47 = *(v79 + 104);
  v76 = v27;
  v48 = v80;
  v47(v19, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v80);
  LOBYTE(v43) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v50 = *(v46 + 8);
  v49 = v46 + 8;
  v51 = v19;
  v52 = v50;
  (v50)(v51, v48);
  if (v43)
  {
    v73 = v52;
    v53 = v71;
    v54 = v76;
    v41(v71, v39, v76);
    (*(v40 + 56))(v53, 0, 1, v54);
    v55 = v74;
    sub_1006209AC(v53, v74);
    sub_1000095E8(v53, &unk_1011996D0);
    v56 = v75;
    if ((*(v75 + 48))(v55, 1, v72) == 1)
    {
      (v73)(v45, v80);
      (*(v40 + 8))(v39, v54);
      v35 = &qword_1011848A0;
      v36 = v55;
      return sub_1000095E8(v36, v35);
    }

    v59 = v69;
    sub_100623D20(v55, v69, type metadata accessor for PlaybackIntentDescriptor);
    v60 = type metadata accessor for TaskPriority();
    v61 = v70;
    (*(*(v60 - 8) + 56))(v70, 1, 1, v60);
    v62 = v68;
    sub_100623E10(v59, v68, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v63 = static MainActor.shared.getter();
    v64 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v65 = swift_allocObject();
    v79 = v49;
    v66 = v65;
    *(v65 + 16) = v63;
    *(v65 + 24) = &protocol witness table for MainActor;
    sub_100623D20(v62, v65 + v64, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v61, &unk_100ECA700, v66);

    sub_100623EC0(v59, type metadata accessor for PlaybackIntentDescriptor);
    (v73)(v45, v80);
    return (*(v40 + 8))(v78, v54);
  }

  else
  {
    v57 = type metadata accessor for IndexPath();
    v58 = v73;
    (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
    sub_100376EFC(v58, v82);
    sub_1000095E8(v58, &unk_10118BCE0);
    sub_100860424(v45, v39, v82);
    sub_10012BA6C(v82);
    (v52)(v45, v48);
    return (*(v40 + 8))(v39, v76);
  }
}

uint64_t sub_1006209AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v3 - 8);
  v37 = &v36 - v4;
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v2;
  v18 = *(*&v2[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController] + 48);
  v19 = *(*v18 + 96);
  swift_beginAccess();
  v20 = v18 + v19;
  v21 = v39;
  sub_100623E10(v20, v10, _s10TVEpisodesVMa);
  sub_100651C9C(v21, v13);
  sub_100623EC0(v10, _s10TVEpisodesVMa);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &unk_10118CDB0);
    v22 = 1;
    v23 = v40;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v7, v17, v14);
    swift_storeEnumTagMultiPayload();
    v24 = v21;
    v25 = v37;
    sub_1000089F8(v24, v37, &unk_1011996D0);
    v26 = type metadata accessor for TVEpisode();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_1000095E8(v25, &unk_1011996D0);
      v42 = 0u;
      v43 = 0u;
      v44 = 0;
    }

    else
    {
      *(&v43 + 1) = v26;
      v44 = sub_100623E78(&unk_1011996E0, &type metadata accessor for TVEpisode);
      v28 = sub_10001C8B8(&v42);
      (*(v27 + 32))(v28, v25, v26);
    }

    v29 = v38;
    v41[0] = v38;
    v30 = v38;
    v31 = String.init<A>(reflecting:)();
    v41[3] = &type metadata for Player.CommandIssuerIdentity;
    v41[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v41[0] = v31;
    v41[1] = v32;
    v33 = v30;
    v23 = v40;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v7, &v42, 3, 0, 0, 1, 0, 1, v40, v29, v41);
    (*(v15 + 8))(v17, v14);
    v22 = 0;
  }

  v34 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v34 - 8) + 56))(v23, v22, 1, v34);
}

uint64_t sub_100620F98(uint64_t a1)
{
  v2 = type metadata accessor for TVEpisode();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1007351F8(v5, 1);
}

unint64_t sub_100621058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = a4;
  v5 = type metadata accessor for UUID();
  v131 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011838D0);
  v128 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v129 = v9;
  v130 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = &v113 - v11;
  v12 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v12 - 8);
  v122 = &v113 - v13;
  v14 = sub_10010FC20(&unk_1011845D0);
  v125 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v126 = v15;
  v127 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v113 - v17;
  v18 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v21 - 8);
  v23 = &v113 - v22;
  v24 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v24 - 8);
  v121 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v124 = &v113 - v27;
  __chkstk_darwin(v28);
  v30 = &v113 - v29;
  __chkstk_darwin(v31);
  v33 = &v113 - v32;
  v34 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v34 - 8);
  v132 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v134 = &v113 - v37;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v39 = Strong;
  v119 = v7;
  v120 = v5;
  sub_10010FC20(&unk_101183900);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBC6B0;
  v41 = type metadata accessor for TVEpisode();
  *(v40 + 56) = v41;
  *(v40 + 64) = sub_100623E78(&unk_1011996E0, &type metadata accessor for TVEpisode);
  v42 = sub_10001C8B8((v40 + 32));
  (*(*(v41 - 8) + 16))(v42, a3, v41);
  v43 = [v39 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v118 = v151[0];
  v44 = *(*&v39[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController] + 48);
  v45 = *(*v44 + 96);
  swift_beginAccess();
  sub_100623E10(v44 + v45, v20, _s10TVEpisodesVMa);
  sub_100651550(v23);
  sub_100623EC0(v20, _s10TVEpisodesVMa);
  PlaybackIntentDescriptor.IntentType.init(_:)(v23, v33);
  memset(v151, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v46 = qword_101218AD8;
  sub_1000089F8(v33, v30, &unk_1011838E0);
  v47 = v46;
  v117 = UIViewController.playActivityInformation.getter();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1000089F8(v151, &v143, &unk_101183910);
  v133 = v39;
  v116 = v47;
  if (*(&v144 + 1))
  {
    sub_100059A8C(&v143, &v147);
  }

  else
  {
    *&v152 = v39;
    sub_100009F78(0, &qword_101183D40);
    v55 = v39;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v155, &v147);
    }

    else
    {
      v157 = 0;
      v155 = 0u;
      v156 = 0u;
      *&v147 = v55;
      v56 = v55;
      v57 = String.init<A>(reflecting:)();
      v148 = &type metadata for Player.CommandIssuerIdentity;
      v149 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v147 = v57;
      *(&v147 + 1) = v58;
      if (*(&v156 + 1))
      {
        sub_1000095E8(&v155, &unk_101183910);
      }
    }

    v47 = v116;
    if (*(&v144 + 1))
    {
      sub_1000095E8(&v143, &unk_101183910);
    }
  }

  v59 = v134;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v47, v30, v117, v49, v51, v53, &v147, v134);
  sub_1000095E8(v151, &unk_101183910);
  sub_1000095E8(v33, &unk_1011838E0);
  v60 = type metadata accessor for Actions.PlaybackContext();
  v61 = *(v60 - 8);
  (*(v61 + 56))(v59, 0, 1, v60);
  v62 = type metadata accessor for PlaylistContext();
  (*(*(v62 - 8) + 56))(v135, 1, 1, v62);
  v63 = type metadata accessor for IndexPath();
  v64 = *(v63 - 8);
  v65 = v122;
  (*(v64 + 16))(v122, v123, v63);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = v133;
  sub_100376EFC(v65, v151);
  sub_1000095E8(v65, &unk_10118BCE0);
  v67 = v136;
  sub_10061F408(v136);
  v68 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  sub_100008FE4(v40 + 32, v150);

  sub_1000089F8(v151, &v143, &unk_1011845E0);
  if (v146 == 1)
  {
    v157 = 0;
    v155 = 0u;
    v156 = 0u;
    v158 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v66, &v155, &v147);
    v69 = v132;
    if (v146 != 1)
    {
      sub_1000095E8(&v143, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v143, &v147);
    v69 = v132;
  }

  swift_getObjectType();
  v70 = swift_conformsToProtocol2();
  if (v70)
  {
    v117 = v70;
    v71 = v66;
    v122 = v66;
  }

  else
  {
    v122 = 0;
    v117 = 0;
  }

  v123 = swift_allocBox();
  v73 = v72;
  sub_1000089F8(v134, v69, &unk_10118AB20);
  v74 = *(v61 + 48);
  if (v74(v69, 1, v60) == 1)
  {
    v75 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v76 = v124;
    (*(*(v75 - 8) + 56))(v124, 1, 1, v75);
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v77 = v76;
    v78 = v121;
    sub_1000089F8(v77, v121, &unk_1011838E0);
    v116 = v116;
    v79 = UIViewController.playActivityInformation.getter();
    v114 = v81;
    v115 = v80;
    v83 = v82;
    sub_1000089F8(&v143, &v141, &unk_101183910);
    if (v142)
    {
      sub_100059A8C(&v141, &v152);
    }

    else
    {
      v140 = v66;
      sub_100009F78(0, &qword_101183D40);
      v84 = v66;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v137, &v152);
        v69 = v132;
      }

      else
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        *&v152 = v84;
        v85 = v84;
        v86 = String.init<A>(reflecting:)();
        *(&v153 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v154 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v152 = v86;
        *(&v152 + 1) = v87;
        v69 = v132;
        if (*(&v138 + 1))
        {
          sub_1000095E8(&v137, &unk_101183910);
        }
      }

      v66 = v133;
      v78 = v121;
      if (v142)
      {
        sub_1000095E8(&v141, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v116, v78, v79, v115, v114, v83, &v152, v73);
    sub_1000095E8(&v143, &unk_101183910);
    sub_1000095E8(v124, &unk_1011838E0);
    if (v74(v69, 1, v60) != 1)
    {
      sub_1000095E8(v69, &unk_10118AB20);
    }
  }

  else
  {
    sub_100623D20(v69, v73, type metadata accessor for Actions.PlaybackContext);
  }

  v88 = *(v60 + 28);
  sub_1000089F8(&v73[v88], &v152, &unk_101183910);
  if (*(&v153 + 1))
  {
    sub_100059A8C(&v152, &v143);
  }

  else
  {
    *&v143 = v66;
    v89 = v66;
    v90 = String.init<A>(reflecting:)();
    *(&v144 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v145 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v143 = v90;
    *(&v143 + 1) = v91;
    if (*(&v153 + 1))
    {
      sub_1000095E8(&v152, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_100EBDC20;
  *(v92 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v92 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v92 + 32) = 0x4D747865746E6F43;
  *(v92 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v143, v92 + 72);
  v93 = static Player.CommandIssuer<>.combining(_:)();
  v95 = v94;

  sub_10000959C(&v143);
  *(&v144 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v145 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v143 = v93;
  *(&v143 + 1) = v95;
  sub_10006B010(&v143, &v73[v88], &unk_101183910);
  sub_100008FE4(v150, &v143);
  sub_10010FC20(&unk_10118AB50);
  v132 = String.init<A>(describing:)();
  v124 = v96;
  v121 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v150, &v141);
  sub_10012B7A8(&v147, &v143);
  v97 = v130;
  sub_1000089F8(v136, v130, &unk_1011838D0);
  v98 = v127;
  sub_1000089F8(v135, v127, &unk_1011845D0);
  v99 = (*(v128 + 80) + 160) & ~*(v128 + 80);
  v100 = (v129 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
  v102 = (*(v125 + 80) + v101 + 8) & ~*(v125 + 80);
  v129 = (v102 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v102 + v126 + 31) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  sub_100059A8C(&v141, v104 + 16);
  *(v104 + 56) = v118;
  sub_10012B828(&v143, v104 + 64);
  sub_10003D17C(v97, v104 + v99, &unk_1011838D0);
  *(v104 + v100) = v121;
  *(v104 + v101) = v123;
  sub_10003D17C(v98, v104 + v102, &unk_1011845D0);
  v105 = v104 + v129;
  v106 = v117;
  *v105 = v122;
  *(v105 + 8) = v106;
  *(v105 + 16) = 2;
  v107 = (v104 + v103);
  *v107 = variable initialization expression of Library.Context.playlistVariants;
  v107[1] = 0;
  swift_unknownObjectRetain();

  v108 = v119;
  UUID.init()();
  v109 = UUID.uuidString.getter();
  v111 = v110;
  (*(v131 + 8))(v108, v120);
  v159._countAndFlagsBits = v132;
  v159._object = v124;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v159, v109, v111, sub_100217D28, v104, &v152);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v147);
  sub_10000959C(v150);

  v54 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v147 = v152;
  sub_100015BB0(&v147);
  v143 = v153;
  sub_100015BB0(&v143);

  sub_1000095E8(v136, &unk_1011838D0);
  sub_1000095E8(v151, &unk_1011845E0);
  sub_1000095E8(v135, &unk_1011845D0);
  sub_1000095E8(v134, &unk_10118AB20);
  return v54;
}

id sub_1006222E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = sub_10023D4E4(v7, 0, 1);

  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t sub_100622440()
{
  v0 = sub_10010FC20(&qword_10118D148);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&qword_10118D150);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&qword_10118D158);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &qword_10118D148);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &qword_10118D158);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007DBC74(v11);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v4 + 8))(v9, v3);
    }

    (*(v4 + 8))(v9, v3);
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t type metadata accessor for LibraryTVEpisodesViewController()
{
  result = qword_1011996A0;
  if (!qword_1011996A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100622970()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011996B0, &unk_1011996B8);
    if (v1 <= 0x3F)
    {
      _s10TVEpisodesV5ScopeOMa(319);
      if (v2 <= 0x3F)
      {
        sub_1002114E8();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

double sub_100622B10()
{
  v0 = [objc_opt_self() currentTraitCollection];
  [v0 displayScale];

  return 113.777778;
}

uint64_t sub_100622B80(char *a1)
{
  v2 = _s10TVEpisodesVMa(0);
  v3 = v2 - 8;
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController];
  v8 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v9 = sub_10049CB78();

  v10 = *(v7 + 48);
  v11 = *(*v10 + 96);
  swift_beginAccess();
  sub_100623E10(v10 + v11, v6, _s10TVEpisodesVMa);
  v6[*(v3 + 36)] = v9 & 1;
  return sub_10037745C(v6);
}

uint64_t sub_100622CC4(char *a1)
{
  v2 = _s10TVEpisodesVMa(0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController];
  v7 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v8 = v12[1];
  v9 = *(v6 + 48);
  v10 = *(*v9 + 96);
  swift_beginAccess();
  sub_100623E10(v9 + v10, v5, _s10TVEpisodesVMa);

  *(v5 + 1) = v8;
  return sub_10037745C(v5);
}

uint64_t sub_100622DF0()
{
  v0 = sub_10010FC20(&qword_10118D148);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&qword_10118D150);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&qword_10118D158);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &qword_10118D148);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &qword_10118D158);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_100622FF4(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&qword_10118D130);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&qword_10118D140);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&qword_10118D148);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&qword_10118D150);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&qword_10118D158);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &qword_10118D148);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &qword_10118D158);
  v17 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v17 + 16) <= v20)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C270, &qword_10118D130);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

id sub_100623410(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for TVEpisode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v60 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v20 = __chkstk_darwin(v16);
  v21 = &v44 - v17;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v58 = v13;
  v59 = v15;
  v22 = *(v15 + 16);
  v23 = *(v15 + 80);
  v61 = v18;
  v55 = v22;
  v56 = v19;
  (v22)(&v44 - v17, a1 + ((v23 + 32) & ~v23), v18, v20);
  sub_10037C290(v21, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v59 + 8))(v21, v61);
    sub_1000095E8(v4, &unk_1011996D0);
    return 0;
  }

  v50 = ~v23;
  v57 = v21;
  v25 = v6;
  v54 = *(v6 + 32);
  v45 = v23;
  v26 = v10;
  v27 = v6 + 32;
  v28 = v58;
  v54(v58, v4, v5);
  v48 = v27;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v53 = v25;
  v46 = *(v25 + 16);
  v46(v26, v28, v5);
  v29 = *(v25 + 80);
  v30 = v5;
  v47 = v29 | 7;
  v49 = swift_allocObject();
  v54((v49 + ((v29 + 16) & ~v29)), v26, v5);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v60;
  v32 = v30;
  v51 = v30;
  v46(v60, v28, v30);
  v33 = v56;
  v34 = v61;
  v55(v56, v57, v61);
  v35 = (v29 + 24) & ~v29;
  v36 = (v7 + v45 + v35) & v50;
  v37 = swift_allocObject();
  *(v37 + 16) = v44;
  v54((v37 + v35), v31, v32);
  v38 = v59;
  (*(v59 + 32))(v37 + v36, v33, v34);
  v39 = objc_opt_self();
  v66 = sub_100623BE8;
  v67 = v49;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747E6C;
  v65 = &unk_1010B7A50;
  v40 = _Block_copy(&aBlock);

  v66 = sub_100623C48;
  v67 = v37;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747EBC;
  v65 = &unk_1010B7A78;
  v41 = _Block_copy(&aBlock);

  v42 = isa;
  v43 = [v39 configurationWithIdentifier:isa previewProvider:v40 actionProvider:v41];

  _Block_release(v41);
  _Block_release(v40);
  (*(v53 + 8))(v58, v51);
  (*(v38 + 8))(v57, v61);

  return v43;
}

void sub_100623A2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___headerRegistration;
  v3 = sub_10010FC20(&unk_10118A650);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___listCellRegistration;
  v5 = sub_10010FC20(&unk_1011996B8);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView) = 0;
  v6 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController;
  v7 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v6) = sub_10003AAD8(0xD00000000000001ALL, 0x8000000100E52800);
  *(v1 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController) = 0;
  v8 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___actionMetricsReportingContext;
  v9 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100623BE8()
{
  v1 = *(type metadata accessor for TVEpisode() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100620F98(v2);
}

unint64_t sub_100623C48(uint64_t a1)
{
  v3 = *(type metadata accessor for TVEpisode() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100621058(a1, v7, v1 + v4, v8);
}

uint64_t sub_100623D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100623D9C(uint64_t a1)
{
  v3 = *(type metadata accessor for TVEpisode() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_10061E048(a1, v4, v5, v6);
}

uint64_t sub_100623E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100623E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100623EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14descr101092F61V12SongCellViewVMa()
{
  result = qword_101199798;
  if (!qword_101199798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100623FD4()
{
  sub_10001F7E8();
  if (v0 <= 0x3F)
  {
    sub_100465200();
    if (v1 <= 0x3F)
    {
      sub_1006240B8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Playlist();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Playlist.Entry();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Song();
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

void sub_1006240B8()
{
  if (!qword_1011997A8)
  {
    type metadata accessor for PlaybackIndicator();
    sub_10062414C(&qword_101186998, type metadata accessor for PlaybackIndicator);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011997A8);
    }
  }
}

uint64_t sub_10062414C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006241B0()
{
  sub_10010FC20(&qword_1011997F8);
  sub_10010FC20(&qword_101199800);
  sub_100020674(&qword_101199808, &qword_1011997F8);
  sub_1006253FC();
  return Label.init(title:icon:)();
}

double sub_1006242A0@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  v24 = 1;
  sub_100624448(&v11);
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v37[8] = v19;
  v37[9] = v20;
  v37[10] = v21;
  v37[4] = v15;
  v37[5] = v16;
  v37[6] = v17;
  v37[7] = v18;
  v37[0] = v11;
  v37[1] = v12;
  v36 = v22;
  v38 = v22;
  v37[2] = v13;
  v37[3] = v14;
  sub_1000089F8(&v25, &v10, &qword_101199830);
  sub_1000095E8(v37, &qword_101199830);
  *&v23[135] = v33;
  *&v23[151] = v34;
  *&v23[167] = v35;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31;
  *&v23[119] = v32;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v23[39] = v27;
  *&v23[55] = v28;
  v3 = *&v23[144];
  *(a1 + 145) = *&v23[128];
  *(a1 + 161) = v3;
  *(a1 + 177) = *&v23[160];
  v4 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v4;
  v5 = *&v23[112];
  *(a1 + 113) = *&v23[96];
  *(a1 + 129) = v5;
  v6 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v6;
  result = *&v23[32];
  v8 = *&v23[48];
  *(a1 + 49) = *&v23[32];
  v23[183] = v36;
  v9 = v24;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 193) = *&v23[176];
  *(a1 + 65) = v8;
  return result;
}

__n128 sub_100624448@<Q0>(uint64_t a1@<X8>)
{
  _s14descr101092F61V12SongCellViewVMa();
  *&v14 = Song.title.getter();
  *(&v14 + 1) = v2;
  sub_100009838();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[87] = v19;
  *&v13[103] = v20;
  *&v13[7] = v14;
  *&v13[23] = v15;
  *&v13[39] = v16;
  v11 = swift_getKeyPath();
  *(a1 + 105) = *&v13[64];
  *(a1 + 121) = *&v13[80];
  *(a1 + 137) = *&v13[96];
  *(a1 + 41) = *v13;
  *(a1 + 57) = *&v13[16];
  result = *&v13[32];
  *(a1 + 73) = *&v13[32];
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 89) = *&v13[48];
  *(a1 + 152) = *(&v20 + 1);
  *(a1 + 160) = v11;
  *(a1 + 168) = 2;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_1006245C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkImage.ReusePolicy();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29[-v12];
  _s14descr101092F61V12SongCellViewVMa();
  v14 = type metadata accessor for Song();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v14, &protocol witness table for Song, v13);
  v15 = sub_10010FC20(&unk_101182950);
  (*(*(v15 - 8) + 56))(v10, 1, 11, v15);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v43);
  (*(v5 + 104))(v7, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v4);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v13, v10, v43, v7, a2);
  (*(v5 + 8))(v7, v4);
  sub_100172200(v10);
  sub_1000095E8(v13, &unk_10118A5E0);
  v16 = a2 + *(sub_10010FC20(&qword_1011968F0) + 36);
  *v16 = 0;
  *(v16 + 8) = 257;
  v17 = static Alignment.center.getter();
  v19 = v18;
  sub_100624974(a1, &v30);
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v44 = v30;
  v45 = v31;
  *&v57 = v17;
  *(&v57 + 1) = v19;
  v20 = (a2 + *(sub_10010FC20(&qword_101199800) + 36));
  v21 = v55;
  v20[10] = v54;
  v20[11] = v21;
  v22 = v57;
  v20[12] = v56;
  v20[13] = v22;
  v23 = v51;
  v20[6] = v50;
  v20[7] = v23;
  v24 = v53;
  v20[8] = v52;
  v20[9] = v24;
  v25 = v47;
  v20[2] = v46;
  v20[3] = v25;
  v26 = v49;
  v20[4] = v48;
  v20[5] = v26;
  v27 = v45;
  *v20 = v44;
  v20[1] = v27;
  v58[10] = v40;
  v58[11] = v41;
  v58[12] = v42;
  v58[6] = v36;
  v58[7] = v37;
  v58[8] = v38;
  v58[9] = v39;
  v58[2] = v32;
  v58[3] = v33;
  v58[4] = v34;
  v58[5] = v35;
  v58[0] = v30;
  v58[1] = v31;
  v59 = v17;
  v60 = v19;
  sub_1000089F8(&v44, v29, &qword_101199820);
  return sub_1000095E8(v58, &qword_101199820);
}

__n128 sub_100624974@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s14descr101092F61V12SongCellViewVMa();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v29 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14descr101092F61V20PlaybackStateManagerCMa();
  sub_10062414C(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v6 = v85;
  if (!v85)
  {

LABEL_6:
    sub_100625690(&v85);
    goto LABEL_7;
  }

  v7 = MPCPlayerResponse.playState(for:in:)();
  v9 = v8;

  if ((v9 & 1) != 0 || !v7)
  {
    goto LABEL_6;
  }

  static Color.black.getter();
  v10 = Color.opacity(_:)();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = sub_100586FC8();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v99;
  v25 = v100;
  v26 = v98;
  v12 = v101;
  v23 = v103;
  v24 = v102;
  v13 = v29;
  sub_1006252B8(a1, v29);
  v14 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v15 = swift_allocObject();
  sub_10062531C(v13, v15 + v14);
  LOBYTE(v72) = v11;
  LOBYTE(v64) = v12;
  *v45 = v10;
  *&v45[8] = v38;
  *&v45[72] = v42;
  *&v45[56] = v41;
  *&v45[88] = v43;
  *&v45[104] = v44;
  *&v45[24] = v39;
  *&v45[40] = v40;
  v32 = *&v45[32];
  v33 = *&v45[48];
  v30 = *v45;
  v31 = *&v45[16];
  *&v37[0] = *(&v44 + 1);
  v35 = *&v45[80];
  v36 = *&v45[96];
  v34 = *&v45[64];
  LOBYTE(v46) = v27;
  *(&v46 + 1) = v26;
  LOBYTE(v47) = v11;
  *(&v47 + 1) = v25;
  LOBYTE(v48) = v12;
  *(&v48 + 1) = v24;
  *&v49 = v23;
  *(&v49 + 1) = sub_100625630;
  v50 = v15;
  v52 = 0;
  v51 = 0;
  *(&v37[1] + 8) = v47;
  *(v37 + 8) = v46;
  *(&v37[5] + 1) = 0;
  *(&v37[4] + 8) = v15;
  *(&v37[3] + 8) = v49;
  *(&v37[2] + 8) = v48;
  v53[0] = v27;
  v54 = v26;
  v55 = v11;
  v56 = v25;
  v57 = v12;
  v58 = v24;
  v59 = v23;
  v60 = sub_100625630;
  v61 = v15;
  v63 = 0;
  v62 = 0;
  sub_1000089F8(v45, &v72, &qword_101196908);
  sub_1000089F8(&v46, &v72, &qword_101199828);
  sub_1000095E8(v53, &qword_101199828);
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v71 = v44;
  v65 = v38;
  v66 = v39;
  v64 = v10;
  v67 = v40;
  sub_1000095E8(&v64, &qword_101196908);
  v82 = v37[3];
  v83 = v37[4];
  v84 = v37[5];
  v78 = v36;
  v79 = v37[0];
  v80 = v37[1];
  v81 = v37[2];
  v74 = v32;
  v75 = v33;
  v76 = v34;
  v77 = v35;
  v72 = v30;
  v73 = v31;
  UIScreen.Dimensions.size.getter(v31.n128_f64[0]);
  v95 = v82;
  v96 = v83;
  v97 = v84;
  v91 = v78;
  v92 = v79;
  v94 = v81;
  v93 = v80;
  v87 = v74;
  v88 = v75;
  v90 = v77;
  v89 = v76;
  v85 = v72;
  v86 = v73;
LABEL_7:
  v16 = v96;
  *(a2 + 160) = v95;
  *(a2 + 176) = v16;
  *(a2 + 192) = v97;
  v17 = v92;
  *(a2 + 96) = v91;
  *(a2 + 112) = v17;
  v18 = v94;
  *(a2 + 128) = v93;
  *(a2 + 144) = v18;
  v19 = v88;
  *(a2 + 32) = v87;
  *(a2 + 48) = v19;
  v20 = v90;
  *(a2 + 64) = v89;
  *(a2 + 80) = v20;
  result = v86;
  *a2 = v85;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100624ECC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  _s14descr101092F61V20PlaybackStateManagerCMa();
  sub_10062414C(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
  StateObject.wrappedValue.getter();
  v8 = _s14descr101092F61V12SongCellViewVMa();
  v9 = *(v8 + 32);
  v10 = type metadata accessor for Playlist.Entry();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, a1 + v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v12 = *(v8 + 28);
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4, a1 + v12, v13);
  (*(v14 + 56))(v4, 0, 1, v13);
  sub_10040FFDC(v7, v4);

  sub_1000095E8(v4, &unk_1011814D0);
  return sub_1000095E8(v7, &qword_101191570);
}

uint64_t sub_100625150(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1006252B8(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_10062531C(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  v8 = v1;
  sub_10010FC20(&qword_1011997E8);
  sub_100020674(&qword_1011997F0, &qword_1011997E8);
  return Button.init(action:label:)();
}

uint64_t sub_1006252B8(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V12SongCellViewVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062531C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V12SongCellViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006253FC()
{
  result = qword_101199810;
  if (!qword_101199810)
  {
    sub_1001109D0(&qword_101199800);
    sub_100597D0C();
    sub_100020674(&qword_101199818, &qword_101199820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199810);
  }

  return result;
}

uint64_t sub_1006254B4()
{
  v1 = (_s14descr101092F61V12SongCellViewVMa() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_100465CCC();

  v3 = v1[9];
  v4 = type metadata accessor for Playlist();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[10];
  v6 = type metadata accessor for Playlist.Entry();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = v1[11];
  v8 = type metadata accessor for Song();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_100625630()
{
  v1 = *(_s14descr101092F61V12SongCellViewVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100624ECC(v2);
}

double sub_100625690(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}