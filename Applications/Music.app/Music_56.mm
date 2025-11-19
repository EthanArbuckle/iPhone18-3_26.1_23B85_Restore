uint64_t sub_1006447B4()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[85];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for song=%{public}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70);
  }

  v13 = v0[101];
  v14 = v0[85];
  v15 = v0[81];
  v16 = v0[65];
  v18 = v0[63];
  v17 = v0[64];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v17 + 8))(v16, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100644B24()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[84];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138477827;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for playlist=%{private}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70);
  }

  v13 = v0[101];
  v14 = v0[84];
  v15 = v0[81];
  v16 = v0[51];
  v17 = v0[52];
  v18 = v0[50];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v16 + 8))(v17, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100644E94()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138477827;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for station=%{private}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70);
  }

  v13 = v0[101];
  v14 = v0[83];
  v15 = v0[81];
  v16 = v0[38];
  v17 = v0[39];
  v18 = v0[37];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v16 + 8))(v17, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100645204()
{
  v1 = v0[80];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  (*(v4 + 8))(v3, v5);
  sub_1000095E8(v1, &unk_101188920);

  *(v2 + 32) = 0;
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[11];
  sub_100646FB0(v6, v9);
  (*(v7 + 56))(v9, 0, 1, v8);
  sub_100647014(v6);

  v10 = v0[1];

  return v10();
}

void sub_1006454A0(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_10119A9C8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10064710C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010B8518;
  v11 = _Block_copy(aBlock);

  [a2 performWithResponseHandler:v11];
  _Block_release(v11);
}

uint64_t sub_100645650(void *a1)
{
  if (a1)
  {
    v1 = [a1 results];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 firstItem];

      if (v3)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  sub_10010FC20(&qword_10119A9C8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10064570C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v11, v7);
  sub_10053A574(a1, v32);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_100344A84(a1);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v7;
    v15 = v14;
    v28 = swift_slowAlloc();
    v31 = v28;
    *v15 = 136446210;
    v16 = *(a1 + 48);
    v32[2] = *(a1 + 32);
    v32[3] = v16;
    v33 = *(a1 + 64);
    v17 = *(a1 + 16);
    v32[0] = *a1;
    v32[1] = v17;
    sub_10053A574(a1, v30);
    v18 = String.init<A>(describing:)();
    v20 = v2;
    v21 = sub_1000105AC(v18, v19, &v31);

    *(v15 + 4) = v21;
    v2 = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "presentAlert called, with alert=%{public}s", v15, 0xCu);
    sub_10000959C(v28);

    (*(v8 + 8))(v10, v29);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  type metadata accessor for MainActor();
  sub_10053A574(a1, v32);

  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v25 = *a1;
  *(v24 + 56) = *(a1 + 16);
  v26 = *(a1 + 48);
  *(v24 + 72) = *(a1 + 32);
  *(v24 + 88) = v26;
  *(v24 + 16) = v23;
  *(v24 + 24) = &protocol witness table for MainActor;
  *(v24 + 32) = v2;
  *(v24 + 104) = *(a1 + 64);
  *(v24 + 40) = v25;
  sub_1001F4CB8(0, 0, v6, &unk_100ED9388, v24);
}

uint64_t sub_100645A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return _swift_task_switch(sub_100645AF0, v7, v6);
}

uint64_t sub_100645AF0()
{
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = *(v2 + 32);
    if (v3 >= 0)
    {
      v4 = *(v2 + 32);
    }

    else
    {
      v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    }

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 248) = xmmword_100EBCEF0;
    v5 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    PresentationSource.init(viewController:position:)(v4, v0 + 208, v0 + 112);

    sub_10012B828(v0 + 112, v0 + 16);
    v6 = Alert.uiAlertController.getter();
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v6, 1, 1, 0, 0);

    sub_10012BA6C(v0 + 16);
    goto LABEL_6;
  }

  v9 = *(v1 + 24);
  *(v0 + 304) = v9;
  if (!v9)
  {

LABEL_6:
    v7 = *(v0 + 8);

    return v7();
  }

  v10 = swift_task_alloc();
  *(v0 + 312) = v10;
  *v10 = v0;
  v10[1] = sub_100645C84;
  v11 = *(v0 + 272);

  return PresentedViewState<A>.present(_:)(v11);
}

uint64_t sub_100645C84()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100645DA4, v3, v2);
}

uint64_t sub_100645DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100645E10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100645E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002F3F4;

  return sub_1006402A8(a1, a2, a3, a4);
}

uint64_t sub_100645F10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F6C0C;

  return sub_100646138();
}

uint64_t sub_100645FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F6C0C;

  return sub_100646378();
}

uint64_t sub_10064609C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v0 = qword_101218AD8;
  v1 = qword_101218AD8;
  return v0;
}

id sub_1006460F8()
{
  v0 = [objc_opt_self() sharedApplication];

  return v0;
}

uint64_t sub_100646138()
{
  v1 = type metadata accessor for Logger();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100646228, v3, v2);
}

uint64_t sub_100646228()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  v4 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "PresentUpSell called", v7, 2u);
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);

  (*(v9 + 8))(v8, v10);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 56) = -3;
  static SubscriptionUpsellPresenter.present(for:)(v0 + 16);
  sub_100309980(v0 + 16);

  v11 = *(v0 + 8);

  return v11(1);
}

uint64_t sub_100646378()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v3;
  v0[9] = v2;

  return _swift_task_switch(sub_100646474, v3, v2);
}

uint64_t sub_100646474()
{
  type metadata accessor for AuthPresenter();
  v1 = swift_allocObject();
  *(v0 + 80) = v1;
  *(v0 + 104) = 0;
  Published.init(initialValue:)();
  *(v1 + OBJC_IVAR____TtC5Music13AuthPresenter_presentingViewController) = 0;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100646548;

  return sub_10071108C();
}

uint64_t sub_100646548(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  *(v4 + 96) = a1;
  *(v4 + 105) = a2;

  swift_setDeallocating();
  v6 = OBJC_IVAR____TtC5Music13AuthPresenter__isAuthenticating;
  v7 = sub_10010FC20(&unk_101189E60);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  swift_deallocClassInstance();
  v8 = *(v3 + 72);
  v9 = *(v3 + 64);

  return _swift_task_switch(sub_100646728, v9, v8);
}

uint64_t sub_100646728()
{
  v33 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  v4 = Logger.groupActivities.unsafeMutableAddressor();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "requireAuthentification called", v8, 2u);
  }

  v9 = *(v0 + 105);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);

  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = *(v0 + 96);
  if (v9)
  {
    v5(*(v0 + 40), v4, *(v0 + 24));
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_100646E74(v14, 1);
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 96);
    v19 = *(v0 + 40);
    v20 = *(v0 + 24);
    if (v17)
    {
      v31 = *(v0 + 40);
      v21 = swift_slowAlloc();
      v30 = v20;
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136446210;
      *(v0 + 16) = v14;
      swift_errorRetain();
      sub_10010FC20(&qword_1011824A0);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000105AC(v23, v24, &v32);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "requireAuthentification failed with error:%{public}s", v21, 0xCu);
      sub_10000959C(v22);

      sub_100646E74(v18, 1);
      v27 = v30;
      v26 = v31;
    }

    else
    {

      sub_100646E74(v18, 1);
      v26 = v19;
      v27 = v20;
    }

    v13(v26, v27);
    LOBYTE(v14) = 0;
  }

  v28 = *(v0 + 8);

  return v28(v14 & 1);
}

uint64_t sub_1006469EC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119A9B0);
  __chkstk_darwin(v2 - 8);
  v33 = &v27 - v3;
  v4 = sub_10010FC20(&qword_10119A9B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v15, v11);
  v16 = *(v5 + 16);
  v34 = a1;
  v16(v10, a1, v4);
  v17 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v17, v31);
  v32 = v16;
  if (v18)
  {
    v30 = v11;
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v19 = 136446210;
    v16(v7, v10, v4);
    v20 = (*(v5 + 88))(v7, v4);
    if (v20 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      v21 = 0xEB00000000646574;
      v22 = 0x6164696C61766E69;
    }

    else
    {
      if (v20 == enum case for GroupSession.State.waiting<A>(_:))
      {
        v21 = 0xE700000000000000;
        v23 = 0x676E6974696177;
        goto LABEL_10;
      }

      if (v20 == enum case for GroupSession.State.joined<A>(_:))
      {
        v21 = 0xE600000000000000;
        v23 = 0x64656E696F6ALL;
        goto LABEL_10;
      }

      v21 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
    }

    v28 = v22;
    (*(v5 + 8))(v7, v4);
    v23 = v28;
LABEL_10:
    (*(v5 + 8))(v10, v4);
    v24 = sub_1000105AC(v23, v21, &v35);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v31, "Session state changed: %{public}s", v19, 0xCu);
    sub_10000959C(v29);

    (*(v12 + 8))(v14, v30);
    goto LABEL_11;
  }

  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v14, v11);
LABEL_11:
  v25 = v33;
  v32(v33, v34, v4);
  (*(v5 + 56))(v25, 0, 1, v4);
  PassthroughSubject.send(_:)();
  return sub_1000095E8(v25, &qword_10119A9B0);
}

uint64_t sub_100646E74(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100646E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100645A58(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100646F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101188920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100646FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100647014(uint64_t a1)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100647070(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006470B8()
{
  result = qword_101192200;
  if (!qword_101192200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101192200);
  }

  return result;
}

uint64_t sub_10064710C(void *a1)
{
  sub_10010FC20(&qword_10119A9C8);

  return sub_100645650(a1);
}

void *sub_100647198(unsigned __int8 a1, uint64_t a2)
{
  if (a1 < 2u)
  {
    return &off_101099598;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = (a2 + 32);
  v2 = _swiftEmptyArrayStorage;
  do
  {
    v8 = *v4++;
    v7 = v8;
    if (v8 < 4 || v7 == 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10066C900(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10066C900((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6) = v7;
    }

    --v3;
  }

  while (v3);
  return v2;
}

id sub_100647294(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 - 4 < 2)
    {
      return 0;
    }

    if (a1 == 3)
    {
      v2 = MCDRadioMusicKitTableViewController;
    }

    else
    {
      v2 = MCDPlaylistsViewController;
    }
  }

  else
  {
    if (!a1)
    {
      v4 = type metadata accessor for CarPlayLibraryViewController();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource] = 0;
      v5[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded] = 0;
      v14.receiver = v5;
      v14.super_class = v4;
      v3 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
      v6 = String._bridgeToObjectiveC()();
      [v3 setPlayActivityFeatureName:v6];

      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v2 = MCDForYouTableViewController;
    }

    else
    {
      v2 = MCDBrowseTableViewController;
    }
  }

  v3 = [objc_allocWithZone(v2) init];
LABEL_13:
  v7 = v3;
  sub_100035AC8(a1);
  v8 = String._bridgeToObjectiveC()();

  [v7 setTitle:v8];

  v9 = [v7 tabBarItem];
  if (v9)
  {
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() _systemImageNamed:v11];

    [v10 setImage:v12];
  }

  return v3;
}

void sub_100647604(uint64_t a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC5Music15CarPlayObserver_playerState);
  *(v1 + OBJC_IVAR____TtC5Music15CarPlayObserver_playerState) = a1;
  if (v7 != a1)
  {
    v8 = [objc_opt_self() defaultCenter];
    String._bridgeToObjectiveC()();
    memset(v10, 0, sizeof(v10));
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v6, v3);
    [v8 postNotification:isa];
  }
}

