uint64_t sub_1001BE108()
{

  Synchronized.wrappedValue.setter();
}

float sub_1001BE174(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

uint64_t sub_1001BE1C4(uint64_t a1, uint64_t a2)
{

  Synchronized.wrappedValue.setter();

  v3 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
  v4 = [v3 fillColor];

  v5 = *(a2 + qword_1004AF1B8);
  UIColor.rgba.getter();
  v7 = v6;
  UIColor.rgba.getter();
  v9 = [objc_allocWithZone(UIColor) initWithRed:v7 green:0.0 blue:v8 alpha:1.0];
  [v5 setFillColor:v9];

  v10 = *(**(a2 + qword_1004AF238) + 200);

  v12 = v10(v11);

  (*(*v12 + 280))(sub_1001C1BC4, 0);
}

void sub_1001BE37C(uint64_t a1, char *a2)
{
  v3 = *(**&a2[qword_1004AF250] + 144);

  v3(v4);

  v5 = sub_1000983B8();
  sub_1001C0858(v5, &v15);
  v6 = v15;
  v7 = v16;

  v8 = &a2[qword_1004AF208];
  *v8 = v6;
  v8[1] = v7;

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v19 = sub_1001C199C;
  v20 = v10;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100041180;
  v18 = &unk_1004728F0;
  v11 = _Block_copy(&v15);
  v12 = a2;

  v13 = [v9 runBlock:v11];
  _Block_release(v11);
  v14 = sub_1001B9B10();
  [v14 runAction:v13];
}

void sub_1001BE540()
{
  v0 = sub_1001B9F38(&qword_1004AF1F8);
  if (qword_1004A06B0 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1004D5228;
  [v0 setScale:*&qword_1004D5228];

  v2 = sub_1001B9F38(&qword_1004AF200);
  [v2 setScale:v1];
}

void sub_1001BE608()
{
  v0 = sub_1001B94A0();
  v1 = [v0 filter];

  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  v4 = sub_1001B9D44(&qword_1004AF1D0, sub_1001B97D4);
  v5 = [v4 filter];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v5 setValue:v6 forKey:v7];
}

void sub_1001BE760(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
  v4 = [v3 fillColor];

  v5 = *(a2 + qword_1004AF1B8);
  UIColor.rgba.getter();
  v7 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:v6 alpha:1.0];
  [v5 setFillColor:v7];

  v8 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
  v9 = [v8 fillColor];

  v10 = *(a2 + qword_1004AF1C8);
  UIColor.rgba.getter();
  v12 = v11;
  UIColor.rgba.getter();
  v14 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:v12 blue:v13 alpha:1.0];
  [v10 setFillColor:v14];
}

