int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  (__chkstk_darwin)();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_100001ACC(&qword_1000101A8, &qword_1000071E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v51 = &v46 - v8;
  v9 = type metadata accessor for URL();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  (__chkstk_darwin)();
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (__chkstk_darwin)();
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = type metadata accessor for Defaults();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Defaults.shared.getter();
  v25 = Defaults.supportedPlatform.getter();
  v26 = *(v21 + 8);
  v26(v24, v20);
  if (v25)
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v27 = sub_100002254(v12, logger);
    (*(v13 + 16))(v19, v27, v12);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "appplaceholdersyncd launched", v30, 2u);
    }

    (*(v13 + 8))(v19, v12);
    static Defaults.shared.getter();
    v31 = v46;
    Defaults.containerURL.getter();
    (*(v47 + 8))(v31, v48);
    v26(v24, v20);
    static Defaults.shared.getter();
    v32 = Defaults.isResetting.getter();
    v26(v24, v20);
    type metadata accessor for SyncManager();
    if (v32)
    {
      static SyncManager.reset()();
    }

    else
    {
      static SyncManager.upgrade()();
      type metadata accessor for PublisherStore();
      static PublisherStore.upgrade()();
      static Defaults.shared.getter();
      Defaults.schemaVersion.getter();
      v26(v24, v20);
      v41 = static Defaults.shared.modify();
      Defaults.lastSchemaVersion.setter();
      v41(v52, 0);
    }

    v42 = v51;
    static TaskPriority.high.getter();
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    sub_100001FB4(0, 0, v42, &unk_1000071F8, v44);

    sub_1000024FC(v42);
    dispatch_main();
  }

  if (qword_100010190 != -1)
  {
    swift_once();
  }

  v33 = sub_100002254(v12, logger);
  (*(v13 + 16))(v17, v33, v12);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unsupported platform.", v36, 2u);
  }

  (*(v13 + 8))(v17, v12);
  sub_10000228C();
  v38 = v49;
  v37 = v50;
  (*(v49 + 104))(v6, enum case for DispatchQoS.QoSClass.background(_:), v50);
  v39 = static OS_dispatch_queue.global(qos:)();
  (*(v38 + 8))(v6, v37);
  type metadata accessor for NotificationHandlerManager();
  *(swift_allocObject() + 16) = v39;
  v40 = v39;
  sub_100002C5C();

  dispatch_main();
}

uint64_t sub_100001ACC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001B14()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v0[9] = v1;
  v2 = *(v1 - 8);
  v0[10] = v2;
  v3 = *(v2 + 64) + 15;
  v0[11] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  v6 = *(v5 + 64) + 15;
  v0[14] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v0[15] = v7;
  v8 = *(v7 - 8);
  v0[16] = v8;
  v9 = *(v8 + 64) + 15;
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_100001C88, 0, 0);
}