id sub_10064782C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_1006478E0(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_100647950(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

id sub_1006479C0()
{
  result = [objc_allocWithZone(type metadata accessor for CarPlayObserver()) init];
  qword_101219150 = result;
  return result;
}

id sub_100647A50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v208 = sub_10010FC20(&qword_10119AA78);
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v206 = v139 - v4;
  v198 = sub_10010FC20(&qword_10119AA80);
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = v139 - v5;
  v201 = sub_10010FC20(&qword_10119AA88);
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = v139 - v6;
  v204 = sub_10010FC20(&qword_10119AA90);
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = v139 - v7;
  v195 = sub_10010FC20(&qword_10119AA98);
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v192 = v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v193 = v139 - v10;
  v184 = sub_10010FC20(&qword_10119AAA0);
  v182 = *(v184 - 8);
  __chkstk_darwin(v184);
  v180 = v139 - v11;
  v185 = sub_10010FC20(&qword_10119AAA8);
  v183 = *(v185 - 8);
  __chkstk_darwin(v185);
  v181 = v139 - v12;
  v188 = sub_10010FC20(&qword_10119AAB0);
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = v139 - v13;
  v191 = sub_10010FC20(&qword_10119AAB8);
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = v139 - v14;
  v178 = sub_10010FC20(&qword_10119AAC0);
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v175 = v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v176 = v139 - v17;
  v18 = sub_10010FC20(&qword_10119AAC8);
  v19 = *(v18 - 8);
  v213 = v18;
  v214 = v19;
  __chkstk_darwin(v18);
  v212 = v139 - v20;
  v167 = sub_10010FC20(&qword_10119AAD0);
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = v139 - v21;
  v170 = sub_10010FC20(&qword_10119AAD8);
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = v139 - v22;
  v173 = sub_10010FC20(&qword_10119AAE0);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = v139 - v23;
  v209 = sub_10010FC20(&qword_10119AAE8);
  v164 = *(v209 - 1);
  __chkstk_darwin(v209);
  v161 = v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v162 = v139 - v26;
  v152 = sub_10010FC20(&qword_10119AAF0);
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v148 = v139 - v27;
  v154 = sub_10010FC20(&qword_10119AAF8);
  v151 = *(v154 - 8);
  __chkstk_darwin(v154);
  v149 = v139 - v28;
  v157 = sub_10010FC20(&qword_10119AB00);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = v139 - v29;
  v160 = sub_10010FC20(&qword_10119AB08);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = v139 - v30;
  v31 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v31 - 8);
  v179 = v139 - v32;
  v33 = sub_10010FC20(&unk_101183D80);
  v34 = *(v33 - 8);
  v227 = v33;
  v228 = v34;
  __chkstk_darwin(v33);
  v174 = v139 - v35;
  v36 = sub_10010FC20(&qword_10119AB10);
  v220 = *(v36 - 8);
  v221 = v36;
  __chkstk_darwin(v36);
  v215 = v139 - v37;
  v38 = sub_10010FC20(&qword_10119AB18);
  v222 = *(v38 - 8);
  v223 = v38;
  __chkstk_darwin(v38);
  v219 = v139 - v39;
  v218 = sub_10010FC20(&qword_10119AB20);
  v141 = *(v218 - 1);
  __chkstk_darwin(v218);
  v140 = v139 - v40;
  v144 = sub_10010FC20(&qword_10119AB28);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = v139 - v41;
  v211 = sub_10010FC20(&qword_10119AB30);
  v225 = *(v211 - 8);
  __chkstk_darwin(v211);
  v224 = v139 - v42;
  v210 = sub_10010FC20(&qword_10119AB38);
  v43 = *(v210 - 8);
  __chkstk_darwin(v210);
  v45 = v139 - v44;
  v46 = sub_10010FC20(&qword_10119AB40);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = v139 - v48;
  v50 = sub_10010FC20(&qword_10119AB48);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = v139 - v52;
  *&v1[OBJC_IVAR____TtC5Music15CarPlayObserver_playerState] = 0;
  v54 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingSong;
  v229 = 0;
  v139[2] = sub_10010FC20(&qword_10119AA40);
  Published.init(initialValue:)();
  v55 = *(v51 + 32);
  v146 = v50;
  v55(&v1[v54], v53, v50);
  v56 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingPlaylist;
  v229 = 0;
  v145 = sub_10010FC20(&qword_10119AA50);
  Published.init(initialValue:)();
  v57 = *(v47 + 32);
  v147 = v46;
  v57(&v1[v56], v49, v46);
  v58 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingPlaylistEntry;
  v229 = 0;
  v153 = sub_10010FC20(&qword_10119AA60);
  Published.init(initialValue:)();
  (*(v43 + 32))(&v1[v58], v45, v210);
  v59 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingRadioStation;
  v229 = 0;
  v60 = sub_10010FC20(&qword_10119AA70);
  v61 = v224;
  v163 = v60;
  Published.init(initialValue:)();
  (*(v225 + 32))(&v1[v59], v61, v211);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v62 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC5Music15CarPlayObserver_subscriptions] = v62;
  v230.receiver = v1;
  v230.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v230, "init");
  v64 = qword_10117F5F8;
  v65 = v63;
  if (v64 != -1)
  {
    swift_once();
  }

  v216 = qword_101218AC8;
  v66 = (*qword_101218AC8 + 456);
  ObjectType = *v66;
  v217 = v66;
  v67 = v174;
  (ObjectType)();
  swift_getKeyPath();
  v225 = sub_100020674(&unk_1011A4650, &unk_101183D80);
  v68 = v215;
  v69 = v227;
  Publisher.map<A>(_:)();

  v70 = *(v228 + 8);
  v228 += 8;
  v224 = v70;
  (v70)(v67, v69);
  v229 = 0;
  type metadata accessor for MPCPlayerState(0);
  v139[1] = &protocol conformance descriptor for Publishers.MapKeyPath<A, B>;
  sub_100020674(&qword_10119AB50, &qword_10119AB10);
  v71 = v219;
  v72 = v221;
  Publisher.replaceNil<A>(with:)();
  (*(v220 + 1))(v68, v72);
  sub_100020674(&qword_10119AB58, &qword_10119AB18);
  sub_10064A9E0();
  v73 = v140;
  v74 = v223;
  Publisher<>.removeDuplicates()();
  (*(v222 + 8))(v71, v74);
  v215 = sub_100009F78(0, &qword_101182960);
  v75 = static OS_dispatch_queue.main.getter();
  v229 = v75;
  v222 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v76 = *(v222 - 8);
  v221 = *(v76 + 56);
  v223 = v76 + 56;
  v77 = v179;
  v221(v179, 1, 1, v222);
  v220 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100020674(&qword_10119AB68, &qword_10119AB20);
  v219 = sub_10001C070(&qword_101184920, &qword_101182960);
  v78 = v142;
  v79 = v218;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v77);

  (*(v141 + 8))(v73, v79);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v218 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_10119AB70, &qword_10119AB28);
  v80 = v144;
  Publisher<>.sink(receiveValue:)();

  (*(v143 + 8))(v78, v80);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (ObjectType)(v81);
  swift_getKeyPath();
  v82 = v148;
  v83 = v227;
  Publisher.map<A>(_:)();

  (v224)(v67, v83);
  sub_100020674(&qword_10119AB78, &qword_10119AAF0);
  v84 = v149;
  v85 = v152;
  Publisher.map<A>(_:)();
  (*(v150 + 8))(v82, v85);
  sub_100020674(&qword_10119AB80, &qword_10119AAF8);
  sub_10064AA40();
  v86 = v155;
  v87 = v154;
  Publisher<>.removeDuplicates()();
  (*(v151 + 8))(v84, v87);
  v88 = static OS_dispatch_queue.main.getter();
  v229 = v88;
  v221(v77, 1, 1, v222);
  sub_100020674(&qword_10119AB98, &qword_10119AB00);
  v89 = v158;
  v90 = v157;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v77);

  (*(v156 + 8))(v86, v90);
  swift_beginAccess();
  v91 = v162;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119ABA0, &qword_10119AB08);
  v92 = v160;
  Publisher<>.assign(to:)();
  (*(v159 + 8))(v89, v92);
  v93 = v164;
  v94 = v209;
  (*(v164 + 16))(v161, v91, v209);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  v95 = (*(v93 + 8))(v91, v94);
  (ObjectType)(v95);
  v164 = sub_100009F78(0, &qword_10119ABA8);
  v96 = v212;
  v97 = v227;
  Publisher.compactMap<A>(_:)();
  (v224)(v67, v97);
  v98 = v165;
  v99 = v213;
  Publishers.CompactMap.map<A>(_:)();
  v100 = *(v214 + 8);
  v214 += 8;
  v162 = v100;
  (v100)(v96, v99);
  v209 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_100020674(&qword_10119ABB0, &qword_10119AAD0);
  sub_10064AAF0();
  v101 = v168;
  v102 = v167;
  Publisher<>.removeDuplicates()();
  (*(v166 + 8))(v98, v102);
  v103 = static OS_dispatch_queue.main.getter();
  v229 = v103;
  v221(v77, 1, 1, v222);
  sub_100020674(&qword_10119ABC8, &qword_10119AAD8);
  v104 = v171;
  v105 = v170;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v77);

  (*(v169 + 8))(v101, v105);
  swift_beginAccess();
  v106 = v176;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119ABD0, &qword_10119AAE0);
  v107 = v173;
  Publisher<>.assign(to:)();
  (*(v172 + 8))(v104, v107);
  v108 = v177;
  v109 = v178;
  (*(v177 + 16))(v175, v106, v178);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  v110 = (*(v108 + 8))(v106, v109);
  (ObjectType)(v110);
  sub_100009F78(0, &qword_10118A258);
  v111 = v180;
  v112 = v227;
  Publisher.compactMap<A>(_:)();
  (v224)(v67, v112);
  v113 = v181;
  v114 = v184;
  Publishers.CompactMap.map<A>(_:)();
  (*(v182 + 8))(v111, v114);
  sub_100020674(&qword_10119ABD8, &qword_10119AAA8);
  sub_10064ABA0();
  v115 = v186;
  v116 = v185;
  Publisher<>.removeDuplicates()();
  (*(v183 + 8))(v113, v116);
  v117 = static OS_dispatch_queue.main.getter();
  v229 = v117;
  v221(v77, 1, 1, v222);
  sub_100020674(&qword_10119ABF0, &qword_10119AAB0);
  v118 = v189;
  v119 = v188;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v77);

  (*(v187 + 8))(v115, v119);
  swift_beginAccess();
  v120 = v193;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119ABF8, &qword_10119AAB8);
  v121 = v191;
  Publisher<>.assign(to:)();
  (*(v190 + 8))(v118, v121);
  v122 = v194;
  v123 = v195;
  (*(v194 + 16))(v192, v120, v195);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  v124 = (*(v122 + 8))(v120, v123);
  (ObjectType)(v124);
  v125 = v212;
  v126 = v227;
  Publisher.compactMap<A>(_:)();
  (v224)(v67, v126);
  v127 = v196;
  v128 = v213;
  Publishers.CompactMap.map<A>(_:)();
  (v162)(v125, v128);
  sub_100020674(&qword_10119AC00, &qword_10119AA80);
  sub_10064AC50();
  v129 = v199;
  v130 = v198;
  Publisher<>.removeDuplicates()();
  (*(v197 + 8))(v127, v130);
  v131 = static OS_dispatch_queue.main.getter();
  v229 = v131;
  v221(v77, 1, 1, v222);
  sub_100020674(&qword_10119AC20, &qword_10119AA88);
  v132 = v202;
  v133 = v201;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v77);

  (*(v200 + 8))(v129, v133);
  swift_beginAccess();
  v134 = v206;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119AC28, &qword_10119AA90);
  v135 = v204;
  Publisher<>.assign(to:)();
  (*(v203 + 8))(v132, v135);
  v136 = v207;
  v137 = v208;
  (*(v207 + 16))(v205, v134, v208);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();

  (*(v136 + 8))(v134, v137);
  return v65;
}

void sub_100649DE0(uint64_t *a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *&Strong[OBJC_IVAR____TtC5Music15CarPlayObserver_playerState];
    *&Strong[OBJC_IVAR____TtC5Music15CarPlayObserver_playerState] = v6;
    if (v6 != v8)
    {
      v9 = Strong;
      v10 = [objc_opt_self() defaultCenter];
      String._bridgeToObjectiveC()();
      memset(v12, 0, sizeof(v12));
      Notification.init(name:object:userInfo:)();
      isa = Notification._bridgeToObjectiveC()().super.isa;
      (*(v3 + 8))(v5, v2);
      [v10 postNotification:isa];

      Strong = v9;
    }
  }
}

void sub_100649F74(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 tracklist];
  v4 = [v3 playingItem];

  if (v4)
  {
    v5 = [v4 metadataObject];

    if (v5)
    {
      v4 = [v5 innermostModelObject];
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

id sub_10064A028@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v4 = result;
  if (result && (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    *a2 = result;

    return v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_10064A0A4(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = [v12 playingItemIndexPath];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v11, v7, v4);
  v15 = [v12 items];
  v16 = [v15 sectionAtIndex:IndexPath.section.getter()];

  v17 = [v16 metadataObject];
  if (!v17)
  {
    (*(v5 + 8))(v11, v4);
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  if ([v17 type] != 4)
  {
    (*(v5 + 8))(v11, v4);

    goto LABEL_7;
  }

  v18 = [v17 playlist];

  (*(v5 + 8))(v11, v4);
LABEL_8:
  *a2 = v18;
}

void sub_10064A2C8(id *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = [v3 tracklist];
    v5 = [v4 playingItem];
    v6 = [v5 metadataObject];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

id sub_10064A370@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 type] == 5)
  {
    result = [v3 playlistEntry];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

id sub_10064A3D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result tracklist];
  }

  *a2 = result;
  return result;
}

void sub_10064A410(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = [v12 playingItemIndexPath];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v11, v7, v4);
  v15 = [v12 items];
  v16 = [v15 sectionAtIndex:IndexPath.section.getter()];

  v17 = [v16 metadataObject];
  if (!v17)
  {
    (*(v5 + 8))(v11, v4);
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  if ([v17 type] != 13)
  {
    (*(v5 + 8))(v11, v4);

    goto LABEL_7;
  }

  v18 = [v17 radioStation];

  (*(v5 + 8))(v11, v4);
LABEL_8:
  *a2 = v18;
}

uint64_t type metadata accessor for CarPlayObserver()
{
  result = qword_10119AA28;
  if (!qword_10119AA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064A818()
{
  sub_1000054CC(319, &qword_10119AA38, &qword_10119AA40);
  if (v0 <= 0x3F)
  {
    sub_1000054CC(319, &qword_10119AA48, &qword_10119AA50);
    if (v1 <= 0x3F)
    {
      sub_1000054CC(319, &qword_10119AA58, &qword_10119AA60);
      if (v2 <= 0x3F)
      {
        sub_1000054CC(319, &qword_10119AA68, &qword_10119AA70);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_10064A9E0()
{
  result = qword_10119AB60;
  if (!qword_10119AB60)
  {
    type metadata accessor for MPCPlayerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119AB60);
  }

  return result;
}

unint64_t sub_10064AA40()
{
  result = qword_10119AB88;
  if (!qword_10119AB88)
  {
    sub_1001109D0(&qword_10119AA40);
    sub_10001C070(&qword_10119AB90, &qword_101183A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119AB88);
  }

  return result;
}

unint64_t sub_10064AAF0()
{
  result = qword_10119ABB8;
  if (!qword_10119ABB8)
  {
    sub_1001109D0(&qword_10119AA50);
    sub_10001C070(&qword_10119ABC0, &unk_10118A270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119ABB8);
  }

  return result;
}

unint64_t sub_10064ABA0()
{
  result = qword_10119ABE0;
  if (!qword_10119ABE0)
  {
    sub_1001109D0(&qword_10119AA60);
    sub_10001C070(&qword_10119ABE8, qword_101186D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119ABE0);
  }

  return result;
}

unint64_t sub_10064AC50()
{
  result = qword_10119AC08;
  if (!qword_10119AC08)
  {
    sub_1001109D0(&qword_10119AA70);
    sub_10001C070(&qword_10119AC10, &qword_10119AC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119AC08);
  }

  return result;
}

uint64_t static Logger.musicCarPlay(_:)()
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10064AD94(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &unk_101192950);
  v7 = sub_10064BF90(v5, a1);
  sub_1000095E8(v5, &unk_101192950);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v5, &unk_101192950);
    swift_beginAccess();
    sub_10006B010(v5, v1 + v6, &unk_101192950);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101192950);
}

uint64_t sub_10064AFC0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_1000089F8(v9 + v7, a3, a2);
}

uint64_t sub_10064B0A0(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &unk_101188920);
  v7 = sub_10064C2B0(v5, a1);
  sub_1000095E8(v5, &unk_101188920);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v5, &unk_101188920);
    swift_beginAccess();
    sub_10006B010(v5, v1 + v6, &unk_101188920);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101188920);
}

double sub_10064B308(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void *sub_10064B3D0(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10064B4EC()
{
  swift_getKeyPath();
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);

  return v1;
}

uint64_t sub_10064B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_10064B5F0()
{
  swift_getKeyPath();
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  sub_100030444(v1);
  return v1;
}

uint64_t sub_10064B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  v4 = *(a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  *v3 = a2;
  v3[1] = a3;
  sub_100030444(a2);
  return sub_100020438(v4);
}

uint64_t sub_10064B708(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v2 - 8);
  v4 = &v31[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31[-1] - v6;
  v8 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v8 - 8);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31[-1] - v12;
  sub_1000089F8(a1, v31, &unk_101192850);
  v14 = v32;
  if (v32)
  {
    v15 = v33;
    sub_10000954C(v31, v32);
    (*(*(v15 + 8) + 8))(v14);
    sub_10000959C(v31);
  }

  else
  {
    sub_1000095E8(v31, &unk_101192850);
    v16 = type metadata accessor for VideoArtwork();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  sub_10064AD94(v13);
  sub_1000089F8(a1, v31, &unk_101192850);
  v17 = v32;
  if (v32)
  {
    v18 = v33;
    sub_10000954C(v31, v32);
    (*(*(v18 + 16) + 8))(v17);
    sub_10000959C(v31);
    v19 = type metadata accessor for Artwork();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v4, 1, v19) != 1)
    {
      (*(v20 + 32))(v7, v4, v19);
      (*(v20 + 56))(v7, 0, 1, v19);
      return sub_10064B0A0(v7);
    }
  }

  else
  {
    sub_1000095E8(v31, &unk_101192850);
    v21 = type metadata accessor for Artwork();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  }

  sub_1000089F8(a1, v31, &unk_101192850);
  v22 = v32;
  if (!v32)
  {
    v26 = &unk_101192850;
    v27 = v31;
    goto LABEL_12;
  }

  v23 = v33;
  sub_10000954C(v31, v32);
  (*(*(v23 + 8) + 8))(v22);
  v24 = type metadata accessor for VideoArtwork();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v10, 1, v24) == 1)
  {
    sub_10000959C(v31);
    v26 = &unk_101192950;
    v27 = v10;
LABEL_12:
    sub_1000095E8(v27, v26);
    v28 = type metadata accessor for Artwork();
    (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
    goto LABEL_14;
  }

  VideoArtwork.previewFrame.getter();
  (*(v25 + 8))(v10, v24);
  v28 = type metadata accessor for Artwork();
  (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
  sub_10000959C(v31);
LABEL_14:
  type metadata accessor for Artwork();
  if ((*(*(v28 - 8) + 48))(v4, 1, v28) != 1)
  {
    sub_1000095E8(v4, &unk_101188920);
  }

  return sub_10064B0A0(v7);
}

uint64_t sub_10064BC54()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork, &unk_101192950);
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork, &unk_101188920);

  sub_100020438(*(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged));
  v1 = OBJC_IVAR____TtCV5Music4Uber13Configuration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s13ConfigurationCMa_0()
{
  result = qword_10119AC90;
  if (!qword_10119AC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064BDAC()
{
  sub_10064BF0C(319, &qword_101182200, &type metadata accessor for VideoArtwork);
  if (v0 <= 0x3F)
  {
    sub_10064BF0C(319, &qword_1011A4570, &type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10064BF0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

double sub_10064BF60()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = result;
  return result;
}

double sub_10064BF78()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = result;
  return result;
}

uint64_t sub_10064BF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10010FC20(&unk_101189E40);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000089F8(a1, &v21 - v13, &unk_101192950);
  sub_1000089F8(a2, &v14[v15], &unk_101192950);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000089F8(v14, v10, &unk_101192950);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10064C638(&qword_101186E80, &type metadata accessor for VideoArtwork);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000095E8(v14, &unk_101192950);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v14, &unk_101189E40);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v14, &unk_101192950);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10064C2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10010FC20(&unk_101191420);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000089F8(a1, &v21 - v13, &unk_101188920);
  sub_1000089F8(a2, &v14[v15], &unk_101188920);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000089F8(v14, v10, &unk_101188920);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10064C638(&unk_10118D3D0, &type metadata accessor for Artwork);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000095E8(v14, &unk_101188920);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v14, &unk_101191420);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v14, &unk_101188920);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10064C638(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_10064C680()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10064C7C0()
{
  String.hash(into:)();
}

unint64_t sub_10064C8DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10064E7B4(*a1);
  *a2 = result;
  return result;
}

