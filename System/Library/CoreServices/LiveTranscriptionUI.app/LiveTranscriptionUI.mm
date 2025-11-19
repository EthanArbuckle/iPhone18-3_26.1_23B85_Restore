id sub_100001C60()
{
  if (qword_100064588 != -1)
  {
    sub_100045384();
  }

  v1 = qword_100064580;

  return v1;
}

void sub_100001CA4(id a1)
{
  qword_100064580 = os_log_create("com.apple.Accessibility", "AXLiveTranscriptionUI");

  _objc_release_x1();
}

void sub_100001DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000020A8(uint64_t a1)
{
  v2 = sub_1000020F8();
  result = dlsym(v2, "AXHasCapability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100064590 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000020F8()
{
  v3[0] = 0;
  if (!qword_100064598)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000021F8;
    v3[4] = &unk_10005DB38;
    v3[5] = v3;
    v4 = off_10005DB20;
    v5 = 0;
    qword_100064598 = _sl_dlopen();
  }

  v0 = qword_100064598;
  v1 = v3[0];
  if (!qword_100064598)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000021F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100064598 = result;
  return result;
}

Class sub_10000226C(uint64_t a1)
{
  sub_1000020F8();
  result = objc_getClass("AXBackBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000453BC();
  }

  qword_1000645A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000022C4(uint64_t a1)
{
  sub_1000020F8();
  result = objc_getClass("AXUserEventTimer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000453E4();
  }

  qword_1000645A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for LTApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for LTApplicationDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

id variable initialization expression of AXLTProviderCaptionsView._provider()
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v1 = static AXLTCaptionsProvider.shared;

  return v1;
}

uint64_t variable initialization expression of AXLTSettingsManager.locale@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of AXLTCaptionsProvider.activeRequestType()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v0 = static AXLTSettingsManager.shared;
  v1 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  return ~*(v0 + v1) & 1;
}

id variable initialization expression of AXLTCaptionsProvider.transcription()
{
  v0 = objc_allocWithZone(AXLTLiveTranscription);

  return [v0 init];
}

id variable initialization expression of AXLTCaptionsProvider.dateFormatter()
{
  v0 = objc_allocWithZone(NSDateFormatter);

  return [v0 init];
}

id variable initialization expression of AXLTCaptionsProvider.lockScreenObserver()
{
  v0 = objc_allocWithZone(AXLTLockScreenObserver);

  return [v0 init];
}

uint64_t sub_100002840(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

int64x2_t variable initialization expression of AudioHistogramConfig._histogram()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v0[1].i64[0] = 16;
  result = vdupq_n_s64(0x3FB999999999999AuLL);
  v0[2] = result;
  v0[3] = result;
  v0[4] = result;
  v0[5] = result;
  v0[6] = result;
  v0[7] = result;
  v0[8] = result;
  v0[9] = result;
  return result;
}

uint64_t variable initialization expression of AXLTAudioHistogramViewGenerator.config()
{
  v0 = type metadata accessor for AudioHistogramConfig();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_100042454();
}

__n128 sub_100002994(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029A0(uint64_t a1, int a2)
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

uint64_t sub_1000029C0(uint64_t result, int a2, int a3)
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

__n128 sub_100002A00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002A0C(uint64_t a1, int a2)
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

uint64_t sub_100002A2C(uint64_t result, int a2, int a3)
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

void *sub_100002A68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_100002AAC(uint64_t a1, unint64_t *a2)
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

__n128 sub_100002B14(uint64_t a1, __int128 *a2)
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

uint64_t sub_100002B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100002B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002C0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v59 = a2;
  v50 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = type metadata accessor for DragGesture();
  v54 = *(v53 - 8);
  v4 = *(v54 + 64);
  __chkstk_darwin(v53);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v56 = *(v55 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v55);
  v51 = &v49 - v8;
  v57 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v58 = *(v57 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v57);
  v52 = &v49 - v10;
  v11 = sub_100003968(&qword_100062800, &qword_100047CE0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (&v49 - v14);
  v49 = sub_100003968(&qword_100062808, &qword_100047CE8);
  v16 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v18 = (&v49 - v17);
  *v18 = static Alignment.center.getter();
  v18[1] = v19;
  static Color.white.getter();
  *(a1 + 16);
  v20 = v18 + *(sub_100003968(&qword_100062810, &unk_100047CF0) + 44);
  v21 = Color.opacity(_:)();

  v22 = *(a1 + 8);
  v23 = v15 + *(v12 + 44);
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = v22;
  *(v23 + 1) = v22;
  *&v23[*(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)] = 256;
  *v15 = v21;
  v27 = *a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000039B0(v15, v20);
  v28 = (v20 + *(sub_100003968(&qword_100062820, &qword_100047D00) + 36));
  v29 = v62;
  *v28 = v61;
  v28[1] = v29;
  v28[2] = v63;
  v30 = *(a1 + 56);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = (v18 + *(sub_100003968(&qword_100062828, &qword_100047D08) + 36));
  v32 = v65;
  *v31 = v64;
  v31[1] = v32;
  v31[2] = v66;
  *(v18 + *(v49 + 36)) = 0;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v33 = swift_allocObject();
  v34 = *(a1 + 80);
  v33[5] = *(a1 + 64);
  v33[6] = v34;
  v35 = *(a1 + 112);
  v33[7] = *(a1 + 96);
  v33[8] = v35;
  v36 = *(a1 + 16);
  v33[1] = *a1;
  v33[2] = v36;
  v37 = *(a1 + 48);
  v33[3] = *(a1 + 32);
  v33[4] = v37;
  sub_100003930(a1, v60);
  sub_100003A28(&qword_100062830, &type metadata accessor for DragGesture);
  sub_100003A28(&qword_100062838, &type metadata accessor for DragGesture.Value);
  v38 = v51;
  v39 = v53;
  Gesture<>.onChanged(_:)();

  (*(v54 + 8))(v6, v39);
  v40 = swift_allocObject();
  v41 = *(a1 + 80);
  v40[5] = *(a1 + 64);
  v40[6] = v41;
  v42 = *(a1 + 112);
  v40[7] = *(a1 + 96);
  v40[8] = v42;
  v43 = *(a1 + 16);
  v40[1] = *a1;
  v40[2] = v43;
  v44 = *(a1 + 48);
  v40[3] = *(a1 + 32);
  v40[4] = v44;
  sub_100003930(a1, v60);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0);
  v45 = v52;
  v46 = v55;
  Gesture.onEnded(_:)();

  (*(v56 + 8))(v38, v46);
  static GestureMask.all.getter();
  sub_100003B08();
  sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8);
  v47 = v57;
  View.gesture<A>(_:including:)();
  (*(v58 + 8))(v45, v47);
  return sub_100003CE8(v18, &qword_100062808, &qword_100047CE8);
}

uint64_t sub_10000336C(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + 104);
  v16 = *(a2 + 120);
  v8 = *(a2 + 104);
  v11 = *(a2 + 120);
  v17 = v16;
  sub_100003C78(&v17, &v14);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v18.width = 0.0;
  v18.height = 0.0;
  if (CGSizeEqualToSize(v14, v18))
  {
    v9 = *(a2 + 24);
    v12 = *(a2 + 40);
    sub_100003968(&qword_100062888, &qword_100048A70);
    Binding.wrappedValue.getter();
    v19.width = 0.0;
    v19.height = 0.0;
    if (CGSizeEqualToSize(v14, v19))
    {
      v3 = *(a2 + 56);
    }

    else
    {
      v10 = *(a2 + 24);
      v13 = *(a2 + 40);
      Binding.wrappedValue.getter();
      v3 = v14;
    }

    v14 = v3;
    State.wrappedValue.setter();
  }

  sub_100003CE8(&v15, &qword_100062880, &unk_100047D20);
  DragGesture.Value.translation.getter();
  return sub_1000034CC(v4, v5, v6, *(a2 + 96));
}

uint64_t sub_1000034CC(double a1, double a2, double a3, double a4)
{
  v17 = *(v4 + 104);
  *&v18 = *(v4 + 120);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v19 = *(v4 + 40);
  v20 = v7;
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  sub_100003D48(&v20, &v14);

  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  v14 = v7;
  v15 = v6;
  v16 = *(v4 + 40);
  Binding.wrappedValue.setter();
  v8 = *(v4 + 80);
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  Binding.wrappedValue.getter();
  v9 = v15;
  if (v8 + v15 > a4)
  {
    v9 = a4 - v8;
  }

  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = *(v4 + 40);
  v15 = v9;
  Binding.wrappedValue.setter();
  sub_100003DA4(&v20);

  v10 = static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1000654E8;
  result = os_log_type_enabled(qword_1000654E8, v10);
  if (result)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *&v17 = v7;
    *(&v17 + 1) = v6;
    v18 = v19;
    Binding.wrappedValue.getter();
    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v10, "windowSize height: %f", v13, 0xCu);
  }

  return result;
}

void sub_1000036F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 120);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.setter();
  sub_10000375C();
}

void sub_10000375C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  v2 = NSStringFromCGSize(v4);
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = String._bridgeToObjectiveC()();
  [v1 setObject:v2 forKey:v3];

  [v1 synchronize];
}

uint64_t sub_100003888@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[5];
  v14[4] = v1[4];
  v14[5] = v3;
  v4 = v1[7];
  v14[6] = v1[6];
  v14[7] = v4;
  v5 = v1[1];
  v14[0] = *v1;
  v14[1] = v5;
  v6 = v1[3];
  v14[2] = v1[2];
  v14[3] = v6;
  v7 = swift_allocObject();
  v8 = v1[5];
  *(v7 + 5) = v1[4];
  *(v7 + 6) = v8;
  v9 = v1[7];
  *(v7 + 7) = v1[6];
  *(v7 + 8) = v9;
  v10 = v1[1];
  *(v7 + 1) = *v1;
  *(v7 + 2) = v10;
  v11 = v1[3];
  *(v7 + 3) = v1[2];
  *(v7 + 4) = v11;
  *a1 = sub_100003928;
  a1[1] = v7;
  return sub_100003930(v14, &v13);
}

uint64_t sub_100003968(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000039B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062800, &qword_100047CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003A70()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100003AC0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003B08()
{
  result = qword_100062848;
  if (!qword_100062848)
  {
    sub_100003AC0(&qword_100062808, &qword_100047CE8);
    sub_100003BC0();
    sub_100003E3C(&qword_100062868, &qword_100062870, &qword_100047D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062848);
  }

  return result;
}

unint64_t sub_100003BC0()
{
  result = qword_100062850;
  if (!qword_100062850)
  {
    sub_100003AC0(&qword_100062828, &qword_100047D08);
    sub_100003E3C(&qword_100062858, &qword_100062860, &qword_100047D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062850);
  }

  return result;
}

uint64_t sub_100003C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062890, &qword_100047D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003CE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003968(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003E3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100003E8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100003F04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100003F78()
{
  v1 = v0;
  v154 = type metadata accessor for UserInterfaceSizeClass();
  v152 = *(v154 - 8);
  v2 = *(v152 + 64);
  __chkstk_darwin(v154);
  v134 = &v120[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = sub_100003968(&qword_1000629A0, &unk_100048680);
  v4 = *(*(v153 - 8) + 64);
  v5 = __chkstk_darwin(v153);
  v128 = &v120[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v142 = &v120[-v8];
  v9 = __chkstk_darwin(v7);
  v130 = &v120[-v10];
  __chkstk_darwin(v9);
  v12 = &v120[-v11];
  v13 = type metadata accessor for EnvironmentValues();
  v151 = *(v13 - 8);
  v14 = *(v151 + 64);
  __chkstk_darwin(v13);
  v16 = &v120[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100003968(&qword_1000629A8, &qword_100047E40);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v125 = &v120[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v137 = &v120[-v22];
  v23 = __chkstk_darwin(v21);
  v129 = &v120[-v24];
  __chkstk_darwin(v23);
  v26 = &v120[-v25];
  v27 = sub_100003968(&qword_100062978, &qword_1000482D0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v122 = &v120[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v29);
  v33 = &v120[-v32];
  v34 = __chkstk_darwin(v31);
  v127 = &v120[-v35];
  v36 = __chkstk_darwin(v34);
  v38 = &v120[-v37];
  v39 = __chkstk_darwin(v36);
  v143 = &v120[-v40];
  v41 = __chkstk_darwin(v39);
  v140 = &v120[-v42];
  v43 = __chkstk_darwin(v41);
  v124 = &v120[-v44];
  v45 = __chkstk_darwin(v43);
  v132 = &v120[-v46];
  v47 = __chkstk_darwin(v45);
  v133 = &v120[-v48];
  v49 = __chkstk_darwin(v47);
  v138 = &v120[-v50];
  v51 = __chkstk_darwin(v49);
  v53 = &v120[-v52];
  __chkstk_darwin(v51);
  v55 = &v120[-v54];
  v149 = v1;
  v136 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__horizontalSizeClass;
  sub_100006098(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__horizontalSizeClass, v26, &qword_1000629A8, &qword_100047E40);
  v150 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v126 = v33;
  v144 = v13;
  v135 = v16;
  v131 = v38;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100006158(v26, v55);
  }

  else
  {
    v57 = *v26;
    static os_log_type_t.fault.getter();
    v58 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v151 + 8))(v16, v13);
  }

  v59 = v152;
  v60 = *(v152 + 104);
  v141 = enum case for UserInterfaceSizeClass.regular(_:);
  v61 = v154;
  v147 = v60;
  v148 = v152 + 104;
  v60(v53);
  v145 = *(v59 + 56);
  v146 = v59 + 56;
  v145(v53, 0, 1, v61);
  v62 = *(v153 + 48);
  sub_100006098(v55, v12, &qword_100062978, &qword_1000482D0);
  sub_100006098(v53, &v12[v62], &qword_100062978, &qword_1000482D0);
  v63 = *(v59 + 48);
  v64 = v63(v12, 1, v61);
  v139 = v59 + 48;
  if (v64 == 1)
  {
    sub_100003CE8(v53, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v55, &qword_100062978, &qword_1000482D0);
    v65 = v63;
    if (v63(&v12[v62], 1, v61) != 1)
    {
      v66 = v149;
      v71 = v151;
LABEL_20:
      v68 = v142;
      goto LABEL_21;
    }

    sub_100003CE8(v12, &qword_100062978, &qword_1000482D0);
    v66 = v149;
    v67 = v144;
    v68 = v142;
    v69 = v63;
  }

  else
  {
    v70 = v138;
    sub_100006098(v12, v138, &qword_100062978, &qword_1000482D0);
    v65 = v63;
    if (v63(&v12[v62], 1, v61) == 1)
    {
LABEL_19:
      v71 = v151;
      sub_100003CE8(v53, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v55, &qword_100062978, &qword_1000482D0);
      (*(v152 + 8))(v138, v61);
      v66 = v149;
      goto LABEL_20;
    }

    v72 = v152;
    v73 = v134;
    (*(v152 + 32))(v134, &v12[v62], v61);
    sub_100006100();
    v74 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = v154;
    v121 = v74;
    v75 = *(v72 + 8);
    v75(v73, v154);
    sub_100003CE8(v53, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v55, &qword_100062978, &qword_1000482D0);
    v75(v70, v61);
    sub_100003CE8(v12, &qword_100062978, &qword_1000482D0);
    v66 = v149;
    v67 = v144;
    v71 = v151;
    v68 = v142;
    v69 = v63;
    v76 = v140;
    if ((v121 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v77 = v129;
  sub_100006098(v66 + OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__verticalSizeClass, v129, &qword_1000629A8, &qword_100047E40);
  v78 = swift_getEnumCaseMultiPayload();
  v123 = v69;
  if (v78 == 1)
  {
    v79 = v133;
    sub_100006158(v77, v133);
  }

  else
  {
    v80 = *v77;
    static os_log_type_t.fault.getter();
    v81 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v82 = v135;
    EnvironmentValues.init()();
    v79 = v133;
    swift_getAtKeyPath();

    (*(v151 + 8))(v82, v67);
  }

  v83 = v130;
  v84 = v132;
  v147(v132, enum case for UserInterfaceSizeClass.compact(_:), v61);
  v145(v84, 0, 1, v61);
  v85 = *(v153 + 48);
  sub_100006098(v79, v83, &qword_100062978, &qword_1000482D0);
  sub_100006098(v84, v83 + v85, &qword_100062978, &qword_1000482D0);
  v69 = v123;
  if (v123(v83, 1, v61) != 1)
  {
    v86 = v124;
    sub_100006098(v83, v124, &qword_100062978, &qword_1000482D0);
    if (v69(v83 + v85, 1, v61) != 1)
    {
      v111 = v152;
      v112 = v134;
      (*(v152 + 32))(v134, v83 + v85, v61);
      sub_100006100();
      v113 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = v154;
      LODWORD(v138) = v113;
      v114 = *(v111 + 8);
      v114(v112, v154);
      sub_100003CE8(v132, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v133, &qword_100062978, &qword_1000482D0);
      v114(v86, v61);
      v71 = v151;
      sub_100003CE8(v83, &qword_100062978, &qword_1000482D0);
      v68 = v142;
      v67 = v144;
      v66 = v149;
      v76 = v140;
      if (v138)
      {
        v108 = 1;
        return v108 & 1;
      }

LABEL_22:
      v87 = v137;
      sub_100006098(v66 + v136, v137, &qword_1000629A8, &qword_100047E40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100006158(v87, v76);
      }

      else
      {
        v88 = *v87;
        static os_log_type_t.fault.getter();
        v89 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v90 = v135;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v71 + 8))(v90, v67);
      }

      v91 = v143;
      v147(v143, v141, v61);
      v145(v91, 0, 1, v61);
      v92 = *(v153 + 48);
      sub_100006098(v76, v68, &qword_100062978, &qword_1000482D0);
      sub_100006098(v91, v68 + v92, &qword_100062978, &qword_1000482D0);
      if (v69(v68, 1, v61) == 1)
      {
        sub_100003CE8(v91, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v76, &qword_100062978, &qword_1000482D0);
        if (v69(v68 + v92, 1, v61) == 1)
        {
          sub_100003CE8(v68, &qword_100062978, &qword_1000482D0);
LABEL_32:
          v101 = v125;
          sub_100006098(v149 + OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__verticalSizeClass, v125, &qword_1000629A8, &qword_100047E40);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v102 = v127;
            sub_100006158(v101, v127);
          }

          else
          {
            v103 = *v101;
            static os_log_type_t.fault.getter();
            v104 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            v105 = v135;
            EnvironmentValues.init()();
            v102 = v127;
            swift_getAtKeyPath();

            (*(v71 + 8))(v105, v144);
          }

          v83 = v128;
          v106 = v126;
          v147(v126, v141, v61);
          v145(v106, 0, 1, v61);
          v107 = *(v153 + 48);
          sub_100006098(v102, v83, &qword_100062978, &qword_1000482D0);
          sub_100006098(v106, v83 + v107, &qword_100062978, &qword_1000482D0);
          if (v69(v83, 1, v61) == 1)
          {
            sub_100003CE8(v106, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v102, &qword_100062978, &qword_1000482D0);
            if (v69(v83 + v107, 1, v61) == 1)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v109 = v122;
            sub_100006098(v83, v122, &qword_100062978, &qword_1000482D0);
            if (v69(v83 + v107, 1, v61) != 1)
            {
              v115 = v102;
              v116 = v152;
              v117 = v134;
              (*(v152 + 32))(v134, v83 + v107, v61);
              sub_100006100();
              v118 = v109;
              v108 = dispatch thunk of static Equatable.== infix(_:_:)();
              v119 = *(v116 + 8);
              v119(v117, v61);
              sub_100003CE8(v106, &qword_100062978, &qword_1000482D0);
              sub_100003CE8(v115, &qword_100062978, &qword_1000482D0);
              v119(v118, v61);
              sub_100003CE8(v83, &qword_100062978, &qword_1000482D0);
              return v108 & 1;
            }

            sub_100003CE8(v106, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v102, &qword_100062978, &qword_1000482D0);
            (*(v152 + 8))(v109, v61);
          }

          v94 = v83;
          goto LABEL_41;
        }
      }

      else
      {
        v93 = v131;
        sub_100006098(v68, v131, &qword_100062978, &qword_1000482D0);
        if (v69(v68 + v92, 1, v61) != 1)
        {
          v123 = v69;
          v95 = v152;
          v96 = v134;
          (*(v152 + 32))(v134, v68 + v92, v61);
          sub_100006100();
          v97 = dispatch thunk of static Equatable.== infix(_:_:)();
          v61 = v154;
          v98 = v97;
          v99 = v68;
          v100 = *(v95 + 8);
          v100(v96, v154);
          sub_100003CE8(v143, &qword_100062978, &qword_1000482D0);
          sub_100003CE8(v76, &qword_100062978, &qword_1000482D0);
          v100(v93, v61);
          v71 = v151;
          v69 = v123;
          sub_100003CE8(v99, &qword_100062978, &qword_1000482D0);
          if ((v98 & 1) == 0)
          {
LABEL_42:
            v108 = 0;
            return v108 & 1;
          }

          goto LABEL_32;
        }

        sub_100003CE8(v143, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v76, &qword_100062978, &qword_1000482D0);
        (*(v152 + 8))(v93, v61);
      }

      v94 = v68;
LABEL_41:
      sub_100003CE8(v94, &qword_1000629A0, &unk_100048680);
      goto LABEL_42;
    }

    v65 = v69;
    v53 = v132;
    v55 = v133;
    v138 = v86;
    v12 = v83;
    goto LABEL_19;
  }

  sub_100003CE8(v84, &qword_100062978, &qword_1000482D0);
  sub_100003CE8(v79, &qword_100062978, &qword_1000482D0);
  if (v69(v83 + v85, 1, v61) != 1)
  {
    v65 = v69;
    v12 = v83;
    v66 = v149;
    v71 = v151;
LABEL_21:
    sub_100003CE8(v12, &qword_1000629A0, &unk_100048680);
    v67 = v144;
    v69 = v65;
    v76 = v140;
    goto LABEL_22;
  }

LABEL_37:
  sub_100003CE8(v83, &qword_100062978, &qword_1000482D0);
  v108 = 1;
  return v108 & 1;
}

char *sub_1000051F4()
{
  v1 = sub_100003968(&qword_1000629C0, &qword_100047E48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - v4;
  v6 = sub_100003968(&qword_1000629C8, &qword_100047E50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__verticalSizeClass;
  *&v0[v11] = swift_getKeyPath();
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__horizontalSizeClass;
  *&v0[v12] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow_layoutMonitor;
  *&v0[v13] = [objc_allocWithZone(SBSSystemApertureLayoutMonitor) init];
  v14 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__foreheadRect;
  type metadata accessor for CGRect(0);
  v20 = 0u;
  v21 = 0u;
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v14], v10, v6);
  v15 = OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow__frames;
  *&v20 = &_swiftEmptyArrayStorage;
  sub_100003968(&qword_100062990, &qword_100047D60);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v15], v5, v1);
  *&v0[OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow_minimumForeheadHeight] = 0x4042AAAAAAAAAAABLL;
  v16 = type metadata accessor for ForeheadWindow();
  v19.receiver = v0;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "init");
  [*&v17[OBJC_IVAR____TtC19LiveTranscriptionUI14ForeheadWindow_layoutMonitor] addObserver:v17];
  return v17;
}

void sub_1000054D0(unint64_t a1)
{
  if (!AXDeviceHasJindo() || (sub_100003F78() & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v62 = size;
    v4 = v1;
LABEL_4:
    static Published.subscript.setter();
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&origin.x = &_swiftEmptyArrayStorage;
  v60 = v1;
  static Published.subscript.setter();
  v57 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = 0;
  v58 = a1 & 0xC000000000000001;
  v59 = a1;
  do
  {
    if (v58)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    [v7 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = static Published.subscript.modify();
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_100005F90(0, *(v20 + 2) + 1, 1, v20);
      *v19 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_100005F90((v22 > 1), v23 + 1, 1, v20);
      *v19 = v20;
    }

    a1 = v59;
    ++v6;
    *(v20 + 2) = v23 + 1;
    v24 = &v20[32 * v23];
    *(v24 + 4) = v10;
    *(v24 + 5) = v12;
    *(v24 + 6) = v14;
    *(v24 + 7) = v16;
    v17(&origin, 0);
  }

  while (v5 != v6);
LABEL_20:
  if (!v57)
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 != 2)
    {
      goto LABEL_22;
    }

LABEL_28:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v36 = *(a1 + 32);
    }

    v37 = v36;
    [v36 CGRectValue];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    if ((a1 & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_42:
        __break(1u);
        return;
      }

      v46 = *(a1 + 40);
    }

    v47 = v46;
    [v46 CGRectValue];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v63.origin.x = v39;
    v63.origin.y = v41;
    v63.size.width = v43;
    v63.size.height = v45;
    v65.origin.x = v49;
    v65.origin.y = v51;
    v65.size.width = v53;
    v65.size.height = v55;
    v64 = CGRectUnion(v63, v65);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    goto LABEL_36;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (v25 == 2)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v25 == 1)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(a1 + 32);
LABEL_26:
        v27 = v26;
        [v26 CGRectValue];
        x = v28;
        y = v30;
        width = v32;
        height = v34;

LABEL_36:
        swift_getKeyPath();
        swift_getKeyPath();
        origin.x = x;
        origin.y = y;
        v62.width = width;
        v62.height = height;
        v56 = v60;
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_38:
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }
}

