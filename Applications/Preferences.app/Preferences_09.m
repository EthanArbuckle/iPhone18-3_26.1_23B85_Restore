uint64_t sub_1000DFD9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000DF8B4();
  }

  return result;
}

uint64_t sub_1000DFDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v10;
  v4[14] = v9;

  return _swift_task_switch(sub_1000DFF2C, v10, v9);
}

uint64_t sub_1000DFF2C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[11];
  v0[15] = static MainActor.shared.getter();
  v5 = sub_1000E094C(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1000E0080;
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_1000E0080()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E048C;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E0218;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000E0218()
{
  v1 = v0[15];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1000E027C, v2, v3);
}

uint64_t sub_1000E027C()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[12];
    (*(v0[9] + 8))(v0[10], v0[8]);

LABEL_8:
    v15 = v0[10];
    v16 = v0[7];

    v17 = v0[1];

    return v17();
  }

  v4 = v0[6];
  if (!swift_weakLoadStrong())
  {
    v13 = v0[12];
    v14 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    sub_1000068B0(v14, &unk_10015FCF0, &unk_100117B60);
    goto LABEL_8;
  }

  v5 = v0[7];
  sub_1000DF8B4();

  sub_1000068B0(v5, &unk_10015FCF0, &unk_100117B60);
  v6 = v0[11];
  v0[15] = static MainActor.shared.getter();
  v7 = sub_1000E094C(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000E0080;
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v7);
}

uint64_t sub_1000E048C()
{
  *(v0 + 40) = *(v0 + 136);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E0518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for PrimarySettingsListItemModel();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 80) != 1)
  {
    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v15 = *(v3 + 32);
  v34 = *(v3 + 16);
  v35 = v15;
  v36 = *(v3 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v17 = v36;
  v18 = v35;
  *(inited + 16) = v34;
  *(inited + 32) = v18;
  *(inited + 48) = v17;
  sub_10002698C(&v34, v33);
  sub_10005AFAC(a1, v9);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000068B0(v9, &unk_10015EDB0, &unk_100111C70);
    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  sub_10002C634(v9, v14);
  v20 = sub_100029F88();
  v31 = v21;
  v32 = v20;
  v23 = v22;
  v24 = sub_10002A770(v20);
  v26 = v25;
  if (*(v3 + 96))
  {
    v27 = *(v3 + 88);
    v28 = *(v3 + 96);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = &v14[*(v10 + 20)];

  sub_10002C758(v29, type metadata accessor for PrimarySettingsListItemViewType);
  v30 = v31;
  *v29 = v32;
  *(v29 + 8) = v30;
  *(v29 + 16) = v23;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  type metadata accessor for PrimarySettingsListItemViewType();
  swift_storeEnumTagMultiPayload();
  sub_10002C7EC(v14, a2);
  (*(v11 + 56))(a2, 0, 1, v10);
  return sub_10002C758(v14, type metadata accessor for PrimarySettingsListItemModel);
}

uint64_t sub_1000E0854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000DFDFC(a1, v4, v5, v6);
}

uint64_t sub_1000E0908()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000E094C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E09AC(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 49) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 49) = v2;
  return result;
}

uint64_t sub_1000E0A54()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);

    Task.cancel()();

    v2 = *(v0 + 72);
  }

  *(v0 + 72) = 0;

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1000122B4(v0 + 56);
  v3 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0AF8()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;

  v10 = sub_100094AF4(0, 0, v4, &unk_100117BD0, v9);
  v11 = *(v0 + 72);
  *(v0 + 72) = v10;

  v6(v4, 1, 1, v5);
  v12 = swift_allocObject();
  swift_weakInit();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;

  sub_100094DF4(0, 0, v4, &unk_100117BE0, v14);
}

uint64_t sub_1000E0D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v10;
  v4[14] = v9;

  return _swift_task_switch(sub_1000E0E48, v10, v9);
}

uint64_t sub_1000E0E48()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[11];
  v0[15] = static MainActor.shared.getter();
  v5 = sub_1000E1930();
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1000E0F6C;
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_1000E0F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E048C;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E1104;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000E1104()
{
  v1 = v0[15];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1000E1168, v2, v3);
}

uint64_t sub_1000E1168()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[12];
    (*(v0[9] + 8))(v0[10], v0[8]);

LABEL_8:
    v11 = v0[10];
    v12 = v0[7];

    v13 = v0[1];

    return v13();
  }

  v4 = v0[6];
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
    v9 = v0[12];
    v10 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    sub_1000E1988(v10);
    goto LABEL_8;
  }

  v6 = v0[11];
  v0[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E12E8, v8, v7);
}

uint64_t sub_1000E12E8()
{
  v1 = [objc_opt_self() sharedManager];
  if (v1)
  {
    v4 = v1;
    v6 = v0[18];
    v5 = v0[19];

    v7 = [v4 hasEthernetNetworkInterfaces];

    if (v7 != *(v6 + 49))
    {
      v8 = v0[18];
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for PrimarySettingsListModel();
        sub_1000A2E28();
        swift_unknownObjectRelease();
      }
    }

    *(v6 + 49) = v7;
    v2 = v0[13];
    v3 = v0[14];
    v1 = sub_1000E1408;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000E1408()
{
  v1 = v0[18];
  v2 = v0[7];

  sub_1000E1988(v2);
  v3 = v0[11];
  v0[15] = static MainActor.shared.getter();
  v4 = sub_1000E1930();
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1000E0F6C;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_1000E14D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1000E156C, v6, v5);
}

uint64_t sub_1000E156C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 56);
    *(v0 + 96) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000E166C, v5, v4);
  }

  else
  {
    v6 = *(v0 + 64);

    **(v0 + 40) = *(v0 + 88) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000E166C()
{
  v1 = [objc_opt_self() sharedManager];
  if (v1)
  {
    v4 = v1;
    v6 = v0[11];
    v5 = v0[12];

    v7 = [v4 hasEthernetNetworkInterfaces];

    sub_1000E09AC(v7);

    v2 = v0[9];
    v3 = v0[10];
    v1 = sub_1000E1730;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000E1730()
{
  v1 = *(v0 + 64);

  **(v0 + 40) = *(v0 + 88) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E17C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000E0D18(a1, v4, v5, v6);
}

uint64_t sub_1000E187C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E14D0(a1, v4, v5, v6);
}

unint64_t sub_1000E1930()
{
  result = qword_10015CB60;
  if (!qword_10015CB60)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CB60);
  }

  return result;
}

uint64_t sub_1000E1988(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E19F0(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 80) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_1000E1A98()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1000122B4(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_1000E1AFC()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v22 = &v21 - v2;
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = [objc_allocWithZone(ENManager) init];
  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_100015390();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  [v11 setDispatchQueue:v12];

  v13 = type metadata accessor for TaskPriority();
  v14 = v22;
  (*(*(v13 - 8) + 56))(v22, 1, 1, v13);
  v15 = swift_allocObject();
  v16 = v23;
  swift_weakInit();
  type metadata accessor for MainActor();
  v17 = v11;

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  v19[5] = v15;

  sub_100094AF4(0, 0, v14, &unk_100117C50, v19);

  v20 = *(v16 + 72);
  *(v16 + 72) = v17;
}

uint64_t sub_1000E1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[12] = v6;
  *v6 = v5;
  v6[1] = sub_1000E1F40;

  return sub_1000E2308();
}

uint64_t sub_1000E1F40(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 128) = a1;

  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  if (v1)
  {

    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v12 = sub_1000E317C;
    v13 = v9;
    v14 = v11;
  }

  else
  {
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v16;
    *(v4 + 104) = v15;
    *(v4 + 112) = v16;
    v12 = sub_1000E20E4;
    v13 = v15;
  }

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000E20E4()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  return _swift_task_switch(sub_1000E217C, 0, 0);
}

uint64_t sub_1000E217C()
{
  v1 = *(v0 + 80);
  *(v0 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E2208, v3, v2);
}

uint64_t sub_1000E2208()
{
  v1 = *(v0 + 120);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000E19F0(*(v0 + 128));
  }

  swift_weakDestroy();
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  return _swift_task_switch(sub_1000E22A8, v2, v3);
}

uint64_t sub_1000E22A8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E2308()
{
  v1[2] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000E23D4, 0, 0);
}

uint64_t sub_1000E23D4()
{
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for OSSignposter();
  sub_10000659C(v2, qword_100169718);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "ENManager.getter:shouldShowExposureNotifications", "", v6, 2u);
  }

  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = OSSignpostIntervalState.init(id:isOpen:)();
  v0[7] = v16;
  (*(v11 + 8))(v9, v10);
  v17 = swift_task_alloc();
  v0[8] = v17;
  *(v17 + 16) = v12;
  *(v17 + 24) = v16;
  v18 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_1000E2618;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 11, 0, 0, 0xD00000000000001FLL, 0x80000001001259C0, sub_1000E30C4, v17, &type metadata for Bool);
}

uint64_t sub_1000E2618()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1000E27BC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1000E2734;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E2734()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  v4 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1000E27BC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];
  v6 = v0[10];

  return v5(0);
}

uint64_t sub_1000E286C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(*v2 + 80) == 1)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = *(v4 + 48);
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    sub_100029920(v5, v6, v7, v8, v9);
    sub_10005AFAC(a1, a2);
    swift_setDeallocating();
    return sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  }

  else
  {
    v13 = type metadata accessor for PrimarySettingsListItemModel();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_1000E2994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000E1E90(a1, v4, v5, v7, v6);
}

void sub_1000E2A54(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_100160758, &unk_100117C60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1000E30CC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E2FAC;
  aBlock[3] = &unk_100151B30;
  v13 = _Block_copy(aBlock);

  [a2 getEntitiesWithCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_1000E2C18(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    if (a1)
    {
LABEL_4:
      sub_10004DED0(&qword_100160758, &unk_100117C60);
      CheckedContinuation.resume(returning:)();
      return sub_1000E2D20();
    }

    if (a2)
    {
      if (a2 >> 62)
      {
        v7 = a3;
        v6 = _CocoaArrayWrapper.endIndex.getter();
        a3 = v7;
        if (v6)
        {
          goto LABEL_4;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }
    }

    if (a3)
    {
      if (a3 >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    goto LABEL_4;
  }

  swift_errorRetain();
  sub_10004DED0(&qword_100160758, &unk_100117C60);
  CheckedContinuation.resume(throwing:)();
  return sub_1000E2D20();
}

uint64_t sub_1000E2D20()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000659C(v10, qword_100169718);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "ENManager.getter:shouldShowExposureNotifications", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000E2FAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a3)
  {
    sub_100008294(0, &qword_100160760, ENEntity_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    sub_100008294(0, &qword_100160760, ENEntity_ptr);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = a2;
  v14 = a5;
  v15 = a6;
  v12(a2, v9, a4, a5, a6);
}

uint64_t sub_1000E30CC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(sub_10004DED0(&qword_100160758, &unk_100117C60) - 8) + 80);
  v12 = *(v5 + 16);

  return sub_1000E2C18(a1, a2, a3, a4, a5);
}

uint64_t sub_1000E3180()
{
  v1 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask);

    Task.cancel()();

    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v4 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_rowStatus;
  v5 = type metadata accessor for FamilyRowStatus();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo + 8);

  sub_1000122B4(v0 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_invalidator);
  v7 = *(v0 + v1);

  return v0;
}

uint64_t sub_1000E3278()
{
  sub_1000E3180();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E32D8()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14[-1] - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;

  v10 = sub_100094AF4(0, 0, v5, &unk_100117D18, v9);
  v11 = *(v1 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask);
  *(v1 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask) = v10;

  static FamilySettingsFactory.sharedProvider.getter();
  sub_100018544(v14, v14[3]);
  dispatch thunk of FamilySettingsViewsProtocol.sendWakeupNotification()();
  return sub_10000665C(v14);
}

uint64_t sub_1000E347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a4;
  v5 = *(*(sub_10004DED0(&unk_100160860, qword_100117D20) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for FamilyRowStatus();
  v4[43] = v6;
  v7 = *(v6 - 8);
  v4[44] = v7;
  v8 = *(v7 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v9 = type metadata accessor for Notification();
  v4[47] = v9;
  v10 = *(v9 - 8);
  v4[48] = v10;
  v11 = *(v10 + 64) + 15;
  v4[49] = swift_task_alloc();
  v12 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v4[50] = swift_task_alloc();
  v13 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[51] = v13;
  v14 = *(v13 - 8);
  v4[52] = v14;
  v15 = *(v14 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = type metadata accessor for MainActor();
  v4[55] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[56] = v17;
  v4[57] = v16;

  return _swift_task_switch(sub_1000E36A8, v17, v16);
}

uint64_t sub_1000E36A8()
{
  v1 = v0[53];
  v2 = v0[41];
  v3 = [objc_opt_self() defaultCenter];
  v4 = static FamilySettingsFactory.FamilySettingsViewsHaveChanged.getter();
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v5 = v0[54];
  v0[58] = static MainActor.shared.getter();
  v6 = sub_10002C878(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[59] = v8;
  *v8 = v0;
  v8[1] = sub_1000E3804;
  v9 = v0[53];
  v10 = v0[50];
  v11 = v0[51];

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v6);
}

uint64_t sub_1000E3804()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 464);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E408C;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E399C;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000E399C()
{
  v1 = v0[58];

  v2 = v0[56];
  v3 = v0[57];

  return _swift_task_switch(sub_1000E3A00, v2, v3);
}

uint64_t sub_1000E3A00()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[55];
    (*(v0[52] + 8))(v0[53], v0[51]);

LABEL_31:
    v55 = v0[53];
    v56 = v0[49];
    v57 = v0[50];
    v59 = v0[45];
    v58 = v0[46];
    v60 = v0[42];

    v61 = v0[1];

    return v61();
  }

  v5 = v0[41];
  (*(v3 + 32))(v0[49], v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v48 = v0[55];
    v50 = v0[52];
    v49 = v0[53];
    v51 = v0[51];
    v53 = v0[48];
    v52 = v0[49];
    v54 = v0[47];

    (*(v53 + 8))(v52, v54);
    (*(v50 + 8))(v49, v51);
    goto LABEL_31;
  }

  v7 = Strong;
  v8 = v0[49];
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    v9 = sub_1000BA838(_swiftEmptyArrayStorage);
  }

  v10 = v9;
  v0[34] = static FamilySettingsFactory.Status.getter();
  v0[35] = v11;
  AnyHashable.init<A>(_:)();
  if (*(v10 + 16) && (v12 = sub_100017DC0((v0 + 2)), (v13 & 1) != 0))
  {
    v14 = v0[43];
    v15 = v0[44];
    v16 = v0[42];
    sub_10001EE30(*(v10 + 56) + 32 * v12, (v0 + 17));
    sub_100017E04((v0 + 2));
    v17 = swift_dynamicCast();
    (*(v15 + 56))(v16, v17 ^ 1u, 1, v14);
    if ((*(v15 + 48))(v16, 1, v14) != 1)
    {
      (*(v0[44] + 32))(v0[46], v0[42], v0[43]);
      goto LABEL_13;
    }
  }

  else
  {
    v18 = v0[43];
    v19 = v0[44];
    v20 = v0[42];
    sub_100017E04((v0 + 2));
    (*(v19 + 56))(v20, 1, 1, v18);
  }

  v21 = v0[46];
  v22 = v0[43];
  v23 = v0[44];
  v24 = v0[42];
  static FamilySettingsFactory.sharedProvider.getter();
  v25 = v0[11];
  sub_100018544(v0 + 7, v0[10]);
  dispatch thunk of FamilySettingsViewsProtocol.rowStatus.getter();
  sub_10000665C(v0 + 7);
  if ((*(v23 + 48))(v24, 1, v22) != 1)
  {
    sub_1000E4550(v0[42]);
  }

LABEL_13:
  v27 = v0[45];
  v26 = v0[46];
  v28 = v0[43];
  v29 = v0[44];
  v30 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_rowStatus;
  swift_beginAccess();
  (*(v29 + 16))(v27, v7 + v30, v28);
  sub_10002C878(&qword_100160858, &type metadata accessor for FamilyRowStatus);
  LOBYTE(v26) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v29 + 8))(v27, v28);
  if ((v26 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel();
    sub_1000A2E28();
    swift_unknownObjectRelease();
  }

  v31 = v0[46];
  v32 = v0[43];
  v33 = v0[44];
  swift_beginAccess();
  (*(v33 + 40))(v7 + v30, v31, v32);
  swift_endAccess();
  v0[36] = static FamilySettingsFactory.Marquee.getter();
  v0[37] = v34;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v35 = sub_100017DC0((v0 + 12)), (v36 & 1) == 0))
  {

    sub_100017E04((v0 + 12));
    goto LABEL_21;
  }

  sub_10001EE30(*(v10 + 56) + 32 * v35, (v0 + 21));
  sub_100017E04((v0 + 12));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v37 = 0;
    v38 = 0xE000000000000000;
    goto LABEL_22;
  }

  v37 = v0[38];
  v38 = v0[39];
LABEL_22:
  v39 = (v7 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo);
  if ((v37 != *(v7 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo) || v38 != *(v7 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel();
    sub_1000A2E28();
    swift_unknownObjectRelease();
  }

  (*(v0[48] + 8))(v0[49], v0[47]);
  v40 = v39[1];
  *v39 = v37;
  v39[1] = v38;

  v41 = v0[54];
  v0[58] = static MainActor.shared.getter();
  v42 = sub_10002C878(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v43 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v44 = swift_task_alloc();
  v0[59] = v44;
  *v44 = v0;
  v44[1] = sub_1000E3804;
  v45 = v0[53];
  v46 = v0[50];
  v47 = v0[51];

  return dispatch thunk of AsyncIteratorProtocol.next()(v46, v47, v42);
}

uint64_t sub_1000E408C()
{
  *(v0 + 320) = *(v0 + 480);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E4118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrimarySettingsListFamilyLinkModel();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FamilyRowStatus();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v27 - v14;
  v16 = OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_rowStatus;
  swift_beginAccess();
  (*(v9 + 16))(v15, v2 + v16, v8);
  (*(v9 + 104))(v13, enum case for FamilyRowStatus.hidden(_:), v8);
  sub_10002C878(&qword_100160858, &type metadata accessor for FamilyRowStatus);
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  if (v16)
  {
    v18 = type metadata accessor for PrimarySettingsListItemModel();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  else
  {
    static FamilySettingsFactory.sharedProvider.getter();
    sub_100018544(v27, v27[3]);
    dispatch thunk of FamilySettingsViewsProtocol.rowStatus.getter();
    v20 = &v7[*(v4 + 20)];
    *v20 = 0;
    *(v20 + 1) = 0xE000000000000000;
    sub_10000665C(v27);
    v21 = *(v2 + 16);
    v22 = *(v2 + 24);
    v23 = *(v2 + 32);
    v24 = *(v2 + 40);
    v25 = *(v2 + 48);
    v26 = type metadata accessor for PrimarySettingsListItemModel();
    sub_100057574(v7, a1 + *(v26 + 20));
    type metadata accessor for PrimarySettingsListItemViewType();
    swift_storeEnumTagMultiPayload();
    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 16) = v23;
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;
    *(a1 + *(v26 + 24)) = 0;
    (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
    return sub_100029920(v21, v22, v23, v24, v25);
  }
}

uint64_t sub_1000E449C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E347C(a1, v4, v5, v6);
}

uint64_t sub_1000E4550(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_100160860, qword_100117D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000E45B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient;
  v9 = *&v1[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient];
  if (v9 && ([v9 setDelegate:0], (v10 = *&v1[v8]) != 0))
  {
    [v10 invalidate];
    v11 = *&v1[v8];
  }

  else
  {
    v11 = 0;
  }

  *&v1[v8] = 0;

  (*(v4 + 16))(v7, &v1[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStreamContinuation], v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v7, v3);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "dealloc");
}

uint64_t sub_1000E4850()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v30 = &v28 - v2;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_100003CAC();
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_100015390();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = objc_allocWithZone(SUManagerClient);
  v14 = v29;
  v15 = [v13 initWithDelegate:v29 queue:v12 clientType:1];

  v16 = *(v14 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient);
  *(v14 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient) = v15;

  v17 = type metadata accessor for TaskPriority();
  v18 = *(*(v17 - 8) + 56);
  v19 = v30;
  v18(v30, 1, 1, v17);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;

  v23 = v19;
  sub_100094AF4(0, 0, v19, &unk_100117DD8, v22);

  v18(v19, 1, 1, v17);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v24;

  sub_100094DF4(0, 0, v23, &unk_100117DE8, v26);
}

uint64_t sub_1000E4C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004DED0(&qword_100160950, &unk_100117E00);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v12;
  v4[19] = v11;

  return _swift_task_switch(sub_1000E4DF0, v12, v11);
}

uint64_t sub_1000E4DF0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[11];
    v8 = v0[8];
    v9 = Strong;
    (*(v6 + 16))(v3, Strong + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStream, v5);

    (*(v6 + 32))(v4, v3, v5);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v10 = v0[16];
    v11 = static MainActor.shared.getter();
    v0[20] = v11;
    v12 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_1000E4FC4;
    v14 = v0[11];
    v15 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 22, v11, &protocol witness table for MainActor, v15);
  }

  else
  {
    v16 = v0[17];

    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[11];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000E4FC4()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return _swift_task_switch(sub_1000E5108, v5, v4);
}

uint64_t sub_1000E5108()
{
  v1 = *(v0 + 176);
  if (v1 == 2 || (v2 = *(v0 + 64), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v13, v14);
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 88);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate;
    if (*(Strong + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate) != (v1 & 1) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    v4[v5] = v1 & 1;

    v6 = *(v0 + 128);
    v7 = static MainActor.shared.getter();
    *(v0 + 160) = v7;
    v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1000E4FC4;
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);

    return AsyncStream.Iterator.next(isolation:)(v0 + 176, v7, &protocol witness table for MainActor, v11);
  }
}

uint64_t sub_1000E531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_10004DED0(&unk_100160940, &unk_100117DF0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E541C, v9, v8);
}

uint64_t sub_1000E541C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);
    *(v0 + 88) = SUSUISettingsIsBadgedForSoftwareUpdate();
    sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
    AsyncStream.Continuation.yield(_:)();

    (*(v5 + 8))(v4, v6);
  }

  v7 = *(v0 + 72);
  **(v0 + 40) = Strong == 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000E552C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimarySettingsListItemViewType();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = (v1 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_id);
  v11 = *(v1 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_id + 16);
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate) == 1)
  {
    v31 = *v10;
    v32 = v31;
    v33 = v11;
    v12 = *(v10 + 32);
    v34 = v12;
    v30 = v10[1];
    v13 = sub_100029F88();
    v15 = v14;
    v17 = v16;
    v18 = sub_10002A770(v13);
    *v7 = v13;
    *(v7 + 1) = v15;
    v7[16] = v17;
    *(v7 + 3) = v18;
    *(v7 + 4) = v19;
    *(v7 + 5) = 1;
  }

  else
  {
    v31 = *v10;
    v32 = v31;
    v33 = v11;
    v12 = *(v10 + 32);
    v34 = v12;
    v30 = v10[1];
    v20 = sub_100029F88();
    v22 = v21;
    v24 = v23;
    v25 = sub_10002A770(v20);
    *v7 = v20;
    *(v7 + 1) = v22;
    v7[16] = v24;
    *(v7 + 3) = v25;
    *(v7 + 4) = v26;
  }

  swift_storeEnumTagMultiPayload();
  sub_10002C3F0(v7, v9);
  v27 = v30;
  *a1 = v31;
  *(a1 + 16) = v27;
  *(a1 + 32) = v12;
  v28 = type metadata accessor for PrimarySettingsListItemModel();
  sub_10002C3F0(v9, a1 + *(v28 + 20));
  *(a1 + *(v28 + 24)) = 0;
  (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
  return sub_100029920(v31, *(&v31 + 1), v30, *(&v30 + 1), v12);
}

uint64_t sub_1000E58E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000E4C78(a1, v4, v5, v6);
}

uint64_t sub_1000E5994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E531C(a1, v4, v5, v6);
}

uint64_t sub_1000E5A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrimarySettingsListItemModel();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = *(a1 + 72);
  v12 = *(v11 + 16);
  if (v12)
  {
    v46 = v2;
    v47 = a2;
    v48 = 0x8000000100120300;
    v57 = _swiftEmptyArrayStorage;
    v13 = (v11 + 80);
    v49 = &v46 - v9;
    do
    {
      v16 = *(v13 - 6);
      v17 = *(v13 - 5);
      v19 = *(v13 - 4);
      v18 = *(v13 - 3);
      v20 = *(v13 - 2);
      v21 = *(v13 - 1);
      v22 = *v13;
      v56 = v20;
      v54 = v12;
      v55 = v19;
      v53 = v16;
      if (v22)
      {
        v23 = v52;
        v24 = v50;
        v25 = &v50[*(v52 + 20)];
        *v25 = v19;
        v25[1] = v18;
        v25[2] = 1;
        type metadata accessor for PrimarySettingsListItemViewType();
        swift_storeEnumTagMultiPayload();
        *v24 = v16;
        *(v24 + 1) = v17;
        *(v24 + 2) = 0;
        *(v24 + 3) = 0;
        v24[32] = 4;
        *&v24[*(v23 + 24)] = 0;
        sub_1000E5F90(v16, v17, v19, v18, v20, v21, 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_10002C850(0, v57[2] + 1, 1, v57);
        }

        v27 = v57[2];
        v26 = v57[3];
        v28 = v27 + 1;
        v10 = v49;
        v29 = v53;
        if (v27 >= v26 >> 1)
        {
          v30 = v53;
          v57 = sub_10002C850(v26 > 1, v27 + 1, 1, v57);
          v29 = v30;
        }

        sub_100065B0C(v29, v17, v55, v18, v56, v21, 1);
        v14 = v50;
      }

      else
      {
        v31 = v52;
        v32 = &v10[*(v52 + 20)];
        *v32 = 0xD00000000000001ALL;
        *(v32 + 1) = v48;
        v32[16] = 2;
        *(v32 + 3) = v19;
        *(v32 + 4) = v18;
        *(v32 + 5) = v20;
        *(v32 + 6) = v21;
        type metadata accessor for PrimarySettingsListItemViewType();
        swift_storeEnumTagMultiPayload();
        *v10 = v16;
        *(v10 + 1) = v17;
        *(v10 + 2) = 0;
        *(v10 + 3) = 0;
        v10[32] = 3;
        *&v10[*(v31 + 24)] = 0;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_1000E5F90(v16, v17, v19, v18, v20, v21, 0);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_10002C850(0, v57[2] + 1, 1, v57);
        }

        v27 = v57[2];
        v33 = v57[3];
        v28 = v27 + 1;
        v34 = v53;
        if (v27 >= v33 >> 1)
        {
          v35 = v53;
          v57 = sub_10002C850(v33 > 1, v27 + 1, 1, v57);
          v34 = v35;
        }

        sub_100065B0C(v34, v17, v55, v18, v56, v21, 0);

        v14 = v10;
      }

      v15 = v57;
      v57[2] = v28;
      sub_10002C634(v14, v15 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27);
      v13 += 56;
      v12 = v54 - 1;
    }

    while (v54 != 1);
    v36 = *(v46 + 16);
    v37 = *(v46 + 24);
    v38 = *(v46 + 32);
    v39 = type metadata accessor for PrimarySettingsListSectionModel();
    v40 = *(v39 + 24);
    v41 = type metadata accessor for LocalizedStringResource();
    v42 = v47;
    (*(*(v41 - 8) + 56))(v47 + v40, 1, 1, v41);
    *v42 = v36;
    *(v42 + 8) = v37;
    *(v42 + 16) = v38;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    *(v42 + *(v39 + 28)) = v57;
    (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
    return sub_100025974(v36, v37, v38);
  }

  else
  {
    v44 = type metadata accessor for PrimarySettingsListSectionModel();
    v45 = *(*(v44 - 8) + 56);

    return v45(a2, 1, 1, v44);
  }
}

uint64_t sub_1000E5F30()
{
  sub_100025CD8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1000E5F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

unint64_t sub_1000E5FE4()
{
  result = qword_1001609F8;
  if (!qword_1001609F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001609F8);
  }

  return result;
}

uint64_t sub_1000E6038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &countAndFlagsBits - v7;
  v9 = type metadata accessor for PrimarySettingsListItemModel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &countAndFlagsBits - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 32);
  v43 = *(v2 + 16);
  v44 = v14;
  v45 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v16 = v45;
  v17 = v44;
  *(inited + 16) = v43;
  *(inited + 32) = v17;
  *(inited + 48) = v16;
  sub_10002698C(&v43, v42);
  sub_10005AFAC(a1, v8);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002C8C0(v8);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_10002C634(v8, v13);
    v40 = *(v9 + 24);
    v41 = a2;
    v19 = *&v13[v40];
    v20 = *(a1 + 38);
    v22 = (v19 & 1) == 0 && v20 == 1;
    v39 = v19 | v22;
    if ((v20 - 1) > 1)
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    else
    {
      v23 = [objc_opt_self() mainBundle];
      v46._object = 0x80000001001255B0;
      v24._countAndFlagsBits = 0x53544F485F46464FLL;
      v24._object = 0xEB00000000544F50;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v46._countAndFlagsBits = 0xD000000000000026;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v46);
      countAndFlagsBits = v26._countAndFlagsBits;
      object = v26._object;
    }

    v28 = sub_100029F88();
    v30 = v29;
    v32 = v31;
    v33 = sub_10002A770(v28);
    v35 = v34;
    v36 = &v13[*(v9 + 20)];
    sub_10002C758(v36, type metadata accessor for PrimarySettingsListItemViewType);
    *v36 = v28;
    *(v36 + 8) = v30;
    *(v36 + 16) = v32;
    *(v36 + 24) = v33;
    *(v36 + 32) = v35;
    *(v36 + 40) = countAndFlagsBits;
    *(v36 + 48) = object;
    type metadata accessor for PrimarySettingsListItemViewType();
    swift_storeEnumTagMultiPayload();
    *&v13[v40] = v39;
    v37 = v41;
    sub_10002C7EC(v13, v41);
    (*(v10 + 56))(v37, 0, 1, v9);
    return sub_10002C758(v13, type metadata accessor for PrimarySettingsListItemModel);
  }
}

