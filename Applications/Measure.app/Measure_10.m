void sub_1000CF7D8(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 >= 2)
  {
    v3 = *a1;
    v4 = *(a2 + 64);
    sub_1000D9158(v3, v2);
  }
}

uint64_t sub_1000CF880()
{
  sub_100018F04(v0 + qword_1004A7BF8, &unk_1004A3D90);
}

uint64_t sub_1000CF93C()
{
  v0 = StateObserver.deinit();

  sub_100018F04(v0 + qword_1004A7BF8, &unk_1004A3D90);

  return v0;
}

uint64_t sub_1000CFA00()
{
  sub_1000CF93C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LineController()
{
  result = qword_1004A7C70;
  if (!qword_1004A7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CFAA0()
{
  sub_100065060();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1000CFB80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *(v4 + 64);
  v9 = *a3;
  swift_beginAccess();
  v10 = *&v8[v9];
  v11 = *(v10 + 16);
  v12 = v8;
  if (v11 && (v13 = sub_100198230(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v10 + 56) + 8 * v13);
    swift_endAccess();
    v16 = objc_opt_self();
    v17 = v15;
    [v16 begin];
    [v17 removeFromParentNode];
    [v16 commit];
    swift_beginAccess();
    v18 = a4(a1, a2);
    swift_endAccess();

    v12 = v18;
  }

  else
  {
    swift_endAccess();
  }
}

void sub_1000CFCB0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v11 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v68 - v16;
  if (((*((swift_isaMask & *a1) + 0xD0))(v15) - 3) > 1)
  {
    goto LABEL_29;
  }

  v73 = v7;
  v81 = v17;
  v82 = v4;
  v18 = *(**(v1 + qword_1004A7C28) + 144);

  v18(v83, v19);

  v20 = v83[0];
  v21 = v83[1];

  v22 = *(v2 + 88);
  v74 = v10;
  v79 = v13;
  if (v21)
  {
    v80 = v5;
    v23 = *((swift_isaMask & *v21) + 0x2F0);
    v24 = v21;
    v25 = v23();

    v26 = *(v2 + 112);
    v75 = *(v2 + 96);
    v72 = v26;
    v27 = *(v2 + 144);
    v77 = *(v2 + 128);
    v76 = v27;
    LODWORD(v78) = *(v2 + 160);
    v28 = *((swift_isaMask & *v24) + 0x2B0);
    v29 = v24;
    *v30.i64 = v28();
    v69 = v30;
    v68 = v31;
    v71 = v32;
    v70 = v33;

    if ((v22 & 1) != 0 || (WorldPointType.isSnappable.getter() & 1) == 0)
    {
      v34 = WorldPointType.isSnappable.getter();
LABEL_10:
      v35 = 0;
LABEL_11:
      byte_1004D4FB9 = v34 & 1;
      byte_1004D4FBA = v35;
      v36 = *((swift_isaMask & *v29) + 0x2F0);
      v37 = v29;
      v38 = v36();

      v39 = *((swift_isaMask & *v37) + 0x2B0);
      v40 = v37;
      *&v41 = v39();
      v77 = v42;
      v78 = v41;
      v76 = v43;
      v75 = v44;

      v45 = v75;
      v46 = v76;
      v48 = v77;
      v47 = v78;
      v49 = 0;
      v50 = v35;
      v5 = v80;
      goto LABEL_16;
    }

    if ([objc_opt_self() jasperAvailable])
    {
      if (v25 - 3) < 6 && ((0x2Du >> (v25 - 3)))
      {
        v34 = 0;
LABEL_32:
        if ((v78 & 1) == 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v75, v69), vceqq_f32(v72, v68)), vandq_s8(vceqq_f32(v77, v71), vceqq_f32(v76, v70)))) & 0x80000000) != 0)
        {
          v35 = 0;
          v34 = 0;
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v34 = 1;
      if (v25)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v34 = v25 != 3;
      if (v25)
      {
        goto LABEL_32;
      }
    }

    v34 = 0;
    v35 = 1;
    goto LABEL_11;
  }

  if (v22)
  {
    v50 = 0;
  }

  else
  {
    v50 = WorldPointType.isSnappable.getter();
  }

  v34 = 0;
  v38 = 0;
  byte_1004D4FB9 = 0;
  LOBYTE(v35) = v50 & 1;
  byte_1004D4FBA = v50 & 1;
  v49 = 1;
  v47 = 0uLL;
  v48 = 0uLL;
  v46 = 0uLL;
  v45 = 0uLL;
LABEL_16:
  *(v2 + 88) = v21 == 0;
  *(v2 + 80) = v38;
  *(v2 + 96) = v47;
  *(v2 + 112) = v48;
  *(v2 + 128) = v46;
  *(v2 + 144) = v45;
  *(v2 + 160) = v49;
  v51 = v38 == 6 && v21 != 0;
  (*((swift_isaMask & *a1) + 0x2A0))(v51);
  v52 = sub_1000D04E8(a1, v34 & 1, v50 & 1);
  if (v52 == 2)
  {

    return;
  }

  if ((v52 | v50))
  {
    *(v2 + qword_1004A7C08) = v35;
    v53 = *(v2 + 64);
    sub_1000DA110(a1, 1, 0);

    v54 = v81;
    Date.init()();

    (*(v5 + 56))(v54, 0, 1, v82);
    v55 = qword_1004A7BF8;
    swift_beginAccess();
    sub_1000C1014(v54, v2 + v55);
    swift_endAccess();
    return;
  }

  v56 = qword_1004A7BF8;
  swift_beginAccess();
  v57 = v79;
  sub_10006C92C(v2 + v56, v79, &unk_1004A3D90);
  v58 = v82;
  if ((*(v5 + 48))(v57, 1, v82) == 1)
  {

    sub_100018F04(v57, &unk_1004A3D90);
LABEL_29:
    v67 = *(v2 + 64);
    sub_1000DA110(a1, 0, 0);

    return;
  }

  v59 = v74;
  (*(v5 + 32))(v74, v57, v58);
  v80 = qword_1004A7C08;
  if (*(v2 + qword_1004A7C08) == 1)
  {
    v60 = *(v2 + 64);
    sub_1000DA110(a1, 0, 1);
  }

  v61 = v73;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v63 = v62;
  v64 = v5;
  v65 = *(v5 + 8);
  v65(v61, v58);

  v65(v59, v58);
  if (fabs(v63) > 0.5)
  {
    v66 = v81;
    (*(v64 + 56))(v81, 1, 1, v58);
    swift_beginAccess();
    sub_1000C1014(v66, v2 + v56);
    swift_endAccess();
    *(v2 + v80) = 0;
    goto LABEL_29;
  }
}

uint64_t sub_1000D04E8(void *a1, char a2, char a3)
{
  v4 = v3;
  v55 = a1;
  v7 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v7 - 8);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Date();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v52 = &v49 - v16;
  v17 = *(**(v3 + qword_1004A7C38) + 144);

  v17(&v57, v18);

  v73 = v63;
  v74 = v64;
  v75 = v65;
  v76 = v66;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v72 = v62;
  v67 = v57;
  v68 = v58;
  sub_10006C92C(&v67, &v57, &qword_1004A1208);
  sub_100013BF8(&v67);
  v63 = v73;
  v64 = v74;
  LOBYTE(v65) = v75;
  v59 = v69;
  v60 = v70;
  v61 = v71;
  v62 = v72;
  v57 = v67;
  v58 = v68;
  if (sub_10001376C(&v57) == 1)
  {
    v19 = (v3 + qword_1004A7C40);
    *v19 = 0;
    v19[1] = 0;

    return a2 & 1;
  }

  if (a2)
  {
    v21 = (*((swift_isaMask & *v57) + 0xB8))(v67);
    v23 = v22;
    sub_100018F04(&v67, &qword_1004A1208);
    sub_100018F04(&v67, &qword_1004A1208);
    v24 = (v4 + qword_1004A7C40);
    *v24 = v21;
    v24[1] = v23;

    return 1;
  }

  if (a3)
  {
    sub_100018F04(&v67, &qword_1004A1208);
    return 0;
  }

  v25 = (v3 + qword_1004A7C40);
  v27 = *(v3 + qword_1004A7C40);
  v26 = *(v3 + qword_1004A7C40 + 8);
  v28 = *((swift_isaMask & *v57) + 0xB8);
  sub_10006C92C(&v67, &v56, &qword_1004A1208);

  v50 = v28;
  v30 = v28(v29);
  if (!v26)
  {

    goto LABEL_15;
  }

  if (v27 == v30 && v26 == v31)
  {

    goto LABEL_13;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
LABEL_15:
    v38 = v50(v32);
    v40 = v39;
    sub_100018F04(&v67, &qword_1004A1208);
    sub_100018F04(&v67, &qword_1004A1208);
    *v25 = v38;
    v25[1] = v40;

    return 0;
  }

LABEL_13:
  sub_100018F04(&v67, &qword_1004A1208);
  v34 = qword_1004A7BF8;
  swift_beginAccess();
  sub_10006C92C(v3 + v34, v11, &unk_1004A3D90);
  v36 = v53;
  v35 = v54;
  if ((*(v53 + 48))(v11, 1, v54) == 1)
  {
    sub_100018F04(v11, &unk_1004A3D90);
    v37 = *(v3 + 64);
    sub_1000DA110(v55, 0, 0);

    sub_100018F04(&v67, &qword_1004A1208);
    return 2;
  }

  else
  {
    v41 = v52;
    (*(v36 + 32))(v52, v11, v35);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v43 = v42;
    v44 = *(v36 + 8);
    v44(v14, v35);
    v45 = spring(tension:friction:velocity:elapsed:)(400.0, 40.0, 0.0, fabs(v43));
    if (v45 < 0.0 || v45 >= 1.0)
    {
      if (v45 < 1.0)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v47 = *(v3 + 64);
        sub_1000DA110(v55, 0, 1);

        sub_100018F04(&v67, &qword_1004A1208);
        v44(v41, v35);
        v48 = v51;
        (*(v36 + 56))(v51, 1, 1, v35);
        swift_beginAccess();
        sub_1000C1014(v48, v4 + v34);
        swift_endAccess();
        *(v4 + qword_1004A7C08) = 0;
        return 2;
      }
    }

    else
    {
      v46 = *(v3 + 64);
      sub_1000DA110(v55, 0, 1);

      sub_100018F04(&v67, &qword_1004A1208);
      v44(v41, v35);
      return 2;
    }
  }

  return result;
}

void sub_1000D0BF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v7 = *&v5[v6];
  v8 = *(v7 + 16);
  v9 = v5;
  if (v8 && (v10 = sub_100198230(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v7 + 56) + 8 * v10);
    swift_endAccess();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v9;
    v13[4] = a1;
    v13[5] = a2;
    v14 = v12;
    v15 = v9;
    v16 = v14;

    sub_1000D3AB8(sub_1000D12F8, v13);
  }

  else
  {
    swift_endAccess();
  }
}

void sub_1000D0CFC(void *a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *a1) + 0xB8))();
  v6 = *(v2 + qword_1004A7C40 + 8);
  if (!v6)
  {

    goto LABEL_9;
  }

  if (v4 == *(v2 + qword_1004A7C40) && v6 == v5)
  {

    goto LABEL_13;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_9:
    v9 = (v2 + 64);
LABEL_10:
    v10 = *v9;
    sub_1000DA6C8(a1);

    return;
  }

LABEL_13:
  v9 = (v2 + 64);
  v11 = *(v2 + 64);
  v12 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v13 = 0;
  v14 = *(v11 + v12);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  do
  {
    if (!v17)
    {
      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v19 >= v18)
        {
          goto LABEL_9;
        }

        v17 = *(v14 + 64 + 8 * v19);
        ++v13;
        if (v17)
        {
          v13 = v19;
          goto LABEL_22;
        }
      }

      __break(1u);
      return;
    }

    v19 = v13;
LABEL_22:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
  }

  while (*(*(*(v14 + 56) + ((v19 << 9) | (8 * v20))) + OBJC_IVAR____TtC7Measure10LineRender_state) != 3);
  v21 = simd_float4x4.position.getter();
  v27 = v22;
  (*((swift_isaMask & *a1) + 0x2A0))(v21);
  v23 = simd_float4x4.position.getter();
  (*((swift_isaMask & *a1) + 0x2A8))(v23);
  simd_float4x4.position.getter();
  closestPointOnLine(lineP1:lineP2:point:)();
  v25 = vsubq_f32(v24, v27);
  v26 = vmulq_f32(v25, v25);
  if ((v26.f32[2] + vaddv_f32(*v26.f32)) < 0.0001)
  {
    goto LABEL_10;
  }
}

void sub_1000D0F8C(void *a1)
{
  v3 = *(v1 + 64);
  sub_1000D9464(a1, 0);
}

void sub_1000D101C(void *a1)
{
  v3 = *(v1 + 64);
  sub_1000D979C(a1);
}

void sub_1000D1074(void *a1)
{
  v3 = *((swift_isaMask & *a1) + 0x238);
  v5 = *(v1 + 64);
  v4 = v3() == 2;
  sub_1000D9B0C(a1, 0, v4);
}

void sub_1000D1154(void *a1)
{
  v3 = *(v1 + 64);
  sub_1000DA4A4(a1);
}

void sub_1000D11B4()
{
  v1 = *(v0 + 64);
  sub_1000DA87C();
}

void sub_1000D1200(char a1)
{
  v3 = *(v1 + 64);
  v4 = objc_opt_self();
  v5 = v3;
  [v4 begin];
  [*&v5[OBJC_IVAR____TtC7Measure8LineView_lineParentNode] setHidden:a1 & 1];
  [v4 commit];
}

uint64_t sub_1000D12B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000D1394()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003D6240;
  v5 = [v2 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

char *sub_1000D15F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
  type metadata accessor for InteractiveLabel();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
  v13 = *&v11[OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label];
  v14 = v11;
  [v13 setUserInteractionEnabled:1];
  [v14 addSubview:*&v11[v12]];
  sub_1000D1394();

  return v14;
}

char *sub_1000D1718(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
  type metadata accessor for InteractiveLabel();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
    v8 = *&v5[OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label];
    v9 = v5;
    [v8 setUserInteractionEnabled:1];
    [v9 addSubview:*&v6[v7]];
    sub_1000D1394();
  }

  return v6;
}

uint64_t sub_1000D186C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v10[1] = sub_10004D9B4();
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D4B58;
  v6 = unk_1004D4B60;

  v11 = v7;
  v12 = v6;
  v8._countAndFlagsBits = 0x746544656764452ELL;
  v8._object = 0xEE006E6F69746365;
  String.append(_:)(v8);
  static DispatchQoS.userInitiated.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10004B758();
  sub_10000F974(&qword_1004ABEE0);
  sub_10004B7B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1004A7E08 = result;
  return result;
}

id sub_1000D1AFC()
{
  if (qword_1004A0218 != -1)
  {
    swift_once();
  }

  v1 = qword_1004A7E08;

  return v1;
}

uint64_t sub_1000D1B58(uint64_t a1)
{
  v2 = sub_10008E4B4();

  return Context.description.getter(a1, v2);
}

unint64_t sub_1000D1B94(uint64_t a1)
{
  result = sub_1000D1BBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D1BBC()
{
  result = qword_1004A7E10;
  if (!qword_1004A7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7E10);
  }

  return result;
}

id sub_1000D1C10@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLineOcclusionAlphaBlendingEnabled];
  *a2 = result;
  return result;
}

void sub_1000D1C58(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a3);
}

id sub_1000D1CD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_10018C1EC(a2);
    [v6 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100018630(0, &qword_1004AF720);
    if (swift_dynamicCast())
    {
      v7 = v11;
    }

    else
    {
      v7 = [objc_allocWithZone(SCNMaterial) init];
    }

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

uint64_t sub_1000D1DC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___isOcclusionInitialized);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___isOcclusionInitialized) = 0;
  }

  return v1 & 1;
}

void sub_1000D1DFC(uint64_t a1, void *a2)
{
  v3 = v2 + *a2;
  v4 = *(v3 + 32);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  if (v4 == 1)
  {
    if (*(a1 + 32))
    {
      return;
    }
  }

  else if (*(a1 + 32) & 1) == 0 && (Segment.isEqual(to:)())
  {
    return;
  }

  v6 = (v2 + OBJC_IVAR____TtC7Measure10LineRender__needsRendering);
  if ((*(v2 + OBJC_IVAR____TtC7Measure10LineRender__needsRendering) & 1) == 0)
  {
    v7 = sub_1000D2184();
    os_unfair_lock_lock(v7);
    *v6 = 1;
    v8 = *(v2 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock);

    os_unfair_lock_unlock(v8);
  }
}

void sub_1000D1ED0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC7Measure10LineRender_isOnVerticalGuide) == 1)
  {
    v2 = *(**(v0 + OBJC_IVAR____TtC7Measure10LineRender__arframe) + 144);

    v2(__src, v3);

    memcpy(__dst, __src, sizeof(__dst));
    v4 = sub_10008D4F0();
    sub_100013C4C(__dst);
    if (v4)
    {
      v5 = [v4 camera];

      [v5 transform];
      simd_float4x4.forward.getter();
      v6 = v1 + OBJC_IVAR____TtC7Measure10LineRender_verticalLineNormalOverride;
      *v6 = v7;
      *(v6 + 16) = 0;
      LODWORD(v23) = 1056964608;
      slerp(transform1:transform2:percent:)();
      simd_float4x4.position.getter();
      simd_float4x4.position.getter();
      simd_float4x4.position.getter();
      createTransform(forward:normal:position:)();
      v32 = v9;
      v34 = v8;
      v28 = v11;
      v30 = v10;
      [*(v1 + OBJC_IVAR____TtC7Measure10LineRender_line) setSimdWorldTransform:v23];
      [*(v1 + OBJC_IVAR____TtC7Measure10LineRender_linePrime) setSimdWorldTransform:{v34, v32, v30, v28}];
    }
  }

  v12 = (v1 + OBJC_IVAR____TtC7Measure10LineRender_endTransforms);
  simd_float4x4.position.getter();
  v35 = v13;
  simd_float4x4.position.getter();
  v15 = OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender;
  v16 = *(v1 + OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender);
  if (v16)
  {
    v17 = vsubq_f32(v35, v14);
    v18 = vmulq_f32(v17, v17);
    v19 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
    v20 = v16;
    sub_10002CC64(v19);

    v21 = *(v1 + v15);
    if (v21)
    {
      v33 = v12[1];
      v36 = *v12;
      v29 = v12[3];
      v31 = v12[2];
      v26 = v12[5];
      v27 = v12[4];
      v24 = v12[7];
      v25 = v12[6];
      v22 = v21;
      sub_10002CA74(v36, v33, v31, v29, v27, v26, v25, v24);
    }
  }
}

_DWORD *sub_1000D2184()
{
  v1 = OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock;
  result = *(v0 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock);
  if (!result)
  {
    result = swift_slowAlloc();
    *result = 0;
    *(v0 + v1) = result;
  }

  return result;
}

void sub_1000D21C4(uint64_t a1, char a2, char a3, unsigned __int8 a4, char a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13)
{
  v14 = v13;
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR____TtC7Measure10LineRender_state;
  *&v13[OBJC_IVAR____TtC7Measure10LineRender_state] = static MeasureObjectState.default;
  v16 = OBJC_IVAR____TtC7Measure10LineRender_shouldOcclude;
  v13[OBJC_IVAR____TtC7Measure10LineRender_shouldOcclude] = 1;
  v17 = OBJC_IVAR____TtC7Measure10LineRender_hasDivisions;
  v13[OBJC_IVAR____TtC7Measure10LineRender_hasDivisions] = 0;
  v18 = OBJC_IVAR____TtC7Measure10LineRender__render;
  KeyPath = swift_getKeyPath();
  v20 = sub_10000F974(&qword_1004A72F0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v21 = qword_1004D5058;
  v22 = *(v20 + 272);
  swift_retain_n();
  *&v14[v18] = v22(KeyPath, v21);
  v23 = OBJC_IVAR____TtC7Measure10LineRender__arframe;
  v24 = swift_getKeyPath();
  v25 = sub_10000F974(&qword_1004A1200);
  *&v14[v23] = (*(v25 + 272))(v24, v21);
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v26 = qword_1004D4970;
  v27 = UIContentSizeCategory.isAccessibilityCategory.getter();

  IsBoldTextEnabled = 1;
  if ((v27 & 1) == 0)
  {
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  }

  v14[OBJC_IVAR____TtC7Measure10LineRender_accessibleSizeOn] = IsBoldTextEnabled;
  v29 = OBJC_IVAR____TtC7Measure10LineRender_line;
  *&v14[v29] = [objc_allocWithZone(SCNNode) init];
  *&v14[OBJC_IVAR____TtC7Measure10LineRender_linePrime] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender_linePrimeGeometry] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes] = _swiftEmptyArrayStorage;
  v30 = &v14[OBJC_IVAR____TtC7Measure10LineRender_transformAtSnapStart];
  v113 = 1;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v30[64] = 1;
  v31 = &v14[OBJC_IVAR____TtC7Measure10LineRender_targetTransformAtSnap];
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[64] = 1;
  v14[OBJC_IVAR____TtC7Measure10LineRender_isMinor] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___minorSuggestedMaterial] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___linePrimeMaterial] = 0;
  v32 = &v14[OBJC_IVAR____TtC7Measure10LineRender_snapAnimationPercent];
  *v32 = 0;
  v32[4] = 1;
  v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___isOcclusionInitialized] = 2;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityThicknessGuideMaterial] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityGuideMaterial] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___thicknessGuideMaterial] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___plainGuideMaterial] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___objectLineMaterial] = 0;
  v33 = OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender] = 0;
  v34 = &v14[OBJC_IVAR____TtC7Measure10LineRender_primarySegment];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v34[32] = 1;
  v35 = &v14[OBJC_IVAR____TtC7Measure10LineRender_renderedSegment];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v35[32] = 1;
  v36 = OBJC_IVAR____TtC7Measure10LineRender_startTime;
  v37 = type metadata accessor for Date();
  (*(*(v37 - 8) + 56))(&v14[v36], 1, 1, v37);
  v14[OBJC_IVAR____TtC7Measure10LineRender_animationState] = 0;
  v38 = &v14[OBJC_IVAR____TtC7Measure10LineRender_verticalLineNormalOverride];
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 1;
  v14[OBJC_IVAR____TtC7Measure10LineRender_shouldShowDivisions] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender_dottedLineBreakPointDist] = 1075838976;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock] = 0;
  v14[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] = 0;
  *&v14[OBJC_IVAR____TtC7Measure10LineRender_isLabelVisible] = 1;
  v39 = &v14[OBJC_IVAR____TtC7Measure10LineRender_endTransforms];
  *v39 = a6;
  v39[1] = a7;
  v39[2] = a8;
  v39[3] = a9;
  v39[4] = a10;
  v39[5] = a11;
  v39[6] = a12;
  v39[7] = a13;
  memmove(&v14[OBJC_IVAR____TtC7Measure10LineRender_currentTransforms], v39, 0x80uLL);
  v40 = &v14[OBJC_IVAR____TtC7Measure10LineRender_snapTargetEndTransforms];
  *v40 = a6;
  v40[1] = a7;
  v40[2] = a8;
  v40[3] = a9;
  v40[4] = a10;
  v40[5] = a11;
  v40[6] = a12;
  v40[7] = a13;
  simd_float4x4.position.getter();
  v97 = v41;
  simd_float4x4.position.getter();
  v42 = &v14[OBJC_IVAR____TtC7Measure10LineRender_currentPositions];
  *v42 = v97;
  v42[1] = v43;
  v14[v16] = a3 & 1;
  v14[v17] = a4 & 1;
  *&v14[v15] = a1;
  if (qword_1004A03F8 != -1)
  {
    swift_once();
  }

  v44 = byte_1004D4FC8 & a4;
  if (byte_1004D4FC8 & a4)
  {
    v45 = objc_allocWithZone(type metadata accessor for LineDivisionsRender());
    v46 = sub_100028EC0(a1, a6, a7, a8, a9, a10, a11, a12, a13);
    v47 = *&v14[v33];
    *&v14[v33] = v46;
  }

  v48 = qword_1004D4970;
  v49 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (a2)
  {
    if (v49)
    {
      v50 = 0.00150000001;
    }

    else if (UIAccessibilityIsBoldTextEnabled())
    {
      v50 = 0.00150000001;
    }

    else
    {
      v50 = 0.000750000007;
    }

    v51 = qword_1004D4970;
    v52 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v52)
    {
      v53 = 0.0015;
      goto LABEL_30;
    }

    v56 = !UIAccessibilityIsBoldTextEnabled();
    v53 = 0.00075;
    v57 = 0.0015;
  }

  else
  {
    if (v49)
    {
      v50 = 0.00449999981;
    }

    else if (UIAccessibilityIsBoldTextEnabled())
    {
      v50 = 0.00449999981;
    }

    else
    {
      v50 = 0.0022499999;
    }

    v54 = qword_1004D4970;
    v55 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v55)
    {
      v53 = 0.0045;
      goto LABEL_30;
    }

    v56 = !UIAccessibilityIsBoldTextEnabled();
    v53 = 0.00225;
    v57 = 0.0045;
  }

  if (!v56)
  {
    v53 = v57;
  }

