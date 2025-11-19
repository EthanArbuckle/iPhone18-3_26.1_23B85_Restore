id sub_1000018D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargeAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ChargeAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

__n128 sub_1000019C4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000019D0(uint64_t a1, int a2)
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

uint64_t sub_1000019F0(uint64_t result, int a2, int a3)
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

__n128 sub_100001A30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001A3C(uint64_t a1, int a2)
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

uint64_t sub_100001A5C(uint64_t result, int a2, int a3)
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

uint64_t sub_100001AA0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001B18(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001B98@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100001BDC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100001C18()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001C6C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100001CE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001D0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100001D94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100001DDC(uint64_t a1)
{
  v2 = sub_100001F3C(&qword_1000260B0);
  v3 = sub_100001F3C(&qword_1000260B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100001E88(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100001F3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001FB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100002000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100002068@<Q0>(uint64_t a1@<X1>, __n128 *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC6Charge11ChargeModel__carObservable;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = dispatch thunk of CAFCarObservable.highVoltageBattery.getter();

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v5 batteryLevel];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v3 + 8);
  v8 = dispatch thunk of CAFCarObservable.charging.getter();

  v9 = [v8 targetChargingLevel];
  if (!v9)
  {
    v9 = v6;
LABEL_8:

LABEL_9:
    type metadata accessor for LayoutConfiguration();
    sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration);
    v36 = 1;
    v31.n128_u64[0] = EnvironmentObject.init()();
    v31.n128_u64[1] = v22;
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = 1;
    sub_1000025C0();
    sub_100002614();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_10;
  }

  v10 = *(v3 + 8);
  v11 = dispatch thunk of CAFCarObservable.charging.getter();

  v12 = [v11 chargingTime];
  if (!v12)
  {

    goto LABEL_8;
  }

  sub_100005F24(0, &qword_100026138, CAFBatteryLevel_ptr);
  sub_100002668(&qword_100026140, &qword_100026138, CAFBatteryLevel_ptr);
  CAFObserved<>.observable.getter();
  sub_100005F24(0, &qword_100026148, CAFTargetChargingLevel_ptr);
  sub_100002668(&qword_100026150, &qword_100026148, CAFTargetChargingLevel_ptr);
  CAFObserved<>.observable.getter();
  sub_100005F24(0, &qword_100026158, CAFChargingTime_ptr);
  v26 = v9;
  sub_100002668(&qword_100026160, &qword_100026158, CAFChargingTime_ptr);
  CAFObserved<>.observable.getter();
  type metadata accessor for LayoutConfiguration();
  sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration);
  v25 = EnvironmentObject.init()();
  v14 = v13;
  type metadata accessor for CAFBatteryLevelObservable();
  sub_1000026AC(&qword_100026168, &type metadata accessor for CAFBatteryLevelObservable);
  v15 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  type metadata accessor for CAFTargetChargingLevelObservable();
  sub_1000026AC(&qword_100026170, &type metadata accessor for CAFTargetChargingLevelObservable);
  v18 = ObservedObject.init(wrappedValue:)();
  v20 = v19;
  type metadata accessor for CAFChargingTimeObservable();
  sub_1000026AC(&qword_100026178, &type metadata accessor for CAFChargingTimeObservable);
  v27.n128_u64[0] = v15;
  v27.n128_u64[1] = v17;
  v28.n128_u64[0] = v18;
  v28.n128_u64[1] = v20;
  v29.n128_u64[0] = ObservedObject.init(wrappedValue:)();
  v29.n128_u64[1] = v21;
  v30.n128_u64[0] = v25;
  v30.n128_u64[1] = v14;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v36 = 0;
  v41 = 0;
  sub_1000026F4(&v27, &v31);
  sub_1000026F4(&v27, &v31);
  sub_1000025C0();
  sub_100002614();
  _ConditionalContent<>.init(storage:)();

  sub_10000272C(&v27);
  sub_10000272C(&v27);
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v37 = v31;
  v38 = v32;
LABEL_10:
  v23 = v40;
  a2[2] = v39;
  a2[3] = v23;
  a2[4].n128_u8[0] = v41;
  result = v38;
  *a2 = v37;
  a2[1] = result;
  return result;
}

unint64_t sub_1000025C0()
{
  result = qword_100026128;
  if (!qword_100026128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026128);
  }

  return result;
}

unint64_t sub_100002614()
{
  result = qword_100026130;
  if (!qword_100026130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026130);
  }

  return result;
}