uint64_t sub_100001C88()
{
  if (qword_1000101A0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v12 = v0[13];
  v13 = v0[12];
  v5 = v0[11];
  v11 = v0[10];
  v6 = v0[9];
  type metadata accessor for SyncManager();
  static SyncManager.shared.getter();
  dispatch thunk of SyncManager.startRecordReceiver()();

  sub_10000228C();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.background(_:), v4);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v4);
  v0[6] = sub_100001EF4;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100001F70;
  v0[5] = &unk_10000C628;
  v8 = _Block_copy(v0 + 2);
  static DispatchQoS.unspecified.getter();
  v0[8] = &_swiftEmptyArrayStorage;
  sub_100002984();
  sub_100001ACC(&qword_1000101C0, &qword_100007290);
  sub_1000029DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v5, v6);
  (*(v12 + 8))(v3, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100001EF4()
{
  type metadata accessor for SyncManager();
  static SyncManager.shared.getter();
  dispatch thunk of SyncManager.syncPublisherWithLaunchServices()();

  static SyncManager.shared.getter();
  dispatch thunk of SyncManager.syncSubscriberWithReplicator()();

  static SyncManager.shared.getter();
  dispatch thunk of SyncManager.syncReplicatorWithSubscriber()();
}

uint64_t sub_100001F70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100001FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001ACC(&qword_1000101A8, &qword_1000071E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100002564(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000024FC(v11);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
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

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100002254(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000228C()
{
  result = qword_1000101B0;
  if (!qword_1000101B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000101B0);
  }

  return result;
}

uint64_t sub_1000022D8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100002324()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000235C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002408;

  return sub_100001B14();
}

uint64_t sub_100002408()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000024FC(uint64_t a1)
{
  v2 = sub_100001ACC(&qword_1000101A8, &qword_1000071E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002564(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001ACC(&qword_1000101A8, &qword_1000071E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000025D4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000026CC;

  return v7(a1);
}

uint64_t sub_1000026CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000027C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000027FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A8C;

  return sub_1000025D4(a1, v5);
}

uint64_t sub_1000028B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002408;

  return sub_1000025D4(a1, v5);
}

uint64_t sub_10000296C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002984()
{
  result = qword_1000101B8;
  if (!qword_1000101B8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B8);
  }

  return result;
}

unint64_t sub_1000029DC()
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    sub_100002A40(&qword_1000101C0, &qword_100007290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C8);
  }

  return result;
}

uint64_t sub_100002A40(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002AF8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100002BE8(v3, a2);
  sub_100002254(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002B94(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100002254(v3, a2);
}

uint64_t *sub_100002BE8(uint64_t a1, uint64_t *a2)
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

void sub_100002C5C()
{
  v1 = *(v0 + 16);
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100002FA8;
  v9 = &unk_10000C650;
  v2 = _Block_copy(&v6);

  v3 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v3 + 32), v1, v2);

  _Block_release(v2);
  v10 = sub_100003130;
  v11 = v0;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100002FA8;
  v9 = &unk_10000C678;
  v4 = _Block_copy(&v6);

  v5 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v5 + 32), v1, v4);

  _Block_release(v4);
}

uint64_t sub_100002FA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100003008()
{
  type metadata accessor for SyncManager();
  static SyncManager.shared.getter();
  dispatch thunk of SyncManager.syncPublisherWithLaunchServices()();
}

uint64_t sub_100003050()
{
  type metadata accessor for SyncManager();
  static SyncManager.shared.getter();
  dispatch thunk of SyncManager.updatePairedMirroringDevices()();

  static SyncManager.shared.getter();
  dispatch thunk of SyncManager.syncReplicatorWithSubscriber()();
}

uint64_t sub_1000030B4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100003118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100003134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001ACC(&qword_1000102C0, &qword_1000072A8);
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

