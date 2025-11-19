uint64_t sub_10004AB68(uint64_t a1, uint64_t a2, char a3, const void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 200);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  memcpy((v13 + 48), a4, 0x200uLL);
  *(v13 + 560) = v6;
  *(v13 + 568) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10004B1CC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_100031688;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DC708;
  aBlock[3] = &unk_100469790;
  v15 = _Block_copy(aBlock);
  sub_10004B20C(a4, &v17);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

void sub_10004AD10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 2)
  {
    v9 = sub_10008D4F0();
    if (v9)
    {
      v10 = v9;
      ARFrame.viewToCamera(screenPoint:sceneView:orientation:)();
      if (a6)
      {
        SIMD2<>.init(_:)();
        (*(*a6 + 312))(v44, v10, 7);
        if (v44[13])
        {
          sub_100018F04(v44, &qword_1004A3E20);
          simd_float4x4.position.getter();
          v11 = 0;
          a6 = v12;
          v14 = v13;
LABEL_11:
          swift_beginAccess();
          v19 = *(a5 + 176);
          v41 = *(a5 + 160);
          v42 = v19;
          v43 = *(a5 + 192);
          v20 = *(a5 + 112);
          v37 = *(a5 + 96);
          v38 = v20;
          v21 = *(a5 + 144);
          v39 = *(a5 + 128);
          v40 = v21;
          v22 = *(a5 + 80);
          v35 = *(a5 + 64);
          v36 = v22;
          if (sub_10001376C(&v35) != 1)
          {
            v23 = a3 & 1;
            if (v11)
            {
              v24 = 0;
            }

            else
            {
              v24 = v14;
            }

            if (v11)
            {
              v25 = 0;
            }

            else
            {
              v25 = a6;
            }

            if (v11)
            {
              v23 = 2;
            }

            *(a5 + 176) = v24;
            *(a5 + 184) = v25;
            *(a5 + 192) = v23;
          }

          goto LABEL_22;
        }

        v14 = 0;
        a6 = 0;
      }

      else
      {
        v14 = 0;
      }

      v11 = 1;
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v15 = *(a5 + 176);
  v41 = *(a5 + 160);
  v42 = v15;
  v43 = *(a5 + 192);
  v16 = *(a5 + 112);
  v37 = *(a5 + 96);
  v38 = v16;
  v17 = *(a5 + 144);
  v39 = *(a5 + 128);
  v40 = v17;
  v18 = *(a5 + 80);
  v35 = *(a5 + 64);
  v36 = v18;
  if (sub_10001376C(&v35) != 1)
  {
    *(a5 + 176) = 0;
    *(a5 + 184) = 0;
    *(a5 + 192) = 2;
  }

LABEL_22:
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (qword_1004D4AC8)
  {
    v26 = *(qword_1004D4AC8 + 72);
    if (v26)
    {
      swift_beginAccess();
      v27 = *(a5 + 176);
      v41 = *(a5 + 160);
      v42 = v27;
      v43 = *(a5 + 192);
      v28 = *(a5 + 112);
      v37 = *(a5 + 96);
      v38 = v28;
      v29 = *(a5 + 144);
      v39 = *(a5 + 128);
      v40 = v29;
      v30 = *(a5 + 80);
      v35 = *(a5 + 64);
      v36 = v30;
      if (sub_10001376C(&v35) == 1 || *(a5 + 192) == 2)
      {
        v31 = 0;
        v32 = 0;
        v33 = 1;
      }

      else
      {
        v33 = 0;
        v31 = *(a5 + 176);
        v32 = *(a5 + 184);
      }

      v34 = v26;
      sub_100081770(v31, v32, v33);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004B030()
{

  v1 = *(v0 + 176);
  v6[6] = *(v0 + 160);
  v6[7] = v1;
  v7 = *(v0 + 192);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v2;
  v3 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  sub_100018F04(v6, &qword_1004A33F0);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CVOptions(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CVOptions(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10004B184()
{

  return _swift_deallocObject(v0, 576, 15);
}

uint64_t sub_10004B1F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10004B268(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10004B2A8(void *a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v12 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v12 + 272);

  *(v2 + 16) = v14(KeyPath, v13);
  *(v2 + 24) = 257;
  *(v2 + 32) = 0x403E000000000000;
  *(v2 + 48) = 0;
  sub_10004B268(v31);
  v15 = v31[7];
  *(v2 + 160) = v31[6];
  *(v2 + 176) = v15;
  *(v2 + 192) = v32;
  v16 = v31[3];
  *(v2 + 96) = v31[2];
  *(v2 + 112) = v16;
  v17 = v31[5];
  *(v2 + 128) = v31[4];
  *(v2 + 144) = v17;
  v18 = v31[1];
  *(v2 + 64) = v31[0];
  *(v2 + 80) = v18;
  sub_100018630(0, &qword_1004A3F00);
  if (qword_1004A00F8 != -1)
  {
    swift_once();
  }

  v19 = sub_10001D4C4(v7, qword_1004D4A58);
  (*(v8 + 16))(v10, v19, v7);
  v30 = &_swiftEmptyArrayStorage;
  sub_10004B758();
  sub_10000F974(&qword_1004ABEE0);
  sub_10004B7B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v27 + 104))(v26, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *(v2 + 200) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 4;
  *(v2 + 248) = 0;
  v20 = v29;
  *(v2 + 40) = v29;
  v21 = v20;
  sub_1000497F0();
  v22 = [objc_opt_self() defaultCenter];
  [v22 addObserver:v2 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];

  if (*(v2 + 25))
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  sub_100049B7C(v23 | *(v2 + 24), *(v2 + 32));
  return v2;
}

uint64_t sub_10004B6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A33F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004B758()
{
  result = qword_1004A4020;
  if (!qword_1004A4020)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4020);
  }

  return result;
}

unint64_t sub_10004B7B0()
{
  result = qword_1004A4030;
  if (!qword_1004A4030)
  {
    sub_100013BB0(&qword_1004ABEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A4030);
  }

  return result;
}

void sub_10004B9A0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004BCDC(a2);
  if (v5)
  {
    v8 = v5;
    v9 = v6;
    v10 = v7;
    sub_10004C698(3);
    v11 = OBJC_IVAR____TtC7Measure13DebugLineView_allRectangles;
    swift_beginAccess();
    v12 = *&a1[v11];

    v13 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a1[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_100067B04(0, *(v12 + 2) + 1, 1, v12);
      *&a1[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_100067B04((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[3 * v16];
    *(v17 + 4) = v8;
    *(v17 + 5) = v9;
    *(v17 + 6) = v13;
    *&a1[v11] = v12;
    swift_endAccess();
    pointClosestToOrigin(_:)();
    if (v18)
    {
    }

    else
    {
      CGPoint.init(_:)();
      v21 = [objc_allocWithZone(UILabel) initWithFrame:{v19, v20, 100.0, 100.0}];
      v22 = String._bridgeToObjectiveC()();
      v23 = [objc_opt_self() fontWithName:v22 size:12.0];

      [v21 setFont:v23];
      v24 = String._bridgeToObjectiveC()();
      [v21 setText:v24];

      [v21 setTextColor:a3];
      v25 = [objc_opt_self() blackColor];
      [v21 setShadowColor:v25];

      [a1 addSubview:v21];
      v26 = OBJC_IVAR____TtC7Measure13DebugLineView_allRectangleLabels;
      swift_beginAccess();
      v27 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&a1[v26] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v26] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }
}

uint64_t sub_10004BCDC(uint64_t a1)
{
  v2 = __chkstk_darwin(a1).n128_u64[0];
  v4 = v3;
  v5 = *&v2;
  v7 = v6;
  sub_10000F974(&qword_1004A3438);
  result = swift_allocObject();
  *(result + 16) = xmmword_1003D5230;
  v9 = *(v7 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  type metadata accessor for MeasureCamera();
  static ComputedCameraProperties.shared.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v60 = v11;
  static ComputedCameraProperties.shared.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v57 = v12;
  v13 = [objc_allocWithZone(CAShapeLayer) init];
  v14 = [objc_allocWithZone(UIBezierPath) init];
  CGPoint.init(_:)();
  [v14 moveToPoint:?];
  CGPoint.init(_:)();
  [v14 addLineToPoint:?];
  v15 = [v14 CGPath];
  [v13 setPath:v15];

  [v13 setLineWidth:v5];
  v16 = [v4 CGColor];
  [v13 setStrokeColor:v16];

  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  v53 = v4;
  v19 = [v18 CGColor];

  [v13 setFillColor:v19];
  v20 = [v1 layer];
  [v20 addSublayer:v13];

  sub_10000F974(&qword_1004A3E10);
  result = swift_allocObject();
  *(result + 16) = xmmword_1003D5730;
  *(result + 32) = vzip1q_s64(v60, v57);
  v10[4] = result;
  v10[5] = v13;
  if (v9 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  static ComputedCameraProperties.shared.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v58 = v21;
  static ComputedCameraProperties.shared.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v54 = v22;
  v23 = v1;
  v24 = [objc_allocWithZone(CAShapeLayer) init];
  v25 = [objc_allocWithZone(UIBezierPath) init];
  CGPoint.init(_:)();
  [v25 moveToPoint:?];
  CGPoint.init(_:)();
  [v25 addLineToPoint:?];
  v26 = [v25 CGPath];
  [v24 setPath:v26];

  [v24 setLineWidth:v5];
  v27 = [v53 CGColor];
  [v24 setStrokeColor:v27];

  v28 = [v17 clearColor];
  v29 = [v28 CGColor];

  [v24 setFillColor:v29];
  v30 = [v1 layer];
  [v30 addSublayer:v24];

  result = swift_allocObject();
  *(result + 16) = xmmword_1003D5730;
  *(result + 32) = vzip1q_s64(v58, v54);
  v10[6] = result;
  v10[7] = v24;
  if (v9 != 3)
  {
    static ComputedCameraProperties.shared.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v55 = v31;
    static ComputedCameraProperties.shared.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v52 = v32;
    v33 = [objc_allocWithZone(CAShapeLayer) init];
    v34 = [objc_allocWithZone(UIBezierPath) init];
    CGPoint.init(_:)();
    [v34 moveToPoint:?];
    CGPoint.init(_:)();
    [v34 addLineToPoint:?];
    v35 = [v34 CGPath];
    [v33 setPath:v35];

    [v33 setLineWidth:v5];
    v36 = [v53 CGColor];
    [v33 setStrokeColor:v36];

    v37 = [v17 clearColor];
    v38 = [v37 CGColor];

    [v33 setFillColor:v38];
    v39 = [v1 layer];
    [v39 addSublayer:v33];

    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1003D5730;
    *(v40 + 32) = vzip1q_s64(v55, v52);
    v10[8] = v40;
    v10[9] = v33;
    static ComputedCameraProperties.shared.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v59 = v41;
    static ComputedCameraProperties.shared.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v56 = v42;
    v43 = [objc_allocWithZone(CAShapeLayer) init];
    v44 = [objc_allocWithZone(UIBezierPath) init];
    CGPoint.init(_:)();
    [v44 moveToPoint:?];
    CGPoint.init(_:)();
    [v44 addLineToPoint:?];
    v45 = [v44 CGPath];
    [v43 setPath:v45];

    [v43 setLineWidth:v5];
    v46 = [v53 CGColor];
    [v43 setStrokeColor:v46];

    v47 = [v17 clearColor];
    v48 = [v47 CGColor];

    [v43 setFillColor:v48];
    v49 = [v23 layer];
    [v49 addSublayer:v43];

    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1003D5730;
    *(v50 + 32) = vzip1q_s64(v59, v56);
    v10[10] = v50;
    v10[11] = v43;
    v51 = sub_10004D824(v10);

    return v51;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10004C698(uint64_t a1)
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
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10004DA38;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100469868;
  v13 = _Block_copy(aBlock);
  v14 = v1;

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

void sub_10004C920(char *a1, void *a2, void *a3)
{
  sub_10004C698(3);
  v6 = sub_10004CC54(a2, a3, 1.0);
  v8 = v7;
  v10 = v9;
  v11 = OBJC_IVAR____TtC7Measure13DebugLineView_allRectangles;
  swift_beginAccess();
  v12 = *&a1[v11];

  v13 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v11] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100067B04(0, *(v12 + 2) + 1, 1, v12);
    *&a1[v11] = v12;
  }

  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  if (v16 >= v15 >> 1)
  {
    v12 = sub_100067B04((v15 > 1), v16 + 1, 1, v12);
  }

  *(v12 + 2) = v16 + 1;
  v17 = &v12[3 * v16];
  *(v17 + 4) = v6;
  *(v17 + 5) = v8;
  *(v17 + 6) = v13;
  *&a1[v11] = v12;
  swift_endAccess();
  pointClosestToOrigin(_:)();
  if (v18)
  {
  }

  else
  {
    CGPoint.init(_:)();
    v21 = [objc_allocWithZone(UILabel) initWithFrame:{v19, v20, 100.0, 100.0}];
    v22 = String._bridgeToObjectiveC()();
    v23 = [objc_opt_self() fontWithName:v22 size:12.0];

    [v21 setFont:v23];
    v24 = String._bridgeToObjectiveC()();
    [v21 setText:v24];

    [v21 setTextColor:a3];
    v25 = [objc_opt_self() blackColor];
    [v21 setShadowColor:v25];

    [a1 addSubview:v21];
    v26 = OBJC_IVAR____TtC7Measure13DebugLineView_allRectangleLabels;
    swift_beginAccess();
    v27 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&a1[v26] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v26] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }
}

uint64_t sub_10004CC54(void *a1, void *a2, double a3)
{
  sub_10000F974(&qword_1004A3438);
  result = swift_allocObject();
  *(result + 16) = xmmword_1003D5230;
  v8 = a1[2];
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v8 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v10 = a1[4];
  v11 = a1[5];
  v12 = [objc_allocWithZone(CAShapeLayer) init];
  v13 = [objc_allocWithZone(UIBezierPath) init];
  CGPoint.init(_:)();
  v15 = v14;
  v17 = v16;
  [v13 moveToPoint:?];
  CGPoint.init(_:)();
  v19 = v18;
  v21 = v20;
  [v13 addLineToPoint:?];
  v22 = [v13 CGPath];
  [v12 setPath:v22];

  [v12 setLineWidth:a3];
  v23 = [a2 CGColor];
  [v12 setStrokeColor:v23];

  v62 = objc_opt_self();
  v24 = [v62 clearColor];
  v25 = [v24 CGColor];

  [v12 setFillColor:v25];
  v26 = [v3 layer];
  [v26 addSublayer:v12];

  sub_10000F974(&qword_1004A3E10);
  result = swift_allocObject();
  *(result + 16) = xmmword_1003D5730;
  *(result + 32) = v10;
  *(result + 40) = v11;
  v9[4] = result;
  v9[5] = v12;
  if (v8 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = a1[6];
  v28 = [objc_allocWithZone(CAShapeLayer) init];
  v29 = [objc_allocWithZone(UIBezierPath) init];
  [v29 moveToPoint:{v19, v21}];
  CGPoint.init(_:)();
  v31 = v30;
  v33 = v32;
  [v29 addLineToPoint:?];
  v34 = [v29 CGPath];
  [v28 setPath:v34];

  [v28 setLineWidth:a3];
  v35 = [a2 CGColor];
  [v28 setStrokeColor:v35];

  v36 = [v62 clearColor];
  v37 = a2;
  v38 = [v36 CGColor];

  [v28 setFillColor:v38];
  v39 = [v3 layer];
  [v39 addSublayer:v28];

  result = swift_allocObject();
  *(result + 16) = xmmword_1003D5730;
  *(result + 32) = v11;
  *(result + 40) = v27;
  v9[6] = result;
  v9[7] = v28;
  if (v8 != 3)
  {
    v40 = a1[7];
    v41 = [objc_allocWithZone(CAShapeLayer) init];
    v42 = [objc_allocWithZone(UIBezierPath) init];
    [v42 moveToPoint:{v31, v33}];
    CGPoint.init(_:)();
    v44 = v43;
    v46 = v45;
    [v42 addLineToPoint:?];
    v47 = [v42 CGPath];
    [v41 setPath:v47];

    [v41 setLineWidth:a3];
    v48 = [v37 CGColor];
    [v41 setStrokeColor:v48];

    v49 = [v62 clearColor];
    v50 = [v49 CGColor];

    [v41 setFillColor:v50];
    v51 = [v3 layer];
    [v51 addSublayer:v41];

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1003D5730;
    *(v52 + 32) = v27;
    *(v52 + 40) = v40;
    v9[8] = v52;
    v9[9] = v41;
    v53 = [objc_allocWithZone(CAShapeLayer) init];
    v54 = [objc_allocWithZone(UIBezierPath) init];
    [v54 moveToPoint:{v44, v46}];
    [v54 addLineToPoint:{v15, v17}];
    v55 = [v54 CGPath];
    [v53 setPath:v55];

    [v53 setLineWidth:a3];
    v56 = [v37 CGColor];
    [v53 setStrokeColor:v56];

    v57 = [v62 clearColor];
    v58 = [v57 CGColor];

    [v53 setFillColor:v58];
    v59 = [v3 layer];
    [v59 addSublayer:v53];

    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1003D5730;
    *(v60 + 32) = v40;
    *(v60 + 40) = v10;
    v9[10] = v60;
    v9[11] = v53;
    v61 = sub_10004D824(v9);

    return v61;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10004D39C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Measure13DebugLineView_allRectangles;
  swift_beginAccess();
  v5 = *(*(a1 + v4) + 16);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(*(a1 + v4) + 16);
  }

  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  v9 = __OFSUB__(v5, v6);
  if (v7)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = v6;
    sub_1000A2510(0, v8, 0);
    v11 = 0;
    v6 = 0;
    v10 = _swiftEmptyArrayStorage;
    v43 = a1;
    v44 = v4;
    while (1)
    {
      v12 = *(a1 + v4);
      if (v6 >= *(v12 + 16))
      {
        goto LABEL_42;
      }

      v13 = (v12 + v11);
      v14 = v13[4];
      v15 = v13[5];
      v16 = v13[6];
      v45 = v10;
      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      v19 = v10;

      v20 = v16;
      v10 = v19;
      if (v18 >= v17 >> 1)
      {
        v22 = v20;
        sub_1000A2510((v17 > 1), v18 + 1, 1);
        v20 = v22;
        v10 = v45;
      }

      ++v6;
      *(v10 + 2) = v18 + 1;
      v21 = &v10[3 * v18];
      *(v21 + 4) = v14;
      *(v21 + 5) = v15;
      *(v21 + 6) = v20;
      v11 += 24;
      a1 = v43;
      v4 = v44;
      if (v8 == v6)
      {
        v23 = *(*(v43 + v44) + 16);
        v6 = v42;
        v24 = v23 - v42;
        if (__OFSUB__(v23, v42))
        {
          goto LABEL_41;
        }

        goto LABEL_19;
      }
    }
  }

  v24 = 0;
  if (v9)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  if (v24 < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v8 = _swiftEmptyArrayStorage;
  if (v24)
  {
    v26 = v10;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 0;
    v27 = OBJC_IVAR____TtC7Measure13DebugLineView_allRectangleLabels;
    do
    {
      swift_beginAccess();
      v28 = *(a1 + v27);
      if ((v28 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v29 = *(v28 + 8 * v8 + 32);
      }

      ++v8;
      swift_endAccess();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v24 != v8);
    v8 = _swiftEmptyArrayStorage;
    v10 = v26;
  }

  v30 = *(v10 + 2);
  if (v30)
  {
    v31 = (v10 + 6);
    do
    {
      v32 = *v31;
      v31 += 3;
      [v32 removeFromSuperlayer];
      --v30;
    }

    while (v30);
  }

  v33 = *(*(a1 + v4) + 16);
  v34 = v33 - v6;
  if (__OFSUB__(v33, v6))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  sub_10004D744(v34);
  result = swift_endAccess();
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v36 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_49;
    }

    goto LABEL_34;
  }

LABEL_48:
  result = _CocoaArrayWrapper.endIndex.getter();
  v36 = result;
  if (!result)
  {
    goto LABEL_49;
  }

LABEL_34:
  if (v36 < 1)
  {
    goto LABEL_52;
  }

  for (i = 0; i != v36; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v38 = *(v8 + 8 * i + 32);
    }

    v39 = v38;
    [v38 removeFromSuperview];
  }

LABEL_49:

  v40 = *(*(a1 + v4) + 16);
  v41 = v40 - v6;
  if (!__OFSUB__(v40, v6))
  {
    swift_beginAccess();
    sub_10004D76C(v41);
    return swift_endAccess();
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_10004D744(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_10006BA70(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004D76C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_10006BBAC(result, v2);
}

uint64_t sub_10004D824(void *a1)
{
  v3 = [objc_allocWithZone(CAShapeLayer) init];
  sub_10000F974(&qword_1004A3E10);
  result = swift_allocObject();
  *(result + 16) = xmmword_1003D5230;
  v5 = a1[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = a1[4];
  if (!*(v6 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(result + 32) = *(v6 + 32);
  if (v5 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = a1[6];
  if (!*(v7 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(result + 40) = *(v7 + 32);
  if (v5 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = a1[8];
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(result + 48) = *(v8 + 32);
  if (v5 == 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = a1[10];
  if (*(v9 + 16))
  {
    *(result + 56) = *(v9 + 32);
    v10 = result;
    [v3 addSublayer:a1[5]];
    [v3 addSublayer:a1[7]];
    [v3 addSublayer:a1[9]];
    [v3 addSublayer:a1[11]];
    v11 = [v1 layer];
    [v11 addSublayer:v3];

    return v10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_10004D9B4()
{
  result = qword_1004A3F00;
  if (!qword_1004A3F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A3F00);
  }

  return result;
}

uint64_t sub_10004DA00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004DA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004DA58(unint64_t result, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  if (!result)
  {
    return 0;
  }

  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_13:
    v10 = a2;
LABEL_14:
    sub_10006EA9C(a2);
    v12 = v11;

    return v12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v4 >= 1)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v5 layer];
      [v9 addSublayer:v8];
    }

    while (v4 != v6);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_10004DB70(uint64_t a1, void *a2)
{
  v14 = [objc_allocWithZone(CAShapeLayer) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    type metadata accessor for MeasureCamera();
    v4 = objc_opt_self();
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (((v5 + 1) & 3uLL) >= v3)
      {
        break;
      }

      static ComputedCameraProperties.shared.getter();
      static ComputedCameraProperties.shared.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
      static ComputedCameraProperties.shared.getter();
      static ComputedCameraProperties.shared.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
      v7 = [objc_allocWithZone(CAShapeLayer) init];
      v8 = [objc_allocWithZone(UIBezierPath) init];
      CGPoint.init(_:)();
      [v8 moveToPoint:?];
      CGPoint.init(_:)();
      [v8 addLineToPoint:?];
      v9 = [v8 CGPath];
      [v7 setPath:v9];

      [v7 setLineWidth:1.0];
      v10 = [a2 CGColor];
      [v7 setStrokeColor:v10];

      v11 = [v4 clearColor];
      v12 = [v11 CGColor];

      [v7 setFillColor:v12];
      [v14 addSublayer:v7];

      v5 = v6;
      if (v3 == v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

__n128 sub_10004DE04(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10004DE38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004DE80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10004DEF8()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4A70 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10004DF78@<X0>(void *a1@<X8>)
{
  if (qword_1004A0100 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A70;
  *a1 = qword_1004D4A70;

  return v2;
}

BOOL sub_10004DFE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
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
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_10004E234(v11, v13);
}

unint64_t sub_10004E07C(uint64_t a1)
{
  result = sub_10004E0A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004E0A4()
{
  result = qword_1004A3468;
  if (!qword_1004A3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A3468);
  }

  return result;
}

uint64_t sub_10004E0F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_100198230(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_10004E234(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v4 = *(a2 + 2);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v3 != v4)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = a2[28];
  if (a1[28])
  {
    if (!a2[28])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 6) != *(a2 + 6))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = a1;
  v11 = a2;
  if ((sub_10004E0F8(*(a1 + 4), *(a2 + 4)) & 1) == 0 || v10[5] != v11[5])
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  v14 = *(v10 + 6);
  v15 = *(v11 + 6);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    type metadata accessor for WorldLine();
    v16 = v15;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    v13 = v11;
    v12 = v10;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v12[16])
  {
    if ((v13[16] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v13[16] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v12 + 10), *(v13 + 10)), vceqq_f32(*(v12 + 8), *(v13 + 8))), vandq_s8(vceqq_f32(*(v12 + 12), *(v13 + 12)), vceqq_f32(*(v12 + 14), *(v13 + 14))))) & 0x80000000) == 0)
  {
    return 0;
  }

  if ((v12[18] & 1) == 0)
  {
    if ((v13[18] & 1) == 0)
    {
      v19 = vceq_f32(v12[17], v13[17]);
      if (v19.i8[0] & 1) != 0 && (v19.i8[4])
      {
        return 1;
      }
    }

    return 0;
  }

  return (v13[18] & 1) != 0;
}

double sub_10004E464@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = 1;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v11;
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 28) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = &_swiftEmptyDictionarySingleton;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  return result;
}

void sub_10004E594()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D7B50;
  v4 = [v2 leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v2 trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v2 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v2 topAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  v16 = [v1 leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v3 + 64) = v18;
  v19 = [v1 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v3 + 72) = v21;
  v22 = [v1 topAnchor];
  v23 = [v0 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v3 + 80) = v24;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

char *sub_10004E91C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
  type metadata accessor for InteractiveLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v10] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
  v15 = *&v13[OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel];
  v16 = v13;
  [v15 setUserInteractionEnabled:1];
  v17 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
  [*&v16[OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel] setUserInteractionEnabled:1];
  [v16 addSubview:*&v13[v14]];
  [v16 addSubview:*&v16[v17]];
  sub_10004E594();

  return v16;
}

char *sub_10004EAA0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
  type metadata accessor for InteractiveLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v4] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
  *&v1[v6] = [objc_allocWithZone(ObjCClassFromMetadata) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel;
    v10 = *&v7[OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel];
    v11 = v7;
    [v10 setUserInteractionEnabled:1];
    v12 = OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel;
    [*&v11[OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel] setUserInteractionEnabled:1];
    [v11 addSubview:*&v8[v9]];
    [v11 addSubview:*&v11[v12]];
    sub_10004E594();
  }

  return v8;
}

void sub_10004EC0C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_topLabel);
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityLabel:v5];

  v6 = *(v1 + OBJC_IVAR____TtC7Measure24AccessibilityDoubleStack_bottomLabel);
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  if (*(a1 + 40))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 setAccessibilityLabel:?];
}

UIColor sub_10004ED88()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_1004A34A8 = result.super.isa;
  return result;
}

char *sub_10004EDDC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure17AccuracyDebugView_maxWidth] = 0;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  if (qword_1004A0108 != -1)
  {
    swift_once();
  }

  v10 = qword_1004A34A8;
  [v9 setTextColor:qword_1004A34A8];
  [v9 setTextAlignment:0];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:18.0];
  [v9 setFont:v12];

  *&v4[OBJC_IVAR____TtC7Measure17AccuracyDebugView_lineLengthLabel] = v9;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v13 setTextColor:v10];
  [v13 setTextAlignment:0];
  v14 = [v11 systemFontOfSize:18.0];
  [v13 setFont:v14];

  *&v4[OBJC_IVAR____TtC7Measure17AccuracyDebugView_currentLineLabel] = v13;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v15 setTextColor:v10];
  [v15 setTextAlignment:0];
  v16 = [v11 systemFontOfSize:18.0];
  [v15 setFont:v16];

  *&v4[OBJC_IVAR____TtC7Measure17AccuracyDebugView_currentEstimatedErrorLabel] = v15;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v17 setTextColor:v10];
  [v17 setTextAlignment:0];
  v18 = [v11 systemFontOfSize:18.0];
  [v17 setFont:v18];

  *&v4[OBJC_IVAR____TtC7Measure17AccuracyDebugView_planeTypesLabel] = v17;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC7Measure17AccuracyDebugView_lineLengthLabel];
  v21 = v19;
  [v21 addSubview:v20];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC7Measure17AccuracyDebugView_currentLineLabel]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC7Measure17AccuracyDebugView_currentEstimatedErrorLabel]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC7Measure17AccuracyDebugView_planeTypesLabel]];

  return v21;
}

