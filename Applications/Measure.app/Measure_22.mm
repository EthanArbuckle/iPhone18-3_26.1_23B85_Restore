uint64_t sub_1001D6DC4(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 216))();
  if (result)
  {
    v5 = result;
    v6 = *(result + 48);
    if (v6 <= 2)
    {
      if (*(result + 48))
      {
        v7 = 0xE800000000000000;
        if (v6 == 1)
        {
          v8 = 0x6465727265666E69;
        }

        else
        {
          v8 = 0x6B6361626C6C6166;
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x74694B7261;
      }
    }

    else if (*(result + 48) > 4u)
    {
      if (v6 == 5)
      {
        v7 = 0xE500000000000000;
        v8 = 0x6863746170;
      }

      else
      {
        v7 = 0xEA00000000006874;
        v8 = 0x706544656C707061;
      }
    }

    else if (v6 == 3)
    {
      v7 = 0xE500000000000000;
      v8 = 0x6C61636F6CLL;
    }

    else
    {
      v7 = 0xE800000000000000;
      v8 = 0x73756F6976657270;
    }

    v9 = v7;
    String.append(_:)(*&v8);

    v10._countAndFlagsBits = 10;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x203A65707974;
    v11._object = 0xE600000000000000;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x203A6C6562616CLL;
    v12._object = 0xE700000000000000;
    String.append(_:)(v12);
    LOBYTE(v55) = (*(*v5 + 192))();
    _print_unlocked<A, B>(_:_:)();
    v13._countAndFlagsBits = 10;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x6E656469666E6F63;
    v15._object = 0xEC000000203A6563;
    String.append(_:)(v15);
    (*(*a1 + 192))(v16);
    Float.write<A>(to:)();
    v17._countAndFlagsBits = 10;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0x6E6F63656E616C70;
    v19._object = 0xEB00000000203A66;
    String.append(_:)(v19);
    (*(*v5 + 232))(v20);
    Float.write<A>(to:)();
    v21._countAndFlagsBits = 10;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    String.append(_:)(v22);

    v24 = (*(*a1 + 448))(v23);
    swift_beginAccess();
    v25 = *(v1 + 40);
    if (*(v25 + 16) && (v26 = sub_10019C32C(v24), (v27 & 1) != 0))
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      swift_endAccess();
      v55 = v28;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 10;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      v31._countAndFlagsBits = 0x2320657461647075;
      v31._object = 0xE800000000000000;
      String.append(_:)(v31);
    }

    else
    {
      v32 = swift_endAccess();
    }

    v33 = (*(*v5 + 160))(v32);
    v34 = NSObject.hashValue.getter();

    swift_beginAccess();
    v35 = *(v2 + 24);
    if (*(v35 + 16) && (v36 = sub_10019C32C(v34), (v37 & 1) != 0))
    {
      v38 = (*(v35 + 56) + 16 * v36);
      v39 = *v38;
      v40 = v38[1];
      swift_endAccess();

      v41._countAndFlagsBits = v39;
      v41._object = v40;
      String.append(_:)(v41);

      v42._countAndFlagsBits = 10;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
    }

    else
    {
      swift_endAccess();
    }

    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = v43;
      v45 = v33;
      v46._countAndFlagsBits = 2130895;
      v46._object = 0xA300000000000000;
      String.append(_:)(v46);
      [v44 uncertaintyAlongNormal];
      Float.write<A>(to:)();
      v47._countAndFlagsBits = 10;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      String.append(_:)(v48);
    }

    v49 = (*(*a1 + 168))(v43);
    v50 = (v49 & 1) == 0;
    if (v49)
    {
      v51 = 1702195828;
    }

    else
    {
      v51 = 0x65736C6166;
    }

    if (v50)
    {
      v52 = 0xE500000000000000;
    }

    else
    {
      v52 = 0xE400000000000000;
    }

    v53 = v52;
    String.append(_:)(*&v51);

    v54._countAndFlagsBits = 0x203A6F747561;
    v54._object = 0xE600000000000000;
    String.append(_:)(v54);

    return 0;
  }

  return result;
}

void sub_1001D7400(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) == 1)
  {
    v10 = *(*a1 + 448);
    v31[1] = *a1 + 448;
    v32 = v10;
    v11 = v10(v7);
    swift_beginAccess();
    v12 = sub_1000C6AA8(v11);
    v13 = swift_endAccess();
    if (v12)
    {
      sub_10004D9B4();
      v14 = static OS_dispatch_queue.main.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      v40 = sub_1001D8864;
      v41 = v15;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100041180;
      v39 = &unk_100473458;
      v16 = _Block_copy(&aBlock);
      v17 = v12;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10003180C();
      sub_10000F974(&unk_1004A3D80);
      sub_100031864();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v35 + 8))(v5, v3);
      v13 = (*(v33 + 8))(v9, v34);
    }

    v18 = (v32)(v13);
    swift_beginAccess();
    v19 = sub_1000C6AA8(v18);
    v20 = swift_endAccess();
    if (v19)
    {
      sub_10004D9B4();
      v21 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      v40 = sub_1001D8770;
      v41 = v22;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100041180;
      v39 = &unk_100473408;
      v23 = _Block_copy(&aBlock);
      v24 = v19;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10003180C();
      sub_10000F974(&unk_1004A3D80);
      sub_100031864();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);

      (*(v35 + 8))(v5, v3);
      v20 = (*(v33 + 8))(v9, v34);
    }

    v25 = (v32)(v20);
    swift_beginAccess();
    v26 = sub_1000C6A90(v25);
    swift_endAccess();
    if (v26)
    {
      sub_10004D9B4();
      v27 = static OS_dispatch_queue.main.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v40 = sub_1001D8748;
      v41 = v28;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100041180;
      v39 = &unk_1004733B8;
      v29 = _Block_copy(&aBlock);
      v30 = v26;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10003180C();
      sub_10000F974(&unk_1004A3D80);
      sub_100031864();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v35 + 8))(v5, v3);
      (*(v33 + 8))(v9, v34);
    }
  }
}

void *sub_1001D7A44(void *result)
{
  v2 = v1;
  if (*(v1 + 16) == 1)
  {
    v3 = (*result + 448);
    v4 = *v3;
    v5 = (*v3)();
    v6 = v4();
    swift_beginAccess();
    v7 = *(v1 + 40);
    if (*(v7 + 16) && (v8 = sub_10019C32C(v6), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }

    result = swift_endAccess();
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      sub_1000BCFA4(v10 + 1, v5, isUniquelyReferenced_nonNull_native);
      *(v2 + 40) = v12;
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1001D7B6C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for MeasureCamera();
    v5 = *(*v2 + 368);
    v5();
    simd_float4x4.position.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    pointa = vcvtq_f64_f32(v6);
    [*(v4 + 72) frame];
    v7 = CGRectContainsPoint(v79, pointa);
    v8 = (*v2 + 448);
    v9 = *v8;
    v10 = (*v8)();
    swift_beginAccess();
    v11 = *(v4 + 48);
    if (*(v11 + 16) && (v12 = sub_10019C32C(v10), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      v15 = v14;
    }

    else
    {
      v14 = 0;
    }

    v16 = swift_endAccess();
    v17 = (v9)(v16);
    swift_beginAccess();
    v18 = *(v4 + 56);
    if (*(v18 + 16) && (v19 = sub_10019C32C(v17), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      v22 = v21;
    }

    else
    {
      v21 = 0;
    }

    v23 = swift_endAccess();
    v24 = (v9)(v23);
    swift_beginAccess();
    v25 = *(v4 + 32);
    if (*(v25 + 16) && (v26 = sub_10019C32C(v24), (v27 & 1) != 0))
    {
      point = *(*(v25 + 56) + 8 * v26);
      v28 = point;
    }

    else
    {
      point = 0;
    }

    v29 = swift_endAccess();
    if (v14)
    {
      v29 = (*(*v2 + 216))(v29);
      if (v29)
      {
        v70 = (*(*v29 + 160))(v29);

        [v14 removeFromSuperlayer];
        v69 = *(v4 + 64);
        v5();
        simd_float4x4.position.getter();
        [v70 transform];
        simd_float4x4.up.getter();
        v66 = *(v4 + 88);
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v73 = v5;
        v30 = [objc_allocWithZone(CAShapeLayer) init];
        v31 = [objc_allocWithZone(UIBezierPath) init];
        CGPoint.init(_:)();
        [v31 moveToPoint:?];
        CGPoint.init(_:)();
        [v31 addLineToPoint:?];
        v32 = v7;
        v33 = [v31 CGPath];
        [v30 setPath:v33];

        [v30 setLineWidth:1.0];
        v67 = v21;
        v34 = v14;
        v35 = [v66 CGColor];
        [v30 setStrokeColor:v35];

        v36 = [objc_opt_self() clearColor];
        v37 = [v36 CGColor];

        v7 = v32;
        [v30 setFillColor:v37];

        v38 = [v69 layer];
        [v38 addSublayer:v30];

        v21 = v67;
        v39 = v9();
        swift_beginAccess();
        v40 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = *(v4 + 48);
        *(v4 + 48) = 0x8000000000000000;
        sub_1000BD27C(v40, v39, isUniquelyReferenced_nonNull_native);
        *(v4 + 48) = v78;
        swift_endAccess();
        [v40 setHidden:!v7];

        v14 = v30;
        v5 = v73;
      }
    }

    if (v21)
    {
      v71 = v14;
      v42 = (*v2 + 376);
      v43 = *v42;
      v29 = (*v42)(v29);
      if ((v44 & 1) == 0)
      {
        v72 = v9;
        v68 = v7;
        [v21 removeFromSuperlayer];
        v45 = *(v4 + 64);
        v74 = v5;
        v5();
        v46 = simd_float4x4.position.getter();
        v43(v46);
        if (v47)
        {
          __break(1u);
          return;
        }

        v48 = *(v4 + 80);
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v49 = [objc_allocWithZone(CAShapeLayer) init];
        v50 = [objc_allocWithZone(UIBezierPath) init];
        CGPoint.init(_:)();
        [v50 moveToPoint:?];
        CGPoint.init(_:)();
        [v50 addLineToPoint:?];
        v51 = [v50 CGPath];
        [v49 setPath:v51];

        [v49 setLineWidth:1.0];
        v52 = [v48 CGColor];
        [v49 setStrokeColor:v52];

        v53 = [objc_opt_self() clearColor];
        v54 = [v53 CGColor];

        [v49 setFillColor:v54];
        v55 = [v45 layer];
        [v55 addSublayer:v49];

        v56 = v72();
        swift_beginAccess();
        v57 = v49;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v4 + 56);
        *(v4 + 56) = 0x8000000000000000;
        sub_1000BD27C(v57, v56, v58);
        *(v4 + 56) = v77;
        swift_endAccess();
        v7 = v68;
        v29 = [v57 setHidden:!v68];
        v21 = v49;
        v5 = v74;
      }

      v14 = v71;
    }

    if (point)
    {
      (v5)(v29);
      simd_float4x4.position.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
      v60 = v59;
      v62 = v61;
      v63 = v14;
      v64 = point;
      [v64 setFrame:{v60, v62, 100.0, 100.0}];
      sub_1001D6DC4(v2);
      v65 = String._bridgeToObjectiveC()();

      [v64 setText:v65];

      [v64 setHidden:!v7];
      v14 = v63;
    }
  }
}

id *sub_1001D85EC()
{

  return v0;
}

uint64_t sub_1001D864C()
{
  sub_1001D85EC();

  return swift_deallocClassInstance();
}

uint64_t sub_1001D8710()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D8758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D8780()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D87B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D8800()
{

  return _swift_deallocObject(v0, 512, 15);
}

uint64_t sub_1001D8878()
{
  sub_10000F974(&qword_1004A3E58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003E3610;
  if (qword_1004A0868 != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = *(&xmmword_1004D5450 + 1);
  v2 = qword_1004D5460;
  *(v0 + 32) = xmmword_1004D5450;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = xmmword_1003E3620;
  *(v0 + 72) = &off_1004657F0;
  *(v0 + 80) = xmmword_1003E3630;
  *(v0 + 96) = &off_100465840;
  *(v0 + 104) = xmmword_1003E3640;
  *(v0 + 120) = &off_1004658F0;
  *(v0 + 128) = 0xD000000000000010;
  *(v0 + 136) = 0x800000010040DBB0;
  *(v0 + 144) = &off_100465940;
  *(v0 + 152) = xmmword_1003E3650;
  *(v0 + 168) = &off_100465A20;
  *(v0 + 176) = 0xD000000000000013;
  *(v0 + 184) = 0x800000010040DBD0;
  *(v0 + 192) = &off_100465BC0;
  *(v0 + 200) = 0xD000000000000024;
  *(v0 + 208) = 0x800000010040DBF0;
  *(v0 + 216) = &off_100465D30;
  *(v0 + 224) = 0xD00000000000001BLL;
  *(v0 + 232) = 0x800000010040DC20;
  *(v0 + 240) = &off_100465DE0;
  *(v0 + 248) = 0xD00000000000001BLL;
  *(v0 + 256) = 0x800000010040DC40;
  *(v0 + 264) = &off_100465E90;
  *(v0 + 272) = 0xD000000000000016;
  *(v0 + 280) = 0x800000010040DC60;
  *(v0 + 288) = &off_1004660C0;
  strcpy((v0 + 296), "View Options");
  *(v0 + 309) = 0;
  *(v0 + 310) = -5120;
  *(v0 + 312) = &off_1004661A0;
  *(v0 + 320) = xmmword_1003E3660;
  *(v0 + 336) = &off_100466220;
  *(v0 + 344) = 0x7365646F4DLL;
  *(v0 + 352) = 0xE500000000000000;
  *(v0 + 360) = &off_1004662A0;
  *(v0 + 368) = xmmword_1003E3670;
  *(v0 + 384) = &off_1004662F0;
  *(v0 + 392) = 19533;
  *(v0 + 400) = 0xE200000000000000;
  *(v0 + 408) = &off_100466400;
  *(v0 + 416) = xmmword_1003E3680;
  *(v0 + 432) = &off_1004664E0;
  *(v0 + 440) = 0x6E6F697369766944;
  *(v0 + 448) = 0xE900000000000073;
  *(v0 + 456) = &off_1004665F0;
  *(v0 + 464) = xmmword_1003E3690;
  *(v0 + 480) = &off_100466640;
  qword_1004D5440 = v0;
}

double sub_1001D8B40()
{
  result = 1.27967851e-152;
  xmmword_1004D5450 = xmmword_1003E36A0;
  qword_1004D5460 = &_swiftEmptyArrayStorage;
  return result;
}

void *sub_1001D8B88(void *a1)
{
  *a1 = off_100473558;
  sub_1002ACE7C(v3, &off_100473598);
  if (v4)
  {
    sub_1002ACC1C(v3);
  }

  return a1;
}

uint64_t sub_1001D8BF4(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    sub_1002ACC1C(result);
    return v1;
  }

  return result;
}

void *sub_1001D8C28(void *a1)
{
  *a1 = off_100473558;
  sub_1002ACE7C(v3, &off_1004735B8);
  if (v4)
  {
    sub_1002ACC1C(v3);
  }

  return a1;
}

void *sub_1001D8C98(void *a1)
{
  *a1 = off_100473558;
  sub_1002ACE7C(v3, &off_1004735B8);
  if (v4)
  {
    sub_1002ACC1C(v3);
  }

  return a1;
}

void sub_1001D8D08(void *a1)
{
  *a1 = off_100473558;
  sub_1002ACE7C(v1, &off_1004735B8);
  if (v2)
  {
    sub_1002ACC1C(v1);
  }

  operator delete();
}

void sub_1001D8D8C(uint64_t a1, char **a2)
{
  sub_1002ACE7C(v7, &off_1004735D8);
  v9 = 0;
  v10 = 0;
  sub_100291880(v6, a2, 1u, &v9);
  sub_1002A8124(&v9);
  (*(*a1 + 56))(v5, a1);
  v4 = sub_100291CE8(v6, v5);
  v9 = 0;
  v10 = 0;
  *sub_1002A80E0(&v9, 1) = 123;
  sub_100291CE8(v4, &v9);
  sub_1002A8124(&v9);
  sub_1002A8124(v5);
  (*(*a1 + 24))(a1, v6);
  v9 = 0;
  v10 = 0;
  *sub_1002A80E0(&v9, 1) = 125;
  sub_100291CE8(v6, &v9);
  sub_1002A8124(&v9);
  sub_10029180C(v6);
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1001D8ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002A8124((v4 - 32));
  sub_10029180C(va);
  sub_1001D8BF4(v4 - 48);
  _Unwind_Resume(a1);
}

void sub_1001D8F4C(void *a1@<X8>)
{
  sub_1002ACE7C(v3, &off_1004735F8);
  *a1 = 0;
  a1[1] = 0;
  v2 = sub_1002A80E0(a1, 9);
  *(v2 + 8) = 116;
  *v2 = *"my_object";
  if (v4)
  {
    sub_1002ACC1C(v3);
  }
}

void *sub_1001D8FE8(size_t size)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x40uLL, size, 0x95FB6C2CuLL))
  {
    memptr = 0;
    goto LABEL_3;
  }

  result = memptr;
  if (!memptr)
  {
LABEL_3:
    sub_1002A8688(v4, "Failed to allocate %llu bytes", size);
    sub_1002A8980(-4, v4, "OutOfMemoryError", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/alloc.cpp", 55);
  }

  return result;
}

void sub_1001D9090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D90B0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = *(a1 + 4);
  if (v8 >= 3)
  {
    v10 = *(a1 + 64);
    if (v8 > 7)
    {
      v11 = v8 & 0x7FFFFFF8;
      v12 = v10 + 1;
      v13.i64[0] = 0x100000001;
      v13.i64[1] = 0x100000001;
      v14 = v11;
      v15.i64[0] = 0x100000001;
      v15.i64[1] = 0x100000001;
      do
      {
        v13 = vmulq_s32(v12[-1], v13);
        v15 = vmulq_s32(*v12, v15);
        v12 += 2;
        v14 -= 8;
      }

      while (v14);
      v16 = vmulq_s32(v15, v13);
      *v16.i8 = vmul_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      v9 = v16.i32[0] * v16.i32[1];
      if (v11 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
      v9 = 1;
    }

    v17 = v8 - v11;
    v18 = &v10->i32[v11];
    do
    {
      v19 = *v18++;
      v9 *= v19;
      --v17;
    }

    while (v17);
  }

  else
  {
    v9 = *(a1 + 12) * *(a1 + 8);
  }

LABEL_10:
  v20 = (a2 >> 3) & 0x1FF;
  v21 = sub_100201044(*a1 & 7, a2);
  v22 = *(a1 + 16);
  if (v20 < v9)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v9;
  }

  v41[0] = v23 | 0x100000000;
  result = v21(v22, 1, 0, 1, a3, 1, v41, 0);
  v25 = v6 & 7;
  v26 = (v20 + 1) << ((0xFA50u >> (2 * (v6 & 7))) & 3);
  if (v20 >= v9)
  {
    if (v9 != 1)
    {
      v41[0] = 0;
      v41[1] = 0;
      *sub_1002A80E0(v41, 8) = 0x31203D3D206E6373;
      sub_1002A8980(-215, v41, "convertAndUnrollScalar", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 68);
    }

    v27 = (0x88442211uLL >> (4 * v25)) & 0xF;
    v28 = v26 - v27;
    if (v26 > v27)
    {
      v29 = a3;
      do
      {
        v29[v27] = *v29;
        ++v29;
        --v28;
      }

      while (v28);
    }
  }

  if (v26 * a4 > v26)
  {
    v30 = (a4 - 1) * v26;
    if (v30 < 8 || v26 < 0x20)
    {
      v32 = v26;
      goto LABEL_34;
    }

    if (v30 < 0x20)
    {
      v31 = 0;
      goto LABEL_29;
    }

    v31 = v30 & 0xFFFFFFFFFFFFFFE0;
    v33 = (a3 + 16);
    v34 = (a3 + 16 + v26);
    v35 = v30 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v36 = *v33;
      *(v34 - 1) = *(v33 - 1);
      *v34 = v36;
      v34 += 2;
      v33 += 2;
      v35 -= 32;
    }

    while (v35);
    if (v30 != v31)
    {
      if ((v30 & 0x18) == 0)
      {
        v32 = v31 + v26;
        goto LABEL_34;
      }

LABEL_29:
      v32 = (v30 & 0xFFFFFFFFFFFFFFF8) + v26;
      v37 = (a3 + v31);
      v38 = v31 - (v30 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        *(v37 + v26) = *v37;
        ++v37;
        v38 += 8;
      }

      while (v38);
      if (v30 == (v30 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }

LABEL_34:
      v39 = v26 * a4 - v32;
      v40 = (a3 + v32);
      do
      {
        *v40 = v40[-v26];
        ++v40;
        --v39;
      }

      while (v39);
    }
  }

  return result;
}

void sub_1001D9360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002ACE7C(v9, &off_100473628);
  v8 = sub_1001D9404;
  sub_1001D9408(a1, a2, a3, a4, &v8, 1, 9);
  if (v10)
  {
    sub_1002ACC1C(v9);
  }
}