void sub_1000E6390()
{
  v0 = [objc_opt_self() sharedManager];
}

uint64_t sub_1000E63F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for PrimarySettingsListItemModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v16 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = v13;
  *(inited + 32) = v14;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  v18 = v12;
  v19 = v7;
  v20 = v30;
  sub_100029920(v18, v13, v14, v15, v16);
  sub_10005AFAC(v20, v6);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v8 + 48))(v6, 1, v19) == 1)
  {
    sub_10002C8C0(v6);
    return (*(v8 + 56))(v31, 1, 1, v19);
  }

  else
  {
    sub_10002C634(v6, v11);
    v22 = *(v19 + 24);
    v23 = *&v11[v22];
    v24 = *(v20 + 48);
    v25 = *(v20 + 56);
    v26 = *(v20 + 64);
    if (v26 >= 0x40)
    {
      v23 |= 4uLL;
    }

    *&v11[v22] = v23;
    v27 = &v11[*(v19 + 20)];
    sub_10002C7B8(v24, v25, v26);
    sub_10002C758(v27, type metadata accessor for PrimarySettingsListItemViewType);
    *v27 = v24;
    *(v27 + 8) = v25;
    *(v27 + 16) = v26;
    type metadata accessor for PrimarySettingsListItemViewType();
    swift_storeEnumTagMultiPayload();
    v28 = v31;
    sub_10002C7EC(v11, v31);
    (*(v8 + 56))(v28, 0, 1, v19);
    return sub_10002C758(v11, type metadata accessor for PrimarySettingsListItemModel);
  }
}

uint64_t sub_1000E66B8()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);

    Task.cancel()();

    v2 = *(v0 + 56);
  }

  *(v0 + 56) = 0;

  sub_100025CD8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1000122B4(v0 + 40);
  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E6758()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;

  v10 = sub_100094AF4(0, 0, v4, &unk_100117FE8, v9);
  v11 = *(v0 + 56);
  *(v0 + 56) = v10;

  v6(v4, 1, 1, v5);
  v12 = swift_allocObject();
  swift_weakInit();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;

  sub_100094DF4(0, 0, v4, &unk_100117FF8, v14);
}

uint64_t sub_1000E6978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_10004DED0(&qword_100160C58, &qword_100118000);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_10004DED0(&qword_100160C60, &qword_100118008);
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v12;
  v4[17] = v11;

  return _swift_task_switch(sub_1000E6AE4, v12, v11);
}

uint64_t sub_1000E6AE4()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v0[18] = type metadata accessor for ScreenSharingInteractionController();
  v6 = static ScreenSharingInteractionController.shared.getter();
  sub_1000E7758();
  v7 = ObservableObject<>.objectWillChange.getter();

  v0[5] = v7;
  type metadata accessor for ObservableObjectPublisher();
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v8 = v0[14];
  v0[19] = static MainActor.shared.getter();
  v9 = sub_1000E77B0();
  v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_1000E6C58;
  v12 = v0[13];
  v13 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 22, v13, v9);
}

uint64_t sub_1000E6C58()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E7044;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E6DF0;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000E6DF0()
{
  v1 = *(v0 + 152);

  *(v0 + 177) = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  return _swift_task_switch(sub_1000E6E5C, v2, v3);
}

uint64_t sub_1000E6E5C()
{
  if ((*(v0 + 177) & 1) != 0 || (v1 = *(v0 + 56), (Strong = swift_weakLoadStrong()) == 0))
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v3 = Strong;
    v4 = *(v0 + 144);
    v5 = static ScreenSharingInteractionController.shared.getter();
    v6 = dispatch thunk of ScreenSharingInteractionController.remoteControlStatus.getter();

    if ((v6 == 2) != *(v3 + 33) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    *(v3 + 33) = v6 == 2;

    v7 = *(v0 + 112);
    *(v0 + 152) = static MainActor.shared.getter();
    v8 = sub_1000E77B0();
    v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_1000E6C58;
    v11 = *(v0 + 104);
    v12 = *(v0 + 88);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 176, v12, v8);
  }
}

uint64_t sub_1000E7044()
{
  *(v0 + 48) = *(v0 + 168);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E70D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E7168, v6, v5);
}

uint64_t sub_1000E7168()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    type metadata accessor for ScreenSharingInteractionController();
    v4 = static ScreenSharingInteractionController.shared.getter();
    v5 = dispatch thunk of ScreenSharingInteractionController.remoteControlStatus.getter();

    if ((v5 == 2) != *(Strong + 33) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    *(Strong + 33) = v5 == 2;
  }

  **(v0 + 40) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000E72A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  if (*(v1 + 33) == 1)
  {
    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    v14 = *(v1 + 32);
    v15 = type metadata accessor for PrimarySettingsListSectionModel();
    v23 = v3;
    v16 = v15;
    v24 = *(v15 + 24);
    sub_100025974(v13, v12, v14);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v23);
    v17 = v24;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v18 = type metadata accessor for LocalizedStringResource();
    (*(*(v18 - 8) + 56))(a1 + v17, 0, 1, v18);
    *a1 = v13;
    *(a1 + 8) = v12;
    *(a1 + 16) = v14;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + *(v16 + 28)) = _swiftEmptyArrayStorage;
    return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
  }

  else
  {
    v20 = type metadata accessor for PrimarySettingsListSectionModel();
    v21 = *(*(v20 - 8) + 56);

    return v21(a1, 1, 1, v20);
  }
}

uint64_t sub_1000E75F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000E6978(a1, v4, v5, v6);
}

uint64_t sub_1000E76A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E70D0(a1, v4, v5, v6);
}

unint64_t sub_1000E7758()
{
  result = qword_100160C68;
  if (!qword_100160C68)
  {
    type metadata accessor for ScreenSharingInteractionController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100160C68);
  }

  return result;
}

unint64_t sub_1000E77B0()
{
  result = qword_100160C70;
  if (!qword_100160C70)
  {
    sub_100052374(&qword_100160C60, &qword_100118008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100160C70);
  }

  return result;
}

id sub_1000E7824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v29 = a1;
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v17 = result;
    researchFuse = MobileGestalt_get_researchFuse();

    v19 = type metadata accessor for PrimarySettingsListSectionModel();
    v20 = v19;
    if (researchFuse)
    {
      v21 = *(v19 + 24);
      v22 = a2;
      v27 = a2;
      v28 = a3;
      v23 = v29;
      sub_100025974(v29, v22, a3);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v8 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      v24 = type metadata accessor for LocalizedStringResource();
      (*(*(v24 - 8) + 56))(a4 + v21, 0, 1, v24);
      v25 = v27;
      *a4 = v23;
      *(a4 + 8) = v25;
      *(a4 + 16) = v28;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + *(v20 + 28)) = _swiftEmptyArrayStorage;
      return (*(*(v20 - 8) + 56))(a4, 0, 1, v20);
    }

    else
    {
      v26 = *(*(v19 - 8) + 56);

      return v26(a4, 1, 1, v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E7B44()
{
  v1 = *v0;
  sub_100025974(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

void sub_1000E7B98()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = [objc_opt_self() sharedConnection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 cloudConfigurationDetails];

    if (v13)
    {
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v15;
      AnyHashable.init<A>(_:)();
      if (*(v14 + 16) && (v16 = sub_100017DC0(v26), (v17 & 1) != 0))
      {
        sub_10001EE30(*(v14 + 56) + 32 * v16, v27);
        sub_100017E04(v26);

        if (swift_dynamicCast())
        {
          v18 = v24;
          v19 = v25;
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v20._countAndFlagsBits = 0xD000000000000032;
          v20._object = 0x8000000100125E90;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
          v21._countAndFlagsBits = v18;
          v21._object = v19;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);

          v22._countAndFlagsBits = 0;
          v22._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
LABEL_9:
          LocalizedStringResource.init(_:table:locale:bundle:comment:)();
          return;
        }
      }

      else
      {

        sub_100017E04(v26);
      }

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000E7F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 1))
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = type metadata accessor for PrimarySettingsListSectionModel();
    v9 = *(v8 + 24);
    sub_100025974(v5, v6, v7);
    sub_1000E7B98();
    v10 = type metadata accessor for LocalizedStringResource();
    (*(*(v10 - 8) + 56))(a2 + v9, 0, 1, v10);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + *(v8 + 28)) = _swiftEmptyArrayStorage;
    v11 = *(*(v8 - 8) + 56);
    v12 = a2;
    v13 = 0;
    v14 = v8;
  }

  else
  {
    v15 = type metadata accessor for PrimarySettingsListSectionModel();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_1000E80A8()
{
  v1 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = type metadata accessor for PrimarySettingsListToggleState();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v2 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v2 + 16) = 0;
    *(v2 + 24) = sub_1000E9C8C;
    *(v2 + 32) = v3;

    v7 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1000E8184(char a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 88);
    v4 = v3;

    if (v3)
    {
      v5 = [v4 toggleVPNConnectivity:a1 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1000E8220()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  result = *(v1 + 88);
  if (result)
  {
    [result setDelegate:0];
    v8 = *(v1 + 88);
    *(v1 + 88) = 0;

    v9 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation;
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v10 = *(v3 + 8);
    v10(v6, v2);
    v11 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask;
    if (*(v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask))
    {
      v12 = *(v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask);

      Task.cancel()();

      v13 = *(v1 + v11);
    }

    *(v1 + v11) = 0;

    sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    sub_1000122B4(v1 + 72);

    v14 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStream;
    v15 = sub_10004DED0(&qword_10015EA00, &qword_100118250);
    (*(*(v15 - 8) + 8))(v1 + v14, v15);
    v10((v1 + v9), v2);
    v16 = *(v1 + v11);

    v17 = *(v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E843C()
{
  sub_1000E8220();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000E849C()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v29 = &v27 - v4;
  v5 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v28 = sub_10004DED0(&qword_100160EB0, &qword_100118230);
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v28);
  v13 = &v27 - v12;
  v14 = [objc_allocWithZone(NEVPNConnectivityManager) initWithDelegate:v1];
  v15 = *(v1 + 88);
  *(v1 + 88) = v14;
  v16 = v14;

  if (v16)
  {
    v17 = [v16 hasRelayConfigurations];
    v18 = [v16 visibilityStyle];
    v19 = [v16 connectivityState];
    (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v5);
    v30 = v17;
    v31 = v18;
    v32 = v19;
    AsyncStream.Continuation.yield(_:)();

    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v13, v28);
    v20 = type metadata accessor for TaskPriority();
    v21 = v29;
    (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
    v22 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v22;

    v25 = sub_100094AF4(0, 0, v21, &unk_100118240, v24);
    v26 = *(v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask);
    *(v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask) = v25;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E8810(void *a1)
{
  v3 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-v6];
  v8 = sub_10004DED0(&qword_100160EB0, &qword_100118230);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  v13 = [a1 hasRelayConfigurations];
  v14 = [a1 visibilityStyle];
  v15 = [a1 connectivityState];
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v3);
  v17[8] = v13;
  v18 = v14;
  v19 = v15;
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000E8A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_10004DED0(&qword_100160EB8, &qword_100118248);
  v4[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v7 = sub_10004DED0(&qword_10015EA00, &qword_100118250);
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v9 = *(v8 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v11;
  v4[23] = v10;

  return _swift_task_switch(sub_1000E8B54, v11, v10);
}

uint64_t sub_1000E8B54()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[16];
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    (*(v6 + 16))(v3, Strong + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStream, v5);

    (*(v6 + 32))(v4, v3, v5);
    sub_1000E9D48();
    AsyncSequence.debounce<>(for:tolerance:)();
    v10 = AsyncDebounceSequence.makeAsyncIterator()();
    v0[24] = v10;
    sub_1000068B0(v7, &qword_100160EB8, &qword_100118248);
    v0[11] = v10;
    swift_beginAccess();
    v11 = v0[20];
    v0[25] = static MainActor.shared.getter();
    v12 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
    v13 = swift_task_alloc();
    v0[26] = v13;
    v14 = sub_10004DED0(&qword_100160EC8, &qword_100118258);
    *v13 = v0;
    v13[1] = sub_1000E8D88;

    return AsyncDebounceSequence.Iterator.next()(v0 + 8, v14);
  }

  else
  {
    v15 = v0[21];

    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[15];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000E8D88()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(v2 + 216) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E925C;
  }

  else
  {
    *(v2 + 224) = *(v2 + 64);
    *(v2 + 240) = *(v2 + 80);
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E8F30;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000E8F30()
{
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_1000E8F94, v2, v3);
}

uint64_t sub_1000E8F94()
{
  if (*(v0 + 224) == 2 || (v1 = *(v0 + 104), (Strong = swift_weakLoadStrong()) == 0))
  {
    v10 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);

    (*(v14 + 8))(v12, v13);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 120);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v3 = Strong;
    if (*(Strong + 49) != (*(v0 + 224) & 1) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    v4 = *(v0 + 232);
    *(v3 + 49) = *(v0 + 224) & 1;
    if (v4 != *(v3 + 56) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    v5 = *(v0 + 240);
    *(v3 + 56) = *(v0 + 232);
    if (v5 != *(v3 + 64) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    *(v3 + 64) = *(v0 + 240);

    v6 = *(v0 + 160);
    *(v0 + 200) = static MainActor.shared.getter();
    v7 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    v9 = sub_10004DED0(&qword_100160EC8, &qword_100118258);
    *v8 = v0;
    v8[1] = sub_1000E8D88;

    return AsyncDebounceSequence.Iterator.next()(v0 + 64, v9);
  }
}

uint64_t sub_1000E925C()
{
  *(v0 + 96) = *(v0 + 216);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E92E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListItemViewType();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for PrimarySettingsListItemModel();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 32);
  v61 = *(v3 + 16);
  v62 = v19;
  v63 = *(v3 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v21 = v63;
  v22 = v62;
  *(inited + 16) = v61;
  *(inited + 32) = v22;
  *(inited + 48) = v21;
  sub_10002698C(&v61, v60);
  sub_10005AFAC(a1, v13);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000068B0(v13, &unk_10015EDB0, &unk_100111C70);
    return (*(v15 + 56))(a2, 1, 1, v14);
  }

  v24 = sub_10002C634(v13, v18);
  v25 = *(v14 + 24);
  v26 = *&v18[v25];
  v27 = *(v3 + 56);
  if (v27 == 1)
  {
    v34 = *(v3 + 64);
    if (v34 > 5)
    {
      goto LABEL_11;
    }

    v59 = v6;
    if (((1 << v34) & 0x19) != 0)
    {
      v35 = sub_1000E80A8();
      v36 = 0;
      if (*(v35 + 16))
      {
LABEL_10:
        v37 = v35;
        KeyPath = swift_getKeyPath();
        v57 = v25;
        v58 = a2;
        v56 = &v55;
        __chkstk_darwin(KeyPath);
        v60[0] = v37;
        sub_100057930();
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v25 = v57;

        a2 = v58;
LABEL_16:
        v47 = v26 | 4;
        v48 = sub_100029F88();
        v50 = v49;
        LODWORD(v57) = v51;
        v52 = sub_1000E9A94(*(v3 + 64));
        v53 = *(v3 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState);
        *v9 = v48;
        *(v9 + 1) = v50;
        v9[16] = v57;
        *(v9 + 3) = v52;
        *(v9 + 4) = v54;
        *(v9 + 5) = v53;
        swift_storeEnumTagMultiPayload();

LABEL_17:
        sub_10002CE90(v9, &v18[*(v14 + 20)]);
        *&v18[v25] = v47;
        sub_10002C7EC(v18, a2);
        (*(v15 + 56))(a2, 0, 1, v14);
        return sub_10002D10C(v18);
      }
    }

    else
    {
      v35 = sub_1000E80A8();
      v36 = 1;
      if ((*(v35 + 16) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    *(v35 + 16) = v36;

    goto LABEL_16;
  }

  if (v27 == 2)
  {
    v56 = *&v18[v25];
    v57 = v25;
    v58 = a2;
    v59 = v6;
    if (*(v3 + 49) == 1)
    {
      v28 = [objc_opt_self() mainBundle];
      v64._object = 0x800000010011EB70;
      v29._countAndFlagsBits = 0x65522026204E5056;
      v29._object = 0xEC0000007379616CLL;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v64._countAndFlagsBits = 0xD000000000000014;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v64);
      countAndFlagsBits = v31._countAndFlagsBits;
      object = v31._object;
    }

    else
    {
      countAndFlagsBits = sub_10002A770(v24);
      object = v39;
    }

    v40 = sub_100029F88();
    v42 = v41;
    v44 = v43;
    v45 = sub_1000E9808(*(v3 + 64));
    *v9 = v40;
    *(v9 + 1) = v42;
    v9[16] = v44;
    *(v9 + 3) = countAndFlagsBits;
    *(v9 + 4) = object;
    *(v9 + 5) = v45;
    *(v9 + 6) = v46;
    swift_storeEnumTagMultiPayload();
    v25 = v57;
    a2 = v58;
    v47 = v56;
    goto LABEL_17;
  }

LABEL_11:
  (*(v15 + 56))(a2, 1, 1, v14);
  return sub_10002D10C(v18);
}

uint64_t sub_1000E9C94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E8A08(a1, v4, v5, v6);
}

unint64_t sub_1000E9D48()
{
  result = qword_100160EC0;
  if (!qword_100160EC0)
  {
    sub_100052374(&qword_10015EA00, &qword_100118250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100160EC0);
  }

  return result;
}

uint64_t sub_1000E9DAC()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015E9A8, &unk_100115C80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_observationTasks;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v26 = v11;
    v27 = v3;
    v28 = v2;

    v14 = 32;
    do
    {
      v15 = *(v12 + v14);

      Task.cancel()();

      v14 += 8;
      --v13;
    }

    while (v13);

    v3 = v27;
    v2 = v28;
    v11 = v26;
  }

  v16 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_100059CA0(v1 + v16, v10, &qword_10015F9A8, &qword_100117210);
  v17 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v10, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    (*(v18 + 8))(v10, v17);
    v20 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStreamContinuation;
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v21 = *(v3 + 8);
    v21(v6, v2);
    sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    sub_1000122B4(v1 + 56);
    sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStream, &unk_10015F9B0, &unk_1001170F0);
    sub_1000068B0(v1 + v16, &qword_10015F9A8, &qword_100117210);

    v22 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStream;
    v23 = sub_10004DED0(&qword_10015E9B0, &qword_100118370);
    (*(*(v23 - 8) + 8))(v1 + v22, v23);
    v21((v1 + v20), v2);
    v24 = *(v1 + v11);

    return v1;
  }

  return result;
}

uint64_t sub_1000EA130()
{
  sub_1000E9DAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000EA190()
{
  v1 = v0;
  v117 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v116 = *(v117 - 8);
  v2 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v109 - v3;
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v120 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v133 = &v109 - v9;
  __chkstk_darwin(v8);
  v140 = &v109 - v10;
  v11 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v141 = &v109 - v13;
  v14 = sub_10004DED0(&unk_10015F9B0, &unk_1001170F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v139 = &v109 - v16;
  v17 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v109 - v20);
  v22 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v121 = *(v22 - 8);
  v23 = *(v121 + 64);
  v24 = __chkstk_darwin(v22);
  v132 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v109 - v25;
  v27 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v113 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v31;
  __chkstk_darwin(v30);
  v33 = &v109 - v32;
  *v21 = 1;
  (*(v18 + 104))(v21, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v17);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v18 + 8))(v21, v17);
  v34 = v28[2];
  v35 = v139;
  v118 = v33;
  v111 = v28 + 2;
  v110 = v34;
  v34(v139, v33, v27);
  v119 = v28;
  v36 = v28[7];
  v37 = v35;
  v114 = v27;
  v36(v35, 0, 1, v27);
  v38 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStream;
  swift_beginAccess();
  sub_1000BB1A0(v37, v1 + v38, &unk_10015F9B0, &unk_1001170F0);
  swift_endAccess();
  v39 = v121;
  v40 = v121 + 16;
  v41 = *(v121 + 16);
  v42 = v141;
  v41(v141, v26, v22);
  (*(v39 + 56))(v42, 0, 1, v22);
  v43 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000BB1A0(v42, v1 + v43, &qword_10015F9A8, &qword_100117210);
  swift_endAccess();
  v44 = v132;
  v134 = v26;
  v45 = v26;
  v46 = v133;
  v129 = v40;
  v128 = v41;
  v41(v132, v45, v22);
  v47 = *(v39 + 80);
  v130 = v23;
  v48 = swift_allocObject();
  v49 = *(v39 + 32);
  v135 = v22;
  v126 = v39 + 32;
  v125 = v49;
  v49((v48 + ((v47 + 16) & ~v47)), v44, v22);
  aBlock[4] = sub_1000ECE7C;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_100151FB0;
  v50 = _Block_copy(aBlock);
  v51 = [objc_opt_self() contextWithBundleId:0 onChange:v50];
  _Block_release(v50);

  v52 = *(v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_appSettingsContext);
  *(v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_appSettingsContext) = v51;

  v131 = v146;
  v146[0] = NSCurrentLocaleDidChangeNotification;
  v146[1] = UIApplicationWillEnterForegroundNotification;
  v138 = type metadata accessor for MainActor();
  v53 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_observationTasks;
  v54 = type metadata accessor for TaskPriority();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v55 += 56;
  v137 = v56;
  v127 = v47;
  v124 = (v47 + 40) & ~v47;
  v123 = (v55 - 8);
  v136 = v55;
  v122 = (v55 - 48);
  v57 = NSCurrentLocaleDidChangeNotification;
  v58 = UIApplicationWillEnterForegroundNotification;
  v59 = 0;
  v60 = 0;
  v141 = v54;
  do
  {
    v61 = v53;
    LODWORD(v139) = v59;
    v62 = v131[v60];
    v63 = v140;
    v137(v140, 1, 1, v141);
    v64 = v132;
    v65 = v135;
    v128(v132, v134, v135);
    v66 = v62;
    v67 = static MainActor.shared.getter();
    v68 = v124;
    v69 = swift_allocObject();
    *(v69 + 2) = v67;
    *(v69 + 3) = &protocol witness table for MainActor;
    *(v69 + 4) = v66;
    v125(&v69[v68], v64, v65);
    v70 = v63;
    v71 = v141;
    sub_100059CA0(v70, v46, &unk_10015D490, &qword_100112150);
    LODWORD(v67) = (*v123)(v46, 1, v71);

    if (v67 == 1)
    {
      sub_1000068B0(v46, &unk_10015D490, &qword_100112150);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v122)(v46, v71);
    }

    v72 = v1;
    v74 = *(v69 + 2);
    v73 = *(v69 + 3);
    swift_unknownObjectRetain();

    v53 = v61;
    if (v74)
    {
      swift_getObjectType();
      v75 = dispatch thunk of Actor.unownedExecutor.getter();
      v77 = v76;
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    sub_1000068B0(v140, &unk_10015D490, &qword_100112150);
    v78 = swift_allocObject();
    *(v78 + 16) = &unk_100118338;
    *(v78 + 24) = v69;
    if (v77 | v75)
    {
      v142 = 0;
      v143 = 0;
      v144 = v75;
      v145 = v77;
    }

    v79 = swift_task_create();
    v1 = v72;
    swift_beginAccess();
    v80 = *(v72 + v61);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v72 + v61) = v80;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = sub_100015698(0, v80[2] + 1, 1, v80);
      *(v72 + v61) = v80;
    }

    v46 = v133;
    v83 = v80[2];
    v82 = v80[3];
    if (v83 >= v82 >> 1)
    {
      v80 = sub_100015698((v82 > 1), v83 + 1, 1, v80);
    }

    v80[2] = v83 + 1;
    v80[v83 + 4] = v79;
    *(v1 + v61) = v80;
    swift_endAccess();

    v59 = 1;
    v60 = 1;
  }

  while ((v139 & 1) == 0);
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  v137(v120, 1, 1, v71);
  v84 = swift_allocObject();
  swift_weakInit();
  v85 = v113;
  v86 = v114;
  v110(v113, v118, v114);

  v87 = static MainActor.shared.getter();
  v88 = v119;
  v89 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v90 = (v112 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  *(v91 + 16) = v87;
  *(v91 + 24) = &protocol witness table for MainActor;
  (v88[4])(v91 + v89, v85, v86);
  *(v91 + v90) = v84;
  v92 = v120;

  v93 = sub_100094AF4(0, 0, v92, &unk_100118350, v91);
  swift_beginAccess();
  v94 = *(v1 + v53);

  v95 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v53) = v94;
  if ((v95 & 1) == 0)
  {
    v94 = sub_100015698(0, v94[2] + 1, 1, v94);
    *(v1 + v53) = v94;
  }

  v97 = v94[2];
  v96 = v94[3];
  if (v97 >= v96 >> 1)
  {
    v94 = sub_100015698((v96 > 1), v97 + 1, 1, v94);
  }

  v94[2] = v97 + 1;
  v94[v97 + 4] = v93;
  *(v1 + v53) = v94;
  swift_endAccess();
  v137(v92, 1, 1, v141);
  v98 = swift_allocObject();
  swift_weakInit();

  v99 = static MainActor.shared.getter();
  v100 = swift_allocObject();
  v100[2] = v99;
  v100[3] = &protocol witness table for MainActor;
  v100[4] = v98;

  v101 = sub_100094AF4(0, 0, v92, &unk_100118360, v100);
  swift_beginAccess();
  v102 = *(v1 + v53);

  v103 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v53) = v102;
  if ((v103 & 1) == 0)
  {
    v102 = sub_100015698(0, v102[2] + 1, 1, v102);
    *(v1 + v53) = v102;
  }

  v105 = v102[2];
  v104 = v102[3];
  if (v105 >= v104 >> 1)
  {
    v102 = sub_100015698((v104 > 1), v105 + 1, 1, v102);
  }

  v102[2] = v105 + 1;
  v102[v105 + 4] = v101;
  *(v1 + v53) = v102;
  swift_endAccess();
  v106 = v115;
  v107 = v134;
  AsyncStream.Continuation.yield<A>()();

  (*(v116 + 8))(v106, v117);
  (*(v121 + 8))(v107, v135);
  return (v119[1])(v118, v86);
}

uint64_t sub_1000EB07C()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  AsyncStream.Continuation.yield<A>()();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000EB148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v14;
  v5[15] = v13;

  return _swift_task_switch(sub_1000EB2E0, v14, v13);
}

uint64_t sub_1000EB2E0()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v4 = v0[12];
  v0[16] = static MainActor.shared.getter();
  v5 = sub_1000E1930();
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1000EB3E8;
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_1000EB3E8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000EB7AC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000EB580;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000EB580()
{
  v1 = v0[16];

  v2 = v0[14];
  v3 = v0[15];

  return _swift_task_switch(sub_1000EB5E4, v2, v3);
}

uint64_t sub_1000EB5E4()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[13];
    v4 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    AsyncStream.Continuation.yield<A>()();
    (*(v8 + 8))(v7, v10);
    sub_1000068B0(v1, &unk_10015FCF0, &unk_100117B60);
    v11 = v0[12];
    v0[16] = static MainActor.shared.getter();
    v12 = sub_1000E1930();
    v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_1000EB3E8;
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v17, v12);
  }
}

uint64_t sub_1000EB7AC()
{
  *(v0 + 16) = *(v0 + 144);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000EB838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_10004DED0(&qword_100161008, &qword_100118378);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[18] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v12;
  v5[23] = v11;

  return _swift_task_switch(sub_1000EB978, v12, v11);
}

uint64_t sub_1000EB978()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_10001AE08();
  AsyncSequence.debounce<>(for:tolerance:)();
  v5 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[24] = v5;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[11] = v5;
  swift_beginAccess();
  v6 = v0[20];
  v0[25] = static MainActor.shared.getter();
  v7 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v8 = swift_task_alloc();
  v0[26] = v8;
  v9 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v8 = v0;
  v8[1] = sub_1000EBAE0;

  return AsyncDebounceSequence.Iterator.next()(v0 + 31, v9);
}

uint64_t sub_1000EBAE0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(v2 + 216) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000E925C;
  }

  else
  {
    *(v2 + 251) = *(v2 + 248);
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000EBC80;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000EBC80()
{
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_1000EBCE4, v2, v3);
}

uint64_t sub_1000EBCE4()
{
  if (*(v0 + 251) == 1 || (v1 = *(v0 + 112), Strong = swift_weakLoadStrong(), (*(v0 + 224) = Strong) == 0))
  {
    v4 = *(v0 + 168);
    goto LABEL_6;
  }

  if (static Task<>.isCancelled.getter())
  {
    v3 = *(v0 + 168);

LABEL_6:

    v5 = *(v0 + 192);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);

    v8 = *(v0 + 8);

    return v8();
  }

  return _swift_task_switch(sub_1000EBDDC, 0, 0);
}

