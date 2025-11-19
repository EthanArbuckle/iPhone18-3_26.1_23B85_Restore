uint64_t sub_100168418(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381C80);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "OffTheGrid mode request done", v16, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v7 + 8);
  v23(v10, v6);
  aBlock[4] = sub_10017E640;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100334278;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100071864();
  sub_1000040A8(&unk_100355D70);
  v19 = v6;
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  v20 = v25;
  v21 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v20, v21);
  (*(v24 + 8))(v5, v26);
  return (v23)(v12, v19);
}

void sub_100168870(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, a3);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, "Done with '%s'", v7, 0xCu);
    sub_100008964(v8);
  }
}

uint64_t sub_1001689A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v17[1] = a1;
  v3 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1000040A8(&qword_1003618E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  sub_10001D630(0, &qword_10035BA10);
  v10 = static OS_dispatch_queue.main.getter();
  v20 = v10;
  v11 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1000040A8(&qword_10035F528);
  sub_100009274(&qword_1003618E8, &qword_10035F528);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v5, &unk_10035CF50);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v15 = v19;
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v15;
  sub_100009274(&qword_1003618F0, &qword_1003618E0);

  Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v6);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100168CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v17[1] = a1;
  v3 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1000040A8(&qword_100361BF8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  sub_10001D630(0, &qword_10035BA10);
  v10 = static OS_dispatch_queue.main.getter();
  v20 = v10;
  v11 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1000040A8(&qword_1003618D8);
  sub_100009274(&qword_100361C00, &qword_1003618D8);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v5, &unk_10035CF50);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v15 = v19;
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v15;
  sub_100009274(&qword_100361C08, &qword_100361BF8);

  Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v6);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100169044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_1003560A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016939C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361BD8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100361BE0);
  sub_100009274(&qword_100361BE8, &qword_100361BE0);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361BF0, &qword_100361BD8);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1001696F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361BB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003580D8);
  sub_100009274(&qword_100361BC0, &qword_1003580D8);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361BC8, &qword_100361BB8);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100169A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361B98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100361BA0);
  sub_100009274(&qword_100361BA8, &qword_100361BA0);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361BB0, &qword_100361B98);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100169DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361B60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100361B68);
  sub_100009274(&qword_100361B70, &qword_100361B68);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361B78, &qword_100361B60);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016A0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361B40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100361B48);
  sub_100009274(&qword_100361B50, &qword_100361B48);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361B58, &qword_100361B40);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361B28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035D918);
  sub_100009274(&qword_100361B30, &qword_10035D918);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361B38, &qword_100361B28);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361B10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035D920);
  sub_100009274(&qword_100361B18, &qword_10035D920);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361B20, &qword_100361B10);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016AB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361AF8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035D928);
  sub_100009274(&qword_100361B00, &qword_10035D928);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361B08, &qword_100361AF8);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016AE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361AE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035D948);
  sub_100009274(&qword_100361AE8, &qword_10035D948);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361AF0, &qword_100361AE0);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016B1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361AC8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035D938);
  sub_100009274(&qword_100361AD0, &qword_10035D938);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361AD8, &qword_100361AC8);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361AB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035D940);
  sub_100009274(&qword_100361AB8, &qword_10035D940);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361AC0, &qword_100361AB0);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016B864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361A98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&unk_100365630);
  sub_100009274(&qword_100361AA0, &unk_100365630);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361AA8, &qword_100361A98);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361A80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003562A8);
  sub_100009274(&qword_100361A88, &qword_1003562A8);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361A90, &qword_100361A80);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016BF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361A68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100356500);
  sub_100009274(&qword_100361A70, &qword_100356500);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361A78, &qword_100361A68);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016C26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361A50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100356508);
  sub_100009274(&qword_100361A58, &qword_100356508);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361A60, &qword_100361A50);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016C5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361A38);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100365640);
  sub_100009274(&qword_100361A40, &qword_100365640);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361A48, &qword_100361A38);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016C91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361A20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605A8);
  sub_100009274(&qword_100361A28, &qword_1003605A8);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361A30, &qword_100361A20);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016CC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361A08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605B0);
  sub_100009274(&qword_100361A10, &qword_1003605B0);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361A18, &qword_100361A08);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016CFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_1003619F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605B8);
  sub_100009274(&qword_1003619F8, &qword_1003605B8);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361A00, &qword_1003619F0);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016D324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_1003619D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605C0);
  sub_100009274(&qword_1003619E0, &qword_1003605C0);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_1003619E8, &qword_1003619D8);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016D67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_1003619C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605C8);
  sub_100009274(&qword_1003619C8, &qword_1003605C8);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_1003619D0, &qword_1003619C0);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016D9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_1003619A8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605D0);
  sub_100009274(&qword_1003619B0, &qword_1003605D0);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_1003619B8, &qword_1003619A8);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016DD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361990);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605D8);
  sub_100009274(&qword_100361998, &qword_1003605D8);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_1003619A0, &qword_100361990);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016E084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361978);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_1003605E0);
  sub_100009274(&qword_100361980, &qword_1003605E0);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361988, &qword_100361978);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016E3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_10035EE98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&unk_100359B30);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_10035EEA8, &qword_10035EE98);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016E734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361960);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&unk_10035CEC0);
  sub_100009274(&qword_100361968, &unk_10035CEC0);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361970, &qword_100361960);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016EA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361938);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100361940);
  sub_100009274(&qword_100361948, &qword_100361940);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361950, &qword_100361938);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016EDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361928);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035F530);
  sub_100009274(&qword_10035F538, &qword_10035F530);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361930, &qword_100361928);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016F13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_100361910);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_100360998);
  sub_100009274(&qword_100361918, &qword_100360998);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361920, &qword_100361910);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016F494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000040A8(&qword_1003618F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v22 = a1;
  sub_10001D630(0, &qword_10035BA10);
  v11 = static OS_dispatch_queue.main.getter();
  v21 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1000040A8(&qword_10035D950);
  sub_100009274(&qword_100361900, &qword_10035D950);
  sub_10006AFB8(&qword_100365620, &qword_10035BA10);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v6, &unk_10035CF50);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v16 = v20;
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v16;
  sub_100009274(&qword_100361908, &qword_1003618F8);

  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10016F7EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10016F860@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for ConnectionClosed(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100233FEC(&off_100323718);
  v14 = *(a1 + 64);
  v45 = a1;
  v46 = v14;
  v15 = *(v14 + 112);
  v16 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
  swift_beginAccess();
  sub_100006C20(v15 + v16, v8, &qword_100356510);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_10002B3E0(v8, v12);
    v17 = *&v12[*(v9 + 24)];
    if (sub_10016FEA4(v13, v17))
    {
LABEL_4:
      sub_10000CA10(v12, type metadata accessor for ConnectionClosed);
      goto LABEL_5;
    }

    if (!*v12)
    {
      v37 = sub_100233FEC(&off_100323740);
      v38 = sub_100204870(v17, v37);

      if ((v38 & 1) == 0)
      {
        goto LABEL_4;
      }

      sub_1001DDADC(v5);

      v39 = type metadata accessor for TransmissionProgress(0);
      if ((*(*(v39 - 8) + 48))(v5, 1, v39) == 1)
      {
        sub_100008FA0(v5, &qword_100354FD8);
        goto LABEL_4;
      }

      v43 = v5[*(v39 + 32)];
      sub_10000CA10(v5, type metadata accessor for TransmissionProgress);
      if (v43 != 3)
      {
        goto LABEL_4;
      }
    }

    v33 = v47;
    sub_10017E464(v12, v47);
    v34 = type metadata accessor for ConnectionAssistantBanner.Mode();
    swift_storeEnumTagMultiPayload();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    return sub_10000CA10(v12, type metadata accessor for ConnectionClosed);
  }

  sub_100008FA0(v8, &qword_100356510);
