uint64_t sub_100417978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1002A9024(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100417A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_100412CAC(a1, v4, v5, v6);
}

uint64_t sub_100417B28()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_100417B88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  sub_100100D84(v1);
  sub_100100D94(v3);
  return sub_100410504();
}

uint64_t sub_100417BD4()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_100417C28()
{
  *(*(v0 + 16) + 312) = *(v0 + 24);
}

uint64_t sub_100417C84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100417CEC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 224);
  *(v2 + 224) = v1;
  *(v2 + 232) = v3;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_100417D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100417DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100417E1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 3u || a4 == 4)
  {
  }

  if (a4 == 3)
  {
  }

  return result;
}

id sub_100417F34()
{
  result = [objc_allocWithZone(type metadata accessor for ServerEvaluationStatusMapsSync()) init];
  qword_101960288 = result;
  return result;
}

id sub_100418000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerEvaluationStatusMapsSync();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10041805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 161) = a8;
  *(v8 + 160) = a7;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  v9 = swift_task_alloc();
  *(v8 + 112) = v9;
  *v9 = v8;
  v9[1] = sub_1004180F4;

  return sub_10041992C();
}

uint64_t sub_1004180F4(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1004181F4, 0, 0);
}

uint64_t sub_1004181F4()
{
  v1 = v0[15];
  if (v1)
  {
    dispatch thunk of ServerEvaluationStatus.arpStatus.setter();
    dispatch thunk of ServerEvaluationStatus.reliabilityStatus.setter();
    type metadata accessor for MapsSyncStore();
    v0[16] = static MapsSyncStore.sharedStore.getter();
    sub_1000CE6B8(&qword_101908400);
    v2 = swift_allocObject();
    v0[17] = v2;
    *(v2 + 16) = xmmword_1011E47B0;
    *(v2 + 32) = v1;
    v14 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
    v3 = v1;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1004184D4;

    return v14(v2);
  }

  else
  {
    v6 = v0[12];
    if (v6)
    {
      if (qword_101906838 != -1)
      {
        swift_once();
      }

      sub_1000CE6B8(&qword_101922E10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v8;
      *(inited + 48) = 0xD000000000000012;
      *(inited + 56) = 0x80000001012372F0;
      sub_1000D0AA8(inited);
      swift_setDeallocating();
      sub_100024F64(inited + 32, &qword_101906970);
      v9 = objc_allocWithZone(NSError);
      v10 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v12 = [v9 initWithDomain:v10 code:-1 userInfo:isa];

      v6(v12);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1004184D4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10041866C;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_1004185F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004185F4()
{
  v1 = v0[12];
  v2 = v0[15];
  if (v1)
  {
    v1(0);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_10041866C()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[19];
  if (v3)
  {
    v5 = v0[12];
    swift_errorRetain();
    v5(v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10041888C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10041891C;

  return sub_10041992C();
}

uint64_t sub_10041891C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100418A1C, 0, 0);
}

uint64_t sub_100418A1C()
{
  v1 = v0[5];
  v2 = v0[2];
  if (v1)
  {
    if (v2)
    {
      v3 = dispatch thunk of ServerEvaluationStatus.arpStatus.getter();
      v4 = dispatch thunk of ServerEvaluationStatus.reliabilityStatus.getter();
      v2(v3 & 1, v4 & 1);
    }
  }

  else if (v2)
  {
    v2(0, 0);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100418C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 161) = a8;
  *(v8 + 160) = a7;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  v9 = swift_task_alloc();
  *(v8 + 112) = v9;
  *v9 = v8;
  v9[1] = sub_100418CD8;

  return sub_10041992C();
}

uint64_t sub_100418CD8(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100418DD8, 0, 0);
}

uint64_t sub_100418DD8()
{
  v1 = v0[15];
  if (v1)
  {
    dispatch thunk of ServerEvaluationStatus.rapStatus.setter();
    dispatch thunk of ServerEvaluationStatus.reliabilityStatus.setter();
    type metadata accessor for MapsSyncStore();
    v0[16] = static MapsSyncStore.sharedStore.getter();
    sub_1000CE6B8(&qword_101908400);
    v2 = swift_allocObject();
    v0[17] = v2;
    *(v2 + 16) = xmmword_1011E47B0;
    *(v2 + 32) = v1;
    v14 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
    v3 = v1;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1004190B8;

    return v14(v2);
  }

  else
  {
    v6 = v0[12];
    if (v6)
    {
      if (qword_101906838 != -1)
      {
        swift_once();
      }

      sub_1000CE6B8(&qword_101922E10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v8;
      *(inited + 48) = 0xD000000000000012;
      *(inited + 56) = 0x80000001012372F0;
      sub_1000D0AA8(inited);
      swift_setDeallocating();
      sub_100024F64(inited + 32, &qword_101906970);
      v9 = objc_allocWithZone(NSError);
      v10 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v12 = [v9 initWithDomain:v10 code:-1 userInfo:isa];

      v6(v12);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1004190B8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10041A664;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_10041A65C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100419350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1004193E0;

  return sub_10041992C();
}

uint64_t sub_1004193E0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1004194E0, 0, 0);
}

uint64_t sub_1004194E0()
{
  v1 = v0[5];
  v2 = v0[2];
  if (v1)
  {
    if (v2)
    {
      v3 = dispatch thunk of ServerEvaluationStatus.rapStatus.getter();
      v4 = dispatch thunk of ServerEvaluationStatus.reliabilityStatus.getter();
      v2(v3 & 1, v4 & 1);
    }
  }

  else if (v2)
  {
    v2(0, 0);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100419704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_100419350(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004197EC()
{
  type metadata accessor for ServerEvaluationStatusMapsSync();
  sub_1000CE6B8(&unk_101920A00);
  v3 = String.init<A>(describing:)();
  v4 = v0;

  v1._countAndFlagsBits = 0x6D6F44726F727245;
  v1._object = 0xEB000000006E6961;
  String.append(_:)(v1);

  qword_1019209B0 = v3;
  *algn_1019209B8 = v4;
  return result;
}

uint64_t sub_100419884()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019209C0);
  sub_100021540(v0, qword_1019209C0);
  type metadata accessor for ServerEvaluationStatusMapsSync();
  sub_1000CE6B8(&unk_101920A00);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100419948()
{
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  v2 = objc_allocWithZone(NSSortDescriptor);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithKey:v3 ascending:0];

  *(v1 + 32) = v4;
  v5 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v6 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[3] = v6;
  type metadata accessor for ServerEvaluationStatusRequest();
  v0[4] = ServerEvaluationStatusRequest.__allocating_init()();
  v10 = (&async function pointer to dispatch thunk of ServerEvaluationStatusRequest.fetch(options:) + async function pointer to dispatch thunk of ServerEvaluationStatusRequest.fetch(options:));
  v7 = v6;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_100419AC4;

  return v10(v6);
}

uint64_t sub_100419AC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_10041A058;
  }

  else
  {
    v5 = *(v3 + 32);

    v4 = sub_100419BE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100419BE4()
{
  v1 = v0[6];
  v0[2] = v1;
  v2 = v1 >> 62;
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_7:

    v4 = 0;
    goto LABEL_8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v3 = *(v0[6] + 32);

    v4 = v3;
  }

LABEL_8:
  v0[8] = v4;
  if (!v2)
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5 <= 1)
    {
      goto LABEL_24;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();

  if (v6 >= 2)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_15:
        if ((v1 & 0xC000000000000001) == 0)
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (!v2)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

LABEL_29:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (!v2)
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_19:
            sub_10054E920(0, 1);
            type metadata accessor for MapsSyncStore();
            v0[9] = static MapsSyncStore.sharedStore.getter();
            v8 = v0[2];
            if (!(v8 >> 62))
            {

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for MapsSyncObject();
              v9 = v8;
LABEL_21:
              v0[10] = v9;

              v14 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));
              v10 = swift_task_alloc();
              v0[11] = v10;
              *v10 = v0;
              v10[1] = sub_100419ED4;

              return v14(v9);
            }

LABEL_33:
            type metadata accessor for MapsSyncObject();

            v9 = _bridgeCocoaArray<A>(_:)();

            goto LABEL_21;
          }

          goto LABEL_31;
        }

LABEL_18:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_19;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_24:
  v11 = v0[3];

  v12 = v0[8];
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_100419ED4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10041A210;
  }

  else
  {
    v4 = *(v2 + 72);

    v3 = sub_100419FF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100419FF4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10041A058()
{
  v1 = *(v0 + 32);

  if (qword_101906840 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_1019209C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "FetchEvaluationStatus Error:%@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_10041A210()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  if (qword_101906840 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_1019209C0);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "FetchEvaluationStatus Error:%@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_10041A3D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC40;

  return sub_100418C40(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10041A4B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_10041888C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10041A57C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC4C;

  return sub_10041805C(a1, v4, v5, v6, v7, v8, v9, v10);
}

char *sub_10041A66C(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    v36 = v3 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
    v7 = &selRef_menuItemForIndexPath_;
    v33 = i;
    v34 = v3;
    while (v36)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }

LABEL_7:
      v10 = v8;
      v11 = [v10 name];
      v12 = [v11 length];

      if (v12)
      {
        v13 = [v10 name];
      }

      else
      {
        v14 = [v10 system];
        v13 = [v14 name];
      }

      v15 = v13;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v17;
      v40 = v16;

      v18 = [v10 v7[192]];
      v19 = *a2;
      if (*(*a2 + 16) && (v20 = sub_100298E64(v18), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        v23 = v22;
      }

      else
      {
        v22 = 0;
      }

      v24 = *a3;
      v25 = v7;
      [v10 v7[192]];
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1003584C8(0, *(v6 + 2) + 1, 1, v6);
      }

      v30 = *(v6 + 2);
      v29 = *(v6 + 3);
      if (v30 >= v29 >> 1)
      {
        v6 = sub_1003584C8((v29 > 1), v30 + 1, 1, v6);
      }

      *(v6 + 2) = v30 + 1;
      v31 = &v6[48 * v30];
      *(v31 + 4) = v40;
      *(v31 + 5) = v39;
      *(v31 + 6) = v22;
      *(v31 + 7) = v24;
      *(v31 + 8) = v26;
      *(v31 + 9) = v28;
      ++v5;
      v3 = v34;
      v7 = v25;
      if (v9 == v33)
      {
        return v6;
      }
    }

    if (v5 >= *(v35 + 16))
    {
      goto LABEL_23;
    }

    v8 = swift_unknownObjectRetain();
    v9 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_10041A8F4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (v4)
  {
    if (a1)
    {
      sub_10041C434();
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        v8 = *(v2 + 80);
        goto LABEL_8;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100133D98();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v6 = 0;
LABEL_8:
  *(v2 + 80) = a1;
  swift_getKeyPath();
  sub_100133D98();
  v10 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v2 + 80);
  if (v11)
  {
    if (v8)
    {
      sub_10041C434();
      v12 = v11;
      v13 = v8;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {

        return;
      }
    }
  }

  else if (!v8)
  {

    return;
  }

  v15 = swift_getKeyPath();
  __chkstk_darwin(v15);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10041B044();
}

unint64_t sub_10041AB60()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_10041C560(v1);
  return v1;
}

unint64_t sub_10041ABDC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  return sub_10041C560(v4);
}

uint64_t sub_10041AC78()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10041ACEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_10041AD68()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10041ADF4()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10041AE78()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10041AEFC()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  sub_1000CD9D4(v1);
  return v1;
}

void *sub_10041AF80()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_10041AFF8(void *a1)
{
  *(v1 + 80) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  ObservationRegistrar.init()();
  sub_10041A8F4(a1);
  return v1;
}

void sub_10041B044()
{
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10041C498;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032FD30;
    aBlock[3] = &unk_101618308;
    v3 = _Block_copy(aBlock);
    v4 = v1;

    [v4 _maps_loadLineInfoUsingTraits:0 withCompletion:v3];
    _Block_release(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10041B208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_10041B290(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10041A8F4(v1);
}

void sub_10041B2C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
  swift_getKeyPath();
  sub_100133D98();
  v5 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a1 + 80);
  if (v6)
  {
    if (v4)
    {
      sub_10041C434();
      v7 = v6;
      v8 = v4;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10041B044();
  v8 = v4;
LABEL_7:
}

uint64_t sub_10041B438(unint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (!a2 && a1)
    {
      if (a1 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
          goto LABEL_6;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_6:
        v9 = type metadata accessor for TaskPriority();
        (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
        type metadata accessor for MainActor();

        v10 = static MainActor.shared.getter();
        v11 = swift_allocObject();
        v11[2] = v10;
        v11[3] = &protocol witness table for MainActor;
        v11[4] = a1;
        v11[5] = v8;
        sub_10020AAE4(0, 0, v6, &unk_101205E58, v11);
      }
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v8;
    v13[-1] = 2;
    v13[2] = v8;
    sub_100133D98();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10041B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_10041B780, v7, v6);
}

uint64_t sub_10041B780()
{
  v1 = *(isUniquelyReferenced_nonNull_native + 40);
  v2 = sub_1000D1D7C(_swiftEmptyArrayStorage);
  if (v1 >> 62)
  {
    goto LABEL_72;
  }

  v67 = v1 & 0xFFFFFFFFFFFFFF8;
  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_73:
    *(isUniquelyReferenced_nonNull_native + 16) = v2;
    *(isUniquelyReferenced_nonNull_native + 24) = 0;
    goto LABEL_74;
  }

LABEL_3:
  v65 = v3;
  v4 = 0;
  v63 = isUniquelyReferenced_nonNull_native;
  v68 = v1 & 0xC000000000000001;
  v66 = *(isUniquelyReferenced_nonNull_native + 40) + 32;
  v5 = MKTransitArtworkIncidentBadgeTrailingOffset;
  v6 = 0.0;
  v1 = &selRef__itemWithContact_geoMapItem_;
  do
  {
    v7 = v4;
    while (1)
    {
      if (v68)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v7 >= *(v67 + 16))
        {
          goto LABEL_67;
        }

        v8 = *(v66 + 8 * v7);
        swift_unknownObjectRetain();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          v67 = v1 & 0xFFFFFFFFFFFFFF8;
          v3 = _CocoaArrayWrapper.endIndex.getter();
          if (!v3)
          {
            goto LABEL_73;
          }

          goto LABEL_3;
        }
      }

      isUniquelyReferenced_nonNull_native = [v8 artwork];
      v9 = [objc_opt_self() sharedInstance];
      if (!v9)
      {
        goto LABEL_79;
      }

      v12 = v9;
      v13 = objc_opt_self();
      [v12 screenScale];
      v15 = v14;

      v16 = [v13 _mapkit_transitArtworkImageWithDataSource:isUniquelyReferenced_nonNull_native size:7 scale:v15];
      swift_unknownObjectRelease();
      if (v16)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v7;
      if (v4 == v65)
      {
        goto LABEL_28;
      }
    }

    v17 = [v8 muid];
    v18 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_100298E64(v17);
    v19 = v2[2];
    v20 = (v10 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
      goto LABEL_78;
    }

    v23 = v10;
    if (v2[3] < v22)
    {
      sub_100128F80(v22, isUniquelyReferenced_nonNull_native);
      v9 = sub_100298E64(v17);
      if ((v23 & 1) != (v10 & 1))
      {
LABEL_63:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_20:
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_23:
      v2[(v9 >> 6) + 8] |= 1 << v9;
      *(v2[6] + 8 * v9) = v17;
      *(v2[7] + 8 * v9) = v18;
      v26 = v2[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (!v21)
      {
        v2[2] = v27;
        goto LABEL_25;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return _swift_task_switch(v9, v10, v11);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    isUniquelyReferenced_nonNull_native = v9;
    sub_10012DC1C();
    v9 = isUniquelyReferenced_nonNull_native;
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v24 = v2[7];
    v25 = *(v24 + 8 * v9);
    *(v24 + 8 * v9) = v18;

LABEL_25:
    [v18 size];
    v29 = v28;

    swift_unknownObjectRelease();
    if (v6 <= v5 + v29)
    {
      v6 = v5 + v29;
    }
  }

  while (v4 != v65);
LABEL_28:
  isUniquelyReferenced_nonNull_native = v63;
  *(v63 + 16) = v2;
  *(v63 + 24) = v6;
  v30 = v65;
  v31 = 0;
  v32 = MKTransitArtworkIncidentBadgeBottomOffset;
  v33 = &selRef_menuItemForIndexPath_;
  do
  {
    if (v68)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v31 >= *(v67 + 16))
      {
        goto LABEL_69;
      }

      v34 = *(v66 + 8 * v31);
      swift_unknownObjectRetain();
      v1 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_68;
      }
    }

    v35 = [v34 v33[192]];
    if (!v2[2] || (v36 = sub_100298E64(v35), (v37 & 1) == 0))
    {
      swift_unknownObjectRelease();
      goto LABEL_30;
    }

    v38 = *(v2[7] + 8 * v36);
    v39 = [v34 artwork];
    if (v39 && (v40 = [v39 hasRoutingIncidentBadge], swift_unknownObjectRelease(), (v40 & 1) != 0))
    {
      v9 = [objc_opt_self() sharedInstance];
      if (!v9)
      {
        goto LABEL_80;
      }

      v41 = v9;
      [v9 screenScale];

      v42 = MKTransitIncidentIcon();
    }

    else
    {
      v42 = 0;
    }

    v64 = v38;
    v43 = [objc_opt_self() _compositeImageFromImage:v38 paddedToWidth:v42 badge:v6 badgeOffset:{v5, v32}];
    v44 = [v34 v33[192]];
    v45 = v44;
    if (v43)
    {
      v46 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = sub_100298E64(v45);
      v49 = v2[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_70;
      }

      v52 = v47;
      if (v2[3] < v51)
      {
        sub_100128F80(v51, isUniquelyReferenced_nonNull_native);
        v53 = sub_100298E64(v45);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_63;
        }

        v48 = v53;
        if ((v52 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_57:
        v60 = v2[7];
        v61 = *(v60 + 8 * v48);
        *(v60 + 8 * v48) = v46;

        swift_unknownObjectRelease();
LABEL_58:
        isUniquelyReferenced_nonNull_native = v63;
        v30 = v65;
        v33 = &selRef_menuItemForIndexPath_;
        goto LABEL_30;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v47)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_10012DC1C();
        if (v52)
        {
          goto LABEL_57;
        }
      }

LABEL_49:
      v2[(v48 >> 6) + 8] |= 1 << v48;
      *(v2[6] + 8 * v48) = v45;
      *(v2[7] + 8 * v48) = v46;

      swift_unknownObjectRelease();
      v55 = v2[2];
      v21 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v21)
      {
        goto LABEL_71;
      }

      v2[2] = v56;
      goto LABEL_58;
    }

    v57 = sub_100298E64(v44);
    if (v58)
    {
      v59 = v57;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_10012DC1C();
      }

      sub_1003C5308(v59, v2);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

LABEL_30:
    ++v31;
  }

  while (v1 != v30);
  *(isUniquelyReferenced_nonNull_native + 16) = v2;
LABEL_74:
  *(isUniquelyReferenced_nonNull_native + 88) = v2;
  *(isUniquelyReferenced_nonNull_native + 96) = sub_10041A66C(*(isUniquelyReferenced_nonNull_native + 40), (isUniquelyReferenced_nonNull_native + 16), (isUniquelyReferenced_nonNull_native + 24));
  *(isUniquelyReferenced_nonNull_native + 104) = 0;
  swift_weakInit();
  v9 = sub_10041BE9C;
  v10 = 0;
  v11 = 0;

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10041BE9C()
{
  *(v0 + 112) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10041BF28, v2, v1);
}

uint64_t sub_10041BF28()
{
  v1 = v0[13];

  sub_10041C058();
  if (v1)
  {
  }

  else
  {
    swift_weakDestroy();

    v3 = v0[9];
    v4 = v0[10];

    return _swift_task_switch(sub_10041BFEC, v3, v4);
  }
}

