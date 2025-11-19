uint64_t sub_100097900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v5 = sub_100093B6C(&qword_10018DFE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_100093B6C(&qword_10018DFF0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = sub_100093B6C(&qword_10018DFF8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v16 = sub_100093B6C(&qword_10018E000);
  sub_100097BEC(a2, &v7[*(v16 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000988D4(v7, v11, &qword_10018DFE8);
  v17 = &v11[*(v9 + 44)];
  v18 = v46;
  *(v17 + 4) = v45;
  *(v17 + 5) = v18;
  *(v17 + 6) = v47;
  v19 = v42;
  *v17 = v41;
  *(v17 + 1) = v19;
  v20 = v44;
  *(v17 + 2) = v43;
  *(v17 + 3) = v20;
  LOBYTE(v7) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1000988D4(v11, v15, &qword_10018DFF0);
  v29 = &v15[*(v13 + 44)];
  *v29 = v7;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  LOBYTE(v13) = static Edge.Set.top.getter();
  GeometryProxy.size.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1000988D4(v15, a3, &qword_10018DFF8);
  result = sub_100093B6C(&qword_10018E008);
  v39 = a3 + *(result + 36);
  *v39 = v13;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_100097BEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v80 = a2;
  v75 = type metadata accessor for DismissButtonStyle();
  __chkstk_darwin(v75);
  v74 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_100093B6C(&qword_10018E010);
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v69 = &v67[-v4];
  v78 = sub_100093B6C(&qword_10018E018);
  v88 = *(v78 - 8);
  v5 = __chkstk_darwin(v78);
  v76 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v87 = &v67[-v7];
  v81 = a1;

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  static Font.largeTitle.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_100098988(v8, v10, v12 & 1);

  static Font.Weight.medium.getter();
  v18 = Text.fontWeight(_:)();
  v70 = v19;
  v71 = v18;
  v72 = v20;
  v73 = v21;
  sub_100098988(v13, v15, v17 & 1);

  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  LOBYTE(v13) = v25;
  static Font.headline.getter();
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;

  sub_100098988(v22, v24, v13 & 1);

  static Font.Weight.regular.getter();
  v31 = Text.fontWeight(_:)();
  v84 = v32;
  v85 = v31;
  LOBYTE(v22) = v33;
  v86 = v34;
  sub_100098988(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v83 = swift_getKeyPath();
  LOBYTE(v28) = v22 & 1;
  LOBYTE(v108) = v22 & 1;
  v68 = v22 & 1;
  LOBYTE(v90[0]) = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v106[55] = v111;
  *&v106[71] = v112;
  *&v106[87] = v113;
  *&v106[103] = v114;
  *&v106[7] = v108;
  *&v106[23] = v109;
  v107 = 1;
  *&v106[39] = v110;
  v35 = v81;
  sub_10009885C(v81, v90);
  v36 = swift_allocObject();
  sub_100098894(v90, v36 + 16);
  v89 = v35;
  sub_100093B6C(&qword_10018E020);
  sub_100099598();
  v37 = v69;
  Button.init(action:label:)();
  v38 = swift_getKeyPath();
  v39 = v74;
  *v74 = v38;
  sub_100093B6C(&qword_10018E030);
  swift_storeEnumTagMultiPayload();
  v40 = v75;
  v41 = v39 + *(v75 + 20);
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  v42 = *(v40 + 24);
  v43 = [objc_opt_self() _carSystemFocusColor];
  *(v39 + v42) = Color.init(uiColor:)();
  sub_100099D9C(&qword_10018E038, &qword_10018E010);
  sub_100099D54(&qword_10018E040, type metadata accessor for DismissButtonStyle);
  v44 = v87;
  v45 = v77;
  View.buttonStyle<A>(_:)();
  sub_1000998C4(v39, type metadata accessor for DismissButtonStyle);
  (*(v79 + 8))(v37, v45);
  v46 = *(v88 + 16);
  v47 = v76;
  v48 = v44;
  v49 = v78;
  v46(v76, v48, v78);
  v50 = v80;
  v51 = v70;
  v52 = v71;
  *v80 = v71;
  v50[1] = v51;
  LOBYTE(v42) = v72 & 1;
  *(v50 + 16) = v72 & 1;
  v50[3] = v73;
  *&v101 = v85;
  *(&v101 + 1) = v84;
  LOBYTE(v102) = v28;
  *(&v102 + 1) = v116[0];
  DWORD1(v102) = *(v116 + 3);
  *(&v102 + 1) = v86;
  *&v103 = KeyPath;
  BYTE8(v103) = 1;
  HIDWORD(v103) = *&v115[3];
  *(&v103 + 9) = *v115;
  v104 = v83;
  v105[0] = 0;
  LOBYTE(v105[1]) = 1;
  *(&v105[1] + 1) = 256;
  v53 = v101;
  v54 = v102;
  v55 = v103;
  v56 = v83;
  *(v50 + 95) = *(v105 + 7);
  *(v50 + 4) = v55;
  *(v50 + 5) = v56;
  *(v50 + 2) = v53;
  *(v50 + 3) = v54;
  v50[13] = 0;
  *(v50 + 112) = 1;
  v57 = *v106;
  v58 = *&v106[16];
  v59 = *&v106[32];
  *(v50 + 161) = *&v106[48];
  *(v50 + 145) = v59;
  *(v50 + 129) = v58;
  *(v50 + 113) = v57;
  v60 = v50;
  v61 = *&v106[64];
  v62 = *&v106[80];
  v63 = *&v106[96];
  v50[28] = *&v106[111];
  *(v50 + 209) = v63;
  *(v50 + 193) = v62;
  *(v50 + 177) = v61;
  v64 = sub_100093B6C(&qword_10018E048);
  v46(v60 + *(v64 + 80), v47, v49);
  sub_100099664(v52, v51, v42);

  sub_100099924(&v101, v90, &qword_10018E050);
  v65 = *(v88 + 8);
  v65(v87, v49);
  v65(v47, v49);
  v90[0] = v85;
  v90[1] = v84;
  v91 = v68;
  *v92 = v116[0];
  *&v92[3] = *(v116 + 3);
  v93 = v86;
  v94 = KeyPath;
  v95 = 1;
  *v96 = *v115;
  *&v96[3] = *&v115[3];
  v97 = v83;
  v98 = 0;
  v99 = 1;
  v100 = 256;
  sub_100099674(v90);
  sub_100098988(v52, v51, v42);
}

uint64_t sub_100098460(uint64_t a1)
{
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  v21 = 2036625250;
  v22 = 0xE400000000000000;
  v4 = sub_100006198(0x10uLL);
  if (v5)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("transform.scale.xy" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    v7._object = 0x8000000100116B40;
    v7._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v21;
  v9 = v22;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v19);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(a1 + 104);
    ObjectType = swift_getObjectType();
    v18 = [objc_allocWithZone(UIViewController) init];
    (*(v16 + 32))(v18, 7, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1000986F0@<D0>(uint64_t a1@<X8>)
{

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = *&v12;
  *(a1 + 64) = v12;
  return result;
}

uint64_t sub_1000987F0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  sub_10009885C(v1, v5);
  v3 = swift_allocObject();
  result = sub_100098894(v5, v3 + 16);
  *a1 = sub_1000988CC;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000988D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100093B6C(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DismissButtonStyle()
{
  result = qword_10018E0B8;
  if (!qword_10018E0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100098988(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100098998@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v94 = type metadata accessor for Color.RGBColorSpace();
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for EnvironmentValues();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ColorScheme();
  v96 = *(v87 - 8);
  v5 = __chkstk_darwin(v87);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v79 - v7;
  v9 = type metadata accessor for RoundedRectangle();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100093B6C(&qword_10018E118);
  __chkstk_darwin(v13 - 8);
  v88 = &v79 - v14;
  v89 = sub_100093B6C(&qword_10018E120);
  __chkstk_darwin(v89);
  v93 = &v79 - v15;
  v16 = sub_100093B6C(&qword_10018E128);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v79 - v18;
  ButtonStyleConfiguration.label.getter();
  v20 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v19[*(sub_100093B6C(&qword_10018E130) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = type metadata accessor for DismissButtonStyle();
  v24 = *(v2 + *(v23 + 24));
  v25 = swift_getKeyPath();
  v26 = &v19[*(sub_100093B6C(&qword_10018E138) + 36)];
  *v26 = v25;
  v26[1] = v24;

  LODWORD(v24) = static HierarchicalShapeStyle.quaternary.getter();
  LOBYTE(v25) = static Edge.Set.all.getter();
  v27 = &v19[*(sub_100093B6C(&qword_10018E140) + 36)];
  *v27 = v24;
  v27[4] = v25;
  v28 = *(v17 + 44);
  v92 = v19;
  v29 = &v19[v28];
  v30 = *(v10 + 28);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  v33 = *(*(v32 - 8) + 104);
  v33(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #8.0 }

  v83 = _Q0;
  *v29 = _Q0;
  *&v29[*(sub_100093B6C(&qword_10018E148) + 36)] = 256;
  v33(&v12[*(v10 + 28)], v31, v32);
  v39 = v12;
  v41 = v86;
  v40 = v87;
  v85 = v39;
  *v39 = v83;
  v42 = v84;
  sub_100099258(v8);
  v43 = enum case for ColorScheme.dark(_:);
  v44 = v96;
  v79 = *(v96 + 104);
  v79(v41, enum case for ColorScheme.dark(_:), v40);
  static ColorScheme.== infix(_:_:)();
  v45 = *(v44 + 8);
  v45(v41, v40);
  *&v83 = v8;
  v96 = v44 + 8;
  v45(v8, v40);
  v46 = v42 + *(v23 + 20);
  v47 = *v46;
  if (*(v46 + 8) == 1)
  {
    if ((v47 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v48 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v49 = v80;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100099854(v47, 0);
  (*(v81 + 8))(v49, v82);
  if (v97 == 1)
  {
LABEL_5:
    v50 = v83;
    sub_100099258(v83);
    v79(v41, v43, v40);
    static ColorScheme.== infix(_:_:)();
    v45(v41, v40);
    v45(v50, v40);
  }

LABEL_6:
  (*(v91 + 104))(v90, enum case for Color.RGBColorSpace.sRGB(_:), v94);
  v51 = Color.init(_:white:opacity:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v52 = v85;
  v53 = v88;
  sub_100099860(v85, v88);
  v54 = v53 + *(sub_100093B6C(&qword_10018E150) + 36);
  v55 = v98;
  *v54 = v97;
  *(v54 + 16) = v55;
  *(v54 + 32) = v99;
  v56 = sub_100093B6C(&qword_10018E158);
  *(v53 + *(v56 + 52)) = v51;
  *(v53 + *(v56 + 56)) = 256;
  v57 = static Alignment.center.getter();
  v59 = v58;
  sub_1000998C4(v52, &type metadata accessor for RoundedRectangle);
  v60 = (v53 + *(sub_100093B6C(&qword_10018E160) + 36));
  *v60 = v57;
  v60[1] = v59;
  LOBYTE(v57) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v93;
  sub_1000988D4(v53, v93, &qword_10018E118);
  v70 = v69 + *(v89 + 36);
  *v70 = v57;
  *(v70 + 8) = v62;
  *(v70 + 16) = v64;
  *(v70 + 24) = v66;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  v71 = static Alignment.center.getter();
  v73 = v72;
  v74 = sub_100093B6C(&qword_10018E168);
  v75 = v95;
  v76 = v95 + *(v74 + 36);
  sub_1000988D4(v69, v76, &qword_10018E120);
  v77 = (v76 + *(sub_100093B6C(&qword_10018E170) + 36));
  *v77 = v71;
  v77[1] = v73;
  return sub_1000988D4(v92, v75, &qword_10018E128);
}

uint64_t sub_100099258@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100093B6C(&qword_10018E030);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100099924(v2, &v14 - v9, &qword_10018E030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100099458(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100099520()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 128, 7);
}

unint64_t sub_100099598()
{
  result = qword_10018E028;
  if (!qword_10018E028)
  {
    sub_10009961C(&qword_10018E020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E028);
  }

  return result;
}

uint64_t sub_10009961C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100099664(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100099674(uint64_t a1)
{
  v2 = sub_100093B6C(&qword_10018E050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100099704()
{
  sub_100099790();
  if (v0 <= 0x3F)
  {
    sub_1000997E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100099790()
{
  if (!qword_10018E0C8)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10018E0C8);
    }
  }
}

void sub_1000997E8()
{
  if (!qword_10018E0D0)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10018E0D0);
    }
  }
}

uint64_t sub_100099854(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100099860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000998C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100099924(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100093B6C(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10009998C()
{
  result = qword_10018E178;
  if (!qword_10018E178)
  {
    sub_10009961C(&qword_10018E168);
    sub_100099A44();
    sub_100099D9C(&qword_10018E1E0, &qword_10018E170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E178);
  }

  return result;
}

unint64_t sub_100099A44()
{
  result = qword_10018E180;
  if (!qword_10018E180)
  {
    sub_10009961C(&qword_10018E128);
    sub_100099AFC();
    sub_100099D9C(&qword_10018E1D8, &qword_10018E148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E180);
  }

  return result;
}

unint64_t sub_100099AFC()
{
  result = qword_10018E188;
  if (!qword_10018E188)
  {
    sub_10009961C(&qword_10018E140);
    sub_100099BB4();
    sub_100099D9C(&qword_10018E1C8, &qword_10018E1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E188);
  }

  return result;
}

unint64_t sub_100099BB4()
{
  result = qword_10018E190;
  if (!qword_10018E190)
  {
    sub_10009961C(&qword_10018E138);
    sub_100099C6C();
    sub_100099D9C(&qword_10018E1B8, &qword_10018E1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E190);
  }

  return result;
}

unint64_t sub_100099C6C()
{
  result = qword_10018E198;
  if (!qword_10018E198)
  {
    sub_10009961C(&qword_10018E130);
    sub_100099D54(&qword_10018E1A0, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100099D9C(&qword_10018E1A8, &qword_10018E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E198);
  }

  return result;
}

uint64_t sub_100099D54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100099D9C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009961C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static SRBundleUtilities.getSiriAppBundle()()
{
  v0 = [objc_allocWithZone(type metadata accessor for SRBundleLookupClass()) init];
  swift_getObjectType();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v2;
}

id SRBundleUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRBundleUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100099FB4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5.receiver = a1;
  v5.super_class = a4(a3);
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10009A014(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10009A0DC(uint64_t a1)
{
  v3 = v1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

id sub_10009A108()
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRCarPlayPresentation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10009A188()
{
  v1 = v0;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  strcpy(v18, "clearSnippet()");
  HIBYTE(v18[1]) = -18;
  v4 = sub_100006198(0x10uLL);
  if (v5)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("eived, doing nothing." & 0x2F00000000000000) != 0x2000000000000000)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    v7._object = 0x80000001001178A0;
    v7._countAndFlagsBits = 0xD000000000000034;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v18[0];
  v9 = v18[1];
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  result = *(v1 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (result)
  {
    [result clearSnippet];
    result = [objc_opt_self() isSiriLocationServicesPromptingEnabled];
    if (result)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result siriPresentation:v1 setStatusViewHidden:0];

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *sub_10009A438(uint64_t a1)
{
  v2 = type metadata accessor for SimpleItemStandard();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = &_swiftEmptyArrayStorage;
    sub_10009D334(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_10009D334((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for SimpleItemStandard;
      v14 = sub_10009E8C4(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_10009E928(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_10009A604(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v2;
  result = [v3 stateData];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *&v4[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
  if (v9)
  {
    v10 = *&v4[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8];
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 80);
    v13 = v9;
    v12(v6, v8, ObjectType, v10);

    sub_10001717C(v6, v8);
  }

  else
  {

    sub_10001717C(v6, v8);
  }

  return 1;
}

uint64_t sub_10009A8EC(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 0);
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

void sub_10009A968()
{
  v1 = *(v0 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
    if (v2)
    {
      v3 = *&v1[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8];
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = v1;
      v7 = v2;
      v5(ObjectType, v3);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10009AA50(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006160(v16, qword_10018EE28);
    v17 = static os_log_type_t.info.getter();
    v69 = 0xD000000000000031;
    v70 = 0x80000001001176E0;
    v18 = sub_100006198(2uLL);
    if (v19)
    {
      v68._countAndFlagsBits = 32;
      v68._object = 0xE100000000000000;
      String.append(_:)(*&v18);

      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
    }

    if (("atusDidChange(_:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v68._countAndFlagsBits = 32;
      v68._object = 0xE100000000000000;
      v21._countAndFlagsBits = 0xD000000000000047;
      v21._object = 0x8000000100117720;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
    }

    v24 = v69;
    v23 = v70;
    v25 = Logger.logObject.getter();
    if (os_log_type_enabled(v25, v17))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68._countAndFlagsBits = v27;
      *v26 = 136315138;
      v28 = sub_1000075D4(v24, v23, &v68._countAndFlagsBits);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v25, v17, "%s", v26, 0xCu);
      sub_100006114(v27);
    }

    else
    {
    }

    v47 = objc_opt_self();
    v48 = "autodismiss";
    v49 = "cancelPreviousPerformRequestsWithTarget:selector:object:";
    v50 = v2;
    v51 = 0;

    goto LABEL_32;
  }

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006160(v3, qword_10018EE28);
  v4 = static os_log_type_t.info.getter();
  v69 = 0xD000000000000031;
  v70 = 0x80000001001176E0;
  v5 = sub_100006198(2uLL);
  if (v6)
  {
    v68._countAndFlagsBits = 32;
    v68._object = 0xE100000000000000;
    String.append(_:)(*&v5);

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
  }

  if ((" scheduled autodismiss." & 0x2F00000000000000) != 0x2000000000000000)
  {
    v68._countAndFlagsBits = 32;
    v68._object = 0xE100000000000000;
    v8._countAndFlagsBits = 0xD000000000000034;
    v8._object = 0x8000000100117770;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
  }

  v11 = v69;
  v10 = v70;
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v4))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v68._countAndFlagsBits = v14;
    *v13 = 136315138;
    v15 = sub_1000075D4(v11, v10, &v68._countAndFlagsBits);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v12, v4, "%s", v13, 0xCu);
    sub_100006114(v14);
  }

  else
  {
  }

  v29 = OBJC_IVAR___SRCarPlayPresentation_carPlayViewController;
  v30 = *&v2[OBJC_IVAR___SRCarPlayPresentation_carPlayViewController];
  if (!v30)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  v31 = *(v30 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController);
  if (v31)
  {
    v32 = *(v30 + OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8);
    ObjectType = swift_getObjectType();
    v34 = *(v32 + 64);
    v35 = v30;
    v36 = v31;
    v34(ObjectType, v32);

    v30 = *&v2[v29];
    if (!v30)
    {
      goto LABEL_51;
    }
  }

  if ((*((swift_isaMask & *v30) + 0x128))())
  {
    v37 = static os_log_type_t.info.getter();
    v69 = 0xD000000000000031;
    v70 = 0x80000001001176E0;
    v38 = sub_100006198(2uLL);
    if (v39)
    {
      v68._countAndFlagsBits = 32;
      v68._object = 0xE100000000000000;
      String.append(_:)(*&v38);

      String.append(_:)(v68);
    }

    if (("ng dismissal in " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v68._countAndFlagsBits = 32;
      v68._object = 0xE100000000000000;
      v40._countAndFlagsBits = 0xD000000000000024;
      v40._object = 0x8000000100117800;
      String.append(_:)(v40);
      String.append(_:)(v68);
    }

    v42 = v69;
    v41 = v70;
    v43 = Logger.logObject.getter();
    if (os_log_type_enabled(v43, v37))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68._countAndFlagsBits = v45;
      *v44 = 136315138;
      v46 = sub_1000075D4(v42, v41, &v68._countAndFlagsBits);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v43, v37, "%s", v44, 0xCu);
      sub_100006114(v45);
    }

    else
    {
    }

    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v2 selector:"autodismiss" object:0];
    v49 = "performSelector:withObject:afterDelay:";
    v47 = v2;
    v50 = "autodismiss";
    v48 = 0;

LABEL_32:
    [v47 v49];
    return;
  }

  if (*&v2[OBJC_IVAR___SRCarPlayPresentation_delayDismissalTimeInSec] >= 0.1)
  {
    v52 = *&v2[OBJC_IVAR___SRCarPlayPresentation_delayDismissalTimeInSec];
  }

  else
  {
    v52 = 6.0;
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  v53._countAndFlagsBits = 0xD000000000000040;
  v53._object = 0x80000001001177B0;
  String.append(_:)(v53);
  Double.write<A>(to:)();
  v54._countAndFlagsBits = 0x73646E6F63657320;
  v54._object = 0xE90000000000002ELL;
  String.append(_:)(v54);
  v56 = v69;
  v55 = v70;
  v57 = static os_log_type_t.info.getter();
  v69 = 0xD000000000000031;
  v70 = 0x80000001001176E0;
  v58 = sub_100006198(2uLL);
  if (v59)
  {
    v68._countAndFlagsBits = 32;
    v68._object = 0xE100000000000000;
    String.append(_:)(*&v58);

    String.append(_:)(v68);
  }

  v60 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v60 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {
    v68._countAndFlagsBits = 32;
    v68._object = 0xE100000000000000;
    v61._countAndFlagsBits = v56;
    v61._object = v55;
    String.append(_:)(v61);
    String.append(_:)(v68);
  }

  v63 = v69;
  v62 = v70;
  v64 = Logger.logObject.getter();
  if (os_log_type_enabled(v64, v57))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68._countAndFlagsBits = v66;
    *v65 = 136315138;
    v67 = sub_1000075D4(v63, v62, &v68._countAndFlagsBits);

    *(v65 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v64, v57, "%s", v65, 0xCu);
    sub_100006114(v66);
  }

  else
  {
  }

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v2 selector:"autodismiss" object:0];
  [v2 performSelector:"autodismiss" withObject:0 afterDelay:v52];
}

uint64_t sub_10009B384(uint64_t result, char a2)
{
  v3 = v2;
  v4 = result;
  if (a2)
  {
    goto LABEL_4;
  }

  v5 = *(v2 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (!v5)
  {
    __break(1u);
    return result;
  }

  result = (*((swift_isaMask & *v5) + 0x128))();
  if ((result & 1) == 0)
  {
LABEL_4:
    v6 = [v4 minimumAutoDismissalTimeInMs];
    if (v6)
    {
      v7 = v6;
      v42 = v3;
      v8 = [v6 integerValue] / 1000.0;
      _StringGuts.grow(_:)(51);
      v9._countAndFlagsBits = 0xD000000000000029;
      v9._object = 0x8000000100117620;
      String.append(_:)(v9);
      Double.write<A>(to:)();
      v10._countAndFlagsBits = 0x73646E6F63657320;
      v10._object = 0xE800000000000000;
      String.append(_:)(v10);
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006160(v11, qword_10018EE28);
      v12 = static os_log_type_t.info.getter();
      v44 = 0xD000000000000016;
      v45 = 0x8000000100117600;
      v13 = sub_100006198(2uLL);
      if (v14)
      {
        v43._countAndFlagsBits = 32;
        v43._object = 0xE100000000000000;
        String.append(_:)(*&v13);

        v15._countAndFlagsBits = 32;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
      }

      v17 = v44;
      v16 = v45;
      v18 = Logger.logObject.getter();
      if (os_log_type_enabled(v18, v12))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43._countAndFlagsBits = v20;
        *v19 = 136315138;
        v21 = sub_1000075D4(v17, v16, &v43._countAndFlagsBits);

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v18, v12, "%s", v19, 0xCu);
        sub_100006114(v20);
      }

      else
      {
      }

      v3 = v42;
      *(v42 + OBJC_IVAR___SRCarPlayPresentation_delayDismissalTimeInSec) = v8;
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v44 = 0xD000000000000019;
    v45 = 0x80000001001175E0;
    v22 = [v4 premptivelyResumeMedia];
    v23 = v22 == 0;
    if (v22)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE500000000000000;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    v26 = v25;
    String.append(_:)(*&v24);

    v28 = v44;
    v27 = v45;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006160(v29, qword_10018EE28);
    v30 = static os_log_type_t.info.getter();
    v44 = 0xD000000000000016;
    v45 = 0x8000000100117600;
    v31 = sub_100006198(2uLL);
    if (v32)
    {
      v43._countAndFlagsBits = 32;
      v43._object = 0xE100000000000000;
      String.append(_:)(*&v31);

      String.append(_:)(v43);
    }

    v33 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v33 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v43._countAndFlagsBits = 32;
      v43._object = 0xE100000000000000;
      v34._countAndFlagsBits = v28;
      v34._object = v27;
      String.append(_:)(v34);
      String.append(_:)(v43);
    }

    v36 = v44;
    v35 = v45;
    v37 = Logger.logObject.getter();
    if (os_log_type_enabled(v37, v30))
    {
      v38 = swift_slowAlloc();
      v39 = v3;
      v40 = swift_slowAlloc();
      v43._countAndFlagsBits = v40;
      *v38 = 136315138;
      v41 = sub_1000075D4(v36, v35, &v43._countAndFlagsBits);

      *(v38 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v37, v30, "%s", v38, 0xCu);
      sub_100006114(v40);
      v3 = v39;
    }

    else
    {
    }

    result = [v4 premptivelyResumeMedia];
    *(v3 + OBJC_IVAR___SRCarPlayPresentation_shouldResumeMediaOnIdle) = result;
  }

  return result;
}

void sub_10009B9C4(void (*a1)(void))
{
  v2 = *(v1 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (v2)
  {
    v4 = *&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
    if (v4)
    {
      v5 = *&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8];
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      v8 = v2;
      v9 = v4;
      v7(ObjectType, v5);
    }

    if (a1)
    {
      a1();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10009BB3C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (v2)
  {
    if (*&v2[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController])
    {
      v3 = a1 == 13;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      v4 = qword_10018D798;
      v5 = v2;
      v19 = v5;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006160(v6, qword_10018EE28);
      v7 = static os_log_type_t.info.getter();
      v22 = 0xD000000000000030;
      v23 = 0x8000000100117560;
      v8 = sub_100006198(0x10uLL);
      if (v9)
      {
        v20 = 32;
        v21 = 0xE100000000000000;
        String.append(_:)(*&v8);

        v10._countAndFlagsBits = 32;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
      }

      if (("ppetIfNeeded(_:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v20 = 32;
        v21 = 0xE100000000000000;
        v11._countAndFlagsBits = 0xD00000000000003ALL;
        v11._object = 0x80000001001175A0;
        String.append(_:)(v11);
        v12._countAndFlagsBits = 32;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
      }

      v14 = v22;
      v13 = v23;
      v15 = Logger.logObject.getter();
      if (os_log_type_enabled(v15, v7))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20 = v17;
        *v16 = 136315138;
        v18 = sub_1000075D4(v14, v13, &v20);

        *(v16 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v15, v7, "%s", v16, 0xCu);
        sub_100006114(v17);
      }

      else
      {
      }

      sub_100016708(0, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10009BE08(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = *&v3[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController];
  if (v5)
  {
    v7 = *&v3[OBJC_IVAR____TtC4Siri23SRCarPlayViewController_currentSnippetViewController + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 56);
    v11 = v3;
    v10 = v5;
    v9(a1, a2, ObjectType, v7);
  }
}

void sub_10009C050()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___SRCarPlayPresentation_delayDismissalTimeInSec];
  if (v2 > 0.0)
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006160(v3, qword_10018EE28);
    v4 = static os_log_type_t.info.getter();
    v55 = 0xD000000000000027;
    v56 = 0x8000000100116ED0;
    v5 = sub_100006198(0x20002uLL);
    if (v6)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      String.append(_:)(*&v5);

      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    if (("ttendingWindowClosure()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      v8._countAndFlagsBits = 0xD000000000000031;
      v8._object = 0x8000000100116F00;
      String.append(_:)(v8);
      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
    }

    v11 = v55;
    v10 = v56;
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v4))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v54._countAndFlagsBits = v14;
      *v13 = 136315138;
      v15 = sub_1000075D4(v11, v10, &v54._countAndFlagsBits);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v12, v4, "%s", v13, 0xCu);
      sub_100006114(v14);
    }

    else
    {
    }

    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"handleRequestToCeaseAttending" object:0];
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v31._countAndFlagsBits = 0xD000000000000029;
    v31._object = 0x8000000100116F70;
    String.append(_:)(v31);
    Double.write<A>(to:)();
    v32._countAndFlagsBits = 0x73646E6F63657320;
    v32._object = 0xE90000000000002ELL;
    String.append(_:)(v32);
    v34 = v55;
    v33 = v56;
    v35 = static os_log_type_t.info.getter();
    v55 = 0xD000000000000028;
    v56 = 0x8000000100116F40;
    v36 = sub_100006198(2uLL);
    if (v37)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      String.append(_:)(*&v36);

      String.append(_:)(v54);
    }

    v38 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v38 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      v39._countAndFlagsBits = v34;
      v39._object = v33;
      String.append(_:)(v39);
      String.append(_:)(v54);
    }

    v41 = v55;
    v40 = v56;
    v42 = Logger.logObject.getter();
    if (os_log_type_enabled(v42, v35))
    {
LABEL_39:
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54._countAndFlagsBits = v52;
      *v51 = 136315138;
      v53 = sub_1000075D4(v41, v40, &v54._countAndFlagsBits);

      *(v51 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v42, v35, "%s", v51, 0xCu);
      sub_100006114(v52);

LABEL_41:

      [v1 performSelector:"handleRequestToCeaseAttending" withObject:0 afterDelay:v2];
      return;
    }

LABEL_40:

    goto LABEL_41;
  }

  v16 = *&v0[OBJC_IVAR___SRCarPlayPresentation_carPlayViewController];
  if (v16)
  {
    if ((*((swift_isaMask & *v16) + 0x128))())
    {
      v17 = &unk_1000F6AD8;
    }

    else
    {
      v17 = &qword_1000F6AD0;
    }

    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006160(v18, qword_10018EE28);
    v19 = static os_log_type_t.info.getter();
    v55 = 0xD000000000000027;
    v56 = 0x8000000100116ED0;
    v20 = sub_100006198(0x20002uLL);
    if (v21)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      String.append(_:)(*&v20);

      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
    }

    if (("ttendingWindowClosure()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      v23._countAndFlagsBits = 0xD000000000000031;
      v23._object = 0x8000000100116F00;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
    }

    v2 = *v17;
    v26 = v55;
    v25 = v56;
    v27 = Logger.logObject.getter();
    if (os_log_type_enabled(v27, v19))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54._countAndFlagsBits = v29;
      *v28 = 136315138;
      v30 = sub_1000075D4(v26, v25, &v54._countAndFlagsBits);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v27, v19, "%s", v28, 0xCu);
      sub_100006114(v29);
    }

    else
    {
    }

    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"handleRequestToCeaseAttending" object:0];
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v43._countAndFlagsBits = 0xD000000000000029;
    v43._object = 0x8000000100116F70;
    String.append(_:)(v43);
    Double.write<A>(to:)();
    v44._countAndFlagsBits = 0x73646E6F63657320;
    v44._object = 0xE90000000000002ELL;
    String.append(_:)(v44);
    v46 = v55;
    v45 = v56;
    v35 = static os_log_type_t.info.getter();
    v55 = 0xD000000000000028;
    v56 = 0x8000000100116F40;
    v47 = sub_100006198(2uLL);
    if (v48)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      String.append(_:)(*&v47);

      String.append(_:)(v54);
    }

    v49 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      v50._countAndFlagsBits = v46;
      v50._object = v45;
      String.append(_:)(v50);
      String.append(_:)(v54);
    }

    v41 = v55;
    v40 = v56;
    v42 = Logger.logObject.getter();
    if (os_log_type_enabled(v42, v35))
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  __break(1u);
}

void sub_10009C890()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR___SRCarPlayPresentation_siriIsIdleAndQuiet];
  if (v2 != 2 && (v2 & 1) != 0)
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006160(v3, qword_10018EE28);
    v4 = static os_log_type_t.info.getter();
    v52 = 0xD00000000000001FLL;
    v53 = 0x80000001001170E0;
    v5 = sub_100006198(2uLL);
    if (v6)
    {
      v50 = 32;
      v51 = 0xE100000000000000;
      String.append(_:)(*&v5);

      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    if (("IdleAndAttending" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v50 = 32;
      v51 = 0xE100000000000000;
      v8._countAndFlagsBits = 0xD000000000000054;
      v8._object = 0x8000000100117200;
      String.append(_:)(v8);
      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
    }

    v11 = v52;
    v10 = v53;
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v4))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v50 = v14;
      *v13 = 136315138;
      v15 = sub_1000075D4(v11, v10, &v50);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v12, v4, "%s", v13, 0xCu);
      sub_100006114(v14);

LABEL_41:

      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"autodismiss" object:0];

      [v1 performSelector:"autodismiss" withObject:0 afterDelay:0.0];
      return;
    }

LABEL_40:

    goto LABEL_41;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = [Strong siriStateForSiriPresentation:v0];
    swift_unknownObjectRelease();
    if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(74);
      v18._countAndFlagsBits = 0xD000000000000022;
      v18._object = 0x8000000100117140;
      String.append(_:)(v18);
      if (v17 == 5)
      {
        v19 = 0xD000000000000010;
      }

      else
      {
        v19 = 0x6E69646E65747441;
      }

      if (v17 == 5)
      {
        v20 = 0x80000001001171E0;
      }

      else
      {
        v20 = 0xE900000000000067;
      }

      v21 = v20;
      String.append(_:)(*&v19);

      v22._countAndFlagsBits = 0xD000000000000026;
      v22._object = 0x80000001001171B0;
      String.append(_:)(v22);
      v24 = v52;
      v23 = v53;
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006160(v25, qword_10018EE28);
      v26 = static os_log_type_t.info.getter();
      v52 = 0xD00000000000001FLL;
      v53 = 0x80000001001170E0;
      v27 = sub_100006198(2uLL);
      if (v28)
      {
        v50 = 32;
        v51 = 0xE100000000000000;
        String.append(_:)(*&v27);

        v29._countAndFlagsBits = 32;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
      }

      if ((v23 & 0xF00000000000000) != 0)
      {
        v50 = 32;
        v51 = 0xE100000000000000;
        v30._countAndFlagsBits = v24;
        v30._object = v23;
        String.append(_:)(v30);
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
      }

      v33 = v52;
      v32 = v53;
      v12 = Logger.logObject.getter();
      if (os_log_type_enabled(v12, v26))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v50 = v35;
        *v34 = 136315138;
        v36 = sub_1000075D4(v33, v32, &v50);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v12, v26, "%s", v34, 0xCu);
        sub_100006114(v35);
      }

      else
      {
      }

      goto LABEL_40;
    }
  }

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100006160(v37, qword_10018EE28);
  v38 = static os_log_type_t.info.getter();
  v52 = 0xD00000000000001FLL;
  v53 = 0x80000001001170E0;
  v39 = sub_100006198(0x20002uLL);
  if (v40)
  {
    v50 = 32;
    v51 = 0xE100000000000000;
    String.append(_:)(*&v39);

    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
  }

  if (("handleRequestToCeaseAttending()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v50 = 32;
    v51 = 0xE100000000000000;
    v42._countAndFlagsBits = 0xD000000000000031;
    v42._object = 0x8000000100117100;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 32;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
  }

  v45 = v52;
  v44 = v53;
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v38))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v46 = 136315138;
    v48 = sub_1000075D4(v45, v44, &v50);

    *(v46 + 4) = v48;
    _os_log_impl(&_mh_execute_header, log, v38, "%s", v46, 0xCu);
    sub_100006114(v47);
  }

  else
  {
  }
}

void *sub_10009CFE8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result dismissSiriPresentation:v2 withReason:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10009D078(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector:*a4])
    {
      [v7 *a4];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10009D100()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result siriPresentation:v0 setStatusViewHidden:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10009D168(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

size_t sub_10009D314(size_t a1, int64_t a2, char a3)
{
  result = sub_10009D460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009D334(void *a1, int64_t a2, char a3)
{
  result = sub_10009D638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009D354(char *result, int64_t a2, char a3, char *a4)
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
    sub_100093B6C(&qword_10018E368);
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

size_t sub_10009D460(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100093B6C(&qword_10018E360);
  v10 = *(type metadata accessor for SimpleItemStandard() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SimpleItemStandard() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10009D638(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100093B6C(&qword_10018E350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100093B6C(&qword_10018E358);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10009D780(void *a1)
{
  v2 = type metadata accessor for Response();
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = &type metadata for DefaultDisambiguationItemConverter;
  v47 = &off_100169A90;
  result = [a1 items];
  if (result)
  {
    v9 = result;
    sub_10009E804();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v11);
    *(&v38 - 2) = v45;
    v12 = sub_10009D168(sub_10009E850, (&v38 - 4), v10);

    v13 = sub_1000AD46C(v12);

    if (v13[2])
    {
      v40 = v2;
      v14 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
      v15 = [a1 aceId];
      if (v15)
      {
        v16 = v15;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        UUID.init()();
        UUID.uuidString.getter();
        (*(v39 + 8))(v7, v5);
      }

      v28 = String._bridgeToObjectiveC()();

      [v14 setAceId:v28];

      v29 = v14;
      v30 = [a1 refId];
      [v29 setRefId:v30];

      v31 = v29;
      v32 = String._bridgeToObjectiveC()();
      [v31 setViewId:v32];

      sub_10009A438(v13);

      Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
      sub_10009E86C();
      v33 = v40;
      v34 = ProtobufBuilder.serializedData()();
      v36 = v35;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001717C(v34, v36);
      [v31 setModelData:isa];

      (*(v41 + 8))(v4, v33);
    }

    else
    {

      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006160(v17, qword_10018EE28);
      v18 = static os_log_type_t.error.getter();
      v43 = 0xD00000000000001BLL;
      v44 = 0x8000000100117E30;
      v19 = sub_100006198(0x10uLL);
      if (v20)
      {
        v42._countAndFlagsBits = 32;
        v42._object = 0xE100000000000000;
        String.append(_:)(*&v19);

        String.append(_:)(v42);
      }

      if (("asVisualResponseSnippet(_:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v42._countAndFlagsBits = 32;
        v42._object = 0xE100000000000000;
        v21._countAndFlagsBits = 0xD000000000000034;
        v21._object = 0x8000000100117E50;
        String.append(_:)(v21);
        String.append(_:)(v42);
      }

      v23 = v43;
      v22 = v44;
      v24 = Logger.logObject.getter();
      if (os_log_type_enabled(v24, v18))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42._countAndFlagsBits = v26;
        *v25 = 136315138;
        v27 = sub_1000075D4(v23, v22, &v42._countAndFlagsBits);

        *(v25 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v24, v18, "%s", v25, 0xCu);
        sub_100006114(v26);
      }

      else
      {
      }

      v31 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
    }

    sub_100006114(v45);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009DD80(uint64_t a1)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v5 siriPresentation:v2 performAceCommand:a1 conversationItemIdentifier:0 turnIdentifier:isa completion:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10009DE1C()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___SRCarPlayPresentation_siriIsIdleAndQuiet) = 2;
  v2 = v0 + OBJC_IVAR___SRCarPlayPresentation_isJarvisProvider;
  *(v2 + 24) = &type metadata for DefaultIsJarvisProvider;
  *(v2 + 32) = &off_1001696C0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10009DEE8()
{
  v0 = [objc_opt_self() carPlayBluetoothMACAddress];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  _StringGuts.grow(_:)(25);

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006160(v5, qword_10018EE28);
  v6 = static os_log_type_t.debug.getter();
  v22 = 0xD000000000000018;
  v23 = 0x8000000100117520;
  v7 = sub_100006198(0x10uLL);
  if (v8)
  {
    v20 = 32;
    v21 = 0xE100000000000000;
    String.append(_:)(*&v7);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
  }

  v10 = (0x8000000100117540 >> 56) & 0xF;
  if ((0x8000000100117540 & 0x2000000000000000) == 0)
  {
    v10 = 23;
  }

  if (v10)
  {
    v20 = 32;
    v21 = 0xE100000000000000;
    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x8000000100117540;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
  }

  v14 = v22;
  v13 = v23;
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v6))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315138;
    v18 = sub_1000075D4(v14, v13, &v20);

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v15, v6, "%s", v16, 0xCu);
    sub_100006114(v17);
  }

  else
  {
  }

  return v1;
}

BOOL sub_10009E17C(void *a1)
{
  v1 = [a1 af_dialogIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = String.hasPrefix(_:)(xmmword_100168F08);

  v13 = 1;
  if (!v3)
  {

    v4 = String.hasPrefix(_:)(xmmword_100168F18);

    if (!v4)
    {

      v5._countAndFlagsBits = 0xD000000000000012;
      v5._object = ":withCompletionHandler:]";
      v6 = String.hasPrefix(_:)(v5);

      if (!v6)
      {

        v7 = String.hasPrefix(_:)(xmmword_100168F38);

        if (!v7)
        {

          v8 = String.hasPrefix(_:)(xmmword_100168F48);

          if (!v8)
          {

            v9._countAndFlagsBits = 0x654D646E65736E55;
            v9._object = 0xEF23736567617373;
            v10 = String.hasPrefix(_:)(v9);

            if (!v10)
            {

              v11 = String.hasPrefix(_:)(xmmword_100168F68);

              if (!v11)
              {

                v12 = String.hasPrefix(_:)(xmmword_100168F78);

                if (!v12)
                {
                  v13 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  swift_arrayDestroy();
  return v13;
}

uint64_t sub_10009E3C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100093B6C(&unk_10018E310);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = *(v1 + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (!v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  sub_1000B42E0(a1);

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v10 = result;
  sub_10009E5F0(a1, v7);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v7, 1, v11);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v13 = URL.scheme.getter();
  if (v14)
  {
    if (v13 == 0x6D65746970616DLL && v14 == 0xE700000000000000)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v16 = 0;
  }

  (*(v12 + 8))(v7, v11);
  [v10 siriPresentation:v2 requestsTouchPassThroughEnabled:v16 & 1];
  return swift_unknownObjectRelease();
}

uint64_t sub_10009E588(uint64_t a1)
{
  v2 = sub_100093B6C(&unk_10018E310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100093B6C(&unk_10018E310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E660(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10009E678()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100096D48;

  return sub_10009A8EC(v2);
}

uint64_t sub_10009E738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100096F3C;

  return sub_1000A7FC4(a1, v4, v5, v6);
}

unint64_t sub_10009E804()
{
  result = qword_10018E340;
  if (!qword_10018E340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018E340);
  }

  return result;
}

unint64_t sub_10009E86C()
{
  result = qword_10018E348;
  if (!qword_10018E348)
  {
    type metadata accessor for Response();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E348);
  }

  return result;
}

uint64_t *sub_10009E8C4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10009E928(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SiriUISiriState.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x73736563637553;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0xD000000000000010;
      }

      goto LABEL_12;
    }

    v17 = 0x646E65747441;
    return v17 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
  }

  switch(a1)
  {
    case 0:
      return 1701602377;
    case 1:
      v17 = 0x6E657473694CLL;
      return v17 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 2:
      return 0x676E696B6E696854;
  }

LABEL_12:
  v22 = v1;
  v23 = v2;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006160(v4, qword_10018EE28);
  v5 = static os_log_type_t.error.getter();
  v20 = 0x7470697263736564;
  v21 = 0xEB000000006E6F69;
  v6 = sub_100006198(0);
  if (v7)
  {
    v18 = 32;
    v19 = 0xE100000000000000;
    String.append(_:)(*&v6);

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  if ((" ended with state " & 0x2F00000000000000) != 0x2000000000000000)
  {
    v18 = 32;
    v19 = 0xE100000000000000;
    v9._countAndFlagsBits = 0xD000000000000017;
    v9._object = 0x8000000100117170;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }

  v12 = v20;
  v11 = v21;
  v13 = Logger.logObject.getter();
  if (os_log_type_enabled(v13, v5))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    v16 = sub_1000075D4(v12, v11, &v18);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v13, v5, "%s", v14, 0xCu);
    sub_100006114(v15);
  }

  else
  {
  }

  return 0xD00000000000001ELL;
}

unint64_t SiriUISiriEvent.description.getter()
{
  v20 = v0;
  v21 = v1;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.error.getter();
  v18 = 0x7470697263736564;
  v19 = 0xEB000000006E6F69;
  v4 = sub_100006198(0);
  if (v5)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("missing immediately." & 0x2F00000000000000) != 0x2000000000000000)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    v7._countAndFlagsBits = 0xD000000000000017;
    v7._object = 0x8000000100117260;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v18;
  v9 = v19;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  return 0xD00000000000001ELL;
}

char *sub_10009F070(uint64_t a1, unint64_t a2)
{
  v3 = sub_10009F0BC(a1, a2);
  sub_10009F1EC(&off_100168EC0);
  return v3;
}

char *sub_10009F0BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10009F2D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10009F2D8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10009F1EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10009F34C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10009F2D8(uint64_t a1, uint64_t a2)
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

  sub_100093B6C(&unk_10018E3D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10009F34C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100093B6C(&unk_10018E3D0);
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

uint64_t sub_10009F440(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10009F4EC()
{
  sub_1000A2820(&off_100169028);
  result = sub_1000A2820(&off_100169058);
  qword_100190348 = &off_100168FB8;
  return result;
}

uint64_t sub_10009F548()
{
  result = sub_1000A2820(&off_100168FB8);
  qword_100190350 = &off_100169028;
  return result;
}

id SiriSystemUIController.__deallocating_deinit()
{
  sub_1000A0CB4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSystemUIController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10009F698(void *a1, void *a2, uint64_t a3)
{
  if (v3[OBJC_IVAR___SRSiriSystemUIController_systemUIDevice] == 1 && *&v3[OBJC_IVAR___SRSiriSystemUIController_viewMode] == 7)
  {
    v4 = &v3[OBJC_IVAR___SRSiriSystemUIController_activityId];
    if (*&v3[OBJC_IVAR___SRSiriSystemUIController_activityId + 8])
    {
      v102 = a1;
      if (qword_10018D768 != -1)
      {
        goto LABEL_96;
      }

      while (1)
      {
        v7 = qword_100190348;
        v8 = &v3[OBJC_IVAR___SRSiriSystemUIController_domainResponseId];
        v9 = *&v3[OBJC_IVAR___SRSiriSystemUIController_domainResponseId + 8];
        v106 = *&v3[OBJC_IVAR___SRSiriSystemUIController_domainResponseId];
        v107 = v9;
        __chkstk_darwin(a1);
        v99 = &v106;

        v10 = sub_10009F440(sub_1000A2914, v98, v7);

        if (v10)
        {
          break;
        }

        v18 = [v102 views];
        if (v18)
        {
          a2 = v18;
          sub_10000A238(0, &qword_10018E6D0);
          v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v19 = 0;
        }

        v105[0] = &_swiftEmptyArrayStorage;
        v104 = 0;
        v3[OBJC_IVAR___SRSiriSystemUIController_didHaveSpeakableText] = 0;
        v34 = OBJC_IVAR___SRSiriSystemUIController_lockState;
        v35 = &qword_10018E000;
        v36 = v102;
        if (!*&v3[OBJC_IVAR___SRSiriSystemUIController_lockState] || !v4[1])
        {
          goto LABEL_63;
        }

        if (!v19)
        {
          goto LABEL_61;
        }

        v100 = OBJC_IVAR___SRSiriSystemUIController_lockState;
        v4 = (v19 & 0xFFFFFFFFFFFFFF8);
        if (v19 >> 62)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
          v36 = v102;
        }

        else
        {
          v37 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v101 = v36;
        v38 = v3;

        if (!v37)
        {
LABEL_60:

          v36 = v102;
          v34 = v100;
          v35 = &qword_10018E000;
LABEL_61:
          if (v3[v35[132]] & 1) != 0 || (v104)
          {
LABEL_63:
            if (v19)
            {
              v61 = v3;
              sub_1000A3458(v19, v105, v61, &v104 + 1);

              v36 = v102;
            }

            if ((v3[OBJC_IVAR___SRSiriSystemUIController_systemApertureSupportedDevice] & 1) == 0 && !*&v3[v34])
            {
              goto LABEL_93;
            }

            if (v3[v35[132]] != 1 || !*&v3[v34] || (v3[OBJC_IVAR___SRSiriSystemUIController_isInAmbient] & 1) != 0)
            {
              if (HIBYTE(v104) == 1)
              {
                v44 = 0x80000001001182F0;
                if (qword_10018D798 == -1)
                {
                  goto LABEL_72;
                }

                goto LABEL_110;
              }

LABEL_93:
              v85 = v36;

              return v85;
            }

            if (qword_10018D798 != -1)
            {
              swift_once();
            }

            v74 = type metadata accessor for Logger();
            sub_100006160(v74, qword_10018EE28);
            v75 = static os_log_type_t.info.getter();
            v106 = 0xD00000000000001FLL;
            v107 = 0x80000001001182F0;
            v76 = sub_100006198(0);
            if (v77)
            {
              v103._countAndFlagsBits = 32;
              v103._object = 0xE100000000000000;
              String.append(_:)(*&v76);

              String.append(_:)(v103);
            }

            if (("Transformed Add Views" & 0x2F00000000000000) != 0x2000000000000000)
            {
              v103._countAndFlagsBits = 32;
              v103._object = 0xE100000000000000;
              v78._countAndFlagsBits = 0xD000000000000033;
              v78._object = 0x8000000100118330;
              String.append(_:)(v78);
              String.append(_:)(v103);
            }

            v80 = v106;
            v79 = v107;
            v81 = Logger.logObject.getter();
            if (os_log_type_enabled(v81, v75))
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              v103._countAndFlagsBits = v83;
              *v82 = 136315138;
              v84 = sub_1000075D4(v80, v79, &v103._countAndFlagsBits);

              *(v82 + 4) = v84;
              _os_log_impl(&_mh_execute_header, v81, v75, "%s", v82, 0xCu);
              sub_100006114(v83);
            }

            else
            {
            }
          }

          else
          {
          }

LABEL_92:
          v36 = v102;
          goto LABEL_93;
        }

        v39 = 0;
        v40 = v19 & 0xC000000000000001;
        a3 = v19 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v40)
          {
            a2 = v19;
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v39 >= v4[2])
            {
              goto LABEL_95;
            }

            a2 = v19;
            v41 = *(v19 + 8 * v39 + 32);
          }

          v4 = v41;
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          v106 = v41;
          sub_1000A05E8(&v106, v38, &v104, v105, v101);

          ++v39;
          v43 = v42 == v37;
          v4 = a3;
          v19 = a2;
          if (v43)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        a1 = swift_once();
      }

      v11 = [objc_opt_self() transformVisualResponse:v102 forMode:a2 idiom:a3 shouldHideSnippet:1];
      v12 = v11;
      if (qword_10018D770 != -1)
      {
        v11 = swift_once();
      }

      v13 = qword_100190350;
      v14 = v8[1];
      v106 = *v8;
      v107 = v14;
      __chkstk_darwin(v11);
      v99 = &v106;

      LOBYTE(v13) = sub_10009F440(sub_1000A37C4, v98, v13);

      v16 = (v13 & 1) != 0 && *&v3[OBJC_IVAR___SRSiriSystemUIController_lockState] != 0;
      v20 = v8[1];
      v106 = *v8;
      v107 = v20;
      __chkstk_darwin(v15);
      v99 = &v106;

      v21 = sub_10009F440(sub_1000A37C4, v98, &off_100169028);

      v22 = 0x80000001001182F0;
      if ((v21 & 1) == 0 && !v16)
      {
        goto LABEL_99;
      }

      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006160(v23, qword_10018EE28);
      v24 = static os_log_type_t.info.getter();
      v106 = 0xD00000000000001FLL;
      v107 = 0x80000001001182F0;
      v25 = sub_100006198(0x40000000uLL);
      if (v26)
      {
        v103._countAndFlagsBits = 32;
        v103._object = 0xE100000000000000;
        String.append(_:)(*&v25);

        String.append(_:)(v103);
      }

      if (("al response add views" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v103._countAndFlagsBits = 32;
        v103._object = 0xE100000000000000;
        v27._countAndFlagsBits = 0xD000000000000032;
        v27._object = 0x80000001001183A0;
        String.append(_:)(v27);
        String.append(_:)(v103);
      }

      v29 = v106;
      v28 = v107;
      v30 = Logger.logObject.getter();
      if (os_log_type_enabled(v30, v24))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v103._countAndFlagsBits = v32;
        *v31 = 136315138;
        v33 = sub_1000075D4(v29, v28, &v103._countAndFlagsBits);

        *(v31 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v30, v24, "%s", v31, 0xCu);
        sub_100006114(v32);
      }

      else
      {
      }

      v106 = &_swiftEmptyArrayStorage;
      result = [v12 views];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v44 = result;
      v45 = sub_10000A238(0, &qword_10018E6D0);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v46 >> 62)
      {
        v47 = _CocoaArrayWrapper.endIndex.getter();
        if (v47)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v47)
        {
LABEL_46:
          v100 = v45;
          v101 = 0x80000001001182F0;
          v102 = v12;
          if (v47 < 1)
          {
            __break(1u);
LABEL_110:
            swift_once();
LABEL_72:
            v62 = type metadata accessor for Logger();
            sub_100006160(v62, qword_10018EE28);
            v63 = static os_log_type_t.info.getter();
            v106 = 0xD00000000000001FLL;
            v107 = v44;
            v64 = sub_100006198(0);
            if (v65)
            {
              v103._countAndFlagsBits = 32;
              v103._object = 0xE100000000000000;
              String.append(_:)(*&v64);

              String.append(_:)(v103);
            }

            if (("transform(addViews:mode:idiom:)" & 0x2F00000000000000) != 0x2000000000000000)
            {
              v103._countAndFlagsBits = 32;
              v103._object = 0xE100000000000000;
              v66._countAndFlagsBits = 0xD000000000000015;
              v66._object = 0x8000000100118310;
              String.append(_:)(v66);
              String.append(_:)(v103);
            }

            v68 = v106;
            v67 = v107;
            v69 = Logger.logObject.getter();
            if (os_log_type_enabled(v69, v63))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v103._countAndFlagsBits = v71;
              *v70 = 136315138;
              v72 = sub_1000075D4(v68, v67, &v103._countAndFlagsBits);

              *(v70 + 4) = v72;
              _os_log_impl(&_mh_execute_header, v69, v63, "%s", v70, 0xCu);
              sub_100006114(v71);
            }

            else
            {
            }

            sub_10000A238(0, &qword_10018E6D0);
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v102 setViews:isa];

            goto LABEL_92;
          }

          for (i = 0; i != v47; ++i)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v57 = *(v46 + 8 * i + 32);
            }

            v58 = v57;
            objc_opt_self();
            v59 = swift_dynamicCastObjCClass();
            if (v59)
            {
              v49 = v59;
              v50 = objc_allocWithZone(SAUIAssistantUtteranceView);
              v51 = [v50 init];
              v52 = [v49 dialogIdentifier];
              [v51 setDialogIdentifier:v52];

              v53 = v51;
              v54 = [v49 aceId];
              [v53 setAceId:v54];

              v55 = v53;
              v56 = [v49 speakableText];
              [v55 setSpeakableText:v56];

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            else
            {
              v60 = v58;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }
          }

          v22 = v101;
          v12 = v102;
        }
      }

      v86 = Array._bridgeToObjectiveC()().super.isa;

      [v12 setViews:v86];

LABEL_99:
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100006160(v87, qword_10018EE28);
      v88 = static os_log_type_t.info.getter();
      v106 = 0xD00000000000001FLL;
      v107 = v22;
      v89 = sub_100006198(0x40000000uLL);
      if (v90)
      {
        v103._countAndFlagsBits = 32;
        v103._object = 0xE100000000000000;
        String.append(_:)(*&v89);

        String.append(_:)(v103);
      }

      if (("Do not redact views" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v103._countAndFlagsBits = 32;
        v103._object = 0xE100000000000000;
        v91._countAndFlagsBits = 0xD000000000000025;
        v91._object = 0x8000000100118370;
        String.append(_:)(v91);
        String.append(_:)(v103);
      }

      v93 = v106;
      v92 = v107;
      v94 = Logger.logObject.getter();
      if (os_log_type_enabled(v94, v88))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v103._countAndFlagsBits = v96;
        *v95 = 136315138;
        v97 = sub_1000075D4(v93, v92, &v103._countAndFlagsBits);

        *(v95 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v94, v88, "%s", v95, 0xCu);
        sub_100006114(v96);
      }

      else
      {
      }

      return v12;
    }
  }

  return a1;
}

void sub_1000A05E8(void **a1, uint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  v9 = *a1;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    if (sub_1000A2930(v11))
    {
      if ((*(a2 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) & 1) == 0)
      {
        sub_1000A29FC(v11);
        v14 = v13;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        sub_10000A238(0, &qword_10018E6D0);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [a5 setViews:isa];
      }
    }

    else if ((*(a2 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) & 1) == 0)
    {
      sub_10000A238(0, &qword_10018E6D0);
      v27 = Array._bridgeToObjectiveC()().super.isa;
      [a5 setViews:v27];
    }

    return;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = v9;
  v19 = [v17 viewId];
  if (!v19)
  {
    goto LABEL_23;
  }

  v32 = v18;
  v20 = a5;
  v21 = v19;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == 0xD000000000000015 && 0x80000001001183E0 == v24)
  {

    a5 = v20;
    v18 = v32;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a5 = v20;
    v18 = v32;
    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!*(a2 + OBJC_IVAR___SRSiriSystemUIController_lockState))
  {
LABEL_23:

LABEL_24:
    if (sub_1000A2930(v9))
    {
      if ((*(a2 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) & 1) == 0)
      {
        v29 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        sub_10000A238(0, &qword_10018E6D0);

        v30 = Array._bridgeToObjectiveC()().super.isa;

        [a5 setViews:v30];

        *(a2 + OBJC_IVAR___SRSiriSystemUIController_didHaveSpeakableText) = 1;
      }
    }

    else if ((*(a2 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) & 1) == 0 && (*(a2 + OBJC_IVAR___SRSiriSystemUIController_didHaveSpeakableText) & 1) == 0)
    {
      sub_10000A238(0, &qword_10018E6D0);
      v31 = Array._bridgeToObjectiveC()().super.isa;
      [a5 setViews:v31];
    }

    return;
  }

  v28 = OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity;
  *(a2 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) = 1;
  sub_1000A229C();

  if (*(a2 + OBJC_IVAR___SRSiriSystemUIController_isInAmbient) == 1)
  {
    *a3 = 1;
    *(a2 + v28) = 0;
  }
}

void sub_1000A09C8(void **a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *a1;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = v7;
  if (v8)
  {
    v10 = [v8 viewId];
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == 0xD000000000000010 && 0x8000000100118400 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
LABEL_8:
        if (*(a3 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) != 1)
        {
          v17 = sub_1000A2930(v8);
          v18 = sub_1000A2C28(v8);
          if (v18)
          {
            v19 = v18;
LABEL_11:
            v20 = v19;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v9 = v20;
            goto LABEL_24;
          }

          if (v17)
          {
            if (*a2 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_24;
              }
            }

            else if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            sub_1000A29FC(v8);
            v19 = v22;
            goto LABEL_11;
          }

LABEL_24:

          *a4 = 1;
          return;
        }
      }
    }

    v21 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_1000A0CB4()
{
  v1 = v0;
  v2 = OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion;
  v3 = *(v0 + OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of ProminentPresentationAssertion.invalidate()();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR___SRSiriSystemUIController_sessionListener;
  v6 = *(v1 + OBJC_IVAR___SRSiriSystemUIController_sessionListener);
  if (v6)
  {
    [v6 invalidate];
  }

  *(v1 + v5) = 0;
  swift_unknownObjectRelease();

  return swift_unknownObjectWeakAssign();
}

void sub_1000A0D98(char *a1)
{
  if (a1[OBJC_IVAR___SRSiriSystemUIController_systemUIDevice] == 1 && *&a1[OBJC_IVAR___SRSiriSystemUIController_viewMode] == 7)
  {
    v2 = a1;
    sub_1000A0EF4();
  }
}

void sub_1000A0EF4()
{
  if (*(v0 + OBJC_IVAR___SRSiriSystemUIController_systemUIDevice) == 1)
  {
    v1 = v0;
    if (*(v0 + OBJC_IVAR___SRSiriSystemUIController_viewMode) == 7)
    {
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100006160(v2, qword_10018EE28);
      v3 = static os_log_type_t.info.getter();
      v22 = 0xD000000000000012;
      v23 = 0x80000001001182B0;
      v4 = sub_100006198(0x40000000uLL);
      if (v5)
      {
        v20 = 32;
        v21 = 0xE100000000000000;
        String.append(_:)(*&v4);

        v6._countAndFlagsBits = 32;
        v6._object = 0xE100000000000000;
        String.append(_:)(v6);
      }

      if (("collapseSystemUI()" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v20 = 32;
        v21 = 0xE100000000000000;
        v7._countAndFlagsBits = 0xD00000000000001ALL;
        v7._object = 0x80000001001182D0;
        String.append(_:)(v7);
        v8._countAndFlagsBits = 32;
        v8._object = 0xE100000000000000;
        String.append(_:)(v8);
      }

      v10 = v22;
      v9 = v23;
      v11 = Logger.logObject.getter();
      if (os_log_type_enabled(v11, v3))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136315138;
        v14 = sub_1000075D4(v10, v9, &v20);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
        sub_100006114(v13);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong controllerRequestSystemApertureCollapse];
        swift_unknownObjectRelease();
      }

      v16 = OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion;
      v17 = *(v1 + OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion);
      if (v17)
      {
        v18 = v17;
        dispatch thunk of ProminentPresentationAssertion.invalidate()();

        v17 = *(v1 + v16);
      }

      *(v1 + v16) = 0;

      v19 = (v1 + OBJC_IVAR___SRSiriSystemUIController_activityId);
      *v19 = 0;
      v19[1] = 0;
    }
  }
}

void sub_1000A1208()
{
  v1 = *(v0 + OBJC_IVAR___SRSiriSystemUIController_activityId + 8);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR___SRSiriSystemUIController_activityId);
  v4 = OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion;
  v5 = *(v0 + OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion);
  if (v5)
  {

    v6 = v5;
    v7 = dispatch thunk of ProminentPresentationAssertion.snaSessionIdentifier.getter();
    v9 = v8;

    if (v3 == v7 && v1 == v9)
    {

LABEL_22:

      return;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  _StringGuts.grow(_:)(47);

  v12._countAndFlagsBits = v3;
  v12._object = v1;
  String.append(_:)(v12);
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006160(v13, qword_10018EE28);
  v14 = static os_log_type_t.info.getter();
  v34 = 0xD000000000000019;
  v35 = 0x8000000100118220;
  v15 = sub_100006198(0x40000000uLL);
  if (v16)
  {
    v32 = 32;
    v33 = 0xE100000000000000;
    String.append(_:)(*&v15);

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
  }

  v18 = (0x8000000100118240 >> 56) & 0xF;
  if ((0x8000000100118240 & 0x2000000000000000) == 0)
  {
    v18 = 45;
  }

  if (v18)
  {
    v32 = 32;
    v33 = 0xE100000000000000;
    v19._countAndFlagsBits = 0xD00000000000002DLL;
    v19._object = 0x8000000100118240;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
  }

  v22 = v34;
  v21 = v35;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, v14))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    v26 = sub_1000075D4(v22, v21, &v32);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v23, v14, "%s", v24, 0xCu);
    sub_100006114(v25);
  }

  else
  {
  }

  v27 = *(v2 + v4);
  if (v27)
  {
    v28 = v27;
    dispatch thunk of ProminentPresentationAssertion.invalidate()();

    v27 = *(v2 + v4);
  }

  *(v2 + v4) = 0;

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = objc_allocWithZone(type metadata accessor for ProminentPresentationAssertion());
  v30 = ProminentPresentationAssertion.init(explanation:activityIdentifier:duration:invalidationHandler:)();
  v31 = *(v2 + v4);
  *(v2 + v4) = v30;

  sub_1000A19CC();
}

void sub_1000A1614()
{
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006160(v0, qword_10018EE28);
  v1 = static os_log_type_t.info.getter();
  v28 = 0xD000000000000019;
  v29 = 0x8000000100118220;
  v2 = sub_100006198(0x40000000uLL);
  if (v3)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    String.append(_:)(*&v2);

    v4._countAndFlagsBits = 32;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
  }

  if (("Siri Requested Expansion" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    v5._countAndFlagsBits = 0xD00000000000001FLL;
    v5._object = 0x8000000100118290;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  v8 = v28;
  v7 = v29;
  v9 = Logger.logObject.getter();
  if (os_log_type_enabled(v9, v1))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v12 = sub_1000075D4(v8, v7, &v30);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v9, v1, "%s", v10, 0xCu);
    sub_100006114(v11);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *&Strong[OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion];
    *&Strong[OBJC_IVAR___SRSiriSystemUIController_currentProminentAssertion] = 0;
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    v30 = 0xD000000000000019;
    v31 = 0x8000000100118220;
    v16 = sub_100006198(0x40000000uLL);
    if (v17)
    {
      v26 = 32;
      v27 = 0xE100000000000000;
      String.append(_:)(*&v16);

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
    }

    if (("com.apple.springboard" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v26 = 32;
      v27 = 0xE100000000000000;
      v19._countAndFlagsBits = 0xD00000000000001BLL;
      v19._object = 0x80000001001181E0;
      String.append(_:)(v19);
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
    }

    v22 = v30;
    v21 = v31;
    v14 = Logger.logObject.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315138;
      v25 = sub_1000075D4(v22, v21, &v26);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s", v23, 0xCu);
      sub_100006114(v24);
    }

    else
    {
    }
  }
}

void sub_1000A19CC()
{
  v1 = *(v0 + OBJC_IVAR___SRSiriSystemUIController_activityId + 8);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR___SRSiriSystemUIController_activityId);
    v4 = OBJC_IVAR___SRSiriSystemUIController_sessionListener;
    v5 = *(v0 + OBJC_IVAR___SRSiriSystemUIController_sessionListener);

    if (v5)
    {
      [v5 invalidate];
    }

    v27 = v4;
    *(v2 + v4) = 0;
    swift_unknownObjectRelease();
    _StringGuts.grow(_:)(44);

    v6._countAndFlagsBits = v3;
    v6._object = v1;
    String.append(_:)(v6);
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006160(v7, qword_10018EE28);
    v8 = static os_log_type_t.info.getter();
    aBlock = 0xD000000000000016;
    v29 = 0x8000000100118170;
    v9 = sub_100006198(0x40000000uLL);
    if (v10)
    {
      v34 = 32;
      v35 = 0xE100000000000000;
      String.append(_:)(*&v9);

      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
    }

    v12 = (0x8000000100118190 >> 56) & 0xF;
    if ((0x8000000100118190 & 0x2000000000000000) == 0)
    {
      v12 = 42;
    }

    if (v12)
    {
      v34 = 32;
      v35 = 0xE100000000000000;
      v13._countAndFlagsBits = 0xD00000000000002ALL;
      v13._object = 0x8000000100118190;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 32;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
    }

    v16 = aBlock;
    v15 = v29;
    v17 = Logger.logObject.getter();
    if (os_log_type_enabled(v17, v8))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;
      v20 = sub_1000075D4(v16, v15, &v34);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v17, v8, "%s", v18, 0xCu);
      sub_100006114(v19);
    }

    else
    {
    }

    v21 = [objc_allocWithZone(ACActivityPresentationListener) init];
    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_1000A2810;
    v33 = v24;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1000A2248;
    v31 = &unk_1001696F8;
    v25 = _Block_copy(&aBlock);

    v26 = [v21 listenForActivityPresentation:v22 presenterBundleIdentifier:v23 withHandler:v25];

    _Block_release(v25);
    *(v2 + v27) = v26;
    swift_unknownObjectRelease();
  }
}