LABEL_5:
  v18 = v46;
  v19 = *(v46 + 32);
  v20 = *(v19 + 56);
  if (*(v19 + 64))
  {
    if (v20 != 5 && v20 != 0)
    {
      v22 = *(v45 + 369);
      if ((v22 - 7) > 0xFFFFFFFD || v20 != v22)
      {

        v27 = v47;
        *v47 = v20;
        v28 = type metadata accessor for ConnectionAssistantBanner.Mode();
        goto LABEL_34;
      }
    }
  }

  v23 = *(v19 + 72);
  v48 = *(v19 + 56);
  v49 = v23;
  v24 = *(v19 + 104);
  v50 = *(v19 + 88);
  v51 = v24;
  v52 = *(v19 + 120);
  v53 = *(v19 + 136);
  if (!*(&v48 + 1) || BYTE1(v49) != 2)
  {
    v29 = sub_100178288();
    if (v29 != 2)
    {
      v36 = v29;

      v27 = v47;
      *v47 = v36;
      v28 = type metadata accessor for ConnectionAssistantBanner.Mode();
      goto LABEL_34;
    }

    if (*(v19 + 64))
    {
      v30 = *(v19 + 88);

      v31 = sub_10016FEA4(v13, v30);

      if ((v31 & 1) == 0)
      {

LABEL_33:
        v28 = type metadata accessor for ConnectionAssistantBanner.Mode();
        v27 = v47;
        goto LABEL_34;
      }

      v32 = sub_10017D0AC(&off_100323768, v30);

      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    v40 = *(v18 + 32);
    if (!*(v40 + 64) || (v41 = *(v40 + 88), !*(v41 + 16)) || (sub_100071A54(3, v41) & 1) != 0)
    {
      v42 = type metadata accessor for ConnectionAssistantBanner.Mode();
      return (*(*(v42 - 8) + 56))(v47, 1, 1, v42);
    }

    goto LABEL_33;
  }

  v25 = v52;

  sub_100008FA0(&v48, &unk_10035CEF0);
  v26 = (v25 & 1) == 0;
  v27 = v47;
  *v47 = v26;
  v28 = type metadata accessor for ConnectionAssistantBanner.Mode();
LABEL_34:
  swift_storeEnumTagMultiPayload();
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

Swift::Int sub_10016FEA4(Swift::Int result, Swift::Int a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100170010()
{
  v1 = v0;
  v110 = sub_1000040A8(&qword_1003618D8);
  v2 = *(v110 - 8);
  __chkstk_darwin(v110);
  v4 = &v108 - v3;
  v119 = *(v0[5] + 24);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  v5 = Publisher.eraseToAnyPublisher()();
  v6 = v0[8];
  v118 = *(*(v6 + 112) + 24);
  v119 = v5;
  v7 = Publisher.eraseToAnyPublisher()();
  v114 = v0[9];
  v117 = *(v114 + 24);
  v118 = v7;
  v8 = Publisher.eraseToAnyPublisher()();
  v113 = v0[14];
  v116 = *(v113 + 24);
  v117 = v8;
  v9 = Publisher.eraseToAnyPublisher()();
  v10 = *(v6 + 32);
  v111 = v6;
  v115 = *(v10 + 24);
  v116 = v9;
  v115 = Publisher.eraseToAnyPublisher()();
  sub_1000040A8(&qword_10035F548);
  sub_100009274(&qword_10035F550, &qword_10035F548);
  Publishers.Merge5.init(_:_:_:_:_:)();
  sub_100168CF4(v4, sub_100171408, 0);
  v11 = *(v2 + 8);
  v108 = v2 + 8;
  v12 = v110;
  v11(v4, v110);
  v119 = *(*(v6 + 112) + 24);
  v13 = Publisher.eraseToAnyPublisher()();
  v118 = *(v114 + 24);
  v119 = v13;
  v14 = Publisher.eraseToAnyPublisher()();
  v117 = *(v113 + 24);
  v118 = v14;
  v15 = Publisher.eraseToAnyPublisher()();
  v109 = v0[15];
  v116 = *(v109 + 24);
  v117 = v15;
  v16 = Publisher.eraseToAnyPublisher()();
  v112 = v0[18];
  v115 = *(v112 + 24);
  v116 = v16;
  v115 = Publisher.eraseToAnyPublisher()();
  Publishers.Merge5.init(_:_:_:_:_:)();
  sub_100168CF4(v4, sub_10017155C, 0);
  v11(v4, v12);

  sub_100169044(v17, sub_100171580, 0);

  sub_10016939C(v18, sub_10017162C, 0);

  sub_100169044(v19, sub_100171800, 0);

  sub_1001696F4(v20, sub_100171864, 0);

  sub_100169044(v21, sub_100171A1C, 0);

  sub_100169A4C(v22, sub_100171BE4, 0);

  v23 = v111;

  sub_100169DA4(v24, sub_100171D10, 0);

  v25 = *(*(v23 + 112) + 48);

  sub_10016A0FC(v25, sub_10017E120, v0);

  sub_100169044(v26, sub_100172998, 0);

  sub_100169044(v27, sub_100172AD0, 0);

  sub_100169044(v28, sub_100172B5C, 0);

  sub_100169044(v29, sub_100172D34, 0);

  sub_100169044(v30, sub_100172DF4, 0);

  sub_100169044(v31, sub_100172E58, 0);

  sub_100169044(v32, sub_100173024, 0);

  sub_10016A454(v33, sub_100173250, 0);

  sub_100169044(v34, sub_100173438, 0);

  sub_10016A7AC(v35, sub_10017E128, v0);

  sub_10016A454(v36, sub_100173DE8, 0);

  sub_100169044(v37, sub_100174274, 0);

  sub_100169044(v38, sub_100174298, 0);

  sub_10016AB04(v39, sub_10017429C, 0);

  sub_100169044(v40, sub_1001742A4, 0);

  sub_10016AE5C(v41, sub_1001744A8, 0);

  sub_10016B1B4(v42, sub_1001744D4, 0);

  sub_10016B1B4(v43, sub_100174660, 0);

  sub_10016B50C(v44, sub_1001749E0, 0);

  sub_10016B864(v45, sub_100174AE8, 0);

  sub_10016BBBC(v46, sub_100174B80, 0);

  sub_10016BF14(v47, sub_100174D0C, 0);

  sub_100169044(v48, sub_100174EA4, 0);

  sub_10016C26C(v49, sub_10017E884, 0);

  sub_100169044(v50, sub_100174EAC, 0);

  sub_10016C5C4(v51, sub_100174F2C, 0);

  sub_10016C5C4(v52, sub_100175050, 0);

  sub_10016C91C(v53, sub_100175174, 0);

  sub_10016CC74(v54, sub_1001751B4, 0);

  sub_10016CFCC(v55, sub_1001751FC, 0);

  sub_10016D324(v56, sub_10017523C, 0);

  sub_10016D67C(v57, sub_100175268, 0);

  sub_10016D9D4(v58, sub_100175294, 0);

  sub_10016DD2C(v59, sub_1001752C0, 0);

  sub_10016E084(v60, sub_100175300, 0);

  sub_100169044(v61, sub_100175338, 0);

  sub_10016C26C(v62, sub_10017E884, 0);

  v63 = v0[31];
  v64 = v0[32];
  sub_1000088DC(v1 + 28, v1[31]);
  v65 = (*(v64 + 32))(v63, v64);
  sub_10016C26C(v65, sub_10017E884, 0);

  v66 = v0[31];
  v67 = v0[32];
  sub_1000088DC(v1 + 28, v1[31]);
  v68 = (*(v67 + 48))(v66, v67);
  sub_10016E3DC(v68, sub_1001755B8, 0);

  v69 = v0[31];
  v70 = v0[32];
  sub_1000088DC(v1 + 28, v1[31]);
  v71 = (*(v70 + 8))(v69, v70);
  sub_100169044(v71, sub_1001755E0, 0);

  v72 = v0[31];
  v73 = v0[32];
  sub_1000088DC(v1 + 28, v1[31]);
  v74 = (*(v73 + 16))(v72, v73);
  sub_10016E734(v74, sub_10017561C, 0);

  sub_10016EA8C(v75, sub_10017586C, 0);

  sub_100169044(v76, sub_100175C1C, 0);

  sub_10016EDE4(v77, sub_100175D3C, 0);

  sub_100169044(v78, sub_100175E30, 0);

  sub_100169044(v79, sub_100175E80, 0);

  sub_100169044(v80, sub_100175ED4, 0);

  sub_100169044(v81, sub_100175F1C, 0);

  sub_10016EA8C(v82, sub_100175F88, 0);

  sub_10016F13C(v83, sub_10017604C, 0);

  sub_100169044(v84, sub_100176100, 0);

  sub_100169044(v85, sub_1001762F0, 0);

  sub_100169044(v86, sub_1001763A4, 0);

  sub_100169044(v87, sub_100176458, 0);

  sub_100169044(v88, sub_10017650C, 0);

  sub_100169044(v89, sub_1001765C0, 0);

  sub_100169044(v90, sub_100176674, 0);

  sub_100169044(v91, sub_100176754, 0);

  sub_10016EA8C(v92, sub_10017683C, 0);

  sub_10016C91C(v93, sub_1001769EC, 0);

  sub_10016D9D4(v94, sub_100176AA4, 0);

  sub_100169044(v95, sub_100176B60, 0);

  sub_10016CC74(v96, sub_100176C18, 0);

  sub_100169044(v97, sub_100176CDC, 0);

  sub_100169044(v98, sub_100176D94, 0);

  sub_100169044(v99, sub_100176E38, 0);

  v100 = v0[31];
  v101 = v0[32];
  sub_1000088DC(v1 + 28, v1[31]);
  v102 = (*(v101 + 24))(v100, v101);
  sub_10016E3DC(v102, sub_100176EDC, 0);

  sub_10016F494(v103, sub_100176F7C, 0);

  sub_10016E084(v104, sub_100177028, 0);

  sub_10016BF14(v105, sub_10017712C, 0);

  sub_10016DD2C(v106, sub_1001773B0, 0);

  return sub_100119498();
}

uint64_t sub_100171408(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354F50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = *(a1 + 48);
  sub_10016F860(a1, &v11[-v6]);
  v9 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
  swift_beginAccess();
  sub_100006C20(v8 + v9, v5, &qword_100354F50);
  sub_100259780(v7);
  swift_beginAccess();
  sub_10017E5D8(v7, v8 + v9, &qword_100354F50);
  swift_endAccess();
  sub_100259A38(v5);
  sub_100008FA0(v5, &qword_100354F50);
  return sub_100008FA0(v7, &qword_100354F50);
}

uint64_t sub_100171580(uint64_t result)
{
  v1 = *(*(result + 72) + 88);
  if (v1)
  {

    PassthroughSubject.send(_:)();

    result = swift_beginAccess();
    v2 = *(v1 + 144);
    v3 = *(v2 + 16);
    if (v3)
    {
      if (*(v2 + v3 + 31) == 3)
      {
        sub_100192410();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10017162C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 16);
  static Locale.autoupdatingCurrent.getter();
  if (v10)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  sub_100146DD4(v7, v12 | (v9 << 8) | v8, v11, v6);
  (*(v4 + 8))(v6, v3);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381C80);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Forwarded emergency start message request to messagesAgent", v16, 2u);
  }
}

uint64_t sub_100171800(uint64_t result)
{
  if (*(*(result + 112) + 104))
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_100171864(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  static Locale.autoupdatingCurrent.getter();
  sub_1001495AC(v7, v8, v9, v10, v6);
  (*(v4 + 8))(v6, v3);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000F53C(v11, qword_100381C80);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Forwarded roadside assistance start message request to messagesAgent", v14, 2u);
  }
}

void sub_100171A1C(uint64_t a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TransitionAlert: emergency requested", v5, 2u);
  }

  v6 = *(*(a1 + 64) + 32);
  if (*(v6 + 64) && (sub_100071A54(0, *(v6 + 80)) & 1) != 0)
  {
    byte_100361588 = 2;
    sub_100243E44(2uLL, 0x80u, sub_10017E7D8, 0);
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "TransitionAlert - Stewie emergency is not allowed, placing a call", v9, 2u);
    }

    sub_1002180D8(sub_10017E7DC, 0);
  }
}

void sub_100171BE4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "TransitionAlert: roadside requested", v7, 2u);
  }

  byte_100361588 = 2;
  sub_100243E44(v2, v3, sub_10017E7D8, 0);
}

uint64_t sub_100171D10(uint64_t a1, uint64_t a2)
{
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CB0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "targetTracksUpdateRequired", v6, 2u);
  }

  sub_10017E4F4(a2, v9);
  v7 = swift_allocObject();
  sub_10017E550(v9, v7 + 16);
  sub_100244E08(sub_10017E5AC, v7);
}

uint64_t sub_100171E58(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100361B80);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_100353A40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381D10);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Service plot received", v8, 2u);
  }

  if (a1)
  {
    sub_1000F3BF0(v4);
    v9 = type metadata accessor for TargetTracks(0);
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for TargetTracks(0);
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  sub_1001DEB60(v4);
  return sub_100008FA0(v4, &qword_100361B80);
}

uint64_t sub_100172038(void *a1, uint64_t a2, unint64_t a3)
{
  v47 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v48 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v17 - 8);
  v19 = &v46 - v18;
  v20 = type metadata accessor for ConnectionClosed(0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017E464(a2, v23);
  v24 = *&v23[*(v21 + 32)];
  if (sub_100071A54(0, v24))
  {
    v25 = *(a1[4] + 80);
    if (v25 != 2 && (v25 & 1) != 0 && !*v23)
    {
      v26 = *(a1[9] + 80);
      if (v26 != 2 && (v26 & 1) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v53 = a1;
    if ((sub_100071A54(1, v24) & 1) == 0)
    {
      v30 = sub_100071A54(3, v24);
      v31 = v53;
      if (v30)
      {
        v32 = v53[18];
        v33 = *(v32 + 56);
        if ((v33 + 512) < 0x8201u)
        {
          sub_1000040A8(&unk_100365610);
          sub_100009274(&qword_10035CF00, &unk_100365610);
          Subject<>.send()();
        }

        *(v32 + 56) = -32767;
        sub_100269074(v33);
        goto LABEL_33;
      }

      if ((sub_100071A54(4, v24) & 1) == 0)
      {
        goto LABEL_33;
      }

      v34 = *(v31[4] + 80);
      if (v34 == 2 || (v34 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1001DDADC(v19);

      v35 = type metadata accessor for TransmissionProgress(0);
      if ((*(*(v35 - 8) + 48))(v19, 1, v35) == 1)
      {
        sub_100008FA0(v19, &qword_100354FD8);
      }

      else
      {
        v36 = *&v19[*(v35 + 28)];
        sub_10000CA10(v19, type metadata accessor for TransmissionProgress);
        if (v36 == 100)
        {
          if (qword_100353A10 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_10000F53C(v37, qword_100381C80);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "Delay transition to FindMy by 2 seconds", v40, 2u);
          }

          sub_10001D630(0, &qword_10035BA10);
          v46 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v48 = *(v48 + 8);
          (v48)(v14, v11);
          v41 = swift_allocObject();
          swift_weakInit();
          aBlock[4] = sub_10017E4C8;
          aBlock[5] = v41;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001D2438;
          aBlock[3] = &unk_100334138;
          v42 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          v47 = sub_100071864();
          sub_1000040A8(&unk_100355D70);
          sub_100009274(&qword_10035BB50, &unk_100355D70);
          v43 = v52;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v44 = v46;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v42);

          (*(v51 + 8))(v7, v43);
          (*(v49 + 8))(v10, v50);
          (v48)(v16, v11);
          goto LABEL_33;
        }
      }

LABEL_31:

      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      goto LABEL_32;
    }

    v27 = *(v53[4] + 80);
    if (v27 != 2 && (v27 & 1) != 0 && !*v23)
    {
      v28 = v53[14];
      v29 = *(v28 + 168);
      if (v29 != 2 && (v29 & 1) != 0 && (*(v28 + 184) & 1) == 0)
      {
        aBlock[0] = *(v28 + 176);

        PassthroughSubject.send(_:)();
LABEL_32:
      }
    }
  }

LABEL_33:
  sub_100177864();
  return sub_10000CA10(v23, type metadata accessor for ConnectionClosed);
}

uint64_t sub_100172870()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);

    v2 = *(v1 + 80);

    if (v2 != 2 && (v2 & 1) != 0)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }
    }
  }

  return result;
}

uint64_t sub_100172998(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = *(a1 + 64);
  sub_100267F34(*(*(*(v5 + 72) + 56) + 136));
  sub_10025DFD8(*(*(*(v5 + 72) + 56) + 122) & 1);
  v6 = *(a1 + 112);
  sub_100062C4C(*(*(*(v5 + 72) + 56) + 122) & 1);

  sub_1001DDADC(v4);

  if (*(v6 + 248) == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 208);
  }

  sub_1001484B4(v4, v7, (*(v6 + 248) == 3) | *(v6 + 216) & 1);
  return sub_100008FA0(v4, &qword_100354FD8);
}

