uint64_t sub_10001D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_100207248);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001D428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_100207248);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10001D50C()
{
  sub_10001D5B4(319, &qword_1002072B8, type metadata accessor for PDFDocumentViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PDFDocumentViewRepresentable.Components();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10001D5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10001D660(uint64_t a1)
{
  result = sub_10001C718(&qword_1002072F0, type metadata accessor for PDFDocumentViewRepresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001D700(uint64_t a1)
{
  result = sub_10001C718(&qword_100207320, type metadata accessor for PDFDocumentViewRepresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001D760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFDocumentViewRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D7DC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentSceneView(0);
  sub_100005804(&qword_100207670);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v4 == 1)
  {

    v3 = 0;
  }

  else
  {
    j___s7SwiftUI5StateV12wrappedValuexvg();

    v3 = v4;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_10001D910()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentSceneView(0);
  sub_100005804(&qword_100207670);
  j___s7SwiftUI5StateV12wrappedValuexvs();
}

uint64_t sub_10001D9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentSceneView(0);
  v5 = a2 + v4[5];
  sub_100005804(&qword_100207518);
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v5 = v12;
  *(v5 + 16) = v13;
  v6 = v4[6];
  sub_100005804(&qword_100207520);
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *(a2 + v6) = v12;
  v7 = a2 + v4[7];
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v7 = v12;
  *(v7 + 8) = *(&v12 + 1);
  v8 = a2 + v4[8];
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v8 = v12;
  *(v8 + 8) = *(&v12 + 1);
  v9 = a2 + v4[9];
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v9 = v12;
  *(v9 + 8) = *(&v12 + 1);
  v10 = (a2 + v4[10]);
  type metadata accessor for DocumentCreationTargetProvider(0);
  swift_allocObject();
  sub_10011529C();
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  *v10 = v12;
  return sub_100023CD8(a1, a2, &qword_10020A0A0);
}

uint64_t sub_10001DBA0@<X0>(uint64_t a1@<X8>)
{
  v168 = a1;
  v165 = sub_100005804(&qword_1002074C0);
  __chkstk_darwin(v165);
  v161 = &v135 - v2;
  v166 = sub_100005804(&qword_100207610);
  __chkstk_darwin(v166);
  v167 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v171 = &v135 - v5;
  v6 = type metadata accessor for DocumentSceneView(0);
  v149 = *(v6 - 1);
  __chkstk_darwin(v6);
  v152 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v7;
  __chkstk_darwin(v8);
  v183 = &v135 - v9;
  v138 = type metadata accessor for DocumentSceneUIKitRepresentable(0);
  __chkstk_darwin(v138);
  v135 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100005804(&qword_100207618);
  v142 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v135 - v11;
  v147 = sub_100005804(&qword_100207620);
  *&v146 = *(v147 - 1);
  __chkstk_darwin(v147);
  v140 = &v135 - v12;
  *&v145 = sub_100005804(&qword_100207628);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v135 - v13;
  v182 = sub_100005804(&qword_100207630);
  __chkstk_darwin(v182);
  v148 = &v135 - v14;
  v154 = sub_100005804(&qword_100207638);
  v153 = *(v154 - 1);
  __chkstk_darwin(v154);
  v169 = (&v135 - v15);
  v151 = sub_100005804(&qword_100207640);
  __chkstk_darwin(v151);
  v170 = &v135 - v16;
  v174 = sub_100005804(&qword_100207648);
  __chkstk_darwin(v174);
  v156 = &v135 - v17;
  v159 = sub_100005804(&qword_100207650);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v135 - v18;
  v173 = sub_100005804(&qword_100207658);
  v160 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v135 - v19;
  v164 = sub_100005804(&qword_100207660);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v135 - v20;
  v155 = sub_100005804(&qword_10020A0A0);
  Binding.projectedValue.getter();
  v21 = (v1 + v6[5]);
  v22 = *v21;
  v179 = v21[1];
  v180 = v22;
  v178 = v21[2];
  *&v190 = v22;
  *(&v190 + 1) = v179;
  *&v191 = v178;
  v177 = sub_100005804(&qword_100207668);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v23 = v184;
  v24 = v185;
  v25 = (v1 + v6[7]);
  v26 = *v25;
  v27 = *(v25 + 1);
  v136 = v26;
  LOBYTE(v184) = v26;
  v137 = v27;
  v185 = v27;
  v176 = sub_100005804(&qword_100207670);
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v28 = v190;
  v29 = v191;
  v150 = v6;
  v30 = (v1 + v6[10]);
  v31 = v30[1];
  *&v190 = *v30;
  v32 = v190;
  *(&v190 + 1) = v31;
  sub_100005804(&qword_100207678);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v33 = v184;
  v34 = v138;
  v35 = v135;
  v36 = &v135[*(v138 + 20)];
  *v36 = v23;
  *(v36 + 1) = v24;
  v37 = &v35[*(v34 + 24)];
  *v37 = v28;
  v37[16] = v29;
  v38 = v34;
  *&v35[*(v34 + 28)] = v33;
  v39 = v35;
  v175 = v1;
  *&v190 = sub_10001F2FC();
  *(&v190 + 1) = v40;
  v41 = sub_100021ED8(&qword_100207508, type metadata accessor for DocumentSceneUIKitRepresentable);
  v42 = sub_100022D38();
  v43 = v139;
  View.navigationTitle<A>(_:)();

  sub_100021FB0(v39);
  swift_getKeyPath();
  *&v190 = v32;
  *(&v190 + 1) = v31;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  *&v190 = v38;
  *(&v190 + 1) = &type metadata for String;
  *&v191 = v41;
  v44 = v141;
  v45 = v140;
  *(&v191 + 1) = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.focusedSceneValue<A>(_:_:)();

  (*(v142 + 8))(v43, v44);
  swift_getKeyPath();
  *&v190 = v180;
  *(&v190 + 1) = v179;
  *&v191 = v178;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v184)
  {
    v47 = v185;
    ObjectType = swift_getObjectType();
    sub_100142ADC(ObjectType, v47);
    swift_unknownObjectRelease();
  }

  swift_weakInit();

  v49 = type metadata accessor for DocumentCreationTargetProvider(255);
  *&v190 = v44;
  *(&v190 + 1) = v49;
  *&v191 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v50 = v143;
  v51 = v147;
  View.focusedSceneValue<A>(_:_:)();

  sub_100022D9C(&v184);
  (*(v146 + 8))(v45, v51);
  v52 = static SafeAreaRegions.all.getter();
  v53 = static Edge.Set.all.getter();
  v54 = v148;
  (*(v144 + 32))(v148, v50, v145);
  v55 = v54 + *(v182 + 36);
  *v55 = v52;
  *(v55 + 8) = v53;
  LOBYTE(v184) = v136;
  v185 = v137;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v147 = type metadata accessor for DocumentSceneView;
  v56 = v175;
  v57 = v183;
  sub_100022DF0(v175, v183, type metadata accessor for DocumentSceneView);
  v58 = *(v149 + 80);
  v59 = (v58 + 16) & ~v58;
  v60 = swift_allocObject();
  *&v145 = type metadata accessor for DocumentSceneView;
  sub_100022E5C(v57, v60 + v59, type metadata accessor for DocumentSceneView);
  sub_100005804(&qword_100207688);
  sub_100022F34();
  sub_1000230CC();
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_100007710(v54, &qword_100207630);
  v61 = v150;
  v62 = v56 + v150[8];
  v63 = *v62;
  v64 = *(v62 + 8);
  LOBYTE(v184) = v63;
  v185 = v64;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v65 = v190;
  LODWORD(v146) = v191;
  v66 = (v56 + v61[6]);
  v68 = *v66;
  v67 = v66[1];
  v150 = v68;
  v184 = v68;
  v185 = v67;
  v149 = v67;
  v148 = sub_100005804(&qword_1002076A8);
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v69 = v190;
  v70 = v191;
  v71 = v152;
  sub_100022DF0(v56, v152, v147);
  v182 = v58;
  v72 = swift_allocObject();
  v176 = v59;
  sub_100022E5C(v71, v72 + v59, v145);
  v152 = static Alignment.center.getter();
  v147 = v73;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v74 = ~v182;
  v75 = swift_allocObject();
  *(v75 + 16) = v69;
  *(v75 + 32) = v70;
  *(v75 + 40) = v65;
  *(v75 + 56) = v146;
  *(v75 + 64) = sub_100023348;
  *(v75 + 72) = v72;

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_100030500(v69, *(&v69 + 1), v70, sub_1000233C0, v75, &v190);

  v146 = v190;
  v145 = v191;
  v76 = v192;
  v77 = v170;
  (*(v153 + 32))(v170, v169, v154);
  v78 = v77 + *(v151 + 36);
  v79 = v145;
  *v78 = v146;
  *(v78 + 16) = v79;
  v80 = v152;
  *(v78 + 32) = v76;
  *(v78 + 40) = v80;
  *(v78 + 48) = v147;
  v184 = v180;
  v185 = v179;
  v186 = v178;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v188)
  {
    v81 = v189;
    v82 = swift_getObjectType();
    sub_100142B2C(v82, v81);
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = type metadata accessor for DocumentErrorViewModel();
    (*(v83[-1].Description + 7))(v171, 1, 1, v83);
  }

  v84 = v175;
  v85 = v183;
  sub_100022DF0(v175, v183, type metadata accessor for DocumentSceneView);
  v86 = static MainActor.shared.getter();
  v87 = (v182 + 32) & v74;
  v88 = swift_allocObject();
  *(v88 + 16) = v86;
  *(v88 + 24) = &protocol witness table for MainActor;
  sub_100022E5C(v85, v88 + v87, type metadata accessor for DocumentSceneView);
  v169 = type metadata accessor for DocumentSceneView;
  sub_100022DF0(v84, v85, type metadata accessor for DocumentSceneView);
  v89 = static MainActor.shared.getter();
  v90 = swift_allocObject();
  *(v90 + 16) = v89;
  *(v90 + 24) = &protocol witness table for MainActor;
  v154 = type metadata accessor for DocumentSceneView;
  sub_100022E5C(v85, v90 + v87, type metadata accessor for DocumentSceneView);
  j___s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC();
  v91 = v184;
  v92 = v185;
  LODWORD(v153) = v186;
  sub_100022DF0(v84, v85, type metadata accessor for DocumentSceneView);
  v93 = v176;
  v94 = swift_allocObject();
  sub_100022E5C(v85, v94 + v93, type metadata accessor for DocumentSceneView);
  v95 = v156;
  v96 = &v156[*(v174 + 36)];
  sub_100023CD8(v171, v96, &qword_100207610);
  v97 = type metadata accessor for DocumentErrorAlertModifier();
  v98 = v96 + *(v97 + 20);
  *v98 = v91;
  *(v98 + 8) = v92;
  *(v98 + 16) = v153;
  v99 = (v96 + *(v97 + 24));
  *v99 = sub_100023694;
  v99[1] = v94;
  sub_100023720(v170, v95);
  v100 = v161;
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  sub_100022DF0(v84, v85, v169);
  v101 = swift_allocObject();
  sub_100022E5C(v85, v101 + v93, v154);
  v102 = sub_1000237A8();
  v103 = sub_1000239BC();
  v104 = v157;
  v105 = v165;
  View.onChange<A>(of:initial:_:)();

  sub_100007710(v100, &qword_1002074C0);
  sub_100007710(v95, &qword_100207648);
  v184 = v180;
  v185 = v179;
  v186 = v178;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v188)
  {
    v106 = v189;
    v107 = swift_getObjectType();
    LOBYTE(v106) = sub_100142CA8(v107, v106);
    swift_unknownObjectRelease();
    v108 = v106 & 1;
  }

  else
  {
    v108 = 2;
  }

  v109 = v159;
  LOBYTE(v188) = v108;
  v110 = v175;
  v111 = v183;
  sub_100022DF0(v175, v183, type metadata accessor for DocumentSceneView);
  v112 = v176;
  v113 = swift_allocObject();
  sub_100022E5C(v111, v113 + v112, type metadata accessor for DocumentSceneView);
  v114 = sub_100005804(&qword_1002076E0);
  v184 = v174;
  v185 = v105;
  v186 = v102;
  v187 = v103;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = sub_100023A88();
  View.onChange<A>(of:initial:_:)();

  (*(v158 + 8))(v104, v109);
  v184 = v150;
  v185 = v149;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v188)
  {
    v117 = sub_100111104();

    v118 = v117 & 1;
  }

  else
  {
    v118 = 2;
  }

  v119 = v162;
  LOBYTE(v188) = v118;
  v120 = v183;
  sub_100022DF0(v110, v183, type metadata accessor for DocumentSceneView);
  v121 = v176;
  v122 = swift_allocObject();
  sub_100022E5C(v120, v122 + v121, type metadata accessor for DocumentSceneView);
  v184 = v109;
  v185 = v114;
  v186 = v115;
  v187 = v116;
  v123 = swift_getOpaqueTypeConformance2();
  v124 = v173;
  v125 = v172;
  View.onChange<A>(of:initial:_:)();

  (*(v160 + 8))(v125, v124);
  v184 = v180;
  v185 = v179;
  v186 = v178;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v188)
  {
    v126 = v189;
    v127 = swift_getObjectType();
    v128 = v167;
    sub_100142B2C(v127, v126);
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = type metadata accessor for DocumentErrorViewModel();
    v128 = v167;
    (*(v129[-1].Description + 7))(v167, 1, 1, v129);
  }

  v130 = v183;
  sub_100022DF0(v110, v183, type metadata accessor for DocumentSceneView);
  v131 = v176;
  v132 = swift_allocObject();
  sub_100022E5C(v130, v132 + v131, type metadata accessor for DocumentSceneView);
  v184 = v173;
  v185 = v114;
  v186 = v123;
  v187 = v116;
  swift_getOpaqueTypeConformance2();
  sub_100023B34();
  v133 = v164;
  View.onChange<A>(of:initial:_:)();

  sub_100007710(v128, &qword_100207610);
  return (*(v163 + 8))(v119, v133);
}

uint64_t sub_10001F2FC()
{
  v0 = type metadata accessor for BookmarkableURL(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005804(&qword_1002074C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  sub_100005804(&qword_10020A0A0);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  if ((*(v1 + 48))(v6, 1, v0))
  {
    v10 = &qword_1002074C0;
    v11 = v6;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_100007710(v6, &qword_1002074C0);
    sub_100152830(v9);
    (*(v1 + 8))(v3, v0);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) != 1)
    {
      v15 = URL.lastPathComponent.getter();
      (*(v13 + 8))(v9, v12);
      return v15;
    }

    v10 = &qword_10020A4B0;
    v11 = v9;
  }

  sub_100007710(v11, v10);
  return 0;
}

uint64_t sub_10001F5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LockingView();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100207688);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for DocumentSceneView(0);
  v12 = (a1 + *(v11 + 20));
  v13 = *(v12 + 2);
  v24 = *v12;
  v25 = v13;
  sub_100005804(&qword_100207668);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v22 && (v14 = v23, ObjectType = swift_getObjectType(), v16 = sub_100142B18(ObjectType, v14), swift_unknownObjectRelease(), v16))
  {
    v17 = (a1 + *(v11 + 28));
    v18 = *v17;
    v19 = *(v17 + 1);
    LOBYTE(v22) = v18;
    v23 = v19;
    sub_100005804(&qword_100207670);
    j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
    sub_1000AFE44(v24, *(&v24 + 1), v25, v7);
    sub_100022E5C(v7, v10, type metadata accessor for LockingView);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v5 + 56))(v10, v20, 1, v4);
  sub_100023CD8(v10, a2, &qword_100207688);
}

