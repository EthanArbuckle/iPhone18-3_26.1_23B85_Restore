uint64_t sub_100001BB0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10000243C(a1);
  (*(*(*(v2 + qword_100022208) - 8) + 8))(a1);
  return v5;
}

void *sub_100001C74(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100022208);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v12 - v7);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_100001DAC(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_100022208);
  v5 = *(v3 + qword_100022208 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100001E80()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_100022208);
  v3 = *(v1 + qword_100022208 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100001F78(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001FF0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002070@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000020B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000020E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10000216C(uint64_t a1)
{
  v2 = sub_10000260C(&qword_100021640, type metadata accessor for Role);
  v3 = sub_10000260C(&qword_100021648, type metadata accessor for Role);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100002270(uint64_t a1)
{
  v2 = sub_10000260C(&qword_100021CA0, type metadata accessor for LaunchOptionsKey);
  v3 = sub_10000260C(&qword_100021650, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002330()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100002370()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000023C8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000243C(uint64_t a1)
{
  v2 = (*(*(*((swift_isaMask & *v1) + qword_100022208) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1, a1);
  (*(v4 + 16))(&v6 - v3);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10000260C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100002774(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002784(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000027A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1000027E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002854(uint64_t *a1, int a2)
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

uint64_t sub_10000289C(uint64_t result, int a2, int a3)
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

double sub_100002904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_10000391C(&qword_100021660, &qword_1000149B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v30 - v8;
  v10 = sub_10000391C(&qword_100021668, &qword_1000149C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v30 - v14;
  v16 = sub_10000391C(&qword_100021670, &qword_1000149C8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v30 - v20;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = sub_10000391C(&qword_100021678, &qword_1000149D0);
  sub_100002BE4(a1, a2, &v9[*(v22 + 44)]);
  sub_100003C64(&qword_100021680, &qword_100021660, &qword_1000149B8);
  View.allowsSecureDrawing()();
  sub_100003A1C(v9, &qword_100021660, &qword_1000149B8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v11 + 32))(v21, v15, v10);
  v23 = &v21[*(v17 + 44)];
  v24 = v37;
  *(v23 + 4) = v36;
  *(v23 + 5) = v24;
  *(v23 + 6) = v38;
  v25 = v33;
  *v23 = v32;
  *(v23 + 1) = v25;
  v26 = v35;
  *(v23 + 2) = v34;
  *(v23 + 3) = v26;
  LOBYTE(a1) = static Edge.Set.all.getter();
  v27 = v31;
  sub_1000039AC(v21, v31);
  v28 = v27 + *(sub_10000391C(&qword_100021688, &qword_1000149D8) + 36);
  *v28 = a1;
  result = 0.0;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  return result;
}

uint64_t sub_100002BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000391C(&qword_100021690, &qword_1000149E0);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v19 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0x4024000000000000;
  v14[16] = 0;
  v15 = sub_10000391C(&qword_100021698, &qword_1000149E8);
  sub_100002D58(a1, a2, &v14[*(v15 + 44)]);
  sub_100003D04(v14, v11, &qword_100021690, &qword_1000149E0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v16 = sub_10000391C(&qword_1000216A0, &qword_1000149F0);
  sub_100003D04(v11, a3 + *(v16 + 48), &qword_100021690, &qword_1000149E0);
  v17 = a3 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_100003A1C(v14, &qword_100021690, &qword_1000149E0);
  return sub_100003A1C(v11, &qword_100021690, &qword_1000149E0);
}

uint64_t sub_100002D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = a3;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v89 = v5;
  v90 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000391C(&qword_1000216A8, &qword_1000149F8);
  v11 = *(v10 - 8);
  v87 = v10;
  v88 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v84 = &v76 - v14;
  v15 = sub_10000391C(&qword_1000216B0, &unk_100014A00);
  v16 = *(v15 - 8);
  v91 = v15 - 8;
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15 - 8, v18);
  v92 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v93 = &v76 - v22;
  v23 = sub_10000391C(&qword_1000216B8, &unk_1000152F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = &v76 - v26;
  v28 = sub_10000391C(&qword_1000216C0, &qword_100014A10);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8, v30);
  v32 = &v76 - v31;
  v97 = a1;
  v98 = a2;
  v76 = a1;
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  v33 = v96[10];
  v34 = v96[11];

  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v35 = type metadata accessor for SymbolRenderingMode();
  (*(*(v35 - 8) + 56))(v32, 0, 1, v35);
  v85 = Image.symbolRenderingMode(_:)();

  sub_100003A1C(v32, &qword_1000216C0, &qword_100014A10);
  v83 = static HierarchicalShapeStyle.secondary.getter();
  v36 = type metadata accessor for Font.Design();
  (*(*(v36 - 8) + 56))(v27, 1, 1, v36);
  v82 = static Font.system(size:weight:design:)();
  sub_100003A1C(v27, &qword_1000216B8, &unk_1000152F0);
  KeyPath = swift_getKeyPath();
  v97 = a1;
  v98 = a2;
  State.wrappedValue.getter();
  v37 = v96[4];
  v38 = v96[5];

  v97 = v37;
  v98 = v38;
  sub_100003B2C();
  v39 = Text.init<A>(_:)();
  v41 = v40;
  LOBYTE(v33) = v42;
  static Font.title.getter();
  v43 = Text.font(_:)();
  v45 = v44;
  LOBYTE(v37) = v46;

  sub_100003B80(v39, v41, v33 & 1);

  LODWORD(v97) = static HierarchicalShapeStyle.tertiary.getter();
  v47 = Text.foregroundStyle<A>(_:)();
  v77 = v48;
  v78 = v49;
  v79 = v50;
  sub_100003B80(v43, v45, v37 & 1);

  v51 = swift_allocObject();
  v52 = v76;
  *(v51 + 16) = v76;
  *(v51 + 24) = a2;
  v94 = v52;
  v95 = a2;

  sub_10000391C(&qword_1000216D8, &qword_100014A50);
  sub_100003DC0(&qword_1000216E0, &qword_1000216D8, &qword_100014A50, sub_100003BE0);
  v53 = v84;
  Button.init(action:label:)();
  v54 = v86;
  PlainButtonStyle.init()();
  sub_100003C64(&qword_1000216F8, &qword_1000216A8, &qword_1000149F8);
  sub_100003CAC();
  v55 = v93;
  v56 = v87;
  v57 = v89;
  View.buttonStyle<A>(_:)();
  (*(v90 + 8))(v54, v57);
  (*(v88 + 8))(v53, v56);
  v58 = [objc_opt_self() darkGrayColor];
  v59 = Color.init(_:)();
  LOBYTE(v57) = static Edge.Set.all.getter();
  v60 = v55 + *(sub_10000391C(&qword_100021708, &qword_100014A60) + 36);
  *v60 = v59;
  *(v60 + 8) = v57;
  v61 = (v55 + *(v91 + 44));
  v62 = *(type metadata accessor for RoundedRectangle() + 20);
  v63 = enum case for RoundedCornerStyle.continuous(_:);
  v64 = type metadata accessor for RoundedCornerStyle();
  (*(*(v64 - 8) + 104))(&v61[v62], v63, v64);
  __asm { FMOV            V0.2D, #25.0 }

  *v61 = _Q0;
  *&v61[*(sub_10000391C(&qword_100021710, &qword_100014A68) + 36)] = 256;
  v70 = v92;
  sub_100003D04(v55, v92, &qword_1000216B0, &unk_100014A00);
  v71 = v80;
  *v80 = v85;
  *(v71 + 2) = v83;
  v72 = v82;
  v71[2] = KeyPath;
  v71[3] = v72;
  v73 = v77;
  v71[4] = v47;
  v71[5] = v73;
  LOBYTE(v63) = v78 & 1;
  *(v71 + 48) = v78 & 1;
  v71[7] = v79;
  v74 = sub_10000391C(&qword_100021718, &qword_100014A70);
  sub_100003D04(v70, v71 + *(v74 + 64), &qword_1000216B0, &unk_100014A00);

  sub_100003D6C(v47, v73, v63);

  sub_100003A1C(v93, &qword_1000216B0, &unk_100014A00);
  sub_100003A1C(v70, &qword_1000216B0, &unk_100014A00);
  sub_100003B80(v47, v73, v63);
}

uint64_t sub_10000359C()
{
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  sub_100010C64();
}

uint64_t sub_1000035F4@<X0>(uint64_t a1@<X8>)
{
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  v3 = *(v42 + 64);
  v2 = *(v42 + 72);

  sub_100003B2C();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  LOBYTE(v3) = v7;
  static Font.title.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_100003B80(v4, v6, v3 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100003B80(v8, v10, v12 & 1);

  sub_10000391C(&qword_100021720, &qword_100014A78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100014910;
  v21 = static Edge.Set.top.getter();
  *(inited + 32) = v21;
  v22 = static Edge.Set.bottom.getter();
  *(inited + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v17 & 1;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_100014910;
  v34 = static Edge.Set.leading.getter();
  *(v33 + 32) = v34;
  v35 = static Edge.Set.trailing.getter();
  *(v33 + 33) = v35;
  v36 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v34)
  {
    v36 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v35)
  {
    v36 = Edge.Set.init(rawValue:)();
  }

  result = EdgeInsets.init(_all:)();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v32;
  *(a1 + 24) = v19;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27;
  *(a1 + 56) = v29;
  *(a1 + 64) = v31;
  *(a1 + 72) = 0;
  *(a1 + 80) = v36;
  *(a1 + 88) = v38;
  *(a1 + 96) = v39;
  *(a1 + 104) = v40;
  *(a1 + 112) = v41;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_10000391C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003964(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000039AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021670, &qword_1000149C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003A1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000391C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003A7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100003AA8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100003AD4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100003B00(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_100003B2C()
{
  result = qword_1000216D0;
  if (!qword_1000216D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216D0);
  }

  return result;
}

uint64_t sub_100003B80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003B90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003BD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10000359C();
}

uint64_t sub_100003BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000035F4(a1);
}

unint64_t sub_100003BE0()
{
  result = qword_1000216E8;
  if (!qword_1000216E8)
  {
    sub_100003964(&qword_1000216F0, &qword_100014A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000216E8);
  }

  return result;
}

uint64_t sub_100003C64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003964(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003CAC()
{
  result = qword_100021700;
  if (!qword_100021700)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021700);
  }

  return result;
}

uint64_t sub_100003D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000391C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003D6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003964(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003E44()
{
  result = qword_100021730;
  if (!qword_100021730)
  {
    sub_100003964(&qword_100021670, &qword_1000149C8);
    sub_100003964(&qword_100021660, &qword_1000149B8);
    sub_100003C64(&qword_100021680, &qword_100021660, &qword_1000149B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021730);
  }

  return result;
}

id sub_100003F74()
{
  type metadata accessor for ScreenContinuityShellBundleMarkerClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100022218 = result;
  return result;
}

void sub_100003FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a3;
  sub_10000391C(&qword_1000217D8, &qword_100014B50);
  State.wrappedValue.getter();
  swift_getKeyPath();
  v6[0] = v5;
  sub_1000042B8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v5 + 16, v6);
  sub_100004374(v6, v6[3]);
  v3 = dispatch thunk of MicaAnimationPrimitives.packageLayer.getter();

  sub_1000043B8(v6);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of CAPackageViewLayer.packageLayer.setter();
  }
}

uint64_t sub_100004104()
{
  sub_10000391C(&qword_1000217D8, &qword_100014B50);
  State.wrappedValue.getter();
  sub_10000F3E0();
}

uint64_t sub_10000415C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for CAPackageViewLayer();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  _CALayerView.init(type:onUpdate:)();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = (a1 + *(sub_10000391C(&qword_1000217D0, &qword_100014B48) + 36));
  *v7 = sub_1000042A8;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;
}

uint64_t sub_100004268()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000042A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100004104();
}

unint64_t sub_1000042B8()
{
  result = qword_1000217E0;
  if (!qword_1000217E0)
  {
    type metadata accessor for MicaAnimationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217E0);
  }

  return result;
}

uint64_t sub_100004310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100004374(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000043B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100004408()
{
  result = qword_1000217E8;
  if (!qword_1000217E8)
  {
    sub_100003964(&qword_1000217D0, &qword_100014B48);
    sub_100004494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217E8);
  }

  return result;
}

unint64_t sub_100004494()
{
  result = qword_1000217F0;
  if (!qword_1000217F0)
  {
    sub_100003964(&qword_1000217F8, &unk_100014B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000217F0);
  }

  return result;
}

unint64_t sub_100004520@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ScreenContinuityActivity();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_100004578();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_100004578()
{
  result = qword_1000218A0;
  if (!qword_1000218A0)
  {
    type metadata accessor for ScreenContinuityActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218A0);
  }

  return result;
}

uint64_t sub_1000045E8(uint64_t a1)
{
  v2 = sub_100007E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004624(uint64_t a1)
{
  v2 = sub_100007E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004744@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100004780(uint64_t a1)
{
  v2 = sub_100007E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000047BC(uint64_t a1)
{
  v2 = sub_100007E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000483C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_10000391C(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_100004374(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v13, v8);
}

Swift::Int sub_100004970()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000049E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_100004A9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenContinuityActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100004B64()
{
  result = qword_1000218E8;
  if (!qword_1000218E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218E8);
  }

  return result;
}

unint64_t sub_100004BBC()
{
  result = qword_1000218F0;
  if (!qword_1000218F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218F0);
  }

  return result;
}

unint64_t sub_100004C14()
{
  result = qword_1000218F8;
  if (!qword_1000218F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000218F8);
  }

  return result;
}

unint64_t sub_100004C6C()
{
  result = qword_100021900;
  if (!qword_100021900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021900);
  }

  return result;
}

unint64_t sub_100004CC4()
{
  result = qword_100021908;
  if (!qword_100021908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021908);
  }

  return result;
}

unint64_t sub_100004D1C()
{
  result = qword_100021910;
  if (!qword_100021910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021910);
  }

  return result;
}

uint64_t sub_100004D70()
{
  v1[2] = v0;
  v2 = type metadata accessor for ActivityPresentationOptions();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_10000391C(&qword_100021938, &qword_100014E18) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_10000391C(&qword_100021920, &qword_100014DF8);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004F90, v13, v12);
}

uint64_t sub_100004F90()
{
  v71 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[10];
  v4 = v0[11];

  static Logger.angel.getter();
  v5._countAndFlagsBits = 0xD000000000000077;
  v5._object = 0x8000000100017830;
  v6._object = 0x80000001000178D0;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.debugMarker(_:file:line:function:)(0, v5, 37, v6);
  v7 = *(v4 + 8);
  v7(v2, v3);
  sub_10000391C(&qword_100021928, &qword_100014E00);
  v8 = static Activity.activities.getter();
  if (v8 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();

    if (v28)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9)
    {
LABEL_3:
      v10 = v0[13];
      static Logger.angel.getter();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[13];
      v15 = v0[10];
      if (!v13)
      {
LABEL_6:

        v7(v14, v15);
        goto LABEL_7;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "We already have an activity running";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v11, v12, v17, v16, 2u);

      goto LABEL_6;
    }
  }

  v29 = [objc_opt_self() mainBundle];
  v30 = [v29 bundleIdentifier];

  if (!v30)
  {
    v42 = v0[14];
    static Logger.angel.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v11, v12);
    v14 = v0[14];
    v15 = v0[10];
    if (!v43)
    {
      goto LABEL_6;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Bundle identifier is nil";
    goto LABEL_5;
  }

  v69 = v7;
  v65 = v0[9];
  v31 = v0[5];
  v32 = v0[6];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  sub_100004C14();
  sub_100004C6C();
  sub_100004CC4();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_10000391C(&qword_100021940, &qword_100014E20);
  v34 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100014910;
  v39 = v38 + v37;
  v40 = *(v35 + 104);
  v40(v39, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v34);
  v40(v39 + v36, enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:), v34);
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
  v41 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();

  v44 = v0[15];
  v45 = v0[2];
  v46 = *(v45 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity);
  *(v45 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity) = v41;

  v47 = Activity.id.getter();
  sub_100005774(v47, v48);

  static Logger.angel.getter();

  v49 = Logger.logObject.getter();
  LOBYTE(v46) = static os_log_type_t.info.getter();

  v66 = v46;
  v50 = os_log_type_enabled(v49, v46);
  v51 = v0[15];
  v67 = v0[10];
  v68 = v0[9];
  v52 = v0[7];
  v53 = v0[8];
  v54 = v0[4];
  v55 = v0[5];
  v56 = v0[3];
  if (v50)
  {
    v64 = v0[5];
    v57 = swift_slowAlloc();
    v63 = v56;
    v58 = swift_slowAlloc();
    v70 = v58;
    *v57 = 136446210;
    v59 = Activity.id.getter();
    v62 = v51;
    v61 = sub_100007624(v59, v60, &v70);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v49, v66, "Successfully requested activity with id %{public}s", v57, 0xCu);
    sub_1000043B8(v58);

    v69(v62, v67);
    (*(v54 + 8))(v64, v63);
    (*(v53 + 8))(v68, v52);
  }

  else
  {

    v69(v51, v67);
    (*(v54 + 8))(v55, v56);
    (*(v53 + 8))(v68, v52);
  }