void sub_1000A1DBC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006160(v3, qword_10018EE28);
    v4 = static os_log_type_t.error.getter();
    v32 = 0xD000000000000016;
    v33 = 0x8000000100118170;
    v5 = sub_100006198(0x40000000uLL);
    if (v6)
    {
      v30 = 32;
      v31 = 0xE100000000000000;
      String.append(_:)(*&v5);

      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    if (("com.apple.springboard" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v30 = 32;
      v31 = 0xE100000000000000;
      v8._countAndFlagsBits = 0xD00000000000001BLL;
      v8._object = 0x80000001001181E0;
      String.append(_:)(v8);
      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
    }

    v11 = v32;
    v10 = v33;
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v4))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      v15 = sub_1000075D4(v11, v10, &v30);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v12, v4, "%s", v13, 0xCu);
      sub_100006114(v14);

      goto LABEL_31;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (a1 <= 2)
  {
    if (a1 <= 2)
    {
LABEL_18:

      return;
    }

    goto LABEL_19;
  }

  if (a1 > 4)
  {
    if (a1 == 5 || a1 == 6)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = Strong;
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006160(v17, qword_10018EE28);
    v18 = static os_log_type_t.error.getter();
    v32 = 0xD000000000000016;
    v33 = 0x8000000100118170;
    v19 = sub_100006198(0x40000000uLL);
    if (v20)
    {
      v30 = 32;
      v31 = 0xE100000000000000;
      String.append(_:)(*&v19);

      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
    }

    if (("unexpectedly found nil self" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v30 = 32;
      v31 = 0xE100000000000000;
      v22._object = 0x8000000100118200;
      v22._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
    }

    v25 = v32;
    v24 = v33;
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v18))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      v28 = sub_1000075D4(v25, v24, &v30);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v12, v18, "%s", v26, 0xCu);
      sub_100006114(v27);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a1 != 3)
  {
    goto LABEL_18;
  }

  v12 = Strong;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    [v29 controllerRequestSiriDismissal];

    swift_unknownObjectRelease();
    return;
  }