_BYTE **sub_100003240(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100003250(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000331C(v11, 0, 0, 1, a1, a2);
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
    sub_100005D30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005CE4(v11);
  return v7;
}

unint64_t sub_10000331C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003428(a5, a6);
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

char *sub_100003428(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003474(a1, a2);
  sub_1000035A4(&off_10000C588);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003474(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003690(v5, 0);
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
        v7 = sub_100003690(v10, 0);
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

uint64_t sub_1000035A4(uint64_t result)
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

  result = sub_100003704(result, v12, 1, v3);
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

void *sub_100003690(uint64_t a1, uint64_t a2)
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

  sub_100001ACC(&qword_1000102A8, &qword_100007298);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003704(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001ACC(&qword_1000102A8, &qword_100007298);
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

char *sub_1000037F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String.utf8CString.getter();
  string = xpc_dictionary_get_string(a1, (v6 + 32));

  if (!string || (v8 = String.utf8CString.getter(), v9 = xpc_dictionary_get_dictionary(a1, (v8 + 32)), , !v9))
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002254(v11, logger);
    swift_unknownObjectRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v77 = v15;
      *v14 = 136315138;
      v16 = [a1 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_100003250(v17, v19, &v77);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Notification doesn't match expected format. Notification: %s", v14, 0xCu);
      sub_100005CE4(v15);
    }

    return &_swiftEmptyArrayStorage;
  }

  if (String.init(cString:)() == a2 && v10 == a3)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      if (qword_100010190 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100002254(v47, logger);
      swift_unknownObjectRetain();
      v39 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v39, v48))
      {
        goto LABEL_38;
      }

      v49 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_100003250(1701667150, 0xE400000000000000, &v77);
      *(v49 + 12) = 2080;
      v50 = [a1 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_100003250(v51, v53, &v77);

      *(v49 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v39, v48, "Unexpected value for key '%s' in notification: %s", v49, 0x16u);
      swift_arrayDestroy();
      goto LABEL_37;
    }
  }

  v22 = String.utf8CString.getter();
  v23 = xpc_dictionary_get_array(v9, (v22 + 32));

  if (!v23)
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100002254(v38, logger);
    swift_unknownObjectRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_38;
    }

    v41 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v41 = 136315394;
    *(v41 + 4) = sub_100003250(0x4449656C646E7562, 0xE900000000000073, &v77);
    *(v41 + 12) = 2080;
    v42 = [a1 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_100003250(v43, v45, &v77);

    *(v41 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Nothing set for '%s' in notification: %s", v41, 0x16u);
    swift_arrayDestroy();
LABEL_37:

LABEL_38:

LABEL_44:
    swift_unknownObjectRelease();
    return &_swiftEmptyArrayStorage;
  }

  count = xpc_array_get_count(v23);
  if (count < 1)
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100002254(v55, logger);
    swift_unknownObjectRetain();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v77 = v59;
      *v58 = 136315138;
      v60 = [a1 description];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = sub_100003250(v61, v63, &v77);

      *(v58 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v56, v57, "No bundleIDs set in notification: %s", v58, 0xCu);
      sub_100005CE4(v59);
    }

    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v25 = count;
  xdict = v9;
  v26 = 0;
  v27 = &_swiftEmptyArrayStorage;
  do
  {
    if (xpc_array_get_string(v23, v26))
    {
      v28 = String.init(cString:)();
      v30 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100003134(0, *(v27 + 2) + 1, 1, v27);
      }

      v32 = *(v27 + 2);
      v31 = *(v27 + 3);
      if (v32 >= v31 >> 1)
      {
        v27 = sub_100003134((v31 > 1), v32 + 1, 1, v27);
      }

      *(v27 + 2) = v32 + 1;
      v33 = &v27[16 * v32];
      *(v33 + 4) = v28;
      *(v33 + 5) = v30;
    }

    else
    {
      if (qword_100010190 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100002254(v34, logger);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v35, v36, "Omitting item %ld. Not a string", v37, 0xCu);
      }
    }

    ++v26;
  }

  while (v25 != v26);
  if (*(v27 + 2))
  {
    xpc_dictionary_get_BOOL(xdict, "isPlaceholder");
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100002254(v66, logger);
    swift_unknownObjectRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77 = v70;
      *v69 = 136315138;
      v71 = [a1 description];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = sub_100003250(v72, v74, &v77);

      *(v69 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v67, v68, "No correctly formed bundleIDs set in notification: %s", v69, 0xCu);
      sub_100005CE4(v70);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v27;
}

uint64_t sub_1000041EC(void *a1)
{
  if (*(sub_1000037F8(a1, 0xD00000000000002ELL, 0x8000000100007A80) + 2) && (v1 & 1) == 0)
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002254(v3, logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v6 = 136315394;
      *(v6 + 4) = sub_100003250(0xD00000000000002ELL, 0x8000000100007A80, &v10);
      *(v6 + 12) = 2080;
      v7 = Array.description.getter();
      v9 = sub_100003250(v7, v8, &v10);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "Handling '%s' notification with bundleIDs=%s", v6, 0x16u);
      swift_arrayDestroy();
    }

    os_transaction_create();
    type metadata accessor for SyncManager();
    swift_unknownObjectRetain();
    static SyncManager.shared.getter();
    dispatch thunk of SyncManager.add(bundleIdentifiers:)();
    swift_unknownObjectRelease_n();
  }

  else
  {
  }
}