void sub_10004F1E8()
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
  v57 = sub_100018630(0, &qword_1004A7550);
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

  v29 = OBJC_IVAR____TtC7Measure17AccuracyDebugView_maxWidth;
  v30 = *&v1[OBJC_IVAR____TtC7Measure17AccuracyDebugView_maxWidth];
  v31 = [v1 subviews];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (v33)
    {
LABEL_32:
      sub_1000A2530(0, v33 & ~(v33 >> 63), 0);
      if (v33 < 0)
      {
        __break(1u);
        goto LABEL_70;
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

        v40 = *&_swiftEmptyArrayStorage[2];
        v39 = *&_swiftEmptyArrayStorage[3];
        if (v40 >= v39 >> 1)
        {
          sub_1000A2530((v39 > 1), v40 + 1, 1);
        }

        *&_swiftEmptyArrayStorage[2] = v40 + 1;
        _swiftEmptyArrayStorage[v40 + 4] = v38;
      }

      v41 = _swiftEmptyArrayStorage[2];
      if (v41 != 0.0)
      {
        goto LABEL_41;
      }

LABEL_49:
      v42 = 0.0;
      goto LABEL_50;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_32;
    }
  }

  v41 = _swiftEmptyArrayStorage[2];
  if (v41 == 0.0)
  {
    goto LABEL_49;
  }

LABEL_41:
  v42 = _swiftEmptyArrayStorage[4];
  v43 = *&v41 - 1;
  if (v43)
  {
    v44 = &_swiftEmptyArrayStorage[5];
    do
    {
      v45 = *v44++;
      v46 = v45;
      if (v42 < v45)
      {
        v42 = v46;
      }

      --v43;
    }

    while (v43);
  }

LABEL_50:

  if ((*&v42 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v47 = v30;
  }

  else
  {
    v47 = v42;
  }

  if ((~*&v42 & 0x7FF0000000000000) != 0)
  {
    v47 = v42;
  }

  if (v42 < v30)
  {
    v47 = v30;
  }

  *&v1[v29] = v47;
  v59.origin.x = v5;
  v59.origin.y = v7;
  v59.size.width = v9;
  v59.size.height = v11;
  [v1 setFrame:{0.0, CGRectGetMidY(v59) + 100.0, *&v1[v29], v23}];
  v48 = [v1 subviews];
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v49 >> 62)
  {
    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (v50)
    {
LABEL_59:
      if (v50 >= 1)
      {
        v51 = 0;
        v52 = 0.0;
        do
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v53 = *(v49 + 8 * v51 + 32);
          }

          v54 = v53;
          ++v51;
          [v53 frame];
          [v54 setFrame:?];
          [v54 frame];
          v56 = v55;

          v52 = v52 + v56;
        }

        while (v50 != v51);
        goto LABEL_66;
      }

LABEL_70:
      __break(1u);
      return;
    }
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_59;
    }
  }

LABEL_66:
}

void sub_10004F794(void *a1)
{
  v3 = 0xD000000000000019;
  v4 = *(v1 + OBJC_IVAR____TtC7Measure17AccuracyDebugView_lineLengthLabel);
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  v6 = *(v1 + OBJC_IVAR____TtC7Measure17AccuracyDebugView_currentLineLabel);
  v7._countAndFlagsBits = 2112076;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  v8 = *((swift_isaMask & *a1) + 0x340);
  v8();
  Float.write<A>(to:)();
  v9._countAndFlagsBits = 28003;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.append(_:)(v10);

  v11 = String._bridgeToObjectiveC()();

  [v6 setText:v11];

  v12 = *((swift_isaMask & *a1) + 0x360);
  v13 = v12();
  if (v13 < 0.0)
  {
    v17 = 0x8000000100401D50;
  }

  else
  {
    v14._countAndFlagsBits = 2112069;
    v14._object = 0xE300000000000000;
    String.append(_:)(v14);
    v12();
    Float.write<A>(to:)();
    v15._countAndFlagsBits = 673213795;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    v12();
    v8();
    Float.write<A>(to:)();
    v16._countAndFlagsBits = 10533;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v3 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = *(v1 + OBJC_IVAR____TtC7Measure17AccuracyDebugView_currentEstimatedErrorLabel);
  v19._countAndFlagsBits = v3;
  v19._object = v17;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  [v18 setText:v20];

  v21 = *(v1 + OBJC_IVAR____TtC7Measure17AccuracyDebugView_planeTypesLabel);
  if (v13 < 0.0)
  {

LABEL_41:
    v45 = String._bridgeToObjectiveC()();

    [v21 setText:v45];

    sub_10004F1E8();
    return;
  }

  v22 = *((swift_isaMask & *a1) + 0x250);
  v23 = v22();
  v24 = v23;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v25 = *(v23 + 32);
  }

  v26 = v25;

  v28 = (*((swift_isaMask & *v26) + 0x2C0))(v27);

  v29 = (*(*v28 + 216))();

  if (!v29)
  {
    goto LABEL_46;
  }

  v24 = 0x74694B7261;
  v30 = *(v29 + 48);

  if (v30 <= 2)
  {
    if (v30)
    {
      v31 = 0xE800000000000000;
      if (v30 == 1)
      {
        v32 = 0x6465727265666E69;
      }

      else
      {
        v32 = 0x6B6361626C6C6166;
      }
    }

    else
    {
      v31 = 0xE500000000000000;
      v32 = 0x74694B7261;
    }
  }

  else if (v30 > 4)
  {
    if (v30 == 5)
    {
      v31 = 0xE500000000000000;
      v32 = 0x6863746170;
    }

    else
    {
      v32 = 0x706544656C707061;
      v31 = 0xEA00000000006874;
    }
  }

  else if (v30 == 3)
  {
    v31 = 0xE500000000000000;
    v32 = 0x6C61636F6CLL;
  }

  else
  {
    v31 = 0xE800000000000000;
    v32 = 0x73756F6976657270;
  }

  v33 = v31;
  String.append(_:)(*&v32);

  v34._countAndFlagsBits = 0x203A3150202CLL;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35 = v22();
  if ((v35 & 0xC000000000000001) == 0)
  {
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v36 = *(v35 + 40);
      goto LABEL_26;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_44:
  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
  v37 = v36;

  v39 = (*((swift_isaMask & *v37) + 0x2C0))(v38);

  v40 = (*(*v39 + 216))();

  if (v40)
  {

    v41 = *(v40 + 48);

    if (v41 <= 2)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v42 = 0xE800000000000000;
          v24 = 0x6465727265666E69;
        }

        else
        {
          v42 = 0xE800000000000000;
          v24 = 0x6B6361626C6C6166;
        }
      }

      else
      {
        v42 = 0xE500000000000000;
      }
    }

    else if (v41 > 4)
    {
      if (v41 == 5)
      {
        v42 = 0xE500000000000000;
        v24 = 0x6863746170;
      }

      else
      {
        v24 = 0x706544656C707061;
        v42 = 0xEA00000000006874;
      }
    }

    else if (v41 == 3)
    {
      v42 = 0xE500000000000000;
      v24 = 0x6C61636F6CLL;
    }

    else
    {
      v42 = 0xE800000000000000;
      v24 = 0x73756F6976657270;
    }

    v43._countAndFlagsBits = v24;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 540684368;
    v44._object = 0xE400000000000000;
    String.append(_:)(v44);

    goto LABEL_41;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_10004FEFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_10004FF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

void sub_100050028(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1004A0118 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D4A80;
  v6 = *(v2 + 16);
  if (qword_1004D4A80 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *((qword_1004D4A80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v6 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v8 = v6 % v7;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v5 + 8 * v8 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_16:
  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v10 = v9;
  v11 = sub_100050194(v9);

  if (v11)
  {
    v12 = objc_opt_self();
    [v12 begin];
    [a2 addChildNode:v11];
    [v12 commit];

    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *(v3 + 16) = v15;
      return;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100050194(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0110 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D4A78;
  if (!qword_1004D4A78)
  {
    return 0;
  }

  v8 = objc_opt_self();
  swift_unknownObjectRetain();
  v9 = [v8 planeGeometryWithDevice:v7];
  if (!v9)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v38 = a1;
  v10 = v9;
  v11 = [v10 materials];
  sub_100018630(0, &qword_1004AF720);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  [v15 setBlendMode:4];

LABEL_15:
  v16 = [v10 materials];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_17;
    }

LABEL_22:

    goto LABEL_23;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_20;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
LABEL_20:
    v19 = v18;

    v20 = [v19 diffuse];

    [v20 setContents:v38];
LABEL_23:
    v21 = [v1 geometry];
    [v10 updateFromPlaneGeometry:v21];

    v22 = objc_opt_self();
    v23 = [v22 nodeWithGeometry:v10];

    v38 = v10;
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v39 = 0xD000000000000015;
    v40 = 0x8000000100401DD0;
    v24 = [v1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v4 + 8))(v6, v3);
    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29 = String._bridgeToObjectiveC()();

    [v23 setName:v29];

    v39 = 0;
    v40 = 0xE000000000000000;
    v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v31 = [objc_opt_self() textWithString:v30 extrusionDepth:0.01];
    swift_unknownObjectRelease();
    v32 = String._bridgeToObjectiveC()();
    v33 = [objc_opt_self() fontWithName:v32 size:1.0];

    [v31 setFont:v33];
    v34 = [v22 nodeWithGeometry:v31];
    v35 = Float.piDiv2.unsafeMutableAddressor();
    v42 = SCNVector4.init(_:_:_:_:)(1.0, 0.0, 0.0, -*v35);
    [v34 setRotation:{*&v42.x, *&v42.y, *&v42.z, *&v42.w}];
    v36 = String._bridgeToObjectiveC()();
    [v34 setName:v36];

    [v34 position];
    [v34 setPosition:?];
    v41 = SCNVector3.init(_:_:_:)(0.05, 0.05, 0.05);
    [v34 setScale:{*&v41.x, *&v41.y, *&v41.z}];
    [v23 addChildNode:v34];
    swift_unknownObjectRelease();

    return v23;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1000507A0()
{
  result = MTLCreateSystemDefaultDevice();
  qword_1004D4A78 = result;
  return result;
}

UIColor sub_1000507C0()
{
  sub_10000F974(&unk_1004A3F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003D7BB0;
  sub_100018630(0, &qword_1004A2930);
  *(v0 + 32) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.14913, 0.0, 0.5);
  *(v0 + 40) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.99942, 0.98555, 0.0, 0.5);
  *(v0 + 48) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.23922, 0.67451, 0.96863, 0.5);
  *(v0 + 56) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.96078, 0.70588, 0.2, 0.5);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.25279, 1.0, 0.5).super.isa;
  *(v0 + 64) = result;
  qword_1004D4A80 = v0;
  return result;
}

void sub_1000508F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100050960(double a1)
{
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
    return;
  }

  v2 = *(v1 + 16);
  v3 = a1 - *(v1 + 8);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  if ((*&v3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v6 = v3;
  }

  if ((~*&v3 & 0x7FF0000000000000) != 0)
  {
    v6 = v3;
  }

  if (v3 >= v5)
  {
    v5 = v6;
  }

  ++*v1;
  *(v1 + 16) = v2 + v3;
  *(v1 + 24) = v5;
  if (v3 < v4)
  {
LABEL_15:
    *(v1 + 32) = v4;
    return;
  }

  if ((~*&v3 & 0x7FF0000000000000) != 0)
  {
    v4 = v3;
    goto LABEL_15;
  }

  if ((*&v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v4 = v3;
  }

  *(v1 + 32) = v4;
}

void sub_1000509D8()
{
  if (*v0 < 1)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = *(v0 + 16) / *v0;
  }

  *v0 = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = *(v0 + 48);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = v4;
    *(v0 + 40) = *(v0 + 40) + (v1 - *(v0 + 40)) / v4;
  }
}

void sub_100050A38(_OWORD *a1)
{
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[3] = 0u;
  v2 = objc_opt_self();
  v5[4] = sub_100051828;
  v5[5] = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000508F8;
  v5[3] = &unk_100469A80;
  v3 = _Block_copy(v5);

  v4 = [v2 scheduledTimerWithTimeInterval:1 repeats:v3 block:1.0];
  _Block_release(v3);
}

uint64_t sub_100050B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CACurrentMediaTime();
  sub_10004D9B4();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v12;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = v17;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_100050E18(uint64_t result, double a2)
{
  v2 = *(result + 48);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    return result;
  }

  v5 = *(result + 64);
  v6 = a2 - *(result + 56);
  v8 = *(result + 72);
  v7 = *(result + 80);
  if ((*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v9 = *(result + 72);
  }

  else
  {
    v9 = v6;
  }

  if ((~*&v6 & 0x7FF0000000000000) != 0)
  {
    v9 = v6;
  }

  if (v6 >= v8)
  {
    v8 = v9;
  }

  *(result + 48) = v4;
  *(result + 64) = v5 + v6;
  *(result + 72) = v8;
  if (v6 < v7)
  {
LABEL_15:
    *(result + 80) = v7;
    return result;
  }

  if ((~*&v6 & 0x7FF0000000000000) != 0)
  {
    v7 = v6;
    goto LABEL_15;
  }

  if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v7 = v6;
  }

  *(result + 80) = v7;
  return result;
}

void sub_100050E90(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    if (v5 == a1)
    {
      return;
    }
  }

  v6 = CACurrentMediaTime();
  *(v2 + 112) = v6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v7 = *(v2 + 200);
  if (v7 >> 62)
  {
    goto LABEL_45;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v8)
  {
    v28 = a1;
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a1 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          a1 = v28;
          break;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_45:
          v8 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }

        v10 = *(v7 + 8 * v9 + 32);

        a1 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_16;
        }
      }

      v11 = (*(*v10 + 112))();
      if (v11)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v9;
      if (a1 == v8)
      {
        goto LABEL_17;
      }
    }
  }

  *(v2 + 200) = _swiftEmptyArrayStorage;

  sub_10000F974(&qword_1004AC2D0);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v12 + 24) = NSObject.hashValue.getter();
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 200) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    a1 = *((*(v2 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *(v2 + 200);
  swift_endAccess();
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(v2 + 160);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
    goto LABEL_48;
  }

  *(v2 + 160) = v17;
  a1 = *(v2 + 168);
  v18 = *(v2 + 200);
  if (v18 >> 62)
  {
LABEL_48:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v18 = *(v2 + 200);
    goto LABEL_25;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
  if (v19 <= a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v2 + 176);
  if (v20 > v21)
  {
    v21 = v20;
  }

  *(v2 + 168) = v20;
  *(v2 + 176) = v21;
  if (v18 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {

    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v22 = *(v18 + 32);
  }

  v24 = (*(*v22 + 112))(v23);

  if (v24)
  {
    [v24 timestamp];
    v26 = v25;

    v27 = *(v2 + 184);
    if (v6 - v26 >= v27)
    {
      if ((~COERCE__INT64(v6 - v26) & 0x7FF0000000000000) != 0)
      {
        v27 = v6 - v26;
      }

      else if ((COERCE_UNSIGNED_INT64(v6 - v26) & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v27 = v6 - v26;
      }
    }

    *(v2 + 184) = v27;
  }
}

uint64_t sub_1000512CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

__n128 sub_100051338(uint64_t a1, uint64_t a2)
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

uint64_t sub_100051354(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051374(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1000513BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v28 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  *(v2 + 16) = 0;
  *(v2 + 32) = CACurrentMediaTime();
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 200) = _swiftEmptyArrayStorage;
  *(v2 + 24) = a1;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = [v16 displayLinkWithTarget:v2 selector:"tick"];
  v19 = [objc_opt_self() mainRunLoop];
  [v18 addToRunLoop:v19 forMode:NSDefaultRunLoopMode];

  sub_10004D9B4();
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = v10 + 8;
  v22 = *(v10 + 8);
  v27 = v21;
  v22(v12, v9);
  aBlock[4] = sub_100051808;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100469A58;
  v23 = _Block_copy(aBlock);

  v24 = v8;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  v25 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v32 + 8))(v25, v4);
  (*(v30 + 8))(v24, v31);
  v22(v15, v28);
  return v2;
}

uint64_t sub_100051810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10005182C()
{
  v1 = CACurrentMediaTime();
  v2 = *(v0 + 40);
  v3 = v1 - *(v0 + 32);
  *(v0 + 32) = v1;
  v128 = *(v0 + 24);
  sub_100052404(v2 / v3);
  *(v0 + 40) = 0;
  v121 = objc_opt_self();
  v4 = [v121 jasperAvailable];
  v5 = 0;
  if (v4)
  {
    v5 = *(v0 + 16);
  }

  v126 = v5;
  sub_1000509D8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v116 = v0;
  sub_10000F974(&unk_1004AF710);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003D5360;
  *(v14 + 56) = &type metadata for Double;
  *(v14 + 64) = &protocol witness table for Double;
  *(v14 + 32) = v7;
  v15 = String.init(format:_:)();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1003D5730;
  v19 = benchmarkFormat(seconds:)(v9);
  *(v18 + 56) = &type metadata for String;
  v20 = sub_1000192D0();
  *(v18 + 64) = v20;
  *(v18 + 32) = v19;
  v21 = benchmarkFormat(seconds:)(v11);
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v20;
  *(v18 + 72) = v21;
  v22 = String.init(format:_:)();
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1003D5730;
  v26 = benchmarkFormat(seconds:)(v13);
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = v20;
  *(v25 + 32) = v26;
  v27 = benchmarkFormat(seconds:)(v12);
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v20;
  v118 = v20;
  *(v25 + 72) = v27;
  v114 = String.init(format:_:)();
  v29 = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1003D5360;
  *(v30 + 56) = &type metadata for Int;
  *(v30 + 64) = &protocol witness table for Int;
  *(v30 + 32) = v126;
  v120._countAndFlagsBits = String.init(format:_:)();
  v120._object = v31;
  v32 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_renderFPSLabel);
  v33._countAndFlagsBits = v15;
  v33._object = v17;
  String.append(_:)(v33);
  v34 = String._bridgeToObjectiveC()();

  [v32 setText:v34];

  v35 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_renderTimeLabel);
  v122 = v22;
  v36._countAndFlagsBits = v22;
  v37 = v29;
  v36._object = v24;
  String.append(_:)(v36);
  v38 = String._bridgeToObjectiveC()();

  [v35 setText:v38];

  v39 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_renderGlobalTimeLabel);
  v40._countAndFlagsBits = v114;
  v40._object = v29;
  String.append(_:)(v40);
  v41 = String._bridgeToObjectiveC()();

  [v39 setText:v41];

  if ([v121 jasperAvailable])
  {
    v42 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_projectorLabel);
    String.append(_:)(v120);

    v43 = String._bridgeToObjectiveC()();

    [v42 setText:v43];
  }

  else
  {
  }

  if (qword_1004A02B8 != -1)
  {
    swift_once();
  }

  v44._countAndFlagsBits = v15;
  v44._object = v17;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0x74694B656E656353;
  v45._object = 0xEA0000000000203ALL;
  Log.default(_:isPrivate:)(v45, 0);

  v46._countAndFlagsBits = v122;
  v46._object = v24;
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0x74694B656E656353;
  v47._object = 0xEA0000000000203ALL;
  Log.default(_:isPrivate:)(v47, 0);

  v48._countAndFlagsBits = v114;
  v48._object = v37;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0x74694B656E656353;
  v49._object = 0xEA0000000000203ALL;
  Log.default(_:isPrivate:)(v49, 0);

  v51 = v116 + 13;
  v50 = v116[13];
  if (v50 <= 1)
  {
    v50 = 1;
  }

  v52 = v116[20] / v50;
  sub_1000509D8();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = *(v116 + 17);
  v60 = *(v116 + 18);
  v61 = v116[21];
  v112 = v116[22];
  v62 = *(v116 + 23);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1003D5360;
  *(v63 + 56) = &type metadata for Double;
  *(v63 + 64) = &protocol witness table for Double;
  *(v63 + 32) = v54;
  v117 = String.init(format:_:)();
  v110 = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1003D5730;
  v66 = benchmarkFormat(seconds:)(v56);
  *(v65 + 56) = &type metadata for String;
  *(v65 + 64) = v118;
  *(v65 + 32) = v66;
  v67 = benchmarkFormat(seconds:)(v58);
  *(v65 + 96) = &type metadata for String;
  *(v65 + 104) = v118;
  *(v65 + 72) = v67;
  v115 = String.init(format:_:)();
  v127 = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1003D5730;
  v70 = benchmarkFormat(seconds:)(v60);
  *(v69 + 56) = &type metadata for String;
  *(v69 + 64) = v118;
  *(v69 + 32) = v70;
  v71 = benchmarkFormat(seconds:)(v59);
  *(v69 + 96) = &type metadata for String;
  *(v69 + 104) = v118;
  *(v69 + 72) = v71;
  v72 = String.init(format:_:)();
  v123 = v73;
  v124 = v72;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1003D5730;
  *(v74 + 56) = &type metadata for Double;
  *(v74 + 64) = &protocol witness table for Double;
  *(v74 + 32) = v52;
  *(v74 + 96) = &type metadata for Int;
  *(v74 + 104) = &protocol witness table for Int;
  *(v74 + 72) = v61;
  v129 = String.init(format:_:)();
  v125 = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1003D5360;
  *(v76 + 56) = &type metadata for Int;
  *(v76 + 64) = &protocol witness table for Int;
  *(v76 + 32) = v112;
  v77 = String.init(format:_:)();
  v111 = v78;
  v113 = v77;
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1003D5360;
  v80 = benchmarkFormat(seconds:)(v62);
  *(v79 + 56) = &type metadata for String;
  *(v79 + 64) = v118;
  *(v79 + 32) = v80;
  v119 = String.init(format:_:)();
  v130 = v81;
  v82 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_arFPSLabel);
  v83._countAndFlagsBits = v117;
  v83._object = v110;
  String.append(_:)(v83);
  v84 = String._bridgeToObjectiveC()();

  [v82 setText:v84];

  v85 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_arTimeLabel);
  v86._countAndFlagsBits = v115;
  v86._object = v127;
  String.append(_:)(v86);
  v87 = String._bridgeToObjectiveC()();

  [v85 setText:v87];

  v88 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_arGlobalTimeLabel);
  v89._object = v123;
  v89._countAndFlagsBits = v124;
  String.append(_:)(v89);
  v90 = String._bridgeToObjectiveC()();

  [v88 setText:v90];

  v91 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_arFrameCountLabel);
  v92._countAndFlagsBits = v129;
  v92._object = v125;
  String.append(_:)(v92);
  v93 = String._bridgeToObjectiveC()();

  [v91 setText:v93];

  v94 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_arGlobalMaxFrameCountLabel);
  v95._countAndFlagsBits = v113;
  v95._object = v111;
  String.append(_:)(v95);

  v96 = String._bridgeToObjectiveC()();

  [v94 setText:v96];

  v97 = *(v128 + OBJC_IVAR____TtC7Measure14DebugStatsView_arAgeLabel);
  v98._countAndFlagsBits = v119;
  v98._object = v130;
  String.append(_:)(v98);
  v99 = String._bridgeToObjectiveC()();

  [v97 setText:v99];

  v100._countAndFlagsBits = v117;
  v100._object = v110;
  String.append(_:)(v100);

  v101._countAndFlagsBits = 0x656D617246205241;
  v101._object = 0xEB00000000203A73;
  Log.default(_:isPrivate:)(v101, 0);

  v102._countAndFlagsBits = v115;
  v102._object = v127;
  String.append(_:)(v102);

  v103._countAndFlagsBits = 0x656D617246205241;
  v103._object = 0xEB00000000203A73;
  Log.default(_:isPrivate:)(v103, 0);

  v104._countAndFlagsBits = v124;
  v104._object = v123;
  String.append(_:)(v104);

  v105._countAndFlagsBits = 0x656D617246205241;
  v105._object = 0xEB00000000203A73;
  Log.default(_:isPrivate:)(v105, 0);

  v106._countAndFlagsBits = v129;
  v106._object = v125;
  String.append(_:)(v106);

  v107._countAndFlagsBits = 0x656D617246205241;
  v107._object = 0xEB00000000203A73;
  Log.default(_:isPrivate:)(v107, 0);

  v108._countAndFlagsBits = v119;
  v108._object = v130;
  String.append(_:)(v108);

  v109._countAndFlagsBits = 0x656D617246205241;
  v109._object = 0xEB00000000203A73;
  Log.default(_:isPrivate:)(v109, 0);

  v51[10] = 0;
  v51[7] = 0;
  v51[8] = 0;
  sub_1000525A4();
}

