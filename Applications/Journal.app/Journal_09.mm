uint64_t sub_1000FCACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD2150);
  v9 = __chkstk_darwin(v8 - 8);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v46 - v11;
  sub_1000FCFC8(a1, (&v46 - v11));
  v12 = *(a1 + 24);
  v57 = *(a1 + 16);
  v58 = v12;
  sub_1000F24EC(&qword_100AD2120);
  State.wrappedValue.getter();
  v13 = v52;
  swift_getKeyPath();
  v57 = v13;
  sub_1000FF7E8(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(a1) = *(v13 + 18);

  if (a1 == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v14 = Text.init(_:tableName:bundle:comment:)();
    v16 = v15;
    v18 = v17;
    (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGBLinear(_:), v4);
    Color.init(_:white:opacity:)();
    v19 = a2;
    v51 = Text.shadow(color:radius:x:y:)();
    v48 = v20;
    v22 = v21;
    v47 = v23;

    sub_1000594D0(v14, v16, v18 & 1);

    KeyPath = swift_getKeyPath();
    v25 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    LOBYTE(v57) = v22 & 1;
    LOBYTE(v52) = 0;
    v34 = v22 & 1;
    v35 = v25;
    a2 = v19;
    v36 = 1;
  }

  else
  {
    v51 = 0;
    v48 = 0;
    v47 = 0;
    KeyPath = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v27 = 0;
    v29 = 0;
    v31 = 0;
    v33 = 0;
  }

  v46 = v34;
  v37 = v49;
  v38 = v50;
  sub_1000BA75C(v49, v50);
  sub_1000BA75C(v38, a2);
  v39 = (a2 + *(sub_1000F24EC(&qword_100AD2158) + 48));
  v40 = v51;
  *&v52 = v51;
  v41 = v48;
  *(&v52 + 1) = v48;
  *&v53 = v34;
  v42 = v47;
  *(&v53 + 1) = v47;
  *&v54 = KeyPath;
  *(&v54 + 1) = v36;
  *&v55 = v35;
  *(&v55 + 1) = v27;
  *v56 = v29;
  *&v56[8] = v31;
  *&v56[16] = v33;
  v56[24] = 0;
  v43 = v53;
  *v39 = v52;
  v39[1] = v43;
  v44 = v55;
  v39[2] = v54;
  v39[3] = v44;
  v39[4] = *v56;
  *(v39 + 73) = *&v56[9];
  sub_1000082B4(&v52, &v57, &qword_100AD2160);
  sub_100004F84(v37, &qword_100AD2150);
  v57 = v40;
  v58 = v41;
  v59 = v46;
  v60 = v42;
  v61 = KeyPath;
  v62 = v36;
  v63 = v35;
  v64 = v27;
  v65 = v29;
  v66 = v31;
  v67 = v33;
  v68 = 0;
  sub_100004F84(&v57, &qword_100AD2160);
  return sub_100004F84(v38, &qword_100AD2150);
}

uint64_t sub_1000FCFC8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v64 = a2;
  v2 = type metadata accessor for RedactionReasons();
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  __chkstk_darwin(v2);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000F24EC(&qword_100AD2168);
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v52 - v6;
  v8 = sub_1000F24EC(&qword_100AD2170);
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_1000F24EC(&qword_100AD2178);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_1000F24EC(&qword_100AD2180);
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = __chkstk_darwin(v14);
  v58 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = &v52 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  static Font.headline.getter();
  v23 = Text.font(_:)();
  v55 = v24;
  v56 = v23;
  v54 = v25;
  v57 = v26;

  sub_1000594D0(v18, v20, v22 & 1);

  *v10 = static VerticalAlignment.lastTextBaseline.getter();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v27 = &v10[*(sub_1000F24EC(&qword_100AD2188) + 44)];
  v28 = v52;
  v66 = v52;
  sub_1000F24EC(&qword_100AD2190);
  sub_1000F24EC(&qword_100AD2198);
  sub_1000FF090();
  sub_1000FF148();
  Label.init(title:icon:)();
  *&v68 = 0x4008000000000000;
  sub_10000B58C(&qword_100AD2208, &qword_100AD2168);
  sub_1000FF374();
  v29 = v53;
  View.labelStyle<A>(_:)();
  (*(v5 + 8))(v7, v29);
  v30 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v32 = &v27[*(sub_1000F24EC(&qword_100AD2218) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v68 = *v28;
  sub_1000F24EC(&qword_100AD2148);
  State.wrappedValue.getter();
  if (v67)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  sub_100021CEC(v10, v13, &qword_100AD2170);
  *&v13[*(v11 + 36)] = v33;
  v34 = *(v28 + 3);
  *&v68 = *(v28 + 2);
  *(&v68 + 1) = v34;
  sub_1000F24EC(&qword_100AD2120);
  State.wrappedValue.getter();
  v35 = v67;
  swift_getKeyPath();
  *&v68 = v35;
  sub_1000FF7E8(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v35 + 16);

  if (v36 == 1)
  {
    v37 = v61;
    static RedactionReasons.placeholder.getter();
    v38 = v62;
  }

  else
  {
    *&v68 = _swiftEmptyArrayStorage;
    sub_1000FF7E8(&qword_100AD2220, &type metadata accessor for RedactionReasons);
    sub_1000F24EC(&qword_100AD2228);
    sub_10000B58C(&qword_100AD2230, &qword_100AD2228);
    v37 = v61;
    v39 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v39;
  }

  sub_1000FF3C8();
  v40 = v65;
  View.redacted(reason:)();
  (*(v63 + 8))(v37, v38);
  sub_100004F84(v13, &qword_100AD2178);
  v42 = v58;
  v41 = v59;
  v43 = *(v59 + 16);
  v44 = v60;
  v43(v58, v40, v60);
  v45 = v64;
  v46 = v55;
  v47 = v56;
  *v64 = v56;
  v45[1] = v46;
  v48 = v54 & 1;
  *(v45 + 16) = v54 & 1;
  v45[3] = v57;
  v49 = sub_1000F24EC(&qword_100AD2248);
  v43(v45 + *(v49 + 48), v42, v44);
  sub_1000F24DC(v47, v46, v48);
  v50 = *(v41 + 8);

  v50(v65, v44);
  v50(v42, v44);
  sub_1000594D0(v47, v46, v48);
}

uint64_t sub_1000FD76C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AD1ED0);
  __chkstk_darwin(v3);
  sub_1000F24EC(&qword_100AD2148);
  State.wrappedValue.getter();
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  v4 = Text.init<A>(_:format:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = (a1 + *(sub_1000F24EC(&qword_100AD2190) + 36));
  sub_1000F24EC(&qword_100AD21B0);
  static ContentTransition.numericText(countsDown:)();
  result = swift_getKeyPath();
  *v11 = result;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1000FD950()
{
  v0 = sub_1000F24EC(&qword_100AD21C8);
  __chkstk_darwin(v0);
  v2 = &v10 - v1;
  v3 = Image.init(_internalSystemName:)();
  v4 = static HierarchicalShapeStyle.secondary.getter();
  v5 = &v2[*(v0 + 36)];
  v6 = *(sub_1000F24EC(&qword_100AD21F8) + 28);
  v7 = enum case for Image.Scale.small(_:);
  v8 = type metadata accessor for Image.Scale();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *v2 = v3;
  *(v2 + 2) = v4;
  sub_1000FF204();
  View.accessibilityHidden(_:)();
  return sub_100004F84(v2, &qword_100AD21C8);
}

uint64_t sub_1000FDAC4()
{
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 >> 62)
  {
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v0 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v0, v1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v4 >> 62))
    {
      v2 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:

  if (__OFADD__(v0 + v1, v2))
  {
    __break(1u);
  }

  else
  {
    sub_1000F24EC(&qword_100AD2148);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000FDCFC()
{
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 >> 62)
  {
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v0 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v0, v1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v4 >> 62))
    {
      v2 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:

  if (__OFADD__(v0 + v1, v2))
  {
    __break(1u);
  }

  else
  {
    sub_1000F24EC(&qword_100AD2148);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000FDF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SidebarPlacesBrickMapView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  *&v27 = *(a1 + 16);
  *(&v27 + 1) = v8;
  sub_1000F24EC(&qword_100AD2120);
  State.wrappedValue.getter();
  v9 = v26;
  *v7 = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD2128);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[7]) = v9;
  v10 = v7 + v5[8];
  v11 = *(type metadata accessor for UnevenRoundedRectangle() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v10 = v14;
  *(v10 + 1) = v15;
  *(v10 + 2) = v16;
  *(v10 + 3) = v17;
  v18 = v7 + v5[9];
  sub_1000F24EC(&qword_100AD2130);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100940050;
  static Color.black.getter();
  *(v19 + 32) = Gradient.Stop.init(color:location:)();
  *(v19 + 40) = v20;
  static Color.clear.getter();
  *(v19 + 48) = Gradient.Stop.init(color:location:)();
  *(v19 + 56) = v21;
  Gradient.init(stops:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v22 = v28;
  *v18 = v27;
  *(v18 + 1) = v22;
  *(v18 + 4) = v29;
  if (sub_1000FBD98())
  {
    v23 = 10.0;
  }

  else
  {
    v23 = 0.0;
  }

  sub_1000FF020(v7, a2, type metadata accessor for SidebarPlacesBrickMapView);
  result = sub_1000F24EC(&qword_100AD2138);
  v25 = a2 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = 0;
  return result;
}

uint64_t sub_1000FE1BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a1;
  v86 = a2;
  v2 = type metadata accessor for LayoutDirection();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = __chkstk_darwin(v2);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v77 = &v75 - v5;
  v84 = sub_1000F24EC(&qword_100AD2310) - 8;
  v6 = __chkstk_darwin(v84);
  v85 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v75 - v8;
  v9 = sub_1000F24EC(&qword_100AD2318);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v75 - v11;
  v13 = sub_1000F24EC(&qword_100AD2320);
  __chkstk_darwin(v13);
  v15 = &v75 - v14;
  v16 = sub_1000F24EC(&qword_100AD2328);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = __chkstk_darwin(v16);
  v81 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v75 - v19;
  v21 = type metadata accessor for SidebarPlacesBrickMapView(0);
  type metadata accessor for EntryMapViewLoadingMessenger(0);
  sub_1000FF7E8(&qword_100AD2140, type metadata accessor for EntryMapViewLoadingMessenger);

  Bindable<A>.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = 1;
  v24 = &v12[*(v10 + 44)];
  *v24 = KeyPath;
  v24[1] = sub_1000FF5FC;
  v24[2] = v23;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000FF604(v12, v15);
  v25 = &v15[*(v13 + 36)];
  v26 = v102;
  *(v25 + 4) = v101;
  *(v25 + 5) = v26;
  *(v25 + 6) = v103;
  v27 = v98;
  *v25 = v97;
  *(v25 + 1) = v27;
  v28 = v100;
  *(v25 + 2) = v99;
  *(v25 + 3) = v28;
  sub_1000FF674();
  v87 = v20;
  View.focusable(_:)();
  sub_100004F84(v15, &qword_100AD2320);
  v29 = *(v21 + 24);
  sub_1000F24EC(&qword_100AD2358);
  v30 = v88;
  static Material.thin.getter();
  v31 = v76;
  sub_1000FF830(v76 + v29, v30, &type metadata accessor for UnevenRoundedRectangle);
  v32 = static Alignment.leading.getter();
  v34 = v33;
  v35 = (v31 + *(v21 + 28));
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  v40 = v35[4];

  v41 = v77;
  sub_1003D8754(v77);
  v42 = v78;
  v43 = v79;
  v44 = v80;
  (*(v79 + 104))(v78, enum case for LayoutDirection.leftToRight(_:), v80);
  v45 = static LayoutDirection.== infix(_:_:)();
  v46 = *(v43 + 8);
  v46(v42, v44);
  v46(v41, v44);
  if (v45)
  {
    v47 = 1.0;
  }

  else
  {
    v47 = -1.0;
  }

  static UnitPoint.center.getter();
  v49 = v48;
  v51 = v50;
  *&v90 = v32;
  *(&v90 + 1) = v34;
  *&v91 = v36;
  *(&v91 + 1) = v37;
  *&v92 = v38;
  *(&v92 + 1) = v39;
  *&v93 = v40;
  *(&v93 + 1) = v47;
  *&v94 = 0x3FF0000000000000;
  *(&v94 + 1) = v48;
  v95 = v50;
  v52 = sub_1000F24EC(&qword_100AD2360);
  v53 = v88;
  v54 = v88 + *(v52 + 36);
  v55 = v93;
  v56 = v94;
  *(v54 + 32) = v92;
  *(v54 + 48) = v55;
  *(v54 + 64) = v56;
  *(v54 + 80) = v95;
  v57 = v91;
  *v54 = v90;
  *(v54 + 16) = v57;
  v96[0] = v32;
  v96[1] = v34;
  v96[2] = v36;
  v96[3] = v37;
  v96[4] = v38;
  v96[5] = v39;
  v96[6] = v40;
  *&v96[7] = v47;
  v96[8] = 0x3FF0000000000000;
  v96[9] = v49;
  v96[10] = v51;
  sub_1000082B4(&v90, v89, &qword_100AD2368);
  sub_100004F84(v96, &qword_100AD2368);
  *(v53 + *(sub_1000F24EC(&qword_100AD2370) + 36)) = 0x3FF8000000000000;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58 = (v53 + *(sub_1000F24EC(&qword_100AD2378) + 36));
  v59 = v89[1];
  *v58 = v89[0];
  v58[1] = v59;
  v58[2] = v89[2];
  v60 = swift_getKeyPath();
  v61 = (v53 + *(v84 + 44));
  v62 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v63 = enum case for ColorScheme.dark(_:);
  v64 = type metadata accessor for ColorScheme();
  (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
  *v61 = v60;
  v66 = v81;
  v65 = v82;
  v67 = *(v82 + 16);
  v68 = v83;
  v67(v81, v87, v83);
  v69 = v53;
  v70 = v85;
  sub_1000082B4(v69, v85, &qword_100AD2310);
  v71 = v86;
  v67(v86, v66, v68);
  v72 = sub_1000F24EC(&qword_100AD2380);
  sub_1000082B4(v70, &v71[*(v72 + 48)], &qword_100AD2310);
  sub_100004F84(v88, &qword_100AD2310);
  v73 = *(v65 + 8);
  v73(v87, v68);
  sub_100004F84(v70, &qword_100AD2310);
  return (v73)(v66, v68);
}

uint64_t sub_1000FE99C@<X0>(char *a1@<X8>)
{
  *a1 = static Alignment.leading.getter();
  *(a1 + 1) = v3;
  v4 = sub_1000F24EC(&qword_100AD2300);
  sub_1000FE1BC(v1, &a1[*(v4 + 44)]);
  v5 = &a1[*(sub_1000F24EC(&qword_100AD2308) + 36)];
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  result = sub_1000F24EC(&qword_100AD20A0);
  *&v5[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1000FEAF0()
{
  type metadata accessor for SidebarPlacesBrickView(0);

  return sub_1000FDCFC();
}

unint64_t sub_1000FEB50()
{
  result = qword_100AD20C0;
  if (!qword_100AD20C0)
  {
    sub_1000F2A18(&qword_100AD2060);
    sub_1000FEC08();
    sub_10000B58C(&qword_100AD2118, &qword_100AD20B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD20C0);
  }

  return result;
}

unint64_t sub_1000FEC08()
{
  result = qword_100AD20C8;
  if (!qword_100AD20C8)
  {
    sub_1000F2A18(&qword_100AD2058);
    sub_1000FECC0();
    sub_10000B58C(&qword_100AD2110, &qword_100AD20B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD20C8);
  }

  return result;
}

unint64_t sub_1000FECC0()
{
  result = qword_100AD20D0;
  if (!qword_100AD20D0)
  {
    sub_1000F2A18(&qword_100AD2050);
    sub_1000FED78();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD20D0);
  }

  return result;
}

unint64_t sub_1000FED78()
{
  result = qword_100AD20D8;
  if (!qword_100AD20D8)
  {
    sub_1000F2A18(&qword_100AD2048);
    sub_1000FEE30();
    sub_10000B58C(&qword_100AD2100, &qword_100AD20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD20D8);
  }

  return result;
}

unint64_t sub_1000FEE30()
{
  result = qword_100AD20E0;
  if (!qword_100AD20E0)
  {
    sub_1000F2A18(&qword_100AD2040);
    sub_1000FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD20E0);
  }

  return result;
}

unint64_t sub_1000FEEBC()
{
  result = qword_100AD20E8;
  if (!qword_100AD20E8)
  {
    sub_1000F2A18(&qword_100AD2038);
    sub_1000FEF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD20E8);
  }

  return result;
}

unint64_t sub_1000FEF48()
{
  result = qword_100AD20F0;
  if (!qword_100AD20F0)
  {
    sub_1000F2A18(&qword_100AD2098);
    sub_10000B58C(&qword_100AD20F8, &qword_100AD2090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD20F0);
  }

  return result;
}

uint64_t sub_1000FF020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000FF090()
{
  result = qword_100AD21A0;
  if (!qword_100AD21A0)
  {
    sub_1000F2A18(&qword_100AD2190);
    sub_10000B58C(&qword_100AD21A8, &qword_100AD21B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD21A0);
  }

  return result;
}

unint64_t sub_1000FF148()
{
  result = qword_100AD21B8;
  if (!qword_100AD21B8)
  {
    sub_1000F2A18(&qword_100AD2198);
    sub_1000FF204();
    sub_1000FF7E8(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD21B8);
  }

  return result;
}

unint64_t sub_1000FF204()
{
  result = qword_100AD21C0;
  if (!qword_100AD21C0)
  {
    sub_1000F2A18(&qword_100AD21C8);
    sub_1000FF2BC();
    sub_10000B58C(&qword_100AD21F0, &qword_100AD21F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD21C0);
  }

  return result;
}

unint64_t sub_1000FF2BC()
{
  result = qword_100AD21D0;
  if (!qword_100AD21D0)
  {
    sub_1000F2A18(&qword_100AD21D8);
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD21D0);
  }

  return result;
}

unint64_t sub_1000FF374()
{
  result = qword_100AD2210;
  if (!qword_100AD2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2210);
  }

  return result;
}

unint64_t sub_1000FF3C8()
{
  result = qword_100AD2238;
  if (!qword_100AD2238)
  {
    sub_1000F2A18(&qword_100AD2178);
    sub_10000B58C(&qword_100AD2240, &qword_100AD2170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2238);
  }

  return result;
}

void sub_1000FF4A8()
{
  sub_1000FF57C(319, &qword_100AD22C8, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntryMapViewLoadingMessenger(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnevenRoundedRectangle();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000FF57C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000FF604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD2318);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000FF674()
{
  result = qword_100AD2330;
  if (!qword_100AD2330)
  {
    sub_1000F2A18(&qword_100AD2320);
    sub_1000FF700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2330);
  }

  return result;
}

unint64_t sub_1000FF700()
{
  result = qword_100AD2338;
  if (!qword_100AD2338)
  {
    sub_1000F2A18(&qword_100AD2318);
    sub_1000FF7E8(&qword_100AD2340, type metadata accessor for EntryMapViewRepresentable);
    sub_10000B58C(&qword_100AD2348, &qword_100AD2350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2338);
  }

  return result;
}

uint64_t sub_1000FF7E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FF830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000FF898()
{
  result = qword_100AD2388;
  if (!qword_100AD2388)
  {
    sub_1000F2A18(&qword_100AD2308);
    sub_10000B58C(&qword_100AD2390, &qword_100AD2398);
    sub_10000B58C(&qword_100AD2100, &qword_100AD20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2388);
  }

  return result;
}

uint64_t sub_1000FF988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v43 = a4;
  v36 = type metadata accessor for WindowBackgroundShapeStyle();
  __chkstk_darwin(v36);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ScrollBounceBehavior();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD23A8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_1000F24EC(&qword_100AD23B0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v20 = sub_1000F24EC(&qword_100AD23B8);
  v39 = *(v20 - 8);
  v40 = v20;
  __chkstk_darwin(v20);
  v38 = &v32 - v21;
  v44 = v42;
  v45 = a2;
  v42 = a2;
  v41 = a3;
  v46 = a3 & 1;
  static Axis.Set.vertical.getter();
  sub_1000F24EC(&qword_100AD23C0);
  sub_100105F98();
  ScrollView.init(_:showsIndicators:content:)();
  v22 = sub_10000B58C(&qword_100AD2458, &qword_100AD23A8);
  View.scrollContentBackground(_:)();
  (*(v13 + 8))(v15, v12);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(a2) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != a2)
  {
    Axis.Set.init(rawValue:)();
  }

  v47 = v12;
  v48 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v38;
  View.scrollBounceBehavior(_:axes:)();
  (*(v9 + 8))(v11, v37);
  (*(v17 + 8))(v19, v16);
  if ((v41 & 1) == 0)
  {
    v24 = v42;

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v26 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v24, 0);
    (*(v33 + 8))(v26, v34);
    if (v47 != 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v47 = static Color.clear.getter();
    goto LABEL_8;
  }

  if (v42)
  {
    goto LABEL_7;
  }

LABEL_5:
  WindowBackgroundShapeStyle.init()();
  sub_1001082A0(&qword_100AD2460, &type metadata accessor for WindowBackgroundShapeStyle);
LABEL_8:
  v27 = AnyShapeStyle.init<A>(_:)();
  v28 = static Edge.Set.all.getter();
  v29 = v43;
  (*(v39 + 32))(v43, v23, v40);
  result = sub_1000F24EC(&qword_100AD2468);
  v31 = v29 + *(result + 36);
  *v31 = v27;
  *(v31 + 8) = v28;
  return result;
}