void sub_1001D93F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1001D9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, uint64_t, void, uint64_t), int a6, int a7)
{
  v11 = sub_100271148(a1);
  v12 = sub_100271148(a2);
  v13 = sub_100271A88(a1, -1);
  v156 = sub_100271A88(a2, -1);
  v14 = sub_10027377C(a1, -1);
  v15 = sub_10027377C(a2, -1);
  v16 = v15;
  if (v14 > 2)
  {
    v201 = 0;
    if (v15 <= 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100271154(a1, 0xFFFFFFFF, &v201);
    if (v16 <= 2)
    {
LABEL_3:
      sub_100271154(a2, 0xFFFFFFFF, &v200);
      goto LABEL_6;
    }
  }

  v200 = 0;
LABEL_6:
  v17 = v14 < 3;
  v157 = sub_1002743D4(a4);
  v152 = (v13 >> 3) & 0x1FF;
  v153 = v13 & 7;
  v18 = v152 + 1;
  v19 = v17 && v16 < 3;
  v20 = v152 + 1;
  if (v19 != 1)
  {
    goto LABEL_71;
  }

  v20 = v152 + 1;
  if (v11 != v12)
  {
    goto LABEL_71;
  }

  v21 = v201 == v200 && HIDWORD(v201) == HIDWORD(v200);
  v22 = v21 && v13 == v156;
  v23 = v22;
  v20 = v152 + 1;
  if (!v23 || !v157)
  {
    goto LABEL_71;
  }

  *&v209 = v201;
  sub_100275370(a3, &v209, v13, -1, 0, 0);
  if (a6)
  {
    v24 = v18 << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    v25 = a5;
  }

  else
  {
    v25 = &a5[v13 & 7];
    v24 = v152 + 1;
  }

  v26 = *v25;
  if (sub_100271148(a1) == 0x10000)
  {
    v27 = *(a1 + 8);
    v28 = *v27;
    v29 = *(v27 + 16);
    v209 = *v27;
    v210 = v29;
    v211 = *(v27 + 32);
    v30 = *(v27 + 56);
    v212 = *(v27 + 48);
    v213 = v30;
    v214 = &v209 + 8;
    v215 = v216;
    v216[1] = 0;
    v216[0] = 0;
    if (v30)
    {
      atomic_fetch_add((v30 + 20), 1u);
      if (*(v27 + 4) <= 2)
      {
LABEL_24:
        v31 = *(v27 + 72);
        v32 = v215;
        *v215 = *v31;
        v32[1] = v31[1];
        goto LABEL_28;
      }
    }

    else if (SDWORD1(v28) <= 2)
    {
      goto LABEL_24;
    }

    DWORD1(v209) = 0;
    sub_100269B58(&v209, v27);
  }

  else
  {
    sub_1002703C0(a1, -1, &v209);
  }

LABEL_28:
  if (sub_100271148(a2) == 0x10000)
  {
    v33 = *(a2 + 8);
    v34 = *v33;
    v35 = *(v33 + 16);
    v191 = *v33;
    v192 = v35;
    v193 = *(v33 + 32);
    v36 = *(v33 + 56);
    v194 = *(v33 + 48);
    v195 = v36;
    v196 = &v191 + 8;
    v197 = &v198;
    v199 = 0;
    v198 = 0;
    if (v36)
    {
      atomic_fetch_add((v36 + 20), 1u);
      if (*(v33 + 4) <= 2)
      {
LABEL_31:
        v37 = *(v33 + 72);
        v38 = v197;
        *v197 = *v37;
        v38[1] = v37[1];
        goto LABEL_35;
      }
    }

    else if (SDWORD1(v34) <= 2)
    {
      goto LABEL_31;
    }

    DWORD1(v191) = 0;
    sub_100269B58(&v191, v33);
  }

  else
  {
    sub_1002703C0(a2, -1, &v191);
  }

LABEL_35:
  if (sub_100271148(a3) != 0x10000)
  {
    sub_1002703C0(a3, -1, &v182);
    goto LABEL_42;
  }

  v39 = *(a3 + 8);
  v40 = *v39;
  v41 = *(v39 + 16);
  v182 = *v39;
  v183 = v41;
  v184 = *(v39 + 32);
  v42 = *(v39 + 56);
  v185 = *(v39 + 48);
  v186 = v42;
  v187 = &v182 + 8;
  v188 = &v189;
  v189 = 0;
  v190 = 0;
  if (!v42)
  {
    if (SDWORD1(v40) <= 2)
    {
      goto LABEL_38;
    }

LABEL_41:
    DWORD1(v182) = 0;
    sub_100269B58(&v182, v39);
    goto LABEL_42;
  }

  atomic_fetch_add((v42 + 20), 1u);
  if (*(v39 + 4) > 2)
  {
    goto LABEL_41;
  }

LABEL_38:
  v43 = *(v39 + 72);
  v44 = v188;
  *v188 = *v43;
  v44[1] = v43[1];
LABEL_42:
  v45 = HIDWORD(v209);
  if ((v209 & v191 & v182 & 0x4000) != 0 && DWORD2(v209) * HIDWORD(v209) == SDWORD2(v209) * SHIDWORD(v209))
  {
    v45 = DWORD2(v209) * HIDWORD(v209);
  }

  if (v24 * v45 != v24 * v45)
  {
    if (v186 && atomic_fetch_add((v186 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v182);
    }

    v186 = 0;
    v183 = 0u;
    v184 = 0u;
    if (SDWORD1(v182) >= 1)
    {
      v46 = 0;
      v47 = v187;
      do
      {
        *&v47[4 * v46++] = 0;
      }

      while (v46 < SDWORD1(v182));
    }

    if (v188 != &v189)
    {
      j__free(v188);
    }

    if (v195 && atomic_fetch_add((v195 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v191);
    }

    v195 = 0;
    v192 = 0u;
    v193 = 0u;
    if (SDWORD1(v191) >= 1)
    {
      v48 = 0;
      v49 = v196;
      do
      {
        *&v49[4 * v48++] = 0;
      }

      while (v48 < SDWORD1(v191));
    }

    if (v197 != &v198)
    {
      j__free(v197);
    }

    if (v213 && atomic_fetch_add((v213 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v209);
    }

    v213 = 0;
    v210 = 0u;
    v211 = 0u;
    if (SDWORD1(v209) >= 1)
    {
      v50 = 0;
      v51 = v214;
      do
      {
        *&v51[4 * v50++] = 0;
      }

      while (v50 < SDWORD1(v209));
    }

    if (v215 != v216)
    {
      j__free(v215);
    }

    v20 = v24;
LABEL_71:
    if (a7 != 12)
    {
      if ((v11 == 0x20000) == (v12 == 0x20000))
      {
        v52 = sub_100273410(a1, a2);
        if (v13 == v156 && v52)
        {
          if (!sub_100273410(a1, a2))
          {
            v209 = 0uLL;
            qmemcpy(sub_1002A80E0(&v209, 41), "psrc1->sameSize(*psrc2) && type1 == type2", 41);
            sub_1002A8980(-215, &v209, "binary_op", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 230);
          }

          v54 = 0;
          goto LABEL_127;
        }
      }

      if (sub_10027377C(a1, -1) <= 2 && sub_100274628(a1, -1))
      {
        sub_100271154(a1, 0xFFFFFFFF, &v209);
        v55 = v11 != 0x20000 && v12 == 0x20000;
        v56 = DWORD1(v209) == 1 || v209 == 1;
        if (v56 && !v55)
        {
          v57 = (v156 >> 3) & 0x1FF;
          v58 = v57 + 1;
          v59 = v209 == v57 + 1;
          v60 = DWORD1(v209) == 1;
          if (DWORD1(v209) != 1)
          {
            v59 = 0;
          }

          if (DWORD1(v209) == v58)
          {
            v60 = 1;
          }

          if (v209 != 1)
          {
            v60 = 0;
          }

          if (v60 || v59 || v209 == 0x400000001 && (v61 = sub_100271A88(a1, -1), v57 <= 3) && v61 == 6)
          {
            v13 = v156;
            v153 = v156 & 7;
            v62 = v201;
            v201 = v200;
            v200 = v62;
            v54 = 1;
            v20 = v58;
            v63 = a1;
            goto LABEL_128;
          }
        }
      }

      if (sub_10027377C(a2, -1) > 2 || !sub_100274628(a2, -1))
      {
        goto LABEL_125;
      }

      sub_100271154(a2, 0xFFFFFFFF, &v209);
      v64 = v12 != 0x20000 && v11 == 0x20000;
      v65 = DWORD1(v209) == 1 || v209 == 1;
      if (!v65 || v64)
      {
        goto LABEL_125;
      }

      v66 = v209 == v18;
      v67 = DWORD1(v209) == 1;
      if (DWORD1(v209) != 1)
      {
        v66 = 0;
      }

      if (DWORD1(v209) == v18)
      {
        v67 = 1;
      }

      if (v209 != 1)
      {
        v67 = 0;
      }

      if (!v67 && !v66)
      {
        if (v209 != 0x400000001 || (v68 = sub_100271A88(a2, -1), v152 > 3) || v68 != 6)
        {
LABEL_125:
          v209 = 0uLL;
          qmemcpy(sub_1002A80E0(&v209, 130), "The operation is neither 'array op array' (where arrays have the same size and type), nor 'array op scalar', nor 'scalar op array'", 130);
          sub_1002A8980(-209, &v209, "binary_op", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 225);
        }
      }
    }

    v54 = 1;
LABEL_127:
    v58 = v152 + 1;
    v63 = a2;
    a2 = a1;
LABEL_128:
    v181 = v58 << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    if (v157)
    {
      v70 = 0;
      v71 = 1;
    }

    else
    {
      if (sub_100271A88(a4, -1) > 1 || !sub_100273410(a4, a2))
      {
        v209 = 0uLL;
        qmemcpy(sub_1002A80E0(&v209, 52), "(mtype == 0 || mtype == 1) && _mask.sameSize(*psrc1)", 52);
        sub_1002A8980(-215, &v209, "binary_op", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 241);
      }

      v70 = sub_10022B490(v181);
      v71 = sub_100273410(a3, a2) && sub_100271A88(a3, -1) == v13;
    }

    *&v209 = &v210;
    *(&v209 + 1) = 1032;
    sub_1002766D4(a3, a2, v13);
    if (!v71)
    {
      *&v173 = 0;
      LODWORD(v191) = -1056833530;
      *(&v191 + 1) = &v173;
      *&v192 = 0x100000001;
      LODWORD(v182) = 0;
      *(&v182 + 1) = 0;
      *&v183 = 0;
      sub_1002769D0(a3, &v191, &v182);
    }

    if (sub_100271148(a2) == 0x10000)
    {
      v72 = *(a2 + 8);
      v73 = *v72;
      v74 = *(v72 + 16);
      v191 = *v72;
      v192 = v74;
      v193 = *(v72 + 32);
      v75 = *(v72 + 56);
      v194 = *(v72 + 48);
      v195 = v75;
      v196 = &v191 + 8;
      v197 = &v198;
      v199 = 0;
      v198 = 0;
      if (v75)
      {
        atomic_fetch_add((v75 + 20), 1u);
        if (*(v72 + 4) <= 2)
        {
LABEL_141:
          v76 = *(v72 + 72);
          v77 = v197;
          *v197 = *v76;
          v77[1] = v76[1];
          goto LABEL_145;
        }
      }

      else if (SDWORD1(v73) <= 2)
      {
        goto LABEL_141;
      }

      DWORD1(v191) = 0;
      sub_100269B58(&v191, v72);
    }

    else
    {
      sub_1002703C0(a2, -1, &v191);
    }

LABEL_145:
    if (sub_100271148(v63) == 0x10000)
    {
      v78 = *(v63 + 8);
      v79 = *v78;
      v80 = *(v78 + 16);
      v182 = *v78;
      v183 = v80;
      v184 = *(v78 + 32);
      v81 = *(v78 + 56);
      v185 = *(v78 + 48);
      v186 = v81;
      v187 = &v182 + 8;
      v188 = &v189;
      v189 = 0;
      v190 = 0;
      if (v81)
      {
        atomic_fetch_add((v81 + 20), 1u);
        if (*(v78 + 4) <= 2)
        {
LABEL_148:
          v82 = *(v78 + 72);
          v83 = v188;
          *v188 = *v82;
          v83[1] = v82[1];
          goto LABEL_152;
        }
      }

      else if (SDWORD1(v79) <= 2)
      {
        goto LABEL_148;
      }

      DWORD1(v182) = 0;
      sub_100269B58(&v182, v78);
    }

    else
    {
      sub_1002703C0(v63, -1, &v182);
    }

LABEL_152:
    if (sub_100271148(a3) == 0x10000)
    {
      v84 = *(a3 + 8);
      v85 = *v84;
      v86 = *(v84 + 16);
      v173 = *v84;
      v174 = v86;
      v175 = *(v84 + 32);
      v87 = *(v84 + 56);
      v176 = *(v84 + 48);
      v177 = v87;
      v178 = &v173 + 8;
      v179 = v180;
      v180[0] = 0;
      v180[1] = 0;
      if (v87)
      {
        atomic_fetch_add((v87 + 20), 1u);
        if (*(v84 + 4) <= 2)
        {
LABEL_155:
          v88 = *(v84 + 72);
          v89 = v179;
          *v179 = *v88;
          v89[1] = v88[1];
          goto LABEL_159;
        }
      }

      else if (SDWORD1(v85) <= 2)
      {
        goto LABEL_155;
      }

      DWORD1(v173) = 0;
      sub_100269B58(&v173, v84);
    }

    else
    {
      sub_1002703C0(a3, -1, &v173);
    }

LABEL_159:
    if (sub_100271148(a4) == 0x10000)
    {
      v90 = *(a4 + 8);
      v91 = *v90;
      v92 = *(v90 + 16);
      v165 = *v90;
      v166 = v92;
      v167 = *(v90 + 32);
      v93 = *(v90 + 56);
      v168 = *(v90 + 48);
      v169 = v93;
      v170 = &v165 + 8;
      v171 = v172;
      v172[0] = 0;
      v172[1] = 0;
      if (v93)
      {
        atomic_fetch_add((v93 + 20), 1u);
        if (*(v90 + 4) <= 2)
        {
LABEL_162:
          v94 = *(v90 + 72);
          v95 = v171;
          *v171 = *v94;
          v95[1] = v94[1];
          goto LABEL_166;
        }
      }

      else if (SDWORD1(v91) <= 2)
      {
        goto LABEL_162;
      }

      DWORD1(v165) = 0;
      sub_100269B58(&v165, v90);
    }

    else
    {
      sub_1002703C0(a4, -1, &v165);
    }

LABEL_166:
    if (a6)
    {
      v96 = v181;
    }

    else
    {
      v96 = v20;
    }

    if (a6)
    {
      v97 = 0;
    }

    else
    {
      v97 = v153;
    }

    v98 = a5[v97];
    v69 = v58 << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    v99 = (v69 + 1023) / v69;
    if (v54)
    {
      v204 = &v191;
      v205 = &v173;
      v206 = &v165;
      v207 = 0;
      v202 = 0uLL;
      *&v203 = 0;
      sub_100267CC8(v162, &v204, &v202, -1);
      v100 = v164;
      if (v164 >= v99)
      {
        v101 = (v69 + 1023) / v69;
      }

      else
      {
        v101 = v164;
      }

      v102 = (v101 << !v157) * v181 + 32;
      if (*(&v209 + 1) >= v102)
      {
        *(&v209 + 1) = (v101 << !v157) * v181 + 32;
        v103 = v209;
      }

      else
      {
        v103 = v209;
        if (v209 != &v210)
        {
          if (v209)
          {
            operator delete[]();
          }

          v103 = &v210;
          *&v209 = &v210;
        }

        *(&v209 + 1) = (v101 << !v157) * v181 + 32;
        if (v102 >= 0x409)
        {
          operator new[]();
        }
      }

      v106 = v181;
      sub_1001D90B0(&v182, v191 & 0xFFF, v103, v101);
      if (v100)
      {
        if (v157)
        {
          for (i = 0; i < v163; ++i)
          {
            v108 = 0;
            v110 = *(&v202 + 1);
            v109 = v202;
            do
            {
              if (v100 - v108 >= v101)
              {
                v111 = v101;
              }

              else
              {
                v111 = v100 - v108;
              }

              (v98)(v109, 0, v103, 0, v110, 0, (v96 * v111), 1, 0);
              v112 = v111 * v181;
              v109 = v202 + v112;
              v110 = *(&v202 + 1) + v112;
              *&v202 = v202 + v112;
              *(&v202 + 1) += v112;
              v108 += v101;
            }

            while (v108 < v100);
            sub_100267D14(v162);
          }
        }

        else
        {
          v124 = 0;
          v125 = v103 + v106 * v101 + 15;
          while (v124 < v163)
          {
            v159 = v124;
            v126 = 0;
            v127 = v202;
            do
            {
              if (v100 - v126 >= v101)
              {
                v128 = v101;
              }

              else
              {
                v128 = v100 - v126;
              }

              (v98)(v127, 0, v103, 0, v125 & 0xFFFFFFFFFFFFFFF0, 0, (v96 * v128), 1, 0);
              v160 = v128;
              v161 = 1;
              v70(v125 & 0xFFFFFFFFFFFFFFF0, 0, v203, 0, *(&v202 + 1), 0, &v160, &v181);
              *&v203 = v203 + v128;
              v129 = v128 * v181;
              v127 = v202 + v129;
              *&v202 = v202 + v129;
              *(&v202 + 1) += v129;
              v126 += v101;
            }

            while (v126 < v100);
            v124 = v159 + 1;
            sub_100267D14(v162);
          }
        }
      }

      else
      {
        v123 = -1;
        while (++v123 < v163)
        {
          sub_100267D14(v162);
        }
      }

      goto LABEL_265;
    }

    v204 = &v191;
    v205 = &v182;
    v206 = &v173;
    v207 = &v165;
    v208 = 0;
    v202 = 0u;
    v203 = 0u;
    sub_100267CC8(v162, &v204, &v202, -1);
    v104 = v164;
    v105 = v164;
    if ((v164 * v96) >> 31)
    {
      v105 = 0x7FFFFFFF / v96;
    }

    if (v157)
    {
      if (!v164)
      {
LABEL_254:
        v136 = -1;
        while (++v136 < v163)
        {
          sub_100267D14(v162);
        }

LABEL_265:
        if (v169 && atomic_fetch_add((v169 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v165);
        }

        v169 = 0;
        v166 = 0u;
        v167 = 0u;
        if (SDWORD1(v165) >= 1)
        {
          v143 = 0;
          v144 = v170;
          do
          {
            *&v144[4 * v143++] = 0;
          }

          while (v143 < SDWORD1(v165));
        }

        if (v171 != v172)
        {
          j__free(v171);
        }

        if (v177 && atomic_fetch_add((v177 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v173);
        }

        v177 = 0;
        v174 = 0u;
        v175 = 0u;
        if (SDWORD1(v173) >= 1)
        {
          v145 = 0;
          v146 = v178;
          do
          {
            *&v146[4 * v145++] = 0;
          }

          while (v145 < SDWORD1(v173));
        }

        if (v179 != v180)
        {
          j__free(v179);
        }

        if (v186 && atomic_fetch_add((v186 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v182);
        }

        v186 = 0;
        v183 = 0u;
        v184 = 0u;
        if (SDWORD1(v182) >= 1)
        {
          v147 = 0;
          v148 = v187;
          do
          {
            *&v148[4 * v147++] = 0;
          }

          while (v147 < SDWORD1(v182));
        }

        if (v188 != &v189)
        {
          j__free(v188);
        }

        if (v195 && atomic_fetch_add((v195 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v191);
        }

        v195 = 0;
        v192 = 0u;
        v193 = 0u;
        if (SDWORD1(v191) >= 1)
        {
          v149 = 0;
          v150 = v196;
          do
          {
            *&v150[4 * v149++] = 0;
          }

          while (v149 < SDWORD1(v191));
        }

        if (v197 != &v198)
        {
          j__free(v197);
        }

        if (v209 != &v210 && v209 != 0)
        {
          operator delete[]();
        }

        return;
      }
    }

    else
    {
      if (v105 >= v99)
      {
        v105 = (v69 + 1023) / v69;
      }

      if (*(&v209 + 1) >= v181 * v105)
      {
        *(&v209 + 1) = v181 * v105;
        v113 = v209;
        if (!v164)
        {
          goto LABEL_254;
        }
      }

      else
      {
        v113 = v209;
        if (v209 != &v210)
        {
          if (v209)
          {
            operator delete[]();
          }

          v113 = &v210;
          *&v209 = &v210;
        }

        *(&v209 + 1) = v181 * v105;
        if (v181 * v105 >= 0x409)
        {
          operator new[]();
        }

        if (!v164)
        {
          goto LABEL_254;
        }
      }

      if (!v157)
      {
        for (j = 0; j < v163; ++j)
        {
          v138 = 0;
          v140 = *(&v202 + 1);
          v139 = v202;
          do
          {
            if (v104 - v138 >= v105)
            {
              v141 = v105;
            }

            else
            {
              v141 = v104 - v138;
            }

            (v98)(v139, 0, v140, 0, v113, 0, (v96 * v141), 1, 0);
            v160 = v141;
            v161 = 1;
            v70(v113, 0, *(&v203 + 1), 0, v203, 0, &v160, &v181);
            v142 = v141 * v181;
            v139 = v202 + v142;
            v140 = (*(&v202 + 1) + v142);
            *&v202 = v202 + v142;
            *(&v202 + 1) += v142;
            *(&v203 + 1) += v141;
            *&v203 = v203 + v142;
            v138 += v105;
          }

          while (v138 < v104);
          sub_100267D14(v162);
        }

        goto LABEL_265;
      }
    }

    for (k = 0; k < v163; ++k)
    {
      v115 = 0;
      v117 = *(&v202 + 1);
      v116 = v202;
      v118 = v104;
      v119 = v203;
      do
      {
        v120 = v118 - v105;
        if (v118 >= v105)
        {
          v121 = v105;
        }

        else
        {
          v121 = v118;
        }

        (v98)(v116, 0, v117, 0, v119, 0, (v96 * v121), 1, 0);
        v122 = v121 * v181;
        v116 = v202 + v122;
        v117 = (*(&v202 + 1) + v122);
        *&v202 = v202 + v122;
        *(&v202 + 1) += v122;
        v119 = v203 + v122;
        *&v203 = v203 + v122;
        v115 += v105;
        v118 = v120;
      }

      while (v115 < v104);
      sub_100267D14(v162);
    }

    goto LABEL_265;
  }

  v26(v210, v216[0], v192, v198, v183, v189);
  if (v186 && atomic_fetch_add((v186 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v182);
  }

  v186 = 0;
  v183 = 0u;
  v184 = 0u;
  if (SDWORD1(v182) >= 1)
  {
    v130 = 0;
    v131 = v187;
    do
    {
      *&v131[4 * v130++] = 0;
    }

    while (v130 < SDWORD1(v182));
  }

  if (v188 != &v189)
  {
    j__free(v188);
  }

  if (v195 && atomic_fetch_add((v195 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v191);
  }

  v195 = 0;
  v192 = 0u;
  v193 = 0u;
  if (SDWORD1(v191) >= 1)
  {
    v132 = 0;
    v133 = v196;
    do
    {
      *&v133[4 * v132++] = 0;
    }

    while (v132 < SDWORD1(v191));
  }

  if (v197 != &v198)
  {
    j__free(v197);
  }

  if (v213 && atomic_fetch_add((v213 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v209);
  }

  v213 = 0;
  v210 = 0u;
  v211 = 0u;
  if (SDWORD1(v209) >= 1)
  {
    v134 = 0;
    v135 = v214;
    do
    {
      *&v135[4 * v134++] = 0;
    }

    while (v134 < SDWORD1(v209));
  }

  if (v215 != v216)
  {
    j__free(v215);
  }
}

void sub_1001DA8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_100006D14(&a51);
  sub_100006D14(&a63);
  if (STACK[0x270] != a13)
  {
    if (STACK[0x270])
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

void sub_1001DAA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002ACE7C(v9, &off_100473648);
  v8 = sub_1001DAB20;
  sub_1001D9408(a1, a2, a3, a4, &v8, 1, 10);
  if (v10)
  {
    sub_1002ACC1C(v9);
  }
}

void sub_1001DAB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1001DAB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002ACE7C(v9, &off_100473668);
  v8 = sub_1001DABC8;
  sub_1001D9408(a1, a2, a3, a4, &v8, 1, 11);
  if (v10)
  {
    sub_1002ACC1C(v9);
  }
}

void sub_1001DABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1001DABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v7, &off_100473688);
  v6 = sub_1001DAC6C;
  sub_1001D9408(a1, a1, a2, a3, &v6, 1, 12);
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1001DAC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1001DAC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v7, &off_1004736A8);
  v6 = sub_100276DA4();
  sub_1001D9408(a1, a2, a3, v6, off_1004AFE50, 0, 14);
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1001DAD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v7, &off_1004736C8);
  v6 = sub_100276DA4();
  sub_1001D9408(a1, a2, a3, v6, off_1004AFE90, 0, 13);
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1001DADA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v16, &off_1004736E8);
  v13 = 33619968;
  v14 = a3;
  v15 = 0;
  v12 = 0;
  v10 = 16842752;
  v11 = a1;
  v9 = 0;
  v7 = 16842752;
  v8 = a2;
  v6 = sub_100276DA4();
  sub_1001D9408(&v10, &v7, &v13, v6, off_1004AFE50, 0, 14);
  if (v17)
  {
    sub_1002ACC1C(v16);
  }
}

void sub_1001DAE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v16, &off_100473708);
  v13 = 33619968;
  v14 = a3;
  v15 = 0;
  v12 = 0;
  v10 = 16842752;
  v11 = a1;
  v9 = 0;
  v7 = 16842752;
  v8 = a2;
  v6 = sub_100276DA4();
  sub_1001D9408(&v10, &v7, &v13, v6, off_1004AFE90, 0, 13);
  if (v17)
  {
    sub_1002ACC1C(v16);
  }
}

void sub_1001DAF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1002ACE7C(v10, &off_100473728);
  sub_1001DAFD0(a1, a2, a3, a4, a5, off_1004AFED0, 0, 0);
  if (v11)
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1001DAFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v230 = sub_100271148(a1);
  v228 = sub_100271148(a2);
  v216 = sub_1002743D4(a4);
  v12 = sub_100271A88(a1, -1);
  v13 = sub_100271A88(a2, -1);
  v14 = sub_10027377C(a1, -1);
  v15 = sub_10027377C(a2, -1);
  v16 = v15;
  v218 = a4;
  v220 = a5;
  if (v14 > 2)
  {
    v277 = 0;
    if (v15 <= 2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v276 = 0;
    goto LABEL_6;
  }

  sub_100271154(a1, 0xFFFFFFFF, &v277);
  if (v16 > 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_100271154(a2, 0xFFFFFFFF, &v276);
LABEL_6:
  v17 = (v13 >> 3) & 0x1FF;
  v235 = v17 + 1;
  if (sub_10027377C(a1, -1) <= 2 && sub_100274628(a1, -1) && ((sub_100271154(a1, 0xFFFFFFFF, &v285), v285 == 1) || DWORD1(v285) == 1) && (v230 == 0x20000 || v228 != 0x20000))
  {
    v32 = v285 == v235;
    v33 = DWORD1(v285) == 1;
    if (DWORD1(v285) != 1)
    {
      v32 = 0;
    }

    if (DWORD1(v285) == v235)
    {
      v33 = 1;
    }

    if (v285 != 1)
    {
      v33 = 0;
    }

    v18 = 1;
    if (!v33 && !v32)
    {
      v18 = 0;
      if (v285 == 0x400000001)
      {
        v34 = sub_100271A88(a1, -1);
        v18 = v17 < 4 && v34 == 6;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = (v12 >> 3) & 0x1FF;
  v214 = v19 + 1;
  if (sub_10027377C(a2, -1) <= 2 && sub_100274628(a2, -1) && ((sub_100271154(a2, 0xFFFFFFFF, &v285), v285 == 1) || DWORD1(v285) == 1) && (v230 != 0x20000 || v228 == 0x20000))
  {
    v160 = v285 == v214;
    v161 = DWORD1(v285) == 1;
    if (DWORD1(v285) != 1)
    {
      v160 = 0;
    }

    if (DWORD1(v285) == v214)
    {
      v161 = 1;
    }

    if (v285 != 1)
    {
      v161 = 0;
    }

    v20 = 1;
    if (!v161 && !v160)
    {
      v20 = 0;
      if (v285 == 0x400000001)
      {
        v162 = sub_100271A88(a2, -1);
        v20 = v19 < 4 && v162 == 6;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  if (v230 == v228 || !v19)
  {
    v21 = v277 == v276 && HIDWORD(v277) == HIDWORD(v276);
    v22 = v21 && v14 < 3;
    v23 = v22 && v16 < 3;
    v24 = v23 && v12 == v13;
    v25 = v24;
    if (v25 && v216)
    {
      if ((sub_100275364(a3) & 1) == 0 && (v220 < 0 || (v220 & 7) == (v12 & 7)))
      {
        if (v18 == v20)
        {
          goto LABEL_44;
        }
      }

      else if (sub_100275364(a3) && sub_100271A88(a3, -1) == v12 && ((v18 ^ v20) & 1) == 0)
      {
LABEL_44:
        sub_1002766D4(a3, a1, v12);
        if (sub_100271148(a1) == 0x10000)
        {
          v26 = *(a1 + 8);
          v27 = *v26;
          v28 = *(v26 + 16);
          v285 = *v26;
          v286 = v28;
          v287 = *(v26 + 32);
          v29 = *(v26 + 56);
          v288 = *(v26 + 48);
          v289 = v29;
          v290 = &v285 + 8;
          v291 = &v292;
          v293 = 0;
          v292 = 0;
          if (v29)
          {
            atomic_fetch_add((v29 + 20), 1u);
            if (*(v26 + 4) <= 2)
            {
LABEL_47:
              v30 = *(v26 + 72);
              v31 = v291;
              *v291 = *v30;
              v31[1] = v30[1];
              goto LABEL_492;
            }
          }

          else if (SDWORD1(v27) <= 2)
          {
            goto LABEL_47;
          }

          DWORD1(v285) = 0;
          sub_100269B58(&v285, v26);
        }

        else
        {
          sub_1002703C0(a1, -1, &v285);
        }

LABEL_492:
        if (sub_100271148(a2) == 0x10000)
        {
          v188 = *(a2 + 8);
          v189 = *v188;
          v190 = *(v188 + 16);
          v267 = *v188;
          v268 = v190;
          v269 = *(v188 + 32);
          v191 = *(v188 + 56);
          v270 = *(v188 + 48);
          v271 = v191;
          v272 = &v267 + 8;
          v273 = &v274;
          v275 = 0;
          v274 = 0;
          if (v191)
          {
            atomic_fetch_add((v191 + 20), 1u);
            if (*(v188 + 4) <= 2)
            {
LABEL_495:
              v192 = *(v188 + 72);
              v193 = v273;
              *v273 = *v192;
              v193[1] = v192[1];
              goto LABEL_499;
            }
          }

          else if (SDWORD1(v189) <= 2)
          {
            goto LABEL_495;
          }

          DWORD1(v267) = 0;
          sub_100269B58(&v267, v188);
        }

        else
        {
          sub_1002703C0(a2, -1, &v267);
        }

LABEL_499:
        if (sub_100271148(a3) == 0x10000)
        {
          v194 = *(a3 + 8);
          v195 = *v194;
          v196 = *(v194 + 16);
          v258 = *v194;
          v259 = v196;
          v260 = *(v194 + 32);
          v197 = *(v194 + 56);
          v261 = *(v194 + 48);
          v262 = v197;
          v263 = &v258 + 8;
          v264 = &v265;
          v266 = 0;
          v265 = 0;
          if (v197)
          {
            atomic_fetch_add((v197 + 20), 1u);
            if (*(v194 + 4) <= 2)
            {
LABEL_502:
              v198 = *(v194 + 72);
              v199 = v264;
              *v264 = *v198;
              v199[1] = v198[1];
              goto LABEL_506;
            }
          }

          else if (SDWORD1(v195) <= 2)
          {
            goto LABEL_502;
          }

          DWORD1(v258) = 0;
          sub_100269B58(&v258, v194);
        }

        else
        {
          sub_1002703C0(a3, -1, &v258);
        }

LABEL_506:
        v200 = DWORD2(v285);
        v201 = ((v285 >> 3) & 0x1FF) + 1;
        if ((v285 & v267 & v258 & 0x4000) != 0 && (v202 = SHIDWORD(v285) * v201 * SDWORD2(v285), v202 == v202))
        {
          v200 = 1;
        }

        else
        {
          v202 = (HIDWORD(v285) * v201);
        }

        (*(a6 + 8 * (v12 & 7)))(v286, v292, v268, v274, v259, v265, v202, v200, a8);
        if (v262 && atomic_fetch_add((v262 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v258);
        }

        v262 = 0;
        v259 = 0u;
        v260 = 0u;
        if (SDWORD1(v258) >= 1)
        {
          v203 = 0;
          v204 = v263;
          do
          {
            *&v204[4 * v203++] = 0;
          }

          while (v203 < SDWORD1(v258));
        }

        if (v264 != &v265)
        {
          j__free(v264);
        }

        if (v271 && atomic_fetch_add((v271 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v267);
        }

        v271 = 0;
        v268 = 0u;
        v269 = 0u;
        if (SDWORD1(v267) >= 1)
        {
          v205 = 0;
          v206 = v272;
          do
          {
            *&v206[4 * v205++] = 0;
          }

          while (v205 < SDWORD1(v267));
        }

        if (v273 != &v274)
        {
          j__free(v273);
        }

        if (v289 && atomic_fetch_add((v289 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v285);
        }

        v289 = 0;
        v286 = 0u;
        v287 = 0u;
        if (SDWORD1(v285) >= 1)
        {
          v207 = 0;
          v208 = v290;
          do
          {
            *&v208[4 * v207++] = 0;
          }

          while (v207 < SDWORD1(v285));
        }

        if (v291 != &v292)
        {
          j__free(v291);
        }

        return;
      }
    }
  }

  v36 = v13 & 7;
  if (v14 == v16 && v277 == v276 && v19 == v17)
  {
    if (v230 != 0x20000 || (HIDWORD(v277) != 4 ? (v37 = HIDWORD(v277) == 1) : (v37 = 1), !v37 ? (v38 = 0) : (v38 = 1), v277 != 1 || (v38 & 1) == 0))
    {
      if (v228 != 0x20000)
      {
        v222 = 0;
        v212 = 0;
        v42 = v13 & 7;
        v40 = v13;
        v235 = v19 + 1;
        v36 = v12 & 7;
        v13 = v12;
        v41 = a2;
        a2 = a1;
        v43 = v220;
        if ((v220 & 0x80000000) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      if (v277 != 0x400000001)
      {
        v222 = 0;
        if (v277 != 0x100000001)
        {
          v42 = v13 & 7;
          v40 = v13;
          v235 = v19 + 1;
          v36 = v12 & 7;
          v13 = v12;
          v41 = a2;
          a2 = a1;
          v212 = 0;
          v43 = v220;
          if ((v220 & 0x80000000) == 0)
          {
            goto LABEL_144;
          }

          goto LABEL_138;
        }

        if ((sub_1001DE818(a1, v13, v230, 0x20000) & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_427:
        v170 = v277;
        v277 = v276;
        v276 = v170;
        v222 = 1;
        v39 = v19 + 1;
        v40 = v12;
        v41 = a1;
        if (v12 != 6)
        {
          goto LABEL_94;
        }

        goto LABEL_92;
      }
    }
  }

  if (sub_10027377C(a1, -1) <= 2)
  {
    if (sub_100274628(a1, -1))
    {
      sub_100271154(a1, 0xFFFFFFFF, &v285);
      if ((v285 == 1 || DWORD1(v285) == 1) && (v230 == 0x20000 || v228 != 0x20000))
      {
        v164 = v285 == v235;
        v165 = DWORD1(v285) == 1;
        if (DWORD1(v285) != 1)
        {
          v164 = 0;
        }

        if (DWORD1(v285) == v235)
        {
          v165 = 1;
        }

        if (v285 != 1)
        {
          v165 = 0;
        }

        if (v165)
        {
          goto LABEL_427;
        }

        if (v164)
        {
          goto LABEL_427;
        }

        if (v285 == 0x400000001)
        {
          v166 = sub_100271A88(a1, -1);
          if (v17 <= 3 && v166 == 6)
          {
            goto LABEL_427;
          }
        }
      }
    }
  }

LABEL_84:
  if (sub_10027377C(a2, -1) > 2)
  {
    goto LABEL_90;
  }

  if (!sub_100274628(a2, -1))
  {
    goto LABEL_90;
  }

  sub_100271154(a2, 0xFFFFFFFF, &v285);
  if (v285 != 1 && DWORD1(v285) != 1)
  {
    goto LABEL_90;
  }

  if (v230 == 0x20000 && v228 != 0x20000)
  {
    goto LABEL_90;
  }

  v167 = v285 == v214;
  v168 = DWORD1(v285) == 1;
  if (DWORD1(v285) != 1)
  {
    v167 = 0;
  }

  if (DWORD1(v285) == v214)
  {
    v168 = 1;
  }

  if (v285 != 1)
  {
    v168 = 0;
  }

  if (!v168 && !v167)
  {
    if (v285 != 0x400000001 || (v169 = sub_100271A88(a2, -1), v19 > 3) || v169 != 6)
    {
LABEL_90:
      v285 = 0uLL;
      qmemcpy(sub_1002A80E0(&v285, 153), "The operation is neither 'array op array' (where arrays have the same size and the same number of channels), nor 'array op scalar', nor 'scalar op array'", 153);
      sub_1002A8980(-209, &v285, "arithm_op", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 659);
    }
  }

  v222 = 0;
  v39 = v17 + 1;
  v40 = v13;
  v235 = v19 + 1;
  v36 = v12 & 7;
  v13 = v12;
  v41 = a2;
  a2 = a1;
  if (v40 != 6)
  {
LABEL_94:
    v285 = 0uLL;
    qmemcpy(sub_1002A80E0(&v285, 50), "type2 == 6 && (sz2.height == 1 || sz2.height == 4)", 50);
    sub_1002A8980(-215, &v285, "arithm_op", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 661);
  }

LABEL_92:
  if (HIDWORD(v276) != 1 && HIDWORD(v276) != 4)
  {
    goto LABEL_94;
  }

  if (a7)
  {
    v212 = 1;
    v42 = 6;
    v43 = v220;
    if ((v220 & 0x80000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_138;
  }

  if (sub_100271148(v41) != 0x10000)
  {
    sub_1002703C0(v41, -1, &v285);
    goto LABEL_107;
  }

  v44 = *(v41 + 8);
  v45 = *v44;
  v46 = *(v44 + 16);
  v285 = *v44;
  v286 = v46;
  v287 = *(v44 + 32);
  v47 = *(v44 + 56);
  v288 = *(v44 + 48);
  v289 = v47;
  v290 = &v285 + 8;
  v291 = &v292;
  v293 = 0;
  v292 = 0;
  if (!v47)
  {
    if (SDWORD1(v45) <= 2)
    {
      goto LABEL_101;
    }

LABEL_106:
    DWORD1(v285) = 0;
    sub_100269B58(&v285, v44);
    goto LABEL_107;
  }

  atomic_fetch_add((v47 + 20), 1u);
  if (*(v44 + 4) > 2)
  {
    goto LABEL_106;
  }

LABEL_101:
  v48 = *(v44 + 72);
  v49 = v291;
  *v291 = *v48;
  v49[1] = v48[1];
LABEL_107:
  v50 = v286;
  if (HIDWORD(v276) == 1 && v276 == 1)
  {
    v52 = v39;
  }

  else
  {
    v52 = v235;
  }

  v53 = 0x7FFFFFFF;
  v54 = 0x80000000;
  while (1)
  {
    v55 = rint(*v50);
    if (*v50 != v55)
    {
      break;
    }

    if (v54 <= v55)
    {
      v54 = v55;
    }

    if (v53 >= v55)
    {
      v53 = v55;
    }

    ++v50;
    if (!--v52)
    {
      if (v53 < 0 || v54 >= 256)
      {
        if (v53 < -128 || v54 >= 128)
        {
          if (v53 < 0 || v54 >= 0x10000)
          {
            if (v54 >= 0x8000 || v53 <= -32769)
            {
              v42 = 4;
            }

            else
            {
              v42 = 3;
            }
          }

          else
          {
            v42 = 2;
          }
        }

        else
        {
          v42 = 1;
        }
      }

      else
      {
        v42 = 0;
      }

      goto LABEL_129;
    }
  }

  v56 = v36 != 5 && v36 >= 4;
  if (v56)
  {
    v42 = 6;
  }

  else
  {
    v42 = 5;
  }

LABEL_129:
  if (v289 && atomic_fetch_add((v289 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v285);
  }

  v289 = 0;
  v286 = 0u;
  v287 = 0u;
  if (SDWORD1(v285) >= 1)
  {
    v57 = 0;
    v58 = v290;
    do
    {
      *&v58[4 * v57++] = 0;
    }

    while (v57 < SDWORD1(v285));
  }

  if (v291 != &v292)
  {
    j__free(v291);
  }

  v212 = 1;
  v43 = v220;
  if (v220 < 0)
  {
LABEL_138:
    if (sub_100275364(a3))
    {
      v43 = sub_100271A88(a3, -1);
    }

    else
    {
      v59 = v212;
      if (v13 == v40)
      {
        v59 = 1;
      }

      v43 = v13;
      if ((v59 & 1) == 0)
      {
        v285 = 0uLL;
        qmemcpy(sub_1002A80E0(&v285, 136), "When the input arrays in add/subtract/multiply/divide functions have different types, the output array type must be explicitly specified", 136);
        sub_1002A8980(-5, &v285, "arithm_op", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 683);
      }
    }
  }

LABEL_144:
  v60 = v43 & 7;
  if (v36 == v42 && v60 == v36)
  {
    v61 = 8 * v235 - 8;
    v62 = v60 | v61;
    if (v216)
    {
LABEL_147:
      sub_1002766D4(a3, a2, v62);
      goto LABEL_187;
    }
  }

  else
  {
    if (a7)
    {
      if (v42 <= v36)
      {
        v63 = v36;
      }

      else
      {
        v63 = v42;
      }

      if (v63 <= v60)
      {
        v63 = v43 & 7;
      }

      v64 = v63 > 5;
      v65 = 5;
    }

    else
    {
      if (v36 > 1 || v42 >= 2)
      {
        if (v36 <= v42)
        {
          v63 = v42;
        }

        else
        {
          v63 = v36;
        }

        if (v42 < 5 && v36 < 5)
        {
          v63 = 4;
        }
      }

      else
      {
        v63 = 3;
      }

      if (v63 <= v60)
      {
        LOBYTE(v63) = v43 & 7;
      }

      if (v42 < 5 || v36 < 5)
      {
        v65 = 4;
      }

      else
      {
        v65 = v63;
      }

      v64 = v60 > 4;
    }

    if (v64)
    {
      LOBYTE(v42) = v63;
    }

    else
    {
      LOBYTE(v42) = v65;
    }

    v61 = 8 * v235 - 8;
    v62 = v60 | v61;
    if (v216)
    {
      goto LABEL_147;
    }
  }

  if (sub_100271A88(v218, -1) > 1 || !sub_100273410(v218, a2))
  {
    v285 = 0uLL;
    qmemcpy(sub_1002A80E0(&v285, 132), "(mtype == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3)) || mtype == (((1) & ((1 << 3) - 1)) + (((1)-1) << 3))) && _mask.sameSize(*psrc1)", 132);
    sub_1002A8980(-215, &v285, "arithm_op", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 715);
  }

  if (!sub_100273410(a3, a2))
  {
    sub_1002766D4(a3, a2, v62);
    goto LABEL_186;
  }

  v68 = sub_100271A88(a3, -1) == v62;
  sub_1002766D4(a3, a2, v62);
  if (!v68)
  {
LABEL_186:
    *&v258 = 0;
    LODWORD(v285) = -1056833530;
    *(&v285 + 1) = &v258;
    *&v286 = 0x100000001;
    LODWORD(v267) = 0;
    *&v268 = 0;
    *(&v267 + 1) = 0;
    sub_1002769D0(a3, &v285, &v267);
  }

LABEL_187:
  v69 = v61 & 0xFFFFFFF8 | v42 & 7;
  if (v13 == v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = sub_100201044(v13, v61 & 0xF8 | v42 & 7);
  }

  v225 = v70;
  v229 = v70;
  if (v40 != v13)
  {
    if (v40 == v69)
    {
      v225 = 0;
    }

    else
    {
      v225 = sub_100201044(v40, v61 & 0xF8 | v42 & 7);
    }
  }

  v71 = v42;
  if (v60 == (v42 & 7))
  {
    v72 = 0;
  }

  else
  {
    v72 = sub_100201044(v61 & 0xF8 | v42 & 7, v62);
  }

  v73 = ((v61 >> 3) & 0x1FF) + 1;
  v257 = (v73 << ((0xFA50u >> (2 * v60)) & 3));
  v215 = sub_10022B490(v257);
  v221 = v72;
  if (sub_100271148(a2) == 0x10000)
  {
    v74 = *(a2 + 8);
    v75 = *v74;
    v76 = *(v74 + 16);
    v267 = *v74;
    v268 = v76;
    v269 = *(v74 + 32);
    v77 = *(v74 + 56);
    v270 = *(v74 + 48);
    v271 = v77;
    v272 = &v267 + 8;
    v273 = &v274;
    v275 = 0;
    v274 = 0;
    if (v77)
    {
      atomic_fetch_add((v77 + 20), 1u);
      if (*(v74 + 4) <= 2)
      {
LABEL_200:
        v78 = *(v74 + 72);
        v79 = v273;
        *v273 = *v78;
        v79[1] = v78[1];
        goto LABEL_204;
      }
    }

    else if (SDWORD1(v75) <= 2)
    {
      goto LABEL_200;
    }

    DWORD1(v267) = 0;
    sub_100269B58(&v267, v74);
  }

  else
  {
    sub_1002703C0(a2, -1, &v267);
  }

LABEL_204:
  if (sub_100271148(v41) == 0x10000)
  {
    v80 = *(v41 + 8);
    v81 = *v80;
    v82 = *(v80 + 16);
    v258 = *v80;
    v259 = v82;
    v260 = *(v80 + 32);
    v83 = *(v80 + 56);
    v261 = *(v80 + 48);
    v262 = v83;
    v263 = &v258 + 8;
    v264 = &v265;
    v266 = 0;
    v265 = 0;
    if (v83)
    {
      atomic_fetch_add((v83 + 20), 1u);
      if (*(v80 + 4) <= 2)
      {
LABEL_207:
        v84 = *(v80 + 72);
        v85 = v264;
        *v264 = *v84;
        v85[1] = v84[1];
        goto LABEL_211;
      }
    }

    else if (SDWORD1(v81) <= 2)
    {
      goto LABEL_207;
    }

    DWORD1(v258) = 0;
    sub_100269B58(&v258, v80);
  }

  else
  {
    sub_1002703C0(v41, -1, &v258);
  }

LABEL_211:
  if (sub_100271148(a3) == 0x10000)
  {
    v86 = *(a3 + 8);
    v87 = *v86;
    v88 = *(v86 + 16);
    v249 = *v86;
    v250 = v88;
    v251 = *(v86 + 32);
    v89 = *(v86 + 56);
    v252 = *(v86 + 48);
    v253 = v89;
    v254 = &v249 + 8;
    v255 = v256;
    v256[0] = 0;
    v256[1] = 0;
    if (v89)
    {
      atomic_fetch_add((v89 + 20), 1u);
      if (*(v86 + 4) <= 2)
      {
LABEL_214:
        v90 = *(v86 + 72);
        v91 = v255;
        *v255 = *v90;
        v91[1] = v90[1];
        goto LABEL_218;
      }
    }

    else if (SDWORD1(v87) <= 2)
    {
      goto LABEL_214;
    }

    DWORD1(v249) = 0;
    sub_100269B58(&v249, v86);
  }

  else
  {
    sub_1002703C0(a3, -1, &v249);
  }

LABEL_218:
  if (sub_100271148(v218) == 0x10000)
  {
    v92 = *(v218 + 8);
    v93 = *v92;
    v94 = *(v92 + 16);
    v241 = *v92;
    v242 = v94;
    v243 = *(v92 + 32);
    v95 = *(v92 + 56);
    v244 = *(v92 + 48);
    v245 = v95;
    v246 = &v241 + 8;
    v247 = v248;
    v248[0] = 0;
    v248[1] = 0;
    if (v95)
    {
      atomic_fetch_add((v95 + 20), 1u);
      if (*(v92 + 4) <= 2)
      {
LABEL_221:
        v96 = *(v92 + 72);
        v97 = v247;
        *v247 = *v96;
        v97[1] = v96[1];
        goto LABEL_225;
      }
    }

    else if (SDWORD1(v93) <= 2)
    {
      goto LABEL_221;
    }

    DWORD1(v241) = 0;
    sub_100269B58(&v241, v92);
  }

  else
  {
    sub_1002703C0(v218, -1, &v241);
  }

LABEL_225:
  v231 = (((v13 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
  v98 = (v73 << ((0xFA50u >> (2 * v71)) & 3));
  v99 = (v98 + 1023) / v98;
  *&v285 = &v286;
  *(&v285 + 1) = 1032;
  if (v229)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0;
  }

  if (v225)
  {
    v101 = 1;
  }

  else
  {
    v101 = v212;
  }

  if (v101)
  {
    v102 = v98;
  }

  else
  {
    v102 = 0;
  }

  v103 = v102 + v100;
  if (v72)
  {
    v104 = v98;
  }

  else
  {
    v104 = 0;
  }

  v105 = v257;
  if (v216)
  {
    v105 = 0;
  }

  v106 = v103 + v104 + v105;
  v233 = *(a6 + 8 * v71);
  if (v212)
  {
    v280 = &v267;
    v281 = &v249;
    v282 = &v241;
    v283 = 0;
    v278 = 0uLL;
    *&v279 = 0;
    sub_100267CC8(v238, &v280, &v278, -1);
    v107 = v240;
    if (v240 >= v99)
    {
      v108 = (v98 + 1023) / v98;
    }

    else
    {
      v108 = v240;
    }

    v109 = v108 * v106 + 64;
    if (*(&v285 + 1) >= v109)
    {
      *(&v285 + 1) = v108 * v106 + 64;
      v110 = v285;
    }

    else
    {
      v110 = v285;
      if (v285 != &v286)
      {
        if (v285)
        {
          operator delete[]();
        }

        v110 = &v286;
        *&v285 = &v286;
      }

      *(&v285 + 1) = v109;
      if (v109 >= 0x409)
      {
        operator new[]();
      }
    }

    v116 = v108 * v98;
    if (v229)
    {
      v117 = v110;
    }

    else
    {
      v117 = 0;
    }

    v226 = v117;
    if (v229)
    {
      v118 = (v110 + v108 * v98 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v118 = v110;
    }

    sub_1001D90B0(&v258, v69, v118, v108);
    if (v107)
    {
      if (v72)
      {
        v119 = 1;
      }

      else
      {
        v119 = !v216;
      }

      if (v119)
      {
        v120 = (v118 + v116 + 15) & 0xFFFFFFFFFFFFFFF0;
        if (v216)
        {
          if (v222)
          {
            v121 = v118;
          }

          else
          {
            v121 = v226;
          }

          if (v222)
          {
            v122 = v226;
          }

          else
          {
            v122 = v118;
          }

          if (v229)
          {
            for (i = 0; i < v239; ++i)
            {
              v124 = 0;
              v126 = *(&v278 + 1);
              v125 = v278;
              do
              {
                if (v107 - v124 >= v108)
                {
                  v127 = v108;
                }

                else
                {
                  v127 = v107 - v124;
                }

                v236 = v235 * v127;
                v237 = 1;
                v229(v125, 1, 0, 1, v226, 1, &v236, 0);
                v233(v121, 1, v122, 1, v120, 1, v235 * v127, 1, a8);
                v236 = v235 * v127;
                v237 = 1;
                v72(v120, 1, 0, 1, v126, 1, &v236, 0);
                v125 = v278 + v127 * v231;
                v126 = *(&v278 + 1) + v257 * v127;
                *&v278 = v125;
                *(&v278 + 1) = v126;
                v124 += v108;
              }

              while (v124 < v107);
              sub_100267D14(v238);
            }
          }

          else
          {
            for (j = 0; j < v239; ++j)
            {
              v172 = 0;
              v174 = *(&v278 + 1);
              v173 = v278;
              do
              {
                if (v107 - v172 >= v108)
                {
                  v175 = v108;
                }

                else
                {
                  v175 = v107 - v172;
                }

                if (v222)
                {
                  v176 = v118;
                }

                else
                {
                  v176 = v173;
                }

                if (v222)
                {
                  v177 = v173;
                }

                else
                {
                  v177 = v118;
                }

                v233(v176, 1, v177, 1, v120, 1, v235 * v175, 1, a8);
                v236 = v235 * v175;
                v237 = 1;
                v221(v120, 1, 0, 1, v174, 1, &v236, 0);
                v173 = v278 + v175 * v231;
                v174 = *(&v278 + 1) + v257 * v175;
                *&v278 = v173;
                *(&v278 + 1) = v174;
                v172 += v108;
              }

              while (v172 < v107);
              sub_100267D14(v238);
            }
          }
        }

        else
        {
          v152 = 0;
          v153 = v120 + v116 + 15;
          while (v152 < v239)
          {
            v227 = v152;
            v154 = 0;
            v156 = *(&v278 + 1);
            v155 = v278;
            do
            {
              if (v107 - v154 >= v108)
              {
                v157 = v108;
              }

              else
              {
                v157 = v107 - v154;
              }

              if (v229)
              {
                v236 = v235 * v157;
                v237 = 1;
                v229(v155, 1, 0, 1, v110, 1, &v236, 0);
                v155 = v110;
              }

              if (v222)
              {
                v158 = v118;
              }

              else
              {
                v158 = v155;
              }

              if (v222)
              {
                v159 = v155;
              }

              else
              {
                v159 = v118;
              }

              v233(v158, 1, v159, 1, v120, 1, v235 * v157, 1, a8);
              if (v221)
              {
                v236 = v235 * v157;
                v237 = 1;
                v221(v120, 1, 0, 1, v153 & 0xFFFFFFFFFFFFFFF0, 1, &v236, 0);
                v236 = v157;
                v237 = 1;
                v215(v153 & 0xFFFFFFFFFFFFFFF0, 1, v279, 1, v156, 1, &v236, &v257);
              }

              else
              {
                v236 = v157;
                v237 = 1;
                v215(v120, 1, v279, 1, v156, 1, &v236, &v257);
              }

              *&v279 = v279 + v157;
              v155 = (v278 + v157 * v231);
              v156 = *(&v278 + 1) + v257 * v157;
              *&v278 = v155;
              *(&v278 + 1) = v156;
              v154 += v108;
            }

            while (v154 < v107);
            v152 = v227 + 1;
            sub_100267D14(v238);
          }
        }
      }

      else
      {
        for (k = 0; k < v239; ++k)
        {
          v146 = 0;
          v148 = *(&v278 + 1);
          v147 = v278;
          do
          {
            if (v107 - v146 >= v108)
            {
              v149 = v108;
            }

            else
            {
              v149 = v107 - v146;
            }

            if (v229)
            {
              v236 = v235 * v149;
              v237 = 1;
              v229(v147, 1, 0, 1, v110, 1, &v236, 0);
              v147 = v110;
            }

            if (v222)
            {
              v150 = v118;
            }

            else
            {
              v150 = v147;
            }

            if (v222)
            {
              v151 = v147;
            }

            else
            {
              v151 = v118;
            }

            v233(v150, 1, v151, 1, v148, 1, v235 * v149, 1, a8);
            v147 = (v278 + v149 * v231);
            v148 = *(&v278 + 1) + v257 * v149;
            *&v278 = v147;
            *(&v278 + 1) = v148;
            v146 += v108;
          }

          while (v146 < v107);
          sub_100267D14(v238);
        }
      }
    }

    else
    {
      v144 = -1;
      while (++v144 < v239)
      {
        sub_100267D14(v238);
      }
    }

    goto LABEL_444;
  }

  v280 = &v267;
  v281 = &v258;
  v282 = &v249;
  v283 = &v241;
  v284 = 0;
  v278 = 0u;
  v279 = 0u;
  sub_100267CC8(v238, &v280, &v278, -1);
  if (v229)
  {
    v111 = 1;
  }

  else
  {
    v111 = !v216;
  }

  if (v225)
  {
    v111 = 1;
  }

  if (v72)
  {
    v111 = 1;
  }

  if (v240 >= v99)
  {
    v112 = (v98 + 1023) / v98;
  }

  else
  {
    v112 = v240;
  }

  v223 = v240;
  if (v111)
  {
    v113 = v112;
  }

  else
  {
    v113 = v240;
  }

  v114 = v113 * v106 + 64;
  if (*(&v285 + 1) >= v114)
  {
    *(&v285 + 1) = v113 * v106 + 64;
    v115 = v285;
  }

  else
  {
    v115 = v285;
    if (v285 != &v286)
    {
      if (v285)
      {
        operator delete[]();
      }

      v115 = &v286;
      *&v285 = &v286;
    }

    *(&v285 + 1) = v113 * v106 + 64;
    if (v114 >= 0x409)
    {
      operator new[]();
    }
  }

  v128 = v113 * v98;
  if (v229)
  {
    v129 = (v115 + v113 * v98 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v129 = v115;
  }

  if (v225)
  {
    v130 = v129;
  }

  else
  {
    v130 = 0;
  }

  v211 = v130;
  v213 = v129;
  if (v225)
  {
    v129 = (v129 + v128 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v221)
  {
    v131 = 1;
  }

  else
  {
    v131 = !v216;
  }

  v219 = v131;
  if (v240)
  {
    v132 = 0;
    v217 = (((v40 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v40 & 7))) & 3);
    v209 = v129 + v128 + 15;
    while (1)
    {
      if (v132 >= v239)
      {
        goto LABEL_444;
      }

      v133 = v129;
      v134 = 0;
      v136 = *(&v278 + 1);
      v135 = v278;
      v137 = v223;
      v138 = v279;
      do
      {
        v139 = v137;
        v56 = v137 >= v113;
        v137 -= v113;
        if (v56)
        {
          v140 = v113;
        }

        else
        {
          v140 = v139;
        }

        if (v229)
        {
          v236 = v235 * v140;
          v237 = 1;
          v229(v135, 1, 0, 1, v115, 1, &v236, 0);
          v141 = v115;
          if (v278 == *(&v278 + 1))
          {
            v142 = v115;
          }

          else
          {
            v142 = v136;
          }

          if (v278 == *(&v278 + 1))
          {
            goto LABEL_332;
          }
        }

        else
        {
          v141 = v135;
          if (v135 == v136)
          {
            v142 = v135;
          }

          else
          {
            v142 = v136;
          }

          if (v135 == v136)
          {
            goto LABEL_332;
          }
        }

        if (v225)
        {
          v236 = v235 * v140;
          v237 = 1;
          v225(v136, 1, 0, 1, v213, 1, &v236, 0);
          v142 = v211;
        }

LABEL_332:
        if (v219)
        {
          v233(v141, 1, v142, 1, v133, 0, v235 * v140, 1, a8);
          if (v216)
          {
            v236 = v235 * v140;
            v237 = 1;
            v221(v133, 1, 0, 1, v138, 1, &v236, 0);
          }

          else
          {
            if (v221)
            {
              v236 = v235 * v140;
              v237 = 1;
              v221(v133, 1, 0, 1, v209 & 0xFFFFFFFFFFFFFFF0, 1, &v236, 0);
              v236 = v140;
              v237 = 1;
              v215(v209 & 0xFFFFFFFFFFFFFFF0, 1, *(&v279 + 1), 1, v138, 1, &v236, &v257);
            }

            else
            {
              v236 = v140;
              v237 = 1;
              v215(v133, 1, *(&v279 + 1), 1, v138, 1, &v236, &v257);
            }

            *(&v279 + 1) += v140;
          }
        }

        else
        {
          (v233)(v141, 1);
        }

        v135 = (v278 + v140 * v231);
        v136 = *(&v278 + 1) + v140 * v217;
        *&v278 = v135;
        *(&v278 + 1) = v136;
        v138 = v279 + v257 * v140;
        *&v279 = v138;
        v134 += v113;
      }

      while (v134 < v223);
      ++v132;
      sub_100267D14(v238);
      v129 = v133;
    }
  }

  v143 = -1;
  while (++v143 < v239)
  {
    sub_100267D14(v238);
  }

LABEL_444:
  if (v285 != &v286 && v285 != 0)
  {
    operator delete[]();
  }

  if (v245 && atomic_fetch_add((v245 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v241);
  }

  v245 = 0;
  v242 = 0u;
  v243 = 0u;
  if (SDWORD1(v241) >= 1)
  {
    v179 = 0;
    v180 = v246;
    do
    {
      *&v180[4 * v179++] = 0;
    }

    while (v179 < SDWORD1(v241));
  }

  if (v247 != v248)
  {
    j__free(v247);
  }

  if (v253 && atomic_fetch_add((v253 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v249);
  }

  v253 = 0;
  v250 = 0u;
  v251 = 0u;
  if (SDWORD1(v249) >= 1)
  {
    v181 = 0;
    v182 = v254;
    do
    {
      *&v182[4 * v181++] = 0;
    }

    while (v181 < SDWORD1(v249));
  }

  if (v255 != v256)
  {
    j__free(v255);
  }

  if (v262 && atomic_fetch_add((v262 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v258);
  }

  v262 = 0;
  v259 = 0u;
  v260 = 0u;
  if (SDWORD1(v258) >= 1)
  {
    v183 = 0;
    v184 = v263;
    do
    {
      *&v184[4 * v183++] = 0;
    }

    while (v183 < SDWORD1(v258));
  }

  if (v264 != &v265)
  {
    j__free(v264);
  }

  if (v271 && atomic_fetch_add((v271 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v267);
  }

  v271 = 0;
  v268 = 0u;
  v269 = 0u;
  if (SDWORD1(v267) >= 1)
  {
    v185 = 0;
    v186 = v272;
    do
    {
      *&v186[4 * v185++] = 0;
    }

    while (v185 < SDWORD1(v267));
  }

  if (v273 != &v274)
  {
    j__free(v273);
  }
}

void sub_1001DCF58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001DD0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (STACK[0x2D0] != a11 && STACK[0x2D0] != 0)
  {
    operator delete[]();
  }

  sub_100006D14(&a37);
  sub_100006D14(&a49);
  sub_100006D14(&a63);
  sub_100006D14(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_1001DD10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1002ACE7C(v10, &off_100473748);
  sub_1001DAFD0(a1, a2, a3, a4, a5, off_1004AFF10, 0, 0);
  if (v11)
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1001DD1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v7, &off_100473768);
  v6 = sub_100276DA4();
  sub_1001DAFD0(a1, a2, a3, v6, -1, off_1004AFF50, 0, 0);
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1001DD250(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v12 = a5;
  sub_1002ACE7C(v10, &off_100473788);
  v9 = sub_100276DA4();
  sub_1001DAFD0(a1, a2, a3, v9, a4, off_1004AFF90, 1, &v12);
  if (v11)
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1001DD2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1001DD2F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v12 = a5;
  sub_1002ACE7C(v10, &off_1004737A8);
  v9 = sub_100276DA4();
  sub_1001DAFD0(a1, a2, a3, v9, a4, off_1004B00A8, 1, &v12);
  if (v11)
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1001DD384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1001DD398(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v10 = a4;
  sub_1002ACE7C(v8, &off_1004737C8);
  v7 = sub_100276DA4();
  sub_1001DAFD0(a1, a1, a2, v7, a3, off_1004B00E8, 1, &v10);
  if (v9)
  {
    sub_1002ACC1C(v8);
  }
}

void sub_1001DD424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1001DD438(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7)
{
  sub_1002ACE7C(v15, &off_1004737E8);
  *v17 = a5;
  *&v17[1] = a6;
  *&v17[2] = a7;
  v14 = sub_100276DA4();
  sub_1001DAFD0(a1, a2, a3, v14, a4, off_1004AFFD0, 1, v17);
  if (v16)
  {
    sub_1002ACC1C(v15);
  }
}

void sub_1001DD510(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DD540(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v131 = a4;
  sub_1002ACE7C(v129, &off_100473808);
  if (a4 >= 6)
  {
    *v140 = 0;
    *&v140[8] = 0;
    qmemcpy(sub_1002A80E0(v140, 92), "op == CMP_LT || op == CMP_LE || op == CMP_EQ || op == CMP_NE || op == CMP_GE || op == CMP_GT", 92);
    sub_1002A8980(-215, v140, "compare", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 1234);
  }

  v8 = sub_100271148(a1);
  if ((v8 == 0x20000) == (sub_100271148(a2) == 0x20000) && sub_100273410(a1, a2) && (v9 = sub_100271A88(a1, -1), v9 == sub_100271A88(a2, -1)))
  {
    v10 = 0;
  }

  else
  {
    v11 = sub_100271A88(a2, -1);
    v12 = sub_100271148(a1);
    v13 = sub_100271148(a2);
    if (sub_10027377C(a1, -1) <= 2 && sub_100274628(a1, -1) && ((sub_100271154(a1, 0xFFFFFFFF, v140), *v140 == 1) || *&v140[4] == 1) && (v12 == 0x20000 || v13 != 0x20000))
    {
      v83 = (v11 >> 3) & 0x1FF;
      v84 = *v140 == v83 + 1;
      if (*&v140[4] != 1)
      {
        v84 = 0;
      }

      v85 = *&v140[4] == v83 + 1 || *&v140[4] == 1;
      if (*v140 != 1)
      {
        v85 = 0;
      }

      v14 = 1;
      if (!v85 && !v84)
      {
        v14 = 0;
        if (*v140 == 1 && *&v140[4] == 4)
        {
          v86 = sub_100271A88(a1, -1);
          v14 = v83 < 4 && v86 == 6;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_100271A88(a1, -1);
    v16 = sub_100271148(a2);
    v17 = sub_100271148(a1);
    if (sub_10027377C(a2, -1) <= 2 && sub_100274628(a2, -1) && ((sub_100271154(a2, 0xFFFFFFFF, v140), *v140 == 1) || *&v140[4] == 1) && (v16 == 0x20000 || v17 != 0x20000))
    {
      v88 = (v15 >> 3) & 0x1FF;
      v89 = *v140 == v88 + 1;
      if (*&v140[4] != 1)
      {
        v89 = 0;
      }

      v90 = *&v140[4] == v88 + 1 || *&v140[4] == 1;
      v91 = *v140 == 1 && v90;
      v18 = 1;
      if (!v91 && !v89)
      {
        v18 = 0;
        if (*v140 == 1 && *&v140[4] == 4)
        {
          v92 = sub_100271A88(a2, -1);
          v18 = v88 < 4 && v92 == 6;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    if (v14 && (v18 & 1) == 0)
    {
      if ((v131 - 2) >= 3)
      {
        if (v131 == 1)
        {
          v19 = 3;
        }

        else
        {
          v19 = v131;
        }
      }

      else
      {
        v19 = dword_1003E3820[v131 - 2];
      }

      v131 = v19;
      sub_1001DD540(a2, a1, a3);
      goto LABEL_169;
    }

    if (v14 == v18)
    {
      *v140 = 0;
      *&v140[8] = 0;
      qmemcpy(sub_1002A80E0(v140, 139), "The operation is neither 'array op array' (where arrays have the same size and the same type), nor 'array op scalar', nor 'scalar op array'", 139);
      sub_1002A8980(-209, v140, "compare", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/arithm.cpp", 1256);
    }

    v10 = 1;
  }

  v20 = sub_100271148(a1);
  v21 = sub_100271148(a2);
  if (sub_100271148(a1) == 0x10000)
  {
    v22 = *(a1 + 8);
    v23 = *v22;
    v24 = *(v22 + 16);
    v122 = *v22;
    v123 = v24;
    v124 = *(v22 + 32);
    v25 = *(v22 + 56);
    *&v125 = *(v22 + 48);
    *(&v125 + 1) = v25;
    v126 = &v122 + 1;
    v127 = v128;
    v128[0] = 0;
    v128[1] = 0;
    if (v25)
    {
      atomic_fetch_add((v25 + 20), 1u);
      if (*(v22 + 4) <= 2)
      {
LABEL_31:
        v26 = *(v22 + 72);
        v27 = v127;
        *v127 = *v26;
        v27[1] = v26[1];
        goto LABEL_39;
      }
    }

    else if (SDWORD1(v23) <= 2)
    {
      goto LABEL_31;
    }

    DWORD1(v122) = 0;
    sub_100269B58(&v122, v22);
  }

  else
  {
    sub_1002703C0(a1, -1, &v122);
  }

LABEL_39:
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, -1, &v115);
    goto LABEL_46;
  }

  v28 = *(a2 + 8);
  v29 = *v28;
  v30 = *(v28 + 16);
  v115 = *v28;
  v116 = v30;
  v117 = *(v28 + 32);
  v31 = *(v28 + 56);
  *&v118 = *(v28 + 48);
  *(&v118 + 1) = v31;
  v119 = &v115 + 1;
  v120 = v121;
  v121[0] = 0;
  v121[1] = 0;
  if (!v31)
  {
    if (SDWORD1(v29) <= 2)
    {
      goto LABEL_42;
    }

LABEL_45:
    DWORD1(v115) = 0;
    sub_100269B58(&v115, v28);
    goto LABEL_46;
  }

  atomic_fetch_add((v31 + 20), 1u);
  if (*(v28 + 4) > 2)
  {
    goto LABEL_45;
  }

LABEL_42:
  v32 = *(v28 + 72);
  v33 = v120;
  *v120 = *v32;
  v33[1] = v32[1];
LABEL_46:
  if (v20 != v21 || SDWORD1(v122) > 2 || SDWORD1(v115) >= 3)
  {
    v35 = v122;
    v36 = v115;
    v34 = v126;
    goto LABEL_56;
  }

  v34 = v126;
  v35 = v122;
  v36 = v115;
  if (*(v126 + 1) != *(v119 + 1) || (v37 = *v126, *v126 != *v119) || ((v115 ^ v122) & 0xFFF) != 0)
  {
LABEL_56:
    sub_10026BEEC(a3, SDWORD1(v122), v34, v35 & 0xFF8, -1, 0, 0);
    sub_10026E1E0(&v122, 1, 0, v140);
    if (*(&v125 + 1) && atomic_fetch_add((*(&v125 + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v122);
    }

    if (SDWORD1(v122) >= 1)
    {
      v43 = 0;
      v44 = v126;
      do
      {
        *(v44 + v43++) = 0;
      }

      while (v43 < SDWORD1(v122));
    }

    v122 = *v140;
    v123 = *&v140[16];
    v124 = *&v140[32];
    v125 = *&v140[48];
    v45 = v127;
    if (v127 == v128)
    {
      v46 = v142;
      if (*&v140[4] <= 2)
      {
        goto LABEL_64;
      }
    }

    else
    {
      j__free(v127);
      v126 = &v122 + 1;
      v127 = v128;
      v45 = v128;
      v46 = v142;
      if (*&v140[4] <= 2)
      {
LABEL_64:
        *v45 = *v46;
        v45[1] = v46[1];
        goto LABEL_67;
      }
    }

    v126 = v141;
    v127 = v46;
    v141 = &v140[8];
    v142 = &v143;
LABEL_67:
    *v140 = 1124007936;
    memset(&v140[4], 0, 60);
    if (v142 != &v143)
    {
      j__free(v142);
    }

    sub_10026E1E0(&v115, 1, 0, v140);
    if (*(&v118 + 1) && atomic_fetch_add((*(&v118 + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v115);
    }

    if (SDWORD1(v115) >= 1)
    {
      v47 = 0;
      v48 = v119;
      do
      {
        *(v48 + v47++) = 0;
      }

      while (v47 < SDWORD1(v115));
    }

    v115 = *v140;
    v116 = *&v140[16];
    v117 = *&v140[32];
    v118 = *&v140[48];
    v49 = v120;
    if (v120 == v121)
    {
      v50 = v142;
      if (*&v140[4] <= 2)
      {
        goto LABEL_77;
      }
    }

    else
    {
      j__free(v120);
      v119 = &v115 + 1;
      v120 = v121;
      v49 = v121;
      v50 = v142;
      if (*&v140[4] <= 2)
      {
LABEL_77:
        *v49 = *v50;
        v49[1] = v50[1];
        goto LABEL_80;
      }
    }

    v119 = v141;
    v120 = v50;
    v141 = &v140[8];
    v142 = &v143;
LABEL_80:
    *v140 = 1124007936;
    memset(&v140[4], 0, 60);
    if (v142 != &v143)
    {
      j__free(v142);
    }

    if (sub_100271148(a3) != 0x10000)
    {
      sub_1002703C0(a3, -1, v140);
      goto LABEL_89;
    }

    v51 = *(a3 + 8);
    v52 = *v51;
    v53 = *(v51 + 16);
    *v140 = *v51;
    *&v140[16] = v53;
    *&v140[32] = *(v51 + 32);
    v54 = *(v51 + 56);
    *&v140[48] = *(v51 + 48);
    *&v140[56] = v54;
    v141 = &v140[8];
    v142 = &v143;
    v143 = 0;
    v144 = 0;
    if (v54)
    {
      atomic_fetch_add((v54 + 20), 1u);
      if (*(v51 + 4) <= 2)
      {
LABEL_85:
        v55 = *(v51 + 72);
        v56 = v142;
        *v142 = *v55;
        v56[1] = v55[1];
LABEL_89:
        sub_10026E1E0(v140, 1, 0, v107);
        if (*&v140[56] && atomic_fetch_add((*&v140[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v140);
        }

        *&v140[56] = 0;
        memset(&v140[16], 0, 32);
        if (*&v140[4] >= 1)
        {
          v57 = 0;
          v58 = v141;
          do
          {
            *(v58 + v57++) = 0;
          }

          while (v57 < *&v140[4]);
        }

        if (v142 != &v143)
        {
          j__free(v142);
        }

        v59 = v35 & 7;
        if (SDWORD1(v122) >= 1 && (v60 = v127[DWORD1(v122) - 1]) != 0)
        {
          v61 = off_100473828[v35 & 7];
          if (v10)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v60 = 1;
          v61 = off_100473828[v35 & 7];
          if (v10)
          {
LABEL_100:
            v152[0] = &v122;
            v152[1] = v107;
            v152[2] = 0;
            v151 = 0;
            v150 = 0;
            sub_100267CC8(&v145, v152, &v150, -1);
            v62 = v149;
            if ((v60 + 1023) / v60 >= v149)
            {
              v63 = v149;
            }

            else
            {
              v63 = (v60 + 1023) / v60;
            }

            *v140 = &v140[16];
            *&v140[8] = v63 * v60;
            if (v63 * v60 >= 0x409)
            {
              operator new[]();
            }

            if (v59 >= 5)
            {
              sub_1001D90B0(&v115, v59, &v140[16], v63);
              goto LABEL_107;
            }

            v106 = 0.0;
            v71 = sub_100201044(v36 & 7, 6);
            *&v132 = 0x100000001;
            v71(v116, 1, 0, 1, &v106, 1, &v132, 0);
            if (v106 >= dbl_1003E37A0[v35 & 7])
            {
              if (v106 <= dbl_1003E37E0[v35 & 7])
              {
                v105 = rint(v106);
                if (v106 != v105)
                {
                  if ((v131 & 0xFFFFFFFE) == 2)
                  {
                    v94 = v106;
                    if (v106 > v106)
                    {
                      ++v94;
                    }
                  }

                  else
                  {
                    if (v131 != 4 && v131 != 1)
                    {
                      if (v131 == 5)
                      {
                        v104 = 255;
                      }

                      else
                      {
                        v104 = 0;
                      }

                      *&v132 = v104;
                      *(&v132 + 1) = v104;
                      *&v133 = v104;
                      *(&v133 + 1) = v104;
                      sub_10022CAFC(v107, &v132);
LABEL_134:
                      if (*v140 != &v140[16] && *v140)
                      {
                        goto LABEL_144;
                      }

                      goto LABEL_145;
                    }

                    v94 = v106 - (v106 < v106);
                  }

                  v105 = v94;
                }

                *&v133 = &v105;
                *(&v133 + 1) = &v105;
                v135 = 0;
                v136 = 0;
                v137 = &v132 + 1;
                v138 = &v139;
                v132 = xmmword_1003E36E0;
                v139 = vdupq_n_s64(4uLL);
                *&v134 = &v106;
                *(&v134 + 1) = &v106;
                sub_1001D90B0(&v132, v59, &v140[16], v63);
                if (v136 && atomic_fetch_add((v136 + 20), 0xFFFFFFFF) == 1)
                {
                  sub_100269BC8(&v132);
                }

                v136 = 0;
                v133 = 0u;
                v134 = 0u;
                if (SDWORD1(v132) >= 1)
                {
                  v95 = 0;
                  v96 = v137;
                  do
                  {
                    *(v96 + v95++) = 0;
                  }

                  while (v95 < SDWORD1(v132));
                }

                if (v138 != &v139)
                {
                  j__free(v138);
                }

LABEL_107:
                if (v62)
                {
                  for (i = 0; i < v148; ++i)
                  {
                    v65 = 0;
                    v66 = v150;
                    v67 = v151;
                    do
                    {
                      if (v62 - v65 >= v63)
                      {
                        v68 = v63;
                      }

                      else
                      {
                        v68 = v62 - v65;
                      }

                      v61(v66, 0, &v140[16], 0, v67, 0, v68, 1, &v131);
                      v66 = v150 + v68 * v60;
                      v150 = v66;
                      v67 = v151 + v68;
                      v151 = v67;
                      v65 += v63;
                    }

                    while (v65 < v62);
                    sub_100267D14(&v145);
                  }
                }

                else
                {
                  v75 = -1;
                  while (++v75 < v148)
                  {
                    sub_100267D14(&v145);
                  }
                }

                if (*v140 != &v140[16] && *v140 != 0)
                {
LABEL_144:
                  operator delete[]();
                }

LABEL_145:
                if (v111 && atomic_fetch_add((v111 + 20), 0xFFFFFFFF) == 1)
                {
                  sub_100269BC8(v107);
                }

                v111 = 0;
                v109 = 0u;
                v110 = 0u;
                if (v108 >= 1)
                {
                  v77 = 0;
                  v78 = v112;
                  do
                  {
                    *(v78 + 4 * v77++) = 0;
                  }

                  while (v77 < v108);
                }

                if (v113 != &v114)
                {
                  j__free(v113);
                }

                goto LABEL_153;
              }

              if (v131 == 5)
              {
                v74 = 255;
              }

              else
              {
                v74 = 0;
              }

              v73 = v74;
              if ((v131 - 3) < 2)
              {
                v73 = 255.0;
              }
            }

            else
            {
              if (v131 == 5)
              {
                v72 = 255;
              }

              else
              {
                v72 = 0;
              }

              v73 = v72;
              if ((v131 - 1) < 2)
              {
                v73 = 255.0;
              }
            }

            *&v132 = v73;
            *(&v132 + 1) = v73;
            *&v133 = v73;
            *(&v133 + 1) = v73;
            sub_10022CAFC(v107, &v132);
            goto LABEL_134;
          }
        }

        *&v132 = &v122;
        *(&v132 + 1) = &v115;
        *&v133 = v107;
        *(&v133 + 1) = 0;
        v146 = 0;
        v145 = 0;
        v147 = 0;
        sub_100267CC8(v140, &v132, &v145, -1);
        v69 = *&v140[40];
        v70 = -1;
        while (++v70 < *&v140[32])
        {
          v61(v145, 0, v146, 0, v147, 0, v69, 1, &v131);
          sub_100267D14(v140);
        }

        goto LABEL_145;
      }
    }

    else if (SDWORD1(v52) <= 2)
    {
      goto LABEL_85;
    }

    *&v140[4] = 0;
    sub_100269B58(v140, v51);
    goto LABEL_89;
  }

  *v140 = *(v126 + 1);
  *&v140[4] = v37;
  sub_100275370(a3, v140, v122 & 0xFF8, -1, 0, 0);
  if (sub_100271148(a3) == 0x10000)
  {
    v38 = *(a3 + 8);
    v39 = *v38;
    v40 = *(v38 + 16);
    *v140 = *v38;
    *&v140[16] = v40;
    *&v140[32] = *(v38 + 32);
    v41 = *(v38 + 56);
    *&v140[48] = *(v38 + 48);
    *&v140[56] = v41;
    v141 = &v140[8];
    v142 = &v143;
    v143 = 0;
    v144 = 0;
    if (v41)
    {
      atomic_fetch_add((v41 + 20), 1u);
      v42 = *(v38 + 4);
    }

    else
    {
      v42 = DWORD1(v39);
    }

    if (v42 > 2)
    {
      *&v140[4] = 0;
      sub_100269B58(v140, v38);
    }

    else
    {
      v97 = *(v38 + 72);
      v98 = v142;
      *v142 = *v97;
      v98[1] = v97[1];
    }
  }

  else
  {
    sub_1002703C0(a3, -1, v140);
  }

  v99 = DWORD2(v122);
  v100 = ((v122 >> 3) & 0x1FF) + 1;
  if ((v122 & v115 & *v140 & 0x4000) != 0 && (v101 = SHIDWORD(v122) * v100 * SDWORD2(v122), v101 == v101))
  {
    v99 = 1;
  }

  else
  {
    v101 = (HIDWORD(v122) * v100);
  }

  off_100473828[v122 & 7](v123, v128[0], v116, v121[0], *&v140[16], v143, v101, v99, &v131);
  if (*&v140[56] && atomic_fetch_add((*&v140[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v140);
  }

  *&v140[56] = 0;
  memset(&v140[16], 0, 32);
  if (*&v140[4] >= 1)
  {
    v102 = 0;
    v103 = v141;
    do
    {
      *(v103 + v102++) = 0;
    }

    while (v102 < *&v140[4]);
  }

  if (v142 != &v143)
  {
    j__free(v142);
  }

LABEL_153:
  if (*(&v118 + 1) && atomic_fetch_add((*(&v118 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v115);
  }

  *(&v118 + 1) = 0;
  v116 = 0u;
  v117 = 0u;
  if (SDWORD1(v115) >= 1)
  {
    v79 = 0;
    v80 = v119;
    do
    {
      *(v80 + v79++) = 0;
    }

    while (v79 < SDWORD1(v115));
  }

  if (v120 != v121)
  {
    j__free(v120);
  }

  if (*(&v125 + 1) && atomic_fetch_add((*(&v125 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v122);
  }

  *(&v125 + 1) = 0;
  v123 = 0u;
  v124 = 0u;
  if (SDWORD1(v122) >= 1)
  {
    v81 = 0;
    v82 = v126;
    do
    {
      *(v82 + v81++) = 0;
    }

    while (v81 < SDWORD1(v122));
  }

  if (v127 != v128)
  {
    j__free(v127);
  }

LABEL_169:
  if (v130)
  {
    sub_1002ACC1C(v129);
  }
}

void sub_1001DE628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v52 = *(v50 + 320);
  if (v52 != a10 && v52 != 0)
  {
    operator delete[]();
  }

  sub_100006D14(&a13);
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_1001D8BF4(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DE818(int *a1, unsigned int a2, int a3, int a4)
{
  if (sub_10027377C(a1, -1) > 2)
  {
    return 0;
  }

  result = sub_100274628(a1, -1);
  if (result)
  {
    sub_100271154(a1, 0xFFFFFFFF, &v14);
    if (v14 == 1 || v15 == 1)
    {
      if (a3 == 0x20000 || a4 != 0x20000)
      {
        v9 = (a2 >> 3) & 0x1FF;
        v10 = v14 == v9 + 1;
        if (v15 != 1)
        {
          v10 = 0;
        }

        v11 = v15 == v9 + 1 || v15 == 1;
        if (v14 != 1)
        {
          v11 = 0;
        }

        result = 1;
        if (!v11 && !v10)
        {
          result = 0;
          if (v14 == 1 && v15 == 4)
          {
            v12 = sub_100271A88(a1, -1);
            return v9 < 4 && v12 == 6;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001DE958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = a7 - 4;
    do
    {
      if (a7 >= 32)
      {
        v10 = 16;
        do
        {
          v11 = vqaddq_u8(*(result + v10), *(a3 + v10));
          v12 = (a5 + v10);
          v12[-1] = vqaddq_u8(*(result + v10 - 16), *(a3 + v10 - 16));
          *v12 = v11;
          v13 = v10 + 16;
          v10 += 32;
        }

        while (v13 <= a7 - 32);
        v9 = (v10 - 16);
        if (v9 > v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0;
        if (v8 < 0)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v14 = byte_1003E59DE[*(a3 + v9 + 1) + 256 + *(result + v9 + 1)];
        v15 = (a5 + v9);
        *v15 = byte_1003E59DE[*(a3 + v9) + 256 + *(result + v9)];
        v15[1] = v14;
        v16 = byte_1003E59DE[*(a3 + v9 + 3) + 256 + *(result + v9 + 3)];
        v15[2] = byte_1003E59DE[*(a3 + v9 + 2) + 256 + *(result + v9 + 2)];
        v15[3] = v16;
        v9 += 4;
      }

      while (v9 <= v8);
      v9 = v9;
LABEL_12:
      if (v9 < a7)
      {
        do
        {
          *(a5 + v9) = byte_1003E59DE[*(a3 + v9) + 256 + *(result + v9)];
          ++v9;
        }

        while (a7 != v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001DEA98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v10 = a5 - result;
    v48 = a5 - a3;
    v11 = a5 + 4;
    v12 = result + 4;
    v13 = a3 + 4;
    do
    {
      if (a7 >= 32)
      {
        v14 = 0;
        do
        {
          v15 = vqaddq_s8(*(result + v14 + 16), *(a3 + v14 + 16));
          v16 = (a5 + v14);
          *v16 = vqaddq_s8(*(result + v14), *(a3 + v14));
          v16[1] = v15;
          v14 += 32;
        }

        while (v14 <= a7 - 32);
        v14 = v14;
        if (v14 <= v9)
        {
LABEL_10:
          v17 = v14 + 4;
          if (v14 + 4 <= v9 + 1)
          {
            v17 = v9 + 1;
          }

          v18 = v17 + ~v14;
          if (v18 <= 0x3B || ((v30 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + v14, v31 = v11 + v8 * a6 + v30, a5 + v14 < (v13 + v8 * a4 + v30)) ? (v32 = a3 + v14 >= v31) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), result + v14 < v31 ? (v34 = a5 + v14 >= (v12 + v8 * a2 + v30)) : (v34 = 1), !v34 || (v33 & 1) != 0))
          {
            v19 = v14;
          }

          else
          {
            v35 = (v18 >> 2) + 1;
            v19 = v14 + 4 * (v35 & 0x7FFFFFFFFFFFFFF0);
            v36 = v35 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v37 = (a5 + v14);
              v38 = vqaddq_s8(*(result + v14 + 16), *(a3 + v14 + 16));
              v39 = vqaddq_s8(*(result + v14), *(a3 + v14));
              v40 = vqaddq_s8(*(result + v14 + 48), *(a3 + v14 + 48));
              v37[2] = vqaddq_s8(*(result + v14 + 32), *(a3 + v14 + 32));
              v37[3] = v40;
              *v37 = v39;
              v37[1] = v38;
              v14 += 64;
              v36 -= 16;
            }

            while (v36);
            if (v35 == (v35 & 0x7FFFFFFFFFFFFFF0))
            {
LABEL_31:
              v14 = v19;
              goto LABEL_32;
            }
          }

          do
          {
            v20 = (result + v19);
            v21 = (a3 + v19);
            v22 = *(result + v19) + *(a3 + v19);
            if (v22 >= 127)
            {
              v22 = 127;
            }

            if (v22 <= -128)
            {
              LOBYTE(v22) = 0x80;
            }

            v23 = v20[1] + v21[1];
            if (v23 >= 127)
            {
              v23 = 127;
            }

            if (v23 <= -128)
            {
              LOBYTE(v23) = 0x80;
            }

            v24 = (a5 + v19);
            *v24 = v22;
            v24[1] = v23;
            v25 = v20[2] + v21[2];
            if (v25 >= 127)
            {
              v25 = 127;
            }

            if (v25 <= -128)
            {
              LOBYTE(v25) = 0x80;
            }

            v26 = v20[3] + v21[3];
            if (v26 >= 127)
            {
              v26 = 127;
            }

            if (v26 <= -128)
            {
              LOBYTE(v26) = 0x80;
            }

            v24[2] = v25;
            v24[3] = v26;
            v19 += 4;
          }

          while (v19 <= v9);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = 0;
        if (v9 >= 0)
        {
          goto LABEL_10;
        }
      }

LABEL_32:
      if (v14 < a7)
      {
        v27 = a7 - v14;
        if (v27 < 8)
        {
          v28 = v14;
          goto LABEL_35;
        }

        if ((v10 + (a6 - a2) * v8) < 0x20)
        {
          v28 = v14;
          goto LABEL_35;
        }

        if ((v48 + (a6 - a4) * v8) < 0x20)
        {
          v28 = v14;
          goto LABEL_35;
        }

        if (v27 >= 0x20)
        {
          v41 = v27 & 0xFFFFFFFFFFFFFFE0;
          v42 = v14;
          v43 = v27 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v44 = vqaddq_s8(*(result + v42 + 16), *(a3 + v42 + 16));
            v45 = (a5 + v42);
            *v45 = vqaddq_s8(*(result + v42), *(a3 + v42));
            v45[1] = v44;
            v42 += 32;
            v43 -= 32;
          }

          while (v43);
          if (v27 == v41)
          {
            goto LABEL_3;
          }

          if ((v27 & 0x18) == 0)
          {
            v28 = v41 + v14;
            do
            {
LABEL_35:
              v29 = *(result + v28) + *(a3 + v28);
              if (v29 >= 127)
              {
                v29 = 127;
              }

              if (v29 <= -128)
              {
                LOBYTE(v29) = 0x80;
              }

              *(a5 + v28++) = v29;
            }

            while (a7 != v28);
            goto LABEL_3;
          }
        }

        else
        {
          v41 = 0;
        }

        v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + v14;
        v46 = v41 - (v27 & 0xFFFFFFFFFFFFFFF8);
        v47 = v41 + v14;
        do
        {
          *(a5 + v47) = vqadd_s8(*(result + v47), *(a3 + v47));
          v47 += 8;
          v46 += 8;
        }

        while (v46);
        if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_35;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001DEE08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v59 = a5 - result;
    v58 = a5 - a3;
    v10 = a5 + 8;
    v11 = result + 8;
    v12 = a3 + 8;
    v13 = a5 + 4;
    do
    {
      if (a7 >= 16)
      {
        v15 = 0;
        v14 = 0;
        do
        {
          v16 = vqaddq_u16(*(result + v15 + 16), *(a3 + v15 + 16));
          v17 = (a5 + v15);
          *v17 = vqaddq_u16(*(result + v15), *(a3 + v15));
          v17[1] = v16;
          v14 += 16;
          v15 += 32;
        }

        while (v14 <= a7 - 16);
        v14 = v14;
        if (v14 > v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v14 = 0;
        if (v9 < 0)
        {
          goto LABEL_24;
        }
      }

      v18 = v14 + 4;
      if (v14 + 4 <= v9 + 1)
      {
        v18 = v9 + 1;
      }

      v19 = v18 + ~v14;
      if (v19 <= 0x1B)
      {
        goto LABEL_13;
      }

      v35 = v19 >> 2;
      v36 = 2 * v14;
      v37 = a5 + 2 * v14;
      v38 = 2 * v14 + 8 * v35;
      v39 = v10 + v8 * a6 + v38;
      v40 = v37 >= v12 + v8 * a4 + v38 || a3 + 2 * v14 >= v39;
      v41 = !v40;
      if (result + 2 * v14 < v39 && v37 < v11 + v8 * a2 + v38)
      {
        goto LABEL_13;
      }

      if (v41)
      {
        goto LABEL_13;
      }

      v43 = v35 + 1;
      v14 += 4 * (v43 & 0x7FFFFFFFFFFFFFF8);
      v44 = v43 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v45 = *(result + v36 + 48);
        v46 = *(result + v36);
        v47 = *(a3 + v36 + 48);
        v48 = *(a3 + v36);
        v49 = (a5 + v36);
        v50 = vqmovn_high_u32(vqmovn_u32(vaddl_u16(*(a3 + v36 + 16), *(result + v36 + 16))), vaddl_high_u16(*(a3 + v36 + 16), *(result + v36 + 16)));
        v49[2] = vqmovn_high_u32(vqmovn_u32(vaddl_u16(*(a3 + v36 + 32), *(result + v36 + 32))), vaddl_high_u16(*(a3 + v36 + 32), *(result + v36 + 32)));
        v49[3] = vqmovn_high_u32(vqmovn_u32(vaddl_u16(*v47.i8, *v45.i8)), vaddl_high_u16(v47, v45));
        *v49 = vqmovn_high_u32(vqmovn_u32(vaddl_u16(*v48.i8, *v46.i8)), vaddl_high_u16(v48, v46));
        v49[1] = v50;
        v36 += 64;
        v44 -= 8;
      }

      while (v44);
      LODWORD(v24) = v14;
      if (v43 != (v43 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_13:
        v20 = 2 * v14;
        v21 = v13;
        v22 = a3;
        v23 = result;
        v24 = v14;
        do
        {
          v25 = *(v22 + 2 * v14) + *(v23 + 2 * v14);
          if (v25 >= 0xFFFF)
          {
            LOWORD(v25) = -1;
          }

          v26 = v23 + v20;
          v27 = v22 + v20;
          v28 = *(v22 + v20 + 2) + *(v23 + v20 + 2);
          if (v28 >= 0xFFFF)
          {
            LOWORD(v28) = -1;
          }

          v29 = v21 + v20;
          *(v29 - 4) = v25;
          *(v29 - 2) = v28;
          v30 = *(v27 + 4) + *(v26 + 4);
          if (v30 >= 0xFFFF)
          {
            LOWORD(v30) = -1;
          }

          v31 = *(v27 + 6) + *(v26 + 6);
          if (v31 >= 0xFFFF)
          {
            LOWORD(v31) = -1;
          }

          *(v21 + 2 * v14) = v30;
          v24 += 4;
          *(v29 + 2) = v31;
          v23 += 8;
          v22 += 8;
          v21 += 8;
        }

        while (v24 <= v9);
      }

      v14 = v24;
LABEL_24:
      if (v14 < a7)
      {
        v32 = a7 - v14;
        if (v32 < 4)
        {
          v33 = v14;
          goto LABEL_27;
        }

        if ((v59 + (a6 - a2) * v8) < 0x20)
        {
          v33 = v14;
          goto LABEL_27;
        }

        if ((v58 + (a6 - a4) * v8) < 0x20)
        {
          v33 = v14;
          goto LABEL_27;
        }

        if (v32 >= 0x10)
        {
          v51 = v32 & 0xFFFFFFFFFFFFFFF0;
          v52 = 2 * v14;
          v53 = v32 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v54 = vqmovn_high_u32(vqmovn_u32(vaddl_u16(*(a3 + v52 + 16), *(result + v52 + 16))), vaddl_high_u16(*(a3 + v52 + 16), *(result + v52 + 16)));
            v55 = (a5 + v52);
            *v55 = vqmovn_high_u32(vqmovn_u32(vaddl_u16(*(a3 + v52), *(result + v52))), vaddl_high_u16(*(a3 + v52), *(result + v52)));
            v55[1] = v54;
            v52 += 32;
            v53 -= 16;
          }

          while (v53);
          if (v32 == v51)
          {
            goto LABEL_3;
          }

          if ((v32 & 0xC) == 0)
          {
            v33 = v51 + v14;
            do
            {
LABEL_27:
              v34 = *(a3 + 2 * v33) + *(result + 2 * v33);
              if (v34 >= 0xFFFF)
              {
                LOWORD(v34) = -1;
              }

              *(a5 + 2 * v33++) = v34;
            }

            while (a7 != v33);
            goto LABEL_3;
          }
        }

        else
        {
          v51 = 0;
        }

        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + v14;
        v56 = v51 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
        v57 = 2 * (v51 + v14);
        do
        {
          *(a5 + v57) = vqmovn_u32(vaddl_u16(*(a3 + v57), *(result + v57)));
          v57 += 8;
          v56 += 4;
        }

        while (v56);
        if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_27;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      v13 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001DF1D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v57 = a5 - result;
    v55 = a5 - a3;
    v56 = a5 + 8;
    v10 = result + 8;
    v11 = a3 + 8;
    v12 = a5 + 4;
    do
    {
      if (a7 >= 16)
      {
        v14 = 0;
        v13 = 0;
        do
        {
          v15 = vqaddq_s16(*(result + v14 + 16), *(a3 + v14 + 16));
          v16 = (a5 + v14);
          *v16 = vqaddq_s16(*(result + v14), *(a3 + v14));
          v16[1] = v15;
          v13 += 16;
          v14 += 32;
        }

        while (v13 <= a7 - 16);
        v13 = v13;
        if (v13 > v9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v13 = 0;
        if (v9 < 0)
        {
          goto LABEL_32;
        }
      }

      v17 = v13 + 4;
      if (v13 + 4 <= v9 + 1)
      {
        v17 = v9 + 1;
      }

      v18 = v17 + ~v13;
      if (v18 <= 0x1B)
      {
        goto LABEL_13;
      }

      v34 = v18 >> 2;
      v35 = 2 * v13;
      v36 = a5 + 2 * v13;
      v37 = 2 * v13 + 8 * v34;
      v38 = v56 + v8 * a6 + v37;
      v39 = v36 >= v11 + v8 * a4 + v37 || a3 + 2 * v13 >= v38;
      v40 = !v39;
      if (result + 2 * v13 < v38 && v36 < v10 + v8 * a2 + v37)
      {
        goto LABEL_13;
      }

      if (v40)
      {
        goto LABEL_13;
      }

      v42 = v34 + 1;
      v13 += 4 * (v42 & 0x7FFFFFFFFFFFFFF8);
      v43 = v42 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v44 = (a5 + v35);
        v45 = vqaddq_s16(*(result + v35 + 16), *(a3 + v35 + 16));
        v46 = vqaddq_s16(*(result + v35), *(a3 + v35));
        v47 = vqaddq_s16(*(result + v35 + 48), *(a3 + v35 + 48));
        v44[2] = vqaddq_s16(*(result + v35 + 32), *(a3 + v35 + 32));
        v44[3] = v47;
        *v44 = v46;
        v44[1] = v45;
        v35 += 64;
        v43 -= 8;
      }

      while (v43);
      LODWORD(v23) = v13;
      if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_13:
        v19 = 2 * v13;
        v20 = v12;
        v21 = a3;
        v22 = result;
        v23 = v13;
        do
        {
          v24 = *(v22 + 2 * v13) + *(v21 + 2 * v13);
          if (v24 >= 0x7FFF)
          {
            v24 = 0x7FFF;
          }

          if (v24 <= -32768)
          {
            LOWORD(v24) = 0x8000;
          }

          v25 = v22 + v19;
          v26 = v21 + v19;
          v27 = *(v22 + v19 + 2) + *(v21 + v19 + 2);
          if (v27 >= 0x7FFF)
          {
            v27 = 0x7FFF;
          }

          if (v27 <= -32768)
          {
            LOWORD(v27) = 0x8000;
          }

          v28 = v20 + v19;
          *(v28 - 4) = v24;
          *(v28 - 2) = v27;
          v29 = *(v25 + 4) + *(v26 + 4);
          if (v29 >= 0x7FFF)
          {
            v29 = 0x7FFF;
          }

          if (v29 <= -32768)
          {
            LOWORD(v29) = 0x8000;
          }

          v30 = *(v25 + 6) + *(v26 + 6);
          if (v30 >= 0x7FFF)
          {
            v30 = 0x7FFF;
          }

          if (v30 <= -32768)
          {
            LOWORD(v30) = 0x8000;
          }

          *(v20 + 2 * v13) = v29;
          *(v28 + 2) = v30;
          v23 += 4;
          v22 += 8;
          v21 += 8;
          v20 += 8;
        }

        while (v23 <= v9);
      }

      v13 = v23;
LABEL_32:
      if (v13 < a7)
      {
        v31 = a7 - v13;
        if (v31 < 4)
        {
          v32 = v13;
          goto LABEL_35;
        }

        if ((v57 + (a6 - a2) * v8) < 0x20)
        {
          v32 = v13;
          goto LABEL_35;
        }

        if ((v55 + (a6 - a4) * v8) < 0x20)
        {
          v32 = v13;
          goto LABEL_35;
        }

        if (v31 >= 0x10)
        {
          v48 = v31 & 0xFFFFFFFFFFFFFFF0;
          v49 = 2 * v13;
          v50 = v31 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v51 = vqaddq_s16(*(result + v49 + 16), *(a3 + v49 + 16));
            v52 = (a5 + v49);
            *v52 = vqaddq_s16(*(result + v49), *(a3 + v49));
            v52[1] = v51;
            v49 += 32;
            v50 -= 16;
          }

          while (v50);
          if (v31 == v48)
          {
            goto LABEL_3;
          }

          if ((v31 & 0xC) == 0)
          {
            v32 = v48 + v13;
            do
            {
LABEL_35:
              v33 = *(result + 2 * v32) + *(a3 + 2 * v32);
              if (v33 >= 0x7FFF)
              {
                v33 = 0x7FFF;
              }

              if (v33 <= -32768)
              {
                LOWORD(v33) = 0x8000;
              }

              *(a5 + 2 * v32++) = v33;
            }

            while (a7 != v32);
            goto LABEL_3;
          }
        }

        else
        {
          v48 = 0;
        }

        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + v13;
        v53 = v48 - (v31 & 0xFFFFFFFFFFFFFFFCLL);
        v54 = 2 * (v48 + v13);
        do
        {
          *(a5 + v54) = vqadd_s16(*(result + v54), *(a3 + v54));
          v54 += 8;
          v53 += 4;
        }

        while (v53);
        if (v31 != (v31 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_35;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      v12 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001DF594(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v15 = 0;
    v16 = a7;
    v112 = a6 - a2;
    v111 = a6 - a4;
    v17 = (v11 & 0x7FFFFFF8) + 12;
    if (v17 <= v10 + 1)
    {
      v17 = v10 + 1;
    }

    v18 = v17 - (v11 & 0x7FFFFFF8);
    v109 = ((4 * v18 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v110 = v18 - 9;
    v108 = ((v18 - 9) >> 2) + 1;
    v19 = (a5 + 32);
    v20 = (result + 32);
    v21 = (a3 + 32);
    v22 = result;
    v23 = a3;
    v24 = a5;
    v113 = a4;
    v114 = a6;
    while (1)
    {
      v25 = 0;
      v26 = 0;
      v116 = v9;
      v27 = v15 * v8;
      v28 = v15 * a4;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = 8;
      do
      {
        v33 = (v22 + 4 * v26);
        v34 = *v33;
        v35 = v33[1];
        v36 = (v23 + 4 * v26);
        v37 = v36[1];
        v38 = vaddq_s32(*v36, v34);
        v39 = v32;
        v40 = v25;
        v41 = v31;
        v42 = v30;
        v43 = v29;
        v44 = (v24 + 4 * v26);
        v26 += 8;
        v32 += 8;
        ++v25;
        *v44 = v38;
        v44[1] = vaddq_s32(v37, v35);
        v31 += 2;
        v30 += 2;
        v29 = v43 + 2;
      }

      while (v26 <= v11);
      if (v10 >= v26)
      {
        if (v110 <= 0xB)
        {
          goto LABEL_20;
        }

        v50 = 32 * v40;
        v51 = a5 + v15 * a6 + 32 * v40;
        v52 = v51 + 32;
        v53 = v51 + v109;
        v54 = result + v27 + v50;
        v55 = v54 + 32;
        v56 = v54 + v109;
        v57 = a3 + v28 + v50;
        v58 = v52 >= v57 + v109 || v57 + 32 >= v53;
        v59 = !v58;
        if (v55 < v53 && v52 < v56)
        {
          goto LABEL_20;
        }

        if (v59)
        {
          goto LABEL_20;
        }

        v39 += 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
        v61 = v108 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = v42[2];
          v63 = v42[3];
          v64 = *v42;
          v65 = v42[1];
          v42 += 4;
          v66 = v43[2];
          v67 = v43[3];
          v68 = *v43;
          v69 = v43[1];
          v43 += 4;
          v41[2] = vaddq_s32(v66, v62);
          v41[3] = vaddq_s32(v67, v63);
          *v41 = vaddq_s32(v68, v64);
          v41[1] = vaddq_s32(v69, v65);
          v41 += 4;
          v61 -= 4;
        }

        while (v61);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v46 = 4 * v39;
          do
          {
            v47 = (v24 + v46);
            *v47 = vadd_s32(*(v23 + v46), *(v22 + v46));
            v47[1] = vadd_s32(*(v23 + v46 + 8), *(v22 + v46 + 8));
            v39 += 4;
            v46 += 16;
          }

          while (v39 <= v10);
        }

        v45 = v39;
        a4 = v113;
        a6 = v114;
        v84 = v39 < a7;
        v8 = a2;
        if (!v84)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v45 = v26;
        a4 = v113;
        a6 = v114;
        v8 = a2;
        if (v26 >= a7)
        {
          goto LABEL_13;
        }
      }

      v48 = v16 - v45;
      if ((v16 - v45) <= 7 || a5 - result + v112 * v15 < 0x20 || a5 - a3 + v111 * v15 < 0x20)
      {
        v49 = v45;
      }

      else
      {
        v49 = (v48 & 0xFFFFFFFFFFFFFFF8) + v45;
        v70 = 4 * v45;
        v71 = v48 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v72 = vaddq_s32(*(v23 + v70 + 16), *(v22 + v70 + 16));
          v73 = (v24 + v70);
          *v73 = vaddq_s32(*(v23 + v70), *(v22 + v70));
          v73[1] = v72;
          v70 += 32;
          v71 -= 8;
        }

        while (v71);
        if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }
      }

      do
      {
        *(v24 + 4 * v49) = *(v23 + 4 * v49) + *(v22 + 4 * v49);
        ++v49;
      }

      while (v16 != v49);
LABEL_13:
      v22 += a2;
      v23 += a4;
      v24 += a6;
      LODWORD(v9) = v116 - 1;
      ++v15;
      v19 = (v19 + a6);
      v20 = (v20 + a2);
      v21 = (v21 + a4);
      if (!v116)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v74 = 0;
    v75 = a5 - result;
    v76 = a5 - a3;
    v77 = (v10 & 0x7FFFFFFC) + 5;
    if (v77 <= a7)
    {
      v77 = a7;
    }

    v78 = v77 - (v10 & 0x7FFFFFFC) - 4;
    v79 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v80 = a5 + v9 * a6 + v79 + 16;
    v81 = result + v9 * a2 + v79 + 16;
    v82 = a3 + v9 * a4 + v79 + 16;
    v83 = (v10 >> 2) + 1;
    v84 = v81 > a5 && v80 > result;
    v86 = v84 || (a6 | v8) < 0;
    if (v82 > a5 && v80 > a3 || (a6 | a4) < 0)
    {
      v86 = 1;
    }

    v89 = (v10 < 0xC) | v86;
    v90 = v78 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v91 = v9;
      if (v89)
      {
        break;
      }

      v94 = 0;
      v95 = v83 & 0x3FFFFFFC;
      do
      {
        v96 = vaddq_s32(*(a3 + v94 + 16), *(result + v94 + 16));
        v97 = vaddq_s32(*(a3 + v94), *(result + v94));
        v98 = vaddq_s32(*(a3 + v94 + 48), *(result + v94 + 48));
        v99 = (a5 + v94);
        v99[2] = vaddq_s32(*(a3 + v94 + 32), *(result + v94 + 32));
        v99[3] = v98;
        *v99 = v97;
        v99[1] = v96;
        v94 += 64;
        v95 -= 4;
      }

      while (v95);
      v93 = (16 * (((v83 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v92 = 4 * (v83 & 0x3FFFFFFC);
      v100 = v92;
      if (v83 != (v83 & 0x3FFFFFFC))
      {
        goto LABEL_77;
      }

LABEL_79:
      if (v92 < a7)
      {
        if (v78 <= 7 || v75 + (a6 - v8) * v74 < 0x20 || v76 + (a6 - a4) * v74 < 0x20)
        {
          v103 = v100;
        }

        else
        {
          v103 = v100 + v90;
          v104 = 4 * v100;
          v105 = v78 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v106 = vaddq_s32(*(a3 + v104 + 16), *(result + v104 + 16));
            v107 = (a5 + v104);
            *v107 = vaddq_s32(*(a3 + v104), *(result + v104));
            v107[1] = v106;
            v104 += 32;
            v105 -= 8;
          }

          while (v105);
          if (v78 == v90)
          {
            goto LABEL_71;
          }
        }

        do
        {
          *(a5 + 4 * v103) = *(a3 + 4 * v103) + *(result + 4 * v103);
          ++v103;
        }

        while (v103 < a7);
      }

LABEL_71:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v74;
      if (!v91)
      {
        return result;
      }
    }

    v92 = 0;
    v93 = 4;
LABEL_77:
    v100 = v93 - 4;
    v101 = 4 * v92;
    do
    {
      v102 = (a5 + v101);
      *v102 = vadd_s32(*(a3 + v101), *(result + v101));
      v102[1] = vadd_s32(*(a3 + v101 + 8), *(result + v101 + 8));
      v92 += 4;
      v100 += 4;
      v101 += 16;
    }

    while (v92 <= v10);
    goto LABEL_79;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      *(v12 - 2) = *(v13 - 2) + *(v14 - 2);
      if (a7 != 1)
      {
        *(v12 - 1) = *(v13 - 1) + *(v14 - 1);
        if (a7 != 2)
        {
          *v12 = *v13 + *v14;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001DFB94(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v15 = 0;
    v16 = a7;
    v112 = a6 - a2;
    v111 = a6 - a4;
    v17 = (v11 & 0x7FFFFFF8) + 12;
    if (v17 <= v10 + 1)
    {
      v17 = v10 + 1;
    }

    v18 = v17 - (v11 & 0x7FFFFFF8);
    v109 = ((4 * v18 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v110 = v18 - 9;
    v108 = ((v18 - 9) >> 2) + 1;
    v19 = (a5 + 32);
    v20 = (result + 32);
    v21 = (a3 + 32);
    v22 = result;
    v23 = a3;
    v24 = a5;
    v113 = a4;
    v114 = a6;
    while (1)
    {
      v25 = 0;
      v26 = 0;
      v116 = v9;
      v27 = v15 * v8;
      v28 = v15 * a4;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = 8;
      do
      {
        v33 = (v22 + 4 * v26);
        v34 = *v33;
        v35 = v33[1];
        v36 = (v23 + 4 * v26);
        v37 = v36[1];
        v38 = vaddq_f32(v34, *v36);
        v39 = v32;
        v40 = v25;
        v41 = v31;
        v42 = v30;
        v43 = v29;
        v44 = (v24 + 4 * v26);
        v26 += 8;
        v32 += 8;
        ++v25;
        *v44 = v38;
        v44[1] = vaddq_f32(v35, v37);
        v31 += 2;
        v30 += 2;
        v29 = v43 + 2;
      }

      while (v26 <= v11);
      if (v10 >= v26)
      {
        if (v110 <= 0xB)
        {
          goto LABEL_20;
        }

        v50 = 32 * v40;
        v51 = a5 + v15 * a6 + 32 * v40;
        v52 = v51 + 32;
        v53 = v51 + v109;
        v54 = result + v27 + v50;
        v55 = v54 + 32;
        v56 = v54 + v109;
        v57 = a3 + v28 + v50;
        v58 = v52 >= v57 + v109 || v57 + 32 >= v53;
        v59 = !v58;
        if (v55 < v53 && v52 < v56)
        {
          goto LABEL_20;
        }

        if (v59)
        {
          goto LABEL_20;
        }

        v39 += 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
        v61 = v108 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = v42[2];
          v63 = v42[3];
          v64 = *v42;
          v65 = v42[1];
          v42 += 4;
          v66 = v43[2];
          v67 = v43[3];
          v68 = *v43;
          v69 = v43[1];
          v43 += 4;
          v41[2] = vaddq_f32(v62, v66);
          v41[3] = vaddq_f32(v63, v67);
          *v41 = vaddq_f32(v64, v68);
          v41[1] = vaddq_f32(v65, v69);
          v41 += 4;
          v61 -= 4;
        }

        while (v61);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v46 = 4 * v39;
          do
          {
            v47 = (v24 + v46);
            *v47 = vadd_f32(*(v22 + v46), *(v23 + v46));
            v47[1] = vadd_f32(*(v22 + v46 + 8), *(v23 + v46 + 8));
            v39 += 4;
            v46 += 16;
          }

          while (v39 <= v10);
        }

        v45 = v39;
        a4 = v113;
        a6 = v114;
        v84 = v39 < a7;
        v8 = a2;
        if (!v84)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v45 = v26;
        a4 = v113;
        a6 = v114;
        v8 = a2;
        if (v26 >= a7)
        {
          goto LABEL_13;
        }
      }

      v48 = v16 - v45;
      if ((v16 - v45) <= 7 || a5 - result + v112 * v15 < 0x20 || a5 - a3 + v111 * v15 < 0x20)
      {
        v49 = v45;
      }

      else
      {
        v49 = (v48 & 0xFFFFFFFFFFFFFFF8) + v45;
        v70 = 4 * v45;
        v71 = v48 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v72 = vaddq_f32(*(v22 + v70 + 16), *(v23 + v70 + 16));
          v73 = (v24 + v70);
          *v73 = vaddq_f32(*(v22 + v70), *(v23 + v70));
          v73[1] = v72;
          v70 += 32;
          v71 -= 8;
        }

        while (v71);
        if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }
      }

      do
      {
        *(v24 + 4 * v49) = *(v22 + 4 * v49) + *(v23 + 4 * v49);
        ++v49;
      }

      while (v16 != v49);
LABEL_13:
      v22 += a2;
      v23 += a4;
      v24 += a6;
      LODWORD(v9) = v116 - 1;
      ++v15;
      v19 = (v19 + a6);
      v20 = (v20 + a2);
      v21 = (v21 + a4);
      if (!v116)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v74 = 0;
    v75 = a5 - result;
    v76 = a5 - a3;
    v77 = (v10 & 0x7FFFFFFC) + 5;
    if (v77 <= a7)
    {
      v77 = a7;
    }

    v78 = v77 - (v10 & 0x7FFFFFFC) - 4;
    v79 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v80 = a5 + v9 * a6 + v79 + 16;
    v81 = result + v9 * a2 + v79 + 16;
    v82 = a3 + v9 * a4 + v79 + 16;
    v83 = (v10 >> 2) + 1;
    v84 = v81 > a5 && v80 > result;
    v86 = v84 || (a6 | v8) < 0;
    if (v82 > a5 && v80 > a3 || (a6 | a4) < 0)
    {
      v86 = 1;
    }

    v89 = (v10 < 0xC) | v86;
    v90 = v78 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v91 = v9;
      if (v89)
      {
        break;
      }

      v94 = 0;
      v95 = v83 & 0x3FFFFFFC;
      do
      {
        v96 = vaddq_f32(*(result + v94 + 16), *(a3 + v94 + 16));
        v97 = vaddq_f32(*(result + v94), *(a3 + v94));
        v98 = vaddq_f32(*(result + v94 + 48), *(a3 + v94 + 48));
        v99 = (a5 + v94);
        v99[2] = vaddq_f32(*(result + v94 + 32), *(a3 + v94 + 32));
        v99[3] = v98;
        *v99 = v97;
        v99[1] = v96;
        v94 += 64;
        v95 -= 4;
      }

      while (v95);
      v93 = (16 * (((v83 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v92 = 4 * (v83 & 0x3FFFFFFC);
      v100 = v92;
      if (v83 != (v83 & 0x3FFFFFFC))
      {
        goto LABEL_77;
      }

LABEL_79:
      if (v92 < a7)
      {
        if (v78 <= 7 || v75 + (a6 - v8) * v74 < 0x20 || v76 + (a6 - a4) * v74 < 0x20)
        {
          v103 = v100;
        }

        else
        {
          v103 = v100 + v90;
          v104 = 4 * v100;
          v105 = v78 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v106 = vaddq_f32(*(result + v104 + 16), *(a3 + v104 + 16));
            v107 = (a5 + v104);
            *v107 = vaddq_f32(*(result + v104), *(a3 + v104));
            v107[1] = v106;
            v104 += 32;
            v105 -= 8;
          }

          while (v105);
          if (v78 == v90)
          {
            goto LABEL_71;
          }
        }

        do
        {
          *(a5 + 4 * v103) = *(result + 4 * v103) + *(a3 + 4 * v103);
          ++v103;
        }

        while (v103 < a7);
      }

LABEL_71:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v74;
      if (!v91)
      {
        return result;
      }
    }

    v92 = 0;
    v93 = 4;
LABEL_77:
    v100 = v93 - 4;
    v101 = 4 * v92;
    do
    {
      v102 = (a5 + v101);
      *v102 = vadd_f32(*(result + v101), *(a3 + v101));
      v102[1] = vadd_f32(*(result + v101 + 8), *(a3 + v101 + 8));
      v92 += 4;
      v100 += 4;
      v101 += 16;
    }

    while (v92 <= v10);
    goto LABEL_79;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      *(v12 - 2) = *(v14 - 2) + *(v13 - 2);
      if (a7 != 1)
      {
        *(v12 - 1) = *(v14 - 1) + *(v13 - 1);
        if (a7 != 2)
        {
          *v12 = *v14 + *v13;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E0190(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = (a7 - 4);
    if (a7 >= 4)
    {
      v12 = (a8 - 1);
      v13 = v8 & 0x7FFFFFFC;
      v14 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
      v15 = a5 + v14;
      if (v13 + 5 <= a7)
      {
        v16 = a7;
      }

      else
      {
        v16 = (v8 & 0x7FFFFFFC) + 5;
      }

      v17 = a5 + v12 * a6;
      v18 = v17 + 8 * v16;
      v19 = result + v14;
      v20 = result + v12 * a2;
      v21 = v20 + 8 * v16;
      v56 = a3 + v14;
      v22 = a3 + v12 * a4;
      v23 = v16 - 4;
      v24 = v14 + v17;
      v25 = v14 + v20;
      v26 = v14 + v22;
      v27 = (v8 >> 2) + 1;
      v29 = v26 > a5 && v24 > a3;
      v30 = v25 > a5 && v24 > result;
      v31 = a6 | a4;
      if (v30)
      {
        v29 = 1;
      }

      v32 = v16 - 4 - v13 < 8;
      v35 = v15 < v21 && v19 < v18 || (a6 | a2) < 0;
      if (v15 < v22 + 8 * v16 && v56 < v18 || v31 < 0)
      {
        v35 = 1;
      }

      v38 = v16 & 3;
      v39 = (v8 & 0x7FFFFFFC) + v16 - v13 - v38;
      v40 = v32 || v35;
      v41 = v23 - v38 - v13;
      do
      {
        v42 = v12;
        v43 = 0;
        if (v8 < 0xC || (v31 | a2) < 0 || v29)
        {
          goto LABEL_48;
        }

        v44 = v27 & 0x3FFFFFFE;
        do
        {
          v45 = vaddq_f64(*(result + v43 + 16), *(a3 + v43 + 16));
          v46 = vaddq_f64(*(result + v43), *(a3 + v43));
          v47 = vaddq_f64(*(result + v43 + 48), *(a3 + v43 + 48));
          v48 = (a5 + v43);
          v48[2] = vaddq_f64(*(result + v43 + 32), *(a3 + v43 + 32));
          v48[3] = v47;
          *v48 = v46;
          v48[1] = v45;
          v43 += 64;
          v44 -= 2;
        }

        while (v44);
        v43 = 4 * (v27 & 0x3FFFFFFE);
        if (v27 != (v27 & 0x3FFFFFFE))
        {
LABEL_48:
          v49 = 8 * v43;
          do
          {
            v50 = (a5 + v49);
            *v50 = vaddq_f64(*(result + v49), *(a3 + v49));
            v50[1] = vaddq_f64(*(result + v49 + 16), *(a3 + v49 + 16));
            v43 += 4;
            v49 += 32;
          }

          while (v43 <= v8);
        }

        if (v43 < a7)
        {
          v51 = (v8 & 0x7FFFFFFC) + 4;
          if (v40)
          {
            goto LABEL_59;
          }

          v52 = 32 * ((v8 >> 2) & 0x1FFFFFFF);
          v53 = v41;
          do
          {
            v54 = vaddq_f64(*(result + v52 + 48), *(a3 + v52 + 48));
            v55 = (a5 + v52);
            v55[2] = vaddq_f64(*(result + v52 + 32), *(a3 + v52 + 32));
            v55[3] = v54;
            v52 += 32;
            v53 -= 4;
          }

          while (v53);
          v51 = v39;
          if (v38)
          {
LABEL_59:
            do
            {
              *(a5 + 8 * v51) = *(result + 8 * v51) + *(a3 + 8 * v51);
              ++v51;
            }

            while (v51 < a7);
          }
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        LODWORD(v12) = v42 - 1;
      }

      while (v42);
    }

    else if (a7 >= 1)
    {
      v9 = (a5 + 16);
      v10 = (a3 + 16);
      v11 = (result + 16);
      do
      {
        *(v9 - 2) = *(v11 - 2) + *(v10 - 2);
        if (a7 != 1)
        {
          *(v9 - 1) = *(v11 - 1) + *(v10 - 1);
          if (a7 != 2)
          {
            *v9 = *v11 + *v10;
          }
        }

        v9 = (v9 + a6);
        v10 = (v10 + a4);
        v11 = (v11 + a2);
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

uint64_t sub_1001E0470(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = a7 - 4;
    do
    {
      if (a7 >= 32)
      {
        v10 = 16;
        do
        {
          v11 = vqsubq_u8(*(result + v10), *(a3 + v10));
          v12 = (a5 + v10);
          v12[-1] = vqsubq_u8(*(result + v10 - 16), *(a3 + v10 - 16));
          *v12 = v11;
          v13 = v10 + 16;
          v10 += 32;
        }

        while (v13 <= a7 - 32);
        v9 = (v10 - 16);
        if (v9 > v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0;
        if (v8 < 0)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v14 = byte_1003E59DE[(*(result + v9 + 1) | 0x100) - *(a3 + v9 + 1)];
        v15 = (a5 + v9);
        *v15 = byte_1003E59DE[(*(result + v9) | 0x100) - *(a3 + v9)];
        v15[1] = v14;
        v16 = byte_1003E59DE[(*(result + v9 + 3) | 0x100) - *(a3 + v9 + 3)];
        v15[2] = byte_1003E59DE[(*(result + v9 + 2) | 0x100) - *(a3 + v9 + 2)];
        v15[3] = v16;
        v9 += 4;
      }

      while (v9 <= v8);
      v9 = v9;
LABEL_12:
      if (v9 < a7)
      {
        do
        {
          *(a5 + v9) = byte_1003E59DE[(*(result + v9) | 0x100) - *(a3 + v9)];
          ++v9;
        }

        while (a7 != v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001E05B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v10 = a5 - result;
    v48 = a5 - a3;
    v11 = a5 + 4;
    v12 = result + 4;
    v13 = a3 + 4;
    do
    {
      if (a7 >= 32)
      {
        v14 = 0;
        do
        {
          v15 = vqsubq_s8(*(result + v14 + 16), *(a3 + v14 + 16));
          v16 = (a5 + v14);
          *v16 = vqsubq_s8(*(result + v14), *(a3 + v14));
          v16[1] = v15;
          v14 += 32;
        }

        while (v14 <= a7 - 32);
        v14 = v14;
        if (v14 <= v9)
        {
LABEL_10:
          v17 = v14 + 4;
          if (v14 + 4 <= v9 + 1)
          {
            v17 = v9 + 1;
          }

          v18 = v17 + ~v14;
          if (v18 <= 0x3B || ((v30 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + v14, v31 = v11 + v8 * a6 + v30, a5 + v14 < (v13 + v8 * a4 + v30)) ? (v32 = a3 + v14 >= v31) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), result + v14 < v31 ? (v34 = a5 + v14 >= (v12 + v8 * a2 + v30)) : (v34 = 1), !v34 || (v33 & 1) != 0))
          {
            v19 = v14;
          }

          else
          {
            v35 = (v18 >> 2) + 1;
            v19 = v14 + 4 * (v35 & 0x7FFFFFFFFFFFFFF0);
            v36 = v35 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v37 = (a5 + v14);
              v38 = vqsubq_s8(*(result + v14 + 16), *(a3 + v14 + 16));
              v39 = vqsubq_s8(*(result + v14), *(a3 + v14));
              v40 = vqsubq_s8(*(result + v14 + 48), *(a3 + v14 + 48));
              v37[2] = vqsubq_s8(*(result + v14 + 32), *(a3 + v14 + 32));
              v37[3] = v40;
              *v37 = v39;
              v37[1] = v38;
              v14 += 64;
              v36 -= 16;
            }

            while (v36);
            if (v35 == (v35 & 0x7FFFFFFFFFFFFFF0))
            {
LABEL_31:
              v14 = v19;
              goto LABEL_32;
            }
          }

          do
          {
            v20 = (result + v19);
            v21 = (a3 + v19);
            v22 = *(result + v19) - *(a3 + v19);
            if (v22 >= 127)
            {
              v22 = 127;
            }

            if (v22 <= -128)
            {
              LOBYTE(v22) = 0x80;
            }

            v23 = v20[1] - v21[1];
            if (v23 >= 127)
            {
              v23 = 127;
            }

            if (v23 <= -128)
            {
              LOBYTE(v23) = 0x80;
            }

            v24 = (a5 + v19);
            *v24 = v22;
            v24[1] = v23;
            v25 = v20[2] - v21[2];
            if (v25 >= 127)
            {
              v25 = 127;
            }

            if (v25 <= -128)
            {
              LOBYTE(v25) = 0x80;
            }

            v26 = v20[3] - v21[3];
            if (v26 >= 127)
            {
              v26 = 127;
            }

            if (v26 <= -128)
            {
              LOBYTE(v26) = 0x80;
            }

            v24[2] = v25;
            v24[3] = v26;
            v19 += 4;
          }

          while (v19 <= v9);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = 0;
        if (v9 >= 0)
        {
          goto LABEL_10;
        }
      }

LABEL_32:
      if (v14 < a7)
      {
        v27 = a7 - v14;
        if (v27 < 8)
        {
          v28 = v14;
          goto LABEL_35;
        }

        if ((v10 + (a6 - a2) * v8) < 0x20)
        {
          v28 = v14;
          goto LABEL_35;
        }

        if ((v48 + (a6 - a4) * v8) < 0x20)
        {
          v28 = v14;
          goto LABEL_35;
        }

        if (v27 >= 0x20)
        {
          v41 = v27 & 0xFFFFFFFFFFFFFFE0;
          v42 = v14;
          v43 = v27 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v44 = vqsubq_s8(*(result + v42 + 16), *(a3 + v42 + 16));
            v45 = (a5 + v42);
            *v45 = vqsubq_s8(*(result + v42), *(a3 + v42));
            v45[1] = v44;
            v42 += 32;
            v43 -= 32;
          }

          while (v43);
          if (v27 == v41)
          {
            goto LABEL_3;
          }

          if ((v27 & 0x18) == 0)
          {
            v28 = v41 + v14;
            do
            {
LABEL_35:
              v29 = *(result + v28) - *(a3 + v28);
              if (v29 >= 127)
              {
                v29 = 127;
              }

              if (v29 <= -128)
              {
                LOBYTE(v29) = 0x80;
              }

              *(a5 + v28++) = v29;
            }

            while (a7 != v28);
            goto LABEL_3;
          }
        }

        else
        {
          v41 = 0;
        }

        v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + v14;
        v46 = v41 - (v27 & 0xFFFFFFFFFFFFFFF8);
        v47 = v41 + v14;
        do
        {
          *(a5 + v47) = vqsub_s8(*(result + v47), *(a3 + v47));
          v47 += 8;
          v46 += 8;
        }

        while (v46);
        if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_35;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001E0920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v58 = a5 - result;
    v57 = a5 - a3;
    v10 = a5 + 8;
    v11 = result + 8;
    v12 = a3 + 8;
    v13 = a5 + 4;
    do
    {
      if (a7 >= 16)
      {
        v15 = 0;
        v14 = 0;
        do
        {
          v16 = vqsubq_u16(*(result + v15 + 16), *(a3 + v15 + 16));
          v17 = (a5 + v15);
          *v17 = vqsubq_u16(*(result + v15), *(a3 + v15));
          v17[1] = v16;
          v14 += 16;
          v15 += 32;
        }

        while (v14 <= a7 - 16);
        v14 = v14;
        if (v14 > v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = 0;
        if (v9 < 0)
        {
          goto LABEL_16;
        }
      }

      v18 = v14 + 4;
      if (v14 + 4 <= v9 + 1)
      {
        v18 = v9 + 1;
      }

      v19 = v18 + ~v14;
      if (v19 <= 0x1B)
      {
        goto LABEL_13;
      }

      v33 = v19 >> 2;
      v34 = 2 * v14;
      v35 = a5 + 2 * v14;
      v36 = 2 * v14 + 8 * v33;
      v37 = v10 + v8 * a6 + v36;
      v38 = v35 >= v12 + v8 * a4 + v36 || a3 + 2 * v14 >= v37;
      v39 = !v38;
      if (result + 2 * v14 < v37 && v35 < v11 + v8 * a2 + v36)
      {
        goto LABEL_13;
      }

      if (v39)
      {
        goto LABEL_13;
      }

      v41 = v33 + 1;
      v14 += 4 * (v41 & 0x7FFFFFFFFFFFFFF8);
      v42 = v41 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v44 = *(result + v34);
        v43 = *(result + v34 + 16);
        v45 = *(result + v34 + 48);
        v47 = *(a3 + v34);
        v46 = *(a3 + v34 + 16);
        v48 = *(a3 + v34 + 48);
        v49 = (a5 + v34);
        v49[2] = vuzp1q_s16(vmaxq_s32(vsubl_u16(*(result + v34 + 32), *(a3 + v34 + 32)), 0), vmaxq_s32(vsubl_high_u16(*(result + v34 + 32), *(a3 + v34 + 32)), 0));
        v49[3] = vuzp1q_s16(vmaxq_s32(vsubl_u16(*v45.i8, *v48.i8), 0), vmaxq_s32(vsubl_high_u16(v45, v48), 0));
        *v49 = vuzp1q_s16(vmaxq_s32(vsubl_u16(*v44.i8, *v47.i8), 0), vmaxq_s32(vsubl_high_u16(v44, v47), 0));
        v49[1] = vuzp1q_s16(vmaxq_s32(vsubl_u16(*v43.i8, *v46.i8), 0), vmaxq_s32(vsubl_high_u16(v43, v46), 0));
        v34 += 64;
        v42 -= 8;
      }

      while (v42);
      LODWORD(v24) = v14;
      if (v41 != (v41 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_13:
        v20 = 2 * v14;
        v21 = v13;
        v22 = a3;
        v23 = result;
        v24 = v14;
        do
        {
          v25 = *(v23 + 2 * v14) - *(v22 + 2 * v14);
          v26 = *(v23 + v20 + 2) - *(v22 + v20 + 2);
          v27 = v21 + v20;
          *(v27 - 4) = v25 & ~(v25 >> 31);
          *(v27 - 2) = v26 & ~(v26 >> 31);
          v28 = *(v23 + v20 + 4) - *(v22 + v20 + 4);
          v29 = *(v23 + v20 + 6) - *(v22 + v20 + 6);
          *(v21 + 2 * v14) = v28 & ~(v28 >> 31);
          v24 += 4;
          *(v27 + 2) = v29 & ~(v29 >> 31);
          v23 += 8;
          v22 += 8;
          v21 += 8;
        }

        while (v24 <= v9);
      }

      v14 = v24;
LABEL_16:
      if (v14 < a7)
      {
        v30 = a7 - v14;
        if (v30 < 4)
        {
          v31 = v14;
          goto LABEL_19;
        }

        if ((v58 + (a6 - a2) * v8) < 0x20)
        {
          v31 = v14;
        }

        else if ((v57 + (a6 - a4) * v8) < 0x20)
        {
          v31 = v14;
        }

        else
        {
          if (v30 < 0x10)
          {
            v50 = 0;
            goto LABEL_47;
          }

          v50 = v30 & 0xFFFFFFFFFFFFFFF0;
          v51 = 2 * v14;
          v52 = v30 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v53 = vuzp1q_s16(vmaxq_s32(vsubl_u16(*(result + v51 + 16), *(a3 + v51 + 16)), 0), vmaxq_s32(vsubl_high_u16(*(result + v51 + 16), *(a3 + v51 + 16)), 0));
            v54 = (a5 + v51);
            *v54 = vuzp1q_s16(vmaxq_s32(vsubl_u16(*(result + v51), *(a3 + v51)), 0), vmaxq_s32(vsubl_high_u16(*(result + v51), *(a3 + v51)), 0));
            v54[1] = v53;
            v51 += 32;
            v52 -= 16;
          }

          while (v52);
          if (v30 == v50)
          {
            goto LABEL_3;
          }

          if ((v30 & 0xC) != 0)
          {
LABEL_47:
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + v14;
            v55 = v50 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
            v56 = 2 * (v50 + v14);
            do
            {
              *(a5 + v56) = vmovn_s32(vmaxq_s32(vsubl_u16(*(result + v56), *(a3 + v56)), 0));
              v56 += 8;
              v55 += 4;
            }

            while (v55);
            if (v30 == (v30 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_3;
            }

            goto LABEL_19;
          }

          v31 = v50 + v14;
        }

        do
        {
LABEL_19:
          v32 = *(result + 2 * v31) - *(a3 + 2 * v31);
          *(a5 + 2 * v31++) = v32 & ~(v32 >> 31);
        }

        while (a7 != v31);
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      v13 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_1001E0CF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = 0;
    v9 = a7 - 4;
    v57 = a5 - result;
    v55 = a5 - a3;
    v56 = a5 + 8;
    v10 = result + 8;
    v11 = a3 + 8;
    v12 = a5 + 4;
    do
    {
      if (a7 >= 16)
      {
        v14 = 0;
        v13 = 0;
        do
        {
          v15 = vqsubq_s16(*(result + v14 + 16), *(a3 + v14 + 16));
          v16 = (a5 + v14);
          *v16 = vqsubq_s16(*(result + v14), *(a3 + v14));
          v16[1] = v15;
          v13 += 16;
          v14 += 32;
        }

        while (v13 <= a7 - 16);
        v13 = v13;
        if (v13 > v9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v13 = 0;
        if (v9 < 0)
        {
          goto LABEL_32;
        }
      }

      v17 = v13 + 4;
      if (v13 + 4 <= v9 + 1)
      {
        v17 = v9 + 1;
      }

      v18 = v17 + ~v13;
      if (v18 <= 0x1B)
      {
        goto LABEL_13;
      }

      v34 = v18 >> 2;
      v35 = 2 * v13;
      v36 = a5 + 2 * v13;
      v37 = 2 * v13 + 8 * v34;
      v38 = v56 + v8 * a6 + v37;
      v39 = v36 >= v11 + v8 * a4 + v37 || a3 + 2 * v13 >= v38;
      v40 = !v39;
      if (result + 2 * v13 < v38 && v36 < v10 + v8 * a2 + v37)
      {
        goto LABEL_13;
      }

      if (v40)
      {
        goto LABEL_13;
      }

      v42 = v34 + 1;
      v13 += 4 * (v42 & 0x7FFFFFFFFFFFFFF8);
      v43 = v42 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v44 = (a5 + v35);
        v45 = vqsubq_s16(*(result + v35 + 16), *(a3 + v35 + 16));
        v46 = vqsubq_s16(*(result + v35), *(a3 + v35));
        v47 = vqsubq_s16(*(result + v35 + 48), *(a3 + v35 + 48));
        v44[2] = vqsubq_s16(*(result + v35 + 32), *(a3 + v35 + 32));
        v44[3] = v47;
        *v44 = v46;
        v44[1] = v45;
        v35 += 64;
        v43 -= 8;
      }

      while (v43);
      LODWORD(v23) = v13;
      if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_13:
        v19 = 2 * v13;
        v20 = v12;
        v21 = a3;
        v22 = result;
        v23 = v13;
        do
        {
          v24 = *(v22 + 2 * v13) - *(v21 + 2 * v13);
          if (v24 >= 0x7FFF)
          {
            v24 = 0x7FFF;
          }

          if (v24 <= -32768)
          {
            LOWORD(v24) = 0x8000;
          }

          v25 = v22 + v19;
          v26 = v21 + v19;
          v27 = *(v22 + v19 + 2) - *(v21 + v19 + 2);
          if (v27 >= 0x7FFF)
          {
            v27 = 0x7FFF;
          }

          if (v27 <= -32768)
          {
            LOWORD(v27) = 0x8000;
          }

          v28 = v20 + v19;
          *(v28 - 4) = v24;
          *(v28 - 2) = v27;
          v29 = *(v25 + 4) - *(v26 + 4);
          if (v29 >= 0x7FFF)
          {
            v29 = 0x7FFF;
          }

          if (v29 <= -32768)
          {
            LOWORD(v29) = 0x8000;
          }

          v30 = *(v25 + 6) - *(v26 + 6);
          if (v30 >= 0x7FFF)
          {
            v30 = 0x7FFF;
          }

          if (v30 <= -32768)
          {
            LOWORD(v30) = 0x8000;
          }

          *(v20 + 2 * v13) = v29;
          *(v28 + 2) = v30;
          v23 += 4;
          v22 += 8;
          v21 += 8;
          v20 += 8;
        }

        while (v23 <= v9);
      }

      v13 = v23;
LABEL_32:
      if (v13 < a7)
      {
        v31 = a7 - v13;
        if (v31 < 4)
        {
          v32 = v13;
          goto LABEL_35;
        }

        if ((v57 + (a6 - a2) * v8) < 0x20)
        {
          v32 = v13;
          goto LABEL_35;
        }

        if ((v55 + (a6 - a4) * v8) < 0x20)
        {
          v32 = v13;
          goto LABEL_35;
        }

        if (v31 >= 0x10)
        {
          v48 = v31 & 0xFFFFFFFFFFFFFFF0;
          v49 = 2 * v13;
          v50 = v31 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v51 = vqsubq_s16(*(result + v49 + 16), *(a3 + v49 + 16));
            v52 = (a5 + v49);
            *v52 = vqsubq_s16(*(result + v49), *(a3 + v49));
            v52[1] = v51;
            v49 += 32;
            v50 -= 16;
          }

          while (v50);
          if (v31 == v48)
          {
            goto LABEL_3;
          }

          if ((v31 & 0xC) == 0)
          {
            v32 = v48 + v13;
            do
            {
LABEL_35:
              v33 = *(result + 2 * v32) - *(a3 + 2 * v32);
              if (v33 >= 0x7FFF)
              {
                v33 = 0x7FFF;
              }

              if (v33 <= -32768)
              {
                LOWORD(v33) = 0x8000;
              }

              *(a5 + 2 * v32++) = v33;
            }

            while (a7 != v32);
            goto LABEL_3;
          }
        }

        else
        {
          v48 = 0;
        }

        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + v13;
        v53 = v48 - (v31 & 0xFFFFFFFFFFFFFFFCLL);
        v54 = 2 * (v48 + v13);
        do
        {
          *(a5 + v54) = vqsub_s16(*(result + v54), *(a3 + v54));
          v54 += 8;
          v53 += 4;
        }

        while (v53);
        if (v31 != (v31 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_35;
        }
      }

LABEL_3:
      result += a2;
      a3 += a4;
      a5 += a6;
      ++v8;
      v12 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E10B0(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v15 = 0;
    v16 = a7;
    v112 = a6 - a2;
    v111 = a6 - a4;
    v17 = (v11 & 0x7FFFFFF8) + 12;
    if (v17 <= v10 + 1)
    {
      v17 = v10 + 1;
    }

    v18 = v17 - (v11 & 0x7FFFFFF8);
    v109 = ((4 * v18 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v110 = v18 - 9;
    v108 = ((v18 - 9) >> 2) + 1;
    v19 = (a5 + 32);
    v20 = (result + 32);
    v21 = (a3 + 32);
    v22 = result;
    v23 = a3;
    v24 = a5;
    v113 = a4;
    v114 = a6;
    while (1)
    {
      v25 = 0;
      v26 = 0;
      v116 = v9;
      v27 = v15 * v8;
      v28 = v15 * a4;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = 8;
      do
      {
        v33 = (v22 + 4 * v26);
        v34 = *v33;
        v35 = v33[1];
        v36 = (v23 + 4 * v26);
        v37 = v36[1];
        v38 = vsubq_s32(v34, *v36);
        v39 = v32;
        v40 = v25;
        v41 = v31;
        v42 = v30;
        v43 = v29;
        v44 = (v24 + 4 * v26);
        v26 += 8;
        v32 += 8;
        ++v25;
        *v44 = v38;
        v44[1] = vsubq_s32(v35, v37);
        v31 += 2;
        v30 += 2;
        v29 = v43 + 2;
      }

      while (v26 <= v11);
      if (v10 >= v26)
      {
        if (v110 <= 0xB)
        {
          goto LABEL_20;
        }

        v50 = 32 * v40;
        v51 = a5 + v15 * a6 + 32 * v40;
        v52 = v51 + 32;
        v53 = v51 + v109;
        v54 = result + v27 + v50;
        v55 = v54 + 32;
        v56 = v54 + v109;
        v57 = a3 + v28 + v50;
        v58 = v52 >= v57 + v109 || v57 + 32 >= v53;
        v59 = !v58;
        if (v55 < v53 && v52 < v56)
        {
          goto LABEL_20;
        }

        if (v59)
        {
          goto LABEL_20;
        }

        v39 += 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
        v61 = v108 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = v42[2];
          v63 = v42[3];
          v64 = *v42;
          v65 = v42[1];
          v42 += 4;
          v66 = v43[2];
          v67 = v43[3];
          v68 = *v43;
          v69 = v43[1];
          v43 += 4;
          v41[2] = vsubq_s32(v62, v66);
          v41[3] = vsubq_s32(v63, v67);
          *v41 = vsubq_s32(v64, v68);
          v41[1] = vsubq_s32(v65, v69);
          v41 += 4;
          v61 -= 4;
        }

        while (v61);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v46 = 4 * v39;
          do
          {
            v47 = (v24 + v46);
            *v47 = vsub_s32(*(v22 + v46), *(v23 + v46));
            v47[1] = vsub_s32(*(v22 + v46 + 8), *(v23 + v46 + 8));
            v39 += 4;
            v46 += 16;
          }

          while (v39 <= v10);
        }

        v45 = v39;
        a4 = v113;
        a6 = v114;
        v84 = v39 < a7;
        v8 = a2;
        if (!v84)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v45 = v26;
        a4 = v113;
        a6 = v114;
        v8 = a2;
        if (v26 >= a7)
        {
          goto LABEL_13;
        }
      }

      v48 = v16 - v45;
      if ((v16 - v45) <= 7 || a5 - result + v112 * v15 < 0x20 || a5 - a3 + v111 * v15 < 0x20)
      {
        v49 = v45;
      }

      else
      {
        v49 = (v48 & 0xFFFFFFFFFFFFFFF8) + v45;
        v70 = 4 * v45;
        v71 = v48 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v72 = vsubq_s32(*(v22 + v70 + 16), *(v23 + v70 + 16));
          v73 = (v24 + v70);
          *v73 = vsubq_s32(*(v22 + v70), *(v23 + v70));
          v73[1] = v72;
          v70 += 32;
          v71 -= 8;
        }

        while (v71);
        if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }
      }

      do
      {
        *(v24 + 4 * v49) = *(v22 + 4 * v49) - *(v23 + 4 * v49);
        ++v49;
      }

      while (v16 != v49);
LABEL_13:
      v22 += a2;
      v23 += a4;
      v24 += a6;
      LODWORD(v9) = v116 - 1;
      ++v15;
      v19 = (v19 + a6);
      v20 = (v20 + a2);
      v21 = (v21 + a4);
      if (!v116)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v74 = 0;
    v75 = a5 - result;
    v76 = a5 - a3;
    v77 = (v10 & 0x7FFFFFFC) + 5;
    if (v77 <= a7)
    {
      v77 = a7;
    }

    v78 = v77 - (v10 & 0x7FFFFFFC) - 4;
    v79 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v80 = a5 + v9 * a6 + v79 + 16;
    v81 = result + v9 * a2 + v79 + 16;
    v82 = a3 + v9 * a4 + v79 + 16;
    v83 = (v10 >> 2) + 1;
    v84 = v81 > a5 && v80 > result;
    v86 = v84 || (a6 | v8) < 0;
    if (v82 > a5 && v80 > a3 || (a6 | a4) < 0)
    {
      v86 = 1;
    }

    v89 = (v10 < 0xC) | v86;
    v90 = v78 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v91 = v9;
      if (v89)
      {
        break;
      }

      v94 = 0;
      v95 = v83 & 0x3FFFFFFC;
      do
      {
        v96 = vsubq_s32(*(result + v94 + 16), *(a3 + v94 + 16));
        v97 = vsubq_s32(*(result + v94), *(a3 + v94));
        v98 = vsubq_s32(*(result + v94 + 48), *(a3 + v94 + 48));
        v99 = (a5 + v94);
        v99[2] = vsubq_s32(*(result + v94 + 32), *(a3 + v94 + 32));
        v99[3] = v98;
        *v99 = v97;
        v99[1] = v96;
        v94 += 64;
        v95 -= 4;
      }

      while (v95);
      v93 = (16 * (((v83 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v92 = 4 * (v83 & 0x3FFFFFFC);
      v100 = v92;
      if (v83 != (v83 & 0x3FFFFFFC))
      {
        goto LABEL_77;
      }

LABEL_79:
      if (v92 < a7)
      {
        if (v78 <= 7 || v75 + (a6 - v8) * v74 < 0x20 || v76 + (a6 - a4) * v74 < 0x20)
        {
          v103 = v100;
        }

        else
        {
          v103 = v100 + v90;
          v104 = 4 * v100;
          v105 = v78 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v106 = vsubq_s32(*(result + v104 + 16), *(a3 + v104 + 16));
            v107 = (a5 + v104);
            *v107 = vsubq_s32(*(result + v104), *(a3 + v104));
            v107[1] = v106;
            v104 += 32;
            v105 -= 8;
          }

          while (v105);
          if (v78 == v90)
          {
            goto LABEL_71;
          }
        }

        do
        {
          *(a5 + 4 * v103) = *(result + 4 * v103) - *(a3 + 4 * v103);
          ++v103;
        }

        while (v103 < a7);
      }

LABEL_71:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v74;
      if (!v91)
      {
        return result;
      }
    }

    v92 = 0;
    v93 = 4;
LABEL_77:
    v100 = v93 - 4;
    v101 = 4 * v92;
    do
    {
      v102 = (a5 + v101);
      *v102 = vsub_s32(*(result + v101), *(a3 + v101));
      v102[1] = vsub_s32(*(result + v101 + 8), *(a3 + v101 + 8));
      v92 += 4;
      v100 += 4;
      v101 += 16;
    }

    while (v92 <= v10);
    goto LABEL_79;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      *(v12 - 2) = *(v14 - 2) - *(v13 - 2);
      if (a7 != 1)
      {
        *(v12 - 1) = *(v14 - 1) - *(v13 - 1);
        if (a7 != 2)
        {
          *v12 = *v14 - *v13;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E16B0(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a2;
  v9 = (a8 - 1);
  v10 = (a7 - 4);
  v11 = (a7 - 8);
  if (a7 >= 8)
  {
    v15 = 0;
    v16 = a7;
    v112 = a6 - a2;
    v111 = a6 - a4;
    v17 = (v11 & 0x7FFFFFF8) + 12;
    if (v17 <= v10 + 1)
    {
      v17 = v10 + 1;
    }

    v18 = v17 - (v11 & 0x7FFFFFF8);
    v109 = ((4 * v18 - 36) & 0xFFFFFFFFFFFFFFF0) + 48;
    v110 = v18 - 9;
    v108 = ((v18 - 9) >> 2) + 1;
    v19 = (a5 + 32);
    v20 = (result + 32);
    v21 = (a3 + 32);
    v22 = result;
    v23 = a3;
    v24 = a5;
    v113 = a4;
    v114 = a6;
    while (1)
    {
      v25 = 0;
      v26 = 0;
      v116 = v9;
      v27 = v15 * v8;
      v28 = v15 * a4;
      v29 = v21;
      v30 = v20;
      v31 = v19;
      v32 = 8;
      do
      {
        v33 = (v22 + 4 * v26);
        v34 = *v33;
        v35 = v33[1];
        v36 = (v23 + 4 * v26);
        v37 = v36[1];
        v38 = vsubq_f32(v34, *v36);
        v39 = v32;
        v40 = v25;
        v41 = v31;
        v42 = v30;
        v43 = v29;
        v44 = (v24 + 4 * v26);
        v26 += 8;
        v32 += 8;
        ++v25;
        *v44 = v38;
        v44[1] = vsubq_f32(v35, v37);
        v31 += 2;
        v30 += 2;
        v29 = v43 + 2;
      }

      while (v26 <= v11);
      if (v10 >= v26)
      {
        if (v110 <= 0xB)
        {
          goto LABEL_20;
        }

        v50 = 32 * v40;
        v51 = a5 + v15 * a6 + 32 * v40;
        v52 = v51 + 32;
        v53 = v51 + v109;
        v54 = result + v27 + v50;
        v55 = v54 + 32;
        v56 = v54 + v109;
        v57 = a3 + v28 + v50;
        v58 = v52 >= v57 + v109 || v57 + 32 >= v53;
        v59 = !v58;
        if (v55 < v53 && v52 < v56)
        {
          goto LABEL_20;
        }

        if (v59)
        {
          goto LABEL_20;
        }

        v39 += 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
        v61 = v108 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = v42[2];
          v63 = v42[3];
          v64 = *v42;
          v65 = v42[1];
          v42 += 4;
          v66 = v43[2];
          v67 = v43[3];
          v68 = *v43;
          v69 = v43[1];
          v43 += 4;
          v41[2] = vsubq_f32(v62, v66);
          v41[3] = vsubq_f32(v63, v67);
          *v41 = vsubq_f32(v64, v68);
          v41[1] = vsubq_f32(v65, v69);
          v41 += 4;
          v61 -= 4;
        }

        while (v61);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v46 = 4 * v39;
          do
          {
            v47 = (v24 + v46);
            *v47 = vsub_f32(*(v22 + v46), *(v23 + v46));
            v47[1] = vsub_f32(*(v22 + v46 + 8), *(v23 + v46 + 8));
            v39 += 4;
            v46 += 16;
          }

          while (v39 <= v10);
        }

        v45 = v39;
        a4 = v113;
        a6 = v114;
        v84 = v39 < a7;
        v8 = a2;
        if (!v84)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v45 = v26;
        a4 = v113;
        a6 = v114;
        v8 = a2;
        if (v26 >= a7)
        {
          goto LABEL_13;
        }
      }

      v48 = v16 - v45;
      if ((v16 - v45) <= 7 || a5 - result + v112 * v15 < 0x20 || a5 - a3 + v111 * v15 < 0x20)
      {
        v49 = v45;
      }

      else
      {
        v49 = (v48 & 0xFFFFFFFFFFFFFFF8) + v45;
        v70 = 4 * v45;
        v71 = v48 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v72 = vsubq_f32(*(v22 + v70 + 16), *(v23 + v70 + 16));
          v73 = (v24 + v70);
          *v73 = vsubq_f32(*(v22 + v70), *(v23 + v70));
          v73[1] = v72;
          v70 += 32;
          v71 -= 8;
        }

        while (v71);
        if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_13;
        }
      }

      do
      {
        *(v24 + 4 * v49) = *(v22 + 4 * v49) - *(v23 + 4 * v49);
        ++v49;
      }

      while (v16 != v49);
LABEL_13:
      v22 += a2;
      v23 += a4;
      v24 += a6;
      LODWORD(v9) = v116 - 1;
      ++v15;
      v19 = (v19 + a6);
      v20 = (v20 + a2);
      v21 = (v21 + a4);
      if (!v116)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v74 = 0;
    v75 = a5 - result;
    v76 = a5 - a3;
    v77 = (v10 & 0x7FFFFFFC) + 5;
    if (v77 <= a7)
    {
      v77 = a7;
    }

    v78 = v77 - (v10 & 0x7FFFFFFC) - 4;
    v79 = (4 * (a7 - 4)) & 0x1FFFFFFF0;
    v80 = a5 + v9 * a6 + v79 + 16;
    v81 = result + v9 * a2 + v79 + 16;
    v82 = a3 + v9 * a4 + v79 + 16;
    v83 = (v10 >> 2) + 1;
    v84 = v81 > a5 && v80 > result;
    v86 = v84 || (a6 | v8) < 0;
    if (v82 > a5 && v80 > a3 || (a6 | a4) < 0)
    {
      v86 = 1;
    }

    v89 = (v10 < 0xC) | v86;
    v90 = v78 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v91 = v9;
      if (v89)
      {
        break;
      }

      v94 = 0;
      v95 = v83 & 0x3FFFFFFC;
      do
      {
        v96 = vsubq_f32(*(result + v94 + 16), *(a3 + v94 + 16));
        v97 = vsubq_f32(*(result + v94), *(a3 + v94));
        v98 = vsubq_f32(*(result + v94 + 48), *(a3 + v94 + 48));
        v99 = (a5 + v94);
        v99[2] = vsubq_f32(*(result + v94 + 32), *(a3 + v94 + 32));
        v99[3] = v98;
        *v99 = v97;
        v99[1] = v96;
        v94 += 64;
        v95 -= 4;
      }

      while (v95);
      v93 = (16 * (((v83 & 0x3FFFFFFC) >> 2) & 0xFFFFFFF)) | 4;
      v92 = 4 * (v83 & 0x3FFFFFFC);
      v100 = v92;
      if (v83 != (v83 & 0x3FFFFFFC))
      {
        goto LABEL_77;
      }

LABEL_79:
      if (v92 < a7)
      {
        if (v78 <= 7 || v75 + (a6 - v8) * v74 < 0x20 || v76 + (a6 - a4) * v74 < 0x20)
        {
          v103 = v100;
        }

        else
        {
          v103 = v100 + v90;
          v104 = 4 * v100;
          v105 = v78 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v106 = vsubq_f32(*(result + v104 + 16), *(a3 + v104 + 16));
            v107 = (a5 + v104);
            *v107 = vsubq_f32(*(result + v104), *(a3 + v104));
            v107[1] = v106;
            v104 += 32;
            v105 -= 8;
          }

          while (v105);
          if (v78 == v90)
          {
            goto LABEL_71;
          }
        }

        do
        {
          *(a5 + 4 * v103) = *(result + 4 * v103) - *(a3 + 4 * v103);
          ++v103;
        }

        while (v103 < a7);
      }

LABEL_71:
      result += v8;
      a3 += a4;
      a5 += a6;
      LODWORD(v9) = v9 - 1;
      ++v74;
      if (!v91)
      {
        return result;
      }
    }

    v92 = 0;
    v93 = 4;
LABEL_77:
    v100 = v93 - 4;
    v101 = 4 * v92;
    do
    {
      v102 = (a5 + v101);
      *v102 = vsub_f32(*(result + v101), *(a3 + v101));
      v102[1] = vsub_f32(*(result + v101 + 8), *(a3 + v101 + 8));
      v92 += 4;
      v100 += 4;
      v101 += 16;
    }

    while (v92 <= v10);
    goto LABEL_79;
  }

  if (a7 >= 1)
  {
    v12 = (a5 + 8);
    v13 = (a3 + 8);
    v14 = (result + 8);
    do
    {
      *(v12 - 2) = *(v14 - 2) - *(v13 - 2);
      if (a7 != 1)
      {
        *(v12 - 1) = *(v14 - 1) - *(v13 - 1);
        if (a7 != 2)
        {
          *v12 = *v14 - *v13;
        }
      }

      v12 = (v12 + a6);
      v13 = (v13 + a4);
      v14 = (v14 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E1CAC(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = (a7 - 4);
    if (a7 >= 4)
    {
      v12 = (a8 - 1);
      v13 = v8 & 0x7FFFFFFC;
      v14 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
      v15 = a5 + v14;
      if (v13 + 5 <= a7)
      {
        v16 = a7;
      }

      else
      {
        v16 = (v8 & 0x7FFFFFFC) + 5;
      }

      v17 = a5 + v12 * a6;
      v18 = v17 + 8 * v16;
      v19 = result + v14;
      v20 = result + v12 * a2;
      v21 = v20 + 8 * v16;
      v56 = a3 + v14;
      v22 = a3 + v12 * a4;
      v23 = v16 - 4;
      v24 = v14 + v17;
      v25 = v14 + v20;
      v26 = v14 + v22;
      v27 = (v8 >> 2) + 1;
      v29 = v26 > a5 && v24 > a3;
      v30 = v25 > a5 && v24 > result;
      v31 = a6 | a4;
      if (v30)
      {
        v29 = 1;
      }

      v32 = v16 - 4 - v13 < 8;
      v35 = v15 < v21 && v19 < v18 || (a6 | a2) < 0;
      if (v15 < v22 + 8 * v16 && v56 < v18 || v31 < 0)
      {
        v35 = 1;
      }

      v38 = v16 & 3;
      v39 = (v8 & 0x7FFFFFFC) + v16 - v13 - v38;
      v40 = v32 || v35;
      v41 = v23 - v38 - v13;
      do
      {
        v42 = v12;
        v43 = 0;
        if (v8 < 0xC || (v31 | a2) < 0 || v29)
        {
          goto LABEL_48;
        }

        v44 = v27 & 0x3FFFFFFE;
        do
        {
          v45 = vsubq_f64(*(result + v43 + 16), *(a3 + v43 + 16));
          v46 = vsubq_f64(*(result + v43), *(a3 + v43));
          v47 = vsubq_f64(*(result + v43 + 48), *(a3 + v43 + 48));
          v48 = (a5 + v43);
          v48[2] = vsubq_f64(*(result + v43 + 32), *(a3 + v43 + 32));
          v48[3] = v47;
          *v48 = v46;
          v48[1] = v45;
          v43 += 64;
          v44 -= 2;
        }

        while (v44);
        v43 = 4 * (v27 & 0x3FFFFFFE);
        if (v27 != (v27 & 0x3FFFFFFE))
        {
LABEL_48:
          v49 = 8 * v43;
          do
          {
            v50 = (a5 + v49);
            *v50 = vsubq_f64(*(result + v49), *(a3 + v49));
            v50[1] = vsubq_f64(*(result + v49 + 16), *(a3 + v49 + 16));
            v43 += 4;
            v49 += 32;
          }

          while (v43 <= v8);
        }

        if (v43 < a7)
        {
          v51 = (v8 & 0x7FFFFFFC) + 4;
          if (v40)
          {
            goto LABEL_59;
          }

          v52 = 32 * ((v8 >> 2) & 0x1FFFFFFF);
          v53 = v41;
          do
          {
            v54 = vsubq_f64(*(result + v52 + 48), *(a3 + v52 + 48));
            v55 = (a5 + v52);
            v55[2] = vsubq_f64(*(result + v52 + 32), *(a3 + v52 + 32));
            v55[3] = v54;
            v52 += 32;
            v53 -= 4;
          }

          while (v53);
          v51 = v39;
          if (v38)
          {
LABEL_59:
            do
            {
              *(a5 + 8 * v51) = *(result + 8 * v51) - *(a3 + 8 * v51);
              ++v51;
            }

            while (v51 < a7);
          }
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        LODWORD(v12) = v42 - 1;
      }

      while (v42);
    }

    else if (a7 >= 1)
    {
      v9 = (a5 + 16);
      v10 = (a3 + 16);
      v11 = (result + 16);
      do
      {
        *(v9 - 2) = *(v11 - 2) - *(v10 - 2);
        if (a7 != 1)
        {
          *(v9 - 1) = *(v11 - 1) - *(v10 - 1);
          if (a7 != 2)
          {
            *v9 = *v11 - *v10;
          }
        }

        v9 = (v9 + a6);
        v10 = (v10 + a4);
        v11 = (v11 + a2);
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

uint64_t sub_1001E1F8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a8)
  {
    v8 = a7 - 4;
    do
    {
      if (a7 >= 32)
      {
        v10 = 16;
        do
        {
          v11 = vmaxq_u8(*(result + v10), *(a3 + v10));
          v12 = (a5 + v10);
          v12[-1] = vmaxq_u8(*(result + v10 - 16), *(a3 + v10 - 16));
          *v12 = v11;
          v13 = v10 + 16;
          v10 += 32;
        }

        while (v13 <= a7 - 32);
        v9 = (v10 - 16);
        if (v9 > v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0;
        if (v8 < 0)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v14 = byte_1003E59DE[*(a3 + v9 + 1) - *(result + v9 + 1) + 256] + *(result + v9 + 1);
        v15 = (a5 + v9);
        *v15 = byte_1003E59DE[*(a3 + v9) - *(result + v9) + 256] + *(result + v9);
        v15[1] = v14;
        v16 = byte_1003E59DE[*(a3 + v9 + 3) - *(result + v9 + 3) + 256] + *(result + v9 + 3);
        v15[2] = byte_1003E59DE[*(a3 + v9 + 2) - *(result + v9 + 2) + 256] + *(result + v9 + 2);
        v15[3] = v16;
        v9 += 4;
      }

      while (v9 <= v8);
      v9 = v9;
LABEL_12:
      if (v9 < a7)
      {
        do
        {
          *(a5 + v9) = byte_1003E59DE[*(a3 + v9) - *(result + v9) + 256] + *(result + v9);
          ++v9;
        }

        while (a7 != v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E20EC(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = (a8 - 1);
  v9 = (a7 - 4);
  v10 = (a7 - 32);
  v137 = a4;
  v138 = a6;
  v139 = a2;
  if (a7 >= 32)
  {
    v17 = 0;
    v18 = a7;
    v136 = a6 - a2;
    v135 = a6 - a4;
    v19 = (v10 & 0x7FFFFFE0) + 36;
    if (v19 <= v9 + 1)
    {
      v19 = v9 + 1;
    }

    v20 = v19 - (v10 & 0x7FFFFFE0) - 33;
    v133 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 36;
    v134 = v20;
    v132 = (v20 >> 2) + 1;
    v21 = (a5 + 32);
    v22 = (result + 32);
    v23 = (a3 + 32);
    v24 = result;
    v25 = a3;
    v26 = a5;
    while (1)
    {
      v28 = a7;
      v29 = 0;
      v30 = 0;
      v31 = v17 * a6;
      v32 = v17 * a2;
      v33 = v17 * a4;
      v34 = v23;
      v35 = v22;
      v36 = v21;
      v37 = 32;
      do
      {
        v38 = vmaxq_s8(*(v24 + v30), *(v25 + v30));
        v39 = v37;
        v40 = v29;
        v41 = v36;
        v42 = v35;
        v43 = v34;
        v44 = vmaxq_s8(*(v24 + v30 + 16), *(v25 + v30 + 16));
        v45 = (v26 + v30);
        v30 += 32;
        v37 += 32;
        ++v29;
        *v45 = v38;
        v45[1] = v44;
        v36 += 2;
        v35 += 2;
        v34 = v43 + 2;
      }

      while (v30 <= v10);
      if (v9 >= v30)
      {
        if (v134 <= 0x3B)
        {
          goto LABEL_134;
        }

        v58 = 32 * v40;
        v59 = a5 + v31 + 32 * v40;
        v60 = v59 + 32;
        v61 = v59 + v133;
        v62 = result + v32 + v58;
        v63 = v62 + 32;
        v64 = v62 + v133;
        v65 = a3 + v33 + v58;
        v66 = v60 >= v65 + v133 || v65 + 32 >= v61;
        v67 = !v66;
        if (v63 < v61 && v60 < v64)
        {
          goto LABEL_134;
        }

        if (v67)
        {
          goto LABEL_134;
        }

        v39 += 4 * (v132 & 0x7FFFFFFFFFFFFFF0);
        v69 = v132 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v70 = v42[2];
          v71 = v42[3];
          v72 = *v42;
          v73 = v42[1];
          v42 += 4;
          v74 = v43[2];
          v75 = v43[3];
          v76 = *v43;
          v77 = v43[1];
          v43 += 4;
          v41[2] = vmaxq_s8(v70, v74);
          v41[3] = vmaxq_s8(v71, v75);
          *v41 = vmaxq_s8(v72, v76);
          v41[1] = vmaxq_s8(v73, v77);
          v41 += 4;
          v69 -= 16;
        }

        while (v69);
        if (v132 != (v132 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_134:
          do
          {
            v47 = (v24 + v39);
            v48 = *(v24 + v39);
            v49 = (v25 + v39);
            if (v48 <= *(v25 + v39))
            {
              LOBYTE(v48) = *(v25 + v39);
            }

            v50 = v47[1];
            if (v50 <= v49[1])
            {
              LOBYTE(v50) = v49[1];
            }

            v51 = (v26 + v39);
            *v51 = v48;
            v51[1] = v50;
            v52 = v47[2];
            if (v52 <= v49[2])
            {
              LOBYTE(v52) = v49[2];
            }

            v53 = v47[3];
            v54 = v49[3];
            if (v53 <= v54)
            {
              LOBYTE(v53) = v54;
            }

            v51[2] = v52;
            v51[3] = v53;
            v39 += 4;
          }

          while (v39 <= v9);
        }

        v46 = v39;
        a6 = v138;
        a2 = v139;
        a7 = v28;
        a4 = v137;
        if (v39 >= v28)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v46 = v30;
        a6 = v138;
        a2 = v139;
        a7 = v28;
        a4 = v137;
        if (v30 >= v28)
        {
          goto LABEL_19;
        }
      }

      v55 = v18 - v46;
      if ((v18 - v46) < 8)
      {
        v56 = v46;
        goto LABEL_38;
      }

      if (a5 - result + v136 * v17 < 0x20)
      {
        v56 = v46;
        goto LABEL_38;
      }

      if (a5 - a3 + v135 * v17 < 0x20)
      {
        v56 = v46;
        goto LABEL_38;
      }

      if (v55 >= 0x20)
      {
        v78 = v55 & 0xFFFFFFFFFFFFFFE0;
        v79 = v46;
        v80 = v55 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v81 = vmaxq_s8(*(v24 + v79 + 16), *(v25 + v79 + 16));
          v82 = (v26 + v79);
          *v82 = vmaxq_s8(*(v24 + v79), *(v25 + v79));
          v82[1] = v81;
          v79 += 32;
          v80 -= 32;
        }

        while (v80);
        if (v55 == v78)
        {
          goto LABEL_19;
        }

        if ((v55 & 0x18) == 0)
        {
          v56 = v78 + v46;
          do
          {
LABEL_38:
            v57 = *(v24 + v56);
            if (v57 <= *(v25 + v56))
            {
              LOBYTE(v57) = *(v25 + v56);
            }

            *(v26 + v56++) = v57;
          }

          while (v18 != v56);
          goto LABEL_19;
        }
      }

      else
      {
        v78 = 0;
      }

      v56 = (v55 & 0xFFFFFFFFFFFFFFF8) + v46;
      v83 = v78 - (v55 & 0xFFFFFFFFFFFFFFF8);
      v84 = v78 + v46;
      do
      {
        *(v26 + v84) = vmax_s8(*(v24 + v84), *(v25 + v84));
        v84 += 8;
        v83 += 8;
      }

      while (v83);
      if (v55 != (v55 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_38;
      }

LABEL_19:
      v24 += a2;
      v25 += a4;
      v26 += a6;
      v27 = v8;
      LODWORD(v8) = v8 - 1;
      ++v17;
      v21 = (v21 + a6);
      v22 = (v22 + a2);
      v23 = (v23 + a4);
      if (!v27)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v85 = 0;
    v86 = a5 - result;
    v87 = a6 - a2;
    v88 = a5 - a3;
    v89 = a6 - a4;
    v90 = v9 & 0x7FFFFFFC;
    v91 = v90 + 5;
    if (v90 + 5 <= a7)
    {
      v91 = a7;
    }

    v92 = v91 - v90 - 4;
    v93 = a5 + v8 * a6 + v90 + 4;
    v94 = result + v8 * a2 + v90 + 4;
    v95 = a3 + v8 * a4 + v90 + 4;
    v96 = (v9 >> 2) + 1;
    v99 = v94 > a5 && v93 > result || (a6 | v139) < 0;
    if (v95 > a5 && v93 > a3 || (a6 | a4) < 0)
    {
      v99 = 1;
    }

    v102 = v92 & 0xFFFFFFFFFFFFFFE0;
    v103 = v92 & 0xFFFFFFFFFFFFFFF8;
    v104 = v9 < 0x3C || v99;
    while (1)
    {
      v105 = v8;
      if (v104)
      {
        v106 = 0;
        v107 = 4;
      }

      else
      {
        v108 = 0;
        v109 = v96 & 0x3FFFFFF0;
        do
        {
          v110 = vmaxq_s8(*(result + v108 + 16), *(a3 + v108 + 16));
          v111 = vmaxq_s8(*(result + v108), *(a3 + v108));
          v112 = vmaxq_s8(*(result + v108 + 48), *(a3 + v108 + 48));
          v113 = (a5 + v108);
          v113[2] = vmaxq_s8(*(result + v108 + 32), *(a3 + v108 + 32));
          v113[3] = v112;
          *v113 = v111;
          v113[1] = v110;
          v108 += 64;
          v109 -= 16;
        }

        while (v109);
        v107 = ((((v96 & 0x3FFFFFF0) >> 4) & 0x3FFFFFF) << 6) | 4;
        v106 = 4 * (v96 & 0x3FFFFFF0);
        v114 = v106;
        if (v96 == (v96 & 0x3FFFFFF0))
        {
          goto LABEL_110;
        }
      }

      v114 = v107 - 4;
      do
      {
        v115 = (result + v106);
        v116 = *(result + v106);
        v117 = (a3 + v106);
        if (v116 <= *(a3 + v106))
        {
          LOBYTE(v116) = *(a3 + v106);
        }

        v118 = v115[1];
        if (v118 <= v117[1])
        {
          LOBYTE(v118) = v117[1];
        }

        v119 = (a5 + v106);
        *v119 = v116;
        v119[1] = v118;
        v120 = v115[2];
        if (v120 <= v117[2])
        {
          LOBYTE(v120) = v117[2];
        }

        v121 = v115[3];
        v122 = v117[3];
        if (v121 <= v122)
        {
          LOBYTE(v121) = v122;
        }

        v119[2] = v120;
        v119[3] = v121;
        v106 += 4;
        v114 += 4;
      }

      while (v106 <= v9);
LABEL_110:
      if (v106 < a7)
      {
        if (v92 < 8)
        {
          v123 = v114;
          goto LABEL_113;
        }

        if (v86 + v87 * v85 < 0x20)
        {
          v123 = v114;
          goto LABEL_113;
        }

        if (v88 + v89 * v85 < 0x20)
        {
          v123 = v114;
          goto LABEL_113;
        }

        if (v92 >= 0x20)
        {
          v126 = v114;
          v127 = v92 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v128 = vmaxq_s8(*(result + v126 + 16), *(a3 + v126 + 16));
            v129 = (a5 + v126);
            *v129 = vmaxq_s8(*(result + v126), *(a3 + v126));
            v129[1] = v128;
            v126 += 32;
            v127 -= 32;
          }

          while (v127);
          if (v92 == v102)
          {
            goto LABEL_94;
          }

          v125 = v92 & 0xFFFFFFFFFFFFFFE0;
          if ((v92 & 0x18) == 0)
          {
            v123 = v114 + v102;
            do
            {
LABEL_113:
              v124 = *(result + v123);
              if (v124 <= *(a3 + v123))
              {
                LOBYTE(v124) = *(a3 + v123);
              }

              *(a5 + v123++) = v124;
            }

            while (v123 < a7);
            goto LABEL_94;
          }
        }

        else
        {
          v125 = 0;
        }

        v123 = v114 + v103;
        v130 = v125 - (v92 & 0xFFFFFFFFFFFFFFF8);
        v131 = v125 + v114;
        do
        {
          *(a5 + v131) = vmax_s8(*(result + v131), *(a3 + v131));
          v131 += 8;
          v130 += 8;
        }

        while (v130);
        if (v92 != v103)
        {
          goto LABEL_113;
        }
      }

LABEL_94:
      result += v139;
      a3 += v137;
      a5 += v138;
      LODWORD(v8) = v105 - 1;
      ++v85;
      if (!v105)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v11 = (a5 + 2);
    v12 = (a3 + 2);
    v13 = (result + 1);
    do
    {
      v14 = *(v13 - 1);
      if (v14 <= *(v12 - 2))
      {
        LOBYTE(v14) = *(v12 - 2);
      }

      *(v11 - 2) = v14;
      if (a7 != 1)
      {
        v15 = *v13;
        if (v15 <= *(v12 - 1))
        {
          LOBYTE(v15) = *(v12 - 1);
        }

        *(v11 - 1) = v15;
        if (a7 != 2)
        {
          v16 = v13[1];
          if (v16 <= *v12)
          {
            LOBYTE(v16) = *v12;
          }

          *v11 = v16;
        }
      }

      v11 += a6;
      v12 += a4;
      v13 += a2;
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E280C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a5;
  v9 = a3;
  v10 = result;
  v11 = (a8 - 1);
  v12 = (a7 - 4);
  v13 = (a7 - 16);
  v152 = a4;
  v153 = a6;
  v151 = a2;
  if (a7 >= 16)
  {
    v20 = 0;
    v21 = a7;
    v147 = a5 - result;
    v145 = a6 - a2;
    v144 = a5 - a3;
    v143 = a6 - a4;
    v22 = (v13 & 0x7FFFFFF0) + 20;
    if (v22 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    v23 = v22 - (v13 & 0x7FFFFFF0);
    v141 = ((2 * v23 - 34) & 0xFFFFFFFFFFFFFFF8) + 40;
    v142 = v23 - 17;
    v140 = ((v23 - 17) >> 2) + 1;
    v24 = (a5 + 32);
    v25 = result + 32;
    v26 = (a3 + 32);
    v27 = result;
    v28 = a3;
    v29 = a5;
    while (1)
    {
      v30 = 0;
      v31 = 0;
      v32 = v11;
      v33 = v20 * a6;
      result = v20 * a2;
      v34 = v20 * a4;
      v35 = v26;
      v36 = v25;
      v37 = v24;
      v38 = 16;
      do
      {
        v39 = (v27 + 2 * v31);
        v40 = *v39;
        v41 = v39[1];
        v42 = (v28 + 2 * v31);
        v43 = v42[1];
        v44 = vmaxq_u16(v40, *v42);
        v45 = v38;
        v46 = v30;
        v47 = v37;
        v48 = v36;
        v49 = v35;
        v50 = (v29 + 2 * v31);
        v31 += 16;
        v38 += 16;
        ++v30;
        *v50 = v44;
        v50[1] = vmaxq_u16(v41, v43);
        v37 += 2;
        v36 += 2;
        v35 = v49 + 2;
      }

      while (v31 <= v13);
      if (v12 >= v31)
      {
        if (v142 <= 0x1B)
        {
          goto LABEL_24;
        }

        v64 = 32 * v46;
        v65 = v8 + v33 + 32 * v46;
        v66 = v65 + 32;
        v67 = v65 + v141;
        v68 = v10 + result + v64;
        v69 = v68 + 32;
        result = v68 + v141;
        v70 = v9 + v34 + v64;
        v71 = v66 >= v70 + v141 || v70 + 32 >= v67;
        v72 = !v71;
        if (v69 < v67 && v66 < result)
        {
          goto LABEL_24;
        }

        if (v72)
        {
          goto LABEL_24;
        }

        v45 += 4 * (v140 & 0x7FFFFFFFFFFFFFF8);
        v74 = v140 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v75 = v48[2];
          v76 = v48[3];
          v77 = *v48;
          v78 = v48[1];
          v48 += 4;
          v79 = v49[2];
          v80 = v49[3];
          v81 = *v49;
          v82 = v49[1];
          v49 += 4;
          v47[2] = vmaxq_u16(v75, v79);
          v47[3] = vmaxq_u16(v76, v80);
          *v47 = vmaxq_u16(v77, v81);
          v47[1] = vmaxq_u16(v78, v82);
          v47 += 4;
          v74 -= 8;
        }

        while (v74);
        LODWORD(v31) = v45;
        if (v140 != (v140 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_24:
          v51 = 2 * v45;
          v52 = v27;
          result = v29;
          v53 = v28;
          v31 = v45;
          do
          {
            v54 = *(v52 + 2 * v45);
            if (v54 <= *(v53 + 2 * v45))
            {
              LOWORD(v54) = *(v53 + 2 * v45);
            }

            v55 = v52 + v51;
            v56 = *(v52 + v51 + 2);
            v57 = v53 + v51;
            if (v56 <= *(v53 + v51 + 2))
            {
              LOWORD(v56) = *(v53 + v51 + 2);
            }

            v58 = result + v51;
            *(result + 2 * v45) = v54;
            *(result + v51 + 2) = v56;
            v59 = *(v55 + 4);
            if (v59 <= *(v57 + 4))
            {
              LOWORD(v59) = *(v57 + 4);
            }

            v60 = *(v55 + 6);
            if (v60 <= *(v57 + 6))
            {
              LOWORD(v60) = *(v57 + 6);
            }

            v31 += 4;
            *(v58 + 4) = v59;
            *(v58 + 6) = v60;
            v53 += 8;
            result += 8;
            v52 += 8;
          }

          while (v31 <= v12);
        }
      }

      v61 = v31;
      a4 = v152;
      a6 = v153;
      a2 = v151;
      if (v31 >= a7)
      {
        goto LABEL_19;
      }

      v62 = v21 - v31;
      if (v62 < 4)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v147 + v145 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v144 + v143 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v62 >= 0x10)
      {
        v83 = v62 & 0xFFFFFFFFFFFFFFF0;
        v84 = 2 * v31;
        result = v62 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v85 = vmaxq_u16(*(v27 + v84 + 16), *(v28 + v84 + 16));
          v86 = (v29 + v84);
          *v86 = vmaxq_u16(*(v27 + v84), *(v28 + v84));
          v86[1] = v85;
          v84 += 32;
          result -= 16;
        }

        while (result);
        if (v62 == v83)
        {
          goto LABEL_19;
        }

        if ((v62 & 0xC) == 0)
        {
          v31 = v83 + v61;
          do
          {
LABEL_37:
            v63 = *(v27 + 2 * v31);
            if (v63 <= *(v28 + 2 * v31))
            {
              LOWORD(v63) = *(v28 + 2 * v31);
            }

            *(v29 + 2 * v31++) = v63;
          }

          while (v21 != v31);
          goto LABEL_19;
        }
      }

      else
      {
        v83 = 0;
      }

      result = v62 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = (v62 & 0xFFFFFFFFFFFFFFFCLL) + v61;
      v87 = v83 - (v62 & 0xFFFFFFFFFFFFFFFCLL);
      v88 = 2 * (v83 + v61);
      do
      {
        *(v29 + v88) = vmax_u16(*(v27 + v88), *(v28 + v88));
        v88 += 8;
        v87 += 4;
      }

      while (v87);
      if (v62 != result)
      {
        goto LABEL_37;
      }

LABEL_19:
      v27 += v151;
      v28 += v152;
      v29 += v153;
      LODWORD(v11) = v11 - 1;
      ++v20;
      v24 = (v24 + v153);
      v25 += v151;
      v26 = (v26 + v152);
      if (!v32)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v89 = 0;
    v90 = a7;
    v91 = a5 - result;
    v92 = a6 - a2;
    v150 = a5 - a3;
    v93 = a6 - a4;
    v94 = v12 & 0x7FFFFFFC;
    if (v94 + 5 <= a7)
    {
      v95 = a7;
    }

    else
    {
      v95 = (v12 & 0x7FFFFFFC) + 5;
    }

    v96 = v95 - 4 - v94;
    v97 = (2 * (a7 - 4)) & 0xFFFFFFF8;
    v98 = a5 + v11 * a6 + v97 + 8;
    v99 = v10 + v11 * a2 + v97 + 8;
    v100 = a3 + v11 * a4 + v97 + 8;
    v101 = (v12 >> 2) + 1;
    v104 = v99 > v8 && v98 > v10 || (a6 | a2) < 0;
    v107 = v100 > v8 && v98 > a3 || (a6 | a4) < 0 || v104;
    v108 = v96 & 0xFFFFFFFFFFFFFFF0;
    v109 = (v12 < 0x1C) | v107;
    v148 = v96 - (v95 & 3);
    v149 = v95 & 3;
    v146 = v95 - 4 - v149 - v94;
    while (1)
    {
      v110 = v11;
      if (v109)
      {
        v111 = 0;
        v112 = 4;
      }

      else
      {
        v113 = 0;
        v114 = v101 & 0x3FFFFFF8;
        do
        {
          v115 = vmaxq_u16(*(v10 + v113 + 16), *(v9 + v113 + 16));
          v116 = vmaxq_u16(*(v10 + v113), *(v9 + v113));
          v117 = vmaxq_u16(*(v10 + v113 + 48), *(v9 + v113 + 48));
          v118 = (v8 + v113);
          v118[2] = vmaxq_u16(*(v10 + v113 + 32), *(v9 + v113 + 32));
          v118[3] = v117;
          *v118 = v116;
          v118[1] = v115;
          v113 += 64;
          v114 -= 8;
        }

        while (v114);
        v112 = (32 * (((v101 & 0x3FFFFFF8) >> 3) & 0x7FFFFFF)) | 4;
        v111 = 4 * (v101 & 0x3FFFFFF8);
        v119 = v111;
        LODWORD(v120) = 4 * (v101 & 0x3FFFFFF8);
        if (v101 == (v101 & 0x3FFFFFF8))
        {
          goto LABEL_110;
        }
      }

      v119 = v112 - 4;
      v121 = 2 * v111;
      v122 = v9;
      v123 = v10;
      v124 = v8;
      v120 = v111;
      do
      {
        v125 = *(v123 + 2 * v111);
        if (v125 <= *(v122 + 2 * v111))
        {
          LOWORD(v125) = *(v122 + 2 * v111);
        }

        v126 = v123 + v121;
        v127 = *(v123 + v121 + 2);
        v128 = v122 + v121;
        if (v127 <= *(v122 + v121 + 2))
        {
          LOWORD(v127) = *(v122 + v121 + 2);
        }

        *(v124 + 2 * v111) = v125;
        v129 = v124 + v121;
        *(v124 + v121 + 2) = v127;
        v130 = *(v126 + 4);
        if (v130 <= *(v128 + 4))
        {
          LOWORD(v130) = *(v128 + 4);
        }

        v131 = *(v126 + 6);
        v132 = *(v128 + 6);
        if (v131 <= v132)
        {
          LOWORD(v131) = v132;
        }

        v120 += 4;
        v119 += 4;
        *(v129 + 4) = v130;
        *(v129 + 6) = v131;
        v124 += 8;
        v123 += 8;
        v122 += 8;
      }

      while (v120 <= v12);
LABEL_110:
      result = a7;
      if (v120 < a7)
      {
        if (v96 < 4)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v91 + v92 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v150 + v93 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v96 >= 0x10)
        {
          result = 2 * v119;
          v135 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v136 = vmaxq_u16(*(v10 + result + 16), *(v9 + result + 16));
            v137 = (v8 + result);
            *v137 = vmaxq_u16(*(v10 + result), *(v9 + result));
            v137[1] = v136;
            result += 32;
            v135 -= 16;
          }

          while (v135);
          if (v96 == v108)
          {
            goto LABEL_94;
          }

          v134 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) == 0)
          {
            result = v119 + v108;
            do
            {
LABEL_113:
              v133 = *(v10 + 2 * result);
              if (v133 <= *(v9 + 2 * result))
              {
                LOWORD(v133) = *(v9 + 2 * result);
              }

              *(v8 + 2 * result++) = v133;
            }

            while (result < v90);
            goto LABEL_94;
          }
        }

        else
        {
          v134 = 0;
        }

        result = v119 + v148;
        v138 = v146 - v134;
        v139 = 2 * (v134 + v119);
        do
        {
          *(v8 + v139) = vmax_u16(*(v10 + v139), *(v9 + v139));
          v139 += 8;
          v138 -= 4;
        }

        while (v138);
        if (v149)
        {
          goto LABEL_113;
        }
      }

LABEL_94:
      v10 += v151;
      v9 += v152;
      v8 += v153;
      LODWORD(v11) = v110 - 1;
      ++v89;
      if (!v110)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v14 = (a5 + 4);
    v15 = (a3 + 4);
    v16 = (result + 4);
    do
    {
      v17 = *(v16 - 2);
      if (v17 <= *(v15 - 2))
      {
        LOWORD(v17) = *(v15 - 2);
      }

      *(v14 - 2) = v17;
      if (a7 != 1)
      {
        v18 = *(v16 - 1);
        if (v18 <= *(v15 - 1))
        {
          LOWORD(v18) = *(v15 - 1);
        }

        *(v14 - 1) = v18;
        if (a7 != 2)
        {
          v19 = *v16;
          if (v19 <= *v15)
          {
            LOWORD(v19) = *v15;
          }

          *v14 = v19;
        }
      }

      v14 = (v14 + a6);
      v15 = (v15 + a4);
      v16 = (v16 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}

unint64_t sub_1001E2F9C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!a8)
  {
    return result;
  }

  v8 = a5;
  v9 = a3;
  v10 = result;
  v11 = (a8 - 1);
  v12 = (a7 - 4);
  v13 = (a7 - 16);
  v152 = a4;
  v153 = a6;
  v151 = a2;
  if (a7 >= 16)
  {
    v20 = 0;
    v21 = a7;
    v147 = a5 - result;
    v145 = a6 - a2;
    v144 = a5 - a3;
    v143 = a6 - a4;
    v22 = (v13 & 0x7FFFFFF0) + 20;
    if (v22 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    v23 = v22 - (v13 & 0x7FFFFFF0);
    v141 = ((2 * v23 - 34) & 0xFFFFFFFFFFFFFFF8) + 40;
    v142 = v23 - 17;
    v140 = ((v23 - 17) >> 2) + 1;
    v24 = (a5 + 32);
    v25 = result + 32;
    v26 = (a3 + 32);
    v27 = result;
    v28 = a3;
    v29 = a5;
    while (1)
    {
      v30 = 0;
      v31 = 0;
      v32 = v11;
      v33 = v20 * a6;
      result = v20 * a2;
      v34 = v20 * a4;
      v35 = v26;
      v36 = v25;
      v37 = v24;
      v38 = 16;
      do
      {
        v39 = (v27 + 2 * v31);
        v40 = *v39;
        v41 = v39[1];
        v42 = (v28 + 2 * v31);
        v43 = v42[1];
        v44 = vmaxq_s16(v40, *v42);
        v45 = v38;
        v46 = v30;
        v47 = v37;
        v48 = v36;
        v49 = v35;
        v50 = (v29 + 2 * v31);
        v31 += 16;
        v38 += 16;
        ++v30;
        *v50 = v44;
        v50[1] = vmaxq_s16(v41, v43);
        v37 += 2;
        v36 += 2;
        v35 = v49 + 2;
      }

      while (v31 <= v13);
      if (v12 >= v31)
      {
        if (v142 <= 0x1B)
        {
          goto LABEL_24;
        }

        v64 = 32 * v46;
        v65 = v8 + v33 + 32 * v46;
        v66 = v65 + 32;
        v67 = v65 + v141;
        v68 = v10 + result + v64;
        v69 = v68 + 32;
        result = v68 + v141;
        v70 = v9 + v34 + v64;
        v71 = v66 >= v70 + v141 || v70 + 32 >= v67;
        v72 = !v71;
        if (v69 < v67 && v66 < result)
        {
          goto LABEL_24;
        }

        if (v72)
        {
          goto LABEL_24;
        }

        v45 += 4 * (v140 & 0x7FFFFFFFFFFFFFF8);
        v74 = v140 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v75 = v48[2];
          v76 = v48[3];
          v77 = *v48;
          v78 = v48[1];
          v48 += 4;
          v79 = v49[2];
          v80 = v49[3];
          v81 = *v49;
          v82 = v49[1];
          v49 += 4;
          v47[2] = vmaxq_s16(v75, v79);
          v47[3] = vmaxq_s16(v76, v80);
          *v47 = vmaxq_s16(v77, v81);
          v47[1] = vmaxq_s16(v78, v82);
          v47 += 4;
          v74 -= 8;
        }

        while (v74);
        LODWORD(v31) = v45;
        if (v140 != (v140 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_24:
          v51 = 2 * v45;
          v52 = v27;
          result = v29;
          v53 = v28;
          v31 = v45;
          do
          {
            v54 = *(v52 + 2 * v45);
            if (v54 <= *(v53 + 2 * v45))
            {
              LOWORD(v54) = *(v53 + 2 * v45);
            }

            v55 = v52 + v51;
            v56 = *(v52 + v51 + 2);
            v57 = v53 + v51;
            if (v56 <= *(v53 + v51 + 2))
            {
              LOWORD(v56) = *(v53 + v51 + 2);
            }

            v58 = result + v51;
            *(result + 2 * v45) = v54;
            *(result + v51 + 2) = v56;
            v59 = *(v55 + 4);
            if (v59 <= *(v57 + 4))
            {
              LOWORD(v59) = *(v57 + 4);
            }

            v60 = *(v55 + 6);
            if (v60 <= *(v57 + 6))
            {
              LOWORD(v60) = *(v57 + 6);
            }

            v31 += 4;
            *(v58 + 4) = v59;
            *(v58 + 6) = v60;
            v53 += 8;
            result += 8;
            v52 += 8;
          }

          while (v31 <= v12);
        }
      }

      v61 = v31;
      a4 = v152;
      a6 = v153;
      a2 = v151;
      if (v31 >= a7)
      {
        goto LABEL_19;
      }

      v62 = v21 - v31;
      if (v62 < 4)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v147 + v145 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v144 + v143 * v20 < 0x20)
      {
        v31 = v31;
        goto LABEL_37;
      }

      if (v62 >= 0x10)
      {
        v83 = v62 & 0xFFFFFFFFFFFFFFF0;
        v84 = 2 * v31;
        result = v62 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v85 = vmaxq_s16(*(v27 + v84 + 16), *(v28 + v84 + 16));
          v86 = (v29 + v84);
          *v86 = vmaxq_s16(*(v27 + v84), *(v28 + v84));
          v86[1] = v85;
          v84 += 32;
          result -= 16;
        }

        while (result);
        if (v62 == v83)
        {
          goto LABEL_19;
        }

        if ((v62 & 0xC) == 0)
        {
          v31 = v83 + v61;
          do
          {
LABEL_37:
            v63 = *(v27 + 2 * v31);
            if (v63 <= *(v28 + 2 * v31))
            {
              LOWORD(v63) = *(v28 + 2 * v31);
            }

            *(v29 + 2 * v31++) = v63;
          }

          while (v21 != v31);
          goto LABEL_19;
        }
      }

      else
      {
        v83 = 0;
      }

      result = v62 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = (v62 & 0xFFFFFFFFFFFFFFFCLL) + v61;
      v87 = v83 - (v62 & 0xFFFFFFFFFFFFFFFCLL);
      v88 = 2 * (v83 + v61);
      do
      {
        *(v29 + v88) = vmax_s16(*(v27 + v88), *(v28 + v88));
        v88 += 8;
        v87 += 4;
      }

      while (v87);
      if (v62 != result)
      {
        goto LABEL_37;
      }

LABEL_19:
      v27 += v151;
      v28 += v152;
      v29 += v153;
      LODWORD(v11) = v11 - 1;
      ++v20;
      v24 = (v24 + v153);
      v25 += v151;
      v26 = (v26 + v152);
      if (!v32)
      {
        return result;
      }
    }
  }

  if (a7 >= 4)
  {
    v89 = 0;
    v90 = a7;
    v91 = a5 - result;
    v92 = a6 - a2;
    v150 = a5 - a3;
    v93 = a6 - a4;
    v94 = v12 & 0x7FFFFFFC;
    if (v94 + 5 <= a7)
    {
      v95 = a7;
    }

    else
    {
      v95 = (v12 & 0x7FFFFFFC) + 5;
    }

    v96 = v95 - 4 - v94;
    v97 = (2 * (a7 - 4)) & 0xFFFFFFF8;
    v98 = a5 + v11 * a6 + v97 + 8;
    v99 = v10 + v11 * a2 + v97 + 8;
    v100 = a3 + v11 * a4 + v97 + 8;
    v101 = (v12 >> 2) + 1;
    v104 = v99 > v8 && v98 > v10 || (a6 | a2) < 0;
    v107 = v100 > v8 && v98 > a3 || (a6 | a4) < 0 || v104;
    v108 = v96 & 0xFFFFFFFFFFFFFFF0;
    v109 = (v12 < 0x1C) | v107;
    v148 = v96 - (v95 & 3);
    v149 = v95 & 3;
    v146 = v95 - 4 - v149 - v94;
    while (1)
    {
      v110 = v11;
      if (v109)
      {
        v111 = 0;
        v112 = 4;
      }

      else
      {
        v113 = 0;
        v114 = v101 & 0x3FFFFFF8;
        do
        {
          v115 = vmaxq_s16(*(v10 + v113 + 16), *(v9 + v113 + 16));
          v116 = vmaxq_s16(*(v10 + v113), *(v9 + v113));
          v117 = vmaxq_s16(*(v10 + v113 + 48), *(v9 + v113 + 48));
          v118 = (v8 + v113);
          v118[2] = vmaxq_s16(*(v10 + v113 + 32), *(v9 + v113 + 32));
          v118[3] = v117;
          *v118 = v116;
          v118[1] = v115;
          v113 += 64;
          v114 -= 8;
        }

        while (v114);
        v112 = (32 * (((v101 & 0x3FFFFFF8) >> 3) & 0x7FFFFFF)) | 4;
        v111 = 4 * (v101 & 0x3FFFFFF8);
        v119 = v111;
        LODWORD(v120) = 4 * (v101 & 0x3FFFFFF8);
        if (v101 == (v101 & 0x3FFFFFF8))
        {
          goto LABEL_110;
        }
      }

      v119 = v112 - 4;
      v121 = 2 * v111;
      v122 = v9;
      v123 = v10;
      v124 = v8;
      v120 = v111;
      do
      {
        v125 = *(v123 + 2 * v111);
        if (v125 <= *(v122 + 2 * v111))
        {
          LOWORD(v125) = *(v122 + 2 * v111);
        }

        v126 = v123 + v121;
        v127 = *(v123 + v121 + 2);
        v128 = v122 + v121;
        if (v127 <= *(v122 + v121 + 2))
        {
          LOWORD(v127) = *(v122 + v121 + 2);
        }

        *(v124 + 2 * v111) = v125;
        v129 = v124 + v121;
        *(v124 + v121 + 2) = v127;
        v130 = *(v126 + 4);
        if (v130 <= *(v128 + 4))
        {
          LOWORD(v130) = *(v128 + 4);
        }

        v131 = *(v126 + 6);
        v132 = *(v128 + 6);
        if (v131 <= v132)
        {
          LOWORD(v131) = v132;
        }

        v120 += 4;
        v119 += 4;
        *(v129 + 4) = v130;
        *(v129 + 6) = v131;
        v124 += 8;
        v123 += 8;
        v122 += 8;
      }

      while (v120 <= v12);
LABEL_110:
      result = a7;
      if (v120 < a7)
      {
        if (v96 < 4)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v91 + v92 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v150 + v93 * v89 < 0x20)
        {
          result = v119;
          goto LABEL_113;
        }

        if (v96 >= 0x10)
        {
          result = 2 * v119;
          v135 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v136 = vmaxq_s16(*(v10 + result + 16), *(v9 + result + 16));
            v137 = (v8 + result);
            *v137 = vmaxq_s16(*(v10 + result), *(v9 + result));
            v137[1] = v136;
            result += 32;
            v135 -= 16;
          }

          while (v135);
          if (v96 == v108)
          {
            goto LABEL_94;
          }

          v134 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) == 0)
          {
            result = v119 + v108;
            do
            {
LABEL_113:
              v133 = *(v10 + 2 * result);
              if (v133 <= *(v9 + 2 * result))
              {
                LOWORD(v133) = *(v9 + 2 * result);
              }

              *(v8 + 2 * result++) = v133;
            }

            while (result < v90);
            goto LABEL_94;
          }
        }

        else
        {
          v134 = 0;
        }

        result = v119 + v148;
        v138 = v146 - v134;
        v139 = 2 * (v134 + v119);
        do
        {
          *(v8 + v139) = vmax_s16(*(v10 + v139), *(v9 + v139));
          v139 += 8;
          v138 -= 4;
        }

        while (v138);
        if (v149)
        {
          goto LABEL_113;
        }
      }

LABEL_94:
      v10 += v151;
      v9 += v152;
      v8 += v153;
      LODWORD(v11) = v110 - 1;
      ++v89;
      if (!v110)
      {
        return result;
      }
    }
  }

  if (a7 >= 1)
  {
    v14 = (a5 + 4);
    v15 = (a3 + 4);
    v16 = (result + 4);
    do
    {
      v17 = *(v16 - 2);
      if (v17 <= *(v15 - 2))
      {
        LOWORD(v17) = *(v15 - 2);
      }

      *(v14 - 2) = v17;
      if (a7 != 1)
      {
        v18 = *(v16 - 1);
        if (v18 <= *(v15 - 1))
        {
          LOWORD(v18) = *(v15 - 1);
        }

        *(v14 - 1) = v18;
        if (a7 != 2)
        {
          v19 = *v16;
          if (v19 <= *v15)
          {
            LOWORD(v19) = *v15;
          }

          *v14 = v19;
        }
      }

      v14 = (v14 + a6);
      v15 = (v15 + a4);
      v16 = (v16 + a2);
      --a8;
    }

    while (a8);
  }

  return result;
}