void sub_10064C90C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x736B636950706F74;
  v5 = 0xEB00000000736573;
  v6 = 0x61656C655277656ELL;
  v7 = 0xEE00756F59726F46;
  v8 = 0x736E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000100E3C9C0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000756FLL;
  v10 = 0x59726F466564616DLL;
  if (v2 != 1)
  {
    v10 = 0x726F4673646F6F6DLL;
    v9 = 0xEB00000000756F59;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10064CAB0()
{
  if (qword_10117FA50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for WidgetMusicRecommendation(0);
  v2 = sub_1000060E4(v1, qword_101219158);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v3 = v1[5];
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  v6 = (v2 + v3);
  v7 = v6[1];
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *v4 == *v6 && v5 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[6];
  v10 = (v0 + v9);
  v11 = *(v0 + v9 + 8);
  v12 = (v2 + v9);
  v13 = v12[1];
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = *v10 == *v12 && v11 == v13;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v15 = v1[7];
  v16 = *(v0 + v15);
  v17 = *(v2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v17 == 6 || (sub_1006B9B20(v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = v1[8];
  v19 = *(v0 + v18);
  v20 = *(v2 + v18);

  return sub_10047C594(v19, v20);
}

unint64_t sub_10064CC18()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0xD00000000000001ALL;
  v31 = 0x8000000100E52EB0;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v29, "fetchDate: ");
  BYTE5(v29._object) = 0;
  HIWORD(v29._object) = -5120;
  sub_10064E9A4(&qword_10118F100, &type metadata accessor for Date);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 2108450;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  String.append(_:)(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v29._countAndFlagsBits = 0x617A696C61636F6CLL;
  v29._object = 0xEF22203A6E6F6974;
  v7 = type metadata accessor for WidgetMusicRecommendation(0);
  v8 = (v0 + v7[5]);
  v9 = v8[1];
  v27 = *v8;
  v28 = v9;

  sub_10010FC20(&qword_1011815E0);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 2108450;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  String.append(_:)(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x8000000100E52ED0;
  if ((sub_10064CAB0() & 1) == 0)
  {
    if (qword_10117F570 != -1)
    {
      swift_once();
    }

    if (qword_101218A18)
    {
      sub_100311F3C();
    }
  }

  Date.addingTimeInterval(_:)();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  (*(v2 + 8))(v4, v1);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 2108450;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  String.append(_:)(v29);

  strcpy(&v29, "title: ");
  BYTE1(v29._object) = 0;
  WORD1(v29._object) = 0;
  HIDWORD(v29._object) = -402653184;
  v17 = (v0 + v7[6]);
  v18 = v17[1];
  v27 = *v17;
  v28 = v18;

  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2108450;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  String.append(_:)(v29);

  strcpy(&v29, "kind: ");
  v29._object = 0xE700000000000000;
  LOBYTE(v27) = *(v0 + v7[7]);
  sub_10010FC20(&qword_10119B140);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 2108450;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  String.append(_:)(v29);

  strcpy(&v29, "items: ");
  BYTE1(v29._object) = 0;
  WORD1(v29._object) = 0;
  HIDWORD(v29._object) = -402653184;
  type metadata accessor for WidgetMusicItem();
  v23._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 2108450;
  v24._object = 0xE300000000000000;
  String.append(_:)(v24);
  String.append(_:)(v29);

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return v30;
}

uint64_t sub_10064D110()
{
  v0 = type metadata accessor for WidgetMusicItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetMusicRecommendation(0);
  sub_100006080(v7, qword_101219158);
  v8 = sub_1000060E4(v7, qword_101219158);
  static Date.now.getter();
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 preferredLocalizations];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11[2])
  {
    v12 = v11[4];
    v25 = v11[5];
    v26 = v12;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (qword_10117FB18 != -1)
  {
    swift_once();
  }

  v13 = *algn_1012192B8;
  v24 = qword_1012192B0;
  v14 = qword_10117F6F0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1000060E4(v0, qword_101218C90);
  sub_10064E9EC(v15, v3, type metadata accessor for WidgetMusicItem);
  v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v16 + 16) = 8;
  v17 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  sub_10064E9EC(v3, v17, type metadata accessor for WidgetMusicItem);
  v18 = *(v1 + 72);
  sub_10064E9EC(v3, v17 + v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 2 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 3 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 4 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 5 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 6 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064EA54(v3, v17 - v18 + 8 * v18);
  result = (*(v27 + 32))(v8, v6, v28);
  v20 = (v8 + v7[5]);
  v21 = v25;
  *v20 = v26;
  v20[1] = v21;
  v22 = (v8 + v7[6]);
  *v22 = v24;
  v22[1] = v13;
  *(v8 + v7[7]) = 6;
  *(v8 + v7[8]) = v16;
  return result;
}

uint64_t sub_10064D4A4(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10119B0F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000954C(a1, a1[3]);
  sub_10064E5B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for Date();
  sub_10064E9A4(&qword_10118F0E8, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for WidgetMusicRecommendation(0);
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + *(v9 + 28));
    v13 = 3;
    sub_10064E60C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    sub_10010FC20(&qword_10119B110);
    sub_10064E8A8(&qword_10119B118, &qword_10118EEB8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10064D768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for Date();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10119B128);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WidgetMusicRecommendation(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000954C(a1, a1[3]);
  sub_10064E5B8();
  v28 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v12 = v24;
  v35 = 0;
  sub_10064E9A4(&qword_10118F0D8, &type metadata accessor for Date);
  v13 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v11, v13, v4);
  v34 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = &v11[v9[5]];
  *v15 = v14;
  v15[1] = v16;
  v33 = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v26;
  v19 = &v11[v9[6]];
  *v19 = v17;
  v19[1] = v20;
  v31 = 3;
  sub_10064E854();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11[v9[7]] = v32;
  sub_10010FC20(&qword_10119B110);
  v30 = 4;
  sub_10064E8A8(&qword_10119B138, &qword_10118EEB0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v28, v27);
  *&v11[v9[8]] = v29;
  sub_10064E9EC(v11, v23, type metadata accessor for WidgetMusicRecommendation);
  sub_10000959C(a1);
  return sub_10064E944(v11, type metadata accessor for WidgetMusicRecommendation);
}

uint64_t sub_10064DC4C()
{
  v1 = *v0;
  v2 = 0x7461446863746566;
  v3 = 0x656C746974;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617A696C61636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10064DCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10064EBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10064DD18(uint64_t a1)
{
  v2 = sub_10064E5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10064DD54(uint64_t a1)
{
  v2 = sub_10064E5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10064DDC8()
{
  type metadata accessor for RecommendationsWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10064DE08();
  qword_101219170 = result;
  return result;
}

id sub_10064DE08()
{
  v1 = v0;
  v2 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10050352C(0x6E656D6D6F636552, 0xEF736E6F69746164, (v0 + OBJC_IVAR____TtC5Music33RecommendationsWidgetDataProvider_cache));
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 processName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == 0x646957636973754DLL && v10 == 0xEC00000073746567)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return v1;
    }
  }

  if (qword_10117FA60 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_10119AEA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "running in widget process, disabling fallback cache", v16, 2u);
  }

  v17 = [objc_opt_self() defaultMediaLibrary];
  if ([v17 artworkDataSource])
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      [v18 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v20 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10064E12C()
{
  sub_10064E944(v0 + OBJC_IVAR____TtC5Music33RecommendationsWidgetDataProvider_cache, type metadata accessor for WidgetRecommendationDiskCache);

  return swift_deallocClassInstance();
}

uint64_t sub_10064E1CC()
{
  result = type metadata accessor for WidgetDiskCache();
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

uint64_t sub_10064E2A4()
{
  result = type metadata accessor for WidgetDiskCache();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10064E310()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10119AEA0);
  sub_1000060E4(v0, qword_10119AEA0);
  return static Logger.music(_:)();
}

void sub_10064E3CC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &qword_10118F6F0);
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10119B098);
      if (v2 <= 0x3F)
      {
        sub_10064E4A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10064E4A0()
{
  if (!qword_10119B0A0)
  {
    type metadata accessor for WidgetMusicItem();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10119B0A0);
    }
  }
}

unint64_t sub_10064E4FC()
{
  result = qword_10119B0E0;
  if (!qword_10119B0E0)
  {
    sub_1001109D0(&qword_10119B0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B0E0);
  }

  return result;
}

unint64_t sub_10064E564()
{
  result = qword_10119B0F0;
  if (!qword_10119B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B0F0);
  }

  return result;
}

unint64_t sub_10064E5B8()
{
  result = qword_10119B100;
  if (!qword_10119B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B100);
  }

  return result;
}

unint64_t sub_10064E60C()
{
  result = qword_10119B108;
  if (!qword_10119B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B108);
  }

  return result;
}

uint64_t sub_10064E660(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetMusicRecommendation(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_20:
  v21 = v4[7];
  v22 = *(a2 + v21);
  if (*(a1 + v21) == 6)
  {
    if (v22 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v22 == 6)
    {
      return 0;
    }

    v23 = v4;
    v24 = sub_1006B9B20(*(a1 + v21), v22);
    v4 = v23;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v4[8];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);

  return sub_10047C594(v26, v27);
}

unint64_t sub_10064E7B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BFC8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10064E800()
{
  result = qword_10119B120;
  if (!qword_10119B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B120);
  }

  return result;
}

unint64_t sub_10064E854()
{
  result = qword_10119B130;
  if (!qword_10119B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B130);
  }

  return result;
}

uint64_t sub_10064E8A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_10119B110);
    sub_10064E9A4(a2, type metadata accessor for WidgetMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10064E944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10064E9A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10064E9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064EA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10064EACC()
{
  result = qword_10119B148;
  if (!qword_10119B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B148);
  }

  return result;
}

unint64_t sub_10064EB24()
{
  result = qword_10119B150;
  if (!qword_10119B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B150);
  }

  return result;
}

unint64_t sub_10064EB7C()
{
  result = qword_10119B158;
  if (!qword_10119B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B158);
  }

  return result;
}

uint64_t sub_10064EBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10064ED84()
{
  _s14descr101092F61V11PreferencesCMa();
  swift_allocObject();
  result = sub_10064EE38();
  qword_101219178 = result;
  return result;
}