__n128 sub_1000FFF80@<Q0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v81 = a2;
  v82 = a1;
  v83 = a3;
  v65 = type metadata accessor for EnvironmentValues();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FormStyleConfiguration.Content();
  __chkstk_darwin(v4);
  v5 = sub_1000F24EC(&qword_100AD2408);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v69 = sub_1000F24EC(&qword_100AD2400);
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v9 = &v62 - v8;
  v72 = sub_1000F24EC(&qword_100AD23F8);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v62 - v10;
  v75 = sub_1000F24EC(&qword_100AD23F0);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v68 = &v62 - v11;
  v78 = sub_1000F24EC(&qword_100AD2470);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v70 = &v62 - v12;
  v74 = sub_1000F24EC(&qword_100AD23E8) - 8;
  __chkstk_darwin(v74);
  v67 = &v62 - v13;
  v79 = sub_1000F24EC(&qword_100AD23D8);
  __chkstk_darwin(v79);
  v80 = &v62 - v14;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4034000000000000;
  v7[16] = 0;
  sub_1000F24EC(&qword_100AD2478);
  FormStyleConfiguration.content.getter();
  type metadata accessor for MacSettingsFormStyle.Section();
  sub_1001082A0(&qword_100AD2480, type metadata accessor for MacSettingsFormStyle.Section);
  sub_1001082A0(&qword_100AD2488, &type metadata accessor for FormStyleConfiguration.Content);
  ForEach.init<A>(sections:content:)();
  KeyPath = swift_getKeyPath();
  v16 = v5;
  v17 = &v7[*(v5 + 36)];
  *v17 = KeyPath;
  v17[8] = 0;
  v91 = xmmword_1009406E0;
  v92 = xmmword_1009406F0;
  *&v93 = 0;
  v18 = sub_10010628C();
  v19 = sub_100106370();
  v20 = v9;
  View.toggleStyle<A>(_:)();
  sub_100004F84(v7, &qword_100AD2408);
  LOBYTE(v84) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v9) = v91;
  v21 = *(&v91 + 1);
  v22 = FocusState.init<>()();
  v24 = v23;
  v26 = v25;
  v27 = swift_getKeyPath();
  LOBYTE(v91) = v9;
  *(&v91 + 1) = v21;
  LOBYTE(v92) = v22 & 1;
  *(&v92 + 1) = v24;
  LOBYTE(v93) = v26 & 1;
  *(&v93 + 1) = v27;
  v94.n128_u8[0] = 0;
  *&v84 = v16;
  *(&v84 + 1) = &type metadata for MacSettingsFormStyle.ToggleStyle;
  *&v85 = v18;
  *(&v85 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_1001063C4();
  v30 = v66;
  v31 = v69;
  View.datePickerStyle<A>(_:)();

  (*(v71 + 8))(v20, v31);
  *&v91 = v31;
  *(&v91 + 1) = &type metadata for MacSettingsFormStyle.DatePickerStyle;
  *&v92 = OpaqueTypeConformance2;
  *(&v92 + 1) = v29;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_100106418();
  v34 = v68;
  v35 = v72;
  View.controlGroupStyle<A>(_:)();
  (*(v73 + 8))(v30, v35);
  *&v84 = swift_getKeyPath();
  BYTE8(v84) = 0;
  *&v91 = v35;
  *(&v91 + 1) = &type metadata for MacSettingsFormStyle.ControlGroupStyle;
  v36 = v67;
  *&v92 = v32;
  *(&v92 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  sub_10010646C();
  v37 = v70;
  v38 = v75;
  View.labeledContentStyle<A>(_:)();

  (*(v76 + 8))(v34, v38);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v77 + 32))(v36, v37, v78);
  v39 = (v36 + *(v74 + 44));
  v40 = v89;
  v39[4] = v88;
  v39[5] = v40;
  v39[6] = v90;
  v41 = v85;
  *v39 = v84;
  v39[1] = v41;
  v42 = v87;
  v39[2] = v86;
  v39[3] = v42;
  if ((v81 & 1) == 0)
  {
    v43 = v82;

    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v45 = v63;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v43, 0);
    (*(v64 + 8))(v45, v65);
  }

  v46 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v80;
  sub_100021CEC(v36, v80, &qword_100AD23E8);
  v56 = v55 + *(v79 + 36);
  *v56 = v46;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v57 = v83;
  sub_100021CEC(v55, v83, &qword_100AD23D8);
  v58 = v57 + *(sub_1000F24EC(&qword_100AD23C0) + 36);
  v59 = v96;
  *(v58 + 64) = v95;
  *(v58 + 80) = v59;
  *(v58 + 96) = v97;
  v60 = v92;
  *v58 = v91;
  *(v58 + 16) = v60;
  result = v94;
  *(v58 + 32) = v93;
  *(v58 + 48) = result;
  return result;
}

uint64_t sub_100100A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SectionConfiguration();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

__n128 sub_100100B00()
{
  v0 = type metadata accessor for RoundedRectangle();
  sub_100006118(v0, qword_100B2F2E8);
  v1 = sub_10000617C(v0, qword_100B2F2E8);
  v2 = *(v0 + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = type metadata accessor for RoundedCornerStyle();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #5.0 }

  *v1 = result;
  return result;
}

uint64_t sub_100100BA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v51 = sub_1000F24EC(&qword_100AD2780);
  v55 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = (&v46 - v3);
  v4 = sub_1000F24EC(&qword_100AD2788);
  v5 = __chkstk_darwin(v4 - 8);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v46 - v7;
  v8 = type metadata accessor for ContainerValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SubviewsCollection();
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000F24EC(&qword_100AD2790);
  v15 = *(v48 - 8);
  __chkstk_darwin(v48);
  v17 = &v46 - v16;
  v54 = sub_1000F24EC(&qword_100AD2798);
  v52 = *(v54 - 8);
  v18 = __chkstk_darwin(v54);
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v46 - v20;
  v58 = a1;
  SectionConfiguration.header.getter();
  sub_1000F24EC(&qword_100AD27A0);
  sub_10010752C();
  GroupBox.init(label:content:)();
  SectionConfiguration.containerValues.getter();
  sub_1001020DC();
  ContainerValues.subscript.getter();
  (*(v9 + 8))(v11, v8);
  LOBYTE(a1) = v60;
  KeyPath = swift_getKeyPath();
  LOBYTE(v60) = a1;
  v61 = KeyPath;
  v62 = 0;
  sub_10000B58C(&qword_100AD27D0, &qword_100AD2790);
  sub_100107668();
  v23 = v21;
  v24 = v48;
  View.groupBoxStyle<A>(_:)();

  (*(v15 + 8))(v17, v24);
  v25 = v50;
  SectionConfiguration.footer.getter();
  sub_1001082A0(&qword_100AD27E0, &type metadata accessor for SubviewsCollection);
  dispatch thunk of Collection.startIndex.getter();
  v26 = v51;
  dispatch thunk of Collection.endIndex.getter();
  (*(v49 + 8))(v14, v12);
  v27 = 1;
  if (v60 != v59)
  {
    v28 = static HorizontalAlignment.leading.getter();
    v29 = v47;
    *v47 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    sub_1000F24EC(&qword_100AD27E8);
    SectionConfiguration.footer.getter();
    v30 = static Edge.Set.all.getter();
    v31 = v29 + *(sub_1000F24EC(&qword_100AD27F0) + 36);
    *v31 = v30;
    *(v31 + 8) = xmmword_100940700;
    *(v31 + 24) = xmmword_100940700;
    *(v31 + 40) = 0;
    v32 = static HierarchicalShapeStyle.secondary.getter();
    *(v29 + *(sub_1000F24EC(&qword_100AD27F8) + 36)) = v32;
    v33 = static Font.subheadline.getter();
    v34 = swift_getKeyPath();
    v35 = (v29 + *(v26 + 36));
    *v35 = v34;
    v35[1] = v33;
    sub_100021CEC(v29, v25, &qword_100AD2780);
    v27 = 0;
  }

  (*(v55 + 56))(v25, v27, 1, v26);
  v36 = v52;
  v37 = v53;
  v38 = *(v52 + 16);
  v39 = v23;
  v40 = v54;
  v38(v53, v23, v54);
  v41 = v56;
  sub_1000082B4(v25, v56, &qword_100AD2788);
  v42 = v57;
  v38(v57, v37, v40);
  v43 = sub_1000F24EC(&qword_100AD2800);
  sub_1000082B4(v41, &v42[*(v43 + 48)], &qword_100AD2788);
  sub_100004F84(v25, &qword_100AD2788);
  v44 = *(v36 + 8);
  v44(v39, v40);
  sub_100004F84(v41, &qword_100AD2788);
  return (v44)(v37, v40);
}

double sub_1001012D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MacSettingsFormStyle.Section();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for SubviewsCollection();
  __chkstk_darwin(v7);
  SectionConfiguration.content.getter();
  sub_1001076BC(a1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MacSettingsFormStyle.Section);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100107724(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1000F24EC(&qword_100AD27C8);
  sub_10000B58C(&qword_100AD27C0, &qword_100AD27C8);
  ForEach.init<A>(subviews:content:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v10 = a2 + *(sub_1000F24EC(&qword_100AD27A0) + 36);
  *v10 = a1;
  result = 0.0;
  *(v10 + 8) = xmmword_100940700;
  *(v10 + 24) = xmmword_100940700;
  *(v10 + 40) = 0;
  return result;
}

uint64_t sub_1001014E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v93 = a3;
  v92 = sub_1000F24EC(&qword_100AD2808);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v78 = &v73 - v4;
  v81 = type metadata accessor for Subview.ID();
  v96 = *(v81 - 8);
  __chkstk_darwin(v81);
  v73 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000F24EC(&qword_100AD2810);
  __chkstk_darwin(v84);
  v85 = &v73 - v6;
  v80 = type metadata accessor for SubviewsCollection();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Subview();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD2818);
  v12 = __chkstk_darwin(v11 - 8);
  v86 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v94 = &v73 - v15;
  __chkstk_darwin(v14);
  v17 = &v73 - v16;
  v18 = sub_1000F24EC(&qword_100AD2820);
  v19 = __chkstk_darwin(v18 - 8);
  v90 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v73 - v21;
  v22 = sub_1000F24EC(&qword_100AD2828);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v73 - v24;
  v26 = sub_1000F24EC(&qword_100AD2830);
  v27 = v26 - 8;
  v28 = __chkstk_darwin(v26);
  v88 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v73 - v31;
  __chkstk_darwin(v30);
  v34 = &v73 - v33;
  v35 = static Edge.Set.all.getter();
  v76 = v9;
  v36 = *(v9 + 16);
  v77 = v8;
  v74 = v36;
  (v36)(v25, a1, v8);
  v37 = &v25[*(v23 + 44)];
  *v37 = v35;
  *(v37 + 8) = xmmword_100940710;
  *(v37 + 24) = xmmword_100940710;
  v37[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v25, v32, &qword_100AD2828);
  v38 = &v32[*(v27 + 44)];
  v39 = v103;
  *(v38 + 4) = v102;
  *(v38 + 5) = v39;
  *(v38 + 6) = v104;
  v40 = v99;
  *v38 = v98;
  *(v38 + 1) = v40;
  v41 = v101;
  *(v38 + 2) = v100;
  *(v38 + 3) = v41;
  v42 = v32;
  v43 = v81;
  v87 = v34;
  sub_100021CEC(v42, v34, &qword_100AD2830);
  v44 = v79;
  Subview.id.getter();
  v45 = *(v96 + 56);
  v95 = v17;
  v46 = v17;
  v47 = v80;
  v45(v46, 0, 1, v43);
  SectionConfiguration.content.getter();
  sub_1001082A0(&qword_100AD27E0, &type metadata accessor for SubviewsCollection);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    (*(v83 + 8))(v44, v47);
    v48 = 1;
    v49 = v94;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_1001082A0(&qword_100AD2838, &type metadata accessor for SubviewsCollection);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v50 = dispatch thunk of Collection.subscript.read();
    v51 = v75;
    v52 = v77;
    v74(v75);
    v50(v97, 0);
    (*(v83 + 8))(v44, v47);
    v49 = v94;
    Subview.id.getter();
    (*(v76 + 8))(v51, v52);
    v48 = 0;
  }

  v45(v49, v48, 1, v43);
  v53 = *(v84 + 48);
  v54 = v85;
  sub_1000082B4(v95, v85, &qword_100AD2818);
  sub_1000082B4(v49, v54 + v53, &qword_100AD2818);
  v55 = v96;
  v56 = *(v96 + 48);
  v57 = v56(v54, 1, v43);
  v58 = v86;
  if (v57 == 1)
  {
    sub_100004F84(v49, &qword_100AD2818);
    sub_100004F84(v95, &qword_100AD2818);
    if (v56(v54 + v53, 1, v43) == 1)
    {
      sub_100004F84(v54, &qword_100AD2818);
LABEL_12:
      v62 = 1;
      v60 = v92;
      v61 = v89;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1000082B4(v54, v86, &qword_100AD2818);
  if (v56(v54 + v53, 1, v43) == 1)
  {
    sub_100004F84(v94, &qword_100AD2818);
    sub_100004F84(v95, &qword_100AD2818);
    (*(v55 + 8))(v58, v43);
LABEL_9:
    sub_100004F84(v54, &qword_100AD2810);
    goto LABEL_10;
  }

  v63 = v54 + v53;
  v64 = v73;
  (*(v55 + 32))(v73, v63, v43);
  sub_1001082A0(&qword_100AD2848, &type metadata accessor for Subview.ID);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v55 + 8);
  v66(v64, v43);
  sub_100004F84(v94, &qword_100AD2818);
  sub_100004F84(v95, &qword_100AD2818);
  v66(v58, v43);
  sub_100004F84(v54, &qword_100AD2818);
  if (v65)
  {
    goto LABEL_12;
  }

LABEL_10:
  v59 = v78;
  Divider.init()();
  v60 = v92;
  *(v59 + *(v92 + 36)) = 0x3FC999999999999ALL;
  v61 = v89;
  sub_100021CEC(v59, v89, &qword_100AD2808);
  v62 = 0;
LABEL_13:
  (*(v91 + 56))(v61, v62, 1, v60);
  v67 = v87;
  v68 = v88;
  sub_1000082B4(v87, v88, &qword_100AD2830);
  v69 = v90;
  sub_1000082B4(v61, v90, &qword_100AD2820);
  v70 = v93;
  sub_1000082B4(v68, v93, &qword_100AD2830);
  v71 = sub_1000F24EC(&qword_100AD2840);
  sub_1000082B4(v69, v70 + *(v71 + 48), &qword_100AD2820);
  sub_100004F84(v61, &qword_100AD2820);
  sub_100004F84(v67, &qword_100AD2830);
  sub_100004F84(v69, &qword_100AD2820);
  return sub_100004F84(v68, &qword_100AD2830);
}

unint64_t sub_1001020DC()
{
  result = qword_100AD23A0;
  if (!qword_100AD23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD23A0);
  }

  return result;
}

uint64_t _s10ReflectionV14ReflectionTypeOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10010218C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = sub_1000F24EC(&qword_100AD2778);
  return sub_100100BA4(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1001021E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v102 = a3;
  v106 = a2;
  v115 = a5;
  v114 = type metadata accessor for DefaultGroupBoxStyle();
  v91 = *(v114 - 8);
  __chkstk_darwin(v114);
  v90 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1000F24EC(&qword_100AD2920);
  v89 = *(v112 - 8);
  __chkstk_darwin(v112);
  v88 = &v86 - v8;
  v113 = sub_1000F24EC(&qword_100AD2928);
  v93 = *(v113 - 8);
  __chkstk_darwin(v113);
  v92 = &v86 - v9;
  v107 = sub_1000F24EC(&qword_100AD2930);
  __chkstk_darwin(v107);
  v111 = &v86 - v10;
  v110 = sub_1000F24EC(&qword_100AD2938);
  v11 = __chkstk_darwin(v110);
  v87 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v94 = &v86 - v13;
  v14 = sub_1000F24EC(&qword_100AD2940);
  __chkstk_darwin(v14 - 8);
  v16 = &v86 - v15;
  v17 = sub_1000F24EC(&qword_100AD2948);
  v18 = __chkstk_darwin(v17 - 8);
  v86 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v108 = (&v86 - v20);
  v21 = type metadata accessor for EnvironmentValues();
  v117 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for GroupBoxStyleConfiguration.Label();
  v24 = *(v96 - 8);
  __chkstk_darwin(v96);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&qword_100AD2950);
  __chkstk_darwin(v27);
  v29 = &v86 - v28;
  v100 = sub_1000F24EC(&qword_100AD2958);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v86 - v30;
  v97 = sub_1000F24EC(&qword_100AD2960);
  __chkstk_darwin(v97);
  v32 = &v86 - v31;
  v101 = sub_1000F24EC(&qword_100AD2968);
  v33 = __chkstk_darwin(v101);
  v103 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v118 = &v86 - v35;
  v105 = a1;
  GroupBoxStyleConfiguration.label.getter();
  v104 = a4;
  v116 = v23;
  v109 = v16;
  v95 = v21;
  if (a4)
  {
    v36 = v102;
    if ((v102 & 1) == 0)
    {
LABEL_3:
      v37 = static Font.body.getter();
      goto LABEL_6;
    }
  }

  else
  {
    v38 = v102;

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v40 = v21;
    v36 = v38;
    sub_1000467F0(v38, 0);
    (*(v117 + 8))(v23, v40);
    if (v119 != 1)
    {
      goto LABEL_3;
    }
  }

  v37 = static Font.subheadline.getter();
LABEL_6:
  v41 = v37;
  v42 = v98;
  KeyPath = swift_getKeyPath();
  (*(v24 + 32))(v29, v26, v96);
  v44 = &v29[*(v27 + 36)];
  *v44 = KeyPath;
  v44[1] = v41;
  static Font.Weight.semibold.getter();
  sub_100107F78();
  View.fontWeight(_:)();
  sub_100004F84(v29, &qword_100AD2950);
  v45 = v104;
  v46 = v116;
  if (v104)
  {
    v47 = v36;
    v48 = v117;
    v49 = v118;
    if ((v47 & 1) == 0)
    {
LABEL_8:
      v50 = static HierarchicalShapeStyle.primary.getter();
      goto LABEL_11;
    }
  }

  else
  {
    v47 = v36;

    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v36, 0);
    v48 = v117;
    (*(v117 + 8))(v46, v95);
    v49 = v118;
    if (v119 != 1)
    {
      goto LABEL_8;
    }
  }

  v50 = static HierarchicalShapeStyle.secondary.getter();
LABEL_11:
  v52 = v50;
  (*(v99 + 32))(v32, v42, v100);
  *&v32[*(v97 + 36)] = v52;
  v53 = v106;
  if (v106)
  {
    v54 = 0x4024000000000000;
  }

  else
  {
    v54 = 0;
  }

  if (v106)
  {
    v55 = 0;
  }

  else
  {
    v55 = 0x401C000000000000;
  }

  v56 = static Edge.Set.all.getter();
  sub_100021CEC(v32, v49, &qword_100AD2960);
  v57 = v49 + *(v101 + 36);
  *v57 = v56;
  *(v57 + 8) = 0;
  *(v57 + 16) = v54;
  *(v57 + 24) = v55;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  v58 = static HorizontalAlignment.leading.getter();
  v59 = v108;
  *v108 = v58;
  *(v59 + 8) = 0;
  *(v59 + 16) = 0;
  sub_1000F24EC(&qword_100AD2980);
  v60 = GroupBoxStyleConfiguration.content.getter();
  if (v53)
  {
    v61 = static HorizontalAlignment.leading.getter();
    if ((v45 & 1) == 0)
    {

      static os_log_type_t.fault.getter();
      v62 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v63 = v116;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000467F0(v47, 0);
      (*(v48 + 8))(v63, v95);
      LOBYTE(v47) = v119;
    }

    v64 = 0x4024000000000000;
    if (v47)
    {
      v64 = 0x4018000000000000;
    }

    v65 = v87;
    *v87 = v61;
    v65[1] = v64;
    *(v65 + 16) = 0;
    v66 = v65 + *(sub_1000F24EC(&qword_100AD29C8) + 44);
    v67 = v103;
    sub_1000082B4(v49, v103, &qword_100AD2968);
    v68 = v86;
    sub_1000082B4(v59, v86, &qword_100AD2948);
    sub_1000082B4(v67, v66, &qword_100AD2968);
    v69 = sub_1000F24EC(&qword_100AD29D0);
    sub_1000082B4(v68, v66 + *(v69 + 48), &qword_100AD2948);
    sub_100004F84(v68, &qword_100AD2948);
    sub_100004F84(v67, &qword_100AD2968);
    v70 = v65;
    v71 = v94;
    sub_100021CEC(v70, v94, &qword_100AD2938);
    sub_1000082B4(v71, v111, &qword_100AD2938);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD29C0, &qword_100AD2938);
    v72 = sub_10000B58C(&qword_100AD29B0, &qword_100AD2920);
    v73 = sub_1001082A0(&qword_100AD29B8, &type metadata accessor for DefaultGroupBoxStyle);
    v119 = v112;
    v120 = v114;
    v121 = v72;
    v122 = v73;
    swift_getOpaqueTypeConformance2();
    v74 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v71, &qword_100AD2938);
  }

  else
  {
    __chkstk_darwin(v60);
    *(&v86 - 2) = v59;
    sub_1000082B4(v49, v103, &qword_100AD2968);
    sub_1000F24EC(&qword_100AD2988);
    sub_100108068();
    sub_1001081E8();
    v75 = v88;
    GroupBox.init(label:content:)();
    v76 = v90;
    DefaultGroupBoxStyle.init()();
    v77 = sub_10000B58C(&qword_100AD29B0, &qword_100AD2920);
    v78 = sub_1001082A0(&qword_100AD29B8, &type metadata accessor for DefaultGroupBoxStyle);
    v79 = v92;
    v80 = v112;
    v81 = v114;
    View.groupBoxStyle<A>(_:)();
    (*(v91 + 8))(v76, v81);
    (*(v89 + 8))(v75, v80);
    v82 = v93;
    v83 = v113;
    (*(v93 + 16))(v111, v79, v113);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD29C0, &qword_100AD2938);
    v119 = v80;
    v120 = v81;
    v121 = v77;
    v122 = v78;
    swift_getOpaqueTypeConformance2();
    v74 = v109;
    _ConditionalContent<>.init(storage:)();
    v84 = v79;
    v49 = v118;
    (*(v82 + 8))(v84, v83);
  }

  sub_100021CEC(v74, v115, &qword_100AD2940);
  sub_100004F84(v59, &qword_100AD2948);
  return sub_100004F84(v49, &qword_100AD2968);
}