uint64_t sub_10041BFEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10041C058()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100133D98();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v2 = swift_getKeyPath();
    __chkstk_darwin(v2);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10041C1F4()
{
  sub_10041C3F0(*(v0 + 16));

  sub_1000588AC(*(v0 + 32));
  sub_1000588AC(*(v0 + 48));
  sub_1000588AC(*(v0 + 64));

  v1 = OBJC_IVAR____TtC4Maps34TransitLineDisambiguationViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransitLineDisambiguationViewModel()
{
  result = qword_101920A40;
  if (!qword_101920A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041C314()
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

uint64_t sub_10041C3C8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10041C3F0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_10041C434()
{
  result = qword_101920B00;
  if (!qword_101920B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101920B00);
  }

  return result;
}

uint64_t sub_10041C4A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_10041B6E4(a1, v4, v5, v7, v6);
}

unint64_t sub_10041C560(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_10041C570()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_10041C560(v1);
  return sub_10041C3F0(v3);
}

uint64_t sub_10041C5AC()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_10041C5E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v668[0] = v2;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v2 + 24);
  if (!v7)
  {
    return result;
  }

  v666 = v7 & 0xFFFFFFFFFFFFFF8;
  v659 = v3;
  if (v7 >> 62)
  {
    goto LABEL_1072;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v665 = v8;
  if (!v8)
  {
  }

  v9 = 0;
  v667 = v7 & 0xC000000000000001;
  v662 = (v7 + 32);
  v664 = v7;
  while (1)
  {
    if (v667)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_18:
        __break(1u);
      }
    }

    else
    {
      if (v9 >= *(v666 + 16))
      {
        __break(1u);
LABEL_1070:
        __break(1u);
LABEL_1071:
        __break(1u);
LABEL_1072:
        v8 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v10 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }
    }

    v668[0] = [v10 muid];
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v13;
    if (v12 == a1 && v13 == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
    ++v9;
    v7 = v664;
    if (v11 == v665)
    {
    }
  }

