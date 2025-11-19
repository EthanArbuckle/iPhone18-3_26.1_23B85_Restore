unint64_t sub_1000FA274()
{
  result = qword_100217530;
  if (!qword_100217530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217530);
  }

  return result;
}

uint64_t sub_1000FA2C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000FA310()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000F4758(v5, qword_10021C8E0);

  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1000F9228(v2, v1, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Adding CALayer for ID: %s. Layer: %@", v9, 0x16u);
    sub_1000F454C(v10, &qword_100217528);

    sub_1000FA500(v11);
  }

  v13 = [v3 layer];
  [v13 addSublayer:v6];
}

uint64_t sub_1000FA500(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000FA54C()
{

  return _swift_deallocObject(v0, 201, 7);
}

id sub_1000FA58C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000F4758(v9, qword_10021C8E0);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Updating layer frame: %@", v13, 0xCu);
    sub_1000F454C(v14, &qword_100217528);
  }

  if (v3)
  {
    v16 = v3;
    v17 = [v16 CGColor];
    [v10 setBorderColor:v17];
  }

  [v10 setFrame:{v4, v5, v6, v7}];
  [v10 setHidden:v8];
  v18 = *(v1 + 152);
  v19 = *(v1 + 184);
  v30 = *(v1 + 168);
  v31 = v19;
  v32 = *(v1 + 200);
  v20 = *(v1 + 88);
  v21 = *(v1 + 120);
  v26 = *(v1 + 104);
  v27 = v21;
  v28 = *(v1 + 136);
  v29 = v18;
  v24 = *(v1 + 72);
  v25 = v20;
  result = sub_1000FB5A8(&v24);
  if (result != 1)
  {
    v23[4] = v28;
    v23[5] = v29;
    v23[6] = v30;
    v23[7] = v31;
    v23[0] = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v27;
    return [v10 setTransform:v23];
  }

  return result;
}

uint64_t sub_1000FA7F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000FA830()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000F4758(v4, qword_10021C8E0);

  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000F9228(v2, v1, &v13);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removing CALayer for ID: %s. Layer: %@", v8, 0x16u);
    sub_1000F454C(v9, &qword_100217528);

    sub_1000FA500(v10);
  }

  return [v5 removeFromSuperlayer];
}

unint64_t sub_1000FA9F8()
{
  result = qword_100217538;
  if (!qword_100217538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraInputSourceManager.CameraInputSourceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraInputSourceManager.CameraInputSourceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000FABE4(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1000FAC08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FAC28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1000FAC88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FACA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000FAD78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000FAE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F40B0(&qword_1002175E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000FAF2C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000F97D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000FAF9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000FAF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F40B0(&qword_1002175D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000FAF9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1000FAFDC()
{
  v1 = *(v0 + 16);
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C8E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Adding preview to scanner content view.", v5, 2u);
  }

  v6 = [objc_opt_self() sharedManager];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 mainDisplayManager];

  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = [v8 scannerContentView];

  [v9 addSubview:v1];
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Setting up preview constraints", v12, 2u);
  }

  [v1 ax_constrainLayoutAttribute:8 asEqualToConstant:160.0];
  [v1 ax_constrainLayoutAttribute:7 asEqualToConstant:120.0];
  v13 = v9;
  [v1 ax_constrainLayoutAttribute:2 asEqualToValueOfView:v13 withOffset:-5.0];
  [v1 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v13 withOffset:5.0];
}

void sub_1000FB244()
{
  v1 = *(v0 + 16);
  if (qword_100218DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C8E0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = (*((swift_isaMask & *v3) + 0x120))();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tearing down capture preview: %@", v6, 0xCu);
    sub_1000F454C(v7, &qword_100217528);
  }

  v9 = (*((swift_isaMask & *v3) + 0x120))();
  [v9 removeFromSuperview];

  v10 = OBJC_IVAR____TtC15assistivetouchd24CameraInputSourceManager_captureOutputPreview;
  swift_beginAccess();
  v11 = *(v3 + v10);
  *(v3 + v10) = 0;
}

unint64_t sub_1000FB45C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F40B0(&qword_100217618);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000F97D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000FB560(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000FB5A8(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FB5C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000FB624(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for HysteresisAngleRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HysteresisAngleRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HysteresisAngleRange(uint64_t result, int a2, int a3)
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

void sub_1000FB704(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000FB9B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000FBA20(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15assistivetouchd12FaceDetector_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1000FBAC0;
}

void sub_1000FBAC0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id AXPrefsBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000FBB7C()
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v19 - 8);
  __chkstk_darwin();
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  *(v0 + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC15assistivetouchd12FaceDetector_videoOutputQueue;
  v4 = sub_1000FB560(0, &unk_100217B00);
  v16[0] = "com.apple.Accessibility";
  v16[1] = v4;
  static DispatchQoS.userInitiated.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_1000FD34C(&qword_100217600, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F40B0(&qword_100217608);
  sub_1000FD678(&qword_100217610, &qword_100217608);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v18;
  *&v18[v17] = v5;
  v7 = [objc_allocWithZone(AVCaptureSession) init];
  *&v6[OBJC_IVAR____TtC15assistivetouchd12FaceDetector_cameraSession] = v7;
  sub_1000F40B0(&qword_1002175E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001BD7D0;
  *(v8 + 32) = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  *(v8 + 40) = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  type metadata accessor for DeviceType(0);
  v9 = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v10 = AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v11 = AVMediaTypeVideo;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v11 position:2];

  *&v6[OBJC_IVAR____TtC15assistivetouchd12FaceDetector_frontCameraDiscoverySession] = v13;
  v14 = type metadata accessor for FaceDetector();
  v20.receiver = v6;
  v20.super_class = v14;
  return objc_msgSendSuper2(&v20, "init");
}

void sub_1000FBF58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_frontCameraDiscoverySession) devices];
  sub_1000FB560(0, &unk_1002175F0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

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
      return;
    }

    v3 = *(v2 + 32);
  }

  v5 = v3;

  v4 = *(v0 + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_cameraSession);
  if (([v4 isRunning] & 1) == 0)
  {
    sub_1000FC190(v5);
    [v4 startRunning];
  }
}

id sub_1000FC12C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_cameraSession);
  result = [v1 isRunning];
  if (result)
  {

    return [v1 stopRunning];
  }

  return result;
}

void sub_1000FC190(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  __chkstk_darwin();
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_cameraSession);
  [v9 beginConfiguration];
  v10 = objc_allocWithZone(AVCaptureDeviceInput);
  aBlock[0] = 0;
  v11 = a1;
  v12 = [v10 initWithDevice:v11 error:aBlock];
  if (v12)
  {
    v13 = v12;
    v14 = aBlock[0];

    if ([v9 canAddInput:v13])
    {
      [v9 addInput:v13];
    }

    v25 = v5;
    v26 = v2;
    v15 = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
    [v15 setSampleBufferDelegate:v3 queue:*(v3 + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_videoOutputQueue)];
    if ([v9 canAddOutput:v15])
    {
      [v9 addOutput:v15];
    }

    [v9 commitConfiguration];
    sub_1000FB560(0, &unk_100217B00);
    v24 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v11;
    aBlock[4] = sub_1000FD5AC;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000F55D8;
    aBlock[3] = &unk_1001D83F0;
    v18 = _Block_copy(aBlock);
    v19 = v11;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000FD34C(&qword_100217778, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F40B0(&unk_100217B10);
    sub_1000FD678(&qword_100217780, &unk_100217B10);
    v20 = v28;
    v21 = v25;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v30 + 8))(v20, v21);
    (*(v27 + 8))(v8, v29);
  }

  else
  {
    v23 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000FC618(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *((swift_isaMask & *v2) + 0x70);
    v5 = swift_errorRetain();
    if (v4(v5))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(a2, ObjectType, v7);
      swift_unknownObjectRelease();
    }

LABEL_19:
  }

  v9 = [a1 results];
  if (!v9 || (v10 = v9, sub_1000FB560(0, &qword_100217750), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v12 = sub_1000FC8CC(v11), v9 = , !v12))
  {
LABEL_17:
    result = (*((swift_isaMask & *v2) + 0x70))(v9);
    if (!result)
    {
      return result;
    }

    v22 = v21;
    v23 = swift_getObjectType();
    sub_1000FD394();
    v24 = swift_allocError();
    (*(v22 + 16))(v24, v23, v22);
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_16:

    goto LABEL_17;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = v15;
  v17 = sub_10011EDE0(v16, v25);
  if ((*((swift_isaMask & *v2) + 0x70))(v17))
  {
    v19 = v18;
    v20 = swift_getObjectType();
    (*(v19 + 8))(v25, v20, v19);
    swift_unknownObjectRelease();
  }

  return sub_1000FD3E8(v25);
}

void *sub_1000FC8CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return &_swiftEmptyArrayStorage;
}