uint64_t sub_1001030B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1000082B4(a1, a2, &qword_100AD2948);
  result = sub_1000F24EC(&qword_100AD2988);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

__n128 sub_10010316C@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SwitchToggleStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD2568);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  ToggleStyleConfiguration.$isOn.getter();
  Toggle.init(isOn:label:)();
  SwitchToggleStyle.init()();
  sub_10000B58C(&qword_100AD2570, &qword_100AD2568);
  sub_1001082A0(&qword_100AD2578, &type metadata accessor for SwitchToggleStyle);
  View.toggleStyle<A>(_:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v12 = *a1;
  static UnitPoint.trailing.getter();
  v14 = v13;
  v16 = v15;
  v17 = (a2 + *(sub_1000F24EC(&qword_100AD2560) + 36));
  *v17 = v12;
  v17[1] = v12;
  v17[2] = v14;
  v17[3] = v16;
  v18 = static Edge.Set.all.getter();
  v19 = a2 + *(sub_1000F24EC(&qword_100AD2540) + 36);
  *v19 = v18;
  result = *(a1 + 1);
  *(v19 + 24) = *(a1 + 3);
  *(v19 + 8) = result;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_100103428()
{
  type metadata accessor for ToggleStyleConfiguration.Label();
  sub_1000F24EC(&qword_100AD2540);
  sub_1001082A0(&qword_100AD2548, &type metadata accessor for ToggleStyleConfiguration.Label);
  sub_100106ADC();
  return LabeledContent<>.init(content:label:)();
}

uint64_t sub_10010351C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v52 = a3;
  v54 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v54);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CompactDatePickerStyle();
  v51 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DatePickerStyleConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD25F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v48 = sub_1000F24EC(&qword_100AD25E8);
  v15 = *(v48 - 8);
  __chkstk_darwin(v48);
  v17 = &v46 - v16;
  v49 = sub_1000F24EC(&qword_100AD25D8);
  __chkstk_darwin(v49);
  v46 = &v46 - v18;
  (*(v8 + 16))(v10, v50, v7);
  sub_100103C6C(v10, v14);
  CompactDatePickerStyle.init()();
  v19 = sub_10000B58C(&qword_100AD25F8, &qword_100AD25F0);
  v20 = sub_1001082A0(&qword_100AD2600, &type metadata accessor for CompactDatePickerStyle);
  v21 = v47;
  View.datePickerStyle<A>(_:)();
  (*(v51 + 8))(v6, v21);
  (*(v12 + 8))(v14, v11);
  *&v58 = v11;
  *(&v58 + 1) = v21;
  v59 = v19;
  v60 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v46;
  v23 = v48;
  View.labelsHidden()();
  v24 = v17;
  v25 = v52;
  (*(v15 + 8))(v24, v23);
  v26 = a2[1];
  v63 = *a2;
  v58 = v26;
  LOBYTE(v59) = *(a2 + 32);
  v61 = *(a2 + 5);
  v62 = *(a2 + 48);
  v27 = swift_allocObject();
  v28 = a2[1];
  *(v27 + 16) = *a2;
  *(v27 + 32) = v28;
  v29 = a2[1];
  *(v27 + 48) = a2[2];
  *(v27 + 64) = *(a2 + 48);
  v30 = (v22 + *(v49 + 36));
  *v30 = sub_100107238;
  v30[1] = v27;
  v56 = v29;
  v57 = *(a2 + 32);
  sub_1000082B4(&v63, &v55, &qword_100AD2640);
  sub_1000082B4(&v58, &v55, &qword_100AD2648);
  sub_1000082B4(&v61, &v55, &qword_100AD2650);
  sub_1000F24EC(&qword_100AD2648);
  FocusState.projectedValue.getter();
  sub_10010705C();
  View.focused(_:)();

  sub_100004F84(v22, &qword_100AD25D8);
  v31 = static VerticalAlignment.firstTextBaseline.getter();
  v32 = (v25 + *(sub_1000F24EC(&qword_100AD25D0) + 36));
  *v32 = v31;
  v32[1] = sub_1001047DC;
  v32[2] = 0;
  *(v25 + *(sub_1000F24EC(&qword_100AD25C0) + 36)) = 256;
  LOBYTE(v31) = static Edge.Set.all.getter();
  v33 = v25 + *(sub_1000F24EC(&qword_100AD25B0) + 36);
  *v33 = v31;
  __asm { FMOV            V0.2D, #3.0 }

  *(v33 + 8) = _Q0;
  *(v33 + 24) = xmmword_100940720;
  *(v33 + 40) = 0;
  v39 = static Alignment.center.getter();
  v41 = v40;
  v42 = v25 + *(sub_1000F24EC(&qword_100AD25A0) + 36);
  sub_10010480C(v42);
  v43 = (v42 + *(sub_1000F24EC(&qword_100AD2628) + 36));
  *v43 = v39;
  v43[1] = v41;
  if (qword_100ACF930 != -1)
  {
    swift_once();
  }

  v44 = sub_10000617C(v54, qword_100B2F2E8);
  sub_1001076BC(v44, v53, &type metadata accessor for RoundedRectangle);
  sub_1000F24EC(&qword_100AD2580);
  sub_1001082A0(&qword_100AD2658, &type metadata accessor for RoundedRectangle);
  return _ContainerRoundedRectangularShapeModifier.init(shape:)();
}

uint64_t sub_100103C6C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_1000F24EC(&qword_100AD2670);
  __chkstk_darwin(v3 - 8);
  v66 = &v59 - v4;
  v5 = sub_1000F24EC(&qword_100AD2678);
  __chkstk_darwin(v5 - 8);
  v65 = &v59 - v6;
  v7 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v7 - 8);
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000F24EC(&qword_100AD2680);
  v9 = __chkstk_darwin(v63);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v59 - v11;
  v60 = sub_1000F24EC(&qword_100AD2688);
  __chkstk_darwin(v60);
  v64 = &v59 - v12;
  v13 = sub_1000F24EC(&qword_100AD2690);
  __chkstk_darwin(v13 - 8);
  v74 = &v59 - v14;
  v15 = type metadata accessor for Date();
  v73 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v67 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v59 - v18;
  v20 = sub_1000F24EC(&unk_100AD5BE0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v59 - v22;
  v24 = sub_1000F24EC(&unk_100AD4790);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v59 - v28;
  v30 = sub_1000F24EC(&qword_100AD25F0);
  v69 = *(v30 - 8);
  v70 = v30;
  __chkstk_darwin(v30);
  v68 = &v59 - v31;
  DatePickerStyleConfiguration.minimumDate.getter();
  v32 = a1;
  DatePickerStyleConfiguration.maximumDate.getter();
  v33 = *(v21 + 56);
  sub_100021CEC(v29, v23, &unk_100AD4790);
  v34 = v73;
  sub_100021CEC(v27, &v23[v33], &unk_100AD4790);
  v35 = *(v34 + 48);
  LODWORD(a1) = v35(v23, 1, v15);
  v36 = v35(&v23[v33], 1, v15);
  v37 = v36;
  if (a1 == 1)
  {
    if (v36 == 1)
    {
      v38 = v32;
      DatePickerStyleConfiguration.$selection.getter();
      v39 = DatePickerStyleConfiguration.displayedComponents.getter();
      __chkstk_darwin(v39);
      *(&v59 - 2) = v32;
      type metadata accessor for DatePickerStyleConfiguration.Label();
      sub_1001082A0(&qword_100AD2588, &type metadata accessor for DatePickerStyleConfiguration.Label);
      v40 = v68;
      DatePicker.init(selection:displayedComponents:label:)();
LABEL_11:
      (*(v69 + 32))(v72, v40, v70);
      v58 = type metadata accessor for DatePickerStyleConfiguration();
      return (*(*(v58 - 8) + 8))(v38, v58);
    }

    (*(v34 + 32))(v19, &v23[v33], v15);
    v38 = v32;
    DatePickerStyleConfiguration.$selection.getter();
    sub_1001082A0(&qword_100AD5BF0, &type metadata accessor for Date);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      (*(v34 + 16))(v66, v19, v15);
      v45 = DatePickerStyleConfiguration.displayedComponents.getter();
      v67 = &v59;
      __chkstk_darwin(v45);
      *(&v59 - 2) = v32;
      type metadata accessor for DatePickerStyleConfiguration.Label();
      sub_1001082A0(&qword_100AD2588, &type metadata accessor for DatePickerStyleConfiguration.Label);
      v40 = v68;
      DatePicker.init(selection:in:displayedComponents:label:)();
      (*(v34 + 8))(v19, v15);
      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v41 = v34;
  v42 = *(v34 + 32);
  v42(v19, v23, v15);
  if (v37 == 1)
  {
    v38 = v32;
    DatePickerStyleConfiguration.$selection.getter();
    sub_1001082A0(&qword_100AD5BF0, &type metadata accessor for Date);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      (*(v41 + 16))(v65, v19, v15);
      v44 = DatePickerStyleConfiguration.displayedComponents.getter();
      v67 = &v59;
      __chkstk_darwin(v44);
      *(&v59 - 2) = v32;
      type metadata accessor for DatePickerStyleConfiguration.Label();
      sub_1001082A0(&qword_100AD2588, &type metadata accessor for DatePickerStyleConfiguration.Label);
      v40 = v68;
      DatePicker.init(selection:in:displayedComponents:label:)();
      (*(v41 + 8))(v19, v15);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  v46 = v67;
  v42(v67, &v23[v33], v15);
  v47 = v32;
  DatePickerStyleConfiguration.$selection.getter();
  sub_1001082A0(&qword_100AD2698, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v48 = v41;
    v49 = *(v41 + 16);
    v50 = v61;
    v49(v61, v19, v15);
    v66 = v47;
    v51 = v63;
    v49((v50 + *(v63 + 48)), v46, v15);
    v52 = v62;
    sub_1000082B4(v50, v62, &qword_100AD2680);
    v53 = *(v51 + 48);
    v54 = v64;
    v42(v64, v52, v15);
    v65 = v19;
    v55 = *(v48 + 8);
    v55(v52 + v53, v15);
    sub_100021CEC(v50, v52, &qword_100AD2680);
    v56 = *(v51 + 48);
    v38 = v66;
    v42(&v54[*(v60 + 36)], (v52 + v56), v15);
    v55(v52, v15);
    v57 = DatePickerStyleConfiguration.displayedComponents.getter();
    __chkstk_darwin(v57);
    *(&v59 - 2) = v38;
    type metadata accessor for DatePickerStyleConfiguration.Label();
    sub_1001082A0(&qword_100AD2588, &type metadata accessor for DatePickerStyleConfiguration.Label);
    v40 = v68;
    DatePicker.init(selection:in:displayedComponents:label:)();
    v55(v67, v15);
    v55(v65, v15);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

double sub_1001047DC()
{
  static VerticalAlignment.bottom.getter();
  ViewDimensions.subscript.getter();
  return v0 + -2.0;
}

uint64_t sub_10010480C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SeparatorShapeStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001049D8(v19);
  v6 = v19[0];
  SeparatorShapeStyle.init()();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v7 = *v19;
  v8 = v19[2];
  v9 = v19[3];
  v10 = v19[4];
  v11 = sub_1000F24EC(&qword_100AD2660);
  v12 = v19[1];
  (*(v3 + 16))(a1 + *(v11 + 52), v5, v2);
  *a1 = v7 * 0.5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + *(v11 + 56)) = 256;
  v13 = static Alignment.center.getter();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  result = sub_1000F24EC(&qword_100AD2668);
  v17 = a1 + *(result + 36);
  *v17 = v6;
  *(v17 + 8) = 256;
  *(v17 + 16) = v13;
  *(v17 + 24) = v15;
  return result;
}

uint64_t sub_1001049D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ColorResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  sub_1000F24EC(&qword_100AD2640);
  State.wrappedValue.getter();
  if ((v12 & 1) != 0 || (v10 = v1[1], v11 = *(v1 + 32), sub_1000F24EC(&qword_100AD2648), FocusState.wrappedValue.getter(), v12 == 1))
  {
    if (qword_100AD0CB8 != -1)
    {
      swift_once();
    }

    v7 = sub_10000617C(v3, qword_100B31538);
    (*(v4 + 16))(v6, v7, v3);
    v8 = Color.init(_:)();
  }

  else
  {
    v8 = static Color.clear.getter();
  }

  *&v10 = v8;
  result = AnyShapeStyle.init<A>(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100104B80()
{
  type metadata accessor for DatePickerStyleConfiguration.Label();
  sub_1000F24EC(&qword_100AD2580);
  sub_1001082A0(&qword_100AD2588, &type metadata accessor for DatePickerStyleConfiguration.Label);
  sub_100106CE0();
  return LabeledContent<>.init(content:label:)();
}

uint64_t sub_100104C80()
{
  v0 = sub_1000F24EC(&qword_100AD26B0);
  __chkstk_darwin(v0);
  v2 = &v4 - v1;
  *v2 = static VerticalAlignment.center.getter();
  *(v2 + 1) = 0x4024000000000000;
  v2[16] = 0;
  sub_1000F24EC(&qword_100AD26C8);
  ControlGroupStyleConfiguration.content.getter();
  sub_10000B58C(&qword_100AD26B8, &qword_100AD26B0);
  sub_1001072B8();
  View.toggleStyle<A>(_:)();
  return sub_100004F84(v2, &qword_100AD26B0);
}

uint64_t sub_100104DA4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = type metadata accessor for TintShapeStyle();
  __chkstk_darwin(v23);
  v22 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ToggleStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD28E8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_1000F24EC(&qword_100AD28D8);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  ToggleStyleConfiguration.label.getter();
  if (ToggleStyleConfiguration.isOn.getter())
  {
    v12 = static Color.white.getter();
  }

  else
  {
    v12 = static Color.secondary.getter();
  }

  v13 = v12;
  KeyPath = swift_getKeyPath();
  (*(v3 + 32))(v8, v5, v2);
  v15 = &v8[*(v6 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100021CEC(v8, v11, &qword_100AD28E8);
  v16 = &v11[*(v9 + 36)];
  v17 = v27;
  *v16 = v26;
  *(v16 + 1) = v17;
  *(v16 + 2) = v28;
  if (ToggleStyleConfiguration.isOn.getter())
  {
    TintShapeStyle.init()();
  }

  else
  {
    v25 = static HierarchicalShapeStyle.quaternary.getter();
  }

  v18 = AnyShapeStyle.init<A>(_:)();
  v19 = v24;
  sub_100021CEC(v11, v24, &qword_100AD28D8);
  result = sub_1000F24EC(&qword_100AD28C0);
  v21 = v19 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = 256;
  return result;
}

uint64_t sub_1001050A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToggleStyleConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1000F24EC(&qword_100AD28B8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v22 = a1;
  sub_1000F24EC(&qword_100AD28C0);
  sub_100107D4C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000B58C(&qword_100AD2910, &qword_100AD28B8);
  sub_1001082A0(&qword_100AD2918, &type metadata accessor for PlainButtonStyle);
  v16 = v19;
  View.buttonStyle<A>(_:)();
  (*(v20 + 8))(v6, v16);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1001053E4()
{
  type metadata accessor for ControlGroupStyleConfiguration.Label();
  sub_1000F24EC(&qword_100AD26A0);
  sub_1001082A0(&qword_100AD26A8, &type metadata accessor for ControlGroupStyleConfiguration.Label);
  sub_1000F2A18(&qword_100AD26B0);
  sub_10000B58C(&qword_100AD26B8, &qword_100AD26B0);
  sub_1001072B8();
  swift_getOpaqueTypeConformance2();
  return LabeledContent<>.init(content:label:)();
}

uint64_t sub_100105550@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(a1, 0);
    (*(v7 + 8))(v9, v6);
    if (v14 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = static HorizontalAlignment.leading.getter();
    v15 = 0;
    v16 = 0;
    sub_100107360();
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static VerticalAlignment.firstTextLineCenter.getter();
  v15 = 0;
  v16 = 0;
  sub_10010730C();
LABEL_6:
  *a3 = AnyLayout.init<A>(_:)();
  v11 = sub_1000F24EC(&qword_100AD26D8);
  return sub_100105718(a3 + *(v11 + 44));
}

uint64_t sub_100105718@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000F24EC(&qword_100AD26E8);
  v2 = v1 - 8;
  v3 = __chkstk_darwin(v1);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v20 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  __chkstk_darwin(v20);
  v7 = sub_1000F24EC(&qword_100AD26F0);
  v8 = __chkstk_darwin(v7 - 8);
  v19 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  sub_1000F24EC(&qword_100AD26F8);
  LabeledContentStyleConfiguration.label.getter();
  sub_1000F24EC(&qword_100AD2700);
  sub_1001082A0(&qword_100AD2708, &type metadata accessor for LabeledContentStyleConfiguration.Label);
  sub_10000B58C(&qword_100AD2710, &qword_100AD2700);
  Group.init<A, B>(subviews:transform:)();
  LabeledContentStyleConfiguration.content.getter();
  *&v6[*(sub_1000F24EC(&qword_100AD2718) + 36)] = 1;
  v12 = &v6[*(v2 + 44)];
  *v12 = 0;
  v12[4] = 1;
  v13 = v19;
  sub_1000082B4(v11, v19, &qword_100AD26F0);
  v14 = v21;
  sub_1000082B4(v6, v21, &qword_100AD26E8);
  v15 = v22;
  sub_1000082B4(v13, v22, &qword_100AD26F0);
  v16 = sub_1000F24EC(&qword_100AD2720);
  v17 = v15 + *(v16 + 48);
  *v17 = 0x4010000000000000;
  *(v17 + 8) = 0;
  sub_1000082B4(v14, v15 + *(v16 + 64), &qword_100AD26E8);
  sub_100004F84(v6, &qword_100AD26E8);
  sub_100004F84(v11, &qword_100AD26F0);
  sub_100004F84(v14, &qword_100AD26E8);
  return sub_100004F84(v13, &qword_100AD26F0);
}

uint64_t sub_100105AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for SubviewsCollection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SubviewsCollectionSlice();
  __chkstk_darwin(v7);
  v30 = sub_1000F24EC(&qword_100AD2728);
  v8 = *(v30 - 8);
  v9 = __chkstk_darwin(v30);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = sub_1000F24EC(&qword_100AD2730);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_100603AAC(&v28 - v17);
  (*(v4 + 16))(v6, a1, v3);
  sub_1007A7208(1);
  type metadata accessor for Subview.ID();
  sub_1000F24EC(&qword_100AD2738);
  sub_1001082A0(&qword_100AD2740, &type metadata accessor for SubviewsCollectionSlice);
  sub_1001073B4();
  sub_1001082A0(&qword_100AD2768, &type metadata accessor for Subview);
  ForEach<>.init(_:content:)();
  v19 = v16;
  v28 = v16;
  sub_1000082B4(v18, v16, &qword_100AD2730);
  v20 = *(v8 + 16);
  v21 = v29;
  v22 = v30;
  v20(v29, v12, v30);
  v23 = v19;
  v24 = v31;
  sub_1000082B4(v23, v31, &qword_100AD2730);
  v25 = sub_1000F24EC(&qword_100AD2770);
  v20((v24 + *(v25 + 48)), v21, v22);
  v26 = *(v8 + 8);
  v26(v12, v22);
  sub_100004F84(v18, &qword_100AD2730);
  v26(v21, v22);
  return sub_100004F84(v28, &qword_100AD2730);
}

uint64_t sub_100105EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for Subview();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(sub_1000F24EC(&qword_100AD2758) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  result = sub_1000F24EC(&qword_100AD2738);
  *(a2 + *(result + 36)) = a1;
  return result;
}

unint64_t sub_100105F98()
{
  result = qword_100AD23C8;
  if (!qword_100AD23C8)
  {
    sub_1000F2A18(&qword_100AD23C0);
    sub_100106024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD23C8);
  }

  return result;
}

unint64_t sub_100106024()
{
  result = qword_100AD23D0;
  if (!qword_100AD23D0)
  {
    sub_1000F2A18(&qword_100AD23D8);
    sub_1001060B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD23D0);
  }

  return result;
}

unint64_t sub_1001060B0()
{
  result = qword_100AD23E0;
  if (!qword_100AD23E0)
  {
    sub_1000F2A18(&qword_100AD23E8);
    sub_1000F2A18(&qword_100AD23F0);
    sub_1000F2A18(&qword_100AD23F8);
    sub_1000F2A18(&qword_100AD2400);
    sub_1000F2A18(&qword_100AD2408);
    sub_10010628C();
    sub_100106370();
    swift_getOpaqueTypeConformance2();
    sub_1001063C4();
    swift_getOpaqueTypeConformance2();
    sub_100106418();
    swift_getOpaqueTypeConformance2();
    sub_10010646C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD23E0);
  }

  return result;
}