LABEL_30:
  v58 = v53;
  v59 = objc_opt_self();
  v60 = [v59 boxWithWidth:v50 height:v58 length:0.0 chamferRadius:0.0005];
  *&v14[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry] = v60;
  v14[OBJC_IVAR____TtC7Measure10LineRender_isOnVerticalGuide] = a5 & 1;
  v112.receiver = v14;
  v112.super_class = ObjectType;
  v61 = objc_msgSendSuper2(&v112, "init");
  v61[OBJC_IVAR____TtC7Measure10LineRender_isMinor] = a2 & 1;
  v62 = OBJC_IVAR____TtC7Measure10LineRender_lineGeometry;
  v63 = *&v61[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry];
  if (!v63)
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v64 = v61;
  v65 = v61;
  v66 = v63;
  v67 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial, 1);
  [v66 setFirstMaterial:v67];

  v68 = OBJC_IVAR____TtC7Measure10LineRender_line;
  [*&v65[OBJC_IVAR____TtC7Measure10LineRender_line] setGeometry:*&v64[v62]];
  [*&v65[v68] setRenderingOrder:3];
  v69 = *&v65[v68];
  v70 = OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes;
  swift_beginAccess();
  v71 = v69;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v65[v70] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v65[v70] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_48;
  }

  v72 = [objc_opt_self() standardUserDefaults];
  v73 = [v72 isLineOcclusionEnabled];

  if (!v73 || (a3 & 1) == 0)
  {
    goto LABEL_48;
  }

  v74 = [objc_allocWithZone(SCNNode) init];
  v75 = OBJC_IVAR____TtC7Measure10LineRender_linePrime;
  v76 = *&v65[OBJC_IVAR____TtC7Measure10LineRender_linePrime];
  *&v65[OBJC_IVAR____TtC7Measure10LineRender_linePrime] = v74;

  v77 = [v59 boxWithWidth:v50 height:v58 length:0.0 chamferRadius:0.0005];
  v78 = OBJC_IVAR____TtC7Measure10LineRender_linePrimeGeometry;
  v79 = *&v65[OBJC_IVAR____TtC7Measure10LineRender_linePrimeGeometry];
  *&v65[OBJC_IVAR____TtC7Measure10LineRender_linePrimeGeometry] = v77;
  v80 = v77;

  if (!v80)
  {
    goto LABEL_57;
  }

  v81 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___linePrimeMaterial, 1);
  [v80 setFirstMaterial:v81];

  v82 = *&v65[v75];
  if (!v82)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!*&v65[v78])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v82 setGeometry:?];
  v83 = *&v65[v75];
  if (!v83)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v84 = [v83 geometry];
  if (v84)
  {
    v85 = v84;
    v86 = [v84 firstMaterial];

    if (v86)
    {
      [v86 setColorBufferWriteMask:0];
    }
  }

  v87 = *&v65[v75];
  if (!v87)
  {
    goto LABEL_61;
  }

  [v87 setRenderingOrder:1];
  v88 = *&v65[v75];
  if (!v88)
  {
LABEL_62:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v89 = v88;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v65[v70] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v65[v70] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_48:
  v90 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial, 2);
  [v90 setReadsFromDepthBuffer:0];

  [*&v65[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial] setWritesToDepthBuffer:0];
  v91 = objc_opt_self();
  [v91 begin];
  [v65 addChildNode:*&v65[v68]];
  if (*&v65[OBJC_IVAR____TtC7Measure10LineRender_linePrime])
  {
    [v65 addChildNode:?];
  }

  [*&v65[v68] setHidden:{1, v97}];
  if (v44)
  {
    v92 = *&v65[OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender];
    if (v92)
    {
      v93 = *&v65[v68];
      v94 = v92;
      [v93 addChildNode:v94];
      [v94 setSimdTransform:{*matrix_identity_float4x4.columns[0].i64, *matrix_identity_float4x4.columns[1].i64, *matrix_identity_float4x4.columns[2].i64, *matrix_identity_float4x4.columns[3].i64}];
    }
  }

  [v91 commit];
  sub_1000D2D28(0, 0, a6, a7, a8, a9, a10, a11, a12, a13);
  sub_1000DB974();
  v95 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
  if ((v65[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] & 1) == 0)
  {
    v96 = sub_1000D2184();
    os_unfair_lock_lock(v96);
    v65[v95] = 1;
    os_unfair_lock_unlock(*&v65[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
  }
}

void sub_1000D2D28(char a1, char a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  simd_float4x4.position.getter();
  v44 = v13;
  simd_float4x4.position.getter();
  v15 = vsubq_f32(v44, v14);
  v15.f32[2] = v44.f32[2] - v14.f32[2];
  v16 = vmulq_f32(v15, v15);
  if ((v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.00000011921)
  {
    v25 = &v10[OBJC_IVAR____TtC7Measure10LineRender_endTransforms];
    *v25 = a3;
    v25[1] = a4;
    v25[2] = a5;
    v25[3] = a6;
    v25[4] = a7;
    v25[5] = a8;
    v25[6] = a9;
    v25[7] = a10;
    simd_float4x4.up.getter();
    createTransform(forward:normal:position:)();
    v45 = v26;
    v38 = v28;
    v39 = v27;
    v37 = v29;
    v30 = *&v10[OBJC_IVAR____TtC7Measure10LineRender_line];
    [v30 setSimdWorldTransform:?];
    [*&v10[OBJC_IVAR____TtC7Measure10LineRender_linePrime] setSimdWorldTransform:{v45, v39, v38, v37}];
    if (qword_1004A03F8 != -1)
    {
      swift_once();
    }

    if (byte_1004D4FC8 == 1 && v10[OBJC_IVAR____TtC7Measure10LineRender_hasDivisions] == 1)
    {
      v31 = *&v10[OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender];
      if (v31)
      {
        if (*(v31 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState))
        {
          v32 = v31;
          sub_10002CA74(a3, a4, a5, a6, a7, a8, a9, a10);
        }
      }
    }

    v33 = objc_opt_self();
    [v33 begin];
    [v33 setAnimationDuration:0.0];
    [v30 setHidden:1];

    [v33 commit];
  }

  else
  {
    v17 = objc_opt_self();
    [v17 begin];
    [v17 setAnimationDuration:0.0];
    v18 = *&v10[OBJC_IVAR____TtC7Measure10LineRender_line];
    [v18 setHidden:0];
    [v17 commit];
    if (a1)
    {
      [v18 removeAllActions];
      memmove(&v10[OBJC_IVAR____TtC7Measure10LineRender_endTransforms], &v10[OBJC_IVAR____TtC7Measure10LineRender_currentTransforms], 0x80uLL);
      v19 = &v10[OBJC_IVAR____TtC7Measure10LineRender_snapTargetEndTransforms];
      *v19 = a3;
      v19[1] = a4;
      v19[2] = a5;
      v19[3] = a6;
      v19[4] = a7;
      v19[5] = a8;
      v19[6] = a9;
      v19[7] = a10;
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v10;
      aBlock[4] = sub_1000D7A90;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D1C58;
      aBlock[3] = &unk_10046D020;
      v22 = _Block_copy(aBlock);
      v23 = v10;

      v24 = [v20 customActionWithDuration:v22 actionBlock:0.5];
      _Block_release(v22);
      [v18 runAction:v24];
    }

    else if (a2)
    {
      v34 = &v10[OBJC_IVAR____TtC7Measure10LineRender_snapAnimationPercent];
      if ((v10[OBJC_IVAR____TtC7Measure10LineRender_snapAnimationPercent + 4] & 1) != 0 || vabds_f32(1.0, *v34) <= 0.0001)
      {
        sub_1000D6C28(a3, a4, a5, a6, a7, a8, a9, a10);
        sub_1000D5E18();
        *v34 = 0;
        v34[4] = 1;
      }

      else
      {
        v35 = &v10[OBJC_IVAR____TtC7Measure10LineRender_snapTargetEndTransforms];
        *v35 = a3;
        v35[1] = a4;
        v35[2] = a5;
        v35[3] = a6;
        v35[4] = a7;
        v35[5] = a8;
        v35[6] = a9;
        v35[7] = a10;
      }
    }

    else
    {
      sub_1000D6C28(a3, a4, a5, a6, a7, a8, a9, a10);
      v36 = &v10[OBJC_IVAR____TtC7Measure10LineRender_snapAnimationPercent];
      *v36 = 0;
      v36[4] = 1;

      sub_1000D5E18();
    }
  }
}

id sub_1000D3274()
{
  ObjectType = swift_getObjectType();
  sub_1000D2184();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for LineRender()
{
  result = qword_1004A7F78;
  if (!qword_1004A7F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D34CC()
{
  v1 = v0;
  v2 = sub_10000F974(&unk_1004A3D90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1000D1DC0() & 1) == 0)
  {
    sub_1000D3BEC();
  }

  v12 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
  if (*(v0 + OBJC_IVAR____TtC7Measure10LineRender__needsRendering) == 1)
  {
    sub_1000D44F4(*(v0 + OBJC_IVAR____TtC7Measure10LineRender_state));
    if (*(v0 + v12) == 1)
    {
      v13 = sub_1000D2184();
      os_unfair_lock_lock(v13);
      *(v0 + v12) = 0;
      os_unfair_lock_unlock(*(v0 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock));
    }
  }

  v14 = OBJC_IVAR____TtC7Measure10LineRender_state;
  if (*(v0 + OBJC_IVAR____TtC7Measure10LineRender_state) == 9)
  {
    simd_float4x4.position.getter();
    v27 = v15;
    simd_float4x4.position.getter();
    sub_1000D5E18();
  }

  if (![objc_opt_self() jasperAvailable])
  {
    return;
  }

  if (*(v0 + v14) != 8)
  {
    return;
  }

  v16 = [*(v0 + OBJC_IVAR____TtC7Measure10LineRender_line) geometry];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = [v16 materials];

  sub_100018630(0, &qword_1004AF720);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

LABEL_23:

    return;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  sub_1000D5F34();
  v22 = OBJC_IVAR____TtC7Measure10LineRender_startTime;
  swift_beginAccess();
  sub_1000D7AB8(v1 + v22, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000D7B28(v7);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    Date.timeIntervalSinceNow.getter();
    *&v23 = v23;
    v24 = powf((fabsf(*&v23) / -0.8) + 1.0, 5.0);
    (*(v9 + 8))(v11, v8);
    if ((1.0 - v24) >= 1.0)
    {
      (*(v9 + 56))(v5, 1, 1, v8);
      swift_beginAccess();
      sub_1000C1014(v5, v1 + v22);
      swift_endAccess();
      *(v1 + OBJC_IVAR____TtC7Measure10LineRender_animationState) = 2;
    }
  }

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  v26 = String._bridgeToObjectiveC()();
  [v21 setValue:isa forKeyPath:v26];
}

id sub_1000D3988()
{
  v1 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  result = [objc_opt_self() jasperAvailable];
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC7Measure10LineRender_state) == 8)
    {
      Date.init()();
      v5 = type metadata accessor for Date();
      (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
      v6 = OBJC_IVAR____TtC7Measure10LineRender_startTime;
      swift_beginAccess();
      sub_1000C1014(v3, v0 + v6);
      result = swift_endAccess();
      *(v0 + OBJC_IVAR____TtC7Measure10LineRender_animationState) = 1;
    }
  }

  return result;
}

void sub_1000D3AB8(void *a1, uint64_t a2)
{
  if ([objc_opt_self() jasperAvailable] && *(v2 + OBJC_IVAR____TtC7Measure10LineRender_state) == 8)
  {
    v5 = *(v2 + OBJC_IVAR____TtC7Measure10LineRender_line);
    v6 = [objc_opt_self() fadeOutWithDuration:0.300000012];
    if (a1)
    {
      v7[4] = a1;
      v7[5] = a2;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100041180;
      v7[3] = &unk_10046D048;
      a1 = _Block_copy(v7);
    }

    [v5 runAction:v6 completionHandler:a1];
    _Block_release(a1);
  }
}

void sub_1000D3BEC()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 jasperAvailable];
  sub_10000F974(&unk_1004A3F10);
  v4 = swift_allocObject();
  if (v3)
  {
    *(v4 + 16) = xmmword_1003DB8F0;
    *(v4 + 32) = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial, 1);
    *(v4 + 40) = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___linePrimeMaterial, 1);
    *(v4 + 48) = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityThicknessGuideMaterial, 13);
    *(v4 + 56) = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityGuideMaterial, 11);
    *(v4 + 64) = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___thicknessGuideMaterial, 12);
    *(v4 + 72) = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___plainGuideMaterial, 10);
  }

  else
  {
    *(v4 + 16) = xmmword_1003D56B0;
    *(v4 + 32) = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial, 1);
  }

  if (![v2 jasperAvailable] || *(v1 + OBJC_IVAR____TtC7Measure10LineRender_shouldOcclude) != 1 || (v38 = objc_opt_self(), v5 = objc_msgSend(v38, "standardUserDefaults"), v6 = objc_msgSend(v5, "isLineOcclusionEnabled"), v5, !v6))
  {

    goto LABEL_14;
  }

  v7 = *MeasureCore.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v8 = *(v7 + 112);
  if (!v8)
  {
LABEL_14:

    return;
  }

  v9 = [v38 standardUserDefaults];
  swift_getKeyPath();
  if (qword_1004A0180 != -1)
  {
LABEL_32:
    swift_once();
  }

  v10 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    goto LABEL_35;
  }

  v11 = Contexts.PrivateQueue.init(_:)();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;
  v14 = v10;

  NSUserDefaults.performOnChange<A>(to:on:action:)();

  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  swift_beginAccess();
  v37 = v9;
  if (!v9)
  {
LABEL_29:

    *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___isOcclusionInitialized) = 1;
    return;
  }

  v15 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v19 = *(v4 + 8 * v15 + 32);
    }

    v18 = v19;
    if (qword_1004A0638 != -1)
    {
      swift_once();
    }

    UIColor.rgba.getter();
    if (!*(v8 + 192))
    {
      break;
    }

    ADProcessor.transformer.getter();

    Transformer.clipToCameraNormalized.getter();

    simd_float3x3.copy(from:)();
    v20 = [v38 standardUserDefaults];
    [v20 isLineOcclusionAlphaBlendingEnabled];

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v22 = String._bridgeToObjectiveC()();
    [v18 setValue:isa forKeyPath:v22];

    SCNVector4.init(_:_:_:_:)();
    v23 = SCNVector4._bridgeToObjectiveC()().super.isa;
    v24 = String._bridgeToObjectiveC()();
    [v18 setValue:v23 forKeyPath:v24];

    v25 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v26 = String._bridgeToObjectiveC()();
    [v18 setValue:v25 forKeyPath:v26];

    v27 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v28 = String._bridgeToObjectiveC()();
    [v18 setValue:v27 forKeyPath:v28];

    v29 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v30 = String._bridgeToObjectiveC()();
    [v18 setValue:v29 forKeyPath:v30];

    SCNVector3.init(_:)();
    v31 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v32 = String._bridgeToObjectiveC()();
    [v18 setValue:v31 forKey:v32];

    SCNVector3.init(_:)();
    v33 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v34 = String._bridgeToObjectiveC()();
    [v18 setValue:v33 forKey:v34];

    SCNVector3.init(_:)();
    v35 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v36 = String._bridgeToObjectiveC()();
    [v18 setValue:v35 forKey:v36];

    v9 = *(v8 + 192);
    if (!v9)
    {
      goto LABEL_34;
    }

    swift_beginAccess();
    if (*(v9 + 242) == 1)
    {
      swift_beginAccess();
      if (!*(v9 + 32))
      {
        goto LABEL_17;
      }

      swift_unknownObjectRetain();
    }

    else
    {

      ADProcessor.outputDepthTexture.getter();
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    v17 = [objc_opt_self() materialPropertyWithContents:v16];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = String._bridgeToObjectiveC()();
    [v18 setValue:v17 forKey:v9];
    swift_unknownObjectRelease();

    v18 = v9;
LABEL_17:
    ++v15;

    if (v37 == v15)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1000D44F4(uint64_t a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setAnimationDuration:0.0];
  [v1 setOpacity:1.0];
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v4 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_line];
          v5 = [v4 geometry];
          if (v5)
          {
            v6 = v5;
            v7 = [v5 firstMaterial];

            if (v7)
            {
              v8 = [v7 diffuse];

              if (qword_1004A0600 != -1)
              {
                swift_once();
              }

              [v8 setContents:qword_1004D5178];
            }
          }

          v9 = [v4 geometry];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 firstMaterial];

            if (v11)
            {
              v12 = [v11 emission];

              if (qword_1004A0628 != -1)
              {
                swift_once();
              }

              [v12 setContents:qword_1004D51A0];
            }
          }

          [v1 setOpacity:0.0];
          [v1 setHidden:1];
          goto LABEL_121;
        }

        if (a1 != 2)
        {
          do
          {
            v183 = a1;
            _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
LABEL_53:
            ;
          }

          while (a1 != 7);
        }
      }

LABEL_54:
      if ([objc_opt_self() jasperAvailable] && (v1[OBJC_IVAR____TtC7Measure10LineRender_shouldOcclude] & 1) == 0)
      {
        v50 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___objectLineMaterial, 6);
        v51 = *&v1[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial];
        *&v1[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial] = v50;
      }

      v52 = OBJC_IVAR____TtC7Measure10LineRender_isMinor;
      if (v1[OBJC_IVAR____TtC7Measure10LineRender_isMinor] == 1)
      {
        if (qword_1004A0050 != -1)
        {
          swift_once();
        }

        v53 = qword_1004D4970;
        v54 = UIContentSizeCategory.isAccessibilityCategory.getter();

        v55 = 0.00150000001;
        v56 = 0.00150000001;
        if ((v54 & 1) == 0)
        {
          if (UIAccessibilityIsBoldTextEnabled())
          {
            v56 = 0.00150000001;
          }

          else
          {
            v56 = 0.000750000007;
          }
        }

        v57 = qword_1004D4970;
        v58 = UIContentSizeCategory.isAccessibilityCategory.getter();

        if ((v58 & 1) == 0)
        {
          v59 = !UIAccessibilityIsBoldTextEnabled();
          v60 = 0.000750000007;
          v61 = 0.00150000001;
          goto LABEL_74;
        }
      }

      else
      {
        if (qword_1004A0050 != -1)
        {
          swift_once();
        }

        v62 = qword_1004D4970;
        v63 = UIContentSizeCategory.isAccessibilityCategory.getter();

        v55 = 0.00449999981;
        v56 = 0.00449999981;
        if ((v63 & 1) == 0)
        {
          if (UIAccessibilityIsBoldTextEnabled())
          {
            v56 = 0.00449999981;
          }

          else
          {
            v56 = 0.0022499999;
          }
        }

        v64 = qword_1004D4970;
        v65 = UIContentSizeCategory.isAccessibilityCategory.getter();

        if ((v65 & 1) == 0)
        {
          v59 = !UIAccessibilityIsBoldTextEnabled();
          v60 = 0.0022499999;
          v61 = 0.00449999981;
LABEL_74:
          if (v59)
          {
            v55 = v60;
          }

          else
          {
            v55 = v61;
          }
        }
      }

      [v1 setHidden:0];
      if ((v1[v52] & 1) == 0)
      {
        v66 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry];
        if (!v66)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        [*&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry] setWidth:v56];
        [v66 setHeight:v55];
        v67 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_linePrimeGeometry];
        [v67 setWidth:v56];
        [v67 setHeight:v55];
      }

      v68 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry];
      if (v68)
      {
        v69 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial, 1);
        [v68 setFirstMaterial:v69];

        v70 = OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial;
        v71 = [*&v1[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial] diffuse];
        if (qword_1004A05D8 != -1)
        {
          swift_once();
        }

        [v71 setContents:qword_1004D5150];

        v72 = [*&v1[v70] emission];
        if (qword_1004A0608 != -1)
        {
          swift_once();
        }

        [v72 setContents:qword_1004D5180];

        simd_float4x4.position.getter();
        v182 = v73;
        simd_float4x4.position.getter();
        sub_1000D5E18();
        [v1 setOpacity:1.0];
        goto LABEL_121;
      }

      __break(1u);
      goto LABEL_193;
    }

    [v1 setOpacity:0.7];
    if (v1[OBJC_IVAR____TtC7Measure10LineRender_isMinor] == 1)
    {
      if (qword_1004A0050 != -1)
      {
        swift_once();
      }

      v22 = qword_1004D4970;
      v23 = UIContentSizeCategory.isAccessibilityCategory.getter();

      v24 = 0.00150000001;
      v25 = 0.00150000001;
      if ((v23 & 1) == 0)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          v25 = 0.00150000001;
        }

        else
        {
          v25 = 0.000750000007;
        }
      }

      v26 = qword_1004D4970;
      v27 = UIContentSizeCategory.isAccessibilityCategory.getter();

      if (v27)
      {
        goto LABEL_97;
      }

      v28 = !UIAccessibilityIsBoldTextEnabled();
      v29 = 0.000750000007;
      v30 = 0.00150000001;
    }

    else
    {
      if (qword_1004A0050 != -1)
      {
        swift_once();
      }

      v74 = qword_1004D4970;
      v75 = UIContentSizeCategory.isAccessibilityCategory.getter();

      v24 = 0.00899999961;
      v25 = 0.00899999961;
      if ((v75 & 1) == 0)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          v25 = 0.00899999961;
        }

        else
        {
          v25 = 0.00449999981;
        }
      }

      v76 = qword_1004D4970;
      v77 = UIContentSizeCategory.isAccessibilityCategory.getter();

      if (v77)
      {
        goto LABEL_97;
      }

      v28 = !UIAccessibilityIsBoldTextEnabled();
      v29 = 0.00449999981;
      v30 = 0.00899999961;
    }

    if (v28)
    {
      v24 = v29;
    }

    else
    {
      v24 = v30;
    }

