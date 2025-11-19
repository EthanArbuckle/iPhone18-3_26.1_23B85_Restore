uint64_t sub_10006FC44(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007056C(a3, result);
  }

  return result;
}

void sub_10006FCA8(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (v6 && !*(Strong + 88))
  {
    [a3 frame];
    v13 = [objc_allocWithZone(type metadata accessor for DebugStatsView()) initWithFrame:{v9, v10, v11, v12}];
    v14 = *(v8 + 88);
    *(v8 + 88) = v13;
    v15 = v13;

    if (v15)
    {
      type metadata accessor for DebugStatsController();
      swift_allocObject();
      v16 = sub_1000513BC(v15);

      *(v8 + 32) = v16;

      if (*(v8 + 88))
      {
        [a4 addSubview:?];
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:
  v17 = *(v8 + 88);
  if (v17)
  {
    v18 = v17;
    [v18 setHidden:v6 ^ 1u];
  }
}

void sub_10006FE14(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (v6 && !*(Strong + 96))
  {
    [a3 frame];
    v13 = [objc_allocWithZone(type metadata accessor for DebugStateView()) initWithFrame:{v9, v10, v11, v12}];
    v14 = *(v8 + 96);
    *(v8 + 96) = v13;
    v15 = v13;

    if (v15)
    {
      v16 = objc_allocWithZone(type metadata accessor for DebugStateController());
      v17 = sub_100070920(v15);
      v18 = *(v8 + 40);
      *(v8 + 40) = v17;

      if (*(v8 + 96))
      {
        [a4 addSubview:?];
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:
  v19 = *(v8 + 40);
  if (v19)
  {
    *(v19 + qword_1004A4298) = v6;
  }

  v20 = *(v8 + 96);
  if (v20)
  {
    [v20 setHidden:v6 ^ 1u];
  }
}

void sub_10006FF78(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 104);
    if (v4)
    {
      if (v7)
      {
        goto LABEL_8;
      }

      [a3 frame];
      v12 = [objc_allocWithZone(type metadata accessor for PlaneSelectionStatsView()) initWithFrame:{v8, v9, v10, v11}];
      v13 = *(v6 + 104);
      *(v6 + 104) = v12;
      v14 = v12;

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *(v6 + 16);
      [v15 addSubview:v14];

      v7 = *(v6 + 104);
      if (v7)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    if (!v7)
    {
LABEL_9:

      return;
    }

LABEL_8:
    [v7 setHidden:v4 ^ 1u];
    goto LABEL_9;
  }
}

void sub_1000700A0(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 112);
    if (v4)
    {
      if (v7)
      {
        goto LABEL_8;
      }

      [a3 frame];
      v12 = [objc_allocWithZone(type metadata accessor for AccuracyDebugView()) initWithFrame:{v8, v9, v10, v11}];
      v13 = *(v6 + 112);
      *(v6 + 112) = v12;
      v14 = v12;

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *(v6 + 16);
      [v15 addSubview:v14];

      v7 = *(v6 + 112);
      if (v7)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    if (!v7)
    {
LABEL_9:

      return;
    }

LABEL_8:
    [v7 setHidden:v4 ^ 1u];
    goto LABEL_9;
  }
}

id *sub_1000701C8()
{

  return v0;
}

uint64_t sub_100070250()
{
  sub_1000701C8();

  return swift_deallocClassInstance();
}

id sub_1000702B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kEdgeDetectionDebugReticleEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1000702FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100070340@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showEDLines];
  *a2 = result;
  return result;
}

id sub_1000703B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kShowStatistics];
  *a2 = result;
  return result;
}

id sub_100070418@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kShowOverallState];
  *a2 = result;
  return result;
}

uint64_t sub_100070460()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000704C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPEShowStats];
  *a2 = result;
  return result;
}

id sub_10007051C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPEShowAccuracy];
  *a2 = result;
  return result;
}

void sub_10007056C(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = [v5 kEdgeDetectionDebugReticleEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 standardUserDefaults];
    v8 = [v7 showEDLines];

    if (!v8)
    {
      v15 = 1;
      v16 = *(a2 + 72);
      if (!v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  if (!*(a2 + 72))
  {
    [a1 frame];
    v13 = [objc_allocWithZone(type metadata accessor for EdgeDetectorDebugView()) initWithFrame:{v9, v10, v11, v12}];
    v14 = *(a2 + 72);
    *(a2 + 72) = v13;

    if (!v13)
    {
      __break(1u);
      return;
    }

    [*(a2 + 16) addSubview:v13];
  }

  v15 = 0;
  v16 = *(a2 + 72);
  if (v16)
  {
LABEL_7:

    [v16 setHidden:v15];
  }
}

uint64_t *sub_1000706E8(void *a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = [objc_opt_self() standardUserDefaults];
  Defaults.showWorldAnchorDebugInfo.unsafeMutableAddressor();

  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 BOOLForKey:v8];

  *(a3 + 16) = v9;
  a3[3] = sub_10019A778(_swiftEmptyArrayStorage);
  a3[4] = sub_10019A88C(_swiftEmptyArrayStorage);
  a3[5] = sub_10019A8A0(_swiftEmptyArrayStorage);
  a3[6] = sub_10019A97C(_swiftEmptyArrayStorage);
  a3[7] = sub_10019A97C(_swiftEmptyArrayStorage);
  v10 = objc_opt_self();
  a3[10] = [v10 redColor];
  a3[11] = [v10 greenColor];
  a3[8] = a2;
  a3[9] = a1;
  v11 = a2;
  v12 = a1;
  v13 = WorldAnchor.delegate.unsafeMutableAddressor();
  v15[3] = v6;
  v15[4] = &off_100473370;
  v15[0] = a3;
  swift_beginAccess();

  sub_10007089C(v15, v13);
  return a3;
}

uint64_t sub_10007089C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A4258);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_100070920(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = qword_1004A4260;
  v6 = sub_10000F974(&qword_1004A2C58);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v6 + 272);
  swift_retain_n();
  *&v2[v5] = v9(KeyPath, v8);
  v10 = qword_1004A4268;
  v11 = sub_10000F974(&qword_1004A3F50);
  v12 = swift_getKeyPath();
  v13 = *(v11 + 272);

  *&v2[v10] = v13(v12, v8);
  v14 = qword_1004A4270;
  v15 = sub_10000F974(&qword_1004A4418);
  v16 = swift_getKeyPath();
  v17 = *(v15 + 272);

  *&v2[v14] = v17(v16, v8);
  v18 = qword_1004A4278;
  v19 = sub_10000F974(&qword_1004A11E0);
  v20 = swift_getKeyPath();
  v21 = *(v19 + 272);

  *&v2[v18] = v21(v20, v8);
  v22 = qword_1004A4280;
  v23 = sub_10000F974(&qword_1004A11D8);
  v24 = swift_getKeyPath();
  *&v2[v22] = (*(v23 + 272))(v24, v8);
  v25 = qword_1004A4288;
  v26 = sub_10000F974(&unk_1004AFC00);
  v27 = swift_getKeyPath();
  *&v2[v25] = (*(v26 + 272))(v27, v8);
  *&v2[qword_1004A4290] = a1;
  v2[qword_1004A4298] = 1;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  v28 = a1;
  v29 = objc_msgSendSuper2(&v35, "init");
  v30 = v29;
  v31 = *&v29[qword_1004A4290];
  if (v31)
  {
    v32 = v29;
    v33 = v31;
    sub_1000C9580();

    v28 = v32;
  }

  return v30;
}

void sub_100070C40(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1004A4260;
  v5 = sub_10000F974(&qword_1004A2C58);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D5058;
  v8 = *(v5 + 272);
  swift_retain_n();
  *(v2 + v4) = v8(KeyPath, v7);
  v9 = qword_1004A4268;
  v10 = sub_10000F974(&qword_1004A3F50);
  v11 = swift_getKeyPath();
  v12 = *(v10 + 272);

  *(v2 + v9) = v12(v11, v7);
  v13 = qword_1004A4270;
  v14 = sub_10000F974(&qword_1004A4418);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v2 + v13) = v16(v15, v7);
  v17 = qword_1004A4278;
  v18 = sub_10000F974(&qword_1004A11E0);
  v19 = swift_getKeyPath();
  v20 = *(v18 + 272);

  *(v2 + v17) = v20(v19, v7);
  v21 = qword_1004A4280;
  v22 = sub_10000F974(&qword_1004A11D8);
  v23 = swift_getKeyPath();
  *(v2 + v21) = (*(v22 + 272))(v23, v7);
  v24 = qword_1004A4288;
  v25 = sub_10000F974(&unk_1004AFC00);
  v26 = swift_getKeyPath();
  *(v2 + v24) = (*(v25 + 272))(v26, v7);
  *(v2 + qword_1004A4290) = 0;
  *(v2 + qword_1004A4298) = 0;
  sub_1000336B4(a1, v27);
  StateObservingNSObject.init(configuration:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100070F0C(uint64_t result)
{
  if (*(v1 + qword_1004A4290))
  {
    if (*(v1 + qword_1004A4298) == 1)
    {
      __chkstk_darwin(result);
      v3 = v2;

      StateValue.ifUpdated(_:)();

      __chkstk_darwin(v4);

      StateValue.ifUpdated(_:)();

      __chkstk_darwin(v5);

      StateValue.ifUpdated(_:)();

      __chkstk_darwin(v6);

      StateValue.ifUpdated(_:)();

      __chkstk_darwin(v7);

      StateValue.ifUpdated(_:)();

      __chkstk_darwin(v8);

      StateValue.ifUpdated(_:)();
    }
  }

  return result;
}

uint64_t sub_1000711CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + qword_1004A7578);
  v4 = *(type metadata accessor for SessionState() + 20);
  v8[3] = type metadata accessor for ARCamera.TrackingState();
  v5 = sub_1000315D4(v8);
  sub_10004046C(a1 + v4, v5);
  v6 = v3;
  sub_1000C9E74(v6);

  return sub_10000FF00(v8);
}

uint64_t sub_100071258(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a2 + qword_1004A7590);
  v11 = &type metadata for MeasureAppState;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v8 = v7;
  sub_1000C9E74(v8);

  return sub_10000FF00(v10);
}

uint64_t sub_1000712E0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + qword_1004A75A8);
  v6[3] = &type metadata for MeasurementState;
  v6[0] = v2;
  v4 = v3;
  sub_100071684(v2);
  sub_1000C9E74(v4);

  return sub_10000FF00(v6);
}

uint64_t sub_10007135C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + qword_1004A75B0);
  v7 = &type metadata for InstrumentationState;
  v6[0] = v2;
  v4 = v3;
  sub_1000C9E74(v4);

  return sub_10000FF00(v6);
}

void sub_1000713F4()
{

  v1 = *(v0 + qword_1004A4290);
}

void sub_100071484(uint64_t a1)
{

  v2 = *(a1 + qword_1004A4290);
}

uint64_t type metadata accessor for DebugStateController()
{
  result = qword_1004A42C8;
  if (!qword_1004A42C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100071684(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

Swift::Int sub_1000716A0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A48E4(v2);
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
          *(v13 + 1) = v14;
          v13 -= 8;
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
    sub_100073D98(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1000717F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003D88D0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100071880()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003D88D0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000718CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100074810(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100071910()
{
  v1 = qword_1004A4430;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + v1);
    *(v0 + v1) = 0x8000000000000000;
    sub_10000F974(&qword_1004A46D0);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v0 + v1) = v6;
  }

  swift_endAccess();
  v3 = qword_1004A4438;
  swift_beginAccess();
  if (*(*(v0 + v3) + 16))
  {
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + v3);
    *(v0 + v3) = 0x8000000000000000;
    sub_10000F974(&qword_1004A46C8);
    _NativeDictionary.removeAll(isUnique:)(v4);
    *(v0 + v3) = v7;
  }

  result = swift_endAccess();
  *(v0 + qword_1004A4440) = 0;
  *(v0 + qword_1004A4448) = 0;
  *(v0 + qword_1004A4450) = 0;
  return result;
}

uint64_t sub_100071A4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v85 = a1;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  object = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1004A4430;
  swift_beginAccess();
  if (!*(*(v3 + v15) + 16))
  {
    return 0;
  }

  v77 = v6;
  v78 = v5;
  v79 = v11;
  v80 = v9;
  v81 = v8;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v16._countAndFlagsBits = 0x6544202320202020;
  v16._object = 0xEE00203A65636976;
  String.append(_:)(v16);
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 name];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = a2;
  v21 = v20;
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26 = [v17 currentDevice];
  v27 = [v26 model];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33 = [v17 currentDevice];
  v34 = [v33 systemName];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 8236;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40 = [v17 currentDevice];
  v41 = [v40 systemVersion];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 8236;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  v47 = [v17 currentDevice];
  [v47 batteryLevel];

  Float.write<A>(to:)();
  v48._countAndFlagsBits = 0x442023202020200ALL;
  v48._object = 0xED0000203A657461;
  String.append(_:)(v48);
  Date.init()();
  sub_100074B30(&qword_1004A46A8, &type metadata accessor for Date);
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  object[1](v14, v12);
  v50._countAndFlagsBits = 0x4F2023202020200ALL;
  v50._object = 0xEF203A6E69676972;
  String.append(_:)(v50);
  v51._object = v84;
  v51._countAndFlagsBits = v85;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x202020200A0ALL;
  v52._object = 0xE600000000000000;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0xD000000000000035;
  v53._object = 0x8000000100402F00;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 10;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  countAndFlagsBits = v86._countAndFlagsBits;
  v87 = v86;
  object = v86._object;
  v55 = *(v3 + v15);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = sub_100069400(*(v55 + 16), 0);
    v75 = sub_1000C8B94(&v86, v57 + 4, v56, v55);
    swift_bridgeObjectRetain_n();
    sub_10007489C();
    if (v75 != v56)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {

    v57 = _swiftEmptyArrayStorage;
  }

  v86._countAndFlagsBits = v57;
  sub_1000716A0(&v86);
  v59 = v79;

  v60 = v86._countAndFlagsBits;
  v61 = *(v86._countAndFlagsBits + 16);
  if (v61)
  {
    v62 = 32;
    do
    {
      v63 = *(v60 + v62);
      swift_beginAccess();
      v64 = *(v3 + v15);
      if (*(v64 + 16) && (v65 = sub_10019C32C(v63), (v66 & 1) != 0))
      {
        v67 = *(*(v64 + 56) + 8 * v65);
        swift_endAccess();
        v68 = v67;
        v86._countAndFlagsBits = sub_10015AD68();
        v86._object = v69;

        v70._countAndFlagsBits = 10;
        v70._object = 0xE100000000000000;
        String.append(_:)(v70);

        String.append(contentsOf:)(v86);
      }

      else
      {
        swift_endAccess();
      }

      v62 += 8;
      --v61;
    }

    while (v61);

    v71 = v87._countAndFlagsBits;
    v72 = v87._object;
  }

  else
  {

    v72 = object;
    v71 = countAndFlagsBits;
  }

  URL.init(fileURLWithPath:)();
  v86._countAndFlagsBits = v71;
  v86._object = v72;

  v73 = v82;
  static String.Encoding.utf8.getter();
  sub_1000748A4();
  StringProtocol.write(to:atomically:encoding:)();
  (*(v77 + 8))(v73, v78);

  (*(v80 + 8))(v59, v81);

  return 1;
}