id sub_1000FCA34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceDetector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000FCB8C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1000FCC18(uint64_t a1)
{
  v2 = sub_1000FD34C(&qword_100217758, type metadata accessor for VNImageOption);
  v3 = sub_1000FD34C(&qword_1002177A8, type metadata accessor for VNImageOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_1000FCCD4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000FCD68(a1, v2);
}

unint64_t sub_1000FCD68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000FCE6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F40B0(&qword_100217768);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000FD4C4(v4, &v11);
      v5 = v11;
      result = sub_1000FCCD4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000FAF9C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000FCF74(opaqueCMSampleBuffer *a1)
{
  v2 = CMSampleBufferGetImageBuffer(a1);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [objc_opt_self() sharedManager];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v4 currentDisplayManager];

  if (!v6)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v7 = [v6 orientation];

  if (v7 - 1 >= 4)
  {
    v8 = 1;
  }

  else
  {
    v8 = dword_1001BDE60[v7 - 1];
  }

  sub_1000FCE6C(&_swiftEmptyArrayStorage);
  v9 = objc_allocWithZone(VNImageRequestHandler);
  type metadata accessor for VNImageOption(0);
  sub_1000FD34C(&qword_100217758, type metadata accessor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithCVPixelBuffer:v3 orientation:v8 options:isa];

  v12 = swift_allocObject();
  v12[2] = v1;
  v13 = objc_allocWithZone(VNDetectFaceRectanglesRequest);
  aBlock[4] = sub_1000FD488;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000FCB8C;
  aBlock[3] = &unk_1001D8378;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  v16 = [v13 initWithCompletionHandler:v14];
  _Block_release(v14);
  v17 = v16;
  [v17 setRevision:3];
  sub_1000F40B0(&qword_100217B50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001BDE50;
  *(v18 + 32) = v17;
  sub_1000FB560(0, &qword_100217760);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  v20 = [v11 performRequests:v19 error:aBlock];

  if (v20)
  {
    v21 = aBlock[0];
  }

  else
  {
    v22 = aBlock[0];
    v23 = _convertNSErrorToError(_:)();

    v24 = swift_willThrow();
    if ((*((swift_isaMask & *v15) + 0x70))(v24))
    {
      v26 = v25;
      ObjectType = swift_getObjectType();
      (*(v26 + 16))(v23, ObjectType, v26);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000FD34C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000FD394()
{
  result = qword_100217748;
  if (!qword_100217748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217748);
  }

  return result;
}

uint64_t sub_1000FD450()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FD4AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FD4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F40B0(&qword_100217770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FD534()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FD56C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000FD5AC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((swift_isaMask & *Strong) + 0x70))();
    v6 = v5;

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(v1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000FD678(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F41DC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GlassBackgroundHostingController()
{
  result = qword_100219D80;
  if (!qword_100219D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD840(void *a1)
{
  v2 = a1;
  Path.init(_:)();
  v7[0] = v4;
  v7[1] = v5;
  v8 = v6;
  return (*((swift_isaMask & *v1) + 0x68))(v7);
}

double sub_1000FD968@<D0>(uint64_t a1@<X8>)
{
  dispatch thunk of UIHostingController.rootView.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000FD9B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = *a1;
  v12 = *(a1 + 16);
  sub_1000FDF10(a1, v13);
  v3 = dispatch thunk of UIHostingController.rootView.modify();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *v4 = v11;
  *(v4 + 16) = v12;
  v9 = *(v4 + 32);
  *(v4 + 32) = v2;
  sub_1000FDF80(v5, v6, v7, v8, v9);
  v3(v13, 0);
  return sub_1000FDFAC(a1);
}

void (*sub_1000FDA50(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = *(v1 + OBJC_IVAR____AXGlassBackgroundView_glassBackgroundHostingController);
  dispatch thunk of UIHostingController.rootView.getter();
  v5 = *(v4 + 72);
  v6 = *(v4 + 56);
  *v4 = *(v4 + 40);
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  return sub_1000FDAE8;
}

void sub_1000FDAE8(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 5);
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = *(*a1 + 32);
  sub_1000FE014(v5, v6, v7, v8, v9);
  if (a2)
  {
    sub_1000FE014(v5, v6, v7, v8, v9);
    v10 = dispatch thunk of UIHostingController.rootView.modify();
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    v16 = *(v11 + 32);
    *(v11 + 32) = v9;
    sub_1000FDF80(v12, v13, v14, v15, v16);
    v10(v4, 0);
    sub_1000FDF80(v5, v6, v7, v8, v9);
    v17 = *v3;
    v18 = v3[1];
    v19 = v3[2];
    v20 = v3[3];
    v21 = *(v3 + 32);
  }

  else
  {
    v22 = dispatch thunk of UIHostingController.rootView.modify();
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    *v23 = v5;
    *(v23 + 8) = v6;
    *(v23 + 16) = v7;
    *(v23 + 24) = v8;
    v28 = *(v23 + 32);
    *(v23 + 32) = v9;
    sub_1000FDF80(v24, v25, v26, v27, v28);
    v22(v4, 0);
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
  }

  sub_1000FDF80(v17, v18, v19, v20, v21);

  free(v3);
}

char *sub_1000FDC48(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____AXGlassBackgroundView_glassBackgroundHostingController;
  v10 = objc_allocWithZone(type metadata accessor for GlassBackgroundHostingController());
  memset(&v21[1], 0, 32);
  v22 = -1;
  *&v4[v9] = UIHostingController.init(rootView:)();
  v21[0].receiver = v4;
  v21[0].super_class = type metadata accessor for GlassBackgroundView();
  v11 = [(objc_super *)v21 initWithFrame:a1, a2, a3, a4];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = OBJC_IVAR____AXGlassBackgroundView_glassBackgroundHostingController;
  result = [*&v13[OBJC_IVAR____AXGlassBackgroundView_glassBackgroundHostingController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = result;
  v18 = [v12 clearColor];
  [v17 setBackgroundColor:v18];

  result = [*&v13[v15] view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  [v13 addSubview:result];

  result = [*&v13[v15] view];
  if (result)
  {
    v20 = result;
    [result setAutoresizingMask:18];

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000FDF10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F40B0(&qword_1002177B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FDF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_1000FDF94(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1000FDF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1000FDFAC(uint64_t a1)
{
  v2 = sub_1000F40B0(&qword_1002177B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FE014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_1000FE028(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1000FE028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

id sub_1000FE0C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_1000FE158@<Q0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 32);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  if (v5 == 255)
  {
    v10 = v4;
    v12 = v3;
    Path.init()();
    v4 = v10;
    v3 = v12;
    v8 = v15;
    v7 = v14;
    v6 = v16;
  }

  v11 = v8;
  v13 = v7;
  sub_1000FE014(v4, *(&v4 + 1), v3, *(&v3 + 1), v5);
  result = v13;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_1000FE208(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_1000FE290;
}

void sub_1000FE290(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000FE2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FE478();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000FE340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FE478();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000FE3A4(uint64_t a1)
{
  v2 = sub_1000FE478();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_1000FE478()
{
  result = qword_1002177C0;
  if (!qword_1002177C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002177C0);
  }

  return result;
}

unint64_t sub_1000FE4D0()
{
  result = qword_1002177C8;
  if (!qword_1002177C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002177C8);
  }

  return result;
}

unint64_t sub_1000FE528()
{
  result = qword_1002177D0;
  if (!qword_1002177D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002177D0);
  }

  return result;
}

unint64_t sub_1000FE580()
{
  result = qword_1002177D8;
  if (!qword_1002177D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002177D8);
  }

  return result;
}

unint64_t sub_1000FE5D8()
{
  result = qword_1002177E0;
  if (!qword_1002177E0)
  {
    sub_1000F41DC(&qword_1002177E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002177E0);
  }

  return result;
}

uint64_t sub_1000FE6A0(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1000FE6BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000FE6D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000FE6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1000FE748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

void *sub_1000FE80C()
{
  v1 = OBJC_IVAR___HNDSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000FE858(uint64_t a1)
{
  v3 = OBJC_IVAR___HNDSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000FE910()
{
  v1 = OBJC_IVAR___HNDSceneDelegate_ignoredWindow;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000FE95C(uint64_t a1)
{
  v3 = OBJC_IVAR___HNDSceneDelegate_ignoredWindow;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000FEA14()
{
  v1 = OBJC_IVAR___HNDSceneDelegate_trackpadWindow;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000FEA60(uint64_t a1)
{
  v3 = OBJC_IVAR___HNDSceneDelegate_trackpadWindow;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1000FEBAC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedManager];
  if (v2)
  {
    v3 = v2;
    [v2 sceneDidDisconnect:a1];
  }

  else
  {
    __break(1u);
  }
}

id sub_1000FED14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000FEDA4(void *a1)
{
  v2 = v1;
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    static os_log_type_t.error.getter();
    v14 = ASTLogCommon();
    if (v14)
    {
      v15 = v14;
      sub_1000F40B0(&qword_100217900);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001BD7E0;
      *(v16 + 56) = sub_1000FB560(0, &qword_100217908);
      *(v16 + 64) = sub_1000FF624();
      *(v16 + 32) = a1;
      v17 = a1;
      os_log(_:dso:log:_:_:)();

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_50;
  }

  v5 = v4;
  sub_1000FB560(0, &qword_100217918);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = a1;
  if ([ObjCClassFromMetadata usesScenes])
  {
    v7 = [v5 screen];
    v8 = [v7 displayIdentity];

    if (v8)
    {
      v9 = [v8 type];

      if (v9 != 8)
      {
        v18 = [objc_allocWithZone(HNDIgnoredWindow) initWithWindowScene:v5];
        v19 = (*((swift_isaMask & *v2) + 0x88))(v18);
        v20 = *((swift_isaMask & *v2) + 0x80);
        v21 = (v20)(v19);
        if (v21)
        {
          v22 = v21;
          [v21 setWindowLevel:10000011.0];
        }

        v23 = v20();
        if (v23)
        {
          v24 = v23;
          [v23 setHidden:0];
        }

        v25 = v20();
        if (v25)
        {
          v26 = v25;
          v27 = [objc_allocWithZone(HNDBlankRootViewController) init];
          [v26 setRootViewController:v27];
        }

        v28 = v20();
        if (v28)
        {
          v29 = v28;
          UIView.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIView.traitOverrides.setter();
        }

        v30 = [objc_allocWithZone(HNDWindow) initWithWindowScene:v5];
        v31 = (*((swift_isaMask & *v2) + 0xA0))(v30);
        v32 = *((swift_isaMask & *v2) + 0x98);
        v33 = (v32)(v31);
        if (v33)
        {
          v34 = v33;
          [v33 setHidden:1];
        }

        v35 = v32();
        if (v35)
        {
          v36 = v35;
          [v35 setWindowLevel:10000010.0];
        }

        v37 = v32();
        if (v37)
        {
          v38 = v37;
          v39 = [objc_allocWithZone(HNDBlankRootViewController) init];
          [v38 setRootViewController:v39];
        }

        v40 = v32();
        if (v40)
        {
          v41 = v40;
          UIView.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIView.traitOverrides.setter();
        }

        v42 = [objc_allocWithZone(HNDWindow) initWithWindowScene:v5];
        v43 = (*((swift_isaMask & *v2) + 0x70))(v42);
        v44 = *((swift_isaMask & *v2) + 0x68);
        v45 = (v44)(v43);
        if (v45)
        {
          v46 = v45;
          [v45 setHidden:0];
        }

        v47 = v44();
        if (v47)
        {
          v48 = v47;
          [v47 setWindowLevel:10000010.0];
        }

        v49 = v44();
        if (v49)
        {
          v50 = v49;
          v51 = [objc_allocWithZone(HNDBlankRootViewController) init];
          [v50 setRootViewController:v51];
        }

        v52 = v44();
        if (v52)
        {
          v53 = v52;
          UIView.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIView.traitOverrides.setter();
        }

        v54 = v44();
        if (v54)
        {
          v55 = v54;
          v56 = v20();
          if (v56)
          {
            v57 = v56;
            v58 = v32();
            if (v58)
            {
              v59 = v58;
              v60 = objc_opt_self();
              v61 = [v60 sharedManager];
              if (v61)
              {
                v62 = v61;
                [v61 setupWindow:v55 ignoredWindow:v57 trackpadWindow:v59];

                v63 = [v60 sharedManager];
                if (v63)
                {
                  v64 = v63;
                  [v63 sceneDidConnect:v65];

                  return;
                }

                goto LABEL_53;
              }

LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              return;
            }
          }

          else
          {
          }
        }

        return;
      }

      static os_log_type_t.info.getter();
      v10 = ASTLogCommon();
      if (v10)
      {
        v11 = v10;
        sub_1000F40B0(&qword_100217900);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1001BD7E0;
        *(v12 + 56) = sub_1000FB560(0, &qword_100217908);
        *(v12 + 64) = sub_1000FF624();
        *(v12 + 32) = v65;
        v13 = v65;
        os_log(_:dso:log:_:_:)();

LABEL_9:

        return;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }
}

unint64_t sub_1000FF624()
{
  result = qword_100217910;
  if (!qword_100217910)
  {
    sub_1000FB560(255, &qword_100217908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217910);
  }

  return result;
}

unint64_t sub_1000FF68C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000FF8EC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

Swift::Int sub_1000FF6D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000FF750()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000FF794@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000FF974(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t *sub_1000FF81C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *sub_1000FF844@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Int sub_1000FF860()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000FF8A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000FF8EC(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      v1 = 0;
      return v2 | (v1 << 32);
    }

    if (a1 == 1)
    {
      v1 = 0;
      v2 = 1;
      return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 == 4)
  {
    v1 = 0;
    v2 = 4;
    return v2 | (v1 << 32);
  }

  if (a1 == 3)
  {
    v1 = 0;
    v2 = 3;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

unint64_t sub_1000FF974(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 4)
    {
      v1 = 0;
      v2 = 4;
      return v2 | (v1 << 32);
    }

    if (a1 == 2)
    {
      v1 = 0;
      v2 = 2;
      return v2 | (v1 << 32);
    }

LABEL_8:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v2 | (v1 << 32);
}

unint64_t sub_1000FF9EC()
{
  result = qword_100217980;
  if (!qword_100217980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217980);
  }

  return result;
}

unint64_t sub_1000FFA44()
{
  result = qword_100217988;
  if (!qword_100217988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217988);
  }

  return result;
}

unint64_t sub_1000FFA9C()
{
  result = qword_100217990;
  if (!qword_100217990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217990);
  }

  return result;
}

unint64_t sub_1000FFAF4()
{
  result = qword_100217998;
  if (!qword_100217998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217998);
  }

  return result;
}

unint64_t sub_1000FFB4C()
{
  result = qword_1002179A0;
  if (!qword_1002179A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002179A0);
  }

  return result;
}

unint64_t sub_1000FFBA4()
{
  result = qword_1002179A8;
  if (!qword_1002179A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002179A8);
  }

  return result;
}

unint64_t sub_1000FFBFC()
{
  result = qword_1002179B0;
  if (!qword_1002179B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002179B0);
  }

  return result;
}

unint64_t sub_1000FFC54()
{
  result = qword_1002179B8;
  if (!qword_1002179B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002179B8);
  }

  return result;
}

id sub_1000FFD8C()
{
  v1 = type metadata accessor for AccessibilityActionClient();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  type metadata accessor for AccessibilityActionSender();
  v5 = enum case for AccessibilityActionClient.assistiveTouch(_:);
  v6 = *(v2 + 104);
  v6(v4, enum case for AccessibilityActionClient.assistiveTouch(_:), v1);
  v0[14] = AccessibilityActionSender.__allocating_init(client:)();
  type metadata accessor for AccessibilityActionReceiver();
  v6(v4, v5, v1);
  sub_1000F40B0(&qword_1002179C0);
  v7 = type metadata accessor for AccessibilityAction.Domain();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001BD7E0;
  (*(v8 + 104))(v10 + v9, enum case for AccessibilityAction.Domain.device(_:), v7);
  v0[15] = AccessibilityActionReceiver.__allocating_init(client:domains:)();
  v11 = type metadata accessor for SwitchControlActionHandler();
  v16.receiver = v0;
  v16.super_class = v11;
  v12 = objc_msgSendSuper2(&v16, "init");
  sub_100102988(&qword_1002179C8, v13, type metadata accessor for SwitchControlActionHandler);
  v14 = v12;

  dispatch thunk of AccessibilityActionReceiver.handler.setter();

  return v14;
}

uint64_t sub_100100048()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100100094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SwitchControlActionHandler();

  return AccessibilityActionHandler.shouldFilterAction(_:)(a1, v5, a3);
}

uint64_t sub_1001000E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SwitchControlActionHandler();

  return AccessibilityActionHandler.shouldRepostAction(_:)(a1, v5, a3);
}

uint64_t sub_10010012C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SwitchControlActionHandler();

  return AccessibilityDeviceActionHandler.deviceState.getter(v3, a2);
}

uint64_t sub_100100174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SwitchControlActionHandler();
  *v10 = v5;
  v10[1] = sub_100100240;

  return AccessibilityDeviceActionHandler.handleAction(_:isDown:)(a1, a2, a3, v11, a5);
}

uint64_t sub_100100240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100100334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SwitchControlActionHandler();
  *v10 = v5;
  v10[1] = sub_100102FFC;

  return AccessibilityDeviceActionHandler.performAction(_:isDown:)(a1, a2, a3, v11, a5);
}

uint64_t sub_100100400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010049C, v6, v5);
}

uint64_t sub_10010049C()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleActionButton()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001005B4, v6, v5);
}

uint64_t sub_1001005B4()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleCameraButtonDoubleLightPress()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001006CC, v6, v5);
}

uint64_t sub_1001006CC()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleCameraButtonLightPress()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001007E4, v6, v5);
}

uint64_t sub_1001007E4()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleCameraButtonPress()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100860(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = v4;
  *(v5 + 32) = a4;
  *(v5 + 48) = a2;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100900, v7, v6);
}