uint64_t sub_100004434(void *a1)
{
  if (*(sub_1000037F8(a1, 0xD000000000000030, 0x8000000100007AD0) + 2) && (v1 & 1) == 0)
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002254(v3, logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v6 = 136315394;
      *(v6 + 4) = sub_100003250(0xD000000000000030, 0x8000000100007AD0, &v10);
      *(v6 + 12) = 2080;
      v7 = Array.description.getter();
      v9 = sub_100003250(v7, v8, &v10);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "Handling '%s' notification with bundleIDs=%s", v6, 0x16u);
      swift_arrayDestroy();
    }

    os_transaction_create();
    type metadata accessor for SyncManager();
    swift_unknownObjectRetain();
    static SyncManager.shared.getter();
    dispatch thunk of SyncManager.delete(bundleIdentifiers:)();
    swift_unknownObjectRelease_n();
  }

  else
  {
  }
}

void sub_10000467C(void *a1)
{
  v2 = type metadata accessor for Defaults();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  string = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (!string)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v34 = 0xD000000000000028;
    v35 = 0x80000001000079C0;
    v16 = [a1 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    goto LABEL_12;
  }

  static Defaults.shared.getter();
  v8 = Defaults.supportedPlatform.getter();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v9 = String.init(cString:)();
    v11 = v10;
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002254(v12, logger);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100003250(0xD00000000000001CLL, 0x8000000100007890, &v34);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_100003250(v9, v11, &v34);
      _os_log_impl(&_mh_execute_header, v13, v14, "Processing '%s' notification with event key name: '%s'", v15, 0x16u);
      swift_arrayDestroy();
    }

    if (v9 == 0xD000000000000015 && 0x80000001000079F0 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000041EC(a1);
      return;
    }

    if (v9 == 0xD000000000000017 && 0x8000000100007A10 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100004434(a1);
      return;
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v34 = 0xD000000000000049;
    v35 = 0x8000000100007A30;
    v32._countAndFlagsBits = v9;
    v32._object = v11;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 39;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
LABEL_12:
    v21 = v34;
    v22 = v35;
    sub_100005DF8();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = v22;
    *(v23 + 16) = string != 0;
    swift_willThrow();
    return;
  }

  if (qword_100010190 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100002254(v24, logger);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    v29 = String.init(cString:)();
    v31 = sub_100003250(v29, v30, &v34);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "ignored notification: %s", v27, 0xCu);
    sub_100005CE4(v28);
  }
}

