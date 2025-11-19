uint64_t sub_1000D8CEC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v69 = a2;
  v64 = sub_1000077C8(&qword_100177028, &qword_10011F720);
  v3 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v5 = &v56 - v4;
  v68 = sub_1000077C8(&qword_100177030, &qword_10011F728);
  v6 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v65 = &v56 - v7;
  v63 = sub_1000077C8(&qword_100177038, &qword_10011F730);
  v8 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v60 = &v56 - v9;
  v62 = type metadata accessor for UUID();
  v59 = *(v62 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v62);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000077C8(&qword_100177040, &qword_10011F738);
  v12 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v67 = &v56 - v13;
  v14 = type metadata accessor for OpacityTransition();
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  __chkstk_darwin(v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000077C8(&qword_100177048, &qword_10011F740);
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v25 = type metadata accessor for NearbySharingInteractionViewState(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_1000522F8(v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v41 = *(v28 + 5);
        v96 = *(v28 + 4);
        v97 = v41;
        v98 = *(v28 + 24);
        v42 = *(v28 + 1);
        v92 = *v28;
        v93 = v42;
        v43 = *(v28 + 3);
        v94 = *(v28 + 2);
        v95 = v43;
        v44 = *(v28 + 120);
        v91[0] = *(v28 + 104);
        v91[1] = v44;
        v91[2] = *(v28 + 136);
        sub_1000DC0F0(v91, v82);
        type metadata accessor for NearbySharingInteractionViewModel(0);
        sub_1000DC14C(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
        v74[0] = ObservedObject.init(wrappedValue:)();
        v74[1] = v45;
        v79 = v96;
        v80 = v97;
        v81 = v98;
        v75 = v92;
        v76 = v93;
        v77 = v94;
        v78 = v95;
        LOBYTE(v70[0]) = 0;
        State.init(wrappedValue:)();
        v82[48] = v72;
        v83 = v73;
        LOBYTE(v70[0]) = 1;
        State.init(wrappedValue:)();
        v84 = v72;
        v85 = v73;
        LOBYTE(v70[0]) = 2;
        sub_1000077C8(&unk_1001770C8, &qword_10011F768);
        State.init(wrappedValue:)();
        v86 = v72;
        v87 = v73;
        LOBYTE(v70[0]) = 0;
        State.init(wrappedValue:)();
        v88 = v72;
        v89 = v73;
        static AnyTransition.identity.getter();
        static AnyTransition.opacity.getter();
        static Animation.default.getter();
        Animation.delay(_:)();

        AnyTransition.animation(_:)();

        v46 = static AnyTransition.asymmetric(insertion:removal:)();

        v90 = v46;
        sub_100007BA4(v74, v70, &qword_1001770A0, &qword_10011F760);
        v71 = 1;
        sub_1000077C8(&qword_100177088, &qword_10011F758);
        sub_1000077C8(&qword_1001770A0, &qword_10011F760);
        sub_1000DBE4C();
        sub_1000DBF04();
        _ConditionalContent<>.init(storage:)();
        sub_100007BA4(&v72, v67, &qword_100177070, &qword_10011F750);
        swift_storeEnumTagMultiPayload();
        sub_1000077C8(&qword_100177070, &qword_10011F750);
        sub_1000DBDC0();
        sub_1000DC010();
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(&v72, &qword_100177070, &qword_10011F750);
        sub_1000159AC(v74, &qword_1001770A0, &qword_10011F760);
        return sub_100056D60(v91);
      }

      goto LABEL_11;
    }

LABEL_8:

    sub_1000E0E64(v28, type metadata accessor for NearbySharingInteractionViewState);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_1000DBCB8();
    v55 = v65;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v55, v67, &qword_100177030, &qword_10011F728);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100177070, &qword_10011F750);
    sub_1000DBDC0();
    sub_1000DC010();
    _ConditionalContent<>.init(storage:)();
    v52 = v55;
    v53 = &qword_100177030;
    v54 = &qword_10011F728;
    return sub_1000159AC(v52, v53, v54);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v31 = v59;
      v32 = v61;
      v33 = v28;
      v34 = v62;
      (*(v59 + 32))(v61, v33, v62);
      v35 = v60;
      (*(v31 + 16))(v60, v32, v34);
      *(v35 + *(type metadata accessor for NameDrop(0) + 20)) = v29;
      v36 = [objc_opt_self() currentTraitCollection];
      [v36 displayCornerRadius];
      v38 = v37;

      v72 = v38;
      sub_1000DC09C();
      *(v35 + *(v63 + 36)) = AnyTransition.init<A>(_:)();
      sub_100007BA4(v35, v5, &qword_100177038, &qword_10011F730);
      swift_storeEnumTagMultiPayload();
      sub_1000DBCB8();
      v39 = v65;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v39, v67, &qword_100177030, &qword_10011F728);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100177070, &qword_10011F750);
      sub_1000DBDC0();
      sub_1000DC010();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v39, &qword_100177030, &qword_10011F728);
      sub_1000159AC(v35, &qword_100177038, &qword_10011F730);
      return (*(v31 + 8))(v61, v62);
    }

    goto LABEL_8;
  }

  v65 = *v28;
  type metadata accessor for ShockwaveAnimationCoordinator();
  sub_1000DC14C(&qword_1001744A0, &type metadata accessor for ShockwaveAnimationCoordinator);

  v64 = ObservedObject.init(wrappedValue:)();
  v48 = v47;
  OpacityTransition.init()();
  static Animation.default.getter();
  Animation.delay(_:)();

  v49 = sub_1000DC14C(&qword_1001770D8, &type metadata accessor for OpacityTransition);
  Transition.animation(_:)();

  (*(v57 + 8))(v17, v14);
  v50 = v58;
  (*(v58 + 16))(v21, v24, v18);
  v72 = v14;
  v73 = v49;
  swift_getOpaqueTypeConformance2();
  v51 = AnyTransition.init<A>(_:)();
  (*(v50 + 8))(v24, v18);
  v70[0] = v64;
  v70[1] = v48;
  v70[2] = v51;
  v71 = 0;

  sub_1000077C8(&qword_100177088, &qword_10011F758);
  sub_1000077C8(&qword_1001770A0, &qword_10011F760);
  sub_1000DBE4C();
  sub_1000DBF04();
  _ConditionalContent<>.init(storage:)();
  sub_100007BA4(&v72, v67, &qword_100177070, &qword_10011F750);
  swift_storeEnumTagMultiPayload();
  sub_1000077C8(&qword_100177070, &qword_10011F750);
  sub_1000DBDC0();
  sub_1000DC010();
  _ConditionalContent<>.init(storage:)();

  v52 = &v72;
  v53 = &qword_100177070;
  v54 = &qword_10011F750;
  return sub_1000159AC(v52, v53, v54);
}

uint64_t sub_1000D98EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_1000D8CEC(*(v1 + 8), a1);
  v11 = *(sub_1000077C8(&qword_100177008, &qword_10011F700) + 36);
  (*(v4 + 104))(v10, enum case for ColorScheme.light(_:), v3);
  (*(v4 + 16))(v7, v10, v3);
  State.init(wrappedValue:)();
  (*(v4 + 8))(v10, v3);
  LOBYTE(v3) = static Edge.Set.all.getter();
  v12 = static SafeAreaRegions.all.getter();
  v13 = a1 + *(sub_1000077C8(&qword_100177010, &qword_10011F708) + 36);
  *v13 = v12;
  *(v13 + 8) = v3;
  v14 = static Animation.default.getter();
  v15 = (a1 + *(sub_1000077C8(&qword_100177018, &unk_10011F710) + 36));
  v16 = sub_1000077C8(&qword_100177020, &qword_100120EF0);
  result = sub_1000522F8(v15 + *(v16 + 36));
  *v15 = v14;
  return result;
}

id sub_1000D9AE4(void *a1)
{
  v3 = sub_1000077C8(&unk_100176430, &qword_10011E550);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v24 = sub_1000077C8(&unk_100177100, &qword_10011E558);
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v24);
  v10 = &v23 - v9;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = sub_1000908EC(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *(v1 + qword_100176FA8) = v11;
  *(v1 + qword_100176FB0) = 0;
  *(v1 + qword_100176FA0) = a1;
  type metadata accessor for NearbySharingInteractionViewModel(0);
  sub_1000DC14C(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
  v12 = a1;
  v25 = ObservedObject.init(wrappedValue:)();
  v26 = v13;
  v14 = UIHostingController.init(rootView:)();
  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    [v14 setModalPresentationStyle:5];
    v25 = ObservableObject<>.objectWillChange.getter();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v27 = v18;
    v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    type metadata accessor for ObservableObjectPublisher();
    sub_1000DD41C();
    Publisher.receive<A>(on:options:)();
    sub_1000159AC(v6, &unk_100176430, &qword_10011E550);

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v21 = swift_allocObject();
    *(v21 + 16) = sub_1000DD4BC;
    *(v21 + 24) = v20;
    sub_1000199C8(&qword_1001764A0, &unk_100177100, &qword_10011E558);
    v22 = v24;
    Publisher<>.sink(receiveValue:)();

    (*(v7 + 8))(v10, v22);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_1000DB608();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D9F38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000DB608();
  }
}

void sub_1000D9F8C(uint64_t a1)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v2 = sub_1000908EC(_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(a1 + qword_100176FA8) = v2;
  *(a1 + qword_100176FB0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000DA040(int a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v34 - v18;
  v20 = [v3 presentedViewController];
  if (v20)
  {
    v21 = v20;
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100106B40;
      aBlock[3] = &unk_100160880;
      a2 = _Block_copy(aBlock);
    }

    v22 = type metadata accessor for NearbySharingInteractionViewController(0);
    v37.receiver = v4;
    v37.super_class = v22;
    objc_msgSendSuper2(&v37, "dismissViewControllerAnimated:completion:", a1 & 1, a2);
    _Block_release(a2);
  }

  else
  {
    v35 = a1;
    if (a1)
    {
      v23 = type metadata accessor for ContinuousClock.Instant();
      (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    }

    else
    {
      v24 = *&v3[qword_100176FA0];
      sub_1000542A0(v19);
    }

    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    sub_100007BA4(v19, v15, &qword_100174328, &qword_10011AF08);
    type metadata accessor for MainActor();
    sub_1000253F8(a2);
    v34 = v4;
    v26 = static MainActor.shared.getter();
    v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v28 = (v27 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = a3;
    v30 = (v27 + v14 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    *(v31 + 24) = &protocol witness table for MainActor;
    sub_100021A84(v15, v31 + v27, &qword_100174328, &qword_10011AF08);
    v32 = v31 + v28;
    *v32 = v34;
    *(v32 + 8) = v35 & 1;
    v33 = (v31 + v30);
    *v33 = a2;
    v33[1] = v29;
    sub_1000E1D28(0, 0, v11, &unk_10011F778, v31);

    sub_1000159AC(v19, &qword_100174328, &qword_10011AF08);
  }
}

uint64_t sub_1000DA3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 129) = a6;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  v9 = type metadata accessor for ContinuousClock();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 192) = v12;
  v13 = *(v12 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v15 = *(*(sub_1000077C8(&qword_100174328, &qword_10011AF08) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v16 = type metadata accessor for ContinuousClock.Instant();
  *(v8 + 224) = v16;
  v17 = *(v16 - 8);
  *(v8 + 232) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 248) = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 256) = v20;
  *(v8 + 264) = v19;

  return _swift_task_switch(sub_1000DA5D4, v20, v19);
}

uint64_t sub_1000DA5D4()
{
  v49 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_100007BA4(*(v0 + 136), v3, &qword_100174328, &qword_10011AF08);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000159AC(*(v0 + 216), &qword_100174328, &qword_10011AF08);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = type metadata accessor for Logger();
    sub_100007D20(v5, qword_10017F350);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 200);
      v9 = *(v0 + 208);
      v11 = *(v0 + 192);
      v12 = *(v0 + 144);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v48 = v14;
      *v13 = 136315138;
      (*(v10 + 16))(v9, *(v12 + qword_100176FA0) + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id, v11);
      sub_1000DC14C(&qword_1001770E0, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v10 + 8))(v9, v11);
      v18 = sub_10003E81C(v15, v17, &v48);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Deferring dismissal until shockwave animation is complete on interaction ID: %s", v13, 0xCu);
      sub_100007920(v14);
    }

    *(v0 + 288) = *(*(*(v0 + 144) + qword_100176FA0) + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator);

    v19 = static Duration.seconds(_:)();
    v21 = v20;
    v22 = *(&async function pointer to dispatch thunk of ShockwaveAnimationCoordinator.waitUntilAnimationCompletes(timeout:) + 1);
    v47 = (&async function pointer to dispatch thunk of ShockwaveAnimationCoordinator.waitUntilAnimationCompletes(timeout:) + async function pointer to dispatch thunk of ShockwaveAnimationCoordinator.waitUntilAnimationCompletes(timeout:));
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    *v23 = v0;
    v23[1] = sub_1000DAF78;

    return v47(v19, v21);
  }

  else
  {
    (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 216), *(v0 + 224));
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 144);
    v26 = type metadata accessor for Logger();
    sub_100007D20(v26, qword_10017F350);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v0 + 200);
      v30 = *(v0 + 208);
      v32 = *(v0 + 192);
      v33 = *(v0 + 144);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      (*(v31 + 16))(v30, *(v33 + qword_100176FA0) + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id, v32);
      sub_1000DC14C(&qword_1001770E0, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v31 + 8))(v30, v32);
      v39 = sub_10003E81C(v36, v38, &v48);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Deferring dismissal to allow for animations to complete on interaction ID: %s", v34, 0xCu);
      sub_100007920(v35);
    }

    v40 = *(v0 + 184);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    static Clock<>.continuous.getter();
    v41 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
    v42 = swift_task_alloc();
    *(v0 + 272) = v42;
    v43 = sub_1000DC14C(&qword_1001770E8, &type metadata accessor for ContinuousClock);
    *v42 = v0;
    v42[1] = sub_1000DABA8;
    v44 = *(v0 + 240);
    v45 = *(v0 + 184);
    v46 = *(v0 + 168);

    return static Task<>.sleep<A>(until:tolerance:clock:)(v44, v0 + 112, v45, v46, v43);
  }
}

uint64_t sub_1000DABA8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v11 = *v1;
  *(*v1 + 280) = v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 256);
  v8 = *(v2 + 264);
  if (v0)
  {
    v9 = sub_1000DB2F8;
  }

  else
  {
    v9 = sub_1000DAD20;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000DAD20()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];

  (*(v4 + 8))(v2, v3);
  v5 = v0[30];
  v6 = v0[26];
  v22 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  if (*(v0 + 129))
  {
    v10 = 0.33;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v0[6] = sub_1000DC4E8;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100106B40;
  v0[5] = &unk_1001608D0;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];
  v15 = v9;

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v8;
  v16[4] = v7;
  v0[12] = sub_1000DC538;
  v0[13] = v16;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100005C38;
  v0[11] = &unk_100160920;
  v17 = _Block_copy(v0 + 8);
  v18 = v0[13];
  v19 = v15;
  sub_1000253F8(v8);

  [v11 animateWithDuration:v13 animations:v17 completion:v10];
  _Block_release(v17);
  _Block_release(v13);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000DAF78()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 264);
  v5 = *(v1 + 256);

  return _swift_task_switch(sub_1000DB0BC, v5, v4);
}

uint64_t sub_1000DB0BC()
{
  v1 = v0[31];

  v2 = v0[30];
  v3 = v0[26];
  v19 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  if (*(v0 + 129))
  {
    v7 = 0.33;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v0[6] = sub_1000DC4E8;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100106B40;
  v0[5] = &unk_1001608D0;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];
  v12 = v6;

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v5;
  v13[4] = v4;
  v0[12] = sub_1000DC538;
  v0[13] = v13;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100005C38;
  v0[11] = &unk_100160920;
  v14 = _Block_copy(v0 + 8);
  v15 = v0[13];
  v16 = v12;
  sub_1000253F8(v5);

  [v8 animateWithDuration:v10 animations:v14 completion:v7];
  _Block_release(v14);
  _Block_release(v10);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000DB2F8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[23];

  (*(v4 + 8))(v2, v3);

  v8 = v0[1];
  v9 = v0[35];

  return v8();
}

void sub_1000DB3B0(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000DB410(int a1, id a2, void *a3, uint64_t a4)
{
  v6 = [a2 presentingViewController];
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8[4] = a3;
      v8[5] = a4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100106B40;
      v8[3] = &unk_100160948;
      a3 = _Block_copy(v8);
    }

    [v7 dismissViewControllerAnimated:0 completion:a3];
    _Block_release(a3);
  }
}

void sub_1000DB4F4(void *a1, int a2, int a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000DC1CC;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  sub_1000DA040(a3, v6, v7);
  sub_10002534C(v6);
}

void sub_1000DB5B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1000DB92C();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for NearbySharingInteractionViewController(0);
  objc_msgSendSuper2(&v5, "viewDidAppear:", a3);
}

void sub_1000DB608()
{
  v1 = v0;
  v2 = sub_1000077C8(&unk_1001770F0, &qword_10011F780);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  v7 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for NearbySharingInteractionViewState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = *(v0 + qword_100176FA0);
  sub_1000522F8(&v28 - v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = type metadata accessor for ContinuousClock.Instant();
  v20 = (*(*(v19 - 8) + 48))(v10, 1, v19);
  sub_1000159AC(v10, &qword_100174328, &qword_10011AF08);
  v21 = *(v3 + 56);
  sub_1000DDBAC(v17, v6, type metadata accessor for NearbySharingInteractionViewState);
  v6[v21] = v20 != 1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 4 && (sub_1000DDA5C(v6, v14, type metadata accessor for NearbySharingInteractionViewState), v27 = *(v14 + 24), v25 = *(v14 + 10), v26 = *(v14 + 11), sub_1000588EC(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3), *(v14 + 4), *(v14 + 5), *(v14 + 6), *(v14 + 7), *(v14 + 8), *(v14 + 9)), sub_100056D60((v14 + 104)), v20 == 1))
  {
    sub_1000E0E64(v6, type metadata accessor for NearbySharingInteractionViewState);
    v24 = *(v1 + qword_100176FB0);
    *(v1 + qword_100176FB0) = 1;
    if ((v24 & 1) == 0)
    {
      sub_1000DB92C();
    }
  }

  else
  {
    v23 = *(v1 + qword_100176FB0);
    *(v1 + qword_100176FB0) = 0;
    if (v23 == 1)
    {
      sub_1000DB92C();
    }

    sub_1000159AC(v6, &unk_1001770F0, &qword_10011F780);
  }
}

void sub_1000DB92C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = [v3 windowScene];

  if (!v4)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_13:
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Cannot update SystemAffordances for namedrop: remoteAlertScene has not been created", v13, 2u);
    }

    goto LABEL_17;
  }

  v6 = qword_100176FB0;
  if (v0[qword_100176FB0])
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  [v5 setDesiredHardwareButtonEvents:v7];
  if (v0[v6])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v8 setDismissalAnimationStyle:v9];
  [v8 setAllowsMenuButtonDismissal:v0[v6]];
  v10 = v0[v6];
  oslog = [objc_opt_self() settingsWithDuration:0.3 delay:0.1];
  [v8 setContentOverlaysStatusBar:(v10 & 1) == 0 animationSettings:?];

LABEL_17:
}

uint64_t sub_1000DBB60()
{
  v1 = *(v0 + qword_100176FA8);
}

id sub_1000DBBA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySharingInteractionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000DBBD8(uint64_t a1)
{
  v2 = *(a1 + qword_100176FA8);
}

unint64_t sub_1000DBCB8()
{
  result = qword_100177050;
  if (!qword_100177050)
  {
    sub_100007CCC(&qword_100177038, &qword_10011F730);
    sub_1000DC14C(&qword_100177058, type metadata accessor for NameDrop);
    sub_1000199C8(&unk_100177060, &unk_100178310, &qword_10011F748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177050);
  }

  return result;
}

unint64_t sub_1000DBDC0()
{
  result = qword_100177078;
  if (!qword_100177078)
  {
    sub_100007CCC(&qword_100177070, &qword_10011F750);
    sub_1000DBE4C();
    sub_1000DBF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177078);
  }

  return result;
}

unint64_t sub_1000DBE4C()
{
  result = qword_100177080;
  if (!qword_100177080)
  {
    sub_100007CCC(&qword_100177088, &qword_10011F758);
    sub_10004A02C();
    sub_1000199C8(&unk_100177060, &unk_100178310, &qword_10011F748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177080);
  }

  return result;
}

unint64_t sub_1000DBF04()
{
  result = qword_100177098;
  if (!qword_100177098)
  {
    sub_100007CCC(&qword_1001770A0, &qword_10011F760);
    sub_1000DBFBC();
    sub_1000199C8(&unk_100177060, &unk_100178310, &qword_10011F748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177098);
  }

  return result;
}

unint64_t sub_1000DBFBC()
{
  result = qword_1001770A8;
  if (!qword_1001770A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001770A8);
  }

  return result;
}

unint64_t sub_1000DC010()
{
  result = qword_1001770B0;
  if (!qword_1001770B0)
  {
    sub_100007CCC(&qword_100177030, &qword_10011F728);
    sub_1000DBCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001770B0);
  }

  return result;
}

unint64_t sub_1000DC09C()
{
  result = qword_1001770B8;
  if (!qword_1001770B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001770B8);
  }

  return result;
}