uint64_t sub_100100900()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleCrownPress(isDown:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100A24, v6, v5);
}

uint64_t sub_100100A24()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleCrownTurnClockwise()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100B3C, v6, v5);
}

uint64_t sub_100100B3C()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleCrownTurnCounterClockwise()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100BB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = v4;
  *(v5 + 32) = a4;
  *(v5 + 48) = a2;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100C58, v7, v6);
}

uint64_t sub_100100C58()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleHomeButton(isDown:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100CE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = v4;
  *(v5 + 32) = a4;
  *(v5 + 48) = a2;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100D80, v7, v6);
}

uint64_t sub_100100D80()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleLockButton(isDown:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100EA4, v6, v5);
}

uint64_t sub_100100EA4()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleScreenshot()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100100FBC, v6, v5);
}

uint64_t sub_100100FBC()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleShake()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100101038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001010D4, v6, v5);
}

uint64_t sub_1001010D4()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleTorch()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100101150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001011EC, v6, v5);
}

uint64_t sub_1001011EC()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleTripleClick()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100101268(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = v4;
  *(v5 + 32) = a4;
  *(v5 + 48) = a2;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100101308, v7, v6);
}

uint64_t sub_100101308()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleVolumeDown(isDown:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100101390(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = v4;
  *(v5 + 32) = a4;
  *(v5 + 48) = a2;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100101430, v7, v6);
}

uint64_t sub_100101430()
{

  type metadata accessor for SwitchControlActionHandler();
  AccessibilityDeviceActionHandler.handleVolumeUp(isDown:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001014B8@<X0>(uint64_t a1@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v2;
  if (v3 == 0x6572506E776F7243 && v2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v5 = &enum case for AccessibilityDeviceAction.crownPress(_:);
LABEL_5:
    v6 = *v5;
    v7 = type metadata accessor for AccessibilityDeviceAction();
    (*(*(v7 - 8) + 104))(a1, v6, v7);
    v8 = enum case for AccessibilityAction.device(_:);
    v9 = type metadata accessor for AccessibilityAction();
    v17 = *(v9 - 8);
    (*(v17 + 104))(a1, v8, v9);
    v10 = *(v17 + 56);
    v11 = a1;
    v12 = 0;
    v13 = v9;
    goto LABEL_6;
  }

  if (v3 == 0xD000000000000012 && 0x8000000100178100 == v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v5 = &enum case for AccessibilityDeviceAction.crownTurnClockwise(_:);
    goto LABEL_5;
  }

  if (v3 == 0xD000000000000019 && 0x8000000100178120 == v4)
  {

LABEL_17:
    v5 = &enum case for AccessibilityDeviceAction.crownTurnCounterClockwise(_:);
    goto LABEL_5;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_17;
  }

  v16 = type metadata accessor for AccessibilityAction();
  v10 = *(*(v16 - 8) + 56);
  v13 = v16;
  v11 = a1;
  v12 = 1;
LABEL_6:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_100101710(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  sub_1000F40B0(&qword_100217A40);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = a1;
  (*(v5 + 32))(&v11[v10], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v12 = a1;
  sub_100101BFC(0, 0, v8, &unk_1001BEC40, v11);
}

uint64_t sub_1001018EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000F40B0(&qword_100217A48);
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_100101988, 0, 0);
}

void *sub_100101988()
{
  result = [*(v0 + 16) actionHandler];
  if (result)
  {
    v2 = *(v0 + 32);
    *(v0 + 40) = result[14];

    v3 = type metadata accessor for AccessibilityActionClient();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v7 = (&async function pointer to dispatch thunk of AccessibilityActionSender.sendAction(_:to:) + async function pointer to dispatch thunk of AccessibilityActionSender.sendAction(_:to:));
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    v4[1] = sub_100101AB8;
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);

    return v7(v6, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100101AB8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1000F454C(v1, &qword_100217A48);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100101BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000F40B0(&qword_100217A40);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100102DDC(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000F454C(v10, &qword_100217A40);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000F454C(a3, &qword_100217A40);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000F454C(a3, &qword_100217A40);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_100101F7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100101FE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_10010203C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100102134;

  return v6(a1);
}

uint64_t sub_100102134()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_10010222C(uint64_t a1, uint64_t a2)
{
  sub_1000F40B0(&qword_100217A18);
  (__chkstk_darwin)();
  v4 = (v36 - v3);
  v5 = type metadata accessor for AccessibilityAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v9 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v36 - v10;
  sub_1001014B8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v12 = &qword_100217A18;
    v13 = v4;
LABEL_8:
    sub_1000F454C(v13, v12);
    return 0;
  }

  v14 = *(v6 + 32);
  v14(v11, v4, v5);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  AccessibilityAction.resolve(with:)();
  sub_1000F454C(&v46, &qword_100217A20);
  sub_1000F40B0(&qword_100217A28);
  sub_1000F40B0(&qword_100217A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v6 + 8))(v11, v5);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v12 = &unk_100217A38;
    v13 = &v46;
    goto LABEL_8;
  }

  sub_1001029D0(&v46, v49);
  sub_1001029E8(v49, v50);
  v36[4] = dispatch thunk of AccessibilityResolvedAction.identifier.getter();
  v36[3] = v15;
  sub_1001029E8(v49, v50);
  v36[2] = AccessibilityResolvedAction.name.getter();
  v36[1] = v16;
  v40 = a2;
  v17 = v50;
  v18 = v51;
  sub_1001029E8(v49, v50);
  v39 = (*(v18 + 16))(v17, v18);
  v19 = v50;
  v20 = v51;
  sub_1001029E8(v49, v50);
  v38 = (*(v20 + 24))(v19, v20);
  v21 = v50;
  v22 = v51;
  sub_1001029E8(v49, v50);
  v37 = (*(v22 + 32))(v21, v22);
  (*(v6 + 16))(v9, v11, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14((v24 + v23), v9, v5);
  sub_100102B24(v49, &aBlock);
  v25 = swift_allocObject();
  sub_1001029D0(&aBlock, v25 + 16);
  v26 = objc_allocWithZone(SCATModernMenuItem);
  v27 = String._bridgeToObjectiveC()();

  v28 = String._bridgeToObjectiveC()();

  v44 = sub_100102AB4;
  v45 = v24;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v42 = sub_100101F7C;
  v43 = &unk_1001D8720;
  v29 = _Block_copy(&aBlock);

  v44 = sub_100102BC0;
  v45 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v42 = sub_100101FE4;
  v43 = &unk_1001D8748;
  v30 = _Block_copy(&aBlock);

  LOBYTE(v35) = v37 & 1;
  v31 = [v26 initWithIdentifier:v27 delegate:v40 title:v28 imageName:0 activateBehavior:v39 allowedWithGuidedAccess:v38 & 1 allowedWithAssistiveAccess:v35 activateHandler:v29 updateHandler:v30];
  _Block_release(v30);
  _Block_release(v29);

  sub_1001029E8(v49, v50);
  dispatch thunk of AccessibilityResolvedAction.systemImageName.getter();
  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();

    [v31 setImageName:v33];
  }

  (*(v6 + 8))(v11, v5);
  sub_1000FA500(v49);
  return v31;
}

uint64_t sub_100102874(uint64_t a1)
{
  result = sub_100102988(&qword_1002179D8, 255, &type metadata accessor for AccessibilityDeviceAction.CrownPressButton);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001028D0(uint64_t a1)
{
  result = sub_100102988(&qword_1002179E0, 255, &type metadata accessor for AccessibilityDeviceAction.CrownTurnClockwise);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10010292C(uint64_t a1)
{
  result = sub_100102988(&qword_1002179E8, 255, &type metadata accessor for AccessibilityDeviceAction.CrownTurnCounterClockwise);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102988(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001029D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1001029E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100102A2C()
{
  v1 = type metadata accessor for AccessibilityAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100102AB4(void *a1)
{
  v3 = *(type metadata accessor for AccessibilityAction() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100101710(a1, v4);
}

uint64_t sub_100102B24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100102B88()
{
  sub_1000FA500(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100102BC0(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_1001029E8(v1 + 2, v3);
  return (*(v4 + 40))(a1, v3, v4) & 1;
}

uint64_t sub_100102C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100102C38()
{
  v1 = type metadata accessor for AccessibilityAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100102D04()
{
  v2 = *(type metadata accessor for AccessibilityAction() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100100240;

  return sub_1001018EC(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_100102DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F40B0(&qword_100217A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102E4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100102E84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100102FFC;

  return sub_10010203C(a1, v4);
}

uint64_t sub_100102F3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100100240;

  return sub_10010203C(a1, v4);
}

uint64_t sub_100103050()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001030B0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100103148;
}

void sub_100103148(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1001031C8()
{
  v1 = (v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100103224(*v1);
  return v2;
}

uint64_t sub_100103224(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100103234(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_100103294(v6);
}

uint64_t sub_100103294(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_100103338()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_completionHandler];
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceValidator;
  type metadata accessor for FaceAlignmentValidator();
  *&v0[v2] = sub_100112694();
  v3 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector;
  type metadata accessor for FaceDetector();
  *&v0[v3] = AXPrefsBridge.__allocating_init()();
  v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_isFaceAlignmentComplete] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_labelSpacing] = 0x4040000000000000;
  v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceAlignmentDidTimeout] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_guidanceLabelBottomAnchorConstraint] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_debugLabelTopAnchorConstraint] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_cameraWindowWidthConstraint] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_debugFaceBoundingBoxLayer] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_rotationCoordinator] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewAngleObservation] = 0;
  v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_currentFaceGuidanceState] = 11;
  v4 = &v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayerPosition];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___maskView] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel] = 0;
  *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___debugAttitudeLabel] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FaceGuidanceViewController();
  v5 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  v6 = *&v5[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector];
  v7 = *((swift_isaMask & *v6) + 0x78);
  v8 = v5;
  v9 = v6;
  v7(v5, &off_1001D8860);

  swift_unknownObjectRelease();
  return v8;
}

void sub_1001035C0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FaceGuidanceViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapScreen"];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 addGestureRecognizer:v1];

    sub_100103EEC();
    sub_1001043AC();
    sub_100104520();
    sub_100104984();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001036C4()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FaceGuidanceViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer];
  if (v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayerPosition + 16])
  {
    if (v1)
    {
      v2 = v1;
      v3 = sub_100103A04();
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      [v2 setFrame:{v5, v7, v9, v11}];
      sub_100104D10();
      return;
    }

    __break(1u);
  }

  else if (v1)
  {
    [v1 setPosition:{*&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayerPosition], *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayerPosition + 8]}];
    return;
  }

  __break(1u);
}

id sub_10010396C()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView;
  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CalibrationContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100103A04()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView;
  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100103A8C()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___maskView;
  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___maskView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___maskView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100103B50()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView;
  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [objc_opt_self() whiteColor];
    [v4 setBackgroundColor:v5];

    v6 = [v4 layer];
    [v6 setCornerRadius:25.0];

    [v4 setClipsToBounds:1];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100103C58()
{
  v1 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setTextAlignment:1];
    v5 = objc_opt_self();
    v6 = [v5 whiteColor];
    [v4 setTextColor:v6];

    LODWORD(v6) = AXDeviceIsPad();
    v7 = objc_opt_self();
    v8 = &UIFontTextStyleTitle1;
    if (v6)
    {
      v8 = &UIFontTextStyleLargeTitle;
    }

    v9 = [v7 preferredFontForTextStyle:*v8];
    [v4 setFont:v9];

    v10 = [v4 layer];
    v11 = [v5 blackColor];
    v12 = [v11 CGColor];

    [v10 setShadowColor:v12];
    v13 = [v4 layer];
    [v13 setShadowOffset:{0.0, 0.0}];

    v14 = [v4 layer];
    [v14 setShadowRadius:10.0];

    v15 = [v4 layer];
    LODWORD(v16) = 1.0;
    [v15 setShadowOpacity:v16];

    [v4 setNumberOfLines:3];
    [v4 setAdjustsFontSizeToFitWidth:1];
    [v4 setMinimumScaleFactor:0.01];
    v17 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