void sub_1001BE914()
{
  v0 = sub_1001B94A0();
  v1 = [v0 filter];

  if (v1)
  {
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v3 = String._bridgeToObjectiveC()();
    [v1 setValue:isa forKey:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001BE9F0(double a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = (v4 / -0.4) + 1.0;
  v6 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
  v7 = [v6 fillColor];

  v8 = *(a3 + qword_1004AF1B8);
  UIColor.rgba.getter();
  v10 = v9;
  UIColor.rgba.getter();
  v12 = [objc_allocWithZone(UIColor) initWithRed:v5 green:v10 blue:v11 alpha:1.0];
  [v8 setFillColor:v12];
}

void sub_1001BEB1C(double a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = v4 * 4.0;
  v6 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
  v7 = [v6 fillColor];

  v8 = *(a3 + qword_1004AF1C8);
  UIColor.rgba.getter();
  v10 = v9;
  UIColor.rgba.getter();
  v12 = [objc_allocWithZone(UIColor) initWithRed:v5 green:v10 blue:v11 alpha:1.0];
  [v8 setFillColor:v12];

  v13 = sub_1001B9D44(&qword_1004AF1D0, sub_1001B97D4);
  v14 = [v13 filter];

  if (v14)
  {
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setValue:isa forKey:v16];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001BECD8(double a1)
{
  if (qword_1004A06B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *&qword_1004D5228;
  if (qword_1004A06B8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = v1 + (*&qword_1004D5230 - v1) * a1 / 0.11;
  v3 = sub_1001B9F38(&qword_1004AF1F8);
  [v3 setScale:v2];

  v6 = sub_1001B9F38(&qword_1004AF200);
  [v6 setScale:v2];
}

void sub_1001BEDFC(double a1)
{
  if (qword_1004A06B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *&qword_1004D5230;
  if (qword_1004A06C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = v1 + (v1 - *&qword_1004D5238) * a1 / -0.08;
  v3 = sub_1001B9F38(&qword_1004AF1F8);
  [v3 setScale:v2];

  v6 = sub_1001B9F38(&qword_1004AF200);
  [v6 setScale:v2];
}

double *sub_1001BEF20()
{
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v1 = v0;
  v3 = v2;
  v4 = sub_100067A00(0, 1, 1, _swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100067A00((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v7;
  v8 = &v4[2 * v6];
  *(v8 + 4) = v1;
  *(v8 + 5) = v3;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v11 = *(v4 + 3);
  v12 = v6 + 2;
  if ((v6 + 2) > (v11 >> 1))
  {
    v29 = v9;
    v30 = v10;
    v31 = sub_100067A00((v11 > 1), v6 + 2, 1, v4);
    v10 = v30;
    v9 = v29;
    v4 = v31;
  }

  *(v4 + 2) = v12;
  v13 = &v4[2 * v7];
  *(v13 + 4) = v9;
  *(v13 + 5) = v10;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v16 = *(v4 + 3);
  v17 = v6 + 3;
  if ((v6 + 3) > (v16 >> 1))
  {
    v32 = v14;
    v33 = v15;
    v34 = sub_100067A00((v16 > 1), v6 + 3, 1, v4);
    v15 = v33;
    v14 = v32;
    v4 = v34;
  }

  *(v4 + 2) = v17;
  v18 = &v4[2 * v12];
  *(v18 + 4) = v14;
  *(v18 + 5) = v15;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v21 = *(v4 + 3);
  v22 = v6 + 4;
  if ((v6 + 4) > (v21 >> 1))
  {
    v35 = v19;
    v36 = v20;
    v37 = sub_100067A00((v21 > 1), v6 + 4, 1, v4);
    v20 = v36;
    v19 = v35;
    v4 = v37;
  }

  *(v4 + 2) = v22;
  v23 = &v4[2 * v17];
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v26 = *(v4 + 3);
  if ((v6 + 5) > (v26 >> 1))
  {
    v38 = v24;
    v39 = v25;
    v40 = sub_100067A00((v26 > 1), v6 + 5, 1, v4);
    v25 = v39;
    v24 = v38;
    v4 = v40;
  }

  *(v4 + 2) = v6 + 5;
  v27 = &v4[2 * v22];
  *(v27 + 4) = v24;
  *(v27 + 5) = v25;
  return v4;
}

id sub_1001BF210()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1001BF270(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = (a1 + qword_1004AF280);
  *v3 = v2;
  v3[1] = v4;
}

id sub_1001BF2C0(char a1)
{
  v3 = *(v1 + qword_1004AF188);
  v4 = "setHidden:";
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    [v3 setHidden:1];
    v7 = *(**(v1 + qword_1004AF238) + 200);

    v9 = v1;
    v10 = v7(v8);

    (*(*v10 + 280))(sub_1001C1BC4, 0);

    v11 = sub_1001B9F38(&qword_1004AF1F8);
    [v11 removeAllActions];

    v12 = sub_1001B9B10();
    [v12 removeAllActions];

    v13 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
    [v13 removeAllActions];

    v14 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
    [v14 removeAllActions];

    v3 = *(v9 + qword_1004AF190);
    v4 = "removeAllActions";
  }

  return [v3 v4];
}

void sub_1001BF4A8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001BF2C0(a3);
}

uint64_t sub_1001BF52C()
{

  v1 = *(v0 + qword_1004AF208 + 24);
  v2 = *(v0 + qword_1004AF208 + 32);
}

uint64_t sub_1001BF760(uint64_t a1)
{

  v2 = *(a1 + qword_1004AF208 + 24);
  v3 = *(a1 + qword_1004AF208 + 32);
}

uint64_t type metadata accessor for PersonHeightView()
{
  result = qword_1004AF2B0;
  if (!qword_1004AF2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BFAC4(uint64_t a1, int a2)
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

uint64_t sub_1001BFB0C(uint64_t result, int a2, int a3)
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

uint64_t sub_1001BFB64(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001003FDD20;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001003FDD20;
  }

  else
  {
    v6 = 0x80000001003FDD40;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65486E6F73726550;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000074686769;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x80000001003FDD40;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x65486E6F73726550;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000074686769;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001BFC44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001BFCF4()
{
  String.hash(into:)();
}

Swift::Int sub_1001BFD90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001BFE3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C1B14(*a1);
  *a2 = result;
  return result;
}

void sub_1001BFE6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074686769;
  v4 = 0xD000000000000010;
  v5 = 0x80000001003FDD20;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000001003FDD40;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65486E6F73726550;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001BFED8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65486E6F73726550;
  }
}

unint64_t sub_1001BFF40@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C1B14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001BFF68(uint64_t a1)
{
  v2 = sub_1001C0604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BFFA4(uint64_t a1)
{
  v2 = sub_1001C0604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BFFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_10000F974(&qword_1004AF508);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000FEBC(a1, a1[3]);
  sub_1001C0604();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((a2 & 0x100000000) != 0 || (v15 = 0, KeyedEncodingContainer.encode(_:forKey:)(), !v4))
  {
    if ((a3 & 0x100000000) != 0 || (v16 = 1, KeyedEncodingContainer.encode(_:forKey:)(), !v4))
    {
      if ((v14 & 0x100000000) == 0)
      {
        v17 = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
      }
    }
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1001C01E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1001C14C8(*v1);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5 & 1;
  *(a1 + 16) = v6;
  *(a1 + 20) = v7 & 1;
  return result;
}

uint64_t sub_1001C0238()
{
  v0 = sub_10000F974(&qword_1004A9BF0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = objc_opt_self();
  v8 = [v7 meters];
  sub_100018630(0, &qword_1004A9BF8);
  Measurement.init(value:unit:)();
  v9 = [v7 inches];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v3, v0);
  result = (v12)(v6, v0);
  v14 = v11;
  v15 = ceilf(v14);
  v16 = v15 / 12.0;
  if (COERCE_INT(fabs(v15 / 12.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = 12 * v16;
  if ((v16 * 12) >> 64 != v17 >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = roundf(v15 - v17);
  return v18 < 10.0 || v18 == 12.0;
}

unint64_t sub_1001C047C()
{
  result = qword_1004AF4E0;
  if (!qword_1004AF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF4E0);
  }

  return result;
}

uint64_t sub_1001C0570()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1001C05A8()
{
  v1 = *(v0 + 16);
  sub_1001BABD4();

  return [v1 toggleViewVisibilityWithIsVisible:0];
}

uint64_t sub_1001C05EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001C0604()
{
  result = qword_1004AF510;
  if (!qword_1004AF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF510);
  }

  return result;
}

id sub_1001C0658(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_10000F974(&qword_1004A7288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_100018630(0, &qword_1004A7290);
  *(inited + 40) = a3;
  v7 = NSFontAttributeName;
  v8 = a3;
  sub_100199F34(inited);
  swift_setDeallocating();
  sub_100018F04(inited + 32, &qword_1004A7298);
  if (a4)
  {
    v19 = sub_100018630(0, &qword_1004A2930);
    *&v18 = a4;
    sub_1000C0FAC(&v18, v17);
    v9 = NSForegroundColorAttributeName;
    v10 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BBA8C(v17, v9, isUniquelyReferenced_nonNull_native);
  }

  v12 = objc_allocWithZone(NSAttributedString);
  v13 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1001C19A4(&qword_1004A72A0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = [v12 initWithString:v13 attributes:isa];

  return v15;
}

void sub_1001C0858(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000F974(&qword_1004A9BF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v101 - v9;
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = *(Defaults.measurementBias.unsafeMutableAddressor() + 8);

  v13 = String._bridgeToObjectiveC()();

  [v11 floatForKey:v13];

  v110 = a2;
  if (a1 == 1)
  {
    v14 = objc_opt_self();
    v15 = [v14 meters];
    sub_100018630(0, &qword_1004A9BF8);
    Measurement.init(value:unit:)();
    v16 = [v14 centimeters];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v7, v4);
    v19(v10, v4);
    v20 = v18;
    v21 = ceilf(v20);
    *&v109 = Float.description.getter();
    if (qword_1004A02F0 != -1)
    {
      swift_once();
    }

    v22 = qword_1004D4EB8;
    v23 = objc_allocWithZone(NSDecimalNumber);
    *&v24 = v21;
    v25 = [v23 initWithFloat:v24];
    v26 = [v22 stringFromNumber:v25];

    if (v26)
    {
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = objc_opt_self();
      v31 = [v30 mainBundle];
      v111._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0x6D63204025;
      v32._object = 0xE500000000000000;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v111._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v111);

      sub_10000F974(&unk_1004AF710);
      v34 = swift_allocObject();
      v108 = xmmword_1003D5360;
      *(v34 + 16) = xmmword_1003D5360;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000192D0();
      *(v34 + 32) = v27;
      *(v34 + 40) = v29;
      v35 = String.init(format:_:)();
      v37 = v36;

      v38 = [v30 mainBundle];
      v112._object = 0xE000000000000000;
      v39._countAndFlagsBits = 0x69746E6563204025;
      v39._object = 0xEE0073726574656DLL;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v112._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v112);

      v41 = swift_allocObject();
      *(v41 + 16) = v108;
      *(v41 + 56) = &type metadata for Float;
      *(v41 + 64) = &protocol witness table for Float;
      *(v41 + 32) = v21;
      v42 = static String.localizedStringWithFormat(_:_:)();
      v44 = v43;

      v45 = String._bridgeToObjectiveC()();

      [v45 floatValue];
      v47 = v46;

      v48 = 1;
LABEL_27:
      v100 = v110;
      *v110 = v35;
      v100[1] = v37;
      v100[2] = v42;
      v100[3] = v44;
      *(v100 + 8) = v47;
      *(v100 + 36) = v48;
      return;
    }

    goto LABEL_36;
  }

  if (!a1)
  {
    v49 = objc_opt_self();
    v50 = [v49 meters];
    sub_100018630(0, &qword_1004A9BF8);
    Measurement.init(value:unit:)();
    v51 = [v49 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v53 = v52;
    v55 = *(v5 + 8);
    v54 = v5 + 8;
    v55(v7, v4);
    v55(v10, v4);
    v56 = v53;
    v57 = ceilf(v56);
    v58 = v57 / 12.0;
    if (COERCE_INT(fabs(v57 / 12.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v58 > -9.2234e18)
    {
      if (v58 < 9.2234e18)
      {
        v59 = 12 * v58;
        if ((v58 * 12) >> 64 == v59 >> 63)
        {
          v60 = roundf(v57 - v59);
          if (v60 == 12.0)
          {
            *&v53 = 0.0;
          }

          else
          {
            *&v53 = v60;
          }

          if (v60 == 12.0)
          {
            v12 = v58 + 1;
          }

          else
          {
            v12 = v58;
          }

          LOBYTE(v51) = sub_1001C0238();
          sub_10000F974(&unk_1004AF710);
          v61 = swift_allocObject();
          v109 = xmmword_1003D5360;
          *(v61 + 16) = xmmword_1003D5360;
          *(v61 + 56) = &type metadata for Int;
          *(v61 + 64) = &protocol witness table for Int;
          *(v61 + 32) = v12;
          *&v108 = String.init(format:_:)();
          v54 = v62;
          if (qword_1004A02F0 == -1)
          {
LABEL_18:
            v63 = qword_1004D4EB8;
            v64 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v12];
            v65 = [v63 stringFromNumber:v64];

            if (!v65)
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v107 = v67;

            if (((*&v53 >= 10.0) & v51) != 0)
            {
              v68 = *&v53 + -10.0;
            }

            else
            {
              v68 = *&v53;
            }

            v69 = swift_allocObject();
            *(v69 + 16) = v109;
            if ((LODWORD(v68) & 0x7FFFFFFFu) > 0x7F7FFFFF)
            {
              __break(1u);
            }

            else if (v68 > -9.2234e18)
            {
              if (v68 < 9.2234e18)
              {
                v102 = v66;
                v106 = v54;
                *&v109 = v12;
                *(v69 + 56) = &type metadata for Int;
                *(v69 + 64) = &protocol witness table for Int;
                v103 = v68;
                *(v69 + 32) = v68;
                v104 = String.init(format:_:)();
                v105 = v70;
                v71 = objc_allocWithZone(NSDecimalNumber);
                *&v72 = v68;
                v73 = [v71 initWithFloat:v72];
                v74 = [v63 stringFromNumber:v73];

                if (v74)
                {
                  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v77 = v76;

                  v78 = objc_opt_self();
                  v79 = [v78 mainBundle];
                  v113._object = 0xE000000000000000;
                  v80._countAndFlagsBits = 0x20B280E240243125;
                  v80._object = 0xAFB380E240243225;
                  v81.value._countAndFlagsBits = 0xD000000000000014;
                  v81.value._object = 0x8000000100407540;
                  v82._countAndFlagsBits = 0;
                  v82._object = 0xE000000000000000;
                  v113._countAndFlagsBits = 0;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, v113);

                  v83 = swift_allocObject();
                  v101 = xmmword_1003D5730;
                  *(v83 + 16) = xmmword_1003D5730;
                  *(v83 + 56) = &type metadata for String;
                  v84 = sub_1000192D0();
                  v85 = v107;
                  *(v83 + 32) = v102;
                  *(v83 + 40) = v85;
                  *(v83 + 96) = &type metadata for String;
                  *(v83 + 104) = v84;
                  *(v83 + 64) = v84;
                  *(v83 + 72) = v75;
                  *(v83 + 80) = v77;
                  v35 = String.init(format:_:)();
                  v37 = v86;

                  v87 = [v78 mainBundle];
                  v114._object = 0xE000000000000000;
                  v88._object = 0x8000000100407560;
                  v88._countAndFlagsBits = 0xD000000000000011;
                  v89._countAndFlagsBits = 0;
                  v89._object = 0xE000000000000000;
                  v114._countAndFlagsBits = 0;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v88, 0, v87, v89, v114);

                  v90 = swift_allocObject();
                  *(v90 + 16) = v101;
                  *(v90 + 56) = &type metadata for Int;
                  *(v90 + 32) = v109;
                  *(v90 + 96) = &type metadata for Int;
                  *(v90 + 104) = &protocol witness table for Int;
                  v91 = v103;
                  *(v90 + 64) = &protocol witness table for Int;
                  *(v90 + 72) = v91;
                  v42 = static String.localizedStringWithFormat(_:_:)();
                  v44 = v92;

                  v93 = String._bridgeToObjectiveC()();

                  [v93 floatValue];
                  v95 = v94;

                  v96 = v95 * 12.0;
                  v97 = String._bridgeToObjectiveC()();

                  [v97 floatValue];
                  v99 = v98;

                  v47 = v96 + v99;
                  v48 = 2;
                  goto LABEL_27;
                }

                goto LABEL_38;
              }

              goto LABEL_35;
            }

            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_32:
          swift_once();
          goto LABEL_18;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_39:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_1001C133C()
{
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.subtract(_:)();
  v1 = v0;
  v3 = v2;
  v4 = sub_100067A00(0, 1, 1, _swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100067A00((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[2 * v6];
  *(v7 + 4) = v1;
  *(v7 + 5) = v3;
  for (i = 1; i != 101; ++i)
  {
    CGPoint.multiply(by:)();
    CGPoint.divide(by:)();
    CGPoint.subtract(_:)();
    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v14 = v9;
      v15 = v10;
      v16 = sub_100067A00((v11 > 1), v12 + 1, 1, v4);
      v10 = v15;
      v9 = v14;
      v4 = v16;
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[2 * v12];
    *(v13 + 4) = v9;
    *(v13 + 5) = v10;
  }

  return v4;
}

unint64_t sub_1001C14C8(char *a1)
{
  v2 = qword_1004AF238;
  v3 = *(**&a1[qword_1004AF238] + 144);

  v3(__src, v4);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  v5 = __dst[113];
  v6 = __dst[114];
  v7 = *(**&a1[v2] + 144);

  v7(v12, v8);

  memcpy(__src, v12, 0x213uLL);
  sub_10006BE28(__src);
  v9 = *(**&a1[qword_1004AF240] + 144);

  v9(v12, v10);

  return v5 | (v6 << 32);
}

uint64_t sub_1001C1658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A97C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C16C8()
{
  v1 = (sub_10000F974(&qword_1004A97C0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[11];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001C1810(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A97C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C1918()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001C19A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001C1A10()
{
  result = qword_1004AF528;
  if (!qword_1004AF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF528);
  }

  return result;
}

unint64_t sub_1001C1A68()
{
  result = qword_1004AF530;
  if (!qword_1004AF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF530);
  }

  return result;
}

unint64_t sub_1001C1AC0()
{
  result = qword_1004AF538;
  if (!qword_1004AF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF538);
  }

  return result;
}

unint64_t sub_1001C1B14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100465710, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1001C1D20()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if ((v1 & 1) == 0)
  {
    v56 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
    v57 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle);
    v58 = objc_opt_self();
    v59 = v57;
    v60 = [v58 preferredFontForTextStyle:UIFontTextStyleBody];
    v61 = [v60 fontDescriptor];

    v62 = [v61 fontDescriptorWithSymbolicTraits:2];
    if (v62)
    {
      v63 = [v58 fontWithDescriptor:v62 size:0.0];

      [v59 setFont:v63];
      v86 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
      v64 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels);
      v65 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints;
      swift_beginAccess();
      v66 = *&v64[v65];
      v88 = v56;
      if (v66 >> 62)
      {
        goto LABEL_38;
      }

      for (i = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v64 = v64;

        if (i)
        {
          v68 = 0;
          while (1)
          {
            if ((v66 & 0xC000000000000001) != 0)
            {
              v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }

              v69 = *(v66 + 8 * v68 + 32);
            }

            v70 = v69;
            v71 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              break;
            }

            [v69 setConstant:0.0];

            ++v68;
            if (v71 == i)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        else
        {
LABEL_22:

          v72 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
          v73 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels);
          v74 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints;
          swift_beginAccess();
          v66 = *&v73[v74];
          v84 = v72;
          if (v66 >> 62)
          {
            v75 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v75 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v64 = v73;

          if (!v75)
          {
LABEL_33:

            v80 = [v0 contentView];
            [v80 addSubview:*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView)];

            v81 = [v0 contentView];
            [v81 addSubview:*&v88[v0]];

            v82 = [v0 contentView];
            [v82 addSubview:*(v0 + v86)];

            v83 = [v0 contentView];
            [v83 addSubview:*(v0 + v84)];

            return;
          }

          v76 = 0;
          while (1)
          {
            if ((v66 & 0xC000000000000001) != 0)
            {
              v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v76 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v77 = *(v66 + 8 * v76 + 32);
            }

            v78 = v77;
            v79 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              break;
            }

            [v77 setConstant:0.0];

            ++v76;
            if (v79 == v75)
            {
              goto LABEL_33;
            }
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }
    }

    goto LABEL_41;
  }

  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  v4 = *(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = [v7 fontDescriptor];

  v9 = [v8 fontDescriptorWithSymbolicTraits:2];
  if (!v9)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = [v5 fontWithDescriptor:v9 size:0.0];

  [v6 setFont:v10];
  v85 = v3;
  v11 = *(*(v0 + v3) + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 labelColor];
  [v13 setTextColor:v14];

  v15 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  v16 = *(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v17 = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v18 = [v17 fontDescriptor];

  v19 = [v18 fontDescriptorWithSymbolicTraits:2];
  if (!v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v20 = [v5 fontWithDescriptor:v19 size:0.0];

  [v16 setFont:v20];
  v21 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v22 = [v5 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v21 setFont:v22];

  v23 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v24 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v25 = [v24 fontDescriptor];

  v26 = [v25 fontDescriptorWithSymbolicTraits:2];
  if (!v26)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = [v5 fontWithDescriptor:v26 size:0.0];

  [v23 setFont:v27];
  v28 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v29 = [v12 secondaryLabelColor];
  [v28 setTextColor:v29];

  v30 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v31 = [v12 labelColor];
  [v30 setTextColor:v31];

  v32 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v33 = [v12 secondaryLabelColor];
  [v32 setTextColor:v33];

  v34 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  v35 = *(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v36 = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v37 = [v36 fontDescriptor];

  v38 = [v37 fontDescriptorWithSymbolicTraits:2];
  if (!v38)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = [v5 fontWithDescriptor:v38 size:0.0];

  [v35 setFont:v39];
  v40 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v41 = [v5 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v40 setFont:v41];

  v42 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v43 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v44 = [v43 fontDescriptor];

  v45 = [v44 fontDescriptorWithSymbolicTraits:2];
  if (!v45)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v46 = [v5 fontWithDescriptor:v45 size:0.0];

  [v42 setFont:v46];
  v47 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v48 = [v12 secondaryLabelColor];
  [v47 setTextColor:v48];

  v49 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v50 = [v12 labelColor];
  [v49 setTextColor:v50];

  v51 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v52 = [v12 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [v0 contentView];
  [v53 addSubview:*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView)];

  v54 = [v0 contentView];
  [v54 addSubview:*(v0 + v85)];

  v55 = [v0 contentView];
  [v55 addSubview:*(v0 + v15)];

  v87 = [v0 contentView];
  [v87 addSubview:*(v0 + v34)];
}

void sub_1001C2918()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if ((v1 & 1) == 0)
  {
    v61 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle) setTranslatesAutoresizingMaskIntoConstraints:0];
    v62 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView) setTranslatesAutoresizingMaskIntoConstraints:0];
    v63 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
    v118 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels) setTranslatesAutoresizingMaskIntoConstraints:0];
    v64 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
    v123 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels) setTranslatesAutoresizingMaskIntoConstraints:0];
    v65 = [*(v0 + v63) topAnchor];
    v66 = [*(v0 + v61) bottomAnchor];
    v120 = [v65 constraintEqualToAnchor:v66 constant:16.0];

    LODWORD(v67) = 1148813312;
    [v120 setPriority:v67];
    v68 = [*(v0 + v64) bottomAnchor];
    v69 = [v0 contentView];
    v70 = [v69 bottomAnchor];

    v71 = [v68 constraintEqualToAnchor:v70 constant:-16.0];
    v126 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor;
    v72 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor);
    *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor) = v71;

    sub_10000F974(&unk_1004A3F10);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1003E2E30;
    v74 = [*(v0 + v62) leadingAnchor];
    v75 = [v0 contentView];
    v76 = [v75 leadingAnchor];

    v77 = [v74 constraintEqualToAnchor:v76 constant:16.0];
    *(v73 + 32) = v77;
    v78 = [*(v0 + v62) topAnchor];
    v79 = [v0 contentView];
    v80 = [v79 topAnchor];

    v81 = [v78 constraintEqualToAnchor:v80 constant:16.0];
    *(v73 + 40) = v81;
    v82 = [*(v0 + v62) widthAnchor];
    v83 = [v82 constraintEqualToConstant:56.0];

    *(v73 + 48) = v83;
    v84 = [*(v0 + v62) heightAnchor];
    v85 = [*(v0 + v62) widthAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];

    *(v73 + 56) = v86;
    v87 = [*(v0 + v61) leadingAnchor];
    v88 = [*(v0 + v62) trailingAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:16.0];

    *(v73 + 64) = v89;
    v90 = [*(v0 + v61) topAnchor];
    v91 = [v0 contentView];
    v92 = [v91 topAnchor];

    v93 = [v90 constraintEqualToAnchor:v92 constant:12.0];
    *(v73 + 72) = v93;
    v94 = [*(v0 + v61) trailingAnchor];
    v95 = [*(*(v0 + v118) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels) leadingAnchor];
    v96 = [v94 constraintEqualToAnchor:v95 constant:-16.0];

    *(v73 + 80) = v96;
    v97 = [*(v0 + v118) leadingAnchor];
    v98 = [*(v0 + v62) trailingAnchor];
    v99 = [v97 constraintEqualToAnchor:v98 constant:16.0];

    *(v73 + 88) = v99;
    *(v73 + 96) = v120;
    v100 = *(v0 + v118);
    v121 = v120;
    v101 = [v100 trailingAnchor];
    v102 = [v0 contentView];
    v103 = [v102 trailingAnchor];

    v104 = [v101 constraintEqualToAnchor:v103];
    *(v73 + 104) = v104;
    v105 = [*(v0 + v123) leadingAnchor];
    v106 = [*(v0 + v62) trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106 constant:16.0];

    *(v73 + 112) = v107;
    v108 = [*(v0 + v123) topAnchor];
    v109 = [*(v0 + v118) bottomAnchor];
    v110 = [v108 constraintEqualToAnchor:v109 constant:16.0];

    *(v73 + 120) = v110;
    v111 = [*(v0 + v123) trailingAnchor];
    v112 = [v0 contentView];
    v113 = [v112 trailingAnchor];

    v114 = [v111 constraintEqualToAnchor:v113];
    *(v73 + 128) = v114;
    v115 = *&v126[v0];
    if (v115)
    {
      v116 = objc_opt_self();
      *(v73 + 136) = v115;
      sub_100022180();
      v117 = v115;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v116 activateConstraints:isa];

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) setTranslatesAutoresizingMaskIntoConstraints:0];
  v119 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  v122 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [*(v0 + v5) bottomAnchor];
  v7 = [v0 contentView];
  v8 = [v7 bottomAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:-16.0];
  v124 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor;
  v10 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor);
  *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor) = v9;

  sub_10000F974(&unk_1004A3F10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003E2E30;
  v12 = [*(v0 + v3) leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:16.0];
  *(v11 + 32) = v15;
  v16 = [*(v0 + v3) topAnchor];
  v17 = [v0 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v11 + 40) = v19;
  v20 = [*(v0 + v3) widthAnchor];
  v21 = [v20 constraintEqualToConstant:56.0];

  *(v11 + 48) = v21;
  v22 = [*(v0 + v3) heightAnchor];
  v23 = [*(v0 + v3) widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v11 + 56) = v24;
  v25 = [*(v0 + v4) leadingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:16.0];
  *(v11 + 64) = v28;
  v29 = [*(v0 + v4) topAnchor];
  v30 = [*(v0 + v3) bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  *(v11 + 72) = v31;
  v32 = [*(v0 + v4) trailingAnchor];
  v33 = [v0 contentView];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v11 + 80) = v35;
  v36 = [*(v0 + v119) leadingAnchor];
  v37 = [v0 contentView];
  v38 = [v37 leadingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:16.0];
  *(v11 + 88) = v39;
  v40 = [*(v0 + v119) topAnchor];
  v41 = [*(v0 + v4) bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:20.0];

  *(v11 + 96) = v42;
  v43 = [*(v0 + v119) trailingAnchor];
  v44 = [v0 contentView];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v11 + 104) = v46;
  v47 = [*(v0 + v122) leadingAnchor];
  v48 = [v0 contentView];
  v49 = [v48 leadingAnchor];

  v50 = [v47 constraintEqualToAnchor:v49 constant:16.0];
  *(v11 + 112) = v50;
  v51 = [*(v0 + v122) topAnchor];
  v52 = [*(v0 + v119) bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:20.0];

  *(v11 + 120) = v53;
  v54 = [*(v0 + v122) trailingAnchor];
  v55 = [v0 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v11 + 128) = v57;
  v58 = *&v124[v0];
  if (!v58)
  {
    __break(1u);
    goto LABEL_10;
  }

  v59 = objc_opt_self();
  *(v11 + 136) = v58;
  sub_100022180();
  v60 = v58;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 activateConstraints:isa];
LABEL_6:
}

void sub_1001C3848()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels);
  v2 = *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
  v3 = v1;
  [v2 setSelectedRange:{0, 0}];
  v4 = *&v3[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
  [*(*(v4 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v4 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];

  v5 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels);
  v6 = *&v5[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
  v7 = v5;
  [v6 setSelectedRange:{0, 0}];
  v8 = *&v7[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
  [*(*(v8 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v8 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];

  [*(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label) setSelectedRange:{0, 0}];
  v9 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel);
  v10 = *&v9[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
  v11 = v9;
  [v10 setSelectedRange:{0, 0}];
  [*&v11[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel] setSelectedRange:{0, 0}];
  [*&v11[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel] setSelectedRange:{0, 0}];

  v12 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel);
  v13 = *&v12[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
  v14 = v12;
  [v13 setSelectedRange:{0, 0}];
  [*&v14[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel] setSelectedRange:{0, 0}];
  [*&v14[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel] setSelectedRange:{0, 0}];
}

id sub_1001C3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  type metadata accessor for SketchSurfaceHistory();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
  v9 = type metadata accessor for MeasureTableViewCellCommonContentView();
  *&v3[v8] = [objc_allocWithZone(v9) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
  *&v3[v10] = [objc_allocWithZone(v9) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  v13 = type metadata accessor for AccessibilityTripleStack();
  *&v3[v12] = [objc_allocWithZone(v13) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  *&v3[v14] = [objc_allocWithZone(v13) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor] = 0;
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for BaseRectangleHistoryCell();
  v16 = objc_msgSendSuper2(&v19, "initWithStyle:reuseIdentifier:", a1, v15);

  v17 = v16;
  sub_1001C1D20();
  sub_1001C2918();

  return v17;
}

id sub_1001C3D14(void *a1)
{
  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  type metadata accessor for SketchSurfaceHistory();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
  v6 = type metadata accessor for MeasureTableViewCellCommonContentView();
  *&v1[v5] = [objc_allocWithZone(v6) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
  *&v1[v7] = [objc_allocWithZone(v6) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  v10 = type metadata accessor for AccessibilityTripleStack();
  *&v1[v9] = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  *&v1[v11] = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for BaseRectangleHistoryCell();
  v12 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_1001C1D20();
    sub_1001C2918();
  }

  return v13;
}

void sub_1001C3EFC()
{
  v1 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView) removeFromSuperview];
  v2 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle) removeFromSuperview];
  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels) removeFromSuperview];
  v4 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels) removeFromSuperview];
  v5 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) removeFromSuperview];
  v6 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel) removeFromSuperview];
  v7 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel) removeFromSuperview];
  type metadata accessor for SketchSurfaceHistory();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = *(v0 + v1);
  *(v0 + v1) = v8;

  v10 = [objc_allocWithZone(UILabel) init];
  v11 = *(v0 + v2);
  *(v0 + v2) = v10;

  v12 = type metadata accessor for MeasureTableViewCellCommonContentView();
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = *(v0 + v3);
  *(v0 + v3) = v13;

  v15 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = *(v0 + v4);
  *(v0 + v4) = v15;

  v17 = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = *(v0 + v5);
  *(v0 + v5) = v17;

  v19 = type metadata accessor for AccessibilityTripleStack();
  v20 = [objc_allocWithZone(v19) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = *(v0 + v6);
  *(v0 + v6) = v20;

  v22 = [objc_allocWithZone(v19) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = *(v0 + v7);
  *(v0 + v7) = v22;

  sub_1001C1D20();

  sub_1001C2918();
}

id sub_1001C4160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseRectangleHistoryCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001C4378()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransformLayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001C43D0()
{
  result = qword_1004AF600;
  if (!qword_1004AF600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AF600);
  }

  return result;
}

void sub_1001C441C(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_totalCountLabel);
  v4 = a1[7];
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A6C61746F54;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);

  v7 = String._bridgeToObjectiveC()();

  [v3 setText:v7];

  v8 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_adCountLabel);
  v9 = *a1;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 2128928;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1003D5360;
    *(v12 + 56) = &type metadata for Float;
    *(v12 + 64) = &protocol witness table for Float;
    *(v12 + 32) = (v9 * 100.0) / v4;
    v13 = String.init(format:_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v13);

  v17._countAndFlagsBits = 540689473;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);

  v18 = String._bridgeToObjectiveC()();

  [v8 setText:v18];

  v19 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_arkitCountLabel);
  v20 = a1[1];
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 2128928;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1003D5360;
    *(v23 + 56) = &type metadata for Float;
    *(v23 + 64) = &protocol witness table for Float;
    *(v23 + 32) = (v20 * 100.0) / v4;
    v24 = String.init(format:_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v24);

  v28._countAndFlagsBits = 0x203A74694B5241;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);

  v29 = String._bridgeToObjectiveC()();

  [v19 setText:v29];

  v30 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_localCountLabel);
  v31 = a1[2];
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 2128928;
  v33._object = 0xE300000000000000;
  String.append(_:)(v33);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1003D5360;
    *(v34 + 56) = &type metadata for Float;
    *(v34 + 64) = &protocol witness table for Float;
    *(v34 + 32) = (v31 * 100.0) / v4;
    v35 = String.init(format:_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v38 = v37;
  String.append(_:)(*&v35);

  v39._countAndFlagsBits = 0x203A6C61636F4CLL;
  v39._object = 0xE700000000000000;
  String.append(_:)(v39);

  v40 = String._bridgeToObjectiveC()();

  [v30 setText:v40];

  v41 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_patchCountLabel);
  v42 = a1[3];
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 2128928;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  v45 = 0xE000000000000000;
  if (v4)
  {
    sub_10000F974(&unk_1004AF710);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1003D5360;
    *(v46 + 56) = &type metadata for Float;
    *(v46 + 64) = &protocol witness table for Float;
    *(v46 + 32) = (v42 * 100.0) / v4;
    v47 = String.init(format:_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v50 = v49;
  String.append(_:)(*&v47);

  v51._countAndFlagsBits = 0x203A6863746150;
  v51._object = 0xE700000000000000;
  String.append(_:)(v51);

  v52 = String._bridgeToObjectiveC()();

  [v41 setText:v52];

  v53 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_fallbackCountLabel);
  _StringGuts.grow(_:)(17);

  v54 = a1[5];
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 2128928;
  v56._object = 0xE300000000000000;
  String.append(_:)(v56);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1003D5360;
    *(v57 + 56) = &type metadata for Float;
    *(v57 + 64) = &protocol witness table for Float;
    *(v57 + 32) = (v54 * 100.0) / v4;
    v58 = String.init(format:_:)();
    v45 = v59;
  }

  else
  {
    v58 = 0;
  }

  v60 = v45;
  String.append(_:)(*&v58);

  v61._countAndFlagsBits = 0x6B6361626C6C6146;
  v61._object = 0xEA0000000000203ALL;
  String.append(_:)(v61);

  v62 = String._bridgeToObjectiveC()();

  [v53 setText:v62];

  v63 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_inferredCountLabel);
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v65 = a1[4];
  v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v66);

  v67._countAndFlagsBits = 2128928;
  v67._object = 0xE300000000000000;
  String.append(_:)(v67);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1003D5360;
    *(v68 + 56) = &type metadata for Float;
    *(v68 + 64) = &protocol witness table for Float;
    *(v68 + 32) = (v65 * 100.0) / v4;
    v69 = String.init(format:_:)();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xE000000000000000;
  }

  v72 = v71;
  String.append(_:)(*&v69);

  v73._countAndFlagsBits = 0x6465727265666E49;
  v73._object = 0xEA0000000000203ALL;
  String.append(_:)(v73);

  v74 = String._bridgeToObjectiveC()();

  [v63 setText:v74];

  v75 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_prevCountLabel);
  _StringGuts.grow(_:)(17);

  v76 = a1[6];
  v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v77);

  v78._countAndFlagsBits = 2128928;
  v78._object = 0xE300000000000000;
  String.append(_:)(v78);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1003D5360;
    *(v79 + 56) = &type metadata for Float;
    *(v79 + 64) = &protocol witness table for Float;
    *(v79 + 32) = (v76 * 100.0) / v4;
    v80 = String.init(format:_:)();
    v64 = v81;
  }

  else
  {
    v80 = 0;
  }

  v82 = v64;
  String.append(_:)(*&v80);

  v83._countAndFlagsBits = 0x73756F6976657250;
  v83._object = 0xEA0000000000203ALL;
  String.append(_:)(v83);

  v84 = String._bridgeToObjectiveC()();

  [v75 setText:v84];

  sub_1001C562C();
}

UIColor sub_1001C4EE8()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_1004AF608 = result.super.isa;
  return result;
}

char *sub_1001C4F3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_maxWidth] = 0;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  if (qword_1004A0840 != -1)
  {
    swift_once();
  }

  v10 = qword_1004AF608;
  [v9 setTextColor:qword_1004AF608];
  [v9 setTextAlignment:0];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:12.0];
  [v9 setFont:v12];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_totalCountLabel] = v9;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v13 setTextColor:v10];
  [v13 setTextAlignment:0];
  v14 = [v11 systemFontOfSize:12.0];
  [v13 setFont:v14];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_adCountLabel] = v13;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v15 setTextColor:v10];
  [v15 setTextAlignment:0];
  v16 = [v11 systemFontOfSize:12.0];
  [v15 setFont:v16];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_arkitCountLabel] = v15;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v17 setTextColor:v10];
  [v17 setTextAlignment:0];
  v18 = [v11 systemFontOfSize:12.0];
  [v17 setFont:v18];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_localCountLabel] = v17;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v19 setTextColor:v10];
  [v19 setTextAlignment:0];
  v20 = [v11 systemFontOfSize:12.0];
  [v19 setFont:v20];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_patchCountLabel] = v19;
  v21 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v21 setTextColor:v10];
  [v21 setTextAlignment:0];
  v22 = [v11 systemFontOfSize:12.0];
  [v21 setFont:v22];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_fallbackCountLabel] = v21;
  v23 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v23 setTextColor:v10];
  [v23 setTextAlignment:0];
  v24 = [v11 systemFontOfSize:12.0];
  [v23 setFont:v24];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_inferredCountLabel] = v23;
  v25 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v25 setTextColor:v10];
  [v25 setTextAlignment:0];
  v26 = [v11 systemFontOfSize:12.0];
  [v25 setFont:v26];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_prevCountLabel] = v25;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_totalCountLabel];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_adCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_localCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_arkitCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_patchCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_inferredCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_fallbackCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_prevCountLabel]];
  v30 = [v29 layer];
  LODWORD(v31) = 1.0;
  [v30 setShadowOpacity:v31];

  v32 = [v29 layer];
  [v32 setShadowOffset:{0.0, 0.0}];

  [v29 setUserInteractionEnabled:0];
  return v29;
}