id sub_10000596C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ForeheadWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ForeheadWindow()
{
  result = qword_100062960;
  if (!qword_100062960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005B14()
{
  sub_100005CE4(319, &qword_100062970, &qword_100062978, &qword_1000482D0, &type metadata accessor for Environment.Content);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100005C8C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100005CE4(319, &qword_100062988, &qword_100062990, &qword_100047D60, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100005C8C()
{
  if (!qword_100062980)
  {
    type metadata accessor for CGRect(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100062980);
    }
  }
}

void sub_100005CE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003AC0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100005D54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ForeheadWindow();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_100005D94@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100005E18(__int128 *a1, void **a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = *a1;
  v7 = a1[1];
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100005E90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100005F14(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

char *sub_100005F90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003968(&qword_100062998, &unk_100047E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_100006098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003968(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100006100()
{
  result = qword_1000629B0;
  if (!qword_1000629B0)
  {
    type metadata accessor for UserInterfaceSizeClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000629B0);
  }

  return result;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062978, &qword_1000482D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000061C8()
{
  result = qword_1000629B8;
  if (!qword_1000629B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000629B8);
  }

  return result;
}

char *sub_100006224(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003968(&qword_1000629D8, &unk_100047EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100006328()
{
  sub_1000063C4();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000654E8 = result;
  return result;
}

unint64_t sub_1000063C4()
{
  result = qword_100062AE0;
  if (!qword_100062AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062AE0);
  }

  return result;
}

uint64_t sub_100006410()
{
  v0 = type metadata accessor for DynamicTypeSize();
  sub_100007078(v0, accessibilityLayoutTextSize);
  v1 = sub_1000064FC(v0, accessibilityLayoutTextSize);
  v2 = enum case for DynamicTypeSize.accessibility1(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t accessibilityLayoutTextSize.unsafeMutableAddressor()
{
  if (qword_1000626F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DynamicTypeSize();

  return sub_1000064FC(v0, accessibilityLayoutTextSize);
}

uint64_t sub_1000064FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t isAccessibilityLayout(_:)(uint64_t a1)
{
  v2 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006710(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100006780(v5);
    v11 = 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (qword_1000626F8 != -1)
    {
      swift_once();
    }

    sub_1000064FC(v6, accessibilityLayoutTextSize);
    sub_1000067E8();
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v7 + 8))(v10, v6);
    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_100006710(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006780(uint64_t a1)
{
  v2 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000067E8()
{
  result = qword_100062AF0;
  if (!qword_100062AF0)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062AF0);
  }

  return result;
}

uint64_t imageViewForBundleId(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  if (!a2)
  {
    [objc_allocWithZone(UIImage) init];

    return Image.init(uiImage:)();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v8 == a2)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      v11 = type metadata accessor for DynamicTypeSize();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      v12 = iconForBundleId(_:dynamicTypeSize:)(a1, a2, v7);
      sub_100006780(v7);
      if (!v12)
      {
        [objc_allocWithZone(UIImage) init];
      }

      return Image.init(uiImage:)();
    }
  }

  return Image.init(systemName:)();
}

id iconForBundleId(_:dynamicTypeSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003968(&qword_100062AF8, &qword_100047EE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v52 - v17;
  if (!a2)
  {
    return 0;
  }

  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v19 = objc_opt_self();
  if (qword_100062778 != -1)
  {
    v51 = v19;
    swift_once();
    v19 = v51;
  }

  v20 = [v19 preferredFontForTextStyle:titleFontStyle];
  [v20 pointSize];
  v22 = v21;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v23 == a2)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      v40 = objc_allocWithZone(ISIcon);
      v41 = String._bridgeToObjectiveC()();
      v42 = [v40 initWithBundleIdentifier:v41];

      v43 = v22 + v22;
      sub_100006710(a3, v9);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_100006780(v9);
      }

      else
      {
        (*(v11 + 32))(v14, v9, v10);
        if (qword_1000626F8 != -1)
        {
          swift_once();
        }

        sub_1000064FC(v10, accessibilityLayoutTextSize);
        sub_1000067E8();
        v44 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v11 + 8))(v14, v10);
        if ((v44 & 1) == 0)
        {
          v43 = v22 * 4.0;
        }
      }

      v45 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v43 scale:{v43, 1.0}];
      v46 = [v42 prepareImageForDescriptor:v45];
      if (v46)
      {
        v47 = v46;
        result = [v46 CGImage];
        if (result)
        {
          v48 = result;
          [v47 scale];
          v50 = [objc_allocWithZone(UIImage) initWithCGImage:v48 scale:0 orientation:v49];

          return v50;
        }

        goto LABEL_28;
      }

      return 0;
    }
  }

  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v18, 1, 1, v25);
  v27 = String._bridgeToObjectiveC()();
  v29 = 0;
  if ((*(v26 + 48))(v18, 1, v25) != 1)
  {
    URL._bridgeToObjectiveC()(v28);
    v29 = v30;
    (*(v26 + 8))(v18, v25);
  }

  v31 = [objc_allocWithZone(ISSymbol) initWithSymbolName:v27 bundleURL:v29];

  v32 = [v31 imageForSize:v22 scale:{v22, 1.0}];
  if (!v32)
  {

    return 0;
  }

  v33 = v32;
  result = [v32 CGImage];
  if (result)
  {
    v35 = result;
    [v33 scale];
    v37 = [objc_allocWithZone(UIImage) initWithCGImage:v35 scale:0 orientation:v36];

    v38 = [objc_opt_self() blueColor];
    v39 = [v37 imageWithTintColor:v38 renderingMode:1];

    return v39;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_100007078(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000710C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100007124(uint64_t a1, uint64_t a2)
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

uint64_t sub_100007140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100007188(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000720C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  *a3 = static VerticalAlignment.top.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_100003968(&qword_100062B00, &qword_100047FE0);
  sub_1000073FC(a2, a1, a3 + *(v9 + 44));
  v10 = *(a2 + 72);
  v11 = static Edge.Set.all.getter();
  v12 = a3 + *(sub_100003968(&qword_100062B08, &qword_100047FE8) + 36);
  *v12 = v11;
  *(v12 + 8) = 0x4020000000000000;
  *(v12 + 16) = v10;
  *(v12 + 24) = 0x4020000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  (*(v7 + 16))(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v13 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 3) = *(a2 + 32);
  *(v14 + 4) = v15;
  v16 = *(a2 + 80);
  *(v14 + 5) = *(a2 + 64);
  *(v14 + 6) = v16;
  v17 = *(a2 + 16);
  *(v14 + 1) = *a2;
  *(v14 + 2) = v17;
  (*(v7 + 32))(&v14[v13], &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v18 = (a3 + *(sub_100003968(&qword_100062B10, &unk_100047FF0) + 36));
  *v18 = sub_100008228;
  v18[1] = v14;
  v18[2] = 0;
  v18[3] = 0;
  return sub_100008104(a2, v20);
}

uint64_t sub_1000073FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v114 = a3;
  v4 = sub_100003968(&qword_100062B20, &qword_100048000);
  v109 = *(v4 - 8);
  v110 = v4;
  v5 = *(v109 + 64);
  __chkstk_darwin(v4);
  v101 = (&v94 - v6);
  v7 = sub_100003968(&qword_100062B28, &qword_100048008);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v113 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = &v94 - v11;
  v12 = type metadata accessor for ButtonView();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v112 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v111 = &v94 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v94 - v19;
  __chkstk_darwin(v18);
  v22 = &v94 - v21;
  v23 = sub_100003968(&qword_100062B30, &unk_100048010);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v100 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v117 = (&v94 - v28);
  __chkstk_darwin(v27);
  v30 = &v94 - v29;
  v146 = *a1;
  v147 = *(a1 + 16);
  v127 = *a1;
  LOBYTE(v128) = *(a1 + 16);
  v102 = sub_100003968(&qword_100062B38, &qword_1000493B0);
  Binding.projectedValue.getter();
  v31 = v140;
  v119 = v139;
  LODWORD(v118) = v141;
  v32 = swift_allocObject();
  v33 = *(a1 + 48);
  v32[3] = *(a1 + 32);
  v32[4] = v33;
  v34 = *(a1 + 80);
  v32[5] = *(a1 + 64);
  v32[6] = v34;
  v35 = *(a1 + 16);
  v32[1] = *a1;
  v32[2] = v35;
  v120 = xmmword_100047F00;
  *v30 = xmmword_100047F00;
  LOBYTE(v139) = 0;
  sub_100008104(a1, &v127);
  State.init(wrappedValue:)();
  v36 = *(&v127 + 1);
  v30[96] = v127;
  *(v30 + 13) = v36;
  v139 = 0;
  State.init(wrappedValue:)();
  v37 = *(&v127 + 1);
  *(v30 + 14) = v127;
  *(v30 + 15) = v37;
  v139 = 0;
  State.init(wrappedValue:)();
  v38 = *(&v127 + 1);
  *(v30 + 16) = v127;
  *(v30 + 17) = v38;
  v115 = v12;
  v39 = &v30[*(v12 + 56)];
  AccessibilityFocusState.init<>()();
  v30[16] = 4;
  *(v30 + 6) = sub_1000082EC;
  *(v30 + 7) = v32;
  *(v30 + 3) = v119;
  *(v30 + 4) = v31;
  v30[40] = v118;
  *(v30 + 8) = 0xD000000000000010;
  *(v30 + 9) = 0x800000010004A1F0;
  *(v30 + 10) = 0xD000000000000010;
  *(v30 + 11) = 0x800000010004A1F0;
  v145 = *(a1 + 80);
  v127 = *(a1 + 80);
  v40 = sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v99 = v23;
  v41 = *(v23 + 36);
  v118 = v30;
  v42 = &v30[v41];
  v43 = v131;
  *v42 = v130;
  *(v42 + 1) = v43;
  *(v42 + 2) = v132;
  GeometryProxy.size.getter();
  v44 = *(a1 + 72) + *(a1 + 72);
  v45 = *(a1 + 56);
  v127 = v145;
  v98 = v40;
  State.wrappedValue.getter();
  v46 = *(a1 + 64);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v106 = v135;
  v107 = v133;
  v104 = v138;
  v105 = v137;
  v150 = 1;
  v149 = v134;
  v148 = v136;
  v127 = v146;
  LOBYTE(v128) = v147;
  Binding.projectedValue.getter();
  v47 = v139;
  v48 = v140;
  LOBYTE(v12) = v141;
  *v22 = v120;
  LOBYTE(v139) = 0;
  State.init(wrappedValue:)();
  v49 = *(&v127 + 1);
  v22[96] = v127;
  *(v22 + 13) = v49;
  v139 = 0;
  State.init(wrappedValue:)();
  v50 = *(&v127 + 1);
  *(v22 + 14) = v127;
  *(v22 + 15) = v50;
  v139 = 0;
  State.init(wrappedValue:)();
  v51 = *(&v127 + 1);
  *(v22 + 16) = v127;
  *(v22 + 17) = v51;
  v52 = v115;
  v53 = &v22[*(v115 + 56)];
  AccessibilityFocusState.init<>()();
  v22[16] = 0;
  *(v22 + 6) = nullsub_1;
  *(v22 + 7) = 0;
  *(v22 + 3) = v47;
  *(v22 + 4) = v48;
  v22[40] = v12;
  *(v22 + 8) = 0x69662E6573756170;
  *(v22 + 9) = 0xEA00000000006C6CLL;
  *(v22 + 10) = 0x69662E6573756170;
  *(v22 + 11) = 0xEA00000000006C6CLL;
  v119 = v22;
  v127 = v146;
  LOBYTE(v128) = v147;
  Binding.projectedValue.getter();
  v54 = v139;
  v55 = v140;
  LOBYTE(v12) = v141;
  *v20 = v120;
  LOBYTE(v139) = 0;
  State.init(wrappedValue:)();
  v56 = *(&v127 + 1);
  v20[96] = v127;
  *(v20 + 13) = v56;
  v139 = 0;
  State.init(wrappedValue:)();
  v57 = *(&v127 + 1);
  *(v20 + 14) = v127;
  *(v20 + 15) = v57;
  v139 = 0;
  State.init(wrappedValue:)();
  v58 = *(&v127 + 1);
  *(v20 + 16) = v127;
  *(v20 + 17) = v58;
  v59 = &v20[*(v52 + 56)];
  AccessibilityFocusState.init<>()();
  v20[16] = 1;
  *(v20 + 6) = nullsub_1;
  *(v20 + 7) = 0;
  *(v20 + 3) = v54;
  *(v20 + 4) = v55;
  v20[40] = v12;
  *(v20 + 8) = 0x6C6C69662E63696DLL;
  *(v20 + 9) = 0xE800000000000000;
  *(v20 + 10) = 0x6C6C69662E63696DLL;
  *(v20 + 11) = 0xE800000000000000;
  v103 = v20;
  v60 = *(a1 + 40);
  if (v60)
  {
    v61 = *(a1 + 48);

    GeometryProxy.size.getter();
    v127 = v145;
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v116 = v139;
    v96 = v143;
    v97 = v141;
    v95 = v144;
    v126 = 1;
    v125 = v140;
    v124 = v142;
    v127 = v146;
    LOBYTE(v128) = v147;
    Binding.projectedValue.getter();
    v62 = v121;
    v63 = v122;
    v64 = v123;
    v65 = swift_allocObject();
    *(v65 + 16) = v60;
    *(v65 + 24) = v61;
    v94 = v61;
    v66 = v117;
    *v117 = v120;
    LOBYTE(v121) = 0;

    State.init(wrappedValue:)();
    v67 = *(&v127 + 1);
    *(v66 + 96) = v127;
    *(v66 + 13) = v67;
    v121 = 0;
    State.init(wrappedValue:)();
    v68 = *(&v127 + 1);
    *(v66 + 14) = v127;
    *(v66 + 15) = v68;
    v121 = 0;
    State.init(wrappedValue:)();
    v69 = *(&v127 + 1);
    *(v66 + 16) = v127;
    *(v66 + 17) = v69;
    v70 = v66 + *(v115 + 56);
    AccessibilityFocusState.init<>()();
    *(v66 + 16) = 3;
    *(v66 + 6) = sub_10000840C;
    *(v66 + 7) = v65;
    *(v66 + 3) = v62;
    *(v66 + 4) = v63;
    *(v66 + 40) = v64;
    *(v66 + 8) = 0xD000000000000028;
    *(v66 + 9) = 0x800000010004A210;
    *(v66 + 10) = 0xD000000000000028;
    *(v66 + 11) = 0x800000010004A210;
    v127 = v145;
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v71 = v100;
    v72 = (v66 + *(v99 + 36));
    v73 = v128;
    *v72 = v127;
    v72[1] = v73;
    v72[2] = v129;
    LOBYTE(v62) = v126;
    v74 = v125;
    LOBYTE(v63) = v124;
    sub_100006098(v66, v71, &qword_100062B30, &unk_100048010);
    v75 = v101;
    *v101 = 0;
    *(v75 + 8) = v62;
    *(v75 + 16) = v116;
    *(v75 + 24) = v74;
    v76 = v96;
    *(v75 + 32) = v97;
    *(v75 + 40) = v63;
    v77 = v95;
    *(v75 + 48) = v76;
    *(v75 + 56) = v77;
    v78 = sub_100003968(&qword_100062B48, &qword_100048028);
    sub_100006098(v71, v75 + *(v78 + 48), &qword_100062B30, &unk_100048010);
    sub_100008434(v60);
    sub_100003CE8(v66, &qword_100062B30, &unk_100048010);
    sub_100003CE8(v71, &qword_100062B30, &unk_100048010);
    v79 = v108;
    sub_100008444(v75, v108);
    v80 = v79;
    (*(v109 + 56))(v79, 0, 1, v110);
    v81 = v66;
  }

  else
  {
    v80 = v108;
    (*(v109 + 56))();
    v81 = v117;
  }

  sub_100006098(v118, v81, &qword_100062B30, &unk_100048010);
  v82 = v150;
  v83 = v149;
  LODWORD(v120) = v148;
  v84 = v111;
  sub_100008314(v119, v111);
  v85 = v103;
  v86 = v112;
  sub_100008314(v103, v112);
  v87 = v113;
  sub_100006098(v80, v113, &qword_100062B28, &qword_100048008);
  v88 = v114;
  sub_100006098(v81, v114, &qword_100062B30, &unk_100048010);
  v89 = sub_100003968(&qword_100062B40, &qword_100048020);
  v90 = v88 + v89[12];
  *v90 = 0;
  *(v90 + 8) = v82;
  v91 = v106;
  *(v90 + 16) = v107;
  *(v90 + 24) = v83;
  *(v90 + 32) = v91;
  *(v90 + 40) = v120;
  v92 = v104;
  *(v90 + 48) = v105;
  *(v90 + 56) = v92;
  sub_100008314(v84, v88 + v89[16]);
  sub_100008314(v86, v88 + v89[20]);
  sub_100006098(v87, v88 + v89[24], &qword_100062B28, &qword_100048008);
  sub_100003CE8(v80, &qword_100062B28, &qword_100048008);
  sub_100008378(v85);
  sub_100008378(v119);
  sub_100003CE8(v118, &qword_100062B30, &unk_100048010);
  sub_100003CE8(v87, &qword_100062B28, &qword_100048008);
  sub_100008378(v86);
  sub_100008378(v84);
  return sub_100003CE8(v117, &qword_100062B30, &unk_100048010);
}

uint64_t sub_100008004(uint64_t a1)
{
  GeometryProxy.size.getter();
  v3 = *(a1 + 80);
  sub_100003968(&qword_100062B18, &unk_100049360);
  return State.wrappedValue.setter();
}

uint64_t sub_10000806C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[3];
  v12[2] = v1[2];
  v12[3] = v3;
  v4 = v1[5];
  v12[4] = v1[4];
  v12[5] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  *(v6 + 3) = v1[2];
  *(v6 + 4) = v7;
  v8 = v1[5];
  *(v6 + 5) = v1[4];
  *(v6 + 6) = v8;
  v9 = v1[1];
  *(v6 + 1) = *v1;
  *(v6 + 2) = v9;
  *a1 = sub_1000080FC;
  a1[1] = v6;
  return sub_100008104(v12, &v11);
}

uint64_t sub_10000813C()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 6);

  if (*(v0 + 7))
  {
    v8 = *(v0 + 8);
  }

  v9 = (v3 + 112) & ~v3;
  v10 = *(v0 + 13);

  (*(v2 + 8))(&v0[v9], v1);

  return _swift_deallocObject(v0, v9 + v4, v3 | 7);
}

uint64_t sub_100008228()
{
  v1 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  return sub_100008004(v0 + 16);
}

uint64_t sub_10000828C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  if (v0[7])
  {
    v4 = v0[8];
  }

  v5 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000082EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_100008314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008378(uint64_t a1)
{
  v2 = type metadata accessor for ButtonView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000083D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000840C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100008434(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062B20, &qword_100048000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000084B8()
{
  result = qword_100062B50;
  if (!qword_100062B50)
  {
    sub_100003AC0(&qword_100062B58, &unk_100048030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062B50);
  }

  return result;
}

uint64_t sub_100008540(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100008610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100062B60, &unk_1000484D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AXLTTitleView()
{
  result = qword_100062BC0;
  if (!qword_100062BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000870C()
{
  type metadata accessor for AXLTCaption();
  if (v0 <= 0x3F)
  {
    sub_1000088D4(319, &qword_100062BD0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100008888(319, &qword_100062BD8);
      if (v2 <= 0x3F)
      {
        sub_100008888(319, &qword_100062BE0);
        if (v3 <= 0x3F)
        {
          sub_1000088D4(319, &qword_100062BE8, sub_100008938, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AudioHistogramConfig();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100008888(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000088D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100008938()
{
  result = qword_100062BF0;
  if (!qword_100062BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100062BF0);
  }

  return result;
}

uint64_t sub_1000089A0()
{
  v1 = v0;
  v2 = type metadata accessor for AXLTTitleView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003968(&qword_100062C38, &qword_1000480B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = &v8[*(sub_100003968(&qword_100062C40, &qword_1000480C0) + 44)];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4018000000000000;
  v9[16] = 0;
  v10 = sub_100003968(&qword_100062C48, &qword_1000480C8);
  sub_100008D54(v0, &v9[*(v10 + 44)]);
  sub_10000ACD0(v0, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_10000AD38(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v8[*(sub_100003968(&qword_100062C58, &qword_1000480D8) + 36)];
  *v13 = sub_10000AD9C;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = [objc_opt_self() defaultCenter];
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  v15 = &v8[*(v5 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  sub_10000ACD0(v1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_10000AD38(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11);
  v17 = &v8[*(v5 + 56)];
  *v17 = sub_10000ADFC;
  v17[1] = v16;
  v23 = *v1;
  v18 = v23;
  sub_10000ACD0(v1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_10000AD38(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v11);
  type metadata accessor for AXLTCaption();
  sub_100003E3C(&qword_100062C60, &qword_100062C38, &qword_1000480B8);
  sub_10000B70C(&qword_100062C68, &type metadata accessor for AXLTCaption);
  v20 = v18;
  View.onChange<A>(of:initial:_:)();

  return sub_100003CE8(v8, &qword_100062C38, &qword_1000480B8);
}

uint64_t sub_100008D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v3 = type metadata accessor for AXLTTitleView();
  v162 = *(v3 - 8);
  v4 = *(v162 + 64);
  __chkstk_darwin(v3);
  v163 = v5;
  v164 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_100003968(&qword_100062C80, &qword_1000480F8);
  v6 = *(*(v168 - 8) + 64);
  v7 = __chkstk_darwin(v168);
  v167 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v166 = &v161 - v9;
  v10 = type metadata accessor for DynamicTypeSize();
  v182 = *(v10 - 8);
  v183 = v10;
  v11 = *(v182 + 64);
  v12 = __chkstk_darwin(v10);
  v181 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v180 = &v161 - v14;
  v170 = sub_100003968(&qword_100062C88, &qword_100048100);
  v15 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v170);
  v184 = &v161 - v16;
  v17 = sub_100003968(&qword_100062C90, &qword_100048108);
  v171 = *(v17 - 8);
  v172 = v17;
  v18 = *(v171 + 64);
  __chkstk_darwin(v17);
  v169 = &v161 - v19;
  v173 = sub_100003968(&qword_100062C98, &qword_100048110);
  v20 = *(*(v173 - 8) + 64);
  v21 = __chkstk_darwin(v173);
  v174 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v185 = &v161 - v24;
  __chkstk_darwin(v23);
  v187 = &v161 - v25;
  v179 = sub_100003968(&qword_100062CA0, &qword_100048118);
  v26 = *(*(v179 - 8) + 64);
  v27 = __chkstk_darwin(v179);
  v29 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v165 = &v161 - v30;
  v176 = sub_100003968(&qword_100062CA8, &qword_100048120);
  v31 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v178 = &v161 - v32;
  v33 = type metadata accessor for Image.ResizingMode();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_100003968(&qword_100062CB0, &qword_100048128);
  v38 = *(*(v177 - 8) + 64);
  v39 = __chkstk_darwin(v177);
  v41 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v161 - v42;
  v44 = sub_100003968(&qword_100062CB8, &unk_100048130);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v186 = &v161 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v189 = &v161 - v48;
  sub_10000A314(0, 0, 0, 0);
  v188 = a1;
  if (!v49)
  {
    v165 = v3;
    v58 = (a1 + *(v3 + 40));
    v60 = *v58;
    v59 = v58[1];
    *&v214 = v60;
    *(&v214 + 1) = v59;
    sub_100003968(&qword_100062C70, &qword_1000480E8);
    State.wrappedValue.getter();
    Image.init(uiImage:)();
    (*(v34 + 104))(v37, enum case for Image.ResizingMode.stretch(_:), v33);
    v61 = Image.resizable(capInsets:resizingMode:)();

    (*(v34 + 8))(v37, v33);
    if (qword_100062788 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

  v50 = v3;
  v51 = Image.init(systemName:)();
  v52 = *a1;
  v53 = dispatch thunk of AXLTCaption.text.getter();
  v55 = v54;
  if (v53 == placeholderPausedText.getter() && v55 == v56)
  {
    v57 = v50;
LABEL_5:

    goto LABEL_11;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v57 = v50;
  if (v66)
  {
    goto LABEL_11;
  }

  v155 = dispatch thunk of AXLTCaption.placeholder.getter();
  v157 = v156;
  if (v155 == placeholderPausedText.getter() && v157 == v158)
  {
    goto LABEL_5;
  }

  v159 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v159 & 1) == 0)
  {
    v67 = static Color.blue.getter();
    goto LABEL_12;
  }

LABEL_11:
  v67 = static Color.gray.getter();
LABEL_12:
  v68 = v67;
  KeyPath = swift_getKeyPath();
  v214 = v51;
  LOWORD(v215) = 1;
  *(&v215 + 1) = KeyPath;
  *&v216 = v68;
  sub_100003968(&qword_100062CF0, &qword_100048148);
  sub_10000B534();
  View.accessibility(identifier:)();

  v70 = v165;
  ModifiedContent<>.accessibility(hidden:)();
  sub_100003CE8(v29, &qword_100062CA0, &qword_100048118);
  sub_100006098(v70, v178, &qword_100062CA0, &qword_100048118);
  swift_storeEnumTagMultiPayload();
  sub_10000B5EC(&qword_100062CE0, &qword_100062CA0, &qword_100048118, sub_10000B534);
  sub_10000B5EC(&qword_100062D10, &qword_100062CB0, &qword_100048128, sub_10000B424);
  _ConditionalContent<>.init(storage:)();
  sub_100003CE8(v70, &qword_100062CA0, &qword_100048118);
  while (1)
  {
    v71 = v188;
    v72 = *v188;
    *&v214 = AXLTCaption.appName.getter();
    *(&v214 + 1) = v73;
    v177 = sub_10000B6A0();
    v74 = Text.init<A>(_:)();
    v76 = v75;
    v78 = v77;
    v79 = (v71 + *(v57 + 8));
    v81 = *v79;
    v80 = v79[1];
    *&v214 = v81;
    *(&v214 + 1) = v80;
    sub_100003968(&qword_100062C78, &qword_1000480F0);
    State.wrappedValue.getter();
    v82 = Text.foregroundColor(_:)();
    v178 = v83;
    v179 = v82;
    v85 = v84;
    v87 = v86;

    sub_10000B6F4(v74, v76, v78 & 1);

    v88 = (v71 + *(v57 + 9));
    v90 = *v88;
    v89 = v88[1];
    *&v214 = v90;
    *(&v214 + 1) = v89;
    sub_100003968(&qword_100062D20, &qword_100048158);
    State.wrappedValue.getter();
    v91 = v179;
    v41 = Text.font(_:)();
    v93 = v92;
    v95 = v94;
    v97 = v96;

    sub_10000B6F4(v91, v85, v87 & 1);

    v43 = swift_getKeyPath();
    v225 = v95 & 1;
    v223 = 0;
    *&v214 = v41;
    v179 = v93;
    *(&v214 + 1) = v93;
    LODWORD(v178) = v95 & 1;
    LOBYTE(v215) = v95 & 1;
    *(&v215 + 1) = *v224;
    DWORD1(v215) = *&v224[3];
    *(&v215 + 1) = v97;
    *&v216 = 0x3FE999999999999ALL;
    *(&v216 + 1) = v43;
    *&v217 = 1;
    BYTE8(v217) = 0;
    v98 = v182;
    v99 = v183;
    v100 = *(v182 + 104);
    v101 = v180;
    v100(v180, enum case for DynamicTypeSize.xSmall(_:), v183);
    v102 = v181;
    v100(v181, enum case for DynamicTypeSize.accessibility3(_:), v99);
    sub_10000B70C(&qword_100062AF0, &type metadata accessor for DynamicTypeSize);
    v61 = v99;
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      break;
    }

    __break(1u);
LABEL_32:
    swift_once();
LABEL_7:
    v62 = objc_opt_self();
    if (qword_100062778 != -1)
    {
      swift_once();
    }

    v63 = titleFontStyle;
    v64 = [v62 preferredFontForTextStyle:titleFontStyle];
    [v64 lineHeight];

    v65 = [v62 preferredFontForTextStyle:v63];
    [v65 lineHeight];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v204) = 1;
    *&v226[19] = v227;
    *&v226[11] = *&v226[35];
    *&v226[3] = *&v226[27];
    *v213 = v61;
    *&v213[8] = 0;
    *&v213[16] = 1;
    *&v213[18] = *v226;
    *&v213[34] = *&v226[8];
    *&v213[50] = *&v226[16];
    *&v213[64] = *(&v227 + 1);
    sub_100003968(&qword_100062CC0, &qword_100048C00);
    sub_10000B424();
    View.accessibility(identifier:)();
    v216 = *&v213[32];
    v217 = *&v213[48];
    *&v218 = *&v213[64];
    v214 = *v213;
    v215 = *&v213[16];
    sub_100003CE8(&v214, &qword_100062CC0, &qword_100048C00);
    ModifiedContent<>.accessibility(hidden:)();
    sub_100003CE8(v41, &qword_100062CB0, &qword_100048128);
    sub_100006098(v43, v178, &qword_100062CB0, &qword_100048128);
    swift_storeEnumTagMultiPayload();
    sub_10000B5EC(&qword_100062CE0, &qword_100062CA0, &qword_100048118, sub_10000B534);
    sub_10000B5EC(&qword_100062D10, &qword_100062CB0, &qword_100048128, sub_10000B424);
    _ConditionalContent<>.init(storage:)();
    sub_100003CE8(v43, &qword_100062CB0, &qword_100048128);
    v57 = v165;
  }

  v176 = v97;
  v103 = *(v98 + 32);
  v104 = v166;
  v103(v166, v101, v99);
  v180 = v41;
  v105 = v168;
  v103((v104 + *(v168 + 48)), v102, v99);
  v181 = v43;
  v106 = v167;
  sub_100006098(v104, v167, &qword_100062C80, &qword_1000480F8);
  v107 = *(v105 + 48);
  v103(v184, v106, v99);
  v108 = *(v98 + 8);
  v108(v106 + v107, v99);
  sub_10000BB84(v104, v106, &qword_100062C80, &qword_1000480F8);
  v109 = *(v105 + 48);
  v110 = v170;
  v111 = v184;
  v103(&v184[*(v170 + 36)], v106 + v109, v99);
  v108(v106, v99);
  v112 = sub_100003968(&qword_100062D28, &qword_100048190);
  v113 = sub_10000B754();
  v114 = sub_100003E3C(&qword_100062D58, &qword_100062C88, &qword_100048100);
  v115 = v169;
  View.dynamicTypeSize<A>(_:)();
  sub_100003CE8(v111, &qword_100062C88, &qword_100048100);
  sub_10000B6F4(v180, v179, v178);

  *&v214 = v112;
  *(&v214 + 1) = v110;
  *&v215 = v113;
  *(&v215 + 1) = v114;
  swift_getOpaqueTypeConformance2();
  v116 = v172;
  View.accessibility(identifier:)();
  (*(v171 + 8))(v115, v116);
  v117 = v188;
  v118 = *(v188 + 8);
  if (v118 != 1 && *(v188 + 8))
  {
    v119 = 0;
    v120 = 0xE000000000000000;
  }

  else
  {
    v119 = static AXLTUtilities.AXLTLocString(_:)();
  }

  *&v214 = v119;
  *(&v214 + 1) = v120;
  v121 = Text.init<A>(_:)();
  v123 = v122;
  v125 = v124;
  v126 = v185;
  ModifiedContent<>.accessibility(hint:)();
  sub_10000B6F4(v121, v123, v125 & 1);

  sub_100003CE8(v126, &qword_100062C98, &qword_100048110);
  if ((v118 & 0xFE) == 2 || *(v117 + 16) < 1)
  {
    sub_10000B890(&v214);
  }

  else
  {
    v127 = v164;
    sub_10000ACD0(v117, v164);
    v128 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v129 = swift_allocObject();
    sub_10000AD38(v127, v129 + v128);
    sub_10000A620();
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v130 = objc_opt_self();
    if (qword_100062778 != -1)
    {
      v160 = v130;
      swift_once();
      v130 = v160;
    }

    v131 = [v130 preferredFontForTextStyle:titleFontStyle];
    [v131 lineHeight];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v132 = v228;
    v133 = v230;
    v134 = v232;
    v135 = v233;
    v194 = 0;
    v193 = v229;
    v192 = v231;
    v136 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v214) = 0;
    v191 = 1;
    *&v195 = sub_10000BAA8;
    *(&v195 + 1) = v129;
    LOBYTE(v196) = v194;
    *(&v196 + 1) = v132;
    LOBYTE(v197) = v193;
    *(&v197 + 1) = v133;
    LOBYTE(v198) = v192;
    *(&v198 + 1) = v134;
    *&v199 = v135;
    BYTE8(v199) = v136;
    *&v200 = v137;
    *(&v200 + 1) = v138;
    *&v201 = v139;
    *(&v201 + 1) = v140;
    LOBYTE(v202) = 0;
    *&v190[55] = v198;
    *&v190[39] = v197;
    *&v190[23] = v196;
    *&v190[7] = v195;
    v190[119] = 0;
    *&v190[103] = v201;
    *&v190[87] = v200;
    *&v190[71] = v199;
    *&v204 = sub_10000BAA8;
    *(&v204 + 1) = v129;
    LOBYTE(v205) = v194;
    *(&v205 + 1) = v132;
    LOBYTE(v206) = v193;
    *(&v206 + 1) = v133;
    LOBYTE(v207) = v192;
    *(&v207 + 1) = v134;
    *&v208 = v135;
    BYTE8(v208) = v136;
    *&v209 = v137;
    *(&v209 + 1) = v138;
    *&v210 = v139;
    *(&v210 + 1) = v140;
    LOBYTE(v211) = 0;
    sub_100006098(&v195, &v214, &qword_100062D70, &qword_1000481B8);
    sub_100003CE8(&v204, &qword_100062D70, &qword_1000481B8);
    *&v213[73] = *&v190[64];
    *&v213[89] = *&v190[80];
    *&v213[105] = *&v190[96];
    *&v213[9] = *v190;
    *&v213[25] = *&v190[16];
    *&v213[41] = *&v190[32];
    *v213 = 0;
    v213[8] = 1;
    *&v213[121] = *&v190[112];
    *&v213[57] = *&v190[48];
    nullsub_1(v213);
    v220 = *&v213[96];
    v221 = *&v213[112];
    v222 = v213[128];
    v216 = *&v213[32];
    v217 = *&v213[48];
    v218 = *&v213[64];
    v219 = *&v213[80];
    v214 = *v213;
    v215 = *&v213[16];
  }

  v141 = v186;
  sub_100006098(v189, v186, &qword_100062CB8, &unk_100048130);
  v142 = v187;
  v143 = v174;
  sub_10000B8BC(v187, v174);
  v201 = v220;
  v202 = v221;
  v203 = v222;
  v197 = v216;
  v198 = v217;
  v199 = v218;
  v200 = v219;
  v195 = v214;
  v196 = v215;
  v144 = v175;
  sub_100006098(v141, v175, &qword_100062CB8, &unk_100048130);
  v145 = sub_100003968(&qword_100062D60, &qword_1000481A8);
  sub_10000B8BC(v143, v144 + *(v145 + 48));
  v146 = v144 + *(v145 + 64);
  v147 = v200;
  v210 = v201;
  v211 = v202;
  v148 = v198;
  v149 = v199;
  v208 = v199;
  v209 = v200;
  v150 = v196;
  v151 = v197;
  v206 = v197;
  v207 = v198;
  v152 = v195;
  v204 = v195;
  v205 = v196;
  v153 = v202;
  *(v146 + 96) = v201;
  *(v146 + 112) = v153;
  *(v146 + 32) = v151;
  *(v146 + 48) = v148;
  *(v146 + 64) = v149;
  *(v146 + 80) = v147;
  v212 = v203;
  *(v146 + 128) = v203;
  *v146 = v152;
  *(v146 + 16) = v150;
  sub_100006098(&v204, v213, &qword_100062D68, &qword_1000481B0);
  sub_100003CE8(v142, &qword_100062C98, &qword_100048110);
  sub_100003CE8(v189, &qword_100062CB8, &unk_100048130);
  *&v213[96] = v201;
  *&v213[112] = v202;
  v213[128] = v203;
  *&v213[32] = v197;
  *&v213[48] = v198;
  *&v213[64] = v199;
  *&v213[80] = v200;
  *v213 = v195;
  *&v213[16] = v196;
  sub_100003CE8(v213, &qword_100062D68, &qword_1000481B0);
  sub_100003CE8(v143, &qword_100062C98, &qword_100048110);
  return sub_100003CE8(v186, &qword_100062CB8, &unk_100048130);
}

uint64_t sub_10000A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = AXLTCaption.appID.getter();
  v12 = v11;
  if (a2)
  {

    v12 = a2;
  }

  else
  {
    a1 = v10;
  }

  v13 = AXLTCaption.appName.getter();
  v15 = v14;
  if (a4)
  {

    v15 = a4;
  }

  else
  {
    a3 = v13;
  }

  if (a1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v16)
  {
    goto LABEL_14;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_15:

    return 0x6C6C69662E63696DLL;
  }

  if (a3 == placeholderMicName.getter() && v15 == v19)
  {
LABEL_14:

    goto LABEL_15;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_15;
  }

  if (a1 == placeholderID.getter() && v12 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      if (a1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v25)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          if (a1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v27)
          {
          }

          else
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v28 & 1) == 0)
            {

              return 0;
            }
          }

          return 0x6F63706F7470616CLL;
        }
      }

      return 0xD00000000000001ALL;
    }
  }

  IsPad = AXDeviceIsPad();

  if (IsPad)
  {
    return 1684107369;
  }

  else
  {
    return 0x656E6F687069;
  }
}

uint64_t sub_10000A620()
{
  v1 = *(v0 + *(type metadata accessor for AXLTTitleView() + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  return result;
}

uint64_t sub_10000A7AC(uint64_t *a1)
{
  v2 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - v4;
  sub_10000A314(0, 0, 0, 0);
  if (v6)
  {
  }

  else
  {
    v8 = *a1;
    v9 = AXLTCaption.appID.getter();
    v11 = v10;
    v12 = type metadata accessor for AXLTTitleView();
    v13 = a1 + *(v12 + 28);
    sub_10000B11C(&qword_100062C50, &qword_1000480D0, &type metadata accessor for DynamicTypeSize, v5);
    v14 = type metadata accessor for DynamicTypeSize();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    v15 = iconForBundleId(_:dynamicTypeSize:)(v9, v11, v5);

    sub_100003CE8(v5, &qword_100062AE8, &qword_1000480E0);
    if (!v15)
    {
      v15 = [objc_allocWithZone(UIImage) init];
    }

    v16 = (a1 + *(v12 + 40));
    v18 = *v16;
    v17 = v16[1];
    v19[2] = v18;
    v19[3] = v17;
    v19[1] = v15;
    sub_100003968(&qword_100062C70, &qword_1000480E8);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_10000A994(uint64_t a1, uint64_t a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v10 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v11), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v12);
      sub_10000B374(v11);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = (a2 + *(type metadata accessor for AXLTTitleView() + 32));
        v9 = *v7;
        v8 = v7[1];
        v11[0] = v9;
        v11[1] = v8;
        v12[0] = v10;
        sub_100003968(&qword_100062C78, &qword_1000480F0);
        return State.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v11);
    }
  }

  return result;
}

uint64_t sub_10000AAA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v28 - v7;
  v9 = *a2;
  v10 = AXLTCaption.appID.getter();
  v12 = v11;
  v13 = AXLTCaption.appName.getter();
  sub_10000A314(v10, v12, v13, v14);
  v16 = v15;

  if (v16)
  {
  }

  else
  {
    v18 = AXLTCaption.appID.getter();
    v20 = v19;
    v21 = type metadata accessor for AXLTTitleView();
    v22 = a3 + *(v21 + 28);
    sub_10000B11C(&qword_100062C50, &qword_1000480D0, &type metadata accessor for DynamicTypeSize, v8);
    v23 = type metadata accessor for DynamicTypeSize();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    v24 = iconForBundleId(_:dynamicTypeSize:)(v18, v20, v8);

    sub_100003CE8(v8, &qword_100062AE8, &qword_1000480E0);
    if (!v24)
    {
      v24 = [objc_allocWithZone(UIImage) init];
    }

    v25 = (a3 + *(v21 + 40));
    v27 = *v25;
    v26 = v25[1];
    v28[2] = v27;
    v28[3] = v26;
    v28[1] = v24;
    sub_100003968(&qword_100062C70, &qword_1000480E8);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_10000ACD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTitleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLTTitleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AD9C()
{
  v1 = *(type metadata accessor for AXLTTitleView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_10000A7AC(v2);
}

uint64_t sub_10000ADFC(uint64_t a1)
{
  v3 = *(type metadata accessor for AXLTTitleView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000A994(a1, v4);
}

uint64_t sub_10000AE6C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AXLTTitleView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000AAA4(a1, a2, v6);
}

uint64_t sub_10000AEEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003968(&qword_1000629A8, &qword_100047E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100006098(v2, &v16 - v11, &qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000BB84(v12, a1, &qword_100062978, &qword_1000482D0);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000B11C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003968(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100006098(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10000B31C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000B348(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10000B3C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000B424()
{
  result = qword_100062CC8;
  if (!qword_100062CC8)
  {
    sub_100003AC0(&qword_100062CC0, &qword_100048C00);
    sub_10000B4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062CC8);
  }

  return result;
}

unint64_t sub_10000B4B0()
{
  result = qword_100062CD0;
  if (!qword_100062CD0)
  {
    sub_100003AC0(&qword_100062CD8, &qword_100048140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062CD0);
  }

  return result;
}

unint64_t sub_10000B534()
{
  result = qword_100062CE8;
  if (!qword_100062CE8)
  {
    sub_100003AC0(&qword_100062CF0, &qword_100048148);
    sub_10000B4B0();
    sub_100003E3C(&qword_100062CF8, &qword_100062D00, &qword_100048150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062CE8);
  }

  return result;
}

uint64_t sub_10000B5EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    sub_10000B70C(&qword_100062D08, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000B6A0()
{
  result = qword_100062D18;
  if (!qword_100062D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D18);
  }

  return result;
}

uint64_t sub_10000B6F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000B70C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000B754()
{
  result = qword_100062D30;
  if (!qword_100062D30)
  {
    sub_100003AC0(&qword_100062D28, &qword_100048190);
    sub_10000B80C();
    sub_100003E3C(&qword_100062D48, &qword_100062D50, &qword_1000481A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D30);
  }

  return result;
}

unint64_t sub_10000B80C()
{
  result = qword_100062D38;
  if (!qword_100062D38)
  {
    sub_100003AC0(&qword_100062D40, &qword_100048198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D38);
  }

  return result;
}

double sub_10000B890(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 255;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

uint64_t sub_10000B8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100062C98, &qword_100048110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B92C()
{
  v1 = type metadata accessor for AXLTTitleView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = (v5 + v1[8]);
  v10 = *v9;

  v11 = v9[1];

  v12 = (v5 + v1[9]);
  v13 = *v12;

  v14 = v12[1];

  v15 = v5 + v1[10];

  v16 = *(v15 + 8);

  v17 = *(v5 + v1[11]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000BAA8()
{
  v1 = type metadata accessor for AXLTTitleView();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 44));
}

uint64_t sub_10000BB14@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000BB40(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10000BB84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003968(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000BBEC()
{
  sub_100003AC0(&qword_100062C38, &qword_1000480B8);
  type metadata accessor for AXLTCaption();
  sub_100003E3C(&qword_100062C60, &qword_100062C38, &qword_1000480B8);
  sub_10000B70C(&qword_100062C68, &type metadata accessor for AXLTCaption);
  return swift_getOpaqueTypeConformance2();
}

Swift::Int sub_10000BCF8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000BD6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10000BDB0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s19LiveTranscriptionUI11WindowStateO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

NSString sub_10000BDE8()
{
  result = String._bridgeToObjectiveC()();
  qword_100065508 = result;
  return result;
}

uint64_t sub_10000BE20()
{
  result = AXDeviceIsPad();
  v1 = 500.0;
  if (result)
  {
    v1 = 1000.0;
  }

  qword_100065510 = *&v1;
  return result;
}

uint64_t sub_10000BE60()
{
  result = AXDeviceHasJindo();
  v1 = 0.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_100065518 = *&v1;
  return result;
}

uint64_t sub_10000BE90()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v93 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003968(&qword_1000629A0, &unk_100048680);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v88 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v98 = &v85 - v10;
  v11 = __chkstk_darwin(v9);
  v92 = &v85 - v12;
  __chkstk_darwin(v11);
  v14 = &v85 - v13;
  v15 = sub_100003968(&qword_100062978, &qword_1000482D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v86 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v100 = &v85 - v20;
  v21 = __chkstk_darwin(v19);
  v101 = &v85 - v22;
  v23 = __chkstk_darwin(v21);
  v89 = &v85 - v24;
  v25 = __chkstk_darwin(v23);
  v99 = &v85 - v26;
  v27 = __chkstk_darwin(v25);
  v96 = &v85 - v28;
  v29 = __chkstk_darwin(v27);
  v87 = &v85 - v30;
  v31 = __chkstk_darwin(v29);
  v90 = &v85 - v32;
  v33 = __chkstk_darwin(v31);
  v91 = &v85 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v85 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v85 - v39;
  __chkstk_darwin(v38);
  v42 = &v85 - v41;
  v43 = type metadata accessor for RootView();
  v44 = *(v43 + 24);
  v108 = v0;
  v94 = v43;
  v95 = v44;
  sub_10000AEEC(v42);
  v45 = v2[13];
  v97 = enum case for UserInterfaceSizeClass.regular(_:);
  v105 = v45;
  v106 = v2 + 13;
  v45(v40);
  v103 = v2[7];
  v104 = v2 + 7;
  v103(v40, 0, 1, v1);
  v107 = v5;
  v46 = *(v5 + 48);
  sub_100006098(v42, v14, &qword_100062978, &qword_1000482D0);
  sub_100006098(v40, &v14[v46], &qword_100062978, &qword_1000482D0);
  v102 = v2;
  v109 = v2[6];
  if (v109(v14, 1, v1) == 1)
  {
    sub_100003CE8(v40, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v42, &qword_100062978, &qword_1000482D0);
    if (v109(&v14[v46], 1, v1) != 1)
    {
      v48 = v99;
      v49 = v100;
LABEL_14:
      v47 = v98;
      goto LABEL_15;
    }

    sub_100003CE8(v14, &qword_100062978, &qword_1000482D0);
    v47 = v98;
    v48 = v99;
  }

  else
  {
    sub_100006098(v14, v37, &qword_100062978, &qword_1000482D0);
    if (v109(&v14[v46], 1, v1) == 1)
    {
      v48 = v99;
LABEL_13:
      sub_100003CE8(v40, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v42, &qword_100062978, &qword_1000482D0);
      (v102[1])(v37, v1);
      v49 = v100;
      goto LABEL_14;
    }

    v50 = v102;
    v51 = v93;
    (v102[4])(v93, &v14[v46], v1);
    sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass);
    LODWORD(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52 = v50[1];
    v52(v51, v1);
    sub_100003CE8(v40, &qword_100062978, &qword_1000482D0);
    sub_100003CE8(v42, &qword_100062978, &qword_1000482D0);
    v52(v37, v1);
    sub_100003CE8(v14, &qword_100062978, &qword_1000482D0);
    v49 = v100;
    v53 = v101;
    v47 = v98;
    v48 = v99;
    v54 = v96;
    if ((v85 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v55 = v108 + *(v94 + 20);
  v56 = v91;
  sub_10000AEEC(v91);
  v57 = v90;
  v105(v90, enum case for UserInterfaceSizeClass.compact(_:), v1);
  v103(v57, 0, 1, v1);
  v58 = *(v107 + 48);
  v59 = v92;
  sub_100006098(v56, v92, &qword_100062978, &qword_1000482D0);
  v85 = v58;
  sub_100006098(v57, v59 + v58, &qword_100062978, &qword_1000482D0);
  if (v109(v59, 1, v1) != 1)
  {
    v60 = v87;
    sub_100006098(v59, v87, &qword_100062978, &qword_1000482D0);
    v61 = v85;
    if (v109((v59 + v85), 1, v1) != 1)
    {
      v76 = v102;
      v77 = v59 + v61;
      v78 = v93;
      (v102[4])(v93, v77, v1);
      sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass);
      v79 = v59;
      LODWORD(v85) = dispatch thunk of static Equatable.== infix(_:_:)();
      v80 = v60;
      v81 = v76[1];
      v81(v78, v1);
      sub_100003CE8(v90, &qword_100062978, &qword_1000482D0);
      sub_100003CE8(v91, &qword_100062978, &qword_1000482D0);
      v81(v80, v1);
      sub_100003CE8(v79, &qword_100062978, &qword_1000482D0);
      v49 = v100;
      v53 = v101;
      v47 = v98;
      v54 = v96;
      if (v85)
      {
        v73 = 1;
        return v73 & 1;
      }

LABEL_16:
      sub_10000AEEC(v54);
      v105(v48, v97, v1);
      v103(v48, 0, 1, v1);
      v62 = *(v107 + 48);
      sub_100006098(v54, v47, &qword_100062978, &qword_1000482D0);
      sub_100006098(v48, v47 + v62, &qword_100062978, &qword_1000482D0);
      if (v109(v47, 1, v1) == 1)
      {
        sub_100003CE8(v48, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v54, &qword_100062978, &qword_1000482D0);
        if (v109((v47 + v62), 1, v1) == 1)
        {
          sub_100003CE8(v47, &qword_100062978, &qword_1000482D0);
LABEL_23:
          v71 = v108 + *(v94 + 20);
          sub_10000AEEC(v53);
          v105(v49, v97, v1);
          v103(v49, 0, 1, v1);
          v72 = *(v107 + 48);
          v14 = v88;
          sub_100006098(v53, v88, &qword_100062978, &qword_1000482D0);
          sub_100006098(v49, &v14[v72], &qword_100062978, &qword_1000482D0);
          if (v109(v14, 1, v1) == 1)
          {
            sub_100003CE8(v49, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v53, &qword_100062978, &qword_1000482D0);
            if (v109(&v14[v72], 1, v1) == 1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v74 = v86;
            sub_100006098(v14, v86, &qword_100062978, &qword_1000482D0);
            if (v109(&v14[v72], 1, v1) != 1)
            {
              v82 = v102;
              v83 = v93;
              (v102[4])(v93, &v14[v72], v1);
              sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass);
              v73 = dispatch thunk of static Equatable.== infix(_:_:)();
              v84 = v82[1];
              v84(v83, v1);
              sub_100003CE8(v49, &qword_100062978, &qword_1000482D0);
              sub_100003CE8(v53, &qword_100062978, &qword_1000482D0);
              v84(v74, v1);
              sub_100003CE8(v14, &qword_100062978, &qword_1000482D0);
              return v73 & 1;
            }

            sub_100003CE8(v49, &qword_100062978, &qword_1000482D0);
            sub_100003CE8(v53, &qword_100062978, &qword_1000482D0);
            (v102[1])(v74, v1);
          }

          v64 = v14;
          goto LABEL_29;
        }
      }

      else
      {
        v63 = v89;
        sub_100006098(v47, v89, &qword_100062978, &qword_1000482D0);
        if (v109((v47 + v62), 1, v1) != 1)
        {
          v65 = v102;
          v66 = v93;
          (v102[4])(v93, v47 + v62, v1);
          sub_100016110(&qword_1000629B0, &type metadata accessor for UserInterfaceSizeClass);
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          v68 = v65;
          v69 = v47;
          v70 = v68[1];
          v70(v66, v1);
          sub_100003CE8(v99, &qword_100062978, &qword_1000482D0);
          sub_100003CE8(v54, &qword_100062978, &qword_1000482D0);
          v70(v63, v1);
          v49 = v100;
          sub_100003CE8(v69, &qword_100062978, &qword_1000482D0);
          v53 = v101;
          if ((v67 & 1) == 0)
          {
LABEL_30:
            v73 = 0;
            return v73 & 1;
          }

          goto LABEL_23;
        }

        sub_100003CE8(v48, &qword_100062978, &qword_1000482D0);
        sub_100003CE8(v54, &qword_100062978, &qword_1000482D0);
        (v102[1])(v63, v1);
      }

      v64 = v47;
LABEL_29:
      sub_100003CE8(v64, &qword_1000629A0, &unk_100048680);
      goto LABEL_30;
    }

    v40 = v90;
    v42 = v91;
    v37 = v60;
    v14 = v59;
    goto LABEL_13;
  }

  sub_100003CE8(v57, &qword_100062978, &qword_1000482D0);
  v14 = v92;
  sub_100003CE8(v56, &qword_100062978, &qword_1000482D0);
  if (v109(&v14[v85], 1, v1) != 1)
  {
    v49 = v100;
LABEL_15:
    sub_100003CE8(v14, &qword_1000629A0, &unk_100048680);
    v53 = v101;
    v54 = v96;
    goto LABEL_16;
  }

LABEL_25:
  sub_100003CE8(v14, &qword_100062978, &qword_1000482D0);
  v73 = 1;
  return v73 & 1;
}

uint64_t sub_10000CD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v138 = a2;
  v188 = a1;
  v173 = a3;
  v166 = type metadata accessor for Color.RGBColorSpace();
  v165 = *(v166 - 1);
  v4 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for RoundedRectangle();
  v6 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v147 = (&v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100003968(&qword_100062EF8, &qword_100048548);
  v9 = *(v8 - 8);
  v142 = v8 - 8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v141 = (&v136 - v11);
  v145 = sub_100003968(&qword_100062F00, &qword_100048550);
  v12 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v151 = &v136 - v13;
  v150 = sub_100003968(&qword_100062F08, &qword_100048558);
  v14 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v149 = &v136 - v15;
  v148 = sub_100003968(&qword_100062F10, &qword_100048560);
  v16 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v153 = &v136 - v17;
  v152 = sub_100003968(&qword_100062F18, &qword_100048568);
  v18 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v155 = &v136 - v19;
  v154 = sub_100003968(&qword_100062F20, &qword_100048570);
  v20 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v157 = &v136 - v21;
  v156 = sub_100003968(&qword_100062F28, &qword_100048578);
  v22 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v159 = &v136 - v23;
  v158 = sub_100003968(&qword_100062F30, &qword_100048580);
  v24 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v160 = &v136 - v25;
  v177 = sub_100003968(&qword_100062F38, &qword_100048588);
  v26 = *(*(v177 - 8) + 64);
  __chkstk_darwin(v177);
  v167 = &v136 - v27;
  v172 = sub_100003968(&qword_100062F40, &qword_100048590);
  v171 = *(v172 - 8);
  v28 = *(v171 + 64);
  __chkstk_darwin(v172);
  v170 = &v136 - v29;
  v169 = sub_100003968(&qword_100062F48, &qword_100048598);
  v30 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v168 = &v136 - v31;
  v32 = type metadata accessor for GeometryProxy();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v178 = type metadata accessor for RootView();
  v187 = *(v178 - 1);
  v35 = *(v187 + 64);
  __chkstk_darwin(v178);
  v36 = (&v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for GlobalCoordinateSpace();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v39 = type metadata accessor for DragGesture();
  v40 = *(v39 - 8);
  v180 = v39;
  v181 = v40;
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = &v136 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v140 = *(v139 - 8);
  v44 = *(v140 + 64);
  __chkstk_darwin(v139);
  v174 = (&v136 - v45);
  v162 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v161 = *(v162 - 8);
  v46 = *(v161 + 64);
  __chkstk_darwin(v162);
  v176 = &v136 - v47;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v163 = type metadata accessor for RootView;
  sub_100017ED0(a2, v36, type metadata accessor for RootView);
  v186 = *(v33 + 16);
  v182 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v32;
  v186(v182, v188, v32);
  v48 = *(v187 + 80);
  v49 = (v48 + 16) & ~v48;
  v50 = v48 | 7;
  v51 = *(v33 + 80);
  v144 = v49 + v35;
  v52 = (v49 + v35 + v51) & ~v51;
  v185 = v52 + v34;
  v143 = v50;
  v184 = v50 | v51;
  v53 = swift_allocObject();
  v137 = type metadata accessor for RootView;
  sub_1000180B8(v36, v53 + v49, type metadata accessor for RootView);
  v54 = *(v33 + 32);
  v187 = v33 + 32;
  v179 = v54;
  v54(v53 + v52, &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  sub_100016110(&qword_100062830, &type metadata accessor for DragGesture);
  sub_100016110(&qword_100062838, &type metadata accessor for DragGesture.Value);
  v55 = v180;
  v56 = v141;
  Gesture<>.onChanged(_:)();

  (*(v181 + 8))(v43, v55);
  v57 = v138;
  v58 = v36;
  sub_100017ED0(v138, v36, v163);
  v60 = v182;
  v59 = v183;
  v61 = v188;
  v180 = v33 + 16;
  v186(v182, v188, v183);
  v62 = swift_allocObject();
  v175 = v49;
  v163 = v58;
  sub_1000180B8(v58, v62 + v49, v137);
  v181 = v52;
  v179(v62 + v52, v60, v59);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0);
  v63 = v176;
  v64 = v139;
  v65 = v174;
  Gesture.onEnded(_:)();

  (*(v140 + 8))(v65, v64);
  *v56 = static Alignment.center.getter();
  v56[1] = v66;
  v67 = sub_100003968(&qword_100062F50, &qword_1000485A0);
  sub_10000F340(v57, v61, v63, v56 + *(v67 + 44));
  v68 = v56 + *(sub_100003968(&qword_100062F58, &qword_1000485A8) + 36);
  static Material.regular.getter();
  LOBYTE(v65) = static Edge.Set.all.getter();
  v68[*(sub_100003968(&qword_100062F60, &qword_1000485B0) + 36)] = v65;
  *(v56 + *(v142 + 44)) = sub_100012BC0();
  v69 = v57;
  v70 = v57 + v178[8];
  v71 = *v70;
  v72 = *(v70 + 8);
  LOBYTE(v192) = *v70;
  *(&v192 + 1) = v72;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (v189 == 4)
  {
    if (AXDeviceIsPad())
    {
      v73 = 34.0;
    }

    else
    {
      v73 = 27.0;
    }
  }

  else
  {
    LOBYTE(v192) = v71;
    *(&v192 + 1) = v72;
    State.wrappedValue.getter();
    v73 = 18.0;
  }

  v74 = *(v146 + 20);
  v75 = enum case for RoundedCornerStyle.continuous(_:);
  v76 = type metadata accessor for RoundedCornerStyle();
  v77 = v147;
  (*(*(v76 - 8) + 104))(v147 + v74, v75, v76);
  *v77 = v73;
  v77[1] = v73;
  v78 = v151;
  v79 = &v151[*(v145 + 36)];
  sub_1000180B8(v77, v79, &type metadata accessor for RoundedRectangle);
  *(v79 + *(sub_100003968(&qword_100062818, &qword_1000485C0) + 36)) = 256;
  sub_10000BB84(v56, v78, &qword_100062EF8, &qword_100048548);
  LOBYTE(v192) = v71;
  *(&v192 + 1) = v72;
  State.wrappedValue.getter();
  v80 = 0;
  if (v189 == 3)
  {
    v80 = static SafeAreaRegions.all.getter();
  }

  v81 = static Edge.Set.all.getter();
  v82 = v78;
  v83 = v149;
  sub_10000BB84(v82, v149, &qword_100062F00, &qword_100048550);
  v84 = v83 + *(v150 + 36);
  *v84 = v80;
  *(v84 + 8) = v81;
  v85 = static Edge.Set.all.getter();
  v86 = v153;
  sub_10000BB84(v83, v153, &qword_100062F08, &qword_100048558);
  v87 = v86 + *(v148 + 36);
  *v87 = v85;
  *(v87 + 8) = 0u;
  *(v87 + 24) = 0u;
  *(v87 + 40) = 0;
  GeometryProxy.size.getter();
  v89 = v88;
  v91 = v90;
  LOBYTE(v192) = v71;
  *(&v192 + 1) = v72;
  State.wrappedValue.getter();
  sub_1000143D4(v189, v89, v91);
  GeometryProxy.size.getter();
  v93 = v92;
  v95 = v94;
  LOBYTE(v192) = v71;
  *(&v192 + 1) = v72;
  State.wrappedValue.getter();
  sub_1000143D4(v189, v93, v95);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v96 = v155;
  sub_10000BB84(v86, v155, &qword_100062F10, &qword_100048560);
  v97 = (v96 + *(v152 + 36));
  v98 = v193;
  *v97 = v192;
  v97[1] = v98;
  v97[2] = v194;
  GeometryProxy.size.getter();
  sub_100012C80(v99, v100);
  v102 = v101;
  v104 = v103;
  v105 = v157;
  sub_10000BB84(v96, v157, &qword_100062F18, &qword_100048568);
  v106 = (v105 + *(v154 + 36));
  *v106 = v102;
  v106[1] = v104;
  LOBYTE(v189) = v71;
  v190 = v72;
  State.wrappedValue.getter();
  if (v191)
  {
    LOBYTE(v189) = v71;
    v190 = v72;
    State.wrappedValue.getter();
    if (v191 == 1)
    {
      v107 = 5.0;
    }

    else
    {
      v107 = 0.0;
    }
  }

  else
  {
    v107 = 5.0;
  }

  (*(v165 + 104))(v164, enum case for Color.RGBColorSpace.sRGBLinear(_:), v166);
  v108 = Color.init(_:white:opacity:)();
  v109 = v159;
  sub_10000BB84(v105, v159, &qword_100062F20, &qword_100048570);
  v110 = v109 + *(v156 + 36);
  *v110 = v108;
  *(v110 + 8) = v107;
  *(v110 + 16) = 0;
  *(v110 + 24) = 0;
  v111 = v69;
  v112 = v163;
  sub_100017ED0(v69, v163, type metadata accessor for RootView);
  v114 = v182;
  v113 = v183;
  v186(v182, v188, v183);
  v115 = swift_allocObject();
  v116 = v175;
  sub_1000180B8(v112, v115 + v175, type metadata accessor for RootView);
  v117 = v179;
  v179(v115 + v181, v114, v113);
  v118 = v109;
  v119 = v160;
  sub_10000BB84(v118, v160, &qword_100062F28, &qword_100048578);
  v120 = (v119 + *(v158 + 36));
  *v120 = sub_100016B58;
  v120[1] = v115;
  v120[2] = 0;
  v120[3] = 0;
  v166 = type metadata accessor for RootView;
  sub_100017ED0(v69, v112, type metadata accessor for RootView);
  v121 = swift_allocObject();
  v174 = type metadata accessor for RootView;
  sub_1000180B8(v112, v121 + v116, type metadata accessor for RootView);
  v122 = v167;
  sub_10000BB84(v119, v167, &qword_100062F30, &qword_100048580);
  v123 = (v122 + *(v177 + 36));
  *v123 = 0;
  v123[1] = 0;
  v123[2] = sub_100016C20;
  v123[3] = v121;
  v124 = *(v111 + v178[24] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100017ED0(v111, v112, type metadata accessor for RootView);
  v126 = v182;
  v125 = v183;
  v186(v182, v188, v183);
  v127 = swift_allocObject();
  sub_1000180B8(v112, v127 + v116, type metadata accessor for RootView);
  v117(v127 + v181, v126, v125);
  sub_100003968(&qword_1000638B0, &qword_100048610);
  sub_100016CB4();
  sub_1000172B0();
  v128 = v170;
  View.onChange<A>(of:initial:_:)();

  sub_100003CE8(v122, &qword_100062F38, &qword_100048588);
  v129 = *(v111 + v178[21] + 8);
  swift_beginAccess();
  v130 = v169;
  v131 = *(v169 + 52);
  sub_100003968(&qword_1000629C8, &qword_100047E50);
  v132 = v168;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100017ED0(v111, v112, v166);
  v186(v126, v188, v125);
  v133 = swift_allocObject();
  sub_1000180B8(v112, v133 + v175, v174);
  v179(v133 + v181, v126, v125);
  (*(v171 + 32))(v132, v128, v172);
  v134 = (v132 + *(v130 + 56));
  *v134 = sub_100017364;
  v134[1] = v133;
  sub_10000BB84(v132, v173, &qword_100062F48, &qword_100048598);
  return (*(v161 + 8))(v176, v162);
}

uint64_t sub_10000E21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v5 = type metadata accessor for DragGesture.Value();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for RootView();
  v11 = v10[18];
  v75 = a2;
  v12 = (a2 + v11);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v77 = *v12;
  v78 = v14;
  v79 = v15;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v80.width = 0.0;
  v80.height = 0.0;
  if (CGSizeEqualToSize(v76, v80))
  {
    goto LABEL_4;
  }

  v77 = v13;
  v78 = v14;
  v79 = v15;
  State.wrappedValue.getter();
  width = v76.width;
  DragGesture.Value.translation.getter();
  if (vabdd_f64(width, v17) >= 2.0 || (v77 = v13, v78 = v14, v79 = v15, State.wrappedValue.getter(), height = v76.height, result = DragGesture.Value.translation.getter(), vabdd_f64(height, v20) >= 2.0))
  {
LABEL_4:
    v21 = static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    v22 = qword_1000654E8;
    (*(v6 + 16))(v9, a1, v5);
    v73 = v22;
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v72 = v15;
      v24 = v23;
      v25 = swift_slowAlloc();
      *&v76.width = v25;
      *v24 = 136315138;
      v71 = v21;
      DragGesture.Value.translation.getter();
      v77 = v26;
      v78 = v27;
      type metadata accessor for CGSize(0);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v6 + 8))(v9, v5);
      v31 = sub_100031EB4(v28, v30, &v76);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v73, v71, "drag translation: %s", v24, 0xCu);
      sub_100018190(v25);

      v15 = v72;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
    }

    DragGesture.Value.translation.getter();
    v77 = v13;
    v78 = v14;
    v79 = v15;
    v76.width = v32;
    v76.height = v33;
    State.wrappedValue.setter();
    DragGesture.Value.predictedEndTranslation.getter();
    v35 = v34;
    DragGesture.Value.translation.getter();
    v37 = v36;
    DragGesture.Value.predictedEndTranslation.getter();
    v39 = v38;
    result = DragGesture.Value.translation.getter();
    v41 = vabdd_f64(v35, v37);
    if (qword_100062708 != -1)
    {
      v69 = v40;
      result = swift_once();
      v40 = v69;
    }

    if (v41 <= *&qword_100065510 && fabs(v39 - v40) <= *&qword_100065510)
    {
      v42 = (v75 + v10[14]);
      v43 = *v42;
      v44 = v42[1];
      v45 = v42[2];
      v77 = *v42;
      v78 = v44;
      v79 = v45;
      State.wrappedValue.getter();
      v81.width = 0.0;
      v81.height = 0.0;
      if (CGSizeEqualToSize(v76, v81))
      {
        v46 = v75;
        v47 = (v75 + v10[12]);
        v49 = v47[1];
        v50 = v47[2];
        v77 = *v47;
        v48 = v77;
        v78 = v49;
        v79 = v50;
        State.wrappedValue.getter();
        v51 = v76;
        GeometryProxy.size.getter();
        v53 = v52;
        v55 = v54;
        v56 = (v46 + v10[8]);
        v57 = *v56;
        v58 = *(v56 + 1);
        LOBYTE(v77) = v57;
        v78 = v58;
        sub_100003968(&qword_100062F68, &qword_1000485B8);
        State.wrappedValue.getter();
        sub_1000143D4(LOBYTE(v76.width), v53, v55);
        v60 = v59;
        v62 = v61;
        GeometryProxy.size.getter();
        safeOffset(offset:size:containerSize:foreheadWindowRect:)(v51.width, v51.height, v60, v62, v63, v64, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
        v77 = v48;
        v78 = v49;
        v79 = v50;
        v76.width = v65;
        v76.height = v66;
        State.wrappedValue.setter();
        v77 = v48;
        v78 = v49;
        v79 = v50;
        State.wrappedValue.getter();
        v77 = v43;
        v78 = v44;
        v79 = v45;
        State.wrappedValue.setter();
      }

      static Animation.linear(duration:)();
      Animation.delay(_:)();

      Animation.repeatCount(_:autoreverses:)();

      __chkstk_darwin(v67);
      v68 = v75;
      *&v70[-32] = a1;
      *&v70[-24] = v68;
      withAnimation<A>(_:_:)();
    }
  }

  return result;
}

uint64_t sub_10000E7E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  DragGesture.Value.translation.getter();
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(type metadata accessor for RootView() + 28);
  sub_10000B0F4(v10);
  (*(v4 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v3);
  LOBYTE(v15) = static LayoutDirection.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v10, v3);
  if (v15)
  {
    v12 = -v12;
  }

  GeometryProxy.size.getter();
  return sub_10000E98C(v12, v14, v17, v18);
}

uint64_t sub_10000E98C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for RootView();
  v9 = (v4 + v8[14]);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v13 = (v4 + v8[12]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];

  State.wrappedValue.getter();
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  State.wrappedValue.setter();
  v28 = v14;
  State.wrappedValue.getter();
  v17 = v4 + v8[8];
  LOBYTE(v28) = *v17;
  v29 = *(v17 + 8);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v14), a3, a4);
  v19 = v18;
  v21 = v20;
  v22 = *(v4 + v8[21] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v14, v15, v19, v21, a3, a4, v28, v29, v16, v30);
  State.wrappedValue.setter();

  State.wrappedValue.getter();
  v23 = (v5 + v8[13]);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];

  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

void sub_10000EC74(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for RootView() + 56));
  v5 = *v2;
  v6 = *(v2 + 2);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.setter();
  GeometryProxy.size.getter();
  sub_10000ED0C(v3, v4);
  sub_10000F0FC();
}

void sub_10000ED0C(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)(v6);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v36[-v12];
  DragGesture.Value.predictedEndTranslation.getter();
  v15 = v14;
  DragGesture.Value.translation.getter();
  v17 = v16;
  DragGesture.Value.predictedEndTranslation.getter();
  v19 = v18;
  DragGesture.Value.translation.getter();
  v21 = v20;
  v22 = vabdd_f64(v15, v17);
  if (qword_100062708 != -1)
  {
    swift_once();
  }

  v23 = *&qword_100065510;
  v24 = type metadata accessor for RootView();
  v25 = v24;
  if (v23 >= v22)
  {
    v30 = (v2 + *(v24 + 32));
    v31 = *v30;
    v32 = *(v30 + 1);
    v38 = *v30;
    v39 = v32;
    sub_100003968(&qword_100062F68, &qword_1000485B8);
    State.wrappedValue.getter();
    if (v37 != 3)
    {
      v38 = v31;
      v39 = v32;
      State.wrappedValue.getter();
      if (v37 != 2 && v23 < fabs(v19 - v21))
      {
        v38 = v31;
        v39 = v32;
        State.wrappedValue.getter();
        sub_1000143D4(v37, a1, a2);
        v34 = __chkstk_darwin(v33);
        *&v36[-48] = v2;
        v36[-40] = v19 - v21 < 0.0;
        *&v36[-32] = a1;
        *&v36[-24] = a2;
        *&v36[-16] = v34;
        *&v36[-8] = v35;
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  else
  {
    v26 = v2 + *(v24 + 28);
    sub_10000B0F4(v13);
    (*(v7 + 104))(v11, enum case for LayoutDirection.rightToLeft(_:), v6);
    static LayoutDirection.== infix(_:_:)();
    v27 = *(v7 + 8);
    v27(v11, v6);
    v28 = (v27)(v13, v6);
    v29 = __chkstk_darwin(v28);
    *&v36[-32] = v3;
    if (v29 <= 0.0)
    {
      v36[-24] = 1;
    }

    else
    {
      v36[-24] = 2;
    }

    *&v36[-16] = a1;
    *&v36[-8] = a2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_10000F0FC();
    sub_100014820();
    [*(v3 + *(v25 + 92)) idleSleepTimerDisabled:0];
  }

  sub_10000F0FC();
}

void sub_10000F0FC()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = type metadata accessor for RootView();
  v4 = (v0 + v3[8]);
  v13 = *v4;
  v16 = *(v4 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  v5 = String._bridgeToObjectiveC()();
  [v2 setInteger:LOBYTE(v12.width) forKey:v5];

  v6 = (v0 + v3[12]);
  v14 = *v6;
  v17 = *(v6 + 2);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v7 = NSStringFromCGSize(v12);
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = String._bridgeToObjectiveC()();
  [v2 setObject:v7 forKey:v8];

  v9 = (v1 + v3[13]);
  v15 = *v9;
  v18 = *(v9 + 2);
  State.wrappedValue.getter();
  v10 = NSStringFromCGSize(v12);
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = String._bridgeToObjectiveC()();
  [v2 setObject:v10 forKey:v11];
}

uint64_t sub_10000F340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v131 = a2;
  v136 = a4;
  v135 = sub_100003968(&qword_100062FF8, &qword_100048690);
  v5 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v120 = &v110 - v6;
  v7 = sub_100003968(&qword_100063000, &qword_100048698);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v132 = (&v110 - v9);
  v117 = sub_100003968(&qword_100063008, &qword_1000486A0);
  v10 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v118 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v116 = &v110 - v13;
  __chkstk_darwin(v14);
  v119 = &v110 - v15;
  v133 = sub_100003968(&qword_100063010, &qword_1000486A8);
  v16 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v134 = &v110 - v17;
  v18 = sub_100003968(&qword_100063018, &qword_1000486B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v126 = &v110 - v20;
  v127 = sub_100003968(&qword_100063020, &qword_1000486B8);
  v125 = *(v127 - 8);
  v21 = *(v125 + 64);
  __chkstk_darwin(v127);
  v124 = &v110 - v22;
  v130 = sub_100003968(&qword_100063028, &qword_1000486C0);
  v129 = *(v130 - 8);
  v23 = *(v129 + 64);
  __chkstk_darwin(v130);
  v128 = &v110 - v24;
  v114 = type metadata accessor for GeometryProxy();
  v113 = *(v114 - 8);
  v25 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RootView();
  v111 = *(v26 - 1);
  v27 = *(v111 + 64);
  __chkstk_darwin(v26);
  v137 = type metadata accessor for IconView();
  v121 = *(v137 - 8);
  v28 = *(v121 + 64);
  __chkstk_darwin(v137);
  v123 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v29;
  __chkstk_darwin(v30);
  v32 = &v110 - v31;
  v33 = a1;
  v34 = a1 + v26[8];
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v138) = *v34;
  *(&v138 + 1) = v36;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (v141 == 4)
  {
    v37 = (a1 + v26[17]);
    v38 = *v37;
    v39 = v37[1];
    *&v141 = v38;
    *(&v141 + 1) = v39;
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.projectedValue.getter();
    v120 = *(&v138 + 1);
    v132 = v138;
    v40 = v139;
    v41 = a1 + v26[13];
    v42 = *(v41 + 16);
    v141 = *v41;
    v142 = v42;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.projectedValue.getter();
    v118 = *(&v138 + 1);
    v119 = v138;
    v43 = v139;
    v44 = v140;
    v45 = v131;
    GeometryProxy.size.getter();
    v47 = v46;
    v49 = v48;
    sub_100017ED0(v33, &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
    v50 = v113;
    v51 = v112;
    v52 = v114;
    (*(v113 + 16))(v112, v45, v114);
    v53 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v54 = (v27 + *(v50 + 80) + v53) & ~*(v50 + 80);
    v55 = swift_allocObject();
    sub_1000180B8(&v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + v53, type metadata accessor for RootView);
    (*(v50 + 32))(v55 + v54, v51, v52);
    type metadata accessor for CGSize(0);
    v141 = 0uLL;
    State.init(wrappedValue:)();
    v56 = v139;
    *(v32 + 56) = v138;
    *(v32 + 9) = v56;
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    v57 = static AXLTCaptionsProvider.shared;
    v58 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    LOBYTE(v143) = *(v57 + v58);
    State.init(wrappedValue:)();
    v59 = *(&v141 + 1);
    v32[80] = v141;
    *(v32 + 11) = v59;
    *(v32 + 16) = 0x4024000000000000;
    v143 = 0;
    sub_100003968(&qword_100062D88, &qword_100048850);
    State.init(wrappedValue:)();
    *(v32 + 136) = v141;
    v60 = v137;
    v61 = *(v137 + 48);
    *&v32[v61] = swift_getKeyPath();
    sub_100003968(&qword_100062D78, &unk_1000484B0);
    swift_storeEnumTagMultiPayload();
    v62 = *(v60 + 52);
    v63 = [objc_allocWithZone(type metadata accessor for ForeheadWindow()) init];
    *&v32[v62] = v63;
    v64 = *(v60 + 56);
    *&v32[v64] = 0;
    *(v32 + 12) = v47;
    *(v32 + 13) = v49;
    v65 = v63;
    v66 = static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    v67 = qword_1000654E8;
    if (os_log_type_enabled(qword_1000654E8, v66))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v143 = v69;
      *v68 = 136315138;
      *&v141 = v47;
      *(&v141 + 1) = v49;
      v70 = String.init<A>(describing:)();
      v72 = sub_100031EB4(v70, v71, &v143);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v67, v66, "init containerSize: %s", v68, 0xCu);
      sub_100018190(v69);
    }

    *(v32 + 14) = sub_100017E08;
    *(v32 + 15) = v55;
    v73 = v120;
    *v32 = v132;
    *(v32 + 1) = v73;
    *(v32 + 2) = v40;
    v74 = v118;
    *(v32 + 3) = v119;
    *(v32 + 4) = v74;
    *(v32 + 5) = v43;
    *(v32 + 6) = v44;
    swift_beginAccess();

    sub_100003968(&qword_1000629C8, &qword_100047E50);
    v75 = v124;
    Published.projectedValue.getter();
    swift_endAccess();

    v76 = [objc_opt_self() mainRunLoop];
    *&v141 = v76;
    v77 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v78 = v126;
    (*(*(v77 - 8) + 56))(v126, 1, 1, v77);
    sub_100017E20(0, &qword_100063050, NSRunLoop_ptr);
    sub_100003E3C(&qword_100063058, &qword_100063020, &qword_1000486B8);
    sub_100017E68();
    v79 = v128;
    v80 = v127;
    Publisher.receive<A>(on:options:)();
    sub_100003CE8(v78, &qword_100063018, &qword_1000486B0);

    (*(v125 + 8))(v75, v80);
    v81 = v123;
    sub_100017ED0(v32, v123, type metadata accessor for IconView);
    v82 = (*(v121 + 80) + 16) & ~*(v121 + 80);
    v83 = swift_allocObject();
    sub_1000180B8(v81, v83 + v82, type metadata accessor for IconView);
    sub_100003E3C(&qword_100063068, &qword_100063028, &qword_1000486C0);
    v84 = v130;
    v85 = Publisher<>.sink(receiveValue:)();

    (*(v129 + 8))(v79, v84);
    *&v32[v64] = v85;
    sub_100017ED0(v32, v134, type metadata accessor for IconView);
    swift_storeEnumTagMultiPayload();
    sub_100016110(&qword_100063040, type metadata accessor for IconView);
    sub_100003E3C(&qword_100063048, &qword_100062FF8, &qword_100048690);
    _ConditionalContent<>.init(storage:)();
    return sub_100018200(v32, type metadata accessor for IconView);
  }

  else
  {
    v87 = v131;
    LOBYTE(v138) = v35;
    *(&v138 + 1) = v36;
    State.wrappedValue.getter();
    v88 = v141;
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v89 = static AXLTSettingsManager.shared;
    v90 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    v143 = *(v89 + v90);

    State.init(wrappedValue:)();
    v91 = v141;
    v92 = static HorizontalAlignment.center.getter();
    v93 = v132;
    *v132 = v92;
    v93[1] = 0;
    *(v93 + 16) = 0;
    v94 = sub_100003968(&qword_100063030, &qword_1000486C8);
    sub_1000106D8(v33, v87, v115, v93 + *(v94 + 44));
    v95 = static Edge.Set.top.getter();
    LOBYTE(v141) = v35;
    *(&v141 + 1) = v36;
    State.wrappedValue.getter();
    if (v143 == 3 && qword_100062710 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = v116;
    sub_10000BB84(v132, v116, &qword_100063000, &qword_100048698);
    v105 = v104 + *(v117 + 36);
    *v105 = v95;
    *(v105 + 8) = v97;
    *(v105 + 16) = v99;
    *(v105 + 24) = v101;
    *(v105 + 32) = v103;
    *(v105 + 40) = 0;
    v106 = v119;
    sub_10000BB84(v104, v119, &qword_100063008, &qword_1000486A0);
    v107 = v118;
    sub_100006098(v106, v118, &qword_100063008, &qword_1000486A0);
    v108 = v120;
    *v120 = v88;
    *(v108 + 8) = v91;
    v109 = sub_100003968(&qword_100063038, &qword_1000486D0);
    sub_100006098(v107, v108 + *(v109 + 48), &qword_100063008, &qword_1000486A0);
    swift_retain_n();
    swift_retain_n();
    sub_100003CE8(v107, &qword_100063008, &qword_1000486A0);

    sub_100006098(v108, v134, &qword_100062FF8, &qword_100048690);
    swift_storeEnumTagMultiPayload();
    sub_100016110(&qword_100063040, type metadata accessor for IconView);
    sub_100003E3C(&qword_100063048, &qword_100062FF8, &qword_100048690);
    _ConditionalContent<>.init(storage:)();

    sub_100003CE8(v108, &qword_100062FF8, &qword_100048690);
    return sub_100003CE8(v106, &qword_100063008, &qword_1000486A0);
  }
}

id sub_1000103A4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for RootView() + 36));
  v6 = *v1;
  v7 = *(v1 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  return sub_100010430(v5, v2, v3);
}

id sub_100010430(uint64_t a1, double a2, double a3)
{
  if (a1 == 4)
  {
    __chkstk_darwin(a1);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_10000F0FC();
    sub_100014820();
    return [*(v3 + *(type metadata accessor for RootView() + 92)) idleSleepTimerDisabled:0];
  }

  else
  {
    v7 = type metadata accessor for RootView();
    [*(v3 + v7[23]) idleSleepTimerDisabled:1];
    v8 = (v3 + v7[19]);
    v9 = *v8;
    v10 = v8[1];
    sub_100003968(&qword_100062FE8, &qword_100048BA0);
    State.wrappedValue.getter();
    [v14 invalidate];

    State.wrappedValue.setter();
    v11 = v3 + v7[20];
    LOBYTE(v9) = *v11;
    v12 = *(v11 + 8);
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.getter();
    v13 = sub_1000138B4(a2, a3);
    __chkstk_darwin(v13);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_1000106D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v264 = a3;
  v270 = a4;
  v267 = sub_100003968(&qword_100063070, &qword_1000486D8);
  v6 = *(*(v267 - 8) + 64);
  __chkstk_darwin(v267);
  v265 = &v246 - v7;
  v8 = sub_100003968(&qword_100063078, &qword_1000486E0);
  v268 = *(v8 - 8);
  v269 = v8;
  v9 = *(v268 + 64);
  __chkstk_darwin(v8);
  v266 = &v246 - v10;
  v11 = sub_100003968(&qword_100063080, &qword_1000486E8);
  v272 = *(v11 - 8);
  v273 = v11;
  v12 = *(v272 + 64);
  __chkstk_darwin(v11);
  v271 = &v246 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v288 = &v246 - v15;
  v276 = sub_100003968(&qword_100063088, &qword_1000486F0);
  v255 = *(v276 - 1);
  v16 = *(v255 + 64);
  __chkstk_darwin(v276);
  v260 = &v246 - v17;
  v274 = sub_100003968(&qword_100063090, &qword_1000486F8);
  v18 = *(*(v274 - 1) + 64);
  __chkstk_darwin(v274);
  v275 = &v246 - v19;
  v20 = type metadata accessor for GeometryProxy();
  v293 = *(v20 - 8);
  v21 = *(v293 + 64);
  __chkstk_darwin(v20);
  v285 = &v246 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = v22;
  __chkstk_darwin(v23);
  v277 = &v246 - v24;
  v25 = type metadata accessor for RootView();
  v279 = *(v25 - 1);
  v26 = *(v279 + 64);
  __chkstk_darwin(v25);
  v284 = &v246 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v256 = &v246 - v28;
  v261 = sub_100003968(&qword_100063098, &qword_100048700);
  v259 = *(v261 - 8);
  v29 = *(v259 + 64);
  __chkstk_darwin(v261);
  v258 = &v246 - v30;
  v263 = sub_100003968(&qword_1000630A0, &qword_100048708);
  v31 = *(*(v263 - 8) + 64);
  __chkstk_darwin(v263);
  v257 = &v246 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v262 = &v246 - v34;
  v35 = sub_100003968(&qword_1000630A8, &qword_100048710);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v282 = &v246 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v287 = &v246 - v39;
  v40 = a1 + v25[8];
  v42 = *(v40 + 8);
  LOBYTE(v354[0]) = *v40;
  v41 = LOBYTE(v354[0]);
  *(&v354[0] + 1) = v42;
  v43 = sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  v289 = a2;
  v291 = a1;
  v292 = v43;
  v283 = v20;
  v280 = v25;
  v290 = v41;
  v286 = v42;
  v278 = v26;
  if (LOBYTE(v353[0]) == 1)
  {
    v44 = v20;
    v45 = v25[25];
    v46 = v291;
    v47 = (v291 + v45);
    v48 = *v47;
    v49 = *(v47 + 1);
    LOBYTE(v353[0]) = v48;
    *(&v353[0] + 1) = v49;
    sub_100003968(&qword_100063138, &qword_100048770);
    State.projectedValue.getter();
    v255 = *(&v354[0] + 1);
    v260 = *&v354[0];
    LODWORD(v254) = LOBYTE(v354[1]);
    v50 = v256;
    sub_100017ED0(v46, v256, type metadata accessor for RootView);
    v51 = v26;
    v52 = v293;
    v251 = *(v293 + 16);
    v252 = v293 + 16;
    v251(v277, a2, v44);
    v53 = *(v279 + 80);
    v54 = v44;
    v55 = (v53 + 16) & ~v53;
    v56 = *(v52 + 80);
    v57 = (v51 + v56 + v55) & ~v56;
    v58 = v54;
    v250 = v53 | v56;
    v59 = swift_allocObject();
    v253 = v55;
    sub_1000180B8(v50, v59 + v55, type metadata accessor for RootView);
    v60 = *(v52 + 32);
    v60(v59 + v57, v277, v58);
    LOBYTE(v354[0]) = v41;
    *(&v354[0] + 1) = v42;
    State.wrappedValue.getter();
    if (LOBYTE(v353[0]) == 2)
    {
      v61 = 0;
      v62 = 0;
    }

    else
    {
      v83 = v284;
      sub_100017ED0(v291, v284, type metadata accessor for RootView);
      v84 = v285;
      v251(v285, a2, v58);
      v62 = swift_allocObject();
      sub_1000180B8(v83, v62 + v253, type metadata accessor for RootView);
      v60(v62 + v57, v84, v58);
      v61 = sub_10001927C;
    }

    *&v353[0] = 0;
    State.init(wrappedValue:)();
    *&v329 = v260;
    *(&v329 + 1) = v255;
    LOBYTE(v330) = v254;
    *(&v330 + 1) = sub_100018D94;
    *&v331 = v59;
    *(&v331 + 1) = v61;
    *&v332[0] = v62;
    *(v332 + 8) = xmmword_100048300;
    *(&v332[1] + 1) = 0x4034000000000000;
    v333 = v354[0];
    *&v341 = v260;
    *(&v341 + 1) = v255;
    LOBYTE(v342) = v254;
    *(&v342 + 1) = sub_100018D94;
    *&v343 = v59;
    *(&v343 + 1) = v61;
    *&v344[0] = v62;
    *(v344 + 8) = xmmword_100048300;
    *(&v344[1] + 1) = 0x4034000000000000;
    v345 = v354[0];
    sub_100008104(&v329, v354);
    sub_100019374(&v341);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v298 = v332[1];
    v299 = v333;
    v296 = v331;
    v297 = v332[0];
    v353[6] = v300;
    v353[7] = v301;
    v353[8] = v302;
    v294 = v329;
    v295 = v330;
    v353[2] = v331;
    v353[3] = v332[0];
    v353[5] = v333;
    v353[4] = v332[1];
    v353[1] = v330;
    v353[0] = v329;
    LOBYTE(v353[9]) = 0;
    static GestureMask.all.getter();
    sub_100003968(&qword_100063198, &qword_100048798);
    v85 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
    sub_100018C04(&qword_1000631A0, &qword_100063198, &qword_100048798, sub_100018CB4);
    v86 = sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8);
    v87 = v258;
    View.gesture<A>(_:including:)();
    v354[6] = v353[6];
    v354[7] = v353[7];
    v354[8] = v353[8];
    LOBYTE(v354[9]) = v353[9];
    v354[2] = v353[2];
    v354[3] = v353[3];
    v354[4] = v353[4];
    v354[5] = v353[5];
    v354[0] = v353[0];
    v354[1] = v353[1];
    sub_100003CE8(v354, &qword_100063198, &qword_100048798);
    v88 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = v257;
    (*(v259 + 32))(v257, v87, v261);
    v98 = v262;
    v99 = v97 + *(v263 + 36);
    *v99 = v88;
    *(v99 + 8) = v90;
    *(v99 + 16) = v92;
    *(v99 + 24) = v94;
    *(v99 + 32) = v96;
    *(v99 + 40) = 0;
    sub_10000BB84(v97, v98, &qword_1000630A0, &qword_100048708);
    sub_100006098(v98, v275, &qword_1000630A0, &qword_100048708);
    swift_storeEnumTagMultiPayload();
    sub_100018AA8();
    v100 = sub_100003AC0(&qword_100063180, &qword_100048790);
    v101 = sub_1000188F4();
    *&v353[0] = v100;
    *(&v353[0] + 1) = v85;
    *&v353[1] = v101;
    *(&v353[1] + 1) = v86;
    swift_getOpaqueTypeConformance2();
    v102 = v287;
    _ConditionalContent<>.init(storage:)();
    sub_100003CE8(v98, &qword_1000630A0, &qword_100048708);
    v103 = sub_100003968(&qword_1000630B0, &qword_100048718);
    (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
    v80 = v289;
    v63 = v293;
    v25 = v280;
  }

  else
  {
    v63 = v293;
    LOBYTE(v354[0]) = v41;
    *(&v354[0] + 1) = v42;
    State.wrappedValue.getter();
    if (LOBYTE(v353[0]) == 2)
    {
      v64 = v291;
      v65 = (v291 + v25[25]);
      v66 = *v65;
      v67 = *(v65 + 1);
      LOBYTE(v353[0]) = v66;
      *(&v353[0] + 1) = v67;
      sub_100003968(&qword_100063138, &qword_100048770);
      State.projectedValue.getter();
      v68 = v354[0];
      v69 = v354[1];
      v70 = v284;
      sub_100017ED0(v64, v284, type metadata accessor for RootView);
      v71 = v285;
      v72 = v283;
      (*(v63 + 16))(v285, v289, v283);
      v73 = (*(v279 + 80) + 16) & ~*(v279 + 80);
      v74 = (v278 + *(v293 + 80) + v73) & ~*(v293 + 80);
      v75 = swift_allocObject();
      sub_1000180B8(v70, v75 + v73, type metadata accessor for RootView);
      (*(v293 + 32))(v75 + v74, v71, v72);
      sub_10001B6DC(v68, *(&v68 + 1), v69, sub_1000189DC, v75, v303);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v353[4] = v303[4];
      v353[5] = v303[5];
      v353[6] = v303[6];
      v353[7] = v303[7];
      v353[0] = v303[0];
      v353[1] = v303[1];
      v353[2] = v303[2];
      v353[3] = v303[3];
      static GestureMask.all.getter();
      v277 = sub_100003968(&qword_100063180, &qword_100048790);
      v262 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
      v261 = sub_1000188F4();
      v76 = sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8);
      v77 = v260;
      View.gesture<A>(_:including:)();
      v354[4] = v353[4];
      v354[5] = v353[5];
      v354[6] = v353[6];
      v354[7] = v353[7];
      v354[0] = v353[0];
      v354[1] = v353[1];
      v354[2] = v353[2];
      v354[3] = v353[3];
      v63 = v293;
      v25 = v280;
      sub_100003CE8(v354, &qword_100063180, &qword_100048790);
      v78 = v255;
      v79 = v276;
      (*(v255 + 16))(v275, v77, v276);
      swift_storeEnumTagMultiPayload();
      sub_100018AA8();
      *&v353[0] = v277;
      *(&v353[0] + 1) = v262;
      *&v353[1] = v261;
      *(&v353[1] + 1) = v76;
      v80 = v289;
      swift_getOpaqueTypeConformance2();
      v81 = v287;
      _ConditionalContent<>.init(storage:)();
      (*(v78 + 8))(v260, v79);
      v82 = sub_100003968(&qword_1000630B0, &qword_100048718);
      (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    }

    else
    {
      v104 = sub_100003968(&qword_1000630B0, &qword_100048718);
      (*(*(v104 - 8) + 56))(v287, 1, 1, v104);
      v80 = v289;
    }
  }

  LOBYTE(v354[0]) = v290;
  v105 = v286;
  *(&v354[0] + 1) = v286;
  State.wrappedValue.getter();
  LODWORD(v263) = LOBYTE(v353[0]);
  v106 = v291;
  v107 = (v291 + v25[16]);
  v108 = *v107;
  v109 = v107[1];
  *&v353[0] = v108;
  *(&v353[0] + 1) = v109;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.projectedValue.getter();
  v260 = *(&v354[0] + 1);
  v261 = *&v354[0];
  v262 = *&v354[1];
  v353[0] = *(v106 + v25[10]);
  sub_100003968(&qword_1000630B8, &qword_100048720);
  State.projectedValue.getter();
  v258 = *(&v354[0] + 1);
  v259 = *&v354[0];
  v257 = *&v354[1];
  v110 = v106 + v25[11];
  v111 = *v110;
  v112 = *(v110 + 16);
  v353[0] = v111;
  *&v353[1] = v112;
  sub_100003968(&qword_1000630C0, &qword_100048728);
  State.projectedValue.getter();
  v255 = *(&v354[0] + 1);
  v256 = *&v354[0];
  v253 = *(&v354[1] + 1);
  v254 = *&v354[1];
  v113 = v284;
  sub_100017ED0(v106, v284, type metadata accessor for RootView);
  v114 = v285;
  v115 = v283;
  v276 = *(v63 + 16);
  v277 = (v63 + 16);
  (v276)(v285, v80, v283);
  v116 = *(v279 + 80);
  v117 = (v116 + 16) & ~v116;
  v118 = *(v63 + 80);
  v119 = (v278 + v118 + v117) & ~v118;
  v275 = v116 | v118;
  v278 = v119 + v281;
  v120 = swift_allocObject();
  v279 = v117;
  v121 = v120 + v117;
  v122 = v120;
  sub_1000180B8(v113, v121, type metadata accessor for RootView);
  v123 = *(v63 + 32);
  v281 = v119;
  v293 = v63 + 32;
  v274 = v123;
  v123(v122 + v119, v114, v115);
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v124 = static AXLTCaptionsProvider.shared;
  type metadata accessor for AXLTCaptionsProvider();
  sub_100016110(&qword_100062D98, type metadata accessor for AXLTCaptionsProvider);
  v125 = v124;
  v126 = ObservedObject.init(wrappedValue:)();
  v251 = v127;
  LODWORD(v252) = static Edge.Set.leading.getter();
  GeometryProxy.safeAreaInsets.getter();
  sub_100012990();
  EdgeInsets.init(_all:)();
  v249 = v129;
  v250 = v128;
  v247 = v131;
  v248 = v130;
  LOBYTE(v354[0]) = 0;
  v132 = static Edge.Set.trailing.getter();
  GeometryProxy.safeAreaInsets.getter();
  sub_100012990();
  EdgeInsets.init(_all:)();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v355 = 0;
  v141 = static Edge.Set.top.getter();
  v142 = v290;
  LOBYTE(v354[0]) = v290;
  *(&v354[0] + 1) = v105;
  State.wrappedValue.getter();
  if (LOBYTE(v353[0]))
  {
    LOBYTE(v354[0]) = v142;
    *(&v354[0] + 1) = v105;
    State.wrappedValue.getter();
    if (LOBYTE(v353[0]) != 1)
    {
      LOBYTE(v354[0]) = v142;
      *(&v354[0] + 1) = v105;
      State.wrappedValue.getter();
      if (LOBYTE(v353[0]) != 2 && qword_100062710 != -1)
      {
        swift_once();
      }
    }
  }

  EdgeInsets.init(_all:)();
  v144 = v143;
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v356 = 0;
  v151 = static Edge.Set.bottom.getter();
  v152 = v290;
  LOBYTE(v354[0]) = v290;
  v153 = v286;
  *(&v354[0] + 1) = v286;
  State.wrappedValue.getter();
  if (LOBYTE(v353[0]))
  {
    LOBYTE(v354[0]) = v152;
    *(&v354[0] + 1) = v153;
    State.wrappedValue.getter();
  }

  EdgeInsets.init(_all:)();
  v357 = 0;
  *&v354[0] = v126;
  *(&v354[0] + 1) = v251;
  LOBYTE(v354[1]) = v263;
  *(&v354[1] + 1) = v261;
  *&v354[2] = v260;
  *(&v354[2] + 1) = v262;
  *&v354[3] = v259;
  *(&v354[3] + 1) = v258;
  *&v354[4] = v257;
  *(&v354[4] + 1) = v256;
  *&v354[5] = v255;
  *(&v354[5] + 1) = v254;
  *&v354[6] = v253;
  *(&v354[6] + 1) = sub_100018260;
  *&v354[7] = v122;
  BYTE8(v354[7]) = 0;
  LOBYTE(v354[8]) = v252;
  *(&v354[8] + 1) = v250;
  *&v354[9] = v249;
  *(&v354[9] + 1) = v248;
  *&v354[10] = v247;
  BYTE8(v354[10]) = 0;
  LOBYTE(v354[11]) = v132;
  *(&v354[11] + 1) = v134;
  *&v354[12] = v136;
  *(&v354[12] + 1) = v138;
  *&v354[13] = v140;
  BYTE8(v354[13]) = 0;
  LOBYTE(v354[14]) = v141;
  *(&v354[14] + 1) = v144;
  *&v354[15] = v146;
  *(&v354[15] + 1) = v148;
  *&v354[16] = v150;
  BYTE8(v354[16]) = 0;
  LOBYTE(v354[17]) = v151;
  *(&v354[17] + 1) = v154;
  *&v354[18] = v155;
  *(&v354[18] + 1) = v156;
  *&v354[19] = v157;
  BYTE8(v354[19]) = 0;
  LOBYTE(v353[0]) = v152;
  *(&v353[0] + 1) = v153;
  State.wrappedValue.getter();
  if (v341 == 3 || (LOBYTE(v353[0]) = v152, *(&v353[0] + 1) = v153, State.wrappedValue.getter(), v341 == 2))
  {
    v158 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
    v159 = v265;
    (*(*(v158 - 8) + 56))(v265, 1, 1, v158);
  }

  else
  {
    v160 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
    v161 = *(v160 - 8);
    v159 = v265;
    (*(v161 + 16))(v265, v264, v160);
    (*(v161 + 56))(v159, 0, 1, v160);
  }

  static GestureMask.all.getter();
  v162 = sub_100003968(&qword_1000630C8, &qword_100048730);
  v163 = sub_100018330();
  v164 = sub_1000185E0();
  v165 = v266;
  v166 = v159;
  v167 = v267;
  View.gesture<A>(_:including:)();
  sub_100003CE8(v166, &qword_100063070, &qword_1000486D8);
  memcpy(v353, v354, 0x139uLL);
  sub_100003CE8(v353, &qword_1000630C8, &qword_100048730);
  v168 = v284;
  sub_100017ED0(v291, v284, type metadata accessor for RootView);
  v169 = v285;
  v170 = v283;
  (v276)(v285, v289, v283);
  v171 = swift_allocObject();
  sub_1000180B8(v168, v171 + v279, type metadata accessor for RootView);
  v274(v171 + v281, v169, v170);
  *&v341 = v162;
  *(&v341 + 1) = v167;
  *&v342 = v163;
  *(&v342 + 1) = v164;
  swift_getOpaqueTypeConformance2();
  v172 = v269;
  View.onTapGesture(count:perform:)();

  (*(v268 + 8))(v165, v172);
  v173 = v290;
  LOBYTE(v341) = v290;
  v174 = v286;
  *(&v341 + 1) = v286;
  State.wrappedValue.getter();
  if (v329 == 2)
  {
    v175 = v280;
    v176 = v291;
    v177 = v291 + v280[15];
    v178 = *(v177 + 16);
    v329 = *v177;
    *&v330 = v178;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.projectedValue.getter();
    v179 = *(&v341 + 1);
    v293 = v341;
    v284 = *(&v342 + 1);
    v285 = v342;
    GeometryProxy.size.getter();
    v181 = v180;
    v183 = v182;
    LOBYTE(v341) = v173;
    *(&v341 + 1) = v174;
    State.wrappedValue.getter();
    sub_1000143D4(v329, v181, v183);
    v185 = v184;
    v187 = v186;
    v188 = v176 + v175[12];
    v189 = *(v188 + 16);
    v341 = *v188;
    *&v342 = v189;
    State.wrappedValue.getter();
    v190 = v329;
    GeometryProxy.size.getter();
    v192 = v191;
    v194 = v193;
    type metadata accessor for CGSize(0);
    v329 = 0uLL;
    State.init(wrappedValue:)();
    v195 = v341;
    v196 = v342;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v318 = xmmword_100048310;
    LOBYTE(v319) = 0;
    *(&v319 + 1) = v293;
    *&v320 = v179;
    *(&v320 + 1) = v285;
    *&v321 = v284;
    *(&v321 + 1) = v185;
    *v322 = v187;
    *&v322[8] = v190;
    *&v322[24] = v192;
    *v323 = v194;
    *&v323[8] = v195;
    *&v323[24] = v196;
    sub_1000189D4(&v318);
    v338 = v326;
    v339 = v327;
    v340[0] = v328[0];
    *(v340 + 10) = *(v328 + 10);
    v334 = *v323;
    v335 = *&v323[16];
    v336 = v324;
    v337 = v325;
    v331 = v320;
    v332[0] = v321;
    v332[1] = *v322;
    v333 = *&v322[16];
    v329 = v318;
    v330 = v319;
    sub_100003968(&qword_100063140, &qword_100048778);
    sub_100003968(&qword_100063148, &qword_100048780);
    sub_1000186FC();
    sub_1000187DC();
    _ConditionalContent<>.init(storage:)();
    v338 = v350;
    v339 = v351;
    v340[0] = v352[0];
    *(v340 + 10) = *(v352 + 10);
    v334 = v346;
    v335 = v347;
    v336 = v348;
    v337 = v349;
    v331 = v343;
    v332[0] = v344[0];
    v332[1] = v344[1];
    v333 = v345;
    v329 = v341;
    v330 = v342;
    nullsub_1(&v329);
    v350 = v338;
    v351 = v339;
    v352[0] = v340[0];
    v197 = *(v340 + 10);
LABEL_27:
    *(v352 + 10) = v197;
    v346 = v334;
    v347 = v335;
    v348 = v336;
    v349 = v337;
    v343 = v331;
    v344[0] = v332[0];
    v344[1] = v332[1];
    v345 = v333;
    v341 = v329;
    v342 = v330;
    goto LABEL_28;
  }

  v198 = v291;
  v199 = v289;
  LOBYTE(v341) = v173;
  *(&v341 + 1) = v174;
  State.wrappedValue.getter();
  if (v329 == 3)
  {
    v200 = v198 + v280[25];
    v201 = *v200;
    v202 = *(v200 + 8);
    LOBYTE(v329) = v201;
    *(&v329 + 1) = v202;
    sub_100003968(&qword_100063138, &qword_100048770);
    State.projectedValue.getter();
    v203 = v341;
    v204 = v342;
    v205 = v284;
    sub_100017ED0(v198, v284, type metadata accessor for RootView);
    v206 = v285;
    (v276)(v285, v199, v170);
    v207 = swift_allocObject();
    sub_1000180B8(v205, v207 + v279, type metadata accessor for RootView);
    v274(v207 + v281, v206, v170);
    sub_10001B6DC(v203, *(&v203 + 1), v204, sub_1000186D8, v207, v304);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v208 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v210 = v209;
    v212 = v211;
    v214 = v213;
    v216 = v215;
    LOBYTE(v341) = 0;
    v217 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    *v322 = v304[4];
    *&v322[16] = v304[5];
    *v323 = v304[6];
    *&v323[16] = v304[7];
    v318 = v304[0];
    v319 = v304[1];
    v320 = v304[2];
    v321 = v304[3];
    LOBYTE(v324) = v208;
    *(&v324 + 1) = v210;
    *&v325 = v212;
    *(&v325 + 1) = v214;
    *&v326 = v216;
    BYTE8(v326) = 0;
    LOBYTE(v327) = v217;
    *(&v327 + 1) = v218;
    *&v328[0] = v219;
    *(&v328[0] + 1) = v220;
    *&v328[1] = v221;
    BYTE8(v328[1]) = 0;
    sub_1000186F0(&v318);
    v338 = v326;
    v339 = v327;
    v340[0] = v328[0];
    *(v340 + 10) = *(v328 + 10);
    v334 = *v323;
    v335 = *&v323[16];
    v336 = v324;
    v337 = v325;
    v331 = v320;
    v332[0] = v321;
    v332[1] = *v322;
    v333 = *&v322[16];
    v329 = v318;
    v330 = v319;
    sub_100003968(&qword_100063140, &qword_100048778);
    sub_100003968(&qword_100063148, &qword_100048780);
    sub_1000186FC();
    sub_1000187DC();
    _ConditionalContent<>.init(storage:)();
    v338 = v350;
    v339 = v351;
    v340[0] = v352[0];
    *(v340 + 10) = *(v352 + 10);
    v334 = v346;
    v335 = v347;
    v336 = v348;
    v337 = v349;
    v331 = v343;
    v332[0] = v344[0];
    v332[1] = v344[1];
    v333 = v345;
    v329 = v341;
    v330 = v342;
    nullsub_1(&v329);
    v350 = v338;
    v351 = v339;
    v352[0] = v340[0];
    v197 = *(v340 + 10);
    goto LABEL_27;
  }

  sub_1000186A8(&v341);
LABEL_28:
  v222 = v282;
  sub_100006098(v287, v282, &qword_1000630A8, &qword_100048710);
  v223 = v271;
  v224 = v272;
  v225 = *(v272 + 16);
  v226 = v273;
  v225(v271, v288, v273);
  v315 = v350;
  v316 = v351;
  v317[0] = v352[0];
  *(v317 + 10) = *(v352 + 10);
  v311 = v346;
  v312 = v347;
  v313 = v348;
  v314 = v349;
  v307 = v343;
  v308 = v344[0];
  v309 = v344[1];
  v310 = v345;
  v305 = v341;
  v306 = v342;
  v227 = v222;
  v228 = v270;
  sub_100006098(v227, v270, &qword_1000630A8, &qword_100048710);
  v229 = sub_100003968(&qword_100063128, &qword_100048760);
  v225((v228 + *(v229 + 48)), v223, v226);
  v230 = *(v229 + 64);
  v231 = v316;
  v326 = v315;
  v327 = v316;
  v232 = v317[0];
  v328[0] = v317[0];
  *(v328 + 10) = *(v317 + 10);
  v233 = v311;
  v234 = v312;
  *v323 = v311;
  *&v323[16] = v312;
  v235 = v313;
  v236 = v314;
  v324 = v313;
  v325 = v314;
  v237 = v309;
  v238 = v310;
  *v322 = v309;
  *&v322[16] = v310;
  v239 = v307;
  v240 = v308;
  v320 = v307;
  v321 = v308;
  v241 = v305;
  v242 = v306;
  v318 = v305;
  v319 = v306;
  v243 = (v228 + v230);
  v243[10] = v315;
  v243[11] = v231;
  v243[12] = v232;
  *(v243 + 202) = *(v317 + 10);
  v243[6] = v233;
  v243[7] = v234;
  v243[8] = v235;
  v243[9] = v236;
  v243[2] = v239;
  v243[3] = v240;
  v243[4] = v237;
  v243[5] = v238;
  *v243 = v241;
  v243[1] = v242;
  sub_100006098(&v318, &v329, &qword_100063130, &qword_100048768);
  v244 = *(v224 + 8);
  v244(v288, v226);
  sub_100003CE8(v287, &qword_1000630A8, &qword_100048710);
  v338 = v315;
  v339 = v316;
  v340[0] = v317[0];
  *(v340 + 10) = *(v317 + 10);
  v334 = v311;
  v335 = v312;
  v336 = v313;
  v337 = v314;
  v331 = v307;
  v332[0] = v308;
  v332[1] = v309;
  v333 = v310;
  v329 = v305;
  v330 = v306;
  sub_100003CE8(&v329, &qword_100063130, &qword_100048768);
  v244(v223, v226);
  return sub_100003CE8(v282, &qword_1000630A8, &qword_100048710);
}

id sub_100012898(uint64_t a1)
{
  GeometryProxy.size.getter();
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  sub_10000F0FC();
  sub_100014820();
  return [*(a1 + *(type metadata accessor for RootView() + 92)) idleSleepTimerDisabled:0];
}

id sub_100012944()
{
  IsPad = AXDeviceIsPad();
  GeometryProxy.size.getter();
  if (IsPad)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return sub_100010430(v3, v1, v2);
}

uint64_t sub_100012990()
{
  v1 = (v0 + *(type metadata accessor for RootView() + 32));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  result = State.wrappedValue.getter();
  if (v5)
  {
    result = State.wrappedValue.getter();
    if (v5 == 3)
    {
      return sub_10000BE90();
    }
  }

  return result;
}

id sub_100012A6C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for RootView() + 32));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (v8)
  {
    result = State.wrappedValue.getter();
    if (v8 != 1)
    {
      return result;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  GeometryProxy.size.getter();
  return sub_100010430(v5, v6, v7);
}

uint64_t sub_100012B38(uint64_t a1)
{
  GeometryProxy.size.getter();
  sub_100010430(1, v2, v3);
  v4 = (a1 + *(type metadata accessor for RootView() + 100));
  v6 = *v4;
  v7 = *(v4 + 1);
  sub_100003968(&qword_100063138, &qword_100048770);
  return State.wrappedValue.setter();
}

double sub_100012BC0()
{
  v1 = type metadata accessor for RootView();
  v2 = (v0 + *(v1 + 32));
  v6 = *v2;
  v8 = *(v2 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  result = 1.0;
  if (LOBYTE(v5) == 4)
  {
    v4 = (v0 + *(v1 + 68));
    v7 = *v4;
    v9 = v4[1];
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.wrappedValue.getter();
    return v5;
  }

  return result;
}

void sub_100012C80(double a1, double a2)
{
  v5 = type metadata accessor for RootView();
  v6 = (v2 + v5[8]);
  v7 = *v6;
  v8 = v6[1];
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  if (LOBYTE(v22) != 3)
  {
    State.wrappedValue.getter();
    if (LOBYTE(v22) == 4)
    {
      v9 = (v2 + v5[13]);
      v17 = *v9;
      v19 = *(v9 + 2);
      sub_100003968(&qword_100062880, &unk_100047D20);
      State.wrappedValue.getter();
      if (AXDeviceIsPad())
      {
        v10 = 68.0;
      }

      else
      {
        v10 = 54.0;
      }

      safeOffset(offset:size:containerSize:foreheadWindowRect:)(v22, v23, v10, v10, a1, a2, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    }

    else
    {
      v11 = (v2 + v5[12]);
      v18 = *v11;
      v20 = v11[2];
      sub_100003968(&qword_100062880, &unk_100047D20);
      State.wrappedValue.getter();
      LOBYTE(v18) = v7;
      State.wrappedValue.getter();
      sub_1000143D4(LOBYTE(v22), a1, a2);
      v13 = v12;
      v15 = v14;
      v16 = *(v2 + v5[21] + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      safeOffset(offset:size:containerSize:foreheadWindowRect:)(v22, v23, v13, v15, a1, a2, *&v18, v8, v20, v21);
      if ((sub_10000BE90() & 1) == 0)
      {
        State.wrappedValue.getter();
      }
    }
  }
}

void sub_100012F20(double a1, double a2)
{
  v3 = v2;
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 integerForKey:v7];

  if (v8 >= 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = type metadata accessor for RootView();
  v11 = (v3 + v10[8]);
  v12 = *v11;
  v13 = *(v11 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  if (!v9 && UIAccessibilityIsVoiceOverRunning())
  {
    State.wrappedValue.setter();
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v6 stringForKey:v14];

  if (v15)
  {
    *&v16 = *&CGSizeFromString(v15);

    v17 = (v3 + v10[13]);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 2);
    v49 = v16;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.setter();
  }

  else
  {
    v21 = (v3 + v10[13]);
    v18 = *v21;
    v19 = v21[1];
    v22 = *(v21 + 2);

    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.getter();
    v49 = v18;
    State.wrappedValue.setter();
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 stringForKey:v23];

  if (v24)
  {
    *&v25 = *&CGSizeFromString(v24);

    v26 = (v3 + v10[15]);
    v56 = *v26;
    v59 = *(v26 + 2);
    v49 = v25;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.setter();
  }

  v27 = String._bridgeToObjectiveC()();
  v28 = [v6 stringForKey:v27];

  if (v28)
  {
    v29 = *&CGSizeFromString(v28);

    v30 = (v3 + v10[12]);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v30 + 2);
    LOBYTE(v50) = v29;
  }

  else
  {
    State.wrappedValue.getter();
    if (LOBYTE(v49) == 2)
    {
      v34 = (v3 + v10[15]);
      v35 = *v34;
      v36 = v34[1];
      v37 = v34[2];
      sub_100003968(&qword_100062880, &unk_100047D20);
      State.wrappedValue.getter();
      State.wrappedValue.getter();
      v38 = (v3 + v10[12]);
      v31 = *v38;
      v32 = v38[1];
      v39 = *(v38 + 2);
      v50 = (a1 - v49) * 0.5;
      goto LABEL_24;
    }

    State.wrappedValue.getter();
    if (LOBYTE(v49) && (State.wrappedValue.getter(), LOBYTE(v49) != 1))
    {
      v40 = 0;
    }

    else
    {
      State.wrappedValue.getter();
      v40 = LOBYTE(v49);
    }

    sub_1000143D4(v40, a1, a2);
    v42 = (v3 + v10[12]);
    v31 = *v42;
    v32 = v42[1];
    v43 = *(v42 + 2);
    v50 = (a1 - v41) * 0.5;
  }

  sub_100003968(&qword_100062880, &unk_100047D20);
LABEL_24:
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  if (LOBYTE(v50) == 4)
  {
    v44 = 0;
  }

  else
  {
    State.wrappedValue.getter();
    v44 = LOBYTE(v50);
  }

  v45 = (v3 + v10[9]);
  v57 = *v45;
  v58 = *(v45 + 1);
  v51 = v44;
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();

  State.wrappedValue.getter();
  if (v51 == 4)
  {
    v52 = v31;
    v54 = v32;
    State.wrappedValue.setter();

    sub_100014820();
  }

  else
  {
    v52 = v18;
    v54 = v19;
    State.wrappedValue.setter();

    sub_1000138B4(a1, a2);
    [*(v3 + v10[23]) idleSleepTimerDisabled:1];
  }

  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v53 = sub_100025378(3, v52, v54, a1, a2);
  v55 = v46;
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v53), a1, a2);
  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v53, v55, v47, v48, a1, a2, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);

  State.wrappedValue.setter();
}

uint64_t sub_1000137B8(uint64_t a1)
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = (a1 + *(type metadata accessor for RootView() + 32));
  v7 = *v2;
  v8 = *(v2 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  result = State.wrappedValue.getter();
  if (v6 != 4)
  {
    GeometryProxy.size.getter();
    return sub_1000138B4(v4, v5);
  }

  return result;
}

uint64_t sub_1000138B4(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for RootView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (v2 + *(v9 + 96));
  v11 = *v10;
  v12 = v10[1];
  aBlock = *v10;
  v23 = v12;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  if (v28)
  {
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  aBlock = v11;
  v23 = v12;
  State.wrappedValue.getter();
  v13 = v28;
  [v28 invalidate];

  v14 = objc_opt_self();
  sub_100017ED0(v3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1000180B8(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RootView);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;
  v26 = sub_100017884;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100032E40;
  v25 = &unk_10005E368;
  v18 = _Block_copy(&aBlock);

  v19 = [v14 scheduledTimerWithTimeInterval:0 repeats:v18 block:120.0];
  _Block_release(v18);
  aBlock = v11;
  v23 = v12;
  v28 = v19;
  return State.wrappedValue.setter();
}

uint64_t sub_100013B98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RootView();
  v4 = (a2 + v3[12]);
  v5 = *(v4 + 1);
  v22 = *v4;
  v25 = v4[2];
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  v7 = v6;
  v9 = v8;
  v10 = a2 + v3[8];
  LOBYTE(v22) = *v10;
  v24 = *(v10 + 8);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v28), v7, v9);
  v12 = v11;
  v14 = v13;
  GeometryProxy.size.getter();
  v16 = v15;
  v18 = v17;
  v19 = *(a2 + v3[21] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v28, v29, v12, v14, v16, v18, v22, v24, v25, v27);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  v20 = (a2 + v3[14]);
  v23 = *v20;
  v26 = *(v20 + 2);
  return State.wrappedValue.setter();
}

uint64_t sub_100013D98(uint64_t a1, char a2, double a3, double a4)
{
  v9 = type metadata accessor for RootView();
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + *(v12 + 32);
  v15 = *(v13 + 8);
  LOBYTE(v74) = *v13;
  v14 = v74;
  *(&v74 + 1) = v15;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  v77 = v71;
  LOBYTE(v74) = v14;
  *(&v74 + 1) = v15;
  State.wrappedValue.getter();
  if (v71 == 4)
  {
    v67 = v4;
    v16 = a1 + v9[9];
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v74) = v17;
    *(&v74 + 1) = v18;
    State.wrappedValue.getter();
    LOBYTE(v74) = v14;
    *(&v74 + 1) = v15;
    State.wrappedValue.setter();
    v19 = a1 + v9[13];
    v20 = *(v19 + 16);
    v74 = *v19;
    v75 = v20;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.getter();
    v21 = *(&v71 + 1);
    v22 = (a1 + v9[12]);
    v24 = v22[1];
    v25 = v22[2];
    *&v74 = *v22;
    v23 = v74;
    *(&v74 + 1) = v24;
    v75 = v25;

    State.wrappedValue.getter();
    *&v71 = v23;
    *(&v71 + 1) = v24;
    v72 = v25;
    v69 = v73;
    v70 = v21;
    State.wrappedValue.setter();
    if (a2 == 3)
    {
      v26 = 1;
    }

    else
    {
      LOBYTE(v74) = v14;
      *(&v74 + 1) = v15;
      State.wrappedValue.getter();
      v26 = v71;
    }

    sub_1000143D4(v26, a3, a4);
    v34 = v33;
    v36 = v35;
    *&v74 = v23;
    *(&v74 + 1) = v24;
    v75 = v25;
    State.wrappedValue.getter();
    safeOffset(offset:size:containerSize:foreheadWindowRect:)(*&v71, *(&v71 + 1), v34, v36, a3, a4, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    *&v74 = v23;
    *(&v74 + 1) = v24;
    v75 = v25;
    *&v71 = v37;
    *(&v71 + 1) = v38;
    State.wrappedValue.setter();

    v39 = static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    v40 = qword_1000654E8;
    v41 = v68;
    sub_100017ED0(a1, v68, type metadata accessor for RootView);
    if (os_log_type_enabled(v40, v39))
    {
      v42 = swift_slowAlloc();
      v66 = v40;
      v43 = v42;
      v65 = swift_slowAlloc();
      v73 = v65;
      *v43 = 136315138;
      v44 = v41 + v9[12];
      v45 = *(v44 + 16);
      v74 = *v44;
      v75 = v45;
      v76 = v39;
      v46 = v41;
      State.wrappedValue.getter();
      v74 = v71;
      type metadata accessor for CGSize(0);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      sub_100018200(v46, type metadata accessor for RootView);
      v50 = sub_100031EB4(v47, v49, &v73);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v66, v76, "switchToState windowOffset: %s", v43, 0xCu);
      sub_100018190(v65);
    }

    else
    {
      sub_100018200(v41, type metadata accessor for RootView);
    }
  }

  else
  {
    LOBYTE(v74) = v14;
    *(&v74 + 1) = v15;
    LOBYTE(v71) = a2;
    State.wrappedValue.setter();
    if (a2 == 4)
    {
      v27 = a1 + v9[9];
      v28 = *v27;
      v29 = *(v27 + 8);
      LOBYTE(v74) = v28;
      *(&v74 + 1) = v29;
      State.wrappedValue.getter();
      a2 = v71;
    }

    v30 = a1 + v9[9];
    v31 = *v30;
    v32 = *(v30 + 8);
    LOBYTE(v74) = v31;
    *(&v74 + 1) = v32;
    LOBYTE(v71) = a2;
    State.wrappedValue.setter();
  }

  LOBYTE(v74) = v14;
  *(&v74 + 1) = v15;
  State.wrappedValue.getter();
  if (v71 != 3)
  {
    v51 = 0.0;
    if ((v77 - 3) >= 2u)
    {
      sub_1000143D4(v77, a3, a4);
      v53 = v52;
      LOBYTE(v74) = v14;
      *(&v74 + 1) = v15;
      State.wrappedValue.getter();
      sub_1000143D4(v71, a3, a4);
      v51 = v53 - v54;
    }

    v55 = a1 + v9[12];
    v56 = *(v55 + 16);
    v74 = *v55;
    v75 = v56;
    sub_100003968(&qword_100062880, &unk_100047D20);
    State.wrappedValue.getter();
    v57 = (a1 + v9[14]);
    v59 = v57[1];
    v60 = v57[2];
    *&v74 = *v57;
    v58 = v74;
    *(&v74 + 1) = v59;
    v75 = v60;

    State.wrappedValue.setter();
    sub_10000E98C(0.0, v51, a3, a4);
    *&v74 = v58;
    *(&v74 + 1) = v59;
    v75 = v60;
    v71 = 0uLL;
    State.wrappedValue.setter();
  }

  sub_10000F0FC();
  v61 = (a1 + v9[17]);
  v62 = *v61;
  v63 = v61[1];
  *&v74 = v62;
  *(&v74 + 1) = v63;
  *&v71 = 0x3FF0000000000000;
  sub_100003968(&qword_100062B18, &unk_100049360);
  return State.wrappedValue.setter();
}

void sub_1000143D4(unsigned __int8 a1, double a2, double a3)
{
  v7 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for RootView();
  v12 = (v3 + *(v11 + 32));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v21) = v13;
  v22 = v14;
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_100014C5C(a2, a3);
  if (a1 <= 1u)
  {
    v15 = (v3 + *(v11 + 64));
    v16 = *v15;
    v17 = v15[1];
    v21 = v16;
    v22 = v17;
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.wrappedValue.getter();
    v18 = *&v20[1];
    sub_10000B0CC(v10);
    v19 = type metadata accessor for DynamicTypeSize();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
    titleAndTextHeight(textHeight:dynamicTypeSize:)(v10, v18);
    sub_100003CE8(v10, &qword_100062AE8, &qword_1000480E0);
  }

  else if (a1 == 2)
  {
    sub_100015068(a2, a3);
  }

  else if (a1 != 3)
  {
    AXDeviceIsPad();
  }
}

uint64_t sub_1000146BC(uint64_t a1, char a2, double a3, double a4)
{
  v8 = type metadata accessor for RootView();
  v9 = (a1 + v8[13]);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  sub_100025378(a2, v16, v17, a3, a4);
  State.wrappedValue.setter();
  v13 = (a1 + v8[8]);
  v18 = *v13;
  v20 = *(v13 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.setter();
  v14 = (a1 + v8[17]);
  v19 = *v14;
  v21 = v14[1];
  sub_100003968(&qword_100062B18, &unk_100049360);
  return State.wrappedValue.setter();
}

uint64_t sub_100014820()
{
  v1 = v0;
  v2 = type metadata accessor for RootView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v5 = v0 + *(v2 + 76);
  v7 = *(v5 + 8);
  aBlock = *v5;
  v6 = aBlock;
  v16 = v7;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  [v21 invalidate];

  v8 = objc_opt_self();
  sub_100017ED0(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000180B8(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for RootView);
  v19 = sub_100017D98;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100032E40;
  v18 = &unk_10005E3B8;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:30.0];
  _Block_release(v11);
  aBlock = v6;
  v16 = v7;
  v21 = v12;
  return State.wrappedValue.setter();
}

uint64_t sub_100014AC0(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for RootView();
  v7 = (a1 + *(v6 + 48));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 2);

  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  v11 = (a1 + *(v6 + 32));
  v15 = *v11;
  v16 = *(v11 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  State.wrappedValue.getter();
  sub_1000143D4(LOBYTE(v8), a2, a3);
  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v8, v9, v12, v13, a2, a3, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
  State.wrappedValue.setter();
}

double sub_100014C5C(double a1, double a2)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  if (AXDeviceIsPad())
  {
    sub_10000B0CC(v15);
    (*(v5 + 56))(v15, 0, 1, v4);
    sub_100006098(v15, v13, &qword_100062AE8, &qword_1000480E0);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_100003CE8(v15, &qword_100062AE8, &qword_1000480E0);
      sub_100003CE8(v13, &qword_100062AE8, &qword_1000480E0);
    }

    else
    {
      (*(v5 + 32))(v8, v13, v4);
      if (qword_1000626F8 != -1)
      {
        swift_once();
      }

      sub_1000064FC(v4, accessibilityLayoutTextSize);
      sub_100016110(&qword_100062AF0, &type metadata accessor for DynamicTypeSize);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v5 + 8))(v8, v4);
      sub_100003CE8(v15, &qword_100062AE8, &qword_1000480E0);
      if ((v26 & 1) == 0)
      {
        v38 = [objc_opt_self() mainScreen];
        [v38 bounds];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v51.origin.x = v40;
        v51.origin.y = v42;
        v51.size.width = v44;
        v51.size.height = v46;
        Width = CGRectGetWidth(v51);
        goto LABEL_13;
      }
    }

    IsPadMiniIdiom = AXDeviceIsPadMiniIdiom();
    v28 = [objc_opt_self() mainScreen];
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v50.origin.x = v30;
    v50.origin.y = v32;
    v50.size.width = v34;
    v50.size.height = v36;
    Width = CGRectGetWidth(v50);
    if (!IsPadMiniIdiom || a1 >= a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v37 = 0.84;
    return Width * v37;
  }

  if (a2 < a1)
  {
    v16 = [objc_opt_self() mainScreen];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v49.origin.x = v18;
    v49.origin.y = v20;
    v49.size.width = v22;
    v49.size.height = v24;
    Width = CGRectGetWidth(v49);
LABEL_11:
    v37 = 0.5;
    return Width * v37;
  }

  return a1;
}

uint64_t sub_100015068(double a1, double a2)
{
  v5 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for RootView();
  v10 = (v2 + v9[16]);
  v11 = *v10;
  v12 = v10[1];
  *&v26 = v11;
  *(&v26 + 1) = v12;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  v13 = v24;
  sub_10000B0CC(v8);
  v14 = type metadata accessor for DynamicTypeSize();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  titleAndTextHeight(textHeight:dynamicTypeSize:)(v8, v13);
  sub_100003CE8(v8, &qword_100062AE8, &qword_1000480E0);
  v15 = (v2 + v9[12]);
  v16 = *(v15 + 2);
  v26 = *v15;
  v27 = v16;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  v17 = v24;
  v18 = v25;
  v19 = (v2 + v9[15]);
  v21 = v19[1];
  v22 = v19[2];
  *&v26 = *v19;
  v20 = v26;
  *(&v26 + 1) = v21;
  v27 = v22;
  State.wrappedValue.getter();
  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v17, v18, v24, v25, a1, a2, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v27 = v22;
  return State.wrappedValue.getter();
}

void sub_1000152A8(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v3 = static AXLTCaptionsProvider.shared;
  v4 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (*(v3 + v4) == 1)
  {
    AXLTCaptionsProvider.stopTranscribing()();
    v5 = (a2 + *(type metadata accessor for RootView() + 80));
    v7 = *v5;
    v8 = *(v5 + 1);
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.setter();
    v6 = [objc_opt_self() defaultCenter];
    if (qword_100062700 != -1)
    {
      swift_once();
    }

    [v6 postNotificationName:qword_100065508 object:0 userInfo:0];
  }
}

id sub_100015474(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v3 = type metadata accessor for RootView();
  v4 = (a2 + *(v3 + 32));
  v7 = *v4;
  v8 = *(v4 + 1);
  sub_100003968(&qword_100062F68, &qword_1000485B8);
  result = State.wrappedValue.getter();
  if (v6 != 4)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_10000F0FC();
    sub_100014820();
    return [*(a2 + *(v3 + 92)) idleSleepTimerDisabled:0];
  }

  return result;
}

uint64_t sub_10001560C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for RootView();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[8];
  State.init(wrappedValue:)();
  *v6 = v30;
  *(v6 + 1) = *(&v30 + 1);
  v7 = a1 + v2[9];
  State.init(wrappedValue:)();
  *v7 = v30;
  *(v7 + 1) = *(&v30 + 1);
  v8 = v2[10];
  State.init(wrappedValue:)();
  *(a1 + v8) = v30;
  v9 = a1 + v2[11];
  State.init(wrappedValue:)();
  *v9 = v30;
  *(v9 + 2) = v31;
  v10 = a1 + v2[12];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *v10 = v30;
  *(v10 + 2) = v31;
  v11 = a1 + v2[13];
  State.init(wrappedValue:)();
  *v11 = v30;
  *(v11 + 2) = v31;
  v12 = a1 + v2[14];
  State.init(wrappedValue:)();
  *v12 = v30;
  *(v12 + 2) = v31;
  v13 = a1 + v2[15];
  State.init(wrappedValue:)();
  *v13 = v30;
  *(v13 + 2) = v31;
  v14 = (a1 + v2[16]);
  State.init(wrappedValue:)();
  *v14 = v30;
  v15 = (a1 + v2[17]);
  State.init(wrappedValue:)();
  *v15 = v30;
  v16 = a1 + v2[18];
  State.init(wrappedValue:)();
  *v16 = v30;
  *(v16 + 2) = v31;
  v17 = v2[19];
  sub_100003968(&qword_100062D88, &qword_100048850);
  State.init(wrappedValue:)();
  *(a1 + v17) = v30;
  v18 = a1 + v2[20];
  State.init(wrappedValue:)();
  *v18 = v30;
  *(v18 + 1) = *(&v30 + 1);
  v19 = (a1 + v2[21]);
  [objc_allocWithZone(type metadata accessor for ForeheadWindow()) init];
  sub_100016110(&qword_100062D90, type metadata accessor for ForeheadWindow);
  *v19 = ObservedObject.init(wrappedValue:)();
  v19[1] = v20;
  v21 = v2[22];
  State.init(wrappedValue:)();
  *(a1 + v21) = v30;
  v22 = v2[23];
  *(a1 + v22) = [objc_allocWithZone(LCSystemUtilities) init];
  v23 = v2[24];
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v24 = (a1 + v23);
  v25 = static AXLTCaptionsProvider.shared;
  type metadata accessor for AXLTCaptionsProvider();
  sub_100016110(&qword_100062D98, type metadata accessor for AXLTCaptionsProvider);
  v26 = v25;
  *v24 = ObservedObject.init(wrappedValue:)();
  v24[1] = v27;
  v28 = a1 + v2[25];
  sub_100003968(&qword_100062DA0, &unk_1000484C0);
  result = State.init(wrappedValue:)();
  *v28 = v30;
  *(v28 + 1) = *(&v30 + 1);
  return result;
}

uint64_t sub_100015B1C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100017ED0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000180B8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for RootView);
  *a2 = sub_1000169BC;
  a2[1] = v7;
  return result;
}