LABEL_31:
}

uint64_t sub_1000A2248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1000A229C()
{
  if (*(v0 + OBJC_IVAR___SRSiriSystemUIController_lockState))
  {
    v1 = v0;
    if (*(v0 + OBJC_IVAR___SRSiriSystemUIController_activityId + 8) && *(v0 + OBJC_IVAR___SRSiriSystemUIController_shouldIgnoreLiveActivity) != 1)
    {
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006160(v16, qword_10018EE28);
      v17 = static os_log_type_t.info.getter();
      v36 = 0xD000000000000020;
      v37 = 0x80000001001180C0;
      v18 = sub_100006198(0x40000000uLL);
      if (v19)
      {
        v34 = 32;
        v35 = 0xE100000000000000;
        String.append(_:)(*&v18);

        v20._countAndFlagsBits = 32;
        v20._object = 0xE100000000000000;
        String.append(_:)(v20);
      }

      if ((" on lock screen. Resetting." & 0x2F00000000000000) != 0x2000000000000000)
      {
        v34 = 32;
        v35 = 0xE100000000000000;
        v21._countAndFlagsBits = 0xD000000000000033;
        v21._object = 0x8000000100118130;
        String.append(_:)(v21);
        v22._countAndFlagsBits = 32;
        v22._object = 0xE100000000000000;
        String.append(_:)(v22);
      }

      v24 = v36;
      v23 = v37;
      v25 = Logger.logObject.getter();
      if (os_log_type_enabled(v25, v17))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v34 = v27;
        *v26 = 136315138;
        v28 = sub_1000075D4(v24, v23, &v34);

        *(v26 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v25, v17, "%s", v26, 0xCu);
        sub_100006114(v27);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong controllerRequestTapsShared:1];
        swift_unknownObjectRelease();
      }

      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        [v32 controllerRequestSiriBlurHidden:1];
        swift_unknownObjectRelease();
      }

      v33 = swift_unknownObjectWeakLoadStrong();
      if (v33)
      {
        [v33 controllerRequestScreenClearedWithClearASR:1];
        swift_unknownObjectRelease();
      }

      *(v1 + OBJC_IVAR___SRSiriSystemUIController_hasUpdatedForLockScreen) = 1;
    }

    else
    {
      v2 = OBJC_IVAR___SRSiriSystemUIController_hasUpdatedForLockScreen;
      if (*(v0 + OBJC_IVAR___SRSiriSystemUIController_hasUpdatedForLockScreen) == 1)
      {
        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        sub_100006160(v3, qword_10018EE28);
        v4 = static os_log_type_t.info.getter();
        v36 = 0xD000000000000020;
        v37 = 0x80000001001180C0;
        v5 = sub_100006198(0x40000000uLL);
        if (v6)
        {
          v34 = 32;
          v35 = 0xE100000000000000;
          String.append(_:)(*&v5);

          v7._countAndFlagsBits = 32;
          v7._object = 0xE100000000000000;
          String.append(_:)(v7);
        }

        if (("onForLockState()" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v34 = 32;
          v35 = 0xE100000000000000;
          v8._countAndFlagsBits = 0xD00000000000003BLL;
          v8._object = 0x80000001001180F0;
          String.append(_:)(v8);
          v9._countAndFlagsBits = 32;
          v9._object = 0xE100000000000000;
          String.append(_:)(v9);
        }

        v11 = v36;
        v10 = v37;
        v12 = Logger.logObject.getter();
        if (os_log_type_enabled(v12, v4))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v34 = v14;
          *v13 = 136315138;
          v15 = sub_1000075D4(v11, v10, &v34);

          *(v13 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v12, v4, "%s", v13, 0xCu);
          sub_100006114(v14);
        }

        else
        {
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          [v29 controllerRequestSiriBlurHidden:0];
          swift_unknownObjectRelease();
        }

        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          [v30 controllerRequestTapsShared:0];
          swift_unknownObjectRelease();
        }

        *(v1 + v2) = 0;
      }
    }
  }
}