void sub_1001C562C()
{
  v1 = v0;
  v2 = [v0 superview];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v1 subviews];
  v54 = sub_100018630(0, &qword_1004A7550);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
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
          goto LABEL_14;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [v16 sizeToFit];

      ++v15;
      if (v18 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v19 = [v1 subviews];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = 0;
    v23 = 0.0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v24 frame];
      v28 = v27;

      v23 = v23 + v28;
      ++v22;
      if (v26 == j)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v23 = 0.0;
LABEL_30:

  v29 = OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_maxWidth;
  v30 = *&v1[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_maxWidth];
  v31 = [v1 subviews];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_42;
    }
  }

  sub_1000A2530(0, v33 & ~(v33 >> 63), 0);
  if (v33 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  for (k = 0; k != v33; ++k)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(v32 + 8 * k + 32);
    }

    v36 = v35;
    [v35 frame];
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (*&v40 >= *&v39 >> 1)
    {
      sub_1000A2530((*&v39 > 1uLL), *&v40 + 1, 1);
    }

    *&_swiftEmptyArrayStorage[2] = *&v40 + 1;
    _swiftEmptyArrayStorage[*&v40 + 4] = v38;
  }

LABEL_42:

  *&v41 = COERCE_DOUBLE(sub_10004FEFC(_swiftEmptyArrayStorage));
  v43 = v42;

  v44 = *&v41;
  if (v43)
  {
    v44 = 0.0;
  }

  if (v44 >= v30)
  {
    if ((~*&v44 & 0x7FF0000000000000) != 0)
    {
      v30 = v44;
    }

    else if ((*&v44 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v30 = v44;
    }
  }

  *&v1[v29] = v30;
  v56.origin.x = v5;
  v56.origin.y = v7;
  v56.size.width = v9;
  v56.size.height = v11;
  [v1 setFrame:{0.0, CGRectGetMidY(v56) + v23 * -0.5, *&v1[v29], v23}];
  v45 = [v1 subviews];
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
    if (v47)
    {
LABEL_52:
      if (v47 >= 1)
      {
        v48 = 0;
        v49 = 0.0;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v50 = *(v46 + 8 * v48 + 32);
          }

          v51 = v50;
          ++v48;
          [v50 frame];
          [v51 setFrame:?];
          [v51 frame];
          v53 = v52;

          v49 = v49 + v53;
        }

        while (v47 != v48);
        goto LABEL_59;
      }

LABEL_63:
      __break(1u);
      return;
    }
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_52;
    }
  }

LABEL_59:
}

id sub_1001C5C98(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v9 = &v8[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a7;
  v9[7] = a8;
  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  type metadata accessor for SCNVector3(0);
  v17 = v16;
  v30 = v16;
  v27 = v11;
  v28 = v13;
  v29 = v15;
  sub_1001C7C44(&v27, 0x3050656E696CLL, 0xE600000000000000, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v27, &unk_1004A6970);
  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v30 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  sub_1001C7C44(&v27, 0x3150656E696CLL, 0xE600000000000000, &selRef_setValue_forKeyPath_);
  result = sub_100018F04(&v27, &unk_1004A6970);
  if (v8[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers] == 1)
  {
    if (v8[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide])
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_1001C822C();
    }

    [v8 setHidden:{v22 & 1, *&a1, *&a2, *&a3, *&a4}];
    return sub_1001C6D64();
  }

  return result;
}

void sub_1001C5E40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1001C5E8C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  v28 = *(v11 - 8);
  result = __chkstk_darwin(a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString) != result || *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString + 8) != v13)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v22 = sub_100018630(0, &qword_1004A3F00);
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100038BFC(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
      v23 = v3;
      v24 = v6;
      v26 = v11;
      sub_10000F974(&qword_1004ABEE0);
      v25 = v4;
      sub_100038C44(&qword_1004A4030, &qword_1004ABEE0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v27 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
      v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1001C8F00;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_100472A68;
      v19 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v29 = _swiftEmptyArrayStorage;
      sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80);
      sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
      v20 = v24;
      v21 = v23;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);

      (*(v25 + 8))(v20, v21);
      (*(v28 + 8))(v15, v26);
    }
  }

  return result;
}

void sub_1001C638C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v40 = v4;
    v41 = v1;
    v42 = v0;
    v38 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive;
    v39 = v5;
    if (*(Strong + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive) == 1)
    {
      v37 = [*(Strong + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB) diffuse];
      v10 = *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
      v11 = *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString + 8];
      v12 = qword_1004A04E8;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = qword_1004AD940;
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      *(v14 + 24) = v11;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1001C9300;
      *(v15 + 24) = v14;
      v47 = sub_1001C9304;
      v48 = v15;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v16 = &v45;
      v45 = sub_1001C5E40;
      v46 = &unk_100472BA8;
      v17 = _Block_copy(&aBlock);

      v18 = [v13 imageWithActions:v17];
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v20 = v37;
        [v37 setContents:v18];

        sub_100018630(0, &qword_1004A3F00);
        v21 = static OS_dispatch_queue.main.getter();
        v22 = swift_allocObject();
        *(v22 + 16) = v9;
        v47 = sub_1001C8FD4;
        v48 = v22;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v23 = &unk_100472BF8;
LABEL_10:
        v45 = sub_100041180;
        v46 = v23;
        v33 = _Block_copy(&aBlock);
        v34 = v9;

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80);
        sub_100038C44(&qword_1004A30D0, &unk_1004A3D80);
        v35 = v42;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v33);

        (*(v41 + 8))(v3, v35);
        (*(v39 + 8))(v7, v40);
        v9[v38] = (v9[v38] & 1) == 0;

        return;
      }

      __break(1u);
    }

    else
    {
      v37 = [*(Strong + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA) diffuse];
      v16 = *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
      v11 = *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString + 8];
      v24 = qword_1004A04E8;

      if (v24 == -1)
      {
LABEL_8:
        v25 = qword_1004AD940;
        v26 = swift_allocObject();
        *(v26 + 16) = v16;
        *(v26 + 24) = v11;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_10018CAEC;
        *(v27 + 24) = v26;
        v47 = sub_1001C8F20;
        v48 = v27;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1001C5E40;
        v46 = &unk_100472AE0;
        v28 = _Block_copy(&aBlock);

        v29 = [v25 imageWithActions:v28];
        _Block_release(v28);
        v30 = swift_isEscapingClosureAtFileLocation();

        if (v30)
        {
          __break(1u);
          return;
        }

        v31 = v37;
        [v37 setContents:v29];

        sub_100018630(0, &qword_1004A3F00);
        v21 = static OS_dispatch_queue.main.getter();
        v32 = swift_allocObject();
        *(v32 + 16) = v9;
        v47 = sub_1001C8F80;
        v48 = v32;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v23 = &unk_100472B30;
        goto LABEL_10;
      }
    }

    swift_once();
    goto LABEL_8;
  }
}

void sub_1001C6AD8(unsigned __int8 a1)
{
  if (v1[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation] == a1)
  {
    return;
  }

  v2 = v1;
  [v1 simdTransform];
  *v7.i64 = sub_100077814(v4, v5, v6);
  v24 = v7;
  sub_10018D338(a1);
  v9 = vnegq_f32(v8);
  v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
  v11 = vrev64q_s32(v8);
  v11.i32[0] = v9.i32[1];
  v11.i32[3] = v9.i32[2];
  v25 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v24.f32, 1), vextq_s8(v10, v10, 8uLL), v24.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v8, v24, 3), v11, v24, 2));
  v12 = Float.piDiv2.unsafeMutableAddressor();
  v13 = __sincosf_stret(*v12 * -0.5);
  v14 = vmulq_n_f32(xmmword_1003D8A60, v13.__sinval);
  v14.i32[3] = LODWORD(v13.__cosval);
  v15 = vnegq_f32(v14);
  v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
  v17 = vrev64q_s32(v14);
  v17.i32[0] = v15.i32[1];
  v17.i32[3] = v15.i32[2];
  v18 = *&v1[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number];
  [v18 setSimdOrientation:{*vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, v25, 3), v17, v25, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v14, v15, 8uLL), *v25.f32, 1), vextq_s8(v16, v16, 8uLL), v25.f32[0])).i64}];
  sub_100018630(0, &qword_1004A1318);
  SCNBoundingVolume.boundingBox.getter();
  v19 = v28;
  v20 = (*&v27 + *(&v28 + 1)) * 0.5;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1 != 2)
  {
LABEL_6:
    v19 = v26;
  }

LABEL_7:
  v26 = 1065353216;
  v28 = 0;
  v27 = 0;
  v29 = 1065353216;
  v30 = 0;
  v31 = 0;
  v32 = 1065353216;
  v33 = v19;
  v34 = v20;
  v35 = 0x3F80000000000000;
  [v18 setPivot:{&v26, *&v25}];
  if (((a1 - 1) & 0xFD) != 0)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [*&v2[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA] diffuse];
  v26 = 1065353216;
  v28 = 0;
  v27 = 0;
  v29 = 1056964608;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  v34 = v21;
  v35 = 0x3F80000000000000;
  [v22 setContentsTransform:&v26];

  v23 = [*&v2[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB] diffuse];
  v26 = 1065353216;
  v28 = 0;
  v27 = 0;
  v29 = 1056964608;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  v34 = v21;
  v35 = 0x3F80000000000000;
  [v23 setContentsTransform:&v26];
}

id sub_1001C6D64()
{
  v1 = v0;
  simd_float4x4.position.getter();
  v40 = v2;
  simd_float4x4.position.getter();
  v4 = vsubq_f32(v40, v3);
  v5 = vmulq_f32(v4, v4);
  v6 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  [v0 simdTransform];
  v42 = v8;
  v43 = v7;
  v41 = v9;
  v10 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation;
  sub_10018D338(v0[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation]);
  v44 = v11;
  v12 = *Float.piDiv2.unsafeMutableAddressor();
  simd_float4x4.position.getter();
  v39 = v13;
  simd_float4x4.position.getter();
  v15 = vsubq_f32(v39, v14);
  v16 = vmulq_f32(v15, v15);
  v17 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
  v18 = *(**&v0[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__unitState] + 144);

  v18(v19);

  v20 = sub_1000983B8();
  v22 = sub_1001C84B4(v20, v17);
  if (v6 > 0.00000011921)
  {
    v23 = &v0[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
    v24 = *&v0[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
    *v23 = v22;
    v23[1] = v21;
    sub_1001C5E8C(v24);
  }

  v25 = *&v0[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number];
  v26 = v1[v10];
  sub_100018630(0, &qword_1004A1318);
  SCNBoundingVolume.boundingBox.getter();
  v27 = v48;
  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v26 != 2)
  {
LABEL_9:
    v27 = v46;
  }

LABEL_10:
  v28 = (*&v47 + *(&v48 + 1)) * 0.5;
  *v29.i64 = sub_100077814(v43, v42, v41);
  v30 = vnegq_f32(v44);
  v31 = vtrn2q_s32(v44, vtrn1q_s32(v44, v30));
  v32 = vrev64q_s32(v44);
  v32.i32[0] = v30.i32[1];
  v32.i32[3] = v30.i32[2];
  v45 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v44, v30, 8uLL), *v29.f32, 1), vextq_s8(v31, v31, 8uLL), v29.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v44, v29, 3), v32, v29, 2));
  v33 = __sincosf_stret(v12 * -0.5);
  v34 = vmulq_n_f32(xmmword_1003D8A60, v33.__sinval);
  v34.i32[3] = LODWORD(v33.__cosval);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vrev64q_s32(v34);
  v37.i32[0] = v35.i32[1];
  v37.i32[3] = v35.i32[2];
  v45.i64[0] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v34, v35, 8uLL), *v45.f32, 1), vextq_s8(v36, v36, 8uLL), v45.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v34, v45, 3), v37, v45, 2)).u64[0];
  v46 = 1065353216;
  v48 = 0;
  v47 = 0;
  v49 = 1065353216;
  v50 = 0;
  v51 = 0;
  v52 = 1065353216;
  v53 = v27;
  v54 = v28;
  v55 = 0x3F80000000000000;
  [v25 setPivot:{&v46, *&v39}];
  [v25 setSimdOrientation:*v45.i64];
  return [v25 setSimdPosition:0.0];
}

char *sub_1001C70CC(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v8[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive] = 1;
  v11 = sub_10018C1EC(9);
  [v11 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720);
  if (swift_dynamicCast())
  {
    v12 = v52;
  }

  else
  {
    v12 = [objc_allocWithZone(SCNMaterial) init];
  }

  v13 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA;
  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA] = v12;
  v14 = sub_10018C1EC(9);
  [v14 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v15 = v52;
  }

  else
  {
    v15 = [objc_allocWithZone(SCNMaterial) init];
  }

  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB] = v15;
  v16 = &v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__unitState;
  KeyPath = swift_getKeyPath();
  v19 = sub_10000F974(&unk_1004A72E0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v20 = qword_1004D5058;
  v21 = *(v19 + 272);
  swift_retain_n();
  *&v9[v17] = v21(KeyPath, v20);
  v22 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__orientationState;
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&unk_1004A4910);
  *&v9[v22] = (*(v24 + 272))(v23, v20);
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation] = 2;
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide] = 1;
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isOcclusionInitialized] = 0;
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers] = 0;
  v25 = &v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = a7;
  v25[7] = a8;
  v26 = [objc_opt_self() planeWithWidth:400.0 height:125.0];
  v27 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_plane;
  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_plane] = v26;
  [v26 setFirstMaterial:*&v9[v13]];
  v28 = [objc_opt_self() nodeWithGeometry:*&v9[v27]];
  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number] = v28;
  v51.receiver = v9;
  v51.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v51, "init");
  [v29 setHidden:1];
  [v29 addChildNode:*&v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number]];
  sub_1001C6D64();
  if (((v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation] - 1) & 0xFD) != 0)
  {
    v30 = 0.5;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = [*&v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA] diffuse];
  *v42 = 1065353216;
  v43 = 0;
  *&v42[4] = 0;
  v44 = 1056964608;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48 = 0;
  v49 = v30;
  v50 = 0x3F80000000000000;
  [v31 setContentsTransform:v42];

  v32 = [*&v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB] diffuse];
  *v42 = 1065353216;
  v43 = 0;
  *&v42[4] = 0;
  v44 = 1056964608;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48 = 0;
  v49 = v30;
  v50 = 0x3F80000000000000;
  [v32 setContentsTransform:v42];

  v45 = &type metadata for CGFloat;
  *v42 = 0x3FF0000000000000;
  sub_1001C7C44(v42, 0x6D754E646E457369, 0xEB00000000726562, &selRef_setValue_forKeyPath_);
  sub_100018F04(v42, &unk_1004A6970);
  if (qword_1004A0418 != -1)
  {
    swift_once();
  }

  v45 = &type metadata for Float;
  *v42 = dword_1004D4FD4;
  sub_1001C7C44(v42, 0xD000000000000012, 0x80000001004004A0, &selRef_setValue_forKeyPath_);

  sub_100018F04(v42, &unk_1004A6970);
  return v29;
}

uint64_t sub_1001C7664()
{
  if (![objc_opt_self() jasperAvailable] || (v1 = objc_opt_self(), v2 = objc_msgSend(v1, "standardUserDefaults"), v3 = objc_msgSend(v2, "isLineOcclusionEnabled"), v2, !v3) || (v4 = *MeasureCore.shared.unsafeMutableAddressor(), swift_beginAccess(), (v5 = *(v4 + 112)) == 0))
  {
    v46[3] = &type metadata for CGFloat;
    v46[0] = 0;
    sub_1001C7C44(v46, 0xD000000000000010, 0x80000001004005E0, &selRef_setValue_forKeyPath_);
    return sub_100018F04(v46, &unk_1004A6970);
  }

  v6 = v0;
  v7 = qword_1004A0638;

  if (v7 != -1)
  {
    swift_once();
  }

  UIColor.rgba.getter();
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  result = swift_beginAccess();
  if (!*(v5 + 192))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  ADProcessor.transformer.getter();

  Transformer.clipToCameraNormalized.getter();

  simd_float3x3.copy(from:)();
  v9 = [v1 standardUserDefaults];
  v10 = [v9 isLineOcclusionEnabled];

  v11 = 0.0;
  if (v10)
  {
    v11 = 1.0;
  }

  v42 = &type metadata for CGFloat;
  v39 = *&v11;
  sub_1001C7C44(&v39, 0xD000000000000010, 0x80000001004005E0, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v39, &unk_1004A6970);
  SCNVector4.init(_:_:_:_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  type metadata accessor for SCNVector4(0);
  v42 = v20;
  v39 = __PAIR64__(v15, v13);
  v40 = v17;
  v41 = v19;
  sub_1001C7C44(&v39, 0x646564756C63636FLL, 0xED0000726F6C6F43, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v39, &unk_1004A6970);
  v42 = &type metadata for CGFloat;
  v39 = 0x3FB99999A0000000;
  sub_1001C7C44(&v39, 0x636E6172656C6F74, 0xE900000000000065, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v39, &unk_1004A6970);
  SCNVector3.init(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  type metadata accessor for SCNVector3(0);
  v28 = v27;
  v42 = v27;
  v39 = __PAIR64__(v24, v22);
  v40 = v26;
  sub_1001C7C44(&v39, 0xD000000000000012, 0x8000000100400600, &selRef_setValue_forKey_);
  sub_100018F04(&v39, &unk_1004A6970);
  SCNVector3.init(_:)();
  v42 = v28;
  v39 = __PAIR64__(v30, v29);
  v40 = v31;
  sub_1001C7C44(&v39, 0xD000000000000012, 0x8000000100400620, &selRef_setValue_forKey_);
  sub_100018F04(&v39, &unk_1004A6970);
  SCNVector3.init(_:)();
  v42 = v28;
  v39 = __PAIR64__(v33, v32);
  v40 = v34;
  sub_1001C7C44(&v39, 0xD000000000000012, 0x8000000100400640, &selRef_setValue_forKey_);
  result = sub_100018F04(&v39, &unk_1004A6970);
  v35 = *(v5 + 192);
  if (!v35)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (*(v35 + 242) == 1)
  {
    swift_beginAccess();
    v36 = *(v35 + 256);
    swift_unknownObjectRetain();
  }

  else
  {

    v36 = ADProcessor.outputDepthTexture.getter();
  }

  v39 = v36;
  swift_unknownObjectRetain_n();
  sub_10000F974(&unk_1004A4980);
  v37 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v38 = [objc_opt_self() materialPropertyWithContents:v37];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v42 = sub_100018630(0, &unk_1004AF730);
  v39 = v38;
  sub_1001C7C44(&v39, 0x7275747865546461, 0xE900000000000065, &selRef_setValue_forKey_);

  swift_unknownObjectRelease();
  result = sub_100018F04(&v39, &unk_1004A6970);
  *(v6 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isOcclusionInitialized) = 1;
  return result;
}

void sub_1001C7C44(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA);
  sub_10002D2A0(a1, v26);
  v8 = v27;
  if (v27)
  {
    v9 = sub_10000FEBC(v26, v27);
    v25[1] = v25;
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = a4;
    v13 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    v15 = v13;
    a4 = v12;
    (*(v10 + 8))(v15, v8);
    sub_10000FF00(v26);
  }

  else
  {
    v14 = 0;
  }

  v16 = String._bridgeToObjectiveC()();
  [v7 *a4];
  swift_unknownObjectRelease();

  v17 = *(v4 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB);
  sub_10002D2A0(a1, v26);
  v18 = v27;
  if (v27)
  {
    v19 = sub_10000FEBC(v26, v27);
    v20 = *(v18 - 8);
    __chkstk_darwin(v19);
    v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    v23 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v20 + 8))(v22, v18);
    sub_10000FF00(v26);
  }

  else
  {
    v23 = 0;
  }

  v24 = String._bridgeToObjectiveC()();
  [v17 *a4];
  swift_unknownObjectRelease();
}

void sub_1001C7F24()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__orientationState) + 144);

  v1(&v5, v2);

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v3 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.forward.unsafeMutableAddressor();
      v4 = 0.5;
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_3;
      }

      v3 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.forward.unsafeMutableAddressor();
      v4 = -0.5;
    }

    __sincosf_stret(v3 * v4);
  }

  else
  {
    if (v5 != 2)
    {
LABEL_3:
      vmulq_f32(*SIMD3<>.forward.unsafeMutableAddressor(), 0);
      return;
    }

    SIMD3<>.forward.unsafeMutableAddressor();
  }
}