LABEL_7:
  v19 = v0[15];
  v18 = v0[16];
  v21 = v0[13];
  v20 = v0[14];
  v22 = v0[12];
  v23 = v0[9];
  v25 = v0[5];
  v24 = v0[6];

  v26 = v0[1];

  return v26();
}

void sub_100005774(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  sub_10000626C(a1, a2);
  v9 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer;
  [*(v3 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer) invalidate];
  v10 = *(v3 + v9);
  *(v3 + v9) = 0;

  sub_100006B28(a1, a2);
}

uint64_t sub_100005994()
{
  v1[3] = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(sub_10000391C(&qword_100021918, &qword_100014DF0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v10;
  v1[14] = v9;

  return _swift_task_switch(sub_100005B28, v10, v9);
}

uint64_t sub_100005B28()
{
  v43 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];
  static Logger.angel.getter();
  v5._countAndFlagsBits = 0xD000000000000077;
  v5._object = 0x8000000100017830;
  v6._object = 0x80000001000178B0;
  v6._countAndFlagsBits = 0xD000000000000015;
  Logger.debugMarker(_:file:line:function:)(0, v5, 89, v6);
  v7 = *(v3 + 8);
  v7(v1, v2);
  v8 = *(v4 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity);
  v0[15] = v8;
  if (v8)
  {
    v9 = v0[10];

    static Logger.angel.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    v14 = v0[8];
    if (v12)
    {
      v40 = v0[10];
      v15 = swift_slowAlloc();
      v39 = v14;
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 136446210;
      v0[2] = v8;

      sub_10000391C(&qword_100021928, &qword_100014E00);
      v17 = String.init<A>(describing:)();
      v19 = sub_100007624(v17, v18, &v42);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Ending activity %{public}s", v15, 0xCu);
      sub_1000043B8(v16);

      v21 = v39;
      v20 = v40;
    }

    else
    {

      v20 = v13;
      v21 = v14;
    }

    v7(v20, v21);
    v30 = v0[6];
    v29 = v0[7];
    v31 = v0[3];
    sub_1000060F8();
    v32 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer;
    [*(v31 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer) invalidate];
    v33 = *(v31 + v32);
    *(v31 + v32) = 0;

    dispatch thunk of Activity.content.getter();
    v34 = sub_10000391C(&qword_100021920, &qword_100014DF8);
    (*(*(v34 - 8) + 56))(v29, 0, 1, v34);
    static ActivityUIDismissalPolicy.immediate.getter();
    v35 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
    v41 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v36 = swift_task_alloc();
    v0[16] = v36;
    *v36 = v0;
    v36[1] = sub_100005EB0;
    v37 = v0[6];
    v38 = v0[7];

    return v41(v38, v37);
  }

  else
  {
    v22 = v0[12];

    v24 = v0[10];
    v23 = v0[11];
    v26 = v0[6];
    v25 = v0[7];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100005EB0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_100003A1C(v3, &qword_100021918, &qword_100014DF0);
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);

  return _swift_task_switch(sub_100006060, v8, v7);
}

uint64_t sub_100006060()
{
  v1 = v0[15];
  v2 = v0[12];

  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000060F8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion;
  v9 = *(v0 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion);
  if (v9)
  {
    v10 = v9;
    [v10 invalidate];
    v11 = *(v0 + v8);
    *(v0 + v8) = 0;

    static Logger.angel.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Assertion Released", v14, 2u);
    }

    return (*(v2 + 8))(v7, v1);
  }

  return result;
}