uint64_t sub_1000A2820(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000AC5A4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000A2930(void *a1)
{
  v2 = [a1 speakableText];
  v3 = v2;
  if (v2)
  {
  }

  v4 = [a1 dialog];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 content];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 speakableTextOverride];
      v9 = v8 != 0;
      if (v8)
      {
      }
    }

    else
    {
      v9 = 0;
      v7 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v3 || v9;
}

void sub_1000A29FC(void *a1)
{
  v2 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  v3 = [a1 speakableText];
  if (v3)
  {

    v4 = v2;
    v5 = [a1 speakableText];
LABEL_9:
    [v2 setSpeakableText:v5];

    goto LABEL_10;
  }

  v6 = [a1 dialog];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 content];

  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = [v8 speakableTextOverride];

  if (!v9)
  {
LABEL_10:
    v14 = v2;
    v15 = [a1 aceId];
    [v14 setAceId:v15];

    v16 = [a1 dialog];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 dialogIdentifier];

      [v14 setDialogIdentifier:v18];
      [v14 setCanUseServerTTS:1];
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = v2;
  v11 = [a1 dialog];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [v11 content];

  if (v13)
  {
    v5 = [v13 speakableTextOverride];

    goto LABEL_9;
  }

LABEL_16:
  __break(1u);
}

