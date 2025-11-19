uint64_t sub_10011FF98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t type metadata accessor for ShareButton()
{
  result = qword_10021FFB0;
  if (!qword_10021FFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10012009C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_100018E0C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012013C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10021FF38 = result;
  unk_10021FF40 = v1;
  byte_10021FF48 = v2 & 1;
  qword_10021FF50 = v3;
  return result;
}

uint64_t sub_100120184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_10021FFE8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - v13;
  (*(v8 + 16))(v10, v3, v7);
  sub_100120450(v3, v6);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1001205A0(v6, v16 + v15);
  ShareLink<>.init<>(item:subject:message:onPresentationChanged:)();
  if (qword_100218420 != -1)
  {
    swift_once();
  }

  sub_100120678();
  View.accessibilityLabel(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100120450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001204B4()
{
  v1 = *(type metadata accessor for ShareButton() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1001205A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120604(char a1)
{
  result = type metadata accessor for ShareButton();
  if (a1)
  {
    return (*(v1 + *(result + 20) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))();
  }

  return result;
}

unint64_t sub_100120678()
{
  result = qword_10021FFF0;
  if (!qword_10021FFF0)
  {
    sub_10000B3DC(&qword_10021FFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FFF0);
  }

  return result;
}

unint64_t sub_1001206E0()
{
  result = qword_10021FFF8;
  if (!qword_10021FFF8)
  {
    sub_10000B3DC(&qword_100220000);
    sub_100120678();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FFF8);
  }

  return result;
}

uint64_t sub_1001207B4()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1001208A0(void *a1)
{
  a1[1] = sub_100120C90(&qword_100220080, type metadata accessor for DesignTimeSong);
  a1[2] = sub_100120C90(&qword_100220088, type metadata accessor for DesignTimeSong);
  result = sub_100120C90(&qword_100220090, type metadata accessor for DesignTimeSong);
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeSong()
{
  result = qword_100220108;
  if (!qword_100220108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012099C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemID.init(stringLiteral:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_100120A24()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100120A98()
{
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();
}

Swift::Int sub_100120B00()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100120BA4()
{
  v0 = MusicItemID.init(stringLiteral:)();
  v2 = v1;
  if (v0 == MusicItemID.init(stringLiteral:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100120C90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100120D08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009F70(&qword_10021E8F0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100009F70(qword_100218748);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_100009F70(&qword_1002200A8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_100120EAC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100009F70(&qword_10021E8F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009F70(qword_100218748);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_100009F70(&qword_1002200A8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_10012103C()
{
  sub_1001211EC(319, &qword_10021EBD0);
  if (v0 <= 0x3F)
  {
    sub_100121198(319, &qword_10021E980, type metadata accessor for DesignTimeImage);
    if (v1 <= 0x3F)
    {
      sub_100121198(319, &qword_100218E80, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_100121198(319, &qword_100220118, &type metadata accessor for PlayParameters);
        if (v3 <= 0x3F)
        {
          sub_1001211EC(319, &unk_100220120);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100121198(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1001211EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10012123C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100121298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001212F8()
{
  result = qword_100220170;
  if (!qword_100220170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220170);
  }

  return result;
}

uint64_t sub_100121358()
{
  v1 = v0[1];
  v2 = 0x4C746E6572727563;
  if (v1 != 1)
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7105633;
  }

  sub_1000E4108(*v0, v1);
  return v3;
}

uint64_t sub_1001213C8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

Swift::Int sub_100121428()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1001214A8()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 1;
LABEL_5:
    Hasher._combine(_:)(v2);
    return;
  }

  Hasher._combine(_:)(2uLL);

  String.hash(into:)();
}

Swift::Int sub_100121530()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001215AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100121600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_10012165C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100121690()
{
  result = qword_100220178;
  if (!qword_100220178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220178);
  }

  return result;
}

uint64_t sub_1001216F4(uint64_t a1)
{
  *(a1 + 8) = sub_10012175C(&qword_10021BA08);
  result = sub_10012175C(qword_100220180);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012175C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Music.Genre();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001217A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v6 = type metadata accessor for FeaturedVideosView();
  v7 = v6[9];
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  sub_1001219F0(a2);
  v9 = (a3 + v6[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10012719C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  *v9 = EnvironmentObject.init()();
  v9[1] = v10;
  v11 = v6[12];
  *(a3 + v11) = swift_getKeyPath();
  sub_100009F70(&qword_1002196E8);
  swift_storeEnumTagMultiPayload();
  v12 = v6[13];
  *(a3 + v12) = swift_getKeyPath();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001219B0()
{
  type metadata accessor for FeaturedVideosViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1001219F0(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

void sub_100121AF4()
{
  type metadata accessor for FeaturedVideosViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for Binding();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State();
      if (v2 <= 0x3F)
      {
        sub_10000B304();
        if (v3 <= 0x3F)
        {
          sub_100022910();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100121C00(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for FeaturedVideosViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for State();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v16 = *(a1 + a3[11]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 - 1;
    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = sub_100009F70(&qword_1002195B8);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_100121E14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for FeaturedVideosViewModel();
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[9];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for State();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[10];
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11]) = a2;
  }

  else
  {
    v17 = sub_100009F70(&qword_1002195B8);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[12];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_10012205C()
{
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.projectedValue.getter();
}

uint64_t sub_1001220AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for TaskPriority();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = __chkstk_darwin(v3);
  v67 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v64 = *(a1 - 8);
  v66 = *(v64 + 64);
  __chkstk_darwin(v4);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000B3DC(&qword_10021A618);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Array();
  v60 = *(a1 + 24);
  v9 = v60;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v79 = v10;
  v80 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v13 = swift_getWitnessTable();
  v14 = *(v9 + 8);
  v79 = v8;
  v80 = v7;
  v81 = v12;
  v82 = v13;
  v83 = v14;
  type metadata accessor for ForEach();
  v79 = v10;
  v80 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = type metadata accessor for LazyHStack();
  v16 = swift_getWitnessTable();
  v79 = v15;
  v80 = v16;
  swift_getOpaqueTypeMetadata2();
  v79 = v15;
  v80 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = type metadata accessor for ScrollView();
  v18 = swift_getWitnessTable();
  v79 = v17;
  v80 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = v17;
  v80 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v79 = OpaqueTypeMetadata2;
  v80 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v79 = OpaqueTypeMetadata2;
  v80 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v79 = v21;
  v80 = v22;
  v81 = v23;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v24 = swift_getOpaqueTypeMetadata2();
  v79 = v21;
  v80 = v22;
  v81 = v23;
  v82 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeConformance2();
  v79 = v24;
  v80 = v7;
  v81 = v25;
  v82 = v14;
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for ModifiedContent();
  v27 = type metadata accessor for Optional();
  v79 = v24;
  v80 = v7;
  v53 = v7;
  v81 = v25;
  v82 = v14;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for _FlexFrameLayout;
  v28 = swift_getWitnessTable();
  v74 = v14[1];
  v29 = swift_getWitnessTable();
  v79 = v26;
  v80 = v27;
  v81 = v28;
  v82 = v29;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v30 = type metadata accessor for VStack();
  v61 = *(v30 - 8);
  __chkstk_darwin(v30);
  v55 = &v53 - v31;
  v56 = swift_getWitnessTable();
  v79 = v30;
  v80 = v56;
  v58 = &unk_1001C2954;
  v32 = swift_getOpaqueTypeMetadata2();
  v59 = *(v32 - 8);
  v33 = __chkstk_darwin(v32);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v57 = &v53 - v36;
  static HorizontalAlignment.leading.getter();
  v37 = v60;
  v71 = v7;
  v72 = v60;
  v38 = v65;
  v73 = v65;
  VStack.init(alignment:spacing:content:)();
  v54 = "ICE_ACCESSIBILITY_SHARE";
  v39 = v64;
  v40 = v63;
  v41 = v62;
  (*(v64 + 16))(v63, v38, v62);
  type metadata accessor for MainActor();
  v42 = static MainActor.shared.getter();
  v43 = v39;
  v44 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = v42;
  *(v45 + 3) = &protocol witness table for MainActor;
  *(v45 + 4) = v53;
  *(v45 + 5) = v37;
  (*(v43 + 32))(&v45[v44], v40, v41);
  v46 = v67;
  v47 = v56;
  j___sScP13userInitiatedScPvgZ();
  v48 = v55;
  sub_100009FB8(0, v46, 0xD000000000000028, (v54 | 0x8000000000000000), 91, &unk_1001B8770, v45, v35, v30, v47);
  (*(v68 + 8))(v46, v69);
  (*(v61 + 8))(v48, v30);
  v79 = v30;
  v80 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v57;
  sub_100157EFC(v35, v32, v49);
  v51 = *(v59 + 8);
  v51(v35, v32);
  sub_100157EFC(v50, v32, v49);
  return (v51)(v50, v32);
}

uint64_t sub_100122A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v170 = a1;
  v160 = a4;
  v169 = type metadata accessor for FeaturedVideosView();
  v158 = *(v169 - 8);
  v167 = *(v158 + 64);
  __chkstk_darwin(v169);
  v166 = &v113 - v6;
  v7 = type metadata accessor for Optional();
  v159 = *(v7 - 8);
  __chkstk_darwin(v7);
  v157 = &v113 - v8;
  v9 = type metadata accessor for Binding();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v154 = &v113 - v10;
  v11 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v11 - 8);
  v152 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v153 = *(v13 - 8);
  __chkstk_darwin(v13);
  v151 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContentMarginPlacement();
  v149 = *(v15 - 8);
  v150 = v15;
  __chkstk_darwin(v15);
  v148 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Array();
  v18 = a3;
  v168 = a3;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v19 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  *&v194 = v19;
  *(&v194 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for Optional();
  v22 = swift_getWitnessTable();
  v23 = *(v18 + 8);
  *&v194 = v17;
  *(&v194 + 1) = a2;
  *&v195 = v21;
  *(&v195 + 1) = v22;
  *&v196 = v23;
  v24 = v23;
  type metadata accessor for ForEach();
  *&v194 = v19;
  *(&v194 + 1) = WitnessTable;
  v185[9] = swift_getOpaqueTypeConformance2();
  v185[8] = swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = type metadata accessor for LazyHStack();
  v26 = swift_getWitnessTable();
  *&v194 = v25;
  *(&v194 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v194 = v25;
  *(&v194 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = type metadata accessor for ScrollView();
  v145 = *(v27 - 8);
  __chkstk_darwin(v27);
  v132 = &v113 - v28;
  v29 = swift_getWitnessTable();
  *&v194 = v27;
  *(&v194 + 1) = v29;
  v129 = v27;
  v130 = v29;
  v30 = v29;
  v31 = swift_getOpaqueTypeMetadata2();
  v144 = *(v31 - 8);
  __chkstk_darwin(v31);
  v131 = &v113 - v32;
  *&v194 = v27;
  *(&v194 + 1) = v30;
  v33 = swift_getOpaqueTypeConformance2();
  *&v194 = v31;
  *(&v194 + 1) = v33;
  v34 = v31;
  v122 = v33;
  v123 = v31;
  v35 = v33;
  v36 = swift_getOpaqueTypeMetadata2();
  v139 = *(v36 - 8);
  __chkstk_darwin(v36);
  v124 = &v113 - v37;
  *&v194 = v34;
  *(&v194 + 1) = v35;
  v38 = swift_getOpaqueTypeConformance2();
  *&v194 = v36;
  *(&v194 + 1) = v13;
  v39 = v36;
  v119 = v13;
  v120 = v36;
  *&v195 = v38;
  *(&v195 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v40 = v38;
  v121 = v38;
  v41 = swift_getOpaqueTypeMetadata2();
  v136 = *(v41 - 8);
  __chkstk_darwin(v41);
  v118 = &v113 - v42;
  *&v194 = v39;
  *(&v194 + 1) = v13;
  *&v195 = v40;
  *(&v195 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v43 = swift_getOpaqueTypeConformance2();
  *&v194 = v41;
  *(&v194 + 1) = a2;
  v44 = v41;
  v114 = v41;
  v115 = v43;
  v161 = a2;
  *&v195 = v43;
  *(&v195 + 1) = v24;
  v45 = v43;
  v125 = swift_getOpaqueTypeMetadata2();
  v134 = *(v125 - 8);
  __chkstk_darwin(v125);
  v117 = &v113 - v46;
  v47 = type metadata accessor for ModifiedContent();
  v146 = *(v47 - 8);
  __chkstk_darwin(v47);
  v165 = &v113 - v48;
  *&v194 = v44;
  *(&v194 + 1) = a2;
  *&v195 = v45;
  *(&v195 + 1) = v24;
  v113 = v24;
  v116 = swift_getOpaqueTypeConformance2();
  v185[6] = v116;
  v185[7] = &protocol witness table for _FlexFrameLayout;
  v147 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v126 = v47;
  v49 = swift_getWitnessTable();
  v162 = v49;
  v185[5] = *(v24 + 8);
  v127 = v7;
  v164 = swift_getWitnessTable();
  *&v194 = v47;
  *(&v194 + 1) = v7;
  *&v195 = v49;
  *(&v195 + 1) = v164;
  v137 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v133 = swift_getOpaqueTypeMetadata2();
  v142 = *(v133 - 8);
  __chkstk_darwin(v133);
  v163 = &v113 - v50;
  v138 = type metadata accessor for ModifiedContent();
  v143 = *(v138 - 8);
  v51 = __chkstk_darwin(v138);
  v128 = &v113 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v135 = &v113 - v53;
  sub_1001219B0();
  sub_1000A6830();

  v54 = Text.init(_:tableName:bundle:comment:)();
  v56 = v55;
  LOBYTE(v7) = v57;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v58 = Text.font(_:)();
  v60 = v59;
  LOBYTE(a2) = v61;
  v63 = v62;

  sub_10000D60C(v54, v56, v7 & 1);

  KeyPath = swift_getKeyPath();
  v65 = swift_getKeyPath();
  LOBYTE(v194) = a2 & 1;
  LOBYTE(v186) = 0;
  LOBYTE(v7) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v185[0]) = 0;
  *&v186 = v58;
  *(&v186 + 1) = v60;
  LOBYTE(v187) = a2 & 1;
  *(&v187 + 1) = v63;
  *&v188 = KeyPath;
  *(&v188 + 1) = 2;
  LOBYTE(v189) = 0;
  *(&v189 + 1) = v65;
  LOBYTE(v190) = 0;
  *(&v190 + 1) = v194;
  DWORD1(v190) = *(&v194 + 3);
  BYTE8(v190) = v7;
  HIDWORD(v190) = *(&v177 + 3);
  *(&v190 + 9) = v177;
  *&v191 = v66;
  *(&v191 + 1) = v67;
  *&v192 = v68;
  *(&v192 + 1) = v69;
  v193 = 0;
  static Axis.Set.horizontal.getter();
  v70 = v161;
  v171 = v161;
  v172 = v168;
  v71 = v170;
  v173 = v170;
  v72 = v132;
  ScrollView.init(_:showsIndicators:content:)();
  v73 = v169;
  sub_1001219B0();
  sub_1000A68F0();

  v74 = v131;
  v75 = v129;
  View.scrollDisabled(_:)();
  (*(v145 + 8))(v72, v75);
  static Edge.Set.horizontal.getter();
  v76 = v148;
  v77 = v123;
  j___s7SwiftUI22ContentMarginPlacementV9automaticACvgZ();
  v78 = v124;
  View.contentMargins(_:_:for:)();
  (*(v149 + 8))(v76, v150);
  (*(v144 + 8))(v74, v77);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v79 = v151;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v81 = v118;
  v80 = v119;
  v82 = v120;
  View.scrollTargetBehavior<A>(_:)();
  (*(v153 + 8))(v79, v80);
  (*(v139 + 8))(v78, v82);
  v83 = v154;
  v84 = v73;
  sub_1000F876C(v73, &Binding.projectedValue.getter);
  v85 = v117;
  v86 = v114;
  View.scrollPosition<A>(id:anchor:)();
  (*(v155 + 8))(v83, v156);
  (*(v136 + 8))(v81, v86);
  static Alignment.center.getter();
  v87 = v125;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v134 + 8))(v85, v87);
  v88 = v157;
  sub_1000F876C(v84, &Binding.wrappedValue.getter);
  v89 = v158;
  v156 = *(v158 + 16);
  v90 = v166;
  v156(v166, v71, v84);
  v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v92 = swift_allocObject();
  v93 = v168;
  *(v92 + 16) = v70;
  *(v92 + 24) = v93;
  v158 = *(v89 + 32);
  (v158)(v92 + v91, v90, v84);
  v95 = v126;
  v94 = v127;
  v96 = v165;
  View.onChange<A>(of:initial:_:)();

  (*(v159 + 8))(v88, v94);
  v97 = v96;
  v98 = v95;
  (*(v146 + 8))(v97, v95);
  v99 = v166;
  v100 = v169;
  v156(v166, v170, v169);
  v101 = swift_allocObject();
  v102 = v168;
  *(v101 + 16) = v161;
  *(v101 + 24) = v102;
  (v158)(v101 + v91, v99, v100);
  *&v194 = v98;
  *(&v194 + 1) = v94;
  *&v195 = v162;
  *(&v195 + 1) = v164;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = v128;
  v105 = v133;
  v106 = v163;
  View.onAppear(perform:)();

  (*(v142 + 8))(v106, v105);
  v185[2] = v103;
  v185[3] = &protocol witness table for _AppearanceActionModifier;
  v107 = v138;
  v108 = swift_getWitnessTable();
  v109 = v135;
  sub_100157EFC(v104, v107, v108);
  v110 = v143;
  v111 = *(v143 + 8);
  v111(v104, v107);
  v181 = v190;
  v182 = v191;
  v183 = v192;
  v184 = v193;
  v177 = v186;
  v178 = v187;
  v179 = v188;
  v180 = v189;
  v185[0] = &v177;
  (*(v110 + 16))(v104, v109, v107);
  v185[1] = v104;
  sub_10000D58C(&v186, &v194, &qword_10021A618);
  v176[0] = sub_100009F70(&qword_10021A618);
  v176[1] = v107;
  v174 = sub_10004DBE4();
  v175 = v108;
  sub_100151024(v185, 2uLL, v176);
  sub_10000D52C(&v186, &qword_10021A618);
  v111(v109, v107);
  v111(v104, v107);
  v198 = v181;
  v199 = v182;
  v200 = v183;
  v201 = v184;
  v194 = v177;
  v195 = v178;
  v196 = v179;
  v197 = v180;
  return sub_10000D52C(&v194, &qword_10021A618);
}

uint64_t sub_100123D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a4;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6 - 8);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  v9 = a3;
  v34 = a3;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  v43 = v10;
  v44 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v13 = swift_getWitnessTable();
  v14 = *(v9 + 8);
  v43 = v8;
  v44 = a2;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  type metadata accessor for ForEach();
  v43 = v10;
  v44 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = type metadata accessor for LazyHStack();
  v33 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = swift_getWitnessTable();
  v43 = v15;
  v44 = v18;
  v31 = v18;
  v32 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  v21 = __chkstk_darwin(OpaqueTypeMetadata2);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v30 - v24;
  v38 = a2;
  v39 = v34;
  v40 = v36;
  static VerticalAlignment.center.getter();
  sub_10012605C();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v26 = v31;
  View.scrollTargetLayout(isEnabled:)();
  (*(v33 + 8))(v17, v15);
  v43 = v15;
  v44 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v23, OpaqueTypeMetadata2, v27);
  v28 = *(v20 + 8);
  v28(v23, OpaqueTypeMetadata2);
  sub_100157EFC(v25, OpaqueTypeMetadata2, v27);
  return (v28)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_100124240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = type metadata accessor for FeaturedVideosView();
  v8 = *(v7 - 8);
  v41 = *(v8 + 64);
  __chkstk_darwin(v7);
  v40 = v33 - v9;
  v10 = type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v35 = v11;
  WitnessTable = swift_getWitnessTable();
  v48 = v11;
  v49 = WitnessTable;
  v33[2] = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  v34 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for Optional();
  v33[1] = v13;
  v38 = v10;
  v14 = swift_getWitnessTable();
  v36 = *(a3 + 8);
  v37 = v14;
  v48 = v10;
  v49 = a2;
  v50 = v13;
  v51 = v14;
  v52 = v36;
  v15 = type metadata accessor for ForEach();
  v39 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v33 - v19;
  v21 = v7;
  sub_1001219B0();
  v22 = sub_1000A6D08();

  v47 = v22;
  v43 = a2;
  v44 = a3;
  v33[0] = swift_getKeyPath();
  v23 = v8;
  v24 = *(v8 + 16);
  v25 = v40;
  v24(v40, a1, v21);
  v26 = v23;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  (*(v26 + 32))(v28 + v27, v25, v21);
  v48 = v35;
  v49 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = swift_getWitnessTable();
  ForEach<>.init(_:id:content:)();
  v45 = v32;
  v29 = swift_getWitnessTable();
  sub_100157EFC(v18, v15, v29);
  v30 = *(v39 + 8);
  v30(v18, v15);
  sub_100157EFC(v20, v15, v29);
  return (v30)(v20, v15);
}

uint64_t sub_1001246D4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v137 = a1;
  v138 = a3;
  v133 = a2;
  v136 = a5;
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v126 = *(v6 - 8);
  v127 = v6;
  __chkstk_darwin(v6);
  v114 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100009F70(&qword_100219658);
  v8 = __chkstk_darwin(v128);
  v116 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v122 = &v104 - v10;
  v11 = sub_100009F70(&qword_100219278);
  v12 = __chkstk_darwin(v11 - 8);
  v113 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v118 = &v104 - v15;
  v16 = __chkstk_darwin(v14);
  v115 = &v104 - v17;
  v18 = __chkstk_darwin(v16);
  v117 = &v104 - v19;
  v20 = __chkstk_darwin(v18);
  v130 = &v104 - v21;
  __chkstk_darwin(v20);
  v131 = &v104 - v22;
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0);
  swift_getTupleTypeMetadata2();
  v23 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v120 = v23;
  v119 = WitnessTable;
  v25 = type metadata accessor for VStack();
  v124 = *(v25 - 8);
  __chkstk_darwin(v25);
  v132 = &v104 - v26;
  v27 = swift_getWitnessTable();
  v142 = v25;
  v143 = v27;
  v135 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = *(OpaqueTypeMetadata2 - 8);
  v29 = __chkstk_darwin(OpaqueTypeMetadata2);
  v123 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v129 = &v104 - v32;
  __chkstk_darwin(v31);
  v125 = &v104 - v33;
  v34 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v34 - 8);
  v36 = &v104 - v35;
  v37 = type metadata accessor for URL();
  v139 = *(v37 - 8);
  v140 = v37;
  __chkstk_darwin(v37);
  v39 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Optional();
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v44 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v104 - v45;
  v47 = *(a4 + 48);
  v121 = a4;
  v47(v138);
  v107 = v44;
  v109 = v41;
  v112 = OpaqueTypeMetadata2;
  v108 = v46;
  v111 = v25;
  v110 = v40;
  v48 = v139;
  v49 = v140;
  (*(v139 + 56))(v36, 0, 1, v140);
  (*(v48 + 32))(v39, v36, v49);
  v50 = static HorizontalAlignment.leading.getter();
  __chkstk_darwin(v50);
  v51 = v121;
  *(&v104 - 6) = v138;
  *(&v104 - 5) = v51;
  *(&v104 - 4) = v137;
  *(&v104 - 3) = v39;
  v137 = v39;
  *(&v104 - 2) = v133;
  VStack.init(alignment:spacing:content:)();
  LODWORD(v120) = static Axis.Set.horizontal.getter();
  v138 = type metadata accessor for FeaturedVideosView();
  v52 = v131;
  sub_100023FFC(v131);
  v53 = v126;
  v54 = v127;
  v55 = v130;
  v106 = *(v126 + 104);
  v106(v130, enum case for UserInterfaceSizeClass.regular(_:), v127);
  v56 = *(v53 + 56);
  v119 = v53 + 56;
  v105 = v56;
  v56(v55, 0, 1, v54);
  v57 = *(v128 + 48);
  v58 = v122;
  sub_10000D58C(v52, v122, &qword_100219278);
  sub_10000D58C(v55, v58 + v57, &qword_100219278);
  v59 = *(v53 + 48);
  v60 = v59(v58, 1, v54);
  v121 = v59;
  if (v60 == 1)
  {
    sub_10000D52C(v130, &qword_100219278);
    sub_10000D52C(v131, &qword_100219278);
    v61 = v58;
    v62 = v58 + v57;
    v63 = v54;
    v64 = v59(v62, 1, v54);
    v65 = v129;
    if (v64 == 1)
    {
      v66 = v112;
LABEL_9:
      v76 = v125;
      sub_10000D52C(v61, &qword_100219278);
LABEL_16:
      sub_1001219B0();
      sub_1000A688C();

      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v67 = v117;
  sub_10000D58C(v58, v117, &qword_100219278);
  v68 = v59(v58 + v57, 1, v54);
  v65 = v129;
  if (v68 == 1)
  {
    v61 = v58;
    sub_10000D52C(v130, &qword_100219278);
    sub_10000D52C(v131, &qword_100219278);
    v63 = v127;
    (*(v53 + 8))(v67);
LABEL_6:
    sub_10000D52C(v61, &qword_100219658);
    goto LABEL_7;
  }

  v78 = v58 + v57;
  v79 = v114;
  v80 = v127;
  (*(v53 + 32))(v114, v78, v127);
  sub_10012719C(&qword_100219290, &type metadata accessor for UserInterfaceSizeClass);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = *(v53 + 8);
  v82(v79, v80);
  sub_10000D52C(v130, &qword_100219278);
  sub_10000D52C(v131, &qword_100219278);
  v83 = v58;
  v63 = v80;
  v82(v117, v80);
  sub_10000D52C(v83, &qword_100219278);
  v66 = v112;
  v76 = v125;
  if (v81)
  {
    goto LABEL_16;
  }

LABEL_7:
  v69 = v115;
  sub_100023FFC(v115);
  v70 = v118;
  v106(v118, enum case for UserInterfaceSizeClass.compact(_:), v63);
  v71 = v63;
  v105(v70, 0, 1, v63);
  v72 = *(v128 + 48);
  v61 = v116;
  sub_10000D58C(v69, v116, &qword_100219278);
  sub_10000D58C(v70, v61 + v72, &qword_100219278);
  v73 = v63;
  v74 = v121;
  if (v121(v61, 1, v73) == 1)
  {
    sub_10000D52C(v70, &qword_100219278);
    sub_10000D52C(v69, &qword_100219278);
    v75 = v74(v61 + v72, 1, v71);
    v66 = v112;
    v65 = v129;
    if (v75 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v77 = v113;
  sub_10000D58C(v61, v113, &qword_100219278);
  if (v74(v61 + v72, 1, v71) == 1)
  {
    sub_10000D52C(v118, &qword_100219278);
    sub_10000D52C(v69, &qword_100219278);
    (*(v126 + 8))(v77, v71);
    v66 = v112;
    v65 = v129;
LABEL_12:
    sub_10000D52C(v61, &qword_100219658);
    v76 = v125;
    goto LABEL_17;
  }

  v84 = v126;
  v85 = v69;
  v86 = v114;
  (*(v126 + 32))(v114, v61 + v72, v71);
  sub_10012719C(&qword_100219290, &type metadata accessor for UserInterfaceSizeClass);
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = *(v84 + 8);
  v88(v86, v71);
  sub_10000D52C(v118, &qword_100219278);
  sub_10000D52C(v85, &qword_100219278);
  v88(v77, v71);
  sub_10000D52C(v61, &qword_100219278);
  v66 = v112;
  v76 = v125;
  v65 = v129;
  if (v87)
  {
    goto LABEL_16;
  }

LABEL_17:
  static Alignment.center.getter();
  v89 = v111;
  v90 = v135;
  v91 = v132;
  View.containerRelativeFrame(_:count:span:spacing:alignment:)();
  (*(v124 + 8))(v91, v89);
  v142 = v89;
  v143 = v90;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v65, v66, OpaqueTypeConformance2);
  v93 = v65;
  v94 = v76;
  v95 = v134;
  v96 = *(v134 + 8);
  v96(v93, v66);
  v97 = v123;
  sub_100157EFC(v94, v66, OpaqueTypeConformance2);
  v96(v94, v66);
  v98 = v107;
  (*(v95 + 32))(v107, v97, v66);
  (*(v95 + 56))(v98, 0, 1, v66);
  v99 = v108;
  sub_100150FB8(v98, v108);
  v100 = *(v109 + 8);
  v101 = v110;
  v100(v98, v110);
  (*(v139 + 8))(v137, v140);
  v142 = v89;
  v143 = v90;
  v141 = swift_getOpaqueTypeConformance2();
  v102 = swift_getWitnessTable();
  sub_100157EFC(v99, v101, v102);
  return (v100)(v99, v101);
}

uint64_t sub_100125764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a3;
  v69 = a2;
  v78 = a1;
  v74 = a6;
  v72 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v72);
  v73 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Optional();
  v9 = type metadata accessor for Binding();
  __chkstk_darwin(v9 - 8);
  v66 = &v63 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  __chkstk_darwin(v13);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v18;
  v19 = a5;
  v20 = type metadata accessor for FeaturedVideoPlayer();
  v67 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  v68 = type metadata accessor for ModifiedContent();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v63 - v23;
  sub_10000B3DC(&qword_100218928);
  v76 = type metadata accessor for ModifiedContent();
  v79 = *(v76 - 8);
  v24 = __chkstk_darwin(v76);
  v75 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v77 = &v63 - v26;
  (*(v16 + 16))(v18, v78, a4);
  v27 = v15;
  (*(v12 + 16))(v15, v69, v11);
  v28 = a4;
  v29 = v19;
  type metadata accessor for FeaturedVideosView();
  sub_1001219B0();
  LOBYTE(v16) = sub_1000A6678();

  v30 = v66;
  sub_10012205C();
  v31 = v16 & 1;
  v32 = v28;
  sub_10010A144(v64, v27, v31, v30, v28, v22);
  WitnessTable = swift_getWitnessTable();
  v34 = v65;
  View.aspectRatio(_:contentMode:)();
  (*(v67 + 8))(v22, v20);
  if (static Solarium.isEnabled.getter())
  {
    v35 = 16.0;
  }

  else
  {
    v35 = 8.0;
  }

  v36 = *(v72 + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  v39 = v73;
  (*(*(v38 - 8) + 104))(v73 + v36, v37, v38);
  *v39 = v35;
  v39[1] = v35;
  v40 = v39;
  v90[5] = WitnessTable;
  v90[6] = &protocol witness table for _AspectRatioLayout;
  v41 = v68;
  v42 = swift_getWitnessTable();
  sub_10012719C(&qword_10021EBE0, &type metadata accessor for RoundedRectangle);
  v43 = v75;
  View.clipShape<A>(_:style:)();
  sub_1000A3C3C(v40);
  (*(v71 + 8))(v34, v41);
  v44 = sub_10000D1EC(&qword_100218920, &qword_100218928);
  v90[3] = v42;
  v90[4] = v44;
  v45 = v76;
  v72 = swift_getWitnessTable();
  sub_100157EFC(v43, v45, v72);
  v73 = *(v79 + 8);
  (v73)(v43, v45);
  v83 = (*(v29 + 56))(v32, v29);
  v84 = v46;
  sub_100027068();
  v47 = Text.init<A>(_:)();
  v49 = v48;
  LOBYTE(v43) = v50;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v51 = Text.font(_:)();
  v53 = v52;
  LOBYTE(v45) = v54;
  v56 = v55;

  sub_10000D60C(v47, v49, v43 & 1);

  KeyPath = swift_getKeyPath();
  v58 = v75;
  v59 = v77;
  v60 = v76;
  (*(v79 + 16))(v75, v77, v76);
  v83 = v51;
  v84 = v53;
  LOBYTE(v45) = v45 & 1;
  v85 = v45;
  v86 = v56;
  v87 = KeyPath;
  v88 = 1;
  v89 = 0;
  v90[0] = v58;
  v90[1] = &v83;
  sub_10000D5FC(v51, v53, v45);

  v82[0] = v60;
  v82[1] = sub_100009F70(&qword_1002197F0);
  v80 = v72;
  v81 = sub_10002764C();
  sub_100151024(v90, 2uLL, v82);
  sub_10000D60C(v51, v53, v45);

  v61 = v73;
  (v73)(v59, v60);
  sub_10000D60C(v83, v84, v85);

  return (v61)(v58, v60);
}

uint64_t sub_10012605C()
{
  type metadata accessor for PinnedScrollableViews();
  sub_10012719C(&qword_10021DAA8, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1001260DC(uint64_t a1)
{
  v2 = type metadata accessor for FeaturedVideosView();
  sub_1001219B0();
  v3 = [objc_opt_self() defaultCenter];
  if (qword_100218418 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_1002305F0 object:0 userInfo:0];

  sub_1001219B0();
  if (*(a1 + *(v2 + 44)))
  {

    sub_1000A69C4(v4);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10012719C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012623C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = type metadata accessor for FeaturedVideosView();
  v27 = a1;
  sub_1000F876C(v15, &Binding.wrappedValue.getter);
  v16 = *(v4 + 48);
  v17 = v16(v14, 1, a2);
  v26 = *(v7 + 8);
  result = v26(v14, v6);
  if (v17 == 1)
  {
    v23 = v4;
    sub_1001219B0();
    v19 = sub_1000A6D08();

    v28 = v19;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if (v16(v12, 1, a2) == 1)
    {
      v26(v12, v6);
    }

    else
    {
      v20 = v23;
      v21 = v25;
      (*(v23 + 32))(v25, v12, a2);

      v22 = v24;
      (*(v20 + 16))(v24, v21, a2);
      (*(v20 + 56))(v22, 0, 1, a2);
      sub_100126C60(v22);
      v26(v22, v6);
      return (*(v20 + 8))(v21, a2);
    }
  }

  return result;
}

uint64_t sub_1001265A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012663C);
}

uint64_t sub_10012663C()
{

  type metadata accessor for FeaturedVideosView();
  sub_1001219B0();
  sub_10004FF88();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001266DC()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for FeaturedVideosView();
  v17 = *(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v17 + 48) & ~v17);
  type metadata accessor for FeaturedVideosViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v2[9];

  type metadata accessor for Optional();
  v6 = *(type metadata accessor for Binding() + 32);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  v9 = v3 + v2[10];
  if (!v8(v9, 1, v1))
  {
    (*(v7 + 8))(v9, v1);
  }

  type metadata accessor for State();

  v10 = v2[12];
  sub_100009F70(&qword_1002196E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v3 + v10, 1, v11))
    {
      (*(v12 + 8))(v3 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v2[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v3 + v13, 1, v14))
    {
      (*(v15 + 8))(v3 + v13, v14);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100126A80()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for FeaturedVideosView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000D890;

  return sub_1001265A0(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_100126BC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for FeaturedVideosView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_100126C60(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_100126D58()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FeaturedVideosView();
  v17 = *(*(v2 - 1) + 80);
  v3 = v0 + ((v17 + 32) & ~v17);
  type metadata accessor for FeaturedVideosViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v2[9];

  type metadata accessor for Optional();
  v6 = *(type metadata accessor for Binding() + 32);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  v9 = v3 + v2[10];
  if (!v8(v9, 1, v1))
  {
    (*(v7 + 8))(v9, v1);
  }

  type metadata accessor for State();

  v10 = v2[12];
  sub_100009F70(&qword_1002196E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v3 + v10, 1, v11))
    {
      (*(v12 + 8))(v3 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v2[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v3 + v13, 1, v14))
    {
      (*(v15 + 8))(v3 + v13, v14);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001270F0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for FeaturedVideosView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1001246D4(a1, v8, v5, v6, a2);
}

uint64_t sub_10012719C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001271E4()
{
  sub_10000B3DC(&qword_10021A618);
  type metadata accessor for Array();
  type metadata accessor for FeaturedVideoPlayer();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002197F0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100127738(uint64_t a1)
{
  *(a1 + 8) = sub_1001277A0(&qword_100220208);
  result = sub_1001277A0(&qword_100220210);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001277A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001277F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRowViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100127878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistEventRowViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ArtistEventRow()
{
  result = qword_100220270;
  if (!qword_100220270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100127934()
{
  result = type metadata accessor for ArtistEventRowViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001279BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100009F70(&qword_1002202C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_100009F70(&qword_1002202D0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_100009F70(&qword_1002202D8);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  v23 = *(type metadata accessor for ArtistEventRowViewModel() + 24);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 16))(v22, a1 + v23, v24);
  v25 = *(type metadata accessor for CalendarIcon() + 20);
  *&v22[v25] = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  v22[*(v17 + 44)] = 1;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v26 = sub_100009F70(&qword_1002202E0);
  sub_100127D90(a1, &v5[*(v26 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v5, v13, &qword_1002202C8);
  v27 = &v13[*(v7 + 44)];
  v28 = v41;
  *(v27 + 4) = v40;
  *(v27 + 5) = v28;
  *(v27 + 6) = v42;
  v29 = v37;
  *v27 = v36;
  *(v27 + 1) = v29;
  v30 = v39;
  *(v27 + 2) = v38;
  *(v27 + 3) = v30;
  sub_10000F618(v13, v15, &qword_1002202D0);
  sub_10000D58C(v22, v20, &qword_1002202D8);
  sub_10000D58C(v15, v10, &qword_1002202D0);
  v31 = v35;
  sub_10000D58C(v20, v35, &qword_1002202D8);
  v32 = sub_100009F70(&qword_1002202E8);
  sub_10000D58C(v10, v31 + *(v32 + 48), &qword_1002202D0);
  sub_10000D52C(v15, &qword_1002202D0);
  sub_10000D52C(v22, &qword_1002202D8);
  sub_10000D52C(v10, &qword_1002202D0);
  return sub_10000D52C(v20, &qword_1002202D8);
}

uint64_t sub_100127D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100009F70(&qword_10021DB10);
  v4 = __chkstk_darwin(v3 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v48 - v6;
  v7 = sub_100009F70(&qword_1002202F0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = a1[1];
  v53 = *a1;
  v54 = v13;
  v48 = sub_100027068();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v13) = v17;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v53 = v14;
  v54 = v16;
  v55 = v13 & 1;
  v56 = v19;
  v57 = KeyPath;
  v58 = 1;
  v59 = 0;
  sub_100009F70(&qword_1002197F0);
  sub_10002764C();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v14, v16, v13 & 1);

  v21 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v22 = &v12[*(v8 + 44)];
  *v22 = v21;
  v22[1] = sub_100128200;
  v22[2] = 0;
  v23 = a1[3];
  v53 = a1[2];
  v54 = v23;

  v24 = Text.init<A>(_:)();
  v26 = v25;
  LOBYTE(v19) = v27;
  static Font.subheadline.getter();
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;

  sub_10000D60C(v24, v26, v19 & 1);

  v33 = [objc_opt_self() secondaryLabelColor];
  v53 = Color.init(uiColor:)();
  v34 = Text.foregroundStyle<A>(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000D60C(v28, v30, v32 & 1);

  v53 = v34;
  v54 = v36;
  v55 = v38 & 1;
  v56 = v40;
  v41 = v50;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v34, v36, v38 & 1);

  v42 = v49;
  sub_10000D58C(v12, v49, &qword_1002202F0);
  v43 = v41;
  v44 = v51;
  sub_10000D58C(v41, v51, &qword_10021DB10);
  v45 = v52;
  sub_10000D58C(v42, v52, &qword_1002202F0);
  v46 = sub_100009F70(&qword_1002202F8);
  sub_10000D58C(v44, v45 + *(v46 + 48), &qword_10021DB10);
  sub_10000D52C(v43, &qword_10021DB10);
  sub_10000D52C(v12, &qword_1002202F0);
  sub_10000D52C(v44, &qword_10021DB10);
  return sub_10000D52C(v42, &qword_1002202F0);
}

uint64_t sub_100128228@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_1002202A8);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_100009F70(&qword_1002202B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = sub_100009F70(&qword_1002202B8);
  sub_1001279BC(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_10000D1EC(&qword_1002202C0, &qword_1002202A8);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_10000D52C(v7, &qword_1002202A8);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1001284EC()
{
  result = qword_100220300;
  if (!qword_100220300)
  {
    sub_10000B3DC(&qword_100220308);
    sub_10000B3DC(&qword_1002202A8);
    sub_10000D1EC(&qword_1002202C0, &qword_1002202A8);
    swift_getOpaqueTypeConformance2();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220300);
  }

  return result;
}

void sub_100128630()
{
  v1 = type metadata accessor for DesignTimeImage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  String.hash(into:)();
  String.hash(into:)();
  v8 = type metadata accessor for DesignTimeArtist();
  sub_100128D18(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100028E88(v7, v4);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    type metadata accessor for URL();
    sub_100128DE4(&qword_1002191D8, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    if (*&v4[*(v1 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_100128DE4(&qword_1002194F8, type metadata accessor for CGColor);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v4[*(v1 + 28)]);
    sub_100128D88(v4);
  }
}

uint64_t sub_1001288AC(uint64_t a1)
{
  *(a1 + 8) = sub_100128DE4(&qword_100220350, type metadata accessor for DesignTimeArtist);
  result = sub_100128DE4(&qword_100220358, type metadata accessor for DesignTimeArtist);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeArtist()
{
  result = qword_1002203C0;
  if (!qword_1002203C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1001289C4()
{
  Hasher.init(_seed:)();
  sub_100128630();
  return Hasher._finalize()();
}

Swift::Int sub_100128A08()
{
  Hasher.init(_seed:)();
  sub_100128630();
  return Hasher._finalize()();
}

BOOL sub_100128A48(void *a1, void *a2)
{
  v4 = type metadata accessor for DesignTimeImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v19 - v9);
  v11 = sub_100009F70(&qword_10021E8F8);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for DesignTimeArtist() + 24);
  v15 = *(v11 + 48);
  sub_100128D18(a1 + v14, v13);
  sub_100128D18(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100128D18(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100028E88(&v13[v15], v7);
      v18 = sub_100022244(v10, v7);
      sub_100128D88(v7);
      sub_100128D88(v10);
      sub_10000D52C(v13, &qword_10021E8F0);
      return (v18 & 1) != 0;
    }

    sub_100128D88(v10);
LABEL_12:
    sub_10000D52C(v13, &qword_10021E8F8);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_10000D52C(v13, &qword_10021E8F0);
  return 1;
}

uint64_t sub_100128D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100128D88(uint64_t a1)
{
  v2 = type metadata accessor for DesignTimeImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100128DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100128E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100128F10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_10021E8F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100128FC0()
{
  sub_100129044();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100129044()
{
  if (!qword_10021E980)
  {
    type metadata accessor for DesignTimeImage();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10021E980);
    }
  }
}

uint64_t sub_1001290C0(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100219278);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_100219278);
  return EnvironmentValues.verticalSizeClass.setter();
}

uint64_t sub_100129168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100220420);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_1001292A8();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_100129908();

  View.onContinueUserActivity(_:perform:)();

  return sub_10000D52C(v6, &qword_100220420);
}

uint64_t sub_1001292A8()
{
  v0 = sub_100009F70(&qword_100220448);
  __chkstk_darwin(v0);
  v2 = (&v12 - v1);
  v3 = sub_100009F70(&qword_100220470);
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v13;
  if (v13)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100129B2C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *v2 = EnvironmentObject.init()();
    v2[1] = v7;
    v8 = *(type metadata accessor for EventRootView() + 20);
    *(v2 + v8) = swift_getKeyPath();
    sub_100009F70(&qword_1002196E8);
    swift_storeEnumTagMultiPayload();
    v9 = static ObservableObject.environmentStore.getter();
    v10 = (v2 + *(v0 + 36));
    *v10 = v9;
    v10[1] = v6;
    sub_10000D58C(v2, v5, &qword_100220448);
    swift_storeEnumTagMultiPayload();
    sub_100129A18();
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v2, &qword_100220448);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100129A18();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10012953C()
{
  v1 = sub_100009F70(&qword_100220410);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_100009F70(&qword_100220418);
  v8 = sub_10000B3DC(&qword_100220420);
  v9 = sub_100129908();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000D1EC(&qword_100220468, &qword_100220410);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100129720@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShazamEventsAppModel();
  v2 = swift_allocObject();
  sub_100009F70(&unk_10021E088);
  Published.init(initialValue:)();
  v3 = (v2 + OBJC_IVAR____TtC15ShazamEventsApp20ShazamEventsAppModel_userActivityType);
  *v3 = 0xD000000000000021;
  v3[1] = 0x80000001001C13F0;
  sub_100129B2C(&qword_100220408, type metadata accessor for ShazamEventsAppModel);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100129848();
  static App.main()();
  return 0;
}

unint64_t sub_100129848()
{
  result = qword_100220400;
  if (!qword_100220400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220400);
  }

  return result;
}

uint64_t sub_1001298C8()
{

  return swift_deallocObject();
}

unint64_t sub_100129908()
{
  result = qword_100220428;
  if (!qword_100220428)
  {
    sub_10000B3DC(&qword_100220420);
    sub_10012998C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220428);
  }

  return result;
}

unint64_t sub_10012998C()
{
  result = qword_100220430;
  if (!qword_100220430)
  {
    sub_10000B3DC(&qword_100220438);
    sub_100129A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220430);
  }

  return result;
}

unint64_t sub_100129A18()
{
  result = qword_100220440;
  if (!qword_100220440)
  {
    sub_10000B3DC(&qword_100220448);
    sub_100129B2C(&qword_100220450, type metadata accessor for EventRootView);
    sub_10000D1EC(&qword_100220458, &qword_100220460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220440);
  }

  return result;
}

uint64_t sub_100129B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100129CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100129D2C()
{
  sub_100009F70(&qword_1002204E0);
  v0 = *(type metadata accessor for DesignTimeImage() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001ACB00;
  sub_1000214E8((v3 + v2));
  sub_1000214E8((v3 + v2 + v1));
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001ACB00;
  v5 = v4 + v2;
  sub_1000214E8((v4 + v2));
  sub_1000214E8((v5 + v1));
  sub_100009F70(&qword_1002204E8);
  v6 = *(type metadata accessor for DesignTimeWatchFace() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001ACB00;
  v10 = v9 + v8;
  sub_1000D7284(v10);
  sub_1000D7284(v10 + v7);
  sub_100009F70(&qword_1002204F0);
  v11 = *(type metadata accessor for DesignTimeVideo() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001ACB00;
  v15 = (v14 + v13);
  sub_100028668(v15);
  sub_100028668((v15 + v12));
  return v3;
}

uint64_t sub_100129F88()
{
  result = static Solarium.isEnabled.getter();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1002305F8 = *&v1;
  return result;
}

uint64_t sub_100129FB8()
{
  result = static Solarium.isEnabled.getter();
  v1 = 8.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_100230600 = *&v1;
  return result;
}

uint64_t value<A>(iOS:iPadOS:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    return a3();
  }

  else
  {
    return a1();
  }
}

uint64_t sub_10012A094(uint64_t a1)
{
  *(a1 + 8) = sub_10012A0FC(&qword_1002204F8);
  result = sub_10012A0FC(&qword_100220500);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10012A0FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Ticket();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012A16C(uint64_t a1, uint64_t a2)
{
  v167 = a1;
  v139 = *v2;
  v4 = v139;
  v154 = sub_100009F70(&qword_100220550);
  __chkstk_darwin(v154);
  v153 = &v127 - v5;
  v6 = sub_100009F70(&qword_10021F5E0);
  __chkstk_darwin(v6 - 8);
  v165 = &v127 - v7;
  v161 = type metadata accessor for DateInterval();
  v164 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Time();
  v163 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Music();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v173 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v127 - v15;
  __chkstk_darwin(v14);
  v170 = &v127 - v17;
  v18 = sub_100009F70(&qword_10021F5E8);
  v19 = __chkstk_darwin(v18 - 8);
  v156 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v171 = &v127 - v21;
  v22 = type metadata accessor for Date();
  v166 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v151 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v150 = &v127 - v26;
  v27 = __chkstk_darwin(v25);
  v168 = &v127 - v28;
  __chkstk_darwin(v27);
  v169 = &v127 - v29;
  v30 = type metadata accessor for Locale();
  __chkstk_darwin(v30 - 8);
  v31 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v31 - 8);
  v2[16] = 0;
  v32 = *(v4 + 120);
  v172 = v11;
  v33 = *(v11 + 56);
  v137 = v32;
  v158 = v10;
  v33(&v2[v32], 1, 1, v10);
  v34 = &v2[*(*v2 + 128)];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v136 = v34;
  v2[*(*v2 + 136)] = 0;
  v35 = &v2[*(*v2 + 152)];
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v134 = v35;
  v36 = &v2[*(*v2 + 184)];
  *v36 = LocalizedStringKey.init(stringLiteral:)();
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v138 = v36;
  *(v36 + 3) = v39;
  v40 = &v2[*(*v2 + 192)];
  *v40 = LocalizedStringKey.init(stringLiteral:)();
  *(v40 + 1) = v41;
  v40[16] = v42 & 1;
  v135 = v40;
  *(v40 + 3) = v43;
  v44 = &v2[*(*v2 + 200)];
  *v44 = LocalizedStringKey.init(stringLiteral:)();
  *(v44 + 1) = v45;
  v44[16] = v46 & 1;
  v133 = v44;
  *(v44 + 3) = v47;
  v48 = &v2[*(*v2 + 208)];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v48 = String.init(localized:table:bundle:locale:comment:)();
  v48[1] = v49;
  v132 = v48;
  v130 = *(*v2 + 216);
  LocalizedStringResource.init(stringLiteral:)();
  v131 = *(*v2 + 224);
  ObservationRegistrar.init()();
  v50 = *(*v2 + 168);
  v51 = type metadata accessor for Venue();
  v52 = *(v51 - 8);
  v53 = *(v52 + 16);
  v129 = v50;
  v53(&v2[v50], v167, v51);
  v128 = *(*v2 + 176);
  *&v2[v128] = a2;
  v54 = *(*v2 + 160);
  v155 = v2;
  v127 = v54;
  *&v2[v54] = a2;
  v55 = *(a2 + 16);
  v162 = a2;
  v152 = v22;
  v149 = v51;
  v148 = v52;
  if (v55)
  {
    v146 = v16;
    v56 = v172;
    v57 = a2 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = *(v172 + 16);
    v59 = v170;
    v60 = v158;
    v145 = v172 + 16;
    v147 = v58;
    v58(v170, v57, v158);
    swift_bridgeObjectRetain_n();
    v61 = v22;
    v62 = v157;
    Music.time.getter();
    v63 = v56 + 8;
    v64 = v163;
    v65 = v60;
    v66 = *(v56 + 8);
    v66(v59, v65);
    v67 = v160;
    sub_1000FA360(v160);
    v68 = *(v64 + 8);
    v69 = v62;
    v70 = v61;
    v163 = v64 + 8;
    v144 = v68;
    v68(v69, v159);
    v71 = v171;
    DateInterval.start.getter();
    v72 = *(v164 + 8);
    v164 += 8;
    v142 = v72;
    v72(v67, v161);
    v73 = v166;
    v74 = v166 + 56;
    v143 = *(v166 + 56);
    v143(v71, 0, 1, v70);
    v141 = *(v73 + 32);
    v141(v169, v71, v70);
    if (v55 > *(v162 + 16))
    {
      goto LABEL_31;
    }

    v75 = v70;
    v170 = *(v172 + 72);
    v76 = v146;
    v140 = v74;
    v77 = v158;
    v78 = v145;
    v147(v146, v57 + v170 * (v55 - 1), v158);
    v79 = v157;
    Music.time.getter();
    v171 = v66;
    v172 = v63;
    v66(v76, v77);
    v80 = v160;
    sub_1000FA360(v160);
    v144(v79, v159);
    v81 = v156;
    DateInterval.start.getter();
    v142(v80, v161);
    v143(v81, 0, 1, v75);
    v82 = v168;
    v141(v168, v81, v75);
    sub_100106088(v169, v82, v165);
    v83 = &_swiftEmptyArrayStorage;
    v84 = v77;
    v85 = v78;
    v86 = v147;
    while (1)
    {
      v87 = v173;
      v88 = v85;
      v89 = v86;
      v86(v173, v57, v84);
      v90 = Music.genres.getter();
      v91 = v84;
      (v171)(v87, v84);
      v92 = *(v90 + 16);
      v93 = v83[2];
      v94 = v93 + v92;
      if (__OFADD__(v93, v92))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);

        v124 = v155;
        sub_10000D52C(&v155[v137], &qword_10021E4E0);

        (*(v148 + 8))(&v124[v129], v149);

        v125 = type metadata accessor for LocalizedStringResource();
        (*(*(v125 - 8) + 8))(&v124[v130], v125);
        v126 = type metadata accessor for ObservationRegistrar();
        (*(*(v126 - 8) + 8))(&v124[v131], v126);
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v94 <= v83[3] >> 1)
      {
        if (*(v90 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v93 <= v94)
        {
          v96 = v93 + v92;
        }

        else
        {
          v96 = v93;
        }

        v83 = sub_100166958(isUniquelyReferenced_nonNull_native, v96, 1, v83);
        if (*(v90 + 16))
        {
LABEL_15:
          v97 = (v83[3] >> 1) - v83[2];
          type metadata accessor for Music.Genre();
          if (v97 < v92)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          v84 = v91;
          v85 = v88;
          v86 = v89;
          if (v92)
          {
            v98 = v83[2];
            v99 = __OFADD__(v98, v92);
            v100 = v98 + v92;
            if (v99)
            {
              goto LABEL_30;
            }

            v83[2] = v100;
          }

          goto LABEL_5;
        }
      }

      v84 = v91;
      v85 = v88;
      v86 = v89;
      if (v92)
      {
        goto LABEL_28;
      }

LABEL_5:
      v57 += v170;
      if (!--v55)
      {
        goto LABEL_24;
      }
    }
  }

  v101 = v166;
  v102 = *(v166 + 56);
  v103 = v171;
  v102(v171, 1, 1, v22);
  swift_bridgeObjectRetain_n();
  v104 = v169;
  Date.init()();
  v105 = *(v101 + 48);
  if (v105(v103, 1, v22) != 1)
  {
    sub_10000D52C(v103, &qword_10021F5E8);
  }

  v106 = v156;
  v102(v156, 1, 1, v22);
  Date.init()();
  if (v105(v106, 1, v22) != 1)
  {
    sub_10000D52C(v106, &qword_10021F5E8);
  }

  sub_100106088(v104, v168, v165);
  v83 = &_swiftEmptyArrayStorage;
LABEL_24:
  v107 = sub_100082F68(v83);

  v108 = *(v107 + 16);
  v109 = &_swiftEmptyArrayStorage;
  if (v108)
  {
    v109 = sub_100166D14(*(v107 + 16), 0);
    v110 = *(type metadata accessor for Music.Genre() - 8);
    v111 = sub_10012E08C(&v174, &v109[(*(v110 + 80) + 32) & ~*(v110 + 80)], v108, v107);

    sub_10012E4B0();
    if (v111 != v108)
    {
      goto LABEL_32;
    }
  }

  v175 = v109;
  sub_10012C6CC(&v175);
  v112 = v152;

  v173 = v175;
  v113 = v166;
  v114 = *(v166 + 16);
  v115 = v169;
  v114(v150, v169, v112);
  v116 = v168;
  v114(v151, v168, v112);
  v117 = v154;
  v118 = v153;
  DateInterval.init(start:end:)();
  v119 = v165;
  sub_10000D58C(v165, v118 + v117[12], &qword_10021F5E0);
  (*(v148 + 8))(v167, v149);
  sub_10000D52C(v119, &qword_10021F5E0);
  v120 = *(v113 + 8);
  v120(v116, v112);
  v120(v115, v112);
  v121 = v162;
  *v118 = 0;
  v118[1] = v121;
  v118[2] = &_swiftEmptyArrayStorage;
  *(v118 + v117[13]) = v173;
  *(v118 + v117[14]) = &_swiftEmptySetSingleton;
  v122 = v155;
  sub_10012E4B8(v118, &v155[*(*v155 + 144)]);
  return v122;
}

uint64_t sub_10012B2E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10012C624(&qword_10021CB88, type metadata accessor for VenueController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  return sub_10009FFA4(v3 + v4, a2);
}

uint64_t sub_10012B3A8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10009FFA4(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10012C624(&qword_10021CB88, type metadata accessor for VenueController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10009FE78(v6);
}

uint64_t sub_10012B4D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v74 = sub_100009F70(&qword_10021B988);
  __chkstk_darwin(v74);
  v59 = (&v57 - v3);
  v69 = sub_100009F70(&qword_10021B968);
  __chkstk_darwin(v69);
  v60 = (&v57 - v4);
  v71 = sub_100009F70(&qword_100220508);
  __chkstk_darwin(v71);
  v72 = &v57 - v5;
  v66 = sub_100009F70(&qword_100220510);
  __chkstk_darwin(v66);
  v67 = &v57 - v6;
  v70 = sub_100009F70(&qword_100220518);
  __chkstk_darwin(v70);
  v68 = &v57 - v7;
  v58 = type metadata accessor for Date();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100009F70(&qword_100220520);
  __chkstk_darwin(v65);
  v11 = (&v57 - v10);
  v64 = type metadata accessor for Venue();
  v63 = *(v64 - 8);
  v12 = __chkstk_darwin(v64);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v57 - v15;
  v16 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 24);
  v61 = *(v1 + 16);
  v76 = v61;
  v77 = v19;
  sub_100009F70(&qword_100220528);
  State.wrappedValue.getter();
  v20 = v79;
  swift_getKeyPath();
  v76 = v20;
  sub_10012C624(&qword_10021CB88, type metadata accessor for VenueController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  sub_10009FFA4(v20 + v21, v18);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10009FE78(v18);
      KeyPath = swift_getKeyPath();
      v24 = v60;
      *v60 = KeyPath;
      sub_100009F70(&qword_100219710);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for ErrorView();
      v26 = *(v25 + 20);
      *(v24 + v26) = swift_getKeyPath();
      sub_100009F70(&qword_100219718);
      swift_storeEnumTagMultiPayload();
      v27 = (v24 + *(v25 + 24));
      type metadata accessor for RemoteViewConfiguration();
      sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      *v27 = EnvironmentObject.init()();
      v27[1] = v28;
      v29 = *v2;
      v80[0] = v19;
      v78 = v2[2];
      v79 = v29;
      v30 = swift_allocObject();
      v31 = v2[1];
      *(v30 + 1) = *v2;
      *(v30 + 2) = v31;
      *(v30 + 3) = v2[2];
      v32 = (v24 + *(v69 + 36));
      *v32 = sub_10012C6C4;
      v32[1] = v30;
      v32[2] = 0;
      v32[3] = 0;
      v33 = &qword_10021B968;
      sub_10000D58C(v24, v67, &qword_10021B968);
      swift_storeEnumTagMultiPayload();
      sub_100081738(&v79, v75);

      sub_10000D58C(v80, v75, &qword_100220530);
      sub_10000D58C(&v78, v75, &qword_10021B9F0);
      sub_10012C5C0();
      sub_100080BB4();
      v34 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_10000D58C(v34, v72, &qword_100220518);
      swift_storeEnumTagMultiPayload();
      sub_10012C534();
      sub_100080AC8();
      _ConditionalContent<>.init(storage:)();
      sub_10000D52C(v34, &qword_100220518);
      v35 = v24;
    }

    else
    {
      v49 = swift_getKeyPath();
      v50 = v59;
      *v59 = v49;
      sub_100009F70(&qword_100219710);
      swift_storeEnumTagMultiPayload();
      v51 = (v50 + *(type metadata accessor for LoadingView() + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      *v51 = EnvironmentObject.init()();
      v51[1] = v52;
      v53 = *v2;
      v80[0] = v19;
      v78 = v2[2];
      v79 = v53;
      v54 = swift_allocObject();
      v55 = v2[1];
      v54[1] = *v2;
      v54[2] = v55;
      v54[3] = v2[2];
      v56 = (v50 + *(v74 + 36));
      type metadata accessor for _TaskModifier();
      sub_100081738(&v79, v75);

      sub_10000D58C(v80, v75, &qword_100220530);
      sub_10000D58C(&v78, v75, &qword_10021B9F0);
      static TaskPriority.userInitiated.getter();
      *v56 = &unk_1001B8D58;
      v56[1] = v54;
      v33 = &qword_10021B988;
      sub_10000D58C(v50, v72, &qword_10021B988);
      swift_storeEnumTagMultiPayload();
      sub_10012C534();
      sub_100080AC8();
      _ConditionalContent<>.init(storage:)();
      v35 = v50;
    }

    return sub_10000D52C(v35, v33);
  }

  else
  {
    v36 = *&v18[*(sub_100009F70(&qword_10021CB98) + 48)];
    v37 = v63;
    v38 = v62;
    v39 = v64;
    (*(v63 + 32))(v62, v18, v64);
    (*(v37 + 16))(v14, v38, v39);
    v40 = static Date.now.getter();
    __chkstk_darwin(v40);
    *(&v57 - 2) = v9;
    v41 = sub_1000FADCC(sub_10007583C, (&v57 - 4), v36);
    (*(v57 + 8))(v9, v58);
    sub_100009F70(&qword_100220548);
    swift_allocObject();
    *&v78 = sub_10012A16C(v14, v41);
    State.init(wrappedValue:)();
    v42 = *(&v79 + 1);
    *v11 = v79;
    v11[1] = v42;
    v43 = v65;
    v44 = *(v65 + 52);
    *(v11 + v44) = swift_getKeyPath();
    sub_100009F70(&qword_100219710);
    swift_storeEnumTagMultiPayload();
    v45 = (v11 + *(v43 + 56));
    type metadata accessor for RemoteViewConfiguration();
    sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *v45 = EnvironmentObject.init()();
    v45[1] = v46;
    sub_10000D58C(v11, v67, &qword_100220520);
    swift_storeEnumTagMultiPayload();
    sub_10012C5C0();
    sub_100080BB4();
    v47 = v68;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v47, v72, &qword_100220518);
    swift_storeEnumTagMultiPayload();
    sub_10012C534();
    sub_100080AC8();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v47, &qword_100220518);
    sub_10000D52C(v11, &qword_100220520);
    return (*(v63 + 8))(v62, v64);
  }
}

uint64_t sub_10012C090(uint64_t *a1)
{
  sub_100009F70(&qword_100220528);
  State.wrappedValue.getter();

  v2 = a1[4];
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];

    sub_1000DCEDC(v4, v3, 10, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10012C624(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10012C17C(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v1[7] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v2;

  return _swift_task_switch(sub_10012C214);
}

uint64_t sub_10012C214()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v1 + 16);
  sub_100009F70(&qword_100220528);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_10012C2E8;

  return sub_10009F264(v2, v3);
}

uint64_t sub_10012C2E8()
{

  return _swift_task_switch(sub_10012C42C);
}

uint64_t sub_10012C42C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012C4A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D890;

  return sub_10012C17C(v0 + 16);
}

unint64_t sub_10012C534()
{
  result = qword_100220538;
  if (!qword_100220538)
  {
    sub_10000B3DC(&qword_100220518);
    sub_10012C5C0();
    sub_100080BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220538);
  }

  return result;
}

unint64_t sub_10012C5C0()
{
  result = qword_100220540;
  if (!qword_100220540)
  {
    sub_10000B3DC(&qword_100220520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220540);
  }

  return result;
}

uint64_t sub_10012C624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012C674()
{

  return swift_deallocObject();
}

Swift::Int sub_10012C6CC(void **a1)
{
  v2 = *(type metadata accessor for Music.Genre() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10012E488(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10012C774(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10012C774(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Music.Genre();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Music.Genre() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10012CBAC(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_10012C8A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10012C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Music.Genre();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = Music.Genre.name.getter();
      v27 = v26;
      if (v25 == Music.Genre.name.getter() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10012CBAC(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = type metadata accessor for Music.Genre();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = *(a3 + 1);
  v143 = v25;
  if (v27 < 1)
  {
    v29 = &_swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_10012D768(&v123[*(v5 + 72) * v125], &v123[*(v5 + 72) * v126], &v123[*(v5 + 72) * v29], v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_10012DE90(a3);
          }

          if (v122 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v127 = &a3[16 * v122];
          *v127 = v125;
          *(v127 + 1) = v29;
          v155 = a3;
          result = sub_10012DE04(v122 - 1);
          v29 = v155;
          v122 = *(v155 + 16);
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_10012DE90(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = &_swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, &v32[v33 * v30], v9);
      v31 = Music.Genre.name.getter();
      v37 = v36;
      v38 = Music.Genre.name.getter();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = &v32[v42];
      v44 = v144 * v5;
      v45 = &v32[v144 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = Music.Genre.name.getter();
        v52 = v51;
        if (v50 == Music.Genre.name.getter() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = a3 + 1;
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              (v148)(v138, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10012DF88(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_10012DF88((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_10012D768(&v118[*(v143 + 72) * v119], &v118[*(v143 + 72) * v120], &v118[*(v143 + 72) * v29], v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_10012DE90(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v155 = a3;
        result = sub_10012DE04(v31);
        v29 = v155;
        v77 = *(v155 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = &v60[v31 * v61];
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = Music.Genre.name.getter();
    v69 = v68;
    if (v5 == Music.Genre.name.getter() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10012D768(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v71 = type metadata accessor for Music.Genre();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v22;
    if (v22 < 1)
    {
      v44 = a4 + v22;
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = a4 + v22;
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = (a2 + v42);
          v69 = (a2 + v42);
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = Music.Genre.name.getter();
            v52 = v51;
            if (v50 == Music.Genre.name.getter() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = (a4 + v21);
    v72 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = Music.Genre.name.getter();
        v32 = v31;
        if (v30 == Music.Genre.name.getter() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = v26 + v66;
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 += v66;
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_10012DEA4(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_10012DE04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10012DE90(v3);
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

uint64_t sub_10012DEA4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Music.Genre();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10012DF88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_100220558);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

uint64_t sub_10012E08C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Music.Genre();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10012E330(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10012E4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100220550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012E530()
{
  result = qword_100220560;
  if (!qword_100220560)
  {
    sub_10000B3DC(qword_100220568);
    sub_10012C534();
    sub_100080AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220560);
  }

  return result;
}

uint64_t sub_10012E5C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v16 = type metadata accessor for TourPhotosView();
  v17 = a7 + v16[9];
  *v17 = a1;
  *(v17 + 8) = a2;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4 & 1;
  v18 = a7 + v16[10];
  *v18 = a5;
  *(v18 + 8) = a6;
  *(v18 + 16) = a8;
  v19 = (a7 + v16[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10000E5F0();
  *v19 = EnvironmentObject.init()();
  v19[1] = v20;
  v21 = v16[12];
  *(a7 + v21) = swift_getKeyPath();
  sub_100009F70(&qword_100219720);

  return swift_storeEnumTagMultiPayload();
}

void sub_10012E76C()
{
  type metadata accessor for TourPhotosViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_10012EAF8();
    if (v1 <= 0x3F)
    {
      sub_10011E440();
      if (v2 <= 0x3F)
      {
        sub_10000B304();
        if (v3 <= 0x3F)
        {
          sub_10012EB5C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10012E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TourPhotosViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100009F70(&qword_10021BCA8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10012E9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for TourPhotosViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100009F70(&qword_10021BCA8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10012EAF8()
{
  if (!qword_1002205F0)
  {
    sub_10000B3DC(&qword_1002192A8);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1002205F0);
    }
  }
}

void sub_10012EB5C()
{
  if (!qword_10021BD18)
  {
    type metadata accessor for ContentSizeCategory();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10021BD18);
    }
  }
}

uint64_t sub_10012EBF8()
{
  type metadata accessor for TourPhotosViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_10012EC38()
{
  sub_100009F70(&qword_1002206B8);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_10012ECA4()
{
  sub_100009F70(&qword_1002206B8);
  Binding.projectedValue.getter();
  return v1;
}

double sub_10012ED14()
{
  sub_100009F70(&qword_10021FDB8);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_10012EDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v148 = a1;
  v145 = *(a1 - 8);
  v146 = *(v145 + 64);
  __chkstk_darwin(a1);
  v144 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PagingScrollTargetBehavior();
  v142 = *(v4 - 8);
  __chkstk_darwin(v4);
  v140 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Array();
  v7 = sub_10000B3DC(&qword_1002205F8);
  WitnessTable = swift_getWitnessTable();
  v170 = v6;
  v171 = &type metadata for Int;
  v172 = v7;
  v173 = WitnessTable;
  v174 = &protocol witness table for Int;
  type metadata accessor for ForEach();
  v143 = &protocol conformance descriptor for AsyncImage<A>;
  v169 = sub_10000D1EC(&qword_100220600, &qword_1002205F8);
  swift_getWitnessTable();
  v9 = type metadata accessor for HStack();
  v10 = swift_getWitnessTable();
  v170 = v9;
  v171 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = v9;
  v171 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for ScrollView();
  v138 = *(v11 - 8);
  __chkstk_darwin(v11);
  v126 = &v92 - v12;
  v13 = swift_getWitnessTable();
  v170 = v11;
  v171 = v4;
  v119 = v4;
  v120 = v11;
  v172 = v13;
  v173 = &protocol witness table for PagingScrollTargetBehavior;
  v14 = v13;
  v121 = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v136 = *(v15 - 8);
  __chkstk_darwin(v15);
  v118 = &v92 - v16;
  v170 = v11;
  v171 = v4;
  v172 = v14;
  v173 = &protocol witness table for PagingScrollTargetBehavior;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = v15;
  v116 = v15;
  v117 = v17;
  v170 = v15;
  v171 = &type metadata for Int;
  v172 = v17;
  v173 = &protocol witness table for Int;
  v19 = v17;
  v20 = swift_getOpaqueTypeMetadata2();
  v130 = *(v20 - 8);
  __chkstk_darwin(v20);
  v115 = &v92 - v21;
  v170 = v18;
  v171 = &type metadata for Int;
  v172 = v19;
  v173 = &protocol witness table for Int;
  v22 = swift_getOpaqueTypeConformance2();
  v170 = v20;
  v171 = v22;
  v94 = v20;
  v95 = v22;
  v128 = swift_getOpaqueTypeMetadata2();
  v133 = *(v128 - 8);
  __chkstk_darwin(v128);
  v114 = &v92 - v23;
  sub_10000B3DC(&qword_100220608);
  v24 = type metadata accessor for ModifiedContent();
  v134 = *(v24 - 8);
  __chkstk_darwin(v24);
  v123 = &v92 - v25;
  v99 = v24;
  v26 = type metadata accessor for ModifiedContent();
  v129 = *(v26 - 8);
  __chkstk_darwin(v26);
  v125 = &v92 - v27;
  sub_10000B3DC(&qword_10021B630);
  v100 = v26;
  v28 = type metadata accessor for ModifiedContent();
  v135 = *(v28 - 8);
  __chkstk_darwin(v28);
  v122 = &v92 - v29;
  sub_10000B3DC(&qword_100220610);
  v102 = v28;
  v30 = type metadata accessor for ModifiedContent();
  v137 = *(v30 - 8);
  __chkstk_darwin(v30);
  v124 = &v92 - v31;
  v104 = v30;
  v32 = type metadata accessor for ModifiedContent();
  v139 = *(v32 - 8);
  __chkstk_darwin(v32);
  v127 = &v92 - v33;
  v34 = sub_10000B3DC(&qword_1002192A8);
  v110 = v34;
  v170 = v20;
  v171 = v22;
  v35 = swift_getOpaqueTypeConformance2();
  v96 = v35;
  v36 = sub_10000D1EC(&qword_100220618, &qword_100220608);
  v167 = v35;
  v168 = v36;
  v98 = swift_getWitnessTable();
  v165 = v98;
  v166 = &protocol witness table for _FrameLayout;
  v37 = swift_getWitnessTable();
  v97 = v37;
  v38 = sub_10000D1EC(&qword_10021B628, &qword_10021B630);
  v163 = v37;
  v164 = v38;
  v39 = swift_getWitnessTable();
  v101 = v39;
  v40 = sub_10000D1EC(&qword_100220620, &qword_100220610);
  v161 = v39;
  v162 = v40;
  v103 = swift_getWitnessTable();
  v159 = v103;
  v160 = &protocol witness table for _PaddingLayout;
  v107 = v32;
  v41 = swift_getWitnessTable();
  v109 = v41;
  v108 = sub_10001F060();
  v170 = v32;
  v171 = v34;
  v172 = v41;
  v173 = v108;
  v111 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = *(v42 - 8);
  v112 = v42;
  v113 = v43;
  v44 = __chkstk_darwin(v42);
  v105 = &v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v106 = &v92 - v46;
  static Axis.Set.horizontal.getter();
  v47 = v149;
  v93 = *(v148 + 24);
  v156 = v149;
  v157 = v93;
  v48 = v141;
  v158 = v141;
  v49 = v126;
  ScrollView.init(_:showsIndicators:content:)();
  v50 = v140;
  PagingScrollTargetBehavior.init()();
  v51 = v118;
  v52 = v119;
  v53 = v120;
  View.scrollTargetBehavior<A>(_:)();
  (*(v142 + 8))(v50, v52);
  (*(v138 + 8))(v49, v53);
  v54 = v48;
  v170 = sub_10012ECA4();
  v171 = v55;
  v172 = v56;
  LOBYTE(v173) = v57 & 1;
  v59 = v115;
  v58 = v116;
  View.scrollPosition<A>(id:anchor:)();

  (*(v136 + 8))(v51, v58);
  sub_10012EBF8();
  sub_100075A44();

  v60 = v114;
  v61 = v94;
  View.scrollDisabled(_:)();
  (*(v130 + 8))(v59, v61);
  v153 = v47;
  v62 = v93;
  v154 = v93;
  v155 = v54;
  static Alignment.center.getter();
  sub_100009F70(&qword_100220628);
  sub_10000D1EC(&qword_100220630, &qword_100220628);
  v63 = v123;
  v64 = v128;
  View.background<A>(alignment:content:)();
  (*(v133 + 8))(v60, v64);
  v65 = v148;
  sub_10012EBF8();

  static Alignment.center.getter();
  v66 = v125;
  v67 = v99;
  View.frame(width:height:alignment:)();
  (*(v134 + 8))(v63, v67);
  v68 = v122;
  v69 = v100;
  View.clipped(antialiased:)();
  (*(v129 + 8))(v66, v69);
  v70 = v149;
  v150 = v149;
  v151 = v62;
  v152 = v54;
  static Alignment.center.getter();
  sub_100009F70(&qword_100220638);
  sub_100133188();
  v71 = v124;
  v72 = v102;
  View.overlay<A>(alignment:content:)();
  (*(v135 + 8))(v68, v72);
  static Edge.Set.bottom.getter();
  v73 = v65;
  sub_10012EBF8();

  v74 = v127;
  v75 = v104;
  View.padding(_:_:)();
  (*(v137 + 8))(v71, v75);
  v170 = sub_10012EC38();
  LOBYTE(v171) = v76 & 1;
  v78 = v144;
  v77 = v145;
  (*(v145 + 16))(v144, v54, v73);
  v79 = v77;
  v80 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v70;
  *(v81 + 24) = v62;
  (*(v79 + 32))(v81 + v80, v78, v73);
  v82 = v105;
  v84 = v107;
  v83 = v108;
  v86 = v109;
  v85 = v110;
  View.onChange<A>(of:initial:_:)();

  (*(v139 + 8))(v74, v84);
  v170 = v84;
  v171 = v85;
  v172 = v86;
  v173 = v83;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v106;
  v89 = v112;
  sub_100157EFC(v82, v112, v87);
  v90 = *(v113 + 8);
  v90(v82, v89);
  sub_100157EFC(v88, v89, v87);
  return (v90)(v88, v89);
}

uint64_t sub_10012FDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  v22 = a3;
  v20 = a2;
  v23 = a4;
  swift_getTupleTypeMetadata2();
  v28 = type metadata accessor for Array();
  v29 = &type metadata for Int;
  v30 = sub_10000B3DC(&qword_1002205F8);
  WitnessTable = swift_getWitnessTable();
  v32 = &protocol witness table for Int;
  type metadata accessor for ForEach();
  v27 = sub_10000D1EC(&qword_100220600, &qword_1002205F8);
  v19[1] = swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = swift_getWitnessTable();
  v28 = v4;
  v29 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  v24 = v20;
  v25 = v22;
  v26 = v21;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  View.scrollTargetLayout(isEnabled:)();
  (*(v5 + 8))(v7, v4);
  v28 = v4;
  v29 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v17 = *(v10 + 8);
  v17(v13, OpaqueTypeMetadata2);
  sub_100157EFC(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v17)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_100130140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v26 = a1;
  v35 = a4;
  v5 = type metadata accessor for TourPhotosView();
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  __chkstk_darwin(v5);
  v28 = &v26 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Array();
  v33 = v8;
  v9 = sub_10000B3DC(&qword_1002205F8);
  v32 = v9;
  WitnessTable = swift_getWitnessTable();
  v40 = v8;
  v41 = &type metadata for Int;
  v42 = v9;
  v43 = WitnessTable;
  v44 = &protocol witness table for Int;
  v10 = type metadata accessor for ForEach();
  v34 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(sub_10012EBF8() + 32);

  v39 = v16;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.enumerated()();

  v39 = v40;
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  v40 = Array.init<A>(_:)();
  v17 = v29;
  v36 = a2;
  v37 = v29;
  TupleTypeMetadata2 = swift_getKeyPath();
  v18 = v28;
  (*(v6 + 16))(v28, v26, v5);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v18, v5);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v17;
  v21[4] = sub_1001340C8;
  v21[5] = v20;
  v25 = sub_10000D1EC(&qword_100220600, &qword_1002205F8);
  ForEach<>.init(_:id:content:)();
  v38 = v25;
  v22 = swift_getWitnessTable();
  sub_100157EFC(v13, v10, v22);
  v23 = *(v34 + 8);
  v23(v13, v10);
  sub_100157EFC(v15, v10, v22);
  return (v23)(v15, v10);
}

uint64_t sub_1001305AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = type metadata accessor for TourPhotosView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  v11 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  (*(a3 + 16))(a2, a3);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v10, v7);
  sub_100009F70(&qword_100220788);
  sub_100134464();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_10013080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v87 = a4;
  *&v86 = a3;
  v83 = a2;
  v79 = sub_100009F70(&qword_100220840);
  __chkstk_darwin(v79);
  v75 = &v65 - v7;
  v85 = sub_100009F70(&qword_100220848);
  __chkstk_darwin(v85);
  v9 = &v65 - v8;
  v81 = sub_100009F70(&qword_100220850);
  __chkstk_darwin(v81);
  v80 = &v65 - v10;
  v84 = sub_100009F70(&qword_1002207A0);
  __chkstk_darwin(v84);
  v82 = &v65 - v11;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100009F70(&qword_1002207B0);
  __chkstk_darwin(v78);
  v17 = &v65 - v16;
  v18 = type metadata accessor for AsyncImagePhase();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v19 + 96))(v21, v18);
    v73 = *v21;
    LODWORD(v75) = enum case for Image.ResizingMode.stretch(_:);
    v74 = *(v13 + 104);
    v74(v15);
    v23 = Image.resizable(capInsets:resizingMode:)();
    v24 = *(v13 + 8);
    v67 = v13 + 8;
    v72 = v24;
    v24(v15, v12);
    *v94 = v23;
    *&v94[16] = 257;
    static Axis.Set.horizontal.getter();
    v77 = a5;
    static Alignment.center.getter();
    v76 = v9;
    v71 = sub_100009F70(&qword_10021B5E8);
    v70 = sub_100079534();
    View.containerRelativeFrame(_:alignment:)();

    v69 = type metadata accessor for TourPhotosView();
    sub_10012EBF8();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v68 = sub_100009F70(&qword_100220810);
    v25 = &v17[*(v68 + 36)];
    v26 = v92;
    *v25 = v91;
    *(v25 + 1) = v26;
    *(v25 + 2) = v93;
    v27 = sub_100009F70(&qword_100220800);
    *&v17[*(v27 + 36)] = 0;
    v28 = static Alignment.center.getter();
    v30 = v29;
    sub_10013266C(&static Color.black.getter, &static Color.clear.getter, v94);
    v31 = *v94;
    v66 = *&v94[8];
    v65 = *&v94[24];
    v32 = &v17[*(sub_100009F70(&qword_1002207F0) + 36)];
    *v32 = v28;
    *(v32 + 1) = v30;
    *(v32 + 2) = v31;
    *(v32 + 40) = v65;
    *(v32 + 24) = v66;
    (v74)(v15, v75, v12);
    v33 = Image.resizable(capInsets:resizingMode:)();
    v72(v15, v12);
    *v94 = v33;
    *&v94[16] = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    v34 = &v17[*(sub_100009F70(&qword_1002207E0) + 36)];
    View.containerRelativeFrame(_:alignment:)();

    sub_10012EBF8();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = &v34[*(v68 + 36)];
    v36 = *&v94[16];
    *v35 = *v94;
    *(v35 + 1) = v36;
    *(v35 + 2) = *&v94[32];
    *&v34[*(v27 + 36)] = 0;
    v37 = &v34[*(sub_100009F70(&qword_100220858) + 36)];
    *v37 = 0x4049000000000000;
    v37[8] = 1;
    *&v34[*(sub_100009F70(&qword_100220860) + 36)] = 0;
    v38 = static Alignment.center.getter();
    v40 = v39;
    v41 = &v34[*(sub_100009F70(&qword_100220820) + 36)];
    *v41 = v38;
    v41[1] = v40;
    v42 = static Alignment.center.getter();
    v44 = v43;
    v45 = &v17[*(sub_100009F70(&qword_1002207D0) + 36)];
    sub_100131470(v45);
    v46 = (v45 + *(sub_100009F70(&qword_100220830) + 36));
    *v46 = v42;
    v46[1] = v44;
    v47 = static Alignment.center.getter();
    v49 = v48;
    sub_100132730(&v88);
    v50 = v88;
    v86 = v90;
    v87 = v89;
    v51 = &v17[*(sub_100009F70(&qword_1002207C0) + 36)];
    *v51 = v50;
    v52 = v87;
    *(v51 + 24) = v86;
    *(v51 + 8) = v52;
    *(v51 + 5) = v47;
    *(v51 + 6) = v49;
    v17[*(v78 + 36)] = 1;
    v53 = &qword_1002207B0;
    sub_10000D58C(v17, v80, &qword_1002207B0);
    swift_storeEnumTagMultiPayload();
    sub_10013457C();
    sub_100134A74();
    v54 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v54, v76, &qword_1002207A0);
    swift_storeEnumTagMultiPayload();
    sub_1001344F0();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v54, &qword_1002207A0);
    v55 = v17;
    return sub_10000D52C(v55, v53);
  }

  if (v22 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v19 + 8))(v21, v18);
LABEL_6:
    v76 = v9;
    v77 = a5;
    if (qword_100218340 != -1)
    {
      swift_once();
    }

    *v94 = qword_100230578;
    *&v94[8] = 256;

    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_100009F70(&qword_100219CF0);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0);
    v56 = v75;
    View.containerRelativeFrame(_:alignment:)();

    v57 = static Alignment.center.getter();
    v59 = v58;
    sub_100132730(v94);
    v60 = *&v94[8];
    v61 = *&v94[24];
    v62 = v56 + *(v79 + 36);
    *v62 = *v94;
    *(v62 + 8) = v60;
    *(v62 + 24) = v61;
    *(v62 + 40) = v57;
    *(v62 + 48) = v59;
    v53 = &qword_100220840;
    sub_10000D58C(v56, v80, &qword_100220840);
    swift_storeEnumTagMultiPayload();
    sub_10013457C();
    sub_100134A74();
    v63 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v63, v76, &qword_1002207A0);
    swift_storeEnumTagMultiPayload();
    sub_1001344F0();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v63, &qword_1002207A0);
    v55 = v56;
    return sub_10000D52C(v55, v53);
  }

  if (v22 == enum case for AsyncImagePhase.empty(_:))
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_1001344F0();
  _ConditionalContent<>.init(storage:)();
  return (*(v19 + 8))(v21, v18);
}

__n128 sub_100131470@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  v21 = v6;
  LOWORD(v22) = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_100009F70(&qword_10021B5E8);
  sub_100079534();
  View.containerRelativeFrame(_:alignment:)();

  type metadata accessor for TourPhotosView();
  sub_10012EBF8();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = (a1 + *(sub_100009F70(&qword_100220810) + 36));
  v8 = v22;
  *v7 = v21;
  v7[1] = v8;
  v7[2] = v23;
  *(a1 + *(sub_100009F70(&qword_100220800) + 36)) = 0;
  *(a1 + *(sub_100009F70(&qword_100220868) + 36)) = 0x3FF0000000000000;
  v9 = a1 + *(sub_100009F70(&qword_100220870) + 36);
  *v9 = 0x4038000000000000;
  *(v9 + 8) = 1;
  *(a1 + *(sub_100009F70(&qword_100220878) + 36)) = 0;
  v10 = static Alignment.center.getter();
  v12 = v11;
  sub_10013266C(&static Color.clear.getter, &static Color.black.getter, &v18);
  v13 = v18;
  v16 = v20;
  v17 = v19;
  v14 = a1 + *(sub_100009F70(&qword_100220880) + 36);
  *v14 = v10;
  *(v14 + 8) = v12;
  *(v14 + 16) = v13;
  result = v17;
  *(v14 + 40) = v16;
  *(v14 + 24) = result;
  return result;
}

uint64_t sub_100131784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  v9 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v9 - 8);
  v11 = v18 - v10;
  type metadata accessor for TourPhotosView();
  v12 = *(sub_10012EBF8() + 32);

  v18[1] = v12;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v8, 1, a2) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  else
  {
    (*(a3 + 16))(a2, a3);
    (*(v13 + 8))(v8, a2);
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  }

  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_100009F70(&qword_1002206C8);
  sub_100133CE4();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_100131ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46[1] = a2;
  v47 = a3;
  v55 = a4;
  v50 = sub_100009F70(&qword_100220748);
  v46[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v46 - v5;
  v54 = sub_100009F70(&qword_100220750);
  __chkstk_darwin(v54);
  v52 = v46 - v7;
  v48 = sub_100009F70(&qword_100220758);
  __chkstk_darwin(v48);
  v51 = v46 - v8;
  v53 = sub_100009F70(&qword_1002206E0);
  __chkstk_darwin(v53);
  v49 = v46 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(&qword_1002206F0);
  __chkstk_darwin(v14);
  v16 = v46 - v15;
  v17 = type metadata accessor for AsyncImagePhase();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v18 + 96))(v20, v17);
    v22 = *v20;
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v46[0] = v22;
    v23 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v13, v10);
    v56 = v23;
    *&v57 = 0;
    WORD4(v57) = 257;
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    sub_100009F70(&qword_10021B5E8);
    sub_100079534();
    View.containerRelativeFrame(_:alignment:)();

    v24 = &v16[*(sub_100009F70(&qword_100220720) + 36)];
    *v24 = 0x4059000000000000;
    v24[8] = 1;
    *&v16[*(sub_100009F70(&qword_100220710) + 36)] = 0;
    v25 = static Alignment.center.getter();
    v27 = v26;
    v28 = &v16[*(sub_100009F70(&qword_100220700) + 36)];
    sub_1001323CC(v28);
    v29 = (v28 + *(sub_100009F70(&qword_100220730) + 36));
    *v29 = v25;
    v29[1] = v27;
    v30 = static Alignment.center.getter();
    v32 = v31;
    sub_100132730(&v56);
    v33 = v57;
    v34 = v58;
    v35 = &v16[*(v14 + 36)];
    *v35 = v56;
    *(v35 + 8) = v33;
    *(v35 + 24) = v34;
    *(v35 + 5) = v30;
    *(v35 + 6) = v32;
    sub_10000D58C(v16, v51, &qword_1002206F0);
    swift_storeEnumTagMultiPayload();
    sub_100133E74();
    v36 = sub_10000B3DC(&qword_100219CF0);
    v37 = sub_10000D1EC(&qword_100219CE8, &qword_100219CF0);
    v56 = v36;
    *&v57 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v49;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v38, v52, &qword_1002206E0);
    swift_storeEnumTagMultiPayload();
    sub_100133D70();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v38, &qword_1002206E0);
    return sub_10000D52C(v16, &qword_1002206F0);
  }

  v47 = v14;
  v40 = v51;
  if (v21 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v18 + 8))(v20, v17);
  }

  else if (v21 != enum case for AsyncImagePhase.empty(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_100133D70();
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v20, v17);
  }

  if (qword_100218340 != -1)
  {
    swift_once();
  }

  v56 = qword_100230578;
  LOWORD(v57) = 256;

  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  v41 = sub_100009F70(&qword_100219CF0);
  v42 = sub_10000D1EC(&qword_100219CE8, &qword_100219CF0);
  View.containerRelativeFrame(_:alignment:)();

  v43 = v46[0];
  v44 = v50;
  (*(v46[0] + 16))(v40, v6, v50);
  swift_storeEnumTagMultiPayload();
  sub_100133E74();
  v56 = v41;
  *&v57 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v49;
  _ConditionalContent<>.init(storage:)();
  sub_10000D58C(v45, v52, &qword_1002206E0);
  swift_storeEnumTagMultiPayload();
  sub_100133D70();
  _ConditionalContent<>.init(storage:)();
  sub_10000D52C(v45, &qword_1002206E0);
  return (*(v43 + 8))(v6, v44);
}

__n128 sub_1001323CC@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  v16 = v6;
  v17.n128_u64[0] = 0;
  v17.n128_u16[4] = 257;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_100009F70(&qword_10021B5E8);
  sub_100079534();
  View.containerRelativeFrame(_:alignment:)();

  *(a1 + *(sub_100009F70(&qword_100220760) + 36)) = 0;
  *(a1 + *(sub_100009F70(&qword_100220768) + 36)) = 0x3FF0000000000000;
  v7 = a1 + *(sub_100009F70(&qword_100220770) + 36);
  *v7 = 0x4038000000000000;
  *(v7 + 8) = 1;
  *(a1 + *(sub_100009F70(&qword_100220778) + 36)) = 0;
  v8 = static Alignment.center.getter();
  v10 = v9;
  sub_10013266C(&static Color.clear.getter, &static Color.black.getter, &v16);
  v11 = v16;
  v14 = v18;
  v15 = v17;
  v12 = a1 + *(sub_100009F70(&qword_100220780) + 36);
  *v12 = v8;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11;
  result = v15;
  *(v12 + 40) = v14;
  *(v12 + 24) = result;
  return result;
}

double sub_10013266C@<D0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_100009F70(&qword_1002199C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001ACB00;
  *(v6 + 32) = a1();
  *(v6 + 40) = a2();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  return result;
}

double sub_100132730@<D0>(uint64_t a1@<X8>)
{
  sub_100009F70(&qword_1002199C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001ACB00;
  *(v2 + 32) = static Color.clear.getter();
  static Color.black.getter();
  v3 = Color.opacity(_:)();

  *(v2 + 40) = v3;
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

__n128 sub_1001327F0@<Q0>(uint64_t a1@<X8>)
{
  v39 = static HorizontalAlignment.center.getter();
  LOBYTE(v40[0]) = 0;
  sub_100132B40(&v43);
  v61 = v49;
  v62 = v50;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  v64[6] = v49;
  v64[7] = v50;
  v64[2] = v45;
  v64[3] = v46;
  v64[4] = v47;
  v64[5] = v48;
  v63 = v51;
  v65 = v51;
  v64[0] = v43;
  v64[1] = v44;
  sub_10000D58C(&v55, v42, &qword_1002206C0);
  sub_10000D52C(v64, &qword_1002206C0);
  *&v52[87] = v60;
  *&v52[103] = v61;
  *&v52[119] = v62;
  *&v52[23] = v56;
  *&v52[39] = v57;
  *&v52[55] = v58;
  *&v52[71] = v59;
  v52[135] = v63;
  *&v52[7] = v55;
  v2 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LOBYTE(v43) = 0;
  v11 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v53 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v54[55] = v46;
  *&v54[71] = v47;
  *&v54[87] = v48;
  *&v54[103] = v49;
  *&v54[7] = v43;
  *&v54[23] = v44;
  *&v54[39] = v45;
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = static Alignment.center.getter();
  v22 = v21;
  sub_100132DD4(v40);
  v23 = *&v52[64];
  *(a1 + 97) = *&v52[80];
  v24 = *&v52[112];
  *(a1 + 113) = *&v52[96];
  *(a1 + 129) = v24;
  v25 = *v52;
  *(a1 + 33) = *&v52[16];
  v26 = *&v52[48];
  *(a1 + 49) = *&v52[32];
  v27 = v41;
  *(a1 + 65) = v26;
  *(a1 + 81) = v23;
  result = v40[0];
  v29 = v40[1];
  *a1 = v39;
  *(a1 + 8) = 0x4032000000000000;
  *(a1 + 16) = 0;
  *(a1 + 145) = *&v52[128];
  *(a1 + 17) = v25;
  *(a1 + 160) = v2;
  *(a1 + 168) = v4;
  *(a1 + 176) = v6;
  *(a1 + 184) = v8;
  *(a1 + 192) = v10;
  *(a1 + 200) = 0;
  *(a1 + 208) = v11;
  *(a1 + 216) = v13;
  *(a1 + 224) = v15;
  *(a1 + 232) = v17;
  *(a1 + 240) = v19;
  *(a1 + 248) = 0;
  v30 = *&v54[64];
  v31 = *&v54[96];
  *(a1 + 329) = *&v54[80];
  *(a1 + 345) = v31;
  *(a1 + 360) = *&v54[111];
  v32 = *&v54[16];
  *(a1 + 249) = *v54;
  v33 = *&v54[32];
  v34 = *&v54[48];
  *(a1 + 265) = v32;
  *(a1 + 281) = v33;
  *(a1 + 297) = v34;
  *(a1 + 313) = v30;
  v35 = v42[1];
  *(a1 + 368) = v42[0];
  *(a1 + 384) = v35;
  v36 = v42[6];
  v37 = v42[5];
  *(a1 + 432) = v42[4];
  *(a1 + 448) = v37;
  v38 = v42[3];
  *(a1 + 400) = v42[2];
  *(a1 + 416) = v38;
  *(a1 + 464) = v36;
  *(a1 + 480) = result;
  *(a1 + 496) = v29;
  *(a1 + 512) = v27;
  *(a1 + 520) = v20;
  *(a1 + 528) = v22;
  *(a1 + 536) = 0;
  return result;
}

uint64_t sub_100132B40@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TourPhotosView();
  v2 = sub_10012EBF8();
  v3 = *(v2 + 48);
  v30 = *(v2 + 40);

  v4 = LocalizedStringKey.init(stringLiteral:)();
  v27 = v5;
  v28 = v4;
  v25 = v6;
  v29 = v7;
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v10 = v9;
  v24 = v11;
  v26 = v12;
  type metadata accessor for CGSize(0);
  v31 = 0u;
  v34 = 0u;
  State.init(wrappedValue:)();
  v13 = v41;
  v14 = v42;
  sub_10012EBF8();
  v15 = sub_100075A44();

  v16 = 0.0;
  if (v15)
  {
    sub_10012EBF8();
    v32 = sub_1000759D8();

    sub_10012EBF8();
    v23 = sub_1000759F0();

    v16 = sub_10012ED14();
    *&v17 = v32;
    *(&v17 + 1) = v23;
    v31 = v17;
  }

  *&v34 = v28;
  *(&v34 + 1) = v27;
  LOBYTE(v35) = v25 & 1;
  *(&v35 + 1) = v54[0];
  DWORD1(v35) = *(v54 + 3);
  *(&v35 + 1) = v29;
  *&v36 = v8;
  *(&v36 + 1) = v10;
  LOBYTE(v37) = v24 & 1;
  *(&v37 + 1) = *v53;
  DWORD1(v37) = *&v53[3];
  *(&v37 + 1) = v26;
  *&v38 = v30;
  *(&v38 + 1) = v3;
  v39 = v41;
  v40 = v42;
  v33[104] = !v15;
  *(a1 + 96) = v42;
  v18 = v34;
  v19 = v35;
  v20 = v37;
  *(a1 + 32) = v36;
  *(a1 + 48) = v20;
  *a1 = v18;
  *(a1 + 16) = v19;
  v21 = v39;
  *(a1 + 64) = v38;
  *(a1 + 80) = v21;
  *(a1 + 104) = v31;
  *(a1 + 120) = v16;
  *(a1 + 128) = !v15;
  *&v41 = v28;
  *(&v41 + 1) = v27;
  LOBYTE(v42) = v25 & 1;
  HIDWORD(v42) = *(v54 + 3);
  *(&v42 + 1) = v54[0];
  v43 = v29;
  v44 = v8;
  v45 = v10;
  v46 = v24 & 1;
  *&v47[3] = *&v53[3];
  *v47 = *v53;
  v48 = v26;
  v49 = v30;
  v50 = v3;
  v51 = v13;
  v52 = v14;
  sub_10010C498(&v34, v33);
  return sub_100133C78(&v41);
}

uint64_t sub_100132DD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  type metadata accessor for TourPhotosView();
  sub_100024890(v8);
  (*(v3 + 104))(v6, enum case for ContentSizeCategory.accessibilityExtraLarge(_:), v2);
  v9 = sub_1000B06A0(v8, v6);
  v10 = *(v3 + 8);
  v10(v6, v2);
  result = (v10)(v8, v2);
  if (v9)
  {
    sub_100009F70(&qword_1002199C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001ACB00;
    *(v12 + 32) = static Color.clear.getter();
    static Color.black.getter();
    v13 = Color.opacity(_:)();

    *(v12 + 40) = v13;
    Gradient.init(colors:)();
    result = LinearGradient.init(gradient:startPoint:endPoint:)();
    v14 = v17[1];
    v15 = v18;
    v16 = v19;
  }

  else
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100132FE0(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v2 = type metadata accessor for TourPhotosView();
  sub_10012EBF8();
  if (*(a1 + *(v2 + 44)))
  {

    sub_100075B14(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10000E5F0();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001330DC()
{
  type metadata accessor for TourPhotosView();
  result = sub_10012EC38();
  if ((v1 & 1) == 0)
  {
    sub_10012EBF8();
    sub_1000759F0();

    return sub_10012ED74();
  }

  return result;
}

unint64_t sub_100133188()
{
  result = qword_100220640;
  if (!qword_100220640)
  {
    sub_10000B3DC(&qword_100220638);
    sub_100133214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220640);
  }

  return result;
}

unint64_t sub_100133214()
{
  result = qword_100220648;
  if (!qword_100220648)
  {
    sub_10000B3DC(&qword_100220650);
    sub_1001332CC();
    sub_10000D1EC(&qword_1002206A8, &qword_1002206B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220648);
  }

  return result;
}

unint64_t sub_1001332CC()
{
  result = qword_100220658;
  if (!qword_100220658)
  {
    sub_10000B3DC(&qword_100220660);
    sub_100133358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220658);
  }

  return result;
}

unint64_t sub_100133358()
{
  result = qword_100220668;
  if (!qword_100220668)
  {
    sub_10000B3DC(&qword_100220670);
    sub_1001333E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220668);
  }

  return result;
}

unint64_t sub_1001333E4()
{
  result = qword_100220678;
  if (!qword_100220678)
  {
    sub_10000B3DC(&qword_100220680);
    sub_100133470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220678);
  }

  return result;
}

unint64_t sub_100133470()
{
  result = qword_100220688;
  if (!qword_100220688)
  {
    sub_10000B3DC(&qword_100220690);
    sub_10000D1EC(&qword_100220698, &qword_1002206A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220688);
  }

  return result;
}

uint64_t sub_10013352C()
{
  v1 = *(type metadata accessor for TourPhotosView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100132FE0(v2);
}

uint64_t sub_1001335D0@<X0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v54 = a1;
  v52 = sub_100009F70(&qword_1002208A0) - 8;
  v3 = __chkstk_darwin(v52);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v41 - v5;
  v50 = sub_100009F70(&qword_1002208A8) - 8;
  v7 = __chkstk_darwin(v50);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v49 = type metadata accessor for RoundedRectangle();
  v11 = *(v49 + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  v14 = *(v13 - 8);
  v46 = *(v14 + 104);
  v48 = v14 + 104;
  v46(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #2.0 }

  v45 = _Q0;
  *v10 = _Q0;
  v44 = objc_opt_self();
  v20 = [v44 tertiaryLabelColor];
  v21 = Color.init(uiColor:)();
  v43 = sub_100009F70(&qword_100218DD0);
  *&v10[*(v43 + 36)] = v21;
  v42 = sub_100009F70(&qword_1002208B0);
  v22 = &v10[*(v42 + 36)];
  v23 = sub_100009F70(&qword_1002208B8);
  v24 = *(v23 + 28);
  v25 = enum case for ColorScheme.light(_:);
  v26 = type metadata accessor for ColorScheme();
  v27 = *(*(v26 - 8) + 104);
  v27(v22 + v24, v25, v26);
  *v22 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v28 = v50;
  v29 = &v10[*(v50 + 44)];
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  *(v29 + 2) = v57;
  v46(&v6[*(v49 + 20)], v47, v13);
  *v6 = v45;
  v31 = [v44 secondaryLabelColor];
  *&v6[*(v43 + 36)] = Color.init(uiColor:)();
  v32 = &v6[*(v42 + 36)];
  v27(v32 + *(v23 + 28), v25, v26);
  *v32 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = &v6[*(v28 + 44)];
  v34 = v59;
  *v33 = v58;
  *(v33 + 1) = v34;
  *(v33 + 2) = v60;
  v35 = v51;
  v36 = &v6[*(v52 + 44)];
  *v36 = a2;
  *(v36 + 1) = 0;
  sub_10000D58C(v10, v35, &qword_1002208A8);
  v37 = v53;
  sub_10000D58C(v6, v53, &qword_1002208A0);
  v38 = v54;
  sub_10000D58C(v35, v54, &qword_1002208A8);
  v39 = sub_100009F70(&qword_1002208C0);
  sub_10000D58C(v37, v38 + *(v39 + 48), &qword_1002208A0);
  sub_10000D52C(v6, &qword_1002208A0);
  sub_10000D52C(v10, &qword_1002208A8);
  sub_10000D52C(v37, &qword_1002208A0);
  return sub_10000D52C(v35, &qword_1002208A8);
}

uint64_t sub_100133ABC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = static Alignment.leading.getter();
  a1[1] = v4;
  v5 = sub_100009F70(&qword_100220888);
  sub_1001335D0(a1 + *(v5 + 44), v3);
  v6 = *(sub_100009F70(&qword_100220890) + 36);
  v7 = enum case for BlendMode.plusLighter(_:);
  v8 = type metadata accessor for BlendMode();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  result = sub_100009F70(&qword_100220898);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_100133BB0(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_100133CE4()
{
  result = qword_1002206D0;
  if (!qword_1002206D0)
  {
    sub_10000B3DC(&qword_1002206C8);
    sub_100133D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206D0);
  }

  return result;
}

unint64_t sub_100133D70()
{
  result = qword_1002206D8;
  if (!qword_1002206D8)
  {
    sub_10000B3DC(&qword_1002206E0);
    sub_100133E74();
    sub_10000B3DC(&qword_100219CF0);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206D8);
  }

  return result;
}

unint64_t sub_100133E74()
{
  result = qword_1002206E8;
  if (!qword_1002206E8)
  {
    sub_10000B3DC(&qword_1002206F0);
    sub_100133F2C();
    sub_10000D1EC(&qword_100220738, &qword_100220740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206E8);
  }

  return result;
}

unint64_t sub_100133F2C()
{
  result = qword_1002206F8;
  if (!qword_1002206F8)
  {
    sub_10000B3DC(&qword_100220700);
    sub_100133FE4();
    sub_10000D1EC(&qword_100220728, &qword_100220730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002206F8);
  }

  return result;
}

unint64_t sub_100133FE4()
{
  result = qword_100220708;
  if (!qword_100220708)
  {
    sub_10000B3DC(&qword_100220710);
    sub_1001349C0(&qword_100220718, &qword_100220720);
    sub_10000D1EC(&qword_10021B628, &qword_10021B630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220708);
  }

  return result;
}

uint64_t sub_1001340C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for TourPhotosView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1001305AC(v6, v3, v4, a1);
}

uint64_t sub_10013416C()
{

  return swift_deallocObject();
}

uint64_t sub_1001341A4(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_100134218()
{
  v1 = (type metadata accessor for TourPhotosView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));
  type metadata accessor for TourPhotosViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[14];
  sub_100009F70(&qword_100219720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ContentSizeCategory();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001343C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for TourPhotosView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10013080C(a1, v8, v5, v6, a2);
}

unint64_t sub_100134464()
{
  result = qword_100220790;
  if (!qword_100220790)
  {
    sub_10000B3DC(&qword_100220788);
    sub_1001344F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220790);
  }

  return result;
}

unint64_t sub_1001344F0()
{
  result = qword_100220798;
  if (!qword_100220798)
  {
    sub_10000B3DC(&qword_1002207A0);
    sub_10013457C();
    sub_100134A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220798);
  }

  return result;
}

unint64_t sub_10013457C()
{
  result = qword_1002207A8;
  if (!qword_1002207A8)
  {
    sub_10000B3DC(&qword_1002207B0);
    sub_100134608();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207A8);
  }

  return result;
}

unint64_t sub_100134608()
{
  result = qword_1002207B8;
  if (!qword_1002207B8)
  {
    sub_10000B3DC(&qword_1002207C0);
    sub_1001346C0();
    sub_10000D1EC(&qword_100220738, &qword_100220740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207B8);
  }

  return result;
}

unint64_t sub_1001346C0()
{
  result = qword_1002207C8;
  if (!qword_1002207C8)
  {
    sub_10000B3DC(&qword_1002207D0);
    sub_100134778();
    sub_10000D1EC(&qword_100220828, &qword_100220830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207C8);
  }

  return result;
}

unint64_t sub_100134778()
{
  result = qword_1002207D8;
  if (!qword_1002207D8)
  {
    sub_10000B3DC(&qword_1002207E0);
    sub_100134830();
    sub_10000D1EC(&qword_100220818, &qword_100220820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207D8);
  }

  return result;
}

unint64_t sub_100134830()
{
  result = qword_1002207E8;
  if (!qword_1002207E8)
  {
    sub_10000B3DC(&qword_1002207F0);
    sub_1001348E8();
    sub_10000D1EC(&qword_10021D6D0, &qword_10021D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207E8);
  }

  return result;
}

unint64_t sub_1001348E8()
{
  result = qword_1002207F8;
  if (!qword_1002207F8)
  {
    sub_10000B3DC(&qword_100220800);
    sub_1001349C0(&qword_100220808, &qword_100220810);
    sub_10000D1EC(&qword_10021B628, &qword_10021B630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002207F8);
  }

  return result;
}

uint64_t sub_1001349C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    sub_10000B3DC(&qword_10021B5E8);
    sub_100079534();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100134A74()
{
  result = qword_100220838;
  if (!qword_100220838)
  {
    sub_10000B3DC(&qword_100220840);
    sub_10000B3DC(&qword_100219CF0);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_100220738, &qword_100220740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220838);
  }

  return result;
}

uint64_t sub_100134BAC()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_10000B3DC(&qword_1002205F8);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  sub_10000D1EC(&qword_100220600, &qword_1002205F8);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for PagingScrollTargetBehavior();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100220608);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021B630);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100220610);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002192A8);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_100220618, &qword_100220608);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021B628, &qword_10021B630);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100220620, &qword_100220610);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10001F060();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001350D0()
{
  result = qword_1002208C8;
  if (!qword_1002208C8)
  {
    sub_10000B3DC(&qword_100220898);
    sub_10013515C();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002208C8);
  }

  return result;
}

unint64_t sub_10013515C()
{
  result = qword_1002208D0;
  if (!qword_1002208D0)
  {
    sub_10000B3DC(&qword_100220890);
    sub_10000D1EC(&qword_1002208D8, qword_1002208E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002208D0);
  }

  return result;
}

uint64_t sub_10013521C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100009F70(&qword_100219710);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10013527C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  State.init(wrappedValue:)();
  *a2 = v7;
  a2[1] = v8;
  v4 = type metadata accessor for SavedWallpaperView();
  sub_10000F618(a1, a2 + *(v4 + 36), &qword_100218950);
  v5 = *(v4 + 40);
  *(a2 + v5) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100135384()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0xD00000000000003CLL;
  v1._object = 0x80000001001C1570;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v1);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v2);
  return LocalizedStringKey.init(stringInterpolation:)();
}

void sub_100135480()
{
  type metadata accessor for SavedWallpaperViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_1000959F0(319, &qword_10021A308, &type metadata accessor for DismissAction);
    if (v1 <= 0x3F)
    {
      sub_1000959F0(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100135578(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100218950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218D00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001356C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100218D00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100135848()
{
  type metadata accessor for SavedWallpaperViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10013589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009F70(&qword_100219710);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000D58C(v2 + *(a1 + 36), &v15 - v10, &qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100135AA0()
{
  sub_100009F70(&qword_100220968);
  sub_10000B3DC(&qword_100220970);
  sub_10000B3DC(&qword_10021A8A8);
  sub_10000B3DC(&qword_100220978);
  sub_100138D3C();
  swift_getOpaqueTypeConformance2();
  sub_10000B3DC(&qword_10021A8B0);
  sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_100135C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_100220978);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_100009F70(&qword_100220970);
  v30 = *(v14 - 8);
  v31 = v14;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v17 = sub_100009F70(&qword_100220998);
  v18 = a3;
  sub_100135FAC(a1, a2, a3, &v13[*(v17 + 44)]);
  LOBYTE(a3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = &v13[*(v11 + 36)];
  *v19 = a3;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v7);
  v24 = sub_100138D3C();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v8 + 8))(v10, v7);
  sub_10000D52C(v13, &qword_100220978);
  v33 = a2;
  v34 = v18;
  v35 = a1;
  sub_100009F70(&qword_10021A8A8);
  v36 = v11;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = sub_10000B3DC(&qword_10021A8B0);
  v26 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
  v36 = v25;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  View.toolbar<A>(content:)();
  return (*(v30 + 8))(v16, v27);
}

uint64_t sub_100135FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a1;
  v167 = a4;
  v6 = sub_100009F70(&qword_1002209A0);
  v164 = *(v6 - 8);
  v165 = v6;
  __chkstk_darwin(v6);
  v153 = &v148 - v7;
  v8 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v8 - 8);
  v161 = &v148 - v9;
  v163 = type metadata accessor for URL();
  v170 = *(v163 - 8);
  v10 = __chkstk_darwin(v163);
  v151 = v11;
  v152 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v162 = &v148 - v12;
  v13 = sub_100009F70(&qword_1002209A8);
  v14 = __chkstk_darwin(v13 - 8);
  v166 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v171 = &v148 - v16;
  v169 = a2;
  v175 = a3;
  v178 = type metadata accessor for SavedWallpaperView();
  v17 = *(v178 - 8);
  v168 = *(v17 + 64);
  __chkstk_darwin(v178);
  v172 = &v148 - v18;
  v19 = type metadata accessor for Image.ResizingMode();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100009F70(&qword_1002209B0);
  __chkstk_darwin(v23);
  v25 = &v148 - v24;
  v155 = sub_100009F70(&qword_1002209B8);
  __chkstk_darwin(v155);
  v158 = &v148 - v26;
  v154 = sub_100009F70(&qword_1002209C0);
  __chkstk_darwin(v154);
  v159 = &v148 - v27;
  v173 = sub_100009F70(&qword_1002209C8);
  v160 = *(v173 - 8);
  v28 = __chkstk_darwin(v173);
  v157 = (&v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v156 = &v148 - v30;
  v31 = sub_100009F70(&qword_1002209D0);
  v32 = __chkstk_darwin(v31 - 8);
  v174 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v177 = &v148 - v34;
  v35 = String._bridgeToObjectiveC()();

  v36 = [objc_opt_self() imageNamed:v35];

  v150 = v17;
  if (v36)
  {
    v149 = v36;
    Image.init(uiImage:)();
    (*(v20 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v19);
    v148 = Image.resizable(capInsets:resizingMode:)();

    (*(v20 + 8))(v22, v19);
    sub_100135848();
    sub_100020768();

    v37 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v181) = 1;
    LOBYTE(v180[0]) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v179[53] = v218;
    *&v179[69] = v219;
    *&v179[85] = v220;
    *&v179[101] = v221;
    *&v179[5] = v215;
    *&v179[21] = v216;
    v46 = &v25[*(v23 + 36)];
    *&v179[37] = v217;
    v47 = sub_100009F70(&qword_100220A20);
    v48 = *(v47 + 36);
    v49 = enum case for CoordinateSpace.local(_:);
    v50 = type metadata accessor for CoordinateSpace();
    (*(*(v50 - 8) + 104))(&v46[v48], v49, v50);
    *v46 = &type metadata for BezelSizePreferenceKey;
    v51 = &v46[*(v47 + 40)];
    *v51 = sub_1000D067C;
    v51[1] = 0;
    *v25 = v148;
    *(v25 + 1) = 0;
    *(v25 + 8) = 1;
    v25[24] = v37;
    *(v25 + 4) = v39;
    *(v25 + 5) = v41;
    *(v25 + 6) = v43;
    *(v25 + 7) = v45;
    v25[64] = 0;
    *(v25 + 65) = 0;
    v52 = *&v179[80];
    *(v25 + 131) = *&v179[64];
    *(v25 + 147) = v52;
    *(v25 + 163) = *&v179[96];
    *(v25 + 22) = *&v179[109];
    v53 = *&v179[16];
    *(v25 + 67) = *v179;
    *(v25 + 83) = v53;
    v54 = *&v179[48];
    *(v25 + 99) = *&v179[32];
    *(v25 + 115) = v54;
    v55 = v172;
    v56 = v178;
    (*(v17 + 16))(v172, v176, v178);
    v57 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v58 = (v168 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v169;
    v61 = v175;
    *(v59 + 16) = v169;
    *(v59 + 24) = v61;
    (*(v17 + 32))(v59 + v57, v55, v56);
    v62 = v149;
    *(v59 + v58) = v149;
    v63 = v158;
    sub_10000F618(v25, v158, &qword_1002209B0);
    v64 = (v63 + *(v155 + 36));
    *v64 = sub_100139570;
    v64[1] = v59;
    v65 = v62;
    v66 = static Alignment.center.getter();
    v68 = v67;
    v69 = v159;
    v70 = &v159[*(v154 + 36)];
    v71 = v176;
    sub_100137294(v176, v60, v61, v70);
    v72 = (v70 + *(sub_100009F70(&qword_100220A28) + 36));
    *v72 = v66;
    v72[1] = v68;
    sub_10000F618(v63, v69, &qword_1002209B8);
    LOBYTE(v66) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v81 = v69;
    v82 = v157;
    sub_10000F618(v81, v157, &qword_1002209C0);
    v83 = v173;
    v84 = v82 + *(v173 + 36);
    *v84 = v66;
    *(v84 + 1) = v74;
    *(v84 + 2) = v76;
    *(v84 + 3) = v78;
    *(v84 + 4) = v80;
    v84[40] = 0;
    v85 = v82;
    v86 = v156;
    sub_10000F618(v85, v156, &qword_1002209C8);
    v87 = v86;
    v88 = v177;
    sub_10000F618(v87, v177, &qword_1002209C8);
    (*(v160 + 56))(v88, 0, 1, v83);
    v89 = v71;
    v90 = v88;
  }

  else
  {
    v90 = v177;
    (*(v160 + 56))(v177, 1, 1, v173);
    v89 = v176;
  }

  v91 = v178;
  v160 = static HorizontalAlignment.center.getter();
  v200 = 0;
  sub_100137ED0(&v181);
  v206 = *&v182[64];
  v207 = *&v182[80];
  v208[0] = *&v182[96];
  *(v208 + 9) = *&v182[105];
  v203 = *&v182[16];
  v204 = *&v182[32];
  v205 = *&v182[48];
  v201 = v181;
  v202 = *v182;
  v209[5] = *&v182[64];
  v209[6] = *&v182[80];
  v210[0] = *&v182[96];
  *(v210 + 9) = *&v182[105];
  v209[2] = *&v182[16];
  v209[3] = *&v182[32];
  v209[4] = *&v182[48];
  v209[0] = v181;
  v209[1] = *v182;
  sub_10000D58C(&v201, v180, &qword_1002209D8);
  sub_10000D52C(v209, &qword_1002209D8);
  *(&v199[5] + 7) = v206;
  *(&v199[6] + 7) = v207;
  *(&v199[7] + 7) = v208[0];
  v199[8] = *(v208 + 9);
  *(&v199[1] + 7) = v202;
  *(&v199[2] + 7) = v203;
  *(&v199[3] + 7) = v204;
  *(&v199[4] + 7) = v205;
  *(v199 + 7) = v201;
  LODWORD(v173) = v200;
  LODWORD(v159) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  LOBYTE(v181) = 0;
  LODWORD(v158) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = v161;
  URL.init(string:)();

  v109 = v170;
  v110 = v163;
  v111 = (*(v170 + 48))(v108, 1, v163);
  v112 = v171;
  if (v111 == 1)
  {
    sub_10000D52C(v108, qword_100218748);
    v113 = 1;
    v114 = v165;
  }

  else
  {
    v157 = *(v109 + 32);
    v115 = v162;
    v157();
    v116 = v150;
    (*(v150 + 16))(v172, v89, v91);
    v117 = v152;
    (*(v109 + 16))(v152, v115, v110);
    v118 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v119 = (v168 + *(v109 + 80) + v118) & ~*(v109 + 80);
    v120 = swift_allocObject();
    v121 = v175;
    *(v120 + 16) = v169;
    *(v120 + 24) = v121;
    (*(v116 + 32))(v120 + v118, v172, v178);
    v112 = v171;
    v122 = (v157)(v120 + v119, v117, v110);
    __chkstk_darwin(v122);
    sub_100009F70(&qword_1002209F0);
    sub_1001391BC();
    v123 = v153;
    Button.init(action:label:)();
    LOBYTE(v120) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v172 = v107;
    v124 = v101;
    v125 = v93;
    v127 = v126;
    v175 = v105;
    v176 = v103;
    v128 = v95;
    v130 = v129;
    v131 = v97;
    v133 = v132;
    v178 = v99;
    v135 = v134;
    (*(v170 + 8))(v162, v110);
    v114 = v165;
    v136 = &v123[*(v165 + 36)];
    *v136 = v120;
    *(v136 + 1) = v127;
    *(v136 + 2) = v130;
    v93 = v125;
    v101 = v124;
    v107 = v172;
    v95 = v128;
    *(v136 + 3) = v133;
    *(v136 + 4) = v135;
    v97 = v131;
    v105 = v175;
    v103 = v176;
    v99 = v178;
    v136[40] = 0;
    v137 = v123;
    v90 = v177;
    sub_10000F618(v137, v112, &qword_1002209A0);
    v113 = 0;
  }

  (*(v164 + 56))(v112, v113, 1, v114);
  v138 = v174;
  sub_10000D58C(v90, v174, &qword_1002209D0);
  v139 = v166;
  sub_10000D58C(v112, v166, &qword_1002209A8);
  v140 = v138;
  v141 = v167;
  sub_10000D58C(v140, v167, &qword_1002209D0);
  v142 = sub_100009F70(&qword_1002209E0);
  v143 = *(v142 + 48);
  *(&v180[12] + 1) = v199[5];
  *(&v180[14] + 1) = v199[6];
  *(&v180[16] + 1) = v199[7];
  *(&v180[18] + 1) = v199[8];
  *(&v180[4] + 1) = v199[1];
  *(&v180[6] + 1) = v199[2];
  *(&v180[8] + 1) = v199[3];
  *(&v180[10] + 1) = v199[4];
  v144 = v160;
  v180[0] = v160;
  v180[1] = 0x4020000000000000;
  LOBYTE(v180[2]) = v173;
  *(&v180[2] + 1) = v199[0];
  *(&v180[20] + 1) = *v214;
  HIDWORD(v180[20]) = *&v214[3];
  v145 = v159;
  LOBYTE(v180[21]) = v159;
  *(&v180[21] + 1) = *v213;
  HIDWORD(v180[21]) = *&v213[3];
  v180[22] = v93;
  v180[23] = v95;
  v180[24] = v97;
  v180[25] = v99;
  LOBYTE(v180[26]) = 0;
  *(&v180[26] + 1) = *v212;
  HIDWORD(v180[26]) = *&v212[3];
  v146 = v158;
  LOBYTE(v180[27]) = v158;
  HIDWORD(v180[27]) = *&v211[3];
  *(&v180[27] + 1) = *v211;
  v180[28] = v101;
  v180[29] = v103;
  v180[30] = v105;
  v180[31] = v107;
  LOBYTE(v180[32]) = 0;
  memcpy((v141 + v143), v180, 0x101uLL);
  sub_10000D58C(v139, v141 + *(v142 + 64), &qword_1002209A8);
  sub_10000D58C(v180, &v181, &qword_1002209E8);
  sub_10000D52C(v112, &qword_1002209A8);
  sub_10000D52C(v177, &qword_1002209D0);
  sub_10000D52C(v139, &qword_1002209A8);
  *&v182[81] = v199[5];
  *&v182[97] = v199[6];
  *&v182[113] = v199[7];
  *&v182[129] = v199[8];
  *&v182[17] = v199[1];
  *&v182[33] = v199[2];
  *&v182[49] = v199[3];
  *&v182[65] = v199[4];
  *&v181 = v144;
  *(&v181 + 1) = 0x4020000000000000;
  v182[0] = v173;
  *&v182[1] = v199[0];
  *v183 = *v214;
  *&v183[3] = *&v214[3];
  v184 = v145;
  *v185 = *v213;
  *&v185[3] = *&v213[3];
  v186 = v93;
  v187 = v95;
  v188 = v97;
  v189 = v99;
  v190 = 0;
  *v191 = *v212;
  *&v191[3] = *&v212[3];
  v192 = v146;
  *&v193[3] = *&v211[3];
  *v193 = *v211;
  v194 = v101;
  v195 = v103;
  v196 = v105;
  v197 = v107;
  v198 = 0;
  sub_10000D52C(&v181, &qword_1002209E8);
  return sub_10000D52C(v174, &qword_1002209D0);
}

uint64_t sub_10013718C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  type metadata accessor for SavedWallpaperView();
  sub_100135848();
  sub_10002003C(v4);

  sub_100135848();
  v5 = sub_10001FFB4();

  [a3 size];
  v7 = v5 / v6;
  sub_100135848();
  [a3 size];
  sub_1000203A0(v7 * v8);

  sub_100135848();
  [a3 size];
  sub_10002058C(v7 * v9);
}

uint64_t sub_100137294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for SavedWallpaperView();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v23 = &v23 - v10;
  v11 = *(a2 - 8);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v24 = a1;
  v17 = sub_100135848();
  (*(v11 + 16))(v13, v17 + *(*v17 + 96), a2);

  (*(a3 + 16))(a2, a3);
  (*(v11 + 8))(v13, a2);
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  v19 = v23;
  (*(v8 + 16))(v23, v24, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v8 + 32))(v21 + v20, v19, v7);
  sub_100009F70(&qword_100220A30);
  sub_100139868();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_1001375B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v62 = a2;
  v59 = a1;
  v67 = a5;
  v5 = sub_100009F70(&qword_100218DD0);
  __chkstk_darwin(v5);
  v7 = (&v53 - v6);
  v55 = sub_100009F70(&qword_100220A98);
  __chkstk_darwin(v55);
  v54 = &v53 - v8;
  v66 = sub_100009F70(&qword_100220A88);
  v9 = __chkstk_darwin(v66);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v53 - v11;
  v64 = sub_100009F70(&qword_100220AB0);
  __chkstk_darwin(v64);
  v65 = &v53 - v12;
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100009F70(&qword_100220A48);
  v17 = __chkstk_darwin(v63);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v57 = &v53 - v20;
  v21 = type metadata accessor for AsyncImagePhase();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v59, v21);
  if ((*(v22 + 88))(v24, v21) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v22 + 96))(v24, v21);
    (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
    v25 = Image.resizable(capInsets:resizingMode:)();
    (*(v14 + 8))(v16, v13);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v68[54] = v73;
    *&v68[70] = v74;
    *&v68[86] = v75;
    *&v68[102] = v76;
    *&v68[6] = v70;
    *&v68[22] = v71;
    v69 = 1;
    *&v68[38] = v72;
    type metadata accessor for SavedWallpaperView();
    sub_100135848();
    sub_1000206F0();

    sub_100135848();
    sub_100020714();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_100135848();
    v26 = sub_100020738();

    v27 = &v19[*(v63 + 36)];
    v28 = *(type metadata accessor for RoundedRectangle() + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v30 = type metadata accessor for RoundedCornerStyle();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = v26;
    v27[1] = v26;
    *(v27 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
    v31 = *&v68[80];
    *(v19 + 82) = *&v68[64];
    *(v19 + 98) = v31;
    *(v19 + 114) = *&v68[96];
    v32 = *&v68[16];
    *(v19 + 18) = *v68;
    *(v19 + 34) = v32;
    v33 = *&v68[48];
    *(v19 + 50) = *&v68[32];
    *(v19 + 66) = v33;
    v34 = v78;
    *(v19 + 136) = v77;
    *v19 = v25;
    *(v19 + 1) = 0;
    *(v19 + 8) = 257;
    *(v19 + 16) = *&v68[110];
    *(v19 + 152) = v34;
    *(v19 + 168) = v79;
    *(v19 + 92) = 0;
    v35 = v19;
    v36 = v57;
    sub_10000F618(v35, v57, &qword_100220A48);
    sub_10000D58C(v36, v65, &qword_100220A48);
    swift_storeEnumTagMultiPayload();
    sub_1001398F4();
    sub_100139B7C();
    _ConditionalContent<>.init(storage:)();

    return sub_10000D52C(v36, &qword_100220A48);
  }

  else
  {
    type metadata accessor for SavedWallpaperView();
    sub_100135848();
    v38 = sub_100020738();

    v39 = *(type metadata accessor for RoundedRectangle() + 20);
    v40 = enum case for RoundedCornerStyle.continuous(_:);
    v41 = type metadata accessor for RoundedCornerStyle();
    (*(*(v41 - 8) + 104))(v7 + v39, v40, v41);
    *v7 = v38;
    v7[1] = v38;
    *(v7 + *(v5 + 36)) = static Color.black.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v42 = v54;
    sub_10000F618(v7, v54, &qword_100218DD0);
    v43 = (v42 + *(v55 + 36));
    v44 = v73;
    v45 = v75;
    v46 = v76;
    v43[4] = v74;
    v43[5] = v45;
    v43[6] = v46;
    v47 = v71;
    v48 = v72;
    *v43 = v70;
    v43[1] = v47;
    v43[2] = v48;
    v43[3] = v44;
    sub_100135848();
    sub_1000206F0();

    sub_100135848();
    sub_100020714();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v49 = v56;
    sub_10000F618(v42, v56, &qword_100220A98);
    v50 = (v49 + *(v66 + 36));
    v51 = v78;
    *v50 = v77;
    v50[1] = v51;
    v50[2] = v79;
    v52 = v58;
    sub_10000F618(v49, v58, &qword_100220A88);
    sub_10000D58C(v52, v65, &qword_100220A88);
    swift_storeEnumTagMultiPayload();
    sub_1001398F4();
    sub_100139B7C();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v52, &qword_100220A88);
    return (*(v22 + 8))(v24, v21);
  }
}

uint64_t sub_100137ED0@<X0>(_OWORD *a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v39 = v8;
  v40 = v7;
  v10 = v9;
  v36 = v11;

  sub_10000D60C(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v37 = v10 & 1;
  LOBYTE(v66[0]) = v10 & 1;
  LOBYTE(v56[0]) = 0;
  sub_100135384();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10000D60C(v12, v14, v16 & 1);

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v66[0] = qword_100230570;

  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10000D60C(v17, v19, v21 & 1);

  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  LOBYTE(v66[0]) = v26 & 1;
  *&v46 = v40;
  *(&v46 + 1) = v39;
  LOBYTE(v47) = v37;
  *(&v47 + 1) = *v45;
  DWORD1(v47) = *&v45[3];
  *(&v47 + 1) = v36;
  *&v48 = KeyPath;
  *(&v48 + 1) = 2;
  LOBYTE(v49) = 0;
  DWORD1(v49) = *&v44[3];
  *(&v49 + 1) = *v44;
  *(&v49 + 1) = v35;
  v50 = 1;
  v41[0] = 1;
  *&v51 = v22;
  *(&v51 + 1) = v24;
  LOBYTE(v52) = v26 & 1;
  DWORD1(v52) = *&v43[3];
  *(&v52 + 1) = *v43;
  *(&v52 + 1) = v28;
  *&v53 = v29;
  *(&v53 + 1) = 2;
  LOBYTE(v54) = 0;
  DWORD1(v54) = *&v42[3];
  *(&v54 + 1) = *v42;
  *(&v54 + 1) = v30;
  v55 = 1;
  *&v41[8] = v51;
  v41[72] = 1;
  *&v41[56] = v54;
  *&v41[40] = v53;
  *&v41[24] = v52;
  v31 = v46;
  v32 = v47;
  v33 = v49;
  a1[2] = v48;
  a1[3] = v33;
  *a1 = v31;
  a1[1] = v32;
  *(a1 + 121) = *&v41[57];
  a1[6] = *&v41[32];
  a1[7] = *&v41[48];
  a1[4] = *v41;
  a1[5] = *&v41[16];
  v56[0] = v22;
  v56[1] = v24;
  v57 = v26 & 1;
  *v58 = *v43;
  *&v58[3] = *&v43[3];
  v59 = v28;
  v60 = v29;
  v61 = 2;
  v62 = 0;
  *v63 = *v42;
  *&v63[3] = *&v42[3];
  v64 = v30;
  v65 = 1;
  sub_10000D58C(&v46, v66, &qword_10021A630);
  sub_10000D58C(&v51, v66, &qword_10021A630);
  sub_10000D52C(v56, &qword_10021A630);
  v66[0] = v40;
  v66[1] = v39;
  v67 = v37;
  *v68 = *v45;
  *&v68[3] = *&v45[3];
  v69 = v36;
  v70 = KeyPath;
  v71 = 2;
  v72 = 0;
  *v73 = *v44;
  *&v73[3] = *&v44[3];
  v74 = v35;
  v75 = 1;
  return sub_10000D52C(v66, &qword_10021A630);
}

uint64_t sub_100138350(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(&qword_100218DF8);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SavedWallpaperView();
  sub_10000D58C(a1 + *(v13 + 40), v8, &qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v5, v18);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

double sub_1001385EC@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000D60C(v2, v4, v6 & 1);

  *&v42 = static Color.white.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v39 = v13;
  v40 = v12;
  v15 = v14;
  v38 = v16;
  sub_10000D60C(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 & 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[87] = v47;
  *&v41[103] = v48;
  *&v41[7] = v42;
  *&v41[23] = v43;
  *&v41[39] = v44;
  v27 = static Color.blue.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v28 = (a1 + *(sub_100009F70(&qword_1002209F0) + 36));
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #12.0 }

  *v28 = _Q0;
  *&v28[*(sub_100009F70(&qword_100218928) + 36)] = 256;
  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v26;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = v19;
  *(a1 + 72) = v21;
  *(a1 + 80) = v23;
  *(a1 + 88) = v25;
  *(a1 + 96) = 0;
  *(a1 + 161) = *&v41[64];
  *(a1 + 177) = *&v41[80];
  *(a1 + 193) = *&v41[96];
  *(a1 + 97) = *v41;
  *(a1 + 113) = *&v41[16];
  result = *&v41[32];
  *(a1 + 129) = *&v41[32];
  *(a1 + 145) = *&v41[48];
  *(a1 + 208) = *(&v48 + 1);
  *(a1 + 216) = v27;
  *(a1 + 224) = v9;
  return result;
}

uint64_t sub_100138940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009F70(&qword_10021A8B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v13 = a2;
  v14 = a3;
  v15 = a1;
  sub_100042DC4();
  ToolbarItem<>.init(placement:content:)();
  sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100138AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SavedWallpaperView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v9 + 32))(v13 + v12, v11, v8);
  *a4 = 0;
  *(a4 + 8) = sub_100138E10;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_100138C3C()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedWallpaperView();
  sub_10013589C(v4, v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_100138D3C()
{
  result = qword_100220980;
  if (!qword_100220980)
  {
    sub_10000B3DC(&qword_100220978);
    sub_10000D1EC(&qword_100220988, &qword_100220990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220980);
  }

  return result;
}

uint64_t sub_100138E10()
{
  type metadata accessor for SavedWallpaperView();

  return sub_100138C3C();
}

uint64_t sub_100138E94()
{
  v1 = type metadata accessor for SavedWallpaperView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v13 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = *(v1 + 36);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v13 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1001390CC()
{
  v1 = *(type metadata accessor for SavedWallpaperView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100138350(v0 + v2, v5);
}

unint64_t sub_1001391BC()
{
  result = qword_1002209F8;
  if (!qword_1002209F8)
  {
    sub_10000B3DC(&qword_1002209F0);
    sub_100139274();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002209F8);
  }

  return result;
}

unint64_t sub_100139274()
{
  result = qword_100220A00;
  if (!qword_100220A00)
  {
    sub_10000B3DC(&qword_100220A08);
    sub_10013932C();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A00);
  }

  return result;
}

unint64_t sub_10013932C()
{
  result = qword_100220A10;
  if (!qword_100220A10)
  {
    sub_10000B3DC(&qword_100220A18);
    sub_1000B195C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A10);
  }

  return result;
}

uint64_t sub_1001393B8()
{
  v1 = type metadata accessor for SavedWallpaperView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v1 + 36);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100139570(uint64_t a1)
{
  v3 = *(type metadata accessor for SavedWallpaperView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10013718C(a1, v1 + v4, v5);
}

uint64_t sub_100139628()
{
  v1 = type metadata accessor for SavedWallpaperView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 36);
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001397CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SavedWallpaperView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1001375B4(a1, v8, v5, v6, a2);
}

unint64_t sub_100139868()
{
  result = qword_100220A38;
  if (!qword_100220A38)
  {
    sub_10000B3DC(&qword_100220A30);
    sub_1001398F4();
    sub_100139B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A38);
  }

  return result;
}

unint64_t sub_1001398F4()
{
  result = qword_100220A40;
  if (!qword_100220A40)
  {
    sub_10000B3DC(&qword_100220A48);
    sub_1001399AC();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A40);
  }

  return result;
}

unint64_t sub_1001399AC()
{
  result = qword_100220A50;
  if (!qword_100220A50)
  {
    sub_10000B3DC(&qword_100220A58);
    sub_100139A64();
    sub_10000D1EC(&qword_10021B628, &qword_10021B630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A50);
  }

  return result;
}

unint64_t sub_100139A64()
{
  result = qword_100220A60;
  if (!qword_100220A60)
  {
    sub_10000B3DC(&qword_100220A68);
    sub_100139AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A60);
  }

  return result;
}

unint64_t sub_100139AF0()
{
  result = qword_100220A70;
  if (!qword_100220A70)
  {
    sub_10000B3DC(&qword_100220A78);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A70);
  }

  return result;
}

unint64_t sub_100139B7C()
{
  result = qword_100220A80;
  if (!qword_100220A80)
  {
    sub_10000B3DC(&qword_100220A88);
    sub_100139C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A80);
  }

  return result;
}

unint64_t sub_100139C08()
{
  result = qword_100220A90;
  if (!qword_100220A90)
  {
    sub_10000B3DC(&qword_100220A98);
    sub_100139C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A90);
  }

  return result;
}

unint64_t sub_100139C94()
{
  result = qword_100220AA0;
  if (!qword_100220AA0)
  {
    sub_10000B3DC(&qword_100218DD0);
    sub_100139D4C();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220AA0);
  }

  return result;
}

unint64_t sub_100139D4C()
{
  result = qword_100220AA8;
  if (!qword_100220AA8)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220AA8);
  }

  return result;
}

unint64_t sub_100139E08(uint64_t a1)
{
  result = sub_100139E30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100139E30()
{
  result = qword_100220AC8;
  if (!qword_100220AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220AC8);
  }

  return result;
}

uint64_t sub_100139EE0(uint64_t a1)
{
  *(a1 + 8) = sub_100139F64(&qword_100220B18, &type metadata accessor for Album);
  result = sub_100139F64(&qword_100220B20, &type metadata accessor for Album);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100139F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100139FDC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013A0F8;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_1002103E8;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013A0F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013CAC8;
  }

  else
  {
    v2 = sub_10013A208;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10013A208()
{
  v1 = *(v0 + 144);
  v2 = [v1 campaignGroup];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_10013A2AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10013A398;

  return v5();
}

uint64_t sub_10013A398(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_10013A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_10013A4D8);
}

uint64_t sub_10013A4D8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013A5F4;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_1002103C0;
  v0[14] = v2;
  [v1 campaignTokenWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013A5F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10013A7F4;
  }

  else
  {
    v2 = sub_10013A704;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10013A704()
{
  v1 = *(v0 + 144);

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 tokenForClientIdentifier:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_10013A7F4()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013A864(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100028124((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100009F70(qword_10021A1B8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10013A95C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013AA78;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_100210398;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013AA78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013AC2C;
  }

  else
  {
    v2 = sub_10013AB88;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10013AB88()
{
  v1 = *(v0 + 144);
  v2 = [v1 sportsCampaignToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_10013AC2C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013ACB8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013ADD4;
  v2 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_100220B28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CAD0;
  v0[13] = &unk_100210370;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013ADD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10013CAC8;
  }

  else
  {
    v2 = sub_10013AEE4;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10013AEE4()
{
  v1 = *(v0 + 144);
  v2 = [v1 providerToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_10013AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[373] = a3;
  v3[372] = a2;
  v3[371] = a1;
  return _swift_task_switch(sub_10013AFB0);
}

uint64_t sub_10013AFB0()
{
  v1 = v0[373];
  v2 = v0[372];
  v3 = [objc_opt_self() sharedInstance];
  v0[374] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v0[375] = v5;
  *(v5 + 16) = &unk_1001B94F8;
  *(v5 + 24) = v4;
  v6 = v3;
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_allocObject();
  v0[376] = v8;
  *(v8 + 16) = &unk_1001B9518;
  *(v8 + 24) = v7;
  v9 = v6;
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v0[377] = v11;
  *(v11 + 16) = &unk_1001B9530;
  *(v11 + 24) = v10;
  v12 = v9;
  swift_asyncLet_begin();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  v0[378] = v14;
  *(v14 + 16) = &unk_1001B9548;
  *(v14 + 24) = v13;
  v15 = v12;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 368, sub_10013B25C, v0 + 322);
}

uint64_t sub_10013B25C()
{
  v1[379] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 242);
  }

  else
  {
    v1[380] = v1[368];
    v1[381] = v1[369];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 364, sub_10013B318, v1 + 322);
  }
}

uint64_t sub_10013B318()
{
  v1[382] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_10013BA8C);
  }

  else
  {
    v1[383] = v1[364];
    v1[384] = v1[365];

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 362, sub_10013B3D0, v1 + 322);
  }
}

uint64_t sub_10013B3D0()
{
  v1[385] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_10013BDF8);
  }

  else
  {
    v1[386] = v1[362];
    v1[387] = v1[363];

    return _swift_asyncLet_get_throwing(v1 + 242, v1 + 366, sub_10013B488, v1 + 322);
  }
}

uint64_t sub_10013B488()
{
  *(v1 + 3104) = v0;
  if (v0)
  {
    v2 = sub_10013C170;
  }

  else
  {
    *(v1 + 2776) = 0u;
    *(v1 + 2792) = 0u;
    *(v1 + 2744) = 0u;
    *(v1 + 2760) = 0u;
    sub_1000831F8(v1 + 2744);
    v2 = sub_10013B514;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10013B514()
{
  v1 = *(v0 + 3096);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3072);
  v4 = *(v0 + 3064);
  v5 = *(v0 + 3048);
  v6 = *(v0 + 3040);
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2936);
  *(v0 + 2808) = v6;
  *(v0 + 2816) = v5;
  *(v0 + 2824) = v4;
  *(v0 + 2832) = v3;
  *(v0 + 2840) = v2;
  *(v0 + 2848) = v1;
  *(v0 + 2856) = v7;
  *(v0 + 2864) = v8;
  *(v0 + 2616) = v6;
  *(v0 + 2624) = v5;
  *(v0 + 2632) = v4;
  *(v0 + 2640) = v3;
  *(v0 + 2648) = v2;
  *(v0 + 2656) = v1;
  *(v0 + 2664) = v7;
  *(v0 + 2672) = v8;

  sub_10008319C(v0 + 2808, v0 + 2680);
  sub_1000831F8(v0 + 2616);
  v9 = *(v0 + 2824);
  *(v0 + 3112) = *(v0 + 2808);
  *(v0 + 3128) = v9;
  v10 = *(v0 + 2856);
  *(v0 + 3144) = *(v0 + 2840);
  *(v0 + 3160) = v10;

  return _swift_asyncLet_finish(v0 + 1936);
}

uint64_t sub_10013B6D4()
{

  v1 = *(v0 + 2968);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3160);
  *v1 = *(v0 + 3112);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10013B85C()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013BA8C()
{

  return _swift_asyncLet_finish(v0 + 1936);
}

uint64_t sub_10013BBC8()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013BDF8()
{

  return _swift_asyncLet_finish(v0 + 1936);
}

uint64_t sub_10013BF40()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013C170()
{

  return _swift_asyncLet_finish(v0 + 1936);
}

uint64_t sub_10013C2C4()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10005D4E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100021498(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10013C4F4()
{

  return swift_deallocObject();
}

uint64_t sub_10013C52C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013CACC;

  return sub_100139FBC(v2);
}

uint64_t sub_10013C5C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_10013A2AC(a1, v4);
}

uint64_t sub_10013C678()
{

  return swift_deallocObject();
}

uint64_t sub_10013C6B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10013C760;

  return sub_10013A4B4(v2, v3, v4);
}

uint64_t sub_10013C760(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10013C86C()
{

  return swift_deallocObject();
}

uint64_t sub_10013C8A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D890;

  return sub_10013A2AC(a1, v4);
}

uint64_t sub_10013C95C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013CACC;

  return sub_10013A93C(v2);
}