LABEL_97:
    [v1 setHidden:0];
    v78 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry];
    if (!v78)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    [*&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry] setWidth:v25];
    [v78 setHeight:v24];
    v79 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial, 2);
    [v78 setFirstMaterial:v79];

    v80 = OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial;
    v81 = [*&v1[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial] diffuse];
    if (qword_1004A05E8 != -1)
    {
      swift_once();
    }

    [v81 setContents:qword_1004D5160];

    v82 = [*&v1[v80] emission];
    if (qword_1004A0620 != -1)
    {
      swift_once();
    }

    v83 = qword_1004D5198;
    goto LABEL_120;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      goto LABEL_54;
    }

    [v1 setOpacity:0.7];
    v31 = OBJC_IVAR____TtC7Measure10LineRender_isMinor;
    if (v1[OBJC_IVAR____TtC7Measure10LineRender_isMinor] == 1)
    {
      if (qword_1004A0050 != -1)
      {
        swift_once();
      }

      v32 = qword_1004D4970;
      v33 = UIContentSizeCategory.isAccessibilityCategory.getter();

      v34 = 0.00150000001;
      v35 = 0.00150000001;
      if ((v33 & 1) == 0)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          v35 = 0.00150000001;
        }

        else
        {
          v35 = 0.000750000007;
        }
      }

      v36 = qword_1004D4970;
      v37 = UIContentSizeCategory.isAccessibilityCategory.getter();

      if ((v37 & 1) == 0)
      {
        v38 = !UIAccessibilityIsBoldTextEnabled();
        v39 = 0.000750000007;
        v40 = 0.00150000001;
        goto LABEL_130;
      }
    }

    else
    {
      if (qword_1004A0050 != -1)
      {
        swift_once();
      }

      v95 = qword_1004D4970;
      v96 = UIContentSizeCategory.isAccessibilityCategory.getter();

      v34 = 0.00899999961;
      v35 = 0.00899999961;
      if ((v96 & 1) == 0)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          v35 = 0.00899999961;
        }

        else
        {
          v35 = 0.00449999981;
        }
      }

      v97 = qword_1004D4970;
      v98 = UIContentSizeCategory.isAccessibilityCategory.getter();

      if ((v98 & 1) == 0)
      {
        v38 = !UIAccessibilityIsBoldTextEnabled();
        v39 = 0.00449999981;
        v40 = 0.00899999961;
LABEL_130:
        if (v38)
        {
          v34 = v39;
        }

        else
        {
          v34 = v40;
        }
      }
    }

    [v1 setHidden:0];
    v99 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry];
    if (v99)
    {
      [*&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry] setWidth:v35];
      [v99 setHeight:v34];
      if (v1[v31] == 1)
      {
        v100 = &OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___minorSuggestedMaterial;
        v101 = 5;
      }

      else
      {
        v100 = &OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial;
        v101 = 2;
      }

      v102 = sub_1000D1CD0(v100, v101);
      [v99 setFirstMaterial:v102];

      v103 = [v99 firstMaterial];
      if (v103)
      {
        v104 = v103;
        v105 = [v103 diffuse];

        if (qword_1004A05F0 != -1)
        {
          swift_once();
        }

        [v105 setContents:qword_1004D5168];
      }

      v106 = [v99 firstMaterial];
      if (v106)
      {
        v107 = v106;
        v108 = [v106 emission];

        if (qword_1004A0610 != -1)
        {
          swift_once();
        }

        [v108 setContents:qword_1004D5188];
      }

      goto LABEL_121;
    }

    goto LABEL_196;
  }

  if (a1 == 9)
  {
    [v1 setOpacity:0.7];
    if (v1[OBJC_IVAR____TtC7Measure10LineRender_isMinor] == 1)
    {
      if (qword_1004A0050 != -1)
      {
        swift_once();
      }

      v41 = qword_1004D4970;
      v42 = UIContentSizeCategory.isAccessibilityCategory.getter();

      v43 = 0.00150000001;
      v44 = 0.00150000001;
      if ((v42 & 1) == 0)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          v44 = 0.00150000001;
        }

        else
        {
          v44 = 0.000750000007;
        }
      }

      v45 = qword_1004D4970;
      v46 = UIContentSizeCategory.isAccessibilityCategory.getter();

      if (v46)
      {
        goto LABEL_114;
      }

      v47 = !UIAccessibilityIsBoldTextEnabled();
      v48 = 0.000750000007;
      v49 = 0.00150000001;
    }

    else
    {
      if (qword_1004A0050 != -1)
      {
        swift_once();
      }

      v84 = qword_1004D4970;
      v85 = UIContentSizeCategory.isAccessibilityCategory.getter();

      v43 = 0.00899999961;
      v44 = 0.00899999961;
      if ((v85 & 1) == 0)
      {
        if (UIAccessibilityIsBoldTextEnabled())
        {
          v44 = 0.00899999961;
        }

        else
        {
          v44 = 0.00449999981;
        }
      }

      v86 = qword_1004D4970;
      v87 = UIContentSizeCategory.isAccessibilityCategory.getter();

      if (v87)
      {
        goto LABEL_114;
      }

      v47 = !UIAccessibilityIsBoldTextEnabled();
      v48 = 0.00449999981;
      v49 = 0.00899999961;
    }

    if (v47)
    {
      v43 = v48;
    }

    else
    {
      v43 = v49;
    }

LABEL_114:
    [v1 setHidden:0];
    v88 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry];
    if (!v88)
    {
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    [*&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry] setWidth:v44];
    [v88 setHeight:v43];
    v89 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial, 2);
    [v88 setFirstMaterial:v89];

    v80 = OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial;
    v90 = [*&v1[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial] diffuse];
    if (qword_1004A05F8 != -1)
    {
      swift_once();
    }

    [v90 setContents:qword_1004D5170];

    v82 = [*&v1[v80] emission];
    if (qword_1004A0630 != -1)
    {
      swift_once();
    }

    v83 = qword_1004D51A8;
LABEL_120:
    [v82 setContents:v83];

    v91 = *&v1[v80];
    static ComputedCameraProperties.shared.getter();
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v93 = String._bridgeToObjectiveC()();
    [v91 setValue:isa forKeyPath:v93];

LABEL_121:
    [v3 commit];
    simd_float4x4.position.getter();
    v182 = v94;
    simd_float4x4.position.getter();
    sub_1000D5E18();
    return;
  }

  if (a1 != 8)
  {
    goto LABEL_53;
  }

  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_121;
  }

  v13 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_linePrime];
  if (v13)
  {
    v14 = v13;
    v15 = [v1 childNodes];
    sub_100018630(0, &qword_1004A1318);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v183 = v14;
    __chkstk_darwin(v17);
    v177[2] = &v183;
    LOBYTE(v15) = sub_1001038E8(sub_1000D7B90, v177, v16);

    if (v15)
    {
      [v14 removeFromParentNode];
      sub_10000F974(&unk_1004A3F10);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1003D56B0;
      v19 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_line];
      *(v18 + 32) = v19;
      v20 = v19;

      v21 = OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes;
      swift_beginAccess();
      *&v1[v21] = v18;
    }

    else
    {
    }
  }

  if (v1[OBJC_IVAR____TtC7Measure10LineRender_isMinor] == 1)
  {
    if (qword_1004A0050 != -1)
    {
      swift_once();
    }

    v109 = qword_1004D4970;
    v110 = UIContentSizeCategory.isAccessibilityCategory.getter();

    v111 = 0.00150000001;
    v112 = 0.00150000001;
    if ((v110 & 1) == 0)
    {
      if (UIAccessibilityIsBoldTextEnabled())
      {
        v112 = 0.00150000001;
      }

      else
      {
        v112 = 0.000750000007;
      }
    }

    v113 = qword_1004D4970;
    v114 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if ((v114 & 1) == 0)
    {
      v115 = !UIAccessibilityIsBoldTextEnabled();
      v116 = 0.000750000007;
      v117 = 0.00150000001;
      goto LABEL_163;
    }
  }

  else
  {
    if (qword_1004A0050 != -1)
    {
      swift_once();
    }

    v118 = qword_1004D4970;
    v119 = UIContentSizeCategory.isAccessibilityCategory.getter();

    v111 = 0.00300000003;
    v112 = 0.00300000003;
    if ((v119 & 1) == 0)
    {
      if (UIAccessibilityIsBoldTextEnabled())
      {
        v112 = 0.00300000003;
      }

      else
      {
        v112 = 0.00150000001;
      }
    }

    v120 = qword_1004D4970;
    v121 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if ((v121 & 1) == 0)
    {
      v115 = !UIAccessibilityIsBoldTextEnabled();
      v116 = 0.00150000001;
      v117 = 0.00300000003;
LABEL_163:
      if (v115)
      {
        v111 = v116;
      }

      else
      {
        v111 = v117;
      }
    }
  }

  [v1 setHidden:0];
  v122 = *&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry];
  if (v122)
  {
    [*&v1[OBJC_IVAR____TtC7Measure10LineRender_lineGeometry] setWidth:v112];
    [v122 setHeight:v111];
    v123 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityThicknessGuideMaterial, 13);
    v127 = &v1[OBJC_IVAR____TtC7Measure10LineRender_renderedSegment];
    if (v1[OBJC_IVAR____TtC7Measure10LineRender_renderedSegment + 32])
    {
      v128 = 0;
      v129 = 0uLL;
    }

    else
    {
      v130 = v127[1];
      v131 = *v127;
      v125.i64[0] = v130.i64[0];
      v126.i64[0] = v131.i64[0];
      v179 = v125;
      v180 = v126;
      *v124.f32 = vsub_f32(*v130.i8, *v131.i8);
      v181 = v130;
      v182 = v131;
      v124.f32[2] = *&v130.i32[2] - *&v131.i32[2];
      v132 = vmulq_f32(v124, v124);
      [v1 setHidden:(v132.f32[2] + vaddv_f32(*v132.f32)) <= 0.00000011921];
      if ([v1 isHidden])
      {
LABEL_191:

        goto LABEL_121;
      }

      v133 = v181;
      v133.i32[0] = v181.i32[1];
      v178 = v133;
      simd_float4x4.position.getter();
      v134.i64[0] = v180.i64[0];
      v134.i64[1] = vextq_s8(v182, v182, 8uLL).u64[0];
      v136 = vsubq_f32(v135, v134);
      v137 = vmulq_f32(v136, v136);
      if ((v137.f32[2] + vaddv_f32(*v137.f32)) <= 0.00000011921 && (simd_float4x4.position.getter(), v138.i64[0] = v179.i64[0], v138.i64[1] = vextq_s8(v181, v181, 8uLL).u64[0], v140 = vsubq_f32(v139, v138), v141 = vmulq_f32(v140, v140), (v141.f32[2] + vaddv_f32(*v141.f32)) <= 0.00000011921))
      {
        v128 = 0;
        v142 = *SIMD3<>.zero.unsafeMutableAddressor();
        v143.i32[0] = v142.i32[1];
        v178 = v143;
        v181 = v142;
        v182 = v142;
      }

      else
      {
        v128 = 1;
      }

      simd_float4x4.position.getter();
      v129 = v182;
    }

    v144 = &v1[OBJC_IVAR____TtC7Measure10LineRender_primarySegment];
    if (v1[OBJC_IVAR____TtC7Measure10LineRender_primarySegment + 32])
    {
      if (v128)
      {
        goto LABEL_177;
      }
    }

    else
    {
      v182 = v129;
      v150 = v144[1];
      v151 = v144[2];
      v152 = *v144;
      v129.i64[0] = *v144;
      v179 = v129;
      v129.i64[0] = v150;
      v180 = v129;
      v153.i64[0] = v151;
      v153.i64[1] = v144[3];
      v181 = v153;
      simd_float4x4.position.getter();
      v154.i64[0] = __PAIR64__(v179.u32[1], v152);
      v154.i64[1] = v180.i64[0];
      v156 = vsubq_f32(v155, v154);
      v157 = vmulq_f32(v156, v156);
      if ((v157.f32[2] + vaddv_f32(*v157.f32)) > 0.00000011921 || (simd_float4x4.position.getter(), v158.i64[0] = __PAIR64__(v181.u32[1], v151), v158.i64[1] = vextq_s8(v181, v181, 8uLL).u64[0], v160 = vsubq_f32(v159, v158), v161 = vmulq_f32(v160, v160), (v161.f32[2] + vaddv_f32(*v161.f32)) > 0.00000011921))
      {
        v162.i64[0] = v152;
        v162.i64[1] = v150;
        v180 = v162;
        if ((v128 & 1) == 0)
        {
          v169 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___thicknessGuideMaterial, 12);

          v123 = v169;
          SCNVector3.init(_:)();
          v170 = SCNVector3._bridgeToObjectiveC()().super.isa;
          v171 = String._bridgeToObjectiveC()();
          [v123 setValue:v170 forKeyPath:v171];

          SCNVector3.init(_:)();
          v172 = SCNVector3._bridgeToObjectiveC()().super.isa;
          v173 = String._bridgeToObjectiveC()();
          [v123 setValue:v172 forKeyPath:v173];

          goto LABEL_186;
        }

        v123 = *&v1[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityThicknessGuideMaterial];
        SCNVector3.init(_:)();
        v163 = SCNVector3._bridgeToObjectiveC()().super.isa;
        v164 = String._bridgeToObjectiveC()();
        [v123 setValue:v163 forKeyPath:v164];

        SCNVector3.init(_:)();
        v165 = SCNVector3._bridgeToObjectiveC()().super.isa;
        v166 = String._bridgeToObjectiveC()();
        [v123 setValue:v165 forKeyPath:v166];

        SCNVector3.init(_:)();
        v167 = SCNVector3._bridgeToObjectiveC()().super.isa;
        v168 = String._bridgeToObjectiveC()();
        [v123 setValue:v167 forKeyPath:v168];

        v148.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
        v149 = String._bridgeToObjectiveC()();
        [v123 setValue:v148.super.super.isa forKeyPath:{v149, *&v178}];
LABEL_182:

LABEL_186:
        [v122 setFirstMaterial:{v123, v178.i64[0]}];
        v175 = [v123 diffuse];
        if (qword_1004A05E0 != -1)
        {
          swift_once();
        }

        [v175 setContents:qword_1004D5158];

        v176 = [v123 emission];
        if (qword_1004A0618 != -1)
        {
          swift_once();
        }

        [v176 setContents:qword_1004D5190];

        goto LABEL_191;
      }

      SIMD3<>.zero.unsafeMutableAddressor();
      v129 = v182;
      if (v128)
      {
LABEL_177:
        v182 = v129;
        v145 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityGuideMaterial, 11);

        v123 = v145;
        SCNVector3.init(_:)();
        v146 = SCNVector3._bridgeToObjectiveC()().super.isa;
        v147 = String._bridgeToObjectiveC()();
        [v123 setValue:v146 forKeyPath:v147];

        v148.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
        v149 = String._bridgeToObjectiveC()();
        [v123 setValue:v148.super.super.isa forKeyPath:{v149, *&v178}];
        goto LABEL_182;
      }
    }

    v174 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___plainGuideMaterial, 10);

    v123 = v174;
    goto LABEL_186;
  }

LABEL_197:
  __break(1u);
}

uint64_t sub_1000D5E18()
{
  v1 = OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = v5;
      sub_1000D7688(&v9, v0);

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_1000D5F34()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Measure10LineRender_line) geometry];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 materials];

  sub_100018630(0, &qword_1004AF720);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_18:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  sub_100018630(0, &qword_1004AE0D0);
  v27 = v6;
  v7 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___plainGuideMaterial, 10);
  v8 = static NSObject.== infix(_:_:)();

  if (v8 & 1) != 0 || (v9 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityGuideMaterial, 11), v10 = static NSObject.== infix(_:_:)(), v9, (v10))
  {
    simd_float4x4.position.getter();
    simd_float4x4.position.getter();
    SCNVector3.init(_:)();
    isa = SCNVector3._bridgeToObjectiveC()().super.isa;
    v12 = String._bridgeToObjectiveC()();
    [v27 setValue:isa forKeyPath:v12];
  }

  else
  {
    v13 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityThicknessGuideMaterial, 13);
    v14 = static NSObject.== infix(_:_:)();

    if (v14 & 1) != 0 || (v15 = sub_1000D1CD0(&OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___thicknessGuideMaterial, 12), v16 = static NSObject.== infix(_:_:)(), v15, (v16))
    {
      simd_float4x4.position.getter();
      v26 = v17;
      simd_float4x4.position.getter();
      v19 = vsubq_f32(v26, v18);
      v20 = vmulq_f32(v19, v19);
      *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(v21);
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
      v26.i64[0] = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]).u64[0];
      SCNVector3.init(_:)();
      v22 = SCNVector3._bridgeToObjectiveC()().super.isa;
      v23 = String._bridgeToObjectiveC()();
      [v27 setValue:v22 forKeyPath:{v23, v26.i64[0]}];

      simd_float4x4.position.getter();
      SCNVector3.init(_:)();
      v24 = SCNVector3._bridgeToObjectiveC()().super.isa;
      v25 = String._bridgeToObjectiveC()();
      [v27 setValue:v24 forKeyPath:v25];
    }
  }
}

uint64_t sub_1000D63B4()
{
  SCNVector3.init(_:_:_:)();
  v1 = OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v21 = "labelHalfWidthInPixels";
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 geometry];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 firstMaterial];

        if (v10)
        {
          v11 = [objc_opt_self() mainScreen];
          [v11 nativeScale];

          isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
          v13 = String._bridgeToObjectiveC()();
          [v10 setValue:isa forKeyPath:v13];
        }
      }

      v14 = [v6 geometry];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 firstMaterial];

        if (v16)
        {
          v17 = [objc_opt_self() mainScreen];
          [v17 nativeScale];

          * infix(_:_:)();
          v18 = SCNVector3._bridgeToObjectiveC()().super.isa;
          v19 = String._bridgeToObjectiveC()();
          [v16 setValue:v18 forKeyPath:v19];

          v6 = v19;
        }
      }

      ++v4;
      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void sub_1000D66B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(a3 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
        v11 = String._bridgeToObjectiveC()();
        [v8 setValue:isa forKeyPath:v11];

        if (v9 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }
}