uint64_t sub_1000DC14C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DC194()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC1DC()
{
  v1 = *(sub_1000077C8(&qword_100174328, &qword_10011AF08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  if (*(v0 + v6))
  {
    v10 = *(v0 + v6 + 8);
  }

  return _swift_deallocObject(v0, v6 + 16, v2 | 7);
}

uint64_t sub_1000DC334(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000077C8(&qword_100174328, &qword_10011AF08) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = (v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10000BCF0;

  return sub_1000DA3E8(a1, v8, v9, v1 + v6, v11, v12, v14, v15);
}

uint64_t sub_1000DC498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DC4B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC4F0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000DC544@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC570(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_1000DC59C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC5C8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_1000DC5F4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000DC628(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_1000DC658@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DC684(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_1000DC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000DC7D0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void, __n128), unint64_t *a6, void (*a7)(uint64_t), uint64_t a8, uint64_t (*a9)(void), uint64_t a10, unint64_t *a11)
{
  v114 = a7;
  v115 = a8;
  v113 = a6;
  v102 = a3;
  v101 = a2;
  v116 = a1;
  v13 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v106 = &v97 - v15;
  v16 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v100 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v99 = &v97 - v20;
  __chkstk_darwin(v21);
  v105 = &v97 - v22;
  v23 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v104 = &v97 - v25;
  v26 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v111 = *(v26 - 8);
  v112 = v26;
  v27 = *(v111 + 8);
  __chkstk_darwin(v26);
  v110 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v109 = &v97 - v30;
  v108 = type metadata accessor for SFNearbySharingInteraction();
  v107 = *(v108 - 8);
  v31 = *(v107 + 64);
  __chkstk_darwin(v108);
  v33 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v103 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v97 - v39;
  v41 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v98 = &v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v44;
  v46 = __chkstk_darwin(v45);
  v48 = &v97 - v47;
  v119[3] = a5(0, v46);
  v119[4] = sub_1000DC14C(v113, v114);
  v49 = sub_100058F84(v119);
  sub_1000DDA5C(v116, v49, a9);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v35 + 88))(v40, v34) == enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
  {
    (*(v35 + 96))(v40, v34);
    v116 = v42;
    v114 = *(v42 + 32);
    (v114)(v48, v40, v41);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v50 = v109;
    SFNearbySharingInteraction.interactionType.getter();
    (*(v107 + 8))(v33, v108);
    v52 = v111;
    v51 = v112;
    v53 = v110;
    (*(v111 + 13))(v110, enum case for SFNearbySharingInteraction.InteractionType.connect(_:), v112);
    v54 = static SFNearbySharingInteraction.InteractionType.== infix(_:_:)();
    v55 = *(v52 + 1);
    v55(v53, v51);
    v55(v50, v51);
    if ((v54 & 1) != 0 && (v56 = v104, SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter(), v57 = type metadata accessor for UUID(), v58 = (*(*(v57 - 8) + 48))(v56, 1, v57), sub_1000159AC(v56, &qword_100172F08, &unk_10011E530), v58 == 1))
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100007D20(v59, qword_10017F350);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v116;
      if (v62)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Can not share content: we don't have a resolved endpoint.", v64, 2u);
      }

      (*(v63 + 8))(v48, v41);
    }

    else
    {
      v115 = v41;
      swift_getKeyPath();
      swift_getKeyPath();
      v78 = v105;
      static Published.subscript.getter();

      v79 = type metadata accessor for ContinuousClock.Instant();
      v80 = *(v79 - 8);
      if ((*(v80 + 48))(v78, 1, v79) == 1)
      {
        v112 = a10;
        v113 = a11;
        sub_1000159AC(v78, &qword_100174328, &qword_10011AF08);
        v81 = v99;
        static ContinuousClock.Instant.now.getter();
        (*(v80 + 56))(v81, 0, 1, v79);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100007BA4(v81, v100, &qword_100174328, &qword_10011AF08);
        v82 = a4;
        static Published.subscript.setter();
        sub_1000159AC(v81, &qword_100174328, &qword_10011AF08);
        v83 = type metadata accessor for TaskPriority();
        (*(*(v83 - 8) + 56))(v106, 1, 1, v83);
        sub_100007878(v119, v118);
        sub_100007878(v101, v117);
        v84 = v116;
        v85 = *(v116 + 2);
        v86 = v98;
        v87 = v48;
        v111 = v48;
        v88 = v115;
        v85(v98, v87, v115);
        type metadata accessor for MainActor();
        v89 = v102;
        v90 = v102;
        v91 = v82;
        v92 = static MainActor.shared.getter();
        v93 = (*(v84 + 80) + 120) & ~*(v84 + 80);
        v94 = (v97 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
        v95 = swift_allocObject();
        v95[2] = v92;
        v95[3] = &protocol witness table for MainActor;
        sub_1000590D8(v118, (v95 + 4));
        sub_1000590D8(v117, (v95 + 9));
        v95[14] = v89;
        (v114)(v95 + v93, v86, v88);
        *(v95 + v94) = v91;
        sub_1000F9860(0, 0, v106, v113, v95);

        (*(v84 + 8))(v111, v88);
      }

      else
      {
        (*(v116 + 1))(v48, v115);
        sub_1000159AC(v78, &qword_100174328, &qword_10011AF08);
      }
    }
  }

  else
  {
    v65 = a4;
    v66 = *(v35 + 8);
    v66(v40, v34);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100007D20(v67, qword_10017F350);
    v68 = v65;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v118[0] = v72;
      *v71 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      v116 = v66;
      v73 = v103;
      static Published.subscript.getter();

      sub_1000DC14C(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v116(v73, v34);
      v77 = sub_10003E81C(v74, v76, v118);

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v69, v70, "Can not share content as the state of the interaction is not connected: %s", v71, 0xCu);
      sub_100007920(v72);
    }
  }

  return sub_100007920(v119);
}

unint64_t sub_1000DD41C()
{
  result = qword_100177110;
  if (!qword_100177110)
  {
    sub_1000165C4(255, &qword_100173D90, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177110);
  }

  return result;
}

uint64_t sub_1000DD484()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DD4C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_1000DD590(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1000DD5DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1000DD624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DD6B0()
{
  result = qword_1001771B0;
  if (!qword_1001771B0)
  {
    sub_100007CCC(&qword_100177018, &unk_10011F710);
    sub_1000DD768();
    sub_1000199C8(&qword_1001771F0, &qword_100177020, &qword_100120EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B0);
  }

  return result;
}

unint64_t sub_1000DD768()
{
  result = qword_1001771B8;
  if (!qword_1001771B8)
  {
    sub_100007CCC(&qword_100177010, &qword_10011F708);
    sub_1000DD7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771B8);
  }

  return result;
}

unint64_t sub_1000DD7F4()
{
  result = qword_1001771C0;
  if (!qword_1001771C0)
  {
    sub_100007CCC(&qword_100177008, &qword_10011F700);
    sub_1000DD8B0();
    sub_1000DC14C(&qword_1001771E8, type metadata accessor for LumaTrackingViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C0);
  }

  return result;
}

unint64_t sub_1000DD8B0()
{
  result = qword_1001771C8;
  if (!qword_1001771C8)
  {
    sub_100007CCC(&qword_1001771D0, &qword_10011F920);
    sub_1000DD934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771C8);
  }

  return result;
}

unint64_t sub_1000DD934()
{
  result = qword_1001771D8;
  if (!qword_1001771D8)
  {
    sub_100007CCC(&qword_1001771E0, &qword_10011F928);
    sub_1000DBDC0();
    sub_1000DC010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771D8);
  }

  return result;
}

unint64_t sub_1000DD9D0()
{
  result = qword_1001771F8;
  if (!qword_1001771F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001771F8);
  }

  return result;
}

uint64_t sub_1000DDA5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DDAC4()
{
  v1 = (type metadata accessor for NameDrop(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DDBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DDC14()
{
  v1 = type metadata accessor for NameDrop(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 20));
  return sub_10004F4F8();
}

unint64_t sub_1000DDD1C()
{
  result = qword_100177250;
  if (!qword_100177250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177250);
  }

  return result;
}

unint64_t sub_1000DDD70()
{
  result = qword_100177258;
  if (!qword_100177258)
  {
    sub_100007CCC(&qword_100177240, &qword_10011FAE0);
    sub_1000DDE28();
    sub_1000199C8(&qword_100177278, &qword_100177280, &qword_10011FAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177258);
  }

  return result;
}

unint64_t sub_1000DDE28()
{
  result = qword_100177260;
  if (!qword_100177260)
  {
    sub_100007CCC(&unk_100177268, &qword_10011FAE8);
    sub_1000944F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177260);
  }

  return result;
}

uint64_t sub_1000DDEBC()
{
  v9 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  sub_1000588EC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_100007920((v0 + 136));
  v1 = *(v0 + 176);

  v2 = *(v0 + 192);

  v3 = *(v0 + 208);

  v4 = *(v0 + 224);

  v5 = *(v0 + 240);

  return _swift_deallocObject(v0, 248, 7);
}

unint64_t sub_1000DDF80()
{
  result = qword_1001772E8;
  if (!qword_1001772E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001772E8);
  }

  return result;
}

unint64_t sub_1000DDFE4()
{
  result = qword_100177318;
  if (!qword_100177318)
  {
    sub_100007CCC(&qword_1001772D0, &qword_10011FB70);
    sub_1000DE070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177318);
  }

  return result;
}

unint64_t sub_1000DE070()
{
  result = qword_100177320;
  if (!qword_100177320)
  {
    sub_100007CCC(&qword_100177308, &qword_10011FBA0);
    sub_1000DE0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177320);
  }

  return result;
}

unint64_t sub_1000DE0FC()
{
  result = qword_100177328;
  if (!qword_100177328)
  {
    sub_100007CCC(&qword_100177300, &qword_10011FB98);
    sub_1000DE188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177328);
  }

  return result;
}

unint64_t sub_1000DE188()
{
  result = qword_100177330;
  if (!qword_100177330)
  {
    sub_100007CCC(&qword_1001772F8, &qword_10011FB90);
    sub_1000199C8(&qword_100177338, &qword_100177340, &qword_10011FBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177330);
  }

  return result;
}

unint64_t sub_1000DE240()
{
  result = qword_100177348;
  if (!qword_100177348)
  {
    sub_100007CCC(&qword_100177310, &qword_10011FBA8);
    sub_1000DE2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177348);
  }

  return result;
}

unint64_t sub_1000DE2CC()
{
  result = qword_100177350;
  if (!qword_100177350)
  {
    sub_100007CCC(&qword_100177358, &qword_10011FBB8);
    sub_1000DE358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177350);
  }

  return result;
}

unint64_t sub_1000DE358()
{
  result = qword_100177360;
  if (!qword_100177360)
  {
    sub_100007CCC(&qword_100177368, &qword_10011FBC0);
    sub_1000199C8(&qword_100177370, &qword_100177378, &qword_10011FBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177360);
  }

  return result;
}

unint64_t sub_1000DE418()
{
  result = qword_1001774E0;
  if (!qword_1001774E0)
  {
    sub_100007CCC(&qword_1001774D0, &qword_10011FD68);
    sub_1000DE4A4();
    sub_1000DE6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774E0);
  }

  return result;
}

unint64_t sub_1000DE4A4()
{
  result = qword_1001774E8;
  if (!qword_1001774E8)
  {
    sub_100007CCC(&qword_1001774D8, &qword_10011FD70);
    sub_1000DE530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774E8);
  }

  return result;
}

unint64_t sub_1000DE530()
{
  result = qword_1001774F0;
  if (!qword_1001774F0)
  {
    sub_100007CCC(&qword_1001774F8, &qword_10011FD78);
    sub_1000DE5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001774F0);
  }

  return result;
}

unint64_t sub_1000DE5BC()
{
  result = qword_100177500;
  if (!qword_100177500)
  {
    sub_100007CCC(&qword_100177508, &qword_10011FD80);
    sub_1000DE674();
    sub_1000199C8(&qword_100177518, &qword_100177520, &qword_10011FD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177500);
  }

  return result;
}

unint64_t sub_1000DE674()
{
  result = qword_100177510;
  if (!qword_100177510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177510);
  }

  return result;
}

unint64_t sub_1000DE6C8()
{
  result = qword_100177528;
  if (!qword_100177528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177528);
  }

  return result;
}

uint64_t sub_1000DE71C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000078DC(a1, a1[3]);
  result = sub_10000814C();
  *a2 = result;
  return result;
}

unint64_t sub_1000DE790()
{
  result = qword_100177550;
  if (!qword_100177550)
  {
    sub_100007CCC(&qword_1001773E8, &qword_10011FC38);
    sub_1000199C8(&qword_100177558, &qword_1001773D0, &qword_10011FC20);
    sub_1000DE848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177550);
  }

  return result;
}

unint64_t sub_1000DE848()
{
  result = qword_100177560;
  if (!qword_100177560)
  {
    sub_100007CCC(&qword_1001773C0, &qword_10011FC10);
    sub_1000DE8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177560);
  }

  return result;
}

unint64_t sub_1000DE8CC()
{
  result = qword_100177568;
  if (!qword_100177568)
  {
    sub_100007CCC(&qword_100177570, &qword_10011FDC8);
    sub_1000DE950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177568);
  }

  return result;
}

unint64_t sub_1000DE950()
{
  result = qword_100177578;
  if (!qword_100177578)
  {
    sub_100007CCC(&qword_100177580, &qword_10011FDD0);
    sub_1000DEA08();
    sub_1000199C8(&qword_100174CA8, &qword_1001775B0, &qword_10011BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177578);
  }

  return result;
}

unint64_t sub_1000DEA08()
{
  result = qword_100177588;
  if (!qword_100177588)
  {
    sub_100007CCC(&qword_100177590, &qword_10011FDD8);
    sub_1000DEFBC(&qword_100177598, &unk_1001775A0, &unk_10011FDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177588);
  }

  return result;
}

unint64_t sub_1000DEAB4()
{
  result = qword_1001775B8;
  if (!qword_1001775B8)
  {
    sub_100007CCC(&qword_1001773B0, &qword_10011FC00);
    sub_1000DEB6C();
    sub_1000199C8(&qword_100174CA8, &qword_1001775B0, &qword_10011BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001775B8);
  }

  return result;
}

unint64_t sub_1000DEB6C()
{
  result = qword_1001775C0;
  if (!qword_1001775C0)
  {
    sub_100007CCC(&qword_1001773A8, &qword_10011FBF8);
    sub_1000DEBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001775C0);
  }

  return result;
}

unint64_t sub_1000DEBF8()
{
  result = qword_1001775C8;
  if (!qword_1001775C8)
  {
    sub_100007CCC(&qword_1001773A0, &qword_10011FBF0);
    sub_1000199C8(&qword_1001775D0, &qword_100177398, &qword_10011FBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001775C8);
  }

  return result;
}

unint64_t sub_1000DECC0()
{
  result = qword_100177610;
  if (!qword_100177610)
  {
    sub_100007CCC(&qword_100177608, &qword_10011FE10);
    sub_1000DED44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177610);
  }

  return result;
}

unint64_t sub_1000DED44()
{
  result = qword_100177618;
  if (!qword_100177618)
  {
    sub_100007CCC(&qword_100177620, &qword_10011FE18);
    sub_1000DEDFC();
    sub_1000199C8(&qword_100174CA8, &qword_1001775B0, &qword_10011BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177618);
  }

  return result;
}

unint64_t sub_1000DEDFC()
{
  result = qword_100177628;
  if (!qword_100177628)
  {
    sub_100007CCC(&qword_100177630, &qword_10011FE20);
    sub_1000DEE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177628);
  }

  return result;
}

unint64_t sub_1000DEE88()
{
  result = qword_100177638;
  if (!qword_100177638)
  {
    sub_100007CCC(&qword_100177640, &qword_10011FE28);
    sub_1000DEF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177638);
  }

  return result;
}

unint64_t sub_1000DEF14()
{
  result = qword_100177648;
  if (!qword_100177648)
  {
    sub_100007CCC(&qword_100177650, &qword_10011FE30);
    sub_1000DEFBC(&qword_100177658, &unk_100177660, &qword_10011FE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177648);
  }

  return result;
}

uint64_t sub_1000DEFBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    sub_1000DC14C(&qword_100177548, type metadata accessor for ShareableContentActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DF064@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF090(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_1000DF0BC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF110@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000DF144(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_1000DF174(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    sub_1000DC14C(&qword_100177728, type metadata accessor for VibrancyEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DF228()
{
  result = qword_100177698;
  if (!qword_100177698)
  {
    sub_100007CCC(&qword_100177428, &qword_10011FC78);
    sub_1000DF2E0();
    sub_1000199C8(&qword_100174CA8, &qword_1001775B0, &qword_10011BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177698);
  }

  return result;
}

unint64_t sub_1000DF2E0()
{
  result = qword_1001776A0;
  if (!qword_1001776A0)
  {
    sub_100007CCC(&qword_100177420, &qword_10011FC70);
    sub_1000DF36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001776A0);
  }

  return result;
}

unint64_t sub_1000DF36C()
{
  result = qword_1001776A8;
  if (!qword_1001776A8)
  {
    sub_100007CCC(&qword_100177418, &qword_10011FC68);
    sub_1000DF3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001776A8);
  }

  return result;
}

unint64_t sub_1000DF3F8()
{
  result = qword_1001776B0;
  if (!qword_1001776B0)
  {
    sub_100007CCC(&qword_100177410, &qword_10011FC60);
    sub_1000DF484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001776B0);
  }

  return result;
}

unint64_t sub_1000DF484()
{
  result = qword_1001776B8;
  if (!qword_1001776B8)
  {
    sub_100007CCC(&qword_1001776C0, &qword_10011FEE8);
    sub_1000DF53C();
    sub_1000199C8(&qword_100177718, &qword_100177720, &qword_10011FF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001776B8);
  }

  return result;
}

unint64_t sub_1000DF53C()
{
  result = qword_1001776C8;
  if (!qword_1001776C8)
  {
    sub_100007CCC(&qword_1001776D0, &qword_10011FEF0);
    sub_1000DF5F4();
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001776C8);
  }

  return result;
}

unint64_t sub_1000DF5F4()
{
  result = qword_1001776D8;
  if (!qword_1001776D8)
  {
    sub_100007CCC(&qword_1001776E0, &qword_10011FEF8);
    sub_1000199C8(&qword_1001776E8, &qword_1001776F0, &qword_10011FF00);
    sub_1000199C8(&qword_1001776F8, &unk_100177700, &qword_100121270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001776D8);
  }

  return result;
}

unint64_t sub_1000DF6D8()
{
  result = qword_100177730;
  if (!qword_100177730)
  {
    sub_100007CCC(&qword_100177688, &qword_10011FEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177730);
  }

  return result;
}

unint64_t sub_1000DF790()
{
  result = qword_100177758;
  if (!qword_100177758)
  {
    sub_100007CCC(&qword_100177760, &qword_10011FF78);
    sub_1000DF848();
    sub_1000199C8(&qword_100174CA8, &qword_1001775B0, &qword_10011BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177758);
  }

  return result;
}

unint64_t sub_1000DF848()
{
  result = qword_100177768;
  if (!qword_100177768)
  {
    sub_100007CCC(&qword_100177770, &qword_10011FF80);
    sub_1000DF8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177768);
  }

  return result;
}

unint64_t sub_1000DF8D4()
{
  result = qword_100177778;
  if (!qword_100177778)
  {
    sub_100007CCC(&qword_100177780, &qword_10011FF88);
    sub_1000DF960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177778);
  }

  return result;
}

unint64_t sub_1000DF960()
{
  result = qword_100177788;
  if (!qword_100177788)
  {
    sub_100007CCC(&qword_100177790, &qword_10011FF90);
    sub_1000DFA18();
    sub_1000199C8(&qword_1001777B8, &qword_1001777C0, &qword_10011FFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177788);
  }

  return result;
}

unint64_t sub_1000DFA18()
{
  result = qword_100177798;
  if (!qword_100177798)
  {
    sub_100007CCC(&qword_1001777A0, &qword_10011FF98);
    sub_1000199C8(&qword_1001777A8, &qword_1001777B0, &qword_10011FFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177798);
  }

  return result;
}

unint64_t sub_1000DFAE0()
{
  result = qword_100177838;
  if (!qword_100177838)
  {
    sub_100007CCC(&qword_100177828, &qword_10011FFB0);
    sub_1000DFB6C();
    sub_1000DFBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177838);
  }

  return result;
}

unint64_t sub_1000DFB6C()
{
  result = qword_100177840;
  if (!qword_100177840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177840);
  }

  return result;
}

unint64_t sub_1000DFBC0()
{
  result = qword_100177848;
  if (!qword_100177848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177848);
  }

  return result;
}

uint64_t sub_1000DFC14@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DFC40(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

unint64_t sub_1000DFC6C()
{
  result = qword_100177868;
  if (!qword_100177868)
  {
    sub_100007CCC(&qword_100177480, &qword_10011FCD0);
    sub_1000199C8(&qword_100177870, &qword_100177468, &qword_10011FCB8);
    sub_1000DFD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177868);
  }

  return result;
}

unint64_t sub_1000DFD24()
{
  result = qword_100177878;
  if (!qword_100177878)
  {
    sub_100007CCC(&qword_100177478, &qword_10011FCC8);
    sub_1000DC14C(&qword_100177728, type metadata accessor for VibrancyEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177878);
  }

  return result;
}

unint64_t sub_1000DFDE8()
{
  result = qword_100177890;
  if (!qword_100177890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177890);
  }

  return result;
}

