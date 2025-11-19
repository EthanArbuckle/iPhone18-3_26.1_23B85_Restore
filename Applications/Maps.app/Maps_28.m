uint64_t sub_100351154()
{

  sub_10004E3D0(v0 + 48);

  sub_1001F12E8(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  v1 = OBJC_IVAR____TtC4Maps9PlaceItem___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003511F0()
{
  sub_100351154();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaceItem()
{
  result = qword_10191AB40;
  if (!qword_10191AB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10035129C()
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

uint64_t sub_100351360(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10035137C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003513C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100351408(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100351430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101918E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003514CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v61 = sub_1000CE6B8(&qword_10191AC20);
  __chkstk_darwin(v61);
  v48 = &v44 - v3;
  v56 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v56);
  v51 = (&v44 - v4);
  v5 = sub_1000CE6B8(&qword_10191D860);
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v44 - v8;
  v58 = sub_1000CE6B8(&qword_10191AC28);
  __chkstk_darwin(v58);
  v59 = &v44 - v9;
  v52 = sub_1000CE6B8(&qword_10191AC30);
  __chkstk_darwin(v52);
  v11 = &v44 - v10;
  v57 = sub_1000CE6B8(&qword_10191AC38);
  __chkstk_darwin(v57);
  v55 = &v44 - v12;
  v53 = type metadata accessor for EmptyStateView();
  v46 = *(v53 - 8);
  __chkstk_darwin(v53);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for EmptyStateViewModel();
  v15 = *(v45 - 8);
  __chkstk_darwin(v45);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  __chkstk_darwin(v21);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v62 = a1;
  sub_100352890(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__state;
  swift_beginAccess();
  sub_1003525A4(a1 + v24, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *v23;
      __chkstk_darwin(EnumCaseMultiPayload);
      *(&v44 - 2) = v26;
      *(&v44 - 1) = a1;
      sub_1000CE6B8(&qword_10191AC40);
      sub_100352610();
      v27 = v48;
      List<>.init(content:)();

      sub_1000D2DFC(v27, v59, &qword_10191AC20);
      swift_storeEnumTagMultiPayload();
      sub_1003526E8();
      sub_1003527D0();
      _ConditionalContent<>.init(storage:)();
      return sub_100024F64(v27, &qword_10191AC20);
    }

    else
    {
      v34 = v54;
      ProgressView<>.init<>()();
      v35 = v49;
      v36 = v50;
      v37 = *(v49 + 16);
      v38 = v47;
      v37(v47, v34, v50);
      v39 = v51;
      *v51 = 0;
      *(v39 + 8) = 1;
      v40 = sub_1000CE6B8(&qword_10190A408);
      v37((v39 + *(v40 + 48)), v38, v36);
      v41 = v39 + *(v40 + 64);
      *v41 = 0;
      *(v41 + 8) = 1;
      v42 = *(v35 + 8);
      v42(v38, v36);
      sub_1000D2DFC(v39, v11, &qword_10190A2F8);
      swift_storeEnumTagMultiPayload();
      sub_100352890(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
      sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
      v43 = v55;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v43, v59, &qword_10191AC38);
      swift_storeEnumTagMultiPayload();
      sub_1003526E8();
      sub_1003527D0();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v43, &qword_10191AC38);
      sub_100024F64(v39, &qword_10190A2F8);
      return (v42)(v54, v36);
    }
  }

  else
  {
    v29 = v23;
    v30 = v45;
    (*(v15 + 32))(v20, v29, v45);
    (*(v15 + 16))(v17, v20, v30);
    EmptyStateView.init(model:)();
    v31 = v46;
    v32 = v53;
    (*(v46 + 16))(v11, v14, v53);
    swift_storeEnumTagMultiPayload();
    sub_100352890(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    v33 = v55;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v33, v59, &qword_10191AC38);
    swift_storeEnumTagMultiPayload();
    sub_1003526E8();
    sub_1003527D0();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v33, &qword_10191AC38);
    (*(v31 + 8))(v14, v32);
    return (*(v15 + 8))(v20, v30);
  }
}

uint64_t sub_100351DFC()
{

  sub_1000CE6B8(&qword_10191AC78);
  sub_1000414C8(&qword_10191AC80, &qword_10191AC78);
  sub_100352694();
  sub_100352890(&qword_10191AC88, type metadata accessor for LibraryListSavedItemCellModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100351F14@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *a3 = v5;
  a3[1] = sub_1003528D8;
  a3[2] = v6;
  v7 = v5;
}

uint64_t sub_100351F90(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100352890(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + 32);
  if (v5)
  {

    v5(a1, a2);
    return sub_1000588AC(v5);
  }

  return result;
}

uint64_t sub_100352060@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = type metadata accessor for CardHeaderSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v8 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v19._object = 0x8000000101230670;
  v9._object = 0x8000000101230640;
  v9._countAndFlagsBits = 0xD000000000000020;
  v10._countAndFlagsBits = 0x796C746E65636552;
  v10._object = 0xEE00646564644120;
  v19._countAndFlagsBits = 0xD000000000000020;
  v15[0] = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v19)._countAndFlagsBits;
  strcpy(v7, "Recently Added");
  v7[15] = -18;
  v11 = enum case for MapsDesignAccessibilityString.header(_:);
  v12 = type metadata accessor for MapsDesignAccessibilityString();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  (*(v2 + 104))(v4, enum case for CardHeaderSize.large(_:), v1);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  return LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
}

uint64_t sub_10035242C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100352890(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a2 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose);
  if (v4)
  {

    v4(a2);
    return sub_1000588AC(v4);
  }

  return result;
}

uint64_t sub_100352500@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_10191AC10);
  sub_1003514CC(v3, a1 + *(v4 + 44));
  v5 = a1 + *(sub_1000CE6B8(&qword_10191AC18) + 36);
  sub_100352060(v5);
  result = sub_1000CE6B8(&qword_101910FB8);
  *(v5 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1003525A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryRecentlyAddedViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100352610()
{
  result = qword_10191AC48;
  if (!qword_10191AC48)
  {
    sub_1000D6664(&qword_10191AC40);
    sub_100352694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AC48);
  }

  return result;
}

unint64_t sub_100352694()
{
  result = qword_10191AC50;
  if (!qword_10191AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AC50);
  }

  return result;
}

unint64_t sub_1003526E8()
{
  result = qword_10191AC58;
  if (!qword_10191AC58)
  {
    sub_1000D6664(&qword_10191AC38);
    sub_100352890(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AC58);
  }

  return result;
}

unint64_t sub_1003527D0()
{
  result = qword_10191AC60;
  if (!qword_10191AC60)
  {
    sub_1000D6664(&qword_10191AC20);
    sub_1000414C8(&qword_10191AC68, &qword_10191AC70);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AC60);
  }

  return result;
}

uint64_t sub_100352890(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003528E0()
{
  result = qword_10191AC90;
  if (!qword_10191AC90)
  {
    sub_1000D6664(&qword_10191AC18);
    sub_1000414C8(&qword_10191AC98, &unk_10191ACA0);
    sub_1000414C8(&qword_101911018, &qword_101910FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AC90);
  }

  return result;
}

uint64_t sub_100352B4C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_100359D28(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_100352C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  v5 = *(v3 + 24);
  *(a2 + 8) = v5;
  return sub_100359D28(v4, v5);
}

uint64_t sub_100352CB8()
{
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352D8C()
{
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_100352E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_100352EFC(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100353000()
{
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003530B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100353100()
{
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003531B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_100353200()
{
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003532B4()
{
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_100353368()
{
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10035340C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
}

uint64_t sub_1003534B8(uint64_t a1)
{
  if (!*(v1 + 104))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 104) = a1;
}

uint64_t sub_100353640()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Will become current. Cancelling pending task.", v7, 2u);
  }

  swift_getKeyPath();
  v13[1] = v1;
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 104))
  {

    Task.cancel()();
  }

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v1;
  v11 = sub_10020AAE4(0, 0, v4, &unk_1011FD058, v10);
  return sub_1003534B8(v11);
}

uint64_t sub_100353890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1000CE6B8(&qword_10191AE90);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1000CE6B8(&qword_10191AE98);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_1000CE6B8(&qword_10191AEA0);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v9;
  v4[22] = v8;

  return _swift_task_switch(sub_100353A64, v9, v8);
}

uint64_t sub_100353A64()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_100353A88, v1, 0);
}

uint64_t sub_100353A88()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_1000CE6B8(&qword_101915278);
  (*(v2 + 104))(v1, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  v4 = v0[21];
  v5 = v0[22];

  return _swift_task_switch(sub_100353B6C, v4, v5);
}

uint64_t sub_100353B6C()
{
  AsyncThrowingStream.makeAsyncIterator()();
  v1 = OBJC_IVAR____TtC4Maps19ARPHistoryViewModel___observationRegistrar;
  v0[24] = OBJC_IVAR____TtC4Maps19ARPHistoryViewModel_logger;
  v0[25] = v1;
  v2 = static MainActor.shared.getter();
  v0[26] = v2;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_100353C50;
  v4 = v0[10];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, v2, &protocol witness table for MainActor, v4, v0 + 3);
}

uint64_t sub_100353C50()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1003541B4;
  }

  else
  {
    v5 = sub_100353D74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100353D74()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Received reviewed places", v4, 2u);
    }

    v5 = sub_100359088(v1);

    v6 = v0[9];
    if (*(v5 + 2))
    {
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      *(v7 + 32) = 1;
      v0[5] = v6;
      sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_getKeyPath();
      v0[6] = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[7] = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v13 = *(v6 + 32);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        __break(1u);
        return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, v9, v10, v11, v12);
      }

      v16 = v0[9];
      *(v16 + 32) = v15;
      v0[8] = v16;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    else
    {

      swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v6;
      *(v22 + 24) = 0;
      *(v22 + 32) = 2;
      v0[4] = v6;
      sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v23 = static MainActor.shared.getter();
    v0[26] = v23;
    v24 = swift_task_alloc();
    v0[27] = v24;
    *v24 = v0;
    v24[1] = sub_100353C50;
    v11 = v0[10];
    v10 = &protocol witness table for MainActor;
    v12 = v0 + 3;
    v8 = (v0 + 2);
    v9 = v23;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, v9, v10, v11, v12);
  }

  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[10];

  (*(v18 + 8))(v17, v19);
  (*(v0[17] + 8))(v0[18], v0[16]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1003541B4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received error with fetching reviewed places %@", v6, 0xCu);
    sub_1000DCD10(v7);
  }

  sub_100359B9C();

  (*(v0[17] + 8))(v0[18], v0[16]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10035435C()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "did resign current", v4, 2u);
  }

  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 104))
  {

    Task.cancel()();
  }

  return result;
}

uint64_t sub_1003544A8(uint64_t a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Selecting reviewed place.", v6, 2u);
  }

  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v2 + 56);
  if (v8)
  {

    v8(a1);
    return sub_1000588AC(v8);
  }

  return result;
}