uint64_t sub_10013C9F0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10013CACC;

  return sub_10013AC98(v2);
}

uint64_t sub_10013CAD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10013CB1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013CB88()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  qword_100220B38 = v0;
  return result;
}

uint64_t sub_10013CBC8()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100220B40 = result;
  return result;
}

uint64_t sub_10013CC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = sub_100009F70(&qword_100220B48);
  __chkstk_darwin(v7 - 8);
  v9 = (&v38 - v8);
  v10 = sub_100009F70(&qword_100220B50);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_100009F70(&qword_100220B58);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v39 = sub_100009F70(&qword_100220B60);
  __chkstk_darwin(v39);
  v40 = &v38 - v17;
  *v9 = static Alignment.center.getter();
  v9[1] = v18;
  v19 = sub_100009F70(&qword_100220B68);
  sub_10013D098(a1, a2, a3 & 1, v9 + *(v19 + 44));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v9, v13, &qword_100220B48);
  v20 = &v13[*(v11 + 44)];
  v21 = v47;
  *(v20 + 4) = v46;
  *(v20 + 5) = v21;
  *(v20 + 6) = v48;
  v22 = v43;
  *v20 = v42;
  *(v20 + 1) = v22;
  v23 = v45;
  *(v20 + 2) = v44;
  *(v20 + 3) = v23;
  v24 = *(a1 + 16);
  v25 = v24[5];
  v26 = v24[6];
  sub_100028124(v24 + 2, v25);
  if ((*(v26 + 32))(v25, v26))
  {
    if (qword_100218438 != -1)
    {
      swift_once();
    }

    v27 = qword_100220B38;
  }

  else
  {
    v27 = 0;
  }

  v28 = static Alignment.center.getter();
  v30 = v29;
  sub_10000F618(v13, v16, &qword_100220B50);
  v31 = &v16[*(v14 + 36)];
  *v31 = v27;
  v31[1] = v28;
  v31[2] = v30;
  LocalizedStringKey.init(stringLiteral:)();
  v33 = v24[5];
  v32 = v24[6];
  sub_100028124(v24 + 2, v33);
  (*(v32 + 32))(v33, v32);
  sub_10013E890();
  v34 = v40;
  View.accessibilityLabel(_:isEnabled:)();

  sub_10000D52C(v16, &qword_100220B58);
  LocalizedStringKey.init(stringLiteral:)();
  v35 = v24[5];
  v36 = v24[6];
  sub_100028124(v24 + 2, v35);
  (*(v36 + 32))(v35, v36);
  ModifiedContent<>.accessibilityLabel(_:isEnabled:)();

  return sub_10000D52C(v34, &qword_100220B60);
}