unint64_t sub_10010628C()
{
  result = qword_100AD2410;
  if (!qword_100AD2410)
  {
    sub_1000F2A18(&qword_100AD2408);
    sub_10000B58C(&qword_100AD2418, &qword_100AD2420);
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2410);
  }

  return result;
}

unint64_t sub_100106370()
{
  result = qword_100AD2438;
  if (!qword_100AD2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2438);
  }

  return result;
}

unint64_t sub_1001063C4()
{
  result = qword_100AD2440;
  if (!qword_100AD2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2440);
  }

  return result;
}

unint64_t sub_100106418()
{
  result = qword_100AD2448;
  if (!qword_100AD2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2448);
  }

  return result;
}

unint64_t sub_10010646C()
{
  result = qword_100AD2450;
  if (!qword_100AD2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2450);
  }

  return result;
}

uint64_t type metadata accessor for MacSettingsFormStyle.Section()
{
  result = qword_100AD24F0;
  if (!qword_100AD24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010654C(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = a1();
  a3(&v7, a2, a2, v5);
  return v7;
}

unint64_t sub_1001065A4()
{
  result = qword_100AD2490;
  if (!qword_100AD2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2490);
  }

  return result;
}

uint64_t sub_100106608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t sub_100106650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_1001066B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001066D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10010672C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1001067A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001067B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001067D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_100106840()
{
  result = type metadata accessor for SectionConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001068AC()
{
  result = qword_100AD2528;
  if (!qword_100AD2528)
  {
    sub_1000F2A18(&qword_100AD2468);
    sub_1000F2A18(&qword_100AD23B0);
    sub_1000F2A18(&qword_100AD23A8);
    sub_10000B58C(&qword_100AD2458, &qword_100AD23A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD2530, &qword_100AD2538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2528);
  }

  return result;
}

unint64_t sub_100106ADC()
{
  result = qword_100AD2550;
  if (!qword_100AD2550)
  {
    sub_1000F2A18(&qword_100AD2540);
    sub_100106B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2550);
  }

  return result;
}

unint64_t sub_100106B68()
{
  result = qword_100AD2558;
  if (!qword_100AD2558)
  {
    sub_1000F2A18(&qword_100AD2560);
    sub_1000F2A18(&qword_100AD2568);
    type metadata accessor for SwitchToggleStyle();
    sub_10000B58C(&qword_100AD2570, &qword_100AD2568);
    sub_1001082A0(&qword_100AD2578, &type metadata accessor for SwitchToggleStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2558);
  }

  return result;
}

unint64_t sub_100106CE0()
{
  result = qword_100AD2590;
  if (!qword_100AD2590)
  {
    sub_1000F2A18(&qword_100AD2580);
    sub_100106D98();
    sub_10000B58C(&qword_100AD2630, &qword_100AD2638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2590);
  }

  return result;
}

unint64_t sub_100106D98()
{
  result = qword_100AD2598;
  if (!qword_100AD2598)
  {
    sub_1000F2A18(&qword_100AD25A0);
    sub_100106E50();
    sub_10000B58C(&qword_100AD2620, &qword_100AD2628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2598);
  }

  return result;
}

unint64_t sub_100106E50()
{
  result = qword_100AD25A8;
  if (!qword_100AD25A8)
  {
    sub_1000F2A18(&qword_100AD25B0);
    sub_100106EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD25A8);
  }

  return result;
}

unint64_t sub_100106EDC()
{
  result = qword_100AD25B8;
  if (!qword_100AD25B8)
  {
    sub_1000F2A18(&qword_100AD25C0);
    sub_100106F94();
    sub_10000B58C(&qword_100AD2610, &qword_100AD2618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD25B8);
  }

  return result;
}

unint64_t sub_100106F94()
{
  result = qword_100AD25C8;
  if (!qword_100AD25C8)
  {
    sub_1000F2A18(&qword_100AD25D0);
    sub_1000F2A18(&qword_100AD25D8);
    sub_10010705C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD25C8);
  }

  return result;
}

unint64_t sub_10010705C()
{
  result = qword_100AD25E0;
  if (!qword_100AD25E0)
  {
    sub_1000F2A18(&qword_100AD25D8);
    sub_1000F2A18(&qword_100AD25E8);
    sub_1000F2A18(&qword_100AD25F0);
    type metadata accessor for CompactDatePickerStyle();
    sub_10000B58C(&qword_100AD25F8, &qword_100AD25F0);
    sub_1001082A0(&qword_100AD2600, &type metadata accessor for CompactDatePickerStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1001071E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD25E0);
  }

  return result;
}

unint64_t sub_1001071E4()
{
  result = qword_100AD2608;
  if (!qword_100AD2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2608);
  }

  return result;
}

unint64_t sub_1001072B8()
{
  result = qword_100AD26C0;
  if (!qword_100AD26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD26C0);
  }

  return result;
}

unint64_t sub_10010730C()
{
  result = qword_100AD26D0;
  if (!qword_100AD26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD26D0);
  }

  return result;
}

unint64_t sub_100107360()
{
  result = qword_100AD26E0;
  if (!qword_100AD26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD26E0);
  }

  return result;
}

unint64_t sub_1001073B4()
{
  result = qword_100AD2748;
  if (!qword_100AD2748)
  {
    sub_1000F2A18(&qword_100AD2738);
    sub_10010746C();
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2748);
  }

  return result;
}

unint64_t sub_10010746C()
{
  result = qword_100AD2750;
  if (!qword_100AD2750)
  {
    sub_1000F2A18(&qword_100AD2758);
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2750);
  }

  return result;
}

unint64_t sub_10010752C()
{
  result = qword_100AD27A8;
  if (!qword_100AD27A8)
  {
    sub_1000F2A18(&qword_100AD27A0);
    sub_1001075B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD27A8);
  }

  return result;
}

unint64_t sub_1001075B8()
{
  result = qword_100AD27B0;
  if (!qword_100AD27B0)
  {
    sub_1000F2A18(&qword_100AD27B8);
    sub_10000B58C(&qword_100AD27C0, &qword_100AD27C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD27B0);
  }

  return result;
}

unint64_t sub_100107668()
{
  result = qword_100AD27D8;
  if (!qword_100AD27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD27D8);
  }

  return result;
}

uint64_t sub_1001076BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100107724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSettingsFormStyle.Section();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100107788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MacSettingsFormStyle.Section() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1001014E0(a1, v6, a2);
}

__n128 initializeBufferWithCopyOfBuffer for SidebarInsightsBrickViewModel.MilestoneType(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10010782C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t sub_100107880(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001078D4()
{
  result = qword_100AD2850;
  if (!qword_100AD2850)
  {
    sub_1000F2A18(&qword_100AD2858);
    sub_1001082A0(&qword_100AD2548, &type metadata accessor for ToggleStyleConfiguration.Label);
    sub_100106ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2850);
  }

  return result;
}

unint64_t sub_100107990()
{
  result = qword_100AD2860;
  if (!qword_100AD2860)
  {
    sub_1000F2A18(&qword_100AD2868);
    sub_1001082A0(&qword_100AD2588, &type metadata accessor for DatePickerStyleConfiguration.Label);
    sub_100106CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2860);
  }

  return result;
}

unint64_t sub_100107A4C()
{
  result = qword_100AD2870;
  if (!qword_100AD2870)
  {
    sub_1000F2A18(&qword_100AD2878);
    sub_1001082A0(&qword_100AD26A8, &type metadata accessor for ControlGroupStyleConfiguration.Label);
    sub_1000F2A18(&qword_100AD26B0);
    sub_10000B58C(&qword_100AD26B8, &qword_100AD26B0);
    sub_1001072B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2870);
  }

  return result;
}

unint64_t sub_100107B94()
{
  result = qword_100AD2880;
  if (!qword_100AD2880)
  {
    sub_1000F2A18(&qword_100AD26D8);
    sub_10000B58C(&qword_100AD2888, &qword_100AD2890);
    sub_10000B58C(&qword_100AD2898, &qword_100AD28A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2880);
  }

  return result;
}

uint64_t sub_100107CB0()
{
  type metadata accessor for ToggleStyleConfiguration();
  v0 = ToggleStyleConfiguration.isOn.modify();
  *v1 = !*v1;
  return v0(&v3, 0);
}

unint64_t sub_100107D4C()
{
  result = qword_100AD28C8;
  if (!qword_100AD28C8)
  {
    sub_1000F2A18(&qword_100AD28C0);
    sub_100107E04();
    sub_10000B58C(&qword_100AD2900, &qword_100AD2908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD28C8);
  }

  return result;
}

unint64_t sub_100107E04()
{
  result = qword_100AD28D0;
  if (!qword_100AD28D0)
  {
    sub_1000F2A18(&qword_100AD28D8);
    sub_100107E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD28D0);
  }

  return result;
}

unint64_t sub_100107E90()
{
  result = qword_100AD28E0;
  if (!qword_100AD28E0)
  {
    sub_1000F2A18(&qword_100AD28E8);
    sub_1001082A0(&qword_100AD2548, &type metadata accessor for ToggleStyleConfiguration.Label);
    sub_10000B58C(&qword_100AD28F0, &qword_100AD28F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD28E0);
  }

  return result;
}

unint64_t sub_100107F78()
{
  result = qword_100AD2970;
  if (!qword_100AD2970)
  {
    sub_1000F2A18(&qword_100AD2950);
    sub_1001082A0(&qword_100AD2978, &type metadata accessor for GroupBoxStyleConfiguration.Label);
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2970);
  }

  return result;
}

unint64_t sub_100108068()
{
  result = qword_100AD2990;
  if (!qword_100AD2990)
  {
    sub_1000F2A18(&qword_100AD2968);
    sub_1001080F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2990);
  }

  return result;
}

unint64_t sub_1001080F4()
{
  result = qword_100AD2998;
  if (!qword_100AD2998)
  {
    sub_1000F2A18(&qword_100AD2960);
    sub_1000F2A18(&qword_100AD2950);
    sub_100107F78();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2998);
  }

  return result;
}

unint64_t sub_1001081E8()
{
  result = qword_100AD29A0;
  if (!qword_100AD29A0)
  {
    sub_1000F2A18(&qword_100AD2988);
    sub_10000B58C(&qword_100AD29A8, &qword_100AD2948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD29A0);
  }

  return result;
}

uint64_t sub_1001082A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001082E8()
{
  result = qword_100AD29D8;
  if (!qword_100AD29D8)
  {
    sub_1000F2A18(&qword_100AD2940);
    sub_10000B58C(&qword_100AD29C0, &qword_100AD2938);
    sub_1000F2A18(&qword_100AD2920);
    type metadata accessor for DefaultGroupBoxStyle();
    sub_10000B58C(&qword_100AD29B0, &qword_100AD2920);
    sub_1001082A0(&qword_100AD29B8, &type metadata accessor for DefaultGroupBoxStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD29D8);
  }

  return result;
}

id sub_100108470(id result)
{
  v2 = *&v1[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }

    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000F24EC(&unk_100AD4780);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100941040;
    swift_getKeyPath();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1001097FC;
    *(v5 + 24) = v3;
    v6 = v2;
    swift_retain_n();
    v7 = v1;
    v8 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    *(v4 + 32) = v8;
    swift_getKeyPath();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1001097FC;
    *(v9 + 24) = v3;

    v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    *(v4 + 40) = v10;
    swift_getKeyPath();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001097FC;
    *(v11 + 24) = v3;

    v12 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    *(v4 + 48) = v12;
    swift_getKeyPath();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1001097FC;
    *(v13 + 24) = v3;

    v14 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    *(v4 + 56) = v14;
    swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1001097FC;
    *(v15 + 24) = v3;

    v1 = v7;
    v16 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    *(v4 + 64) = v16;
    *(&v19 + 1) = sub_1000F24EC(&qword_100AD2A20);

    *&v18 = v4;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v18 = 0u;
    v19 = 0u;
  }

  v17 = OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItemObserver;
  swift_beginAccess();
  sub_10002823C(&v18, &v1[v17]);
  swift_endAccess();
  return [v1 setNeedsUpdateConfiguration];
}

void sub_100108838()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsUpdateConfiguration];
  }
}

id sub_100108894(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItemObserver];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v4[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_scrollOffsetObserver] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for MacLargeTitleCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = UIAccessibilityTraitHeader;
  v12 = v10;
  v13 = [v12 accessibilityTraits];
  if ((v11 & ~v13) != 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  [v12 setAccessibilityTraits:v14 | v13];

  return v12;
}

void sub_100108A40(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MacLargeTitleCollectionViewCell();
  v6 = *a4;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, v6, a3);
  v8 = *&v7[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_scrollOffsetObserver];
  *&v7[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_scrollOffsetObserver] = 0;
}

uint64_t sub_100108AB4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = UICellConfigurationState.traitCollection.getter();
  v12 = sub_10002E3AC();

  sub_10023DEC0(v12, v50);
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  v13 = type metadata accessor for UICellConfigurationState();
  v47 = v13;
  v48 = &protocol witness table for UICellConfigurationState;
  v14 = sub_10001A770(aBlock);
  (*(*(v13 - 8) + 16))(v14, a1, v13);
  UIListContentConfiguration.updated(for:)();
  v45 = *(v5 + 8);
  v45(v8, v4);
  sub_10000BA7C(aBlock);
  v15 = OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem;
  v16 = *&v2[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem];
  if (v16)
  {
    v17 = [v16 largeTitle];
    if (v17 || (v19 = *&v2[v15]) != 0 && (v17 = [v19 title]) != 0)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  UIListContentConfiguration.text.setter();
  sub_100047788(UIFontTextStyleLargeTitle, &off_100A55E00, 0);
  sub_100047D60(&unk_100A55E20);
  v20 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v20(aBlock, 0);
  v21 = *&v2[v15];
  if (v21)
  {
    v22 = [v21 standardAppearance];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 largeTitleTextAttributes];

      type metadata accessor for Key(0);
      sub_1000806F8();
      v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v25 + 16) && (v26 = sub_100051964(NSForegroundColorAttributeName), (v27 & 1) != 0))
      {
        sub_10000BA20(*(v25 + 56) + 32 * v26, aBlock);

        sub_1000065A8(0, &qword_100AD4C70);
        if (swift_dynamicCast())
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }
  }

  v28 = [objc_opt_self() labelColor];
LABEL_14:
  v29 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v29(aBlock, 0);
  v30 = *&v2[v15];
  if (v30)
  {
    v31 = [v30 largeSubtitle];
    if (v31 || (v33 = *&v2[v15]) != 0 && (v31 = [v33 subtitle]) != 0)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  UIListContentConfiguration.secondaryText.setter();
  v34 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v35 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v35(aBlock, 0);
  v36 = [objc_opt_self() secondaryLabelColor];
  v37 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v37(aBlock, 0);
  UIListContentConfiguration.textToSecondaryTextVerticalPadding.setter();
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  UIListContentConfiguration.directionalLayoutMargins.setter();
  v38 = objc_opt_self();
  v39 = swift_allocObject();
  *(v39 + 16) = v2;
  *(v39 + 24) = v10;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_100109A44;
  *(v40 + 24) = v39;
  v48 = sub_100028EF4;
  v49 = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  v47 = &unk_100A5D0E0;
  v41 = _Block_copy(aBlock);
  v42 = v2;

  [v38 performWithoutAnimation:v41];
  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v45(v10, v4);
  }

  return result;
}

uint64_t sub_1001090F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v6[3] = v3;
  v6[4] = &protocol witness table for UIListContentConfiguration;
  v4 = sub_10001A770(v6);
  (*(*(v3 - 8) + 16))(v4, a2, v3);
  return UICollectionViewCell.contentConfiguration.setter();
}

void sub_100109264()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MacLargeTitleCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = [v0 window];
  if (v2)
  {

    v3 = OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_scrollOffsetObserver;
    if (!*&v0[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_scrollOffsetObserver])
    {
      sub_1000065A8(0, &qword_100AE4210);
      UIView.next<A>(of:)();
      v4 = v7;
      if (v7)
      {
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v5 = v7;
        v4 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
      }

      v6 = *&v1[v3];
      *&v1[v3] = v4;
    }
  }
}

void sub_1001093AC(void **a1)
{
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *&Strong[OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem];
    if (!v8)
    {
LABEL_16:

      return;
    }

    v9 = Strong;
    v7 = v8;
    v10 = [v5 indexPathForCell:v9];
    if (v10)
    {
      v11 = v10;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for IndexPath();
      (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
      sub_100004F84(v4, &unk_100ADFB90);
      v13 = [v9 contentView];

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v16 = [v14 textLayoutGuide];
        if (v16)
        {
          v17 = v16;
          [v15 layoutIfNeeded];
          [v17 layoutFrame];
          [v15 convertRect:v5 toCoordinateSpace:?];
          MidY = CGRectGetMidY(v28);
          [v5 bounds];
          MinY = CGRectGetMinY(v29);
          [v5 adjustedContentInset];
          sub_10070AABC(MinY + v20 < MidY);

          goto LABEL_14;
        }
      }
    }

    else
    {

      v21 = type metadata accessor for IndexPath();
      (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
      sub_100004F84(v4, &unk_100ADFB90);
    }

    v22 = [v7 standardAppearance];
    if (!v22)
    {
      goto LABEL_15;
    }

    v23 = v22;
    v24 = [v22 _titleControlHidden];

    if (!v24)
    {
      goto LABEL_15;
    }

    v25 = [v7 standardAppearance];
    if (!v25)
    {
      v25 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v26 = v25;
    [v25 _setTitleControlHidden:0];
    [v7 setStandardAppearance:v26];
    v17 = v9;
    v9 = v7;
    v7 = v26;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }
}

id sub_100109738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MacLargeTitleCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10010983C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1001098A0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_100109928(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 largeTitleTextAttributes];
  type metadata accessor for Key(0);
  sub_1000806F8();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void sub_1001099A4(uint64_t a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for Key(0);
  sub_1000806F8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v2 setLargeTitleTextAttributes:isa];
}

uint64_t sub_100109A4C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD2A70);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastView;
  v38 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastView);
  v15 = *(v14 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  *(v14 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = 7;
  v16 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  v17 = *(v14 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
  v36 = v9;
  if (v17 != 1)
  {
    v18 = &v36 - v11;
    v19 = v6;
    v20 = a1;
    v21 = v14;
    goto LABEL_11;
  }

  if (v15 <= 3)
  {
    v18 = &v36 - v11;
    v19 = v6;
    v20 = a1;
    goto LABEL_9;
  }

  if (v15 <= 5)
  {
    v18 = &v36 - v11;
    v19 = v6;
    v20 = a1;
    goto LABEL_9;
  }

  if (v15 == 6)
  {
    v18 = &v36 - v11;
    v19 = v6;
    v20 = a1;
LABEL_9:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v23 = v14;

    if (v22)
    {

LABEL_12:
      a1 = v20;
      v6 = v19;
      v12 = v18;
      v9 = v36;
      goto LABEL_13;
    }

LABEL_11:
    (*((swift_isaMask & *v14) + 0x100))(v21);
    *(v14 + v16) = 1;

    goto LABEL_12;
  }

LABEL_13:
  v24 = *(v38 + v13);
  v25 = *((swift_isaMask & *v24) + 0x1D0);
  v26 = v24;
  v25(a1);

  if (*(a1 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata))
  {

    sub_10025C244(v12);
  }

  else
  {
    v27 = type metadata accessor for PodcastAssetMetadata();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  }

  sub_100005508();
  v28 = static OS_dispatch_queue.main.getter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10010BAA4(v12, v9);
  v30 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  sub_10010BB14(v9, v31 + v30);
  aBlock[4] = sub_10010BB84;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A5D170;
  v32 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000068D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v33 = v40;
  v34 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v42 + 8))(v33, v34);
  (*(v39 + 8))(v6, v41);
  return sub_100004F84(v12, &qword_100AD2A70);
}