void sub_10000626C(uint64_t a1, unint64_t a2)
{
  v93 = a2;
  v95 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v80 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v80 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v80 - v20;
  v22 = type metadata accessor for ActivityState();
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22, v24);
  v27 = __chkstk_darwin(v25, v26);
  v31 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion;
  if (*(v2 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion))
  {
    static Logger.angel.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "We already have an assertion running", v34, 2u);
    }

    (*(v5 + 8))(v10, v4);
    sub_100007DBC();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    return;
  }

  v85 = &v80 - v28;
  v86 = v30;
  v83 = v21;
  v84 = v29;
  v88 = v14;
  v89 = v18;
  v90 = v3;
  v91 = v5;
  v92 = v4;
  v87 = v27;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v38 = v93;
  v39 = v95;
  v40 = v37;
  v37[2] = v36;
  v37[3] = v39;
  v37[4] = v38;
  v41 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100007DB0;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007598;
  aBlock[3] = &unk_10001D438;
  v44 = _Block_copy(aBlock);

  v45 = [v41 initWithExplanation:v42 sessionIdentifier:v43 duration:v44 invalidationHandler:5.0];
  _Block_release(v44);

  if ([v45 state] == 1)
  {
    v46 = *(v2 + v31);
    *(v2 + v31) = v45;
    v47 = v45;

    v48 = v88;
    static Logger.angel.getter();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_100007624(v95, v38, aBlock);
      _os_log_impl(&_mh_execute_header, v49, v50, "Assertion acquired [id: %{public}s]", v51, 0xCu);
      sub_1000043B8(v52);
    }

    else
    {
    }

    (*(v91 + 8))(v48, v92);
    return;
  }

  v53 = v89;
  if (!*(v2 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity))
  {
    goto LABEL_20;
  }

  v81 = OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_activity;
  v82 = v2;
  v88 = v45;

  if (Activity.id.getter() == v95 && v54 == v93)
  {

LABEL_15:
    v56 = v85;
    dispatch thunk of Activity.activityState.getter();
    v57 = v84;
    v58 = *(v84 + 104);
    v60 = v86;
    v59 = v87;
    v58(v86, enum case for ActivityState.dismissed(_:), v87);
    v61 = static ActivityState.== infix(_:_:)();
    v62 = *(v57 + 8);
    v62(v60, v59);
    v62(v56, v59);
    if (v61)
    {
      goto LABEL_17;
    }

    v63 = v85;
    dispatch thunk of Activity.activityState.getter();
    v65 = v86;
    v64 = v87;
    v58(v86, enum case for ActivityState.ended(_:), v87);
    v66 = static ActivityState.== infix(_:_:)();
    v62(v65, v64);
    v62(v63, v64);
    if (v66)
    {
LABEL_17:
      v67 = v83;
      static Logger.angel.getter();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Assertion acquisition failed due to activity having already ended", v70, 2u);
      }

      else
      {
      }

      v78 = v82;
      (*(v91 + 8))(v67, v92);
      v79 = *(v78 + v81);
      *(v78 + v81) = 0;

      return;
    }

    goto LABEL_19;
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v55)
  {
    goto LABEL_15;
  }

LABEL_19:

  v45 = v88;
  v53 = v89;
LABEL_20:
  static Logger.angel.getter();
  v71 = v93;

  v72 = v45;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v75 = 136446466;
    *(v75 + 4) = sub_100007624(v95, v71, aBlock);
    *(v75 + 12) = 2050;
    *(v75 + 14) = [v72 state];

    _os_log_impl(&_mh_execute_header, v73, v74, "Acquire assertion failed [id:%{public}s, \nstate: %{public}lu]", v75, 0x16u);
    sub_1000043B8(v76);
  }

  else
  {
  }

  (*(v91 + 8))(v53, v92);
  sub_100007DBC();
  swift_allocError();
  *v77 = 2;
  swift_willThrow();
}

void sub_100006B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v47 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v43 - v19;
  __chkstk_darwin(v18, v21);
  v23 = &v43 - v22;
  Date.init()();
  v24 = (sub_100007C2C(0xBB9uLL) + 600);
  v48 = v23;
  Date.addingTimeInterval(_:)();
  static Logger.angel.getter();
  v25 = v11[2];
  v49 = v20;
  v25(v16, v20, v10);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v26, v27))
  {

    v36 = v11[1];
    v36(v16, v10);
    (*(v5 + 8))(v9, v4);
    v35 = v50;
    v34 = v47;
    goto LABEL_6;
  }

  v44 = v5;
  v45 = v4;
  v46 = v3;
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  aBlock[0] = v29;
  *v28 = 136315394;
  sub_100007D18();
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  v43 = v11[1];
  v43(v16, v10);
  v33 = sub_100007624(v30, v32, aBlock);

  *(v28 + 4) = v33;
  *(v28 + 12) = 2048;
  if (v24 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v24 < 9.22337204e18)
  {
    *(v28 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v26, v27, "Next scheduled prominent assertion at %s, in %ld seconds.", v28, 0x16u);
    sub_1000043B8(v29);

    (*(v44 + 8))(v9, v45);
    v3 = v46;
    v34 = v47;
    v35 = v50;
    v36 = v43;
LABEL_6:
    v37 = objc_opt_self();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = v34;
    v39[4] = v35;
    aBlock[4] = sub_100007CF4;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000704C;
    aBlock[3] = &unk_10001D3E8;
    v40 = _Block_copy(aBlock);

    v41 = [v37 scheduledTimerWithTimeInterval:0 repeats:v40 block:v24];
    _Block_release(v40);
    v36(v49, v10);
    v36(v48, v10);
    v42 = *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer);
    *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_assertionSchedulerTimer) = v41;

    return;
  }

  __break(1u);
}

void sub_100006FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100005774(a3, a4);
  }
}

void sub_10000704C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1000070B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v28 = a4;
    static Logger.angel.getter();
    v17 = a1;

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v27 = v9;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v20 = 136446978;
      *(v20 + 4) = sub_100007624(v28, a5, &v29);
      *(v20 + 12) = 2050;
      *(v20 + 14) = [v17 state];
      *(v20 + 22) = 2050;
      *(v20 + 24) = [v17 invalidationReason];

      *(v20 + 32) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v20 + 34) = v22;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Assertion invalidated [id: %{public}s, \nstate: %{public}lu, \ninvalidationReason: %{public}lu, \nerror: %@],", v20, 0x2Au);
      sub_100003A1C(v21, &qword_100021948, &qword_100014E28);

      sub_1000043B8(v26);

      (*(v10 + 8))(v14, v27);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    v24 = *&v16[OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion];
    *&v16[OBJC_IVAR____TtC21ScreenContinuityShell24ScreenContinuityActivity_prominenceAssertion] = 0;
  }
}

uint64_t sub_100007384()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007414;

  return sub_100004D70();
}

uint64_t sub_100007414()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007508()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008214;

  return sub_100005994();
}

void sub_100007598(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_100007624(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000076F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007BCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000043B8(v11);
  return v7;
}

unint64_t sub_1000076F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000077FC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000077FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007848(a1, a2);
  sub_100007978(&off_10001D050);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100007848(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007A64(v5, 0);
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
        v7 = sub_100007A64(v10, 0);
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

uint64_t sub_100007978(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100007AD8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100007A64(uint64_t a1, uint64_t a2)
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

  sub_10000391C(&qword_100021930, &qword_100014E08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007AD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000391C(&qword_100021930, &qword_100014E08);
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

uint64_t sub_100007BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100007C2C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007CB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007D18()
{
  result = qword_100021950;
  if (!qword_100021950)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021950);
  }

  return result;
}

uint64_t sub_100007D70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100007DBC()
{
  result = qword_100021958;
  if (!qword_100021958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021958);
  }

  return result;
}

unint64_t sub_100007E10()
{
  result = qword_100021968;
  if (!qword_100021968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021968);
  }

  return result;
}

unint64_t sub_100007E64()
{
  result = qword_100021978;
  if (!qword_100021978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021978);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenContinuityActivity.ProminenceAssertionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenContinuityActivity.ProminenceAssertionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008058()
{
  result = qword_100021980;
  if (!qword_100021980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021980);
  }

  return result;
}