uint64_t sub_1003545F4()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Selecting view privacy terms.", v4, 2u);
  }

  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 72);
  if (v6)
  {

    v6(v1);
    return sub_1000588AC(v6);
  }

  return result;
}

uint64_t sub_100354734()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Selecting view offline settings.", v4, 2u);
  }

  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 88);
  if (v6)
  {

    v6(v1);
    return sub_1000588AC(v6);
  }

  return result;
}

uint64_t sub_100354874()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Close card.", v4, 2u);
  }

  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 40);
  if (v6)
  {

    v6(v1);
    return sub_1000588AC(v6);
  }

  return result;
}

uint64_t sub_1003549B4()
{
  sub_100359D3C(*(v0 + 16), *(v0 + 24));
  sub_1000588AC(*(v0 + 40));
  sub_1000588AC(*(v0 + 56));
  sub_1000588AC(*(v0 + 72));
  sub_1000588AC(*(v0 + 88));

  v1 = OBJC_IVAR____TtC4Maps19ARPHistoryViewModel_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps19ARPHistoryViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100354A90()
{
  sub_1003549B4();

  return swift_deallocClassInstance();
}

uint64_t sub_100354AE8()
{
  v1 = v0;
  *(v0 + 16) = 1;
  *(v0 + 24) = 2;
  type metadata accessor for ARPHistoryDataProvider();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  swift_allocObject();
  *(v0 + 112) = sub_10016F0C8();
  v2 = OBJC_IVAR____TtC4Maps19ARPHistoryViewModel_logger;
  if (qword_101906780 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100021540(v3, qword_10191AD08);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  ObservationRegistrar.init()();
  return v1;
}

void sub_100354BE8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7961646F74;
  v4 = 0xE900000000000068;
  v5 = 0x746E6F4D7473616CLL;
  if (*v1 != 2)
  {
    v5 = 0x726574616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6B6565577473616CLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100354C64()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10191AD08);
  sub_100021540(v0, qword_10191AD08);
  return Logger.init(subsystem:category:)();
}

uint64_t UGCRefinedReviewedPlace.title.getter()
{
  v1 = [v0 mapItem];
  v2 = [v1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t UGCRefinedReviewedPlace.richTextViews.getter()
{
  v1 = v0;
  v45 = type metadata accessor for RichTextType();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for RichTextViewModel();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v41 - v7;
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v14 = qword_1019600D8;
  v47._object = 0x8000000101230790;
  v15._countAndFlagsBits = 0x7461722072756F59;
  v15._object = 0xEB00000000676E69;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v16._object = 0x8000000101230770;
  v47._countAndFlagsBits = 0xD000000000000048;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v15, v47);
  v17 = [v1 reviewedPlace];
  v18 = [v17 recommendState];

  if (v18)
  {
    if (v18 == 1)
    {
      v19 = v45;
      (*(v2 + 104))(v4, enum case for RichTextType.userRatedDown(_:), v45);
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      (*(v2 + 8))(v4, v19);
      v20 = sub_100097978(0, 1, 1, _swiftEmptyArrayStorage, &qword_10190A070, &unk_1011E78E0, &type metadata accessor for RichTextViewModel);
      v22 = v20[2];
      v21 = v20[3];
      v23 = v44;
      if (v22 >= v21 >> 1)
      {
        v20 = sub_100097978(v21 > 1, v22 + 1, 1, v20, &qword_10190A070, &unk_1011E78E0, &type metadata accessor for RichTextViewModel);
      }

      v20[2] = v22 + 1;
      (*(v46 + 32))(v20 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v22, v10, v23);
    }

    else
    {
      if (v18 != 2)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v24 = v45;
      (*(v2 + 104))(v4, enum case for RichTextType.userRatedUp(_:), v45);
      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      (*(v2 + 8))(v4, v24);
      v20 = sub_100097978(0, 1, 1, _swiftEmptyArrayStorage, &qword_10190A070, &unk_1011E78E0, &type metadata accessor for RichTextViewModel);
      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        v20 = sub_100097978(v25 > 1, v26 + 1, 1, v20, &qword_10190A070, &unk_1011E78E0, &type metadata accessor for RichTextViewModel);
      }

      v20[2] = v26 + 1;
      v27 = v13;
      v23 = v44;
      (*(v46 + 32))(v20 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v26, v27, v44);
    }
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
    v23 = v44;
  }

  v28 = [v1 reviewedPlace];
  v29 = [v28 numberOfPhotosAdded];

  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();
    v32 = [v14 localizedStringForKey:v30 value:v31 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000CE6B8(&unk_10190D5C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1011E1D30;
    *(v33 + 56) = &type metadata for UInt;
    *(v33 + 64) = &protocol witness table for UInt;
    *(v33 + 32) = v29;
    static String.localizedStringWithFormat(_:_:)();

    v34 = *(v2 + 104);
    v35 = (v2 + 8);
    v36 = v45;
    if (v20[2])
    {
      v34(v4, enum case for RichTextType.line(_:), v45);
      v37 = v43;
    }

    else
    {
      v34(v4, enum case for RichTextType.userPhoto(_:), v45);
      v37 = v42;
    }

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*v35)(v4, v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100097978(0, v20[2] + 1, 1, v20, &qword_10190A070, &unk_1011E78E0, &type metadata accessor for RichTextViewModel);
    }

    v39 = v20[2];
    v38 = v20[3];
    if (v39 >= v38 >> 1)
    {
      v20 = sub_100097978(v38 > 1, v39 + 1, 1, v20, &qword_10190A070, &unk_1011E78E0, &type metadata accessor for RichTextViewModel);
    }

    v20[2] = v39 + 1;
    (*(v46 + 32))(v20 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39, v37, v23);
  }

  sub_1000CE6B8(&unk_1019157F0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1011E1D30;
  *(result + 32) = v20;
  return result;
}

void UGCRefinedReviewedPlace.imageProvider.getter(uint64_t a1@<X8>)
{
  v3 = [v1 mapItem];
  v4 = [v3 _styleAttributes];

  v5 = v4;
  if (v4)
  {
    goto LABEL_4;
  }

  v6 = [objc_opt_self() addressMarkerStyleAttributes];
  if (v6)
  {
    v5 = v6;
LABEL_4:
    *(a1 + 24) = &type metadata for StyleAttributesImageProvider;
    *(a1 + 32) = sub_10017F24C();
    v7 = v4;

    *a1 = v5;
    *(a1 + 8) = 0;
    return;
  }

  __break(1u);
}

uint64_t sub_1003556D8()
{
  v1 = [*v0 mapItem];
  v2 = [v1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *sub_100355784(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_101915FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003558A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF00);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003559B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100355AA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AFE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_10191AFE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100355C48()
{
  result = qword_101915270;
  if (!qword_101915270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101915270);
  }

  return result;
}

uint64_t type metadata accessor for ARPHistoryViewModel()
{
  result = qword_10191AD60;
  if (!qword_10191AD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100355CE8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100355DF0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void *sub_100355E44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191B028);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_10191B030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100355FDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191B000);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035614C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AEB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100356258(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_101909BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1003563A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003564AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003565C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003566CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&unk_101925190);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003567F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100356914(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AFF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_10190EC60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100356B90(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000CE6B8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

size_t sub_100356C8C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000CE6B8(&qword_10191B040);
  v10 = *(sub_1000CE6B8(&unk_10190EEC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000CE6B8(&unk_10190EEC0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100356E7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191B038);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100356FB0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000CE6B8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

char *sub_1003570D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_101911C58);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100357200(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_1019250E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100357354(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AFB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003574C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AFA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003575F8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000CE6B8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1003576E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AEF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10035782C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF18);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10035797C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AF58);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100357AC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF50);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100357BD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AE60);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_101924FD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100357D18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&unk_10191C280);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100357E9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191B048);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100357FC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AE68);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003581C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AEA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100358344(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_10191AF28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003584C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF78);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003585E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AF10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003586F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000CE6B8(&qword_10191AEE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100358850(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000CE6B8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

void *sub_100358994(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000CE6B8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100358B0C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000CE6B8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_100358C54(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&qword_1019219A0);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size_0(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100358D50(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&qword_10191AED0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_100358DD4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&unk_101925140);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100358E6C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&qword_101908400);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100358F08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(a3);
  v5 = swift_allocObject();
  v6 = j__malloc_size_0(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

uint64_t sub_100358F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100358FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100353890(a1, v4, v5, v6);
}

char *sub_100359088(unint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v59 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v73 = v11;
  Date.init()();
  v81 = _swiftEmptyArrayStorage;
  v82 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v80 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v62;
  v58 = v12;
  v57 = v13;
  if (v15)
  {
    v72 = v15;
    if (v15 < 1)
    {
      __break(1u);
      goto LABEL_72;
    }

    v70 = v2;
    v17 = 0;
    v78 = a1 & 0xC000000000000001;
    v67 = enum case for Calendar.Component.weekOfYear(_:);
    v65 = (v3 + 8);
    v66 = (v3 + 104);
    v77 = (v59 + 8);
    v60 = enum case for Calendar.Component.month(_:);
    v63 = _swiftEmptyArrayStorage;
    v64 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    v68 = v5;
    v69 = v6;
    v18 = v72;
    v71 = a1;
    do
    {
      if (v78)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(a1 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 reviewedPlace];
      v22 = [v21 dateOfLastEdit];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      if (Calendar.isDateInToday(_:)())
      {
        v23 = v20;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v77)(v8, v6);
        v74 = v82;
      }

      else
      {
        v75 = v20;
        v76 = v17;
        v24 = *v66;
        v25 = v70;
        (*v66)(v5, v67, v70);
        v26 = Calendar.compare(_:to:toGranularity:)();
        v27 = *v65;
        (*v65)(v5, v25);
        if (v26)
        {
          v24(v5, v60, v25);
          v28 = Calendar.compare(_:to:toGranularity:)();
          v27(v5, v25);
          v29 = v75;
          if (v28)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v6 = v69;
            v18 = v72;
            v17 = v76;
            if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (*v77)(v8, v6);
            v61 = v79;
          }

          else
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v6 = v69;
            v18 = v72;
            v17 = v76;
            if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (*v77)(v8, v6);
            v64 = v80;
          }

          a1 = v71;
          v5 = v68;
        }

        else
        {
          v30 = v75;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v6 = v69;
          (*v77)(v8, v69);
          v63 = v81;
          a1 = v71;
          v18 = v72;
          v5 = v68;
          v17 = v76;
        }
      }

      ++v17;
    }

    while (v18 != v17);
  }

  else
  {
    v63 = _swiftEmptyArrayStorage;
    v64 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
  }

  if (v74 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v73;
  v32 = v61;
  a1 = v63 >> 62;
  v16 = (v64 >> 62);
  v13 = v61 >> 62;
  if (v31 < 1)
  {
    v34 = _swiftEmptyArrayStorage;
    if (!a1)
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  if (a1)
  {
LABEL_72:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    v33 = 0;
    goto LABEL_35;
  }

LABEL_32:
  if (v16)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_34;
    }
  }

  else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

  if (v13)
  {
    v55 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v55 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v55 == 0;
LABEL_35:

  v34 = sub_1003581C0(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_1003581C0((v35 > 1), v36 + 1, 1, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[24 * v36];
  v37[32] = 0;
  *(v37 + 5) = v74;
  v37[48] = v33;
  v32 = v61;
  if (!a1)
  {
LABEL_38:
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_39;
    }

    goto LABEL_64;
  }

LABEL_63:
  if (_CocoaArrayWrapper.endIndex.getter() >= 1)
  {
LABEL_39:
    if (v16)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_41:

        v38 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_42;
        }

        goto LABEL_78;
      }
    }

    else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    if (v13)
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v54 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v54 == 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_42:
      v40 = *(v34 + 2);
      v39 = *(v34 + 3);
      if (v40 >= v39 >> 1)
      {
        v34 = sub_1003581C0((v39 > 1), v40 + 1, 1, v34);
      }

      *(v34 + 2) = v40 + 1;
      v41 = &v34[24 * v40];
      v41[32] = 1;
      *(v41 + 5) = v63;
      v41[48] = v38;
      v32 = v61;
      if (!v16)
      {
        goto LABEL_45;
      }

      goto LABEL_65;
    }

LABEL_78:
    v34 = sub_1003581C0(0, *(v34 + 2) + 1, 1, v34);
    goto LABEL_42;
  }