uint64_t sub_1000EBDDC()
{
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10000411C;
  v0[5] = &unk_1001520A0;
  v1 = _Block_copy(v0 + 2);
  v2 = [objc_opt_self() contextWithBundleId:0 onChange:v1];
  v0[29] = v2;
  _Block_release(v1);
  v3 = v0[7];

  v4 = [v2 topLevelSettingsEntryType];
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v4 == 1)
  {
    v17 = 3;
  }

  else
  {
    if (v4 == 2)
    {
      v5 = MobileGestalt_get_current_device();
      if (!v5)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v13 = v5;
      iPadCapability = MobileGestalt_get_iPadCapability();

      if (iPadCapability)
      {
LABEL_6:
        v15 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v16 = swift_task_alloc();
        v0[30] = v16;
        *v16 = v0;
        v16[1] = sub_1000EBFEC;
        v12 = &type metadata for PaymentAndContactlessState;
        v10 = sub_1000ECEE8;
        v5 = v0 + 250;
        v9 = 0x8000000100126190;
        v6 = 0;
        v7 = 0;
        v8 = 0xD000000000000025;
        v11 = 0;

        return withCheckedContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    v17 = 0;
  }

  *(v0 + 252) = v17;

  v18 = v0[22];
  v19 = v0[23];

  return _swift_task_switch(sub_1000EC154, v18, v19);
}

uint64_t sub_1000EBFEC()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_1000EC0E8, 0, 0);
}

uint64_t sub_1000EC0E8()
{
  *(v0 + 252) = *(v0 + 250);

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_1000EC154, v1, v2);
}

uint64_t sub_1000EC154()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  *(v0 + 249) = *(v0 + 252);
  sub_10004DED0(&qword_10015E9A8, &unk_100115C80);
  AsyncStream.Continuation.yield(_:)();

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 200) = static MainActor.shared.getter();
  v6 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  v8 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v7 = v0;
  v7[1] = sub_1000EBAE0;

  return AsyncDebounceSequence.Iterator.next()(v0 + 248, v8);
}

uint64_t sub_1000EC28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004DED0(&qword_100161000, &qword_100118368);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_10004DED0(&qword_10015E9B0, &qword_100118370);
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v12;
  v4[19] = v11;

  return _swift_task_switch(sub_1000EC404, v12, v11);
}

uint64_t sub_1000EC404()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[11];
    v8 = v0[8];
    (*(v6 + 16))(v3, Strong + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStream, v5);

    (*(v6 + 32))(v4, v3, v5);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v9 = v0[16];
    v10 = static MainActor.shared.getter();
    v0[20] = v10;
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_1000EC5DC;
    v13 = v0[11];
    v14 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 22, v10, &protocol witness table for MainActor, v14);
  }

  else
  {
    v15 = v0[17];

    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[11];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000EC5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return _swift_task_switch(sub_1000EC720, v5, v4);
}

uint64_t sub_1000EC720()
{
  v1 = *(v0 + 176);
  if (v1 == 4 || (v2 = *(v0 + 64), (Strong = swift_weakLoadStrong()) == 0))
  {
LABEL_5:
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 72);

    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v6, v7);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 88);

    v15 = *(v0 + 8);

    return v15();
  }

  v4 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_5;
  }

  if (v1 != *(v4 + 49) && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel();
    sub_1000A2E28();
    swift_unknownObjectRelease();
  }

  *(v4 + 49) = v1;

  v17 = *(v0 + 128);
  v18 = static MainActor.shared.getter();
  *(v0 + 160) = v18;
  v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  *(v0 + 168) = v20;
  *v20 = v0;
  v20[1] = sub_1000EC5DC;
  v21 = *(v0 + 88);
  v22 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 176, v18, &protocol witness table for MainActor, v22);
}

uint64_t sub_1000EC934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListItemViewType();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for PrimarySettingsListItemModel();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + 49);
  if (*(v3 + 49))
  {
    v53 = v6;
    v54 = a2;
    if (v25 == 3)
    {
      v26 = 33;
    }

    else
    {
      v26 = 32;
    }

    v56 = v26;
    v57 = 0uLL;
    v58 = 6;
    v55 = v22;
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    v28 = v57;
    *(inited + 16) = v56;
    *(inited + 32) = v28;
    *(inited + 48) = v58;
    sub_100029920(v26, 0, 0, 0, 6u);
    sub_10005AFAC(a1, v19);
    swift_setDeallocating();
    sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
    if ((*(v55 + 48))(v19, 1, v20) == 1)
    {
      sub_10002C5C0(v26, 0, 0, 0, 6u);
      sub_1000068B0(v19, &unk_10015EDB0, &unk_100111C70);
      return (*(v55 + 56))(v54, 1, 1, v20);
    }

    sub_1000D0C28(v19, v24, type metadata accessor for PrimarySettingsListItemModel);
    v31 = *(v3 + 49);
    v32 = sub_100029F88();
    v35 = v32;
    if (v31 == 2)
    {
      v51 = v33;
      v52 = v34;
      countAndFlagsBits = sub_10002A770(v32);
      object = v42;
      sub_10002C5C0(v26, 0, 0, 0, 6u);
    }

    else
    {
      if (v31 == 3)
      {
        v36 = v34;
        v37 = v33;
        v38 = sub_10002A770(v32);
        v40 = v39;
        sub_10002C5C0(v26, 0, 0, 0, 6u);
        *v13 = v35;
        *(v13 + 1) = v37;
        v13[16] = v36;
        *(v13 + 3) = v38;
        *(v13 + 4) = v40;
        swift_storeEnumTagMultiPayload();
LABEL_16:
        v49 = v54;
        sub_1000D0C28(v13, v15, type metadata accessor for PrimarySettingsListItemViewType);
        sub_10002CE90(v15, &v24[*(v20 + 20)]);
        sub_10002C7EC(v24, v49);
        (*(v55 + 56))(v49, 0, 1, v20);
        return sub_10002D10C(v24);
      }

      v51 = v33;
      v52 = v34;
      sub_10002C5C0(v26, 0, 0, 0, 6u);
      v44 = [objc_opt_self() mainBundle];
      v60._object = 0x800000010011EB70;
      v45._countAndFlagsBits = 0x74656C6C6157;
      v45._object = 0xE600000000000000;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v60._countAndFlagsBits = 0xD000000000000014;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v60);
      countAndFlagsBits = v47._countAndFlagsBits;
      object = v47._object;
    }

    v48 = v51;
    *v10 = v35;
    *(v10 + 1) = v48;
    v10[16] = v52;
    *(v10 + 3) = countAndFlagsBits;
    *(v10 + 4) = object;
    swift_storeEnumTagMultiPayload();
    sub_1000D0C28(v10, v13, type metadata accessor for PrimarySettingsListItemViewType);
    goto LABEL_16;
  }

  v30 = *(v22 + 56);

  return v30(a2, 1, 1, v20);
}

uint64_t sub_1000ECE7C()
{
  v0 = *(*(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8) + 80);

  return sub_1000EB07C();
}

void sub_1000ECEE8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161010, &unk_100118380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  v8 = [objc_opt_self() sharedService];
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_1000ED6F8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000ED38C;
  aBlock[3] = &unk_1001520F0;
  v11 = _Block_copy(aBlock);

  [v7 shouldShowWalletInSettingsWithApplePaySupportInformation:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1000ED0D0(char a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    if ([objc_opt_self() isPassLibraryAvailable])
    {
      v14 = [objc_allocWithZone(PKPassLibrary) init];
      v15 = [v14 passesOfType:1];

      sub_1000ED78C();
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();

        if (a1)
        {
LABEL_13:
          if (a2)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (a1)
        {
          goto LABEL_13;
        }
      }

      if (v17)
      {
        goto LABEL_13;
      }
    }

    else if (a1)
    {
      goto LABEL_13;
    }

    v18 = 0;
LABEL_17:
    LOBYTE(v19) = v18;
    sub_10004DED0(&qword_100161010, &unk_100118380);
    return CheckedContinuation.resume(returning:)();
  }

  swift_errorRetain();
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_1001696D0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100025CF0(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to resolve wallet and apple pay visibility with error: %s", v6, 0xCu);
    sub_10000665C(v7);
  }

  LOBYTE(v19) = 0;
  sub_10004DED0(&qword_100161010, &unk_100118380);
  CheckedContinuation.resume(returning:)();
}

void sub_1000ED38C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1000ED414(uint64_t a1)
{
  v4 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000EB148(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000ED518(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ACE4;

  return sub_1000EB838(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000ED644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000EC28C(a1, v4, v5, v6);
}

uint64_t sub_1000ED6F8(char a1, char a2, uint64_t a3)
{
  v6 = *(*(sub_10004DED0(&qword_100161010, &unk_100118380) - 8) + 80);

  return sub_1000ED0D0(a1, a2, a3);
}

unint64_t sub_1000ED78C()
{
  result = qword_100161018;
  if (!qword_100161018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100161018);
  }

  return result;
}

Swift::Int sub_1000ED7E8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      Hasher._combine(_:)(v3);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000ED8A0()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_13:
      Hasher._combine(_:)(v2);
      return;
    }
  }

  v3 = *v0;
  Hasher._combine(_:)(4uLL);

  String.hash(into:)();
}

Swift::Int sub_1000ED950()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      Hasher._combine(_:)(v3);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EDA04(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000EDA90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v5 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (a2 == 3)
    {
      if (v5 == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a2)
    {
      if (!v5)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (a2 == 1)
    {
      if (v5 == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  if (v5 >= 4 && (*(v2 + 16) == a1 && v5 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    goto LABEL_20;
  }

LABEL_18:
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel();
    sub_1000A2E28();
    swift_unknownObjectRelease();
  }

LABEL_20:
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return sub_1000EE8D8(v6, v7);
}

uint64_t sub_1000EDBC4()
{
  v1 = *(v0 + 72);
  if (v1 && ([v1 setHandler:0], (v2 = *(v0 + 72)) != 0))
  {
    [v2 stopMonitoring];
    v3 = *(v0 + 72);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = 0;

  sub_1000EE8D8(*(v0 + 16), *(v0 + 24));
  sub_10002C5C0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  sub_1000122B4(v0 + 80);
  return v0;
}

uint64_t sub_1000EDC44()
{
  sub_1000EDBC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EDC78(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000EDC90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EDCE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1000EDD40(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000EDD74()
{
  result = qword_1001610D8;
  if (!qword_1001610D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001610D8);
  }

  return result;
}

void sub_1000EDDC8()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = objc_allocWithZone(WFWiFiStateMonitor);
  v8[4] = sub_1000EE810;
  v8[5] = v1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000EE7B0;
  v8[3] = &unk_1001521F8;
  v3 = _Block_copy(v8);

  v4 = [v2 initWithClient:0 handler:v3];
  _Block_release(v3);

  v5 = *(v0 + 72);
  *(v0 + 72) = v4;
  v6 = v4;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    [v6 setIdentifier:v7];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000EDF2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v10[5] = a2;

  sub_100094DF4(0, 0, v6, &unk_100118498, v10);
}

uint64_t sub_1000EE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000EE154, v7, v6);
}

uint64_t sub_1000EE154()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000EE1FC(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void *sub_1000EE1FC(uint64_t a1)
{
  result = *(v1 + 72);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = [result linkQuality];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 ssid];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (a1 > 2)
      {
        goto LABEL_5;
      }

LABEL_10:
      if (!a1)
      {
        goto LABEL_19;
      }

      if (a1 == 1)
      {

        v10 = 0;
        v11 = 2;
        goto LABEL_21;
      }

      if (a1 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  v7 = 0;
  v9 = 0;
  if (a1 <= 2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (a1 != 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        goto LABEL_8;
      }

LABEL_19:

      v10 = 0;
      v11 = 1;
      goto LABEL_21;
    }

LABEL_13:
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_21;
  }

LABEL_8:

  v10 = 0;
  v11 = 3;
LABEL_21:

  return sub_1000EDA90(v10, v11);
}

uint64_t sub_1000EE328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for PrimarySettingsListItemModel();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 48);
  v56 = *(v3 + 32);
  v57 = v15;
  v58 = *(v3 + 64);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v17 = v58;
  v18 = v57;
  *(inited + 16) = v56;
  *(inited + 32) = v18;
  *(inited + 48) = v17;
  sub_10002698C(&v56, v55);
  sub_10005AFAC(a1, v9);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10002C8C0(v9);
    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_10002C634(v9, v14);
    v20 = *(v10 + 24);
    v21 = *&v14[v20];
    v23 = (v21 & 1) == 0 && *(v3 + 24) == 1;
    v24 = sub_100029F88();
    v53 = v25;
    v54 = v24;
    v52 = v26;
    v51 = sub_10002A770(v24);
    v50 = v27;
    v49 = sub_10002CCA8();
    v48 = v28;
    if (qword_10015AAF8 != -1)
    {
      swift_once();
    }

    v29 = v21 | v23;
    v30 = type metadata accessor for Logger();
    sub_10000659C(v30, qword_100169760);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = a2;
      v34 = v33;
      v35 = swift_slowAlloc();
      v46 = v20;
      v36 = v29;
      v37 = v35;
      v55[0] = v35;
      *v34 = 136315138;
      v38 = sub_10002CCA8();
      v40 = sub_100025CF0(v38, v39, v55);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "[WiFi] Top-Level Settings Wi-Fi cell displays %s", v34, 0xCu);
      sub_10000665C(v37);
      v29 = v36;
      v20 = v46;

      a2 = v47;
    }

    v41 = &v14[*(v10 + 20)];
    sub_10002C758(v41, type metadata accessor for PrimarySettingsListItemViewType);
    v42 = v53;
    *v41 = v54;
    *(v41 + 8) = v42;
    *(v41 + 16) = v52;
    v43 = v50;
    *(v41 + 24) = v51;
    *(v41 + 32) = v43;
    v44 = v48;
    *(v41 + 40) = v49;
    *(v41 + 48) = v44;
    type metadata accessor for PrimarySettingsListItemViewType();
    swift_storeEnumTagMultiPayload();
    *&v14[v20] = v29;
    sub_10002C7EC(v14, a2);
    (*(v11 + 56))(a2, 0, 1, v10);
    return sub_10002C758(v14, type metadata accessor for PrimarySettingsListItemModel);
  }
}

uint64_t sub_1000EE7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_1000EE818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000EE0B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000EE8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_1000EE8F0()
{
  result = qword_1001610E0;
  if (!qword_1001610E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001610E0);
  }

  return result;
}

uint64_t sub_1000EE944()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_1000EE9F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (v6 = *(v2 + 32), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000EEB54(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000EEC5C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

void sub_1000EED28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC11SettingsApp27SettingsOmniSearchViewModel___observationRegistrar;
  v31[3] = v2;
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  v31[1] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v10 = v2[5];
  v11 = v2[6];

  v12 = sub_1000F37D8(a1, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    SettingsSearchResultItem.url.getter();
    URL.absoluteString.getter();
    (*(v5 + 8))(v8, v4);
    SettingsSearchResultItem.localizedTitle.getter();
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:v12];
    v16 = objc_allocWithZone(BMSystemSettingsSearchTermsSearchResultClickedOn);
    v17 = String._bridgeToObjectiveC()();

    v18 = String._bridgeToObjectiveC()();

    v19 = [v16 initWithBundleIDwithAnchor:v17 searchResultTitle:v18 index:v15];

    swift_getKeyPath();
    v31[2] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = v2[3];
    v21 = v2[4];
    sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100115DD0;
    *(v22 + 32) = v19;
    v23 = objc_allocWithZone(BMSystemSettingsSearchTerms);

    v24 = v19;
    v25 = String._bridgeToObjectiveC()();

    sub_100008294(0, &qword_1001611F0, BMSystemSettingsSearchTermsSearchResultClickedOn_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v23 initWithSearchTerm:v25 searchResultsClickedOn:isa];

    v28 = [BiomeLibrary() SystemSettings];
    swift_unknownObjectRelease();
    v29 = [v28 SearchTerms];
    swift_unknownObjectRelease();
    v30 = [v29 source];

    [v30 sendEvent:v27];
  }
}

uint64_t sub_1000EF10C()
{
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000EF1AC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for CancellationError();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = *(*(sub_10004DED0(&unk_10015EFF0, &unk_100116270) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for SettingsSearchResultItem();
  v3[23] = v8;
  v9 = *(v8 - 8);
  v3[24] = v9;
  v10 = *(v9 + 64) + 15;
  v3[25] = swift_task_alloc();
  v11 = *(*(sub_10004DED0(&qword_10015B0E8, &qword_100118670) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v12 = sub_10004DED0(&qword_1001611B8, &qword_100118678);
  v3[27] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v14 = sub_10004DED0(&qword_1001611C0, &qword_100118680);
  v3[29] = v14;
  v15 = *(v14 - 8);
  v3[30] = v15;
  v16 = *(v15 + 64) + 15;
  v3[31] = swift_task_alloc();
  v17 = type metadata accessor for OSSignpostID();
  v3[32] = v17;
  v18 = *(v17 - 8);
  v3[33] = v18;
  v19 = *(v18 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = type metadata accessor for MainActor();
  v3[37] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[38] = v21;
  v3[39] = v20;

  return _swift_task_switch(sub_1000EF480, v21, v20);
}

uint64_t sub_1000EF480()
{
  v142 = v0;
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[17];
  v3 = type metadata accessor for OSSignposter();
  sub_10000659C(v3, qword_100169718);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[35];
    v8 = v0[16];
    v7 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v141[0] = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_100025CF0(v8, v7, v141);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "SettingsOmniSearchViewModel.performSearch", "queryString: %{private,mask.hash}s", v9, 0x16u);
    sub_10000665C(v10);
  }

  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[33];
  v16 = v0[16];
  v15 = v0[17];
  (*(v14 + 16))(v0[34], v12, v13);
  v17 = type metadata accessor for OSSignpostIntervalState();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[40] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  v20 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v47 = v0[37];

LABEL_65:
    sub_1000F28D0();

    v132 = v0[34];
    v131 = v0[35];
    v133 = v0[31];
    v134 = v0[28];
    v136 = v0[25];
    v135 = v0[26];
    v138 = v0[21];
    v137 = v0[22];

    v139 = v0[1];

    return v139();
  }

  v21 = v0[18];
  sub_100008294(0, &qword_10015D9D8, CSUserQuery_ptr);
  swift_getKeyPath();
  v0[41] = OBJC_IVAR____TtC11SettingsApp27SettingsOmniSearchViewModel___observationRegistrar;
  v0[7] = v21;
  v0[42] = sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v21 + 24);
  v23 = *(v21 + 32);

  v0[43] = static CSUserQuery.searchQuery(with:in:disableSemanticSearch:)();

  v24 = sub_1000BA3B8(&_swiftEmptyArrayStorage);
  v0[5] = &_swiftEmptyArrayStorage;
  v0[6] = v24;
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = String._bridgeToObjectiveC()();
  LODWORD(v21) = [v25 BOOLForKey:v26];

  if (v21)
  {
    v27 = v0[37];

    type metadata accessor for CSSearchQueryError(0);
    v0[15] = -2000;
    sub_1000F38F8(&_swiftEmptyArrayStorage);
    sub_100020C28(&qword_10015AE68, type metadata accessor for CSSearchQueryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v0[14];
    if (qword_10015AAA8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000659C(v29, qword_100169670);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = v30;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "Force throwing querying error: '%{public}@'.", v33, 0xCu);
      sub_1000068B0(v34, &unk_10015F9C0, &unk_100115230);
    }

    swift_willThrow();
    v37 = v0[21];
    v38 = v0[19];
    v0[9] = v30;
    swift_errorRetain();
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    if (swift_dynamicCast())
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v39 = v0[17];
      sub_10000659C(v29, qword_100169670);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v43 = v0[16];
        v42 = v0[17];
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v141[0] = v45;
        *v44 = 141558275;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        *(v44 + 14) = sub_100025CF0(v43, v42, v141);
        _os_log_impl(&_mh_execute_header, v40, v41, "Current Search cancelled by system: '%{private,mask.hash}s'.", v44, 0x16u);
        sub_10000665C(v45);
      }

      (*(v0[20] + 8))(v0[21], v0[19]);
      v46 = v0[9];
    }

    else
    {
      v70 = v0[9];

      type metadata accessor for Code(0);
      v0[10] = -2003;
      swift_errorRetain();
      sub_100020C28(&qword_10015AE48, type metadata accessor for Code);
      v71 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v71)
      {

        if (qword_10015AAA8 != -1)
        {
          swift_once();
        }

        v72 = v0[17];
        sub_10000659C(v29, qword_100169670);

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v76 = v0[16];
          v75 = v0[17];
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v141[0] = v78;
          *v77 = 141558275;
          *(v77 + 4) = 1752392040;
          *(v77 + 12) = 2081;
          *(v77 + 14) = sub_100025CF0(v76, v75, v141);
          _os_log_impl(&_mh_execute_header, v73, v74, "Current Search cancelled by user: '%{private,mask.hash}s'.", v77, 0x16u);
          sub_10000665C(v78);
        }
      }

      else
      {
        if (qword_10015AAA8 != -1)
        {
          swift_once();
        }

        v79 = v0[17];
        sub_10000659C(v29, qword_100169670);

        swift_errorRetain();
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v83 = v0[16];
          v82 = v0[17];
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v141[0] = v86;
          *v84 = 141558531;
          *(v84 + 4) = 1752392040;
          *(v84 + 12) = 2081;
          *(v84 + 14) = sub_100025CF0(v83, v82, v141);
          *(v84 + 22) = 2114;
          swift_errorRetain();
          v87 = _swift_stdlib_bridgeErrorToNSError();
          *(v84 + 24) = v87;
          *v85 = v87;
          _os_log_impl(&_mh_execute_header, v80, v81, "Current Search for '%{private,mask.hash}s' failed with error: '%{public}@'.", v84, 0x20u);
          sub_1000068B0(v85, &unk_10015F9C0, &unk_100115230);

          sub_10000665C(v86);
        }

        if (qword_10015AB08 != -1)
        {
          swift_once();
        }

        swift_errorRetain();
        sub_10008E574(v30);

        sub_100082D64();
      }
    }

    v88 = static Task<>.isCancelled.getter();
    v89 = v0[5];
    if (v88)
    {
      v90 = v0[5];

      v91 = v0[6];

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v92 = v0[17];
      sub_10000659C(v29, qword_100169670);

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      v95 = os_log_type_enabled(v93, v94);
      v96 = v0[43];
      if (v95)
      {
        v98 = v0[16];
        v97 = v0[17];
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v141[0] = v100;
        *v99 = 141558275;
        *(v99 + 4) = 1752392040;
        *(v99 + 12) = 2081;
        *(v99 + 14) = sub_100025CF0(v98, v97, v141);
        _os_log_impl(&_mh_execute_header, v93, v94, "Current Search Cancelled: '%{private,mask.hash}s'.", v99, 0x16u);
        sub_10000665C(v100);
      }

      goto LABEL_64;
    }

    v102 = v0[41];
    v101 = v0[42];
    v103 = v0[18];
    v104 = v0[6];
    v105 = v0[5];

    sub_1000F26B0(v89, v104);
    swift_getKeyPath();
    v0[11] = v103;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v103 + 40) + 16))
    {
      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v106 = v0[17];
      sub_10000659C(v29, qword_100169670);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v107, v108))
      {
        v110 = v0[16];
        v109 = v0[17];
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v141[0] = v112;
        *v111 = 134218499;
        v113 = *(v89 + 16);

        *(v111 + 4) = v113;

        *(v111 + 12) = 2160;
        *(v111 + 14) = 1752392040;
        *(v111 + 22) = 2081;
        *(v111 + 24) = sub_100025CF0(v110, v109, v141);
        _os_log_impl(&_mh_execute_header, v107, v108, "%ld results found for '%{private,mask.hash}s'.", v111, 0x20u);
        sub_10000665C(v112);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v121 = v0[18];
      v122 = v0[43];
      if (*(v121 + 16) == 2)
      {

        v123 = 2;
        goto LABEL_60;
      }

      v125 = v0[41];
      v124 = v0[42];
      swift_getKeyPath();
      v126 = swift_task_alloc();
      *(v126 + 16) = v121;
      *(v126 + 24) = 2;
      v0[12] = v121;
    }

    else
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v114 = v0[17];
      sub_10000659C(v29, qword_100169670);

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v118 = v0[16];
        v117 = v0[17];
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v141[0] = v120;
        *v119 = 141558275;
        *(v119 + 4) = 1752392040;
        *(v119 + 12) = 2081;
        *(v119 + 14) = sub_100025CF0(v118, v117, v141);
        _os_log_impl(&_mh_execute_header, v115, v116, "No results found for '%{private,mask.hash}s'.", v119, 0x16u);
        sub_10000665C(v120);
      }

      v121 = v0[18];
      v122 = v0[43];
      if (*(v121 + 16) == 3)
      {

        v123 = 3;
LABEL_60:
        *(v121 + 16) = v123;
LABEL_64:
        v130 = v0[40];
        goto LABEL_65;
      }

      v128 = v0[41];
      v127 = v0[42];
      swift_getKeyPath();
      v129 = swift_task_alloc();
      *(v129 + 16) = v121;
      *(v129 + 24) = 3;
      v0[13] = v121;
    }

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_64;
  }

  if (qword_10015AAA8 != -1)
  {
    swift_once();
  }

  v48 = v0[17];
  v49 = type metadata accessor for Logger();
  sub_10000659C(v49, qword_100169670);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v53 = v0[16];
    v52 = v0[17];
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v141[0] = v55;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    *(v54 + 14) = sub_100025CF0(v53, v52, v141);
    _os_log_impl(&_mh_execute_header, v50, v51, "Starting search for: '%{private,mask.hash}s'", v54, 0x16u);
    sub_10000665C(v55);
  }

  v56 = v0[31];
  v58 = v0[27];
  v57 = v0[28];
  CSUserQuery.settingsSearchResults.getter();
  v0[44] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v59 = v0[44];
  v60 = v0[36];
  v61 = v0[29];
  v62 = v0[27];
  v63 = static MainActor.shared.getter();
  v0[45] = v63;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v66 = swift_task_alloc();
  v0[46] = v66;
  *v66 = v0;
  v66[1] = sub_1000F0728;
  v67 = v0[31];
  v68 = v0[29];
  v69 = v0[26];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v69, v63, &protocol witness table for MainActor, v0 + 8, v68, AssociatedConformanceWitness);
}

uint64_t sub_1000F0728()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  v4 = v2[45];

  v5 = v2[38];
  v6 = v2[39];
  if (v0)
  {
    v7 = sub_1000F1630;
  }

  else
  {
    v7 = sub_1000F084C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000F084C()
{
  v118 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[37];
    (*(v0[30] + 8))(v0[31], v0[29]);

    v5 = v0[47];
    goto LABEL_27;
  }

  v6 = v0[47];
  (*(v3 + 32))(v0[25], v1, v2);
  static Task<>.checkCancellation()();
  if (v6)
  {
    v7 = v0[37];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[23];

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    v14 = v0[21];
    v15 = v0[19];
    v0[9] = v6;
    swift_errorRetain();
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    if (swift_dynamicCast())
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v16 = v0[17];
      v17 = type metadata accessor for Logger();
      sub_10000659C(v17, qword_100169670);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v21 = v0[16];
        v20 = v0[17];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v117[0] = v23;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        *(v22 + 14) = sub_100025CF0(v21, v20, v117);
        _os_log_impl(&_mh_execute_header, v18, v19, "Current Search cancelled by system: '%{private,mask.hash}s'.", v22, 0x16u);
        sub_10000665C(v23);
      }

      (*(v0[20] + 8))(v0[21], v0[19]);
      v24 = v0[9];
    }

    else
    {
      v41 = v0[9];

      type metadata accessor for Code(0);
      v0[10] = -2003;
      swift_errorRetain();
      sub_100020C28(&qword_10015AE48, type metadata accessor for Code);
      v42 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v42)
      {

        if (qword_10015AAA8 != -1)
        {
          swift_once();
        }

        v43 = v0[17];
        v44 = type metadata accessor for Logger();
        sub_10000659C(v44, qword_100169670);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v48 = v0[16];
          v47 = v0[17];
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v117[0] = v50;
          *v49 = 141558275;
          *(v49 + 4) = 1752392040;
          *(v49 + 12) = 2081;
          *(v49 + 14) = sub_100025CF0(v48, v47, v117);
          _os_log_impl(&_mh_execute_header, v45, v46, "Current Search cancelled by user: '%{private,mask.hash}s'.", v49, 0x16u);
          sub_10000665C(v50);
        }