unint64_t sub_1000080B0()
{
  result = qword_100021988;
  if (!qword_100021988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021988);
  }

  return result;
}

unint64_t sub_100008108()
{
  result = qword_100021990;
  if (!qword_100021990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021990);
  }

  return result;
}

unint64_t sub_100008160()
{
  result = qword_100021998;
  if (!qword_100021998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021998);
  }

  return result;
}

unint64_t sub_1000081B8()
{
  result = qword_1000219A0;
  if (!qword_1000219A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000219A0);
  }

  return result;
}

id sub_100008374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000083DC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIHostingControllerSizingOptions();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v14 = objc_allocWithZone(sub_10000391C(&qword_100021A58, &qword_1000150B0));
  v66 = a3;
  v67 = a4;
  v68 = a1;
  v69 = a2;

  v15 = UIHostingController.init(rootView:)();
  sub_10000391C(&qword_100021A60, &qword_1000150B8);
  v16 = *(v11 + 72);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100015060;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v66 = *&v18;
  sub_100009694();
  sub_10000391C(&qword_100021A70, &qword_1000150C0);
  sub_1000096EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v5[qword_100021FB0] = v15;
  v19 = v15;
  v65.receiver = v5;
  v65.super_class = sub_10000391C(&qword_100021A40, &qword_100015098);
  v20 = objc_msgSendSuper2(&v65, "initWithNibName:bundle:", 0, 0);
  v21 = [v20 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = qword_100021FB0;
  v24 = [*&v20[qword_100021FB0] view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  [v22 addSubview:v24];

  [v20 addChildViewController:*&v20[v23]];
  v26 = [v20 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v28 clearColor];
  [v27 setBackgroundColor:v29];

  v30 = v19;
  v31 = [v30 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v28 clearColor];
  [v32 setBackgroundColor:v33];

  v34 = [v30 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000391C(&qword_100021A80, &qword_1000150C8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100015070;
  v37 = [v30 view];
  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v20 view];
  if (!v40)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v36 + 32) = v43;
  v44 = [v30 view];
  if (!v44)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = [v20 view];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = v47;
  v49 = [v47 leadingAnchor];

  v50 = [v46 constraintEqualToAnchor:v49];
  *(v36 + 40) = v50;
  v51 = [v30 view];
  if (!v51)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v51;
  v53 = [v51 trailingAnchor];

  v54 = [v20 view];
  if (!v54)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v55 = v54;
  v56 = [v54 trailingAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  *(v36 + 48) = v57;
  v58 = [v30 view];

  if (!v58)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v59 = [v58 bottomAnchor];

  v60 = [v20 view];
  if (v60)
  {

    v61 = objc_opt_self();

    v62 = [v60 bottomAnchor];

    v63 = [v59 constraintEqualToAnchor:v62];
    *(v36 + 56) = v63;
    sub_100009750();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v61 activateConstraints:isa];

    return;
  }

LABEL_27:
  __break(1u);
}

void *sub_100008A6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v31[3] = type metadata accessor for LSAppWorkspaceBackedApplicationLaunchPrimitives();
  v31[4] = &protocol witness table for LSAppWorkspaceBackedApplicationLaunchPrimitives;
  v31[0] = a3;
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_100021570 != -1)
  {
    swift_once();
  }

  v14 = qword_100022218;
  static Locale.current.getter();
  v15 = v14;
  a4[6] = String.init(localized:table:bundle:locale:comment:)();
  a4[7] = v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  a4[8] = String.init(localized:table:bundle:locale:comment:)();
  a4[9] = v17;
  a4[10] = 0xD00000000000001BLL;
  a4[11] = 0x8000000100017B90;
  ObservationRegistrar.init()();
  a4[12] = a1;
  a4[13] = a2;
  sub_100004310(v31, (a4 + 14));
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = dispatch thunk of LiveActivityDelegate.clientName.getter();
  a4[2] = v18;
  a4[3] = v19;
  if (v19)
  {
    v20 = v18;
    v21 = v19;

    v32._object = 0x8000000100017C50;
    v22._object = 0x8000000100017C20;
    v32._countAndFlagsBits = 0xD00000000000001CLL;
    v22._countAndFlagsBits = 0x1000000000000028;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v15, v23, v32);
    sub_10000391C(&qword_100021A90, &qword_1000150D0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100015060;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_10000979C();
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    v25 = static String.localizedStringWithFormat(_:_:)();
    v27 = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v28 = v15;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    v27 = v29;
    swift_unknownObjectRelease();
  }

  sub_1000043B8(v31);
  a4[4] = v25;
  a4[5] = v27;
  return a4;
}

void sub_100008E10(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v98 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v98 - v18;
  static Logger.angel.getter();
  v20._countAndFlagsBits = 0xD000000000000079;
  v20._object = 0x8000000100017A30;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v21._object = 0x8000000100017AB0;
  Logger.debugMarker(_:file:line:function:)(0, v20, 18, v21);
  v22 = *(v7 + 8);
  v22(v19, v6);
  type metadata accessor for ActivityScene();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v101 = v16;
    v102 = v22;
    type metadata accessor for AngelServer();
    v25 = a1;
    v26 = static AngelServer.sharedInstance.getter();
    v27 = AngelServer.liveActivityDelegate.getter();
    v29 = v28;

    v30 = [objc_allocWithZone(type metadata accessor for ActivitySecureWindow()) initWithWindowScene:v24];
    v31 = *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC21ScreenContinuityShell21ActivitySceneDelegate_window) = v30;
    v104 = v30;

    v32 = type metadata accessor for LSAppWorkspaceBackedApplicationLaunchPrimitives();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = LSAppWorkspaceBackedApplicationLaunchPrimitives.init()();
    v36 = type metadata accessor for LiveActivityViewModel();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    swift_unknownObjectRetain();

    v105 = v27;
    v103 = v35;
    v106 = sub_100008A6C(v27, v29, v35, v39);
    v100 = a2;
    v40 = [a2 role];
    v41 = static UISceneSessionRole.activityAmbient.getter();
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
    {
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v49 & 1) == 0)
      {
        v99 = v25;
        v58 = v40;
        v59 = static UISceneSessionRole.activityAmbientCompact.getter();
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
        if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
        {
        }

        else
        {
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v64 & 1) == 0)
          {
            v66 = v58;
            v67 = static UISceneSessionRole.activityListItem.getter();
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;
            if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
            {
            }

            else
            {
              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v72 & 1) == 0)
              {
LABEL_23:
                static Logger.angel.getter();
                v90 = v100;
                v91 = Logger.logObject.getter();
                v92 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v91, v92))
                {
                  v93 = swift_slowAlloc();
                  v94 = swift_slowAlloc();
                  v107 = v94;
                  *v93 = 136446210;
                  v109 = [v90 role];
                  type metadata accessor for Role(0);
                  v95 = String.init<A>(describing:)();
                  v97 = sub_100007624(v95, v96, &v107);

                  *(v93 + 4) = v97;
                  _os_log_impl(&_mh_execute_header, v91, v92, "Session role %{public}s not supported", v93, 0xCu);
                  sub_1000043B8(v94);
                }

                v102(v101, v6);
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                return;
              }
            }

            v57 = v104;
            v73 = v104;
            [v73 frame];
            Width = CGRectGetWidth(v110);
            [v73 frame];
            v76 = v75;
            v78 = v77;
            v80 = v79;
            v82 = v81;

            v111.origin.x = v76;
            v111.origin.y = v78;
            v111.size.width = v80;
            v111.size.height = v82;
            Height = CGRectGetHeight(v111);
            v84 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
            ActivitySceneMetrics.init(size:cornerRadius:)();
            dispatch thunk of ActivityScene.resolvedMetrics.setter();
            v85 = [objc_opt_self() clearColor];
            dispatch thunk of ActivityScene.backgroundTintColor.setter();
            v109 = v106;

            State.init(wrappedValue:)();
            v86 = v107;
            v87 = v108;
            v88 = objc_allocWithZone(sub_10000391C(&qword_100021A40, &qword_100015098));
            sub_1000083DC(v86, v87, Width, Height);
            v53 = v89;
            v25 = v99;
            goto LABEL_21;
          }
        }

        v65 = objc_allocWithZone(sub_10000391C(&qword_100021A48, &qword_1000150A0));
        v53 = UIHostingController.init(rootView:)();
        v25 = v99;
        v57 = v104;
        goto LABEL_21;
      }
    }

    v6 = v106;
    v109 = v106;

    State.init(wrappedValue:)();
    v50 = v107;
    v51 = v108;
    v52 = objc_allocWithZone(sub_10000391C(&qword_100021A50, &qword_1000150A8));
    v107 = v50;
    v108 = v51;
    v53 = UIHostingController.init(rootView:)();
    v54 = [v53 view];
    if (v54)
    {
      v55 = v54;

      v56 = [objc_opt_self() blackColor];
      [v55 setBackgroundColor:v56];

      v57 = v104;
LABEL_21:
      [v57 setRootViewController:v53];
      [v57 makeKeyAndVisible];

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  static Logger.angel.getter();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "ActivityScene is missing", v48, 2u);
  }

  v22(v12, v6);
}

unint64_t sub_100009694()
{
  result = qword_100021A68;
  if (!qword_100021A68)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A68);
  }

  return result;
}

unint64_t sub_1000096EC()
{
  result = qword_100021A78;
  if (!qword_100021A78)
  {
    sub_100003964(&qword_100021A70, &qword_1000150C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A78);
  }

  return result;
}