uint64_t sub_1000D6818(float32x4_t a1, float32x4_t a2)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  v32 = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  v5 = *(v2 + OBJC_IVAR____TtC7Measure10LineRender_line);
  [v5 removeAllActions];
  sub_1000D6B10(v32);
  SCNVector3.init(_:)();
  [v5 setPosition:?];
  SCNNode.setForwardDirection(direction:)();
  v33 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7Measure10LineRender_linePrime);
  if (v6)
  {
    v7 = v6;
    SCNVector3.init(_:)();
    [v7 setPosition:?];
    SCNNode.setForwardDirection(direction:)();
  }

  v8 = (v33 + OBJC_IVAR____TtC7Measure10LineRender_currentPositions);
  *v8 = a1;
  v8[1] = a2;
  sub_1000D5E18();
  *(v33 + OBJC_IVAR____TtC7Measure10LineRender_isLabelVisible) = *(v33 + OBJC_IVAR____TtC7Measure10LineRender_isLabelVisible) == 1;
  v9 = OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes;
  swift_beginAccess();
  v10 = *(v33 + v9);
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v15 = &off_100494000;
    v31 = v10;
    while (1)
    {
      if (v13)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(v10 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v19 = [v16 v15[65]];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 firstMaterial];

        if (v21)
        {
          isa = Int._bridgeToObjectiveC()().super.super.isa;
          v23 = v14;
          v24 = v13;
          v25 = i;
          v26 = v15;
          v27 = String._bridgeToObjectiveC()();
          [v21 setValue:isa forKeyPath:v27];

          v15 = v26;
          i = v25;
          v13 = v24;
          v14 = v23;
          v10 = v31;
        }
      }

      ++v12;
      if (v18 == i)
      {
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_1000D6B10(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure10LineRender_lineGeometry);
  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = a1;
  [*(v1 + OBJC_IVAR____TtC7Measure10LineRender_lineGeometry) setLength:a1];
  v5 = a1 * 10.0;
  if (COERCE_INT(fabs(a1 * 10.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  [v2 setLengthSegmentCount:v6];
  v7 = *(v1 + OBJC_IVAR____TtC7Measure10LineRender_linePrimeGeometry);
  [v7 setLength:v4];
  [v7 setLengthSegmentCount:v6];
}

uint64_t sub_1000D6C28(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  simd_float4x4.position.getter();
  v50 = v9;
  simd_float4x4.position.getter();
  v11 = vsubq_f32(v50, v10);
  v12 = vmulq_f32(v11, v11);
  *v13.i32 = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v45 = *v13.i32;
  *v12.f32 = vdiv_f32(*v11.f32, vdup_lane_s32(v13, 0));
  v12.f32[2] = v11.f32[2] / *v13.i32;
  v12.i32[3] = 0;
  v59 = v12;
  LODWORD(v44) = 1056964608;
  slerp(transform1:transform2:percent:)();
  simd_float4x4.up.getter();
  sub_1000D703C(v59, v14);
  simd_float4x4.position.getter();
  createTransform(forward:normal:position:)();
  v48 = v16;
  v49 = v15;
  v46 = v18;
  v47 = v17;
  v19 = *(v8 + OBJC_IVAR____TtC7Measure10LineRender_line);
  [v19 removeAllActions];
  sub_1000D6B10(v45);
  [v19 setSimdWorldTransform:{v49, v48, v47, v46}];
  v60 = v8;
  [*(v8 + OBJC_IVAR____TtC7Measure10LineRender_linePrime) setSimdWorldTransform:{v49, v48, v47, v46}];
  if (qword_1004A03F8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    if (byte_1004D4FC8 == 1 && *(v60 + OBJC_IVAR____TtC7Measure10LineRender_hasDivisions) == 1)
    {
      v20 = *(v60 + OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender);
      if (v20)
      {
        if (*(v20 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState))
        {
          v21 = v20;
          sub_10002CC64(v45);
          sub_10002CA74(a1, a2, a3, a4, a5, a6, a7, a8);
        }
      }
    }

    v22 = (v60 + OBJC_IVAR____TtC7Measure10LineRender_endTransforms);
    *v22 = a1;
    v22[1] = a2;
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = a5;
    v22[5] = a6;
    v22[6] = a7;
    v22[7] = a8;
    v23 = (v60 + OBJC_IVAR____TtC7Measure10LineRender_currentTransforms);
    *v23 = a1;
    v23[1] = a2;
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v23[5] = a6;
    v23[6] = a7;
    v23[7] = a8;
    sub_1000D5E18();
    a4.n128_u64[0] = OBJC_IVAR____TtC7Measure10LineRender_isLabelVisible;
    *(v60 + OBJC_IVAR____TtC7Measure10LineRender_isLabelVisible) = *(v60 + OBJC_IVAR____TtC7Measure10LineRender_isLabelVisible) == 1;
    v24 = OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes;
    swift_beginAccess();
    v25 = *(v60 + v24);
    v26 = v25 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v26)
    {
    }

    v27 = 0;
    v28 = v25 & 0xC000000000000001;
    v29 = v25 & 0xFFFFFFFFFFFFFF8;
    v30 = &off_100494000;
    a3.n128_u64[0] = v25;
    while (1)
    {
      if (v28)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v29 + 16))
        {
          goto LABEL_22;
        }

        v31 = *(v25 + 8 * v27 + 32);
      }

      v32 = v31;
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v34 = [v31 v30[65]];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 firstMaterial];

        if (v36)
        {
          isa = Int._bridgeToObjectiveC()().super.super.isa;
          v38 = v29;
          v39 = v28;
          v40 = v26;
          v41 = v30;
          v42 = String._bridgeToObjectiveC()();
          [v36 setValue:isa forKeyPath:v42];

          v30 = v41;
          v26 = v40;
          v28 = v39;
          v29 = v38;
          v25 = a3.n128_u64[0];
        }
      }

      ++v27;
      if (v33 == v26)
      {
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }
}

double sub_1000D703C(float32x4_t a1, float32x4_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC7Measure10LineRender_verticalLineNormalOverride + 16))
  {
    v3 = a2.i64[0];
    v4 = vmulq_f32(a1, a2);
    if ((1.0 - fabsf(v4.f32[2] + vaddv_f32(*v4.f32))) < 0.00000011921)
    {
      v5 = *(**(v2 + OBJC_IVAR____TtC7Measure10LineRender__arframe) + 144);
      v16 = a2.i64[0];

      v5(__src, v6);

      memcpy(__dst, __src, sizeof(__dst));
      v7 = sub_10008D4F0();
      sub_100013C4C(__dst);
      v3 = v16;
      if (v7)
      {
        v8 = [v7 camera];
        [v8 transform];

        simd_float4x4.forward.getter();
        v17 = v9;

        v10 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v11 = vmlaq_f32(vmulq_f32(v10, vnegq_f32(v17)), a1, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
        v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
        v13 = vmlaq_f32(vmulq_f32(v10, vnegq_f32(v12)), a1, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
        v3 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL).u64[0];
      }
    }
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC7Measure10LineRender_verticalLineNormalOverride);
  }

  return *&v3;
}

void sub_1000D71CC(void *a1, uint64_t a2, Swift::Double a3)
{
  v5 = spring(tension:friction:velocity:elapsed:)(400.0, 40.0, 0.0, a3);
  v28 = *(a2 + OBJC_IVAR____TtC7Measure10LineRender_endTransforms + 16);
  v29 = *(a2 + OBJC_IVAR____TtC7Measure10LineRender_endTransforms);
  v26 = *(a2 + OBJC_IVAR____TtC7Measure10LineRender_endTransforms + 48);
  v27 = *(a2 + OBJC_IVAR____TtC7Measure10LineRender_endTransforms + 32);
  slerp(transform1:transform2:percent:)();
  v6 = (a2 + OBJC_IVAR____TtC7Measure10LineRender_currentTransforms);
  *v6 = v29;
  v6[1] = v28;
  v6[2] = v27;
  v6[3] = v26;
  v6[4] = v7;
  v6[5] = v8;
  v6[6] = v9;
  v6[7] = v10;
  simd_float4x4.position.getter();
  v30 = v11;
  simd_float4x4.position.getter();
  v13 = vsubq_f32(v30, v12);
  v14 = vmulq_f32(v13, v13);
  *v15.i32 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  v25 = *v15.i32;
  *v14.f32 = vdiv_f32(*v13.f32, vdup_lane_s32(v15, 0));
  v14.f32[2] = v13.f32[2] / *v15.i32;
  v14.i32[3] = 0;
  v31 = v14;
  LODWORD(v24) = 1056964608;
  slerp(transform1:transform2:percent:)();
  simd_float4x4.up.getter();
  sub_1000D703C(v31, v16);
  simd_float4x4.position.getter();
  createTransform(forward:normal:position:)();
  v34 = v18;
  v35 = v17;
  v33 = v19;
  v32 = v20;
  [*(a2 + OBJC_IVAR____TtC7Measure10LineRender_line) setSimdWorldTransform:v24];
  [*(a2 + OBJC_IVAR____TtC7Measure10LineRender_linePrime) setSimdWorldTransform:{v35, v34, v33, v32}];
  sub_1000D6B10(v25);
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  sub_1000D5E18();
  if (qword_1004A03F8 != -1)
  {
    swift_once();
  }

  if (byte_1004D4FC8 == 1 && *(a2 + OBJC_IVAR____TtC7Measure10LineRender_hasDivisions) == 1)
  {
    type metadata accessor for LineDivisionsRender();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      if (*(v21 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState))
      {
        v22 = a1;
        sub_10002CC64(v25);
      }
    }
  }

  v23 = a2 + OBJC_IVAR____TtC7Measure10LineRender_snapAnimationPercent;
  *v23 = v5;
  *(v23 + 4) = 0;
}

void sub_1000D74B0()
{
  sub_100065060();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000D7634()
{
  result = qword_1004A7F88;
  if (!qword_1004A7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7F88);
  }

  return result;
}

void sub_1000D7688(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 geometry];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 firstMaterial];

    if (v6)
    {
      SCNVector3.init(_:)();
      isa = SCNVector3._bridgeToObjectiveC()().super.isa;
      v8 = String._bridgeToObjectiveC()();
      [v6 setValue:isa forKeyPath:v8];
    }
  }

  v9 = [v3 geometry];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 firstMaterial];

    if (v11)
    {
      SCNVector3.init(_:)();
      v12 = SCNVector3._bridgeToObjectiveC()().super.isa;
      v13 = String._bridgeToObjectiveC()();
      [v11 setValue:v12 forKeyPath:v13];
    }
  }

  v14 = [v3 geometry];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 firstMaterial];

    if (v16)
    {
      v17 = *(**(a2 + OBJC_IVAR____TtC7Measure10LineRender__arframe) + 144);

      v17(__src, v18);

      memcpy(__dst, __src, sizeof(__dst));
      sub_100013C4C(__dst);
      simd_float4x4.position.getter();
      SCNVector3.init(_:)();
      v19 = SCNVector3._bridgeToObjectiveC()().super.isa;
      v20 = String._bridgeToObjectiveC()();
      [v16 setValue:v19 forKeyPath:v20];
    }
  }

  v21 = [v3 geometry];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 firstMaterial];

    if (v23)
    {
      v24 = *(**(a2 + OBJC_IVAR____TtC7Measure10LineRender__arframe) + 144);

      v24(__src, v25);

      memcpy(__dst, __src, sizeof(__dst));
      sub_100013C4C(__dst);
      simd_float4x4.forward.getter();
      SCNVector3.init(_:)();
      v26 = SCNVector3._bridgeToObjectiveC()().super.isa;
      v27 = String._bridgeToObjectiveC()();
      [v23 setValue:v26 forKeyPath:v27];
    }
  }

  v28 = [v3 geometry];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 firstMaterial];

    if (v30)
    {
      v31 = Float._bridgeToObjectiveC()().super.super.isa;
      v32 = String._bridgeToObjectiveC()();
      [v30 setValue:v31 forKeyPath:v32];
    }
  }
}

uint64_t sub_1000D7A58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D7A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D7AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004A3D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7B28(uint64_t a1)
{
  v2 = sub_10000F974(&unk_1004A3D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000D7BF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLineOcclusionAlphaBlendingEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1000D7C40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D7C78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D7CC0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Measure10LineRender_state) = static MeasureObjectState.default;
  *(v0 + OBJC_IVAR____TtC7Measure10LineRender_shouldOcclude) = 1;
  *(v0 + OBJC_IVAR____TtC7Measure10LineRender_hasDivisions) = 0;
  v2 = OBJC_IVAR____TtC7Measure10LineRender__render;
  KeyPath = swift_getKeyPath();
  v4 = sub_10000F974(&qword_1004A72F0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v4 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = OBJC_IVAR____TtC7Measure10LineRender__arframe;
  v8 = swift_getKeyPath();
  v9 = sub_10000F974(&qword_1004A1200);
  *(v1 + v7) = (*(v9 + 272))(v8, v5);
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D4970;
  v11 = UIContentSizeCategory.isAccessibilityCategory.getter();

  IsBoldTextEnabled = 1;
  if ((v11 & 1) == 0)
  {
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  }

  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_accessibleSizeOn) = IsBoldTextEnabled;
  v13 = OBJC_IVAR____TtC7Measure10LineRender_line;
  *(v1 + v13) = [objc_allocWithZone(SCNNode) init];
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_linePrime) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_linePrimeGeometry) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_confirmedLineNodes) = _swiftEmptyArrayStorage;
  v14 = v1 + OBJC_IVAR____TtC7Measure10LineRender_transformAtSnapStart;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 64) = 1;
  v15 = v1 + OBJC_IVAR____TtC7Measure10LineRender_targetTransformAtSnap;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 64) = 1;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_isMinor) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lineMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___minorSuggestedMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___dashedLineMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___linePrimeMaterial) = 0;
  v16 = v1 + OBJC_IVAR____TtC7Measure10LineRender_snapAnimationPercent;
  *v16 = 0;
  *(v16 + 4) = 1;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___isOcclusionInitialized) = 2;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityThicknessGuideMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___visibilityGuideMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___thicknessGuideMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___plainGuideMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___objectLineMaterial) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender) = 0;
  v17 = v1 + OBJC_IVAR____TtC7Measure10LineRender_primarySegment;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 1;
  v18 = v1 + OBJC_IVAR____TtC7Measure10LineRender_renderedSegment;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  v19 = OBJC_IVAR____TtC7Measure10LineRender_startTime;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_animationState) = 0;
  v21 = v1 + OBJC_IVAR____TtC7Measure10LineRender_verticalLineNormalOverride;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_shouldShowDivisions) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_dottedLineBreakPointDist) = 1075838976;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender__needsRendering) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure10LineRender_isLabelVisible) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000D81E8()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();

  v3 = OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView;
  if (!*&v0[OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView])
  {
    __break(1u);
    goto LABEL_18;
  }

  [v0 addSubview:?];
  v4 = *&v0[v3];
  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  [v0 bounds];
  [v5 setFrame:?];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = Strong;
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
  v10 = [v9 fontDescriptor];

  v11 = [v10 fontDescriptorWithSymbolicTraits:2];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = [v8 fontWithDescriptor:v11 size:0.0];

  [v7 setFont:v12];
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v14 = v13;
  if (qword_1004A0810 != -1)
  {
    swift_once();
  }

  v15 = qword_1004D53E8;
  v16 = qword_1004D53F0;
  if (byte_1004D53F8)
  {
    v17 = byte_1004D5408;
    v18 = qword_1004D5400;
    v19 = byte_1004AF8C0;
    v20 = qword_1004D53E8;
    v22 = sub_10007836C(v19, v18, v17);
    sub_10009F954(v15, v16, 1);
  }

  else
  {
    if (byte_1004AF8C0)
    {
      v21 = qword_1004D53F0;
    }

    else
    {
      v21 = qword_1004D53E8;
    }

    v22 = v21;
  }

  [v14 setTextColor:v22];
}

id sub_1000D8588(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1000D81E8();
  }

  return v5;
}

uint64_t sub_1000D8714(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v68 = v3;
  v8 = *(v3 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_13:
    v17 = __clz(__rbit64(v11)) | (v13 << 6);
    v18 = *(*(v8 + 56) + 8 * v17);
    if (a2 && ((v19 = (*(v8 + 48) + 16 * v17), *v19 == a1) ? (v20 = v19[1] == a2) : (v20 = 0), (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && a3 != 2))
    {
      v4 = qword_1004A03F8;
      v21 = v18;
      if (v4 != -1)
      {
        swift_once();
      }

      if (byte_1004D4FC8 == 1 && v21[OBJC_IVAR____TtC7Measure10LineRender_hasDivisions] == 1)
      {
        v4 = *&v21[OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender];
        if (v4)
        {
          if ((a3 & 1) == 0 || ((v22 = *&v4[OBJC_IVAR____TtC7Measure19LineDivisionsRender_state], v23 = v22 > 5, v24 = (1 << v22) & 0x25, !v23) ? (v25 = v24 == 0) : (v25 = 1), v25))
          {
            v21[OBJC_IVAR____TtC7Measure10LineRender_shouldShowDivisions] = 0;
          }

          else
          {
            v26 = v21[OBJC_IVAR____TtC7Measure10LineRender_shouldShowDivisions];
            v21[OBJC_IVAR____TtC7Measure10LineRender_shouldShowDivisions] = 1;
            if ((v26 & 1) == 0)
            {
              v27 = v4;
              sub_1000D1ED0();
              goto LABEL_46;
            }
          }

          v32 = v4;
LABEL_46:
          v33 = *&v21[OBJC_IVAR____TtC7Measure10LineRender_state];
          v34 = *&v4[OBJC_IVAR____TtC7Measure19LineDivisionsRender_state];
          *&v4[OBJC_IVAR____TtC7Measure19LineDivisionsRender_state] = v33;
          if (v34 != v33)
          {
            if (v33 > 4)
            {
              if (v33 <= 6)
              {
                if (v33 == 5)
                {
                  goto LABEL_81;
                }

                goto LABEL_91;
              }

              if (v33 != 9)
              {
                if (v33 == 8)
                {
                  goto LABEL_91;
                }

                if (v33 != 7)
                {
                  goto LABEL_112;
                }

LABEL_81:
                if (qword_1004A05D8 != -1)
                {
                  swift_once();
                }

                v42 = qword_1004D5150;
                if (qword_1004A0608 != -1)
                {
                  v48 = qword_1004D5150;
                  swift_once();
                  v42 = v48;
                }

                v43 = qword_1004D5180;
                goto LABEL_96;
              }

              if (qword_1004A05F8 != -1)
              {
                swift_once();
              }

              v44 = qword_1004A0630;
              v45 = qword_1004D5170;
              if (v44 != -1)
              {
                v50 = v45;
                swift_once();
                v45 = v50;
              }

              v65 = v45;
              sub_10002CED8(v45, qword_1004D51A8);
            }

            else
            {
              if (v33 <= 2)
              {
                if (!v33)
                {
                  goto LABEL_81;
                }

                if (v33 != 1)
                {
                  if (v33 != 2)
                  {
                    goto LABEL_112;
                  }

                  goto LABEL_81;
                }
              }

LABEL_91:
              if (qword_1004A0600 != -1)
              {
                swift_once();
              }

              v42 = qword_1004D5178;
              if (qword_1004A0628 != -1)
              {
                v47 = qword_1004D5178;
                swift_once();
                v42 = v47;
              }

              v43 = qword_1004D51A0;
LABEL_96:
              sub_10002CED8(v42, v43);
            }
          }

          v15 = a3 & 1;
          goto LABEL_6;
        }
      }
    }

    else
    {
      v28 = qword_1004A03F8;
      v29 = v18;
      if (v28 != -1)
      {
        v46 = v29;
        swift_once();
        v29 = v46;
      }

      if (byte_1004D4FC8 == 1 && v29[OBJC_IVAR____TtC7Measure10LineRender_hasDivisions] == 1)
      {
        v4 = *&v29[OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender];
        if (v4)
        {
          v29[OBJC_IVAR____TtC7Measure10LineRender_shouldShowDivisions] = 0;
          v30 = *&v29[OBJC_IVAR____TtC7Measure10LineRender_state];
          v31 = *&v4[OBJC_IVAR____TtC7Measure19LineDivisionsRender_state];
          *&v4[OBJC_IVAR____TtC7Measure19LineDivisionsRender_state] = v30;
          if (v31 == v30)
          {
            v14 = v4;
          }

          else if (v30 > 4)
          {
            if (v30 <= 6)
            {
              if (v30 == 5)
              {
                goto LABEL_64;
              }

              goto LABEL_74;
            }

            if (v30 != 9)
            {
              if (v30 == 8)
              {
                goto LABEL_74;
              }

              if (v30 != 7)
              {
                goto LABEL_111;
              }

LABEL_64:
              v35 = qword_1004A05D8;
              v4;
              if (v35 != -1)
              {
                swift_once();
              }

              v36 = qword_1004D5150;
              if (qword_1004A0608 != -1)
              {
                v67 = qword_1004D5150;
                swift_once();
                v36 = v67;
              }

              v37 = qword_1004D5180;
              goto LABEL_79;
            }

            v38 = qword_1004A05F8;
            v4;
            if (v38 != -1)
            {
              swift_once();
            }

            v39 = qword_1004A0630;
            v40 = qword_1004D5170;
            if (v39 != -1)
            {
              v49 = v40;
              swift_once();
              v40 = v49;
            }

            v64 = v40;
            sub_10002CED8(v40, qword_1004D51A8);
          }

          else
          {
            if (v30 <= 2)
            {
              if (!v30)
              {
                goto LABEL_64;
              }

              if (v30 != 1)
              {
                if (v30 != 2)
                {
                  goto LABEL_111;
                }

                goto LABEL_64;
              }
            }

LABEL_74:
            v41 = qword_1004A0600;
            v4;
            if (v41 != -1)
            {
              swift_once();
            }

            v36 = qword_1004D5178;
            if (qword_1004A0628 != -1)
            {
              v66 = qword_1004D5178;
              swift_once();
              v36 = v66;
            }

            v37 = qword_1004D51A0;
LABEL_79:
            sub_10002CED8(v36, v37);
          }

          v15 = 0;
LABEL_6:
          sub_10002AFD8(v15);
        }
      }
    }

    v11 &= v11 - 1;
    sub_1000D34CC();
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_110;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_13;
    }
  }

  v51 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v52 = *(v68 + v51);
  v53 = 1 << *(v52 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v52 + 64);
  v56 = (v53 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v57 = 0;
  while (v55)
  {
LABEL_106:
    v59 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v60 = *(*(v52 + 56) + ((v57 << 9) | (8 * v59)));
    if ((sub_100133B20() & 1) == 0)
    {
      v61 = v60;
      sub_100135700();
    }
  }

  while (1)
  {
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v58 >= v56)
    {
    }

    v55 = *(v52 + 64 + 8 * v58);
    ++v57;
    if (v55)
    {
      v57 = v58;
      goto LABEL_106;
    }
  }

LABEL_110:
  __break(1u);
LABEL_111:
  v63 = v4;
LABEL_112:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1000D8F50()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
      sub_1000D34CC();

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  if (![objc_opt_self() jasperAvailable])
  {
    return;
  }

  v12 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  while (v16)
  {
LABEL_20:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(*(v13 + 56) + ((v18 << 9) | (8 * v20)));
    if ((sub_100133B20() & 1) == 0)
    {
      v22 = v21;
      sub_100135700();
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_20;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1000D9158(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v36 = v2;
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_100198230(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9;
    sub_1000D63B4();
  }

  else
  {
    swift_endAccess();
  }

  v11 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v12 = *(v36 + v11);
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  v16 = 1 << *(*(v36 + v11) + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v34 = OBJC_IVAR____TtC7Measure8LineView__currentFrame;
  v35 = *(v36 + v11);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  while (v18)
  {
    v21 = v20;
LABEL_13:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v35 + 56) + ((v21 << 9) | (8 * v22)));
    type metadata accessor for MeasureCamera();
    v24 = *&v23[OBJC_IVAR____TtC7Measure11PointRender_point];
    v25 = v23;
    [v24 position];
    SIMD3<>.init(_:)();
    v26 = *(**(v36 + v34) + 144);

    v26(__src, v27);

    memcpy(__dst, __src, sizeof(__dst));
    sub_100013C4C(__dst);
    v28 = *(**(v36 + v34) + 144);

    v28(v37, v29);

    memcpy(__src, v37, sizeof(__src));
    sub_100013C4C(__src);
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    CGPoint.init(_:)();
    v31 = v30;
    v33 = v32;
    CGRect.init(centerPoint:size:)();
    v40.x = v31;
    v40.y = v33;
    [v25 setHidden:{CGRectContainsPoint(v41, v40)}];
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      return;
    }

    v18 = *(v14 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1000D9464(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *((swift_isaMask & *a1) + 0xB8);

  v10 = v8(v9);
  if (*(v7 + 16))
  {
    sub_100198230(v10, v11);
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  else
  {
  }

  v14 = objc_allocWithZone(type metadata accessor for PointRender());
  v15 = sub_100134D08(1, 0);
  (*((swift_isaMask & *a1) + 0x2B0))();
  simd_float4x4.position.getter();
  simd_float4x4.translated(to:)();
  v20 = sub_100133740(v16, v17, v18, v19);
  v21 = (*((swift_isaMask & *a1) + 0x2F0))(v20);
  v22 = *&v15[OBJC_IVAR____TtC7Measure11PointRender_type];
  *&v15[OBJC_IVAR____TtC7Measure11PointRender_type] = v21;
  if (v21 != v22)
  {
    sub_100133D20(*&v15[OBJC_IVAR____TtC7Measure11PointRender_state]);
  }

  v23 = (*((swift_isaMask & *a1) + 0xD0))();
  v24 = OBJC_IVAR____TtC7Measure11PointRender_state;
  v25 = *&v15[OBJC_IVAR____TtC7Measure11PointRender_state];
  *&v15[OBJC_IVAR____TtC7Measure11PointRender_state] = v23;
  if (v23 != v25)
  {
    sub_100133D20(v23);
  }

  if (a2)
  {
    v26 = *&v15[v24];
    *&v15[v24] = 1;
    if (v26 != 1)
    {
      sub_100133D20(1);
    }
  }

  v27 = objc_opt_self();
  [v27 begin];
  [*(v3 + OBJC_IVAR____TtC7Measure8LineView_lineParentNode) addChildNode:v15];
  v28 = v8([v27 commit]);
  v30 = v29;
  swift_beginAccess();
  v31 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v3 + v6);
  *(v3 + v6) = 0x8000000000000000;
  sub_1000BBBCC(v31, v28, v30, isUniquelyReferenced_nonNull_native);

  *(v3 + v6) = v33;
  swift_endAccess();
}

void sub_1000D979C(void *a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *a1) + 0xB8))();
  v6 = v5;
  v7 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!*(v8 + 16))
  {

    goto LABEL_13;
  }

  v9 = sub_100198230(v4, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_13:
    swift_endAccess();
    return;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v13 = *((swift_isaMask & *a1) + 0x2B0);
  v14 = v12;
  v13();
  simd_float4x4.position.getter();
  simd_float4x4.translated(to:)();
  v19 = sub_100133740(v15, v16, v17, v18);
  v20 = (*((swift_isaMask & *a1) + 0x2F0))(v19);
  v21 = *&v14[OBJC_IVAR____TtC7Measure11PointRender_type];
  *&v14[OBJC_IVAR____TtC7Measure11PointRender_type] = v20;
  if (v20 != v21)
  {
    sub_100133D20(*&v14[OBJC_IVAR____TtC7Measure11PointRender_state]);
  }

  v22 = (*((swift_isaMask & *a1) + 0xD0))();
  v23 = *&v14[OBJC_IVAR____TtC7Measure11PointRender_state];
  *&v14[OBJC_IVAR____TtC7Measure11PointRender_state] = v22;
  if (v22 != v23)
  {
    sub_100133D20(v22);
  }

  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_16;
  }

  v24 = (*((swift_isaMask & *a1) + 0x2B8))();
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = v24;
  v26 = (*((swift_isaMask & *v24) + 0xB8))();
  v28 = v27;
  swift_beginAccess();
  v29 = *(v2 + v7);
  if (!*(v29 + 16))
  {

    goto LABEL_15;
  }

  v30 = sub_100198230(v26, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_15:
    swift_endAccess();

    goto LABEL_16;
  }

  v33 = *(*(v29 + 56) + 8 * v30);
  swift_endAccess();
  v34 = v33;
  v13();
  simd_float4x4.position.getter();
  simd_float4x4.translated(to:)();
  sub_10013393C(v35, v36, v37, v38);

LABEL_16:
}