void sub_100103EEC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_10010396C();
  [v2 addSubview:v3];

  v4 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView;
  v5 = *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView];
  v6 = sub_100103A04();
  [v5 addSubview:v6];

  sub_1000F40B0(&qword_100217B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001BEC70;
  v8 = [*&v0[v4] leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v7 + 32) = v12;
  v13 = [*&v0[v4] trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v7 + 40) = v17;
  v18 = [*&v0[v4] topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v7 + 48) = v22;
  v23 = [*&v0[v4] bottomAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v25 = v24;
  v41 = objc_opt_self();
  v26 = [v25 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v7 + 56) = v27;
  v28 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView;
  v29 = [*&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView] leadingAnchor];
  v30 = [*&v0[v4] leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v7 + 64) = v31;
  v32 = [*&v0[v28] trailingAnchor];
  v33 = [*&v0[v4] trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v7 + 72) = v34;
  v35 = [*&v0[v28] topAnchor];
  v36 = [*&v0[v4] topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v7 + 80) = v37;
  v38 = [*&v0[v28] bottomAnchor];
  v39 = [*&v0[v4] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v7 + 88) = v40;
  sub_1000FB560(0, &qword_100217B58);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];
}

void sub_1001043AC()
{
  v1 = [objc_allocWithZone(AVCaptureVideoPreviewLayer) initWithSession:*(*(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector) + OBJC_IVAR____TtC15assistivetouchd12FaceDetector_cameraSession)];
  v2 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer;
  v3 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer);
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer) = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v4 setVideoGravity:AVLayerVideoGravityResizeAspectFill];

  v5 = sub_100103A04();
  v6 = [v5 layer];

  if (!*(v0 + v2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v6 addSublayer:?];

  v7 = *(v0 + v2);
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = [v7 connection];
  if (v8)
  {
    v9 = v8;
    if ([v8 isVideoMirroringSupported])
    {
      [v9 setAutomaticallyAdjustsVideoMirroring:0];
      [v9 setVideoMirrored:1];
    }
  }
}

void sub_100104520()
{
  v1 = sub_100103A8C();
  v2 = sub_100103B50();
  [v1 addSubview:v2];

  v3 = sub_100103A04();
  v4 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___maskView;
  [v3 addSubview:*(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___maskView)];

  v5 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView;
  [*(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView) setMaskView:*(v0 + v4)];
  v6 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView;
  v7 = [*(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView) widthAnchor];
  IsPad = AXDeviceIsPad();
  v9 = 300.0;
  if (IsPad)
  {
    v9 = 512.0;
  }

  v10 = [v7 constraintEqualToConstant:v9];

  v11 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_cameraWindowWidthConstraint;
  v12 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_cameraWindowWidthConstraint);
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_cameraWindowWidthConstraint) = v10;

  sub_1000F40B0(&qword_100217B50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001BEC70;
  v14 = [*(v0 + v4) leadingAnchor];
  v15 = [*(v0 + v5) leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v13 + 32) = v16;
  v17 = [*(v0 + v4) trailingAnchor];
  v18 = [*(v0 + v5) trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v13 + 40) = v19;
  v20 = [*(v0 + v4) topAnchor];
  v21 = [*(v0 + v5) topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v13 + 48) = v22;
  v23 = [*(v0 + v4) bottomAnchor];
  v24 = [*(v0 + v5) bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v13 + 56) = v25;
  v26 = [*(v0 + v6) centerXAnchor];
  v27 = [*(v0 + v4) centerXAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v13 + 64) = v28;
  v29 = [*(v0 + v6) centerYAnchor];
  v30 = [*(v0 + v4) centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v13 + 72) = v31;
  v32 = *(v0 + v11);
  if (v32)
  {
    v33 = objc_opt_self();
    *(v13 + 80) = v32;
    v34 = *(v0 + v6);
    v35 = v32;
    v36 = [v34 heightAnchor];
    v37 = [*(v0 + v6) widthAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v13 + 88) = v38;
    sub_1000FB560(0, &qword_100217B58);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 activateConstraints:isa];

    v40 = *(v0 + v5);

    [v40 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_100104984()
{
  v1 = sub_10010396C();
  v2 = sub_100103C58();
  [v1 addSubview:v2];

  v3 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel;
  v4 = [*(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel) bottomAnchor];
  v5 = sub_100103B50();
  v6 = [v5 topAnchor];

  v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 constant:-32.0];
  v8 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_guidanceLabelBottomAnchorConstraint;
  v9 = *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_guidanceLabelBottomAnchorConstraint);
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_guidanceLabelBottomAnchorConstraint) = v7;

  v10 = [*(v0 + v3) topAnchor];
  v11 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView;
  v12 = [*(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView) safeAreaLayoutGuide];
  v13 = [v12 topAnchor];

  v14 = [v10 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];
  LODWORD(v15) = 1148829696;
  [v14 setPriority:v15];
  sub_1000F40B0(&qword_100217B50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001BEC80;
  v17 = [*(v0 + v3) leadingAnchor];
  v18 = [*(v0 + v11) leadingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:32.0];

  *(v16 + 32) = v19;
  v20 = [*(v0 + v3) trailingAnchor];
  v21 = [*(v0 + v11) trailingAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-32.0];

  *(v16 + 40) = v22;
  v23 = [*(v0 + v3) centerXAnchor];
  v24 = [*(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView) centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v16 + 48) = v25;
  v26 = *(v0 + v8);
  if (v26)
  {
    v27 = objc_opt_self();
    *(v16 + 56) = v26;
    *(v16 + 64) = v14;
    sub_1000FB560(0, &qword_100217B58);
    v28 = v26;
    v29 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100104D10()
{
  if (AXDeviceIsPad())
  {
    v1 = [objc_opt_self() sharedManager];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 currentDisplayManager];

      if (v3)
      {
        v4 = [v3 orientation];

        v5 = sub_10011F1E4();
        swift_beginAccess();
        v6 = *v5;
        v7 = v4 - 3;
        v8 = [v0 view];
        v9 = v8;
        if (v6 == 1)
        {
          if (v7 > 1)
          {
            goto LABEL_11;
          }

          if (v8)
          {
            goto LABEL_14;
          }

          __break(1u);
        }

        if (v7 <= 1)
        {
          if (v8)
          {
LABEL_12:
            [v8 bounds];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v42.origin.x = v11;
            v42.origin.y = v13;
            v42.size.width = v15;
            v42.size.height = v17;
            Width = CGRectGetWidth(v42);
            goto LABEL_15;
          }

          __break(1u);
LABEL_11:
          if (!v8)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          goto LABEL_12;
        }

        if (!v8)
        {
LABEL_47:
          __break(1u);
          return;
        }

LABEL_14:
        [v8 bounds];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v43.origin.x = v20;
        v43.origin.y = v22;
        v43.size.width = v24;
        v43.size.height = v26;
        Width = CGRectGetHeight(v43);
LABEL_15:
        v27 = Width;
        if (AXDeviceIsPad())
        {
          v28 = 512.0;
        }

        else
        {
          v28 = 300.0;
        }

        v29 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer;
        v30 = *&v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer];
        if (v30)
        {
          [v30 position];
          v32 = *&v0[v29];
          if (v32)
          {
            v33 = v31;
            v34 = (v27 - v28) * 0.5;
            [v32 position];
            v36 = v35;
            swift_beginAccess();
            if (*v5 == 1)
            {
              if (v4 == 1)
              {
                goto LABEL_22;
              }

              if (v4 != 3)
              {
                goto LABEL_32;
              }
            }

            else if (v4 != 1)
            {
              if (v4 == 3)
              {
                goto LABEL_39;
              }

              if (v4 == 2)
              {
                goto LABEL_34;
              }

              if (v4 != 4)
              {
                goto LABEL_35;
              }

LABEL_22:
              v33 = v34 + v33;
              i = *&v0[v29];
              if (!i)
              {
                goto LABEL_31;
              }

              goto LABEL_36;
            }

            v36 = v36 - v34;
            for (i = *&v0[v29]; !i; i = *&v0[v29])
            {
LABEL_31:
              while (1)
              {
                __break(1u);
LABEL_32:
                if (v4 != 2)
                {
                  break;
                }

LABEL_39:
                v33 = v33 - v34;
                i = *&v0[v29];
                if (i)
                {
                  goto LABEL_36;
                }
              }

              if (v4 == 4)
              {
LABEL_34:
                v36 = v34 + v36;
              }

LABEL_35:
              ;
            }

LABEL_36:
            [i setPosition:{v33, v36}];
            v38 = *&v0[v29];
            if (v38)
            {
              [v38 position];
              v39 = &v0[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayerPosition];
              *v39 = v40;
              *(v39 + 1) = v41;
              v39[16] = 0;
              return;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }
}

void sub_1001050E4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  Height = CGRectGetHeight(v35);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v11 = CGRectGetWidth(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  v12 = CGRectGetHeight(v37);
  v13 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer;
  v14 = *(v4 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v12;
  [v14 bounds];
  v16 = CGRectGetWidth(v38);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = *(v4 + v13);
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v17 bounds];
  v18 = CGRectGetHeight(v39);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v40.origin.y = 1.0 - a2 - Height;
  v19 = v18;
  v40.origin.x = 1.0 - a1 - Width;
  v40.size.width = v11;
  v40.size.height = v15;
  v41 = VNImageRectForNormalizedRect(v40, v16, v19);
  v20 = *(v4 + v13);
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  x = v41.origin.x;
  y = v41.origin.y;
  v23 = v41.size.width;
  v24 = v41.size.height;
  [v20 frame];
  v26 = *(v4 + v13);
  if (!v26)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = v25;
  [v26 frame];
  v29 = v28;
  v30 = x;
  v31 = y;
  v32 = v23;
  v33 = v24;

  CGRectOffset(*&v30, v27, v29);
}

void sub_1001052E4(CGFloat *a1)
{
  v2 = v1;
  v3 = a1;
  sub_1001050E4(*a1, a1[1], a1[2], a1[3]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceValidator);
  v13 = sub_100103B50();
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = (*(*v12 + 224))(v3, v15, v17, v19, v21, v5, v7, v9, v11);
  LOBYTE(v3) = v22;
  v23 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_isFaceAlignmentComplete;
  *(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_isFaceAlignmentComplete) = HIBYTE(v22) & 1;
  *(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_currentFaceGuidanceState) = v22;
  v24 = static HeadGestureState.HeadState.__derived_enum_equals(_:_:)(v22, 10);
  v25 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceAlignmentDidTimeout;
  *(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceAlignmentDidTimeout) = v24;
  v26 = v2;
  v27 = sub_100103C58();
  sub_10011F234(v3);
  v28 = String._bridgeToObjectiveC()();

  [v27 setText:v28];

  if ((*(v26 + v23) & 1) != 0 || *(v26 + v25) == 1)
  {

    sub_100105498();
  }
}

void sub_100105498()
{
  v1 = v0;
  (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector)) + 0x90))();
  v2 = [objc_opt_self() effectWithStyle:1];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAlpha:0.0];
  v5 = sub_100103A04();
  [v5 addSubview:v4];

  v6 = objc_opt_self();
  sub_1000F40B0(&qword_100217B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001BEC90;
  v8 = [v4 leadingAnchor];
  v9 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView;
  v10 = [*(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView) leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  *(v7 + 32) = v11;
  v12 = [v4 trailingAnchor];
  v13 = [*(v1 + v9) trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v7 + 40) = v14;
  v15 = [v4 topAnchor];
  v16 = [*(v1 + v9) topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v7 + 48) = v17;
  v18 = [v4 bottomAnchor];

  v19 = [*(v1 + v9) bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v7 + 56) = v20;
  sub_1000FB560(0, &qword_100217B58);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v67 = v6;
  [v6 activateConstraints:isa];

  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() systemImageNamed:v22];

  if (v23)
  {
    v24 = [v23 imageWithRenderingMode:2];
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];

  v26 = [objc_opt_self() whiteColor];
  [v25 setTintColor:v26];

  v27 = v25;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 setAlpha:0.0];
  v28 = sub_10010396C();
  [v28 addSubview:v27];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001BEC90;
  v30 = [v27 centerXAnchor];
  v31 = sub_100103B50();
  v32 = [v31 centerXAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v29 + 32) = v33;
  v34 = [v27 centerYAnchor];
  v35 = [*(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView) centerYAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v29 + 40) = v36;
  v37 = [v27 widthAnchor];
  v38 = [v37 constraintEqualToConstant:55.0];

  *(v29 + 48) = v38;
  v39 = [v27 heightAnchor];
  v40 = [v27 widthAnchor];

  v41 = [v39 constraintEqualToAnchor:v40];
  *(v29 + 56) = v41;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:v42];

  v43 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView;
  [*(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView) bringSubviewToFront:v27];
  v44 = *(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_guidanceLabelBottomAnchorConstraint);
  if (v44)
  {
    [v44 setActive:0];
    v45 = sub_100103C58();
    [v45 frame];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v74.origin.x = v47;
    v74.origin.y = v49;
    v74.size.width = v51;
    v74.size.height = v53;
    MinY = CGRectGetMinY(v74);
    v55 = [*(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel) topAnchor];
    v56 = [*(v1 + v43) topAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:MinY];

    [v57 setActive:1];
    if (*(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceAlignmentDidTimeout))
    {
      v58 = 1.5;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = objc_opt_self();
    v60 = swift_allocObject();
    *(v60 + 16) = v4;
    v72 = sub_100106C98;
    v73 = v60;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_1000F55D8;
    v71 = &unk_1001D88A8;
    v61 = _Block_copy(&aBlock);
    v62 = v4;

    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v58;
    *(v64 + 32) = v27;
    v72 = sub_100106CEC;
    v73 = v64;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_1001060FC;
    v71 = &unk_1001D88F8;
    v65 = _Block_copy(&aBlock);
    v66 = v27;

    [v59 animateWithDuration:0 delay:v61 options:v65 animations:0.35 completion:0.0];
    _Block_release(v65);
    _Block_release(v61);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100105D7C(void *a1)
{
  v23 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v22 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  sub_1000FB560(0, &unk_100217B00);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 16) = v23;
  aBlock[4] = sub_100107230;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F55D8;
  aBlock[3] = &unk_1001D8A88;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100106AB8();
  sub_1000F40B0(&unk_100217B10);
  sub_100106B10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v3, v1);
  (*(v24 + 8))(v6, v25);
  return (v15)(v13, v22);
}