LABEL_27:
        v61 = static Task<>.isCancelled.getter();
        v62 = v0[5];
        if (v61)
        {
          v63 = v0[5];

          v64 = v0[6];

          if (qword_10015AAA8 != -1)
          {
            swift_once();
          }

          v65 = v0[17];
          v66 = type metadata accessor for Logger();
          sub_10000659C(v66, qword_100169670);

          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();

          v69 = os_log_type_enabled(v67, v68);
          v70 = v0[43];
          if (v69)
          {
            v72 = v0[16];
            v71 = v0[17];
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v117[0] = v74;
            *v73 = 141558275;
            *(v73 + 4) = 1752392040;
            *(v73 + 12) = 2081;
            *(v73 + 14) = sub_100025CF0(v72, v71, v117);
            _os_log_impl(&_mh_execute_header, v67, v68, "Current Search Cancelled: '%{private,mask.hash}s'.", v73, 0x16u);
            sub_10000665C(v74);
          }

          goto LABEL_50;
        }

        v76 = v0[41];
        v75 = v0[42];
        v77 = v0[18];
        v78 = v0[6];
        v79 = v0[5];

        sub_1000F26B0(v62, v78);
        swift_getKeyPath();
        v0[11] = v77;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        if (*(*(v77 + 40) + 16))
        {
          if (qword_10015AAA8 != -1)
          {
            swift_once();
          }

          v80 = v0[17];
          v81 = type metadata accessor for Logger();
          sub_10000659C(v81, qword_100169670);

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = v0[16];
            v116 = v0[17];
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v117[0] = v86;
            *v85 = 134218499;
            v87 = *(v62 + 16);

            *(v85 + 4) = v87;

            *(v85 + 12) = 2160;
            *(v85 + 14) = 1752392040;
            *(v85 + 22) = 2081;
            *(v85 + 24) = sub_100025CF0(v84, v116, v117);
            _os_log_impl(&_mh_execute_header, v82, v83, "%ld results found for '%{private,mask.hash}s'.", v85, 0x20u);
            sub_10000665C(v86);
          }

          else
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v98 = v0[18];
          v97 = v0[43];
          if (*(v98 + 16) == 2)
          {

            *(v98 + 16) = 2;
            goto LABEL_50;
          }

          v100 = v0[41];
          v99 = v0[42];
          swift_getKeyPath();
          v101 = swift_task_alloc();
          *(v101 + 16) = v98;
          *(v101 + 24) = 2;
          v0[12] = v98;
        }

        else
        {

          if (qword_10015AAA8 != -1)
          {
            swift_once();
          }

          v88 = v0[17];
          v89 = type metadata accessor for Logger();
          sub_10000659C(v89, qword_100169670);

          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v90, v91))
          {
            v93 = v0[16];
            v92 = v0[17];
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v117[0] = v95;
            *v94 = 141558275;
            *(v94 + 4) = 1752392040;
            *(v94 + 12) = 2081;
            *(v94 + 14) = sub_100025CF0(v93, v92, v117);
            _os_log_impl(&_mh_execute_header, v90, v91, "No results found for '%{private,mask.hash}s'.", v94, 0x16u);
            sub_10000665C(v95);
          }

          v96 = v0[18];
          v97 = v0[43];
          if (*(v96 + 16) == 3)
          {

            *(v96 + 16) = 3;
LABEL_50:
            v105 = v0[40];
            sub_1000F28D0();

            v107 = v0[34];
            v106 = v0[35];
            v108 = v0[31];
            v109 = v0[28];
            v111 = v0[25];
            v110 = v0[26];
            v113 = v0[21];
            v112 = v0[22];

            v114 = v0[1];

            return v114();
          }

          v103 = v0[41];
          v102 = v0[42];
          swift_getKeyPath();
          v104 = swift_task_alloc();
          *(v104 + 16) = v96;
          *(v104 + 24) = 3;
          v0[13] = v96;
        }

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_50;
      }

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v51 = v0[17];
      v52 = type metadata accessor for Logger();
      sub_10000659C(v52, qword_100169670);

      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v56 = v0[16];
        v55 = v0[17];
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v117[0] = v59;
        *v57 = 141558531;
        *(v57 + 4) = 1752392040;
        *(v57 + 12) = 2081;
        *(v57 + 14) = sub_100025CF0(v56, v55, v117);
        *(v57 + 22) = 2114;
        swift_errorRetain();
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 24) = v60;
        *v58 = v60;
        _os_log_impl(&_mh_execute_header, v53, v54, "Current Search for '%{private,mask.hash}s' failed with error: '%{public}@'.", v57, 0x20u);
        sub_1000068B0(v58, &unk_10015F9C0, &unk_100115230);

        sub_10000665C(v59);
      }

      if (qword_10015AB08 != -1)
      {
        swift_once();
      }

      swift_errorRetain();
      sub_10008E574(v6);

      sub_100082D64();
    }

    goto LABEL_27;
  }

  v26 = v0[24];
  v25 = v0[25];
  v28 = v0[22];
  v27 = v0[23];
  v29 = *(v0[5] + 16);
  (*(v26 + 16))(v28, v25, v27);
  sub_1000F2C58(v29, v29, v28);
  sub_1000068B0(v28, &unk_10015EFF0, &unk_100116270);
  (*(v26 + 8))(v25, v27);
  v30 = v0[44];
  v31 = v0[36];
  v32 = v0[29];
  v33 = v0[27];
  v34 = static MainActor.shared.getter();
  v0[45] = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v37 = swift_task_alloc();
  v0[46] = v37;
  *v37 = v0;
  v37[1] = sub_1000F0728;
  v38 = v0[31];
  v39 = v0[29];
  v40 = v0[26];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v40, v34, &protocol witness table for MainActor, v0 + 8, v39, AssociatedConformanceWitness);
}

uint64_t sub_1000F1630()
{
  v95 = v0;
  v1 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  (*(v3 + 8))(v2, v4);
  v5 = v0[8];
  v0[9] = v5;
  v6 = v0 + 5;
  v7 = v0[21];
  v8 = v0[19];
  swift_errorRetain();
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  if (swift_dynamicCast())
  {

    if (qword_10015AAA8 != -1)
    {
      swift_once();
    }

    v9 = v0[17];
    v10 = type metadata accessor for Logger();
    sub_10000659C(v10, qword_100169670);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[16];
      v13 = v0[17];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v94[0] = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      *(v15 + 14) = sub_100025CF0(v14, v13, v94);
      _os_log_impl(&_mh_execute_header, v11, v12, "Current Search cancelled by system: '%{private,mask.hash}s'.", v15, 0x16u);
      sub_10000665C(v16);
    }

    (*(v0[20] + 8))(v0[21], v0[19]);
    v17 = v0[9];
  }

  else
  {
    v18 = v0[9];

    type metadata accessor for Code(0);
    v0[10] = -2003;
    swift_errorRetain();
    sub_100020C28(&qword_10015AE48, type metadata accessor for Code);
    v19 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v19)
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v20 = v0[17];
      v21 = type metadata accessor for Logger();
      sub_10000659C(v21, qword_100169670);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v25 = v0[16];
        v24 = v0[17];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v94[0] = v27;
        *v26 = 141558275;
        *(v26 + 4) = 1752392040;
        *(v26 + 12) = 2081;
        *(v26 + 14) = sub_100025CF0(v25, v24, v94);
        _os_log_impl(&_mh_execute_header, v22, v23, "Current Search cancelled by user: '%{private,mask.hash}s'.", v26, 0x16u);
        sub_10000665C(v27);
      }
    }

    else
    {
      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v28 = v0[17];
      v29 = type metadata accessor for Logger();
      sub_10000659C(v29, qword_100169670);

      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v93 = v0[17];
        v32 = v0[16];
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v94[0] = v35;
        *v33 = 141558531;
        *(v33 + 4) = 1752392040;
        *(v33 + 12) = 2081;
        v36 = v32;
        v6 = v0 + 5;
        *(v33 + 14) = sub_100025CF0(v36, v93, v94);
        *(v33 + 22) = 2114;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 24) = v37;
        *v34 = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Current Search for '%{private,mask.hash}s' failed with error: '%{public}@'.", v33, 0x20u);
        sub_1000068B0(v34, &unk_10015F9C0, &unk_100115230);

        sub_10000665C(v35);
      }

      if (qword_10015AB08 != -1)
      {
        swift_once();
      }

      swift_errorRetain();
      sub_10008E574(v5);

      sub_100082D64();
    }
  }

  v38 = static Task<>.isCancelled.getter();
  v39 = *v6;
  if (v38)
  {
    v40 = *v6;

    v41 = v0[6];

    if (qword_10015AAA8 != -1)
    {
      swift_once();
    }

    v42 = v0[17];
    v43 = type metadata accessor for Logger();
    sub_10000659C(v43, qword_100169670);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[43];
    if (v46)
    {
      v49 = v0[16];
      v48 = v0[17];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v94[0] = v51;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      *(v50 + 14) = sub_100025CF0(v49, v48, v94);
      _os_log_impl(&_mh_execute_header, v44, v45, "Current Search Cancelled: '%{private,mask.hash}s'.", v50, 0x16u);
      sub_10000665C(v51);
    }
  }

  else
  {
    v53 = v0[41];
    v52 = v0[42];
    v54 = v0[18];
    v55 = v0[6];

    sub_1000F26B0(v39, v55);
    swift_getKeyPath();
    v0[11] = v54;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v54 + 40) + 16))
    {
      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v56 = v0[17];
      v57 = type metadata accessor for Logger();
      sub_10000659C(v57, qword_100169670);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v61 = v0[16];
        v60 = v0[17];
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v94[0] = v63;
        *v62 = 134218499;
        v64 = *(v39 + 16);

        *(v62 + 4) = v64;

        *(v62 + 12) = 2160;
        *(v62 + 14) = 1752392040;
        *(v62 + 22) = 2081;
        *(v62 + 24) = sub_100025CF0(v61, v60, v94);
        _os_log_impl(&_mh_execute_header, v58, v59, "%ld results found for '%{private,mask.hash}s'.", v62, 0x20u);
        sub_10000665C(v63);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v75 = v0[18];
      v74 = v0[43];
      if (*(v75 + 16) == 2)
      {

        *(v75 + 16) = 2;
        goto LABEL_43;
      }

      v77 = v0[41];
      v76 = v0[42];
      swift_getKeyPath();
      v78 = swift_task_alloc();
      *(v78 + 16) = v75;
      *(v78 + 24) = 2;
      v0[12] = v75;
    }

    else
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v65 = v0[17];
      v66 = type metadata accessor for Logger();
      sub_10000659C(v66, qword_100169670);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v70 = v0[16];
        v69 = v0[17];
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v94[0] = v72;
        *v71 = 141558275;
        *(v71 + 4) = 1752392040;
        *(v71 + 12) = 2081;
        *(v71 + 14) = sub_100025CF0(v70, v69, v94);
        _os_log_impl(&_mh_execute_header, v67, v68, "No results found for '%{private,mask.hash}s'.", v71, 0x16u);
        sub_10000665C(v72);
      }

      v73 = v0[18];
      v74 = v0[43];
      if (*(v73 + 16) == 3)
      {

        *(v73 + 16) = 3;
        goto LABEL_43;
      }

      v80 = v0[41];
      v79 = v0[42];
      swift_getKeyPath();
      v81 = swift_task_alloc();
      *(v81 + 16) = v73;
      *(v81 + 24) = 3;
      v0[13] = v73;
    }

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_43:
  v82 = v0[40];
  sub_1000F28D0();

  v84 = v0[34];
  v83 = v0[35];
  v85 = v0[31];
  v86 = v0[28];
  v88 = v0[25];
  v87 = v0[26];
  v90 = v0[21];
  v89 = v0[22];

  v91 = v0[1];

  return v91();
}

uint64_t sub_1000F2248(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a2 + 32);
    v5 = *(a2 + 24) & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v4) & 0xF;
    }

    if (!v5 && *(a2 + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v7 = swift_getKeyPath();
      __chkstk_darwin(v7);
      sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v9 = *(a2 + 40);
    v8 = *(a2 + 48);

    v10 = sub_1000BA3B8(&_swiftEmptyArrayStorage);
    *(a2 + 40) = &_swiftEmptyArrayStorage;
    *(a2 + 48) = v10;
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    return sub_1000EE9F4(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_1000F25A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1000F2668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000F26B0(v2, v3);
}

uint64_t sub_1000F26B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);

  if (sub_10006D178(v5, a1))
  {
    v7 = sub_1000A4108(v6, a2);

    if (v7)
    {
      v9 = *(v2 + 40);
      v8 = *(v2 + 48);
      *(v2 + 40) = a1;
      *(v2 + 48) = a2;
    }
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000F284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t sub_1000F28D0()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000659C(v10, qword_100169718);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "SettingsOmniSearchViewModel.performSearch", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000F2B5C()
{
  v1 = *(v0 + 4);

  v3 = *(v0 + 5);
  v2 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC11SettingsApp27SettingsOmniSearchViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2C18()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

unint64_t sub_1000F2C58(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v110 = a3;
  v7 = type metadata accessor for SettingsSearchResultItem();
  v111 = *(v7 - 8);
  v125 = v111;
  v8 = *(v111 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v121 = &v105 - v13;
  __chkstk_darwin(v12);
  v120 = &v105 - v14;
  v119 = sub_10004DED0(&qword_1001611D8, &qword_100118698);
  v15 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v118 = &v105 - v16;
  v17 = sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v123 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v107 = &v105 - v21;
  v22 = sub_10004DED0(&unk_10015EFF0, &unk_100116270);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v109 = &v105 - v24;
  v105 = sub_10004DED0(&qword_1001611E0, &qword_1001186A0);
  v25 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v106 = &v105 - v26;
  v108 = sub_10004DED0(&qword_1001611E8, &qword_1001186A8);
  v27 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v124 = (&v105 - v28);
  v114 = a2;
  v112 = a1;
  v126 = v4;
  if (a1 != a2)
  {
    v72 = v112;
    if (v114 < v112)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v112 >= v114)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v73 = *v4;
    v74 = *v4 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
    while ((v72 & 0x8000000000000000) == 0)
    {
      if (v72 >= *(v73 + 16))
      {
        goto LABEL_54;
      }

      v76 = v125;
      (*(v125 + 16))(v11, v74 + *(v125 + 72) * v72, v7);
      sub_100020C28(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem);
      dispatch thunk of Identifiable.id.getter();
      (*(v76 + 8))(v11, v7);
      v77 = v4[1];
      v78 = sub_1000B8930(v128, v129);
      LOBYTE(v77) = v79;

      if (v77)
      {
        v80 = v126;
        v81 = v126[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v80[1];
        v127 = v83;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000BA020();
          v83 = v127;
        }

        v75 = *(*(v83 + 48) + 16 * v78 + 8);

        sub_1000B9624(v78, v83);
        v80[1] = v83;
      }

      ++v72;
      v4 = v126;
      if (v114 == v72)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_53;
  }

LABEL_2:
  v29 = v114 - v112;
  if (__OFSUB__(v114, v112))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v117 = 1 - v29;
  if (__OFSUB__(1, v29))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v122 = *v4;
  v30 = *(v122 + 16);
  if (v30 < v114)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v30 == v114)
  {
LABEL_6:
    v31 = *(v105 + 52);
    v32 = v106;
    sub_100059CA0(v110, &v106[v31], &unk_10015EFF0, &unk_100116270);
    v33 = &v32[v31];
    v34 = v109;
    sub_1000A4CB8(v33, v109, &unk_10015EFF0, &unk_100116270);
    v35 = *(v108 + 52);
    v36 = v125;
    v37 = v107;
    v116 = *(v125 + 32);
    v117 = v125 + 32;
    v116(v107, v34, v7);
    v38 = *(v36 + 56);
    (v38)(v37, 0, 1, v7);
    v39 = v124;
    v125 = v36 + 56;
    v121 = v38;
    (v38)(v124 + v35, 1, 1, v7);
    v122 = v35;
    sub_1000F3A28(v37, v39 + v35);
    v40 = v112 + 1;
    v41 = v123;
    if (!__OFADD__(v112, 1))
    {
      v42 = v112;
      v43 = (v111 + 48);
      v115 = (v111 + 8);
      do
      {
        v46 = v124;
        *v124 = v40;
        v47 = v122;
        sub_1000A4CB8(v46 + v122, v41, &qword_10015B0E8, &qword_100118670);
        (v121)(v46 + v47, 1, 1, v7);
        if ((*v43)(v41, 1, v7) == 1)
        {
          v68 = *(v108 + 56);
          sub_1000068B0(v41, &qword_10015B0E8, &qword_100118670);
          v69 = v124;
          *(v124 + v68) = 1;
          sub_1000068B0(v69, &qword_1001611E8, &qword_1001186A8);
          v70 = v109;
          sub_100059CA0(v110, v109, &unk_10015EFF0, &unk_100116270);
          return sub_1000F36E4(v112, v114, v70);
        }

        v48 = v120;
        v49 = v116;
        v116(v120, v41, v7);
        v50 = v118;
        v51 = *(v119 + 48);
        v49(&v118[v51], v48, v7);
        sub_100020C28(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem);
        dispatch thunk of Identifiable.id.getter();
        (*v115)(&v50[v51], v7);
        v52 = v128;
        v53 = v129;
        v54 = v4[1];
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v4[1];
        v56 = v127;
        v58 = sub_1000B8930(v52, v53);
        v59 = v56[2];
        v60 = (v57 & 1) == 0;
        v61 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          goto LABEL_52;
        }

        v62 = v57;
        if (v56[3] >= v61)
        {
          if (v55)
          {
            v41 = v123;
            if (v57)
            {
              goto LABEL_8;
            }
          }

          else
          {
            sub_1000BA020();
            v41 = v123;
            if (v62)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          sub_1000B902C(v61, v55);
          v63 = sub_1000B8930(v52, v53);
          if ((v62 & 1) != (v64 & 1))
          {
            goto LABEL_67;
          }

          v58 = v63;
          v41 = v123;
          if (v62)
          {
LABEL_8:

            v44 = v127;
            *(v127[7] + 8 * v58) = v42;
            goto LABEL_9;
          }
        }

        v44 = v127;
        v127[(v58 >> 6) + 8] |= 1 << v58;
        v65 = (v44[6] + 16 * v58);
        *v65 = v52;
        v65[1] = v53;
        *(v44[7] + 8 * v58) = v42;
        v66 = v44[2];
        v45 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v45)
        {
          goto LABEL_59;
        }

        v44[2] = v67;
LABEL_9:
        v42 = v40;
        v4 = v126;
        v126[1] = v44;
        v45 = __OFADD__(v40++, 1);
      }

      while (!v45);
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v84 = v114;
  if (v30 > v114)
  {
    v116 = (v122 + ((*(v125 + 80) + 32) & ~*(v125 + 80)));
    v115 = (v111 + 16);
    v113 = v111 + 8;
    while (1)
    {
      if ((v84 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      if (v84 >= *(v122 + 16))
      {
        goto LABEL_56;
      }

      v86 = v125;
      v87 = v121;
      (*(v125 + 16))(v121, v116 + *(v125 + 72) * v84, v7);
      sub_100020C28(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem);
      dispatch thunk of Identifiable.id.getter();
      (*(v86 + 8))(v87, v7);
      v88 = v84 + v117;
      if (__OFADD__(v84, v117))
      {
        goto LABEL_57;
      }

      v90 = v128;
      v89 = v129;
      v91 = v4[1];
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v127 = v4[1];
      v93 = v127;
      v95 = sub_1000B8930(v90, v89);
      v96 = v93[2];
      v97 = (v94 & 1) == 0;
      v98 = v96 + v97;
      if (__OFADD__(v96, v97))
      {
        goto LABEL_58;
      }

      v99 = v94;
      if (v93[3] >= v98)
      {
        if (v92)
        {
          if (v94)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1000BA020();
          if (v99)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        sub_1000B902C(v98, v92);
        v100 = sub_1000B8930(v90, v89);
        if ((v99 & 1) != (v101 & 1))
        {
          goto LABEL_67;
        }

        v95 = v100;
        if (v99)
        {
LABEL_35:

          v85 = v127;
          *(v127[7] + 8 * v95) = v88;
          goto LABEL_36;
        }
      }

      v85 = v127;
      v127[(v95 >> 6) + 8] |= 1 << v95;
      v102 = (v85[6] + 16 * v95);
      *v102 = v90;
      v102[1] = v89;
      *(v85[7] + 8 * v95) = v88;
      v103 = v85[2];
      v45 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v45)
      {
        goto LABEL_60;
      }

      v85[2] = v104;
LABEL_36:
      ++v84;
      v4 = v126;
      v126[1] = v85;
      if (v30 == v84)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000F36E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1000C52D8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1000B92CC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1000F37D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SettingsSearchResultItem() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_100020C28(&qword_10015CC80, &type metadata accessor for SettingsSearchResultItem);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1000F38F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_1001611C8, &qword_100118688);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100059CA0(v4, &v13, &qword_1001611D0, &qword_100118690);
      v5 = v13;
      v6 = v14;
      result = sub_1000B8930(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001EFEC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000F3A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000F3A98(char a1)
{
  result = 1414483794;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0x454C54534143;
      break;
    case 3:
      result = 0x43415F454C505041;
      break;
    case 4:
      result = 0x796C696D6146;
      break;
    case 5:
      result = 1229343063;
      break;
    case 6:
      result = 0x54454E5245485445;
      break;
    case 7:
      result = 0x746F6F7465756C42;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 69:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 5132374;
      break;
    case 11:
      result = 0x4F4F525353414C43;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x73646E756F53;
      break;
    case 14:
      result = 0x445F544F4E5F4F44;
      break;
    case 15:
      result = 0x545F4E4545524353;
      break;
    case 16:
      result = 0x6C6172656E6547;
      break;
    case 17:
      result = 0x436C6F72746E6F43;
      break;
    case 18:
      result = 0x425F4E4F49544341;
      break;
    case 19:
      result = 0x544E4549424D41;
      break;
    case 20:
      result = 0x59414C50534944;
      break;
    case 21:
      result = 0x5243535F454D4F48;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x4249535345434341;
      break;
    case 24:
      result = 0x657061706C6C6157;
      break;
    case 25:
      result = 1230129491;
      break;
    case 26:
      result = 0x6C69636E6550;
      break;
    case 27:
      result = 0x45444F4353534150;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0x6C72616550;
      break;
    case 30:
      result = 0x434E454752454D45;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 0x5F59524554544142;
      break;
    case 33:
      result = 0x79636176697250;
      break;
    case 34:
      result = 0x45524F5453;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0x4B4F4F4253534150;
      break;
    case 37:
      result = 1279869261;
      break;
    case 38:
      result = 0x53544341544E4F43;
      break;
    case 39:
      result = 0x5241444E454C4143;
      break;
    case 40:
      result = 0x5345544F4ELL;
      break;
    case 41:
      result = 0x5245444E494D4552;
      break;
    case 42:
      result = 0x4D524F4645455246;
      break;
    case 43:
      result = 0x454D5F4543494F56;
      break;
    case 44:
      result = 0x656E6F6850;
      break;
    case 45:
      result = 0x534547415353454DLL;
      break;
    case 46:
      result = 0x454D495445434146;
      break;
    case 47:
      result = 0x495241464153;
      break;
    case 48:
      result = 1398228302;
      break;
    case 49:
      result = 0x534B434F5453;
      break;
    case 50:
      result = 0x54414C534E415254;
      break;
    case 51:
      result = 1397768525;
      break;
    case 52:
      result = 0x52454854414557;
      break;
    case 53:
      result = 0x535341504D4F43;
      break;
    case 54:
      result = 0x4552555341454DLL;
      break;
    case 55:
      result = 0x54554354524F4853;
      break;
    case 56:
      result = 0x48544C414548;
      break;
    case 57:
      result = 0x5353454E544946;
      break;
    case 58:
      result = 0x54494B454D4F48;
      break;
    case 59:
      result = 0x54494B5353414C43;
      break;
    case 60:
      result = 0x4C414E52554F4ALL;
      break;
    case 61:
      result = 0x434953554DLL;
      break;
    case 62:
      result = 0x5050415654;
      break;
    case 63:
      result = 0x736F746F6850;
      break;
    case 64:
      result = 0x4152454D4143;
      break;
    case 65:
      result = 0x534B4F4F4249;
      break;
    case 66:
      result = 0x5354534143444F50;
      break;
    case 67:
      result = 0x544E4543454D4147;
      break;
    case 68:
      result = 0xD000000000000010;
      break;
    case 70:
      result = 0xD000000000000010;
      break;
    case 71:
    case 72:
      result = 0xD000000000000011;
      break;
    case 73:
      result = 0x454E414C50524941;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000F41C0()
{
  v36 = type metadata accessor for URLQueryItem();
  v1 = *(v36 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v36);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v38 = 0xD000000000000020;
  v39 = 0x80000001001264F0;
  type metadata accessor for URL();
  sub_1000F5270(&qword_10015E918, &type metadata accessor for URL);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F69746361202C27;
  v5._object = 0xEC00000027203A6ELL;
  String.append(_:)(v5);
  v6 = type metadata accessor for SettingsURLDestination(0);
  v7 = *(v6 + 20);
  v8._countAndFlagsBits = sub_1000F4C6C();
  String.append(_:)(v8);

  v9._object = 0x8000000100126520;
  v9._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v9);
  v10 = *(v0 + *(v6 + 24));
  v11 = *(v10 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v37 = &_swiftEmptyArrayStorage;
    sub_1000267D0(0, v11, 0);
    v12 = v37;
    v14 = *(v1 + 16);
    v13 = v1 + 16;
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v33 = *(v13 + 56);
    v34 = v14;
    v16 = (v13 - 8);
    do
    {
      v18 = v35;
      v17 = v36;
      v19 = v13;
      v34(v35, v15, v36);
      v20 = URLQueryItem.description.getter();
      v22 = v21;
      (*v16)(v18, v17);
      v37 = v12;
      v24 = v12[2];
      v23 = v12[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000267D0((v23 > 1), v24 + 1, 1);
        v12 = v37;
      }

      v12[2] = v24 + 1;
      v25 = &v12[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v15 += v33;
      --v11;
      v13 = v19;
    }

    while (v11);
  }

  v37 = v12;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 8200285;
  v30._object = 0xE300000000000000;
  String.append(_:)(v30);
  return v38;
}

uint64_t sub_1000F44F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_1000F55E8(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10006C7A4(v7, v8);
}

void sub_1000F4574()
{
  v1 = v0;
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL();
  sub_1000F5270(&qword_100161388, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v7 = type metadata accessor for SettingsURLDestination(0);
  v8 = v0 + *(v7 + 20);
  sub_1000F4790();
  v9 = *(v1 + *(v7 + 24));
  Hasher._combine(_:)(*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1000F5270(&qword_100161390, &type metadata accessor for URLQueryItem);
      dispatch thunk of Hashable.hash(into:)();
      (*(v11 - 8))(v6, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

void sub_1000F4790()
{
  v1 = v0;
  v2 = type metadata accessor for EngagementLinkData();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsURLDestination.Action(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F53A4(v1, v14, type metadata accessor for SettingsURLDestination.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v20 = *v14;
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v20);
        return;
      }

      v24 = *(v14 + 1);
      v30 = *v14;
      v31 = v24;
      v32 = v14[32];
      v23 = 2;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v7 + 32))(v10, v14, v6);
      v21 = 3;
    }

    else
    {
      (*(v7 + 32))(v10, v14, v6);
      v21 = 4;
    }

LABEL_18:
    Hasher._combine(_:)(v21);
    sub_1000F5270(&qword_100161388, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v10, v6);
    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_1000F5340(v14, v5);
      Hasher._combine(_:)(6uLL);
      v25 = *v5;
      v26 = v5[1];
      String.hash(into:)();
      v27 = v5[2];
      v28 = v5[3];
      String.hash(into:)();
      v29 = *(v2 + 24);
      sub_1000F5270(&qword_100161388, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      sub_10001872C(v5, type metadata accessor for EngagementLinkData);
      return;
    }

    (*(v7 + 32))(v10, v14, v6);
    v21 = 5;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v22 = *(v14 + 1);
    v30 = *v14;
    v31 = v22;
    v32 = v14[32];
    v23 = 7;
LABEL_16:
    Hasher._combine(_:)(v23);
    sub_10002FE78();
    sub_100026A04(&v30);
    return;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v16 = *v14;
    v17 = *(v14 + 1);
    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    Hasher._combine(_:)(8uLL);
    String.hash(into:)();

    if (v18)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000F4BC0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1000F4C24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1000F5270(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_1000F52B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000F540C(a1, a2, a3, *v3, &qword_10015E100, &qword_100115080, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

size_t sub_1000F52FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000F540C(a1, a2, a3, *v3, &unk_10015FB80, &unk_100116A40, type metadata accessor for PrimarySettingsListItemModel);
  *v3 = result;
  return result;
}

uint64_t sub_1000F5340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementLinkData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F53A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t sub_1000F540C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10004DED0(a5, a6);
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

uint64_t sub_1000F55E8(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v75 = type metadata accessor for EngagementLinkData();
  v3 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v77 = (&v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for URL();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  v7 = __chkstk_darwin(v5);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v84 = &v74 - v10;
  __chkstk_darwin(v9);
  v83 = &v74 - v11;
  v12 = type metadata accessor for SettingsURLDestination.Action(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v78 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v74 - v17;
  v19 = __chkstk_darwin(v16);
  v80 = (&v74 - v20);
  v21 = __chkstk_darwin(v19);
  v79 = &v74 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v74 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v74 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v74 - v30;
  __chkstk_darwin(v29);
  v33 = &v74 - v32;
  v34 = sub_10004DED0(&qword_100161380, &unk_100118810);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v38 = &v74 - v37;
  v39 = (&v74 + *(v36 + 56) - v37);
  sub_1000F53A4(v85, &v74 - v37, type metadata accessor for SettingsURLDestination.Action);
  v40 = a2;
  v41 = v39;
  sub_1000F53A4(v40, v39, type metadata accessor for SettingsURLDestination.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v43 = v78;
          sub_1000F53A4(v38, v78, type metadata accessor for SettingsURLDestination.Action);
          v45 = *v43;
          v44 = v43[1];
          v47 = v43[2];
          v46 = v43[3];
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v48 = v39->i64[0];
            v49 = v39->i64[1];
            v51 = v39[1].i64[0];
            v50 = v41[1].i64[1];
            if (v45 == v48 && v44 == v49)
            {
            }

            else
            {
              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v72 & 1) == 0)
              {

                goto LABEL_54;
              }
            }

            if (v46)
            {
              if (v50)
              {
                if (v47 == v51 && v46 == v50)
                {

                  goto LABEL_57;
                }

                v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v73)
                {
                  goto LABEL_57;
                }

                goto LABEL_55;
              }
            }

            else if (!v50)
            {
              goto LABEL_57;
            }

LABEL_54:

LABEL_55:
            sub_10001872C(v38, type metadata accessor for SettingsURLDestination.Action);
            goto LABEL_42;
          }
        }

        else if (swift_getEnumCaseMultiPayload() == 8)
        {
          goto LABEL_57;
        }

LABEL_41:
        sub_1000F5F3C(v38);
LABEL_42:
        v54 = 0;
        return v54 & 1;
      }

      sub_1000F53A4(v38, v18, type metadata accessor for SettingsURLDestination.Action);
      v62 = *(v18 + 1);
      v86 = *v18;
      v87 = v62;
      v88 = v18[32];
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v68 = v80;
      sub_1000F53A4(v38, v80, type metadata accessor for SettingsURLDestination.Action);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v69 = v77;
        sub_1000F5340(v39, v77);
        if (*v68 == *v69 && v68[1] == v69[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v68[2] == v69[2] && v68[3] == v69[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          v70 = *(v75 + 24);
          if (static URL.== infix(_:_:)())
          {
            sub_10001872C(v69, type metadata accessor for EngagementLinkData);
            sub_10001872C(v68, type metadata accessor for EngagementLinkData);
LABEL_57:
            sub_10001872C(v38, type metadata accessor for SettingsURLDestination.Action);
            v54 = 1;
            return v54 & 1;
          }
        }

        sub_10001872C(v69, type metadata accessor for EngagementLinkData);
        sub_10001872C(v68, type metadata accessor for EngagementLinkData);
        goto LABEL_55;
      }

      sub_10001872C(v68, type metadata accessor for EngagementLinkData);
      goto LABEL_41;
    }

    v28 = v79;
    sub_1000F53A4(v38, v79, type metadata accessor for SettingsURLDestination.Action);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v59 = v81;
      v58 = v82;
      v60 = v76;
      (*(v81 + 32))(v76, v41, v82);
      v54 = static URL.== infix(_:_:)();
      v61 = *(v59 + 8);
      v61(v60, v58);
      v61(v28, v58);
      goto LABEL_25;
    }

LABEL_26:
    (*(v81 + 8))(v28, v82);
    goto LABEL_41;
  }

  v53 = v83;
  v52 = v84;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000F53A4(v38, v28, type metadata accessor for SettingsURLDestination.Action);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_26;
      }

      v56 = v81;
      v55 = v82;
      (*(v81 + 32))(v53, v41, v82);
      v54 = static URL.== infix(_:_:)();
      v57 = *(v56 + 8);
      v57(v53, v55);
      v57(v28, v55);
    }

    else
    {
      sub_1000F53A4(v38, v25, type metadata accessor for SettingsURLDestination.Action);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v81 + 8))(v25, v82);
        goto LABEL_41;
      }

      v66 = v81;
      v65 = v82;
      (*(v81 + 32))(v52, v41, v82);
      v54 = static URL.== infix(_:_:)();
      v67 = *(v66 + 8);
      v67(v52, v65);
      v67(v25, v65);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000F53A4(v38, v31, type metadata accessor for SettingsURLDestination.Action);
      v64 = *(v31 + 1);
      v86 = *v31;
      v87 = v64;
      v88 = v31[32];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_20:
        v63 = v41[1];
        v89[0] = *v41;
        v89[1] = v63;
        v90 = v41[2].u8[0];
        v54 = sub_10002BB48(&v86, v89);
        sub_100026A04(&v86);
        sub_100026A04(v89);
        goto LABEL_25;
      }

LABEL_22:
      sub_100026A04(&v86);
      goto LABEL_41;
    }

    sub_1000F53A4(v38, v33, type metadata accessor for SettingsURLDestination.Action);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_41;
    }

    v54 = *v33 == v41->u8[0];
  }

LABEL_25:
  sub_10001872C(v38, type metadata accessor for SettingsURLDestination.Action);
  return v54 & 1;
}