uint64_t sub_1000DFF10@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DFF3C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_1000DFF68()
{
  v1 = (type metadata accessor for StartCollaborationAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 248) & ~v2;
  v4 = *(*v1 + 64);

  v15 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  sub_1000588EC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_100007920((v0 + 136));
  v5 = *(v0 + 176);

  v6 = *(v0 + 192);

  v7 = *(v0 + 208);

  v8 = *(v0 + 224);

  v9 = *(v0 + 240);

  v10 = type metadata accessor for LocalizedStringResource();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = *(v0 + v3 + v1[7]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E00C8()
{
  v1 = *(type metadata accessor for StartCollaborationAction(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 248) & ~*(v1 + 80));

  return sub_1000D7078(v0 + 16, v2);
}

uint64_t sub_1000E0140()
{
  v1 = (type metadata accessor for SendOverAirDropAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 248) & ~v2;
  v4 = *(*v1 + 64);

  v15 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  sub_1000588EC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_100007920((v0 + 136));
  v5 = *(v0 + 176);

  v6 = *(v0 + 192);

  v7 = *(v0 + 208);

  v8 = *(v0 + 224);

  v9 = *(v0 + 240);

  v10 = type metadata accessor for LocalizedStringResource();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = *(v0 + v3 + v1[7]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E0370()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100007920((v0 + 32));
  sub_100007920((v0 + 72));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000E0460(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext() - 8);
  v6 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[14];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000BCF0;

  return sub_100054770(a1, v7, v8, (v1 + 4), (v1 + 9), v9, v1 + v6, v10);
}

uint64_t sub_1000E059C()
{
  v9 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  sub_1000588EC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_100007920((v0 + 136));
  v1 = *(v0 + 176);

  v2 = *(v0 + 192);

  v3 = *(v0 + 208);

  v4 = *(v0 + 224);

  v5 = *(v0 + 240);

  sub_100007920((v0 + 248));

  return _swift_deallocObject(v0, 288, 7);
}

uint64_t sub_1000E06A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000E0790(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000E0878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000E0908()
{
  result = qword_100177988;
  if (!qword_100177988)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100177988);
  }

  return result;
}

unint64_t sub_1000E099C()
{
  result = qword_1001779B8;
  if (!qword_1001779B8)
  {
    sub_100007CCC(&qword_100177220, &qword_10011FAC0);
    sub_1000E0A54();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001779B8);
  }

  return result;
}

unint64_t sub_1000E0A54()
{
  result = qword_1001779C0;
  if (!qword_1001779C0)
  {
    sub_100007CCC(&unk_100177210, &unk_10011FAB0);
    sub_1000199C8(&qword_1001779C8, &unk_1001779D0, &unk_100120310);
    sub_1000199C8(&qword_100174B28, &qword_1001749A0, &qword_10011B760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001779C0);
  }

  return result;
}

uint64_t sub_1000E0B38()
{
  sub_100007CCC(&qword_100177228, &qword_10011FAC8);
  sub_100007CCC(&qword_100177240, &qword_10011FAE0);
  sub_1000199C8(&qword_100177248, &qword_100177228, &qword_10011FAC8);
  sub_1000DDD1C();
  sub_1000DDD70();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000E0C94()
{
  result = qword_100177A10;
  if (!qword_100177A10)
  {
    sub_100007CCC(&qword_100177A00, &qword_1001204C0);
    sub_1000E0D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177A10);
  }

  return result;
}

unint64_t sub_1000E0D20()
{
  result = qword_100177A18;
  if (!qword_100177A18)
  {
    sub_100007CCC(&qword_100177A20, &qword_1001204D0);
    sub_1000E0DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177A18);
  }

  return result;
}

unint64_t sub_1000E0DAC()
{
  result = qword_100177A28;
  if (!qword_100177A28)
  {
    sub_100007CCC(&unk_100177A30, &qword_1001204D8);
    sub_100021744();
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177A28);
  }

  return result;
}

uint64_t sub_1000E0E64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000E0EC4()
{
  result = qword_100177AD0;
  if (!qword_100177AD0)
  {
    sub_100007CCC(&qword_100177A68, &unk_100120500);
    sub_1000E0F50();
    sub_1000E10C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177AD0);
  }

  return result;
}

unint64_t sub_1000E0F50()
{
  result = qword_100177AD8;
  if (!qword_100177AD8)
  {
    sub_100007CCC(&qword_100177A78, &qword_100120510);
    sub_1000E1008();
    sub_1000199C8(&qword_100177B00, &qword_100177B08, &qword_100120578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177AD8);
  }

  return result;
}

unint64_t sub_1000E1008()
{
  result = qword_100177AE0;
  if (!qword_100177AE0)
  {
    sub_100007CCC(&qword_100177AE8, &unk_100120568);
    sub_1000199C8(&unk_100177AF0, &qword_100174CF8, &qword_10011BE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177AE0);
  }

  return result;
}

unint64_t sub_1000E10C0()
{
  result = qword_100177B10;
  if (!qword_100177B10)
  {
    sub_100007CCC(&qword_100177A50, &unk_100121550);
    sub_1000E1178();
    sub_1000199C8(&qword_1001776F8, &unk_100177700, &qword_100121270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B10);
  }

  return result;
}

unint64_t sub_1000E1178()
{
  result = qword_100177B18;
  if (!qword_100177B18)
  {
    sub_100007CCC(&qword_100177B20, &qword_100120580);
    sub_1000E1230();
    sub_1000199C8(&qword_100177B00, &qword_100177B08, &qword_100120578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B18);
  }

  return result;
}

unint64_t sub_1000E1230()
{
  result = qword_100177B28;
  if (!qword_100177B28)
  {
    sub_100007CCC(&qword_100177B30, &qword_100120588);
    sub_1000E12E8();
    sub_1000199C8(&qword_100177B48, &qword_100177B50, &qword_100120590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B28);
  }

  return result;
}

unint64_t sub_1000E12E8()
{
  result = qword_100177B38;
  if (!qword_100177B38)
  {
    sub_100007CCC(&unk_1001778C0, &qword_100120038);
    sub_1000199C8(&qword_100177B40, &qword_1001781F0, &qword_100120040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B38);
  }

  return result;
}

uint64_t sub_1000E13A8()
{
  v1 = (type metadata accessor for ShareableContentActionButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E1494()
{
  v1 = type metadata accessor for ShareableContentActionButton(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_1000E1508()
{
  result = qword_100177B60;
  if (!qword_100177B60)
  {
    sub_100007CCC(&qword_100177B58, &qword_1001205C8);
    sub_1000E15C0();
    sub_1000199C8(&qword_1001776F8, &unk_100177700, &qword_100121270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B60);
  }

  return result;
}

unint64_t sub_1000E15C0()
{
  result = qword_100177B68;
  if (!qword_100177B68)
  {
    sub_100007CCC(&qword_100177B70, &qword_1001205D0);
    sub_1000E164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B68);
  }

  return result;
}

unint64_t sub_1000E164C()
{
  result = qword_100177B78;
  if (!qword_100177B78)
  {
    sub_100007CCC(&qword_100177B80, &qword_1001205D8);
    sub_1000E1704();
    sub_1000199C8(&qword_100177BA8, &qword_100177BB0, &qword_1001205F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B78);
  }

  return result;
}

unint64_t sub_1000E1704()
{
  result = qword_100177B88;
  if (!qword_100177B88)
  {
    sub_100007CCC(&qword_100177B90, &qword_1001205E0);
    sub_1000E1790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B88);
  }

  return result;
}

unint64_t sub_1000E1790()
{
  result = qword_100177B98;
  if (!qword_100177B98)
  {
    sub_100007CCC(&qword_100177BA0, &qword_1001205E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B98);
  }

  return result;
}

unint64_t sub_1000E184C()
{
  result = qword_100177C00;
  if (!qword_100177C00)
  {
    sub_100007CCC(&qword_100178250, &unk_100121070);
    sub_100062B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C00);
  }

  return result;
}

unint64_t sub_1000E18DC()
{
  result = qword_100177C88;
  if (!qword_100177C88)
  {
    sub_100007CCC(&qword_100177C90, &qword_1001206A0);
    sub_1000E0C94();
    sub_1000199C8(&qword_100177A48, &qword_1001779F0, &qword_1001204B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C88);
  }

  return result;
}

unint64_t sub_1000E19DC()
{
  result = qword_100177CA8;
  if (!qword_100177CA8)
  {
    sub_100007CCC(&qword_100177BC8, &qword_100120608);
    sub_1000E1A94();
    sub_1000199C8(&qword_100177CE0, &unk_100177BD0, &unk_100120610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177CA8);
  }

  return result;
}

unint64_t sub_1000E1A94()
{
  result = qword_100177CB0;
  if (!qword_100177CB0)
  {
    sub_100007CCC(&qword_100177CB8, &qword_1001206B0);
    sub_1000E1B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177CB0);
  }

  return result;
}

unint64_t sub_1000E1B20()
{
  result = qword_100177CC0;
  if (!qword_100177CC0)
  {
    sub_100007CCC(&qword_100177CC8, &qword_1001206B8);
    sub_1000199C8(&qword_100177CD0, &qword_100177CD8, &qword_1001206C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177CC0);
  }

  return result;
}

unint64_t sub_1000E1BDC()
{
  result = qword_100177CE8;
  if (!qword_100177CE8)
  {
    sub_100007CCC(&qword_100177BE8, &qword_100120628);
    sub_1000199C8(&qword_100177CF0, &qword_100177CF8, &qword_1001206C8);
    sub_1000199C8(&qword_1001777B8, &qword_1001777C0, &qword_10011FFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177CE8);
  }

  return result;
}

uint64_t sub_1000E1D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100007BA4(a3, v24 - v10, &qword_100172F50, &qword_10011E500);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000159AC(v11, &qword_100172F50, &qword_10011E500);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000E1FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v28[0] = a4;
  v12 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v28 - v14;
  sub_100007BA4(a3, v28 - v14, &qword_100172F50, &qword_10011E500);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_1000159AC(v15, &qword_100172F50, &qword_10011E500);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter() + 32;

      sub_1000077C8(a6, a7);
      v25 = (v23 | v21);
      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v25 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      v28[1] = 7;
      v28[2] = v25;
      v28[3] = v24;
      v26 = swift_task_create();

      sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);

      return v26;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
  sub_1000077C8(a6, a7);
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  return swift_task_create();
}

uint64_t sub_1000E2284(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000E6A18;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7(v8, v9, ObjCClassMetadata, a4);

  sub_10002534C(v8);
}

