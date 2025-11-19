uint64_t sub_100365E88()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100365EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100210F08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1003671DC(v11);
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

uint64_t sub_10036618C()
{
  v1 = type metadata accessor for UUID();
  v2 = [*(v0 + 32) unsignedLongLongValue];
  sub_100366EAC(v2);
  type metadata accessor for VisitedPlacesPOIImageProvider();
  sub_100366FEC(&qword_10191B668, type metadata accessor for VisitedPlacesPOIImageProvider);

  UUID.init()();
  type metadata accessor for LocationTileViewModel();
  swift_allocObject();
  v3 = LocationTileViewModel.init(id:title:subtitle:imageProvider:colorGradient:)();

  return v3;
}

uint64_t sub_100366300()
{

  sub_100366FCC(*(v0 + 64));

  v1 = OBJC_IVAR____TtC4Maps25VisitedPlaceCityViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitedPlaceCityViewModel()
{
  result = qword_10191B5B0;
  if (!qword_10191B5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100366420()
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

uint64_t sub_1003664EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100366534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1003665E8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t sub_1003665F8@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  a1[3] = type metadata accessor for VisitedPlacesPOIImageProvider();
  a1[4] = sub_100366FEC(&qword_10191B668, type metadata accessor for VisitedPlacesPOIImageProvider);
  *a1 = v3;
}

void *sub_1003666F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v37 = v30 - v10;
  v36 = type metadata accessor for RichTextType();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4;
  v4[8] = 1;
  type metadata accessor for VisitedPlacesPOIImageProvider();
  v13 = swift_allocObject();
  UUID.init()();
  *(v13 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__image) = 0;
  v14 = OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage;
  *(v13 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__placeholderImage) = 0;
  *(v13 + OBJC_IVAR____TtC4Maps29VisitedPlacesPOIImageProvider__geoMapItem) = 0;
  ObservationRegistrar.init()();
  if (*(v13 + v14))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v39 = v13;
    sub_100366FEC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4[9] = v13;
  ObservationRegistrar.init()();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;

  v16 = a3;
  v4[5] = sub_1003A77CC(a4);
  v4[6] = v17;
  sub_1000CE6B8(&unk_1019157F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1011E1D60;
  v33 = sub_1000CE6B8(&qword_10190A070);
  v18 = *(type metadata accessor for RichTextViewModel() - 8);
  v30[0] = a1;
  v32 = *(v18 + 72);
  v30[1] = a2;
  v19 = swift_allocObject();
  v31 = xmmword_1011E1D30;
  *(v19 + 16) = xmmword_1011E1D30;
  v21 = v34;
  v20 = v35;
  v22 = *(v34 + 104);
  v23 = v36;
  v22(v35, enum case for RichTextType.title(_:), v36);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
  v34 = *(v21 + 8);
  (v34)(v20, v23);
  *(v38 + 32) = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = v31;
  v22(v20, enum case for RichTextType.line(_:), v23);

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (v34)(v20, v23);
  v25 = v38;
  *(v38 + 40) = v24;
  v12[7] = v25;
  v26 = type metadata accessor for TaskPriority();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v12;

  sub_10020AAE4(0, 0, v27, &unk_1011FDCA8, v28);

  return v12;
}

void *sub_100366C20()
{
  sub_100511998(0, 4, 0);
  v0 = static Color.mapsDesignColor(_:)();
  v1 = static Color.mapsDesignColor(_:)();
  v3 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  if (v3 >= v2 >> 1)
  {
    v21 = v1;
    sub_100511998((v2 > 1), v3 + 1, 1);
    v1 = v21;
  }

  _swiftEmptyArrayStorage[2] = v3 + 1;
  v4 = &_swiftEmptyArrayStorage[2 * v3];
  v4[4] = v0;
  v4[5] = v1;
  v5 = static Color.mapsDesignColor(_:)();
  v6 = static Color.mapsDesignColor(_:)();
  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  if (v8 >= v7 >> 1)
  {
    v22 = v6;
    sub_100511998((v7 > 1), v8 + 1, 1);
    v6 = v22;
  }

  _swiftEmptyArrayStorage[2] = v8 + 1;
  v9 = &_swiftEmptyArrayStorage[2 * v8];
  v9[4] = v5;
  v9[5] = v6;
  v10 = static Color.mapsDesignColor(_:)();
  v11 = static Color.mapsDesignColor(_:)();
  v13 = _swiftEmptyArrayStorage[2];
  v12 = _swiftEmptyArrayStorage[3];
  if (v13 >= v12 >> 1)
  {
    v23 = v11;
    sub_100511998((v12 > 1), v13 + 1, 1);
    v11 = v23;
  }

  _swiftEmptyArrayStorage[2] = v13 + 1;
  v14 = &_swiftEmptyArrayStorage[2 * v13];
  v14[4] = v10;
  v14[5] = v11;
  v15 = static Color.mapsDesignColor(_:)();
  v16 = static Color.mapsDesignColor(_:)();
  v18 = _swiftEmptyArrayStorage[2];
  v17 = _swiftEmptyArrayStorage[3];
  if (v18 >= v17 >> 1)
  {
    v24 = v16;
    sub_100511998((v17 > 1), v18 + 1, 1);
    v16 = v24;
  }

  _swiftEmptyArrayStorage[2] = v18 + 1;
  v19 = &_swiftEmptyArrayStorage[2 * v18];
  v19[4] = v15;
  v19[5] = v16;
  sub_1000CE6B8(&qword_10190EC70);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

unint64_t sub_100366EAC(unint64_t result)
{
  v1 = (result % 0x64);
  if (qword_1019067A8 != -1)
  {
    result = swift_once();
  }

  v2 = *(qword_101960118 + 16) - 1;
  v3 = round(v1 * v2 / 99.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = *(qword_101960118 + 16 * v2 + 32);

    return v4;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100366FCC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100366FDC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100366FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100367034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC40;

  return sub_1003647FC();
}

uint64_t sub_100367128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100365B68(a1, v4, v5, v6);
}

uint64_t sub_1003671DC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100367244(uint64_t a1)
{
  sub_1000CE6B8(&unk_101918380);

  return sub_100365A80(a1);
}

Swift::Int sub_100367314()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10036CB04(v4, v1);
  sub_10036C1C0(v4, v2);
  return Hasher._finalize()();
}

void sub_100367368(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_10036CB04(a1, v3);

  sub_10036C1C0(a1, v4);
}

Swift::Int sub_1003673A8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10036CB04(v4, v1);
  sub_10036C1C0(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_1003673F8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1001EF9E8(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return sub_100225D2C(v2, v3);
}

Swift::Int sub_100367454()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10036C9C4(v5, v1);
  sub_10036C878(v5, v2);
  sub_10036C444(v5, v3);
  return Hasher._finalize()();
}

void sub_1003674D4(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  NSObject.hash(into:)();
  sub_10036C9C4(a1, v3);
  sub_10036C878(a1, v4);

  sub_10036C444(a1, v5);
}

Swift::Int sub_100367544()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10036C9C4(v5, v1);
  sub_10036C878(v5, v2);
  sub_10036C444(v5, v3);
  return Hasher._finalize()();
}

uint64_t sub_1003675C0(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_100014C84(0, &qword_10190B2D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (sub_1001EFBCC(v2, v5) & 1) == 0 || (sub_1001EFDC0(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_100226008(v3, v6);
}

uint64_t sub_100367688()
{
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v5);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    AnyHashable.hash(into:)();
    return sub_10005BF8C(v6);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    return sub_100024F64(&v2, &qword_10191A570);
  }
}

Swift::Int sub_100367750()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v5);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    AnyHashable.hash(into:)();
    sub_10005BF8C(v6);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_100024F64(&v2, &qword_10191A570);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10036782C()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_10005EB40(v0 + 8, v5);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    AnyHashable.hash(into:)();
    sub_10005BF8C(v6);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_100024F64(&v2, &qword_10191A570);
  }

  return Hasher._finalize()();
}

uint64_t sub_1003678FC(uint64_t a1, uint64_t a2)
{
  sub_100014C84(0, &qword_10190B2D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10033ECE0(a1 + 8, a2 + 8);
}

unint64_t sub_100367984()
{
  result = qword_10191B678;
  if (!qword_10191B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B678);
  }

  return result;
}

unint64_t sub_1003679DC()
{
  result = qword_10191B680;
  if (!qword_10191B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B680);
  }

  return result;
}

unint64_t sub_100367A34()
{
  result = qword_10191B688;
  if (!qword_10191B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B688);
  }

  return result;
}

uint64_t sub_100367A88()
{
  NSObject.hash(into:)();
  String.hash(into:)();
  sub_10005EB40(v0 + 24, v5);
  sub_1000CE6B8(&unk_101911D40);
  if (swift_dynamicCast())
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    AnyHashable.hash(into:)();
    return sub_10005BF8C(v6);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    return sub_100024F64(&v2, &qword_10191A570);
  }
}

Swift::Int sub_100367B5C()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  sub_10005EB40(v0 + 24, v5);
  sub_1000CE6B8(&unk_101911D40);
  if (swift_dynamicCast())
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    AnyHashable.hash(into:)();
    sub_10005BF8C(v6);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_100024F64(&v2, &qword_10191A570);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100367C3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  if (!a4)
  {
    v7 = 3;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v7 = 4;
LABEL_5:
    Hasher._combine(_:)(v7);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (a2 | a3)
  {
    if (a2 ^ 1 | a3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

Swift::Int sub_100367D0C()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  sub_10005EB40(v0 + 24, v5);
  sub_1000CE6B8(&unk_101911D40);
  if (swift_dynamicCast())
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    AnyHashable.hash(into:)();
    sub_10005BF8C(v6);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_100024F64(&v2, &qword_10191A570);
  }

  return Hasher._finalize()();
}

uint64_t sub_100367DE8(uint64_t a1, uint64_t a2)
{
  sub_100014C84(0, &qword_10190B2D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10033EE24(a1 + 24, a2 + 24);
}

Swift::Int sub_100367E8C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 4;
LABEL_5:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_100367F40()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 16))
  {
    v3 = 3;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v3 = 4;
LABEL_5:
    Hasher._combine(_:)(v3);

    String.hash(into:)();
    return;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_100367FEC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 4;
LABEL_5:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_10036809C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(v4 | v5))
    {
      return v9 == 2 && (v8 | v7) == 0;
    }

    if (v4 ^ 1 | v5)
    {
      if (v9 != 2 || v7 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 2 || v7 != 1)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }
  }

  else if (!v9)
  {
LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return 0;
}

void sub_100368154()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  NSObject.hash(into:)();
  if (!v3)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 4;
LABEL_5:
    Hasher._combine(_:)(v4);

    String.hash(into:)();
    return;
  }

  if (v1 | v2)
  {
    if (v1 ^ 1 | v2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_100368218()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  if (!v3)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 4;
LABEL_5:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 | v2)
  {
    if (v1 ^ 1 | v2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_1003682E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_100014C84(0, &qword_10190B2D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      return v2 == v5 && v3 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    if (!(v2 | v3))
    {
      return v7 == 2 && !(v6 | v5);
    }

    if (v2 ^ 1 | v3)
    {
      if (v7 != 2 || v5 != 2)
      {
        return 0;
      }
    }

    else if (v7 != 2 || v5 != 1)
    {
      return 0;
    }

    if (!v6)
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return v2 == v5 && v3 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return 0;
}

uint64_t sub_100368400(uint64_t a1)
{
  sub_1000D2DFC(a1, &v8, &qword_10191B6B8);
  if (!*(&v9 + 1))
  {
    sub_100024F64(&v8, &qword_10191B6B8);
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  sub_1000CE6B8(&qword_101924FD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_7:
    sub_100024F64(&v5, &qword_101916000);
    v3 = 0;
    return v3 & 1;
  }

  v8 = v5;
  v9 = v6;
  v10 = v7;
  v2 = sub_10033ECE0(v1 + 8, &v8 + 8);
  sub_10019D044(&v8);
  v3 = v2 ^ 1;
  return v3 & 1;
}

id sub_100368508()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_100368540(uint64_t a1)
{
  sub_1000D2DFC(a1, &v9, &qword_10191B6B8);
  if (!*(&v10[0] + 1))
  {
    sub_100024F64(&v9, &qword_10191B6B8);
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_7;
  }

  sub_1000CE6B8(&qword_101924FD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_7:
    sub_100024F64(&v5, &unk_101915FD0);
    v3 = 0;
    return v3 & 1;
  }

  v9 = v5;
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  v2 = sub_10033EE24(v1 + 24, v10 + 8);
  sub_10019CF9C(&v9);
  v3 = v2 ^ 1;
  return v3 & 1;
}

id sub_100368648()
{
  v1 = *v0;
  v2 = *v0;

  return v1;
}

double sub_100368694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (v8 = sub_100296ED8(a1, a2, a3, a4), (v9 & 1) != 0))
  {
    sub_1000D2DFC(*(a5 + 56) + 40 * v8, v11, &unk_10190BB60);
    sub_10005EB40(v11, a6);
    sub_100024F64(v11, &unk_10190BB60);
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

id sub_100368730()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *sub_100368764()
{
  v1 = *(v0 + 16);
  v2 = sub_10019358C(*(v0 + 8));
  sub_100247530(v2);
  v3 = sub_1001936B0(v1);
  sub_100247530(v3);
  return _swiftEmptyArrayStorage;
}

double sub_1003687C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (v8 = sub_100296ED8(a1, a2, a3, a4), (v9 & 1) != 0))
  {
    v10 = (*(a5 + 56) + 32 * v8);
    *(a6 + 24) = &type metadata for HomeListSectionSnapshot;
    *(a6 + 32) = sub_10019D098();
    v11 = swift_allocObject();
    *a6 = v11;
    v14 = *v10;
    v15 = v10[1];
    *(v11 + 16) = *v10;
    *(v11 + 32) = v15;
    v12 = v14;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

double sub_100368890@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v12 = [a1 firstIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() identifierPathWithIdentifier:v12];

    if (*(a5 + 16) && (v15 = sub_100296ED8(v14, 1, 0, 2), (v16 & 1) != 0))
    {
      v17 = *(a5 + 56) + 32 * v15;
      v18 = *(v17 + 24);
      v19 = *v17;

      sub_100368694(a1, a2, a3, a4, v18, v21);

      if (v22)
      {
        sub_1000CE6B8(&qword_101924FD0);
        if (swift_dynamicCast())
        {
          return result;
        }
      }

      else
      {
        sub_100024F64(v21, &qword_10191B6B8);
      }
    }

    else
    {
    }
  }

  result = 0.0;
  a6[1] = 0u;
  a6[2] = 0u;
  *a6 = 0u;
  return result;
}

double sub_100368A2C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v12 = [a1 firstIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() identifierPathWithIdentifier:v12];

    if (*(a5 + 16) && (v15 = sub_100296ED8(v14, 1, 0, 2), (v16 & 1) != 0))
    {
      v17 = *(a5 + 56) + 32 * v15;
      v18 = *(v17 + 24);
      v19 = *v17;

      sub_100368694(a1, a2, a3, a4, v18, v21);

      if (v22)
      {
        sub_1000CE6B8(&qword_101924FD0);
        if (swift_dynamicCast())
        {
          return result;
        }
      }

      else
      {
        sub_100024F64(v21, &qword_10191B6B8);
      }
    }

    else
    {
    }
  }

  result = 0.0;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  return result;
}

uint64_t sub_100368C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = sub_1000CE6B8(&qword_10191B6E0);
  __chkstk_darwin(v65);
  v64 = &v62 - v10;
  v77[0] = &_swiftEmptyArrayStorage;
  v77[1] = &_swiftEmptyArrayStorage;
  v77[2] = &_swiftEmptyArrayStorage;
  v78 = &_swiftEmptyArrayStorage;
  v63 = a1;
  v62 = v11;
  if (a2)
  {
    v12 = &type metadata for HomeListCollectionViewSnapshot;
    v13 = sub_10036D414();
    v14 = a2;
    v15 = a3;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v74 = 0;
  }

  *&v73 = v14;
  *(&v73 + 1) = v15;
  v75 = v12;
  v76 = v13;
  sub_1000F0120(a2);
  sub_10036927C(&v73, v77, a4, a5);
  sub_100024F64(&v73, &qword_10191B6B8);
  sub_100014C84(0, &qword_10190D2F0);
  sub_10036D3AC();
  NSDiffableDataSourceSnapshot.init()();
  v68 = *(a4 + 16);
  if (v68)
  {
    v16 = 0;
    v67 = a4 + 32;
    v66 = xmmword_1011E47B0;
    do
    {
      v17 = v67 + 32 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1000CE6B8(&qword_101908400);
      v20 = swift_allocObject();
      *(v20 + 16) = v66;
      *(v20 + 32) = v18;
      v21 = v18;

      NSDiffableDataSourceSnapshot.appendSections(_:)(v20);

      v22 = *(v19 + 16);
      if (v22)
      {
        v69[0] = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = v19 + 32;
        do
        {
          sub_100098118(v23, &v73);
          v24 = v73;
          sub_10019D044(&v73);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v23 += 48;
          --v22;
        }

        while (v22);
      }

      ++v16;
      *&v73 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    while (v16 != v68);
  }

  v25 = v78;
  v26 = v78[2];

  v28 = &_swiftEmptyArrayStorage;
  if (v26)
  {
    v29 = 0;
    v30 = (v25 + 4);
    do
    {
      if (v29 >= v25[2])
      {
        __break(1u);
        return result;
      }

      sub_10005EB40(v30, &v73);
      v31 = v75;
      v32 = v76;
      sub_10005E838(&v73, v75);
      v33 = (*(v32 + 16))(v31, v32);
      v35 = v34;
      v37 = v36;
      v39 = v38;
      LODWORD(v32) = v38;

      if (v32 < 2)
      {
        sub_1001F12E8(v35, v37, v39);
      }

      else if (__PAIR128__(v37, v35) >= 2)
      {
        sub_10005E7BC(&v73, v69);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10051180C(0, v28[2] + 1, 1);
          v28 = v72;
        }

        v42 = v28[2];
        v41 = v28[3];
        if (v42 >= v41 >> 1)
        {
          sub_10051180C((v41 > 1), v42 + 1, 1);
        }

        v43 = v70;
        v44 = v71;
        v45 = sub_1000FA458(v69, v70);
        v46 = __chkstk_darwin(v45);
        v48 = &v62 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48, v46);
        sub_10036CC68(v42, v48, &v72, v43, v44);
        result = sub_10004E3D0(v69);
        v28 = v72;
        goto LABEL_15;
      }

      result = sub_10004E3D0(&v73);
LABEL_15:
      ++v29;
      v30 += 40;
    }

    while (v26 != v29);
  }

  v50 = v28[2];
  if (v50)
  {
    v69[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v51 = (v28 + 4);
    v52 = v63;
    v53 = v62;
    do
    {
      sub_10005EB40(v51, &v73);
      v54 = v75;
      v55 = v76;
      sub_10005E838(&v73, v75);
      (*(v55 + 16))(v54, v55);
      sub_1001F12E8(v56, v57, v58);
      sub_10004E3D0(&v73);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v51 += 40;
      --v50;
    }

    while (v50);

    v59 = v69[0];
  }

  else
  {

    v59 = &_swiftEmptyArrayStorage;
    v52 = v63;
    v53 = v62;
  }

  v60 = v65;
  v61 = v64;
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v59);

  (*(v53 + 32))(v52, v61, v60);

  return v77[0];
}