uint64_t sub_10064EDC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10064EE38()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO5Music14ClarityUIMusic11Preferences_selectedPlaylistsObserver;
  *(v0 + OBJC_IVAR____TtCO5Music14ClarityUIMusic11Preferences_selectedPlaylistsObserver) = 0;
  sub_10064F64C();
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 selectedPlaylists];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v5 + 16);
  if (v6)
  {
    sub_10066C9A0(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = v5 + 40;
    do
    {

      v9 = MusicItemID.init(rawValue:)();
      aBlock[0] = v7;
      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        v21 = v10;
        v22 = v9;
        sub_10066C9A0((v11 > 1), v12 + 1, 1);
        v10 = v21;
        v9 = v22;
        v7 = aBlock[0];
      }

      v7[2] = v12 + 1;
      v13 = &v7[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v14 = sub_100670388(v7);

  swift_beginAccess();
  aBlock[6] = v14;
  sub_10010FC20(&unk_10119B1B0);
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10064F794;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B86D8;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  v19 = [v18 observeUpdatesForSelector:"selectedPlaylists" handler:v17];

  _Block_release(v17);
  *(v1 + v2) = v19;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10064F0F4(void *a1)
{
  v1 = [a1 selectedPlaylists];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10066C9A0(0, v3, 0);
    v4 = v2 + 40;
    do
    {

      v5 = MusicItemID.init(rawValue:)();
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_10066C9A0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 16;
      --v3;
    }

    while (v3);
  }

  v12 = sub_100670388(_swiftEmptyArrayStorage);

  if (!*(v12 + 16))
  {
    if (qword_10117F1F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218608);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error: Playlist should not be empty", v16, 2u);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = sub_1001906F8(v19, v12);

    if (v17)
    {
    }
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_10064F404()
{
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic11Preferences__selectedPlaylists;
  v2 = sub_10010FC20(&qword_10119B2E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t _s14descr101092F61V11PreferencesCMa()
{
  result = qword_10119B198;
  if (!qword_10119B198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064F510()
{
  sub_10064F5A8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10064F5A8()
{
  if (!qword_10119B1A8)
  {
    sub_1001109D0(&unk_10119B1B0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10119B1A8);
    }
  }
}

uint64_t sub_10064F60C@<X0>(uint64_t *a1@<X8>)
{
  _s14descr101092F61V11PreferencesCMa();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10064F64C()
{
  result = qword_10119B2E0;
  if (!qword_10119B2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10119B2E0);
  }

  return result;
}

uint64_t sub_10064F698@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10064F718()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

char *sub_10064F79C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_sourceTracks] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dataSource;
  type metadata accessor for PickerDataSource();
  swift_allocObject();
  *&v4[v12] = sub_100650034();
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dataSource;
  sub_100651210(&qword_10119B4C0, type metadata accessor for PickerDataSource);
  v15 = v13;

  v29 = ObservedObject.init(wrappedValue:)();
  v30 = v16;
  v17 = objc_allocWithZone(sub_10010FC20(&qword_10119B4C8));
  v18 = _UIHostingView.init(rootView:)();
  [v15 addSubview:{v18, v29, v30}];

  v19 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
  v20 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler + 8];
  v21 = (*&v13[v14] + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
  v22 = *v21;
  *v21 = v19;
  v21[1] = v20;

  sub_100030444(v19);
  sub_100020438(v22);

  v23 = *&v13[v14];
  v24 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
  v25 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler + 8];

  sub_100030444(v24);

  v26 = (v23 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
  v27 = *(v23 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
  *v26 = v24;
  v26[1] = v25;
  sub_100020438(v27);

  return v15;
}

uint64_t sub_10064FB50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.setter();
  sub_10064FC50();
}

uint64_t sub_10064FBDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10064FC50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v6 & 1) == 0)
  {
    v2 = (v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    v3 = *(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    if (v3)
    {

      v3(v4);
      sub_100020438(v3);
      v5 = *v2;
    }

    else
    {
      v5 = 0;
    }

    *v2 = 0;
    v2[1] = 0;
    return sub_100020438(v5);
  }

  return result;
}

uint64_t sub_10064FD14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10064FD88()
{
  v1 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__sourceTracks;
  v2 = sub_10010FC20(&qword_10119B4B8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__isPresentingPicker;
  v4 = sub_10010FC20(&unk_101189E60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100020438(*(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler));
  sub_100020438(*(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PickerDataSource()
{
  result = qword_10119B380;
  if (!qword_10119B380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064FEF8()
{
  sub_10064FFD0();
  if (v0 <= 0x3F)
  {
    sub_100008E30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10064FFD0()
{
  if (!qword_10119B390)
  {
    sub_1001109D0(&qword_10119ED90);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10119B390);
    }
  }
}

uint64_t sub_100650034()
{
  v1 = sub_10010FC20(&unk_101189E60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-v3];
  v5 = sub_10010FC20(&qword_10119B4B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__sourceTracks;
  v15 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_10119ED90);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__isPresentingPicker;
  v14[7] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  v11 = (v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
  *v12 = 0;
  v12[1] = 0;
  return v0;
}

uint64_t sub_100650224@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PickerDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100650264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = sub_10010FC20(&qword_10119EEF0);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  type metadata accessor for PickerDataSource();
  sub_100651210(&qword_10119B4C0, type metadata accessor for PickerDataSource);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v14 = v16;
  v13[3] = v17;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 680))();
  MusicPicker.Reason.PlaybackSessionAttributes.init(isCollaborative:)();
  v8 = enum case for MusicPicker.Reason.playbackQueue(_:);
  v9 = type metadata accessor for MusicPicker.Reason();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  sub_10010FC20(&qword_101180F00);
  type metadata accessor for Track();
  sub_10011881C();
  sub_100651210(&qword_1011950F8, &type metadata accessor for Track);
  View.musicPicker<A>(isPresented:selection:reason:onCompletion:)();

  return sub_100651258(v7);
}

uint64_t sub_1006505E4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100650664()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10064FC50();
}

uint64_t sub_1006506DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10065075C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1006507D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10010FC20(&qword_10118A530);
  v3[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006508A8, v5, v4);
}

uint64_t sub_1006508A8()
{
  v1 = v0[3];

  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = v0[3];
    sub_100009F78(0, &qword_10118AB70);
    v0[2] = v3;
    v4 = type metadata accessor for Track();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

    sub_10010FC20(&qword_10119ED90);
    sub_100029908(&qword_101192820, &qword_10119ED90);
    v5 = MPCPlaybackIntent.init<A, B>(for:startingAt:)();
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v6 = (*(*qword_101218AC8 + 528))();
    if (v6)
    {
    }

    v7 = v0[4];
    MPCPlaybackIntent.isInGroupSession.setter();
    v8 = (v7 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
    v9 = *(v7 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
    if (v9)
    {

      v9(v5);

      sub_100020438(v9);
    }

    else
    {
    }

    v10 = v0[4];
    v11 = *v8;
    *v8 = 0;
    v8[1] = 0;
    sub_100020438(v11);
    v12 = (v10 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    v13 = *(v10 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    *v12 = 0;
    v12[1] = 0;
    sub_100020438(v13);
  }

  v14 = v0[1];

  return v14();
}

id sub_100650B10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v10);
  type metadata accessor for MusicPickerSheetContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_sourceTracks;
  *&v11[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_sourceTracks] = a2;

  v13 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dataSource;
  v14 = *&v11[v12];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v14;

  static Published.subscript.setter();
  v15 = v11;
  v47 = a1;
  result = [a1 view];
  if (result)
  {
    v17 = result;
    v18 = [result window];

    if (v18)
    {
      v19 = [v18 traitCollection];

      [v19 userInterfaceStyle];
    }

    UIView.traitOverrides.getter();
    UIMutableTraits.userInterfaceStyle.setter();
    UIView.traitOverrides.setter();

    v20 = &v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
    v21 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
    v22 = v46;
    *v20 = v46;
    *(v20 + 1) = a4;

    sub_100020438(v21);
    v23 = (*&v11[v13] + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
    v24 = *v23;
    *v23 = v22;
    v23[1] = a4;

    sub_100020438(v24);

    v25 = swift_allocObject();
    *(v25 + 2) = v15;
    *(v25 + 3) = v22;
    *(v25 + 4) = a4;
    v26 = &v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
    v27 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
    *v26 = sub_1006510F8;
    v26[1] = v25;
    v28 = v15;

    sub_100020438(v27);
    v29 = (*&v11[v13] + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    v30 = *v29;
    *v29 = sub_1006510F8;
    v29[1] = v25;

    sub_100020438(v30);

    result = [v47 view];
    if (result)
    {
      v31 = result;
      [result addSubview:v28];

      sub_100009F78(0, &qword_101182960);
      v32 = static OS_dispatch_queue.main.getter();
      v33 = swift_allocObject();
      *(v33 + 16) = v28;
      aBlock[4] = sub_100651134;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010B8750;
      v34 = _Block_copy(aBlock);
      v35 = v28;
      v36 = v40;
      static DispatchQoS.unspecified.getter();
      v48 = _swiftEmptyArrayStorage;
      sub_100651210(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970);
      sub_100029908(&qword_101183F70, &qword_101182970);
      v37 = v42;
      v38 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);

      (*(v44 + 8))(v37, v38);
      (*(v41 + 8))(v36, v43);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006510F8()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  return v1(0);
}

uint64_t sub_100651168(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1006507D8(a1, v5, v4);
}

uint64_t sub_100651210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100651258(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119EEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100651328()
{
  type metadata accessor for MusicLibrary();
  if (v0 <= 0x3F)
  {
    _s10TVEpisodesV5ScopeOMa(319);
    if (v1 <= 0x3F)
    {
      sub_100651448(319, &qword_10119B538);
      if (v2 <= 0x3F)
      {
        sub_10018D5F0();
        if (v3 <= 0x3F)
        {
          sub_100651448(319, &unk_10119B540);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100651448(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100651494()
{
  result = type metadata accessor for TVShow();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TVSeason();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100651508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryTVEpisodeFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100651550@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v2);
  v17[5] = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v17[9] = v17 - v5;
  v6 = type metadata accessor for TVEpisode();
  v17[8] = *(v6 - 8);
  __chkstk_darwin(v6);
  v7 = sub_10010FC20(&qword_10118D050);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v17[4] = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  type metadata accessor for TVSeason();
  sub_100652F50(&qword_10119B650, &type metadata accessor for TVSeason);
  sub_100652F50(&qword_101181C70, &type metadata accessor for TVEpisode);
  v17[7] = v6;
  MusicLibrarySectionedRequest.init()();
  sub_100652474();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v17[6] = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(*(v1 + *(v2 + 32)));
  swift_getKeyPath();
  v23[0] = TVEpisode.id.getter();
  v23[1] = v13;
  MusicLibrarySectionedRequest.filterItems<A>(matching:equalTo:)();

  v23[3] = v7;
  v23[4] = sub_1006536B0();
  v14 = sub_10001C8B8(v23);
  v18 = v8;
  (*(v8 + 16))(v14, v12, v7);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v15 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v15 - 8) + 56))(v19, 0, 1, v15);
  return (*(v18 + 8))(v12, v7);
}

uint64_t sub_100651C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_10010FC20(&qword_10118D050);
  __chkstk_darwin(v5);
  v29 = v27 - v6;
  v7 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v7);
  v27[7] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v33 = v27 - v10;
  __chkstk_darwin(v11);
  v32 = v27 - v12;
  v28 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v28);
  v27[6] = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v31 = v27 - v15;
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  v38[3] = v5;
  v38[4] = sub_1006536B0();
  sub_10001C8B8(v38);
  v19 = type metadata accessor for TVSeason();
  v20 = type metadata accessor for TVEpisode();
  v21 = sub_100652F50(&qword_10119B650, &type metadata accessor for TVSeason);
  v22 = sub_100652F50(&qword_101181C70, &type metadata accessor for TVEpisode);
  v27[5] = v19;
  v27[4] = v21;
  v27[3] = v22;
  MusicLibrarySectionedRequest.init()();
  sub_100652474();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v30 = v7;
  MusicLibrarySectionedRequest.filterItems(text:)(*(v3 + *(v7 + 32)));
  sub_1006537DC(a1, v18);
  v23 = *(v20 - 8);
  if ((*(v23 + 48))(v18, 1, v20) == 1)
  {
    sub_1000095E8(v18, &unk_1011996D0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  else
  {
    *(&v36 + 1) = v20;
    v37 = sub_100652F50(&qword_101199720, &type metadata accessor for TVEpisode);
    v24 = sub_10001C8B8(&v35);
    (*(v23 + 32))(v24, v18, v20);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v25 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v25 - 8) + 56))(v34, 0, 1, v25);
}

uint64_t sub_100652474()
{
  v1 = type metadata accessor for TVSeason();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVShow();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10TVEpisodesVMa(0);
  sub_100653714(v0 + *(v12 + 24), v11, _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v11, v1);
    swift_getKeyPath();
    sub_10010FC20(&qword_10118D050);
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    swift_getKeyPath();
    sub_10010FC20(&qword_10118D050);
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100652728()
{
  v1 = type metadata accessor for TVSeason();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVShow();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100653714(v0, v11, _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v11, v1);
    Hasher._combine(_:)(1uLL);
    sub_100652F50(&qword_10119B738, &type metadata accessor for TVSeason);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(0);
    sub_100652F50(&qword_10119B740, &type metadata accessor for TVShow);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_100652A74(uint64_t a1)
{
  v2 = v1;
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_100652F50(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v4 = _s10TVEpisodesVMa(0);
  sub_100652728();
  Hasher._combine(_:)(v1[v4[7]]);
  String.hash(into:)();
  v5 = v1[v4[9] + 1];
  String.hash(into:)();

  Hasher._combine(_:)(v5);
  String.hash(into:)();
  sub_10010B570(a1, *&v2[v4[11]]);
  sub_10010B100(a1, *&v2[v4[12]]);
  String.hash(into:)();
  sub_10010B4B0(a1, *&v2[v4[14]]);
}

void sub_100652D0C(uint64_t a1)
{
  type metadata accessor for TVSeason();
  type metadata accessor for TVEpisode();
  sub_100652F50(&qword_10119B650, &type metadata accessor for TVSeason);
  sub_100652F50(&qword_101181C70, &type metadata accessor for TVEpisode);
  MusicLibrarySectionedRequest.init()();
  sub_100652474();

  sub_10010FC20(&qword_10118D050);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*(v1 + *(a1 + 32)));
}

Swift::Int sub_100652E5C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100652EC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100652F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100653028(uint64_t a1)
{
  result = sub_100652F50(&qword_10119B730, _s10TVEpisodesVMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100653080(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

uint64_t sub_1006530D0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for TVSeason();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVShow();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10TVEpisodesV5ScopeOMa(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = sub_10010FC20(&qword_10119B748);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = *(v16 + 56);
  sub_100653714(v28, &v26 - v17, _s10TVEpisodesV5ScopeOMa);
  sub_100653714(v29, &v18[v19], _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100653714(v18, v12, _s10TVEpisodesV5ScopeOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v26;
      v20 = v27;
      (*(v26 + 32))(v4, &v18[v19], v27);
      v22 = static TVSeason.== infix(_:_:)();
      v23 = *(v21 + 8);
      v23(v4, v20);
      v23(v12, v20);
LABEL_9:
      sub_10065377C(v18, _s10TVEpisodesV5ScopeOMa);
      return v22 & 1;
    }

    (*(v26 + 8))(v12, v27);
  }

  else
  {
    sub_100653714(v18, v14, _s10TVEpisodesV5ScopeOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v22 = static TVShow.== infix(_:_:)();
      v24 = *(v6 + 8);
      v24(v8, v5);
      v24(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_1000095E8(v18, &qword_10119B748);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1006534A4(char *a1, char *a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v11 = _s10TVEpisodesVMa(0);
  if ((sub_1006530D0(&a1[v11[6]], &a2[v11[6]]) & 1) == 0 || a1[v11[7]] != a2[v11[7]])
  {
    return 0;
  }

  v13 = v11[8];
  v14 = *&a1[v13];
  v15 = *&a1[v13 + 8];
  v16 = &a2[v13];
  if ((v14 != *v16 || v15 != *(v16 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = v11[9];
  v18 = &a1[v17];
  v19 = a1[v17 + 1];
  v20 = &a2[v17];
  v21 = v20[1];
  if (sub_1006B8B0C(*v18, *v20) & 1) == 0 || ((v19 ^ v21))
  {
    return 0;
  }

  v22 = v11[10];
  v23 = *&a1[v22];
  v24 = *&a1[v22 + 8];
  v25 = &a2[v22];
  if ((v23 != *v25 || v24 != *(v25 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10047B908(*&a1[v11[11]], *&a2[v11[11]]) & 1) == 0 || (sub_10018FCA0(*&a1[v11[12]], *&a2[v11[12]]) & 1) == 0)
  {
    return 0;
  }

  v26 = v11[13];
  v27 = *&a1[v26];
  v28 = *&a1[v26 + 8];
  v29 = &a2[v26];
  if ((v27 != *v29 || v28 != *(v29 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v30 = v11[14];
  v31 = *&a1[v30];
  v32 = *&a2[v30];

  return sub_10047BC00(v31, v32);
}

unint64_t sub_1006536B0()
{
  result = qword_10119B750;
  if (!qword_10119B750)
  {
    sub_1001109D0(&qword_10118D050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B750);
  }

  return result;
}

uint64_t sub_100653714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065377C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006537DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011996D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100653878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100653970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100653A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_100653AD4@<X0>(_BYTE *a1@<X8>)
{
  sub_10028F250();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100653B94(uint64_t a1)
{
  v2 = type metadata accessor for RedactionReasons();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.redactionReasons.setter();
}

uint64_t sub_100653C5C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_10047BD40(v3, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100653CB4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_10010FC20(&qword_10119B798);
  __chkstk_darwin(v34);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_10010FC20(&qword_10119B7A0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10010FC20(&qword_10119B7A8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v37 = *v1;
  v38 = *(v1 + 16);
  v16 = v37;
  if (v38)
  {
    v17 = *(&v37 + 1);
    if (*(v1 + 40))
    {
      v18 = 0;
      v19 = *(v1 + 4);
      v32 = 0;
      v33 = v19;
    }

    else
    {
      v18 = *(v1 + 4);
      v32 = *(v1 + 3);

      v33 = v18;
    }

    v21 = swift_allocObject();
    v22 = v1[1];
    *(v21 + 16) = *v1;
    *(v21 + 32) = v22;
    *(v21 + 41) = *(v1 + 25);
    *(v21 + 64) = v16;
    *(v21 + 72) = v17;
    *(v3 + 4) = swift_getKeyPath();
    v3[40] = 0;
    *(v3 + 6) = swift_getKeyPath();
    v3[56] = 0;
    v23 = *(v34 + 48);
    *&v3[v23] = swift_getKeyPath();
    sub_10010FC20(&qword_10118E3F8);
    swift_storeEnumTagMultiPayload();
    *v3 = sub_100655BC0;
    *(v3 + 1) = v21;
    *(v3 + 2) = v32;
    *(v3 + 3) = v18;
    sub_10003D17C(v3, v6, &qword_10119B798);
    sub_1000089F8(v6, v9, &qword_10119B798);
    swift_storeEnumTagMultiPayload();
    sub_100655C18(&v37, v36);
    sub_100655C18(&v37, v36);
    sub_100020674(&qword_10119B7B0, &qword_10119B7A8);
    sub_100020674(&qword_10119B7B8, &qword_10119B798);

    _ConditionalContent<>.init(storage:)();
    v24 = v6;
    v25 = &qword_10119B798;
  }

  else
  {
    if (*(v1 + 40))
    {
      v33 = 0;
      v20 = 0;
    }

    else
    {
      v26 = *(v1 + 4);
      v33 = *(v1 + 3);

      v20 = v26;
    }

    v27 = swift_allocObject();
    v28 = v1[1];
    *(v27 + 16) = *v1;
    *(v27 + 32) = v28;
    *(v27 + 41) = *(v1 + 25);
    *(v27 + 64) = v16;
    *(v12 + 4) = swift_getKeyPath();
    v12[40] = 0;
    *(v12 + 6) = swift_getKeyPath();
    v12[56] = 0;
    v29 = *(v10 + 48);
    *&v12[v29] = swift_getKeyPath();
    sub_10010FC20(&qword_10118E3F8);
    swift_storeEnumTagMultiPayload();
    *v12 = sub_100655C50;
    *(v12 + 1) = v27;
    *(v12 + 2) = v33;
    *(v12 + 3) = v20;
    sub_10003D17C(v12, v15, &qword_10119B7A8);
    sub_1000089F8(v15, v9, &qword_10119B7A8);
    swift_storeEnumTagMultiPayload();
    sub_100655C18(&v37, v36);
    sub_100655C18(&v37, v36);
    sub_100020674(&qword_10119B7B0, &qword_10119B7A8);
    sub_100020674(&qword_10119B7B8, &qword_10119B798);

    _ConditionalContent<>.init(storage:)();
    v24 = v15;
    v25 = &qword_10119B7A8;
  }

  return sub_1000095E8(v24, v25);
}

uint64_t sub_1006541D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v63 = a1;
  v77 = type metadata accessor for Button();
  v100 = v77;
  v101 = type metadata accessor for BorderlessButtonStyle();
  v76 = v101;
  WitnessTable = swift_getWitnessTable();
  v102 = WitnessTable;
  v103 = sub_100656AC0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
  v73 = v103;
  swift_getOpaqueTypeMetadata2();
  v72 = type metadata accessor for _ConditionalContent();
  v5 = type metadata accessor for Group();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - v7;
  sub_1001109D0(&qword_1011879C8);
  v74 = v5;
  v9 = type metadata accessor for ModifiedContent();
  v64 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = &v59 - v10;
  type metadata accessor for AccessibilityAttachmentModifier();
  v69 = v9;
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = &v59 - v16;
  v17 = type metadata accessor for Optional();
  v68 = *(v17 - 8);
  __chkstk_darwin(v17);
  v66 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v67 = &v59 - v21;
  v22 = *v2;
  if (*v2)
  {
    v60 = v12;
    __chkstk_darwin(v2[1]);
    v71 = v4;
    *(&v59 - 6) = v3;
    *(&v59 - 5) = v4;
    *(&v59 - 4) = v2;
    *(&v59 - 3) = v22;
    v59 = v23;
    *(&v59 - 2) = v23;

    v100 = v77;
    v101 = v76;
    v61 = v17;
    v102 = WitnessTable;
    v103 = v73;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v71;
    v24 = swift_getWitnessTable();
    Group<A>.init(content:)();
    v100 = sub_100655490(v63);
    v82 = v24;
    v25 = v74;
    v26 = swift_getWitnessTable();
    v63 = v11;
    v27 = v62;
    View.foregroundStyle<A>(_:)();

    (*(v6 + 8))(v8, v25);
    v28 = AccessibilityIdentifier.containerDetailHeaderAttribution.unsafeMutableAddressor();
    v29 = *v28;
    v30 = v28[1];
    v32 = v28[2];
    v31 = v28[3];
    v33 = sub_100020674(&unk_101199EA0, &qword_1011879C8);
    v80 = v26;
    v81 = v33;

    v34 = v69;
    v35 = swift_getWitnessTable();
    v36 = v32;
    v4 = v71;
    View.accessibilityIdentifier(_:)(v29, v30, v36, v31, v34, v35);
    sub_100020438(v22);
    v17 = v61;

    v37 = v27;
    v38 = v63;
    (*(v64 + 8))(v37, v34);
    v39 = sub_100656AC0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    v78 = v35;
    v79 = v39;
    v40 = swift_getWitnessTable();
    v41 = v65;
    sub_100663950(v14, v38, v40);
    v42 = v60;
    v43 = *(v60 + 8);
    v43(v14, v38);
    sub_100663950(v41, v38, v40);
    v43(v41, v38);
    v44 = v66;
    (*(v42 + 32))(v66, v14, v38);
    (*(v42 + 56))(v44, 0, 1, v38);
  }

  else
  {
    v45 = v66;
    (*(v12 + 56))(v66, 1, 1, v11, v20);
    v100 = v77;
    v101 = v76;
    v102 = WitnessTable;
    v103 = v73;
    v98 = swift_getOpaqueTypeConformance2();
    v99 = v4;
    v97 = swift_getWitnessTable();
    v46 = swift_getWitnessTable();
    v47 = sub_100020674(&unk_101199EA0, &qword_1011879C8);
    v95 = v46;
    v96 = v47;
    v48 = swift_getWitnessTable();
    v49 = sub_100656AC0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    v93 = v48;
    v94 = v49;
    v44 = v45;
    swift_getWitnessTable();
  }

  v50 = v68;
  v51 = v67;
  (*(v68 + 16))(v67, v44, v17);
  v52 = *(v50 + 8);
  v52(v44, v17);
  v100 = v77;
  v101 = v76;
  v102 = WitnessTable;
  v103 = v73;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v4;
  v90 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v54 = sub_100020674(&unk_101199EA0, &qword_1011879C8);
  v88 = v53;
  v89 = v54;
  v55 = swift_getWitnessTable();
  v56 = sub_100656AC0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
  v86 = v55;
  v87 = v56;
  v85 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  sub_100663950(v51, v17, v57);
  return (v52)(v51, v17);
}

uint64_t sub_100654C9C@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a2;
  v61 = a3;
  v66 = a6;
  v9 = type metadata accessor for BorderlessButtonStyle();
  v59 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a5;
  v11 = type metadata accessor for Button();
  v57 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_100656AC0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
  v67 = v11;
  v68 = v15;
  v73 = v11;
  v74 = v9;
  v65 = v9;
  v69 = WitnessTable;
  v75 = WitnessTable;
  v76 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = &v54 - v20;
  v21 = *(a4 - 8);
  __chkstk_darwin(v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v54 - v26;
  v28 = a4;
  v29 = type metadata accessor for _ConditionalContent();
  v63 = *(v29 - 8);
  v64 = v29;
  v31 = __chkstk_darwin(v29);
  v62 = &v54 - v32;
  v33 = *(a1 + 16);
  if (v33)
  {
    __chkstk_darwin(v30);
    *(&v54 - 4) = v28;
    v54 = v28;
    v35 = v60;
    v34 = v61;
    *(&v54 - 3) = v70;
    *(&v54 - 2) = v35;
    *(&v54 - 1) = v34;
    sub_100030444(v33);

    Button.init(action:label:)();
    v36 = v55;
    BorderlessButtonStyle.init()();
    v38 = v67;
    v37 = v68;
    v39 = v65;
    v40 = v69;
    View.buttonStyle<A>(_:)();
    (*(v59 + 8))(v36, v39);
    (*(v57 + 8))(v13, v38);
    v73 = v38;
    v74 = v39;
    v75 = v40;
    v76 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v56;
    sub_100663950(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v43 = *(v58 + 8);
    v43(v18, OpaqueTypeMetadata2);
    sub_100663950(v42, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v44 = v62;
    sub_100653878(v18, OpaqueTypeMetadata2);
    sub_100020438(v33);
    v43(v18, OpaqueTypeMetadata2);
    v43(v42, OpaqueTypeMetadata2);
  }

  else
  {
    v60(v31);
    v45 = v28;
    v46 = v28;
    v47 = v70;
    sub_100663950(v24, v46, v70);
    v48 = *(v21 + 8);
    v48(v24, v45);
    sub_100663950(v27, v45, v47);
    v49 = v65;
    v73 = v67;
    v74 = v65;
    v75 = v69;
    v76 = v68;
    swift_getOpaqueTypeConformance2();
    v44 = v62;
    sub_100653970(v24, OpaqueTypeMetadata2, v45);
    v48(v24, v45);
    v50 = v27;
    v39 = v49;
    v48(v50, v45);
  }

  v73 = v67;
  v74 = v39;
  v75 = v69;
  v76 = v68;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v70;
  v51 = v64;
  v52 = swift_getWitnessTable();
  sub_100663950(v44, v51, v52);
  return (*(v63 + 8))(v44, v51);
}

uint64_t sub_10065535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v15 - v11;
  v10();
  sub_100663950(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  sub_100663950(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t sub_100655490(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RedactionReasons();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v22[-v13];
  sub_100655800(a1, &v22[-v13]);
  static RedactionReasons.placeholder.getter();
  sub_100656AC0(&qword_10119B8F0, &type metadata accessor for RedactionReasons);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  v15(v14, v8);
  if ((a1 & 1) == 0)
  {
    v16 = *(v2 + 32);
    if (*(v2 + 40) != 1)
    {

      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000D8F20(v16, 0);
      (*(v5 + 8))(v7, v4);
      LOBYTE(v16) = v22[15];
    }

    if (v16 != 2 && (v16 & 1) != 0)
    {
      if (!*(v2 + 16))
      {
        return static Color.secondary.getter();
      }

      return static Color.accentColor.getter();
    }

    v19 = *(v2 + 48);
    if (*(v2 + 56) == 1)
    {
      v20 = *(v2 + 48);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000D8F20(v19, 0);
      (*(v5 + 8))(v7, v4);
      v20 = v22[14];
    }

    if ((v20 & 0xFE) == 2)
    {
      if (!*(v2 + 16))
      {
        return static Color.secondary.getter();
      }

      return static Color.accentColor.getter();
    }
  }

  return static Color.primary.getter();
}

uint64_t sub_100655800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118E3F8);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_1000089F8(v2 + *(a1 + 48), &v15 - v10, &qword_10118E3F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for RedactionReasons();
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

uint64_t sub_100655A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 16))
  {
    KeyPath = swift_getKeyPath();

    sub_100656114(KeyPath, 0, a1);
    sub_1005F94A8();
  }

  else
  {
    PlaylistCurators.View.init(configuration:)(*v1, v5);

    PlaylistCurators.View.fontTextStyle.getter(a1);
    return sub_100656B14(v5, type metadata accessor for PlaylistCurators.View);
  }
}

unint64_t sub_100655B28(uint64_t a1)
{
  result = sub_100655B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100655B50()
{
  result = qword_10119B790;
  if (!qword_10119B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B790);
  }

  return result;
}

uint64_t sub_100655BC0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  KeyPath = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
}

uint64_t sub_100655C50@<X0>(void *a1@<X8>)
{
  PlaylistCurators.View.init(configuration:)(*(v1 + 64), a1);
}

uint64_t sub_100655C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v40 = a4;
  v6 = a3;
  v38 = a3;
  v10 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = _s11AttributionV4TextV5SpecsVMa();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = a2;
  v39 = a1;
  sub_100009838();
  v37 = a2;

  v17 = Text.init<A>(_:)();
  v35 = v19;
  v36 = v18;
  v21 = v20;
  sub_100655F2C(v6, v5 & 1, v16);
  v22 = type metadata accessor for Font.Design();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  static Font.system(_:design:weight:)();
  sub_1000095E8(v12, &qword_101188610);
  sub_100656B14(v16, _s11AttributionV4TextV5SpecsVMa);
  v23 = v36;
  v24 = Text.font(_:)();
  v33 = v25;
  v34 = v24;
  LOBYTE(v6) = v26;
  v32 = v27;
  sub_10011895C(v17, v23, v21 & 1);

  KeyPath = swift_getKeyPath();
  sub_100655F2C(v38, v40 & 1, v16);
  LOBYTE(a2) = v16[*(v14 + 32)];
  sub_100656B14(v16, _s11AttributionV4TextV5SpecsVMa);
  result = swift_getKeyPath();
  v30 = v33;
  *a5 = v34;
  *(a5 + 8) = v30;
  *(a5 + 16) = v6 & 1;
  *(a5 + 24) = v32;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 3;
  *(a5 + 48) = 0;
  *(a5 + 56) = result;
  *(a5 + 64) = a2;
  return result;
}

uint64_t sub_100655F2C@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(a1, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(a1) = v15[15];
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_10117FA78 != -1)
    {
      swift_once();
    }

    v11 = qword_10119B778;
  }

  else
  {
    if (qword_10117FA70 != -1)
    {
      swift_once();
    }

    v11 = qword_10119B760;
  }

  v12 = _s11AttributionV4TextV5SpecsVMa();
  v13 = sub_1000060E4(v12, v11);
  return sub_1006565FC(v13, a3);
}

uint64_t sub_100656114@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s11AttributionV4TextV5SpecsVMa();
  __chkstk_darwin(v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  if ((a2 & 1) == 0)
  {
    v17 = v14;

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(a1, 0);
    (*(v7 + 8))(v9, v6);
    v14 = v17;
    LOBYTE(a1) = v25[15];
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_10117FA78 != -1)
    {
      v23 = v14;
      swift_once();
      v14 = v23;
    }

    v19 = qword_10119B778;
  }

  else
  {
    if (qword_10117FA70 != -1)
    {
      v24 = v14;
      swift_once();
      v14 = v24;
    }

    v19 = qword_10119B760;
  }

  v20 = sub_1000060E4(v14, v19);
  sub_1006565FC(v20, v12);
  sub_100656660(v12, v16);
  v21 = type metadata accessor for Font.TextStyle();
  return (*(*(v21 - 8) + 32))(a3, v16, v21);
}

uint64_t _s11AttributionV4TextV5SpecsVMa()
{
  result = qword_10119B818;
  if (!qword_10119B818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100656414()
{
  v0 = _s11AttributionV4TextV5SpecsVMa();
  sub_100006080(v0, qword_10119B760);
  v1 = sub_1000060E4(v0, qword_10119B760);
  v2 = enum case for Font.TextStyle.title2(_:);
  v3 = type metadata accessor for Font.TextStyle();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  result = static Font.Weight.regular.getter();
  *(v1 + *(v0 + 20)) = v5;
  *(v1 + *(v0 + 24)) = 0;
  return result;
}

uint64_t sub_1006564C0()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s11AttributionV4TextV5SpecsVMa();
  sub_100006080(v4, qword_10119B778);
  v5 = sub_1000060E4(v4, qword_10119B778);
  (*(v1 + 104))(v3, enum case for Font.TextStyle.title3(_:), v0);
  static Font.Weight.regular.getter();
  v7 = v6;
  result = (*(v1 + 32))(v5, v3, v0);
  *(v5 + *(v4 + 20)) = v7;
  *(v5 + *(v4 + 24)) = 1;
  return result;
}

uint64_t sub_1006565FC(uint64_t a1, uint64_t a2)
{
  v4 = _s11AttributionV4TextV5SpecsVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100656660(uint64_t a1, uint64_t a2)
{
  v4 = _s11AttributionV4TextV5SpecsVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1006566FC()
{
  sub_100656874(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100656874(319, &qword_1011891F0, &unk_1011891F8, &unk_100EDB130, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100656874(319, &qword_10118E378, &qword_10118E380, &unk_100ECA620, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1003F6EA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100656874(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1006568D8()
{
  result = qword_10119B8D8;
  if (!qword_10119B8D8)
  {
    sub_1001109D0(&qword_10119B8E0);
    sub_100020674(&qword_10119B7B0, &qword_10119B7A8);
    sub_100020674(&qword_10119B7B8, &qword_10119B798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B8D8);
  }

  return result;
}

unint64_t sub_1006569D4(uint64_t a1)
{
  result = sub_1006569FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006569FC()
{
  result = qword_10119B8E8;
  if (!qword_10119B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B8E8);
  }

  return result;
}

uint64_t sub_100656AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100656B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100656B74()
{
  result = qword_10119B8F8;
  if (!qword_10119B8F8)
  {
    sub_1001109D0(&qword_10119B900);
    sub_10023BB90();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B8F8);
  }

  return result;
}

uint64_t sub_100656C2C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219180);
  sub_1000060E4(v0, qword_101219180);
  return static Logger.music(_:)();
}

uint64_t sub_100656C94()
{
  sub_10010FC20(&unk_101182D80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  *(v0 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v0 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  result = type metadata accessor for UITraitUserInterfaceStyle();
  *(v0 + 48) = result;
  *(v0 + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  qword_10119B908 = v0;
  return result;
}

Swift::Int sub_100656D10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 >> 7);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

void sub_100656D64()
{
  v1 = *v0;
  Hasher._combine(_:)(v1 >> 7);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int sub_100656DA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 >> 7);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100656DF4(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

void sub_100656E20()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  v7(3);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v47 = String.init(localized:table:bundle:locale:comment:)();
  v49 = v8;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v56 = v6;
  v57 = v3;
  v45 = String.init(localized:table:bundle:locale:comment:)();
  v48 = v9;
  v59 = v0;
  v10 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions);
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v46 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTransliterationEnabled;
  v15 = (v12 + 63) >> 6;
  v53 = "pronunciation.slash";
  v54 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTranslationEnabled;
  v51 = 0x8000000100E53300;
  v52 = "Show Translation";
  v44[1] = 0x8000000100E532A0;
  v55 = v10;

  v16 = 0;
  v50 = 0;
  v17 = 0;
  for (i = 0; v14; v50 = v30)
  {
LABEL_11:
    while (1)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = *(*(v55 + 48) + (v22 | (i << 6)));
      v16 |= v23;
      v24 = v23 & 1;
      if (v23 < 0)
      {
        break;
      }

      v58 = v17;
      *(v59 + v54) = v24;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      sub_100009F78(0, &qword_1011839A0);
      v19 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() imageNamed:v19];

      swift_allocObject();
      swift_unknownObjectWeakInit();

      v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      if (!v14)
      {
        goto LABEL_7;
      }
    }

    *(v59 + v46) = v24;
    v25 = (v23 & 1) == 0;
    v26 = v17;
    v27 = v47;
    if (!v25)
    {
      v27 = v45;
    }

    v58 = v27;

    v44[0] = sub_100009F78(0, &qword_1011839A0);
    v28 = String._bridgeToObjectiveC()();

    v29 = [objc_opt_self() imageNamed:v28];

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v17 = v26;
  }

LABEL_7:
  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      v31 = v59;
      if (v17)
      {
        v32 = v50;
        if (v50)
        {
          goto LABEL_19;
        }

LABEL_21:
        *(v31 + v46) = 0;
        sub_100009F78(0, &qword_1011839A0);
        v35 = String._bridgeToObjectiveC()();
        v36 = [objc_opt_self() imageNamed:v35];

        v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      }

      else
      {
        *(v59 + v54) = 0;
        sub_100009F78(0, &qword_1011839A0);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v33 = String._bridgeToObjectiveC()();
        v34 = [objc_opt_self() imageNamed:v33];

        v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v32 = v50;
        if (!v50)
        {
          goto LABEL_21;
        }

LABEL_19:
      }

      sub_100009F78(0, &unk_1011845F0);
      sub_10010FC20(&qword_101183990);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100EBC6D0;
      *(v37 + 32) = v32;
      *(v37 + 40) = v17;
      v38 = v17;
      v39 = v32;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v60.value.super.isa = 0;
      v60.is_nil = 0;
      v41.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, 0, v60, 0, 0xFFFFFFFFFFFFFFFFLL, v37, v43).super.super.isa;
      v42 = *(v31 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu);
      *(v31 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu) = v41;

      *(v31 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn) = v16 & 1;
      sub_1006582D0();

      return;
    }

    v14 = *(v11 + 8 * v21);
    ++i;
    if (v14)
    {
      i = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_10065775C()
{
  v1 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView);
  }

  else
  {
    v4 = sub_1006577BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1006577BC()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  v2 = UIView.forAutolayout.getter();
  v3 = v2;
  v4 = [v3 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  v5 = [v3 layer];
  [v5 setMasksToBounds:1];

  [v3 setUserInteractionEnabled:0];
  v6 = [v3 contentView];
  [v6 setUserInteractionEnabled:0];

  return v3;
}

char *sub_100657928()
{
  v1 = v0;
  swift_getObjectType();
  *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView] = 0;
  v2 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *&v1[v2] = v4;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn] = 0;
  v5 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock];
  *v8 = 0;
  v8[1] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTranslationEnabled] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTransliterationEnabled] = 0;
  v9 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  *v9 = sub_1006587CC([objc_allocWithZone(UITraitCollection) init]);
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  v63.receiver = v1;
  v63.super_class = type metadata accessor for NowPlayingLyricsTranslationButton();
  v13 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  v14 = v13;
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v15 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView;
  v16 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView];
  sub_100009F78(0, &qword_101183A00);
  v17 = v16;
  v18 = static UIFont.preferredFont(forTextStyle:weight:)();
  v19 = [objc_opt_self() configurationWithFont:v18];

  [v17 setSymbolConfiguration:v19];
  v20 = *&v14[v15];
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() _systemImageNamed:v21];

  [v20 setImage:v22];
  v23 = sub_10065775C();
  v24 = [v23 contentView];

  [v24 addSubview:*&v14[v15]];
  v25 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView;
  [v14 addSubview:*&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView]];
  [v14 setContextMenuInteractionEnabled:1];
  [v14 setShowsMenuAsPrimaryAction:1];
  v26 = UIAccessibilityTraitButton;
  v27 = [v14 accessibilityTraits];
  if ((v26 & ~v27) != 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  [v14 setAccessibilityTraits:v28 | v27];

  v29 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBEE70;
  v31 = [*&v14[v15] centerYAnchor];
  v32 = [*&v14[v25] contentView];
  v33 = [v32 centerYAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v30 + 32) = v34;
  v35 = [*&v14[v15] centerXAnchor];
  v36 = [*&v14[v25] contentView];
  v37 = [v36 centerXAnchor];

  v38 = [v35 constraintEqualToAnchor:v37];
  *(v30 + 40) = v38;
  v39 = [*&v14[v25] topAnchor];
  v40 = [v14 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v30 + 48) = v41;
  v42 = [*&v14[v25] trailingAnchor];
  v43 = [v14 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v30 + 56) = v44;
  v45 = [*&v14[v25] bottomAnchor];
  v46 = [v14 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v30 + 64) = v47;
  v48 = [*&v14[v25] leadingAnchor];
  v49 = [v14 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v30 + 72) = v50;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  v52 = [v14 traitCollection];
  v53 = sub_1006587CC(v52);
  v54 = &v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v55 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v56 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 8];
  v58 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 16];
  v57 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 24];
  *v54 = v53;
  *(v54 + 1) = v59;
  *(v54 + 2) = v60;
  *(v54 + 3) = v61;

  if (qword_10117FA88 != -1)
  {
    swift_once();
  }

  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
  return v14;
}

void sub_1006581DC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, const char **a6, void *a7)
{
  v18.receiver = a1;
  v18.super_class = type metadata accessor for NowPlayingLyricsTranslationButton();
  v12 = *a6;
  v13 = a3;
  v14 = a4;
  v15 = v18.receiver;
  swift_unknownObjectRetain();
  objc_msgSendSuper2(&v18, v12, v13, v14, a5);
  v16 = *&v15[*a7];
  if (v16)
  {

    v16(v17);

    swift_unknownObjectRelease();
    sub_100020438(v16);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id sub_1006582D0()
{
  v1 = sub_10065775C();
  v2 = [v1 contentView];

  v3 = [v2 layer];
  v4 = [v0 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = kCAFilterPlusL;
  }

  [v3 setCompositingFilter:v6];

  swift_unknownObjectRelease();
  v7 = [*&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView] contentView];
  v8 = v7;
  v9 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn;
  v10 = 24;
  if (v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn])
  {
    v10 = 16;
  }

  [v7 setBackgroundColor:*&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + v10]];

  v11 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView];
  v12 = 8;
  if (v0[v9])
  {
    v12 = 0;
  }

  v13 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + v12];

  return [v11 setTintColor:v13];
}

id sub_100658480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingLyricsTranslationButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for NowPlayingLyricsTranslationButton.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for NowPlayingLyricsTranslationButton.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100658774()
{
  result = qword_10119B998;
  if (!qword_10119B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B998);
  }

  return result;
}

id sub_1006587CC(void *a1)
{
  v2 = [a1 accessibilityContrast];
  v3 = objc_opt_self();
  v4 = v3;
  if (v2 == 1)
  {
    v5 = [v3 whiteColor];
    v6 = [v4 tintColor];
    [v6 resolvedColorWithTraitCollection:a1];

    v7 = [v4 tintColor];
    [v7 resolvedColorWithTraitCollection:a1];

    v8 = [v4 tintColor];
    v9 = [v8 resolvedColorWithTraitCollection:a1];

    v10 = [v9 colorWithAlphaComponent:0.2];
  }

  else
  {
    v5 = [v3 blackColor];
    [v4 whiteColor];
    v11 = [v4 whiteColor];
    [v11 colorWithAlphaComponent:0.5];

    v9 = [v4 whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.18];
  }

  v12 = v10;

  return v5;
}

void sub_1006589BC(char *a1)
{
  v2 = sub_1006587CC([a1 traitCollection]);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v10 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v11 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 8];
  v12 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 16];
  v13 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 24];
  *v9 = v2;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v7;
  v17 = v2;
  v14 = v4;
  v15 = v6;
  v16 = v8;

  sub_1006582D0();
}

void sub_100658A90()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView) = 0;
  v2 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn) = 0;
  v5 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTranslationEnabled) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTransliterationEnabled) = 0;
  v9 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs);
  *v9 = sub_1006587CC([objc_allocWithZone(UITraitCollection) init]);
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100658BEC()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu);
  if (!v1)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_opt_self();
  v8[4] = NowPlaying.TrackMetadata.underlyingItem.getter;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100747EBC;
  v8[3] = &unk_1010B8BD0;
  v4 = _Block_copy(v8);
  v5 = v1;

  v6 = [v3 configurationWithIdentifier:0 previewProvider:0 actionProvider:v4];

  _Block_release(v4);
  [v6 setPreferredMenuElementOrder:2];

  return v6;
}

char *sub_100658D84(void *a1)
{
  result = [a1 state];
  if ((result - 3) >= 3)
  {
    if (result == 1)
    {
      *(v1 + 56) = 1;
      v4 = *(v1 + 24);
      if (v4)
      {
        return v4();
      }
    }
  }

  else
  {
    if (*(v1 + 56) == 1)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        result = v3();
      }
    }

    *(v1 + 56) = 0;
  }

  return result;
}

uint64_t sub_100658E60()
{
  sub_100020438(*(v0 + 24));
  sub_100020438(*(v0 + 40));

  return swift_deallocClassInstance();
}

id sub_100658F34()
{
  v1 = OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CatchAllPassiveGestureRecognizer.AlwaysSimultaneousGestureRecognizerDelegate()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100658FA4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate] = 0;
  sub_1000189C0(a1, v18);
  v5 = v19;
  if (v19)
  {
    v6 = sub_10000954C(v18, v19);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_10000959C(v18);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for CatchAllPassiveGestureRecognizer();
  v17.receiver = v2;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, "initWithTarget:action:", v11, a2);
  swift_unknownObjectRelease();
  v14 = v13;
  v15 = sub_100658F34();
  [v14 setDelegate:v15];

  [v14 setMinimumPressDuration:0.0];
  [v14 setCancelsTouchesInView:0];
  [v14 setDelaysTouchesBegan:0];
  [v14 setDelaysTouchesEnded:0];

  sub_100011DF0(a1);
  return v14;
}

id sub_100659234(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100659308(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  *a3 = result;
  return result;
}

void sub_100659390(double a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() blackColor];
  v6 = [v5 colorWithAlphaComponent:a1];

  *a3 = v6;
}

id sub_100659418(uint64_t a1, void *a2)
{
  result = [objc_opt_self() whiteColor];
  *a2 = result;
  return result;
}

void sub_100659484(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100009F78(0, &qword_101183A00);
  v4 = UIFontTextStyleBody;
  v5 = static UIFont.preferredFont(forTextStyle:weight:)();

  *a3 = v5;
}

id sub_100659504()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.4];
  qword_1012191E0 = result;
  return result;
}