uint64_t sub_10013D098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v81 = a2;
  v92 = a4;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v88 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100009F70(&qword_100220B98);
  __chkstk_darwin(v80);
  v8 = (&v67 - v7);
  v84 = sub_100009F70(&qword_100220BA0);
  __chkstk_darwin(v84);
  v82 = &v67 - v9;
  v87 = sub_100009F70(&qword_100220BA8);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v67 - v10;
  v11 = sub_100009F70(&qword_100220BB0);
  v12 = __chkstk_darwin(v11 - 8);
  v89 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v67 - v14;
  v70 = type metadata accessor for EnvironmentValues();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AnimationTimelineSchedule();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v75 = sub_100009F70(&qword_100220BB8);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - v23;
  v77 = sub_100009F70(&qword_100220BC0);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v67 - v24;
  v25 = sub_100009F70(&qword_100220BC8);
  v26 = __chkstk_darwin(v25 - 8);
  v79 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v78 = &v67 - v28;
  v29 = *(a1 + 16);
  v30 = v29[5];
  v31 = v29[6];
  sub_100028124(v29 + 2, v30);
  if ((*(v31 + 32))(v30, v31) == 3 || (v32 = v29[5], v33 = v29[6], sub_100028124(v29 + 2, v32), (*(v33 + 32))(v32, v33) == 2))
  {
    v71 = v8;
    v34 = v16;
    v35 = v17;
    v36 = a1;
    v37 = v29[5];
    v38 = v29[6];
    sub_100028124(v29 + 2, v37);
    if ((*(v38 + 32))(v37, v38) == 3)
    {
      v39 = v81;
      v40 = v93;
    }

    else
    {
      v39 = v81;
      v40 = v93;
      if ((v93 & 1) == 0)
      {

        static os_log_type_t.fault.getter();
        v42 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v43 = v68;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v39, 0);
        (*(v69 + 8))(v43, v70);
      }
    }

    AnimationTimelineSchedule.init(minimumInterval:paused:)();
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    *(v44 + 24) = v39;
    *(v44 + 32) = v40 & 1;
    (*(v35 + 16))(v20, v22, v34);
    v45 = swift_allocObject();
    *(v45 + 16) = sub_10013EBB4;
    *(v45 + 24) = v44;

    sub_10013ED48(v39, v40 & 1);
    sub_100009F70(&qword_100220C00);
    sub_10013F0E4(&qword_100220C08, &type metadata accessor for AnimationTimelineSchedule);
    sub_10013ED54();
    v46 = v73;
    TimelineView<>.init(_:content:)();
    (*(v35 + 8))(v22, v34);
    sub_10013EF2C();
    v47 = v72;
    v48 = v75;
    View.accessibilityHidden(_:)();
    (*(v74 + 8))(v46, v48);
    v41 = v78;
    sub_10000F618(v47, v78, &qword_100220BC0);
    (*(v76 + 56))(v41, 0, 1, v77);
    v8 = v71;
  }

  else
  {
    v41 = v78;
    (*(v76 + 56))(v78, 1, 1, v77);
    v36 = a1;
  }

  *v8 = static Alignment.center.getter();
  v8[1] = v49;
  v50 = sub_100009F70(&qword_100220BD0);
  sub_10013E01C(v36, (v8 + *(v50 + 44)));
  *(v8 + *(v80 + 36)) = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v51 = v82;
  sub_10000F618(v8, v82, &qword_100220B98);
  v52 = v84;
  v53 = (v51 + *(v84 + 36));
  v54 = v101;
  v53[4] = v100;
  v53[5] = v54;
  v53[6] = v102;
  v55 = v97;
  *v53 = v96;
  v53[1] = v55;
  v56 = v99;
  v53[2] = v98;
  v53[3] = v56;
  v57 = v88;
  static AccessibilityChildBehavior.combine.getter();
  v58 = sub_10013EA00();
  v59 = v83;
  View.accessibilityElement(children:)();
  (*(v90 + 8))(v57, v91);
  sub_10000D52C(v51, &qword_100220BA0);
  v94 = v52;
  v95 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v86;
  v61 = v87;
  View.accessibilityIdentifier(_:)();
  (*(v85 + 8))(v59, v61);
  v62 = v79;
  sub_10000D58C(v41, v79, &qword_100220BC8);
  v63 = v89;
  sub_10000D58C(v60, v89, &qword_100220BB0);
  v64 = v92;
  sub_10000D58C(v62, v92, &qword_100220BC8);
  v65 = sub_100009F70(&qword_100220BF8);
  sub_10000D58C(v63, v64 + *(v65 + 48), &qword_100220BB0);
  sub_10000D52C(v60, &qword_100220BB0);
  sub_10000D52C(v41, &qword_100220BC8);
  sub_10000D52C(v63, &qword_100220BB0);
  return sub_10000D52C(v62, &qword_100220BC8);
}