void sub_100004BB8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  isa = v6[-1].isa;
  v76 = v6;
  v7 = *(isa + 8);
  __chkstk_darwin(v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  __chkstk_darwin(v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Defaults();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100002254(v30, logger);
    v76 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100003250(0xD00000000000001ALL, 0x80000001000078D0, &aBlock);
      _os_log_impl(&_mh_execute_header, v76, v31, "Unable to get xpc event name for type %s", v32, 0xCu);
      sub_100005CE4(v33);
    }

    else
    {
      v42 = v76;
    }

    return;
  }

  v72 = v3;
  static Defaults.shared.getter();
  v19 = Defaults.supportedPlatform.getter();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    if (qword_100010190 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100002254(v34, logger);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_24;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136315138;
    v39 = String.init(cString:)();
    v41 = sub_100003250(v39, v40, &aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "ignored notification: %s", v37, 0xCu);
    sub_100005CE4(v38);
LABEL_22:

LABEL_23:

LABEL_24:

    return;
  }

  v71 = v2;
  v20 = String.init(cString:)();
  v22 = v21;
  if (qword_100010190 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100002254(v23, logger);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_100003250(0xD00000000000001ALL, 0x80000001000078D0, &aBlock);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_100003250(v20, v22, &aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "Processing %s notification with name: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  if (v20 == 0xD000000000000010 && 0x80000001000078F0 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_100003250(0xD000000000000021, 0x8000000100007990, &aBlock);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_100003250(0xD000000000000010, 0x80000001000078F0, &aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: handle %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for SyncManager();
    static SyncManager.shared.getter();
    dispatch thunk of SyncManager.startRecordReceiver()();
LABEL_13:

    return;
  }

  if (v20 == 0xD000000000000011 && 0x8000000100007910 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v35 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v43))
    {
      goto LABEL_24;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_100003250(0xD000000000000021, 0x8000000100007990, &aBlock);
    v46 = "%s: Not yet implemented!";
    goto LABEL_34;
  }

  if (v20 == 0x2D73656369766564 && v22 == 0xEF6465676E616863 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v35 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v35, v43))
    {
      goto LABEL_24;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_100003250(0xD000000000000021, 0x8000000100007990, &aBlock);
    v46 = "%s: Devices changed, do we care?";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v35, v43, v46, v44, 0xCu);
    sub_100005CE4(v45);

    goto LABEL_23;
  }

  if (v20 == 0xD000000000000013 && 0x8000000100007930 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_100003250(0xD000000000000021, 0x8000000100007990, &aBlock);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_100003250(0xD000000000000013, 0x8000000100007930, &aBlock);
      _os_log_impl(&_mh_execute_header, v47, v48, "%s: handle %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for SyncManager();
    static SyncManager.shared.getter();
    dispatch thunk of SyncManager.syncPublisherWithAppProtection()();
    goto LABEL_13;
  }

  if (v20 == 0xD000000000000013 && 0x8000000100007950 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v50 = sub_100006784();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v53 = 136315650;
      *(v53 + 4) = sub_100003250(0xD000000000000021, 0x8000000100007990, &aBlock);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_100003250(0xD000000000000013, 0x8000000100007950, &aBlock);
      *(v53 + 22) = 1024;
      *(v53 + 24) = v50 & 1;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s: handle %s: eligible=%{BOOL}d", v53, 0x1Cu);
      swift_arrayDestroy();
    }

    v54 = v71;
    if ((v50 & 1) == 0)
    {
      type metadata accessor for SyncManager();
      static SyncManager.reset()();
      return;
    }

    sub_10000228C();
    v55 = v73;
    (*(v73 + 104))(v13, enum case for DispatchQoS.QoSClass.background(_:), v10);
    v56 = static OS_dispatch_queue.global(qos:)();
    (*(v55 + 8))(v13, v10);
    v82 = sub_100003008;
    v83 = 0;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_100001F70;
    v81 = &unk_10000C6C8;
    v57 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    v77 = &_swiftEmptyArrayStorage;
    sub_100002984();
    sub_100001ACC(&qword_1000101C0, &qword_100007290);
    sub_1000029DC();
    v58 = v74;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);

    (*(v72 + 8))(v58, v54);
LABEL_53:
    (*(isa + 1))(v9, v76);
    return;
  }

  if ((v20 != 0xD000000000000017 || 0x8000000100007970 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v35 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v67))
    {

      goto LABEL_24;
    }

    v68 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v68 = 136315394;
    *(v68 + 4) = sub_100003250(0xD00000000000001ALL, 0x80000001000078D0, &aBlock);
    *(v68 + 12) = 2080;
    v69 = sub_100003250(v20, v22, &aBlock);

    *(v68 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v35, v67, "Unknown %s notification: %s", v68, 0x16u);
    swift_arrayDestroy();
    goto LABEL_22;
  }

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v61 = 136315394;
    *(v61 + 4) = sub_100003250(0xD000000000000021, 0x8000000100007990, &aBlock);
    *(v61 + 12) = 2080;
    *(v61 + 14) = sub_100003250(0xD000000000000017, 0x8000000100007970, &aBlock);
    _os_log_impl(&_mh_execute_header, v59, v60, "%s: handle %s: Enabled devices changed", v61, 0x16u);
    swift_arrayDestroy();
  }

  if (sub_100006784())
  {
    sub_10000228C();
    v62 = v73;
    (*(v73 + 104))(v13, enum case for DispatchQoS.QoSClass.background(_:), v10);
    v63 = static OS_dispatch_queue.global(qos:)();
    (*(v62 + 8))(v13, v10);
    v82 = sub_100003050;
    v83 = 0;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_100001F70;
    v81 = &unk_10000C6A0;
    v64 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    v77 = &_swiftEmptyArrayStorage;
    sub_100002984();
    sub_100001ACC(&qword_1000101C0, &qword_100007290);
    sub_1000029DC();
    v65 = v74;
    v66 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v64);

    (*(v72 + 8))(v65, v66);
    goto LABEL_53;
  }
}