uint64_t sub_10036927C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v141 = a2;
  *&v133 = sub_1000CE6B8(&qword_10191B6F0);
  __chkstk_darwin(v133);
  v139 = &v130 - v7;
  v8 = sub_1000CE6B8(&qword_10191B6F8);
  *&v132 = *(v8 - 8);
  __chkstk_darwin(v8);
  v131 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v134 = &v130 - v11;
  v140 = a1;
  sub_1000D2DFC(a1, &v147, &qword_10191B6B8);
  v12 = *(&v148 + 1);
  if (*(&v148 + 1))
  {
    v13 = v149;
    sub_10005E838(&v147, *(&v148 + 1));
    v14 = (*(v13 + 24))(v12, v13);
    sub_10004E3D0(&v147);
  }

  else
  {
    sub_100024F64(&v147, &qword_10191B6B8);
    v14 = &_swiftEmptyArrayStorage;
  }

  v138 = v8;
  v15 = sub_1001937D4(a3);
  v16 = v15[2];
  v137 = v14;
  v136 = a4;
  if (v16)
  {
    *&v145[0] = &_swiftEmptyArrayStorage;
    sub_10051184C(0, v16, 0);
    v17 = *&v145[0];
    v130 = v15;
    v18 = (v15 + 4);
    do
    {
      sub_10005EB40(v18, &v147);
      v19 = *(&v148 + 1);
      v20 = v149;
      sub_10005E838(&v147, *(&v148 + 1));
      v21 = (*(v20 + 16))(v19, v20);
      v23 = v22;
      v25 = v24;
      v27 = v26;
      sub_10004E3D0(&v147);
      *&v145[0] = v17;
      v29 = v17[2];
      v28 = v17[3];
      v30 = v17;
      if (v29 >= v28 >> 1)
      {
        sub_10051184C((v28 > 1), v29 + 1, 1);
        v30 = *&v145[0];
      }

      v30[2] = v29 + 1;
      v31 = &v30[4 * v29];
      v31[4] = v21;
      v31[5] = v23;
      v31[6] = v25;
      *(v31 + 56) = v27;
      v18 += 40;
      --v16;
      v17 = v30;
    }

    while (v16);

    a4 = v136;
    v14 = v137;
  }

  else
  {

    v17 = &_swiftEmptyArrayStorage;
  }

  v32 = v14[2];
  v33 = &_swiftEmptyArrayStorage;
  v135 = a3;
  if (v32)
  {
    v130 = v17;
    *&v145[0] = &_swiftEmptyArrayStorage;
    sub_10051184C(0, v32, 0);
    v33 = *&v145[0];
    v34 = (v14 + 4);
    do
    {
      sub_10005EB40(v34, &v147);
      v35 = *(&v148 + 1);
      v36 = v149;
      sub_10005E838(&v147, *(&v148 + 1));
      v37 = (*(v36 + 16))(v35, v36);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      sub_10004E3D0(&v147);
      *&v145[0] = v33;
      v45 = v33[2];
      v44 = v33[3];
      if (v45 >= v44 >> 1)
      {
        sub_10051184C((v44 > 1), v45 + 1, 1);
        v33 = *&v145[0];
      }

      v33[2] = v45 + 1;
      v46 = &v33[4 * v45];
      v46[4] = v37;
      v46[5] = v39;
      v46[6] = v41;
      *(v46 + 56) = v43;
      v34 += 40;
      --v32;
    }

    while (v32);
    a3 = v135;
    a4 = v136;
    v17 = v130;
  }

  if (sub_1001F0DB0(v17, v33))
  {

LABEL_21:
    v54 = sub_1001937D4(a3);
    v55 = *(v54 + 2);
    if (v55)
    {
      v139 = v54;
      v56 = (v54 + 32);
      do
      {
        sub_10005EB40(v56, &v147);
        sub_1000D2DFC(v140, &v142, &qword_10191B6B8);
        if (v143)
        {
          v57 = v144;
          sub_10005E838(&v142, v143);
          v58 = *(&v148 + 1);
          v59 = v149;
          sub_10005E838(&v147, *(&v148 + 1));
          v60 = (*(v59 + 16))(v58, v59);
          v62 = v61;
          v64 = v63;
          v66 = v65;
          (*(v57 + 32))(v145);

          sub_1001F12E8(v62, v64, v66);
          sub_10004E3D0(&v142);
        }

        else
        {
          sub_100024F64(&v142, &qword_10191B6B8);
          memset(v145, 0, sizeof(v145));
          v146 = 0;
        }

        v67 = *(&v148 + 1);
        v68 = v149;
        sub_10005E838(&v147, *(&v148 + 1));
        sub_10036A230(v145, v141, v67, v68);
        sub_100024F64(v145, &qword_10191B6B8);
        sub_10004E3D0(&v147);
        v56 += 40;
        --v55;
      }

      while (v55);
    }
  }

  *&v147 = v17;
  *&v145[0] = v33;
  sub_1000CE6B8(&qword_10191B700);
  sub_1000414C8(&qword_10191B708, &qword_10191B700);
  sub_10036D468();
  v47 = v131;
  BidirectionalCollection<>.difference<A>(from:)();

  sub_10036D4BC();
  v48 = v134;
  v49 = v138;
  CollectionDifference<A>.inferringMoves()();
  v50 = v132;
  v51 = v132 + 8;
  v131 = *(v132 + 8);
  (v131)(v47, v49);
  v52 = v139;
  (*(v50 + 16))(v139, v48, v49);
  v53 = *(v133 + 36);
  sub_1000414C8(&qword_10191B720, &qword_10191B6F8);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v52 + v53) == v147)
  {
LABEL_20:
    sub_100024F64(v52, &qword_10191B6F0);
    (v131)(v134, v49);

    a3 = v135;
    goto LABEL_21;
  }

  while (1)
  {
    v70 = dispatch thunk of Collection.subscript.read();
    v73 = v71[1];
    v72 = v71[2];
    v74 = *v71;
    v150 = *(v71 + 24);
    v148 = v73;
    v149 = v72;
    v147 = v74;
    sub_1000D2DFC(&v147, v145, &qword_10191B728);
    v70(&v142, 0);
    result = dispatch thunk of Collection.formIndex(after:)();
    v75 = v147;
    v76 = v150;
    if ((v150 & 0x100) == 0)
    {
      if (*(a4 + 16) && (v77 = sub_100296ED8(*(&v147 + 1), v148, *(&v148 + 1), v149), (v78 & 1) != 0))
      {
        v96 = (*(a4 + 56) + 32 * v77);
        v97 = sub_10019D098();
        v98 = swift_allocObject();
        v100 = *v96;
        v99 = v96[1];
        v143 = &type metadata for HomeListSectionSnapshot;
        v144 = v97;
        *&v142 = v98;
        v133 = v99;
        *(v98 + 16) = v100;
        *(v98 + 32) = v99;
        v132 = v100;
        result = sub_10005E7BC(&v142, v145);
        v101 = v137;
        v102 = v137[2];
        if (v102 < v75)
        {
          goto LABEL_70;
        }

        if ((v75 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        sub_10005EB40(v145, &v142);
        v103 = v132;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v101;
        if (!isUniquelyReferenced_nonNull_native || v102 >= v101[3] >> 1)
        {
          v137 = sub_100357BD0(isUniquelyReferenced_nonNull_native, v102 + 1, 1, v101);
          v151 = v137;
        }

        sub_10054DE04(v75, v75, 1, &v142);
        if (v76)
        {
          sub_10005EB40(v145, &v142);
          v105 = v141;
          v106 = *v141;
          v107 = swift_isUniquelyReferenced_nonNull_native();
          *v105 = v106;
          if ((v107 & 1) == 0)
          {
            v106 = sub_100357BD0(0, v106[2] + 1, 1, v106);
            *v141 = v106;
          }

          v108 = v106[3];
          *&v133 = v106[2];
          if (v133 >= v108 >> 1)
          {
            v106 = sub_100357BD0((v108 > 1), v133 + 1, 1, v106);
            sub_100024F64(&v147, &qword_10191B728);
            *v141 = v106;
          }

          else
          {
            sub_100024F64(&v147, &qword_10191B728);
          }

          sub_10004E3D0(v145);
          v109 = v143;
          v110 = v144;
          v111 = sub_1000FA458(&v142, v143);
          v112 = __chkstk_darwin(v111);
          v114 = &v130 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v115 + 16))(v114, v112);
          v116 = v114;
          v117 = v141;
          sub_10036CD00(v133, v116, v141, v109, v110);
          sub_10004E3D0(&v142);
          *v117 = v106;
        }

        else
        {
          sub_10005EB40(v145, &v142);
          v118 = v141;
          v119 = v141[2];
          v120 = swift_isUniquelyReferenced_nonNull_native();
          v118[2] = v119;
          if ((v120 & 1) == 0)
          {
            v119 = sub_100357BD0(0, v119[2] + 1, 1, v119);
            v141[2] = v119;
          }

          v121 = v119[3];
          *&v133 = v119[2];
          if (v133 >= v121 >> 1)
          {
            v119 = sub_100357BD0((v121 > 1), v133 + 1, 1, v119);
            sub_100024F64(&v147, &qword_10191B728);
            v141[2] = v119;
          }

          else
          {
            sub_100024F64(&v147, &qword_10191B728);
          }

          sub_10004E3D0(v145);
          v122 = v143;
          v123 = v144;
          v124 = sub_1000FA458(&v142, v143);
          *&v132 = &v130;
          v125 = __chkstk_darwin(v124);
          v127 = &v130 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v128 + 16))(v127, v125);
          v129 = v141;
          sub_10036CD00(v133, v127, v141 + 2, v122, v123);
          sub_10004E3D0(&v142);
          v129[2] = v119;
        }

        a4 = v136;
        v52 = v139;
        v49 = v138;
      }

      else
      {
        sub_100024F64(&v147, &qword_10191B728);
        v52 = v139;
        v49 = v138;
      }

      goto LABEL_32;
    }

    if ((v147 & 0x8000000000000000) != 0)
    {
      break;
    }

    v79 = v137;
    if (v147 >= v137[2])
    {
      goto LABEL_68;
    }

    sub_10005EB40(&v137[5 * v147 + 4], v145);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100416654(v79);
      v79 = result;
    }

    v80 = v79[2];
    if (v75 >= v80)
    {
      goto LABEL_69;
    }

    *&v133 = v51;
    v81 = v80 - 1;
    v82 = v79;
    v83 = &v79[5 * v75];
    sub_10004E3D0((v83 + 4));
    memmove(v83 + 4, v83 + 9, 40 * (v81 - v75));
    v137 = v82;
    v82[2] = v81;
    if (v76)
    {
      sub_10005EB40(v145, &v142);
      v84 = v141;
      v85 = v141[1];
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v84[1] = v85;
      v51 = v133;
      if ((v86 & 1) == 0)
      {
        v85 = sub_100357BD0(0, v85[2] + 1, 1, v85);
        v141[1] = v85;
      }

      v87 = v85[3];
      *&v132 = v85[2];
      if (v132 >= v87 >> 1)
      {
        v85 = sub_100357BD0((v87 > 1), v132 + 1, 1, v85);
        sub_100024F64(&v147, &qword_10191B728);
        v141[1] = v85;
      }

      else
      {
        sub_100024F64(&v147, &qword_10191B728);
      }

      sub_10004E3D0(v145);
      v88 = v143;
      v89 = v144;
      v90 = sub_1000FA458(&v142, v143);
      v130 = &v130;
      v91 = __chkstk_darwin(v90);
      v93 = &v130 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v94 + 16))(v93, v91);
      v95 = v141;
      sub_10036CD00(v132, v93, v141 + 1, v88, v89);
      sub_10004E3D0(&v142);
      v95[1] = v85;
      a4 = v136;
      v49 = v138;
    }

    else
    {
      sub_100024F64(&v147, &qword_10191B728);
      sub_10004E3D0(v145);
      v49 = v138;
      v51 = v133;
    }

    v52 = v139;
LABEL_32:
    dispatch thunk of Collection.endIndex.getter();
    if (*(v52 + v53) == v147)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_10036A230(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v148 = a4;
  v151 = a2;
  v149 = a3;
  v140 = *(a3 - 8);
  __chkstk_darwin(a1);
  v135 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v139 = &v133 - v7;
  v138 = sub_1000CE6B8(&qword_10191B6F0);
  __chkstk_darwin(v138);
  v9 = &v133 - v8;
  v146 = sub_1000CE6B8(&qword_10191B6F8);
  v137 = *(v146 - 8);
  __chkstk_darwin(v146);
  v136 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v143 = &v133 - v12;
  sub_1000D2DFC(a1, &v157, &qword_10191B6B8);
  v13 = *(&v158 + 1);
  if (*(&v158 + 1))
  {
    v14 = v159;
    sub_10005E838(&v157, *(&v158 + 1));
    v15 = (*(v14 + 24))(v13, v14);
    sub_10004E3D0(&v157);
  }

  else
  {
    sub_100024F64(&v157, &qword_10191B6B8);
    v15 = &_swiftEmptyArrayStorage;
  }

  v150 = a1;
  v16 = *(v148 + 24);
  v142 = v148 + 24;
  v141 = v16;
  v17 = (v16)(v149);
  v18 = *(v17 + 16);
  v144 = v9;
  if (v18)
  {
    *&v155[0] = &_swiftEmptyArrayStorage;
    sub_10051184C(0, v18, 0);
    v19 = *&v155[0];
    v134 = v17;
    v20 = v17 + 32;
    do
    {
      sub_10005EB40(v20, &v157);
      v21 = *(&v158 + 1);
      v22 = v159;
      sub_10005E838(&v157, *(&v158 + 1));
      v23 = (*(v22 + 16))(v21, v22);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      sub_10004E3D0(&v157);
      *&v155[0] = v19;
      v31 = v19[2];
      v30 = v19[3];
      if (v31 >= v30 >> 1)
      {
        sub_10051184C((v30 > 1), v31 + 1, 1);
        v19 = *&v155[0];
      }

      v19[2] = v31 + 1;
      v32 = &v19[4 * v31];
      v32[4] = v23;
      v32[5] = v25;
      v32[6] = v27;
      *(v32 + 56) = v29;
      v20 += 40;
      --v18;
    }

    while (v18);

    v9 = v144;
  }

  else
  {

    v19 = &_swiftEmptyArrayStorage;
  }

  v33 = v15[2];
  v34 = &_swiftEmptyArrayStorage;
  v145 = v15;
  if (v33)
  {
    v134 = v19;
    *&v155[0] = &_swiftEmptyArrayStorage;
    sub_10051184C(0, v33, 0);
    v34 = *&v155[0];
    v35 = (v15 + 4);
    do
    {
      sub_10005EB40(v35, &v157);
      v36 = *(&v158 + 1);
      v37 = v159;
      sub_10005E838(&v157, *(&v158 + 1));
      v38 = (*(v37 + 16))(v36, v37);
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_10004E3D0(&v157);
      *&v155[0] = v34;
      v46 = v34[2];
      v45 = v34[3];
      if (v46 >= v45 >> 1)
      {
        sub_10051184C((v45 > 1), v46 + 1, 1);
        v34 = *&v155[0];
      }

      v34[2] = v46 + 1;
      v47 = &v34[4 * v46];
      v47[4] = v38;
      v47[5] = v40;
      v47[6] = v42;
      *(v47 + 56) = v44;
      v35 += 40;
      --v33;
    }

    while (v33);
    v9 = v144;
    v19 = v134;
  }

  v48 = sub_1001F0DB0(v19, v34);
  v49 = v146;
  if (v48)
  {

LABEL_21:

    v55 = v141(v149, v148);
    v56 = *(v55 + 16);
    v57 = v150;
    if (v56)
    {
      v146 = v55;
      v58 = v55 + 32;
      do
      {
        sub_10005EB40(v58, &v157);
        sub_1000D2DFC(v57, &v152, &qword_10191B6B8);
        if (v153)
        {
          v59 = v154;
          sub_10005E838(&v152, v153);
          v60 = *(&v158 + 1);
          v61 = v159;
          sub_10005E838(&v157, *(&v158 + 1));
          v62 = (*(v61 + 16))(v60, v61);
          v64 = v63;
          v66 = v65;
          v68 = v67;
          (*(v59 + 32))(v155);

          v57 = v150;
          sub_1001F12E8(v64, v66, v68);
          sub_10004E3D0(&v152);
        }

        else
        {
          sub_100024F64(&v152, &qword_10191B6B8);
          memset(v155, 0, sizeof(v155));
          v156 = 0;
        }

        v69 = *(&v158 + 1);
        v70 = v159;
        sub_10005E838(&v157, *(&v158 + 1));
        sub_10036A230(v155, v151, v69, v70);
        sub_100024F64(v155, &qword_10191B6B8);
        sub_10004E3D0(&v157);
        v58 += 40;
        --v56;
      }

      while (v56);
    }

    if (*(v57 + 24))
    {
      result = (*(v148 + 40))(v57, v149);
      if (result)
      {
        v72 = *(v140 + 16);
        v72(v139, v147, v149);
        v73 = v151 + 3;
        v74 = v151[3];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v73;
        *v73 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = sub_100357BD0(0, v74[2] + 1, 1, v74);
          *v73 = v74;
        }

        v78 = v74[2];
        v77 = v74[3];
        if (v78 >= v77 >> 1)
        {
          v74 = sub_100357BD0((v77 > 1), v78 + 1, 1, v74);
          *v76 = v74;
        }

        v79 = v135;
        v80 = v139;
        v81 = v149;
        v72(v135, v139, v149);
        sub_10036CD00(v78, v79, v76, v81, v148);
        result = (*(v140 + 8))(v80, v81);
        *v76 = v74;
      }
    }

    return result;
  }

  *&v157 = v19;
  *&v155[0] = v34;
  sub_1000CE6B8(&qword_10191B700);
  sub_1000414C8(&qword_10191B708, &qword_10191B700);
  sub_10036D468();
  v50 = v136;
  BidirectionalCollection<>.difference<A>(from:)();

  sub_10036D4BC();
  v51 = v143;
  CollectionDifference<A>.inferringMoves()();
  v52 = v137;
  v53 = v137 + 1;
  v136 = v137[1];
  (v136)(v50, v49);
  (*(v52 + 16))(v9, v51, v49);
  v54 = *(v138 + 36);
  sub_1000414C8(&qword_10191B720, &qword_10191B6F8);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v9[v54] == v157)
  {
LABEL_20:
    sub_100024F64(v9, &qword_10191B6F0);
    (v136)(v143, v49);
    goto LABEL_21;
  }

  while (1)
  {
    v82 = dispatch thunk of Collection.subscript.read();
    v85 = v83[1];
    v84 = v83[2];
    v86 = *v83;
    v160 = *(v83 + 24);
    v158 = v85;
    v159 = v84;
    v157 = v86;
    sub_1000D2DFC(&v157, v155, &qword_10191B728);
    v82(&v152, 0);
    result = dispatch thunk of Collection.formIndex(after:)();
    v87 = v157;
    v88 = v160;
    if ((v160 & 0x100) == 0)
    {
      (*(v148 + 32))(&v152, *(&v157 + 1), v158, *(&v158 + 1), v159, v149);
      if (v153)
      {
        result = sub_10005E7BC(&v152, v155);
        v104 = v145[2];
        if (v104 < v87)
        {
          goto LABEL_75;
        }

        if ((v87 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        sub_10005EB40(v155, &v152);
        v105 = v145;
        v106 = swift_isUniquelyReferenced_nonNull_native();
        if (!v106 || v104 >= v105[3] >> 1)
        {
          v105 = sub_100357BD0(v106, v104 + 1, 1, v105);
        }

        v107 = &v105[5 * v87];
        sub_1000CE6B8(&qword_101924FD0);
        swift_arrayDestroy();
        memmove(v107 + 9, v107 + 4, 40 * (v105[2] - v87));
        v108 = v105[2] + 1;
        v145 = v105;
        v105[2] = v108;
        sub_10005EB40(&v152, (v107 + 4));
        sub_100024F64(&v152, &qword_10191B730);
        if (v88)
        {
          sub_10005EB40(v155, &v152);
          v109 = v151;
          v110 = *v151;
          v111 = swift_isUniquelyReferenced_nonNull_native();
          *v109 = v110;
          if ((v111 & 1) == 0)
          {
            v110 = sub_100357BD0(0, v110[2] + 1, 1, v110);
            *v151 = v110;
          }

          v112 = v110[3];
          v138 = v110[2];
          if (v138 >= v112 >> 1)
          {
            v110 = sub_100357BD0((v112 > 1), v138 + 1, 1, v110);
            sub_100024F64(&v157, &qword_10191B728);
            *v151 = v110;
          }

          else
          {
            sub_100024F64(&v157, &qword_10191B728);
          }

          sub_10004E3D0(v155);
          v113 = v153;
          v114 = v154;
          v115 = sub_1000FA458(&v152, v153);
          v137 = &v133;
          v116 = __chkstk_darwin(v115);
          v118 = &v133 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v119 + 16))(v118, v116);
          v120 = v118;
          v121 = v151;
          sub_10036CD00(v138, v120, v151, v113, v114);
          sub_10004E3D0(&v152);
          *v121 = v110;
        }

        else
        {
          sub_10005EB40(v155, &v152);
          v122 = v151;
          v123 = v151[2];
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v122[2] = v123;
          if ((v124 & 1) == 0)
          {
            v123 = sub_100357BD0(0, v123[2] + 1, 1, v123);
            v151[2] = v123;
          }

          v125 = v123[3];
          v138 = v123[2];
          if (v138 >= v125 >> 1)
          {
            v123 = sub_100357BD0((v125 > 1), v138 + 1, 1, v123);
            sub_100024F64(&v157, &qword_10191B728);
            v151[2] = v123;
          }

          else
          {
            sub_100024F64(&v157, &qword_10191B728);
          }

          sub_10004E3D0(v155);
          v126 = v153;
          v137 = v154;
          v127 = sub_1000FA458(&v152, v153);
          v133 = &v133;
          v128 = __chkstk_darwin(v127);
          v130 = &v133 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v131 + 16))(v130, v128);
          v132 = v151;
          sub_10036CD00(v138, v130, v151 + 2, v126, v137);
          sub_10004E3D0(&v152);
          v132[2] = v123;
        }

        goto LABEL_68;
      }

      sub_100024F64(&v157, &qword_10191B728);
      sub_100024F64(&v152, &qword_10191B6B8);
      v49 = v146;
      goto LABEL_38;
    }

    if ((v157 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v157 >= v145[2])
    {
      goto LABEL_73;
    }

    sub_10005EB40(&v145[5 * v157 + 4], v155);
    result = swift_isUniquelyReferenced_nonNull_native();
    v134 = v53;
    if ((result & 1) == 0)
    {
      result = sub_100416654(v145);
      v145 = result;
    }

    v89 = v145;
    v90 = v145[2];
    if (v87 >= v90)
    {
      goto LABEL_74;
    }

    v91 = v90 - 1;
    v92 = &v145[5 * v87];
    sub_10004E3D0((v92 + 4));
    memmove(v92 + 4, v92 + 9, 40 * (v91 - v87));
    v89[2] = v91;
    if (v88)
    {
      sub_10005EB40(v155, &v152);
      v93 = v151;
      v94 = v151[1];
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v93[1] = v94;
      v53 = v134;
      if ((v95 & 1) == 0)
      {
        v94 = sub_100357BD0(0, v94[2] + 1, 1, v94);
        v151[1] = v94;
      }

      v96 = v94[3];
      v138 = v94[2];
      if (v138 >= v96 >> 1)
      {
        v94 = sub_100357BD0((v96 > 1), v138 + 1, 1, v94);
        sub_100024F64(&v157, &qword_10191B728);
        v151[1] = v94;
      }

      else
      {
        sub_100024F64(&v157, &qword_10191B728);
      }

      sub_10004E3D0(v155);
      v97 = v153;
      v137 = v154;
      v98 = sub_1000FA458(&v152, v153);
      v133 = &v133;
      v99 = __chkstk_darwin(v98);
      v101 = &v133 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v102 + 16))(v101, v99);
      v103 = v151;
      sub_10036CD00(v138, v101, v151 + 1, v97, v137);
      sub_10004E3D0(&v152);
      v103[1] = v94;