void sub_1000E238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1000E23FC()
{
  v1 = [v0 content];
  v2 = [v1 metadata];

  [v2 _populateMetadataForBackwardCompatibility];
  v3 = [v0 content];
  v4 = [v3 metadata];

  v5 = [v4 title];
  if (!v5)
  {
    return 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1000E24F0(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100177EC0, &unk_1001208B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = [objc_allocWithZone(SWShareableContentExtractor) init];
  v8 = String._bridgeToObjectiveC()();
  v9 = NSSelectorFromString(v8);

  if ([v7 respondsToSelector:v9])
  {
    (*(v3 + 16))(v6, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v6, v2);
    aBlock[4] = sub_1000E6B94;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E28F4;
    aBlock[3] = &unk_100161140;
    v12 = _Block_copy(aBlock);

    [v7 performSelector:v9 withObject:v12];
    _Block_release(v12);
  }

  else
  {
    sub_1000E6B2C();
    aBlock[0] = swift_allocError();
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1000E273C(void *a1, uint64_t a2)
{
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_10017F350);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = a1;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Asynchronous shareable content returned from asynchronousLPMetadataWithCompletionHandler - %@", v8, 0xCu);
    sub_1000159AC(v9, &qword_100172EB0, &qword_100119410);
  }

  if (a2)
  {
    swift_errorRetain();
    sub_1000077C8(&qword_100177EC0, &unk_1001208B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v12 = v5;
    sub_1000077C8(&qword_100177EC0, &unk_1001208B0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1000E28F4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

double sub_1000E29A4@<D0>(uint64_t a1@<X8>)
{
  v3 = [*v1 content];
  v4 = [v3 sourceBundleIdentifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_10009010C(v5, v7, v10);
  v8 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v8;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  return result;
}

uint64_t sub_1000E2A4C()
{
  v1 = [*v0 itemProviders];
  sub_1000165C4(0, &unk_1001744B0, NSItemProvider_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1000E2AB4()
{
  v1 = [*v0 metadata];

  return v1;
}

uint64_t sub_1000E2AEC()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_1000077C8(&qword_100177EB8, &qword_1001208A8);
  *v2 = v0;
  v2[1] = sub_1000E2BD4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000018, 0x80000001001250B0, sub_1000E24F0, 0, v3);
}

uint64_t sub_1000E2BD4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1000E2D04;
  }

  else
  {
    v3 = sub_1000E2CE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_1000E2D1C()
{
  v1 = [*v0 previewImage];

  return v1;
}

void sub_1000E2D54(void *a1)
{
  [*v1 setPreviewImage:a1];
}

uint64_t sub_1000E2DC8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000E2EE4;
  v2 = swift_continuation_init();
  v0[17] = sub_1000077C8(&qword_100177EA8, &qword_1001208A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000E315C;
  v0[13] = &unk_1001610F0;
  v0[14] = v2;
  [v1 retrieveShareableContentWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E2EE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1000E30F0;
  }

  else
  {
    v3 = sub_1000E2FF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E2FF4()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = *(v0 + 144);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v5 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [objc_allocWithZone(AUISWShareableContent) initWithContent:v4];

LABEL_11:
  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_1000E30F0()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1000E315C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000078DC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000165C4(0, &qword_100177EB0, SWShareableContent_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000E324C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000E32E0;

  return sub_1000E2DA8();
}

uint64_t sub_1000E32E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1000E33F0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

void *sub_1000E3434()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1000E3488(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100178038, &qword_100120A38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  sub_1000A8B44(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_1000E9E28;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E37A4;
  aBlock[3] = &unk_1001613C0;
  v11 = _Block_copy(aBlock);

  [v7 currentUserActivityUUIDWithOptions:isa completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1000E3688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000077C8(&unk_100178010, &unk_100120A18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  if (a4)
  {
    v15[1] = a4;
    swift_errorRetain();
    sub_1000077C8(&qword_100178038, &qword_100120A38);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v14 = &v12[*(v10 + 48)];
    sub_100007BA4(a1, v12, &qword_100172F08, &unk_10011E530);
    *v14 = a2;
    *(v14 + 1) = a3;

    sub_1000077C8(&qword_100178038, &qword_100120A38);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000E37A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  if (a3)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a4;
  v13(v11, v16, a3, a4);

  return sub_1000159AC(v11, &qword_100172F08, &unk_10011E530);
}

uint64_t sub_1000E3930(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000078DC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000E3A00(uint64_t a1)
{
  *(v1 + 112) = a1;
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = sub_1000E3AAC;

  return sub_1000E8D10(v1 + 16);
}

uint64_t sub_1000E3AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 32);
    *v5 = *(v2 + 16);
    v5[1] = v6;
    v7 = *(v2 + 48);
    v8 = *(v2 + 64);
    v9 = *(v2 + 96);
    v5[4] = *(v2 + 80);
    v5[5] = v9;
    v5[2] = v7;
    v5[3] = v8;
  }

  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_1000E3BCC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_1000E3C08()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_1000E3C7C()
{
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_1000E3E1C;
  v1 = swift_continuation_init();
  v2 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  [v2 setNeedsUserInteractivePriority:1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[14] = sub_1000E9EDC;
  v0[15] = v3;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000E3FFC;
  v0[13] = &unk_100161410;
  v4 = _Block_copy(v0 + 10);
  v5 = v0[15];

  [v2 setTransitionHandler:v4];
  _Block_release(v4);
  v0[18] = [objc_opt_self() monitorWithConfiguration:v2];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E3E1C()
{
  v2 = *v0;
  **(*v0 + 136) = *(*v0 + 128);

  return _swift_task_switch(sub_1000E3F2C, 0, 0);
}

uint64_t sub_1000E3F2C()
{
  v1 = *(v0 + 144);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000E3FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    **(*(a4 + 64) + 40) = a2;
    v5 = a2;

    _swift_continuation_resume(a4);
  }
}

void sub_1000E3FFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t sub_1000E409C(uint64_t a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1000E4148;

  return sub_1000E782C(v1 + 16);
}

uint64_t sub_1000E4148()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 16);
    v7 = *(v2 + 32);
    v8 = *(v2 + 64);
    v5[2] = *(v2 + 48);
    v5[3] = v8;
    *v5 = v6;
    v5[1] = v7;
  }

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_1000E4260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *(a1 + 72);
  v7 = ~(v6 >> 58) & 0x20;
  v8 = v6 < 0;
  v9 = 8;
  if (!v8)
  {
    v9 = 40;
  }

  v10 = *(a1 + v9);
  v11 = *(a1 + v7);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 1598309441;
  v12._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = v11;
  v13._object = v10;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringResource.init(stringInterpolation:)();
  v15 = type metadata accessor for LocalizedStringResource();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

__n128 sub_1000E45C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 8) bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  sub_10009010C(v5, v7, v13);
  v8 = v14;
  v17 = v15;
  v11 = v13[1];
  v12 = v13[0];
  v9 = v16;
  sub_1000159AC(&v17, &unk_100175EA0, &qword_100120A00);
  result = v11;
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v8;
  *(a1 + 40) = &_swiftEmptySetSingleton;
  *(a1 + 48) = v9 & 1;
  return result;
}

void *sub_1000E468C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1000E4700()
{
  v1 = [*(v0 + 72) activeConversations];
  sub_1000165C4(0, &unk_100177FF0, TUConversation_ptr);
  sub_100015234(&qword_1001763E0, &unk_100177FF0, TUConversation_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (!v7)
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_12:
  v15 = (v13 - 1) & v13;
  v1 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
  if (!v1)
  {
LABEL_19:
    sub_100026860();

LABEL_20:
    v1 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  while ([v1 state] != 3)
  {

    v6 = v14;
    v7 = v15;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v16 = __CocoaSet.Iterator.next()();
    if (v16)
    {
      *(v0 + 64) = v16;
      swift_dynamicCast();
      v1 = *(v0 + 56);
      v14 = v6;
      v15 = v7;
      if (v1)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  sub_100026860();

  v20 = [v1 activitySessions];
  sub_1000165C4(0, &qword_100178000, TUConversationActivitySession_ptr);
  sub_100015234(&qword_100178008, &qword_100178000, TUConversationActivitySession_ptr);
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_1000F965C(v21);

  if (!v22)
  {
LABEL_28:
    if (qword_100172218 == -1)
    {
LABEL_29:
      v24 = type metadata accessor for Logger();
      sub_100007D20(v24, qword_10017F350);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Active conversation does not have any joined SharePlay sessions, returning nil from ActiveSharePlaySessionProvider", v27, 2u);
      }

      goto LABEL_20;
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

  if ([v22 state] != 1)
  {

    goto LABEL_28;
  }

  v23 = [v22 activity];

  v17 = v23;
LABEL_21:
  v18 = *(v0 + 8);

  return v18(v1, v17, 0);
}

uint64_t sub_1000E4B1C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000E4BB4;

  return sub_1000E46E0(v3);
}

uint64_t sub_1000E4BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

double sub_1000E4CD8@<D0>(char *a1@<X0>, unint64_t a2@<X8>)
{
  v76 = type metadata accessor for UTType();
  v4 = *(v76 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v76);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v73 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  __chkstk_darwin(v14);
  v72 = &v57 - v15;
  v74 = v16;
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for SFProximityHandoff.Content.Item();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v79 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ProximityHandoffInteractionContent(0);
  v24 = *(v57 + 32);
  v59 = a2;
  *(a2 + v24) = 0;
  v78 = [objc_allocWithZone(NSItemProvider) init];
  v58 = a1;
  v25 = SFProximityHandoff.Content.items.getter();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v77 = 0;
    v28 = v4;
    v29 = 0;
    v86 = v25 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v85 = v21 + 16;
    v84 = v21 + 88;
    v83 = enum case for SFProximityHandoff.Content.Item.url(_:);
    v65 = (v21 + 8);
    v64 = (v21 + 96);
    v82 = (v8 + 32);
    v63 = (v28 + 8);
    v62 = v8 + 16;
    v61 = &v88;
    v60 = v8 + 8;
    v71 = v8;
    v69 = v19;
    v67 = v21;
    v30 = v79;
    v70 = v13;
    v68 = v20;
    v66 = v25;
    while (v27 <= *(v26 + 16))
    {
      --v27;
      (*(v21 + 16))(v30, v86 + *(v21 + 72) * v27, v20);
      v31 = (*(v21 + 88))(v30, v20);
      if (v31 == v83)
      {
        (*v64)(v30, v20);
        v32 = *v82;
        (*v82)(v19, v30, v7);
        URL._bridgeToObjectiveC()(v33);
        v35 = v34;
        v36 = [v34 _wp_urlByRemovingTrackingInformation];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = URL.host(percentEncoded:)(0);
        object = v39.value._object;
        countAndFlagsBits = v39.value._countAndFlagsBits;
        v81 = v29;
        if (!v39.value._object)
        {
          countAndFlagsBits = URL.absoluteString.getter();
        }

        v77 = countAndFlagsBits;
        v80 = object;
        v40 = v72;
        v32(v72, v13, v7);
        v41 = v75;
        static UTType.url.getter();
        UTType.identifier.getter();
        (*v63)(v41, v76);
        v42 = String._bridgeToObjectiveC()();

        v43 = v7;
        v44 = v71;
        v45 = v73;
        (*(v71 + 16))(v73, v40, v43);
        v8 = (*(v44 + 80) + 16) & ~*(v44 + 80);
        v46 = swift_allocObject();
        v32((v46 + v8), v45, v43);
        *&v89 = sub_1000EA080;
        *(&v89 + 1) = v46;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v88 = sub_1000E2284;
        *(&v88 + 1) = &unk_100161078;
        v47 = _Block_copy(&aBlock);

        [v78 registerItemForTypeIdentifier:v42 loadHandler:v47];
        _Block_release(v47);

        v48 = *(v44 + 8);
        v7 = v43;
        v13 = v70;
        v48(v40, v7);
        v19 = v69;
        v48(v69, v7);
        v30 = v79;
        v29 = v80;
        v20 = v68;
        v21 = v67;
        v26 = v66;
        if (!v27)
        {
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
        (*v65)(v30, v20);
        if (!v27)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v77 = 0;
  v29 = 0;
LABEL_10:
  v26 = type metadata accessor for SFProximityHandoff.Content();
  v13 = *(v26 - 8);
  v8 = v59;
  v30 = v58;
  (*(v13 + 2))(v59, v58, v26);
  v20 = v57;
  *(v8 + *(v57 + 20)) = v78;
  v49 = SFProximityHandoff.Content.title.getter();
  if (!v50)
  {
LABEL_13:

    v49 = v77;
    goto LABEL_14;
  }

  v29 = v50;
LABEL_14:
  v51 = (v8 + *(v20 + 24));
  *v51 = v49;
  v51[1] = v29;
  v52 = SFProximityHandoff.Content.bundleIdentifier.getter();
  sub_10009010C(v52, v53, &aBlock);

  (*(v13 + 1))(v30, v26);
  v54 = v8 + *(v20 + 28);
  v55 = v88;
  *v54 = aBlock;
  *(v54 + 16) = v55;
  result = *&v89;
  *(v54 + 32) = v89;
  *(v54 + 48) = v90;
  return result;
}

uint64_t sub_1000E5474(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1000E54BC(uint64_t a1)
{
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100118700;
  v4 = *(v1 + *(a1 + 20));
  *(v3 + 32) = v4;
  v5 = v4;
  return v3;
}

void *sub_1000E5528(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = v2;
  return v2;
}

void sub_1000E5554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);

  *(v2 + v4) = a1;
}

uint64_t sub_1000E558C()
{
  v1 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider____lazy_storage___shareableContentTask;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider____lazy_storage___shareableContentTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider____lazy_storage___shareableContentTask);
  }

  else
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = sub_1000E9CD8(&qword_100177E78, type metadata accessor for ProximityHandoffInteractionContentProvider);
    v9 = swift_allocObject();
    v9[2] = v0;
    v9[3] = v8;
    v9[4] = v0;
    swift_retain_n();
    v6 = sub_1000E1FD4(0, 0, v4, &unk_100120878, v9, &unk_100177E60, qword_100120840);
    v10 = *(v0 + v5);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1000E571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for SFProximityHandoff.Content();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(sub_1000077C8(&unk_100177E60, qword_100120840) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1000077C8(&qword_100177E80, &qword_10011DFD0);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = sub_1000077C8(&qword_100177E88, &qword_100120888);
  v4[11] = v12;
  v13 = *(v12 - 8);
  v4[12] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v16 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_stream;
  v4[13] = v15;
  v4[14] = v16;

  return _swift_task_switch(sub_1000E58EC, 0, 0);
}

uint64_t sub_1000E58EC()
{
  v1 = v0[13];
  (*(v0[9] + 16))(v0[10], v0[3] + v0[14], v0[8]);
  sub_1000199C8(&qword_100177E90, &qword_100177E80, &qword_10011DFD0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = sub_1000199C8(&unk_100177E98, &qword_100177E88, &qword_100120888);
  v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000E5A3C;
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[7];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v2);
}

uint64_t sub_1000E5A3C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_1000E5B7C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000E5B7C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  if (v4 == 1)
  {
    (*(v6 + 8))(v0[13], v0[11]);
    v8 = 1;
  }

  else
  {
    v9 = v0[6];
    v10 = v0[2];
    v11 = *(v3 + 32);
    v11(v9, v1, v2);
    (*(v6 + 8))(v5, v7);
    v11(v10, v9, v2);
    v8 = 0;
  }

  v12 = v0[13];
  v13 = v0[10];
  v15 = v0[6];
  v14 = v0[7];
  (*(v0[5] + 56))(v0[2], v8, 1, v0[4]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E5CF0()
{
  v1 = v0;
  v2 = sub_1000077C8(&qword_100175FC8, &unk_100120860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_continuation;
  (*(v3 + 16))(&v14 - v6, v1 + OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_continuation, v2, v5);
  AsyncStream.Continuation.finish()();
  v9 = *(v3 + 8);
  v9(v7, v2);
  v10 = OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider_stream;
  v11 = sub_1000077C8(&qword_100177E80, &qword_10011DFD0);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v9((v1 + v8), v2);
  v12 = *(v1 + OBJC_IVAR____TtC9AirDropUI42ProximityHandoffInteractionContentProvider____lazy_storage___shareableContentTask);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

void sub_1000E5E94()
{
  sub_1000E6834(319, &qword_100177D70, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000E6834(319, &unk_100177D78, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000E5FA8()
{
  v0 = sub_1000077C8(&qword_100177E70, &qword_100120858);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v22 - v3;
  v5 = sub_1000077C8(&unk_100177E60, qword_100120840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SFProximityHandoff.Content();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  SFProximityHandoff.Interaction.content.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000159AC(v8, &unk_100177E60, qword_100120840);
  }

  (*(v10 + 32))(v16, v8, v9);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100007D20(v18, qword_10017F350);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v23 = v1;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "ProximityHandoffInteractionContentProvider: content resolved", v21, 2u);
    v1 = v23;
  }

  (*(v10 + 16))(v13, v16, v9);
  sub_1000077C8(&qword_100175FC8, &unk_100120860);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_1000E6310(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000077C8(&unk_100177E60, qword_100120840);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for SFProximityHandoff.Content();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000E6418, v1, 0);
}

uint64_t sub_1000E6418()
{
  v1 = v0[3];
  v2 = sub_1000E558C();
  v0[10] = v2;
  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  *v4 = v0;
  v4[1] = sub_1000E64E4;
  v7 = v0[4];
  v6 = v0[5];

  return Task.value.getter(v6, v2, v7, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000E64E4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = v0;

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1000E67BC;
  }

  else
  {
    v7 = sub_1000E662C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000E662C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000159AC(v3, &unk_100177E60, qword_100120840);
    v4 = 1;
  }

  else
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[2];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    v8 = sub_1000E4CD8(v6, v7);
    (*(v2 + 8))(v5, v1, v8);
    v4 = 0;
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[5];
  v12 = v0[2];
  v13 = type metadata accessor for ProximityHandoffInteractionContent(0);
  (*(*(v13 - 8) + 56))(v12, v4, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000E67BC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

void sub_1000E6834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SFProximityHandoff.Content();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000E68AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BCF0;

  return sub_1000E6310(a1);
}

uint64_t sub_1000E69C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E69E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E6A20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E6A60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_1000E571C(a1, v4, v5, v6);
}

unint64_t sub_1000E6B2C()
{
  result = qword_100177EC8;
  if (!qword_100177EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177EC8);
  }

  return result;
}

uint64_t sub_1000E6B94(void *a1, uint64_t a2)
{
  v4 = *(*(sub_1000077C8(&qword_100177EC0, &unk_1001208B0) - 8) + 80);

  return sub_1000E273C(a1, a2);
}

uint64_t sub_1000E6C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFProximityHandoff.Content();
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

uint64_t sub_1000E6D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFProximityHandoff.Content();
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

void sub_1000E6DEC()
{
  type metadata accessor for SFProximityHandoff.Content();
  if (v0 <= 0x3F)
  {
    sub_1000165C4(319, &unk_1001744B0, NSItemProvider_ptr);
    if (v1 <= 0x3F)
    {
      sub_10004A5CC();
      if (v2 <= 0x3F)
      {
        sub_1000E6EB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E6EB8()
{
  if (!qword_100177F40[0])
  {
    sub_1000165C4(255, &qword_100175E50, UIImage_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100177F40);
    }
  }
}

uint64_t sub_1000E6F44()
{
  v1 = *(*(sub_1000077C8(&qword_100172F50, &qword_10011E500) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = sub_1000077C8(&qword_100178040, &qword_100120A50);
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000E7050, 0, 0);
}

uint64_t sub_1000E7050()
{
  v1 = v0[2];
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = async function pointer to withOperationTimeout<A>(_:priority:operation:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_1000165C4(0, &qword_100178048, FBSDisplayLayout_ptr);
  *v4 = v0;
  v4[1] = sub_1000E7174;
  v6 = v0[6];
  v7 = v0[2];

  return withOperationTimeout<A>(_:priority:operation:)(v6, 2000000000000000000, 0, v7, &unk_100120A58, 0, v5);
}

uint64_t sub_1000E7174()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    sub_1000159AC(*(v2 + 16), &qword_100172F50, &qword_10011E500);

    return _swift_task_switch(sub_1000E72C0, 0, 0);
  }
}

uint64_t sub_1000E72C0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 88))(v1, v2);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4 == enum case for OperationTimeoutResult.success<A>(_:))
  {
    (*(v6 + 96))(v0[5], v7);
    v48 = *v5;
    v8 = [*v5 elements];
    sub_1000165C4(0, &unk_100178050, FBSDisplayLayoutElement_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_53;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v49 = v0;
      if (!i)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v0 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ([v12 isUIApplicationElement])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v0 == i)
        {
          v0 = v49;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      ;
    }

LABEL_21:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v22)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = _swiftEmptyArrayStorage[2];
      if (v22)
      {
LABEL_24:
        v23 = 0;
        v24 = &selRef_colorEffectMatrix_;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_52;
            }

            v25 = _swiftEmptyArrayStorage[v23 + 4];
          }

          v26 = v25;
          v0 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_51;
          }

          v27 = v22;
          v28 = [v25 v24[51]];
          if (v28)
          {
            v29 = v28;
            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;
          }

          else
          {
            v30 = 0;
            v32 = 0;
          }

          v33 = [objc_opt_self() mainBundle];
          v9 = v24;
          v34 = [v33 v24[51]];

          if (v34)
          {
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;

            if (v32)
            {
              if (!v37)
              {
                goto LABEL_45;
              }

              if (v30 == v35 && v32 == v37)
              {
              }

              else
              {
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v38 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }
            }

            else if (v37)
            {
LABEL_45:

LABEL_46:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v39 = _swiftEmptyArrayStorage[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_27;
            }
          }

          else if (v32)
          {
            goto LABEL_45;
          }

LABEL_27:
          v24 = v9;
          v22 = v27;
          ++v23;
          if (v0 == v27)
          {
            v0 = v49;
            break;
          }
        }
      }
    }

    v40 = v0[6];
    v41 = v0[3];
    v42 = v0[4];

    (*(v42 + 8))(v40, v41);
  }

  else
  {
    v15 = *(v6 + 8);
    v15(v0[5], v7);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100007D20(v16, qword_10017F350);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Timed out retrieving the current display layout, returning nil from FrontmostAppShareableContentProvider", v19, 2u);
    }

    v20 = v0[6];
    v21 = v0[3];

    v15(v20, v21);
  }

  v44 = v0[5];
  v43 = v0[6];
  v45 = v0[2];

  v46 = v0[1];

  return v46(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E782C(uint64_t a1)
{
  *(v1 + 72) = a1;
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_1000E78BC;

  return sub_1000E6F44();
}

uint64_t sub_1000E78BC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1000E79BC, 0, 0);
}

uint64_t sub_1000E79BC()
{
  v45 = v0;
  v1 = *(v0 + 88);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:
    v28 = *(v0 + 88);

LABEL_24:
    if (qword_100172218 == -1)
    {
LABEL_25:
      v29 = type metadata accessor for Logger();
      sub_100007D20(v29, qword_10017F350);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Could not retrieve a frontmost application from the current display layout, returning nil from FrontmostAppShareableContentProvider", v32, 2u);
      }

      goto LABEL_28;
    }

LABEL_34:
    swift_once();
    goto LABEL_25;
  }

  if (v1 < 0)
  {
    v27 = *(v0 + 88);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v36 = *(v0 + 88);
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v37 = *(v0 + 88);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v2 = *(*(v0 + 88) + 32);
  }

  v3 = [v2 bundleIdentifier];
  if (!v3)
  {

    goto LABEL_24;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_10009010C(v5, v7, v0 + 16);
  v8 = *(v0 + 64);
  if (v8)
  {

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007D20(v9, qword_10017F350);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Frontmost application is a hidden system app, returning nil from FrontmostAppShareableContentProvider", v12, 2u);
    }

    sub_10001528C(v0 + 16);
LABEL_28:
    v26 = 0;
    v13 = 0;
    v15 = 0;
    v14 = 0;
    v17 = 0;
    v16 = 0;
    v8 = 0;
    goto LABEL_29;
  }

  v43 = v2;
  v13 = *(v0 + 24);
  log = v5;
  v42 = *(v0 + 16);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100007D20(v18, qword_10017F350);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v39 = v20;
  v21 = v20;
  v22 = v19;
  if (os_log_type_enabled(v19, v21))
  {
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v23 = 136315138;
    v24 = sub_10003E81C(log, v7, &v44);
    loga = v22;
    v25 = v24;

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, loga, v39, "Suggesting fallback shareable content with the frontmost app: %s", v23, 0xCu);
    sub_100007920(v38);
  }

  else
  {
  }

  v26 = v42;
LABEL_29:
  v33 = *(v0 + 72);
  *v33 = v26;
  v33[1] = v13;
  v33[2] = v15;
  v33[3] = v14;
  v33[4] = v17;
  v33[5] = v16;
  v33[6] = v8;
  v33[7] = 0;
  v34 = *(v0 + 8);

  return v34();
}

unint64_t sub_1000E7E2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015CA00, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_1000E7E78(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v113 = a4;
  *&v114 = a3;
  v111 = a2;
  v5 = type metadata accessor for UTType();
  v108 = *(v5 - 1);
  v109 = v5;
  v6 = *(v108 + 64);
  __chkstk_darwin(v5);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v110 = *(v9 - 8);
  v10 = *(v110 + 64);
  __chkstk_darwin(v9);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v104 - v13;
  __chkstk_darwin(v15);
  v17 = &v104 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  *&v112 = &v104 - v20;
  *&v115 = a1;
  v21 = [a1 typeIdentifier];
  if (!v21)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v137._countAndFlagsBits = v23;
  v137._object = v25;
  v26 = sub_1000E7E2C(v137);
  if (v26 <= 2)
  {
    if (v26 - 1 < 2)
    {
      v27 = [v115 webpageURL];
      if (v27)
      {
        v28 = v27;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v29);
        v31 = v30;
        v32 = [v30 _wp_urlByRemovingTrackingInformation];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = URL.host(percentEncoded:)(0);
        object = v35.value._object;
        countAndFlagsBits = v35.value._countAndFlagsBits;
        if (!v35.value._object)
        {
          countAndFlagsBits = URL.absoluteString.getter();
        }

        v105 = countAndFlagsBits;
        v106 = object;
        v36 = v110;
        v104 = *(v110 + 32);
        v107 = v17;
        v104(v17, v14, v9);
        v37 = [objc_allocWithZone(NSItemProvider) init];
        static UTType.url.getter();
        UTType.identifier.getter();
        (*(v108 + 8))(v8, v109);
        v38 = String._bridgeToObjectiveC()();

        (*(v36 + 16))(v11, v107, v9);
        v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
        v40 = swift_allocObject();
        v104((v40 + v39), v11, v9);
        *&v126 = sub_1000E9E10;
        *(&v126 + 1) = v40;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v125 = sub_1000E2284;
        *(&v125 + 1) = &unk_100161370;
        v41 = _Block_copy(&aBlock);

        [v37 registerItemForTypeIdentifier:v38 loadHandler:v41];
        _Block_release(v41);

        v42 = *(v36 + 8);
        v42(v107, v9);
        v42(v112, v9);
        v43 = v105;
        goto LABEL_8;
      }

      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_100007D20(v80, qword_10017F350);
      v70 = v115;
      v71 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        *(v82 + 4) = v70;
        *v83 = v70;
        v70 = v70;
        v84 = "Unable to get webpage URL from Safari user activity: %@";
LABEL_42:
        _os_log_impl(&_mh_execute_header, v71, v81, v84, v82, 0xCu);
        sub_1000159AC(v83, &qword_100172EB0, &qword_100119410);

        goto LABEL_43;
      }

      goto LABEL_45;
    }

    v116[0] = 0xD000000000000012;
    v116[1] = 0x8000000100125150;
    AnyHashable.init<A>(_:)();
    v64 = [v115 userInfo];
    if (v64)
    {
      v65 = v64;

      v66 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v66 + 16) && (v67 = sub_10003F00C(&aBlock), (v68 & 1) != 0))
      {
        sub_100015A30(*(v66 + 56) + 32 * v67, v117);

        sub_100046E70(&aBlock);

        if (swift_dynamicCast())
        {
        }
      }

      else
      {

        sub_100046E70(&aBlock);
      }

      goto LABEL_46;
    }

    goto LABEL_55;
  }

  if (v26 != 3)
  {

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100007D20(v69, qword_10017F350);
    v70 = v115;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v71, v72))
    {

      goto LABEL_45;
    }

    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&aBlock = v74;
    *v73 = 136315138;
    v75 = [v70 typeIdentifier];

    if (v75)
    {
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_10003E81C(v76, v78, &aBlock);

      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v71, v72, "Dropping non allowlisted user activity with type identifier: %s", v73, 0xCu);
      sub_100007920(v74);

LABEL_43:

LABEL_46:
      v45 = 0;
      v37 = 0;
      v44 = 0;
      v43 = 0;
      v46 = 0;
      v48 = 0uLL;
      v49 = 0uLL;
      v47 = 0uLL;
      goto LABEL_47;
    }

    goto LABEL_58;
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  v51 = sub_100007D20(v50, qword_10017F350);
  v52 = v115;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  v55 = &selRef_colorEffectMatrix_;
  if (os_log_type_enabled(v53, v54))
  {
    v110 = v51;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *&aBlock = v109;
    *v56 = 138412546;
    *(v56 + 4) = v52;
    *v57 = v52;
    *(v56 + 12) = 2080;
    *&v112 = v52;
    v58 = v52;
    v59 = [v58 userInfo];

    if (!v59)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = Dictionary.description.getter();
    v62 = v61;

    v63 = sub_10003E81C(v60, v62, &aBlock);

    *(v56 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v53, v54, "Got screenshot user activity %@ -- %s", v56, 0x16u);
    sub_1000159AC(v57, &qword_100172EB0, &qword_100119410);

    sub_100007920(v109);

    v52 = v112;
    v55 = &selRef_colorEffectMatrix_;
  }

  else
  {
  }

  strcpy(v116, "selectedUUIDs");
  HIWORD(v116[1]) = -4864;
  AnyHashable.init<A>(_:)();
  v85 = [v52 v55[122]];
  if (!v85)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v86 = v85;
  v87 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v87 + 16) || (v88 = sub_10003F00C(&aBlock), (v89 & 1) == 0))
  {

    sub_100046E70(&aBlock);
    goto LABEL_40;
  }

  sub_100015A30(*(v87 + 56) + 32 * v88, v117);
  sub_100046E70(&aBlock);

  sub_100015A30(v117, &aBlock);
  sub_1000077C8(&qword_100178030, &qword_100120A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100007920(v117);

    goto LABEL_40;
  }

  if (!*(v116[0] + 16))
  {
    sub_100007920(v117);

LABEL_40:
    v70 = v52;
    v71 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      *(v82 + 4) = v70;
      *v83 = v70;
      v70 = v70;
      v84 = "Unable to get selected uuid {userActivity: %@}";
      goto LABEL_42;
    }