void sub_10010A0BC(uint64_t a1, uint64_t a2)
{
  v3 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v3);
  v5 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v160 = &v150 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD2A70);
  __chkstk_darwin(v12 - 8);
  v14 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v150 - v16;
  __chkstk_darwin(v18);
  v20 = &v150 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v152 = v3;
  v153 = v11;
  v159 = v9;
  v166 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_backgroundView;
  v22 = Strong;
  v23 = *(Strong + OBJC_IVAR____TtC7Journal21FullScreenPodcastView_backgroundView);
  sub_1000746FC();

  v164 = v22;
  v167 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_dropShadowView;
  v24 = *(v22 + OBJC_IVAR____TtC7Journal21FullScreenPodcastView_dropShadowView);
  sub_1000746FC();

  v165 = a2;
  sub_10010BAA4(a2, v20);
  v25 = type metadata accessor for PodcastAssetMetadata();
  v26 = *(v25 - 8);
  v161 = *(v26 + 48);
  if (v161(v20, 1, v25) == 1)
  {
    sub_100004F84(v20, &qword_100AD2A70);
    v155 = 0;
    v27 = 0;
  }

  else
  {
    v155 = PodcastAssetMetadata.title.getter();
    v27 = v28;
    (*(v26 + 8))(v20, v25);
  }

  sub_10010BAA4(v165, v17);
  v29 = v161(v17, 1, v25);
  v157 = v8;
  v151 = v5;
  if (v29 == 1)
  {
    sub_100004F84(v17, &qword_100AD2A70);
    v154 = 0;
    v30 = 0;
  }

  else
  {
    v154 = PodcastAssetMetadata.author.getter();
    v30 = v31;
    (*(v26 + 8))(v17, v25);
  }

  v32 = [objc_opt_self() mainBundle];
  v172._object = 0x80000001008DE880;
  v33._countAndFlagsBits = 0x74736163646F50;
  v33._object = 0xE700000000000000;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v172._countAndFlagsBits = 0xD000000000000013;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v172)._countAndFlagsBits;

  v35 = [objc_allocWithZone(UIStackView) init];
  [v35 setAxis:1];
  [v35 setAlignment:3];
  [v35 setSpacing:16.0];
  v158 = v35;
  [v158 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [objc_allocWithZone(UIStackView) init];
  v163 = [objc_allocWithZone(UILabel) init];
  v162 = [objc_allocWithZone(UILabel) init];
  v37 = [objc_allocWithZone(UILabel) init];
  if (v27)
  {
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  [v163 setText:v38];

  if (v30)
  {
    v39 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = 0;
  }

  [v162 setText:v39];

  v40 = String._bridgeToObjectiveC()();

  v41 = v37;
  [v37 setText:v40];

  sub_10010BAA4(v165, v14);
  if (v161(v14, 1, v25) == 1)
  {
    sub_100004F84(v14, &qword_100AD2A70);
    v42 = v160;
    (*(v159 + 56))(v160, 1, 1, v157);
    v43 = v164;
  }

  else
  {
    v42 = v160;
    PodcastAssetMetadata.timePlayed.getter();
    (*(v26 + 8))(v14, v25);
    v44 = v159;
    v45 = v157;
    v46 = (*(v159 + 48))(v42, 1, v157);
    v43 = v164;
    if (v46 != 1)
    {
      (*(v44 + 32))(v153, v42, v45);
      v47 = v151;
      static Date.FormatStyle.TimeStyle.shortened.getter();
      static FormatStyleCapitalizationContext.standalone.getter();
      static Locale.autoupdatingCurrent.getter();
      static Calendar.autoupdatingCurrent.getter();
      static TimeZone.autoupdatingCurrent.getter();
      static Date.now.getter();
      sub_1000068D4(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
      Date.formatted<A>(_:)();
      sub_1000FBBCC(v47);
      v48 = v168;
      v49 = [v41 text];
      if (v49)
      {
        v50 = v49;
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        *&v168 = v51;
        *(&v168 + 1) = v53;
        v54._countAndFlagsBits = 548913696;
        v54._object = 0xA400000000000000;
        String.append(_:)(v54);
        if (*(&v168 + 1))
        {
          v55 = String._bridgeToObjectiveC()();
        }

        else
        {
          v55 = 0;
        }

        [v41 setText:v55];

        v43 = v164;
      }

      else
      {
        [v41 setText:0];
      }

      v56 = [v41 text];
      if (v56)
      {
        v57 = v56;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        *&v168 = v58;
        *(&v168 + 1) = v60;
        String.append(_:)(v48);

        if (*(&v168 + 1))
        {
          v61 = String._bridgeToObjectiveC()();
        }

        else
        {
          v61 = 0;
        }

        v43 = v164;
        v62 = v153;
        [v41 setText:v61];
      }

      else
      {

        [v41 setText:0];
        v62 = v153;
      }

      (*(v159 + 8))(v62, v45);
      goto LABEL_31;
    }
  }

  sub_100004F84(v42, &unk_100AD4790);
LABEL_31:
  v165 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastView;
  v63 = [*&v43[OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastView] layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v168 = xmmword_100B30F28;
  v169 = *&qword_100B30F38;
  v170 = xmmword_100B30F48;
  v171 = *&qword_100B30F58;
  [v63 setCornerRadii:&v168];

  v64 = [*&v43[v167] layer];
  v168 = xmmword_100B30F28;
  v169 = *&qword_100B30F38;
  v170 = xmmword_100B30F48;
  v171 = *&qword_100B30F58;
  [v64 setCornerRadii:&v168];

  v65 = v163;
  v66 = v162;
  v162 = v41;
  [v36 setAxis:1];
  [v36 setAlignment:3];
  [v36 setUserInteractionEnabled:1];
  v163 = v36;
  [v36 setSpacing:2.0];
  v67 = qword_100AD03E0;
  v68 = v65;
  if (v67 != -1)
  {
    swift_once();
  }

  v69 = qword_100B303D8;
  [v68 setFont:qword_100B303D8];
  v70 = objc_opt_self();
  v71 = [v70 secondaryLabelColor];
  [v68 setTextColor:v71];

  [v68 setAdjustsFontSizeToFitWidth:1];
  [v68 setMinimumScaleFactor:0.5];
  [v68 setAdjustsFontForContentSizeCategory:1];
  [v68 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v72 = qword_100AD0378;
  v73 = v66;
  if (v72 != -1)
  {
    swift_once();
  }

  [v73 setFont:qword_100B30370];
  v74 = [v70 labelColor];
  [v73 setTextColor:v74];

  [v73 setAdjustsFontSizeToFitWidth:1];
  [v73 setMinimumScaleFactor:0.5];
  [v73 setAdjustsFontForContentSizeCategory:1];
  [v73 setNumberOfLines:0];
  [v73 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v75 = v162;
  [v75 setFont:v69];
  v160 = v70;
  v76 = [v70 secondaryLabelColor];
  [v75 setTextColor:v76];

  [v75 setAdjustsFontForContentSizeCategory:1];
  [v75 setAdjustsFontSizeToFitWidth:1];
  [v75 setMinimumScaleFactor:0.5];
  [v75 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v75 setLineBreakMode:0];
  [v75 setNumberOfLines:0];
  [v75 setTextAlignment:1];
  v77 = v163;
  [v163 addArrangedSubview:v68];
  v161 = v73;
  [v77 addArrangedSubview:v73];
  [v77 addArrangedSubview:v75];
  [v77 setCustomSpacing:v68 afterView:6.0];
  [v77 setCustomSpacing:v75 afterView:12.0];
  v78 = [v68 superview];
  v79 = v68;
  if (v78)
  {
    v80 = v78;
    [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = [v80 centerXAnchor];
    v82 = [v68 centerXAnchor];
    v83 = [v82 constraintEqualToAnchor:v81];

    [v83 setConstant:0.0];
    [v83 setActive:1];
  }

  v162 = v79;
  v84 = v161;
  v85 = [v161 superview];
  v86 = v164;
  v87 = v158;
  if (v85)
  {
    v88 = v85;
    [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
    v89 = [v88 centerXAnchor];
    v90 = [v84 centerXAnchor];
    v91 = [v90 constraintEqualToAnchor:v89];

    [v91 setConstant:0.0];
    [v91 setActive:1];
  }

  v92 = [v75 superview];
  v93 = v84;
  v94 = v84;
  v95 = v75;
  if (v92)
  {
    v96 = v92;
    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [v96 centerXAnchor];
    v97 = [v75 centerXAnchor];
    v98 = [v97 constraintEqualToAnchor:v93];

    [v98 setConstant:0.0];
    [v98 setActive:1];

    v95 = v96;
  }

  v99 = v162;
  v100 = [v160 clearColor];
  [v87 setBackgroundColor:v100];

  v101 = v166;
  [v87 addArrangedSubview:*&v86[v166]];
  v102 = v167;
  v103 = *&v86[v167];
  sub_100760CA8(v103, 1);

  v104 = v165;
  [*&v86[v165] setClipsToBounds:1];
  [*&v86[v101] addSubview:*&v86[v102]];
  [*&v86[v101] addSubview:*&v86[v104]];
  v105 = *&v86[v101];
  v106 = [v105 superview];
  if (v106)
  {
    v107 = v106;
    [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
    v108 = [v105 leadingAnchor];
    v109 = [v107 leadingAnchor];
    v110 = [v108 constraintEqualToAnchor:v109];

    [v110 setConstant:20.0];
    if (v110)
    {
      [v110 setActive:1];
    }
  }

  else
  {
    v110 = 0;
    v107 = v105;
  }

  v111 = *&v86[v166];
  v112 = [v111 superview];
  if (v112)
  {
    v113 = v112;
    [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
    v114 = [v111 trailingAnchor];
    v115 = [v113 trailingAnchor];
    v116 = [v114 constraintEqualToAnchor:v115];

    [v116 setConstant:-20.0];
    if (v116)
    {
      [v116 setActive:1];
    }

    v117 = v163;
  }

  else
  {
    v116 = 0;
    v113 = v111;
    v117 = v163;
  }

  v118 = *&v86[v166];
  [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
  v119 = [v118 heightAnchor];
  v120 = [v118 widthAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 multiplier:1.0];

  [v121 setActive:1];
  v122 = v165;
  v123 = *&v86[v165];
  sub_100013178(0.0);

  v124 = *&v86[v167];
  sub_100013178(0.0);

  [v87 addArrangedSubview:*&v86[v122]];
  [v87 addArrangedSubview:v117];
  v125 = [v117 superview];
  if (v125)
  {
    v126 = v125;
    [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
    v127 = [v117 leadingAnchor];
    v128 = [v126 leadingAnchor];
    v129 = [v127 constraintEqualToAnchor:v128];

    [v129 setConstant:32.0];
    [v129 setActive:1];
  }

  v130 = [v117 superview];
  if (v130)
  {
    v131 = v130;
    [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
    v132 = [v117 trailingAnchor];
    v133 = [v131 trailingAnchor];
    v134 = [v132 constraintEqualToAnchor:v133];

    [v134 setConstant:-32.0];
    [v134 setActive:1];
  }

  [v86 addSubview:v87];
  v135 = [v87 superview];
  if (v135)
  {
    v136 = v135;
    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
    v137 = [v87 centerYAnchor];
    v138 = [v136 centerYAnchor];
    v139 = [v137 constraintEqualToAnchor:v138];

    [v139 setConstant:0.0];
    [v139 setActive:1];
  }

  v140 = [v87 superview];
  if (v140)
  {
    v141 = v140;
    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
    v142 = [v87 leadingAnchor];
    v143 = [v141 leadingAnchor];
    v144 = [v142 constraintEqualToAnchor:v143];

    [v144 setConstant:0.0];
    [v144 setActive:1];
  }

  v145 = [v87 superview];
  if (v145)
  {
    v146 = v145;
    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
    v147 = [v87 trailingAnchor];
    v148 = [v146 trailingAnchor];
    v149 = [v147 constraintEqualToAnchor:v148];

    [v149 setConstant:0.0];
    [v149 setActive:1];
  }

  [v86 layoutIfNeeded];
  [v87 layoutIfNeeded];
  [*&v86[v165] layoutIfNeeded];
}

id sub_10010B7D0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastView;
  type metadata accessor for MediaAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_dropShadowView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FullScreenPodcastView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10010B8D8(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastAsset] = 0;
  v3 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_podcastView;
  type metadata accessor for MediaAssetView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_backgroundView;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC7Journal21FullScreenPodcastView_dropShadowView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FullScreenPodcastView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10010B9E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenPodcastView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010BAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD2A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010BB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD2A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10010BB84()
{
  v1 = *(sub_1000F24EC(&qword_100AD2A70) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10010A0BC(v2, v3);
}

id sub_10010BBF4(void *a1)
{
  if ([a1 horizontalSizeClass] == 2 || objc_msgSend(a1, "userInterfaceIdiom") == 5)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:a1];

    return v2;
  }

  else
  {
    v4 = sub_100047788(UIFontTextStyleBody, &off_100A55E38, a1);
    sub_100047D60(&unk_100A55E58);
    return v4;
  }
}

id sub_10010BCB8(void *a1)
{
  v2 = &off_100A55E70;
  v3 = &unk_100A55E90;
  if ([a1 horizontalSizeClass] == 2)
  {
    v4 = &UIFontTextStyleTitle3;
  }

  else
  {
    v5 = [a1 userInterfaceIdiom];
    v4 = &UIFontTextStyleTitle3;
    if (v5 != 5)
    {
      v4 = &UIFontTextStyleHeadline;
      v2 = &off_100A55EA8;
      v3 = &unk_100A55EC8;
    }
  }

  v6 = sub_100047788(*v4, v2, a1);
  sub_100047D60(v3);
  return v6;
}

char *sub_10010BD68(uint64_t a1, __int16 a2, uint64_t a3, int a4, void *a5, void *a6, double a7)
{
  v14 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_basePOICircleView;
  v44 = a2 & 0x100;
  v45 = a4 & 0x10000;
  *&v7[v14] = [objc_allocWithZone(UIImageView) init];
  v15 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_downArrowView;
  *&v7[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *&v7[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = &v7[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration];
  *v18 = a2;
  v18[1] = HIBYTE(a2) & 1;
  *(v18 + 1) = a3;
  v18[16] = a4 & 1;
  v18[17] = BYTE1(a4) & 1;
  v18[18] = BYTE2(a4) & 1;
  *(v18 + 3) = a7;
  v47.receiver = v7;
  v47.super_class = _s19MOPOIAnnotationViewCMa();
  v19 = objc_msgSendSuper2(&v47, "initWithAnnotation:reuseIdentifier:", a1, 0);
  v20 = sub_100517D4C(a2, a3, a4 & 1);
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  if ((v21 & 1) == 0)
  {
    DebugData.init(name:)(*&v20);
  }

  [v19 setFrame:{v23, v24, v25, v26}];
  v27 = &v19[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_basePOICircleView];
  v28 = *&v19[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_basePOICircleView];
  v29 = sub_100517D4C(a2, a3, a4 & 1);
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  if ((v30 & 1) == 0)
  {
    DebugData.init(name:)(*&v29);
    v22 = v34;
  }

  [v28 setFrame:{v22, v31, v32, v33}];

  sub_10010C610(a5, a6);
  if (a3 <= 1)
  {
    if (a4)
    {
      sub_10010CA54();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    }

    else if (!v45 || v44)
    {
      sub_10010C1A4();
      [v19 addSubview:*&v19[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_downArrowView]];
    }
  }

  else
  {
    sub_10010CA54();
    sub_10010C344();
    [v19 addSubview:*&v19[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_borderBackgroundView]];
    v27 = &v19[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_clusterCountLabel];
  }

  [v19 addSubview:*v27];
  v35 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_borderBackgroundView;
  v36 = [*&v19[OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_borderBackgroundView] layer];
  v37 = [objc_opt_self() secondarySystemBackgroundColor];
  v38 = [v37 CGColor];

  [v36 setShadowColor:v38];
  v39 = [*&v19[v35] layer];
  LODWORD(v40) = 0.5;
  [v39 setShadowOpacity:v40];

  v41 = [*&v19[v35] layer];
  [v41 setShadowRadius:5.0];

  v42 = [*&v19[v35] layer];
  [v42 setShadowPathIsBounds:1];

  sub_10010CA14(a5, a6);
  swift_unknownObjectRelease();
  return v19;
}

void sub_10010C1A4()
{
  v1 = (v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration + 8);
  v3 = *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration + 16);
  v4 = v2 <= 1 && v3 == 0;
  if (v4 && ((v1[18] ^ 1 | v1[1]) & 1) != 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_downArrowView);
    v6 = sub_100517D4C(*v1, v2, v3);
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if ((v7 & 1) == 0)
    {
      DebugData.init(name:)(*&v6);
    }

    [v5 setFrame:{v8, v9, v10, v11}];
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() systemImageNamed:v12];

    [v5 setImage:v13];

    [v5 setContentMode:2];
  }
}

void sub_10010C344()
{
  v1 = v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration;
  v2 = *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration + 8);
  if (v2 >= 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_clusterCountLabel);
    v4 = sub_100517D4C(*v1, v2, *(v1 + 16));
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    if ((v5 & 1) == 0)
    {
      DebugData.init(name:)(*&v4);
    }

    [v3 setFrame:{v6, v7, v8, v9}];
    dispatch thunk of CustomStringConvertible.description.getter();
    v10 = String._bridgeToObjectiveC()();

    [v3 setText:v10];

    [v3 setTextAlignment:1];
    v11 = [objc_opt_self() whiteColor];
    [v3 setTextColor:v11];

    v12 = COERCE_DOUBLE(sub_100517D4C(*v1, *(v1 + 8), *(v1 + 16)));
    v13 = 15.0;
    if ((v14 & 1) == 0)
    {
      v13 = v12 / 6.0;
    }

    v15 = [objc_opt_self() boldSystemFontOfSize:v13];
    [v3 setFont:v15];

    [v3 setAdjustsFontSizeToFitWidth:1];
    [v3 setClipsToBounds:1];
    v16 = [v3 layer];
    [v3 frame];
    [v16 setCornerRadius:CGRectGetWidth(v17) * 0.5];
  }
}

void sub_10010C610(void *a1, void *a2)
{
  if (a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_basePOICircleView);
    v16 = a1;
    v5 = a2;
    [v4 setImage:v5];
    [*(v2 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v16];
    [*(v2 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v16];
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_basePOICircleView);
    [v6 frame];
    CGRectGetWidth(v18);
    [v6 frame];
    CGRectGetHeight(v19);
    [v6 frame];
    CGRectGetWidth(v20);
    [v6 frame];
    CGRectGetHeight(v21);
    DebugData.init(name:)(v7);
    v12 = [objc_allocWithZone(UIImageView) initWithFrame:{v8, v9, v10, v11}];
    v16 = v12;
    if (qword_100AD09C8 != -1)
    {
      swift_once();
      v12 = v16;
    }

    [v12 setImage:qword_100B30EA0];
    v13 = [objc_opt_self() systemWhiteColor];
    [v16 setTintColor:v13];

    if (qword_100AD0360 != -1)
    {
      swift_once();
    }

    v14 = qword_100B30358;
    [v6 setBackgroundColor:qword_100B30358];
    [*(v2 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_downArrowView) setTintColor:v14];
    [*(v2 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_clusterCountLabel) setBackgroundColor:v14];
    v15 = [v6 layer];
    [v6 frame];
    [v15 setCornerRadius:CGRectGetHeight(v22) * 0.5];

    [v6 addSubview:v16];
  }
}

id sub_10010C950()
{
  v2.receiver = v0;
  v2.super_class = _s19MOPOIAnnotationViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10010CA14(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_10010CA54()
{
  v1 = *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_borderBackgroundView);
  sub_100517AE8(*(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration), *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration + 8), *(v0 + OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_configuration + 16));
  [v1 setFrame:?];
  v2 = [v1 layer];
  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor:v4];
  [v1 setClipsToBounds:1];
  v5 = [v1 layer];
  [v1 frame];
  [v5 setCornerRadius:CGRectGetWidth(v7) * 0.5];
}

void sub_10010CBE0()
{
  v1 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtCC7Journal10MapManager19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10010CCC4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_location;
  v5 = *(v1 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_location);
  if (!v5)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    v7 = a1;
    goto LABEL_7;
  }

  if (a1)
  {
    sub_1000065A8(0, &unk_100AD2BF0);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = *(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer);
      v10 = v7;
      [v10 coordinate];
      v14 = MKCoordinateRegionMakeWithDistance(v13, 16093.0, 16093.0);
      [v9 setRegion:{v14.center.latitude, v14.center.longitude, v14.span.latitudeDelta, v14.span.longitudeDelta}];
    }
  }

LABEL_8:
  v11 = *(v2 + v4);
  *(v2 + v4) = a1;
}

char *sub_10010CDC0()
{
  Logger.init(subsystem:category:)();
  v1 = OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_delegateRelay;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for DelegateRelay()) init];
  v2 = OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer;
  *&v0[v2] = [objc_allocWithZone(MKLocalSearchCompleter) init];
  *&v0[OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_location] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LocationPickerSearchManager();
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_delegateRelay;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer;
  v6 = *&v3[OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer];
  v7 = *&v3[v4];
  v8 = v3;
  [v6 setDelegate:v7];
  v9 = *&v3[v5];
  [v9 setResultTypes:7];

  return v8;
}

uint64_t type metadata accessor for LocationPickerSearchManager()
{
  result = qword_100AD2B28;
  if (!qword_100AD2B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010D08C()
{
  result = type metadata accessor for Logger();
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

id sub_10010D14C(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "onSearchBarWillBeginEditing - Search started.", v6, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10010F07C(*(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_delegateRelay), Strong);
    swift_unknownObjectRelease();
  }

  return [a1 setShowsCancelButton:1 animated:1];
}

void sub_10010D250(void *a1)
{
  v2 = v1;
  v3 = [a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = *(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer);
  v9 = String._bridgeToObjectiveC()();
  [v8 setQueryFragment:v9];

  v10 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "onSearchBarChangedText - Faking empty completer update due to empty query text.", v13, 2u);
    }

    *(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results) = _swiftEmptyArrayStorage;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = *(Strong + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView);
      if (v16)
      {
        [v16 setHidden:0];
      }

      v17 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView;
      [*(v15 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView) isHidden];
      [*(v15 + v17) setHidden:1];
      [*(v15 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
      swift_unknownObjectRelease();
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView);
      [v19 reloadData];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10010D478(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "onSearchBarClickedCancel - Search complete.", v6, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1006E6FA0();
    swift_unknownObjectRelease();
  }

  [a1 setText:0];
  [a1 setShowsCancelButton:0 animated:1];
  [a1 resignFirstResponder];
  v7 = *(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer);
  v8 = String._bridgeToObjectiveC()();
  [v7 setQueryFragment:v8];

  *(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results) = _swiftEmptyArrayStorage;
}

void sub_10010D5E0()
{
  if (!*(*(v0 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results) + 16))
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "onCompleterWillUpdate - Requesting loading UI.", v3, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1006E7460(1);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10010D6D8()
{
  v1 = type metadata accessor for Loc(0);
  v2 = *(v1 - 8);
  v71 = v1;
  v72 = v2;
  v3 = __chkstk_darwin(v1);
  v65 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v70 = &v64 - v6;
  __chkstk_darwin(v5);
  v8 = &v64 - v7;
  v66 = *(v0 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer);
  v67 = v0;
  v9 = [v66 results];
  sub_1000065A8(0, &unk_100AD2BD0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v13 = 0;
    v73 = (v10 & 0xFFFFFFFFFFFFFF8);
    v74 = v10 & 0xC000000000000001;
    v68 = i;
    v69 = v10;
    v14 = v70;
    while (1)
    {
      if (v74)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= v73[2])
        {
          goto LABEL_39;
        }

        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = [v15 mapItem];
      if (v18)
      {
        v75 = v13 + 1;

        *(v14 + 1) = 0;
        *(v14 + 2) = 0;
        v19 = v8;
        v20 = v71;
        v21 = v71[7];
        v22 = type metadata accessor for Date();
        v23 = *(*(v22 - 8) + 56);
        v24 = &v14[v21];
        v8 = v19;
        v23(v24, 1, 1, v22);
        v23(&v14[v20[8]], 1, 1, v22);
        v25 = &v14[v20[9]];
        *v25 = 0;
        *(v25 + 1) = 0;
        v26 = &v14[v20[10]];
        *v26 = 0;
        *(v26 + 1) = 0;
        *&v14[v20[11]] = 0;
        v14[v20[12]] = 0;
        *v14 = v16;
        sub_10010F018(v14, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1003E4B08(0, *(v12 + 2) + 1, 1, v12);
        }

        v28 = *(v12 + 2);
        v27 = *(v12 + 3);
        v10 = v69;
        v17 = v75;
        if (v28 >= v27 >> 1)
        {
          v12 = sub_1003E4B08(v27 > 1, v28 + 1, 1, v12);
        }

        *(v12 + 2) = v28 + 1;
        sub_10010F018(v8, v12 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v28);
        i = v68;
      }

      else
      {
      }

      ++v13;
      if (v17 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_18:

  *(v67 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results) = v12;

  v76 = 0;
  v77 = 0xE000000000000000;
  v29._countAndFlagsBits = 40;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v66;
  [v66 region];
  Double.write<A>(to:)();
  v31._countAndFlagsBits = 44;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  [v30 region];
  Double.write<A>(to:)();
  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33 = v77;
  v73 = v76;
  v76 = *(v12 + 2);
  v34 = v76;
  v74 = dispatch thunk of CustomStringConvertible.description.getter();
  v75 = v35;
  if (v34)
  {
    v70 = v33;
    v76 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v34, 0);
    v36 = v76;
    v37 = *(v72 + 80);
    v71 = v12;
    v38 = v12 + ((v37 + 32) & ~v37);
    v39 = *(v72 + 72);
    v40 = v65;
    do
    {
      sub_10010EE80(v38, v40);
      if (*v40)
      {
        v41 = [*v40 title];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
      }

      else
      {
        v44 = 0xE700000000000000;
        v42 = 0x4E574F4E4B4E55;
      }

      sub_10010EEE4(v40);
      v76 = v36;
      v46 = v36[2];
      v45 = v36[3];
      if (v46 >= v45 >> 1)
      {
        sub_1001999C0((v45 > 1), v46 + 1, 1);
        v36 = v76;
      }

      v36[2] = v46 + 1;
      v47 = &v36[2 * v46];
      v47[4] = v42;
      v47[5] = v44;
      v38 += v39;
      --v34;
    }

    while (v34);

    v33 = v70;
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
  }

  v48 = v75;
  v76 = v36;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10009BDD4();
  v49 = BidirectionalCollection<>.joined(separator:)();
  v51 = v50;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v54 = 136315650;
    v55 = sub_100008458(v73, v33, &v76);

    *(v54 + 4) = v55;
    *(v54 + 12) = 2080;
    v56 = sub_100008458(v74, v48, &v76);

    *(v54 + 14) = v56;
    *(v54 + 22) = 2080;
    v57 = sub_100008458(v49, v51, &v76);

    *(v54 + 24) = v57;
    _os_log_impl(&_mh_execute_header, v52, v53, "onCompleterDidUpdate - regionCoordinates=%s resultCount=%s resultTitles=%s", v54, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = Strong;
    v60 = *(Strong + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView);
    if (v60)
    {
      [v60 setHidden:0];
    }

    v61 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView;
    [*(v59 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView) isHidden];
    [*(v59 + v61) setHidden:1];
    [*(v59 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v63 = *(result + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView);
    [v63 reloadData];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10010DEB4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_completer) queryFragment];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100008458(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v6, "onCompleterDidFail - %s", v7, 0xCu);
      sub_10000BA7C(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_10010E060(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AEE090);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:isa];

  type metadata accessor for LocationCollectionViewCell();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v9 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_cellType;
  *(v10 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_cellType) = 0;
  v12 = *(v1 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_location);
  v13 = *(v10 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation);
  *(v10 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation) = v12;
  v14 = v12;

  *(v11 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_sortMethod) = 1;
  v15 = IndexPath.item.getter();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = *(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results);
  if (v15 >= *(v17 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = type metadata accessor for Loc(0);
  v19 = *(v18 - 8);
  sub_10010EE80(v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v6);
  (*(v19 + 56))(v6, 0, 1, v18);
  v20 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
  swift_beginAccess();
  sub_10010EF40(v6, v11 + v20);
  swift_endAccess();
  if (*(v9 + v11))
  {
    sub_1004566A4();
  }

  else
  {
    sub_100456BD4();
  }

  sub_10010EFB0(v6);
  return v11;
}

uint64_t sub_10010E320(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Loc(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v33 - v13);
  v15 = OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results;
  v16 = *(*(v2 + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_results) + 16);
  result = IndexPath.item.getter();
  if (result < 0 || result >= v16)
  {
    return result;
  }

  result = IndexPath.item.getter();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = *(v2 + v15);
  if (result >= *(v18 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_10010EE80(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result, v14);
  (*(v5 + 16))(v7, a1, v4);
  sub_10010EE80(v14, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v21 = 134218242;
    v22 = IndexPath.item.getter();
    (*(v5 + 8))(v7, v4);
    *(v21 + 4) = v22;
    *(v21 + 12) = 2080;
    if (*v12)
    {
      v23 = [*v12 title];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v26 = 0xE700000000000000;
      v24 = 0x4E574F4E4B4E55;
    }

    sub_10010EEE4(v12);
    v27 = sub_100008458(v24, v26, &v34);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "onCollectionViewSelectedItem - path=%ld title=%s", v21, 0x16u);
    sub_10000BA7C(v33);
  }

  else
  {
    (*(v5 + 8))(v7, v4);

    sub_10010EEE4(v12);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *v14;
    if (*v14 && (v29 = [*v14 mapItem]) != 0)
    {
      v30 = v29;
      v31 = [v28 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = String._bridgeToObjectiveC()();

      [v30 setName:v32];

      sub_1006E7508(v28, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_10010EEE4(v14);
}

void sub_10010E99C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a1;
    a4();
  }
}

id sub_10010EE0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10010EE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Loc(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010EEE4(uint64_t a1)
{
  v2 = type metadata accessor for Loc(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010EF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AEE090);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010EFB0(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AEE090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010F018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Loc(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10010F07C(uint64_t a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_hideFirstSeparator] = 0;
  [*&a2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView] setHidden:1];
  [*&a2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptyJournaledLocationView] setHidden:1];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [aBlock[0] setHidden:1];

  v4 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView;
  v5 = *&a2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView];
  if (v5)
  {
    [v5 setDelegate:a1];
    v6 = *&a2[v4];
    if (v6)
    {
      [v6 setDataSource:a1];
    }
  }

  v7 = [a2 sheetPresentationController];
  if (v7)
  {
    v33 = v7;
    v8 = [v7 detents];
    sub_1000065A8(0, &qword_100AD85C0);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_31;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_29;
          }

          v15 = [v12 identifier];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
          if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
          {
            break;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_21;
          }

          ++v11;
          if (v14 == v10)
          {
            goto LABEL_32;
          }
        }

LABEL_21:

        v22 = v33;
        v23 = [v33 selectedDetentIdentifier];
        if (v23)
        {
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
          if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
          {

            v22 = v33;
LABEL_26:

            return;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v22 = v33;
          if (v29)
          {
            goto LABEL_26;
          }
        }

        v30 = swift_allocObject();
        *(v30 + 16) = v22;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_10010F524;
        *(v9 + 24) = v30;
        aBlock[4] = sub_100028EF4;
        aBlock[5] = v9;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001A7D4;
        aBlock[3] = &unk_100A5D1E8;
        v31 = _Block_copy(aBlock);
        v32 = v22;

        [v32 _animateChanges:v31 completion:0];

        _Block_release(v31);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if ((v32 & 1) == 0)
        {
          break;
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v10 = _CocoaArrayWrapper.endIndex.getter();
        if (!v10)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_32:
    }
  }
}

Swift::Int sub_10010F538()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10010F5FC()
{
  String.hash(into:)();
}

Swift::Int sub_10010F6AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10010F76C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010FF1C(*a1);
  *a2 = result;
  return result;
}

void sub_10010F79C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6576697469736F50;
  v4 = 0x6C61727475654ELL;
  if (*v1 != 2)
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (*v1)
  {
    v3 = 0x657669746167654ELL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_10010F8DC()
{

  v1 = OBJC_IVAR____TtCC7Journal18JournalAjaxSessionP33_7266CDB7F49A0C2F86F0ED278CB17DC311_ClientInfo_trackingConfig;
  v2 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10010F990()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_10010F9C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7Journal18JournalAjaxSessionP33_7266CDB7F49A0C2F86F0ED278CB17DC311_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_10010FA50(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7Journal18JournalAjaxSessionP33_7266CDB7F49A0C2F86F0ED278CB17DC311_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_10010FB60()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JournalAjaxSession._ClientInfo()
{
  result = qword_100AD2D98;
  if (!qword_100AD2D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010FC10()
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
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

uint64_t sub_10010FCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FDA4();
  v5 = sub_10010FDF8();

  return static CaseIterable<>.schema.getter(a1, a2, v4, v5);
}

uint64_t sub_10010FD38()
{
  sub_10010FDA4();
  sub_10010FDF8();
  return CaseIterable<>.init(from:)();
}

unint64_t sub_10010FDA4()
{
  result = qword_100AD2E38;
  if (!qword_100AD2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2E38);
  }

  return result;
}

unint64_t sub_10010FDF8()
{
  result = qword_100AD2E40;
  if (!qword_100AD2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2E40);
  }

  return result;
}

unint64_t sub_10010FE60()
{
  result = qword_100AD2E48;
  if (!qword_100AD2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2E48);
  }

  return result;
}

unint64_t sub_10010FEB8()
{
  result = qword_100AD2E50;
  if (!qword_100AD2E50)
  {
    sub_1000F2A18(&qword_100AD2E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2E50);
  }

  return result;
}

unint64_t sub_10010FF1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A56188, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

id sub_10010FF68()
{
  v1 = OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView);
  }

  else
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    v5 = [objc_allocWithZone(RCPlatterLeadingWaveformView) initWithFrame:v4 dataProvider:{0.0, 0.0, 0.0, 0.0}];
    [v5 setStyle:1];
    swift_unknownObjectRelease();
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100110058()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___emptyTimeCodeString);
  if (*(v0 + OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___emptyTimeCodeString + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = [objc_allocWithZone(AVTimeFormatter) init];
    [v3 setStyle:1];
    epoch = kCMTimeInvalid.epoch;
    v9[0] = kCMTimeInvalid.value;
    v9[1] = *&kCMTimeInvalid.timescale;
    v9[2] = epoch;
    v5 = [v3 stringFromCMTime:v9];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

uint64_t sub_100110150()
{
  v1[2] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v1[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100110254, v4, v3);
}

uint64_t sub_100110254()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_1001102D8, v2, v1);
}

uint64_t sub_1001102D8()
{
  v1 = *(v0 + 16);
  sub_10049D1C0();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 1;
  static UIView.Invalidating.subscript.setter();
  [*(v1 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton) setUserInteractionEnabled:0];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100110414;

  return sub_10003FA1C(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100110414()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_100111DC4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1001105A8;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1001105A8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100110614()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10049C9E4();
  v6 = [v0 traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v7 != 2)
  {
    if (v7 != 1)
    {
      return;
    }

    v8 = sub_10049D160();
    v9 = objc_opt_self();
    v10 = [v9 labelColor];
    [v8 setTextColor:v10];

    v11 = OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel;
    [*&v1[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] setAccessibilityValue:0];
    v12 = *&v1[v11];
    sub_100110058();
    v13 = String._bridgeToObjectiveC()();

    [v12 setText:v13];

    v14 = sub_10010FF68();
    v15 = &selRef_tertiaryLabelColor;
    goto LABEL_10;
  }

  v16 = *&v1[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  v18 = (*(v16 + 32))(ObjectType, v16);
  v19 = sub_10049D160();
  if (!v18)
  {
    v9 = objc_opt_self();
    v15 = &selRef_labelColor;
    v31 = [v9 labelColor];
    [v19 setTextColor:v31];

    v14 = sub_10010FF68();
LABEL_10:
    v34 = [v9 *v15];
    [v14 setSliceColor:v34];

    v32 = v34;

    return;
  }

  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0CB0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000617C(v2, qword_100B31520);
  v21 = *(v3 + 16);
  v21(v5, v20, v2);
  v22 = UIColor.init(resource:)();
  [v19 setTextColor:v22];

  v23 = sub_10010FF68();
  v21(v5, v20, v2);
  v24 = UIColor.init(resource:)();
  [v23 setSliceColor:v24];

  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100111DBC;
  *(v27 + 24) = v26;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A5D380;
  v28 = _Block_copy(aBlock);
  v29 = v1;

  [v25 performWithoutAnimation:v28];
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_100110B04(uint64_t a1)
{
  v2 = sub_10010FF68();
  v3 = *(a1 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  (*(*(v3 + 8) + 24))(ObjectType);
  [v2 updateSliceFramesForRecordingTime:?];
}

uint64_t sub_100110C28()
{
}

id sub_100110C6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100110D18()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  [v0 setOverrideUserInterfaceStyle:2];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];

    [v3 setHitTestsAsOpaque:1];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTap:"];
      [v5 addGestureRecognizer:v6];

      sub_100110E38();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100110E38()
{
  v1 = sub_10010FF68();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView;
  [v2 addSubview:*&v0[OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView]];

  v5 = sub_10049D160();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel;
  LODWORD(v7) = 1148846080;
  [*&v0[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] setContentCompressionResistancePriority:0 forAxis:v7];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 addSubview:*&v0[v6]];

  v10 = sub_10049D1C0();
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  v13 = OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton;
  [v11 addSubview:*&v0[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton]];

  sub_1000F24EC(&unk_100AD4780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1009415E0;
  v15 = [*&v0[v4] leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor:v18 constant:20.0];
  *(v14 + 32) = v19;
  v20 = [*&v0[v4] widthAnchor];
  v21 = [v20 constraintEqualToConstant:159.0];

  LODWORD(v22) = 1144750080;
  [v21 setPriority:v22];
  *(v14 + 40) = v21;
  v23 = [*&v0[v4] heightAnchor];
  v24 = [v23 constraintEqualToConstant:46.0];

  *(v14 + 48) = v24;
  v25 = [*&v0[v4] centerYAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  v28 = [v26 centerYAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v14 + 56) = v29;
  v30 = [*&v0[v6] topAnchor];
  v31 = [v0 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintGreaterThanOrEqualToAnchor:v33 constant:0.0];
  *(v14 + 64) = v34;
  v35 = [*&v0[v6] leadingAnchor];
  v36 = [*&v0[v4] trailingAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:3.0];

  *(v14 + 72) = v37;
  v38 = [*&v0[v6] centerYAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  v41 = [v39 centerYAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v14 + 80) = v42;
  v43 = [*&v0[v13] leadingAnchor];
  v44 = [*&v0[v6] trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:8.0];

  *(v14 + 88) = v45;
  v46 = [*&v0[v13] widthAnchor];
  v47 = [v46 constraintEqualToConstant:51.0];

  *(v14 + 96) = v47;
  v48 = [*&v0[v13] heightAnchor];
  v49 = [v48 constraintEqualToConstant:51.0];

  *(v14 + 104) = v49;
  v50 = [*&v0[v13] centerYAnchor];
  v51 = [v0 view];
  if (!v51)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = v51;
  v53 = [v51 centerYAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v14 + 112) = v54;
  v55 = [v0 view];
  if (!v55)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v56 = v55;
  v57 = objc_opt_self();
  v58 = [v56 trailingAnchor];

  v59 = [*&v0[v13] trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:22.0];

  *(v14 + 120) = v60;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:isa];
}

void sub_100111578(void *a1)
{
  if ([a1 state] != 3)
  {
    return;
  }

  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 window];

  if (v4)
  {
    v9 = [v4 windowScene];
  }

  else
  {
    v9 = 0;
  }

  static AppInfo.bundleIdentifier.getter();
  v5 = [objc_opt_self() defaultWorkspace];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();

  v8 = sub_1008B5094(v9, 0, 1);
  [v6 openApplicationWithBundleIdentifier:v7 usingConfiguration:v8 completionHandler:0];
}

uint64_t sub_100111740()
{
  sub_100004F84(v0 + 16, &unk_100AE9D30);

  sub_100004F84(v0 + OBJC_IVAR____TtCFFZFV7Journal150_s7Journal0057AudioRecordingLiveActivityBannerViewControllerswift_tCHFufMX131_0_33_A8920A825AC57B7B09EE15DAB3B684A07PreviewfMf_15PreviewRegistryfMu_11makePreviewFzT_V21DeveloperToolsSupport7PreviewU_FY_mediaURL, &unk_100AD6DD0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for $s7Journal0057AudioRecordingLiveActivityBannerViewControllerswift_tCHFufMX131_0_33_A8920A825AC57B7B09EE15DAB3B684A0Ll7PreviewfMf_15PreviewRegistryfMu_.MockRecordingManager()
{
  result = qword_100AD2ED8;
  if (!qword_100AD2ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100111848()
{
  sub_100111924();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100111924()
{
  if (!qword_100AD2EE8)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD2EE8);
    }
  }
}

uint64_t sub_10011197C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCFFZFV7Journal150_s7Journal0057AudioRecordingLiveActivityBannerViewControllerswift_tCHFufMX131_0_33_A8920A825AC57B7B09EE15DAB3B684A07PreviewfMf_15PreviewRegistryfMu_11makePreviewFzT_V21DeveloperToolsSupport7PreviewU_FY_mediaURL;
  swift_beginAccess();
  return sub_1000082B4(v1 + v3, a1, &unk_100AD6DD0);
}

uint64_t sub_100111A40()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100111DC8, v2, v1);
}

uint64_t sub_100111AD4()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100111B68, v2, v1);
}

uint64_t sub_100111B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100111BF8(uint64_t a1)
{
  result = sub_100111C80(&qword_100AD30E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100111C3C(uint64_t a1)
{
  result = sub_100111C80(&qword_100AD30E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100111C80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for $s7Journal0057AudioRecordingLiveActivityBannerViewControllerswift_tCHFufMX131_0_33_A8920A825AC57B7B09EE15DAB3B684A07PreviewfMf_15PreviewRegistryfMu_.MockRecordingManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100111CC4(uint64_t a1, Class a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(a2);

  return sub_100111D1C(a1, v7, a3, a4);
}

id sub_100111D1C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  *&a2[OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView] = 0;
  v4 = &a2[OBJC_IVAR____TtC7Journal46AudioRecordingLiveActivityBannerViewController____lazy_storage___emptyTimeCodeString];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&a2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&a2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&a2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v5 = &a2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager];
  *v5 = a1;
  *(v5 + 1) = a4;
  v7.receiver = a2;
  v7.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id sub_100111DF4(uint64_t a1, double a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = type metadata accessor for ComposeButtonsView();
  v7 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_1000065A8(0, &qword_100ADC670);
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10 & 1) != 0 || (v11 = *&v9[OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurView], v12 = v8, v13 = v11, v14 = static NSObject.== infix(_:_:)(), v12, v13, (v14))
    {

      return 0;
    }
  }

  return v7;
}

void sub_100111F7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      if ([v2 respondsToSelector:"composeButtonSelected"])
      {
        [v2 composeButtonSelected];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001121AC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7JournalP33_08145CDDEA6A92DF1A40BD81AC9894B713ComposeButton_buttonTapped);
    v2 = result;

    v1();
  }

  return result;
}

id sub_100112248(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10011229C()
{
  v1 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurGradientLayer;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurEffectView;
  *(v0 + v2) = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_floatingButtons;
  type metadata accessor for ComposeButton();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal18ComposeButtonsView_blurView;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for VariableBlurView()) init];
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001123A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001123EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011243C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v33 = a3;
  v32 = type metadata accessor for Calendar.SearchDirection();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar.MatchingPolicy();
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Calendar();
  v16 = *(v28 - 8);
  __chkstk_darwin(v28);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  static Date.now.getter();
  (*(v10 + 104))(v12, enum case for Calendar.MatchingPolicy.nextTime(_:), v9);
  v19 = v6;
  v20 = *(v6 + 104);
  v21 = v8;
  v22 = v5;
  v20(v8, enum case for Calendar.RepeatedTimePolicy.first(_:), v5);
  v24 = v31;
  v23 = v32;
  (*(v3 + 104))(v31, enum case for Calendar.SearchDirection.forward(_:), v32);
  Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v3 + 8))(v24, v23);
  (*(v19 + 8))(v21, v22);
  (*(v27 + 8))(v12, v26);
  (*(v29 + 8))(v15, v30);
  return (*(v16 + 8))(v18, v28);
}

Swift::Int sub_100112818()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10011285C()
{
  v1 = 1920298856;
  if (*v0 != 1)
  {
    v1 = 0x6574756E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961646B656577;
  }
}

uint64_t sub_1001128AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100112B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001128D4(uint64_t a1)
{
  v2 = sub_100112EFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100112910(uint64_t a1)
{
  v2 = sub_100112EFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011294C(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  v6 = sub_1000F24EC(&qword_100AD31F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000CA14(a1, a1[3]);
  sub_100112EFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1000F24EC(&qword_100AD31E0);
  sub_100112F50(&qword_100AD31F8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v3)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100112B48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100112CAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100112B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961646B656577 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100112CAC(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD31D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000CA14(a1, a1[3]);
  sub_100112EFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000F24EC(&qword_100AD31E0);
  v8[7] = 0;
  sub_100112F50(&qword_100AD31E8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  v8[6] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v8[5] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BA7C(a1);
  return v7;
}

unint64_t sub_100112EFC()
{
  result = qword_100AD31D8;
  if (!qword_100AD31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD31D8);
  }

  return result;
}

uint64_t sub_100112F50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100AD31E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100112FD0()
{
  result = qword_100AD3200;
  if (!qword_100AD3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3200);
  }

  return result;
}

unint64_t sub_100113028()
{
  result = qword_100AD3208;
  if (!qword_100AD3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3208);
  }

  return result;
}

unint64_t sub_100113080()
{
  result = qword_100AD3210;
  if (!qword_100AD3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3210);
  }

  return result;
}

__n128 sub_1001130D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001130F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100113140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1001131A0()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for CustomJournalColorPresetCellContentView());
  v3 = v1;
  v4 = sub_10011361C(v1);
  sub_100113E30();
  return v4;
}

id sub_1001131E8@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

Swift::Int sub_1001131F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100113260()
{
  v1 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1001132F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100113358(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_1000065A8(0, &qword_100AD4C70);
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void sub_1001133E0(uint64_t a1)
{
  sub_100086C04(a1, v5);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    if (v4)
    {
      [*(v1 + OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView) setBackgroundColor:v4];
    }

    sub_10000BA7C(a1);
    v3 = *(v1 + OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_appliedConfiguration);
    *(v1 + OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_appliedConfiguration) = v4;
  }

  else
  {
    sub_10000BA7C(a1);
  }
}

void (*sub_100113498(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_appliedConfiguration;
  v3[11] = v1;
  v3[12] = v5;
  v6 = *(v1 + v5);
  v3[3] = &type metadata for CustomJournalColorPresetContentConfiguration;
  v3[4] = sub_100113DDC();
  *v4 = v6;
  v7 = v6;
  return sub_100113534;
}

void sub_100113534(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100086C04(*a1, (v2 + 5));
    sub_1001133E0((v2 + 5));
LABEL_7:
    sub_10000BA7C(v2);
    goto LABEL_8;
  }

  sub_100086C04(*a1, (v2 + 5));
  sub_1000F24EC(&qword_100AD3268);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v3 = v2[10];
  if (v3)
  {
    [*(v2[11] + OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView) setBackgroundColor:v2[10]];
  }

  v5 = v2[11];
  v4 = v2[12];
  sub_10000BA7C(v2);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;

LABEL_8:

  free(v2);
}

char *sub_10011361C(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView;
  v4 = [objc_allocWithZone(UIView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_appliedConfiguration] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CustomJournalColorPresetCellContentView();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001137B0();
  if (a1)
  {
    [*&v6[OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView] setBackgroundColor:{v5, v9.receiver, v9.super_class}];
  }

  v7 = *&v6[OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_appliedConfiguration];
  *&v6[OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_appliedConfiguration] = a1;

  return v6;
}

void sub_1001137B0()
{
  v1 = OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_colorView]];
  v2 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941830;
  v4 = [*&v0[v1] leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_100113AF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomJournalColorPresetCellContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100113BA4(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100113C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_100113C64()
{
  result = qword_100AD3250;
  if (!qword_100AD3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3250);
  }

  return result;
}

id sub_100113CB8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC7Journal39CustomJournalColorPresetCellContentView_appliedConfiguration);
  a1[3] = &type metadata for CustomJournalColorPresetContentConfiguration;
  a1[4] = sub_100113DDC();
  *a1 = v4;

  return v4;
}

void (*sub_100113D20(void *a1))(void *a1)
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
  v2[4] = sub_100113498(v2);
  return sub_100113D90;
}

void sub_100113D90(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_100113DDC()
{
  result = qword_100AD3258;
  if (!qword_100AD3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3258);
  }

  return result;
}

unint64_t sub_100113E30()
{
  result = qword_100AD3260;
  if (!qword_100AD3260)
  {
    type metadata accessor for CustomJournalColorPresetCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3260);
  }

  return result;
}

uint64_t sub_100113E84()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD3270);
  v1 = sub_10000617C(v0, qword_100AD3270);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100113F4C()
{
}

id sub_100113F8C()
{
  if ((v0[OBJC_IVAR____TtC7Journal14LivePhotoAsset_pendingLivePhotoRequest + 4] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtC7Journal14LivePhotoAsset_pendingLivePhotoRequest];
    [objc_opt_self() cancelLivePhotoRequestWithRequestID:*v1];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LivePhotoAsset();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100114008()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_100114F14(v0);
    v1 = v2;
    *(v0 + 24) = v2;
  }

  return v1;
}

uint64_t sub_100114068(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a1)
  {
    if (qword_100ACF938 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AD3270);
    v8 = a3;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v11 = 138413058;
      *(v11 + 4) = v8;
      *v23 = v8;
      *(v11 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10004A64C(&qword_100AE19B0, &type metadata accessor for UUID);
      v12 = v8;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = sub_100008458(v13, v14, &v24);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      v16 = Dictionary.description.getter();
      v18 = sub_100008458(v16, v17, &v24);

      *(v11 + 24) = v18;
      *(v11 + 32) = 2080;
      type metadata accessor for URL();
      v19 = Array.description.getter();
      v21 = sub_100008458(v19, v20, &v24);

      *(v11 + 34) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "%@[%s].getLivePhoto failed to generate PHLivePhoto - info: %s componentURLs: %s", v11, 0x2Au);
      sub_100004F84(v23, &unk_100AD4BB0);

      swift_arrayDestroy();
    }

    a1 = 0;
  }

  return a5(a1);
}