LABEL_68:
      v9 = v144;
      v49 = v146;
      goto LABEL_38;
    }

    sub_100024F64(&v157, &qword_10191B728);
    sub_10004E3D0(v155);
    v9 = v144;
    v49 = v146;
    v53 = v134;
LABEL_38:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v9[v54] == v157)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10036B3F8(void *a1)
{
  v1 = [a1 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_10036B4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10191B6C0);
  __chkstk_darwin(v8 - 8);
  v10 = v14 - v9;
  v14[0] = a1;
  v14[1] = a2;
  sub_1000CE6B8(&qword_101922E10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1011E1D30;
  *(v11 + 32) = 0xD000000000000010;
  *(v11 + 40) = 0x80000001012312E0;
  *(v11 + 72) = sub_1000CE6B8(&qword_10191B6C8);
  *(v11 + 48) = a1;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v5 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v4);
  swift_bridgeObjectRetain_n();

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10036B6F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Mirror.AncestorRepresentation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10191B6C0);
  __chkstk_darwin(v12 - 8);
  v14 = v22 - v13;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  sub_1000CE6B8(&qword_101922E10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1011E1D40;
  strcpy((v15 + 32), "identifierPath");
  *(v15 + 47) = -18;
  v16 = sub_100014C84(0, &qword_10190D2F0);
  *(v15 + 48) = a1;
  *(v15 + 72) = v16;
  *(v15 + 80) = 0xD00000000000001ALL;
  *(v15 + 88) = 0x8000000101231300;
  v17 = sub_1000CE6B8(&qword_10191B6D0);
  *(v15 + 96) = a3;
  *(v15 + 120) = v17;
  strcpy((v15 + 128), "cellSnapshots");
  *(v15 + 142) = -4864;
  *(v15 + 168) = sub_1000CE6B8(&qword_10191B6D8);
  *(v15 + 144) = a2;
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  (*(v9 + 104))(v11, enum case for Mirror.AncestorRepresentation.generated(_:), v8);
  v19 = a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v20 = v19;

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10036B9C4()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10191B6C0);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  sub_100098118(v1, v21);
  sub_1000CE6B8(&qword_101922E10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E1D60;
  strcpy((v9 + 32), "identifierPath");
  *(v9 + 47) = -18;
  v10 = *v1;
  v11 = sub_100014C84(0, &qword_10190D2F0);
  *(v9 + 48) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = 0x65646F4D6C6C6563;
  *(v9 + 88) = 0xE90000000000006CLL;
  sub_1000D2DFC((v1 + 1), v18, &unk_10191C220);
  sub_10005E7BC(v18, v19);
  v12 = v20;
  v13 = sub_10005E838(v19, v20);
  *(v9 + 120) = v12;
  v14 = sub_10001A848((v9 + 96));
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  v15 = v10;
  sub_10004E3D0(v19);
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10036BC80()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10191B6C0);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  sub_10019CEEC(v1, v23);
  sub_1000CE6B8(&qword_101922E10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E1D40;
  strcpy((v9 + 32), "identifierPath");
  *(v9 + 47) = -18;
  v10 = *v1;
  v11 = sub_100014C84(0, &qword_10190D2F0);
  *(v9 + 48) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = 0x4B746E656D656C65;
  v12 = v1[1];
  v13 = v1[2];
  *(v9 + 88) = 0xEB00000000646E69;
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 120) = &type metadata for String;
  *(v9 + 128) = 0xD000000000000016;
  *(v9 + 136) = 0x8000000101231320;
  sub_1000D2DFC((v1 + 3), v20, &unk_10191C250);
  sub_10005E7BC(v20, v21);
  v14 = v22;
  v15 = sub_10005E838(v21, v22);
  *(v9 + 168) = v14;
  v16 = sub_10001A848((v9 + 144));
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  v17 = v10;

  sub_10004E3D0(v21);
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t sub_10036BF78(uint64_t a1)
{
  result = sub_10036BFA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10036BFA0()
{
  result = qword_10191B690;
  if (!qword_10191B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B690);
  }

  return result;
}

unint64_t sub_10036BFF4(uint64_t a1)
{
  result = sub_10036C01C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10036C01C()
{
  result = qword_10191B698;
  if (!qword_10191B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B698);
  }

  return result;
}

unint64_t sub_10036C070(uint64_t a1)
{
  result = sub_10036C098();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10036C098()
{
  result = qword_10191B6A0;
  if (!qword_10191B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B6A0);
  }

  return result;
}

unint64_t sub_10036C0F0()
{
  result = qword_10191B6A8;
  if (!qword_10191B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B6A8);
  }

  return result;
}

unint64_t sub_10036C144(uint64_t a1)
{
  result = sub_10036C16C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10036C16C()
{
  result = qword_10191B6B0;
  if (!qword_10191B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B6B0);
  }

  return result;
}

void sub_10036C1C0(uint64_t a1, uint64_t a2)
{
  v26 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v25 = (v2 + 63) >> 6;

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v30 = v5;
    if (!v4)
    {
      break;
    }

LABEL_12:
    v11 = (v6 << 11) | (32 * __clz(__rbit64(v4)));
    v12 = *(a2 + 48) + v11;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(a2 + 56) + v11;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *v12;
    sub_1000D2C54(v13, v14, v15);
    v29 = v17;

    if (!v21)
    {
LABEL_22:

      Hasher._combine(_:)(v30);
      return;
    }

    v22 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v22;
    v32 = *(a1 + 64);
    v23 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v23;
    NSObject.hash(into:)();
    if (!v15)
    {
      Hasher._combine(_:)(3uLL);
      String.hash(into:)();

      v7 = v13;
      v8 = v14;
      v9 = 0;
LABEL_5:
      sub_1001F12E8(v7, v8, v9);
      goto LABEL_6;
    }

    if (v15 == 1)
    {
      Hasher._combine(_:)(4uLL);
      String.hash(into:)();

      v7 = v13;
      v8 = v14;
      v9 = 1;
      goto LABEL_5;
    }

    if (v13 | v14)
    {
      if (v13 ^ 1 | v14)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 0;
    }

    Hasher._combine(_:)(v24);

LABEL_6:
    v4 &= v4 - 1;
    NSObject.hash(into:)();
    sub_10036C9C4(v31, v18);
    sub_10036C878(v31, v19);

    sub_10036C444(v31, v20);
    swift_bridgeObjectRelease_n();

    v5 = Hasher._finalize()() ^ v30;
  }

  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v25)
    {
      goto LABEL_22;
    }

    v4 = *(v26 + 8 * v10);
    ++v6;
    if (v4)
    {
      v6 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10036C444(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v27 = v8;
    if (!v6)
    {
      break;
    }

LABEL_11:
    v13 = __clz(__rbit64(v6)) | (v9 << 6);
    v14 = *(a2 + 48) + 32 * v13;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    sub_1000D2DFC(*(a2 + 56) + 40 * v13, &v34, &unk_10190BB60);
    v25 = v34;
    v26 = v35;
    v19 = v36;
    v20 = v16;
    sub_1000D2C54(v15, v17, v18);
    if (!v20)
    {
LABEL_24:

      Hasher._combine(_:)(v27);
      return;
    }

    v39[0] = v25;
    v39[1] = v26;
    v40 = v19;
    v21 = a1[3];
    v36 = a1[2];
    v37 = v21;
    v38 = *(a1 + 8);
    v22 = a1[1];
    v34 = *a1;
    v35 = v22;
    NSObject.hash(into:)();
    if (v18)
    {
      if (v18 == 1)
      {
        Hasher._combine(_:)(4uLL);
        String.hash(into:)();

        sub_1001F12E8(v15, v17, 1u);
      }

      else
      {
        if (v15 | v17)
        {
          if (v15 ^ 1 | v17)
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }
        }

        else
        {
          v23 = 0;
        }

        Hasher._combine(_:)(v23);
      }
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      String.hash(into:)();

      sub_1001F12E8(v15, v17, 0);
    }

    sub_10005EB40(v39, v31);
    sub_1000CE6B8(&qword_101924FD0);
    if (swift_dynamicCast())
    {
      v32[0] = v28;
      v32[1] = v29;
      v33 = v30;
      AnyHashable.hash(into:)();
      sub_10005BF8C(v32);
      v10 = v39;
      v11 = &unk_10190BB60;
    }

    else
    {
      sub_100024F64(v39, &unk_10190BB60);
      v28 = 0u;
      v29 = 0u;
      v30 = 0;
      v10 = &v28;
      v11 = &qword_10191A570;
    }

    sub_100024F64(v10, v11);
    v6 &= v6 - 1;
    v8 = Hasher._finalize()() ^ v27;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      goto LABEL_24;
    }

    v6 = *(v3 + 8 * v12);
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10036C730(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 ^= Hasher._finalize()())
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = *(*(a2 + 56) + 8 * v11);
    v6 &= v6 - 1;
    Hasher._combine(_:)(*(*(a2 + 48) + v11));
    Hasher._combine(_:)(v12[4]);
    Hasher._combine(_:)(v12[5]);
    Hasher._combine(_:)(v12[6]);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10036C878(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      sub_10019CEEC(v4, &v11);
      NSObject.hash(into:)();
      String.hash(into:)();
      sub_10005EB40(&v12, v8);
      sub_1000CE6B8(&unk_101911D40);
      if (swift_dynamicCast())
      {
        v9[0] = v5;
        v9[1] = v6;
        v10 = v7;
        AnyHashable.hash(into:)();
        sub_10005BF8C(v9);
        sub_10019CF9C(&v11);
      }

      else
      {
        sub_10019CF9C(&v11);
        v5 = 0u;
        v6 = 0u;
        v7 = 0;
        sub_100024F64(&v5, &qword_10191A570);
      }

      v4 += 64;
      --v3;
    }

    while (v3);
  }
}

void sub_10036C9C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      sub_100098118(v4, &v11);
      NSObject.hash(into:)();
      sub_10005EB40(&v12, v8);
      sub_1000CE6B8(&unk_101911D30);
      if (swift_dynamicCast())
      {
        v9[0] = v5;
        v9[1] = v6;
        v10 = v7;
        AnyHashable.hash(into:)();
        sub_10005BF8C(v9);
        sub_10019D044(&v11);
      }

      else
      {
        sub_10019D044(&v11);
        v5 = 0u;
        v6 = 0u;
        v7 = 0;
        sub_100024F64(&v5, &qword_10191A570);
      }

      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

void sub_10036CB04(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 3);

      NSObject.hash(into:)();
      sub_10036C9C4(a1, v6);
      sub_10036C878(a1, v7);

      sub_10036C444(a1, v8);
      swift_bridgeObjectRelease_n();

      v5 += 4;
      --v4;
    }

    while (v4);
  }
}

uint64_t *sub_10036CBE0@<X0>(uint64_t *result@<X0>, void *a2@<X1>, __int128 *a3@<X8>)
{
  v3 = *result;
  if (*result >= a2[2] && v3 < a2[3] >> 1)
  {
    v5 = (a2[1] + 32 * v3);
    v7 = *v5;
    v8 = v5[1];
    *a3 = *v5;
    a3[1] = v8;
    v6 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10036CC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10001A848(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10005E7BC(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10036CD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10001A848(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10005E7BC(&v12, v10 + 40 * a1 + 32);
}

void *sub_10036CD98(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v15 = a2 + 32;
  sub_100014C84(0, &qword_10190B2D0);
  v4 = 0;
  v16 = a2;
  v5 = a2 + 56;
  for (i = 1; ; i += 2)
  {
    v7 = *(v5 - 24);

    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }

    ++v4;
    v5 += 32;
    if (v2 == v4)
    {
      return 0;
    }
  }

  v18[0] = v16;
  v18[1] = v15;
  v11 = (v5 - 48);
  v18[2] = 0;
  v18[3] = i;
  do
  {
    if (!v4)
    {
      break;
    }

    --v4;
    v12 = *v11;
    v11 -= 4;
  }

  while (!*(v12 + 16));
  __chkstk_darwin(v9);
  v14[2] = v18;
  return sub_100468FB0(sub_10036D510, v14, v4, v13);
}

uint64_t sub_10036CF20(uint64_t a1)
{
  v2 = &_swiftEmptyArrayStorage;
  v3 = sub_1000D158C(&_swiftEmptyArrayStorage);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  for (i = (a1 + 32); ; i += 2)
  {
    v30 = *i;
    v31 = i[1];
    v6 = v3[2];
    v7 = *i;

    if (!v6)
    {
      break;
    }

    sub_100296ED8(v7, 1, 0, 2);
    if ((v8 & 1) == 0)
    {
      break;
    }

LABEL_4:
    if (!--v4)
    {
      return v2;
    }
  }

  v9 = v7;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = sub_100296ED8(v9, 1, 0, 2);
  v13 = v3[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (!v15)
  {
    v17 = v12;
    if (v3[3] >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v11;
        sub_10012CD7C();
        v11 = v21;
        if (v17)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_10012777C(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_100296ED8(v9, 1, 0, 2);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_25;
      }
    }

    if (v17)
    {
LABEL_13:
      v19 = v3[7] + 32 * v11;
      v20 = *v19;
      *v19 = v30;
      *(v19 + 16) = v31;

LABEL_17:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100357AC4(0, *(v2 + 2) + 1, 1, v2);
      }

      v27 = *(v2 + 2);
      v26 = *(v2 + 3);
      if (v27 >= v26 >> 1)
      {
        v2 = sub_100357AC4((v26 > 1), v27 + 1, 1, v2);
      }

      *(v2 + 2) = v27 + 1;
      v28 = &v2[32 * v27];
      *(v28 + 2) = v30;
      *(v28 + 3) = v31;
      goto LABEL_4;
    }

LABEL_15:
    v3[(v11 >> 6) + 8] |= 1 << v11;
    v22 = v3[6] + 32 * v11;
    *v22 = v9;
    *(v22 + 8) = xmmword_1011FDDA0;
    *(v22 + 24) = 2;
    v23 = (v3[7] + 32 * v11);
    *v23 = v30;
    v23[1] = v31;
    v24 = v3[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
      goto LABEL_24;
    }

    v3[2] = v25;
    goto LABEL_17;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_10036D224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = &_swiftEmptyArrayStorage;
    for (i = a1 + 32; ; i += 40)
    {
      sub_10005EB40(i, v19);
      sub_10005E7BC(v19, &v15);
      sub_1000CE6B8(&qword_101924FD0);
      if (swift_dynamicCast())
      {
        if (v11)
        {
          v15 = v11;
          v16 = v12;
          v17 = v13;
          v18 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_100357D18(0, *(v2 + 2) + 1, 1, v2);
          }

          v5 = *(v2 + 2);
          v4 = *(v2 + 3);
          if (v5 >= v4 >> 1)
          {
            v2 = sub_100357D18((v4 > 1), v5 + 1, 1, v2);
          }

          *(v2 + 2) = v5 + 1;
          v6 = &v2[64 * v5];
          v7 = v15;
          v8 = v16;
          v9 = v18;
          *(v6 + 4) = v17;
          *(v6 + 5) = v9;
          *(v6 + 2) = v7;
          *(v6 + 3) = v8;
          goto LABEL_5;
        }
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
      }

      sub_100024F64(&v11, &unk_101915FD0);
LABEL_5:
      if (!--v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_10036D3AC()
{
  result = qword_10190D2F8;
  if (!qword_10190D2F8)
  {
    sub_100014C84(255, &qword_10190D2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D2F8);
  }

  return result;
}

unint64_t sub_10036D414()
{
  result = qword_10191B6E8;
  if (!qword_10191B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B6E8);
  }

  return result;
}

unint64_t sub_10036D468()
{
  result = qword_10191B710;
  if (!qword_10191B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B710);
  }

  return result;
}

unint64_t sub_10036D4BC()
{
  result = qword_10191B718;
  if (!qword_10191B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B718);
  }

  return result;
}

uint64_t sub_10036D530(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_1000D1700(_swiftEmptyArrayStorage);
  v7 = *(a2 + 16);
  v8 = &selRef_hasMarkedText;
  v76 = v5;
  if (!v7)
  {

LABEL_27:
    v41 = *(a3 + 16);
    if (!v41)
    {
      return v5;
    }

    v42 = a3 + 32;
    v43 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_10019CEEC(v42, v82);
      v44 = v82[1];
      v45 = v82[2];
      v46 = v82[0];

      if ([v46 v8[60]])
      {
        if (!v6[2] || (v47 = sub_100296ED8(v46, v44, v45, 0), (v48 & 1) == 0))
        {
          *&v79 = 0;
          v77 = 0u;
          v78 = 0u;
          sub_100024F64(&v77, &qword_10191B738);
          v49 = sub_10019CF48();
          v50 = swift_allocObject();
          sub_10019CEEC(v82, v50 + 16);
          *&v77 = v50;
          *(&v78 + 1) = &type metadata for HomeListSupplementaryViewSnapshot;
          *&v79 = v49;
          v51 = v46;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v6;
          v54 = sub_100296ED8(v51, v44, v45, 0);
          v55 = v6[2];
          v56 = (v53 & 1) == 0;
          v57 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_53;
          }

          v58 = v53;
          if (v6[3] >= v57)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v6 = v81;
              if ((v53 & 1) == 0)
              {
                goto LABEL_44;
              }
            }

            else
            {
              sub_10012D0D0();
              v6 = v81;
              if ((v58 & 1) == 0)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
            sub_100097DA4(v57, isUniquelyReferenced_nonNull_native);
            v59 = sub_100296ED8(v51, v44, v45, 0);
            if ((v58 & 1) != (v60 & 1))
            {
              goto LABEL_57;
            }

            v54 = v59;
            v6 = v81;
            if ((v58 & 1) == 0)
            {
LABEL_44:
              v6[(v54 >> 6) + 8] |= 1 << v54;
              v61 = v6[6] + 32 * v54;
              *v61 = v51;
              *(v61 + 8) = v44;
              *(v61 + 16) = v45;
              *(v61 + 24) = 0;
              v62 = v6[7] + 40 * v54;
              v63 = v77;
              v64 = v78;
              *(v62 + 32) = v79;
              *v62 = v63;
              *(v62 + 16) = v64;
              v65 = v6[2];
              v34 = __OFADD__(v65, 1);
              v66 = v65 + 1;
              if (v34)
              {
                goto LABEL_55;
              }

              v6[2] = v66;
              goto LABEL_46;
            }
          }

          sub_10036DC40(&v77, v6[7] + 40 * v54);

LABEL_46:
          sub_10019CEEC(v82, &v77);
          v8 = &selRef_hasMarkedText;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_100357D18(0, *(v43 + 2) + 1, 1, v43);
          }

          v68 = *(v43 + 2);
          v67 = *(v43 + 3);
          if (v68 >= v67 >> 1)
          {
            v43 = sub_100357D18((v67 > 1), v68 + 1, 1, v43);
          }

          sub_10019CF9C(v82);
          *(v43 + 2) = v68 + 1;
          v69 = &v43[64 * v68];
          v70 = v80;
          v71 = v77;
          v72 = v78;
          *(v69 + 4) = v79;
          *(v69 + 5) = v70;
          *(v69 + 2) = v71;
          *(v69 + 3) = v72;
          v5 = v76;
          goto LABEL_30;
        }

        sub_1000D2DFC(v6[7] + 40 * v47, &v77, &unk_10190BB60);
        sub_10019CF9C(v82);

        sub_100024F64(&v77, &qword_10191B738);
      }

      else
      {
        sub_10019CF9C(v82);
      }

LABEL_30:
      v42 += 64;
      if (!--v41)
      {
        return v5;
      }
    }
  }

  v74 = a3;
  v9 = 0;
  v10 = a2 + 32;
  v11 = _swiftEmptyArrayStorage;
  v75 = a2;
  while (v9 < *(a2 + 16))
  {
    sub_100098118(v10, v82);
    v12 = v82[0];
    if ([v12 v8[60]])
    {
      if (v6[2] && (v13 = sub_100296ED8(v12, 2, 0, 2), (v14 & 1) != 0))
      {
        sub_1000D2DFC(v6[7] + 40 * v13, &v77, &unk_10190BB60);
        sub_10019D044(v82);

        sub_100024F64(&v77, &qword_10191B738);
      }

      else
      {
        v15 = v7;
        v16 = v11;
        *&v79 = 0;
        v77 = 0u;
        v78 = 0u;
        sub_100024F64(&v77, &qword_10191B738);
        v17 = sub_10019CFF0();
        v18 = swift_allocObject();
        sub_100098118(v82, v18 + 16);
        *&v77 = v18;
        *(&v78 + 1) = &type metadata for HomeListCellSnapshot;
        *&v79 = v17;
        v19 = v12;
        v20 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v6;
        v22 = sub_100296ED8(v19, 2, 0, 2);
        v23 = v6[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_54;
        }

        v26 = v21;
        if (v6[3] >= v25)
        {
          if ((v20 & 1) == 0)
          {
            sub_10012D0D0();
          }
        }

        else
        {
          sub_100097DA4(v25, v20);
          v27 = sub_100296ED8(v19, 2, 0, 2);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_57;
          }

          v22 = v27;
        }

        v8 = &selRef_hasMarkedText;
        v6 = v81;
        if (v26)
        {
          sub_10036DC40(&v77, v81[7] + 40 * v22);
        }

        else
        {
          v81[(v22 >> 6) + 8] |= 1 << v22;
          v29 = v6[6] + 32 * v22;
          *v29 = v19;
          *(v29 + 8) = xmmword_1011FDDB0;
          *(v29 + 24) = 2;
          v30 = v6[7] + 40 * v22;
          v31 = v77;
          v32 = v78;
          *(v30 + 32) = v79;
          *v30 = v31;
          *(v30 + 16) = v32;
          v33 = v6[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_56;
          }

          v6[2] = v35;
        }

        sub_100098118(v82, &v77);
        v11 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100355784(0, *(v16 + 2) + 1, 1, v16);
        }

        v7 = v15;
        v37 = *(v11 + 2);
        v36 = *(v11 + 3);
        a2 = v75;
        if (v37 >= v36 >> 1)
        {
          v11 = sub_100355784((v36 > 1), v37 + 1, 1, v11);
        }

        sub_10019D044(v82);
        *(v11 + 2) = v37 + 1;
        v38 = &v11[48 * v37];
        v40 = v78;
        v39 = v79;
        *(v38 + 2) = v77;
        *(v38 + 3) = v40;
        *(v38 + 4) = v39;
        v5 = v76;
      }
    }

    else
    {
      sub_10019D044(v82);
    }

    ++v9;
    v10 += 48;
    if (v7 == v9)
    {

      a3 = v74;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10036DC40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190BB60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036DCB0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10036DCDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10036DD24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10036DD84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10036DD98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10036DDE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10036DE38()
{
  result = qword_10191B740;
  if (!qword_10191B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B740);
  }

  return result;
}