void sub_100072394(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  if (a4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *&a2;
  }

  if (a4)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *&a3;
  }

  v12 = __dst[0];

  StateValue.wrappedValue.getter();

  memcpy(__src, v30, sizeof(__src));
  sub_100013C4C(__src);
  v13 = __src[1];
  v14 = type metadata accessor for FrameEvent();
  v15 = objc_allocWithZone(v14);
  v15[OBJC_IVAR____TtC7Measure10FrameEvent_replayed] = 0;
  *&v15[OBJC_IVAR____TtC7Measure10FrameEvent_index] = v12;
  v15[OBJC_IVAR____TtC7Measure10FrameEvent_button] = a1;
  v16 = &v15[OBJC_IVAR____TtC7Measure10FrameEvent_position];
  *v16 = v10;
  v16[1] = v11;
  *&v15[OBJC_IVAR____TtC7Measure10FrameEvent_timestamp] = v13;
  v29.receiver = v15;
  v29.super_class = v14;
  v17 = objc_msgSendSuper2(&v29, "init");
  v18 = *&v17[OBJC_IVAR____TtC7Measure10FrameEvent_index];
  v19 = qword_1004A4430;
  swift_beginAccess();
  v20 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + v19);
  *(v5 + v19) = 0x8000000000000000;
  sub_1000BB6A8(v20, v18, isUniquelyReferenced_nonNull_native);
  *(v5 + v19) = v27;
  swift_endAccess();
  v22 = OBJC_IVAR____TtC7Measure10FrameEvent_timestamp;
  v23 = *&v20[OBJC_IVAR____TtC7Measure10FrameEvent_timestamp];
  v24 = qword_1004A4438;
  swift_beginAccess();
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v5 + v24);
  *(v5 + v24) = 0x8000000000000000;
  sub_1000BB558(v20, v25, v23);
  *(v5 + v24) = v28;
  swift_endAccess();
  v26 = *(v5 + qword_1004A4460);
  if (v26)
  {
    if ([swift_unknownObjectRetain() expectCustomData])
    {
      [v26 recordCustomData:v20 forTimestamp:*&v20[v22]];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100072614()
{
  v1 = v0;
  v69 = type metadata accessor for CharacterSet();
  v2 = *(v69 - 8);
  __chkstk_darwin(v69);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v6 = [objc_opt_self() defaultManager];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 fileExistsAtPath:v7];

  if (!v8)
  {
    return 0;
  }

  sub_100071910();
  static String.Encoding.utf8.getter();
  v74._countAndFlagsBits = String.init(contentsOfFile:encoding:)();
  v74._object = v15;
  v75 = 10;
  v76 = 0xE100000000000000;
  v16 = sub_1000748A4();
  v17 = StringProtocol.components<A>(separatedBy:)();

  v73 = *(v17 + 16);
  if (!v73)
  {
LABEL_36:

    return 1;
  }

  v70 = v1;
  v71 = v17;
  v18 = 0;
  v67 = v16;
  v68 = qword_1004A4430;
  v19 = qword_1004A4438;
  v72 = (v2 + 8);
  v20 = (v17 + 40);
  v21 = v69;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      swift_once();
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v74._countAndFlagsBits = 0xD00000000000001FLL;
      v74._object = 0x8000000100402F60;
      v9 = [v1 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      String.append(_:)(v13);

      Log.debug(_:isPrivate:)(v74, 0);

      return 0;
    }

    v22 = *v20;
    v74._countAndFlagsBits = *(v20 - 1);
    v74._object = v22;

    static CharacterSet.whitespaces.getter();
    v23 = StringProtocol.trimmingCharacters(in:)();
    v25 = v24;
    (*v72)(v4, v21);

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v27._countAndFlagsBits = 35;
      v27._object = 0xE100000000000000;
      if (!String.hasPrefix(_:)(v27))
      {
        break;
      }
    }

LABEL_7:
    ++v18;
    v20 += 2;
    v17 = v71;
    if (v73 == v18)
    {
      goto LABEL_36;
    }
  }

  v28 = sub_10015C8C4(v23, v25);
  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = v19;
  v30 = *&v28[OBJC_IVAR____TtC7Measure10FrameEvent_index];
  v31 = v28;
  v32 = v70;
  v33 = v68;
  swift_beginAccess();
  v1 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = *&v32[v33];
  v35 = v75;
  *&v32[v33] = 0x8000000000000000;
  v36 = sub_10019C32C(v30);
  v38 = *(v35 + 16);
  v39 = (v37 & 1) == 0;
  v40 = __OFADD__(v38, v39);
  v41 = v38 + v39;
  if (v40)
  {
    goto LABEL_38;
  }

  v42 = v37;
  if (*(v35 + 24) >= v41)
  {
    v19 = v29;
    if (isUniquelyReferenced_nonNull_native)
    {
      v44 = v75;
      if ((v37 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v63 = v36;
      sub_1000BE080();
      v36 = v63;
      v44 = v75;
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

  sub_1000B734C(v41, isUniquelyReferenced_nonNull_native);
  v36 = sub_10019C32C(v30);
  if ((v42 & 1) != (v43 & 1))
  {
    goto LABEL_42;
  }

  v19 = v29;
  v44 = v75;
  if (v42)
  {
LABEL_22:
    v47 = v44[7];
    v48 = *(v47 + 8 * v36);
    *(v47 + 8 * v36) = v1;

    goto LABEL_23;
  }

LABEL_18:
  v44[(v36 >> 6) + 8] |= 1 << v36;
  *(v44[6] + 8 * v36) = v30;
  *(v44[7] + 8 * v36) = v1;
  v45 = v44[2];
  v40 = __OFADD__(v45, 1);
  v46 = v45 + 1;
  if (v40)
  {
    goto LABEL_40;
  }

  v44[2] = v46;
LABEL_23:
  v49 = v70;
  *&v70[v68] = v44;
  swift_endAccess();
  v50 = *&v1[OBJC_IVAR____TtC7Measure10FrameEvent_timestamp];
  swift_beginAccess();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *&v49[v19];
  v52 = v75;
  *&v49[v19] = 0x8000000000000000;
  v53 = sub_10019851C(v50);
  v55 = *(v52 + 16);
  v56 = (v54 & 1) == 0;
  v40 = __OFADD__(v55, v56);
  v57 = v55 + v56;
  if (v40)
  {
    goto LABEL_39;
  }

  v58 = v54;
  if (*(v52 + 24) >= v57)
  {
    if ((v51 & 1) == 0)
    {
      v64 = v53;
      sub_1000BDF24();
      v53 = v64;
      v60 = v75;
      if (v58)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }

LABEL_28:
    v60 = v75;
    if (v58)
    {
LABEL_29:
      v61 = v60[7];
      v62 = *(v61 + 8 * v53);
      *(v61 + 8 * v53) = v1;

LABEL_35:
      *&v70[v19] = v60;
      swift_endAccess();

      v21 = v69;
      goto LABEL_7;
    }

LABEL_33:
    v60[(v53 >> 6) + 8] |= 1 << v53;
    *(v60[6] + 8 * v53) = v50;
    *(v60[7] + 8 * v53) = v1;
    v65 = v60[2];
    v40 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v40)
    {
      goto LABEL_41;
    }

    v60[2] = v66;
    goto LABEL_35;
  }

  sub_1000B70D4(v57, v51);
  v53 = sub_10019851C(v50);
  if ((v58 & 1) == (v59 & 1))
  {
    goto LABEL_28;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100072CF4()
{

  StateValue.ifUpdated(_:)();
}

void sub_100072D58(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_10008D4F0();
  sub_100072DCC(v1, __dst[0] == 1);
}

void sub_100072DCC(void *a1, char a2)
{
  if (!a1)
  {
    return;
  }

  if (*(v2 + qword_1004A4448) != 1)
  {
    if (*(v2 + qword_1004A4450) != 1)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = a2;
    v10 = Strong;
    v11 = v9;
    v12 = a1;
    if (v11)
    {
      v13 = [v10 customDataClasses];
      v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = *(v14 + 16);

      if (v15)
      {
        [v12 timestamp];
        if ([v10 customDataForTimestamp:?])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
        }

        v24[0] = v22;
        v24[1] = v23;
        if (*(&v23 + 1))
        {
          type metadata accessor for MetaData();
          if (swift_dynamicCast())
          {
            if (qword_1004A0268 != -1)
            {
              swift_once();
            }

            _StringGuts.grow(_:)(48);

            *&v24[0] = 0xD00000000000002DLL;
            *(&v24[0] + 1) = 0x8000000100402FB0;
            v16._countAndFlagsBits = sub_10008B680();
            String.append(_:)(v16);

            v17._countAndFlagsBits = 46;
            v17._object = 0xE100000000000000;
            String.append(_:)(v17);
            v18._countAndFlagsBits = 0xD00000000000002DLL;
            v18._object = 0x8000000100402FB0;
            Log.debug(_:isPrivate:)(v18, 0);

            goto LABEL_27;
          }
        }

        else
        {
          sub_10002D238(v24);
        }

        if (qword_1004A0268 != -1)
        {
          swift_once();
        }

        v19._object = 0x8000000100402F80;
        v19._countAndFlagsBits = 0xD000000000000023;
        Log.error(_:isPrivate:)(v19, 0);
      }
    }

LABEL_27:
    sub_1000739B4();
    swift_unknownObjectRelease();

    return;
  }

  if (a2)
  {
    v3 = *(v2 + qword_1004A4460);
    if (v3)
    {
      v20 = a1;
      if ([swift_unknownObjectRetain() expectCustomData])
      {
        v4 = objc_allocWithZone(type metadata accessor for MetaData());
        v5 = sub_10008B7A0(0, 0, 0, 0);
        [v20 timestamp];
        [v3 recordCustomData:v5 forTimestamp:?];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_100073168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    v13 = a5;
    v14 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100074B30(&qword_1004A0C40, type metadata accessor for NSKeyValueChangeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  sub_100074908(v8, v10);

  return sub_10002D238(v16);
}

uint64_t sub_1000732D4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_1004A4420;
  v5 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D5058;
  v8 = *(v5 + 272);

  *(v2 + v4) = v8(KeyPath, v7);
  v9 = qword_1004A4428;
  sub_10000F974(&qword_1004A4700);
  swift_getKeyPath();
  *(v2 + v9) = MutableStateValue.__allocating_init(_:_:)();
  *(v2 + qword_1004A4430) = _swiftEmptyDictionarySingleton;
  *(v2 + qword_1004A4438) = _swiftEmptyDictionarySingleton;
  *(v2 + qword_1004A4440) = 0;
  *(v2 + qword_1004A4448) = 0;
  *(v2 + qword_1004A4450) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_1004A4460) = 0;
  sub_1000336B4(a1, v12);
  v10 = StateObservingNSObject.init(configuration:)();
  sub_10000FF00(a1);
  return v10;
}

id sub_100073480()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = qword_1004A4420;
  v4 = sub_10000F974(&qword_1004A1638);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);

  *&v1[v3] = v7(KeyPath, v6);
  v8 = qword_1004A4428;
  sub_10000F974(&qword_1004A4700);
  swift_getKeyPath();
  *&v1[v8] = MutableStateValue.__allocating_init(_:_:)();
  *&v1[qword_1004A4430] = _swiftEmptyDictionarySingleton;
  *&v1[qword_1004A4438] = _swiftEmptyDictionarySingleton;
  v1[qword_1004A4440] = 0;
  v1[qword_1004A4448] = 0;
  v1[qword_1004A4450] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_1004A4460] = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_100073630()
{

  sub_10001B9D0(v0 + qword_1004A4458);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000736B0(uint64_t a1)
{

  sub_10001B9D0(a1 + qword_1004A4458);

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for EventsRecorder()
{
  result = qword_1004A4490;
  if (!qword_1004A4490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventButton(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100073960()
{
  result = qword_1004A46A0;
  if (!qword_1004A46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A46A0);
  }

  return result;
}

void sub_1000739B4()
{

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_10008D4F0();
  sub_100013C4C(__dst);
  if (v1)
  {
    [v1 timestamp];
    v3 = v2;

    StateValue.wrappedValue.getter();

    memcpy(__src, v8, sizeof(__src));
    sub_100013C4C(__src);
    v4 = sub_100073B34(__src[0], v3);
    if (v4 == 10)
    {
    }

    else
    {
      v5 = *(**(v0 + qword_1004A4428) + 400);
      v6 = v4;

      v7 = v5(v8);
      sub_10008E8B4(v6);
      v7(v8, 0);
    }
  }
}

uint64_t sub_100073B34(uint64_t a1, double a2)
{
  v2 = sub_100073BA0(a1, a2);
  if (!v2)
  {
    return 10;
  }

  if (v2[OBJC_IVAR____TtC7Measure10FrameEvent_replayed])
  {

    return 10;
  }

  v2[OBJC_IVAR____TtC7Measure10FrameEvent_replayed] = 1;
  v4 = v2[OBJC_IVAR____TtC7Measure10FrameEvent_button];

  return byte_1003D8920[v4];
}

void *sub_100073BA0(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = qword_1004A4438;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16) && (v8 = sub_10019851C(a2), (v9 & 1) != 0) || (swift_endAccess(), v10 = qword_1004A4430, swift_beginAccess(), v7 = *(v3 + v10), *(v7 + 16)) && (v8 = sub_10019C32C(a1), (v11 & 1) != 0))
  {
    v12 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v13 = v12;
    return v12;
  }

  swift_endAccess();
  if (*(v3 + qword_1004A4440) != 1)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = Strong;
  if (!Strong)
  {
    return v12;
  }

  v15 = [Strong customDataClasses];
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v16 + 16);

  if (!v17)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  if ([v12 customDataForTimestamp:a2])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (!*(&v21 + 1))
  {
    sub_10002D238(v22);
    return 0;
  }

  type metadata accessor for FrameEvent();
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100073D98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000A4894(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1000742E4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
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
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_100067218(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100067218((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1000742E4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1000742E4(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
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
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1000744D8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakAssign();
  v8 = [a1 sequenceURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = URL.path.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v24[0] = v9;
  v24[1] = v11;

  v12._countAndFlagsBits = 1735355438;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);

  if (sub_100072614())
  {
    v13 = 0;
  }

  else
  {
    sub_100018630(0, &qword_1004A46D8);
    sub_10000F974(&qword_1004A46E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1003D5730;
    v15 = type metadata accessor for MetaData();
    *(v14 + 56) = sub_10000F974(&qword_1004A46E8);
    *(v14 + 32) = v15;
    v16 = type metadata accessor for FrameEvent();
    *(v14 + 88) = sub_10000F974(&unk_1004A46F0);
    *(v14 + 64) = v16;
    v17 = NSSet.init(objects:)();
    v24[0] = 0;
    static Set._forceBridgeFromObjectiveC(_:result:)();
    if (!v24[0])
    {
      goto LABEL_10;
    }

    isa = Set._bridgeToObjectiveC()().super.isa;

    [a1 setCustomDataClasses:isa];

    v13 = 1;
  }

  *(a2 + qword_1004A4440) = v13;
  v19 = objc_opt_self();
  v20 = [v19 appleGlobalDomain];
  if (v20)
  {
    v21 = v20;
    [v20 addObserver:a2 forKeyPath:ARReplaySensorFilePathAdvanceToFrameUserDefaultsKey options:11 context:0];

    v22 = [v19 appleGlobalDomain];
    if (v22)
    {
      v23 = v22;

      [v23 addObserver:a2 forKeyPath:ARReplaySensorFilePathAdvanceFramesPerSecondMultiplierUserDefaultsKey options:11 context:0];

      *(a2 + qword_1004A4450) = 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t sub_100074810(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 10;
  }

  if (result > 99)
  {
    switch(result)
    {
      case 'd':
        return 7;
      case 'e':
        return 8;
      case 'f':
        return 9;
    }

    return 10;
  }

  if (result != 5 && result != 6)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1000748A4()
{
  result = qword_1004A46B0;
  if (!qword_1004A46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A46B0);
  }

  return result;
}

uint64_t sub_100074908(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v6 == a1 && v7 == a2)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v10 == a2)
        {

LABEL_27:
          v17 = objc_opt_self();
          v18 = String._bridgeToObjectiveC()();
          [v17 floatForKey:v18];
          v20 = v19;

          LODWORD(v21) = 1.0;
          if (v20 > 0.0)
          {
            *&v21 = v20;
          }

          [v5 setAdvanceFramesPerSecondMultiplier:v21];
          goto LABEL_23;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_27;
        }

LABEL_23:

        return swift_unknownObjectRelease();
      }
    }

    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 integerForKey:v14];

    if (v15 <= 0)
    {
      v16 = -1;
    }

    else
    {
      v16 = v15;
    }

    [v5 advanceToFrameIndex:v16];
    goto LABEL_23;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100074B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100074B78(uint64_t result)
{
  if (*(v1 + qword_1004A4708) == 1)
  {
    __chkstk_darwin(result);

    StateValue.ifUpdated(_:)();
  }

  return result;
}

uint64_t sub_100074C1C(uint64_t result)
{
  if (result > 4)
  {
    if (result <= 7)
    {
      if (result == 5 || result == 6)
      {
        v1 = [objc_opt_self() mainBundle];
        v7 = 0xE000000000000000;
        v3 = 0x8000000100403030;
        v2 = 0xD000000000000012;
      }

      else
      {
        v1 = [objc_opt_self() mainBundle];
        v7 = 0xE000000000000000;
        v2 = 0x544345525F444441;
        v3 = 0xED0000454C474E41;
      }

      goto LABEL_24;
    }

    switch(result)
    {
      case 8:
        v1 = [objc_opt_self() mainBundle];
        v7 = 0xE000000000000000;
        v2 = 0x4E494F505F444441;
        v3 = 0xE900000000000054;
        goto LABEL_24;
      case 9:
        v1 = [objc_opt_self() mainBundle];
        v7 = 0xE000000000000000;
        v2 = 0x5255535F444E4946;
        v3 = 0xEC00000045434146;
LABEL_24:
        v4._countAndFlagsBits = 0;
        v4._object = 0xE000000000000000;
        v5 = 0;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, v4, *(&v7 - 1))._countAndFlagsBits;

        return countAndFlagsBits;
      case 10:
        v1 = [objc_opt_self() mainBundle];
        v7 = 0xE000000000000000;
        v2 = 0xD000000000000013;
        v3 = 0x8000000100403050;
        goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v1 = [objc_opt_self() mainBundle];
      v7 = 0xE000000000000000;
      v2 = 0x4B5241445F4F4F54;
      v3 = 0xE800000000000000;
    }

    else if (result == 3)
    {
      v1 = [objc_opt_self() mainBundle];
      v7 = 0xE000000000000000;
      v2 = 0x4F4C435F45564F4DLL;
      v3 = 0xEB00000000524553;
    }

    else
    {
      v1 = [objc_opt_self() mainBundle];
      v7 = 0xE000000000000000;
      v2 = 0x534F4C435F4F4F54;
      v3 = 0xE900000000000045;
    }

    goto LABEL_24;
  }

  if (result)
  {
    if (result == 1)
    {
      v1 = [objc_opt_self() mainBundle];
      v7 = 0xE000000000000000;
      v2 = 0x574F445F574F4C53;
      v3 = 0xE90000000000004ELL;
      goto LABEL_24;
    }

LABEL_25:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

Swift::Int sub_100074FD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10007504C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100075090@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100075728(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

_BYTE *sub_1000750CC(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  a1[qword_1004A4708] = 0;
  v10 = qword_1004A4710;
  v11 = sub_10000F974(&unk_1004A6950);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v11 + 272);

  *&a1[v10] = v14(KeyPath, v13);
  v16.receiver = a1;
  v16.super_class = type metadata accessor for CalloutView();
  result = objc_msgSendSuper2(&v16, "initWithFrame:", a2, a3, a4, a5);
  result[qword_1004A4708] = 1;
  return result;
}

void sub_100075200(uint64_t a1)
{
  *(a1 + qword_1004A4708) = 0;
  v2 = qword_1004A4710;
  v3 = sub_10000F974(&unk_1004A6950);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v3 + 272);

  *(a1 + v2) = v6(KeyPath, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100075308(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  if (*(a2 + qword_1004A4708) == 1)
  {
    v5 = *((swift_isaMask & *a2) + 0xF0);
    v6 = a2;
    v5(v3);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100075770;
    *(v9 + 24) = v4;
    v13[4] = sub_100031688;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000DC708;
    v13[3] = &unk_10046A510;
    v10 = _Block_copy(v13);
    v11 = a2;

    [v8 performWithoutAnimation:v10];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1000755D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalloutView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CalloutView()
{
  result = qword_1004A4740;
  if (!qword_1004A4740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000756D4()
{
  result = qword_1004A4888;
  if (!qword_1004A4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4888);
  }

  return result;
}

unint64_t sub_100075728(unint64_t result)
{
  if (result > 0xA)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100075738()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000757D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000757F4(unint64_t result)
{
  v2 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_state;
  v3 = *&v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_state];
  if (v3 == result)
  {
    if (result != 7)
    {
      return result;
    }

    result = [v1 isHidden];
    if (result)
    {
      return result;
    }

    result = 7;
    v3 = *&v1[v2];
  }

  if (v3 == 5 || v3 == 0)
  {
    if (result > 7 || ((1 << result) & 0x98) == 0)
    {
      return result;
    }
  }

  else if (result - 3 >= 2 && result != 7 || v3 != 2)
  {
    if (v3 != 7)
    {
      return result;
    }

    result = [v1 isHidden];
    if (result)
    {
      return result;
    }

    goto LABEL_20;
  }

  sub_100076208();
  v26 = v5;
  type metadata accessor for MeasureCamera();
  simd_float4x4.position.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  v6 = vmulq_f32(v26, xmmword_1003D68A0);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v24 = vextq_s8(v6, v7, 8uLL);
  v25 = vextq_s8(v8, v8, 8uLL);
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  v22 = v10;
  v11 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v24, *v9.f32, 1), v25, v9.f32[0]), v10, v9, 2);
  v12 = vnegq_f32(v11);
  v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
  v14 = vrev64q_s32(v11);
  v14.i32[0] = v12.i32[1];
  v14.i32[3] = v12.i32[2];
  v23 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v26, 3), v14, v26, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v12, 8uLL), *v26.f32, 1), vextq_s8(v13, v13, 8uLL), v26.f32[0]));
  simd_float4x4.position.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  v16 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v24, *v15.f32, 1), v25, v15.f32[0]), v22, v15, 2);
  v17 = vnegq_f32(v16);
  v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
  v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v26.f32, 1), vextq_s8(v18, v18, 8uLL), v26.f32[0]);
  v20 = vrev64q_s32(v16);
  v20.i32[0] = v17.i32[1];
  v20.i32[3] = v17.i32[2];
  if (vmovn_s32(vcgtq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v26, 3), v20, v26, 2), v19), v23)).u8[0])
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  sub_100076320(v21);
  v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_lastNumbersOrientation] = v21;
LABEL_20:

  return sub_100075A74();
}