uint64_t sub_100172AD0(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + 104);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  sub_10025E230(v3, v4);

  v5 = *(v1 + 104);
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);

  sub_100062EA4(v6, v7);
}

uint64_t sub_100172B5C(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354FD8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v16 - v7;
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = *(*(a1 + 64) + 72);
  v12 = *(a1 + 144);
  v13 = OBJC_IVAR____TtC8SOSBuddy11TryOutModel__simulatedTransmissionProgress;
  swift_beginAccess();
  sub_100006C20(v12 + v13, v10, &qword_100354FD8);
  sub_100006C20(v10, v8, &qword_100354FD8);
  v14 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress;
  swift_beginAccess();
  sub_100006C20(v11 + v14, v5, &qword_100354FD8);

  sub_1001F08B0(v8);
  swift_beginAccess();
  sub_10017E5D8(v8, v11 + v14, &qword_100354FD8);
  swift_endAccess();
  sub_1001F0C14(v5);

  sub_100008FA0(v5, &qword_100354FD8);
  sub_100008FA0(v8, &qword_100354FD8);
  return sub_100008FA0(v10, &qword_100354FD8);
}

uint64_t sub_100172D34(uint64_t result)
{
  v1 = *(result + 144);
  if ((*(v1 + 56) & 0xC000) == 0)
  {
    sub_10024718C(3);
    v2 = *(v1 + 56);
    if (v2 != 0x8000)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v1 + 56) = 0x8000;
    return sub_100269074(v2);
  }

  return result;
}

void sub_100172DF4(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 32);
  if (*(v1 + 64))
  {
    if (sub_100071A54(3, *(v1 + 88)))
    {
      sub_100245850(3, sub_100245F40, 0);
    }
  }
}

void sub_100172E58(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100356518);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = *(*(a1 + 64) + 32);

  static DispatchTime.now()();
  v9 = type metadata accessor for DispatchTime();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
  swift_beginAccess();
  sub_100006C20(v8 + v10, v5, &qword_100356518);
  sub_1001FAB24(v7);
  swift_beginAccess();
  sub_10017E5D8(v7, v8 + v10, &qword_100356518);
  swift_endAccess();
  sub_1001FAED8(v5);

  sub_100008FA0(v5, &qword_100356518);
  sub_100008FA0(v7, &qword_100356518);
  sub_100245850(1, sub_100245F34, 0);
}

uint64_t sub_100173024(uint64_t a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "User acked end session screen", v5, 2u);
  }

  sub_10024718C(6);
  v6 = *(*(a1 + 64) + 32);
  if (*(v6 + 64))
  {
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = 5;
  }

  *(a1 + 369) = v7;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_1000040A8(&qword_100361958);
    v12 = String.init<A>(describing:)();
    v14 = sub_10017C9E8(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "lastDismissedReason = %s", v10, 0xCu);
    sub_100008964(v11);
  }

  return sub_100177864();
}

uint64_t sub_100173250(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "tryOutRequested for %s", v7, 0xCu);
    sub_100008964(v8);
  }

  v12 = *(a1 + 144);
  v13 = *(v12 + 56);
  if ((v13 & 0xC000) != 0 || (v3 == v13 ? (v14 = (v13 & 0x100) == 0) : (v14 = 1), v14))
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v12 + 56) = v3 | 0x100;
  return sub_100269074(v13);
}

void sub_100173438(uint64_t a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "cancelTryOutOfferRequested", v5, 2u);
  }

  v6 = *(a1 + 144);
  if ((*(v6 + 56) & 0xC000) == 0)
  {
    sub_10024718C(3);
    v7 = *(v6 + 56);
    if (v7 != 0x8000)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v6 + 56) = 0x8000;
    sub_100269074(v7);
  }
}

uint64_t sub_1001735B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_1000040A8(&qword_100355320);
  v6 = __chkstk_darwin(v5 - 8);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v42 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = *a2;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F53C(v16, qword_100381C80);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v47 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53[0] = v21;
    *v20 = 136446210;
    v52 = v15;
    sub_1000040A8(&qword_100359828);
    v22 = String.init<A>(describing:)();
    v24 = sub_10017C9E8(v22, v23, v53);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "startTryOutConnectionDemoRequested for: %{public}s", v20, 0xCu);
    sub_100008964(v21);
  }

  v51 = v14;
  UUID.init()();
  v49 = a1;
  v25 = *(a1 + 144);
  v26 = (v25 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__lastErrorLocalizedDescriptionToPresent);
  v28 = *(v25 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__lastErrorLocalizedDescriptionToPresent);
  v27 = *(v25 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__lastErrorLocalizedDescriptionToPresent + 8);
  if (v27)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *v26 = 0;
  v26[1] = 0;

  sub_10026A620(v28, v27);

  v43 = *(v10 + 16);
  v29 = v44;
  v30 = v9;
  v43(v44, v51, v9);
  (*(v10 + 56))(v29, 0, 1, v9);
  v31 = OBJC_IVAR____TtC8SOSBuddy11TryOutModel__pendingActivationRequestId;
  swift_beginAccess();
  v32 = v45;
  sub_100006C20(v25 + v31, v45, &qword_100355320);
  sub_100269D30(v29);
  swift_beginAccess();
  sub_10017E5D8(v29, v25 + v31, &qword_100355320);
  swift_endAccess();
  sub_10026A074(v32);
  sub_100008FA0(v32, &qword_100355320);
  sub_100008FA0(v29, &qword_100355320);
  v49 = *(v49 + 176);
  v33 = v47;
  if (v47 == 6)
  {
    v34 = 0;
  }

  else
  {
    v34 = v47;
  }

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v48;
  v37 = v51;
  v43(v48, v51, v30);
  v38 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v39 = v38 + v46;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  (*(v10 + 32))(v40 + v38, v36, v30);
  *(v40 + v39) = v33;

  sub_100243E44(v34, 0x40u, sub_10017E3B0, v40);

  (*(v10 + 8))(v37, v30);
}

uint64_t sub_100173B10(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381C80);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19[0] = v9;
      *v8 = 136446210;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, v19);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "activateTryOut failed: %{public}s", v8, 0xCu);
      sub_100008964(v9);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v13 = [objc_opt_self() mainBundle];
      v20._object = 0x8000000100295150;
      v14._countAndFlagsBits = 0xD000000000000025;
      v14._object = 0x800000010029FCA0;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v20._countAndFlagsBits = 0xD000000000000022;
      v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v20);

      sub_10026814C(a3, v16._countAndFlagsBits, v16._object);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      sub_100268784(a3, a4);
    }
  }

  return result;
}

void sub_100173DE8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "stewieAppRequested for %s", v7, 0xCu);
    sub_100008964(v8);
  }

  if (v3 > 2)
  {
    if ((v3 - 4) >= 2)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Requesting tryOut service", v22, 2u);
      }

      v24 = 3;

      PassthroughSubject.send(_:)();
    }

    else
    {
      sub_100126130(a1);
    }
  }

  else
  {
    if (!v3)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Requesting emergency", v19, 2u);
      }

      v15 = sub_100174138;
      v16 = 0;
      goto LABEL_16;
    }

    if (v3 == 1)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Requesting roadside assistance", v14, 2u);
      }

      v15 = sub_100174144;
      v16 = 1;
LABEL_16:
      sub_100243E44(v16, 0x80u, v15, 0);
      return;
    }

    sub_1000833A4();
  }
}

void sub_100174150(uint64_t a1, const char *a2)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = a1 == 0;

    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 8u);
  }

  else
  {
  }
}

uint64_t sub_1001742A4()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "emergencyCallRequested", v3, 2u);
  }

  return sub_1002180D8(sub_10017E7DC, 0);
}

void sub_1001743A4(char a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Emergency call request, success: %{BOOL}d", v4, 8u);
  }
}

uint64_t sub_1001744D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = qword_100353A10;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381C80);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "switchFromEmergencyToRoadsideRequested", v9, 2u);
  }

  byte_100361588 = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10017E88C;
  *(v10 + 24) = v4;

  sub_100243E44(3uLL, 0x80u, sub_10017E2C4, v10);
}

uint64_t sub_100174660(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = qword_100353A10;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "switchFromRoadsideToEmergencyRequested", v10, 2u);
  }

  v11 = *(*(a1 + 64) + 32);
  if (*(v11 + 64) && (sub_100071A54(0, *(v11 + 80)) & 1) != 0)
  {
    byte_100361588 = 1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10017E25C;
    *(v12 + 24) = v5;

    sub_100243E44(2uLL, 0x80u, sub_10017E268, v12);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "switchFromRoadsideToEmergencyRequested - Stewie emergency is not allowed, placing a call", v15, 2u);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = sub_10017E25C;
    *(v16 + 24) = v5;

    sub_1002180D8(sub_10017E260, v16);
  }
}

uint64_t sub_1001748D4(char a1, uint64_t (*a2)(void))
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Emergency call request, success: %{BOOL}d", v7, 8u);
  }

  return a2(a1 & 1);
}

void sub_1001749E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "selectRoadsideProviderRequested", v8, 2u);
  }

  sub_1002444F8(v2, v3, v4);
}

uint64_t sub_100174AE8(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = a2[1];
  if (*(*(result + 72) + 88))
  {

    sub_1000B90C8(v3, v4);
  }

  if (*(*(v2 + 112) + 104))
  {

    sub_1000B90C8(v3, v4);
  }

  return result;
}

void sub_100174B80(uint64_t a1, char *a2)
{
  v2 = *a2;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381C80);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "User acted upon offer: %s", v6, 0xCu);
    sub_100008964(v7);
  }

  if (v2)
  {
    sub_10024718C(7);
  }

  else
  {
    sub_100119ECC();
  }
}

void sub_100174D0C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_100082320();
  sub_100082374();
  if (BidirectionalCollection<>.starts<A>(with:)())
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_10024718C(7);
        return;
      }

      sub_10024718C(8);
      v3 = 1;
      goto LABEL_11;
    }

    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      v3 = 0;
LABEL_11:
      sub_1001682B4(v3);
      return;
    }

    v4 = swift_allocObject();
    swift_weakInit();

    sub_10012D3B4(sub_10017E888, v4);
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      sub_10002895C();
    }

    else
    {
      sub_10002894C();
    }
  }
}

uint64_t sub_100174EAC()
{
  v0 = swift_allocObject();
  swift_weakInit();

  sub_10012D3B4(sub_10017E888, v0);
}

uint64_t sub_100174F2C(uint64_t result, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(result + 48);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  if (v5 != *a2 || v6 != v3)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    sub_100258B5C(v5, v6);

    sub_1000040A8(&unk_100365610);
    Subject<>.send()();
  }

  return result;
}

uint64_t sub_100175050(uint64_t result, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(result + 48);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  if (v5 != *a2 || v6 != v3)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    *(v4 + 64) = v2;
    *(v4 + 72) = v3;
    sub_100258F64(v5, v6);

    sub_1000040A8(&unk_100365610);
    Subject<>.send()();
  }

  return result;
}

void sub_100175174(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  v3[2] = a2[2];
  sub_100178318(v3);
}

void sub_1001751B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3[0] = *a2;
  v3[1] = v2;
  v3[2] = *(a2 + 32);
  v4 = *(a2 + 48);
  sub_100178648(v3);
}

uint64_t sub_1001751FC(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return sub_100178944(v4);
}

void sub_1001752C0(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_100179278(v2 | *a2);
}

void sub_100175338(uint64_t a1)
{
  v2 = *(a1 + 88);
  sub_100268E30(*(v2 + 48) & 1);
  v3 = *(v2 + 48);
  if (v3 != 2)
  {
    if ((v3 & 1) == 0 || (sub_100177540(), v4 = *(v2 + 48), v4 != 2) && (v4 & 1) == 0)
    {
      v5 = *(a1 + 368);
      if (v5 != 2 && (v5 & 1) != 0)
      {
        *(a1 + 368) = 2;
        v6 = *(*(a1 + 64) + 32);
        if (*(v6 + 64))
        {
          v7 = *(v6 + 56) == 5;
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          if (qword_100353A10 != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          sub_10000F53C(v11, qword_100381C80);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&_mh_execute_header, v12, v13, "Executing delayed bringForegroundOnUnlock request", v14, 2u);
          }

          sub_10012D3B4(sub_10012DAF4, 0);
        }

        else
        {
          if (qword_100353A10 != -1)
          {
            swift_once();
          }

          v8 = type metadata accessor for Logger();
          sub_10000F53C(v8, qword_100381C80);
          oslog = Logger.logObject.getter();
          v9 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(oslog, v9))
          {
            v10 = swift_slowAlloc();
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, oslog, v9, "Ignoring delayed bringForegroundOnUnlock request, Stewie is off already", v10, 2u);
          }
        }
      }
    }
  }
}