uint64_t sub_10036DE90@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v170 = type metadata accessor for VisitHistoryFilterDateRangePicker(0);
  __chkstk_darwin(v170);
  v148 = (&v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v149 = (&v139 - v5);
  v6 = sub_1000CE6B8(&qword_10190EBC8);
  __chkstk_darwin(v6 - 8);
  v147 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v145 = &v139 - v9;
  __chkstk_darwin(v10);
  v163 = &v139 - v11;
  __chkstk_darwin(v12);
  v157 = &v139 - v13;
  v164 = type metadata accessor for VisitHistoryFilterMonthYearPicker(0);
  __chkstk_darwin(v164);
  v156 = (&v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v146 = &v139 - v16;
  v165 = sub_1000CE6B8(&qword_10191B778);
  __chkstk_darwin(v165);
  v161 = &v139 - v17;
  v158 = sub_1000CE6B8(&qword_10191B780);
  __chkstk_darwin(v158);
  v159 = &v139 - v18;
  v166 = sub_1000CE6B8(&qword_10191B788);
  __chkstk_darwin(v166);
  v160 = &v139 - v19;
  v162 = type metadata accessor for Date();
  v169 = *(v162 - 8);
  __chkstk_darwin(v162);
  v140 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = &v139 - v22;
  __chkstk_darwin(v23);
  v139 = &v139 - v24;
  __chkstk_darwin(v25);
  v141 = &v139 - v26;
  __chkstk_darwin(v27);
  v150 = &v139 - v28;
  __chkstk_darwin(v29);
  v151 = &v139 - v30;
  __chkstk_darwin(v31);
  v171 = &v139 - v32;
  v33 = type metadata accessor for Calendar();
  v153 = *(v33 - 8);
  v154 = v33;
  __chkstk_darwin(v33);
  v152 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for VisitHistoryFilterSpecificDatePicker(0);
  __chkstk_darwin(v168);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v139 - v38;
  v40 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v40 - 8);
  v143 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v144 = &v139 - v43;
  __chkstk_darwin(v44);
  v155 = &v139 - v45;
  __chkstk_darwin(v46);
  v48 = &v139 - v47;
  __chkstk_darwin(v49);
  v51 = &v139 - v50;
  __chkstk_darwin(v52);
  v54 = &v139 - v53;
  __chkstk_darwin(v55);
  v57 = &v139 - v56;
  __chkstk_darwin(v58);
  v60 = &v139 - v59;
  v61 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v61);
  v63 = &v139 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100374594(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_datePickerMode, v63, type metadata accessor for VisitHistoryFilterDatePickerMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v150 = v48;
    v156 = v39;
    sub_1000F11C4(v63, v60, &qword_10190EBD0);
    v84 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_viewTitle);
    v83 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_viewTitle + 8);
    sub_1000D2DFC(v60, v57, &qword_10190EBD0);
    *v36 = v84;
    *(v36 + 1) = v83;
    v85 = *(v168 + 24);
    v163 = v36;
    v86 = &v36[v85];
    *v86 = sub_100375CB8;
    v86[1] = a1;
    v157 = v57;
    sub_1000D2DFC(v57, v51, &qword_10190EBD0);
    v87 = v169;
    v88 = v162;
    v149 = *(v169 + 48);
    v89 = (v149)(v51, 1, v162);

    v155 = v60;
    if (v89 == 1)
    {
      sub_100024F64(v51, &qword_10190EBD0);
      v90 = 1;
      v92 = v153;
      v91 = v154;
      v93 = v152;
    }

    else
    {
      v93 = v152;
      static Calendar.current.getter();
      Calendar.startOfDay(for:)();
      v92 = v153;
      v91 = v154;
      (*(v153 + 8))(v93, v154);
      (*(v87 + 8))(v51, v88);
      v90 = 0;
    }

    (*(v87 + 56))(v54, v90, 1, v88);
    v117 = v168;
    v118 = v163;
    sub_1000F11C4(v54, &v163[*(v168 + 20)], &qword_10190EBD0);
    v119 = v171;
    static Date.now.getter();
    static Calendar.current.getter();
    v120 = *(v117 + 32);
    Calendar.startOfDay(for:)();
    (*(v92 + 8))(v93, v91);
    v154 = *(v87 + 8);
    v154(v119, v88);
    v121 = v150;
    sub_1000D2DFC(v157, v150, &qword_10190EBD0);
    v122 = v149;
    if ((v149)(v121, 1, v88) == 1)
    {
      v123 = *(v87 + 16);
      v123(v151, v118 + v120, v88);
      if (v122(v121, 1, v88) != 1)
      {
        sub_100024F64(v121, &qword_10190EBD0);
      }

      v124 = v151;
    }

    else
    {
      v124 = v151;
      (*(v87 + 32))(v151, v121, v88);
      v123 = *(v87 + 16);
    }

    v123(v171, v124, v88);
    v125 = v163;
    State.init(wrappedValue:)();
    v154(v124, v88);
    v126 = &qword_10190EBD0;
    sub_100024F64(v157, &qword_10190EBD0);
    v127 = v156;
    sub_10037474C(v125, v156, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
    sub_100374594(v127, v159, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
    swift_storeEnumTagMultiPayload();
    sub_1003746E8(&qword_10191B798, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
    sub_1003746E8(&qword_10191B7A0, type metadata accessor for VisitHistoryFilterMonthYearPicker);
    v128 = v160;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v128, v161, &qword_10191B788);
    swift_storeEnumTagMultiPayload();
    sub_1003745FC();
    sub_1003746E8(&qword_10191B7A8, type metadata accessor for VisitHistoryFilterDateRangePicker);
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v128, &qword_10191B788);
    sub_1003747B4(v127, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
    v115 = v155;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v94 = v63;
    v95 = v157;
    sub_1000F11C4(v94, v157, &qword_10190EBC8);
    v97 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_viewTitle);
    v96 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_viewTitle + 8);
    v98 = v163;
    sub_1000D2DFC(v95, v163, &qword_10190EBC8);
    v99 = v148;
    *v148 = v97;
    *(v99 + 8) = v96;
    v100 = v170;
    v101 = (v99 + *(v170 + 24));
    *v101 = sub_100375CB8;
    v101[1] = a1;
    sub_1000D2DFC(v98, v99 + *(v100 + 20), &qword_10190EBC8);

    v102 = v171;
    static Date.now.getter();
    v103 = v152;
    static Calendar.current.getter();
    v104 = *(v100 + 36);
    Calendar.startOfDay(for:)();
    (*(v153 + 8))(v103, v154);
    v105 = v169;
    v106 = v162;
    v168 = *(v169 + 8);
    (v168)(v102, v162);
    v107 = v145;
    sub_1000D2DFC(v98, v145, &qword_10190EBC8);
    v108 = sub_1000CE6B8(&unk_10190EB28);
    v109 = *(v108 - 8);
    v164 = *(v109 + 48);
    v160 = (v109 + 48);
    if ((v164)(v107, 1, v108) == 1)
    {
      sub_100024F64(v107, &qword_10190EBC8);
      v110 = *(v105 + 16);
      v111 = v141;
      v110(v141, v99 + v104, v106);
    }

    else
    {
      v110 = *(v105 + 16);
      v159 = v104;
      v129 = v139;
      v110(v139, v107, v106);
      sub_100024F64(v107, &unk_10190EB28);
      v111 = v141;
      v130 = v129;
      v104 = v159;
      (*(v105 + 32))(v141, v130, v106);
    }

    v110(v171, v111, v106);
    State.init(wrappedValue:)();
    (v168)(v111, v106);
    v131 = v147;
    sub_1000D2DFC(v163, v147, &qword_10190EBC8);
    if ((v164)(v131, 1, v108) == 1)
    {
      sub_100024F64(v131, &qword_10190EBC8);
      v132 = v99 + v104;
      v133 = v142;
      v110(v142, v132, v106);
    }

    else
    {
      v134 = v131 + *(v108 + 36);
      v135 = v140;
      v110(v140, v134, v106);
      sub_100024F64(v131, &unk_10190EB28);
      v133 = v142;
      (*(v169 + 32))(v142, v135, v106);
    }

    v136 = v161;
    v110(v171, v133, v106);
    State.init(wrappedValue:)();
    (v168)(v133, v106);
    v126 = &qword_10190EBC8;
    sub_100024F64(v163, &qword_10190EBC8);
    v137 = v149;
    sub_10037474C(v99, v149, type metadata accessor for VisitHistoryFilterDateRangePicker);
    sub_100374594(v137, v136, type metadata accessor for VisitHistoryFilterDateRangePicker);
    swift_storeEnumTagMultiPayload();
    sub_1003745FC();
    sub_1003746E8(&qword_10191B7A8, type metadata accessor for VisitHistoryFilterDateRangePicker);
    _ConditionalContent<>.init(storage:)();
    sub_1003747B4(v137, type metadata accessor for VisitHistoryFilterDateRangePicker);
    v115 = v157;