uint64_t sub_100114350()
{
  v1 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata);
  if (v4)
  {

    sub_100046ADC(v3);

    v5 = type metadata accessor for PhotoLibraryAssetMetadata();
    v4 = 0;
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {
      v4 = PhotoLibraryAssetMetadata.placeName.getter();
    }

    sub_100004F84(v3, &qword_100AD5B20);
  }

  return v4;
}

double *sub_10011446C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v2 - 8);
  v84 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = v77 - v5;
  v93 = type metadata accessor for UTType();
  v6 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v77 - v10;
  __chkstk_darwin(v12);
  v82 = v77 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v89 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = v77 - v18;
  v19 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v96 = 0;
  v23 = [v19 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:0 error:&v96];

  v24 = v96;
  if (v23)
  {
    v83 = v14;
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v24;

    v27 = *(v25 + 16);
    if (v27)
    {
      v78 = v1;
      v79 = v8;
      v29 = *(v15 + 16);
      v28 = v15 + 16;
      v90 = v29;
      v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
      v77[1] = v25;
      v81 = v30;
      v31 = v25 + v30;
      v32 = *(v28 + 56);
      v91 = v28;
      v92 = (v6 + 48);
      v33 = (v6 + 8);
      v85 = (v6 + 32);
      v86 = (v28 - 8);
      v80 = (v28 + 16);
      v34 = _swiftEmptyArrayStorage;
      v35 = v83;
      v87 = v32;
      while (1)
      {
        v94 = v34;
        v90(v95, v31, v35);
        URL.pathExtension.getter();
        static UTType.data.getter();
        v37 = v88;
        UTType.init(filenameExtension:conformingTo:)();
        v38 = v93;
        v39 = *v92;
        if ((*v92)(v37, 1, v93) == 1)
        {
          sub_100004F84(v37, &unk_100AD7C40);
        }

        else
        {
          v40 = v82;
          (*v85)(v82, v37, v38);
          static UTType.image.getter();
          v41 = UTType.conforms(to:)();
          v42 = *v33;
          (*v33)(v11, v38);
          v43 = v40;
          v35 = v83;
          v42(v43, v38);
          if (v41)
          {
            goto LABEL_14;
          }
        }

        URL.pathExtension.getter();
        static UTType.data.getter();
        v44 = v84;
        UTType.init(filenameExtension:conformingTo:)();
        v45 = v93;
        if (v39(v44, 1, v93) == 1)
        {
          sub_100004F84(v44, &unk_100AD7C40);
        }

        else
        {
          v46 = v79;
          (*v85)(v79, v44, v45);
          static UTType.video.getter();
          v47 = UTType.conforms(to:)();
          v48 = *v33;
          (*v33)(v11, v45);
          if (v47)
          {
            v48(v46, v45);
LABEL_14:
            v90(v89, v95, v35);
            v34 = v94;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_1003E4AE0(0, *(v34 + 2) + 1, 1, v34);
            }

            v51 = *(v34 + 2);
            v50 = *(v34 + 3);
            if (v51 >= v50 >> 1)
            {
              v34 = sub_1003E4AE0(v50 > 1, v51 + 1, 1, v34);
            }

            (*v86)(v95, v35);
            *(v34 + 2) = v51 + 1;
            v36 = v87;
            (*v80)(v34 + v81 + v51 * v87, v89, v35);
            goto LABEL_6;
          }

          static UTType.movie.getter();
          v49 = UTType.conforms(to:)();
          v48(v11, v45);
          v48(v46, v45);
          if (v49)
          {
            goto LABEL_14;
          }
        }

        (*v86)(v95, v35);
        v34 = v94;
        v36 = v87;
LABEL_6:
        v31 += v36;
        if (!--v27)
        {

          v1 = v78;
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    v52 = v96;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACF938 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000617C(v53, qword_100AD3270);
    v54 = v1;
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = v95;
      *v57 = 138412802;
      *(v57 + 4) = v54;
      *v58 = v54;
      *(v57 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10004A64C(&qword_100AE19B0, &type metadata accessor for UUID);
      v59 = v54;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = sub_100008458(v60, v61, &v96);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2112;
      swift_errorRetain();
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 24) = v63;
      v58[1] = v63;
      _os_log_impl(&_mh_execute_header, v55, v56, "%@[%s] (getLivePhotoComponentURLs) directoryContents error: %@", v57, 0x20u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();

      sub_10000BA7C(v95);
    }

    else
    {
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_27:
  if (*(v34 + 2) <= 1uLL)
  {
    v64 = qword_100ACF938;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000617C(v65, qword_100AD3270);
    v66 = v1;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v96 = v71;
      *v69 = 138412546;
      *(v69 + 4) = v66;
      *v70 = v66;
      *(v69 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10004A64C(&qword_100AE19B0, &type metadata accessor for UUID);
      v72 = v66;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = sub_100008458(v73, v74, &v96);

      *(v69 + 14) = v75;

      _os_log_impl(&_mh_execute_header, v67, v68, "%@[%s] (getLivePhotoComponentURLs) unable to extract enough paths from pvt directory", v69, 0x16u);
      sub_100004F84(v70, &unk_100AD4BB0);

      sub_10000BA7C(v71);
    }

    else
    {
    }
  }

  return v34;
}

void sub_100114F14(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v2 - 8);
  v148 = &v138[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v158 = &v138[-v5];
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v149 = &v138[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v138[-v10];
  __chkstk_darwin(v12);
  v145 = &v138[-v13];
  v170 = type metadata accessor for FileStoreConfiguration();
  v14 = *(v170 - 8);
  __chkstk_darwin(v170);
  v169 = &v138[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  __chkstk_darwin(v175);
  v17 = &v138[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v138[-v19];
  __chkstk_darwin(v21);
  v23 = &v138[-v22];
  __chkstk_darwin(v24);
  v157 = &v138[-v25];
  __chkstk_darwin(v26);
  v156 = &v138[-v27];
  __chkstk_darwin(v28);
  v155 = &v138[-v29];
  v30 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v30 - 8);
  v179 = &v138[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v154 = &v138[-v33];
  __chkstk_darwin(v34);
  v159 = &v138[-v35];
  v178 = type metadata accessor for URL();
  v36 = *(v178 - 8);
  __chkstk_darwin(v178);
  v140 = &v138[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v144 = &v138[-v39];
  __chkstk_darwin(v40);
  v174 = &v138[-v41];
  __chkstk_darwin(v42);
  v153 = &v138[-v43];
  __chkstk_darwin(v44);
  v152 = &v138[-v45];
  __chkstk_darwin(v46);
  v151 = &v138[-v47];
  __chkstk_darwin(v48);
  v150 = &v138[-v49];
  v173 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v173);
  __chkstk_darwin(v50);
  v168 = &v138[-v51];
  __chkstk_darwin(v52);
  v167 = &v138[-v53];
  __chkstk_darwin(v54);
  v182 = &v138[-v55];
  __chkstk_darwin(v56);
  v60 = &v138[-v57];
  v61 = *(a1 + 16);
  v185 = *(v61 + 16);
  if (!v185)
  {
    v181 = _swiftEmptyArrayStorage;
    return;
  }

  v146 = v23;
  v163 = v20;
  v165 = v11;
  v166 = v6;
  v62 = 0;
  v184 = v61 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v177 = (v36 + 56);
  v162 = (v14 + 8);
  v180 = (v36 + 32);
  v176 = (v36 + 48);
  v164 = (v7 + 48);
  v143 = (v7 + 32);
  v142 = (v7 + 8);
  v161 = (v36 + 16);
  v160 = v36;
  v171 = (v36 + 8);
  v181 = _swiftEmptyArrayStorage;
  v63 = 1;
  v186 = 1;
  v64 = 1;
  v65 = v178;
  v66 = v179;
  v172 = v59;
  v67 = v182;
  v147 = v17;
  v188 = &v138[-v57];
  v183 = v61;
  while (v62 < *(v61 + 16))
  {
    v70 = v58;
    sub_100068AC8(v184 + *(v58 + 72) * v62, v60, type metadata accessor for AssetAttachment.AssetType);
    if (((v64 | v186) & 1) == 0)
    {
      sub_10004FECC(v60, type metadata accessor for AssetAttachment.AssetType);
      return;
    }

    v187 = v64;
    v71 = v64 ^ 1 | v63;
    sub_100068AC8(v60, v67, type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
        v69 = v182;
        v68 = type metadata accessor for AssetAttachment.AssetType;
        v67 = v182;
        goto LABEL_5;
      }

      if (v71)
      {
        v78 = v167;
        sub_100068AC8(v188, v167, type metadata accessor for AssetAttachment.AssetType);
        v79 = swift_getEnumCaseMultiPayload();
        v80 = v79;
        if (v79 <= 1)
        {
          v82 = v78;
          v83 = v156;
          v84 = v155;
          if (!v80)
          {
            goto LABEL_51;
          }

          sub_10004FECC(v167, type metadata accessor for AssetAttachment.AssetType);
          v115 = 1;
          v112 = v159;
        }

        else
        {
          v81 = v79 - 2;
          v82 = v78;
          v83 = v156;
          v84 = v155;
          if (v81 >= 2)
          {
            v85 = v167;

            v82 = &v85[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
          }

LABEL_51:
          sub_100048E9C(v82, v84, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          sub_100068AC8(v84, v83, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_10004FECC(v84, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v112 = v159;
            (*v180)(v159, v83, v65);
          }

          else
          {
            v113 = v169;
            static FileStoreConfiguration.shared.getter();
            v114 = v159;
            FileStoreConfiguration.getAttachmentURL(from:)();
            v66 = v179;

            (*v162)(v113, v170);
            v112 = v114;
            sub_10004FECC(v84, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          }

          v115 = 0;
        }

        (*v177)(v112, v115, 1, v65);
        if ((*v176)(v112, 1, v65) == 1)
        {
          sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
          sub_100004F84(v112, &unk_100AD6DD0);
          v71 = 1;
          v67 = v182;
        }

        else
        {
          v116 = *v180;
          v117 = v150;
          (*v180)(v150, v112, v65);
          (*v161)(v151, v117, v65);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v181 = sub_1003E4AE0(0, *(v181 + 2) + 1, 1, v181);
          }

          v119 = *(v181 + 2);
          v118 = *(v181 + 3);
          if (v119 >= v118 >> 1)
          {
            v181 = sub_1003E4AE0(v118 > 1, v119 + 1, 1, v181);
          }

          v120 = v160;
          (*(v160 + 8))(v150, v65);
          sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
          v121 = v181;
          *(v181 + 2) = v119 + 1;
          v116(v121 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v119, v151, v65);
          v71 = 0;
          v186 = 0;
          v67 = v182;
        }

        goto LABEL_4;
      }

      sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
      v71 = 0;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {

          v73 = v172;
          sub_100068AC8(v188, v172, type metadata accessor for AssetAttachment.AssetType);
          v74 = swift_getEnumCaseMultiPayload();
          v75 = v74;
          if (v74 <= 1)
          {
            v77 = v73;
            if (!v75)
            {
              goto LABEL_28;
            }

            sub_10004FECC(v73, type metadata accessor for AssetAttachment.AssetType);
            v94 = 1;
          }

          else
          {
            v76 = v74 - 2;
            v77 = v73;
            if (v76 >= 2)
            {

              v77 = v73 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
            }

LABEL_28:
            v93 = v163;
            sub_100048E9C(v77, v163, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            sub_100068AC8(v93, v17, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_10004FECC(v93, type metadata accessor for AssetAttachment.AssetType.FilePathType);
              v65 = v178;
              (*v180)(v66, v17, v178);
              v94 = 0;
              goto LABEL_37;
            }

            v95 = v169;
            static FileStoreConfiguration.shared.getter();
            FileStoreConfiguration.getAttachmentURL(from:)();
            v67 = v182;
            v66 = v179;

            (*v162)(v95, v170);
            sub_10004FECC(v93, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v94 = 0;
          }

          v65 = v178;
LABEL_37:
          (*v177)(v66, v94, 1, v65);
          if ((*v176)(v66, 1, v65) == 1)
          {
            sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
            sub_100004F84(v66, &unk_100AD6DD0);
            v63 = v71;
LABEL_83:
            v137 = sub_1000F24EC(&qword_100AD33B8);
            sub_10004FECC(v67 + *(v137 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v71 = v63;
            goto LABEL_6;
          }

          v141 = *v180;
          v141(v174, v66, v65);
          URL.pathExtension.getter();
          v98 = v165;
          static UTType.data.getter();
          v99 = v158;
          UTType.init(filenameExtension:conformingTo:)();
          v100 = *v164;
          v101 = v166;
          if ((*v164)(v99, 1, v166) == 1)
          {
            sub_100004F84(v99, &unk_100AD7C40);
            goto LABEL_47;
          }

          v102 = v145;
          (*v143)(v145, v99, v101);
          static UTType.image.getter();
          v139 = UTType.conforms(to:)();
          v103 = *v142;
          (*v142)(v98, v101);
          v104 = v102;
          v65 = v178;
          v103(v104, v101);
          if (v139 & v71)
          {
            (*v161)(v144, v174, v65);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v181 = sub_1003E4AE0(0, *(v181 + 2) + 1, 1, v181);
            }

            v17 = v147;
            v66 = v179;
            v106 = *(v181 + 2);
            v105 = *(v181 + 3);
            if (v106 >= v105 >> 1)
            {
              v181 = sub_1003E4AE0(v105 > 1, v106 + 1, 1, v181);
            }

            v107 = v160;
            (*(v160 + 8))(v174, v65);
            sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
            v108 = v181;
            *(v181 + 2) = v106 + 1;
            v141(v108 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v106, v144, v65);
            v63 = 0;
            v186 = 0;
            goto LABEL_82;
          }

LABEL_47:
          URL.pathExtension.getter();
          v109 = v165;
          static UTType.data.getter();
          v110 = v148;
          UTType.init(filenameExtension:conformingTo:)();
          v111 = v166;
          if (v100(v110, 1, v166) == 1)
          {
            sub_100004F84(v110, &unk_100AD7C40);
LABEL_49:
            (*v171)(v174, v65);
            sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
            v63 = v71;
            v17 = v147;
            v66 = v179;
LABEL_82:
            v67 = v182;
            goto LABEL_83;
          }

          (*v143)(v149, v110, v111);
          static UTType.video.getter();
          v122 = UTType.conforms(to:)();
          v123 = *v142;
          (*v142)(v109, v111);
          if (v122)
          {
            v123(v149, v111);
          }

          else
          {
            static UTType.movie.getter();
            v131 = v149;
            v139 = UTType.conforms(to:)();
            v123(v109, v111);
            v123(v131, v111);
            if ((v139 & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          v17 = v147;
          v66 = v179;
          if (v187)
          {
            v132 = v147;
            (*v161)(v140, v174, v65);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v181 = sub_1003E4AE0(0, *(v181 + 2) + 1, 1, v181);
            }

            v133 = v160;
            v135 = *(v181 + 2);
            v134 = *(v181 + 3);
            if (v135 >= v134 >> 1)
            {
              v181 = sub_1003E4AE0(v134 > 1, v135 + 1, 1, v181);
            }

            (*(v133 + 8))(v174, v65);
            sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
            v136 = v181;
            *(v181 + 2) = v135 + 1;
            v141(v136 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v135, v140, v65);
            v187 = 0;
            v67 = v182;
            v17 = v132;
            goto LABEL_83;
          }

          (*v171)(v174, v65);
          sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
          v187 = 0;
          v63 = 1;
          goto LABEL_82;
        }

        sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
        goto LABEL_4;
      }

      if (v187)
      {
        v86 = v17;
        v87 = v168;
        sub_100068AC8(v188, v168, type metadata accessor for AssetAttachment.AssetType);
        v88 = swift_getEnumCaseMultiPayload();
        if (v88 <= 1)
        {
          v89 = v146;
          v90 = v157;
          v91 = v154;
          if (!v88)
          {
            goto LABEL_32;
          }

          sub_10004FECC(v168, type metadata accessor for AssetAttachment.AssetType);
          v96 = 1;
        }

        else
        {
          v89 = v146;
          v90 = v157;
          v91 = v154;
          if ((v88 - 2) >= 2)
          {
            v92 = v168;

            v87 = &v92[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
          }

LABEL_32:
          sub_100048E9C(v87, v90, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          sub_100068AC8(v90, v89, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_10004FECC(v90, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v65 = v178;
            (*v180)(v91, v89, v178);
            v96 = 0;
            goto LABEL_66;
          }

          v97 = v169;
          static FileStoreConfiguration.shared.getter();
          FileStoreConfiguration.getAttachmentURL(from:)();
          v66 = v179;

          (*v162)(v97, v170);
          sub_10004FECC(v90, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v96 = 0;
        }

        v65 = v178;
LABEL_66:
        (*v177)(v91, v96, 1, v65);
        if ((*v176)(v91, 1, v65) == 1)
        {
          sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
          sub_100004F84(v91, &unk_100AD6DD0);
          v187 = 1;
          v67 = v182;
          v17 = v86;
        }

        else
        {
          v124 = *v180;
          v125 = v152;
          (*v180)(v152, v91, v65);
          (*v161)(v153, v125, v65);
          v126 = v86;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v181 = sub_1003E4AE0(0, *(v181 + 2) + 1, 1, v181);
          }

          v127 = v160;
          v129 = *(v181 + 2);
          v128 = *(v181 + 3);
          if (v129 >= v128 >> 1)
          {
            v181 = sub_1003E4AE0(v128 > 1, v129 + 1, 1, v181);
          }

          (*(v127 + 8))(v152, v65);
          sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
          v130 = v181;
          *(v181 + 2) = v129 + 1;
          v124(v130 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v129, v153, v65);
          v187 = 0;
          v17 = v126;
          v66 = v179;
          v67 = v182;
        }

        goto LABEL_4;
      }

      sub_10004FECC(v188, type metadata accessor for AssetAttachment.AssetType);
      v187 = 0;
    }

LABEL_4:
    v68 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
    v69 = v67;
LABEL_5:
    sub_10004FECC(v69, v68);
LABEL_6:
    ++v62;
    v63 = v71;
    v58 = v70;
    v60 = v188;
    v61 = v183;
    v64 = v187;
    if (v185 == v62)
    {
      return;
    }
  }

  __break(1u);
}

id sub_100116748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v26 = type metadata accessor for AssetSource();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetType();
  v10 = *(v9 - 8);
  v23 = v9;
  v24 = v10;
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for UUID();
  v13 = *(v25 - 8);
  v14 = __chkstk_darwin(v25);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata) = 0;
  v17 = v3 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_pendingLivePhotoRequest;
  *v17 = 0;
  *(v17 + 4) = 1;
  *(v3 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_livePhotoAttachments) = 0;
  (*(v13 + 16))(v16, a1, v14);
  (*(v10 + 16))(v12, a2, v9);
  v18 = v26;
  v19 = v27;
  (*(v6 + 16))(v8, v27, v26);
  v20 = sub_100285908(v16, v12, v8);
  (*(v6 + 8))(v19, v18);
  (*(v24 + 8))(a2, v23);
  (*(v13 + 8))(a1, v25);
  return v20;
}

id sub_100116A18()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for PhotoLibraryAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  sub_1006AB154(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100004F84(v17, &qword_100AD5B20);
    return 0;
  }

  v49 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = PhotoLibraryAssetMetadata.placeName.getter();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v48 = v3;
  static UTType.livePhoto.getter();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_10012B77C(v24, v25, 0, 0);

  v29 = v52;
  PhotoLibraryAssetMetadata.date.getter();
  v30 = v29;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v50 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v34)
    {
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        v37 = v49;
        JournalEntryMO.displayDate.getter();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v49;
      }

      v30 = v52;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    (*(v32 + 56))(v37, v38, 1, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_100004F84(v30, &unk_100AD4790);
    }
  }

  else
  {
    v37 = v49;
    (*(v32 + 32))(v49, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v40;
  sub_1000F24EC(&unk_100AD9A60);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100940080;
  v43 = sub_10012C00C(v39, v41, v37);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v28 setAlternateNames:v46];

  sub_100004F84(v37, &unk_100AD4790);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_100117064(char *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if (*&a1[OBJC_IVAR____TtC7Journal14LivePhotoAsset_livePhotoAttachments])
  {
    v5 = a2;

    v6 = sub_100114008();
  }

  else
  {
    v7 = a2;
    v6 = _swiftEmptyArrayStorage;
  }

  if (*(v6 + 2) == 2)
  {
    v8 = objc_opt_self();
    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = v6;
    v10[4] = sub_1001174B8;
    v10[5] = v4;
    aBlock[4] = sub_1001174C0;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001E1E04;
    aBlock[3] = &unk_100A5D688;
    v11 = _Block_copy(aBlock);
    v12 = a1;

    LODWORD(v8) = [v8 requestLivePhotoWithResourceFileURLs:isa placeholderImage:0 targetSize:0 contentMode:v11 resultHandler:{0.0, 0.0}];
    _Block_release(v11);

    v13 = &v12[OBJC_IVAR____TtC7Journal14LivePhotoAsset_pendingLivePhotoRequest];
    *v13 = v8;
    v13[4] = 0;
  }

  else
  {
    if (qword_100ACF938 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000617C(v15, qword_100AD3270);
    v16 = a1;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v19 = 138412802;
      *(v19 + 4) = v16;
      *v28 = v16;
      *(v19 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10004A64C(&qword_100AE19B0, &type metadata accessor for UUID);
      v20 = v16;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_100008458(v21, v22, aBlock);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2080;
      type metadata accessor for URL();
      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_100008458(v24, v26, aBlock);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "%@[%s].getLivePhoto not enough components to build PHLivePhoto: %s", v19, 0x20u);
      sub_100004F84(v28, &unk_100AD4BB0);

      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100732094(0);
  }
}

uint64_t sub_1001174CC(uint64_t a1)
{
  v31 = type metadata accessor for MergeableColor();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&unk_100AD68C0);
  __chkstk_darwin(v3 - 8);
  v32 = &v29 - v4;
  v5 = type metadata accessor for ColorResource();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntryListType();
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = a1;
  sub_100022B50(a1 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel_listType, &v29 - v12);
  v15 = sub_1000F24EC(&qword_100AD47A0);
  v16 = *(*(v15 - 8) + 48);
  v17 = 0;
  if (v16(v13, 2, v15))
  {
    return v17;
  }

  v29 = v7;
  v30 = v14;
  sub_100022B50(v13, v11);
  if (qword_100ACF9D0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000617C(v8, qword_100B2F468);
  v19 = sub_100023858(v18, v11);
  sub_100011478(v11);
  v20 = v30;
  if (v19)
  {
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0BE0 != -1)
    {
      swift_once();
    }

    v21 = sub_10000617C(v5, qword_100B312B0);
    (*(v34 + 16))(v29, v21, v5);
    v17 = UIColor.init(resource:)();
    sub_100011478(v13);
    return v17;
  }

  if (!v16(v13, 2, v15))
  {
    swift_getKeyPath();
    v36 = v20;
    sub_10011939C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v20 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel__observableJournal);
    v23 = v35;
    if (v22)
    {

      v24 = v32;
      dispatch thunk of ObservableJournal.color.getter();

      v25 = v33;
      v26 = v31;
      if (!(*(v33 + 48))(v24, 1, v31))
      {
        (*(v25 + 16))(v23, v24, v26);
        sub_100004F84(v24, &unk_100AD68C0);
        v17 = sub_10007C744();
        (*(v25 + 8))(v23, v26);
        goto LABEL_14;
      }

      sub_100004F84(v24, &unk_100AD68C0);
    }

    v17 = 0;
LABEL_14:
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 8))(v13, v27);
    return v17;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001179B8()
{
  swift_getKeyPath();
  sub_10011939C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100117A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10011939C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel__observableJournal);
}

uint64_t sub_100117AB8()
{
  swift_getKeyPath();
  sub_10011939C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100117B54()
{
  sub_100011478(v0 + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel_listType);

  v1 = OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100117C18()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 fetchRequest];
    v4 = sub_100022FBC();
    [v3 setPredicate:v4];

    v7 = 0;
    if ([v2 performFetch:&v7])
    {
      v5 = v7;
    }

    else
    {
      v6 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {

    sub_100022BB4();
  }
}

uint64_t sub_100117D58@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 deletedOnDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100117DFC(uint64_t a1, void **a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_1000082B4(a1, &v11 - v5, &unk_100AD4790);
  v7 = *a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setDeletedOnDate:isa];
}

id sub_100117F38()
{
  v1 = sub_100022EB0();
  v2 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v1 managedObjectContext:*(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context) sectionNameKeyPath:0 cacheName:0];

  v3 = OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController) = v2;
  v5 = v2;

  if (v5)
  {
    v6 = [v5 fetchRequest];

    [v6 setPredicate:0];
  }

  result = *(v0 + v3);
  if (result)
  {
    v11 = 0;
    v8 = [result performFetch:&v11];
    v9 = v11;
    if (v8)
    {

      return v9;
    }

    else
    {
      v10 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1001180C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1000F24EC(&unk_100ADE5F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for EntrySource();
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v22;
  v48 = v21;
  (*(v22 + 16))(v20, a1, v18);
  v23 = type metadata accessor for EntryListType();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v16, 1, 1, v23);
  v25 = *(a2 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  UUID.init()();
  v45 = v6;
  v46 = v5;
  (*(v6 + 56))(v10, 0, 1, v5);
  type metadata accessor for JournalEntryMO();
  v26 = static JournalEntryMO.create(type:context:uuid:)();
  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v27 = v26;
  v28 = sub_100035ADC(v27, 1, 1, v25);
  sub_1000082B4(v16, v13, &unk_100ADE5F0);
  v29 = v13;
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {

    sub_100004F84(v10, &qword_100AD1420);
    sub_100004F84(v16, &unk_100ADE5F0);
    (*(v47 + 8))(v20, v48);
    result = sub_100004F84(v13, &unk_100ADE5F0);
  }

  else
  {
    v31 = v10;
    v33 = v47;
    v32 = v48;
    v34 = sub_1000F24EC(&qword_100AD47A0);
    if ((*(*(v34 - 8) + 48))(v29, 2, v34))
    {

      sub_100004F84(v31, &qword_100AD1420);
      sub_100004F84(v16, &unk_100ADE5F0);
      (*(v33 + 8))(v20, v32);
      result = sub_100011478(v29);
    }

    else
    {
      v35 = v29;
      v36 = v45;
      v37 = *(v45 + 32);
      v43 = v16;
      v38 = v28;
      v39 = v44;
      v40 = v46;
      v37(v44, v35, v46);

      sub_1007788F0(v39);

      v41 = v39;
      v28 = v38;
      (*(v36 + 8))(v41, v40);
      sub_100004F84(v31, &qword_100AD1420);
      sub_100004F84(v43, &unk_100ADE5F0);
      result = (*(v33 + 8))(v20, v32);
    }
  }

  *v49 = v28;
  return result;
}

uint64_t sub_1001185F8()
{
  type metadata accessor for JournalEntryMO();
  v0 = static JournalEntryMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100941D60;
  sub_1000065A8(0, &qword_100ADB900);
  *(v1 + 32) = NSPredicate.init(format:_:)();
  *(v1 + 40) = NSPredicate.init(format:_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v0 setPredicate:v3];
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v5;
}

uint64_t sub_100118788()
{
  type metadata accessor for JournalEntryMO();
  v0 = static JournalEntryMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100941D60;
  sub_1000065A8(0, &qword_100ADB900);
  *(v1 + 32) = NSPredicate.init(format:_:)();
  sub_1000065A8(0, &unk_100AD5AF0);
  *(v1 + 40) = static NSPredicate.timelineEntries.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v0 setPredicate:v3];
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v5;
}

void sub_100118910(const char *a1@<X2>, BOOL *a2@<X8>)
{
  type metadata accessor for JournalEntryMO();
  v5 = NSManagedObjectContext.count<A>(for:)();
  if (v2)
  {
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 0xCu);
      sub_100004F84(v9, &unk_100AD4BB0);
    }

    else
    {
    }

    v11 = 0;
  }

  else
  {
    v11 = v5 > 0;
  }

  *a2 = v11;
}

uint64_t sub_100118AB4()
{
  v1 = OBJC_IVAR____TtC7Journal18EntryListViewModel_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100011478(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_listType);

  v3 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
  v4 = type metadata accessor for EntriesSortOrder();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_dateInterval, &qword_100AD3750);
  return v0;
}

uint64_t sub_100118BE4()
{
  sub_100118AB4();

  return swift_deallocClassInstance();
}

uint64_t sub_100118C44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JournalEntryMO();
  v3 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "(getDraftEntry) error fetching draft entries: %@", v6, 0xCu);
      sub_100004F84(v7, &unk_100AD4BB0);
    }

    else
    {
    }

    result = 0;
    goto LABEL_24;
  }

  v9 = v3;
  v10 = v3 >> 62;
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_14;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_14;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (v10)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v14;

    _os_log_impl(&_mh_execute_header, v11, v12, "(getDraftEntry) Found multiple draft entries (%ld), using first one", v13, 0xCu);
  }

  else
  {
  }

LABEL_14:
  if (!v10)
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_23:

    result = 0;
LABEL_24:
    *a1 = result;
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_16:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v9 + 32);
LABEL_19:
    v17 = v16;

    v18 = [v17 managedObjectContext];
    if (!v18)
    {
      v18 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel();
    swift_allocObject();
    result = sub_100035ADC(v17, 0, 0, v18);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_100118F90()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v1)
  {
    v5 = v1;
    v2 = [v5 sections];
    if (v2)
    {

      v6 = 0;
      if ([v5 performFetch:&v6])
      {
        v3 = v6;
      }

      else
      {
        v4 = v6;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
    }
  }
}

id sub_1001191A8(id a1, SEL a2)
{
  v2 = a1;
  sub_100119210();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_100119210()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  if ([v1 isTip])
  {
    return 0;
  }

  result = [v1 deletedOnDate];
  if (result)
  {
    v10 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v11 = sub_100777C2C();
    (*(v3 + 8))(v8, v2);
    return v11;
  }

  return result;
}

unint64_t sub_10011939C()
{
  result = qword_100AD3740;
  if (!qword_100AD3740)
  {
    type metadata accessor for ObservableEntryListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3740);
  }

  return result;
}

uint64_t sub_1001193F4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7Journal28ObservableEntryListViewModel__observableJournal) = *(v0 + 24);
}