uint64_t sub_1001060FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100106180()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FaceGuidanceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001062F4(__int128 *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_isFaceAlignmentComplete) & 1) == 0)
  {
    sub_1000FB560(0, &unk_100217B00);
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v15 = *a1;
    *(v14 + 40) = a1[1];
    v16 = a1[3];
    *(v14 + 56) = a1[2];
    *(v14 + 72) = v16;
    *(v14 + 88) = a1[4];
    *(v14 + 16) = v13;
    *(v14 + 24) = v15;
    aBlock[4] = sub_1001069E8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000F55D8;
    aBlock[3] = &unk_1001D8838;
    v17 = _Block_copy(aBlock);
    sub_100106A5C(a1, v18);

    static DispatchQoS.unspecified.getter();
    v18[0] = &_swiftEmptyArrayStorage;
    sub_100106AB8();
    sub_1000F40B0(&unk_100217B10);
    sub_100106B10();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_1001065E8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_rotationCoordinator;
  v5 = *(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_rotationCoordinator);
  if (!v5)
  {
    v6 = [objc_allocWithZone(AVCaptureDeviceRotationCoordinator) initWithDevice:a1 previewLayer:*(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer)];
    v7 = *(v2 + v4);
    *(v2 + v4) = v6;

    v5 = *(v2 + v4);
    if (!v5)
    {
      v12 = 0;
LABEL_7:
      v14 = *(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewAngleObservation);
      *(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewAngleObservation) = v12;

      return;
    }
  }

  [v5 videoRotationAngleForHorizonLevelPreview];
  v9 = *(v2 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer);
  if (v9)
  {
    v10 = v8;
    v11 = [v9 connection];
    [v11 setVideoRotationAngle:v10];

    v12 = *(v2 + v4);
    if (v12)
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = v12;
      v12 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
    }

    goto LABEL_7;
  }

  __break(1u);
}

id sub_100106774@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoRotationAngleForHorizonLevelPreview];
  *a2 = v4;
  return result;
}

void sub_1001067B0()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_completionHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceValidator;
  type metadata accessor for FaceAlignmentValidator();
  *(v0 + v2) = sub_100112694();
  v3 = OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector;
  type metadata accessor for FaceDetector();
  *(v0 + v3) = AXPrefsBridge.__allocating_init()();
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_isFaceAlignmentComplete) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_labelSpacing) = 0x4040000000000000;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceAlignmentDidTimeout) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_guidanceLabelBottomAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_debugLabelTopAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_cameraWindowWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_debugFaceBoundingBoxLayer) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_rotationCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewAngleObservation) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_currentFaceGuidanceState) = 11;
  v4 = v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayerPosition;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___faceGuidanceContentView) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraView) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___maskView) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___cameraWindowView) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___guidanceLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController____lazy_storage___debugAttitudeLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100106960()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100106998()
{

  return _swift_deallocObject(v0, 104, 7);
}

void sub_1001069E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001052E4((v0 + 24));
  }
}

uint64_t sub_100106A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100106AB8()
{
  result = qword_100217778;
  if (!qword_100217778)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217778);
  }

  return result;
}

unint64_t sub_100106B10()
{
  result = qword_100217780;
  if (!qword_100217780)
  {
    sub_1000F41DC(&unk_100217B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217780);
  }

  return result;
}