LABEL_45:

    goto LABEL_46;
  }

  v91 = *(v116[0] + 32);
  v90 = *(v116[0] + 40);

  v92 = String._bridgeToObjectiveC()();
  v93 = [objc_opt_self() itemWithAssetIdentifier:v92];

  if (!v93)
  {

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&aBlock = v102;
      *v101 = 136315138;
      v103 = sub_10003E81C(v91, v90, &aBlock);

      *(v101 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v99, v100, "Failed to get media content item {selectedIdentifier: %s}", v101, 0xCu);
      sub_100007920(v102);
    }

    else
    {
    }

    sub_100007920(v117);
    goto LABEL_46;
  }

  v94 = [v93 asset];
  v95 = [v94 filename];

  if (v95)
  {

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v96;

    v97 = [v93 itemProvider];
    sub_100007920(v117);
    v37 = v97;
LABEL_8:
    sub_10009010C(v111, v114, &v133);
    sub_1000077C8(&unk_100172E80, &unk_100118B40);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100118700;
    *(v44 + 32) = v37;

    v117[0] = v133;
    v117[1] = v134;
    v117[2] = v135;
    v45 = v136;
    v118 = v136;
    v119 = v37;
    v120 = v44;
    v121 = v43;
    v46 = v106;
    v122 = v106;
    v123 = 0;
    v114 = v134;
    v115 = v133;
    v112 = v135;
    aBlock = v133;
    v125 = v134;
    v126 = v135;
    v127 = v136;
    v128 = v37;
    v129 = v44;
    v130 = v43;
    v131 = v106;
    v132 = 0;
    sub_1000E9D20(v117, v116);
    sub_1000E9D58(&aBlock);
    v47 = v112;
    v49 = v114;
    v48 = v115;
LABEL_47:
    v98 = v113;
    *v113 = v48;
    v98[1] = v49;
    v98[2] = v47;
    *(v98 + 6) = v45;
    *(v98 + 7) = v37;
    *(v98 + 8) = v44;
    *(v98 + 9) = v43;
    *(v98 + 10) = v46;
    *(v98 + 11) = 0;
    return;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_1000E8D10(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_1000077C8(&unk_100178010, &unk_100120A18);
  v1[37] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v1[38] = v7;
  v8 = *(*(sub_1000077C8(&qword_100172F08, &unk_10011E530) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v1[41] = v10;
  *v10 = v1;
  v10[1] = sub_1000E8EF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000012, 0x8000000100125100, sub_1000E3488, 0, v5);
}

uint64_t sub_1000E8EF0()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1000E9AC8;
  }

  else
  {
    v3 = sub_1000E9004;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E9004()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[32];
  v5 = v0[33];
  v6 = (v3 + *(v0[37] + 48));
  v0[43] = *v6;
  v7 = v6[1];
  v0[44] = v7;
  sub_1000E9C68(v3, v1);
  sub_100007BA4(v1, v2, &qword_100172F08, &unk_10011E530);
  v8 = (*(v5 + 48))(v2, 1, v4);
  v9 = v0[39];
  if (v8 == 1)
  {

    sub_1000159AC(v9, &qword_100172F08, &unk_10011E530);
LABEL_8:
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100007D20(v14, qword_10017F350);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[40];
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not find a current user activity on the system, returning nil from user activity provider", v19, 2u);
    }

    sub_1000159AC(v18, &qword_100172F08, &unk_10011E530);
    v21 = v0[39];
    v20 = v0[40];
    v22 = v0[38];
    v24 = v0[35];
    v23 = v0[36];
    v25 = v0[34];
    v26 = v0[31];
    *v26 = 0u;
    v26[1] = 0u;
    v26[2] = 0u;
    v26[3] = 0u;
    v26[4] = 0u;
    v26[5] = 0u;

    v27 = v0[1];

    return v27();
  }

  (*(v0[33] + 32))(v0[36], v0[39], v0[32]);
  if (!v7)
  {
    (*(v0[33] + 8))(v0[36], v0[32]);
    goto LABEL_8;
  }

  v10 = v0[36];
  v11 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[45] = isa;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1000E936C;
  v13 = swift_continuation_init();
  v0[29] = sub_1000077C8(&unk_100178020, &qword_100120A28);
  v0[22] = _NSConcreteStackBlock;
  v0[23] = 1107296256;
  v0[24] = sub_1000E3930;
  v0[25] = &unk_100161320;
  v0[26] = v13;
  [v11 fetchUserActivityWithUUID:isa completionHandler:v0 + 22];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E936C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 368) = v3;
  if (v3)
  {
    v4 = *(v1 + 352);

    v5 = sub_1000E9B70;
  }

  else
  {
    v5 = sub_1000E9484;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E9484()
{
  v86 = v0;
  v1 = *(v0 + 240);

  if (v1)
  {
    v2 = (v0 + 80);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 352);
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = type metadata accessor for Logger();
    sub_100007D20(v8, qword_10017F350);
    (*(v6 + 16))(v5, v4, v7);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v80 = *(v0 + 352);
      v78 = *(v0 + 344);
      v11 = *(v0 + 280);
      v12 = *(v0 + 256);
      v13 = *(v0 + 264);
      v14 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v14 = 136315394;
      sub_1000E9CD8(&qword_1001770E0, &type metadata accessor for UUID);
      v71 = v10;
      log = v9;
      v15 = v11;
      v16 = v1;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v13 + 8);
      v20(v15, v12);
      v21 = v17;
      v1 = v16;
      v22 = sub_10003E81C(v21, v19, &v85);
      v2 = (v0 + 80);

      *(v14 + 4) = v22;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10003E81C(v78, v80, &v85);
      _os_log_impl(&_mh_execute_header, log, v71, "Found a current user activity on the system with UUID: %s from application with identifier: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v44 = *(v0 + 280);
      v45 = *(v0 + 256);
      v46 = *(v0 + 264);

      v20 = *(v46 + 8);
      v20(v44, v45);
    }

    v47 = *(v0 + 320);
    v48 = *(v0 + 288);
    v49 = *(v0 + 256);
    sub_1000E7E78(v1, *(v0 + 344), *(v0 + 352), v2);
    v82 = *(v0 + 96);
    v84 = *(v0 + 80);
    v77 = *(v0 + 128);
    v79 = *(v0 + 112);
    v72 = *(v0 + 160);
    *logb = *(v0 + 144);
    v20(v48, v49);
    sub_1000159AC(v47, &qword_100172F08, &unk_10011E530);
    v51 = v72;
    v50 = *logb;
    v53 = v77;
    v52 = v79;
    v55 = v82;
    v54 = v84;
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 352);
    v24 = *(v0 + 288);
    v26 = *(v0 + 264);
    v25 = *(v0 + 272);
    v27 = *(v0 + 256);
    v28 = type metadata accessor for Logger();
    sub_100007D20(v28, qword_10017F350);
    (*(v26 + 16))(v25, v24, v27);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 352);
    if (v31)
    {
      loga = *(v0 + 344);
      v83 = *(v0 + 320);
      v81 = *(v0 + 288);
      v76 = v30;
      v34 = *(v0 + 264);
      v33 = *(v0 + 272);
      v35 = *(v0 + 256);
      v36 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v36 = 136315394;
      sub_1000E9CD8(&qword_1001770E0, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v34 + 8);
      v40(v33, v35);
      v41 = sub_10003E81C(v37, v39, &v85);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      v42 = sub_10003E81C(loga, v32, &v85);

      *(v36 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v29, v76, "Unable to fetch user activity from current user activity UUID: %s bundleIdentifier: %s", v36, 0x16u);
      swift_arrayDestroy();

      v40(v81, v35);
      v43 = v83;
    }

    else
    {
      v56 = *(v0 + 320);
      v57 = *(v0 + 288);
      v59 = *(v0 + 264);
      v58 = *(v0 + 272);
      v60 = *(v0 + 256);

      v61 = *(v59 + 8);
      v61(v58, v60);
      v61(v57, v60);
      v43 = v56;
    }

    sub_1000159AC(v43, &qword_100172F08, &unk_10011E530);
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  v63 = *(v0 + 312);
  v62 = *(v0 + 320);
  v64 = *(v0 + 304);
  v66 = *(v0 + 280);
  v65 = *(v0 + 288);
  v67 = *(v0 + 272);
  v68 = *(v0 + 248);
  *v68 = v54;
  v68[1] = v55;
  v68[2] = v52;
  v68[3] = v53;
  v68[4] = v50;
  v68[5] = v51;

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_1000E9AC8()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000E9B70()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[40];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[33];
  swift_willThrow();
  (*(v6 + 8))(v4, v5);
  sub_1000159AC(v3, &qword_100172F08, &unk_10011E530);

  v7 = v0[46];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[34];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000E9C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E9D88()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000E9E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(sub_1000077C8(&qword_100178038, &qword_100120A38) - 8) + 80);

  return sub_1000E3688(a1, a2, a3, a4);
}

__n128 sub_1000E9EF4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000E9F10(uint64_t a1, int a2)
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

uint64_t sub_1000E9F58(uint64_t result, int a2, int a3)
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

uint64_t sub_1000E9FC0(uint64_t a1, int a2)
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

uint64_t sub_1000EA008(uint64_t result, int a2, int a3)
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

uint64_t sub_1000EA098@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for Color.RGBColorSpace();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000077C8(&qword_100178390, &qword_100121398);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  sub_1000077C8(&qword_100178398, &qword_1001213A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10011B400;
  v14 = enum case for Color.RGBColorSpace.sRGB(_:);
  v15 = *(v2 + 104);
  v15(v5, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  *(v13 + 32) = Color.init(_:red:green:blue:opacity:)();
  v15(v5, v14, v1);
  *(v13 + 40) = Color.init(_:red:green:blue:opacity:)();
  v15(v5, v14, v1);
  *(v13 + 48) = Color.init(_:red:green:blue:opacity:)();
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v16 = static Alignment.center.getter();
  v18 = v17;
  v19 = &v12[*(sub_1000077C8(&qword_1001783A0, &qword_1001213A8) + 36)];
  v20 = (v19 + *(sub_1000077C8(&qword_1001783A8, &qword_1001213B0) + 36));
  *v20 = static Alignment.center.getter();
  v20[1] = v21;
  v22 = sub_1000077C8(&qword_1001783B0, &qword_1001213B8);
  __asm { FMOV            V0.2D, #10.0 }

  sub_1000EF94C(v20 + *(v22 + 44), _Q0);
  *v19 = v16;
  v19[1] = v18;
  v28 = v49;
  *v12 = v48;
  *(v12 + 1) = v28;
  *(v12 + 4) = v50;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = &v12[*(sub_1000077C8(&qword_1001783B8, &qword_1001213C0) + 36)];
  v30 = v52;
  *v29 = v51;
  *(v29 + 1) = v30;
  *(v29 + 2) = v53;
  *&v12[*(v7 + 44)] = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v31 = Text.init(_:tableName:bundle:comment:)();
  v33 = v32;
  LOBYTE(v19) = v34;
  static Font.subheadline.getter();
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_10004BBC8(v31, v33, v19 & 1);

  v42 = v46;
  sub_100007BA4(v12, v46, &qword_100178390, &qword_100121398);
  v43 = v47;
  sub_100007BA4(v42, v47, &qword_100178390, &qword_100121398);
  v44 = v43 + *(sub_1000077C8(&unk_1001783C0, &qword_1001213C8) + 48);
  sub_100078974(v35, v37, v39 & 1);

  sub_1000159AC(v12, &qword_100178390, &qword_100121398);
  *v44 = v35;
  *(v44 + 8) = v37;
  *(v44 + 16) = v39 & 1;
  *(v44 + 24) = v41;
  sub_10004BBC8(v35, v37, v39 & 1);

  return sub_1000159AC(v42, &qword_100178390, &qword_100121398);
}

uint64_t sub_1000EA560@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v2;
  v3 = a1 + *(sub_1000077C8(&qword_100178370, &qword_100121378) + 44);
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0x4028000000000000;
  v3[16] = 0;
  v4 = sub_1000077C8(&qword_100178378, &qword_100121380);
  sub_1000EA098(&v3[*(v4 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = &v3[*(sub_1000077C8(&qword_100178380, &qword_100121388) + 36)];
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 2) = v12;
  v6 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1000077C8(&qword_100178388, &qword_100121390);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_1000EA674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  __chkstk_darwin(v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000077C8(&qword_1001785D0, &qword_1001215F8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v73 - v15;
  v17 = sub_1000077C8(&qword_1001785C0, &qword_1001215F0);
  v18 = *(v17 - 8);
  v81 = v17 - 8;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17 - 8);
  v80 = &v73 - v21;
  (*(v8 + 16))(v11, a1, v7, v20);
  v22 = Text.init(_:)();
  v24 = v23;
  LOBYTE(v11) = v25;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v26 = Text.font(_:)();
  v76 = v27;
  v77 = v26;
  LOBYTE(v8) = v28;
  v75 = v29;

  sub_10004BBC8(v22, v24, v11 & 1);

  v74 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v73 = v8 & 1;
  v84 = v8 & 1;
  v83 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v85[3] + 7) = *(&v85[10] + 8);
  *(&v85[4] + 7) = *(&v85[11] + 8);
  *(&v85[5] + 7) = *(&v85[12] + 8);
  *(&v85[6] + 7) = *(&v85[13] + 8);
  *(v85 + 7) = *(&v85[7] + 8);
  *(&v85[1] + 7) = *(&v85[8] + 8);
  *(&v85[2] + 7) = *(&v85[9] + 8);
  (*(v78 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v79);
  v38 = Color.init(_:red:green:blue:opacity:)();
  v39 = static Edge.Set.all.getter();
  v40 = static Alignment.center.getter();
  v42 = v41;
  v43 = &v16[*(v13 + 44)];
  v44 = v43 + *(sub_1000077C8(&qword_100178600, &qword_100121610) + 36);
  v45 = *(type metadata accessor for RoundedRectangle() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #30.0 }

  *v44 = _Q0;
  *v43 = v40;
  v43[1] = v42;
  v53 = v76;
  *v16 = v77;
  *(v16 + 1) = v53;
  v16[16] = v73;
  *(v16 + 3) = v75;
  v16[32] = v74;
  *(v16 + 5) = v31;
  *(v16 + 6) = v33;
  *(v16 + 7) = v35;
  *(v16 + 8) = v37;
  v16[72] = 0;
  v54 = v85[5];
  *(v16 + 137) = v85[4];
  *(v16 + 153) = v54;
  *(v16 + 169) = v85[6];
  *(v16 + 23) = *(&v85[6] + 15);
  v55 = v85[1];
  *(v16 + 73) = v85[0];
  *(v16 + 89) = v55;
  v56 = v85[3];
  *(v16 + 105) = v85[2];
  *(v16 + 121) = v56;
  *(v16 + 96) = 0;
  *(v16 + 25) = v38;
  v16[208] = v39;
  LOBYTE(v43) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v80;
  sub_100021A84(v16, v80, &qword_1001785D0, &qword_1001215F8);
  v66 = v65 + *(v81 + 44);
  *v66 = v43;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  v67 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v69 = v65;
  v70 = v82;
  sub_100021A84(v69, v82, &qword_1001785C0, &qword_1001215F0);
  result = sub_1000077C8(&qword_1001785A8, &qword_1001215E8);
  v72 = (v70 + *(result + 36));
  *v72 = KeyPath;
  v72[1] = v67;
  return result;
}

uint64_t sub_1000EABC0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000F1FF0(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BannerShareableContentActionButton);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1000F2D04(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for BannerShareableContentActionButton);
  v8 = v1;
  sub_1000077C8(&qword_1001785A8, &qword_1001215E8);
  sub_1000F2DE0();
  return Button.init(action:label:)();
}

uint64_t sub_1000EAD24()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = *(v0 + 64);
  v67 = *(v0 + 48);
  v68 = v8;
  v9 = *(v0 + 96);
  v69 = *(v0 + 80);
  v70 = v9;
  v10 = *(v0 + 128);
  v71 = *(v0 + 112);
  v72 = v10;
  v11 = *(v0 + 144);
  v73 = v11;
  v36 = v68;
  v37 = v67;
  v38 = *(&v68 + 1);
  v39 = *(&v67 + 1);
  v12 = v69;
  v13 = DWORD2(v71);
  if (*(&v71 + 1) >> 62)
  {
    v23 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000555B0(&v67, &v54);
    static Published.subscript.getter();

    if (*(&v52 + 1))
    {
      v44 = v52;
      v45 = v53;
      v43 = v51;
      v24 = *(&v52 + 1);
      v25 = v53;
      sub_1000078DC(&v43, *(&v52 + 1));
      v54 = v37;
      v55 = v39;
      v56 = v36;
      v57 = v38;
      v58 = v12;
      v63 = 0x8000000000000000;
      v26 = sub_10008AFCC(&v54, v24, v25);
      v28 = v27;

      if (!v28)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v26 = String.init(localized:table:bundle:locale:comment:)();
      }

      sub_100056D60(&v43);
      return v26;
    }

    else
    {
      sub_1000159AC(&v51, &qword_1001742D8, &unk_10011AED8);

      return v37;
    }
  }

  else
  {
    v30[0] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30[1] = v4;
    v14 = *(&v69 + 1);
    v32 = *(&v70 + 1);
    v33 = v70;
    v31 = v71;
    v34 = *(&v72 + 1);
    v35 = v72;
    v15 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = *(v0 + 112);
    v49 = *(v0 + 128);
    v50 = *(v0 + 144);
    v17 = *(v0 + 64);
    v43 = *(v0 + 48);
    v44 = v17;
    v18 = *(v0 + 80);
    v46 = *(v0 + 96);
    v47 = v16;
    v45 = v18;
    v48 = *(&v16 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_100070BB4(&v43, &v54);
    static Published.subscript.getter();

    if (*(&v41 + 1))
    {
      v52 = v41;
      v53 = v42;
      v51 = v40;
      v19 = *(&v41 + 1);
      v20 = v42;
      sub_1000078DC(&v51, *(&v41 + 1));
      v54 = v37;
      v55 = v39;
      v56 = v36;
      v57 = v38;
      v58 = v12;
      v59 = v14;
      v60 = v33;
      v61 = v32;
      v62 = v31;
      v63 = v13;
      v64 = v35;
      v65 = v34;
      v66 = v11;
      v12 = sub_10008AFCC(&v54, v19, v20);
      v22 = v21;
      sub_100056DB4(&v67);
      if (!v22)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v12 = String.init(localized:table:bundle:locale:comment:)();
      }

      sub_100056D60(&v51);
    }

    else
    {
      sub_1000159AC(&v40, &qword_1001742D8, &unk_10011AED8);

      sub_100056DB4(&v67);
    }
  }

  return v12;
}

uint64_t sub_1000EB16C()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = *(v0 + 128);
  v65 = *(v0 + 112);
  v66 = v11;
  v67 = *(v0 + 144);
  v12 = *(v0 + 64);
  v62[0] = *(v0 + 48);
  v62[1] = v12;
  v13 = *(v0 + 96);
  v63 = *(v0 + 80);
  v64 = v13;
  v68 = v62[0];
  v69 = v12;
  v70 = v63;
  v71 = v13;
  v74 = v67;
  v72 = v65;
  v73 = v11;
  v14 = DWORD2(v65);
  if (!(*(&v65 + 1) >> 62))
  {
    v15 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = *(v0 + 128);
    v51 = *(v0 + 112);
    v52 = v16;
    v53 = *(v0 + 144);
    v17 = *(v0 + 64);
    v47 = *(v0 + 48);
    v48 = v17;
    v18 = *(v0 + 96);
    v49 = *(v0 + 80);
    v50 = v18;
    *(&v51 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_100070BB4(&v47, &v54);
    static Published.subscript.getter();

    if (*(&v44 + 1))
    {
      v46[1] = v44;
      v46[2] = v45;
      v46[0] = v43;
      v19 = *(&v44 + 1);
      v20 = v45;
      sub_1000078DC(v46, *(&v44 + 1));
      v54 = v68;
      v55 = v69;
      v56 = v70;
      v57 = v71;
      v58 = v72;
      v59 = v14;
      v60 = v73;
      v61 = v74;
      sub_100070BB4(&v68, &v40);
      v21 = sub_10008B3B8(&v54, v19, v20);
      v23 = v22;
      sub_100056DB4(v62);
      if (!v23)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v24._countAndFlagsBits = 0x49575F4552414853;
        v24._object = 0xEB000000005F4854;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v69);
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        v21 = String.init(localized:table:bundle:locale:comment:)();
      }

      sub_100056DB4(v62);
      sub_100056D60(v46);
      return v21;
    }

    sub_100056DB4(v62);
    sub_1000159AC(&v43, &qword_1001742D8, &unk_10011AED8);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  v38[1] = v8;
  v38[2] = v4;
  *(&v72 + 1) = *(&v65 + 1) & 0x3FFFFFFFFFFFFFFFLL;
  v26 = v69;
  v27 = v70;
  v28 = *(&v68 + 1);
  v39 = v68;
  v29 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000555B0(v62, &v54);
  static Published.subscript.getter();

  if (!*(&v41 + 1))
  {

    sub_1000159AC(&v40, &qword_1001742D8, &unk_10011AED8);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  v48 = v41;
  v49 = v42;
  v47 = v40;
  v30 = *(&v41 + 1);
  v31 = v42;
  sub_1000078DC(&v47, *(&v41 + 1));
  *&v54 = v39;
  *(&v54 + 1) = v28;
  v55 = v26;
  *&v56 = v27;
  v59 = 0x8000000000000000;

  v21 = sub_10008B3B8(&v54, v30, v31);
  v33 = v32;

  if (!v33)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34._countAndFlagsBits = 0x49575F4552414853;
    v34._object = 0xEB000000005F4854;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
    v35._countAndFlagsBits = v39;
    v35._object = v28;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v35);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v36);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v21 = String.init(localized:table:bundle:locale:comment:)();
  }

  sub_100056D60(&v47);
  return v21;
}