LABEL_25:
    v116 = v126;
    return sub_100024F64(v115, v116);
  }

  v65 = v155;
  sub_1000F11C4(v63, v155, &qword_10190EBD0);
  v66 = a1;
  v68 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_viewTitle);
  v67 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_viewTitle + 8);
  v69 = v144;
  sub_1000D2DFC(v65, v144, &qword_10190EBD0);
  v70 = v164;
  v71 = *(v164 + 32);

  v72 = v156;
  v163 = v71;
  static Date.now.getter();
  *v72 = v68;
  v72[1] = v67;
  v73 = (v72 + *(v70 + 24));
  *v73 = sub_100374730;
  v73[1] = v66;
  v74 = v72;
  sub_1000D2DFC(v69, v72 + *(v70 + 20), &qword_10190EBD0);
  v75 = v143;
  sub_1000D2DFC(v69, v143, &qword_10190EBD0);
  v76 = v169;
  v77 = *(v169 + 48);
  v78 = v162;
  if (v77(v75, 1, v162) == 1)
  {
    v79 = *(v76 + 16);
    v79(v150, &v163[v74], v78);
    v80 = v77(v75, 1, v78);
    v81 = v161;
    if (v80 != 1)
    {
      sub_100024F64(v75, &qword_10190EBD0);
    }

    v76 = v169;
    v82 = v150;
  }

  else
  {
    v82 = v150;
    (*(v76 + 32))(v150, v75, v78);
    v79 = *(v76 + 16);
    v81 = v161;
  }

  v79(v171, v82, v78);
  v112 = v156;
  State.init(wrappedValue:)();
  (*(v76 + 8))(v82, v78);
  sub_100024F64(v69, &qword_10190EBD0);
  v113 = v146;
  sub_10037474C(v112, v146, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  sub_100374594(v113, v159, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  swift_storeEnumTagMultiPayload();
  sub_1003746E8(&qword_10191B798, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
  sub_1003746E8(&qword_10191B7A0, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  v114 = v160;
  _ConditionalContent<>.init(storage:)();
  sub_1000D2DFC(v114, v81, &qword_10191B788);
  swift_storeEnumTagMultiPayload();
  sub_1003745FC();
  sub_1003746E8(&qword_10191B7A8, type metadata accessor for VisitHistoryFilterDateRangePicker);
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v114, &qword_10191B788);
  sub_1003747B4(v113, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  v115 = v155;
  v116 = &qword_10190EBD0;
  return sub_100024F64(v115, v116);
}

uint64_t sub_10036F340(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1003746E8(&qword_10191B7B0, type metadata accessor for VisitHistoryFilterDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a2 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone);
  if (v5)
  {

    v5(a1);
    return sub_1000588AC(v5);
  }

  return result;
}

uint64_t sub_10036F420@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for CardHeaderSize();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for CardHeaderTextViewModel();
  __chkstk_darwin(v13 - 8);
  v32[2] = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  __chkstk_darwin(v15 - 8);
  v32[3] = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = *v1;
  v17 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v18 = type metadata accessor for MapsDesignAccessibilityString();
  v19 = *(v18 - 8);
  v20 = *(v19 + 104);
  v20(v12, v17, v18);
  v21 = *(v19 + 56);
  v21(v12, 0, 1, v18);
  v20(v9, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v18);
  v21(v9, 0, 1, v18);
  v20(v6, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v18);
  v21(v6, 0, 1, v18);

  static HorizontalAlignment.center.getter();
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  sub_10036F994();
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v22 = swift_allocObject();
  v23 = *(v1 + 48);
  *(v22 + 48) = *(v1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(v1 + 64);
  v24 = *(v1 + 16);
  *(v22 + 16) = *v1;
  *(v22 + 32) = v24;
  v25 = objc_opt_self();

  v26 = [v25 systemBlueColor];
  static CardButtonViewModel.done(tintColor:enabled:axID:action:)();

  (*(v34 + 104))(v33, enum case for CardHeaderSize.medium(_:), v35);
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v27 = v36;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  KeyPath = swift_getKeyPath();
  v29 = v27 + *(sub_1000CE6B8(&qword_1019174C8) + 36);
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  result = sub_1000CE6B8(&qword_10191BBA8);
  v31 = v27 + *(result + 36);
  *v31 = 0xD000000000000010;
  *(v31 + 8) = 0x80000001012313A0;
  *(v31 + 16) = 12;
  return result;
}

uint64_t sub_10036F994()
{
  v1 = *(v0 + 16);
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  if (v1 == 1)
  {
    v12 = *v0;
    v3 = swift_allocObject();
    v4 = v0[3];
    *(v3 + 48) = v0[2];
    *(v3 + 64) = v4;
    *(v3 + 80) = *(v0 + 8);
    v5 = v0[1];
    *(v3 + 16) = *v0;
    *(v3 + 32) = v5;
    sub_100147688(&v12, v11);

    static CardButtonViewModel.close(tintColor:enabled:action:)();
  }

  else
  {
    v6 = sub_100D35AB8();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = *v0;
    v7 = swift_allocObject();
    v8 = v0[3];
    *(v7 + 48) = v0[2];
    *(v7 + 64) = v8;
    *(v7 + 80) = *(v0 + 8);
    v9 = v0[1];
    *(v7 + 16) = *v0;
    *(v7 + 32) = v9;
    sub_100147688(&v12, v11);

    CardButtonViewModel.init(systemImageName:title:tintColor:enabled:systemImagePadding:fontPointSize:fontWeight:axID:showChevron:height:helpText:action:)();
  }

  return v2;
}

BOOL sub_10036FC38()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_10191BA20);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v9 - 8);
  v23 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = *(type metadata accessor for VisitHistoryFilterSpecificDatePicker(0) + 20);
  sub_1000CE6B8(&qword_10191B7B8);
  State.wrappedValue.getter();
  (*(v3 + 56))(v13, 0, 1, v2);
  v15 = *(v6 + 56);
  sub_1000D2DFC(v1 + v14, v8, &qword_10190EBD0);
  sub_1000D2DFC(v13, &v8[v15], &qword_10190EBD0);
  v16 = *(v3 + 48);
  if (v16(v8, 1, v2) != 1)
  {
    v17 = v23;
    sub_1000D2DFC(v8, v23, &qword_10190EBD0);
    if (v16(&v8[v15], 1, v2) != 1)
    {
      v19 = v22;
      (*(v3 + 32))(v22, &v8[v15], v2);
      sub_1003746E8(&qword_101917318, &type metadata accessor for Date);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v3 + 8);
      v21(v19, v2);
      sub_100024F64(v13, &qword_10190EBD0);
      v21(v17, v2);
      sub_100024F64(v8, &qword_10190EBD0);
      return (v20 & 1) == 0;
    }

    sub_100024F64(v13, &qword_10190EBD0);
    (*(v3 + 8))(v17, v2);
LABEL_6:
    sub_100024F64(v8, &qword_10191BA20);
    return 1;
  }

  sub_100024F64(v13, &qword_10190EBD0);
  if (v16(&v8[v15], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_100024F64(v8, &qword_10190EBD0);
  return 0;
}

uint64_t sub_10037002C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v100 = a2;
  v3 = type metadata accessor for GraphicalDatePickerStyle();
  v98 = *(v3 - 8);
  v99 = v3;
  __chkstk_darwin(v3);
  v97 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DatePickerComponents();
  v84 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000CE6B8(&qword_10190EBC0);
  __chkstk_darwin(v80);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v71 - v8;
  v102 = type metadata accessor for Date();
  v78 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000CE6B8(&unk_10190EB28);
  __chkstk_darwin(v76);
  v83 = &v71 - v10;
  v11 = sub_1000CE6B8(&qword_10191B9C8);
  __chkstk_darwin(v11 - 8);
  v103 = &v71 - v12;
  v89 = sub_1000CE6B8(&qword_10191B9D0);
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v71 - v13;
  v14 = sub_1000CE6B8(&qword_10191B9D8);
  v90 = *(v14 - 8);
  v91 = v14;
  __chkstk_darwin(v14);
  v88 = &v71 - v15;
  v16 = sub_1000CE6B8(&qword_10191B9E0);
  __chkstk_darwin(v16 - 8);
  v95 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v93 = &v71 - v19;
  v20 = type metadata accessor for VisitHistoryFilterSpecificDatePicker(0);
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  __chkstk_darwin(v28);
  v30 = &v71 - v29;
  v31 = a1[1];
  v81 = *a1;
  v92 = v31;

  LODWORD(v75) = sub_10036FC38();
  sub_100374594(a1, v30, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
  v32 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v86 = swift_allocObject();
  sub_10037474C(v30, v86 + v32, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
  sub_100374594(a1, v27, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
  v82 = swift_allocObject();
  sub_10037474C(v27, v82 + v32, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
  sub_100374594(a1, v24, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
  v33 = v101;
  v34 = swift_allocObject();
  sub_10037474C(v24, v34 + v32, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
  v35 = LocalizedStringKey.init(stringLiteral:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1000CE6B8(&qword_10191B7B8);
  State.projectedValue.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  v42 = a1 + *(v21 + 40);
  sub_1003746E8(&qword_10190EBD8, &type metadata accessor for Date);
  v43 = v102;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v74 = v75 & 1;
    v73 = v35;
    v45 = v78;
    v72 = v39;
    v75 = v34;
    v46 = *(v78 + 32);
    v47 = v77;
    v46(v77, v33, v43);
    v101 = v37;
    v48 = v80;
    (*(v45 + 16))(v47 + *(v80 + 48), v42, v43);
    v49 = v79;
    sub_1000D2DFC(v47, v79, &qword_10190EBC0);
    v50 = *(v48 + 48);
    v51 = v83;
    v46(v83, v49, v43);
    v71 = v41;
    v52 = *(v45 + 8);
    v52(v49 + v50, v43);
    sub_1000F11C4(v47, v49, &qword_10190EBC0);
    v46(&v51[*(v76 + 36)], (v49 + *(v48 + 48)), v43);
    v52(v49, v43);
    sub_1000CE6B8(&qword_10191B9E8);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1011E1D30;
    static DatePickerComponents.date.getter();
    v104 = v53;
    sub_1003746E8(&qword_10191B9F0, &type metadata accessor for DatePickerComponents);
    sub_1000CE6B8(&qword_10191B9F8);
    sub_1000414C8(&qword_10191BA00, &qword_10191B9F8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v54 = v85;
    DatePicker<>.init(_:selection:in:displayedComponents:)();
    v55 = v97;
    GraphicalDatePickerStyle.init()();
    v56 = sub_1000414C8(&qword_10191BA08, &qword_10191B9D0);
    v57 = sub_1003746E8(&qword_10191BA10, &type metadata accessor for GraphicalDatePickerStyle);
    v59 = v88;
    v58 = v89;
    v60 = v99;
    View.datePickerStyle<A>(_:)();
    (*(v98 + 8))(v55, v60);
    (*(v87 + 8))(v54, v58);
    v104 = v58;
    v105 = v60;
    v106 = v56;
    v107 = v57;
    swift_getOpaqueTypeConformance2();
    v61 = v93;
    v62 = v91;
    View.accessibilityIdentifier(_:)();
    (*(v90 + 8))(v59, v62);
    v63 = v95;
    sub_1000D2DFC(v61, v95, &qword_10191B9E0);
    v64 = v100;
    v65 = v92;
    *v100 = v81;
    v64[1] = v65;
    *(v64 + 16) = v74;
    v66 = v86;
    v64[3] = sub_100374EE4;
    v64[4] = v66;
    v67 = v82;
    v64[5] = sub_100374F28;
    v64[6] = v67;
    v68 = v75;
    v64[7] = sub_100374FF0;
    v64[8] = v68;
    v69 = sub_1000CE6B8(&qword_10191BA18);
    sub_1000D2DFC(v63, v64 + *(v69 + 48), &qword_10191B9E0);
    v70 = v64 + *(v69 + 64);
    *v70 = 0;
    v70[8] = 1;

    sub_100024F64(v61, &qword_10191B9E0);
    sub_100024F64(v63, &qword_10191B9E0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100370C24@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000CE6B8(&qword_10191B9B8);
  sub_10037002C(v1, (a1 + *(v3 + 44)));
  result = sub_1000CE6B8(&qword_10191B9C0);
  v5 = a1 + *(result + 36);
  *v5 = 0xD000000000000010;
  *(v5 + 8) = 0x80000001012313A0;
  *(v5 + 16) = 13;
  return result;
}

BOOL sub_100370CB4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000CE6B8(&qword_10191BA20);
  __chkstk_darwin(v4);
  v73 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v57[-v7];
  v9 = sub_1000CE6B8(&qword_10190EBC8);
  __chkstk_darwin(v9 - 8);
  v68 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v57[-v12];
  v14 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v14 - 8);
  v60 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v70 = &v57[-v17];
  __chkstk_darwin(v18);
  v72 = &v57[-v19];
  __chkstk_darwin(v20);
  v74 = &v57[-v21];
  __chkstk_darwin(v22);
  v24 = &v57[-v23];
  __chkstk_darwin(v25);
  v27 = &v57[-v26];
  v76 = type metadata accessor for VisitHistoryFilterDateRangePicker(0);
  v65 = *(v76 + 20);
  sub_1000D2DFC(v0 + v65, v13, &qword_10190EBC8);
  v28 = sub_1000CE6B8(&unk_10190EB28);
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v63 = v29 + 48;
  v64 = v30;
  v31 = v30(v13, 1, v28);
  v66 = v28;
  if (v31 == 1)
  {
    sub_100024F64(v13, &qword_10190EBC8);
    v32 = 1;
  }

  else
  {
    (*(v2 + 16))(v27, v13, v1);
    sub_100024F64(v13, &unk_10190EB28);
    v32 = 0;
  }

  v33 = *(v2 + 56);
  v33(v27, v32, 1, v1);
  v34 = sub_1000CE6B8(&qword_10191B7B8);
  v71 = v0;
  v62 = v34;
  State.wrappedValue.getter();
  v67 = v33;
  v33(v24, 0, 1, v1);
  v69 = v4;
  v35 = *(v4 + 48);
  sub_1000D2DFC(v27, v8, &qword_10190EBD0);
  sub_1000D2DFC(v24, &v8[v35], &qword_10190EBD0);
  v75 = v2;
  v36 = *(v2 + 48);
  if (v36(v8, 1, v1) == 1)
  {
    sub_100024F64(v24, &qword_10190EBD0);
    sub_100024F64(v27, &qword_10190EBD0);
    if (v36(&v8[v35], 1, v1) != 1)
    {
LABEL_18:
      sub_100024F64(v8, &qword_10191BA20);
      return 1;
    }

    sub_100024F64(v8, &qword_10190EBD0);
LABEL_9:
    v43 = v68;
    sub_1000D2DFC(v71 + v65, v68, &qword_10190EBC8);
    v44 = v66;
    if (v64(v43, 1, v66) == 1)
    {
      sub_100024F64(v43, &qword_10190EBC8);
      v45 = 1;
      v27 = v72;
      v8 = v73;
    }

    else
    {
      v27 = v72;
      (*(v75 + 16))(v72, &v43[*(v44 + 36)], v1);
      sub_100024F64(v43, &unk_10190EB28);
      v45 = 0;
      v8 = v73;
    }

    v46 = v69;
    v24 = v70;
    v47 = v67;
    v67(v27, v45, 1, v1);
    State.wrappedValue.getter();
    v47(v24, 0, 1, v1);
    v48 = *(v46 + 48);
    sub_1000D2DFC(v27, v8, &qword_10190EBD0);
    sub_1000D2DFC(v24, &v8[v48], &qword_10190EBD0);
    if (v36(v8, 1, v1) == 1)
    {
      sub_100024F64(v24, &qword_10190EBD0);
      sub_100024F64(v27, &qword_10190EBD0);
      if (v36(&v8[v48], 1, v1) == 1)
      {
        sub_100024F64(v8, &qword_10190EBD0);
        return 0;
      }

      goto LABEL_18;
    }

    v50 = v60;
    sub_1000D2DFC(v8, v60, &qword_10190EBD0);
    if (v36(&v8[v48], 1, v1) == 1)
    {
      v37 = v50;
      goto LABEL_17;
    }

    v51 = v75;
    v52 = v61;
    (*(v75 + 32))(v61, &v8[v48], v1);
    sub_1003746E8(&qword_101917318, &type metadata accessor for Date);
    v53 = v24;
    v54 = v50;
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v56 = *(v51 + 8);
    v56(v52, v1);
    sub_100024F64(v53, &qword_10190EBD0);
    sub_100024F64(v27, &qword_10190EBD0);
    v56(v54, v1);
    sub_100024F64(v8, &qword_10190EBD0);
    return (v55 & 1) == 0;
  }

  v37 = v74;
  sub_1000D2DFC(v8, v74, &qword_10190EBD0);
  if (v36(&v8[v35], 1, v1) == 1)
  {
LABEL_17:
    sub_100024F64(v24, &qword_10190EBD0);
    sub_100024F64(v27, &qword_10190EBD0);
    (*(v75 + 8))(v37, v1);
    goto LABEL_18;
  }

  v38 = v75;
  v39 = *(v75 + 32);
  v59 = v36;
  v40 = v61;
  v39(v61, &v8[v35], v1);
  sub_1003746E8(&qword_101917318, &type metadata accessor for Date);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v38 + 8);
  v42 = v40;
  v36 = v59;
  v41(v42, v1);
  sub_100024F64(v24, &qword_10190EBD0);
  sub_100024F64(v27, &qword_10190EBD0);
  v41(v74, v1);
  sub_100024F64(v8, &qword_10190EBD0);
  if (v58)
  {
    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_100371638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v4 = sub_1000CE6B8(&qword_10190EBC0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v29 - v8;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 32);
  v20(v17, v32, v18);
  v20(&v17[*(v5 + 56)], a2, v18);
  v30 = v14;
  sub_1000D2DFC(v17, v14, &qword_10190EBC0);
  v32 = *(v5 + 56);
  v29 = v11;
  sub_1000F11C4(v17, v11, &qword_10190EBC0);
  v21 = *(v5 + 56);
  v22 = v31;
  v20(v31, v14, v18);
  v20((v22 + *(v5 + 56)), &v11[v21], v18);
  v23 = v33;
  sub_1000D2DFC(v22, v33, &qword_10190EBC0);
  v24 = *(v5 + 56);
  v20(v34, v23, v18);
  v25 = *(v19 + 8);
  v25(v23 + v24, v18);
  sub_1000F11C4(v22, v23, &qword_10190EBC0);
  v26 = *(v5 + 56);
  v27 = sub_1000CE6B8(&unk_10190EB28);
  v20(&v34[*(v27 + 36)], v23 + v26, v18);
  v25(v23, v18);
  v25(v29, v18);
  return (v25)(&v30[v32], v18);
}

uint64_t sub_100371944@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  Date.init(timeIntervalSinceReferenceDate:)();
  v17 = type metadata accessor for VisitHistoryFilterDateRangePicker(0);
  sub_1000CE6B8(&qword_10191B7B8);
  State.wrappedValue.getter();
  sub_1003746E8(&qword_10190EBD8, &type metadata accessor for Date);
  v18 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v19 = (v18 & 1) == 0;
  if (v18)
  {
    v20 = v13;
  }

  else
  {
    v20 = v10;
  }

  if (v19)
  {
    v21 = v13;
  }

  else
  {
    v21 = v10;
  }

  (*(v5 + 8))(v20, v4);
  (*(v5 + 32))(v16, v21, v4);
  (*(v5 + 16))(v7, v2 + *(v17 + 36), v4);
  return sub_100371638(v16, v7, a1);
}

uint64_t sub_100371B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sub_1000CE6B8(&qword_10191BA58);
  __chkstk_darwin(v40);
  v37 = &v31[-v4];
  v38 = sub_1000CE6B8(&qword_10191BA60) - 8;
  __chkstk_darwin(v38);
  v39 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v36 = &v31[-v7];
  v8 = type metadata accessor for VisitHistoryFilterDateRangePicker(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v31[-v13];
  __chkstk_darwin(v15);
  v17 = &v31[-v16];
  v18 = *a1;
  v34 = a1[1];
  v35 = v18;

  v32 = sub_100370CB4();
  sub_100374594(a1, v17, type metadata accessor for VisitHistoryFilterDateRangePicker);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v33 = swift_allocObject();
  sub_10037474C(v17, v33 + v19, type metadata accessor for VisitHistoryFilterDateRangePicker);
  sub_100374594(a1, v14, type metadata accessor for VisitHistoryFilterDateRangePicker);
  v20 = swift_allocObject();
  sub_10037474C(v14, v20 + v19, type metadata accessor for VisitHistoryFilterDateRangePicker);
  sub_100374594(a1, v11, type metadata accessor for VisitHistoryFilterDateRangePicker);
  v21 = swift_allocObject();
  sub_10037474C(v11, v21 + v19, type metadata accessor for VisitHistoryFilterDateRangePicker);
  LOBYTE(v11) = v32;
  v41 = a1;
  sub_1000CE6B8(&qword_10191BA68);
  sub_100375444();
  v22 = v37;
  List<>.init(content:)();
  sub_100375500();
  v23 = v36;
  View.listHasStackBehavior()();
  sub_100024F64(v22, &qword_10191BA58);
  v24 = v39;
  v25 = v23 + *(v38 + 44);
  *v25 = 0xD000000000000010;
  *(v25 + 8) = 0x80000001012313A0;
  *(v25 + 16) = 13;
  sub_1000D2DFC(v23, v24, &qword_10191BA60);
  v26 = v34;
  *a2 = v35;
  *(a2 + 8) = v26;
  *(a2 + 16) = v11;
  v27 = v33;
  *(a2 + 24) = sub_100375120;
  *(a2 + 32) = v27;
  *(a2 + 40) = sub_100375398;
  *(a2 + 48) = v20;
  *(a2 + 56) = sub_1003753DC;
  *(a2 + 64) = v21;
  v28 = sub_1000CE6B8(&qword_10191BAA0);
  sub_1000D2DFC(v24, a2 + *(v28 + 48), &qword_10191BA60);
  v29 = a2 + *(v28 + 64);
  *v29 = 0;
  *(v29 + 8) = 1;

  sub_100024F64(v23, &qword_10191BA60);
  sub_100024F64(v24, &qword_10191BA60);
}

uint64_t sub_100371FEC(uint64_t a1)
{
  v27 = sub_1000CE6B8(&qword_10190EBC0);
  __chkstk_darwin(v27);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for VisitHistoryDateFilterPickerSelectionResult(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (a1 + *(type metadata accessor for VisitHistoryFilterDateRangePicker(0) + 24));
  v17 = *v16;
  v29 = v16[1];
  v30 = v17;
  sub_1000CE6B8(&qword_10191B7B8);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  sub_1003746E8(&qword_10190EBD8, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v19 = v27;
    v20 = v28;
    v21 = *(v7 + 32);
    v21(v28, v12, v6);
    v21((v20 + *(v19 + 48)), v9, v6);
    sub_1000D2DFC(v20, v3, &qword_10190EBC0);
    v22 = *(v19 + 48);
    v21(v15, v3, v6);
    v23 = *(v7 + 8);
    v23(&v3[v22], v6);
    sub_1000F11C4(v20, v3, &qword_10190EBC0);
    v24 = *(v19 + 48);
    v25 = sub_1000CE6B8(&unk_10190EB28);
    v21(&v15[*(v25 + 36)], &v3[v24], v6);
    v23(v3, v6);
    (*(*(v25 - 8) + 56))(v15, 0, 1, v25);
    v26 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(v15, 0, 2, v26);
    v30(v15);
    return sub_1003747B4(v15, type metadata accessor for VisitHistoryDateFilterPickerSelectionResult);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003723E4()
{
  sub_1000CE6B8(&qword_10191BA80);
  sub_1000414C8(&qword_10191BA78, &qword_10191BA80);
  return Section<>.init(content:)();
}

uint64_t sub_100372488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v59 = type metadata accessor for DatePickerComponents();
  *&v63 = *(v59 - 8);
  __chkstk_darwin(v59);
  v72 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = v55 - v9;
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v13 = sub_1000CE6B8(&unk_10190EB28);
  __chkstk_darwin(v13 - 8);
  v71 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v62 = v55 - v16;
  v17 = sub_1000CE6B8(&qword_10191B9C8);
  __chkstk_darwin(v17 - 8);
  v67 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v55 - v20;
  v68 = sub_1000CE6B8(&qword_10191B9D0);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v61 = v55 - v24;
  v25 = sub_1000CE6B8(&qword_10191BAA8);
  __chkstk_darwin(v25 - 8);
  v70 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v69 = v55 - v28;
  __chkstk_darwin(v29);
  v65 = v55 - v30;
  __chkstk_darwin(v31);
  v74 = v55 - v32;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v77._object = 0x8000000101231430;
  v33._countAndFlagsBits = 0xD000000000000028;
  v33._object = 0x8000000101231400;
  v77._countAndFlagsBits = 0xD000000000000067;
  v58.super.isa = qword_1019600D8;
  v34._countAndFlagsBits = 1836020294;
  v34._object = 0xE400000000000000;
  v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, qword_1019600D8, v34, v77);
  v35 = type metadata accessor for VisitHistoryFilterDateRangePicker(0);
  v36 = sub_1000CE6B8(&qword_10191B7B8);
  v60 = v21;
  State.projectedValue.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  v37 = *(v35 + 36);
  v38 = a1 + *(v35 + 32);
  v57 = v36;
  v55[6] = v38;
  State.wrappedValue.getter();
  sub_1003746E8(&qword_10190EBD8, &type metadata accessor for Date);
  v39 = dispatch thunk of static Comparable.< infix(_:_:)();
  v55[5] = a1;
  if (v39)
  {
    v40 = v56;
    (*(v5 + 32))(v56, v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v40 = v56;
    (*(v5 + 16))(v56, a1 + v37, v4);
  }

  sub_100371638(v12, v40, v62);
  v56 = sub_1000CE6B8(&qword_10191B9E8);
  v41 = swift_allocObject();
  v63 = xmmword_1011E1D30;
  *(v41 + 16) = xmmword_1011E1D30;
  static DatePickerComponents.date.getter();
  v75 = v41;
  v55[3] = sub_1003746E8(&qword_10191B9F0, &type metadata accessor for DatePickerComponents);
  v55[2] = sub_1000CE6B8(&qword_10191B9F8);
  v55[4] = sub_1000414C8(&qword_10191BA00, &qword_10191B9F8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55[1] = sub_1000E5580();
  v42 = v61;
  DatePicker<>.init<A>(_:selection:in:displayedComponents:)();
  v62 = sub_1000414C8(&qword_10191BA08, &qword_10191B9D0);
  v43 = v68;
  View.accessibilityIdentifier(_:)();
  v66 = *(v66 + 8);
  (v66)(v42, v43);
  v78._object = 0x80000001012314F0;
  v44._countAndFlagsBits = 0xD000000000000026;
  v44._object = 0x80000001012314C0;
  v78._countAndFlagsBits = 0xD000000000000065;
  v45._countAndFlagsBits = 28500;
  v45._object = 0xE200000000000000;
  v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v58, v45, v78);
  State.projectedValue.getter();
  sub_100371944(v71);
  v46 = swift_allocObject();
  *(v46 + 16) = v63;
  static DatePickerComponents.date.getter();
  v75 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v64;
  DatePicker<>.init<A>(_:selection:in:displayedComponents:)();
  v48 = v65;
  View.accessibilityIdentifier(_:)();
  (v66)(v47, v43);
  v49 = v74;
  v50 = v69;
  sub_1000D2DFC(v74, v69, &qword_10191BAA8);
  v51 = v70;
  sub_1000D2DFC(v48, v70, &qword_10191BAA8);
  v52 = v73;
  sub_1000D2DFC(v50, v73, &qword_10191BAA8);
  v53 = sub_1000CE6B8(&qword_10191BAB0);
  sub_1000D2DFC(v51, v52 + *(v53 + 48), &qword_10191BAA8);
  sub_100024F64(v48, &qword_10191BAA8);
  sub_100024F64(v49, &qword_10191BAA8);
  sub_100024F64(v51, &qword_10191BAA8);
  return sub_100024F64(v50, &qword_10191BAA8);
}

uint64_t sub_100372E1C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000CE6B8(&qword_10191BA50);
  return sub_100371B60(v1, a1 + *(v3 + 44));
}

uint64_t sub_100372E6C()
{
  v1 = type metadata accessor for Calendar.Component();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = type metadata accessor for VisitHistoryFilterMonthYearPicker(0);
  sub_1000D2DFC(v0 + *(v17 + 20), v9, &qword_10190EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100024F64(v9, &qword_10190EBD0);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    static Calendar.current.getter();
    sub_1000CE6B8(&qword_10191B7B8);
    State.wrappedValue.getter();
    v19 = v25;
    v18 = v26;
    (*(v25 + 104))(v3, enum case for Calendar.Component.month(_:), v26);
    v20 = Calendar.compare(_:to:toGranularity:)();
    (*(v19 + 8))(v3, v18);
    v21 = *(v11 + 8);
    v21(v13, v10);
    (*(v23 + 8))(v6, v24);
    v21(v16, v10);
    if (!v20)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003731EC@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v59 = sub_1000CE6B8(&qword_10190EBC0);
  __chkstk_darwin(v59);
  v60 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v56 = &v51[-v5];
  v67 = type metadata accessor for Date();
  v58 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = type metadata accessor for VisitHistoryUIDatePickerWrapper(0);
  __chkstk_darwin(v68);
  v66 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000CE6B8(&qword_10191BA38);
  __chkstk_darwin(v8 - 8);
  v63 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v62 = &v51[-v11];
  v12 = type metadata accessor for VisitHistoryFilterMonthYearPicker(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v51[-v18];
  __chkstk_darwin(v20);
  v22 = &v51[-v21];
  v23 = *(a1 + 1);
  v55 = *a1;
  v61 = v23;

  LODWORD(v54) = sub_100372E6C();
  sub_100374594(a1, v22, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v57 = swift_allocObject();
  sub_10037474C(v22, v57 + v24, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  sub_100374594(a1, v19, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  v25 = swift_allocObject();
  v26 = v19;
  v27 = v65;
  sub_10037474C(v26, v25 + v24, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  sub_100374594(a1, v16, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  v28 = swift_allocObject();
  sub_10037474C(v16, v28 + v24, type metadata accessor for VisitHistoryFilterMonthYearPicker);
  sub_1000CE6B8(&qword_10191B7B8);
  v29 = v66;
  State.projectedValue.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  v30 = *(v13 + 40);
  sub_1003746E8(&qword_10190EBD8, &type metadata accessor for Date);
  v31 = v67;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v52 = v54 & 1;
    v53 = v25;
    v54 = v28;
    v33 = v58;
    v34 = *(v58 + 32);
    v35 = v56;
    v34(v56, v27, v31);
    v36 = v59;
    (*(v33 + 16))(v35 + *(v59 + 48), &a1[v30], v31);
    v37 = v60;
    sub_1000D2DFC(v35, v60, &qword_10190EBC0);
    v38 = *(v36 + 48);
    v34(v29, v37, v31);
    v39 = *(v33 + 8);
    v39(&v37[v38], v31);
    sub_1000F11C4(v35, v37, &qword_10190EBC0);
    v40 = *(v36 + 48);
    v41 = sub_1000CE6B8(&unk_10190EB28);
    v34((v29 + *(v41 + 36)), &v37[v40], v31);
    v39(v37, v31);
    sub_1003746E8(&qword_10191BA40, type metadata accessor for VisitHistoryUIDatePickerWrapper);
    v42 = v62;
    View.accessibilityIdentifier(_:)();
    sub_1003747B4(v29, type metadata accessor for VisitHistoryUIDatePickerWrapper);
    v43 = v63;
    sub_1000D2DFC(v42, v63, &qword_10191BA38);
    v44 = v64;
    v45 = v54;
    v46 = v61;
    *v64 = v55;
    v44[1] = v46;
    *(v44 + 16) = v52;
    v47 = v57;
    v44[3] = sub_100375054;
    v44[4] = v47;
    v48 = v53;
    v44[5] = sub_100375098;
    v44[6] = v48;
    v44[7] = sub_1003750DC;
    v44[8] = v45;
    v49 = sub_1000CE6B8(&qword_10191BA48);
    sub_1000D2DFC(v43, v44 + *(v49 + 48), &qword_10191BA38);
    v50 = v44 + *(v49 + 64);
    *v50 = 0;
    v50[8] = 1;

    sub_100024F64(v42, &qword_10191BA38);
    sub_100024F64(v43, &qword_10191BA38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100373908(uint64_t a1, uint64_t (*a2)(void, double), uint64_t a3)
{
  v6 = type metadata accessor for VisitHistoryDateFilterPickerSelectionResult(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(a2(0, v7) + 24));
  v11 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  (*(*(v11 - 8) + 56))(v9, a3, 2, v11);
  v10(v9);
  return sub_1003747B4(v9, type metadata accessor for VisitHistoryDateFilterPickerSelectionResult);
}

uint64_t sub_100373A00(uint64_t a1, uint64_t (*a2)(void, double))
{
  v4 = type metadata accessor for VisitHistoryDateFilterPickerSelectionResult(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(a2(0, v5) + 24));
  sub_1000CE6B8(&qword_10191B7B8);
  State.wrappedValue.getter();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7, 0, 2, v10);
  v8(v7);
  return sub_1003747B4(v7, type metadata accessor for VisitHistoryDateFilterPickerSelectionResult);
}

uint64_t sub_100373B78@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000CE6B8(&qword_10191BA28);
  sub_1003731EC(v1, (a1 + *(v3 + 44)));
  result = sub_1000CE6B8(&qword_10191BA30);
  v5 = a1 + *(result + 36);
  *v5 = 0xD000000000000010;
  *(v5 + 8) = 0x80000001012313A0;
  *(v5 + 16) = 13;
  return result;
}

id sub_100373C08()
{
  v1 = v0;
  v2 = type metadata accessor for VisitHistoryUIDatePickerWrapper(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = [objc_allocWithZone(UIDatePicker) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setDatePickerMode:4];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v5 setMinimumDate:isa];

  sub_1000CE6B8(&unk_10190EB28);
  v7 = Date._bridgeToObjectiveC()().super.isa;
  [v5 setMaximumDate:v7];

  [v5 setPreferredDatePickerStyle:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000CE6B8(&qword_10191BBA0);
  UIViewRepresentableContext.coordinator.getter();
  [v5 addTarget:v15 action:"handleDatePickerValueChangedWithSender:" forControlEvents:4096];

  UIViewRepresentableContext.coordinator.getter();
  v8 = v15;
  sub_100374594(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryUIDatePickerWrapper);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10037474C(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for VisitHistoryUIDatePickerWrapper);
  v11 = &v8[OBJC_IVAR____TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener_onDateChanged];
  v12 = *&v8[OBJC_IVAR____TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener_onDateChanged];
  *v11 = sub_1003759F8;
  v11[1] = v10;
  sub_1000588AC(v12);

  return v5;
}

uint64_t sub_100373E70(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  type metadata accessor for VisitHistoryUIDatePickerWrapper(0);
  (v10)(v5, v9, v2);
  sub_1000CE6B8(&qword_10191B9C8);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

void sub_100373FCC(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&qword_10191B9C8);
  Binding.wrappedValue.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [a1 setDate:isa];
}

uint64_t sub_1003740DC(void *a1, void *a2)
{
  v2 = *a2;
  [a1 removeTarget:*a2 action:"handleDatePickerValueChangedWithSender:" forControlEvents:4096];
  v3 = (v2 + OBJC_IVAR____TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener_onDateChanged);
  v4 = *(v2 + OBJC_IVAR____TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener_onDateChanged);
  *v3 = 0;
  v3[1] = 0;

  return sub_1000588AC(v4);
}

id sub_10037413C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for VisitHistoryUIDatePickerWrapper.DatePickerChangeListener()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100374174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003746E8(&qword_10191BB98, type metadata accessor for VisitHistoryUIDatePickerWrapper);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100374208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003746E8(&qword_10191BB98, type metadata accessor for VisitHistoryUIDatePickerWrapper);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10037429C()
{
  sub_1003746E8(&qword_10191BB98, type metadata accessor for VisitHistoryUIDatePickerWrapper);
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_1003742F4(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtCV4Maps31VisitHistoryUIDatePickerWrapper24DatePickerChangeListener_onDateChanged);
  if (v7)
  {

    v8 = [a1 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v7(v6);
    sub_1000588AC(v7);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100374594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003745FC()
{
  result = qword_10191B790;
  if (!qword_10191B790)
  {
    sub_1000D6664(&qword_10191B788);
    sub_1003746E8(&qword_10191B798, type metadata accessor for VisitHistoryFilterSpecificDatePicker);
    sub_1003746E8(&qword_10191B7A0, type metadata accessor for VisitHistoryFilterMonthYearPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B790);
  }

  return result;
}

uint64_t sub_1003746E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037474C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003747B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10037483C()
{
  sub_10037491C();
  if (v0 <= 0x3F)
  {
    sub_10005B95C();
    if (v1 <= 0x3F)
    {
      sub_10037571C(319, &unk_10191B828, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10037491C()
{
  if (!qword_10190EB20)
  {
    sub_1000D6664(&unk_10190EB28);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10190EB20);
    }
  }
}

uint64_t sub_1003749BC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1000CE6B8(&qword_10190EBD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000CE6B8(&qword_10191B7B8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_100374B54(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000CE6B8(&qword_10190EBD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000CE6B8(&qword_10191B7B8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_100374CD8()
{
  sub_10037571C(319, &qword_10190EB18, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10005B95C();
    if (v1 <= 0x3F)
    {
      sub_10037571C(319, &unk_10191B828, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100374DD4()
{
  result = qword_10191B9A8;
  if (!qword_10191B9A8)
  {
    sub_1000D6664(&qword_10191B9B0);
    sub_1003745FC();
    sub_1003746E8(&qword_10191B7A8, type metadata accessor for VisitHistoryFilterDateRangePicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B9A8);
  }

  return result;
}

uint64_t sub_100375164()
{
  v1 = type metadata accessor for VisitHistoryFilterDateRangePicker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];
  v6 = sub_1000CE6B8(&unk_10190EB28);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v8(v5 + *(v6 + 36), v7);
  }

  v9 = v4 + v1[7];
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  sub_1000CE6B8(&qword_10191B7B8);

  v11(v4 + v1[8], v10);

  v11(v4 + v1[9], v10);

  return _swift_deallocObject(v0, v3 + v13, v2 | 7);
}

uint64_t sub_1003753DC()
{
  v1 = *(type metadata accessor for VisitHistoryFilterDateRangePicker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100371FEC(v2);
}

unint64_t sub_100375444()
{
  result = qword_10191BA70;
  if (!qword_10191BA70)
  {
    sub_1000D6664(&qword_10191BA68);
    sub_1000414C8(&qword_10191BA78, &qword_10191BA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BA70);
  }

  return result;
}

unint64_t sub_100375500()
{
  result = qword_10191BA88;
  if (!qword_10191BA88)
  {
    sub_1000D6664(&qword_10191BA58);
    sub_1000414C8(&qword_10191BA90, &qword_10191BA98);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BA88);
  }

  return result;
}

void sub_1003755E8()
{
  sub_100375688();
  if (v0 <= 0x3F)
  {
    sub_10037571C(319, &unk_10191BB28, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100375688()
{
  if (!qword_10191BB20)
  {
    type metadata accessor for Date();
    sub_1003746E8(&qword_10190EBD8, &type metadata accessor for Date);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_10191BB20);
    }
  }
}

void sub_10037571C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10037577C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1003757C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100375824()
{
  result = qword_10191BB58;
  if (!qword_10191BB58)
  {
    sub_1000D6664(&qword_10191B9C0);
    sub_1000414C8(&qword_10191BB60, &qword_10191BB68);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BB58);
  }

  return result;
}

unint64_t sub_1003758DC()
{
  result = qword_10191BB70;
  if (!qword_10191BB70)
  {
    sub_1000D6664(&qword_10191BA30);
    sub_1000414C8(&qword_10191BB78, &qword_10191BB80);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BB70);
  }

  return result;
}

uint64_t sub_1003759F8(uint64_t a1)
{
  type metadata accessor for VisitHistoryUIDatePickerWrapper(0);

  return sub_100373E70(a1);
}

uint64_t sub_100375A90()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100375B18()
{
  result = qword_10191BBB0;
  if (!qword_10191BBB0)
  {
    sub_1000D6664(&qword_10191BBA8);
    sub_100375BA4();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BBB0);
  }

  return result;
}

unint64_t sub_100375BA4()
{
  result = qword_10191BBB8;
  if (!qword_10191BBB8)
  {
    sub_1000D6664(&qword_1019174C8);
    sub_1003746E8(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation);
    sub_10010AD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BBB8);
  }

  return result;
}

unint64_t sub_100375C64()
{
  result = qword_10191BBC0;
  if (!qword_10191BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BBC0);
  }

  return result;
}

id sub_100375CC0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_100376528(a1, v7);
  type metadata accessor for VisitHistoryFilterDatePickerViewModel(0);
  v9 = swift_allocObject();
  v10 = (v9 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone);
  *v10 = 0;
  v10[1] = 0;
  ObservationRegistrar.init()();
  sub_100376528(v7, v9 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_datePickerMode);
  v11 = sub_1003769A4();
  v13 = v12;
  sub_10019CA4C(v7);
  v14 = (v9 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_viewTitle);
  *v14 = v11;
  v14[1] = v13;
  *&v2[OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_viewModel] = v9;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  sub_10019CA4C(a1);
  return v15;
}

uint64_t sub_100375E8C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_viewModel);
  a1[3] = &type metadata for VisitHistoryFilterDatePickerView;
  a1[4] = sub_1003767E0();
  *a1 = v3;
}

int *sub_100375EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    sub_10037685C(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
    sub_1000CE6B8(&unk_10190B9B0);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 0;
  }

  else
  {
    sub_1000CE6B8(&unk_10190B9A0);
    type metadata accessor for UIHostingControllerSizingOptions();
    *(swift_allocObject() + 16) = xmmword_1011E1D60;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    sub_10037685C(&qword_10190DE70, &type metadata accessor for UIHostingControllerSizingOptions);
    sub_1000CE6B8(&unk_10190B9B0);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 1;
  }

  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = v5;
  v7 = a1 + result[6];
  *v7 = 0;
  *(v7 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

id sub_10037612C()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  result = [v0 cardPresentationController];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result setPresentedModally:1];

  result = [v0 cardPresentationController];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  [result setDefaultContaineeLayout:5];

  result = [v0 cardPresentationController];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  [result setTakesAvailableHeight:1];

  result = [v0 cardPresentationController];
  if (result)
  {
    v5 = result;
    [result setHideGrabber:1];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10037685C(&qword_10191B7B0, type metadata accessor for VisitHistoryFilterDatePickerViewModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100376364(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion + 8);

      v4(a1);
      sub_1000D3B90(v4, v5);
    }
  }
}

uint64_t sub_100376470()
{
  sub_1000D3B90(*(v0 + OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion), *(v0 + OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion + 8));
}

uint64_t sub_100376528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037658C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10037685C(&qword_10191B7B0, type metadata accessor for VisitHistoryFilterDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100186B18;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100376684(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100186AF0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10037685C(&qword_10191B7B0, type metadata accessor for VisitHistoryFilterDatePickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000D3B90(v4, v3);
}

unint64_t sub_1003767E0()
{
  result = qword_10191BC00;
  if (!qword_10191BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191BC00);
  }

  return result;
}

uint64_t sub_10037685C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003768BC()
{
  swift_getKeyPath();
  sub_100376E7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone);
  sub_1000D88A8(v1, *(v0 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone + 8));
  return v1;
}

uint64_t sub_10037694C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone);
  v5 = *(a1 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1000D88A8(a2, a3);
  return sub_1000D3B90(v4, v5);
}

uint64_t sub_1003769A4()
{
  v1 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100376528(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1019600D8;
      v13 = 0x8000000101231750;
      v6 = 0x20262068746E6F4DLL;
      v7 = 0xEC00000072616559;
      v8 = 0xD000000000000030;
      v9 = 0x8000000101231710;
      v10 = 0xD000000000000049;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1019600D8;
      v13 = 0x80000001012316C0;
      v6 = 0x6E61522065746144;
      v9 = 0x8000000101231690;
      v10 = 0xD000000000000047;
      v8 = 0xD00000000000002ELL;
      v7 = 0xEA00000000006567;
    }
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v13 = 0x80000001012317E0;
    v6 = 0x6369666963657053;
    v7 = 0xED00006574614420;
    v8 = 0xD000000000000031;
    v9 = 0x80000001012317A0;
    v10 = 0xD000000000000041;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v5, *&v6, *&v10)._countAndFlagsBits;
  sub_10019CA4C(v3);
  return countAndFlagsBits;
}

uint64_t sub_100376C00()
{
  sub_10019CA4C(v0 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel_datePickerMode);
  sub_1000D3B90(*(v0 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone), *(v0 + OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel__onCancelOrDone + 8));

  v1 = OBJC_IVAR____TtC4Maps37VisitHistoryFilterDatePickerViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100376CFC()
{
  result = type metadata accessor for VisitHistoryFilterDatePickerMode(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100376E24()
{
  v0 = type metadata accessor for VisitHistoryFilterDatePickerMode(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_100376E7C()
{
  result = qword_10191B7B0;
  if (!qword_10191B7B0)
  {
    type metadata accessor for VisitHistoryFilterDatePickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B7B0);
  }

  return result;
}

void sub_100376F5C()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong browseVenueChromeOverlayDidSelectFocusedVenueWithOverlay:v0];
      swift_unknownObjectRelease();
    }

    sub_100377854(1055);
  }
}

void sub_1003770C4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden);
  if (v2 != (a1 & 1))
  {
    if (qword_1019066F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100021540(v3, qword_10195FF70);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      if (v2)
      {
        v7 = 0x6E6564646968;
      }

      else
      {
        v7 = 0x656C6269736976;
      }

      if (v2)
      {
        v8 = 0xE600000000000000;
      }

      else
      {
        v8 = 0xE700000000000000;
      }

      v9 = sub_10004DEB8(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Browse Venue button visibility did change to %s", v5, 0xCu);
      sub_10004E3D0(v6);
    }

    else
    {
    }
  }
}

void sub_1003772C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_view);
  if (!v1)
  {
    return;
  }

  v24 = v1;
  if (([v24 isHidden] & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_button);
      if (v3)
      {
        v4 = v3;
        v5 = v2;
        v6 = [v5 shortName];
        if (v6)
        {
          v7 = v6;
          v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v9;

          if (String.count.getter() >= 1)
          {
            if (qword_101906768 != -1)
            {
              swift_once();
            }

            v26._object = 0x80000001012319F0;
            v11._countAndFlagsBits = 0x25206573776F7242;
            v12._countAndFlagsBits = 0xD000000000000018;
            v12._object = 0x80000001012319D0;
            v26._countAndFlagsBits = 0xD00000000000002BLL;
            v11._object = 0xE900000000000040;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, qword_1019600D8, v11, v26);
            sub_1000CE6B8(&unk_10190D5C0);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_1011E1D30;
            *(v13 + 56) = &type metadata for String;
            *(v13 + 64) = sub_1000DA61C();
            *(v13 + 32) = v8;
            *(v13 + 40) = v10;
            String.init(format:_:)();

            sub_100377980();
            v14 = objc_allocWithZone(NSAttributedString);
            v15 = String._bridgeToObjectiveC()();

            type metadata accessor for Key(0);
            sub_100377E48(&qword_10190EEE0, type metadata accessor for Key);
            v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v17 = [v14 initWithString:v15 attributes:v16.super.isa];
            v18 = v17;
            v19 = v4;
LABEL_19:

            [v4 setAttributedTitle:v17 forState:0];
            v20 = v5;
            goto LABEL_11;
          }
        }

        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v27._object = 0x8000000101231990;
        v21._countAndFlagsBits = 0xD00000000000001BLL;
        v21._object = 0x8000000101231950;
        v22._object = 0x8000000101231970;
        v27._countAndFlagsBits = 0xD00000000000003ELL;
        v22._countAndFlagsBits = 0xD000000000000010;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, qword_1019600D8, v22, v27);
        sub_100377980();
        v23 = objc_allocWithZone(NSAttributedString);
        v15 = String._bridgeToObjectiveC()();

        type metadata accessor for Key(0);
        sub_100377E48(&qword_10190EEE0, type metadata accessor for Key);
        v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v17 = [v23 initWithString:v15 attributes:v16.super.isa];
        v18 = v4;
        v19 = v17;
        goto LABEL_19;
      }
    }
  }

  v20 = v24;
LABEL_11:
}

id sub_100377718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrowseVenueChromeOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100377854(uint64_t a1)
{
  v3 = [objc_allocWithZone(GEOPlaceActionDetails) init];
  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue);
  if (v5)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    [v4 setBusinessID:{objc_msgSend(v7, "businessID")}];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = [Strong currentUITargetForAnalyticsInBrowseVenueOverlayWithOverlay:v1];
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() sharedService];
  if (v10)
  {
    v11 = v10;
    [v10 captureUserAction:a1 onTarget:v9 eventValue:0 placeActionDetails:v4];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100377980()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  sub_1000CE6B8(&qword_10191BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_1000CE6B8(&qword_10191BE58);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1011E1D30;
  *(v2 + 32) = UIFontWeightTrait;
  *(v2 + 40) = UIFontWeightMedium;
  v3 = v0;
  v4 = UIFontDescriptorTraitsAttribute;
  v5 = UIFontWeightTrait;
  v6 = sub_1000D1104(v2);
  swift_setDeallocating();
  sub_100024F64(v2 + 32, &qword_10191BE60);
  *(inited + 64) = sub_1000CE6B8(&qword_10191BE68);
  *(inited + 40) = v6;
  sub_1000D11F4(inited);
  swift_setDeallocating();
  sub_100024F64(inited + 32, &qword_101908030);
  type metadata accessor for AttributeName(0);
  sub_100377E48(&qword_101908758, type metadata accessor for AttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v3 fontDescriptorByAddingAttributes:isa];

  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  sub_1000CE6B8(&qword_10191BE70);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1011E1D30;
  *(v10 + 32) = NSFontAttributeName;
  *(v10 + 64) = sub_100014C84(0, &qword_10191A720);
  *(v10 + 40) = v9;
  v11 = NSFontAttributeName;
  v12 = sub_1000D131C(v10);
  swift_setDeallocating();
  sub_100024F64(v10 + 32, &qword_101908020);

  return v12;
}

void sub_100377C54(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden);
  *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden) = a1;
  sub_1003770C4(v3);
  v4 = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_view);
  if (v4)
  {
    v5 = v4;
    if ([v5 isHidden] != (a1 & 1))
    {
      [v5 setHidden:?];
      if ((a1 & 1) == 0)
      {
        sub_1003772C8();
        sub_100377854(1054);
      }
    }
  }
}

id sub_100377D04(id a1)
{
  if (a1)
  {
    v3 = [a1 venueID];
    v4 = (v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue);
    result = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue);
    if (!result)
    {
      if (!v3)
      {
        return result;
      }

      v6 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue);
    result = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_currentVenue);
    if (!result)
    {
      return result;
    }

    v3 = 0;
  }

  result = [result venueID];
  if (v3 == result)
  {
    return result;
  }

  v6 = *v4;
LABEL_9:
  *v4 = a1;
  v7 = a1;

  sub_1003772C8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*v4)
    {
      v8 = *(v1 + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType);
      v9 = v8 - 1;
      v10 = v8 != 107;
      v11 = v9 >= 4 && v10;
    }

    else
    {
      v11 = 0;
    }

    [result browseVenueChromeOverlay:v1 didUpdateVisibility:v11];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100377E48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10037808C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003788F0();
  }
}

uint64_t sub_100378158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    if (v11)
    {
      v6 = sub_10037865C(v11);
      v8 = v7;

      if (v6)
      {
        ObjectType = swift_getObjectType();
        v10 = (*(v8 + 32))(a2, ObjectType, v8);

        return v10;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_100378240(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v6 collectionView:a1 cellForItemAtIndexPath:isa itemIdentifier:v4];

  return v8;
}

id sub_1003782E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [v3 collectionView:a1 viewForSupplementaryElementOfKind:v4 atIndexPath:isa];

  return v6;
}

void *sub_1003783A8()
{
  v1 = OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___sectionControllersByIdentifier;
  if (*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___sectionControllersByIdentifier))
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController____lazy_storage___sectionControllersByIdentifier);
  }

  else
  {
    v2 = sub_100378410(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_100378410(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
  v2 = *(a1 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
  if (!v2)
  {
    v3 = sub_10005C3A8();
    *(a1 + v1) = v3;
    swift_bridgeObjectRetain_n();

    sub_10005E3A4(v3);

    v4 = v3[2];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:

LABEL_19:

    return _swiftEmptyDictionarySingleton;
  }

  v3 = *(a1 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:

  v5 = 0;
  while (v5 < v3[2])
  {
    v27 = *&v3[2 * v5 + 4];
    v9 = *(v27 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 8);
    v8 = *(v27 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 16);
    v10 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_100297040(v9, v8);
    v14 = _swiftEmptyDictionarySingleton[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_21;
    }

    v18 = v13;
    if (_swiftEmptyDictionarySingleton[3] < v17)
    {
      sub_100127AF0(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_100297040(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      v20 = 16 * v12;
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v24 = v12;
    sub_10012CF50();
    v12 = v24;
    v20 = 16 * v24;
    if (v18)
    {
LABEL_4:

      v6 = _swiftEmptyDictionarySingleton[7];
      v7 = *(v6 + v20);
      *(v6 + v20) = v27;

      goto LABEL_5;
    }

LABEL_13:
    _swiftEmptyDictionarySingleton[(v12 >> 6) + 8] |= 1 << v12;
    v21 = (_swiftEmptyDictionarySingleton[6] + v20);
    *v21 = v9;
    v21[1] = v8;
    *(_swiftEmptyDictionarySingleton[7] + v20) = v27;

    v22 = _swiftEmptyDictionarySingleton[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_22;
    }

    _swiftEmptyDictionarySingleton[2] = v23;
LABEL_5:
    if (v4 == ++v5)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10037865C(void *a1)
{
  result = [a1 firstIdentifier];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = sub_1003783A8();
    if (v6[2])
    {
      v7 = sub_100297040(v3, v5);
      v9 = v8;

      if (v9)
      {
        v10 = *(v6[7] + 16 * v7);

        return v10;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_100378724()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100378778();
  }
}

id sub_100378778()
{
  result = [*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_loadingTimer) invalidate];
  if (*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_isActive) == 1)
  {
    v2 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
    if (*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers))
    {
      v3 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
    }

    else
    {
      v3 = sub_10005C3A8(0);
      *(v0 + v2) = v3;
      swift_bridgeObjectRetain_n();

      sub_10005E3A4(v3);
    }

    sub_10005B5D4(v3, 1);
  }

  return result;
}

void sub_1003788F0()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_isActive) == 1)
  {
    v1 = v0;
    if ((sub_10005B864() & 1) == 0)
    {
      v2 = OBJC_IVAR____TtC4Maps22HomeListRootController_sectionControllersToUpdate;
      swift_beginAccess();
      v3 = *(v0 + v2);
      if (*(v3 + 16))
      {
        if (*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_appliedInitialUpdate))
        {
          v4 = OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate;
          v5 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate);

          v6 = 0;
LABEL_17:
          *(v1 + v4) = 0;
          *(v1 + v2) = &_swiftEmptySetSingleton;

          sub_100378B20(v3, v5, v6);

          return;
        }
      }

      else if (*(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_appliedInitialUpdate))
      {
        return;
      }

      *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_appliedInitialUpdate) = 1;
      v7 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
      v8 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
      if (v8)
      {
        v9 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
        v10 = *(v8 + 16);
        if (v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = sub_10005C3A8();
        *(v0 + v7) = v9;
        swift_bridgeObjectRetain_n();

        sub_10005E3A4(v9);

        v10 = v9[2];
        if (v10)
        {
LABEL_9:

          sub_10005BC14(0, v10, 0);
          v11 = 4;
          do
          {
            v12 = *(&_swiftEmptyArrayStorage + 2);
            v13 = *(&_swiftEmptyArrayStorage + 3);
            v15 = *&v9[v11];
            v14 = v15;
            if (v12 >= v13 >> 1)
            {
              sub_10005BC14((v13 > 1), v12 + 1, 1);
            }

            *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
            *(&_swiftEmptyArrayStorage + v12 + 2) = v15;
            v11 += 2;
            --v10;
          }

          while (v10);

          goto LABEL_16;
        }
      }

LABEL_16:
      v3 = sub_100455350(&_swiftEmptyArrayStorage);

      v5 = 0;
      v4 = OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate;
      v6 = *(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController_animateNextUpdate);
      goto LABEL_17;
    }
  }
}

void *sub_100378B20(uint64_t a1, int a2, int a3)
{
  v202 = a2;
  v6 = sub_1000CE6B8(&qword_10191B6E0);
  v204 = *(v6 - 8);
  __chkstk_darwin(v6);
  v203 = &v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v196 - v10;
  v199 = a3;
  if (a3)
  {
    v12 = *&v3[OBJC_IVAR____TtC4Maps22HomeListRootController_configuration];
    v13 = OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView;
    [*(v12 + OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView) alpha];
    v15 = v14;
    [*(v12 + v13) setAlpha:0.0];
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    *(v17 + 24) = v15;
    v219 = sub_10037E804;
    v220 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    v218 = &unk_1016144A8;
    v18 = _Block_copy(aBlock);
    v19 = v3;

    [v16 animateWithDuration:2 delay:v18 options:0 animations:0.25 completion:0.0];
    _Block_release(v18);
  }

  v20 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
  v21 = *&v3[OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers];
  v205 = v11;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = sub_10005C3A8();
    *&v3[v20] = v22;
    swift_bridgeObjectRetain_n();

    sub_10005E3A4(v22);
  }

  v206 = v6;
  v23 = v22[2];
  v208 = a1;
  v201 = v3;
  v200 = v22;
  if (v23)
  {
    v24 = &v3[OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot];

    v215 = 0;
    v210 = 0;
    v211 = 0;
    v209 = 0;
    v25 = v22 + 5;
    v216 = &_swiftEmptyArrayStorage;
    v207 = v24;
    while (1)
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v28 = *v24;
      if (*v24)
      {
        v29 = *((swift_isaMask & *v27) + 0xD8);
        v30 = v27;
        v31 = sub_1000F0120(v28);
        v32 = v29(v31);
        v33 = sub_10036CD98(v32, v28);
        v35 = v34;
        v212 = v37;
        v213 = v36;
      }

      else
      {
        v38 = v27;
        v33 = 0;
        v35 = 0;
        v212 = 0;
        v213 = 0;
      }

      v39 = v27;
      v40 = sub_100360D50(v39, v26, v208);

      v41 = v215;
      if ((v40 & 1) == 0)
      {
        if (v215)
        {
          v60 = v215;
          v61 = v60;
          if (v33)
          {
            sub_100014C84(0, &qword_10190D2F0);
            v62 = v33;
            v63 = static NSObject.== infix(_:_:)();

            if (v63)
            {
              goto LABEL_13;
            }
          }

          else
          {
          }
        }

        else if (!v33)
        {
          goto LABEL_13;
        }
      }

      v42 = *((swift_isaMask & *v39) + 0xF8);
      v43 = v39;
      v42();

LABEL_13:
      v214 = v35;
      v44 = v33;
      v45 = *((swift_isaMask & *v39) + 0xF0);
      v46 = v39;
      v47 = v45();
      v49 = v48;
      v51 = v50;
      v53 = v52;

      if (*(v49 + 16))
      {
        v54 = v47;

        sub_10037E7A4(v41);
        v41 = v47;
        v210 = v51;
        v211 = v49;
        v209 = v53;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v216 = sub_100357AC4(0, *(v216 + 2) + 1, 1, v216);
      }

      v57 = *(v216 + 2);
      v56 = *(v216 + 3);
      if (v57 >= v56 >> 1)
      {
        v216 = sub_100357AC4((v56 > 1), v57 + 1, 1, v216);
      }

      sub_10037E7A4(v44);

      v58 = v216;
      *(v216 + 2) = v57 + 1;
      v59 = &v58[32 * v57];
      *(v59 + 4) = v47;
      *(v59 + 5) = v49;
      *(v59 + 6) = v51;
      *(v59 + 7) = v53;
      v25 += 2;
      --v23;
      v24 = v207;
      if (!v23)
      {
        goto LABEL_29;
      }
    }
  }

  v215 = 0;
  v210 = 0;
  v211 = 0;
  v209 = 0;
  v216 = &_swiftEmptyArrayStorage;
LABEL_29:

  v64 = v201;
  v65 = (v201 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
  v66 = *(v201 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
  v67 = *(v201 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);
  sub_1000F0120(v66);
  v68 = sub_10036CF20(v216);
  v70 = v69;

  v71 = *v65;
  *v65 = v68;
  v65[1] = v70;

  sub_1001187B0(v71);
  v72 = v205;
  v73 = sub_100368C10(v205, v66, v67, v68, v70);
  v75 = v74;
  v77 = v76;
  v216 = v78;
  sub_1001187B0(v66);

  if (*(v73 + 16) || *(v75 + 16) || *(v77 + 16) || *(v216 + 2))
  {
    v79 = v206;
    v80 = v208;
    if (qword_101906710 != -1)
    {
LABEL_93:
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_100021540(v81, qword_10195FFD0);
    v82 = v204;
    v83 = v203;
    (*(v204 + 16))(v203, v72, v79);
    v84 = v64;

    v85 = v84;
    v86 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    v214 = v77;

    LODWORD(v212) = v72;
    v87 = os_log_type_enabled(v86, v72);
    v213 = v85;
    if (v87)
    {
      v200 = v86;
      v201 = v75;
      v207 = v73;
      v79 = -1;
      v73 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v222[0] = v198;
      *v73 = 136317186;
      swift_getObjectType();
      v88 = _typeName(_:qualified:)();
      v90 = sub_10004DEB8(v88, v89, v222);

      *(v73 + 4) = v90;
      *(v73 + 12) = 2080;
      v75 = v80 + 56;
      v91 = 1 << *(v80 + 32);
      if (v91 < 64)
      {
        v92 = ~(-1 << v91);
      }

      else
      {
        v92 = -1;
      }

      v64 = v92 & *(v80 + 56);
      v93 = (v91 + 63) >> 6;

      v77 = 0;
      v94 = &_swiftEmptyArrayStorage;
LABEL_39:
      v95 = v77;
      if (!v64)
      {
        goto LABEL_41;
      }

      do
      {
        v77 = v95;
LABEL_44:
        v96 = *(*(v80 + 48) + ((v77 << 10) | (16 * __clz(__rbit64(v64)))));
        v64 &= v64 - 1;
        v97 = *((swift_isaMask & *v96) + 0xD8);
        v79 = (swift_isaMask & *v96) + 216;
        v98 = v96;
        v99 = v97();
        v72 = [v99 firstIdentifier];

        if (v72)
        {
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v101;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_100356258(0, *(v94 + 2) + 1, 1, v94);
          }

          v72 = *(v94 + 2);
          v102 = *(v94 + 3);
          if (v72 >= v102 >> 1)
          {
            v94 = sub_100356258((v102 > 1), v72 + 1, 1, v94);
          }

          *(v94 + 2) = v72 + 1;
          v103 = &v94[16 * v72];
          *(v103 + 4) = v100;
          *(v103 + 5) = v79;
          v80 = v208;
          goto LABEL_39;
        }

        v95 = v77;
        v80 = v208;
      }

      while (v64);
      while (1)
      {
LABEL_41:
        v77 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          __break(1u);
          goto LABEL_93;
        }

        if (v77 >= v93)
        {
          break;
        }

        v64 = *(v75 + 8 * v77);
        ++v95;
        if (v64)
        {
          goto LABEL_44;
        }
      }

      v108 = Array.description.getter();
      v110 = v109;

      v111 = sub_10004DEB8(v108, v110, v222);

      *(v73 + 14) = v111;
      *(v73 + 22) = 1024;
      *(v73 + 24) = v202 & 1;
      *(v73 + 28) = 1024;
      *(v73 + 30) = v199 & 1;
      *(v73 + 34) = 2080;
      v112 = v207;
      v113 = v207[2];
      if (v113)
      {
        v221 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v114 = (v112 + 4);
        v115 = v200;
        do
        {
          sub_10005EB40(v114, aBlock);
          v116 = v218;
          v117 = v219;
          sub_10005E838(aBlock, v218);
          (*(v117 + 2))(v116, v117);
          sub_1001F12E8(v118, v119, v120);
          sub_10004E3D0(aBlock);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v114 += 40;
          --v113;
        }

        while (v113);
        v121 = v214;
      }

      else
      {
        v121 = v214;
        v115 = v200;
      }

      sub_100014C84(0, &qword_10190D2F0);
      v122 = Array.description.getter();
      v124 = v123;

      v125 = sub_10004DEB8(v122, v124, v222);

      *(v73 + 36) = v125;
      *(v73 + 44) = 2080;
      v126 = v201;
      v127 = v201[2];
      if (v127)
      {
        v221 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v128 = (v126 + 4);
        do
        {
          sub_10005EB40(v128, aBlock);
          v129 = v218;
          v130 = v219;
          sub_10005E838(aBlock, v218);
          (*(v130 + 2))(v129, v130);
          sub_1001F12E8(v131, v132, v133);
          sub_10004E3D0(aBlock);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v128 += 40;
          --v127;
        }

        while (v127);
      }

      v134 = Array.description.getter();
      v136 = v135;

      v137 = sub_10004DEB8(v134, v136, v222);

      *(v73 + 46) = v137;
      *(v73 + 54) = 2080;
      v138 = *(v121 + 16);
      if (v138)
      {
        v221 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v139 = v121 + 32;
        do
        {
          sub_10005EB40(v139, aBlock);
          v140 = v218;
          v141 = v219;
          sub_10005E838(aBlock, v218);
          (*(v141 + 2))(v140, v141);
          sub_1001F12E8(v142, v143, v144);
          sub_10004E3D0(aBlock);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v139 += 40;
          --v138;
        }

        while (v138);
      }

      v145 = Array.description.getter();
      v147 = v146;

      v148 = sub_10004DEB8(v145, v147, v222);

      *(v73 + 56) = v148;
      *(v73 + 64) = 2080;
      v149 = v216;
      v150 = *(v216 + 2);
      if (v150)
      {
        v221 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v151 = (v149 + 32);
        do
        {
          sub_10005EB40(v151, aBlock);
          v152 = v218;
          v153 = v219;
          sub_10005E838(aBlock, v218);
          (*(v153 + 2))(v152, v153);
          sub_1001F12E8(v154, v155, v156);
          sub_10004E3D0(aBlock);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v151 += 40;
          --v150;
        }

        while (v150);
      }

      v157 = Array.description.getter();
      v159 = v158;

      v160 = sub_10004DEB8(v157, v159, v222);

      *(v73 + 66) = v160;
      *(v73 + 74) = 2112;
      v105 = v206;
      v161 = v203;
      isa = NSDiffableDataSourceSnapshot._bridgeToObjectiveC()().super.isa;
      v104 = *(v204 + 8);
      v104(v161, v105);
      *(v73 + 76) = isa;
      v163 = v197;
      *v197 = isa;
      _os_log_impl(&_mh_execute_header, v115, v212, "%s applySnapshotUpdates {\n    sectionControllersToUpdate=%s\n    animateCells=%{BOOL}d\n    animateCollectionView=%{BOOL}d\n    insertions=%s\n    removals=%s\n    moves=%s\n    reconfigurations=%s\n    diffableDataSourceSnapshot=%@\n}", v73, 0x54u);
      sub_100024F64(v163, &qword_1019144F0);

      swift_arrayDestroy();

      v107 = v205;
      v106 = v215;
    }

    else
    {

      v104 = *(v82 + 8);
      v105 = v206;
      v104(v83, v206);
      v106 = v215;
      v107 = v205;
    }

    v164 = sub_10036D224(v216);

    sub_100379ED8(v164);

    v165 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v104(v107, v105);
  }

  else
  {

    v167 = v206;
    v168 = v208;
    if (qword_101906710 != -1)
    {
      goto LABEL_95;
    }

    while (1)
    {
      v169 = type metadata accessor for Logger();
      sub_100021540(v169, qword_10195FFD0);
      v170 = v64;

      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v171, v172))
      {
        break;
      }

      LODWORD(v214) = v172;
      v64 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      aBlock[0] = v213;
      *v64 = 136315394;
      swift_getObjectType();
      v173 = _typeName(_:qualified:)();
      v175 = sub_10004DEB8(v173, v174, aBlock);

      *(v64 + 4) = v175;
      *(v64 + 12) = 2080;
      v176 = v168 + 56;
      v177 = 1 << *(v168 + 32);
      if (v177 < 64)
      {
        v178 = ~(-1 << v177);
      }

      else
      {
        v178 = -1;
      }

      v179 = v178 & *(v168 + 56);
      v180 = (v177 + 63) >> 6;

      v167 = 0;
      v216 = &_swiftEmptyArrayStorage;
LABEL_76:
      v181 = v167;
      if (!v179)
      {
        goto LABEL_78;
      }

      do
      {
        v167 = v181;
LABEL_81:
        v182 = *(*(v168 + 48) + ((v167 << 10) | (16 * __clz(__rbit64(v179)))));
        v179 &= v179 - 1;
        v183 = *((swift_isaMask & *v182) + 0xD8);
        v184 = v182;
        v185 = v183();
        v72 = [v185 firstIdentifier];

        if (v72)
        {
          v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v212 = v187;

          v188 = v216;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v188 = sub_100356258(0, *(v188 + 2) + 1, 1, v188);
          }

          v72 = *(v188 + 2);
          v189 = *(v188 + 3);
          if (v72 >= v189 >> 1)
          {
            v188 = sub_100356258((v189 > 1), v72 + 1, 1, v188);
          }

          *(v188 + 2) = v72 + 1;
          v216 = v188;
          v190 = &v188[16 * v72];
          v191 = v212;
          *(v190 + 4) = v186;
          *(v190 + 5) = v191;
          v168 = v208;
          goto LABEL_76;
        }

        v181 = v167;
        v168 = v208;
      }

      while (v179);
LABEL_78:
      while (1)
      {
        v167 = v181 + 1;
        if (__OFADD__(v181, 1))
        {
          break;
        }

        if (v167 >= v180)
        {

          v192 = Array.description.getter();
          v194 = v193;

          v195 = sub_10004DEB8(v192, v194, aBlock);

          *(v64 + 14) = v195;
          _os_log_impl(&_mh_execute_header, v171, v214, "%s Skipping diffable snapshot update because no changes. SectionControllersToUpdate=%s", v64, 0x16u);
          swift_arrayDestroy();

          (*(v204 + 8))(v205, v206);
          goto LABEL_91;
        }

        v179 = *(v176 + 8 * v167);
        ++v181;
        if (v179)
        {
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_95:
      swift_once();
    }

    (*(v204 + 8))(v72, v167);
LABEL_91:
    v106 = v215;
  }

  return sub_10037E7A4(v106);
}

void sub_100379ED8(uint64_t a1)
{
  v94 = sub_1000CE6B8(&unk_10191C240);
  __chkstk_darwin(v94);
  v101 = &v91 - v2;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return;
  }

  v8 = sub_10037DE34(v7);
  v106 = 0;

  v9 = 0;
  v11 = v8 + 64;
  v10 = *(v8 + 64);
  v103 = v8;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v100 = OBJC_IVAR____TtC4Maps22HomeListRootController_configuration;
  v15 = (v12 + 63) >> 6;
  v110 = v4 + 16;
  v16 = (v4 + 8);
  v109 = v3;
  v108 = v4;
  v98 = v15;
  v99 = v8 + 64;
  v95 = (v4 + 8);
  while (1)
  {
    if (!v14)
    {
      do
      {
        v18 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_71;
        }

        if (v18 >= v15)
        {

          return;
        }

        v14 = *(v11 + 8 * v18);
        ++v9;
      }

      while (!v14);
      v9 = v18;
    }

    v104 = v14;
    v19 = __clz(__rbit64(v14)) | (v9 << 6);
    v20 = *(v103 + 56);
    v21 = (*(v103 + 48) + 16 * v19);
    v22 = v21[1];
    v111 = *v21;
    v23 = *(v20 + 8 * v19);
    v24 = *(v23 + 16);
    v114 = v23;
    v113 = v24;
    v112 = v22;
    if (v24)
    {
      v25 = v23 + 32;

      v26 = v24;
      v27 = &_swiftEmptyArrayStorage;
      do
      {
        sub_10019CEEC(v25, &v121);
        v28 = [v121 firstIdentifier];
        if (v28)
        {
          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          sub_10019CF9C(&v121);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_100356258(0, *(v27 + 2) + 1, 1, v27);
          }

          v34 = *(v27 + 2);
          v33 = *(v27 + 3);
          if (v34 >= v33 >> 1)
          {
            v27 = sub_100356258((v33 > 1), v34 + 1, 1, v27);
          }

          *(v27 + 2) = v34 + 1;
          v35 = &v27[16 * v34];
          *(v35 + 4) = v30;
          *(v35 + 5) = v32;
        }

        else
        {
          sub_10019CF9C(&v121);
        }

        v25 += 64;
        --v26;
      }

      while (v26);
    }

    else
    {

      v27 = &_swiftEmptyArrayStorage;
    }

    v36 = *(v27 + 2);
    if (v36)
    {
      *&v121 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v37 = objc_opt_self();
      v38 = v27 + 40;
      do
      {

        v39 = String._bridgeToObjectiveC()();

        v40 = [v37 identifierPathWithIdentifier:v39];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v38 += 16;
        --v36;
      }

      while (v36);

      v105 = v121;
      v16 = v95;
    }

    else
    {

      v105 = &_swiftEmptyArrayStorage;
    }

    v41 = *(v115 + v100);
    v42 = OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView;
    v43 = *(v41 + OBJC_IVAR____TtC4Maps35HomeListRootControllerConfiguration_collectionView);
    v44 = String._bridgeToObjectiveC()();

    v45 = [v43 indexPathsForVisibleSupplementaryElementsOfKind:v44];

    v46 = v109;
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v108;
    v112 = *(v47 + 16);
    if (v112)
    {
      break;
    }

LABEL_5:

    v17 = (v104 - 1) & v104;

    v14 = v17;
    v11 = v99;
    v15 = v98;
  }

  v96 = v42;
  v97 = v41;
  v49 = 0;
  v111 = v47 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
  v102 = v114 + 32;
  v107 = v47;
  while (v49 < *(v47 + 16))
  {
    (*(v48 + 16))(v6, v111 + *(v48 + 72) * v49, v46);
    IndexPath.section.getter();
    v50 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v51 = v121;
    if (v121)
    {
      v52 = [v121 firstIdentifier];
      if (v52)
      {
        v53 = v52;
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = sub_1003783A8();
        if (v57[2])
        {
          v58 = sub_100297040(v54, v56);
          v60 = v59;

          if (v60)
          {
            v61 = *(v57[7] + 16 * v58);

            v62 = (*((swift_isaMask & *v61) + 0xD8))();
            *&v121 = v62;
            __chkstk_darwin(v63);
            *(&v91 - 2) = &v121;
            v64 = v106;
            v65 = sub_1002AFE54(sub_10037E73C, (&v91 - 4), v105);
            v106 = v64;
            if (v65)
            {
              v66 = v114;
              if (v113)
              {
                v67 = 0;
                v68 = v102;
                v69 = &_swiftEmptyArrayStorage;
                while (v67 < *(v66 + 16))
                {
                  sub_10019CEEC(v68, &v121);
                  if ([v121 hasPrefix:v62])
                  {
                    v117 = v121;
                    v118 = v122[0];
                    v119 = v122[1];
                    v120 = v122[2];
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&v116[0] = v69;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_10051186C(0, v69[2] + 1, 1);
                      v69 = *&v116[0];
                    }

                    v72 = v69[2];
                    v71 = v69[3];
                    if (v72 >= v71 >> 1)
                    {
                      sub_10051186C((v71 > 1), v72 + 1, 1);
                      v69 = *&v116[0];
                    }

                    v69[2] = v72 + 1;
                    v73 = &v69[8 * v72];
                    v74 = v117;
                    v75 = v118;
                    v76 = v120;
                    v73[4] = v119;
                    v73[5] = v76;
                    v73[2] = v74;
                    v73[3] = v75;
                  }

                  else
                  {
                    sub_10019CF9C(&v121);
                  }

                  ++v67;
                  v68 += 64;
                  v66 = v114;
                  if (v113 == v67)
                  {
                    goto LABEL_55;
                  }
                }

                __break(1u);
                break;
              }

              v69 = &_swiftEmptyArrayStorage;
LABEL_55:
              v77 = v69[2];
              if (v77)
              {
                sub_10019CEEC((v69 + 4), &v121);

                if (v77 == 1)
                {
                  sub_1000D2DFC(v122 + 8, v116, &unk_10191C250);
                  sub_10005E7BC(v116, &v117);
                  v78 = sub_10005E838(&v117, *(&v118 + 1));
                  v79 = qword_101906760;
                  v80 = *(v97 + v96);
                  if (v79 != -1)
                  {
                    swift_once();
                  }

                  v81 = sub_100021540(v94, qword_1019600C0);
                  v82 = v101;
                  sub_1000D2DFC(v81, v101, &unk_10191C240);
                  v83 = v82[1];
                  v93 = *v82;
                  v92 = v83;
                  v84 = String._bridgeToObjectiveC()();
                  isa = IndexPath._bridgeToObjectiveC()().super.isa;
                  v86 = [v80 supplementaryViewForElementKind:v84 atIndexPath:isa];

                  if (v86)
                  {
                    v87 = v78;
                    type metadata accessor for StandardSectionHeaderViewListCell();
                    v88 = swift_dynamicCastClass();
                    if (v88)
                    {
                      v89 = v88;
                      (*(v101 + 16))(v88, v93, v92, v6, v87);
                      v90 = v86;
                      [v89 invalidateIntrinsicContentSize];

                      v80 = v90;
                    }

                    else
                    {
                      v90 = v62;
                      v62 = v86;
                    }

                    v80 = v90;
                  }

                  sub_10019CF9C(&v121);
                  v46 = v109;
                  (*v16)(v6, v109);
                  sub_100024F64(v101, &unk_10191C240);
                  sub_10004E3D0(&v117);
                  goto LABEL_52;
                }

                sub_10019CF9C(&v121);
LABEL_51:
                v46 = v109;
                (*v16)(v6, v109);
              }

              else
              {
                v46 = v109;
                (*v16)(v6, v109);
              }
            }

            else
            {
              v46 = v109;
              (*v16)(v6, v109);
            }

LABEL_52:
            v48 = v108;
            v47 = v107;
            goto LABEL_30;
          }
        }

        else
        {
        }

        goto LABEL_51;
      }

      (*v16)(v6, v46);
    }

    else
    {
      (*v16)(v6, v46);
    }

