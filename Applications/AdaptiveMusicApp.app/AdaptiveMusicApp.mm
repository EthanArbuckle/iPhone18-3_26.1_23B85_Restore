uint64_t Player.PlaybackStatus.playbackItemInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Player.PlaybackStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Player.PlaybackStatus.loading(_:) || v12 == enum case for Player.PlaybackStatus.paused(_:) || v12 == enum case for Player.PlaybackStatus.playing(_:))
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    PlaybackInfo.playbackItemInfo.getter();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
    (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100001D30(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for Player.PlaybackStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003344(&qword_10002C710);
  __chkstk_darwin();
  v7 = &v12 - v6;
  Player.playbackStatus.getter();
  Player.PlaybackStatus.playbackItemInfo.getter(v7);
  (*(v3 + 8))(v5, v2);
  v8 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100003750(v7, &qword_10002C710);
    return 0;
  }

  else
  {
    v11 = a1();
    (*(v9 + 8))(v7, v8);
    return v11;
  }
}

uint64_t sub_100001F3C(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for Player.PlaybackStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003344(&qword_10002C710);
  __chkstk_darwin();
  v7 = &v12 - v6;
  Player.playbackStatus.getter();
  Player.PlaybackStatus.playbackItemInfo.getter(v7);
  (*(v3 + 8))(v5, v2);
  v8 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100003750(v7, &qword_10002C710);
    return static Duration.zero.getter();
  }

  else
  {
    v11 = a1();
    (*(v9 + 8))(v7, v8);
    return v11;
  }
}

uint64_t sub_100002114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000021AC, v6, v5);
}

uint64_t sub_1000021AC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100002244;

  return Player.previous()();
}

uint64_t sub_100002244()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000037BC;
  }

  else
  {
    v5 = sub_1000037C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100002380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003344(&qword_10002C708);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_100003444(a3, v21 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_100003750(v9, &qword_10002C708);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_100003750(a3, &qword_10002C708);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003750(a3, &qword_10002C708);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10000261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000026B4, v6, v5);
}

uint64_t sub_1000026B4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10000274C;

  return Player.next()();
}

uint64_t sub_10000274C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000028EC;
  }

  else
  {
    v5 = sub_100002888;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100002888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000028EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000029E8, v6, v5);
}

uint64_t sub_1000029E8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100002244;

  return Player.resume()();
}

uint64_t sub_100002A80()
{

  v1 = OBJC_IVAR____TtC16AdaptiveMusicApp15PlayerViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayerViewModel()
{
  result = qword_10002C5D8;
  if (!qword_10002C5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002B78()
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

__n128 initializeBufferWithCopyOfBuffer for GrowingCapsule(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GrowingCapsule(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GrowingCapsule(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_10002C6F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10002C6F8);
    }
  }
}

BOOL sub_100002D50()
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Player.playbackStatus.getter();
  v4 = (*(v1 + 88))(v3, v0);
  v6 = v4 == enum case for Player.PlaybackStatus.loading(_:) || v4 == enum case for Player.PlaybackStatus.playing(_:);
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_100002EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003344(&qword_10002C708);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = *v4;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  sub_100002380(0, 0, v7, a4, v11);
}

uint64_t sub_100003004(double a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  type metadata accessor for MainActor();
  *(v2 + 32) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1000030A4, v4, v3);
}

uint64_t sub_1000030A4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100003140;
  v2.n128_u64[0] = *(v0 + 16);

  return Player.seek(to:)(v2);
}

uint64_t sub_100003140()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000037C4;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100003264;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100003264()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000032C4(uint64_t a1)
{
  result = sub_1000032EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000032EC()
{
  result = qword_10002C700;
  if (!qword_10002C700)
  {
    type metadata accessor for PlayerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C700);
  }

  return result;
}

uint64_t sub_100003344(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000037B8;

  return sub_100002950(a1, v4, v5, v6);
}

uint64_t sub_100003444(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002C708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000034B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003568;

  return sub_10000261C(a1, v4, v5, v6);
}

uint64_t sub_100003568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000365C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000369C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000037B8;

  return sub_100002114(a1, v4, v5, v6);
}

uint64_t sub_100003750(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003344(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000037DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003344(&qword_10002C718);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000038B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003344(&qword_10002C718);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PlayerBackgroundView()
{
  result = qword_10002C778;
  if (!qword_10002C778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000039C8()
{
  sub_100003ACC(319, &qword_10002C788, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkViewModel();
    if (v1 <= 0x3F)
    {
      sub_100003ACC(319, &unk_10002C790, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100003ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100003B4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003344(&qword_10002C7D0);
  __chkstk_darwin();
  v9 = &v13 - v8;
  sub_100004F5C(v2, &v13 - v8, &qword_10002C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100003D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v69 = sub_100003344(&qword_10002C7F0);
  v3 = (__chkstk_darwin)();
  v70 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v55 - v6;
  __chkstk_darwin(v5);
  v78 = &v55 - v8;
  v9 = type metadata accessor for BlendMode();
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v64 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100003344(&qword_10002C7F8);
  v11 = __chkstk_darwin(v63);
  v77 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v62 = &v55 - v14;
  __chkstk_darwin(v13);
  v76 = &v55 - v15;
  v16 = type metadata accessor for ColorScheme();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v55 - v21;
  v68 = static VerticalAlignment.center.getter();
  sub_1000046D8(a1, &v88);
  v74 = *(&v88 + 1);
  v75 = v88;
  v73 = v89;
  v79 = BYTE2(v89);
  sub_100003B4C(v22);
  v23 = *(v17 + 104);
  v61 = enum case for ColorScheme.light(_:);
  v59 = v23;
  v60 = v17 + 104;
  v23(v20);
  v24 = static ColorScheme.== infix(_:_:)();
  v25 = *(v17 + 8);
  v25(v20, v16);
  v58 = v25;
  v25(v22, v16);
  sub_100003344(&qword_10002C800);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100021B80;
  type metadata accessor for PlayerBackgroundView();
  v67 = a1;
  Color.opacity(_:)();
  *(v26 + 32) = Gradient.Stop.init(color:location:)();
  *(v26 + 40) = v27;
  Color.opacity(_:)();
  *(v26 + 48) = Gradient.Stop.init(color:location:)();
  *(v26 + 56) = v28;
  Color.opacity(_:)();
  *(v26 + 64) = Gradient.Stop.init(color:location:)();
  *(v26 + 72) = v29;
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v81 = v85;
  v82 = v86;
  v83 = v87;
  v84 = (v24 & 1) == 0;
  sub_100004E90();
  _ConditionalContent<>.init(storage:)();
  v71 = v88;
  v72 = v89;
  v57 = v90;
  v56 = BYTE8(v90);
  v30 = [objc_opt_self() systemBackgroundColor];
  v31 = Color.init(_:)();
  sub_100003B4C(v22);
  v59(v20, v61, v16);
  v32 = static ColorScheme.== infix(_:_:)();
  v33 = v20;
  v34 = v58;
  v58(v33, v16);
  v34(v22, v16);
  v36 = v64;
  v35 = v65;
  v37 = &enum case for BlendMode.plusLighter(_:);
  if ((v32 & 1) == 0)
  {
    v37 = &enum case for BlendMode.plusDarker(_:);
  }

  v38 = v66;
  (*(v65 + 104))(v64, *v37, v66);
  v39 = v62;
  (*(v35 + 32))(&v62[*(v63 + 36)], v36, v38);
  *v39 = v31;
  *(v39 + 8) = 256;
  *(v39 + 16) = 0x3FC3333333333333;
  v40 = v76;
  sub_100004EE4(v39, v76, &qword_10002C7F8);
  v41 = static HorizontalAlignment.center.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v80[55] = v91;
  *&v80[71] = v92;
  *&v80[87] = v93;
  *&v80[103] = v94;
  *&v80[7] = v88;
  *&v80[23] = v89;
  LOBYTE(v81) = 1;
  v42 = &v7[*(v69 + 36)];
  *&v80[39] = v90;
  static Material.thin.getter();
  v43 = static Edge.Set.all.getter();
  v42[*(sub_100003344(&qword_10002C810) + 36)] = v43;
  v44 = *&v80[32];
  *(v7 + 65) = *&v80[48];
  *(v7 + 49) = v44;
  v45 = *v80;
  *(v7 + 33) = *&v80[16];
  *(v7 + 17) = v45;
  *(v7 + 16) = *&v80[111];
  *(v7 + 113) = *&v80[96];
  v46 = *&v80[64];
  *(v7 + 97) = *&v80[80];
  *v7 = v41;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v7 + 81) = v46;
  v47 = v78;
  sub_100004EE4(v7, v78, &qword_10002C7F0);
  v48 = v77;
  sub_100004F5C(v40, v77, &qword_10002C7F8);
  v49 = v70;
  sub_100004F5C(v47, v70, &qword_10002C7F0);
  v50 = v55;
  *v55 = v68;
  v50[1] = 0;
  *(v50 + 16) = 1;
  v51 = v74;
  v50[3] = v75;
  v50[4] = v51;
  *(v50 + 20) = v73;
  *(v50 + 42) = v79;
  v52 = v72;
  *(v50 + 3) = v71;
  *(v50 + 4) = v52;
  v50[10] = v57;
  *(v50 + 88) = v56;
  v53 = sub_100003344(&qword_10002C818);
  sub_100004F5C(v48, v50 + *(v53 + 64), &qword_10002C7F8);
  sub_100004F5C(v49, v50 + *(v53 + 80), &qword_10002C7F0);
  j__swift_retain();
  j__swift_bridgeObjectRetain();
  sub_100003750(v78, &qword_10002C7F0);
  sub_100003750(v76, &qword_10002C7F8);
  sub_100003750(v49, &qword_10002C7F0);
  sub_100003750(v77, &qword_10002C7F8);
  j__swift_bridgeObjectRelease();
  return j__swift_release();
}

double sub_1000046D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for PlayerBackgroundView() + 20));
  swift_getKeyPath();
  *&v19 = v8;
  sub_100004FCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + 16))
  {
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);

    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v15 = v9;
    v16 = 0;
    v17 = 257;
    v18 = 0;

    sub_100003344(&qword_10002C828);
    sub_100003344(&qword_10002C830);
    sub_100005024();
    sub_100005264(&qword_10002C840, &qword_10002C830);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v10 = [objc_opt_self() systemLightGrayColor];
    v15 = Color.init(_:)();
    v16 = 256;
    v17 = 0;
    v18 = 1;
    sub_100003344(&qword_10002C828);
    sub_100003344(&qword_10002C830);
    sub_100005024();
    sub_100005264(&qword_10002C840, &qword_10002C830);
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v19;
  v12 = v20;
  v13 = v21;
  *a2 = v19;
  *(a2 + 16) = v12;
  *(a2 + 18) = v13;
  return result;
}

uint64_t sub_1000049D4@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100004A00()
{
  type metadata accessor for PlayerBackgroundView();
  sub_100003344(&qword_10002C7E8);
  return State.wrappedValue.setter();
}

uint64_t sub_100004AA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_100003344(&qword_10002C7C8);
  sub_100003D4C(v2, (a2 + *(v7 + 44)));
  sub_100004C1C(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_100004DBC(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (a2 + *(sub_100003344(&qword_10002C7D8) + 36));
  *v10 = sub_1000049D4;
  v10[1] = 0;
  v10[2] = sub_100004E20;
  v10[3] = v9;
  v11 = static SafeAreaRegions.all.getter();
  LOBYTE(v8) = static Edge.Set.all.getter();
  result = sub_100003344(&qword_10002C7E0);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  v13[8] = v8;
  return result;
}

uint64_t sub_100004C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerBackgroundView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004C80()
{
  v1 = *(type metadata accessor for PlayerBackgroundView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003344(&qword_10002C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100004DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerBackgroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004E20()
{
  type metadata accessor for PlayerBackgroundView();

  return sub_100004A00();
}

unint64_t sub_100004E90()
{
  result = qword_10002C808;
  if (!qword_10002C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C808);
  }

  return result;
}

uint64_t sub_100004EE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100003344(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100004F5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100003344(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100004FCC()
{
  result = qword_10002C820;
  if (!qword_10002C820)
  {
    type metadata accessor for ArtworkViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C820);
  }

  return result;
}

unint64_t sub_100005024()
{
  result = qword_10002C838;
  if (!qword_10002C838)
  {
    sub_1000050A8(&qword_10002C828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C838);
  }

  return result;
}

uint64_t sub_1000050A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000050F4()
{
  result = qword_10002C848;
  if (!qword_10002C848)
  {
    sub_1000050A8(&qword_10002C7E0);
    sub_100005180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C848);
  }

  return result;
}

unint64_t sub_100005180()
{
  result = qword_10002C850;
  if (!qword_10002C850)
  {
    sub_1000050A8(&qword_10002C7D8);
    sub_100005264(&qword_10002C858, &qword_10002C860);
    sub_100005264(&qword_10002C868, &qword_10002C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C850);
  }

  return result;
}

uint64_t sub_100005264(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000050A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000052AC()
{
  v0 = type metadata accessor for Logger();
  sub_10000531C(v0, qword_10002E470);
  sub_100005380(v0, qword_10002E470);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10000531C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005380(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000053B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(&qword_10002C7D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004F5C(v2, &v14 - v9, &qword_10002C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000055B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_100003344(&qword_10002C7D0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for PlayerControls();
  v7 = v6[9];
  *(a3 + v7) = swift_getKeyPath();
  sub_100003344(qword_10002C878);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[11];
  State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 1) = v11;
  return (*(*(a2 - 8) + 32))(a3 + v6[10], a1, a2);
}

uint64_t sub_1000056E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = *(a1 - 8);
  v74 = *(v73 + 64);
  __chkstk_darwin(a1);
  v72 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScenePhase();
  v59 = v4;
  v75 = *(v4 - 8);
  __chkstk_darwin(v4);
  v71 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ColorScheme();
  v67 = *(v69 - 8);
  v6 = __chkstk_darwin(v69);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v50 - v8;
  v70 = type metadata accessor for BlendMode();
  v66 = *(v70 - 8);
  __chkstk_darwin(v70);
  v65 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050A8(&qword_10002C910);
  v68 = a1;
  v10 = *(a1 + 24);
  v51 = *(a1 + 16);
  v11 = v51;
  v50 = v10;
  type metadata accessor for PlaybackProgressView();
  sub_1000050A8(&qword_10002C918);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C920);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C928);
  sub_1000050A8(&qword_10002C930);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v63 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  type metadata accessor for _BlendModeEffect();
  v15 = type metadata accessor for ModifiedContent();
  v64 = *(v15 - 8);
  __chkstk_darwin(v15);
  v54 = &v50 - v16;
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  v86 = &protocol witness table for _BlendModeEffect;
  v17 = swift_getWitnessTable();
  v58 = v17;
  v57 = sub_1000098EC(&qword_10002C938, &type metadata accessor for ScenePhase);
  v81 = v15;
  v82 = v4;
  v83 = v17;
  v84 = v57;
  v61 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v52 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = &v50 - v21;
  v78 = v11;
  v79 = v10;
  v80 = v77;
  static HorizontalAlignment.center.getter();
  v22 = v14;
  VStack.init(alignment:spacing:content:)();
  v23 = v60;
  sub_1000053B8(v60);
  v24 = v67;
  v25 = v55;
  v26 = v69;
  (*(v67 + 104))(v55, enum case for ColorScheme.light(_:), v69);
  v27 = static ColorScheme.== infix(_:_:)();
  v28 = *(v24 + 8);
  v28(v25, v26);
  v28(v23, v26);
  v29 = v66;
  v30 = &enum case for BlendMode.plusDarker(_:);
  if ((v27 & 1) == 0)
  {
    v30 = &enum case for BlendMode.plusLighter(_:);
  }

  v31 = v65;
  v32 = v70;
  (*(v66 + 104))(v65, *v30, v70);
  v33 = v54;
  View.blendMode(_:)();
  (*(v29 + 8))(v31, v32);
  (*(v63 + 8))(v22, v12);
  v34 = v68;
  v35 = v77;
  v36 = v71;
  sub_100008658(v71);
  v38 = v72;
  v37 = v73;
  (*(v73 + 16))(v72, v35, v34);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v50;
  *(v40 + 16) = v51;
  *(v40 + 24) = v41;
  (*(v37 + 32))(v40 + v39, v38, v34);
  v42 = v52;
  v43 = v59;
  v44 = v58;
  v45 = v57;
  View.onChange<A>(of:initial:_:)();

  (*(v75 + 8))(v36, v43);
  (*(v64 + 8))(v33, v15);
  v81 = v15;
  v82 = v43;
  v83 = v44;
  v84 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v56;
  sub_1000178EC(v42, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v48 = *(v62 + 8);
  v48(v42, OpaqueTypeMetadata2);
  sub_1000178EC(v47, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v48)(v47, OpaqueTypeMetadata2);
}

uint64_t sub_1000060A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v4 = a1;
  v45 = a1;
  v56 = a4;
  type metadata accessor for PlaybackProgressView();
  sub_1000050A8(&qword_10002C918);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C920);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C928);
  sub_1000050A8(&qword_10002C930);
  swift_getTupleTypeMetadata3();
  v52 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v45 - v7;
  v8 = type metadata accessor for ModifiedContent();
  v55 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v45 - v12;
  v13 = sub_100003344(&qword_10002C958);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = sub_100003344(&qword_10002C910);
  v47 = v17;
  v18 = __chkstk_darwin(v17);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v45 - v21;
  __chkstk_darwin(v20);
  v46 = &v45 - v23;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = sub_100003344(&qword_10002C960);
  v25 = v49;
  sub_1000067C4(v4, a2, v49, &v16[*(v24 + 44)]);
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = &v16[*(v14 + 44)];
  *v26 = v4;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100004EE4(v16, v22, &qword_10002C958);
  v31 = &v22[*(v17 + 36)];
  v32 = v69;
  *(v31 + 4) = v68;
  *(v31 + 5) = v32;
  *(v31 + 6) = v70;
  v33 = v65;
  *v31 = v64;
  *(v31 + 1) = v33;
  v34 = v67;
  *(v31 + 2) = v66;
  *(v31 + 3) = v34;
  v35 = v22;
  v36 = v46;
  sub_100004EE4(v35, v46, &qword_10002C910);
  v57 = a2;
  v58 = v25;
  v59 = v45;
  static HorizontalAlignment.center.getter();
  v37 = v48;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v44 = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v54 + 8))(v37, v6);
  v63[2] = v44;
  v63[3] = &protocol witness table for _FlexFrameLayout;
  v38 = swift_getWitnessTable();
  v39 = v53;
  sub_1000178EC(v11, v8, v38);
  v40 = v55;
  v41 = *(v55 + 8);
  v41(v11, v8);
  v42 = v50;
  sub_100004F5C(v36, v50, &qword_10002C910);
  v63[0] = v42;
  (*(v40 + 16))(v11, v39, v8);
  v63[1] = v11;
  v62[0] = v47;
  v62[1] = v8;
  v60 = sub_100009110();
  v61 = v38;
  sub_10001290C(v63, 2uLL, v62);
  v41(v39, v8);
  sub_100003750(v36, &qword_10002C910);
  v41(v11, v8);
  return sub_100003750(v42, &qword_10002C910);
}

uint64_t sub_1000067C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v7 = sub_100003344(&qword_10002CA08);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  static MarqueeDefaults.spacing.getter();
  static MarqueeDefaults.rate.getter();
  static MarqueeDefaults.delay.getter();
  static MarqueeDefaults.isAnimating.getter();
  sub_100003344(&qword_10002CA10);
  sub_100009830();
  v35 = 1;
  Marquee.init(spacing:rate:delay:isAnimating:preferredFrameRateRange:content:)();
  v29 = v26;
  v30 = a3;
  v31 = v27;
  static MarqueeDefaults.spacing.getter();
  static MarqueeDefaults.rate.getter();
  static MarqueeDefaults.delay.getter();
  static MarqueeDefaults.isAnimating.getter();
  v35 = 1;
  Marquee.init(spacing:rate:delay:isAnimating:preferredFrameRateRange:content:)();
  v20 = *(v8 + 16);
  v20(v14, v19, v7);
  v20(v11, v17, v7);
  v21 = v28;
  v20(v28, v14, v7);
  v22 = sub_100003344(&qword_10002CA28);
  v20(&v21[*(v22 + 48)], v11, v7);
  v23 = *(v8 + 8);
  v23(v17, v7);
  v23(v19, v7);
  v23(v11, v7);
  return (v23)(v14, v7);
}

uint64_t sub_100006AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlayerControls();
  (*(a3 + 16))(a2, a3);
  sub_100009940();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  LOBYTE(a2) = v8;
  static Font.title3.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_100009994(v5, v7, a2 & 1);

  static Font.Weight.semibold.getter();
  v14 = Text.fontWeight(_:)();
  v16 = v15;
  LOBYTE(a2) = v17;
  sub_100009994(v9, v11, v13 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v18 = Text.foregroundStyle<A>(_:)();
  v20 = v19;
  LOBYTE(v11) = v21;
  sub_100009994(v14, v16, a2 & 1);

  View.accessibilityIdentifier(_:)();
  sub_100009994(v18, v20, v11 & 1);
}

uint64_t sub_100006CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlayerControls();
  (*(a3 + 24))(a2, a3);
  sub_100009940();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  LOBYTE(a2) = v8;
  static Font.title3.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_100009994(v5, v7, a2 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  LOBYTE(v5) = v17;
  sub_100009994(v9, v11, v13 & 1);

  View.accessibilityIdentifier(_:)();
  sub_100009994(v14, v16, v5 & 1);
}

uint64_t sub_100006E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a4;
  v94 = a3;
  v96 = a1;
  v88 = sub_100003344(&qword_10002C988) - 8;
  __chkstk_darwin(v88);
  v87 = (v70 - v5);
  v91 = sub_100003344(&qword_10002C928);
  v6 = __chkstk_darwin(v91);
  v92 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v89 = v70 - v9;
  __chkstk_darwin(v8);
  v90 = v70 - v10;
  v79 = type metadata accessor for LayoutDirection();
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v84 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003344(&qword_10002C990);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = (v70 - v14);
  v16 = *(a2 - 8);
  __chkstk_darwin(v13);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PlaybackProgressView();
  v74 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v70 - v20;
  sub_1000050A8(&qword_10002C918);
  v22 = type metadata accessor for ModifiedContent();
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = v70 - v23;
  v72 = type metadata accessor for ModifiedContent();
  v81 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = v70 - v25;
  v85 = sub_1000050A8(&qword_10002C920);
  v77 = type metadata accessor for ModifiedContent();
  v82 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = v70 - v26;
  v80 = type metadata accessor for ModifiedContent();
  v83 = *(v80 - 8);
  v27 = __chkstk_darwin(v80);
  v75 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = v70 - v29;
  v30 = type metadata accessor for PlayerControls();
  (*(v16 + 16))(v18, v96 + *(v30 + 40), a2);
  v78 = a2;
  sub_100018510(v15);
  sub_100018570(v18, v15, a2, v21);
  static Color.secondary.getter();
  WitnessTable = swift_getWitnessTable();
  View.tint(_:)();

  v74[1](v21, v19);
  static Alignment.center.getter();
  v70[1] = &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>;
  v32 = sub_100005264(&qword_10002C998, &qword_10002C918);
  v102[9] = WitnessTable;
  v102[10] = v32;
  v70[0] = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v33 = swift_getWitnessTable();
  v34 = v71;
  View.frame(width:height:alignment:)();
  (*(v76 + 8))(v24, v22);
  swift_getKeyPath();
  LODWORD(v76) = enum case for LayoutDirection.leftToRight(_:);
  v35 = v86;
  v36 = *(v86 + 104);
  v70[2] = v86 + 104;
  v74 = v36;
  v37 = v84;
  v38 = v79;
  (v36)(v84);
  v102[7] = v33;
  v102[8] = &protocol witness table for _FrameLayout;
  v39 = v72;
  v40 = swift_getWitnessTable();
  v41 = v73;
  View.environment<A>(_:_:)();

  v42 = *(v35 + 8);
  v43 = v38;
  v42(v37, v38);
  (*(v81 + 8))(v34, v39);
  v44 = sub_100005264(&qword_10002C9A0, &qword_10002C920);
  v102[5] = v40;
  v102[6] = v44;
  v45 = v77;
  v46 = swift_getWitnessTable();
  v47 = v75;
  View.opacity(_:)();
  (*(v82 + 8))(v41, v45);
  v102[3] = v46;
  v102[4] = &protocol witness table for _OpacityEffect;
  v48 = v80;
  v84 = swift_getWitnessTable();
  sub_1000178EC(v47, v48, v84);
  v49 = v83;
  v86 = *(v83 + 8);
  (v86)(v47, v48);
  v50 = static VerticalAlignment.center.getter();
  v51 = v87;
  *v87 = v50;
  *(v51 + 8) = 0x4050C00000000000;
  *(v51 + 16) = 0;
  v52 = sub_100003344(&qword_10002C9A8);
  sub_1000079D4(v96, v78, v94, (v51 + *(v52 + 44)));
  KeyPath = swift_getKeyPath();
  v54 = (v51 + *(v88 + 44));
  (v74)(v54 + *(v85 + 28), v76, v43);
  *v54 = KeyPath;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v55 = v89;
  sub_100004EE4(v51, v89, &qword_10002C988);
  v56 = v90;
  v57 = v91;
  v58 = (v55 + *(v91 + 36));
  v59 = v108;
  v58[4] = v107;
  v58[5] = v59;
  v58[6] = v109;
  v60 = v104;
  *v58 = v103;
  v58[1] = v60;
  v61 = v106;
  v58[2] = v105;
  v58[3] = v61;
  sub_100004EE4(v55, v56, &qword_10002C928);
  v62 = *(v49 + 16);
  v63 = v47;
  v64 = v47;
  v65 = v95;
  v62(v64, v95, v48);
  v102[0] = v63;
  v66 = v92;
  sub_100004F5C(v56, v92, &qword_10002C928);
  v101 = 0x3FE999999999999ALL;
  v102[1] = v66;
  v102[2] = &v101;
  v100[0] = v48;
  v100[1] = v57;
  v100[2] = sub_100003344(&qword_10002C930);
  v97 = v84;
  v98 = sub_1000092B8();
  v99 = sub_100009428();
  sub_10001290C(v102, 3uLL, v100);
  sub_100003750(v56, &qword_10002C928);
  v67 = v65;
  v68 = v86;
  (v86)(v67, v48);
  sub_100003750(v66, &qword_10002C928);
  return v68(v63, v48);
}