uint64_t sub_100015CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_100003968(&qword_100062978, &qword_1000482D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - v9;
  sub_100006098(a1, &v12 - v9, &qword_100062978, &qword_1000482D0);
  return a5(v10);
}

uint64_t sub_100015D58(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.layoutDirection.setter();
}

unint64_t _s19LiveTranscriptionUI11WindowStateO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100015E34()
{
  result = qword_100062D80;
  if (!qword_100062D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for RootView()
{
  result = qword_100062E08;
  if (!qword_100062E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001616C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003968(&qword_100062B60, &unk_1000484D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003968(&qword_1000629D0, &qword_100047EB8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100003968(&qword_100062DA8, &qword_1000484E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000162FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003968(&qword_100062B60, &unk_1000484D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100003968(&qword_1000629D0, &qword_100047EB8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_100003968(&qword_100062DA8, &qword_1000484E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100016474()
{
  sub_1000167AC(319, &qword_100062BD0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100016938(319, &qword_100062E18, &qword_100062978, &qword_1000482D0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000167AC(319, &qword_100062E20, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100008888(319, &qword_100062E28);
        if (v3 <= 0x3F)
        {
          sub_100008888(319, &qword_100062E30);
          if (v4 <= 0x3F)
          {
            sub_100008888(319, &qword_100062E38);
            if (v5 <= 0x3F)
            {
              sub_1000167AC(319, &qword_100062E40, type metadata accessor for CGSize, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_100008888(319, &qword_100062E48);
                if (v7 <= 0x3F)
                {
                  sub_100016938(319, &qword_100062E50, &qword_100062D88, &qword_100048850, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_100008888(319, &qword_100062E58);
                    if (v9 <= 0x3F)
                    {
                      sub_100016810();
                      if (v10 <= 0x3F)
                      {
                        sub_100017E20(319, &qword_100062E68, &off_10005CE00);
                        if (v11 <= 0x3F)
                        {
                          sub_1000168A4();
                          if (v12 <= 0x3F)
                          {
                            sub_100016938(319, &unk_100062E78, &qword_100062DA0, &unk_1000484C0, &type metadata accessor for State);
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000167AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100016810()
{
  if (!qword_100062E60)
  {
    type metadata accessor for ForeheadWindow();
    sub_100016110(&qword_100062D90, type metadata accessor for ForeheadWindow);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100062E60);
    }
  }
}

void sub_1000168A4()
{
  if (!qword_100062E70)
  {
    type metadata accessor for AXLTCaptionsProvider();
    sub_100016110(&qword_100062D98, type metadata accessor for AXLTCaptionsProvider);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100062E70);
    }
  }
}

void sub_100016938(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003AC0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000169BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RootView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000CD14(a1, v6, a2);
}

uint64_t sub_100016A70(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RootView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for GeometryProxy() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

void sub_100016B58()
{
  v1 = v0;
  v2 = *(type metadata accessor for RootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  GeometryProxy.size.getter();
  sub_100012F20(v7, v8);
}

id sub_100016C20()
{
  v1 = type metadata accessor for RootView();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 92));

  return [v2 idleSleepTimerDisabled:0];
}

unint64_t sub_100016CB4()
{
  result = qword_100062F70;
  if (!qword_100062F70)
  {
    sub_100003AC0(&qword_100062F38, &qword_100048588);
    sub_100016D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F70);
  }

  return result;
}

unint64_t sub_100016D40()
{
  result = qword_100062F78;
  if (!qword_100062F78)
  {
    sub_100003AC0(&qword_100062F30, &qword_100048580);
    sub_100016DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F78);
  }

  return result;
}

unint64_t sub_100016DCC()
{
  result = qword_100062F80;
  if (!qword_100062F80)
  {
    sub_100003AC0(&qword_100062F28, &qword_100048578);
    sub_100016E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F80);
  }

  return result;
}

unint64_t sub_100016E58()
{
  result = qword_100062F88;
  if (!qword_100062F88)
  {
    sub_100003AC0(&qword_100062F20, &qword_100048570);
    sub_100016EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F88);
  }

  return result;
}

unint64_t sub_100016EE4()
{
  result = qword_100062F90;
  if (!qword_100062F90)
  {
    sub_100003AC0(&qword_100062F18, &qword_100048568);
    sub_100016F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F90);
  }

  return result;
}

unint64_t sub_100016F70()
{
  result = qword_100062F98;
  if (!qword_100062F98)
  {
    sub_100003AC0(&qword_100062F10, &qword_100048560);
    sub_100016FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062F98);
  }

  return result;
}

unint64_t sub_100016FFC()
{
  result = qword_100062FA0;
  if (!qword_100062FA0)
  {
    sub_100003AC0(&qword_100062F08, &qword_100048558);
    sub_100017088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FA0);
  }

  return result;
}

unint64_t sub_100017088()
{
  result = qword_100062FA8;
  if (!qword_100062FA8)
  {
    sub_100003AC0(&qword_100062F00, &qword_100048550);
    sub_100017140();
    sub_100003E3C(&qword_100062FD8, &qword_100062818, &qword_1000485C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FA8);
  }

  return result;
}

unint64_t sub_100017140()
{
  result = qword_100062FB0;
  if (!qword_100062FB0)
  {
    sub_100003AC0(&qword_100062EF8, &qword_100048548);
    sub_1000171CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FB0);
  }

  return result;
}

unint64_t sub_1000171CC()
{
  result = qword_100062FB8;
  if (!qword_100062FB8)
  {
    sub_100003AC0(&qword_100062F58, &qword_1000485A8);
    sub_100003E3C(&qword_100062FC0, &qword_100062FC8, &qword_100048618);
    sub_100003E3C(&qword_100062FD0, &qword_100062F60, &qword_1000485B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FB8);
  }

  return result;
}

unint64_t sub_1000172B0()
{
  result = qword_100062FE0;
  if (!qword_100062FE0)
  {
    sub_100003AC0(&qword_1000638B0, &qword_100048610);
    sub_100016110(&qword_100062C68, &type metadata accessor for AXLTCaption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062FE0);
  }

  return result;
}

uint64_t sub_100017364(uint64_t a1)
{
  v3 = *(type metadata accessor for RootView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100013B98(a1, v1 + v4);
}

uint64_t sub_100017440()
{
  v1 = type metadata accessor for RootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v5[v8], 1, v9))
    {
      (*(v10 + 8))(&v5[v8], v9);
    }
  }

  else
  {
    v11 = *&v5[v8];
  }

  v12 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v5[v12], 1, v13))
    {
      (*(v14 + 8))(&v5[v12], v13);
    }
  }

  else
  {
    v15 = *&v5[v12];
  }

  v16 = v1[7];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for LayoutDirection();
    (*(*(v17 - 8) + 8))(&v5[v16], v17);
  }

  else
  {
    v18 = *&v5[v16];
  }

  v19 = *&v5[v1[8] + 8];

  v20 = *&v5[v1[9] + 8];

  v21 = *&v5[v1[10] + 8];

  v22 = &v5[v1[11]];
  v23 = *(v22 + 1);

  v24 = *(v22 + 2);

  v25 = *&v5[v1[12] + 16];

  v26 = *&v5[v1[13] + 16];

  v27 = *&v5[v1[14] + 16];

  v28 = *&v5[v1[15] + 16];

  v29 = *&v5[v1[16] + 8];

  v30 = *&v5[v1[17] + 8];

  v31 = *&v5[v1[18] + 16];

  v32 = &v5[v1[19]];

  v33 = *(v32 + 1);

  v34 = *&v5[v1[20] + 8];

  v35 = &v5[v1[22]];
  v36 = *(v35 + 1);

  v37 = *&v5[v1[25] + 8];

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

id sub_100017884(uint64_t a1)
{
  v3 = *(type metadata accessor for RootView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100015474(a1, v1 + v4);
}

uint64_t sub_100017924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017960()
{
  v1 = type metadata accessor for RootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v5[v8], 1, v9))
    {
      (*(v10 + 8))(&v5[v8], v9);
    }
  }

  else
  {
    v11 = *&v5[v8];
  }

  v12 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v5[v12], 1, v13))
    {
      (*(v14 + 8))(&v5[v12], v13);
    }
  }

  else
  {
    v15 = *&v5[v12];
  }

  v16 = v1[7];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for LayoutDirection();
    (*(*(v17 - 8) + 8))(&v5[v16], v17);
  }

  else
  {
    v18 = *&v5[v16];
  }

  v19 = *&v5[v1[8] + 8];

  v20 = *&v5[v1[9] + 8];

  v21 = *&v5[v1[10] + 8];

  v22 = &v5[v1[11]];
  v23 = *(v22 + 1);

  v24 = *(v22 + 2);

  v25 = *&v5[v1[12] + 16];

  v26 = *&v5[v1[13] + 16];

  v27 = *&v5[v1[14] + 16];

  v28 = *&v5[v1[15] + 16];

  v29 = *&v5[v1[16] + 8];

  v30 = *&v5[v1[17] + 8];

  v31 = *&v5[v1[18] + 16];

  v32 = &v5[v1[19]];

  v33 = *(v32 + 1);

  v34 = *&v5[v1[20] + 8];

  v35 = &v5[v1[22]];
  v36 = *(v35 + 1);

  v37 = *&v5[v1[25] + 8];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100017D98(uint64_t a1)
{
  v3 = *(type metadata accessor for RootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000152A8(a1, v4);
}

uint64_t sub_100017E20(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100017E68()
{
  result = qword_100063060;
  if (!qword_100063060)
  {
    sub_100017E20(255, &qword_100063050, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063060);
  }

  return result;
}

uint64_t sub_100017ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017F38()
{
  v1 = type metadata accessor for IconView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 88);

  v12 = *(v0 + v3 + 120);

  v13 = *(v0 + v3 + 144);

  v14 = v1[12];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for LayoutDirection();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  v17 = *(v5 + v1[14]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000180B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100018120()
{
  v0 = *(*(type metadata accessor for IconView() - 8) + 80);

  return sub_10001E920();
}

uint64_t sub_100018190(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100018200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100018260()
{
  v1 = v0;
  v2 = *(type metadata accessor for RootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  GeometryProxy.size.getter();
  sub_10000ED0C(v7, v8);
}

unint64_t sub_100018330()
{
  result = qword_1000630D0;
  if (!qword_1000630D0)
  {
    sub_100003AC0(&qword_1000630C8, &qword_100048730);
    sub_1000183BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630D0);
  }

  return result;
}

unint64_t sub_1000183BC()
{
  result = qword_1000630D8;
  if (!qword_1000630D8)
  {
    sub_100003AC0(&qword_1000630E0, &qword_100048738);
    sub_100018448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630D8);
  }

  return result;
}

unint64_t sub_100018448()
{
  result = qword_1000630E8;
  if (!qword_1000630E8)
  {
    sub_100003AC0(&qword_1000630F0, &qword_100048740);
    sub_1000184D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630E8);
  }

  return result;
}

unint64_t sub_1000184D4()
{
  result = qword_1000630F8;
  if (!qword_1000630F8)
  {
    sub_100003AC0(&qword_100063100, &qword_100048748);
    sub_100018C04(&qword_100063108, &qword_100063110, &unk_100048750, sub_10001858C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000630F8);
  }

  return result;
}

unint64_t sub_10001858C()
{
  result = qword_100063118;
  if (!qword_100063118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063118);
  }

  return result;
}

unint64_t sub_1000185E0()
{
  result = qword_100063120;
  if (!qword_100063120)
  {
    sub_100003AC0(&qword_100063070, &qword_1000486D8);
    sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063120);
  }

  return result;
}

double sub_1000186A8(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 216) = -256;
  return result;
}

unint64_t sub_1000186FC()
{
  result = qword_100063150;
  if (!qword_100063150)
  {
    sub_100003AC0(&qword_100063140, &qword_100048778);
    sub_100018788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063150);
  }

  return result;
}