LABEL_64:

  if (!v16)
  {
LABEL_45:
    v42 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_46;
  }

LABEL_65:
  v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:
  v43 = v62;
  if (v42 >= 1)
  {
    if (v13)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v44 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1003581C0(0, *(v34 + 2) + 1, 1, v34);
    }

    v46 = *(v34 + 2);
    v45 = *(v34 + 3);
    if (v46 >= v45 >> 1)
    {
      v34 = sub_1003581C0((v45 > 1), v46 + 1, 1, v34);
    }

    *(v34 + 2) = v46 + 1;
    v47 = &v34[24 * v46];
    v47[32] = 2;
    *(v47 + 5) = v64;
    v47[48] = v44 == 0;
    v43 = v62;
  }

  if (v13)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v48 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v58;
  if (v48 < 1)
  {
    (*(v59 + 8))(v8, v6);
    (*(v57 + 8))(v43, v49);
  }

  else
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1003581C0(0, *(v34 + 2) + 1, 1, v34);
    }

    v51 = *(v34 + 2);
    v50 = *(v34 + 3);
    if (v51 >= v50 >> 1)
    {
      v34 = sub_1003581C0((v50 > 1), v51 + 1, 1, v34);
    }

    (*(v59 + 8))(v8, v6);
    (*(v57 + 8))(v62, v49);
    *(v34 + 2) = v51 + 1;
    v52 = &v34[24 * v51];
    v52[32] = 3;
    *(v52 + 5) = v32;
    v52[48] = 1;
  }

  return v34;
}

uint64_t sub_100359B9C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedHelper];
  [v2 isUsingForcedOfflineMaps];

  swift_getKeyPath();
  sub_100358F84(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24) >= 2u)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100359D28(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_100359D3C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_100359D50()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = *(v0 + 32);
  *(v2 + 16) = v1;
  v5 = *(v2 + 24);
  *(v2 + 24) = v4;
  sub_100359D28(v1, v4);
  return sub_100359D3C(v3, v5);
}

uint64_t sub_100359DA4(uint64_t a1, int a2)
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

uint64_t sub_100359DEC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ARPHistoryViewModel.HistoryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ARPHistoryViewModel.HistoryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100359FC4()
{
  result = qword_10191B058;
  if (!qword_10191B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B058);
  }

  return result;
}