uint64_t sub_1000079D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v79 = a4;
  v7 = type metadata accessor for SymbolEffectOptions();
  v76 = *(v7 - 8);
  v77 = v7;
  __chkstk_darwin(v7);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ReplaceSymbolEffect();
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100003344(&qword_10002C9E0) - 8;
  __chkstk_darwin(v67);
  v66 = &v57 - v10;
  v74 = sub_100003344(&qword_10002C9E8) - 8;
  v11 = __chkstk_darwin(v74);
  v78 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v70 = &v57 - v14;
  __chkstk_darwin(v13);
  v72 = &v57 - v15;
  v16 = type metadata accessor for PlayerControls();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v82 = *(v17 + 16);
  v83 = v17 + 16;
  v59 = &v57 - v19;
  v65 = a1;
  v82(&v57 - v19, a1, v16);
  v80 = *(v17 + 80);
  v21 = (v80 + 32) & ~v80;
  v64 = v18;
  v22 = swift_allocObject();
  v71 = v22;
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v81 = *(v17 + 32);
  v58 = v16;
  v81(v22 + v21, v20, v16);
  v23 = *(a3 + 48);
  v24 = v23(a2, a3);
  v25 = 2036427888;
  if (v24)
  {
    v25 = 0x6573756170;
  }

  v61 = v25;
  v26 = 0xE400000000000000;
  if (v24)
  {
    v26 = 0xE500000000000000;
  }

  v60 = v26;
  v27 = a2;
  v28 = a2;
  v62 = a2;
  v29 = a3;
  v63 = a3;
  if (v23(v27, a3))
  {
    v30 = 50.0;
  }

  else
  {
    v30 = 40.0;
  }

  v31 = v59;
  v32 = v58;
  v82(v59, a1, v58);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  *(v33 + 24) = v29;
  v34 = v33 + v21;
  v35 = v21;
  v36 = v31;
  v37 = v32;
  v81(v34, v31, v32);
  v38 = v68;
  ReplaceSymbolEffect.init()();
  v39 = v69;
  static SymbolEffectOptions.speed(_:)();
  v40 = v66;
  v41 = &v66[*(v67 + 44)];
  sub_100003344(&qword_10002C9F0);
  sub_1000098EC(&qword_10002C9F8, &type metadata accessor for ReplaceSymbolEffect);
  v42 = v73;
  static ContentTransition.symbolEffect<A>(_:options:)();
  (*(v76 + 8))(v39, v77);
  (*(v75 + 8))(v38, v42);
  *v41 = swift_getKeyPath();
  v43 = v60;
  *v40 = v61;
  *(v40 + 8) = v43;
  *(v40 + 16) = sub_100009520;
  *(v40 + 24) = v33;
  *(v40 + 32) = v30;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v44 = v70;
  sub_100004EE4(v40, v70, &qword_10002C9E0);
  v45 = (v44 + *(v74 + 44));
  v46 = v85;
  *v45 = v84;
  v45[1] = v46;
  v45[2] = v86;
  v47 = v72;
  sub_100004EE4(v44, v72, &qword_10002C9E8);
  v82(v36, v65, v37);
  v48 = swift_allocObject();
  v49 = v63;
  *(v48 + 16) = v62;
  *(v48 + 24) = v49;
  v81(v48 + v35, v36, v37);
  v50 = v78;
  sub_100004F5C(v47, v78, &qword_10002C9E8);
  v51 = v79;
  *v79 = 0x647261776B636162;
  v51[1] = 0xE800000000000000;
  v52 = v71;
  v51[2] = sub_100009508;
  v51[3] = v52;
  v51[4] = 0x403C000000000000;
  v53 = v51;
  v54 = sub_100003344(&qword_10002CA00);
  sub_100004F5C(v50, v53 + *(v54 + 48), &qword_10002C9E8);
  v55 = (v53 + *(v54 + 64));
  *v55 = 0x64726177726F66;
  v55[1] = 0xE700000000000000;
  v55[2] = sub_100009774;
  v55[3] = v48;
  v55[4] = 0x403C000000000000;

  sub_100003750(v47, &qword_10002C9E8);

  sub_100003750(v50, &qword_10002C9E8);
}

uint64_t sub_10000819C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlayerControls();
  sub_100003344(&qword_10002C940);
  State.wrappedValue.setter();
  return (*(a3 + 56))(a2, a3);
}

uint64_t sub_100008250(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  type metadata accessor for PlayerControls();
  sub_100003344(&qword_10002C940);
  State.wrappedValue.setter();
  if (a3[6](a2, a3))
  {
    return a3[10](a2, a3);
  }

  else
  {
    return a3[9](a2, a3);
  }
}

uint64_t sub_100008348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlayerControls();
  sub_100003344(&qword_10002C940);
  State.wrappedValue.setter();
  return (*(a3 + 64))(a2, a3);
}