unint64_t sub_100018788()
{
  result = qword_100063158;
  if (!qword_100063158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063158);
  }

  return result;
}

unint64_t sub_1000187DC()
{
  result = qword_100063160;
  if (!qword_100063160)
  {
    sub_100003AC0(&qword_100063148, &qword_100048780);
    sub_100018868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063160);
  }

  return result;
}

unint64_t sub_100018868()
{
  result = qword_100063168;
  if (!qword_100063168)
  {
    sub_100003AC0(&qword_100063170, &qword_100048788);
    sub_1000188F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063168);
  }

  return result;
}

unint64_t sub_1000188F4()
{
  result = qword_100063178;
  if (!qword_100063178)
  {
    sub_100003AC0(&qword_100063180, &qword_100048790);
    sub_100018980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063178);
  }

  return result;
}

unint64_t sub_100018980()
{
  result = qword_100063188;
  if (!qword_100063188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063188);
  }

  return result;
}

id sub_1000189DC()
{
  v1 = v0;
  v2 = *(type metadata accessor for RootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  GeometryProxy.size.getter();
  return sub_100010430(1, v7, v8);
}

unint64_t sub_100018AA8()
{
  result = qword_100063190;
  if (!qword_100063190)
  {
    sub_100003AC0(&qword_1000630A0, &qword_100048708);
    sub_100003AC0(&qword_100063198, &qword_100048798);
    sub_100003AC0(&qword_1000627F8, &qword_100047CD8);
    sub_100018C04(&qword_1000631A0, &qword_100063198, &qword_100048798, sub_100018CB4);
    sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063190);
  }

  return result;
}