uint64_t type metadata accessor for UserGuideItemRowViewModel()
{
  result = qword_10191B0C0;
  if (!qword_10191B0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035A0A4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100281E58();
    if (v1 <= 0x3F)
    {
      sub_10017F3EC();
      if (v2 <= 0x3F)
      {
        sub_10005B95C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UserGuideItem();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10035A1B8()
{
  v1 = *(v0 + *(type metadata accessor for UserGuideItemRowViewModel() + 36)) + OBJC_IVAR____TtC4Maps13UserGuideItem_type;
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    v8 = [v2 name];
    if (v8)
    {
      v4 = v8;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v2;
      v7 = 0;
      goto LABEL_6;
    }

    v9 = v2;
    v10 = 0;
LABEL_9:
    sub_1000F0B8C(v9, v10);
    return 0;
  }

  v3 = [swift_unknownObjectRetain() name];
  if (!v3)
  {
    v9 = v2;
    v10 = 1;
    goto LABEL_9;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v2;
  v7 = 1;
LABEL_6:
  sub_1000F0B8C(v6, v7);

  return v5;
}

double sub_10035A2AC()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RichTextViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for UserGuideItemRowViewModel();
  if (*(v1 + *(v13 + 24) + 8))
  {
    v22 = v9;
    v23 = v6;
    (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v3 + 8))(v5, v2);
    v14 = sub_100355BD8(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_100355BD8(v15 > 1, v16 + 1, 1, v14);
    }

    v14[2] = v16 + 1;
    v17 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16;
    v6 = v23;
    (*(v7 + 32))(v17, v12, v23);
    v9 = v22;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (*(v1 + *(v13 + 28) + 8))
  {
    (*(v3 + 104))(v5, enum case for RichTextType.hours(_:), v2);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v3 + 8))(v5, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100355BD8(0, v14[2] + 1, 1, v14);
    }

    v19 = v14[2];
    v18 = v14[3];
    if (v19 >= v18 >> 1)
    {
      v14 = sub_100355BD8(v18 > 1, v19 + 1, 1, v14);
    }

    v14[2] = v19 + 1;
    (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v9, v6);
  }

  sub_1000CE6B8(&unk_1019157F0);
  v20 = swift_allocObject();
  *&result = 1;
  *(v20 + 16) = xmmword_1011E1D30;
  *(v20 + 32) = v14;
  return result;
}

uint64_t sub_10035A688()
{
  v51 = type metadata accessor for MapsDesignAccessibilityString();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = (v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = type metadata accessor for CellAction.Style();
  v52 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CellAction.Placement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v31 - v9;
  sub_1000CE6B8(&unk_101923750);
  v11 = *(type metadata accessor for CellAction() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v47 = *(v11 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E1D60;
  v14 = (v0 + *(type metadata accessor for UserGuideItemRowViewModel() + 32));
  v16 = *v14;
  v15 = v14[1];
  v17 = v6[13];
  LODWORD(v44) = enum case for CellAction.Placement.default(_:);
  v36 = v5;
  v42 = v17;
  v43 = v6 + 13;
  v17(v10);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v49 = v13 + v12;
  v41.super.isa = qword_1019600D8;
  v53._object = 0x800000010121C800;
  v18._countAndFlagsBits = 0x7972617262694C5BLL;
  v18._object = 0xEF6572616853205DLL;
  v19._countAndFlagsBits = 0x6572616853;
  v53._countAndFlagsBits = 0xD00000000000002ELL;
  v19._object = 0xE500000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v19, v53);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;
  v31[1] = "Swipe action for share";
  v21 = swift_allocObject();
  v45 = v13;
  v40 = v16;
  *(v21 + 16) = v16;
  *(v21 + 24) = v15;
  *(v21 + 32) = 2;
  v22 = *(v52 + 104);
  v52 += 104;
  v39 = v22;
  v22(v4, enum case for CellAction.Style.default(_:), v2);
  v37 = v6[2];
  v38 = v2;
  v32 = v15;
  v23 = v36;
  v37(v50, v10, v36);
  v24 = v46;
  *v46 = 0x6572616853;
  v24[1] = 0xE500000000000000;
  v35 = enum case for MapsDesignAccessibilityString.button(_:);
  v31[0] = v4;
  v48 = *(v48 + 104);
  (v48)(v24);

  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v25 = v6[1];
  object = v6 + 1;
  countAndFlagsBits = v25;
  v25(v10, v23);
  v42(v10, v44, v23);
  v54._object = 0x8000000101224A90;
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v26._object = 0x8000000101224A50;
  v27._object = 0x8000000101224A70;
  v54._countAndFlagsBits = 0xD00000000000003BLL;
  v27._countAndFlagsBits = 0xD000000000000011;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v41, v27, v54)._object;
  v28 = swift_allocObject();
  v29 = v32;
  *(v28 + 16) = v40;
  *(v28 + 24) = v29;
  *(v28 + 32) = 7;
  v39(v31[0], enum case for CellAction.Style.destructive(_:), v38);
  v37(v50, v10, v23);
  *v24 = 0xD000000000000011;
  v24[1] = 0x80000001012249C0;
  (v48)(v24, v35, v51);

  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  countAndFlagsBits(v10, v23);
  return v45;
}

uint64_t sub_10035AD10()
{
  v47 = type metadata accessor for MapsDesignAccessibilityString();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = (v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for CellAction.Style();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v3 = (v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CellAction.Placement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  sub_1000CE6B8(&unk_101923750);
  v10 = *(type metadata accessor for CellAction() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v41 = *(v10 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1011E1D60;
  v13 = (v0 + *(type metadata accessor for UserGuideItemRowViewModel() + 32));
  v14 = *v13;
  v15 = v13[1];
  v16 = v5[13];
  LODWORD(object) = enum case for CellAction.Placement.default(_:);
  v37 = v16;
  v38 = (v5 + 13);
  v16(v9);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v40 = v12;
  v45 = v12 + v11;
  v34.super.isa = qword_1019600D8;
  v49._object = 0x800000010121D3F0;
  v17._countAndFlagsBits = 0x6570697753776F52;
  v17._object = 0xEF6574656C65445FLL;
  v18._countAndFlagsBits = 0x6574656C6544;
  v49._countAndFlagsBits = 0xD000000000000036;
  v18._object = 0xE600000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v18, v49);
  countAndFlagsBits = v19._countAndFlagsBits;
  v29[1] = v19._object;
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v15;
  *(v20 + 32) = 11;
  v21 = *(v48 + 104);
  v48 += 104;
  v36 = v21;
  v21(v3, enum case for CellAction.Style.destructive(_:), v46);
  v30 = v15;
  v31 = v14;
  v35 = v5[2];
  v35(v44, v9, v4);
  v23 = v42;
  v22 = v43;
  *v42 = 0x65442E6570697753;
  v23[1] = 0xEC0000006574656CLL;
  v33 = enum case for MapsDesignAccessibilityString.button(_:);
  v43 = *(v22 + 13);
  v43(v23);

  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  countAndFlagsBits = v5[1];
  countAndFlagsBits(v9, v4);
  v37(v9, object, v4);
  v50._object = 0x800000010121D3B0;
  v24._object = 0xEE0065726168535FLL;
  v25._countAndFlagsBits = 0x6572616853;
  v50._countAndFlagsBits = 0xD000000000000016;
  v24._countAndFlagsBits = 0x6570697753776F52;
  v25._object = 0xE500000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v34, v25, v50);
  v38 = "Swipe action for share";
  object = v26._object;
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  *(v27 + 24) = v30;
  *(v27 + 32) = 10;

  *v3 = static Color.blue.getter();
  v36(v3, enum case for CellAction.Style.tintable(_:), v46);
  v35(v44, v9, v4);
  *v23 = 0x68532E6570697753;
  v23[1] = 0xEB00000000657261;
  (v43)(v23, v33, v47);
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  countAndFlagsBits(v9, v4);
  return v40;
}

uint64_t sub_10035B398()
{
  sub_1000CE6B8(&unk_10190D580);
  type metadata accessor for TrailingAccessoryViewModel();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1011E1D30;
  sub_10035A688();
  static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();

  return v0;
}

uint64_t sub_10035B4C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035B50C()
{
  swift_getKeyPath();
  sub_10035B878();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10035B580()
{
  swift_getKeyPath();
  sub_10035B878();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10035B604()
{
  swift_getKeyPath();
  sub_10035B878();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10035B688(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
}

uint64_t sub_10035B6C4()
{
  sub_1000588AC(*(v0 + 16));
  sub_1000588AC(*(v0 + 32));

  v1 = OBJC_IVAR____TtC4Maps35VisitHistoryCategoryPickerViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitHistoryCategoryPickerViewModel()
{
  result = qword_10191B138;
  if (!qword_10191B138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10035B7CC()
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

unint64_t sub_10035B878()
{
  result = qword_1019160E8;
  if (!qword_1019160E8)
  {
    type metadata accessor for VisitHistoryCategoryPickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019160E8);
  }

  return result;
}

uint64_t sub_10035B8D0()
{
  v0 = sub_1000CE6B8(&qword_10191B218);
  sub_100021578(v0, qword_1019600F8);
  sub_100021540(v0, qword_1019600F8);
  type metadata accessor for PinnedItemsRowCollectionViewListCell();
  type metadata accessor for HomePinnedItemCarouselViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

id sub_10035B960(char *a1, uint64_t a2, void **a3)
{
  v5 = sub_1000CE6B8(&qword_10191B220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-1] - v7;
  v9 = *a3;
  v10 = OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_viewModel;
  v11 = *&a1[OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_viewModel];
  *&a1[OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_viewModel] = *a3;
  if (!v11)
  {
    v15 = v9;
    v16 = v9;
    if (!v9)
    {
LABEL_7:

      goto LABEL_8;
    }

LABEL_5:
    v20 = &v20;
    __chkstk_darwin(v15);
    *(&v20 - 2) = v16;
    *(&v20 - 1) = a1;
    type metadata accessor for HomePinnedItemRowView();
    sub_10035BD20(&qword_10191B228, type metadata accessor for HomePinnedItemRowView);
    v17 = v16;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v21[3] = v5;
    v21[4] = sub_10035BD68();
    sub_10001A848(v21);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();

LABEL_8:
    goto LABEL_9;
  }

  type metadata accessor for HomePinnedItemCarouselViewModel();
  v12 = v9;
  v13 = v11;
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    v16 = *&a1[v10];
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_9:
  v18 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityIdentifier:v18];

  return [a1 setAccessibilityTraits:UIAccessibilityTraitButton];
}

uint64_t sub_10035BC0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906788 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_10191B218);
  v3 = sub_100021540(v2, qword_1019600F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10035BCC0(uint64_t a1)
{
  result = sub_10035BD20(&qword_10191B210, type metadata accessor for HomePinnedItemCarouselViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10035BD20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10035BD68()
{
  result = qword_10191B230;
  if (!qword_10191B230)
  {
    sub_1000D6664(&qword_10191B220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B230);
  }

  return result;
}

uint64_t sub_10035BE10(uint64_t a1)
{
  sub_1000D2DFC(a1, v8, &unk_101908380);
  if (!v9)
  {
    sub_100024F64(v8, &unk_101908380);
    return 0;
  }

  type metadata accessor for MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryViewKey();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey_width);
  v3 = *(v1 + OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey_width + 8);
  v4 = *&v7[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey_width];
  v5 = v7[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey_width + 8];

  result = v5;
  if ((v3 & 1) == 0)
  {
    return (v2 == v4) & ~v5;
  }

  return result;
}

uint64_t sub_10035C1A8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000CE6B8(&unk_101926870);
  __chkstk_darwin(v39);
  v6 = &v37 - v5;
  sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(a1);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v21 = __chkstk_darwin(v18);
  v22 = &v37 - v20;
  if (v19)
  {
    v23 = [v19 uniqueRouteID];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = *(v3 + 56);
      v25(v17, 0, 1, v2);
    }

    else
    {
      v25 = *(v3 + 56);
      v25(v17, 1, 1, v2);
    }

    sub_100351430(v17, v22);
  }

  else
  {
    v25 = *(v3 + 56);
    (v25)(&v37 - v20, 1, 1, v2, v21);
  }

  v26 = *(v40 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route);
  v27 = v8;
  if (v26)
  {
    v28 = [v26 uniqueRouteID];
    if (v28)
    {
      v29 = v28;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v25(v11, v30, 1, v2);
    sub_100351430(v11, v14);
  }

  else
  {
    v25(v14, 1, 1, v2);
  }

  v31 = *(v39 + 48);
  sub_1000D2DFC(v22, v6, &unk_101918E50);
  sub_1000D2DFC(v14, &v6[v31], &unk_101918E50);
  v32 = *(v3 + 48);
  if (v32(v6, 1, v2) == 1)
  {
    sub_100024F64(v14, &unk_101918E50);
    sub_100024F64(v22, &unk_101918E50);
    if (v32(&v6[v31], 1, v2) == 1)
    {
      return sub_100024F64(v6, &unk_101918E50);
    }

    goto LABEL_18;
  }

  sub_1000D2DFC(v6, v27, &unk_101918E50);
  if (v32(&v6[v31], 1, v2) == 1)
  {
    sub_100024F64(v14, &unk_101918E50);
    sub_100024F64(v22, &unk_101918E50);
    (*(v3 + 8))(v27, v2);
LABEL_18:
    result = sub_100024F64(v6, &unk_101926870);
LABEL_19:
    *(v40 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
    return result;
  }

  v34 = v38;
  (*(v3 + 32))(v38, &v6[v31], v2);
  sub_10035F680(&qword_101916EA8, &type metadata accessor for UUID);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v3 + 8);
  v36(v34, v2);
  sub_100024F64(v14, &unk_101918E50);
  sub_100024F64(v22, &unk_101918E50);
  v36(v27, v2);
  result = sub_100024F64(v6, &unk_101918E50);
  if ((v35 & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10035C7F8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!a1)
  {
    if (!result)
    {
      return result;
    }

    result = swift_unknownObjectRelease();
    goto LABEL_7;
  }

  if (!result || (v4 = result, result = swift_unknownObjectRelease(), v4 != a1))
  {
LABEL_7:
    *(v1 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }

  return result;
}

id sub_10035CA98()
{
  v0 = [objc_allocWithZone(NSCache) init];
  result = [v0 setCountLimit:20];
  qword_10191B240 = v0;
  return result;
}

id sub_10035CAE8()
{
  *&v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight] = 0;
  v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_showPreviewRouteButton] = 0;
  *&v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_autoSharingContacts] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType] = 0;
  v1 = &v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth];
  *v1 = 0;
  v1[8] = 1;
  v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty] = 1;
  *&v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__accessoryViewUnavailableWidth] = 0x405A000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MapsRoutePlanningCell();
  return objc_msgSendSuper2(&v3, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

id sub_10035CBDC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight] = 0;
  v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_showPreviewRouteButton] = 0;
  *&v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_autoSharingContacts] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType] = 0;
  v9 = &v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth];
  *v9 = 0;
  v9[8] = 1;
  v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty] = 1;
  *&v4[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__accessoryViewUnavailableWidth] = 0x405A000000000000;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MapsRoutePlanningCell();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

void sub_10035CDA8()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_10191B348);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v96 - v4;
  v109 = type metadata accessor for RoutePlanningCellPrimaryActionStyle();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v96 - v8;
  v104 = type metadata accessor for UUID();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v114 = &v96 - v11;
  v12 = type metadata accessor for RoutePlanningCellViewModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v110 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AdvisoryViewModel();
  v16 = *(v15 - 8);
  v122 = v15;
  v123 = v16;
  __chkstk_darwin(v15);
  v125 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000CE6B8(&unk_10191B350);
  __chkstk_darwin(v18 - 8);
  v113 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v112 = &v96 - v21;
  __chkstk_darwin(v22);
  v119 = &v96 - v23;
  __chkstk_darwin(v24);
  v118 = &v96 - v25;
  v120 = type metadata accessor for MultiPartLabelViewModel();
  v117 = *(v120 - 8);
  __chkstk_darwin(v120);
  v111 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v116 = &v96 - v28;
  Strong = swift_unknownObjectWeakLoadStrong();
  v105 = Strong;
  if (!Strong)
  {
    v35 = &v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth];
    v36 = v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth + 8];
    *v35 = 0;
    v35[8] = 1;
    v31 = 0.0;
    if (v36)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [Strong widthForCell:v0];
  v31 = v30;
  swift_unknownObjectRelease();
  v32 = &v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth];
  v33 = *&v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth];
  v34 = v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth + 8];
  *v32 = v31;
  *(v32 + 8) = 0;
  if ((v34 & 1) != 0 || v33 != v31)
  {
LABEL_6:
    v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty] = 1;
  }