uint64_t sub_1000F5F3C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161380, &unk_100118810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SettingsURLRoute()
{
  result = qword_100161408;
  if (!qword_100161408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F6018()
{
  sub_1000F6070();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1000F6070()
{
  if (!qword_100161418)
  {
    v0 = type metadata accessor for SettingsURLDestination(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100161418);
    }
  }
}

uint64_t sub_1000F60B8()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsURLDestination(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsURLRoute();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F6638(v1, v9);
  v10 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    return 0x6564726163736964;
  }

  sub_1000F669C(v9, v5);
  v14[0] = 0x2064656C646E6168;
  v14[1] = 0xE800000000000000;
  v12._countAndFlagsBits = sub_1000F41C0();
  String.append(_:)(v12);

  v11 = v14[0];
  sub_1000464C0(v5, type metadata accessor for SettingsURLDestination);
  return v11;
}

void sub_1000F6250()
{
  v1 = type metadata accessor for URLQueryItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsURLDestination(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SettingsURLRoute();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F6638(v0, v13);
  v14 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_1000F669C(v13, v9);
    Hasher._combine(_:)(1uLL);
    type metadata accessor for URL();
    sub_1000F6700(&qword_100161388, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v15 = &v9[*(v6 + 20)];
    sub_1000F4790();
    v16 = *(v6 + 24);
    v25 = v9;
    v17 = *&v9[v16];
    Hasher._combine(_:)(*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v21 = *(v2 + 16);
      v19 = v2 + 16;
      v20 = v21;
      v22 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);
      do
      {
        v20(v5, v22, v1);
        sub_1000F6700(&qword_100161390, &type metadata accessor for URLQueryItem);
        dispatch thunk of Hashable.hash(into:)();
        (*(v19 - 8))(v5, v1);
        v22 += v23;
        --v18;
      }

      while (v18);
    }

    sub_1000464C0(v25, type metadata accessor for SettingsURLDestination);
  }
}

Swift::Int sub_1000F6568()
{
  Hasher.init(_seed:)();
  sub_1000F6250();
  return Hasher._finalize()();
}

Swift::Int sub_1000F65AC()
{
  Hasher.init(_seed:)();
  sub_1000F6250();
  return Hasher._finalize()();
}

uint64_t sub_1000F6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLRoute();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F669C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F6700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F6748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsURLRoute();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&qword_100161448, &qword_1001188D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v22 - v15;
  v17 = *(v14 + 56);
  sub_1000F6638(a1, &v22 - v15);
  sub_1000F6638(a2, &v16[v17]);
  v18 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v16, 1, v18) == 1)
  {
    if (v19(&v16[v17], 1, v18) == 1)
    {
LABEL_3:
      sub_1000464C0(v16, type metadata accessor for SettingsURLRoute);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1000F6638(v16, v11);
  if (v19(&v16[v17], 1, v18) == 1)
  {
    sub_1000464C0(v11, type metadata accessor for SettingsURLDestination);
LABEL_6:
    sub_1000F6A30(v16);
    return 0;
  }

  sub_1000F669C(&v16[v17], v7);
  if (static URL.== infix(_:_:)() & 1) != 0 && (sub_1000F55E8(&v11[*(v4 + 20)], &v7[*(v4 + 20)]))
  {
    v21 = sub_10006C7A4(*&v11[*(v4 + 24)], *&v7[*(v4 + 24)]);
    sub_1000464C0(v7, type metadata accessor for SettingsURLDestination);
    sub_1000464C0(v11, type metadata accessor for SettingsURLDestination);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000464C0(v7, type metadata accessor for SettingsURLDestination);
    sub_1000464C0(v11, type metadata accessor for SettingsURLDestination);
  }

  sub_1000464C0(v16, type metadata accessor for SettingsURLRoute);
  return 0;
}

uint64_t sub_1000F6A30(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161448, &qword_1001188D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1000F6A98(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  v5 = v1[2];
  v6 = v1[3];
  String.hash(into:)();
  v7 = *(a1 + 24);
  type metadata accessor for URL();
  sub_1000F6D80(&qword_100161388, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F6B4C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  v8 = *(a2 + 24);
  type metadata accessor for URL();
  sub_1000F6D80(&qword_100161388, &type metadata accessor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000F6BE4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  v8 = *(a2 + 24);
  type metadata accessor for URL();
  sub_1000F6D80(&qword_100161388, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F6C94(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return static URL.== infix(_:_:)();
}

uint64_t sub_1000F6D80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000F6DD8(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = type metadata accessor for EngagementLinkData();
  v4 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for URL();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  __chkstk_darwin(v10);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for URLQueryItem();
  v13 = *(v64 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v64);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v55 - v18;
  v19 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v55 - v21;
  if (qword_10015AAB8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000659C(v23, qword_1001696A0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v60 = v9;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x80000001001265C0, v65);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, v65);
    _os_log_impl(&_mh_execute_header, v24, v25, "Start (%s.%s)…", v27, 0x16u);
    swift_arrayDestroy();
  }

  v28 = URL.host.getter();
  if (!v29)
  {
    goto LABEL_11;
  }

  if (v28 == 0xD000000000000016 && v29 == 0x80000001001265A0)
  {

    goto LABEL_9;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v30 & 1) == 0)
  {
LABEL_11:
    v34 = sub_10004DED0(&qword_10015B298, &unk_100118820);
    (*(*(v34 - 8) + 56))(a2, 1, 1, v34);

    goto LABEL_13;
  }

LABEL_9:
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v31 = type metadata accessor for URLComponents();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v22, 1, v31);
  v55 = a1;
  v56 = a2;
  if (v33 == 1)
  {
    sub_1000068B0(v22, &qword_1001614F0, &unk_1001189B0);
  }

  else
  {
    v9 = URLComponents.queryItems.getter();
    (*(v32 + 8))(v22, v31);
    if (v9)
    {
      v35 = *(v9 + 2);
      if (v35)
      {
        goto LABEL_18;
      }

LABEL_30:

      v45 = v56;
LABEL_31:
      v49 = sub_10004DED0(&qword_10015B298, &unk_100118820);
      (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
      goto LABEL_13;
    }
  }

  v9 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage[2];
  if (!v35)
  {
    goto LABEL_30;
  }

LABEL_18:
  a1 = 0;
  v22 = 0x556465646F636E65;
  a2 = v13 + 16;
  while (1)
  {
    if (a1 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_35;
    }

    (*(v13 + 16))(v17, &v9[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a1], v64);
    if (URLQueryItem.name.getter() == 0x556465646F636E65 && v36 == 0xEA00000000004C52)
    {
      break;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_26;
    }

    ++a1;
    (*(v13 + 8))(v17, v64);
    if (v35 == a1)
    {
      goto LABEL_30;
    }
  }

LABEL_26:
  v39 = v63;
  v38 = v64;
  (*(v13 + 32))(v63, v17, v64);
  v40 = URLQueryItem.value.getter();
  v42 = v41;
  (*(v13 + 8))(v39, v38);
  if (!v42)
  {
    goto LABEL_30;
  }

  v65[0] = v40;
  v65[1] = v42;
  sub_10002EAE0();
  StringProtocol.removingPercentEncoding.getter();
  v44 = v43;

  v45 = v56;
  if (!v44)
  {

    goto LABEL_31;
  }

  v46 = v60;
  URL.init(string:)();

  v48 = v61;
  v47 = v62;
  if ((*(v61 + 48))(v46, 1, v62) == 1)
  {

    sub_1000068B0(v46, &qword_10015E910, &unk_10010FC70);
    goto LABEL_31;
  }

  v50 = *(v48 + 32);
  v51 = v57;
  v50(v57, v46, v47);
  v52 = v59;
  v50(&v59[*(v58 + 24)], v51, v47);
  *v52 = 0x73676E6974746553;
  v52[1] = 0xE800000000000000;
  v52[2] = 49;
  v52[3] = 0xE100000000000000;
  (*(v48 + 16))(v45, v55, v47);
  v53 = type metadata accessor for SettingsURLDestination(0);
  sub_1000F5340(v52, v45 + *(v53 + 20));
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  *(v45 + *(v53 + 24)) = v9;
  v54 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v54 - 8) + 56))(v45, 0, 1, v54);
LABEL_13:
  sub_1000F76D8();
}

uint64_t sub_1000F764C()
{
  v0 = URL.host.getter();
  if (v1)
  {
    if (v0 == 0xD000000000000016 && v1 == 0x80000001001265A0)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1000F76D8()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x80000001001265C0, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000F786C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a1;
  v61 = a2;
  v58 = type metadata accessor for SettingsURLDestination.Action(0);
  v2 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v55 = &v51 - v15;
  __chkstk_darwin(v14);
  v54 = &v51 - v16;
  v17 = type metadata accessor for SettingsNavigationHost();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URLComponents();
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = *(v59 + 64);
  __chkstk_darwin(v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v53 = sub_10000659C(v26, qword_1001696A0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = v17;
    v30 = v29;
    v31 = swift_slowAlloc();
    v52 = v9;
    v62 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_100025CF0(0xD000000000000024, 0x8000000100126630, &v62);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v62);
    _os_log_impl(&_mh_execute_header, v27, v28, "Start (%s.%s)…", v30, 0x16u);
    swift_arrayDestroy();
    v9 = v52;

    v17 = v51;
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  static SettingsNavigationHost.apps.getter();
  SettingsNavigationHost.rawValue.getter();
  (*(v18 + 8))(v21, v17);
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.url.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000068B0(v8, &qword_10015E910, &unk_10010FC70);
    v32 = v57;
    (*(v10 + 16))(v57, v56, v9);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v62 = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      v37 = URL.absoluteString.getter();
      v38 = v9;
      v40 = v39;
      (*(v10 + 8))(v32, v38);
      v41 = sub_100025CF0(v37, v40, &v62);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Could not create re-direct URL for App Installation for input URL %{private,mask.hash}s", v35, 0x16u);
      sub_10000665C(v36);
    }

    else
    {

      (*(v10 + 8))(v32, v9);
    }

    (*(v59 + 8))(v25, v60);
    v49 = 1;
  }

  else
  {
    v42 = *(v10 + 32);
    v43 = v54;
    v42(v54, v8, v9);
    v44 = v55;
    (*(v10 + 16))(v55, v43, v9);
    *v4 = 45;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    v4[32] = 6;
    swift_storeEnumTagMultiPayload();
    v45 = URLComponents.queryItems.getter();
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = _swiftEmptyArrayStorage;
    }

    (*(v10 + 8))(v43, v9);
    (*(v59 + 8))(v25, v60);
    v47 = v61;
    v42(v61, v44, v9);
    v48 = type metadata accessor for SettingsURLDestination(0);
    sub_1000F8168(v4, &v47[*(v48 + 20)]);
    v49 = 0;
    *&v47[*(v48 + 24)] = v46;
  }

  v50 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v50 - 8) + 56))(v61, v49, 1, v50);
  sub_1000F7FE4();
}

void sub_1000F7FE4()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000024, 0x8000000100126630, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F8168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F81CC()
{
  v0 = type metadata accessor for SettingsNavigationHost();
  v52 = *(v0 - 8);
  v1 = *(v52 + 64);
  __chkstk_darwin(v0);
  v45 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v46 = v44 - v6;
  v7 = sub_10004DED0(&qword_100161500, &qword_1001189F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v48 = v44 - v9;
  v10 = sub_10004DED0(&qword_100161508, &qword_100118A00);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v44 - v12;
  v14 = sub_10004DED0(&qword_100161510, &qword_100118A08);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v51 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v44 - v19;
  __chkstk_darwin(v18);
  v22 = v44 - v21;
  URL.scheme.getter();
  if (!v23)
  {
    goto LABEL_15;
  }

  v47 = v7;
  v49 = v13;
  v50 = v0;
  v24 = String.lowercased()();

  if ((v24._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v24._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_15;
  }

  v44[1] = v24._object;
  v25 = URL.host(percentEncoded:)(1);
  if (v25.value._object)
  {
    v53 = v25;
    sub_1000F8A18(&qword_100161520);
    v26 = v50;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v27 = v4[7];
    v27(v22, 0, 1, v3);
    v28 = v49;
  }

  else
  {
    v27 = v4[7];
    v27(v22, 1, 1, v3);
    v28 = v49;
    v26 = v50;
  }

  v29 = v47;
  static SettingsNavigationHost.appInstallation.getter();
  (*(v52 + 56))(v20, 0, 1, v26);
  v27(v20, 0, 1, v3);
  v30 = *(v10 + 48);
  sub_100059CA0(v22, v28, &qword_100161510, &qword_100118A08);
  sub_100059CA0(v20, v28 + v30, &qword_100161510, &qword_100118A08);
  v31 = v4[6];
  if (v31(v28, 1, v3) != 1)
  {
    v33 = v51;
    sub_100059CA0(v28, v51, &qword_100161510, &qword_100118A08);
    if (v31(v28 + v30, 1, v3) == 1)
    {

      sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v22, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v33, &qword_1001614F8, &qword_1001189F0);
      goto LABEL_13;
    }

    v35 = *(v29 + 48);
    v36 = v48;
    sub_1000F89A8(v33, v48);
    sub_1000F89A8(v28 + v30, v36 + v35);
    v37 = *(v52 + 48);
    v38 = v50;
    if (v37(v36, 1, v50) == 1)
    {

      sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v22, &qword_100161510, &qword_100118A08);
      if (v37(v36 + v35, 1, v38) == 1)
      {
        sub_1000068B0(v36, &qword_1001614F8, &qword_1001189F0);
        v32 = 1;
LABEL_24:
        sub_1000068B0(v28, &qword_100161510, &qword_100118A08);
        return v32 & 1;
      }
    }

    else
    {
      v39 = v46;
      sub_100059CA0(v36, v46, &qword_1001614F8, &qword_1001189F0);
      if (v37(v36 + v35, 1, v38) != 1)
      {
        v40 = v52;
        v41 = v45;
        (*(v52 + 32))(v45, v36 + v35, v38);
        sub_1000F8A18(&qword_100161518);
        v42 = v39;
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();

        v43 = *(v40 + 8);
        v43(v41, v38);
        sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
        sub_1000068B0(v22, &qword_100161510, &qword_100118A08);
        v43(v42, v38);
        v28 = v49;
        sub_1000068B0(v36, &qword_1001614F8, &qword_1001189F0);
        goto LABEL_24;
      }

      sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v22, &qword_100161510, &qword_100118A08);
      (*(v52 + 8))(v39, v38);
    }

    sub_1000068B0(v36, &qword_100161500, &qword_1001189F8);
    v32 = 0;
    goto LABEL_24;
  }

  sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
  sub_1000068B0(v22, &qword_100161510, &qword_100118A08);
  if (v31(v28 + v30, 1, v3) != 1)
  {
LABEL_13:
    sub_1000068B0(v28, &qword_100161508, &qword_100118A00);
LABEL_15:
    v32 = 0;
    return v32 & 1;
  }

  sub_1000068B0(v28, &qword_100161510, &qword_100118A08);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1000F89A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F8A18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SettingsNavigationHost();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000F8A6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLQueryItem();
  v5 = *(v4 - 8);
  v73 = v4;
  v74 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v76 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = &v61 - v10;
  v11 = __chkstk_darwin(v9);
  v67 = &v61 - v12;
  v13 = __chkstk_darwin(v11);
  v66 = &v61 - v14;
  __chkstk_darwin(v13);
  v77 = &v61 - v15;
  v16 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v61 - v18;
  v20 = type metadata accessor for URLComponents();
  v70 = *(v20 - 8);
  v21 = *(v70 + 64);
  __chkstk_darwin(v20);
  v69 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000659C(v23, qword_1001696A0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v20;
    v27 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001266A0, v80);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, v80);
    _os_log_impl(&_mh_execute_header, v24, v25, "Start (%s.%s)…", v27, 0x16u);
    swift_arrayDestroy();

    v20 = v26;
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v28 = v70;
  v29 = (*(v70 + 48))(v19, 1, v20);
  v30 = v69;
  if (v29 == 1)
  {
    sub_1000F936C(v19);
LABEL_8:
    v33 = 1;
    goto LABEL_9;
  }

  (*(v28 + 32))(v69, v19, v20);
  v80[0] = URLComponents.path.getter();
  v80[1] = v31;
  v78 = 0xD000000000000019;
  v79 = 0x8000000100126660;
  sub_10002EAE0();
  v32 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (v32)
  {
    (*(v28 + 8))(v30, v20);
    goto LABEL_8;
  }

  v63 = a1;
  v64 = v20;
  v35 = URLComponents.percentEncodedQueryItems.getter();
  if (!v35)
  {
    (*(v28 + 8))(v30, v64);
    goto LABEL_8;
  }

  v20 = v35;
  v62 = a2;
  v72 = *(v35 + 16);
  if (v72)
  {
    v36 = 0;
    v37 = 0x6174616464726163;
    a1 = v73;
    v71 = v74 + 16;
    v65 = (v74 + 8);
    v75 = (v74 + 32);
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v36 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v38 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v39 = *(v74 + 72);
      (*(v74 + 16))(v77, v20 + v38 + v39 * v36, a1);
      if (URLQueryItem.name.getter() == v37 && v40 == 0xE800000000000000)
      {
        break;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_20;
      }

      (*v65)(v77, a1);
LABEL_14:
      if (v72 == ++v36)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    a2 = v20;
    v42 = v37;
    v43 = *v75;
    (*v75)(v76, v77, a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F52B8(0, *(v19 + 2) + 1, 1);
      v19 = v80[0];
    }

    v46 = *(v19 + 2);
    v45 = *(v19 + 3);
    if (v46 >= v45 >> 1)
    {
      sub_1000F52B8(v45 > 1, v46 + 1, 1);
      v19 = v80[0];
    }

    *(v19 + 2) = v46 + 1;
    v47 = &v19[v38 + v46 * v39];
    a1 = v73;
    v43(v47, v76, v73);
    v37 = v42;
    v20 = a2;
    goto LABEL_14;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_27:

  v48 = v66;
  URLQueryItem.init(name:value:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1000C4F50(0, *(v19 + 2) + 1, 1, v19);
  }

  v50 = *(v19 + 2);
  v49 = *(v19 + 3);
  if (v50 >= v49 >> 1)
  {
    v19 = sub_1000C4F50(v49 > 1, v50 + 1, 1, v19);
  }

  *(v19 + 2) = v50 + 1;
  v51 = *(v74 + 32);
  v52 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v53 = *(v74 + 72);
  v51(&v19[v52 + v53 * v50], v48, v73);
  URLQueryItem.init(name:value:)();
  v55 = *(v19 + 2);
  v54 = *(v19 + 3);
  if (v55 >= v54 >> 1)
  {
    v19 = sub_1000C4F50(v54 > 1, v55 + 1, 1, v19);
  }

  *(v19 + 2) = v55 + 1;
  v51(&v19[v52 + v55 * v53], v67, v73);
  URLQueryItem.init(name:value:)();
  v57 = *(v19 + 2);
  v56 = *(v19 + 3);
  if (v57 >= v56 >> 1)
  {
    v19 = sub_1000C4F50(v56 > 1, v57 + 1, 1, v19);
  }

  (*(v70 + 8))(v69, v64);
  *(v19 + 2) = v57 + 1;
  v51(&v19[v52 + v57 * v53], v68, v73);
  v58 = type metadata accessor for URL();
  a2 = v62;
  (*(*(v58 - 8) + 16))(v62, v63, v58);
  v59 = type metadata accessor for SettingsURLDestination(0);
  v60 = a2 + *(v59 + 20);
  *v60 = 6;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = 6;
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  v33 = 0;
  *(a2 + *(v59 + 24)) = v19;
LABEL_9:
  v34 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v34 - 8) + 56))(a2, v33, 1, v34);
  sub_1000F93D4();
}

uint64_t sub_1000F936C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000F93D4()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001266A0, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F9558()
{
  URL.scheme.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = String.lowercased()();

  if (v1._countAndFlagsBits == 0x7370747468 && v1._object == 0xE500000000000000)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
LABEL_10:
      v5 = 0;
      return v5 & 1;
    }
  }

  URL.host.getter();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = String.lowercased()();

  if (v4._countAndFlagsBits == 0xD000000000000013 && 0x80000001001266C0 == v4._object)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void sub_1000F968C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x8000000100126700, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  URL.scheme.getter();
  if (v8)
  {
    v9 = String.lowercased()();

    if (v9._countAndFlagsBits == 0xD000000000000014 && 0x80000001001266E0 == v9._object)
    {

LABEL_10:
      v11 = type metadata accessor for URL();
      v12 = *(*(v11 - 8) + 16);
      v12(a2, a1, v11);
      v13 = type metadata accessor for SettingsURLDestination(0);
      v12(a2 + *(v13 + 20), a1, v11);
      type metadata accessor for SettingsURLDestination.Action(0);
      swift_storeEnumTagMultiPayload();
      v14 = 0;
      *(a2 + *(v13 + 24)) = _swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_10;
    }
  }

  v14 = 1;
LABEL_12:
  v15 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v15 - 8) + 56))(a2, v14, 1, v15);

  sub_1000F9994();
}

void sub_1000F9994()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x8000000100126700, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F9B18()
{
  URL.scheme.getter();
  if (v0)
  {
    v1 = String.lowercased()();

    if (v1._countAndFlagsBits == 0xD000000000000014 && 0x80000001001266E0 == v1._object)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1000F9BD0(char *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = type metadata accessor for URLQueryItem();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v57);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v47 - v8;
  v9 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for URLComponents();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  __chkstk_darwin(v13);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v21 = type metadata accessor for URL();
  v51 = *(v21 - 8);
  v52 = v21;
  v22 = *(v51 + 64);
  __chkstk_darwin(v21);
  v56 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000659C(v24, qword_1001696A0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = a2;
    v28 = v27;
    v58 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_100025CF0(0xD000000000000018, 0x8000000100126720, &v58);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v58);
    _os_log_impl(&_mh_execute_header, v25, v26, "Start (%s.%s)…", v28, 0x16u);
    swift_arrayDestroy();

    a2 = v49;
  }

  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v29 = Transforming.transform.getter();
  (*(v17 + 8))(v20, v16);
  v30 = v56;
  v29(v53);

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v16 = v54;
  v31 = v55;
  if ((*(v54 + 48))(v12, 1, v55) == 1)
  {
    (*(v51 + 8))(v30, v52);
    sub_1000F936C(v12);
LABEL_24:
    v36 = 1;
    goto LABEL_25;
  }

  v32 = v50;
  (*(v16 + 32))(v50, v12, v31);
  v33 = URLComponents.percentEncodedQueryItems.getter();
  if (!v33)
  {
    (*(v16 + 8))(v32, v31);
    (*(v51 + 8))(v30, v52);
    goto LABEL_24;
  }

  v12 = v33;
  v49 = a2;
  v34 = *(v33 + 16);
  if (v34)
  {
    v20 = 0;
    a2 = 1953460082;
    v17 = v3 + 8;
    while (1)
    {
      if (v20 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_27;
      }

      (*(v3 + 16))(v7, &v12[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20], v57);
      if (URLQueryItem.name.getter() == 1953460082 && v35 == 0xE400000000000000)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_17;
      }

      ++v20;
      (*v17)(v7, v57);
      if (v34 == v20)
      {
        goto LABEL_14;
      }
    }

LABEL_17:

    v37 = v48;
    (*(v3 + 32))(v48, v7, v57);
    v38 = URLQueryItem.value.getter();
    a2 = v49;
    v40 = v54;
    if (v39)
    {
      if (v38 == 0x49465F5055544553 && v39 == 0xEC0000004853494ELL)
      {

LABEL_22:
        v43 = v51;
        v42 = v52;
        v44 = *(v51 + 16);
        v44(a2, v56, v52);
        v45 = type metadata accessor for SettingsURLDestination(0);
        v44(a2 + *(v45 + 20), v53, v42);
        type metadata accessor for SettingsURLDestination.Action(0);
        swift_storeEnumTagMultiPayload();
        (*v17)(v37, v57);
        (*(v40 + 8))(v50, v55);
        (*(v43 + 8))(v56, v42);
        v36 = 0;
        *(a2 + *(v45 + 24)) = _swiftEmptyArrayStorage;
        goto LABEL_25;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_22;
      }
    }

    (*v17)(v37, v57);
    (*(v40 + 8))(v50, v55);
    (*(v51 + 8))(v56, v52);
    goto LABEL_24;
  }

LABEL_14:

  (*(v54 + 8))(v50, v55);
  (*(v51 + 8))(v56, v52);
  v36 = 1;
  a2 = v49;
LABEL_25:
  v46 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v46 - 8) + 56))(a2, v36, 1, v46);
  sub_1000FA3F4();
}

