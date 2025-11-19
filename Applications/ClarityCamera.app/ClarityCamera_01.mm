uint64_t sub_10001C45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v34 = a4;
  v32 = type metadata accessor for GeometryProxy();
  v6 = *(v32 - 8);
  v33 = *(v6 + 64);
  __chkstk_darwin(v32);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PinchToZoomModifier();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100003998(&qword_100036160, &qword_100026B98);
  v27 = v10;
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v31 = sub_100003998(&qword_100036148, &qword_100026B90);
  v14 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v16 = &v27 - v15;
  sub_10001C808();
  sub_10001C808();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = sub_100003998(&qword_1000360D8, &qword_100026B30);
  (*(*(v17 - 8) + 16))(v13, v30, v17);
  v18 = &v13[*(v10 + 36)];
  v19 = v36;
  *v18 = v35;
  *(v18 + 1) = v19;
  *(v18 + 2) = v37;
  sub_10001CFA8(a2, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v29;
  v21 = a3;
  v22 = v32;
  (*(v6 + 16))(v29, v21, v32);
  v23 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v24 = (v9 + *(v6 + 80) + v23) & ~*(v6 + 80);
  v25 = swift_allocObject();
  sub_10001D1D0(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23);
  (*(v6 + 32))(v25 + v24, v20, v22);
  sub_10001D3EC();
  View.accessibilityZoomAction(_:)();

  sub_100003F00(v13, &qword_100036160, &qword_100026B98);
  sub_10001D330();
  View.scrollTargetLayout(isEnabled:)();
  return sub_100003F00(v16, &qword_100036148, &qword_100026B90);
}

double sub_10001C808()
{
  GeometryProxy.size.getter();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.getter();
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  State.wrappedValue.getter();
  v7 = v2 * (v13 * v13);
  GeometryProxy.size.getter();
  v9 = v8;
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  v10 = v9 * (v13 * v13);
  v11 = *v0 / *(v0 + 8);
  if (v7 / v10 >= v11)
  {
    return v10 * v11;
  }

  return v7;
}

uint64_t sub_10001C934(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScrollPosition();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  AccessibilityZoomGestureAction.direction.getter();
  if (static AccessibilityZoomGestureAction.Direction.== infix(_:_:)())
  {
    v5 = type metadata accessor for PinchToZoomModifier();
    v6 = *(a2 + *(v5 + 40));
    v11 = *(a2 + 32);
    v13 = *(a2 + 40);
    sub_100003998(&qword_100036178, &qword_100026BA0);
    State.wrappedValue.getter();
    v7 = v6 * v10;
  }

  else
  {
    v12 = *(a2 + 32);
    v14 = *(a2 + 40);
    sub_100003998(&qword_100036178, &qword_100026BA0);
    State.wrappedValue.getter();
    v5 = type metadata accessor for PinchToZoomModifier();
    v7 = v10 / *(a2 + *(v5 + 40));
    if (v7 <= 1.0)
    {
      v7 = 1.0;
    }
  }

  sub_10001B1C8(v7);
  sub_10001C808();
  GeometryProxy.size.getter();
  sub_10001C808();
  GeometryProxy.size.getter();
  type metadata accessor for PinchToZoomModifier();
  v8 = *(v5 + 28);
  sub_100003998(&qword_100036000, &qword_100026AB8);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(point:)();
  return State.wrappedValue.setter();
}

uint64_t sub_10001CB1C@<X0>(void *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001CB48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (a3 + *(type metadata accessor for PinchToZoomModifier() + 32));
  v7 = *v5;
  v8 = *(v5 + 2);
  sub_100003998(&qword_1000361A8, &qword_100026BB0);
  return State.wrappedValue.setter();
}