LABEL_30:
    if (++v49 == v112)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t sub_10037AA30(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 input];
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

  v8 = [v2 input];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v5 != v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    if (v5)
    {
LABEL_10:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:

  return v13 & 1;
}

uint64_t sub_10037ABB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps22HomeListRootController_keyCommandsToHandlers;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {

    v6 = sub_10005EBA4(a1);
    if (v7)
    {
      sub_10005EB40(*(v5 + 56) + 40 * v6, v10);

      sub_10005E7BC(v10, v11);
      v8 = v12;
      v9 = v13;
      sub_10005E838(v11, v12);
      (*(v9 + 24))(v8, v9);
      return sub_10004E3D0(v11);
    }

    else
    {
    }
  }

  return result;
}

id sub_10037AD40(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10037AF28(void *a1)
{
  v29 = a1;
  v2 = OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers;
  if (*(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers))
  {
    v3 = *(v1 + OBJC_IVAR____TtC4Maps22HomeListRootController__sectionControllers);
  }

  else
  {
    v3 = sub_10005C3A8();
    *(v1 + v2) = v3;
    swift_bridgeObjectRetain_n();

    sub_10005E3A4(v3);
  }

  v4 = v3[2];

  v28 = v4;
  if (!v4)
  {
LABEL_9:

    return;
  }

  v5 = 0;
  v6 = 4;
  v7 = 1;
  while (1)
  {
    if (v5 >= v3[2])
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = v3[v6];
    sub_100014C84(0, &qword_10190B2D0);
    v9 = *((swift_isaMask & *v8) + 0xD8);
    v10 = v8;
    v11 = v9();
    v12 = (*((swift_isaMask & *v29) + 0xD8))();
    LOBYTE(v8) = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }

    ++v5;
    v6 += 2;
    v7 += 2;
    if (v28 == v5)
    {
      goto LABEL_9;
    }
  }

  if (*(v27 + v26))
  {
    v13 = *(v27 + v26);
  }

  else
  {
    v13 = sub_10005C3A8();
    *(v27 + v26) = v13;
    swift_bridgeObjectRetain_n();

    sub_10005E3A4(v13);
  }

  if (v13[2] < v5)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v14 = v6 * 8 - 16;
  v29 = v13;
  v30[0] = v13;
  v30[1] = v13 + 4;
  v30[2] = 0;
  v30[3] = v7;

  v16 = v5;
  do
  {
    if (!v16)
    {
      break;
    }

    if (v5 - 1 >= v5)
    {
      goto LABEL_21;
    }

    v17 = *(v29 + v14);
    --v16;
    v18 = *((swift_isaMask & *v17) + 0xF0);
    v19 = v17;
    v20 = v18();
    v22 = v21;

    v23 = *(v22 + 16);

    v14 -= 16;
  }

  while (!v23);
  __chkstk_darwin(v15);
  v25[2] = v30;
  sub_100469018(sub_10037E858, v25, v16, v24);
}