id sub_1000A2C28(void *a1)
{
  v1 = a1;
  if (![a1 siriui_card])
  {
    goto LABEL_33;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
LABEL_32:
    swift_unknownObjectRelease();
LABEL_33:
    v24 = v1;
    return v1;
  }

  v3 = v2;
  v4 = &_swiftEmptyArrayStorage;
  v60 = &_swiftEmptyArrayStorage;
  result = [v2 backingCard];
  if (result)
  {
    v6 = result;
    v7 = [result cardSections];

    if (v7)
    {
      sub_10000A238(0, &qword_10018E480);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LOBYTE(v7) = v9 != 0;
      if (v9)
      {
        v53 = v3;
        v54 = v1;
        v10 = 0;
        v11 = 0;
        v1 = (v8 & 0xC000000000000001);
        while (2)
        {
          v55 = v10;
          while (1)
          {
            if (v1)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_47;
              }

              v12 = *(v8 + 8 * v11 + 32);
            }

            v13 = v12;
            v3 = (v11 + 1);
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            sub_10000A238(0, &qword_10018E488);
            if ([v13 isKindOfClass:swift_getObjCClassFromMetadata()])
            {
              break;
            }

            v7 = v13;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v4 = v60;

            ++v11;
            if (v3 == v9)
            {
              LOBYTE(v7) = v55;
              v1 = v54;
              v3 = v53;
              goto LABEL_24;
            }
          }

          v10 = 1;
          ++v11;
          if (v3 != v9)
          {
            continue;
          }

          break;
        }

        v1 = v54;
        v3 = v53;
        LOBYTE(v7) = 1;
      }

LABEL_24:

      if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
      {
LABEL_26:
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_27:
          if (v7)
          {
            sub_10000A238(0, &qword_10018E480);
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v3 setCardSections:isa];

            v15 = [objc_allocWithZone(SACardSnippet) init];
            [v15 setSash:0];
            v16 = SAAceViewUIItemTypeItemTypeResultValue;
            v17 = v15;
            [v17 setItemType:v16];
            v18 = [objc_allocWithZone(_SFPBCard) initWithFacade:v3];
            if (v18)
            {
              v19 = v18;
              v20 = [v18 data];

              if (v20)
              {
                v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v23 = v22;

                v20 = Data._bridgeToObjectiveC()().super.isa;
                sub_10001717C(v21, v23);
              }
            }

            else
            {
              v20 = 0;
            }

            [v17 setCardData:v20];

            v25 = [v1 referencedCommands];
            [v17 setReferencedCommands:v25];

            v26 = [v1 speakableText];
            [v17 setSpeakableText:v26];

            if (qword_10018D798 != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            sub_100006160(v27, qword_10018EE28);
            v28 = static os_log_type_t.info.getter();
            v58 = 0xD000000000000014;
            v59 = 0x8000000100118420;
            v29 = sub_100006198(0x40000000uLL);
            if (v30)
            {
              v56 = 32;
              v57 = 0xE100000000000000;
              String.append(_:)(*&v29);

              v31._countAndFlagsBits = 32;
              v31._object = 0xE100000000000000;
              String.append(_:)(v31);
            }

            if (("redactContent(from:)" & 0x2F00000000000000) != 0x2000000000000000)
            {
              v56 = 32;
              v57 = 0xE100000000000000;
              v32._countAndFlagsBits = 0xD00000000000002ALL;
              v32._object = 0x8000000100118440;
              String.append(_:)(v32);
              v33._countAndFlagsBits = 32;
              v33._object = 0xE100000000000000;
              String.append(_:)(v33);
            }

            v35 = v58;
            v34 = v59;
            v36 = Logger.logObject.getter();
            if (os_log_type_enabled(v36, v28))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v56 = v38;
              *v37 = 136315138;
              v39 = sub_1000075D4(v35, v34, &v56);

              *(v37 + 4) = v39;
              _os_log_impl(&_mh_execute_header, v36, v28, "%s", v37, 0xCu);
              sub_100006114(v38);

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            return v17;
          }

          goto LABEL_32;
        }

LABEL_49:
        if (qword_10018D798 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100006160(v40, qword_10018EE28);
        v41 = static os_log_type_t.info.getter();
        v58 = 0xD000000000000014;
        v59 = 0x8000000100118420;
        v42 = sub_100006198(0x40000000uLL);
        if (v43)
        {
          v56 = 32;
          v57 = 0xE100000000000000;
          String.append(_:)(*&v42);

          v44._countAndFlagsBits = 32;
          v44._object = 0xE100000000000000;
          String.append(_:)(v44);
        }

        if (("pet for music alternatives" & 0x2F00000000000000) != 0x2000000000000000)
        {
          v56 = 32;
          v57 = 0xE100000000000000;
          v45._countAndFlagsBits = 0xD00000000000003CLL;
          v45._object = 0x8000000100118470;
          String.append(_:)(v45);
          v46._countAndFlagsBits = 32;
          v46._object = 0xE100000000000000;
          String.append(_:)(v46);
        }

        v48 = v58;
        v47 = v59;
        v49 = Logger.logObject.getter();
        if (os_log_type_enabled(v49, v41))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v56 = v51;
          *v50 = 136315138;
          v52 = sub_1000075D4(v48, v47, &v56);

          *(v50 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v49, v41, "%s", v50, 0xCu);
          sub_100006114(v51);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return 0;
      }
    }

    else if (!(&_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_26;
    }

LABEL_48:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

  __break(1u);
  return result;
}