LABEL_7:
  if ((v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty] & 1) == 0)
  {
    return;
  }

  v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty] = 0;
  v37 = *&v0[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route];
  if (!v37)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  v99 = v5;
  v100 = v3;
  v38 = v37;
  v39 = [v38 primaryText];
  v115 = v38;
  if (v39)
  {
    v40 = v39;
    sub_1000CE6B8(&qword_10191B390);
    type metadata accessor for AttributedString();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v41 = v40;
    AttributedString.init(_:)();
    v38 = v115;
    MultiPartLabelViewModel.init(_:_:)();
  }

  else
  {
    MultiPartLabelViewModel.init(_:_:)();
  }

  v42 = [v38 secondaryText];
  v98 = v12;
  v101 = v13;
  if (v42)
  {
    v43 = v42;
    sub_1000CE6B8(&qword_10191B390);
    type metadata accessor for AttributedString();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v44 = v43;
    AttributedString.init(_:)();
    v45 = v118;
    v38 = v115;
    MultiPartLabelViewModel.init(_:_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = v118;
  }

  v47 = *(v117 + 56);
  v48 = 1;
  v47(v45, v46, 1, v120);
  if ([v38 transportType] != 1 && (objc_msgSend(v38, "isWalkingOnlyTransitRoute") & 1) == 0)
  {
    v49 = [v38 tertiaryText];
    if (v49)
    {
      v50 = v49;
      sub_1000CE6B8(&qword_10191B390);
      type metadata accessor for AttributedString();
      *(swift_allocObject() + 16) = xmmword_1011E1D30;
      v51 = v50;
      AttributedString.init(_:)();
      v38 = v115;
      MultiPartLabelViewModel.init(_:_:)();

      v48 = 0;
    }
  }

  v47(v119, v48, 1, v120);
  v124 = swift_allocObject();
  *(v124 + 16) = _swiftEmptyArrayStorage;
  sub_100014C84(0, &unk_101911D50);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v53 = [v1 traitCollection];
  [v53 displayScale];
  v55 = v54;

  v56 = [v38 advisoriesForAutoSharingContacts:isa scale:v55];
  if (v56)
  {
    sub_100014C84(0, &unk_101916D48);
    v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = v2;
    if (v57 >> 62)
    {
      v58 = _CocoaArrayWrapper.endIndex.getter();
      if (v58)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v58)
      {
LABEL_23:
        if (v58 < 1)
        {
          __break(1u);
          goto LABEL_50;
        }

        v59 = 0;
        v121 = v57 & 0xC000000000000001;
        do
        {
          if (v121)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v60 = *(v57 + 8 * v59 + 32);
          }

          v61 = v60;
          v62 = [v1 traitCollection];
          [v61 fetchImageForArtworkIfNeededWithTraitCollection:v62];

          v63 = [v61 image];
          v64 = [v61 text];
          v65 = [v64 string];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          [v61 showMoreButton];
          [v61 isClickable];
          AdvisoryViewModel.init(image:text:showMoreButton:interactionEnabled:)();
          v66 = *(v124 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_100357E74(0, v66[2] + 1, 1, v66);
            *(v124 + 16) = v66;
          }

          v68 = v66[2];
          v67 = v66[3];
          if (v68 >= v67 >> 1)
          {
            v66 = sub_100357E74(v67 > 1, v68 + 1, 1, v66);
            *(v124 + 16) = v66;
          }

          ++v59;

          v66[2] = v68 + 1;
          (*(v123 + 32))(v66 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v68, v125, v122);
          *(v124 + 16) = v66;
        }

        while (v58 != v59);
      }
    }

    v2 = v97;
  }

  v69 = [v115 uniqueRouteID];
  v70 = v118;
  if (!v69)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  v71 = v69;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v117 + 16))(v111, v116, v120);
  sub_1000D2DFC(v70, v112, &unk_10191B350);
  sub_1000D2DFC(v119, v113, &unk_10191B350);
  v72 = *&v1[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType];
  v73 = v107;
  v74 = v101;
  if (v72 > 3)
  {
    v75 = &enum case for RoutePlanningCellPrimaryActionStyle.none(_:);
  }

  else
  {
    v75 = *(&off_1016136B0 + v72);
  }

  v76 = v106;
  v77 = v109;
  (*(v107 + 104))(v106, *v75, v109);
  (*(v73 + 32))(v108, v76, v77);

  RoutePlanningCellViewModel.init(routeIdentifier:primaryText:secondaryText:tertiaryText:primaryActionStyle:isHighlighted:showPreviewRouteButton:advisories:)();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  if (v105)
  {
    v79 = v31 - (v78 + v78) - *&v1[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__accessoryViewUnavailableWidth];
  }

  else
  {
    v79 = 0.0;
  }

  v80 = v115;
  v81 = [v115 uniqueRouteID];
  if (!v81)
  {
    goto LABEL_51;
  }

  v82 = v81;
  v83 = v102;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = [v80 transportType];
  v85 = v84 != 1;
  if (v84 == 1)
  {
    v86 = v79;
  }

  else
  {
    v86 = 0.0;
  }

  v87 = type metadata accessor for MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryViewKey();
  v88 = objc_allocWithZone(v87);
  v89 = v103;
  v90 = v104;
  (*(v103 + 16))(&v88[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey_uuid], v83, v104);
  v91 = &v88[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey_width];
  *v91 = v86;
  *(v91 + 8) = v85;
  v126.receiver = v88;
  v126.super_class = v87;
  v92 = objc_msgSendSuper2(&v126, "init");
  v93 = (*(v89 + 8))(v83, v90);
  __chkstk_darwin(v93);
  v94 = v110;
  *(&v96 - 6) = v110;
  *(&v96 - 5) = v1;
  *(&v96 - 4) = v92;
  *(&v96 - 3) = v79;
  *(&v96 - 2) = v124;
  sub_1000CE6B8(&qword_10191B360);
  sub_10035F18C();
  v95 = v99;
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  *(&v128 + 1) = v2;
  v129 = sub_1000414C8(&unk_10191B380, &qword_10191B348);
  sub_10001A848(&v127);
  UIHostingConfiguration.margins(_:_:)();
  (*(v100 + 8))(v95, v2);
  UICollectionViewCell.contentConfiguration.setter();

  sub_100024F64(v119, &unk_10191B350);
  sub_100024F64(v118, &unk_10191B350);
  (*(v117 + 8))(v116, v120);
  (*(v74 + 8))(v94, v98);
}

__n128 sub_10035DDC4@<Q0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v33 = a3;
  v36 = a4;
  v8 = type metadata accessor for RoutePlanningCellViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10191B378);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = __chkstk_darwin(v12);
  v32 = &v32 - v14;
  (*(v9 + 16))(v11, a1, v8, v13);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a2;
  *(v16 + 32) = a5;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v18 = a2;

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v17;

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;

  Binding.init(get:set:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v33;

  v26 = v32;
  RoutePlanningCell.init(viewModel:isCarPlay:useCompactLayout:accessoryView:accessoryViewUnavailableWidth:tapHandler:primaryActionTapHandler:previewRouteButtonTapHandler:advisoryTapHandler:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v36;
  (*(v34 + 32))(v36, v26, v35);
  v28 = v27 + *(sub_1000CE6B8(&qword_10191B360) + 36);
  v29 = v42;
  *(v28 + 64) = v41;
  *(v28 + 80) = v29;
  *(v28 + 96) = v43;
  v30 = v38;
  *v28 = v37;
  *(v28 + 16) = v30;
  result = v40;
  *(v28 + 32) = v39;
  *(v28 + 48) = result;
  return result;
}

void sub_10035E29C(uint64_t a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v64 = a1;
  v5 = sub_1000CE6B8(&qword_10191B398);
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  v8 = type metadata accessor for MapsElevationChartViewModel(0);
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_10191B3A0);
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  v13 = sub_1000CE6B8(&qword_10191B3A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v52 - v17);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v23 = AnyView.init<A>(_:)();
    goto LABEL_22;
  }

  v20 = Strong;
  if (qword_101906790 != -1)
  {
    swift_once();
  }

  v21 = [qword_10191B240 objectForKey:v64];
  if (v21)
  {
    v22 = v21;

    v23 = *&v22[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_view];

LABEL_22:
    *a2 = v23;
    return;
  }

  v60 = a2;
  v24 = OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route;
  v25 = *&v20[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route];
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = [v25 artworkData];
  if (v26)
  {
    v27 = v26;
    sub_1000CE6B8(&unk_101912A30);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v68 = a3;
    *(&v68 + 1) = v28;
    LOWORD(v69) = 1;
    sub_1000CE6B8(&qword_10191B3D0);
    sub_10035F504();
    v23 = AnyView.init<A>(_:)();
    v29 = type metadata accessor for MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryView();
    v30 = objc_allocWithZone(v29);
    v30[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_type] = 1;
    *&v30[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_view] = v23;
    v65.receiver = v30;
    v65.super_class = v29;

    v31 = objc_msgSendSuper2(&v65, "init");
    [qword_10191B240 setObject:v31 forKey:v64];

LABEL_21:
    a2 = v60;
    goto LABEL_22;
  }

  v32 = *&v20[v24];
  if (!v32 || (v33 = [v32 elevationProfile]) == 0)
  {
LABEL_20:
    v42 = AnyView.init<A>(_:)();
    v43 = type metadata accessor for MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryView();
    v44 = objc_allocWithZone(v43);
    v44[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_type] = 2;
    *&v44[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_view] = v42;
    v67.receiver = v44;
    v67.super_class = v43;
    v31 = objc_msgSendSuper2(&v67, "init");
    [qword_10191B240 setObject:v31 forKey:v64];

    v23 = *&v31[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_view];

    goto LABEL_21;
  }

  v34 = v33;
  v35 = [v33 points];
  if (!v35)
  {
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  v59 = [v35 count];

  if (v59 < 2)
  {

    goto LABEL_20;
  }

  v59 = v34;
  v37 = v20;
  [v37 frame];
  Width = CGRectGetWidth(v71);
  v39 = [objc_opt_self() currentLocale];
  if (v39)
  {
    v40 = v39;
    v57 = type metadata accessor for MapsElevationGraphViewController();
    v56 = [v40 _navigation_distanceUsesMetricSystem];

    v58 = [v37 traitCollection];
    v53 = v37;
    v55 = v37[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight];
    a2 = v60;
    if (qword_101906868 != -1)
    {
      swift_once();
    }

    v54 = qword_1019602D0;
    v41 = [objc_opt_self() meters];
    sub_100014C84(0, &qword_10191B3B0);
    Measurement.init(value:unit:)();
    sub_1004F646C(v59, v56, v55, v54, v12, v18, Width);

    (*(v62 + 8))(v12, v10);
    sub_1000D2DFC(v18, v15, &qword_10191B3A8);
    if ((*(v63 + 48))(v15, 1, v8) != 1)
    {
      v45 = v61;
      sub_10035F324(v15, v61);
      sub_10035F388(v45, v7);
      *&v7[*(type metadata accessor for MapsElevationChart() + 20)] = 0x4024000000000000;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v46 = &v7[*(v5 + 36)];
      v47 = v69;
      *v46 = v68;
      *(v46 + 1) = v47;
      *(v46 + 2) = v70;
      sub_10035F3EC();
      v23 = AnyView.init<A>(_:)();
      v48 = type metadata accessor for MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryView();
      v49 = objc_allocWithZone(v48);
      v49[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_type] = 0;
      *&v49[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9234MapsRoutePlanningCellAccessoryView_view] = v23;
      v66.receiver = v49;
      v66.super_class = v48;

      v50 = objc_msgSendSuper2(&v66, "init");
      v51 = qword_10191B240;
      [v51 setObject:v50 forKey:v64];

      sub_10035F4A8(v45);
      sub_100024F64(v18, &qword_10191B3A8);
      goto LABEL_22;
    }

    sub_100024F64(v18, &qword_10191B3A8);

    sub_100024F64(v15, &qword_10191B3A8);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

void sub_10035EB08(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__accessoryViewUnavailableWidth];
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

void sub_10035EB78(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1 > 0.0)
    {
      v3 = *&Strong[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__accessoryViewUnavailableWidth];
      *&Strong[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__accessoryViewUnavailableWidth] = v1;
      if (v3 != v1)
      {
        Strong[OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty] = 1;
      }
    }
  }
}