id sub_100659544(char **a1)
{
  v101 = String._bridgeToObjectiveC()();
  v89 = String._bridgeToObjectiveC()();
  v106 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 defaultParagraphStyle];
  [v3 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v104 = sub_100009F78(0, &qword_101194D60);
  swift_dynamicCast();
  v4 = v113;
  [v113 setParagraphSpacing:6.0];
  [v113 setLineBreakStrategy:1];
  if (*(*&v1 + 96))
  {

    [v113 setAlignment:NSTextAlignment.init(languageCode:)()];
  }

  v88 = v1;
  v5 = [v2 defaultParagraphStyle];
  [v5 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v99 = v113;
  [v113 setAlignment:0];
  sub_10010FC20(&qword_10119FB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = NSForegroundColorAttributeName;
  v7 = qword_10117FA98;
  v102 = NSForegroundColorAttributeName;
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1012191A0;
  v9 = sub_100009F78(0, &qword_101180C98);
  *(inited + 40) = v8;
  v94 = v9;
  *(inited + 64) = v9;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 80) = v4;
  *(inited + 104) = v104;
  *(inited + 112) = NSFontAttributeName;
  v10 = qword_10117FAA0;
  v11 = NSParagraphStyleAttributeName;
  v12 = NSFontAttributeName;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = v14;
  v17 = v8;
  v96 = v4;
  if (v10 != -1)
  {
    swift_once();
  }

  v18 = qword_1012191A8;
  v97 = sub_100009F78(0, &qword_101183A00);
  *(inited + 144) = v97;
  *(inited + 120) = v18;
  v19 = v18;
  v20 = sub_10010BA14(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101180420);
  swift_arrayDestroy();
  v116 = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100EBE260;
  *(v21 + 32) = v102;
  if (qword_10117FAC0 != -1)
  {
    swift_once();
  }

  v22 = qword_1012191C8;
  *(v21 + 40) = qword_1012191C8;
  *(v21 + 64) = v94;
  *(v21 + 72) = v15;
  *(v21 + 80) = v99;
  *(v21 + 104) = v104;
  *(v21 + 112) = v16;
  v23 = qword_10117FAC8;
  v24 = v22;
  v25 = v99;
  if (v23 != -1)
  {
    swift_once();
  }

  v26 = qword_1012191D0;
  *(v21 + 144) = v97;
  *(v21 + 120) = v26;
  v27 = v26;
  v100 = sub_10010BA14(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_100EBE260;
  *(v28 + 32) = v102;
  *(v28 + 40) = v24;
  *(v28 + 64) = v94;
  *(v28 + 72) = v15;
  *(v28 + 80) = v25;
  *(v28 + 104) = v104;
  *(v28 + 112) = v16;
  v105 = v16;
  v29 = qword_10117FAD0;
  v95 = v25;
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_1012191D8;
  v31 = v97;
  *(v28 + 144) = v97;
  *(v28 + 120) = v30;
  v32 = v30;
  v91 = sub_10010BA14(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = &selRef__replacePlaceholderViewWithView_;
  v34 = [objc_allocWithZone(NSStringDrawingContext) init];
  v35 = &selRef_setContacts_;
  [v34 setWantsNumberOfLineFragments:1];
  type metadata accessor for Key(0);
  sub_10065AAEC();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = v34;
  v38 = &selRef_setContacts_;
  [v106 boundingRectWithSize:1 options:isa attributes:v37 context:{248.0, INFINITY}];
  v40 = v39;

  if ([v37 numberOfLineFragments] < 5)
  {
    goto LABEL_16;
  }

  if (qword_10117FAA8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v41 = qword_1012191B0;
    v109 = v31;
    *&aBlock = qword_1012191B0;
    sub_100016270(&aBlock, &v113);
    v42 = v41;
    v43 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112[0] = v43;
    sub_1006C702C(&v113, v105, isUniquelyReferenced_nonNull_native);
    v116 = v112[0];

    [v96 setParagraphSpacing:4.0];

    v45 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v106 v38[241]];
    v40 = v46;

LABEL_16:
    v93 = v37;

    v31 = &swift_retain_ptr;
    v47 = [objc_allocWithZone(NSStringDrawingContext) v33[321]];
    [v47 v35[240]];
    v37 = &selRef_setContacts_;
    [v47 setMaximumNumberOfLines:3];
    v48 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v101 v38[241]];
    v50 = v49;
    v52 = v51;

    v53 = [objc_allocWithZone(NSStringDrawingContext) v33[321]];
    [v53 v35[240]];
    v54 = [v47 numberOfLineFragments];
    if (__OFSUB__(4, v54))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (((4 - v54) & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  [v53 setMaximumNumberOfLines:?];
  v55 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v89 v38[241]];
  v105 = v56;
  rect = v57;

  v58 = *(*&v88 + 16);
  v59 = 0;
  if (v58 == 1)
  {
    v60 = 34.0;
  }

  else
  {
    v60 = 0.0;
  }

  v113 = *&v60;
  v114 = xmmword_100EDA600;
  v61 = 0;
  v62 = v60;
  v63 = 0x4071800000000000;
  v92 = CGRectGetMinX(*(&v59 - 1)) + 16.0;
  v117.origin.y = 0.0;
  v117.size.height = 0.0;
  v117.origin.x = v60;
  v117.size.width = 280.0;
  v88 = CGRectGetMinY(v117) + 12.0;
  v118.origin.y = 0.0;
  v118.size.height = 0.0;
  v118.origin.x = v60;
  v118.size.width = 280.0;
  v98 = v52;
  MinX = CGRectGetMinX(v118);
  v119.size.width = 248.0;
  v119.origin.x = v92;
  v119.origin.y = v88;
  v119.size.height = v40;
  v87 = v40;
  v65 = CGRectGetMaxY(v119) + 12.0;
  v120.origin.y = 0.0;
  v120.size.height = 0.0;
  v120.origin.x = v60;
  v120.size.width = 280.0;
  Width = CGRectGetWidth(v120);
  *v112 = MinX;
  *&v112[1] = v65;
  v80 = Width;
  *&v112[2] = Width;
  v121.origin.y = 0.0;
  v121.size.height = 0.0;
  v121.origin.x = v60;
  v121.size.width = 280.0;
  v86 = CGRectGetMinX(v121) + 16.0;
  v122.size.height = 0.0;
  v122.origin.x = MinX;
  v122.origin.y = v65;
  v122.size.width = Width;
  v85 = CGRectGetMinY(v122) + 16.0;
  v123.origin.x = v86;
  v123.origin.y = v85;
  v123.size.width = 52.0;
  v123.size.height = 52.0;
  v67 = CGRectGetMaxX(v123) + 12.0;
  v124.origin.x = v86;
  v124.origin.y = v85;
  v124.size.width = 52.0;
  v124.size.height = 52.0;
  v68 = CGRectGetMinY(v124) + -2.0;
  v125.origin.x = v67;
  v125.origin.y = v68;
  v125.size.width = v50;
  v125.size.height = v98;
  v83 = CGRectGetMinX(v125);
  v126.origin.x = v67;
  v126.origin.y = v68;
  v126.size.width = v50;
  v126.size.height = v98;
  MaxY = CGRectGetMaxY(v126);
  v127.origin.x = v67;
  v127.origin.y = v68;
  v127.size.width = v50;
  v127.size.height = v98;
  v81 = CGRectGetMinX(v127);
  v128.origin.x = v83;
  v128.origin.y = MaxY;
  *&v128.size.width = v105;
  v128.size.height = rect;
  v69 = CGRectGetMaxY(v128) + 3.0;
  v129.size.width = 46.0;
  v129.size.height = 11.0;
  v129.origin.x = v81;
  v129.origin.y = v69;
  v70 = CGRectGetMaxY(v129) + 16.0;
  v130.origin.y = 0.0;
  v130.size.height = 0.0;
  v130.origin.x = v60;
  v130.size.width = 280.0;
  v71 = v70 - CGRectGetMinY(v130);
  v115 = v71;
  v131.size.height = 0.0;
  v131.origin.x = MinX;
  v131.size.width = v80;
  v131.origin.y = v65;
  v72 = v71 - CGRectGetMaxY(v131);
  v132.origin.y = 0.0;
  v132.origin.x = v60;
  v132.size.width = 280.0;
  v132.size.height = v71;
  *&v112[3] = v72 + CGRectGetMinY(v132);
  v133.origin.y = 0.0;
  v133.origin.x = v60;
  v133.size.width = 280.0;
  v133.size.height = v71;
  v84 = v47;
  v73 = v53;
  v74 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{dbl_100EDA688[v58], CGRectGetMaxY(v133) + 16.0}];
  v75 = swift_allocObject();
  *(v75 + 16) = &v113;
  *(v75 + 24) = v112;
  *(v75 + 32) = v106;
  *(v75 + 40) = v92;
  *(v75 + 48) = v88;
  *(v75 + 56) = 0x406F000000000000;
  *(v75 + 64) = v87;
  *(v75 + 72) = &v116;
  *(v75 + 80) = v101;
  *(v75 + 88) = v67;
  *(v75 + 96) = v68;
  *(v75 + 104) = v50;
  *(v75 + 112) = v98;
  *(v75 + 120) = v100;
  *(v75 + 128) = v89;
  *(v75 + 136) = v83;
  *(v75 + 144) = MaxY;
  *(v75 + 152) = v105;
  *(v75 + 160) = rect;
  *(v75 + 168) = v91;
  *(v75 + 176) = v81;
  *(v75 + 184) = v69;
  *(v75 + 192) = xmmword_100EDA610;
  *(v75 + 208) = v86;
  *(v75 + 216) = v85;
  *(v75 + 224) = vdupq_n_s64(0x404A000000000000uLL);
  v33 = a1;
  *(v75 + 240) = a1;
  v31 = swift_allocObject();
  v31[2] = sub_10065AB44;
  v31[3] = v75;
  v110 = sub_1001EBE40;
  v111 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v108 = sub_10006BD7C;
  v109 = &unk_1010B8C98;
  v76 = _Block_copy(&aBlock);
  v35 = v106;
  v38 = v101;
  v37 = v89;
  v77 = a1;

  v78 = [v74 imageWithActions:v76];

  _Block_release(v76);
  LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

  if (v73)
  {
    goto LABEL_25;
  }

  return v78;
}

void sub_10065A234(CGRect *a1, double *a2, CGRect *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, uint64_t a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29, void *a30)
{
  v102 = a4;
  v103 = a7;
  v101 = a5;
  v43 = type metadata accessor for CGPathFillRule();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = objc_opt_self();
  v48 = [v47 _bezierPathWithPillRect:*a2 cornerRadius:{a2[1], a2[2], a2[3], 16.0}];
  if (!v48)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v49 = v48;
  v104 = a3;
  v105 = v46;
  v94 = a9;
  v95 = a10;
  v96 = a11;
  v97 = a12;
  v98 = a6;
  v99 = a8;
  v100 = v43;
  v91 = v47;
  v93 = a21;
  v50 = [(CGRect *)a1 CGContext];
  v51 = [v49 CGPath];
  CGContextAddPath(v50, v51);

  v52 = [(CGRect *)a1 CGContext];
  if (qword_10117FA90 != -1)
  {
    swift_once();
  }

  v53 = [qword_101219198 CGColor];
  CGContextSetFillColorWithColor(v52, v53);

  v54 = [(CGRect *)a1 CGContext];
  v55 = enum case for CGPathFillRule.winding(_:);
  v57 = v44 + 104;
  v56 = *(v44 + 104);
  v58 = v105;
  v59 = v100;
  v56(v105, enum case for CGPathFillRule.winding(_:), v100);
  CGContextRef.fillPath(using:)();

  v61 = *(v44 + 8);
  v60 = v44 + 8;
  v92 = v61;
  v61(v58, v59);
  v89 = v49;
  [v49 addClip];
  v62 = CGPathCreateWithRect(*v104, 0);
  v63 = [(CGRect *)a1 CGContext];
  v86 = v62;
  CGContextAddPath(v63, v62);

  v64 = [(CGRect *)a1 CGContext];
  if (qword_10117FAB0 != -1)
  {
    swift_once();
  }

  v65 = [qword_1012191B8 CGColor];
  CGContextSetFillColorWithColor(v64, v65);

  v104 = a1;
  v66 = [(CGRect *)a1 CGContext];
  v88 = v55;
  v87 = v56;
  v56(v58, v55, v59);
  CGContextRef.fillPath(using:)();

  v90 = v60;
  v67 = v92;
  v92(v58, v59);
  type metadata accessor for Key(0);
  sub_10065AAEC();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v102 drawWithRect:33 options:isa attributes:0 context:{v94, v95, v96, v97}];

  v69 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v98 drawWithRect:33 options:v69 attributes:0 context:{a13, a14, a15, a16}];

  v70 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v99 drawWithRect:33 options:v70 attributes:0 context:{a17, a18, a19, a20}];

  v71 = objc_opt_self();
  v72 = String._bridgeToObjectiveC()();
  v73 = v57;
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v74 = [v71 imageNamed:v72 inBundle:qword_101218F90 compatibleWithTraitCollection:0];

  if (!v74)
  {
    goto LABEL_16;
  }

  v75 = v105;
  if (qword_10117FAD8 != -1)
  {
    swift_once();
  }

  v103 = v73;
  v76 = [v74 flattenedImageWithColor:qword_1012191E0];

  [v76 drawInRect:{a22, a23, a24, a25}];
  v77 = [(CGRect *)v104 CGContext];
  if (qword_10117FAB8 != -1)
  {
    swift_once();
  }

  v78 = [qword_1012191C0 CGColor];
  v106.width = 0.0;
  v106.height = 2.0;
  CGContextSetShadowWithColor(v77, v106, 4.0, v78);

  v79 = [v91 _bezierPathWithPillRect:a26 cornerRadius:{a27, a28, a29, 4.0}];
  if (v79)
  {
    v80 = v79;
    v81 = v104;
    v82 = [(CGRect *)v104 CGContext];
    v83 = [v80 CGPath];
    CGContextAddPath(v82, v83);

    v84 = [(CGRect *)v81 CGContext];
    v87(v75, v88, v59);
    CGContextRef.fillPath(using:)();

    v67(v75, v59);
    [v80 addClip];
    [a30 drawInRect:{a26, a27, a28, a29}];

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10065AA3C()
{

  return swift_deallocClassInstance();
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

unint64_t sub_10065AAEC()
{
  result = qword_10118AC30;
  if (!qword_10118AC30)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118AC30);
  }

  return result;
}