uint64_t sub_10013DC7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = type metadata accessor for Font.TextStyle();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CircularProgressViewStyle();
  __chkstk_darwin(v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100009F70(&qword_10021C948);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = v13[5];
  v15 = v13[6];
  sub_100028124(v13 + 2, v14);
  *&v25 = (*(v15 + 24))(v14, v15);
  BYTE8(v25) = 0;
  v24 = 0x3FF0000000000000;
  sub_1000A4228();
  ProgressView.init<A>(value:total:)();
  *v8 = static Color.white.getter();
  *&v25 = 0x4000000000000000;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v22);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  sub_10000D1EC(&qword_10021C940, &qword_10021C948);
  sub_10013F0E4(&qword_100220C28, type metadata accessor for CircularProgressViewStyle);
  v16 = v23;
  View.progressViewStyle<A>(_:)();
  sub_10013EFB0(v8);
  (*(v10 + 8))(v12, v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = (v16 + *(sub_100009F70(&qword_100220C20) + 36));
  v18 = v26;
  *v17 = v25;
  v17[1] = v18;
  v17[2] = v27;
  result = sub_100009F70(&qword_100220C00);
  v20 = (v16 + *(result + 36));
  *v20 = sub_10013DFF4;
  v20[1] = 0;
  return result;
}