LABEL_21:
  v16 = 0;
  a1 = v665;
  while (2)
  {
    if (v16 == a1)
    {
      swift_unknownObjectRelease();
    }

    if (v667)
    {
      a2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v666 + 16))
      {
        goto LABEL_1071;
      }

      a2 = *&v662[8 * v16];
      swift_unknownObjectRetain();
    }

    v17 = a2;
    v18 = v10;
    if (a2 | v10)
    {
      v19 = v17 != 0;
      if (v10)
      {
        v19 = 0;
        v20 = a2 == 0;
      }

      else
      {
        v20 = 0;
      }

      if (v20 || v19)
      {

        swift_unknownObjectRelease();
        v7 = v18;
        goto LABEL_89;
      }

      a2 = [v17 identifier];
      v21 = [v18 identifier];
      if (![a2 isEqual:v21])
      {

        swift_unknownObjectRelease();
        v7 = v21;
        goto LABEL_89;
      }

      v663 = a2;
      v22 = [v17 name];
      v23 = [v18 name];
      v24 = v22 | v23;
      v25 = v22;
      v7 = v23;
      if (v24)
      {
        a2 = [v25 isEqual:v7];

        if (!a2)
        {

          swift_unknownObjectRelease();
          goto LABEL_88;
        }
      }

      v660 = v25;
      v26 = [v17 system];
      v27 = [v18 system];
      v661 = v26;
      v28 = v27;
      v29 = v28;
      if (!(v26 | v27))
      {
LABEL_37:
        a2 = [v17 departureTimeDisplayStyle];
        if (a2 == [v18 departureTimeDisplayStyle])
        {
          a2 = [v17 departuresAreVehicleSpecific];
          if (a2 == [v18 departuresAreVehicleSpecific])
          {
            v656 = v29;
            v30 = [v17 artwork];
            v31 = [v18 artwork];
            v32 = v30;
            v33 = v31;
            v658 = v33;
            v652 = v21;
            if (!(v30 | v31))
            {
              goto LABEL_40;
            }

            LODWORD(v654) = 0;
            if (v32)
            {
              v55 = v31 == 0;
            }

            else
            {
              v55 = 0;
            }

            v56 = v55;
            if (v33)
            {
              v57 = v30 == 0;
            }

            else
            {
              v57 = 0;
            }

            v58 = v32;
            v59 = v32;
            v41 = v33;
            if (v57)
            {
              a1 = v665;
              v29 = v656;
              goto LABEL_707;
            }

            a1 = v665;
            v29 = v656;
            if (v56)
            {
              goto LABEL_707;
            }

            v60 = [v58 artworkSourceType];
            v61 = v58;
            v62 = v658;
            if (v60 != [v658 artworkSourceType] || (v63 = objc_msgSend(v61, "artworkUseType"), v63 != objc_msgSend(v658, "artworkUseType")))
            {
              LODWORD(v654) = 0;
              v41 = v658;
              v58 = v61;
              v59 = v61;
              v29 = v656;
              goto LABEL_707;
            }

            v64 = [v61 shieldDataSource];
            v65 = [v658 shieldDataSource];
            v654 = v64 | v65;
            v66 = v64;
            v67 = v65;
            v68 = v66;
            v648 = v61;
            if (!(v64 | v65))
            {
              goto LABEL_77;
            }

            if (v66)
            {
              v172 = v65 == 0;
            }

            else
            {
              v172 = 0;
            }

            v173 = v172;
            if (v67)
            {
              v174 = v64 == 0;
            }

            else
            {
              v174 = 0;
            }

            v175 = v67;
            if (v174 || v173)
            {

              LODWORD(v654) = 0;
              v262 = v175;
              v169 = v61;
              v72 = v175;
              v170 = v658;
              v647 = v66;
            }

            else
            {
              v176 = [v66 shieldType];
              if (v176 != [v175 shieldType])
              {

                LODWORD(v654) = 0;
                v262 = v175;
                v169 = v61;
                v72 = v175;
                v170 = v658;
                v647 = v66;
                a1 = v665;
                goto LABEL_704;
              }

              [v66 shieldText];
              obj = a1 = v665;
              v644 = v66;
              if (!obj)
              {
                v649 = [v175 shieldText];
                if (!v649)
                {
                  v649 = 0;
                  LODWORD(v178) = 0;
                  goto LABEL_516;
                }
              }

              v61 = [v66 shieldText];
              v177 = [v175 shieldText];
              if (([v61 isEqualToString:v177] & 1) == 0)
              {

                LODWORD(v654) = 0;
                v262 = obj;
                if (!obj)
                {
                  v262 = v649;
                }

                v169 = v648;
                v72 = v175;
                v170 = v658;
                v647 = v66;
                goto LABEL_704;
              }

              v646 = v177;
              LODWORD(v178) = 1;
LABEL_516:
              v647 = v61;
              v354 = [v644 shieldColorString];
              if (v354 || ([v175 shieldColorString], (v645 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v355 = v178;
                v356 = [v644 shieldColorString];
                v178 = v175;
                v357 = [v175 shieldColorString];
                LODWORD(v654) = [v356 isEqualToString:v357];

                if (v354)
                {

                  v175 = v178;
                  v358 = obj;
                  if (v355)
                  {
                    goto LABEL_520;
                  }

                  goto LABEL_521;
                }

                v175 = v178;
                v358 = obj;
                LOBYTE(v178) = v355;
                v359 = v645;
              }

              else
              {
                v359 = 0;
                LODWORD(v654) = 1;
                v358 = obj;
              }

              if (v178)
              {
LABEL_520:
              }

LABEL_521:

              if (v358)
              {
              }

              else
              {
              }

              v67 = v175;
              v62 = v658;
              v61 = v648;
              v68 = v644;
              if ((v654 & 1) == 0)
              {
                LODWORD(v654) = 0;
                v43 = v648;
                v649 = v658;
                a1 = v665;
                v29 = v656;
                v42 = v644;
                v41 = v67;
                goto LABEL_706;
              }

LABEL_77:
              v643 = v67;
              v644 = v68;
              v69 = [v61 iconDataSource];
              v70 = [v62 iconDataSource];
              v649 = v69;
              v71 = v70;
              v72 = v71;
              if (!(v69 | v70))
              {
LABEL_78:
                v640 = v72;
                v73 = v648;
                v74 = [v648 iconFallbackShieldDataSource];
                v75 = [v658 iconFallbackShieldDataSource];
                v76 = v74;
                v77 = v75;
                if (!(v74 | v75))
                {
                  goto LABEL_79;
                }

                if (v76)
                {
                  v235 = v75 == 0;
                }

                else
                {
                  v235 = 0;
                }

                v236 = v235;
                if (v77)
                {
                  v237 = v74 == 0;
                }

                else
                {
                  v237 = 0;
                }

                v187 = v77;
                if (v237 || v236)
                {

                  v287 = v187;
                  v72 = v640;
                }

                else
                {
                  v238 = [v76 shieldType];
                  v72 = v640;
                  if (v238 == [v187 shieldType])
                  {
                    v654 = [v76 shieldText];
                    if (!v654)
                    {
                      v646 = [v187 shieldText];
                      if (!v646)
                      {
                        obj = v18;
                        v645 = v7;
                        v646 = 0;
                        v631 = 0;
                        goto LABEL_628;
                      }
                    }

                    v239 = [v76 shieldText];
                    v240 = [v187 shieldText];
                    v647 = v239;
                    if ([v239 isEqualToString:v240])
                    {
                      v626 = v240;
                      obj = v18;
                      v645 = v7;
                      v631 = 1;
LABEL_628:
                      v414 = [v76 shieldColorString];
                      if (v414 || ([v187 shieldColorString], (v72 = objc_claimAutoreleasedReturnValue()) != 0))
                      {
                        v415 = v76;
                        v416 = [v76 shieldColorString];
                        v417 = v187;
                        v418 = [v187 shieldColorString];
                        LODWORD(v627) = [v416 isEqualToString:v418];

                        if (v414)
                        {

                          if (v631)
                          {
                            goto LABEL_632;
                          }

                          goto LABEL_633;
                        }
                      }

                      else
                      {
                        v417 = v187;
                        v415 = v76;
                        LODWORD(v627) = 1;
                      }

                      if (v631)
                      {
LABEL_632:
                      }

LABEL_633:
                      v76 = v415;

                      if (v654)
                      {
                      }

                      else
                      {
                      }

                      v77 = v417;
                      v7 = v645;
                      v73 = v648;
                      v18 = obj;
                      if ((v627 & 1) == 0)
                      {
                        v187 = v77;
                        v72 = v640;
                        goto LABEL_532;
                      }

LABEL_79:
                      v633 = v77;
                      v634 = v76;
                      v78 = v73;
                      v79 = [v73 textDataSource];
                      v80 = [v658 textDataSource];
                      v647 = v79;
                      v646 = v80;
                      v81 = v640;
                      if (!(v79 | v80))
                      {
LABEL_80:
                        v82 = [v78 hasRoutingIncidentBadge];
                        if (v82 == [v658 hasRoutingIncidentBadge])
                        {
                          v83 = [v78 accessibilityText];
                          if (!v83)
                          {
                            v654 = [v658 accessibilityText];
                            if (!v654)
                            {
                              v654 = 0;
                              v86 = 1;
                              goto LABEL_617;
                            }
                          }

                          v84 = [v78 accessibilityText];
                          v85 = [v658 accessibilityText];
                          v86 = [v84 isEqualToString:v85];

                          if (!v83)
                          {
LABEL_617:
                            v83 = v654;
                          }

                          v32 = v648;
                          if (!v86)
                          {
                            LODWORD(v654) = 0;
                            a1 = v665;
                            a2 = v660;
                            v58 = v648;
                            v29 = v656;
LABEL_709:

                            swift_unknownObjectRelease();
                            if (v654)
                            {
                              goto LABEL_1065;
                            }

LABEL_90:
                            if (__OFADD__(v16++, 1))
                            {
                              goto LABEL_1070;
                            }

                            continue;
                          }

LABEL_40:
                          v648 = v32;
                          v34 = [v17 modeArtwork];
                          v35 = [v18 modeArtwork];
                          v647 = v34;
                          v36 = v35;
                          v29 = v656;
                          v646 = v36;
                          if (!(v34 | v35))
                          {
LABEL_41:
                            v37 = [v17 alternateArtwork];
                            v38 = [v18 alternateArtwork];
                            v644 = v37;
                            v39 = v38;
                            v649 = v39;
                            if (!(v37 | v38))
                            {
                              goto LABEL_42;
                            }

                            v140 = v644;
                            if (v644)
                            {
                              v141 = v38 == 0;
                            }

                            else
                            {
                              v141 = 0;
                            }

                            v142 = v141;
                            if (v39)
                            {
                              v143 = v37 == 0;
                            }

                            else
                            {
                              v143 = 0;
                            }

                            if (v143 || (v142 & 1) != 0)
                            {
                              LODWORD(v654) = 0;
                              v171 = v644;
                              v643 = v39;
                              v169 = v644;
                              v170 = v39;
                              a1 = v665;
                              v72 = v646;
                              goto LABEL_703;
                            }

                            v144 = [v644 artworkSourceType];
                            a1 = v665;
                            if (v144 != [v649 artworkSourceType] || (v145 = objc_msgSend(v644, "artworkUseType"), v145 != objc_msgSend(v649, "artworkUseType")))
                            {
                              LODWORD(v654) = 0;
                              v171 = v644;
                              v643 = v649;
                              v169 = v644;
                              v170 = v649;
                              v72 = v646;
                              goto LABEL_703;
                            }

                            v146 = [v644 shieldDataSource];
                            v147 = [v649 shieldDataSource];
                            v630 = v146;
                            v148 = v147;
                            if (!(v146 | v147))
                            {
                              goto LABEL_154;
                            }

                            if (v630)
                            {
                              v253 = v147 == 0;
                            }

                            else
                            {
                              v253 = 0;
                            }

                            v254 = v253;
                            if (v148)
                            {
                              v255 = v146 == 0;
                            }

                            else
                            {
                              v255 = 0;
                            }

                            v256 = v148;
                            if (v255 || v254)
                            {

                              LODWORD(v654) = 0;
                              v183 = v644;
                              v637 = v649;
                              v640 = v630;
                              v643 = v256;
                              goto LABEL_698;
                            }

                            v257 = [v630 shieldType];
                            a1 = v665;
                            if (v257 != [v256 shieldType])
                            {

                              LODWORD(v654) = 0;
                              v637 = v649;
                              v640 = v630;
                              v183 = v644;
                              v643 = v256;
                              goto LABEL_699;
                            }

                            v626 = v256;
                            v654 = [v630 shieldText];
                            if (!v654)
                            {
                              v633 = [v256 shieldText];
                              if (!v633)
                              {
                                obj = v18;
                                v645 = v7;
                                v260 = v29;
                                v633 = 0;
                                LODWORD(v640) = 0;
                                goto LABEL_681;
                              }
                            }

                            v258 = [v630 shieldText];
                            v259 = [v626 shieldText];
                            v643 = v258;
                            if ([v258 isEqualToString:v259])
                            {
                              v627 = v259;
                              obj = v18;
                              v645 = v7;
                              v260 = v29;
                              LODWORD(v640) = 1;
LABEL_681:
                              v451 = [v630 shieldColorString];
                              if (v451 || ([v626 shieldColorString], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
                              {
                                v452 = [v630 shieldColorString];
                                v453 = v626;
                                v454 = [v626 shieldColorString];
                                v639 = [v452 isEqualToString:v454];

                                if (v451)
                                {

                                  if (v640)
                                  {
                                    goto LABEL_685;
                                  }

                                  goto LABEL_686;
                                }
                              }

                              else
                              {
                                v453 = v626;
                                v639 = 1;
                              }

                              if (v640)
                              {
LABEL_685:
                              }

LABEL_686:

                              if (v654)
                              {
                              }

                              else
                              {
                              }

                              v148 = v453;
                              v29 = v260;
                              v140 = v644;
                              v7 = v645;
                              v18 = obj;
                              if ((v639 & 1) == 0)
                              {
                                LODWORD(v654) = 0;
                                v183 = v644;
                                v637 = v649;
                                v640 = v630;
                                v643 = v453;
                                goto LABEL_698;
                              }

LABEL_154:
                              v626 = v148;
                              v149 = [v140 iconDataSource];
                              v150 = v649;
                              v151 = [v649 iconDataSource];
                              v627 = v149;
                              v625 = v151;
                              if (!(v149 | v151))
                              {
LABEL_155:
                                v152 = [v644 iconFallbackShieldDataSource];
                                v153 = [v150 iconFallbackShieldDataSource];
                                v633 = v152;
                                v154 = v153;
                                v155 = v154;
                                if (!(v152 | v153))
                                {
                                  goto LABEL_156;
                                }

                                v291 = v633;
                                if (v633)
                                {
                                  v315 = v153 == 0;
                                }

                                else
                                {
                                  v315 = 0;
                                }

                                v316 = v315;
                                if (v154)
                                {
                                  v317 = v152 == 0;
                                }

                                else
                                {
                                  v317 = 0;
                                }

                                v318 = v154;
                                if (v317 || v316)
                                {

                                  v323 = v155;
                                }

                                else
                                {
                                  v645 = v7;
                                  v319 = v29;
                                  v320 = [v633 shieldType];
                                  if (v320 == [v318 shieldType])
                                  {
                                    obj = v18;
                                    v321 = [v633 shieldText];
                                    if (!v321)
                                    {
                                      v640 = [v318 shieldText];
                                      if (!v640)
                                      {
                                        v323 = v318;
                                        v640 = 0;
                                        LODWORD(v623) = 0;
                                        goto LABEL_889;
                                      }
                                    }

                                    v322 = [v633 shieldText];
                                    v323 = v318;
                                    [v318 shieldText];
                                    v654 = v643 = v322;
                                    if ([v322 isEqualToString:?])
                                    {
                                      LODWORD(v623) = 1;
LABEL_889:
                                      v538 = [v633 shieldColorString];
                                      if (v538 || ([v323 shieldColorString], (v622 = objc_claimAutoreleasedReturnValue()) != 0))
                                      {
                                        v539 = [v633 shieldColorString];
                                        v540 = [v323 shieldColorString];
                                        LODWORD(v624) = [v539 isEqualToString:v540];

                                        if (v538)
                                        {

                                          if (v623)
                                          {
                                            goto LABEL_893;
                                          }

                                          goto LABEL_894;
                                        }
                                      }

                                      else
                                      {
                                        v622 = 0;
                                        LODWORD(v624) = 1;
                                      }

                                      if (v623)
                                      {
LABEL_893:
                                      }

LABEL_894:

                                      v155 = v323;
                                      if (v321)
                                      {
                                      }

                                      else
                                      {
                                      }

                                      v29 = v319;
                                      v7 = v645;
                                      v18 = obj;
                                      if ((v624 & 1) == 0)
                                      {
                                        v291 = v633;
                                        goto LABEL_696;
                                      }

LABEL_156:
                                      v637 = v155;
                                      v156 = v644;
                                      v157 = [v644 textDataSource];
                                      v158 = [v649 textDataSource];
                                      v640 = v157;
                                      v643 = v158;
                                      if (!(v157 | v158))
                                      {
LABEL_157:
                                        v159 = [v156 hasRoutingIncidentBadge];
                                        if (v159 == [v649 hasRoutingIncidentBadge])
                                        {
                                          v160 = v7;
                                          v161 = v29;
                                          v162 = [v156 accessibilityText];
                                          if (!v162)
                                          {
                                            v29 = [v649 accessibilityText];
                                            if (!v29)
                                            {
                                              v655 = 1;
                                              goto LABEL_816;
                                            }
                                          }

                                          v163 = [v644 accessibilityText];
                                          v164 = [v649 accessibilityText];
                                          v655 = [v163 isEqualToString:v164];

                                          if (!v162)
                                          {
LABEL_816:
                                            v162 = v29;
                                          }

                                          v29 = v161;
                                          v7 = v160;
                                          if ((v655 & 1) == 0)
                                          {
LABEL_43:
                                            LODWORD(v654) = 0;
                                            v41 = v646;
                                            v42 = v647;
                                            a1 = v665;
                                            v43 = v644;
                                            goto LABEL_706;
                                          }

LABEL_42:
                                          v40 = [v17 hasLineColorString];
                                          if (v40 != [v18 hasLineColorString])
                                          {
                                            goto LABEL_43;
                                          }

                                          v165 = [v17 lineColorString];
                                          v166 = [v18 lineColorString];
                                          v640 = v165;
                                          v643 = v166;
                                          if (v165 | v166 && (v167 = [v640 isEqual:v643], v640, v643, !v167) || (v168 = objc_msgSend(v17, "showVehicleNumber"), v168 != objc_msgSend(v18, "showVehicleNumber")))
                                          {
                                            LODWORD(v654) = 0;
                                            v169 = v644;
                                            v170 = v649;
                                            a1 = v665;
                                            v72 = v646;
                                            goto LABEL_702;
                                          }

                                          v179 = [v17 operatingHours];
                                          v180 = [v18 operatingHours];
                                          v633 = v179;
                                          v181 = v180;
                                          v182 = &stru_101618378;
                                          if (!(v179 | v180))
                                          {
                                            LODWORD(v654) = 1;
                                            goto LABEL_192;
                                          }

                                          if (v633)
                                          {
                                            v214 = v180 == 0;
                                          }

                                          else
                                          {
                                            v214 = 0;
                                          }

                                          v215 = v214;
                                          if (v181)
                                          {
                                            v216 = v179 == 0;
                                          }

                                          else
                                          {
                                            v216 = 0;
                                          }

                                          LODWORD(v654) = 0;
                                          if (v216)
                                          {
LABEL_192:
                                            a1 = v665;
                                            v72 = v646;
                                            v183 = v633;
                                          }

                                          else
                                          {
                                            a1 = v665;
                                            v72 = v646;
                                            v183 = v633;
                                            if ((v215 & 1) == 0)
                                            {
                                              v217 = [v633 count];
                                              if (v217 == [v181 count])
                                              {
                                                v671 = 0u;
                                                v672 = 0u;
                                                v669 = 0u;
                                                v670 = 0u;
                                                obj = v633;
                                                v654 = [obj countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                if (v654)
                                                {
                                                  v645 = v7;
                                                  v218 = 0;
                                                  v219 = *v670;
                                                  while (2)
                                                  {
                                                    for (i = 0; i != v654; ++i)
                                                    {
                                                      if (*v670 != v219)
                                                      {
                                                        objc_enumerationMutation(obj);
                                                      }

                                                      v221 = *(*(&v669 + 1) + 8 * i);
                                                      v222 = v181;
                                                      v223 = [v181 objectAtIndexedSubscript:v218];
                                                      LODWORD(v221) = sub_100420E14(v223, v221, v223);

                                                      if (!v221)
                                                      {
                                                        LODWORD(v654) = 0;
                                                        a1 = v665;
                                                        v7 = v645;
                                                        v181 = v222;
                                                        goto LABEL_451;
                                                      }

                                                      ++v218;
                                                      v181 = v222;
                                                    }

                                                    v654 = [obj countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                    if (v654)
                                                    {
                                                      continue;
                                                    }

                                                    break;
                                                  }

                                                  LODWORD(v654) = 1;
                                                  a1 = v665;
                                                  v7 = v645;
LABEL_451:
                                                  v183 = v633;
                                                }

                                                else
                                                {
                                                  v183 = v633;
                                                  LODWORD(v654) = 1;
                                                }
                                              }

                                              else
                                              {
                                                LODWORD(v654) = 0;
                                                v183 = v633;
                                              }

                                              v72 = v646;
                                            }
                                          }

                                          v637 = v181;
LABEL_700:

                                          v169 = v644;
                                          v170 = v649;
                                          v261 = v637;
LABEL_701:

LABEL_702:
                                          v171 = v640;
LABEL_703:

                                          v262 = v643;
LABEL_704:

                                          v43 = v169;
                                          v649 = v170;
                                          v42 = v647;
LABEL_705:
                                          v41 = v72;
                                          v29 = v656;
LABEL_706:

                                          v59 = v42;
                                          v58 = v648;
LABEL_707:

LABEL_708:
                                          a2 = v660;
                                          goto LABEL_709;
                                        }

LABEL_1061:

                                        LODWORD(v654) = 0;
                                        a1 = v665;
                                        v72 = v646;
                                        v183 = v633;
                                        goto LABEL_700;
                                      }

                                      v645 = v7;
                                      if (v640)
                                      {
                                        v327 = v158 == 0;
                                      }

                                      else
                                      {
                                        v327 = 0;
                                      }

                                      v328 = v327;
                                      if (v643)
                                      {
                                        v329 = v157 == 0;
                                      }

                                      else
                                      {
                                        v329 = 0;
                                      }

                                      v330 = v640;
                                      v331 = v643;
                                      if (!v329)
                                      {
                                        v330 = v640;
                                        v331 = v643;
                                        if ((v328 & 1) == 0)
                                        {
                                          obj = v18;
                                          v332 = [v640 text];
                                          v333 = [v643 text];
                                          v654 = v332;
                                          v334 = v333;
                                          v330 = v334;
                                          if (!(v332 | v333))
                                          {

                                            v29 = v656;
                                            v156 = v644;
                                            v7 = v645;
                                            goto LABEL_157;
                                          }

                                          if (v654)
                                          {
                                            v419 = v333 == 0;
                                          }

                                          else
                                          {
                                            v419 = 0;
                                          }

                                          v420 = v419;
                                          if (v334)
                                          {
                                            v421 = v332 == 0;
                                          }

                                          else
                                          {
                                            v421 = 0;
                                          }

                                          if (v421 || (v420 & 1) != 0)
                                          {
                                            v488 = v640;
                                            v489 = v643;
                                            v490 = v654;
                                            v624 = v334;
                                          }

                                          else
                                          {
                                            v422 = [v654 formatStrings];
                                            v423 = [v330 formatStrings];
                                            v619 = v422;
                                            v623 = v423;
                                            v424 = &stru_101618398;
                                            if (!(v422 | v423))
                                            {

                                              goto LABEL_651;
                                            }

                                            if (v619)
                                            {
                                              v541 = v423 == 0;
                                            }

                                            else
                                            {
                                              v541 = 0;
                                            }

                                            v542 = v541;
                                            if (v623)
                                            {
                                              v543 = v422 == 0;
                                            }

                                            else
                                            {
                                              v543 = 0;
                                            }

                                            if (v543 || (v542 & 1) != 0 || (v544 = [v619 count], v544 != objc_msgSend(v623, "count")))
                                            {

                                              v554 = v623;
                                              v555 = v640;
                                              v556 = v643;
                                              v490 = v330;
                                              v622 = v619;
LABEL_925:
                                              v624 = v554;
                                            }

                                            else
                                            {
                                              v671 = 0u;
                                              v672 = 0u;
                                              v669 = 0u;
                                              v670 = 0u;
                                              v622 = v619;
                                              v545 = [v622 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                              if (v545)
                                              {
                                                v546 = v545;
                                                v547 = 0;
                                                v548 = *v670;
                                                while (2)
                                                {
                                                  for (j = 0; j != v546; j = j + 1)
                                                  {
                                                    if (*v670 != v548)
                                                    {
                                                      objc_enumerationMutation(v622);
                                                    }

                                                    v550 = *(*(&v669 + 1) + 8 * j);
                                                    v551 = [v623 objectAtIndexedSubscript:v547];
                                                    LODWORD(v550) = sub_100420EEC(v551, v550, v551);

                                                    if (!v550)
                                                    {
                                                      v554 = v623;

                                                      v555 = v640;
                                                      v556 = v643;
                                                      v490 = v330;
                                                      goto LABEL_925;
                                                    }

                                                    ++v547;
                                                  }

                                                  v546 = [v622 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                  if (v546)
                                                  {
                                                    continue;
                                                  }

                                                  break;
                                                }
                                              }

LABEL_651:
                                              v425 = [v654 separators];
                                              v426 = [v330 separators];
                                              v622 = v425;
                                              v624 = v426;
                                              v427 = &stru_1016183B8;
                                              if (!(v425 | v426))
                                              {

                                                goto LABEL_653;
                                              }

                                              if (v622)
                                              {
                                                v579 = v426 == 0;
                                              }

                                              else
                                              {
                                                v579 = 0;
                                              }

                                              v580 = v579;
                                              if (v624)
                                              {
                                                v581 = v425 == 0;
                                              }

                                              else
                                              {
                                                v581 = 0;
                                              }

                                              if (v581 || (v580 & 1) != 0 || (v582 = [v622 count], v582 != objc_msgSend(v624, "count")))
                                              {
                                              }

                                              else
                                              {
                                                v671 = 0u;
                                                v672 = 0u;
                                                v669 = 0u;
                                                v670 = 0u;
                                                v616 = v622;
                                                v583 = [v616 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                if (v583)
                                                {
                                                  v584 = v583;
                                                  v585 = 0;
                                                  v586 = *v670;
                                                  while (2)
                                                  {
                                                    for (k = 0; k != v584; k = k + 1)
                                                    {
                                                      if (*v670 != v586)
                                                      {
                                                        objc_enumerationMutation(v616);
                                                      }

                                                      v588 = *(*(&v669 + 1) + 8 * k);
                                                      v589 = [v624 objectAtIndexedSubscript:v585];
                                                      LODWORD(v588) = sub_100420EEC(v589, v588, v589);

                                                      if (!v588)
                                                      {

                                                        v605 = v616;
                                                        goto LABEL_1056;
                                                      }

                                                      ++v585;
                                                    }

                                                    v584 = [v616 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                    if (v584)
                                                    {
                                                      continue;
                                                    }

                                                    break;
                                                  }
                                                }

LABEL_653:
                                                v428 = [v654 formatTokens];
                                                v429 = [v330 formatTokens];
                                                v611 = v428;
                                                v615 = v429;
                                                v430 = &stru_1016183D8;
                                                if (!(v428 | v429))
                                                {

                                                  goto LABEL_655;
                                                }

                                                if (v611)
                                                {
                                                  v593 = v429 == 0;
                                                }

                                                else
                                                {
                                                  v593 = 0;
                                                }

                                                v594 = v593;
                                                if (v615)
                                                {
                                                  v595 = v428 == 0;
                                                }

                                                else
                                                {
                                                  v595 = 0;
                                                }

                                                if (!v595 && (v594 & 1) == 0)
                                                {
                                                  v596 = [v611 count];
                                                  if (v596 == [v615 count])
                                                  {
                                                    v671 = 0u;
                                                    v672 = 0u;
                                                    v669 = 0u;
                                                    v670 = 0u;
                                                    v609 = v611;
                                                    v597 = [v609 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                    if (v597)
                                                    {
                                                      v598 = v597;
                                                      v599 = 0;
                                                      v600 = *v670;
                                                      while (2)
                                                      {
                                                        for (m = 0; m != v598; m = m + 1)
                                                        {
                                                          if (*v670 != v600)
                                                          {
                                                            objc_enumerationMutation(v609);
                                                          }

                                                          v602 = *(*(&v669 + 1) + 8 * m);
                                                          v603 = [v615 objectAtIndexedSubscript:v599];
                                                          LODWORD(v602) = sub_100420EF0(v603, v602, v603);

                                                          if (!v602)
                                                          {
                                                            v605 = v615;

                                                            v604 = v609;
                                                            goto LABEL_1037;
                                                          }

                                                          ++v599;
                                                        }

                                                        v598 = [v609 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                        if (v598)
                                                        {
                                                          continue;
                                                        }

                                                        break;
                                                      }
                                                    }

LABEL_655:
                                                    v431 = [v654 alternativeString];
                                                    v432 = [v330 alternativeString];
                                                    v433 = v431 | v432;
                                                    v434 = v431;
                                                    v435 = v432;
                                                    if (v433)
                                                    {
                                                      v436 = [v434 isEqual:v435];
                                                    }

                                                    else
                                                    {
                                                      v436 = 1;
                                                    }

                                                    v29 = v656;
                                                    v156 = v644;
                                                    v7 = v645;
                                                    v18 = obj;
                                                    if (v436)
                                                    {
                                                      goto LABEL_157;
                                                    }

                                                    goto LABEL_1061;
                                                  }
                                                }

                                                v604 = v611;

                                                v605 = v615;
LABEL_1037:

LABEL_1056:
                                              }

                                              v556 = v654;
                                              v555 = v654;
                                              v654 = v330;
                                              v330 = v619;
                                              v490 = v623;
                                            }

                                            v489 = v654;
                                            v488 = v654;
                                            v654 = v330;
                                            v330 = v622;
                                          }

                                          v18 = obj;
                                          v331 = v624;
                                        }
                                      }

                                      v156 = v644;
                                      v7 = v645;
                                      goto LABEL_1061;
                                    }

                                    if (v321)
                                    {
                                      v318 = v321;
                                    }

                                    else
                                    {
                                      v318 = v640;
                                    }

                                    v7 = v645;
                                    v18 = obj;
                                  }

                                  else
                                  {

                                    v323 = v318;
                                    v7 = v645;
                                  }
                                }

                                v155 = v323;
                                goto LABEL_696;
                              }

                              if (v627)
                              {
                                v288 = v151 == 0;
                              }

                              else
                              {
                                v288 = 0;
                              }

                              v289 = v288;
                              if (v625)
                              {
                                v290 = v149 == 0;
                              }

                              else
                              {
                                v290 = 0;
                              }

                              v291 = v627;
                              v155 = v625;
                              if (!v290 && (v291 = v627, v155 = v625, (v289 & 1) == 0) && (v292 = [v627 iconType], v291 = v627, v155 = v625, v292 == objc_msgSend(v625, "iconType")) && (v293 = objc_msgSend(v627, "cartoID"), v291 = v627, v155 = v625, v293 == objc_msgSend(v625, "cartoID")) && (v294 = objc_msgSend(v627, "defaultTransitType"), v291 = v627, v155 = v625, v294 == objc_msgSend(v625, "defaultTransitType")) && (v295 = objc_msgSend(v627, "iconAttributeKey"), v291 = v627, v155 = v625, v295 == objc_msgSend(v625, "iconAttributeKey")))
                              {
                                v296 = [v627 iconAttributeValue];
                                v297 = [v625 iconAttributeValue];

                                v150 = v649;
                                if (v296 == v297)
                                {
                                  goto LABEL_155;
                                }
                              }

                              else
                              {
LABEL_696:

                                v150 = v649;
                              }

                              LODWORD(v654) = 0;
                              v183 = v630;
                              v637 = v626;
                              v640 = v627;
                              v643 = v625;
LABEL_698:
                              a1 = v665;
                            }

                            else
                            {

                              v361 = v654;
                              if (!v654)
                              {
                                v361 = v633;
                              }

                              LODWORD(v654) = 0;
                              v637 = v649;
                              v640 = v630;
                              v183 = v644;
                              v643 = v626;
                            }

LABEL_699:
                            v72 = v646;
                            goto LABEL_700;
                          }

                          v42 = v647;
                          if (v647)
                          {
                            v88 = v35 == 0;
                          }

                          else
                          {
                            v88 = 0;
                          }

                          v89 = v88;
                          if (v36)
                          {
                            v90 = v34 == 0;
                          }

                          else
                          {
                            v90 = 0;
                          }

                          if (v90)
                          {
                            LODWORD(v654) = 0;
                            v43 = v647;
                            v41 = v36;
                            v649 = v36;
                            a1 = v665;
                            goto LABEL_706;
                          }

                          a1 = v665;
                          if (v89)
                          {
                            LODWORD(v654) = 0;
                            v43 = v647;
                            v41 = v36;
                            v649 = v36;
                            goto LABEL_706;
                          }

                          v91 = [v647 artworkSourceType];
                          v72 = v646;
                          if (v91 != [v646 artworkSourceType] || (v92 = objc_msgSend(v647, "artworkUseType"), v92 != objc_msgSend(v646, "artworkUseType")))
                          {
                            LODWORD(v654) = 0;
                            v43 = v647;
                            v649 = v646;
                            goto LABEL_705;
                          }

                          v93 = [v647 shieldDataSource];
                          v94 = [v646 shieldDataSource];
                          v95 = v93;
                          v96 = v94;
                          v635 = v95;
                          if (!(v93 | v94))
                          {
LABEL_107:
                            v633 = v96;
                            v97 = v647;
                            v98 = [v647 iconDataSource];
                            v99 = [v72 iconDataSource];
                            v628 = v98;
                            v627 = v99;
                            if (!(v98 | v99))
                            {
                              goto LABEL_108;
                            }

                            if (v628)
                            {
                              v241 = v99 == 0;
                            }

                            else
                            {
                              v241 = 0;
                            }

                            v242 = v241;
                            if (v627)
                            {
                              v243 = v98 == 0;
                            }

                            else
                            {
                              v243 = 0;
                            }

                            v244 = v628;
                            v245 = v627;
                            if (v243)
                            {
                              goto LABEL_613;
                            }

                            v244 = v628;
                            v245 = v627;
                            if (v242)
                            {
                              goto LABEL_613;
                            }

                            v246 = [v628 iconType];
                            v244 = v628;
                            v245 = v627;
                            if (v246 != [v627 iconType])
                            {
                              goto LABEL_613;
                            }

                            v247 = [v628 cartoID];
                            v244 = v628;
                            v245 = v627;
                            if (v247 != [v627 cartoID])
                            {
                              goto LABEL_613;
                            }

                            v248 = [v628 defaultTransitType];
                            v244 = v628;
                            v245 = v627;
                            if (v248 != [v627 defaultTransitType])
                            {
                              goto LABEL_613;
                            }

                            v249 = [v628 iconAttributeKey];
                            v244 = v628;
                            v245 = v627;
                            if (v249 != [v627 iconAttributeKey])
                            {
                              goto LABEL_613;
                            }

                            v250 = [v628 iconAttributeValue];
                            v251 = [v627 iconAttributeValue];

                            v97 = v647;
                            if (v250 != v251)
                            {
LABEL_614:

                              LODWORD(v654) = 0;
                              v72 = v646;
                              v261 = v646;
                              v640 = v635;
                              v643 = v633;
                              v170 = v627;
                              v169 = v628;
                              goto LABEL_615;
                            }

LABEL_108:
                            v100 = [v97 iconFallbackShieldDataSource];
                            v101 = [v646 iconFallbackShieldDataSource];
                            v640 = v100;
                            v102 = v101;
                            v29 = v656;
                            if (!(v100 | v101))
                            {
LABEL_109:
                              v643 = v102;
                              v103 = [v97 textDataSource];
                              v104 = [v646 textDataSource];
                              v644 = v103;
                              v649 = v104;
                              if (!(v103 | v104))
                              {
                                goto LABEL_110;
                              }

                              if (v644)
                              {
                                v308 = v104 == 0;
                              }

                              else
                              {
                                v308 = 0;
                              }

                              v309 = v308;
                              if (v649)
                              {
                                v310 = v103 == 0;
                              }

                              else
                              {
                                v310 = 0;
                              }

                              v311 = v644;
                              v312 = v649;
                              if (!v310)
                              {
                                v311 = v644;
                                v312 = v649;
                                if ((v309 & 1) == 0)
                                {
                                  v645 = v7;
                                  v313 = [v644 text];
                                  v314 = [v649 text];
                                  v626 = v313;
                                  v654 = v314;
                                  if (!(v313 | v314))
                                  {

                                    goto LABEL_110;
                                  }

                                  obj = v18;
                                  v385 = v626;
                                  if (v626)
                                  {
                                    v386 = v314 == 0;
                                  }

                                  else
                                  {
                                    v386 = 0;
                                  }

                                  v387 = v386;
                                  if (v654)
                                  {
                                    v388 = v313 == 0;
                                  }

                                  else
                                  {
                                    v388 = 0;
                                  }

                                  if (v388 || (v387 & 1) != 0)
                                  {
                                    v437 = v644;
                                    v438 = v649;
                                    v439 = v626;
                                    v625 = v654;
                                  }

                                  else
                                  {
                                    v389 = [v626 formatStrings];
                                    v390 = [v654 formatStrings];
                                    v622 = v389;
                                    v624 = v390;
                                    v391 = &stru_101618398;
                                    if (!(v389 | v390))
                                    {

                                      goto LABEL_585;
                                    }

                                    if (v622)
                                    {
                                      v491 = v390 == 0;
                                    }

                                    else
                                    {
                                      v491 = 0;
                                    }

                                    v492 = v491;
                                    if (v624)
                                    {
                                      v493 = v389 == 0;
                                    }

                                    else
                                    {
                                      v493 = 0;
                                    }

                                    if (v493 || (v492 & 1) != 0 || (v494 = [v622 count], v494 != objc_msgSend(v624, "count")))
                                    {

                                      v502 = v624;
                                      v503 = v644;
                                      v504 = v649;
                                      v439 = v654;
                                      v623 = v622;
LABEL_814:
                                      v625 = v502;
                                    }

                                    else
                                    {
                                      v671 = 0u;
                                      v672 = 0u;
                                      v669 = 0u;
                                      v670 = 0u;
                                      v623 = v622;
                                      v495 = [v623 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                      if (v495)
                                      {
                                        v496 = v495;
                                        v497 = 0;
                                        v498 = *v670;
                                        while (2)
                                        {
                                          for (n = 0; n != v496; n = n + 1)
                                          {
                                            if (*v670 != v498)
                                            {
                                              objc_enumerationMutation(v623);
                                            }

                                            v500 = *(*(&v669 + 1) + 8 * n);
                                            v501 = [v624 objectAtIndexedSubscript:v497];
                                            LODWORD(v500) = sub_100420EEC(v501, v500, v501);

                                            if (!v500)
                                            {
                                              v502 = v624;

                                              v503 = v644;
                                              v504 = v649;
                                              v439 = v654;
                                              goto LABEL_814;
                                            }

                                            ++v497;
                                          }

                                          v496 = [v623 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                          if (v496)
                                          {
                                            continue;
                                          }

                                          break;
                                        }
                                      }

LABEL_585:
                                      v392 = [v626 separators];
                                      v393 = [v654 separators];
                                      v623 = v392;
                                      v625 = v393;
                                      v394 = &stru_1016183B8;
                                      if (!(v392 | v393))
                                      {

                                        goto LABEL_587;
                                      }

                                      if (v623)
                                      {
                                        v527 = v393 == 0;
                                      }

                                      else
                                      {
                                        v527 = 0;
                                      }

                                      v528 = v527;
                                      if (v625)
                                      {
                                        v529 = v392 == 0;
                                      }

                                      else
                                      {
                                        v529 = 0;
                                      }

                                      if (v529 || (v528 & 1) != 0 || (v530 = [v623 count], v530 != objc_msgSend(v625, "count")))
                                      {
                                      }

                                      else
                                      {
                                        v671 = 0u;
                                        v672 = 0u;
                                        v669 = 0u;
                                        v670 = 0u;
                                        v621 = v623;
                                        v531 = [v621 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                        if (v531)
                                        {
                                          v532 = v531;
                                          v533 = 0;
                                          v534 = *v670;
                                          while (2)
                                          {
                                            for (ii = 0; ii != v532; ii = ii + 1)
                                            {
                                              if (*v670 != v534)
                                              {
                                                objc_enumerationMutation(v621);
                                              }

                                              v536 = *(*(&v669 + 1) + 8 * ii);
                                              v537 = [v625 objectAtIndexedSubscript:v533];
                                              LODWORD(v536) = sub_100420EEC(v537, v536, v537);

                                              if (!v536)
                                              {

                                                v592 = v621;
                                                goto LABEL_1043;
                                              }

                                              ++v533;
                                            }

                                            v532 = [v621 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                            if (v532)
                                            {
                                              continue;
                                            }

                                            break;
                                          }
                                        }

LABEL_587:
                                        v395 = [v626 formatTokens];
                                        v396 = [v654 formatTokens];
                                        v614 = v395;
                                        v618 = v396;
                                        v397 = &stru_1016183D8;
                                        if (!(v395 | v396))
                                        {

                                          goto LABEL_589;
                                        }

                                        if (v614)
                                        {
                                          v568 = v396 == 0;
                                        }

                                        else
                                        {
                                          v568 = 0;
                                        }

                                        v569 = v568;
                                        if (v618)
                                        {
                                          v570 = v395 == 0;
                                        }

                                        else
                                        {
                                          v570 = 0;
                                        }

                                        if (!v570 && (v569 & 1) == 0)
                                        {
                                          v571 = [v614 count];
                                          if (v571 == [v618 count])
                                          {
                                            v671 = 0u;
                                            v672 = 0u;
                                            v669 = 0u;
                                            v670 = 0u;
                                            v612 = v614;
                                            v572 = [v612 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                            if (v572)
                                            {
                                              v573 = v572;
                                              v574 = 0;
                                              v575 = *v670;
                                              while (2)
                                              {
                                                for (jj = 0; jj != v573; jj = jj + 1)
                                                {
                                                  if (*v670 != v575)
                                                  {
                                                    objc_enumerationMutation(v612);
                                                  }

                                                  v577 = *(*(&v669 + 1) + 8 * jj);
                                                  v578 = [v618 objectAtIndexedSubscript:v574];
                                                  LODWORD(v577) = sub_100420EF0(v578, v577, v578);

                                                  if (!v577)
                                                  {
                                                    v592 = v618;

                                                    v591 = v612;
                                                    goto LABEL_999;
                                                  }

                                                  ++v574;
                                                }

                                                v573 = [v612 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                if (v573)
                                                {
                                                  continue;
                                                }

                                                break;
                                              }
                                            }

LABEL_589:
                                            v398 = [v626 alternativeString];
                                            v399 = [v654 alternativeString];
                                            v400 = v398 | v399;
                                            v401 = v398;
                                            v402 = v399;
                                            if (v400)
                                            {
                                              v403 = [v401 isEqual:v402];
                                            }

                                            else
                                            {
                                              v403 = 1;
                                            }

                                            v29 = v656;
                                            v7 = v645;
                                            v97 = v647;
                                            v18 = obj;
                                            if ((v403 & 1) == 0)
                                            {
LABEL_1048:

                                              v72 = v646;
                                              LODWORD(v654) = 0;
                                              v261 = v627;
                                              a1 = v665;
                                              v169 = v644;
                                              v170 = v649;
                                              goto LABEL_701;
                                            }

LABEL_110:
                                            v105 = [v97 hasRoutingIncidentBadge];
                                            if (v105 != [v646 hasRoutingIncidentBadge])
                                            {
                                              goto LABEL_1048;
                                            }

                                            v106 = [v97 accessibilityText];
                                            if (v106 || ([v646 accessibilityText], (obj = objc_claimAutoreleasedReturnValue()) != 0))
                                            {
                                              v107 = v97;
                                              v108 = [v97 accessibilityText];
                                              v109 = [v646 accessibilityText];
                                              LODWORD(v654) = [v108 isEqualToString:v109];

                                              if (!v106)
                                              {
LABEL_715:
                                                v106 = obj;
                                              }

                                              v41 = v646;
                                              if (v654)
                                              {
                                                goto LABEL_41;
                                              }

                                              LODWORD(v654) = 0;
                                              a1 = v665;
                                              v59 = v647;
                                              v58 = v648;
                                              goto LABEL_707;
                                            }

                                            v107 = v97;
                                            obj = 0;
                                            LODWORD(v654) = 1;
                                            goto LABEL_715;
                                          }
                                        }

                                        v591 = v614;

                                        v592 = v618;
LABEL_999:

LABEL_1043:
                                      }

                                      v503 = v626;
                                      v504 = v626;
                                      v385 = v654;
                                      v654 = v622;
                                      v439 = v624;
                                    }

                                    v437 = v385;
                                    v438 = v385;
                                    v385 = v654;
                                    v654 = v623;
                                  }

                                  v7 = v645;
                                  v97 = v647;
                                  v18 = obj;
                                  v311 = v654;
                                  v312 = v625;
                                }
                              }

                              goto LABEL_1048;
                            }

                            if (v640)
                            {
                              v279 = v101 == 0;
                            }

                            else
                            {
                              v279 = 0;
                            }

                            v280 = v279;
                            v245 = v102;
                            if (v102)
                            {
                              v281 = v100 == 0;
                            }

                            else
                            {
                              v281 = 0;
                            }

                            if (v281 || v280 || (v282 = [v640 shieldType], v282 != objc_msgSend(v245, "shieldType")))
                            {
                              v283 = v640;

                              v360 = v245;
                            }

                            else
                            {
                              obj = v18;
                              v645 = v7;
                              v283 = v640;
                              v284 = [v640 shieldText];
                              if (!v284)
                              {
                                v654 = [v245 shieldText];
                                if (!v654)
                                {
                                  v654 = 0;
                                  LODWORD(v644) = 0;
                                  goto LABEL_778;
                                }
                              }

                              v285 = [v640 shieldText];
                              v286 = [v245 shieldText];
                              if ([v285 isEqualToString:v286])
                              {
                                v625 = v285;
                                v626 = v286;
                                LODWORD(v644) = 1;
LABEL_778:
                                v485 = [v640 shieldColorString];
                                if (v485 || ([v245 shieldColorString], (v624 = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  v486 = [v640 shieldColorString];
                                  v487 = [v245 shieldColorString];
                                  v650 = [v486 isEqualToString:v487];

                                  if (v485)
                                  {

                                    if (v644)
                                    {
                                      goto LABEL_782;
                                    }

                                    goto LABEL_783;
                                  }
                                }

                                else
                                {
                                  v624 = 0;
                                  v650 = 1;
                                }

                                if (v644)
                                {
LABEL_782:
                                }

LABEL_783:

                                if (v284)
                                {
                                }

                                else
                                {
                                }

                                v102 = v245;
                                v29 = v656;
                                v7 = v645;
                                v97 = v647;
                                if (v650)
                                {
                                  goto LABEL_109;
                                }

                                v244 = v640;
LABEL_613:

                                v97 = v647;
                                goto LABEL_614;
                              }

                              v360 = v654;
                              if (v284)
                              {
                                v360 = v284;
                              }

                              v7 = v645;
                            }

                            v244 = v283;
                            goto LABEL_613;
                          }

                          if (v95)
                          {
                            v202 = v94 == 0;
                          }

                          else
                          {
                            v202 = 0;
                          }

                          v203 = v202;
                          if (v96)
                          {
                            v204 = v93 == 0;
                          }

                          else
                          {
                            v204 = 0;
                          }

                          v170 = v96;
                          if (v204 || v203)
                          {
                            v169 = v635;

                            LODWORD(v654) = 0;
                            v261 = v170;
                            v72 = v646;
                            v640 = v647;
                            v643 = v646;
LABEL_615:
                            a1 = v665;
                            goto LABEL_701;
                          }

                          v205 = v96;
                          v206 = [v635 shieldType];
                          a1 = v665;
                          if (v206 != [v205 shieldType])
                          {

                            LODWORD(v654) = 0;
                            v261 = v205;
                            v298 = v205;
                            v72 = v646;
                            v640 = v647;
                            v643 = v646;
                            v169 = v635;
                            v170 = v298;
                            goto LABEL_701;
                          }

                          v207 = [v635 shieldText];
                          v208 = v205;
                          v72 = v646;
                          v209 = v208;
                          obj = v207;
                          if (v207 || ([v208 shieldText], (v649 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            v210 = [v635 shieldText];
                            [v209 shieldText];
                            v211 = v633 = v209;
                            if (([v210 isEqualToString:v211] & 1) == 0)
                            {

                              v169 = v635;
                              v170 = v633;

                              LODWORD(v654) = 0;
                              v261 = v649;
                              if (obj)
                              {
                                v261 = obj;
                              }

                              v640 = v647;
                              v643 = v646;
                              goto LABEL_701;
                            }

                            v213 = v633;
                            v212 = v635;
                            v644 = v211;
                            v645 = v210;
                            LODWORD(v654) = 1;
                          }

                          else
                          {
                            v212 = v635;
                            v213 = v209;
                            v649 = 0;
                            LODWORD(v654) = 0;
                          }

                          v407 = [v212 shieldColorString];
                          if (v407 || ([v213 shieldColorString], (v643 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            v408 = [v635 shieldColorString];
                            v409 = [v213 shieldColorString];
                            v410 = [v408 isEqualToString:v409];

                            v411 = v213;
                            if (v407)
                            {

                              v412 = v410;
                              if (v654)
                              {
                                goto LABEL_598;
                              }

                              goto LABEL_599;
                            }

                            v412 = v410;
                            v413 = v643;
                          }

                          else
                          {
                            v411 = v213;
                            v413 = 0;
                            v412 = 1;
                          }

                          if (v654)
                          {
LABEL_598:
                          }

LABEL_599:

                          if (obj)
                          {
                          }

                          else
                          {
                          }

                          v96 = v411;
                          v72 = v646;
                          if ((v412 & 1) == 0)
                          {
                            LODWORD(v654) = 0;
                            v171 = v647;
                            v643 = v646;
                            a1 = v665;
                            v169 = v635;
                            v170 = v96;
                            goto LABEL_703;
                          }

                          goto LABEL_107;
                        }

LABEL_1009:

                        LODWORD(v654) = 0;
                        v262 = v81;
                        a1 = v665;
                        v72 = v646;
                        v170 = v633;
                        v169 = v634;
                        goto LABEL_704;
                      }

                      if (v647)
                      {
                        v263 = v80 == 0;
                      }

                      else
                      {
                        v263 = 0;
                      }

                      v264 = v263;
                      if (v646)
                      {
                        v265 = v79 == 0;
                      }

                      else
                      {
                        v265 = 0;
                      }

                      v266 = v647;
                      v267 = v646;
                      if (!v265)
                      {
                        v266 = v647;
                        v267 = v646;
                        if ((v264 & 1) == 0)
                        {
                          v268 = [v647 text];
                          v269 = [v646 text];
                          v654 = v268;
                          v270 = v269;
                          v271 = v270;
                          if (!(v268 | v269))
                          {

                            v78 = v648;
                            v81 = v640;
                            goto LABEL_80;
                          }

                          obj = v18;
                          v645 = v7;
                          v335 = v654;
                          if (v654)
                          {
                            v336 = v269 == 0;
                          }

                          else
                          {
                            v336 = 0;
                          }

                          v337 = v336;
                          if (v270)
                          {
                            v338 = v268 == 0;
                          }

                          else
                          {
                            v338 = 0;
                          }

                          v266 = v270;
                          if (v338 || (v337 & 1) != 0)
                          {
                            v405 = v646;
                            v404 = v647;
                            v406 = v654;
                            v632 = v270;
                          }

                          else
                          {
                            v339 = [v654 formatStrings];
                            v626 = v271;
                            v340 = [v271 formatStrings];
                            v624 = v339;
                            v627 = v340;
                            v341 = &stru_101618398;
                            if (!(v339 | v340))
                            {

                              goto LABEL_505;
                            }

                            if (v624)
                            {
                              v440 = v340 == 0;
                            }

                            else
                            {
                              v440 = 0;
                            }

                            v441 = v440;
                            if (v627)
                            {
                              v442 = v339 == 0;
                            }

                            else
                            {
                              v442 = 0;
                            }

                            if (v442 || (v441 & 1) != 0 || (v443 = [v624 count], v443 != objc_msgSend(v627, "count")))
                            {

                              v455 = v627;
                              v457 = v646;
                              v456 = v647;
                              v406 = v626;
                              v625 = v624;
LABEL_713:
                              v632 = v455;
                            }

                            else
                            {
                              v671 = 0u;
                              v672 = 0u;
                              v669 = 0u;
                              v670 = 0u;
                              v625 = v624;
                              v444 = [v625 countByEnumeratingWithState:&v669 objects:v668 count:16];
                              if (v444)
                              {
                                v445 = v444;
                                v446 = 0;
                                v447 = *v670;
                                while (2)
                                {
                                  for (kk = 0; kk != v445; kk = kk + 1)
                                  {
                                    if (*v670 != v447)
                                    {
                                      objc_enumerationMutation(v625);
                                    }

                                    v449 = *(*(&v669 + 1) + 8 * kk);
                                    v450 = [v627 objectAtIndexedSubscript:v446];
                                    LODWORD(v449) = sub_100420EEC(v450, v449, v450);

                                    if (!v449)
                                    {
                                      v455 = v627;

                                      v457 = v646;
                                      v456 = v647;
                                      v406 = v626;
                                      goto LABEL_713;
                                    }

                                    ++v446;
                                  }

                                  v445 = [v625 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                  if (v445)
                                  {
                                    continue;
                                  }

                                  break;
                                }
                              }

LABEL_505:
                              v342 = [v654 separators];
                              v343 = [v626 separators];
                              v625 = v342;
                              v632 = v343;
                              v344 = &stru_1016183B8;
                              if (!(v342 | v343))
                              {

                                goto LABEL_507;
                              }

                              if (v625)
                              {
                                v461 = v343 == 0;
                              }

                              else
                              {
                                v461 = 0;
                              }

                              v462 = v461;
                              if (v632)
                              {
                                v463 = v342 == 0;
                              }

                              else
                              {
                                v463 = 0;
                              }

                              if (v463 || (v462 & 1) != 0 || (v464 = [v625 count], v464 != objc_msgSend(v632, "count")))
                              {
                              }

                              else
                              {
                                v671 = 0u;
                                v672 = 0u;
                                v669 = 0u;
                                v670 = 0u;
                                v465 = v625;
                                v466 = [v465 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                if (v466)
                                {
                                  v467 = v466;
                                  v468 = 0;
                                  v469 = *v670;
                                  while (2)
                                  {
                                    for (mm = 0; mm != v467; mm = mm + 1)
                                    {
                                      if (*v670 != v469)
                                      {
                                        objc_enumerationMutation(v465);
                                      }

                                      v471 = *(*(&v669 + 1) + 8 * mm);
                                      v472 = [v632 objectAtIndexedSubscript:v468];
                                      LODWORD(v471) = sub_100420EEC(v472, v471, v472);

                                      if (!v471)
                                      {

                                        goto LABEL_1005;
                                      }

                                      ++v468;
                                    }

                                    v467 = [v465 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                    if (v467)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }

LABEL_507:
                                v345 = [v654 formatTokens];
                                v346 = [v626 formatTokens];
                                v622 = v345;
                                v623 = v346;
                                v347 = &stru_1016183D8;
                                if (!(v345 | v346))
                                {

                                  goto LABEL_509;
                                }

                                if (v622)
                                {
                                  v505 = v346 == 0;
                                }

                                else
                                {
                                  v505 = 0;
                                }

                                v506 = v505;
                                if (v623)
                                {
                                  v507 = v345 == 0;
                                }

                                else
                                {
                                  v507 = 0;
                                }

                                if (!v507 && (v506 & 1) == 0)
                                {
                                  v508 = [v622 count];
                                  if (v508 == [v623 count])
                                  {
                                    v671 = 0u;
                                    v672 = 0u;
                                    v669 = 0u;
                                    v670 = 0u;
                                    v620 = v622;
                                    v509 = [v620 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                    if (v509)
                                    {
                                      v510 = v509;
                                      v511 = 0;
                                      v512 = *v670;
                                      while (2)
                                      {
                                        for (nn = 0; nn != v510; nn = nn + 1)
                                        {
                                          if (*v670 != v512)
                                          {
                                            objc_enumerationMutation(v620);
                                          }

                                          v514 = *(*(&v669 + 1) + 8 * nn);
                                          v515 = [v623 objectAtIndexedSubscript:v511];
                                          LODWORD(v514) = sub_100420EF0(v515, v514, v515);

                                          if (!v514)
                                          {
                                            v553 = v623;

                                            v552 = v620;
                                            goto LABEL_921;
                                          }

                                          ++v511;
                                        }

                                        v510 = [v620 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                        if (v510)
                                        {
                                          continue;
                                        }

                                        break;
                                      }
                                    }

LABEL_509:
                                    v348 = [v654 alternativeString];
                                    v349 = [v626 alternativeString];
                                    v350 = v348 | v349;
                                    v351 = v348;
                                    v352 = v349;
                                    if (v350)
                                    {
                                      v353 = [v351 isEqual:v352];
                                    }

                                    else
                                    {
                                      v353 = 1;
                                    }

                                    v7 = v645;
                                    v78 = v648;
                                    v18 = obj;
                                    v81 = v640;
                                    if (v353)
                                    {
                                      goto LABEL_80;
                                    }

                                    goto LABEL_1009;
                                  }
                                }

                                v552 = v622;

                                v553 = v623;
LABEL_921:
                              }

LABEL_1005:

                              v457 = v654;
                              v456 = v654;
                              v406 = v627;
                              v654 = v626;
                              v626 = v624;
                            }

                            v405 = v654;
                            v404 = v654;
                            v266 = v625;
                            v335 = v626;
                          }

                          v7 = v645;
                          v18 = obj;
                          v267 = v632;
                        }
                      }

                      v78 = v648;
                      v81 = v640;
                      goto LABEL_1009;
                    }

                    v287 = v646;
                    if (v654)
                    {
                      v287 = v654;
                    }
                  }

                  else
                  {

                    v287 = v187;
                  }
                }

                goto LABEL_532;
              }

              if (v649)
              {
                v184 = v70 == 0;
              }

              else
              {
                v184 = 0;
              }

              v185 = v184;
              if (v71)
              {
                v186 = v69 == 0;
              }

              else
              {
                v186 = 0;
              }

              v76 = v649;
              v187 = v71;
              if (!v186 && (v76 = v649, v187 = v71, (v185 & 1) == 0) && (v188 = [v649 iconType], v76 = v649, v187 = v72, v188 == objc_msgSend(v72, "iconType")) && (v189 = objc_msgSend(v649, "cartoID"), v76 = v649, v187 = v72, v189 == objc_msgSend(v72, "cartoID")) && (v190 = objc_msgSend(v649, "defaultTransitType"), v76 = v649, v187 = v72, v190 == objc_msgSend(v72, "defaultTransitType")) && (v191 = objc_msgSend(v649, "iconAttributeKey"), v76 = v649, v187 = v72, v191 == objc_msgSend(v72, "iconAttributeKey")))
              {
                v192 = [v649 iconAttributeValue];
                v193 = [v72 iconAttributeValue];

                if (v192 == v193)
                {
                  goto LABEL_78;
                }
              }

              else
              {
LABEL_532:
              }

              LODWORD(v654) = 0;
              v262 = v658;
              v170 = v643;
              v169 = v644;
              v647 = v649;
            }

            a1 = v665;
            goto LABEL_704;
          }
        }

LABEL_87:

        swift_unknownObjectRelease();
LABEL_88:
        a1 = v665;
LABEL_89:

        goto LABEL_90;
      }

      if (v661)
      {
        v44 = v27 == 0;
      }

      else
      {
        v44 = 0;
      }

      v45 = v44;
      if (v28)
      {
        v46 = v26 == 0;
      }

      else
      {
        v46 = 0;
      }

      v47 = v661;
      a2 = v28;
      if (v46)
      {
        goto LABEL_86;
      }

      v47 = v661;
      a2 = v28;
      if (v45)
      {
        goto LABEL_86;
      }

      v48 = [v661 muid];
      v49 = [v29 muid];
      v47 = v661;
      a2 = v29;
      if (v48 != v49)
      {
        goto LABEL_86;
      }

      obj = v18;
      a2 = [v661 name];
      if (a2 || ([v29 name], (v658 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v50 = v7;
        [v661 name];
        v52 = v51 = v29;
        v53 = [v51 name];
        if ([v52 isEqualToString:v53])
        {
          v644 = v52;
          v645 = v50;
          v647 = a2;
          v648 = v53;
          v29 = v51;
          v54 = v21;
          LODWORD(v646) = 1;
          goto LABEL_118;
        }

        v47 = v51;
        v29 = v51;
        v7 = v50;
        v18 = obj;
        if (!a2)
        {
          v652 = v21;
          LODWORD(v654) = 0;
          v58 = v29;
          a1 = v665;
          goto LABEL_708;
        }

LABEL_86:

        goto LABEL_87;
      }

      v647 = 0;
      v645 = v7;
      v54 = v21;
      v658 = 0;
      LODWORD(v646) = 0;
LABEL_118:
      v110 = [v661 artwork];
      v111 = [v29 artwork];
      v112 = v110;
      v113 = v111;
      v649 = v113;
      v654 = v112;
      if (!(v110 | v111))
      {
        v114 = 1;
        goto LABEL_120;
      }

      v114 = 0;
      if (v112)
      {
        v116 = v111 == 0;
      }

      else
      {
        v116 = 0;
      }

      v117 = v116;
      if (v113)
      {
        v118 = v110 == 0;
      }

      else
      {
        v118 = 0;
      }

      if (v118)
      {
LABEL_120:
        v21 = v54;
        v7 = v645;
        v115 = v648;
        v18 = obj;
        goto LABEL_472;
      }

      v21 = v54;
      v7 = v645;
      v115 = v648;
      v18 = obj;
      if (v117)
      {
LABEL_472:

        if (v646)
        {
        }

        a2 = v647;
        if (v647)
        {

          if (v114)
          {
            goto LABEL_37;
          }
        }

        else
        {

          if (v114)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_87;
      }

      v119 = [v654 artworkSourceType];
      v120 = v649;
      if (v119 != [v649 artworkSourceType] || (v121 = objc_msgSend(v654, "artworkUseType"), v121 != objc_msgSend(v649, "artworkUseType")))
      {
        v114 = 0;
        goto LABEL_471;
      }

      v653 = v21;
      v122 = [v654 shieldDataSource];
      v123 = [v649 shieldDataSource];
      HIDWORD(v640) = HIDWORD(v122) | HIDWORD(v123);
      v124 = v122;
      v125 = v123;
      v126 = v124;
      v643 = v125;
      if (!(v122 | v123))
      {
        goto LABEL_135;
      }

      if (v124)
      {
        v194 = v123 == 0;
      }

      else
      {
        v194 = 0;
      }

      v195 = v194;
      if (v125)
      {
        v196 = v122 == 0;
      }

      else
      {
        v196 = 0;
      }

      v197 = v124;
      v198 = v125;
      if (v196 || v195)
      {

        LODWORD(v640) = 0;
        v252 = v198;
        v21 = v653;
      }

      else
      {
        v199 = [v126 shieldType];
        v21 = v653;
        if (v199 == [v198 shieldType])
        {
          v638 = [v197 shieldText];
          if (!v638)
          {
            v633 = [v643 shieldText];
            if (!v633)
            {
              v633 = 0;
              v641 = 0;
              goto LABEL_561;
            }
          }

          v200 = [v197 shieldText];
          v201 = [v643 shieldText];
          if ([v200 isEqualToString:v201])
          {
            v625 = v200;
            v626 = v201;
            v641 = 1;
LABEL_561:
            [v197 shieldColorString];
            v627 = v379 = v643;
            if (v627 || ([v643 shieldColorString], (v624 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v380 = [v197 shieldColorString];
              v381 = [v643 shieldColorString];
              v382 = [v380 isEqualToString:v381];

              if (v627)
              {

                v383 = v638;
                v379 = v643;
                if (v641)
                {
                  goto LABEL_565;
                }

                goto LABEL_566;
              }

              v379 = v643;
              v384 = v624;
            }

            else
            {
              v384 = 0;
              v382 = 1;
            }

            v383 = v638;
            if (v641)
            {
LABEL_565:
            }

LABEL_566:

            if (v383)
            {
            }

            else
            {
            }

            v126 = v197;
            v120 = v649;
            if ((v382 & 1) == 0)
            {
              LODWORD(v640) = 0;
              v21 = v653;
              v197 = v126;
LABEL_470:

              v114 = v640;
LABEL_471:
              v115 = v648;
              goto LABEL_472;
            }

LABEL_135:
            v629 = v126;
            v127 = [v654 iconDataSource];
            v128 = [v120 iconDataSource];
            v129 = v127 | v128;
            v627 = v127;
            v130 = v127;
            v131 = v128;
            v633 = v131;
            v636 = v130;
            if (!v129)
            {
LABEL_136:
              v132 = [v654 iconFallbackShieldDataSource];
              v133 = [v120 iconFallbackShieldDataSource];
              v626 = v132;
              v134 = v133;
              v627 = v134;
              if (!(v132 | v133))
              {
                goto LABEL_137;
              }

              if (v626)
              {
                v272 = v133 == 0;
              }

              else
              {
                v272 = 0;
              }

              v273 = v272;
              if (v134)
              {
                v274 = v132 == 0;
              }

              else
              {
                v274 = 0;
              }

              if (v274 || v273 || (v275 = [v626 shieldType], v275 != objc_msgSend(v627, "shieldType")))
              {

                LODWORD(v640) = 0;
                v229 = v627;
                v299 = v627;
                v139 = v626;
                v21 = v653;
                goto LABEL_465;
              }

              v276 = [v626 shieldText];
              if (!v276)
              {
                v645 = [v627 shieldText];
                if (!v645)
                {
                  v645 = 0;
                  v642 = 0;
                  goto LABEL_722;
                }
              }

              v277 = [v626 shieldText];
              v278 = [v627 shieldText];
              if (([v277 isEqualToString:v278] & 1) == 0)
              {

                LODWORD(v640) = 0;
                v299 = v645;
                if (v276)
                {
                  v299 = v276;
                }

                v229 = v627;
                v18 = obj;
                v21 = v653;
                v139 = v626;
                goto LABEL_465;
              }

              v623 = v277;
              v624 = v278;
              v642 = 1;
LABEL_722:
              v458 = [v626 shieldColorString];
              if (v458 || ([v627 shieldColorString], (v622 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v459 = [v626 shieldColorString];
                v460 = [v627 shieldColorString];
                LODWORD(v625) = [v459 isEqualToString:v460];

                if (v458)
                {

                  if (v642)
                  {
                    goto LABEL_726;
                  }

                  goto LABEL_727;
                }
              }

              else
              {
                v622 = 0;
                LODWORD(v625) = 1;
              }

              if (v642)
              {
LABEL_726:
              }

LABEL_727:

              if (v276)
              {
              }

              else
              {
              }

              v120 = v649;
              v18 = obj;
              if ((v625 & 1) == 0)
              {
                v131 = v627;
                LODWORD(v640) = 0;
                v21 = v653;
                v227 = v626;
LABEL_467:
                v326 = v131;

                goto LABEL_468;
              }

LABEL_137:
              v135 = [v654 textDataSource];
              v136 = [v120 textDataSource];
              v625 = v135;
              v137 = v136;
              v624 = v137;
              if (!(v135 | v136))
              {
LABEL_138:
                v138 = [v654 hasRoutingIncidentBadge];
                if (v138 != [v120 hasRoutingIncidentBadge])
                {
                  goto LABEL_139;
                }

                v303 = [v654 accessibilityText];
                if (v303 || ([v649 accessibilityText], (obj = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v324 = [v654 accessibilityText];
                  v325 = [v649 accessibilityText];
                  LODWORD(v640) = [v324 isEqualToString:v325];

                  v21 = v653;
                  v139 = v625;
                  if (!v303)
                  {
                    v303 = obj;
                  }
                }

                else
                {
                  obj = 0;
                  LODWORD(v640) = 1;
                  v21 = v653;
                  v139 = v625;
                  v303 = 0;
                }

LABEL_463:

LABEL_464:
                v299 = v627;
                v229 = v624;
LABEL_465:

                v227 = v139;
LABEL_466:
                v131 = v229;
                goto LABEL_467;
              }

              if (v625)
              {
                v300 = v136 == 0;
              }

              else
              {
                v300 = 0;
              }

              v301 = v300;
              if (v137)
              {
                v302 = v135 == 0;
              }

              else
              {
                v302 = 0;
              }

              v139 = v625;
              v303 = v137;
              if (v302 || v301)
              {

                LODWORD(v640) = 0;
                v21 = v653;
                goto LABEL_463;
              }

              v304 = [v625 text];
              v305 = [v303 text];
              v640 = v304;
              v306 = v305;
              v307 = v306;
              if (!(v304 | v305))
              {

                v120 = v649;
                goto LABEL_138;
              }

              v645 = v7;
              v657 = v29;
              if (v640)
              {
                v362 = v305 == 0;
              }

              else
              {
                v362 = 0;
              }

              v363 = v362;
              v623 = v306;
              if (v306)
              {
                v364 = v304 == 0;
              }

              else
              {
                v364 = 0;
              }

              if (v364 || (v363 & 1) != 0)
              {

                LODWORD(v640) = 0;
                v139 = v625;
                v303 = v623;
                v18 = obj;
                v21 = v653;
                goto LABEL_463;
              }

              v365 = [v640 formatStrings];
              v366 = [v623 formatStrings];
              v617 = v365;
              v622 = v366;
              v367 = &stru_101618398;
              if (v365 | v366)
              {
                if (v617)
                {
                  v473 = v366 == 0;
                }

                else
                {
                  v473 = 0;
                }

                v474 = v473;
                if (v622)
                {
                  v475 = v365 == 0;
                }

                else
                {
                  v475 = 0;
                }

                if (v475 || (v474 & 1) != 0 || (v476 = [v617 count], v476 != objc_msgSend(v622, "count")))
                {

LABEL_812:
                  LODWORD(v640) = 0;
                  v18 = obj;
                  v21 = v653;
                  v29 = v657;
                  v7 = v645;
                  v139 = v625;
                  v303 = v622;
                  goto LABEL_463;
                }

                v671 = 0u;
                v672 = 0u;
                v669 = 0u;
                v670 = 0u;
                v477 = v617;
                v478 = [v477 countByEnumeratingWithState:&v669 objects:v668 count:16];
                if (v478)
                {
                  v479 = v478;
                  v480 = 0;
                  v481 = *v670;
                  while (2)
                  {
                    for (i1 = 0; i1 != v479; i1 = i1 + 1)
                    {
                      if (*v670 != v481)
                      {
                        objc_enumerationMutation(v477);
                      }

                      v483 = *(*(&v669 + 1) + 8 * i1);
                      v484 = [v622 objectAtIndexedSubscript:v480];
                      LODWORD(v483) = sub_100420EEC(v484, v483, v484);

                      if (!v483)
                      {

                        goto LABEL_812;
                      }

                      ++v480;
                    }

                    v479 = [v477 countByEnumeratingWithState:&v669 objects:v668 count:16];
                    if (v479)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              else
              {
              }

              v368 = [v640 separators];
              v369 = [v623 separators];
              v610 = v368;
              v613 = v369;
              v370 = &stru_1016183B8;
              if (!(v368 | v369))
              {

                goto LABEL_556;
              }

              if (v610)
              {
                v516 = v369 == 0;
              }

              else
              {
                v516 = 0;
              }

              v517 = v516;
              if (v613)
              {
                v518 = v368 == 0;
              }

              else
              {
                v518 = 0;
              }

              if (v518 || (v517 & 1) != 0 || (v519 = [v610 count], v519 != objc_msgSend(v613, "count")))
              {
              }

              else
              {
                v671 = 0u;
                v672 = 0u;
                v669 = 0u;
                v670 = 0u;
                v373 = v610;
                v520 = [v373 countByEnumeratingWithState:&v669 objects:v668 count:16];
                if (v520)
                {
                  v521 = v520;
                  v522 = 0;
                  v523 = *v670;
                  while (2)
                  {
                    for (i2 = 0; i2 != v521; i2 = i2 + 1)
                    {
                      if (*v670 != v523)
                      {
                        objc_enumerationMutation(v373);
                      }

                      v525 = *(*(&v669 + 1) + 8 * i2);
                      v526 = [v613 objectAtIndexedSubscript:v522];
                      LODWORD(v525) = sub_100420EEC(v526, v525, v526);

                      if (!v525)
                      {

                        goto LABEL_1040;
                      }

                      ++v522;
                    }

                    v521 = [v373 countByEnumeratingWithState:&v669 objects:v668 count:16];
                    if (v521)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_556:
                v371 = [v640 formatTokens];
                v372 = [v623 formatTokens];
                v608 = v371;
                v373 = v372;
                v374 = &stru_1016183D8;
                if (!(v371 | v372))
                {

LABEL_558:
                  v375 = [v640 alternativeString];
                  v376 = [v623 alternativeString];
                  v607 = v375;
                  v377 = v376;
                  if (v375 | v376)
                  {
                    v378 = [v607 isEqual:v377];
                  }

                  else
                  {
                    v378 = 1;
                  }

                  v29 = v657;
                  v7 = v645;
                  v120 = v649;
                  v18 = obj;
                  if (v378)
                  {
                    goto LABEL_138;
                  }

LABEL_139:
                  LODWORD(v640) = 0;
                  v21 = v653;
                  v139 = v625;
                  goto LABEL_464;
                }

                if (v608)
                {
                  v557 = v372 == 0;
                }

                else
                {
                  v557 = 0;
                }

                v558 = v557;
                if (v373)
                {
                  v559 = v371 == 0;
                }

                else
                {
                  v559 = 0;
                }

                if (!v559 && (v558 & 1) == 0)
                {
                  v560 = [v608 count];
                  if (v560 == [v373 count])
                  {
                    v671 = 0u;
                    v672 = 0u;
                    v669 = 0u;
                    v670 = 0u;
                    v607 = v608;
                    v561 = [v607 countByEnumeratingWithState:&v669 objects:v668 count:16];
                    if (v561)
                    {
                      v562 = v561;
                      v563 = 0;
                      v564 = *v670;
                      while (2)
                      {
                        for (i3 = 0; i3 != v562; i3 = i3 + 1)
                        {
                          if (*v670 != v564)
                          {
                            objc_enumerationMutation(v607);
                          }

                          v566 = *(*(&v669 + 1) + 8 * i3);
                          v567 = [v373 objectAtIndexedSubscript:v563];
                          LODWORD(v566) = sub_100420EF0(v567, v566, v567);

                          if (!v566)
                          {

                            v590 = v607;
                            goto LABEL_997;
                          }

                          ++v563;
                        }

                        v562 = [v607 countByEnumeratingWithState:&v669 objects:v668 count:16];
                        if (v562)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    goto LABEL_558;
                  }
                }

                v590 = v608;

LABEL_997:
LABEL_1040:
              }

              LODWORD(v640) = 0;
              v18 = obj;
              v21 = v653;
              v29 = v657;
              v7 = v645;
              v139 = v625;
              v303 = v613;
              goto LABEL_463;
            }

            LODWORD(v640) = 0;
            if (v130)
            {
              v224 = v128 == 0;
            }

            else
            {
              v224 = 0;
            }

            v225 = v224;
            if (v131)
            {
              v226 = v627 == 0;
            }

            else
            {
              v226 = 0;
            }

            if (v226)
            {
              v227 = v130;
              v21 = v653;
              goto LABEL_467;
            }

            v227 = v130;
            v21 = v653;
            if (v225)
            {
              goto LABEL_467;
            }

            v228 = [v636 iconType];
            v229 = v633;
            if (v228 != [v633 iconType] || (v230 = objc_msgSend(v636, "cartoID"), v230 != objc_msgSend(v633, "cartoID")))
            {
              LODWORD(v640) = 0;
              v227 = v636;
              goto LABEL_466;
            }

            v231 = [v636 defaultTransitType];
            if (v231 != [v633 defaultTransitType])
            {
              LODWORD(v640) = 0;
              v227 = v636;
              v131 = v633;
              goto LABEL_467;
            }

            v232 = [v636 iconAttributeKey];
            if (v232 != [v633 iconAttributeKey])
            {
              LODWORD(v640) = 0;
              v131 = v633;
              v227 = v636;
              v18 = obj;
              v21 = v653;
              goto LABEL_467;
            }

            v233 = [v636 iconAttributeValue];
            v234 = [v633 iconAttributeValue];

            v120 = v649;
            v18 = obj;
            if (v233 == v234)
            {
              goto LABEL_136;
            }

            LODWORD(v640) = 0;
            v21 = v653;
LABEL_468:

            v197 = v629;
            v252 = v633;
          }

          else
          {

            LODWORD(v640) = 0;
            v252 = v633;
            if (v638)
            {
              v252 = v638;
            }
          }
        }

        else
        {

          LODWORD(v640) = 0;
          v252 = v198;
        }
      }

      goto LABEL_470;
    }

    break;
  }

  swift_unknownObjectRelease();
LABEL_1065:

  swift_getKeyPath();
  v668[0] = v659;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v606 = *(v659 + 32);
  if (!v606)
  {
    return swift_unknownObjectRelease();
  }

  v606(v659, v18, v16);
  swift_unknownObjectRelease();
  return sub_1000588AC(v606);
}

BOOL sub_100420E14(id a1, id a2, id a3)
{
  v5 = a2 | a3;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v7;
  if (v5)
  {
    if ((a2 == 0) != (a3 == 0) || ([v8 startTime], v12 = v11, objc_msgSend(v9, "startTime"), v12 != v13))
    {
      v10 = 0;
    }

    else
    {
      [v8 duration];
      v15 = v14;
      [v9 duration];
      v10 = v15 == v16;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

BOOL sub_100420EF0(id a1, GEOServerFormatToken *a2, GEOServerFormatToken *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = GEOServerFormatTokenEqual();

  return v6;
}

uint64_t sub_100420F78@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v87 = a2;
  v3 = sub_1000CE6B8(&qword_1019191F8);
  __chkstk_darwin(v3 - 8);
  v81 = v78 - v4;
  v83 = sub_1000CE6B8(&qword_101920B08);
  __chkstk_darwin(v83);
  v82 = v78 - v5;
  v6 = sub_1000CE6B8(&qword_101920B10);
  __chkstk_darwin(v6 - 8);
  v86 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = v78 - v9;
  v89 = sub_1000CE6B8(&qword_10191DC80);
  v10 = *(v89 - 8);
  __chkstk_darwin(v89);
  v12 = v78 - v11;
  v13 = sub_1000CE6B8(&qword_101920B18);
  __chkstk_darwin(v13 - 8);
  v95 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = v78 - v16;
  __chkstk_darwin(v17);
  v93 = v78 - v18;
  __chkstk_darwin(v19);
  v97 = v78 - v20;
  __chkstk_darwin(v21);
  v98 = v78 - v22;
  __chkstk_darwin(v23);
  v25 = v78 - v24;
  v85 = sub_1000CE6B8(&qword_101920B20);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v92 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v78 - v28;
  v100 = a1;
  sub_1000CE6B8(&qword_101920B28);
  sub_1000414C8(&qword_101920B30, &qword_101920B28);
  v90 = v29;
  ControlGroup.init(content:)();
  v30 = a1[3];
  v78[0] = a1;
  v31 = *sub_10005E838(a1, v30);
  swift_getKeyPath();
  *&v101 = v31;
  sub_1002F5D2C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
  sub_100422D84(a1, &v101);
  v33 = swift_allocObject();
  v34 = v102;
  *(v33 + 16) = v101;
  *(v33 + 32) = v34;
  *(v33 + 48) = v103;
  if (v32 < 3)
  {
    v35 = 4;
  }

  else
  {
    v35 = 5;
  }

  *(v33 + 56) = v35;
  v99 = v35;
  v88 = sub_1000CE6B8(&qword_10191DCC8);
  sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
  Button.init(action:label:)();
  v36 = v98;
  sub_100110884(v35);
  v37 = sub_1000414C8(&qword_10191DC90, &qword_10191DC80);
  v38 = v89;
  v78[1] = v37;
  View.accessibilityIdentifier(_:)();

  v39 = *(v10 + 8);
  v79 = v12;
  v80 = v10 + 8;
  v39(v12, v38);
  v40 = sub_1000CE6B8(&qword_101920B38);
  v41 = *(*(v40 - 8) + 56);
  v42 = 1;
  v91 = v25;
  v43 = v78[0];
  v41(v25, 0, 1, v40);
  sub_10005E838(v43, v43[3]);
  if (sub_1002A52D4())
  {
    sub_100422D84(v43, &v101);
    v44 = swift_allocObject();
    v45 = v102;
    *(v44 + 16) = v101;
    *(v44 + 32) = v45;
    *(v44 + 48) = v103;
    v46 = v79;
    Button.init(action:label:)();
    v47 = v89;
    View.accessibilityIdentifier(_:)();
    v39(v46, v47);
    v42 = 0;
  }

  v48 = 1;
  v41(v36, v42, 1, v40);
  v49 = [objc_opt_self() sharedHelper];
  v50 = [v49 isUsingOfflineMaps];

  if ((v50 & 1) == 0)
  {
    sub_100422D84(v43, &v101);
    v51 = swift_allocObject();
    v52 = v102;
    *(v51 + 16) = v101;
    *(v51 + 32) = v52;
    *(v51 + 48) = v103;
    v53 = v79;
    Button.init(action:label:)();
    v54 = v89;
    View.accessibilityIdentifier(_:)();
    v39(v53, v54);
    v48 = 0;
  }

  v55 = v97;
  v41(v97, v48, 1, v40);
  v56 = v81;
  static ButtonRole.destructive.getter();
  v57 = type metadata accessor for ButtonRole();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  sub_100422D84(v43, &v101);
  v58 = swift_allocObject();
  v59 = v102;
  *(v58 + 16) = v101;
  *(v58 + 32) = v59;
  *(v58 + 48) = v103;
  v60 = v82;
  Button.init(role:action:label:)();
  v61 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v63 = (v60 + *(v83 + 36));
  *v63 = KeyPath;
  v63[1] = v61;
  sub_100422DFC();
  v64 = v96;
  View.accessibilityIdentifier(_:)();
  sub_100024F64(v60, &qword_101920B08);
  v65 = v84;
  v66 = *(v84 + 16);
  v67 = v92;
  v68 = v85;
  v66(v92, v90, v85);
  sub_1000D2DFC(v91, v93, &qword_101920B18);
  v69 = v94;
  sub_1000D2DFC(v98, v94, &qword_101920B18);
  sub_1000D2DFC(v55, v95, &qword_101920B18);
  v70 = v64;
  v71 = v86;
  sub_1000D2DFC(v70, v86, &qword_101920B10);
  v72 = v87;
  v66(v87, v67, v68);
  v73 = sub_1000CE6B8(&qword_101920B48);
  v74 = v93;
  sub_1000D2DFC(v93, &v72[v73[12]], &qword_101920B18);
  sub_1000D2DFC(v69, &v72[v73[16]], &qword_101920B18);
  v75 = v95;
  sub_1000D2DFC(v95, &v72[v73[20]], &qword_101920B18);
  sub_1000D2DFC(v71, &v72[v73[24]], &qword_101920B10);
  sub_100024F64(v96, &qword_101920B10);
  sub_100024F64(v97, &qword_101920B18);
  sub_100024F64(v98, &qword_101920B18);
  sub_100024F64(v91, &qword_101920B18);
  v76 = *(v65 + 8);
  v76(v90, v68);
  sub_100024F64(v71, &qword_101920B10);
  sub_100024F64(v75, &qword_101920B18);
  sub_100024F64(v94, &qword_101920B18);
  sub_100024F64(v74, &qword_101920B18);
  return (v76)(v92, v68);
}

uint64_t sub_100421B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000CE6B8(&qword_101920B38);
  __chkstk_darwin(v3 - 8);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v44[-v7];
  v9 = sub_1000CE6B8(&qword_1019191F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v44[-v10];
  v12 = sub_1000CE6B8(&qword_10191DC80);
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v53 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v49 = &v44[-v15];
  v50 = sub_1000CE6B8(&qword_101920B08);
  __chkstk_darwin(v50);
  v17 = &v44[-v16];
  v18 = sub_1000CE6B8(&qword_101920B50);
  __chkstk_darwin(v18 - 8);
  v20 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v52 = &v44[-v22];
  v23 = *sub_10005E838(a1, a1[3]);
  swift_getKeyPath();
  *&v57 = v23;
  sub_1002F5D2C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
  v25 = 1;
  v55 = v20;
  v51 = a1;
  if (v24 == 1)
  {
    v27 = v54;
    v28 = v52;
  }

  else
  {
    v47 = v8;
    v48 = v5;
    v46 = v12;
    if (v24 == 2)
    {
      v26 = 0;
      v45 = 0;
    }

    else
    {
      static ButtonRole.destructive.getter();
      v25 = 0;
      v26 = 1;
      v45 = 1;
    }

    v29 = type metadata accessor for ButtonRole();
    (*(*(v29 - 8) + 56))(v11, v25, 1, v29);
    sub_100422D84(a1, &v57);
    v30 = swift_allocObject();
    v31 = v58;
    *(v30 + 16) = v57;
    *(v30 + 32) = v31;
    *(v30 + 48) = v59;
    *(v30 + 56) = v26;
    __chkstk_darwin(v30);
    v44[-16] = v26;
    sub_1000CE6B8(&qword_10191DCC8);
    sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
    v32 = v49;
    Button.init(role:action:label:)();
    v33 = 0;
    if (v45)
    {
      v33 = static Color.red.getter();
    }

    KeyPath = swift_getKeyPath();
    v27 = v54;
    v12 = v46;
    (*(v54 + 32))(v17, v32, v46);
    v35 = &v17[*(v50 + 36)];
    *v35 = KeyPath;
    v35[1] = v33;
    sub_100110884(v26);
    sub_100422DFC();
    v28 = v52;
    View.accessibilityIdentifier(_:)();

    sub_100024F64(v17, &qword_101920B08);
    v25 = 0;
    v8 = v47;
    v5 = v48;
  }

  v36 = sub_1000CE6B8(&qword_101920B10);
  (*(*(v36 - 8) + 56))(v28, v25, 1, v36);
  sub_100422D84(v51, &v57);
  v37 = swift_allocObject();
  v38 = v58;
  *(v37 + 16) = v57;
  *(v37 + 32) = v38;
  *(v37 + 48) = v59;
  sub_1000CE6B8(&qword_10191DCC8);
  sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
  v39 = v53;
  Button.init(action:label:)();
  sub_1000414C8(&qword_10191DC90, &qword_10191DC80);
  View.accessibilityIdentifier(_:)();
  (*(v27 + 8))(v39, v12);
  v40 = v55;
  sub_1000D2DFC(v28, v55, &qword_101920B50);
  sub_1000D2DFC(v8, v5, &qword_101920B38);
  v41 = v56;
  sub_1000D2DFC(v40, v56, &qword_101920B50);
  v42 = sub_1000CE6B8(&qword_101920B58);
  sub_1000D2DFC(v5, v41 + *(v42 + 48), &qword_101920B38);
  sub_100024F64(v8, &qword_101920B38);
  sub_100024F64(v28, &qword_101920B50);
  sub_100024F64(v5, &qword_101920B38);
  return sub_100024F64(v40, &qword_101920B50);
}

uint64_t sub_1004222EC()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C800;
  v0._countAndFlagsBits = 0x7972617262694C5BLL;
  v0._object = 0xEF6572616853205DLL;
  v1._countAndFlagsBits = 0x6572616853;
  v3._countAndFlagsBits = 0xD00000000000002ELL;
  v1._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, qword_1019600D8, v1, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1004223E0(unsigned __int8 a1)
{
  sub_100110454(a1);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100422528()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C7D0;
  v0._countAndFlagsBits = 0x6968542065746152;
  v0._object = 0xEF6563616C502073;
  v1._object = 0x800000010121C7B0;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  v1._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_10042262C()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C770;
  v0._countAndFlagsBits = 0x6F4C20676E6F7257;
  v0._object = 0xEE006E6F69746163;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v1._object = 0x800000010121C750;
  v3._countAndFlagsBits = 0xD00000000000003BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100422728(void *a1, unsigned __int8 a2)
{
  v3 = *sub_10005E838(a1, a1[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002F23D0(v3, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004227B0()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C710;
  v0._countAndFlagsBits = 0x65766F6D6552;
  v1._object = 0x800000010121C6F0;
  v3._countAndFlagsBits = 0xD000000000000030;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v0._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100422894(unsigned __int8 a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002F23D0(v3, a1);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10042292C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v28 = a4;
  v27 = type metadata accessor for MapsDesignAccessibilityString();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for CellAction.Placement();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CellAction.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100110454(a1);
  v23[1] = v16;
  v23[2] = v15;
  v17 = &enum case for CellAction.Style.destructive(_:);
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      v29 = 0xE500000000000000;
      v30 = 0x6873617274;
      if (a1)
      {
        goto LABEL_14;
      }

      v29 = 0xE400000000000000;
      v30 = 1937075312;
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v30 = 0xD000000000000013;
      v18 = 0x800000010121D3D0;
    }

    else
    {
      v30 = 0x7568742E646E6168;
      v18 = 0xED0000707573626DLL;
    }

    goto LABEL_12;
  }

  if (a1 - 4 < 2)
  {
    v30 = 0x7865742E65746F6ELL;
    v18 = 0xE900000000000074;
LABEL_12:
    v29 = v18;
    goto LABEL_13;
  }

  v29 = 0xE500000000000000;
  v30 = 0x6873617274;
  if (a1 != 6)
  {
    goto LABEL_14;
  }

  v29 = 0x800000010122B6F0;
  v30 = 0xD000000000000016;
LABEL_13:
  v17 = &enum case for CellAction.Style.default(_:);
LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v26;
  *(v19 + 32) = a1;
  (*(v12 + 104))(v14, *v17, v11);
  v20 = &enum case for CellAction.Placement.quickAction(_:);
  if (((a1 - 1) & 0xFE) != 0)
  {
    v20 = &enum case for CellAction.Placement.default(_:);
  }

  (*(v8 + 104))(v10, *v20, v24);

  *v7 = sub_100110884(a1);
  v7[1] = v21;
  (*(v25 + 104))(v7, enum case for MapsDesignAccessibilityString.custom(_:), v27);
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

unint64_t sub_100422DFC()
{
  result = qword_101920B40;
  if (!qword_101920B40)
  {
    sub_1000D6664(&qword_101920B08);
    sub_1000414C8(&qword_10191DC90, &qword_10191DC80);
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920B40);
  }

  return result;
}

unint64_t sub_100422F5C()
{
  result = qword_101920B60;
  if (!qword_101920B60)
  {
    sub_1000D6664(&qword_101920B68);
    sub_1000414C8(&qword_101920B70, &qword_101920B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920B60);
  }

  return result;
}

void sub_100423014(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10042308C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_10042515C();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

id sub_100423104()
{
  result = [objc_allocWithZone(type metadata accessor for FeedbackCommunityIDManager()) init];
  qword_101960290 = result;
  return result;
}

id sub_100423308(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100423398(char a1, id a2, uint64_t a3, void (*a4)(id, void), uint64_t a5, uint64_t a6, char a7)
{
  if ((a1 & 1) != 0 && a2)
  {
    v12 = [a2 communityIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (String.count.getter() >= 1)
    {
      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100021540(v16, qword_101960298);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_10004DEB8(v13, v15, aBlock);
        *(v19 + 12) = 2048;
        *(v19 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v17, v18, "Use original communityID:%s for muid: %llu", v19, 0x16u);
        sub_10004E3D0(v20);
      }

      if (a4)
      {
        v21 = type metadata accessor for FeedbackCommunityIDManager.Result();
        v22 = objc_allocWithZone(v21);
        v23 = &v22[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
        *v23 = v13;
        v23[1] = v15;
        v36.receiver = v22;
        v36.super_class = v21;
        v24 = objc_msgSendSuper2(&v36, "init");
        a4(v24, 0);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_101906850 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100021540(v25, qword_101960298);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a3;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetching latest community for muid: %llu", v28, 0xCu);
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  *(v30 + 32) = v29;
  *(v30 + 40) = a7 & 1;
  *(v30 + 48) = 1;
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CD9D4(a4);

  v31 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  v32 = *(a6 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10042562C;
  *(v33 + 24) = v30;
  aBlock[4] = sub_100425630;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004250B8;
  aBlock[3] = &unk_101618888;
  v34 = _Block_copy(aBlock);
  v35 = v31;

  [v32 fetchAllAvailableCommunityIDsWithPredicate:v35 completion:v34];

  _Block_release(v34);
}

void sub_1004239B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (!a2)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = String._bridgeToObjectiveC()();
  if (v6)
  {
LABEL_3:
    v8[4] = v6;
    v8[5] = a4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100113C68;
    v8[3] = &unk_101618798;
    v6 = _Block_copy(v8);
  }

LABEL_4:
  [v4 fetchAuthenticationInfoForRAPReportWithReportID:v7 shouldIncreaseCount:1 completion:v6];
  _Block_release(v6);
}

void sub_100423B74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3 & 1;
  if (a2)
  {
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v9;
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;
    v25 = sub_10042514C;
    v26 = v13;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10042308C;
    v24 = &unk_101618680;
    v14 = _Block_copy(&v21);
    sub_1000CD9D4(a4);

    [v10 fetchRAPRecordsMatchingProblemId:v11 completion:v14];
    _Block_release(v14);
  }

  else
  {
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    *(v16 + 32) = v15;
    *(v16 + 40) = v9;
    *(v16 + 48) = 0;
    type metadata accessor for MapsSyncQueryPredicate();
    sub_1000CD9D4(a4);

    v17 = static MapsSyncQueryPredicate.withFormat(_:_:)();
    v18 = *(v6 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100424918;
    *(v19 + 24) = v16;
    v25 = sub_1004250B4;
    v26 = v19;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1004250B8;
    v24 = &unk_101618630;
    v20 = _Block_copy(&v21);
    v11 = v17;

    [v18 fetchAllAvailableCommunityIDsWithPredicate:v11 completion:v20];

    _Block_release(v20);
  }
}

void sub_100423E54(unint64_t a1, uint64_t a2, char a3, void (*a4)(id, void), uint64_t a5)
{
  if (a1)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v29 = a1;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v29;
      if (!v30)
      {
        goto LABEL_11;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v8 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(a1 + 32);
    }

    v10 = [v9 communityIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = String.count.getter();

    if (v11 >= 1)
    {
      if (a4)
      {
        v12 = [v31 communityIdentifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = type metadata accessor for FeedbackCommunityIDManager.Result();
        v17 = objc_allocWithZone(v16);
        v18 = &v17[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
        *v18 = v13;
        v18[1] = v15;
        v32.receiver = v17;
        v32.super_class = v16;
        v19 = objc_msgSendSuper2(&v32, "init");
        a4(v19, 0);
      }

      else
      {
      }

      return;
    }
  }

LABEL_11:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    *(v23 + 32) = v22;
    *(v23 + 40) = a3 & 1;
    *(v23 + 48) = 0;
    type metadata accessor for MapsSyncQueryPredicate();
    sub_1000CD9D4(a4);

    v24 = static MapsSyncQueryPredicate.withFormat(_:_:)();
    v25 = *&v21[OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache];
    v26 = swift_allocObject();
    *(v26 + 16) = sub_10042562C;
    *(v26 + 24) = v23;
    aBlock[4] = sub_100425630;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004250B8;
    aBlock[3] = &unk_1016186F8;
    v27 = _Block_copy(aBlock);
    v28 = v24;

    [v25 fetchAllAvailableCommunityIDsWithPredicate:v28 completion:v27];

    _Block_release(v27);
  }
}

void sub_100424294(unint64_t a1, void (*a2)(id, void), void (*a3)(id, void), uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a2;
    if (qword_101906850 != -1)
    {
LABEL_45:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_101960298);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "CommunityID fetch error: %@", v13, 0xCu);
      sub_100024F64(v14, &qword_1019144F0);
    }

    if (a3)
    {
      v16 = v7;
LABEL_7:
      a3(0, v16);
      return;
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v48 = a4;
      v49 = a3;
      if (a1 >> 62)
      {
        a3 = _CocoaArrayWrapper.endIndex.getter();
        if (a3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a3)
        {
LABEL_12:
          v18 = 0;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v19 = *(a1 + 8 * v18 + 32);
            }

            v20 = v19;
            v7 = (v18 + 1);
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v21 = dispatch thunk of CommunityID.communityIdentifier.getter();
            if (v22)
            {
              v23 = v22;
              v24 = v21;
              if (sub_100424BF4(v20))
              {
                if (a6)
                {
                  [*&Strong[OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache] increaseUsedCountWithMsCommunityID:v20 completion:0];
                }

                if (qword_101906850 != -1)
                {
                  swift_once();
                }

                v35 = type metadata accessor for Logger();
                sub_100021540(v35, qword_101960298);

                v36 = Logger.logObject.getter();
                v37 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v36, v37))
                {
                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  v53 = v39;
                  *v38 = 136315394;
                  *(v38 + 4) = sub_10004DEB8(v24, v23, &v53);
                  *(v38 + 12) = 2048;
                  *(v38 + 14) = a7;
                  _os_log_impl(&_mh_execute_header, v36, v37, "Fetched available communityID: %s for category:%ld", v38, 0x16u);
                  sub_10004E3D0(v39);
                }

                if (v49)
                {
                  v40 = type metadata accessor for FeedbackCommunityIDManager.Result();
                  v41 = objc_allocWithZone(v40);
                  v42 = &v41[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
                  *v42 = v24;
                  v42[1] = v23;
                  v54.receiver = v41;
                  v54.super_class = v40;
                  v43 = objc_msgSendSuper2(&v54, "init");
                  v49(v43, 0);
                }

                else
                {
                }

                return;
              }
            }

            ++v18;
          }

          while (v7 != a3);
        }
      }

      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100021540(v44, qword_101960298);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "There's no available communityID, generate a new one", v47, 2u);
      }

      v33 = v49;
      v34 = v48;
    }

    else
    {
      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100021540(v29, qword_101960298);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Fetched nil communityIDs, generate a new one", v32, 2u);
      }

      v33 = a3;
      v34 = a4;
    }

    sub_10042491C(v33, v34);

    return;
  }

  if (qword_101906850 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100021540(v25, qword_101960298);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Self is nil, fetchcommunityID returned", v28, 2u);
  }

  if (a3)
  {
    v16 = 0;
    goto LABEL_7;
  }
}

void sub_10042491C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (qword_101906850 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_101960298);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10004DEB8(v10, v12, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "generating a new communityID: %s", v16, 0xCu);
    sub_10004E3D0(v17);
  }

  v18 = *(v3 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v12;
  v20[4] = a1;
  v20[5] = a2;
  aBlock[4] = sub_10042555C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004250B8;
  aBlock[3] = &unk_101618748;
  v21 = _Block_copy(aBlock);
  sub_1000CD9D4(a1);

  [v18 storeCommunityIDWithIdentifier:v19 completion:v21];
  _Block_release(v21);
}

uint64_t sub_100424BF4(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  dispatch thunk of MapsSyncObject.createTime.getter();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v15 = v14;
    v16 = *(v8 + 8);
    v16(v10, v7);
    Date.timeIntervalSince1970.getter();
    v18 = v15 - v17;
    GEOConfigGetDouble();
    if (v18 < v19)
    {
LABEL_4:
      v16(v13, v7);
      return 1;
    }

    GEOConfigGetDouble();
    if (v21 >= v18)
    {
      v33 = dispatch thunk of CommunityID.usedCount.getter();
      UInteger = GEOConfigGetUInteger();
      if (v33 < 1 || UInteger >= v33)
      {
        goto LABEL_4;
      }

      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100021540(v35, qword_101960298);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v24, v25))
      {
LABEL_23:

        [*(v2 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache) setExpiredWithMsCommunityID:v23 completion:0];
        v16(v13, v7);
        return 0;
      }

      v36 = swift_slowAlloc();
      v43 = v2;
      v27 = v36;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v27 = 136315138;
      v37 = dispatch thunk of CommunityID.communityIdentifier.getter();
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = sub_10004DEB8(v37, v39, &v44);

      *(v27 + 4) = v40;
      v32 = "CommunityID: %s was expired because it reaches max submission count";
    }

    else
    {
      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100021540(v22, qword_101960298);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_23;
      }

      v26 = swift_slowAlloc();
      v43 = v1;
      v27 = v26;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v27 = 136315138;
      v28 = dispatch thunk of CommunityID.communityIdentifier.getter();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = sub_10004DEB8(v28, v30, &v44);

      *(v27 + 4) = v31;
      v32 = "CommunityID: %s was expired because it reaches max rollover time";
    }

    _os_log_impl(&_mh_execute_header, v24, v25, v32, v27, 0xCu);
    sub_10004E3D0(v42);

    v2 = v43;

    goto LABEL_23;
  }

  sub_100024F64(v6, &qword_10190EBD0);
  return 0;
}

uint64_t sub_1004250B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for CommunityID();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_10042515C()
{
  result = qword_101920BE0;
  if (!qword_101920BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101920BE0);
  }

  return result;
}

void sub_1004251A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id, uint64_t))
{
  if (a2)
  {
    if (qword_101906850 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_101960298);

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_10004DEB8(a3, a4, &v25);
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Fail to generate communityID: %s with error: %@", v12, 0x16u);
      sub_100024F64(v13, &qword_1019144F0);

      sub_10004E3D0(v14);
    }

    if (a5)
    {
      a5(0, a2);
    }
  }

  else
  {
    if (qword_101906850 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100021540(v16, qword_101960298);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10004DEB8(a3, a4, &v25);
      _os_log_impl(&_mh_execute_header, v17, v18, "communityID: %s was successfully generated!", v19, 0xCu);
      sub_10004E3D0(v20);
    }

    if (a5)
    {
      v21 = type metadata accessor for FeedbackCommunityIDManager.Result();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
      *v23 = a3;
      v23[1] = a4;
      v26.receiver = v22;
      v26.super_class = v21;

      v24 = objc_msgSendSuper2(&v26, "init");
      a5(v24, 0);
    }
  }
}

uint64_t sub_1004254F0()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960298);
  sub_100021540(v0, qword_101960298);
  static Logger.subsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100425578()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100425634(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = Strong;
  v5 = OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController;
  v6 = *(v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController);
  if (a1)
  {
    if (v6)
    {
      sub_100208794();
      v7 = v6;
      v8 = a1;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        v10 = *(v2 + v5);
LABEL_22:
        *(v2 + v5) = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
    }

    v11 = (v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    v15 = *(v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    if (v15)
    {
      sub_100208794();
      v16 = a1;
      v17 = v15;
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        v10 = *v11;
        goto LABEL_15;
      }
    }

    else
    {
      v19 = 0;
    }

    v12 = (v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    v20 = *(v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    if (!v20)
    {
      v25 = 0;
      goto LABEL_24;
    }

    sub_100208794();
    v21 = a1;
    v22 = v20;
    v23 = static NSObject.== infix(_:_:)();

    Strong = v26;
    if (v23)
    {
      v13 = *v12;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v6)
    {
      v24 = 0;
      v10 = 0;
      goto LABEL_22;
    }

    v11 = (v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    v10 = *(v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    if (!v10)
    {
LABEL_15:
      *v11 = 0;
LABEL_23:

      [v26 setNeedsUpdateComponent:@"cards" animated:1];
      goto LABEL_24;
    }

    v12 = (v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    v13 = *(v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    if (!v13)
    {
LABEL_20:
      *v12 = 0;

      [v26 popContext:v2 animated:1 completion:0];
LABEL_24:
      Strong = v26;
    }
  }
}

uint64_t sub_100425998(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_100425BF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_100425C58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP);
  return result;
}

uint64_t sub_100425D30(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100425E5C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_100425EFC(char a1)
{
  v2 = OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive;
  v3 = *(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive);
  *(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive) = a1;
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 != *(v1 + v2))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + v2))
    {
      sub_10040B504();
    }
  }
}

void sub_100426010(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive) == (a1 & 1))
  {
    v3 = a1 & 1;

    sub_100425EFC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10042617C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__rapMenuProvider];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onShareCurrentLocation];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onMarkCurrentLocation];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onReportIssue];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onSelectTermsAndConditions];
  *v7 = 0;
  v7[1] = 0;
  ObservationRegistrar.init()();
  if (qword_101906828 != -1)
  {
    swift_once();
  }

  v8 = qword_101960280;
  *&v1[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel_rapAvailabilityProvider] = qword_101960280;
  swift_getKeyPath();
  v13 = v8;
  sub_100426F4C(&qword_101920728, type metadata accessor for RAPAvailabilityProvider);
  v9 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP] = v9[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__isRAPAvailable];
  v1[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100426334();

  return v10;
}

uint64_t sub_100426334()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  withObservationTracking<A>(_:onChange:)();

  if (v3 == *(v0 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP))
  {
    *(v0 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1004264E0(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel_rapAvailabilityProvider);
    v4 = Strong;
    swift_getKeyPath();
    sub_100426F4C(&qword_101920728, type metadata accessor for RAPAvailabilityProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v3 + OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__isRAPAvailable);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t sub_1004265D8()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_101206280, v6);
}

uint64_t sub_10042672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004267C4, v6, v5);
}

uint64_t sub_1004267C4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100426334();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for HomeListFooterCellModel()
{
  result = qword_101920C58;
  if (!qword_101920C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100426984()
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

uint64_t sub_100426A40()
{
  v0 = sub_1000CE6B8(&qword_10191C2B0);
  sub_100021578(v0, qword_1019602B0);
  sub_100021540(v0, qword_1019602B0);
  type metadata accessor for HomeActionFooterCell();
  type metadata accessor for HomeListFooterCellModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

id sub_100426AD0(char *a1, uint64_t a2, void **a3)
{
  v5 = sub_1000CE6B8(&qword_101920CA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-1] - v7;
  v9 = *a3;
  v10 = OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel;
  v11 = *&a1[OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel];
  *&a1[OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel] = *a3;
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
    __chkstk_darwin(v15);
    *(&v20 - 2) = v16;
    sub_100426E60();
    v17 = v16;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
    v21[3] = v5;
    v21[4] = sub_100426EB4();
    sub_10001A848(v21);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();

LABEL_8:
    goto LABEL_9;
  }

  type metadata accessor for HomeListFooterCellModel();
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

uint64_t sub_100426D4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906858 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_10191C2B0);
  v3 = sub_100021540(v2, qword_1019602B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100426E00(uint64_t a1)
{
  result = sub_100426F4C(&qword_101920CA0, type metadata accessor for HomeListFooterCellModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100426E60()
{
  result = qword_101920CB0;
  if (!qword_101920CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920CB0);
  }

  return result;
}

unint64_t sub_100426EB4()
{
  result = qword_101920CB8;
  if (!qword_101920CB8)
  {
    sub_1000D6664(&qword_101920CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920CB8);
  }

  return result;
}

uint64_t sub_100426F4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_100426F9C())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_100427018;
}

uint64_t sub_100427020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10042672C(a1, v4, v5, v6);
}

id sub_1004270D4()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v1 = result;
    v2 = [result countryCode];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      if (v3 == 21067 && v5 == 0xE200000000000000)
      {

        v8 = 0;
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = v7 ^ 1;
      }
    }

    else
    {
      v8 = 1;
    }

    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004271C8()
{
  v1 = OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView);
  }

  else
  {
    type metadata accessor for FeatureDiscoveryTipkitView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100427384(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_dismissHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView] = 0;
  v1[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_showBubbleIndicator] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RoutePlanningTipkitCollectionViewCell();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_10042743C()
{
  v1 = [v0 contentView];
  v2 = sub_1004271C8();
  [v1 addSubview:v2];

  v3 = OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView;
  [*&v0[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView] setBubblePosition:1];
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  v5 = v4;
  v6 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E5C00;
  v8 = [*&v0[v3] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v7 + 32) = v11;
  v12 = [*&v0[v3] bottomAnchor];
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v7 + 40) = v15;
  v16 = [*&v0[v3] leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:v5];
  *(v7 + 48) = v19;
  v20 = [v0 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [*&v0[v3] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v5];

  *(v7 + 56) = v23;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];
}

id sub_1004277D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePlanningTipkitCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004278A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v69 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_1000CE6B8(&qword_101920D30);
  __chkstk_darwin(v67);
  v68 = &v58 - v7;
  v83 = sub_1000CE6B8(&qword_101920D38);
  __chkstk_darwin(v83);
  v70 = &v58 - v8;
  v79 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v79);
  v64 = (&v58 - v9);
  v63 = sub_1000CE6B8(&qword_10191D860);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v58 - v12;
  v81 = sub_1000CE6B8(&qword_101920D40);
  __chkstk_darwin(v81);
  v82 = &v58 - v13;
  v74 = sub_1000CE6B8(&qword_10191AC30);
  __chkstk_darwin(v74);
  v75 = &v58 - v14;
  v80 = sub_1000CE6B8(&qword_10191AC38);
  __chkstk_darwin(v80);
  v78 = &v58 - v15;
  v76 = type metadata accessor for EmptyStateView();
  v60 = *(v76 - 8);
  __chkstk_darwin(v76);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for EmptyStateViewModel();
  v59 = *(v73 - 8);
  __chkstk_darwin(v73);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v23 = type metadata accessor for MyRecentsViewModel.State(0);
  __chkstk_darwin(v23);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = a1;
  v88 = a1;
  v89 = a2;
  v66 = a2;
  sub_1000CE6B8(&qword_101920D28);
  State.wrappedValue.getter();
  v26 = v86;
  swift_getKeyPath();
  v88 = v26;
  sub_10042A184(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel__currentState;
  swift_beginAccess();
  sub_10042A1CC(v26 + v27, v25, type metadata accessor for MyRecentsViewModel.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v25;
      __chkstk_darwin(EnumCaseMultiPayload);
      v30 = v65;
      *(&v58 - 4) = v29;
      *(&v58 - 3) = v30;
      v31 = v66;
      *(&v58 - 2) = v66;
      sub_1000CE6B8(&qword_101920D48);
      sub_100429930();
      v32 = v68;
      List<>.init(content:)();

      v33 = static Animation.default.getter();
      v86 = v30;
      v87 = v31;
      State.wrappedValue.getter();
      v34 = v85;
      swift_getKeyPath();
      v86 = v34;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = *(v34 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__generationCountForAnimation);

      v36 = (v32 + *(v67 + 36));
      *v36 = v33;
      v36[1] = v35;
      v37 = v69;
      *v69 = 0x73746E65636552;
      v37[1] = 0xE700000000000000;
      v39 = v71;
      v38 = v72;
      (*(v71 + 104))(v37, enum case for MapsDesignAccessibilityString.list(_:), v72);
      sub_100429B8C();
      v40 = v70;
      View.mapsDesignAXID(_:)();
      (*(v39 + 8))(v37, v38);
      sub_100024F64(v32, &qword_101920D30);
      sub_1000D2DFC(v40, v82, &qword_101920D38);
      swift_storeEnumTagMultiPayload();
      sub_1003526E8();
      sub_100429CFC();
      _ConditionalContent<>.init(storage:)();
      return sub_100024F64(v40, &qword_101920D38);
    }

    else
    {
      v48 = v77;
      ProgressView<>.init<>()();
      v49 = v62;
      v50 = *(v62 + 16);
      v51 = v61;
      v52 = v63;
      v50(v61, v48, v63);
      v53 = v64;
      *v64 = 0;
      *(v53 + 8) = 1;
      v54 = sub_1000CE6B8(&qword_10190A408);
      v50((v53 + *(v54 + 48)), v51, v52);
      v55 = v53 + *(v54 + 64);
      *v55 = 0;
      *(v55 + 8) = 1;
      v56 = *(v49 + 8);
      v56(v51, v52);
      sub_1000D2DFC(v53, v75, &qword_10190A2F8);
      swift_storeEnumTagMultiPayload();
      sub_10042A184(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
      sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
      v57 = v78;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v57, v82, &qword_10191AC38);
      swift_storeEnumTagMultiPayload();
      sub_1003526E8();
      sub_100429CFC();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v57, &qword_10191AC38);
      sub_100024F64(v53, &qword_10190A2F8);
      return (v56)(v77, v52);
    }
  }

  else
  {
    v42 = v59;
    v43 = v25;
    v44 = v73;
    (*(v59 + 32))(v22, v43, v73);
    (*(v42 + 16))(v19, v22, v44);
    EmptyStateView.init(model:)();
    v45 = v60;
    v46 = v76;
    (*(v60 + 16))(v75, v17, v76);
    swift_storeEnumTagMultiPayload();
    sub_10042A184(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    v47 = v78;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v47, v82, &qword_10191AC38);
    swift_storeEnumTagMultiPayload();
    sub_1003526E8();
    sub_100429CFC();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v47, &qword_10191AC38);
    (*(v45 + 8))(v17, v46);
    return (*(v42 + 8))(v22, v73);
  }
}

uint64_t sub_10042848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_1000CE6B8(&qword_101920DD0);
  sub_1000CE6B8(&qword_101920D60);
  sub_1000414C8(&qword_101920DD8, &qword_101920DD0);
  sub_1004299B4();
  sub_100429DC0();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004285B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_10190AFC8);
  __chkstk_darwin(v6);
  v7 = *(a1 + 8);
  v11 = *a1;
  v12 = v7;
  v13 = a2;
  v14 = a3;
  sub_100428A98(v11, v7, a2, a3, &v10[-v8]);
  sub_1000CE6B8(&qword_101920D80);
  sub_1001097F8();
  sub_100429AD8();
  return Section<>.init(header:content:)();
}

uint64_t sub_1004286CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  swift_bridgeObjectRetain_n();

  sub_1000CE6B8(&qword_101920DF0);
  type metadata accessor for UUID();
  type metadata accessor for RecentsCell(0);
  sub_1000414C8(&qword_101920DF8, &qword_101920DF0);
  sub_10042A184(&qword_101920D88, type metadata accessor for RecentsCell);
  sub_10042A184(&qword_101920E00, type metadata accessor for RecentCellRowViewModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10042886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v11 = type metadata accessor for RecentCellRowViewModel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = type metadata accessor for RecentsCell(0);
  sub_10042A1CC(a1, a6 + *(v14 + 20), type metadata accessor for RecentCellRowViewModel);
  sub_10042A1CC(a1, &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RecentCellRowViewModel);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  sub_10042A234(&v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v17 = v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v21;
  *(v17 + 8) = a5;
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v18 = (a6 + *(v14 + 24));
  *v18 = sub_10042A298;
  v18[1] = v16;
}

uint64_t sub_100428A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CE6B8(&qword_101920D28);
  State.wrappedValue.getter();
  v8 = type metadata accessor for RecentCellRowViewModel(0);
  sub_100536734(a3 + *(v8 + 20), a4, a5);
}

uint64_t sub_100428A98@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v9 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v9 - 8);
  v11 = (v24 - v10);
  v12 = type metadata accessor for SectionHeaderViewModel.Size();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v16 - 8);
  v24[0] = sub_100429E24(a1);
  (*(v13 + 104))(v15, enum case for SectionHeaderViewModel.Size.small(_:), v12);
  sub_1000CE6B8(&qword_101920DE8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v25._object = 0x80000001012377A0;
  v17._countAndFlagsBits = 0x7261656C43;
  v18._object = 0x8000000101237780;
  v25._countAndFlagsBits = 0xD000000000000029;
  v18._countAndFlagsBits = 0xD000000000000016;
  v17._object = 0xE500000000000000;
  *v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v17, v25);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  SectionHeaderViewModel.Action.init(onSelect:)();
  v20 = enum case for SectionHeaderViewModel.ActionType.clear(_:);
  v21 = type metadata accessor for SectionHeaderViewModel.ActionType();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v11, v20, v21);
  (*(v22 + 56))(v11, 0, 1, v21);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  return SectionHeader.init(model:)();
}

uint64_t sub_100428DE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  v16[2] = a1;
  v16[3] = a2;
  sub_1000CE6B8(&qword_101920D28);
  State.wrappedValue.getter();
  v11 = v16[1];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v11;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  sub_10020AAE4(0, 0, v10, &unk_101206448, v14);
}

uint64_t sub_100428F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v41 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LeadingCardHeader();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CardHeaderSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  v44 = type metadata accessor for LeadingCardHeaderViewModel();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v40 = v37 - v18;
  v38 = type metadata accessor for CardButtonViewModel();
  v19 = *(v38 - 8);
  __chkstk_darwin(v38);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v52._object = 0x8000000101237750;
  v22._countAndFlagsBits = 0x73746E65636552;
  v23._object = 0x8000000101237730;
  v52._countAndFlagsBits = 0xD00000000000002FLL;
  v23._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0xE700000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, qword_1019600D8, v22, v52);
  v37[1] = v24._object;
  v37[2] = v24._countAndFlagsBits;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;

  v37[0] = v21;
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  v26 = v41;
  (*(v5 + 56))(v15, 1, 1, v41);
  (*(v10 + 104))(v12, enum case for CardHeaderSize.large(_:), v9);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1011E1D30;
  v29 = v38;
  (*(v19 + 16))(v28 + v27, v21, v38);
  v30 = v40;
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v31 = v42;
  v32 = v44;
  (*(v42 + 16))(v39, v30, v44);
  v33 = v45;
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  v34 = v43;
  *v43 = 0x746E65636552794DLL;
  v34[1] = 0xED00006472614373;
  (*(v5 + 104))(v34, enum case for MapsDesignAccessibilityString.header(_:), v26);
  sub_10042A184(&qword_10190AF00, &type metadata accessor for LeadingCardHeader);
  v35 = v47;
  View.mapsDesignAXContainer(withID:)();
  (*(v5 + 8))(v34, v26);
  (*(v46 + 8))(v33, v35);
  (*(v31 + 8))(v30, v32);
  return (*(v19 + 8))(v37[0], v29);
}

uint64_t sub_1004295BC()
{
  sub_1000CE6B8(&qword_101920D28);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10042A184(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose);
  if (!v0)
  {
  }

  v1 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose + 8);

  v0();

  return sub_1000D3B90(v0, v1);
}

uint64_t sub_1004296C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000CE6B8(&qword_101920D00);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v11 = v1[1];
  v16 = *v1;
  v10 = v16;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v12 = sub_1000CE6B8(&qword_101920D08);
  sub_1004278A8(v10, v11, &v9[*(v12 + 44)]);
  *v6 = 0x746E65636552794DLL;
  v6[1] = 0xE900000000000073;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v3);
  sub_1000414C8(&qword_101920D10, &qword_101920D00);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v3);
  sub_100024F64(v9, &qword_101920D00);
  v13 = a1 + *(sub_1000CE6B8(&qword_101920D18) + 36);
  sub_100428F64(v16, v11, v13);
  result = sub_1000CE6B8(&qword_101920D20);
  *(v13 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_100429930()
{
  result = qword_101920D50;
  if (!qword_101920D50)
  {
    sub_1000D6664(&qword_101920D48);
    sub_1004299B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D50);
  }

  return result;
}

unint64_t sub_1004299B4()
{
  result = qword_101920D58;
  if (!qword_101920D58)
  {
    sub_1000D6664(&qword_101920D60);
    sub_100429A40();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D58);
  }

  return result;
}

unint64_t sub_100429A40()
{
  result = qword_101920D68;
  if (!qword_101920D68)
  {
    sub_1000D6664(&qword_101920D70);
    sub_1001097F8();
    sub_100429AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D68);
  }

  return result;
}

unint64_t sub_100429AD8()
{
  result = qword_101920D78;
  if (!qword_101920D78)
  {
    sub_1000D6664(&qword_101920D80);
    sub_10042A184(&qword_101920D88, type metadata accessor for RecentsCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D78);
  }

  return result;
}

unint64_t sub_100429B8C()
{
  result = qword_101920D90;
  if (!qword_101920D90)
  {
    sub_1000D6664(&qword_101920D30);
    sub_100429C44();
    sub_1000414C8(&qword_101920DB8, &qword_101920DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D90);
  }

  return result;
}

unint64_t sub_100429C44()
{
  result = qword_101920D98;
  if (!qword_101920D98)
  {
    sub_1000D6664(&qword_101920DA0);
    sub_1000414C8(&qword_101920DA8, &qword_101920DB0);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D98);
  }

  return result;
}

unint64_t sub_100429CFC()
{
  result = qword_101920DC8;
  if (!qword_101920DC8)
  {
    sub_1000D6664(&qword_101920D38);
    sub_100429B8C();
    sub_10042A184(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920DC8);
  }

  return result;
}

unint64_t sub_100429DC0()
{
  result = qword_101920DE0;
  if (!qword_101920DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920DE0);
  }

  return result;
}

uint64_t sub_100429E24(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v1 = "itle to clear for recents";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "itle to clear for recents";
      }

      v2.super.isa = qword_1019600D8;
      v3 = 0xD000000000000016;
      v9 = 0x80000001012377F0;
      v4 = 0x7265646C4FLL;
      goto LABEL_16;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1019600D8;
    v3 = 0xD00000000000001BLL;
    v9 = 0x80000001012377F0;
    v4 = 0x6E6F4D2073696854;
    v5 = 0x8000000101237830;
    v6 = 0xEA00000000006874;
  }

  else
  {
    if (!a1)
    {
      v1 = "[RecentlyViewed] This Week";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "[RecentlyViewed] This Week";
      }

      v2.super.isa = qword_1019600D8;
      v3 = 0xD000000000000016;
      v9 = 0x80000001012377F0;
      v4 = 0x7961646F54;
LABEL_16:
      v5 = v1 | 0x8000000000000000;
      v6 = 0xE500000000000000;
      goto LABEL_17;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1019600D8;
    v3 = 0xD00000000000001ALL;
    v9 = 0x80000001012377F0;
    v4 = 0x6565572073696854;
    v5 = 0x8000000101237850;
    v6 = 0xE90000000000006BLL;
  }

LABEL_17:
  v7 = 0xD000000000000031;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, *&v4, *(&v9 - 1))._countAndFlagsBits;
}

uint64_t sub_10042A060(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_10053A128(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_10042A12C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10042A184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10042A1CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10042A234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCellRowViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042A298()
{
  v1 = *(type metadata accessor for RecentCellRowViewModel(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v5 + 1);
  v7 = *v5;

  return sub_100428A14(v3, v4, v0 + v2, v7, v6);
}

unint64_t sub_10042A330()
{
  result = qword_101920E08;
  if (!qword_101920E08)
  {
    sub_1000D6664(&qword_101920D18);
    sub_1000D6664(&qword_101920D00);
    sub_1000414C8(&qword_101920D10, &qword_101920D00);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_101920E10, &qword_101920D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920E08);
  }

  return result;
}

id sub_10042A66C(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps17UserGuidesContext_searchInfo] = 0;
  *&v1[OBJC_IVAR____TtC4Maps17UserGuidesContext_configuration] = a1;
  *&v1[OBJC_IVAR____TtC4Maps17UserGuidesContext_containees] = _swiftEmptyArrayStorage;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v14, "init");
  v6 = *&v4[OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_collectionHandler];
  v7 = objc_allocWithZone(type metadata accessor for UserGuideViewController());
  v8 = v5;
  v9 = v6;
  v10 = sub_10023A230(v9);

  [v10 setContaineeDelegate:v8];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC4Maps17UserGuidesContext_containees;
  swift_beginAccess();
  v12 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v8;
}

uint64_t type metadata accessor for PinnedItemsView()
{
  result = qword_101920EF8;
  if (!qword_101920EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042A8A4()
{
  sub_10042A994(319, &unk_101920F08, type metadata accessor for PinnedItemsViewModel);
  if (v0 <= 0x3F)
  {
    sub_10042A994(319, &qword_10190CAB0, &type metadata accessor for EditMode);
    if (v1 <= 0x3F)
    {
      sub_10042A994(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10042A994(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10042A9E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10042AA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ActionBarItemType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v24 = a1;
  type metadata accessor for PinnedItemsViewModel();
  State.init(wrappedValue:)();
  v15 = v26;
  *a2 = v25;
  a2[1] = v15;
  v16 = type metadata accessor for PinnedItemsView();
  (*(v9 + 104))(v14, enum case for EditMode.inactive(_:), v8);
  (*(v9 + 16))(v11, v14, v8);
  State.init(wrappedValue:)();
  (*(v9 + 8))(v14, v8);
  v17 = (a2 + *(v16 + 24));
  sub_1000CE6B8(&qword_101908400);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1011E4FD0;
  v19 = *(v5 + 104);
  v19(v7, enum case for ActionBarItemType.addToList(_:), v4);
  type metadata accessor for ActionBarItemViewModel();
  swift_allocObject();
  *(v18 + 32) = ActionBarItemViewModel.init(_:)();
  v19(v7, enum case for ActionBarItemType.edit(_:), v4);
  swift_allocObject();
  *(v18 + 40) = ActionBarItemViewModel.init(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1011E47B0;
  v19(v7, enum case for ActionBarItemType.done(_:), v4);
  swift_allocObject();
  *(v20 + 32) = ActionBarItemViewModel.init(_:)();
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  v24 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  result = State.init(wrappedValue:)();
  v22 = v26;
  *v17 = v25;
  v17[1] = v22;
  return result;
}

uint64_t sub_10042ADB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_1000F0120(v4);
}

uint64_t sub_10042AE5C()
{
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10042AF2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_10042AFFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10042B0E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10042B244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10042B330(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012F0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10042B48C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10042B578(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012F0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10042B6D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10042B7C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10042B91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10042BA08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012F0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10042BB64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10010129C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10042BC50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100100E38;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10042BDAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 105);
  return result;
}

uint64_t sub_10042BE7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_10190B848, type metadata accessor for PinnedItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 106);
  return result;
}

uint64_t sub_10042BF4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v38 = a2;
  v3 = type metadata accessor for PinnedItemsView();
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  v36 = *(v37 + 64);
  __chkstk_darwin(v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ContainerBackgroundPlacement();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_101920F70);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_1000CE6B8(&qword_101920F60);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v15 = sub_1000CE6B8(&qword_101920F90);
  sub_10042C42C(a1, &v11[*(v15 + 44)]);
  v39 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  sub_1000414C8(&qword_101920F78, &qword_101920F70);
  View.containerBackground<A>(_:for:)();
  (*(v6 + 8))(v8, v34);

  sub_100024F64(v11, &qword_101920F70);
  v16 = &v14[*(v12 + 36)];
  v17 = v33;
  sub_10042E888(v33, v16);
  *(v16 + *(sub_1000CE6B8(&qword_101920F88) + 36)) = 1;
  v18 = (v17 + *(v4 + 32));
  v20 = *v18;
  v19 = v18[1];
  v39 = v20;
  v40 = v19;
  sub_1000CE6B8(&qword_10190A148);
  State.wrappedValue.getter();
  v21 = v35;
  sub_1004300A8(v17, v35);
  v22 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v23 = swift_allocObject();
  sub_10043010C(v21, v23 + v22);
  sub_10042FF6C();
  v24 = v38;
  View.actionBar(_:onSelect:)();

  sub_100024F64(v14, &qword_101920F60);
  v25 = static Animation.default.getter();
  v26 = (v24 + *(sub_1000CE6B8(&qword_101920F58) + 36));
  sub_1000CE6B8(&qword_10190A110);
  sub_1000CE6B8(&qword_10190CA30);
  State.wrappedValue.getter();
  *v26 = v25;
  KeyPath = swift_getKeyPath();
  v28 = (v24 + *(sub_1000CE6B8(&qword_101920F40) + 36));
  v29 = *(sub_1000CE6B8(&qword_10190A120) + 28);
  State.projectedValue.getter();
  v30 = sub_1000CE6B8(&qword_10190A168);
  result = (*(*(v30 - 8) + 56))(v28 + v29, 0, 1, v30);
  *v28 = KeyPath;
  return result;
}

uint64_t sub_10042C42C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for ListSectionSpacing();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v61 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = (v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000CE6B8(&qword_101920FA8);
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v56 = v53 - v9;
  v68 = sub_1000CE6B8(&qword_101920FB0);
  __chkstk_darwin(v68);
  v11 = v53 - v10;
  v65 = sub_1000CE6B8(&qword_101920FB8);
  __chkstk_darwin(v65);
  v67 = v53 - v12;
  v66 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v66);
  v14 = v53 - v13;
  v15 = sub_1000CE6B8(&qword_10191D860);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v53 - v20;
  v22 = *a1;
  v23 = a1[1];
  v64 = a1;
  v54 = v23;
  v55 = v22;
  v71 = v22;
  v72 = v23;
  v53[3] = sub_1000CE6B8(&qword_101920F98);
  State.wrappedValue.getter();
  v24 = v70;
  swift_getKeyPath();
  v71 = v24;
  v53[2] = sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  sub_1000F0120(v25);

  if (v25)
  {
    __chkstk_darwin(v27);
    v53[-4] = v25;
    v53[-3] = v26;
    v53[-2] = v64;
    sub_1000CE6B8(&qword_101920FC0);
    v53[1] = &protocol conformance descriptor for TupleView<A>;
    sub_1000414C8(&qword_101920FC8, &qword_101920FC0);
    v28 = v56;
    List<>.init(content:)();

    *v7 = 0x744964656E6E6950;
    v7[1] = 0xEB00000000736D65;
    v30 = v59;
    v29 = v60;
    (*(v59 + 104))(v7, enum case for MapsDesignAccessibilityString.list(_:), v60);
    sub_1000414C8(&qword_101920FD0, &qword_101920FA8);
    v31 = v58;
    View.mapsDesignAXContainer(withID:)();
    (*(v30 + 8))(v7, v29);
    (*(v57 + 8))(v28, v31);
    v32 = v61;
    static ListSectionSpacing.compact.getter();
    v33 = *(sub_1000CE6B8(&qword_101920FD8) + 36);
    v35 = v62;
    v34 = v63;
    (*(v62 + 16))(&v11[v33], v32, v63);
    v36 = *(v35 + 56);
    v36(&v11[v33], 0, 1, v34);
    KeyPath = swift_getKeyPath();
    v38 = &v11[*(sub_1000CE6B8(&qword_101920FE0) + 36)];
    v39 = *(sub_1000CE6B8(&qword_10190CD00) + 28);
    (*(v35 + 32))(v38 + v39, v32, v34);
    v36(v38 + v39, 0, 1, v34);
    *v38 = KeyPath;
    v40 = static Animation.default.getter();
    v71 = v55;
    v72 = v54;
    State.wrappedValue.getter();
    v41 = v70;
    swift_getKeyPath();
    v71 = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v41 + 32);

    v43 = &v11[*(sub_1000CE6B8(&qword_101920FE8) + 36)];
    *v43 = v40;
    v43[1] = v42;
    v44 = swift_getKeyPath();
    v45 = &v11[*(v68 + 36)];
    v46 = *(sub_1000CE6B8(&qword_10190A120) + 28);
    type metadata accessor for PinnedItemsView();
    sub_1000CE6B8(&qword_10190CA30);
    State.projectedValue.getter();
    v47 = sub_1000CE6B8(&qword_10190A168);
    (*(*(v47 - 8) + 56))(v45 + v46, 0, 1, v47);
    *v45 = v44;
    sub_1000D2DFC(v11, v67, &qword_101920FB0);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_10043026C();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v11, &qword_101920FB0);
  }

  else
  {
    ProgressView<>.init<>()();
    v49 = *(v16 + 16);
    v49(v18, v21, v15);
    *v14 = 0;
    v14[8] = 1;
    v50 = sub_1000CE6B8(&qword_10190A408);
    v49(&v14[*(v50 + 48)], v18, v15);
    v51 = &v14[*(v50 + 64)];
    *v51 = 0;
    v51[8] = 1;
    v52 = *(v16 + 8);
    v52(v18, v15);
    sub_1000D2DFC(v14, v67, &qword_10190A2F8);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_10043026C();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v14, &qword_10190A2F8);
    return (v52)(v21, v15);
  }
}

uint64_t sub_10042CDC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = type metadata accessor for SectionHeaderViewModel.Size();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v9 - 8);
  v48 = &v43 - v10;
  v11 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v11 - 8);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000CE6B8(&qword_10190AFC8);
  __chkstk_darwin(v49);
  v47 = &v43 - v13;
  v14 = sub_1000CE6B8(&qword_101921020);
  v54 = *(v14 - 8);
  v55 = v14;
  __chkstk_darwin(v14);
  v45 = &v43 - v15;
  v16 = type metadata accessor for EditMode();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000CE6B8(&qword_101921028);
  __chkstk_darwin(v20 - 8);
  v53 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = sub_1000CE6B8(&qword_101921030);
  __chkstk_darwin(v25 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v43 - v29;
  v44 = a1;
  v57 = a1;
  v58 = a2;
  v31 = a2;
  v59 = a3;
  sub_1000CE6B8(&qword_101921038);
  sub_100430654();
  Section<>.init(content:)();
  type metadata accessor for PinnedItemsView();
  sub_1000CE6B8(&qword_10190CA30);
  v32 = a3;
  State.wrappedValue.getter();
  LODWORD(a1) = (*(v17 + 88))(v19, v16);
  LODWORD(a3) = enum case for EditMode.inactive(_:);
  (*(v17 + 8))(v19, v16);
  if (a1 != a3)
  {
    goto LABEL_8;
  }

  if (v31 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (v33 >= 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v38 = 1;
    goto LABEL_9;
  }

  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v33 < 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v43 = &v43;
  __chkstk_darwin(v33);
  *(&v43 - 4) = v44;
  *(&v43 - 3) = v31;
  v60._object = v32;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v60._object = 0x80000001012379C0;
  v34._countAndFlagsBits = 0xD000000000000019;
  v34._object = 0x80000001012379A0;
  v35._object = 0x800000010122FB40;
  v60._countAndFlagsBits = 0xD00000000000003FLL;
  v35._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v35, v60);
  v36 = type metadata accessor for SectionHeaderViewModel.ActionType();
  (*(*(v36 - 8) + 56))(v48, 1, 1, v36);
  (*(v51 + 104))(v50, enum case for SectionHeaderViewModel.Size.large(_:), v52);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  SectionHeader.init(model:)();
  sub_1000CE6B8(&qword_1019210E8);
  sub_1001097F8();
  sub_100430AD0();
  v37 = v45;
  Section<>.init(header:content:)();
  sub_1000B9008(v37, v24);
  v38 = 0;
LABEL_9:
  (*(v54 + 56))(v24, v38, 1, v55);
  sub_1000D2DFC(v30, v27, &qword_101921030);
  v39 = v53;
  sub_1000D2DFC(v24, v53, &qword_101921028);
  v40 = v56;
  sub_1000D2DFC(v27, v56, &qword_101921030);
  v41 = sub_1000CE6B8(&qword_1019210E0);
  sub_1000D2DFC(v39, v40 + *(v41 + 48), &qword_101921028);
  sub_100024F64(v24, &qword_101921028);
  sub_100024F64(v30, &qword_101921030);
  sub_100024F64(v39, &qword_101921028);
  return sub_100024F64(v27, &qword_101921030);
}