void sub_1001C803C()
{
  sub_1001C6D64();
  sub_1001C7F24();
  v22 = v1;
  type metadata accessor for MeasureCamera();
  simd_float4x4.position.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  v2 = vmulq_f32(v22, xmmword_1003D68A0);
  v3 = vnegq_f32(v2);
  v4 = vtrn2q_s32(v2, vtrn1q_s32(v2, v3));
  v20 = vextq_s8(v2, v3, 8uLL);
  v21 = vextq_s8(v4, v4, 8uLL);
  v6 = vrev64q_s32(v2);
  v6.i32[0] = v3.i32[1];
  v6.i32[3] = v3.i32[2];
  v18 = v6;
  v7 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v20, *v5.f32, 1), v21, v5.f32[0]), v6, v5, 2);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v10 = vrev64q_s32(v7);
  v10.i32[0] = v8.i32[1];
  v10.i32[3] = v8.i32[2];
  v19 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, v22, 3), v10, v22, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v22.f32, 1), vextq_s8(v9, v9, 8uLL), v22.f32[0]));
  simd_float4x4.position.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  v12 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v20, *v11.f32, 1), v21, v11.f32[0]), v18, v11, 2);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v22.f32, 1), vextq_s8(v14, v14, 8uLL), v22.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  if (vmovn_s32(vcgtq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v22, 3), v16, v22, 2), v15), v19)).u8[0])
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  sub_1001C6AD8(v17);
  *(v0 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation) = v17;
}

uint64_t sub_1001C822C()
{
  simd_float4x4.position.getter();
  v9 = v0;
  result = simd_float4x4.position.getter();
  v3 = vsubq_f32(v9, v2);
  v4 = vmulq_f32(v3, v3);
  v5 = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  if (qword_1004A0410 != -1)
  {
    result = swift_once();
  }

  v6 = v5 - *&dword_1004D4FD0;
  if (qword_1004A0408 != -1)
  {
    result = swift_once();
  }

  v7 = floorf(v6 / *&dword_1004D4FCC);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < 9.2234e18)
  {
    if (qword_1004A0440 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  result = swift_once();
LABEL_9:
  if (qword_1004D4FF0)
  {
    if (v7 != 0x8000000000000000 || qword_1004D4FF0 != -1)
    {
      return v7 % qword_1004D4FF0 == 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C84B4(uint64_t a1, float a2)
{
  v5 = sub_10000F974(&qword_1004A9BF0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v84 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  Defaults.measurementBias.unsafeMutableAddressor();

  v13 = String._bridgeToObjectiveC()();

  [v12 floatForKey:v13];

  if (a1 == 1)
  {
    v14 = a2;
    v15 = 1;
LABEL_9:
    sub_10010DE20(v15, 0, 0, &v87[0]._countAndFlagsBits, v14);
    countAndFlagsBits = v87[0]._countAndFlagsBits;
    v88 = v87[1];
    sub_100018F04(&v88, &qword_1004A72C0);
    return countAndFlagsBits;
  }

  if (!a1)
  {
    v16 = objc_opt_self();
    v17 = [v16 meters];
    sub_100018630(0, &qword_1004A9BF8);
    Measurement.init(value:unit:)();
    v18 = [v16 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v20 = v19;
    v21 = *(v6 + 8);
    v21(v9, v5);
    v21(v11, v5);
    v22 = v20;
    if (v22 <= 12.0 || v22 >= 36.0)
    {
      v14 = a2;
      v15 = 0;
      goto LABEL_9;
    }

    v26 = roundf(v22 + v22) * 0.5;
    v27 = floorf(v26);
    if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v27 > -9.2234e18)
    {
      if (v27 < 9.2234e18)
      {
        v28 = floorf(v22 / 12.0);
        if ((LODWORD(v28) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v28 > -9.2234e18)
          {
            if (v28 < 9.2234e18)
            {
              v2 = v28;
              v29 = 12 * v28;
              if ((v28 * 12) >> 64 == v29 >> 63)
              {
                *&v20 = v22 - v29;
                v30 = roundf(*&v20);
                if (v30 == 12.0)
                {
                  a2 = 0.0;
                }

                else
                {
                  a2 = v30;
                }

                if (qword_1004A02F0 == -1)
                {
LABEL_22:
                  v31 = qword_1004D4EB8;
                  v32 = objc_allocWithZone(NSDecimalNumber);
                  *&v33 = a2;
                  v34 = [v32 initWithFloat:v33];
                  v35 = [v31 stringFromNumber:v34];

                  if (v35)
                  {
                    v36 = floorf(*&v20);
                    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v39 = v38;

                    v40 = objc_allocWithZone(NSDecimalNumber);
                    *&v41 = v36;
                    v42 = [v40 initWithFloat:v41];
                    v43 = [v31 stringFromNumber:v42];

                    if (v43)
                    {
                      v44 = v26 - v27;
                      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v47 = v46;

                      v48 = roundf(v26);
                      v86 = v2;
                      if (v44 <= 0.00000011921 || v48 >= 36.0)
                      {
                        v53 = [objc_opt_self() mainBundle];
                        v90._object = 0xE000000000000000;
                        v54._countAndFlagsBits = 0x9D80E24025;
                        v54._object = 0xA500000000000000;
                        v55._countAndFlagsBits = 0;
                        v55._object = 0xE000000000000000;
                        v90._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v90);

                        sub_10000F974(&unk_1004AF710);
                        v56 = swift_allocObject();
                        *(v56 + 16) = xmmword_1003D5360;
                        *(v56 + 56) = &type metadata for String;
                        *(v56 + 64) = sub_1000192D0();
                        *(v56 + 32) = v37;
                        *(v56 + 40) = v39;

                        countAndFlagsBits = String.init(format:_:)();
                        v58 = v57;
                      }

                      else
                      {
                        v49 = [objc_opt_self() mainBundle];
                        v89._object = 0xE000000000000000;
                        v50._countAndFlagsBits = 0x9D80E2BDC24025;
                        v50._object = 0xA700000000000000;
                        v51._countAndFlagsBits = 0;
                        v51._object = 0xE000000000000000;
                        v89._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v89);

                        sub_10000F974(&unk_1004AF710);
                        v52 = swift_allocObject();
                        *(v52 + 16) = xmmword_1003D5360;
                        *(v52 + 56) = &type metadata for String;
                        *(v52 + 64) = sub_1000192D0();
                        if (v36 <= 0.0)
                        {
                          *(v52 + 32) = 0;
                          *(v52 + 40) = 0xE000000000000000;
                        }

                        else
                        {
                          *(v52 + 32) = v45;
                          *(v52 + 40) = v47;
                        }

                        countAndFlagsBits = String.init(format:_:)();
                        v58 = v59;
                        v2 = v86;
                      }

                      v60 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v2];
                      v61 = [v31 stringFromNumber:v60];

                      if (v61)
                      {

                        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v64 = v63;

                        v65 = objc_opt_self();
                        v66 = [v65 mainBundle];
                        v91._object = 0xE000000000000000;
                        v67._countAndFlagsBits = 0xB280E240243125;
                        v85 = "bserver";
                        v68.value._object = 0x8000000100407540;
                        v67._object = 0xA700000000000000;
                        v68.value._countAndFlagsBits = 0xD000000000000014;
                        v69._countAndFlagsBits = 0;
                        v69._object = 0xE000000000000000;
                        v91._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v66, v69, v91);

                        sub_10000F974(&unk_1004AF710);
                        v70 = swift_allocObject();
                        *(v70 + 16) = xmmword_1003D5360;
                        *(v70 + 56) = &type metadata for String;
                        v71 = sub_1000192D0();
                        *(v70 + 64) = v71;
                        *(v70 + 32) = v62;
                        *(v70 + 40) = v64;
                        v72 = String.init(format:_:)();
                        v74 = v73;

                        if (a2 <= 0.0)
                        {
                          if (v86 < 1)
                          {

                            if (v44 <= 0.00000011921)
                            {

                              v80 = [v65 mainBundle];
                              v93._object = 0xE000000000000000;
                              v81._countAndFlagsBits = 0x9D80E2BDC2203CLL;
                              v81._object = 0xA700000000000000;
                              v82._countAndFlagsBits = 0;
                              v82._object = 0xE000000000000000;
                              v93._countAndFlagsBits = 0;
                              v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v81, 0, v80, v82, v93);

                              v87[0] = v83;
                              return String.init<A>(_:)();
                            }

                            return countAndFlagsBits;
                          }

                          if (v44 <= 0.00000011921)
                          {

                            return v72;
                          }
                        }

                        else if (v86 <= 0)
                        {

                          return countAndFlagsBits;
                        }

                        v75 = [v65 mainBundle];
                        v92._object = 0xE000000000000000;
                        v76._countAndFlagsBits = 0x2432252040243125;
                        v77.value._object = (v85 | 0x8000000000000000);
                        v76._object = 0xE900000000000040;
                        v77.value._countAndFlagsBits = 0xD000000000000014;
                        v78._countAndFlagsBits = 0;
                        v78._object = 0xE000000000000000;
                        v92._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v92);

                        v79 = swift_allocObject();
                        *(v79 + 16) = xmmword_1003D5730;
                        *(v79 + 56) = &type metadata for String;
                        *(v79 + 64) = v71;
                        *(v79 + 32) = v72;
                        *(v79 + 40) = v74;
                        *(v79 + 96) = &type metadata for String;
                        *(v79 + 104) = v71;
                        *(v79 + 72) = countAndFlagsBits;
                        *(v79 + 80) = v58;
                        countAndFlagsBits = String.init(format:_:)();

                        return countAndFlagsBits;
                      }

                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

LABEL_48:
                swift_once();
                goto LABEL_22;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_52:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C8EC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C8F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C8F48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C8F8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1001C9010()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive) = 1;
  v2 = sub_10018C1EC(9);
  [v2 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720);
  if (swift_dynamicCast())
  {
    v3 = v15;
  }

  else
  {
    v3 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA) = v3;
  v4 = sub_10018C1EC(9);
  [v4 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v5 = v15;
  }

  else
  {
    v5 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB) = v5;
  v6 = (v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__unitState;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A72E0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  *(v1 + v7) = v11(KeyPath, v10);
  v12 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__orientationState;
  v13 = swift_getKeyPath();
  v14 = sub_10000F974(&unk_1004A4910);
  *(v1 + v12) = (*(v14 + 272))(v13, v10);
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation) = 2;
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide) = 1;
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isOcclusionInitialized) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001C9308()
{
  sub_10000F974(&qword_1004AF740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1003D5360;
  sub_10000F974(&qword_1004AF748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5730;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey;
  *(inited + 40) = 6;
  *(inited + 48) = UIFontFeatureSelectorIdentifierKey;
  *(inited + 56) = 0;
  v3 = UIFontFeatureTypeIdentifierKey;
  v4 = UIFontFeatureSelectorIdentifierKey;
  v5 = sub_100199D50(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AF750);
  swift_arrayDestroy();
  *(v1 + 32) = v5;
  sub_10000F974(&qword_1004AF758);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1003D5360;
  *(v6 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  *(v6 + 40) = v1;
  v7 = UIFontDescriptorFeatureSettingsAttribute;
  v8 = sub_100199E3C(v6);
  swift_setDeallocating();
  sub_1001C9538(v6 + 32);
  sub_100193B14(v8);
  type metadata accessor for AttributeName(0);
  sub_10019FEDC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100193B14(v8);

  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v0 fontDescriptorByAddingAttributes:v10];

  return v11;
}

uint64_t sub_1001C9538(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AF760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001C95B8(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = sub_1001C9E48(a2, a3);
  v7 = v6;
  v8 = v6 >> 62;
  if (a1)
  {
    if (v8)
    {
      goto LABEL_47;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (i)
      {
        v10 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v11 = *(v7 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if ((*((swift_isaMask & *v11) + 0xD0))() == 3)
          {
            goto LABEL_40;
          }

          ++v10;
          if (v13 == i)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:

        v18 = sub_1001C9E48(v4, v3);
        v7 = v18;
        if (v18 >> 62)
        {
          v19 = _CocoaArrayWrapper.endIndex.getter();
          if (!v19)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v19)
          {
            goto LABEL_49;
          }
        }

        v3 = v7 & 0xC000000000000001;
        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v15 = __OFSUB__(v19--, 1);
          if (v15)
          {
            break;
          }

          if (v3)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v19 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            if (v19 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v21 = *(v7 + 32 + 8 * v19);
          }

          v12 = v21;
          type metadata accessor for WorldLine();
          if (swift_dynamicCastClass())
          {
            v20 = vdupq_n_s64((*((swift_isaMask & *v12) + 0xD0))());
            if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100464FB8, v20), vceqq_s64(unk_100464FC8, v20)))))
            {
              goto LABEL_40;
            }
          }

          else
          {
            type metadata accessor for WorldRectangle();
            if (swift_dynamicCastClass())
            {
              v22 = (*((swift_isaMask & *v12) + 0xD0))();
              if (v22 == 5 || v22 == 9)
              {
                goto LABEL_40;
              }
            }
          }

          if (!v19)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }
  }

  if (!v8)
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_16;
    }

LABEL_49:

    return 0;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
    goto LABEL_49;
  }

LABEL_16:
  v15 = __OFSUB__(v14, 1);
  result = v14 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_53;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_53:
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
    v12 = v17;
LABEL_40:

    return v12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v7 + 8 * result + 32);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

BOOL sub_1001C98F0()
{

  sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A1650);
  swift_dynamicCast();
  v0 = v21;
  if (v21 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v2 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v3 = *(v0 + 8 * v2 + 32);
        }

        v4 = v3;
        v5 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if ((*((swift_isaMask & *v3) + 0xD0))() == 1)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v2;
        if (v5 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_14:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = _swiftEmptyArrayStorage[2];
    }

    if (v6)
    {
      v7 = 0;
      goto LABEL_43;
    }

    sub_10000F974(&qword_1004A28B0);
    swift_dynamicCast();
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      v0 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
        break;
      }

      goto LABEL_21;
    }

    v0 = _CocoaArrayWrapper.endIndex.getter();
    if (!v0)
    {
      break;
    }

LABEL_21:
    v8 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v9 = _swiftEmptyArrayStorage[v8 + 4];
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((*((swift_isaMask & *v9) + 0xD0))() == 1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v8;
      if (v11 == v0)
      {
        goto LABEL_39;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_39:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage[2];
  }

  v7 = v12 == 0;
LABEL_43:
  v13 = [objc_opt_self() jasperAvailable] ^ 1;
  result = v13 & v7;
  if ((v13 & 1) == 0 && v7)
  {

    sub_10000F974(&qword_1004A3DA0);
    swift_dynamicCast();
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_60;
    }

    for (j = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = 0;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v17 = _swiftEmptyArrayStorage[v16 + 4];
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ((*((swift_isaMask & *v17) + 0xD0))())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v16;
        if (v19 == j)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      ;
    }

LABEL_61:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = _swiftEmptyArrayStorage[2];
    }

    return v20 == 0;
  }

  return result;
}

unint64_t sub_1001C9E48(uint64_t a1, uint64_t a2)
{

  sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A1650);
  swift_dynamicCast();
  if (v7 >> 62)
  {
    type metadata accessor for MeasureObject();

    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MeasureObject();
    v3 = v7;
  }

  sub_10000F974(&qword_1004A28B0);
  swift_dynamicCast();
  if (v7 >> 62)
  {
    type metadata accessor for MeasureObject();

    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MeasureObject();
    v4 = v7;
  }

  sub_100103C70(v4);
  if ([objc_opt_self() jasperAvailable])
  {

    sub_10000F974(&qword_1004A3DA0);
    swift_dynamicCast();
    if (v3 >> 62)
    {
      type metadata accessor for MeasureObject();

      v5 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for MeasureObject();
      v5 = v3;
    }

    sub_100103C70(v5);
  }

  return v3;
}

id sub_1001CA0D4()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D5420 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1001CA154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1001C9E48(a2, a3);
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_20:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v6 = 0;
    v18 = v4 & 0xC000000000000001;
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = v4 + 32;
LABEL_5:
    if (v18)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_18;
      }

      v4 = *(v8 + 8 * v6);
    }

    v9 = v4;
    if (!__OFADD__(v6++, 1))
    {
      break;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v15 = v4;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v15;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v11 = (*((swift_isaMask & *v4) + 0xD0))();
  v12 = *(a1 + 16);
  v13 = (a1 + 32);
  do
  {
    if (!v12)
    {

      if (v6 != v5)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }

    v14 = *v13++;
    --v12;
  }

  while (v14 != v11);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v4 = specialized ContiguousArray._endMutation()();
  if (v6 != v5)
  {
    goto LABEL_5;
  }

LABEL_15:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_24:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_23;
  }

LABEL_21:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v16 = *&_swiftEmptyArrayStorage[2];
LABEL_23:

  return v16 != 0;
}