void sub_1000D9B0C(void *a1, char a2, char a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *((swift_isaMask & *a1) + 0xB8);

  v11 = v9(v10);
  if (*(v8 + 16))
  {
    sub_100198230(v11, v12);
    v14 = v13;

    if (v14)
    {
      return;
    }
  }

  else
  {
  }

  v91 = a3;
  v90 = v9;
  v15 = [objc_opt_self() jasperAvailable];
  v16 = *((swift_isaMask & *a1) + 0x250);
  v17 = v16();
  v18 = v17 & 0xC000000000000001;
  if (!v15)
  {
    if (v18)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v35 = *(v17 + 32);
    }

    v36 = v35;

    v38.n128_f64[0] = (*((swift_isaMask & *v36) + 0x2B0))(v37);
    v87 = v39;
    v89 = v38;
    v83 = v41;
    v85 = v40;

    v42 = v16();
    if ((v42 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v43 = v91;
    }

    else
    {
      v43 = v91;
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_35:
        __break(1u);
        return;
      }

      v44 = *(v42 + 40);
    }

    v46.n128_f64[0] = (*((swift_isaMask & *v44) + 0x2B0))(v45);
    v92 = v46;
    v79 = v48;
    v81 = v47;
    v77 = v49;

    if (a2)
    {
      v50 = 1;
    }

    else
    {
      v50 = (*((swift_isaMask & *a1) + 0xD0))();
    }

    objc_allocWithZone(type metadata accessor for LineRender());
    v54 = v43 & 1;
    v59 = v87;
    v58 = v89;
    v61 = v83;
    v60 = v85;
    v62 = v92;
    v64 = v79;
    v63 = v81;
    v65 = v77;
    v66 = v50;
    v55 = 1;
    v56 = 0;
    v57 = 0;
    goto LABEL_26;
  }

  if (!v18)
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v17 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v20 = v19;

  v22.n128_f64[0] = (*((swift_isaMask & *v20) + 0x2B0))(v21);
  v86 = v23;
  v88 = v22;
  v82 = v25;
  v84 = v24;

  v26 = v16();
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    goto LABEL_34;
  }

  v27 = *(v26 + 40);
LABEL_12:
  v28 = v27;

  v30.n128_f64[0] = (*((swift_isaMask & *v28) + 0x2B0))(v29);
  v78 = v31;
  v80 = v30;
  v75 = v33;
  v76 = v32;

  if (a2)
  {
    v34 = 1;
  }

  else
  {
    v34 = (*((swift_isaMask & *a1) + 0xD0))();
  }

  v51 = *((swift_isaMask & *a1) + 0x2C8);
  v52 = v51();
  LOBYTE(v51) = v51();
  v53 = (*((swift_isaMask & *a1) + 0x298))();
  objc_allocWithZone(type metadata accessor for LineRender());
  v54 = v91 & 1;
  v55 = v52 & 1;
  v56 = v51 & 1;
  v57 = v53 & 1;
  v59 = v86;
  v58 = v88;
  v61 = v82;
  v60 = v84;
  v63 = v78;
  v62 = v80;
  v65 = v75;
  v64 = v76;
  v66 = v34;
LABEL_26:
  sub_1000D21C4(v66, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v68 = v67;
  v69 = objc_opt_self();
  v70 = v68;
  [v69 begin];
  [*(v4 + OBJC_IVAR____TtC7Measure8LineView_lineParentNode) addChildNode:v70];
  v71 = v90([v69 commit]);
  v73 = v72;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v4 + v7);
  *(v4 + v7) = 0x8000000000000000;
  sub_1000BBD7C(v70, v71, v73, isUniquelyReferenced_nonNull_native);

  *(v4 + v7) = v94;
  swift_endAccess();
}

void sub_1000DA110(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = (*((swift_isaMask & *a1) + 0xB8))();
  v10 = v9;
  v11 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (!*(v12 + 16))
  {

    goto LABEL_17;
  }

  v13 = sub_100198230(v8, v10);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_17:
    swift_endAccess();
    return;
  }

  v16 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  v17 = objc_opt_self();
  v18 = v16;
  if ([v17 jasperAvailable])
  {
    v19 = (*((swift_isaMask & *a1) + 0x298))() & 1;
    v18[OBJC_IVAR____TtC7Measure10LineRender_isOnVerticalGuide] = v19;
    v20 = *&v18[OBJC_IVAR____TtC7Measure10LineRender_lineDivisionsRender];
    if (v20)
    {
      *(v20 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_isOnVerticalGuide) = v19;
    }
  }

  v21 = *((swift_isaMask & *a1) + 0x250);
  v22 = v21();
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  v26.n128_f64[0] = (*((swift_isaMask & *v24) + 0x2B0))(v25);
  v48 = v27;
  v49 = v26;
  v46 = v29;
  v47 = v28;

  v30 = v21();
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v31 = *(v30 + 40);
LABEL_12:
  v32 = v31;

  v34.n128_f64[0] = (*((swift_isaMask & *v32) + 0x2B0))(v33);
  v44 = v35;
  v45 = v34;
  v42 = v37;
  v43 = v36;

  sub_1000D2D28(a2 & 1, a3 & 1, v49, v48, v47, v46, v45, v44, v43, v42);
  v38 = (*((swift_isaMask & *a1) + 0xD0))();
  v39 = *&v18[OBJC_IVAR____TtC7Measure10LineRender_state];
  *&v18[OBJC_IVAR____TtC7Measure10LineRender_state] = v38;
  if (v39 != v38)
  {
    v40 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
    if (v18[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] != 1)
    {
      v41 = sub_1000D2184();
      os_unfair_lock_lock(v41);
      v18[v40] = 1;
      os_unfair_lock_unlock(*&v18[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
    }
  }
}

void sub_1000DA4A4(void *a1)
{
  v2 = v1;
  v4.n128_f64[0] = (*((swift_isaMask & *a1) + 0x2A0))();
  v31 = v4;
  v29 = v6;
  v30 = v5;
  v28 = v7;
  v8.n128_f64[0] = (*((swift_isaMask & *a1) + 0x2A8))();
  v26 = v9;
  v27 = v8;
  v24 = v11;
  v25 = v10;
  v12 = static MeasureObjectState.default;
  v13 = objc_allocWithZone(type metadata accessor for LineRender());
  sub_1000D21C4(v12, 0, 1, 0, 0, v31, v30, v29, v28, v27, v26, v25, v24);
  v15 = v14;
  sub_1000DB428(v14, a1);
  v16 = objc_opt_self();
  [v16 begin];
  [*(v2 + OBJC_IVAR____TtC7Measure8LineView_lineParentNode) addChildNode:v15];
  [v16 commit];
  v17 = sub_1000D3988();
  v18 = (*((swift_isaMask & *a1) + 0xB8))(v17);
  v20 = v19;
  v21 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v22 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v2 + v21);
  *(v2 + v21) = 0x8000000000000000;
  sub_1000BBD7C(v22, v18, v20, isUniquelyReferenced_nonNull_native);

  *(v2 + v21) = v32;
  swift_endAccess();
}

void sub_1000DA6C8(void *a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *a1) + 0xB8))();
  v6 = v5;
  v7 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_100198230(v4, v6);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v9);
      swift_endAccess();
      v13 = *((swift_isaMask & *a1) + 0x2A0);
      v14 = v12;
      v15.n128_f64[0] = v13();
      v25 = v16;
      v26 = v15;
      v23 = v18;
      v24 = v17;
      v19.n128_f64[0] = (*((swift_isaMask & *a1) + 0x2A8))();
      sub_1000D2D28(0, 0, v26, v25, v24, v23, v19, v20, v21, v22);
      sub_1000DB428(v14, a1);

      return;
    }
  }

  else
  {
  }

  swift_endAccess();
}

id sub_1000DA87C()
{
  v1 = objc_opt_self();
  [v1 begin];
  v2 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = [*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) removeFromParentNode];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v12 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v13 = *&v0[v12];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  for (i = 0; v16; result = [*(*(v13 + 56) + ((v19 << 9) | (8 * v20))) removeFromParentNode])
  {
    v19 = i;
LABEL_19:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v21 = swift_allocObject();
      *(v21 + 16) = v0;
      v24[4] = sub_1000DB400;
      v24[5] = v21;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 1107296256;
      v24[2] = sub_100041180;
      v24[3] = &unk_10046D120;
      v22 = _Block_copy(v24);
      v23 = v0;

      [v1 setCompletionBlock:v22];
      _Block_release(v22);
      return [v1 commit];
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++i;
    if (v16)
    {
      i = v19;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1000DAB30(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v15 = OBJC_IVAR____TtC7Measure8LineView_lineParentNode;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(v3 + 56) + 8 * (v10 | (v9 << 6)));

        v12 = v11;
        v13 = [v12 parentNode];
        if (v13)
        {
          v14 = v13;

          v8 = v9;
          if (!v6)
          {
            goto LABEL_6;
          }
        }

        else
        {
          [*(v1 + v15) addChildNode:v12];

          v8 = v9;
          if (!v6)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v9 = v8;
      }
    }
  }

  __break(1u);
}

void sub_1000DACA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  [v7 begin];
  [a1 removeFromParentNode];
  [v7 commit];
  swift_beginAccess();
  v8 = sub_1000C6778(a3, a4);
  swift_endAccess();
}

uint64_t sub_1000DAD64(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_1000DB420;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046D170;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000DAFE8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  *(a1 + v2) = _swiftEmptyDictionarySingleton;

  v3 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  *(a1 + v3) = _swiftEmptyDictionarySingleton;
}

uint64_t sub_1000DB154()
{
  v1 = OBJC_IVAR____TtC7Measure8LineView_worldLines;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = *(*(v2 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    v11 = v10;
    if (!MeasureObjectState.isCapturable()())
    {
      [v11 removeFromParentNode];
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v12 = OBJC_IVAR____TtC7Measure8LineView_worldPoints;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
LABEL_21:
    v20 = *(*(v13 + 56) + 8 * (__clz(__rbit64(v16)) | (v18 << 6)));

    v21 = v20;
    if (!MeasureObjectState.isCapturable()())
    {
      [v21 removeFromParentNode];
    }

    v16 &= v16 - 1;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000DB3C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DB408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000DB428(uint64_t a1, void *a2)
{
  v4 = (*((swift_isaMask & *a2) + 0xD0))();
  v5 = OBJC_IVAR____TtC7Measure10LineRender_state;
  v6 = *(a1 + OBJC_IVAR____TtC7Measure10LineRender_state);
  *(a1 + OBJC_IVAR____TtC7Measure10LineRender_state) = v4;
  if (v6 != v4)
  {
    v7 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
    if (*(a1 + OBJC_IVAR____TtC7Measure10LineRender__needsRendering) != 1)
    {
      v8 = sub_1000D2184();
      os_unfair_lock_lock(v8);
      *(a1 + v7) = 1;
      os_unfair_lock_unlock(*(a1 + OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock));
    }
  }

  (*((swift_isaMask & *a2) + 0x2B0))(v9);
  if (*(a1 + v5) == 8)
  {
    v16[0] = v9[0];
    v16[1] = v9[1];
    v17 = v10;
    sub_1000D1DE4(v16);
    v14[0] = v11;
    v14[1] = v12;
    v15 = v13;
    sub_1000D1DF0(v14);
  }
}

char *sub_1000DB574(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC7Measure8LineView__currentFrame;
  KeyPath = swift_getKeyPath();
  v7 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v7 + 272);

  *&v2[v5] = v9(KeyPath, v8);
  v10 = OBJC_IVAR____TtC7Measure8LineView_lineParentNode;
  *&v2[v10] = [objc_allocWithZone(SCNNode) init];
  *&v2[OBJC_IVAR____TtC7Measure8LineView_worldPoints] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC7Measure8LineView_worldLines] = _swiftEmptyDictionarySingleton;
  v11 = &v2[OBJC_IVAR____TtC7Measure8LineView_firstPointInSessionId];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v2[OBJC_IVAR____TtC7Measure8LineView_scene] = a1;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v18, "init");
  v14 = objc_opt_self();
  v15 = v13;
  [v14 begin];
  v16 = [v12 rootNode];
  [v16 addChildNode:*&v15[OBJC_IVAR____TtC7Measure8LineView_lineParentNode]];

  [v14 commit];
  return v15;
}

uint64_t sub_1000DB768(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_1000DB99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1004A0058 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D4978;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = a2;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000DB768;
  v10[3] = a3;
  v8 = _Block_copy(v10);

  v9 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

void sub_1000DBAEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (!v12)
    {

      sub_10002D238(v11);
      return;
    }

    if (swift_dynamicCast())
    {
      if (v10 > 1u)
      {
        if (v10 == 2)
        {
          UIAccessibilityIsBoldTextEnabled();
        }

        else
        {
          v2 = [objc_opt_self() sharedApplication];
          v3 = [v2 preferredContentSizeCategory];

          UIContentSizeCategory.isAccessibilityCategory.getter();
          v4 = *&v1[qword_1004A2230];
          v5 = objc_opt_self();
          v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
          v7 = [v6 fontDescriptor];

          v8 = [v7 fontDescriptorWithSymbolicTraits:2];
          if (!v8)
          {
            __break(1u);
            return;
          }

          v9 = [v5 fontWithDescriptor:v8 size:0.0];

          [v4 setFont:v9];
          if ((v1[qword_1004A2238 + 8] & 1) == 0)
          {
            [v1 updateText:*&v1[qword_1004A2238]];
          }
        }
      }

      else if (v10)
      {
        UIAccessibilityDarkerSystemColorsEnabled();
      }

      else
      {
        UIAccessibilityIsInvertColorsEnabled();
      }
    }
  }
}

void sub_1000DBD08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (v6)
    {
      if (swift_dynamicCast())
      {
        if (v4 > 1u)
        {
          if (v4 == 2)
          {
            UIAccessibilityIsBoldTextEnabled();
          }

          else
          {
            v2 = [objc_opt_self() sharedApplication];
            v3 = [v2 preferredContentSizeCategory];

            UIContentSizeCategory.isAccessibilityCategory.getter();
            sub_1000DF180();
          }
        }

        else if (v4)
        {
          UIAccessibilityDarkerSystemColorsEnabled();
        }

        else
        {
          UIAccessibilityIsInvertColorsEnabled();
        }
      }
    }

    else
    {

      sub_10002D238(v5);
    }
  }
}

void sub_1000DBE30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (!v7)
    {

      sub_10002D238(v6);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v5 > 1u)
    {
      if (v5 != 2)
      {
        v3 = [objc_opt_self() sharedApplication];
        v4 = [v3 preferredContentSizeCategory];

        UIContentSizeCategory.isAccessibilityCategory.getter();
        sub_1000ABDF8();
        sub_1000AC368();
        v2 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_state];
        goto LABEL_12;
      }

      UIAccessibilityIsBoldTextEnabled();
    }

    else
    {
      if (!v5)
      {
        UIAccessibilityIsInvertColorsEnabled();
        v2 = *&v1[OBJC_IVAR____TtC7Measure11LabelRender_state];
LABEL_12:
        sub_1000AB428(v2);
        goto LABEL_13;
      }

      UIAccessibilityDarkerSystemColorsEnabled();
    }

LABEL_13:
  }
}

void sub_1000DBF84(uint64_t a1, uint64_t a2, void (*a3)(_BOOL8))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Notification.object.getter();
    if (!v11)
    {

      sub_10002D238(v10);
      return;
    }

    if (swift_dynamicCast())
    {
      if (v9 > 1u)
      {
        if (v9 != 2)
        {
          v7 = [objc_opt_self() sharedApplication];
          v8 = [v7 preferredContentSizeCategory];

          UIContentSizeCategory.isAccessibilityCategory.getter();
          return;
        }

        UIAccessibilityIsBoldTextEnabled();
      }

      else if (v9)
      {
        UIAccessibilityDarkerSystemColorsEnabled();
      }

      else
      {
        IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
        a3(IsInvertColorsEnabled);
      }
    }
  }
}

void sub_1000DC0B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (v10)
    {
      if (swift_dynamicCast())
      {
        if (v8 > 1u)
        {
          if (v8 == 2)
          {
            UIAccessibilityIsBoldTextEnabled();
          }

          else
          {
            v5 = [objc_opt_self() sharedApplication];
            v6 = [v5 preferredContentSizeCategory];

            UIContentSizeCategory.isAccessibilityCategory.getter();
            sub_10009FA00();
          }
        }

        else if (v8)
        {
          UIAccessibilityDarkerSystemColorsEnabled();
        }

        else
        {
          UIAccessibilityIsInvertColorsEnabled();
          v2 = qword_1004A0590;
          v3 = *&v1[qword_1004A65F0];
          if (v2 != -1)
          {
            swift_once();
          }

          [v3 setBackgroundColor:qword_1004D5108];

          v4 = *&v1[qword_1004A65E0];
          if (qword_1004A0578 != -1)
          {
            v7 = *&v1[qword_1004A65E0];
            swift_once();
            v4 = v7;
          }

          [v4 setTextColor:qword_1004D50F0];
        }
      }
    }

    else
    {

      sub_10002D238(v9);
    }
  }
}

void sub_1000DC29C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (v6)
    {
      if (swift_dynamicCast())
      {
        if (v4 > 1u)
        {
          if (v4 == 2)
          {
            UIAccessibilityIsBoldTextEnabled();
          }

          else
          {
            v2 = [objc_opt_self() sharedApplication];
            v3 = [v2 preferredContentSizeCategory];

            LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
            if (v2)
            {
              [*&v1[OBJC_IVAR____TtC7Measure11HistoryView_tableView] reloadData];
            }
          }
        }

        else if (v4)
        {
          UIAccessibilityDarkerSystemColorsEnabled();
        }

        else
        {
          UIAccessibilityIsInvertColorsEnabled();
        }
      }
    }

    else
    {

      sub_10002D238(v5);
    }
  }
}

void sub_1000DC3E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (!v9)
    {

      sub_10002D238(v8);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v7 <= 1u)
    {
      if (v7)
      {
        UIAccessibilityDarkerSystemColorsEnabled();
      }

      else
      {
        UIAccessibilityIsInvertColorsEnabled();
      }

      goto LABEL_14;
    }

    if (v7 == 2)
    {
      IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
      v3 = v1[OBJC_IVAR____TtC7Measure11PointRender_accessibleSizeOn];
      v1[OBJC_IVAR____TtC7Measure11PointRender_accessibleSizeOn] = IsBoldTextEnabled;
      if (IsBoldTextEnabled == v3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = [objc_opt_self() sharedApplication];
      v5 = [v4 preferredContentSizeCategory];

      LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v6 = v1[OBJC_IVAR____TtC7Measure11PointRender_accessibleSizeOn];
      v1[OBJC_IVAR____TtC7Measure11PointRender_accessibleSizeOn] = v4 & 1;
      if ((v4 & 1) == v6)
      {
LABEL_14:

        return;
      }
    }

    sub_100133D20(*&v1[OBJC_IVAR____TtC7Measure11PointRender_state]);
    goto LABEL_14;
  }
}