uint64_t sub_1000EB720@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_1000077C8(&qword_1001783D8, &qword_100121410);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v54 - v5;
  v7 = sub_1000077C8(&qword_1001783E0, &qword_100121418);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v12 = sub_1000077C8(&qword_1001783E8, &qword_100121420);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v55 = sub_1000077C8(&qword_1001783F0, &qword_100121428);
  v17 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v19 = &v54 - v18;
  v20 = sub_1000077C8(&qword_1001783F8, &qword_100121430);
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  __chkstk_darwin(v20);
  v56 = &v54 - v22;
  v23 = sub_1000077C8(&qword_100178400, &qword_100121438);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v27 = &v54 - v26;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4033000000000000;
  v6[16] = 0;
  v28 = sub_1000077C8(&qword_100178408, &qword_100121440);
  sub_1000EBC70(v2, &v6[*(v28 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021A84(v6, v11, &qword_1001783D8, &qword_100121410);
  v29 = &v11[*(v8 + 44)];
  v30 = v68;
  *(v29 + 4) = v67;
  *(v29 + 5) = v30;
  *(v29 + 6) = v69;
  v31 = v64;
  *v29 = v63;
  *(v29 + 1) = v31;
  v32 = v66;
  *(v29 + 2) = v65;
  *(v29 + 3) = v32;
  v33 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  sub_100021A84(v11, v16, &qword_1001783E0, &qword_100121418);
  v35 = &v16[*(v13 + 44)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = static Color.black.getter();
  LOBYTE(v13) = static Edge.Set.all.getter();
  sub_100021A84(v16, v19, &qword_1001783E8, &qword_100121420);
  v37 = &v19[*(v55 + 36)];
  *v37 = v36;
  v37[8] = v13;
  v38 = swift_allocObject();
  v39 = *(v2 + 112);
  *(v38 + 112) = *(v2 + 96);
  *(v38 + 128) = v39;
  *(v38 + 144) = *(v2 + 128);
  *(v38 + 160) = *(v2 + 144);
  v40 = *(v2 + 48);
  *(v38 + 48) = *(v2 + 32);
  *(v38 + 64) = v40;
  v41 = *(v2 + 80);
  *(v38 + 80) = *(v2 + 64);
  *(v38 + 96) = v41;
  v42 = *(v2 + 16);
  *(v38 + 16) = *v2;
  *(v38 + 32) = v42;
  sub_1000F11F8(v2, v61);
  sub_1000F2064();
  v43 = v56;
  View.onTapGesture(count:perform:)();

  sub_1000159AC(v19, &qword_1001783F0, &qword_100121428);
  v60 = *(v2 + 32);
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.projectedValue.getter();
  v44 = v61[0];
  v45 = v61[1];
  LOBYTE(v11) = v62;
  v46 = swift_allocObject();
  v47 = *(v2 + 112);
  *(v46 + 112) = *(v2 + 96);
  *(v46 + 128) = v47;
  *(v46 + 144) = *(v2 + 128);
  *(v46 + 160) = *(v2 + 144);
  v48 = *(v2 + 48);
  *(v46 + 48) = *(v2 + 32);
  *(v46 + 64) = v48;
  v49 = *(v2 + 80);
  *(v46 + 80) = *(v2 + 64);
  *(v46 + 96) = v49;
  v50 = *(v2 + 16);
  *(v46 + 16) = *v2;
  *(v46 + 32) = v50;
  v51 = swift_getKeyPath();
  LOBYTE(v60) = 0;
  (*(v57 + 32))(v27, v43, v58);
  v52 = &v27[*(v24 + 44)];
  *v52 = v51;
  v52[8] = v60;
  *(v52 + 2) = v44;
  *(v52 + 3) = v45;
  v52[32] = v11;
  v52[33] = 1;
  *(v52 + 5) = sub_1000F230C;
  *(v52 + 6) = v46;
  sub_1000F231C(v27, v59);
  return sub_1000F11F8(v2, v61);
}

uint64_t sub_1000EBC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1000077C8(&qword_100178438, &qword_100121470);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3);
  v6 = v32 - v5;
  v7 = sub_1000077C8(&qword_100178440, &qword_100121478);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v32 - v12;
  v14 = sub_1000077C8(&qword_100178448, &qword_100121480);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v32 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0x402C000000000000;
  v20[16] = 0;
  v21 = sub_1000077C8(&unk_100178450, &qword_100121488);
  sub_1000EC1F4(a1, &v20[*(v21 + 44)]);
  v22 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v37 + 1))
  {
    v40[0] = v36;
    v40[1] = v37;
    v41 = v38;
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v32[2] = *(sub_1000077C8(&qword_100178468, &qword_1001214E8) + 44);
    v39 = *(&v41 + 1);
    v32[1] = swift_getKeyPath();
    sub_1000DC0F0(v40, &v36);
    v23 = swift_allocObject();
    v24 = *(a1 + 112);
    *(v23 + 112) = *(a1 + 96);
    *(v23 + 128) = v24;
    *(v23 + 144) = *(a1 + 128);
    v25 = *(a1 + 48);
    *(v23 + 48) = *(a1 + 32);
    *(v23 + 64) = v25;
    v26 = *(a1 + 80);
    *(v23 + 80) = *(a1 + 64);
    *(v23 + 96) = v26;
    v27 = *(a1 + 16);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v27;
    v28 = v37;
    *(v23 + 168) = v36;
    *(v23 + 160) = *(a1 + 144);
    *(v23 + 184) = v28;
    *(v23 + 200) = v38;

    sub_1000F11F8(a1, &v36);
    sub_1000077C8(&unk_100178470, &qword_10011FDC0);
    v33 = v10;
    type metadata accessor for BannerShareableContentActionButton(0);
    sub_1000199C8(&qword_100177540, &unk_100178470, &qword_10011FDC0);
    sub_1000F0A18(&qword_100178480, type metadata accessor for BannerShareableContentActionButton);
    ForEach<>.init(_:id:content:)();
    sub_100021A84(v6, v13, &qword_100178438, &qword_100121470);
    v10 = v33;
    (*(v34 + 56))(v13, 0, 1, v3);
    sub_100056D60(v40);
  }

  else
  {
    sub_1000159AC(&v36, &qword_1001742D8, &unk_10011AED8);
    (*(v34 + 56))(v13, 1, 1, v3);
  }

  sub_100007BA4(v20, v17, &qword_100178448, &qword_100121480);
  sub_100007BA4(v13, v10, &qword_100178440, &qword_100121478);
  v29 = v35;
  sub_100007BA4(v17, v35, &qword_100178448, &qword_100121480);
  v30 = sub_1000077C8(&qword_100178460, &qword_1001214E0);
  sub_100007BA4(v10, v29 + *(v30 + 48), &qword_100178440, &qword_100121478);
  sub_1000159AC(v13, &qword_100178440, &qword_100121478);
  sub_1000159AC(v20, &qword_100178448, &qword_100121480);
  sub_1000159AC(v10, &qword_100178440, &qword_100121478);
  return sub_1000159AC(v17, &qword_100178448, &qword_100121480);
}

uint64_t sub_1000EC1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_100178488, &qword_100121520);
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  __chkstk_darwin(v4);
  v7 = (&v64 - v6);
  v8 = sub_1000077C8(&qword_100178490, &qword_100121528);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  v14 = *(a1 + 128);
  v129 = *(a1 + 112);
  v130 = v14;
  v131 = *(a1 + 144);
  v15 = *(a1 + 64);
  v125 = *(a1 + 48);
  v126 = v15;
  v16 = *(a1 + 96);
  v127 = *(a1 + 80);
  v128 = v16;
  v17 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000555B0(&v125, &v98);
  static Published.subscript.getter();

  if (v122[3])
  {
    sub_100007878(v122, &v98);
    sub_100056D60(v122);
    v18 = *(&v99 + 1);
    v19 = v100;
    sub_1000078DC(&v98, *(&v99 + 1));
    (*(v19 + 56))(v123, v18, v19);
    v73 = v124;
    v20 = v124;
    sub_10001528C(v123);
    sub_100007920(&v98);
  }

  else
  {
    sub_1000159AC(v122, &qword_1001742D8, &unk_10011AED8);
    v73 = 0;
  }

  v118 = v129;
  v119 = v130;
  LODWORD(v120) = v131;
  v114 = v125;
  v115 = v126;
  v116 = v127;
  v117 = v128;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v72 = static HorizontalAlignment.leading.getter();
  LOBYTE(v98) = 1;
  sub_1000EC9B4(v121);
  *&v109[7] = v121[0];
  *&v109[23] = v121[1];
  *&v109[39] = v121[2];
  *&v109[55] = v121[3];
  v69 = v98;
  KeyPath = swift_getKeyPath();
  type metadata accessor for SystemApertureLayoutState();
  sub_1000F0A18(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState);
  v21 = EnvironmentObject.init()();
  v66 = v22;
  v67 = v21;
  v23 = 1;
  if (!(*(&v129 + 1) >> 62))
  {
    v24 = Image.init(systemName:)();
    v25 = (v7 + *(sub_1000077C8(&unk_1001778C0, &qword_100120038) + 36));
    v26 = v4;
    v27 = v13;
    v28 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
    v29 = enum case for Image.Scale.medium(_:);
    v30 = type metadata accessor for Image.Scale();
    (*(*(v30 - 8) + 104))(v25 + v28, v29, v30);
    *v25 = swift_getKeyPath();
    *v7 = v24;
    v31 = (v7 + *(sub_1000077C8(&qword_100177B30, &qword_100120588) + 36));
    v32 = *(sub_1000077C8(&qword_100177B50, &qword_100120590) + 28);
    static SymbolRenderingMode.monochrome.getter();
    v33 = type metadata accessor for SymbolRenderingMode();
    v34 = v31 + v32;
    v13 = v27;
    v4 = v26;
    (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
    *v31 = swift_getKeyPath();
    v35 = static Font.title2.getter();
    v36 = swift_getKeyPath();
    v37 = (v7 + *(sub_1000077C8(&qword_100177B20, &qword_100120580) + 36));
    *v37 = v36;
    v37[1] = v35;
    static Color.white.getter();
    v38 = Color.opacity(_:)();

    v39 = swift_getKeyPath();
    v40 = (v7 + *(sub_1000077C8(&qword_100177A50, &unk_100121550) + 36));
    *v40 = v39;
    v40[1] = v38;
    LOBYTE(v39) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v41 = v7 + *(v26 + 36);
    *v41 = v39;
    *(v41 + 1) = v42;
    *(v41 + 2) = v43;
    *(v41 + 3) = v44;
    *(v41 + 4) = v45;
    v41[40] = 0;
    sub_100021A84(v7, v13, &qword_100178488, &qword_100121520);
    v23 = 0;
  }

  (*(v70 + 56))(v13, v23, 1, v4);
  v65 = v13;
  v46 = v71;
  sub_100007BA4(v13, v71, &qword_100178490, &qword_100121528);
  v77 = v118;
  v78 = v119;
  v74[0] = v114;
  v74[1] = v115;
  v75 = v116;
  v76 = v117;
  *&v79 = v120;
  *(&v79 + 1) = v73;
  v81 = v112;
  v82 = v113;
  v80 = v111;
  v47 = v115;
  *a2 = v114;
  *(a2 + 16) = v47;
  v48 = v75;
  v49 = v76;
  v50 = v78;
  *(a2 + 64) = v77;
  *(a2 + 80) = v50;
  *(a2 + 32) = v48;
  *(a2 + 48) = v49;
  v51 = v79;
  v52 = v80;
  v53 = v82;
  *(a2 + 128) = v81;
  *(a2 + 144) = v53;
  *(a2 + 96) = v51;
  *(a2 + 112) = v52;
  v83[0] = v72;
  v83[1] = 0;
  v54 = v69;
  LOBYTE(v84[0]) = v69;
  *&v84[4] = *&v109[63];
  *(&v84[3] + 1) = *&v109[48];
  *(&v84[1] + 1) = *&v109[16];
  *(&v84[2] + 1) = *&v109[32];
  *(v84 + 1) = *v109;
  v56 = v67;
  v55 = KeyPath;
  *(&v84[4] + 1) = KeyPath;
  LOBYTE(v85) = 0;
  DWORD1(v85) = *(v110 + 3);
  *(&v85 + 1) = v110[0];
  v57 = v66;
  *(&v85 + 1) = v67;
  v86 = v66;
  v58 = v84[0];
  *(a2 + 160) = v72;
  *(a2 + 176) = v58;
  v59 = v84[2];
  *(a2 + 192) = v84[1];
  *(a2 + 208) = v59;
  v60 = v84[3];
  v61 = v85;
  *(a2 + 240) = v84[4];
  *(a2 + 256) = v61;
  *(a2 + 224) = v60;
  *(a2 + 272) = v57;
  *(a2 + 280) = 0;
  *(a2 + 288) = 1;
  v62 = a2 + *(sub_1000077C8(&qword_100178498, &qword_100121530) + 80);
  sub_100007BA4(v46, v62, &qword_100178490, &qword_100121528);
  sub_100007BA4(v74, &v98, &qword_1001784A0, &qword_100121538);
  sub_100007BA4(v83, &v98, &qword_1001784A8, &unk_100121540);
  sub_1000159AC(v65, &qword_100178490, &qword_100121528);
  sub_1000159AC(v46, &qword_100178490, &qword_100121528);
  v90 = *&v109[16];
  v91 = *&v109[32];
  *v92 = *&v109[48];
  v87[0] = v72;
  v87[1] = 0;
  v88 = v54;
  v89 = *v109;
  *&v92[15] = *&v109[63];
  v93 = v55;
  v94 = 0;
  *&v95[3] = *(v110 + 3);
  *v95 = v110[0];
  v96 = v56;
  v97 = v57;
  sub_1000159AC(v87, &qword_1001784A8, &unk_100121540);
  v102 = v118;
  v103 = v119;
  v98 = v114;
  v99 = v115;
  v100 = v116;
  v101 = v117;
  v104 = v120;
  v105 = v73;
  v107 = v112;
  v108 = v113;
  v106 = v111;
  return sub_1000159AC(&v98, &qword_1001784A0, &qword_100121538);
}

uint64_t sub_1000EC9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000077C8(&qword_100177A70, &qword_10011AC50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v41 - v4;
  v47 = sub_1000EAD24();
  v48 = v6;
  v41[2] = sub_10004BB74();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Font.Design();
  v13 = *(v12 - 8);
  v41[0] = *(v13 + 56);
  v41[1] = v13 + 56;
  (v41[0])(v5, 1, 1, v12);
  static Font.system(size:weight:design:)();
  sub_1000159AC(v5, &qword_100177A70, &qword_10011AC50);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v14 = Text.font(_:)();
  v43 = v15;
  v44 = v14;
  v42 = v16;
  v45 = v17;

  sub_10004BBC8(v7, v9, v11 & 1);

  v47 = sub_1000EB16C();
  v48 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  (v41[0])(v5, 1, 1, v12);
  static Font.system(size:weight:design:)();
  sub_1000159AC(v5, &qword_100177A70, &qword_10011AC50);
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10004BBC8(v19, v21, v23 & 1);

  static Color.white.getter();
  Color.opacity(_:)();

  v29 = Text.foregroundColor(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_10004BBC8(v24, v26, v28 & 1);

  v36 = v42 & 1;
  v46 = v42 & 1;
  LOBYTE(v47) = v42 & 1;
  v49 = v33 & 1;
  v38 = v43;
  v37 = v44;
  *a1 = v44;
  *(a1 + 8) = v38;
  *(a1 + 16) = v36;
  *(a1 + 24) = v45;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v33 & 1;
  *(a1 + 56) = v35;
  v39 = v37;
  sub_100078974(v37, v38, v36);

  sub_100078974(v29, v31, v33 & 1);

  sub_10004BBC8(v29, v31, v33 & 1);

  sub_10004BBC8(v39, v38, v46);
}

uint64_t sub_1000ECD2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_1000078DC(a1, v8);
  (*(v9 + 24))(v8, v9);
  sub_100007878(a1, v19);
  sub_1000DC0F0(a3, v18);
  v10 = swift_allocObject();
  v11 = *(a2 + 112);
  *(v10 + 112) = *(a2 + 96);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(a2 + 128);
  *(v10 + 160) = *(a2 + 144);
  v12 = *(a2 + 48);
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = v12;
  v13 = *(a2 + 80);
  *(v10 + 80) = *(a2 + 64);
  *(v10 + 96) = v13;
  v14 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v14;
  sub_100059230(v19, v10 + 168);
  v15 = v18[1];
  *(v10 + 208) = v18[0];
  *(v10 + 224) = v15;
  *(v10 + 240) = v18[2];
  v16 = (a4 + *(type metadata accessor for BannerShareableContentActionButton(0) + 20));
  *v16 = sub_1000F24EC;
  v16[1] = v10;
  return sub_1000F11F8(a2, v18);
}

uint64_t sub_1000ECE54(uint64_t result)
{
  if (!(*(result + 120) >> 62))
  {
    v1 = *(result + 32);
    sub_1000077C8(&qword_100178430, &qword_10011FBD8);
    return State.wrappedValue.setter();
  }

  return result;
}

void sub_1000ECEBC(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >> 62)
  {
    v10 = objc_allocWithZone(UIViewController);

    [v10 init];
  }

  else
  {
    v13 = *(a1 + 144);
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    v3 = *(a1 + 104);
    v2 = *(a1 + 112);
    v5 = *(a1 + 88);
    v4 = *(a1 + 96);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v9 = *(a1 + 56);
    v8 = *(a1 + 64);
    v17[0] = *(a1 + 48);
    v17[1] = v9;
    v17[2] = v8;
    v17[3] = v6;
    v17[4] = v7;
    v17[5] = v5;
    v17[6] = v4;
    v17[7] = v3;
    v17[8] = v2;
    v17[9] = v1;
    v17[10] = v11;
    v17[11] = v12;
    v18 = v13;
    objc_allocWithZone(type metadata accessor for ContactDetailsViewController());
    v15[0] = v17[0];
    v15[1] = v9;
    v15[2] = v8;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v5;
    v15[6] = v4;
    v15[7] = v3;
    v15[8] = v2;
    v15[9] = v1;
    v15[10] = v11;
    v15[11] = v12;
    v16 = v13;
    sub_100070BB4(v15, v14);
    sub_100093DC4(v17, sub_1000ECFF4, 0);
  }
}

void sub_1000ECFF4(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1000ED060@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + 36);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1000EB720(a1);
}

uint64_t sub_1000ED0BC()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v0, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == enum case for SFAirDrop.NearbySharingInteraction.FailureType.unsupported(_:))
  {
    (*(v6 + 96))(v10, v5);
    *v10;
LABEL_4:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v11 == enum case for SFAirDrop.NearbySharingInteraction.FailureType.pullAway(_:))
  {
    goto LABEL_4;
  }

  v14[2] = 0;
  v14[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v13._countAndFlagsBits = 0xD000000000000040;
  v13._object = 0x8000000100125240;
  String.append(_:)(v13);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000ED3A8()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v0, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == enum case for SFAirDrop.NearbySharingInteraction.FailureType.unsupported(_:))
  {
    (*(v6 + 96))(v10, v5);
    *v10;
LABEL_4:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v11 == enum case for SFAirDrop.NearbySharingInteraction.FailureType.pullAway(_:))
  {
    goto LABEL_4;
  }

  v14[2] = 0;
  v14[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v13._countAndFlagsBits = 0xD000000000000040;
  v13._object = 0x8000000100125240;
  String.append(_:)(v13);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000ED68C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_1001781B0, &qword_100120F10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v36 - v6;
  v8 = sub_1000077C8(&qword_1001781B8, &qword_100120F18);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = v36 - v11;
  v13 = sub_1000077C8(&qword_1001781C0, &qword_100120F20);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v36 - v16;
  v18 = type metadata accessor for Color.RGBColorSpace();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  (*(v22 + 104))(v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v20);
  v23 = Color.init(_:red:green:blue:opacity:)();
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4033000000000000;
  v7[16] = 0;
  v24 = &v7[*(sub_1000077C8(&qword_1001781C8, &qword_100120F28) + 44)];
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0x402C000000000000;
  v24[16] = 0;
  v25 = sub_1000077C8(&qword_1001781D0, &qword_100120F30);
  sub_1000EDA0C(v23, v2, &v24[*(v25 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021A84(v7, v12, &qword_1001781B0, &qword_100120F10);
  v26 = &v12[*(v9 + 44)];
  v27 = v36[5];
  *(v26 + 4) = v36[4];
  *(v26 + 5) = v27;
  *(v26 + 6) = v36[6];
  v28 = v36[1];
  *v26 = v36[0];
  *(v26 + 1) = v28;
  v29 = v36[3];
  *(v26 + 2) = v36[2];
  *(v26 + 3) = v29;
  v30 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  sub_100021A84(v12, v17, &qword_1001781B8, &qword_100120F18);
  v32 = &v17[*(v14 + 44)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = static Color.black.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();

  sub_100021A84(v17, a1, &qword_1001781C0, &qword_100120F20);
  result = sub_1000077C8(&qword_1001781D8, &qword_100120F68);
  v35 = a1 + *(result + 36);
  *v35 = v33;
  *(v35 + 8) = KeyPath;
  return result;
}

uint64_t sub_1000EDA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&unk_1001781E0, &qword_100120F70);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v39 - v14);
  Image.init(_internalSystemName:)();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v8, v4);
  v17 = (v15 + *(sub_1000077C8(&unk_1001778C0, &qword_100120038) + 36));
  v18 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
  v19 = enum case for Image.Scale.large(_:);
  v20 = type metadata accessor for Image.Scale();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *v15 = v16;
  v21 = (v15 + *(sub_1000077C8(&qword_100177B30, &qword_100120588) + 36));
  v22 = *(sub_1000077C8(&qword_100177B50, &qword_100120590) + 28);
  static SymbolRenderingMode.monochrome.getter();
  v23 = type metadata accessor for SymbolRenderingMode();
  (*(*(v23 - 8) + 56))(v21 + v22, 0, 1, v23);
  *v21 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v25 = (v15 + *(sub_1000077C8(&qword_1001781F8, &qword_100120FD8) + 36));
  *v25 = KeyPath;
  v25[1] = a1;
  v26 = v15 + *(sub_1000077C8(&qword_100178200, &qword_100120FE0) + 36);
  *v26 = 0;
  *(v26 + 4) = 1;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = (v15 + *(v10 + 44));
  v28 = v48;
  *v27 = v47;
  v27[1] = v28;
  v27[2] = v49;
  v29 = static HorizontalAlignment.leading.getter();
  v43 = 1;
  sub_1000EE010(v53);
  memcpy(v50, v53, 0x122uLL);
  memcpy(v51, v53, 0x122uLL);
  sub_100007BA4(v50, v52, &qword_100178208, &qword_100120FE8);
  sub_1000159AC(v51, &qword_100178208, &qword_100120FE8);
  memcpy(&v42[7], v50, 0x122uLL);
  LOBYTE(v18) = v43;
  v30 = swift_getKeyPath();
  type metadata accessor for SystemApertureLayoutState();
  sub_1000F0A18(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState);
  v31 = EnvironmentObject.init()();
  v33 = v32;
  v34 = v41;
  sub_100007BA4(v15, v41, &unk_1001781E0, &qword_100120F70);
  v35 = v34;
  v36 = v40;
  sub_100007BA4(v35, v40, &unk_1001781E0, &qword_100120F70);
  v37 = *(sub_1000077C8(&qword_100178210, &qword_100120FF0) + 48);
  v52[0] = v29;
  v52[1] = 0;
  LOBYTE(v52[2]) = v18;
  memcpy(&v52[2] + 1, v42, 0x129uLL);
  *(&v52[39] + 2) = v45;
  HIWORD(v52[39]) = v46;
  v52[40] = v30;
  LOBYTE(v52[41]) = 0;
  *(&v52[41] + 1) = v44[0];
  HIDWORD(v52[41]) = *(v44 + 3);
  v52[42] = v31;
  v52[43] = v33;
  memcpy((v36 + v37), v52, 0x160uLL);
  sub_100007BA4(v52, v53, &qword_100178218, &unk_100120FF8);
  sub_1000159AC(v15, &unk_1001781E0, &qword_100120F70);
  *v53 = v29;
  *&v53[8] = 0;
  v53[16] = v18;
  memcpy(&v53[17], v42, 0x129uLL);
  v54 = v45;
  v55 = v46;
  v56 = v30;
  v57 = 0;
  *v58 = v44[0];
  *&v58[3] = *(v44 + 3);
  v59 = v31;
  v60 = v33;
  sub_1000159AC(v53, &qword_100178218, &unk_100120FF8);
  return sub_1000159AC(v41, &unk_1001781E0, &qword_100120F70);
}