void sub_10065ABD0(uint64_t a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10065B00C();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

void sub_10065ADE8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for Genre();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CFA0);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
}

Swift::Int sub_10065AEAC()
{
  Hasher.init(_seed:)();
  sub_10065ABD0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10065AEF0()
{
  Hasher.init(_seed:)();
  sub_10065ABD0(v1);
  return Hasher._finalize()();
}

unint64_t sub_10065AF30()
{
  result = qword_10119BBA8;
  if (!qword_10119BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BBA8);
  }

  return result;
}

unint64_t sub_10065AF90(uint64_t a1)
{
  result = sub_10065AFB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10065AFB8()
{
  result = qword_10119BC88;
  if (!qword_10119BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BC88);
  }

  return result;
}

unint64_t sub_10065B00C()
{
  result = qword_101180378;
  if (!qword_101180378)
  {
    type metadata accessor for MusicLibrary();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180378);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsAuthority.TabID(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
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

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10065B1BC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10065B1D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_10065B200()
{
  result = qword_10119BC90;
  if (!qword_10119BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BC90);
  }

  return result;
}

char *sub_10065B254()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertySongTraits])
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [v0 traits];
  v2 = v1;
  if ((v1 & 2) == 0)
  {
    v3 = _swiftEmptyArrayStorage;
    if ((v1 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v3 = sub_1004990D0(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v3;
    v20 = *(v3 + 2);
    v21 = sub_1004990D0((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v3 = v21;
  }

  *(v3 + 2) = v7;
  v3[v5 + 32] = 6;
  if ((v2 & 4) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v9 = *(v3 + 3);
    v10 = v8 + 1;
    if (v8 >= v9 >> 1)
    {
      v22 = v3;
      v23 = *(v3 + 2);
      v24 = sub_1004990D0((v9 > 1), v8 + 1, 1, v22);
      v8 = v23;
      v3 = v24;
    }

    *(v3 + 2) = v10;
    v3[v8 + 32] = 5;
  }

LABEL_14:
  if ((v2 & 0x20) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
    }

    v14 = *(v3 + 2);
    v15 = *(v3 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v28 = v3;
      v29 = *(v3 + 2);
      v30 = sub_1004990D0((v15 > 1), v14 + 1, 1, v28);
      v14 = v29;
      v3 = v30;
    }

    *(v3 + 2) = v16;
    v3[v14 + 32] = 3;
    if ((v2 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  v13 = v11 + 1;
  if (v11 >= v12 >> 1)
  {
    v25 = v3;
    v26 = *(v3 + 2);
    v27 = sub_1004990D0((v12 > 1), v11 + 1, 1, v25);
    v11 = v26;
    v3 = v27;
  }

  *(v3 + 2) = v13;
  v3[v11 + 32] = 4;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v2)
  {
LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
    }

    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    if (v18 >= v17 >> 1)
    {
      v3 = sub_1004990D0((v17 > 1), v18 + 1, 1, v3);
    }

    *(v3 + 2) = v18 + 1;
    v3[v18 + 32] = 7;
  }

LABEL_33:
  v31 = v3;

  sub_10065BD54(&v31);

  return v31;
}

uint64_t sub_10065B558(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    switch(a1)
    {
      case 6u:
        if (a2 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 1;
      case 7u:
        if (a2 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 1;
      case 8u:
        if (a2 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 3u:
        if (a2 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 1;
      case 4u:
        if (a2 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 1;
      case 5u:
        if (a2 != 5)
        {
          v2 = 2;
LABEL_24:
          if ((a2 - 3) >= 6u)
          {
            v5 = 6;
          }

          else
          {
            v5 = (a2 - 3);
          }

          v4 = v2 >= v5;
          goto LABEL_28;
        }

        return 1;
    }
  }

  if ((a2 - 3) < 6u)
  {
    v2 = 6;
    goto LABEL_24;
  }

  v4 = a1 >= a2;
LABEL_28:
  v6 = !v4;
  return v6 ^ 1u;
}

uint64_t sub_10065B658(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        if (a1 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 1;
      case 7u:
        if (a1 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 1;
      case 8u:
        if (a1 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 3u:
        if (a1 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 1;
      case 4u:
        if (a1 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 1;
      case 5u:
        if (a1 != 5)
        {
          v2 = 2;
LABEL_24:
          if ((a1 - 3) >= 6u)
          {
            v5 = 6;
          }

          else
          {
            v5 = (a1 - 3);
          }

          v4 = v2 >= v5;
          goto LABEL_28;
        }

        return 1;
    }
  }

  if ((a1 - 3) < 6u)
  {
    v2 = 6;
    goto LABEL_24;
  }

  v4 = a2 >= a1;
LABEL_28:
  v6 = !v4;
  return v6 ^ 1u;
}

BOOL sub_10065B758(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        if (a1 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 0;
      case 7u:
        if (a1 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 0;
      case 8u:
        if (a1 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 3u:
        if (a1 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 0;
      case 4u:
        if (a1 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 0;
      case 5u:
        if (a1 != 5)
        {
          v2 = 2;
          goto LABEL_24;
        }

        return 0;
    }
  }

  if ((a1 - 3) >= 6u)
  {
    return a2 < a1;
  }

  v2 = 6;
LABEL_24:
  if ((a1 - 3) >= 6u)
  {
    v4 = 6;
  }

  else
  {
    v4 = (a1 - 3);
  }

  return v2 < v4;
}

uint64_t sub_10065B858()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

Swift::Int sub_10065BA98()
{
  result = sub_10010E380(&off_101099198);
  qword_1012191E8 = result;
  return result;
}

Swift::Int sub_10065BAC0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    Hasher._combine(_:)(6uLL);
    v2 = a1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_UNKNOWN **sub_10065BB28@<X0>(void *a1@<X8>)
{
  result = sub_10065CD0C();
  *a1 = result;
  return result;
}

void sub_10065BB88()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 6)
  {
    Hasher._combine(_:)(6uLL);
    v2 = v1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10065BBD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = v1 - 3;
  if ((v1 - 3) >= 6)
  {
    Hasher._combine(_:)(6uLL);
    v2 = v1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10065BC7C()
{
  result = qword_10119BCA8;
  if (!qword_10119BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BCA8);
  }

  return result;
}

uint64_t sub_10065BD00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_10065BD54(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F030(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10065BDC0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10065BDC0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10065BFE4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10065BEB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10065BEB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6:
            if (v10 == 6)
            {
              goto LABEL_4;
            }

            v11 = 3;
            goto LABEL_27;
          case 7:
            if (v10 == 7)
            {
              goto LABEL_4;
            }

            v11 = 4;
            goto LABEL_27;
          case 8:
            if (v10 == 8)
            {
              goto LABEL_4;
            }

            v11 = 5;
            goto LABEL_27;
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            if (v10 == 3)
            {
              goto LABEL_4;
            }

            v11 = 0;
            goto LABEL_27;
          case 4:
            if (v10 == 4)
            {
              goto LABEL_4;
            }

            v11 = 1;
            goto LABEL_27;
          case 5:
            if (v10 == 5)
            {
              goto LABEL_4;
            }

            v11 = 2;
            goto LABEL_27;
        }
      }

      if (v10 - 3 > 5)
      {
        if (v7 >= v10)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

      v11 = 6;
LABEL_27:
      result = (v10 - 3);
      if (v10 - 3 >= 6)
      {
        v12 = 6;
      }

      else
      {
        v12 = (v10 - 3);
      }

      if (v11 >= v12)
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_31:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v9 = v10;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_10065BFE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_175:
    v4 = *v90;
    if (!*v90)
    {
      goto LABEL_216;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_177:
      v82 = v7 + 2;
      v83 = v7[2];
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = &v7[2 * v83];
          v85 = *v84;
          v86 = &v82[2 * v83];
          v87 = v86[1];
          sub_10065C7AC((*a3 + *v84), (*a3 + *v86), *a3 + v87, v4);
          if (v92)
          {
          }

          if (v87 < v85)
          {
            goto LABEL_202;
          }

          if (v83 - 2 >= *v82)
          {
            goto LABEL_203;
          }

          *v84 = v85;
          v84[1] = v87;
          v88 = *v82 - v83;
          if (*v82 < v83)
          {
            goto LABEL_204;
          }

          v92 = 0;
          v83 = *v82 - 1;
          result = memmove(v86, v86 + 2, 16 * v88);
          *v82 = v83;
          if (v83 <= 1)
          {
          }
        }

        goto LABEL_214;
      }
    }

LABEL_210:
    result = sub_10059F01C(v7);
    v7 = result;
    goto LABEL_177;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  result = 6;
  v89 = a4;
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_81;
    }

    v9 = *(*a3 + v6);
    v10 = *(*a3 + v8);
    if (v9 > 5)
    {
      switch(v9)
      {
        case 6u:
          if (v10 != 6)
          {
            v11 = 3;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 7u:
          if (v10 != 7)
          {
            v11 = 4;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 8u:
          if (v10 != 8)
          {
            v11 = 5;
            goto LABEL_28;
          }

LABEL_25:
          v12 = 0;
          goto LABEL_35;
      }
    }

    else
    {
      switch(v9)
      {
        case 3u:
          if (v10 != 3)
          {
            v11 = 0;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 4u:
          if (v10 != 4)
          {
            v11 = 1;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 5u:
          if (v10 != 5)
          {
            v11 = 2;
LABEL_28:
            LODWORD(v14) = v10 - 3;
            if (v14 >= 6)
            {
              v14 = 6;
            }

            else
            {
              v14 = v14;
            }

            v13 = v11 >= v14;
            goto LABEL_32;
          }

          goto LABEL_25;
      }
    }

    if (v10 - 3 < 6)
    {
      v11 = 6;
      goto LABEL_28;
    }

    v13 = v9 >= v10;
LABEL_32:
    v12 = !v13;
LABEL_35:
    v6 = v8 + 2;
    if (v8 + 2 >= v5)
    {
      goto LABEL_72;
    }

    do
    {
      v15 = *(*a3 + v6);
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6u:
            if (v9 == 6)
            {
              goto LABEL_37;
            }

            v16 = 3;
            goto LABEL_60;
          case 7u:
            if (v9 == 7)
            {
              goto LABEL_37;
            }

            v16 = 4;
            goto LABEL_60;
          case 8u:
            if (v9 == 8)
            {
              goto LABEL_37;
            }

            v16 = 5;
            goto LABEL_60;
        }
      }

      else
      {
        switch(v15)
        {
          case 3u:
            if (v9 == 3)
            {
              goto LABEL_37;
            }

            v16 = 0;
            goto LABEL_60;
          case 4u:
            if (v9 == 4)
            {
              goto LABEL_37;
            }

            v16 = 1;
            goto LABEL_60;
          case 5u:
            if (v9 == 5)
            {
              goto LABEL_37;
            }

            v16 = 2;
            goto LABEL_60;
        }
      }

      if ((v9 - 3) < 6u)
      {
        v16 = 6;
LABEL_60:
        LODWORD(v17) = (v9 - 3);
        if (v17 >= 6)
        {
          v17 = 6;
        }

        else
        {
          v17 = v17;
        }

        v18 = v16 >= v17;
        goto LABEL_64;
      }

      v18 = v15 >= v9;
      if (v15 == v9)
      {
LABEL_37:
        if (v12)
        {
          goto LABEL_73;
        }

        goto LABEL_38;
      }

LABEL_64:
      v19 = !v18;
      if (v12 != v19)
      {
        goto LABEL_72;
      }

LABEL_38:
      ++v6;
      LOBYTE(v9) = v15;
    }

    while (v5 != v6);
    v6 = v5;
LABEL_72:
    if (v12)
    {
LABEL_73:
      if (v6 < v8)
      {
        goto LABEL_207;
      }

      if (v8 < v6)
      {
        v20 = v6 - 1;
        v21 = v8;
        do
        {
          if (v21 != v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_213;
            }

            v24 = *(v23 + v21);
            *(v23 + v21) = *(v23 + v20);
            *(v23 + v20) = v24;
          }
        }

        while (++v21 < v20--);
        v5 = a3[1];
      }
    }

LABEL_81:
    if (v6 >= v5)
    {
      goto LABEL_124;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_206;
    }

    if (v6 - v8 >= a4)
    {
      goto LABEL_124;
    }

    if (__OFADD__(v8, a4))
    {
      goto LABEL_208;
    }

    if (v8 + a4 < v5)
    {
      v5 = v8 + a4;
    }

    if (v5 < v8)
    {
LABEL_209:
      __break(1u);
      goto LABEL_210;
    }

    if (v6 == v5)
    {
LABEL_124:
      if (v6 < v8)
      {
        goto LABEL_205;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100498FCC(0, v7[2] + 1, 1, v7);
        v7 = result;
      }

      v35 = v7[2];
      v34 = v7[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        result = sub_100498FCC((v34 > 1), v35 + 1, 1, v7);
        v7 = result;
      }

      v7[2] = v36;
      v4 = (v7 + 4);
      v37 = &v7[2 * v35 + 4];
      *v37 = v8;
      v37[1] = v6;
      v38 = *v90;
      if (!*v90)
      {
        goto LABEL_215;
      }

      if (!v35)
      {
LABEL_3:
        v5 = a3[1];
        a4 = v89;
        result = 6;
        if (v6 >= v5)
        {
          goto LABEL_175;
        }

        continue;
      }

      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = v7[4];
          v41 = v7[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_144:
          if (v43)
          {
            goto LABEL_192;
          }

          v56 = &v7[2 * v36];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_194;
          }

          v62 = &v4[16 * v39];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_197;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_199;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_166;
          }

          goto LABEL_159;
        }

        if (v36 < 2)
        {
          goto LABEL_200;
        }

        v66 = &v7[2 * v36];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_159:
        if (v61)
        {
          goto LABEL_196;
        }

        v69 = &v4[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_198;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_166:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        if (!*a3)
        {
          goto LABEL_212;
        }

        v77 = &v4[16 * v39 - 16];
        v78 = *v77;
        v79 = &v4[16 * v39];
        v80 = *(v79 + 1);
        sub_10065C7AC((*a3 + *v77), (*a3 + *v79), *a3 + v80, v38);
        if (v92)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_187;
        }

        if (v39 > v7[2])
        {
          goto LABEL_188;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = v7[2];
        if (v39 >= v81)
        {
          goto LABEL_189;
        }

        v92 = 0;
        v36 = v81 - 1;
        result = memmove(&v4[16 * v39], v79 + 16, 16 * (v81 - 1 - v39));
        v7[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v4[16 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_190;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_191;
      }

      v51 = &v7[2 * v36];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_193;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_195;
      }

      if (v55 >= v47)
      {
        v73 = &v4[16 * v39];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_201;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_166;
      }

      goto LABEL_144;
    }

    break;
  }

  v25 = *a3;
  v26 = (*a3 + v6);
  v27 = v8 - v6;
  while (2)
  {
    v28 = *(v25 + v6);
    v29 = v27;
    v30 = v26;
LABEL_92:
    v31 = *(v30 - 1);
    if (v28 > 5)
    {
      switch(v28)
      {
        case 6:
          if (v31 == 6)
          {
            goto LABEL_90;
          }

          v32 = 3;
          break;
        case 7:
          if (v31 == 7)
          {
            goto LABEL_90;
          }

          v32 = 4;
          break;
        case 8:
          if (v31 == 8)
          {
            goto LABEL_90;
          }

          v32 = 5;
          break;
        default:
          goto LABEL_107;
      }

LABEL_113:
      if (v31 - 3 >= 6)
      {
        v33 = 6;
      }

      else
      {
        v33 = (v31 - 3);
      }

      if (v32 < v33)
      {
        goto LABEL_117;
      }

LABEL_90:
      ++v6;
      ++v26;
      --v27;
      if (v6 == v5)
      {
        v6 = v5;
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  switch(v28)
  {
    case 3:
      if (v31 == 3)
      {
        goto LABEL_90;
      }

      v32 = 0;
      goto LABEL_113;
    case 4:
      if (v31 == 4)
      {
        goto LABEL_90;
      }

      v32 = 1;
      goto LABEL_113;
    case 5:
      if (v31 == 5)
      {
        goto LABEL_90;
      }

      v32 = 2;
      goto LABEL_113;
  }

LABEL_107:
  if (v31 - 3 <= 5)
  {
    v32 = 6;
    goto LABEL_113;
  }

  if (v28 >= v31)
  {
    goto LABEL_90;
  }

LABEL_117:
  if (v25)
  {
    *v30 = v31;
    *--v30 = v28;
    v13 = __CFADD__(v29++, 1);
    if (v13)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
  return result;
}

uint64_t sub_10065C7AC(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v11 > 5)
        {
          switch(v11)
          {
            case 6u:
              if (v12 == 6)
              {
                goto LABEL_36;
              }

              v13 = 3;
              goto LABEL_28;
            case 7u:
              if (v12 == 7)
              {
                goto LABEL_36;
              }

              v13 = 4;
              goto LABEL_28;
            case 8u:
              if (v12 == 8)
              {
                goto LABEL_36;
              }

              v13 = 5;
              goto LABEL_28;
          }
        }

        else
        {
          switch(v11)
          {
            case 3u:
              if (v12 == 3)
              {
                goto LABEL_36;
              }

              v13 = 0;
              goto LABEL_28;
            case 4u:
              if (v12 == 4)
              {
                goto LABEL_36;
              }

              v13 = 1;
              goto LABEL_28;
            case 5u:
              if (v12 == 5)
              {
                goto LABEL_36;
              }

              v13 = 2;
              goto LABEL_28;
          }
        }

        if (v12 - 3 > 5)
        {
          if (v11 < v12)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }

        v13 = 6;
LABEL_28:
        if (v12 - 3 >= 6)
        {
          v14 = 6;
        }

        else
        {
          v14 = (v12 - 3);
        }

        if (v13 < v14)
        {
LABEL_32:
          v15 = v6 + 1;
          if (v7 >= v6 && v7 < v15)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_36:
        v16 = v4 + 1;
        LOBYTE(v11) = *v4;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v16)
          {
            goto LABEL_41;
          }
        }

LABEL_40:
        *v7 = v11;
LABEL_41:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_92;
    }

LABEL_91:
    if (v6 >= v10)
    {
      goto LABEL_92;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_90:
    if (v6 != v4)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  do
  {
    v17 = v6 - 1;
    --v5;
    v18 = v10;
    while (1)
    {
      v20 = *--v18;
      v19 = v20;
      v21 = *v17;
      if (v20 > 5)
      {
        break;
      }

      if (v19 == 3)
      {
        if (v21 != 3)
        {
          v22 = 0;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      if (v19 != 4)
      {
        if (v19 == 5)
        {
          if (v21 != 5)
          {
            v22 = 2;
            goto LABEL_74;
          }

          goto LABEL_78;
        }

LABEL_68:
        if (v21 - 3 <= 5)
        {
          v22 = 6;
          goto LABEL_74;
        }

        if (v19 < v21)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }

      if (v21 != 4)
      {
        v22 = 1;
        goto LABEL_74;
      }

LABEL_78:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v19;
      }

      --v5;
      v10 = v18;
      if (v18 <= v4)
      {
        v10 = v18;
        goto LABEL_90;
      }
    }

    if (v19 == 6)
    {
      if (v21 != 6)
      {
        v22 = 3;
        goto LABEL_74;
      }

      goto LABEL_78;
    }

    if (v19 != 7)
    {
      if (v19 == 8)
      {
        if (v21 != 8)
        {
          v22 = 5;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      goto LABEL_68;
    }

    if (v21 == 7)
    {
      goto LABEL_78;
    }

    v22 = 4;
LABEL_74:
    if (v21 - 3 >= 6)
    {
      v23 = 6;
    }

    else
    {
      v23 = (v21 - 3);
    }

    if (v22 >= v23)
    {
      goto LABEL_78;
    }

LABEL_82:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v21;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v17 > v7);
  v6 = v17;
  if (v17 == v4)
  {
    goto LABEL_91;
  }

LABEL_92:
  memmove(v6, v4, v10 - v4);
  return 1;
}

BOOL sub_10065CB24(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    switch(a1)
    {
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
      case 5u:
        return a2 == 5;
    }

LABEL_16:
    if (a2 - 3 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if (a1 != 7)
  {
    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_16;
  }

  return a2 == 7;
}

BOOL sub_10065CBE4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    switch(a1)
    {
      case 6u:
        if (a2 == 6)
        {
          return 0;
        }

        v3 = 3;
        goto LABEL_29;
      case 7u:
        if (a2 == 7)
        {
          return 0;
        }

        v3 = 4;
        goto LABEL_29;
      case 8u:
        if (a2 == 8)
        {
          return 0;
        }

        v3 = 5;
        goto LABEL_29;
    }
  }

  else
  {
    switch(a1)
    {
      case 3u:
        if (a2 == 3)
        {
          return 0;
        }

        v3 = 0;
        goto LABEL_29;
      case 4u:
        if (a2 == 4)
        {
          return 0;
        }

        v3 = 1;
        goto LABEL_29;
      case 5u:
        if (a2 == 5)
        {
          return 0;
        }

        v3 = 2;
        goto LABEL_29;
    }
  }

  if ((a2 - 3) >= 6u)
  {
    return a1 < a2;
  }

  v3 = 6;
LABEL_29:
  if ((a2 - 3) >= 6u)
  {
    v4 = 6;
  }

  else
  {
    v4 = (a2 - 3);
  }

  return v3 < v4;
}

_UNKNOWN **sub_10065CD0C()
{
  sub_10066CD74(0, 3, 0);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_10066CD74((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < (v1 + 2))
  {
    sub_10066CD74((v0 > 1), v1 + 2, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  if (v2 < (v1 + 3))
  {
    sub_10066CD74((v0 > 1), v1 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v1 + 3;
  *(&_swiftEmptyArrayStorage[4] + v4) = 2;
  sub_100125C50(_swiftEmptyArrayStorage);
  return &off_10109C0A0;
}

void sub_10065CE7C(char a1, char a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&qword_10119C158);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock - v7;
  LOBYTE(aBlock) = 11;
  v9 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v9) & 1) == 0 || (v10 = [objc_opt_self() currentDevice], v11 = objc_msgSend(v10, "userInterfaceIdiom"), v10, v11 != 1))
  {
    v12 = *(v3 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        [v13 alpha];
        if (v14 != 0.0)
        {
          v15 = objc_opt_self();
          v16 = *(v3 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionAnimationDuration);
          v17 = swift_allocObject();
          *(v17 + 16) = v13;
          v28 = sub_1001D2724;
          v29 = v17;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_10002BC98;
          v27 = &unk_1010B9070;
          v18 = _Block_copy(&aBlock);
          v19 = v13;

          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          v28 = sub_1005EA7C8;
          v29 = v20;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_1005C3688;
          v27 = &unk_1010B90C0;
          v21 = _Block_copy(&aBlock);
          v13 = v19;

          [v15 animateWithDuration:v18 animations:v21 completion:v16];
          _Block_release(v21);
          _Block_release(v18);
        }
      }

      else
      {
        [v12 removeFromSuperview];
      }
    }

    [*(v3 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
    if (a2)
    {
      v22 = sub_10010FC20(&qword_10119BDB8);
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      v23 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
      swift_beginAccess();
      sub_10006B010(v8, v3 + v23, &qword_10119C158);
      swift_endAccess();
    }
  }
}

id sub_10065D1CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  result = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

void sub_10065D24C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10119C158);
  __chkstk_darwin(v2 - 8);
  v4 = &v30[-v3];
  v5 = sub_10010FC20(&qword_10119BDB8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v30[-v10];
  v30[8] = 11;
  v12 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v12) & 1) == 0 || (v13 = [objc_opt_self() currentDevice], v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, v14 != 1))
  {
    v15 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
    swift_beginAccess();
    sub_1000089F8(&v1[v15], v4, &qword_10119C158);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v16 = &qword_10119C158;
      v17 = v4;
    }

    else
    {
      sub_100662C2C(v4, v11);
      if (*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] >= 0x4000u && (v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated] & 1) == 0)
      {
        v18 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
        [*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setHidden:1];
        v19 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView;
        v20 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView];
        if (v20)
        {
          [v20 removeFromSuperview];
        }

        sub_1000089F8(v11, v9, &qword_10119BDB8);
        v21 = objc_allocWithZone(sub_10010FC20(&qword_10119C168));
        v22 = _UIHostingView.init(rootView:)();
        v23 = *&v1[v19];
        *&v1[v19] = v22;

        v24 = *&v1[v19];
        if (!v24 || (v25 = *&v1[v18], v26 = v24, v27 = v25, [v1 bounds], Artwork.View.sizeThatFits(_:)(v28, v29), v27, objc_msgSend(v26, "frame"), objc_msgSend(v26, "setFrame:"), v26, !*&v1[v19]))
        {
          __break(1u);
          return;
        }

        [v1 addSubview:?];
      }

      v16 = &qword_10119BDB8;
      v17 = v11;
    }

    sub_1000095E8(v17, v16);
  }
}

id sub_10065D5B4(unsigned __int8 a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (a1 - 1 < 2)
  {
    sub_10065ECCC();
    sub_10065EEBC();
    goto LABEL_9;
  }

  if (a1)
  {
    v5 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v5))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10065ECCC();
    sub_10065EEBC();
    v4 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4))
    {
LABEL_7:
      v6 = [objc_opt_self() currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7 == 1)
      {
        goto LABEL_9;
      }
    }
  }

  sub_10065E888();
  sub_10065E9C0();
LABEL_9:
  v8 = *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (v8)
  {
    [v8 setAlpha:0.0];
  }

  result = *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void sub_10065D76C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v2 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView;
  v3 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (v3)
  {
    [v3 setAlpha:1.0];
  }

  sub_10065D1CC();
  v4 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) != 0 && (v5 = [objc_opt_self() currentDevice], v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6 == 1))
  {
    [*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
    v7 = *(v1 + v2);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_100660A4C(v1);
    v7 = *(v1 + v2);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = [v7 superview];
  if (v8)
  {

    return;
  }

LABEL_10:
  sub_10065D24C();
}

void sub_10065D8E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (v1)
  {
    v10 = v1;
    v2 = [v10 superview];
    if (v2)
    {

      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v10;
      v15 = sub_1001D3178;
      v16 = v4;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_10002BC98;
      v14 = &unk_1010B9340;
      v5 = _Block_copy(&aBlock);
      v6 = v10;

      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v15 = sub_100663954;
      v16 = v7;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_1005C3688;
      v14 = &unk_1010B9390;
      v8 = _Block_copy(&aBlock);
      v9 = v6;

      [v3 animateWithDuration:v5 animations:v8 completion:0.2];
      _Block_release(v8);
      _Block_release(v5);
    }

    else
    {
    }
  }
}

void sub_10065DAE0(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UIView.Corner.Radius();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101183A90);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = *&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot];
  v68 = OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot;
  *&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot] = a1;
  if (!v17)
  {
    v20 = a1;
    goto LABEL_5;
  }

  sub_100009F78(0, &qword_101181620);
  v18 = a1;
  v17 = v17;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
LABEL_5:
    [v17 removeFromSuperview];
    v18 = a1;
  }

  sub_10065FD20(a2 & 1);
  LOBYTE(aBlock) = 11;
  v21 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21))
  {
    if ((a3 & 1) != 0 || v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] != 1)
    {
      goto LABEL_15;
    }
  }

  else if (a3)
  {
    goto LABEL_15;
  }

  if ((a2 & 1) == 0)
  {
    v22 = [v4 layer];
    [v22 setZPosition:-1.0];
  }

  v23 = *&v4[v68];
  if (v23)
  {
    v24 = [v23 layer];
    [v24 setZPosition:-1.0];
  }