uint64_t sub_10037B264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004E374(a3, v18);
  sub_100014C84(0, &qword_10190D2F0);
  if (swift_dynamicCast())
  {
    v5 = v3 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot;
    v6 = *(v3 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v6)
    {
      v7 = *(v5 + 8);
      v8 = v15;
      sub_1000F0120(v6);
      sub_100368890(v8, 2, 0, 2, v7, &v15);

      if (v15)
      {
        v18[0] = v15;
        v18[1] = v16;
        v18[2] = v17;
        sub_1000D2DFC(v18 + 8, v14, &unk_10191C220);
        sub_10005E7BC(v14, &v15);
        v9 = *(&v16 + 1);
        v10 = v17;
        v11 = sub_10005E838(&v15, *(&v16 + 1));
        v12 = sub_10016186C(a2, v11, v9, v10);

        sub_10019D044(v18);
        sub_10004E3D0(&v15);
        return v12;
      }
    }

    else
    {

      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
    }

    sub_100024F64(&v15, &qword_101916000);
  }

  return 0;
}

uint64_t sub_10037B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1000CE6B8(&unk_10191C240);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  IndexPath.section.getter();
  v13 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  v14 = v32;
  if (!v32)
  {
    return 0;
  }

  v15 = sub_10037865C(v32);

  if (!v15)
  {
    return 0;
  }

  v26 = a1;
  v16 = *((swift_isaMask & *v15) + 0x1A0);
  v17 = v15;
  v18 = v16(a4, a2, a3);

  if (!v18)
  {

    return 0;
  }

  v19 = *(v5 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
  if (!v19)
  {

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
LABEL_12:
    sub_100024F64(&v28, &unk_101915FD0);
    return 0;
  }

  v20 = *(v5 + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

  v21 = v18;
  sub_1000F0120(v19);
  sub_100368A2C(v21, a2, a3, 0, v20, &v28);

  if (!v28)
  {

    goto LABEL_12;
  }

  v32 = v28;
  v33[0] = v29;
  v33[1] = v30;
  v33[2] = v31;
  sub_1000D2DFC(v33 + 8, v27, &unk_10191C250);
  sub_10005E7BC(v27, &v28);
  v22 = sub_10005E838(&v28, *(&v29 + 1));
  if (qword_101906760 != -1)
  {
    swift_once();
  }

  v23 = sub_100021540(v10, qword_1019600C0);
  sub_1000D2DFC(v23, v12, &unk_10191C240);
  type metadata accessor for StandardSectionHeaderViewListCell();
  v24 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v12 + 2))(v24, *v12, *(v12 + 1), a4, v22);

  sub_10019CF9C(&v32);
  sub_100024F64(v12, &unk_10191C240);
  sub_10004E3D0(&v28);
  return v24;
}