void sub_10035EC00(uint64_t a1, const char *a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960000);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 2u);
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      [v11 *a3];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10035ED4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_101906720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960000);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "handling advisory tap", v10, 2u);
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_beginAccess();
      v14 = *(a3 + 16);
      __chkstk_darwin(v13);
      v19[2] = a1;

      v15 = sub_100525288(sub_10035F2F4, v19, v14);
      v17 = v16;

      if (v17)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v15;
      }

      [v12 didTapAdvisoriesOnCell:v6 atIndex:v18];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_10035EF48(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryViewKey()
{
  result = qword_10191B2F0;
  if (!qword_10191B2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10035F054()
{
  result = type metadata accessor for UUID();
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

unint64_t sub_10035F124()
{
  result = qword_10191B338;
  if (!qword_10191B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B338);
  }

  return result;
}

unint64_t sub_10035F18C()
{
  result = qword_10191B368;
  if (!qword_10191B368)
  {
    sub_1000D6664(&qword_10191B360);
    sub_1000414C8(&qword_10191B370, &qword_10191B378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B368);
  }

  return result;
}

uint64_t sub_10035F324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsElevationChartViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035F388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsElevationChartViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10035F3EC()
{
  result = qword_10191B3B8;
  if (!qword_10191B3B8)
  {
    sub_1000D6664(&qword_10191B398);
    sub_10035F680(&unk_10191B3C0, type metadata accessor for MapsElevationChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B3B8);
  }

  return result;
}

uint64_t sub_10035F4A8(uint64_t a1)
{
  v2 = type metadata accessor for MapsElevationChartViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10035F504()
{
  result = qword_10191B3D8;
  if (!qword_10191B3D8)
  {
    sub_1000D6664(&qword_10191B3D0);
    sub_100217470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B3D8);
  }

  return result;
}

void sub_10035F590()
{
  *(v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_showPreviewRouteButton) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_autoSharingContacts) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType) = 0;
  v1 = v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__renderedWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  *(v0 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__accessoryViewUnavailableWidth) = 0x405A000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10035F680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035F6EC()
{
  result = GEOConfigGetBOOL();
  byte_101960111 = result;
  return result;
}

uint64_t sub_10035F740(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

uint64_t sub_10035F7B0(uint64_t a1, uint64_t a2, char a3, void *a4, _BYTE *a5)
{
  if (*a4 == -1)
  {
    *a5 = a3;
  }

  else
  {
    result = swift_once();
    *a5 = a3;
  }

  return result;
}

id sub_10035F8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1000D2BE0(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_100014C84(0, &qword_10190B890);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1000DB2F4(v10);

  return v6;
}

id sub_10035FA4C(uint64_t a1, Class isa, uint64_t a3)
{
  sub_10017A750(a1, v14);
  v5 = v15;
  if (!v15)
  {
    v11 = 0;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_10005E838(v14, v15);
  v7 = *(v5 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v7 + 8))(v10, v5);
  sub_10004E3D0(v14);
  if (isa)
  {
LABEL_3:
    sub_100014C84(0, &qword_10190B890);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  v12 = (*(a3 + 16))(a3, v11, isa);
  swift_unknownObjectRelease();

  return v12;
}

id sub_10035FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v8 = a5(a3, a4);
  swift_unknownObjectRelease();

  return v8;
}

id LibraryUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryUIUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id LibraryUIUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryUIUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10035FE10(void *a1)
{
  v2 = [a1 heightAnchor];
  v3 = [v2 constraintEqualToConstant:32.0];

  type metadata accessor for UILayoutPriority(0);
  sub_100360B64();
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v4) = v11;
  [v3 setPriority:v4];
  v5 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E4FD0;
  *(v6 + 32) = v3;
  v7 = v3;
  v8 = [a1 heightAnchor];
  v9 = [v8 constraintGreaterThanOrEqualToConstant:32.0];

  *(v6 + 40) = v9;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

id sub_10035FFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v22._object = 0x8000000101231020;
  v11._object = 0x8000000101231000;
  v22._countAndFlagsBits = 0xD000000000000046;
  v11._countAndFlagsBits = 0xD000000000000012;
  v12._countAndFlagsBits = 6579265;
  v12._object = 0xE300000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, qword_1019600D8, v12, v22);
  v13 = [objc_opt_self() _maps_pillButtonConfigurationWithImage:1 scalingImageForDynamicText:0 scalingTitleForDynamicText:0];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  UIButton.Configuration.title.setter();
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() systemImageNamed:v14];

  UIButton.Configuration.image.setter();
  sub_100014C84(0, &unk_101922F60);
  (*(v5 + 16))(v7, v10, v4);
  v16 = UIButton.init(configuration:primaryAction:)();
  sub_10035FE10(v16);
  [v16 addTarget:a1 action:a2 forControlEvents:64];
  v17 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v16];

  (*(v5 + 8))(v10, v4);
  v18 = v17;
  v19 = String._bridgeToObjectiveC()();
  [v18 setAccessibilityIdentifier:v19];

  return v18;
}

id sub_1003602C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() _maps_pillButtonConfigurationWithImage:1 scalingImageForDynamicText:0 scalingTitleForDynamicText:0];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  UIButton.Configuration.title.setter();
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15];

  UIButton.Configuration.image.setter();
  sub_100014C84(0, &unk_101922F60);
  (*(v8 + 16))(v10, v13, v7);
  v17 = UIButton.init(configuration:primaryAction:)();
  sub_10035FE10(v17);
  [v17 addTarget:a5 action:v21 forControlEvents:64];
  v18 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v17];

  (*(v8 + 8))(v13, v7);
  return v18;
}

id sub_1003604FC()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = [objc_opt_self() _maps_roundPillSymbolButtonConfigurationScalingImageForDynamicText:0];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  UIButton.Configuration.image.setter();
  sub_100014C84(0, &unk_101922F60);
  (*(v1 + 16))(v3, v6, v0);
  v10 = UIButton.init(configuration:primaryAction:)();
  sub_10035FE10(v10);
  v11 = v10;
  v12 = [v11 widthAnchor];
  v13 = [v11 heightAnchor];

  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  (*(v1 + 8))(v6, v0);
  return v11;
}

id sub_10036073C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003604FC();
  [v4 addTarget:a1 action:a2 forControlEvents:64];
  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v6];

  v7 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v5];
  return v7;
}

id sub_100360804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003604FC();
  [v4 setShowsMenuAsPrimaryAction:1];
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10035F8E8;
  v10[3] = &unk_1016136F8;
  v5 = _Block_copy(v10);

  [v4 _setMenuProvider:v5];
  _Block_release(v5);
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  [v6 setAccessibilityIdentifier:v7];

  v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v6];
  return v8;
}

id sub_100360954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003604FC();
  [v4 addTarget:a1 action:a2 forControlEvents:64];
  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v6];

  v7 = [objc_opt_self() secondaryLabelColor];
  [v5 setTintColor:v7];

  v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v5];
  return v8;
}

id sub_100360A58()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = [objc_opt_self() _maps_boldSystemFontWithSize:27.0];
  [v0 setFont:v2];

  v3 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];
  [v3 setAccessibilityTraits:UIAccessibilityTraitStaticText];
  [v3 setBackgroundImage:0 forState:1 barMetrics:0];

  return v3;
}

unint64_t sub_100360B64()
{
  result = qword_10191B408;
  if (!qword_10191B408)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B408);
  }

  return result;
}

unint64_t sub_100360BE8()
{
  result = qword_10191B410;
  if (!qword_10191B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191B410);
  }

  return result;
}

uint64_t sub_100360C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100360D50(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_10005BEEC(v23, a1, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v15 = *(*(a3 + 48) + 16 * v8);
      v11 = v15;
      sub_1000CE6B8(&unk_101919390);
      if (!swift_dynamicCast())
      {
        break;
      }

      v23[0] = v20;
      v23[1] = v21;
      v24 = v22;
      v18 = a1;
      v19 = a2;
      v12 = a1;
      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_10005BF8C(v23);
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
        v10 = &v15;
        goto LABEL_5;
      }

      v20 = v15;
      v21 = v16;
      v22 = v17;
      v13 = static AnyHashable.== infix(_:_:)();

      sub_10005BF8C(&v20);
      sub_10005BF8C(v23);
      if (v13)
      {
        return 1;
      }

LABEL_6:
      v8 = (v8 + 1) & v9;
      if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v10 = &v20;
LABEL_5:
    sub_10010EA94(v10);
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_100360F48(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100014C84(0, a3), v6 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100361058(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Data.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = a3 + 56;
  v8 = -1 << *(a3 + 32);
  v9 = v6 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v78 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v76 = v14;
  v74 = (a1 >> 32) - a1;
  v75 = a1 >> 32;
  v77 = v10;
  while (1)
  {
    v15 = (*(a3 + 48) + 16 * v9);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || a2 >> 62 != 3;
      if (((v21 | v78) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_37;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_147;
      }

      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_146;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_34:
        v26 = BYTE6(a2);
        if (v11)
        {
          v26 = HIDWORD(a1) - a1;
          if (v76)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v11 != 2)
    {
      if (!v22)
      {
        return 1;
      }

      goto LABEL_14;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_145;
    }

LABEL_40:
    if (v22 != v26)
    {
      goto LABEL_14;
    }

    if (v22 < 1)
    {
      return 1;
    }

    if (v18 > 1)
    {
      break;
    }

    if (!v18)
    {
      *__s1 = v17;
      *&__s1[8] = v16;
      __s1[10] = BYTE2(v16);
      __s1[11] = BYTE3(v16);
      __s1[12] = BYTE4(v16);
      __s1[13] = BYTE5(v16);
      if (!v11)
      {
        goto LABEL_93;
      }

      if (v11 != 1)
      {
        v49 = *(a1 + 16);
        v71 = *(a1 + 24);
        sub_10017A6A4(v17, v16);
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v50 = __DataStorage._offset.getter();
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_162;
          }

          v44 += v49 - v50;
        }

        v25 = __OFSUB__(v71, v49);
        v46 = v71 - v49;
        if (v25)
        {
          goto LABEL_154;
        }

        v47 = __DataStorage._length.getter();
        if (!v44)
        {
          goto LABEL_169;
        }

LABEL_100:
        if (v47 >= v46)
        {
          v42 = v46;
        }

        else
        {
          v42 = v47;
        }

        result = __s1;
        v51 = v44;
        goto LABEL_136;
      }

      if (v75 < a1)
      {
        goto LABEL_151;
      }

      sub_10017A6A4(v17, v16);
      v29 = __DataStorage._bytes.getter();
      if (!v29)
      {
        goto LABEL_172;
      }

      v30 = v29;
      v31 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v31))
      {
        goto LABEL_157;
      }

      v32 = (a1 - v31 + v30);
      result = __DataStorage._length.getter();
      if (!v32)
      {
        goto LABEL_173;
      }

LABEL_108:
      if (result >= v74)
      {
        v55 = (a1 >> 32) - a1;
      }

      else
      {
        v55 = result;
      }

      v56 = __s1;
      v57 = v32;
      goto LABEL_139;
    }

    if (v17 > v17 >> 32)
    {
      goto LABEL_148;
    }

    sub_10017A6A4(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v40))
      {
        goto LABEL_150;
      }

      v35 += v17 - v40;
    }

    __DataStorage._length.getter();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v69 = v35;
      v63 = *(a1 + 16);
      v73 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v64 = __DataStorage._offset.getter();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_165;
        }

        v37 += v63 - v64;
      }

      v25 = __OFSUB__(v73, v63);
      v65 = v73 - v63;
      if (v25)
      {
        goto LABEL_160;
      }

      v66 = __DataStorage._length.getter();
      if (v66 >= v65)
      {
        v62 = v65;
      }

      else
      {
        v62 = v66;
      }

      result = v69;
      if (!v69)
      {
        goto LABEL_180;
      }

      if (!v37)
      {
        goto LABEL_179;
      }