void sub_1000FA3F4()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000018, 0x8000000100126720, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000FA578(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v50 = &v50 - v8;
  __chkstk_darwin(v7);
  v51 = &v50 - v9;
  v10 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for URLComponents();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v22 = type metadata accessor for URL();
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = *(v55 + 64);
  __chkstk_darwin(v22);
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (!v25)
  {
    goto LABEL_26;
  }

  v53 = v14;
  v59 = v2;
  v26 = String.lowercased()();

  if (v26._countAndFlagsBits == 0x7366657270 && v26._object == 0xE500000000000000)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
LABEL_26:
      v49 = 0;
      return v49 & 1;
    }
  }

  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v28 = Transforming.transform.getter();
  (*(v18 + 8))(v21, v17);
  v29 = v57;
  v28(a1);

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v30 = v58;
  v31 = v53;
  if ((*(v58 + 48))(v13, 1, v53) == 1)
  {
    (*(v55 + 8))(v29, v56);
    sub_1000F936C(v13);
    goto LABEL_26;
  }

  v32 = v54;
  (*(v30 + 32))(v54, v13, v31);
  result = URLComponents.percentEncodedQueryItems.getter();
  if (!result)
  {
    (*(v30 + 8))(v32, v31);
    (*(v55 + 8))(v29, v56);
    goto LABEL_26;
  }

  v34 = result;
  v35 = *(result + 16);
  v36 = v59;
  v37 = v52;
  if (!v35)
  {
LABEL_16:

    (*(v58 + 8))(v54, v53);
LABEL_25:
    (*(v55 + 8))(v57, v56);
    goto LABEL_26;
  }

  v38 = 0;
  v39 = (v52 + 8);
  while (1)
  {
    if (v38 >= *(v34 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v37 + 16))(v6, v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v38, v36);
    if (URLQueryItem.name.getter() == 1953460082 && v40 == 0xE400000000000000)
    {

      goto LABEL_20;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      break;
    }

    ++v38;
    v36 = v59;
    result = (*v39)(v6, v59);
    if (v35 == v38)
    {
      goto LABEL_16;
    }
  }

  v36 = v59;
LABEL_20:

  v42 = *(v37 + 32);
  v43 = v50;
  v42(v50, v6, v36);
  v44 = v51;
  v42(v51, v43, v36);
  v45 = URLQueryItem.value.getter();
  v47 = v53;
  v48 = v54;
  if (!v46)
  {
    (*v39)(v44, v36);
    (*(v58 + 8))(v48, v47);
    goto LABEL_25;
  }

  if (v45 == 0x49465F5055544553 && v46 == 0xEC0000004853494ELL)
  {
    v49 = 1;
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*v39)(v44, v36);
  (*(v58 + 8))(v48, v47);
  (*(v55 + 8))(v57, v56);
  return v49 & 1;
}

void sub_1000FAC34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for URLQueryItem();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  v5 = __chkstk_darwin(v3);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v81 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v81 - v11;
  __chkstk_darwin(v10);
  v14 = (&v81 - v13);
  v15 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v81 - v17;
  v19 = type metadata accessor for URLComponents();
  v91 = *(v19 - 8);
  v92 = v19;
  v20 = *(v91 + 8);
  __chkstk_darwin(v19);
  v85 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v81 - v25;
  v27 = type metadata accessor for URL();
  v88 = *(v27 - 8);
  v89 = v27;
  v28 = *(v88 + 64);
  v29 = __chkstk_darwin(v27);
  v87 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v93 = &v81 - v31;
  if (qword_10015AAB8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v86 = sub_10000659C(v32, qword_1001696A0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v83 = v9;
  v84 = v14;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_100025CF0(0xD000000000000015, 0x8000000100126760, v99);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, v99);
    _os_log_impl(&_mh_execute_header, v33, v34, "Start (%s.%s)…", v36, 0x16u);
    swift_arrayDestroy();
  }

  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v37 = Transforming.transform.getter();
  (*(v23 + 8))(v26, v22);
  v38 = v93;
  v37(a1);

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v14 = v91;
  v9 = v92;
  if ((*(v91 + 6))(v18, 1, v92) == 1)
  {
    sub_1000F936C(v18);
    goto LABEL_26;
  }

  v39 = v85;
  v14[4](v85, v18, v9);
  v40 = URLComponents.percentEncodedQueryItems.getter();
  if (!v40)
  {
    (v14[1])(v39, v9);
    goto LABEL_26;
  }

  v18 = v40;
  v95 = *(v40 + 16);
  if (!v95)
  {
LABEL_25:
    (*(v91 + 1))(v85, v92);

    v38 = v93;
LABEL_26:
    v55 = v87;
    v57 = v88;
    v56 = v89;
    (*(v88 + 16))(v87, v38, v89);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v55;
      v62 = swift_slowAlloc();
      v99[0] = v62;
      *v60 = 141558275;
      *(v60 + 4) = 1752392040;
      *(v60 + 12) = 2081;
      sub_1000FB7F0();
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v66 = *(v57 + 8);
      v66(v61, v56);
      v67 = sub_100025CF0(v63, v65, v99);

      *(v60 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "Could not resolve the Item ID from the URL %{private,mask.hash}s.", v60, 0x16u);
      sub_10000665C(v62);

      v66(v93, v56);
    }

    else
    {

      v68 = *(v57 + 8);
      v68(v55, v56);
      v68(v38, v56);
    }

    v69 = 1;
    v70 = v90;
LABEL_30:
    v71 = sub_10004DED0(&qword_10015B298, &unk_100118820);
    (*(*(v71 - 8) + 56))(v70, v69, 1, v71);
    sub_1000FB66C();
    return;
  }

  v22 = 0;
  v26 = 0x64496D657469;
  v96 = v97 + 16;
  v23 = v97 + 8;
  while (1)
  {
    if (v22 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    v14 = ((*(v97 + 80) + 32) & ~*(v97 + 80));
    a1 = *(v97 + 72);
    v41 = *(v97 + 16);
    v41(v12, v14 + v18 + a1 * v22, v98);
    v42 = URLQueryItem.name.getter();
    v9 = v43;
    if (v42 == 0x64496D657469 && v43 == 0xE600000000000000)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      goto LABEL_17;
    }

    ++v22;
    (*v23)(v12, v98);
    if (v95 == v22)
    {
      goto LABEL_25;
    }
  }

LABEL_17:
  v45 = v98;
  v46 = v97 + 32;
  v47 = v84;
  v81 = *(v97 + 32);
  v81(v84, v12, v98);
  v82 = URLQueryItem.value.getter();
  v49 = v48;
  v97 = v46;
  v50 = *(v46 - 24);
  v50(v47, v45);
  v84 = v49;
  if (!v49)
  {
    goto LABEL_25;
  }

  v51 = 0;
  v52 = v14 + v18;
  while (v51 < *(v18 + 16))
  {
    v41(v94, v52, v98);
    if (URLQueryItem.name.getter() == 0xD000000000000014 && 0x8000000100126740 == v53)
    {

LABEL_32:
      v72 = v83;
      v73 = v98;
      v81(v83, v94, v98);
      v74 = URLQueryItem.value.getter();
      v76 = v75;
      v50(v72, v73);
      (*(v91 + 1))(v85, v92);
      if (!v76)
      {
LABEL_33:
        v74 = 0;
        v76 = 0;
      }

      v70 = v90;
      v77 = v82;
      (*(v88 + 32))(v90, v93, v89);
      v78 = type metadata accessor for SettingsURLDestination(0);
      v79 = (v70 + *(v78 + 20));
      v80 = v84;
      *v79 = v77;
      v79[1] = v80;
      v79[2] = v74;
      v79[3] = v76;
      type metadata accessor for SettingsURLDestination.Action(0);
      swift_storeEnumTagMultiPayload();
      v69 = 0;
      *(v70 + *(v78 + 24)) = v18;
      goto LABEL_30;
    }

    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v54)
    {
      goto LABEL_32;
    }

    ++v51;
    v50(v94, v98);
    v52 += a1;
    if (v95 == v51)
    {
      (*(v91 + 1))(v85, v92);
      goto LABEL_33;
    }
  }

  __break(1u);
}

void sub_1000FB66C()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000015, 0x8000000100126760, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

unint64_t sub_1000FB7F0()
{
  result = qword_10015E918;
  if (!qword_10015E918)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E918);
  }

  return result;
}

uint64_t sub_1000FB848(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v50 = &v50 - v8;
  __chkstk_darwin(v7);
  v51 = &v50 - v9;
  v10 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for URLComponents();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v22 = type metadata accessor for URL();
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = *(v55 + 64);
  __chkstk_darwin(v22);
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (v25)
  {
    v53 = v14;
    v59 = v2;
    v26 = String.lowercased()();

    if (v26._countAndFlagsBits == 0x7366657270 && v26._object == 0xE500000000000000)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    static Transforming<>.normalizedPrefsAndAppPrefs.getter();
    v28 = Transforming.transform.getter();
    (*(v18 + 8))(v21, v17);
    v29 = v57;
    v28(a1);

    URL.absoluteString.getter();
    URLComponents.init(string:)();

    v30 = v58;
    v31 = v53;
    if ((*(v58 + 48))(v13, 1, v53) == 1)
    {
      (*(v55 + 8))(v29, v56);
      sub_1000F936C(v13);
    }

    else
    {
      v32 = v54;
      (*(v30 + 32))(v54, v13, v31);
      result = URLComponents.percentEncodedQueryItems.getter();
      if (result)
      {
        v34 = result;
        v35 = *(result + 16);
        v36 = v59;
        v37 = v52;
        if (v35)
        {
          v38 = 0;
          v39 = (v52 + 8);
          while (1)
          {
            if (v38 >= *(v34 + 16))
            {
              __break(1u);
              return result;
            }

            (*(v37 + 16))(v6, v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v38, v36);
            if (URLQueryItem.name.getter() == 1953460082 && v40 == 0xE400000000000000)
            {

              goto LABEL_20;
            }

            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v41)
            {
              break;
            }

            ++v38;
            v36 = v59;
            result = (*v39)(v6, v59);
            if (v35 == v38)
            {
              goto LABEL_16;
            }
          }

          v36 = v59;
LABEL_20:

          v42 = *(v37 + 32);
          v43 = v50;
          v42(v50, v6, v36);
          v44 = v51;
          v42(v51, v43, v36);
          URLQueryItem.value.getter();
          v45 = v53;
          v46 = v54;
          if (v47)
          {
            v48._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = String.hasPrefix(_:)(v48);

            (*v39)(v44, v36);
            (*(v58 + 8))(v46, v45);
            (*(v55 + 8))(v57, v56);
            return v49;
          }

          (*v39)(v44, v36);
          (*(v58 + 8))(v46, v45);
        }

        else
        {
LABEL_16:

          (*(v58 + 8))(v54, v53);
        }

        (*(v55 + 8))(v57, v56);
      }

      else
      {
        (*(v30 + 8))(v32, v31);
        (*(v55 + 8))(v29, v56);
      }
    }
  }

  return 0;
}

uint64_t sub_1000FBEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[4] = URL.absoluteString.getter();
  v17[5] = v11;
  v17[2] = 0xD00000000000003ELL;
  v17[3] = 0x8000000100126780;
  v17[0] = 0xD00000000000003CLL;
  v17[1] = 0x80000001001267C0;
  sub_10002EAE0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = URL.scheme.getter();
    if (v13)
    {
      if (v12 == 0xD000000000000013 && v13 == 0x80000001001265E0)
      {

LABEL_8:
        sub_100103A28(v10);
        return (*(v7 + 8))(v10, v6);
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_8;
      }
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_10;
  }

  sub_1000541DC(v5);
LABEL_10:
  v16 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

void sub_1000FC1F4()
{
  URL.absoluteString.getter();
  v0._countAndFlagsBits = 0xD00000000000003ELL;
  v0._object = 0x8000000100126780;
  v1 = String.hasPrefix(_:)(v0);

  if (v1)
  {
    v2 = [objc_opt_self() defaultWorkspace];
    if (!v2)
    {
      __break(1u);
      goto LABEL_10;
    }

    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 applicationIsInstalled:v4];

    if (v5)
    {
      v6 = [objc_opt_self() sharedConnection];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 restrictedAppBundleIDs];

        if (v8)
        {
          v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          AnyHashable.init<A>(_:)();
          sub_100061FF0(v10, v9);

          sub_100017E04(v10);
          return;
        }

        goto LABEL_11;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
    }
  }
}