uint64_t sub_1000EE010@<X0>(void *a1@<X8>)
{
  v45 = a1;
  v1 = sub_1000077C8(&qword_100177A70, &qword_10011AC50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v38 - v3;
  v85 = sub_1000ED0BC();
  v86 = v5;
  v41 = sub_10004BB74();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Font.Design();
  v12 = *(v11 - 8);
  v39 = *(v12 + 56);
  v40 = v12 + 56;
  v39(v4, 1, 1, v11);
  static Font.system(size:weight:design:)();
  sub_1000159AC(v4, &qword_100177A70, &qword_10011AC50);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v13 = Text.font(_:)();
  v42 = v14;
  v43 = v13;
  v16 = v15;
  v44 = v17;

  sub_10004BBC8(v6, v8, v10 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v46 = v16 & 1;
  v108 = v16 & 1;
  v85 = sub_1000ED3A8();
  v86 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v6) = v22;
  v39(v4, 1, 1, v11);
  static Font.system(size:weight:design:)();
  sub_1000159AC(v4, &qword_100177A70, &qword_10011AC50);
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_10004BBC8(v19, v21, v6 & 1);

  static Color.white.getter();
  Color.opacity(_:)();

  v28 = Text.foregroundColor(_:)();
  v30 = v29;
  LOBYTE(v6) = v31;
  v33 = v32;

  sub_10004BBC8(v23, v25, v27 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v34 = v42;
  v35 = v43;
  *&v66 = v43;
  *(&v66 + 1) = v42;
  LOBYTE(v67) = v46;
  *(&v67 + 1) = *v107;
  DWORD1(v67) = *&v107[3];
  v36 = v44;
  *(&v67 + 1) = v44;
  v72 = v104;
  v73 = v105;
  v74 = v106;
  v68 = v100;
  v69 = v101;
  v71 = v103;
  v70 = v102;
  *&v58[96] = v104;
  *&v58[112] = v105;
  *&v58[32] = v100;
  *&v58[48] = v101;
  *&v58[64] = v102;
  *&v58[80] = v103;
  *v58 = v66;
  *&v58[16] = v67;
  *&v75 = v28;
  *(&v75 + 1) = v30;
  LOBYTE(v76) = v6 & 1;
  *(&v76 + 1) = *v98;
  DWORD1(v76) = *&v98[3];
  *(&v76 + 1) = v33;
  v81 = v63;
  v82 = v64;
  v83 = v65;
  v77 = v59;
  v78 = v60;
  v80 = v62;
  v79 = v61;
  *&v58[128] = v106;
  *&v58[144] = v75;
  *&v58[256] = v64;
  *&v58[272] = v65;
  *&v58[160] = v76;
  *&v58[176] = v59;
  *&v58[192] = v60;
  *&v58[208] = v61;
  v99 = v6 & 1;
  v84 = 256;
  *&v58[288] = 256;
  *&v58[224] = v62;
  *&v58[240] = v63;
  memcpy(v45, v58, 0x122uLL);
  v85 = v28;
  v86 = v30;
  v87 = v6 & 1;
  *v88 = *v98;
  *&v88[3] = *&v98[3];
  v89 = v33;
  v94 = v63;
  v95 = v64;
  v96 = v65;
  v90 = v59;
  v91 = v60;
  v92 = v61;
  v93 = v62;
  v97 = 256;
  sub_100007BA4(&v66, v47, &qword_100178220, &qword_100121008);
  sub_100007BA4(&v75, v47, &qword_100178228, &qword_100121010);
  sub_1000159AC(&v85, &qword_100178228, &qword_100121010);
  v47[0] = v35;
  v47[1] = v34;
  v48 = v46;
  *v49 = *v107;
  *&v49[3] = *&v107[3];
  v50 = v36;
  v55 = v104;
  v56 = v105;
  v57 = v106;
  v51 = v100;
  v52 = v101;
  v54 = v103;
  v53 = v102;
  return sub_1000159AC(v47, &qword_100178220, &qword_100121008);
}

double sub_1000EE6C8@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbySharingInteractionViewState(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_1000522F8(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v13 = *(v7 + 5);
    v77 = *(v7 + 4);
    v78 = v13;
    v79 = *(v7 + 24);
    v14 = *(v7 + 1);
    v73 = *v7;
    v74 = v14;
    v15 = *(v7 + 3);
    v75 = *(v7 + 2);
    v76 = v15;
    sub_100056D60((v7 + 104));
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v10 = *(v7 + 5);
    v77 = *(v7 + 4);
    v78 = v10;
    v79 = *(v7 + 24);
    v11 = *(v7 + 1);
    v73 = *v7;
    v74 = v11;
    v12 = *(v7 + 3);
    v75 = *(v7 + 2);
    v76 = v12;
LABEL_7:
    KeyPath = swift_getKeyPath();
    type metadata accessor for NearbySharingInteractionViewModel(0);
    sub_1000F0A18(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
    v17 = ObservedObject.init(wrappedValue:)();
    v19 = v18;
    LOBYTE(v64) = 0;
    State.init(wrappedValue:)();
    *&v36 = KeyPath;
    BYTE8(v36) = 0;
    *&v37 = v17;
    *(&v37 + 1) = v19;
    LOBYTE(v38) = v80;
    *(&v38 + 1) = *(&v80 + 1);
    v42 = v76;
    v43 = v77;
    v44 = v78;
    v45 = v79;
    v39 = v73;
    v40 = v74;
    v41 = v75;
    v52 = v76;
    v53 = v77;
    v54[0] = v78;
    LODWORD(v54[1]) = v79;
    v48 = v38;
    v49 = v73;
    v50 = v74;
    v51 = v75;
    v46 = v36;
    v47 = v37;
    sub_1000F11EC(&v46);
    v86 = v52;
    v87 = v53;
    v88[0] = v54[0];
    *(v88 + 13) = *(v54 + 13);
    v82 = v48;
    v83 = v49;
    v84 = v50;
    v85 = v51;
    v80 = v46;
    v81 = v47;
    sub_1000F11F8(&v36, &v64);
    sub_1000F1144();
    sub_1000F1198();
    _ConditionalContent<>.init(storage:)();
    v70 = v33;
    v71 = v34;
    v72[0] = *v35;
    *(v72 + 13) = *&v35[13];
    v66 = v29;
    v67 = v30;
    v68 = v31;
    v69 = v32;
    v64 = v27;
    v65 = v28;
    sub_1000F1230(&v64);
    v86 = v70;
    v87 = v71;
    v88[0] = v72[0];
    *(v88 + 14) = *(v72 + 14);
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v85 = v69;
    v80 = v64;
    v81 = v65;
    sub_1000077C8(&qword_100178190, &qword_100120F08);
    sub_1000F10B8();
    _ConditionalContent<>.init(storage:)();
    sub_1000F1238(&v36);
    v86 = v61;
    v87 = v62;
    v88[0] = v63[0];
    *(v88 + 14) = *(v63 + 14);
    v82 = v57;
    v83 = v58;
    v84 = v59;
    v85 = v60;
    v20 = v55;
    v21 = v56;
LABEL_9:
    v80 = v20;
    v81 = v21;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {

    sub_1000F10AC(&v55);
    v86 = v61;
    v87 = v62;
    v88[0] = v63[0];
    *(v88 + 14) = *(v63 + 14);
    v82 = v57;
    v83 = v58;
    v84 = v59;
    v85 = v60;
    v80 = v55;
    v81 = v56;
    sub_1000077C8(&qword_100178190, &qword_100120F08);
    sub_1000F10B8();
    _ConditionalContent<>.init(storage:)();
    sub_1000F0BA4(v7, type metadata accessor for NearbySharingInteractionViewState);
    v86 = v70;
    v87 = v71;
    v88[0] = v72[0];
    *(v88 + 14) = *(v72 + 14);
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v85 = v69;
    v20 = v64;
    v21 = v65;
    goto LABEL_9;
  }

  sub_1000F0BA4(v7, type metadata accessor for NearbySharingInteractionViewState);
  sub_1000F1268(&v46);
  v86 = v52;
  v87 = v53;
  v88[0] = v54[0];
  *(v88 + 13) = *(v54 + 13);
  v82 = v48;
  v83 = v49;
  v84 = v50;
  v85 = v51;
  v80 = v46;
  v81 = v47;
  sub_1000F1144();
  sub_1000F1198();
  _ConditionalContent<>.init(storage:)();
  v70 = v33;
  v71 = v34;
  v72[0] = *v35;
  *(v72 + 13) = *&v35[13];
  v66 = v29;
  v67 = v30;
  v68 = v31;
  v69 = v32;
  v64 = v27;
  v65 = v28;
  sub_1000F1230(&v64);
  v61 = v70;
  v62 = v71;
  v63[0] = v72[0];
  *(v63 + 14) = *(v72 + 14);
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v55 = v64;
  v56 = v65;
  sub_1000077C8(&qword_100178190, &qword_100120F08);
  sub_1000F10B8();
  _ConditionalContent<>.init(storage:)();
LABEL_10:
  v22 = v87;
  *(a2 + 96) = v86;
  *(a2 + 112) = v22;
  *(a2 + 128) = v88[0];
  *(a2 + 142) = *(v88 + 14);
  v23 = v83;
  *(a2 + 32) = v82;
  *(a2 + 48) = v23;
  v24 = v85;
  *(a2 + 64) = v84;
  *(a2 + 80) = v24;
  result = *&v80;
  v26 = v81;
  *a2 = v80;
  *(a2 + 16) = v26;
  return result;
}

uint64_t sub_1000EEC74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000077C8(&qword_100177020, &qword_100120EF0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (&v32 - v9);
  v11 = type metadata accessor for NearbySharingInteractionViewState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE6C8(a2, v33);
  v37[0] = 1;
  v35[0] = 0;
  sub_1000F1018();
  v15 = static AnyTransition.modifier<A>(active:identity:)();
  v16 = static Animation.default.getter();
  sub_1000522F8(v14);
  sub_1000F2D04(v14, v10 + *(v7 + 44), type metadata accessor for NearbySharingInteractionViewState);
  *v10 = v16;
  v17 = sub_1000077C8(&qword_100178180, &qword_100120EF8);
  sub_100007BA4(v10, a3 + *(v17 + 36), &qword_100177020, &qword_100120EF0);
  v18 = v33[7];
  *(a3 + 96) = v33[6];
  *(a3 + 112) = v18;
  *(a3 + 128) = v33[8];
  v19 = v34;
  v20 = v33[3];
  *(a3 + 32) = v33[2];
  *(a3 + 48) = v20;
  v21 = v33[5];
  *(a3 + 64) = v33[4];
  *(a3 + 80) = v21;
  v22 = v33[1];
  *a3 = v33[0];
  *(a3 + 16) = v22;
  *(a3 + 144) = v19;
  *(a3 + 152) = v15;
  sub_1000159AC(v10, &qword_100177020, &qword_100120EF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  type metadata accessor for SystemApertureLayoutState();
  sub_1000F0A18(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState);
  v26 = a2;
  v27 = EnvironmentObject.init()();
  v29 = v28;
  v38 = 0;
  v36 = 0;
  result = sub_1000077C8(&qword_100178188, &qword_100120F00);
  v31 = a3 + *(result + 36);
  *v31 = KeyPath;
  *(v31 + 8) = v38;
  *(v31 + 9) = *v37;
  *(v31 + 12) = *&v37[3];
  *(v31 + 16) = v25;
  *(v31 + 24) = v36;
  *(v31 + 25) = *v35;
  *(v31 + 28) = *&v35[3];
  *(v31 + 32) = v27;
  *(v31 + 40) = v29;
  *(v31 + 48) = sub_1000F10A4;
  *(v31 + 56) = v23;
  return result;
}

uint64_t sub_1000EEF60()
{
  result = sub_100054568();
  if (result == 1)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100007D20(v1, qword_10017F350);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Ending nearby interaction because banner view was dismissed", v4, 2u);
    }

    return sub_10004F4F8();
  }

  return result;
}

uint64_t sub_1000EF060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000077C8(&qword_100178268, &qword_100121080);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v47 - v5;
  v7 = type metadata accessor for NearbySharingInteractionAttributes(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v47 - v13;
  v15 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000077C8(&qword_100178270, &qword_100121088);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = v47 - v23;
  if (!a1)
  {
    v48 = v19;
    v49 = v16;
    if (qword_100172150 != -1)
    {
      v46 = v22;
      swift_once();
      v22 = v46;
    }

    v34 = v15;
    if (*(*(qword_10017F1E0 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator) + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
    {
      v35 = v6;
      v47[1] = v22;

      Activity.attributes.getter();

      sub_100007BA4(&v10[*(v7 + 20)], v14, &qword_1001780C0, &qword_100120BD0);
      sub_1000F0BA4(v10, type metadata accessor for NearbySharingInteractionAttributes);
      v36 = v49;
      if ((*(v49 + 48))(v14, 1, v15) != 1)
      {
        v37 = v48;
        (*(v36 + 32))(v48, v14, v15);
        (*(v36 + 16))(v35, v37, v15);
        KeyPath = swift_getKeyPath();
        v39 = v35 + *(type metadata accessor for NearbySharingInteractionFailureView(0) + 20);
        *v39 = KeyPath;
        *(v39 + 8) = 0;
        LOBYTE(KeyPath) = static Edge.Set.all.getter();
        v40 = v35 + *(sub_1000077C8(&qword_100178280, &qword_100121098) + 36);
        *v40 = KeyPath;
        *(v40 + 8) = 0u;
        *(v40 + 24) = 0u;
        *(v40 + 40) = 1;
        v41 = static Color.black.getter();
        v42 = static Edge.Set.all.getter();
        v43 = v35 + *(v3 + 36);
        *v43 = v41;
        *(v43 + 8) = v42;
        sub_100007BA4(v35, v24, &qword_100178268, &qword_100121080);
        swift_storeEnumTagMultiPayload();
        sub_1000077C8(&qword_100178288, &qword_1001210A0);
        sub_1000F145C();
        sub_1000F15A0();
        v32 = v50;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v35, &qword_100178268, &qword_100121080);
        (*(v36 + 8))(v37, v34);
        v33 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      (*(v49 + 56))(v14, 1, 1, v15);
    }

    sub_1000159AC(v14, &qword_1001780C0, &qword_100120BD0);
    v33 = 1;
    v32 = v50;
    goto LABEL_10;
  }

  type metadata accessor for NearbySharingInteractionViewModel(0);
  sub_1000F0A18(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
  v25 = a1;
  v26 = ObservedObject.init(wrappedValue:)();
  v28 = v27;
  v29 = static Edge.Set.all.getter();
  v51 = 1;
  v30 = static Color.black.getter();
  v31 = static Edge.Set.all.getter();
  *v24 = v26;
  *(v24 + 1) = v28;
  v24[16] = v29;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  v24[56] = 1;
  *(v24 + 8) = v30;
  v24[72] = v31;
  swift_storeEnumTagMultiPayload();
  sub_1000077C8(&qword_100178288, &qword_1001210A0);
  sub_1000F145C();
  sub_1000F15A0();
  v32 = v50;
  _ConditionalContent<>.init(storage:)();
  v33 = 0;
LABEL_10:
  v44 = sub_1000077C8(&qword_100178278, &qword_100121090);
  return (*(*(v44 - 8) + 56))(v32, v33, 1, v44);
}

uint64_t sub_1000EF658@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000077C8(&qword_100178398, &qword_1001213A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10011B400;
  v8 = enum case for Color.RGBColorSpace.sRGB(_:);
  v9 = *(v3 + 104);
  v9(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  *(v7 + 32) = Color.init(_:red:green:blue:opacity:)();
  v9(v6, v8, v2);
  *(v7 + 40) = Color.init(_:red:green:blue:opacity:)();
  v9(v6, v8, v2);
  *(v7 + 48) = Color.init(_:red:green:blue:opacity:)();
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = (a1 + *(sub_1000077C8(&qword_1001783A0, &qword_1001213A8) + 36));
  v14 = (v13 + *(sub_1000077C8(&qword_1001783A8, &qword_1001213B0) + 36));
  *v14 = static Alignment.center.getter();
  v14[1] = v15;
  v16 = sub_1000077C8(&qword_1001783B0, &qword_1001213B8);
  __asm { FMOV            V0.2D, #6.0 }

  sub_1000EF94C(v14 + *(v16 + 44), _Q0);
  *v13 = v10;
  v13[1] = v12;
  v22 = v27;
  *a1 = *&v26[8];
  *(a1 + 16) = v22;
  *(a1 + 32) = v28;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = (a1 + *(sub_1000077C8(&qword_1001783B8, &qword_1001213C0) + 36));
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  v23[2] = v31;
  result = sub_1000077C8(&qword_100178390, &qword_100121398);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000EF94C@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v43 = a2;
  v44 = a1;
  v2 = sub_1000077C8(&qword_100177A70, &qword_10011AC50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v43 - v4;
  v6 = sub_1000077C8(&qword_100178230, &qword_100121018);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - v8;
  v10 = sub_1000077C8(&qword_100173630, &qword_1001213D0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for RoundedRectangle();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v43 - v23);
  v26 = *(v25 + 28);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  *v24 = v43;
  Image.init(systemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v29 = type metadata accessor for SymbolRenderingMode();
  (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
  v43.n128_u64[0] = Image.symbolRenderingMode(_:)();

  sub_1000159AC(v9, &qword_100178230, &qword_100121018);
  static Font.Weight.regular.getter();
  v30 = enum case for Font.Design.default(_:);
  v31 = type metadata accessor for Font.Design();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v5, v30, v31);
  (*(v32 + 56))(v5, 0, 1, v31);
  v33 = static Font.system(size:weight:design:)();
  sub_1000159AC(v5, &qword_100177A70, &qword_10011AC50);
  KeyPath = swift_getKeyPath();
  v35 = static Color.white.getter();
  v36 = swift_getKeyPath();
  v37 = *(v11 + 44);
  v38 = enum case for BlendMode.destinationOut(_:);
  v39 = type metadata accessor for BlendMode();
  (*(*(v39 - 8) + 104))(&v17[v37], v38, v39);
  *v17 = v43.n128_u64[0];
  *(v17 + 1) = KeyPath;
  *(v17 + 2) = v33;
  *(v17 + 3) = v36;
  *(v17 + 4) = v35;
  sub_1000F1FF0(v24, v21, &type metadata accessor for RoundedRectangle);
  sub_100007BA4(v17, v14, &qword_100173630, &qword_1001213D0);
  v40 = v44;
  sub_1000F1FF0(v21, v44, &type metadata accessor for RoundedRectangle);
  v41 = sub_1000077C8(&qword_1001783D0, &qword_100121408);
  sub_100007BA4(v14, v40 + *(v41 + 48), &qword_100173630, &qword_1001213D0);
  sub_1000159AC(v17, &qword_100173630, &qword_1001213D0);
  sub_1000F0BA4(v24, &type metadata accessor for RoundedRectangle);
  sub_1000159AC(v14, &qword_100173630, &qword_1001213D0);
  return sub_1000F0BA4(v21, &type metadata accessor for RoundedRectangle);
}

__n128 sub_1000EFE18@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v4;
  v12 = v5;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v13 = v6;
  v14 = v7;
  if (*(&v8 + 1) <= 0xFFFFFFFEFFFFFFFFLL)
  {
    if (*(&v8 + 1) >> 62)
    {
      v2 = v12;

      sub_1000159AC(&v11, &unk_1001763B0, &qword_10011AF00);
      v4 = v2;
      v5.n128_u64[0] = 0x4038000000000000;
      LOBYTE(v8) = 1;
      sub_1000077C8(&qword_100178250, &unk_100121070);
      sub_1000E184C();
      sub_100063CDC();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      sub_1000077C8(&qword_100178250, &unk_100121070);
      sub_1000E184C();
      sub_100063CDC();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(&v11, &unk_1001763B0, &qword_10011AF00);
    }
  }

  sub_1000077C8(&qword_100178238, &qword_100121068);
  sub_1000F137C();
  sub_1000F1408();
  _ConditionalContent<>.init(storage:)();
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  result = v5;
  *a1 = v4;
  *(a1 + 16) = v5;
  return result;
}

double sub_1000F00E4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *&result = sub_1000EFE18(a1).n128_u64[0];
  return result;
}

uint64_t sub_1000F00EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&unk_100178060, &qword_100120BB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  type metadata accessor for SystemApertureLayoutState();
  sub_1000F0A18(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  sub_1000F039C(a1, v7);
  sub_1000F1E8C(&qword_100178070, &unk_100178060, &qword_100120BB0, sub_1000F0908);
  v11 = AnyView.init<A>(_:)();
  v12 = 0;
  if (a1)
  {
    type metadata accessor for NearbySharingInteractionViewModel(0);
    sub_1000F0A18(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
    v13 = a1;
    v12 = ObservedObject.init(wrappedValue:)();
  }

  else
  {
    v14 = 0;
  }

  v21 = v12;
  v22 = v14;
  sub_1000077C8(&qword_100178098, &qword_100120BC0);
  sub_1000F0A80();
  v15 = AnyView.init<A>(_:)();
  v16 = AnyView.init<A>(_:)();
  v17 = 0;
  if (a1)
  {
    type metadata accessor for NearbySharingInteractionViewModel(0);
    sub_1000F0A18(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
    v18 = a1;
    v17 = ObservedObject.init(wrappedValue:)();
  }

  else
  {
    v19 = 0;
  }

  v21 = v17;
  v22 = v19;
  result = AnyView.init<A>(_:)();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = result;
  *(a2 + 48) = 1;
  *(a2 + 56) = 4;
  return result;
}

uint64_t sub_1000F039C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbySharingInteractionFailureView(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NearbySharingInteractionAttributes(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000077C8(&qword_1001780B8, &qword_100120BC8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v38 - v14);
  v16 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v38 - v18;
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v38[0] = v4;
    v38[1] = v12;
    if (qword_100172150 != -1)
    {
      v36 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = v23;
      swift_once();
      v24 = v36;
      v23 = v37;
    }

    v28 = *(qword_10017F1E0 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
    if (*(v28 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
    {
      v29 = v24;
      v30 = *(v28 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity);
      v31 = v23;

      Activity.attributes.getter();

      sub_100007BA4(&v11[*(v8 + 20)], v19, &qword_1001780C0, &qword_100120BD0);
      sub_1000F0BA4(v11, type metadata accessor for NearbySharingInteractionAttributes);
      if ((*(v31 + 48))(v19, 1, v20) != 1)
      {
        (*(v31 + 32))(v29, v19, v20);
        (*(v31 + 16))(v7, v29, v20);
        KeyPath = swift_getKeyPath();
        v33 = &v7[*(v38[0] + 20)];
        *v33 = KeyPath;
        v33[8] = 0;
        sub_1000F1FF0(v7, v15, type metadata accessor for NearbySharingInteractionFailureView);
        swift_storeEnumTagMultiPayload();
        sub_1000F09C4();
        sub_1000F0A18(&qword_100178090, type metadata accessor for NearbySharingInteractionFailureView);
        _ConditionalContent<>.init(storage:)();
        sub_1000F0BA4(v7, type metadata accessor for NearbySharingInteractionFailureView);
        (*(v31 + 8))(v29, v20);
        goto LABEL_3;
      }
    }

    else
    {
      (*(v23 + 56))(v19, 1, 1, v20);
    }

    sub_1000159AC(v19, &qword_1001780C0, &qword_100120BD0);
    v27 = 1;
    goto LABEL_11;
  }

  type metadata accessor for NearbySharingInteractionViewModel(0);
  sub_1000F0A18(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
  v25 = a1;
  *v15 = ObservedObject.init(wrappedValue:)();
  v15[1] = v26;
  swift_storeEnumTagMultiPayload();
  sub_1000F09C4();
  sub_1000F0A18(&qword_100178090, type metadata accessor for NearbySharingInteractionFailureView);
  _ConditionalContent<>.init(storage:)();
LABEL_3:
  v27 = 0;
LABEL_11:
  v34 = sub_1000077C8(&qword_100178080, &qword_100120BB8);
  return (*(*(v34 - 8) + 56))(a2, v27, 1, v34);
}

unint64_t sub_1000F0908()
{
  result = qword_100178078;
  if (!qword_100178078)
  {
    sub_100007CCC(&qword_100178080, &qword_100120BB8);
    sub_1000F09C4();
    sub_1000F0A18(&qword_100178090, type metadata accessor for NearbySharingInteractionFailureView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178078);
  }

  return result;
}

unint64_t sub_1000F09C4()
{
  result = qword_100178088;
  if (!qword_100178088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178088);
  }

  return result;
}

uint64_t sub_1000F0A18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F0A80()
{
  result = qword_1001780A0;
  if (!qword_1001780A0)
  {
    sub_100007CCC(&qword_100178098, &qword_100120BC0);
    sub_1000F0B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001780A0);
  }

  return result;
}

unint64_t sub_1000F0B04()
{
  result = qword_1001780A8;
  if (!qword_1001780A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001780A8);
  }

  return result;
}

double sub_1000F0B58@<D0>(_OWORD *a1@<X8>)
{
  sub_1000F00EC(*v1, v6);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000F0BA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F0C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000F0D1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_1000F0E04()
{
  if (!qword_100178130)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100178130);
    }
  }
}

uint64_t sub_1000F0E6C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1000F0EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000F0F2C(uint64_t a1)
{
  result = sub_1000F0F54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F0F54()
{
  result = qword_100178168;
  if (!qword_100178168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178168);
  }

  return result;
}

unint64_t sub_1000F1018()
{
  result = qword_100178178;
  if (!qword_100178178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178178);
  }

  return result;
}

uint64_t sub_1000F106C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F10A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000EEF60();
}

unint64_t sub_1000F10B8()
{
  result = qword_100178198;
  if (!qword_100178198)
  {
    sub_100007CCC(&qword_100178190, &qword_100120F08);
    sub_1000F1144();
    sub_1000F1198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178198);
  }

  return result;
}

unint64_t sub_1000F1144()
{
  result = qword_1001781A0;
  if (!qword_1001781A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001781A0);
  }

  return result;
}

unint64_t sub_1000F1198()
{
  result = qword_1001781A8;
  if (!qword_1001781A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001781A8);
  }

  return result;
}

uint64_t sub_1000F12C8(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100178230, &qword_100121018);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100007BA4(a1, &v6 - v4, &qword_100178230, &qword_100121018);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t sub_1000F137C()
{
  result = qword_100178240;
  if (!qword_100178240)
  {
    sub_100007CCC(&qword_100178238, &qword_100121068);
    sub_1000E184C();
    sub_100063CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178240);
  }

  return result;
}

unint64_t sub_1000F1408()
{
  result = qword_100178258;
  if (!qword_100178258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178258);
  }

  return result;
}

unint64_t sub_1000F145C()
{
  result = qword_100178290;
  if (!qword_100178290)
  {
    sub_100007CCC(&qword_100178288, &qword_1001210A0);
    sub_1000F1514();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178290);
  }

  return result;
}

unint64_t sub_1000F1514()
{
  result = qword_100178298;
  if (!qword_100178298)
  {
    sub_100007CCC(&unk_1001782A0, &qword_1001210A8);
    sub_1000F09C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178298);
  }

  return result;
}