void sub_1000A3458(unint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1000A09C8(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1000A355C(void *a1)
{
  v1 = [a1 views];
  if (v1)
  {
    v2 = v1;
    sub_10000A238(0, &qword_10018E6D0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = [v9 dialogIdentifier];
          if (v10)
          {
            v11 = v10;

            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;

            v19[0] = v12;
            v19[1] = v14;
            __chkstk_darwin(v15);
            v18[2] = v19;
            v16 = sub_10009F440(sub_1000A37C4, v18, &off_100169088);

            return v16 & 1;
          }
        }

        ++v5;
        if (v8 == i)
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

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000A3754(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000A37E4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(), sub_1000A3A94(&qword_10018E4C0, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason), v5 = dispatch thunk of Hashable._rawHashValue(seed:)(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, v17 = a2 + 56, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v16 = a1;
    v14 = ~v6;
    v8 = *(v4 - 8);
    v15 = v8[2];
    v9 = v8[8];
    v10 = v8[9];
    v11 = (v8 + 1);
    do
    {
      __chkstk_darwin();
      v15(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *(a2 + 48) + v10 * v7, v4);
      sub_1000A3A94(&qword_10018E4C8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v11)(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v12)
      {
        break;
      }

      v7 = (v7 + 1) & v14;
    }

    while (((*(v17 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

id GenerativeModelsCompatabilityWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsCompatabilityWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id GenerativeModelsCompatabilityWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsCompatabilityWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A3A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A3ADC()
{
  sub_100093B6C(&qword_10018E590);
  result = String.init<A>(describing:)();
  qword_10018E4D0 = result;
  *algn_10018E4D8 = v1;
  return result;
}

uint64_t sub_1000A3B30(char a1, double a2)
{
  _StringGuts.grow(_:)(36);
  if (qword_10018D778 != -1)
  {
    swift_once();
  }

  v4 = qword_10018E4D0;

  v5._object = 0x8000000100118840;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0x7473656D6974202CLL;
  v9._object = 0xEC0000003A706D61;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_1000A3C88(a2);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v4;
}

uint64_t sub_1000A3C88(double a1)
{
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100093B6C(&qword_10018E5B0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  *v16 = a1;
  static Locale.autoupdatingCurrent.getter();
  sub_1000A8FC8();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  FloatingPointFormatStyle.precision(_:)();
  (*(v3 + 8))(v5, v2);
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_1000A901C();
  BinaryFloatingPoint.formatted<A>(_:)();
  v14(v13, v7);
  v16[0] = v16[2];
  v16[1] = v16[3];
  return String.init<A>(_:)();
}

uint64_t sub_1000A3F28()
{
  sub_100093B6C(&qword_10018E588);
  result = String.init<A>(describing:)();
  qword_10018E4E0 = result;
  *algn_10018E4E8 = v1;
  return result;
}

uint64_t sub_1000A3F7C(uint64_t a1)
{
  if (a1)
  {
    v6 = 0;
    _StringGuts.grow(_:)(29);
    if (qword_10018D780 != -1)
    {
      swift_once();
    }

    String.append(_:)(xmmword_10018E4E0);
    v1._object = 0x8000000100118820;
    v1._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v1);
    sub_100093B6C(&qword_10018E580);
    _print_unlocked<A, B>(_:_:)();
    v2 = 41;
    v3 = 0xE100000000000000;
  }

  else
  {
    _StringGuts.grow(_:)(45);
    if (qword_10018D780 != -1)
    {
      swift_once();
    }

    v4 = xmmword_10018E4E0;

    v6 = v4;
    v2 = 0xD00000000000002BLL;
    v3 = 0x80000001001187F0;
  }

  String.append(_:)(*&v2);
  return v6;
}

uint64_t sub_1000A4110()
{
  type metadata accessor for SiriQuickTypeGestureActivationManager();
  sub_100093B6C(&qword_10018E5C8);
  result = String.init<A>(describing:)();
  qword_10018E4F0 = result;
  *algn_10018E4F8 = v1;
  return result;
}

id SiriQuickTypeGestureActivationManager.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = -1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = -1;
  v1 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
  v2 = sub_100093B6C(&qword_10018D7A8);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight) = 0;
  v3 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_attentionAwarenessClient;
  v4 = [objc_allocWithZone(AWAttentionAwarenessClient) init];
  v5 = [objc_allocWithZone(AWAttentionAwarenessConfiguration) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setIdentifier:v6];

  [v5 setEventMask:128];
  [v4 setConfiguration:v5];

  *(v0 + v3) = v4;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SiriQuickTypeGestureActivationManager();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t type metadata accessor for SiriQuickTypeGestureActivationManager()
{
  result = qword_10018E568;
  if (!qword_10018E568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriQuickTypeGestureActivationManager.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_attentionAwarenessClient;
  v3 = *(v0 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_attentionAwarenessClient);
  v14 = 0;
  if ([v3 invalidateWithError:&v14])
  {
    v4 = v14;
  }

  else
  {
    v5 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10018D790 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006160(v6, qword_100190358);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v9 = 136315394;
      if (qword_10018D788 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v14);
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "#activation #quickTypeGate %s: attention awareness client invalidation failed with error: %@", v9, 0x16u);
      sub_1000A8C60(v10, &qword_10018E520);

      sub_100006114(v11);
    }

    else
    {
    }
  }

  sub_1000A7EB8(*(v1 + 112), *(v1 + 120), *(v1 + 128));
  sub_1000A7EB8(*(v1 + 136), *(v1 + 144), *(v1 + 152));
  sub_1000A8C60(v1 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture, &qword_10018E518);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SiriQuickTypeGestureActivationManager.__deallocating_deinit()
{
  SiriQuickTypeGestureActivationManager.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()()
{
  v1[5] = v0;
  v2 = sub_100093B6C(&qword_10018E528);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_100093B6C(&qword_10018E518);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000A475C, v0, 0);
}

uint64_t sub_1000A475C()
{
  v23 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight;
  if (*(v1 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight))
  {
    if (qword_10018D790 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006160(v3, qword_100190358);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      if (qword_10018D788 != -1)
      {
        swift_once();
      }

      *(v6 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v22);
      _os_log_impl(&_mh_execute_header, v4, v5, "#activation #quickTypeGate %s: face detection already in flight - skipping prewarm", v6, 0xCu);
      sub_100006114(v7);
    }
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = *(v1 + 136);
    v13 = *(v1 + 144);
    v14 = *(v1 + 112);
    v15 = *(v1 + 120);
    *(v1 + 112) = v12;
    *(v1 + 120) = v13;
    v16 = *(v1 + 152);
    v17 = *(v1 + 128);
    *(v1 + 128) = v16;
    sub_1000A8598(v12, v13, v16);
    sub_1000A7EB8(v14, v15, v17);
    *(v1 + v2) = 1;
    (*(v11 + 104))(v9, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v10);
    AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
    v18 = sub_100093B6C(&qword_10018D7A8);
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    v19 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    swift_beginAccess();
    sub_1000A85C4(v8, v1 + v19);
    swift_endAccess();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000A4A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100093B6C(&qword_10018E5A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = sub_1000A8634();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = v12;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  swift_retain_n();
  sub_1000AE2A8(0, 0, v10, &unk_1000F7958, v14);
}

uint64_t sub_1000A4C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100096D48;

  return sub_1000A6F10(a5);
}

uint64_t sub_1000A4E44(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000A4EEC;

  return SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()();
}

uint64_t sub_1000A4EEC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t SiriQuickTypeGestureActivationManager.cancelPrewarmForFirstTapOfQuickTypeToSiriGesture()()
{
  *(v1 + 48) = v0;
  sub_100093B6C(&qword_10018E518);
  *(v1 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000A50F0, v0, 0);
}

uint64_t sub_1000A50F0()
{
  v27 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight;
  if (*(v1 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_attentionAwarenessClient);
    v0[5] = 0;
    v4 = [v3 cancelPollForAttentionWithError:v0 + 5];
    v5 = v0[5];
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v12 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10018D790 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006160(v13, qword_100190358);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v16 = 136315394;
        if (qword_10018D788 != -1)
        {
          swift_once();
        }

        *(v16 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v26);
        *(v16 + 12) = 2112;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v19;
        *v17 = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "#activation #quickTypeGate %s: error cancelling polling: %@", v16, 0x16u);
        sub_1000A8C60(v17, &qword_10018E520);

        sub_100006114(v18);
      }

      else
      {
      }
    }

    v20 = v0[6];
    v21 = v0[7];
    v22 = sub_100093B6C(&qword_10018D7A8);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    swift_beginAccess();
    sub_1000A85C4(v21, v20 + v23);
    swift_endAccess();
    *(v1 + v2) = 0;
  }

  else
  {
    if (qword_10018D790 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006160(v7, qword_100190358);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      if (qword_10018D788 != -1)
      {
        swift_once();
      }

      *(v10 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v26);
      _os_log_impl(&_mh_execute_header, v8, v9, "#activation #quickTypeGate %s: no face detection in-flight - skipping cancel", v10, 0xCu);
      sub_100006114(v11);
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000A56E8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000A91E8;

  return SiriQuickTypeGestureActivationManager.cancelPrewarmForFirstTapOfQuickTypeToSiriGesture()();
}

uint64_t SiriQuickTypeGestureActivationManager.canActivate()()
{
  v1[11] = v0;
  v2 = sub_100093B6C(&qword_10018E530);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  sub_100093B6C(&qword_10018E518);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = sub_100093B6C(&qword_10018D7A8);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000A5908, v0, 0);
}

uint64_t sub_1000A5908()
{
  v30 = v0;
  v1 = v0[11];
  v2 = *(v1 + 128);
  if (v2 == 255 || (v2 & 1) != 0)
  {
LABEL_5:
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    v9 = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    v0[20] = OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_latestFaceDetectionResultFuture;
    swift_beginAccess();
    sub_100099924(v1 + v9, v8, &qword_10018E518);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_1000A8C60(v0[16], &qword_10018E518);
      if (qword_10018D790 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006160(v10, qword_100190358);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136315138;
        if (qword_10018D788 != -1)
        {
          swift_once();
        }

        *(v13 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v29);
        _os_log_impl(&_mh_execute_header, v11, v12, "#activation #quickTypeGate %s: Noticed call to canActivate() without a previous call to prewarmForFirstTapOfQuickTypeToSiriGesture(). It's recommended to call prewarm prior to canActivate to speed up canActivate.", v13, 0xCu);
        sub_100006114(v14);
      }

      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v15[1] = sub_1000A65E4;

      return SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()();
    }

    else
    {
      v17 = v0[11];
      (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
      AsyncThrowingStream.makeAsyncIterator()();
      v18 = sub_1000A8634();
      v19 = swift_task_alloc();
      v0[21] = v19;
      *v19 = v0;
      v19[1] = sub_1000A5E60;
      v20 = v0[12];

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 8, v17, v18, v20, v0 + 10);
    }
  }

  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = CFAbsoluteTimeGetCurrent() - v4;
  if (v5 > 0.2)
  {
    v1 = v0[11];
    goto LABEL_5;
  }

  if (qword_10018D790 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006160(v21, qword_100190358);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v24 = 136315394;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v29);
    *(v24 + 12) = 2080;
    v25 = sub_1000A3C88(v5 * 1000.0);
    v27 = sub_1000075D4(v25, v26, &v29);

    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "#activation #quickTypeGate %s: using previous observation (age: %sms)", v24, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000A868C(v3 & 1);

  v28 = v0[1];

  return v28(v3 & 1);
}

uint64_t sub_1000A5E60()
{
  v2 = *v1;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_1000A68A0;
  }

  else
  {
    v4 = sub_1000A5F74;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000A5F74()
{
  v21 = v0;
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
LABEL_14:
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    (*(v14 + 8))(v13, v15);
    v16 = *(v0 + 160);
    v17 = *(v0 + 120);
    v18 = *(v0 + 88);
    (*(*(v0 + 144) + 56))(v17, 1, 1, *(v0 + 136));
    swift_beginAccess();
    sub_1000A85C4(v17, v18 + v16);
    swift_endAccess();

    v19 = *(v0 + 8);

    return v19(v1 & 1);
  }

  v2 = *(v0 + 72);
  v3 = CFAbsoluteTimeGetCurrent() - v2;
  if (v3 <= 0.2)
  {
    sub_1000A868C(v1 & 1);
    goto LABEL_14;
  }

  if (qword_10018D790 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006160(v4, qword_100190358);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    *(v7 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v20);
    *(v7 + 12) = 2080;
    v8 = sub_1000A3C88(v3 * 1000.0);
    v10 = sub_1000075D4(v8, v9, &v20);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "#activation #quickTypeGate %s: Latest face detection observation is old (%sms) -> starting new detection", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_1000A62C4;

  return SiriQuickTypeGestureActivationManager.prewarmForFirstTapOfQuickTypeToSiriGesture()();
}

uint64_t sub_1000A62C4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v2;
  v3[1] = sub_1000A6404;

  return SiriQuickTypeGestureActivationManager.canActivate()();
}

uint64_t sub_1000A6404(char a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1000A651C, v2, 0);
}

uint64_t sub_1000A651C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 208);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1000A65E4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 200) = v3;
  *v3 = v2;
  v3[1] = sub_1000A6724;

  return SiriQuickTypeGestureActivationManager.canActivate()();
}

uint64_t sub_1000A6724(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000A68A0()
{
  v20 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_10018D790 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006160(v1, qword_100190358);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v4 = 136315394;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    *(v4 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v19);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "#activation #quickTypeGate %s: Forcing canActivate = YES despite error: %@", v4, 0x16u);
    sub_1000A8C60(v5, &qword_10018E520);

    sub_100006114(v6);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[20];
  v15 = v0[15];
  v16 = v0[11];
  (*(v0[18] + 56))(v15, 1, 1, v0[17]);
  swift_beginAccess();
  sub_1000A85C4(v15, v16 + v14);
  swift_endAccess();

  v17 = v0[1];

  return v17(1);
}

uint64_t sub_1000A6D1C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000A6DC4;

  return SiriQuickTypeGestureActivationManager.canActivate()();
}

uint64_t sub_1000A6DC4(char a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000A6F10(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_100093B6C(&qword_10018E5A0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6FDC, 0, 0);
}

uint64_t sub_1000A6FDC()
{
  v22 = v0;
  if (qword_10018D790 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 88) = sub_100006160(v1, qword_100190358);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "#activation #quickTypeGate %s: starting to poll", v4, 0xCu);
    sub_100006114(v5);
  }

  v6 = sub_1000A7754();
  v8 = v7;
  *(v0 + 96) = 0;
  v9 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v12 = 136315394;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    *(v12 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, v21);
    *(v12 + 12) = 2080;
    v13 = sub_1000A3B30(v8 & 1, v9);
    v15 = sub_1000075D4(v13, v14, v21);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "#activation #quickTypeGate %s: polling succeeded with result: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 64);
  *(v0 + 16) = v8 & 1;
  *(v0 + 24) = v9;
  sub_100093B6C(&qword_10018E5A8);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v17 + 8))(v16, v18);
  *(v0 + 40) = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  *(v0 + 112) = v9;
  *(v0 + 104) = v8 & 1;
  v19 = *(v0 + 56);

  return _swift_task_switch(sub_1000A7528, v19, 0);
}

uint64_t sub_1000A7528()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 96) != 0;
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *(v1 + 136) = *(v0 + 104);
  v5 = *(v1 + 152);
  *(v1 + 152) = v2;
  sub_1000A7EB8(v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_isFaceDetectionInFlight) = 0;

  return _swift_task_switch(sub_1000A75BC, 0, 0);
}

uint64_t sub_1000A75BC()
{
  v14 = v0;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12] != 0;
    *(v3 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v13);
    _os_log_impl(&_mh_execute_header, v1, v2, "#activation #quickTypeGate %s: exiting beginPollingWithContinuation", v3, 0xCu);
    sub_100006114(v4);

    v8 = v6;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12] != 0;
  }

  sub_1000A7ED0(v8, v9, v10);

  v11 = v0[1];

  return v11();
}

double sub_1000A7754()
{
  Current = CFAbsoluteTimeGetCurrent();
  SRUIFInstrumentQuickTypeFaceDetectionPollingStartSignpost();
  v2 = *(v0 + OBJC_IVAR____TtC4Siri37SiriQuickTypeGestureActivationManager_attentionAwarenessClient);
  v41 = 0;
  v3 = [v2 resumeWithError:&v41];
  v4 = v41;
  v5 = &unk_10018D000;
  if (v3)
  {
    v40 = 0;
    v41 = 0;
    v6 = v4;
    v7 = [v2 pollForAttentionWithTimeout:&v41 event:&v40 error:0.5];
    v4 = v41;
    v8 = v40;
    if (v7)
    {
      v9 = v4;
      SRUIFInstrumentQuickTypeFaceDetectionPollingEndSignpost();
      v10 = CFAbsoluteTimeGetCurrent();
      if (qword_10018D790 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006160(v11, qword_100190358);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v14 = 136315394;
        if (qword_10018D788 != -1)
        {
          swift_once();
        }

        *(v14 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v41);
        *(v14 + 12) = 2080;
        v15 = sub_1000A3C88((v10 - Current) * 1000.0);
        v17 = sub_1000075D4(v15, v16, &v41);

        *(v14 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v12, v13, "#activation #quickTypeGate %s: polling succeeded in %sms", v14, 0x16u);
        swift_arrayDestroy();

        v18 = 1;
        v19 = v4;
        v5 = &unk_10018D000;
      }

      else
      {

        v18 = 1;
        v19 = v4;
      }

      goto LABEL_19;
    }

    v20 = v8;
    v19 = v4;
  }

  else
  {
    v19 = 0;
    v20 = v41;
  }

  v21 = v4;
  v18 = _convertNSErrorToError(_:)();

  swift_willThrow();
  SRUIFInstrumentQuickTypeFaceDetectionPollingEndSignpost();
  v22 = CFAbsoluteTimeGetCurrent();
  if (qword_10018D790 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006160(v23, qword_100190358);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v26 = 136315394;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    *(v26 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v41);
    *(v26 + 12) = 2080;
    v27 = sub_1000A3C88((v22 - Current) * 1000.0);
    v29 = sub_1000075D4(v27, v28, &v41);

    *(v26 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "#activation #quickTypeGate %s: polling cancelled or failed in %sms", v26, 0x16u);
    swift_arrayDestroy();

    v5 = &unk_10018D000;
  }

  else
  {
  }

LABEL_19:
  v41 = 0;
  if (![v2 suspendWithError:&v41])
  {
    v31 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v5[242] != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006160(v32, qword_100190358);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v35 = 136315394;
      if (qword_10018D788 != -1)
      {
        swift_once();
      }

      *(v35 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v41);
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v38;
      *v36 = v38;
      _os_log_impl(&_mh_execute_header, v33, v34, "#activation #quickTypeGate %s: Failed to suspend attention awareness client with error %@", v35, 0x16u);
      sub_1000A8C60(v36, &qword_10018E520);

      sub_100006114(v37);
    }

    else
    {
    }

    if (v18 == 1)
    {
      goto LABEL_21;
    }

LABEL_31:
    v41 = v18;
    sub_1000A8B60();
    swift_willThrowTypedImpl();

    return Current;
  }

  v30 = v41;
  if (v18 != 1)
  {
    goto LABEL_31;
  }