unint64_t sub_100009750()
{
  result = qword_100021A88;
  if (!qword_100021A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021A88);
  }

  return result;
}

unint64_t sub_10000979C()
{
  result = qword_100021A98;
  if (!qword_100021A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021A98);
  }

  return result;
}

uint64_t sub_1000097F0()
{
  v0 = sub_10000391C(&qword_100021B60, &qword_1000150D8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for URL();
  sub_100009920(v5, qword_100022220);
  v6 = sub_100009984(v5, qword_100022220);
  URL.init(string:)();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t *sub_100009920(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100009984(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000099E8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_10000391C(&qword_100021B68, &qword_100015148);
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v33, v3);
  v5 = &v32 - v4;
  v6 = sub_10000391C(&qword_100021B70, &qword_100015150);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v32 - v9;
  v11 = static VerticalAlignment.center.getter();
  if (qword_100021570 != -1)
  {
    swift_once();
  }

  v12 = qword_100022218;
  v13 = type metadata accessor for CABackedMicaAnimationPrimitives();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v12;
  v17 = CABackedMicaAnimationPrimitives.init(packageName:bundle:)();
  *&v37[8] = v13;
  *&v37[16] = &protocol witness table for CABackedMicaAnimationPrimitives;
  *&v36 = v17;
  v18 = type metadata accessor for MicaAnimationModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  ObservationRegistrar.init()();
  sub_100009D4C(&v36, v21 + 16);
  v35 = v21;
  State.init(wrappedValue:)();
  v22 = v36;
  v36 = v11;
  v37[0] = 1;
  *&v37[8] = v22;
  sub_10000391C(&qword_100021B78, &qword_100015158);
  sub_100003C64(&qword_100021B80, &qword_100021B78, &qword_100015158);
  View.allowsSecureDrawing()();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v1 + 32))(v10, v5, v33);
  v23 = &v10[*(v6 + 36)];
  v24 = v40;
  *(v23 + 4) = v39;
  *(v23 + 5) = v24;
  *(v23 + 6) = v41;
  v25 = *v37;
  *v23 = v36;
  *(v23 + 1) = v25;
  v26 = v38;
  *(v23 + 2) = *&v37[16];
  *(v23 + 3) = v26;
  v27 = sub_10000391C(&qword_100021B88, &qword_100015160);
  v28 = v34;
  v29 = v34 + *(v27 + 36);
  static Material.thin.getter();
  v30 = static Edge.Set.all.getter();
  *(v29 + *(sub_10000391C(&qword_100021B90, &qword_100015168) + 36)) = v30;
  return sub_100009D64(v10, v28);
}

uint64_t sub_100009D4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100009D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021B70, &qword_100015150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009DD8()
{
  result = qword_100021B98;
  if (!qword_100021B98)
  {
    sub_100003964(&qword_100021B88, &qword_100015160);
    sub_100009E90();
    sub_100003C64(&qword_100021BA8, &qword_100021B90, &qword_100015168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B98);
  }

  return result;
}

unint64_t sub_100009E90()
{
  result = qword_100021BA0;
  if (!qword_100021BA0)
  {
    sub_100003964(&qword_100021B70, &qword_100015150);
    sub_100003964(&qword_100021B78, &qword_100015158);
    sub_100003C64(&qword_100021B80, &qword_100021B78, &qword_100015158);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BA0);
  }

  return result;
}

id sub_100009FC4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v17 = OBJC_IVAR____TtC21ScreenContinuityShell11AppDelegate_xpcEventQueue;
  sub_10000CC8C(0, &qword_100021D20, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10000CD38(&qword_100021D28, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000391C(&qword_100021D30, &qword_100015208);
  sub_10000CCD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v18;
  *&v18[v17] = v12;
  v14 = type metadata accessor for AppDelegate();
  v19.receiver = v13;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t sub_10000A284(void *a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v59 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v63 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v59 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v59 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v59 - v24;
  v26 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v26))
  {
    v61 = a2;
    v27 = String.init(cString:)();
    v29 = v28;
    static Logger.angel.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v32 = os_log_type_enabled(v30, v31);
    v62 = a1;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60 = v8;
      v35 = v10;
      v36 = v9;
      v37 = v34;
      v64 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100007624(v27, v29, &v64);
      _os_log_impl(&_mh_execute_header, v30, v31, "Received %s event from rapport", v33, 0xCu);
      sub_1000043B8(v37);
      v9 = v36;
      v10 = v35;
      v8 = v60;
    }

    v38 = *(v10 + 8);
    v38(v22, v9);
    if (v27 == 0x7265536C6C656853 && v29 == 0xEB00000000726576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static Logger.angel.getter();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v63 = v38;
        v42 = v41;
        v43 = v9;
        v44 = swift_slowAlloc();
        v64 = v44;
        *v42 = 136446210;
        *(v42 + 4) = sub_100007624(0x7265536C6C656853, 0xEB00000000726576, &v64);
        _os_log_impl(&_mh_execute_header, v39, v40, "Received %{public}s event from rapport, starting session bootstrap", v42, 0xCu);
        sub_1000043B8(v44);

        v63(v18, v43);
      }

      else
      {

        v38(v18, v9);
      }

      static TaskPriority.userInitiated.getter();
      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v8, 0, 1, v49);
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      v51[2] = 0;
      v51[3] = 0;
      v51[4] = v50;
      v51[5] = v62;
      swift_unknownObjectRetain();
      sub_10000B618(0, 0, v8, &unk_1000151E8, v51);

      return sub_10000CA0C(v8);
    }

    else
    {
      static Logger.angel.getter();

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = v38;
        v55 = swift_slowAlloc();
        v56 = v9;
        v57 = swift_slowAlloc();
        v64 = v57;
        *v55 = 136446210;
        v58 = sub_100007624(v27, v29, &v64);

        *(v55 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s is unknown, ignoring and replying if needed", v55, 0xCu);
        sub_1000043B8(v57);

        v54(v63, v56);
      }

      else
      {

        v38(v63, v9);
      }

      return sub_10000A924(v62);
    }
  }

  else
  {
    static Logger.angel.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unable to parse XPC event name, event malformed, returning without replying", v47, 2u);

      return (*(v10 + 8))(v25, v9);
    }

    else
    {

      return (*(v10 + 8))(v25, v9);
    }
  }
}

uint64_t sub_10000A924(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_BOOL(a1, "replyRequired");
  if (result)
  {
    if (xpc_dictionary_create_reply(a1))
    {
      xpc_dictionary_send_reply();

      return swift_unknownObjectRelease();
    }

    else
    {
      static Logger.angel.getter();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to create reply, a RunningBoardAssertion has probably leaked", v11, 2u);
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_10000AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_10000AB88, 0, 0);
}

uint64_t sub_10000AB88()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v3 = v0[17];
  if (Strong)
  {
    v4 = v0[17];
    static Logger.angel.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting Bootstrap", v7, 2u);
    }

    v8 = v0[17];
    v9 = v0[13];
    v10 = v0[14];

    v11 = *(v10 + 8);
    v0[19] = v11;
    v11(v8, v9);
    v0[20] = type metadata accessor for AngelServer();
    v0[21] = type metadata accessor for MainActor();
    v0[22] = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000AD48, v13, v12);
  }

  else
  {
    v15 = v0[15];
    v14 = v0[16];
    v16 = v0[17];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10000AD48()
{
  v1 = v0[22];
  v2 = v0[20];

  v0[23] = static AngelServer.sharedInstance.getter();

  return _swift_task_switch(sub_10000ADBC, 0, 0);
}

uint64_t sub_10000ADBC()
{
  v1 = v0[21];
  v2 = type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistrationVendor();
  v3 = swift_allocObject();
  v0[5] = v2;
  v0[6] = sub_10000CD38(&qword_100021D10, type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistrationVendor);
  v0[2] = v3;
  v0[24] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000AEAC, v5, v4);
}

uint64_t sub_10000AEAC()
{
  v2 = v0[23];
  v1 = v0[24];

  AngelServer.provideDisplayRegistrarVendorIfNeeded(_:)();
  sub_1000043B8(v0 + 2);
  v3 = async function pointer to AngelServer.bootstrapSession()[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10000AF58;
  v5 = v0[23];

  return AngelServer.bootstrapSession()();
}

uint64_t sub_10000AF58()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_10000B1AC;
  }

  else
  {
    v3 = sub_10000B06C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B06C()
{
  v1 = v0[16];
  static Logger.angel.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Bootstrap complete, replying to Rapport", v4, 2u);
  }

  v5 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];

  v6(v8, v9);
  sub_10000A924(v11);

  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000B1AC()
{
  v24 = v0;
  v1 = v0[26];
  v2 = v0[15];
  static Logger.angel.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v22 = v0[19];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    v0[10] = v5;
    swift_errorRetain();
    sub_10000391C(&qword_100021D18, &qword_100015200);
    v11 = String.init<A>(describing:)();
    v13 = sub_100007624(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to bootstrap session, tearing down session: %{public}s", v9, 0xCu);
    sub_1000043B8(v10);

    v22(v6, v8);
  }

  else
  {
    v14 = v0[19];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[13];

    v14(v15, v17);
  }

  v18 = async function pointer to AngelServer.tearDown()[1];
  v19 = swift_task_alloc();
  v0[27] = v19;
  *v19 = v0;
  v19[1] = sub_10000B3C8;
  v20 = v0[23];

  return AngelServer.tearDown()();
}

uint64_t sub_10000B3C8()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_10000B4C4, 0, 0);
}