uint64_t sub_100052394()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000523CC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t sub_100052404(double a1)
{
  sub_10000F974(&unk_1004AF710);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D5360;
  *(v3 + 56) = &type metadata for Double;
  *(v3 + 64) = &protocol witness table for Double;
  *(v3 + 32) = a1;
  v4._countAndFlagsBits = String.init(format:_:)();
  countAndFlagsBits = v4._countAndFlagsBits;
  object = v4._object;
  v7 = *(v1 + OBJC_IVAR____TtC7Measure14DebugStatsView_tickFPSLabel);
  String.append(_:)(v4);
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:{v8, 8224, 0xE200000000000000}];

  if (qword_1004A02B8 != -1)
  {
    swift_once();
  }

  v9._countAndFlagsBits = countAndFlagsBits;
  v9._object = object;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x8000000100402060;
  Log.default(_:isPrivate:)(v10, 0);
}

void sub_1000525A4()
{
  v1 = v0;
  v2 = [v0 subviews];
  v46 = sub_100018630(0, &qword_1004A7550);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
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
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 sizeToFit];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [v1 subviews];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v13 = 0.0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v14 frame];
      v18 = v17;

      v13 = v13 + v18;
      ++v12;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v19 = OBJC_IVAR____TtC7Measure14DebugStatsView_maxWidth;
  v20 = *&v1[OBJC_IVAR____TtC7Measure14DebugStatsView_maxWidth];
  v21 = [v1 subviews];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (!v23)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_39;
    }
  }

  sub_1000A2530(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  for (k = 0; k != v23; ++k)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v22 + 8 * k + 32);
    }

    v26 = v25;
    [v25 frame];
    v28 = v27;

    v30 = _swiftEmptyArrayStorage[2];
    v29 = _swiftEmptyArrayStorage[3];
    if (*&v30 >= *&v29 >> 1)
    {
      sub_1000A2530((*&v29 > 1uLL), *&v30 + 1, 1);
    }

    *&_swiftEmptyArrayStorage[2] = *&v30 + 1;
    _swiftEmptyArrayStorage[*&v30 + 4] = v28;
  }

LABEL_39:

  *&v31 = COERCE_DOUBLE(sub_10004FEFC(_swiftEmptyArrayStorage));
  v33 = v32;

  v34 = *&v31;
  if (v33)
  {
    v34 = 0.0;
  }

  if ((*&v34 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v35 = v20;
  }

  else
  {
    v35 = v34;
  }

  if ((~*&v34 & 0x7FF0000000000000) != 0)
  {
    v35 = v34;
  }

  if (v34 >= v20)
  {
    v36 = v35;
  }

  else
  {
    v36 = v20;
  }

  *&v1[v19] = v36;
  [v1 setFrame:{0.0, 75.0, v46}];
  v37 = [v1 subviews];
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v38 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    if (v39)
    {
LABEL_51:
      if (v39 >= 1)
      {
        v40 = 0;
        v41 = 0.0;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v42 = *(v38 + 8 * v40 + 32);
          }

          v43 = v42;
          ++v40;
          [v42 frame];
          [v43 setFrame:?];
          [v43 frame];
          v45 = v44;

          v41 = v41 + v45;
        }

        while (v39 != v40);
        goto LABEL_58;
      }

LABEL_62:
      __break(1u);
      return;
    }
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_51;
    }
  }

LABEL_58:
}

UIColor sub_100052A5C()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.5).super.isa;
  qword_1004A3698 = result.super.isa;
  return result;
}

UIColor sub_100052AB0()
{
  sub_100018630(0, &qword_1004A2930);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_1004A36A0 = result.super.isa;
  return result;
}

char *sub_100052B04(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_maxWidth] = 0;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  if (qword_1004A0128 != -1)
  {
    swift_once();
  }

  v10 = qword_1004A36A0;
  [v9 setTextColor:{qword_1004A36A0, ObjectType}];
  [v9 setTextAlignment:0];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:12.0];
  [v9 setFont:v12];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_tickFPSLabel] = v9;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v13 setTextColor:v10];
  [v13 setTextAlignment:0];
  v14 = [v11 systemFontOfSize:12.0];
  [v13 setFont:v14];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_renderFPSLabel] = v13;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v15 setTextColor:v10];
  [v15 setTextAlignment:0];
  v16 = [v11 systemFontOfSize:12.0];
  [v15 setFont:v16];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_renderTimeLabel] = v15;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v17 setTextColor:v10];
  [v17 setTextAlignment:0];
  v18 = [v11 systemFontOfSize:12.0];
  [v17 setFont:v18];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_renderGlobalTimeLabel] = v17;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v19 setTextColor:v10];
  [v19 setTextAlignment:0];
  v20 = [v11 systemFontOfSize:12.0];
  [v19 setFont:v20];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_projectorLabel] = v19;
  v21 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v21 setTextColor:v10];
  [v21 setTextAlignment:0];
  v22 = [v11 systemFontOfSize:12.0];
  [v21 setFont:v22];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_arFPSLabel] = v21;
  v23 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v23 setTextColor:v10];
  [v23 setTextAlignment:0];
  v24 = [v11 systemFontOfSize:12.0];
  [v23 setFont:v24];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_arTimeLabel] = v23;
  v25 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v25 setTextColor:v10];
  [v25 setTextAlignment:0];
  v26 = [v11 systemFontOfSize:12.0];
  [v25 setFont:v26];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_arGlobalTimeLabel] = v25;
  v27 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v27 setTextColor:v10];
  [v27 setTextAlignment:0];
  v28 = [v11 systemFontOfSize:12.0];
  [v27 setFont:v28];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_arFrameCountLabel] = v27;
  v29 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v29 setTextColor:v10];
  [v29 setTextAlignment:0];
  v30 = [v11 systemFontOfSize:12.0];
  [v29 setFont:v30];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_arGlobalMaxFrameCountLabel] = v29;
  v31 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v31 setTextColor:v10];
  [v31 setTextAlignment:0];
  v58 = v11;
  v32 = [v11 systemFontOfSize:12.0];
  [v31 setFont:v32];

  *&v4[OBJC_IVAR____TtC7Measure14DebugStatsView_arAgeLabel] = v31;
  v62.receiver = v4;
  v62.super_class = v57;
  v33 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  [v33 setUserInteractionEnabled:0];
  if (qword_1004A0120 != -1)
  {
    swift_once();
  }

  [v33 setBackgroundColor:qword_1004A3698];
  [v33 setContentMode:9];
  v34 = [objc_opt_self() mainBundle];
  v35 = [v34 infoDictionary];

  if (v35)
  {
    v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v36 + 16) && (v37 = sub_100198230(0xD00000000000001ALL, 0x80000001004020E0), (v38 & 1) != 0))
    {
      sub_10000FE60(*(v36 + 56) + 32 * v37, v61);

      if (swift_dynamicCast())
      {
        v35 = v59;
        v39 = v60;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v35 = 0;
  }

  v39 = 0;
LABEL_13:
  sub_10000F974(&unk_1004AF710);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1003D5360;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_1000192D0();
  v41 = 0x6E776F6E6B6E55;
  if (v39)
  {
    v41 = v35;
  }

  v42 = 0xE700000000000000;
  if (v39)
  {
    v42 = v39;
  }

  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  String.init(format:_:)();
  v43 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v43 setTextColor:v10];
  [v43 setTextAlignment:0];
  v44 = [v11 systemFontOfSize:12.0];
  [v43 setFont:v44];

  v45 = String._bridgeToObjectiveC()();
  [v43 setText:v45];

  [v33 addSubview:v43];
  v46 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v46 setTextColor:v10];
  [v46 setTextAlignment:0];
  v47 = [v58 systemFontOfSize:12.0];
  [v46 setFont:v47];

  v48 = String._bridgeToObjectiveC()();
  [v46 setText:v48];

  [v33 addSubview:v46];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_tickFPSLabel]];
  v49 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v49 setTextColor:v10];
  [v49 setTextAlignment:0];
  v50 = [v58 systemFontOfSize:12.0];
  [v49 setFont:v50];

  v51 = String._bridgeToObjectiveC()();
  [v49 setText:v51];

  [v33 addSubview:v49];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_renderFPSLabel]];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_renderTimeLabel]];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_renderGlobalTimeLabel]];
  if ([objc_opt_self() jasperAvailable])
  {
    [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_projectorLabel]];
  }

  v52 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v52 setTextColor:v10];
  [v52 setTextAlignment:0];
  v53 = [v58 systemFontOfSize:12.0];
  [v52 setFont:v53];

  v54 = String._bridgeToObjectiveC()();
  [v52 setText:v54];

  [v33 addSubview:v52];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_arFPSLabel]];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_arTimeLabel]];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_arGlobalTimeLabel]];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_arFrameCountLabel]];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_arGlobalMaxFrameCountLabel]];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC7Measure14DebugStatsView_arAgeLabel]];

  return v33;
}

id sub_100053AA4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7Measure13SeparatorView_targetAlpha] = 0x3FF0000000000000;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = qword_1004A0558;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_1004D50C8];
  }

  return v5;
}

void sub_100053BB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:0];

  [v6 addAction:v5];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (xmmword_1004D4AE8)
  {
    [xmmword_1004D4AE8 presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100053D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = v18;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  aBlock[4] = sub_100053FF0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100469B70;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v19);
}

uint64_t sub_100053FB0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100053FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100054014(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[4] = 0;
  v4[5] = 0;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {
    sub_1000542CC(a1, a2, a3, a4);
    return v4;
  }

  if (!v10)
  {
    sub_100054124();
    return v4;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100054124()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  v3 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v2 style:0 target:v0 action:"tapDelete"];
  v4 = *(v0 + 32);
  *(v0 + 32) = v3;

  v5 = *(v0 + 32);
  if (v5)
  {
    swift_getMetatypeMetadata();
    v6 = v5;
    String.init<A>(describing:)();
    v7 = String._bridgeToObjectiveC()();

    [v6 setAccessibilityIdentifier:v7];

    v8 = *(v0 + 32);
    if (v8)
    {
      [v8 setEnabled:0];
      v9 = *(v0 + 32);
      if (v9)
      {
        v10 = objc_opt_self();
        v11 = v9;
        v12 = [v10 whiteColor];
        [v11 setTintColor:v12];
      }
    }
  }
}