uint64_t sub_100002668(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005F24(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000026AC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10000275C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100002770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000027B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10000281C()
{
  result = qword_100026180;
  if (!qword_100026180)
  {
    sub_1000028A8(&qword_100026188, &qword_100019760);
    sub_1000025C0();
    sub_100002614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026180);
  }

  return result;
}

uint64_t sub_1000028A8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000290C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v91 = a2;
  v3 = sub_100005790(&qword_100026198, &qword_1000197C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v87 - v5;
  v7 = sub_100005790(&qword_1000261A0, &qword_1000197C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v87 - v10;
  v12 = sub_100005790(&qword_1000261A8, &qword_1000197D0);
  v13 = *(v12 - 8);
  v89 = v12;
  v90 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v87 - v15;
  v17 = sub_100005790(&qword_1000261B0, &qword_1000197D8);
  v18 = *(v17 - 8);
  v88 = v17 - 8;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17 - 8);
  v92 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = (&v87 - v22);
  v93 = a1;
  sub_100005790(&qword_1000261B8, &qword_1000197E0);
  sub_1000057E0();
  Chart.init(content:)();
  *(&v122[7] + 8) = xmmword_100019670;
  v24 = type metadata accessor for ScaleType();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = sub_100005790(&qword_1000261D8, &qword_1000197F8);
  v26 = sub_100006174(&qword_1000261E0, &qword_1000261A0, &qword_1000197C8);
  v27 = sub_10000597C();
  View.chartYScale<A>(domain:type:)();
  sub_100005EC4(v6, &qword_100026198, &qword_1000197C0);
  (*(v8 + 8))(v11, v7);
  sub_100005790(&qword_1000261F0, &qword_100019800);
  v99 = v7;
  v100 = v25;
  v101 = v26;
  v102 = v27;
  swift_getOpaqueTypeConformance2();
  sub_100006174(&qword_1000261F8, &qword_1000261F0, &qword_100019800);
  v28 = v89;
  View.chartYAxis<A>(content:)();
  v90[1](v16, v28);
  LOBYTE(v11) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = *(v88 + 44);
  v90 = v23;
  v30 = v23 + v29;
  *v30 = v11;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = v87;
  v36 = sub_10000318C();
  v37 = [v36 string];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v99 = v38;
  v100 = v40;
  sub_1000059F8();
  v41 = Text.init<A>(_:)();
  v44 = v35;
  v45 = *(v35 + 48);
  if (v45)
  {
    v46 = v41;
    v47 = v42;
    v48 = v43;
    v49 = *(v45 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    if (v49)
    {
      if (v49 == 1)
      {
        v50 = sub_100006344();
        v51 = type metadata accessor for ClusterMetrics();
        v52 = v51;
        v53 = &off_100021580;
      }

      else
      {
        v50 = sub_100006378();
        v51 = type metadata accessor for WidgetMetrics();
        v52 = v51;
        v53 = &off_100021520;
      }
    }

    else
    {
      v50 = sub_100006310();
      v51 = type metadata accessor for ConsoleMetrics();
      v52 = v51;
      v53 = &off_1000215E0;
    }

    v117[3] = v51;
    v117[4] = v53;

    v117[0] = v50;
    sub_100005A4C(v117, v52);
    (v53[3])(v52, v53);
    v54 = Text.font(_:)();
    v56 = v55;
    v58 = v57;
    v89 = v59;
    sub_100005A90(v46, v47, v48 & 1);

    sub_100005AA0(v117);
    v60 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v121 = v58 & 1;
    v69 = v58 & 1;
    LODWORD(v88) = v58 & 1;
    v118 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v122[3] + 7) = *(&v122[11] + 8);
    *(&v122[4] + 7) = *(&v122[12] + 8);
    *(&v122[5] + 7) = *(&v122[13] + 8);
    *(&v122[6] + 7) = *(&v122[14] + 8);
    *(v122 + 7) = *(&v122[8] + 8);
    *(&v122[1] + 7) = *(&v122[9] + 8);
    *(&v122[2] + 7) = *(&v122[10] + 8);
    v70 = v90;
    v71 = v92;
    sub_100005AEC(v90, v92);
    v72 = v91;
    sub_100005AEC(v71, v91);
    v73 = (v72 + *(sub_100005790(&qword_100026208, &qword_100019808) + 48));
    *&v94 = v54;
    *(&v94 + 1) = v56;
    v74 = v56;
    LOBYTE(v95) = v69;
    *(&v95 + 1) = *v120;
    DWORD1(v95) = *&v120[3];
    v75 = v89;
    *(&v95 + 1) = v89;
    LOBYTE(v96) = v60;
    *(&v96 + 1) = *v119;
    DWORD1(v96) = *&v119[3];
    *(&v96 + 1) = v62;
    *&v97 = v64;
    *(&v97 + 1) = v66;
    *&v98[0] = v68;
    BYTE8(v98[0]) = 0;
    *(v98 + 9) = v122[0];
    *(&v98[3] + 9) = v122[3];
    *(&v98[2] + 9) = v122[2];
    *(&v98[1] + 9) = v122[1];
    *(&v98[7] + 1) = *(&v122[6] + 15);
    *(&v98[6] + 9) = v122[6];
    *(&v98[5] + 9) = v122[5];
    *(&v98[4] + 9) = v122[4];
    v76 = v94;
    v77 = v95;
    v78 = v97;
    v73[2] = v96;
    v73[3] = v78;
    *v73 = v76;
    v73[1] = v77;
    v79 = v98[0];
    v80 = v98[1];
    v81 = v98[3];
    v73[6] = v98[2];
    v73[7] = v81;
    v73[4] = v79;
    v73[5] = v80;
    v82 = v98[4];
    v83 = v98[5];
    v84 = v98[7];
    v73[10] = v98[6];
    v73[11] = v84;
    v73[8] = v82;
    v73[9] = v83;
    sub_100005B5C(&v94, &v99);
    sub_100005BCC(v70);
    v99 = v54;
    v100 = v74;
    LOBYTE(v101) = v88;
    *(&v101 + 1) = *v120;
    HIDWORD(v101) = *&v120[3];
    v102 = v75;
    v103 = v60;
    *v104 = *v119;
    *&v104[3] = *&v119[3];
    v105 = v62;
    v106 = v64;
    v107 = v66;
    v108 = v68;
    v109 = 0;
    v114 = v122[4];
    v115 = v122[5];
    *v116 = v122[6];
    *&v116[15] = *(&v122[6] + 15);
    v110 = v122[0];
    v111 = v122[1];
    v112 = v122[2];
    v113 = v122[3];
    sub_100005EC4(&v99, &qword_100026210, &qword_100019810);
    return sub_100005BCC(v71);
  }

  else
  {
    v86 = *(v44 + 56);
    type metadata accessor for LayoutConfiguration();
    sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000318C()
{
  v1 = sub_100005790(&unk_100027330, &qword_100019818);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v68 - v4;
  v77 = sub_100005790(&qword_100026218, &qword_100019D30);
  v6 = *(v77 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v76 = (&v68 - v8);
  v9 = [objc_allocWithZone(NSMutableAttributedString) init];
  sub_100005790(&qword_100026220, &qword_100019820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019680;
  v11 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v12 = inited + 32;
  v75 = v0;
  v13 = v0[6];
  if (v13)
  {
    v14 = inited;
    v15 = *(v13 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v16 = NSFontAttributeName;

    v72 = v1;
    v73 = v6;
    v70 = v5;
    v71 = v2;
    if (v15)
    {
      if (v15 == 1)
      {
        v17 = sub_100006344();
        v18 = type metadata accessor for ClusterMetrics();
        v19 = v18;
        v20 = &off_100021580;
      }

      else
      {
        v17 = sub_100006378();
        v18 = type metadata accessor for WidgetMetrics();
        v19 = v18;
        v20 = &off_100021520;
      }
    }

    else
    {
      v17 = sub_100006310();
      v18 = type metadata accessor for ConsoleMetrics();
      v19 = v18;
      v20 = &off_1000215E0;
    }

    v78[3] = v18;
    v78[4] = v20;

    v78[0] = v17;
    sub_100005A4C(v78, v19);
    *(v14 + 40) = (v20[3])(v19, v20);
    sub_100005AA0(v78);
    v21 = sub_100005DCC(v14);
    swift_setDeallocating();
    sub_100005EC4(v12, &qword_100026228, &qword_100019828);
    v11 = v76;
    v22 = v75[5];
    dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
    v74 = objc_opt_self();
    v23 = [v74 mainBundle];
    v79._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0x4D45525F454D4954;
    v24._object = 0xEE00474E494E4941;
    v25.value._countAndFlagsBits = 0x656772616843;
    v25.value._object = 0xE600000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v79._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v79);

    String.init(format:_:)();

    sub_100005480(v21);
    v27 = objc_allocWithZone(NSAttributedString);
    v28 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    v30 = v29;
    sub_1000026AC(&qword_1000260B0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = [v27 initWithString:v28 attributes:isa];

    [v9 appendAttributedString:v32];
    v33 = objc_allocWithZone(NSAttributedString);
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 initWithString:v34];

    [v9 appendAttributedString:v35];
    v36 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v36 setUnitsStyle:1];
    Measurement.value.getter();
    v69 = v36;
    v37 = [v36 stringFromTimeInterval:?];
    if (v37)
    {
      v38 = v37;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100005480(v21);
      v39 = objc_allocWithZone(NSAttributedString);
      v40 = String._bridgeToObjectiveC()();

      v41 = Dictionary._bridgeToObjectiveC()().super.isa;

      v42 = [v39 initWithString:v40 attributes:v41];

      [v9 appendAttributedString:v42];
      v43 = objc_allocWithZone(NSAttributedString);
      v44 = String._bridgeToObjectiveC()();
      v45 = [v43 initWithString:v44];

      [v9 appendAttributedString:v45];
      v46 = [v74 mainBundle];
      v80._object = 0xE000000000000000;
      v47._countAndFlagsBits = 0x5F59524554544142;
      v47._object = 0xED00004C4556454CLL;
      v48.value._countAndFlagsBits = 0x656772616843;
      v48.value._object = 0xE600000000000000;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v80._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v80);

      String.init(format:_:)();

      sub_100005480(v21);
      v11 = objc_allocWithZone(NSAttributedString);
      v50 = String._bridgeToObjectiveC()();

      v74 = v30;
      v51 = Dictionary._bridgeToObjectiveC()().super.isa;

      v52 = [(NSString *)v11 initWithString:v50 attributes:v51];

      [v9 appendAttributedString:v52];
      v53 = objc_allocWithZone(NSAttributedString);
      v54 = String._bridgeToObjectiveC()();
      v55 = [v53 initWithString:v54];

      [v9 appendAttributedString:v55];
      v56 = [objc_allocWithZone(NSMeasurementFormatter) init];
      v57 = [v56 numberFormatter];
      if (v57)
      {
        v58 = v57;
        [v57 setMaximumFractionDigits:1];

        [v56 setUnitOptions:1];
        v59 = v75[1];
        v60 = v70;
        dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
        sub_100005F24(0, &qword_100026230, CAFUnitPercent_ptr);
        NSMeasurementFormatter.string<A>(from:)();

        (*(v71 + 8))(v60, v72);
        sub_100005480(v21);

        v61 = objc_allocWithZone(NSAttributedString);
        v62 = String._bridgeToObjectiveC()();

        v63 = Dictionary._bridgeToObjectiveC()().super.isa;

        v64 = [v61 initWithString:v62 attributes:v63];

        [v9 appendAttributedString:v64];
        (*(v73 + 8))(v76, v77);
        return v9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v66 = v75[7];
  type metadata accessor for LayoutConfiguration();
  sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration);
  v67 = v11;
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100003AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v99 = sub_100005790(&qword_100026278, &qword_100019860);
  v3 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v98 = &v77 - v4;
  v97 = type metadata accessor for AnnotationPosition();
  v96 = *(v97 - 8);
  v5 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for RuleMark();
  v83 = *(v86 - 8);
  v7 = *(v83 + 64);
  __chkstk_darwin(v86);
  v81 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100005790(&qword_1000261D0, &qword_1000197F0);
  v85 = *(v87 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v77 - v10;
  v91 = sub_100005790(&qword_1000261C8, &qword_1000197E8);
  v90 = *(v91 - 8);
  v11 = *(v90 + 64);
  __chkstk_darwin(v91);
  v88 = &v77 - v12;
  v94 = sub_100005790(&qword_100026280, &qword_100019868);
  v93 = *(v94 - 8);
  v13 = *(v93 + 64);
  v14 = __chkstk_darwin(v94);
  v92 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = &v77 - v16;
  v17 = sub_100005790(&unk_100027330, &qword_100019818);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v77 - v23;
  v25 = sub_100005790(&qword_100026288, &qword_100019870);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v79 = type metadata accessor for BarMark();
  v78 = *(v79 - 8);
  v27 = *(v78 + 64);
  __chkstk_darwin(v79);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100005790(&qword_100026290, &qword_100019878);
  v82 = *(v102 - 8);
  v30 = *(v82 + 64);
  v31 = __chkstk_darwin(v102);
  v101 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v106 = &v77 - v33;
  v34 = [objc_opt_self() mainBundle];
  v112._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0x5F59524554544142;
  v35._object = 0xED00004C4556454CLL;
  v36.value._countAndFlagsBits = 0x656772616843;
  v36.value._object = 0xE600000000000000;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v112);

  v38 = String.init(format:_:)();
  v40 = v39;

  v111[0] = v38;
  v111[1] = v40;
  v105 = a1;
  v41 = *(a1 + 8);
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v43 = v42;
  v44 = *(v18 + 8);
  v103 = v24;
  v44(v24, v17);
  v107 = v43;
  sub_1000059F8();
  static PlottableValue.value<A>(_:_:)();

  BarMark.init<A>(xStart:xEnd:y:height:stacking:)();
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v46 = v45;
  v89 = v18 + 8;
  v80 = v44;
  v44(v22, v17);
  if (v46 < 0.0 || v46 >= 25.0)
  {
    if (v46 < 25.0 || v46 >= 75.0)
    {
      v47 = static Color.green.getter();
    }

    else
    {
      v47 = static Color.yellow.getter();
    }
  }

  else
  {
    v47 = static Color.red.getter();
  }

  v111[0] = v47;
  v48 = v79;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v78 + 8))(v29, v48);
  v49 = *(v105 + 24);
  dispatch thunk of CAFTargetChargingLevelObservable.chargingLevel.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v77 = v17;
  Measurement.value.getter();
  v111[0] = v50;
  static PlottableValue.value(_:_:)();

  v51 = v81;
  RuleMark.init<A>(xStart:xEnd:y:)();
  v111[0] = sub_100004760();
  v52 = v84;
  v53 = v86;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v83 + 8))(v51, v53);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v107 = v53;
  v108 = &type metadata for Color;
  v109 = &protocol witness table for RuleMark;
  v110 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v88;
  v56 = v87;
  ChartContent.lineStyle(_:)();
  sub_100006080(v111);
  (*(v85 + 8))(v52, v56);
  v57 = v95;
  static AnnotationPosition.top.getter();
  v58 = static Alignment.center.getter();
  __chkstk_darwin(v58);
  v107 = v56;
  v108 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v59 = v104;
  v60 = v91;
  ChartContent.annotation<A>(position:alignment:spacing:content:)();
  (*(v96 + 8))(v57, v97);
  (*(v90 + 8))(v55, v60);
  v61 = v82;
  v105 = *(v82 + 16);
  v63 = v101;
  v62 = v102;
  (v105)(v101, v106, v102);
  v64 = v93;
  v65 = *(v93 + 16);
  v66 = v92;
  v67 = v59;
  v68 = v94;
  v65(v92, v67, v94);
  v69 = v98;
  (v105)(v98, v63, v62);
  v70 = v99;
  v71 = *(v99 + 48);
  v65(&v69[v71], v66, v68);
  v72 = v100;
  v73 = v102;
  (*(v61 + 32))(v100, v69, v102);
  (*(v64 + 32))(v72 + *(v70 + 48), &v69[v71], v68);
  v74 = *(v64 + 8);
  v74(v104, v68);
  v80(v103, v77);
  v75 = *(v61 + 8);
  v75(v106, v73);
  v74(v66, v68);
  return (v75)(v101, v73);
}

uint64_t sub_100004760()
{
  v1 = v0;
  v2 = sub_100005790(&unk_100027330, &qword_100019818);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(v0 + 24);
  dispatch thunk of CAFTargetChargingLevelObservable.chargingLevel.getter();
  Measurement.value.getter();
  v12 = v11 + 10.0;
  v13 = *(v1 + 8);
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v15 = v14;
  v16 = *(v3 + 8);
  v16(v7, v2);
  if (v15 >= v12)
  {
    v18 = [objc_opt_self() systemBackgroundColor];
    v17 = Color.init(_:)();
  }

  else
  {
    v17 = static Color.primary.getter();
  }

  v19 = v17;
  v16(v9, v2);
  return v19;
}

uint64_t sub_1000048E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005790(&unk_100027330, &qword_100019818);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v52 - v7 + 8;
  sub_100005790(&qword_100026298, &qword_100019880);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100019680;
  v10 = [objc_allocWithZone(NSMeasurementFormatter) init];
  v11 = [v10 numberFormatter];
  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  [v11 setMaximumFractionDigits:1];

  [v10 setUnitOptions:1];
  v13 = *(a1 + 24);
  dispatch thunk of CAFTargetChargingLevelObservable.chargingLevel.getter();
  sub_100005F24(0, &qword_100026230, CAFUnitPercent_ptr);
  v14 = NSMeasurementFormatter.string<A>(from:)();
  v51 = a1;
  v15 = v14;
  v17 = v16;

  (*(v5 + 8))(v8, v4);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000060DC();
  *(v9 + 32) = v15;
  *(v9 + 40) = v17;
  v5 = v51;
  v18 = [objc_opt_self() mainBundle];
  v53._object = 0x80000001000173D0;
  v19._countAndFlagsBits = 0x4C5F454752414843;
  v19._object = 0xEF40255F54494D49;
  v20.value._countAndFlagsBits = 0x656772616843;
  v20.value._object = 0xE600000000000000;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000046;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v53);

  v22 = String.init(format:_:)();
  v24 = v23;

  v52[0] = v22;
  v52[1] = v24;
  sub_1000059F8();
  v25 = Text.init<A>(_:)();
  v28 = *(v5 + 48);
  if (!v28)
  {
LABEL_10:
    v50 = *(v5 + 56);
    type metadata accessor for LayoutConfiguration();
    sub_1000026AC(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = *(v28 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

  if (v32)
  {
    if (v32 == 1)
    {
      v33 = sub_100006344();
      v34 = type metadata accessor for ClusterMetrics();
      v35 = v34;
      v36 = &off_100021580;
    }

    else
    {
      v33 = sub_100006378();
      v34 = type metadata accessor for WidgetMetrics();
      v35 = v34;
      v36 = &off_100021520;
    }
  }

  else
  {
    v33 = sub_100006310();
    v34 = type metadata accessor for ConsoleMetrics();
    v35 = v34;
    v36 = &off_1000215E0;
  }

  v52[3] = v34;
  v52[4] = v36;

  v52[0] = v33;
  sub_100005A4C(v52, v35);
  (v36[4])(v35, v36);
  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;
  sub_100005A90(v29, v30, v31 & 1);

  sub_100005AA0(v52);
  v52[0] = sub_100004760();
  v42 = Text.foregroundStyle<A>(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_100005A90(v37, v39, v41 & 1);

  *a2 = v42;
  *(a2 + 8) = v44;
  *(a2 + 16) = v46 & 1;
  *(a2 + 24) = v48;
  return result;
}

uint64_t sub_100004D7C()
{
  v0 = type metadata accessor for AxisMarkPosition();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for AxisMarkValues();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  static AxisMarkValues.automatic.getter();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100005790(&qword_100026248, &qword_100019840);
  sub_100005F7C();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_100004EE4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_100005790(&qword_100026268, &qword_100019850);
  v2 = *(v1 - 8);
  v53 = v1 - 8;
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v52 = &v43 - v4;
  v5 = *(*(type metadata accessor for AxisValueLabelOrientation() - 8) + 64);
  (__chkstk_darwin)();
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for AxisValueLabelCollisionResolution() - 8) + 64);
  (__chkstk_darwin)();
  v51 = sub_100005790(&qword_100026260, &qword_100019848);
  v45 = *(v51 - 8);
  v8 = v45;
  v9 = *(v45 + 64);
  v10 = (__chkstk_darwin)();
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v43 - v12;
  v13 = type metadata accessor for AxisGridLine();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100005790(&qword_100026270, &qword_100019858);
  v44 = *(v49 - 8);
  v18 = v44;
  v19 = *(v44 + 64);
  v20 = __chkstk_darwin(v49);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v60 = v57;
  v61 = v58;
  v62 = v59;
  AxisGridLine.init(centered:stroke:)();
  v56 = Color.init(_:bundle:)();
  v47 = v24;
  AxisMark.foregroundStyle<A>(_:)();

  (*(v14 + 8))(v17, v13);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v25 = v55;
  AxisValueLabel.init<>(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v26 = *(v18 + 16);
  v27 = v22;
  v46 = v22;
  v28 = v49;
  v26(v22, v24, v49);
  v29 = *(v8 + 16);
  v30 = v50;
  v31 = v51;
  v29(v50, v25, v51);
  v32 = v52;
  v33 = v27;
  v34 = v28;
  v26(v52, v33, v28);
  sub_100006174(&qword_100026258, &qword_100026260, &qword_100019848);
  v35 = v53;
  v36 = *(v53 + 56);
  v29(&v32[v36], v30, v31);
  v37 = v44;
  v38 = v54;
  (*(v44 + 32))(v54, v32, v28);
  v39 = v45;
  (*(v45 + 32))(v38 + *(v35 + 56), &v32[v36], v31);
  v40 = *(v39 + 8);
  v40(v55, v31);
  v41 = *(v37 + 8);
  v41(v47, v34);
  v40(v30, v31);
  return (v41)(v46, v34);
}

uint64_t sub_100005480(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005790(&qword_100026238, &qword_100019830);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;

    swift_dynamicCast();
    sub_100005F6C((v26 + 8), v24);
    sub_100005F6C(v24, v26);
    v14 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_100005F6C(v26, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100005724@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_100005790(&qword_100026190, &qword_1000197B8);
  return sub_10000290C(v7, a1 + *(v5 + 44));
}

uint64_t sub_100005790(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000057E0()
{
  result = qword_1000261C0;
  if (!qword_1000261C0)
  {
    sub_1000028A8(&qword_1000261B8, &qword_1000197E0);
    type metadata accessor for BarMark();
    swift_getOpaqueTypeConformance2();
    sub_1000028A8(&qword_1000261C8, &qword_1000197E8);
    sub_1000028A8(&qword_1000261D0, &qword_1000197F0);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261C0);
  }

  return result;
}

unint64_t sub_10000597C()
{
  result = qword_1000261E8;
  if (!qword_1000261E8)
  {
    sub_1000028A8(&qword_1000261D8, &qword_1000197F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000261E8);
  }

  return result;
}

unint64_t sub_1000059F8()
{
  result = qword_100026200;
  if (!qword_100026200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026200);
  }

  return result;
}

void *sub_100005A4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005A90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100005AA0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_1000261B0, &qword_1000197D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_100026210, &qword_100019810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005BCC(uint64_t a1)
{
  v2 = sub_100005790(&qword_1000261B0, &qword_1000197D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005C34(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005CC8(a1, v4);
}

unint64_t sub_100005CC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
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

unint64_t sub_100005DCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005790(&qword_100026240, &qword_100019838);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100005C34(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_100005EC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005790(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005F24(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

_OWORD *sub_100005F6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100005F7C()
{
  result = qword_100026250;
  if (!qword_100026250)
  {
    sub_1000028A8(&qword_100026248, &qword_100019840);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    sub_100006174(&qword_100026258, &qword_100026260, &qword_100019848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026250);
  }

  return result;
}

unint64_t sub_1000060DC()
{
  result = qword_1000262A0;
  if (!qword_1000262A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000262A0);
  }

  return result;
}

uint64_t sub_100006174(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1000061C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Int sub_100006254()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000062CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000063AC(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    swift_allocObject();
    v6 = a3();
    v9 = *(v8 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_100006430()
{
  v1 = OBJC_IVAR____TtC6Charge19LayoutConfiguration__size;
  v2 = sub_100005790(&qword_100026438, &unk_1000199E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___consoleMetrics);

  v4 = *(v0 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___clusterMetrics);

  v5 = *(v0 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___widgetMetrics);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for LayoutConfiguration()
{
  result = qword_100026300;
  if (!qword_100026300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000655C()
{
  sub_100006604();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100006604()
{
  if (!qword_100026310)
  {
    type metadata accessor for CGSize(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100026310);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChargePresentationMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChargePresentationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000067C0()
{
  result = qword_100026430;
  if (!qword_100026430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026430);
  }

  return result;
}

uint64_t sub_100006820@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LayoutConfiguration();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_100006860@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1000068E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t getEnumTagSinglePayload for ChargeTemplateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChargeTemplateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006AC8()
{
  result = qword_100026440;
  if (!qword_100026440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026440);
  }

  return result;
}

void sub_100006BC8(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 _FBSScene];
    v7 = [v6 settings];

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    v9 = &OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_consoleWindowManager;
    if (v8)
    {
      v9 = &OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_clusterWindowManager;
    }

    v10 = *v9;
    v11 = *(v1 + v10);
    *(v1 + v10) = 0;
  }
}

id sub_100006DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargeSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006E9C(void *a1, void *a2)
{
  v3 = v2;
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_8:

    return sub_100007718(0xD000000000000024, 0x8000000100017590, 0xD00000000000001FLL, 0x80000001000175C0, 22);
  }

  v7 = v6;
  v8 = a1;
  v9 = [a2 role];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v17 = [v7 _FBSScene];
  v18 = [v17 settings];

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();

  objc_allocWithZone(type metadata accessor for ChargeWindowManager());
  if (v19)
  {
    v20 = sub_10000EFB0(v7, 1);
    v21 = OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_clusterWindowManager;
  }

  else
  {
    v20 = sub_10000EFB0(v7, 0);
    v21 = OBJC_IVAR____TtC6Charge19ChargeSceneDelegate_consoleWindowManager;
  }

  v22 = *(v3 + v21);
  *(v3 + v21) = v20;

  return _objc_release_x1();
}

uint64_t sub_1000070B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100007790();
  result = OS_os_log.init(subsystem:category:)();
  qword_100028278 = result;
  return result;
}

uint64_t sub_100007170(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000723C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007730(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005AA0(v11);
  return v7;
}

unint64_t sub_10000723C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007348(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100007348(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007394(a1, a2);
  sub_1000074C4(&off_100020FF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100007394(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000075B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000075B0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000074C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100007624(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000075B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100005790(&qword_100026550, &qword_100019A90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007624(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005790(&qword_100026550, &qword_100019A90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100007730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100007790()
{
  result = qword_100026558;
  if (!qword_100026558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026558);
  }

  return result;
}

uint64_t sub_1000077F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = a6();
  if (qword_100025FE0 != -1)
  {
    swift_once();
  }

  v12 = qword_100028278;
  result = os_log_type_enabled(qword_100028278, v11);
  if (result)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100007170(a3, a4, &v15);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_100007170(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v12, v11, "%s: %ld  %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_100007994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_100005790(&qword_100026568, &qword_100019B08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_100005790(&qword_100026570, &qword_100019B10);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v14[*(sub_100005790(&qword_100026578, &qword_100019B18) + 44)];
  v16 = *(v4 + 16);
  v16(v7, v21, v3);
  v16(v15, v7, v3);
  v17 = &v15[*(sub_100005790(&qword_100026580, &qword_100019B20) + 48)];
  *v17 = 0;
  v17[8] = 1;
  (*(v4 + 8))(v7, v3);
  sub_100007C38(v14, v12);
  sub_100007C38(v12, a2);
  v18 = a2 + *(sub_100005790(&qword_100026588, &qword_100019B28) + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_100007CA8(v14);
  return sub_100007CA8(v12);
}

uint64_t sub_100007BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100005790(&qword_100026560, &qword_100019B00);
  return sub_100007994(a1, a2 + *(v4 + 44));
}

uint64_t sub_100007C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_100026570, &qword_100019B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007CA8(uint64_t a1)
{
  v2 = sub_100005790(&qword_100026570, &qword_100019B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100007D14()
{
  result = qword_100026590;
  if (!qword_100026590)
  {
    sub_1000028A8(&qword_100026598, &unk_100019B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026590);
  }

  return result;
}

__n128 sub_100007D78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007D8C(uint64_t a1, int a2)
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

uint64_t sub_100007DD4(uint64_t result, int a2, int a3)
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

__n128 sub_100007E40@<Q0>(char *a1@<X1>, unsigned __int8 a2@<W2>, __n128 *a3@<X8>)
{
  v6 = &a1[OBJC_IVAR____TtC6Charge11ChargeModel__carObservable];
  swift_beginAccess();
  v7 = *(v6 + 1);
  v8 = a1;
  v9 = v7;
  v10 = dispatch thunk of CAFCarObservable.highVoltageBattery.getter();

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [v10 batteryLevel];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v6 + 1);
  v13 = dispatch thunk of CAFCarObservable.charging.getter();

  v14 = [v13 chargingTime];
  if (!v14)
  {

LABEL_6:
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    v40 = 1;
    v35.n128_u64[0] = EnvironmentObject.init()();
    v35.n128_u64[1] = v24;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    LOBYTE(v39) = v33.n128_u8[0];
    HIBYTE(v39) = 1;
    sub_1000082E0();
    sub_100002614();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_7;
  }

  sub_100005F24(0, &qword_100026138, CAFBatteryLevel_ptr);
  v29 = a2;
  sub_100002668(&qword_100026140, &qword_100026138, CAFBatteryLevel_ptr);
  CAFObserved<>.observable.getter();
  sub_100005F24(0, &qword_100026158, CAFChargingTime_ptr);
  sub_100002668(&qword_100026160, &qword_100026158, CAFChargingTime_ptr);
  CAFObserved<>.observable.getter();
  type metadata accessor for LayoutConfiguration();
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
  v15 = EnvironmentObject.init()();
  v27 = v16;
  v28 = v15;
  type metadata accessor for CAFBatteryLevelObservable();
  sub_100008334(&qword_100026168, &type metadata accessor for CAFBatteryLevelObservable);
  v17 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  type metadata accessor for CAFChargingTimeObservable();
  sub_100008334(&qword_100026178, &type metadata accessor for CAFChargingTimeObservable);
  v20 = ObservedObject.init(wrappedValue:)();
  v22 = v21;
  type metadata accessor for ChargeModel();
  sub_100008334(&qword_1000265A8, type metadata accessor for ChargeModel);
  v30.n128_u64[0] = v17;
  v30.n128_u64[1] = v19;
  v31.n128_u64[0] = v20;
  v31.n128_u64[1] = v22;
  v32.n128_u64[0] = ObservedObject.init(wrappedValue:)();
  v32.n128_u64[1] = v23;
  v33.n128_u64[0] = v28;
  v33.n128_u64[1] = v27;
  v34 = v29;
  v43 = v32;
  v44 = v33;
  v45 = v29;
  v41 = v30;
  v42 = v31;
  v40 = 0;
  sub_10000837C(&v30, &v35);
  sub_10000837C(&v30, &v35);
  sub_1000082E0();
  sub_100002614();
  _ConditionalContent<>.init(storage:)();

  sub_1000083B4(&v30);
  sub_1000083B4(&v30);
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v41 = v35;
  v42 = v36;
LABEL_7:
  v25 = v44;
  a3[2] = v43;
  a3[3] = v25;
  a3[4].n128_u16[0] = v45;
  result = v42;
  *a3 = v41;
  a3[1] = result;
  return result;
}

unint64_t sub_1000082E0()
{
  result = qword_1000265A0;
  if (!qword_1000265A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000265A0);
  }

  return result;
}

uint64_t sub_100008334(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000083E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100008408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100008450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000084B8()
{
  result = qword_1000265B0;
  if (!qword_1000265B0)
  {
    sub_1000028A8(&qword_1000265B8, &qword_100019C48);
    sub_1000082E0();
    sub_100002614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000265B0);
  }

  return result;
}

uint64_t sub_100008560@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v2 = sub_100005790(&qword_1000265C0, &qword_100019CA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v94 - v4;
  v94 = sub_100005790(&qword_1000265C8, &qword_100019CA8);
  v6 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v96 = &v94 - v7;
  v101 = sub_100005790(&qword_1000265D0, &qword_100019CB0);
  v8 = *(*(v101 - 8) + 64);
  v9 = __chkstk_darwin(v101);
  v95 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v94 - v11;
  v98 = sub_100005790(&qword_1000265D8, &qword_100019CB8);
  v12 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v100 = &v94 - v13;
  v99 = sub_100005790(&qword_1000265E0, &qword_100019CC0);
  v14 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v16 = &v94 - v15;
  v106 = sub_100005790(&qword_1000265E8, &qword_100019CC8);
  v17 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v102 = &v94 - v18;
  v103 = sub_100005790(&qword_1000265F0, &qword_100019CD0);
  v19 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v105 = &v94 - v20;
  v110 = sub_100005790(&qword_1000265F8, &qword_100019CD8);
  v21 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v107 = &v94 - v22;
  v104 = sub_100005790(&qword_100026600, &qword_100019CE0);
  v23 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v25 = &v94 - v24;
  v26 = sub_100005790(&qword_100026608, &qword_100019CE8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v94 - v28;
  v108 = sub_100005790(&qword_100026610, &qword_100019CF0);
  v30 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v32 = &v94 - v31;
  v33 = sub_100005790(&qword_100026618, &qword_100019CF8);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v94 - v35;
  v109 = sub_100005790(&qword_100026620, &qword_100019D00);
  v37 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v39 = &v94 - v38;
  if (*(v1 + 64) <= 1u)
  {
    if (*(v1 + 64))
    {
      *v29 = static HorizontalAlignment.center.getter();
      *(v29 + 1) = 0;
      v29[16] = 1;
      v47 = sub_100005790(&qword_1000266A0, &qword_100019D28);
      sub_10000951C(v1, &v29[*(v47 + 44)]);
      v40 = &qword_100026608;
      v41 = &qword_100019CE8;
      sub_10000DE80(v29, v36, &qword_100026608, &qword_100019CE8);
      swift_storeEnumTagMultiPayload();
      sub_100006174(&qword_100026688, &qword_100026608, &qword_100019CE8);
      _ConditionalContent<>.init(storage:)();
      sub_10000DE80(v39, v32, &qword_100026620, &qword_100019D00);
      swift_storeEnumTagMultiPayload();
      sub_10000DD10();
      sub_10000DDC8();
      _ConditionalContent<>.init(storage:)();
      sub_100005EC4(v39, &qword_100026620, &qword_100019D00);
      v42 = v29;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100006174(&qword_100026688, &qword_100026608, &qword_100019CE8);
      _ConditionalContent<>.init(storage:)();
      v40 = &qword_100026620;
      v41 = &qword_100019D00;
      sub_10000DE80(v39, v32, &qword_100026620, &qword_100019D00);
      swift_storeEnumTagMultiPayload();
      sub_10000DD10();
      sub_10000DDC8();
      _ConditionalContent<>.init(storage:)();
      v42 = v39;
    }

    v48 = v40;
    v49 = v41;
    return sub_100005EC4(v42, v48, v49);
  }

  if (*(v1 + 64) == 2)
  {
    *v25 = static HorizontalAlignment.center.getter();
    *(v25 + 1) = 0;
    v25[16] = 1;
    v43 = sub_100005790(&qword_100026698, &qword_100019D20);
    sub_10000A674(v1, &v25[*(v43 + 44)]);
    v44 = &qword_100026600;
    v45 = &qword_100019CE0;
    sub_10000DE80(v25, v105, &qword_100026600, &qword_100019CE0);
    swift_storeEnumTagMultiPayload();
    sub_100006174(&qword_100026670, &qword_100026600, &qword_100019CE0);
    sub_10000DC58();
    v46 = v107;
    _ConditionalContent<>.init(storage:)();
    sub_10000DE80(v46, v32, &qword_1000265F8, &qword_100019CD8);
    swift_storeEnumTagMultiPayload();
    sub_10000DD10();
    sub_10000DDC8();
    _ConditionalContent<>.init(storage:)();
    sub_100005EC4(v46, &qword_1000265F8, &qword_100019CD8);
    v42 = v25;
LABEL_17:
    v48 = v44;
    v49 = v45;
    return sub_100005EC4(v42, v48, v49);
  }

  v50 = *(v1 + 48);
  if (v50)
  {
    v51 = *(v50 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v52 = static HorizontalAlignment.leading.getter();
    if (v51)
    {
      *v5 = v52;
      *(v5 + 1) = 0;
      v5[16] = 1;
      v53 = sub_100005790(&qword_100026628, &qword_100019D08);
      sub_10000B3A0(v1, &v5[*(v53 + 44)]);
      sub_100005790(&qword_100026630, &qword_100019D10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100019B40;
      v55 = static Edge.Set.leading.getter();
      *(inited + 32) = v55;
      v56 = static Edge.Set.top.getter();
      *(inited + 33) = v56;
      v57 = Edge.Set.init(rawValue:)();
      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v55)
      {
        v57 = Edge.Set.init(rawValue:)();
      }

      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v56)
      {
        v57 = Edge.Set.init(rawValue:)();
      }

      EdgeInsets.init(_all:)();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v66 = v96;
      sub_10000D9FC(v5, v96, &qword_1000265C0, &qword_100019CA0);
      v67 = v66 + *(v94 + 36);
      *v67 = v57;
      *(v67 + 8) = v59;
      *(v67 + 16) = v61;
      *(v67 + 24) = v63;
      *(v67 + 32) = v65;
      *(v67 + 40) = 0;
      v68 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v77 = v95;
      sub_10000D9FC(v66, v95, &qword_1000265C8, &qword_100019CA8);
      v78 = v77 + *(v101 + 36);
      *v78 = v68;
      *(v78 + 8) = v70;
      *(v78 + 16) = v72;
      *(v78 + 24) = v74;
      *(v78 + 32) = v76;
      *(v78 + 40) = 0;
      v79 = &qword_1000265D0;
      v80 = &qword_100019CB0;
      v81 = v97;
      sub_10000D9FC(v77, v97, &qword_1000265D0, &qword_100019CB0);
      sub_10000DE80(v81, v100, &qword_1000265D0, &qword_100019CB0);
      swift_storeEnumTagMultiPayload();
      sub_10000DA64();
      sub_10000DFE4(&qword_100026650, &qword_1000265D0, &qword_100019CB0, sub_10000DB1C);
      v82 = v102;
      _ConditionalContent<>.init(storage:)();
      v83 = v81;
    }

    else
    {
      *v16 = v52;
      *(v16 + 1) = 0;
      v16[16] = 1;
      v84 = sub_100005790(&qword_100026628, &qword_100019D08);
      sub_10000B3A0(v1, &v16[*(v84 + 44)]);
      v85 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v86 = &v16[*(v99 + 36)];
      *v86 = v85;
      *(v86 + 1) = v87;
      *(v86 + 2) = v88;
      *(v86 + 3) = v89;
      *(v86 + 4) = v90;
      v86[40] = 0;
      v79 = &qword_1000265E0;
      v80 = &qword_100019CC0;
      sub_10000DE80(v16, v100, &qword_1000265E0, &qword_100019CC0);
      swift_storeEnumTagMultiPayload();
      sub_10000DA64();
      sub_10000DFE4(&qword_100026650, &qword_1000265D0, &qword_100019CB0, sub_10000DB1C);
      v82 = v102;
      _ConditionalContent<>.init(storage:)();
      v83 = v16;
    }

    sub_100005EC4(v83, v79, v80);
    v44 = &qword_1000265E8;
    v45 = &qword_100019CC8;
    sub_10000DE80(v82, v105, &qword_1000265E8, &qword_100019CC8);
    swift_storeEnumTagMultiPayload();
    sub_100006174(&qword_100026670, &qword_100026600, &qword_100019CE0);
    sub_10000DC58();
    v91 = v107;
    _ConditionalContent<>.init(storage:)();
    sub_10000DE80(v91, v32, &qword_1000265F8, &qword_100019CD8);
    swift_storeEnumTagMultiPayload();
    sub_10000DD10();
    sub_10000DDC8();
    _ConditionalContent<>.init(storage:)();
    sub_100005EC4(v91, &qword_1000265F8, &qword_100019CD8);
    v42 = v82;
    goto LABEL_17;
  }

  v93 = *(v1 + 56);
  type metadata accessor for LayoutConfiguration();
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100009244()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = *(v1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    if (*(v1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (v2 == 1)
      {
        v3 = sub_100006344();
        v4 = type metadata accessor for ClusterMetrics();
        v5 = v4;
        v6 = &off_100021580;
      }

      else
      {
        v3 = sub_100006378();
        v4 = type metadata accessor for WidgetMetrics();
        v5 = v4;
        v6 = &off_100021520;
      }
    }

    else
    {
      v3 = sub_100006310();
      v4 = type metadata accessor for ConsoleMetrics();
      v5 = v4;
      v6 = &off_1000215E0;
    }

    v14 = v4;
    v15 = v6;

    v13 = v3;
    sub_100005A4C(&v13, v5);
    (v6[9])();
    sub_100005AA0(&v13);
    if (v2)
    {
      if (v2 == 1)
      {
        v7 = sub_100006344();
        v8 = type metadata accessor for ClusterMetrics();
        v9 = v8;
        v10 = &off_100021580;
      }

      else
      {
        v7 = sub_100006378();
        v8 = type metadata accessor for WidgetMetrics();
        v9 = v8;
        v10 = &off_100021520;
      }
    }

    else
    {
      v7 = sub_100006310();
      v8 = type metadata accessor for ConsoleMetrics();
      v9 = v8;
      v10 = &off_1000215E0;
    }

    v14 = v8;
    v15 = v10;

    v13 = v7;
    sub_100005A4C(&v13, v9);
    (v10[9])();
    return sub_100005AA0(&v13);
  }

  else
  {
    v12 = *(v0 + 56);
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000951C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v109 = a2;
  v3 = sub_100005790(&qword_100026218, &qword_100019D30);
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  __chkstk_darwin(v3);
  v99 = &v99 - v5;
  v6 = type metadata accessor for AccessoryCircularCapacityGaugeStyle();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v103 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100005790(&qword_1000266A8, &qword_100019D38);
  v9 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v11 = &v99 - v10;
  v12 = sub_100005790(&qword_1000266B0, &qword_100019D40);
  v107 = *(v12 - 8);
  v13 = *(v107 + 64);
  v14 = __chkstk_darwin(v12);
  v114 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v115 = &v99 - v16;
  v17 = [objc_opt_self() mainBundle];
  v163._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x474E494752414843;
  v19.value._countAndFlagsBits = 0x656772616843;
  v18._object = 0xE800000000000000;
  v19.value._object = 0xE600000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v163._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v163);

  v21 = String.init(format:_:)();
  v23 = v22;

  *&v149 = v21;
  *(&v149 + 1) = v23;
  sub_1000059F8();
  v24 = Text.init<A>(_:)();
  v106 = a1;
  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = *(v27 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v32 = *(a1 + 48);

    v108 = v12;
    if (v31)
    {
      if (v31 == 1)
      {
        v33 = sub_100006344();
        v34 = type metadata accessor for ClusterMetrics();
        v35 = v34;
        v36 = &off_100021580;
      }

      else
      {
        v33 = sub_100006378();
        v34 = type metadata accessor for WidgetMetrics();
        v35 = v34;
        v36 = &off_100021520;
      }
    }

    else
    {
      v33 = sub_100006310();
      v34 = type metadata accessor for ConsoleMetrics();
      v35 = v34;
      v36 = &off_1000215E0;
    }

    v158[3] = v34;
    v158[4] = v36;

    v158[0] = v33;
    sub_100005A4C(v158, v35);
    (v36[5])(v35, v36);
    v37 = Text.font(_:)();
    v112 = v38;
    v113 = v39;
    v41 = v40;
    sub_100005A90(v28, v29, v30 & 1);

    sub_100005AA0(v158);
    v110 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v111 = v41 & 1;
    v162 = v41 & 1;
    v159 = 0;
    v50 = v106;
    sub_100009F68(v11);
    v51 = v103;
    AccessoryCircularCapacityGaugeStyle.init()();
    sub_10000DEE8();
    sub_100008334(&qword_100026710, &type metadata accessor for AccessoryCircularCapacityGaugeStyle);
    v52 = v105;
    View.gaugeStyle<A>(_:)();
    (*(v104 + 8))(v51, v52);
    sub_100005EC4(v11, &qword_1000266A8, &qword_100019D38);
    v53 = *(v50 + 24);
    v54 = CAFChargingTimeObservable.observed.getter();
    LODWORD(v51) = [v54 remainingTimeInvalid];

    if (v51)
    {
      *&v149 = 2108717;
      *(&v149 + 1) = 0xE300000000000000;
      v55 = [objc_opt_self() minutes];
      v56 = [v55 symbol];

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60._countAndFlagsBits = v57;
      v60._object = v59;
      String.append(_:)(v60);

      v61 = *(&v149 + 1);
      v62 = v149;
      v63 = v108;
    }

    else
    {
      v64 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v64 setUnitsStyle:1];
      [v64 setAllowedUnits:96];
      [v64 setZeroFormattingBehavior:1];
      v65 = v99;
      dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
      v66 = v101;
      Measurement.value.getter();
      v68 = v67;
      (*(v100 + 8))(v65, v66);
      v69 = [v64 stringFromTimeInterval:v68];
      v63 = v108;
      if (!v69)
      {

        sub_10000E17C(&v149);
        v79 = v109;
        goto LABEL_12;
      }

      v70 = v69;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v71;
    }

    v72 = static HorizontalAlignment.center.getter();
    LOBYTE(v149) = 1;
    sub_10000BD28(v62, v61, v50, v116);

    *(v117 + 7) = v116[0];
    *(&v117[1] + 7) = v116[1];
    *(&v117[2] + 7) = v116[2];
    *(&v117[3] + 7) = v116[3];
    v73 = v149;
    v74 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    *(&v134[1] + 1) = v117[1];
    *(&v134[2] + 1) = v117[2];
    *(&v134[3] + 1) = v117[3];
    v133 = v72;
    LOBYTE(v134[0]) = v73;
    *&v134[4] = *(&v117[3] + 15);
    *(v134 + 1) = v117[0];
    BYTE8(v134[4]) = v74;
    *&v135 = v75;
    *(&v135 + 1) = v76;
    *&v136 = v77;
    *(&v136 + 1) = v78;
    v137 = 0;
    ConfigurationIntentResponseCode.rawValue.getter(&v133);
    v155 = v135;
    v156 = v136;
    v157 = v137;
    v151 = v134[1];
    v152 = v134[2];
    v153 = v134[3];
    v154 = v134[4];
    v149 = v133;
    v150 = v134[0];
    v79 = v109;
LABEL_12:
    v80 = v107;
    v81 = *(v107 + 16);
    v82 = v114;
    v81(v114, v115, v63);
    v124 = v155;
    v125 = v156;
    v126 = v157;
    v120 = v151;
    v121 = v152;
    v122 = v153;
    v123 = v154;
    v118 = v149;
    v119 = v150;
    *&v127 = v37;
    *(&v127 + 1) = v112;
    LOBYTE(v128) = v111;
    v109 = v37;
    *(&v128 + 1) = *v161;
    DWORD1(v128) = *&v161[3];
    *(&v128 + 1) = v113;
    LOBYTE(v129) = v110;
    *(&v129 + 1) = *v160;
    DWORD1(v129) = *&v160[3];
    *(&v129 + 1) = v43;
    *&v130[0] = v45;
    *(&v130[0] + 1) = v47;
    *&v130[1] = v49;
    BYTE8(v130[1]) = 0;
    v83 = v127;
    v84 = v128;
    *(v79 + 57) = *(v130 + 9);
    v85 = v130[0];
    v79[2] = v129;
    v79[3] = v85;
    *v79 = v83;
    v79[1] = v84;
    v86 = sub_100005790(&qword_100026718, &unk_100019D70);
    v81(v79 + *(v86 + 48), v82, v63);
    v87 = *(v86 + 64);
    v88 = v125;
    v131[6] = v124;
    v131[7] = v125;
    v90 = v122;
    v89 = v123;
    v131[4] = v122;
    v131[5] = v123;
    v91 = v120;
    v92 = v121;
    v131[2] = v120;
    v131[3] = v121;
    v94 = v118;
    v93 = v119;
    v131[0] = v118;
    v131[1] = v119;
    v95 = v79 + v87;
    *(v95 + 6) = v124;
    *(v95 + 7) = v88;
    *(v95 + 2) = v91;
    *(v95 + 3) = v92;
    *(v95 + 4) = v90;
    *(v95 + 5) = v89;
    v132 = v126;
    v95[128] = v126;
    *v95 = v94;
    *(v95 + 1) = v93;
    sub_10000DE80(&v127, &v133, &qword_100026720, &qword_10001A690);
    sub_10000DE80(v131, &v133, &qword_100026728, &unk_100019D80);
    v96 = *(v80 + 8);
    v96(v115, v63);
    v135 = v124;
    v136 = v125;
    v137 = v126;
    v134[1] = v120;
    v134[2] = v121;
    v134[3] = v122;
    v134[4] = v123;
    v133 = v118;
    v134[0] = v119;
    sub_100005EC4(&v133, &qword_100026728, &unk_100019D80);
    v96(v114, v63);
    v138[0] = v109;
    v138[1] = v112;
    v139 = v111;
    *v140 = *v161;
    *&v140[3] = *&v161[3];
    v141 = v113;
    v142 = v110;
    *v143 = *v160;
    *&v143[3] = *&v160[3];
    v144 = v43;
    v145 = v45;
    v146 = v47;
    v147 = v49;
    v148 = 0;
    return sub_100005EC4(v138, &qword_100026720, &qword_10001A690);
  }

  v98 = *(v106 + 56);
  type metadata accessor for LayoutConfiguration();
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100009F68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_100005790(&unk_100027330, &qword_100019818);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v70 - v6;
  v8 = sub_100005790(&qword_1000266E8, &qword_100019D58);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v70 - v11;
  v70 = sub_100005790(&qword_1000266D8, &qword_100019D50);
  v13 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v15 = &v70 - v14;
  v71 = sub_100005790(&qword_1000266C0, &qword_100019D48);
  v16 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v18 = &v70 - v17;
  v19 = sub_100005790(&qword_100026730, &qword_100019D90);
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = *(v73 + 64);
  __chkstk_darwin(v19);
  v72 = &v70 - v21;
  v22 = *(v1 + 8);
  dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
  Measurement.value.getter();
  v24 = v23;
  (*(v4 + 8))(v7, v3);
  v77 = v24;
  v78 = xmmword_100019B50;
  v76 = v2;
  sub_100005790(&qword_100026738, &qword_100019D98);
  sub_10000E1B0();
  sub_10000E320();
  Gauge.init<A>(value:in:label:)();
  sub_100005790(&qword_100026780, &qword_100019DB8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100019680;
  *(v25 + 32) = static Color.green.getter();
  v26 = Gradient.init(colors:)();
  KeyPath = swift_getKeyPath();
  *&v78 = v26;
  v28 = AnyShapeStyle.init<A>(_:)();
  v29 = &v12[*(v9 + 44)];
  *v29 = KeyPath;
  v29[1] = v28;
  v30 = static Edge.Set.top.getter();
  v31 = *(v2 + 48);
  if (v31)
  {
    v32 = v30;
    v33 = *(v31 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v34 = *(v2 + 48);

    if (v33)
    {
      if (v33 == 1)
      {
        v35 = sub_100006344();
        v36 = type metadata accessor for ClusterMetrics();
        v37 = v36;
        v38 = &off_100021580;
      }

      else
      {
        v35 = sub_100006378();
        v36 = type metadata accessor for WidgetMetrics();
        v37 = v36;
        v38 = &off_100021520;
      }
    }

    else
    {
      v35 = sub_100006310();
      v36 = type metadata accessor for ConsoleMetrics();
      v37 = v36;
      v38 = &off_1000215E0;
    }

    *(&v79 + 1) = v36;
    *&v80 = v38;
    *&v78 = v35;
    sub_100005A4C(&v78, v37);
    (v38[10])();
    EdgeInsets.init(_all:)();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_10000D9FC(v12, v15, &qword_1000266E8, &qword_100019D58);
    v47 = &v15[*(v70 + 36)];
    *v47 = v32;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    sub_100005AA0(&v78);
    v48 = static Edge.Set.bottom.getter();
    if (*(v31 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      v50 = v74;
      v49 = v75;
      if (*(v31 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v51 = sub_100006344();
        v52 = type metadata accessor for ClusterMetrics();
        v53 = v52;
        v54 = &off_100021580;
      }

      else
      {
        v51 = sub_100006378();
        v52 = type metadata accessor for WidgetMetrics();
        v53 = v52;
        v54 = &off_100021520;
      }

      *(&v79 + 1) = v52;
      *&v80 = v54;

      *&v78 = v51;
    }

    else
    {
      v55 = sub_100006310();
      v53 = type metadata accessor for ConsoleMetrics();
      v54 = &off_1000215E0;
      *(&v79 + 1) = v53;
      *&v80 = &off_1000215E0;

      *&v78 = v55;
      v50 = v74;
      v49 = v75;
    }

    sub_100005A4C(&v78, v53);
    (v54[10])();
    EdgeInsets.init(_all:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_10000D9FC(v15, v18, &qword_1000266D8, &qword_100019D50);
    v64 = &v18[*(v71 + 36)];
    *v64 = v48;
    *(v64 + 1) = v57;
    *(v64 + 2) = v59;
    *(v64 + 3) = v61;
    *(v64 + 4) = v63;
    v64[40] = 0;
    sub_100005AA0(&v78);
    sub_10000DFE4(&qword_1000266C8, &qword_1000266C0, &qword_100019D48, sub_10000E068);
    v65 = v72;
    View.allowsGaugeResizing(_:)();
    sub_100005EC4(v18, &qword_1000266C0, &qword_100019D48);
    sub_100009244();
    sub_100009244();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v73 + 32))(v49, v65, v50);
    result = sub_100005790(&qword_1000266A8, &qword_100019D38);
    v67 = (v49 + *(result + 36));
    v68 = v79;
    *v67 = v78;
    v67[1] = v68;
    v67[2] = v80;
  }

  else
  {
    v69 = *(v2 + 56);
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A674@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v114 = a2;
  v3 = sub_100005790(&qword_100026218, &qword_100019D30);
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  __chkstk_darwin(v3);
  v103 = &v102 - v5;
  v6 = type metadata accessor for AccessoryCircularCapacityGaugeStyle();
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = *(v107 + 64);
  __chkstk_darwin(v6);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100005790(&qword_1000266A8, &qword_100019D38);
  v10 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v12 = &v102 - v11;
  v13 = sub_100005790(&qword_1000266B0, &qword_100019D40);
  v112 = *(v13 - 8);
  v14 = *(v112 + 64);
  v15 = __chkstk_darwin(v13);
  v111 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v120 = &v102 - v17;
  v18 = [objc_opt_self() mainBundle];
  v146._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0x474E494752414843;
  v20.value._countAndFlagsBits = 0x656772616843;
  v19._object = 0xE800000000000000;
  v20.value._object = 0xE600000000000000;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v146._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v146);

  v22 = String.init(format:_:)();
  v24 = v23;

  v140[0] = v22;
  v140[1] = v24;
  sub_1000059F8();
  v27 = Text.init<A>(_:)();
  v110 = a1;
  v28 = a1[6];
  if (v28)
  {
    v29 = v25;
    v30 = v26;
    v31 = *(v28 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v113 = v13;
    v109 = v32;
    if (v31)
    {
      if (v31 == 1)
      {
        v33 = sub_100006344();
        v34 = type metadata accessor for ClusterMetrics();
        v35 = v34;
        v36 = &off_100021580;
      }

      else
      {
        v33 = sub_100006378();
        v34 = type metadata accessor for WidgetMetrics();
        v35 = v34;
        v36 = &off_100021520;
      }
    }

    else
    {
      v33 = sub_100006310();
      v34 = type metadata accessor for ConsoleMetrics();
      v35 = v34;
      v36 = &off_1000215E0;
    }

    v141[3] = v34;
    v141[4] = v36;
    v141[0] = v33;
    sub_100005A4C(v141, v35);
    (v36[5])(v35, v36);
    v115 = Text.font(_:)();
    v118 = v37;
    v119 = v38;
    v40 = v39;
    sub_100005A90(v27, v29, v30 & 1);

    sub_100005AA0(v141);
    v117 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v116 = v40 & 1;
    v145 = v40 & 1;
    v142 = 0;
    v49 = v110;
    sub_100009F68(v12);
    AccessoryCircularCapacityGaugeStyle.init()();
    sub_10000DEE8();
    sub_100008334(&qword_100026710, &type metadata accessor for AccessoryCircularCapacityGaugeStyle);
    v50 = v108;
    View.gaugeStyle<A>(_:)();
    (*(v107 + 8))(v9, v50);
    sub_100005EC4(v12, &qword_1000266A8, &qword_100019D38);
    v51 = v49[3];
    v52 = CAFChargingTimeObservable.observed.getter();
    v53 = [v52 remainingTimeInvalid];

    if (v53)
    {
      v108 = v48;
      v54 = v46;
      v55 = v44;
      v56 = v42;
      v140[0] = 2108717;
      v140[1] = 0xE300000000000000;
      v57 = [objc_opt_self() minutes];
      v58 = [v57 symbol];

      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62._countAndFlagsBits = v59;
      v62._object = v61;
      String.append(_:)(v62);

      v63 = v140[0];
      v64 = v140[1];
      v65 = v114;
    }

    else
    {
      v66 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v66 setUnitsStyle:1];
      [v66 setAllowedUnits:96];
      [v66 setZeroFormattingBehavior:1];
      v67 = v103;
      dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
      v68 = v105;
      Measurement.value.getter();
      v70 = v69;
      (*(v104 + 8))(v67, v68);
      v71 = [v66 stringFromTimeInterval:v70];
      v65 = v114;
      if (!v71)
      {

        goto LABEL_15;
      }

      v108 = v48;
      v54 = v46;
      v55 = v44;
      v56 = v42;
      v72 = v71;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v73;
    }

    v74 = sub_10000B184();
    if (v75)
    {
      v76 = v74;
      v77 = v75;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v78 = *&v140[1] * 0.5 * 0.3;
      v79 = static VerticalAlignment.center.getter();
      LOBYTE(v129[0]) = 0;
      sub_10000C254(v76, v77, v49, v63, v64, v140);
      memcpy(v122, v140, 0x130uLL);
      memcpy(v127, v140, 0x130uLL);
      sub_10000DE80(v122, v128, &qword_100026798, &qword_100019EA8);
      sub_100005EC4(v127, &qword_100026798, &qword_100019EA8);

      memcpy(&v121[7], v122, 0x130uLL);
      v80 = v129[0];
      LOBYTE(v77) = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v128[0] = v79;
      *&v128[1] = v78;
      LOBYTE(v128[2]) = v80;
      memcpy(&v128[2] + 1, v121, 0x137uLL);
      LOBYTE(v128[41]) = v77;
      v128[42] = v82;
      v128[43] = v84;
      v128[44] = v86;
      v128[45] = v88;
      LOBYTE(v128[46]) = 0;
      ConfigurationIntentResponseCode.rawValue.getter(v128);
      memcpy(v140, v128, 0x171uLL);
      v42 = v56;
      v44 = v55;
      v46 = v54;
      v48 = v108;
LABEL_16:
      v91 = v111;
      v90 = v112;
      v92 = *(v112 + 16);
      v93 = v113;
      v92(v111, v120, v113, v89);
      memcpy(v122, v140, 0x171uLL);
      *&v123 = v115;
      *(&v123 + 1) = v118;
      LOBYTE(v124) = v116;
      *(&v124 + 1) = *v144;
      DWORD1(v124) = *&v144[3];
      *(&v124 + 1) = v119;
      LOBYTE(v125) = v117;
      *(&v125 + 1) = *v143;
      DWORD1(v125) = *&v143[3];
      *(&v125 + 1) = v42;
      *&v126[0] = v44;
      *(&v126[0] + 1) = v46;
      *&v126[1] = v48;
      BYTE8(v126[1]) = 0;
      v94 = v123;
      v95 = v124;
      *(v65 + 57) = *(v126 + 9);
      v96 = v126[0];
      v65[2] = v125;
      v65[3] = v96;
      *v65 = v94;
      v65[1] = v95;
      v97 = sub_100005790(&qword_100026788, &qword_100019E98);
      (v92)(v65 + *(v97 + 48), v91, v93);
      v98 = *(v97 + 64);
      memcpy(v127, v122, 0x171uLL);
      memcpy(v65 + v98, v122, 0x171uLL);
      sub_10000DE80(&v123, v128, &qword_100026720, &qword_10001A690);
      sub_10000DE80(v127, v128, &qword_100026790, &qword_100019EA0);
      v99 = *(v90 + 8);
      v99(v120, v93);
      memcpy(v128, v122, 0x171uLL);
      sub_100005EC4(v128, &qword_100026790, &qword_100019EA0);
      v99(v91, v93);
      v129[0] = v115;
      v129[1] = v118;
      v130 = v116;
      *v131 = *v144;
      *&v131[3] = *&v144[3];
      v132 = v119;
      v133 = v117;
      *v134 = *v143;
      *&v134[3] = *&v143[3];
      v135 = v42;
      v136 = v44;
      v137 = v46;
      v138 = v48;
      v139 = 0;
      return sub_100005EC4(v129, &qword_100026720, &qword_10001A690);
    }

    v42 = v56;
    v44 = v55;
    v46 = v54;
    v48 = v108;
LABEL_15:
    v89.n128_f64[0] = sub_10000E3E4(v140);
    goto LABEL_16;
  }

  v101 = v110[7];
  type metadata accessor for LayoutConfiguration();
  sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

id sub_10000B184()
{
  v1 = sub_100005790(&unk_100027330, &qword_100019818);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - v4;
  v6 = *(v0 + 8);
  v7 = CAFBatteryLevelObservable.observed.getter();
  v8 = [v7 batteryLevelInvalid];

  if (v8)
  {
    v19[0] = 2108717;
    v19[1] = 0xE300000000000000;
    v9 = [objc_opt_self() percent];
    v10 = [v9 symbol];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    return v19[0];
  }

  else
  {
    v16 = [objc_allocWithZone(NSMeasurementFormatter) init];
    result = [v16 numberFormatter];
    if (result)
    {
      v17 = result;
      [result setMaximumFractionDigits:2];

      [v16 setUnitOptions:1];
      dispatch thunk of CAFBatteryLevelObservable.batteryLevel.getter();
      sub_100005F24(0, &qword_100026230, CAFUnitPercent_ptr);
      v18 = NSMeasurementFormatter.string<A>(from:)();

      (*(v2 + 8))(v5, v1);
      return v18;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000B3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_100005790(&qword_100026218, &qword_100019D30);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  __chkstk_darwin(v3);
  v72 = &v71 - v5;
  v6 = type metadata accessor for AccessoryCircularCapacityGaugeStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005790(&qword_1000266A8, &qword_100019D38);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v15 = sub_100005790(&qword_1000266B0, &qword_100019D40);
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  v17 = __chkstk_darwin(v15);
  v77 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v71 - v19;
  sub_100009F68(v14);
  AccessoryCircularCapacityGaugeStyle.init()();
  sub_10000DEE8();
  sub_100008334(&qword_100026710, &type metadata accessor for AccessoryCircularCapacityGaugeStyle);
  v75 = v20;
  v21 = a1;
  View.gaugeStyle<A>(_:)();
  (*(v7 + 8))(v10, v6);
  sub_100005EC4(v14, &qword_1000266A8, &qword_100019D38);
  v22 = *(a1 + 24);
  v23 = CAFChargingTimeObservable.observed.getter();
  LODWORD(v7) = [v23 remainingTimeInvalid];

  if (v7)
  {
    *&v109 = 2108717;
    *(&v109 + 1) = 0xE300000000000000;
    v24 = [objc_opt_self() minutes];
    v25 = [v24 symbol];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30 = *(&v109 + 1);
    v31 = v109;
  }

  else
  {
    v32 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v32 setUnitsStyle:1];
    [v32 setAllowedUnits:96];
    [v32 setZeroFormattingBehavior:1];
    v33 = v72;
    dispatch thunk of CAFChargingTimeObservable.remainingTime.getter();
    v34 = v74;
    Measurement.value.getter();
    v36 = v35;
    (*(v73 + 8))(v33, v34);
    v37 = [v32 stringFromTimeInterval:v36];
    if (!v37)
    {

      goto LABEL_9;
    }

    v38 = v37;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v39;
  }

  v40 = sub_10000B184();
  if (!v41)
  {

LABEL_9:
    v50.n128_f64[0] = sub_10000E420(&v109);
    goto LABEL_10;
  }

  v42 = v40;
  v43 = v41;
  v44 = static HorizontalAlignment.leading.getter();
  v81 = 0;
  sub_10000D248(v31, v30, v21, v42, v43, &v109);
  v85 = v112;
  v86 = v113;
  v87 = v114;
  v82 = v109;
  v83 = v110;
  v84 = v111;
  v95 = v111;
  v96 = v112;
  v97 = v113;
  v98 = v114;
  v93 = v109;
  v94 = v110;
  sub_10000DE80(&v82, &v104, &qword_1000267C8, &qword_100019ED8);
  sub_100005EC4(&v93, &qword_1000267C8, &qword_100019ED8);

  *&v80[39] = v84;
  *&v80[55] = v85;
  *&v80[71] = v86;
  *&v80[87] = v87;
  *&v80[7] = v82;
  *&v80[23] = v83;
  v45 = v81;
  LOBYTE(v43) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v105[3] + 1) = *&v80[48];
  *(&v105[4] + 1) = *&v80[64];
  *(&v105[5] + 1) = *&v80[80];
  *(v105 + 1) = *v80;
  *(&v105[1] + 1) = *&v80[16];
  *&v104 = v44;
  *(&v104 + 1) = 0x3FF0000000000000;
  LOBYTE(v105[0]) = v45;
  *&v105[6] = *&v80[95];
  *(&v105[2] + 1) = *&v80[32];
  BYTE8(v105[6]) = v43;
  *&v106 = v46;
  *(&v106 + 1) = v47;
  *&v107 = v48;
  *(&v107 + 1) = v49;
  v108 = 0;
  ConfigurationIntentResponseCode.rawValue.getter(&v104);
  v117 = v106;
  v118 = v107;
  v119 = v108;
  v113 = v105[3];
  v114 = v105[4];
  v115 = v105[5];
  v116 = v105[6];
  v109 = v104;
  v110 = v105[0];
  v50 = v105[2];
  v111 = v105[1];
  v112 = v105[2];
LABEL_10:
  v52 = v77;
  v51 = v78;
  v53 = *(v78 + 16);
  v54 = v75;
  v55 = v79;
  v53(v77, v75, v79, v50);
  v89 = v116;
  v90 = v117;
  v91 = v118;
  v85 = v112;
  v86 = v113;
  v87 = v114;
  v88 = v115;
  v82 = v109;
  v92 = v119;
  v83 = v110;
  v84 = v111;
  v56 = v76;
  (v53)(v76, v52, v55);
  v57 = sub_100005790(&qword_1000267B8, &qword_100019EC8);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  v59 = v56 + *(v57 + 64);
  v60 = v82;
  v93 = v82;
  v94 = v83;
  v61 = v83;
  v62 = v84;
  v63 = v86;
  v95 = v84;
  v96 = v85;
  v64 = v89;
  v101 = v90;
  v102 = v91;
  v65 = v85;
  v66 = v88;
  v97 = v86;
  v98 = v87;
  v67 = v87;
  v99 = v88;
  v100 = v89;
  v68 = v91;
  *(v59 + 128) = v90;
  *(v59 + 144) = v68;
  *(v59 + 64) = v63;
  *(v59 + 80) = v67;
  *(v59 + 96) = v66;
  *(v59 + 112) = v64;
  *v59 = v60;
  *(v59 + 16) = v61;
  v103 = v92;
  *(v59 + 160) = v92;
  *(v59 + 32) = v62;
  *(v59 + 48) = v65;
  sub_10000DE80(&v93, &v104, &qword_1000267C0, &qword_100019ED0);
  v69 = *(v51 + 8);
  v69(v54, v55);
  v106 = v90;
  v107 = v91;
  v105[3] = v86;
  v105[4] = v87;
  v105[5] = v88;
  v105[6] = v89;
  v104 = v82;
  v105[0] = v83;
  v108 = v92;
  v105[1] = v84;
  v105[2] = v85;
  sub_100005EC4(&v104, &qword_1000267C0, &qword_100019ED0);
  return (v69)(v52, v55);
}

uint64_t sub_10000BB50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Image.init(systemName:)();
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = v4;
    v7 = *(v5 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v8 = *(a1 + 48);

    if (v7)
    {
      if (v7 == 1)
      {
        v9 = sub_100006344();
        v10 = type metadata accessor for ClusterMetrics();
        v11 = v10;
        v12 = &off_100021580;
      }

      else
      {
        v9 = sub_100006378();
        v10 = type metadata accessor for WidgetMetrics();
        v11 = v10;
        v12 = &off_100021520;
      }
    }

    else
    {
      v9 = sub_100006310();
      v10 = type metadata accessor for ConsoleMetrics();
      v11 = v10;
      v12 = &off_1000215E0;
    }

    v19[3] = v10;
    v19[4] = v12;

    v19[0] = v9;
    sub_100005A4C(v19, v11);
    sub_100009244();
    v14 = (v12[11])(v11, v12, v13 * 0.4);
    KeyPath = swift_getKeyPath();
    sub_100005AA0(v19);
    v16 = static Color.green.getter();
    result = swift_getKeyPath();
    *a2 = v6;
    a2[1] = KeyPath;
    a2[2] = v14;
    a2[3] = result;
    a2[4] = v16;
  }

  else
  {
    v18 = *(a1 + 56);
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000BD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a1;
  v67 = a2;
  sub_1000059F8();

  v6 = Text.init<A>(_:)();
  v9 = *(a3 + 48);
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v14 = *(a3 + 48);

    v64 = a3;
    v65 = a4;
    if (v13)
    {
      if (v13 == 1)
      {
        v15 = sub_100006344();
        v16 = type metadata accessor for ClusterMetrics();
        v17 = v16;
        v18 = &off_100021580;
      }

      else
      {
        v15 = sub_100006378();
        v16 = type metadata accessor for WidgetMetrics();
        v17 = v16;
        v18 = &off_100021520;
      }
    }

    else
    {
      v15 = sub_100006310();
      v16 = type metadata accessor for ConsoleMetrics();
      v17 = v16;
      v18 = &off_1000215E0;
    }

    v68 = v16;
    v69 = v18;
    v66 = v15;
    sub_100005A4C(&v66, v17);
    (v18[6])(v17, v18);
    v19 = Text.font(_:)();
    v21 = v20;
    v23 = v22;
    sub_100005A90(v10, v11, v12 & 1);

    sub_100005AA0(&v66);
    v24 = *(v64 + 24);
    v25 = CAFChargingTimeObservable.observed.getter();
    v26 = [v25 remainingTimeInvalid];

    if (v26)
    {
      static Color.secondary.getter();
    }

    else
    {
      static Color.primary.getter();
    }

    v63 = Text.foregroundColor(_:)();
    v28 = v27;
    v62 = v29;
    v31 = v30;

    sub_100005A90(v19, v21, v23 & 1);

    v32 = [objc_opt_self() mainBundle];
    v70._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0x4D45525F454D4954;
    v33._object = 0xEE00474E494E4941;
    v34.value._countAndFlagsBits = 0x656772616843;
    v34.value._object = 0xE600000000000000;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v70._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v70);

    v36 = String.init(format:_:)();
    v38 = v37;

    v66 = v36;
    v67 = v38;
    v39 = Text.init<A>(_:)();
    v41 = v40;
    v43 = v42;
    if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v44 = sub_100006344();
        v45 = type metadata accessor for ClusterMetrics();
        v46 = v45;
        v47 = &off_100021580;
      }

      else
      {
        v44 = sub_100006378();
        v45 = type metadata accessor for WidgetMetrics();
        v46 = v45;
        v47 = &off_100021520;
      }
    }

    else
    {
      v44 = sub_100006310();
      v45 = type metadata accessor for ConsoleMetrics();
      v46 = v45;
      v47 = &off_1000215E0;
    }

    v68 = v45;
    v69 = v47;

    v66 = v44;
    sub_100005A4C(&v66, v46);
    (v47[7])(v46, v47);
    v48 = Text.font(_:)();
    v50 = v49;
    v52 = v51;
    sub_100005A90(v39, v41, v43 & 1);

    sub_100005AA0(&v66);
    static Color.secondary.getter();
    v53 = Text.foregroundColor(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    sub_100005A90(v48, v50, v52 & 1);

    *v65 = v63;
    *(v65 + 8) = v28;
    *(v65 + 16) = v62 & 1;
    *(v65 + 24) = v31;
    *(v65 + 32) = v53;
    *(v65 + 40) = v55;
    *(v65 + 48) = v57 & 1;
    *(v65 + 56) = v59;
    sub_10000E198(v63, v28, v62 & 1);

    sub_10000E198(v53, v55, v57 & 1);

    sub_100005A90(v53, v55, v57 & 1);

    sub_100005A90(v63, v28, v62 & 1);
  }

  else
  {
    v61 = *(a3 + 56);
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v14 = static HorizontalAlignment.center.getter();
  LOBYTE(v39[0]) = 1;
  sub_10000C648(a1, a2, a3, &v51);
  v23 = *&v52[48];
  v24 = *&v52[64];
  v25 = *&v52[80];
  v26 = *&v52[96];
  v19 = v51;
  v20 = *v52;
  v21 = *&v52[16];
  v22 = *&v52[32];
  v27[0] = v51;
  v27[1] = *v52;
  v27[2] = *&v52[16];
  v27[3] = *&v52[32];
  v27[4] = *&v52[48];
  v27[5] = *&v52[64];
  v27[6] = *&v52[80];
  v27[7] = *&v52[96];
  sub_10000DE80(&v19, v41, &qword_1000267A0, &qword_100019EB0);
  sub_100005EC4(v27, &qword_1000267A0, &qword_100019EB0);
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[103] = v25;
  *&v18[119] = v26;
  *&v18[7] = v19;
  *&v18[23] = v20;
  *&v18[39] = v21;
  *&v18[55] = v22;
  v9 = v39[0];
  v13 = static HorizontalAlignment.center.getter();
  LOBYTE(v39[0]) = 1;
  sub_10000CC40(a4, a5, a3, &v51);
  v32 = *&v52[48];
  v33 = *&v52[64];
  v34 = *&v52[80];
  v35 = *&v52[96];
  v28 = v51;
  v29 = *v52;
  v30 = *&v52[16];
  v31 = *&v52[32];
  v36[0] = v51;
  v36[1] = *v52;
  v36[2] = *&v52[16];
  v36[3] = *&v52[32];
  v36[4] = *&v52[48];
  v36[5] = *&v52[64];
  v36[6] = *&v52[80];
  v36[7] = *&v52[96];
  sub_10000DE80(&v28, v41, &qword_1000267A0, &qword_100019EB0);
  sub_100005EC4(v36, &qword_1000267A0, &qword_100019EB0);
  *&v17[71] = v32;
  *&v17[87] = v33;
  *&v17[103] = v34;
  *&v17[119] = v35;
  *&v17[7] = v28;
  *&v17[23] = v29;
  *&v17[39] = v30;
  *&v17[55] = v31;
  v37 = v14;
  v38[0] = v9;
  *&v38[65] = *&v18[64];
  *&v38[49] = *&v18[48];
  *&v38[33] = *&v18[32];
  *&v38[17] = *&v18[16];
  *&v38[128] = *&v18[127];
  *&v38[113] = *&v18[112];
  *&v38[97] = *&v18[96];
  *&v38[81] = *&v18[80];
  *&v38[1] = *v18;
  __src[6] = *&v38[80];
  __src[7] = *&v38[96];
  __src[8] = *&v38[112];
  __src[2] = *&v38[16];
  __src[3] = *&v38[32];
  __src[4] = *&v38[48];
  __src[5] = *&v38[64];
  __src[0] = v14;
  __src[1] = *v38;
  *&v40[97] = *&v17[96];
  *&v40[81] = *&v17[80];
  *&v40[33] = *&v17[32];
  *&v40[17] = *&v17[16];
  *&v40[113] = *&v17[112];
  LOBYTE(a3) = v39[0];
  v39[0] = v13;
  v39[1] = 0;
  v40[0] = a3;
  *&v40[49] = *&v17[48];
  *&v40[65] = *&v17[64];
  *&v40[1] = *v17;
  *(&__src[16] + 8) = *&v40[96];
  *(&__src[17] + 8) = *&v40[112];
  *(&__src[15] + 8) = *&v40[80];
  *(&__src[11] + 8) = *&v40[16];
  *(&__src[12] + 8) = *&v40[32];
  *(&__src[13] + 8) = *&v40[48];
  *(&__src[14] + 8) = *&v40[64];
  *(&__src[9] + 8) = v13;
  *&v40[128] = *(&v35 + 1);
  *&__src[9] = *&v38[128];
  *(&__src[18] + 1) = *(&v35 + 1);
  *(&__src[10] + 8) = *v40;
  memcpy(a6, __src, 0x130uLL);
  v48 = *&v17[80];
  v49 = *&v17[96];
  *v50 = *&v17[112];
  v44 = *&v17[16];
  v45 = *&v17[32];
  v46 = *&v17[48];
  v47 = *&v17[64];
  v41[0] = v13;
  v41[1] = 0;
  v42 = a3;
  *&v50[15] = *&v17[127];
  v43 = *v17;
  sub_10000DE80(&v37, &v51, &qword_1000267A8, &qword_100019EB8);
  sub_10000DE80(v39, &v51, &qword_1000267A8, &qword_100019EB8);
  sub_100005EC4(v41, &qword_1000267A8, &qword_100019EB8);
  *&v52[81] = *&v18[80];
  *&v52[97] = *&v18[96];
  *v53 = *&v18[112];
  *&v52[17] = *&v18[16];
  *&v52[33] = *&v18[32];
  *&v52[49] = *&v18[48];
  *&v52[65] = *&v18[64];
  v51 = v14;
  v52[0] = v9;
  *&v53[15] = *&v18[127];
  *&v52[1] = *v18;
  return sub_100005EC4(&v51, &qword_1000267A8, &qword_100019EB8);
}

uint64_t sub_10000C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a1;
  v85 = a2;
  sub_1000059F8();

  v6 = Text.init<A>(_:)();
  v9 = a3[6];
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v14 = a3[6];

    v76 = a4;
    if (v13)
    {
      if (v13 == 1)
      {
        v15 = sub_100006344();
        v16 = type metadata accessor for ClusterMetrics();
        v17 = v16;
        v18 = &off_100021580;
      }

      else
      {
        v15 = sub_100006378();
        v16 = type metadata accessor for WidgetMetrics();
        v17 = v16;
        v18 = &off_100021520;
      }
    }

    else
    {
      v15 = sub_100006310();
      v16 = type metadata accessor for ConsoleMetrics();
      v17 = v16;
      v18 = &off_1000215E0;
    }

    v99[3] = v16;
    v99[4] = v18;
    v99[0] = v15;
    sub_100005A4C(v99, v17);
    (v18[6])(v17, v18);
    v74 = Text.font(_:)();
    v75 = v19;
    v77 = v20;
    v22 = v21;
    sub_100005A90(v10, v11, v12 & 1);

    sub_100005AA0(v99);
    v23 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v22 & 1;
    v103 = v32;
    v100 = 0;
    v33 = a3[1];
    v34 = CAFBatteryLevelObservable.observed.getter();
    v35 = [v34 batteryLevelInvalid];

    if (v35)
    {
      v36 = static Color.secondary.getter();
    }

    else
    {
      v36 = static Color.primary.getter();
    }

    v37 = v36;
    KeyPath = swift_getKeyPath();
    v39 = [objc_opt_self() mainBundle];
    v105._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0x454752414843;
    v41.value._countAndFlagsBits = 0x656772616843;
    v40._object = 0xE600000000000000;
    v41.value._object = 0xE600000000000000;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v105._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v105);

    v43 = String.init(format:_:)();
    v45 = v44;

    v84 = v43;
    v85 = v45;
    v46 = Text.init<A>(_:)();
    v48 = v47;
    v50 = v49;
    v73 = v23;
    *&v72 = KeyPath;
    *(&v72 + 1) = v37;
    if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v51 = sub_100006344();
        v52 = type metadata accessor for ClusterMetrics();
        v53 = v52;
        v54 = &off_100021580;
      }

      else
      {
        v51 = sub_100006378();
        v52 = type metadata accessor for WidgetMetrics();
        v53 = v52;
        v54 = &off_100021520;
      }
    }

    else
    {
      v51 = sub_100006310();
      v52 = type metadata accessor for ConsoleMetrics();
      v53 = v52;
      v54 = &off_1000215E0;
    }

    v98[3] = v52;
    v98[4] = v54;

    v98[0] = v51;
    sub_100005A4C(v98, v53);
    (v54[7])(v53, v54);
    v55 = Text.font(_:)();
    v57 = v56;
    v59 = v58;
    sub_100005A90(v46, v48, v50 & 1);

    sub_100005AA0(v98);
    static Color.secondary.getter();
    v60 = Text.foregroundColor(_:)();
    v62 = v61;
    v71 = v63;
    v65 = v64;

    sub_100005A90(v55, v57, v59 & 1);

    *&v78 = v74;
    *(&v78 + 1) = v77;
    LOBYTE(v79) = v32;
    *(&v79 + 1) = *v102;
    DWORD1(v79) = *&v102[3];
    *(&v79 + 1) = v75;
    LOBYTE(v80) = v73;
    *(&v80 + 1) = *v101;
    DWORD1(v80) = *&v101[3];
    *(&v80 + 1) = v25;
    *&v81 = v27;
    *(&v81 + 1) = v29;
    *&v82 = v31;
    BYTE8(v82) = 0;
    HIDWORD(v82) = *(v104 + 3);
    *(&v82 + 9) = v104[0];
    v83 = v72;
    v66 = v80;
    v67 = v81;
    *(v76 + 64) = v82;
    *(v76 + 80) = v72;
    *(v76 + 32) = v66;
    *(v76 + 48) = v67;
    v68 = v79;
    *v76 = v78;
    *(v76 + 16) = v68;
    *(v76 + 96) = v60;
    *(v76 + 104) = v62;
    *(v76 + 112) = v71 & 1;
    *(v76 + 120) = v65;
    sub_10000DE80(&v78, &v84, &qword_1000267B0, &qword_100019EC0);
    sub_10000E198(v60, v62, v71 & 1);

    sub_100005A90(v60, v62, v71 & 1);

    v84 = v74;
    v85 = v77;
    v86 = v32;
    *v87 = *v102;
    *&v87[3] = *&v102[3];
    v88 = v75;
    v89 = v73;
    *v90 = *v101;
    *&v90[3] = *&v101[3];
    v91 = v25;
    v92 = v27;
    v93 = v29;
    v94 = v31;
    v95 = 0;
    *&v96[3] = *(v104 + 3);
    *v96 = v104[0];
    v97 = v72;
    return sub_100005EC4(&v84, &qword_1000267B0, &qword_100019EC0);
  }

  else
  {
    v70 = a3[7];
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000CC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a1;
  v85 = a2;
  sub_1000059F8();

  v6 = Text.init<A>(_:)();
  v9 = a3[6];
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v14 = a3[6];

    v76 = a4;
    if (v13)
    {
      if (v13 == 1)
      {
        v15 = sub_100006344();
        v16 = type metadata accessor for ClusterMetrics();
        v17 = v16;
        v18 = &off_100021580;
      }

      else
      {
        v15 = sub_100006378();
        v16 = type metadata accessor for WidgetMetrics();
        v17 = v16;
        v18 = &off_100021520;
      }
    }

    else
    {
      v15 = sub_100006310();
      v16 = type metadata accessor for ConsoleMetrics();
      v17 = v16;
      v18 = &off_1000215E0;
    }

    v99[3] = v16;
    v99[4] = v18;
    v99[0] = v15;
    sub_100005A4C(v99, v17);
    (v18[6])(v17, v18);
    v74 = Text.font(_:)();
    v75 = v19;
    v77 = v20;
    v22 = v21;
    sub_100005A90(v10, v11, v12 & 1);

    sub_100005AA0(v99);
    v23 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v22 & 1;
    v103 = v32;
    v100 = 0;
    v33 = a3[3];
    v34 = CAFChargingTimeObservable.observed.getter();
    v35 = [v34 remainingTimeInvalid];

    if (v35)
    {
      v36 = static Color.secondary.getter();
    }

    else
    {
      v36 = static Color.primary.getter();
    }

    v37 = v36;
    KeyPath = swift_getKeyPath();
    v39 = [objc_opt_self() mainBundle];
    v105._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0x4D45525F454D4954;
    v40._object = 0xEE00474E494E4941;
    v41.value._countAndFlagsBits = 0x656772616843;
    v41.value._object = 0xE600000000000000;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v105._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v105);

    v43 = String.init(format:_:)();
    v45 = v44;

    v84 = v43;
    v85 = v45;
    v46 = Text.init<A>(_:)();
    v48 = v47;
    v50 = v49;
    v73 = v23;
    *&v72 = KeyPath;
    *(&v72 + 1) = v37;
    if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v9 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v51 = sub_100006344();
        v52 = type metadata accessor for ClusterMetrics();
        v53 = v52;
        v54 = &off_100021580;
      }

      else
      {
        v51 = sub_100006378();
        v52 = type metadata accessor for WidgetMetrics();
        v53 = v52;
        v54 = &off_100021520;
      }
    }

    else
    {
      v51 = sub_100006310();
      v52 = type metadata accessor for ConsoleMetrics();
      v53 = v52;
      v54 = &off_1000215E0;
    }

    v98[3] = v52;
    v98[4] = v54;

    v98[0] = v51;
    sub_100005A4C(v98, v53);
    (v54[7])(v53, v54);
    v55 = Text.font(_:)();
    v57 = v56;
    v59 = v58;
    sub_100005A90(v46, v48, v50 & 1);

    sub_100005AA0(v98);
    static Color.secondary.getter();
    v60 = Text.foregroundColor(_:)();
    v62 = v61;
    v71 = v63;
    v65 = v64;

    sub_100005A90(v55, v57, v59 & 1);

    *&v78 = v74;
    *(&v78 + 1) = v77;
    LOBYTE(v79) = v32;
    *(&v79 + 1) = *v102;
    DWORD1(v79) = *&v102[3];
    *(&v79 + 1) = v75;
    LOBYTE(v80) = v73;
    *(&v80 + 1) = *v101;
    DWORD1(v80) = *&v101[3];
    *(&v80 + 1) = v25;
    *&v81 = v27;
    *(&v81 + 1) = v29;
    *&v82 = v31;
    BYTE8(v82) = 0;
    HIDWORD(v82) = *(v104 + 3);
    *(&v82 + 9) = v104[0];
    v83 = v72;
    v66 = v80;
    v67 = v81;
    *(v76 + 64) = v82;
    *(v76 + 80) = v72;
    *(v76 + 32) = v66;
    *(v76 + 48) = v67;
    v68 = v79;
    *v76 = v78;
    *(v76 + 16) = v68;
    *(v76 + 96) = v60;
    *(v76 + 104) = v62;
    *(v76 + 112) = v71 & 1;
    *(v76 + 120) = v65;
    sub_10000DE80(&v78, &v84, &qword_1000267B0, &qword_100019EC0);
    sub_10000E198(v60, v62, v71 & 1);

    sub_100005A90(v60, v62, v71 & 1);

    v84 = v74;
    v85 = v77;
    v86 = v32;
    *v87 = *v102;
    *&v87[3] = *&v102[3];
    v88 = v75;
    v89 = v73;
    *v90 = *v101;
    *&v90[3] = *&v101[3];
    v91 = v25;
    v92 = v27;
    v93 = v29;
    v94 = v31;
    v95 = 0;
    *&v96[3] = *(v104 + 3);
    *v96 = v104[0];
    v97 = v72;
    return sub_100005EC4(&v84, &qword_1000267B0, &qword_100019EC0);
  }

  else
  {
    v70 = a3[7];
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D248@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a1;
  v96 = a2;
  sub_1000059F8();

  v9 = Text.init<A>(_:)();
  v12 = *(a3 + 48);
  if (v12)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = *(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v17 = *(a3 + 48);
    swift_retain_n();
    v92 = a6;
    v87 = a5;
    v89 = a3;
    if (v16)
    {
      if (v16 == 1)
      {
        v18 = sub_100006344();
        v19 = type metadata accessor for ClusterMetrics();
        v20 = v19;
        v21 = &off_100021580;
      }

      else
      {
        v18 = sub_100006378();
        v19 = type metadata accessor for WidgetMetrics();
        v20 = v19;
        v21 = &off_100021520;
      }
    }

    else
    {
      v18 = sub_100006310();
      v19 = type metadata accessor for ConsoleMetrics();
      v20 = v19;
      v21 = &off_1000215E0;
    }

    v97 = v19;
    v98 = v21;
    v95 = v18;
    sub_100005A4C(&v95, v20);
    (v21[6])(v20, v21);
    v22 = Text.font(_:)();
    v24 = v23;
    v26 = v25;
    sub_100005A90(v13, v14, v15 & 1);

    sub_100005AA0(&v95);
    static Color.secondary.getter();
    v27 = Text.foregroundColor(_:)();
    v93 = v28;
    v90 = v29;
    v31 = v30;

    sub_100005A90(v22, v24, v26 & 1);

    v95 = a4;
    v96 = v87;

    v32 = Text.init<A>(_:)();
    v34 = v33;
    v36 = v35;
    v91 = v31;
    v94 = v27;
    v84 = *(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    if (*(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v37 = sub_100006344();
        v38 = type metadata accessor for ClusterMetrics();
        v39 = v38;
        v40 = &off_100021580;
      }

      else
      {
        v37 = sub_100006378();
        v38 = type metadata accessor for WidgetMetrics();
        v39 = v38;
        v40 = &off_100021520;
      }
    }

    else
    {
      v37 = sub_100006310();
      v38 = type metadata accessor for ConsoleMetrics();
      v39 = v38;
      v40 = &off_1000215E0;
    }

    v97 = v38;
    v98 = v40;

    v95 = v37;
    sub_100005A4C(&v95, v39);
    (v40[8])(v39, v40);
    v41 = Text.font(_:)();
    v43 = v42;
    v45 = v44;
    sub_100005A90(v32, v34, v36 & 1);

    sub_100005AA0(&v95);
    v46 = *(v89 + 8);
    v47 = CAFBatteryLevelObservable.observed.getter();
    v48 = [v47 batteryLevelInvalid];

    if (v48)
    {
      static Color.secondary.getter();
    }

    else
    {
      static Color.primary.getter();
    }

    v49 = Text.foregroundColor(_:)();
    v85 = v50;
    v52 = v51;
    v88 = v53;

    sub_100005A90(v41, v43, v45 & 1);

    v54 = *(v89 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v56 = v95;
    v55 = v96;

    v57 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v57 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v58 = Text.init<A>(_:)();
      v60 = v59;
      v62 = v61;
      v83 = v52;
      if (v84)
      {
        if (v84 == 1)
        {
          v63 = sub_100006344();
          v64 = type metadata accessor for ClusterMetrics();
          v65 = v64;
          v66 = &off_100021580;
        }

        else
        {
          v63 = sub_100006378();
          v64 = type metadata accessor for WidgetMetrics();
          v65 = v64;
          v66 = &off_100021520;
        }
      }

      else
      {
        v63 = sub_100006310();
        v64 = type metadata accessor for ConsoleMetrics();
        v65 = v64;
        v66 = &off_1000215E0;
      }

      v97 = v64;
      v98 = v66;

      v95 = v63;
      sub_100005A4C(&v95, v65);
      (v66[7])(v65, v66);
      v72 = Text.font(_:)();
      v74 = v73;
      v76 = v75;
      sub_100005A90(v58, v60, v62 & 1);

      sub_100005AA0(&v95);
      static Color.secondary.getter();
      v67 = Text.foregroundColor(_:)();
      v68 = v77;
      v79 = v78;
      v70 = v80;

      sub_100005A90(v72, v74, v76 & 1);

      v69 = v79 & 1;
      sub_10000E198(v67, v68, v79 & 1);

      v71 = v88;
      v52 = v83;
    }

    else
    {

      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = v88;
    }

    LOBYTE(v95) = v90 & 1;
    sub_10000E198(v94, v93, v90 & 1);

    sub_10000E198(v49, v85, v52 & 1);

    sub_10000E448(v67, v68, v69, v70);
    sub_10000E48C(v67, v68, v69, v70);
    *v92 = v94;
    *(v92 + 8) = v93;
    *(v92 + 16) = v90 & 1;
    *(v92 + 24) = v91;
    *(v92 + 32) = v49;
    *(v92 + 40) = v85;
    *(v92 + 48) = v52 & 1;
    *(v92 + 56) = v71;
    *(v92 + 64) = v67;
    *(v92 + 72) = v68;
    *(v92 + 80) = v69;
    *(v92 + 88) = v70;
    sub_10000E48C(v67, v68, v69, v70);
    sub_100005A90(v49, v85, v52 & 1);

    sub_100005A90(v94, v93, v95);
  }

  else
  {
    v82 = *(a3 + 56);
    type metadata accessor for LayoutConfiguration();
    sub_100008334(&qword_100026120, type metadata accessor for LayoutConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D9B8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_100008560(a1);
}

uint64_t sub_10000D9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005790(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000DA64()
{
  result = qword_100026638;
  if (!qword_100026638)
  {
    sub_1000028A8(&qword_1000265E0, &qword_100019CC0);
    sub_100006174(&qword_100026640, &qword_100026648, &qword_100019D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026638);
  }

  return result;
}

unint64_t sub_10000DB4C()
{
  result = qword_100026660;
  if (!qword_100026660)
  {
    sub_1000028A8(&qword_1000265C0, &qword_100019CA0);
    sub_100006174(&qword_100026640, &qword_100026648, &qword_100019D18);
    sub_10000DC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026660);
  }

  return result;
}

unint64_t sub_10000DC04()
{
  result = qword_100026668;
  if (!qword_100026668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026668);
  }

  return result;
}

unint64_t sub_10000DC58()
{
  result = qword_100026678;
  if (!qword_100026678)
  {
    sub_1000028A8(&qword_1000265E8, &qword_100019CC8);
    sub_10000DA64();
    sub_10000DFE4(&qword_100026650, &qword_1000265D0, &qword_100019CB0, sub_10000DB1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026678);
  }

  return result;
}

unint64_t sub_10000DD10()
{
  result = qword_100026680;
  if (!qword_100026680)
  {
    sub_1000028A8(&qword_100026620, &qword_100019D00);
    sub_100006174(&qword_100026688, &qword_100026608, &qword_100019CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026680);
  }

  return result;
}

unint64_t sub_10000DDC8()
{
  result = qword_100026690;
  if (!qword_100026690)
  {
    sub_1000028A8(&qword_1000265F8, &qword_100019CD8);
    sub_100006174(&qword_100026670, &qword_100026600, &qword_100019CE0);
    sub_10000DC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026690);
  }

  return result;
}

uint64_t sub_10000DE80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005790(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000DEE8()
{
  result = qword_1000266B8;
  if (!qword_1000266B8)
  {
    sub_1000028A8(&qword_1000266A8, &qword_100019D38);
    sub_1000028A8(&qword_1000266C0, &qword_100019D48);
    sub_10000DFE4(&qword_1000266C8, &qword_1000266C0, &qword_100019D48, sub_10000E068);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000266B8);
  }

  return result;
}

uint64_t sub_10000DFE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000E098()
{
  result = qword_1000266E0;
  if (!qword_1000266E0)
  {
    sub_1000028A8(&qword_1000266E8, &qword_100019D58);
    sub_100006174(&qword_1000266F0, &qword_1000266F8, &qword_100019D60);
    sub_100006174(&qword_100026700, &qword_100026708, &qword_100019D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000266E0);
  }

  return result;
}

double sub_10000E17C(uint64_t a1)
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

uint64_t sub_10000E198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000E1B0()
{
  result = qword_100026740;
  if (!qword_100026740)
  {
    sub_1000028A8(&qword_100026738, &qword_100019D98);
    sub_10000E268();
    sub_100006174(&qword_100026768, &qword_100026770, &qword_100019DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026740);
  }

  return result;
}

unint64_t sub_10000E268()
{
  result = qword_100026748;
  if (!qword_100026748)
  {
    sub_1000028A8(&qword_100026750, &qword_100019DA0);
    sub_100006174(&qword_100026758, &qword_100026760, &qword_100019DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026748);
  }

  return result;
}

unint64_t sub_10000E320()
{
  result = qword_100026778;
  if (!qword_100026778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026778);
  }

  return result;
}

uint64_t sub_10000E374@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000E3A0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

double sub_10000E3E4(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
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
  return result;
}

double sub_10000E420(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
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

uint64_t sub_10000E448(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000E198(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000E48C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100005A90(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10000E4D4()
{
  result = qword_1000267D0;
  if (!qword_1000267D0)
  {
    sub_1000028A8(&qword_1000267D8, qword_100019F28);
    sub_10000DD10();
    sub_10000DDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000267D0);
  }

  return result;
}

uint64_t sub_10000E560()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_10000E5D4()
{
  result = [objc_allocWithZone(CAFCarManager) init];
  qword_1000267E0 = result;
  return result;
}

void sub_10000E608()
{
  if (qword_100025FE8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000267E0;
  sub_100005F24(0, &qword_100026930, CAFCarManager_ptr);
  sub_100002668(&qword_100026938, &qword_100026930, CAFCarManager_ptr);
  v1 = v0;
  v2 = CAFObserved<>.observable.getter();

  v3 = type metadata accessor for ChargeCAFManager();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_10000EC5C(v2);

  qword_100028280 = v6;
}

uint64_t sub_10000E700(void **a1)
{
  v1 = *a1;
  _StringGuts.grow(_:)(22);

  v1;
  sub_100005790(&qword_100026958, &qword_100019FA8);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  sub_1000077DC(0xD000000000000014, 0x8000000100017670, 0xD000000000000011, 0x8000000100017650, 28);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_100005F24(0, &qword_100026960, CAFCar_ptr);
      sub_100002668(&qword_100026968, &qword_100026960, CAFCar_ptr);
      v4 = CAFObserved<>.observable.getter();
      v5 = objc_allocWithZone(type metadata accessor for ChargeModel());
      sub_1000138CC(v4);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10000E8C8()
{
  sub_1000077DC(0xD000000000000025, 0x8000000100017690, 0x74696E696564, 0xE600000000000000, 35);
  v1 = OBJC_IVAR____TtC6Charge16ChargeCAFManager__model;
  v2 = sub_100005790(&qword_100026948, &qword_100019FA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC6Charge16ChargeCAFManager_cancellables);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for ChargeCAFManager()
{
  result = qword_100026828;
  if (!qword_100026828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EA14()
{
  sub_10000EAC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000EAC0()
{
  if (!qword_100026838)
  {
    sub_1000028A8(&unk_100026840, "V4");
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100026838);
    }
  }
}

uint64_t sub_10000EB24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChargeCAFManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000EB64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10000EBE4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_10000EC5C(void *a1)
{
  v2 = v1;
  v4 = sub_100005790(&qword_100026940, &qword_100019F98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100005790(&qword_100026948, &qword_100019FA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = OBJC_IVAR____TtC6Charge16ChargeCAFManager__model;
  v17[1] = 0;
  sub_100005790(&unk_100026840, "V4");
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v14, v13, v9);
  *(v2 + OBJC_IVAR____TtC6Charge16ChargeCAFManager_cancellables) = &_swiftEmptySetSingleton;
  sub_1000077DC(0xD000000000000020, 0x8000000100017620, 0xD000000000000011, 0x8000000100017650, 23);
  *(v2 + OBJC_IVAR____TtC6Charge16ChargeCAFManager_carManager) = a1;
  v15 = a1;
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  swift_allocObject();
  swift_weakInit();
  sub_10000EF44();
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_10000EF04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000EF44()
{
  result = qword_100026950;
  if (!qword_100026950)
  {
    sub_1000028A8(&qword_100026940, &qword_100019F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026950);
  }

  return result;
}

char *sub_10000EFB0(void *a1, char a2)
{
  v5 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v6 = OBJC_IVAR____TtC6Charge19ChargeWindowManager_window;
  *&v2[OBJC_IVAR____TtC6Charge19ChargeWindowManager_window] = v5;
  [v5 setAutoresizesSubviews:1];
  [*&v2[v6] setHidden:0];
  [*&v2[v6] makeKeyAndVisible];
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ChargeWindowManager();
  v7 = objc_msgSendSuper2(&v16, "init");
  v8 = *&v7[OBJC_IVAR____TtC6Charge19ChargeWindowManager_window];
  v9 = type metadata accessor for ChargeViewController();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC6Charge20ChargeViewController_presentationMode] = a2;
  v15.receiver = v10;
  v15.super_class = v9;
  v11 = v7;
  v12 = v8;
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  [v12 setRootViewController:{v13, v15.receiver, v15.super_class}];

  return v11;
}

id sub_10000F114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargeWindowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F1A0()
{
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v6 = [v1 scaledFontForFont:v5];

  *(v0 + 16) = Font.init(_:)();
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v8 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v9 = [v4 systemFontOfSize:64.0 weight:UIFontWeightMedium];
  v10 = [v7 scaledFontForFont:v9];

  *(v0 + 24) = Font.init(_:)();
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v12 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v13 = [v4 systemFontOfSize:22.0 weight:UIFontWeightMedium];
  v14 = [v11 scaledFontForFont:v13];

  *(v0 + 32) = Font.init(_:)();
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v16 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v17 = [v4 systemFontOfSize:18.0 weight:UIFontWeightMedium];
  v18 = [v15 scaledFontForFont:v17];

  Font.init(_:)();
  v19 = Font.monospaced()();

  *(v0 + 40) = v19;
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v21 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v22 = [v4 systemFontOfSize:20.0 weight:UIFontWeightMedium];
  v23 = [v20 scaledFontForFont:v22];

  *(v0 + 48) = Font.init(_:)();
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v25 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v26 = [v4 systemFontOfSize:24.0 weight:UIFontWeightMedium];
  v27 = [v24 scaledFontForFont:v26];

  *(v0 + 56) = Font.init(_:)();
  v28 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v29 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v30 = [v4 systemFontOfSize:14.0 weight:UIFontWeightMedium];
  v31 = [v28 scaledFontForFont:v30];

  *(v0 + 64) = Font.init(_:)();
  v32 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v33 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v34 = [v4 systemFontOfSize:55.0 weight:UIFontWeightMedium];
  v35 = [v32 scaledFontForFont:v34];

  *(v0 + 72) = Font.init(_:)();
  *(v0 + 80) = xmmword_10001A020;
  *(v0 + 96) = xmmword_10001A030;
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_10000F76C()
{
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:74.0 weight:UIFontWeightMedium];
  v6 = [v1 scaledFontForFont:v5];

  *(v0 + 16) = Font.init(_:)();
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v8 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v9 = [v4 systemFontOfSize:118.0 weight:UIFontWeightMedium];
  v10 = [v7 scaledFontForFont:v9];

  *(v0 + 24) = Font.init(_:)();
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v12 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v13 = [v4 systemFontOfSize:28.0 weight:UIFontWeightMedium];
  v14 = [v11 scaledFontForFont:v13];

  *(v0 + 32) = Font.init(_:)();
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v16 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v17 = [v4 systemFontOfSize:22.0 weight:UIFontWeightMedium];
  v18 = [v15 scaledFontForFont:v17];

  Font.init(_:)();
  v19 = Font.monospaced()();

  *(v0 + 40) = v19;
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v21 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v22 = [v4 systemFontOfSize:36.0 weight:UIFontWeightMedium];
  v23 = [v20 scaledFontForFont:v22];

  *(v0 + 48) = Font.init(_:)();
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v25 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v26 = [v4 systemFontOfSize:40.0 weight:UIFontWeightMedium];
  v27 = [v24 scaledFontForFont:v26];

  *(v0 + 56) = Font.init(_:)();
  v28 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v29 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v30 = [v4 systemFontOfSize:30.0 weight:UIFontWeightMedium];
  v31 = [v28 scaledFontForFont:v30];

  *(v0 + 64) = Font.init(_:)();
  v32 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v33 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v34 = [v4 systemFontOfSize:140.0 weight:UIFontWeightMedium];
  v35 = [v32 scaledFontForFont:v34];

  *(v0 + 72) = Font.init(_:)();
  __asm { FMOV            V1.2D, #16.0 }

  *(v0 + 80) = xmmword_10001A040;
  *(v0 + 96) = _Q1;
  *(v0 + 112) = 0x4030000000000000;
  return v0;
}

void *sub_10000FD88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  return v0;
}

uint64_t sub_10000FDE0()
{
  sub_10000FD88();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_10000FE38()
{
  v1 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v6 = [v1 scaledFontForFont:v5];

  *(v0 + 16) = Font.init(_:)();
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v8 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v9 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v10 = [v7 scaledFontForFont:v9];

  *(v0 + 24) = Font.init(_:)();
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v12 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v13 = [v4 systemFontOfSize:18.0 weight:UIFontWeightMedium];
  v14 = [v11 scaledFontForFont:v13];

  *(v0 + 32) = Font.init(_:)();
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v16 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v17 = [v4 systemFontOfSize:24.0 weight:UIFontWeightMedium];
  v18 = [v15 scaledFontForFont:v17];

  Font.init(_:)();
  v19 = Font.monospaced()();

  *(v0 + 40) = v19;
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v21 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v22 = [v4 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v23 = [v20 scaledFontForFont:v22];

  *(v0 + 48) = Font.init(_:)();
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v25 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v26 = [v4 systemFontOfSize:40.0 weight:UIFontWeightMedium];
  v27 = [v24 scaledFontForFont:v26];

  *(v0 + 56) = Font.init(_:)();
  v28 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v29 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v30 = [v4 systemFontOfSize:24.0 weight:UIFontWeightMedium];
  v31 = [v28 scaledFontForFont:v30];

  *(v0 + 64) = Font.init(_:)();
  v32 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v33 = [v2 preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v34 = [v4 systemFontOfSize:45.0 weight:UIFontWeightMedium];
  v35 = [v32 scaledFontForFont:v34];

  *(v0 + 72) = Font.init(_:)();
  *(v0 + 80) = xmmword_10001A050;
  *(v0 + 96) = xmmword_10001A060;
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1000103E8(double a1)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  v4 = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightMedium];
  v5 = [v2 scaledFontForFont:v4];

  return Font.init(_:)();
}

uint64_t sub_10001050C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100010554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000105C0@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a2;
  static Published.subscript.getter();

  if (v8 != 1)
  {

    type metadata accessor for LayoutConfiguration();
    sub_10001098C(&qword_100026120, type metadata accessor for LayoutConfiguration);
    EnvironmentObject.init()();
    goto LABEL_5;
  }

  if (a1)
  {
    *(a1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    type metadata accessor for ChargeModel();
    sub_10001098C(&qword_1000265A8, type metadata accessor for ChargeModel);
    ObservedObject.init(wrappedValue:)();
    sub_1000108E4();
    sub_100010938();
    _ConditionalContent<>.init(storage:)();
LABEL_5:
    sub_100005790(&qword_100026E08, &qword_10001A2C0);
    sub_100010858();
    sub_100002614();
    result = _ConditionalContent<>.init(storage:)();
    *a3 = v8;
    *(a3 + 16) = v9;
    *(a3 + 18) = v10;
    return result;
  }

  type metadata accessor for LayoutConfiguration();
  sub_10001098C(&qword_100026120, type metadata accessor for LayoutConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_100010858()
{
  result = qword_100026E10;
  if (!qword_100026E10)
  {
    sub_1000028A8(&qword_100026E08, &qword_10001A2C0);
    sub_1000108E4();
    sub_100010938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E10);
  }

  return result;
}

unint64_t sub_1000108E4()
{
  result = qword_100026E18;
  if (!qword_100026E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E18);
  }

  return result;
}

unint64_t sub_100010938()
{
  result = qword_100026E20;
  if (!qword_100026E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E20);
  }

  return result;
}

uint64_t sub_10001098C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000109D8()
{
  result = qword_100026E28;
  if (!qword_100026E28)
  {
    sub_1000028A8(&qword_100026E30, &qword_10001A2C8);
    sub_100010858();
    sub_100002614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026E28);
  }

  return result;
}

void sub_100010AC0()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = type metadata accessor for ChargeViewController();
  objc_msgSendSuper2(&v49, "viewDidLoad");
  v2 = *(v0 + OBJC_IVAR____TtC6Charge20ChargeViewController_presentationMode);
  v3 = type metadata accessor for LayoutConfiguration();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  type metadata accessor for CGSize(0);
  Published.init(initialValue:)();
  *(v6 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___consoleMetrics) = 0;
  *(v6 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___clusterMetrics) = 0;
  *(v6 + OBJC_IVAR____TtC6Charge19LayoutConfiguration____lazy_storage___widgetMetrics) = 0;
  *(v6 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) = v2;
  LOBYTE(v47) = 0;
  v48 = v6;
  v7 = objc_allocWithZone(sub_100005790(&qword_100026E68, &qword_10001A2F8));
  v8 = UIHostingController.init(rootView:)();
  [v1 addChildViewController:{v8, sub_1000111C4, 0, v47, v48}];
  v9 = [v8 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [v8 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v8 view];

  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v14 addSubview:v15];

  [v8 didMoveToParentViewController:v1];
  sub_100005790(&qword_100026E70, &unk_10001A300);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10001A2D0;
  v17 = [v8 view];

  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = [v17 topAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 topAnchor];
  v23 = [v18 constraintEqualToAnchor:v22];

  *(v16 + 32) = v23;
  v24 = [v8 view];

  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = [v24 bottomAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v16 + 40) = v30;
  v31 = [v8 view];

  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = [v31 leadingAnchor];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = v33;
  v35 = [v33 safeAreaLayoutGuide];

  v36 = [v35 leadingAnchor];
  v37 = [v32 constraintEqualToAnchor:v36];

  *(v16 + 48) = v37;
  v38 = [v8 view];

  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = [v38 trailingAnchor];

  v40 = [v1 view];
  if (v40)
  {
    v41 = v40;
    v42 = objc_opt_self();
    v43 = [v41 safeAreaLayoutGuide];

    v44 = [v43 trailingAnchor];
    v45 = [v39 constraintEqualToAnchor:v44];

    *(v16 + 56) = v45;
    sub_100011178();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:isa];

    CAFSignpostEmit_Rendered();
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_100011120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100011178()
{
  result = qword_100026E78;
  if (!qword_100026E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026E78);
  }

  return result;
}

uint64_t sub_1000111C4()
{
  if (qword_100025FF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100011258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ChargeCAFManager();
  sub_100011D40(&qword_100026E88, type metadata accessor for ChargeCAFManager);
  v31 = a3;
  v32 = a1;
  v33 = a2;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v41)
  {
    type metadata accessor for LayoutConfiguration();
    sub_100011D40(&qword_100026120, type metadata accessor for LayoutConfiguration);
    v30 = v41;
    EnvironmentObject.init()();
    type metadata accessor for ChargeModel();
    sub_100011D40(&qword_1000265A8, type metadata accessor for ChargeModel);
    ObservedObject.init(wrappedValue:)();
    v10 = v9;
    static ObservableObject.environmentStore.getter();
    LOBYTE(v39[0]) = 0;
    v11 = a4;

    v29 = v10;

    swift_retain_n();
    sub_100005790(&qword_100026E90, &qword_10001A448);
    sub_100005790(&qword_100026E98, &qword_10001A450);
    sub_100011BD0(&qword_100026EA0, &qword_100026E90, &qword_10001A448, sub_100011B7C);
    sub_100011BD0(&qword_100026EC0, &qword_100026E98, &qword_10001A450, sub_100011C80);
    _ConditionalContent<>.init(storage:)();

    v49 = v43;
    *v50 = *v44;
    *&v50[9] = *&v44[9];
    v47 = v41;
    v48 = v42;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
    v51._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0x494C414954494E49;
    v13._object = 0xEC000000474E495ALL;
    v14.value._countAndFlagsBits = 0x656772616843;
    v14.value._object = 0xE600000000000000;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v51);

    v16 = String.init(format:_:)();
    v18 = v17;

    type metadata accessor for LayoutConfiguration();
    sub_100011D40(&qword_100026120, type metadata accessor for LayoutConfiguration);
    v19 = EnvironmentObject.init()();
    v21 = v20;
    LOBYTE(v47) = 1;
    State.init(wrappedValue:)();
    v22 = *(&v41 + 1);
    LOBYTE(v45[0]) = 1;
    *&v41 = v19;
    *(&v41 + 1) = v21;
    LOBYTE(v42) = 0;
    *(&v42 + 1) = v22;
    *&v43 = v16;
    *(&v43 + 1) = v18;
    *v44 = 0x4049000000000000;
    v11 = a4;
    *&v44[8] = static ObservableObject.environmentStore.getter();
    *&v44[16] = a4;
    v44[24] = 1;

    sub_100005790(&qword_100026E90, &qword_10001A448);
    sub_100005790(&qword_100026E98, &qword_10001A450);
    sub_100011BD0(&qword_100026EA0, &qword_100026E90, &qword_10001A448, sub_100011B7C);
    sub_100011BD0(&qword_100026EC0, &qword_100026E98, &qword_10001A450, sub_100011C80);
    _ConditionalContent<>.init(storage:)();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  *(v23 + 24) = v33;
  *(v23 + 32) = v31 & 1;
  *(v23 + 40) = v11;
  v37 = v49;
  *v38 = *v50;
  *&v38[9] = *&v50[9];
  *(v40 + 9) = *&v50[9];
  v39[2] = v49;
  v40[0] = *v50;
  v24 = v48;
  v35 = v47;
  v36 = v48;
  v39[0] = v47;
  v39[1] = v48;
  *&v44[9] = *&v50[9];
  v43 = v49;
  *v44 = *v50;
  v41 = v47;
  v42 = v48;
  v25 = v47;
  v26 = v49;
  v27 = *&v44[16];
  *(a5 + 48) = *v50;
  *(a5 + 64) = v27;
  *(a5 + 16) = v24;
  *(a5 + 32) = v26;
  *a5 = v25;
  *(a5 + 80) = sub_100011D20;
  *(a5 + 88) = v23;
  sub_100011D38();

  sub_10000DE80(v39, v45, &qword_100026ED0, &qword_10001A460);
  v45[2] = v37;
  v46[0] = *v38;
  *(v46 + 9) = *&v38[9];
  v45[0] = v35;
  v45[1] = v36;
  return sub_100005EC4(v45, &qword_100026ED0, &qword_10001A460);
}

uint64_t sub_100011874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v18 = a5;
  v11 = type metadata accessor for GeometryProxy();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v17 = static Color.clear.getter();
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4 & 1;
  *(v15 + 40) = v18;
  (*(v12 + 32))(v15 + v14, &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *a6 = v17;
  a6[1] = sub_100011E58;
  a6[2] = v15;
  a6[3] = 0;
  a6[4] = 0;
  sub_100011D38();
}

uint64_t sub_1000119FC()
{
  GeometryProxy.size.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100011A84@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = static Alignment.center.getter();
  v9 = v8;
  sub_100011258(v3, v4, v5, v6, &v15);
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v21 = v15;
  v22 = v16;
  v27[2] = v17;
  v27[3] = v18;
  v27[4] = v19;
  v27[5] = v20;
  v27[0] = v15;
  v27[1] = v16;
  sub_10000DE80(&v21, v14, &qword_100026E80, &qword_10001A3F8);
  sub_100005EC4(v27, &qword_100026E80, &qword_10001A3F8);
  *a1 = v7;
  *(a1 + 8) = v9;
  v10 = v24;
  *(a1 + 48) = v23;
  *(a1 + 64) = v10;
  v11 = v26;
  *(a1 + 80) = v25;
  *(a1 + 96) = v11;
  result = *&v21;
  v13 = v22;
  *(a1 + 16) = v21;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_100011B7C()
{
  result = qword_100026EA8;
  if (!qword_100026EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026EA8);
  }

  return result;
}

uint64_t sub_100011BD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    a4();
    sub_100006174(&qword_100026EB0, &qword_100026EB8, &qword_10001A458);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011C80()
{
  result = qword_100026EC8;
  if (!qword_100026EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026EC8);
  }

  return result;
}

uint64_t sub_100011CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_100011D18();
  v4 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011D88()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  sub_100011D18();
  v9 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011E58()
{
  v1 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return sub_1000119FC();
}

uint64_t sub_100011F18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100011F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100011FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Image.init(systemName:)();
  v5 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v7 = KeyPath;
    v8 = *(a1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    v45 = v5;
    v46 = v4;
    v44 = v7;
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = sub_100006344();
        v10 = type metadata accessor for ClusterMetrics();
        v11 = v10;
        v12 = &off_100021580;
      }

      else
      {
        v9 = sub_100006378();
        v10 = type metadata accessor for WidgetMetrics();
        v11 = v10;
        v12 = &off_100021520;
      }
    }

    else
    {
      v9 = sub_100006310();
      v10 = type metadata accessor for ConsoleMetrics();
      v11 = v10;
      v12 = &off_1000215E0;
    }

    v48 = v10;
    v49 = v12;
    v47[0] = v9;
    sub_100005A4C(v47, v11);
    v43 = (v12[2])();
    v42 = swift_getKeyPath();
    sub_100005AA0(v47);
    v13 = [objc_opt_self() mainBundle];
    v50._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0x524148435F544F4ELL;
    v14._object = 0xEC000000474E4947;
    v15.value._countAndFlagsBits = 0x656772616843;
    v15.value._object = 0xE600000000000000;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v50._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v50);

    v17 = String.init(format:_:)();
    v19 = v18;

    v47[0] = v17;
    v47[1] = v19;
    sub_1000059F8();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    static Color.secondary.getter();
    v25 = Text.foregroundColor(_:)();
    v27 = v26;
    v29 = v28;

    sub_100005A90(v20, v22, v24 & 1);

    if (*(a1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode))
    {
      if (*(a1 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode) == 1)
      {
        v30 = sub_100006344();
        v31 = type metadata accessor for ClusterMetrics();
        v32 = v31;
        v33 = &off_100021580;
      }

      else
      {
        v30 = sub_100006378();
        v31 = type metadata accessor for WidgetMetrics();
        v32 = v31;
        v33 = &off_100021520;
      }
    }

    else
    {
      v30 = sub_100006310();
      v31 = type metadata accessor for ConsoleMetrics();
      v32 = v31;
      v33 = &off_1000215E0;
    }

    v48 = v31;
    v49 = v33;

    v47[0] = v30;
    sub_100005A4C(v47, v32);
    (v33[1])();
    v34 = Text.font(_:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_100005A90(v25, v27, v29 & 1);

    sub_100005AA0(v47);
    *a2 = v46;
    *(a2 + 8) = v44;
    *(a2 + 16) = v45;
    *(a2 + 24) = v42;
    *(a2 + 32) = v43;
    *(a2 + 40) = v34;
    *(a2 + 48) = v36;
    *(a2 + 56) = v38 & 1;
    *(a2 + 64) = v40;

    sub_10000E198(v34, v36, v38 & 1);

    sub_100005A90(v34, v36, v38 & 1);
  }

  else
  {
    type metadata accessor for LayoutConfiguration();
    sub_100012640();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10001245C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = static HorizontalAlignment.center.getter();
  v17 = 1;
  sub_100011FF0(v3, &v11);
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v18 = v11;
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  v24 = v15;
  v23[0] = v11;
  sub_100012560(&v18, v10);
  sub_1000125D0(v23);
  *&v16[7] = v18;
  *&v16[71] = v22;
  *&v16[55] = v21;
  *&v16[39] = v20;
  *&v16[23] = v19;
  v6 = *v16;
  *(a1 + 33) = *&v16[16];
  v7 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v7;
  result = *&v16[63];
  *(a1 + 80) = *&v16[63];
  v9 = v17;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_100012560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005790(&qword_100026EE8, &qword_10001A540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000125D0(uint64_t a1)
{
  v2 = sub_100005790(&qword_100026EE8, &qword_10001A540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100012640()
{
  result = qword_100026120;
  if (!qword_100026120)
  {
    type metadata accessor for LayoutConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026120);
  }

  return result;
}

unint64_t sub_1000126A4()
{
  result = qword_100026EF0;
  if (!qword_100026EF0)
  {
    sub_1000028A8(&qword_100026EF8, &qword_10001A5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026EF0);
  }

  return result;
}

__n128 sub_100012708(uint64_t a1, uint64_t a2)
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

uint64_t sub_100012724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001276C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000127E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100005790(&qword_100026F08, &qword_10001A670);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v45 - v6;
  v8 = a1[5];
  v57[0] = a1[4];
  v57[1] = v8;
  sub_1000059F8();

  v9 = Text.init<A>(_:)();
  v12 = *a1;
  if (*a1)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = *(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);
    v17 = *a1;

    v51 = a2;
    v46 = v7;
    if (v16)
    {
      if (v16 == 1)
      {
        v18 = sub_100006344();
        v19 = type metadata accessor for ClusterMetrics();
        v20 = v19;
        v21 = &off_100021580;
      }

      else
      {
        v18 = sub_100006378();
        v19 = type metadata accessor for WidgetMetrics();
        v20 = v19;
        v21 = &off_100021520;
      }
    }

    else
    {
      v18 = sub_100006310();
      v19 = type metadata accessor for ConsoleMetrics();
      v20 = v19;
      v21 = &off_1000215E0;
    }

    v58[3] = v19;
    v58[4] = v21;
    v58[0] = v18;
    sub_100005A4C(v58, v20);
    (v21[1])();
    v22 = Text.font(_:)();
    v48 = v23;
    v49 = v22;
    v25 = v24;
    v50 = v26;
    sub_100005A90(v13, v14, v15 & 1);

    sub_100005AA0(v58);
    v27 = static Edge.Set.top.getter();
    v47 = v25 & 1;
    v62 = v25 & 1;
    v59 = 1;
    v28 = *(v12 + OBJC_IVAR____TtC6Charge19LayoutConfiguration_presentationMode);

    if (v28 == 2)
    {
      v29 = Image.init(systemName:)();
      v30 = type metadata accessor for Font.Design();
      v31 = v46;
      (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
      v32 = static Font.system(size:weight:design:)();
      sub_100005EC4(v31, &qword_100026F08, &qword_10001A670);
      KeyPath = swift_getKeyPath();
      v34 = static Edge.Set.all.getter();
      LOBYTE(v57[0]) = 1;
      *&v56[0] = v29;
      *(&v56[0] + 1) = KeyPath;
      *&v56[1] = v32;
      BYTE8(v56[1]) = v34;
      memset(&v56[2], 0, 32);
      LOBYTE(v56[4]) = 1;
      sub_100013644(v56);
    }

    else
    {
      v35 = static HorizontalAlignment.center.getter();
      v54[0] = 1;
      v36 = static Alignment.center.getter();
      v38 = v37;
      sub_100012DD4(a1, v57);
      memcpy(v55, v57, sizeof(v55));
      memcpy(v52, v57, 0x118uLL);
      sub_10000DE80(v55, v56, &qword_100026F10, &qword_10001A678);
      sub_100005EC4(v52, &qword_100026F10, &qword_10001A678);
      memcpy(&v56[2] + 8, v55, 0x118uLL);
      v56[0] = v35;
      LOBYTE(v56[1]) = v54[0];
      *(&v56[1] + 1) = v36;
      *&v56[2] = v38;
      sub_1000134FC(v56);
    }

    memcpy(v54, v56, 0x141uLL);
    sub_100005790(&qword_100026F18, &qword_10001A680);
    sub_100005790(&qword_100026F20, &qword_10001A688);
    sub_100013508();
    sub_100006174(&qword_100026F30, &qword_100026F20, &qword_10001A688);
    _ConditionalContent<>.init(storage:)();
    memcpy(v56, v57, 0x141uLL);
    v40 = v48;
    v39 = v49;
    *v55 = v49;
    *&v55[8] = v48;
    v41 = v47;
    v55[16] = v47;
    *&v55[17] = *v61;
    *&v55[20] = *&v61[3];
    v42 = v50;
    *&v55[24] = v50;
    v55[32] = v27;
    *&v55[33] = *v60;
    *&v55[36] = *&v60[3];
    memset(&v55[40], 0, 32);
    LODWORD(v46) = v27;
    v55[72] = 1;
    *&v53[32] = *&v55[32];
    *&v53[48] = *&v55[48];
    *&v53[57] = *&v55[57];
    *v53 = *v55;
    *&v53[16] = *&v55[16];
    memcpy(v54, v57, 0x141uLL);
    memcpy(&v53[80], v57, 0x141uLL);
    memcpy(v51, v53, 0x191uLL);
    sub_10000DE80(v55, v52, &qword_100026720, &qword_10001A690);
    sub_10000DE80(v54, v52, &qword_100026F38, &qword_10001A698);
    sub_100005EC4(v56, &qword_100026F38, &qword_10001A698);
    v52[0] = v39;
    v52[1] = v40;
    LOBYTE(v52[2]) = v41;
    *(&v52[2] + 1) = *v61;
    HIDWORD(v52[2]) = *&v61[3];
    v52[3] = v42;
    LOBYTE(v52[4]) = v46;
    *(&v52[4] + 1) = *v60;
    HIDWORD(v52[4]) = *&v60[3];
    memset(&v52[5], 0, 32);
    LOBYTE(v52[9]) = 1;
    return sub_100005EC4(v52, &qword_100026720, &qword_10001A690);
  }

  else
  {
    v44 = a1[1];
    type metadata accessor for LayoutConfiguration();
    sub_100012640();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100012DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v8 = v75;
  v29 = v76;
  v26 = v77;
  v9 = v78;
  v30 = v79;
  v10 = v80;
  (*(v4 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v3);
  v11 = Color.init(_:red:green:blue:opacity:)();
  v27 = v11;
  v12 = *(a1 + 48);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v74[6] = v81;
  *&v74[22] = v82;
  *&v74[38] = v83;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v13 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60[0] = *(a1 + 16);
  sub_100005790(&qword_100026F40, &qword_10001A700);
  State.wrappedValue.getter();
  if (LOBYTE(v53[0]))
  {
    v14 = -6.28318531;
  }

  else
  {
    v14 = 0.0;
  }

  static UnitPoint.center.getter();
  v16 = v15;
  v18 = v17;
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = *(a1 + 48);
  *&v49 = v8;
  *(&v49 + 1) = __PAIR64__(v26, v29);
  v21 = v26;
  *&v50 = v9;
  *(&v50 + 1) = v30;
  *&v51 = v10;
  *(&v51 + 1) = v11;
  *v52 = 256;
  *&v52[2] = *v74;
  *&v52[18] = *&v74[16];
  *&v52[34] = *&v74[32];
  *&v52[48] = *&v74[46];
  v42[0] = v49;
  v42[1] = v50;
  v42[2] = v51;
  v42[3] = *v52;
  v42[4] = *&v52[16];
  v42[5] = *&v52[32];
  *&v42[6] = *&v74[46];
  v24 = xmmword_10001A5C0;
  v53[1] = v46;
  v53[2] = v47;
  v53[0] = xmmword_10001A5C0;
  *&v54 = v48;
  v22 = KeyPath;
  *(&v54 + 1) = KeyPath;
  *&v55[0] = v13;
  *(&v55[1] + 8) = v44;
  *(&v55[2] + 8) = v45;
  *(v55 + 8) = v43;
  *(&v55[3] + 1) = v14;
  *&v56 = v16;
  *(&v56 + 1) = v18;
  *&v57 = sub_100013744;
  *(&v57 + 1) = v19;
  v59 = 0;
  v58 = 0;
  *(&v42[16] + 8) = 0u;
  *(&v42[8] + 8) = v47;
  *(&v42[7] + 8) = v46;
  *(&v42[6] + 8) = xmmword_10001A5C0;
  *(&v42[12] + 8) = v55[2];
  *(&v42[11] + 8) = v55[1];
  *(&v42[10] + 8) = v55[0];
  *(&v42[9] + 8) = v54;
  *(&v42[15] + 8) = v57;
  *(&v42[14] + 8) = v56;
  *(&v42[13] + 8) = v55[3];
  memcpy(v28, v42, 0x118uLL);
  v60[0] = v24;
  v60[1] = v46;
  v60[2] = v47;
  v64 = v43;
  v61 = v48;
  v62 = v22;
  v63 = v13;
  v65 = v44;
  v66 = v45;
  v67 = v14;
  v68 = v16;
  v69 = v18;
  v70 = sub_100013744;
  v71 = v19;
  v73 = 0;
  v72 = 0;
  sub_10001374C(a1, &v31);
  sub_10000DE80(&v49, &v31, &qword_100026F48, &qword_10001A708);
  sub_10000DE80(v53, &v31, &qword_100026F50, &qword_10001A710);
  sub_100005EC4(v60, &qword_100026F50, &qword_10001A710);
  v31 = v8;
  v32 = v29;
  v33 = v21;
  v34 = v9;
  v35 = v30;
  v36 = v10;
  v37 = v27;
  v38 = 256;
  v39 = *v74;
  v40 = *&v74[16];
  v41[0] = *&v74[32];
  *(v41 + 14) = *&v74[46];
  return sub_100005EC4(&v31, &qword_100026F48, &qword_10001A708);
}

uint64_t sub_1000132A4()
{
  static Animation.linear(duration:)();
  Animation.repeatForever(autoreverses:)();

  withAnimation<A>(_:_:)();
}

uint64_t sub_100013334(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_10000DE80(&v4, v2, &qword_100026F58, &qword_10001A718);
  sub_100005790(&qword_100026F40, &qword_10001A700);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_100005EC4(&v3, &qword_100026F40, &qword_10001A700);
}

void *sub_100013408@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v11[2] = *(v1 + 32);
  v12 = *(v1 + 48);
  v4 = static HorizontalAlignment.center.getter();
  v10 = 1;
  sub_1000127E4(v11, __src);
  memcpy(__dst, __src, 0x191uLL);
  memcpy(v14, __src, 0x191uLL);
  sub_10000DE80(__dst, &v7, &qword_100026F00, &qword_10001A668);
  sub_100005EC4(v14, &qword_100026F00, &qword_10001A668);
  memcpy(&v9[7], __dst, 0x191uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x198uLL);
}

unint64_t sub_100013508()
{
  result = qword_100026F28;
  if (!qword_100026F28)
  {
    sub_1000028A8(&qword_100026F18, &qword_10001A680);
    sub_10000E268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026F28);
  }

  return result;
}

uint64_t sub_100013594@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000135C0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000135EC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100013618(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10001364C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100013678@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000136A4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_1000136D0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_1000136FC()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000137E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100013858()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_1000138CC(void *a1)
{
  v3 = sub_100005790(&qword_100027348, &qword_10001A868);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = sub_100005790(&qword_100027340, &qword_10001A860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtC6Charge11ChargeModel__isCharging;
  LOBYTE(v26) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v1[v13], v12, v8);
  v14 = OBJC_IVAR____TtC6Charge11ChargeModel__supplementaryStatusText;
  v26 = 0;
  v27 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v14], v7, v3);
  v1[OBJC_IVAR____TtC6Charge11ChargeModel_hasEmittedFinalizedSignpost] = 0;
  sub_100007718(0xD00000000000001BLL, 0x8000000100017BE0, 0xD000000000000014, 0x8000000100017C00, 19);
  v15 = &v1[OBJC_IVAR____TtC6Charge11ChargeModel__carObservable];
  swift_beginAccess();
  type metadata accessor for CAFCarObservable();
  sub_100015338();
  v16 = a1;
  *v15 = ObservedObject.init(wrappedValue:)();
  v15[1] = v17;
  swift_endAccess();
  v18 = type metadata accessor for ChargeModel();
  v25.receiver = v1;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, "init");
  v20 = CAFCarObservable.observed.getter();
  [v20 registerObserver:v19];

  v21 = CAFCarObservable.observed.getter();
  v22 = [v21 dimensionManager];

  [v22 registerObserver:v19];
  sub_100013D10();

  return v19;
}

void sub_100013D10()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC6Charge11ChargeModel__carObservable;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = dispatch thunk of CAFCarObservable.charging.getter();

  if (v4)
  {
    sub_1000077DC(0xD000000000000023, 0x8000000100017AC0, 0xD000000000000011, 0x8000000100017AA0, 74);
    v5 = [v4 chargingStatus];
    [v5 registerObserver:v1];

    v6 = [v4 chargingTime];
    if (v6)
    {
      v7 = v6;
      [v6 registerObserver:v1];
    }

    v8 = [v4 chargingRate];
    if (v8)
    {
      v9 = v8;
      [v8 registerObserver:v1];
    }
  }

  v10 = *(v2 + 8);
  v11 = dispatch thunk of CAFCarObservable.tripComputer.getter();

  if (v11 && (v12 = [v11 remainingRange], v11, v12))
  {
    sub_1000077DC(0xD00000000000002ALL, 0x8000000100017A70, 0xD000000000000011, 0x8000000100017AA0, 83);
    [v12 registerObserver:v1];
  }

  else if (!v4)
  {
    return;
  }

  sub_1000077DC(0x5D4547524148435BLL, 0xE800000000000000, 0x2928657461647075, 0xE800000000000000, 95);
  sub_1000144C8();
  sub_100014618();
}

uint64_t sub_100013F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100005790(&qword_100027328, &qword_10001A858);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  if (a4)
  {
    sub_100005F24(0, &qword_1000272F0, NSUnitLength_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = sub_100005790(&qword_1000272E0, &qword_10001A7A8);
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_100005790(&qword_1000272E0, &qword_10001A7A8);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  return sub_100005EC4(v8, &qword_100027328, &qword_10001A858);
}

uint64_t sub_1000140FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, uint64_t *a8)
{
  v10 = sub_100005790(a5, a6);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  sub_100005F24(0, a7, a8);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100014370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, uint64_t *a8)
{
  v11 = sub_100005790(a5, a6);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - v14;
  sub_100005F24(0, a7, a8);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a1;
  sub_100014618();

  return (*(v12 + 8))(v15, v11);
}

void sub_1000144C8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC6Charge11ChargeModel__carObservable];
  swift_beginAccess();
  v3 = v2[1];
  v4 = dispatch thunk of CAFCarObservable.charging.getter();

  if (v4)
  {
    v5 = [v4 chargingStatus];

    if (v5)
    {
      v6 = [v5 chargingState];
      if (v6 == 6 || v6 == 7)
      {
        [v5 cableState];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v8 = v1;
      static Published.subscript.setter();
    }
  }

  sub_100014C50();
}

void sub_100014C50()
{
  v1 = OBJC_IVAR____TtC6Charge11ChargeModel_hasEmittedFinalizedSignpost;
  if (*(v0 + OBJC_IVAR____TtC6Charge11ChargeModel_hasEmittedFinalizedSignpost))
  {
    return;
  }

  v2 = v0;
  v3 = v0 + OBJC_IVAR____TtC6Charge11ChargeModel__carObservable;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = CAFCarObservable.observed.getter();

  v6 = [v5 charging];
  if (!v6)
  {
LABEL_8:
    sub_100007718(0xD000000000000020, 0x80000001000179F0, 0xD000000000000017, 0x8000000100017A20, 220);
    return;
  }

  if (![v6 receivedAllValues])
  {

    goto LABEL_8;
  }

  v7 = *(v3 + 8);
  v8 = CAFCarObservable.observed.getter();

  v9 = [v8 highVoltageBattery];
  if (v9)
  {
    if ([v9 receivedAllValues])
    {
      v10 = *(v3 + 8);
      v11 = CAFCarObservable.observed.getter();

      CAFSignpostEmit_Finalized();
      *(v2 + v1) = 1;
      return;
    }
  }

  sub_100007718(0xD00000000000002ALL, 0x8000000100017A40, 0xD000000000000017, 0x8000000100017A20, 225);
}

id sub_100014E4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChargeModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ChargeModel()
{
  result = qword_1000272C0;
  if (!qword_1000272C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014FB0()
{
  sub_1000150AC(319, &qword_1000272D0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000150AC(319, &qword_1000272D8);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000150AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000150F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChargeModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100015138@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000151B8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100015228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000152A8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return static Published.subscript.setter();
}

unint64_t sub_100015338()
{
  result = qword_100027350;
  if (!qword_100027350)
  {
    type metadata accessor for CAFCarObservable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027350);
  }

  return result;
}

id ConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id ConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

Swift::Int sub_1000155D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001564C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100015690@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100015B34(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ConfigurationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *ConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id ConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id ConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100015AFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100015B34(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100015B6C()
{
  result = qword_100027428;
  if (!qword_100027428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100027428);
  }

  return result;
}

uint64_t sub_100015BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100015C18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}