uint64_t sub_10001CBC4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScrollPosition();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for PinchToZoomModifier();
  v6 = (a2 + v5[9]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  sub_100003998(&qword_1000361A0, &qword_100026BA8);
  State.wrappedValue.getter();
  if (v16 == 1)
  {
    v11 = (a2 + v5[8]);
    v17 = *v11;
    v18 = *(v11 + 2);
    sub_100003998(&qword_1000361A8, &qword_100026BB0);
    State.wrappedValue.getter();
    v16 = 0;
    State.wrappedValue.setter();
  }

  result = State.wrappedValue.getter();
  if ((v16 & 1) == 0)
  {
    MagnifyGesture.Value.magnification.getter();
    v14 = *(a2 + 24);
    v13 = *(a2 + 16);
    sub_100003998(&qword_100036178, &qword_100026BA0);
    State.wrappedValue.setter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    v15 = v5[7];
    sub_100003998(&qword_100036000, &qword_100026AB8);
    State.wrappedValue.getter();
    ScrollPosition.scrollTo(point:)();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10001CE2C(uint64_t a1, void *a2)
{
  MagnifyGesture.Value.magnification.getter();
  v4 = v3;
  v8 = a2[4];
  v11 = a2[5];
  sub_100003998(&qword_100036178, &qword_100026BA0);
  State.wrappedValue.getter();
  sub_10001B1C8(v4 * v7);
  v9 = a2[2];
  v12 = a2[3];
  State.wrappedValue.setter();
  v5 = a2 + *(type metadata accessor for PinchToZoomModifier() + 36);
  v10 = *v5;
  v13 = v5[16];
  v14 = *(v5 + 3);
  sub_100003998(&qword_1000361A0, &qword_100026BA8);
  return State.wrappedValue.setter();
}

unint64_t sub_10001CF5C()
{
  result = qword_100036420;
  if (!qword_100036420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100036420);
  }

  return result;
}

uint64_t sub_10001CFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D00C()
{
  v1 = sub_100003998(&qword_1000360D8, &qword_100026B30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PinchToZoomModifier() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v8 + 24);

  v12 = *(v0 + v8 + 40);

  v13 = v0 + v8 + v6[9];
  v14 = type metadata accessor for ScrollPosition();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(v13 + *(sub_100003998(&qword_100036000, &qword_100026AB8) + 28));

  v16 = *(v0 + v8 + v6[10] + 16);

  v17 = *(v0 + v8 + v6[11] + 24);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10001D1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100003998(&qword_1000360D8, &qword_100026B30) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10001B600(a1, v2 + v6, v9, a2);
}

unint64_t sub_10001D330()
{
  result = qword_100036150;
  if (!qword_100036150)
  {
    sub_1000039E0(&qword_100036148, &qword_100026B90);
    sub_10001D3EC();
    sub_10001D540(&qword_100035318, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036150);
  }

  return result;
}

unint64_t sub_10001D3EC()
{
  result = qword_100036158;
  if (!qword_100036158)
  {
    sub_1000039E0(&qword_100036160, &qword_100026B98);
    sub_100003D8C(&qword_1000360F0, &qword_1000360D8, &qword_100026B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036158);
  }

  return result;
}

uint64_t sub_10001D4A4(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001CB48(a1, a2, v6);
}

uint64_t sub_10001D540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001D588()
{
  v1 = (type metadata accessor for PinchToZoomModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 24);

  v6 = *(v0 + v3 + 40);

  v7 = v0 + v3 + v1[9];
  v8 = type metadata accessor for ScrollPosition();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(sub_100003998(&qword_100036000, &qword_100026AB8) + 28));

  v10 = *(v0 + v3 + v1[10] + 16);

  v11 = *(v0 + v3 + v1[11] + 24);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D6DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10001D790()
{
  v1 = (type metadata accessor for PinchToZoomModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = *(v11 + 24);

  v13 = *(v11 + 40);

  v14 = v11 + v1[9];
  v15 = type metadata accessor for ScrollPosition();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *(v14 + *(sub_100003998(&qword_100036000, &qword_100026AB8) + 28));

  v17 = *(v11 + v1[10] + 16);

  v18 = *(v11 + v1[11] + 24);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10001D950(uint64_t a1)
{
  v3 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10001C934(a1, v1 + v4);
}

unint64_t sub_10001DA28()
{
  result = qword_1000361B0;
  if (!qword_1000361B0)
  {
    sub_1000039E0(&qword_1000361B8, &qword_100026BB8);
    sub_100003D8C(&qword_1000360E8, &qword_1000360E0, &qword_100026B38);
    sub_100003D8C(&qword_1000360F0, &qword_1000360D8, &qword_100026B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361B0);
  }

  return result;
}

uint64_t sub_10001DB14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000617265;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x6D61436F65646976;
    }

    else
    {
      v6 = 0x6D61436F746F6870;
    }

    v7 = 0xEB00000000617265;
  }

  else
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000100027450;
    if (a1 != 3)
    {
      v4 = 0x62694C6F746F6870;
      v5 = 0xEC00000079726172;
    }

    if (a1 == 2)
    {
      v6 = 0x61436569666C6573;
    }

    else
    {
      v6 = v4;
    }

    if (v3 == 2)
    {
      v7 = 0xEC0000006172656DLL;
    }

    else
    {
      v7 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6D61436F65646976;
    }

    else
    {
      v8 = 0x6D61436F746F6870;
    }

    if (v6 != v8)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v9 = 0x61436569666C6573;
    v10 = 1634887021;
  }

  else
  {
    if (a2 == 3)
    {
      v2 = 0x8000000100027450;
      if (v6 != 0xD000000000000011)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v9 = 0x62694C6F746F6870;
    v10 = 2037539186;
  }

  v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v6 != v9)
  {
LABEL_29:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_30;
  }