uint64_t sub_100018C04(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    sub_100003E3C(&qword_100062868, &qword_100062870, &qword_100047D18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100018CB4()
{
  result = qword_1000631A8;
  if (!qword_1000631A8)
  {
    sub_100003AC0(&qword_1000631B0, &qword_1000487A0);
    sub_100018D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000631A8);
  }

  return result;
}

unint64_t sub_100018D40()
{
  result = qword_1000631B8;
  if (!qword_1000631B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000631B8);
  }

  return result;
}

uint64_t sub_100018DAC()
{
  v1 = type metadata accessor for RootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v42 = *(*(v1 - 1) + 64);
  v44 = type metadata accessor for GeometryProxy();
  v4 = *(v44 - 8);
  v5 = *(v4 + 80);
  v43 = *(v4 + 64);
  v45 = v0;
  v6 = (v0 + v3);
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v1[5];
  sub_100003968(&qword_1000629A8, &qword_100047E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(&v6[v9], 1, v10))
    {
      (*(v11 + 8))(&v6[v9], v10);
    }
  }

  else
  {
    v12 = *&v6[v9];
  }

  v13 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v6[v13], 1, v14))
    {
      (*(v15 + 8))(&v6[v13], v14);
    }
  }

  else
  {
    v16 = *&v6[v13];
  }

  v17 = v1[7];
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for LayoutDirection();
    (*(*(v18 - 8) + 8))(&v6[v17], v18);
  }

  else
  {
    v19 = *&v6[v17];
  }

  v20 = v2 | v5;
  v21 = (v3 + v42 + v5) & ~v5;
  v22 = *&v6[v1[8] + 8];

  v23 = *&v6[v1[9] + 8];

  v24 = *&v6[v1[10] + 8];

  v25 = &v6[v1[11]];
  v26 = *(v25 + 1);

  v27 = *(v25 + 2);

  v28 = *&v6[v1[12] + 16];

  v29 = *&v6[v1[13] + 16];

  v30 = *&v6[v1[14] + 16];

  v31 = *&v6[v1[15] + 16];

  v32 = *&v6[v1[16] + 8];

  v33 = *&v6[v1[17] + 8];

  v34 = *&v6[v1[18] + 16];

  v35 = &v6[v1[19]];

  v36 = *(v35 + 1);

  v37 = *&v6[v1[20] + 8];

  v38 = &v6[v1[22]];
  v39 = *(v38 + 1);

  v40 = *&v6[v1[25] + 8];

  (*(v4 + 8))(v45 + v21, v44);

  return _swift_deallocObject(v45, v21 + v43, v20 | 7);
}