LABEL_133:
      if (result == v37)
      {
LABEL_143:
        sub_1000D41B4(v17, v16);
        return 1;
      }

      v42 = v62;
      goto LABEL_135;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_159;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v41))
        {
          goto LABEL_166;
        }

        v37 += a1 - v41;
      }

      result = __DataStorage._length.getter();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_182;
      }

      if (!v37)
      {
        goto LABEL_181;
      }

LABEL_83:
      if (v35 == v37)
      {
        goto LABEL_143;
      }

      v42 = v39;
      result = v35;
LABEL_135:
      v51 = v37;
LABEL_136:
      v67 = memcmp(result, v51, v42);
      sub_1000D41B4(v17, v16);
      v7 = a3 + 56;
      goto LABEL_140;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_171;
    }

LABEL_138:
    v57 = __s1;
    v56 = v35;
    v55 = BYTE6(a2);
LABEL_139:
    v67 = memcmp(v56, v57, v55);
    sub_1000D41B4(v17, v16);
LABEL_140:
    v10 = v77;
    if (!v67)
    {
      return 1;
    }

LABEL_14:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_10017A6A4(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_149;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v68 = v35;
      v58 = *(a1 + 16);
      v72 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(v58, v59))
        {
          goto LABEL_163;
        }

        v37 += v58 - v59;
      }

      v25 = __OFSUB__(v72, v58);
      v60 = v72 - v58;
      if (v25)
      {
        goto LABEL_158;
      }

      v61 = __DataStorage._length.getter();
      if (v61 >= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }

      result = v68;
      if (!v68)
      {
        goto LABEL_178;
      }

      if (!v37)
      {
        goto LABEL_177;
      }

      goto LABEL_133;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_153;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v38))
        {
          goto LABEL_164;
        }

        v37 += a1 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_176;
      }

      if (!v37)
      {
        goto LABEL_175;
      }

      goto LABEL_83;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_174;
    }

    goto LABEL_138;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v11)
  {
LABEL_93:
    __s2 = a1;
    v80 = a2;
    v81 = BYTE2(a2);
    v82 = BYTE3(a2);
    v83 = BYTE4(a2);
    v84 = BYTE5(a2);
    v48 = memcmp(__s1, &__s2, BYTE6(a2));
    v10 = v77;
    if (!v48)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v70 = *(a1 + 24);
    sub_10017A6A4(v17, v16);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v45))
      {
        goto LABEL_161;
      }

      v44 += v43 - v45;
    }

    v25 = __OFSUB__(v70, v43);
    v46 = v70 - v43;
    if (v25)
    {
      goto LABEL_155;
    }

    v47 = __DataStorage._length.getter();
    if (!v44)
    {
      goto LABEL_170;
    }

    goto LABEL_100;
  }

  if (v75 < a1)
  {
    goto LABEL_152;
  }

  sub_10017A6A4(v17, v16);
  v52 = __DataStorage._bytes.getter();
  if (v52)
  {
    v53 = v52;
    v54 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v54))
    {
      goto LABEL_156;
    }

    v32 = (a1 - v54 + v53);
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

    goto LABEL_108;
  }

  __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  result = __DataStorage._length.getter();
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

void *PlaceCardCollectionMembershipProvider.mapItem.getter()
{
  v1 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t PlaceCardCollectionMembershipProvider.mapItem.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = [objc_opt_self() sharedManager];
  v7 = [v6 currentCollections];

  sub_100014C84(0, &qword_101922CC0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100361BA0(v8);
}

void *sub_100361BA0(unint64_t a1)
{
  v2 = a1;
  v22 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v4 = 0;
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
            goto LABEL_37;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v5 handlerType])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v22;
          specialized ContiguousArray._endMutation()();
        }

        ++v4;
        if (v7 == i)
        {
          v8 = v22;
          v1 = v21;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_1003625B4(v8);
    v9 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (!v10)
    {
      v18 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
      swift_beginAccess();
      *(v1 + v18) = _swiftEmptyArrayStorage;

      sub_100362408();
      goto LABEL_33;
    }

    v2 = *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_observedCollections);
    v11 = v2 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v10;

    if (!v11)
    {
      break;
    }

    v13 = 0;
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v1 = &selRef_connectedCarMainScreenInfo;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_39;
        }

        v15 = *(v2 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v15 containsItem:v12])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v13;
      if (v17 == v11)
      {
        v1 = v21;
        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_32:

  v19 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
  swift_beginAccess();
  *(v1 + v19) = _swiftEmptyArrayStorage;

  sub_100362408();

LABEL_33:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result placeCardCollectionMembershipProviderDidUpdate:v1];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*PlaceCardCollectionMembershipProvider.mapItem.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100361F60;
}

uint64_t sub_100361F60(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [objc_opt_self() sharedManager];
    v5 = [v4 currentCollections];

    sub_100014C84(0, &qword_101922CC0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100361BA0(v6);
  }

  return result;
}

uint64_t PlaceCardCollectionMembershipProvider.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaceCardCollectionMembershipProvider.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10020B820;
}

char *sub_10036239C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_100362408();
}

char *sub_100362408()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_13:
    v16 = sub_100455424(_swiftEmptyArrayStorage);

    *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollectionIDs) = v16;
  }

  result = sub_1005111C4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1005111C4((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
    }

    while (v4 != v6);

    v1 = v0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003625B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_observedCollections;
  v3 = *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_observedCollections);
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
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
            goto LABEL_27;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 removeObserver:v1];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_12:

    *(v1 + v2) = a1;

    v9 = *(v1 + v2);
    v3 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v3)
    {
      break;
    }

    v10 = 0;
    v2 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(v9 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v11 addObserver:v1];

      ++v10;
      if (v13 == v3)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_23:
}

id PlaceCardCollectionMembershipProvider.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedManager];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10036291C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollectionIDs] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_observedCollections] = _swiftEmptyArrayStorage;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v10, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedManager];
  [v5 addObserver:v4];

  v6 = [v3 sharedManager];
  v7 = [v6 currentCollections];

  sub_100014C84(0, &qword_101922CC0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100361BA0(v8);

  return v4;
}

void __swiftcall PlaceCardCollectionMembershipProvider.containingCollection(withIdentifer:)(CollectionHandler_optional *__return_ptr retstr, Swift::String withIdentifer)
{
  object = withIdentifer._object;
  countAndFlagsBits = withIdentifer._countAndFlagsBits;
  v5 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollections;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 identifier];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == countAndFlagsBits && v15 == object)
      {

LABEL_19:

        return;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_19;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_17:
}

Swift::Void __swiftcall PlaceCardCollectionMembershipProvider.collectionHandlerContentUpdated(_:)(CollectionHandler *a1)
{
  v3 = OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_mapItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = [(CollectionHandler *)a1 containsItem:v5];
    v7 = *(v1 + OBJC_IVAR____TtC4Maps37PlaceCardCollectionMembershipProvider_containingCollectionIDs);

    v8 = [(CollectionHandler *)a1 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    LODWORD(v8) = sub_100360C44(v9, v11, v7) & 1;

    if (v6 != v8)
    {
      v12 = [objc_opt_self() sharedManager];
      v13 = [v12 currentCollections];

      sub_100014C84(0, &qword_101922CC0);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100361BA0(v14);
    }
  }
}

uint64_t sub_100362F2C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1000FA5D4(v8);
}

void sub_100363070(uint64_t a1, uint64_t a2, void (*a3)(void, void, uint64_t, double), uint64_t a4, uint64_t a5)
{
  v10 = sub_1000CE6B8(&unk_101909B00);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = aBlock - v12;
  if (a2)
  {
    a3(0, 0, a2, v11);
  }

  else
  {
    sub_100014C84(0, &unk_101918390);
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    sub_1000DE5B8(a1, v13);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v18 = 0;
    if ((*(v16 + 48))(v13, 1, v15) != 1)
    {
      URL._bridgeToObjectiveC()(v17);
      v18 = v19;
      (*(v16 + 8))(v13, v15);
    }

    v20 = objc_opt_self();
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100363290;
    aBlock[3] = &unk_101613938;
    v21 = _Block_copy(aBlock);

    [v20 createHTMLTemplateForPersonalCollectionHandler:a5 mapItems:v14.super.isa sharingURL:v18 completion:v21];
    _Block_release(v21);
  }
}

uint64_t sub_100363290(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

id sub_10036367C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration];
  v2 = a1;
  v3 = [v1 title];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

void sub_10036375C()
{
  v1 = [objc_allocWithZone(LPMapCollectionMetadata) init];
  v2 = v0 + OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration);
  v4 = *(v2 + 8);
  v5 = [v3 title];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v1 setName:v5];

  v6 = [v3 image];
  if (v6)
  {
    v7 = v6;
    v8 = UIImagePNGRepresentation(v6);
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = objc_allocWithZone(LPImage);
      sub_10017A6A4(v10, v12);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v15 = String._bridgeToObjectiveC()();
      v16 = [v13 initWithData:isa MIMEType:v15];

      sub_1000D41B4(v10, v12);
      [v1 setIcon:v16];

      sub_1000D41B4(v10, v12);
    }
  }

  v17 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_26;
  }

  if (!HIDWORD(*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10)))
  {
    do
    {
      [v1 setNumberOfItems:v29];
      v29 = v1;
      if (v17)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      v1 = (v4 & 0xC000000000000001);
      while (1)
      {
        if (v18 == v19)
        {
          sub_100014C84(0, &unk_101909B70);
          v23 = Array._bridgeToObjectiveC()().super.isa;

          [v29 setAddresses:v23];

          sub_100014C84(0, &unk_101918390);
          v24 = Array._bridgeToObjectiveC()().super.isa;
          v25 = annotatedSnapshotImageWithMapItems();

          [v29 setImage:v25];
          v26 = Array._bridgeToObjectiveC()().super.isa;
          v27 = annotatedSnapshotImageWithMapItems();

          [v29 setDarkImage:v27];
          return;
        }

        if (v1)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v20 = *(v4 + 8 * v19 + 32);
        }

        v21 = v20;
        v17 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v22 = [v20 _cnPostalAddress];

        ++v19;
        if (v22)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v19 = v17;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }
    }

    while (!HIDWORD(v28));
  }

  __break(1u);
}