uint64_t sub_100075A74()
{
  v1 = v0;
  ariadne_trace(_:_:_:_:_:)();
  if (qword_1004A0418 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    simd_float4x4.position.getter();
    v54 = v2;
    simd_float4x4.position.getter();
    v4 = vsubq_f32(v54, v3);
    v5 = vmulq_f32(v4, v4);
    v6 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
    [v1 simdTransform];
    *v10.i64 = sub_100077814(v7, v8, v9);
    v59 = v10;
    v56 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_lastNumbersOrientation;
    sub_10018D338(v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_lastNumbersOrientation]);
    v57 = v11;
    v12 = Float.piDiv2.unsafeMutableAddressor();
    v13 = __sincosf_stret(*v12 * -0.5);
    v14 = v6 > 1000.0 || LODWORD(v6) >> 23 > 0xFE;
    v15 = v14;
    [v1 setHidden:(v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldHide] | v15) & 1];
    if (v15)
    {
      break;
    }

    v16 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbers;
    swift_beginAccess();
    v17 = *&v1[v16];
    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_100077728(v6);
    v20 = result;
    v21 = *&v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_widthOffset];
    if (qword_1004A0400 != -1)
    {
      result = swift_once();
    }

    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v22 = vnegq_f32(v57);
    v23 = vrev64q_s32(v57);
    v24 = vmulq_n_f32(xmmword_1003D8A60, v13.__sinval);
    v25 = vtrn2q_s32(v57, vtrn1q_s32(v57, v22));
    v23.i32[0] = v22.i32[1];
    v24.i32[3] = LODWORD(v13.__cosval);
    v23.i32[3] = v22.i32[2];
    v26 = vnegq_f32(v24);
    v27 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v57, v22, 8uLL), *v59.f32, 1), vextq_s8(v25, v25, 8uLL), v59.f32[0]);
    v28 = vmlaq_laneq_f32(vmulq_laneq_f32(v57, v59, 3), v23, v59, 2);
    v29 = vrev64q_s32(v24);
    v30 = vaddq_f32(v28, v27);
    v31 = vtrn2q_s32(v24, vtrn1q_s32(v24, v26));
    v29.i32[0] = v26.i32[1];
    v29.i32[3] = v26.i32[2];
    *&v60 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v30, 3), v29, v30, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v26, 8uLL), *v30.f32, 1), vextq_s8(v31, v31, 8uLL), v30.f32[0])).u64[0];
    v32 = &off_100494000;
    if (!v18)
    {
LABEL_29:
      if (v18 >= v20)
      {
LABEL_42:
        sub_1000766A8(1);
        return ariadne_trace(_:_:_:_:_:)();
      }

      v58 = objc_opt_self();
      v55 = objc_opt_self();
      v41 = v18 + 1;
      v52 = -v20;
      v53 = *&v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial];
      while (2)
      {
        ariadne_trace(_:_:_:_:_:)();
        v42 = [v58 planeWithWidth:200.0 height:100.0];
        [v42 setFirstMaterial:v53];
        v43 = [v55 nodeWithGeometry:v42];

        [v43 v32[66]];
        v44 = v1[v56];
        sub_100018630(0, &qword_1004A1318);
        SCNBoundingVolume.boundingBox.getter();
        v45 = *v61;
        v46 = v62;
        if (v44 > 1)
        {
          if (v44 == 2)
          {
LABEL_35:
            v45 = v46;
          }
        }

        else
        {
          if (!v44)
          {
            HIDWORD(v46) = *&v61[4];
            goto LABEL_35;
          }

          HIDWORD(v45) = HIDWORD(v62);
        }

        v47 = v32;
        v62 = 0;
        *&v61[4] = 0;
        *v61 = 1065353216;
        v63 = 1065353216;
        v64 = 0;
        v65 = 0;
        v66 = 1065353216;
        v67 = v45;
        v68 = 0x3F80000000000000;
        [v43 setPivot:{v61, v52}];
        [v43 setSimdOrientation:v60];
        if (qword_1004A0458 != -1)
        {
          swift_once();
        }

        LODWORD(v48) = dword_1004D5008;
        LODWORD(v49) = *algn_1004D500C;
        LODWORD(v50) = dword_1004D5010;
        [v43 setScale:{v48, v49, v50}];
        swift_beginAccess();
        v51 = v43;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v1[v16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [v51 setHidden:0];
        [v51 setOpacity:1.0];
        [v1 addChildNode:v51];

        ariadne_trace(_:_:_:_:_:)();
        ++v41;
        v32 = v47;
        if (v52 + v41 == 1)
        {
          goto LABEL_42;
        }

        continue;
      }
    }

    v33 = 4;
    while (1)
    {
      v34 = v33 - 4;
      swift_beginAccess();
      v35 = *&v1[v16];
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_19;
      }

      if (v34 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v36 = *(v35 + 8 * v33);
LABEL_19:
      v37 = v36;
      swift_endAccess();
      [v37 setSimdPosition:COERCE_DOUBLE(COERCE_UNSIGNED_INT(-v21))];

      swift_beginAccess();
      v38 = *&v1[v16];
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v39 = *(v38 + 8 * v33);
      }

      v40 = v39;
      swift_endAccess();
      [v40 setSimdOrientation:v60];

      if (++v33 - v18 == 4)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  return ariadne_trace(_:_:_:_:_:)();
}

void sub_100076208()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers__orientationState) + 144);

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

void sub_100076320(unsigned __int8 a1)
{
  v2 = v1;
  [v1 simdTransform];
  *v7.i64 = sub_100077814(v4, v5, v6);
  v43 = v7;
  sub_10018D338(a1);
  v42 = v8;
  v9 = Float.piDiv2.unsafeMutableAddressor();
  v11 = __sincosf_stret(*v9 * -0.5);
  *&v10 = v11.__sinval;
  v40 = v10;
  *&v41 = v11.__cosval;
  v12 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbers;
  swift_beginAccess();
  v13 = *&v1[v12];
  if (v13 >> 62)
  {
    goto LABEL_21;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v15 = vnegq_f32(v42);
      v16 = vtrn2q_s32(v42, vtrn1q_s32(v42, v15));
      v17 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v42, v15, 8uLL), *v43.f32, 1), vextq_s8(v16, v16, 8uLL), v43.f32[0]);
      v18 = vrev64q_s32(v42);
      v18.i32[0] = v15.i32[1];
      v18.i32[3] = v15.i32[2];
      v19 = vaddq_f32(v17, vmlaq_laneq_f32(vmulq_laneq_f32(v42, v43, 3), v18, v43, 2));
      v20 = vmulq_n_f32(xmmword_1003D8A60, *&v40);
      v20.i32[3] = LODWORD(v41);
      v21 = vnegq_f32(v20);
      v22 = vtrn2q_s32(v20, vtrn1q_s32(v20, v21));
      v23 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v20, v21, 8uLL), *v19.f32, 1), vextq_s8(v22, v22, 8uLL), v19.f32[0]);
      v24 = vrev64q_s32(v20);
      v24.i32[0] = v21.i32[1];
      v24.i32[3] = v21.i32[2];
      *&v41 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v20, v19, 3), v24, v19, 2), v23).u64[0];
      v25 = 4;
      while (1)
      {
        v28 = v25 - 4;
        swift_beginAccess();
        v29 = *&v2[v12];
        if ((v29 & 0xC000000000000001) == 0)
        {
          break;
        }

        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
        v31 = v30;
        swift_endAccess();
        [v31 setSimdOrientation:v41];

        swift_beginAccess();
        v32 = *&v2[v12];
        if ((v32 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v28 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v33 = *(v32 + 8 * v25);
          v34 = v33;
        }

        swift_endAccess();
        sub_100018630(0, &qword_1004A1318);
        SCNBoundingVolume.boundingBox.getter();
        v35.i64[0] = *v44;
        v43 = v35;
        v35.i64[0] = v45;
        v42 = v35;

        if (a1 <= 1u)
        {
          v26 = COERCE_DOUBLE(__PAIR64__(v42.u32[1], v43.u32[0]));
          if (!a1)
          {
            v26 = COERCE_DOUBLE(__PAIR64__(v43.u32[1], v42.u32[0]));
          }

          v27 = *&v26;
        }

        else
        {
          v27 = v43.i64[0];
          if (a1 == 2)
          {
            v27 = v42.i64[0];
          }
        }

        v45 = 0;
        *&v44[4] = 0;
        *v44 = 1065353216;
        v46 = 1065353216;
        v47 = 0;
        v48 = 0;
        v49 = 1065353216;
        v50 = v27;
        v51 = 0x3F80000000000000;
        [v34 setPivot:{v44, v40}];

        ++v25;
        if (!--v14)
        {
          goto LABEL_24;
        }
      }

      if (v28 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (v36 < 0)
      {
        __break(1u);
      }

      v14 = v36;
      if (!v36)
      {
        goto LABEL_24;
      }
    }

    v30 = *(v29 + 8 * v25);
    goto LABEL_11;
  }

LABEL_24:
  v37 = *&v2[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v39 = String._bridgeToObjectiveC()();
  [v37 setValue:isa forKeyPath:v39];
}

id sub_1000766A8(char a1)
{
  if ((a1 & 1) == 0 && v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldRenderNumbers] == 1)
  {
    sub_100076208();
    v46 = v2;
    type metadata accessor for MeasureCamera();
    simd_float4x4.position.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
    v3 = vmulq_f32(v46, xmmword_1003D68A0);
    v4 = vnegq_f32(v3);
    v5 = vtrn2q_s32(v3, vtrn1q_s32(v3, v4));
    v43 = vextq_s8(v3, v4, 8uLL);
    v44 = vextq_s8(v5, v5, 8uLL);
    v7 = vrev64q_s32(v3);
    v7.i32[0] = v4.i32[1];
    v7.i32[3] = v4.i32[2];
    v41 = v7;
    v8 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v43, *v6.f32, 1), v44, v6.f32[0]), v7, v6, 2);
    v9 = vnegq_f32(v8);
    v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
    v11 = vrev64q_s32(v8);
    v11.i32[0] = v9.i32[1];
    v11.i32[3] = v9.i32[2];
    v42 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v46, 3), v11, v46, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v46.f32, 1), vextq_s8(v10, v10, 8uLL), v46.f32[0]));
    simd_float4x4.position.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
    v13 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v43, *v12.f32, 1), v44, v12.f32[0]), v41, v12, 2);
    v14 = vnegq_f32(v13);
    v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
    v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v46.f32, 1), vextq_s8(v15, v15, 8uLL), v46.f32[0]);
    v17 = vrev64q_s32(v13);
    v17.i32[0] = v14.i32[1];
    v17.i32[3] = v14.i32[2];
    if (vmovn_s32(vcgtq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v46, 3), v17, v46, 2), v16), v42)).u8[0])
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    sub_100076320(v18);
    v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_lastNumbersOrientation] = v18;
  }

  simd_float4x4.position.getter();
  v45 = v19;
  simd_float4x4.position.getter();
  v21 = vsubq_f32(v45, v20);
  v22 = vmulq_f32(v21, v21);
  v23 = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32));
  v25 = v23 > 1000.0 || LODWORD(v23) >> 23 > 0xFE;
  result = [v1 setHidden:{(v1[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldHide] | v25) & 1, *&v41, *&v42, *&v43}];
  if (!v25)
  {
    v27 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbers;
    swift_beginAccess();
    v28 = *&v1[v27];
    if (v28 >> 62)
    {
      goto LABEL_33;
    }

    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
    v30 = sub_100077728(v23);
    v31 = objc_opt_self();
    [v31 begin];
    result = [v31 setAnimationDuration:0.0];
    if (v29 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v29)
      {
        v32 = -v29;
        for (i = 4; v32 + i != 4; ++i)
        {
          v34 = i - 4;
          swift_beginAccess();
          v35 = *&v1[v27];
          if ((v35 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              v29 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_16;
            }

            v36 = *(v35 + 8 * i);
          }

          v37 = v36;
          swift_endAccess();
          [v37 setOpacity:1.0];

          swift_beginAccess();
          v38 = *&v1[v27];
          if ((v38 & 0xC000000000000001) != 0)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v39 = *(v38 + 8 * i);
          }

          v40 = v39;
          swift_endAccess();
          [v40 setHidden:v30 <= v34];
        }
      }

      return [v31 commit];
    }
  }

  return result;
}

char *sub_100076AD0(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v18 = v17;
  ObjectType = swift_getObjectType();
  v20 = sub_10018C1EC(8);
  [v20 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720);
  if (swift_dynamicCast())
  {
    v21 = v67;
  }

  else
  {
    v21 = [objc_allocWithZone(SCNMaterial) init];
  }

  *&v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial] = v21;
  v22 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers__orientationState;
  KeyPath = swift_getKeyPath();
  v24 = sub_10000F974(&unk_1004A4910);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v25 = qword_1004D5058;
  v26 = *(v24 + 272);

  *&v18[v22] = v26(KeyPath, v25);
  *&v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_state] = static MeasureObjectState.default;
  v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldHide] = 1;
  v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_lastNumbersOrientation] = 2;
  v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldRenderNumbers] = 0;
  v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_isOcclusionInitialized] = 0;
  v27 = &v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_endTransforms];
  *v27 = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = a7;
  v27[7] = a8;
  *&v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbers] = _swiftEmptyArrayStorage;
  *&v18[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_widthOffset] = a17;
  v66.receiver = v18;
  v66.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v66, "init");
  v29 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial;
  v30 = *&v28[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial];
  v31 = v28;
  v32 = v30;
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v34 = String._bridgeToObjectiveC()();
  [v32 setValue:isa forKeyPath:v34];

  v35 = qword_1004A0418;
  v36 = *&v28[v29];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = Float._bridgeToObjectiveC()().super.super.isa;
  v38 = String._bridgeToObjectiveC()();
  [v36 setValue:v37 forKeyPath:v38];

  v39 = *&v28[v29];
  v40 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v41 = String._bridgeToObjectiveC()();
  [v39 setValue:v40 forKeyPath:v41];

  v42 = *&v28[v29];
  v43 = Int._bridgeToObjectiveC()().super.super.isa;
  v44 = String._bridgeToObjectiveC()();
  [v42 setValue:v43 forKeyPath:v44];

  v45 = *&v28[v29];
  v46 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v47 = String._bridgeToObjectiveC()();
  [v45 setValue:v46 forKey:v47];

  v48 = *&v28[v29];
  v49 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v50 = String._bridgeToObjectiveC()();
  [v48 setValue:v49 forKey:v50];

  v51 = *&v28[v29];
  v52 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v53 = String._bridgeToObjectiveC()();
  [v51 setValue:v52 forKey:v53];

  v54 = *&v28[v29];
  v55 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v56 = String._bridgeToObjectiveC()();
  [v54 setValue:v55 forKey:v56];

  return v31;
}

void sub_10007707C()
{
  if (![objc_opt_self() jasperAvailable] || (v1 = objc_opt_self(), v2 = objc_msgSend(v1, "standardUserDefaults"), v3 = objc_msgSend(v2, "isLineOcclusionEnabled"), v2, !v3) || (v4 = *MeasureCore.shared.unsafeMutableAddressor(), swift_beginAccess(), (v5 = *(v4 + 112)) == 0))
  {
    v23 = *(v0 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial);
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v25 = String._bridgeToObjectiveC()();
    [v23 setValue:isa forKeyPath:v25];

    return;
  }

  v6 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial);
  v8 = qword_1004A0638;

  if (v8 != -1)
  {
    swift_once();
  }

  UIColor.rgba.getter();
  swift_beginAccess();
  if (!*(v5 + 192))
  {
    __break(1u);
    goto LABEL_14;
  }

  ADProcessor.transformer.getter();

  Transformer.clipToCameraNormalized.getter();

  simd_float3x3.copy(from:)();
  v9 = [v1 standardUserDefaults];
  [v9 isLineOcclusionEnabled];

  v10 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v11 = String._bridgeToObjectiveC()();
  [v7 setValue:v10 forKeyPath:v11];

  SCNVector4.init(_:_:_:_:)();
  v12 = SCNVector4._bridgeToObjectiveC()().super.isa;
  v13 = String._bridgeToObjectiveC()();
  [v7 setValue:v12 forKeyPath:v13];

  v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v15 = String._bridgeToObjectiveC()();
  [v7 setValue:v14 forKeyPath:v15];

  SCNVector3.init(_:)();
  v16 = SCNVector3._bridgeToObjectiveC()().super.isa;
  v17 = String._bridgeToObjectiveC()();
  [v7 setValue:v16 forKey:v17];

  SCNVector3.init(_:)();
  v18 = SCNVector3._bridgeToObjectiveC()().super.isa;
  v19 = String._bridgeToObjectiveC()();
  [v7 setValue:v18 forKey:v19];

  SCNVector3.init(_:)();
  v20 = SCNVector3._bridgeToObjectiveC()().super.isa;
  v21 = String._bridgeToObjectiveC()();
  [v7 setValue:v20 forKey:v21];

  v22 = *(v5 + 192);
  if (!v22)
  {
LABEL_14:
    __break(1u);
    return;
  }

  swift_beginAccess();
  if (*(v22 + 242) == 1)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
  }

  else
  {

    ADProcessor.outputDepthTexture.getter();
  }

  swift_unknownObjectRetain_n();
  sub_10000F974(&unk_1004A4980);
  v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v27 = [objc_opt_self() materialPropertyWithContents:v26];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28 = String._bridgeToObjectiveC()();
  [v7 setValue:v27 forKey:v28];
  swift_unknownObjectRelease();

  *(v6 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_isOcclusionInitialized) = 1;
}

float sub_1000776C4()
{
  simd_float4x4.position.getter();
  v5 = v0;
  simd_float4x4.position.getter();
  v2 = vsubq_f32(v5, v1);
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
}

uint64_t sub_100077728(float a1)
{
  if (qword_1004A0418 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = *&dword_1004D4FD4;
  if (qword_1004A0410 != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v2 = floorf((a1 - *&dword_1004D4FD0) / v1);
  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 9.2234e18)
  {
    return v2;
  }

LABEL_11:
  __break(1u);
  return result;
}

double sub_100077814(int8x16_t a1, int8x16_t a2, __n128 a3)
{
  v3 = a3.n128_f32[2] + (*a1.i32 + *&a2.i32[1]);
  if (v3 >= 0.0)
  {
    v10 = sqrtf(v3 + 1.0);
    v11 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
    v12 = vmul_f32(v11, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v11));
    v22 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), a3.n128_u64[0]), vext_s8(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL), 4uLL)), vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12)).f32[0]);
  }

  else if (*a1.i32 < *&a2.i32[1] || *a1.i32 < a3.n128_f32[2])
  {
    v5 = 1.0 - *a1.i32;
    if (*&a2.i32[1] >= a3.n128_f32[2])
    {
      v23 = sqrtf(*&a2.i32[1] + (v5 - a3.n128_f32[2]));
      *&v24 = v23 + v23;
      v25 = vrecpe_f32(v24);
      v26 = vmul_f32(v25, vrecps_f32(v24, v25));
      v27.i32[0] = vmul_f32(v26, vrecps_f32(v24, v26)).u32[0];
      v26.f32[0] = *&a1.i32[1] + *a2.i32;
      v26.i32[1] = v24;
      v27.i32[1] = 0.25;
      v22 = vmul_f32(v26, v27);
    }

    else
    {
      v6 = sqrtf(a3.n128_f32[2] + (v5 - *&a2.i32[1]));
      v7 = vrecpe_f32(COERCE_UNSIGNED_INT(v6 + v6));
      v8 = vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v7));
      v22 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)), a3.n128_u64[0]), vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v8)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v13 = sqrtf(*a1.i32 + ((1.0 - *&a2.i32[1]) - a3.n128_f32[2]));
    v14.f32[0] = v13 + v13;
    v15 = vrecpe_f32(v14.u32[0]);
    v16 = vmul_f32(v15, vrecps_f32(v14.u32[0], v15));
    v17 = vmul_f32(v16, vrecps_f32(v14.u32[0], v16)).u32[0];
    v14.f32[1] = *&a1.i32[1] + *a2.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v17;
    v22 = vmul_f32(v14, _D5);
  }

  return *&v22;
}

void sub_1000779D4()
{
  v1 = v0;
  v2 = sub_10018C1EC(8);
  [v2 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720);
  if (swift_dynamicCast())
  {
    v3 = v9;
  }

  else
  {
    v3 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v1 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial) = v3;
  v4 = OBJC_IVAR____TtC7Measure20LineDivisionsNumbers__orientationState;
  KeyPath = swift_getKeyPath();
  v6 = sub_10000F974(&unk_1004A4910);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D5058;
  v8 = *(v6 + 272);

  *(v1 + v4) = v8(KeyPath, v7);
  *(v1 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_state) = static MeasureObjectState.default;
  *(v1 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldHide) = 1;
  *(v1 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_lastNumbersOrientation) = 2;
  *(v1 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldRenderNumbers) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_isOcclusionInitialized) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_100077E04(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100077E30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 113))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100077E50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
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

  *(result + 113) = v3;
  return result;
}

BOOL sub_100077EAC()
{
  if (*(v0 + 104) & 1) != 0 || (*(v0 + 112))
  {
    return 0;
  }

  v2 = *(v0 + 100);
  v3 = *(v0 + 108);
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  Defaults.maxDeviceAcceleration.unsafeMutableAddressor();

  v6 = String._bridgeToObjectiveC()();

  [v5 floatForKey:v6];
  v8 = v7;

  if (v8 < v2)
  {
    return 1;
  }

  v9 = [v4 standardUserDefaults];
  Defaults.maxDeviceRotation.unsafeMutableAddressor();

  v10 = String._bridgeToObjectiveC()();

  [v9 floatForKey:v10];
  v12 = v11;

  return v12 < v3;
}