LABEL_21:
  if (v19)
  {
    [v19 eventMask];
  }

  Current = CFAbsoluteTimeGetCurrent();

  return Current;
}

uint64_t sub_1000A7E38()
{
  v0 = type metadata accessor for Logger();
  sub_1000A9184(v0, qword_100190358);
  sub_100006160(v0, qword_100190358);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A7EB8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A7ED0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A7ED0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000A7EDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100096F3C;

  return v6();
}

uint64_t sub_1000A7FC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100096F3C;

  return v7();
}

uint64_t sub_1000A80AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100099924(a3, v23 - v10, &qword_10018DFE0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000A8C60(v11, &qword_10018DFE0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000A8C60(a3, &qword_10018DFE0);

    return v21;
  }

LABEL_8:
  sub_1000A8C60(a3, &qword_10018DFE0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000A83A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000A84A0;

  return v6(a1);
}

uint64_t sub_1000A84A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A8598(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A85B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A85B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000A85C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100093B6C(&qword_10018E518);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A8634()
{
  result = qword_10018E538;
  if (!qword_10018E538)
  {
    type metadata accessor for SiriQuickTypeGestureActivationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E538);
  }

  return result;
}

void sub_1000A868C(char a1)
{
  if (qword_10018D790 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_100190358);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 136315650;
    if (qword_10018D788 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_1000075D4(qword_10018E4F0, *algn_10018E4F8, &v13);
    *(v4 + 12) = 2080;
    v5 = (a1 & 1) == 0;
    if (a1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2117454;
    }

    if (a1)
    {
      v7 = 0xE000000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    if (v5)
    {
      v8 = 20302;
    }

    else
    {
      v8 = 5457241;
    }

    if (v5)
    {
      v9 = 0xE200000000000000;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    v10 = sub_1000075D4(v6, v7, &v13);

    *(v4 + 14) = v10;
    *(v4 + 22) = 2080;
    v11 = sub_1000075D4(v8, v9, &v13);

    *(v4 + 24) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v3, "#activation #quickTypeGate %s: %sface detected -> can activate = %s", v4, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_1000A88A0()
{
  sub_1000A8960();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000A8960()
{
  if (!qword_10018E578)
  {
    sub_10009961C(&qword_10018D7A8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10018E578);
    }
  }
}

uint64_t sub_1000A89D0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1000A8A20(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000A8A74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000A8A8C(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for FaceDetectionObservation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceDetectionObservation(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000A8B60()
{
  result = qword_10018E598;
  if (!qword_10018E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E598);
  }

  return result;
}

uint64_t sub_1000A8BB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100096F3C;

  return sub_1000A6D1C(v2, v3);
}

uint64_t sub_1000A8C60(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100093B6C(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A8CC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100096F3C;

  return sub_1000A83A8(a1, v4);
}

uint64_t sub_1000A8D78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100096D48;

  return sub_1000A83A8(a1, v4);
}

uint64_t sub_1000A8E30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100096F3C;

  return sub_1000A56E8(v2, v3);
}

uint64_t sub_1000A8EDC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A8F1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100096F3C;

  return sub_1000A4E44(v2, v3);
}

unint64_t sub_1000A8FC8()
{
  result = qword_10018E5B8;
  if (!qword_10018E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E5B8);
  }

  return result;
}

unint64_t sub_1000A901C()
{
  result = qword_10018E5C0;
  if (!qword_10018E5C0)
  {
    sub_10009961C(&qword_10018E5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E5C0);
  }

  return result;
}

uint64_t sub_1000A9080(uint64_t a1)
{
  v4 = *(sub_100093B6C(&qword_10018E5A8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100096D48;

  return sub_1000A4C30(a1, v6, v7, v8, v1 + v5);
}

uint64_t *sub_1000A9184(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1000A91F4()
{
  sub_100007AC0(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
}

id sub_1000A9254()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000A928C()
{
  v1 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet;
  v2 = *(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 setAsrText:v4];

    v5 = *(v0 + v1);
    if (v5)
    {

      [v5 postSiriSpeechEvent];
    }
  }
}

uint64_t Response.getComponentTypes()()
{
  v1 = type metadata accessor for _ProtoResponse.Component();
  v50 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for _ProtoResponse.Section();
  v48 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Section();
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ComponentGroup();
  v6 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  result = Response.group.getter();
  v9 = 0;
  v10 = result + 64;
  v11 = 1 << *(result + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(result + 64);
  v14 = (v11 + 63) >> 6;
  v52 = v6 + 16;
  v15 = &_swiftEmptyArrayStorage;
  v62 = v6;
  v51 = (v6 + 8);
  v64 = v1;
  v63 = v3;
  v54 = result + 64;
  v53 = v14;
  v55 = result;
  if (v13)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v9;
    if (v13)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = v62;
        v19 = v61;
        v20 = v65;
        (*(v62 + 16))(v61, *(result + 56) + *(v62 + 72) * (v17 | (v16 << 6)), v65);
        v21 = ComponentGroup.components.getter();
        (*(v18 + 8))(v19, v20);
        v22 = *(v21 + 16);
        if (v22)
        {
          v66 = v21;
          v23 = v21 + 32;
          do
          {
            sub_1000A9B94(v23, &v71);
            sub_1000A9BF8(&v71, v72);
            Component.redactedComponent()();
            sub_100006114(&v71);
            sub_10009E928(&v67, &v68);
            sub_1000A9BF8(&v68, v69);
            DynamicType = swift_getDynamicType();
            v25 = v70;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1000AC8A0(0, *(v15 + 2) + 1, 1, v15);
            }

            v27 = *(v15 + 2);
            v26 = *(v15 + 3);
            if (v27 >= v26 >> 1)
            {
              v15 = sub_1000AC8A0((v26 > 1), v27 + 1, 1, v15);
            }

            sub_100006114(&v68);
            *(v15 + 2) = v27 + 1;
            v28 = &v15[16 * v27];
            *(v28 + 4) = DynamicType;
            *(v28 + 5) = v25;
            v23 += 40;
            --v22;
          }

          while (v22);

          v9 = v16;
          v1 = v64;
          v3 = v63;
          result = v55;
          v10 = v54;
          v14 = v53;
          if (!v13)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v9 = v16;
          v10 = v54;
          v14 = v53;
          result = v55;
          if (!v13)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v16 = v9;
      }
    }
  }

  result = Response.sections.getter();
  v29 = result;
  v55 = *(result + 16);
  if (!v55)
  {
LABEL_35:

    return v15;
  }

  v30 = 0;
  v54 = result + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v53 = v60 + 16;
  v52 = v60 + 8;
  v51 = (v48 + 8);
  v31 = (v50 + 8);
  v49 = result;
  v65 = v50 + 16;
  while (v30 < *(v29 + 16))
  {
    v32 = v60;
    v33 = *(v60 + 72);
    v62 = v30;
    v34 = v56;
    v35 = v57;
    (*(v60 + 16))(v56, v54 + v33 * v30, v57);
    v36 = v58;
    Section.proto.getter();
    (*(v32 + 8))(v34, v35);
    v37 = _ProtoResponse.Section.componentList.getter();
    (*v51)(v36, v59);
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v61 = v37;
      v40 = v37 + v39;
      v66 = *(v50 + 72);
      v41 = *(v50 + 16);
      v41(v3, v37 + v39, v1);
      while (1)
      {
        Component.redactedComponent()();
        (*v31)(v3, v1);
        sub_10009E928(&v68, &v71);
        sub_1000A9BF8(&v71, v72);
        v42 = swift_getDynamicType();
        v43 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1000AC8A0(0, *(v15 + 2) + 1, 1, v15);
        }

        v45 = *(v15 + 2);
        v44 = *(v15 + 3);
        v46 = v15;
        if (v45 >= v44 >> 1)
        {
          v46 = sub_1000AC8A0((v44 > 1), v45 + 1, 1, v15);
        }

        sub_100006114(&v71);
        *(v46 + 2) = v45 + 1;
        v15 = v46;
        v47 = &v46[16 * v45];
        *(v47 + 4) = v42;
        *(v47 + 5) = v43;
        v1 = v64;
        v3 = v63;
        v40 += v66;
        if (!--v38)
        {
          break;
        }

        v41(v63, v40, v64);
      }

      v29 = v49;
    }

    else
    {
    }

    v30 = v62 + 1;
    if (v62 + 1 == v55)
    {
      goto LABEL_35;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1000A9B94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000A9BF8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1000A9C4C()
{
  result = *(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
  if (result)
  {
    return [result postSiriEvent:3];
  }

  return result;
}

void sub_1000A9C70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
    if (v3)
    {
      v5 = v3;
      v4 = String._bridgeToObjectiveC()();
      [v5 setPlayerState:1 aceId:v4];
    }
  }
}

id sub_1000A9D0C()
{
  result = *(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
  if (result)
  {
    return [result postSiriEvent:5];
  }

  return result;
}

id sub_1000A9D30()
{
  result = *(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
  if (result)
  {
    return [result postSiriEvent:1];
  }

  return result;
}

void sub_1000A9D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_snippet);
  if (v1)
  {
    v3 = v1;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 updateSharedStateData:isa];
  }
}

void sub_1000A9E6C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  UUID.init()();
  UUID.uuidString.getter();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v6 = String._bridgeToObjectiveC()();

  [v4 setAceId:v6];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v4 setModelData:isa];

  v8 = [objc_allocWithZone(SAUIAddViews) init];
  UUID.init()();
  UUID.uuidString.getter();
  v5(v3, v0);
  v9 = String._bridgeToObjectiveC()();

  [v8 setAceId:v9];

  sub_100093B6C(&qword_10018E930);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000F79C0;
  *(v10 + 32) = v4;
  sub_1000AD1B8();
  v11 = v4;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setViews:v12];

  v13 = v8;
  sub_1000ACA7C(v13, 1, v14[1]);
}

void sub_1000AA380(void *a1)
{
  v3 = &selRef_textLabel;
  v4 = [v1 view];
  if (!v4)
  {
    return;
  }

  v45 = v4;
  type metadata accessor for SRCarPlayScrollView();
  if (!swift_dynamicCastClass() || !a1)
  {
    goto LABEL_36;
  }

  v5 = a1;
  _StringGuts.grow(_:)(34);

  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006160(v11, qword_10018EE28);
  v12 = static os_log_type_t.info.getter();
  v47 = 0xD00000000000001FLL;
  v48 = 0x8000000100118C70;
  v13 = sub_100006198(0x2000010uLL);
  if (v14)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    String.append(_:)(*&v13);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
  }

  v16 = (0x8000000100118C90 >> 56) & 0xF;
  if ((0x8000000100118C90 & 0x2000000000000000) == 0)
  {
    v16 = 32;
  }

  if (v16)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    v17._countAndFlagsBits = 0xD000000000000020;
    v17._object = 0x8000000100118C90;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
  }

  v20 = v47;
  v19 = v48;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, v12))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46._countAndFlagsBits = v23;
    *v22 = 136315138;
    v24 = sub_1000075D4(v20, v19, &v46._countAndFlagsBits);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, v12, "%s", v22, 0xCu);
    sub_100006114(v23);
    v3 = &selRef_textLabel;
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_35:

LABEL_36:

    return;
  }

  v26 = [Strong v3[138]];
  if (v26)
  {
    v27 = v26;
    type metadata accessor for SRCarPlayView();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView);
      if (v29)
      {
        v30 = OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView;
        v31 = *&v29[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_coloredPlatterView];
        if (v31)
        {
          v32 = v29;
          [v31 setBackgroundColor:v5];
          v33 = *&v29[v30];
          if (v33)
          {
            [v33 setHidden:0];
          }
        }

        else
        {
          v44 = v29;
        }

        [*&v29[OBJC_IVAR____TtC4Siri27SRCarPlaySnippetPlatterView_materialView] setHidden:1];
      }

      swift_unknownObjectRelease();
      goto LABEL_35;
    }
  }

  v34 = static os_log_type_t.error.getter();
  v47 = 0xD000000000000049;
  v48 = 0x8000000100118CC0;
  v35 = sub_100006198(0x10uLL);
  if (v36)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    String.append(_:)(*&v35);

    String.append(_:)(v46);
  }

  if (("terBackgroundMaterial(_:to:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    v37._countAndFlagsBits = 0xD000000000000041;
    v37._object = 0x8000000100118C20;
    String.append(_:)(v37);
    String.append(_:)(v46);
  }

  v39 = v47;
  v38 = v48;
  v40 = Logger.logObject.getter();
  if (os_log_type_enabled(v40, v34))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46._countAndFlagsBits = v42;
    *v41 = 136315138;
    v43 = sub_1000075D4(v39, v38, &v46._countAndFlagsBits);

    *(v41 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v40, v34, "%s", v41, 0xCu);
    sub_100006114(v42);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1000AA988(uint64_t a1)
{
  v3 = &selRef_textLabel;
  v4 = [v1 view];
  if (v4)
  {
    v33 = v4;
    type metadata accessor for SRCarPlayScrollView();
    if (swift_dynamicCastClass())
    {
      _StringGuts.grow(_:)(37);
      v5._countAndFlagsBits = 0xD000000000000023;
      v5._object = 0x8000000100118BA0;
      String.append(_:)(v5);
      v34._countAndFlagsBits = a1;
      type metadata accessor for VRXHostMaterial(0);
      _print_unlocked<A, B>(_:_:)();
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006160(v6, qword_10018EE28);
      v7 = static os_log_type_t.info.getter();
      v35 = 0xD000000000000022;
      v36 = 0x8000000100118B70;
      v8 = sub_100006198(0x2000010uLL);
      if (v9)
      {
        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        String.append(_:)(*&v8);

        v10._countAndFlagsBits = 32;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
      }

      v12 = v35;
      v11 = v36;
      v13 = Logger.logObject.getter();
      if (os_log_type_enabled(v13, v7))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v34._countAndFlagsBits = v15;
        *v14 = 136315138;
        v16 = sub_1000075D4(v12, v11, &v34._countAndFlagsBits);

        *(v14 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v13, v7, "%s", v14, 0xCu);
        sub_100006114(v15);
        v3 = &selRef_textLabel;
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_19;
      }

      v18 = [Strong v3[138]];
      if (v18)
      {
        v19 = v18;
        type metadata accessor for SRCarPlayView();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v21 = *(v20 + OBJC_IVAR____TtC4Siri13SRCarPlayView_currentSnippetPlatterView);
          if (v21)
          {
            v22 = v21;
            sub_1000BB26C(a1);
          }

          swift_unknownObjectRelease();
LABEL_19:

          return;
        }
      }

      v23 = static os_log_type_t.error.getter();
      v35 = 0xD00000000000004CLL;
      v36 = 0x8000000100118BD0;
      v24 = sub_100006198(0x10uLL);
      if (v25)
      {
        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        String.append(_:)(*&v24);

        String.append(_:)(v34);
      }

      if (("terBackgroundMaterial(_:to:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        v26._countAndFlagsBits = 0xD000000000000041;
        v26._object = 0x8000000100118C20;
        String.append(_:)(v26);
        String.append(_:)(v34);
      }

      v28 = v35;
      v27 = v36;
      v29 = Logger.logObject.getter();
      if (os_log_type_enabled(v29, v23))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34._countAndFlagsBits = v31;
        *v30 = 136315138;
        v32 = sub_1000075D4(v28, v27, &v34._countAndFlagsBits);

        *(v30 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v29, v23, "%s", v30, 0xCu);
        sub_100006114(v31);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000AB08C()
{
  v1 = v0;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  v21 = 0xD000000000000012;
  v22 = 0x8000000100118AC0;
  v4 = sub_100006198(0x2000012uLL);
  if (v5)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("delayAutodismiss()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    v7._countAndFlagsBits = 0xD000000000000037;
    v7._object = 0x8000000100118AE0;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v21;
  v9 = v22;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v19);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  v15 = v1 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v17 + 8) + 24))(v1, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000AB358()
{
  v1 = [objc_allocWithZone(SISchemaInvocation) init];
  v2 = [objc_allocWithZone(SISchemaViewContainer) init];
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_pluginSnippet);
  v5 = v4;
  if (v4)
  {
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_aceSnippet;
    swift_beginAccess();
    v5 = *(v0 + v9);
    if (!v5)
    {
      if (!v3)
      {
        v40 = 0;
        goto LABEL_37;
      }

      v13 = v3;
      v5 = 0;
LABEL_11:
      v8 = 0;
LABEL_12:
      [v3 setViewID:v8];

      if (v5)
      {
        v14 = [v5 classForCoder];
        v15 = v3;
        v16 = NSStringFromClass(v14);
        if (!v16)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = String._bridgeToObjectiveC()();
        }

        [v15 setSnippetClass:v16];

        v12 = 0;
        if (v1)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100006160(v41, qword_10018EE28);
      v42 = static os_log_type_t.error.getter();
      v55 = 0xD000000000000015;
      v56 = 0x8000000100118A30;
      v43 = sub_100006198(0x10uLL);
      if (v44)
      {
        v54._countAndFlagsBits = 32;
        v54._object = 0xE100000000000000;
        String.append(_:)(*&v43);

        v45._countAndFlagsBits = 32;
        v45._object = 0xE100000000000000;
        String.append(_:)(v45);
      }

      if (("cardSectionInvocation" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v54._countAndFlagsBits = 32;
        v54._object = 0xE100000000000000;
        v46._countAndFlagsBits = 0xD000000000000034;
        v46._object = 0x8000000100118A50;
        String.append(_:)(v46);
        v47._countAndFlagsBits = 32;
        v47._object = 0xE100000000000000;
        String.append(_:)(v47);
      }

      v49 = v55;
      v48 = v56;
      v50 = Logger.logObject.getter();
      if (os_log_type_enabled(v50, v42))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v54._countAndFlagsBits = v52;
        *v51 = 136315138;
        v53 = sub_1000075D4(v49, v48, &v54._countAndFlagsBits);

        *(v51 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v50, v42, "%s", v51, 0xCu);
        sub_100006114(v52);
      }

      else
      {
      }

      v5 = 0;
      v12 = 1;
      if (v1)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v10 = v5;
    if (v3)
    {
LABEL_3:
      v6 = v4;
      v7 = v3;
      v8 = [v5 aceId];
      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v11 = v4;
  [v5 classForCoder];
  v12 = 0;
  if (v1)
  {
LABEL_16:
    [v1 setInvocationSource:11];
  }

LABEL_17:
  v17 = v1;
  [v17 setViewContainer:v3];
  v18 = [objc_allocWithZone(SISchemaCarPlayInvocationContext) init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_24;
  }

  if (v12)
  {
    v20 = v18;
  }

  else
  {
    v21 = v18;
    v22 = [v5 sash];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 applicationBundleIdentifier];

      if (v24)
      {
        goto LABEL_23;
      }
    }
  }

  v24 = 0;
LABEL_23:
  [v19 setBundleID:v24];

LABEL_24:
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006160(v25, qword_10018EE28);
  v26 = static os_log_type_t.info.getter();
  v55 = 0xD000000000000015;
  v56 = 0x8000000100118A30;
  v27 = sub_100006198(0x10uLL);
  if (v28)
  {
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    String.append(_:)(*&v27);

    String.append(_:)(v54);
  }

  if (("ISchemaViewContainer" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    v29._countAndFlagsBits = 0xD000000000000024;
    v29._object = 0x8000000100118A90;
    String.append(_:)(v29);
    String.append(_:)(v54);
  }

  v31 = v55;
  v30 = v56;
  v32 = Logger.logObject.getter();
  if (os_log_type_enabled(v32, v26))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v54._countAndFlagsBits = v34;
    *v33 = 136315138;
    v35 = sub_1000075D4(v31, v30, &v54._countAndFlagsBits);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v32, v26, "%s", v33, 0xCu);
    sub_100006114(v34);
  }

  else
  {
  }

  v36 = [objc_opt_self() sharedSystemState];
  if (v19)
  {
    v37 = v19;
    [v36 carPlayEnhancedVoiceTriggerMode];
    [v37 setEnhancedVoiceTriggerMode:SASCarPlayEnhancedVoiceTriggerModeToSISchemaEnhancedVoiceTriggerMode()];

    v38 = v37;
    [v36 carPlayTransportType];
    [v38 setCarPlayConnection:SASCarPlayTransportTypeToSISchemaCarPlayConnection()];
  }

  [v17 setCarPlayInvocationContext:v19];

  return v17;
}

uint64_t sub_1000ABA8C()
{
  v1 = v0;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  v21 = 0xD00000000000001ALL;
  v22 = 0x8000000100118920;
  v4 = sub_100006198(0x10uLL);
  if (v5)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("hideBackgroundBehindSiri()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    v7._countAndFlagsBits = 0xD000000000000022;
    v7._object = 0x8000000100118940;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v21;
  v9 = v22;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v19);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  v15 = v1 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v17 + 8) + 56))(v1, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int __swiftcall Response.getNumberOfSimpleItems()()
{
  v0 = sub_100093B6C(&qword_10018E5D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v3 = sub_100093B6C(&qword_10018E5E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for _ProtoResponse.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for _ProtoResponse.Section();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Section();
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v41 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Response.sections.getter();
  v40 = *(result + 16);
  if (!v40)
  {

    return 0;
  }

  v15 = 0;
  v50 = 0;
  v16 = 0;
  v38 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v37 = v12 + 16;
  v39 = v12;
  v36 = v12 + 8;
  v35 = (v10 + 8);
  v47 = v7 + 16;
  v33 = v7;
  v17 = (v7 + 8);
  v51 = v2;
  v34 = result;
  while (1)
  {
    if (v16 >= *(result + 16))
    {
      goto LABEL_25;
    }

    v18 = v39;
    v19 = *(v39 + 72);
    v45 = v16;
    v20 = v41;
    (*(v39 + 16))(v41, v38 + v19 * v16, v46);
    v21 = v42;
    Section.redactedProto.getter();
    (*(v18 + 8))(v20, v46);
    v22 = _ProtoResponse.Section.componentList.getter();
    (*v35)(v21, v43);
    v23 = *(v22 + 16);
    if (v23)
    {
      break;
    }

LABEL_3:

    v16 = v45 + 1;
    result = v34;
    if (v45 + 1 == v40)
    {

      return v15;
    }
  }

  v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v44 = v22;
  v25 = v22 + v24;
  v26 = *(v33 + 16);
  v48 = *(v33 + 72);
  v49 = v26;
  v26(v9, v25, v6);
  while (1)
  {
    Component.redactedComponent()();
    (*v17)(v9, v6);
    sub_1000AC9A4(&v55, &v52);
    if (*(&v53 + 1))
    {
      sub_100093B6C(&qword_10018E5E8);
      v27 = type metadata accessor for SimpleItemRich();
      v2 = v51;
      v28 = swift_dynamicCast();
      (*(*(v27 - 8) + 56))(v5, v28 ^ 1u, 1, v27);
    }

    else
    {
      sub_1000A8C60(&v52, &qword_10018E5D0);
      v27 = type metadata accessor for SimpleItemRich();
      (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    }

    type metadata accessor for SimpleItemRich();
    if (!(*(*(v27 - 8) + 48))(v5, 1, v27))
    {
      break;
    }

    v52 = v55;
    v53 = v56;
    v54 = v57;
    if (*(&v56 + 1))
    {
      sub_100093B6C(&qword_10018E5E8);
      v29 = type metadata accessor for SimpleItemStandard();
      v2 = v51;
      v30 = swift_dynamicCast();
      (*(*(v29 - 8) + 56))(v2, v30 ^ 1u, 1, v29);
    }

    else
    {
      sub_1000A8C60(&v52, &qword_10018E5D0);
      v29 = type metadata accessor for SimpleItemStandard();
      (*(*(v29 - 8) + 56))(v2, 1, 1, v29);
    }

    type metadata accessor for SimpleItemStandard();
    v31 = (*(*(v29 - 8) + 48))(v2, 1, v29);
    sub_1000A8C60(v2, &qword_10018E5D8);
    result = sub_1000A8C60(v5, &qword_10018E5E0);
    if (!v31)
    {
      goto LABEL_18;
    }

LABEL_7:
    v25 += v48;
    if (!--v23)
    {
      goto LABEL_3;
    }

    v49(v9, v25, v6);
  }

  sub_1000A8C60(&v55, &qword_10018E5D0);
  result = sub_1000A8C60(v5, &qword_10018E5E0);
LABEL_18:
  v15 = v50 + 1;
  if (!__OFADD__(v50, 1))
  {
    ++v50;
    goto LABEL_7;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *sub_1000AC4A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100093B6C(qword_10018E6F0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000AC5A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100093B6C(&qword_10018E368);
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

size_t sub_1000AC6B0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100093B6C(&qword_10018E6B0);
  v10 = *(sub_100093B6C(&qword_10018E6B8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100093B6C(&qword_10018E6B8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000AC8A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100093B6C(&qword_10018E6E8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000AC9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100093B6C(&qword_10018E5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ACA14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000ACA7C(uint64_t a1, int a2, uint64_t a3)
{
  v38 = type metadata accessor for UUID();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v8._countAndFlagsBits = 0xD000000000000032;
  v8._object = 0x8000000100118E20;
  String.append(_:)(v8);
  swift_getObjectType();
  v35 = a1;
  v39._countAndFlagsBits = a1;
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v9._object = 0x8000000100118E60;
  v9._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v9);
  v37 = a2;
  if (a2)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (a2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v14 = v40;
  v13 = v41;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006160(v15, qword_10018EE28);
  v16 = static os_log_type_t.info.getter();
  v40 = 0xD000000000000031;
  v41 = 0x8000000100118E80;
  v17 = sub_100006198(0x10uLL);
  if (v18)
  {
    v39._countAndFlagsBits = 32;
    v39._object = 0xE100000000000000;
    String.append(_:)(*&v17);

    String.append(_:)(v39);
  }

  v19 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v19 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v39._countAndFlagsBits = 32;
    v39._object = 0xE100000000000000;
    v20._countAndFlagsBits = v14;
    v20._object = v13;
    String.append(_:)(v20);
    String.append(_:)(v39);
  }

  v21 = v40;
  v22 = v41;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, v16))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39._countAndFlagsBits = v25;
    *v24 = 136315138;
    v26 = sub_1000075D4(v21, v22, &v39._countAndFlagsBits);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v23, v16, "%s", v24, 0xCu);
    sub_100006114(v25);
  }

  else
  {
  }

  v27 = [objc_opt_self() sharedManager];
  v28 = [v27 currentInstrumentationTurnContext];

  v29 = [v28 turnIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = a3 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v31 + 8) + 40))(a3, v35, v7, ObjectType);
    swift_unknownObjectRelease();
  }

  if (v37)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong clearSnippet];
      swift_unknownObjectRelease();
    }
  }

  return (*(v36 + 8))(v7, v38);
}

uint64_t sub_1000ACEF0()
{
  v1 = v0;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  v21 = 0xD000000000000017;
  v22 = 0x8000000100116550;
  v4 = sub_100006198(0x10uLL);
  if (v5)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("scrollViewDidScroll(_:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    v7._countAndFlagsBits = 0xD000000000000036;
    v7._object = 0x8000000100116570;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v21;
  v9 = v22;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v19);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  v15 = v1 + OBJC_IVAR____TtC4Siri37SRCarPlayVisualResponseViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v17 + 8) + 24))(v1, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000AD170(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AD1B8()
{
  result = qword_10018E6D0;
  if (!qword_10018E6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018E6D0);
  }

  return result;
}

void sub_1000AD204(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(SiriUISnippetManager) init];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 safeDisambiguationItemForListItem:v3 disambiguationKey:0];
  }

  else
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006160(v7, qword_10018EE28);
    v8 = static os_log_type_t.fault.getter();
    v22 = 0xD000000000000018;
    v23 = 0x8000000100118FD0;
    v9 = sub_100006198(0);
    if (v10)
    {
      v20 = 32;
      v21 = 0xE100000000000000;
      String.append(_:)(*&v9);

      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
    }

    if (("disambiguationItem(for:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v20 = 32;
      v21 = 0xE100000000000000;
      v12._countAndFlagsBits = 0xD00000000000002FLL;
      v12._object = 0x8000000100118FF0;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
    }

    v15 = v22;
    v14 = v23;
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v8))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      v19 = sub_1000075D4(v15, v14, &v20);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v16, v8, "%s", v17, 0xCu);
      sub_100006114(v18);
    }

    else
    {
    }

    v6 = 0;
  }

  *a2 = v6;
}

id sub_1000AD46C(unint64_t a1)
{
  v2 = v1;
  result = [v2 items];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  sub_10009E804();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v7 == v8)
    {
LABEL_6:
      result = [v2 items];
      if (result)
      {
        v9 = result;
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000ADD00(v11, v10);
        v13 = v12;

        return v13;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 == v8)
    {
      goto LABEL_6;
    }
  }

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(112);
  v14._countAndFlagsBits = 0xD000000000000037;
  v14._object = 0x8000000100118F40;
  String.append(_:)(v14);
  v37 = v8;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000021;
  v16._object = 0x8000000100118F80;
  String.append(_:)(v16);
  result = [v2 items];
  if (!result)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v19;
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._object = 0x8000000100118FB0;
  v21._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v21);
  v23 = v39[0];
  v22 = v39[1];
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006160(v24, qword_10018EE28);
  v25 = static os_log_type_t.error.getter();
  strcpy(v39, "cells(from:)");
  BYTE5(v39[1]) = 0;
  HIWORD(v39[1]) = -5120;
  v26 = sub_100006198(0x10uLL);
  if (v27)
  {
    v37 = 32;
    v38 = 0xE100000000000000;
    String.append(_:)(*&v26);

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
  }

  if ((v22 & 0xF00000000000000) != 0)
  {
    v37 = 32;
    v38 = 0xE100000000000000;
    v29._countAndFlagsBits = v23;
    v29._object = v22;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
  }

  v32 = v39[0];
  v31 = v39[1];
  v33 = Logger.logObject.getter();
  if (os_log_type_enabled(v33, v25))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v34 = 136315138;
    v36 = sub_1000075D4(v32, v31, &v37);

    *(v34 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v33, v25, "%s", v34, 0xCu);
    sub_100006114(v35);
  }

  else
  {
  }

  return &_swiftEmptyArrayStorage;
}

id sub_1000AD8EC(void *a1, void *a2)
{
  v4 = sub_100093B6C(&qword_10018E708);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - v9;
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = [a2 commands];
  if (v13)
  {
    v14 = v13;
    sub_100093B6C(&qword_10018DB60);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  sub_1000BBE6C(v15, v12);

  v16 = [a1 headingText];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v60 = &type metadata for String;
    v61 = &protocol witness table for String;
    v58 = v18;
    v59 = v20;
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v21 = [a1 title];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = &protocol witness table for String;
      v27 = &type metadata for String;
    }

    else
    {
      v23 = 0;
      v25 = 0;
      v27 = 0;
      v26 = 0;
      *&v53 = 0;
    }

    *&v52 = v23;
    *(&v52 + 1) = v25;
    *(&v53 + 1) = v27;
    v54 = v26;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_1000AE1C0(v12, v10);
    v36 = type metadata accessor for Command();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v10, 1, v36) != 1)
    {
      *(&v41 + 1) = v36;
      v42 = &protocol witness table for Command;
      v38 = sub_10009E8C4(&v40);
      (*(v37 + 32))(v38, v10, v36);
      goto LABEL_16;
    }

    v35 = v10;
LABEL_13:
    sub_1000AE230(v35);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
LABEL_16:
    SimpleItemStandard.init(text1:text2:text3:text4:text5:text6:action:componentName:linkIdentifier:)();
    return sub_1000AE230(v12);
  }

  result = [a1 title];
  if (result)
  {
    v29 = result;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v60 = &type metadata for String;
    v61 = &protocol witness table for String;
    v58 = v30;
    v59 = v32;
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_1000AE1C0(v12, v7);
    v33 = type metadata accessor for Command();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v7, 1, v33) != 1)
    {
      *(&v41 + 1) = v33;
      v42 = &protocol witness table for Command;
      v39 = sub_10009E8C4(&v40);
      (*(v34 + 32))(v39, v7, v33);
      goto LABEL_16;
    }

    v35 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}