id sub_1001CA33C@<X0>(void *a1@<X8>)
{
  if (qword_1004A0848 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D5420;
  *a1 = qword_1004D5420;

  return v2;
}

uint64_t sub_1001CA3AC(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10007B068(*a1, *a2) & 1) == 0 || (sub_10007B068(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10007B068(v3, v5);
}

unint64_t sub_1001CA42C(uint64_t a1)
{
  result = sub_1001CA454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001CA454()
{
  result = qword_1004AF790[0];
  if (!qword_1004AF790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004AF790);
  }

  return result;
}

uint64_t sub_1001CA4E0()
{
  sub_10000F974(&qword_1004A1650);
  sub_10000F974(&qword_1004A1648);
  swift_dynamicCast();
  sub_10000F974(&qword_1004A28B0);
  swift_dynamicCast();
  sub_10000F974(&qword_1004A3DA0);
  swift_dynamicCast();
  return v1;
}

uint64_t sub_1001CA5D4()
{
  type metadata accessor for WorldLine();
  if (swift_dynamicCastClass() || (type metadata accessor for WorldRectangle(), swift_dynamicCastClass()) || (type metadata accessor for WorldPerson(), swift_dynamicCastClass()))
  {

    return swift_getKeyPath();
  }

  else
  {
    _StringGuts.grow(_:)(30);

    swift_getObjectType();
    v1._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001CA714(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1001CA764(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1001CA7B0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t UIInterfaceOrientation.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x7469617274726F70;
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  result = 0x70616373646E616CLL;
  if (a1 != 4 && a1 != 3)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1001CA940()
{
  result = [objc_allocWithZone(type metadata accessor for UIKitContext()) init];
  qword_1004D5428 = result;
  return result;
}

uint64_t sub_1001CA970()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR____TtC7Measure12UIKitContext_contextQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001CBAAC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_100089BB8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DC708;
  aBlock[3] = &unk_100472F70;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;
    if (v10)
    {

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CAB04()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR____TtC7Measure12UIKitContext_contextQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001CBA90;
  *(v3 + 24) = v2;
  aBlock[4] = sub_100031688;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DC708;
  aBlock[3] = &unk_100472EF8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;
    if (v10)
    {

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CAC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v18;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = v19;
  v15 = _Block_copy(aBlock);
  v16 = v4;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

id sub_1001CAEB8()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = &v0[OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits];
  v16 = 1;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  v7[80] = 1;
  v12 = OBJC_IVAR____TtC7Measure12UIKitContext_contextQueue;
  sub_100018630(0, &qword_1004A3F00);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v8 = xmmword_1004D4B58;

  v15 = v8;
  v9._object = 0x800000010040D5C0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC7Measure12UIKitContext__observationMap] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC7Measure12UIKitContext__valueMap] = _swiftEmptyDictionarySingleton;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

Swift::Int sub_1001CB1FC()
{
  Hasher.init(_seed:)();
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001CB270()
{
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_1001CB2D4()
{
  Hasher.init(_seed:)();
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001CB344()
{
  type metadata accessor for AnyKeyPath();
  if ((static AnyKeyPath.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100018630(0, &qword_1004AE0D0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1001CB3C4(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1001CBB40;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100472FC0;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

id sub_1001CB660(uint64_t a1, id a2)
{
  [a2 center];
  v5 = v4;
  v7 = v6;
  [a2 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = [a2 bounds];
  v17 = a1 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  *v17 = v5;
  *(v17 + 8) = v7;
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = v18;
  *(v17 + 56) = v19;
  *(v17 + 64) = v20;
  *(v17 + 72) = v21;
  *(v17 + 80) = 0;
  return result;
}

uint64_t KeyPath.description.getter()
{
  v0 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    sub_10000F974(&unk_1004AFC50);
    v9 = String.init<A>(describing:)();
    v4._countAndFlagsBits = 15917;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    v5 = v2;
    v6 = v3;
  }

  else
  {
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    sub_10000F974(&unk_1004AFC50);
    v9 = String.init<A>(describing:)();
    v7._countAndFlagsBits = 15917;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    v5 = String.init<A>(describing:)();
  }

  String.append(_:)(*&v5);

  return v9;
}

__n128 sub_1001CB8B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001CB8D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CB8F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

unint64_t sub_1001CB948()
{
  result = qword_1004AF860;
  if (!qword_1004AF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF860);
  }

  return result;
}

uint64_t sub_1001CB9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CB9C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CBA10(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1001CBA58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CBAB8(void *a1)
{
  **(v1 + 16) = *(*(v1 + 24) + *a1);
}

uint64_t sub_1001CBB00()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001CBDEC()
{
  result = qword_1004AF8B8;
  if (!qword_1004AF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF8B8);
  }

  return result;
}

double sub_1001CBE40()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure10UndoButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010040CBA0;
  v4._countAndFlagsBits = 0xD000000000000013;
  Log.default(_:isPrivate:)(v4, 0);
  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = *(v5 + 8) + 1.0;
  *(v5 + 8) = result;
  return result;
}

uint64_t sub_1001CBF70()
{
  v1 = sub_10000F974(&qword_1004A2D60);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  [v0 bounds];
  CGRect.center.getter();
  [v0 bounds];
  CGRect.init(centerPoint:size:)();
  v13 = [objc_opt_self() bezierPathWithOvalInRect:{v9, v10, v11, v12}];
  [v8 setVisiblePath:v13];

  sub_100040E00();
  *v7 = [objc_allocWithZone(UITargetedPreview) initWithView:v0 parameters:v8];
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v14 = type metadata accessor for UIPointerShape();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = UIPointerStyle.init(effect:shape:)();

  return v15;
}

uint64_t sub_1001CC1D8()
{
  _StringGuts.grow(_:)(40);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v0._object = 0x800000010040D690;
  v0._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v0);
  v1 = String._bridgeToObjectiveC()();

  qword_1004D5430 = v1;
  return result;
}

void sub_1001CC2AC(void *a1)
{
  v1 = qword_1004AF8C8;
  qword_1004AF8C8 = a1;
  v5 = a1;

  v2 = [v5 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    if ((byte_1004AF8C0 & 1) == 0)
    {
      v3 = 1;
      goto LABEL_8;
    }
  }

  else if (byte_1004AF8C0)
  {
    v3 = 0;
LABEL_8:
    byte_1004AF8C0 = v3;
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1004A0858 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_1004D5430 object:0];
  }
}

void sub_1001CC5CC(char a1, double a2)
{
  v5 = 1.0;
  if ((a1 & 1) == 0)
  {
    v6 = *&v2[qword_1004AF980];
    v5 = 0.0;
    if (v6)
    {
      [v6 setAlpha:0.0];
    }
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = a1 & 1;
  v8 = objc_allocWithZone(UIViewPropertyAnimator);
  v12[4] = sub_10001B41C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100041180;
  v12[3] = &unk_100473230;
  v9 = _Block_copy(v12);
  v10 = v2;

  v11 = [v8 initWithDuration:v9 dampingRatio:a2 animations:1.0];
  _Block_release(v9);
  [v11 setInterruptible:0];
  [v11 startAnimation];
}

id sub_1001CC738()
{
  v1 = qword_1004AF900;
  v2 = *(v0 + qword_1004AF900);
  if (v2)
  {
    v3 = *(v0 + qword_1004AF900);
  }

  else
  {
    type metadata accessor for OverlayMetalView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001CC7B0()
{
  v1 = qword_1004AF908;
  v2 = *(v0 + qword_1004AF908);
  if (v2)
  {
    v3 = *(v0 + qword_1004AF908);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(NonRotatingARSCNView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v5 setAutoresizingMask:36];
    [v5 setLockedOrientation:*effectiveStatusBarOrientation.unsafeMutableAddressor()];
    v6 = v5;
    [v6 setAutomaticallyOccludesVirtualContent:0];
    v7 = [objc_allocWithZone(SCNScene) init];
    [v6 setScene:v7];

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v8 = [v6 sceneRenderingQueue];
    v9 = *(&xmmword_1004D4AE8 + 1);
    *(&xmmword_1004D4AE8 + 1) = v8;

    if ([objc_opt_self() jasperAvailable])
    {
      v10 = sub_1001CC738();
      [v6 addSubview:v10];

      [v6 sendSubviewToBack:*(v4 + qword_1004AF900)];
    }

    sub_100018630(0, &qword_1004A1930);
    if ((static UIDevice.isIPad()() & 1) != 0 && (static UIDevice.isDeviceQualified(family:minVersion:)() & 1) == 0)
    {
      [v6 setPreferredFramesPerSecond:30];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_1001CCA0C(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + qword_1004AF910);
  if (v3 && *&v3[qword_1004AB570])
  {
    goto LABEL_3;
  }

  v5 = *(v2 + qword_1004AF938);
  if (!v5 || !*(*(v5 + 64) + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8))
  {
    return;
  }

  if (v3)
  {
    if (*&v3[qword_1004AB570])
    {
LABEL_3:
      v9 = v3;
      a1();
LABEL_11:

      return;
    }

    if (!*(v2 + qword_1004AF938))
    {
      return;
    }
  }

  v8 = a2(v7);
  if (v8)
  {
    v9 = v8;
    sub_1000B2F84();

    goto LABEL_11;
  }
}

void sub_1001CCB48()
{
  if ([objc_opt_self() jasperAvailable])
  {
    v1 = *(v0 + qword_1004AF978);
    if (v1)
    {
      type metadata accessor for EditViewSpatial();
      if (swift_dynamicCastClass())
      {
        v4 = v1;
        sub_10000F974(&unk_1004AFBD0);
        sub_10001D47C(&qword_1004A8DE0, &unk_1004AFBD0);
        Subject<>.send()();
      }

      else
      {
        type metadata accessor for EditViewCompactSpatial();
        if (swift_dynamicCastClass())
        {
          v2 = v1;

          StateValue.wrappedValue.getter();

          v3 = *(v5 + 16);

          if (!v3)
          {
            sub_10000F974(&unk_1004AFBD0);
            sub_10001D47C(&qword_1004A8DE0, &unk_1004AFBD0);
            Subject<>.send()();
          }
        }
      }
    }
  }
}

uint64_t sub_1001CCD64(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = sub_10000F974(&unk_1004ABA88);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = *(v2 + qword_1004AF910);
  if (v8 && *&v8[qword_1004AB570])
  {
    v9 = v8;
    a1();

    v10 = type metadata accessor for IndexPath();
    v11 = (*(*(v10 - 8) + 48))(v7, 1, v10) != 1;
    sub_100018F04(v7, &unk_1004ABA88);
  }

  else if (*(v2 + qword_1004AF938))
  {

    v11 = a2(v12);

    if (v11)
    {

      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_1001CCEC0()
{
  v1 = *&v0[qword_1004AF988];
  if (v1)
  {
    v2 = v0;
    v3 = *(**&v0[qword_1004AF9B8] + 144);

    v4 = v1;
    v3(&v17);

    if ((v17 & 0x100) != 0)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        v6 = qword_1004AF9A8;
        if (*&v2[qword_1004AF9A8])
        {
          if (([v4 isDescendantOfView:?] & 1) == 0)
          {
            v7 = *&v2[v6];
            if (v7)
            {
              [v7 addSubview:v4];
              v8 = [v2 view];
              if (v8)
              {
                v9 = *&v2[v6];
                if (v9)
                {
                  v10 = v8;
                  [v8 bringSubviewToFront:v9];
                  goto LABEL_21;
                }

LABEL_34:
                __break(1u);
                return;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_23:

          return;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    if (xmmword_1004D4AE8)
    {
      v11 = [xmmword_1004D4AE8 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v4 isDescendantOfView:v11];

        if (v13)
        {
          goto LABEL_23;
        }

        if (xmmword_1004D4AE8)
        {
          v14 = [xmmword_1004D4AE8 view];
          if (v14)
          {
            v15 = v14;
            [v14 addSubview:v4];

            if (xmmword_1004D4AE8)
            {
              v16 = [xmmword_1004D4AE8 view];
              if (v16)
              {
                v10 = v16;
                [v16 bringSubviewToFront:v4];
LABEL_21:

                if (*&v2[qword_1004AF958])
                {

                  sub_1001390A0(1, 0, nullsub_1, 0);
                }

                goto LABEL_23;
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

void sub_1001CD160()
{
  v1 = *(v0 + qword_1004AF910);
  if (v1)
  {
    *(swift_allocObject() + 16) = v1;
    sub_10000F974(&qword_1004ABB68);
    swift_allocObject();
    v2 = v1;
    v8[0] = Future.init(_:)();
    sub_10001D47C(&unk_1004ABB70, &qword_1004ABB68);
    v3 = Publisher.sink(receiveCompletion:receiveValue:)();

    *&v2[qword_1004AB638] = v3;

    v4 = *&v2[qword_1004AB518];
    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:{0, v8[0]}];
    }

    [*(*&v2[qword_1004AB508] + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
    v5 = *(**&v2[qword_1004AB540] + 400);

    v6 = v5(v8);
    *(v7 + 4) = 0;
    v6(v8, 0);
  }
}

uint64_t sub_1001CD37C()
{
  v1 = v0;
  v2 = [v0 subviews];
  sub_100018630(0, &qword_1004A7550);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v41[0] = &_swiftEmptyArrayStorage;
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = &_swiftEmptyArrayStorage;
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for SpatialGenericPlatter();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v41[0];
  }

  while (v5 != v4);
LABEL_21:

  v10 = [v1 subviews];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_63;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = v6;
  if (!result)
  {
LABEL_64:

    return v13;
  }

LABEL_23:
  if (result >= 1)
  {
    v14 = 0;
    v37 = result;
    v38 = v11 & 0xC000000000000001;
    v35 = v11;
    v36 = v11 + 32;
    while (1)
    {
      if (v38)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v36 + 8 * v14);
      }

      v16 = v15;
      v17 = sub_1001CD37C();
      v18 = v17;
      v6 = (v17 >> 62);
      if (v17 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v13 >> 62;
      if (v13 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v19;
      v22 = __OFADD__(v21, v19);
      v23 = v21 + v19;
      if (v22)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        result = _CocoaArrayWrapper.endIndex.getter();
        v13 = v6;
        if (!result)
        {
          goto LABEL_64;
        }

        goto LABEL_23;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v20)
      {
        goto LABEL_40;
      }

LABEL_41:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v24 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_42:
      v39 = v16;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v6)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        if (!v27)
        {
LABEL_25:

          if (v40 > 0)
          {
            goto LABEL_59;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_25;
        }
      }

      if (((v26 >> 1) - v25) < v40)
      {
        goto LABEL_60;
      }

      v28 = v24 + 8 * v25 + 32;
      if (v6)
      {
        if (v27 < 1)
        {
          goto LABEL_62;
        }

        sub_10001D47C(&qword_1004AFC68, &qword_1004AFC60);
        for (i = 0; i != v27; ++i)
        {
          sub_10000F974(&qword_1004AFC60);
          v30 = sub_10013BA68(v41, i, v18);
          v32 = *v31;
          (v30)(v41, 0);
          *(v28 + 8 * i) = v32;
        }

        v11 = v35;
        v6 = v40;
        if (v40 <= 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        type metadata accessor for SpatialGenericPlatter();
        v6 = v40;
        swift_arrayInitWithCopy();

        if (v40 <= 0)
        {
          goto LABEL_26;
        }
      }

      v33 = *(v24 + 16);
      v22 = __OFADD__(v33, v6);
      v34 = &v6[v33];
      if (v22)
      {
        goto LABEL_61;
      }

      *(v24 + 16) = v34;
LABEL_26:
      if (++v14 == v37)
      {
        goto LABEL_64;
      }
    }

    if (!v20)
    {
      v24 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v23 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

LABEL_40:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_1001CD86C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018630(0, &qword_1004A3F00);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (*(sub_1001CA970() + 16))
  {
    sub_1001988D0(a1, a2);
    v12 = v11;

    if (v12)
    {
      return;
    }
  }

  else
  {
  }

  if (qword_1004A0240 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v50._countAndFlagsBits = 0x6E6976726573624FLL;
  v50._object = 0xEA00000000002067;
  v13._countAndFlagsBits = KeyPath.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 544108320;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  v15 = [a2 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  Log.debug(_:isPrivate:)(v50, 0);

  v50._countAndFlagsBits = a2;

  v20 = a2;
  swift_getAtKeyPath();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v21._object = 0x800000010040DA40;
  v21._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v21);
  v22._countAndFlagsBits = KeyPath.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 544108320;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24 = [v20 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 8250;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30 = v52;
  *&v48[0] = v52;
  type metadata accessor for UIContentSizeCategory(0);
  v32 = v31;
  _print_unlocked<A, B>(_:_:)();
  Log.debug(_:isPrivate:)(v50, 0);

  v51 = v32;
  v50._countAndFlagsBits = v30;

  v33 = v20;
  v34 = v30;
  v35 = sub_1001CAB04();
  v49 = v35;
  if (v32)
  {
    v36 = v35;
    sub_1000C0FAC(&v50, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v36;
    sub_1000BCE4C(v48, a1, v33, isUniquelyReferenced_nonNull_native);

    v38 = v47;
  }

  else
  {
    sub_100018F04(&v50, &unk_1004A6970);
    sub_1000C69DC(a1, v33, v48);

    sub_100018F04(v48, &unk_1004A6970);
    v38 = v49;
  }

  sub_1001CAC70(v38);
  v50._countAndFlagsBits = v33;
  v39 = swift_allocObject();
  v39[2] = a1;
  v39[3] = v3;
  v39[4] = a1;
  v39[5] = v33;
  swift_retain_n();
  v40 = v33;
  v3;
  v41 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v42 = v40;
  v43 = v41;
  v44 = sub_1001CA970();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v50._countAndFlagsBits = v44;
  sub_1000BCCC8(v43, a1, v42, v45);

  sub_1001CAADC(v50._countAndFlagsBits);
}

void sub_1001CDDF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_1004AF960);
  *(a1 + qword_1004AF960) = a3;
  v3 = a3;
}

void sub_1001CDE48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_1004AF968);
  *(a1 + qword_1004AF968) = a3;
  v3 = a3;
}

uint64_t sub_1001CDEA0()
{

  StateValue.ifUpdated(_:)();
}

void sub_1001CDF0C(void *a1)
{
  v1 = qword_1004AF9A0;
  if ((*(a1 + qword_1004AF9A0) & 1) == 0)
  {
    v4 = a1;
    v3 = sub_1001CC7B0();
    [v4 setView:v3];

    *(a1 + v1) = 1;
  }
}

_UNKNOWN **sub_1001CDFA8(uint64_t a1)
{
  sub_100018630(0, &qword_1004A1930);
  v3 = static UIDevice.isIPad()();
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    result = &off_100465778;
  }

  else
  {
    result = &off_1004657B8;
  }

  v6 = &unk_100465788;
  if (v4)
  {
    v6 = &unk_1004657C8;
  }

  v7 = *v6;
  v8 = &unk_1004657D8;
  if (!v4)
  {
    v8 = &unk_100465798;
  }

  v9 = v7 & ~(v7 >> 63);
  while (v7)
  {
    if (!v9)
    {
      __break(1u);
      return result;
    }

    v10 = *v8++;
    --v9;
    --v7;
    if (v10 == a1)
    {

      v11 = *(**(v1 + qword_1004AF9C0) + 400);

      v12 = v11(v20);
      *v13 = a1;
      v12(v20, 0);
    }
  }

  if (!a1)
  {
    v14 = qword_1004AF9C0;
    v15 = *(**(v1 + qword_1004AF9C0) + 144);

    v15(v20, v16);

    if (!v20[0])
    {
      v17 = *(**(v1 + v14) + 400);

      v18 = v17(v20);
      *v19 = 1;
      v18(v20, 0);
    }
  }

  return result;
}

void sub_1001CE188(void *a1)
{
  v2 = objc_opt_self();
  v5 = a1;
  v3 = [v2 currentDevice];
  v4 = [v3 orientation];

  sub_1001CDFA8(v4);
}

uint64_t sub_1001CE218()
{
}

id sub_1001CE3D8()
{
  ObjectType = swift_getObjectType();
  [objc_opt_self() jasperAvailable];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001CE434(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  v4 = a1;
  [v3 jasperAvailable];
  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_1001CE4A8(uint64_t a1)
{
}

void sub_1001CE674(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  [objc_opt_self() jasperAvailable];
}

void sub_1001CE6EC()
{
  v1 = v0;
  v240.receiver = v0;
  v240.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v240, "viewDidLoad");
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v2 = sub_1001CC7B0();
  sub_1001CB3C4(v2);

  KeyPath = swift_getKeyPath();
  v4 = [objc_opt_self() sharedApplication];
  sub_1001CD86C(KeyPath, v4);

  v230 = objc_opt_self();
  v5 = [v230 defaultCenter];
  [v5 addObserver:v1 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];

  v6 = qword_1004AF908;
  v7 = qword_1004A0180;
  v8 = *&v1[qword_1004AF908];
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1001D2D58(qword_1004D4AE0);
  v10 = [objc_opt_self() mainScreen];
  [v10 _referenceBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  Width = v17;

  if (!v9)
  {
    v241.origin.x = v12;
    v241.origin.y = v14;
    v241.size.width = v16;
    v241.size.height = Width;
    Height = CGRectGetHeight(v241);
    v242.origin.x = v12;
    v242.origin.y = v14;
    v242.size.width = v16;
    v242.size.height = Width;
    Width = CGRectGetWidth(v242);
    v12 = 0.0;
    v14 = 0.0;
    v16 = Height;
  }

  [v8 setFrame:{v12, v14, v16, Width}];

  [*&v1[v6] setAutoenablesDefaultLighting:0];
  [*&v1[v6] setAntialiasingMode:2];
  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.shouldLockFramerate()())
  {
    [*&v1[v6] setPreferredFramesPerSecond:30];
  }

  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_79;
  }

  v21 = v20;
  v22 = *&v1[v6];
  type metadata accessor for DebugVisualizer();
  swift_allocObject();
  sub_10006EEEC(v21, v22);
  qword_1004D4AC8 = v23;

  [*&v1[v6] center];
  SIMD2<>.init(_:)();
  v25 = v24;
  v26 = *(**&v1[qword_1004AF9B0] + 200);

  v28 = v26(v27);

  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v29 + 24) = 1106247680;
  (*(*v28 + 280))(sub_1001D2D78, v29);

  type metadata accessor for ShaderCache();
  v30 = *&v1[v6];
  sub_100187CB8(v30);

  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  v32 = type metadata accessor for ActionView();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC7Measure10ActionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v34 = &v33[OBJC_IVAR____TtC7Measure10ActionView_shouldPreventManipulatingPoint];
  *v34 = sub_1001D2D8C;
  v34[1] = v31;
  v239.receiver = v33;
  v239.super_class = v32;
  v35 = v1;

  v36 = objc_msgSendSuper2(&v239, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v36 setAutoresizingMask:18];

  v37 = qword_1004AF9A8;
  v38 = *&v35[qword_1004AF9A8];
  *&v35[qword_1004AF9A8] = v36;
  v39 = v36;

  [*&v1[v6] bounds];
  [v39 setFrame:?];

  v40 = [v35 view];
  if (!v40)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (!*&v35[v37])
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v41 = v40;
  [v40 addSubview:?];

  v42 = qword_1004D4B10;
  qword_1004D4B10 = *&v35[v37];
  v43 = qword_1004D4B10;

  v44 = static UIDevice.isIPhone()();
  v45 = *&v35[v37];
  if (v44)
  {
    if (!v45)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    [v45 bounds];
    v48 = *&v35[v37];
    if (!v48)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v49 = v46;
    v50 = v47;
    [v48 bounds];
    v51 = CGRectGetWidth(v243);
    v52 = *&v35[v37];
    if (!v52)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v53 = v51;
    [v52 bounds];
    v54 = CGRectGetHeight(v244);
    v55 = [v35 tabBarController];
    if (!v55)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v56 = v55;
    v57 = [v55 tabBar];

    [v57 frame];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v245.origin.x = v59;
    v245.origin.y = v61;
    v245.size.width = v63;
    v245.size.height = v65;
    v66 = CGRectGetHeight(v245);
    v67 = *&v35[v37];
    if (!v67)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v68 = v54 - v66;
    [v67 layoutMargins];
    v70 = v68 - v69;
  }

  else
  {
    if (!v45)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    [v45 bounds];
    v49 = v71;
    v50 = v72;
    v53 = v73;
    v70 = v74;
  }

  v75 = *&v35[v37];
  if (!v75)
  {
    goto LABEL_81;
  }

  v76 = v37;
  v77 = *&v1[v6];
  v78 = objc_allocWithZone(type metadata accessor for LabelView());
  v79 = v35;
  v80 = sub_1000C4D40(v75, v77, v53, v70);
  v81 = *&v80[OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController];
  *&v80[OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController] = v79;

  v82 = *&v79[qword_1004AF968];
  v234 = qword_1004AF968;
  *&v79[qword_1004AF968] = v80;

  v83 = *&v35[v76];
  if (!v83)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v84 = v76;
  [v83 frame];
  v85 = [*&v1[v6] scene];
  v86 = objc_allocWithZone(type metadata accessor for LineView());
  v87 = sub_1000DB574(v85);
  v88 = *&v79[qword_1004AF970];
  v231 = qword_1004AF970;
  *&v79[qword_1004AF970] = v87;

  v89 = *&v35[v76];
  if (!v89)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v89 frame];
  v94 = [objc_allocWithZone(type metadata accessor for ReticleView()) initWithFrame:{v90, v91, v92, v93}];
  v95 = qword_1004AF960;
  v96 = *&v79[qword_1004AF960];
  *&v79[qword_1004AF960] = v94;

  v232 = objc_opt_self();
  v97 = [v232 jasperAvailable];
  v98 = static UIDevice.isIPad()();
  v237 = v6;
  v235 = v95;
  if (v97)
  {
    if (v98)
    {
      v99 = [objc_allocWithZone(type metadata accessor for EditViewSpatial()) initWithFrame:{v49, v50, v53, v70}];
      v100 = *&v79[qword_1004AF978];
      *&v79[qword_1004AF978] = v99;
      v101 = v99;

      v102 = *&v79[v234];
      if (v102)
      {
        aBlock[0] = *&v101[qword_1004A89A0];
        v103 = v102;
        sub_10000F974(&unk_1004AFBD0);
        sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0);
        *&v103[OBJC_IVAR____TtC7Measure9LabelView_historyPressedPublisher] = Publisher.eraseToAnyPublisher()();
      }

      [*&v1[v6] bounds];
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;
      aBlock[0] = *&v101[qword_1004A89A0];
      sub_10000F974(&unk_1004AFBD0);
      sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0);
      v112 = Publisher.eraseToAnyPublisher()();
      v113 = objc_allocWithZone(type metadata accessor for HistoryViewCoordinator());
      v114 = v79;
      v115 = sub_10014B4D0(v114, v112, 0, v105, v107, v109, v111);

      v116 = *&v114[qword_1004AF910];
      *&v114[qword_1004AF910] = v115;
    }

    else
    {
      v118 = [objc_allocWithZone(type metadata accessor for EditViewCompactSpatial()) initWithFrame:{v49, v50, v53, v70}];
      v119 = *&v79[qword_1004AF978];
      *&v79[qword_1004AF978] = v118;
      v120 = v118;

      v121 = *&v79[v234];
      if (v121)
      {
        aBlock[0] = *&v120[qword_1004AD990];
        v122 = v121;
        sub_10000F974(&unk_1004AFBD0);
        sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0);
        *&v122[OBJC_IVAR____TtC7Measure9LabelView_historyPressedPublisher] = Publisher.eraseToAnyPublisher()();
      }

      [*&v1[v6] bounds];
      v124 = v123;
      v126 = v125;
      v128 = v127;
      v130 = v129;
      aBlock[0] = *&v120[qword_1004AD990];
      sub_10000F974(&unk_1004AFBD0);
      sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0);
      v131 = Publisher.eraseToAnyPublisher()();
      objc_allocWithZone(type metadata accessor for HistoryViewCoordinator());
      v132 = v79;
      v133 = sub_10014B4D0(v132, v131, 0, v124, v126, v128, v130);
      v134 = *&v132[qword_1004AF910];
      *&v132[qword_1004AF910] = v133;

      v135 = [v132 navigationItem];
      v136 = *&v120[qword_1004A4F48];
      if (v136)
      {
        v137 = *(v136 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone);
      }

      else
      {
        v137 = 0;
      }

      [v135 setLeftBarButtonItem:v137];

      v148 = [v132 navigationItem];
      v149 = *&v120[qword_1004A4F40];

      if (v149)
      {
        v116 = *(v149 + 32);
      }

      else
      {
        v116 = 0;
      }

      [v148 setRightBarButtonItem:v116];
    }
  }

  else if (v98)
  {
    v117 = [objc_allocWithZone(type metadata accessor for EditViewRegular()) initWithFrame:{v49, v50, v53, v70}];
    v116 = *&v79[qword_1004AF978];
    *&v79[qword_1004AF978] = v117;
  }

  else
  {
    v138 = [objc_allocWithZone(type metadata accessor for EditViewCompact()) initWithFrame:{v49, v50, v53, v70}];
    v139 = qword_1004AF978;
    v140 = *&v79[qword_1004AF978];
    *&v79[qword_1004AF978] = v138;

    v141 = [v79 navigationItem];
    v142 = *&v79[v139];
    if (v142 && (v143 = *(v142 + qword_1004A4F40)) != 0)
    {
      v144 = *(v143 + 32);
    }

    else
    {
      v144 = 0;
    }

    [v141 setRightBarButtonItem:v144];

    v145 = [v79 navigationItem];
    v146 = *&v79[v139];
    if (v146)
    {
      v147 = *(v146 + qword_1004A4F38);
      if (v147)
      {
        v116 = *(v147 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem);
      }

      else
      {
        v116 = 0;
      }
    }

    else
    {
      v116 = 0;
    }

    [v145 setLeftBarButtonItem:v116];
  }

  v150 = [*&v1[v6] session];
  v151 = objc_allocWithZone(type metadata accessor for CoachingView());
  sub_1000412F4(v150, v49, v50, v53, v70);
  v152 = *&v79[qword_1004AF980];
  v233 = qword_1004AF980;
  *&v79[qword_1004AF980] = v153;
  v154 = v153;

  v155 = [objc_opt_self() standardUserDefaults];
  Defaults.disableAllCoaching.unsafeMutableAddressor();

  v156 = String._bridgeToObjectiveC()();

  v157 = [v155 BOOLForKey:v156];

  [v154 setHidden:v157];
  v158 = qword_1004AF978;
  v159 = qword_1004D4B18;
  qword_1004D4B18 = *&v79[qword_1004AF978];
  v160 = qword_1004D4B18;

  [*&v1[v6] frame];
  v165 = [objc_allocWithZone(type metadata accessor for PrivacyView()) initWithFrame:{v161, v162, v163, v164}];
  v166 = qword_1004AF988;
  v167 = *&v79[qword_1004AF988];
  *&v79[qword_1004AF988] = v165;

  v168 = *&v35[v84];
  if (!v168)
  {
    goto LABEL_84;
  }

  if (!*&v79[v235])
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  [v168 addSubview:?];
  v169 = *&v35[v84];
  if (!v169)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (!*&v79[v158])
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v169 addSubview:?];
  v170 = *&v35[v84];
  if (!v170)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (!*&v79[v233])
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v170 addSubview:?];
  v171 = qword_1004D4AD8;
  if (!qword_1004D4AD8)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v172 = *&v79[v235];
  if (!v172)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v229 = v158;
  v227 = v166;
  type metadata accessor for ReticleController();
  swift_allocObject();
  v173 = v172;
  v236 = v171;

  v174 = sub_1001776A4(v173);
  v175 = qword_1004AF920;
  *&v79[qword_1004AF920] = v174;

  v226 = v84;
  v176 = *&v35[v84];
  if (!v176)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v228 = v175;
  v177 = *&v1[v6];
  type metadata accessor for ActionController();
  swift_allocObject();
  v178 = v79;
  v179 = v176;
  v180 = sub_10001AF38(v177, v179, v178);

  *&v178[qword_1004AF928] = v180;

  v181 = *&v79[v231];
  if (!v181)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  type metadata accessor for LineController();
  swift_allocObject();
  v182 = sub_1000CEB64(v181);
  v183 = qword_1004AF930;
  *&v178[qword_1004AF930] = v182;
  swift_retain_n();

  sub_1001D27A4(v182, v171, &off_10046CE40);

  qword_1004D4B00 = *&v178[v183];

  v184 = *&v79[v234];
  if (!v184)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  type metadata accessor for LabelController();
  swift_allocObject();
  v185 = v178;
  v186 = v184;
  v187 = sub_100091A48(v186, v185);

  v188 = qword_1004AF938;
  *&v185[qword_1004AF938] = v187;
  swift_retain_n();

  sub_1001D27A4(v187, v171, &off_10046B990);

  qword_1004D4AF8 = *&v185[v188];

  v189 = *&v1[v6];
  sub_10000F974(&qword_1004AFC30);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1003D5730;
  v191 = *&v79[v234];
  if (!v191)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v192 = v190;
  *(v190 + 32) = v191;
  *(v190 + 40) = &off_10046C980;
  v193 = *&v79[v231];
  if (!v193)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  *(v190 + 48) = v193;
  *(v190 + 56) = &off_10046D0D0;
  type metadata accessor for CaptureController();
  swift_allocObject();
  v194 = v189;
  v195 = v191;
  v196 = v193;
  v197 = sub_100038744(v194, v192);

  v198 = qword_1004AF940;
  *&v185[qword_1004AF940] = v197;

  if ([v232 jasperAvailable])
  {
    if (!*&v185[v198])
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (!*&v79[v234])
    {
LABEL_112:
      __break(1u);
      return;
    }

    swift_unknownObjectUnownedAssign();
  }

  v199 = *&v79[v229];
  if (!v199)
  {
    goto LABEL_97;
  }

  v200 = *&v185[v198];
  if (!v200)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  type metadata accessor for EditController();
  swift_allocObject();

  v201 = v199;
  v202 = sub_100085C0C(v201, v200);

  v203 = qword_1004AF948;
  *&v185[qword_1004AF948] = v202;

  v204 = *&v79[v233];
  if (!v204)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v205 = *&v1[v237];
  type metadata accessor for CoachingController();
  swift_allocObject();
  v206 = v204;
  v207 = v205;
  sub_10003FE28(v207, v206);
  v209 = v208;

  v210 = *&v79[v233];
  if (!v210)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v211 = v210;
  sub_1001D2880(v211, v209, &off_100468F08);

  if (!*&v79[v228])
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_1001D2880(v212, v209, &off_1004707E8);

  if (!*&v185[v203])
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  sub_1001D2880(v213, v209, &off_10046AE58);

  sub_1001D27A4(v214, v236, &off_100468CF8);
  *&v185[qword_1004AF950] = v209;

  v215 = *&v79[v227];
  if (!v215)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v216 = *&v35[v226];
  if (!v216)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  type metadata accessor for PrivacyController();
  swift_allocObject();
  v217 = v216;
  v218 = v215;
  v219 = sub_100139644(v218);

  *&v185[qword_1004AF958] = v219;

  v220 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v185 action:"onTapOnSceneViewFrom:"];
  [v220 setDelegate:v185];
  [*&v1[v237] addGestureRecognizer:v220];
  if ([v232 internalInstall])
  {
    sub_1001CFEAC();
  }

  v221 = [v230 defaultCenter];
  v222 = swift_allocObject();
  *(v222 + 16) = v185;
  aBlock[4] = sub_1001D2DB4;
  aBlock[5] = v222;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DB768;
  aBlock[3] = &unk_1004731B8;
  v223 = _Block_copy(aBlock);
  v224 = v185;

  v225 = [v221 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:0 usingBlock:v223];
  _Block_release(v223);

  swift_unknownObjectRelease();
}

uint64_t sub_1001CFD14(double a1, double a2)
{
  v4 = sub_1001CC7B0();
  v5 = [v4 overlaySKScene];

  if (v5)
  {
    [v5 convertPointFromView:{a1, a2}];
    v6 = [v5 nodesAtPoint:?];
    sub_100018630(0, &unk_1004AFC20);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        type metadata accessor for TouchableSpriteNode();
        if (swift_dynamicCastClass())
        {

          return 1;
        }

        ++v9;
        if (v12 == i)
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

void sub_1001CFEAC()
{
  v1 = v0;
  if (qword_1004A0860 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5440;
  v40 = qword_1004D5440;
  v3 = qword_1004A0868;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1000551F8(xmmword_1004D5450, *(&xmmword_1004D5450 + 1), qword_1004D5460, v2);
  if (v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100054F10(v4);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v6 = v40;
  v7 = type metadata accessor for DefaultsViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC7Measure22DefaultsViewController_cancellables] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR____TtC7Measure22DefaultsViewController_groups] = v6;
  v39.receiver = v8;
  v39.super_class = v7;

  v9 = objc_msgSendSuper2(&v39, "initWithStyle:", 2);
  v10 = String._bridgeToObjectiveC()();
  [v9 setTitle:v10];

  v11 = xmmword_1004D4AB8;
  *&xmmword_1004D4AB8 = v9;

  v12 = [objc_allocWithZone(UIView) init];
  v13 = [v1 view];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  Width = CGRectGetWidth(v41);
  if (qword_1004A0520 != -1)
  {
    v38 = Width;
    swift_once();
    Width = v38;
  }

  [v12 setFrame:{0.0, 0.0, Width - (*&qword_1004D5090 + *&qword_1004D5090) + -160.0, 44.0}];
  v24 = [v1 view];
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v42.origin.x = v27;
  v42.origin.y = v29;
  v42.size.width = v31;
  v42.size.height = v33;
  v34 = CGRectGetWidth(v42) * 0.5;
  [v12 bounds];
  [v12 setCenter:{v34, CGRectGetHeight(v43) * 0.5}];
  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;

    [v36 addSubview:v12];

    v37 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"showDebugController"];
    [v37 setNumberOfTouchesRequired:2];
    [v12 addGestureRecognizer:v37];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1001D0290(uint64_t a1, uint64_t a2)
{
  v2 = qword_1004AF910;
  v3 = *(a2 + qword_1004AF910);
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = v3;
    if ([v5 jasperAvailable])
    {
      [*&v6[qword_1004AB508] removeFromSuperview];
    }

    v7 = sub_10014B260();
    [v6 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for HistoryViewCoordinator();
    if (swift_dynamicCast())
    {
      v8 = qword_1004D4F40;
      v12[qword_1004D4F40] = 1;
      v9 = *(a2 + v2);
      *(a2 + v2) = v12;
      v10 = v12;

      if (![v5 jasperAvailable])
      {
LABEL_8:
        sub_100151500(v7);

        v12[v8] = 0;

        return;
      }

      v11 = *(a2 + qword_1004AF9A8);
      if (v11)
      {
        [v11 addSubview:*&v10[qword_1004AB508]];
        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1001D0424(void *a1)
{
  v1 = a1;
  sub_1001CE6EC();
}

uint64_t sub_1001D046C(char a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  v3 = sub_1001CC7B0();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 lockRendererOrientation];
  }

  v5 = qword_1004AF908;
  [*&v1[qword_1004AF908] setNeedsLayout];
  [*&v1[v5] layoutIfNeeded];
  v6 = *(**&v1[qword_1004AF9B8] + 400);

  v7 = v6(v10);
  *(v8 + 2) = 1;
  v7(v10, 0);
}

void sub_1001D0594(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001D046C(a3);
}

void sub_1001D05E8(void *a1, uint64_t a2, uint64_t a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a3);
  v5 = *(**&v4[qword_1004AF9B8] + 400);

  v6 = v5(v8);
  *(v7 + 2) = 0;
  v6(v8, 0);
}

id sub_1001D06C8(uint64_t a1)
{
  result = *(a1 + qword_1004AF988);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

id sub_1001D06E8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "didReceiveMemoryWarning");
}

void sub_1001D0728(char *a1, char a2, double a3)
{
  v6 = *&a1[qword_1004AF960];
  if (v6)
  {
    [v6 setAlpha:a3];
  }

  v7 = *&a1[qword_1004AF978];
  if (v7)
  {
    [v7 setAlpha:a3];
  }

  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_17;
  }

  v8 = [a1 view];
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = sub_1001CD37C();

  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_9:
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v13 = *(v10 + 8 * i + 32);
          }

          v14 = v13;
          [v13 setAlpha:a3];
        }

        goto LABEL_16;
      }

      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }
  }

LABEL_16:

LABEL_17:
  if (a2)
  {
    v15 = *&a1[qword_1004AF980];
    if (v15)
    {

      [v15 setAlpha:a3];
    }
  }
}

void sub_1001D08D0(void *a1)
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1001CC7B0();
  [a1 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [*(v1 + qword_1004AF908) overlaySKScene];
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  [v11 convertPointFromView:{*&v8, *&v10}];
  v13 = [v12 nodesAtPoint:?];
  sub_100018630(0, &unk_1004AFC20);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v5;
  v34 = v3;
  v31 = v12;
  v32 = v1;
  if (v14 >> 62)
  {
LABEL_22:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_23:

    v5 = v33;
    v1 = v32;
LABEL_24:
    v21 = *(**(v1 + qword_1004AF9B0) + 200);

    v23 = v21(v22);

    v24 = swift_allocObject();
    *(v24 + 16) = v8;
    *(v24 + 24) = v10;
    (*(*v23 + 416))(sub_1001D2CD4, v24);

    goto LABEL_25;
  }

LABEL_4:
  v16 = 0;
  v17 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    type metadata accessor for TouchableSpriteNode();
    if (!swift_dynamicCastClass())
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        __break(1u);
        goto LABEL_32;
      }

      v17 = sub_1000C19FC();
      swift_unknownObjectRelease();
      break;
    }

    if (v20 == v15)
    {
      goto LABEL_23;
    }

    v17 = 0;
LABEL_6:
    ++v16;
  }

  if (v20 != v15)
  {
    goto LABEL_6;
  }

  v5 = v33;
  v1 = v32;
  if ((v17 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v25 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v26 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v25 + v26, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *v5;
      v28 = v25;
      v29 = sub_1000E0CE8();

      sub_100072394(0, v8, v10, 0);
    }

    else
    {
      sub_100085FD4(v5);
    }
  }

  else
  {
LABEL_32:
    __break(1u);
  }
}

void sub_1001D0CE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1001D08D0(v4);
}

uint64_t sub_1001D0D4C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1001D2BB0(v7);

  return v9 & 1;
}

id sub_1001D0DAC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[qword_1004AF900] = 0;
  *&v1[qword_1004AF908] = 0;
  *&v1[qword_1004AF910] = 0;
  v5 = qword_1004AF918;
  v6 = sub_10000F974(&unk_1004AFBE0);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v6 + 272);
  swift_retain_n();
  *&v2[v5] = v9(KeyPath, v8);
  *&v2[qword_1004AF920] = 0;
  *&v2[qword_1004AF928] = 0;
  *&v2[qword_1004AF930] = 0;
  *&v2[qword_1004AF938] = 0;
  *&v2[qword_1004AF940] = 0;
  *&v2[qword_1004AF948] = 0;
  *&v2[qword_1004AF950] = 0;
  *&v2[qword_1004AF958] = 0;
  *&v2[qword_1004AF960] = 0;
  *&v2[qword_1004AF968] = 0;
  *&v2[qword_1004AF970] = 0;
  *&v2[qword_1004AF978] = 0;
  *&v2[qword_1004AF980] = 0;
  *&v2[qword_1004AF988] = 0;
  *&v2[qword_1004AF990] = 0;
  v10 = qword_1004AF998;
  type metadata accessor for MotionObserver();
  v11 = swift_allocObject();
  *&v2[v10] = sub_1001D264C(v11);
  v2[qword_1004AF9A0] = 0;
  *&v2[qword_1004AF9A8] = 0;
  v12 = qword_1004AF9B0;
  sub_10000F974(&qword_1004A93B0);
  swift_getKeyPath();
  *&v2[v12] = MutableStateValue.__allocating_init(_:_:)();
  v13 = qword_1004AF9B8;
  sub_10000F974(&unk_1004AFBF0);
  swift_getKeyPath();
  *&v2[v13] = MutableStateValue.__allocating_init(_:_:)();
  v14 = qword_1004AF9C0;
  sub_10000F974(&qword_1004A93B8);
  swift_getKeyPath();
  *&v2[v14] = MutableStateValue.__allocating_init(_:_:)();
  v15 = qword_1004AF9C8;
  v16 = sub_10000F974(&unk_1004AFC00);
  v17 = swift_getKeyPath();
  *&v2[v15] = (*(v16 + 272))(v17, v8);
  v18 = qword_1004AF9D0;
  v19 = swift_getKeyPath();
  v20 = sub_10000F974(&qword_1004A7530);
  *&v2[v18] = (*(v20 + 272))(v19, v8);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "initWithCoder:", a1);

  if (v21)
  {
  }

  return v21;
}

uint64_t type metadata accessor for ViewController()
{
  result = qword_1004AFA00;
  if (!qword_1004AFA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D122C()
{
  v1 = *(v0 + qword_1004AF948);
  if (v1)
  {
    v2 = *(**(v1 + 80) + 200);

    v4 = v2(v3);

    (*(*v4 + 280))(sub_100084E84, 0);
  }
}

void sub_1001D136C()
{
  v1 = *(v0 + qword_1004AF978);
  if (v1)
  {
    v2 = *&v1[qword_1004A4F58];
    v3 = v1;
    if (v2)
    {
      [v2 setEnabled:0];
    }

    v4 = *&v1[qword_1004A4F60];
    if (v4)
    {
      v5 = v4;
      [v5 setEnabled:0];
    }
  }

  if (*(v0 + qword_1004AF940))
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100034F84(sub_1001D2600, v6);
  }
}

uint64_t sub_1001D147C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1001D2608;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_1004730F0;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

void sub_1001D172C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_1004AF978);
    if (v2)
    {
      v3 = v2;

      v4 = *&v3[qword_1004A4F58];
      if (v4)
      {
        [v4 setEnabled:1];
      }

      v5 = *&v3[qword_1004A4F60];
      if (v5)
      {
        v6 = v5;
        [v6 setEnabled:1];
      }
    }

    else
    {
      v3 = Strong;
    }
  }
}

id sub_1001D1B10(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (static Selector.== infix(_:_:)())
  {
LABEL_2:
    v6 = *&v2[qword_1004AF910];
    if (v6)
    {
      v7 = v6;
      v8 = sub_10014B260();
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v14 = *(v8 + 2);

    v13 = v14 != 0;
    return (v13 & 1);
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v10 = *(**&v2[qword_1004AF9D0] + 144);

      v10(v30, v11);

      v12 = sub_1001C95B8(1, v30[0], v30[1]);

      if (v12)
      {

        v13 = 1;
        return (v13 & 1);
      }

LABEL_28:
      v13 = 0;
      return (v13 & 1);
    }

    if (static Selector.== infix(_:_:)())
    {
      goto LABEL_2;
    }

    if (static Selector.== infix(_:_:)())
    {
      v15 = *&v2[qword_1004AF910];
      if (!v15 || !*(v15 + qword_1004AB570))
      {
        v16 = *&v2[qword_1004AF938];
        if (!v16 || !*(*(v16 + 64) + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8))
        {
          goto LABEL_28;
        }
      }

      v17 = sub_100156514;
      v18 = sub_1000C47A8;
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
        {
          v13 = 1;
        }

        else
        {
          sub_10002D2A0(a2, v30);
          v21 = v31;
          if (v31)
          {
            v22 = sub_10000FEBC(v30, v31);
            v23 = *(v21 - 8);
            v24 = __chkstk_darwin(v22);
            v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v23 + 16))(v26, v24);
            v27 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v23 + 8))(v26, v21);
            sub_10000FF00(v30);
          }

          else
          {
            v27 = 0;
          }

          v29.receiver = v2;
          v29.super_class = ObjectType;
          v28 = objc_msgSendSuper2(&v29, "canPerformAction:withSender:", a1, v27);
          swift_unknownObjectRelease();
          v13 = v28;
        }

        return (v13 & 1);
      }

      v19 = *&v2[qword_1004AF910];
      if (!v19 || !*(v19 + qword_1004AB570))
      {
        v20 = *&v2[qword_1004AF938];
        if (!v20 || !*(*(v20 + 64) + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8))
        {
          goto LABEL_28;
        }
      }

      v17 = sub_100157414;
      v18 = sub_1000C49E0;
    }

    v13 = sub_1001CCD64(v17, v18);
    return (v13 & 1);
  }

  return sub_1001D1F14();
}