void sub_100106B80()
{
  sub_1000F40B0(&unk_100217B60);
  NSKeyValueObservedChange.newValue.getter();
  if ((v6 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = *(Strong + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_previewLayer);
      v2 = Strong;
      v3 = v1;

      if (v1)
      {
        v4 = [v3 connection];

        [v4 setVideoRotationAngle:v5];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100106C60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100106CAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100106CEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_cameraWindowWidthConstraint);
    if (v5)
    {
      [v5 setConstant:49.0];
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      v18 = sub_100106EF0;
      v19 = v7;
      aBlock = _NSConcreteStackBlock;
      v15 = 1107296256;
      v16 = sub_1000F55D8;
      v17 = &unk_1001D8948;
      v8 = _Block_copy(&aBlock);
      v9 = v4;

      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v2;
      v18 = sub_100107028;
      v19 = v10;
      aBlock = _NSConcreteStackBlock;
      v15 = 1107296256;
      v16 = sub_1001060FC;
      v17 = &unk_1001D8998;
      v11 = _Block_copy(&aBlock);
      v12 = v9;
      v13 = v2;

      [v6 animateWithDuration:0 delay:v8 options:v11 animations:0.35 completion:v1];

      _Block_release(v11);
      _Block_release(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100106EF0()
{
  v1 = *(v0 + 16);
  v2 = sub_100103A04();
  [v2 layoutIfNeeded];

  v3 = sub_100103B50();
  v4 = [v3 layer];

  v5 = *(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_cameraWindowWidthConstraint);
  if (v5)
  {
    [v5 constant];
    [v4 setCornerRadius:v6 * 0.5];

    if ((*(v1 + OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceAlignmentDidTimeout) & 1) == 0)
    {
      v7 = sub_100103C58();
      [v7 setAlpha:0.0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100106FE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100107028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v15 = sub_1001071C4;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000F55D8;
  v14 = &unk_1001D89E8;
  v5 = _Block_copy(&v11);
  v6 = v1;
  v7 = v2;

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v15 = sub_100107228;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001060FC;
  v14 = &unk_1001D8A38;
  v9 = _Block_copy(&v11);
  v10 = v6;

  [v3 animateWithDuration:v5 animations:v9 completion:0.35];
  _Block_release(v9);
  _Block_release(v5);
}

id sub_1001071C4()
{
  v1 = *(v0 + 24);
  v2 = sub_100103A04();
  [v2 setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

void (*sub_100107230())(void)
{
  result = (*((swift_isaMask & **(v0 + 16)) + 0x118))();
  if (result)
  {
    v2 = result;
    result();

    return sub_100103294(v2);
  }

  return result;
}

void sub_1001072C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((swift_isaMask & *Strong) + 0x100))();

    if (v2)
    {
      [v2 didForceDismissForEmergencyTap];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001073BC()
{
  v0 = type metadata accessor for Logger();
  sub_1000FB624(v0, qword_10021C918);
  sub_1000F4758(v0, qword_10021C918);
  return Logger.init(subsystem:category:)();
}

void sub_100107440(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 144))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

__n128 sub_100107490(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  return result;
}

uint64_t sub_100107510(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return result;
}

uint64_t sub_1001075B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_100107634(double a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_100107674@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1001076C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_100107738(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t Face.isVisible.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_100107870(double a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_100107974(double a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_100107A4C()
{
  v1 = swift_beginAccess();
  v2 = *(v0 + 96);
  v3 = *(*v0 + 144);
  v5 = (v3)(v1);
  switch(v2)
  {
    case 4:
      v18 = v3();
      v5 = 1.0 - v5 - v19;
      v16 = (v3)(v18);
      v12 = v20;
      goto LABEL_7;
    case 3:
      v13 = v3();
      v15 = 1.0 - v14;
      v16 = (v3)(v13);
      v12 = v15 - v17;
LABEL_7:
      v21 = (v3)(v16);
      v23 = v22;
      (v3)(v21);
      v25 = v24;
      goto LABEL_10;
    case 2:
      v6 = 1.0 - v4;
      v7 = v3();
      v5 = v6 - v8;
      v9 = 1.0 - (v3)(v7);
      v10 = v3();
      v12 = v9 - v11;
      break;
    default:
      v5 = v4;
      v12 = (v3)();
      break;
  }

  v26 = (v3)(v10);
  v23 = v27;
  (v3)(v26);
  v25 = v28;
LABEL_10:
  result = swift_beginAccess();
  *(v0 + 16) = v5;
  *(v0 + 24) = v12;
  *(v0 + 32) = v23;
  *(v0 + 40) = v25;
  return result;
}

uint64_t sub_100107C14(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return sub_100107A4C();
}

uint64_t (*sub_100107C58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100107CAC;
}

uint64_t sub_100107CAC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100107A4C();
  }

  return result;
}

uint64_t sub_100107CE0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 assistiveTouchHeadMovementSensitivity];

  if (v1 == 1)
  {
    return 0;
  }

  if (v1 != 2)
  {
    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000F4758(v2, qword_10021C918);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v3, v4, "AXAssistiveTouchHeadMovementSensitivity has a no value. Unsure how to convert it. Value: %ld", v5, 0xCu);
    }
  }

  return 1;
}

double sub_100107E18()
{
  v1 = *(*v0 + 144);
  v2 = v1();
  v3 = (v1)();
  v5 = v2 + v4 * 0.5;
  v6 = (v1)(v3);
  (v1)(v6);
  return v5;
}

uint64_t sub_100107F00(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  v15 = CACurrentMediaTime();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 80) = a6;
  *(v14 + 88) = a7;
  *(v14 + 96) = a1;
  *(v14 + 48) = v15;
  *(v14 + 56) = v15;
  return v14;
}

uint64_t sub_100107F88(void *a1)
{
  v3 = [a1 bounds];
  v5 = v4 * 0.02;
  v6 = *(*v1 + 144);
  v6(v3);
  v8 = v5 + v7 * 0.98;
  v9 = [a1 bounds];
  v11 = v10 * 0.02;
  v6(v9);
  v13 = v11 + v12 * 0.98;
  [a1 bounds];
  v15 = v14;
  v16 = [a1 bounds];
  v18 = v17;
  v6(v16);
  v20 = v15 + (v18 - v19) * 0.5;
  [a1 bounds];
  v22 = v21;
  v23 = [a1 bounds];
  v25 = v24;
  v6(v23);
  v27 = v22 + (v25 - v26) * 0.5;
  swift_beginAccess();
  *(v1 + 32) = v8;
  *(v1 + 40) = v13;
  *(v1 + 16) = v20;
  *(v1 + 24) = v27;
  v28 = CACurrentMediaTime();
  swift_beginAccess();
  *(v1 + 56) = v28;
  v29 = [a1 faceID];
  swift_beginAccess();
  *(v1 + 64) = v29;
  (*(*v1 + 224))(1);
  v30 = [a1 hasRollAngle];
  v31 = 0.0;
  v32.n128_u64[0] = 0;
  if (v30)
  {
    v30 = [a1 rollAngle];
  }

  (*(*v1 + 248))(v30, v32);
  if ([a1 hasYawAngle])
  {
    [a1 yawAngle];
    v31 = v33;
  }

  return (*(*v1 + 280))(v31);
}

uint64_t Face.description.getter()
{
  _StringGuts.grow(_:)(76);
  v1._countAndFlagsBits = 0x4449203A65636146;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  (*(*v0 + 192))();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x736956207349202CLL;
  v3._object = 0xEE00203A656C6269;
  String.append(_:)(v3);
  v5 = (*(*v0 + 216))(v4);
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0x73646E756F42202CLL;
  v10._object = 0xEA0000000000203ALL;
  String.append(_:)(v10);
  (*(*v0 + 144))(v11);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v12._countAndFlagsBits = 0x203A6C6C6F52202CLL;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  (*(*v0 + 240))(v13, v14, v15, v16);
  v17._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x203A776159202CLL;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  (*(*v0 + 272))(v19, v20, v21, v22);
  v23._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x746E6569724F202CLL;
  v24._object = 0xEF203A6E6F697461;
  String.append(_:)(v24);
  (*(*v0 + 304))(v25, v26, v27, v28);
  type metadata accessor for UIDeviceOrientation(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t HeadGestureState.HeadState.description.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 1952867692;
  }

  return 0x7468676972;
}

Swift::Int HeadGestureState.HeadState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100108638()
{
  v1 = 1952867692;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_100108680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1001086CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_100108744(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1001087D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_100108850(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1001088DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_10010895C(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t HeadGestureState.state.getter()
{
  if ((*(*v0 + 128))() == 1.0)
  {
    return 1;
  }

  else
  {
    return 2 * ((*(*v0 + 152))() == 1.0);
  }
}

void *sub_100108A20()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t HeadGestureState.update(withFace:)(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*a1 + 192))(a1);
  v5 = swift_beginAccess();
  *(v2 + 16) = v4;
  result = (*(*a1 + 216))(v5);
  if (result)
  {
    v7 = (*(*a1 + 336))() + -0.5;
    v8 = (*(*a1 + 144))();
    v10 = v9;
    v11 = (*(*a1 + 328))(v8);
    v12 = 0.35;
    if ((v11 & 1) == 0)
    {
      v12 = 0.25;
    }

    v13 = sub_10010CCF0(v7 / (v10 * v12) * 100.0);
    v14 = v13 / 100.0;
    if (v13 / 100.0 <= 0.0)
    {
      v15 = v13 / 100.0;
    }

    else
    {
      v15 = 0.0;
    }

    if (v15 <= -1.0)
    {
      v15 = -1.0;
    }

    v16 = sub_10010CCF8(v15);
    v17 = sub_10010CD00(v16 * 10.0) / 10.0;
    v18 = 1.0;
    if (v14 <= 1.0)
    {
      v18 = v14;
    }

    if (v18 <= 0.0)
    {
      v18 = 0.0;
    }

    v19 = sub_10010CCF8(v18);
    v20 = sub_10010CD00(v19 * 10.0) / 10.0;
    if (AXDeviceHasFrontCameraPhysicallyMountedUpsideDown())
    {
      swift_beginAccess();
      *(v2 + 24) = v20;
    }

    else
    {
      swift_beginAccess();
      *(v2 + 24) = v17;
      v17 = v20;
    }

    result = swift_beginAccess();
    *(v2 + 32) = v17;
  }

  return result;
}

double HeadMovementSensitivity.rawValue.getter(char a1)
{
  result = 0.35;
  if ((a1 & 1) == 0)
  {
    return 0.25;
  }

  return result;
}

uint64_t HeadGestureState.description.getter()
{
  _StringGuts.grow(_:)(30);

  v2 = (*(*v0 + 176))(v1);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE400000000000000;
      v4 = 1952867692;
    }

    else
    {
      v3 = 0xE500000000000000;
      v4 = 0x7468676972;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  v5 = v3;
  String.append(_:)(*&v4);

  v6._countAndFlagsBits = 0x203A7466654C202CLL;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  (*(*v0 + 128))();
  v7._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A7468676952202CLL;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  (*(*v0 + 152))();
  v9._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v9);

  return 0x203A6574617453;
}

uint64_t HeadMovementSensitivity.description.getter(char a1)
{
  if (a1)
  {
    strcpy(v3, "high (value: ");
    HIWORD(v3[1]) = -4864;
  }

  else
  {
    strcpy(v3, "low (value: ");
    BYTE5(v3[1]) = 0;
    HIWORD(v3[1]) = -5120;
  }

  v1._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v1);

  return v3[0];
}

uint64_t HeadMovementSensitivity.init(rawValue:)(double a1)
{
  if (a1 == 0.35)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 0.25)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

BOOL sub_100108F20(_BYTE *a1, _BYTE *a2)
{
  v2 = 0.35;
  if (*a1)
  {
    v3 = 0.35;
  }

  else
  {
    v3 = 0.25;
  }

  if (!*a2)
  {
    v2 = 0.25;
  }

  return v3 == v2;
}

Swift::Int sub_100108F5C(char a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    v2 = 0x3FD6666666666666;
  }

  else
  {
    v2 = 0x3FD0000000000000;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100108FB4()
{
  if (*v0)
  {
    v1 = 0x3FD6666666666666;
  }

  else
  {
    v1 = 0x3FD0000000000000;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100108FFC(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    v3 = 0x3FD6666666666666;
  }

  else
  {
    v3 = 0x3FD0000000000000;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

double *sub_100109050@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 0.35)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 0.25)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_100109080(double *a1@<X8>)
{
  v2 = 0.35;
  if (!*v1)
  {
    v2 = 0.25;
  }

  *a1 = v2;
}

uint64_t HeadTrackerAvailabilityDetail.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD000000000000011;
    }

    if (a1 == 3)
    {
      return 0x2073692065636166;
    }
  }

  else
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 0x746F6E2065636166;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t HeadTrackerAvailabilityDetail.localizedDescription.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v1 = String._bridgeToObjectiveC()();
    v2 = sub_100042B24(v1);

    if (v2)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (a1 != 2)
  {
    goto LABEL_11;
  }

  v3 = String._bridgeToObjectiveC()();
  v2 = sub_100042B24(v3);

  if (v2)
  {
LABEL_13:
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  __break(1u);
LABEL_8:
  if (a1 != 1)
  {
    goto LABEL_15;
  }

  v4 = String._bridgeToObjectiveC()();
  v2 = sub_100042B24(v4);

  if (v2)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_11:
  if (a1 == 3)
  {
    v5 = String._bridgeToObjectiveC()();
    v2 = sub_100042B24(v5);

    if (v2)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

LABEL_15:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t sub_10010931C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10010EA8C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100109350()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1701736302;
    }

    if (v1 == 1)
    {
      return 0x746F6E2065636166;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0xD000000000000011;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  return 0x2073692065636166;
}

uint64_t sub_100109438@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1001094B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_100109520(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_1001095E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t HeadTracker.hasHeadGestureSwitchesAssigned.getter()
{
  v1 = [v0 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v10 = 1;
  type metadata accessor for SCATCameraSwitch(0);
  sub_100110710(&qword_100217B80, type metadata accessor for SCATCameraSwitch);
  AnyHashable.init<A>(_:)();
  if (*(v3 + 16) && (v4 = sub_10010CD74(v12), (v5 & 1) != 0))
  {
    sub_1000FB5C4(*(v3 + 56) + 32 * v4, &v10);
    sub_10010EDA0(v12);
    sub_1000F454C(&v10, &qword_100217B88);

    return 1;
  }

  else
  {
    sub_10010EDA0(v12);
    v10 = 0u;
    v11 = 0u;
    sub_1000F454C(&v10, &qword_100217B88);
    *&v10 = 2;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v7 = sub_10010CD74(v12), (v8 & 1) != 0))
    {
      sub_1000FB5C4(*(v3 + 56) + 32 * v7, &v10);
      sub_10010EDA0(v12);

      v6 = 1;
    }

    else
    {

      sub_10010EDA0(v12);
      v6 = 0;
      v10 = 0u;
      v11 = 0u;
    }

    sub_1000F454C(&v10, &qword_100217B88);
  }

  return v6;
}

id HeadTracker.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___SCATHeadTracker_persistentSwitchIdentifiers;
  *&v0[v2] = sub_10010EA9C(&_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR___SCATHeadTracker_switchDisplayNames;
  *&v0[v3] = sub_10010EC78(&_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR___SCATHeadTracker_face] = 0;
  *&v0[OBJC_IVAR___SCATHeadTracker_headGestureState] = 0;
  v0[OBJC_IVAR___SCATHeadTracker_isHandlingAction] = 0;
  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000F4758(v4, qword_10021C918);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Initializing Head Tracker Session.", v7, 2u);
  }

  v1[OBJC_IVAR___SCATHeadTracker_availability] = 0;
  *&v1[OBJC_IVAR___SCATHeadTracker_availabilityDetail] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HeadTracker();
  return objc_msgSendSuper2(&v9, "init");
}

id HeadTracker.__deallocating_deinit()
{
  v1 = v0;
  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C918);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinitializing Head Tracker Session", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HeadTracker();
  return objc_msgSendSuper2(&v7, "dealloc");
}

Swift::Void __swiftcall HeadTracker.startRunning()()
{
  v1 = v0;
  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C918);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Will attempt to start Head Gestures Session", v5, 2u);
  }

  if ([v0 isRunning])
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Head Tracker is already started. Ignoring.", v7, 2u);
    }
  }

  else
  {
    type metadata accessor for HeadGestureState();
    v8 = swift_allocObject();
    v8[3] = 0;
    v8[4] = 0;
    v8[2] = 0;
    v9 = OBJC_IVAR___SCATHeadTracker_headGestureState;
    swift_beginAccess();
    *&v0[v9] = v8;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Started Head Gestures Session", v12, 2u);
    }

    v13 = sub_1000F4F78();
    v14 = *v13;
    v15 = *((swift_isaMask & **v13) + 0x150);
    v16 = type metadata accessor for HeadTracker();
    v17 = v14;
    v15(v1, v16, &protocol witness table for HeadTracker);

    v19.receiver = v1;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "startRunning");
  }
}

Swift::Void __swiftcall HeadTracker.stopRunning()()
{
  v1 = v0;
  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000F4758(v2, qword_10021C918);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Will attempt to stop Head Gestures Session", v5, 2u);
  }

  if ([v1 isRunning])
  {
    v6 = sub_1000F4F78();
    v7 = *v6;
    v8 = *((swift_isaMask & **v6) + 0x158);
    v9 = type metadata accessor for HeadTracker();
    v10 = v7;
    v8(v1, v9, &protocol witness table for HeadTracker);

    v11 = OBJC_IVAR___SCATHeadTracker_headGestureState;
    swift_beginAccess();
    *&v1[v11] = 0;

    v12 = OBJC_IVAR___SCATHeadTracker_face;
    swift_beginAccess();
    *&v1[v12] = 0;

    v19.receiver = v1;
    v19.super_class = v9;
    objc_msgSendSuper2(&v19, "stopRunning");
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Stopped Head Gestures Session", v15, 2u);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Head Tracker is already stopped. Ignoring.", v17, 2u);
    }
  }
}

uint64_t sub_10010A16C(uint64_t a1)
{
  v3 = [v1 actions];
  if (!v3)
  {
    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000F4758(v9, qword_10021C918);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not lookup action identifier because actions are nil", v12, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for SCATCameraSwitch(0);
  sub_100110710(&qword_100217B80, type metadata accessor for SCATCameraSwitch);
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10010CD74(v13), (v7 & 1) == 0))
  {

    sub_10010EDA0(v13);
    return 0;
  }

  sub_1000FB5C4(*(v5 + 56) + 32 * v6, v14);
  sub_10010EDA0(v13);

  sub_1000F40B0(&unk_100217F00);
  if (swift_dynamicCast())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010A378(uint64_t a1)
{
  v4 = (*((swift_isaMask & *v1) + 0xD0))();
  if (v4)
  {
    v5 = v4;
    if (((*(*a1 + 216))() & 1) == 0)
    {
      v24 = [objc_opt_self() sharedInstance];
      v25 = [v24 switchControlDebugLoggingEnabled];

      if (v25)
      {
        if (qword_10021ACA0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000F4758(v26, qword_10021C918);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Face is not visible", v29, 2u);
        }
      }

      sub_100110A18();
      swift_allocError();
      *v30 = 1;
      *(v30 + 8) = 0;
      swift_willThrow();
    }

    sub_10010B574(1, 0);
    (*(*v5 + 192))(a1);
    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000F4758(v6, qword_10021C918);
    v7 = v1;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315394;

      v12 = HeadGestureState.description.getter();
      v14 = v13;

      v15 = sub_1000F9228(v12, v14, &v33);

      *(v10 + 4) = v15;
      *(v10 + 12) = 1024;
      LODWORD(v15) = *(v7 + OBJC_IVAR___SCATHeadTracker_isHandlingAction);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Head Gesture State updated: %s - is handling action: %{BOOL}d", v10, 0x12u);
      sub_1000FA500(v11);
    }

    else
    {
    }

    v31 = (*(*v5 + 176))();
    if (v31)
    {
      if (v31 == 1)
      {
        v32 = 1;
        sub_10010A8C8(1uLL);
        if (!v2)
        {
          goto LABEL_29;
        }
      }

      sub_10010A8C8(2uLL);
      if (v2)
      {
      }

      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

LABEL_29:
    *(v7 + OBJC_IVAR___SCATHeadTracker_isHandlingAction) = v32;
    sub_10010B9C0(v5);
  }

  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 switchControlDebugLoggingEnabled];

  if (v17)
  {
    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000F4758(v18, qword_10021C918);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Not started", v21, 2u);
    }
  }

  sub_100110A18();
  swift_allocError();
  *v22 = 0;
  *(v22 + 8) = 1;
  return swift_willThrow();
}