unint64_t sub_10011949C()
{
  result = qword_100AD3758;
  if (!qword_100AD3758)
  {
    sub_1000065A8(255, &unk_100AE5E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3758);
  }

  return result;
}

unint64_t sub_100119504()
{
  result = qword_100AD3768;
  if (!qword_100AD3768)
  {
    sub_1000F2A18(&qword_100AD3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3768);
  }

  return result;
}

void sub_100119574()
{

  sub_1000BB440();
}

uint64_t sub_1001195E4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD3770);
  v1 = sub_10000617C(v0, qword_100AD3770);
  if (qword_100AD0218 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001196AC()
{
  v0 = sub_1000F24EC(&qword_100AD3820);
  sub_100006118(v0, qword_100B2F368);
  sub_10000617C(v0, qword_100B2F368);
  v1 = [objc_opt_self() gigabytes];
  sub_100119D6C();
  return Measurement.init(value:unit:)();
}

uint64_t sub_100119774(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = type metadata accessor for JournalFeatureFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v27 = CGRectGetWidth(v39) + -8.0 + -4.0;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  Width = CGRectGetWidth(v40);
  v29 = v27 * 0.5;
  if (v27 * 0.5 >= Width)
  {
    v31 = v27 * 0.25;
    if (Width < v29 && v31 < Width)
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      if (CGRectGetHeight(v43) >= v31)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (Width < v31 && (v42.origin.x = a1, v42.origin.y = a2, v42.size.width = a3, v42.size.height = a4, Width <= CGRectGetHeight(v42) * 0.5) && ((*(v9 + 104))(v11, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8), v33 = JournalFeatureFlags.isEnabled.getter(), (*(v9 + 8))(v11, v8), (v33 & 1) != 0))
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    if (Width == CGRectGetHeight(v41))
    {
      return 7;
    }

    v34 = *(v9 + 104);
    v34(v17, enum case for JournalFeatureFlags.fullScreenViewer(_:), v8);
    v35 = JournalFeatureFlags.isEnabled.getter();
    v36 = *(v9 + 8);
    v36(v17, v8);
    if ((v35 & 1) != 0 && (v44.origin.x = a1, v44.origin.y = a2, v44.size.width = a3, v44.size.height = a4, Width * 1.5 <= CGRectGetHeight(v44)))
    {
      return 7;
    }

    else
    {
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      if (v27 * 0.25 >= CGRectGetHeight(v45))
      {
        return 2;
      }

      else
      {
        v34(v14, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v8);
        v37 = JournalFeatureFlags.isEnabled.getter();
        v36(v14, v8);
        result = 1;
        if (v37)
        {
          v46.origin.x = a1;
          v46.origin.y = a2;
          v46.size.width = a3;
          v46.size.height = a4;
          if (CGRectGetHeight(v46) == Width * 1.5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_100119B20(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD3820);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if (qword_100ACF940 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000617C(v6, qword_100AD3770);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "(isMaxMegabytesReached) entryInMegabytes: %{bytes}ld", v9, 0xCu);
  }

  v10 = [objc_opt_self() bytes];
  sub_100119D6C();
  Measurement.init(value:unit:)();
  if (qword_100ACF948 != -1)
  {
    swift_once();
  }

  sub_10000617C(v2, qword_100B2F368);
  sub_100119DB8();
  v11 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return (v11 & 1) == 0;
}

unint64_t sub_100119D6C()
{
  result = qword_100AD3828;
  if (!qword_100AD3828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD3828);
  }

  return result;
}

unint64_t sub_100119DB8()
{
  result = qword_100AD3830;
  if (!qword_100AD3830)
  {
    sub_1000F2A18(&qword_100AD3820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3830);
  }

  return result;
}

uint64_t sub_100119E1C(uint64_t a1)
{
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD5B30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  sub_1000082B4(a1, v32, &qword_100AD13D0);
  v11 = v33;
  if (v33)
  {
    v12 = sub_10000CA14(v32, v33);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v11);
    sub_10000BA7C(v32);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for MultiPinMapAsset();
  v31.receiver = v1;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, "isEqual:", v16);
  swift_unknownObjectRelease();
  if (!v18)
  {
    goto LABEL_17;
  }

  sub_1000082B4(a1, v32, &qword_100AD13D0);
  if (!v33)
  {
    sub_100004F84(v32, &qword_100AD13D0);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = 0;
    return v23 & 1;
  }

  v19 = v29;
  v20 = v30;
  if (!*&v1[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
  {
LABEL_10:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  sub_1000768B4(v10);

  if ((*(v19 + 48))(v10, 1, v3))
  {
    sub_100004F84(v10, &unk_100AD5B30);
    goto LABEL_10;
  }

  v25 = v28;
  (*(v19 + 16))(v28, v10, v3);
  sub_100004F84(v10, &unk_100AD5B30);
  v21 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v19 + 8))(v25, v3);
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*&v20[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
  {

    sub_1000768B4(v8);

    if ((*(v19 + 48))(v8, 1, v3))
    {
      sub_100004F84(v8, &unk_100AD5B30);
    }

    else
    {
      v26 = v28;
      (*(v19 + 16))(v28, v8, v3);
      sub_100004F84(v8, &unk_100AD5B30);
      v22 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v19 + 8))(v26, v3);
      if (v22)
      {
        goto LABEL_15;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_15:
  v23 = sub_1007ECA18(v21, v22);

  return v23 & 1;
}

uint64_t sub_10011A350()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  if (*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v5);

    v6 = type metadata accessor for MultiPinMapAssetMetadata();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v3 = sub_100004F84(v5, &unk_100AD5B30);
    }

    else
    {
      v7 = MultiPinMapAssetMetadata.isSlim.getter();
      v3 = sub_100004F84(v5, &unk_100AD5B30);
      if (v7 != 2 && (v7 & 1) != 0)
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_context);
  if (v8)
  {
    __chkstk_darwin(v3);
    *&v12[-16] = v1;
    v10 = v9;
    sub_1000F24EC(&qword_100AD38E8);
    NSManagedObjectContext.performAndWait<A>(_:)();

    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}