uint64_t sub_1000083FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v7, enum case for ScenePhase.background(_:), v4);
  v8 = static ScenePhase.== infix(_:_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = (a3 + *(type metadata accessor for PlayerControls() + 44));
    v12 = *(v10 + 1);
    v16 = *v10;
    v11 = v16;
    v17 = v12;
    sub_100003344(&qword_10002C940);
    State.wrappedValue.getter();
    sub_100003344(&qword_10002C948);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100021CC0;
    *(inited + 32) = 0x7463617265746E69;
    *(inited + 40) = 0xEB000000006E6F69;
    *(inited + 48) = Bool._bridgeToObjectiveC()();
    v14 = sub_10000F13C(inited);
    swift_setDeallocating();
    sub_100003750(inited + 32, &qword_10002C950);
    sub_10000CAAC(0xD000000000000021, 0x8000000100025D50, v14);

    v16 = v11;
    v17 = v12;
    v15[63] = 0;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100008658@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(qword_10002C878);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004F5C(v2, &v14 - v9, qword_10002C878);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1000088C4()
{
  sub_100008EA0(319, &qword_10002C788, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_100008EA0(319, &qword_10002C900, &type metadata accessor for ScenePhase);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_100008EF4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000089B4(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(type metadata accessor for ScenePhase() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v7 + v15 + 1;
  v17 = v9 + v13 + 1;
  v18 = *(v10 + 64) + 7;
  if (v14 < a2)
  {
    v19 = ((v18 + ((v17 + (v16 & ~v15)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v14 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_33;
      }

      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    v31 = v14 + (v27 | v26);
    return (v31 + 1);
  }

LABEL_33:
  v28 = (v17 + ((a1 + v16) & ~v15)) & ~v13;
  if (v11 < 0x7FFFFFFE)
  {
    v30 = *(((v18 + v28) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 - 1;
    if (v31 < 0)
    {
      v31 = -1;
    }

    return (v31 + 1);
  }

  v29 = *(v10 + 48);

  return v29(v28);
}

void sub_100008C0C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for ScenePhase() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v14 & 0xF8 | 7;
  v18 = v9 + v17 + 1;
  v19 = v11 + v15 + 1;
  v20 = *(v12 + 64) + 7;
  v21 = ((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v24 = 0;
    v25 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v16 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_23:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      if (!a2)
      {
        return;
      }

LABEL_39:
      v28 = (v19 + ((a1 + v18) & ~v17)) & ~v15;
      if (v13 < 0x7FFFFFFE)
      {
        v30 = ((v20 + v28) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v30 = (a2 - 0x7FFFFFFF);
          v30[1] = 0;
        }

        else
        {
          v30[1] = a2;
        }
      }

      else
      {
        v29 = *(v12 + 56);

        v29(v28, a2);
      }

      return;
    }
  }

  if (((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((v20 + ((v19 + (v18 & ~v17)) & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v27 = ~v16 + a2;
    bzero(a1, v21);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_100008EA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100008EF4()
{
  if (!qword_10002C908)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10002C908);
    }
  }
}

uint64_t sub_100008F98(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PlayerControls() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000083FC(a1, a2, v6);
}

uint64_t sub_100009034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_100009110()
{
  result = qword_10002C968;
  if (!qword_10002C968)
  {
    sub_1000050A8(&qword_10002C910);
    sub_10000919C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C968);
  }

  return result;
}

unint64_t sub_10000919C()
{
  result = qword_10002C970;
  if (!qword_10002C970)
  {
    sub_1000050A8(&qword_10002C958);
    sub_100005264(&qword_10002C978, &qword_10002C980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C970);
  }

  return result;
}

unint64_t sub_1000092B8()
{
  result = qword_10002C9B0;
  if (!qword_10002C9B0)
  {
    sub_1000050A8(&qword_10002C928);
    sub_100009344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B0);
  }

  return result;
}

unint64_t sub_100009344()
{
  result = qword_10002C9B8;
  if (!qword_10002C9B8)
  {
    sub_1000050A8(&qword_10002C988);
    sub_100005264(&qword_10002C9C0, &qword_10002C9C8);
    sub_100005264(&qword_10002C9A0, &qword_10002C920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9B8);
  }

  return result;
}

unint64_t sub_100009428()
{
  result = qword_10002C9D0;
  if (!qword_10002C9D0)
  {
    sub_1000050A8(&qword_10002C930);
    sub_1000094B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D0);
  }

  return result;
}

unint64_t sub_1000094B4()
{
  result = qword_10002C9D8;
  if (!qword_10002C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D8);
  }

  return result;
}

uint64_t sub_10000959C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PlayerControls();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;
  sub_100003344(&qword_10002C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
  }

  v8 = *(v2 + 36);
  sub_100003344(qword_10002C878);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ScenePhase();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v6 + *(v2 + 40), v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000978C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for PlayerControls() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_100009830()
{
  result = qword_10002CA18;
  if (!qword_10002CA18)
  {
    sub_1000050A8(&qword_10002CA10);
    sub_1000098EC(&qword_10002CA20, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA18);
  }

  return result;
}

uint64_t sub_1000098EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100009940()
{
  result = qword_10002CA30;
  if (!qword_10002CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA30);
  }

  return result;
}

uint64_t sub_100009994(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000099D4()
{
  sub_1000050A8(&qword_10002C910);
  type metadata accessor for PlaybackProgressView();
  sub_1000050A8(&qword_10002C918);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C920);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C928);
  sub_1000050A8(&qword_10002C930);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for _BlendModeEffect();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ScenePhase();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000098EC(&qword_10002C938, &type metadata accessor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100009C68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100009C7C(uint64_t a1, int a2)
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

uint64_t sub_100009CC4(uint64_t result, int a2, int a3)
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

uint64_t sub_100009D38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003344(&qword_10002CA70);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v5 = type metadata accessor for SymbolVariants();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14[1] = Image.init(systemName:)();
  static SymbolVariants.fill.getter();
  View.symbolVariant(_:)();
  (*(v6 + 8))(v8, v5);

  static Font.Weight.semibold.getter();
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  sub_10000A3E0(v4);
  KeyPath = swift_getKeyPath();
  result = sub_100003344(&qword_10002CA40);
  v13 = (a1 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

uint64_t sub_100009F4C()
{
  v1 = type metadata accessor for PlainButtonStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100003344(&qword_10002CA38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  v9 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v9;
  v17 = *(v0 + 32);
  v18 = v16[0];
  v10 = swift_allocObject();
  v11 = *(v0 + 16);
  *(v10 + 16) = *v0;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v0 + 32);
  v14 = v16;
  sub_10000A244(&v18, v15);

  sub_100003344(&qword_10002CA40);
  sub_10000A2A0();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005264(&qword_10002CA60, &qword_10002CA38);
  sub_10000A388();
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000A1D4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10000A2A0()
{
  result = qword_10002CA48;
  if (!qword_10002CA48)
  {
    sub_1000050A8(&qword_10002CA40);
    swift_getOpaqueTypeConformance2();
    sub_100005264(&qword_10002CA50, &qword_10002CA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA48);
  }

  return result;
}

unint64_t sub_10000A388()
{
  result = qword_10002CA68;
  if (!qword_10002CA68)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA68);
  }

  return result;
}

uint64_t sub_10000A3E0(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002CA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A450()
{
  sub_1000050A8(&qword_10002CA38);
  type metadata accessor for PlainButtonStyle();
  sub_100005264(&qword_10002CA60, &qword_10002CA38);
  sub_10000A388();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A52C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100003344(&qword_10002CA78);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  type metadata accessor for PlayerViewModel();
  v5 = swift_allocObject();
  type metadata accessor for Player();
  *(v5 + 16) = static Player.shared.getter();
  ObservationRegistrar.init()();
  v6 = type metadata accessor for Artwork();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for ArtworkViewModel();
  swift_allocObject();
  v7 = sub_10001EDEC(v4, 0, 0.0, 0.0);
  *a1 = v5;
  v8 = *(sub_100003344(&qword_10002CA80) + 40);
  *(a1 + v8) = swift_getKeyPath();
  sub_100003344(&qword_10002C7D0);
  result = swift_storeEnumTagMultiPayload();
  a1[1] = v7;
  return result;
}

uint64_t sub_10000A6F0(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_10000A7C0()
{
  result = qword_10002CA88;
  if (!qword_10002CA88)
  {
    sub_1000050A8(&qword_10002CA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA88);
  }

  return result;
}

uint64_t sub_10000A824(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for Player.PlaybackStatus();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - v9;
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  type metadata accessor for ControlWidgetStateManager();
  static ControlWidgetStateManager.currentPlaybackStatus.getter();
  v13 = *(v4 + 16);
  v13(v10, a1, v3);
  static ControlWidgetStateManager.currentPlaybackStatus.setter();
  if (sub_10000BA84(v12, a1))
  {
    if (qword_10002C590 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005380(v14, qword_10002E470);
    v13(v7, a1, v3);
    v15 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v26))
    {
      v16 = swift_slowAlloc();
      v24 = v12;
      v17 = v16;
      v25 = swift_slowAlloc();
      v28 = v25;
      *v17 = 136315138;
      v13(v10, v7, v3);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      (*(v4 + 8))(v7, v3);
      v21 = sub_10000B100(v18, v20, &v28);

      v22 = v17;
      v12 = v24;
      *(v22 + 1) = v21;
      _os_log_impl(&_mh_execute_header, v15, v26, "Updating Widget playback status to %s", v22, 0xCu);
      sub_10000C08C(v25);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    static ControlWidgetStateManager.reload()();
  }

  sub_10000C544(a1);
  return (*(v4 + 8))(v12, v3);
}

uint64_t sub_10000AC84()
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ControlWidgetStateManager();
  (*(v1 + 104))(v3, enum case for Player.PlaybackStatus.idle(_:), v0);
  static ControlWidgetStateManager.currentPlaybackStatus.setter();
  return static ControlWidgetStateManager.reload()();
}

uint64_t sub_10000AD60(uint64_t a1)
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

uint64_t sub_10000AE58()
{
  v0 = sub_100003344(&qword_10002CAB0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_10000C138();
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000C18C();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_10000AF80@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = sub_10000B6A8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000AFE4();
  static App.main()();
  return 0;
}

unint64_t sub_10000AFE4()
{
  result = qword_10002CA90;
  if (!qword_10002CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA90);
  }

  return result;
}

__n128 sub_10000B038(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B04C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000B094(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10000B100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B1CC(v11, 0, 0, 1, a1, a2);
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
    sub_10000C0D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C08C(v11);
  return v7;
}

unint64_t sub_10000B1CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B2D8(a5, a6);
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

char *sub_10000B2D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B324(a1, a2);
  sub_10000B454(&off_100029728);
  return v3;
}

char *sub_10000B324(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000B540(v5, 0);
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
        v7 = sub_10000B540(v10, 0);
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

uint64_t sub_10000B454(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000B5B4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000B540(uint64_t a1, uint64_t a2)
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

  sub_100003344(&qword_10002CAA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B5B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003344(&qword_10002CAA0);
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

uint64_t (*sub_10000B6A8())(uint64_t a1)
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Analytics();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  v7(v4 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate, 1, 1, v6);
  v8 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  v9 = type metadata accessor for Mood.Playlist();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = (v4 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);
  *v10 = sub_10000CAAC;
  v10[1] = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10000BA24;
  *(v11 + 24) = v4;
  swift_retain_n();
  withObservationTracking<A>(_:didSet:)();

  v12 = [objc_opt_self() defaultCenter];
  v13 = [objc_opt_self() mainQueue];
  aBlock[4] = sub_10000AC84;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AD60;
  aBlock[3] = &unk_100029C78;
  v14 = _Block_copy(aBlock);
  v15 = [v12 addObserverForName:UIApplicationWillTerminateNotification object:0 queue:v13 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  type metadata accessor for ControlWidgetStateManager();
  (*(v1 + 104))(v3, enum case for Player.PlaybackStatus.idle(_:), v0);
  static ControlWidgetStateManager.currentPlaybackStatus.setter();
  static ControlWidgetStateManager.reload()();
  return sub_10000BA24;
}

uint64_t sub_10000BA2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mood.Playlist();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = __chkstk_darwin(v4);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v52 - v7;
  v8 = type metadata accessor for Player.PlaybackStatus();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_100003344(&qword_10002CAA8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PlaybackInfo();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = __chkstk_darwin(v18);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v53 = &v52 - v21;
  v22 = *(v15 + 56);
  v23 = v9[2];
  v23(v17, a1, v8);
  v23(&v17[v22], a2, v8);
  v24 = v9[11];
  v25 = v24(v17, v8);
  v26 = v25;
  v61 = v9;
  if (v25 != enum case for Player.PlaybackStatus.loading(_:))
  {
    if (v25 == enum case for Player.PlaybackStatus.paused(_:))
    {
      if (v24(&v17[v22], v8) == v25)
      {
        v48 = *(v61 + 8);
        v48(&v17[v22], v8);
        v48(v17, v8);
        v47 = 0;
        return v47 & 1;
      }

LABEL_12:
      sub_100003750(v17, &qword_10002CAA8);
      v47 = 1;
      return v47 & 1;
    }

    v49 = v61;
    if (v25 != enum case for Player.PlaybackStatus.playing(_:))
    {
      if (v25 == enum case for Player.PlaybackStatus.idle(_:) && v24(&v17[v22], v8) == v25)
      {
        (*(v49 + 8))(v17, v8);
        v47 = 0;
        return v47 & 1;
      }

      goto LABEL_12;
    }

    v28 = v52;
    v23(v52, v17, v8);
    v27 = *(v49 + 96);
    v27(v28, v8);
    if (v24(&v17[v22], v8) == v26)
    {
      goto LABEL_3;
    }

LABEL_11:
    (*(v59 + 8))(v28, v60);
    goto LABEL_12;
  }

  v23(v13, v17, v8);
  v27 = v9[12];
  v27(v13, v8);
  v28 = v13;
  if (v24(&v17[v22], v8) != v26)
  {
    goto LABEL_11;
  }

LABEL_3:
  v27(&v17[v22], v8);
  v29 = v59;
  v30 = *(v59 + 32);
  v31 = v53;
  v32 = v28;
  v33 = v60;
  v30(v53, v32, v60);
  v34 = &v17[v22];
  v35 = v54;
  v30(v54, v34, v33);
  (*(v61 + 8))(v17, v8);
  v36 = v55;
  PlaybackInfo.playlist.getter();
  v37 = *(v29 + 8);
  v37(v31, v33);
  v61 = Mood.Playlist.id.getter();
  v39 = v38;
  v40 = *(v57 + 8);
  v41 = v36;
  v42 = v58;
  v40(v41, v58);
  v43 = v56;
  PlaybackInfo.playlist.getter();
  v37(v35, v33);
  v44 = Mood.Playlist.id.getter();
  v46 = v45;
  v40(v43, v42);
  if (v61 == v44 && v39 == v46)
  {

    v47 = 0;
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v47 = v50 ^ 1;
  }

  return v47 & 1;
}

uint64_t sub_10000C08C(uint64_t a1)
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

uint64_t sub_10000C0D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000C138()
{
  result = qword_10002CAB8;
  if (!qword_10002CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAB8);
  }

  return result;
}

unint64_t sub_10000C18C()
{
  result = qword_10002CAC0;
  if (!qword_10002CAC0)
  {
    sub_1000050A8(&qword_10002CAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAC0);
  }

  return result;
}

unint64_t sub_10000C208()
{
  result = qword_10002CAC8;
  if (!qword_10002CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAC8);
  }

  return result;
}

id sub_10000C25C()
{
  v0 = [objc_allocWithZone(AVRoutePickerView) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setActiveTintColor:v1];

  return v0;
}

uint64_t sub_10000C334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C424();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000C398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C424();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000C3FC()
{
  sub_10000C424();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10000C424()
{
  result = qword_10002CAD0;
  if (!qword_10002CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAD0);
  }

  return result;
}

uint64_t sub_10000C478()
{
  sub_100003344(&qword_10002CAD8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100021CC0;
  v1 = type metadata accessor for AdaptiveMusicAppIntentsPackage();
  v2 = sub_10000C4EC();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

unint64_t sub_10000C4EC()
{
  result = qword_10002CAE0;
  if (!qword_10002CAE0)
  {
    type metadata accessor for AdaptiveMusicAppIntentsPackage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAE0);
  }

  return result;
}

uint64_t sub_10000C544(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for Mood.Playlist();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v27 = &v27 - v5;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PlaybackInfo();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = type metadata accessor for Player.PlaybackStatus();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v31, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for Player.PlaybackStatus.loading(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v9 + 32))(v17, v21, v8);
    PlaybackInfo.playlist.getter();
    sub_10000D1F4(v7);
LABEL_9:
    (*(v29 + 8))(v7, v30);
    return (*(v9 + 8))(v17, v8);
  }

  v23 = v32;
  if (v22 == enum case for Player.PlaybackStatus.paused(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v9 + 32))(v12, v21, v8);
    v24 = v28;
    PlaybackInfo.playlist.getter();
    sub_10000E4EC(v24);
    if (v23)
    {
      v7 = v24;
      v17 = v12;
      goto LABEL_9;
    }

    (*(v29 + 8))(v24, v30);
    return (*(v9 + 8))(v12, v8);
  }

  else if (v22 == enum case for Player.PlaybackStatus.playing(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v9 + 32))(v15, v21, v8);
    v25 = v27;
    PlaybackInfo.playlist.getter();
    sub_10000D558(v25);
    if (v23)
    {
      v7 = v25;
      v17 = v15;
      goto LABEL_9;
    }

    (*(v29 + 8))(v25, v30);
    return (*(v9 + 8))(v15, v8);
  }

  else if (v22 == enum case for Player.PlaybackStatus.idle(_:))
  {
    return sub_10000CDD4();
  }

  else
  {
    return (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_10000C9F0()
{
  v0 = type metadata accessor for Logger();
  sub_10000531C(v0, qword_10002CAE8);
  sub_100005380(v0, qword_10002CAE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000CA7C()
{
  v1 = *v0;

  return v1;
}

void sub_10000CAAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_10002C598 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005380(v6, qword_10002CAE8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v9 = 136315395;
    *(v9 + 4) = sub_10000B100(a1, a2, v16);
    *(v9 + 12) = 2081;
    sub_10000F5E0(0, &qword_10002CC38);
    v10 = Dictionary.description.getter();
    v12 = sub_10000B100(v10, v11, v16);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Send analytics event: %s, payload: %{private}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v16[4] = sub_10000F5C0;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000CD38;
  v16[3] = &unk_100029D08;
  v15 = _Block_copy(v16);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

Class sub_10000CD38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000F5E0(0, &qword_10002CC38);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10000CDD4()
{
  v1 = sub_100003344(&qword_10002CBF8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v27 = &v25 - v12;
  v13 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  sub_100004F5C(v0 + v13, v6, &qword_10002CBF8);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
  }

  else
  {
    (*(v8 + 32))(v27, v6, v7);
    v16 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate;
    swift_beginAccess();
    sub_100004F5C(v0 + v16, v4, &qword_10002CBF8);
    if (v14(v4, 1, v7) == 1)
    {
      sub_100003750(v4, &qword_10002CBF8);
      v17 = *(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);
      v25 = "_playingPlaylist";
      v26 = v17;
      sub_100003344(&qword_10002C948);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100022270;
      *(inited + 32) = 0x746C75736572;
      *(inited + 40) = 0xE600000000000000;
      sub_10000F5E0(0, &qword_10002CC00);

      *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(0);
      *(inited + 56) = 0x79636E6574616CLL;
      *(inited + 64) = 0xE700000000000000;
      Date.init()();
      v19 = v27;
      Date.timeIntervalSince(_:)();
      v21 = v20;
      v22 = *(v8 + 8);
      v22(v11, v7);
      *(inited + 72) = [objc_allocWithZone(NSNumber) initWithDouble:v21];
      v23 = sub_10000F13C(inited);
      swift_setDeallocating();
      sub_100003344(&qword_10002C950);
      swift_arrayDestroy();
      v26(0xD000000000000027, v25 | 0x8000000000000000, v23);

      return (v22)(v19, v7);
    }

    (*(v8 + 8))(v27, v7);
    v15 = v4;
  }

  return sub_100003750(v15, &qword_10002CBF8);
}

uint64_t sub_10000D1F4(uint64_t a1)
{
  v20[0] = a1;
  v2 = sub_100003344(&qword_10002CBF8);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = sub_100003344(&qword_10002CC10);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = type metadata accessor for Mood.Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  sub_100004F5C(v1 + v15, v10, &qword_10002CC10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100003750(v10, &qword_10002CC10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = v20[1];
    sub_10000E4EC(v14);
    if (v16)
    {
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 8))(v14, v11);
  }

  Date.init()();
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  sub_10000F240(v4, v1 + v19, &qword_10002CBF8);
  swift_endAccess();
  (*(v12 + 16))(v8, v20[0], v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_10000F240(v8, v1 + v15, &qword_10002CC10);
  return swift_endAccess();
}

uint64_t sub_10000D558(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v115 = type metadata accessor for Mood.Playlist();
  v118 = *(v115 - 8);
  v3 = __chkstk_darwin(v115);
  v99 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v98 = v95 - v5;
  v102 = sub_100003344(&qword_10002CC18);
  __chkstk_darwin(v102);
  v104 = v95 - v6;
  v108 = sub_100003344(&qword_10002CC10);
  v7 = __chkstk_darwin(v108);
  v114 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v106 = v95 - v10;
  v11 = __chkstk_darwin(v9);
  v100 = v95 - v12;
  v13 = __chkstk_darwin(v11);
  v101 = v95 - v14;
  v15 = __chkstk_darwin(v13);
  v103 = v95 - v16;
  __chkstk_darwin(v15);
  v109 = (v95 - v17);
  v107 = sub_100003344(&qword_10002CBF8);
  v18 = __chkstk_darwin(v107);
  v113 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v112 = v95 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v95 - v23;
  __chkstk_darwin(v22);
  v26 = v95 - v25;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v95 - v32;
  v34 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  v116 = v34;
  v35 = v2 + v34;
  v36 = v2;
  v37 = v27;
  sub_100004F5C(v35, v26, &qword_10002CBF8);
  v38 = *(v28 + 48);
  v120 = v28 + 48;
  v119 = v38;
  v39 = v38(v26, 1, v27);
  v121 = v27;
  v117 = v2;
  v105 = v28;
  if (v39 == 1)
  {
    sub_100003750(v26, &qword_10002CBF8);
  }

  else
  {
    (*(v28 + 32))(v33, v26, v27);
    v40 = *(v2 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction + 8);
    v97 = *(v36 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);
    v95[1] = v40;
    v96 = "_playingPlaylist";
    sub_100003344(&qword_10002C948);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022270;
    *(inited + 32) = 0x746C75736572;
    *(inited + 40) = 0xE600000000000000;
    sub_10000F5E0(0, &qword_10002CC00);

    *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
    *(inited + 56) = 0x79636E6574616CLL;
    *(inited + 64) = 0xE700000000000000;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v43 = v42;
    v44 = *(v28 + 8);
    v44(v31, v121);
    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithDouble:v43];
    v45 = sub_10000F13C(inited);
    swift_setDeallocating();
    sub_100003344(&qword_10002C950);
    swift_arrayDestroy();
    v97(0xD000000000000027, v96 | 0x8000000000000000, v45);

    v36 = v117;

    v44(v33, v121);
    v37 = v121;
  }

  v46 = v115;
  v47 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate;
  swift_beginAccess();
  v48 = v36;
  sub_100004F5C(v36 + v47, v24, &qword_10002CBF8);
  v49 = v119(v24, 1, v37);
  sub_100003750(v24, &qword_10002CBF8);
  v50 = v118;
  if (v49 != 1)
  {
    v64 = 0;
    goto LABEL_22;
  }

  v115 = v47;
  v51 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  v52 = v109;
  sub_100004F5C(v36 + v51, v109, &qword_10002CC10);
  v53 = v50 + 48;
  v54 = *(v50 + 48);
  v55 = (v54)(v52, 1, v46);
  sub_100003750(v52, &qword_10002CC10);
  if (v55 != 1)
  {
    v64 = 0;
    v48 = v117;
    v47 = v115;
    goto LABEL_22;
  }

  v56 = v54;
  v57 = v103;
  (*(v50 + 16))(v103, v111, v46);
  (*(v50 + 56))(v57, 0, 1, v46);
  v58 = v46;
  v59 = *(v102 + 48);
  v60 = v104;
  sub_100004F5C(v117 + v51, v104, &qword_10002CC10);
  sub_100004F5C(v57, v60 + v59, &qword_10002CC10);
  v61 = v56(v60, 1, v46);
  v62 = v53;
  if (v61 == 1)
  {
    sub_100003750(v57, &qword_10002CC10);
    v63 = v56(v60 + v59, 1, v58);
    v47 = v115;
    if (v63 == 1)
    {
      sub_100003750(v60, &qword_10002CC10);
      v64 = 0;
      v48 = v117;
      v50 = v118;
      v46 = v58;
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v65 = v101;
  sub_100004F5C(v60, v101, &qword_10002CC10);
  if (v56(v60 + v59, 1, v58) == 1)
  {
    sub_100003750(v57, &qword_10002CC10);
    (*(v118 + 8))(v65, v58);
    v47 = v115;
LABEL_13:
    v109 = v56;
    v102 = v62;
    sub_100003750(v60, &qword_10002CC18);
    v46 = v58;
    goto LABEL_14;
  }

  v109 = v56;
  v102 = v53;
  v71 = v118;
  v72 = v57;
  v73 = v98;
  (*(v118 + 32))(v98, v60 + v59, v58);
  sub_10000F2FC(&qword_10002CC28);
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();
  v75 = *(v71 + 8);
  v75(v73, v58);
  sub_100003750(v72, &qword_10002CC10);
  v75(v101, v58);
  sub_100003750(v60, &qword_10002CC10);
  v46 = v58;
  v47 = v115;
  if (v74)
  {
    v64 = 0;
    v48 = v117;
    goto LABEL_20;
  }

LABEL_14:
  v66 = v117;
  v67 = v100;
  sub_100004F5C(v117 + v51, v100, &qword_10002CC10);
  if (v109(v67, 1, v46) == 1)
  {
    sub_100003750(v67, &qword_10002CC10);
    v64 = 1;
    v48 = v66;
LABEL_20:
    v50 = v118;
    goto LABEL_22;
  }

  v50 = v118;
  v68 = v99;
  (*(v118 + 32))(v99, v67, v46);
  v69 = v110;
  sub_10000E4EC(v68);
  if (v69)
  {
    return (*(v50 + 8))(v68, v46);
  }

  v48 = v66;
  v110 = 0;
  (*(v50 + 8))(v68, v46);
  v64 = 1;
LABEL_22:
  v76 = v112;
  sub_100004F5C(v48 + v116, v112, &qword_10002CBF8);
  v77 = v119(v76, 1, v121);
  sub_100003750(v76, &qword_10002CBF8);
  if (v77 == 1)
  {
    v78 = v113;
    if (!v64)
    {
LABEL_24:
      v122 = 0;
      v123 = 0xE000000000000000;
      _StringGuts.grow(_:)(86);
      v124 = v122;
      v125 = v123;
      v79._countAndFlagsBits = 0xD000000000000044;
      v79._object = 0x8000000100025EA0;
      String.append(_:)(v79);
      sub_100004F5C(v48 + v47, v78, &qword_10002CBF8);
      v80._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v80);

      v81._countAndFlagsBits = 0x616C7020646E6120;
      v81._object = 0xEE00207473696C79;
      String.append(_:)(v81);
      v82 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
      swift_beginAccess();
      sub_100004F5C(v48 + v82, v114, &qword_10002CC10);
      v83._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v83);

      v84 = v124;
      v85 = v125;
      sub_10000F2A8();
      swift_allocError();
      *v86 = v84;
      v86[1] = v85;
      return swift_willThrow();
    }
  }

  else
  {
    v87 = v46;
    v88 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
    swift_beginAccess();
    v89 = v48 + v88;
    v46 = v87;
    v90 = v106;
    sub_100004F5C(v89, v106, &qword_10002CC10);
    LODWORD(v87) = (*(v50 + 48))(v90, 1, v87);
    sub_100003750(v90, &qword_10002CC10);
    if (v87 == 1)
    {
      v91 = v64;
    }

    else
    {
      v91 = 1;
    }

    v78 = v113;
    if ((v91 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  Date.init()();
  (*(v105 + 56))(v78, 0, 1, v121);
  swift_beginAccess();
  sub_10000F240(v78, v48 + v47, &qword_10002CBF8);
  swift_endAccess();
  if (v64)
  {
    sub_100004F5C(v48 + v47, v78, &qword_10002CBF8);
    v92 = v116;
    swift_beginAccess();
    sub_10000F240(v78, v48 + v92, &qword_10002CBF8);
    swift_endAccess();
  }

  v93 = v114;
  (*(v50 + 16))(v114, v111, v46);
  (*(v50 + 56))(v93, 0, 1, v46);
  v94 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  sub_10000F240(v93, v48 + v94, &qword_10002CC10);
  return swift_endAccess();
}

uint64_t sub_10000E4EC(uint64_t a1)
{
  v23 = a1;
  v2 = sub_100003344(&qword_10002CBF8);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - v6;
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate;
  swift_beginAccess();
  sub_100004F5C(v1 + v14, v9, &qword_10002CBF8);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    v7 = v9;
LABEL_5:
    sub_100003750(v7, &qword_10002CBF8);
    sub_10000F2A8();
    swift_allocError();
    *v17 = 0xD00000000000005DLL;
    v17[1] = 0x8000000100025EF0;
    return swift_willThrow();
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate;
  swift_beginAccess();
  sub_100004F5C(v1 + v16, v7, &qword_10002CBF8);
  if (v15(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_5;
  }

  sub_100003750(v7, &qword_10002CBF8);
  v19 = v24;
  sub_10000E8A8(v23, v13);
  if (v19)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 8))(v13, v10);
  v20 = *(v11 + 56);
  v21 = v22;
  v20(v22, 1, 1, v10);
  swift_beginAccess();
  sub_10000F240(v21, v1 + v14, &qword_10002CBF8);
  swift_endAccess();
  v20(v21, 1, 1, v10);
  swift_beginAccess();
  sub_10000F240(v21, v1 + v16, &qword_10002CBF8);
  return swift_endAccess();
}

uint64_t sub_10000E8A8(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v29[1] = a2;
  v30 = type metadata accessor for Date();
  v29[0] = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003344(&qword_10002CC10);
  v6 = __chkstk_darwin(v5 - 8);
  v31 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v10 = type metadata accessor for Mood.Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist;
  swift_beginAccess();
  sub_100004F5C(v2 + v14, v9, &qword_10002CC10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100003750(v9, &qword_10002CC10);
    sub_10000F2A8();
    swift_allocError();
    *v15 = 0xD00000000000005ELL;
    v15[1] = 0x8000000100025F50;
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (static Mood.Playlist.== infix(_:_:)())
    {
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v18 = v17;
      (*(v29[0] + 8))(v4, v30);
      v19 = sub_10000F340(v18);
      v20 = *(v2 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_sendFunction);

      v20(0xD000000000000028, 0x8000000100026030, v19);

      (*(v11 + 8))(v13, v10);
      v21 = v31;
      (*(v11 + 56))(v31, 1, 1, v10);
      swift_beginAccess();
      sub_10000F240(v21, v2 + v14, &qword_10002CC10);
      return swift_endAccess();
    }

    else
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(103);
      v22._countAndFlagsBits = 0xD000000000000042;
      v22._object = 0x8000000100025FB0;
      String.append(_:)(v22);
      sub_10000F2FC(&qword_10002CC30);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24._object = 0x8000000100026000;
      v24._countAndFlagsBits = 0xD000000000000021;
      String.append(_:)(v24);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26 = v33;
      v27 = v34;
      sub_10000F2A8();
      swift_allocError();
      *v28 = v26;
      v28[1] = v27;
      swift_willThrow();
      return (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_10000ED80()
{
  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startLoadingDate, &qword_10002CBF8);
  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics_startPlaybackDate, &qword_10002CBF8);
  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9Analytics__playingPlaylist, &qword_10002CC10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Analytics()
{
  result = qword_10002CB48;
  if (!qword_10002CB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EEAC()
{
  sub_10000EFB8(319, &qword_10002CB58, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_10000EFB8(319, &unk_10002CB60, &type metadata accessor for Mood.Playlist);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000EFB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10000F00C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000F084(a1, a2, v4);
}

unint64_t sub_10000F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000F13C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003344(&qword_10002CC08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000F00C(v5, v6);
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

uint64_t sub_10000F240(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100003344(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000F2A8()
{
  result = qword_10002CC20;
  if (!qword_10002CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC20);
  }

  return result;
}

uint64_t sub_10000F2FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Mood.Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000F340(double a1)
{
  v2 = type metadata accessor for Mood.ID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003344(&qword_10002C948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021B80;
  *(inited + 32) = 0x64695F646F6F6DLL;
  *(inited + 40) = 0xE700000000000000;
  Mood.Playlist.moodID.getter();
  Mood.ID.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  v7 = String._bridgeToObjectiveC()();

  *(inited + 48) = v7;
  *(inited + 56) = 0x7473696C79616C70;
  *(inited + 64) = 0xEB0000000064695FLL;
  Mood.Playlist.analyticsID.getter();
  v8 = String._bridgeToObjectiveC()();

  *(inited + 72) = v8;
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  segname = stru_100000020.segname;
  v10 = 0.0;
  do
  {
    v11 = *(&off_100029750 + segname);
    v12 = vabdd_f64(v11, a1);
    v13 = vabdd_f64(v10, a1);
    v14 = v10 < v11;
    if (v12 != v13)
    {
      v14 = v12 < v13;
    }

    if (v14)
    {
      v10 = *(&off_100029750 + segname);
    }

    segname += 8;
  }

  while (segname != 312);
  *(inited + 96) = Double._bridgeToObjectiveC()();
  v15 = sub_10000F13C(inited);
  swift_setDeallocating();
  sub_100003344(&qword_10002C950);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_10000F588()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F5E0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000F628(uint64_t a1, int a2)
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

uint64_t sub_10000F670(uint64_t result, int a2, int a3)
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

__n128 sub_10000F6D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F6E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10000F72C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000F798()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10002CC40 = result;
  return result;
}

uint64_t sub_10000F880@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RoundedRectangle();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v12 = sub_100003344(&qword_10002CC48);
  sub_10000FB54(a1, a2, a3 & 1, a4 + *(v12 + 44));
  static Color.black.getter();
  v13 = Color.opacity(_:)();

  v14 = a4 + *(sub_100003344(&qword_10002CC50) + 36);
  *v14 = v13;
  *(v14 + 8) = xmmword_100022370;
  *(v14 + 24) = 0x4024000000000000;
  v15 = *(v9 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v11[v15], v16, v17);
  __asm { FMOV            V0.2D, #10.0 }

  *v11 = _Q0;
  if (qword_10002C5A0 != -1)
  {
    swift_once();
  }

  v23 = qword_10002CC40;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v24 = a4 + *(sub_100003344(&qword_10002CC58) + 36);
  sub_100011920(v11, v24, &type metadata accessor for RoundedRectangle);
  v25 = v24 + *(sub_100003344(&qword_10002CC60) + 36);
  v26 = v38;
  *v25 = *&v37[8];
  *(v25 + 16) = v26;
  *(v25 + 32) = v39;
  v27 = sub_100003344(&qword_10002CC68);
  *(v24 + *(v27 + 52)) = v23;
  *(v24 + *(v27 + 56)) = 256;

  v28 = static Alignment.center.getter();
  v30 = v29;
  sub_100011988(v11, &type metadata accessor for RoundedRectangle);
  v31 = (v24 + *(sub_100003344(&qword_10002CC70) + 36));
  *v31 = v28;
  v31[1] = v30;
  v32 = static Alignment.center.getter();
  v34 = v33;
  result = sub_100003344(&qword_10002CC78);
  v36 = (v24 + *(result + 36));
  *v36 = v32;
  v36[1] = v34;
  return result;
}

void sub_10000FB54(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v87 = a2;
  v102 = a4;
  v95 = type metadata accessor for ArtworkView.Art();
  __chkstk_darwin(v95);
  v90 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_100003344(&qword_10002CC80);
  __chkstk_darwin(v99);
  v101 = (&v72 - v6);
  v91 = sub_100003344(&qword_10002CC88);
  __chkstk_darwin(v91);
  v93 = &v72 - v7;
  v100 = sub_100003344(&qword_10002CC90);
  __chkstk_darwin(v100);
  v94 = &v72 - v8;
  v92 = sub_100003344(&qword_10002CC98);
  __chkstk_darwin(v92);
  v78 = &v72 - v9;
  v85 = type metadata accessor for Artwork.ImageFormat();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Artwork.CropStyle();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for EnvironmentValues();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Artwork();
  v103 = *(v13 - 8);
  __chkstk_darwin(v13);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003344(&qword_10002CA78);
  __chkstk_darwin(v15 - 8);
  v17 = &v72 - v16;
  v18 = sub_100003344(&qword_10002CCA0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel___observationRegistrar;
  *&v104 = a1;
  v96 = sub_10001187C(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  v97 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  v30 = a1 + v29;
  v31 = v103;
  sub_100004F5C(v30, v17, &qword_10002CA78);
  if (!(*(v31 + 48))(v17, 1, v13))
  {
    v74 = v23;
    v73 = v21;
    v33 = v85;
    v77 = v25;
    v76 = v24;
    v34 = v87;
    v35 = *(v31 + 16);
    v36 = v84;
    v75 = v13;
    v35(v84, v17, v13);
    sub_100003750(v17, &qword_10002CA78);
    v37 = sub_10001E3C4();
    v32 = a1;
    v72 = v27;
    *&v38 = v34;
    if (v98)
    {
      v39 = v34;
      v40 = v89;
      v41 = v88;
      v42 = v86;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v43 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v42 = v86;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000119E8(v38, 0);
      v41 = v88;
      v40 = v89;
      (*(v88 + 8))(v42, v89);
      v39 = *&v104;
    }

    v44 = v37 * v39;
    if (COERCE__INT64(fabs(v37 * v39)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      if (v44 < 9.22337204e18)
      {
        v45 = v33;
        v46 = sub_10001E3C4();
        if (v98)
        {
          v47 = *&v38;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v48 = v42;
          v49 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000119E8(v38, 0);
          (*(v41 + 8))(v48, v40);
          v47 = *&v104;
        }

        v50 = v83;
        v51 = v46 * v47;
        if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v51 > -9.22337204e18)
          {
            if (v51 < 9.22337204e18)
            {
              v52 = v36;
              v53 = v82;
              static Artwork.CropStyle.boundedBox.getter();
              v54 = v80;
              (*(v50 + 104))(v80, enum case for Artwork.ImageFormat.heic(_:), v45);
              v23 = v74;
              Artwork.url(width:height:cropStyle:format:)();
              (*(v50 + 8))(v54, v45);
              (*(v79 + 8))(v53, v81);
              (*(v103 + 8))(v52, v75);
              v55 = v77;
              v56 = v76;
              if ((*(v77 + 48))(v23, 1, v76) != 1)
              {
                v63 = v72;
                (*(v55 + 32))(v72, v23, v56);
                v64 = v32;
                v65 = v73;
                (*(v55 + 16))(v73, v63, v56);
                (*(v55 + 56))(v65, 0, 1, v56);
                static Animation.default.getter();
                Transaction.init(animation:)();
                v66 = swift_allocObject();
                *(v66 + 16) = v64;
                *(v66 + 24) = *&v38;
                v67 = v98 & 1;
                *(v66 + 32) = v98 & 1;
                sub_100011A44(v38, v67);

                sub_100003344(&qword_10002CCD8);
                sub_100011A50();
                v68 = v78;
                AsyncImage.init(url:scale:transaction:content:)();
                sub_10001E3C4();
                sub_10001E3C4();
                static Alignment.center.getter();
                _FrameLayout.init(width:height:alignment:)();
                v69 = (v68 + *(v92 + 36));
                v70 = v105;
                *v69 = v104;
                v69[1] = v70;
                v69[2] = v106;
                sub_100004F5C(v68, v93, &qword_10002CC98);
                swift_storeEnumTagMultiPayload();
                sub_1000117C4();
                sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art);
                v71 = v94;
                _ConditionalContent<>.init(storage:)();
                sub_100004F5C(v71, v101, &qword_10002CC90);
                swift_storeEnumTagMultiPayload();
                sub_100011708();
                sub_1000118C4();
                _ConditionalContent<>.init(storage:)();
                sub_100003750(v71, &qword_10002CC90);
                sub_100003750(v68, &qword_10002CC98);
                (*(v55 + 8))(v63, v56);
                return;
              }

              goto LABEL_16;
            }

LABEL_25:
            __break(1u);
            return;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_100003750(v17, &qword_10002CA78);
  (*(v25 + 56))(v23, 1, 1, v24);
  v32 = a1;
LABEL_16:
  sub_100003750(v23, &qword_10002CCA0);
  swift_getKeyPath();
  *&v104 = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v32 + 16);
  if (v57)
  {

    v58 = sub_10001E3C4();
    KeyPath = swift_getKeyPath();
    v60 = v90;
    *v90 = KeyPath;
    sub_100003344(&qword_10002C7D0);
    swift_storeEnumTagMultiPayload();
    v61 = v95;
    *(v60 + *(v95 + 20)) = v58;
    *(v60 + *(v61 + 24)) = v57;
    sub_100011920(v60, v93, type metadata accessor for ArtworkView.Art);
    swift_storeEnumTagMultiPayload();
    sub_1000117C4();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art);
    v62 = v94;
    _ConditionalContent<>.init(storage:)();
    sub_100004F5C(v62, v101, &qword_10002CC90);
    swift_storeEnumTagMultiPayload();
    sub_100011708();
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
    sub_100003750(v62, &qword_10002CC90);
    sub_100011988(v60, type metadata accessor for ArtworkView.Art);
  }

  else
  {
    *v101 = sub_10001E3C4();
    swift_storeEnumTagMultiPayload();
    sub_100011708();
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100010A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003344(&qword_10002CCE8);
  __chkstk_darwin(v6);
  v8 = (v21 - v7);
  v9 = type metadata accessor for ArtworkView.Art();
  __chkstk_darwin(v9);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AsyncImagePhase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v15, a1, v12);
  if ((*(v13 + 88))(v15, v12) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v13 + 96))(v15, v12);
    v16 = *v15;

    sub_10001E52C(v17);
    v18 = sub_10001E3C4();
    *v11 = swift_getKeyPath();
    sub_100003344(&qword_10002C7D0);
    swift_storeEnumTagMultiPayload();
    *(v11 + *(v9 + 20)) = v18;
    *(v11 + *(v9 + 24)) = v16;
    sub_100011920(v11, v8, type metadata accessor for ArtworkView.Art);
    swift_storeEnumTagMultiPayload();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art);
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
    return sub_100011988(v11, type metadata accessor for ArtworkView.Art);
  }

  else
  {
    if (*(a2 + 16))
    {
      KeyPath = swift_getKeyPath();
      v21[1] = a3;
      v21[0] = v21;
      __chkstk_darwin(KeyPath);
      v21[-2] = a2;
      v21[-1] = 0;
      v21[3] = a2;
      sub_10001187C(&qword_10002C820, type metadata accessor for ArtworkViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *v8 = sub_10001E3C4();
    swift_storeEnumTagMultiPayload();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art);
    sub_1000118C4();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_100010E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(&qword_10002C7D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004F5C(v2, &v14 - v9, &qword_10002C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_100011088@<D0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = _Q0;
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGBLinear(_:), v2);
  Color.init(_:white:opacity:)();
  v14 = sub_100003344(&qword_10002CDC8);
  v15 = &a1[*(v14 + 52)];
  sub_100003344(&qword_10002CDD0);
  static ShadowStyle.drop(color:radius:x:y:)();

  *v15 = 1045220557;
  *&a1[*(v14 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &a1[*(sub_100003344(&qword_10002CDD8) + 36)];
  v17 = v19[1];
  *v16 = v19[0];
  *(v16 + 1) = v17;
  result = *&v20;
  *(v16 + 2) = v20;
  return result;
}

double sub_10001129C@<D0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = type metadata accessor for ColorScheme();
  v1 = *(v34 - 8);
  v2 = __chkstk_darwin(v34);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003344(&qword_10002CDB0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  type metadata accessor for ArtworkView.Art();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v14 = Image.resizable(capInsets:resizingMode:)();
  (*(v7 + 8))(v9, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = 1;
  *&v36[6] = v38;
  *&v36[22] = v39;
  *&v36[38] = v40;
  v15 = &v13[*(v11 + 44)];
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *&v15[*(sub_100003344(&qword_10002CDB8) + 36)] = 256;
  v24 = *&v36[16];
  *(v13 + 18) = *v36;
  *v13 = v14;
  *(v13 + 1) = 0;
  *(v13 + 8) = 1;
  *(v13 + 34) = v24;
  *(v13 + 50) = *&v36[32];
  *(v13 + 8) = *&v36[46];
  static Color.black.getter();
  sub_100010E88(v5);
  v26 = v33;
  v25 = v34;
  (*(v1 + 104))(v33, enum case for ColorScheme.light(_:), v34);
  static ColorScheme.== infix(_:_:)();
  v27 = *(v1 + 8);
  v27(v26, v25);
  v27(v5, v25);
  v28 = Color.opacity(_:)();

  v29 = v35;
  sub_100011F74(v13, v35);
  v30 = v29 + *(sub_100003344(&qword_10002CDC0) + 36);
  *v30 = v28;
  result = 25.0;
  *(v30 + 8) = xmmword_100022380;
  *(v30 + 24) = 0x4034000000000000;
  return result;
}

uint64_t type metadata accessor for ArtworkView.Art()
{
  result = qword_10002CD48;
  if (!qword_10002CD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100011708()
{
  result = qword_10002CCA8;
  if (!qword_10002CCA8)
  {
    sub_1000050A8(&qword_10002CC90);
    sub_1000117C4();
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCA8);
  }

  return result;
}

unint64_t sub_1000117C4()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    sub_1000050A8(&qword_10002CC98);
    sub_100005264(&qword_10002CCB8, &qword_10002CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

uint64_t sub_10001187C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000118C4()
{
  result = qword_10002CCD0;
  if (!qword_10002CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD0);
  }

  return result;
}

uint64_t sub_100011920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000119E8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000119F4()
{

  sub_1000119E8(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100011A44(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100011A50()
{
  result = qword_10002CCE0;
  if (!qword_10002CCE0)
  {
    sub_1000050A8(&qword_10002CCD8);
    sub_10001187C(&qword_10002CCC8, type metadata accessor for ArtworkView.Art);
    sub_1000118C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE0);
  }

  return result;
}

uint64_t sub_100011B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003344(&qword_10002C718);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100011C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003344(&qword_10002C718);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100011CEC()
{
  sub_100011D70();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100011D70()
{
  if (!qword_10002C788)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10002C788);
    }
  }
}

unint64_t sub_100011DCC()
{
  result = qword_10002CD88;
  if (!qword_10002CD88)
  {
    sub_1000050A8(&qword_10002CC58);
    sub_100011E84();
    sub_100005264(&qword_10002CDA8, &qword_10002CC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD88);
  }

  return result;
}

unint64_t sub_100011E84()
{
  result = qword_10002CD90;
  if (!qword_10002CD90)
  {
    sub_1000050A8(&qword_10002CC50);
    sub_100005264(&qword_10002CD98, &qword_10002CDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD90);
  }

  return result;
}

uint64_t sub_100011F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002CDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100011FE8()
{
  result = qword_10002CDE0;
  if (!qword_10002CDE0)
  {
    sub_1000050A8(&qword_10002CDC0);
    sub_100012074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDE0);
  }

  return result;
}

unint64_t sub_100012074()
{
  result = qword_10002CDE8;
  if (!qword_10002CDE8)
  {
    sub_1000050A8(&qword_10002CDB0);
    sub_10001212C();
    sub_100005264(&qword_10002CE00, &qword_10002CDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDE8);
  }

  return result;
}

unint64_t sub_10001212C()
{
  result = qword_10002CDF0;
  if (!qword_10002CDF0)
  {
    sub_1000050A8(&qword_10002CDF8);
    sub_100005024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDF0);
  }

  return result;
}

unint64_t sub_1000121BC()
{
  result = qword_10002CE08;
  if (!qword_10002CE08)
  {
    sub_1000050A8(&qword_10002CDD8);
    sub_100005264(&qword_10002CE10, &qword_10002CDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE08);
  }

  return result;
}

unint64_t sub_100012294()
{
  result = qword_10002CE18;
  if (!qword_10002CE18)
  {
    sub_1000050A8(&qword_10002CE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE18);
  }

  return result;
}

uint64_t sub_1000122F8()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  Path.addRoundedRect(in:cornerSize:style:transform:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100012444(double a1, uint64_t a2, CGRect *a3)
{
  v5 = CGRectGetWidth(*a3) * 0.5;
  v6 = 1.0 - a1;
  v8 = CGRectInset(*a3, v6 * v5, 0.0);
  *a3 = v8;
  v9 = CGRectOffset(v8, -(v6 * v5), 0.0);
  *a3 = v9;
  v7.a = 1.0;
  v7.b = 0.0;
  v7.c = 0.0;
  v7.d = 1.0;
  v7.tx = 0.0;
  v7.ty = 0.0;
  Path.addRect(_:transform:)(v9, &v7);
}

double sub_1000124E0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v14 = CGRectInset(*&a2, *(v5 + 8), *(v5 + 8));
  CGRectGetHeight(v14);
  Path.init(_:)();
  Path.init(_:)();
  Path.intersection(_:eoFill:)();
  sub_100012828(v10);
  sub_100012828(v9);
  result = *&v11;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  *(a1 + 32) = v13;
  return result;
}

double sub_1000125E8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_1000125F4(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_100012600(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_10001262C;
}

double sub_10001262C(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t sub_100012640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001287C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000126A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001287C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100012708(uint64_t a1)
{
  v2 = sub_10001287C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_100012764()
{
  result = qword_10002CE28;
  if (!qword_10002CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE28);
  }

  return result;
}

unint64_t sub_1000127BC()
{
  result = qword_10002CE30;
  if (!qword_10002CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE30);
  }

  return result;
}

unint64_t sub_10001287C()
{
  result = qword_10002CE38;
  if (!qword_10002CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE38);
  }

  return result;
}

uint64_t sub_10001290C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_100012ADC()
{

  _GeometryActionModifier.init(value:action:)();
  type metadata accessor for _GeometryActionModifier();
  View.modifier<A>(_:)();
}

uint64_t sub_100012BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003344(&qword_10002C7D0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100004F5C(v2 + *(a1 + 40), &v15 - v10, &qword_10002C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100012DBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v90 = sub_100003344(&qword_10002C710);
  __chkstk_darwin(v90);
  v84 = v62 - v3;
  v82 = type metadata accessor for Player.PlaybackStatus();
  v80 = *(v82 - 8);
  v4 = __chkstk_darwin(v82);
  v78 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v6 = *(a1 - 8);
  a1 -= 8;
  v81 = v6;
  __chkstk_darwin(v4);
  v89 = v7;
  v79 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050A8(&qword_10002D158);
  v8 = *(a1 + 32);
  v86 = *(a1 + 24);
  v91 = v8;
  type metadata accessor for PlayerControls();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002D160);
  swift_getTupleTypeMetadata3();
  v62[1] = type metadata accessor for TupleView();
  v62[0] = swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  v63 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v62 - v10;
  WitnessTable = swift_getWitnessTable();
  v95 = v9;
  v96 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v64 = v62 - v14;
  sub_1000050A8(&qword_10002D168);
  v68 = OpaqueTypeMetadata2;
  v15 = type metadata accessor for ModifiedContent();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v74 = v62 - v16;
  sub_1000050A8(&qword_10002C870);
  v17 = type metadata accessor for ModifiedContent();
  v76 = *(v17 - 8);
  __chkstk_darwin(v17);
  v88 = v62 - v18;
  v95 = v9;
  v96 = WitnessTable;
  v62[4] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_100005264(&qword_10002D170, &qword_10002D168);
  v62[2] = OpaqueTypeConformance2;
  v101 = OpaqueTypeConformance2;
  v102 = v20;
  v73 = v15;
  v21 = swift_getWitnessTable();
  v22 = sub_100005264(&qword_10002C868, &qword_10002C870);
  v62[3] = v21;
  v99 = v21;
  v100 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_100016AFC();
  v77 = v17;
  v95 = v17;
  v96 = v90;
  v69 = v23;
  v97 = v23;
  v98 = v24;
  v67 = v24;
  v72 = swift_getOpaqueTypeMetadata2();
  v71 = *(v72 - 8);
  v25 = __chkstk_darwin(v72);
  v66 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v70 = v62 - v27;
  v28 = v86;
  v92 = v86;
  v29 = v91;
  v93 = v91;
  v30 = v87;
  v94 = v87;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  sub_100003344(&qword_10002D188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022270;
  v32 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v32;
  v33 = static Axis.Set.vertical.getter();
  *(inited + 33) = v33;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v32)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v33)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  v34 = v64;
  View.containerRelativeFrame(_:alignment:)();
  v35 = (*(v63 + 8))(v11, v9);
  __chkstk_darwin(v35);
  v62[-4] = v28;
  v62[-3] = v29;
  v36 = v28;
  v37 = v30;
  v61 = v30;
  static Alignment.center.getter();
  type metadata accessor for PlayerBackgroundView();
  sub_1000172FC(&qword_10002D190, type metadata accessor for PlayerBackgroundView);
  v38 = v74;
  v39 = v68;
  View.background<A>(alignment:content:)();
  (*(v65 + 8))(v34, v39);
  type metadata accessor for CGSize();
  v40 = v81;
  v68 = *(v81 + 16);
  v41 = v79;
  v42 = v37;
  v43 = v83;
  v68(v79, v42, v83);
  v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v45 = swift_allocObject();
  v46 = v91;
  *(v45 + 16) = v36;
  *(v45 + 24) = v46;
  v81 = *(v40 + 32);
  (v81)(v45 + v44, v41, v43);
  v61 = sub_1000172FC(&qword_10002D198, type metadata accessor for CGSize);
  v47 = v73;
  sub_100012ADC();

  (*(v75 + 8))(v38, v47);
  type metadata accessor for Player();
  static Player.shared.getter();
  v48 = v78;
  Player.playbackStatus.getter();

  v49 = v84;
  Player.PlaybackStatus.playbackItemInfo.getter(v84);
  (*(v80 + 8))(v48, v82);
  v68(v41, v87, v43);
  v50 = swift_allocObject();
  v51 = v91;
  *(v50 + 16) = v86;
  *(v50 + 24) = v51;
  (v81)(v50 + v44, v41, v43);
  v52 = v66;
  v53 = v77;
  v54 = v88;
  View.onChange<A>(of:initial:_:)();

  sub_100003750(v49, &qword_10002C710);
  (*(v76 + 8))(v54, v53);
  v55 = v71;
  v56 = *(v71 + 16);
  v57 = v70;
  v58 = v72;
  v56(v70, v52, v72);
  v59 = *(v55 + 8);
  v59(v52, v58);
  v56(v85, v57, v58);
  return (v59)(v57, v58);
}

uint64_t sub_100013A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a4;
  v7 = type metadata accessor for ColorScheme();
  v140 = *(v7 - 8);
  v141 = v7;
  v8 = __chkstk_darwin(v7);
  v137 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v136 = &v114 - v10;
  v11 = type metadata accessor for BlendMode();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v135 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_100003344(&qword_10002D1B0);
  __chkstk_darwin(v134);
  v14 = &v114 - v13;
  v143 = sub_100003344(&qword_10002D160);
  v15 = __chkstk_darwin(v143);
  v144 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v133 = &v114 - v18;
  v19 = __chkstk_darwin(v17);
  v142 = &v114 - v20;
  v119 = *(a2 - 8);
  __chkstk_darwin(v19);
  v118 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PlayerControls();
  v122 = *(v22 - 8);
  __chkstk_darwin(v22);
  v120 = (&v114 - v23);
  v125 = v24;
  v25 = type metadata accessor for ModifiedContent();
  v126 = *(v25 - 8);
  __chkstk_darwin(v25);
  v121 = &v114 - v26;
  v128 = v27;
  v28 = type metadata accessor for ModifiedContent();
  v127 = *(v28 - 8);
  __chkstk_darwin(v28);
  v123 = &v114 - v29;
  v129 = v30;
  v132 = type metadata accessor for ModifiedContent();
  v149 = *(v132 - 8);
  v31 = __chkstk_darwin(v132);
  v148 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v147 = &v114 - v33;
  v130 = sub_100003344(&qword_10002D158);
  v34 = __chkstk_darwin(v130);
  v131 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v146 = &v114 - v36;
  v124 = type metadata accessor for PlayerView();
  v37 = *(a1 + *(v124 + 36));
  KeyPath = swift_getKeyPath();
  v116 = v37;
  v38 = *(a3 + 48);

  v39 = v38(a2, a3);
  static UnitPoint.center.getter();
  v41 = v40;
  v43 = v42;
  v44 = a1;
  v45 = a2;
  v46 = a2;
  v47 = a3;
  if (v38(v46, a3))
  {
    v48 = static Animation.spring(response:dampingFraction:blendDuration:)();
  }

  else
  {
    v48 = static Animation.default.getter();
  }

  v49 = v48;
  if (v39)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = 0.73;
  }

  v117 = a1;
  v51 = v38(v45, v47);
  v169 = 0;
  v52 = v51 & 1;
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v170 = 0;
  v62 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v171 = 0;
  *&v155 = v116;
  *(&v155 + 1) = KeyPath;
  LOBYTE(v156) = 0;
  *(&v156 + 1) = v50;
  *&v157 = v50;
  *(&v157 + 1) = v41;
  *&v158 = v43;
  *(&v158 + 1) = v49;
  LOBYTE(v159) = v52;
  BYTE8(v159) = v53;
  *&v160 = v55;
  *(&v160 + 1) = v57;
  *&v161 = v59;
  *(&v161 + 1) = v61;
  LOBYTE(v162) = 0;
  BYTE8(v162) = v62;
  *&v163 = v63;
  *(&v163 + 1) = v64;
  *&v164 = v65;
  *(&v164 + 1) = v66;
  v165 = 0;
  sub_100003344(&qword_10002D1B8);
  sub_100016EE0();
  View.accessibilityIdentifier(_:)();
  v166[8] = v163;
  v166[9] = v164;
  v166[4] = v159;
  v166[5] = v160;
  v166[6] = v161;
  v166[7] = v162;
  v166[0] = v155;
  v166[1] = v156;
  v167 = v165;
  v166[2] = v157;
  v166[3] = v158;
  sub_100003750(v166, &qword_10002D1B8);
  v67 = v118;
  (*(v119 + 16))(v118, v44, v45);
  v68 = v120;
  sub_1000055B8(v67, v45, v120);
  sub_10001E3C4();
  static Alignment.center.getter();
  v112 = v125;
  WitnessTable = swift_getWitnessTable();
  v69 = v121;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v122 + 8))(v68, v112);
  static Edge.Set.horizontal.getter();
  v154[7] = WitnessTable;
  v154[8] = &protocol witness table for _FlexFrameLayout;
  v70 = v128;
  v71 = swift_getWitnessTable();
  v72 = v123;
  View.padding(_:_:)();
  (*(v126 + 8))(v69, v70);
  static Edge.Set.top.getter();
  v154[5] = v71;
  v154[6] = &protocol witness table for _PaddingLayout;
  v73 = v129;
  v74 = swift_getWitnessTable();
  v75 = v148;
  View.padding(_:_:)();
  (*(v127 + 1))(v72, v73);
  v154[3] = v74;
  v154[4] = &protocol witness table for _PaddingLayout;
  v76 = v132;
  v77 = swift_getWitnessTable();
  v78 = v149;
  v79 = *(v149 + 16);
  v126 = v149 + 16;
  v127 = v79;
  v128 = v77;
  v79(v147, v75, v76);
  v80 = *(v78 + 8);
  v149 = v78 + 8;
  v129 = v80;
  v80(v75, v76);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v125 = v155;
  LOBYTE(v78) = BYTE8(v155);
  LODWORD(v116) = BYTE8(v155);
  v81 = BYTE8(v156);
  v122 = v157;
  v123 = v156;
  v121 = *(&v157 + 1);
  v120 = static Color.secondary.getter();
  v119 = swift_getKeyPath();
  LOBYTE(v153[0]) = v78;
  LOBYTE(v150) = v81;
  LODWORD(v118) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  LOBYTE(v154[0]) = 0;
  v90 = v136;
  sub_100012BB8(v124, v136);
  v92 = v140;
  v91 = v141;
  v93 = v137;
  (*(v140 + 104))(v137, enum case for ColorScheme.light(_:), v141);
  LOBYTE(v78) = static ColorScheme.== infix(_:_:)();
  v94 = *(v92 + 8);
  v94(v93, v91);
  v94(v90, v91);
  v95 = v138;
  v96 = &enum case for BlendMode.plusDarker(_:);
  if ((v78 & 1) == 0)
  {
    v96 = &enum case for BlendMode.plusLighter(_:);
  }

  v97 = v135;
  v98 = v139;
  (*(v138 + 104))(v135, *v96, v139);
  (*(v95 + 32))(&v14[*(v134 + 36)], v97, v98);
  *v14 = v125;
  v14[8] = v116;
  v99 = v122;
  *(v14 + 2) = v123;
  v14[24] = v81;
  v100 = v121;
  *(v14 + 4) = v99;
  *(v14 + 5) = v100;
  v101 = v120;
  *(v14 + 6) = v119;
  *(v14 + 7) = v101;
  v14[64] = v118;
  *(v14 + 65) = *v168;
  *(v14 + 17) = *&v168[3];
  *(v14 + 9) = v83;
  *(v14 + 10) = v85;
  *(v14 + 11) = v87;
  *(v14 + 12) = v89;
  v14[104] = 0;
  v102 = v133;
  sub_100004EE4(v14, v133, &qword_10002D1B0);
  v104 = v142;
  v103 = v143;
  *(v102 + *(v143 + 36)) = 0x3FE999999999999ALL;
  sub_100004EE4(v102, v104, &qword_10002D160);
  v105 = v146;
  v106 = v131;
  sub_100004F5C(v146, v131, &qword_10002D158);
  v154[0] = v106;
  v108 = v147;
  v107 = v148;
  v127(v148, v147, v76);
  v154[1] = v107;
  v109 = v144;
  sub_100004F5C(v104, v144, &qword_10002D160);
  v154[2] = v109;
  v153[0] = v130;
  v153[1] = v76;
  v153[2] = v103;
  v150 = sub_100017240();
  v151 = v128;
  v152 = sub_100017344();
  sub_10001290C(v154, 3uLL, v153);
  sub_100003750(v104, &qword_10002D160);
  v110 = v129;
  v129(v108, v76);
  sub_100003750(v105, &qword_10002D158);
  sub_100003750(v109, &qword_10002D160);
  v110(v148, v76);
  return sub_100003750(v106, &qword_10002D158);
}

double sub_100014774@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PlayerView() + 36));
  *a2 = swift_getKeyPath();
  sub_100003344(&qword_10002C7D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for PlayerBackgroundView();
  v5 = v4[6];
  v6 = objc_opt_self();

  v7 = [v6 systemBackgroundColor];
  *(a2 + v5) = Color.init(_:)();
  v8 = a2 + v4[7];
  type metadata accessor for CGSize();
  State.init(wrappedValue:)();
  result = *&v10;
  *v8 = v10;
  *(v8 + 2) = v11;
  *(a2 + v4[5]) = v3;
  return result;
}

uint64_t sub_100014878(double *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  result = type metadata accessor for PlayerView();
  v6 = *(a2 + *(result + 36));
  if (*(v6 + 24) == v4 && *(v6 + 32) == v3)
  {
    *(v6 + 24) = v4;
    *(v6 + 32) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000149B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Artwork();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v44 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003344(&qword_10002D1A0);
  __chkstk_darwin(v7);
  v9 = &v41[-v8];
  v10 = sub_100003344(&qword_10002C710);
  v11 = __chkstk_darwin(v10 - 8);
  v50 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v41[-v13];
  v15 = sub_100003344(&qword_10002CA78);
  v16 = __chkstk_darwin(v15 - 8);
  v49 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v46 = &v41[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v41[-v21];
  __chkstk_darwin(v20);
  v24 = &v41[-v23];
  v25 = *(a3 + *(type metadata accessor for PlayerView() + 36));
  swift_getKeyPath();
  v54 = v25;
  sub_1000172FC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  v48 = v25;
  sub_100004F5C(v25 + v26, v24, &qword_10002CA78);
  v51 = a2;
  sub_100004F5C(a2, v14, &qword_10002C710);
  v27 = type metadata accessor for PlaybackInfo.PlaybackItemInfo();
  v28 = *(v27 - 8);
  v47 = *(v28 + 48);
  v29 = v47(v14, 1, v27);
  v45 = v28;
  if (v29 == 1)
  {
    sub_100003750(v14, &qword_10002C710);
    v30 = v52;
    (*(v52 + 56))(v22, 1, 1, v53);
  }

  else
  {
    PlaybackInfo.PlaybackItemInfo.artwork.getter();
    (*(v28 + 8))(v14, v27);
    v30 = v52;
  }

  v31 = *(v7 + 48);
  sub_100004F5C(v24, v9, &qword_10002CA78);
  sub_100004F5C(v22, &v9[v31], &qword_10002CA78);
  v32 = *(v30 + 48);
  v33 = v53;
  if (v32(v9, 1, v53) == 1)
  {
    sub_100003750(v22, &qword_10002CA78);
    sub_100003750(v24, &qword_10002CA78);
    if (v32(&v9[v31], 1, v53) == 1)
    {
      return sub_100003750(v9, &qword_10002CA78);
    }
  }

  else
  {
    v43 = v27;
    v35 = v46;
    sub_100004F5C(v9, v46, &qword_10002CA78);
    if (v32(&v9[v31], 1, v33) != 1)
    {
      v38 = v52;
      v39 = v44;
      (*(v52 + 32))(v44, &v9[v31], v33);
      sub_1000172FC(&qword_10002D1A8, &type metadata accessor for Artwork);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v38 + 8);
      v40(v39, v33);
      sub_100003750(v22, &qword_10002CA78);
      sub_100003750(v24, &qword_10002CA78);
      v40(v35, v33);
      result = sub_100003750(v9, &qword_10002CA78);
      v27 = v43;
      if (v42)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_100003750(v22, &qword_10002CA78);
    sub_100003750(v24, &qword_10002CA78);
    (*(v52 + 8))(v35, v53);
    v27 = v43;
  }

  sub_100003750(v9, &qword_10002D1A0);
LABEL_10:
  v36 = v50;
  sub_100004F5C(v51, v50, &qword_10002C710);
  if (v47(v36, 1, v27) == 1)
  {
    sub_100003750(v36, &qword_10002C710);
    v37 = v49;
    (*(v52 + 56))(v49, 1, 1, v53);
  }

  else
  {
    v37 = v49;
    PlaybackInfo.PlaybackItemInfo.artwork.getter();
    (*(v45 + 8))(v36, v27);
  }

  return sub_10001E694(v37);
}

uint64_t sub_1000150BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10001521C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000153CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  result = static Duration.== infix(_:_:)();
  if (result)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000154EC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100015604()
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000156B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_100015760()
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100015810@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1000158E4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

__n128 sub_100015988@<Q0>(uint64_t *a1@<X0>, void *a2@<X4>, __n128 *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

uint64_t sub_100015A3C()
{
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying);
}

uint64_t sub_100015AE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying);
  return result;
}

uint64_t sub_100015B94()
{

  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__playbackStatus, qword_10002D0D0);
  v1 = OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TestModel()
{
  result = qword_10002CE90;
  if (!qword_10002CE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015CB4()
{
  sub_100016A54(319, &unk_10002CEA0, &type metadata accessor for Player.PlaybackStatus, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100015DCC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_100015E7C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_100015F54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v6 + *a4);
}

uint64_t sub_100015FFC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__isPlaying);
}

uint64_t sub_1000160A4()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100016138, v2, v1);
}

uint64_t sub_100016138()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016198(uint64_t a1)
{
  result = sub_1000172FC(&qword_10002D0C8, type metadata accessor for TestModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100016304(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

__n128 sub_100016364()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__playbackDuration) = result;
  return result;
}

__n128 sub_10001637C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC16AdaptiveMusicApp9TestModel__playbackTime) = result;
  return result;
}

uint64_t sub_100016394()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_1000163D4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

void sub_100016414()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkViewModel();
    if (v1 <= 0x3F)
    {
      sub_100016A54(319, &qword_10002C788, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000164E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ColorScheme() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 < 0x7FFFFFFF)
      {
        v20 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }

      else
      {
        v19 = *(v6 + 48);

        return v19(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_10001674C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ColorScheme() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_49:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0x7FFFFFFF)
  {
    v23 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *v23 = v24;
  }

  else
  {
    v22 = *(v25 + 56);

    v22(a1, a2, v9, v7);
  }
}

void sub_100016A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100016AFC()
{
  result = qword_10002D178;
  if (!qword_10002D178)
  {
    sub_1000050A8(&qword_10002C710);
    sub_1000172FC(&qword_10002D180, &type metadata accessor for PlaybackInfo.PlaybackItemInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D178);
  }

  return result;
}

uint64_t sub_100016BCC(double *a1)
{
  v3 = *(type metadata accessor for PlayerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100014878(a1, v4);
}

uint64_t sub_100016C58()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for PlayerView() - 8);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = (v3 + 32) & ~v3;
  (*(*(v1 - 8) + 8))(v0 + v5, v1);

  v6 = v2[12];
  sub_100003344(&qword_10002C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v0 + v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_100016DB8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PlayerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000149B0(a1, a2, v6);
}

uint64_t sub_100016E8C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_100016EE0()
{
  result = qword_10002D1C0;
  if (!qword_10002D1C0)
  {
    sub_1000050A8(&qword_10002D1B8);
    sub_100016F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1C0);
  }

  return result;
}

unint64_t sub_100016F6C()
{
  result = qword_10002D1C8;
  if (!qword_10002D1C8)
  {
    sub_1000050A8(&qword_10002D1D0);
    sub_100016FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1C8);
  }

  return result;
}

unint64_t sub_100016FF8()
{
  result = qword_10002D1D8;
  if (!qword_10002D1D8)
  {
    sub_1000050A8(&qword_10002D1E0);
    sub_1000170B0();
    sub_100005264(&qword_10002D200, &qword_10002D208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1D8);
  }

  return result;
}

unint64_t sub_1000170B0()
{
  result = qword_10002D1E8;
  if (!qword_10002D1E8)
  {
    sub_1000050A8(&qword_10002D1F0);
    sub_10001713C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1E8);
  }

  return result;
}

unint64_t sub_10001713C()
{
  result = qword_10002D1F8;
  if (!qword_10002D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D1F8);
  }

  return result;
}

uint64_t sub_100017190@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000171BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100017240()
{
  result = qword_10002D210;
  if (!qword_10002D210)
  {
    sub_1000050A8(&qword_10002D158);
    sub_100016EE0();
    sub_1000172FC(&qword_10002CA20, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D210);
  }

  return result;
}

uint64_t sub_1000172FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100017344()
{
  result = qword_10002D218;
  if (!qword_10002D218)
  {
    sub_1000050A8(&qword_10002D160);
    sub_1000173D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D218);
  }

  return result;
}

unint64_t sub_1000173D0()
{
  result = qword_10002D220;
  if (!qword_10002D220)
  {
    sub_1000050A8(&qword_10002D1B0);
    sub_10001745C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D220);
  }

  return result;
}

unint64_t sub_10001745C()
{
  result = qword_10002D228;
  if (!qword_10002D228)
  {
    sub_1000050A8(&qword_10002D230);
    sub_1000174E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D228);
  }

  return result;
}

unint64_t sub_1000174E8()
{
  result = qword_10002D238;
  if (!qword_10002D238)
  {
    sub_1000050A8(&qword_10002D240);
    sub_1000175A0();
    sub_100005264(&qword_10002C998, &qword_10002C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D238);
  }

  return result;
}

unint64_t sub_1000175A0()
{
  result = qword_10002D248;
  if (!qword_10002D248)
  {
    sub_1000050A8(&qword_10002D250);
    sub_10000C208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D248);
  }

  return result;
}

uint64_t sub_10001762C()
{
  sub_1000050A8(&qword_10002D158);
  type metadata accessor for PlayerControls();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002D160);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000050A8(&qword_10002D168);
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C870);
  type metadata accessor for ModifiedContent();
  sub_1000050A8(&qword_10002C710);
  swift_getOpaqueTypeConformance2();
  sub_100005264(&qword_10002D170, &qword_10002D168);
  swift_getWitnessTable();
  sub_100005264(&qword_10002C868, &qword_10002C870);
  swift_getWitnessTable();
  sub_100016AFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000178F4()
{
  v0 = type metadata accessor for Player.PlaybackStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Player();
  static Player.shared.getter();
  Player.playbackStatus.getter();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000179D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003344(&qword_10002C708);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = a3;
  sub_100017DB8(0, 0, v7, &unk_100022B20, v10);
}

uint64_t sub_100017AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Player.PlaybackStatus();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100017BEC, v8, v7);
}

uint64_t sub_100017BEC()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  type metadata accessor for Player();
  static Player.shared.getter();
  Player.playbackStatus.getter();

  v4(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100017CB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100017CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003568;

  return sub_100017AF8(a1, v4, v5, v7, v6);
}

uint64_t sub_100017DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003344(&qword_10002C708);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100003444(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100018078(v11);
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

      sub_100018078(a3);

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

  sub_100018078(a3);
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

uint64_t sub_100018078(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002C708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000180E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000181D8;

  return v6(a1);
}

uint64_t sub_1000181D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000182D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000037B8;

  return sub_1000180E0(a1, v4);
}

uint64_t sub_1000183C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003568;

  return sub_1000180E0(a1, v4);
}

uint64_t sub_100018478(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000184C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100018510@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003344(qword_10002D260);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100018570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  v6 = type metadata accessor for PlaybackProgressView();
  v7 = a4 + v6[9];
  *v7 = sub_100018720();
  *(v7 + 8) = v8;
  *(v7 + 16) = v9 & 1;
  *(v7 + 24) = v10;
  v11 = (a4 + v6[10]);
  State.init(wrappedValue:)();
  *v11 = v17;
  v11[1] = v18;
  v12 = a4 + v6[11];
  GestureState.init(wrappedValue:)();
  *v12 = v17;
  *(v12 + 8) = v18;
  *(v12 + 16) = v19;
  sub_100018918(a2, a4 + v6[12]);
  v13 = v6[13];
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  return (*(*(v15 - 8) + 104))(a4 + v13, v14, v15);
}

uint64_t sub_100018720()
{
  sub_100003344(&qword_10002D258);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_100018778()
{
  sub_100003344(&qword_10002D368);
  State.wrappedValue.getter();
  return v1;
}

double sub_100018858()
{
  sub_100003344(&qword_10002D3E0);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100018918(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002C990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100018998()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1000191F8();
    if (v1 <= 0x3F)
    {
      sub_10001925C(319, &qword_10002D2F0, &type metadata for CGFloat, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10001925C(319, &qword_10002D2F8, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v3 <= 0x3F)
        {
          sub_1000192AC();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Capsule();
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

uint64_t sub_100018AC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for LayoutDirection() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = type metadata accessor for RoundedCornerStyle();
  v11 = *(v10 - 8);
  v12 = *(v6 + 64);
  v13 = *(v11 + 80);
  if (v7 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v8 + 80) & 0xF8;
  v17 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 39;
  v19 = v9 + v13 + 1;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v20 = ((v19 + ((v18 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v17)) & ~v13) + *(*(v10 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v15 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if (v7 == v15)
      {
        v28 = *(v6 + 48);

        return v28(a1, v7, v5);
      }

      else
      {
        v29 = (((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        if ((v14 & 0x80000000) != 0)
        {
          v31 = *(v11 + 48);

          return v31((v19 + ((v18 + v29) & v17)) & ~v13);
        }

        else
        {
          v30 = *(v29 + 16);
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          return (v30 + 1);
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v15 + (v27 | v25) + 1;
}

void sub_100018E14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v32 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for LayoutDirection() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(type metadata accessor for RoundedCornerStyle() - 8);
  v13 = v12;
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (v9 <= *(v12 + 84))
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v10 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 39;
  v21 = v11 + v15 + 1;
  v22 = ((v21 + ((v20 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v19)) & ~v15) + *(v12 + 64);
  if (a3 <= v17)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 - v17 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (v17 < a2)
  {
    v24 = ~v17 + a2;
    if (v22 < 4)
    {
      v25 = (v24 >> (8 * v22)) + 1;
      if (v22)
      {
        v28 = v24 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v28;
            if (v23 > 1)
            {
LABEL_55:
              if (v23 == 2)
              {
                *&a1[v22] = v25;
              }

              else
              {
                *&a1[v22] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v23 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v28;
        a1[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v23)
    {
      a1[v22] = v25;
    }

    return;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v22] = 0;
  }

  else if (v23)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v17)
  {
    v29 = *(v32 + 56);

    v29(a1, a2, v9, v7);
  }

  else
  {
    v30 = (((((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) != 0)
    {
      v31 = *(v13 + 56);

      v31((v21 + ((v30 + v20) & v19)) & ~v15, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      v30[2] = 0;
      v30[3] = 0;
      *v30 = a2 & 0x7FFFFFFF;
      v30[1] = 0;
    }

    else
    {
      v30[2] = (a2 - 1);
    }
  }
}

void sub_1000191F8()
{
  if (!qword_10002D2E8)
  {
    sub_1000050A8(&qword_10002D258);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10002D2E8);
    }
  }
}

void sub_10001925C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000192AC()
{
  if (!qword_10002D300)
  {
    type metadata accessor for LayoutDirection();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10002D300);
    }
  }
}

uint64_t sub_100019348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003344(qword_10002D260);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100004F5C(v2 + *(a1 + 48), &v15 - v10, qword_10002D260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for LayoutDirection();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10001954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_100003344(&qword_10002D308);
  return sub_1000195B0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_1000195B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v7 = type metadata accessor for PlaybackProgressView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  v11 = type metadata accessor for AnimationTimelineSchedule();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v27[0] = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  if ((*(a3 + 48))(a2, a3))
  {
    sub_100018778();
  }

  AnimationTimelineSchedule.init(minimumInterval:paused:)();
  (*(v8 + 16))(v10, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v8 + 32))(v18 + v17, v10, v7);
  (*(v12 + 16))(v27[0], v16, v11);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10001CEF4;
  *(v19 + 24) = v18;
  sub_100003344(&qword_10002D310);
  sub_10001DD80(&qword_10002D318, &type metadata accessor for AnimationTimelineSchedule);
  v20 = sub_1000050A8(&qword_10002D320);
  v21 = sub_1000050A8(&qword_10002D328);
  v22 = sub_1000050A8(&qword_10002D330);
  v23 = sub_10001D094();
  v28 = v22;
  v29 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_10001D144();
  v28 = v20;
  v29 = v21;
  v30 = OpaqueTypeConformance2;
  v31 = v25;
  swift_getOpaqueTypeConformance2();
  TimelineView<>.init(_:content:)();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_100019958@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a4;
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003344(&qword_10002D330);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v22 = sub_100003344(&qword_10002D320);
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v20 - v14;
  v16 = a3;
  sub_100019BEC(a1, a2, a3, v12);
  static AccessibilityChildBehavior.combine.getter();
  v17 = sub_10001D094();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v21);
  sub_10001D22C(v12);
  v24 = a2;
  v25 = v16;
  v26 = a1;
  sub_100003344(&qword_10002D328);
  v27 = v10;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10001D144();
  v18 = v22;
  View.accessibilityRepresentation<A>(representation:)();
  return (*(v13 + 8))(v15, v18);
}

uint64_t sub_100019BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v8 = sub_100003344(&qword_10002D3B0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for PlaybackProgressView();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  (*(v15 + 16))(&v23 - v16, a1, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v15 + 32))(v19 + v18, v17, v14);
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v20 = sub_100003344(&qword_10002D3B8);
  sub_10001B0EC(v24, &v13[*(v20 + 44)]);
  sub_100004F5C(v13, v11, &qword_10002D3B0);
  *a4 = sub_10001D974;
  *(a4 + 8) = v19;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  v21 = sub_100003344(&qword_10002D3C0);
  sub_100004F5C(v11, a4 + *(v21 + 64), &qword_10002D3B0);

  sub_100003750(v13, &qword_10002D3B0);
  sub_100003750(v11, &qword_10002D3B0);
}

__n128 sub_100019E70@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v101 = a3;
  v96 = a1;
  v92 = a5;
  v6 = type metadata accessor for PlaybackProgressView();
  v100 = *(v6 - 8);
  v99 = *(v100 + 64);
  __chkstk_darwin(v6);
  v98 = &v72 - v7;
  v80 = type metadata accessor for GeometryProxy();
  v8 = *(v80 - 8);
  v95 = *(v8 + 64);
  __chkstk_darwin(v80);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v11);
  v12 = sub_100003344(&qword_10002D3E8);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v83 = sub_100003344(&qword_10002D3F0);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v72 - v15;
  v85 = sub_100003344(&qword_10002D3F8);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v72 - v16;
  v88 = sub_100003344(&qword_10002D400);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = &v72 - v17;
  v91 = sub_100003344(&qword_10002D408);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v72 - v18;
  v19 = v6;
  sub_10001AA40(v6);
  v21 = v20;
  v22 = a2;
  v23 = sub_100018858();
  LODWORD(a2) = static HierarchicalShapeStyle.secondary.getter();
  v24 = sub_100018858();
  v25 = static Alignment.center.getter();
  *&v110 = v21;
  *(&v110 + 1) = v23;
  *&v111 = a2 | 0x3F66666600000000;
  WORD4(v111) = 256;
  *&v112 = 0x3FF0000000000000;
  *(&v112 + 1) = v24;
  v113.n128_u64[0] = 3;
  v113.n128_u16[4] = 256;
  *&v114 = v25;
  *(&v114 + 1) = v26;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v93 = v6;
  v27 = *(v6 + 44);
  v97 = v22;
  v28 = (v22 + v27);
  v78 = *v28;
  v77 = v28[1];
  v30 = v28[2];
  v29 = v28[3];
  v76 = v30;
  v75 = v29;
  v106 = v78;
  v107 = v77;
  v108 = v30;
  v109 = v29;
  v74 = sub_100003344(&qword_10002D410);
  GestureState.projectedValue.getter();
  v31 = v104;
  v32 = v105;
  v72 = v12;
  v33 = *(v12 + 44);
  v73 = v14;
  v34 = &v14[v33];
  *v34 = v103;
  *(v34 + 1) = v31;
  *(v34 + 1) = v32;
  v35 = &v14[*(v12 + 48)];
  *v35 = sub_10001AB14;
  v35[1] = 0;
  v36 = v8;
  v37 = v10;
  v38 = v80;
  (*(v8 + 16))(v10, v96, v80);
  v39 = v100;
  v94 = *(v100 + 16);
  v96 = v100 + 16;
  v40 = v98;
  v94(v98, v22, v19);
  v41 = v36;
  v42 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v43 = *(v39 + 80);
  v44 = (v95 + v43 + v42) & ~v43;
  v95 = v43 | 7;
  v45 = swift_allocObject();
  v46 = v102;
  *(v45 + 16) = v101;
  *(v45 + 24) = v46;
  (*(v41 + 32))(v45 + v42, v37, v38);
  v47 = *(v39 + 32);
  v48 = v93;
  v47(v45 + v44, v40, v93);
  v100 = v39 + 32;
  sub_100005264(&qword_10002D418, &qword_10002D3E8);
  sub_10001DD80(&qword_10002D420, &type metadata accessor for DragGesture.Value);
  v49 = v79;
  v50 = v73;
  Gesture<>.onChanged(_:)();

  sub_100003750(v50, &qword_10002D3E8);
  v94(v40, v97, v48);
  v51 = (v43 + 32) & ~v43;
  v52 = swift_allocObject();
  v53 = v102;
  *(v52 + 16) = v101;
  *(v52 + 24) = v53;
  v47(v52 + v51, v40, v48);
  sub_100005264(&qword_10002D428, &qword_10002D3F0);
  v54 = v81;
  v55 = v83;
  Gesture.onEnded(_:)();

  (*(v84 + 8))(v49, v55);
  static GestureMask.all.getter();
  v56 = sub_100003344(&qword_10002D430);
  v57 = sub_10001DE54();
  v58 = sub_100005264(&qword_10002D460, &qword_10002D3F8);
  v59 = v82;
  v60 = v85;
  View.gesture<A>(_:including:)();
  (*(v86 + 8))(v54, v60);
  LOBYTE(v110) = v78;
  *(&v110 + 1) = v77;
  *&v111 = v76;
  *(&v111 + 1) = v75;
  GestureState.wrappedValue.getter();
  v61 = v98;
  v62 = v93;
  v94(v98, v97, v93);
  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v101;
  *(v63 + 24) = v64;
  v47(v63 + v51, v61, v62);
  *&v110 = v56;
  *(&v110 + 1) = v60;
  *&v111 = v57;
  *(&v111 + 1) = v58;
  swift_getOpaqueTypeConformance2();
  v65 = v87;
  v66 = v88;
  View.onChange<A>(of:initial:_:)();

  (*(v89 + 8))(v59, v66);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v67 = v92;
  (*(v90 + 32))(v92, v65, v91);
  v68 = v67 + *(sub_100003344(&qword_10002D468) + 36);
  v69 = v115;
  *(v68 + 64) = v114;
  *(v68 + 80) = v69;
  *(v68 + 96) = v116;
  v70 = v111;
  *v68 = v110;
  *(v68 + 16) = v70;
  result = v113;
  *(v68 + 32) = v112;
  *(v68 + 48) = result;
  return result;
}

uint64_t sub_10001AA40(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v2 + 40);
  v4(v3, v2);
  static Duration.zero.getter();
  result = static Duration.< infix(_:_:)();
  if (result)
  {
    v6 = sub_10001AD84(a1);
    v8 = v7;
    v10 = (v4)(v3, v2);

    return static Duration./ infix(_:_:)(v6, v8, v10, v9);
  }

  return result;
}

uint64_t sub_10001AB14(uint64_t a1, BOOL *a2)
{
  result = DragGesture.Value.startLocation.getter();
  v5 = v4 != 0.0;
  if (v6 != 0.0)
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_10001AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a1;
  v7 = type metadata accessor for LayoutDirection();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  GeometryProxy.size.getter();
  v14 = type metadata accessor for PlaybackProgressView();
  sub_100019348(v14, v13);
  (*(v8 + 104))(v11, enum case for LayoutDirection.rightToLeft(_:), v7);
  static LayoutDirection.== infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  (*(a5 + 40))(a4, a5);
  DragGesture.Value.translation.getter();
  sub_100018858();
  static Duration.* infix(_:_:)();
  return sub_1000187E4();
}

uint64_t sub_10001AD44()
{
  v0 = type metadata accessor for PlaybackProgressView();
  v1 = sub_10001AD84(v0);
  return sub_10001AE78(v1, v2, v0);
}

uint64_t sub_10001AD84(uint64_t a1)
{
  v2 = static Duration.zero.getter();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  (*(v3 + 32))(v4, v3);
  sub_100018778();
  if (v5)
  {
    static Duration.zero.getter();
  }

  v6 = static Duration.+ infix(_:_:)();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    v2 = v6;
  }

  v7 = (*(v3 + 40))(v4, v3);
  if (static Duration.< infix(_:_:)())
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001AE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003344(&qword_10002C708);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, v3, a3);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = *(a3 + 16);
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  (*(v7 + 32))(v16 + v15, v9, a3);
  sub_100017DB8(0, 0, v12, &unk_100022CC8, v16);
}

uint64_t sub_10001B074()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10001B0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75[1] = a1;
  v79 = a2;
  v81 = sub_100003344(&qword_10002D3C8) - 8;
  v2 = __chkstk_darwin(v81);
  v78 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v77 = v75 - v5;
  v6 = __chkstk_darwin(v4);
  v76 = v75 - v7;
  __chkstk_darwin(v6);
  v80 = v75 - v8;
  v9 = type metadata accessor for PlaybackProgressView();
  v82 = sub_10001B6F0(v9);
  v83 = v10;
  v75[2] = sub_100009940();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.caption.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_100009994(v11, v13, v15 & 1);

  static Font.Weight.semibold.getter();
  v21 = Text.fontWeight(_:)();
  v23 = v22;
  v25 = v24;
  sub_100009994(v16, v18, v20 & 1);

  v26 = Text.monospacedDigit()();
  v28 = v27;
  LOBYTE(v16) = v29;
  sub_100009994(v21, v23, v25 & 1);

  LODWORD(v82) = static HierarchicalShapeStyle.secondary.getter();
  v30 = Text.foregroundStyle<A>(_:)();
  v32 = v31;
  LOBYTE(v21) = v33;
  v35 = v34;
  sub_100009994(v26, v28, v16 & 1);

  v82 = v30;
  v83 = v32;
  v84 = v21 & 1;
  v85 = v35;
  v36 = v80;
  View.accessibilityIdentifier(_:)();
  sub_100009994(v30, v32, v21 & 1);

  v37 = sub_100018858();
  v75[0] = v9;
  v38 = sub_100018858();
  v39 = &v36[*(v81 + 44)];
  *v39 = v37;
  v39[1] = -v38;
  v82 = sub_10001B99C(v9);
  v83 = v40;
  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v30) = v44;
  static Font.caption.getter();
  v45 = Text.font(_:)();
  v47 = v46;
  v49 = v48;

  sub_100009994(v41, v43, v30 & 1);

  static Font.Weight.semibold.getter();
  v50 = Text.fontWeight(_:)();
  v52 = v51;
  LOBYTE(v30) = v53;
  sub_100009994(v45, v47, v49 & 1);

  v54 = Text.monospacedDigit()();
  v56 = v55;
  LOBYTE(v47) = v57;
  sub_100009994(v50, v52, v30 & 1);

  LODWORD(v82) = static HierarchicalShapeStyle.secondary.getter();
  v58 = Text.foregroundStyle<A>(_:)();
  v60 = v59;
  LOBYTE(v52) = v61;
  v63 = v62;
  sub_100009994(v54, v56, v47 & 1);

  v82 = v58;
  v83 = v60;
  v84 = v52 & 1;
  v85 = v63;
  v64 = v76;
  View.accessibilityIdentifier(_:)();
  sub_100009994(v58, v60, v52 & 1);

  v65 = -sub_100018858();
  v66 = sub_100018858();
  v67 = v80;
  v68 = (v64 + *(v81 + 44));
  *v68 = v65;
  v68[1] = -v66;
  v69 = v77;
  sub_100004F5C(v67, v77, &qword_10002D3C8);
  v70 = v78;
  sub_100004F5C(v64, v78, &qword_10002D3C8);
  v71 = v79;
  sub_100004F5C(v69, v79, &qword_10002D3C8);
  v72 = sub_100003344(&qword_10002D3D0);
  v73 = v71 + *(v72 + 48);
  *v73 = 0;
  *(v73 + 8) = 1;
  sub_100004F5C(v70, v71 + *(v72 + 64), &qword_10002D3C8);
  sub_100003750(v64, &qword_10002D3C8);
  sub_100003750(v67, &qword_10002D3C8);
  sub_100003750(v70, &qword_10002D3C8);
  return sub_100003750(v69, &qword_10002D3C8);
}

uint64_t sub_10001B6F0(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.TimeFormatStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AD84(a1);
  v16[1] = v14;
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v2);
  static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  (*(v3 + 8))(v5, v2);
  static FormatStyle<>.time(pattern:)();
  (*(v7 + 8))(v9, v6);
  sub_10001DD80(&qword_10002D3D8, &type metadata accessor for Duration.TimeFormatStyle);
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v10);
  return v16[2];
}

uint64_t sub_10001B99C(uint64_t a1)
{
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Duration.TimeFormatStyle();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AD84(a1);
  (*(*(a1 + 24) + 40))(*(a1 + 16));
  static Duration.- infix(_:_:)();
  v11 = v15;
  (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v15);
  static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  (*(v2 + 8))(v4, v11);
  static FormatStyle<>.time(pattern:)();
  (*(v5 + 8))(v7, v17);
  sub_10001DD80(&qword_10002D3D8, &type metadata accessor for Duration.TimeFormatStyle);
  v12 = v16;
  Duration.formatted<A>(_:)();
  (*(v8 + 8))(v10, v12);
  return v18;
}

uint64_t sub_10001BC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100003344(&qword_10002D360);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v27 = sub_100003344(&qword_10002D328);
  __chkstk_darwin(v27);
  v13 = &v26 - v12;
  v30 = 0;
  static Binding.constant(_:)();
  v30 = v33;
  v31 = v34;
  v32 = v35;
  v29 = xmmword_100022B80;
  sub_10001D2A0();
  Slider<>.init<A>(value:in:onEditingChanged:label:)();
  sub_10001C098(a1, a2, a3);
  sub_100005264(&qword_10002D358, &qword_10002D360);
  View.accessibilityAdjustableAction(_:)();

  (*(v9 + 8))(v11, v8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v15 = type metadata accessor for PlaybackProgressView();
  v16._countAndFlagsBits = sub_10001C328(v15);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

  v17._countAndFlagsBits = 543584032;
  v17._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = sub_10001C72C(v15);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  LocalizedStringKey.init(stringInterpolation:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  ModifiedContent<>.accessibilityValue(_:)();
  sub_100009994(v20, v22, v24 & 1);

  return sub_100003750(v13, &qword_10002D328);
}

uint64_t sub_10001C018@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t (*sub_10001C098(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = type metadata accessor for PlaybackProgressView();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  return sub_10001D614;
}

uint64_t sub_10001C1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityAdjustmentDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != enum case for AccessibilityAdjustmentDirection.increment(_:) && v8 != enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    return (*(v5 + 8))(v7, v4, -3.0);
  }

  static Duration.seconds(_:)();
  sub_1000187E4();
  v9 = sub_10001AD84(a2);
  return sub_10001AE78(v9, v10, a2);
}

uint64_t sub_10001C328(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Duration.UnitsFormatStyle();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001AD84(a1);
  v19[0] = v15;
  v19[1] = v14;
  sub_100003344(&qword_10002D388);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100022270;
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  sub_10001D2F4(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v24 + 8))(v4, v25);
  (*(v22 + 8))(v7, v23);
  (*(v8 + 8))(v10, v21);
  sub_10001DD80(&qword_10002D390, &type metadata accessor for Duration.UnitsFormatStyle);
  v17 = v20;
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v17);
  return v26;
}

uint64_t sub_10001C72C(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Duration.UnitsFormatStyle();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(a1 + 24) + 40))(*(a1 + 16));
  v19[0] = v15;
  v19[1] = v14;
  sub_100003344(&qword_10002D388);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100022270;
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  sub_10001D2F4(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v24 + 8))(v4, v25);
  (*(v22 + 8))(v7, v23);
  (*(v8 + 8))(v10, v21);
  sub_10001DD80(&qword_10002D390, &type metadata accessor for Duration.UnitsFormatStyle);
  v17 = v20;
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v17);
  return v26;
}

uint64_t sub_10001CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return _swift_task_switch(sub_10001CBE0, v10, v9);
}

uint64_t sub_10001CBE0()
{
  v10 = v0[6];
  v1 = Duration.components.getter();
  Duration.components.getter();
  v9 = (*(v10 + 88) + **(v10 + 88));
  v3 = v2 / 1.0e18 + v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10001CD3C;
  v6 = v0[5];
  v5 = v0[6];
  v7.n128_f64[0] = v3;

  return v9(v6, v5, v7);
}

uint64_t sub_10001CD3C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10001CE5C, v3, v2);
}

uint64_t sub_10001CE5C()
{

  type metadata accessor for PlaybackProgressView();
  sub_1000187E4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001CF0C(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100003344(&qword_10002D370);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_100003344(&qword_10002D378);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D054()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001D094()
{
  result = qword_10002D338;
  if (!qword_10002D338)
  {
    sub_1000050A8(&qword_10002D330);
    sub_100005264(&qword_10002D340, &qword_10002D348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D338);
  }

  return result;
}

unint64_t sub_10001D144()
{
  result = qword_10002D350;
  if (!qword_10002D350)
  {
    sub_1000050A8(&qword_10002D328);
    sub_100005264(&qword_10002D358, &qword_10002D360);
    sub_10001DD80(&qword_10002CA20, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D350);
  }

  return result;
}

uint64_t sub_10001D22C(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002D330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001D2A0()
{
  result = qword_10002D380;
  if (!qword_10002D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D380);
  }

  return result;
}

void *sub_10001D2F4(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003344(&qword_10002D398);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10001DD80(&qword_10002D3A0, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10001DD80(&qword_10002D3A8, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10001D680()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for PlaybackProgressView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  swift_unknownObjectRelease();
  v6 = v0 + v4;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  v7 = *(v2 + 48);
  sub_100003344(qword_10002D260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v2 + 52);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001D854(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for PlaybackProgressView() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100003568;

  return sub_10001CB40(a1, v8, v9, v10, v11, v1 + v7, v5, v4);
}

uint64_t sub_10001D98C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for PlaybackProgressView() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t sub_10001DA3C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for GeometryProxy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = type metadata accessor for PlaybackProgressView();
  v8 = *(*(v7 - 8) + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  (*(v3 + 8))(v0 + v5, v2);
  v11 = v0 + v9;
  (*(*(v1 - 8) + 8))(v0 + v9, v1);

  v12 = *(v7 + 48);
  sub_100003344(qword_10002D260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for LayoutDirection();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = *(v7 + 52);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);

  return _swift_deallocObject(v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_10001DC90(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for PlaybackProgressView() - 8);
  v9 = v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10001AB50(a1, v1 + v6, v9, v3, v4);
}

uint64_t sub_10001DD80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DDC8()
{
  type metadata accessor for PlaybackProgressView();

  return sub_10001AD44();
}

unint64_t sub_10001DE54()
{
  result = qword_10002D438;
  if (!qword_10002D438)
  {
    sub_1000050A8(&qword_10002D430);
    sub_100005264(&qword_10002D440, &qword_10002D448);
    sub_100005264(&qword_10002D450, &qword_10002D458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D438);
  }

  return result;
}

uint64_t sub_10001DF38()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PlaybackProgressView();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = v0 + v5;
  (*(*(v1 - 8) + 8))(v0 + v5, v1);

  v7 = *(v2 + 48);
  sub_100003344(qword_10002D260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v2 + 52);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_10001E104()
{
  type metadata accessor for PlaybackProgressView();

  return sub_10001B074();
}

uint64_t sub_10001E258()
{
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10001E2FC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  return sub_10001F28C(v5 + v3, a1);
}

double sub_10001E3C4()
{
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + 32);
  v3 = *(v0 + 32);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 >= v1)
  {
    v4 = 0.88;
    v2 = (v0 + 24);
  }

  else
  {
    v4 = 0.5;
  }

  return *v2 * v4;
}

uint64_t sub_10001E52C(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Image.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 16) = a1;
}

uint64_t sub_10001E694(uint64_t a1)
{
  v3 = sub_100003344(&qword_10002CA78);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  sub_10001F28C(v1 + v6, v5);
  v7 = sub_10001F368(v5, a1);
  sub_100003750(v5, &qword_10002CA78);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_10001F658(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_100003750(a1, &qword_10002CA78);
}

uint64_t sub_10001E878@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_10001E950(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

double sub_10001E98C()
{
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

__n128 sub_10001EA2C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_10001EAFC(double a1, double a2)
{
  if (*(v2 + 24) == a1 && *(v2 + 32) == a2)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10001EC1C(uint64_t result, double a2, double a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t sub_10001EC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  return sub_10001F28C(v3 + v4, a2);
}

uint64_t sub_10001ECEC(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002CA78);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10001F28C(a1, &v6 - v3);
  return sub_10001E694(v4);
}

uint64_t sub_10001ED80(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  swift_beginAccess();
  sub_10001F658(a2, a1 + v4);
  return swift_endAccess();
}

double *sub_10001EDEC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100003344(&qword_10002CA78);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  v4[2] = 0.0;
  v4[3] = 0.0;
  v4[4] = 0.0;
  v13 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork;
  v14 = type metadata accessor for Artwork();
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  ObservationRegistrar.init()();
  if (v5[3] == a3 && v5[4] == a4)
  {
    v5[3] = a3;
    v5[4] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v18[-4] = v5;
    *&v18[-3] = a3;
    *&v18[-2] = a4;
    v18[1] = v5;
    sub_10001F6EC(&qword_10002C820, type metadata accessor for ArtworkViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_10001F28C(a1, v12);
  sub_10001E694(v12);
  sub_10001E52C(a2);
  sub_100003750(a1, &qword_10002CA78);
  return v5;
}

uint64_t sub_10001F000()
{

  sub_100003750(v0 + OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel__artwork, &qword_10002CA78);
  v1 = OBJC_IVAR____TtC16AdaptiveMusicApp16ArtworkViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArtworkViewModel()
{
  result = qword_10002D4B8;
  if (!qword_10002D4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001F118()
{
  sub_10001F1F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001F1F8()
{
  if (!qword_10002D4C8)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10002D4C8);
    }
  }
}

__n128 sub_10001F27C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

uint64_t sub_10001F28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002CA78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F32C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_10001F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003344(&qword_10002CA78);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100003344(&qword_10002D1A0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10001F28C(a1, &v21 - v13);
  sub_10001F28C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10001F28C(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10001F6EC(&qword_10002D1A8, &type metadata accessor for Artwork);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100003750(v14, &qword_10002CA78);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100003750(v14, &qword_10002D1A0);
    v17 = 1;
    return v17 & 1;
  }

  sub_100003750(v14, &qword_10002CA78);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10001F658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002CA78);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F6EC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10001F778()
{
  v0 = [objc_allocWithZone(MPVolumeView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  if (!v0)
  {
    v0 = [objc_allocWithZone(MPVolumeView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v1 = v0;
  [v0 setAlpha:0.9];
  return v1;
}

uint64_t sub_10001F804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002031C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001F868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002031C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001F8CC()
{
  sub_10002031C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10001F8F4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_100003344(&qword_10002D578);
  v2 = __chkstk_darwin(v1 - 8);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v40 = &v40 - v4;
  v5 = sub_100003344(&qword_10002CA70);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for SymbolVariants();
  v43 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003344(&qword_10002D580);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v45 = &v40 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v40 - v19;
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v49 = Image.init(systemName:)();
  static SymbolVariants.fill.getter();
  View.symbolVariant(_:)();
  v23 = *(v9 + 8);
  v42 = v9 + 8;
  v44 = v23;
  v23(v11, v8);

  v24 = static HierarchicalShapeStyle.secondary.getter();
  v41 = sub_100003344(&qword_10002D588);
  *&v22[*(v41 + 36)] = v24;
  static Font.Weight.semibold.getter();
  v25 = type metadata accessor for Font.Design();
  v26 = *(*(v25 - 8) + 56);
  v26(v7, 1, 1, v25);
  v27 = static Font.system(size:weight:design:)();
  sub_100003750(v7, &qword_10002CA70);
  KeyPath = swift_getKeyPath();
  v29 = &v22[*(v13 + 44)];
  *v29 = KeyPath;
  v29[1] = v27;
  sub_10001FFF8();
  View.accessibilityIdentifier(_:)();
  v49 = Image.init(systemName:)();
  static SymbolVariants.fill.getter();
  View.symbolVariant(_:)();
  v44(v11, v43);

  *&v20[*(v41 + 36)] = static HierarchicalShapeStyle.secondary.getter();
  static Font.Weight.semibold.getter();
  v26(v7, 1, 1, v25);
  v30 = static Font.system(size:weight:design:)();
  sub_100003750(v7, &qword_10002CA70);
  v31 = swift_getKeyPath();
  v32 = &v20[*(v13 + 44)];
  *v32 = v31;
  v32[1] = v30;
  v33 = v45;
  sub_10002004C(v22, v45);
  v34 = v40;
  v35 = v47;
  sub_1000200BC(v40, v47);
  v36 = v46;
  sub_10002004C(v20, v46);
  v37 = v48;
  sub_10002004C(v33, v48);
  v38 = sub_100003344(&qword_10002D598);
  sub_1000200BC(v35, v37 + *(v38 + 48));
  sub_10002004C(v36, v37 + *(v38 + 64));
  sub_10002012C(v20);
  sub_100003750(v34, &qword_10002D578);
  sub_10002012C(v22);
  sub_10002012C(v36);
  sub_100003750(v35, &qword_10002D578);
  return sub_10002012C(v33);
}

uint64_t sub_10001FE58@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v2 = sub_100003344(&qword_10002D560);
  sub_10001F8F4(a1 + *(v2 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = (a1 + *(sub_100003344(&qword_10002D568) + 36));
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v4 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100003344(&qword_10002D570);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_10001FF48@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001FF74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10001FFF8()
{
  result = qword_10002D590;
  if (!qword_10002D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D590);
  }

  return result;
}

uint64_t sub_10002004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002D580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000200BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003344(&qword_10002D578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002012C(uint64_t a1)
{
  v2 = sub_100003344(&qword_10002D580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000201A8()
{
  result = qword_10002D5A0;
  if (!qword_10002D5A0)
  {
    sub_1000050A8(&qword_10002D570);
    sub_100020260();
    sub_100005264(&qword_10002C998, &qword_10002C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D5A0);
  }

  return result;
}

unint64_t sub_100020260()
{
  result = qword_10002D5A8;
  if (!qword_10002D5A8)
  {
    sub_1000050A8(&qword_10002D568);
    sub_100005264(&qword_10002D5B0, &qword_10002D5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D5A8);
  }

  return result;
}

unint64_t sub_10002031C()
{
  result = qword_10002D5C0;
  if (!qword_10002D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D5C0);
  }

  return result;
}