void sub_1000542CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  v10 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for _Glass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(UIButton) initWithFrame:{a1, a2, a3, a4}];
  v16 = v4[5];
  v4[5] = v15;

  v17 = v4[5];
  if (v17)
  {
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() systemImageNamed:v19];

    [v18 setImage:v20 forState:0];
    v21 = v4[5];
    if (v21)
    {
      [v21 addTarget:v4 action:"tapDelete" forControlEvents:64];
      v22 = v4[5];
      if (v22)
      {
        [v22 setEnabled:0];
        v23 = v4[5];
        if (v23)
        {
          v37[0] = v9;
          swift_getMetatypeMetadata();
          v24 = v23;
          String.init<A>(describing:)();
          v25 = String._bridgeToObjectiveC()();

          [v24 setAccessibilityIdentifier:v25];

          v26 = v4[5];
          if (v26)
          {
            v27 = objc_opt_self();
            v28 = v26;
            v29 = [v27 whiteColor];
            [v28 setTintColor:v29];

            v30 = v4[5];
            if (v30)
            {
              v31 = [v30 layer];
              [v31 setMasksToBounds:1];

              v32 = v4[5];
              if (v32)
              {
                v33 = [v32 layer];
                v38.origin.x = a1;
                v38.origin.y = a2;
                v38.size.width = a3;
                v38.size.height = a4;
                [v33 setCornerRadius:CGRectGetWidth(v38) * 0.5];

                v34 = v4[5];
                if (v34)
                {
                  v35 = v34;
                  static _Glass._GlassVariant.regular.getter();
                  _Glass.init(_:smoothness:)();
                  v37[3] = v11;
                  v37[4] = &protocol witness table for _Glass;
                  sub_1000315D4(v37);
                  _Glass.flexible(_:)();
                  (*(v12 + 8))(v14, v11);
                  UIView._background.setter();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000546A0()
{
  sub_10001B9D0(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_10005470C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v3 = 0x80000001004021D0;
  v4 = 0xD000000000000014;

  Log.default(_:isPrivate:)(*&v4, 0);
}

Swift::Int sub_100054808(char **a1, float a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1000A48A8(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_100069708(v7, a2);
  *a1 = v4;
  return result;
}

Swift::Int sub_100054884(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A48A8(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v2 + 32;
      do
      {
        v12 = *&v4[16 * v10];
        LODWORD(v13) = HIDWORD(*&v4[16 * v10]);
        v14 = v9;
        v15 = v11;
        do
        {
          if (v13 >= *(v15 + 1))
          {
            break;
          }

          v16 = *v15;
          *v15 = v12;
          *(v15 + 1) = v16;
          v15 -= 16;
        }

        while (!__CFADD__(v14++, 1));
        ++v10;
        v11 += 16;
        --v9;
      }

      while (v10 != v3);
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000F974(&qword_1004A3EF0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 2) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = v8 + 4;
    v18[1] = v7;
    sub_10006989C(v18, v19, v20, v6);
    v8[2] = 0.0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1000549D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A48BC(v2);
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
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
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
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10006A3A0(v16, v17, v18, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_100054B04(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A48D0(v2);
  }

  v3 = *(v2 + 2);
  v36[0] = (v2 + 4);
  v36[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 16;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 28) >= *v12)
          {
            break;
          }

          v13 = v12 - 12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 3);
          v31 = *(v12 + 2);
          v32 = v15;
          v30 = v14;
          v16 = *(v12 + 4);
          v17 = *(v12 + 5);
          v18 = *(v12 + 6);
          *&v35[13] = *(v12 + 109);
          v34 = v17;
          *v35 = v18;
          v33 = v16;
          v19 = *v12;
          *(v12 + 6) = *(v12 - 1);
          *(v12 + 7) = v19;
          v20 = *(v12 - 2);
          v21 = *(v12 - 5);
          *(v12 + 1) = *(v12 - 6);
          *(v12 + 2) = v21;
          v22 = *(v12 - 4);
          *(v12 + 4) = *(v12 - 3);
          *(v12 + 5) = v20;
          *(v12 + 3) = v22;
          v23 = v30;
          v24 = v32;
          *(v13 + 1) = v31;
          *(v13 + 2) = v24;
          *v13 = v23;
          v25 = v33;
          v26 = v34;
          v27 = *v35;
          *(v13 + 93) = *&v35[13];
          *(v13 + 4) = v26;
          *(v13 + 5) = v27;
          *(v13 + 3) = v25;
          v12 -= 14;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 14;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000F974(&qword_1004A3ED8);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v30 = v7 + 4;
    *(&v30 + 1) = v6;
    sub_10006A8FC(&v30, v29, v36, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100054CC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006B82C(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100054D4C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10006B878(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

size_t sub_100054DDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006B8DC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for SpatialPlattersHistoryItem() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10006C088(v11, a2, type metadata accessor for SpatialPlattersHistoryItem);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100054F10(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006B93C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100054FB4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x6C6576656CLL;
  }

  else
  {
    v5 = 0x6572757361656DLL;
  }

  if (a1)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  while (1)
  {
    v7 = *(v4 + v3) ? 0x6C6576656CLL : 0x6572757361656DLL;
    v8 = *(v4 + v3) ? 0xE500000000000000 : 0xE700000000000000;
    if (v7 == v5 && v8 == v6)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1000550F8(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a3(0);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000551F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *(a4 + 16);
  if (v43)
  {
    v4 = 0;
    v44 = a4 + 32;
    v37 = (a3 + 120);
    do
    {
      v5 = (v44 + 24 * v4);
      v6 = v5[1];
      v7 = v5[2];
      if (v6)
      {
        if (!a2)
        {
          goto LABEL_4;
        }

        v8 = *v5 == a1 && v6 == a2;
        if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (a2)
      {
        goto LABEL_4;
      }

      v9 = *(v7 + 16);
      if (v9 == *(a3 + 16))
      {
        if (!v9 || v7 == a3)
        {
          return v4;
        }

        v10 = *(v7 + 48);
        v11 = *(v7 + 56);
        v12 = *(v7 + 64);
        v13 = *(v7 + 72);
        v14 = *(a3 + 48);
        v15 = *(a3 + 56);
        v16 = *(a3 + 64);
        v17 = *(a3 + 72);
        v18 = *(v7 + 32) == *(a3 + 32) && *(v7 + 40) == *(a3 + 40);
        if (v18 || (v19 = *(v7 + 72), v41 = *(v7 + 64), v20 = *(v7 + 48), v21 = *(a3 + 48), v22 = _stringCompareWithSmolCheck(_:_:expecting:)(), v14 = v21, v10 = v20, v12 = v41, v13 = v19, (v22 & 1) != 0))
        {
          v23 = v9 - 1;
          v24 = (v7 + 120);
          v25 = v37;
          v38 = v4;
          while (1)
          {
            if (v11)
            {
              if (!v15)
              {
                break;
              }

              if (v10 != v14 || v11 != v15)
              {
                v34 = v13;
                v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v13 = v34;
                if ((v35 & 1) == 0)
                {
                  break;
                }
              }
            }

            else if (v15)
            {
              break;
            }

            if (v13)
            {
              if (v12)
              {
                if ((v17 & (v16 != 0)) != 1)
                {
                  break;
                }
              }

              else if ((v17 & (v16 == 0)) == 0)
              {
                break;
              }
            }

            else if ((v17 & 1) != 0 || *&v12 != *&v16 || *(&v12 + 1) != *(&v16 + 1))
            {
              break;
            }

            if (!v23)
            {
              return v4;
            }

            v10 = *(v24 - 3);
            v11 = *(v24 - 2);
            v12 = *(v24 - 1);
            v13 = *v24;
            v14 = *(v25 - 3);
            v15 = *(v25 - 2);
            v16 = *(v25 - 1);
            v17 = *v25;
            if (*(v24 - 5) != *(v25 - 5) || *(v24 - 4) != *(v25 - 4))
            {
              v42 = *(v25 - 2);
              v26 = *(v24 - 2);
              v27 = v23;
              v28 = *v24;
              v29 = *(v25 - 1);
              v30 = *(v24 - 1);
              v31 = *(v24 - 3);
              v32 = *(v25 - 3);
              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v14 = v32;
              v10 = v31;
              v12 = v30;
              v16 = v29;
              v13 = v28;
              v23 = v27;
              v11 = v26;
              v15 = v42;
              v4 = v38;
              if ((v33 & 1) == 0)
              {
                break;
              }
            }

            v25 += 48;
            --v23;
            v24 += 48;
          }
        }
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v43);
  }

  return 0;
}

uint64_t sub_1000554A4()
{
  v0 = type metadata accessor for UUID();
  sub_10001D4FC(v0, qword_1004D4A88);
  sub_10001D4C4(v0, qword_1004D4A88);
  return UUID.init()();
}

id sub_100055518()
{
  v1 = qword_1004A3910;
  v2 = *(v0 + qword_1004A3910);
  if (v2)
  {
    v3 = *(v0 + qword_1004A3910);
  }

  else
  {
    v4 = *(v0 + qword_1004A3918);
    v5 = objc_allocWithZone(type metadata accessor for PersonHeightView());
    v6 = v4;
    v7 = v0;
    v8 = sub_1001BA358(v6);
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1000555A0(uint64_t a1@<X8>)
{
  v3 = (v1 + qword_1004A3948);
  if ((*(v1 + qword_1004A3948 + 48) & 1) == 0)
  {
    v6 = *(v3 + 4);
    v5 = *(v3 + 5);
    v8 = *v3;
    v7 = v3[1];
    goto LABEL_6;
  }

  v4 = *(v1 + qword_1004A3940);
  if (v4)
  {
    swift_beginAccess();
    if (*(v4 + 192))
    {

      ADProcessor.transformer.getter();

      ADTransformer.viewToAD.getter();
      v6 = v11;
      v5 = v12;

      v8 = v9;
      v7 = v10;
      *v3 = v9;
      v3[1] = v10;
      *(v3 + 4) = v11;
      *(v3 + 5) = v12;
      *(v3 + 48) = 0;
LABEL_6:
      *a1 = v8;
      *(a1 + 16) = v7;
      *(a1 + 32) = v6;
      *(a1 + 40) = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10005567C(_OWORD *a1@<X8>)
{
  v3 = (v1 + qword_1004A3958);
  if ((*(v1 + qword_1004A3958 + 48) & 1) == 0)
  {
    v15 = v3[1];
    v17 = v3[2];
    v16 = *v3;
    goto LABEL_8;
  }

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_10008D4F0();
  sub_100013C4C(__dst);
  if (v4)
  {
    v5 = [v4 camera];

    [v5 imageResolution];
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
    {
      effectiveStatusBarOrientation.unsafeMutableAddressor();
      CGAffineTransformMakeScale(__src, 1.0, -1.0);
      v6 = *&__src[32];
      v18 = *&__src[16];
      v20 = *__src;
      CGAffineTransformMakeTranslation(__src, 0.0, 1.0);
      v7 = *__src;
      v8 = *&__src[16];
      v9 = *&__src[32];
      *__src = v20;
      *&__src[16] = v18;
      *&__src[32] = v6;
      *&t2.a = v7;
      *&t2.c = v8;
      *&t2.tx = v9;
      CGAffineTransformConcat(&v22, __src, &t2);
      tx = v22.tx;
      ty = v22.ty;
      v19 = *&v22.c;
      v21 = *&v22.a;
      ARCameraImageToViewTransform();
      v12 = *__src;
      v13 = *&__src[16];
      v14 = *&__src[32];
      *__src = v21;
      *&__src[16] = v19;
      *&__src[32] = tx;
      *&__src[40] = ty;
      *&t2.a = v12;
      *&t2.c = v13;
      *&t2.tx = v14;
      CGAffineTransformConcat(&v22, __src, &t2);
      v16 = *&v22.a;
      v15 = *&v22.c;
      v17 = *&v22.tx;
      *v3 = *&v22.a;
      v3[1] = v15;
      v3[2] = v17;
      *(v3 + 48) = 0;
LABEL_8:
      *a1 = v16;
      a1[1] = v15;
      a1[2] = v17;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000558A4()
{
  v1 = *(**(v0 + qword_1004A3848) + 144);

  v1(&v10, v2);

  v3 = v10;
  if (!(v10 >> 62))
  {
    v4 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_17:

    return 0;
  }

LABEL_16:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_3:
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
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    type metadata accessor for WorldPerson();
    if ([v7 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_17;
    }
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  return 0;
}

void sub_100055A10(uint64_t a1, void *a2)
{
  v5 = qword_1004A3980;
  swift_beginAccess();
  v6 = *(v2 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100067C24(0, *(v6 + 2) + 1, 1, v6);
    *(v2 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_100067C24((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  *(v2 + v5) = v6;
  swift_endAccess();
  if (v9 >= 5)
  {
    swift_beginAccess();
    sub_10006BD44(0, v9 - 4, sub_100067C24, sub_10006BC84);
    swift_endAccess();
  }

  if (qword_1004A0230 != -1)
  {
    swift_once();
  }

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  Log.debug(_:isPrivate:)(v11, 0);
}

char *sub_100055BA8(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  ObjectType = swift_getObjectType();
  v79 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v75);
  v76 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v81 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v72 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = v70 - v12;
  v13 = qword_1004A3810;
  KeyPath = swift_getKeyPath();
  v15 = sub_10000F974(&unk_1004A3F30);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v16 = qword_1004D5058;
  v17 = *(v15 + 272);
  swift_retain_n();
  *&v2[v13] = v17(KeyPath, v16);
  v18 = qword_1004A3818;
  v19 = sub_10000F974(&qword_1004A1638);
  v20 = swift_getKeyPath();
  v21 = *(v19 + 272);

  *&v2[v18] = v21(v20, v16);
  v22 = qword_1004A3820;
  v23 = swift_getKeyPath();
  v24 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *&v2[v22] = v24(v23, v16);
  v25 = qword_1004A3828;
  v26 = swift_getKeyPath();
  v27 = *(sub_10000F974(&unk_1004A4910) + 272);

  *&v2[v25] = v27(v26, v16);
  v28 = qword_1004A3830;
  v29 = sub_10000F974(&qword_1004A3F50);
  v30 = swift_getKeyPath();
  *&v2[v28] = (*(v29 + 272))(v30, v16);
  v31 = qword_1004A3838;
  sub_10000F974(&qword_1004A3F58);
  swift_getKeyPath();
  *&v2[v31] = MutableStateValue.__allocating_init(_:_:)();
  v32 = qword_1004A3840;
  sub_10000F974(&qword_1004A3F60);
  swift_getKeyPath();
  *&v2[v32] = MutableStateValue.__allocating_init(_:_:)();
  v33 = qword_1004A3848;
  sub_10000F974(&qword_1004A3F68);
  swift_getKeyPath();
  *&v2[v33] = MutableStateValue.__allocating_init(_:_:)();
  v34 = qword_1004A3850;
  sub_10000F974(&qword_1004A3F70);
  swift_getKeyPath();
  v73 = ObjectType;
  *&v2[v34] = MutableStateValue.__allocating_init(_:_:)();
  v35 = qword_1004A3860;
  sub_10000F974(&qword_1004A3F78);
  swift_getKeyPath();
  *&v2[v35] = MutableStateValue.__allocating_init(_:_:)();
  v36 = qword_1004A3868;
  v37 = swift_getKeyPath();
  v38 = sub_10000F974(&qword_1004A3F80);
  *&v2[v36] = (*(v38 + 272))(v37, v16);
  v2[qword_1004A3870] = 0;
  v39 = qword_1004A3878;
  v40 = sub_10000F974(&qword_1004A39D8);
  (*(*(v40 - 8) + 56))(&v2[v39], 1, 1, v40);
  v2[qword_1004D4AA8] = 3;
  v41 = qword_1004A3880;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *&v2[v41] = PassthroughSubject.init()();
  Date.init()();
  *&v2[qword_1004A3898] = 0x4000000000000000;
  v42 = *(v9 + 56);
  v42(&v2[qword_1004A38A0], 1, 1, v8);
  v42(&v2[qword_1004A38A8], 1, 1, v8);
  v43 = &v2[qword_1004A38B0];
  *v43 = 0;
  *(v43 + 1) = 0;
  v43[16] = 1;
  v44 = qword_1004A38B8;
  type metadata accessor for PersonHeightInstrument.HeightResultContainer();
  v45 = swift_allocObject();
  v46 = sub_100067648(0, 8, 0, &_swiftEmptyArrayStorage);
  v80 = xmmword_1003D7D40;
  v83 = xmmword_1003D7D40;
  *&v84 = v46;
  sub_10000F974(&qword_1004A3F88);
  swift_allocObject();
  *(v45 + 16) = Synchronized.init(wrappedValue:)();
  *&v2[v44] = v45;
  v47 = qword_1004A38C0;
  v48 = sub_100067544(0, 8, 0, &_swiftEmptyArrayStorage);
  v83 = v80;
  *&v84 = v48;
  sub_10000F974(&qword_1004A3F90);
  swift_allocObject();
  *&v2[v47] = Synchronized.init(wrappedValue:)();
  Date.init()();
  v49 = qword_1004A38D0;
  v50 = v71;
  Date.init()();
  (*(v9 + 16))(v72, v50, v8);
  sub_10000F974(&qword_1004A3F98);
  swift_allocObject();
  v51 = Synchronized.init(wrappedValue:)();
  (*(v9 + 8))(v50, v8);
  *&v2[v49] = v51;
  v42(&v2[qword_1004A38D8], 1, 1, v8);
  v52 = qword_1004A38E0;
  v53 = sub_100067544(0, 8, 0, &_swiftEmptyArrayStorage);
  v83 = v80;
  *&v84 = v53;
  swift_allocObject();
  *&v2[v52] = Synchronized.init(wrappedValue:)();
  v42(&v2[qword_1004A38F0], 1, 1, v8);
  v42(&v2[qword_1004A38F8], 1, 1, v8);
  v42(&v2[qword_1004A3900], 1, 1, v8);
  v42(&v2[qword_1004A3908], 1, 1, v8);
  *&v2[qword_1004A3910] = 0;
  *&v2[qword_1004A3920] = 0;
  *&v2[qword_1004A3928] = 0;
  *&v2[qword_1004A3930] = 0;
  Date.init()();
  v54 = &v2[qword_1004A3948];
  *(v54 + 1) = 0u;
  *(v54 + 2) = 0u;
  *v54 = 0u;
  v54[48] = 1;
  v55 = &v2[qword_1004A3950];
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  *v55 = 0u;
  v55[48] = 1;
  v56 = &v2[qword_1004A3958];
  *v56 = 0u;
  *(v56 + 1) = 0u;
  *(v56 + 2) = 0u;
  v56[48] = 1;
  *&v2[qword_1004A3960] = 0;
  v2[qword_1004A3968] = 0;
  v57 = qword_1004A3970;
  *&v83 = 0;
  sub_10000F974(&qword_1004A3FA0);
  swift_allocObject();
  *&v2[v57] = Synchronized.init(wrappedValue:)();
  v58 = qword_1004A3978;
  LOBYTE(v83) = 0;
  sub_10000F974(&qword_1004A3FA8);
  swift_allocObject();
  *&v2[v58] = Synchronized.init(wrappedValue:)();
  *&v2[qword_1004A3980] = &_swiftEmptyArrayStorage;
  v2[qword_1004A3988] = 0;
  v59 = qword_1004A3990;
  v88 = 1;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v87 = 1;
  sub_10000F974(&qword_1004A3FB0);
  swift_allocObject();
  *&v2[v59] = Synchronized.init(wrappedValue:)();
  v60 = v74;
  *&v2[qword_1004A3918] = v74;
  type metadata accessor for PersonHeightCoachingController();
  swift_allocObject();
  *&v80 = v60;
  *&v2[qword_1004A3858] = sub_1001A0B74();
  v74 = sub_100018630(0, &qword_1004A3F00);
  static DispatchQoS.userInitiated.getter();
  *&v83 = &_swiftEmptyArrayStorage;
  v71 = sub_10006C9C0(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes);
  v70[2] = sub_10000F974(&qword_1004ABEE0);
  v72 = sub_10001D47C(&qword_1004A4030, &qword_1004ABEE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v61 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v78 = *(v78 + 104);
  v62 = v77;
  v63 = v79;
  (v78)(v77, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v79);
  *&v2[qword_1004A3888] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v70[1] = "Measure.PersonHeightInstrument";
  static DispatchQoS.userInitiated.getter();
  *&v83 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v78)(v62, v61, v63);
  *&v2[qword_1004A38E8] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v64 = *MeasureCore.shared.unsafeMutableAddressor();
  swift_beginAccess();
  *&v2[qword_1004A3940] = *(v64 + 112);
  v65 = v73;
  v82.receiver = v2;
  v82.super_class = v73;

  v66 = objc_msgSendSuper2(&v82, "init");
  v67 = *&v66[qword_1004A3858];
  *(&v84 + 1) = v65;
  *&v85 = &off_100469CB0;
  v68 = v66;

  *&v83 = v68;
  swift_beginAccess();
  sub_10006CA08(&v83, v67 + 64, &qword_1004A4038);
  swift_endAccess();

  return v68;
}

void sub_1000569E4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v54 - v6;
  v7 = qword_1004A3810;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A3F30);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  *(v1 + v7) = v11(KeyPath, v10);
  v12 = qword_1004A3818;
  v13 = sub_10000F974(&qword_1004A1638);
  v14 = swift_getKeyPath();
  v15 = *(v13 + 272);

  *(v1 + v12) = v15(v14, v10);
  v16 = qword_1004A3820;
  v17 = swift_getKeyPath();
  v18 = *(sub_10000F974(&unk_1004A3F40) + 272);

  *(v1 + v16) = v18(v17, v10);
  v19 = qword_1004A3828;
  v20 = swift_getKeyPath();
  v21 = *(sub_10000F974(&unk_1004A4910) + 272);

  *(v1 + v19) = v21(v20, v10);
  v22 = qword_1004A3830;
  v23 = sub_10000F974(&qword_1004A3F50);
  v24 = swift_getKeyPath();
  *(v1 + v22) = (*(v23 + 272))(v24, v10);
  v25 = qword_1004A3838;
  sub_10000F974(&qword_1004A3F58);
  swift_getKeyPath();
  *(v1 + v25) = MutableStateValue.__allocating_init(_:_:)();
  v26 = qword_1004A3840;
  sub_10000F974(&qword_1004A3F60);
  swift_getKeyPath();
  *(v1 + v26) = MutableStateValue.__allocating_init(_:_:)();
  v27 = qword_1004A3848;
  sub_10000F974(&qword_1004A3F68);
  swift_getKeyPath();
  *(v1 + v27) = MutableStateValue.__allocating_init(_:_:)();
  v28 = qword_1004A3850;
  sub_10000F974(&qword_1004A3F70);
  swift_getKeyPath();
  *(v1 + v28) = MutableStateValue.__allocating_init(_:_:)();
  v29 = qword_1004A3860;
  sub_10000F974(&qword_1004A3F78);
  swift_getKeyPath();
  *(v1 + v29) = MutableStateValue.__allocating_init(_:_:)();
  v30 = qword_1004A3868;
  v31 = swift_getKeyPath();
  v32 = sub_10000F974(&qword_1004A3F80);
  *(v1 + v30) = (*(v32 + 272))(v31, v10);
  *(v1 + qword_1004A3870) = 0;
  v33 = qword_1004A3878;
  v34 = sub_10000F974(&qword_1004A39D8);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  *(v1 + qword_1004D4AA8) = 3;
  v35 = qword_1004A3880;
  sub_10000F974(&qword_1004A3DC0);
  swift_allocObject();
  *(v1 + v35) = PassthroughSubject.init()();
  Date.init()();
  *(v1 + qword_1004A3898) = 0x4000000000000000;
  v36 = *(v3 + 56);
  v36(v1 + qword_1004A38A0, 1, 1, v2);
  v36(v1 + qword_1004A38A8, 1, 1, v2);
  v37 = v1 + qword_1004A38B0;
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  v38 = qword_1004A38B8;
  type metadata accessor for PersonHeightInstrument.HeightResultContainer();
  v39 = swift_allocObject();
  v40 = sub_100067648(0, 8, 0, _swiftEmptyArrayStorage);
  v56 = xmmword_1003D7D40;
  v57 = xmmword_1003D7D40;
  *&v58 = v40;
  sub_10000F974(&qword_1004A3F88);
  swift_allocObject();
  *(v39 + 16) = Synchronized.init(wrappedValue:)();
  *(v1 + v38) = v39;
  v41 = qword_1004A38C0;
  v42 = sub_100067544(0, 8, 0, _swiftEmptyArrayStorage);
  v57 = v56;
  *&v58 = v42;
  sub_10000F974(&qword_1004A3F90);
  swift_allocObject();
  *(v1 + v41) = Synchronized.init(wrappedValue:)();
  Date.init()();
  v43 = qword_1004A38D0;
  v44 = v54;
  Date.init()();
  (*(v3 + 16))(v55, v44, v2);
  sub_10000F974(&qword_1004A3F98);
  swift_allocObject();
  v45 = Synchronized.init(wrappedValue:)();
  (*(v3 + 8))(v44, v2);
  *(v1 + v43) = v45;
  v36(v1 + qword_1004A38D8, 1, 1, v2);
  v46 = qword_1004A38E0;
  v47 = sub_100067544(0, 8, 0, _swiftEmptyArrayStorage);
  v57 = v56;
  *&v58 = v47;
  swift_allocObject();
  *(v1 + v46) = Synchronized.init(wrappedValue:)();
  v36(v1 + qword_1004A38F0, 1, 1, v2);
  v36(v1 + qword_1004A38F8, 1, 1, v2);
  v36(v1 + qword_1004A3900, 1, 1, v2);
  v36(v1 + qword_1004A3908, 1, 1, v2);
  *(v1 + qword_1004A3910) = 0;
  *(v1 + qword_1004A3920) = 0;
  *(v1 + qword_1004A3928) = 0;
  *(v1 + qword_1004A3930) = 0;
  Date.init()();
  v48 = v1 + qword_1004A3948;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *v48 = 0u;
  *(v48 + 48) = 1;
  v49 = v1 + qword_1004A3950;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *v49 = 0u;
  *(v49 + 48) = 1;
  v50 = v1 + qword_1004A3958;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 1;
  *(v1 + qword_1004A3960) = 0;
  *(v1 + qword_1004A3968) = 0;
  v51 = qword_1004A3970;
  *&v57 = 0;
  sub_10000F974(&qword_1004A3FA0);
  swift_allocObject();
  *(v1 + v51) = Synchronized.init(wrappedValue:)();
  v52 = qword_1004A3978;
  LOBYTE(v57) = 0;
  sub_10000F974(&qword_1004A3FA8);
  swift_allocObject();
  *(v1 + v52) = Synchronized.init(wrappedValue:)();
  *(v1 + qword_1004A3980) = _swiftEmptyArrayStorage;
  *(v1 + qword_1004A3988) = 0;
  v53 = qword_1004A3990;
  v62 = 1;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v61 = 1;
  sub_10000F974(&qword_1004A3FB0);
  swift_allocObject();
  *(v1 + v53) = Synchronized.init(wrappedValue:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005738C()
{

  StateValue.ifUpdated(_:)();
}

void sub_1000573F0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v217 = *(v3 - 8);
  __chkstk_darwin(v3);
  v215 = v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for DispatchQoS();
  v214 = *(v216 - 8);
  __chkstk_darwin(v216);
  v213 = v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000F974(&unk_1004A3EC0);
  __chkstk_darwin(v6 - 8);
  v210 = v194 - v7;
  v8 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  v207 = *(v8 - 8);
  v208 = v8;
  v9 = __chkstk_darwin(v8);
  v206 = (v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v209 = (v194 - v11);
  v12 = sub_10000F974(&unk_1004A3D90);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v221 = v194 - v17;
  v18 = __chkstk_darwin(v16);
  v218.n128_u64[0] = v194 - v19;
  __chkstk_darwin(v18);
  v21 = v194 - v20;
  v222 = type metadata accessor for Date();
  v22 = *(v222 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v222);
  v211 = v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v219 = v194 - v26;
  v27 = __chkstk_darwin(v25);
  v212 = v194 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = v194 - v30;
  __chkstk_darwin(v29);
  v220 = v194 - v32;
  if ((sub_100059D38() & 1) == 0 || (v33 = qword_1004A3818, , StateValue.wrappedValue.getter(), , memcpy(v232, v228, 0x200uLL), v34 = sub_10008D4F0(), sub_100013C4C(v232), !v34))
  {
    v40 = v221;
    Date.init()();
    (*(v22 + 56))(v40, 0, 1, v222);
    v41 = qword_1004A38D8;
    swift_beginAccess();
    sub_10006CA08(v40, &v2[v41], &unk_1004A3D90);
    swift_endAccess();
    *&v227[0] = 0;

    Synchronized.wrappedValue.setter();

    v42 = *(**&v2[qword_1004A3838] + 144);

    v42(v227, v43);

    memcpy(v228, v227, 0x213uLL);
    sub_10006BE28(v228);
    if (v228[392] != 1)
    {
      sub_100055A10(0xD000000000000020, 0x8000000100402860);
      sub_10005931C();
    }

    return;
  }

  v204 = v3;

  v205 = v33;

  StateValue.wrappedValue.getter();

  memcpy(v231, v228, sizeof(v231));
  v35 = sub_10008D4F0();
  sub_100013C4C(v231);
  if (!v35)
  {
    goto LABEL_8;
  }

  v36 = [v35 worldTrackingState];
  v203 = v15;
  v37 = v36;

  if (!v37)
  {
    goto LABEL_8;
  }

  if ([v37 majorRelocalization] & 1) != 0 || (objc_msgSend(v37, "minorRelocalization"))
  {

LABEL_8:
    sub_100055A10(0xD00000000000001ALL, 0x8000000100402890);
    v38 = v221;
    (*(v22 + 56))(v221, 1, 1, v222);
    v39 = qword_1004A38D8;
    swift_beginAccess();
    sub_10006CA08(v38, &v2[v39], &unk_1004A3D90);
    swift_endAccess();
    return;
  }

  v200 = v37;
  Date.init()();

  Synchronized.wrappedValue.getter();

  if (v228[0] == 1)
  {
    v228[0] = 0;

    Synchronized.wrappedValue.setter();

    sub_100055A10(0x20676E69646E6550, 0xED00007465736572);
    sub_10005931C();
  }

  v201 = qword_1004A3838;
  v44 = *(**&v2[qword_1004A3838] + 144);

  v44(v227, v45);

  memcpy(v228, v227, 0x213uLL);
  sub_10006BE28(v228);
  v202 = v22;
  v46 = v2;
  if ((v228[192] & 1) == 0)
  {
    simd_float4x4.position.getter();
    sub_10005A23C();
    if ((v47 & 1) == 0)
    {
      sub_100055A10(0xD000000000000016, 0x80000001004028B0);
      sub_10005931C();
    }
  }

  v48 = qword_1004A38A0;
  swift_beginAccess();
  sub_10006C92C(&v2[v48], v21, &unk_1004A3D90);
  v49 = v202 + 48;
  v50 = *(v202 + 48);
  v51 = v222;
  if (v50(v21, 1, v222) == 1)
  {
    sub_100018F04(v21, &unk_1004A3D90);
  }

  else
  {
    (*(v202 + 32))(v31, v21, v51);
    v52 = *(**&v2[v201] + 144);

    v52(v226, v53);

    memcpy(v227, v226, 0x213uLL);
    sub_10006BE28(v227);
    if (BYTE8(v227[28]) == 1)
    {
      v54 = *(**&v46[v201] + 144);

      v54(v225, v55);

      memcpy(v226, v225, 0x213uLL);
      sub_10006BE28(v226);
      if (BYTE8(v226[24]) != 1)
      {
        Date.timeIntervalSince(_:)();
        if (v56 > 0.4)
        {
          sub_100055A10(0xD000000000000012, 0x8000000100402910);
          sub_10005931C();
          v57 = v31;
          v58 = v222;
          (*(v202 + 8))(v57, v222);
          goto LABEL_26;
        }
      }

      v51 = v222;
    }

    (*(v202 + 8))(v31, v51);
  }

  v58 = v51;
LABEL_26:
  v59 = qword_1004A38D8;
  swift_beginAccess();
  v60 = v218.n128_u64[0];
  sub_10006C92C(&v46[v59], v218.n128_i64[0], &unk_1004A3D90);
  v61 = v50(v60, 1, v58);
  v197 = v49;
  if (v61 == 1)
  {
    sub_100018F04(v60, &unk_1004A3D90);
  }

  else
  {
    v62 = v50;
    v63 = v46;
    v64 = v202;
    v65 = v212;
    (*(v202 + 32))(v212, v60, v58);
    Date.timeIntervalSince(_:)();
    v67 = v66;
    v68 = *(v64 + 8);
    v46 = v63;
    v50 = v62;
    v68(v65, v58);
    if (v67 < 2.0)
    {
      v68(v220, v58);
LABEL_76:

      return;
    }
  }

  v196 = v50;
  v69 = v221;
  v198 = *(v202 + 56);
  v199 = v202 + 56;
  v198(v221, 1, 1, v58);
  swift_beginAccess();
  sub_10006CA08(v69, &v46[v59], &unk_1004A3D90);
  swift_endAccess();

  Synchronized.wrappedValue.getter();

  v70 = *&v227[0];
  if (*&v227[0])
  {
    *&v227[0] = 0;

    Synchronized.wrappedValue.setter();

    StateValue.wrappedValue.getter();

    memcpy(v230, v227, sizeof(v230));
    sub_10005A3A8(v70, v230);
    sub_100013C4C(v230);
  }

  v71 = sub_10005A71C();
  if ((v71 & 0x100000000) != 0)
  {

    Synchronized.wrappedValue.getter();
    sub_10000F974(&qword_1004A3DB0);
    RingBuffer.clear()();
  }

  else
  {
    LODWORD(v225[0]) = v71;

    Synchronized.wrappedValue.getter();
    sub_10000F974(&qword_1004A3DB0);
    RingBuffer.append(_:)();
  }

  v226[0] = v227[0];
  *&v226[1] = *&v227[1];
  Synchronized.wrappedValue.setter();

  v72 = v201;
  v73 = [*&v46[qword_1004A3918] session];
  v74 = [v73 configuration];

  if (!v74)
  {
    __break(1u);
    return;
  }

  v75 = [v74 frameSemantics];

  v76 = *(**&v46[v72] + 400);

  v77 = v76(v227);
  *(v78 + 2) = v75 & 1;
  v77(v227, 0);

  sub_10005A870(v220);

  Synchronized.wrappedValue.getter();

  v79 = *(*&v227[1] + 16);

  v80 = v222;
  if (v79 == 8)
  {
    v81 = v201;
    v82 = *(**&v46[v201] + 144);

    v82(v226, v83);

    memcpy(v227, v226, 0x213uLL);
    sub_10006BE28(v227);
    if (BYTE8(v227[28]))
    {

      sub_1000662B0();
      v85 = v84;

      v218 = sub_10006648C();

      StateValue.wrappedValue.getter();

      memcpy(v226, v225, 0x200uLL);
      sub_100013C4C(v226);
      simd_float4x4.position.getter();
      v87 = vsubq_f32(v218, v86);
      v88 = vmulq_f32(v87, v87);
      v89 = sqrtf(v88.f32[2] + vaddv_f32(*v88.f32));
      sub_100018630(0, &qword_1004A1930);
      if (static UIDevice.isIPad()())
      {
        v90 = v85 - (((v89 * 0.0169) + (v89 * (v89 * -0.0053))) + -0.0089);
      }

      else
      {
        v90 = v85;
      }

      v91 = *(**&v46[v81] + 200);

      v93 = v91(v92);

      v94 = swift_allocObject();
      *(v94 + 16) = v90;
      *(v94 + 24) = v46;
      v95 = *(*v93 + 416);
      v96 = v46;
      v95(sub_10006C014, v94);

      v225[0] = 0;
      v225[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v97._countAndFlagsBits = 0xD000000000000014;
      v97._object = 0x80000001004028F0;
      String.append(_:)(v97);
      Float.write<A>(to:)();
      v98._countAndFlagsBits = 0x2E726F72726520;
      v98._object = 0xE700000000000000;
      String.append(_:)(v98);
      sub_100055A10(v225[0], v225[1]);

      v212 = v96;
      v99 = sub_1000558A4();
      if (!v99)
      {
        goto LABEL_49;
      }

      v100 = v99;

      StateValue.wrappedValue.getter();

      memcpy(v225, v224, 0x200uLL);
      sub_100013C4C(v225);
      simd_float4x4.position.getter();
      v102 = vsubq_f32(v218, v101);
      v103 = vmulq_f32(v102, v102);
      *&v104 = v103.f32[2] + vaddv_f32(*v103.f32);
      *v103.f32 = vrsqrte_f32(v104);
      *v103.f32 = vmul_f32(*v103.f32, vrsqrts_f32(v104, vmul_f32(*v103.f32, *v103.f32)));
      v218 = vmulq_n_f32(v102, vmul_f32(*v103.f32, vrsqrts_f32(v104, vmul_f32(*v103.f32, *v103.f32))).f32[0]);
      v105 = *Float.piDiv2.unsafeMutableAddressor();
      v106 = vmulq_f32(*SIMD3<>.up.unsafeMutableAddressor(), v218);
      v107 = acosf(v106.f32[2] + vaddv_f32(*v106.f32));
      if (qword_1004A0350 != -1)
      {
        swift_once();
      }

      v108 = qword_1004D4F08;
      v109 = *((swift_isaMask & *v100) + 0xB8);
      v194[2] = (swift_isaMask & *v100) + 184;
      v195 = v109;
      v110 = v109();
      v112 = v111;
      v113 = OBJC_IVAR____TtC7Measure14MetricsManager_personHeightMetrics;
      swift_beginAccess();
      v218.n128_u64[0] = v113;
      v114 = *(v108 + v113);
      if (*(v114 + 16))
      {
        v194[1] = v108;
        v115 = sub_100198230(v110, v112);
        v117 = v116;

        if (v117)
        {
          v118 = *(v114 + 56);
          v119 = v206;
          v120 = v207;
          sub_10006C020(v118 + *(v207 + 72) * v115, v206, type metadata accessor for MetricsManager.PersonHeightMetric);
          v121 = v209;
          sub_10006C088(v119, v209, type metadata accessor for MetricsManager.PersonHeightMetric);
          swift_endAccess();
          v121[6] = v89;
          v121[7] = (v105 - fabsf(v107)) * 57.296;
          v122 = v208;
          v123 = (v121 + *(v208 + 52));
          *v123 = v85;
          *(v123 + 4) = 0;
          v124 = v221;
          Date.init()();
          v198(v124, 0, 1, v222);
          v125 = sub_10006CA08(v124, v121 + *(v122 + 44), &unk_1004A3D90);
          *(v121 + 32) = 1;
          v206 = (v195)(v125);
          v195 = v126;
          v127 = v210;
          sub_10006C020(v121, v210, type metadata accessor for MetricsManager.PersonHeightMetric);
          (*(v120 + 56))(v127, 0, 1, v122);
          swift_beginAccess();
          sub_100124144(v127, v206, v195);
          swift_endAccess();

          sub_10006C0F0(v121);
LABEL_49:
          v128 = v221;
          v80 = v222;
          v198(v221, 1, 1, v222);
          v129 = qword_1004A3908;
          v130 = v212;
          swift_beginAccess();
          sub_10006CA08(v128, &v130[v129], &unk_1004A3D90);
          swift_endAccess();
          goto LABEL_50;
        }
      }

      else
      {
      }

      swift_endAccess();

      goto LABEL_49;
    }
  }

LABEL_50:
  v212 = *&v46[qword_1004A38E8];
  v131 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v132 = v202;
  v209 = *(v202 + 16);
  v210 = v202 + 16;
  v133 = v219;
  (v209)(v219, v220, v80);
  v134 = (*(v132 + 80) + 24) & ~*(v132 + 80);
  v135 = swift_allocObject();
  *(v135 + 16) = v131;
  v136 = *(v132 + 32);
  v207 = v132 + 32;
  v208 = v131;
  v206 = v136;
  (v136)(v135 + v134, v133, v80);
  *&v227[2] = sub_10006BF78;
  *(&v227[2] + 1) = v135;
  *&v227[0] = _NSConcreteStackBlock;
  *(&v227[0] + 1) = 1107296256;
  *&v227[1] = sub_100041180;
  *(&v227[1] + 1) = &unk_100469E58;
  v137 = _Block_copy(v227);

  v218.n128_u64[0] = v46;
  v138 = v213;
  static DispatchQoS.unspecified.getter();
  *&v226[0] = _swiftEmptyArrayStorage;
  sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  v139 = v222;
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  v140 = v132;
  v141 = v215;
  v142 = v220;
  v143 = v204;
  v144 = v209;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v137);
  v145 = v141;
  v146 = v140;
  v147 = v139;
  v148 = v143;
  v149 = v219;
  (*(v217 + 8))(v145, v148);
  v150 = v138;
  v151 = v218.n128_u64[0];
  (*(v214 + 8))(v150, v216);

  v152 = [objc_opt_self() standardUserDefaults];
  LODWORD(v139) = [v152 kPersonHeightDebugViewEnabled];

  if (v139)
  {
    v153 = qword_1004A3938;
    swift_beginAccess();
    (v144)(v149, v151 + v153, v147);
    Date.timeIntervalSince(_:)();
    v155 = v154;
    (*(v146 + 8))(v149, v147);
    if (v155 > 0.0333333333)
    {
      swift_beginAccess();
      (*(v146 + 24))(v151 + v153, v142, v147);
      swift_endAccess();
      sub_10005BCB0();
    }
  }

  v156 = qword_1004A3890;
  swift_beginAccess();
  (v144)(v149, v151 + v156, v147);
  Date.timeIntervalSince(_:)();
  v158 = v157;
  v159 = *(v146 + 8);
  v159(v149, v147);
  if (1.0 / *(v151 + qword_1004A3898) < v158)
  {
    swift_beginAccess();
    (*(v146 + 24))(v151 + v156, v142, v147);
    swift_endAccess();

    StateValue.wrappedValue.getter();

    memcpy(v229, v227, sizeof(v229));
    sub_10005BFA8(v229);
    sub_100013C4C(v229);
  }

  v160 = *(**(v151 + v201) + 144);

  v160(v226, v161);

  memcpy(v227, v226, 0x213uLL);
  sub_10006BE28(v227);
  if ((BYTE8(v227[24]) & 1) == 0)
  {
    v162 = v159;
    v163 = v201;
    v164 = *(**(v151 + v201) + 144);

    v164(v225, v165);

    memcpy(v226, v225, 0x213uLL);
    sub_10006BE28(v226);
    if ((BYTE8(v226[28]) & 1) != 0 && (v166 = *(**(v151 + v163) + 144), v167 = , v166(v224, v167), , memcpy(v225, v224, 0x213uLL), sub_10006BE28(v225), BYTE2(v225[0]) == 1))
    {
      v168 = qword_1004A3820;
      v169 = *(**(v151 + qword_1004A3820) + 144);

      v169(v224, v170);

      v159 = v162;
      if (v224[6].n128_u8[8] & 1) != 0 || (v171 = v224[6].n128_f32[1], v172 = *(**(v151 + v168) + 144), v173 = , v172(v224, v173), , (v224[7].n128_u8[0]) || v171 >= 0.075 || v224[6].n128_f32[3] >= 0.4)
      {
        sub_100055A10(0xD000000000000016, 0x80000001004028D0);
        v147 = v222;
      }

      else
      {

        StateValue.wrappedValue.getter();

        memcpy(v224, v223, 0x200uLL);
        sub_10005C4A8(v224, v142);
        sub_100013C4C(v224);
        v147 = v222;
      }
    }

    else
    {
      v159 = v162;
    }
  }

  v174 = sub_10005CEB0(1);
  *(v151 + qword_1004A3870) = v174 & 1;
  if ((v174 & 1) == 0)
  {
    goto LABEL_69;
  }

  if (sub_10005D168())
  {
    goto LABEL_68;
  }

  v175 = qword_1004A3900;
  swift_beginAccess();
  v176 = v151 + v175;
  v177 = v203;
  sub_10006C92C(v176, v203, &unk_1004A3D90);
  if (v196(v177, 1, v147) == 1)
  {
    sub_100018F04(v177, &unk_1004A3D90);
  }

  else
  {
    v178 = v211;
    (v206)(v211, v177, v147);
    v179 = v219;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v181 = v180;
    v159(v179, v147);
    v159(v178, v147);
    if (v181 < 0.5)
    {
LABEL_68:
      v182 = v221;
      Date.init()();
      v198(v182, 0, 1, v147);
      v183 = qword_1004A3908;
      swift_beginAccess();
      sub_10006CA08(v182, v151 + v183, &unk_1004A3D90);
      swift_endAccess();
      goto LABEL_69;
    }
  }

  if (!sub_10005D4C0(0.0))
  {
    goto LABEL_68;
  }

LABEL_69:
  sub_10005D60C(v142);
  v184 = sub_100055518();

  Synchronized.wrappedValue.getter();

  v185 = LOBYTE(v226[0]);
  v186 = qword_1004A3988;
  if (*(v151 + qword_1004A3988) <= 1u)
  {
    if (*(v151 + qword_1004A3988))
    {
      v159(v142, v147);

      if (v185)
      {
        *(v151 + v186) = 2;
      }
    }

    else
    {
      v187 = *(**(v151 + v201) + 144);

      v187(v225, v188);

      v159(v142, v147);
      memcpy(v226, v225, 0x213uLL);
      sub_10006BE28(v226);
      if (BYTE8(v226[28]) != 1)
      {
        *(v151 + v186) = 1;
      }
    }

    return;
  }

  if (*(v151 + qword_1004A3988) != 2)
  {
    v159(v142, v147);

    *(v151 + v186) = 0;
    return;
  }

  if (v226[0])
  {
    v159(v142, v147);
    goto LABEL_76;
  }

  v189 = *(**(v151 + v201) + 144);

  v189(v225, v190);

  memcpy(v226, v225, 0x213uLL);
  sub_10006BE28(v226);
  if ((BYTE8(v226[28]) & 1) != 0 || (v191 = sub_1000558A4()) == 0)
  {
    v159(v142, v147);
  }

  else
  {
    v192 = v191;
    v193 = (*((swift_isaMask & *v191) + 0x130))();
    v193();

    v159(v142, v147);
  }

  *(v151 + v186) = 3;
}

uint64_t sub_10005931C()
{
  v1 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v1 - 8);
  v51 = &v48 - v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0230 != -1)
  {
    swift_once();
  }

  v9._object = 0x8000000100402840;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  Log.debug(_:isPrivate:)(v9, 0);
  v10 = Contexts.UIKit.init()();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v57 = sub_1000670C0;
  v58 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v55 = sub_100041180;
  v56 = &unk_100469DE0;
  v12 = _Block_copy(&aBlock);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  *&v52 = _swiftEmptyArrayStorage;
  sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v50 + 8))(v5, v3);
  (*(v48 + 8))(v8, v49);

  v14 = *(**&v13[qword_1004A3838] + 200);

  v16 = v14(v15);

  (*(*v16 + 416))(sub_10005DE8C, 0);

  v17 = &v13[qword_1004A38B0];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v13[qword_1004A3988] = 0;
  v13[qword_1004A3870] = 0;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v20 = v51;
  v19(v51, 1, 1, v18);
  v21 = qword_1004A38F8;
  swift_beginAccess();
  sub_10006CA08(v20, &v13[v21], &unk_1004A3D90);
  swift_endAccess();
  v19(v20, 1, 1, v18);
  v22 = qword_1004A3900;
  swift_beginAccess();
  sub_10006CA08(v20, &v13[v22], &unk_1004A3D90);
  swift_endAccess();
  v19(v20, 1, 1, v18);
  v23 = qword_1004A38F0;
  swift_beginAccess();
  sub_10006CA08(v20, &v13[v23], &unk_1004A3D90);
  swift_endAccess();
  v24 = sub_1000558A4();
  if (v24)
  {
    v25 = v24;
    v26 = *(**&v13[qword_1004A3848] + 400);

    v27 = v26(&aBlock);
    v28 = (*((swift_isaMask & *v25) + 0xB8))();
    sub_100028A7C(v28, v29);

    v27(&aBlock, 0);

    v30 = *&v13[qword_1004A3860];
    *&aBlock = 0x8000000000000008;
    v31 = *(*v30 + 392);

    v31(&aBlock);
  }

  v32 = qword_1004A3850;
  v33 = *(**&v13[qword_1004A3850] + 144);

  v33(&aBlock, v34);

  *&v52 = v55;

  sub_10000F974(&qword_1004A1648);
  sub_10000F974(&qword_1004A3DA0);
  swift_dynamicCast();
  v35 = aBlock;
  if (!(aBlock >> 62))
  {
    result = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_14:

LABEL_15:

    Synchronized.wrappedValue.getter();
    sub_10000F974(&qword_1004A3DA8);
    RingBuffer.clear()();
    v52 = aBlock;
    v53 = v55;
    Synchronized.wrappedValue.setter();

    Synchronized.wrappedValue.getter();
    sub_10000F974(&qword_1004A3DB0);
    RingBuffer.clear()();
    v52 = aBlock;
    v53 = v55;
    Synchronized.wrappedValue.setter();

    Synchronized.wrappedValue.getter();
    RingBuffer.clear()();
    v52 = aBlock;
    v53 = v55;
    Synchronized.wrappedValue.setter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v35 + 32);
LABEL_10:
    v38 = v37;

    v39 = *(**&v13[v32] + 400);

    v40 = v39(&aBlock);
    v42 = v41;
    *&v52 = *(v41 + 16);
    v43 = v52;

    v44 = sub_1000550F8(v38, v43, &type metadata accessor for MeasureObject);
    if ((v45 & 1) == 0)
    {

      v43 = v52;
    }

    *(v42 + 16) = v43;

    v40(&aBlock, 0);

    v46 = *&v13[qword_1004A3860];
    *&aBlock = 0x8000000000000008;
    v47 = *(*v46 + 392);

    v47(&aBlock);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

float *sub_100059D38()
{
  v1 = v0;
  v2 = *(**(v0 + qword_1004A3860) + 144);

  v2(__src, v3);

  if (!(*&__src[0] >> 62))
  {
    sub_10001B360(*&__src[0]);
    return 0;
  }

  if (*&__src[0] >> 62 == 1)
  {
    sub_10001B360(*&__src[0]);
  }

  else if ((__ROR8__(*&__src[0] ^ 0x8000000000000000, 3) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0;
  }

  v4 = *(**(v0 + qword_1004A3868) + 144);

  v4(__src, v5);

  v35 = __src[6];
  v36 = __src[7];
  v37 = __src[8];
  v38 = *&__src[9];
  v31 = __src[2];
  v32 = __src[3];
  v33 = __src[4];
  v34 = __src[5];
  v29 = __src[0];
  v30 = __src[1];
  sub_10006C92C(&v29, __src, &qword_1004A1208);
  sub_100013BF8(&v29);
  v39[6] = v35;
  v39[7] = v36;
  v40 = v37;
  v39[2] = v31;
  v39[3] = v32;
  v39[5] = v34;
  v39[4] = v33;
  v39[1] = v30;
  v39[0] = v29;
  if (sub_10001376C(v39) != 1)
  {
    sub_100018F04(&v29, &qword_1004A1208);
    return 0;
  }

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  v6 = sub_10008D4F0();
  sub_100013C4C(__dst);
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 camera];
  [v7 transform];

  simd_float4x4.forward.getter();
  v9 = fabsf(v8);
  if (qword_1004A0138 != -1)
  {
    v24 = v9;
    swift_once();
    v9 = v24;
  }

  if (*&dword_1004D4AA0 < v9)
  {
    v10 = *(**(v1 + qword_1004A3838) + 144);

    v10(v27, v11);

    memcpy(__src, v27, 0x213uLL);
    sub_10006BE28(__src);
    if (BYTE8(__src[28]))
    {
      goto LABEL_20;
    }
  }

  sub_100018630(0, &qword_1004A1930);
  if (static UIDevice.isIPhone()())
  {
    v12 = *(**(v1 + qword_1004A3820) + 144);

    v12(__src, v13);

    if ((__src[6] & 1) == 0)
    {
      v14 = *(&__src[5] + 1);
      result = Float.piDiv2.unsafeMutableAddressor();
      v16 = -0.7854 - *result;
      v17 = 0.7854 - *result;
      if (v16 > v17)
      {
        __break(1u);
        return result;
      }

      v18 = vdupq_n_s64(v14);
      if (v16 > *&v18.i32[2] || *&v18.i32[2] > v17)
      {
        goto LABEL_20;
      }
    }
  }

  v19 = *(**(v1 + qword_1004A3838) + 144);

  v19(v27, v20);

  memcpy(__src, v27, 0x213uLL);
  sub_10006BE28(__src);
  if (LOBYTE(__src[0]) != 1 || (v21 = *(**(v1 + qword_1004A3820) + 144), v22 = , v21(v25, v22), , v27[4] = v25[4], v27[5] = v25[5], v27[6] = v25[6], LOBYTE(v27[7]) = v26, v27[0] = v25[0], v27[1] = v25[1], v27[2] = v25[2], v27[3] = v25[3], sub_100077EAC()) || (, StateValue.wrappedValue.getter(), , (BYTE3(v25[0]) & 1) != 0))
  {
LABEL_20:

    return 0;
  }

  v23 = ARFrame.isVIOTrackingUnacceptable()();

  return !v23;
}

void sub_10005A23C()
{
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v0 = (qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits);
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
  }

  else
  {
    v2 = v0[8];
    v1 = v0[9];
    v4 = v0[6];
    v3 = v0[7];
    type metadata accessor for MeasureCamera();

    StateValue.wrappedValue.getter();

    memcpy(__dst, __src, sizeof(__dst));
    sub_100013C4C(__dst);

    StateValue.wrappedValue.getter();

    memcpy(__src, v7, sizeof(__src));
    sub_100013C4C(__src);
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    CGPoint.init(xy:)();
    v10.x = v5;
    v10.y = v6;
    v11.origin.x = v4;
    v11.origin.y = v3;
    v11.size.width = v2;
    v11.size.height = v1;
    CGRectContainsPoint(v11, v10);
  }
}

uint64_t sub_10005A3A8(void *a1, const void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10008D4F0();
  if (result)
  {
    v14 = result;
    v24 = v10;
    if (qword_1004A0180 != -1)
    {
      result = swift_once();
    }

    v25 = v7;
    v15 = *(&xmmword_1004D4AE8 + 1);
    if (*(&xmmword_1004D4AE8 + 1))
    {
      v23 = Contexts.PrivateQueue.init(_:)();
      v16 = swift_allocObject();
      v16[2] = v3;
      v16[3] = a1;
      v16[4] = v14;
      memcpy(v16 + 6, a2, 0x200uLL);
      aBlock[4] = sub_10006C19C;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_100469ED0;
      v17 = _Block_copy(aBlock);
      v18 = v15;
      v19 = v3;
      v20 = a1;
      v21 = v14;
      sub_10004B20C(a2, &v27);
      static DispatchQoS.unspecified.getter();
      v27 = _swiftEmptyArrayStorage;
      sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v23;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      (*(v25 + 8))(v9, v6);
      (*(v26 + 8))(v12, v24);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10005A71C()
{
  v1 = *(**(v0 + qword_1004A3838) + 144);

  v1(__src, v2);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  v3 = __dst[24];
  if (__dst[24])
  {
    v4 = 0;
  }

  else
  {
    simd_float4x4.position.getter();
    v10 = v5;

    StateValue.wrappedValue.getter();

    memcpy(__src, v11, 0x200uLL);
    sub_100013C4C(__src);
    simd_float4x4.position.getter();
    v7 = vsubq_f32(v10, v6);
    v8 = vmulq_f32(v7, v7);
    v4 = COERCE_UNSIGNED_INT(sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)));
  }

  return v4 | (v3 << 32);
}

uint64_t sub_10005A870(uint64_t a1)
{
  v2 = v1;
  v33[1] = a1;
  v3 = sub_10000F974(&unk_1004A3D90);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v33 - v7;
  v9 = qword_1004A38A0;
  swift_beginAccess();
  sub_10006C92C(v2 + v9, v8, &unk_1004A3D90);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  sub_100018F04(v8, &unk_1004A3D90);
  if (v13 == 1)
  {
    goto LABEL_5;
  }

  sub_10006C92C(v2 + v9, v6, &unk_1004A3D90);
  result = v12(v6, 1, v10);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  Date.timeIntervalSince(_:)();
  v16 = v15;
  (*(v11 + 8))(v6, v10);
  if (v16 >= 1.0)
  {
LABEL_5:
    v17 = *(v2 + qword_1004D4AA8) == 2;
    v18 = 2.0;
    v19 = 0.25;
  }

  else
  {
    v17 = *(v2 + qword_1004D4AA8) == 2;
    v18 = 20.0;
    v19 = 5.0;
  }

  if (v17)
  {
    v18 = v19;
  }

  *(v2 + qword_1004A3898) = v18;
  v20 = qword_1004A3838;
  v21 = *(**(v2 + qword_1004A3838) + 144);

  v21(v35, v22);

  memcpy(v36, v35, 0x213uLL);
  sub_10006BE28(v36);
  if (v36[456] == 1 && (v23 = *(**(v2 + v20) + 144), v24 = , v23(v34, v24), , memcpy(v35, v34, 0x213uLL), sub_10006BE28(v35), LOBYTE(v35[49]) != 1) || (v25 = *(**(v2 + v20) + 144), v26 = , v25(v34, v26), , memcpy(v35, v34, 0x213uLL), sub_10006BE28(v35), BYTE2(v35[66]) == 1))
  {
    v27 = *(**(v2 + v20) + 400);

    v28 = v27(v35);
    *(v29 + 1) = 1;
    v28(v35, 0);
  }

  else
  {
    v30 = *(**(v2 + v20) + 400);

    v31 = v30(v34);
    *(v32 + 1) = 0;
    v31(v34, 0);
  }
}

void *sub_10005AC80(__n128 *a1, float a2)
{
  a1[28].n128_f32[1] = a2;
  a1[28].n128_u8[8] = 0;

  v8 = sub_100066618();

  a1[29] = v8;
  a1[30].n128_u8[0] = 0;
  a1[33].n128_u8[2] = 1;
  result = sub_1000558A4();
  if (result)
  {
    v4 = result;
    v5 = (*((swift_isaMask & *result) + 0xB8))();
    v7 = v6;

    a1[30].n128_u64[1] = v5;
    a1[31].n128_u64[0] = v7;
  }

  return result;
}

void sub_10005AD50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    Synchronized.wrappedValue.getter();

    Date.timeIntervalSince(_:)();
    v13 = v12;
    v23 = *(v4 + 8);
    v23(v9, v3);
    if (v13 > 0.1)
    {

      StateValue.wrappedValue.getter();

      memcpy(v28, v27, 0x200uLL);
      v14 = sub_10005B0C0(v28);
      sub_100013C4C(v28);
      if ((v14 & 0x100000000) == 0)
      {
        v15 = *(v4 + 16);
        v15(v9, a2, v3);
        v22 = v14;
        v15(v7, v9, v3);

        Synchronized.wrappedValue.setter();

        v23(v9, v3);
        v26 = v22;

        Synchronized.wrappedValue.getter();
        sub_10000F974(&qword_1004A3DB0);
        RingBuffer.append(_:)();
        v24 = v27[0];
        v25 = *&v27[1];
        Synchronized.wrappedValue.setter();

        v16 = *(**&v11[qword_1004A3840] + 200);

        v18 = v16(v17);

        v19 = swift_allocObject();
        *(v19 + 16) = v11;
        v20 = *(*v18 + 280);
        v21 = v11;
        v20(sub_10006C924, v19);
      }
    }
  }
}

unint64_t sub_10005B0C0(unint64_t a1)
{
  v3 = *(**(v1 + qword_1004A3838) + 144);

  v3(__src, v4);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  if (__dst[24])
  {
    simd_float4x4.forward.getter();
    v6 = vmul_f32(vzip1_s32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)), 0xC0000000C0000000);
  }

  else
  {
    simd_float4x4.position.getter();
    v6 = vzip1_s32(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  }

  ariadne_trace(_:_:_:_:_:)();
  v8 = sub_10008D4F0();
  if (!v8)
  {
    goto LABEL_105;
  }

  v9 = v8;
  if (!*(v1 + qword_1004A3940))
  {

LABEL_105:
    ariadne_trace(_:_:_:_:_:)();
    v75 = 0;
    v76 = 1;
    goto LABEL_106;
  }

  v10 = DepthProcessor.getJasperPointsPosition(requestedMinConfidence:currentFrame:)(0.99, v9);
  if (!v10)
  {

LABEL_74:

    goto LABEL_105;
  }

  v86 = v9;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    v13 = _swiftEmptyArrayStorage;
    do
    {
      v16 = vsub_f32(v6, vzip1_s32(*v12, *&vextq_s8(*v12->i8, *v12->i8, 8uLL)));
      if (vaddv_f32(vmul_f32(v16, v16)) < 0.5625)
      {
        v87 = *v12->i8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __src[0] = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000A2570(0, *(v13 + 2) + 1, 1);
          v13 = __src[0];
        }

        a1 = *(v13 + 2);
        v14 = *(v13 + 3);
        v15 = v87;
        if (a1 >= v14 >> 1)
        {
          sub_1000A2570((v14 > 1), a1 + 1, 1);
          v15 = v87;
          v13 = __src[0];
        }

        *(v13 + 2) = a1 + 1;
        *&v13[2 * a1 + 4] = v15;
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v18 = *(v13 + 2);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v11 = (v13 + 4);
    MeasureCore.shared.unsafeMutableAddressor();
    do
    {
      v88 = *v11;

      v22 = MeasureCore.mlLabel(of:kernelRadius:)();
      a1 = v22;

      if (v22 != 33)
      {

        v23 = MeasureCore.mlNormal(of:)();
        v25 = v24;
        a1 = v26;

        if ((a1 & 1) == 0 && v22 == 1)
        {
          v27 = *SIMD3<>.up.unsafeMutableAddressor();
          if (qword_1004A0140 != -1)
          {
            v85 = v27;
            swift_once();
            v27 = v85;
          }

          v28.i64[0] = v23;
          v28.i64[1] = v25;
          v29 = vmulq_f32(v27, v28);
          if (*&dword_1004D4AA4 < (v29.f32[2] + ((*&v23 * v27.f32[0]) + v29.f32[1])))
          {
            v91 = v19;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000A2570(0, *(v19 + 2) + 1, 1);
              v19 = v91;
            }

            v20 = v88;
            a1 = *(v19 + 2);
            v21 = *(v19 + 3);
            if (a1 >= v21 >> 1)
            {
              sub_1000A2570((v21 > 1), a1 + 1, 1);
              v20 = v88;
              v19 = v91;
            }

            *(v19 + 2) = a1 + 1;
            *&v19[2 * a1 + 4] = v20;
          }
        }
      }

      v11 += 16;
      --v18;
    }

    while (v18);
  }

  v30 = *(v19 + 2);
  if (v30)
  {
    v91 = _swiftEmptyArrayStorage;
    sub_1000A2550(0, v30, 0);
    v31 = _swiftEmptyArrayStorage;
    v32 = _swiftEmptyArrayStorage[2];
    v11 = 32;
    do
    {
      v33 = *(v19 + v11);
      v91 = v31;
      v34 = *(v31 + 3);
      if (*&v32 >= v34 >> 1)
      {
        v89 = DWORD1(v33);
        sub_1000A2550((v34 > 1), *&v32 + 1, 1);
        DWORD1(v33) = v89;
        v31 = v91;
      }

      *(v31 + 2) = *&v32 + 1;
      *(v31 + *&v32 + 8) = DWORD1(v33);
      v11 += 16;
      ++*&v32;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v91 = v31;

  sub_1000549D0(&v91);

  v35 = v91;
  v36 = *(v91 + 2);
  v37 = (v36 - 40);
  if (v36 > 0x28)
  {
    v38 = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v35;
    if (!v38 || *(v35 + 3) <= 0x4FuLL)
    {
      v35 = sub_100067544(v38, v36, 1, v35);
      __src[0] = v35;
    }

    sub_10006C4CC(0, v37, 0);
    v36 = *(v35 + 2);
  }

  if (v36 < 6)
  {

    goto LABEL_74;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v39 = *(v35 + 2);
    if (v39)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_116:
    v35 = sub_10006B804(v35);
    v39 = *(v35 + 2);
    if (v39)
    {
LABEL_48:
      v40 = v39 - 1;
      a1 = (v35 + 32);
      v6.i32[0] = *&v35[4 * v40 + 32];
      *(v35 + 2) = v40;
      v36 = sub_100067544(0, 1, 1, _swiftEmptyArrayStorage);
      v11 = *(v36 + 2);
      v39 = *(v36 + 3);
      v37 = v11 + 1;
      if (v11 < v39 >> 1)
      {
        goto LABEL_49;
      }

      goto LABEL_118;
    }
  }

  __break(1u);
LABEL_118:
  v36 = sub_100067544((v39 > 1), v37, 1, v36);
LABEL_49:
  *(v36 + 2) = v37;
  *&v36[4 * v11 + 32] = v6.i32[0];
  v41 = *(v35 + 2);
  if (v41)
  {
    v42 = v41 - 1;
    v6.i32[0] = *(a1 + 4 * v42);
    *(v35 + 2) = v42;
    v11 = *(v36 + 2);
    v41 = *(v36 + 3);
    v37 = v11 + 1;
    if (v11 < v41 >> 1)
    {
      goto LABEL_51;
    }
  }

  else
  {
    __break(1u);
  }

  v36 = sub_100067544((v41 > 1), v37, 1, v36);
LABEL_51:
  *(v36 + 2) = v37;
  *&v36[4 * v11 + 32] = v6.i32[0];
  v43 = *(v35 + 2);
  if (v43)
  {
    v44 = v43 - 1;
    v6.i32[0] = *(a1 + 4 * v44);
    *(v35 + 2) = v44;
    v11 = *(v36 + 2);
    v43 = *(v36 + 3);
    v37 = v11 + 1;
    if (v11 < v43 >> 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    __break(1u);
  }

  v36 = sub_100067544((v43 > 1), v37, 1, v36);
LABEL_53:
  *(v36 + 2) = v37;
  *&v36[4 * v11 + 32] = v6.i32[0];
  v45 = *(v35 + 2);
  if (v45)
  {
    v46 = v45 - 1;
    v6.i32[0] = *(a1 + 4 * v46);
    *(v35 + 2) = v46;
    v11 = *(v36 + 2);
    v45 = *(v36 + 3);
    v37 = v11 + 1;
    if (v11 < v45 >> 1)
    {
      goto LABEL_55;
    }
  }

  else
  {
    __break(1u);
  }

  v36 = sub_100067544((v45 > 1), v37, 1, v36);
LABEL_55:
  *(v36 + 2) = v37;
  *&v36[4 * v11 + 32] = v6.i32[0];
  v47 = *(v35 + 2);
  if (v47)
  {
    v48 = v47 - 1;
    v6.i32[0] = *(a1 + 4 * v48);
    *(v35 + 2) = v48;
    v11 = *(v36 + 2);
    v47 = *(v36 + 3);
    v37 = v11 + 1;
    if (v11 < v47 >> 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    __break(1u);
  }

  v36 = sub_100067544((v47 > 1), v37, 1, v36);
LABEL_57:
  *(v36 + 2) = v37;
  *&v36[4 * v11 + 32] = v6.i32[0];

  v49 = *(v35 + 2);
  if (v49)
  {
    v6.i32[0] = 1041865114;
    while (1)
    {
      v50 = v49 - 1;
      v51 = *(a1 + 4 * v50);
      *(v35 + 2) = v50;
      v11 = *(v36 + 2);
      if (!v11)
      {
        v53 = 0.0;
        goto LABEL_68;
      }

      if (v11 <= 7)
      {
        break;
      }

      v52 = v11 & 0x7FFFFFFFFFFFFFF8;
      v54 = v36 + 48;
      v53 = 0.0;
      v55 = v11 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v53 = (((((((v53 + COERCE_FLOAT(*(v54 - 1))) + COERCE_FLOAT(HIDWORD(*(v54 - 2)))) + COERCE_FLOAT(*(v54 - 1))) + COERCE_FLOAT(HIDWORD(*(v54 - 1)))) + COERCE_FLOAT(*v54)) + COERCE_FLOAT(HIDWORD(*v54))) + COERCE_FLOAT(*(v54 + 1))) + COERCE_FLOAT(HIDWORD(*v54));
        v54 += 32;
        v55 -= 8;
      }

      while (v55);
      if (v11 != v52)
      {
        goto LABEL_66;
      }

LABEL_68:
      if (vabds_f32(v53 / v11, v51) < 0.15)
      {
        v59 = *(v36 + 3);
        if (v11 >= v59 >> 1)
        {
          v36 = sub_100067544((v59 > 1), v11 + 1, 1, v36);
        }

        *(v36 + 2) = v11 + 1;
        *&v36[4 * v11 + 32] = v51;
        v49 = *(v35 + 2);
        if (v49)
        {
          continue;
        }
      }

      goto LABEL_75;
    }

    v52 = 0;
    v53 = 0.0;
LABEL_66:
    v56 = v11 - v52;
    v57 = &v36[4 * v52 + 32];
    do
    {
      v58 = *v57++;
      v53 = v53 + v58;
      --v56;
    }

    while (v56);
    goto LABEL_68;
  }

LABEL_75:
  v37 = *(v36 + 2);
  if (!v37)
  {

LABEL_104:

    goto LABEL_105;
  }

  v60 = 0;
  v61 = v36;
  do
  {
    if (v60 >= *(v36 + 2))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    a1 = *(v61 + 2);
    if (a1)
    {
      if (a1 > 7)
      {
        v62 = a1 & 0x7FFFFFFFFFFFFFF8;
        v64 = v61 + 48;
        v63 = 0.0;
        v65 = a1 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v63 = (((((((v63 + COERCE_FLOAT(*(v64 - 1))) + COERCE_FLOAT(HIDWORD(*(v64 - 2)))) + COERCE_FLOAT(*(v64 - 1))) + COERCE_FLOAT(HIDWORD(*(v64 - 1)))) + COERCE_FLOAT(*v64)) + COERCE_FLOAT(HIDWORD(*v64))) + COERCE_FLOAT(*(v64 + 1))) + COERCE_FLOAT(HIDWORD(*v64));
          v64 += 32;
          v65 -= 8;
        }

        while (v65);
        if (a1 == v62)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v62 = 0;
        v63 = 0.0;
      }

      v66 = a1 - v62;
      v67 = &v61[4 * v62 + 32];
      do
      {
        v68 = *v67++;
        v63 = v63 + v68;
        --v66;
      }

      while (v66);
    }

    else
    {
      v63 = 0.0;
    }

LABEL_88:
    v69 = *&v36[4 * v60 + 32];
    if (vabds_f32(v69, v63 / a1) > 0.02 && a1 != 0)
    {
      v11 = 0;
      v71 = 0;
      while (*&v61[v11 + 32] != v69)
      {
        --v71;
        v11 += 4;
        if (!(a1 + v71))
        {
          goto LABEL_77;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_10006B804(v61);
      }

      v72 = *(v61 + 2);
      if (-v71 >= v72)
      {
        goto LABEL_115;
      }

      a1 = v72 - 1;
      memmove(&v61[v11 + 32], &v61[v11 + 36], 4 * (v72 + v71) - 4);
      *(v61 + 2) = a1;
    }

LABEL_77:
    ++v60;
  }

  while (v60 != v37);
  if (a1 <= 5)
  {
    goto LABEL_104;
  }

  if (a1 < 8)
  {
    v73 = 0;
    v74 = 0.0;
    goto LABEL_110;
  }

  v73 = a1 & 0xFFFFFFFFFFFFFFF8;
  v78 = v61 + 48;
  v74 = 0.0;
  v79 = a1 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v74 = (((((((v74 + COERCE_FLOAT(*(v78 - 1))) + COERCE_FLOAT(HIDWORD(*(v78 - 2)))) + COERCE_FLOAT(*(v78 - 1))) + COERCE_FLOAT(HIDWORD(*(v78 - 1)))) + COERCE_FLOAT(*v78)) + COERCE_FLOAT(HIDWORD(*v78))) + COERCE_FLOAT(*(v78 + 1))) + COERCE_FLOAT(HIDWORD(*v78));
    v78 += 32;
    v79 -= 8;
  }

  while (v79);
  if (a1 != v73)
  {
LABEL_110:
    v80 = a1 - v73;
    v81 = &v61[4 * v73 + 32];
    do
    {
      v82 = *v81++;
      v74 = v74 + v82;
      --v80;
    }

    while (v80);
  }

  v83 = v74 / a1;
  simd_float4x4.position.getter();
  v90 = v84;

  if (vabds_f32(v83, v90) < 0.85)
  {
    goto LABEL_105;
  }

  v75 = LODWORD(v83);
  ariadne_trace(_:_:_:_:_:)();
  v76 = 0;
LABEL_106:
  LOBYTE(__dst[0]) = v76;
  return v75 | (v76 << 32);
}

uint64_t sub_10005BC38(uint64_t a1)
{

  Synchronized.wrappedValue.getter();

  RingBuffer<A>.average()();
  v3 = v2;

  *(a1 + 148) = v3;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_10005BCB0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10006C410;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046A038;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_10005BFA8(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10008D4F0();
  if (result)
  {
    v29 = v1;
    v30 = v6;
    v12 = result;
    v31 = v8;
    v32 = v7;
    v33 = v4;
    v34 = v3;
    if (qword_1004A0230 != -1)
    {
      swift_once();
    }

    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v35._countAndFlagsBits = 0xD000000000000016;
    v35._object = 0x8000000100402A20;
    aBlock[0] = *a1;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    Log.debug(_:isPrivate:)(v35, 0);

    v28 = v12;
    v14 = [v12 capturedImage];
    v15 = swift_allocObject();
    v16 = v29;
    *(v15 + 16) = v29;
    memcpy((v15 + 32), a1, 0x200uLL);
    v17 = objc_allocWithZone(VNDetectFaceRectanglesRequest);
    aBlock[4] = sub_10006C458;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100163F58;
    aBlock[3] = &unk_10046A088;
    v18 = _Block_copy(aBlock);
    v19 = v16;
    sub_10004B20C(a1, &v35);

    v20 = [v17 initWithCompletionHandler:v18];
    _Block_release(v18);
    v29 = *&v19[qword_1004A3888];
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    *(v21 + 24) = 1;
    *(v21 + 32) = v20;
    v38 = sub_10006C4BC;
    v39 = v21;
    v35._countAndFlagsBits = _NSConcreteStackBlock;
    v35._object = 1107296256;
    v36 = sub_100041180;
    v37 = &unk_10046A0D8;
    v22 = _Block_copy(&v35);
    v23 = v14;
    v24 = v20;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
    v25 = v30;
    v26 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v33 + 8))(v25, v26);
    (*(v31 + 8))(v10, v32);
  }

  return result;
}

uint64_t sub_10005C4A8(__n128 *a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1004A3838;
  v10 = *(**(v2 + qword_1004A3838) + 144);

  v10(v68, v11);

  memcpy(v71, v68, 0x213uLL);
  sub_10006BE28(v71);
  if (v71[2] == 1)
  {
    result = sub_10005D4C0(0.0);
    if ((result & 1) == 0)
    {
      return result;
    }

    v57 = v5;
    v60 = v6;
    if (qword_1004A0230 != -1)
    {
      swift_once();
    }

    v14 = qword_1004D4C98;
    v13 = unk_1004D4CA0;
    v15 = qword_1004D4CA8;
    *&v66[0] = 0;
    *(&v66[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v69[0]._countAndFlagsBits = 0xD000000000000017;
    v69[0]._object = 0x8000000100402A90;

    StateValue.wrappedValue.getter();

    memcpy(&v67, v66, 0x200uLL);
    sub_100013C4C(&v67);
    *&v66[0] = v67._countAndFlagsBits;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v58 = v15;
    v59 = v14;
    v56 = v13;
    Log.debug(_:isPrivate:)(v69[0], 0);

    ariadne_trace(_:_:_:_:_:)();
    v17 = *(**(v2 + v9) + 144);

    v17(v66, v18);

    memcpy(v68, v66, 0x213uLL);
    sub_10006BE28(v68);
    if (v68[49])
    {
      return ariadne_trace(_:_:_:_:_:)();
    }

    sub_100061D14(a1, v69, *&v68[47], *&v68[48]);
    if (v70)
    {
      return ariadne_trace(_:_:_:_:_:)();
    }

    v54 = v69[1];
    v55 = v69[0];
    v19 = sub_10005FC14(1uLL, v69[0]);
    v21 = v20;
    v23 = v22;
    v24 = sub_10005B0C0(a1);
    if ((v24 & 0x100000000) != 0)
    {
      v27 = v60;
      if (v23)
      {
        goto LABEL_23;
      }

      v51 = v23;
      v52 = v21;
      v53 = v19;
      v45.i64[0] = v19;
      v45.i64[1] = v21;
      v50 = v45;
      v46 = *(**(v2 + qword_1004A3840) + 144);

      v46(v66, v47);

      if ((BYTE8(v66[9]) & 1) == 0)
      {
        if (*(&v66[9] + 1) >= v50.f32[1])
        {
          v26 = 0;
          v25 = v55.f32[1] - v50.f32[1];
        }

        else
        {
          v25 = v55.f32[1] - *(&v66[9] + 1);
          v26 = 1;
        }

        goto LABEL_9;
      }

      simd_float4x4.position.getter();
      if (fabsf(COERCE_FLOAT(vsubq_f32(v50, v48).i32[1])) >= 0.85)
      {
LABEL_23:
        sub_100055A10(0xD000000000000012, 0x8000000100402AB0);
        return ariadne_trace(_:_:_:_:_:)();
      }

      v26 = 0;
      LODWORD(v25) = vsubq_f32(v55, v50).i32[1];
    }

    else
    {
      v51 = v23;
      v52 = v21;
      v53 = v19;
      v25 = v55.f32[1] - *&v24;
      v26 = 1;
      v27 = v60;
    }

LABEL_9:
    v28 = v57;
    v29 = *(**(v2 + v9) + 200);

    v31 = v29(v30);

    v32 = swift_allocObject();
    *(v32 + 16) = v25;
    v33 = v52;
    *(v32 + 32) = v53;
    *(v32 + 40) = v33;
    *(v32 + 48) = v51 & 1;
    *(v32 + 49) = v26;
    (*(*v31 + 416))(sub_10006C814, v32);

    v34 = qword_1004A38C8;
    swift_beginAccess();
    (*(v27 + 16))(v8, v2 + v34, v28);
    Date.timeIntervalSince(_:)();
    v36 = v35;
    (*(v27 + 8))(v8, v28);
    if (v36 > 0.5)
    {
      sub_100055A10(0xD000000000000015, 0x8000000100402B40);

      Synchronized.wrappedValue.getter();
      sub_10000F974(&qword_1004A3DA8);
      RingBuffer.clear()();
      v64 = v66[0];
      v65 = *&v66[1];
      Synchronized.wrappedValue.setter();
    }

    v37._countAndFlagsBits = 0xD000000000000020;
    v37._object = 0x8000000100402AD0;
    Log.debug(_:isPrivate:)(v37, 0);
    *v66 = v25;
    v66[1] = v55;
    v66[2] = v54;

    Synchronized.wrappedValue.getter();
    sub_10000F974(&qword_1004A3DA8);
    RingBuffer.append(_:)();
    v62 = v64;
    v63 = v65;
    Synchronized.wrappedValue.setter();

    v38 = sub_1000558A4();
    if (v38)
    {
      if (qword_1004A0350 != -1)
      {
        v49 = v38;
        swift_once();
        v38 = v49;
      }

      v39 = v38;
      sub_100123688(v38, v25);
    }

    swift_beginAccess();
    (*(v60 + 24))(v3 + v34, v61, v28);
    swift_endAccess();

    Synchronized.wrappedValue.getter();

    v40 = *(*&v66[1] + 16);

    if (v40 == 8)
    {

      v41 = sub_1000667A4();

      if ((v41 & 0x100000000) == 0)
      {
        *&v66[0] = 0;
        *(&v66[0] + 1) = 0xE000000000000000;
        if (*&v41 <= 0.1)
        {
          _StringGuts.grow(_:)(20);
          v43 = 0x8000000100402B00;
          v42 = 0xD000000000000012;
        }

        else
        {
          _StringGuts.grow(_:)(18);
          v42 = 0xD000000000000010;
          v43 = 0x8000000100402B20;
        }

        String.append(_:)(*&v42);
        Float.write<A>(to:)();
        sub_100055A10(*&v66[0], *(&v66[0] + 1));
      }
    }

    return ariadne_trace(_:_:_:_:_:)();
  }

  if (qword_1004A0230 != -1)
  {
    swift_once();
  }

  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v67._countAndFlagsBits = 0xD00000000000002ALL;
  v67._object = 0x8000000100402A60;

  StateValue.wrappedValue.getter();

  memcpy(v68, v66, 0x200uLL);
  sub_100013C4C(v68);
  *&v66[0] = v68[0];
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v44);

  Log.debug(_:isPrivate:)(v67, 0);
}

uint64_t sub_10005CEB0(char a1)
{
  if ((a1 & 1) == 0)
  {

    Synchronized.wrappedValue.getter();

    v1 = *(v35 + 16);

    if (!v1)
    {
      return 0;
    }
  }

  Synchronized.wrappedValue.getter();

  if (v36)
  {
    return 0;
  }

  if (qword_1004A0850 != -1)
  {
    result = swift_once();
  }

  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
  }

  else
  {
    SIMD2<>.init(_:)();
    v4 = v3;
    SIMD2<>.init(_:)();
    v6 = v5;
    SIMD2<>.init(_:)();
    SIMD2<>.init(_:)();
    v8 = v7;
    SIMD2<>.init(_:)();
    v10 = v9;
    sub_10000F974(&qword_1004A3E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003D5730;
    v12 = vsub_f32(v8, v10);
    v13 = v4;
    v14 = vsub_f32(v6, v10);
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v34 = vmul_f32(v12, v12);
    v15 = vadd_f32(v34, vdup_lane_s32(v34, 1)).u32[0];
    v16 = vrsqrte_f32(v15);
    v17 = vmul_f32(v16, vrsqrts_f32(v15, vmul_f32(v16, v16)));
    LODWORD(v18) = vmul_f32(v17, vrsqrts_f32(v15, vmul_f32(v17, v17))).u32[0];
    v19 = vmul_f32(v14, v14);
    v20 = vmul_n_f32(v12, v18);
    LODWORD(v21) = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
    v22 = vrsqrte_f32(LODWORD(v21));
    v23 = vmul_f32(v22, vrsqrts_f32(LODWORD(v21), vmul_f32(v22, v22)));
    v24 = vmul_n_f32(v14, vmul_f32(v23, vrsqrts_f32(LODWORD(v21), vmul_f32(v23, v23))).f32[0]);
    v25 = vsub_f32(v4, v10);
    v26 = vmul_f32(v25, v20);
    v27 = 1;
    if (vaddv_f32(v26) > 0.0)
    {
      v28 = vsub_f32(v13, vadd_f32(v10, vmul_n_f32(v20, vadd_f32(v26, vdup_lane_s32(v26, 1)).f32[0])));
      v29 = sqrtf(vaddv_f32(vmul_f32(v28, v28)));
      if (v29 > 0.0)
      {
        v27 = v29 >= sqrtf(v21);
      }
    }

    v30 = vmul_f32(v25, v24);
    if (vaddv_f32(v30) <= 0.0)
    {
      return 0;
    }

    v31 = vsub_f32(v13, vadd_f32(v10, vmul_n_f32(v24, vadd_f32(v30, vdup_lane_s32(v30, 1)).f32[0])));
    v32 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
    if (v32 <= 0.0)
    {
      return 0;
    }

    v33 = v32 >= sqrtf(vaddv_f32(v34)) || v27;
    return v33 != 1;
  }

  return result;
}

BOOL sub_10005D168()
{
  v1 = v0;
  v2 = sub_10000F974(&unk_1004A3D90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = qword_1004A38F0;
  swift_beginAccess();
  sub_10006C92C(v1 + v17, v7, &unk_1004A3D90);
  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    sub_100018F04(v7, &unk_1004A3D90);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v9 + 8);
    v21(v14, v8);
    v21(v16, v8);
    if (v20 < 0.5)
    {
      return 1;
    }
  }

  v22 = qword_1004A38F8;
  swift_beginAccess();
  sub_10006C92C(v1 + v22, v5, &unk_1004A3D90);
  if (v18(v5, 1, v8) != 1)
  {
    v23 = v29;
    (*(v9 + 32))(v29, v5, v8);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v25 = v24;
    v26 = *(v9 + 8);
    v26(v14, v8);
    v26(v23, v8);
    return v25 < 0.5;
  }

  sub_100018F04(v5, &unk_1004A3D90);
  return 0;
}

BOOL sub_10005D4C0(float a1)
{

  Synchronized.wrappedValue.getter();

  v2 = *(v10 + 16);

  if (!v2)
  {
    return 0;
  }

  Synchronized.wrappedValue.getter();

  RingBuffer<A>.average()();
  v4 = v3;

  if (v4 < (a1 + 1.5))
  {
    return 0;
  }

  Synchronized.wrappedValue.getter();

  RingBuffer<A>.average()();
  v6 = v5;

  if ((3.0 - a1) < v6)
  {
    return 0;
  }

  Synchronized.wrappedValue.getter();

  RingBuffer<A>.average()();
  v9 = v8;

  return v9 <= 5.0;
}

uint64_t sub_10005D60C(uint64_t a1)
{
  *&v43 = a1;
  v2 = sub_10000F974(&qword_1004A3EB8);
  v3 = __chkstk_darwin(v2 - 8);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = sub_10000F974(&qword_1004A39D8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = qword_1004A3878;
  swift_beginAccess();
  v44 = v1;
  v41 = v14;
  sub_10006C92C(v1 + v14, v6, &qword_1004A3EB8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100018F04(v6, &qword_1004A3EB8);
  }

  sub_10006C1AC(v6, v13);
  Date.timeIntervalSince(_:)();
  if (v16 >= 3.0)
  {
    sub_100018F04(v13, &qword_1004A39D8);
    v34 = v42;
    (*(v8 + 56))(v42, 1, 1, v7);
    v35 = v44;
    v36 = v41;
    swift_beginAccess();
    sub_10006CA08(v34, v35 + v36, &qword_1004A3EB8);
    return swift_endAccess();
  }

  type metadata accessor for MeasureCamera();
  v17 = sub_10006C92C(v13, v11, &qword_1004A39D8);
  v18 = *&v11[*(v7 + 48)];
  *&v19 = (*((swift_isaMask & *v18) + 0x210))(v17);
  v43 = v19;
  v39 = v21;
  v40 = v20;
  v38 = v22;

  simd_float4x4.position.getter();
  v43 = v23;
  v24 = v44;

  StateValue.wrappedValue.getter();

  memcpy(v46, v45, sizeof(v46));
  sub_100013C4C(v46);
  v39 = v46[12];
  v40 = v46[11];
  v37 = v46[14];
  v38 = v46[13];

  StateValue.wrappedValue.getter();

  memcpy(v47, v45, sizeof(v47));
  sub_100013C4C(v47);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v43 = v25;
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v11, v26);
  result = CGPoint.init(xy:)();
  v29 = v27;
  v30 = v28;
  if (qword_1004A0850 != -1)
  {
    *&v43 = v27;
    *&v40 = v28;
    result = swift_once();
    v30 = v40;
    v29 = v43;
  }

  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
    return result;
  }

  v31 = CGRectContainsPoint(*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 48), *&v29);
  result = sub_100018F04(v13, &qword_1004A39D8);
  if (!v31)
  {
    v32 = v42;
    (*(v8 + 56))(v42, 1, 1, v7);
    v33 = v41;
    swift_beginAccess();
    sub_10006CA08(v32, v24 + v33, &qword_1004A3EB8);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10005DB08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4 & 0xFE;
  if (v6 != 2)
  {
    sub_100055A10(0xD000000000000011, 0x8000000100402820);
    sub_10005931C();
  }

  result = sub_10005DB78(v6 != 2);
  *(a3 + qword_1004D4AA8) = a4;
  return result;
}

uint64_t sub_10005DB78(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A02D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D4E90;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1 & 1;
  aBlock[4] = sub_10006704C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100469D90;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

double sub_10005DE8C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1;
  *(a1 + 452) = 0;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 1;
  return result;
}

uint64_t sub_10005DF04(uint64_t a1, uint64_t a2, void *a3)
{
  ariadne_trace(_:_:_:_:_:)();
  sub_10019A754(_swiftEmptyArrayStorage);
  v6 = objc_allocWithZone(VNImageRequestHandler);
  type metadata accessor for VNImageOption(0);
  sub_10006C9C0(&qword_1004A0CA0, type metadata accessor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithCVPixelBuffer:a1 orientation:a2 options:isa];

  sub_10000F974(&unk_1004A3F10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003D56B0;
  *(v9 + 32) = a3;
  sub_100018630(0, &unk_1004ABE90);
  v10 = a3;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v15 = 0;
  LODWORD(a1) = [v8 performRequests:v11 error:&v15];

  if (a1)
  {
    v12 = v15;
  }

  else
  {
    v13 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return ariadne_trace(_:_:_:_:_:)();
}

uint64_t sub_10005E12C(char *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v270 = a4;
  v287.n128_u64[0] = a3;
  v6 = type metadata accessor for Date();
  v262 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v253 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v256 = &v253 - v11;
  __chkstk_darwin(v10);
  v255 = &v253 - v12;
  v13 = sub_10000F974(&unk_1004A3D90);
  v14 = __chkstk_darwin(v13 - 8);
  v288.n128_u64[0] = &v253 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v254 = &v253 - v17;
  __chkstk_darwin(v16);
  v280 = &v253 - v18;
  v19 = sub_10000F974(&qword_1004A3EB8);
  __chkstk_darwin(v19 - 8);
  v279 = &v253 - v20;
  v278 = sub_10000F974(&qword_1004A39D8);
  v21 = *(v278 - 8);
  v22 = __chkstk_darwin(v278);
  v268 = &v253 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v267 = &v253 - v24;
  ariadne_trace(_:_:_:_:_:)();
  v259 = qword_1004A3838;
  v25 = *(**&a1[qword_1004A3838] + 144);

  v25(v295, v26);

  memcpy(v298, v295, 0x213uLL);
  v27 = [a2 results];
  if (!v27 || (v28 = v27, sub_100018630(0, &qword_1004A3ED0), v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v28, v30 = sub_10015D304(v29), , !v30))
  {
    sub_10006BE28(v298);
    return ariadne_trace(_:_:_:_:_:)();
  }

  v31 = v30 & 0xFFFFFFFFFFFFFF8;
  v285 = v6;
  v257 = v30;
  if (v30 >> 62)
  {
    goto LABEL_90;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v33 = v262;
  v34 = v288.n128_u64[0];
  v269 = qword_1004A38F0;
  v260 = qword_1004A38A0;
  v276 = qword_1004A3878;
  swift_beginAccess();
  v266 = (v33 + 8);
  v277 = (v33 + 56);
  v35 = &off_100494000;
  if (v32)
  {
    v281 = v32;
    v36 = 0;
    v253 = 0;
    v286.i64[0] = v257 & 0xC000000000000001;
    v283 = (v257 + 32);
    v284 = v31;
    v275 = v21 + 6;
    v261 = xmmword_1003D5730;
    v258 = _swiftEmptyArrayStorage;
    v282 = v9;
    v265 = a1;
    while (1)
    {
      while (1)
      {
        if (v286.i64[0])
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *(v284 + 16))
          {
            goto LABEL_89;
          }

          v37 = *&v283[v36];
        }

        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          v32 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }

        v21 = v37;
        [v21 v35[316]];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        sub_10005567C(v296);
        *v295 = v296[0];
        *&v295[16] = v296[1];
        *&v295[32] = v296[2];
        v299.origin.x = v40;
        v299.origin.y = v42;
        v299.size.width = v44;
        v299.size.height = v46;
        v300 = CGRectApplyAffineTransform(v299, v295);
        v290[0] = *&v300.size.width;
        CGRect.center.getter();
        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        v47 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
        if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
        {
          goto LABEL_119;
        }

        CGRectGetWidth(*(v47 + 48));
        CGRect.center.getter();
        if (*(v47 + 80))
        {
          goto LABEL_120;
        }

        CGRectGetHeight(*(v47 + 48));
        v31 = -1;
        v48 = _swiftEmptyArrayStorage;
        do
        {
          static CGPoint.+ infix(_:_:)();
          v50 = v49;
          v52 = v51;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_100067A00(0, *(v48 + 2) + 1, 1, v48);
          }

          v54 = *(v48 + 2);
          v53 = *(v48 + 3);
          if (v54 >= v53 >> 1)
          {
            v48 = sub_100067A00((v53 > 1), v54 + 1, 1, v48);
          }

          *(v48 + 2) = v54 + 1;
          v55 = &v48[2 * v54];
          *(v55 + 4) = v50;
          *(v55 + 5) = v52;
          static CGPoint.+ infix(_:_:)();
          v59 = *(v48 + 2);
          v58 = *(v48 + 3);
          if (v59 >= v58 >> 1)
          {
            v66 = v56;
            v67 = v57;
            v68 = sub_100067A00((v58 > 1), v59 + 1, 1, v48);
            v57 = v67;
            v56 = v66;
            v48 = v68;
          }

          *(v48 + 2) = v59 + 1;
          v60 = &v48[2 * v59];
          *(v60 + 4) = v56;
          *(v60 + 5) = v57;
          static CGPoint.+ infix(_:_:)();
          v64 = *(v48 + 2);
          v63 = *(v48 + 3);
          if (v64 >= v63 >> 1)
          {
            v69 = v61;
            v70 = v62;
            v71 = sub_100067A00((v63 > 1), v64 + 1, 1, v48);
            v62 = v70;
            v61 = v69;
            v48 = v71;
          }

          *(v48 + 2) = v64 + 1;
          v65 = &v48[2 * v64];
          *(v65 + 4) = v61;
          *(v65 + 5) = v62;
          ++v31;
        }

        while (v31 != 2);
        MeasureCore.shared.unsafeMutableAddressor();

        v72 = MeasureCore.adHitTestPositionOnly(screenPoints:frame:)(v48, v287.n128_u64[0]);

        if (!v72)
        {
LABEL_36:

          goto LABEL_37;
        }

        v73 = *SIMD3<>.zero.unsafeMutableAddressor();
        v74 = *(v72 + 16);
        v75 = v278;
        if (v74)
        {
          v76 = (v72 + 32);
          v77 = *(v72 + 16);
          do
          {
            v78 = *v76++;
            v73 = vaddq_f32(v73, v78);
            v73.i32[3] = 0;
            --v77;
          }

          while (v77);
        }

        v289 = v73;

        *v79.i32 = v74;
        v80.i64[0] = vdivq_f32(v289, vdupq_lane_s32(v79, 0)).u64[0];
        v80.f32[2] = v289.f32[2] / v74;
        v80.i32[3] = 0;
        v289 = v80;
        v81 = v279;
        sub_10006C92C(&a1[v276], v279, &qword_1004A3EB8);
        if ((*v275)(v81, 1, v75) == 1)
        {
          sub_100018F04(v81, &qword_1004A3EB8);
        }

        else
        {
          v82 = v267;
          sub_10006C1AC(v81, v267);
          v31 = v268;
          v83 = sub_10006C92C(v82, v268, &qword_1004A39D8);
          v84 = *(v31 + *(v75 + 48));
          *&v85 = (*((swift_isaMask & *v84) + 0x210))(v83);
          v273 = v86;
          v274 = v85;
          v271 = v88;
          v272 = v87;

          simd_float4x4.position.getter();
          v90 = vsubq_f32(v89, v289);
          v91 = vmulq_f32(v90, v90);
          v92 = v91.f32[2] + vaddv_f32(*v91.f32);
          v93 = v82;
          a1 = v265;
          sub_100018F04(v93, &qword_1004A39D8);
          (*v266)(v31, v285);
          if (v92 <= 0.0625)
          {
            goto LABEL_36;
          }
        }

        v94 = sub_10005FC14(0, v289);
        if ((v96 & 1) == 0)
        {
          break;
        }

        v97 = v280;
        Date.init()();

        (*v277)(v97, 0, 1, v285);
        v31 = v269;
        swift_beginAccess();
        sub_10006CA08(v97, &a1[v31], &unk_1004A3D90);
        swift_endAccess();
LABEL_37:
        v9 = v282;
        v98 = v36 == v281;
        v34 = v288.n128_u64[0];
LABEL_38:
        v35 = &off_100494000;
        if (v98)
        {
          goto LABEL_65;
        }
      }

      *&v99 = v94;
      *(&v99 + 1) = v95;
      v274 = v99;
      v31 = *v277;
      v100 = v280;
      (*v277)(v280, 1, 1, v285);
      v101 = v269;
      swift_beginAccess();
      sub_10006CA08(v100, &a1[v101], &unk_1004A3D90);
      swift_endAccess();
      sub_100060E40(v295);
      v290[0] = *&v295[24];
      *&v274 = *&v295[32];
      v102 = *&v295[40];
      v103 = *&v295[48];
      v104 = *&v295[56];
      *&v271 = *v295;
      v263 = *&v295[16];
      v264 = *&v295[8];
      if ((v298[192] & 1) != 0 || (simd_float4x4.position.getter(), v106 = vsubq_f32(v105, v289), v107 = vmulq_f32(v106, v106), sqrtf(v107.f32[2] + vaddv_f32(*v107.f32)) > 0.25))
      {
        if (*(v47 + 80))
        {
          goto LABEL_121;
        }

        SIMD2<>.init(_:)();
        v109 = v108;
        SIMD2<>.init(_:)();
        v111 = v110;
        SIMD2<>.init(_:)();
        SIMD2<>.init(_:)();
        v113 = v112;
        SIMD2<>.init(_:)();
        v115 = v114;
        sub_10000F974(&qword_1004A3E10);
        v116 = swift_allocObject();
        *(v116 + 16) = v261;
        v117 = vsub_f32(v113, v115);
        v118 = vsub_f32(v111, v115);
        *(v116 + 32) = v117;
        *(v116 + 40) = v118;
        v119 = swift_allocObject();
        *&v120 = vmul_f32(v117, v117);
        v272 = v120;
        LODWORD(v122) = vadd_f32(*&v120, vdup_lane_s32(*&v120, 1)).u32[0];
        *&v120 = vrsqrte_f32(v122);
        *&v120 = vmul_f32(*&v120, vrsqrts_f32(v122, vmul_f32(*&v120, *&v120)));
        v121 = vmul_n_f32(v117, vmul_f32(*&v120, vrsqrts_f32(v122, vmul_f32(*&v120, *&v120))).f32[0]);
        *&v122 = vmul_f32(v118, v118);
        LODWORD(v122) = vadd_f32(*&v122, vdup_lane_s32(*&v122, 1)).u32[0];
        v123 = vrsqrte_f32(v122);
        v124 = vmul_f32(v123, vrsqrts_f32(v122, vmul_f32(v123, v123)));
        v125 = vmul_n_f32(v118, vmul_f32(v124, vrsqrts_f32(v122, vmul_f32(v124, v124))).f32[0]);
        *(v119 + 32) = v121;
        *(v119 + 40) = v125;
        v126 = vsub_f32(v109, v115);
        v127 = vmul_f32(v126, v121);
        v128 = 1;
        if (vaddv_f32(v127) > 0.0)
        {
          v129 = vsub_f32(v109, vadd_f32(v115, vmul_n_f32(v121, vadd_f32(v127, vdup_lane_s32(v127, 1)).f32[0])));
          v130 = sqrtf(vaddv_f32(vmul_f32(v129, v129)));
          if (v130 > 0.0)
          {
            v128 = v130 >= sqrtf(*&v122);
          }
        }

        *&v122 = vmul_f32(v126, v125);
        v273 = v122;
        v131 = vaddv_f32(*&v122);
        swift_setDeallocating();
        swift_deallocClassInstance();

        if (v131 <= 0.0 || (v132 = vsub_f32(v109, vadd_f32(v115, vmul_n_f32(v125, vadd_f32(*&v273, vdup_lane_s32(*&v273, 1)).f32[0]))), v133 = sqrtf(vaddv_f32(vmul_f32(v132, v132))), v133 <= 0.0) || v128 || v133 >= sqrtf(vaddv_f32(*&v272)))
        {

          v35 = &off_100494000;
          goto LABEL_8;
        }

        v134 = 0;
      }

      else
      {
        v134 = 1;
      }

      v135 = v280;
      Date.init()();
      (v31)(v135, 0, 1, v285);
      v31 = v260;
      swift_beginAccess();
      sub_10006CA08(v135, &a1[v31], &unk_1004A3D90);
      swift_endAccess();
      v35 = &off_100494000;
      [v21 boundingBox];
      CGRect.center.getter();
      static CGPoint.distanceSq(_:_:)();
      v137 = v136;
      [v21 boundingBox];
      v139 = v138;
      v141 = v140;
      v143 = v142;
      v145 = v144;

      v301.origin.x = v139;
      v301.origin.y = v141;
      v301.size.width = v143;
      v301.size.height = v145;
      if (CGRectGetWidth(v301) <= 0.5)
      {
        [v21 boundingBox];
        Height = CGRectGetHeight(v302);

        if (Height <= 0.5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v258 = sub_100067E40(0, *(v258 + 2) + 1, 1, v258);
          }

          v9 = v282;
          v147 = v289;
          v148 = v271;
          v150 = v263;
          v149 = v264;
          v31 = *(v258 + 2);
          v151 = *(v258 + 3);
          v34 = v288.n128_u64[0];
          if (v31 >= v151 >> 1)
          {
            v155 = sub_100067E40((v151 > 1), v31 + 1, 1, v258);
            v147 = v289;
            v258 = v155;
          }

          v152 = v258;
          *(v258 + 2) = v31 + 1;
          v153 = &v152[14 * v31];
          v153[2].i64[0] = v21;
          v153[2].i64[1] = v148;
          v153[3].i64[0] = v149;
          v154 = v290[0];
          v153[3].i64[1] = v150;
          v153[4].i64[0] = v154;
          v153[4].i64[1] = v274;
          v153[5].i64[0] = v102;
          v153[5].i64[1] = v103;
          v153[6].i64[0] = v104;
          v153[7] = v147;
          v153[8].i32[0] = v137;
          v153[8].i8[4] = v134;
          v98 = v36 == v281;
          goto LABEL_38;
        }
      }

      else
      {
      }

LABEL_8:
      v9 = v282;
      v34 = v288.n128_u64[0];
      if (v36 == v281)
      {
        goto LABEL_65;
      }
    }
  }

  v253 = 0;
  v258 = _swiftEmptyArrayStorage;
LABEL_65:
  if (!*(v258 + 2))
  {
    sub_10006BE28(v298);

LABEL_74:

    v163 = v280;
    (*v277)(v280, 1, 1, v285);
    v164 = qword_1004A3908;
    swift_beginAccess();
    sub_10006CA08(v163, &a1[v164], &unk_1004A3D90);
    swift_endAccess();
    return ariadne_trace(_:_:_:_:_:)();
  }

  *v295 = v258;

  v156 = v253;
  sub_100054B04(v295);
  if (v156)
  {
    goto LABEL_122;
  }

  v157 = *v295;
  v158 = *(*v295 + 16);
  v159 = v262;
  v160 = &off_100494000;
  if (!v158)
  {

    sub_10006BE28(v298);
    goto LABEL_74;
  }

  v161 = 0;
  while (1)
  {
    v162 = *v295 + v161;
    if (*(*v295 + v161 + 132) == 1)
    {
      break;
    }

    v161 += 112;
    if (!--v158)
    {
      goto LABEL_94;
    }
  }

  if (!v161)
  {
    goto LABEL_94;
  }

  v165 = *(*v295 + v161 + 128);
  v166 = *(*v295 + 128);
  v167 = *(**&a1[qword_1004A3850] + 144);

  v167(v295, v168);

  v169 = *&v295[16];

  if (v169 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_78;
    }

LABEL_92:

    goto LABEL_93;
  }

  if (!*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_92;
  }

LABEL_78:
  if ((v169 & 0xC000000000000001) != 0)
  {
    v170 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_81:
    v171 = v170;

    type metadata accessor for WorldPerson();
    v172 = swift_dynamicCastClass();
    if (v172)
    {
      v173 = v254;
      (*((swift_isaMask & *v172) + 0x240))();
      v174 = v173;
      v175 = *(v159 + 48);
      v176 = v173;
      v177 = v159;
      v178 = v285;
      if (v175(v176, 1, v285) == 1)
      {

        sub_100018F04(v174, &unk_1004A3D90);
        v159 = v177;
      }

      else
      {
        v290[0] = v171;
        (*(v177 + 32))(v255, v174, v178);
        v179 = v256;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v181 = v180;
        v182 = *(v177 + 8);
        v182(v179, v178);
        if (v181 < 3.0)
        {
          v183 = *(v162 + 32);
          v184 = *(v162 + 64);
          *&v295[16] = *(v162 + 48);
          *&v295[32] = v184;
          *v295 = v183;
          v185 = *(v162 + 80);
          v186 = *(v162 + 96);
          v187 = *(v162 + 112);
          *&v295[93] = *(v162 + 125);
          *&v295[64] = v186;
          *&v295[80] = v187;
          *&v295[48] = v185;
          sub_10006C92C(v295, v291, &qword_1004A3ED8);

          v182(v255, v178);
          v293[4] = *&v295[64];
          v294[0] = *&v295[80];
          *(v294 + 13) = *&v295[93];
          v293[0] = *v295;
          v293[1] = *&v295[16];
          v293[2] = *&v295[32];
          v293[3] = *&v295[48];
          v159 = v262;
          v34 = v288.n128_u64[0];
          v160 = &off_100494000;
          goto LABEL_96;
        }

        v182(v255, v178);

        v159 = v262;
        v34 = v288.n128_u64[0];
      }
    }

    else
    {
    }

LABEL_93:
    v160 = &off_100494000;
    if ((v165 / v166) <= 2.5)
    {
      v238 = *(v162 + 32);
      v239 = *(v162 + 64);
      *&v295[16] = *(v162 + 48);
      *&v295[32] = v239;
      *v295 = v238;
      v240 = *(v162 + 80);
      v241 = *(v162 + 96);
      v242 = *(v162 + 112);
      *&v295[93] = *(v162 + 125);
      *&v295[64] = v241;
      *&v295[80] = v242;
      *&v295[48] = v240;
      goto LABEL_95;
    }

LABEL_94:
    v188 = *(v157 + 96);
    *&v295[48] = *(v157 + 80);
    *&v295[64] = v188;
    *&v295[80] = *(v157 + 112);
    *&v295[93] = *(v157 + 125);
    v189 = *(v157 + 48);
    *v295 = *(v157 + 32);
    *&v295[16] = v189;
    *&v295[32] = *(v157 + 64);
LABEL_95:
    sub_10006C92C(v295, v291, &qword_1004A3ED8);

    v293[4] = *&v295[64];
    v294[0] = *&v295[80];
    *(v294 + 13) = *&v295[93];
    v293[0] = *v295;
    v293[1] = *&v295[16];
    v293[2] = *&v295[32];
    v293[3] = *&v295[48];
LABEL_96:
    [*&v293[0] v160[316]];
    v191 = v190;
    v193 = v192;
    v195 = v194;
    v197 = v196;
    sub_10005567C(v297);
    *v295 = v297[0];
    *&v295[16] = v297[1];
    *&v295[32] = v297[2];
    v303.origin.x = v191;
    v303.origin.y = v193;
    v303.size.width = v195;
    v303.size.height = v197;
    v304 = CGRectApplyAffineTransform(v303, v295);
    x = v304.origin.x;
    y = v304.origin.y;
    width = v304.size.width;
    v201 = v304.size.height;
    simd_float4x4.translated(to:)();
    v202 = &unk_1004A3000;
    v289 = v203;
    *v290 = v204;
    v287 = v205;
    v288 = v206;
    if (BYTE4(v294[1]))
    {
      sub_10006BE28(v298);
LABEL_103:

      v213 = v280;
      (*v277)(v280, 1, 1, v285);
      v214 = qword_1004A38A8;
      swift_beginAccess();
      sub_10006CA08(v213, &a1[v214], &unk_1004A3D90);
      swift_endAccess();
      v215 = &a1[v202[278]];
      *v215 = 0;
      *(v215 + 1) = 0;
      v215[16] = 1;
      v216 = *(**&a1[v259] + 200);

      v218 = v216(v217);

      v219 = *&v293[0];
      v286 = v294[0];
      v220 = v294[1];
      v221 = BYTE4(v294[1]);
      v222 = swift_allocObject();
      *(v222 + 48) = v219;
      *(v222 + 16) = x;
      *(v222 + 24) = y;
      *(v222 + 32) = width;
      *(v222 + 40) = v201;
      v223 = *(v293 + 8);
      *(v222 + 72) = *(&v293[1] + 8);
      *(v222 + 56) = v223;
      v224 = *(&v293[2] + 8);
      *(v222 + 104) = *(&v293[3] + 8);
      *(v222 + 88) = v224;
      v225 = v287;
      *(v222 + 128) = v286;
      *(v222 + 144) = v220;
      *(v222 + 148) = v221;
      *(v222 + 152) = a1;
      v226 = v288;
      v227 = v289;
      *(v222 + 160) = v225;
      *(v222 + 176) = v226;
      v228 = *v290;
      *(v222 + 192) = v227;
      *(v222 + 208) = v228;
      v229 = *(*v218 + 416);
      sub_10006C92C(v293, v295, &qword_1004A3ED8);
      a1;
      v229(sub_10006C25C, v222);

      if (qword_1004A0230 != -1)
      {
        swift_once();
      }

      *v295 = 0;
      *&v295[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v292._countAndFlagsBits = 0xD000000000000014;
      v292._object = 0x8000000100402930;

      StateValue.wrappedValue.getter();

      memcpy(v295, v291, 0x200uLL);
      sub_100013C4C(v295);
      *&v291[0] = *v295;
      v230._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v230);

      Log.debug(_:isPrivate:)(v292, 0);

      v291[0] = *(v293 + 8);
      v291[1] = *(&v293[1] + 8);
      v291[2] = *(&v293[2] + 8);
      v291[3] = *(&v293[3] + 8);
      LOBYTE(v292._countAndFlagsBits) = 0;
      LOBYTE(v291[4]) = 0;

      Synchronized.wrappedValue.setter();
      sub_100018F04(v293, &qword_1004A3ED8);

      return ariadne_trace(_:_:_:_:_:)();
    }

    v207 = &a1[qword_1004A38B0];
    if (a1[qword_1004A38B0 + 16])
    {
      sub_10006BE28(v298);
      v208 = 0;
    }

    else
    {
      v286 = *v207;
      simd_float4x4.position.getter();
      v210 = vsubq_f32(v286, v209);
      v211 = vmulq_f32(v210, v210);
      v212 = sqrtf(v211.f32[2] + vaddv_f32(*v211.f32));
      sub_10006BE28(v298);
      v208 = v212 > 0.25;
    }

    if (v298[392] == 1)
    {
      sub_100061180(v287, v288, v289, *v290);
      goto LABEL_103;
    }

    v232 = qword_1004A38A8;
    swift_beginAccess();
    sub_10006C92C(&a1[v232], v34, &unk_1004A3D90);
    v233 = *(v159 + 48);
    v234 = v34;
    v235 = v34;
    v236 = v159;
    v237 = v285;
    if (v233(v234, 1, v285) == 1)
    {
      sub_100018F04(v235, &unk_1004A3D90);
    }

    else
    {
      (*(v236 + 32))(v9, v235, v237);
      if (!v208)
      {
        v249 = v256;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v251 = v250;
        v252 = *v266;
        (*v266)(v249, v237);
        if (v251 > 0.5)
        {
          sub_100061180(v287, v288, v289, *v290);
          v252(v9, v237);
          v202 = &unk_1004A3000;
          goto LABEL_103;
        }

        v252(v9, v237);
LABEL_113:

        v244 = *(**&a1[v259] + 200);

        v246 = v244(v245);

        v247 = swift_allocObject();
        v247[2] = x;
        v247[3] = y;
        v247[4] = width;
        v247[5] = v201;
        (*(*v246 + 416))(sub_10006C2E4, v247);
        sub_100018F04(v293, &qword_1004A3ED8);

        simd_float4x4.position.getter();
        *v207 = v248;
        v207[1].i8[0] = 0;
        return ariadne_trace(_:_:_:_:_:)();
      }

      (*v266)(v9, v237);
    }

    v243 = v280;
    Date.init()();
    (*v277)(v243, 0, 1, v237);
    swift_beginAccess();
    sub_10006CA08(v243, &a1[v232], &unk_1004A3D90);
    swift_endAccess();
    goto LABEL_113;
  }

  if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v170 = *(v169 + 32);
    goto LABEL_81;
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:

  __break(1u);
  return result;
}

void *sub_10005FC14(unint64_t a1, float32x4_t a2)
{
  v134 = a2;
  v4 = sub_10000F974(&unk_1004A3D90);
  __chkstk_darwin(v4 - 8);
  v133 = &v128[-v5];
  *&v140 = type metadata accessor for ARPlaneAnchor.Classification();
  v6 = *(v140 - 8);
  v7 = __chkstk_darwin(v140);
  v9 = &v128[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v128[-v10];
  result = sub_10008D4F0();
  v137 = result;
  if (!result)
  {
    return result;
  }

  v135 = v9;
  v129 = a1;
  v136 = v2;
  MeasureCore.shared.unsafeMutableAddressor();

  v13 = MeasureCore.allPlaneAnchors.getter();

  v14 = 0;
  v143[0] = _swiftEmptyArrayStorage;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  *&v139 = v6 + 88;
  v19 = enum case for ARPlaneAnchor.Classification.floor(_:);
  v138 = (v6 + 8);
  if (v17)
  {
    while (1)
    {
      v20 = v14;
LABEL_9:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = *(*(v13 + 56) + ((v20 << 9) | (8 * v21)));
      ARPlaneAnchor.classification.getter();
      v23 = v140;
      if ((*v139)(v11, v140) == v19)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a1 = *(v143[0] + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 = v20;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

      else
      {

        (*v138)(v11, v23);
        v14 = v20;
        if (!v17)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v13 + 64 + 8 * v20);
    ++v14;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  *&v141 = v143[0];
  v24 = [v137 camera];
  [v24 transform];
  v142 = v25;
  v132 = v26;
  v131 = v27;
  v130 = v28;

  simd_float4x4.position.getter();
  v30 = vsubq_f32(v134, v29);
  v31 = v30;
  v31.i32[1] = vmuls_lane_f32(0.0, *v30.f32, 1);
  v31.i32[2] = v30.i32[2];
  v32 = vmulq_f32(v31, v31);
  *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
  *v32.f32 = vrsqrte_f32(v33);
  *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
  v34 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
  *v31.f32 = vadd_f32(*v134.f32, vmul_f32(*v34.f32, 0xBF000000BF000000));
  v31.f32[2] = v134.f32[2] + vmuls_lane_f32(-0.5, v34, 2);
  v31.i32[3] = 0;
  v142 = v31;
  v35 = SIMD3<>.up.unsafeMutableAddressor();
  HIDWORD(v36) = 0;
  *&v36 = vsubq_f32(0, *v35).u64[0];
  *(&v36 + 2) = 0.0 - COERCE_FLOAT(v35->i64[1]);
  v132 = v36;
  v37 = objc_allocWithZone(ARRaycastQuery);
  v38 = [v37 initWithOrigin:0 direction:0 allowingTarget:*v142.i64 alignment:*&v132];
  v39 = [*(v136 + qword_1004A3918) session];
  *&v132 = v38;
  v40 = [v39 raycast:v38];

  sub_100018630(0, &qword_1004A3EE8);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1 = _swiftEmptyArrayStorage;
  v143[0] = _swiftEmptyArrayStorage;
  if (!(v18 >> 62))
  {
    v41 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_16;
    }

LABEL_37:

    v138 = 0;
    v51 = a1 & 0x4000000000000000;
    v50 = a1;
    goto LABEL_38;
  }

LABEL_36:
  v41 = _CocoaArrayWrapper.endIndex.getter();
  if (!v41)
  {
    goto LABEL_37;
  }

LABEL_16:
  v42 = 0;
  v142.i64[0] = v18 & 0xC000000000000001;
  v43 = (v18 & 0xFFFFFFFFFFFFFF8);
  do
  {
    if (v142.i64[0])
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v42 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v44 = *(v18 + 8 * v42 + 32);
    }

    a1 = v44;
    v45 = (v42 + 1);
    if (__OFADD__(v42, 1))
    {
      goto LABEL_34;
    }

    v46 = [v44 anchor];
    if (!v46)
    {
LABEL_17:

      goto LABEL_18;
    }

    v47 = v46;
    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    if (v48)
    {
      v146 = v48;
      __chkstk_darwin(v48);
      *&v128[-16] = &v146;
      v49 = sub_1001038E8(sub_10006C3A8, &v128[-32], v141);

      if ((v49 & 1) == 0)
      {
        goto LABEL_17;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

LABEL_18:
    ++v42;
  }

  while (v45 != v41);
  v50 = v143[0];

  v51 = v50 & 0x4000000000000000;
  if ((v50 & 0x8000000000000000) == 0 && !v51)
  {
    if (*(v50 + 16))
    {
      goto LABEL_32;
    }

LABEL_102:

    v111 = 0;
    v52 = enum case for ARPlaneAnchor.Classification.none(_:);
    v112 = v135;
    while (1)
    {
      if (v142.i64[0])
      {
        v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v111 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_119;
        }

        v113 = *(v18 + 8 * v111 + 32);
      }

      v114 = v113;
      v45 = (v111 + 1);
      if (__OFADD__(v111, 1))
      {
        break;
      }

      v115 = [v113 anchor];
      if (v115)
      {
        v116 = v115;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          ARPlaneAnchor.classification.getter();
          v117 = v140;

          if ((*v139)(v112, v117) == v52)
          {

            (*v138)(v112, v117);
            v78 = v133;
            Date.init()();

            v118 = type metadata accessor for Date();
            (*(*(v118 - 8) + 56))(v78, 0, 1, v118);
            v119 = qword_1004A3900;
            v120 = v136;
            swift_beginAccess();
            v80 = v120 + v119;
            goto LABEL_117;
          }

          (*v138)(v112, v117);
        }

        else
        {
        }
      }

      else
      {
      }

      ++v111;
      if (v45 == v41)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v74 = _CocoaArrayWrapper.endIndex.getter();
    v75 = v136;
    if (v74 <= 1)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_122;
    }

LABEL_69:
    if (v129)
    {
      v76 = *(**(v75 + qword_1004A3840) + 144);

      v76(v143, v77);

      if (v145)
      {

        v78 = v133;
        Date.init()();

        v45(v78, 0, 1, v52);
        v79 = qword_1004A38F8;
        swift_beginAccess();
        v80 = v75 + v79;
LABEL_117:
        sub_10006CA08(v78, v80, &unk_1004A3D90);
        swift_endAccess();
        return 0;
      }

      v96 = v144;
      v97 = v133;
      v45(v133, 1, 1, v52);
      v98 = qword_1004A38F8;
      swift_beginAccess();
      sub_10006CA08(v97, v75 + v98, &unk_1004A3D90);
      swift_endAccess();
      v143[0] = v43;
      sub_1000A2570(0, v74, 0);
      v99 = 0;
      v100 = v143[0];
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v101 = *(v18 + 8 * v99 + 32);
        }

        v102 = v101;
        [v101 worldTransform];
        v142 = v103;
        v141 = v104;
        v140 = v105;
        v139 = v106;

        simd_float4x4.position.getter();
        v143[0] = v100;
        v109 = *(v100 + 2);
        v108 = *(v100 + 3);
        if (v109 >= v108 >> 1)
        {
          v142 = v107;
          sub_1000A2570((v108 > 1), v109 + 1, 1);
          v107 = v142;
          v100 = v143[0];
        }

        ++v99;
        *(v100 + 2) = v109 + 1;
        *&v100[16 * v109 + 32] = v107;
      }

      while (v74 != v99);

      v143[0] = v100;

      v110 = v138;
      sub_100054808(v143, v96);
      if (v110)
      {
        goto LABEL_132;
      }

      v63 = v143[0];
      if (!*(v143[0] + 2))
      {
        goto LABEL_96;
      }
    }

    else
    {
      v143[0] = v43;
      sub_1000A2570(0, v74, 0);
      v81 = 0;
      v82 = v143[0];
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v83 = *(v18 + 8 * v81 + 32);
        }

        v84 = v83;
        [v83 worldTransform];
        v142 = v85;
        v141 = v86;
        v140 = v87;
        v139 = v88;

        simd_float4x4.position.getter();
        v143[0] = v82;
        v91 = *(v82 + 2);
        v90 = *(v82 + 3);
        if (v91 >= v90 >> 1)
        {
          v142 = v89;
          sub_1000A2570((v90 > 1), v91 + 1, 1);
          v89 = v142;
          v82 = v143[0];
        }

        ++v81;
        *(v82 + 2) = v91 + 1;
        *&v82[16 * v91 + 32] = v89;
      }

      while (v74 != v81);

      v143[0] = v82;

      v92 = v138;
      sub_100054884(v143);
      if (v92)
      {
        goto LABEL_132;
      }

      v93 = 0;
      v63 = v143[0];
      v64 = *(v143[0] + 2);
      while (v64 != v93)
      {
        v94 = &v143[0][16 * v93++];
        if (fabsf(COERCE_FLOAT(vsubq_f32(v134, v94[32]).i32[1])) < 2.5)
        {
          v142 = v94[2];

          return v142.i64[0];
        }
      }

LABEL_85:
      if (!v64)
      {
LABEL_96:

        return 0;
      }
    }

    v95 = *(v63 + 4);

    return v95;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_102;
  }

LABEL_32:
  v138 = 0;

  a1 = _swiftEmptyArrayStorage;
LABEL_38:
  v52 = type metadata accessor for Date();
  v53 = *(v52 - 8);
  v45 = *(v53 + 56);
  v54 = v133;
  v135 = (v53 + 56);
  v45(v133, 1, 1, v52);
  v55 = qword_1004A3900;
  v56 = v136;
  swift_beginAccess();
  sub_10006CA08(v54, v56 + v55, &unk_1004A3D90);
  swift_endAccess();
  v143[0] = a1;
  if ((v50 & 0x8000000000000000) != 0 || v51)
  {
LABEL_100:
    v57 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v57 = *(v50 + 16);
  }

  v43 = _swiftEmptyArrayStorage;
  if (!v57)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_66;
  }

  *&v130 = v45;
  *&v131 = v52;
  v58 = 0;
  v45 = (v50 & 0xC000000000000001);
  *&v139 = v50 + 32;
  while (1)
  {
LABEL_44:
    if (v45)
    {
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v58 >= *(v50 + 16))
      {
        goto LABEL_99;
      }

      v59 = *(v139 + 8 * v58);
    }

    v60 = v59;
    if (__OFADD__(v58++, 1))
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *&v140 = [v59 anchor];
    if (v140)
    {
      break;
    }

LABEL_43:

    if (v58 == v57)
    {
      goto LABEL_64;
    }
  }

  LODWORD(v141) = 0;
  v62 = 0;
  while (2)
  {
    while (2)
    {
      if (v45)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v62 >= *(v50 + 16))
        {
          __break(1u);
          goto LABEL_98;
        }

        v63 = *(v50 + 8 * v62 + 32);
      }

      v65 = v63;
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_85;
      }

      v67 = [v63 anchor];
      if (!v67)
      {
LABEL_51:

        ++v62;
        if (v66 == v57)
        {
          goto LABEL_60;
        }

        continue;
      }

      break;
    }

    v52 = v67;
    [v60 worldTransform];
    simd_float4x4.position.getter();
    v142 = v68;
    [v65 worldTransform];
    simd_float4x4.position.getter();
    if (fabsf(COERCE_FLOAT(vsubq_f32(v142, v69).i32[1])) >= 0.5)
    {

      goto LABEL_51;
    }

    [v140 lastUpdateTimestamp];
    v71 = v70;
    [v52 lastUpdateTimestamp];
    v73 = v72;

    LODWORD(v141) = (v71 < v73) | v141;
    ++v62;
    if (v66 != v57)
    {
      continue;
    }

    break;
  }

LABEL_60:

  if (v141)
  {
    goto LABEL_43;
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  if (v58 != v57)
  {
    goto LABEL_44;
  }

LABEL_64:
  v18 = v143[0];
  v52 = v131;
  v45 = v130;
  v43 = _swiftEmptyArrayStorage;
LABEL_66:

  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    goto LABEL_120;
  }

  v74 = *(v18 + 16);
  v75 = v136;
  if (v74 > 1)
  {
    goto LABEL_69;
  }

LABEL_122:
  if (!v74)
  {

    return 0;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_126:
    v122 = v121;

    [v122 worldTransform];
    v142 = v123;
    v141 = v124;
    v140 = v125;
    v139 = v126;

    simd_float4x4.position.getter();
    return v127;
  }

  else
  {
    if (*(v18 + 16))
    {
      v121 = *(v18 + 32);
      goto LABEL_126;
    }

    __break(1u);
LABEL_132:

    __break(1u);
  }

  return result;
}