uint64_t sub_10013E01C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v87 = a2;
  v81 = sub_100009F70(&qword_10021C890);
  __chkstk_darwin(v81);
  v4 = &v80 - v3;
  v82 = sub_100009F70(&qword_100220C48);
  __chkstk_darwin(v82);
  v6 = &v80 - v5;
  v83 = sub_100009F70(&qword_100220C50);
  __chkstk_darwin(v83);
  v8 = &v80 - v7;
  v84 = sub_100009F70(&qword_100220C58);
  v9 = __chkstk_darwin(v84);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v80 - v12;
  __chkstk_darwin(v11);
  v89 = &v80 - v14;
  v92 = Image.init(systemName:)();
  v91 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v15 = *(a1 + 16);
  v17 = v15[5];
  v16 = v15[6];
  sub_100028124(v15 + 2, v17);
  v18 = (*(v16 + 32))(v17, v16);
  v20 = v15[5];
  v19 = v15[6];
  sub_100028124(v15 + 2, v20);
  v21 = (*(v19 + 32))(v20, v19);
  static UnitPoint.center.getter();
  v85 = v22;
  v24 = v23;
  if (qword_100218440 != -1)
  {
    swift_once();
  }

  v25 = 0.0;
  if (v21 == 2)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  if (v18 == 2)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = qword_100220B40;
  v29 = v15[5];
  v30 = v15[6];
  sub_100028124(v15 + 2, v29);
  v88 = (*(v30 + 32))(v29, v30) == 2;

  ProgressView<>.init<>()();
  v31 = static Color.white.getter();
  v32 = swift_getKeyPath();
  v33 = &v4[*(sub_100009F70(&qword_10021C918) + 36)];
  *v33 = v32;
  v33[1] = v31;
  *&v4[*(sub_100009F70(&qword_10021C920) + 36)] = 257;
  v34 = &v4[*(v81 + 36)];
  v35 = *(sub_100009F70(&qword_10021BF68) + 28);
  v36 = enum case for ControlSize.small(_:);
  v37 = type metadata accessor for ControlSize();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = v15[5];
  v39 = v15[6];
  sub_100028124(v15 + 2, v38);
  if ((*(v39 + 32))(v38, v39) == 1)
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  sub_10000F618(v4, v6, &qword_10021C890);
  *&v6[*(v82 + 36)] = v40;
  v41 = v15[5];
  v42 = v15[6];
  sub_100028124(v15 + 2, v41);
  if ((*(v42 + 32))(v41, v42) == 1)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = 0.0;
  }

  static UnitPoint.center.getter();
  v45 = v44;
  v47 = v46;
  sub_10000F618(v6, v8, &qword_100220C48);
  v48 = &v8[*(v83 + 36)];
  *v48 = v43;
  *(v48 + 1) = v43;
  *(v48 + 2) = v45;
  *(v48 + 3) = v47;
  v49 = v15[5];
  v50 = v15[6];
  sub_100028124(v15 + 2, v49);
  v51 = (*(v50 + 32))(v49, v50) == 1;
  sub_10000F618(v8, v13, &qword_100220C50);
  v52 = &v13[*(v84 + 36)];
  v53 = v28;
  *v52 = v28;
  v52[8] = v51;
  v54 = v89;
  sub_10000F618(v13, v89, &qword_100220C58);

  v55 = Image.init(systemName:)();
  v84 = static Font.caption2.getter();
  v83 = swift_getKeyPath();
  v57 = v15[5];
  v56 = v15[6];
  sub_100028124(v15 + 2, v57);
  if ((*(v56 + 32))(v57, v56) == 3)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v15[5];
  v60 = v15[6];
  sub_100028124(v15 + 2, v59);
  if ((*(v60 + 32))(v59, v60) == 3)
  {
    v25 = 1.0;
  }

  static UnitPoint.center.getter();
  v62 = v61;
  v64 = v63;
  v65 = v15[5];
  v66 = v15[6];
  sub_100028124(v15 + 2, v65);
  LODWORD(v65) = (*(v66 + 32))(v65, v66) == 3;
  LODWORD(v82) = v65;
  v67 = v86;
  sub_10000D58C(v54, v86, &qword_100220C58);
  *&v93 = v92;
  *(&v93 + 1) = KeyPath;
  *&v94 = v91;
  *(&v94 + 1) = v27;
  *&v95 = v26;
  v68 = v85;
  *(&v95 + 1) = v26;
  *&v96[0] = v85;
  *(&v96[0] + 1) = v24;
  *&v96[1] = v53;
  BYTE8(v96[1]) = v88;
  v69 = v96[0];
  v70 = v87;
  v87[2] = v95;
  v70[3] = v69;
  *(v70 + 57) = *(v96 + 9);
  v71 = v94;
  *v70 = v93;
  v70[1] = v71;
  v72 = sub_100009F70(&qword_100220C60);
  sub_10000D58C(v67, v70 + *(v72 + 48), &qword_100220C58);
  v73 = (v70 + *(v72 + 64));
  v74 = v55;
  *&v97 = v55;
  v76 = v83;
  v75 = v84;
  *(&v97 + 1) = v83;
  *&v98 = v84;
  *(&v98 + 1) = v58;
  *&v99 = v25;
  *(&v99 + 1) = v25;
  *&v100[0] = v62;
  *(&v100[0] + 1) = v64;
  *&v100[1] = v53;
  BYTE8(v100[1]) = v65;
  v77 = v100[0];
  v73[2] = v99;
  v73[3] = v77;
  v78 = v98;
  *v73 = v97;
  v73[1] = v78;
  *(v73 + 57) = *(v100 + 9);

  sub_10000D58C(&v93, v103, &qword_100220C68);
  sub_10000D58C(&v97, v103, &qword_100220C68);
  sub_10000D52C(v89, &qword_100220C58);
  v101[0] = v74;
  v101[1] = v76;
  v101[2] = v75;
  *&v101[3] = v58;
  *&v101[4] = v25;
  *&v101[5] = v25;
  v101[6] = v62;
  v101[7] = v64;
  v101[8] = v53;
  v102 = v82;
  sub_10000D52C(v101, &qword_100220C68);
  sub_10000D52C(v67, &qword_100220C58);
  v103[0] = v92;
  v103[1] = KeyPath;
  v103[2] = v91;
  *&v103[3] = v27;
  *&v103[4] = v26;
  *&v103[5] = v26;
  v103[6] = v68;
  v103[7] = v24;
  v103[8] = v53;
  v104 = v88;
  return sub_10000D52C(v103, &qword_100220C68);
}