void sub_1000DC550()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (!v11)
    {

      sub_10002D238(v10);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        UIAccessibilityDarkerSystemColorsEnabled();
      }

      else
      {
        UIAccessibilityIsInvertColorsEnabled();
      }

      goto LABEL_15;
    }

    if (v9 == 2)
    {
      IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
      v3 = v1[OBJC_IVAR____TtC7Measure10LineRender_accessibleSizeOn];
      v1[OBJC_IVAR____TtC7Measure10LineRender_accessibleSizeOn] = IsBoldTextEnabled;
      if (IsBoldTextEnabled == v3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = [objc_opt_self() sharedApplication];
      v5 = [v4 preferredContentSizeCategory];

      LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v6 = v1[OBJC_IVAR____TtC7Measure10LineRender_accessibleSizeOn];
      v1[OBJC_IVAR____TtC7Measure10LineRender_accessibleSizeOn] = v4 & 1;
      if ((v4 & 1) == v6)
      {
LABEL_15:

        return;
      }
    }

    v7 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
    if (v1[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] != 1)
    {
      v8 = sub_1000D2184();
      os_unfair_lock_lock(v8);
      v1[v7] = 1;
      os_unfair_lock_unlock(*&v1[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
    }

    goto LABEL_15;
  }
}

void sub_1000DC750(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_1004A8050);
  *(a1 + qword_1004A8050) = a3;
  v3 = a3;
}

void sub_1000DC798(uint64_t a1)
{
  v1[qword_1004A8098] = 1;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  v15 = sub_1000DF664;
  v16 = v3;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100041180;
  v14 = &unk_10046D678;
  v5 = _Block_copy(&v11);
  v6 = v1;

  v7 = [v4 initWithDuration:v5 dampingRatio:0.4 animations:0.9];
  _Block_release(v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = a1;
  v15 = sub_1000DF6C4;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10002E9EC;
  v14 = &unk_10046D6C8;
  v9 = _Block_copy(&v11);
  v10 = v6;

  [v7 addCompletion:v9];
  _Block_release(v9);
  [v7 setInterruptible:0];
  [v7 startAnimation];
}

id sub_1000DC984(uint64_t a1)
{
  sub_1000DCB4C();
  v3 = 0.0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v9 = *(v1 + qword_1004A8080);
      if (v9)
      {
        [v9 setActive:1];
      }

      v10 = *(v1 + qword_1004A8070);
      if (v10)
      {
        [v10 setActive:1];
      }

      v3 = *CGFloat.piDiv2.unsafeMutableAddressor();
    }

    else if (a1 == 4)
    {
      v6 = *(v1 + qword_1004A8080);
      if (v6)
      {
        [v6 setActive:1];
      }

      v7 = *(v1 + qword_1004A8078);
      if (v7)
      {
        [v7 setActive:1];
      }

      v3 = -*CGFloat.piDiv2.unsafeMutableAddressor();
    }
  }

  else
  {
    if (a1 < 2)
    {
      v4 = *(v1 + qword_1004A8088);
      if (v4)
      {
        [v4 setActive:1];
      }

      v5 = *(v1 + qword_1004A8060);
      if (!v5)
      {
        goto LABEL_24;
      }

LABEL_18:
      [v5 setActive:1];
      goto LABEL_24;
    }

    if (a1 == 2)
    {
      v8 = *(v1 + qword_1004A8088);
      if (v8)
      {
        [v8 setActive:1];
      }

      v5 = *(v1 + qword_1004A8068);
      v3 = 3.14159265;
      if (v5)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_24:
  CGAffineTransformMakeRotation(&v20, v3);
  a = v20.a;
  b = v20.b;
  c = v20.c;
  d = v20.d;
  tx = v20.tx;
  ty = v20.ty;
  v17 = (v1 + qword_1004A8090);
  *v17 = v20.a;
  v17[1] = b;
  v17[2] = c;
  v17[3] = d;
  v17[4] = tx;
  v17[5] = ty;
  v18 = *(v1 + qword_1004A8040);
  v20.a = a;
  v20.b = b;
  v20.c = c;
  v20.d = d;
  v20.tx = tx;
  v20.ty = ty;
  return [v18 setTransform:&v20];
}

id sub_1000DCB4C()
{
  v1 = *(v0 + qword_1004A8078);
  if (v1)
  {
    [v1 setActive:0];
  }

  v2 = *(v0 + qword_1004A8070);
  if (v2)
  {
    [v2 setActive:0];
  }

  v3 = *(v0 + qword_1004A8068);
  if (v3)
  {
    [v3 setActive:0];
  }

  v4 = *(v0 + qword_1004A8060);
  if (v4)
  {
    [v4 setActive:0];
  }

  v5 = *(v0 + qword_1004A8080);
  if (v5)
  {
    [v5 setActive:0];
  }

  result = *(v0 + qword_1004A8088);
  if (result)
  {

    return [result setActive:0];
  }

  return result;
}

id sub_1000DCC2C(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[qword_1004A8038];
  *v7 = 0;
  v7[8] = 1;
  v8 = qword_1004A8040;
  *&v3[v8] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = qword_1004A8048;
  *&v3[v9] = [objc_allocWithZone(CAShapeLayer) init];
  v10 = qword_1004A8050;
  *&v3[v10] = [objc_allocWithZone(CAShapeLayer) init];
  *&v3[qword_1004A8060] = 0;
  *&v3[qword_1004A8068] = 0;
  *&v3[qword_1004A8070] = 0;
  *&v3[qword_1004A8078] = 0;
  *&v3[qword_1004A8080] = 0;
  *&v3[qword_1004A8088] = 0;
  v11 = &v3[qword_1004A8090];
  *v11 = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0x3FF0000000000000;
  v11[4] = 0;
  v11[5] = 0;
  v3[qword_1004A8098] = 0;
  *&v3[qword_1004A80A0] = 0;
  v12 = qword_1004A80A8;
  KeyPath = swift_getKeyPath();
  v14 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1004D5058;
  v16 = *(v14 + 272);
  swift_retain_n();
  *&v3[v12] = v16(KeyPath, v15);
  v17 = qword_1004A80B0;
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&unk_1004A2520);
  *&v3[v17] = (*(v19 + 272))(v18, v15);
  v20 = qword_1004A80B8;
  v21 = sub_10000F974(&unk_1004A6950);
  v22 = swift_getKeyPath();
  *&v3[v20] = (*(v21 + 272))(v22, v15);
  sub_1000DF2E8();
  *&v3[qword_1004A8030] = v23;
  v3[qword_1004A8058] = a2 & 1;
  [a1 frame];
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, "initWithFrame:");
  [a1 addSubview:v24];
  [a1 frame];
  [v24 frame];
  [v24 setFrame:?];
  [v24 setUserInteractionEnabled:0];
  [v24 updateText:0];
  sub_1000DCFC8();
  sub_1000DB99C(&unk_10046D1D8, sub_1000DF504, &unk_10046D1F0);

  return v24;
}

uint64_t sub_1000DCFC8()
{
  sub_1000DDD78();
  v2 = v1;
  v4 = v3;
  v5 = *&v0[qword_1004A8050];
  v6 = v3 * 0.5;
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 bezierPathWithRoundedRect:-1 byRoundingCorners:0.0 cornerRadii:{0.0, v2, v4, v6, v6}];
  v10 = [v9 CGPath];

  [v8 setPath:v10];
  sub_1000DD388();
  sub_1000DD4EC();
  sub_1000DD808();
  v11 = [objc_opt_self() effectWithStyle:17];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];
  [v0 bounds];
  [v12 setFrame:?];
  [v12 setAutoresizingMask:18];
  v13 = qword_1004A8040;
  [*&v0[qword_1004A8040] insertSubview:v12 atIndex:0];

  [v0 setAlpha:0.0];
  v14 = *&v0[v13];
  CGAffineTransformMakeScale(&v22, 0.9, 0.9);
  [v14 setTransform:&v22];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000DF524;
  *(v17 + 24) = v16;
  *&v22.tx = sub_10008E154;
  *&v22.ty = v17;
  *&v22.a = _NSConcreteStackBlock;
  *&v22.b = 1107296256;
  *&v22.c = sub_1000DC708;
  *&v22.d = &unk_10046D268;
  v18 = _Block_copy(&v22);
  v19 = v0;

  [v15 performWithoutAnimation:v18];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DD2E4(uint64_t result)
{
  if (*(v1 + qword_1004A4708) == 1)
  {
    __chkstk_darwin(result);

    StateValue.ifUpdated(_:)();
  }

  return result;
}

void sub_1000DD388()
{
  if (*(v0 + qword_1004A8058) == 1)
  {
    v1 = qword_1004A8048;
    v2 = *(v0 + qword_1004A8048);
    v3 = sub_1000DDE40(-15.0, -3.2);
    v4 = [v3 CGPath];

    [v2 setPath:v4];
    v5 = *(v0 + v1);
    CGAffineTransformMakeRotation(&v14, -1.57079625);
    v12 = *&v14.m13;
    v13 = *&v14.m11;
    v11 = *&v14.m21;
    v6 = v5;
    *&m.a = v13;
    *&m.c = v12;
    *&m.tx = v11;
    CATransform3DMakeAffineTransform(&v14, &m);
    [v6 setTransform:&v14];

    [*(v0 + qword_1004A8050) addSublayer:*(v0 + v1)];
    v7 = *(v0 + v1);
    sub_1000DDD78();
    v9 = v8;
    sub_1000DDD78();
    [v7 setPosition:{v9, v10 * 0.5}];
  }
}

void sub_1000DD4EC()
{
  v1 = qword_1004A8040;
  v2 = [*&v0[qword_1004A8040] layer];
  [v2 setMask:*&v0[qword_1004A8050]];

  v3 = [*&v0[v1] layer];
  [v3 setMasksToBounds:1];

  v4 = [*&v0[v1] layer];
  v5 = v4;
  v6 = 1.0;
  if (v0[qword_1004A8058])
  {
    v7 = 20.0;
  }

  else
  {
    v6 = 0.5;
    v7 = 18.0;
  }

  if (v0[qword_1004A8058])
  {
    v8 = -32.0;
  }

  else
  {
    v8 = -18.0;
  }

  [v4 setAnchorPoint:v6];

  v9 = *&v0[qword_1004A8030];
  [*&v0[v1] addSubview:v9];
  [v0 addSubview:*&v0[v1]];
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [*&v0[v1] heightAnchor];
  sub_1000DDD78();
  v12 = [v10 constraintEqualToConstant:v11];

  [v12 setActive:1];
  v13 = [v9 centerYAnchor];
  v14 = [*&v0[v1] centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
  v16 = [v9 leftAnchor];
  v17 = [*&v0[v1] leftAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v7];

  [v18 setActive:1];
  v19 = [v9 rightAnchor];
  v20 = [*&v0[v1] rightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v8];

  [v21 setActive:1];
}

void sub_1000DD808()
{
  if (v0[qword_1004A8058] == 1)
  {
    if (qword_1004A0520 != -1)
    {
      swift_once();
    }

    v1 = *&qword_1004D5090;
    if (qword_1004A0518 != -1)
    {
      swift_once();
    }

    v2 = v1 + *&qword_1004D5088;
    v32 = &qword_1004A8080;
    v33 = &qword_1004A8088;
    v31 = &qword_1004A8060;
    v3 = &qword_1004A8068;
    v4 = &qword_1004A8070;
    v5 = &qword_1004A8078;
  }

  else
  {
    if (qword_1004A07A8 != -1)
    {
      swift_once();
    }

    v2 = *&qword_1004D5320;
    v32 = &qword_1004A8088;
    v33 = &qword_1004A8080;
    v31 = &qword_1004A8070;
    v3 = &qword_1004A8078;
    v4 = &qword_1004A8068;
    v5 = &qword_1004A8060;
  }

  v6 = qword_1004A8040;
  v7 = [*&v0[qword_1004A8040] centerYAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:v2];

  v10 = *&v0[*v5];
  *&v0[*v5] = v9;

  v11 = [*&v0[v6] centerYAnchor];
  v12 = [v0 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-v2];

  v14 = *&v0[*v4];
  *&v0[*v4] = v13;

  v15 = [*&v0[v6] centerXAnchor];
  v16 = [v0 leftAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:v2];

  v18 = *&v0[*v3];
  *&v0[*v3] = v17;

  v19 = [*&v0[v6] centerXAnchor];
  v20 = [v0 rightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-v2];

  v22 = *&v0[*v31];
  *&v0[*v31] = v21;

  v23 = [*&v0[v6] centerXAnchor];
  v24 = [v0 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  v26 = *&v0[*v32];
  *&v0[*v32] = v25;

  v27 = [*&v0[v6] centerYAnchor];
  v28 = [v0 centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  v30 = *&v0[*v33];
  *&v0[*v33] = v29;
}

id sub_1000DDC34()
{

  StateValue.wrappedValue.getter();

  sub_1000DC798(v1);

  StateValue.wrappedValue.getter();

  return sub_1000DC984(v1);
}

void sub_1000DDCBC(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = &a1[qword_1004A8038];
  *v5 = a3;
  v5[8] = 0;
  v6 = qword_1004A8030;
  v7 = *&a1[qword_1004A8030];
  v9 = a1;
  sub_100074C1C(a3);
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  [*&a1[v6] sizeToFit];
}

void sub_1000DDD78()
{
  v1 = *(v0 + qword_1004A8030);
  [v1 frame];
  CGRectGetWidth(v4);
  v2 = [v1 font];
  if (v2)
  {
    v3 = v2;
    [v2 capHeight];
  }

  else
  {
    __break(1u);
  }
}

id sub_1000DDE40(double a1, double a2)
{
  v4 = [objc_allocWithZone(UIBezierPath) init];
  v16 = a2 + 0.0;
  [v4 moveToPoint:{a1 + 0.0, a2 + 0.0}];
  v15 = a2 + 0.03;
  v17 = a2 + 0.1;
  [v4 addCurveToPoint:a1 + 1.11 controlPoint1:? controlPoint2:?];
  v14 = a2 + 0.13;
  [v4 addLineToPoint:a1 + 2.22];
  v13 = a2 + 0.65;
  [v4 addLineToPoint:a1 + 4.25];
  v5 = a2 + 1.86;
  [v4 addLineToPoint:{a1 + 6.03, a2 + 1.86}];
  v6 = a2 + 3.94;
  [v4 addLineToPoint:{a1 + 7.89, a2 + 3.94}];
  v7 = a2 + 6.19;
  [v4 addLineToPoint:{a1 + 9.57, a2 + 6.19}];
  v8 = a2 + 8.2;
  [v4 addLineToPoint:{a1 + 11.05, a2 + 8.2}];
  v9 = a2 + 10.19;
  [v4 addLineToPoint:{a1 + 12.55, a2 + 10.19}];
  v10 = a2 + 12.0;
  v11 = a2 + 11.4;
  [v4 addCurveToPoint:a1 + 15.0 controlPoint1:v10 controlPoint2:{a1 + 13.6, v11, a1 + 14.3, v10}];
  [v4 addCurveToPoint:a1 + 17.45 controlPoint1:v9 controlPoint2:{a1 + 15.8, v10, a1 + 16.2, v11}];
  [v4 addLineToPoint:{a1 + 18.95, v8}];
  [v4 addLineToPoint:{a1 + 20.43, v7}];
  [v4 addLineToPoint:{a1 + 22.11, v6}];
  [v4 addLineToPoint:{a1 + 23.97, v5}];
  [v4 addLineToPoint:{a1 + 25.75, v13}];
  [v4 addLineToPoint:{a1 + 27.78, v14}];
  [v4 addLineToPoint:{a1 + 28.89, v15}];
  [v4 addCurveToPoint:a1 + 30.0 controlPoint1:v16 controlPoint2:{a1 + 29.0, v17, a1 + 29.3, v16}];
  [v4 setLineJoinStyle:0];
  [v4 setMiterLimit:0.0];
  return v4;
}

uint64_t sub_1000DE1F8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  if (a1)
  {
    *(v16 + 24) = a2;
    *(v16 + 32) = a3 & 1;
    v27 = sub_1000DF5D4;
    v28 = v16;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v17 = &unk_10046D4E8;
  }

  else
  {
    v27 = sub_1000DF594;
    v28 = v16;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v17 = &unk_10046D498;
  }

  v25 = sub_100041180;
  v26 = v17;
  v18 = _Block_copy(&aBlock);
  v19 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v22);
}

void sub_1000DE514(uint64_t a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    [v2 updateText:a1];
    sub_1000DDD78();
    v5 = v4;
    v7 = v6;
    v8 = *&v2[qword_1004A8050];
    v9 = v6 * 0.5;
    v10 = objc_opt_self();
    v11 = v8;
    v12 = [v10 bezierPathWithRoundedRect:-1 byRoundingCorners:0.0 cornerRadii:{0.0, v5, v7, v9, v9}];
    v13 = [v12 CGPath];

    [v11 setPath:v13];
    v14 = objc_opt_self();
    [v14 begin];
    [v14 setDisableActions:1];
    v15 = *&v3[qword_1004A8048];
    sub_1000DDD78();
    v17 = v16;
    sub_1000DDD78();
    [v15 setPosition:{v17, v18 * 0.5}];

    [v14 commit];
  }

  v19 = *(**&v3[qword_1004A80A8] + 144);

  v19(&v37, v20);

  if ((v37 & 0x1000000) == 0)
  {
    v21 = *(**&v3[qword_1004A80B0] + 144);

    v21(&v37, v22);

    v23 = v37;
    sub_10001B360(v37);
    if (v23 != 0x8000000000000018)
    {
      v24 = qword_1004A80A0;
      v25 = *&v3[qword_1004A80A0];
      if (v25)
      {
        [v25 invalidate];
      }

      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = v3;
      v41 = sub_1000DF600;
      v42 = v27;
      v37 = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_1000508F8;
      v40 = &unk_10046D538;
      v28 = _Block_copy(&v37);
      v29 = v3;

      v30 = [v26 scheduledTimerWithTimeInterval:0 repeats:v28 block:1.0];
      _Block_release(v28);
      v31 = *&v3[v24];
      *&v3[v24] = v30;

      if ((v29[qword_1004A8098] & 1) == 0)
      {
        v32 = swift_allocObject();
        *(v32 + 16) = v29;
        v33 = objc_allocWithZone(UIViewPropertyAnimator);
        v41 = sub_1000DF608;
        v42 = v32;
        v37 = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_100041180;
        v40 = &unk_10046D588;
        v34 = _Block_copy(&v37);
        v35 = v29;

        v36 = [v33 initWithDuration:v34 dampingRatio:0.4 animations:0.9];
        _Block_release(v34);
        [v36 setInterruptible:0];
        [v36 startAnimation];
      }
    }
  }
}

void sub_1000DE948(void *a1)
{
  if ((*(a1 + qword_1004A8098) & 1) == 0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    v3 = objc_allocWithZone(UIViewPropertyAnimator);
    v7[4] = sub_1000DFA8C;
    v7[5] = v2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100041180;
    v7[3] = &unk_10046D628;
    v4 = _Block_copy(v7);
    v5 = a1;

    v6 = [v3 initWithDuration:v4 dampingRatio:0.4 animations:0.9];
    _Block_release(v4);
    [v6 setInterruptible:0];
    [v6 startAnimation];
  }
}

uint64_t sub_1000DEA84(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  aBlock[4] = sub_1000DFA80;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046D5D8;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

id sub_1000DED08(char *a1, double a2, CGFloat a3)
{
  [a1 setAlpha:?];
  v5 = *&a1[qword_1004A8040];
  v6 = *&a1[qword_1004A8090 + 32];
  v7 = *&a1[qword_1004A8090 + 40];
  v12 = *&a1[qword_1004A8090 + 16];
  v13 = *&a1[qword_1004A8090];
  CGAffineTransformMakeScale(&t1, a3, a3);
  v8 = *&t1.a;
  v9 = *&t1.c;
  v10 = *&t1.tx;
  *&t1.a = v13;
  *&t1.c = v12;
  t1.tx = v6;
  t1.ty = v7;
  *&t2.a = v8;
  *&t2.c = v9;
  *&t2.tx = v10;
  CGAffineTransformConcat(&v14, &t1, &t2);
  t1 = v14;
  return [v5 setTransform:&t1];
}

uint64_t sub_1000DEE2C()
{
}

uint64_t sub_1000DEF2C(uint64_t a1)
{
}

uint64_t type metadata accessor for CalloutViewSpatial()
{
  result = qword_1004A80E8;
  if (!qword_1004A80E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DF180()
{
  v1 = *&v0[qword_1004A8030];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v4 = [v3 fontDescriptor];

  v5 = [v4 fontDescriptorWithSymbolicTraits:2];
  if (v5)
  {
    v6 = [v2 fontWithDescriptor:v5 size:0.0];

    [v1 setFont:v6];
    if ((v0[qword_1004A8038 + 8] & 1) == 0)
    {
      [v0 updateText:*&v0[qword_1004A8038]];
    }

    v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v8 = *&v0[qword_1004A8040];
    *&v0[qword_1004A8040] = v7;

    sub_1000DCFC8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000DF2E8()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTextAlignment:1];
  if (qword_1004A0780 != -1)
  {
    swift_once();
  }

  [v0 setTextColor:qword_1004D5308];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v3 = [v2 fontDescriptor];

  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = String._bridgeToObjectiveC()();
    [v0 setText:v6];

    [v0 setAdjustsFontSizeToFitWidth:1];
    [v0 setBaselineAdjustment:1];
    v7 = v0;
    [v7 sizeToFit];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000DF4CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DF50C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DF59C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000DF62C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DF68C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000DF6C4()
{
  v1 = *(v0 + 16);
  result = sub_1000DC984(*(v0 + 24));
  *(v1 + qword_1004A8098) = 0;
  return result;
}

void sub_1000DF6F8()
{
  v1 = v0;
  v2 = v0 + qword_1004A8038;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = qword_1004A8040;
  *(v1 + v3) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = qword_1004A8048;
  *(v1 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = qword_1004A8050;
  *(v1 + v5) = [objc_allocWithZone(CAShapeLayer) init];
  *(v1 + qword_1004A8060) = 0;
  *(v1 + qword_1004A8068) = 0;
  *(v1 + qword_1004A8070) = 0;
  *(v1 + qword_1004A8078) = 0;
  *(v1 + qword_1004A8080) = 0;
  *(v1 + qword_1004A8088) = 0;
  v6 = (v1 + qword_1004A8090);
  *v6 = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  *(v1 + qword_1004A8098) = 0;
  *(v1 + qword_1004A80A0) = 0;
  v7 = qword_1004A80A8;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  *(v1 + v7) = v11(KeyPath, v10);
  v12 = qword_1004A80B0;
  v13 = swift_getKeyPath();
  v14 = sub_10000F974(&unk_1004A2520);
  *(v1 + v12) = (*(v14 + 272))(v13, v10);
  v15 = qword_1004A80B8;
  v16 = sub_10000F974(&unk_1004A6950);
  v17 = swift_getKeyPath();
  *(v1 + v15) = (*(v16 + 272))(v17, v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_1000DFAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1000DFAD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 153))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DFAF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
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

  *(result + 153) = v3;
  return result;
}

id sub_1000DFB58()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4C78 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000DFBD8@<X0>(void *a1@<X8>)
{
  if (qword_1004A0220 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4C78;
  *a1 = qword_1004D4C78;

  return v2;
}

BOOL sub_1000DFC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12[0] = *(a1 + 128);
  *(v12 + 9) = *(a1 + 137);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14[0] = *(a2 + 128);
  *(v14 + 9) = *(a2 + 137);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1000DFD5C(v11, v13);
}

unint64_t sub_1000DFCE0(uint64_t a1)
{
  result = sub_1000DFD08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DFD08()
{
  result = qword_1004A82F0;
  if (!qword_1004A82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A82F0);
  }

  return result;
}

BOOL sub_1000DFD5C(float32x4_t *a1, float32x4_t *a2)
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

  if (a1[9].i8[0])
  {
    if ((a2[9].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[9].i8[0] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[6], a2[6]), vceqq_f32(a1[5], a2[5])), vandq_s8(vceqq_f32(a1[7], a2[7]), vceqq_f32(a1[8], a2[8])))) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = a2[9].i8[8];
  if ((a1[9].i8[8] & 1) == 0)
  {
    if (a1[9].f32[1] != a2[9].f32[1])
    {
      v2 = 1;
    }

    return (v2 & 1) == 0;
  }

  return (a2[9].i8[8] & 1) != 0;
}

uint64_t sub_1000DFED0()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4C80 = result;
  *algn_1004D4C88 = v1;
  qword_1004D4C90 = v2;
  return result;
}

uint64_t sub_1000DFF24()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4C98 = result;
  unk_1004D4CA0 = v1;
  qword_1004D4CA8 = v2;
  return result;
}