id sub_100363C28(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [a1 content];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = _swiftEmptyArrayStorage;
  v5 = *(v4 + 16);
  if (!v5)
  {

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v15 = a1;
  v6 = v4 + 32;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    sub_10004E374(v6, v19);
    sub_10004E374(v19, v17);
    sub_100014C84(0, &unk_10191B570);
    if (swift_dynamicCast())
    {
      v8 = v18;
      v9 = [objc_opt_self() _itemWithGeoMapItem:v18];

      sub_10004E3D0(v19);
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1000D2BE0(v19, v17);
      sub_100014C84(0, &unk_101918390);
      if (swift_dynamicCast())
      {
        v10 = v18;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        goto LABEL_4;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = v20;
LABEL_4:
    v6 += 32;
    --v5;
  }

  while (v5);

  a1 = v15;
LABEL_16:
  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR____TtC4Maps30UserGuidesActivityDataProvider_configuration];
  *v12 = a1;
  *(v12 + 1) = v7;
  v16.receiver = v11;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_100363EE4(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 0x7453676E696E6944;
      }

      if (a1 == 2)
      {
        return 0x74536C6576617254;
      }

LABEL_20:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    if (a1 == 3)
    {
      return 0x745365727574614ELL;
    }

    else
    {
      return 0x537469736E617254;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 0x74696E756D6D6F43;
        case 8:
          return 0x745368746C616548;
        case 9:
          return 0x696372656D6D6F43;
      }

      goto LABEL_20;
    }

    if (a1 == 5)
    {
      return 0x7365636976726553;
    }

    else
    {
      return 0x676E6970706F6853;
    }
  }
}

uint64_t sub_100364108(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 0x676E696E6944;
      }

      if (a1 == 2)
      {
        return 0x6C6576617254;
      }

LABEL_20:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    if (a1 == 3)
    {
      return 0x65727574614ELL;
    }

    else
    {
      return 0x7469736E617254;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 0x74696E756D6D6F43;
        case 8:
          return 0x68746C616548;
        case 9:
          return 0x696372656D6D6F43;
      }

      goto LABEL_20;
    }

    if (a1 == 5)
    {
      return 0x7365636976726553;
    }

    else
    {
      return 0x676E6970706F6853;
    }
  }
}

uint64_t sub_10036426C@<X0>(uint64_t *a1@<X8>)
{
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v2;
  v3._countAndFlagsBits = 124;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_100364310()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10005E838(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_100364364()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for RichTextType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1003A77CC(v0[5]);
  v11 = sub_100014C84(0, &qword_10190AB90);
  static MapsDesignConstants.Image.VisitedPlaces.monthYearPlaceholder.getter();
  v12 = static UIImage.mapsDesignImage(_:)();

  if (v12)
  {
    v13 = sub_100059514(&qword_10190DE60, &qword_10190AB90);
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v31 = 0;
    v32 = 0;
  }

  v29 = 0;
  v30 = v12;
  v33 = v11;
  v34 = v13;
  v27 = 0u;
  v28 = 0u;
  v14 = v1[3];
  v15 = v1[4];
  sub_10005E838(v1, v14);
  v16 = (*(v15 + 24))(v14, v15);
  v23 = v17;
  v24 = v16;
  sub_1000CE6B8(&unk_1019157F0);
  v18 = swift_allocObject();
  v22 = xmmword_1011E1D30;
  *(v18 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  (*(v8 + 104))(v10, enum case for RichTextType.line(_:), v7);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v8 + 8))(v10, v7);
  *(v18 + 32) = v19;
  v20 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  return ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
}

uint64_t sub_100364778@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_10005E838(v1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void *sub_1003647DC()
{
  result = sub_100366C20();
  qword_101960118 = result;
  return result;
}

uint64_t sub_1003647FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_10036488C();
}

uint64_t sub_1003648AC()
{
  v1 = v0[3];
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_10190D5C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  v3 = *(v1 + 32);
  *(v2 + 56) = sub_100014C84(0, &qword_101909920);
  *(v2 + 64) = sub_100059514(&qword_10191F270, &qword_101909920);
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  v0[4] = v5;

  v6 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  v7 = v5;
  MapsSyncRange.init(offset:limit:)();
  v8 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v9 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[5] = v9;
  type metadata accessor for CachedMapItemStorageRequest();
  v0[6] = CachedMapItemStorageRequest.__allocating_init()();
  v13 = (&async function pointer to dispatch thunk of CachedMapItemStorageRequest.fetch(options:) + async function pointer to dispatch thunk of CachedMapItemStorageRequest.fetch(options:));
  v10 = v9;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_100364A9C;

  return v13(v9);
}

uint64_t sub_100364A9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);

    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    v6 = swift_task_alloc();
    *(v3 + 96) = v6;
    *v6 = v3;
    v6[1] = sub_100364E00;

    return sub_1003652D0();
  }

  else
  {
    v8 = *(v3 + 48);

    return _swift_task_switch(sub_100364C38, 0, 0);
  }
}

uint64_t sub_100364C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = 0;
    goto LABEL_12;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v5, a2, a3);
    }

    v6 = *(v3[8] + 32);
  }

  v7 = v6;
  v8 = dispatch thunk of CachedMapItemStorage.mapItemStorage.getter();

  if (v8)
  {
    v9 = v3[9];
    v3[15] = v8;
    v3[16] = v7;
    v3[14] = v9;
    v3[17] = *(v3[3] + 72);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v3[18] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v5 = sub_100365024;
    a2 = v10;
    a3 = v12;

    return _swift_task_switch(v5, a2, a3);
  }

LABEL_12:
  v3[10] = v3[9];
  v3[11] = v7;
  v13 = swift_task_alloc();
  v3[12] = v13;
  *v13 = v3;
  v13[1] = sub_100364E00;

  return sub_1003652D0();
}

uint64_t sub_100364E00(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100364F00, 0, 0);
}

uint64_t sub_100364F00()
{
  v1 = *(v0 + 104);
  if (v1 && (v2 = [*(v0 + 104) _geoMapItem], v1, v2))
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    *(v0 + 112) = v4;
    *(v0 + 136) = *(*(v0 + 24) + 72);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    *(v0 + 144) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100365024, v6, v5);
  }

  else
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100365024()
{
  v1 = v0[17];
  v2 = v0[15];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v0[2] = v1;
  sub_100366FEC(&qword_10190AB88, type metadata accessor for VisitedPlacesPOIImageProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10036515C, 0, 0);
}

uint64_t sub_10036515C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003651D8()
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    sub_100366EAC([*(v0 + 32) unsignedLongLongValue]);
    type metadata accessor for ImageComposerViewModel();
    sub_100014C84(0, &qword_10190AB90);
    static MapsDesignConstants.Image.VisitedPlaces.cityPlaceholder.getter();
    v3 = v0;
    v4 = static UIImage.mapsDesignImage(_:)();

    v2 = static ImageComposerViewModel.cityPlaceholder(image:colorGradient:)();

    v5 = *(v0 + 64);
    *(v3 + 64) = v2;

    sub_100366FCC(v5);
  }

  sub_100366FDC(v1);
  return v2;
}

uint64_t sub_1003652D0()
{
  *(v1 + 24) = v0;
  sub_1000CE6B8(&unk_10190BA50);
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_10036536C, 0, 0);
}

uint64_t sub_10036536C()
{
  v1 = [*(v0[3] + 32) unsignedLongLongValue];
  v2 = [objc_allocWithZone(MKMapItemIdentifier) initWithMUID:v1 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  v0[5] = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 sharedService];
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v5;
  sub_1000CE6B8(&qword_101908400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1011E47B0;
  *(v14 + 32) = v3;
  sub_100014C84(0, &unk_101918370);
  v15 = v3;
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v4 sharedService];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v17 = v5;
  v18 = [v5 mapsDefaultTraits];

  v19 = [v13 ticketForIdentifiers:v16.super.isa traits:v18];
  v0[6] = v19;

  if (v19)
  {
    v20 = swift_task_alloc();
    v0[7] = v20;
    *(v20 + 16) = v19;
    v21 = swift_task_alloc();
    v0[8] = v21;
    v12 = sub_1000CE6B8(&qword_10191B670);
    *v21 = v0;
    v21[1] = sub_100365638;
    v10 = sub_100367120;
    v5 = v0 + 2;
    v9 = 0x80000001012312C0;
    v6 = 0;
    v7 = 0;
    v8 = 0xD00000000000001DLL;
    v11 = v20;

    return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
  }

LABEL_9:

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_100365638()
{

  return _swift_task_switch(sub_100365750, 0, 0);
}

uint64_t sub_100365750()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) _geoMapItem];
    v3 = *(v0 + 40);
    if (v2)
    {
      v4 = v2;
      v5 = *(v0 + 32);
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v4;
      swift_unknownObjectRetain();
      sub_100365EEC(0, 0, v5, &unk_1011FDD30, v7);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      sub_1003671DC(v5);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = *(v0 + 40);
    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

void sub_1003658CC(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&unk_101918380);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100367244;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00C4;
  aBlock[3] = &unk_101613B28;
  v11 = _Block_copy(aBlock);

  [a2 submitWithHandler:v11 networkActivity:0];
  _Block_release(v11);
}

unint64_t sub_100365A80(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  result = sub_1002B0288(a1);
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v4 = result;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    result = v4;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:
    sub_1000CE6B8(&unk_101918380);
    return CheckedContinuation.resume(returning:)();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*(v2 + 16))
  {
    v3 = *(result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100365B88()
{
  v1 = [objc_opt_self() mapItemStorageForGEOMapItem:v0[2]];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CachedMapItemStorage();
    v3 = MapsSyncObject.__allocating_init()();
    v0[4] = v3;
    v4 = v2;
    dispatch thunk of CachedMapItemStorage.mapItemStorage.setter();
    type metadata accessor for MapsSyncStore();
    v0[5] = static MapsSyncStore.sharedStore.getter();
    sub_1000CE6B8(&qword_101908400);
    v5 = swift_allocObject();
    v0[6] = v5;
    *(v5 + 16) = xmmword_1011E47B0;
    *(v5 + 32) = v3;
    v10 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
    v6 = v3;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100365D24;

    return v10(v5);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100365D24()
{
  v2 = *v1;

  v3 = *(v2 + 40);
  if (v0)
  {

    v4 = sub_1003672E0;
  }

  else
  {

    v4 = sub_100365E88;
  }

  return _swift_task_switch(v4, 0, 0);
}