uint64_t sub_100019294(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for RootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_1000193C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return sub_100014AC0(*(v0 + 16), *(v0 + 32), *(v0 + 40));
}

uint64_t property wrapper backing initializer of AXLTProviderCaptionsView.provider()
{
  type metadata accessor for AXLTCaptionsProvider();
  sub_1000194F4();

  return ObservedObject.init(wrappedValue:)();
}

unint64_t sub_1000194F4()
{
  result = qword_100062D98;
  if (!qword_100062D98)
  {
    type metadata accessor for AXLTCaptionsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062D98);
  }

  return result;
}

double AXLTProviderCaptionsView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v9 = *(v1 + 48);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v14 = *(v1 + 88);
  v15 = *(v1 + 64);
  v12 = *(v1 + 112);

  v13 = *(v1 + 96);

  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_100003968(&qword_100062D88, &qword_100048850);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = v17;
  *a1 = v17;
  *(a1 + 8) = v17;
  *(a1 + 16) = v16;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  *(a1 + 40) = v4;
  *(a1 + 48) = v9;
  *(a1 + 56) = v5;
  *(a1 + 64) = v15;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v12;
  *(a1 + 120) = LOBYTE(v17);
  *(a1 + 128) = v18;
  *(a1 + 136) = LOBYTE(v17);
  *(a1 + 144) = v18;
  *(a1 + 152) = xmmword_1000487B0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = v17;
  *(a1 + 184) = v18;
  *(a1 + 192) = LOBYTE(v17);
  *(a1 + 200) = v18;
  *(a1 + 208) = v17;
  *(a1 + 216) = v18;
  return result;
}