id sub_1001D1F14()
{
  v1 = v0;
  v2 = qword_1004AF910;
  v3 = *(v0 + qword_1004AF910);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10014B260();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = *(v5 + 2);

  if (!v6)
  {
    return 0;
  }

  v7 = *(v1 + v2);
  if (!v7)
  {
    return 0;
  }

  v8 = *&v7[qword_1004AB5A0];
  v9 = v7;
  v10 = [v8 presentedViewController];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for HistoryDetailSheetViewController();
    v12 = [v11 isKindOfClass:swift_getObjCClassFromMetadata()];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1001D2094(void *a1)
{
  [a1 action];
  if (static Selector.== infix(_:_:)() & 1) != 0 && (sub_1001D1F14())
  {
    v2 = [objc_opt_self() mainBundle];
    v7._object = 0xE000000000000000;
    v3._countAndFlagsBits = 0x4C4C415F59504F43;
    v3._object = 0xE800000000000000;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v7._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

    v5 = String._bridgeToObjectiveC()();

    [a1 setTitle:v5];
  }
}

void sub_1001D220C()
{
  v1 = *(v0 + qword_1004AF910);
  if (v1)
  {
    *(swift_allocObject() + 16) = v1;
    sub_10000F974(&qword_1004ABB68);
    swift_allocObject();
    v2 = v1;
    v8[0] = Future.init(_:)();
    sub_10001D47C(&unk_1004ABB70, &qword_1004ABB68);
    v3 = Publisher.sink(receiveCompletion:receiveValue:)();

    *&v2[qword_1004AB638] = v3;

    v4 = *&v2[qword_1004AB518];
    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:{0, v8[0]}];
    }

    [*(*&v2[qword_1004AB508] + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
    v5 = *(**&v2[qword_1004AB540] + 400);

    v6 = v5(v8);
    *(v7 + 4) = 0;
    v6(v8, 0);
  }
}

uint64_t sub_1001D2590()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D25C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D2610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D264C(uint64_t a1)
{
  v6 = &type metadata for Configurations.Default;
  v7 = &protocol witness table for Configurations.Default;
  v4[0] = 0;
  sub_10000F974(&unk_1004AFC10);
  swift_allocObject();
  *(a1 + 64) = CurrentValueSubject.init(_:)();
  sub_10000F974(&qword_1004AA458);
  swift_getKeyPath();
  *(a1 + 72) = MutableStateValue.__allocating_init(_:_:)();
  *(a1 + 80) = [objc_allocWithZone(CMMotionManager) init];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1000336B4(v5, v4);
  v2 = StateObserver.init(configuration:)();
  sub_10000FF00(v5);
  return v2;
}

uint64_t sub_1001D27A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeakLinesRendererDelegate();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1001D2880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeakCoachingControllerDelegate();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1001D295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_1004A0240 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(27);

  *(&v19 + 1) = 0x800000010040DA60;
  v7._countAndFlagsBits = KeyPath.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x203A6F7420;
  v8._object = 0xE500000000000000;
  String.append(_:)(v8);
  sub_10000F974(&qword_1004AFC40);
  NSKeyValueObservedChange.newValue.getter();
  sub_10000F974(&qword_1004AFC48);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x800000010040DA60;
  Log.debug(_:isPrivate:)(v10, 0);

  NSKeyValueObservedChange.newValue.getter();
  type metadata accessor for UIContentSizeCategory(0);
  *&v19 = 0xD000000000000012;
  v20 = v11;
  v12 = sub_1001CAB04();
  v18 = v12;
  if (v20)
  {
    v13 = v12;
    sub_1000C0FAC(&v19, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BCE4C(v17, a4, a5, isUniquelyReferenced_nonNull_native);
    v15 = v13;
  }

  else
  {
    sub_100018F04(&v19, &unk_1004A6970);
    sub_1000C69DC(a4, a5, v17);
    sub_100018F04(v17, &unk_1004A6970);
    v15 = v18;
  }

  return sub_1001CAC70(v15);
}

uint64_t sub_1001D2BB0(void *a1)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 view];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        return 0;
      }
    }

    if ([objc_opt_self() jasperAvailable] && (v8 = *(v1 + qword_1004AF910)) != 0)
    {
      v9 = *&v8[qword_1004AB508];
      v10 = v8;
      v11 = v9;
      v12 = [v4 isDescendantOfView:v11];

      if (v12)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

unint64_t sub_1001D2CD4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = sub_10008E8B4(5uLL);
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  return result;
}