unint64_t sub_1000F15A0()
{
  result = qword_1001782B8;
  if (!qword_1001782B8)
  {
    sub_100007CCC(&qword_100178268, &qword_100121080);
    sub_1000F1658();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001782B8);
  }

  return result;
}

unint64_t sub_1000F1658()
{
  result = qword_1001782C0;
  if (!qword_1001782C0)
  {
    sub_100007CCC(&qword_100178280, &qword_100121098);
    sub_1000F0A18(&qword_100178090, type metadata accessor for NearbySharingInteractionFailureView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001782C0);
  }

  return result;
}

__n128 sub_1000F1714(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F1748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 148))
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

uint64_t sub_1000F1790(uint64_t result, int a2, int a3)
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
      *(result + 148) = 1;
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

    *(result + 148) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F182C()
{
  result = qword_1001782C8;
  if (!qword_1001782C8)
  {
    sub_100007CCC(&qword_100178188, &qword_100120F00);
    sub_1000F18B8();
    sub_1000F1B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001782C8);
  }

  return result;
}

unint64_t sub_1000F18B8()
{
  result = qword_1001782D0;
  if (!qword_1001782D0)
  {
    sub_100007CCC(&qword_100178180, &qword_100120EF8);
    sub_1000F1970();
    sub_1000199C8(&qword_1001771F0, &qword_100177020, &qword_100120EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001782D0);
  }

  return result;
}

unint64_t sub_1000F1970()
{
  result = qword_1001782D8;
  if (!qword_1001782D8)
  {
    sub_100007CCC(&qword_1001782E0, &qword_100121250);
    sub_1000F19F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001782D8);
  }

  return result;
}

unint64_t sub_1000F19F4()
{
  result = qword_1001782E8;
  if (!qword_1001782E8)
  {
    sub_100007CCC(&qword_1001782F0, &qword_100121258);
    sub_1000F1AAC();
    sub_1000199C8(&unk_100177060, &unk_100178310, &qword_10011F748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001782E8);
  }

  return result;
}

unint64_t sub_1000F1AAC()
{
  result = qword_1001782F8;
  if (!qword_1001782F8)
  {
    sub_100007CCC(&unk_100178300, &unk_100121260);
    sub_1000F10B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001782F8);
  }

  return result;
}

unint64_t sub_1000F1B38()
{
  result = qword_100178320;
  if (!qword_100178320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178320);
  }

  return result;
}

unint64_t sub_1000F1B90()
{
  result = qword_100178328;
  if (!qword_100178328)
  {
    sub_100007CCC(&qword_1001781D8, &qword_100120F68);
    sub_1000F1C48();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178328);
  }

  return result;
}

unint64_t sub_1000F1C48()
{
  result = qword_100178330;
  if (!qword_100178330)
  {
    sub_100007CCC(&qword_1001781C0, &qword_100120F20);
    sub_1000F1D00();
    sub_1000199C8(&qword_1001776F8, &unk_100177700, &qword_100121270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178330);
  }

  return result;
}

unint64_t sub_1000F1D00()
{
  result = qword_100178338;
  if (!qword_100178338)
  {
    sub_100007CCC(&qword_1001781B8, &qword_100120F18);
    sub_1000199C8(&qword_100178340, &qword_1001781B0, &qword_100120F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178338);
  }

  return result;
}

unint64_t sub_1000F1DBC()
{
  result = qword_100178348;
  if (!qword_100178348)
  {
    sub_100007CCC(&qword_100178350, &qword_100121278);
    sub_1000F137C();
    sub_1000F1408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178348);
  }

  return result;
}

uint64_t sub_1000F1E8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F1F08()
{
  result = qword_100178368;
  if (!qword_100178368)
  {
    sub_100007CCC(&qword_100178278, &qword_100121090);
    sub_1000F145C();
    sub_1000F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178368);
  }

  return result;
}

uint64_t sub_1000F1FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000F2064()
{
  result = qword_100178410;
  if (!qword_100178410)
  {
    sub_100007CCC(&qword_1001783F0, &qword_100121428);
    sub_1000F211C();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178410);
  }

  return result;
}

unint64_t sub_1000F211C()
{
  result = qword_100178418;
  if (!qword_100178418)
  {
    sub_100007CCC(&qword_1001783E8, &qword_100121420);
    sub_1000F21D4();
    sub_1000199C8(&qword_1001776F8, &unk_100177700, &qword_100121270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178418);
  }

  return result;
}

unint64_t sub_1000F21D4()
{
  result = qword_100178420;
  if (!qword_100178420)
  {
    sub_100007CCC(&qword_1001783E0, &qword_100121418);
    sub_1000199C8(&qword_100178428, &qword_1001783D8, &qword_100121410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178420);
  }

  return result;
}

uint64_t sub_1000F228C()
{
  sub_100023CC8(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 56);

  v5 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  sub_1000588EC(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return _swift_deallocObject(v0, 164, 7);
}

uint64_t sub_1000F231C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100178400, &qword_100121438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F2398()
{
  sub_100023CC8(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 56);

  v6 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  sub_1000588EC(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_100007920((v0 + 168));
  v2 = *(v0 + 208);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000F2454()
{
  sub_100023CC8(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 56);

  v6 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  sub_1000588EC(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_100007920((v0 + 168));
  sub_100007920((v0 + 208));
  v2 = *(v0 + 248);

  return _swift_deallocObject(v0, 256, 7);
}

uint64_t sub_1000F24EC()
{
  v1 = v0[5];
  v2 = v0[24];
  v3 = v0[25];
  v4 = sub_1000078DC(v0 + 21, v2);

  return sub_10005560C(v4, (v0 + 26), 0, v1, v2, v3);
}

uint64_t sub_1000F255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
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

uint64_t sub_1000F262C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
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

uint64_t sub_1000F2710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000F27A4()
{
  result = qword_100178548;
  if (!qword_100178548)
  {
    sub_100007CCC(&qword_100178388, &qword_100121390);
    sub_1000199C8(&qword_100178550, &qword_100178558, &qword_100121588);
    sub_1000199C8(&qword_1001776F8, &unk_100177700, &qword_100121270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178548);
  }

  return result;
}

unint64_t sub_1000F288C()
{
  result = qword_100178560;
  if (!qword_100178560)
  {
    sub_100007CCC(&qword_100178400, &qword_100121438);
    sub_100007CCC(&qword_1001783F0, &qword_100121428);
    sub_1000F2064();
    swift_getOpaqueTypeConformance2();
    sub_1000F2954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178560);
  }

  return result;
}

unint64_t sub_1000F2954()
{
  result = qword_100178568;
  if (!qword_100178568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178568);
  }

  return result;
}

unint64_t sub_1000F29AC()
{
  result = qword_100178570;
  if (!qword_100178570)
  {
    sub_100007CCC(&qword_100178390, &qword_100121398);
    sub_1000F2A64();
    sub_1000199C8(&qword_1001735B0, &qword_1001785A0, &qword_100121590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178570);
  }

  return result;
}

unint64_t sub_1000F2A64()
{
  result = qword_100178578;
  if (!qword_100178578)
  {
    sub_100007CCC(&qword_1001783B8, &qword_1001213C0);
    sub_1000F2AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178578);
  }

  return result;
}

unint64_t sub_1000F2AF0()
{
  result = qword_100178580;
  if (!qword_100178580)
  {
    sub_100007CCC(&qword_1001783A0, &qword_1001213A8);
    sub_1000F2BA8();
    sub_1000199C8(&unk_100178590, &qword_1001783A8, &qword_1001213B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178580);
  }

  return result;
}

unint64_t sub_1000F2BA8()
{
  result = qword_100178588;
  if (!qword_100178588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178588);
  }

  return result;
}

uint64_t sub_1000F2C18()
{
  v1 = (type metadata accessor for BannerShareableContentActionButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F2D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F2D6C()
{
  v1 = type metadata accessor for BannerShareableContentActionButton(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_1000F2DE0()
{
  result = qword_1001785B0;
  if (!qword_1001785B0)
  {
    sub_100007CCC(&qword_1001785A8, &qword_1001215E8);
    sub_1000F2E98();
    sub_1000199C8(&qword_1001776F8, &unk_100177700, &qword_100121270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785B0);
  }

  return result;
}

unint64_t sub_1000F2E98()
{
  result = qword_1001785B8;
  if (!qword_1001785B8)
  {
    sub_100007CCC(&qword_1001785C0, &qword_1001215F0);
    sub_1000F2F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785B8);
  }

  return result;
}

unint64_t sub_1000F2F24()
{
  result = qword_1001785C8;
  if (!qword_1001785C8)
  {
    sub_100007CCC(&qword_1001785D0, &qword_1001215F8);
    sub_1000F2FDC();
    sub_1000199C8(&qword_1001785F8, &qword_100178600, &qword_100121610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785C8);
  }

  return result;
}

unint64_t sub_1000F2FDC()
{
  result = qword_1001785D8;
  if (!qword_1001785D8)
  {
    sub_100007CCC(&qword_1001785E0, &qword_100121600);
    sub_1000F3094();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785D8);
  }

  return result;
}

unint64_t sub_1000F3094()
{
  result = qword_1001785E8;
  if (!qword_1001785E8)
  {
    sub_100007CCC(&qword_1001785F0, &qword_100121608);
    sub_1000E1704();
    sub_1000199C8(&qword_1001735B0, &qword_1001785A0, &qword_100121590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785E8);
  }

  return result;
}

void sub_1000F31B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) == 1 && *(v0 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage) != 0;
  sub_1000F34FC(v1);
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_airDropMicaView);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 publishedObjectWithName:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    sub_1000165C4(0, &unk_100178670, CALayer_ptr);
    if (swift_dynamicCast())
    {
      v5 = *(v0 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage);
      if (v5 && (v6 = [v5 CGImage]) != 0)
      {
        *&v13[0] = v6;
        type metadata accessor for CGImage(0);
        v7 = _bridgeAnythingToObjectiveC<A>(_:)();
      }

      else
      {
        v7 = 0;
      }

      [v10 setContents:v7];
      swift_unknownObjectRelease();
      [v10 setContentsGravity:kCAGravityResizeAspect];
      v8 = [objc_opt_self() clearColor];
      v9 = [v8 CGColor];

      [v10 setBackgroundColor:v9];
    }
  }

  else
  {
    sub_10006CDAC(v13);
  }
}

void sub_1000F34FC(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_airDropMicaView);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 publishedObjectWithName:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1000165C4(0, &unk_100178670, CALayer_ptr);
    if (swift_dynamicCast())
    {
      [v6 setHidden:(a1 & 1) == 0];
    }
  }

  else
  {
    sub_10006CDAC(v9);
  }
}

void sub_1000F3614()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &unk_100178000;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) != 1)
  {
    if (*(v0 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress) < 1.0)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  v12 = static Locale.preferredLanguages.getter();
  if (v12[2])
  {
    v13 = v12[4];
    v14 = v12[5];

    v11 = &unk_100178000;
    Locale.Language.init(identifier:)();
    v15 = Locale.Language.characterDirection.getter();
    (*(v7 + 8))(v10, v6);
    if (v15 == 2)
    {
      v16 = 1;
      v17 = 0xE800000000000000;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = 0;
  v17 = 0xE400000000000000;
LABEL_10:
  if (*(v0 + v11[196]) >= 1.0)
  {

    if (v16)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = 0xE400000000000000;
    }
  }

LABEL_14:
  v18 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v18, v1);
  v19 = (*(v2 + 88))(v5, v1);
  if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
LABEL_15:
    (*(v2 + 96))(v5, v1);
    v20 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
LABEL_32:
    (*(*(v20 - 8) + 8))(v5, v20);
    goto LABEL_33;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v2 + 96))(v5, v1);
    v21 = &qword_100173088;
    v22 = &unk_10011C520;
LABEL_18:
    v23 = *(sub_1000077C8(v21, v22) + 48);
    v24 = &unk_100174F80;
    v25 = &unk_10011AE60;
LABEL_19:
    v26 = sub_1000077C8(v24, v25);
    (*(*(v26 - 8) + 8))(&v5[v23], v26);
LABEL_20:
    v20 = type metadata accessor for SFAirDrop.ContactInfo();
    goto LABEL_32;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
    goto LABEL_15;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v2 + 96))(v5, v1);
    v27 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v28 = v27[12];
    v29 = *&v5[v27[16] + 8];

    v30 = v27[20];
    v31 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v31 - 8) + 8))(&v5[v30], v31);
    v32 = type metadata accessor for SFAirDrop.Progress();
LABEL_30:
    (*(*(v32 - 8) + 8))(&v5[v28], v32);
LABEL_31:
    v20 = type metadata accessor for SFAirDropReceive.ItemDestination();
    goto LABEL_32;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v2 + 96))(v5, v1);
    v33 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    v34 = *&v5[*(v33 + 48)];

    v28 = *(v33 + 80);
    v32 = type metadata accessor for SFAirDrop.DeclineAction();
    goto LABEL_30;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:) || v19 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
  {
    (*(v2 + 96))(v5, v1);
    v35 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v36 = *&v5[*(v35 + 48)];

    v28 = *(v35 + 64);
LABEL_29:
    v32 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    goto LABEL_30;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
  {
    (*(v2 + 96))(v5, v1);
    v39 = *(sub_1000077C8(&unk_100174F60, &qword_10011C4C0) + 48);
LABEL_37:
    v40 = *&v5[v39];

    goto LABEL_31;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:) || v19 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
  {
    (*(v2 + 96))(v5, v1);
    v41 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    v42 = *&v5[v41[12]];

    v43 = *&v5[v41[16]];

    v28 = v41[20];
    goto LABEL_29;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.opening(_:))
  {
    (*(v2 + 96))(v5, v1);
    v44 = sub_1000077C8(&unk_100174FE0, &qword_10011C600);
    v45 = *&v5[*(v44 + 48)];

    v39 = *(v44 + 64);
    goto LABEL_37;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    (*(v2 + 96))(v5, v1);
    v23 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
    v24 = &unk_100173CB0;
    v25 = &unk_10011AE50;
    goto LABEL_19;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.importingReceivedContact(_:))
  {
    (*(v2 + 96))(v5, v1);
    goto LABEL_20;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    (*(v2 + 96))(v5, v1);
    v21 = &unk_100174FD0;
    v22 = &unk_100118F70;
    goto LABEL_18;
  }

  v46 = v0;
  if (v19 == enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:))
  {
    (*(v2 + 96))(v5, v1);
    v47 = *(sub_1000077C8(&qword_100174FC8, &qword_100121680) + 48);
    v48 = type metadata accessor for SFAirDrop.ContactRequest();
    v49 = *(*(v48 - 8) + 8);
    v49(&v5[v47], v48);
    v49(v5, v48);
LABEL_53:
    v0 = v46;
    goto LABEL_33;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v2 + 96))(v5, v1);
    v50 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
    v51 = v50[12];
    v52 = *&v5[v50[16] + 8];

    v53 = *&v5[v50[20]];

    v54 = *&v5[v50[24]];

    v55 = *&v5[v50[28]];

    v56 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v56 - 8) + 8))(&v5[v51], v56);
    v57 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v57 - 8) + 8))(v5, v57);
    goto LABEL_53;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {

    (*(v2 + 96))(v5, v1);
    v58 = *(sub_1000077C8(&qword_100174FB0, &unk_10011C5E0) + 48);
    v59 = type metadata accessor for SFAirDropReceive.Failure();
    (*(*(v59 - 8) + 8))(&v5[v58], v59);
    v60 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    (*(*(v60 - 8) + 8))(v5, v60);
    goto LABEL_56;
  }

  if (v19 == enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:))
  {
    (*(v2 + 96))(v5, v1);
    if (*v5 == 9 || *v5 == 3)
    {
      goto LABEL_61;
    }
  }

  else if (v19 != enum case for SFAirDropReceive.Transfer.State.created(_:) && v19 != enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) && v19 != enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:) && v19 != enum case for SFAirDropReceive.Transfer.State.waitingForContactExchangeRequest(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_61:

    goto LABEL_56;
  }

LABEL_33:
  if (!v17)
  {
LABEL_56:
    v38 = [*(v0 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_airDropMicaView) layer];
    [v38 setBeginTime:CACurrentMediaTime()];
    goto LABEL_57;
  }

  v37 = *(v0 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_airDropMicaView);
  v38 = String._bridgeToObjectiveC()();

  [v37 setState:v38];
LABEL_57:
}