id sub_1000DFF84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logPersonHeight];
  *a2 = result;
  return result;
}

uint64_t sub_1000DFFCC()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4CB0 = result;
  *algn_1004D4CB8 = v1;
  qword_1004D4CC0 = v2;
  return result;
}

uint64_t sub_1000E0024()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4CC8 = result;
  unk_1004D4CD0 = v1;
  qword_1004D4CD8 = v2;
  return result;
}

uint64_t sub_1000E0074()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4CE0 = result;
  *algn_1004D4CE8 = v1;
  qword_1004D4CF0 = v2;
  return result;
}

uint64_t sub_1000E00CC()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4CF8 = result;
  unk_1004D4D00 = v1;
  qword_1004D4D08 = v2;
  return result;
}

uint64_t sub_1000E0124()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4D10 = result;
  *algn_1004D4D18 = v1;
  qword_1004D4D20 = v2;
  return result;
}

uint64_t sub_1000E017C()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4D28 = result;
  unk_1004D4D30 = v1;
  qword_1004D4D38 = v2;
  return result;
}

uint64_t sub_1000E01CC()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4D40 = result;
  *algn_1004D4D48 = v1;
  qword_1004D4D50 = v2;
  return result;
}

uint64_t sub_1000E0224()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4D58 = result;
  unk_1004D4D60 = v1;
  qword_1004D4D68 = v2;
  return result;
}

uint64_t sub_1000E027C()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4D70 = result;
  *algn_1004D4D78 = v1;
  qword_1004D4D80 = v2;
  return result;
}

uint64_t sub_1000E02D4()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4D88 = result;
  unk_1004D4D90 = v1;
  qword_1004D4D98 = v2;
  return result;
}

uint64_t sub_1000E032C()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4DA0 = result;
  *algn_1004D4DA8 = v1;
  qword_1004D4DB0 = v2;
  return result;
}

uint64_t sub_1000E0384()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4DB8 = result;
  unk_1004D4DC0 = v1;
  qword_1004D4DC8 = v2;
  return result;
}

uint64_t sub_1000E03DC()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4DD0 = result;
  *algn_1004D4DD8 = v1;
  qword_1004D4DE0 = v2;
  return result;
}

uint64_t sub_1000E0428()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4DE8 = result;
  unk_1004D4DF0 = v1;
  qword_1004D4DF8 = v2;
  return result;
}

id sub_1000E047C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logLabel];
  *a2 = result;
  return result;
}

uint64_t sub_1000E04C4()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4E00 = result;
  *algn_1004D4E08 = v1;
  qword_1004D4E10 = v2;
  return result;
}

id sub_1000E051C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logUIAction];
  *a2 = result;
  return result;
}

id sub_1000E0570@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logARSession];
  *a2 = result;
  return result;
}

id sub_1000E05C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logMeasureObject];
  *a2 = result;
  return result;
}

uint64_t sub_1000E060C()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4E18 = result;
  unk_1004D4E20 = v1;
  qword_1004D4E28 = v2;
  return result;
}

id sub_1000E0670@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logEdgeDetection];
  *a2 = result;
  return result;
}

id sub_1000E06C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logWorldRectangle];
  *a2 = result;
  return result;
}

uint64_t sub_1000E070C()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4E30 = result;
  *algn_1004D4E38 = v1;
  qword_1004D4E40 = v2;
  return result;
}

uint64_t sub_1000E0760()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4E48 = result;
  unk_1004D4E50 = v1;
  qword_1004D4E58 = v2;
  return result;
}

id sub_1000E07B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logShaders];
  *a2 = result;
  return result;
}

id sub_1000E080C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logPerf];
  *a2 = result;
  return result;
}

id sub_1000E0860@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logUIContext];
  *a2 = result;
  return result;
}

uint64_t sub_1000E08A8()
{
  swift_getKeyPath();
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4E60 = result;
  *algn_1004D4E68 = v1;
  qword_1004D4E70 = v2;
  return result;
}

id sub_1000E090C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logMisc];
  *a2 = result;
  return result;
}

id sub_1000E0960@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logApplicationState];
  *a2 = result;
  return result;
}

id sub_1000E09B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logARSessionRecording];
  *a2 = result;
  return result;
}

id sub_1000E0A08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logARSessionReplay];
  *a2 = result;
  return result;
}

id sub_1000E0A5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logHapticFeedback];
  *a2 = result;
  return result;
}

id sub_1000E0AB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logPlaneSelection];
  *a2 = result;
  return result;
}

id sub_1000E0B04@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logMotionUpdates];
  *a2 = result;
  return result;
}

id sub_1000E0B58@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logComputerVision];
  *a2 = result;
  return result;
}

uint64_t sub_1000E0BA0()
{
  result = Log.init(category:enabledInDebugKey:)();
  qword_1004D4E78 = result;
  unk_1004D4E80 = v1;
  qword_1004D4E88 = v2;
  return result;
}

id sub_1000E0BF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logCoaching];
  *a2 = result;
  return result;
}

id sub_1000E0C4C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logLightEstimation];
  *a2 = result;
  return result;
}

id sub_1000E0CA0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 logEdgeSnapping];
  *a2 = result;
  return result;
}

id sub_1000E0CE8()
{
  v1 = OBJC_IVAR____TtC7Measure15SessionRecorder____lazy_storage___eventRecorder;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure15SessionRecorder____lazy_storage___eventRecorder);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure15SessionRecorder____lazy_storage___eventRecorder);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for EventsRecorder()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000E0D5C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7Measure15SessionRecorder_state];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC7Measure15SessionRecorder____lazy_storage___eventRecorder] = 0;
  v1[OBJC_IVAR____TtC7Measure15SessionRecorder_recordReplayOption] = 5;
  *&v1[OBJC_IVAR____TtC7Measure15SessionRecorder_screenRecorder] = 0;
  v5 = &v1[OBJC_IVAR____TtC7Measure15SessionRecorder_stopCompletion];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC7Measure15SessionRecorder_onStopped];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC7Measure15SessionRecorder_recordFilePath];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC7Measure15SessionRecorder_target] = a1;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_1000E0E18(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v39 = type metadata accessor for URL();
  v12 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v6 + OBJC_IVAR____TtC7Measure15SessionRecorder_recordFilePath);
  *v15 = a2;
  v15[1] = a3;

  v41 = v6;
  v42 = OBJC_IVAR____TtC7Measure15SessionRecorder_recordReplayOption;
  *(v6 + OBJC_IVAR____TtC7Measure15SessionRecorder_recordReplayOption) = a4;
  v16 = (v6 + OBJC_IVAR____TtC7Measure15SessionRecorder_onStopped);
  swift_beginAccess();
  v17 = *v16;
  *v16 = a5;
  v16[1] = a6;
  sub_100038EBC(a5);
  sub_1000223C4(v17);
  v18 = a2;
  v19 = a3;
  URL.init(fileURLWithPath:)();
  v20 = objc_allocWithZone(ARRecordingConfiguration);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  (*(v12 + 8))(v14, v39);
  v24 = [v20 initWithBaseConfiguration:v40 fileURL:v23];

  v25 = [v24 recordingTechnique];
  if (qword_1004A0270 != -1)
  {
    swift_once();
  }

  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  aBlock._countAndFlagsBits = 0xD00000000000002FLL;
  aBlock._object = 0x8000000100406330;
  v26._countAndFlagsBits = v18;
  v26._object = v19;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 39;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  Log.debug(_:isPrivate:)(aBlock, 0);

  [v25 setShouldSaveVideoInPhotosLibrary:0];
  [v25 setExpectCustomData:1];
  [v24 startRecording];
  v28 = v41;
  v29 = sub_1000E0CE8();
  *&v29[qword_1004A4460] = v25;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_100071910();
  v29[qword_1004A4448] = 1;

  v30 = (v28 + OBJC_IVAR____TtC7Measure15SessionRecorder_state);
  v31 = *(v28 + OBJC_IVAR____TtC7Measure15SessionRecorder_state);
  *v30 = v24;
  v30[1] = v25;
  swift_unknownObjectRetain();
  v32 = v24;
  sub_1000A6EB0(v31);
  if (*(v28 + v42) == 2)
  {
    v33 = [objc_allocWithZone(ARScreenRecordingLocal) init];
    v34 = *(v28 + OBJC_IVAR____TtC7Measure15SessionRecorder_screenRecorder);
    *(v28 + OBJC_IVAR____TtC7Measure15SessionRecorder_screenRecorder) = v33;
    v35 = v33;

    [v35 setSaveInPhotosLibrary:1];
    v46 = sub_1000E1244;
    v47 = 0;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v44 = sub_1000E1378;
    v45 = &unk_10046D948;
    v36 = _Block_copy(&aBlock);
    [v35 startWithHandler:v36];
    swift_unknownObjectRelease();
    _Block_release(v36);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v32;
}

uint64_t sub_1000E1244(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_1004A0270 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(38);
    v1._object = 0x8000000100406360;
    v1._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v1);
    sub_10000F974(&qword_1004A46B8);
    _print_unlocked<A, B>(_:_:)();
    v2._countAndFlagsBits = 39;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    Log.error(_:isPrivate:)(v3, 0);
  }

  return result;
}