void sub_10017557C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1000088DC((a1 + 272), *(a1 + 296));
  sub_1001A7A14(v2);
}

void sub_10017561C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000040A8(&qword_100354F50);
  v4 = __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381C80);
  sub_100006C20(a2, v8, &qword_100354F50);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_100006C20(v8, v6, &qword_100354F50);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_100008FA0(v8, &qword_100354F50);
    v17 = sub_10017C9E8(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Banner dismissed by user in mode: %s", v12, 0xCu);
    sub_100008964(v13);
  }

  else
  {

    sub_100008FA0(v8, &qword_100354F50);
  }
}

uint64_t sub_10017586C(uint64_t a1)
{
  if (*(a1 + 369) == 6)
  {
    v2 = *(*(a1 + 64) + 32);
    if (*(v2 + 64))
    {
      v3 = *(v2 + 56);
    }

    else
    {
      v3 = 5;
    }

    *(a1 + 369) = v3;
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381C80);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v29[0] = v8;
      *v7 = 136315138;
      v9 = *(a1 + 369);
      if (v9 == 6)
      {
        LOBYTE(v9) = 5;
      }

      v28[0] = v9;
      sub_1000040A8(&qword_100361958);
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, v29);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Initializing lastDismissedReason with %s", v7, 0xCu);
      sub_100008964(v8);
    }
  }

  v13 = *(a1 + 64);
  v14 = *(v13 + 32);
  if ((!*(v14 + 64) || *(v14 + 56) == 5) && *(a1 + 369) - 5 >= 2)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F53C(v15, qword_100381C80);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v29[0] = v19;
      *v18 = 136315138;
      v20 = *(a1 + 369);
      if (v20 == 6)
      {
        LOBYTE(v20) = 5;
      }

      v28[0] = v20;
      sub_1000040A8(&qword_100361958);
      v21 = String.init<A>(describing:)();
      v23 = sub_10017C9E8(v21, v22, v29);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Stewie is on, resetting lastDismissedReason (it was %s)", v18, 0xCu);
      sub_100008964(v19);
    }

    *(a1 + 369) = 5;
    v14 = *(v13 + 32);
  }

  v24 = *(v14 + 88);
  v25 = *(v14 + 120);
  v29[3] = *(v14 + 104);
  v29[4] = v25;
  v30 = *(v14 + 136);
  v26 = *(v14 + 72);
  v29[0] = *(v14 + 56);
  v29[1] = v26;
  v29[2] = v24;
  sub_100006C20(v29, v28, &unk_10035CEF0);
  sub_100268E90(v29);
  sub_100008FA0(v29, &unk_10035CEF0);
  return sub_100177864();
}

void sub_100175C1C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (*(v1 + 64))
  {
    v3 = *(v1 + 88);
    if (!*(v3 + 16))
    {
      v4 = *(*(a1 + 64) + 32);
      if (!*(v4 + 64) || (sub_100204870(v3, *(v4 + 88)) & 1) == 0)
      {
        if (qword_100353AC0 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_10000F53C(v5, qword_100381E90);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Active services changed to 0 on the monitor and are out of sync with caModels", v8, 2u);
        }

        sub_1001E52FC(0, 0);
      }
    }
  }
}

void sub_100175D3C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  swift_beginAccess();
  sub_100165F14(v3 & 1);
  swift_endAccess();
  v4 = *(a1 + 144);
  *(v4 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__mainSceneIsForeground) = v3;
  sub_1002694DC();
  if (v3 != 2 && (v3 & 1) == 0)
  {
    if ((*(v4 + 56) & 0xC000) == 0)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    sub_100177540();
  }
}

uint64_t sub_100175E30(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 80);
  v2 = *(v1 + 64);
  v4[0] = *(v1 + 48);
  v4[1] = v2;
  v5 = *(v1 + 80);
  sub_10025E4A4(v4);
  return sub_100177864();
}

uint64_t sub_100175E80(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 88);
  v2 = v1[4];
  v4 = v1[3];
  v5[0] = v2;
  *(v5 + 10) = *(v1 + 74);
  sub_1000628BC(&v4);
  return sub_100177864();
}

uint64_t sub_100175ED4()
{

  sub_1001444A4(v0);
}

uint64_t sub_100175F1C(uint64_t a1)
{
  v1 = *(a1 + 344);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentTargetInGreenZone) = sub_100071A54(0, *(*(*(a1 + 64) + 56) + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)) & 1;

  sub_1001445C0();
}

uint64_t sub_100175F88(uint64_t a1)
{
  v1 = 0;
  v2 = *(*(a1 + 64) + 32);
  v3 = *(v2 + 56);
  v4 = *(v2 + 120);
  v13 = *(v2 + 104);
  v14 = v4;
  v15 = *(v2 + 136);
  v5 = *(a1 + 344);
  v6 = *(v2 + 88);
  v7 = *(v2 + 72);
  v10 = v3;
  v11 = v7;
  v12 = v6;
  if (*(&v3 + 1) && v10 == 5)
  {
    v1 = BYTE1(v11) == 1;
  }

  *(v5 + 24) = v1;
  sub_100006C20(&v10, v9, &unk_10035CEF0);
  sub_1001445C0();
  return sub_100008FA0(&v10, &unk_10035CEF0);
}