uint64_t sub_10000B4C4()
{
  v1 = *(v0 + 208);
  sub_10000A924(*(v0 + 96));

  v2 = *(v0 + 128);
  static Logger.angel.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Bootstrap complete, replying to Rapport", v5, 2u);
  }

  v6 = *(v0 + 184);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);

  v7(v9, v10);
  sub_10000A924(v12);

  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10000B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_10000CA74(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10000CA0C(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10000B8B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10000BAFC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10000BB58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000C034()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.angel.getter();
  v8._countAndFlagsBits = 0xD000000000000062;
  v8._object = 0x8000000100017DC0;
  v9._object = 0x8000000100017E90;
  v9._countAndFlagsBits = 0xD00000000000002DLL;
  Logger.debugMarker(_:file:line:function:)(0, v8, 71, v9);
  (*(v3 + 8))(v7, v2);
  v10 = *&v1[OBJC_IVAR____TtC21ScreenContinuityShell11AppDelegate_xpcEventQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_10000C8AC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B8B8;
  aBlock[3] = &unk_10001D598;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  xpc_set_event_stream_handler("com.apple.rapport.matching", v10, v12);
  _Block_release(v12);
  return 1;
}

id sub_10000C1F8(void *a1)
{
  v2 = [a1 role];
  v3 = String._bridgeToObjectiveC()();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v4 == v7 && v6 == v9)
  {

LABEL_10:
    v14 = [a1 configuration];
    [v14 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CC8C(0, &qword_100021C90, UISceneConfiguration_ptr);
    if (swift_dynamicCast())
    {
      sub_10000CC8C(0, &qword_100021C98, UIWindowScene_ptr);
      [v15 setSceneClass:swift_getObjCClassFromMetadata()];
      type metadata accessor for DragAndDropSceneDelegate();
      [v15 setDelegateClass:swift_getObjCClassFromMetadata()];
      return v15;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = [a1 configuration];

  return v12;
}

uint64_t sub_10000C450(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v39 - v12;
  __chkstk_darwin(v11, v14);
  v16 = &v39 - v15;
  static Logger.dnd.getter();
  v17._countAndFlagsBits = 0xD000000000000062;
  v17._object = 0x8000000100017DC0;
  v18._object = 0x8000000100017AB0;
  v18._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.debugMarker(_:file:line:function:)(0, v17, 151, v18);
  v41 = *(v5 + 8);
  v41(v16, v4);
  v19 = [a2 role];
  v20 = String._bridgeToObjectiveC()();
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v21 == v24 && v23 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      return result;
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v29 = a1;
    static Logger.dnd.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Drag-and-drop shield window scene connected", v32, 2u);
    }

    v41(v13, v4);
    type metadata accessor for AngelServer();
    v33 = static AngelServer.sharedInstance.getter();
    AngelServer.dragAndDropShieldWindowSceneContainer.getter();

    dispatch thunk of DragAndDropSceneContainer.populate(with:)();
  }

  else
  {
    v34 = v40;
    static Logger.dnd.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100007624(0x646E615F67617264, 0xED0000706F72645FLL, &v42);
      _os_log_impl(&_mh_execute_header, v35, v36, "Scene with role %s not of class UIWindowScene. Drag and drop will not work.", v37, 0xCu);
      sub_1000043B8(v38);
    }

    return (v41)(v34, v4);
  }
}

uint64_t sub_10000C874()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C8CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C904()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C94C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007414;

  return sub_10000AAB0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000CA0C(uint64_t a1)
{
  v2 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CAE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CB1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008214;

  return sub_1000118C8(a1, v5);
}

uint64_t sub_10000CBD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007414;

  return sub_1000118C8(a1, v5);
}

uint64_t sub_10000CC8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10000CCD4()
{
  result = qword_100021D38;
  if (!qword_100021D38)
  {
    sub_100003964(&qword_100021D30, &qword_100015208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D38);
  }

  return result;
}

uint64_t sub_10000CD38(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10000CD84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000CD90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000CDD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000CE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v58 = a3;
  v52 = type metadata accessor for RoundedRectangle();
  v9 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52, v10);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Glass();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  __chkstk_darwin(v13, v15);
  v44 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10000391C(&qword_100021D50, &qword_1000152A8);
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  __chkstk_darwin(v17, v19);
  v45 = &v42[-v20];
  v53 = sub_10000391C(&qword_100021D58, &qword_1000152B0);
  v21 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53, v22);
  v46 = &v42[-v23];
  v24 = sub_10000391C(&qword_100021D60, &qword_1000152B8);
  v54 = *(v24 - 8);
  v55 = v24;
  v25 = *(v54 + 64);
  __chkstk_darwin(v24, v26);
  v51 = &v42[-v27];
  v43 = static VerticalAlignment.center.getter();
  LOBYTE(v64) = 1;
  v56 = a2;
  v57 = a1;
  sub_10000D6E4(a1, a2, v60);
  v83 = v60[12];
  v84 = v60[13];
  v79 = v60[8];
  v80 = v60[9];
  v81 = v60[10];
  v82 = v60[11];
  v75 = v60[4];
  v76 = v60[5];
  v77 = v60[6];
  v78 = v60[7];
  v71 = v60[0];
  v72 = v60[1];
  v73 = v60[2];
  v74 = v60[3];
  v86[12] = v60[12];
  v86[13] = v60[13];
  v86[8] = v60[8];
  v86[9] = v60[9];
  v86[10] = v60[10];
  v86[11] = v60[11];
  v86[4] = v60[4];
  v86[5] = v60[5];
  v86[6] = v60[6];
  v86[7] = v60[7];
  v86[0] = v60[0];
  v86[1] = v60[1];
  v85 = v60[14];
  v87 = v60[14];
  v86[2] = v60[2];
  v86[3] = v60[3];
  sub_100003D04(&v71, v59, &qword_100021D68, &qword_1000152C0);
  sub_100003A1C(v86, &qword_100021D68, &qword_1000152C0);
  *&v61[183] = v82;
  *&v61[199] = v83;
  *&v61[215] = v84;
  *&v61[119] = v78;
  *&v61[135] = v79;
  *&v61[151] = v80;
  *&v61[167] = v81;
  *&v61[55] = v74;
  *&v61[71] = v75;
  *&v61[87] = v76;
  *&v61[103] = v77;
  *&v61[7] = v71;
  *&v61[23] = v72;
  v61[231] = v85;
  *&v61[39] = v73;
  v28 = v64;
  LOBYTE(a1) = static Edge.Set.all.getter();
  v62 = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v63[55] = v67;
  *&v63[71] = v68;
  *&v63[87] = v69;
  *&v63[103] = v70;
  *&v63[7] = v64;
  *&v63[23] = v65;
  *&v63[39] = v66;
  *(&v59[24] + 1) = *&v61[176];
  *(&v59[26] + 1) = *&v61[192];
  *(&v59[28] + 1) = *&v61[208];
  *(&v59[16] + 1) = *&v61[112];
  *(&v59[18] + 1) = *&v61[128];
  *(&v59[20] + 1) = *&v61[144];
  *(&v59[22] + 1) = *&v61[160];
  *(&v59[8] + 1) = *&v61[48];
  *(&v59[10] + 1) = *&v61[64];
  *(&v59[12] + 1) = *&v61[80];
  *(&v59[14] + 1) = *&v61[96];
  *(&v59[2] + 1) = *v61;
  v59[0] = v43;
  v59[1] = 0;
  LOBYTE(v59[2]) = v28;
  *(&v59[30] + 1) = *&v61[224];
  *(&v59[4] + 1) = *&v61[16];
  *(&v59[6] + 1) = *&v61[32];
  *(&v59[31] + 1) = 256;
  LOBYTE(v59[32]) = a1;
  memset(&v59[33], 0, 32);
  LOBYTE(v59[37]) = 1;
  *(&v59[45] + 1) = *&v63[64];
  *(&v59[47] + 1) = *&v63[80];
  *(&v59[49] + 1) = *&v63[96];
  *(&v59[37] + 1) = *v63;
  *(&v59[39] + 1) = *&v63[16];
  *(&v59[41] + 1) = *&v63[32];
  *(&v59[43] + 1) = *&v63[48];
  v59[51] = *(&v70 + 1);
  v29 = v44;
  static Glass.regular.getter();
  v30 = *(v52 + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(&v12[v30], v31, v32);
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_10000391C(&qword_100021D70, &qword_1000152C8);
  sub_10000E0BC();
  sub_10000E2C4();
  v33 = v45;
  View.glassEffect<A>(_:in:)();
  sub_10000E31C(v12);
  (*(v49 + 8))(v29, v50);
  memcpy(v60, v59, sizeof(v60));
  sub_100003A1C(v60, &qword_100021D70, &qword_1000152C8);
  v34 = v46;
  (*(v47 + 32))(v46, v33, v48);
  v35 = v53;
  v36 = (v34 + *(v53 + 36));
  *v36 = sub_10000E030;
  v36[1] = 0;
  v37 = sub_10000E378();
  v38 = v51;
  View.allowsSecureDrawing()();
  sub_10000E460(v34);
  v39 = swift_allocObject();
  *(v39 + 16) = a4;
  *(v39 + 24) = a5;
  *(v39 + 32) = v57;
  *(v39 + 40) = v56;

  v59[0] = v35;
  v59[1] = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v55;
  View.onTapGesture(count:perform:)();

  return (*(v54 + 8))(v38, v40);
}