void *sub_10037B9E8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
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

void sub_10037BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v36[-v11];
  if (qword_101906710 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_10195FFD0);
  v14 = *(v7 + 16);
  v14(v12, a3, v6);
  v42 = a3;
  v14(v9, a3, v6);
  v15 = v3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = a2;
    v19 = v18;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v19 = 136315650;
    swift_getObjectType();
    v20 = _typeName(_:qualified:)();
    v22 = sub_10004DEB8(v20, v21, &v44);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_10037E6E4();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v37 = v17;
    v26 = *(v7 + 8);
    v26(v12, v6);
    v27 = sub_10004DEB8(v23, v25, &v44);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2112;
    v28 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v29 = v43;
    *(v19 + 24) = v43;
    v30 = v38;
    *v38 = v29;
    v26(v9, v6);
    _os_log_impl(&_mh_execute_header, v16, v37, "%s will display cell at index path: %s, identifier path: %@", v19, 0x20u);
    sub_100024F64(v30, &qword_1019144F0);

    swift_arrayDestroy();

    a2 = v40;
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v9, v6);
    v31(v12, v6);
  }

  v32 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v33 = v44;
  if (v44)
  {
    isa = sub_10037865C(v44);

    if (isa)
    {
      if ([isa respondsToSelector:"collectionView:willDisplayCell:forItemAtIndexPath:"])
      {
        v35 = isa;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v35 collectionView:v41 willDisplayCell:a2 forItemAtIndexPath:isa];
      }
    }
  }
}

id sub_10037C070(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (!v10)
  {
    return 0;
  }

  isa = sub_10037865C(v10);

  if (!isa)
  {
    return 0;
  }

  if ([isa respondsToSelector:*a3])
  {
    v7 = isa;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v8 = [v7 *a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10037C15C(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = sub_10037C070(v12, v11, a5);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

void sub_10037C270(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v36[-v10];
  if (qword_101906710 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100021540(v12, qword_10195FFD0);
  v13 = *(v6 + 16);
  v13(v11, a2, v5);
  v13(v8, a2, v5);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = a1;
    v18 = v17;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v18 = 136315650;
    swift_getObjectType();
    v19 = _typeName(_:qualified:)();
    v21 = sub_10004DEB8(v19, v20, &v43);
    v37 = v16;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_10037E6E4();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v40 = a2;
    v26 = *(v6 + 8);
    v26(v11, v5);
    v27 = sub_10004DEB8(v23, v25, &v43);

    *(v18 + 14) = v27;
    *(v18 + 22) = 2112;
    v28 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v29 = v42;
    *(v18 + 24) = v42;
    v30 = v38;
    *v38 = v29;
    v26(v8, v5);
    _os_log_impl(&_mh_execute_header, v15, v37, "%s did select item at index path: %s, identifier path: %@", v18, 0x20u);
    sub_100024F64(v30, &qword_1019144F0);

    swift_arrayDestroy();

    a1 = v41;
  }

  else
  {

    v31 = *(v6 + 8);
    v31(v8, v5);
    v31(v11, v5);
  }

  v32 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v33 = v43;
  if (v43)
  {
    isa = sub_10037865C(v43);

    if (isa)
    {
      if ([isa respondsToSelector:"collectionView:didSelectItemAtIndexPath:"])
      {
        v35 = isa;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v35 collectionView:a1 didSelectItemAtIndexPath:isa];
      }
    }
  }
}

void sub_10037C8D4(void *a1, void *a2)
{
  v4 = [a1 window];
  if (v4)
  {
    v5 = v4;
    v16 = [v4 windowScene];

    if (v16)
    {
      v6 = [objc_allocWithZone(MapsDragLocalContext) initWithWindowScene:v16];
      [a2 setLocalContext:v6];

      *(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_currentDragSession) = a2;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v7 = [objc_opt_self() sharedManager];
      [v7 setDragSession:a2];

      sub_10037CAE0();
      v8 = *(v2 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragItem);
      if (v8)
      {
        v9 = v8;
        v10 = [v9 analyticsHelper];
        v11 = [objc_opt_self() sharedService];
        if (!v11)
        {
          __break(1u);
          return;
        }

        v12 = v11;
        v13 = [v10 eventValue];
        v14 = [v10 actionDetails];
        [v12 captureUserAction:17001 onTarget:8 eventValue:v13 placeActionDetails:v14];

        v15 = v14;
      }

      else
      {
        v15 = v16;
      }
    }
  }
}

void sub_10037CAE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_currentDragSession);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC4Maps22HomeListRootController_dragPreviewView);
  if (!v2)
  {
    return;
  }

  swift_unknownObjectRetain();
  v3 = v2;
  v4 = [v3 renderPreviewImage];
  v5 = [v4 dragPreview];
  v6 = [v1 items];
  sub_100014C84(0, &unk_10191C210);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_11:
    swift_unknownObjectRelease();

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  v13[4] = sub_10037D088;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10037CFA8;
  v13[3] = &unk_101614458;
  v11 = _Block_copy(v13);
  v12 = v5;

  [v9 setPreviewProvider:v11];
  swift_unknownObjectRelease();

  _Block_release(v11);
}

id sub_10037CFA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void *sub_10037D088()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_10037D0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_10037D12C(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_114:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = v4;
LABEL_117:
      v121 = v98;
      v4 = *(v98 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v99 = *&v98[16 * v4];
          v100 = v98;
          v101 = *&v98[16 * v4 + 24];
          sub_10037D984((*a3 + 8 * v99), (*a3 + 8 * *&v98[16 * v4 + 16]), (*a3 + 8 * v101), v5);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v101 < v99)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_10056D550(v100);
          }

          if (v4 - 2 >= *(v100 + 2))
          {
            goto LABEL_143;
          }

          v102 = &v100[16 * v4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v121 = v100;
          sub_10056D4C4(v4 - 1);
          v98 = v121;
          v4 = *(v121 + 2);
          if (v4 <= 1)
          {
            goto LABEL_125;
          }
        }

        goto LABEL_153;
      }

LABEL_125:

      return;
    }

LABEL_149:
    v98 = sub_10056D550(v4);
    goto LABEL_117;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v9 = &selRef_initWithString_color_;
LABEL_4:
  v10 = v7;
  v11 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_33;
  }

  v106 = v8;
  v4 = *a3;
  v120 = *(*a3 + 8 * v11);
  v119 = *(v4 + 8 * v7);
  v12 = v119;
  v13 = v120;
  v5 = v12;
  v117 = sub_10037AA30(&v120, &v119);
  if (v116)
  {

    return;
  }

  v11 = v7 + 2;
  if (v7 + 2 >= v6)
  {
    v8 = v106;
    if (v117)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v114 = v7 + 2;
  v103 = v7;
  v4 += 8 * v7 + 16;
  v111 = v6;
  while (1)
  {
    v15 = *(v4 - 8);
    v16 = *v4;
    v17 = v15;
    v18 = [v16 v9[337]];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = [v17 input];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v26;

      if (v20 != v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    if (v22 == v5)
    {

      if (v117)
      {
        v8 = v106;
        v9 = &selRef_initWithString_color_;
        v11 = v114;
        v10 = v103;
        goto LABEL_25;
      }

      goto LABEL_9;
    }

LABEL_8:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v117 ^ v14))
    {
      break;
    }

LABEL_9:
    v4 += 8;
    ++v114;
    v9 = &selRef_initWithString_color_;
    if (v111 == v114)
    {
      v11 = v111;
      v8 = v106;
      goto LABEL_24;
    }
  }

  v8 = v106;
  v9 = &selRef_initWithString_color_;
  v11 = v114;
LABEL_24:
  v10 = v103;
  if (v117)
  {
LABEL_25:
    if (v11 < v10)
    {
      goto LABEL_146;
    }

    if (v10 < v11)
    {
      v27 = v11;
      v28 = 8 * v11 - 8;
      v29 = 8 * v10;
      v30 = v10;
      do
      {
        if (v30 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v31 = *(v32 + v29);
          *(v32 + v29) = *(v32 + v28);
          *(v32 + v28) = v31;
        }

        ++v30;
        v28 -= 8;
        v29 += 8;
      }

      while (v30 < v27);
    }
  }

LABEL_33:
  v33 = a3[1];
  v7 = v11;
  if (v11 >= v33)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_145;
  }

  if (v11 - v10 >= a4)
  {
LABEL_41:
    v7 = v11;
LABEL_42:
    if (v7 < v10)
    {
      goto LABEL_144;
    }

    goto LABEL_43;
  }

  v34 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_147;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v10)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v11 == v34)
  {
    goto LABEL_41;
  }

  v107 = v8;
  v118 = *a3;
  v4 = *a3 + 8 * v11 - 8;
  v104 = v10;
  v81 = v10 - v11;
  v109 = v34;
  while (2)
  {
    v115 = v11;
    v82 = *(v118 + 8 * v11);
    v110 = v81;
    v112 = v4;
LABEL_96:
    v83 = *v4;
    v84 = v82;
    v85 = v83;
    v86 = [v84 v9[337]];
    if (v86)
    {
      v87 = v86;
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0xE000000000000000;
    }

    v91 = [v85 v9[337]];
    if (!v91)
    {
      v5 = 0xE000000000000000;
      if (v88)
      {
        goto LABEL_104;
      }

LABEL_103:
      if (v90 != v5)
      {
        goto LABEL_104;
      }

LABEL_94:
      v11 = v115 + 1;
      v4 = v112 + 8;
      v81 = v110 - 1;
      if (v115 + 1 != v109)
      {
        continue;
      }

      v7 = v109;
      v8 = v107;
      v10 = v104;
      if (v109 < v104)
      {
        goto LABEL_144;
      }

LABEL_43:
      v35 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v35;
      }

      else
      {
        v8 = sub_100097874(0, *(v35 + 2) + 1, 1, v35);
      }

      v4 = *(v8 + 2);
      v36 = *(v8 + 3);
      v37 = v4 + 1;
      if (v4 >= v36 >> 1)
      {
        v8 = sub_100097874((v36 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v37;
      v38 = &v8[16 * v4];
      *(v38 + 4) = v10;
      *(v38 + 5) = v7;
      v39 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v4)
      {
        while (2)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            v45 = &v8[16 * v37 + 32];
            v46 = *(v45 - 64);
            v47 = *(v45 - 56);
            v51 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            if (v51)
            {
              goto LABEL_131;
            }

            v50 = *(v45 - 48);
            v49 = *(v45 - 40);
            v51 = __OFSUB__(v49, v50);
            v43 = v49 - v50;
            v44 = v51;
            if (v51)
            {
              goto LABEL_132;
            }

            v52 = &v8[16 * v37];
            v54 = *v52;
            v53 = *(v52 + 1);
            v51 = __OFSUB__(v53, v54);
            v55 = v53 - v54;
            if (v51)
            {
              goto LABEL_134;
            }

            v51 = __OFADD__(v43, v55);
            v56 = v43 + v55;
            if (v51)
            {
              goto LABEL_137;
            }

            if (v56 >= v48)
            {
              v74 = &v8[16 * v40 + 32];
              v76 = *v74;
              v75 = *(v74 + 1);
              v51 = __OFSUB__(v75, v76);
              v77 = v75 - v76;
              if (v51)
              {
                goto LABEL_141;
              }

              if (v43 < v77)
              {
                v40 = v37 - 2;
              }
            }

            else
            {
LABEL_62:
              if (v44)
              {
                goto LABEL_133;
              }

              v57 = &v8[16 * v37];
              v59 = *v57;
              v58 = *(v57 + 1);
              v60 = __OFSUB__(v58, v59);
              v61 = v58 - v59;
              v62 = v60;
              if (v60)
              {
                goto LABEL_136;
              }

              v63 = &v8[16 * v40 + 32];
              v65 = *v63;
              v64 = *(v63 + 1);
              v51 = __OFSUB__(v64, v65);
              v66 = v64 - v65;
              if (v51)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v61, v66))
              {
                goto LABEL_140;
              }

              if (v61 + v66 < v43)
              {
                goto LABEL_76;
              }

              if (v43 < v66)
              {
                v40 = v37 - 2;
              }
            }
          }

          else
          {
            if (v37 == 3)
            {
              v41 = *(v8 + 4);
              v42 = *(v8 + 5);
              v51 = __OFSUB__(v42, v41);
              v43 = v42 - v41;
              v44 = v51;
              goto LABEL_62;
            }

            v67 = &v8[16 * v37];
            v69 = *v67;
            v68 = *(v67 + 1);
            v51 = __OFSUB__(v68, v69);
            v61 = v68 - v69;
            v62 = v51;
LABEL_76:
            if (v62)
            {
              goto LABEL_135;
            }

            v70 = &v8[16 * v40];
            v72 = *(v70 + 4);
            v71 = *(v70 + 5);
            v51 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v51)
            {
              goto LABEL_138;
            }

            if (v73 < v61)
            {
              break;
            }
          }

          v4 = v40 - 1;
          if (v40 - 1 >= v37)
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

          if (!*a3)
          {
            goto LABEL_151;
          }

          v5 = v8;
          v78 = *&v8[16 * v4 + 32];
          v79 = *&v8[16 * v40 + 40];
          sub_10037D984((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v40 + 32]), (*a3 + 8 * v79), v39);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v79 < v78)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10056D550(v5);
          }

          if (v4 >= *(v5 + 2))
          {
            goto LABEL_130;
          }

          v80 = &v5[16 * v4];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          v121 = v5;
          sub_10056D4C4(v40);
          v8 = v121;
          v37 = *(v121 + 2);
          if (v37 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_114;
      }

      goto LABEL_4;
    }

    break;
  }

  v92 = v91;
  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v94;

  v9 = &selRef_initWithString_color_;
  if (v88 == v93)
  {
    goto LABEL_103;
  }

LABEL_104:
  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v95 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v118)
  {
    v96 = *v4;
    v82 = *(v4 + 8);
    *v4 = v82;
    *(v4 + 8) = v96;
    v4 -= 8;
    if (__CFADD__(v81++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
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