LABEL_15:
  v25 = [v4 window];
  if (v25)
  {
    v26 = v25;
    [v25 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    LOBYTE(aBlock) = 11;
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21) & 1) == 0 || v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] == 1)
    {
      [v4 setFrame:{v28, v30, v32, v34}];
    }
  }

  LOBYTE(aBlock) = 11;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21) & 1) == 0 || v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] == 1)
  {
    [*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setAlpha:0.0];
  }

  if ((a2 & 1) == 0)
  {
    LOBYTE(aBlock) = 11;
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v21))
    {
      if (v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] != 1)
      {
        goto LABEL_34;
      }

      v35 = [v4 traitCollection];
      [v35 displayCornerRadius];
      v37 = v36;

      sub_10004CF20(*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v4 traitCollection], v16);
      v38 = type metadata accessor for UIView.Corner();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v16, 1, v38) == 1)
      {
        sub_1000095E8(v16, &qword_101183A90);
        v40 = 0;
      }

      else
      {
        UIView.Corner.radius.getter();
        (*(v39 + 8))(v16, v38);
        [v4 bounds];
        UIView.Corner.Radius.value(in:)();
        v40 = v51;
        (*(v66 + 8))(v10, v67);
      }

      [*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
      v48 = objc_opt_self();
      v52 = swift_allocObject();
      *(v52 + 16) = v4;
      *(v52 + 24) = 0;
      *(v52 + 32) = v37;
      *(v52 + 40) = v40;
      v73 = sub_1005EBE9C;
      v74 = v52;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v50 = &unk_1010B9200;
    }

    else
    {
      v41 = [v4 traitCollection];
      [v41 displayCornerRadius];
      v43 = v42;

      sub_10004CF20(*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v4 traitCollection], v14);
      v44 = type metadata accessor for UIView.Corner();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v14, 1, v44) == 1)
      {
        sub_1000095E8(v14, &qword_101183A90);
        v46 = 0;
      }

      else
      {
        UIView.Corner.radius.getter();
        (*(v45 + 8))(v14, v44);
        [v4 bounds];
        UIView.Corner.Radius.value(in:)();
        v46 = v47;
        (*(v66 + 8))(v10, v67);
      }

      [*&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
      v48 = objc_opt_self();
      v49 = swift_allocObject();
      *(v49 + 16) = v4;
      *(v49 + 24) = 0;
      *(v49 + 32) = v43;
      *(v49 + 40) = v46;
      v73 = sub_1005EB1E8;
      v74 = v49;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v50 = &unk_1010B9110;
    }

    v71 = sub_10002BC98;
    v72 = v50;
    v53 = _Block_copy(&aBlock);
    v54 = v4;

    [v48 animateWithDuration:4 delay:v53 options:0 animations:0.35 completion:0.0];
    _Block_release(v53);