uint64_t sub_10000D6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a2;
  v6 = sub_10000391C(&qword_1000216B8, &unk_1000152F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v36 - v9;
  v11 = sub_10000391C(&qword_1000216C0, &qword_100014A10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v36 - v14;
  *&v57 = a1;
  *(&v57 + 1) = a2;
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  v17 = *(v53 + 80);
  v16 = *(v53 + 88);

  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v18 = type metadata accessor for SymbolRenderingMode();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  v38 = Image.symbolRenderingMode(_:)();

  sub_100003A1C(v15, &qword_1000216C0, &qword_100014A10);
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = static Font.system(size:weight:design:)();
  sub_100003A1C(v10, &qword_1000216B8, &unk_1000152F0);
  KeyPath = swift_getKeyPath();
  v22 = static HorizontalAlignment.leading.getter();
  v39[0] = 1;
  sub_10000DBEC(v36, v37, &v57);
  v45 = *&v58[48];
  v46 = *&v58[64];
  v47 = *&v58[80];
  v48 = v58[96];
  v41 = v57;
  v42 = *v58;
  v43 = *&v58[16];
  v44 = *&v58[32];
  v49[0] = v57;
  v49[1] = *v58;
  v49[2] = *&v58[16];
  v49[3] = *&v58[32];
  v49[4] = *&v58[48];
  v49[5] = *&v58[64];
  v49[6] = *&v58[80];
  v50 = v58[96];
  sub_100003D04(&v41, &v53, &qword_100021DC0, &qword_100015330);
  sub_100003A1C(v49, &qword_100021DC0, &qword_100015330);
  *(&v40[4] + 7) = v45;
  *(&v40[5] + 7) = v46;
  *(&v40[6] + 7) = v47;
  *(v40 + 7) = v41;
  *(&v40[1] + 7) = v42;
  *(&v40[2] + 7) = v43;
  BYTE7(v40[7]) = v48;
  *(&v40[3] + 7) = v44;
  v23 = v39[0];
  LOBYTE(v10) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v24 = *&v40[7];
  *(&v54[7] + 1) = *&v40[7];
  HIDWORD(v54[7]) = *&v52[3];
  *(&v54[7] + 9) = *v52;
  DWORD1(v55) = *&v51[3];
  *(&v55 + 1) = *v51;
  v53 = v22;
  LOBYTE(v54[0]) = v23;
  v25 = v40[3];
  *(&v54[4] + 1) = v40[4];
  v26 = v40[4];
  *(&v54[5] + 1) = v40[5];
  v27 = v40[5];
  *(&v54[6] + 1) = v40[6];
  v28 = v40[1];
  *(v54 + 1) = v40[0];
  v29 = v40[0];
  *(&v54[1] + 1) = v40[1];
  *(&v54[2] + 1) = v40[2];
  v30 = v40[2];
  *(&v54[3] + 1) = v40[3];
  LOBYTE(v55) = v10;
  *(&v55 + 1) = v31;
  *&v56[0] = v32;
  *(&v56[0] + 1) = v33;
  *&v56[1] = v34;
  BYTE8(v56[1]) = 0;
  *(a3 + 193) = *(v56 + 9);
  *(a3 + 184) = v56[0];
  *(a3 + 152) = v54[7];
  *(a3 + 168) = v55;
  *(a3 + 72) = v54[2];
  *(a3 + 56) = v54[1];
  *(a3 + 40) = v54[0];
  *(a3 + 24) = v53;
  *(a3 + 136) = v54[6];
  *(a3 + 120) = v54[5];
  *(a3 + 104) = v54[4];
  *(a3 + 88) = v54[3];
  *&v58[65] = v26;
  *&v58[81] = v27;
  *&v58[97] = v40[6];
  *&v58[1] = v29;
  *&v58[17] = v28;
  *&v58[33] = v30;
  v39[192] = 1;
  *a3 = v38;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v20;
  *(a3 + 216) = 0;
  *(a3 + 224) = 1;
  v57 = v22;
  v58[0] = v23;
  v59 = v24;
  *&v58[49] = v25;
  *&v60[3] = *&v52[3];
  *v60 = *v52;
  v61 = v10;
  *&v62[3] = *&v51[3];
  *v62 = *v51;
  v63 = v31;
  v64 = v32;
  v65 = v33;
  v66 = v34;
  v67 = 0;

  sub_100003D04(&v53, v39, &qword_100021DC8, &qword_100015338);
  sub_100003A1C(&v57, &qword_100021DC8, &qword_100015338);
}

uint64_t sub_10000DBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v65 = a2;
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  v5 = *(v59 + 48);
  v4 = *(v59 + 56);

  sub_100003B2C();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.Weight.semibold.getter();
  v10 = Text.fontWeight(_:)();
  v12 = v11;
  v14 = v13;
  sub_100003B80(v6, v8, v5 & 1);

  static Font.subheadline.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_100003B80(v10, v12, v14 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v20 = Text.foregroundStyle<A>(_:)();
  v51 = v21;
  v52 = v20;
  v47 = v22;
  v53 = v23;
  sub_100003B80(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v64 = a1;
  v65 = a2;
  State.wrappedValue.getter();
  v25 = *(v59 + 32);
  v24 = *(v59 + 40);

  v26 = Text.init<A>(_:)();
  v28 = v27;
  LOBYTE(v25) = v29;
  static Font.subheadline.getter();
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;

  sub_100003B80(v26, v28, v25 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  LOBYTE(v26) = v38;
  v40 = v39;
  sub_100003B80(v30, v32, v34 & 1);

  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v56 = v47 & 1;
  *&v59 = v35;
  *(&v59 + 1) = v37;
  LOBYTE(v60) = v26 & 1;
  *(&v60 + 1) = v58[0];
  DWORD1(v60) = *(v58 + 3);
  *(&v60 + 1) = v40;
  *&v61 = v41;
  BYTE8(v61) = 0;
  HIDWORD(v61) = *&v57[3];
  *(&v61 + 9) = *v57;
  *&v62 = v42;
  *(&v62 + 1) = 2;
  v63 = 0;
  *&v55[7] = v59;
  v55[71] = 0;
  *&v55[55] = v62;
  *&v55[39] = v61;
  *&v55[23] = v60;
  *a3 = v52;
  *(a3 + 8) = v51;
  *(a3 + 16) = v47 & 1;
  *(a3 + 24) = v53;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  v43 = *&v55[16];
  *(a3 + 41) = *v55;
  v44 = *&v55[32];
  v45 = *&v55[48];
  *(a3 + 105) = *&v55[64];
  *(a3 + 89) = v45;
  *(a3 + 73) = v44;
  *(a3 + 57) = v43;
  v64 = v35;
  v65 = v37;
  v66 = v26 & 1;
  *&v67[3] = *(v58 + 3);
  *v67 = v58[0];
  v68 = v40;
  v69 = v41;
  v70 = 0;
  *&v71[3] = *&v57[3];
  *v71 = *v57;
  v72 = v42;
  v73 = 2;
  v74 = 0;
  sub_100003D6C(v52, v51, v47 & 1);

  sub_100003D04(&v59, v54, &qword_100021DD0, &unk_1000153A0);
  sub_100003A1C(&v64, &qword_100021DD0, &unk_1000153A0);
  sub_100003B80(v52, v51, v47 & 1);
}

uint64_t sub_10000E058()
{
  sub_10000391C(&qword_1000216C8, &qword_100014A18);
  State.wrappedValue.getter();
  sub_100011428();
}

unint64_t sub_10000E0BC()
{
  result = qword_100021D78;
  if (!qword_100021D78)
  {
    sub_100003964(&qword_100021D70, &qword_1000152C8);
    sub_10000E148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D78);
  }

  return result;
}

unint64_t sub_10000E148()
{
  result = qword_100021D80;
  if (!qword_100021D80)
  {
    sub_100003964(&qword_100021D88, &qword_1000152D0);
    sub_10000E1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D80);
  }

  return result;
}

unint64_t sub_10000E1D4()
{
  result = qword_100021D90;
  if (!qword_100021D90)
  {
    sub_100003964(&qword_100021D98, &qword_1000152D8);
    sub_10000E260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021D90);
  }

  return result;
}

unint64_t sub_10000E260()
{
  result = qword_100021DA0;
  if (!qword_100021DA0)
  {
    sub_100003964(&qword_100021DA8, &unk_1000152E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DA0);
  }

  return result;
}

unint64_t sub_10000E2C4()
{
  result = qword_100021DB0;
  if (!qword_100021DB0)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DB0);
  }

  return result;
}

uint64_t sub_10000E31C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000E378()
{
  result = qword_100021DB8;
  if (!qword_100021DB8)
  {
    sub_100003964(&qword_100021D58, &qword_1000152B0);
    sub_100003964(&qword_100021D70, &qword_1000152C8);
    type metadata accessor for RoundedRectangle();
    sub_10000E0BC();
    sub_10000E2C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DB8);
  }

  return result;
}