uint64_t sub_10017604C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v2;
  v13 = *(a2 + 64);
  v3 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v3;
  v4 = *(*(result + 336) + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_1000089B0(v6, v9);
      v7 = v10;
      v8 = v11;
      sub_1000088DC(v9, v10);
      (*(v8 + 88))(v12, v7, v8);
      result = sub_100008964(v9);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_100176100(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = *(a1 + 336);
  v6 = *(*(a1 + 64) + 40);
  v7 = *(v5 + 24);
  v8 = *(v7 + 16);
  if (!v8)
  {

    v13 = *(v7 + 16);
    if (!v13)
    {
    }

    goto LABEL_7;
  }

  v9 = v7 + 32;

  do
  {
    sub_1000089B0(v9, v20);
    v10 = v21;
    v11 = v22;
    sub_1000088DC(v20, v21);
    v12 = v6[4];
    v23 = v6[3];
    v24[0] = v12;
    *(v24 + 9) = *(v6 + 73);
    (*(v11 + 8))(&v23, v10, v11);
    sub_100008964(v20);
    v9 += 40;
    --v8;
  }

  while (v8);
  v7 = *(v5 + 24);
  v13 = *(v7 + 16);
  if (v13)
  {
LABEL_7:
    v14 = OBJC_IVAR____TtC8SOSBuddy11TargetModel_link;
    v15 = v7 + 32;
    swift_beginAccess();
    do
    {
      sub_1000089B0(v15, v20);
      v16 = v21;
      v17 = v22;
      sub_1000088DC(v20, v21);
      sub_100006C20(v6 + v14, v4, &qword_100359798);
      (*(v17 + 16))(v4, v16, v17);
      sub_100008FA0(v4, &qword_100359798);
      sub_100008964(v20);
      v15 += 40;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1001762F0(uint64_t result)
{
  v1 = *(*(result + 336) + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(result + 64) + 24);
    v4 = v1 + 32;

    do
    {
      sub_1000089B0(v4, v7);
      v5 = v8;
      v6 = v9;
      sub_1000088DC(v7, v8);
      (*(v6 + 24))(v3, v5, v6);
      sub_100008964(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1001763A4(uint64_t result)
{
  v1 = *(*(result + 336) + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(result + 64) + 72);
    v4 = v1 + 32;

    do
    {
      sub_1000089B0(v4, v7);
      v5 = v8;
      v6 = v9;
      sub_1000088DC(v7, v8);
      (*(v6 + 32))(v3, v5, v6);
      sub_100008964(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100176458(uint64_t result)
{
  v1 = *(*(result + 336) + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(result + 64) + 96);
    v4 = v1 + 32;

    do
    {
      sub_1000089B0(v4, v7);
      v5 = v8;
      v6 = v9;
      sub_1000088DC(v7, v8);
      (*(v6 + 40))(v3, v5, v6);
      sub_100008964(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10017650C(uint64_t result)
{
  v1 = *(*(result + 336) + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(result + 64) + 56);
    v4 = v1 + 32;

    do
    {
      sub_1000089B0(v4, v7);
      v5 = v8;
      v6 = v9;
      sub_1000088DC(v7, v8);
      (*(v6 + 48))(v3, v5, v6);
      sub_100008964(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1001765C0(uint64_t result)
{
  v1 = *(*(result + 336) + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(result + 64) + 64);
    v4 = v1 + 32;

    do
    {
      sub_1000089B0(v4, v7);
      v5 = v8;
      v6 = v9;
      sub_1000088DC(v7, v8);
      (*(v6 + 56))(v3, v5, v6);
      sub_100008964(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100176674(uint64_t result)
{
  v3 = *(*(result + 64) + 80);
  v4 = *(v3 + 64);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    v19 = v1;
    v20 = v2;
    v5 = *(result + 336);
    v6 = *(v3 + 56);
    v7 = *(v3 + 72);
    v8 = *(v3 + 80) & 0x101;
    v17[0] = *(v3 + 48);
    v17[1] = v6;
    v17[2] = 1;
    v17[3] = v7;
    v17[4] = v8;
    v18 = 0;
    v9 = *(v5 + 24);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 32;
      do
      {
        sub_1000089B0(v11, v14);
        v12 = v15;
        v13 = v16;
        sub_1000088DC(v14, v15);
        (*(v13 + 96))(v17, v12, v13);
        result = sub_100008964(v14);
        v11 += 40;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_100176754(uint64_t result)
{
  v3 = *(*(result + 64) + 88);
  v4 = *(v3 + 56);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    v21 = v1;
    v22 = v2;
    v5 = *(result + 336);
    v6 = *(v3 + 48);
    v7 = *(v3 + 88);
    v8 = *(v3 + 64);
    v9 = *(v3 + 80);
    v10 = *(v3 + 72) & 1;
    v19[0] = v6;
    v19[1] = 1;
    v19[2] = v8;
    v19[3] = v10;
    v19[4] = v9;
    v20 = v7 & 0x101 | 0x8000;
    v11 = *(v5 + 24);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 32;
      do
      {
        sub_1000089B0(v13, v16);
        v14 = v17;
        v15 = v18;
        sub_1000088DC(v16, v17);
        (*(v15 + 96))(v19, v14, v15);
        result = sub_100008964(v16);
        v13 += 40;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t sub_10017683C(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = *(a1 + 336);
  v6 = *(a1 + 64);
  v7 = *(v6 + 32);
  v8 = *(v7 + 104);
  v21[2] = *(v7 + 88);
  v21[3] = v8;
  v21[4] = *(v7 + 120);
  v22 = *(v7 + 136);
  v9 = *(v7 + 72);
  v21[0] = *(v7 + 56);
  v21[1] = v9;
  v10 = *(v6 + 112);
  v11 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
  swift_beginAccess();
  sub_100006C20(v10 + v11, v4, &qword_100356510);
  v12 = *(v5 + 24);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    sub_100006C20(v21, v18, &unk_10035CEF0);
    do
    {
      sub_1000089B0(v14, v18);
      v15 = v19;
      v16 = v20;
      sub_1000088DC(v18, v19);
      (*(v16 + 64))(v21, v4, v15, v16);
      sub_100008964(v18);
      v14 += 40;
      --v13;
    }

    while (v13);
    sub_100008FA0(v21, &unk_10035CEF0);
  }

  return sub_100008FA0(v4, &qword_100356510);
}

uint64_t sub_1001769EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(result + 336);
  v4 = *(a2 + 40) & 0xFFFFFFFFFFFFFF9;
  v5 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v5;
  v15 = v2;
  v16 = v4;
  v17 = 0;
  v6 = *(v3 + 24);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      sub_1000089B0(v8, v11);
      v9 = v12;
      v10 = v13;
      sub_1000088DC(v11, v12);
      (*(v10 + 72))(v14, v9, v10);
      result = sub_100008964(v11);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100176AA4(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(a2 + 1);
  v3 = *(result + 336);
  v12[0] = *a2;
  v12[1] = v2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0x4000000000000000;
  v4 = *(v3 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_1000089B0(v6, v9);
      v7 = v10;
      v8 = v11;
      sub_1000088DC(v9, v10);
      (*(v8 + 72))(v12, v7, v8);
      result = sub_100008964(v9);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_100176B60(uint64_t result)
{
  v1 = *(*(result + 72) + 88);
  if (v1)
  {
    v2 = *(*(result + 336) + 24);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 32;

      do
      {
        sub_1000089B0(v4, v7);
        v5 = v8;
        v6 = v9;
        sub_1000088DC(v7, v8);
        (*(v6 + 80))(v1, v5, v6);
        sub_100008964(v7);
        v4 += 40;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_100176C18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(result + 336);
  v4 = *(a2 + 40) & 0xFFFFFFFFFFFFFF9;
  v5 = *(a2 + 48) & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v6 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v6;
  v16 = v2;
  v17 = v4;
  v18 = v5;
  v7 = *(v3 + 24);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_1000089B0(v9, v12);
      v10 = v13;
      v11 = v14;
      sub_1000088DC(v12, v13);
      (*(v11 + 72))(v15, v10, v11);
      result = sub_100008964(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100176CDC(uint64_t result)
{
  v1 = *(*(result + 112) + 104);
  if (v1)
  {
    v2 = *(*(result + 336) + 24);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 32;

      do
      {
        sub_1000089B0(v4, v7);
        v5 = v8;
        v6 = v9;
        sub_1000088DC(v7, v8);
        (*(v6 + 80))(v1, v5, v6);
        sub_100008964(v7);
        v4 += 40;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_100176D94(uint64_t result)
{
  v1 = *(*(result + 336) + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(result + 88) + 48);
    v4 = v1 + 32;
    do
    {
      sub_1000089B0(v4, v7);
      v5 = v8;
      v6 = v9;
      sub_1000088DC(v7, v8);
      (*(v6 + 104))(v3 & 1, v5, v6);
      result = sub_100008964(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100176E38(uint64_t a1)
{
  result = sub_100179A30();
  if (result)
  {
    v3 = *(*(a1 + 336) + 24);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;
      do
      {
        sub_1000089B0(v5, v8);
        v6 = v9;
        v7 = v10;
        sub_1000088DC(v8, v9);
        (*(v7 + 112))(v6, v7);
        result = sub_100008964(v8);
        v5 += 40;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_100176EDC(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(*(result + 336) + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = v2 + 32;
    do
    {
      sub_1000089B0(v5, v8);
      v6 = v9;
      v7 = v10;
      sub_1000088DC(v8, v9);
      (*(v7 + 120))(v4, v6, v7);
      result = sub_100008964(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100176F7C(uint64_t result, _OWORD *a2)
{
  v2 = a2[1];
  v11[0] = *a2;
  v11[1] = v2;
  v11[2] = a2[2];
  v3 = *(*(result + 336) + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1000089B0(v5, v8);
      v6 = v9;
      v7 = v10;
      sub_1000088DC(v8, v9);
      (*(v7 + 128))(v11, v6, v7);
      result = sub_100008964(v8);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100177028(uint64_t a1, uint64_t a2)
{
  v2 = 0x4010302uLL >> (8 * *(a2 + 1));
  sub_1000040A8(&qword_100358320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = 0x696F507972746E65;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_100108D60(v2);
  v4 = String._bridgeToObjectiveC()();

  *(inited + 48) = v4;
  v5 = sub_10025663C(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &qword_100358328);
  sub_10017EEA8(7, v5);
}

uint64_t sub_10017712C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_100082320();
  sub_100082374();
  result = BidirectionalCollection<>.starts<A>(with:)();
  if (result)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return result;
      }

      sub_1000040A8(&qword_100358320);
      inited = swift_initStackObject();
      *(inited + 32) = 0x696F507972746E65;
      v5 = inited + 32;
      *(inited + 16) = xmmword_100279160;
      *(inited + 40) = 0xEA0000000000746ELL;
    }

    else
    {
      v6 = BidirectionalCollection<>.starts<A>(with:)();
      sub_1000040A8(&qword_100358320);
      inited = swift_initStackObject();
      if (v6)
      {
        *(inited + 32) = 0x696F507972746E65;
        v5 = inited + 32;
        *(inited + 16) = xmmword_100279160;
      }

      else
      {
        *(inited + 16) = xmmword_100279160;
        *(inited + 32) = 0x696F507972746E65;
        v5 = inited + 32;
      }

      *(inited + 40) = 0xEA0000000000746ELL;
    }

    *(inited + 48) = String._bridgeToObjectiveC()();
    v7 = sub_10025663C(inited);
    swift_setDeallocating();
    sub_100008FA0(v5, &qword_100358328);
    sub_10017EEA8(7, v7);
  }

  return result;
}

void sub_1001773B0(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 - 1 >= 3)
  {
    sub_1000040A8(&qword_100358320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100279160;
    *(inited + 32) = 0x696F507972746E65;
    *(inited + 40) = 0xEA0000000000746ELL;
    *(inited + 48) = String._bridgeToObjectiveC()();
    v3 = sub_10025663C(inited);
    swift_setDeallocating();
    sub_100008FA0(inited + 32, &qword_100358328);
    sub_10017EEA8(7, v3);
  }
}

void sub_100177540()
{
  v1 = sub_1000040A8(&qword_100356518);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  v7 = v0[8];
  v8 = *(v7 + 32);
  if (*(v8 + 64) && (sub_100071A54(0, *(v8 + 88)) & 1) != 0 && *(v0[5] + 40) == 3)
  {
    v9 = v0[9];
    if (*(v9 + 128) != 3 && (*(v9 + 128) & 0x100) == 0)
    {
      if (*(v9 + 96) <= 1u && *(v9 + 96))
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      if (*(v9 + 88))
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v11 = *(v7 + 32);
    if (*(v11 + 64))
    {
      if ((sub_100071A54(1, *(v11 + 88)) & 1) != 0 && *(v0[5] + 40) == 8)
      {
        v12 = v0[14];
        if (*(v12 + 248) != 3 && (*(v12 + 249) & 1) == 0 && *(v12 + 104))
        {
LABEL_23:

          v14 = sub_1000BAF8C();

          if (v14)
          {
            v15 = *(v7 + 32);

            static DispatchTime.now()();
            v16 = type metadata accessor for DispatchTime();
            (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
            v17 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
            swift_beginAccess();
            sub_100006C20(v15 + v17, v4, &qword_100356518);
            sub_1001FAB24(v6);
            swift_beginAccess();
            sub_10017E5D8(v6, v15 + v17, &qword_100356518);
            swift_endAccess();
            sub_1001FAED8(v4);

            sub_100008FA0(v4, &qword_100356518);
            sub_100008FA0(v6, &qword_100356518);
            sub_100245850(1, sub_100245F34, 0);
          }
        }
      }
    }
  }
}

uint64_t sub_100177864()
{
  v1 = v0[5];
  v2 = v0[8];
  v3 = *(v2 + 32);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = *(v3 + 73);
  if (v5)
  {
    v7 = v4 == 5;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 && v6 == 1 && sub_100178288() == 2;
  v10 = *(v1 + 41);
  if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v1 + 41) = v9;
  result = sub_10012DE14(v10);
  v12 = *(v2 + 32);
  v13 = *(v12 + 56);
  v30 = *(v12 + 136);
  v14 = *(v12 + 120);
  v15 = *(v12 + 88);
  v28 = *(v12 + 104);
  v29 = v14;
  v16 = *(v12 + 72);
  v25 = v13;
  v26 = v16;
  v27 = v15;
  v33 = v28;
  v34 = v14;
  v35 = v30;
  v31 = *(v12 + 72);
  v32 = v15;
  if (*(&v13 + 1))
  {
    v36[0] = v13;
    v36[3] = v33;
    v36[4] = v34;
    v37 = v35;
    v36[2] = v32;
    v36[1] = v31;
    v17 = v0[31];
    v18 = v0[32];
    sub_1000088DC(v0 + 28, v17);
    v19 = *(v18 + 96);
    v23[3] = v28;
    v23[4] = v29;
    v24 = v30;
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    sub_10008A64C(v23, v22);
    v19(v17, v18);
    v20 = sub_100177AD0(v36);
    sub_100008FA0(&v25, &unk_10035CEF0);
    v21 = *(v1 + 40);
    if (v21 != v20)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v1 + 40) = v20;
    return sub_10012DBF8(v21);
  }

  return result;
}

uint64_t sub_100177AD0(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionClosed(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v48[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100356510);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48[-1] - v10;
  v12 = &off_100367000;
  if (*a1 != 5 || (v13 = *(*(v47 + 64) + 112), v14 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed, swift_beginAccess(), sub_100006C20(v13 + v14, v11, &qword_100356510), LODWORD(v13) = (*(v3 + 48))(v11, 1, v2), sub_100008FA0(v11, &qword_100356510), v12 = &off_100367000, v13 != 1))
  {
    v19 = *(v47 + 64);
    v20 = *(v19 + 112);
    v21 = v12[94];
    swift_beginAccess();
    sub_100006C20(v21 + v20, v9, &qword_100356510);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      sub_100008FA0(v9, &qword_100356510);
      v22 = *(v19 + 32);
      v23 = *(v22 + 56);
      if (*(v22 + 64))
      {
        v24 = v23 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (!v24 && v23 != 5)
      {
        v26 = *(v47 + 369);
        result = 1;
        if (v26 == 6 || v26 == 5 || v23 != v26)
        {
          return result;
        }
      }
    }

    else
    {
      sub_10002B3E0(v9, v5);
      v27 = sub_100233FEC(&off_100323610);
      v28 = sub_10016FEA4(v27, *&v5[*(v2 + 24)]);

      if (v28)
      {
        sub_10000CA10(v5, type metadata accessor for ConnectionClosed);
      }

      else
      {
        v29 = *v5;
        if (v29 == 12)
        {
          sub_10000CA10(v5, type metadata accessor for ConnectionClosed);
          return 1;
        }

        sub_10000CA10(v5, type metadata accessor for ConnectionClosed);
        if (v29)
        {
          return 1;
        }
      }
    }

    if ((*(*(v47 + 144) + 56) & 0xC100) != 0)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }

  result = *(a1 + 17);
  if (!*(a1 + 17))
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F53C(v30, qword_100381C80);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_43;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Inconsistent state: transport == .unknown when status == .on";
    goto LABEL_42;
  }

  if (result != 1)
  {
    return result;
  }

  v16 = *(a1 + 32);
  if (sub_100071A54(0, v16))
  {
    v17 = *(v47 + 72);
    if (*(v17 + 128))
    {
      v18 = *(v17 + 128) == 3;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      result = 4;
    }

    else
    {
      result = 5;
    }

    if (!*(v17 + 128))
    {
      if (*(v17 + 96) < 2u)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    return result;
  }

  if (sub_100071A54(1, v16))
  {
    if (*(*(v47 + 112) + 248))
    {
      v35 = *(*(v47 + 112) + 248) == 3;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return 8;
    }

    else
    {
      return 5;
    }
  }

  if (sub_100071A54(4, v16))
  {
    return 9;
  }

  if (sub_100071A54(2, v16))
  {
    return 6;
  }

  if ((sub_100071A54(3, v16) & 1) == 0)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000F53C(v38, qword_100381C80);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_43;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Inconsistent state: no known active services when status == .on";
LABEL_42:
    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

LABEL_43:

    return 0;
  }

  v36 = *(v47 + 144);
  v37 = *(v36 + 56);
  if (v37 >> 9 <= 0x7E && (v37 & 0xC000) == 0x4000)
  {
    if ((v37 - 1) >= 6u)
    {
      return 11;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000F53C(v39, qword_100381C80);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48[0] = v43;
      *v42 = 136315138;
      v49 = *(v36 + 56);
      sub_1000040A8(&qword_1003618D0);
      v44 = String.init<A>(describing:)();
      v46 = sub_10017C9E8(v44, v45, v48);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Inconsistent state: tryOutModel state (%s does not match stewieModel state (.tryOut service is active), falling back to .explorer stage", v42, 0xCu);
      sub_100008964(v43);
    }

    return 6;
  }
}

uint64_t sub_1001781D0(char a1)
{
  LODWORD(v2) = *(v1[5] + 40);
  if (a1)
  {
    if (v2 != 8)
    {
      return 0;
    }

    v3 = *(v1[14] + 104);
    if (!v3)
    {
      return 0;
    }

    swift_beginAccess();
    v2 = *(v3 + 144);
    v4 = *(v2 + 16);
    if (v4)
    {
      return *(v2 + v4 + 31) != 4;
    }

    __break(1u);
  }

  if (v2 != 3)
  {
    return 0;
  }

  v5 = *(v1[9] + 88);
  if (!v5)
  {
    return 0;
  }

  result = swift_beginAccess();
  v2 = *(v5 + 144);
  v4 = *(v2 + 16);
  if (v4)
  {
    return *(v2 + v4 + 31) != 4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100178288()
{
  if (*(*(v0 + 40) + 40) == 3)
  {
    v1 = *(*(v0 + 72) + 88);
    if (v1)
    {
      result = swift_beginAccess();
      v3 = *(v1 + 144);
      v4 = *(v3 + 16);
      if (!v4)
      {
        __break(1u);
        return result;
      }

      if (*(v3 + v4 + 31) != 4)
      {
        return 0;
      }
    }
  }

  if (sub_1001781D0(1))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_100178318(unsigned __int8 *a1)
{
  v2 = v1;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  sub_10012C128(a1, &v29);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_10012C184(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446210;
    v9 = *(a1 + 1);
    v29 = *a1;
    v30 = v9;
    v31 = *(a1 + 2);
    sub_10012C128(a1, v27);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v28);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleEmergencyRequestStewie: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v29 = v16;
    *v15 = 136446210;
    v27[0] = *(v2[5] + 40);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, &v29);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "handleEmergencyRequestStewie: current stage: %{public}s", v15, 0xCu);
    sub_100008964(v16);
  }

  sub_100267BD0();
  sub_100192410();
  v20 = *(a1 + 1);
  v21 = a1[16];
  v22 = *(a1 + 3);
  v23 = a1[32];
  if (a1[33])
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  *&v29 = *a1;
  *(&v29 + 1) = v20;
  *&v30 = v21;
  *(&v30 + 1) = v22;
  LOWORD(v31) = v24 | v23;
  sub_10025E7E4(&v29);
  v25 = v2[31];
  v26 = v2[32];
  sub_1000088DC(v2 + 28, v25);
  (*(v26 + 120))(0, (a1[35] & 1) == 0, 0, v25, v26);
  sub_100179714(a1[36]);
  sub_10024718C(2);
  sub_1001E52FC(0, 0);
}

void sub_100178648(uint64_t a1)
{
  v2 = v1;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  sub_10012C078(a1, &v28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_10012C0D4(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446210;
    v9 = *(a1 + 16);
    v28 = *a1;
    v29 = v9;
    v30 = *(a1 + 32);
    v31 = *(a1 + 48);
    sub_10012C078(a1, v26);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleRoadsideAssistanceRequestStewie: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v28 = v16;
    *v15 = 136446210;
    v26[0] = *(*(v2 + 40) + 40);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, &v28);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "handleRoadsideAssistanceRequestStewie: current stage: %{public}s", v15, 0xCu);
    sub_100008964(v16);
  }

  sub_100267BD0();
  sub_100192410();
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  if (*(a1 + 41))
  {
    v25 = 256;
  }

  else
  {
    v25 = 0;
  }

  *&v28 = *a1;
  *(&v28 + 1) = v20;
  *&v29 = v21;
  *(&v29 + 1) = v22;
  *&v30 = v23;
  WORD4(v30) = v25 | v24;
  sub_1000623E8(&v28);
  sub_100179714(*(a1 + 43));
  sub_10024718C(2);
  sub_1001E52FC(0, 0);
}

uint64_t sub_100178944(_OWORD *a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_10017CFAC(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = a1[1];
    v16[0] = *a1;
    v16[1] = v7;
    v16[2] = a1[2];

    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleAlertRequest: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 40) = v13;
  *(v12 + 56) = a1[2];
  sub_10017D04C(a1, v16);

  sub_10006399C(sub_10017D040, v12);
}

uint64_t sub_100178B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100178C2C(a1, *(a3 + 8), *(a3 + 16), v6);
    sub_100178C2C(a1, *(a3 + 24), *(a3 + 32), v7);
    sub_10017DBDC(a3, v6, v7);
    sub_100008FA0(v7, &qword_1003580C0);
    sub_100008FA0(v6, &qword_1003580C0);
  }

  return result;
}

uint64_t sub_100178C2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if ((a3 & 1) != 0 || (v5 = result, !*(result + 16)))
  {
    v9 = 0;
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v6 = a4;
    result = sub_1001921C8(a2);
    if (v7)
    {
      v8 = *(v5 + 56) + 40 * result;
      v15 = *v8;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 25);
      v12 = *(v8 + 32);
      v13 = 256;
      if (!v11)
      {
        v13 = 0;
      }

      v14 = v13 | v10;

      v4 = v15;
      a4 = v6;
    }

    else
    {
      v9 = 0;
      v14 = 0;
      v12 = 0;
      a4 = v6;
      v4 = 0uLL;
    }
  }

  *a4 = v4;
  *(a4 + 16) = v9;
  *(a4 + 24) = v14;
  *(a4 + 32) = v12;
  return result;
}

uint64_t sub_100178CFC(char a1, uint64_t a2)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleOfferRequest: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a2;

  sub_100179714(0);
  sub_10024718C(2);
  sub_1001E52FC(sub_10017CF9C, v13);
}

uint64_t sub_100178F1C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100028788(a2 & 1);
  }

  return result;
}

void sub_100178FA4(char a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381C80);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[1] = a2;
    v24 = v10;
    *v9 = 136446210;
    LOBYTE(v23[0]) = a1 & 1;

    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "handleFindMyRequestStewie: %{public}s", v9, 0xCu);
    sub_100008964(v10);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136446210;
    LOBYTE(v24) = *(v3[5] + 40);
    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "handleFindMyRequestStewie: current stage: %{public}s", v16, 0xCu);
    sub_100008964(v17);
  }

  sub_100267BD0();
  v21 = v3[31];
  v22 = v3[32];
  sub_1000088DC(v3 + 28, v21);
  (*(v22 + 120))(4, 0, 0, v21, v22);
  sub_100179714(a1 & 1);
  sub_10024718C(2);
  sub_1001E52FC(0, 0);
}

void sub_100179278(__int16 a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v3 = a1 & 0x100;
  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;

    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleOfferTryOutRequest: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  v12 = *(v1 + 144);
  v13 = *(v12 + 56);
  if (v13 >> 9 <= 0x7E && (v13 & 0xC000) == 0x4000)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "handleOfferTryOutRequest: TryOut mode is already active, ignoring", v16, 2u);
    }
  }

  else
  {
    if ((v13 & 0xC000) != 0 || (v13 & 0x100 | (v13 ^ a1)) != 0)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v12 + 56) = a1;
    sub_100269074(v13);
  }

  sub_100179714(v3 != 0);
  sub_10024718C(2);
  sub_1001E52FC(0, 0);
}

void sub_100179544(int a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381C80);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;

    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "handleOpenCommand: %{public}s", v9, 0xCu);
    sub_100008964(v10);
  }

  v14 = v3[31];
  v15 = v3[32];
  sub_1000088DC(v3 + 28, v14);
  (*(v15 + 128))(a1 & 0xFFFFFF01, a2, v14, v15);
  sub_100179714(a1 & 1);
}

void sub_100179714(char a1)
{
  v2 = *(v1[4] + 80);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    sub_100177864();
    if ((a1 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v6 = swift_allocObject();
    swift_weakInit();

    sub_10012D3B4(sub_10017CF94, v6);

    return;
  }

  if (a1)
  {
    v4 = v1[31];
    v5 = v1[32];
    sub_1000088DC(v1 + 28, v4);
    (*(v5 + 104))(v4, v5);
    sub_100177864();
    goto LABEL_7;
  }

  sub_100177864();
LABEL_9:
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "_postHandleRequest: skipping bringForeground", v9, 2u);
  }
}

void sub_1001798EC(char a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) != 0 || (v3 = *(*(Strong + 88) + 48), v3 == 2) || (v3 & 1) == 0)
    {
      *(Strong + 368) = 2;
    }

    else
    {
      *(Strong + 368) = 1;
      if (qword_100353A10 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000F53C(v4, qword_100381C80);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Scheduled delayed bringForegroundOnUnlock request", v7, 2u);
      }
    }
  }
}

uint64_t sub_100179A30()
{
  v1 = v0[5];
  v2 = *(v1 + 40);
  if (v2 > 5)
  {
    if (v2 == 6)
    {
      v7 = *(v1 + 41);
      if (v7 == 2 || (v7 & 1) == 0)
      {
        return v2 == 9;
      }

      return 1;
    }

    if (v2 != 8)
    {
      return v2 == 9;
    }

    v0 = *(v0[14] + 104);
    if (!v0)
    {
      return v2 == 9;
    }

    swift_beginAccess();
    v3 = v0[18];
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (v2 != 3)
  {
    if (v2 != 5)
    {
      return v2 == 9;
    }

    return 1;
  }

  v5 = *(v0[9] + 88);
  if (v5)
  {
    result = swift_beginAccess();
    v3 = *(v5 + 144);
    v4 = *(v3 + 16);
    if (!v4)
    {
      __break(1u);
      return result;
    }

LABEL_12:
    if (*(v3 + v4 + 31) != 4)
    {
      return v2 == 9;
    }

    return 1;
  }

  return v2 == 9;
}

uint64_t sub_100179B1C()
{

  sub_100008964(v0 + 224);

  sub_100008964(v0 + 272);

  return v0;
}

uint64_t sub_100179C54()
{
  sub_100179B1C();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SOSBuddyEnvironment.EndSession(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

void *sub_100179D5C()
{
  v1 = v0;
  type metadata accessor for AppEvents();
  swift_allocObject();
  v0[2] = sub_1000E5C80();
  type metadata accessor for AlertAppearanceModel();
  v2 = swift_allocObject();
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v2 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v2 + 24) = PassthroughSubject.init()();
  v0[3] = v2;
  type metadata accessor for AppPropertiesModel();
  swift_allocObject();
  v0[4] = sub_10012C47C();
  type metadata accessor for AppRuntimeStateModel();
  v3 = swift_allocObject();
  sub_1000040A8(&qword_10035F530);
  swift_allocObject();
  *(v3 + 32) = PassthroughSubject.init()();
  *(v3 + 40) = 512;
  swift_allocObject();
  *(v3 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v3 + 24) = PassthroughSubject.init()();
  v0[5] = v3;
  type metadata accessor for BannerAppearanceModel();
  swift_allocObject();
  v0[6] = sub_100258488();
  type metadata accessor for BluetoothModel();
  swift_allocObject();
  v0[7] = sub_1000E2234();
  type metadata accessor for ConnectionAssistantModels();
  swift_allocObject();
  v0[8] = sub_1001DEE3C();
  type metadata accessor for EmergencyModel();
  swift_allocObject();
  v0[9] = sub_10025E9B8();
  type metadata accessor for GeoLocationModel();
  swift_allocObject();
  v0[10] = sub_100017CEC();
  type metadata accessor for LockScreenModel();
  swift_allocObject();
  v0[11] = sub_100112DB4();
  type metadata accessor for OfferModel();
  swift_allocObject();
  v0[12] = sub_100027D34();
  type metadata accessor for OnboardingModel();
  v4 = swift_allocObject();
  *(v4 + 32) = 1;
  swift_allocObject();
  *(v4 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v4 + 24) = PassthroughSubject.init()();
  v0[13] = v4;
  type metadata accessor for RoadsideAssistanceModel();
  swift_allocObject();
  v0[14] = sub_1000613AC();
  type metadata accessor for TransitionAlertModel();
  v5 = swift_allocObject();
  swift_allocObject();
  *(v5 + 32) = PassthroughSubject.init()();
  sub_1000040A8(&qword_100361BA0);
  swift_allocObject();
  *(v5 + 40) = PassthroughSubject.init()();
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  swift_allocObject();
  *(v5 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v5 + 24) = PassthroughSubject.init()();
  v0[15] = v5;
  type metadata accessor for StewieStateModel();
  swift_allocObject();
  v0[16] = sub_100089460();
  type metadata accessor for TimeZoneModel();
  swift_allocObject();
  v0[17] = sub_100085480();
  type metadata accessor for TryOutModel();
  swift_allocObject();
  v0[18] = sub_10026C420();
  type metadata accessor for OffTheGridModel();
  swift_allocObject();
  v0[19] = sub_1000234E8();
  type metadata accessor for UIMetrics();
  swift_allocObject();
  v0[20] = sub_100074D70();
  type metadata accessor for BackgroundActivityAgent();
  swift_allocObject();
  v0[21] = sub_1000E18C0();
  v0[22] = [objc_allocWithZone(type metadata accessor for CoreTelephonySPIAgent()) init];
  type metadata accessor for FindMyAgent();
  swift_allocObject();
  v0[23] = sub_100082D6C();
  type metadata accessor for MessagesAgent();
  swift_allocObject();
  v0[24] = sub_100146270();
  type metadata accessor for SettingsAgent();
  swift_allocObject();
  v0[25] = sub_1000F92A4();
  type metadata accessor for TelephonyUtilitiesAgent();
  swift_allocObject();
  v0[26] = sub_1002179CC();
  type metadata accessor for SOSBuddyPlatformEnvironment();
  swift_allocObject();
  v0[27] = sub_10005EF7C();
  if (SBUIIsSystemApertureEnabled())
  {
    v6 = type metadata accessor for _SessionEnvironmentBannerSession();
    swift_allocObject();
    v7 = sub_1000D55EC();
    v8 = &off_10032EBA0;
  }

  else
  {
    v6 = type metadata accessor for _SessionEnvironmentBannerKitStatusBar();
    swift_allocObject();
    v7 = sub_1000D8408();
    v8 = &off_10032EB18;
  }

  v0[31] = v6;
  v0[32] = v8;
  v0[28] = v7;
  type metadata accessor for DeepLinkHandler();
  swift_allocObject();
  v0[33] = sub_100143608();
  v9 = type metadata accessor for _HapticFeedback(0);
  swift_allocObject();
  v10 = sub_1001A61BC();
  v0[37] = v9;
  v0[38] = &off_100335578;
  v0[34] = v10;
  type metadata accessor for VoiceOverFeedback();
  v11 = swift_allocObject();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v15 = v11;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v12 = sub_100233B1C(_swiftEmptyArrayStorage);
    }

    else
    {
      v12 = &_swiftEmptySetSingleton;
    }

    v11 = v15;
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  v11[3] = 0;
  v11[4] = 0;
  v11[2] = v12;
  v1[39] = v11;
  type metadata accessor for LockScreenNotification();
  swift_allocObject();
  v1[40] = sub_100028BD8();
  type metadata accessor for SOSBuddyPersistence();
  swift_allocObject();
  v1[41] = sub_10013A3F4();
  type metadata accessor for Analytics();
  swift_allocObject();
  v1[42] = sub_100109224();
  type metadata accessor for DeviceOrientationTracker();
  swift_allocObject();
  v1[43] = sub_100145230();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v1[44] = v13;
  swift_allocObject();
  v1[45] = PassthroughSubject.init()();
  *(v1 + 184) = 1538;
  return v1;
}

uint64_t sub_10017A434(uint64_t a1, uint64_t a2)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching my phone numbers", v7, 2u);
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;

  sub_100244FB4(sub_10017AC24, v9);
}

uint64_t sub_10017A5B0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v52 = a4;
  v6 = type metadata accessor for Locale();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_1003580A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    goto LABEL_32;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3(Strong);
  }

  if (qword_100353A10 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_10000F53C(v18, qword_100381C80);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v51 = a3;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = a1;
      v24 = swift_slowAlloc();
      v55 = v23;
      v56 = v24;
      *v22 = 136380675;

      sub_1000040A8(&qword_1003580C8);
      v25 = String.init<A>(describing:)();
      v27 = sub_10017C9E8(v25, v26, &v56);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "My phone numbers fetched: %{private}s", v22, 0xCu);
      sub_100008964(v24);
      a1 = v23;
      a3 = v51;
    }

    if (!a1)
    {
      Strong = 0;
      return a3(Strong);
    }

    static Locale.autoupdatingCurrent.getter();
    Locale.region.getter();
    v54[1](v8, v6);
    v28 = type metadata accessor for Locale.Region();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v11, 1, v28) == 1)
    {
      sub_100008FA0(v11, &qword_1003580A0);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      Locale.Region.identifier.getter();
      (*(v29 + 8))(v11, v28);
      v32 = String.lowercased()();
      countAndFlagsBits = v32._countAndFlagsBits;
      object = v32._object;
    }

    v33 = a1[2];
    v34 = v51;
    if (!v33)
    {
      break;
    }

    v11 = 0;
    v6 = kCFAllocatorDefault;
    v35 = a1 + 5;
    v49 = a1 + 5;
    v50 = _swiftEmptyArrayStorage;
    v54 = object;
LABEL_14:
    v36 = &v35[2 * v11];
    a3 = v11;
    while (a3 < v33)
    {
      v11 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        goto LABEL_31;
      }

      v8 = *v36;

      v37 = String._bridgeToObjectiveC()();
      if (object)
      {
        object = String._bridgeToObjectiveC()();
      }

      a1 = CFPhoneNumberCreate();

      String = CFPhoneNumberCreateString();
      if (String)
      {
        v39 = String;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10017B338(0, *(v43 + 2) + 1, 1, v43);
        }

        v34 = v51;
        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        v8 = (v45 + 1);
        if (v45 >= v44 >> 1)
        {
          v43 = sub_10017B338((v44 > 1), v45 + 1, 1, v43);
        }

        *(v43 + 2) = v8;
        v50 = v43;
        v46 = &v43[16 * v45];
        *(v46 + 4) = v40;
        *(v46 + 5) = v42;
        object = v54;
        v35 = v49;
        if (v11 == v33)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      a3 = (a3 + 1);
      v36 += 2;
      object = v54;
      if (v11 == v33)
      {
        v34 = v51;
LABEL_27:
        v47 = v50;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_29:
  v34(v47);
}

uint64_t sub_10017ABEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017AC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1 + 344) + 32) & 1) == 0)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381C80);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Transitioning back to roadside", v17, 2u);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_10017E78C;
    v13 = 3;
    goto LABEL_14;
  }

  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381C80);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Transitioning back to emergency", v9, 2u);
  }

  v10 = *(*(v3 + 64) + 32);
  if (*(v10 + 64) && (sub_100071A54(0, *(v10 + 80)) & 1) != 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_10017E768;
    v13 = 2;
LABEL_14:
    sub_100243E44(v13, 0x80u, v12, v11);
    goto LABEL_18;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Transitioning back to emergency - Stewie emergency is not allowed, placing a call", v20, 2u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_1002180D8(sub_10017E760, v21);
LABEL_18:
}

uint64_t sub_10017AF50(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3, const char *a4)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a1 == 0;

    _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 8u);
  }

  else
  {
  }

  return a2(a1 == 0);
}

uint64_t sub_10017B088(char a1, uint64_t (*a2)(void))
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Emergency call request, success: %{BOOL}d", v7, 8u);
  }

  return a2(0);
}

uint64_t sub_10017B194()
{
  v1 = *(*(v0 + 72) + 88);
  if (v1 && (swift_beginAccess(), v2 = *(v1 + 64), *(v2 + 16)) && (v3 = sub_1001921EC(1), (v4 & 1) != 0))
  {
    sub_100048F80(*(v2 + 56) + 32 * v3, &v9);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v8[0] = v9;
  v8[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_100008FA0(v8, &qword_1003577F8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v6 == 1)
  {
    return v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10017B278()
{
  v1 = *(*(v0 + 112) + 104);
  if (!v1)
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 64);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1001921EC(5);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100048F80(*(v2 + 56) + 32 * v3, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v5 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

char *sub_10017B338(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100359B28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_10017B444(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361C30);
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

char *sub_10017B548(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100356630);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10017B660(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361C68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017B780(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100356B80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017B8DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100357178);
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

char *sub_10017B9E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361C48);
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

char *sub_10017BAEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017BC0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_10017BD5C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1000040A8(&qword_10035E428);
  v10 = *(sub_1000040A8(&qword_100356188) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1000040A8(&qword_100356188) - 8);
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

char *sub_10017BF60(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    sub_1000040A8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
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

char *sub_10017C04C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10017C168(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&unk_100363960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_10017C294(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000040A8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10017C470(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000040A8(&qword_1003618C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_1000040A8(&unk_100363950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10017C5B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_10017C6C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_1003618B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_10017C7C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361C58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_10017C8E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_100361C60);
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

unint64_t sub_10017C9E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10017CAB4(v11, 0, 0, 1, a1, a2);
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
    sub_100048F80(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008964(v11);
  return v7;
}

unint64_t sub_10017CAB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10017CBC0(a5, a6);
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

char *sub_10017CBC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10017CC0C(a1, a2);
  sub_10017CD3C(&off_100321358);
  return v3;
}

char *sub_10017CC0C(uint64_t a1, unint64_t a2)
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

  v6 = sub_10017CE28(v5, 0);
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
        v7 = sub_10017CE28(v10, 0);
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

uint64_t sub_10017CD3C(uint64_t result)
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

  result = sub_10017CE9C(result, v11, 1, v3);
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

void *sub_10017CE28(uint64_t a1, uint64_t a2)
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

  sub_1000040A8(&qword_1003618B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10017CE9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040A8(&qword_1003618B0);
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

uint64_t sub_10017D000()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10017D0AC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      v8 = Hasher._finalize()();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_10017D1B4(char *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 5);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 24);
  v12 = v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D24C(__int128 *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1[3];
  v9 = a1[2];
  v10 = v4;
  v11 = *(a1 + 32);
  v5 = a1[1];
  v7 = *a1;
  v8 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D2D4(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D34C(char *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D3C4(char *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1[1];
  v5 = *(a1 + 1);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D44C(char *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = a1[32];
  v8 = a1[33];
  v9 = *(a1 + 5);
  v11 = *a1;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D4F4(__int128 *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  v8 = a1[2];
  v9 = *(a1 + 6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D57C(__int128 *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  v8 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D5FC(__int128 *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D674(char *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 1);
  v6 = *a1;
  v7 = v4;
  v8 = *(a1 + 1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D6FC(char *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 1);
  v6 = *a1;
  v7 = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D77C(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D7F4(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *a1;
  v6 = *(a1 + 1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D874(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D8F4(__int128 *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 3);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017D97C(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = a1[2];
  v9 = *a1;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017DA14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10017DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 160) = a1;
  *(a4 + 168) = a2;

  *(a4 + 56) = &off_1003339F8;
  swift_unknownObjectWeakAssign();
  if (!sub_10000D880())
  {
    if (qword_100353A50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381D40);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to start EEDSource instance", v8, 2u);
    }
  }

  v9 = *(a4 + 216);
  v12[0] = *(a4 + 200);
  v12[1] = v9;
  v10 = *(a4 + 248);
  v12[2] = *(a4 + 232);
  v12[3] = v10;
  *(a4 + 200) = xmmword_100279380;
  *(a4 + 216) = xmmword_100279380;
  *(a4 + 232) = xmmword_100279380;
  *(a4 + 248) = 0;
  *(a4 + 256) = 0;
  return sub_10017E70C(v12);
}

void sub_10017DBDC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 32);
  v44 = *(a2 + 16);
  v45 = *a2;
  v40 = *(a3 + 16);
  v42 = *a3;
  v39 = *(a3 + 32);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381C80);
  sub_10017D04C(a1, &v57);
  sub_100006C20(a2, &v57, &qword_1003580C0);
  sub_100006C20(a3, &v57, &qword_1003580C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_10017CFAC(a1);
  sub_100008FA0(a2, &qword_1003580C0);
  sub_100008FA0(a3, &qword_1003580C0);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v47._countAndFlagsBits = swift_slowAlloc();
    *v12 = 136446723;
    LOBYTE(v57._countAndFlagsBits) = *a1;
    v13 = String.init<A>(describing:)();
    v37 = v11;
    v15 = sub_10017C9E8(v13, v14, &v47._countAndFlagsBits);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2081;
    v16 = *(a2 + 16);
    v57 = *a2;
    v58 = v16;
    *v59 = *(a2 + 32);
    sub_100006C20(a2, &v53, &qword_1003580C0);
    sub_1000040A8(&qword_1003580C0);
    v17 = String.init<A>(describing:)();
    v38 = a1;
    v19 = sub_10017C9E8(v17, v18, &v47._countAndFlagsBits);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2081;
    v20 = *(a3 + 16);
    v57 = *a3;
    v58 = v20;
    *v59 = *(a3 + 32);
    sub_100006C20(a3, &v53, &qword_1003580C0);
    v21 = String.init<A>(describing:)();
    v23 = sub_10017C9E8(v21, v22, &v47._countAndFlagsBits);

    *(v12 + 24) = v23;
    a1 = v38;
    _os_log_impl(&_mh_execute_header, v10, v37, "handleAlertRequest: %{public}s, requestedProvider=%{private}s, resumableProvider=%{private}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  v24 = *(v4 + 120);
  if (*a1)
  {
    sub_100192888(&v47);
    v57 = v47;
    v58 = v48;
    *v59 = v49;
    *&v59[8] = v50;
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    v56 = *(v24 + 96);
    v53 = v25;
    v54 = v26;
    v55 = *(v24 + 80);
    sub_100006C20(&v53, v46, &qword_1003618C8);
    sub_100192AEC(&v57._countAndFlagsBits);
    v27 = *(v24 + 48);
    v28 = *(v24 + 56);
    v29 = v58;
    *(v24 + 48) = v57;
    *(v24 + 64) = v29;
    *(v24 + 80) = *v59;
    *(v24 + 96) = *&v59[16];
    sub_10017E0BC(v27, v28);
  }

  else
  {
    v30 = a1;
    if (!*(a2 + 16))
    {
      sub_100006C20(a3, &v57, &qword_1003580C0);
      v8 = v39;
      v44 = v40;
      v45 = v42;
    }

    v51[0] = v45;
    v51[1] = v44;
    v52 = v8;
    sub_100006C20(a2, &v57, &qword_1003580C0);
    sub_100192564(v51, &v47);
    v41 = v48;
    v43 = v47;
    v31 = v49;
    sub_10006B814(v45._countAndFlagsBits, v45._object, v44);
    v57 = v43;
    v58 = v41;
    *v59 = v31;
    *&v59[8] = v50;
    v32 = *(v24 + 48);
    v33 = *(v24 + 64);
    v56 = *(v24 + 96);
    v53 = v32;
    v54 = v33;
    v55 = *(v24 + 80);
    sub_100006C20(&v53, v46, &qword_1003618C8);
    sub_100192AEC(&v57._countAndFlagsBits);
    v34 = *(v24 + 48);
    v35 = *(v24 + 56);
    v36 = v58;
    *(v24 + 48) = v57;
    *(v24 + 64) = v36;
    *(v24 + 80) = *v59;
    *(v24 + 96) = *&v59[16];
    sub_10017E0BC(v34, v35);
    a1 = v30;
  }

  sub_100192D88(&v53);
  sub_100008FA0(&v53, &qword_1003618C8);
  sub_100179714(a1[33]);
}

uint64_t sub_10017E0BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10017E224()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017E28C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10017E2E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10017E3B0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_100173B10(a1, v4, v5, v6);
}

uint64_t sub_10017E464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionClosed(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017E4D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017E5D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000040A8(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_10017E6B8()
{
  result = qword_100361C10;
  if (!qword_100361C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361C10);
  }

  return result;
}

uint64_t sub_10017E890()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x8000000100294A20;
    v6 = 0xD000000000000012;
  }

  sub_10001D630(0, &qword_10035BA10);
  v27[0] = v6;
  v27[1] = v8;

  v9._countAndFlagsBits = 0x616E4165726F432ELL;
  v9._object = 0xEE0073636974796CLL;
  String.append(_:)(v9);

  static DispatchQoS.unspecified.getter();
  v27[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v25;
  *(v25 + 16) = v10;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381C80);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v11;
    v27[0] = v16;
    *v15 = 136446210;
    type metadata accessor for CoreAnalyticsAgent();

    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, v27);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] init", v15, 0xCu);
    sub_100008964(v16);
  }

  return v11;
}

uint64_t sub_10017ECD4()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for CoreAnalyticsAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_10017EE50()
{
  sub_10017ECD4();

  return swift_deallocClassInstance();
}

void sub_10017EEA8(int a1, uint64_t a2)
{
  LODWORD(v3) = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v59 = *(v8 - 8);
  isa = v8;
  __chkstk_darwin(v8);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a2 + 16))
  {
    goto LABEL_6;
  }

  v11 = sub_100186A08(0x7361655274697865, 0xEA00000000006E6FLL);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(*(a2 + 56) + 8 * v11);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_6;
  }

  sub_10001D630(0, &qword_100358330);
  v14 = v13;
  v15 = NSString.init(stringLiteral:)();
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {

LABEL_6:
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v57 = v5;
    v17 = type metadata accessor for Logger();
    sub_10000F53C(v17, qword_100381C68);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      v21 = 0xD000000000000016;
      v22 = "com.apple.stw.ca.connattempt";
      *v20 = 136315394;
      v56 = v3;
      v23 = "ony.metricCCStwEntryPoint";
      v24 = 0xD00000000000001FLL;
      if (v3 != 6)
      {
        v24 = 0xD000000000000029;
        v23 = "oreAnalyticsAgent";
      }

      v25 = "com.apple.stw.buddy.startmsg";
      v26 = 0xD000000000000019;
      if (v3 != 4)
      {
        v26 = 0xD00000000000001CLL;
        v25 = "com.apple.stw.ca.stateRetention";
      }

      if (v3 <= 5u)
      {
        v24 = v26;
        v23 = v25;
      }

      v27 = "com.apple.stw.buddy.que";
      if (v3 != 2)
      {
        v27 = "com.apple.stw.buddy.start";
      }

      if (v3)
      {
        v21 = 0xD00000000000001CLL;
        v22 = "com.apple.ca.skimmerobs";
      }

      if (v3 > 1u)
      {
        v21 = 0xD000000000000017;
        v22 = v27;
      }

      if (v3 <= 3u)
      {
        v28 = v21;
      }

      else
      {
        v28 = v24;
      }

      if (v3 <= 3u)
      {
        v29 = v22;
      }

      else
      {
        v29 = v23;
      }

      v3 = sub_10017C9E8(v28, v29 | 0x8000000000000000, aBlock);

      *(v20 + 4) = v3;
      *(v20 + 12) = 2080;
      sub_10001D630(0, &qword_100361D30);
      v30 = Dictionary.description.getter();
      v32 = sub_10017C9E8(v30, v31, aBlock);

      *(v20 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v18, v19, "Queueing analytics event %s: %s", v20, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v3) = v56;
    }

    else
    {
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v3;
    *(v33 + 24) = a2;
    aBlock[4] = sub_10017FCA0;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100334368;
    v34 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v61 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);
    (*(v57 + 8))(v7, v4);
    v59[1](v10, isa);

    return;
  }

  v56 = v3;
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000F53C(v35, qword_100381C68);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  LODWORD(isa) = v37;
  if (os_log_type_enabled(v36, v37))
  {
    v58 = v36;
    v59 = v14;
    v38 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v38 = 136315394;
    v39 = 0xD000000000000016;
    v40 = "com.apple.stw.ca.connattempt";
    v41 = "ony.metricCCStwEntryPoint";
    v42 = 0xD00000000000001FLL;
    if (v56 != 6)
    {
      v42 = 0xD000000000000029;
      v41 = "oreAnalyticsAgent";
    }

    v43 = "com.apple.stw.buddy.startmsg";
    v44 = 0xD000000000000019;
    if (v56 != 4)
    {
      v44 = 0xD00000000000001CLL;
      v43 = "com.apple.stw.ca.stateRetention";
    }

    if (v56 <= 5u)
    {
      v42 = v44;
      v41 = v43;
    }

    v45 = "com.apple.stw.buddy.que";
    if (v56 != 2)
    {
      v45 = "com.apple.stw.buddy.start";
    }

    if (v56)
    {
      v39 = 0xD00000000000001CLL;
      v40 = "com.apple.ca.skimmerobs";
    }

    if (v56 > 1u)
    {
      v39 = 0xD000000000000017;
      v40 = v45;
    }

    if (v56 <= 3u)
    {
      v46 = v39;
    }

    else
    {
      v46 = v42;
    }

    if (v56 <= 3u)
    {
      v47 = v40;
    }

    else
    {
      v47 = v41;
    }

    v48 = sub_10017C9E8(v46, v47 | 0x8000000000000000, aBlock);

    *(v38 + 4) = v48;
    *(v38 + 12) = 2080;
    sub_10001D630(0, &qword_100361D30);
    v49 = Dictionary.description.getter();
    v51 = sub_10017C9E8(v49, v50, aBlock);

    *(v38 + 14) = v51;
    v52 = v58;
    _os_log_impl(&_mh_execute_header, v58, isa, "Recording analytics event %s: %s", v38, 0x16u);
    swift_arrayDestroy();

    v14 = v59;
  }

  else
  {
  }

  v53 = String._bridgeToObjectiveC()();

  sub_10001D630(0, &qword_100361D30);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  AnalyticsSendEvent();

  v54 = isa;
}

void sub_10017F860(unsigned __int8 a1)
{
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C68);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = 0xD000000000000016;
    v7 = "com.apple.stw.ca.connattempt";
    v8 = "ony.metricCCStwEntryPoint";
    v9 = 0xD00000000000001FLL;
    if (a1 != 6)
    {
      v9 = 0xD000000000000029;
      v8 = "oreAnalyticsAgent";
    }

    v10 = "com.apple.stw.buddy.startmsg";
    v11 = 0xD000000000000019;
    if (a1 != 4)
    {
      v11 = 0xD00000000000001CLL;
      v10 = "com.apple.stw.ca.stateRetention";
    }

    if (a1 <= 5u)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = "com.apple.stw.buddy.que";
    if (a1 != 2)
    {
      v12 = "com.apple.stw.buddy.start";
    }

    if (a1)
    {
      v6 = 0xD00000000000001CLL;
      v7 = "com.apple.ca.skimmerobs";
    }

    if (a1 > 1u)
    {
      v6 = 0xD000000000000017;
      v7 = v12;
    }

    if (a1 <= 3u)
    {
      v13 = v6;
    }

    else
    {
      v13 = v9;
    }

    if (a1 <= 3u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v8;
    }

    v15 = sub_10017C9E8(v13, v14 | 0x8000000000000000, &v21);

    *(v5 + 4) = v15;
    *(v5 + 12) = 2080;
    sub_10001D630(0, &qword_100361D30);
    v16 = Dictionary.description.getter();
    v18 = sub_10017C9E8(v16, v17, &v21);

    *(v5 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "Recording analytics event %s: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = String._bridgeToObjectiveC()();

  sub_10001D630(0, &qword_100361D30);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  AnalyticsSendEvent();
}

uint64_t sub_10017FC68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017FCAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10017FCC4(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1000456C8(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1001891F8(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_100008FA0(a1, &qword_1003577F8);
    v7 = sub_100186934(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1000915EC();
        v11 = v13;
      }

      sub_1000456C8((*(v11 + 56) + 32 * v9), v14);
      sub_1001883F4(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_100008FA0(v14, &qword_1003577F8);
  }

  return result;
}

uint64_t sub_10017FDC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000456C8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_100189910(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_100008FA0(a1, &qword_100362C00);
    sub_100187FD8(a2, v9);
    v7 = type metadata accessor for CodingUserInfoKey();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_100008FA0(v9, &qword_100362C00);
  }

  return result;
}

unint64_t sub_10017FEE4()
{
  v1 = 0xD000000000000021;
  v2 = *(v0 + 16);
  if (v2 <= 4)
  {
    v6 = 0xD000000000000018;
    v7 = 0xD000000000000025;
    if (v2 != 3)
    {
      v7 = 0xD000000000000026;
    }

    if (v2 != 2)
    {
      v6 = v7;
    }

    if (!*(v0 + 16))
    {
      v1 = 0xD000000000000019;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000001BLL;
    if (v2 == 9)
    {
      v4 = 0xD000000000000022;
    }

    else
    {
      v4 = 0xD000000000000021;
    }

    if (v2 != 8)
    {
      v3 = v4;
    }

    if (v2 != 6)
    {
      v1 = 0xD000000000000029;
    }

    if (v2 == 5)
    {
      v1 = 0xD000000000000026;
    }

    if (*(v0 + 16) <= 7u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_100180018(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_100189C7C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}