uint64_t sub_100005CE4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005D90(uint64_t a1)
{
  v2 = sub_100001ACC(&qword_1000102B0, &qword_1000072A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005DF8()
{
  result = qword_1000102B8;
  if (!qword_1000102B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102B8);
  }

  return result;
}

__n128 sub_100005E58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100005E6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100005EB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100005F30()
{
  type metadata accessor for Daemon();
  v0 = swift_allocObject();
  result = sub_100005F6C();
  qword_1000103C0 = v0;
  return result;
}

uint64_t sub_100005F6C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10000228C();
  static DispatchQoS.background.getter();
  v14[1] = &_swiftEmptyArrayStorage;
  sub_1000061F4();
  sub_100001ACC(&qword_100010378, &qword_1000073B0);
  sub_10000624C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v14[0];
  *(v14[0] + 16) = v9;
  sub_1000062B0();
  v11 = *(v10 + 16);
  type metadata accessor for NotificationHandlerManager();
  *(swift_allocObject() + 16) = v11;
  v12 = v11;
  sub_100002C5C();

  type metadata accessor for SyncManager();
  static SyncManager.shared.getter();

  return v10;
}

unint64_t sub_1000061F4()
{
  result = qword_100010370;
  if (!qword_100010370)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010370);
  }

  return result;
}

unint64_t sub_10000624C()
{
  result = qword_100010380;
  if (!qword_100010380)
  {
    sub_100002A40(&qword_100010378, &qword_1000073B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010380);
  }

  return result;
}

uint64_t sub_1000062B0()
{
  v0 = sub_100001ACC(&qword_100010388, &qword_1000073B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v46 = v41 - v2;
  v3 = type metadata accessor for Defaults();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v47 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v41 - v13;
  static Defaults.shared.getter();
  Defaults.tmpURL.getter();
  (*(v4 + 8))(v7, v3);
  v45 = objc_opt_self();
  v15 = [v45 defaultManager];
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  v48 = 0;
  v17 = [v15 contentsOfDirectoryAtPath:v16 error:&v48];

  v18 = v48;
  if (v17)
  {
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v18;

    v21 = *(v19 + 16);
    if (v21)
    {
      v43 = (v9 + 16);
      v44 = v8;
      v22 = (v9 + 56);
      v23 = (v9 + 8);
      v41[1] = v19;
      v24 = (v19 + 40);
      v41[2] = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v42 = v22;
      do
      {
        v26 = *(v24 - 1);
        v27 = *v24;

        v28 = [v45 defaultManager];
        v29 = v46;
        v30 = v14;
        v31 = v14;
        v32 = v44;
        (*v43)(v46, v31, v44);
        (*v42)(v29, 0, 1, v32);
        v33 = v47;
        URL.init(fileURLWithPath:isDirectory:relativeTo:)();

        sub_10000671C(v29);
        URL._bridgeToObjectiveC()(v34);
        v36 = v35;
        v37 = *v23;
        (*v23)(v33, v32);
        v48 = 0;
        LODWORD(v27) = [v28 removeItemAtURL:v36 error:&v48];

        if (v27)
        {
          v25 = v48;
        }

        else
        {
          v38 = v48;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v24 += 2;
        --v21;
        v14 = v30;
      }

      while (v21);

      v8 = v44;
    }

    else
    {

      v37 = *(v9 + 8);
    }

    return (v37)(v14, v8);
  }

  else
  {
    v39 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_10000671C(uint64_t a1)
{
  v2 = sub_100001ACC(&qword_100010388, &qword_1000073B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000068F0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_100006950(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}