id sub_1001D2D1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredContentSizeCategory];
  *a2 = result;
  return result;
}

double sub_1001D2D78(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001D2DBC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D2E1C()
{

  return _swift_deallocObject(v0, 33, 7);
}

void sub_1001D2E70(unsigned __int8 a1, double a2, double a3, double a4)
{
  if (a3 <= 0.0 || a3 > a2)
  {
    v5 = 1;
    v6 = 2;
    v7 = 1;
    goto LABEL_24;
  }

  v8 = round(a2 / a3 * 3.0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v9 = v8;
  if (v8 <= 3)
  {
    v9 = 3;
  }

  if (v9 >= 9)
  {
    v6 = 9;
  }

  else
  {
    v6 = v9;
  }

  v10 = round(a4 / a3 * 3.0 + a4 / a3 * 3.0);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_67;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v11 = v10;
  if (v10 >= 12)
  {
    v11 = 12;
  }

  if (v11 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v11;
  }

  v5 = 3;
LABEL_24:
  sub_1001D563C(v6, v5, v7, &v282);
  v259 = v282;
  v271 = v284;
  v273 = v283;
  *v261 = v286;
  v12 = v287;
  v13 = v288;
  v14 = v289;
  v15 = v290;
  v267 = v285;
  v269 = v292;
  v276 = v291;
  [v278 setTranslatesAutoresizingMaskIntoConstraints:0];
  v248 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [objc_allocWithZone(CALayer) init];
  v17 = *&v278[OBJC_IVAR____TtC7Measure12SketchObject_backgroundLines];
  v258 = OBJC_IVAR____TtC7Measure12SketchObject_backgroundLines;
  *&v278[OBJC_IVAR____TtC7Measure12SketchObject_backgroundLines] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = (v5 + v6);
    v20 = (v5 + v6 + v7);
    v21 = v19 * 242.487113 / v20;
    v22 = [objc_allocWithZone(UIBezierPath) init];
    v252 = v13;
    v253 = v12;
    v23 = v13 * 140.0 / v20 + 4.0;
    v249 = v21 * v12 / v19 + 4.0;
    [v22 moveToPoint:?];
    v24 = v21 * v14 / v19 + 4.0;
    v25 = v15 * 140.0 / v20 + 4.0;
    [v22 addLineToPoint:{v24, v25}];
    v26 = [objc_allocWithZone(CAShapeLayer) init];
    v27 = [v22 CGPath];
    [v26 setPath:v27];

    v28 = objc_opt_self();
    v29 = [v28 clearColor];
    v30 = [v29 CGColor];

    [v26 setFillColor:v30];
    if (qword_1004A0088 != -1)
    {
      swift_once();
    }

    v280 = v28;
    v31 = qword_1004D49C8;
    v32 = [qword_1004D49C8 CGColor];
    [v26 setStrokeColor:v32];

    [v26 setLineWidth:2.0];
    [v18 addSublayer:v26];

    v33 = v278;
    v34 = *&v278[v258];
    if (!v34)
    {
      goto LABEL_79;
    }

    v35 = objc_allocWithZone(UIBezierPath);
    v36 = v34;
    v37 = [v35 init];
    [v37 moveToPoint:{v24, v25}];
    v256 = v271 * 140.0 / v20 + 4.0;
    v257 = v21 * v273 / v19 + 4.0;
    [v37 addLineToPoint:?];
    v38 = [objc_allocWithZone(CAShapeLayer) init];
    v39 = [v37 CGPath];
    [v38 setPath:v39];

    v40 = [v280 clearColor];
    v41 = [v40 CGColor];

    [v38 setFillColor:v41];
    v42 = [v31 CGColor];
    [v38 setStrokeColor:v42];

    [v38 setLineWidth:2.0];
    [v36 addSublayer:v38];

    v43 = *&v278[v258];
    if (!v43)
    {
      goto LABEL_80;
    }

    v44 = objc_allocWithZone(UIBezierPath);
    v45 = v43;
    v46 = [v44 init];
    [v46 moveToPoint:{v24, v25}];
    v266 = v19 * 242.487113 / v20;
    v251 = v21 * v276 / v19 + 4.0;
    v247 = *(&v276 + 1) * 140.0 / v20 + 4.0;
    [v46 addLineToPoint:?];
    v47 = [objc_allocWithZone(CAShapeLayer) init];
    v48 = [v46 CGPath];
    [v47 setPath:v48];

    v49 = [v280 clearColor];
    v50 = [v49 CGColor];

    [v47 setFillColor:v50];
    v51 = [v31 CGColor];
    [v47 setStrokeColor:v51];

    [v47 setLineWidth:2.0];
    [v45 addSublayer:v47];

    sub_10000F974(&qword_1004AFCC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003D5EE0;
    *(inited + 32) = v259;
    *(inited + 48) = v273;
    *(inited + 56) = v271;
    *(inited + 64) = 1;
    *(inited + 66) = 0;
    *&v53 = v253;
    *(&v53 + 1) = v252;
    *(inited + 88) = v53;
    *(inited + 72) = v259;
    *(inited + 104) = 0;
    *(inited + 106) = 1;
    *(inited + 112) = v259;
    *(inited + 128) = *v261;
    *(inited + 144) = 1;
    *(inited + 146) = 1;
    *(inited + 152) = v273;
    *(inited + 160) = v271;
    v250 = v267;
    *(inited + 168) = v267;
    *(inited + 184) = 1;
    *(inited + 186) = 0;
    *(inited + 192) = v53;
    *(inited + 208) = v269;
    *(inited + 224) = 0;
    *(inited + 226) = 1;
    *(inited + 248) = v267;
    *(inited + 232) = *v261;
    *(inited + 264) = 257;
    *(inited + 266) = 0;
    v246 = v269;
    *(inited + 272) = *v261;
    *(inited + 288) = v269;
    *(inited + 304) = 256;
    *(inited + 306) = 1;
    *(inited + 312) = v269;
    *(inited + 328) = v276;
    *(inited + 344) = 256;
    *(inited + 346) = 0;
    *(inited + 352) = v267;
    *(inited + 368) = v276;
    *(inited + 384) = 256;
    v264 = inited;
    *(inited + 386) = 0;
    sub_10000F974(&qword_1004AFCC8);
    v54 = swift_allocObject();
    *(v54 + 32) = v259;
    *(v54 + 48) = 1;
    *(v54 + 50) = 1;
    *(v54 + 56) = v273;
    *(v54 + 64) = v271;
    *(v54 + 72) = 1;
    *(v54 + 74) = 0;
    *(v54 + 80) = v267;
    *(v54 + 96) = 257;
    *(v54 + 98) = 0;
    *(v54 + 104) = *v261;
    *(v54 + 120) = 257;
    *(v54 + 122) = 1;
    *(v54 + 128) = v253;
    *(v54 + 136) = v252;
    *(v54 + 144) = 0;
    *(v54 + 146) = 1;
    *(v54 + 152) = v276;
    *(v54 + 168) = 256;
    *(v54 + 170) = 0;
    *(v54 + 176) = v269;
    *(v54 + 192) = 256;
    v254 = v54;
    *(v54 + 194) = 1;
    v55 = [objc_allocWithZone(CALayer) init];
    v56 = *&v278[OBJC_IVAR____TtC7Measure12SketchObject_foregroundLines];
    v277 = OBJC_IVAR____TtC7Measure12SketchObject_foregroundLines;
    *&v278[OBJC_IVAR____TtC7Measure12SketchObject_foregroundLines] = v55;

    v57 = [objc_allocWithZone(CALayer) init];
    v58 = *&v278[OBJC_IVAR____TtC7Measure12SketchObject_topSurface];
    v272 = OBJC_IVAR____TtC7Measure12SketchObject_topSurface;
    *&v278[OBJC_IVAR____TtC7Measure12SketchObject_topSurface] = v57;

    v59 = [objc_allocWithZone(CALayer) init];
    v60 = *&v278[OBJC_IVAR____TtC7Measure12SketchObject_shortSideSurface];
    v270 = OBJC_IVAR____TtC7Measure12SketchObject_shortSideSurface;
    *&v278[OBJC_IVAR____TtC7Measure12SketchObject_shortSideSurface] = v59;

    v61 = [objc_allocWithZone(CALayer) init];
    v62 = *&v278[OBJC_IVAR____TtC7Measure12SketchObject_longSideSurface];
    v268 = OBJC_IVAR____TtC7Measure12SketchObject_longSideSurface;
    *&v278[OBJC_IVAR____TtC7Measure12SketchObject_longSideSurface] = v61;

    v63 = 0;
    v64 = &swift_unknownObjectRetain_n_ptr;
    while (1)
    {
      v73 = *&v33[v277];
      if (!v73)
      {
        goto LABEL_70;
      }

      v74 = *(v264 + v63 + 64);
      v75 = *(v264 + v63 + 65);
      v76 = *(v264 + v63 + 66);
      v77 = *(v264 + v63 + 32);
      v78 = *(v264 + v63 + 40);
      v79 = *(v264 + v63 + 48);
      v80 = *(v264 + v63 + 56);
      v81 = objc_allocWithZone(v64[206]);
      v82 = v73;
      v83 = [v81 init];
      v274 = v266 * v77 / v19 + 4.0;
      v84 = v78 * 140.0 / v20 + 4.0;
      [v83 moveToPoint:?];
      v85 = v266 * v79 / v19 + 4.0;
      v86 = v80 * 140.0 / v20 + 4.0;
      [v83 addLineToPoint:{v85, v86}];
      v87 = [objc_allocWithZone(CAShapeLayer) init];
      v88 = [v83 CGPath];
      [v87 setPath:v88];

      v89 = [v280 clearColor];
      v90 = [v89 CGColor];

      [v87 setFillColor:v90];
      if (qword_1004A0080 != -1)
      {
        swift_once();
      }

      v91 = qword_1004D49C0;
      v92 = [qword_1004D49C0 CGColor];
      [v87 setStrokeColor:v92];

      [v87 setLineWidth:2.0];
      [v82 addSublayer:v87];

      if ((v74 & 1) == 0)
      {
        v93 = *&v278[v272];
        if (!v93)
        {
          goto LABEL_76;
        }

        v94 = objc_allocWithZone(UIBezierPath);
        v95 = v93;
        v96 = [v94 init];
        [v96 moveToPoint:{v274, v84}];
        [v96 addLineToPoint:{v85, v86}];
        v97 = [objc_allocWithZone(CAShapeLayer) init];
        v98 = [v96 CGPath];
        [v97 setPath:v98];

        v99 = [v280 clearColor];
        v100 = [v99 CGColor];

        [v97 setFillColor:v100];
        v101 = [v91 CGColor];
        [v97 setStrokeColor:v101];

        [v97 setLineWidth:2.0];
        [v95 addSublayer:v97];
      }

      v33 = v278;
      v64 = &swift_unknownObjectRetain_n_ptr;
      if ((v75 & 1) == 0)
      {
        v102 = *&v278[v270];
        if (!v102)
        {
          goto LABEL_77;
        }

        v103 = objc_allocWithZone(UIBezierPath);
        v104 = v102;
        v105 = [v103 init];
        [v105 moveToPoint:{v274, v84}];
        [v105 addLineToPoint:{v85, v86}];
        v106 = [objc_allocWithZone(CAShapeLayer) init];
        v107 = [v105 CGPath];
        [v106 setPath:v107];

        v108 = [v280 clearColor];
        v109 = [v108 CGColor];

        [v106 setFillColor:v109];
        v110 = [v91 CGColor];
        [v106 setStrokeColor:v110];

        [v106 setLineWidth:2.0];
        [v104 addSublayer:v106];

        v33 = v278;
      }

      if ((v76 & 1) == 0)
      {
        v111 = *&v33[v268];
        if (!v111)
        {
          goto LABEL_75;
        }

        v65 = objc_allocWithZone(UIBezierPath);
        v66 = v111;
        v67 = [v65 init];
        [v67 moveToPoint:{v274, v84}];
        [v67 addLineToPoint:{v85, v86}];
        v68 = [objc_allocWithZone(CAShapeLayer) init];
        v69 = [v67 CGPath];
        [v68 setPath:v69];

        v70 = [v280 clearColor];
        v71 = [v70 CGColor];

        [v68 setFillColor:v71];
        v72 = [v91 CGColor];
        [v68 setStrokeColor:v72];

        [v68 setLineWidth:2.0];
        [v66 addSublayer:v68];

        v33 = v278;
      }

      v63 += 40;
      if (v63 == 360)
      {

        v112 = 0;
        while (1)
        {
          v113 = *&v33[v277];
          if (!v113)
          {
            goto LABEL_73;
          }

          v114 = *(v254 + v112 + 48);
          v115 = *(v254 + v112 + 49);
          v116 = *(v254 + v112 + 50);
          v117 = v266 * *(v254 + v112 + 32) / v19 + 4.0;
          v118 = *(v254 + v112 + 40) * 140.0 / v20 + 4.0;
          v119 = v113;
          v120 = sub_100013DA0(0, v117, v118);
          [v119 addSublayer:v120];

          v121 = *&v33[v272];
          if (!v121)
          {
            goto LABEL_74;
          }

          v122 = v121;
          v123 = sub_100013DA0(v114, v117, v118);
          [v122 addSublayer:v123];

          v124 = *&v33[v270];
          if (!v124)
          {
            goto LABEL_71;
          }

          v125 = v124;
          v126 = sub_100013DA0(v115, v117, v118);
          [v125 addSublayer:v126];

          v127 = *&v33[v268];
          if (!v127)
          {
            goto LABEL_72;
          }

          v128 = v127;
          v129 = sub_100013DA0(v116, v117, v118);
          [v128 addSublayer:v129];

          v112 += 24;
          if (v112 == 168)
          {
            swift_setDeallocating();
            swift_deallocClassInstance();
            v130 = *&v33[v272];
            if (!v130)
            {
              goto LABEL_81;
            }

            v131 = objc_allocWithZone(UIBezierPath);
            v132 = v130;
            v133 = [v131 init];
            v134 = v266 * v259 / v19 + 4.0;
            v135 = *(&v259 + 1) * 140.0 / v20 + 4.0;
            [v133 moveToPoint:{v134, v135}];
            [v133 addLineToPoint:{v257, v256}];
            v263 = *(&v267 + 1) * 140.0 / v20 + 4.0;
            v265 = v266 * v250 / v19 + 4.0;
            [v133 addLineToPoint:?];
            v136 = v266 * *&v261[0] / v19 + 4.0;
            v137 = *&v261[1] * 140.0 / v20 + 4.0;
            [v133 addLineToPoint:{v136, v137}];
            [v133 addLineToPoint:{v134, v135}];
            v138 = [objc_allocWithZone(CAShapeLayer) init];
            v139 = [v133 CGPath];
            [v138 setPath:v139];

            v140 = [v280 clearColor];
            v141 = [v140 CGColor];

            [v138 setFillColor:v141];
            if (qword_1004A0090 != -1)
            {
              swift_once();
            }

            v279 = qword_1004D49D0;
            v142 = [qword_1004D49D0 CGColor];
            [v138 setStrokeColor:v142];

            v143 = v138;
            LODWORD(v144) = 1.0;
            [v143 setOpacity:v144];
            [v143 setLineWidth:2.0];

            [v132 addSublayer:v143];
            v145 = *&v33[v272];
            if (!v145)
            {
              goto LABEL_82;
            }

            v146 = objc_allocWithZone(UIBezierPath);
            v147 = v145;
            v148 = [v146 init];
            [v148 moveToPoint:{v134, v135}];
            [v148 addLineToPoint:{v257, v256}];
            [v148 addLineToPoint:{v265, v263}];
            [v148 addLineToPoint:{v136, v137}];
            v260 = *(&v259 + 1) * 140.0 / v20 + 4.0;
            v262 = v266 * v259 / v19 + 4.0;
            [v148 addLineToPoint:{v134, v135}];
            v149 = [objc_allocWithZone(CAShapeLayer) init];
            v150 = [v148 CGPath];
            [v149 setPath:v150];

            v151 = [v279 CGColor];
            [v149 setFillColor:v151];

            v152 = [v280 clearColor];
            v153 = [v152 CGColor];

            [v149 setStrokeColor:v153];
            v154 = v149;
            LODWORD(v155) = 0.5;
            [v154 setOpacity:v155];
            [v154 setLineWidth:2.0];

            [v147 addSublayer:v154];
            v156 = *&v33[v270];
            if (!v156)
            {
              goto LABEL_83;
            }

            v157 = objc_allocWithZone(UIBezierPath);
            v158 = v156;
            v159 = [v157 init];
            [v159 moveToPoint:{v136, v137}];
            [v159 addLineToPoint:{v265, v263}];
            [v159 addLineToPoint:{v251, v247}];
            v275 = *(&v246 + 1) * 140.0 / v20 + 4.0;
            [v159 addLineToPoint:?];
            [v159 addLineToPoint:{v136, v137}];
            v161 = [objc_allocWithZone(CAShapeLayer) init];
            v162 = [v159 CGPath];
            [v161 setPath:v162];

            v163 = [v280 clearColor];
            v164 = [v163 CGColor];

            [v161 setFillColor:v164];
            v165 = [v279 CGColor];
            [v161 setStrokeColor:v165];

            v166 = v161;
            LODWORD(v167) = 1.0;
            [v166 setOpacity:v167];
            [v166 setLineWidth:2.0];

            [v158 addSublayer:v166];
            v168 = *&v33[v270];
            if (!v168)
            {
              goto LABEL_84;
            }

            v169 = objc_allocWithZone(UIBezierPath);
            v170 = v168;
            v171 = [v169 init];
            [v171 moveToPoint:{v136, v137}];
            [v171 addLineToPoint:{v265, v263}];
            [v171 addLineToPoint:{v251, v247}];
            v160 = v266 * v246 / v19 + 4.0;
            [v171 addLineToPoint:{v160, v275}];
            [v171 addLineToPoint:{v136, v137}];
            v172 = [objc_allocWithZone(CAShapeLayer) init];
            v173 = [v171 CGPath];
            [v172 setPath:v173];

            v174 = [v279 CGColor];
            [v172 setFillColor:v174];

            v175 = [v280 clearColor];
            v176 = [v175 CGColor];

            [v172 setStrokeColor:v176];
            v177 = v172;
            LODWORD(v178) = 0.5;
            [v177 setOpacity:v178];
            [v177 setLineWidth:2.0];

            [v170 addSublayer:v177];
            v179 = *&v33[v268];
            if (!v179)
            {
              goto LABEL_85;
            }

            v180 = objc_allocWithZone(UIBezierPath);
            v181 = v179;
            v182 = [v180 init];
            [v182 moveToPoint:{v262, v260}];
            [v182 addLineToPoint:{v136, v137}];
            [v182 addLineToPoint:{v160, v275}];
            [v182 addLineToPoint:{v249, v23}];
            [v182 addLineToPoint:{v262, v260}];
            v183 = [objc_allocWithZone(CAShapeLayer) init];
            v184 = [v182 CGPath];
            [v183 setPath:v184];

            v185 = [v280 clearColor];
            v186 = [v185 CGColor];

            [v183 setFillColor:v186];
            v187 = [v279 CGColor];
            [v183 setStrokeColor:v187];

            v188 = v183;
            LODWORD(v189) = 1.0;
            [v188 setOpacity:v189];
            [v188 setLineWidth:2.0];

            [v181 addSublayer:v188];
            v190 = *&v33[v268];
            if (!v190)
            {
              goto LABEL_86;
            }

            v191 = objc_allocWithZone(UIBezierPath);
            v192 = v190;
            v193 = [v191 init];
            [v193 moveToPoint:{v262, v260}];
            [v193 addLineToPoint:{v136, v137}];
            [v193 addLineToPoint:{v160, v275}];
            [v193 addLineToPoint:{v249, v23}];
            [v193 addLineToPoint:{v262, v260}];
            v194 = [objc_allocWithZone(CAShapeLayer) init];
            v195 = [v193 CGPath];
            [v194 setPath:v195];

            v196 = [v279 CGColor];
            [v194 setFillColor:v196];

            v197 = [v280 clearColor];
            v198 = [v197 CGColor];

            [v194 setStrokeColor:v198];
            v199 = v194;
            LODWORD(v200) = 0.5;
            [v199 setOpacity:v200];
            [v199 setLineWidth:2.0];

            [v192 addSublayer:v199];
            v201 = [v248 layer];
            if (!*&v33[v258])
            {
              goto LABEL_87;
            }

            v202 = v201;
            [v201 addSublayer:?];

            v203 = [v248 layer];
            if (*&v33[v277])
            {
              v204 = v203;
              [v203 addSublayer:?];

              v205 = [v248 layer];
              if (!*&v33[v272])
              {
                goto LABEL_89;
              }

              v206 = v205;
              [v205 addSublayer:?];

              v207 = [v248 layer];
              if (!*&v33[v270])
              {
                goto LABEL_90;
              }

              v208 = v207;
              [v207 addSublayer:?];

              v209 = [v248 layer];
              if (!*&v33[v268])
              {
                goto LABEL_91;
              }

              v210 = v209;
              [v209 addSublayer:?];

              [*&v33[v272] setHidden:1];
              [*&v33[v270] setHidden:1];
              [*&v33[v268] setHidden:1];
              [v33 addSubview:v248];
              [v248 setTranslatesAutoresizingMaskIntoConstraints:0];
              v211 = [v248 widthAnchor];
              v212 = [v211 constraintEqualToConstant:v266 + 8.0];

              [v212 setActive:1];
              v213 = [v248 heightAnchor];
              v214 = [v213 constraintEqualToConstant:148.0];

              [v214 setActive:1];
              v281 = type metadata accessor for SketchLabel();
              v215 = objc_allocWithZone(v281);
              v216 = sub_100136FE0(76, 0xE100000000000000);
              [v33 addSubview:v216];
              [v216 setTranslatesAutoresizingMaskIntoConstraints:0];
              v217 = v216;
              v218 = [v216 rightAnchor];
              v219 = [v248 rightAnchor];
              v220 = [v218 constraintEqualToAnchor:v219 constant:-5.0];

              [v220 setActive:1];
              v221 = [v217 centerYAnchor];

              v222 = [v248 centerYAnchor];
              v223 = [v221 constraintEqualToAnchor:v222 constant:-54.76];

              [v223 setActive:1];
              v224 = objc_allocWithZone(v281);
              v225 = sub_100136FE0(87, 0xE100000000000000);
              [v33 addSubview:v225];
              [v225 setTranslatesAutoresizingMaskIntoConstraints:0];
              v226 = [v225 centerXAnchor];
              v227 = [v248 leftAnchor];
              v228 = [v226 constraintEqualToAnchor:v227];

              [v228 setActive:1];
              v229 = [v225 centerYAnchor];

              v230 = [v248 topAnchor];
              v231 = [v229 constraintEqualToAnchor:v230 constant:4.0];

              [v231 setActive:1];
              v232 = [v225 topAnchor];

              v233 = [v33 topAnchor];
              v234 = [v232 constraintEqualToAnchor:v233 constant:10.0];

              [v234 setActive:1];
              v235 = objc_allocWithZone(v281);
              v236 = sub_100136FE0(72, 0xE100000000000000);
              [v33 addSubview:v236];
              [v236 setTranslatesAutoresizingMaskIntoConstraints:0];
              v237 = [v236 rightAnchor];
              v238 = [v248 leftAnchor];
              v239 = [v237 constraintEqualToAnchor:v238 constant:-7.0];

              [v239 setActive:1];
              v240 = [v236 centerYAnchor];

              v241 = [v248 centerYAnchor];
              v242 = [v240 constraintEqualToAnchor:v241 constant:-14.8];

              [v242 setActive:1];
              v243 = [v33 centerXAnchor];
              v244 = [v248 centerXAnchor];
              v245 = [v243 constraintEqualToAnchor:v244];

              [v245 setActive:1];
              sub_1001D52B8(a1);

              return;
            }

            goto LABEL_88;
          }
        }
      }
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

id sub_1001D52B8(unsigned __int8 a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions:1];
  v4 = OBJC_IVAR____TtC7Measure12SketchObject_foregroundLines;
  [*(v1 + OBJC_IVAR____TtC7Measure12SketchObject_foregroundLines) setHidden:1];
  v5 = OBJC_IVAR____TtC7Measure12SketchObject_topSurface;
  [*(v1 + OBJC_IVAR____TtC7Measure12SketchObject_topSurface) setHidden:1];
  v6 = OBJC_IVAR____TtC7Measure12SketchObject_shortSideSurface;
  [*(v1 + OBJC_IVAR____TtC7Measure12SketchObject_shortSideSurface) setHidden:1];
  v7 = OBJC_IVAR____TtC7Measure12SketchObject_longSideSurface;
  [*(v1 + OBJC_IVAR____TtC7Measure12SketchObject_longSideSurface) setHidden:1];
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v8 = *(v1 + v6);
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = *(v1 + v7);
    if (v8)
    {
LABEL_11:
      [v8 setHidden:0];
    }
  }

  else
  {
    if (!a1)
    {
      v8 = *(v1 + v4);
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = *(v1 + v5);
    if (v8)
    {
      goto LABEL_11;
    }
  }

LABEL_12:

  return [v3 commit];
}

id sub_1001D549C(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Measure12SketchObject_topSurface] = 0;
  *&v1[OBJC_IVAR____TtC7Measure12SketchObject_longSideSurface] = 0;
  *&v1[OBJC_IVAR____TtC7Measure12SketchObject_shortSideSurface] = 0;
  *&v1[OBJC_IVAR____TtC7Measure12SketchObject_backgroundLines] = 0;
  *&v1[OBJC_IVAR____TtC7Measure12SketchObject_foregroundLines] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SketchObject();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001D5568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SketchObject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D563C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = -a2;
  if (__OFSUB__(0, -a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_14:
    __break(1u);
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = result;
  if (__OFSUB__(v5, a2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFSUB__(result, v4);
  v9 = result + a2;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(a2, a3))
  {
LABEL_17:
    __break(1u);
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(result, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v9 + a3;
  if (!__OFADD__(v9, a3))
  {
    *a4 = 0;
    a4[1] = a2;
    a4[2] = a2;
    a4[3] = 0;
    a4[4] = v5;
    a4[5] = v6;
    a4[6] = v7;
    a4[7] = v9;
    a4[8] = 0;
    a4[9] = a2 + a3;
    a4[10] = a2;
    a4[11] = a3;
    a4[12] = v5;
    a4[13] = v6 + a3;
    a4[14] = v7;
    a4[15] = result;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SketchObject.ObjectPoint(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SketchObject.ObjectPoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SketchObject.ObjectPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1001D57AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001D57C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001D5814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001D5870(uint64_t a1)
{
  result = (*(*a1 + 112))();
  if (result)
  {
    sub_1001D58F4(result);
  }

  return result;
}

void sub_1001D58F4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = WorldAnchor.arSession.unsafeMutableAddressor();
  swift_beginAccess();
  if (*v9)
  {
    v10 = [*v9 currentFrame];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 camera];

      if (v12)
      {
        v19 = v3;
        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
        {
          __break(1u);
        }

        else
        {
          SIMD2<>.init(_:)();
          effectiveStatusBarOrientation.unsafeMutableAddressor();
          v13 = v12;
          ComputedCameraProperties.init(camera:viewportSize:orientation:)();
          sub_10004D9B4();
          v14 = static OS_dispatch_queue.main.getter();
          v15 = swift_allocObject();
          swift_weakInit();
          v16 = swift_allocObject();
          v16[2] = v15;
          v16[3] = a1;
          memcpy(v16 + 4, v22, 0x1E0uLL);
          v21[4] = sub_1001D8840;
          v21[5] = v16;
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 1107296256;
          v21[2] = sub_100041180;
          v21[3] = &unk_100473520;
          v17 = _Block_copy(v21);

          static DispatchQoS.unspecified.getter();
          v21[0] = _swiftEmptyArrayStorage;
          sub_10003180C();
          sub_10000F974(&unk_1004A3D80);
          sub_100031864();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v17);

          (*(v19 + 8))(v5, v2);
          (*(v20 + 8))(v8, v6);
        }
      }
    }
  }
}

void sub_1001D5CB0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) == 1)
  {
    sub_10004D9B4();
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_1001D87F8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_1004734D0;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80);
    sub_100031864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

void sub_1001D5F6C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = WorldAnchor.arSession.unsafeMutableAddressor();
    swift_beginAccess();
    if (*v5 && (v6 = [*v5 currentFrame]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, "camera"), v7, v8))
    {
      v9 = (*(*v2 + 216))();
      if (v9)
      {
        v10 = (*(*v9 + 160))(v9);

        v11 = v10;
        v12 = NSObject.hashValue.getter();
        swift_beginAccess();
        if (*(*(v4 + 24) + 16) && (sub_10019C32C(v12), (v13 & 1) != 0))
        {
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v14 = NSObject.hashValue.getter();

          v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v15);

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = *(v4 + 24);
          *(v4 + 24) = 0x8000000000000000;
          sub_1000BD2AC(0x2320656E616C70, 0xE700000000000000, v14, isUniquelyReferenced_nonNull_native);
          *(v4 + 24) = v78;
          swift_endAccess();
        }

        v17 = *(*v2 + 368);
        v72 = *(v4 + 64);
        v17();
        simd_float4x4.position.getter();
        [v11 transform];
        simd_float4x4.up.getter();
        v18 = *(v4 + 88);
        type metadata accessor for MeasureCamera();
        v19 = v18;
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v20 = [objc_allocWithZone(CAShapeLayer) init];
        v21 = [objc_allocWithZone(UIBezierPath) init];
        CGPoint.init(_:)();
        [v21 moveToPoint:?];
        CGPoint.init(_:)();
        [v21 addLineToPoint:?];
        v22 = [v21 CGPath];
        [v20 setPath:v22];

        [v20 setLineWidth:1.0];
        v23 = [v19 CGColor];
        [v20 setStrokeColor:v23];

        v24 = [objc_opt_self() clearColor];
        v25 = [v24 CGColor];

        [v20 setFillColor:v25];
        v26 = [v72 layer];
        [v26 addSublayer:v20];

        v27 = (*(*v2 + 448))();
        swift_beginAccess();
        v28 = v20;
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v79 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_1000BD27C(v28, v27, v29);
        *(v4 + 48) = v79;
        swift_endAccess();
      }

      (*(*v2 + 376))();
      if ((v30 & 1) == 0)
      {
        v31 = *(*v2 + 368);
        v32 = *(v4 + 64);
        v31();
        simd_float4x4.position.getter();
        v33 = *(v4 + 80);
        type metadata accessor for MeasureCamera();
        v34 = v33;
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v35 = [objc_allocWithZone(CAShapeLayer) init];
        v36 = [objc_allocWithZone(UIBezierPath) init];
        CGPoint.init(_:)();
        [v36 moveToPoint:?];
        CGPoint.init(_:)();
        [v36 addLineToPoint:?];
        v37 = [v36 CGPath];
        [v35 setPath:v37];

        [v35 setLineWidth:1.0];
        v38 = [v34 CGColor];
        [v35 setStrokeColor:v38];

        v39 = [objc_opt_self() clearColor];
        v40 = [v39 CGColor];

        [v35 setFillColor:v40];
        v41 = [v32 layer];
        [v41 addSublayer:v35];

        v42 = (*(*v2 + 448))();
        swift_beginAccess();
        v43 = v35;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v4 + 56);
        *(v4 + 56) = 0x8000000000000000;
        sub_1000BD27C(v43, v42, v44);
        *(v4 + 56) = v77;
        swift_endAccess();
      }

      if (qword_1004A0850 != -1)
      {
        swift_once();
      }

      if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
      {
        __break(1u);
      }

      else
      {
        SIMD2<>.init(_:)();
        effectiveStatusBarOrientation.unsafeMutableAddressor();
        v73 = v8;
        ComputedCameraProperties.init(camera:viewportSize:orientation:)();
        type metadata accessor for MeasureCamera();
        (*(*v2 + 368))();
        simd_float4x4.position.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v47 = 0.0;
        if ((LODWORD(v45) & 0x7FFFFF) != 0)
        {
          v48 = 0.0;
        }

        else
        {
          v48 = v45;
        }

        if ((~LODWORD(v45) & 0x7F800000) != 0)
        {
          v48 = v45;
        }

        v49 = v46;
        if ((LODWORD(v46) & 0x7FFFFF) == 0)
        {
          v47 = v46;
        }

        if ((~LODWORD(v46) & 0x7F800000) == 0)
        {
          v49 = v47;
        }

        v50 = [objc_allocWithZone(UILabel) initWithFrame:{v48, v49, 100.0, 100.0}];
        sub_1001D6DC4(v2);
        v51 = String._bridgeToObjectiveC()();

        [v50 setText:v51];

        v52 = objc_opt_self();
        v53 = [v52 yellowColor];
        [v50 setTextColor:v53];

        v54 = [v52 blackColor];
        [v50 setShadowColor:v54];

        [v50 setShadowOffset:{1.0, 1.0}];
        [v50 setNumberOfLines:0];
        v55 = String._bridgeToObjectiveC()();
        v56 = objc_opt_self();
        v57 = [v56 fontWithName:v55 size:10.0];

        [v50 setFont:v57];
        v58 = [*(v4 + 72) addSubview:v50];
        v59 = *(*v2 + 448);
        v60 = v59(v58);
        swift_beginAccess();
        v61 = v50;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v4 + 32);
        *(v4 + 32) = 0x8000000000000000;
        sub_1000BD0C8(v61, v60, v62);
        *(v4 + 32) = v74;
        swift_endAccess();
        sub_1001D6DC4(v2);
        v63 = String._bridgeToObjectiveC()();

        [v61 setText:v63];

        v64 = [v52 yellowColor];
        [v61 setTextColor:v64];

        [v61 setNumberOfLines:0];
        v65 = String._bridgeToObjectiveC()();
        v66 = [v56 fontWithName:v65 size:10.0];

        [v61 setFont:v66];
        v67 = v59([*(v4 + 72) addSubview:v61]);
        swift_beginAccess();
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v75 = *(v4 + 32);
        *(v4 + 32) = 0x8000000000000000;
        sub_1000BD0C8(v61, v67, v68);
        *(v4 + 32) = v75;
        v69 = swift_endAccess();
        v70 = v59(v69);
        swift_beginAccess();
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v4 + 40);
        *(v4 + 40) = 0x8000000000000000;
        sub_1000BCFA4(0, v70, v71);
        *(v4 + 40) = v76;
        swift_endAccess();
      }
    }

    else
    {
    }
  }
}