LABEL_34:
    v55 = *&v4[v68];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v4;
      *(v57 + 24) = v55;
      v73 = sub_1005EB3BC;
      v74 = v57;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_10002BC98;
      v72 = &unk_1010B9160;
      v58 = _Block_copy(&aBlock);
      v59 = v55;
      v60 = v4;
      v61 = v59;

      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      v73 = sub_1005EB3C4;
      v74 = v62;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_1005C3688;
      v72 = &unk_1010B91B0;
      v63 = _Block_copy(&aBlock);
      v64 = v61;

      [v56 animateWithDuration:0 delay:v58 options:v63 animations:0.2 completion:0.1];

      _Block_release(v63);
      _Block_release(v58);
    }
  }
}

id sub_10065E3FC(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = (*(*a1 + 216))();
    v4 = [v3 playerViewController];

    v5 = [v4 view];
    if (v5)
    {
      if ([v5 isDescendantOfView:v2])
      {
        [v5 removeFromSuperview];
      }
    }
  }

  v6 = *&v2[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext];
  if (v6)
  {
    v7 = *(*v6 + 216);

    v9 = v7(v8);

    v10 = [v9 playerViewController];

    v11 = [v10 view];
    if (v11)
    {
      if (([v11 isDescendantOfView:v2] & 1) == 0)
      {
        [v2 addSubview:v11];
      }
    }
  }

  sub_10004C8F4();

  return [v2 setNeedsLayout];
}

uint64_t sub_10065E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_10065E650;

  return static Task<>.sleep(for:)(3.0);
}

uint64_t sub_10065E650()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100663958;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_10065E7D4;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_10065E7D4()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      *(Strong + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates) = 0;
      sub_10004C8F4();
      [v2 setNeedsLayout];
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_10065E888()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;

    static Published.subscript.getter();

    [v2 bounds];
    if (v10 != 1)
    {
      v7 = v5 * 0.135;
      CGSize.scaled(_:)();
      v5 = v8;
      v3 = v7;
      v6 = v9;
      v4 = v7;
    }

    sub_10065F994([v2 resizableSnapshotViewFromRect:0 afterScreenUpdates:v3 withCapInsets:{v4, v5, v6, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}], &OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
  }
}

void sub_10065E9C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    isa = [v3 superview];
    if (!isa)
    {
      v4 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
      v5 = *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
      v6 = UIView.forAutolayout.getter();
      [v5 addSubview:v6];

      v7 = objc_opt_self();
      sub_10010FC20(&qword_101183990);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100EBDC10;
      v9 = [v3 topAnchor];
      v10 = [*(v2 + v4) topAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];

      *(v8 + 32) = v11;
      v12 = [v3 bottomAnchor];
      v13 = [*(v2 + v4) bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v8 + 40) = v14;
      v15 = [v3 leftAnchor];
      v16 = [*(v2 + v4) leftAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v8 + 48) = v17;
      v18 = [v3 rightAnchor];
      v19 = [*(v2 + v4) rightAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v8 + 56) = v20;
      sub_100009F78(0, &qword_1011838A0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 activateConstraints:isa];
    }
  }
}