uint64_t sub_10000E460(uint64_t a1)
{
  v2 = sub_10000391C(&qword_100021D58, &qword_1000152B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E4C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E508()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_10000E058();
}

uint64_t sub_10000E51C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000E570@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000E5A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10000E5D4()
{
  sub_100003964(&qword_100021D60, &qword_1000152B8);
  sub_100003964(&qword_100021D58, &qword_1000152B0);
  sub_10000E378();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_10000E708()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistration()
{
  result = qword_100021E08;
  if (!qword_100021E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E820()
{
  sub_10000E8B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000E8B0()
{
  if (!qword_100021E18)
  {
    type metadata accessor for Registration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100021E18);
    }
  }
}

char *sub_10000E908()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000391C(&qword_100021E20, &qword_1000153E0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000E938()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v19[-v10];
  v12 = OBJC_IVAR____TtC21ScreenContinuityShell47ShellSceneKitBackedConnectedDisplayRegistration_registration;
  swift_beginAccess();
  v13 = type metadata accessor for Registration();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v0 + v12, 1, v13) == 1)
  {
    registerForContinuityDisplay()();
    swift_beginAccess();
    if (v14(v0 + v12, 1, v13) != 1)
    {
      sub_10000EEB8(v0 + v12);
    }

    sub_10000EF20(v11, v0 + v12);
    swift_endAccess();
    static Logger.angel.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Activated registration for continuity displays.", v17, 2u);
    }

    return (*(v2 + 8))(v6, v1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000EBE0()
{
  v19 = type metadata accessor for Logger();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v19, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC21ScreenContinuityShell47ShellSceneKitBackedConnectedDisplayRegistration_registration;
  swift_beginAccess();
  v12 = type metadata accessor for Registration();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v0 + v11, 1, v12))
  {
    Registration.invalidate()();
  }

  swift_endAccess();
  (*(v13 + 56))(v10, 1, 1, v12);
  swift_beginAccess();
  if (v14(v0 + v11, 1, v12) != 1)
  {
    sub_10000EEB8(v0 + v11);
  }

  sub_10000EF20(v10, v0 + v11);
  swift_endAccess();
  static Logger.angel.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Invalidated registration for continuity displays.", v17, 2u);
  }

  return (*(v1 + 8))(v5, v19);
}

uint64_t sub_10000EEB8(uint64_t a1)
{
  v2 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000EF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000391C(&qword_100021E20, &qword_1000153E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10000F0C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F11C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100004310(v1 + 16, a1);
}

uint64_t sub_10000F1DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100004310(v3 + 16, a2);
}

uint64_t sub_10000F29C(uint64_t a1, uint64_t *a2)
{
  sub_100004310(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000043B8(v5);
}

uint64_t sub_10000F37C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1000103D0((a1 + 16), a2);
  return swift_endAccess();
}

void sub_10000F3E0()
{
  v1 = v0;
  swift_getKeyPath();
  v9[0] = v0;
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v0 + 16, v9);
  sub_100004374(v9, v10);
  dispatch thunk of MicaAnimationPrimitives.setInitialStates(transitionSpeed:)();
  sub_1000043B8(v9);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v0 + 16, v9);
  sub_100004374(v9, v10);
  v2 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
  if (v2 >> 62)
  {
    v7 = v2;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v7;
    if (v8)
    {
LABEL_3:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v3 = *(v2 + 32);
      }

      v4 = v3;

      sub_1000043B8(v9);
      swift_getKeyPath();
      v9[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_100004310(v1 + 16, v9);
      sub_100004374(v9, v10);
      v5 = [v4 name];
      if (v5)
      {
        v6 = v5;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of MicaAnimationPrimitives.setCurrentState(to:)();

        sub_1000043B8(v9);
        sub_10000F680();

        return;
      }

      goto LABEL_13;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1000043B8(v9);
}

void sub_10000F680()
{
  v1 = v0;
  swift_getKeyPath();
  v20 = v0;
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v0 + 16, v21);
  sub_100004374(v21, v22);
  v2 = dispatch thunk of MicaAnimationPrimitives.currentState.getter();
  if (!v2)
  {
    sub_1000043B8(v21);
    return;
  }

  v3 = v2;
  sub_1000043B8(v21);
  swift_getKeyPath();
  v21[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v0 + 16, v21);
  sub_100004374(v21, v22);
  v4 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
  v5 = sub_10000F9F8(v3, v4);
  v7 = v6;

  sub_1000043B8(v21);
  if (v7)
  {

    return;
  }

  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v21[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_100004310(v1 + 16, v21);
    sub_100004374(v21, v22);
    v9 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
        goto LABEL_8;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v8 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  v11 = v8 % v10;
  sub_1000043B8(v21);
  swift_getKeyPath();
  v21[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v1 + 16, v21);
  sub_100004374(v21, v22);
  v12 = dispatch thunk of MicaAnimationPrimitives.allStates.getter();
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 8 * v11 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_20:
  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v14 = v13;

  sub_1000043B8(v21);
  v15 = [v14 name];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_10000FB08(v17, v19);
}

unint64_t sub_10000F9F8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10000CC8C(0, &qword_100021FA8, CAState_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10000FB08(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v35, v4);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6, v8);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchTime();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v32, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v29 = &v28 - v17;
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_100010308(&qword_1000217E0, type metadata accessor for MicaAnimationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100004310(v2 + 16, aBlock);
  sub_100004374(aBlock, v41);
  dispatch thunk of MicaAnimationPrimitives.setCurrentState(to:)();
  sub_1000043B8(aBlock);
  swift_getKeyPath();
  aBlock[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100004310(v2 + 16, aBlock);
  sub_100004374(aBlock, v41);
  dispatch thunk of MicaAnimationPrimitives.setCurrentStateToPackageLayer(transitionSpeed:)();
  sub_1000043B8(aBlock);
  sub_10000CC8C(0, &qword_100021D20, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v31 = v10 + 8;
  v20 = v32;
  v19(v15, v32);
  v21 = swift_allocObject();
  swift_weakInit();
  v42 = sub_1000102E8;
  v43 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010068;
  v41 = &unk_10001D730;
  v22 = _Block_copy(aBlock);

  v23 = v33;
  static DispatchQoS.unspecified.getter();
  v39 = &_swiftEmptyArrayStorage;
  sub_100010308(&qword_100021F90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000391C(&qword_100021F98, &qword_1000154C8);
  sub_100010350();
  v25 = v34;
  v24 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v29;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v38 + 8))(v25, v24);
  (*(v36 + 8))(v23, v37);
  v19(v26, v20);
}

uint64_t sub_100010010()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F680();
  }

  return result;
}

uint64_t sub_100010068(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t MicaAnimationModel.deinit()
{
  sub_1000043B8((v0 + 16));
  v1 = OBJC_IVAR____TtC21ScreenContinuityShell18MicaAnimationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MicaAnimationModel.__deallocating_deinit()
{
  sub_1000043B8(v0 + 2);
  v1 = OBJC_IVAR____TtC21ScreenContinuityShell18MicaAnimationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MicaAnimationModel()
{
  result = qword_100021E80;
  if (!qword_100021E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001020C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000102B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000102F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010308(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100010350()
{
  result = qword_100021FA0;
  if (!qword_100021FA0)
  {
    sub_100003964(&qword_100021F98, &qword_1000154C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021FA0);
  }

  return result;
}

uint64_t *sub_1000103D0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

double sub_100010634(void *a1)
{
  v1 = a1;
  sub_100010678();
  v3 = v2;

  return v3;
}

void sub_100010690(void *a1)
{
  v1 = a1;
  sub_1000106F0();
}

void sub_100010708(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_100010B00();
}

void sub_100010784(char a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveActivityHostingController();
  objc_msgSendSuper2(&v5, "viewIsAppearing:", a1 & 1);
  sub_1000108BC();
}

void sub_100010808(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100010784(a3);
}

void sub_10001085C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_100010B5C();
  swift_unknownObjectRelease();
}

void sub_1000108BC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];
      if (v4)
      {
        v7 = v4;
        type metadata accessor for ActivityScene();
        if (swift_dynamicCastClass())
        {
          [v0 preferredContentSize];
          [v0 preferredContentSize];
          v5 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
          ActivitySceneMetrics.init(size:cornerRadius:)();
          dispatch thunk of ActivityScene.resolvedMetrics.setter();
        }

        v6 = v7;
      }

      else
      {
        v6 = v3;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000109F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((swift_isaMask & *a1) + 0x50);
  v5 = *((swift_isaMask & *a1) + 0x58);
  v6 = a4;

  sub_100010B60();
}

id sub_100010A68()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LiveActivityHostingController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100010BB4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistration();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_100010C0C();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_100010C0C()
{
  result = qword_1000220D0;
  if (!qword_1000220D0)
  {
    type metadata accessor for ShellSceneKitBackedConnectedDisplayRegistration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000220D0);
  }

  return result;
}

uint64_t sub_100010C64()
{
  v1 = v0;
  v2 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.angel.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Tear down remote session from live activity button", v15, 2u);
  }

  (*(v8 + 8))(v12, v7);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v1;
  sub_100011168(0, 0, v6, &unk_100015660, v18);
}

uint64_t sub_100010E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100010F34, v6, v5);
}

uint64_t sub_100010F34()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  v5 = async function pointer to dispatch thunk of LiveActivityDelegate.tearDownFromLiveActivity()[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_100010FE8;

  return dispatch thunk of LiveActivityDelegate.tearDownFromLiveActivity()(ObjectType, v2);
}

uint64_t sub_100010FE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_100011108, v4, v3);
}

uint64_t sub_100011108()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100011168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000391C(&qword_100021CA8, &qword_1000151D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_10000CA74(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10000CA0C(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_10000CA0C(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000CA0C(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100011428()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.angel.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unlock and open settings URL from live activty", v10, 2u);
  }

  (*(v3 + 8))(v7, v2);
  if (qword_100021578 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for URL();
  sub_100009984(v11, qword_100022220);
  v12 = v1[18];
  sub_100004374(v1 + 14, v1[17]);
  return dispatch thunk of ApplicationLaunchPrimitives.openApplication(at:)();
}

void *sub_1000115D8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];
  swift_unknownObjectRelease();
  sub_1000043B8(v0 + 14);
  v7 = OBJC_IVAR____TtC21ScreenContinuityShell21LiveActivityViewModel___observationRegistrar;
  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_100011670()
{
  sub_1000115D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LiveActivityViewModel()
{
  result = qword_100022108;
  if (!qword_100022108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001171C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000117D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011814(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007414;

  return sub_100010E9C(a1, v4, v5, v6);
}

uint64_t sub_1000118C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000119C0;

  return v7(a1);
}

uint64_t sub_1000119C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100011AB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}