uint64_t sub_1000197E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001986C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000198E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001996C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

__n128 sub_1000199FC(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100019A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100019A70(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100019AE0()
{
  result = qword_1000631D0;
  if (!qword_1000631D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000631D0);
  }

  return result;
}

void sub_100019BC4()
{
  static os_log_type_t.default.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  exit(1);
}

uint64_t sub_100019C48(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10001AB48(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10001AB48(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001A130(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_10001AB48(v3, v5, v2 != 0);
  return v13;
}

void sub_100019D64()
{
  v0 = qword_1000631E0;
  qword_1000631E0 = 0;

  static os_log_type_t.default.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = [objc_opt_self() sharedApplication];
  [v1 terminateWithSuccess];
}

unint64_t sub_100019E4C()
{
  sub_100003968(&unk_1000632A0, &qword_100048958);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  *(inited + 32) = 0x646568636E75616CLL;
  *(inited + 40) = 0xE800000000000000;
  sub_100017E20(0, &qword_100063AB0, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v1 = sub_100029708(inited);
  swift_setDeallocating();
  sub_10001AB54(inited + 32);
  return v1;
}

Class sub_100019F0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100017E20(0, &qword_100063298, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id sub_10001A0C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LTSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001A130(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100017E20(0, &qword_100063288, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100017E20(0, &qword_100063288, UIScene_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_10001A354()
{
  v5 = [objc_opt_self() standardUserDefaults];
  v0 = String._bridgeToObjectiveC()();
  v1 = [v5 BOOLForKey:v0];

  if (v1)
  {
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100019E4C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019F0C;
    aBlock[3] = &unk_10005E5D8;
    v3 = _Block_copy(aBlock);
    AnalyticsSendEventLazy();
    _Block_release(v3);

    static os_log_type_t.debug.getter();
    if (qword_1000626F0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v4 = String._bridgeToObjectiveC()();
    [v5 setBool:1 forKey:v4];

    [v5 synchronize];
  }
}

void sub_10001A568(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(type metadata accessor for LTWindow());
    v17 = a1;
    v6 = [v5 initWithWindowScene:v4];
    v7 = *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_window);
    *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_window) = v6;

    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    if (kAXSLiveTranscriptionEnabledDidChangeNotification)
    {
      v9 = v8;
      v10 = *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_featureEnabledChanged);
      v11 = kAXSLiveTranscriptionEnabledDidChangeNotification;
      CFNotificationCenterAddObserver(v9, 0, v10, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      v13 = *(v1 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_systemLanguageChanged);
      v14 = String._bridgeToObjectiveC()();
      CFNotificationCenterAddObserver(v12, 0, v13, v14, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v15 = CFNotificationCenterGetDarwinNotifyCenter();
      v16 = String._bridgeToObjectiveC()();
      CFNotificationCenterAddObserver(v15, 0, v13, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      static os_log_type_t.debug.getter();
      if (qword_1000626F0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_10001A354();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001A7A4()
{
  if (qword_1000631E0)
  {
    [qword_1000631E0 invalidate];
    v0 = qword_1000631E0;
  }

  else
  {
    v0 = 0;
  }

  qword_1000631E0 = 0;

  v1 = _AXSLiveTranscriptionEnabled();
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_100017E20(0, &qword_100063288, UIScene_ptr);
  sub_10001AAC8();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100019C48(v4);

  if (v5)
  {
    v6 = [v5 delegate];

    if (v6)
    {
      type metadata accessor for LTSceneDelegate();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        if (v1)
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        v9 = *(v7 + OBJC_IVAR____TtC19LiveTranscriptionUI15LTSceneDelegate_window);
        if (v9)
        {
          [v9 setAlpha:v8];
        }

        v10 = static os_log_type_t.default.getter();
        if (qword_1000626F0 != -1)
        {
          swift_once();
        }

        v11 = qword_1000654E8;
        if (os_log_type_enabled(qword_1000654E8, v10))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v21[0] = v13;
          *v12 = 136315138;
          v14 = Double.description.getter();
          v16 = sub_100031EB4(v14, v15, v21);

          *(v12 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v11, v10, "Window visible: %s", v12, 0xCu);
          sub_100018190(v13);
        }
      }

      swift_unknownObjectRelease();
    }
  }

  if (!v1)
  {
    v17 = objc_opt_self();
    v21[4] = sub_100019D64;
    v21[5] = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100032E40;
    v21[3] = &unk_10005E5B0;
    v18 = _Block_copy(v21);
    v19 = [v17 scheduledTimerWithTimeInterval:0 repeats:v18 block:10.0];
    _Block_release(v18);
    v20 = qword_1000631E0;
    qword_1000631E0 = v19;
  }
}

unint64_t sub_10001AAC8()
{
  result = qword_100063290;
  if (!qword_100063290)
  {
    sub_100017E20(255, &qword_100063288, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063290);
  }

  return result;
}

uint64_t sub_10001AB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001AB48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001AB54(uint64_t a1)
{
  v2 = sub_100003968(&unk_1000632B0, &unk_100048960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001ABD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  *a3 = static VerticalAlignment.top.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_100003968(&qword_100063320, &qword_100048A28);
  sub_10001ADDC(a2, a1, a3 + *(v9 + 44));
  *(a3 + *(sub_100003968(&qword_100063328, &qword_100048A30) + 36)) = 0;
  v10 = *(a2 + 40);
  v11 = static Edge.Set.all.getter();
  v12 = a3 + *(sub_100003968(&qword_100063330, &qword_100048A38) + 36);
  *v12 = v11;
  *(v12 + 8) = 0x4020000000000000;
  *(v12 + 16) = v10;
  *(v12 + 24) = 0x4020000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  (*(v7 + 16))(&v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v13 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 3) = *(a2 + 32);
  *(v14 + 4) = v15;
  *(v14 + 5) = *(a2 + 64);
  v16 = *(a2 + 16);
  *(v14 + 1) = *a2;
  *(v14 + 2) = v16;
  (*(v7 + 32))(&v14[v13], &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v17 = (a3 + *(sub_100003968(&qword_100063338, &unk_100048A40) + 36));
  *v17 = sub_10001BB60;
  v17[1] = v14;
  v17[2] = 0;
  v17[3] = 0;
  return sub_10001B930(a2, v19);
}

uint64_t sub_10001ADDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v74 = a3;
  v4 = type metadata accessor for ButtonView();
  v5 = *(*(v4 - 8) + 64);
  v6 = v4 - 8;
  v75 = v4 - 8;
  __chkstk_darwin(v4 - 8);
  v73 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v64 - v9;
  v11 = sub_100003968(&qword_100062B30, &unk_100048010);
  v12 = *(v11 - 8);
  v78 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v72 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = v64 - v16;
  __chkstk_darwin(v17);
  v19 = v64 - v18;
  __chkstk_darwin(v20);
  v22 = v64 - v21;
  v103 = *a1;
  v104 = *(a1 + 16);
  v81 = *a1;
  LOBYTE(v82) = *(a1 + 16);
  v64[1] = sub_100003968(&qword_100062B38, &qword_1000493B0);
  Binding.projectedValue.getter();
  v23 = v96;
  v24 = v97;
  v25 = v98;
  v79 = xmmword_100047F00;
  *v22 = xmmword_100047F00;
  LOBYTE(v96) = 0;
  State.init(wrappedValue:)();
  v26 = *(&v81 + 1);
  v22[96] = v81;
  *(v22 + 13) = v26;
  v96 = 0;
  State.init(wrappedValue:)();
  v27 = *(&v81 + 1);
  *(v22 + 14) = v81;
  *(v22 + 15) = v27;
  v96 = 0;
  State.init(wrappedValue:)();
  v28 = *(&v81 + 1);
  *(v22 + 16) = v81;
  *(v22 + 17) = v28;
  v29 = &v22[*(v6 + 64)];
  AccessibilityFocusState.init<>()();
  v22[16] = 0;
  v67 = nullsub_1;
  *(v22 + 6) = nullsub_1;
  *(v22 + 7) = 0;
  *(v22 + 3) = v23;
  *(v22 + 4) = v24;
  v22[40] = v25;
  *(v22 + 8) = 0x69662E6573756170;
  *(v22 + 9) = 0xEA00000000006C6CLL;
  *(v22 + 10) = 0x69662E6573756170;
  *(v22 + 11) = 0xEA00000000006C6CLL;
  v102 = *(a1 + 64);
  v81 = *(a1 + 64);
  v76 = sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = &v22[*(v78 + 44)];
  v31 = v88;
  *v30 = v87;
  *(v30 + 1) = v31;
  *(v30 + 2) = v89;
  GeometryProxy.size.getter();
  v32 = *(a1 + 40) + *(a1 + 40);
  v33 = *(a1 + 48);
  v81 = v102;
  State.wrappedValue.getter();
  v34 = *(a1 + 56);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v70 = v92;
  v71 = v90;
  v68 = v95;
  v69 = v94;
  v107 = 1;
  v106 = v91;
  v105 = v93;
  v81 = v103;
  LOBYTE(v82) = v104;
  Binding.projectedValue.getter();
  v35 = v96;
  v36 = v97;
  LOBYTE(v24) = v98;
  *v10 = v79;
  LOBYTE(v96) = 0;
  State.init(wrappedValue:)();
  v37 = *(&v81 + 1);
  v10[96] = v81;
  *(v10 + 13) = v37;
  v96 = 0;
  State.init(wrappedValue:)();
  v38 = *(&v81 + 1);
  *(v10 + 14) = v81;
  *(v10 + 15) = v38;
  v96 = 0;
  State.init(wrappedValue:)();
  v39 = *(&v81 + 1);
  *(v10 + 16) = v81;
  *(v10 + 17) = v39;
  v40 = &v10[*(v75 + 64)];
  AccessibilityFocusState.init<>()();
  v10[16] = 1;
  *(v10 + 6) = v67;
  *(v10 + 7) = 0;
  *(v10 + 3) = v35;
  *(v10 + 4) = v36;
  v10[40] = v24;
  *(v10 + 8) = 0x6C6C69662E63696DLL;
  *(v10 + 9) = 0xE800000000000000;
  *(v10 + 10) = 0x6C6C69662E63696DLL;
  *(v10 + 11) = 0xE800000000000000;
  GeometryProxy.size.getter();
  v81 = v102;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v77 = v96;
  v66 = v100;
  v67 = v98;
  v65 = v101;
  v110 = 1;
  v109 = v97;
  v108 = v99;
  v81 = v103;
  LOBYTE(v82) = v104;
  Binding.projectedValue.getter();
  v41 = v84;
  v42 = v85;
  LOBYTE(v24) = v86;
  v43 = swift_allocObject();
  v44 = *(a1 + 48);
  v43[3] = *(a1 + 32);
  v43[4] = v44;
  v43[5] = *(a1 + 64);
  v45 = *(a1 + 16);
  v43[1] = *a1;
  v43[2] = v45;
  *v19 = v79;
  LOBYTE(v84) = 0;
  sub_10001B930(a1, &v81);
  State.init(wrappedValue:)();
  v46 = *(&v81 + 1);
  v19[96] = v81;
  *(v19 + 13) = v46;
  v84 = 0;
  State.init(wrappedValue:)();
  v47 = *(&v81 + 1);
  *(v19 + 14) = v81;
  *(v19 + 15) = v47;
  v84 = 0;
  State.init(wrappedValue:)();
  v48 = *(&v81 + 1);
  *(v19 + 16) = v81;
  *(v19 + 17) = v48;
  v49 = &v19[*(v75 + 64)];
  AccessibilityFocusState.init<>()();
  v19[16] = 2;
  *(v19 + 6) = sub_1000082EC;
  *(v19 + 7) = v43;
  *(v19 + 3) = v41;
  *(v19 + 4) = v42;
  v19[40] = v24;
  *(v19 + 8) = 0xD000000000000028;
  *(v19 + 9) = 0x800000010004A630;
  *(v19 + 10) = 0xD000000000000028;
  *(v19 + 11) = 0x800000010004A630;
  v81 = v102;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50 = &v19[*(v78 + 44)];
  v51 = v82;
  *v50 = v81;
  *(v50 + 1) = v51;
  *(v50 + 2) = v83;
  v52 = v80;
  sub_10001BC18(v22, v80);
  v53 = v107;
  LOBYTE(v41) = v106;
  LODWORD(v75) = v105;
  v54 = v73;
  sub_100008314(v10, v73);
  LODWORD(v76) = v110;
  LODWORD(v78) = v109;
  LODWORD(v79) = v108;
  v55 = v72;
  sub_10001BC18(v19, v72);
  v56 = v74;
  sub_10001BC18(v52, v74);
  v57 = sub_100003968(&qword_100063340, &qword_100048A50);
  v58 = v56 + v57[12];
  *v58 = 0;
  *(v58 + 8) = v53;
  v59 = v70;
  *(v58 + 16) = v71;
  *(v58 + 24) = v41;
  *(v58 + 32) = v59;
  *(v58 + 40) = v75;
  v60 = v68;
  *(v58 + 48) = v69;
  *(v58 + 56) = v60;
  sub_100008314(v54, v56 + v57[16]);
  v61 = v56 + v57[20];
  *v61 = 0;
  *(v61 + 8) = v76;
  *(v61 + 16) = v77;
  *(v61 + 24) = v78;
  *(v61 + 32) = v67;
  *(v61 + 40) = v79;
  v62 = v65;
  *(v61 + 48) = v66;
  *(v61 + 56) = v62;
  sub_10001BC18(v55, v56 + v57[24]);
  sub_10001BC88(v19);
  sub_100008378(v10);
  sub_10001BC88(v22);
  sub_10001BC88(v55);
  sub_100008378(v54);
  return sub_10001BC88(v80);
}

uint64_t sub_10001B5E8(uint64_t a1)
{
  GeometryProxy.size.getter();
  v3 = *(a1 + 64);
  sub_100003968(&qword_100062B18, &unk_100049360);
  return State.wrappedValue.setter();
}

uint64_t sub_10001B650@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v10[4] = v1[4];
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v6;
  *(v5 + 5) = v1[4];
  v7 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v7;
  *a1 = sub_10001BA7C;
  a1[1] = v5;
  return sub_10001B930(v10, &v9);
}

__n128 sub_10001B6DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (AXDeviceIsPad())
  {
    v12 = 50.0;
  }

  else
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v44.origin.x = v15;
    v44.origin.y = v17;
    v44.size.width = v19;
    v44.size.height = v21;
    v12 = CGRectGetWidth(v44) / 5.6 + 8.0;
  }

  *&v30 = 0;
  State.init(wrappedValue:)();
  v22 = v35;
  v23 = v36;
  if (a4)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v25 = sub_10000840C;
  }

  else
  {
    v25 = nullsub_1;
    v24 = 0;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v31.n128_u8[0] = a3;
  v31.n128_u64[1] = sub_10001B908;
  *&v32 = v26;
  *(&v32 + 1) = v12;
  v33 = xmmword_100048970;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = sub_10001B908;
  v39 = v26;
  v40 = v12;
  v41 = xmmword_100048970;
  v42 = v22;
  v43 = v23;
  sub_10001B930(&v30, &v29);
  sub_10001B968(&v35);
  v27 = v33;
  *(a6 + 32) = v32;
  *(a6 + 48) = v27;
  *(a6 + 64) = v34;
  result = v31;
  *a6 = v30;
  *(a6 + 16) = result;
  return result;
}

uint64_t sub_10001B8D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B908()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

__n128 sub_10001B998(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001B9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10001B9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}