id sub_100077FEC()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4AB0 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10007806C@<X0>(void *a1@<X8>)
{
  if (qword_1004A0148 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4AB0;
  *a1 = qword_1004D4AB0;

  return v2;
}

BOOL sub_1000780DC(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v12[6] = a1[6];
  v13 = a1[7].i8[0];
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = a2[7].i8[0];
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1000781DC(v12, v14);
}

unint64_t sub_100078160(uint64_t a1)
{
  result = sub_100078188();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100078188()
{
  result = qword_1004A49E0;
  if (!qword_1004A49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A49E0);
  }

  return result;
}

BOOL sub_1000781DC(float32x4_t *a1, float32x4_t *a2)
{
  if (a1[4].i8[0])
  {
    if ((a2[4].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[4].i8[0] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = a2[4].u8[8];
  if (a1[4].i8[8])
  {
    if (!a2[4].i8[8])
    {
      return v2;
    }
  }

  else
  {
    if (a1[4].f32[1] != a2[4].f32[1])
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (a1[6].i8[0])
  {
    if ((a2[6].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[6].i8[0])
    {
      return 0;
    }

    v2 = 0;
    if (COERCE_FLOAT(a1[5].i64[0]) != COERCE_FLOAT(a2[5].i64[0]))
    {
      return v2;
    }

    v4 = vmovn_s32(vceqq_f32(a1[5], a2[5]));
    if ((v4.i8[2] & 1) == 0 || (v4.i8[4] & 1) == 0)
    {
      return v2;
    }
  }

  v2 = a2[6].u8[8];
  if (a1[6].i8[8])
  {
    if (!a2[6].i8[8])
    {
      return v2;
    }
  }

  else
  {
    if (a1[6].f32[1] != a2[6].f32[1])
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v5 = a2[7].i8[0];
  if ((a1[7].i8[0] & 1) == 0)
  {
    if (a1[6].f32[3] != a2[6].f32[3])
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }

  return (a2[7].i8[0] & 1) != 0;
}

id sub_10007836C(char a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 _currentTraitCollection];
  if ((a1 & 1) == 0 && (a3 & 1) != 0 && UIAccessibilityIsInvertColorsEnabled())
  {
    v9 = [v7 traitCollectionWithUserInterfaceStyle:2];
    [v7 _setCurrentTraitCollection:v9];
LABEL_10:

    v16 = [v3 CGColor];
    [v7 _setCurrentTraitCollection:v8];
    v17 = [objc_allocWithZone(UIColor) initWithCGColor:v16];

    return v17;
  }

  if (a1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [v7 traitCollectionWithUserInterfaceStyle:v10];
  sub_10000F974(&unk_1004A3F10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003D6280;
  *(v12 + 32) = v11;
  v13 = v11;
  result = [v7 _traitCollectionWithBackgroundLevel:a2];
  if (result)
  {
    *(v12 + 40) = result;
    sub_10007855C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

    [v7 _setCurrentTraitCollection:v9];
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_10007855C()
{
  result = qword_1004A49E8;
  if (!qword_1004A49E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A49E8);
  }

  return result;
}

uint64_t sub_1000785A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72656E726F63;
  }

  else
  {
    v3 = 1701274725;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x72656E726F63;
  }

  else
  {
    v5 = 1701274725;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100078644()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000786BC()
{
  String.hash(into:)();
}

Swift::Int sub_100078720()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100078794@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100464EE0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000787F4(uint64_t *a1@<X8>)
{
  v2 = 1701274725;
  if (*v1)
  {
    v2 = 0x72656E726F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100078828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = *(*v4 + 184) * *(*v4 + 184);
  if (*(*v4 + 202) == 1 && *(v6 + 200) == 1)
  {
    v8 = *(a4 + 32);
    if ((v8 & 0xFE) != 2)
    {
      v9 = a4;
      if (v8)
      {

        a4 = v9;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a4 = v9;
        if ((v10 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v11 = *(v5 + 128);
      if (v11 != 2)
      {
        if (v11)
        {
        }

        else
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a4 = v9;
          if ((v12 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MeasureCamera();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        CGPoint.init(xy:)();
        v14 = v13;
        a1 = static CGPoint.distanceSq(_:_:)();
        a4 = v9;
        if (v15 < v7)
        {
          return *&v14;
        }
      }
    }
  }

LABEL_12:
  if (*(v6 + 200) == 1)
  {
    v16 = *(a4 + 32);
    if ((v16 & 0xFE) != 2)
    {
      if (v16)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v18 = v5[12];
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = *(v6 + 112) * *(v6 + 112);
        v21 = v18 + 40;
        do
        {
          v14 = *(v21 - 8);
          a1 = static CGPoint.distanceSq(_:_:)();
          if (v22 < v20)
          {
            a1 = static CGPoint.distanceSq(_:_:)();
            if (v23 < v7)
            {
              return *&v14;
            }
          }

          v21 += 16;
        }

        while (--v19);
      }
    }
  }

LABEL_23:
  result = (*(*v5[13] + 144))(&v46, a1);
  if ((v48 & 1) != 0 || *(v6 + 196) >= v47)
  {
    v25 = 0;
    v26 = v5[12];
    v27 = *(v6 + 180) * *(v6 + 180);
    v28 = *(v26 + 16);
    v29 = v26 + 40;
    v30 = _swiftEmptyArrayStorage;
LABEL_26:
    v31 = (v29 + 16 * v25);
    while (v28 != v25)
    {
      if (v25 >= v28)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v32 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_47;
      }

      v34 = *(v31 - 1);
      v33 = *v31;
      result = static CGPoint.distanceSq(_:_:)();
      ++v25;
      v31 += 2;
      if (v35 < v27)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v46 = v30;
        if ((result & 1) == 0)
        {
          result = sub_1000A24F0(0, *(v30 + 2) + 1, 1);
          v30 = v46;
        }

        v37 = *(v30 + 2);
        v36 = *(v30 + 3);
        if (v37 >= v36 >> 1)
        {
          result = sub_1000A24F0((v36 > 1), v37 + 1, 1);
          v30 = v46;
        }

        *(v30 + 2) = v37 + 1;
        v38 = &v30[2 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v33;
        v25 = v32;
        goto LABEL_26;
      }
    }

    v39 = *(v30 + 2);
    if (!v39)
    {

      return 0;
    }

    v14 = v30[4];
    v40 = v39 - 1;
    if (v39 != 1)
    {
      v41 = v30 + 7;
      do
      {
        v42 = *(v41 - 1);
        static CGPoint.distanceSq(_:_:)();
        v44 = v43;
        static CGPoint.distanceSq(_:_:)();
        if (v44 < v45)
        {
          v14 = v42;
        }

        v41 += 2;
        --v40;
      }

      while (v40);
    }

    return *&v14;
  }

  return 0;
}

uint64_t sub_100078C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = *(a4 + 32);
  if ((v7 & 0xFE) != 2)
  {
    v8 = v6[48];
    if (v7)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    v10 = *(v5 + 72);
    v11 = *(v10 + 16);
    result = sub_100079338(v5, v53);
    if (v11)
    {
      v13 = 0;
      v14 = v10 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        v16 = v13;
        while (1)
        {
          if (v16 >= v11)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            return result;
          }

          v13 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_55;
          }

          v52 = *(v14 + 16 * v16);
          result = static CGPoint.distanceSq(_:_:)();
          if (v17 < (v6[30] * v6[30]))
          {
            result = static CGPoint.distanceSq(_:_:)();
            if (v18 < (v8 * v8))
            {
              break;
            }
          }

          ++v16;
          if (v13 == v11)
          {
            goto LABEL_21;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v15;
        if ((result & 1) == 0)
        {
          result = sub_1000A24F0(0, *(v15 + 2) + 1, 1);
          v15 = v53[0];
        }

        v19 = v52;
        v21 = *(v15 + 2);
        v20 = *(v15 + 3);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          result = sub_1000A24F0((v20 > 1), v21 + 1, 1);
          v19 = v52;
          v22 = v21 + 1;
          v15 = v53[0];
        }

        *(v15 + 2) = v22;
        *&v15[2 * v21 + 4] = v19;
      }

      while (v13 != v11);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

LABEL_21:
    v23 = *(v15 + 2);
    if (v23)
    {
      v24 = v15[4];
      v25 = v23 - 1;
      if (v23 != 1)
      {
        v26 = v15 + 7;
        do
        {
          v27 = *(v26 - 1);
          static CGPoint.distanceSq(_:_:)();
          v29 = v28;
          static CGPoint.distanceSq(_:_:)();
          if (v29 < v30)
          {
            v24 = v27;
          }

          v26 += 2;
          --v25;
        }

        while (v25);
      }

      sub_100079370(v5);
      return *&v24;
    }

    a1 = sub_100079370(v5);
  }

LABEL_29:
  result = (*(**(v5 + 104) + 144))(v53, a1);
  if ((v55 & 1) != 0 || v6[49] >= v54)
  {
    v31 = 0;
    v32 = *(v5 + 72);
    v33 = v6[47] * v6[47];
    v34 = *(v32 + 16);
    v35 = v32 + 40;
    v36 = _swiftEmptyArrayStorage;
LABEL_32:
    v37 = (v35 + 16 * v31);
    while (v34 != v31)
    {
      if (v31 >= v34)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v38 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_53;
      }

      v40 = *(v37 - 1);
      v39 = *v37;
      result = static CGPoint.distanceSq(_:_:)();
      ++v31;
      v37 += 2;
      if (v41 < v33)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v36;
        if ((result & 1) == 0)
        {
          result = sub_1000A24F0(0, *(v36 + 2) + 1, 1);
          v36 = v53[0];
        }

        v43 = *(v36 + 2);
        v42 = *(v36 + 3);
        if (v43 >= v42 >> 1)
        {
          result = sub_1000A24F0((v42 > 1), v43 + 1, 1);
          v36 = v53[0];
        }

        *(v36 + 2) = v43 + 1;
        v44 = &v36[2 * v43];
        *(v44 + 4) = v40;
        *(v44 + 5) = v39;
        v31 = v38;
        goto LABEL_32;
      }
    }

    v45 = *(v36 + 2);
    if (!v45)
    {

      return 0;
    }

    v24 = v36[4];
    v46 = v45 - 1;
    if (v45 != 1)
    {
      v47 = v36 + 7;
      do
      {
        v48 = *(v47 - 1);
        static CGPoint.distanceSq(_:_:)();
        v50 = v49;
        static CGPoint.distanceSq(_:_:)();
        if (v50 < v51)
        {
          v24 = v48;
        }

        v47 += 2;
        --v46;
      }

      while (v46);
    }

    return *&v24;
  }

  return 0;
}

float sub_1000790B8@<S0>(uint64_t a1@<X8>)
{
  sub_10000F974(&qword_1004A49F0);
  OptionalSmoothedValue.updated(with:)();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_1000791D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000791A4(*(a1 + 16));
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = result & 1;
  return result;
}

uint64_t sub_10007924C@<X0>(uint64_t a1@<X8>)
{
  result = Corner.lerped<A>(newValue:t:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for EdgeDetectionPointInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EdgeDetectionPointInfo(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000793B4()
{
  result = qword_1004A49F8;
  if (!qword_1004A49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A49F8);
  }

  return result;
}

void sub_100079408(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a1;
  *&v113 = a2[1];
  v100 = a2[3];
  v92 = *(a2 + 3);
  v95 = *(a2 + 2);
  v7 = *(a2 + 8);
  v93 = a2[10];
  v94 = a2[9];
  v103 = *(a2 + 11);
  v96 = a2[13];
  v97 = *a2;
  v107 = a2[14];
  *&v109 = a2[2];
  v105 = a2[15];
  v101 = *(a2 + 128);
  v8 = *a1;
  v9 = objc_opt_self();
  v10 = [v9 calcHistogramMedianForImage:v8];
  v11 = v10 * 0.8;
  v12 = v10 * 1.66;
  v13 = [v8 getSize];
  v15 = v14;
  v17 = v16;
  v18 = *(v3 + 176);
  v19 = (*(v3 + 160))(v13);
  v20 = (*(v3 + 144))(v15, v17);
  v21 = [v9 blurredImage:v8 blurSize:LODWORD(v4[2].ty)];
  v22 = [v9 findCannyEdgesInImage:v21 threshold1:v11 threshold2:v12];

  v23 = COERCE_DOUBLE([v9 findContoursInImage:v22]);
  [v9 filterContours:*&v23 forMinEdgeLength:v20];
  v24 = [v9 findCornersAndFilterContours:*&v23 forMaxEdgeTurns:v18 forTurningPointMargin:v19];
  v25 = v5[7];
  v151[6] = v5[6];
  v151[7] = v25;
  v152 = *(v5 + 128);
  v26 = v5[3];
  v151[2] = v5[2];
  v151[3] = v26;
  v27 = v5[5];
  v151[4] = v5[4];
  v151[5] = v27;
  v28 = v5[1];
  v151[0] = *v5;
  v151[1] = v28;
  v29 = &qword_1004D5000;
  v99 = v24;
  if (sub_10001376C(v151) != 1)
  {
    v29 = v101;
    v37 = v105;
    v36 = v107;
    v38 = v103;
    v35 = v96;
    v40 = v97;
    v39 = v95;
    v42 = v93;
    v41 = v94;
    v43 = v92;
    goto LABEL_5;
  }

  KeyPath = swift_getKeyPath();
  v31 = sub_10000F974(&unk_1004A3F40);
  v32 = qword_1004A04D8;
  *&v113 = v22;
  *&v109 = *&v23;
  v100 = v24;
  if (v32 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v33 = *(v29 + 88);
    v34 = *(v31 + 272);

    v35 = v34(KeyPath, v33);
    v29 = 2;
    swift_retain_n();
    v36 = 0;
    v37 = 0;
    v38 = vdupq_n_s64(_swiftEmptyArrayStorage);
    v39 = 0uLL;
    v7 = 1.0;
    v40 = v4;
    v41 = _swiftEmptyArrayStorage;
    v42 = v4;
    v43 = 0uLL;
LABEL_5:
    v140[0] = v40;
    v140[1] = v113;
    v140[2] = v109;
    v140[3] = v100;
    v141 = v39;
    v142 = v43;
    v143 = v7;
    v144 = v41;
    v145 = v42;
    v104 = v38.i64[0];
    v146 = v38;
    v147 = v35;
    v106 = v37;
    v108 = v36;
    v148 = v36;
    v149 = v37;
    v150 = v29;
    tx = v4[2].tx;
    sub_10004B6E4(v5, &t1);
    v102 = tx;
    static CGSize.* infix(_:_:)();
    v45 = *(v6 + 5);
    v46 = *(v6 + 6);
    v47 = *(v6 + 7);
    v48 = *(v6 + 8);
    CGAffineTransformMakeScale(&t1, 1.0 / v49, 1.0 / v50);
    v51 = t1.tx;
    ty = t1.ty;
    v110 = *&t1.c;
    v114 = *&t1.a;
    ARCameraImageToViewTransform();
    v53 = *&t1.a;
    v54 = *&t1.c;
    v55 = *&t1.tx;
    *&t1.a = v114;
    *&t1.c = v110;
    t1.tx = v51;
    t1.ty = ty;
    *&t2.a = v53;
    *&t2.c = v54;
    *&t2.tx = v55;
    CGAffineTransformConcat(&v119, &t1, &t2);
    v56 = v119.tx;
    v57 = v119.ty;
    v111 = *&v119.c;
    v115 = *&v119.a;
    CGAffineTransformMakeScale(&t1, v47, v48);
    v58 = *&t1.a;
    v59 = *&t1.c;
    v60 = *&t1.tx;
    *&t1.a = v115;
    *&t1.c = v111;
    t1.tx = v56;
    t1.ty = v57;
    *&t2.a = v58;
    *&t2.c = v59;
    *&t2.tx = v60;
    CGAffineTransformConcat(&v119, &t1, &t2);
    v61 = v119.tx;
    v62 = v119.ty;
    v112 = *&v119.c;
    v116 = *&v119.a;
    CGAffineTransformMakeTranslation(&t1, v45, v46);
    v63 = *&t1.a;
    v64 = *&t1.c;
    v65 = *&t1.tx;
    *&t1.a = v116;
    *&t1.c = v112;
    t1.tx = v61;
    t1.ty = v62;
    *&t2.a = v63;
    *&t2.c = v64;
    *&t2.tx = v65;
    *&v4 = COERCE_DOUBLE(&t1);
    CGAffineTransformConcat(&v119, &t1, &t2);
    v153 = v119;
    v109 = *&v119.c;
    v113 = *&v119.a;
    v66 = *&v40;
    v67 = v119.tx;
    v68 = v119.ty;
    KeyPath = swift_getKeyPath();
    v31 = sub_10000F974(&unk_1004A3F40);
    v69 = qword_1004A04D8;

    if (v69 != -1)
    {
LABEL_48:
      swift_once();
    }

    v70 = qword_1004D5058;
    v71 = *(v31 + 272);

    v72 = v71(KeyPath, v70);
    t1.a = v66;
    *&t1.b = v22;
    t1.c = v23;
    *&t1.d = v99;
    *(&v135 + 1) = _swiftEmptyArrayStorage;
    *&v136 = v66;
    *(&v136 + 1) = _swiftEmptyArrayStorage;
    *&v137 = _swiftEmptyArrayStorage;
    *(&v137 + 1) = v72;
    v138 = 0uLL;
    v139 = 2;
    t1.tx = v45;
    t1.ty = v46;
    *&v134 = v47;
    *(&v134 + 1) = v48;
    *&v135 = v102;
    v5 = v22;
    v22 = *&v23;
    v100 = v99;

    v23 = COERCE_DOUBLE(&off_100494000);
    v73 = [v22 getContourCount];
    v74 = 0;
    v6 = &off_100494000;
    while (1)
    {
      if (v73 == v74)
      {
        goto LABEL_12;
      }

      if ([v22 getPointCountAtContourIndex:v74])
      {
        break;
      }

      v75 = __OFADD__(v74++, 1);
      if (v75)
      {
        __break(1u);
LABEL_12:
        v76 = [v22 getContourCount];
        goto LABEL_14;
      }
    }

    v76 = v74;
LABEL_14:
    sub_10007A020(v76, 0, v73 == v74, [v22 getContourCount], 0, 1, v22);
    if (*&v77 == 0.0)
    {
LABEL_21:
      a = COERCE_DOUBLE(_swiftEmptyArrayStorage);

LABEL_44:
      *(&v135 + 1) = a;
      sub_100046F64(v104, v100, &v153);

      sub_100079370(v140);
      *&v138 = v108;
      *(&v138 + 1) = v106;
      v119 = t1;
      v120 = v134;
      v121 = v135;
      v122 = v136;
      v123 = v137;
      v124 = v138;
      v130 = v137;
      v131 = v138;
      t2 = t1;
      v127 = v134;
      v128 = v135;
      v129 = v136;
      v139 = v29;
      v125 = v29;
      v132 = v29;
      sub_100079338(&v119, v118);
      sub_100079370(&t2);
      v88 = v124;
      *(a3 + 96) = v123;
      *(a3 + 112) = v88;
      *(a3 + 128) = v125;
      v89 = v120;
      *(a3 + 32) = *&v119.tx;
      *(a3 + 48) = v89;
      v90 = v122;
      *(a3 + 64) = v121;
      *(a3 + 80) = v90;
      v91 = *&v119.c;
      *a3 = *&v119.a;
      *(a3 + 16) = v91;
      return;
    }

    v66 = *&v77;
    v99 = v5;
    *&v119.a = _swiftEmptyArrayStorage;
    sub_1000A24F0(0, v77 & ~(v77 >> 63), 0);
    a = v119.a;
    KeyPath = [v22 getContourCount];
    v5 = 0;
    while (1)
    {
      v31 = KeyPath == v5;
      if (KeyPath == v5)
      {
        break;
      }

      if ([v22 getPointCountAtContourIndex:v5])
      {
        goto LABEL_23;
      }

      v75 = __OFADD__(v5, 1);
      v5 = (v5 + 1);
      if (v75)
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    v5 = [v22 getContourCount];
LABEL_23:
    if ((*&v66 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  LODWORD(v102) = v29;
  v29 = 0;
  *&v4 = 0.0;
  while (1)
  {
LABEL_25:
    if (v29 >= *&v66)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v75 = __OFADD__(v29++, 1);
    if (v75)
    {
      goto LABEL_46;
    }

    if (v31)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    [v22 getPointAtContourIndex:v5 pointIndex:v4];
    *&t2.a = v113;
    *&t2.c = v109;
    t2.tx = v67;
    t2.ty = v68;
    v81 = CGPointApplyAffineTransform(v154, &t2);
    y = v81.y;
    x = v81.x;
    v119.a = a;
    v23 = *(*&a + 16);
    v82 = *(*&a + 24);
    KeyPath = (*&v23 + 1);
    if (*&v23 >= v82 >> 1)
    {
      v31 = &v119;
      v45 = v81.y;
      sub_1000A24F0((v82 > 1), *&v23 + 1, 1);
      y = v81.y;
      x = v81.x;
      a = v119.a;
    }

    *(*&a + 16) = KeyPath;
    v83 = *&a + 16 * *&v23;
    *(v83 + 32) = x;
    *(v83 + 40) = y;
    v118[0] = v22;
    v75 = __OFADD__(v4, 1);
    v4 = (v4 + 1);
    if (v75)
    {
      goto LABEL_47;
    }

    if (v4 == [v22 getPointCountAtContourIndex:v5])
    {
      break;
    }

LABEL_32:
    v31 = 0;
    if (v29 == *&v66)
    {
      goto LABEL_43;
    }
  }

  v75 = __OFADD__(v5, 1);
  v5 = (v5 + 1);
  if (!v75)
  {
    while (1)
    {
      v117 = v5;
      if (v5 == [v22 getContourCount])
      {
        break;
      }

      sub_10007A408();
      sub_10007A454();
      v84 = sub_100132248(&t2, &v117);
      v86 = *(v85 + 8);
      v87 = *v85;
      (v84)(&t2, 0);
      KeyPath = [v87 getPointCountAtContourIndex:v86];

      if (KeyPath)
      {
        *&v4 = 0.0;
        goto LABEL_32;
      }

      v75 = __OFADD__(v5, 1);
      v5 = (v5 + 1);
      if (v75)
      {
        __break(1u);
        goto LABEL_51;
      }
    }

    v5 = [v22 getContourCount];
    *&v4 = 0.0;
    v31 = 1;
    if (v29 != *&v66)
    {
      goto LABEL_25;
    }

LABEL_43:

    LOBYTE(v29) = LOBYTE(v102);
    v5 = v99;
    goto LABEL_44;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_100079DD0(double a1, double a2)
{
  if (a2 > a1)
  {
    a1 = a2;
  }

  if (a1 == 40.0)
  {
    return 30;
  }

  if (a1 == 49.0)
  {
    return 45;
  }

  if (a1 == 59.0)
  {
    return 55;
  }

  return 75;
}

uint64_t sub_100079E2C(double a1, double a2)
{
  if (a2 > a1)
  {
    a1 = a2;
  }

  if (a1 == 49.0 || a1 == 40.0)
  {
    return 17;
  }

  else
  {
    return 20;
  }
}

uint64_t sub_100079E60()
{
  swift_beginAccess();
  if ((*(v0 + 56) & 1) == 0)
  {
    vImage_Buffer.deallocate()();
  }

  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 56) = 1;
  swift_endAccess();
  sub_1000223C4(*(v0 + 64));
  v1 = *(v0 + 160);
  v5[4] = *(v0 + 144);
  v5[5] = v1;
  v6[0] = *(v0 + 176);
  *(v6 + 11) = *(v0 + 187);
  v2 = *(v0 + 96);
  v5[0] = *(v0 + 80);
  v5[1] = v2;
  v3 = *(v0 + 128);
  v5[2] = *(v0 + 112);
  v5[3] = v3;
  sub_10007A524(v5);
  return swift_deallocClassInstance();
}

__n128 sub_100079F34(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100079F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 123))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100079FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 123) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 123) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10007A020(char *a1, uint64_t a2, char a3, char *a4, uint64_t a5, char a6, id a7)
{
  v7 = a7;
  LOBYTE(v8) = a6;
  v10 = a4;
  v11 = a3;
  v13 = a1;
  if (a4 == a1)
  {
    if ((a6 & 1) == 0)
    {
      while ((v11 & 1) == 0)
      {
        if (a5 >= a2)
        {
          goto LABEL_31;
        }

LABEL_27:
        v22 = [v7 getContourCount];
        v23 = [v7 getContourCount];
        if (v22 < 0 || v23 < v22)
        {
          goto LABEL_49;
        }

        if (([v7 getContourCount] & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        if (v10 == v13)
        {
LABEL_31:
          if ((v11 & 1) == 0 && (v8 & 1) == 0)
          {
            v24 = v7;
            v25 = [v24 getPointCountAtContourIndex:v13];
            if (a2 < 0 || v25 < a2)
            {
              goto LABEL_58;
            }

            v26 = [v24 getPointCountAtContourIndex:v13];

            if (a5 < 0 || v26 < a5)
            {
              goto LABEL_59;
            }
          }

          return;
        }

        v27 = v7;
        v28 = [v27 getPointCountAtContourIndex:v10];
        if (v8)
        {
          goto LABEL_62;
        }

        v29 = v28;
        v30 = [v27 getPointCountAtContourIndex:v10];
        if (v29 < 0 || v30 < v29)
        {
          goto LABEL_56;
        }

        v31 = a2;
        v8 = [v27 getPointCountAtContourIndex:v10];

        if (a5 < 0 || v8 < a5)
        {
          goto LABEL_57;
        }

        v18 = (a5 - v29);
        a2 = -1;
        v19 = v13;
        v13 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_45;
        }

LABEL_12:
        if (v13 < v19)
        {
          do
          {
            v8 = v7;
            v10 = [v8 getPointCountAtContourIndex:v13];
            if (([v8 getPointCountAtContourIndex:v13] & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            v21 = [v8 getPointCountAtContourIndex:v13];

            if (v10 < 0 || v21 < v10)
            {
              goto LABEL_47;
            }

            v20 = __OFADD__(v18, v10 * a2);
            v18 += v10 * a2;
            if (v20)
            {
              goto LABEL_48;
            }
          }

          while (v19 != ++v13);
        }

        if (v11)
        {
          return;
        }

        v7 = v7;
        if (([v7 getPointCountAtContourIndex:v19] & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        a5 = [v7 getPointCountAtContourIndex:v19];

        if (v31 < 0 || a5 < v31)
        {
          goto LABEL_55;
        }

        if (!__OFADD__(v18, v31 * a2))
        {
          return;
        }

        __break(1u);
      }

      goto LABEL_61;
    }

    if (a3)
    {
      return;
    }

    goto LABEL_51;
  }

  if (a4 < a1)
  {
    goto LABEL_27;
  }

  if ((a3 & 1) == 0)
  {
    v14 = a7;
    v15 = [v14 getPointCountAtContourIndex:v13];
    v16 = [v14 getPointCountAtContourIndex:v13];
    if (a2 < 0 || v16 < a2)
    {
      goto LABEL_52;
    }

    v17 = [v14 getPointCountAtContourIndex:v13];

    if (v15 < 0 || v17 < v15)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v18 = (v15 - a2);
    a2 = 1;
    v31 = a5;
    v11 = v8;
    v19 = v10;
    v10 = v13;
    v20 = __OFADD__(v13++, 1);
    if (!v20)
    {
      goto LABEL_12;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

float sub_10007A350@<S0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = 1056964608;
  *(a1 + 8) = xmmword_1003D8D20;
  *(a1 + 24) = 0x4008000000000000;
  v2 = a2 * 10.0;
  *(a1 + 32) = a2 * 10.0;
  *(a1 + 36) = 1041865114;
  v3 = a2 * 15.0;
  *(a1 + 40) = a2 * 5.0;
  *(a1 + 48) = 0x3FE0000000000000;
  result = a2 * 50.0;
  *(a1 + 56) = 5;
  *(a1 + 64) = sub_100079DD0;
  *(a1 + 72) = 0;
  *(a1 + 80) = sub_100079E2C;
  *(a1 + 88) = 0;
  *(a1 + 96) = 5;
  *(a1 + 100) = v3;
  *(a1 + 104) = result;
  *(a1 + 108) = v2;
  *(a1 + 112) = result;
  *(a1 + 116) = 1008981770;
  *(a1 + 120) = 257;
  *(a1 + 122) = 1;
  return result;
}

unint64_t sub_10007A408()
{
  result = qword_1004A4AB8;
  if (!qword_1004A4AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A4AB8);
  }

  return result;
}

unint64_t sub_10007A454()
{
  result = qword_1004A4AC0;
  if (!qword_1004A4AC0)
  {
    sub_10007A408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4AC0);
  }

  return result;
}

__n128 sub_10007A554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10007A570(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10007A5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10007A620(float a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  v8[4] = sub_10007ADB8;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100041180;
  v8[3] = &unk_10046A9B8;
  v5 = _Block_copy(v8);
  v6 = v1;

  v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:0.6];
  _Block_release(v5);
  [v7 setInterruptible:0];
  [v7 startAnimation];
}

id sub_10007A824(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AnimatingUIControl();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_10007A8B8(char a1)
{
  v3 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v3)
  {
    if (a1)
    {
      if (![v1 isEnabled])
      {
LABEL_7:
        v12.receiver = v1;
        v12.super_class = type metadata accessor for AnimatingUIControl();
        return objc_msgSendSuper2(&v12, "setHighlighted:", a1 & 1);
      }

      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      *(v5 + 24) = 0x3FECCCCCCCCCCCCDLL;
      v6 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = sub_10007ADDC;
      v18 = v5;
      aBlock = _NSConcreteStackBlock;
      v14 = 1107296256;
      v7 = &unk_10046A968;
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v1;
      *(v8 + 24) = 0x3FF0000000000000;
      v6 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = sub_10007AD5C;
      v18 = v8;
      aBlock = _NSConcreteStackBlock;
      v14 = 1107296256;
      v7 = &unk_10046A918;
    }

    v15 = sub_100041180;
    v16 = v7;
    v9 = _Block_copy(&aBlock);
    v10 = v1;

    v11 = [v6 initWithDuration:v9 dampingRatio:0.5 animations:1.0];
    _Block_release(v9);
    [v11 setInterruptible:0];
    [v11 startAnimation];

    goto LABEL_7;
  }

  return result;
}

id sub_10007AAC4(void *a1, CGFloat a2)
{
  [a1 transform];
  tx = t1.tx;
  ty = t1.ty;
  v6 = atan2(t1.b, t1.a);
  CGAffineTransformMakeScale(&t1, a2, a2);
  v7 = t1.tx;
  v8 = t1.ty;
  v18 = *&t1.c;
  v20 = *&t1.a;
  CGAffineTransformMakeRotation(&t1, v6);
  v9 = *&t1.a;
  v10 = *&t1.c;
  v11 = *&t1.tx;
  *&t1.a = v20;
  *&t1.c = v18;
  t1.tx = v7;
  t1.ty = v8;
  *&t2.a = v9;
  *&t2.c = v10;
  *&t2.tx = v11;
  CGAffineTransformConcat(&v22, &t1, &t2);
  v12 = v22.tx;
  v13 = v22.ty;
  v19 = *&v22.c;
  v21 = *&v22.a;
  CGAffineTransformMakeTranslation(&t1, tx, ty);
  v14 = *&t1.a;
  v15 = *&t1.c;
  v16 = *&t1.tx;
  *&t1.a = v21;
  *&t1.c = v19;
  t1.tx = v12;
  t1.ty = v13;
  *&t2.a = v14;
  *&t2.c = v15;
  *&t2.tx = v16;
  CGAffineTransformConcat(&v22, &t1, &t2);
  t1 = v22;
  return [a1 setTransform:&t1];
}

id sub_10007ACCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatingUIControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007AD24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007AD68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007AD80()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10007ADE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10007AE30(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 sub_10007AE80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007AE94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10007AEDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007AF38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = v3 == 0;
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a2 + 8);
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2)
    {
      return v4;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    return (v4 & 1) == 0 && *&v2 == *&v3 && *(&v2 + 1) == *(&v3 + 1);
  }
}

uint64_t sub_10007AFA0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_10007CB2C(&v5, &v7) & 1;
}

uint64_t sub_10007AFEC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_10007C90C(v4, v6);
}

uint64_t sub_10007B098(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_10007B2EC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for MeasurementCapture();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v315[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000F974(&unk_1004ABAD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v315[-v10];
  v12 = sub_10000F974(&qword_1004A4AF0);
  __chkstk_darwin(v12);
  v331 = &v315[-v13];
  v330 = type metadata accessor for MeasurementHistoryItem();
  __chkstk_darwin(v330);
  v15 = &v315[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v315[-v18];
  v20 = *(v4 + 16);
  if (v20 != *(v2 + 16))
  {
    return 0;
  }

  if (!v20 || v4 == v2)
  {
    return 1;
  }

  v327 = v12;
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = v4 + v21;
  v329 = v2 + v21;
  v23 = (v6 + 48);
  v322 = *(v17 + 72);
  v323 = &v315[-v18];
  v25 = v330;
  v24 = v331;
  v324 = v15;
  v325 = v23;
  v319 = v5;
  v320 = v8;
  v321 = v11;
  while (1)
  {
    v328 = v20;
    result = sub_100023338(v22, v19);
    if (!v328)
    {
      break;
    }

    v326 = v22;
    sub_100023338(v329, v15);
    v27 = *v19 == *v15 && v19[1] == v15[1];
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_284;
    }

    v28 = v19[2] == v15[2] && v19[3] == v15[3];
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_284;
    }

    v29 = v25[6];
    v30 = *(v327 + 48);
    sub_10007CC18(v19 + v29, v24);
    sub_10007CC18(v15 + v29, v24 + v30);
    v31 = *v23;
    if ((*v23)(v24, 1, v5) == 1)
    {
      if (v31(v24 + v30, 1, v5) != 1)
      {
        goto LABEL_287;
      }

      sub_100018F04(v24, &unk_1004ABAD0);
    }

    else
    {
      v32 = v321;
      sub_10007CC18(v24, v321);
      if (v31(v24 + v30, 1, v5) == 1)
      {
        sub_10007CC88(v32, type metadata accessor for MeasurementCapture);
LABEL_287:
        v314 = &qword_1004A4AF0;
        goto LABEL_289;
      }

      v33 = v24 + v30;
      v34 = v320;
      sub_1000390F0(v33, v320);
      if ((static URL.== infix(_:_:)() & 1) == 0)
      {
        sub_10007CC88(v34, type metadata accessor for MeasurementCapture);
        sub_10007CC88(v32, type metadata accessor for MeasurementCapture);
        v314 = &unk_1004ABAD0;
LABEL_289:
        sub_100018F04(v24, v314);
        goto LABEL_284;
      }

      v35 = v32;
      v36 = static URL.== infix(_:_:)();
      sub_10007CC88(v34, type metadata accessor for MeasurementCapture);
      v23 = v325;
      sub_10007CC88(v35, type metadata accessor for MeasurementCapture);
      sub_100018F04(v24, &unk_1004ABAD0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_284;
      }
    }

    v37 = v25[7];
    memcpy(v333, v15 + v37, sizeof(v333));
    memcpy(v334, v19 + v37, 0x346uLL);
    v38 = sub_1000218D8(v334);
    if (v38)
    {
      if (v38 == 1)
      {
        v39 = sub_1000218E4(v334);
        memcpy(v332, v333, 0x346uLL);
        if (sub_1000218D8(v332) != 1)
        {
          goto LABEL_284;
        }

        v40 = sub_1000218E4(v332);
        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v43 = *(v39 + 32);
        v44 = *(v39 + 36);
        v45 = *(v39 + 37);
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        v48 = *(v40 + 32);
        v49 = *(v40 + 36);
        v50 = *(v40 + 37);
        if (*v39 != *v40 || *(v39 + 8) != *(v40 + 8))
        {
          LODWORD(v318) = *(v40 + 37);
          v51 = v49;
          v52 = v44;
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v44 = v52;
          v49 = v51;
          v50 = v318;
          if ((v53 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v41)
        {
          if (!v46)
          {
            goto LABEL_283;
          }

          if (v42 != v47 || v41 != v46)
          {
            v54 = v44;
            v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v44 = v54;
            if ((v55 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v46)
        {
          goto LABEL_283;
        }

        if (v44)
        {
          if ((v49 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v49 & 1) != 0 || v43 != v48)
        {
          goto LABEL_283;
        }

        if (v45 == 4)
        {
          if (v50 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v50 == 4 || v45 != v50)
        {
          goto LABEL_283;
        }

        v76 = *(v39 + 56);
        v75 = *(v39 + 64);
        v77 = *(v39 + 72);
        v78 = *(v39 + 76);
        v79 = *(v39 + 77);
        v80 = *(v40 + 56);
        v81 = *(v40 + 64);
        v82 = *(v40 + 72);
        v83 = *(v40 + 76);
        v84 = *(v40 + 77);
        if (*(v39 + 40) != *(v40 + 40) || *(v39 + 48) != *(v40 + 48))
        {
          LODWORD(v318) = *(v40 + 77);
          v85 = v83;
          v86 = v78;
          v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v78 = v86;
          v83 = v85;
          v84 = v318;
          if ((v87 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v75)
        {
          if (!v81)
          {
            goto LABEL_283;
          }

          if (v76 != v80 || v75 != v81)
          {
            v88 = v78;
            v89 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v78 = v88;
            if ((v89 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v81)
        {
          goto LABEL_283;
        }

        if (v78)
        {
          if ((v83 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v83 & 1) != 0 || v77 != v82)
        {
          goto LABEL_283;
        }

        if (v79 == 4)
        {
          if (v84 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v84 == 4 || v79 != v84)
        {
          goto LABEL_283;
        }

        v106 = *(v39 + 96);
        v105 = *(v39 + 104);
        v107 = *(v39 + 112);
        v108 = *(v39 + 116);
        v109 = *(v39 + 117);
        v110 = *(v40 + 96);
        v111 = *(v40 + 104);
        v112 = *(v40 + 112);
        v113 = *(v40 + 116);
        v114 = *(v40 + 117);
        if (*(v39 + 80) != *(v40 + 80) || *(v39 + 88) != *(v40 + 88))
        {
          LODWORD(v318) = *(v40 + 117);
          v115 = v113;
          v116 = v108;
          v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v108 = v116;
          v113 = v115;
          v114 = v318;
          if ((v117 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v105)
        {
          if (!v111)
          {
            goto LABEL_283;
          }

          if (v106 != v110 || v105 != v111)
          {
            v118 = v108;
            v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v108 = v118;
            if ((v119 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v111)
        {
          goto LABEL_283;
        }

        if (v108)
        {
          if ((v113 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v113 & 1) != 0 || v107 != v112)
        {
          goto LABEL_283;
        }

        if (v109 == 4)
        {
          if (v114 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v114 == 4 || v109 != v114)
        {
          goto LABEL_283;
        }

        v136 = *(v39 + 136);
        v135 = *(v39 + 144);
        v137 = *(v39 + 152);
        v138 = *(v39 + 156);
        v139 = *(v39 + 157);
        v140 = *(v40 + 136);
        v141 = *(v40 + 144);
        v142 = *(v40 + 152);
        v143 = *(v40 + 156);
        v144 = *(v40 + 157);
        if (*(v39 + 120) != *(v40 + 120) || *(v39 + 128) != *(v40 + 128))
        {
          LODWORD(v318) = *(v40 + 157);
          v145 = v143;
          v146 = v138;
          v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v138 = v146;
          v143 = v145;
          v144 = v318;
          if ((v147 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v135)
        {
          if (!v141)
          {
            goto LABEL_283;
          }

          if (v136 != v140 || v135 != v141)
          {
            v148 = v138;
            v149 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v138 = v148;
            if ((v149 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v141)
        {
          goto LABEL_283;
        }

        if (v138)
        {
          if ((v143 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v143 & 1) != 0 || v137 != v142)
        {
          goto LABEL_283;
        }

        if (v139 == 4)
        {
          if (v144 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v144 == 4 || v139 != v144)
        {
          goto LABEL_283;
        }

        v206 = *(v39 + 176);
        v205 = *(v39 + 184);
        v207 = *(v39 + 192);
        v208 = *(v39 + 196);
        v209 = *(v39 + 197);
        v210 = *(v40 + 176);
        v211 = *(v40 + 184);
        v212 = *(v40 + 192);
        v213 = *(v40 + 196);
        v214 = *(v40 + 197);
        if (*(v39 + 160) != *(v40 + 160) || *(v39 + 168) != *(v40 + 168))
        {
          LODWORD(v318) = *(v40 + 197);
          v215 = v213;
          v216 = v208;
          v217 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v208 = v216;
          v213 = v215;
          v214 = v318;
          if ((v217 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v205)
        {
          if (!v211)
          {
            goto LABEL_283;
          }

          if (v206 != v210 || v205 != v211)
          {
            v218 = v208;
            v219 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v208 = v218;
            if ((v219 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v211)
        {
          goto LABEL_283;
        }

        if (v208)
        {
          if ((v213 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v213 & 1) != 0 || v207 != v212)
        {
          goto LABEL_283;
        }

        if (v209 == 4)
        {
          if (v214 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v214 == 4 || v209 != v214)
        {
          goto LABEL_283;
        }

        v221 = *(v39 + 216);
        v220 = *(v39 + 224);
        v222 = *(v39 + 232);
        v223 = *(v39 + 236);
        v224 = *(v39 + 237);
        v225 = *(v40 + 216);
        v226 = *(v40 + 224);
        v227 = *(v40 + 232);
        v228 = *(v40 + 236);
        v229 = *(v40 + 237);
        if (*(v39 + 200) != *(v40 + 200) || *(v39 + 208) != *(v40 + 208))
        {
          LODWORD(v318) = *(v40 + 237);
          v230 = v228;
          v231 = v223;
          v232 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v223 = v231;
          v228 = v230;
          v229 = v318;
          if ((v232 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v220)
        {
          if (!v226)
          {
            goto LABEL_283;
          }

          if (v221 != v225 || v220 != v226)
          {
            v233 = v223;
            v234 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v223 = v233;
            if ((v234 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v226)
        {
          goto LABEL_283;
        }

        if (v223)
        {
          if ((v228 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v228 & 1) != 0 || v222 != v227)
        {
          goto LABEL_283;
        }

        if (v224 == 4)
        {
          if (v229 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v229 == 4 || v224 != v229)
        {
          goto LABEL_283;
        }

        v235 = *(v39 + 240);
        v236 = *(v39 + 248);
        v238 = *(v39 + 256);
        v237 = *(v39 + 264);
        v239 = *(v39 + 272);
        v317 = (v40 + 276);
        v318 = v39 + 276;
        v240 = *(v39 + 276);
        v241 = *(v39 + 277);
        v242 = *(v40 + 256);
        v243 = *(v40 + 264);
        v244 = *(v40 + 272);
        v245 = *(v40 + 276);
        v246 = *(v40 + 277);
        if (v235 != *(v40 + 240) || v236 != *(v40 + 248))
        {
          v316 = *(v40 + 277);
          v247 = v245;
          v248 = v240;
          v249 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v240 = v248;
          v245 = v247;
          v246 = v316;
          if ((v249 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v237)
        {
          if (!v243)
          {
            goto LABEL_283;
          }

          if (v238 != v242 || v237 != v243)
          {
            v250 = v240;
            v251 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v240 = v250;
            if ((v251 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v243)
        {
          goto LABEL_283;
        }

        if (v240)
        {
          v252 = v318;
          if ((v245 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v252 = v318;
          if ((v245 & 1) != 0 || v239 != v244)
          {
            goto LABEL_283;
          }
        }

        if (v241 == 4)
        {
          if (v246 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v246 == 4 || v241 != v246)
        {
          goto LABEL_283;
        }

        v254 = *(v39 + 296);
        v253 = *(v39 + 304);
        v255 = *(v39 + 312);
        v256 = *(v252 + 40);
        v257 = *(v39 + 317);
        v258 = *(v40 + 296);
        v259 = *(v40 + 304);
        v260 = *(v40 + 312);
        v261 = v317[40];
        v262 = *(v40 + 317);
        if (*(v39 + 280) != *(v40 + 280) || *(v39 + 288) != *(v40 + 288))
        {
          v263 = *(v39 + 317);
          v316 = *(v40 + 317);
          v264 = v261;
          v265 = v256;
          v266 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v256 = v265;
          v261 = v264;
          v262 = v316;
          v257 = v263;
          if ((v266 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v253)
        {
          if (!v259)
          {
            goto LABEL_283;
          }

          if (v254 != v258 || v253 != v259)
          {
            v267 = v257;
            v268 = v256;
            v269 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v256 = v268;
            v257 = v267;
            if ((v269 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v259)
        {
          goto LABEL_283;
        }

        if (v256)
        {
          v270 = v318;
          if ((v261 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v270 = v318;
          if ((v261 & 1) != 0 || v255 != v260)
          {
            goto LABEL_283;
          }
        }

        if (v257 == 4)
        {
          v19 = v323;
          v15 = v324;
          if (v262 != 4)
          {
            goto LABEL_284;
          }
        }

        else
        {
          v19 = v323;
          v15 = v324;
          if (v262 == 4 || v257 != v262)
          {
            goto LABEL_284;
          }
        }

        v271 = *(v39 + 328);
        v272 = *(v39 + 352);
        v273 = *(v270 + 80);
        v274 = *(v39 + 357);
        v357[0] = *(v39 + 320);
        v357[1] = v271;
        v358 = *(v39 + 336);
        v359 = v272;
        v360 = v273;
        v361 = v274;
        v275 = *(v40 + 328);
        v276 = *(v40 + 352);
        v277 = v317;
        v278 = v317[80];
        v279 = *(v40 + 357);
        v362[0] = *(v40 + 320);
        v362[1] = v275;
        v363 = *(v40 + 336);
        v364 = v276;
        v365 = v278;
        v366 = v279;
        if ((sub_10010DD4C(v357, v362) & 1) == 0)
        {
          goto LABEL_284;
        }

        v281 = *(v39 + 376);
        v280 = *(v39 + 384);
        v282 = *(v39 + 392);
        v283 = *(v270 + 120);
        v284 = *(v39 + 397);
        v285 = *(v40 + 376);
        v286 = *(v40 + 384);
        v287 = *(v40 + 392);
        v288 = v277[120];
        v289 = *(v40 + 397);
        if (*(v39 + 360) != *(v40 + 360) || *(v39 + 368) != *(v40 + 368))
        {
          v316 = *(v40 + 397);
          v290 = v288;
          v291 = v283;
          v292 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v283 = v291;
          v288 = v290;
          v289 = v316;
          if ((v292 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v280)
        {
          if (!v286)
          {
            goto LABEL_283;
          }

          if (v281 != v285 || v280 != v286)
          {
            v293 = v283;
            v294 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v283 = v293;
            if ((v294 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v286)
        {
          goto LABEL_283;
        }

        if (v283)
        {
          v295 = v318;
          v5 = v319;
          v23 = v325;
          if ((v288 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v295 = v318;
          v5 = v319;
          v23 = v325;
          if ((v288 & 1) != 0 || v282 != v287)
          {
            goto LABEL_283;
          }
        }

        if (v284 == 4)
        {
          v19 = v323;
          v15 = v324;
          if (v289 != 4)
          {
            goto LABEL_284;
          }
        }

        else
        {
          v19 = v323;
          v15 = v324;
          if (v289 == 4 || v284 != v289)
          {
            goto LABEL_284;
          }
        }

        v296 = *(v39 + 408);
        v297 = *(v39 + 432);
        v298 = *(v295 + 160);
        v299 = *(v39 + 437);
        v347[0] = *(v39 + 400);
        v347[1] = v296;
        v348 = *(v39 + 416);
        v349 = v297;
        v350 = v298;
        v351 = v299;
        v300 = *(v40 + 408);
        v301 = *(v40 + 432);
        v302 = v317;
        v303 = v317[160];
        v304 = *(v40 + 437);
        v352[0] = *(v40 + 400);
        v352[1] = v300;
        v353 = *(v40 + 416);
        v354 = v301;
        v355 = v303;
        v356 = v304;
        if ((sub_10010DD4C(v347, v352) & 1) == 0)
        {
          goto LABEL_284;
        }

        v305 = *(v39 + 448);
        v306 = *(v39 + 472);
        v307 = *(v295 + 200);
        v308 = *(v39 + 477);
        v337[0] = *(v39 + 440);
        v337[1] = v305;
        v338 = *(v295 + 180);
        v339 = v306;
        v340 = v307;
        v341 = v308;
        v309 = *(v40 + 448);
        v310 = *(v40 + 472);
        v311 = v302[200];
        v312 = *(v40 + 477);
        v342[0] = *(v40 + 440);
        v342[1] = v309;
        v343 = *(v302 + 180);
        v344 = v310;
        v345 = v311;
        v346 = v312;
        v313 = sub_10010DD4C(v337, v342);
        v25 = v330;
        v24 = v331;
        if ((v313 & 1) == 0)
        {
          goto LABEL_284;
        }
      }

      else
      {
        v58 = sub_1000218E4(v334);
        memcpy(v332, v333, 0x346uLL);
        if (sub_1000218D8(v332) != 2)
        {
          goto LABEL_284;
        }

        v59 = sub_1000218E4(v332);
        v61 = *(v58 + 16);
        v60 = *(v58 + 24);
        v62 = *(v58 + 32);
        v63 = *(v58 + 36);
        v64 = *(v58 + 37);
        v65 = *(v59 + 16);
        v66 = *(v59 + 24);
        v67 = *(v59 + 32);
        v68 = *(v59 + 36);
        v69 = *(v59 + 37);
        if (*v58 != *v59 || *(v58 + 8) != *(v59 + 8))
        {
          LODWORD(v318) = *(v59 + 37);
          v70 = v68;
          v71 = v63;
          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v63 = v71;
          v68 = v70;
          v69 = v318;
          if ((v72 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v60)
        {
          if (!v66)
          {
            goto LABEL_283;
          }

          if (v61 != v65 || v60 != v66)
          {
            v73 = v63;
            v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v63 = v73;
            if ((v74 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v66)
        {
          goto LABEL_283;
        }

        if (v63)
        {
          if ((v68 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v68 & 1) != 0 || v62 != v67)
        {
          goto LABEL_283;
        }

        if (v64 == 4)
        {
          if (v69 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v69 == 4 || v64 != v69)
        {
          goto LABEL_283;
        }

        v91 = *(v58 + 56);
        v90 = *(v58 + 64);
        v92 = *(v58 + 72);
        v93 = *(v58 + 76);
        v94 = *(v58 + 77);
        v95 = *(v59 + 56);
        v96 = *(v59 + 64);
        v97 = *(v59 + 72);
        v98 = *(v59 + 76);
        v99 = *(v59 + 77);
        if (*(v58 + 40) != *(v59 + 40) || *(v58 + 48) != *(v59 + 48))
        {
          LODWORD(v318) = *(v59 + 77);
          v100 = v98;
          v101 = v93;
          v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v93 = v101;
          v98 = v100;
          v99 = v318;
          if ((v102 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        if (v90)
        {
          if (!v96)
          {
            goto LABEL_283;
          }

          if (v91 != v95 || v90 != v96)
          {
            v103 = v93;
            v104 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v93 = v103;
            if ((v104 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v96)
        {
          goto LABEL_283;
        }

        if (v93)
        {
          if ((v98 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else if ((v98 & 1) != 0 || v92 != v97)
        {
          goto LABEL_283;
        }

        if (v94 == 4)
        {
          if (v99 != 4)
          {
            goto LABEL_283;
          }
        }

        else if (v99 == 4 || v94 != v99)
        {
          goto LABEL_283;
        }

        v121 = *(v58 + 96);
        v120 = *(v58 + 104);
        v122 = *(v58 + 112);
        v123 = *(v58 + 116);
        v124 = *(v58 + 117);
        v125 = *(v59 + 96);
        v126 = *(v59 + 104);
        v127 = *(v59 + 112);
        v128 = *(v59 + 116);
        v129 = *(v59 + 117);
        if (*(v58 + 80) != *(v59 + 80) || *(v58 + 88) != *(v59 + 88))
        {
          LODWORD(v318) = *(v59 + 117);
          v130 = v128;
          v131 = v123;
          v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v123 = v131;
          v128 = v130;
          v129 = v318;
          if ((v132 & 1) == 0)
          {
LABEL_283:
            v19 = v323;
            v15 = v324;
LABEL_284:
            sub_10007CC88(v15, type metadata accessor for MeasurementHistoryItem);
            sub_10007CC88(v19, type metadata accessor for MeasurementHistoryItem);
            return 0;
          }
        }

        if (v120)
        {
          if (!v126)
          {
            goto LABEL_283;
          }

          if (v121 != v125 || v120 != v126)
          {
            v133 = v123;
            v134 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v123 = v133;
            if ((v134 & 1) == 0)
            {
              goto LABEL_283;
            }
          }
        }

        else if (v126)
        {
          goto LABEL_283;
        }

        if (v123)
        {
          v5 = v319;
          v23 = v325;
          if ((v128 & 1) == 0)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v5 = v319;
          v23 = v325;
          if ((v128 & 1) != 0 || v122 != v127)
          {
            goto LABEL_283;
          }
        }

        if (v124 == 4)
        {
          v19 = v323;
          v15 = v324;
          if (v129 != 4)
          {
            goto LABEL_284;
          }
        }

        else
        {
          v19 = v323;
          v15 = v324;
          if (v129 == 4 || v124 != v129)
          {
            goto LABEL_284;
          }
        }

        v150 = *(v58 + 200);
        v387[4] = *(v58 + 184);
        v387[5] = v150;
        v388[0] = *(v58 + 216);
        *(v388 + 14) = *(v58 + 230);
        v151 = *(v58 + 136);
        v387[0] = *(v58 + 120);
        v387[1] = v151;
        v152 = *(v58 + 168);
        v387[2] = *(v58 + 152);
        v387[3] = v152;
        v153 = *(v59 + 120);
        v154 = *(v59 + 136);
        v155 = *(v59 + 168);
        v389[2] = *(v59 + 152);
        v389[3] = v155;
        v389[0] = v153;
        v389[1] = v154;
        v156 = *(v59 + 184);
        v157 = *(v59 + 200);
        v158 = *(v59 + 216);
        *(v390 + 14) = *(v59 + 230);
        v389[5] = v157;
        v390[0] = v158;
        v389[4] = v156;
        if ((sub_1001B1244(v387, v389) & 1) == 0)
        {
          goto LABEL_284;
        }

        v159 = *(v58 + 320);
        v383[4] = *(v58 + 304);
        v383[5] = v159;
        v384[0] = *(v58 + 336);
        v160 = *(v58 + 256);
        v383[0] = *(v58 + 240);
        v383[1] = v160;
        v161 = *(v58 + 288);
        v383[2] = *(v58 + 272);
        v383[3] = v161;
        *(v384 + 14) = *(v58 + 350);
        v162 = *(v59 + 240);
        v163 = *(v59 + 256);
        v164 = *(v59 + 272);
        v385[3] = *(v59 + 288);
        v385[2] = v164;
        v385[1] = v163;
        v385[0] = v162;
        v165 = *(v59 + 304);
        v166 = *(v59 + 320);
        v167 = *(v59 + 336);
        *(v386 + 14) = *(v59 + 350);
        v386[0] = v167;
        v385[5] = v166;
        v385[4] = v165;
        if ((sub_1001B1244(v383, v385) & 1) == 0)
        {
          goto LABEL_284;
        }

        v168 = *(v58 + 440);
        v379[4] = *(v58 + 424);
        v379[5] = v168;
        v380[0] = *(v58 + 456);
        *(v380 + 14) = *(v58 + 470);
        v169 = *(v58 + 376);
        v379[0] = *(v58 + 360);
        v379[1] = v169;
        v170 = *(v58 + 408);
        v379[2] = *(v58 + 392);
        v379[3] = v170;
        v171 = *(v59 + 360);
        v172 = *(v59 + 376);
        v173 = *(v59 + 392);
        v381[3] = *(v59 + 408);
        v381[2] = v173;
        v381[1] = v172;
        v381[0] = v171;
        v174 = *(v59 + 424);
        v175 = *(v59 + 440);
        v176 = *(v59 + 456);
        *(v382 + 14) = *(v59 + 470);
        v382[0] = v176;
        v381[5] = v175;
        v381[4] = v174;
        if ((sub_1001B1244(v379, v381) & 1) == 0)
        {
          goto LABEL_284;
        }

        v177 = *(v58 + 560);
        v375[4] = *(v58 + 544);
        v375[5] = v177;
        v376[0] = *(v58 + 576);
        v178 = *(v58 + 496);
        v375[0] = *(v58 + 480);
        v375[1] = v178;
        v179 = *(v58 + 528);
        v375[2] = *(v58 + 512);
        v375[3] = v179;
        *(v376 + 14) = *(v58 + 590);
        v180 = *(v59 + 480);
        v181 = *(v59 + 496);
        v182 = *(v59 + 512);
        v377[3] = *(v59 + 528);
        v377[2] = v182;
        v377[1] = v181;
        v377[0] = v180;
        v183 = *(v59 + 544);
        v184 = *(v59 + 560);
        v185 = *(v59 + 576);
        *(v378 + 14) = *(v59 + 590);
        v378[0] = v185;
        v377[5] = v184;
        v377[4] = v183;
        if ((sub_1001B1244(v375, v377) & 1) == 0)
        {
          goto LABEL_284;
        }

        v186 = *(v58 + 680);
        v371[4] = *(v58 + 664);
        v371[5] = v186;
        v372[0] = *(v58 + 696);
        *(v372 + 14) = *(v58 + 710);
        v187 = *(v58 + 616);
        v371[0] = *(v58 + 600);
        v371[1] = v187;
        v188 = *(v58 + 648);
        v371[2] = *(v58 + 632);
        v371[3] = v188;
        v189 = *(v59 + 600);
        v190 = *(v59 + 616);
        v191 = *(v59 + 632);
        v373[3] = *(v59 + 648);
        v373[2] = v191;
        v373[1] = v190;
        v373[0] = v189;
        v192 = *(v59 + 664);
        v193 = *(v59 + 680);
        v194 = *(v59 + 696);
        *(v374 + 14) = *(v59 + 710);
        v374[0] = v194;
        v373[5] = v193;
        v373[4] = v192;
        if ((sub_1001B1244(v371, v373) & 1) == 0)
        {
          goto LABEL_284;
        }

        v195 = *(v58 + 800);
        v367[4] = *(v58 + 784);
        v367[5] = v195;
        v368[0] = *(v58 + 816);
        v196 = *(v58 + 736);
        v367[0] = *(v58 + 720);
        v367[1] = v196;
        v197 = *(v58 + 768);
        v367[2] = *(v58 + 752);
        v367[3] = v197;
        *(v368 + 14) = *(v58 + 830);
        v198 = *(v59 + 720);
        v199 = *(v59 + 736);
        v200 = *(v59 + 752);
        v369[3] = *(v59 + 768);
        v369[2] = v200;
        v369[1] = v199;
        v369[0] = v198;
        v201 = *(v59 + 784);
        v202 = *(v59 + 800);
        v203 = *(v59 + 816);
        *(v370 + 14) = *(v59 + 830);
        v370[0] = v203;
        v369[5] = v202;
        v369[4] = v201;
        v204 = sub_1001B1244(v367, v369);
        v25 = v330;
        v24 = v331;
        if ((v204 & 1) == 0)
        {
          goto LABEL_284;
        }
      }
    }

    else
    {
      v56 = sub_1000218E4(v334);
      memcpy(v335, v56, 0x10DuLL);
      memcpy(v332, v333, 0x346uLL);
      if (sub_1000218D8(v332))
      {
        goto LABEL_284;
      }

      v57 = sub_1000218E4(v332);
      memcpy(v336, v57, 0x10DuLL);
      if (!sub_1001B13C4(v335, v336))
      {
        goto LABEL_284;
      }
    }

    if (*(v19 + v25[8]) != *(v15 + v25[8]))
    {
      goto LABEL_284;
    }

    sub_10007CC88(v15, type metadata accessor for MeasurementHistoryItem);
    sub_10007CC88(v19, type metadata accessor for MeasurementHistoryItem);
    v329 += v322;
    v22 = v326 + v322;
    result = 1;
    v20 = v328 - 1;
    if (v328 == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C878(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a2 + 5;
  v4 = a1 + 3;
  do
  {
    v5 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*v4, v3[-2]), vceqq_f32(v4[-1], v3[-3])), vandq_s8(vceqq_f32(v4[1], v3[-1]), vceqq_f32(v4[2], *v3))));
    result = v5 >> 31;
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    v3 += 4;
    v4 += 4;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_10007C90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v8 = *(a2 + 48);
    v7 = *(a2 + 56);
    v9 = *(a2 + 64);
    v10 = *(a2 + 72);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v31 = a1, v11 = a2, v12 = *(a1 + 72), v13 = *(a2 + 72), v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), v10 = v13, v6 = v12, a2 = v11, v15 = v14, a1 = v31, (v15 & 1) != 0))
    {
      v16 = (a2 + 120);
      v17 = v2 - 1;
      for (i = (a1 + 120); ; i += 48)
      {
        if (v4)
        {
          if (!v7)
          {
            return 0;
          }

          if (v3 != v8 || v4 != v7)
          {
            v28 = v10;
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v10 = v28;
            if ((v29 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v7)
        {
          return 0;
        }

        if (v6)
        {
          if (v5)
          {
            if ((v10 & (v9 != 0)) != 1)
            {
              return 0;
            }
          }

          else if ((v10 & (v9 == 0)) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if ((v10 & 1) != 0 || *&v5 != *&v9 || *(&v5 + 1) != *(&v9 + 1))
          {
            return result;
          }
        }

        if (!v17)
        {
          return 1;
        }

        v3 = *(i - 3);
        v4 = *(i - 2);
        v5 = *(i - 1);
        v6 = *i;
        v8 = *(v16 - 3);
        v7 = *(v16 - 2);
        v9 = *(v16 - 1);
        v10 = *v16;
        if (*(i - 5) != *(v16 - 5) || *(i - 4) != *(v16 - 4))
        {
          v32 = *(v16 - 2);
          v19 = *(i - 2);
          v20 = v17;
          v21 = *(v16 - 1);
          v22 = *(i - 1);
          v23 = *(v16 - 3);
          v24 = *(i - 3);
          v25 = *i;
          v26 = *v16;
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v10 = v26;
          v6 = v25;
          v3 = v24;
          v8 = v23;
          v5 = v22;
          v9 = v21;
          v17 = v20;
          v4 = v19;
          v7 = v32;
          if ((v27 & 1) == 0)
          {
            break;
          }
        }

        v16 += 48;
        --v17;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10007CB2C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  v10 = *(a2 + 32);
  if (*(a1 + 40))
  {
    if (v8 | v9)
    {
      if (*(a2 + 40))
      {
        return v10 != 0;
      }
    }

    else if (*(a2 + 40))
    {
      return v10 == 0;
    }
  }

  else if ((*(a2 + 40) & 1) == 0 && *&v8 == *&v10 && *&v9 == *(&v10 + 1))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10007CC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004ABAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007CC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ControlType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ControlType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ControlType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10007CD48(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007CD64(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

id sub_10007CD98(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC7Measure16InteractiveLabel_cancellableSubs] = _swiftEmptyArrayStorage;
  v13 = &v5[OBJC_IVAR____TtC7Measure16InteractiveLabel_configuration];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v5[OBJC_IVAR____TtC7Measure16InteractiveLabel_shouldDismissSelection] = 0;
  v14 = OBJC_IVAR____TtC7Measure16InteractiveLabel__appState;
  v15 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1004D5058;
  v18 = *(v15 + 272);

  *&v6[v14] = v18(KeyPath, v17);
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  sub_10007CF1C();

  return v19;
}

void sub_10007CF1C()
{
  swift_getObjectType();
  sub_10007D554();
  StateObserving.setup()();
  [v0 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding:0.0];

  [v0 setSelectable:1];
  [v0 setScrollEnabled:0];
  [v0 setEditable:0];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setUserInteractionEnabled:1];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v2];
}

id sub_10007D0BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7Measure16InteractiveLabel_cancellableSubs] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR____TtC7Measure16InteractiveLabel_configuration];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v1[OBJC_IVAR____TtC7Measure16InteractiveLabel_shouldDismissSelection] = 0;
  v6 = OBJC_IVAR____TtC7Measure16InteractiveLabel__appState;
  v7 = sub_10000F974(&qword_1004A3F50);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v7 + 272);

  *&v2[v6] = v10(KeyPath, v9);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_10007CF1C();
  }

  return v12;
}

uint64_t sub_10007D2C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Measure16InteractiveLabel_configuration;
  swift_beginAccess();
  return sub_100027DE4(v1 + v3, a1);
}

uint64_t sub_10007D320(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Measure16InteractiveLabel_configuration;
  swift_beginAccess();
  sub_100027D74(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10007D428(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Measure16InteractiveLabel_cancellableSubs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10007D4E0()
{

  StateValue.wrappedValue.getter();

  if (v2 == 1)
  {
    return [v0 setSelectedRange:{0, 0}];
  }

  return result;
}

unint64_t sub_10007D554()
{
  result = qword_1004A4BA8;
  if (!qword_1004A4BA8)
  {
    type metadata accessor for InteractiveLabel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4BA8);
  }

  return result;
}

uint64_t sub_10007D5A8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for MeasurementHistoryItem();
  memcpy(__dst, (a1 + *(v5 + 28)), 0x346uLL);
  result = sub_1000218D8(__dst);
  if (result)
  {
    goto LABEL_2;
  }

  v21 = sub_1000218E4(__dst);
  memcpy(v54, v21, 0x10DuLL);
  v22 = *(v2 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRows);
  result = IndexPath.item.getter();
  if (v22 != 3)
  {
    if (result != 1)
    {
      if (result)
      {
        goto LABEL_2;
      }

LABEL_14:
      v35 = sub_1000802C8(v21[8]);
      sub_1000A4B74(&v47, v35);
      v36 = [objc_opt_self() mainBundle];
      v57._object = 0xE000000000000000;
      v37._countAndFlagsBits = 0x45434E4154534944;
      v37._object = 0xED0000594157415FLL;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v57._countAndFlagsBits = 0;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v57);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;

      v18 = v47.u64[1];
      v8 = v47.i64[0];
      v10 = v48.i64[1];
      v19 = v50.i64[0];
      v41 = v48.i64[0];
      v42 = v49.i64[1];
      v13 = v51.i64[0];
      v20 = v52.u64[1];
      v43 = v50.i64[1];
      v44 = v52.i64[0];
      v16 = *&v53[8];
      v45 = *v53;

      result = sub_10002212C(&v47);
      goto LABEL_15;
    }

LABEL_13:
    result = sub_100080374(v54, &v47);
    v15 = *v53;
    v16 = *&v53[8];
    v20 = v52.u64[1];
    v14 = v52.i64[0];
    v13 = v51.i64[1];
    v12 = v51.i64[0];
    v19 = v50.u64[1];
    v11 = v50.i64[0];
    v10 = v49.i64[1];
    v9 = v49.i64[0];
    v18 = v48.u64[1];
    v8 = v48.i64[0];
    object = v47.i64[1];
    countAndFlagsBits = v47.i64[0];
    goto LABEL_3;
  }

  if (result == 2)
  {
    goto LABEL_13;
  }

  if (result == 1)
  {
    goto LABEL_14;
  }

  if (result)
  {
LABEL_2:
    countAndFlagsBits = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    object = 0xE000000000000000;
    v18 = 0xE000000000000000;
    v19 = 0xE000000000000000;
    v20 = 0xE000000000000000;
LABEL_3:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v8;
    a2[3] = v18;
    a2[4] = v9;
    a2[5] = v10;
    a2[6] = v11;
    a2[7] = v19;
    a2[8] = v12;
    a2[9] = v13;
    a2[10] = v14;
    a2[11] = v20;
    a2[12] = v15;
    a2[13] = v16;
    return result;
  }

  v18 = v21[9].u64[1];
  if (v18)
  {
    v24 = v21[9].i64[0];
    v23 = v21 + 9;
    v16 = v23[6].i64[1];
    v20 = v23[5].u64[1];
    v44 = v23[5].i64[0];
    v45 = v23[6].i64[0];
    v13 = v23[4].i64[0];
    v19 = v23[3].u64[0];
    v42 = v23[2].i64[1];
    v43 = v23[3].i64[1];
    v10 = v23[1].i64[1];
    v41 = v23[1].i64[0];
    v25 = objc_opt_self();
    v26 = v23[4];
    v27 = v23[6];
    v52 = v23[5];
    *v53 = v27;
    v28 = v23[1];
    v47 = *v23;
    v29 = v23[2];
    v30 = v23[3];
    v48 = v28;
    v49 = v29;
    *&v53[14] = *(&v23[6].i64[1] + 6);
    v50 = v30;
    v51 = v26;
    sub_10002207C(&v47, v46);
    v40 = [v25 mainBundle];
    v56._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0x4F49544156454C45;
    v31._object = 0xE90000000000004ELL;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v40, v32, v56);
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;

    v34 = v23;
    v8 = v24;
    result = sub_100080618(v34);
LABEL_15:
    v9 = v41;
    v11 = v42;
    v12 = v43;
    v14 = v44;
    v15 = v45;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_10007D938(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = (v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_title);
  *v5 = v4;
  v5[1] = v3;

  v6 = type metadata accessor for MeasurementHistoryItem();
  memcpy(__dst, (a1 + *(v6 + 28)), 0x346uLL);
  if (!sub_1000218D8(__dst))
  {
    v7 = sub_1000218E4(__dst);
    memcpy(v11, v7, 0x10DuLL);
    v8 = 2;
    if (v7[19])
    {
      v8 = 3;
    }

    if (v8 != *(v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRows))
    {
      *(v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRows) = v8;
      v9 = *(v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRowsChangedCallback);
      if (v9)
      {

        v9(v10);
        [*(v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView) reloadData];
        sub_1000223C4(v9);
      }
    }

    sub_10007DA60(v11);
  }
}

void sub_10007DA60(uint64_t *a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v3)
  {

    sub_10007FAE0(a1);
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[3];
    v8 = a1[5];
    v9 = a1[6];
    v30 = a1[7];
    v31 = a1[8];
    v10 = *(v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_labelStrip);
    v32 = a1[13];
    v11 = OBJC_IVAR____TtC7Measure11LabelsStrip_primaryLabel;
    v12 = *(v10 + OBJC_IVAR____TtC7Measure11LabelsStrip_primaryLabel);
    v13 = String._bridgeToObjectiveC()();
    [v12 setText:v13];

    v14 = *(v10 + v11);
    v15 = v14;
    if (v7)
    {
      v7 = String._bridgeToObjectiveC()();
    }

    [v14 setAccessibilityLabel:{v7, v30}];

    v16 = *(v10 + OBJC_IVAR____TtC7Measure11LabelsStrip_secondaryLabelStack);
    if (v5 == v8 && v6 == v9)
    {
      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v18 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
    v19 = *&v16[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
    v20 = v16;
    [v19 setHidden:v17 & 1];
    if ((v17 & 1) == 0)
    {
      v21 = *(*&v16[v18] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v22 = String._bridgeToObjectiveC()();
      [v21 setText:v22];

      v23 = *&v16[v18];
      if (v31)
      {
        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      [v23 setAccessibilityLabel:v24];
    }

    v25 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
    v26 = *(*&v20[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
    v27 = String._bridgeToObjectiveC()();
    [v26 setText:v27];

    v28 = *&v20[v25];
    if (v32)
    {
      v29 = String._bridgeToObjectiveC()();
    }

    else
    {
      v29 = 0;
    }

    v33 = v29;
    [v28 setAccessibilityLabel:?];
  }
}

id sub_10007DD68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_minContentViewHeight] = 0x4071400000000000;
  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v13 = 88.0;
  if (v11)
  {
    v13 = 222.0;
  }

  *&v5[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableRowHeight] = v13;
  v14 = &v5[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRowsChangedCallback];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_sketchView;
  type metadata accessor for SketchLine();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_labelStrip;
  type metadata accessor for LabelsStrip();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView;
  type metadata accessor for IntrinsicTableView();
  *&v5[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityLabelStrip;
  type metadata accessor for AccessibilityDoubleStack();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v18] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v20 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityElevation;
  type metadata accessor for AccessibilityTripleStack();
  v21 = swift_getObjCClassFromMetadata();
  *&v5[v20] = [objc_allocWithZone(v21) init];
  v22 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityDistance;
  *&v5[v22] = [objc_allocWithZone(v21) init];
  v23 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityAngle;
  *&v5[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorOne;
  *&v5[v24] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  v25 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorTwo;
  *&v5[v25] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  v26 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorThree;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  v27 = &v5[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_measurementID];
  *v27 = a1;
  *(v27 + 1) = a2;
  v28 = &v5[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_title];
  *v28 = a4;
  *(v28 + 1) = a5;
  v29 = 2;
  if (a3[19])
  {
    v29 = 3;
  }

  *&v5[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRows] = v29;
  v33.receiver = v5;
  v33.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10007DA60(a3);
  sub_100080680(a3);
  sub_10007E08C();
  sub_10007EC3C();

  return v30;
}

void sub_10007E08C()
{
  [v0 setAxis:1];
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityLabelStrip];
    v4 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
    v5 = *(v3 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel);
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 systemFontOfSize:60.0 weight:UIFontWeightRegular];
    [v7 setFont:v8];

    v9 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
    v10 = *(v3 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel);
    v11 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v12 = [v11 fontDescriptor];

    v13 = [v12 fontDescriptorWithSymbolicTraits:2];
    if (v13)
    {
      v14 = [v6 fontWithDescriptor:v13 size:0.0];

      [v10 setFont:v14];
      v15 = *(v3 + v4);
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 labelColor];
      [v17 setTextColor:v18];

      v92 = v3;
      v19 = *(v3 + v9);
      v20 = [v16 secondaryLabelColor];
      [v19 setTextColor:v20];

      v21 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityElevation];
      v93 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v22 = *(v21 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
      v23 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
      v24 = [v23 fontDescriptor];

      v25 = [v24 fontDescriptorWithSymbolicTraits:2];
      if (v25)
      {
        v26 = [v6 fontWithDescriptor:v25 size:0.0];

        [v22 setFont:v26];
        v27 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
        v28 = *(v21 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
        v29 = [v6 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
        [v28 setFont:v29];

        v30 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
        v31 = *(v21 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
        v32 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
        v33 = v21;
        v34 = [v32 fontDescriptor];

        v35 = [v34 fontDescriptorWithSymbolicTraits:2];
        if (v35)
        {
          v36 = [v6 fontWithDescriptor:v35 size:0.0];

          [v31 setFont:v36];
          v37 = *(v33 + v93);
          v38 = [v16 secondaryLabelColor];
          [v37 setTextColor:v38];

          v39 = *(v33 + v27);
          v40 = [v16 labelColor];
          [v39 setTextColor:v40];

          v90 = v33;
          v41 = *(v33 + v30);
          v42 = [v16 secondaryLabelColor];
          [v41 setTextColor:v42];

          v43 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityDistance];
          v94 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
          v44 = *(v43 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
          v45 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
          v46 = [v45 fontDescriptor];

          v47 = [v46 fontDescriptorWithSymbolicTraits:2];
          if (v47)
          {
            v48 = [v6 fontWithDescriptor:v47 size:0.0];

            [v44 setFont:v48];
            v49 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
            v50 = *(v43 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
            v51 = [v6 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
            [v50 setFont:v51];

            v52 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
            v53 = *(v43 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
            v54 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
            v55 = [v54 fontDescriptor];

            v56 = [v55 fontDescriptorWithSymbolicTraits:2];
            if (v56)
            {
              v57 = [v6 fontWithDescriptor:v56 size:0.0];

              [v53 setFont:v57];
              v58 = *(v43 + v94);
              v59 = [v16 secondaryLabelColor];
              [v58 setTextColor:v59];

              v60 = *(v43 + v49);
              v61 = [v16 labelColor];
              [v60 setTextColor:v61];

              v95 = v43;
              v62 = *(v43 + v52);
              v63 = [v16 secondaryLabelColor];
              [v62 setTextColor:v63];

              v64 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityAngle];
              v65 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
              v66 = *(v64 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel);
              v67 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
              v68 = [v67 fontDescriptor];

              v69 = [v68 fontDescriptorWithSymbolicTraits:2];
              if (v69)
              {
                v70 = [v6 fontWithDescriptor:v69 size:0.0];

                [v66 setFont:v70];
                v71 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
                v72 = *(v64 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel);
                v73 = [v6 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
                [v72 setFont:v73];

                v74 = *(v64 + v65);
                v75 = [v16 secondaryLabelColor];
                [v74 setTextColor:v75];

                v76 = *(v64 + v71);
                v77 = [v16 labelColor];
                [v76 setTextColor:v77];

                v78 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorOne];
                v79 = [v16 clearColor];
                [v78 setBackgroundColor:v79];

                v80 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorTwo];
                v81 = [v16 clearColor];
                [v80 setBackgroundColor:v81];

                v82 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorThree];
                v83 = [v16 clearColor];
                [v82 setBackgroundColor:v83];

                v84 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView];
                v85 = [v16 clearColor];
                [v84 setBackgroundColor:v85];

                [v0 addSubview:*&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_sketchView]];
                [v0 addSubview:v78];
                [v0 addSubview:v80];
                v86 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRows;
                if (*&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRows] == 3)
                {
                  [v0 addSubview:v82];
                }

                [v0 addSubview:{v92, v90}];
                if (*&v0[v86] == 3)
                {
                  [v0 addSubview:v91];
                }

                [v0 addSubview:v95];
                v87 = "addSubview:";
                v88 = v0;
                v89 = v64;
                goto LABEL_14;
              }

LABEL_22:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  [v0 addArrangedSubview:*&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_sketchView]];
  [v0 addArrangedSubview:*&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_labelStrip]];
  v89 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView];
  v87 = "addArrangedSubview:";
  v88 = v0;
LABEL_14:

  [v88 v87];
}

void sub_10007EC3C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_sketchView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityLabelStrip];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v107 = *&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityElevation];
    [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
    v111 = *&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityDistance];
    [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
    v109 = *&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityAngle];
    [v109 setTranslatesAutoresizingMaskIntoConstraints:0];
    v108 = *&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorOne];
    [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
    v110 = *&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorTwo];
    [v110 setTranslatesAutoresizingMaskIntoConstraints:0];
    v106 = *&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorThree];
    [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10000F974(&unk_1004A3F10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1003D8FF0;
    v8 = [v2 heightAnchor];
    v9 = [v8 constraintEqualToConstant:88.0];

    *(v7 + 32) = v9;
    v10 = [v2 leadingAnchor];
    v11 = [v1 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v7 + 40) = v12;
    v13 = [v2 trailingAnchor];
    v14 = [v1 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v7 + 48) = v15;
    v16 = [v2 topAnchor];
    v17 = [v1 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v7 + 56) = v18;
    v19 = [v6 leadingAnchor];
    v20 = [v1 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

    *(v7 + 64) = v21;
    v22 = [v6 topAnchor];
    v23 = [v2 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v7 + 72) = v24;
    v25 = [v6 trailingAnchor];
    v26 = [v1 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v7 + 80) = v27;
    v28 = [v108 leadingAnchor];
    v29 = [v1 leadingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

    *(v7 + 88) = v30;
    v31 = [v108 topAnchor];
    v32 = [v6 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:16.0];

    *(v7 + 96) = v33;
    v34 = [v108 trailingAnchor];
    v35 = [v1 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-16.0];

    *(v7 + 104) = v36;
    v37 = [v108 heightAnchor];
    v38 = [v37 constraintEqualToConstant:0.5];

    *(v7 + 112) = v38;
    v39 = [v109 leadingAnchor];
    v40 = [v1 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:16.0];

    *(v7 + 120) = v41;
    v42 = [v109 trailingAnchor];
    v43 = [v1 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    *(v7 + 128) = v44;
    v45 = [v109 bottomAnchor];
    v46 = [v1 bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-16.0];

    *(v7 + 136) = v47;
    v48 = [v110 leadingAnchor];
    v49 = [v1 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:16.0];

    *(v7 + 144) = v50;
    v51 = [v110 trailingAnchor];
    v52 = [v1 trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:-16.0];

    *(v7 + 152) = v53;
    v54 = [v110 heightAnchor];
    v55 = [v54 constraintEqualToConstant:0.5];

    *(v7 + 160) = v55;
    v56 = [v111 leadingAnchor];
    v57 = [v1 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:16.0];

    *(v7 + 168) = v58;
    v59 = [v111 trailingAnchor];
    v60 = [v1 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v7 + 176) = v61;
    if (*&v1[OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRows] == 3)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003D62A0;
      v63 = [v106 leadingAnchor];
      v64 = [v1 leadingAnchor];
      v65 = [v63 constraintEqualToAnchor:v64 constant:16.0];

      *(inited + 32) = v65;
      v66 = [v106 topAnchor];
      v67 = [v111 bottomAnchor];
      v68 = [v66 constraintEqualToAnchor:v67 constant:16.0];

      *(inited + 40) = v68;
      v69 = [v106 trailingAnchor];
      v70 = [v1 trailingAnchor];
      v71 = [v69 constraintEqualToAnchor:v70 constant:-16.0];

      *(inited + 48) = v71;
      v72 = [v106 heightAnchor];
      v73 = [v72 constraintEqualToConstant:0.5];

      *(inited + 56) = v73;
      v74 = [v107 leadingAnchor];
      v75 = [v1 leadingAnchor];
      v76 = [v74 constraintEqualToAnchor:v75 constant:16.0];

      *(inited + 64) = v76;
      v77 = [v107 topAnchor];
      v78 = [v108 bottomAnchor];
      v79 = [v77 constraintEqualToAnchor:v78 constant:16.0];

      *(inited + 72) = v79;
      v80 = [v107 trailingAnchor];
      v81 = [v1 trailingAnchor];
      v82 = [v80 constraintEqualToAnchor:v81];

      *(inited + 80) = v82;
      v83 = [v109 topAnchor];
      v84 = [v106 bottomAnchor];
      v85 = [v83 constraintEqualToAnchor:v84 constant:16.0];

      *(inited + 88) = v85;
      v86 = v110;
      v87 = [v110 topAnchor];
      v88 = [v107 bottomAnchor];
      v89 = [v87 constraintEqualToAnchor:v88 constant:16.0];

      *(inited + 96) = v89;
      v90 = (inited + 104);
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003D6290;
      v95 = [v109 topAnchor];
      v96 = [v110 bottomAnchor];
      v97 = [v95 constraintEqualToAnchor:v96 constant:16.0];

      *(inited + 32) = v97;
      v98 = [v110 topAnchor];
      v99 = [v111 bottomAnchor];
      v100 = [v98 constraintEqualToAnchor:v99 constant:16.0];

      *(inited + 40) = v100;
      v90 = (inited + 48);
      v86 = v108;
    }

    v101 = [v111 topAnchor];
    v102 = [v86 bottomAnchor];
    v103 = [v101 constraintEqualToAnchor:v102 constant:16.0];

    *v90 = v103;
    sub_100103C58(inited);
    v104 = objc_opt_self();
    sub_100022180();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v104 activateConstraints:isa];
  }

  else
  {
    v91 = [v2 heightAnchor];
    v92 = [v3 currentTraitCollection];
    v93 = [v92 preferredContentSizeCategory];

    LOBYTE(v92) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v94 = 88.0;
    if (v92)
    {
      v94 = 222.0;
    }

    v112 = [v91 constraintEqualToConstant:v94];

    [v112 setActive:1];
  }
}

void sub_10007FAE0(uint64_t a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v3)
  {
    v5 = *(a1 + 24);
    v6 = *(v1 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityLabelStrip);
    v7 = *(a1 + 104);
    v8 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
    v9 = *(v6 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel);
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];

    v11 = *(v6 + v8);
    if (v5)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v11 setAccessibilityLabel:v12];

    v13 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
    v14 = *(v6 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel);
    v15 = String._bridgeToObjectiveC()();
    [v14 setText:v15];

    v16 = *(v6 + v13);
    if (v7)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v16 setAccessibilityLabel:v17];

    v18 = *(a1 + 152);
    if (v18)
    {
      v47 = *(a1 + 240);
      v19 = *(a1 + 232);
      v20 = *(a1 + 208);
      v44 = *(a1 + 200);
      v46 = *(a1 + 224);
      v21 = *(a1 + 192);
      v22 = *(a1 + 168);
      v40 = *(a1 + 160);
      v42 = *(a1 + 184);
      v39 = *(a1 + 144);
      v23 = [objc_opt_self() mainBundle];
      v63._object = 0xE000000000000000;
      v24._countAndFlagsBits = 0x4F49544156454C45;
      v24._object = 0xE90000000000004ELL;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v63._countAndFlagsBits = 0;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v63);

      v53 = v26;
      *&v54 = v39;
      *(&v54 + 1) = v18;
      *&v55 = v40;
      *(&v55 + 1) = v22;
      *&v56 = v42;
      *(&v56 + 1) = v21;
      *&v57 = v44;
      *(&v57 + 1) = v20;
      *&v58 = v46;
      *(&v58 + 1) = v19;
      v59 = v47;
      v62[4] = v57;
      v62[5] = v58;
      v62[6] = v47;
      v62[0] = v26;
      v62[1] = v54;
      v62[2] = v55;
      v62[3] = v56;

      sub_10012C2BC(v62);
      sub_100080320(&v53);
    }

    v27 = sub_1000802C8(*(a1 + 128));
    sub_1000A4B74(&v53, v27);
    v28 = [objc_opt_self() mainBundle];
    v64._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x45434E4154534944;
    v29._object = 0xED0000594157415FLL;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v64._countAndFlagsBits = 0;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v64);

    v32 = v53;
    v33 = v54;
    v34 = *(&v55 + 1);
    v35 = v56;
    v36 = v57;
    v37 = *(&v58 + 1);
    v43 = v58;
    v45 = *(&v56 + 1);
    v38 = *(&v59 + 1);
    v41 = v59;

    sub_10002212C(&v53);
    v48[0] = v31;
    v48[1] = v32;
    v48[2] = v33;
    *&v49 = v34;
    *(&v49 + 1) = v35;
    *&v50 = v45;
    *(&v50 + 1) = v36;
    *&v51 = v43;
    *(&v51 + 1) = v37;
    *&v52 = v41;
    *(&v52 + 1) = v38;
    v61[0] = v31;
    v61[1] = v32;
    v61[5] = v51;
    v61[6] = v52;
    v61[3] = v49;
    v61[4] = v50;
    v61[2] = v33;
    sub_10012C2BC(v61);
    sub_100080320(v48);
    sub_100080374(a1, v60);
    sub_10004EC0C(v60);
    sub_100080320(v60);
  }
}

__n128 sub_10008009C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10007D5A8(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v6[6];
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_100080100()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_title);

  return v1;
}

void *sub_10008013C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView);
  v2 = v1;
  return v1;
}

id sub_100080170(uint64_t a1)
{
  v2 = type metadata accessor for MeasurementHistoryItem();
  memcpy(__dst, (a1 + *(v2 + 28)), 0x346uLL);
  v3 = sub_1000218D8(__dst);
  result = 0;
  if (!v3)
  {
    v5 = sub_1000218E4(__dst);
    v6 = sub_1001935F8();
    v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];

    v8 = *(v5 + 80);
    v15[4] = *(v5 + 64);
    v15[5] = v8;
    v16[0] = *(v5 + 96);
    *(v16 + 14) = *(v5 + 110);
    v9 = *(v5 + 16);
    v15[0] = *v5;
    v15[1] = v9;
    v10 = *(v5 + 48);
    v15[2] = *(v5 + 32);
    v15[3] = v10;
    v11._countAndFlagsBits = sub_10001912C(v15);
    String.append(_:)(v11);

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v12 initWithString:{v13, 10, 0xE100000000000000}];

    [v7 appendAttributedString:v14];
    return v7;
  }

  return result;
}

float sub_1000802C8(float32x4_t a1)
{
  static ComputedCameraProperties.shared.getter();
  simd_float4x4.position.getter();
  v2 = vsubq_f32(a1, v1);
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
}

uint64_t sub_100080374@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((*(result + 268) & 1) != 0 || (v3 = *(result + 264), (~LODWORD(v3) & 0x7F800000) == 0))
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = 0xE000000000000000;
    v25._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0x454C474E41;
    v6._object = 0xE500000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v4, v7, v25);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;

    v11 = 0;
    result = 0;
    v12 = 0;
LABEL_7:
    *a2 = countAndFlagsBits;
    a2[1] = object;
    a2[2] = v11;
    a2[3] = v5;
    a2[4] = result;
    a2[5] = v12;
    a2[6] = 0;
    a2[7] = 0xE000000000000000;
    a2[8] = 0;
    a2[9] = 0;
    a2[10] = 0;
    a2[11] = 0xE000000000000000;
    a2[12] = 0;
    a2[13] = 0;
    return result;
  }

  if (v3 <= -9.2234e18)
  {
    __break(1u);
  }

  else if (v3 < 9.2234e18)
  {
    v13 = v3;
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v26._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0x454C474E41;
    v16._object = 0xE500000000000000;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v26);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;

    v19 = [v14 mainBundle];
    v27._object = 0x80000001004034E0;
    v20._countAndFlagsBits = 2965529637;
    v20._object = 0xA400000000000000;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000011;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v27);

    sub_10000F974(&unk_1004AF710);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1003D5360;
    *(v22 + 56) = &type metadata for Int;
    *(v22 + 64) = &protocol witness table for Int;
    *(v22 + 32) = v13;
    v11 = static String.localizedStringWithFormat(_:_:)();
    v5 = v23;

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1003D5360;
    *(v24 + 56) = &type metadata for Int;
    *(v24 + 64) = &protocol witness table for Int;
    *(v24 + 32) = v13;
    result = String.init(format:_:)();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100080618(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A4C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000806D4()
{
  *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_minContentViewHeight) = 0x4071400000000000;
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = 88.0;
  if (v1)
  {
    v3 = 222.0;
  }

  *(v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableRowHeight) = v3;
  v4 = (v0 + OBJC_IVAR____TtC7Measure18LinePlatterSpatial_numberOfRowsChangedCallback);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_sketchView;
  type metadata accessor for SketchLine();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_labelStrip;
  type metadata accessor for LabelsStrip();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_tableView;
  type metadata accessor for IntrinsicTableView();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityLabelStrip;
  type metadata accessor for AccessibilityDoubleStack();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v8) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityElevation;
  type metadata accessor for AccessibilityTripleStack();
  v11 = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityDistance;
  *(v0 + v12) = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilityAngle;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorOne;
  *(v0 + v14) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  v15 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorTwo;
  *(v0 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  v16 = OBJC_IVAR____TtC7Measure18LinePlatterSpatial_accessibilitySeparatorThree;
  *(v0 + v16) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 375.0, 0.5}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10008096C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v124 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v123 = *(v7 - 8);
  __chkstk_darwin(v7);
  v122 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0158 != -1)
  {
    swift_once();
  }

  v9 = qword_1004A4C70;
  v10 = *(a1 + 112);
  v142 = *(a1 + 96);
  v143 = v10;
  v144 = *(a1 + 128);
  v11 = *(a1 + 48);
  v138 = *(a1 + 32);
  v139 = v11;
  v12 = *(a1 + 80);
  v140 = *(a1 + 64);
  v141 = v12;
  v13 = *(a1 + 16);
  v136 = *a1;
  v137 = v13;
  v14 = sub_10001376C(&v136);
  v125 = v7;
  v126 = v5;
  if (v14 == 1)
  {
    v128 = xmmword_1003D9040;
    v121 = xmmword_1003D9050;
    v15 = v9;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v20 = 1;
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
LABEL_57:
    sub_100018630(0, &qword_1004A3F00);
    v105 = static OS_dispatch_queue.main.getter();
    v106 = swift_allocObject();
    v107 = v127;
    *(v106 + 16) = v127;
    *(v106 + 40) = v128;
    *(v106 + 24) = v121;
    *(v106 + 56) = v25;
    *(v106 + 64) = v26;
    *(v106 + 72) = v21;
    *(v106 + 80) = v22;
    *(v106 + 88) = v23;
    *(v106 + 96) = v24;
    *(v106 + 104) = v16;
    *(v106 + 112) = v20;
    *(v106 + 120) = v17;
    *(v106 + 128) = v18;
    *(v106 + 136) = v15;
    *(v106 + 144) = v19;
    *&v129[32] = sub_100082F4C;
    *&v129[40] = v106;
    *v129 = _NSConcreteStackBlock;
    *&v129[8] = 1107296256;
    *&v129[16] = sub_100041180;
    *&v129[24] = &unk_10046AC70;
    v108 = _Block_copy(v129);
    v109 = v16;
    v110 = v15;
    v111 = v107;

    v112 = v122;
    static DispatchQoS.unspecified.getter();
    *v129 = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80);
    sub_100031864();
    v113 = v124;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v108);

    (*(v126 + 8))(v113, v4);
    (*(v123 + 8))(v112, v125);
    return;
  }

  *&v121 = a2;
  v151 = v142;
  v152 = v143;
  v153 = v144;
  v147 = v138;
  v148 = v139;
  v149 = v140;
  v150 = v141;
  v145 = v136;
  v146 = v137;
  v27 = objc_opt_self();
  v120 = v9;
  sub_10006C92C(a1, v161, &qword_1004A33F0);
  v28 = [v27 mainScreen];
  [v28 scale];
  v30 = v29;

  v31 = v30 * *&v149;
  v32 = objc_opt_self();
  v33 = [v32 standardUserDefaults];
  Defaults.edgeDetectionUniqueContours.unsafeMutableAddressor();

  v34 = String._bridgeToObjectiveC()();

  v35 = [v33 BOOLForKey:v34];

  v36 = v146;
  v117 = v32;
  if (v35)
  {
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v31 > -2147483650.0)
      {
        if (v31 < 2147483650.0)
        {
          v37 = [objc_opt_self() makeCVImageFromUniqueContours:v146 lineThickness:v31];
          goto LABEL_16;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  if (v31 <= -2147483650.0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v31 >= 2147483650.0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v33 = v31;
  if (qword_1004A0168 != -1)
  {
LABEL_63:
    swift_once();
  }

  v37 = [objc_opt_self() makeCVImageFromContours:v36 lineThickness:v33 color:qword_1004A4C80];
LABEL_16:
  v38 = v37;
  v39 = v38;
  v40 = *(&v150 + 1);
  v154 = *(&v150 + 1);
  v41 = *(*(&v150 + 1) + 16);
  v118 = v4;
  if (v41)
  {
    v42 = v38;
    v43 = v38;
    sub_10006C92C(&v154, v161, &unk_1004A4D20);
    v44 = v40 + 64;
    v19 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v44 + 56) == 1)
      {
        v128 = *v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100067A00(0, *(v19 + 2) + 1, 1, v19);
        }

        v46 = *(v19 + 2);
        v45 = *(v19 + 3);
        if (v46 >= v45 >> 1)
        {
          v19 = sub_100067A00((v45 > 1), v46 + 1, 1, v19);
        }

        *(v19 + 2) = v46 + 1;
        *&v19[2 * v46 + 4] = v128;
      }

      v44 += 96;
      --v41;
    }

    while (v41);
    sub_100018F04(&v154, &unk_1004A4D20);
    v39 = v42;
    v4 = v118;
  }

  else
  {
    v47 = v38;
    v19 = _swiftEmptyArrayStorage;
  }

  v16 = [objc_opt_self() makeUIImageFromCVImage:v39];

  v119 = *(&v147 + 1);
  v21 = v147;
  v24 = *(&v148 + 1);
  v23 = *&v148;
  [v16 size];
  v49 = 1.0 / v48;
  [v16 size];
  CGAffineTransformMakeScale(v161, v49, 1.0 / v50);
  tx = v161[0].tx;
  ty = v161[0].ty;
  v128 = *&v161[0].a;
  v121 = *&v161[0].c;
  [v16 size];
  ARCameraImageToViewTransform();
  v53 = *&v161[0].a;
  v54 = *&v161[0].c;
  v55 = *&v161[0].tx;
  *&v161[0].c = v121;
  *&v161[0].a = v128;
  v161[0].tx = tx;
  v161[0].ty = ty;
  *v129 = v53;
  *&v129[16] = v54;
  *&v129[32] = v55;
  CGAffineTransformConcat(&v160, v161, v129);
  v56 = v160.tx;
  v57 = v160.ty;
  v128 = *&v160.a;
  v121 = *&v160.c;
  CGAffineTransformMakeScale(v161, v23, v24);
  v58 = *&v161[0].a;
  v59 = *&v161[0].c;
  v60 = *&v161[0].tx;
  *&v161[0].c = v121;
  *&v161[0].a = v128;
  v161[0].tx = v56;
  v161[0].ty = v57;
  *v129 = v58;
  *&v129[16] = v59;
  *&v129[32] = v60;
  CGAffineTransformConcat(&v160, v161, v129);
  v128 = *&v160.c;
  v121 = *&v160.a;
  v25 = v160.tx;
  v26 = v160.ty;
  v61 = [v117 standardUserDefaults];
  Defaults.edgeDetectionDebugReticleEnabled.unsafeMutableAddressor();
  v62 = v39;

  v63 = String._bridgeToObjectiveC()();

  v64 = [v61 BOOLForKey:v63];

  if (!v64)
  {

    sub_100018F04(a1, &qword_1004A33F0);
    v20 = 1;
    v17 = 0;
    v18 = 0;
    v15 = v120;
    v22 = v119;
    goto LABEL_57;
  }

  v116 = v16;
  v117 = v62;
  v65 = &v127[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint];
  v66 = *&v127[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint + 16];
  *&v160.tx = *&v127[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint + 32];
  *&v160.a = *&v127[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView_reticlePoint];
  *&v160.c = v66;
  v22 = v119;
  if (LOBYTE(v160.tx) == 3 || v65[32] == 2)
  {
    v67 = 0;
    v68 = 0;
    v69 = 1;
  }

  else
  {
    v69 = 0;
    v67 = *(v65 + 2);
    v68 = *(v65 + 3);
  }

  v70 = *(**&v127[OBJC_IVAR____TtC7Measure21EdgeDetectorDebugView__frameState] + 144);

  v70(v129, v71);

  memcpy(v161, v129, 0x200uLL);
  sub_100078828(v67, v68, v69, &v160);
  v73 = v72;
  sub_100013C4C(v161);
  if (v73 == 2)
  {
    v74 = *(v65 + 1);
    v159 = *(v65 + 2);
    v158[0] = *v65;
    v158[1] = v74;
    v4 = v118;
    v16 = v116;
    if (v159 == 3 || v65[32] == 2)
    {
      v75 = 0;
      v76 = 0;
      v77 = 1;
    }

    else
    {
      v77 = 0;
      v75 = *(v65 + 2);
      v76 = *(v65 + 3);
    }

    sub_100078C58(v75, v76, v77, v158);
  }

  else
  {
    v4 = v118;
    v16 = v116;
  }

  v78 = *(v65 + 1);
  v155 = *v65;
  v156 = v78;
  v157 = *(v65 + 2);
  sub_1000790B8(&v130);
  v79 = v131;
  v80 = v132;
  v81 = v133;
  v82 = v134;
  v83 = v135;
  *v65 = v130;
  *(v65 + 1) = v79;
  *(v65 + 2) = v80;
  *(v65 + 3) = v81;
  *(v65 + 4) = v82;
  *(v65 + 5) = v83;
  v15 = v120;
  v84 = v117;
  if (v82 == 2)
  {
LABEL_49:
    (*(**(&v151 + 1) + 144))(v129);
    if ((v129[72] & 1) != 0 || *(v145 + 196) >= *&v129[68])
    {

      sub_100018F04(a1, &qword_1004A33F0);
      v20 = 1;
      v17 = 0;
      v18 = 0;
    }

    else
    {
      static CGSize.* infix(_:_:)();
      CGPoint.init(_:)();
      static CGPoint.+ infix(_:_:)();
      if (qword_1004A0150 != -1)
      {
        swift_once();
      }

      static CGSize.* infix(_:_:)();
      CGPoint.init(_:)();
      static CGPoint.- infix(_:_:)();
      v17 = v102;
      v18 = v103;
      if (qword_1004A0160 != -1)
      {
        swift_once();
      }

      v104 = qword_1004A4C78;

      sub_100018F04(a1, &qword_1004A33F0);
      v20 = 0;
      v15 = v104;
    }

    goto LABEL_57;
  }

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_1004D4AB8 + 1))
  {
    v85 = *(*(&xmmword_1004D4AB8 + 1) + qword_1004AF960);
    if (v85)
    {
      v86 = v81;
      v87 = v16;
      v88 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
      v89 = *&v85[OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer];
      v115 = *(&xmmword_1004D4AB8 + 1);
      v90 = v85;
      *&v114[1] = v80;
      [v89 convertPoint:0 fromLayer:{v80, v86}];
      v92 = v91;
      v93 = v21;
      v95 = v94;
      v96 = *&v85[v88];
      v16 = v87;
      v84 = v117;
      v97 = v96;
      v98 = v92;
      v22 = v119;
      v99 = v95;
      v21 = v93;
      LODWORD(v89) = [v97 containsPoint:{v98, v99}];

      v15 = v120;
      if (v89)
      {
        if (qword_1004A0150 != -1)
        {
          swift_once();
        }

        static CGSize.* infix(_:_:)();
        CGPoint.init(_:)();
        static CGPoint.- infix(_:_:)();
        v17 = v100;
        v18 = v101;

        sub_100018F04(a1, &qword_1004A33F0);
        v20 = 0;
        goto LABEL_57;
      }
    }

    goto LABEL_49;
  }

  __break(1u);
}