uint64_t sub_1000FC3B8()
{
  sub_10004DED0(&qword_10015C470, &qword_100112480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100118B10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v7;
  *(inited + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = v8;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v9;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v11;
  *(inited + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 216) = v12;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v13;
  *(inited + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 248) = v14;
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v15;
  v16 = sub_10001DD0C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_100161530 = v16;
  return result;
}

uint64_t sub_1000FC574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v96 = a2;
  v2 = type metadata accessor for URLQueryItem();
  v92 = *(v2 - 8);
  v93 = v2;
  v3 = *(v92 + 64);
  v4 = __chkstk_darwin(v2);
  v94 = &object - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v84 = &object - v7;
  __chkstk_darwin(v6);
  v85 = &object - v8;
  v9 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v88 = &object - v11;
  v12 = type metadata accessor for URLComponents();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = *(v89 + 64);
  __chkstk_darwin(v12);
  v86 = &object - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004DED0(qword_100161538, &qword_100118B60);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v87 = &object - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v83 = &object - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &object - v22;
  __chkstk_darwin(v21);
  v25 = &object - v24;
  v26 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &object - v29;
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &object - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v36 = Transforming.transform.getter();
  (*(v27 + 8))(v30, v26);
  v36(v95);
  v37 = v96;

  URL.scheme.getter();
  if (!v38)
  {
LABEL_28:
    (*(v32 + 8))(v35, v31);
    v62 = type metadata accessor for UUID();
    return (*(*(v62 - 8) + 56))(v37, 1, 1, v62);
  }

  v91 = v31;
  v95 = v32;
  v39 = String.lowercased()();

  if ((v39._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v39._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v39._countAndFlagsBits == 0x7366657270 && v39._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      URL.absoluteString.getter();
      v49 = v88;
      URLComponents.init(string:)();

      v51 = v89;
      v50 = v90;
      if ((*(v89 + 48))(v49, 1, v90) == 1)
      {

        (*(v95 + 8))(v35, v91);
        sub_1000068B0(v49, &qword_1001614F0, &unk_1001189B0);
      }

      else
      {
        v52 = v86;
        (*(v51 + 32))(v86, v49, v50);
        result = URLComponents.percentEncodedQueryItems.getter();
        v53 = v95;
        v54 = v91;
        if (result)
        {
          v55 = result;
          object = v39._object;
          v88 = v35;
          v56 = *(result + 16);
          v57 = v93;
          if (v56)
          {
            v58 = 0;
            v59 = (v92 + 8);
            while (1)
            {
              if (v58 >= *(v55 + 16))
              {
                goto LABEL_45;
              }

              (*(v92 + 16))(v94, v55 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v58, v57);
              if (URLQueryItem.name.getter() == 1752457584 && v60 == 0xE400000000000000)
              {
                break;
              }

              v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v61)
              {
                goto LABEL_33;
              }

              ++v58;
              v57 = v93;
              result = (*v59)(v94, v93);
              if (v56 == v58)
              {
                goto LABEL_26;
              }
            }

LABEL_33:

            v64 = v93;
            v65 = *(v92 + 32);
            v66 = v84;
            v65(v84, v94, v93);
            v67 = v85;
            v65(v85, v66, v64);
            v68 = URLQueryItem.value.getter();
            v70 = v96;
            if (v69)
            {
              v99 = v68;
              v100 = v69;
              v97 = 47;
              v98 = 0xE100000000000000;
              sub_10002EAE0();
              v71 = StringProtocol.components<A>(separatedBy:)();

              v72 = *(v71 + 16);
              if (v72)
              {
                v73 = 0;
                v74 = (v71 + 40);
                while (v73 < *(v71 + 16))
                {
                  v75 = *(v74 - 1);
                  v76 = *v74;

                  v77 = v87;
                  UUID.init(uuidString:)();
                  v78 = type metadata accessor for UUID();
                  if ((*(*(v78 - 8) + 48))(v77, 1, v78) != 1)
                  {

                    sub_1000068B0(v77, qword_100161538, &qword_100118B60);

                    v80 = v83;
                    UUID.init(uuidString:)();

                    swift_bridgeObjectRelease_n();
                    (*v59)(v85, v93);
                    (*(v89 + 8))(v86, v90);
                    (*(v95 + 8))(v88, v91);
                    goto LABEL_42;
                  }

                  ++v73;
                  result = sub_1000068B0(v77, qword_100161538, &qword_100118B60);
                  v74 += 2;
                  if (v72 == v73)
                  {
                    goto LABEL_39;
                  }
                }

LABEL_46:
                __break(1u);
                return result;
              }

LABEL_39:

              (*v59)(v85, v93);
              (*(v89 + 8))(v86, v90);
              (*(v95 + 8))(v88, v91);
              v79 = type metadata accessor for UUID();
              v80 = v83;
              (*(*(v79 - 8) + 56))(v83, 1, 1, v79);
LABEL_42:
              v70 = v96;
            }

            else
            {

              (*v59)(v67, v64);
              (*(v89 + 8))(v86, v90);
              (*(v53 + 8))(v88, v54);
              v81 = type metadata accessor for UUID();
              v80 = v83;
              (*(*(v81 - 8) + 56))(v83, 1, 1, v81);
            }

            return sub_1000A4CB8(v80, v70, qword_100161538, &qword_100118B60);
          }

LABEL_26:

          (*(v89 + 8))(v86, v90);
          (*(v53 + 8))(v88, v54);
        }

        else
        {

          (*(v51 + 8))(v52, v50);
          (*(v53 + 8))(v35, v54);
        }
      }

      v63 = type metadata accessor for UUID();
      return (*(*(v63 - 8) + 56))(v96, 1, 1, v63);
    }

    v32 = v95;
    v37 = v96;
    v31 = v91;
    goto LABEL_28;
  }

  object = v39._object;
  v88 = v35;
  result = URL.pathComponents.getter();
  v41 = result;
  v42 = *(result + 16);
  if (v42)
  {
    v43 = 0;
    v44 = (result + 40);
    while (v43 < *(v41 + 16))
    {
      v45 = *(v44 - 1);
      v46 = *v44;

      UUID.init(uuidString:)();
      v47 = type metadata accessor for UUID();
      if ((*(*(v47 - 8) + 48))(v23, 1, v47) != 1)
      {

        sub_1000068B0(v23, qword_100161538, &qword_100118B60);

        UUID.init(uuidString:)();

        swift_bridgeObjectRelease_n();
        (*(v95 + 8))(v88, v91);
        return sub_1000A4CB8(v25, v96, qword_100161538, &qword_100118B60);
      }

      ++v43;
      result = sub_1000068B0(v23, qword_100161538, &qword_100118B60);
      v44 += 2;
      if (v42 == v43)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_10:

  (*(v95 + 8))(v88, v91);
  v48 = type metadata accessor for UUID();
  (*(*(v48 - 8) + 56))(v25, 1, 1, v48);
  return sub_1000A4CB8(v25, v96, qword_100161538, &qword_100118B60);
}

void sub_1000FD1B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v204 = a1;
  v208 = type metadata accessor for URLQueryItem();
  v203 = *(v208 - 8);
  v3 = *(v203 + 64);
  v4 = __chkstk_darwin(v208);
  v205 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v207 = &v180 - v6;
  v7 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v185 = &v180 - v9;
  v10 = sub_10004DED0(qword_100161538, &qword_100118B60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v187 = &v180 - v12;
  v13 = type metadata accessor for UUID();
  v192 = *(v13 - 8);
  v14 = *(v192 + 64);
  __chkstk_darwin(v13);
  v191 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v182 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v189 = &v180 - v21;
  __chkstk_darwin(v20);
  v199 = &v180 - v22;
  v198 = type metadata accessor for SettingsNavigationHost();
  v197 = *(v198 - 8);
  v23 = *(v197 + 64);
  __chkstk_darwin(v198);
  v196 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for URLComponents();
  v26 = *(v25 - 8);
  v201 = v25;
  v202 = v26;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v183 = &v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v180 - v30;
  v32 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v180 - v35;
  v37 = type metadata accessor for URL();
  v200 = *(v37 - 8);
  v38 = *(v200 + 64);
  v39 = __chkstk_darwin(v37);
  v181 = &v180 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v43 = &v180 - v42;
  v44 = __chkstk_darwin(v41);
  v188 = &v180 - v45;
  v46 = __chkstk_darwin(v44);
  v184 = &v180 - v47;
  v48 = __chkstk_darwin(v46);
  v195 = &v180 - v49;
  v50 = __chkstk_darwin(v48);
  v186 = (&v180 - v51);
  __chkstk_darwin(v50);
  v206 = &v180 - v52;
  if (qword_10015AAB8 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v53 = type metadata accessor for Logger();
    v194 = sub_10000659C(v53, qword_1001696A0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v193 = v13;
    v180 = v43;
    if (v56)
    {
      v57 = v37;
      v58 = a2;
      v59 = v31;
      v60 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *v60 = 136315394;
      *(v60 + 4) = sub_100025CF0(0xD000000000000025, 0x8000000100126820, &v209);
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v209);
      _os_log_impl(&_mh_execute_header, v54, v55, "Start (%s.%s)…", v60, 0x16u);
      swift_arrayDestroy();

      v31 = v59;
      a2 = v58;
      v37 = v57;
    }

    static Transforming<>.normalizedPrefsAndAppPrefs.getter();
    v61 = Transforming.transform.getter();
    v62 = *(v33 + 8);
    v33 += 8;
    v62(v36, v32);
    v63 = v204;
    v61(v204);

    URLComponents.init()();
    URLComponents.scheme.setter();
    if (sub_1000FEAAC(v63))
    {
      v64 = v196;
      static SettingsNavigationHost.apps.getter();
      SettingsNavigationHost.rawValue.getter();
      (*(v197 + 8))(v64, v198);
      URLComponents.host.setter();
      sub_1000FFA60();
      v66 = v65;
      sub_10004DED0(&qword_10015C470, &qword_100112480);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1001103D0;
      *(v67 + 32) = sub_1000FFD28(v63);
      *(v67 + 40) = v68;
      v69 = v31;
      if (v66)
      {
        v70 = 0x53544E554F434341;
        v71 = 0xE800000000000000;
      }

      else
      {
        v70 = 0x4F4343415F444441;
        v71 = 0xEB00000000544E55;
      }

      *(v67 + 48) = v70;
      *(v67 + 56) = v71;
      v209 = v67;
      sub_10004DED0(&unk_10015FC00, &qword_100111C00);
      sub_1000268F8();
      v77 = BidirectionalCollection<>.joined(separator:)();
      v79 = v78;

      v209 = 47;
      v210 = 0xE100000000000000;
      v80._countAndFlagsBits = v77;
      v80._object = v79;
      String.append(_:)(v80);

      URLComponents.path.setter();
      v81 = v199;
      URLComponents.url.getter();
      v82 = v200;
      v83 = (*(v200 + 48))(v81, 1, v37);
      v84 = v195;
      if (v83 != 1)
      {
        v85 = v186;
        (*(v82 + 32))(v186, v81, v37);
        (*(v82 + 16))(a2, v85, v37);
        v86 = type metadata accessor for SettingsURLDestination(0);
        v87 = a2 + *(v86 + 20);
        *v87 = 45;
        *(v87 + 8) = 0;
        *(v87 + 16) = 0;
        *(v87 + 24) = 0;
        *(v87 + 32) = 6;
        type metadata accessor for SettingsURLDestination.Action(0);
        swift_storeEnumTagMultiPayload();
        v88 = *(v82 + 8);
        v88(v85, v37);
LABEL_28:
        (*(v202 + 8))(v69, v201);
        v88(v206, v37);
        v120 = 0;
        *(a2 + *(v86 + 24)) = _swiftEmptyArrayStorage;
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    if (sub_10010050C(v63))
    {
      v69 = v31;
      v72 = v196;
      static SettingsNavigationHost.apps.getter();
      SettingsNavigationHost.rawValue.getter();
      (*(v197 + 8))(v72, v198);
      URLComponents.host.setter();
      sub_1000FFA60();
      v74 = v73;
      sub_10004DED0(&qword_10015C470, &qword_100112480);
      if (v74)
      {
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1001103E0;
        *(v75 + 32) = sub_1000FFD28(v63);
        *(v75 + 40) = v76;
        *(v75 + 48) = 0x53544E554F434341;
        *(v75 + 56) = 0xE800000000000000;
        *(v75 + 64) = 0x4F4343415F444441;
        *(v75 + 72) = 0xEB00000000544E55;
      }

      else
      {
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1001103D0;
        *(v75 + 32) = sub_1000FFD28(v63);
        *(v75 + 40) = v93;
        *(v75 + 48) = 0x4F4343415F444441;
        *(v75 + 56) = 0xEB00000000544E55;
      }

      v209 = v75;
      sub_10004DED0(&unk_10015FC00, &qword_100111C00);
      sub_1000268F8();
      v94 = BidirectionalCollection<>.joined(separator:)();
      v96 = v95;

      v209 = 47;
      v210 = 0xE100000000000000;
      v97._countAndFlagsBits = v94;
      v97._object = v96;
      String.append(_:)(v97);

      URLComponents.path.setter();
      v81 = v189;
      URLComponents.url.getter();
      v82 = v200;
      v98 = (*(v200 + 48))(v81, 1, v37);
      v84 = v188;
      if (v98 != 1)
      {
        v121 = v184;
        (*(v82 + 32))(v184, v81, v37);
        (*(v82 + 16))(a2, v121, v37);
        v86 = type metadata accessor for SettingsURLDestination(0);
        v122 = a2 + *(v86 + 20);
        *v122 = 45;
        *(v122 + 8) = 0;
        *(v122 + 16) = 0;
        *(v122 + 24) = 0;
        *(v122 + 32) = 6;
        type metadata accessor for SettingsURLDestination.Action(0);
        swift_storeEnumTagMultiPayload();
        v88 = *(v82 + 8);
        v88(v121, v37);
        goto LABEL_28;
      }

LABEL_17:
      sub_1000068B0(v81, &qword_10015E910, &unk_10010FC70);
      (*(v82 + 16))(v84, v204, v37);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v187 = a2;
        v102 = v69;
        v103 = v101;
        v104 = v37;
        v105 = v82;
        v106 = swift_slowAlloc();
        v209 = v106;
        *v103 = 141558275;
        *(v103 + 4) = 1752392040;
        *(v103 + 12) = 2081;
        v107 = URL.absoluteString.getter();
        v108 = v84;
        v110 = v109;
        v111 = *(v105 + 8);
        v111(v108, v104);
        v112 = sub_100025CF0(v107, v110, &v209);

        *(v103 + 14) = v112;
        _os_log_impl(&_mh_execute_header, v99, v100, "Could not create re-direct URL for Internet Accounts for input URL %{private,mask.hash}s", v103, 0x16u);
        sub_10000665C(v106);

        v113 = v102;
        a2 = v187;
        (*(v202 + 8))(v113, v201);
        goto LABEL_19;
      }

      v114 = *(v82 + 8);
      v114(v84, v37);
      (*(v202 + 8))(v69, v201);
      goto LABEL_21;
    }

    v89 = v63;
    v36 = sub_10001DD0C(&off_10014CFB0);
    swift_arrayDestroy();
    v90 = v187;
    sub_1000FC574(v89, v187);
    v91 = v192;
    v92 = v193;
    if ((*(v192 + 48))(v90, 1, v193) == 1)
    {

      (*(v202 + 8))(v31, v201);
      (*(v200 + 8))(v206, v37);
      sub_1000068B0(v90, qword_100161538, &qword_100118B60);
      goto LABEL_26;
    }

    (*(v91 + 32))(v191, v90, v92);
    URL.absoluteString.getter();
    v43 = v185;
    URLComponents.init(string:)();

    v116 = v201;
    v115 = v202;
    if ((*(v202 + 48))(v43, 1, v201) == 1)
    {

      sub_1000068B0(v43, &qword_1001614F0, &unk_1001189B0);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&_mh_execute_header, v117, v118, "Could not retrieve original path for Internet Accounts.", v119, 2u);
      }

      (*(v192 + 8))(v191, v193);
      (*(v202 + 8))(v31, v201);
      (*(v200 + 8))(v206, v37);
      goto LABEL_26;
    }

    v184 = v31;
    v187 = a2;
    (*(v115 + 32))(v183, v43, v116);
    v124 = URLComponents.queryItems.getter();
    v31 = _swiftEmptyArrayStorage;
    if (!v124)
    {
      v124 = _swiftEmptyArrayStorage;
    }

    v195 = *(v124 + 16);
    if (!v195)
    {
      break;
    }

    v13 = 0;
    v188 = (v203 + 16);
    a2 = (v36 + 56);
    v186 = (v203 + 8);
    v199 = (v203 + 32);
    v190 = v37;
    v189 = v124;
    while (v13 < *(v124 + 16))
    {
      v43 = ((*(v203 + 80) + 32) & ~*(v203 + 80));
      v32 = *(v203 + 72);
      (*(v203 + 16))(v207, &v43[v124 + v32 * v13], v208);
      v125 = URLQueryItem.name.getter();
      v33 = v126;
      if (*(v36 + 2) && (v127 = v125, v128 = *(v36 + 5), Hasher.init(_seed:)(), String.hash(into:)(), v129 = Hasher._finalize()(), v130 = -1 << v36[32], v131 = v129 & ~v130, ((*(a2 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) != 0))
      {
        v132 = ~v130;
        while (1)
        {
          v133 = (*(v36 + 6) + 16 * v131);
          v134 = *v133 == v127 && v133[1] == v33;
          if (v134 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v131 = (v131 + 1) & v132;
          if (((*(a2 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        (*v186)(v207, v208);
      }

      else
      {
LABEL_46:

        v135 = *v199;
        (*v199)(v205, v207, v208);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v211 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000F52B8(0, *(v31 + 2) + 1, 1);
          v31 = v211;
        }

        v138 = *(v31 + 2);
        v137 = *(v31 + 3);
        v33 = v138 + 1;
        if (v138 >= v137 >> 1)
        {
          sub_1000F52B8(v137 > 1, v138 + 1, 1);
          v31 = v211;
        }

        *(v31 + 2) = v33;
        v135(&v43[v31 + v138 * v32], v205, v208);
      }

      ++v13;
      v37 = v190;
      v124 = v189;
      if (v13 == v195)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
  }

LABEL_51:

  v139 = v196;
  static SettingsNavigationHost.apps.getter();
  SettingsNavigationHost.rawValue.getter();
  (*(v197 + 8))(v139, v198);
  URLComponents.host.setter();
  v140 = v204;
  v141 = URL.pathComponents.getter();
  sub_10004DED0(&qword_10015C470, &qword_100112480);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1001103D0;
  *(v142 + 32) = sub_1000FFD28(v140);
  *(v142 + 40) = v143;
  *(v142 + 48) = 0x53544E554F434341;
  *(v142 + 56) = 0xE800000000000000;
  v144 = *(v141 + 16);
  v209 = v142;
  sub_1000C5300(v141, v141 + 32, v144 != 0, (2 * v144) | 1);

  v145 = v209;
  v146 = UUID.uuidString.getter();
  v148 = v147;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v145 = sub_1000C4E44(0, *(v145 + 2) + 1, 1, v145);
  }

  a2 = v187;
  v150 = *(v145 + 2);
  v149 = *(v145 + 3);
  if (v150 >= v149 >> 1)
  {
    v145 = sub_1000C4E44((v149 > 1), v150 + 1, 1, v145);
  }

  *(v145 + 2) = v150 + 1;
  v151 = &v145[16 * v150];
  *(v151 + 4) = v146;
  *(v151 + 5) = v148;
  v209 = v145;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v152 = BidirectionalCollection<>.joined(separator:)();
  v154 = v153;

  v209 = 47;
  v210 = 0xE100000000000000;
  v155._countAndFlagsBits = v152;
  v155._object = v154;
  String.append(_:)(v155);

  v156 = v184;
  URLComponents.path.setter();
  if (*(v31 + 2))
  {

    URLComponents.queryItems.setter();
  }

  v157 = v182;
  URLComponents.url.getter();
  v158 = v200;
  if ((*(v200 + 48))(v157, 1, v37) == 1)
  {

    sub_1000068B0(v157, &qword_10015E910, &unk_10010FC70);
    v159 = v181;
    (*(v158 + 16))(v181, v204, v37);
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v104 = v37;
      v163 = v158;
      v164 = swift_slowAlloc();
      v209 = v164;
      *v162 = 141558275;
      *(v162 + 4) = 1752392040;
      *(v162 + 12) = 2081;
      v165 = URL.absoluteString.getter();
      v167 = v166;
      v168 = v159;
      v111 = *(v163 + 8);
      v111(v168, v104);
      v169 = sub_100025CF0(v165, v167, &v209);

      *(v162 + 14) = v169;
      _os_log_impl(&_mh_execute_header, v160, v161, "Could not create re-direct URL for Internet Accounts for input URL %{private,mask.hash}s", v162, 0x16u);
      sub_10000665C(v164);

      v170 = v201;
      v171 = *(v202 + 8);
      v171(v183, v201);
      (*(v192 + 8))(v191, v193);
      v171(v184, v170);
LABEL_19:
      v111(v206, v104);
LABEL_26:
      v120 = 1;
      goto LABEL_29;
    }

    v114 = *(v158 + 8);
    v114(v159, v37);
    v178 = v201;
    v179 = *(v202 + 8);
    v179(v183, v201);
    (*(v192 + 8))(v191, v193);
    v179(v184, v178);
LABEL_21:
    v114(v206, v37);
    goto LABEL_26;
  }

  v172 = v201;
  v173 = *(v202 + 8);
  v173(v183, v201);
  (*(v192 + 8))(v191, v193);
  v173(v156, v172);
  (*(v158 + 8))(v206, v37);
  v174 = *(v158 + 32);
  v175 = v180;
  v174(v180, v157, v37);
  v174(a2, v175, v37);
  v176 = type metadata accessor for SettingsURLDestination(0);
  v177 = a2 + *(v176 + 20);
  *v177 = 45;
  *(v177 + 8) = 0;
  *(v177 + 16) = 0;
  *(v177 + 24) = 0;
  *(v177 + 32) = 6;
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  v120 = 0;
  *(a2 + *(v176 + 24)) = v31;
LABEL_29:
  v123 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v123 - 8) + 56))(a2, v120, 1, v123);
  sub_100100388();
}

uint64_t sub_1000FEAAC(uint64_t a1)
{
  v113 = a1;
  v108 = type metadata accessor for URLQueryItem();
  v104 = *(v108 - 8);
  v1 = *(v104 + 64);
  v2 = __chkstk_darwin(v108);
  v107 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v92 = &v91 - v5;
  __chkstk_darwin(v4);
  v93 = &v91 - v6;
  v7 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  object = &v91 - v9;
  v10 = type metadata accessor for URLComponents();
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  __chkstk_darwin(v10);
  v96 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SettingsNavigationHost();
  v111 = *(v109 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v109);
  v94 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  v106 = *(v15 - 8);
  v16 = *(v106 + 64);
  __chkstk_darwin(v15);
  v95 = &v91 - v17;
  v97 = sub_10004DED0(&qword_100161500, &qword_1001189F8);
  v18 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v101 = &v91 - v19;
  v105 = sub_10004DED0(&qword_100161508, &qword_100118A00);
  v20 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v110 = &v91 - v21;
  v22 = sub_10004DED0(&qword_100161510, &qword_100118A08);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v102 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v91 - v27;
  __chkstk_darwin(v26);
  v112 = &v91 - v29;
  v30 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v91 - v33;
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v40 = Transforming.transform.getter();
  (*(v31 + 8))(v34, v30);
  v40(v113);

  URL.scheme.getter();
  if (!v41)
  {
    goto LABEL_43;
  }

  v113 = v35;
  v103 = v36;
  v42 = String.lowercased()();

  if ((v42._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v42._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v42._countAndFlagsBits == 0x7366657270 && v42._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      URL.absoluteString.getter();
      v58 = object;
      URLComponents.init(string:)();

      v60 = v99;
      v59 = v100;
      if ((*(v99 + 48))(v58, 1, v100) == 1)
      {

        (*(v103 + 8))(v39, v113);
        sub_1000068B0(v58, &qword_1001614F0, &unk_1001189B0);
        goto LABEL_44;
      }

      v68 = v96;
      (*(v60 + 32))(v96, v58, v59);
      result = URLComponents.percentEncodedQueryItems.getter();
      v67 = result;
      if (!result)
      {

        (*(v60 + 8))(v68, v59);
        (*(v103 + 8))(v39, v113);
        return v67 & 1;
      }

      object = v42._object;
      v112 = v39;
      v70 = *(result + 16);
      if (!v70)
      {
LABEL_35:

        (*(v99 + 8))(v96, v100);
        (*(v103 + 8))(v112, v113);
        goto LABEL_44;
      }

      v71 = 0;
      v72 = (v104 + 8);
      while (1)
      {
        if (v71 >= *(v67 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v104 + 16))(v107, v67 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v71, v108);
        if (URLQueryItem.name.getter() == 1752457584 && v73 == 0xE400000000000000)
        {
          break;
        }

        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v74)
        {
          goto LABEL_52;
        }

        ++v71;
        result = (*v72)(v107, v108);
        if (v70 == v71)
        {
          goto LABEL_35;
        }
      }

LABEL_52:

      v82 = *(v104 + 32);
      v83 = v92;
      v84 = v108;
      v82(v92, v107, v108);
      v85 = v93;
      v82(v93, v83, v84);
      v86 = URLQueryItem.value.getter();
      v88 = v103;
      v90 = v112;
      v89 = v113;
      if (v87)
      {
        if (v86 == 1953460082 && v87 == 0xE400000000000000)
        {

          LOBYTE(v67) = 1;
        }

        else
        {
          LOBYTE(v67) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {

        LOBYTE(v67) = 0;
      }

      (*v72)(v85, v108);
      (*(v99 + 8))(v96, v100);
      (*(v88 + 8))(v90, v89);
      return v67 & 1;
    }

    v36 = v103;
    v35 = v113;
LABEL_43:
    (*(v36 + 8))(v39, v35);
    goto LABEL_44;
  }

  object = v42._object;
  v43 = 1;
  v44 = URL.host(percentEncoded:)(1);
  if (v44.value._object)
  {
    v114 = v44;
    sub_1000F8A18(&qword_100161520);
    v45 = v112;
    v46 = v109;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v43 = 0;
    v47 = v110;
  }

  else
  {
    v46 = v109;
    v47 = v110;
    v45 = v112;
  }

  v48 = v106;
  v49 = *(v106 + 56);
  v49(v45, v43, 1, v15);
  static SettingsNavigationHost.internetAccounts.getter();
  (*(v111 + 56))(v28, 0, 1, v46);
  v49(v28, 0, 1, v15);
  v50 = *(v105 + 48);
  sub_100059CA0(v45, v47, &qword_100161510, &qword_100118A08);
  sub_100059CA0(v28, v47 + v50, &qword_100161510, &qword_100118A08);
  v51 = *(v48 + 48);
  if (v51(v47, 1, v15) != 1)
  {
    v57 = v102;
    sub_100059CA0(v47, v102, &qword_100161510, &qword_100118A08);
    if (v51(v47 + v50, 1, v15) != 1)
    {
      v61 = *(v97 + 48);
      v62 = v57;
      v63 = v101;
      sub_1000A4CB8(v62, v101, &qword_1001614F8, &qword_1001189F0);
      sub_1000A4CB8(v47 + v50, v63 + v61, &qword_1001614F8, &qword_1001189F0);
      v64 = *(v111 + 48);
      v65 = v109;
      if (v64(v63, 1, v109) == 1)
      {
        sub_1000068B0(v28, &qword_100161510, &qword_100118A08);
        v66 = v101;
        sub_1000068B0(v112, &qword_100161510, &qword_100118A08);
        if (v64(v66 + v61, 1, v65) == 1)
        {
          sub_1000068B0(v66, &qword_1001614F8, &qword_1001189F0);
          v53 = v103;
          v54 = v113;
          v47 = v110;
          goto LABEL_10;
        }
      }

      else
      {
        v75 = v95;
        sub_100059CA0(v63, v95, &qword_1001614F8, &qword_1001189F0);
        if (v64(v63 + v61, 1, v65) != 1)
        {
          v78 = v111;
          v79 = v63 + v61;
          v80 = v94;
          (*(v111 + 32))(v94, v79, v65);
          sub_1000F8A18(&qword_100161518);
          LODWORD(v108) = dispatch thunk of static Equatable.== infix(_:_:)();
          v81 = *(v78 + 8);
          v81(v80, v65);
          sub_1000068B0(v28, &qword_100161510, &qword_100118A08);
          sub_1000068B0(v112, &qword_100161510, &qword_100118A08);
          v81(v75, v65);
          sub_1000068B0(v63, &qword_1001614F8, &qword_1001189F0);
          sub_1000068B0(v110, &qword_100161510, &qword_100118A08);
          v53 = v103;
          v54 = v113;
          if (v108)
          {
            goto LABEL_11;
          }

LABEL_17:

          (*(v53 + 8))(v39, v54);
LABEL_44:
          LOBYTE(v67) = 0;
          return v67 & 1;
        }

        sub_1000068B0(v28, &qword_100161510, &qword_100118A08);
        v66 = v101;
        sub_1000068B0(v112, &qword_100161510, &qword_100118A08);
        (*(v111 + 8))(v75, v65);
      }

      sub_1000068B0(v66, &qword_100161500, &qword_1001189F8);
      sub_1000068B0(v110, &qword_100161510, &qword_100118A08);
      v53 = v103;
      v54 = v113;
      goto LABEL_17;
    }

    sub_1000068B0(v28, &qword_100161510, &qword_100118A08);
    sub_1000068B0(v112, &qword_100161510, &qword_100118A08);
    sub_1000068B0(v57, &qword_1001614F8, &qword_1001189F0);
    v53 = v103;
    v54 = v113;
LABEL_16:
    sub_1000068B0(v47, &qword_100161508, &qword_100118A00);
    goto LABEL_17;
  }

  sub_1000068B0(v28, &qword_100161510, &qword_100118A08);
  sub_1000068B0(v45, &qword_100161510, &qword_100118A08);
  v52 = v51(v47 + v50, 1, v15);
  v53 = v103;
  v54 = v113;
  if (v52 != 1)
  {
    goto LABEL_16;
  }

LABEL_10:
  sub_1000068B0(v47, &qword_100161510, &qword_100118A08);
LABEL_11:
  v55 = *(URL.pathComponents.getter() + 16);

  if (v55)
  {
    v56 = URL.pathComponents.getter();
    if (v56[2] > 1uLL)
    {
      v77 = v56[6];
      v76 = v56[7];

      if (v77 == 1953460082 && v76 == 0xE400000000000000)
      {

        LOBYTE(v67) = 1;
      }

      else
      {
        LOBYTE(v67) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      (*(v53 + 8))(v39, v54);
      return v67 & 1;
    }

    goto LABEL_17;
  }

  (*(v53 + 8))(v39, v54);
  LOBYTE(v67) = 1;
  return v67 & 1;
}

void sub_1000FFA60()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 accounts];

    if (v2)
    {
      sub_100018308();
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_30:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_6:
        v4 = 0;
        v22 = &_swiftEmptyArrayStorage[4];
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v5 = v22[v4];
          }

          v6 = v5;
          if (__OFADD__(v4++, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (qword_10015AB68 != -1)
          {
            swift_once();
          }

          v8 = off_100161530;
          v9 = [v6 accountType];
          if (!v9)
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v10 = v9;
          v11 = [v9 identifier];

          if (!v11)
          {
            goto LABEL_33;
          }

          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          if (v8[2])
          {
            v15 = v8[5];
            Hasher.init(_seed:)();
            String.hash(into:)();
            v16 = Hasher._finalize()();
            v17 = -1 << *(v8 + 32);
            v18 = v16 & ~v17;
            if ((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18))
            {
              break;
            }
          }

LABEL_7:

          if (v4 == v3)
          {
            goto LABEL_31;
          }
        }

        v19 = ~v17;
        while (1)
        {
          v20 = (v8[6] + 16 * v18);
          v21 = *v20 == v12 && v20[1] == v14;
          if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) == 0)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_6;
      }
    }

LABEL_31:

    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1000FFD28(uint64_t a1)
{
  v53 = type metadata accessor for URLQueryItem();
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v53);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v45 - v7;
  v8 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for URLComponents();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v20 = type metadata accessor for URL();
  v51 = *(v20 - 8);
  v52 = v20;
  v21 = *(v51 + 64);
  __chkstk_darwin(v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v24 = Transforming.transform.getter();
  (*(v16 + 8))(v19, v15);
  v24(a1);

  URL.scheme.getter();
  if (!v25)
  {
LABEL_27:
    v39 = 0xD00000000000001BLL;
    goto LABEL_28;
  }

  v26 = String.lowercased()();

  if (v26._countAndFlagsBits == 0xD000000000000013 && 0x80000001001265E0 == v26._object)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v29 = v49;
  v28 = v50;
  if ((*(v49 + 48))(v11, 1, v50) == 1)
  {
    sub_1000068B0(v11, &qword_1001614F0, &unk_1001189B0);
    goto LABEL_27;
  }

  v30 = v48;
  (*(v29 + 32))(v48, v11, v28);
  result = URLComponents.percentEncodedQueryItems.getter();
  if (!result)
  {
    (*(v29 + 8))(v30, v28);
    goto LABEL_27;
  }

  v32 = result;
  v33 = *(result + 16);
  if (!v33)
  {
LABEL_25:
    (*(v49 + 8))(v48, v50);
    goto LABEL_26;
  }

  v34 = 0;
  v47 = v2 + 16;
  while (1)
  {
    if (v34 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    (*(v2 + 16))(v6, v32 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v34, v53);
    if (URLQueryItem.name.getter() == 0xD000000000000021 && 0x8000000100126870 == v35)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_19;
    }

    ++v34;
    result = (*(v2 + 8))(v6, v53);
    if (v33 == v34)
    {
      goto LABEL_25;
    }
  }

LABEL_19:
  v37 = v46;
  v38 = v53;
  (*(v2 + 32))(v46, v6, v53);
  v39 = URLQueryItem.value.getter();
  v41 = v40;
  (*(v2 + 8))(v37, v38);
  if (!v41)
  {
    goto LABEL_25;
  }

  result = SBSCopyDisplayIdentifiers();
  if (!result)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v42 = result;

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v54 = 0;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v54)
    {
      v43 = v54;
    }

    else
    {
      v43 = &_swiftEmptySetSingleton;
    }
  }

  else
  {

    v43 = &_swiftEmptySetSingleton;
  }

  v44 = sub_100061D08(v39, v41, v43);

  (*(v49 + 8))(v48, v50);
  if ((v44 & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_28:
  (*(v51 + 8))(v23, v52);
  return v39;
}

void sub_100100388()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000025, 0x8000000100126820, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10010050C(uint64_t a1)
{
  v54 = type metadata accessor for URLQueryItem();
  v58 = *(v54 - 8);
  v2 = *(v58 + 64);
  v3 = __chkstk_darwin(v54);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v52 = &v50 - v6;
  __chkstk_darwin(v5);
  v53 = &v50 - v7;
  v8 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for URLComponents();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v55 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v25 = Transforming.transform.getter();
  (*(v16 + 8))(v19, v15);
  v25(a1);

  URL.scheme.getter();
  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = v20;
  v28 = String.lowercased()();

  if (v28._countAndFlagsBits == 0xD000000000000013 && 0x80000001001265E0 == v28._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v29 = URL.pathComponents.getter();
    if (v29[2] <= 1uLL)
    {

LABEL_7:
      (*(v21 + 8))(v24, v27);
LABEL_29:
      v32 = 0;
      return v32 & 1;
    }

    v31 = v29[6];
    v30 = v29[7];

    if (v31 == 0x4F4343415F444441 && v30 == 0xEB00000000544E55)
    {

      v32 = 1;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_17;
  }

  if ((v28._countAndFlagsBits != 0x7366657270 || v28._object != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

LABEL_28:
    (*(v21 + 8))(v24, v20);
    goto LABEL_29;
  }

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v34 = v56;
  v33 = v57;
  if ((*(v56 + 48))(v11, 1, v57) == 1)
  {

    (*(v21 + 8))(v24, v20);
    sub_1000068B0(v11, &qword_1001614F0, &unk_1001189B0);
    goto LABEL_29;
  }

  v35 = v55;
  (*(v34 + 32))(v55, v11, v33);
  result = URLComponents.percentEncodedQueryItems.getter();
  if (!result)
  {

    (*(v34 + 8))(v35, v33);
    goto LABEL_7;
  }

  v37 = result;
  v38 = *(result + 16);
  v39 = v54;
  if (!v38)
  {
LABEL_26:

    (*(v56 + 8))(v55, v57);
    goto LABEL_7;
  }

  v40 = 0;
  v50 = v58 + 16;
  v51 = (v58 + 8);
  while (1)
  {
    if (v40 >= *(v37 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v58 + 16))(v59, v37 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v40, v39);
    if (URLQueryItem.name.getter() == 1752457584 && v41 == 0xE400000000000000)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_33;
    }

    ++v40;
    result = (*v51)(v59, v39);
    if (v38 == v40)
    {
      goto LABEL_26;
    }
  }

LABEL_33:

  v43 = *(v58 + 32);
  v44 = v52;
  v43(v52, v59, v39);
  v45 = v53;
  v43(v53, v44, v39);
  v46 = URLQueryItem.value.getter();
  v49 = v56;
  v48 = v57;
  if (v47)
  {
    if (v46 == 0x4F4343415F444441 && v47 == 0xEB00000000544E55)
    {

      v32 = 1;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v32 = 0;
  }

  (*v51)(v45, v39);
  (*(v49 + 8))(v55, v48);
LABEL_17:
  (*(v21 + 8))(v24, v27);
  return v32 & 1;
}

uint64_t sub_100100CBC(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationHost();
  v131 = *(v2 - 8);
  v3 = *(v131 + 64);
  __chkstk_darwin(v2);
  v119 = &object - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  v128 = *(v5 - 8);
  v129 = v5;
  v6 = *(v128 + 64);
  __chkstk_darwin(v5);
  v120 = &object - v7;
  v123 = sub_10004DED0(&qword_100161500, &qword_1001189F8);
  v8 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v124 = &object - v9;
  v127 = sub_10004DED0(&qword_100161508, &qword_100118A00);
  v10 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v136 = (&object - v11);
  v12 = sub_10004DED0(&qword_100161510, &qword_100118A08);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v125 = &object - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v137 = &object - v17;
  __chkstk_darwin(v16);
  v130 = (&object - v18);
  v142 = type metadata accessor for URLQueryItem();
  v132 = *(v142 - 8);
  v19 = *(v132 + 64);
  v20 = __chkstk_darwin(v142);
  v141 = &object - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v121 = &object - v23;
  v24 = __chkstk_darwin(v22);
  v122 = &object - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &object - v27;
  v29 = __chkstk_darwin(v26);
  v126 = &object - v30;
  __chkstk_darwin(v29);
  v32 = &object - v31;
  v33 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &object - v35;
  v37 = type metadata accessor for URLComponents();
  v138 = *(v37 - 8);
  v139 = v37;
  v38 = *(v138 + 64);
  __chkstk_darwin(v37);
  v133 = &object - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &object - v43;
  v45 = type metadata accessor for URL();
  v134 = *(v45 - 8);
  v135 = v45;
  v46 = *(v134 + 64);
  __chkstk_darwin(v45);
  v140 = &object - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (!v48)
  {
    goto LABEL_45;
  }

  v117 = v32;
  v118 = v2;
  v49 = String.lowercased()();

  if (v49._countAndFlagsBits == 0x7366657270 && v49._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Transforming<>.normalizedPrefsAndAppPrefs.getter();
    v50 = Transforming.transform.getter();
    (*(v41 + 8))(v44, v40);
    v51 = v140;
    v50(a1);

    URL.absoluteString.getter();
    URLComponents.init(string:)();

    v53 = v138;
    v52 = v139;
    if ((*(v138 + 48))(v36, 1, v139) == 1)
    {

      (*(v134 + 8))(v51, v135);
      sub_1000068B0(v36, &qword_1001614F0, &unk_1001189B0);
    }

    else
    {
      v54 = v133;
      (*(v53 + 32))(v133, v36, v52);
      result = URLComponents.percentEncodedQueryItems.getter();
      if (result)
      {
        v56 = result;
        object = v49._object;
        v57 = *(result + 16);
        v58 = v142;
        v59 = v132;
        if (v57)
        {
          v60 = 0;
          v136 = (v132 + 8);
          v137 = v132 + 16;
          while (1)
          {
            if (v60 >= *(v56 + 16))
            {
              __break(1u);
LABEL_70:
              __break(1u);
              return result;
            }

            v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
            v62 = *(v59 + 72);
            v63 = *(v59 + 16);
            v63(v28, v56 + v61 + v62 * v60, v58);
            if (URLQueryItem.name.getter() == 1953460082 && v64 == 0xE400000000000000)
            {
              break;
            }

            v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v65)
            {
              goto LABEL_31;
            }

            ++v60;
            v58 = v142;
            result = (*v136)(v28, v142);
            if (v57 == v60)
            {
              goto LABEL_15;
            }
          }

LABEL_31:
          v79 = *(v59 + 32);
          v80 = v126;
          v81 = v28;
          v82 = v142;
          v79(v126, v81, v142);
          v83 = v117;
          v130 = v79;
          v79(v117, v80, v82);
          result = URLQueryItem.value.getter();
          v131 = v84;
          v132 = result;
          if (v84)
          {
            v85 = 0;
            v86 = v82;
            v87 = v56 + v61;
            while (1)
            {
              if (v85 >= *(v56 + 16))
              {
                goto LABEL_70;
              }

              v63(v141, v87, v86);
              if (URLQueryItem.name.getter() == 1752457584 && v88 == 0xE400000000000000)
              {
                break;
              }

              v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v89)
              {
                goto LABEL_51;
              }

              ++v85;
              v90 = *v136;
              v86 = v142;
              result = (*v136)(v141, v142);
              v87 += v62;
              if (v57 == v85)
              {

                v91 = 1;
                v92 = v138;
                v94 = v134;
                v93 = v135;
                goto LABEL_56;
              }
            }

LABEL_51:

            v102 = v121;
            v103 = v142;
            v104 = v130;
            v130(v121, v141, v142);
            v105 = v122;
            v104(v122, v102, v103);
            v106 = URLQueryItem.value.getter();
            v92 = v138;
            v94 = v134;
            v93 = v135;
            if (v107)
            {
              v108 = v133;
              v109 = v131;
              if (v106 == 0xD000000000000016 && v107 == 0x80000001001268E0)
              {

                v90 = *v136;
                (*v136)(v105, v142);
                v91 = 0;
              }

              else
              {
                v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v90 = *v136;
                (*v136)(v105, v142);
                v91 = v110 ^ 1;
              }
            }

            else
            {
              v90 = *v136;
              (*v136)(v105, v103);
              v91 = 1;
LABEL_56:
              v108 = v133;
              v109 = v131;
            }

            v111 = v132;
            if (v132 == 0xD000000000000016 && v109 == 0x80000001001268A0 || (v112 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
              v112 = v91;
            }

            if (v111 == 0xD000000000000010 && v109 == 0x80000001001268C0)
            {

              v77 = 1;
            }

            else
            {
              v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v77 = v113 | v112;
            }

            v90(v117, v142);
            (*(v92 + 8))(v108, v139);
            (*(v94 + 8))(v140, v93);
            return v77 & 1;
          }

          (*v136)(v83, v82);
        }

        else
        {
LABEL_15:
        }

        (*(v138 + 8))(v133, v139);
      }

      else
      {

        (*(v53 + 8))(v54, v52);
      }

      (*(v134 + 8))(v140, v135);
    }

    goto LABEL_45;
  }

  if ((v49._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v49._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_45;
  }

  v66 = URL.host(percentEncoded:)(1);
  object = v49._object;
  if (v66.value._object)
  {
    v143 = v66;
    sub_1000F8A18(&qword_100161520);
    v67 = v130;
    v68 = v118;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v69 = v128;
    v70 = v129;
    v71 = *(v128 + 56);
    v71(v67, 0, 1, v129);
    v72 = v136;
  }

  else
  {
    v69 = v128;
    v70 = v129;
    v71 = *(v128 + 56);
    v67 = v130;
    v71(v130, 1, 1, v129);
    v72 = v136;
    v68 = v118;
  }

  v73 = v131;
  v74 = v137;
  static SettingsNavigationHost.internetAccounts.getter();
  (*(v73 + 56))(v74, 0, 1, v68);
  v71(v74, 0, 1, v70);
  v75 = *(v127 + 48);
  sub_100059CA0(v67, v72, &qword_100161510, &qword_100118A08);
  sub_100059CA0(v74, v72 + v75, &qword_100161510, &qword_100118A08);
  v76 = *(v69 + 48);
  if (v76(v72, 1, v70) != 1)
  {
    v78 = v125;
    sub_100059CA0(v72, v125, &qword_100161510, &qword_100118A08);
    if (v76(v72 + v75, 1, v70) == 1)
    {

      sub_1000068B0(v74, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v67, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v78, &qword_1001614F8, &qword_1001189F0);
      goto LABEL_28;
    }

    v95 = *(v123 + 48);
    v96 = v78;
    v97 = v124;
    sub_1000A4CB8(v96, v124, &qword_1001614F8, &qword_1001189F0);
    sub_1000A4CB8(v72 + v75, v97 + v95, &qword_1001614F8, &qword_1001189F0);
    v98 = *(v73 + 48);
    v99 = v118;
    if (v98(v97, 1, v118) == 1)
    {

      sub_1000068B0(v137, &qword_100161510, &qword_100118A08);
      v100 = v124;
      sub_1000068B0(v67, &qword_100161510, &qword_100118A08);
      if (v98(v100 + v95, 1, v99) == 1)
      {
        sub_1000068B0(v100, &qword_1001614F8, &qword_1001189F0);
        v77 = 1;
LABEL_68:
        sub_1000068B0(v72, &qword_100161510, &qword_100118A08);
        return v77 & 1;
      }
    }

    else
    {
      v101 = v120;
      sub_100059CA0(v97, v120, &qword_1001614F8, &qword_1001189F0);
      if (v98(v97 + v95, 1, v99) != 1)
      {
        v114 = v119;
        (*(v73 + 32))(v119, v97 + v95, v99);
        sub_1000F8A18(&qword_100161518);
        v77 = dispatch thunk of static Equatable.== infix(_:_:)();

        v115 = *(v73 + 8);
        v115(v114, v99);
        sub_1000068B0(v137, &qword_100161510, &qword_100118A08);
        sub_1000068B0(v67, &qword_100161510, &qword_100118A08);
        v115(v101, v99);
        sub_1000068B0(v97, &qword_1001614F8, &qword_1001189F0);
        goto LABEL_68;
      }

      sub_1000068B0(v137, &qword_100161510, &qword_100118A08);
      v100 = v124;
      sub_1000068B0(v67, &qword_100161510, &qword_100118A08);
      (*(v73 + 8))(v101, v99);
    }

    sub_1000068B0(v100, &qword_100161500, &qword_1001189F8);
    v77 = 0;
    goto LABEL_68;
  }

  sub_1000068B0(v74, &qword_100161510, &qword_100118A08);
  sub_1000068B0(v67, &qword_100161510, &qword_100118A08);
  if (v76(v72 + v75, 1, v70) != 1)
  {
LABEL_28:
    sub_1000068B0(v72, &qword_100161508, &qword_100118A00);
LABEL_45:
    v77 = 0;
    return v77 & 1;
  }

  sub_1000068B0(v72, &qword_100161510, &qword_100118A08);
  v77 = 1;
  return v77 & 1;
}

void sub_100101E70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100025CF0(0xD000000000000012, 0x8000000100126900, &v22);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v22);
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = URL.scheme.getter();
  if (v9)
  {
    v10 = String.lowercased()();
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
  }

  else
  {
    countAndFlagsBits = v8;
    object = 0;
  }

  if (qword_10015AA30 != -1)
  {
    swift_once();
  }

  v13 = [qword_1001695A8 bundleIdentifier];
  if (!v13)
  {
    if (!object)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v14 = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = String.lowercased()();

  if (!object)
  {
    if (!v15._object)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!v15._object)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (countAndFlagsBits != v15._countAndFlagsBits || object != v15._object)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_22;
    }

LABEL_20:
    v16 = 1;
    goto LABEL_23;
  }

LABEL_22:
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 16);
  v19(a2, a1, v18);
  v20 = type metadata accessor for SettingsURLDestination(0);
  v19(a2 + *(v20 + 20), a1, v18);
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  v16 = 0;
  *(a2 + *(v20 + 24)) = _swiftEmptyArrayStorage;
LABEL_23:
  v21 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v21 - 8) + 56))(a2, v16, 1, v21);

  sub_100102220();
}