uint64_t sub_10001F834()
{
  v0 = sub_100005804(&qword_1002074C0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for BookmarkableURL(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100021F40(v5, v3);
  sub_100005804(&qword_10020A0A0);
  j___s7SwiftUI7BindingV12wrappedValuexvs();
  return sub_100007710(v5, &qword_1002074C0);
}

uint64_t sub_10001F95C(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002074C0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v18 - v6;
  v8 = sub_100005804(&qword_100207610);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = (a1 + *(type metadata accessor for DocumentSceneView(0) + 20));
  v12 = *(v11 + 2);
  v19 = *v11;
  v20 = v12;
  sub_100005804(&qword_100207668);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v18[0])
  {
    v13 = v18[1];
    ObjectType = swift_getObjectType();
    v15 = type metadata accessor for DocumentErrorViewModel();
    (*(v15[-1].Description + 7))(v10, 1, 1, v15);
    sub_100142B40(v10, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v16 = type metadata accessor for BookmarkableURL(0);
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_100021F40(v7, v5);
  sub_100005804(&qword_10020A0A0);
  j___s7SwiftUI7BindingV12wrappedValuexvs();
  return sub_100007710(v7, &qword_1002074C0);
}

uint64_t sub_10001FB90(uint64_t a1)
{
  v2 = sub_100005804(&unk_10020A0B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  __chkstk_darwin(v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v45 - v12;
  v13 = sub_100005804(&qword_1002074C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for BookmarkableURL(0);
  v50 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for DocumentSceneView(0);
  v20 = (a1 + v19[10]);
  v22 = *v20;
  v21 = v20[1];
  *&v53 = v22;
  *(&v53 + 1) = v21;
  sub_100005804(&qword_100207678);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v23 = sub_1001153E8();

  if (v23)
  {
  }

  sub_100005804(&qword_10020A0A0);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  v24 = v50;
  if ((*(v50 + 48))(v15, 1, v16) == 1)
  {
    sub_100007710(v15, &qword_1002074C0);
LABEL_13:
    v42 = (a1 + v19[5]);
    v43 = *(v42 + 2);
    v53 = *v42;
    v54 = v43;
    v51 = 0;
    v52 = 0;
    sub_100005804(&qword_100207668);
    j___s7SwiftUI5StateV12wrappedValuexvs();
    v53 = *(a1 + v19[6]);
    v51 = 0;
    sub_100005804(&qword_1002076A8);
    j___s7SwiftUI5StateV12wrappedValuexvs();
  }

  (*(v24 + 32))(v18, v15, v16);
  v25 = v24;
  sub_100152830(v7);
  v27 = v48;
  v26 = v49;
  if ((*(v49 + 48))(v7, 1, v48) == 1)
  {
    (*(v25 + 8))(v18, v16);
    sub_100007710(v7, &qword_10020A4B0);
    goto LABEL_13;
  }

  (*(v26 + 32))(v47, v7, v27);
  v28 = sub_10013A3F8();
  if (!v28)
  {
    (*(v49 + 8))(v47, v27);
    (*(v50 + 8))(v18, v16);
    goto LABEL_13;
  }

  v30 = v28;
  v31 = v29;
  ObjectType = swift_getObjectType();
  v33 = sub_1001429C4(ObjectType, v31);
  sub_100152860(v4);
  sub_100182DE4();

  v34 = (a1 + v19[5]);
  v35 = *(v34 + 2);
  v53 = *v34;
  v54 = v35;
  v51 = v30;
  v52 = v31;
  swift_unknownObjectRetain();
  sub_100005804(&qword_100207668);
  j___s7SwiftUI5StateV12wrappedValuexvs();
  v36 = v46;
  v37 = v47;
  (*(v49 + 16))(v46, v47, v48);
  type metadata accessor for DownloadStatusViewModel();
  swift_allocObject();
  v38 = sub_100111AE4(v36);
  v39 = (a1 + v19[6]);
  v41 = v39[1];
  *&v53 = *v39;
  v40 = v53;
  *(&v53 + 1) = v41;
  v51 = v38;
  sub_100005804(&qword_1002076A8);
  j___s7SwiftUI5StateV12wrappedValuexvs();
  *&v53 = v40;
  *(&v53 + 1) = v41;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v51)
  {
    sub_100111B88();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v49 + 8))(v37, v48);
  (*(v50 + 8))(v18, v16);
}

uint64_t sub_1000201D4()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentSceneView(0);
  sub_100005804(&qword_100207668);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v2)
  {
    ObjectType = swift_getObjectType();
    sub_100142CA8(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  sub_100005804(&qword_100207670);
  j___s7SwiftUI5StateV12wrappedValuexvs();
}

uint64_t sub_100020328()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DocumentSceneView(0);
  sub_100005804(&qword_1002076A8);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  if (v1)
  {
    sub_100111104();
  }

  sub_100005804(&qword_100207670);
  j___s7SwiftUI5StateV12wrappedValuexvs();
}

uint64_t sub_100020464(uint64_t a1)
{
  v2 = type metadata accessor for DocumentSceneView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100022DF0(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentSceneView);
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100022E5C(v5, v12 + v11, type metadata accessor for DocumentSceneView);
  sub_10005DB88(0, 0, v8, &unk_10019B168, v12);
}

uint64_t sub_1000206B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_100005804(&qword_100207610);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v7;
  v4[16] = v6;

  return _swift_task_switch(sub_1000207E0, v7, v6);
}

uint64_t sub_1000207E0()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1000208AC;

  return sub_10002D09C(600000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000208AC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100023EE0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100020A40;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100020A40()
{
  v1 = *(v0 + 72);

  v2 = type metadata accessor for DocumentSceneView(0);
  v3 = v1 + *(v2 + 20);
  v4 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v4;
  sub_100005804(&qword_100207668);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v5 = *(v0 + 80);
  if (!*(v0 + 40))
  {
    v10 = type metadata accessor for DocumentErrorViewModel();
    (*(v10[-1].Description + 7))(v5, 1, 1, v10);
    goto LABEL_5;
  }

  v6 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  sub_100142B2C(ObjectType, v6);
  swift_unknownObjectRelease();
  v8 = type metadata accessor for DocumentErrorViewModel();
  v9 = 1;
  if ((*(v8[-1].Description + 6))(v5, 1, v8) == 1)
  {
LABEL_5:
    v9 = 0;
  }

  v11 = *(v0 + 72);
  sub_100007710(*(v0 + 80), &qword_100207610);
  v12 = (v11 + *(v2 + 36));
  v13 = *v12;
  v14 = *(v12 + 1);
  *(v0 + 56) = v13;
  *(v0 + 64) = v14;
  *(v0 + 144) = v9;
  sub_100005804(&qword_100207670);
  j___s7SwiftUI5StateV12wrappedValuexvs();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100020C30()
{
  sub_100021FB0(v0 + OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable19DocumentCoordinator_parent);

  return swift_deallocClassInstance();
}

uint64_t sub_100020CBC()
{
  result = type metadata accessor for DocumentSceneUIKitRepresentable(319);
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

uint64_t sub_100020D6C()
{
  v1 = type metadata accessor for DocumentSceneUIKitRepresentable(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable19DocumentCoordinator_parent;
  swift_beginAccess();
  sub_100022DF0(v5 + v6, v4, type metadata accessor for DocumentSceneUIKitRepresentable);
  v7 = &v4[*(v2 + 32)];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v7) = v7[16];
  v12 = v8;
  v13 = v9;
  v14 = v7;
  v11[15] = 1;

  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvs();
  sub_100021FB0(v4);
}

uint64_t sub_100020E8C()
{
  v1 = sub_100005804(&qword_1002074C0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for DocumentSceneUIKitRepresentable(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable19DocumentCoordinator_parent;
  swift_beginAccess();
  sub_100022DF0(v10 + v11, v9, type metadata accessor for DocumentSceneUIKitRepresentable);
  v12 = type metadata accessor for BookmarkableURL(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_100021F40(v6, v4);
  sub_100005804(&qword_10020A0A0);
  j___s7SwiftUI7BindingV12wrappedValuexvs();
  sub_100007710(v6, &qword_1002074C0);
  return sub_100021FB0(v9);
}

id sub_1000212BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentSceneUIKitRepresentable.DocumentLaunchExperienceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100021338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_10020A0A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100021418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_10020A0A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000214E0()
{
  sub_100022C0C(319, &qword_1002074B8, &qword_1002074C0, &unk_10019AEC0, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_100022C0C(319, &qword_1002074C8, &unk_1002074D0, &unk_10019AEC8, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100022C70(319, qword_100209AF0, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DocumentCreationTargetProvider(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_100021608(uint64_t a1)
{
  v27[1] = a1;
  v2 = type metadata accessor for BookmarkableURL(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&qword_1002074C0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = sub_100005804(&unk_10020A0B0);
  __chkstk_darwin(v9 - 8);
  v11 = v27 - v10;
  v12 = (v1 + *(type metadata accessor for DocumentSceneUIKitRepresentable(0) + 20));
  v14 = *v12;
  v13 = v12[1];
  v15 = objc_allocWithZone(type metadata accessor for DocumentViewController(0));
  v16 = swift_unknownObjectRetain();
  v17 = sub_10006CF44(v16, v13);
  v18 = type metadata accessor for DocumentSceneUIKitRepresentable.DocumentLaunchExperienceViewController();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable38DocumentLaunchExperienceViewController_documentViewController] = v17;
  v31.receiver = v19;
  v31.super_class = v18;
  v20 = v17;
  v21 = objc_msgSendSuper2(&v31, "init");
  v29 = type metadata accessor for DocumentSceneUIKitRepresentable.DocumentCoordinator(0);
  v30 = &off_1001EF460;
  sub_100005804(&qword_100207528);
  UIViewControllerRepresentableContext.coordinator.getter();
  v22 = OBJC_IVAR____TtC7Preview22DocumentViewController_delegate;
  swift_beginAccess();
  sub_100022070(v28, &v20[v22]);
  swift_endAccess();
  sub_100005804(&qword_10020A0A0);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  if ((*(v3 + 48))(v8, 1, v2))
  {

    sub_100007710(v8, &qword_1002074C0);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100007710(v8, &qword_1002074C0);
    sub_100152860(v11);
    (*(v3 + 8))(v5, v2);
    v23 = type metadata accessor for DocumentOpeningOptions();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v11, 1, v23) == 1)
    {

      sub_100007710(v11, &unk_10020A0B0);
    }

    else
    {
      v25 = sub_100138A24();
      (*(v24 + 8))(v11, v23);
      if (v25)
      {
        if (!v14)
        {
          sub_100072094(v25);
        }
      }
    }
  }

  return v21;
}

uint64_t sub_1000219C8(uint64_t a1)
{
  sub_100005804(&qword_100207528);
  UIViewControllerRepresentableContext.coordinator.getter();
  v3 = OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable19DocumentCoordinator_parent;
  swift_beginAccess();
  sub_10002200C(v1, v20 + v3);
  swift_endAccess();

  v4 = *(a1 + OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable38DocumentLaunchExperienceViewController_documentViewController);
  if (*&v4[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel])
  {
    v5 = *&v4[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel + 8];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = sub_1001429C4(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = (v1 + *(type metadata accessor for DocumentSceneUIKitRepresentable(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  if (*v8)
  {
    v11 = swift_getObjectType();
    v12 = sub_1001429C4(v11, v10);
    v13 = v12;
    if (!v7)
    {
      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (v12)
    {
      type metadata accessor for Document(0);
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_13:
    v13 = v7;
LABEL_14:

LABEL_15:
    swift_unknownObjectRetain();
    sub_100079284(v9, v10);
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_16:
  v15 = sub_1001152D4();
  if (!v15 || (v16 = v15, result = swift_unknownObjectRelease(), v4 != v16))
  {
    v18 = sub_100021ED8(&qword_100207530, type metadata accessor for DocumentViewController);
    v19 = v4;
    return sub_100115324(v4, v18);
  }

  return result;
}

uint64_t sub_100021BEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022DF0(v2, v5, type metadata accessor for DocumentSceneUIKitRepresentable);
  type metadata accessor for DocumentSceneUIKitRepresentable.DocumentCoordinator(0);
  v6 = swift_allocObject();
  result = sub_100022E5C(v5, v6 + OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable19DocumentCoordinator_parent, type metadata accessor for DocumentSceneUIKitRepresentable);
  *a2 = v6;
  return result;
}

uint64_t sub_100021CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100021ED8(&qword_100207510, type metadata accessor for DocumentSceneUIKitRepresentable);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100021D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100021ED8(&qword_100207510, type metadata accessor for DocumentSceneUIKitRepresentable);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100021DE0()
{
  sub_100021ED8(&qword_100207510, type metadata accessor for DocumentSceneUIKitRepresentable);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100021E80(uint64_t a1)
{
  result = sub_100021ED8(&qword_100207510, type metadata accessor for DocumentSceneUIKitRepresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100021ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_1002074C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021FB0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentSceneUIKitRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002200C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentSceneUIKitRepresentable(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022070(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100206DD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000220E0(uint64_t a1, char *a2)
{
  v65 = a2;
  v61 = a1;
  v63 = sub_100005804(&qword_100207538) - 8;
  __chkstk_darwin(v63);
  v62 = &v52 - v3;
  v4 = type metadata accessor for DocumentSceneUIKitRepresentable(0);
  v5 = __chkstk_darwin(v4 - 8);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v52 - v7;
  v9 = sub_100005804(&qword_1002074C0);
  v10 = __chkstk_darwin(v9 - 8);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v59 = &v52 - v13;
  v14 = __chkstk_darwin(v12);
  v64 = &v52 - v15;
  v16 = __chkstk_darwin(v14);
  v66 = &v52 - v17;
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_100005804(&unk_10020A0B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v52 - v21;
  v23 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v23 - 8);
  v25 = &v52 - v24;
  v26 = type metadata accessor for BookmarkableURL(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v52 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v52 - v30;
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v25, v61, v32);
  (*(v33 + 56))(v25, 0, 1, v32);
  v34 = type metadata accessor for DocumentOpeningOptions();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v22, v65, v34);
  (*(v35 + 56))(v22, 0, 1, v34);
  sub_100152B90(v25, v22, v31);
  v36 = *(v27 + 16);
  v65 = v31;
  v56 = v36;
  v36(v19, v31, v26);
  v37 = *(v27 + 56);
  v57 = v27 + 56;
  v55 = v37;
  v37(v19, 0, 1, v26);
  v38 = OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable19DocumentCoordinator_parent;
  swift_beginAccess();
  v61 = v2;
  v53 = v38;
  sub_100022DF0(v2 + v38, v8, type metadata accessor for DocumentSceneUIKitRepresentable);
  v39 = sub_100005804(&qword_10020A0A0);
  v40 = v66;
  v54 = v39;
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  v41 = v40;
  sub_100021FB0(v8);
  v42 = v62;
  v43 = *(v63 + 56);
  sub_100021F40(v19, v62);
  sub_100021F40(v41, v42 + v43);
  v44 = *(v27 + 48);
  if (v44(v42, 1, v26) == 1)
  {
    sub_100007710(v41, &qword_1002074C0);
    sub_100007710(v19, &qword_1002074C0);
    if (v44(v42 + v43, 1, v26) == 1)
    {
      sub_100007710(v42, &qword_1002074C0);
      return (*(v27 + 8))(v65, v26);
    }

    goto LABEL_6;
  }

  sub_100021F40(v42, v64);
  if (v44(v42 + v43, 1, v26) == 1)
  {
    sub_100007710(v66, &qword_1002074C0);
    sub_100007710(v19, &qword_1002074C0);
    (*(v27 + 8))(v64, v26);
LABEL_6:
    sub_100007710(v42, &qword_100207538);
LABEL_7:
    v46 = v60;
    sub_100022DF0(v61 + v53, v60, type metadata accessor for DocumentSceneUIKitRepresentable);
    v47 = v59;
    v48 = v65;
    v56(v59, v65, v26);
    v55(v47, 0, 1, v26);
    sub_100021F40(v47, v58);
    j___s7SwiftUI7BindingV12wrappedValuexvs();
    sub_100007710(v47, &qword_1002074C0);
    sub_100021FB0(v46);
    return (*(v27 + 8))(v48, v26);
  }

  v49 = v52;
  (*(v27 + 32))(v52, v42 + v43, v26);
  sub_100021ED8(&qword_100207540, type metadata accessor for BookmarkableURL);
  v50 = v64;
  LODWORD(v63) = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v27 + 8);
  v51(v49, v26);
  sub_100007710(v66, &qword_1002074C0);
  sub_100007710(v19, &qword_1002074C0);
  v51(v50, v26);
  sub_100007710(v42, &qword_1002074C0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_7;
  }

  return (v51)(v65, v26);
}

uint64_t sub_1000228F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_10020A0A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000229D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_10020A0A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_100022A98()
{
  sub_100022C0C(319, &qword_1002074B8, &qword_1002074C0, &unk_10019AEC0, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_100022C0C(319, &qword_1002075B0, &qword_100207518, &unk_10019AFC8, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100022C0C(319, &qword_1002075B8, &qword_100207520, &unk_10019AFD0, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100022C70(319, &qword_1002075C0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100022CC4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100022C0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000059D4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100022C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100022CC4()
{
  if (!qword_1002075C8)
  {
    type metadata accessor for DocumentCreationTargetProvider(255);
    v0 = j___s7SwiftUI5StateVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1002075C8);
    }
  }
}

unint64_t sub_100022D38()
{
  result = qword_100207680;
  if (!qword_100207680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207680);
  }

  return result;
}

uint64_t sub_100022DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentSceneView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001F5A0(v4, a1);
}

unint64_t sub_100022F34()
{
  result = qword_100207690;
  if (!qword_100207690)
  {
    sub_1000059D4(&qword_100207630);
    sub_1000059D4(&qword_100207620);
    sub_1000059D4(&qword_100207618);
    type metadata accessor for DocumentCreationTargetProvider(255);
    type metadata accessor for DocumentSceneUIKitRepresentable(255);
    sub_100021ED8(&qword_100207508, type metadata accessor for DocumentSceneUIKitRepresentable);
    sub_100022D38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207690);
  }

  return result;
}

unint64_t sub_1000230CC()
{
  result = qword_100207698;
  if (!qword_100207698)
  {
    sub_1000059D4(&qword_100207688);
    sub_100021ED8(&qword_1002076A0, type metadata accessor for LockingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207698);
  }

  return result;
}

uint64_t sub_100023180()
{
  v1 = *(type metadata accessor for DocumentSceneView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(sub_100005804(&qword_10020A0A0) + 32);
  v4 = type metadata accessor for BookmarkableURL(0);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100023360()
{

  return swift_deallocObject();
}

uint64_t sub_1000233DC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for DocumentSceneView(0);

  return sub_10001D7DC(a1);
}

uint64_t sub_100023450()
{
  v1 = *(type metadata accessor for DocumentSceneView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = *(sub_100005804(&qword_10020A0A0) + 32);
  v4 = type metadata accessor for BookmarkableURL(0);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100023620()
{
  type metadata accessor for DocumentSceneView(0);

  return sub_10001D910();
}

uint64_t sub_1000236AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DocumentSceneView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100023720(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100207640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000237A8()
{
  result = qword_1002076B0;
  if (!qword_1002076B0)
  {
    sub_1000059D4(&qword_100207648);
    sub_100023864();
    sub_100021ED8(&qword_1002076D0, type metadata accessor for DocumentErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002076B0);
  }

  return result;
}

unint64_t sub_100023864()
{
  result = qword_1002076B8;
  if (!qword_1002076B8)
  {
    sub_1000059D4(&qword_100207640);
    sub_1000059D4(&qword_100207630);
    sub_1000059D4(&qword_100207688);
    sub_100022F34();
    sub_1000230CC();
    swift_getOpaqueTypeConformance2();
    sub_100023958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002076B8);
  }

  return result;
}

unint64_t sub_100023958()
{
  result = qword_1002076C0;
  if (!qword_1002076C0)
  {
    sub_1000059D4(&qword_1002076C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002076C0);
  }

  return result;
}

unint64_t sub_1000239BC()
{
  result = qword_1002076D8;
  if (!qword_1002076D8)
  {
    sub_1000059D4(&qword_1002074C0);
    sub_100021ED8(&qword_100207540, type metadata accessor for BookmarkableURL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002076D8);
  }

  return result;
}

unint64_t sub_100023A88()
{
  result = qword_1002076E8;
  if (!qword_1002076E8)
  {
    sub_1000059D4(&qword_1002076E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002076E8);
  }

  return result;
}

unint64_t sub_100023B34()
{
  result = qword_1002076F0;
  if (!qword_1002076F0)
  {
    sub_1000059D4(&qword_100207610);
    sub_100021ED8(&qword_1002076F8, type metadata accessor for DocumentErrorViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002076F0);
  }

  return result;
}

uint64_t sub_100023BE8(uint64_t a1)
{
  v4 = *(type metadata accessor for DocumentSceneView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013194;

  return sub_1000206B4(a1, v6, v7, v1 + v5);
}

uint64_t sub_100023CD8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005804(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023D40()
{
  sub_1000059D4(&qword_100207660);
  sub_1000059D4(&qword_100207610);
  sub_1000059D4(&qword_100207658);
  sub_1000059D4(&qword_1002076E0);
  sub_1000059D4(&qword_100207650);
  sub_1000059D4(&qword_100207648);
  sub_1000059D4(&qword_1002074C0);
  sub_1000237A8();
  sub_1000239BC();
  swift_getOpaqueTypeConformance2();
  sub_100023A88();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100023B34();
  return swift_getOpaqueTypeConformance2();
}

double sub_100023EE4()
{
  sub_100005804(&qword_1002078B8);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_100023F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = a1;
  v55 = *(a1 - 8);
  v56 = *(v55 + 64);
  __chkstk_darwin(a1);
  v54 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000059D4(&qword_1002077D0);
  v50 = sub_1000059D4(&qword_1002077D8);
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Array();
  v6 = *(a1 + 24);
  v53 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(v6 + 8);
  v59 = &type metadata for Text;
  v60 = v4;
  v61 = &protocol witness table for Text;
  v62 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = v5;
  v60 = AssociatedTypeWitness;
  v61 = OpaqueTypeMetadata2;
  v62 = WitnessTable;
  v63 = AssociatedConformanceWitness;
  v12 = type metadata accessor for ForEach();
  v59 = &type metadata for Text;
  v60 = v4;
  v61 = &protocol witness table for Text;
  v62 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = swift_getWitnessTable();
  v59 = &type metadata for Text;
  v60 = v4;
  v14 = v4;
  v44 = v4;
  v61 = v12;
  v62 = &protocol witness table for Text;
  v63 = v8;
  v64 = v13;
  v15 = type metadata accessor for Picker();
  v16 = swift_getWitnessTable();
  v59 = v15;
  v60 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = sub_1000282C8();
  v59 = v15;
  v60 = v16;
  v19 = swift_getOpaqueTypeConformance2();
  v59 = v50;
  v60 = v17;
  v61 = v18;
  v62 = v19;
  type metadata accessor for Menu();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v20 = type metadata accessor for AdaptiveHStack();
  v49 = v20;
  v48 = swift_getWitnessTable();
  v59 = &type metadata for Text;
  v60 = v20;
  v61 = &protocol witness table for Text;
  v62 = v48;
  v21 = type metadata accessor for LabeledRowContent();
  v22 = *(v21 - 8);
  v50 = v21;
  v51 = v22;
  __chkstk_darwin(v21);
  v46 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v24);
  v47 = &v43 - v26;
  v27 = v54;
  v28 = v55;
  v45 = *(v55 + 16);
  v29 = v52;
  v45(v54, v58, v52, v25);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v14;
  v32 = v53;
  *(v31 + 24) = v53;
  v33 = *(v28 + 32);
  v33(v31 + v30, v27, v29);
  (v45)(v27, v58, v29);
  v34 = swift_allocObject();
  *(v34 + 16) = v44;
  *(v34 + 24) = v32;
  v33(v34 + v30, v27, v29);
  v35 = static VerticalAlignment.firstTextBaseline.getter();
  v36 = v46;
  sub_100056B08(0, 1, v35, sub_1000283B0, sub_10002843C, v46);
  v37 = v50;
  v38 = swift_getWitnessTable();
  v39 = v47;
  v40 = v36;
  sub_1000A2A58(v36, v37, v38);
  v41 = *(v51 + 8);
  v41(v40, v37);
  sub_1000A2A58(v39, v37, v38);
  return (v41)(v39, v37);
}

uint64_t sub_10002450C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1000245E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a1;
  v52 = a4;
  v6 = type metadata accessor for AdaptiveHStackLimits();
  __chkstk_darwin(v6 - 8);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v49 = type metadata accessor for MenuPicker();
  v47 = *(v49 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v49);
  v42 = &v42 - v9;
  v45 = sub_1000059D4(&qword_1002077D0);
  v44 = sub_1000059D4(&qword_1002077D8);
  v10 = type metadata accessor for Array();
  v46 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(v8 + 8);
  v53 = &type metadata for Text;
  v54 = a2;
  v55 = &protocol witness table for Text;
  v56 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v10;
  v54 = AssociatedTypeWitness;
  v55 = OpaqueTypeMetadata2;
  v56 = WitnessTable;
  v57 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ForEach();
  v53 = &type metadata for Text;
  v54 = a2;
  v43 = a2;
  v55 = &protocol witness table for Text;
  v56 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = swift_getWitnessTable();
  v53 = &type metadata for Text;
  v54 = a2;
  v55 = v16;
  v56 = &protocol witness table for Text;
  v57 = v12;
  v58 = v17;
  v18 = type metadata accessor for Picker();
  v19 = swift_getWitnessTable();
  v53 = v18;
  v54 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = sub_1000282C8();
  v53 = v18;
  v54 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v53 = v44;
  v54 = v20;
  v55 = v21;
  v56 = v22;
  type metadata accessor for Menu();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v23 = type metadata accessor for AdaptiveHStack();
  v45 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v26);
  v29 = &v42 - v28;
  v30 = v47;
  v31 = v42;
  v32 = v49;
  (*(v47 + 16))(v42, v50, v49, v27);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v43;
  *(v34 + 24) = v35;
  (*(v30 + 32))(v34 + v33, v31, v32);
  v36 = v51;
  sub_1000568B4(v51);
  v37 = static VerticalAlignment.firstTextBaseline.getter();
  v38 = j___s7SwiftUI19HorizontalAlignmentV7leadingACvgZ();
  sub_100056974(v36, 0x4018000000000000, 0, 0.0, 1, v37, 0, 1, v25, 0.0, 1, v38, sub_1000287AC, v34);
  v39 = swift_getWitnessTable();
  sub_1000A2A58(v25, v23, v39);
  v40 = *(v45 + 8);
  v40(v25, v23);
  sub_1000A2A58(v29, v23, v39);
  return (v40)(v29, v23);
}

uint64_t sub_100024B54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a1;
  v35 = a3;
  v36 = sub_1000059D4(&qword_1002077D8);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  v4 = *(a2 + 8);
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v4;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Picker();
  swift_getWitnessTable();
  v32 = &opaque type descriptor for <<opaque return type of View.labelsHidden()>>;
  v40 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = sub_1000282C8();
  v43 = swift_getOpaqueTypeConformance2();
  v5 = type metadata accessor for Menu();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_100005804(&qword_1002077D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v36 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for MenuPicker();
  sub_1000250A8(v18, v17);
  sub_100025CEC(v18, v8);
  v34 = swift_getWitnessTable();
  v19 = v11;
  v31 = v11;
  sub_1000A2A58(v8, v5, v34);
  v20 = *(v6 + 8);
  v20(v8, v5);
  v21 = v36;
  (*(v13 + 16))(v36, v17, v12);
  v40 = v21;
  (*(v6 + 16))(v8, v19, v5);
  OpaqueTypeMetadata2 = v8;
  v39[0] = v12;
  v39[1] = v5;
  v22 = sub_1000059D4(&qword_100207810);
  v23 = sub_1000059D4(&qword_100207818);
  v24 = sub_1000059D4(&qword_100207820);
  v25 = sub_100028848();
  v37 = v24;
  v38 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v37 = v23;
  v38 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v37 = v22;
  v38 = v27;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v34;
  sub_1000566E4(&v40, 2uLL, v39);
  v20(v31, v5);
  v28 = *(v13 + 8);
  v28(v17, v12);
  v20(v8, v5);
  return (v28)(v36, v12);
}

uint64_t sub_1000250A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v94 = type metadata accessor for SubmitLabel();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PlainTextFieldStyle();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for LocalizedStringResource();
  v65 = *(v69 - 8);
  __chkstk_darwin(v69);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v95 = *(v7 - 8);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100005804(&qword_100207868);
  v67 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v60 - v11;
  v12 = sub_100005804(&qword_100207858);
  __chkstk_darwin(v12 - 8);
  v61 = &v60 - v13;
  v71 = sub_100005804(&qword_100207848);
  __chkstk_darwin(v71);
  v72 = &v60 - v14;
  v75 = sub_100005804(&qword_100207830);
  __chkstk_darwin(v75);
  v77 = &v60 - v15;
  v78 = sub_100005804(&qword_1002078B0);
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - v16;
  v82 = sub_100005804(&qword_100207820);
  __chkstk_darwin(v82);
  v73 = &v60 - v17;
  v84 = sub_100005804(&qword_100207818);
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v60 - v18;
  v85 = sub_100005804(&qword_100207810);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v60 - v19;
  v60 = LocalizedStringKey.init(stringLiteral:)();
  v20 = sub_100023EE4();
  v22 = v21;
  v24 = v23;
  v25 = v20;
  v70 = type metadata accessor for Binding();
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  v26 = *(*(a1 + 24) + 32);
  v68 = *(a1 + 24);
  v26(v7);
  v27 = *(v95 + 8);
  v88 = v10;
  v28 = v10;
  v29 = v61;
  v90 = v7;
  v95 += 8;
  v66 = v27;
  v27(v28, v7);
  *&v98 = v22;
  *(&v98 + 1) = v24;
  *&v99 = v25;
  v30 = v62;
  TextField<>.init<A>(_:value:formatter:onEditingChanged:onCommit:)();
  (*(v65 + 16))(v63, v2, v69);
  v31 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v33 = v32;
  v35 = v34;
  sub_100007888(&qword_100207860, &qword_100207868);
  v36 = v64;
  View.accessibilityLabel(_:)();
  sub_100028DF8(v31, v33, v35 & 1);

  (*(v67 + 8))(v30, v36);
  sub_100005804(qword_100207720);
  j___s7SwiftUI12ScaledMetricV12wrappedValuexvg();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37 = v72;
  sub_100023CD8(v29, v72, &qword_100207858);
  v38 = (v37 + *(v71 + 36));
  v39 = v103;
  v38[4] = v102;
  v38[5] = v39;
  v38[6] = v104;
  v40 = v99;
  *v38 = v98;
  v38[1] = v40;
  v41 = v101;
  v38[2] = v100;
  v38[3] = v41;
  v42 = v77;
  sub_100023CD8(v37, v77, &qword_100207848);
  *(v42 + *(v75 + 36)) = 257;
  v43 = v86;
  PlainTextFieldStyle.init()();
  sub_10002898C();
  sub_100028B8C(&qword_100207878, &type metadata accessor for PlainTextFieldStyle);
  v44 = v74;
  v45 = v89;
  View.textFieldStyle<A>(_:)();
  (*(v87 + 8))(v43, v45);
  sub_100007710(v42, &qword_100207830);
  KeyPath = swift_getKeyPath();
  v47 = v73;
  (*(v76 + 32))(v73, v44, v78);
  v48 = v82;
  v49 = v47 + *(v82 + 36);
  *v49 = KeyPath;
  *(v49 + 8) = 2;
  v50 = sub_100028848();
  v51 = v79;
  View.labelsHidden()();
  sub_100028E88(v47);
  v52 = v88;
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  v53 = v90;
  (*(v68 + 40))(v90);
  v66(v52, v53);
  v96 = v48;
  v97 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v80;
  v56 = v84;
  View.keyboardType(_:)();
  (*(v81 + 8))(v51, v56);
  v57 = v91;
  static SubmitLabel.done.getter();
  v96 = v56;
  v97 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v58 = v85;
  View.submitLabel(_:)();
  (*(v92 + 8))(v57, v94);
  return (*(v83 + 8))(v55, v58);
}

uint64_t sub_100025CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v17 = sub_1000059D4(&qword_1002077D8);
  v3 = *(a1 + 16);
  type metadata accessor for Array();
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(v4 + 8);
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v5;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Picker();
  swift_getWitnessTable();
  v26 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = sub_1000282C8();
  v29 = swift_getOpaqueTypeConformance2();
  v6 = type metadata accessor for Menu();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v23 = v3;
  v24 = v4;
  v25 = v18;
  v20 = v3;
  v21 = v4;
  v22 = v18;
  Menu.init(content:label:)();
  v13 = swift_getWitnessTable();
  sub_1000A2A58(v9, v6, v13);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1000A2A58(v12, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_10002608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v44 = a4;
  v6 = type metadata accessor for Binding();
  __chkstk_darwin(v6 - 8);
  v41 = v32 - v7;
  v8 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = a3;
  v10 = *(a3 + 8);
  v45 = &type metadata for Text;
  v46 = a2;
  v47 = &protocol witness table for Text;
  v48 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = v8;
  v46 = AssociatedTypeWitness;
  v47 = OpaqueTypeMetadata2;
  v48 = WitnessTable;
  v49 = AssociatedConformanceWitness;
  v14 = type metadata accessor for ForEach();
  v45 = &type metadata for Text;
  v46 = a2;
  v47 = &protocol witness table for Text;
  v48 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v45 = &type metadata for Text;
  v46 = a2;
  v39 = v14;
  v40 = v10;
  v47 = v14;
  v48 = &protocol witness table for Text;
  v49 = v10;
  v50 = v15;
  v36 = v15;
  v16 = type metadata accessor for Picker();
  v38 = *(v16 - 8);
  __chkstk_darwin(v16);
  v35 = v32 - v17;
  v18 = swift_getWitnessTable();
  v45 = v16;
  v46 = v18;
  v34 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v37 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v33 = v32 - v23;
  type metadata accessor for MainActor();
  v32[3] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32[2] = LocalizedStringKey.init(stringLiteral:)();
  v32[1] = v24;
  type metadata accessor for MenuPicker();
  type metadata accessor for Binding();
  v25 = Binding.projectedValue.getter();
  __chkstk_darwin(v25);
  v26 = v35;
  Picker<>.init(_:selection:content:)();
  v27 = v34;
  View.labelsHidden()();
  (*(v38 + 8))(v26, v16);
  v45 = v16;
  v46 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v33;
  sub_1000A2A58(v21, v19, v28);
  v30 = *(v37 + 8);
  v30(v21, v19);
  sub_1000A2A58(v29, v19, v28);
  v30(v29, v19);
}

uint64_t sub_1000265B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v27 = a4;
  v6 = type metadata accessor for Array();
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(a3 + 8);
  v25 = v7;
  v26 = v6;
  v30 = v6;
  v31 = AssociatedTypeWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = OpaqueTypeMetadata2;
  WitnessTable = swift_getWitnessTable();
  v21 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ForEach();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = *(v23 + *(type metadata accessor for MenuPicker() + 36));
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  v30 = &type metadata for Text;
  v31 = a2;
  v32 = &protocol witness table for Text;
  WitnessTable = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:content:)();
  v28 = OpaqueTypeConformance2;
  v18 = swift_getWitnessTable();
  sub_1000A2A58(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_1000A2A58(v15, v9, v18);
  v19(v15, v9);
}

uint64_t sub_10002691C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v7 - 8);
  v8 = *(a3 + 8);
  v31 = &type metadata for Text;
  v32 = a2;
  v33 = &protocol witness table for Text;
  v34 = v8;
  v9 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = v26 - v13;
  type metadata accessor for MainActor();
  v26[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(a3 + 24))(a2, a3);
  v14 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v16 = v15;
  v31 = v14;
  v32 = v15;
  v17 = a1;
  v19 = v18 & 1;
  LOBYTE(v33) = v18 & 1;
  v34 = v20;
  sub_100004B94(v17, 1, &type metadata for Text, a2, &protocol witness table for Text);
  sub_100028DF8(v14, v16, v19);

  v31 = &type metadata for Text;
  v32 = a2;
  v33 = &protocol witness table for Text;
  v34 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = OpaqueTypeMetadata2;
  v22 = v28;
  sub_1000A2A58(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = *(v29 + 8);
  v24(v11, v23);
  sub_1000A2A58(v22, v23, OpaqueTypeConformance2);
  v24(v22, v23);
}

uint64_t sub_100026C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4018000000000000;
  *(a4 + 16) = 0;
  v8 = sub_100005804(&qword_100207890);
  sub_100026D24(a1, a2, a3, a4 + *(v8 + 44));
  v9 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();

  result = sub_100005804(&qword_1002077D8);
  v12 = (a4 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t sub_100026D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v35 = sub_100005804(&qword_100207898);
  __chkstk_darwin(v35);
  v37 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v33 = &v31[-v9];
  v10 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v10 - 8);
  v11 = *(a2 - 8);
  __chkstk_darwin(v12);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MainActor();
  v36 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MenuPicker();
  type metadata accessor for Binding();
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  (*(a3 + 24))(a2, a3);
  (*(v11 + 8))(v14, a2);
  v15 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v17 = v16;
  v32 = v18;
  v20 = v19;
  LODWORD(v34) = (sub_100027120() & 1) == 0;
  KeyPath = swift_getKeyPath();
  v22 = Image.init(systemName:)();
  v23 = v33;
  v24 = (v33 + *(v35 + 36));
  v25 = *(sub_100005804(&qword_1002078A0) + 28);
  v26 = enum case for Image.Scale.small(_:);
  v27 = type metadata accessor for Image.Scale();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  *v23 = v22;
  v28 = v37;
  sub_100028D88(v23, v37);
  *a4 = v15;
  *(a4 + 8) = v17;
  LOBYTE(v24) = v32 & 1;
  *(a4 + 16) = v32 & 1;
  *(a4 + 24) = v20;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = v34;
  v29 = sub_100005804(&qword_1002078A8);
  sub_100028D88(v28, a4 + *(v29 + 48));
  sub_10000584C(v15, v17, v24);

  sub_100007710(v23, &qword_100207898);
  sub_100007710(v28, &qword_100207898);
  sub_100028DF8(v15, v17, v24);
}

uint64_t sub_100027120()
{
  v0 = sub_100005804(&unk_10020A0D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AdaptiveHStackLimits();
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 104);
  v12(v11, enum case for DynamicTypeSize.accessibility1(_:), v3, v9);
  (v12)(&v11[*(v8 + 28)], enum case for DynamicTypeSize.accessibility3(_:), v3);
  sub_100089E24(v6);
  sub_100089E4C(v2);
  LOBYTE(v8) = sub_100056C24(v6, v2);
  sub_100007710(v2, &unk_10020A0D0);
  (*(v4 + 8))(v6, v3);
  sub_100028E08(v11);
  return v8 & 1;
}

uint64_t sub_10002733C(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (!(*(v2 + 88))(v4, a1))
  {
    return 4;
  }

  (*(v2 + 8))(v4, a1);
  return 8;
}

uint64_t sub_100027448(uint64_t a1)
{
  *(a1 + 8) = sub_100028B8C(&qword_100207700, type metadata accessor for ResizeViewModel.SizeUnit);
  result = sub_100028B8C(&qword_100207708, type metadata accessor for ResizeViewModel.SizeUnit);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000274DC(uint64_t a1)
{
  *(a1 + 8) = sub_100028B8C(&qword_100207710, type metadata accessor for ResolutionUnit);
  result = sub_100028B8C(&qword_100207718, type metadata accessor for ResolutionUnit);
  *(a1 + 16) = result;
  return result;
}

void sub_100027568()
{
  type metadata accessor for LocalizedStringResource();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Array();
    if (v1 <= 0x3F)
    {
      sub_1000280C8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Binding();
        if (v3 <= 0x3F)
        {
          sub_100028118();
          if (v4 <= 0x3F)
          {
            sub_1000281C8();
            if (v5 <= 0x3F)
            {
              sub_100028220();
              if (v6 <= 0x3F)
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

uint64_t sub_100027670(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  v41 = v5;
  v7 = *(v6 + 84);
  v39 = *(a3 + 16);
  v8 = *(v39 - 8);
  v40 = *(v8 + 84);
  if (v40 <= v7)
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v38 = sub_100005804(qword_100207720);
  v10 = *(v38 - 8);
  v11 = *(v10 + 84);
  v37 = v11;
  if (v9 > v11)
  {
    v11 = v9;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v42 = *(j___s7SwiftUI15DynamicTypeSizeOMa() - 8);
  v13 = *(v42 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v43 = v13;
  v14 = *(j___s7SwiftUI22UserInterfaceSizeClassOMa() - 8);
  v15 = *(v14 + 64);
  v16 = *(v6 + 64);
  v17 = *(v8 + 80);
  v18 = *(v10 + 80);
  if (!*(v14 + 84))
  {
    ++v15;
  }

  if (v15 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v17 | 7;
  v21 = ((v17 + 16) & ~v17) + *(v8 + 64) + v18;
  v22 = a1;
  if (a2 <= v12)
  {
    goto LABEL_38;
  }

  v23 = *(v42 + 80) & 0xF8 | 7;
  v24 = *(v14 + 80) & 0xF8 | 7;
  v25 = v19 + ((v43 + v24 + ((*(v10 + 64) + v23 + ((v21 + ((v17 + ((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v20)) & ~v18)) & ~v23) + 1) & ~v24) + 1;
  v26 = 8 * v25;
  if (v25 > 3)
  {
    goto LABEL_19;
  }

  v29 = ((a2 - v12 + ~(-1 << v26)) >> v26) + 1;
  if (HIWORD(v29))
  {
    v27 = *(a1 + v25);
    if (v27)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v29 <= 0xFF)
    {
      if (v29 < 2)
      {
        goto LABEL_38;
      }

LABEL_19:
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_38;
      }

LABEL_27:
      v30 = (v27 - 1) << v26;
      if (v25 > 3)
      {
        v30 = 0;
      }

      if (v25)
      {
        if (v25 > 3)
        {
          LODWORD(v25) = 4;
        }

        if (v25 > 2)
        {
          if (v25 == 3)
          {
            LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v25) = *a1;
          }
        }

        else if (v25 == 1)
        {
          LODWORD(v25) = *a1;
        }

        else
        {
          LODWORD(v25) = *a1;
        }
      }

      return v12 + (v25 | v30) + 1;
    }

    v27 = *(a1 + v25);
    if (*(a1 + v25))
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  if (v7 == v12)
  {
    v31 = v41;
    v32 = *(v6 + 48);
    v33 = v7;
    goto LABEL_40;
  }

  v34 = ((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v36 = (((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 24) & ~v20;
    v33 = v40;
    if (v40 != v12)
    {
      v32 = *(v10 + 48);
      v22 = (v21 + v36) & ~v18;
      v33 = v37;
      v31 = v38;

      return v32(v22, v33, v31);
    }

    v32 = *(v8 + 48);
    v22 = (v17 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17;
    v31 = v39;
LABEL_40:

    return v32(v22, v33, v31);
  }

  v35 = *v34;
  if (v35 >= 0xFFFFFFFF)
  {
    LODWORD(v35) = -1;
  }

  return (v35 + 1);
}

void sub_100027B04(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(type metadata accessor for LocalizedStringResource() - 8);
  v44 = v5;
  v6 = *(*(a4 + 16) - 8);
  v46 = v6;
  if (*(v6 + 84) <= 0x7FFFFFFFu)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v42 = v7;
  v43 = *(v6 + 84);
  v45 = *(v5 + 84);
  if (v45 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v41 = sub_100005804(qword_100207720);
  v9 = *(v41 - 8);
  v40 = *(v9 + 84);
  if (v8 <= v40)
  {
    v8 = *(v9 + 84);
  }

  v10 = *(j___s7SwiftUI15DynamicTypeSizeOMa() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(j___s7SwiftUI22UserInterfaceSizeClassOMa() - 8);
  v13 = *(v12 + 64);
  v14 = *(v12 + 84) == 0;
  v15 = *(v5 + 64);
  v16 = *(v6 + 80);
  v17 = ((v16 + 16) & ~v16) + *(v6 + 64);
  v18 = *(v9 + 80);
  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = *(v12 + 80) & 0xF8 | 7;
  v21 = (v11 + v20 + ((*(v9 + 64) + v19 + ((v17 + v18 + ((v16 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~(v16 | 7))) & ~v18)) & ~v19) + 1) & ~v20;
  if (v14)
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v22 = v13 + v21 + 1;
  if (a3 <= v8)
  {
    v24 = 0;
    v23 = a1;
  }

  else
  {
    v23 = a1;
    if (v22 <= 3)
    {
      v27 = ((a3 - v8 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
      if (HIWORD(v27))
      {
        v24 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v8 < a2)
  {
    v25 = ~v8 + a2;
    if (v22 >= 4)
    {
      j__bzero(v23, v22);
      *v23 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_23;
      }

      goto LABEL_70;
    }

    v26 = (v25 >> (8 * v22)) + 1;
    if (v22)
    {
      v29 = v25 & ~(-1 << (8 * v22));
      j__bzero(v23, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *v23 = v29;
          if (v24 > 1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          *v23 = v25;
          if (v24 > 1)
          {
LABEL_23:
            if (v24 == 2)
            {
              *&v23[v22] = v26;
            }

            else
            {
              *&v23[v22] = v26;
            }

            return;
          }
        }

LABEL_70:
        if (v24)
        {
          v23[v22] = v26;
        }

        return;
      }

      *v23 = v29;
      v23[2] = BYTE2(v29);
    }

    if (v24 > 1)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&v23[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&v23[v22] = 0;
  }

  else if (v24)
  {
    v23[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v45 == v8)
  {
    v30 = *(v44 + 56);
    v31 = v23;
    v32 = a2;
LABEL_46:

    v30(v31, v32);
    return;
  }

  v33 = (&v23[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v34 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v34 = a2 - 1;
    }

    *v33 = v34;
    return;
  }

  v35 = ((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + (v16 | 7) + 24) & ~(v16 | 7));
  if (v43 == v8)
  {
    if (v42 >= a2)
    {
      v30 = *(v46 + 56);
      v31 = (v16 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16;
      v32 = a2;
      goto LABEL_46;
    }

    if (v17 <= 3)
    {
      v36 = ~(-1 << (8 * v17));
    }

    else
    {
      v36 = -1;
    }

    if (v17)
    {
      v37 = v36 & (~v42 + a2);
      if (v17 <= 3)
      {
        v38 = v17;
      }

      else
      {
        v38 = 4;
      }

      j__bzero(v35, v17);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          *v35 = v37;
          v35[2] = BYTE2(v37);
        }

        else
        {
          *v35 = v37;
        }
      }

      else if (v38 == 1)
      {
        *v35 = v37;
      }

      else
      {
        *v35 = v37;
      }
    }
  }

  else
  {
    v39 = *(v9 + 56);

    v39(&v35[v17 + v18] & ~v18, a2, v40, v41);
  }
}

void sub_1000280C8()
{
  if (!qword_1002077A8)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1002077A8);
    }
  }
}

void sub_100028118()
{
  if (!qword_1002077B0)
  {
    sub_100028174();
    v0 = j___s7SwiftUI12ScaledMetricVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1002077B0);
    }
  }
}

unint64_t sub_100028174()
{
  result = qword_1002077B8;
  if (!qword_1002077B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002077B8);
  }

  return result;
}

void sub_1000281C8()
{
  if (!qword_1002077C0)
  {
    j___s7SwiftUI15DynamicTypeSizeOMa();
    v0 = j___s7SwiftUI11EnvironmentVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1002077C0);
    }
  }
}

void sub_100028220()
{
  if (!qword_1002077C8)
  {
    sub_1000059D4(&unk_10020A0D0);
    v0 = j___s7SwiftUI11EnvironmentVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1002077C8);
    }
  }
}

unint64_t sub_1000282C8()
{
  result = qword_1002077E0;
  if (!qword_1002077E0)
  {
    sub_1000059D4(&qword_1002077D8);
    sub_100007888(&qword_1002077E8, &qword_1002077F0);
    sub_100007888(&qword_1002077F8, &qword_100207800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002077E0);
  }

  return result;
}

uint64_t sub_1000283B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MenuPicker() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10002450C(v4, a1);
}

uint64_t sub_10002843C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for MenuPicker() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000245E4(v6, v3, v4, a1);
}

uint64_t sub_1000284C8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MenuPicker();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  v4 = type metadata accessor for LocalizedStringResource();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v3 + v2[11];

  v6 = type metadata accessor for Binding();
  (*(*(v1 - 8) + 8))(v5 + *(v6 + 32), v1);
  v7 = v2[12];
  v8 = sub_100005804(qword_100207720);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v2[13];
  sub_100005804(&unk_10020A100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = j___s7SwiftUI15DynamicTypeSizeOMa();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2[14];
  sub_100005804(&qword_100207808);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000287AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for MenuPicker() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_100024B54(v5, v3, a1);
}

unint64_t sub_100028848()
{
  result = qword_100207828;
  if (!qword_100207828)
  {
    sub_1000059D4(&qword_100207820);
    sub_1000059D4(&qword_100207830);
    type metadata accessor for PlainTextFieldStyle();
    sub_10002898C();
    sub_100028B8C(&qword_100207878, &type metadata accessor for PlainTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007888(&qword_100207880, &qword_100207888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207828);
  }

  return result;
}

unint64_t sub_10002898C()
{
  result = qword_100207838;
  if (!qword_100207838)
  {
    sub_1000059D4(&qword_100207830);
    sub_100028A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207838);
  }

  return result;
}

unint64_t sub_100028A18()
{
  result = qword_100207840;
  if (!qword_100207840)
  {
    sub_1000059D4(&qword_100207848);
    sub_100028AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207840);
  }

  return result;
}

unint64_t sub_100028AA4()
{
  result = qword_100207850;
  if (!qword_100207850)
  {
    sub_1000059D4(&qword_100207858);
    sub_100007888(&qword_100207860, &qword_100207868);
    sub_100028B8C(&qword_100207870, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207850);
  }

  return result;
}

uint64_t sub_100028B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100028BEC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100028C44@<X0>(_BYTE *a1@<X8>)
{
  result = j___s7SwiftUI17EnvironmentValuesV22multilineTextAlignmentAA0fG0Ovg();
  *a1 = result;
  return result;
}

uint64_t sub_100028CBC(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_100028D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100207898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028DF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100028E08(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveHStackLimits();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028E88(uint64_t a1)
{
  v2 = sub_100005804(&qword_100207820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028EF0()
{
  sub_1000059D4(&qword_1002077D0);
  sub_1000059D4(&qword_1002077D8);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for Picker();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000282C8();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for Menu();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for AdaptiveHStack();
  swift_getWitnessTable();
  type metadata accessor for LabeledRowContent();
  return swift_getWitnessTable();
}

uint64_t sub_1000291D8(uint64_t a1, uint64_t a2)
{
  result = sub_1000292B4(a1, a2);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = (*(v4 + 16))(ObjectType, v4);
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

void sub_100029230()
{
  v0 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();
  if (v0)
  {
    v1 = v0;
    v2 = dispatch thunk of PaperDocumentView.pdfView.getter();

    if (v2)
    {
      v3 = [v2 document];

      if (v3)
      {
        [v3 isEncrypted];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000292B4(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100029330()
{
  result = UINavigationItem.renameDelegate.getter();
  if (!result)
  {
    if ([v0 _objc_renameDelegate])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5[0] = v3;
    v5[1] = v4;
    if (*(&v4 + 1))
    {
      sub_100005804(&qword_1002078C0);
      if (swift_dynamicCast())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100029B88(v5);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002970C(uint64_t a1)
{
  sub_100029BF0(a1, v12);
  v3 = v13;
  if (v13)
  {
    v4 = sub_100008638(v12, v13);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_10000867C(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = String._bridgeToObjectiveC()();
  [v1 setValue:v9 forKey:v10];
  swift_unknownObjectRelease();

  return sub_100029B88(a1);
}

uint64_t sub_100029888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 title];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 subtitle];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = [v3 image];
  v9 = [v3 identifier];
  v10 = [v3 discoverabilityTitle];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100029A4C();
  [v3 attributes];
  [v3 state];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

unint64_t sub_100029A4C()
{
  result = qword_100206A68[0];
  if (!qword_100206A68[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_100206A68);
  }

  return result;
}

uint64_t sub_100029A98(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_100029B48()
{

  return swift_deallocObject();
}

uint64_t sub_100029B88(uint64_t a1)
{
  v2 = sub_100005804(&qword_100206500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100206500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BaseNativePasteboard()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

id sub_100029C84()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = *(v0 + 16);
  sub_100005804(&qword_100207A30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10019B3A0;
  static UTType.image.getter();
  v10 = UTType.identifier.getter();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v7, v1);
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  static UTType.pdf.getter();
  v14 = UTType.identifier.getter();
  v16 = v15;
  v13(v4, v1);
  *(v9 + 48) = v14;
  *(v9 + 56) = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v8 containsPasteboardTypes:isa];

  return v18;
}

uint64_t sub_100029E30()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Pasteboard()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

Swift::Int sub_100029E90()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100029EFC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100029F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  v5 = type metadata accessor for UTType();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[18] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10002A104, 0, 0);
}

uint64_t sub_10002A104()
{
  v1 = v0[14];
  v2 = [objc_allocWithZone(PDFDocument) init];
  v3 = [v1 pageCount];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v4 = v3;
  v57 = v2;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = v0[14];
      v7 = objc_autoreleasePoolPush();
      v8 = [v6 imageOfPageAtIndex:v5];
      v9 = [objc_allocWithZone(PDFPage) initWithImage:v8];
      if (v9)
      {
        v10 = v9;
        [v2 insertPage:v9 atIndex:{objc_msgSend(v2, "pageCount")}];
      }

      ++v5;

      objc_autoreleasePoolPop(v7);
    }

    while (v4 != v5);
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v13 = [v12 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = [objc_allocWithZone(NSUUID) init];
  v15 = [v14 UUIDString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();

  v16 = [v11 defaultManager];
  URL.path.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 fileExistsAtPath:v17];

  if (v18)
  {
    v19 = [v11 defaultManager];
    URL.path.getter();
    v20 = String._bridgeToObjectiveC()();

    v0[12] = 0;
    v21 = [v19 removeItemAtPath:v20 error:v0 + 12];

    v22 = v0[12];
    if (!v21)
    {
      v45 = v22;
      goto LABEL_15;
    }

    v23 = v22;
  }

  v24 = [v11 defaultManager];
  URL.path.getter();
  v25 = String._bridgeToObjectiveC()();

  v0[11] = 0;
  v26 = [v24 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:v0 + 11];

  v27 = v0[11];
  if (!v26)
  {
    v45 = v27;
LABEL_15:
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_17;
  }

  v28 = v0[22];
  v56 = v0[20];
  v29 = v0[16];
  v30 = v0[17];
  v54 = v0[21];
  v55 = v0[15];
  v31 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  v32 = [objc_opt_self() mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  URL.appendingPathComponent(_:)();

  static UTType.pdf.getter();
  URL.appendingPathExtension(for:)();
  (*(v29 + 8))(v30, v55);
  v33 = *(v54 + 8);
  v33(v28, v56);
  sub_100005804(&qword_100207AE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019A9F0;
  v35 = kCGPDFContextShouldOutputAllImagesAsJPEG;
  *(inited + 32) = kCGPDFContextShouldOutputAllImagesAsJPEG;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 1;
  v36 = v35;
  sub_100005D70(inited);
  swift_setDeallocating();
  sub_10002A89C(inited + 32);
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  type metadata accessor for PDFDocumentWriteOption(0);
  sub_10002A904();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  LODWORD(v28) = [v2 writeToURL:v39 withOptions:isa];

  if (v28)
  {
    v42 = v0[23];
    v41 = v0[24];
    v43 = v0[20];

    v33(v42, v43);
    v33(v41, v43);

    v44 = v0[1];
    goto LABEL_18;
  }

  v46 = v0[20];
  v47 = v0[13];
  sub_10002A848();
  swift_allocError();
  swift_willThrow();
  v33(v47, v46);
LABEL_17:
  v49 = v0[23];
  v48 = v0[24];
  v50 = v0[21];
  v51 = v0[20];
  sub_10002A848();
  swift_allocError();
  swift_willThrow();

  v52 = *(v50 + 8);
  v52(v49, v51);
  v52(v48, v51);

  v44 = v0[1];
LABEL_18:

  return v44();
}

unint64_t sub_10002A848()
{
  result = qword_100207AD8;
  if (!qword_100207AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207AD8);
  }

  return result;
}

uint64_t sub_10002A89C(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002061C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002A904()
{
  result = qword_1002062C8;
  if (!qword_1002062C8)
  {
    type metadata accessor for PDFDocumentWriteOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002062C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DocumentScanWriter.WriteError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DocumentScanWriter.WriteError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10002AA40()
{
  result = qword_100207AE8;
  if (!qword_100207AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207AE8);
  }

  return result;
}

uint64_t sub_10002AA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v4;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = v12;
  sub_10005DB88(0, 0, v10, a4, v14);
}

uint64_t sub_10002ABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100005804(&qword_10020A4B0);
  v9 = swift_task_alloc();
  v6[2] = v9;
  v10 = type metadata accessor for URL();
  v6[3] = v10;
  v6[4] = *(v10 - 8);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v6[8] = v11;
  *v11 = v6;
  v11[1] = sub_10002AD44;

  return sub_10002AF78(v9, 0x746E697270, 0xE500000000000000, a5, a6);
}

uint64_t sub_10002AD44()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002AE80, v1, v0);
}

uint64_t sub_10002AE80()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002D6F0(v0[2]);
  }

  else
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    (*(v5 + 32))(v4, v0[2], v6);
    sub_10015FA50();
    (*(v5 + 8))(v4, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Logger();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  sub_100005804(&qword_10020A4B0);
  v6[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v9;
  v6[14] = v8;

  return _swift_task_switch(sub_10002B0AC, v9, v8);
}

uint64_t sub_10002B0AC()
{
  v1 = (*(v0[6] + 16))(v0[5]);
  v3 = v2;
  v0[15] = v1;
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10002B184;
  v6 = v0[11];

  return sub_10013A68C(v6, ObjectType, v3);
}

uint64_t sub_10002B184()
{
  v2 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10002B3DC;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10002B2C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002B2C8()
{
  v1 = v0[11];
  v2 = v0[2];

  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v5(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);
  v5(v2, 0, 1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10002B3DC()
{
  v22 = v0;
  v1 = v0[11];
  v2 = v0[10];

  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  sub_10002D6F0(v1);
  sub_100145164(v2);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();

  v7 = j__os_log_type_enabled(v5, v6);
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v19 = v0[10];
    v20 = v4;
    v12 = v0[3];
    v11 = v0[4];
    v18 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = v11;
    v4 = v20;
    *(v13 + 4) = sub_10008B044(v12, v15, &v21);
    j___os_log_impl(&dword_100000000, v5, v6, "Unable to prepare document to %s", v13, 0xCu);
    sub_10000867C(v14);

    (*(v8 + 8))(v19, v18);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v4(v0[2], 1, 1, v3);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10002B5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100005804(&qword_10020A4B0);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[14] = v10;
  v6[15] = v9;

  return _swift_task_switch(sub_10002B78C, v10, v9);
}

uint64_t sub_10002B78C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v2 + 16);
  v0[16] = v3;
  v0[17] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x779A000000000000;
  v3(v1);
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_100142ADC(ObjectType, v5);
  swift_unknownObjectRelease();
  v7 = sub_100119C00();

  if (v7)
  {
    (v3)(v0[3], v0[4]);
    v9 = v8;
    v10 = swift_getObjectType();
    sub_100142ADC(v10, v9);
    swift_unknownObjectRelease();
    sub_100119D68(0);

    static Clock<>.continuous.getter();
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_10002B998;

    return sub_10002D09C(200000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_10002BC44;
    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];

    return sub_10002AF78(v14, 0x6572616873, 0xE500000000000000, v16, v15);
  }
}

uint64_t sub_10002B998()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = v2[12];
  v6 = v2[11];
  v7 = v2[10];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = v3[14];
    v9 = v3[15];

    return _swift_task_switch(sub_10002BB9C, v8, v9);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v10 = swift_task_alloc();
    v3[19] = v10;
    *v10 = v4;
    v10[1] = sub_10002BC44;
    v12 = v3[4];
    v11 = v3[5];
    v13 = v3[3];

    return sub_10002AF78(v11, 0x6572616873, 0xE500000000000000, v13, v12);
  }
}

uint64_t sub_10002BB9C()
{
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10002BC44;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  return sub_10002AF78(v2, 0x6572616873, 0xE500000000000000, v4, v3);
}

uint64_t sub_10002BC44()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10002BD64, v3, v2);
}

uint64_t sub_10002BD64()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002D6F0(v0[5]);
  }

  else
  {
    v4 = v0[16];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[3];
    (*(v8 + 32))(v5, v0[5], v7);
    v4(v10, v9);
    v12 = v11;
    ObjectType = swift_getObjectType();
    sub_100142ADC(ObjectType, v12);
    swift_unknownObjectRelease();
    (*(v8 + 16))(v6, v5, v7);
    sub_100115BE8(v6);

    v4(v10, v9);
    v15 = v14;
    v16 = swift_getObjectType();
    sub_100142ADC(v16, v15);
    swift_unknownObjectRelease();
    sub_100115B70(1);

    (*(v8 + 8))(v5, v7);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10002BF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100005804(&qword_10020A4B0);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_10002C05C;

  return sub_10002AF78(v9, 0x74726F707865, 0xE600000000000000, a5, a6);
}

uint64_t sub_10002C05C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002C198, v1, v0);
}

uint64_t sub_10002C198()
{
  v1 = v0[5];

  v2 = type metadata accessor for URL();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10002D6F0(v1);
  if (v3 != 1)
  {
    (*(v0[4] + 16))(v0[3]);
    v5 = v4;
    ObjectType = swift_getObjectType();
    sub_100142ADC(ObjectType, v5);
    swift_unknownObjectRelease();
    sub_100115B0C(1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002C2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100005804(&unk_100206DF0);
  v6[5] = swift_task_alloc();
  sub_100005804(&qword_10020A4B0);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v10 = type metadata accessor for URL();
  v6[7] = v10;
  v11 = *(v10 - 8);
  v6[8] = v11;
  v6[9] = *(v11 + 64);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v6[14] = v12;
  *v12 = v6;
  v12[1] = sub_10002C474;

  return sub_10002AF78(v9, 0x6572616873, 0xE500000000000000, a5, a6);
}

uint64_t sub_10002C474()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 120) = v3;
  *(v1 + 128) = v2;

  return _swift_task_switch(sub_10002C5B8, v3, v2);
}

uint64_t sub_10002C5B8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10002D6F0(v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[11];
    v7 = *(v2 + 32);
    v0[17] = v7;
    v0[18] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v7(v6, v3, v1);
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_10002C728;
    v9 = v0[11];

    return sub_1000A12C4(v9);
  }
}

uint64_t sub_10002C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;

  if (v3)
  {

    v9 = v8[15];
    v10 = v8[16];
    v11 = sub_10002CA94;
  }

  else
  {
    v8[20] = a3;
    v8[21] = a2;
    v8[22] = a1;
    v9 = v8[15];
    v10 = v8[16];
    v11 = sub_10002C868;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10002C868()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  v3 = *(v0 + 168);
  v22 = *(v0 + 136);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  v17 = v5;
  v6 = *(v0 + 64);
  v19 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v20 = v8;
  v21 = v4;
  v9 = *(v0 + 16);
  v10 = type metadata accessor for TaskPriority();
  v18 = *(v0 + 24);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v6 + 16))(v5, v4, v7);
  sub_10002D758(v1);
  v11 = v9;
  v12 = static MainActor.shared.getter();
  v13 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v18;
  *(v14 + 48) = v1;
  *(v14 + 56) = v3;
  *(v14 + 64) = v2;
  v22(v14 + v13, v17, v7);
  *(v14 + ((v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  sub_10005DB88(0, 0, v20, &unk_10019B4F8, v14);

  sub_10002D9E0(v1);
  (*(v6 + 8))(v21, v7);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10002CA94()
{

  v18 = *(v0 + 136);
  v1 = *(v0 + 88);
  v17 = v1;
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = type metadata accessor for TaskPriority();
  v16 = *(v0 + 24);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v5 + 16))(v2, v1, v4);
  sub_10002D758(0);
  v9 = v7;
  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v16;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 0;
  v18(v13 + v11, v2, v4);
  *(v13 + v12) = v9;
  sub_10005DB88(0, 0, v6, &unk_10019B4F8, v13);

  sub_10002D9E0(0);
  (*(v5 + 8))(v17, v4);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10002CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for URL();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[13] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002CDF4, v12, v11);
}

uint64_t sub_10002CDF4()
{
  v32 = v0;
  v1 = *(v0 + 16);

  if (v1)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 16);

    v5 = sub_1000A17A4(v3, v2);
    if (v5)
    {
      v6 = v5;
      [*(v0 + 48) presentViewController:v5 animated:1 completion:0];
    }
  }

  else
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 40);
    sub_1001450D4(*(v0 + 96));
    (*(v8 + 16))(v7, v10, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    v13 = j__os_log_type_enabled(v11, v12);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    if (v13)
    {
      v30 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v28 = v12;
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      sub_10002DBB0(&qword_100206DD0, &type metadata accessor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v14;
      v24 = v23;
      (*(v18 + 8))(v16, v19);
      v25 = sub_10008B044(v22, v24, &v31);

      *(v20 + 4) = v25;
      j___os_log_impl(&dword_100000000, v11, v28, "Unable to import %s into photo library", v20, 0xCu);
      sub_10000867C(v21);

      (*(v15 + 8))(v29, v30);
    }

    else
    {

      (*(v18 + 8))(v16, v19);
      (*(v15 + 8))(v14, v17);
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10002D09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10002D19C, 0, 0);
}

uint64_t sub_10002D19C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10002DBB0(&qword_100207AF0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10002DBB0(&qword_100207AF8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10002D32C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10002D32C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10002D4E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10002D4E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D628(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002DD0C;

  return sub_10002C2A4(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_10002D6F0(uint64_t a1)
{
  v2 = sub_100005804(&qword_10020A4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10002D758(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_10002D798()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  v5 = *(v0 + 48);
  if (v5)
  {
  }

  v6 = (v3 + 72) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_10002D884(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002DD0C;

  return sub_10002CC98(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

void *sub_10002D9E0(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002DA20(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002DD0C;

  return sub_10002BF34(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_10002DAE8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002DD0C;

  return sub_10002B5F4(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_10002DBB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002DBF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002DC38(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100013194;

  return sub_10002ABC8(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_10002DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_100005804(&qword_100207B60);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  if (v10)
  {
    sub_100110794(1);
  }

  sub_100005804(&unk_100209B50);
  v8 = j___s7SwiftUI7BindingV12wrappedValuexvs();
  return a7(v8);
}

id sub_10002DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = String._bridgeToObjectiveC()();

  v10 = [ObjCClassFromMetadata alertControllerWithTitle:v9 message:0 preferredStyle:1];

  v11 = objc_allocWithZone(UIViewController);
  v12 = v10;
  v13 = [v11 init];
  [v12 setContentViewController:v13];

  String.LocalizationValue.init(stringLiteral:)();
  v14 = [objc_opt_self() mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  v16 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100030700;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009FE78;
  aBlock[3] = &unk_1001EF9B8;
  v17 = j___Block_copy(aBlock);

  v18 = [objc_opt_self() actionWithTitle:v16 style:1 handler:v17];
  j___Block_release(v17);

  [v12 addAction:v18];

  return v12;
}

void sub_10002E0C4(void *a1)
{
  v63 = a1;
  v62 = type metadata accessor for DownloadStatusViewModel.DownloadError();
  Description = v62[-1].Description;
  __chkstk_darwin(v62);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100005804(&qword_100207B70);
  __chkstk_darwin(v61);
  v6 = &v57 - v5;
  v7 = sub_100005804(&qword_100207B58);
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  v70 = *v1;
  v71 = *(v1 + 2);
  sub_100005804(&qword_100207B60);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  if (!v67)
  {
    sub_100030814();
    return;
  }

  v59 = v12;
  v60 = v9;
  v57 = v4;
  v19 = *(v1 + 4);
  v64 = *(v1 + 3);
  *&v70 = v64;
  *(&v70 + 1) = v19;
  v66 = v19;
  v65 = sub_100005804(&qword_100207B78);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v20 = v67;
  v21 = *&v67[OBJC_IVAR____TtC7Preview23DownloadAlertController_progress];
  v22 = v21;

  v23 = sub_100110DC0();
  v24 = v23;
  if (!v21)
  {
    v26 = v64;
    if (!v23)
    {
      goto LABEL_21;
    }

    v22 = v23;
    goto LABEL_10;
  }

  if (!v23)
  {
    v26 = v64;
LABEL_10:

LABEL_11:
    v58 = Description;
    v27 = v18;
    *&v70 = v26;
    *(&v70 + 1) = v66;
    j___s7SwiftUI5StateV12wrappedValuexvg();
    v28 = v67;
    v29 = sub_100110DC0();
    v30 = v29;
    v31 = OBJC_IVAR____TtC7Preview23DownloadAlertController_progress;
    v32 = *&v28[OBJC_IVAR____TtC7Preview23DownloadAlertController_progress];
    *&v28[OBJC_IVAR____TtC7Preview23DownloadAlertController_progress] = v29;
    if (v32)
    {
      if (v32 == v29)
      {

        v28 = v32;
LABEL_16:
        v18 = v27;
LABEL_20:
        Description = v58;

        goto LABEL_21;
      }

      v35 = v29;
      v36 = v32;
      v37 = String._bridgeToObjectiveC()();
      [v36 removeObserver:v28 forKeyPath:v37];

      v34 = *&v28[v31];
      v18 = v27;
      if (!v34)
      {
LABEL_19:
        sub_10002EA18();

        v28 = v32;
        v26 = v64;
        goto LABEL_20;
      }
    }

    else
    {
      if (!v29)
      {
        goto LABEL_16;
      }

      v33 = v29;
      v34 = v30;
      v18 = v27;
    }

    v38 = v34;
    v39 = String._bridgeToObjectiveC()();
    [v38 addObserver:v28 forKeyPath:v39 options:1 context:0];

    goto LABEL_19;
  }

  sub_1000085D8(0, &qword_100207B88);
  v25 = static NSObject.== infix(_:_:)();

  v26 = v64;
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  *&v70 = v26;
  *(&v70 + 1) = v66;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v40 = v67;
  v41 = OBJC_IVAR____TtC7Preview23DownloadAlertController_error;
  swift_beginAccess();
  sub_100006600(v40 + v41, v18, &qword_100207B58);

  sub_100110AD0(v15);
  v42 = *(v61 + 12);
  sub_100006600(v18, v6, &qword_100207B58);
  sub_100006600(v15, &v6[v42], &qword_100207B58);
  v43 = Description[6];
  v44 = v62;
  if (v43(v6, 1, v62) != 1)
  {
    v61 = v18;
    v46 = v59;
    sub_100006600(v6, v59, &qword_100207B58);
    if (v43(&v6[v42], 1, v44) != 1)
    {
      v53 = Description;
      v54 = v57;
      (Description[4])(v57, &v6[v42], v44);
      sub_100030948(&qword_100207B80, type metadata accessor for DownloadStatusViewModel.DownloadError);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = v53[1];
      v56(v54, v44);
      sub_100007710(v15, &qword_100207B58);
      sub_100007710(v61, &qword_100207B58);
      v56(v46, v44);
      sub_100007710(v6, &qword_100207B58);
      v45 = v64;
      if (v55)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    sub_100007710(v15, &qword_100207B58);
    sub_100007710(v61, &qword_100207B58);
    (Description[1])(v46, v44);
LABEL_26:
    sub_100007710(v6, &qword_100207B70);
    v45 = v64;
LABEL_27:
    v67 = v45;
    v68 = v66;
    j___s7SwiftUI5StateV12wrappedValuexvg();
    v47 = v69;
    v6 = v60;
    sub_100110AD0(v60);
    v48 = OBJC_IVAR____TtC7Preview23DownloadAlertController_error;
    swift_beginAccess();
    sub_1000308D8(v6, v47 + v48);
    swift_endAccess();
    sub_10002EA18();

    goto LABEL_28;
  }

  sub_100007710(v15, &qword_100207B58);
  sub_100007710(v18, &qword_100207B58);
  if (v43(&v6[v42], 1, v44) != 1)
  {
    goto LABEL_26;
  }

  v45 = v64;
LABEL_28:
  sub_100007710(v6, &qword_100207B58);
LABEL_29:
  v49 = sub_100111104();
  v50 = [v63 presentedViewController];
  v67 = v45;
  v68 = v66;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v51 = v69;

  if (v50)
  {

    LOBYTE(v50) = v50 == v51;
  }

  if (sub_100111104() & 1) == 0 || (v50)
  {
    if (v49 & 1) == 0 && (v50)
    {
      sub_100030814();
    }
  }

  else
  {
    v67 = v45;
    v68 = v66;
    j___s7SwiftUI5StateV12wrappedValuexvg();
    v52 = v69;
    [v63 presentViewController:v69 animated:1 completion:0];
  }
}

id sub_10002E8B4()
{
  v0 = objc_allocWithZone(UIViewController);

  return [v0 init];
}

uint64_t sub_10002E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030990();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10002E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030990();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10002E9F0()
{
  sub_100030990();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_10002EA18()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100005804(&qword_100207B58);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for DownloadStatusViewModel.DownloadError();
  Description = v9[-1].Description;
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7Preview23DownloadAlertController_error;
  swift_beginAccess();
  sub_100006600(v0 + v13, v8, &qword_100207B58);
  if ((Description[6])(v8, 1, v9) == 1)
  {
    sub_100007710(v8, &qword_100207B58);
    v14 = *(v0 + OBJC_IVAR____TtC7Preview23DownloadAlertController_progress);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC7Preview23DownloadAlertController_statusLabel;
      swift_beginAccess();
      v16 = *(v0 + v15);
      if (v16)
      {
        v17 = v14;
        v18 = v16;
        v19 = [v17 localizedAdditionalDescription];
        [v18 setText:v19];
      }

      else
      {
        v28 = v14;
      }

      v29 = *(v0 + OBJC_IVAR____TtC7Preview23DownloadAlertController_progressView);
      if (v29)
      {
        v30 = v29;
        [v14 fractionCompleted];
        *&v31 = v31;
        [v30 setProgress:v31];
      }
    }

    else
    {
      v24 = OBJC_IVAR____TtC7Preview23DownloadAlertController_statusLabel;
      swift_beginAccess();
      v25 = *(v0 + v24);
      if (v25)
      {
        v26 = v25;
        String.LocalizationValue.init(stringLiteral:)();
        (*(v33 + 104))(v34, enum case for LocalizedStringResource.BundleDescription.main(_:), v35);
        static Locale.current.getter();
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        String.init(localized:)();
        v27 = String._bridgeToObjectiveC()();

        [v26 setText:v27];
      }
    }
  }

  else
  {
    Description[4](v12, v8, v9);
    v20 = OBJC_IVAR____TtC7Preview23DownloadAlertController_statusLabel;
    swift_beginAccess();
    v21 = *(v0 + v20);
    if (v21)
    {
      swift_endAccess();
      v22 = v21;
      sub_100110370();
      String.init(localized:)();
      v23 = String._bridgeToObjectiveC()();

      [v22 setText:v23];

      (Description[1])(v12, v9);
    }

    else
    {
      (Description[1])(v12, v9);
      swift_endAccess();
    }
  }
}

id sub_10002EF6C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Preview23DownloadAlertController_progress];
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 removeObserver:v0 forKeyPath:v4];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t type metadata accessor for DownloadAlertController()
{
  result = qword_100207B38;
  if (!qword_100207B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a5;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1 == 0xD000000000000011 && 0x80000001001B0BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000085D8(0, &qword_100206DB0);
      v18 = static OS_dispatch_queue.main.getter();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = sub_1000304E0;
      v37 = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000834C4;
      v35 = &unk_1001EF968;
      v20 = j___Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v33 = &_swiftEmptyArrayStorage;
      sub_100030948(&qword_100208000, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005804(&unk_100206DC0);
      sub_100012F08();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      j___Block_release(v20);

      (*(v30 + 8))(v13, v11);
      (*(v15 + 8))(v17, v14);

      return;
    }

    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  sub_100006600(a3, aBlock, &qword_100206500);
  v22 = v35;
  if (!v35)
  {
    v28 = 0;
    if (a4)
    {
      goto LABEL_10;
    }

LABEL_12:
    v29.super.isa = 0;
    goto LABEL_13;
  }

  v23 = sub_100008638(aBlock, v35);
  v24 = *(v22 - 1);
  v25 = __chkstk_darwin(v23);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v25);
  v28 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v24 + 8))(v27, v22);
  sub_10000867C(aBlock);
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_10:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_100030948(&qword_1002062B0, type metadata accessor for NSKeyValueChangeKey);
  v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_13:
  v38.receiver = v6;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, "observeValueForKeyPath:ofObject:change:context:", v21, v28, v29.super.isa, v32, v30);

  swift_unknownObjectRelease();
}

void sub_10002F69C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002EA18();
  }

  else
  {
  }
}

uint64_t sub_10002F8BC(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

void sub_10002F96C()
{
  v44.receiver = v0;
  v44.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v1 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC7Preview23DownloadAlertController_progressView];
  *&v0[OBJC_IVAR____TtC7Preview23DownloadAlertController_progressView] = v1;
  v3 = v1;

  v4 = [v0 contentViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 view];

    if (v6)
    {
      [v6 addSubview:v3];
      v7 = [objc_allocWithZone(UILabel) init];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [objc_opt_self() secondaryLabelColor];
      [v7 setTextColor:v8];

      [v7 setNumberOfLines:1];
      v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v7 setFont:v9];

      [v7 setTextAlignment:1];
      LODWORD(v10) = 1148846080;
      [v7 setContentHuggingPriority:1 forAxis:v10];
      v11 = OBJC_IVAR____TtC7Preview23DownloadAlertController_statusLabel;
      swift_beginAccess();
      v12 = *&v0[v11];
      *&v0[v11] = v7;
      v13 = v7;

      sub_10002EA18();
      [v6 addSubview:v13];
      v43 = objc_opt_self();
      sub_100005804(&qword_1002064F0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10019B540;
      v15 = [v3 leadingAnchor];
      v16 = [v6 safeAreaLayoutGuide];
      v17 = [v16 leadingAnchor];

      v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
      *(v14 + 32) = v18;
      v19 = [v3 trailingAnchor];
      v20 = [v6 safeAreaLayoutGuide];
      v21 = [v20 trailingAnchor];

      v22 = [v19 constraintEqualToAnchor:v21 constant:-16.0];
      *(v14 + 40) = v22;
      v23 = [v3 topAnchor];
      v24 = [v6 safeAreaLayoutGuide];
      v25 = [v24 topAnchor];

      v26 = [v23 constraintEqualToAnchor:v25];
      *(v14 + 48) = v26;
      v27 = [v13 topAnchor];
      v28 = [v3 bottomAnchor];

      v29 = [v27 constraintEqualToAnchor:v28 constant:16.0];
      *(v14 + 56) = v29;
      v30 = [v13 leadingAnchor];
      v31 = [v6 safeAreaLayoutGuide];
      v32 = [v31 leadingAnchor];

      v33 = [v30 constraintEqualToAnchor:v32 constant:16.0];
      *(v14 + 64) = v33;
      v34 = [v13 trailingAnchor];
      v35 = [v6 safeAreaLayoutGuide];
      v36 = [v35 trailingAnchor];

      v37 = [v34 constraintEqualToAnchor:v36 constant:-16.0];
      *(v14 + 72) = v37;
      v38 = [v13 bottomAnchor];

      v39 = [v6 safeAreaLayoutGuide];
      v40 = [v39 bottomAnchor];

      v41 = [v38 constraintEqualToAnchor:v40];
      *(v14 + 80) = v41;
      sub_1000085D8(0, &qword_100207B50);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v43 activateConstraints:isa];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10003004C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Preview23DownloadAlertController_error;
  v8 = type metadata accessor for DownloadStatusViewModel.DownloadError();
  (*(v8[-1].Description + 7))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC7Preview23DownloadAlertController_progress] = 0;
  *&v3[OBJC_IVAR____TtC7Preview23DownloadAlertController_progressView] = 0;
  *&v3[OBJC_IVAR____TtC7Preview23DownloadAlertController_statusLabel] = 0;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_10003022C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Preview23DownloadAlertController_error;
  v5 = type metadata accessor for DownloadStatusViewModel.DownloadError();
  (*(v5[-1].Description + 7))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC7Preview23DownloadAlertController_progress] = 0;
  *&v1[OBJC_IVAR____TtC7Preview23DownloadAlertController_progressView] = 0;
  *&v1[OBJC_IVAR____TtC7Preview23DownloadAlertController_statusLabel] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1000303B4()
{
  sub_100030450();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100030450()
{
  if (!qword_100207B48)
  {
    type metadata accessor for DownloadStatusViewModel.DownloadError();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100207B48);
    }
  }
}

uint64_t sub_1000304A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000304E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  type metadata accessor for DownloadAlertController();
  String.LocalizationValue.init(stringLiteral:)();
  v14 = [objc_opt_self() mainBundle];
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;

  v18 = sub_10002DDD8(v15, v17, a4, a5);
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = v20;
  a6[4] = v21;
  return result;
}

uint64_t sub_1000306C8()
{

  return swift_deallocObject();
}

__n128 sub_100030708(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003071C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100030764(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000307C0()
{
  result = qword_100207B68;
  if (!qword_100207B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207B68);
  }

  return result;
}

void sub_100030814()
{
  sub_100005804(&qword_100207B78);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v0 = [v1 presentingViewController];

  if (v0)
  {

    j___s7SwiftUI5StateV12wrappedValuexvg();
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1000308D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100207B58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030948(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100030990()
{
  result = qword_100207B90;
  if (!qword_100207B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207B90);
  }

  return result;
}

uint64_t sub_1000309EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100030A0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100030A44()
{
  sub_100030A80();
  FocusedValues.subscript.getter();
  return v1;
}

unint64_t sub_100030A80()
{
  result = qword_100207B98;
  if (!qword_100207B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207B98);
  }

  return result;
}

uint64_t sub_100030AD4()
{
  sub_100030B1C();

  return FocusedValues.subscript.getter();
}

unint64_t sub_100030B1C()
{
  result = qword_100207BA0;
  if (!qword_100207BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207BA0);
  }

  return result;
}

uint64_t sub_100030B90()
{
  sub_100030D2C();
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() mainQueue];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_10003164C;
  v11 = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005E19C;
  ObjectType = &unk_1001EFB68;
  v4 = j___Block_copy(aBlock);

  v5 = [v1 addObserverForName:NSUndoManagerCheckpointNotification object:0 queue:v2 usingBlock:v4];
  j___Block_release(v4);

  ObjectType = swift_getObjectType();
  aBlock[0] = v5;
  v6 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_undoTrackingObservance;
  swift_beginAccess();
  sub_10003166C(aBlock, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_100030D2C()
{
  v1 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_undoTrackingObservance;
  swift_beginAccess();
  sub_100029BF0(v0 + v1, &v4);
  if (v5)
  {
    sub_1000065F0(&v4, &v6);
    v2 = [objc_opt_self() defaultCenter];
    sub_100008638(&v6, *(&v7 + 1));
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_10000867C(&v6);
  }

  else
  {
    sub_100029B88(&v4);
  }

  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_10003166C(&v6, v0 + v1);
  return swift_endAccess();
}

uint64_t sub_100030E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UndoManagerAction(0);

  v6 = String.init<A>(describing:)();
  sub_100030ED0(v6, v7, sub_1000315BC, a1, a2, a3);
}

void sub_100030ED0(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = (*(a6 + 24))(a5, a6);
  if (v17)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = (*(v20 + 8))(ObjectType, v20);
      if (v21)
      {
        v32 = v21;
        a3();

        v22 = v32;
      }

      else
      {
        sub_100145164(v16);

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();

        if (j__os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v34 = v30;
          *v29 = 136315138;
          *(v29 + 4) = sub_10008B044(v33, a2, &v34);
          j___os_log_impl(&dword_100000000, v27, v28, "WARNING: unable to perform '%s', undoManager provided was nil", v29, 0xCu);
          sub_10000867C(v30);
        }

        else
        {
        }

        (*(v11 + 8))(v16, v10);
      }

      return;
    }
  }

  sub_100145164(v14);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();

  if (j__os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10008B044(v33, a2, &v34);
    j___os_log_impl(&dword_100000000, v23, v24, "WARNING: unable to perform '%s', underlying paperKit VC doesn't support undo/redo", v25, 0xCu);
    sub_10000867C(v26);
  }

  (*(v11 + 8))(v14, v10);
}

void sub_1000312C0()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController);
    if (v2)
    {
      v3 = *(Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController + 8);
      ObjectType = swift_getObjectType();
      __chkstk_darwin(ObjectType);
      v6[2] = v1;
      v5 = v2;
      sub_100030ED0(0xD000000000000022, 0x80000001001B0C70, sub_1000316F8, v6, ObjectType, v3);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_100031454(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent);
  v4 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
  v5 = *(a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
  sub_100008638((a2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v4);
  (*(v5 + 24))(v4, v5);
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_100142ADC(ObjectType, v7);
  swift_unknownObjectRelease();
  sub_10011681C([a1 canUndo]);

  v9 = v3[3];
  v10 = v3[4];
  sub_100008638(v3, v9);
  (*(v10 + 24))(v9, v10);
  v12 = v11;
  v13 = swift_getObjectType();
  sub_100142ADC(v13, v12);
  swift_unknownObjectRelease();
  sub_100116844([a1 canRedo]);
}

id sub_100031580()
{
  v1 = [v0 undoManager];

  return v1;
}

id sub_1000315BC(void *a1)
{
  sub_10015DD64(&v4);
  v2 = &selRef_redo;
  if (!v4)
  {
    v2 = &selRef_undo;
  }

  return [a1 *v2];
}

uint64_t sub_100031614()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100031654(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003166C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100206500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031704()
{
  v0 = sub_100005804(&unk_100206DF0);
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

  sub_10005DE88(0, 0, v2, &unk_10019B838, v6);
}

uint64_t sub_100031858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000318F0, v6, v5);
}

uint64_t sub_1000318F0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100031990();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100031990()
{
  result = (*(v0 + 24))();
  if (result)
  {
    result = swift_beginAccess();
    v2 = *(v0 + 16);
    *(v0 + 16) = &_swiftEmptyArrayStorage;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v2 + 40;
      while (v4 < *(v2 + 16))
      {
        v6 = *(v5 - 8);
        type metadata accessor for MainActor();

        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        ++v4;
        v6();

        v5 += 16;
        if (v3 == v4)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t type metadata accessor for ObservabilityWatcher()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t sub_100031B24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100031B88(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 16));

  return a2(v2, 40, 7);
}

uint64_t sub_100031BE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013194;

  return sub_100031858(a1, v4, v5, v6);
}

uint64_t sub_100031CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&unk_10020A0D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100031D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&unk_10020A0D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100031E6C()
{
  sub_100031EF0();
  if (v0 <= 0x3F)
  {
    sub_100031F48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100031EF0()
{
  if (!qword_100207CE8)
  {
    j___s7SwiftUI22UserInterfaceSizeClassOMa();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100207CE8);
    }
  }
}

unint64_t sub_100031F48()
{
  result = qword_100207CF0;
  if (!qword_100207CF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100207CF0);
  }

  return result;
}

void sub_100031FB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = j___s7SwiftUI4FontV9TextStyleOMa();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = a1;
  *(a3 + 8) = a2;
  v33 = 0;
  v34 = 1;
  sub_100005804(&qword_1002071A8);
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  v10 = v30;
  v11 = v31;
  *(a3 + 16) = v29;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = FocusState.init<>()() & 1;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13 & 1;
  v14 = type metadata accessor for GoToPopoverContentView(0);
  v29 = 80.0;
  sub_100028174();
  ScaledMetric.init(wrappedValue:)();
  v29 = 8.0;
  ScaledMetric.init(wrappedValue:)();
  v15 = v14[9];
  v29 = sub_1001895D8(12.0, 5.0);
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v19 = enum case for Font.TextStyle.body(_:);
  v20 = *(v7 + 104);
  v20(v9, enum case for Font.TextStyle.body(_:), v6);
  sub_100032470();
  sub_1001886C0(&v29, v9, &type metadata for EdgeInsets, (a3 + v15));
  v21 = v14[10];
  v29 = sub_1001895D8(16.0, 6.0);
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v20(v9, v19, v6);
  sub_1001886C0(&v29, v9, &type metadata for EdgeInsets, (a3 + v21));
  v29 = 16.0;
  ScaledMetric.init(wrappedValue:)();
  v25 = a3 + v14[12];
  *v25 = sub_1001895D8(10.0, 3.0);
  *(v25 + 8) = v26;
  *(v25 + 16) = v27;
  *(v25 + 24) = v28;
}

uint64_t sub_10003222C(uint64_t a1)
{
  v3 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GoToPopoverContentView(0);
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + *(a1 + 20));
  v11 = *v10;
  v12 = v10[1];

  sub_100031FB4(v11, v12, v9);
  (*(v4 + 104))(v6, enum case for DynamicTypeSize.accessibility2(_:), v3);
  sub_1000348E0(&qword_100207D20, type metadata accessor for GoToPopoverContentView);
  sub_10012FDF8(v1, v6);
  (*(v4 + 8))(v6, v3);
  return sub_100032414(v9);
}

uint64_t sub_100032414(uint64_t a1)
{
  v2 = type metadata accessor for GoToPopoverContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100032470()
{
  result = qword_100207D28;
  if (!qword_100207D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207D28);
  }

  return result;
}

uint64_t sub_1000324D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005804(qword_100207720);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005804(&qword_100207D30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100032628(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100005804(qword_100207720);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005804(&qword_100207D30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100032764()
{
  sub_100031F48();
  if (v0 <= 0x3F)
  {
    sub_1000328B4();
    if (v1 <= 0x3F)
    {
      sub_100032918();
      if (v2 <= 0x3F)
      {
        sub_100032970(319, &qword_1002077B0, sub_100028174, &type metadata for CGFloat, &type metadata accessor for ScaledMetric);
        if (v3 <= 0x3F)
        {
          sub_100032970(319, &unk_100207DB0, sub_100032470, &type metadata for EdgeInsets, type metadata accessor for ScaledTuple);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000328B4()
{
  if (!qword_100207DA0)
  {
    sub_1000059D4(&qword_1002071A8);
    v0 = j___s7SwiftUI5StateVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_100207DA0);
    }
  }
}

void sub_100032918()
{
  if (!qword_100207DA8)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_100207DA8);
    }
  }
}

void sub_100032970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1000329D8()
{
  type metadata accessor for GoToPopoverContentView(255);
  sub_1000348E0(&qword_100207D20, type metadata accessor for GoToPopoverContentView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GoToPopoverContentView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = static VerticalAlignment.firstTextBaseline.getter();
  sub_100005804(qword_100207720);
  j___s7SwiftUI12ScaledMetricV12wrappedValuexvg();
  v9 = v22;
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  v10 = sub_100005804(&qword_100207E00);
  sub_100032C48(v1, (a1 + *(v10 + 44)));
  v11 = (v1 + *(v5 + 56));
  v12 = *v11;
  v20 = v11[1];
  v21 = v12;
  v13 = static Edge.Set.all.getter();
  v14 = a1 + *(sub_100005804(&qword_100207E08) + 36);
  *v14 = v13;
  v15 = v21;
  *(v14 + 24) = v20;
  *(v14 + 8) = v15;
  *(v14 + 40) = 0;
  sub_100034760(v2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1000347C8(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  result = sub_100005804(&qword_100207E10);
  v19 = (a1 + *(result + 36));
  *v19 = sub_10003482C;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_100032C48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v151 = a1;
  v149 = a2;
  v146 = sub_100005804(&qword_100207E20);
  __chkstk_darwin(v146);
  v145 = &v95 - v2;
  v144 = sub_100005804(&qword_100207E28);
  __chkstk_darwin(v144);
  v148 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v147 = &v95 - v5;
  v141 = type metadata accessor for SubmitTriggers();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v153 = type metadata accessor for GoToPopoverContentView(0);
  v136 = *(v153 - 8);
  __chkstk_darwin(v153);
  v142 = v7;
  v143 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for SubmitLabel();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for PlainTextFieldStyle();
  *&v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  *&v115 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  *&v154 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v152 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for LocalizedStringResource();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100005804(&qword_100207E30);
  __chkstk_darwin(v96);
  v99 = sub_100005804(&qword_100207868);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v95 - v20;
  v103 = sub_100005804(&qword_100207E38);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v95 - v21;
  v102 = sub_100005804(&qword_100207E40);
  __chkstk_darwin(v102);
  v109 = &v95 - v22;
  v107 = sub_100005804(&qword_100207E48);
  __chkstk_darwin(v107);
  v111 = &v95 - v23;
  v110 = sub_100005804(&qword_100207E50);
  __chkstk_darwin(v110);
  v114 = &v95 - v24;
  v120 = sub_100005804(&qword_100207E58);
  __chkstk_darwin(v120);
  v118 = &v95 - v25;
  v123 = sub_100005804(&qword_100207E60);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v119 = &v95 - v26;
  v126 = sub_100005804(&qword_100207E68);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v95 - v27;
  v128 = sub_100005804(&qword_100207E70);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v95 - v28;
  v132 = sub_100005804(&qword_100207E78);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v150 = &v95 - v31;
  type metadata accessor for MainActor();
  v129 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v95 = LocalizedStringKey.init(stringLiteral:)();
  v32 = v151;
  v33 = *(v151 + 24);
  v34 = *(v151 + 32);
  *&v155 = *(v151 + 16);
  BYTE8(v155) = v33;
  *&v156 = v34;
  sub_100005804(&qword_100207E80);
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  static Locale.autoupdatingCurrent.getter();
  sub_10003488C();
  IntegerFormatStyle.init(locale:)();
  String.LocalizationValue.init(stringLiteral:)();
  v35 = *(v154 + 104);
  v108 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  *&v154 = v154 + 104;
  v106 = v35;
  v35(v12);
  static Locale.current.getter();
  v112 = v19;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v113 = v16;
  v105 = v12;
  v104 = v10;
  sub_100007888(&qword_100207E90, &qword_100207E30);
  v36 = v97;
  TextField<>.init<A>(_:value:format:prompt:)();
  v37 = sub_100007888(&qword_100207860, &qword_100207868);
  v38 = v100;
  v39 = v99;
  View.keyboardType(_:)();
  (*(v98 + 8))(v36, v39);
  v40 = v115;
  PlainTextFieldStyle.init()();
  *&v157 = v39;
  *(&v157 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  sub_1000348E0(&qword_100207878, &type metadata accessor for PlainTextFieldStyle);
  v41 = v109;
  v42 = v103;
  v43 = v117;
  View.textFieldStyle<A>(_:)();
  (*(v116 + 8))(v40, v43);
  (*(v101 + 8))(v38, v42);
  v117 = sub_100005804(&qword_100207D30);
  sub_100188A40(v117);
  v116 = v157;
  v115 = v158;
  v44 = static Edge.Set.all.getter();
  v45 = v41 + *(v102 + 36);
  *v45 = v44;
  *(v45 + 24) = v115;
  *(v45 + 8) = v116;
  *(v45 + 40) = 0;
  sub_100005804(qword_100207720);
  j___s7SwiftUI12ScaledMetricV12wrappedValuexvg();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v46 = v111;
  sub_100023CD8(v41, v111, &qword_100207E40);
  v47 = (v46 + *(v107 + 36));
  v48 = v162;
  v47[4] = v161;
  v47[5] = v48;
  v47[6] = v163;
  v49 = v158;
  *v47 = v157;
  v47[1] = v49;
  v50 = v160;
  v47[2] = v159;
  v47[3] = v50;
  v51 = static HierarchicalShapeStyle.quaternary.getter();
  LOBYTE(v43) = static Edge.Set.all.getter();
  v52 = v114;
  sub_100023CD8(v46, v114, &qword_100207E48);
  v53 = v52 + *(v110 + 36);
  *v53 = v51;
  *(v53 + 4) = v43;
  j___s7SwiftUI12ScaledMetricV12wrappedValuexvg();
  v54 = v155;
  v55 = v120;
  v56 = v118;
  v57 = &v118[*(v120 + 36)];
  v58 = *(type metadata accessor for RoundedRectangle() + 20);
  v59 = enum case for RoundedCornerStyle.continuous(_:);
  LODWORD(v115) = enum case for RoundedCornerStyle.continuous(_:);
  v111 = type metadata accessor for RoundedCornerStyle();
  v60 = *(v111 - 8);
  v110 = *(v60 + 104);
  *&v116 = v60 + 104;
  (v110)(&v57[v58], v59, v111);
  *v57 = v54;
  *(v57 + 1) = v54;
  *&v57[*(sub_100005804(&qword_100207E98) + 36)] = 256;
  sub_100023CD8(v52, v56, &qword_100207E50);
  v61 = *(v32 + 48);
  v62 = *(v32 + 56);
  LOBYTE(v155) = *(v32 + 40);
  *(&v155 + 1) = v61;
  LOBYTE(v156) = v62;
  sub_100005804(&qword_100207E18);
  FocusState.projectedValue.getter();
  v63 = sub_100034928();
  v64 = v119;
  View.focused(_:)();

  sub_100007710(v56, &qword_100207E58);
  *&v155 = v55;
  *(&v155 + 1) = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v122;
  v67 = v123;
  View.textInputValidation(_:)();
  (*(v121 + 8))(v64, v67);
  v68 = v133;
  static SubmitLabel.go.getter();
  *&v155 = v67;
  *(&v155 + 1) = OpaqueTypeConformance2;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v125;
  v71 = v126;
  View.submitLabel(_:)();
  (*(v134 + 8))(v68, v135);
  (*(v124 + 8))(v66, v71);
  v72 = v143;
  sub_100034760(v32, v143);
  v73 = (*(v136 + 80) + 16) & ~*(v136 + 80);
  v74 = swift_allocObject();
  sub_1000347C8(v72, v74 + v73);
  v75 = v139;
  static SubmitTriggers.text.getter();
  *&v155 = v71;
  *(&v155 + 1) = v69;
  swift_getOpaqueTypeConformance2();
  v76 = v128;
  View.onSubmit(of:_:)();

  (*(v140 + 8))(v75, v141);
  (*(v127 + 8))(v70, v76);
  String.LocalizationValue.init(stringLiteral:)();
  v106(v105, v108, v104);
  static Locale.current.getter();
  v77 = v113;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100034760(v151, v72);
  v78 = swift_allocObject();
  v79 = sub_1000347C8(v72, v78 + v73);
  __chkstk_darwin(v79);
  v80 = v145;
  Button.init(action:label:)();
  (*(v137 + 8))(v77, v138);
  sub_100188A40(v117);
  v154 = v155;
  v153 = v156;
  LOBYTE(v68) = static Edge.Set.all.getter();
  v81 = v80 + *(sub_100005804(&qword_100207ED8) + 36);
  *v81 = v68;
  *(v81 + 24) = v153;
  *(v81 + 8) = v154;
  *(v81 + 40) = 0;
  LODWORD(v68) = static HierarchicalShapeStyle.tertiary.getter();
  v82 = (v80 + *(v146 + 36));
  v83 = sub_100005804(&qword_100207EE0);
  (v110)(v82 + *(v83 + 52), v115, v111);
  *v82 = v68;
  *(v82 + *(v83 + 56)) = 256;
  static Font.Weight.medium.getter();
  sub_100034FC4();
  v84 = v147;
  View.fontWeight(_:)();
  sub_100035134(v80);
  *(v84 + *(v144 + 36)) = 257;
  v85 = v131;
  v86 = *(v131 + 16);
  v87 = v130;
  v88 = v150;
  v89 = v132;
  v86(v130, v150, v132);
  v90 = v148;
  sub_10003519C(v84, v148);
  v91 = v149;
  v86(v149, v87, v89);
  v92 = sub_100005804(&qword_100207F10);
  sub_10003519C(v90, &v91[*(v92 + 48)]);
  sub_100007710(v84, &qword_100207E28);
  v93 = *(v85 + 8);
  v93(v88, v89);
  sub_100007710(v90, &qword_100207E28);
  v93(v87, v89);
}

uint64_t sub_1000343F8()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static CharacterSet.decimalDigits.getter();
  CharacterSet.init(charactersIn:)();
  v7 = CharacterSet.isSuperset(of:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_100034594(void (**a1)(uint64_t, void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *a1;
  sub_100005804(&qword_100207E80);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v2(v4, v5);
}

uint64_t sub_100034684()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_100207E18);
  FocusState.wrappedValue.setter();
}

uint64_t sub_100034760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToPopoverContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000347C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToPopoverContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003482C()
{
  type metadata accessor for GoToPopoverContentView(0);

  return sub_100034684();
}

unint64_t sub_10003488C()
{
  result = qword_100207E88;
  if (!qword_100207E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207E88);
  }

  return result;
}

uint64_t sub_1000348E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100034928()
{
  result = qword_100207EA0;
  if (!qword_100207EA0)
  {
    sub_1000059D4(&qword_100207E58);
    sub_1000349E0();
    sub_100007888(&qword_100207ED0, &qword_100207E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207EA0);
  }

  return result;
}

unint64_t sub_1000349E0()
{
  result = qword_100207EA8;
  if (!qword_100207EA8)
  {
    sub_1000059D4(&qword_100207E50);
    sub_100034A98();
    sub_100007888(&qword_100207EC0, &qword_100207EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207EA8);
  }

  return result;
}

unint64_t sub_100034A98()
{
  result = qword_100207EB0;
  if (!qword_100207EB0)
  {
    sub_1000059D4(&qword_100207E48);
    sub_100034B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207EB0);
  }

  return result;
}

unint64_t sub_100034B24()
{
  result = qword_100207EB8;
  if (!qword_100207EB8)
  {
    sub_1000059D4(&qword_100207E40);
    sub_1000059D4(&qword_100207E38);
    type metadata accessor for PlainTextFieldStyle();
    sub_1000059D4(&qword_100207868);
    sub_100007888(&qword_100207860, &qword_100207868);
    swift_getOpaqueTypeConformance2();
    sub_1000348E0(&qword_100207878, &type metadata accessor for PlainTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207EB8);
  }

  return result;
}

uint64_t sub_100034CAC()
{
  v1 = (type metadata accessor for GoToPopoverContentView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_100005804(qword_100207720);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[10], v4);
  v6 = v1[11];
  v7 = sub_100005804(&qword_100207D30);
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[12], v7);
  v5(v2 + v1[13], v4);

  return swift_deallocObject();
}

uint64_t sub_100034EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_100034FC4()
{
  result = qword_100207EE8;
  if (!qword_100207EE8)
  {
    sub_1000059D4(&qword_100207E20);
    sub_10003507C();
    sub_100007888(&qword_100207F08, &qword_100207EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207EE8);
  }

  return result;
}

unint64_t sub_10003507C()
{
  result = qword_100207EF0;
  if (!qword_100207EF0)
  {
    sub_1000059D4(&qword_100207ED8);
    sub_100007888(&qword_100207EF8, &qword_100207F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207EF0);
  }

  return result;
}

uint64_t sub_100035134(uint64_t a1)
{
  v2 = sub_100005804(&qword_100207E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003519C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100207E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035210()
{
  result = qword_100207F18;
  if (!qword_100207F18)
  {
    sub_1000059D4(&qword_100207E10);
    sub_10003529C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207F18);
  }

  return result;
}

unint64_t sub_10003529C()
{
  result = qword_100207F20;
  if (!qword_100207F20)
  {
    sub_1000059D4(&qword_100207E08);
    sub_100007888(&qword_100207F28, &unk_100207F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207F20);
  }

  return result;
}

char *sub_100035478(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_100005804(&qword_100207FE8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v43 - v14);
  v16 = &v5[OBJC_IVAR____TtC7Preview18LoupeContainerView_metrics];
  *v16 = xmmword_10019BA00;
  *(v16 + 1) = xmmword_10019BA10;
  *(v16 + 2) = xmmword_10019BA20;
  *(v16 + 6) = 0x3FE0000000000000;
  result = sub_10009FA3C(0.0, 0.0, 0.0, 0.0);
  if (result)
  {
    *&v5[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] = result;
    v5[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHidden] = 1;
    v5[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeForceHidden] = 1;
    v5[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHasEverBeenShown] = 0;
    v18 = [objc_opt_self() standardUserDefaults];
    v19 = sub_100039EA0();
    sub_10018A080(0x506570756F4C5650, 0xEF6E6F697469736FLL, v15);
    sub_100189EE4(&_s13LoupePositionON, v19, v45);

    (*(v13 + 8))(v15, v12);
    v20 = v45[0];
    v21 = v45[1];
    if (v47)
    {
      v20 = 1;
      v21 = 0;
    }

    v22 = v47 | v46;
    v23 = &v6[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition];
    *v23 = v20;
    *(v23 + 1) = v21;
    v23[16] = v22 & 1;
    v6[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase] = 0;
    v24 = &v6[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionStartOffset];
    *v24 = 0;
    v24[1] = 0;
    *&v6[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePanGesture] = 0;
    v25 = type metadata accessor for LoupeContainerView();
    v44.receiver = v6;
    v44.super_class = v25;
    v26 = objc_msgSendSuper2(&v44, "initWithFrame:", a2, a3, a4, a5);
    v27 = v26;
    if (v26[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase])
    {
      v28 = v26;
      v29 = sub_100037498();
      if (v29)
      {
        v30 = v29;
        v31 = *&v28[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
        v32 = [v31 superview];
        if (v32 && (v33 = v32, sub_1000085D8(0, &qword_100207FE0), v34 = v30, v35 = static NSObject.== infix(_:_:)(), v33, v34, (v35 & 1) != 0))
        {
        }

        else
        {
          [v30 addSubview:v31];
        }
      }
    }

    else
    {
      v36 = *&v26[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
      v37 = v26;
      v38 = [v36 superview];
      if (!v38 || (v39 = v38, sub_1000085D8(0, &qword_100207FE0), v40 = v37, v41 = static NSObject.== infix(_:_:)(), v39, v40, (v41 & 1) == 0))
      {
        [v37 addSubview:v36];
      }
    }

    v42 = 1.0;
    if (v27[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHidden])
    {
      v42 = 0.0;
    }

    [*&v27[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] setAlpha:v42];
    if (a1)
    {
      sub_1000375D0();
    }

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035A00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for LoupeContainerView();
  v45.receiver = v0;
  v45.super_class = v13;
  objc_msgSendSuper2(&v45, "didMoveToWindow");
  if (v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase])
  {
    v14 = sub_100037498();
    if (v14)
    {
      v15 = v14;
      v16 = v12;
      v17 = v7;
      v18 = *&v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
      v19 = [v18 superview];
      if (v19 && (v20 = v19, sub_1000085D8(0, &qword_100207FE0), v21 = v15, v22 = static NSObject.== infix(_:_:)(), v20, v21, (v22 & 1) != 0))
      {
      }

      else
      {
        [v15 addSubview:v18];
      }

      v7 = v17;
      v12 = v16;
    }
  }

  else
  {
    v23 = *&v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
    v24 = [v23 superview];
    if (!v24 || (v25 = v24, sub_1000085D8(0, &qword_100207FE0), v26 = v0, v27 = static NSObject.== infix(_:_:)(), v25, v26, (v27 & 1) == 0))
    {
      [v1 addSubview:v23];
    }
  }

  sub_1000085D8(0, &qword_100206DB0);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v36 = *(v7 + 8);
  v36(v9, v6);
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  aBlock[4] = sub_10003A404;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = &unk_1001F0648;
  v30 = j___Block_copy(aBlock);
  v31 = v1;
  v32 = v37;
  static DispatchQoS.unspecified.getter();
  v43 = &_swiftEmptyArrayStorage;
  sub_10003A0FC();
  sub_100005804(&unk_100206DC0);
  sub_100012F08();
  v33 = v40;
  v34 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  j___Block_release(v30);

  (*(v41 + 8))(v33, v34);
  (*(v38 + 8))(v32, v39);
  v36(v12, v6);
}

uint64_t sub_100035EDC(_BYTE *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeForceHidden] = 0;
  [a1 setNeedsLayout];
}

void sub_100036044(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *&v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_metrics];
  v8 = *&v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_metrics + 8];
  v9 = *&v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_metrics + 24];
  v32 = *&v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_metrics + 32];
  v10 = [v3 layoutMarginsGuide];
  [v10 layoutFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v33.origin.x = v12;
  v33.origin.y = v14;
  v33.size.width = v16;
  v33.size.height = v18;
  v19 = (CGRectGetWidth(v33) - v7) * 0.5 - v8 + 0.0;
  [v3 bounds];
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  v21 = v19 + MaxX - CGRectGetMaxX(v35) - v8;
  if (v21 >= v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 * (*(*&v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] + OBJC_IVAR____TtC7Preview9LoupeView_assetSize + 8) / *(*&v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] + OBJC_IVAR____TtC7Preview9LoupeView_assetSize + 8));
  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  v24 = v32 * (v22 / v9) + CGRectGetMaxY(v36) - v23 * 0.5;
  v25 = sub_100037498();
  v27 = v24;
  if (v25)
  {

    [v3 bounds];
    MaxY = CGRectGetMaxY(v37);
    v27 = MaxY;
  }

  if (a3)
  {
    [v3 bounds];
    if (a1 | a2)
    {
      CGRectGetMaxX(*&v28);
      v38.origin.x = v12;
      v38.origin.y = v14;
      v38.size.width = v16;
      v38.size.height = v18;
      CGRectGetMaxX(v38);
    }

    else
    {
      CGRectGetMinX(*&v28);
      v39.origin.x = v12;
      v39.origin.y = v14;
      v39.size.width = v16;
      v39.size.height = v18;
      CGRectGetMinX(v39);
    }
  }
}

void sub_1000362B4()
{
  v1 = isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition;
  sub_100036044(*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition), *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition + 8), *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition + 16));
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  [v8 setBounds:{0.0, 0.0}];
  [v8 setCenter:{v3, v5}];
  v9 = [isEscapingClosureAtFileLocation traitCollection];
  v10 = [v9 horizontalSizeClass];

  if ((*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeForceHidden) & 1) != 0 || v10 != 2 || *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_metrics + 16) > v7)
  {
    if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHidden))
    {
      return;
    }

    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHidden) = 1;
    if (*(v1 + 16) == 1)
    {
      if (*v1 == 0)
      {
        v11 = 30.0;
      }

      else
      {
        v11 = -30.0;
      }

      if (*v1 == 0)
      {
        v12 = -90.0;
      }

      else
      {
        v12 = 0.0;
      }

      goto LABEL_17;
    }

LABEL_16:
    v11 = 0.0;
    v12 = -42.0;
LABEL_17:
    v20 = swift_allocObject();
    *(v20 + 16) = isEscapingClosureAtFileLocation;
    *(v20 + 24) = v12;
    *(v20 + 32) = v11;
    v21 = objc_allocWithZone(CASpringAnimation);
    v22 = isEscapingClosureAtFileLocation;
    v23 = [v21 init];
    [v23 setStiffness:62.0];
    [v23 setDamping:10.0];
    [v23 setInitialVelocity:0.0];
    [v23 settlingDuration];
    v25 = v24;
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10003A2D4;
    *(v27 + 24) = v20;
    v35 = sub_10003A4DC;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1000834C4;
    v34 = &unk_1001F0468;
    v28 = j___Block_copy(&v31);

    v29 = swift_allocObject();
    *(v29 + 16) = nullsub_1;
    *(v29 + 24) = 0;
    v35 = sub_10003A540;
    v36 = v29;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10006CA8C;
    v34 = &unk_1001F04B8;
    v30 = j___Block_copy(&v31);

    [v26 _animateUsingSpringWithDuration:4 delay:v28 options:v30 mass:v25 stiffness:0.0 damping:1.0 initialVelocity:62.0 animations:10.0 completion:0.0];
    j___Block_release(v30);
    j___Block_release(v28);

    return;
  }

  v13 = OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHidden;
  if ((*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHidden) & 1) == 0)
  {
    return;
  }

  v14 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHasEverBeenShown);
  *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeHasEverBeenShown) = 1;
  *(isEscapingClosureAtFileLocation + v13) = 0;
  if (v14 == 1)
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = isEscapingClosureAtFileLocation;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10003A2E0;
    *(v17 + 24) = v16;
    v35 = sub_10003A4E0;
    v36 = v17;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10003711C;
    v34 = &unk_1001F0530;
    v18 = j___Block_copy(&v31);
    v19 = isEscapingClosureAtFileLocation;

    [v15 performWithoutAnimation:v18];
    j___Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_1000367D0();
}

void sub_1000367D0()
{
  if (v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition + 16] == 1)
  {
    if (*&v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition] == 0)
    {
      v1 = 30.0;
    }

    else
    {
      v1 = -30.0;
    }

    if (*&v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition] == 0)
    {
      v2 = -90.0;
    }

    else
    {
      v2 = 0.0;
    }

    v3 = 1.0;
    v4 = 0xBFB999999999999ALL;
  }

  else
  {
    v4 = 0;
    v2 = -42.0;
    v3 = 1.1;
    v1 = 0.0;
  }

  v5 = *(*&v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] + OBJC_IVAR____TtC7Preview9LoupeView_loupeVerticalOffset);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v5;
  *(v7 + 64) = 0xC049000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10003A18C;
  *(v8 + 24) = v7;
  v45 = sub_100016BD8;
  v46 = v8;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10003711C;
  v44 = &unk_1001F0198;
  v9 = j___Block_copy(&v41);
  v10 = v0;

  [v6 performWithoutAnimation:v9];
  j___Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v3;
    v12 = objc_allocWithZone(CASpringAnimation);
    v13 = v10;
    v14 = [v12 init];
    [v14 setStiffness:240.0];
    [v14 setDamping:30.0];
    [v14 setInitialVelocity:0.0];
    [v14 settlingDuration];
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10003A1E8;
    *(v17 + 24) = v11;
    v45 = sub_10003A4DC;
    v46 = v17;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000834C4;
    v44 = &unk_1001F0210;
    v18 = j___Block_copy(&v41);

    v19 = swift_allocObject();
    *(v19 + 16) = nullsub_1;
    *(v19 + 24) = 0;
    v45 = sub_10003A540;
    v46 = v19;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_10006CA8C;
    v44 = &unk_1001F0260;
    v20 = j___Block_copy(&v41);

    [v6 _animateUsingSpringWithDuration:4 delay:v18 options:v20 mass:v16 stiffness:0.0 damping:1.0 initialVelocity:240.0 animations:30.0 completion:0.0];
    j___Block_release(v20);
    j___Block_release(v18);

    v21 = swift_allocObject();
    *(v21 + 16) = v13;
    *(v21 + 24) = v2;
    v22 = objc_allocWithZone(CASpringAnimation);
    v23 = v13;
    v24 = [v22 init];
    [v24 setStiffness:27.0];
    [v24 setDamping:7.0];
    [v24 setInitialVelocity:0.0];
    [v24 settlingDuration];
    v26 = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10003A248;
    *(v27 + 24) = v21;
    v45 = sub_10003A4DC;
    v46 = v27;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000834C4;
    v44 = &unk_1001F02D8;
    v28 = j___Block_copy(&v41);

    v29 = swift_allocObject();
    *(v29 + 16) = nullsub_1;
    *(v29 + 24) = 0;
    v45 = sub_10003A540;
    v46 = v29;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_10006CA8C;
    v44 = &unk_1001F0328;
    v30 = j___Block_copy(&v41);

    [v6 _animateUsingSpringWithDuration:4 delay:v28 options:v30 mass:v26 stiffness:0.0 damping:1.0 initialVelocity:27.0 animations:7.0 completion:0.0];
    j___Block_release(v30);
    j___Block_release(v28);

    v31 = swift_allocObject();
    *(v31 + 16) = v23;
    *(v31 + 24) = v5;
    v32 = objc_allocWithZone(CASpringAnimation);
    v33 = v23;
    v34 = [v32 init];
    [v34 setStiffness:93.0];
    [v34 setDamping:13.0];
    [v34 setInitialVelocity:0.0];
    [v34 settlingDuration];
    v36 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_10003A254;
    *(v37 + 24) = v31;
    v45 = sub_10003A4DC;
    v46 = v37;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1000834C4;
    v44 = &unk_1001F03A0;
    v38 = j___Block_copy(&v41);

    v39 = swift_allocObject();
    *(v39 + 16) = nullsub_1;
    *(v39 + 24) = 0;
    v45 = sub_10003A540;
    v46 = v39;
    v41 = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_10006CA8C;
    v44 = &unk_1001F03F0;
    v40 = j___Block_copy(&v41);

    [v6 _animateUsingSpringWithDuration:4 delay:v38 options:v40 mass:v36 stiffness:0.2 damping:1.0 initialVelocity:93.0 animations:13.0 completion:0.0];
    j___Block_release(v40);
    j___Block_release(v38);
  }
}

uint64_t sub_100036FE4(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  [v14 setAlpha:0.0];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    *&v14[OBJC_IVAR____TtC7Preview9LoupeView_loupeScale] = a2 + a3;
    sub_10009F518();
    *&v14[OBJC_IVAR____TtC7Preview9LoupeView_loupeRotation] = a4 + a5;
    sub_10009F518();
    *&v14[OBJC_IVAR____TtC7Preview9LoupeView_loupeVerticalOffset] = a6 + a7;
    sub_10009F518();
  }
}

void sub_100037144(char *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*&a1[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] setAlpha:0.0];
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(CASpringAnimation);
  v4 = a1;
  v5 = [v3 init];
  [v5 setStiffness:240.0];
  [v5 setDamping:30.0];
  [v5 setInitialVelocity:0.0];
  [v5 settlingDuration];
  v7 = v6;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10003A2E8;
  *(v9 + 24) = v2;
  v17 = sub_10003A4DC;
  v18 = v9;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000834C4;
  v16 = &unk_1001F05A8;
  v10 = j___Block_copy(&v13);

  v11 = swift_allocObject();
  *(v11 + 16) = nullsub_1;
  *(v11 + 24) = 0;
  v17 = sub_10003A540;
  v18 = v11;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10006CA8C;
  v16 = &unk_1001F05F8;
  v12 = j___Block_copy(&v13);

  [v8 _animateUsingSpringWithDuration:4 delay:v10 options:v12 mass:v7 stiffness:0.0 damping:1.0 initialVelocity:240.0 animations:30.0 completion:0.0];
  j___Block_release(v12);
  j___Block_release(v10);
}

void sub_10003742C(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  [v5 setAlpha:0.0];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    *&v5[OBJC_IVAR____TtC7Preview9LoupeView_loupeRotation] = a2 - a3;
    sub_10009F518();
  }
}

id sub_100037498()
{
  type metadata accessor for LoupeHostingOverlayView();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    result = [v0 superview];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v2 = sub_100037498();
  }

  return v2;
}

Swift::Int sub_100037518()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003758C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1000375D0()
{
  v1 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v0 action:"handlePan:"];
  [v1 setDelegate:v0];
  [v1 setEnabled:1];
  v2 = *&v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePanGesture];
  *&v0[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePanGesture] = v1;
  v3 = v1;

  [v0 addGestureRecognizer:v3];
  [v0 setUserInteractionEnabled:1];
}

uint64_t sub_100037A58(void *a1)
{
  result = [v1 isUserInteractionEnabled];
  if (result)
  {
    v4 = [a1 view];
    [a1 locationInView:v4];
    v6 = v5;
    v8 = v7;

    if (v1[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase] - 1 >= 2)
    {
      if (v1[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase])
      {
        return 0;
      }

      else
      {
        result = [v1 isUserInteractionEnabled];
        if (result)
        {
          [*&v1[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] frame];
          v9.x = v6;
          v9.y = v8;
          return CGRectContainsPoint(v10, v9);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

id sub_100037D28(void *a1)
{
  result = [v1 isUserInteractionEnabled];
  if (result)
  {
    v4 = [a1 state] - 1;
    v5 = [a1 view];
    [a1 translationInView:v5];
    v7 = v6;
    v9 = v8;

    if (v4 > 1)
    {
      v10 = [a1 view];
      [a1 velocityInView:v10];
      v12 = v11;
      v14 = v13;

      return sub_100039008(v12, v14);
    }

    else
    {

      return sub_100037F40(2u, v7, v9);
    }
  }

  return result;
}

uint64_t sub_100037F40(unsigned __int8 a1, float64_t a2, float64_t a3)
{
  v4 = v3;
  v5.f64[0] = a2;
  v6 = a1;
  v7 = OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase;
  v4[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase] = a1;
  if (a1 == 1)
  {
    v38 = a3;
    [*&v4[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] center];
    v8 = &v4[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionStartOffset];
    *v8 = v9;
    v8[1] = v10;
    v5.f64[0] = a2;
    a3 = v38;
  }

  v11 = &v4[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition];
  v5.f64[1] = a3;
  *v11 = vaddq_f64(*&v4[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionStartOffset], v5);
  LOBYTE(v11[1].f64[0]) = 0;
  if (v6 == 1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    v14 = objc_allocWithZone(CASpringAnimation);
    v15 = v4;
    v16 = [v14 init];
    [v16 setStiffness:240.0];
    [v16 setDamping:20.0];
    [v16 setInitialVelocity:0.0];
    [v16 settlingDuration];
    v18 = v17;
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100038B78;
    *(v20 + 24) = v12;
    v43 = sub_100038FC0;
    v44 = v20;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1000834C4;
    v42 = &unk_1001EFD60;
    v21 = j___Block_copy(&aBlock);

    v22 = swift_allocObject();
    *(v22 + 16) = sub_100038B80;
    *(v22 + 24) = v13;
    v43 = sub_100038FE0;
    v44 = v22;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_10006CA8C;
    v42 = &unk_1001EFDB0;
    v23 = j___Block_copy(&aBlock);

    [v19 _animateUsingSpringWithDuration:4 delay:v21 options:v23 mass:v18 stiffness:0.0 damping:1.0 initialVelocity:240.0 animations:20.0 completion:0.0];
    j___Block_release(v23);
    j___Block_release(v21);
  }

  else
  {
    sub_1000362B4();
    if (v4[v7])
    {
      v24 = sub_100037498();
      if (v24)
      {
        v25 = v24;
        v26 = *&v4[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
        v27 = [v26 superview];
        if (v27 && (v28 = v27, sub_1000085D8(0, &qword_100207FE0), v29 = v25, v30 = static NSObject.== infix(_:_:)(), v28, v29, (v30 & 1) != 0))
        {
        }

        else
        {
          [v25 addSubview:v26];
        }
      }
    }

    else
    {
      v31 = *&v4[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
      v32 = [v31 superview];
      if (!v32 || (v33 = v32, sub_1000085D8(0, &qword_100207FE0), v34 = v4, v35 = static NSObject.== infix(_:_:)(), v33, v34, (v35 & 1) == 0))
      {
        [v4 addSubview:v31];
      }
    }
  }

  return 1;
}

void sub_100038390(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  v3 = a1 + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition;
  v4 = 1.1;
  if (*(a1 + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition + 16))
  {
    v4 = 1.0;
  }

  *(v2 + OBJC_IVAR____TtC7Preview9LoupeView_loupeScale) = v4;
  sub_10009F518();
  if (*(v3 + 16) == 1)
  {
    v5 = -90.0;
    if (*v3 != 0)
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = -42.0;
  }

  *(v2 + OBJC_IVAR____TtC7Preview9LoupeView_loupeRotation) = v5;
  sub_10009F518();
  *(v2 + OBJC_IVAR____TtC7Preview9LoupeView_loupeVerticalOffset) = -(*(a1 + OBJC_IVAR____TtC7Preview18LoupeContainerView_metrics + 32) + 40.0);
  sub_10009F518();
}

void sub_10003847C(uint64_t a1, char *a2)
{
  if (a2[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase])
  {
    v14 = sub_100037498();
    if (v14)
    {
      v3 = *&a2[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
      v4 = [v3 superview];
      if (v4 && (v5 = v4, sub_1000085D8(0, &qword_100207FE0), v13 = v14, v6 = static NSObject.== infix(_:_:)(), v5, v13, (v6 & 1) != 0))
      {
        v7 = v13;
      }

      else
      {
        [v14 addSubview:{v3, v13}];
        v7 = v14;
      }
    }
  }

  else
  {
    v8 = *&a2[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
    v9 = [v8 superview];
    if (!v9 || (v10 = v9, sub_1000085D8(0, &qword_100207FE0), v11 = a2, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12 & 1) == 0))
    {

      [a2 addSubview:v8];
    }
  }
}

void sub_100038634(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  v8 = 1.1;
  if (a4)
  {
    v8 = 1.0;
  }

  *(v7 + OBJC_IVAR____TtC7Preview9LoupeView_loupeScale) = v8;
  sub_10009F518();
  v9 = -42.0;
  v10 = -90.0;
  if (a2 | a3)
  {
    v10 = 0.0;
  }

  if (a4)
  {
    v9 = v10;
  }

  *(v7 + OBJC_IVAR____TtC7Preview9LoupeView_loupeRotation) = v9;
  sub_10009F518();
}

uint64_t sub_1000386D8(_BYTE *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase] = 0;
  v2 = *&a1[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
  v3 = [v2 superview];
  if (!v3 || (v4 = v3, sub_1000085D8(0, &qword_100207FE0), v5 = a1, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) == 0))
  {
    [a1 addSubview:v2];
  }
}

void sub_100038890()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePanGesture);
}

id sub_1000388E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for LoupeContainerView.InteractionPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LoupeContainerView.InteractionPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100038AEC()
{
  result = qword_100207FD8;
  if (!qword_100207FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207FD8);
  }

  return result;
}

uint64_t sub_100038B40()
{

  return swift_deallocObject();
}

uint64_t sub_100038B88(void (*a1)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_100038C38(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  v7[2] = a2;
  v7[3] = a3;
  v8 = a1;
  return sub_10005DA00(sub_100038FE8, v7);
}

uint64_t sub_100038CBC(void (*a1)(void), uint64_t a2, char a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(a3 & 1);
}

double sub_100038D78(double a1)
{
  [v1 initialVelocity];
  v4 = 0.0;
  if (a1 != 0.0)
  {
    v5 = v3;
    *&v6 = COERCE_DOUBLE(sub_100038F10());
    if ((v7 & 1) == 0)
    {
      v8 = *&v6;
      [v1 mass];
      if (v9 > 0.0)
      {
        [v1 stiffness];
        v11 = v10;
        [v1 mass];
        v13 = v12;
        [v1 mass];
        if (v14 > 0.0)
        {
          [v1 stiffness];
          v16 = v15;
          [v1 mass];
          v18 = v17;
          v19 = COERCE_DOUBLE(sub_100038F10());
          if ((v20 & 1) == 0)
          {
            if (v8 >= 1.0)
            {
              [v1 settlingDuration];
              v4 = v23;
            }

            else
            {
              v21 = fabs(a1);
              v22 = sqrt(v16 / v18) * sqrt(1.0 - v19 * v19);
              v4 = atan2(-v21, (fabs(v5) + v21 * (sqrt(v11 / v13) * v8)) / v22) / v22;
              if (v4 < 0.0)
              {
                v4 = 3.14159265 / v22 + v4;
              }
            }

            if ((~*&v4 & 0x7FF0000000000000) == 0 && (*&v4 & 0xFFFFFFFFFFFFFLL) != 0)
            {
              return 0.0;
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_100038F10()
{
  [v0 stiffness];
  if (v1 <= 0.0 || ([v0 mass], v2 <= 0.0))
  {
    *&result = 0.0;
  }

  else
  {
    [v0 damping];
    v4 = v3;
    [v0 stiffness];
    v6 = v5;
    [v0 mass];
    v8 = sqrt(v6 * v7);
    *&result = v4 / (v8 + v8);
  }

  return result;
}

uint64_t sub_100038FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100039008(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v6 - 8);
  v118 = v6;
  __chkstk_darwin(v6);
  v116 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v114 = *(v8 - 8);
  v115 = v8;
  __chkstk_darwin(v8);
  v113 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchTime();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v103 - v12;
  v13 = sub_100005804(&qword_100207FE8);
  *&v14 = __chkstk_darwin(v13 - 8).n128_u64[0];
  v16 = (&v103 - v15);
  v17 = [v2 effectiveUserInterfaceLayoutDirection];
  [v3 bounds];
  v107 = a1;
  v22 = a1 * 499.0 / 1000.0;
  v23 = &v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition];
  if (v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupePosition + 16])
  {
    [*&v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] center];
    v25 = v24;
    v27 = *v23;
    v26 = *(v23 + 1);
    v28 = v23[16];
    v30 = v22 + v29;
  }

  else
  {
    v25 = *(v23 + 1);
    v30 = v22 + *v23;
    v26 = 0;
    v27 = (v17 != 1) ^ (v30 < CGRectGetMidX(*&v18));
    v28 = 1;
  }

  v3[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase] = 3;
  *v23 = v27;
  *(v23 + 1) = v26;
  v23[16] = v28;
  v31 = [objc_opt_self() standardUserDefaults];
  v32 = sub_100039EA0();
  sub_10018A080(0x506570756F4C5650, 0xEF6E6F697469736FLL, v16);
  aBlock = v27;
  v121 = v26;
  LOWORD(v122) = v28;
  sub_10018A008(&aBlock, v16, &_s13LoupePositionON, v32);

  sub_100036044(v27, v26, v28);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v105 = v39;
  v108 = v35 - (a2 * 499.0 / 1000.0 + v25);
  if (hypot(v108, v33 - v30) <= 100.0)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 0.4;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v3;
  *(v41 + 24) = v27;
  *(v41 + 32) = v26;
  *(v41 + 40) = v28;
  v42 = objc_allocWithZone(CASpringAnimation);
  v43 = v3;
  v44 = [v42 init];
  v106 = 62.0;
  [v44 setStiffness:62.0];
  [v44 setDamping:10.0];
  [v44 setInitialVelocity:0.0];
  [v44 settlingDuration];
  v46 = v45;
  v47 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_100039F2C;
  *(v48 + 24) = v41;
  v124 = sub_10003A4DC;
  v125 = v48;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_1000834C4;
  v123 = &unk_1001EFE28;
  v49 = j___Block_copy(&aBlock);

  v50 = swift_allocObject();
  *(v50 + 16) = nullsub_1;
  *(v50 + 24) = 0;
  v124 = sub_10003A540;
  v125 = v50;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10006CA8C;
  v123 = &unk_1001EFE78;
  v51 = j___Block_copy(&aBlock);

  [v47 _animateUsingSpringWithDuration:4 delay:v49 options:v51 mass:v46 stiffness:v40 damping:1.0 initialVelocity:62.0 animations:10.0 completion:0.0];
  j___Block_release(v51);
  j___Block_release(v49);

  v52 = *&v43[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView];
  [v52 center];
  v54 = v34 - v53;
  [v52 center];
  v56 = v107 / v54;
  v104 = a2 / (v36 - v55);
  v57 = swift_allocObject();
  *(v57 + 16) = v43;
  *(v57 + 24) = v34;
  *(v57 + 32) = v36;
  v58 = v38;
  v59 = v105;
  *(v57 + 40) = v38;
  *(v57 + 48) = v59;
  v60 = objc_allocWithZone(CASpringAnimation);
  v61 = v43;
  v62 = [v60 init];
  [v62 setStiffness:93.0];
  [v62 setDamping:15.0];
  [v62 setInitialVelocity:v56];
  [v62 settlingDuration];
  v64 = v63;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_100039F74;
  *(v65 + 24) = v57;
  v124 = sub_10003A4DC;
  v125 = v65;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_1000834C4;
  v123 = &unk_1001EFEF0;
  v66 = j___Block_copy(&aBlock);

  v67 = swift_allocObject();
  v103 = nullsub_1;
  *(v67 + 16) = nullsub_1;
  *(v67 + 24) = 0;
  v124 = sub_10003A540;
  v125 = v67;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10006CA8C;
  v123 = &unk_1001EFF40;
  v68 = j___Block_copy(&aBlock);

  [v47 _animateUsingSpringWithDuration:4 delay:v66 options:v68 mass:v64 stiffness:0.0 damping:1.0 initialVelocity:93.0 animations:15.0 completion:v56];
  j___Block_release(v68);
  j___Block_release(v66);

  v69 = swift_allocObject();
  *(v69 + 16) = v61;
  *(v69 + 24) = v34;
  *(v69 + 32) = v36;
  *(v69 + 40) = v58;
  *(v69 + 48) = v59;
  v70 = objc_allocWithZone(CASpringAnimation);
  v71 = v61;
  v72 = COERCE_DOUBLE([v70 init]);
  [*&v72 setStiffness:93.0];
  [*&v72 setDamping:15.0];
  v73 = v104;
  [*&v72 setInitialVelocity:v104];
  v107 = v72;
  [*&v72 settlingDuration];
  v75 = v74;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_100039FF8;
  *(v76 + 24) = v69;
  v124 = sub_10003A4DC;
  v125 = v76;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_1000834C4;
  v123 = &unk_1001EFFB8;
  v77 = j___Block_copy(&aBlock);

  v78 = swift_allocObject();
  *(v78 + 16) = nullsub_1;
  *(v78 + 24) = 0;
  v124 = sub_10003A540;
  v125 = v78;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10006CA8C;
  v123 = &unk_1001F0008;
  v79 = j___Block_copy(&aBlock);

  [v47 _animateUsingSpringWithDuration:4 delay:v77 options:v79 mass:v75 stiffness:0.0 damping:1.0 initialVelocity:93.0 animations:15.0 completion:v73];
  j___Block_release(v79);
  j___Block_release(v77);

  v80 = (sub_100038D78(v108) + 0.0) * 0.8;
  v81 = swift_allocObject();
  *(v81 + 16) = v71;
  v82 = objc_allocWithZone(CASpringAnimation);
  v83 = v71;
  v84 = [v82 init];
  v85 = v106;
  [v84 setStiffness:v106];
  [v84 setDamping:10.0];
  [v84 setInitialVelocity:0.0];
  [v84 settlingDuration];
  v87 = v86;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_10003A07C;
  *(v88 + 24) = v81;
  v124 = sub_10003A4DC;
  v125 = v88;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_1000834C4;
  v123 = &unk_1001F0080;
  v89 = j___Block_copy(&aBlock);

  v90 = swift_allocObject();
  *(v90 + 16) = v103;
  *(v90 + 24) = 0;
  v124 = sub_10003A540;
  v125 = v90;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10006CA8C;
  v123 = &unk_1001F00D0;
  v91 = j___Block_copy(&aBlock);

  [v47 _animateUsingSpringWithDuration:4 delay:v89 options:v91 mass:v87 stiffness:v80 damping:1.0 initialVelocity:v85 animations:10.0 completion:0.0];
  j___Block_release(v91);
  j___Block_release(v89);

  sub_1000085D8(0, &qword_100206DB0);
  v92 = static OS_dispatch_queue.main.getter();
  v93 = v109;
  static DispatchTime.now()();
  v94 = v110;
  + infix(_:_:)();
  v111 = *(v111 + 8);
  v95 = v112;
  (v111)(v93, v112);
  v96 = swift_allocObject();
  *(v96 + 16) = v83;
  v124 = sub_10003A0F4;
  v125 = v96;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_1000834C4;
  v123 = &unk_1001F0120;
  v97 = j___Block_copy(&aBlock);
  v98 = v83;
  v99 = v113;
  static DispatchQoS.unspecified.getter();
  v119 = &_swiftEmptyArrayStorage;
  sub_10003A0FC();
  sub_100005804(&unk_100206DC0);
  sub_100012F08();
  v100 = v116;
  v101 = v118;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  j___Block_release(v97);

  (*(v117 + 8))(v100, v101);
  (*(v114 + 8))(v99, v115);
  (v111)(v94, v95);
}

unint64_t sub_100039EA0()
{
  result = qword_100207FF0;
  if (!qword_100207FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207FF0);
  }

  return result;
}

uint64_t sub_100039EF4()
{

  return swift_deallocObject();
}

uint64_t sub_100039F3C()
{

  return swift_deallocObject();
}

id sub_100039F74()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  [v2 setBounds:{0.0, 0.0, *(v0 + 40), *(v0 + 48)}];
  [v2 center];

  return [v2 setCenter:v1];
}

id sub_100039FF8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  [v1 setBounds:{0.0, 0.0, *(v0 + 40), *(v0 + 48)}];
  [v1 center];

  return [v1 setCenter:?];
}

uint64_t sub_10003A0BC()
{

  return swift_deallocObject();
}

unint64_t sub_10003A0FC()
{
  result = qword_100208000;
  if (!qword_100208000)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208000);
  }

  return result;
}

uint64_t sub_10003A154()
{

  return swift_deallocObject();
}

uint64_t sub_10003A1B0()
{

  return swift_deallocObject();
}

void sub_10003A1E8()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView);
  [v2 setAlpha:1.0];
  *&v2[OBJC_IVAR____TtC7Preview9LoupeView_loupeScale] = v1;
  sub_10009F518();
}

uint64_t sub_10003A29C()
{

  return swift_deallocObject();
}

_BYTE *sub_10003A308(CGFloat a1, CGFloat a2)
{
  if (v2[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase] - 1 >= 2)
  {
    if (v2[OBJC_IVAR____TtC7Preview18LoupeContainerView_interactionPhase])
    {
      return 0;
    }

    if (![v2 isUserInteractionEnabled])
    {
      return 0;
    }

    [*&v2[OBJC_IVAR____TtC7Preview18LoupeContainerView_loupeView] frame];
    v7.x = a1;
    v7.y = a2;
    if (!CGRectContainsPoint(v8, v7))
    {
      return 0;
    }
  }

  v3 = v2;
  return v2;
}

unint64_t sub_10003A39C()
{
  result = qword_100208028;
  if (!qword_100208028)
  {
    sub_1000085D8(255, &qword_100208020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208028);
  }

  return result;
}

uint64_t sub_10003A558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_100208030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100005804(&qword_100208038);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003A674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100005804(&qword_100208030);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100005804(&qword_100208038);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for ExportSheetView()
{
  result = qword_100208098;
  if (!qword_100208098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003A7D4()
{
  sub_10003A8B8(319, &qword_1002080A8, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10003A8B8(319, &qword_1002080B0, type metadata accessor for ExportSheetViewModel, &type metadata accessor for Bindable);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003A8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003A938@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = j___s7SwiftUI17EnvironmentValuesVMa();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100208138);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100006600(v2, &v14 - v9, &qword_100208138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
    os_log(_:dso:log:_:_:)();

    j___s7SwiftUI17EnvironmentValuesVACycfC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10003AB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v91 = a2;
  v2 = type metadata accessor for ExportSheetView();
  v87 = *(v2 - 8);
  __chkstk_darwin(v2);
  v88 = v3;
  v89 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005804(&qword_100208128);
  __chkstk_darwin(v4 - 8);
  v90 = &v62 - v5;
  v6 = sub_100005804(&qword_100208038);
  v86 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = &v62 - v7;
  v81 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v75 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v66 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for LocalizedStringResource();
  v68 = *(v92 - 8);
  __chkstk_darwin(v92);
  v67 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  v19 = type metadata accessor for ExportSettingsView();
  __chkstk_darwin(v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100005804(&qword_100208108);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v23 = &v62 - v22;
  v76 = sub_100005804(&qword_100208100);
  v70 = *(v76 - 8);
  __chkstk_darwin(v76);
  v65 = &v62 - v24;
  v79 = sub_100005804(&qword_1002080F0);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = &v62 - v25;
  v26 = sub_100005804(&qword_1002080E8);
  v83 = *(v26 - 8);
  v84 = v26;
  __chkstk_darwin(v26);
  v94 = &v62 - v27;
  type metadata accessor for MainActor();
  v82 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v64 = *(v2 + 20);
  Bindable.wrappedValue.getter();
  type metadata accessor for ExportSheetViewModel(0);
  sub_10003CD08(&qword_100208130, type metadata accessor for ExportSheetViewModel);
  Bindable<A>.init(wrappedValue:)();
  v21[*(v19 + 20)] = 0;
  v28 = &v21[*(v19 + 24)];
  v29 = sub_10003CD08(&qword_100208110, type metadata accessor for ExportSettingsView);
  *v28 = 0;
  *(v28 + 1) = 0;
  v63 = v23;
  View.navigationBarBackButtonHidden(_:)();
  sub_10003CD50(v21);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v11 + 104))(v71, enum case for LocalizedStringResource.BundleDescription.main(_:), v73);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v30 = v68;
  (*(v68 + 16))(v67, v18, v92);
  v31 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v33 = v32;
  v75 = v6;
  v35 = v34;
  v95 = v19;
  v96 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v65;
  v38 = v72;
  v39 = v63;
  View.navigationTitle(_:)();
  sub_100028DF8(v31, v33, v35 & 1);

  (*(v30 + 8))(v18, v92);
  (*(v69 + 8))(v39, v38);
  v40 = v80;
  v41 = v78;
  v42 = v81;
  (*(v80 + 104))(v78, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v81);
  v95 = v38;
  v96 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v74;
  v45 = v76;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v40 + 8))(v41, v42);
  v46 = (*(v70 + 8))(v37, v45);
  __chkstk_darwin(v46);
  v47 = v93;
  v92 = sub_100005804(&qword_1002080F8);
  v95 = v45;
  v96 = v43;
  v81 = swift_getOpaqueTypeConformance2();
  v48 = sub_100007888(&qword_100208118, &qword_1002080F8);
  v49 = v79;
  View.toolbar<A>(content:)();
  (*(v77 + 8))(v44, v49);
  v50 = v85;
  v51 = v75;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v86 + 8))(v50, v51);
  v85 = v99;
  LODWORD(v86) = v100;
  v52 = Bindable.wrappedValue.getter();
  v53 = v90;
  nullsub_3(v52);

  v54 = type metadata accessor for FileExportPlaceholder();
  (*(v54[-1].Description + 7))(v53, 0, 1, v54);
  Bindable.wrappedValue.getter();
  sub_100106B3C();

  v55 = v47;
  v56 = v89;
  sub_10003CE0C(v55, v89);
  v57 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v58 = swift_allocObject();
  sub_10003CE74(v56, v58 + v57);
  v95 = v49;
  v96 = v92;
  v97 = v81;
  v98 = v48;
  swift_getOpaqueTypeConformance2();
  sub_10003CD08(&qword_100208120, type metadata accessor for FileExportPlaceholder);
  v59 = v84;
  v60 = v94;
  View.fileExporter<A>(isPresented:item:contentTypes:defaultFilename:onCompletion:onCancellation:)();

  sub_100007710(v53, &qword_100208128);
  (*(v83 + 8))(v60, v59);
}

uint64_t sub_10003B8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = type metadata accessor for ExportSheetView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  type metadata accessor for MainActor();
  v12[0] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_100208038);
  Bindable.wrappedValue.getter();
  v6 = sub_100106798();

  sub_10003CE0C(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_10003CE74(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  Bindable.wrappedValue.getter();
  v9 = sub_100106798();

  sub_10003CE0C(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_10003CE74(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7);
  LOBYTE(v13) = (v6 & 1) == 0;
  v14 = sub_10003D348;
  v15 = v8;
  v16 = 1;
  v17 = v9 & 1;
  v18 = sub_10003D4BC;
  v19 = v10;
  sub_100005804(&qword_100208150);
  TupleToolbarContent.init(_:)();
}

uint64_t sub_10003BB30(uint64_t a1)
{
  v15 = j___s7SwiftUI17EnvironmentValuesVMa();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_100208138);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006600(a1, v7, &qword_100208138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
    os_log(_:dso:log:_:_:)();

    j___s7SwiftUI17EnvironmentValuesVACycfC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10003BDAC()
{
  type metadata accessor for ExportSheetView();
  sub_100005804(&qword_100208038);
  Bindable.wrappedValue.getter();
  sub_100105118(1);
}

uint64_t sub_10003BE14(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  v2 = sub_100005804(&qword_100208140);
  v20 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for ExportSheetView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_10003CE0C(v18, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006600(v19, v4, &qword_100208140);
  v12 = static MainActor.shared.getter();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = (v7 + *(v20 + 80) + v13) & ~*(v20 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_10003CE74(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  sub_10003D17C(v4, v15 + v14);
  sub_10005DB88(0, 0, v10, &unk_10019BC08, v15);
}

uint64_t sub_10003C104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for Logger();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for DismissAction();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = sub_100005804(&qword_100208140);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v10;
  v5[19] = v9;

  return _swift_task_switch(sub_10003C2EC, v10, v9);
}

uint64_t sub_10003C2EC()
{
  v1 = v0[13];
  v2 = v0[5];
  type metadata accessor for ExportSheetView();
  sub_100005804(&qword_100208038);
  Bindable.wrappedValue.getter();
  v0[20] = v0[2];
  sub_100006600(v2, v1, &qword_100208140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[13];

    v0[3] = *v3;
    sub_100005804(&qword_100208148);
    swift_willThrowTypedImpl();
    sub_1001450D4(v0[8]);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();

    if (j__os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      j___os_log_impl(&dword_100000000, v4, v5, "Export failure: %@", v6, 0xCu);
      sub_100007710(v7, &unk_1002093E0);
    }

    else
    {
    }

    (*(v0[7] + 8))(v0[8], v0[6]);
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];
    sub_10003A938(v12);
    DismissAction.callAsFunction()();
    (*(v13 + 8))(v12, v14);

    v15 = v0[1];

    return v15();
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_10003C610;
    v10 = v0[16];

    return sub_100109BBC(v10);
  }
}

uint64_t sub_10003C610()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 152);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_10003C8A0;
  }

  else
  {
    v8 = sub_10003C7CC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10003C7CC()
{

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_10003A938(v1);
  DismissAction.callAsFunction()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003C8A0()
{

  sub_1001450D4(v0[8]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (j__os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    j___os_log_impl(&dword_100000000, v1, v2, "Export failure: %@", v3, 0xCu);
    sub_100007710(v4, &unk_1002093E0);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  sub_10003A938(v6);
  DismissAction.callAsFunction()();
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003CA88()
{
  sub_100005804(&qword_1002080E0);
  sub_1000059D4(&qword_1002080E8);
  type metadata accessor for FileExportPlaceholder();
  sub_1000059D4(&qword_1002080F0);
  sub_1000059D4(&qword_1002080F8);
  sub_1000059D4(&qword_100208100);
  sub_1000059D4(&qword_100208108);
  type metadata accessor for ExportSettingsView();
  sub_10003CD08(&qword_100208110, type metadata accessor for ExportSettingsView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100007888(&qword_100208118, &qword_1002080F8);
  swift_getOpaqueTypeConformance2();
  sub_10003CD08(&qword_100208120, type metadata accessor for FileExportPlaceholder);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10003CD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003CD50(uint64_t a1)
{
  v2 = type metadata accessor for ExportSettingsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003CDB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001065F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003CE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportSheetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportSheetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CED8(uint64_t a1)
{
  v3 = *(type metadata accessor for ExportSheetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003BE14(a1, v4);
}

uint64_t sub_10003CF48()
{
  v1 = type metadata accessor for ExportSheetView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = v2 + *(*(v1 - 8) + 64);
  v4 = *(sub_100005804(&qword_100208140) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + v2;
  sub_100005804(&qword_100208138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 20);
  v9 = sub_100005804(&qword_100208038);
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v0 + v5, v10);
  }

  return swift_deallocObject();
}