void sub_10010A8C8(Swift::UInt a1)
{
  v3 = v1;
  v5 = sub_1000F40B0(&unk_100217BC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  if (v1[OBJC_IVAR___SCATHeadTracker_isHandlingAction])
  {
    return;
  }

  v65 = v9;
  aBlock[13] = v2;
  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000F4758(v12, qword_10021C918);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Handling head gesture event usage: %ld", v15, 0xCu);
  }

  v16 = sub_10010A16C(a1);
  if (!v16)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = a1;
      v28 = "No action items found for event usage: %ld";
      v29 = v26;
      v30 = v25;
      v31 = v27;
      v32 = 12;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v30, v29, v28, v31, v32);
    }

LABEL_29:

    return;
  }

  v17 = v16;
  v18 = [v3 queue];
  if (!v18)
  {

    v25 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      v28 = "No queue configured. Not handling event.";
      v29 = v58;
      v30 = v25;
      v31 = v59;
      v32 = 2;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v63 = v18;
  v19 = OBJC_IVAR___SCATHeadTracker_persistentSwitchIdentifiers;
  swift_beginAccess();
  v20 = *&v3[v19];
  if (*(v20 + 16) && (v21 = sub_10010CD08(a1), (v22 & 1) != 0))
  {
    v64 = *(v20 + 56);
    v62 = v21;
    v23 = type metadata accessor for UUID();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v11, &v64[*(v24 + 72) * v62], v23);
    (*(v24 + 56))(v11, 0, 1, v23);
  }

  else
  {
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  }

  v34 = OBJC_IVAR___SCATHeadTracker_switchDisplayNames;
  swift_beginAccess();
  v35 = *&v3[v34];
  if (*(v35 + 16) && (v36 = sub_10010CD08(a1), (v37 & 1) != 0))
  {
    v38 = (*(v35 + 56) + 16 * v36);
    v39 = *v38;
    v61 = v38[1];
    v62 = v39;

    if (!*(v17 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
    if (!*(v17 + 16))
    {
LABEL_21:

      v42 = 0;
      goto LABEL_22;
    }
  }

  v40 = sub_1000FCCD4(@"SwitchActionTypeNormal");
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

  v42 = *(*(v17 + 56) + 8 * v40);

LABEL_22:
  v64 = v42;
  v43 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v64;
    v48 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "Sending action item: %@", v46, 0xCu);
    sub_1000F454C(v47, &qword_100217528);
  }

  sub_1000F44E4(v11, v8, &unk_100217BC0);
  v49 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v50 = swift_allocObject();
  v51 = v64;
  *(v50 + 16) = v3;
  *(v50 + 24) = v51;
  sub_100110908(v8, v50 + v49);
  v52 = (v50 + ((v6 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
  v53 = v61;
  *v52 = v62;
  v52[1] = v53;
  aBlock[4] = sub_100110978;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F55D8;
  aBlock[3] = &unk_1001D8EC8;
  v54 = _Block_copy(aBlock);
  v55 = v43;
  v56 = v3;

  v57 = v63;
  [v63 performAsynchronousWritingBlock:v54];
  _Block_release(v54);

  sub_1000F454C(v11, &unk_100217BC0);
}

void sub_10010AF7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5)
{
  v19[1] = a4;
  v20 = a1;
  v21 = a2;
  v7 = sub_1000F40B0(&unk_100217BC0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  sub_1000F44E4(a3, v19 - v11, &unk_100217BC0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_1000F454C(v12, &unk_100217BC0);
    v16 = 0;
    if (a5)
    {
LABEL_3:
      v17 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    UUID.uuidString.getter();
    (*(v14 + 8))(v12, v13);
    v16 = String._bridgeToObjectiveC()();

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  [v20 _handleAction:v21 longPressAction:0 start:1 switchIdentifier:v16 switchDisplayName:v17];

  sub_1000F44E4(a3, v10, &unk_100217BC0);
  if (v15(v10, 1, v13) == 1)
  {
    sub_1000F454C(v10, &unk_100217BC0);
    v18 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  UUID.uuidString.getter();
  (*(v14 + 8))(v10, v13);
  v18 = String._bridgeToObjectiveC()();

  if (a5)
  {
LABEL_10:
    a5 = String._bridgeToObjectiveC()();
  }

LABEL_11:
  [v20 _handleAction:v21 longPressAction:0 start:0 switchIdentifier:v18 switchDisplayName:a5];
}

Swift::Void __swiftcall HeadTracker._didReceiveAction(withIdentifier:start:ignoreInputHold:)(SCATActionItem withIdentifier, Swift::Bool start, Swift::Bool ignoreInputHold)
{
  v4 = v3;
  shortcutIdentifier = withIdentifier.shortcutIdentifier;
  action = withIdentifier.action;
  isa = withIdentifier.super.isa;
  if ([v4 delegate])
  {
    aBlock[6] = &OBJC_PROTOCOL___SCATHeadTrackerInputSourceDelegate_0;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8 && (v9 = v8, (v10 = [v4 queue]) != 0))
    {
      v11 = v10;
      if ([v9 respondsToSelector:"headTrackerInputSource:didReceiveActionWithIdentifier:start:ignoreInputHold:"])
      {
        v12 = swift_allocObject();
        *(v12 + 16) = isa;
        *(v12 + 24) = v9;
        *(v12 + 32) = v4;
        *(v12 + 40) = action & 1;
        *(v12 + 41) = shortcutIdentifier & 1;
        aBlock[4] = sub_10010EE84;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000F55D8;
        aBlock[3] = &unk_1001D8B00;
        v13 = _Block_copy(aBlock);
        v14 = isa;
        swift_unknownObjectRetain();
        v15 = v4;

        [v11 performAsynchronousWritingBlock:v13];
        swift_unknownObjectRelease();

        _Block_release(v13);
      }

      else
      {
        if (qword_10021ACA0 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_1000F4758(v16, qword_10021C918);
        v17 = isa;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v17;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to send action: %@", v20, 0xCu);
          sub_1000F454C(v21, &qword_100217528);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_10010B574(char a1, uint64_t a2)
{
  v3 = v2;
  if (![v2 delegate])
  {
    return;
  }

  aBlock[6] = &OBJC_PROTOCOL___SCATHeadTrackerInputSourceDelegate_0;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (!v6 || (v7 = v6, (v8 = [v2 queue]) == 0))
  {
    swift_unknownObjectRelease();
    return;
  }

  v9 = v8;
  v10 = a1 & 1;
  if (v2[OBJC_IVAR___SCATHeadTracker_availability] == (a1 & 1) && *&v2[OBJC_IVAR___SCATHeadTracker_availabilityDetail] == a2)
  {
    swift_unknownObjectRelease();

    return;
  }

  v2[OBJC_IVAR___SCATHeadTracker_availability] = v10;
  *&v2[OBJC_IVAR___SCATHeadTracker_availabilityDetail] = a2;
  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000F4758(v11, qword_10021C918);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_23;
  }

  v26 = v9;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  aBlock[0] = v15;
  *v14 = 67109378;
  *(v14 + 4) = a1 & 1;
  *(v14 + 8) = 2080;
  v25 = a1 & 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v16 = 0x80000001001785A0;
      v17 = 0xD000000000000011;
      goto LABEL_22;
    }

    if (a2 == 3)
    {
      v16 = 0xEF726166206F6F74;
      v17 = 0x2073692065636166;
      goto LABEL_22;
    }

LABEL_28:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v16 = 0xEE00646E756F6620;
      v17 = 0x746F6E2065636166;
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v16 = 0xE400000000000000;
  v17 = 1701736302;
LABEL_22:
  v18 = sub_1000F9228(v17, v16, aBlock);

  *(v14 + 10) = v18;
  _os_log_impl(&_mh_execute_header, v12, v13, "Did Update Availability: isAvailable: %{BOOL}d - detail: %s", v14, 0x12u);
  sub_1000FA500(v15);

  v9 = v26;
  v10 = v25;
LABEL_23:
  if ([v7 respondsToSelector:"headTrackerInputSource:didUpdateAvailability:withDetail:"])
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    *(v19 + 24) = v3;
    *(v19 + 32) = v10;
    *(v19 + 40) = a2;
    aBlock[4] = sub_1001107B0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000F55D8;
    aBlock[3] = &unk_1001D8E78;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v21 = v3;

    [v9 performAsynchronousWritingBlock:v20];
    swift_unknownObjectRelease();

    _Block_release(v20);
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to update availability.", v24, 2u);
    }

    swift_unknownObjectRelease();
  }
}

void sub_10010B9C0(uint64_t a1)
{
  v2 = v1;
  if ([v2 delegate])
  {
    aBlock[6] = &OBJC_PROTOCOL___SCATHeadTrackerInputSourceDelegate_0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4 && (v5 = v4, (v6 = [v2 queue]) != 0))
    {
      v7 = v6;
      v8 = (*(*a1 + 128))();
      v9 = (*(*a1 + 152))();
      if ([v5 respondsToSelector:"headTrackerInputSource:didUpdateState:"])
      {
        v10 = swift_allocObject();
        *(v10 + 2) = v5;
        *(v10 + 3) = v2;
        v10[4] = v8;
        v10[5] = v9;
        aBlock[4] = sub_10011075C;
        aBlock[5] = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000F55D8;
        aBlock[3] = &unk_1001D8E28;
        v11 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v12 = v2;

        [v7 performAsynchronousWritingBlock:v11];
        swift_unknownObjectRelease();

        _Block_release(v11);
      }

      else
      {
        if (qword_10021ACA0 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1000F4758(v13, qword_10021C918);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Failed to update state.", v16, 2u);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void HeadTracker.update(withSwitches:recipe:)(uint64_t a1, void *a2)
{
  v5 = sub_1000F40B0(&unk_100217BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v70 - v6;
  if (!a1)
  {
    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000F4758(v13, qword_10021C918);
    v80 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v80, v14, "update switches called with nil list of switches.", v15, 2u);
    }

    v16 = v80;

    return;
  }

  v75 = v7;
  v8 = sub_10010F030(&_swiftEmptyArrayStorage);
  v78 = v2;
  v79 = v8;
  v76 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000FB560(0, &qword_100218300);
    sub_10010F138();
    Set.Iterator.init(_cocoa:)();
    a1 = v84;
    v9 = v85;
    v10 = v86;
    v11 = v87;
    v12 = v88;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(a1 + 56);

    v11 = 0;
  }

  v77 = v10;
  v20 = (v10 + 64) >> 6;
  v80 = SCATSwitchSourceCamera;
  v74 = @"SwitchActionTypeNormal";
  v73 = @"SwitchActionTypeLongPress";
  while (1)
  {
    if (a1 < 0)
    {
      v24 = __CocoaSet.Iterator.next()();
      if (!v24)
      {
        break;
      }

      v83 = v24;
      sub_1000FB560(0, &qword_100218300);
      swift_dynamicCast();
      v23 = v82;
      if (!v82)
      {
        break;
      }

      goto LABEL_25;
    }

    v21 = v11;
    v22 = v12;
    if (!v12)
    {
      while (1)
      {
        v11 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v11 >= v20)
        {
          goto LABEL_36;
        }

        v22 = *(v9 + 8 * v11);
        ++v21;
        if (v22)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_21:
    v12 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      break;
    }

LABEL_25:
    v25 = [v23 source];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
    {

LABEL_32:
      v32 = sub_10010F1A8(&_swiftEmptyArrayStorage);
      v83 = v32;
      v33 = v76;
      if (v76)
      {
        v34 = objc_allocWithZone(SCATActionItem);
        v72 = v33;
        v35 = [v34 init];
        v36 = [objc_allocWithZone(SCATActionItem) init];
        v37 = v35;
        v38 = v36;
        SCATGetActionIdentifiersForRecipeAndSwitch(v72, v23, v37, v38);
        v39 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v32;
        sub_10010E1EC(v37, v39, isUniquelyReferenced_nonNull_native);

        v41 = v82;
        v42 = v73;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v82 = v41;
        sub_10010E1EC(v38, v42, v43);

        v44 = v82;
        v83 = v82;
      }

      else
      {
        v45 = objc_opt_self();
        v46 = v74;
        v47 = v23;
        sub_10010C480([v45 fromSwitch:v47 longPress:0], v46);
        v48 = v73;
        v49 = [v45 fromSwitch:v47 longPress:1];

        sub_10010C480(v49, v48);
        v44 = v83;
      }

      v50 = [v23 headSwitch];
      v51 = v79;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v51;
      sub_10010E0A0(v44, v50, v52);
      v79 = v82;
      v53 = [v23 headSwitch];
      v54 = [v23 uuid];
      v55 = v75;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = type metadata accessor for UUID();
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
      v57 = v78;
      swift_beginAccess();
      sub_10010C584(v55, v53);
      swift_endAccess();
      v72 = [v23 headSwitch];
      v58 = [v23 name];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = OBJC_IVAR___SCATHeadTracker_switchDisplayNames;
      swift_beginAccess();
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v81 = *&v57[v61];
      *&v57[v61] = 0x8000000000000000;
      sub_10010DDD8(v71, v60, v72, v62);
      *&v57[v61] = v81;
      swift_endAccess();
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_36:
  sub_10010F1A0();
  if (qword_10021ACA0 == -1)
  {
    goto LABEL_37;
  }

LABEL_41:
  swift_once();
LABEL_37:
  v63 = type metadata accessor for Logger();
  sub_1000F4758(v63, qword_10021C918);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v78;
  if (v66)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "Updated Actions", v68, 2u);
  }

  sub_10010C7D4(v79);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v67 setActions:isa];
}

void sub_10010C480(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10010E1EC(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1000FCCD4(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_10010E92C();
        v10 = v13;
      }

      sub_10010DC10(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_10010C584(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = sub_1000F40B0(&unk_100217BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000F454C(a1, &unk_100217BC0);
    v13 = sub_10010CD08(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10010E568();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_10010DA40(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1000F454C(v8, &unk_100217BC0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10010DF38(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_10010C7D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F40B0(&qword_100217F38);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    *&v28[0] = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    type metadata accessor for SCATCameraSwitch(0);

    swift_dynamicCast();
    sub_1000F40B0(&unk_100217F00);
    swift_dynamicCast();
    v24 = v20;
    v25 = v21;
    v26 = v22;
    sub_1000FAF9C(&v23, v27);
    v20 = v24;
    v21 = v25;
    v22 = v26;
    sub_1000FAF9C(v27, v28);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v20;
    *(v11 + 16) = v21;
    *(v11 + 32) = v22;
    result = sub_1000FAF9C(v28, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10010CC10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10010CC20(uint64_t a1)
{
  v2 = sub_100110710(&unk_100217F70, type metadata accessor for SCATSwitchActionType);
  v3 = sub_100110710(&qword_100218410, type metadata accessor for SCATSwitchActionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10010CD08(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10010CDB8(a1, v2);
}

unint64_t sub_10010CD74(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10010CE24(a1, v4);
}

unint64_t sub_10010CDB8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10010CE24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100110AA0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10010EDA0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10010CEEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F40B0(&qword_100217F20);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10010D188(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = type metadata accessor for UUID();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000F40B0(&qword_100217F28);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10010D4EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F40B0(&qword_100217F30);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10010D77C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F40B0(&qword_100217F18);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_10010DA40(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for UUID() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10010DC10(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v10 = v9;
      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

unint64_t sub_10010DDD8(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10010CD08(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10010CEEC(v16, a4 & 1);
      result = sub_10010CD08(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for SCATCameraSwitch(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10010E400();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_10010DF38(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10010CD08(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10010E568();
      goto LABEL_7;
    }

    sub_10010D188(v13, a3 & 1);
    v24 = sub_10010CD08(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for SCATCameraSwitch(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for UUID();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10010E354(v10, a2, a1, v16);
}

unint64_t sub_10010E0A0(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10010CD08(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10010D4EC(v14, a3 & 1);
      result = sub_10010CD08(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for SCATCameraSwitch(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10010E7D0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

id sub_10010E1EC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000FCCD4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10010D77C(v13, a3 & 1);
      v8 = sub_1000FCCD4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for SCATSwitchActionType(0);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_10010E92C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

uint64_t sub_10010E354(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for UUID();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_10010E400()
{
  v1 = v0;
  sub_1000F40B0(&qword_100217F20);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10010E568()
{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F40B0(&qword_100217F28);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10010E7D0()
{
  v1 = v0;
  sub_1000F40B0(&qword_100217F30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10010E92C()
{
  v1 = v0;
  sub_1000F40B0(&qword_100217F18);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_10010EA8C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10010EA9C(uint64_t a1)
{
  v2 = sub_1000F40B0(&unk_100217F40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000F40B0(&qword_100217F28);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000F44E4(v9, v5, &unk_100217F40);
      v11 = *v5;
      result = sub_10010CD08(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10010EC78(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F40B0(&qword_100217F20);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10010CD08(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10010CD08(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010EE3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 42, 7);
}

id sub_10010EE84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000F4758(v6, qword_10021C918);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did receive, and sending, action: %@", v10, 0xCu);
    sub_1000F454C(v11, &qword_100217528);
  }

  v13 = [v7 action];

  return [v1 headTrackerInputSource:v3 didReceiveActionWithIdentifier:v13 start:v4 ignoreInputHold:v5];
}

uint64_t sub_10010F018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10010F030(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F40B0(&qword_100217F30);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10010CD08(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10010CD08(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10010F138()
{
  result = qword_100217BD0;
  if (!qword_100217BD0)
  {
    sub_1000FB560(255, &qword_100218300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217BD0);
  }

  return result;
}

unint64_t sub_10010F1A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F40B0(&qword_100217F18);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000FCCD4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10010F2A0(unint64_t a1)
{
  v2 = v1;
  if ((*((swift_isaMask & *v1) + 0x138))())
  {
    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000F4758(v4, qword_10021C918);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v52[0] = v8;
      *v7 = 136315138;
      sub_1000FB560(0, &qword_100217F10);
      v9 = Array.description.getter();
      v11 = sub_1000F9228(v9, v10, v52);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Did output metadata objects. Objects: %s", v7, 0xCu);
      sub_1000FA500(v8);
    }

    v12 = *((swift_isaMask & *v2) + 0xB8);
    if (!v12())
    {
      type metadata accessor for Face();
      v13 = swift_allocObject();
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      v14 = CACurrentMediaTime();
      *(v13 + 16) = vdupq_n_s64(0x3FE9333333333333uLL);
      *(v13 + 32) = vdupq_n_s64(0x3FDB333333333333uLL);
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      *(v13 + 80) = 0;
      *(v13 + 48) = v14;
      *(v13 + 56) = v14;
      v15 = OBJC_IVAR___SCATHeadTracker_face;
      swift_beginAccess();
      *(v2 + v15) = v13;
    }

    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() == 1)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_29:
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v39, v40))
          {
            goto LABEL_39;
          }

          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Could not convert metadata object into a metadata face object.", v41, 2u);
          goto LABEL_38;
        }

LABEL_10:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_44:
            __break(1u);
            return;
          }

          v16 = *(a1 + 32);
        }

        v17 = v16;
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          v19 = v18;
          v20 = v12();
          if (v20)
          {
            (*(*v20 + 360))(v19);
          }

          v21 = (v12)(v20);
          if (v21)
          {
            v22 = v21;
            v23 = [objc_opt_self() currentDeviceOrientationAllowingAmbiguous:0];
            (*(*v22 + 312))(v23);
          }

          v24 = v2;
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v25, v26))
          {

            goto LABEL_32;
          }

          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v51 = v28;
          *v27 = 136315138;
          v30 = (v12)(v28, v29);

          if (v30)
          {
            v31 = Face.description.getter();
            v33 = v32;

            v34 = sub_1000F9228(v31, v33, &v51);

            *(v27 + 4) = v34;
            _os_log_impl(&_mh_execute_header, v25, v26, "Updated Face: %s", v27, 0xCu);
            sub_1000FA500(v28);

LABEL_32:

            return;
          }

          goto LABEL_44;
        }

        goto LABEL_29;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_10;
    }

    v39 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v39, v42))
    {
      goto LABEL_39;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v43 = 136315138;
    sub_1000FB560(0, &qword_100217F10);
    v45 = Array.description.getter();
    v47 = sub_1000F9228(v45, v46, &v51);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v42, "More than one face is visible. Metadata Objects: %s", v43, 0xCu);
    sub_1000FA500(v44);

LABEL_38:

LABEL_39:

    v50 = (v12)(v48, v49);
    if (v50)
    {
      (*(*v50 + 224))(0);
    }

    return;
  }

  if (qword_10021ACA0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000F4758(v35, qword_10021C918);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Shouldn't be running when no head gestures are assigned.", v38, 2u);
  }

  [v2 stopRunning];
}

void _s15assistivetouchd11HeadTrackerC21didOutputSampleBuffer11inputSource07captureE006sampleG014fromConnectionyAA011CameraInputI7ManagerC_So09AVCaptureE0CSo08CMSampleG3RefaSo0qM0CtF_0()
{
  v1 = v0;
  if ((*((swift_isaMask & *v0) + 0x138))())
  {
    v2 = (*((swift_isaMask & *v0) + 0xB8))();
    if (v2)
    {
      v3 = v2;
      sub_10010A378(v2);
      v11 = sub_1000F4F78();
      v12 = *((swift_isaMask & **v11) + 0x138);
      v13 = *v11;
      v14 = v12();
      if (v14)
      {
        v15 = (*((swift_isaMask & *v13) + 0x120))();
        if (!v15)
        {
          if (qword_10021ACA0 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_1000F4758(v57, qword_10021C918);
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "Capture output preview was not created in Camera Input Source Manager. Can not update preview.", v60, 2u);
          }

          goto LABEL_33;
        }

        osloga = v15;
        v16 = sub_1000F4F78();
        v17 = *((swift_isaMask & **v16) + 0x1F0);
        v18 = *v16;
        v19 = v17(0x6361725464616548, 0xEB0000000072656BLL);

        if (v19)
        {
          v20 = osloga;
          goto LABEL_22;
        }

        v61 = *v16;
        v62 = static CameraInputSourceManager.CameraInputSourceDefaults.previewLayerColor.getter();
        v63 = static CameraInputSourceManager.CameraInputSourceDefaults.previewWidth.getter();
        v64.n128_u64[0] = static CameraInputSourceManager.CameraInputSourceDefaults.previewHeight.getter();
        v19 = (*((swift_isaMask & *v61) + 0x1D8))(0x6361725464616548, 0xEB0000000072656BLL, v62, v63, v64);

        v20 = osloga;
        if (v19)
        {
LABEL_22:
          v21 = [v20 layer];
          [v21 frame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v80.origin.x = v23;
          v80.origin.y = v25;
          v80.size.width = v27;
          v80.size.height = v29;
          Width = CGRectGetWidth(v80);
          v31 = [v20 layer];
          [v31 frame];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v81.origin.x = v33;
          v81.origin.y = v35;
          v81.size.width = v37;
          v81.size.height = v39;
          Height = CGRectGetHeight(v81);
          v41 = *(*v3 + 144);
          v42 = v41();
          v43 = (v41)();
          v45 = v44;
          v46 = (v41)(v43);
          v48 = v47;
          v49 = (v41)(v46);
          v51 = v50;
          v52 = *(*v3 + 216);
          if ((v52)(v49))
          {
            v56.n128_f64[0] = Height * v51;
            v55.n128_f64[0] = Width * v48;
            v54.n128_f64[0] = Height * v45;
            v53.n128_f64[0] = Width * v42;
          }

          else
          {
            v53.n128_u64[0] = 0;
            v54.n128_u64[0] = 0;
            v55.n128_f64[0] = Width;
            v56.n128_f64[0] = Height;
          }

          v65 = HeadTrackerAvailabilityDetail.rawValue.getter(v53, v54, v55, v56);
          v67 = v66;
          v69 = v68;
          v71 = v70;
          sub_100110A6C(v75);
          v77[6] = v75[6];
          v77[7] = v75[7];
          v78 = v76;
          v77[2] = v75[2];
          v77[3] = v75[3];
          v77[4] = v75[4];
          v77[5] = v75[5];
          v77[0] = v75[0];
          v77[1] = v75[1];
          v72 = v52();
          (*((swift_isaMask & *v13) + 0x1E0))(0x6361725464616548, 0xEB0000000072656BLL, v77, (v72 & 1) == 0, 0, v65, v67, v69, v71);

          goto LABEL_33;
        }
      }

LABEL_33:

      return;
    }

    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000F4758(v8, qword_10021C918);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "No face created", v10, 2u);
    }
  }

  else
  {
    if (qword_10021ACA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000F4758(v4, qword_10021C918);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Shouldn't be running when no head gestures are assigned.", v7, 2u);
    }

    [v1 stopRunning];
  }
}

unint64_t sub_100110368()
{
  result = qword_100217BD8;
  if (!qword_100217BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217BD8);
  }

  return result;
}

unint64_t sub_1001103C0()
{
  result = qword_100217BE0;
  if (!qword_100217BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217BE0);
  }

  return result;
}

unint64_t sub_100110418()
{
  result = qword_100217BE8;
  if (!qword_100217BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217BE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadGestureState.HeadState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadGestureState.HeadState(uint64_t result, unsigned int a2, unsigned int a3)
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