void sub_1000E1378(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000E13E4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC7Measure15SessionRecorder_state;
  if (*(v1 + OBJC_IVAR____TtC7Measure15SessionRecorder_state))
  {
    v8 = [swift_unknownObjectRetain() outputFileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = objc_allocWithZone(ARRecordingConfiguration);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    v13 = [v9 initWithBaseConfiguration:a1 fileURL:v12];

    v14 = [v13 recordingTechnique];
    [v13 startRecording];
    [v14 setShouldSaveVideoInPhotosLibrary:0];
    [v14 setExpectCustomData:1];
    if (qword_1004A0270 != -1)
    {
      swift_once();
    }

    v15._object = 0x80000001004063E0;
    v15._countAndFlagsBits = 0xD000000000000019;
    Log.default(_:isPrivate:)(v15, 0);
    swift_unknownObjectRelease();
    v16 = *v7;
    *v7 = v13;
    *(v7 + 8) = v14;
    v17 = v13;
    sub_1000A6EB0(v16);
    return v17;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000E166C(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v4 = v2 + OBJC_IVAR____TtC7Measure15SessionRecorder_state;
  v5 = *(v2 + OBJC_IVAR____TtC7Measure15SessionRecorder_state);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = (v3 + OBJC_IVAR____TtC7Measure15SessionRecorder_stopCompletion);
    v8 = *(v3 + OBJC_IVAR____TtC7Measure15SessionRecorder_stopCompletion);
    *v7 = a1;
    v7[1] = a2;
    sub_1000E206C(v5);
    sub_100038EBC(a1);
    sub_1000223C4(v8);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v6;
    v12[4] = a1;
    v12[5] = a2;
    v25 = sub_1000E2134;
    v26 = v12;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000E1378;
    v24 = &unk_10046D920;
    v13 = _Block_copy(&aBlock);
    sub_100038EBC(a1);
    swift_unknownObjectRetain();

    [v5 finishRecordingWithHandler:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }

  else
  {
    if (a1)
    {
      a1();
    }

    v14 = (v3 + OBJC_IVAR____TtC7Measure15SessionRecorder_onStopped);
    swift_beginAccess();
    v15 = *v14;
    if (*v14)
    {

      v15(v16);
      sub_1000223C4(v15);
    }
  }

  v17 = OBJC_IVAR____TtC7Measure15SessionRecorder_screenRecorder;
  v18 = *(v3 + OBJC_IVAR____TtC7Measure15SessionRecorder_screenRecorder);
  if (v18)
  {
    v25 = sub_1000E1DF8;
    v26 = 0;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000E1378;
    v24 = &unk_10046D8A8;
    v19 = _Block_copy(&aBlock);
    [v18 stopWithHandler:v19];
    _Block_release(v19);
    v20 = *(v3 + v17);
    *(v3 + v17) = 0;
  }
}

void sub_1000E18E4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v42 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42[1] = a5;
    v43 = a4;
    v44 = Strong;
    v17 = sub_1000E0CE8();
    if (*&v17[qword_1004A4460])
    {
      v18 = [swift_unknownObjectRetain() outputFileURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = URL.path.getter();
      v21 = v20;
      (*(v10 + 8))(v15, v9);
      v45 = v19;
      v46 = v21;

      v22._countAndFlagsBits = 1735355438;
      v22._object = 0xE400000000000000;
      String.append(_:)(v22);

      sub_100071A4C(v45, v46);
      swift_unknownObjectRelease();
    }

    v17[qword_1004A4448] = 0;

    v23 = [a3 outputFileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = URL.path.getter();
    v26 = v25;
    v27 = *(v10 + 8);
    v27(v15, v9);
    v45 = v24;
    v46 = v26;

    v28._countAndFlagsBits = 1852011310;
    v28._object = 0xE400000000000000;
    String.append(_:)(v28);

    URL.init(fileURLWithPath:)();

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    if (qword_1004D4AC8)
    {
      v29 = *(qword_1004D4AC8 + 64);
      sub_10017EC30(v13);

      if (a1)
      {
        swift_getErrorValue();
        swift_errorRetain();
        v30 = Error.localizedDescription.getter();
        sub_100053D0C(v30, v31, 0xD000000000000012, 0x80000001004062E0);
      }

      else
      {
        if ([a3 shouldSaveVideoInPhotosLibrary])
        {
          v45 = 0;
          v46 = 0xE000000000000000;
          _StringGuts.grow(_:)(45);

          v45 = 0xD00000000000002BLL;
          v46 = 0x80000001004062B0;
        }

        else
        {
          v45 = 0;
          v46 = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          v45 = 0x6976206465766153;
          v46 = 0xEF206F74206F6564;
        }

        v32 = [a3 outputFileURL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = URL.path.getter();
        v35 = v34;
        v27(v15, v9);
        v36._countAndFlagsBits = v33;
        v36._object = v35;
        String.append(_:)(v36);

        sub_100053D0C(v45, v46, 0xD000000000000012, 0x8000000100406290);

        if (v43)
        {
          v43(v37);
        }

        v38 = v44;
        v39 = &v44[OBJC_IVAR____TtC7Measure15SessionRecorder_onStopped];
        swift_beginAccess();
        v40 = *v39;
        if (!*v39)
        {
          v27(v13, v9);
          swift_endAccess();

          return;
        }

        swift_endAccess();

        v40(v41);
        sub_1000223C4(v40);
      }

      v27(v13, v9);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000E1DF8(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_1004A0270 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(37);
    v1._object = 0x8000000100406300;
    v1._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v1);
    sub_10000F974(&qword_1004A46B8);
    _print_unlocked<A, B>(_:_:)();
    v2._countAndFlagsBits = 39;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    Log.error(_:isPrivate:)(v3, 0);
  }

  return result;
}

uint64_t sub_1000E202C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E2054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000E206C(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1000E20AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E20E4()
{

  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E2150()
{
  memcpy(v2, (v0 + 32), sizeof(v2));
  sub_100013C4C(v2);
  return swift_deallocClassInstance();
}

void sub_1000E21E8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = qword_1004A8410;
  KeyPath = swift_getKeyPath();
  v4 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v4 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = qword_1004A8418;
  sub_10000F974(&qword_1004A8758);
  swift_getKeyPath();
  *(v1 + v7) = MutableStateValue.__allocating_init(_:_:)();
  v8 = qword_1004A8420;
  sub_10000F974(&qword_1004A8760);
  swift_getKeyPath();
  *(v1 + v8) = MutableStateValue.__allocating_init(_:_:)();
  v9 = qword_1004A8428;
  sub_10000F974(&qword_1004A8768);
  swift_getKeyPath();
  *(v1 + v9) = MutableStateValue.__allocating_init(_:_:)();
  v10 = qword_1004A8430;
  v11 = swift_getKeyPath();
  v12 = sub_10000F974(&qword_1004A8770);
  *(v1 + v10) = (*(v12 + 272))(v11, v5);
  *(v1 + qword_1004A8468) = 0;
  *(v1 + qword_1004A8478) = 0;
  v13 = v1 + qword_1004A8480;
  sub_10000F974(&qword_1004A8778);
  swift_allocObject();
  v14 = Synchronized.init(wrappedValue:)();
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v13 + 16) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000E2458()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = *(**&v2[qword_1004A8420] + 400);

      v4 = v3(v7);
      v6 = *v5;
      *v5 = 3;
      sub_1000E5770(v6);
      v4(v7, 0);
    }
  }
}

void sub_1000E254C()
{
  if (qword_1004A02D0 != -1)
  {
    swift_once();
  }

  v1._countAndFlagsBits = 0x676E6970706F7453;
  v1._object = 0xE800000000000000;
  Log.default(_:isPrivate:)(v1, 0);
  v2 = qword_1004A8478;
  v3 = *(v0 + qword_1004A8478);
  if (v3)
  {
    [v3 invalidate];
    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
}

void sub_1000E25F8()
{
  v1 = v0;
  if (qword_1004A02D0 != -1)
  {
    swift_once();
  }

  v2._countAndFlagsBits = 0x676E697472617453;
  v2._object = 0xE800000000000000;
  Log.default(_:isPrivate:)(v2, 0);
  v3 = v0 + qword_1004A8480;
  v11 = 0;
  LOBYTE(v12) = 1;

  Synchronized.wrappedValue.setter();

  *(v3 + 16) = 0;
  *v3 = CACurrentMediaTime();
  v4 = qword_1004A8478;
  v5 = *(v0 + qword_1004A8478);
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = sub_1000E57B8;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000508F8;
  v14 = &unk_10046DA70;
  v8 = _Block_copy(&v11);

  v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:1.0];
  _Block_release(v8);
  v10 = *(v1 + v4);
  *(v1 + v4) = v9;
}

id sub_1000E29A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainLoop.InternalObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E2A5C()
{
}

uint64_t sub_1000E2B64(uint64_t a1)
{
}

uint64_t type metadata accessor for MainLoop()
{
  result = qword_1004A8510;
  if (!qword_1004A8510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E2FA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ARCamera.TrackingState.Reason();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ARCamera.TrackingState();
  __chkstk_darwin(v8 - 8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v43 - v12;
  ARCamera.trackingState.getter();
  v14 = qword_1004A8468;
  *(v1 + qword_1004A8468) = 0;
  ARCamera.trackingState.getter();
  v15 = (*(v5 + 48))(v10, 2, v4);
  if (!v15)
  {
    (*(v5 + 32))(v7, v10, v4);
    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v18._countAndFlagsBits = 0xD000000000000021;
    v18._object = 0x8000000100406630;
    String.append(_:)(v18);
    _print_unlocked<A, B>(_:_:)();
    Log.error(_:isPrivate:)(v44, 0);

    (*(v5 + 8))(v7, v4);
    goto LABEL_15;
  }

  if (v15 == 1)
  {
    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v16 = "t marked interruptionEnded";
    v17 = 0xD00000000000001CLL;
LABEL_14:
    v22 = v16 | 0x8000000000000000;
    Log.error(_:isPrivate:)(*&v17, 0);
    goto LABEL_15;
  }

  v19 = [a1 currentFrame];
  if (!v19 || (v20 = v19, v21 = ARFrame.isVIOTrackingUnacceptable()(), v20, v21))
  {
    sub_10002627C(v13);
    (*(v5 + 104))(v13, enum case for ARCamera.TrackingState.Reason.insufficientFeatures(_:), v4);
    (*(v5 + 56))(v13, 0, 2, v4);
    *(v2 + v14) = 1;
    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v16 = "limited, reason: ";
    v17 = 0xD00000000000003ALL;
    goto LABEL_14;
  }

  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v29._object = 0x80000001004066A0;
  v29._countAndFlagsBits = 0xD000000000000016;
  Log.default(_:isPrivate:)(v29, 0);
  *(*(v2 + qword_1004A8460) + 24) = 0;
  type metadata accessor for WorldAnchor();
  static WorldAnchor.resetPlanesConfidence()();
  v30 = *(**(v2 + qword_1004A8410) + 144);

  v30(&v44, v31);

  if ((v44._countAndFlagsBits & 0x1000000) == 0)
  {
    v32 = *(v2 + qword_1004A8440);
    result = swift_beginAccess();
    v33 = *(v32 + 64);
    if (v33 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v34 = result;
      if (result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
LABEL_23:
        if (v34 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v34; ++i)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v36 = *(v33 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(v36 + 24);
            ObjectType = swift_getObjectType();
            (*(v37 + 120))(0, ObjectType, v37);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }

  v39 = *(v2 + qword_1004A8448);
  LOBYTE(v44._countAndFlagsBits) = 1;

  Synchronized.wrappedValue.setter();

  v40 = *SnapType.all.unsafeMutableAddressor();
  v41 = *(**(v2 + qword_1004A8418) + 144);

  v41(v43, v42);

  memcpy(&v44, v43, 0x200uLL);
  if (*(v39 + 544) == 3)
  {
    LOBYTE(v43[0]) = sub_1000F7A14(v40, &v44) & 1;

    Synchronized.wrappedValue.setter();
    sub_100013C4C(&v44);
  }

  else
  {
    sub_100013C4C(&v44);
  }

LABEL_15:
  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  sub_1001245E4(v13);
  v23 = *(**(v2 + qword_1004A8420) + 400);

  v24 = v23(v43);
  v26 = v25;
  v27 = type metadata accessor for SessionState();
  sub_1000E570C(v13, v26 + *(v27 + 20));
  v24(v43, 0);

  return sub_10002627C(v13);
}

id sub_1000E377C(void *a1, void *a2)
{
  v3 = v2;
  ariadne_trace(_:_:_:_:_:)();
  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(29);

  _[0]._countAndFlagsBits = 0xD00000000000001BLL;
  _[0]._object = 0x80000001004065C0;
  v6 = [a2 anchors];
  sub_100018630(0, &unk_1004A8730);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __dst[0] = v8;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  Log.debug(_:isPrivate:)(_[0], 0);

  result = sub_1000E3EB4(a2);
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (!qword_1004D4AC8)
  {
    goto LABEL_30;
  }

  v11 = *(qword_1004D4AC8 + 32);
  if (v11)
  {
    swift_retain_n();
    sub_100050E90(a2);
  }

  if (*(v3 + qword_1004A8468) == 1 && !ARFrame.isVIOTrackingUnacceptable()())
  {
    v12 = [a2 camera];
    sub_1000E2FA4(a1);
  }

  v13 = qword_1004A8428;
  v14 = *(**(v3 + qword_1004A8428) + 144);

  v14(_, v15);

  if (!LOBYTE(_[0]._countAndFlagsBits) || (v16 = *(**(v3 + v13) + 144), v17 = , v16(_, v17), , LOBYTE(_[0]._countAndFlagsBits) == 2) || (v18 = *(**(v3 + v13) + 144), v19 = , v18(_, v19), , LOBYTE(_[0]._countAndFlagsBits) == 4) || (v20 = *(**(v3 + v13) + 144), v21 = , v20(_, v21), , LOBYTE(_[0]._countAndFlagsBits) == 3))
  {
    v22._countAndFlagsBits = 0xD00000000000002ALL;
    v22._object = 0x80000001004065E0;
    Log.default(_:isPrivate:)(v22, 0);
    v23 = *(v3 + v13);
    LOBYTE(_[0]._countAndFlagsBits) = 1;
    v24 = *(*v23 + 392);

    v24(_);
  }

  v25.super.isa = a2;
  sub_1000F4E00(v25);
  v26 = qword_1004A8418;
  v27 = *(**(v3 + qword_1004A8418) + 144);

  v27(_, v28);

  memcpy(__dst, _, sizeof(__dst));
  memcpy(v46, &__dst[3], sizeof(v46));
  v29 = a2;
  [v29 timestamp];
  v31 = v30;
  sub_10000F974(&qword_1004AC2D0);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v33 = v29;
  *(v32 + 24) = NSObject.hashValue.getter();

  sub_100013C4C(__dst);
  result = [v33 camera];
  if (qword_1004A0850 != -1)
  {
    result = swift_once();
  }

  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    goto LABEL_31;
  }

  v34 = __dst[0];
  SIMD2<>.init(_:)();
  effectiveStatusBarOrientation.unsafeMutableAddressor();
  ComputedCameraProperties.init(camera:viewportSize:orientation:)();
  result = memcpy(&v46[8], __src, 0x1E0uLL);
  v35 = __CFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v37 = *(v3 + qword_1004A8438);
  _[0]._countAndFlagsBits = v36;
  _[0]._object = v31;
  _[1]._countAndFlagsBits = v32;
  memcpy(&_[1]._object, v46, 0x1E8uLL);
  v37(_);
  v44[0] = v36;
  v44[1] = v31;
  v44[2] = v32;
  memcpy(&v44[3], v46, 0x1E8uLL);
  v38 = *(v3 + v26);
  memcpy(v45, v44, sizeof(v45));
  v39 = *(*v38 + 392);

  sub_10004B20C(v44, &v43);
  v39(v45);

  v45[0] = v36;
  v45[1] = v31;
  v45[2] = v32;
  memcpy(&v45[3], v46, 0x1E8uLL);
  sub_100013C4C(v45);
  if (v11)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;

      if (v41 == v33)
      {
        v42 = CACurrentMediaTime();
        sub_100050960(v42);
      }
    }
  }

  return ariadne_trace(_:_:_:_:_:)();
}

uint64_t sub_1000E3EB4(void *a1)
{
  v3 = v1 + qword_1004A8480;
  if (*(v1 + qword_1004A8480 + 16) == 1)
  {

    Synchronized.wrappedValue.getter();

    [a1 timestamp];
    if (qword_1004A02D0 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(53);
    v4._object = 0x80000001004066C0;
    v4._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v4);
    v5 = [a1 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 0x7420686369687720;
    v10._object = 0xEC000000206B6F6FLL;
    String.append(_:)(v10);
    Double.write<A>(to:)();
    v11._countAndFlagsBits = 0x73646E6F63657320;
    v11._object = 0xE800000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    Log.error(_:isPrivate:)(v12, 0);

    *(v3 + 16) = 0;

    [a1 timestamp];
  }

  else
  {

    [a1 timestamp];
  }

  Synchronized.wrappedValue.setter();
}

uint64_t sub_1000E4310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000E4358(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1000E43A8()
{
  v1 = v0 + qword_1004A8480;
  if ((*(v0 + qword_1004A8480 + 16) & 1) == 0)
  {

    Synchronized.wrappedValue.getter();

    if (v21)
    {
      if (qword_1004A02D0 != -1)
      {
        swift_once();
      }

      _StringGuts.grow(_:)(88);
      v2._countAndFlagsBits = 0xD000000000000029;
      v2._object = 0x8000000100406700;
      String.append(_:)(v2);
      v3 = *(*(v0 + qword_1004A8460) + 16);
      v4 = [v3 description];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8._countAndFlagsBits = v5;
      v8._object = v7;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 0x20726574666120;
      v9._object = 0xE700000000000000;
      String.append(_:)(v9);
    }

    else
    {
      if (CACurrentMediaTime() - v20 <= 1.0)
      {
        return;
      }

      if (qword_1004A02D0 != -1)
      {
        swift_once();
      }

      _StringGuts.grow(_:)(84);
      v10._countAndFlagsBits = 0xD000000000000025;
      v10._object = 0x8000000100406760;
      String.append(_:)(v10);
      v11 = *(*(v0 + qword_1004A8460) + 16);
      v12 = [v11 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

      v17._countAndFlagsBits = 0x20726574666120;
      v17._object = 0xE700000000000000;
      String.append(_:)(v17);
    }

    Double.write<A>(to:)();
    v18._object = 0x8000000100406730;
    v18._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    Log.error(_:isPrivate:)(v19, 0);

    *(v1 + 16) = 1;
  }
}

void sub_1000E46B4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v20 = Strong;
    sub_1000E254C();
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v20 = v11;
    sub_1000E25F8();
LABEL_7:
    v13 = v20;

    return;
  }

  v20 = v8;
  if (a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_100018630(0, &qword_1004A3F00);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000E5858;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046DAC0;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000E5860(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_100031864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v20);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_1000E254C();
    }
  }
}

void sub_1000E4A74(unint64_t a1)
{
  v3 = *(**(v1 + qword_1004A8420) + 400);

  v4 = v3(v14);
  v6 = *v5;
  *v5 = a1;
  swift_errorRetain();
  sub_1000E5770(v6);
  v4(v14, 0);

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  v14[0]._countAndFlagsBits = 0;
  v14[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v14[0]._countAndFlagsBits = 0xD00000000000001CLL;
  v14[0]._object = 0x80000001004067B0;
  swift_getErrorValue();
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  Log.error(_:isPrivate:)(v14[0], 0);

  v8 = _convertErrorToNSError(_:)();
  v14[0]._countAndFlagsBits = v8;
  type metadata accessor for ARError(0);
  sub_1000E5860(&qword_1004A8740, type metadata accessor for ARError);
  _BridgedStoredNSError.code.getter();
  v9 = *(v1 + qword_1004A8428);
  if (v13 == 102)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  v12 = v10;
  v11 = *(*v9 + 392);

  v11(&v12);

  sub_1000E25F8();
}

void sub_1000E4CDC()
{
  v1 = *(**(v0 + qword_1004A8420) + 400);

  v2 = v1(v8);
  v4 = *v3;
  *v3 = 2;
  sub_1000E5770(v4);
  v2(v8, 0);

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  v5._object = 0x8000000100406790;
  v5._countAndFlagsBits = 0xD000000000000018;
  Log.error(_:isPrivate:)(v5, 0);
  v6 = *(v0 + qword_1004A8428);
  v8[0] = 0;
  v7 = *(*v6 + 392);

  v7(v8);

  sub_1000E254C();
}

uint64_t sub_1000E4E50(void *a1, Swift::OpaquePointer a2)
{
  ariadne_trace(_:_:_:_:_:)();
  v4 = [a1 currentFrame];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 worldTrackingState];
    if (v6)
    {
      v7 = v6;
      if (([v6 majorRelocalization] & 1) != 0 || objc_msgSend(v7, "minorRelocalization"))
      {
        type metadata accessor for WorldAnchor();
        static WorldAnchor.resetPlanesConfidence()();
        v8 = v7;
      }

      else
      {
        v8 = v5;
        v5 = v7;
      }
    }
  }

  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didUpdate(anchors:)(a2);

  v9 = [a1 currentFrame];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 camera];

    [v11 transform];
  }

  type metadata accessor for WorldAnchor();
  static WorldAnchor.didUpdate(anchors:camera:forceUpdate:)();

  return ariadne_trace(_:_:_:_:_:)();
}

uint64_t sub_1000E5044(uint64_t a1)
{
  v45 = type metadata accessor for ARPlaneAnchor.Classification();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didAdd(anchors:)(a1);

  type metadata accessor for WorldAnchor();
  static WorldAnchor.didAdd(anchors:)();
  if (qword_1004A0350 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    swift_beginAccess();
    v5 = *(v4 + 73);
    v42 = v4;
    v43 = a1 >> 62;
    if (v5)
    {
      break;
    }

    if (v43)
    {
      goto LABEL_55;
    }

    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      break;
    }

LABEL_5:
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();

      if (v11)
      {
        *(v42 + 73) = 1;
        goto LABEL_15;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_15;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  while (1)
  {
LABEL_15:
    v46 = _swiftEmptyArrayStorage;
    if (v43)
    {
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
LABEL_37:
        v42 = _swiftEmptyArrayStorage;
        goto LABEL_38;
      }
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_37;
      }
    }

    v14 = 0;
    v42 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v14;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v12 + 16))
          {
            goto LABEL_32;
          }

          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v15;
        if (v14 == v13)
        {
          goto LABEL_38;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v42 = v46;
    }

    while (v14 != v13);
LABEL_38:
    v18 = v42;
    if (v42 >> 62)
    {
      break;
    }

    a1 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
    }

LABEL_40:
    if (a1 >= 1)
    {
      v19 = 0;
      v40 = qword_1004A8430;
      v43 = v18 & 0xC000000000000001;
      v20 = (v2 + 88);
      v21 = enum case for ARPlaneAnchor.Classification.floor(_:);
      v39 = enum case for ARPlaneAnchor.Classification.ceiling(_:);
      v38 = (v2 + 8);
      while (1)
      {
        if (v43)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v18 + 8 * v19 + 32);
        }

        v29 = v28;
        v30 = v44;
        ARPlaneAnchor.classification.getter();
        v31 = (*v20)(v30, v45);
        if (v31 == v21)
        {
          v22 = *(**(v41 + v40) + 200);

          v24 = v22(v23);

          v25 = swift_allocObject();
          *(v25 + 16) = v29;
          v26 = *(*v24 + 280);
          v27 = v29;
          v26(sub_1000E56C4, v25);

          v18 = v42;
        }

        else
        {
          if (v31 != v39)
          {

            (*v38)(v44, v45);
            goto LABEL_44;
          }

          v32 = *(**(v41 + v40) + 200);

          v34 = v32(v33);

          v35 = swift_allocObject();
          *(v35 + 16) = v29;
          v36 = *(*v34 + 280);
          v27 = v29;
          v36(sub_1000E567C, v35);
          v18 = v42;
        }

LABEL_44:
        if (a1 == ++v19)
        {
        }
      }
    }

    __break(1u);
LABEL_55:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (a1)
  {
    goto LABEL_40;
  }
}

uint64_t sub_1000E5644()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000E567C(uint64_t a1)
{
  result = [*(v1 + 16) transform];
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  *(a1 + 128) = v7;
  *(a1 + 144) = 0;
  return result;
}

id sub_1000E56C4(uint64_t a1)
{
  result = [*(v1 + 16) transform];
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1000E570C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E5770(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_1000E5780()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000E57B8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1000E43A8();
}

uint64_t sub_1000E5804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E5820()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E5860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E58C4(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v2;
  v7[8] = *(a1 + 128);
  v8 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v3;
  v4 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v4;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return a2(v7);
}

uint64_t sub_1000E5928()
{
  v9 = sub_1000E7D64;
  v10 = v0;

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + 96) + 200);

  v3 = v1(v2);

  v7 = sub_1000E7D9C;
  v8 = v0;
  v4 = *(*v3 + 296);

  v4(sub_1000E7DA0, v6);

  StateValue.ifUpdated(_:)();
}

void sub_1000E5AC4(__int128 *a1)
{
  v2 = v1;
  v3 = a1[5];
  v4 = a1[7];
  v81 = a1[6];
  v82 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v77 = a1[2];
  v78 = v6;
  v8 = a1[3];
  v7 = a1[4];
  v9 = v7;
  v80 = a1[5];
  v79 = v7;
  v10 = *a1;
  v11 = *a1;
  v76 = a1[1];
  v75 = v10;
  v12 = a1[7];
  v90 = v81;
  v91 = v12;
  v86 = v77;
  v87 = v8;
  v88 = v9;
  v89 = v3;
  v83 = *(a1 + 128);
  v92 = *(a1 + 128);
  v84 = v11;
  v85 = v5;
  if (sub_10001376C(&v84) != 1)
  {
    if (v87)
    {
      sub_100013784(&v75, v70);
LABEL_16:
      v57 = *(v1 + 120);
      *(v1 + 120) = v75;

      return;
    }

    v16 = v86.n128_u32[0];
    v62 = v85.i32[1];
    v17 = v85.i32[0];
    v63 = v85;
    v60 = v86;
    sub_100013784(&v75, v70);
    v18 = v84;
    v19 = *((swift_isaMask & *v84) + 0x2A0);
    sub_100013784(&v75, v70);
    v71[6] = v81;
    v71[7] = v82;
    v72 = v83;
    v71[2] = v77;
    v71[3] = v78;
    v71[5] = v80;
    v71[4] = v79;
    v71[1] = v76;
    v71[0] = v75;
    sub_100013784(&v75, v70);
    sub_100013784(&v75, v70);
    v20 = sub_1000E7E0C(v71, v70);
    v19(v20);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    v21 = *((swift_isaMask & *v18) + 0x2A8);
    v73[3] = v78;
    v73[2] = v77;
    v73[0] = v75;
    v73[1] = v76;
    v74 = v83;
    v73[7] = v82;
    v73[6] = v81;
    v73[4] = v79;
    v73[5] = v80;
    v22 = sub_1000E7E0C(v73, v70);
    v21(v22);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    closestPointOnLine(lineP1:lineP2:point:)();
    v24 = vsubq_f32(v23, v63);
    v61 = __PAIR64__(v62, v17);
    *v23.f32 = vsub_f32(*v23.f32, v61);
    v25 = COERCE_FLOAT(vmulq_f32(v24, v24).i32[2]) + vaddv_f32(vmul_f32(*v23.f32, *v23.f32));
    v26 = sub_1000E7E0C(&v84, v70);
    v19(v26);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    v27 = sub_1000E7E0C(&v84, v70);
    v21(v27);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    closestPointOnLine(lineP1:lineP2:point:)();
    v58 = v28;
    sub_1000137F4(&v75);
    if (v25 < 0.0001)
    {
      v29 = vsub_f32(*v58.f32, __PAIR64__(v60.n128_u32[1], v16));
      v30 = vsubq_f32(v58, v60);
      if ((COERCE_FLOAT(vmulq_f32(v30, v30).i32[2]) + vaddv_f32(vmul_f32(v29, v29))) < 0.0001)
      {
        type metadata accessor for MeasureCamera();
        v31 = *(**(v1 + 80) + 144);

        v31(__src, v32);

        memcpy(__dst, __src, sizeof(__dst));
        sub_100013C4C(__dst);
        v33 = *(**(v1 + 80) + 144);

        v33(__src, v34);

        memcpy(v68, __src, sizeof(v68));
        sub_100013C4C(v68);
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v59 = v35;
        v36 = *(**(v1 + 80) + 144);

        v36(__src, v37);

        memcpy(v69, __src, sizeof(v69));
        sub_100013C4C(v69);
        v38 = *(**(v1 + 80) + 144);

        v38(__src, v39);

        memcpy(v70, __src, sizeof(v70));
        sub_100013C4C(v70);
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v41 = vsub_f32(v59, v40);
        v42 = vaddv_f32(vmul_f32(v41, v41));
        sub_1000137F4(&v75);
        if (v42 <= 900.0)
        {
LABEL_15:
          sub_1000137F4(&v75);
          goto LABEL_16;
        }

        v43 = sub_1000E7E0C(&v84, __src);
        v21(v43);
        sub_1000137F4(&v75);
        simd_float4x4.position.getter();
        v45 = vsub_f32(__PAIR64__(v60.n128_u32[1], v16), *v44.i8);
        v46 = vsub_f32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v44, v44, 8uLL));
        v47 = sub_1000E7E0C(&v84, __src);
        v21(v47);
        sub_1000137F4(&v75);
        simd_float4x4.position.getter();
        v49 = vsub_f32(v61, *v48.i8);
        *v48.i8 = vsub_f32(*&vextq_s8(v63, v63, 8uLL), *&vextq_s8(v48, v48, 8uLL));
        v50 = vmul_f32(v45, v45);
        v51 = vmul_f32(v49, v49);
        *v48.i8 = vadd_f32(vzip1_s32(vmul_f32(v46, v46), vmul_f32(*v48.i8, *v48.i8)), vadd_f32(vzip1_s32(v50, v51), vzip2_s32(v50, v51)));
        if (vcgt_f32(vdup_lane_s32(*v48.i8, 1), *v48.i8).u8[0])
        {
          v52 = sub_1000E7E0C(&v84, __src);
          v21(v52);
        }

        else
        {
          v53 = sub_1000E7E0C(&v84, __src);
          v19(v53);
        }

        sub_1000137F4(&v75);
        simd_float4x4.position.getter();
        v64 = v54;
        v55 = *((swift_isaMask & *v18) + 0x2E0);
        __src[6] = v81;
        __src[7] = v82;
        LOBYTE(__src[8]) = v83;
        __src[2] = v77;
        __src[3] = v78;
        __src[4] = v79;
        __src[5] = v80;
        __src[0] = v75;
        __src[1] = v76;
        v56 = sub_1000E7E0C(__src, v65);
        v55(v56, v60, v64);
      }
    }

    sub_1000137F4(&v75);
    goto LABEL_15;
  }

  v13 = *(v1 + 120);
  if (v13)
  {
    v14 = *((swift_isaMask & *v13) + 0x2E0);
    v15 = v13;
    v14(0, 0);

    v13 = *(v2 + 120);
  }

  *(v2 + 120) = 0;
}

void sub_1000E62A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x8000000000000010)
  {

    StateValue.wrappedValue.getter();

    v3 = v8;

    if (v9)
    {
      (*((swift_isaMask & *v9) + 0x2B0))();

      simd_float4x4.position.getter();
    }

    else
    {
      v4 = 0uLL;
    }

    v5 = v9 == 0;
    *(a2 + 128) = v4;
  }

  else
  {
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    v5 = 1;
  }

  *(a2 + 144) = v5;
}

uint64_t sub_1000E63A4()
{
  v1 = v0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A8950) + 272);

  *(v1 + 88) = v7(v6, v4);
  sub_10000F974(&qword_1004A8958);
  swift_getKeyPath();
  *(v1 + 96) = MutableStateBinding.__allocating_init(_:_:)();
  v8 = sub_10000F974(&qword_1004A2C60);
  v9 = swift_getKeyPath();
  *(v1 + 104) = (*(v8 + 272))(v9, v4);
  v10 = sub_10000F974(&qword_1004A11D8);
  v11 = swift_getKeyPath();
  *(v1 + 112) = (*(v10 + 272))(v11, v4);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  v12 = StateObserver.init(configuration:)();
  type metadata accessor for EdgeGuidesInstrument();
  swift_allocObject();

  sub_10000FFA8();
  *(v12 + 64) = v13;

  type metadata accessor for VerticalGuidesInstrument();
  v14 = swift_allocObject();
  *(v12 + 72) = sub_1000E7E68(v14);

  return v12;
}

void sub_1000E6664()
{
  v1 = v0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A8950) + 272);

  *(v1 + 88) = v7(v6, v4);
  sub_10000F974(&qword_1004A8958);
  swift_getKeyPath();
  *(v1 + 96) = MutableStateBinding.__allocating_init(_:_:)();
  v8 = sub_10000F974(&qword_1004A2C60);
  v9 = swift_getKeyPath();
  *(v1 + 104) = (*(v8 + 272))(v9, v4);
  v10 = sub_10000F974(&qword_1004A11D8);
  v11 = swift_getKeyPath();
  *(v1 + 112) = (*(v10 + 272))(v11, v4);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}