void sub_100102220()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000012, 0x8000000100126900, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1001023A4()
{
  v0 = URL.scheme.getter();
  if (v1)
  {
    v2 = String.lowercased()();
    countAndFlagsBits = v2._countAndFlagsBits;
    object = v2._object;
  }

  else
  {
    countAndFlagsBits = v0;
    object = 0;
  }

  if (qword_10015AA30 != -1)
  {
    swift_once();
  }

  v5 = [qword_1001695A8 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String.lowercased()();

    if (object)
    {
      if (v7._object)
      {
        if (countAndFlagsBits == v7._countAndFlagsBits && object == v7._object)
        {

          v8 = 1;
        }

        else
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v7._object)
    {
      v8 = 0;
      goto LABEL_18;
    }
  }

  else if (object)
  {
LABEL_13:
    v8 = 0;
LABEL_18:

    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_10010250C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[4] = URL.absoluteString.getter();
  v17[5] = v11;
  v17[2] = 0xD00000000000002FLL;
  v17[3] = 0x8000000100120580;
  v17[0] = 0xD000000000000047;
  v17[1] = 0x8000000100126920;
  sub_10002EAE0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = URL.scheme.getter();
    if (v13)
    {
      if (v12 == 0xD000000000000013 && v13 == 0x80000001001265E0)
      {

LABEL_8:
        sub_100103A28(v10);
        return (*(v7 + 8))(v10, v6);
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_8;
      }
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_10;
  }

  sub_1000541DC(v5);
LABEL_10:
  v16 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

BOOL sub_10010280C()
{
  URL.absoluteString.getter();
  v0._object = 0x8000000100120580;
  v0._countAndFlagsBits = 0xD00000000000002FLL;
  v1 = String.hasPrefix(_:)(v0);

  if (!v1)
  {
    return 0;
  }

  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10000411C;
  v6[3] = &unk_100152508;
  v2 = _Block_copy(v6);
  v3 = [objc_opt_self() contextWithBundleId:0 onChange:v2];
  _Block_release(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 topLevelSettingsEntryType];

  return v4 == 1;
}

uint64_t sub_10010293C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsNavigationHost();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v62 - v10;
  (*(v5 + 16))(&v62 - v10, v2, v4);
  static SettingsNavigationHost.defaultAppState.getter();
  sub_1001039C0();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if (v12)
  {
    result = (v13)(v11, v4);
    v15 = 0;
    v16 = -1;
    goto LABEL_68;
  }

  static SettingsNavigationHost.airplaneMode.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v17)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 2;
    goto LABEL_68;
  }

  static SettingsNavigationHost.primaryAppleAccount.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v18)
  {
    result = (v13)(v11, v4);
    v15 = 0;
    v16 = 6;
    goto LABEL_68;
  }

  static SettingsNavigationHost.family.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v19)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 1;
    goto LABEL_68;
  }

  static SettingsNavigationHost.wifi.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v20)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 3;
    goto LABEL_68;
  }

  static SettingsNavigationHost.ethernet.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v21)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 4;
    goto LABEL_68;
  }

  static SettingsNavigationHost.bluetooth.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v22)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 5;
    goto LABEL_68;
  }

  static SettingsNavigationHost.cellular.getter();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v23)
  {
    result = (v13)(v11, v4);
    v15 = 6;
    v16 = 6;
    goto LABEL_68;
  }

  static SettingsNavigationHost.personalHotspot.getter();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v24)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 7;
    goto LABEL_68;
  }

  static SettingsNavigationHost.vpn.getter();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v25)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 8;
    goto LABEL_68;
  }

  static SettingsNavigationHost.battery.getter();
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v26)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 30;
    goto LABEL_68;
  }

  static SettingsNavigationHost.classroom.getter();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v27)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 9;
    goto LABEL_68;
  }

  static SettingsNavigationHost.classKit.getter();
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v28)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 34;
    goto LABEL_68;
  }

  static SettingsNavigationHost.general.getter();
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v29)
  {
LABEL_28:
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 15;
    goto LABEL_68;
  }

  static SettingsNavigationHost.accessibility.getter();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v30)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 21;
    goto LABEL_68;
  }

  static SettingsNavigationHost.actionButton.getter();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v31)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 17;
    goto LABEL_68;
  }

  static SettingsNavigationHost.pencil.getter();
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v32)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 26;
    goto LABEL_68;
  }

  static SettingsNavigationHost.camera.getter();
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v33)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 35;
    goto LABEL_68;
  }

  static SettingsNavigationHost.controlCenter.getter();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v34)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 16;
    goto LABEL_68;
  }

  static SettingsNavigationHost.display.getter();
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v35)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 18;
    goto LABEL_68;
  }

  static SettingsNavigationHost.homeScreenAndAppLibrary.getter();
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v36)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 19;
    goto LABEL_68;
  }

  static SettingsNavigationHost.multitaskingAndGestures.getter();
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v37)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 20;
    goto LABEL_68;
  }

  static SettingsNavigationHost.standBy.getter();
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v38)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 23;
    goto LABEL_68;
  }

  static SettingsNavigationHost.wallpaper.getter();
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v39)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 22;
    goto LABEL_68;
  }

  static SettingsNavigationHost.notifications.getter();
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v40)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 11;
    goto LABEL_68;
  }

  static SettingsNavigationHost.sounds.getter();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v41)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 12;
    goto LABEL_68;
  }

  static SettingsNavigationHost.focus.getter();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v42)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 13;
    goto LABEL_68;
  }

  static SettingsNavigationHost.screenTime.getter();
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v43)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 14;
    goto LABEL_68;
  }

  static SettingsNavigationHost.passcode.getter();
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v44)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 27;
    goto LABEL_68;
  }

  static SettingsNavigationHost.sos.getter();
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v45)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 28;
    goto LABEL_68;
  }

  static SettingsNavigationHost.exposureNotifications.getter();
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v46)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 29;
    goto LABEL_68;
  }

  static SettingsNavigationHost.privacyAndSecurity.getter();
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v47)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 31;
    goto LABEL_68;
  }

  static SettingsNavigationHost.appStore.getter();
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v48)
  {
    goto LABEL_67;
  }

  static SettingsNavigationHost.appInstallation.getter();
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v49)
  {
    goto LABEL_67;
  }

  static SettingsNavigationHost.gameCenter.getter();
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v50)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 36;
    goto LABEL_68;
  }

  static SettingsNavigationHost.iCloud.getter();
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v51)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 37;
    goto LABEL_68;
  }

  static SettingsNavigationHost.siri.getter();
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v52)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 24;
    goto LABEL_68;
  }

  static SettingsNavigationHost.search.getter();
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v53)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 25;
    goto LABEL_68;
  }

  static SettingsNavigationHost.tvProvider.getter();
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v54)
  {
    goto LABEL_28;
  }

  static SettingsNavigationHost.wallet.getter();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v55)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 32;
    goto LABEL_68;
  }

  static SettingsNavigationHost.contactless.getter();
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v56)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 33;
    goto LABEL_68;
  }

  static SettingsNavigationHost.apps.getter();
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v57)
  {
LABEL_67:
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 45;
    goto LABEL_68;
  }

  static SettingsNavigationHost.developer.getter();
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v9, v4);
  if (v58)
  {
    result = (v13)(v11, v4);
    v16 = 6;
    v15 = 38;
  }

  else
  {
    static SettingsNavigationHost.carrier.getter();
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v9, v4);
    if (v59)
    {
      result = (v13)(v11, v4);
      v16 = 6;
      v15 = 39;
    }

    else
    {
      static SettingsNavigationHost.internalClassic.getter();
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v9, v4);
      if (v60)
      {
        result = (v13)(v11, v4);
        v16 = 6;
        v15 = 40;
      }

      else
      {
        static SettingsNavigationHost.internetAccounts.getter();
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v9, v4);
        result = (v13)(v11, v4);
        if (v61)
        {
          v15 = 45;
        }

        else
        {
          v15 = 0;
        }

        if (v61)
        {
          v16 = 6;
        }

        else
        {
          v16 = -1;
        }
      }
    }
  }

LABEL_68:
  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v16;
  return result;
}

unint64_t sub_1001039C0()
{
  result = qword_100161518;
  if (!qword_100161518)
  {
    type metadata accessor for SettingsNavigationHost();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161518);
  }

  return result;
}

unint64_t sub_100104C3C()
{
  result = qword_100161520;
  if (!qword_100161520)
  {
    type metadata accessor for SettingsNavigationHost();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161520);
  }

  return result;
}

uint64_t sub_100104C94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_100104D44()
{
  v0 = URL.scheme.getter();
  if (v1)
  {
    if (v0 == 0xD000000000000013 && v1 == 0x80000001001265E0)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *sub_100104DCC()
{
  v1 = [v0 dmc_visibleSecondaryRemoteManagementAccounts];
  sub_100018308();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
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
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      if (v8)
      {
        v9 = v8;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100104FAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10010501C()
{
  v0 = static Array._allocateUninitialized(_:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v2 = static Array._allocateUninitialized(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1001077D4(v2, AssociatedTypeWitness, &type metadata for Int, AssociatedConformanceWitness);

  return v0;
}

uint64_t sub_100105114(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v15 = v36[8];
  v16 = __chkstk_darwin(AssociatedTypeWitness);
  v34 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v33 - v19;
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  v37 = v4;
  v38 = a2;
  v23 = *v4;
  Array.subscript.getter();
  dispatch thunk of Identifiable.id.getter();
  (*(v8 + 8))(v11, v7);
  v35 = a1;
  dispatch thunk of Identifiable.id.getter();
  v24 = *(swift_getAssociatedConformanceWitness() + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v33 = v36[2];
    v25 = v34;
    v33(v34, v22, AssociatedTypeWitness);
    v39 = 0;
    v40 = 1;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v33(v25, v20, AssociatedTypeWitness);
    v39 = v38;
    v40 = 0;
    Dictionary.subscript.setter();
  }

  type metadata accessor for Array();
  v26 = v37;
  Array._makeMutableAndUnique()();
  v27 = *v26;
  v28 = v38;
  sub_100107780(v38, v27);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v30 = v36[1];
  v30(v20, AssociatedTypeWitness);
  v30(v22, AssociatedTypeWitness);
  v31 = v27 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v31 = v27;
  }

  return (*(v8 + 40))(v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v35, v7);
}

uint64_t sub_100105494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a3;
  v60 = *(a5 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(a1);
  v61 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v73 = (v54 - v17);
  v18 = sub_100052374(&qword_1001615E8, &qword_100119008);
  v19 = sub_100107D08(&qword_1001615F0, &qword_1001615E8, &qword_100119008);
  v63 = a6;
  v20 = *(a6 + 8);
  v75 = v18;
  v76 = a5;
  v77 = v19;
  v78 = v20;
  v55 = type metadata accessor for Zip2Sequence();
  v21 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v54[2] = v54 - v22;
  v58 = v18;
  v75 = v18;
  v76 = a5;
  v65 = a5;
  v57 = v19;
  v77 = v19;
  v78 = v20;
  v56 = v20;
  v70 = type metadata accessor for Zip2Sequence.Iterator();
  v59 = *(v70 - 8);
  v23 = *(v59 + 64);
  __chkstk_darwin(v70);
  v69 = v54 - v24;
  v25 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(*(AssociatedTypeWitness - 8) + 64);
  v28 = __chkstk_darwin(AssociatedTypeWitness);
  v71 = *(v14 - 8);
  v29 = *(v71 + 64);
  __chkstk_darwin(v28);
  v31 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  if (a1 != a2)
  {
    result = v66;
    if (a2 < v66)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v66 >= a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v67 = *v72;
    v33 = (v71 + 8);
    do
    {
      v34 = a2;
      v35 = result + 1;
      Array.subscript.getter();
      dispatch thunk of Identifiable.id.getter();
      (*v33)(v31, v14);
      v75 = 0;
      LOBYTE(v76) = 1;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      result = v35;
      v36 = v34 == v35;
      a2 = v34;
    }

    while (!v36);
  }

  v37 = dispatch thunk of Collection.count.getter();
  v38 = v66;
  v75 = v66;
  v76 = a2;
  v39 = sub_10004DED0(&qword_1001615C8, &qword_100118CC8);
  sub_100107D08(&qword_1001615C0, &qword_1001615C8, &qword_100118CC8);
  result = Collection.count.getter();
  v67 = (v37 - result);
  if (__OFSUB__(v37, result))
  {
    goto LABEL_19;
  }

  v75 = v38;
  v76 = a2;
  v62 = a2;
  v40 = sub_100107000();
  v54[1] = v39;
  Range<>.endIndex.getter();
  v41 = v74;
  v42 = *v72;
  result = Array.endIndex.getter();
  if (result < v41)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = result;
  v54[0] = v40;
  if (v41 != result)
  {
    if (v41 >= result)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v44 = (v71 + 8);
    while (1)
    {
      Array.subscript.getter();
      dispatch thunk of Identifiable.id.getter();
      result = (*v44)(v31, v14);
      v45 = &v67[v41];
      if (__OFADD__(v41, v67))
      {
        break;
      }

      ++v41;
      v75 = v45;
      LOBYTE(v76) = 0;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      if (v43 == v41)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  v75 = v66;
  v76 = v62;
  Range<>.startIndex.getter();
  zip<A, B>(_:_:)();
  Zip2Sequence.makeIterator()();
  v46 = v73;
  Zip2Sequence.Iterator.next()();
  v47 = TupleTypeMetadata2;
  v48 = *(*(TupleTypeMetadata2 - 8) + 48);
  v49 = v48(v46, 1, TupleTypeMetadata2);
  v50 = v71;
  if (v49 != 1)
  {
    v67 = *(v71 + 32);
    v71 += 32;
    v51 = (v50 + 8);
    do
    {
      v52 = *v73;
      (v67)(v31, v73 + *(v47 + 48), v14);
      dispatch thunk of Identifiable.id.getter();
      v75 = v52;
      v53 = v73;
      LOBYTE(v76) = 0;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*v51)(v31, v14);
      Zip2Sequence.Iterator.next()();
      v47 = TupleTypeMetadata2;
    }

    while (v48(v53, 1, TupleTypeMetadata2) != 1);
  }

  (*(v59 + 8))(v69, v70);
  (*(v60 + 16))(v61, v64, v65);
  type metadata accessor for Array();
  return Array.replaceSubrange<A>(_:with:)();
}

void (*sub_100105CCC(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v9 = *(a3 + 16);
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v14 = *a2;
  v8[5] = v13;
  v8[6] = v14;
  v15 = *v3;
  sub_10010510C();
  return sub_100105DF0;
}

void sub_100105DF0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = *v2;
    v9 = v2[1];
    (*(v7 + 16))((*a1)[4], v3, v6);
    sub_100105114(v5, v4, v9);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v10 = *v2;
    sub_100105114((*a1)[5], v4, v2[1]);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_100105EBC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  sub_100107C70(a1, &v8, a3, a4);
  v5 = *(a1 + 16);

  v6 = *(a1 + 24);
}

void (*sub_100105F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_100105FDC(v8, a2, a3, a4);
  return sub_100105F94;
}

void sub_100105F94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_100105FDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x50uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = *(a4 + 8);
  v12 = type metadata accessor for Slice();
  v10[3] = v12;
  v13 = *(v12 - 8);
  v10[4] = v13;
  v14 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v10[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Range();
  v10[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v10[8] = v18;
  if (&_swift_coroFrameAlloc)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v10[9] = v20;
  (*(v19 + 16))();
  sub_1001068E4(a2, a3, a4, v16);
  return sub_100106200;
}

void sub_100106200(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v14 = (*a1)[7];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v12 = *(v4 + 8);
    v12(v3, v8);
    (*(v6 + 8))(v5, v14);
    v12(v7, v8);
  }

  else
  {
    v13 = v2[3];
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v14);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_100106474@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_10010501C();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1001064A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100105494(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

void *sub_100106624@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_10010663C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_100106654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  result = sub_100105104();
  *a2 = result;
  return result;
}

void (*sub_100106688(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v8 = *(a3 + 24);
  v7[4] = sub_10010675C(v7, *a2, *v3, v3[1], *(a3 + 16));
  return sub_100106714;
}

void sub_100106714(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_10010675C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v6 = *(a5 - 8);
  *a1 = a5;
  a1[1] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  Array.subscript.getter();
  return sub_100106830;
}

void sub_100106830(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_10010687C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1001068E4(a1, a2, WitnessTable, a3);
}

uint64_t sub_1001068E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v50 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v8 = *(v46 + 64);
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v44 = *(AssociatedTypeWitness - 8);
  v14 = *(v44 + 64);
  v15 = __chkstk_darwin(v11);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  swift_getAssociatedConformanceWitness();
  v47 = type metadata accessor for Range();
  v45 = *(v47 - 8);
  v20 = *(v45 + 64);
  __chkstk_darwin(v47);
  v22 = &v39 - v21;
  dispatch thunk of Collection.startIndex.getter();
  v51 = v4;
  v48 = v6;
  v49 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v44;
    v25 = *(v44 + 32);
    v25(v13, v19, AssociatedTypeWitness);
    v26 = TupleTypeMetadata2;
    v25(&v13[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
    v27 = v25;
    v28 = v46;
    v29 = v42;
    (*(v46 + 16))(v42, v13, v26);
    v40 = *(v26 + 48);
    v27(v22, v29, AssociatedTypeWitness);
    v41 = v27;
    v30 = *(v24 + 8);
    v30(&v29[v40], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v13, v26);
    v31 = v47;
    v27(&v22[*(v47 + 36)], &v29[*(v26 + 48)], AssociatedTypeWitness);
    v30(v29, AssociatedTypeWitness);
    v32 = v51;
    v33 = v52;
    v34 = v49;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v35 = v45;
    (*(v45 + 8))(v22, v31);
    v36 = type metadata accessor for Slice();
    v37 = v50;
    (*(*(v34 - 8) + 16))(&v50[*(v36 + 40)], v32, v34);
    (*(v35 + 16))(v22, v33, v31);
    v38 = v41;
    v41(v37, v22, AssociatedTypeWitness);
    return v38(&v37[*(v36 + 36)], &v22[*(v31 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100106D74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int);
}

void *sub_100106E6C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_100106E84(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_100106E9C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_100106EAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_100106F08()
{
  swift_getWitnessTable();
  v1 = j___ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF();
  v2 = *v0;

  v3 = v0[1];

  return v1;
}

unint64_t sub_100107000()
{
  result = qword_1001615D0;
  if (!qword_1001615D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001615D0);
  }

  return result;
}

uint64_t sub_1001072A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Array<A>.hash(into:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return Dictionary<>.hash(into:)(a1, a3, AssociatedTypeWitness, &type metadata for Int, AssociatedConformanceWitness, &protocol witness table for Int);
}

Swift::Int sub_100107360(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_1001072A4(v5, a1, a2);
  return Hasher._finalize()();
}

uint64_t sub_1001073D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return static Dictionary<>.== infix(_:_:)(a2, a4, AssociatedTypeWitness, &type metadata for Int, AssociatedConformanceWitness, &protocol witness table for Int);
}

Swift::Int sub_1001074B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  return sub_100107360(*v2, v2[1]);
}

uint64_t sub_1001074C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  return sub_1001072A4(a1, *v3, v3[1]);
}

Swift::Int sub_1001074DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1001072A4(v9, *v3, v3[1]);
  return Hasher._finalize()();
}

uint64_t sub_100107534(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  return sub_1001073D8(*a1, a1[1], *a2, a2[1]);
}

unint64_t sub_10010759C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001075F8(a1, v9, a2, a3);
}

unint64_t sub_1001075F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_100107780(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001077D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10010759C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_100107AC0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100107B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100107C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t sub_100107D08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100052374(a2, a3);
    sub_100107000();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100107D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  v33 = -1;
  v28 = v12;
  v29 = v13;
  v30 = v9;
  v31 = &v33;
  result = NavigationPath.mutateWithCollectionProxy(transform:)();
  if (v33 == -1)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000659C(v15, qword_100169658);
    v16 = *(v4 + 16);
    v16(v11, a1, a2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      v16(v8, v11, a2);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      (*(v4 + 8))(v11, a2);
      v23 = sub_100025CF0(v20, v22, &v32);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not find value %{private,mask.hash}s in navigation path.", v19, 0x16u);
      sub_10000665C(v27);
    }

    else
    {

      (*(v4 + 8))(v11, a2);
    }

    v24 = type metadata accessor for SettingsNavigationProxy.SettingsNavigationProxyError();
    sub_100108788(&qword_1001615F8, &type metadata accessor for SettingsNavigationProxy.SettingsNavigationProxyError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for SettingsNavigationProxy.SettingsNavigationProxyError.valueNotFound(_:), v24);
    return swift_willThrow();
  }

  return result;
}

Swift::Int sub_1001080EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v45[0] = a3;
  v51 = a2;
  v50 = type metadata accessor for Optional();
  *&v54 = *(v50 - 8);
  v7 = *(v54 + 64);
  v8 = __chkstk_darwin(v50);
  v10 = v45 - v9;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v49 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationPath.CollectionProxy();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004DED0(&qword_10015EEE8, &qword_1001160B8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v45 - v21;
  v23 = sub_10004DED0(&qword_10015EEF0, &qword_1001160C0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v27 = v45 - v26;
  v28 = *(v15 + 16);
  v45[1] = a1;
  v28(v22, a1, v14);
  (*(v15 + 32))(v18, v22, v14);
  sub_100108788(&qword_10015EEF8, &type metadata accessor for NavigationPath.CollectionProxy);
  dispatch thunk of Sequence.makeIterator()();
  v53 = *(v24 + 44);
  *&v27[v53] = 0;
  v29 = *(sub_10004DED0(&qword_10015EF00, &qword_1001160C8) + 36);
  sub_100108788(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy);
  v30 = 0;
  v31 = (v11 + 56);
  v48 = (v54 + 8);
  v47 = (v11 + 32);
  v46 = (v11 + 8);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v27[v29] == *&v55[0])
    {
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
    }

    else
    {
      v35 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v36, v56);
      v35(v55, 0);
      dispatch thunk of Collection.formIndex(after:)();
      *&v55[0] = v30;
      result = sub_100016224(v56, v55 + 8);
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      *&v27[v53] = v30;
      v32 = v55[0];
      v33 = v55[1];
      v34 = v55[2];
    }

    v57[0] = v32;
    v57[1] = v33;
    v57[2] = v34;
    if (!v34)
    {
      break;
    }

    v54 = v32;
    sub_100016224((v57 + 8), v55);
    sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
    v39 = swift_dynamicCast();
    v40 = *v31;
    if (v39)
    {
      v40(v10, 0, 1, a4);
      v41 = v49;
      (*v47)(v49, v10, a4);
      v42 = *(v52 + 8);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v46)(v41, a4);
      if (v43)
      {
        sub_100108720(v27);
        result = v54;
        *v45[0] = v54;
        goto LABEL_12;
      }
    }

    else
    {
      v40(v10, 1, 1, a4);
      (*v48)(v10, v50);
    }
  }

  sub_100108720(v27);
  result = *v45[0];
LABEL_12:
  if (result == -1)
  {
    return result;
  }

  v44 = NavigationPath.CollectionProxy.index(after:)(result);
  result = NavigationPath.CollectionProxy.endIndex.getter();
  if (result >= v44)
  {
    *&v57[0] = v44;
    *(&v57[0] + 1) = result;
    sub_100108788(&qword_100161600, &type metadata accessor for NavigationPath.CollectionProxy);
    sub_10004DED0(&qword_100161608, &qword_100119010);
    sub_1001087D0();
    return dispatch thunk of RangeReplaceableCollection.replaceSubrange<A>(_:with:)();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100108720(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EEF0, &qword_1001160C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100108788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001087D0()
{
  result = qword_100161610;
  if (!qword_100161610)
  {
    sub_100052374(&qword_100161608, &qword_100119010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161610);
  }

  return result;
}

uint64_t sub_100108834()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  v5 = *(sub_10004DED0(&qword_100161618, &unk_100119018) + 48);
  sub_10004DED0(&unk_10015FAA0, qword_100112870);
  AsyncStream.Continuation.yield(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10010893C()
{
  v0 = *(*(sub_10004DED0(&qword_100161618, &unk_100119018) - 8) + 80);

  return sub_100108834();
}

uint64_t sub_1001089B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

unint64_t sub_100108A0C()
{
  result = qword_100161620;
  if (!qword_100161620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161620);
  }

  return result;
}

uint64_t sub_100108A60(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161618, &unk_100119018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100108AC8(int a1, int token)
{
  v2 = notify_cancel(token);
  if (v2)
  {
    v3 = v2;
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000659C(v4, qword_1001695F8);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446466;

      v8 = String.init<A>(reflecting:)();
      v10 = sub_100025CF0(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1026;
      *(v6 + 14) = v3;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to cancel stream for %{public}s, result %{public}u", v6, 0x12u);
      sub_10000665C(v7);
    }

    else
    {
    }
  }
}

void sub_100108C80(int a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_100108AC8(a1, *(v1 + 16));
}

unint64_t sub_100108CB0()
{
  result = qword_100161628;
  if (!qword_100161628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161628);
  }

  return result;
}

void sub_100108D04()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];

    qword_100169898 = v3;
    unk_1001698A0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100108D84()
{
  v0 = type metadata accessor for URL();
  sub_100006538(v0, qword_1001698A8);
  sub_10000659C(v0, qword_1001698A8);
  if (qword_10015AB98 != -1)
  {
    swift_once();
  }

  String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  URL.init(fileURLWithPath:)();
}

uint64_t sub_100108E94()
{
  if (qword_10015AB10 != -1)
  {
    swift_once();
  }

  v1 = qword_100169798;
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:0 forKey:v2];

  v3 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_100108F60()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (qword_10015AB98 != -1)
  {
    swift_once();
  }

  String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    if (qword_10015ABA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for URL();
    sub_10000659C(v5, qword_1001698A8);
    v6 = objc_allocWithZone(NSMutableArray);
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = [v6 initWithContentsOfURL:v8];

    v11 = v10;
    if (!v10)
    {
      sub_100008294(0, &qword_10015EA60, NSMutableArray_ptr);
      v11 = NSArray.init(arrayLiteral:)();
    }

    v12 = *(v1 + 32);
    *(v1 + 32) = v11;
    v13 = v11;

    sub_10004DED0(&qword_100161738, &unk_1001191B0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    sub_100008294(0, &qword_10015EA60, NSMutableArray_ptr);
    v14 = NSArray.init(arrayLiteral:)();

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    v15 = String._bridgeToObjectiveC()();

    [v14 writeToFile:v15 atomically:1];
  }
}

uint64_t sub_1001092E0()
{
  sub_10004DED0(&qword_100161728, &qword_1001191A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001103E0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x656C746974;
  *(v1 + 40) = 0xE500000000000000;
  *(v1 + 64) = (sub_10002A770)();
  *(v1 + 72) = v2;
  *(v1 + 120) = &type metadata for String;
  *(v1 + 88) = &type metadata for String;
  *(v1 + 96) = 1852793705;
  *(v1 + 104) = 0xE400000000000000;
  v3 = sub_100029F88();
  if (v5 != 2 && v5 != 1)
  {
    sub_10002A748(v3, v4, v5);
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  *(v1 + 184) = &type metadata for String;
  *(v1 + 152) = &type metadata for String;
  *(v1 + 160) = 0x6B6E694C70656564;
  *(v1 + 168) = 0xE800000000000000;
  v6 = sub_10005560C();
  *(v1 + 216) = &type metadata for String;
  *(v1 + 192) = v6;
  *(v1 + 200) = v7;
  sub_100008294(0, &qword_100161730, NSMutableDictionary_ptr);
  v8 = NSDictionary.init(dictionaryLiteral:)();
  v9 = sub_10002A770([*(v0 + 32) addObject:v8]);
  v11 = v10;
  swift_beginAccess();
  sub_10001EFFC(&v13, v9, v11);
  swift_endAccess();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t NavigationPath.append<A>(_:)()
{
  return NavigationPath.append<A>(_:)();
}

{
  return NavigationPath.append<A>(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BinaryInteger.formatted()()
{
  v0 = BinaryInteger.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}