LABEL_27:
  if (v7 != v2)
  {
    goto LABEL_29;
  }

  v11 = 1;
LABEL_30:

  return v11 & 1;
}

uint64_t NavigationStage.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D61436F746F6870;
  v2 = 0x61436569666C6573;
  v3 = 0xD000000000000011;
  if (a1 != 3)
  {
    v3 = 0x62694C6F746F6870;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6D61436F65646976;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10001DD88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15ClarityPhotosUI15NavigationStageO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10001DDB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6D61436F746F6870;
  v4 = 0xEC0000006172656DLL;
  v5 = 0x61436569666C6573;
  v6 = 0x8000000100027450;
  v7 = 0xD000000000000011;
  if (v2 != 3)
  {
    v7 = 0x62694C6F746F6870;
    v6 = 0xEC00000079726172;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x6D61436F65646976;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEB00000000617265;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

Swift::Int sub_10001DE70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001DF6C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001E054()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t _s15ClarityPhotosUI15NavigationStageO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100032608, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001E19C()
{
  result = qword_1000361C0;
  if (!qword_1000361C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_10001E364()
{
  v0 = objc_allocWithZone(type metadata accessor for PhotoLibrary());

  return [v0 init];
}

uint64_t PhotoLibraryView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PhotoLibraryView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10001EDB4(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001EE1C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_10001EE80;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for PhotoLibraryView()
{
  result = qword_100036228;
  if (!qword_100036228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = type metadata accessor for PhotoLibraryView();
  v70 = *(v5 - 8);
  v6 = *(v70 + 64);
  __chkstk_darwin(v5 - 8);
  v71 = v7;
  v72 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ScrollAnchorRole();
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v59);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003998(&qword_100036288, &qword_100026D40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v56 = sub_100003998(&qword_100036290, &qword_100026D48);
  v57 = *(v56 - 8);
  v16 = *(v57 + 64);
  __chkstk_darwin(v56);
  v18 = &v55 - v17;
  v62 = sub_100003998(&qword_100036298, &qword_100026D50);
  v61 = *(v62 - 8);
  v19 = *(v61 + 64);
  __chkstk_darwin(v62);
  v21 = &v55 - v20;
  v65 = sub_100003998(&qword_1000362A0, &qword_100026D58);
  v22 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v60 = &v55 - v23;
  v67 = sub_100003998(&qword_1000362A8, &qword_100026D60);
  v66 = *(v67 - 8);
  v24 = *(v66 + 64);
  __chkstk_darwin(v67);
  v63 = &v55 - v25;
  v69 = sub_100003998(&qword_1000362B0, &qword_100026D68);
  v68 = *(v69 - 8);
  v26 = *(v68 + 64);
  __chkstk_darwin(v69);
  v64 = &v55 - v27;
  v73 = a2;
  v75 = a2;
  v76 = a1;
  static Axis.Set.vertical.getter();
  sub_100003998(&qword_1000362B8, &qword_100026D70);
  sub_100003D8C(&qword_1000362C0, &qword_1000362B8, &qword_100026D70);
  ScrollView.init(_:showsIndicators:content:)();
  static UnitPoint.bottom.getter();
  v28 = sub_100003D8C(&qword_1000362C8, &qword_100036288, &qword_100026D40);
  v29 = v21;
  View.defaultScrollAnchor(_:)();
  (*(v12 + 8))(v15, v11);
  static UnitPoint.top.getter();
  static ScrollAnchorRole.alignment.getter();
  v77 = v11;
  v78 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v56;
  View.defaultScrollAnchor(_:for:)();
  (*(v58 + 8))(v10, v59);
  (*(v57 + 8))(v18, v30);
  sub_100003998(&qword_1000362D0, &qword_100026D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100026A90;
  LOBYTE(v10) = static Edge.Set.leading.getter();
  *(inited + 32) = v10;
  v32 = static Edge.Set.trailing.getter();
  *(inited + 33) = v32;
  v33 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v10)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  if (qword_100035A60 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v60;
  (*(v61 + 32))(v60, v29, v62);
  v43 = v65;
  v44 = v42 + *(v65 + 36);
  *v44 = v33;
  *(v44 + 8) = v35;
  *(v44 + 16) = v37;
  *(v44 + 24) = v39;
  *(v44 + 32) = v41;
  *(v44 + 40) = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v45 = sub_10001FF78();
  v46 = v63;
  View.navigationTitle(_:)();

  sub_1000200B8(v42);
  v77 = v43;
  v78 = v45;
  swift_getOpaqueTypeConformance2();
  v47 = v64;
  v48 = v67;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v66 + 8))(v46, v48);
  v49 = v72;
  sub_10001EDB4(v73, v72);
  v50 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v51 = swift_allocObject();
  sub_10001EE1C(v49, v51 + v50);
  v52 = v74;
  (*(v68 + 32))(v74, v47, v69);
  result = sub_100003998(&qword_1000362E0, &qword_100026D80);
  v54 = (v52 + *(result + 36));
  *v54 = sub_100020240;
  v54[1] = v51;
  v54[2] = 0;
  v54[3] = 0;
  return result;
}

uint64_t sub_10001EDB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EE84(uint64_t a1)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for GridItem.Size();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for GridItem();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  GeometryProxy.size.getter();
  v14 = v13;
  v16 = v15;
  v17 = *(a1 + *(type metadata accessor for PhotoLibraryView() + 24));
  v18 = 3;
  if (v16 < v14)
  {
    v18 = 4;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 2;
  }

  *v8 = xmmword_100026C80;
  (*(v5 + 104))(v8, enum case for GridItem.Size.flexible(_:), v4);
  GridItem.init(_:spacing:alignment:)();
  sub_10001F980(v12, v19);
  v22 = a1;
  static HorizontalAlignment.center.getter();
  v23 = 0;
  sub_10002045C(&qword_1000362E8, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100003998(&qword_1000362F0, &qword_100026D88);
  sub_100020318();
  return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_10001F13C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for PhotoLibrary();
  sub_10002045C(&unk_100036240, type metadata accessor for PhotoLibrary);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100003998(&qword_100036318, &unk_100026DE0);
  sub_100019B38();
  sub_1000039E0(&qword_100036300, &qword_100026D90);
  type metadata accessor for PlainButtonStyle();
  sub_100003D8C(&qword_100036308, &qword_100036300, &qword_100026D90);
  sub_10002045C(&qword_100036310, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1000204AC();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10001F350(void **a1)
{
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003998(&qword_100036300, &qword_100026D90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = *a1;
  v21 = 0;
  v13 = v12;
  sub_100003998(&qword_100035B78, &qword_1000261C8);
  State.init(wrappedValue:)();
  v17 = *v19;
  v21 = 0;
  sub_100003998(&qword_100035CC0, &qword_100026DF0);
  State.init(wrappedValue:)();
  v16 = *v19;
  KeyPath = swift_getKeyPath();
  v19[0] = v13;
  *&v19[3] = v16;
  *&v19[1] = v17;
  v19[5] = KeyPath;
  v20 = 0;
  v18 = v13;
  sub_100020514();
  sub_100020568();
  NavigationLink.init(destination:label:)();
  PlainButtonStyle.init()();
  sub_100003D8C(&qword_100036308, &qword_100036300, &qword_100026D90);
  sub_10002045C(&qword_100036310, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10001F63C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003998(&qword_1000353E8, &qword_100025680);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v20 - v9);
  v11 = type metadata accessor for FinishLaunchTestAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotoLibraryView();
  sub_1000202A0(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  FinishLaunchTestAction.callAsFunction()();
  return (*(v12 + 8))(v15, v11);
}

void PhotoLibraryView.init()(uint64_t a1@<X8>)
{
  *a1 = sub_10001E364;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for PhotoLibraryView();
  v3 = *(v2 + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_100003998(&qword_1000353E8, &qword_100025680);
  swift_storeEnumTagMultiPayload();
  v4 = *(v2 + 24);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *(a1 + v4) = v6 == 1;
}

char *sub_10001F980(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_10001FADC()
{
  result = static ClarityUIMetrics.titleHorizontalPadding.getter();
  qword_1000361C8 = v1;
  return result;
}

uint64_t sub_10001FAFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10001EDB4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001EE1C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000205C4;
  a2[1] = v7;
  return result;
}

uint64_t sub_10001FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001FCE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_100003998(&qword_1000356C8, &qword_100025BB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001FD8C()
{
  sub_10001FE18();
  if (v0 <= 0x3F)
  {
    sub_10000DDCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001FE18()
{
  if (!qword_100036238)
  {
    type metadata accessor for PhotoLibrary();
    sub_10002045C(&unk_100036240, type metadata accessor for PhotoLibrary);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100036238);
    }
  }
}

uint64_t sub_10001FEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoLibraryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001E4DC(a1, v6, a2);
}

unint64_t sub_10001FF78()
{
  result = qword_1000362D8;
  if (!qword_1000362D8)
  {
    sub_1000039E0(&qword_1000362A0, &qword_100026D58);
    sub_1000039E0(&qword_100036290, &qword_100026D48);
    sub_1000039E0(&qword_100036288, &qword_100026D40);
    sub_100003D8C(&qword_1000362C8, &qword_100036288, &qword_100026D40);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362D8);
  }

  return result;
}

uint64_t sub_1000200B8(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000362A0, &qword_100026D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020120()
{
  v1 = (type metadata accessor for PhotoLibraryView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_100010FE4(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = v1[7];
  sub_100003998(&qword_1000353E8, &qword_100025680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for FinishLaunchTestAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_100020240()
{
  v1 = *(type metadata accessor for PhotoLibraryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001F63C(v2);
}

uint64_t sub_1000202A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000353E8, &qword_100025680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100020318()
{
  result = qword_1000362F8;
  if (!qword_1000362F8)
  {
    sub_1000039E0(&qword_1000362F0, &qword_100026D88);
    sub_1000039E0(&qword_100036300, &qword_100026D90);
    type metadata accessor for PlainButtonStyle();
    sub_100003D8C(&qword_100036308, &qword_100036300, &qword_100026D90);
    sub_10002045C(&qword_100036310, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362F8);
  }

  return result;
}

uint64_t sub_10002045C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000204AC()
{
  result = qword_100036320;
  if (!qword_100036320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036320);
  }

  return result;
}

id sub_100020508@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_100020514()
{
  result = qword_100036328;
  if (!qword_100036328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036328);
  }

  return result;
}

unint64_t sub_100020568()
{
  result = qword_100036330;
  if (!qword_100036330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036330);
  }

  return result;
}

uint64_t sub_1000205C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_10002063C()
{
  v1 = OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary;
  v2 = [objc_opt_self() sharedPhotoLibrary];
  *&v0[v1] = v2;
  v3 = v2;
  v4 = sub_100022460();

  swift_beginAccess();
  v10 = v4;
  Published.init(initialValue:)();
  swift_endAccess();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PhotoLibrary();
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = *&v5[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary];
  v7 = v5;
  [v6 registerChangeObserver:v7];
  sub_100022F30();

  return v7;
}

id sub_100020754()
{
  [*&v0[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary] unregisterChangeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoLibrary();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoLibrary()
{
  result = qword_1000363D0;
  if (!qword_1000363D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000208EC()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100035A50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000AAD4(v10, qword_100037E20);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "makePhotoCollection", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100020B78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 localIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000219E4(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000219E4((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_100020C6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100020CF0()
{
  v1 = v0;
  v2 = sub_100003998(&qword_100035540, &qword_100025230);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v13[1];
  sub_10000B0C4(0, &qword_1000363F0, PHAsset_ptr);
  v7 = PHChange.changeDetails<A>(for:)();

  if (v7)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;
    v10 = v1;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v9;
    v12[5] = v10;
    sub_100005F70(0, 0, v5, &unk_100026ED8, v12);
  }
}

uint64_t sub_100020EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for IndexSet.Index();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = sub_100003998(&qword_1000363F8, &qword_100026EE0);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = type metadata accessor for IndexSet();
  v5[14] = v11;
  v12 = *(v11 - 8);
  v5[15] = v12;
  v13 = *(v12 + 64) + 15;
  v5[16] = swift_task_alloc();
  v14 = *(*(sub_100003998(&qword_100036400, &qword_100026EE8) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002107C, v16, v15);
}

uint64_t sub_10002107C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);

  if (![v2 hasIncrementalChanges])
  {
    goto LABEL_7;
  }

  v3 = [*(v0 + 56) insertedIndexes];
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  if (v3)
  {
    v7 = *(v0 + 144);
    v8 = v3;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 56))(v4, 0, 1, v5);
LABEL_6:
    sub_100003F00(v4, &qword_100036400, &qword_100026EE8);
LABEL_7:
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000AAD4(v15, qword_100037E08);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updating photo collection for photo library change.", v18, 2u);
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 64);

    v21 = [v19 fetchResultAfterChanges];
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v21;
    v22 = v20;
    static Published.subscript.setter();
    goto LABEL_12;
  }

  v9 = *(v0 + 56);
  v10 = *(v6 + 56);
  v10(*(v0 + 144), 1, 1, *(v0 + 112));
  sub_100003F00(v4, &qword_100036400, &qword_100026EE8);
  v11 = [v9 removedIndexes];
  v4 = *(v0 + 136);
  v12 = *(v0 + 112);
  if (v11)
  {
    v13 = *(v0 + 136);
    v14 = v11;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    v10(v4, 0, 1, v12);
    goto LABEL_6;
  }

  v30 = *(v0 + 56);
  v10(*(v0 + 136), 1, 1, *(v0 + 112));
  sub_100003F00(v4, &qword_100036400, &qword_100026EE8);
  v31 = [v30 changedIndexes];
  if (v31)
  {
    v32 = *(v0 + 128);
    v34 = *(v0 + 96);
    v33 = *(v0 + 104);
    v35 = *(v0 + 80);
    v36 = v31;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    IndexSet.makeIterator()();
    v37 = *(v34 + 36);
    v58 = (v35 + 8);
    sub_10002199C(&qword_100036408, &type metadata accessor for IndexSet);
    while (1)
    {
      v39 = *(v0 + 104);
      v38 = *(v0 + 112);
      v40 = *(v0 + 88);
      v41 = *(v0 + 72);
      dispatch thunk of Collection.endIndex.getter();
      sub_10002199C(&unk_100036410, &type metadata accessor for IndexSet.Index);
      LOBYTE(v39) = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v58)(v40, v41);
      if (v39)
      {
        break;
      }

      v42 = *(v0 + 104);
      v43 = *(v0 + 112);
      v44 = *(v0 + 56);
      v45 = dispatch thunk of Collection.subscript.read();
      v47 = *v46;
      v45(v0 + 16, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v48 = [v44 fetchResultBeforeChanges];
      v49 = [v48 objectAtIndexedSubscript:v47];

      v50 = [v44 fetchResultAfterChanges];
      v51 = [v50 objectAtIndexedSubscript:v47];

      sub_10000B0C4(0, &qword_1000363F0, PHAsset_ptr);
      LOBYTE(v50) = static NSObject.== infix(_:_:)();

      if ((v50 & 1) == 0)
      {
        v53 = *(v0 + 120);
        v52 = *(v0 + 128);
        v54 = *(v0 + 112);
        sub_100003F00(*(v0 + 104), &qword_1000363F8, &qword_100026EE0);
        (*(v53 + 8))(v52, v54);
        goto LABEL_7;
      }
    }

    v56 = *(v0 + 120);
    v55 = *(v0 + 128);
    v57 = *(v0 + 112);
    sub_100003F00(*(v0 + 104), &qword_1000363F8, &qword_100026EE0);
    (*(v56 + 8))(v55, v57);
  }

LABEL_12:
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 128);
  v26 = *(v0 + 104);
  v27 = *(v0 + 88);

  v28 = *(v0 + 8);

  return v28();
}

void sub_100021668()
{
  sub_100021704();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100021704()
{
  if (!qword_1000363E0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000363E0);
    }
  }
}

uint64_t sub_100021754@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotoLibrary();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100021794@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100021818(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100021894()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000218DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003B4C;

  return sub_100020EAC(a1, v4, v5, v7, v6);
}

uint64_t sub_10002199C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000219E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_100036460, &qword_100026F08);
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

uint64_t sub_100021AF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100021B9C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100021F4C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100021CEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003998(&qword_100036458, &qword_100026F00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100021F4C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100021CEC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000220CC();
      goto LABEL_16;
    }

    sub_100022228(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000220CC()
{
  v1 = v0;
  sub_100003998(&qword_100036458, &qword_100026F00);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100022228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003998(&qword_100036458, &qword_100026F00);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id sub_100022460()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v76 - v6;
  if (qword_100035A50 == -1)
  {
    goto LABEL_2;
  }

LABEL_38:
  swift_once();
LABEL_2:
  v8 = type metadata accessor for OSSignposter();
  sub_10000AAD4(v8, qword_100037E20);
  static OSSignpostID.exclusive.getter();
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v12, "makePhotoCollection", "", v11, 2u);
  }

  (*(v1 + 16))(v5, v7, v0);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = *(v1 + 8);
  v1 += 8;
  v17(v7, v0);
  v18 = [objc_allocWithZone(PHFetchOptions) init];
  [v18 setIncludeAssetSourceTypes:5];
  sub_10000B0C4(0, &qword_100036420, CLFPhotosSettings_ptr);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (![v19 includeSharedAlbums])
  {

    goto LABEL_36;
  }

  v20 = [v19 selectedSharedAlbumCloudIdentifiers];

  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v21 + 16))
  {

    goto LABEL_36;
  }

  v83 = v21;
  v77 = v19;
  v79 = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = &_swiftEmptyArrayStorage;
  v23 = objc_opt_self();
  v78 = v18;
  v24 = [v23 fetchAssetCollectionsWithType:1 subtype:101 options:v18];
  aBlock[4] = sub_1000231C4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020C6C;
  aBlock[3] = &unk_100032E38;
  v25 = _Block_copy(aBlock);
  v76 = v22;

  [v24 enumerateObjectsUsingBlock:v25];
  _Block_release(v25);

  swift_beginAccess();
  v5 = *(v22 + 16);

  v26 = PHPhotoLibrary.cloudIdentifierMappings(forLocalIdentifiers:)();

  v28 = 0;
  v29 = 0;
  v31 = v26 + 64;
  v30 = *(v26 + 64);
  v85 = v26;
  v32 = 1 << *(v26 + 32);
  v87[2] = &_swiftEmptySetSingleton;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v0 = v33 & v30;
  v7 = ((v32 + 63) >> 6);
  *&v27 = 136315394;
  v80 = v27;
  if ((v33 & v30) != 0)
  {
    while (2)
    {
      v36 = v28;
LABEL_19:
      v37 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
      v38 = (v36 << 10) | (16 * v37);
      v39 = (*(v85 + 48) + v38);
      v40 = *v39;
      v1 = v39[1];
      v41 = *(v85 + 56) + v38;
      v42 = *v41;
      v43 = *(v41 + 8);

      v86 = v40;
      if (v43)
      {
        sub_1000231E4(v42, 1);
        if (qword_100035A48 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10000AAD4(v44, qword_100037E08);

        sub_1000231E4(v42, 1);
        v5 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v5, v45))
        {
          v46 = swift_slowAlloc();
          v81 = v5;
          v5 = v46;
          v47 = swift_slowAlloc();
          v84 = v29;
          v48 = v47;
          v82 = swift_slowAlloc();
          v87[0] = v82;
          *v5 = v80;
          v49 = sub_100012614(v86, v1, v87);

          *(v5 + 4) = v49;
          *(v5 + 12) = 2112;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v5 + 14) = v50;
          *v48 = v50;
          v51 = v81;
          _os_log_impl(&_mh_execute_header, v81, v45, "Error fetching album cloud identifier for local identifier: %s. Error: %@.", v5, 0x16u);
          sub_100003F00(v48, &qword_100035548, &qword_100025890);
          v29 = v84;

          sub_10000B154(v82);
        }

        else
        {

          sub_1000231F0(v42, 1);
        }

        v34 = v42;
        v35 = 1;
        goto LABEL_14;
      }

      sub_1000231E4(v42, 0);
      v52 = [v42 stringValue];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v84 = v42;
      v87[0] = v53;
      v87[1] = v55;
      __chkstk_darwin(v56);
      *(&v76 - 2) = v87;
      v5 = sub_100021AF0(sub_1000231FC, (&v76 - 4), v83);

      if (v5)
      {
        sub_100021B9C(v87, v86, v1);
        sub_1000231F0(v84, 0);

        v28 = v36;
        if (v0)
        {
          continue;
        }
      }

      else
      {

        v34 = v84;
        v35 = 0;
LABEL_14:
        sub_1000231F0(v34, v35);
        v28 = v36;
        if (v0)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v36 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v36 >= v7)
    {
      break;
    }

    v0 = *(v31 + 8 * v36);
    ++v28;
    if (v0)
    {
      goto LABEL_19;
    }
  }

  v57 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v59 = [v57 uuidsFromLocalIdentifiers:isa];

  if (v59)
  {
    v60 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000B0C4(0, &qword_100036438, NSPredicate_ptr);
    sub_100003998(&qword_100036440, &qword_100026EF0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1000256F0;
    *(v61 + 56) = sub_100003998(&qword_100036448, &qword_100026EF8);
    *(v61 + 64) = sub_100023254();
    *(v61 + 32) = v60;
    v62 = NSPredicate.init(format:_:)();
    v18 = v78;
    [v78 setInternalInclusionPredicate:v62];

    v19 = v77;
  }

  else
  {
    v18 = v78;
    v19 = v77;
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000AAD4(v63, qword_100037E08);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Unable to get UUIDs from shared album local identifiers.", v66, 2u);
    }
  }

LABEL_36:
  sub_100003998(&qword_100035980, &unk_100025DE0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_100026E30;
  v68 = objc_allocWithZone(NSSortDescriptor);
  v69 = String._bridgeToObjectiveC()();
  v70 = [v68 initWithKey:v69 ascending:1];

  *(v67 + 32) = v70;
  sub_10000B0C4(0, &qword_100036430, NSSortDescriptor_ptr);
  v71 = Array._bridgeToObjectiveC()().super.isa;

  [v18 setSortDescriptors:v71];

  v72 = objc_opt_self();
  v73 = v18;
  v74 = [v72 fetchAssetsWithOptions:v73];

  sub_1000208EC();

  return v74;
}

void sub_100022F30()
{
  v0 = [objc_opt_self() sharedInstance];
  v11 = 0;
  v1 = [v0 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:0 error:&v11];

  v2 = v11;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100035A48 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AAD4(v5, qword_100037E08);
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
      _os_log_impl(&_mh_execute_header, v6, v7, "Error setting AVAudioSession playback category. Error: %@.", v8, 0xCu);
      sub_100003F00(v9, &qword_100035548, &qword_100025890);
    }

    else
    {
    }
  }
}

uint64_t sub_10002318C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000231CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000231E4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000231F0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000231FC(void *a1)
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

unint64_t sub_100023254()
{
  result = qword_100036450;
  if (!qword_100036450)
  {
    sub_1000039E0(&qword_100036448, &qword_100026EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036450);
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